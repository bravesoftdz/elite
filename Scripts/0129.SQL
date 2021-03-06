/*
** CODIGO DO CLIENTE NOS PAGAMENTOS - PARTE II
*/

SET TERM !;

DROP PROCEDURE PREENCHE_CLIENTE!

ALTER PROCEDURE GERAPARCELAS (
    CODIGO INTEGER)
AS
DECLARE VARIABLE TOTAL NUMERIC(9,2);
DECLARE VARIABLE PARCELA NUMERIC(9,2);
DECLARE VARIABLE CONDICAO VARCHAR(40);
DECLARE VARIABLE QUANTIDADE INTEGER;
DECLARE VARIABLE ES INTEGER;
DECLARE VARIABLE N INTEGER;
DECLARE VARIABLE CODPAG INTEGER;
DECLARE VARIABLE DATAMOV DATE;
DECLARE VARIABLE DIAS INTEGER;
DECLARE VARIABLE CODDOC INTEGER;
DECLARE VARIABLE CODPAGO INTEGER;
DECLARE VARIABLE DOCVISTA INTEGER;
DECLARE VARIABLE DOCPRAZO INTEGER;
DECLARE VARIABLE DESCRICAO CHAR(40);
DECLARE VARIABLE TIPO INTEGER;
DECLARE VARIABLE CODCONTA_COMPRADEB INTEGER;
DECLARE VARIABLE CODCONTA_VENDACRE INTEGER;
DECLARE VARIABLE CODCONTA INTEGER;
DECLARE VARIABLE NOME VARCHAR(16);
DECLARE VARIABLE CODCLIENTE INTEGER;
DECLARE VARIABLE CODEMPRESA INTEGER;
DECLARE VARIABLE CODCENTRO INTEGER;
BEGIN

   /* DADOS DO MOVIMENTO */
   SELECT
      NOTA_VALOR_TOTAL,
      CONDICAO,
      ES,
      CURRENT_DATE,
      TIPO,
      CODCLIENTE,
      CODEMPRESA,
      CODCENTRO
   FROM
      MOVIMENTOS
   WHERE
      CODIGO = :CODIGO
   INTO
      :TOTAL,
      :CONDICAO,
      :ES,
      :DATAMOV,
      :TIPO,
      :CODCLIENTE,
      :CODEMPRESA,
      :CODCENTRO;

   /* DADOS DO PERFIL DA EMPRESA */
   SELECT
      CODDOC_AVISTA,
      CODDOC_PRAZO,
      CODCONTA_COMPRADEB,
      CODCONTA_VENDACRE
   FROM
      SISCONFIG
   WHERE
      CODIGO = :CODEMPRESA
   INTO
      :DOCVISTA,
      :DOCPRAZO,
      :CODCONTA_COMPRADEB,
      :CODCONTA_VENDACRE;

   /* SE FOR ENTRADA */
   IF (ES = 1) THEN
    BEGIN

     CODCONTA = CODCONTA_COMPRADEB;

     SELECT
       UDF_LEFT(NOME, 16)
     FROM
       CLIENTES
     WHERE
       CODIGO = :CODCLIENTE
     INTO
       :NOME;

    END ELSE
    /* SE FOR UMA SAIDA */
    BEGIN

     CODCONTA = CODCONTA_VENDACRE;

     SELECT
       UDF_LEFT(NOME, 16)
     FROM
       CLIENTES
     WHERE
       CODIGO = :CODCLIENTE
     INTO
       :NOME;

   END

   /* SE O VALOR FOR ZERO NAO GERO NADA */
   IF (TOTAL <= 0) THEN EXIT;

   /* QUANTIDADE DE PARCELAS */
   SELECT
      COUNT(*)
   FROM
      PARCELAS(
        :CONDICAO
      )
   INTO
      :QUANTIDADE;

   /* SE TIVER PELO MENOS 1 PARCELA, GERO */
   IF (QUANTIDADE > 0) THEN
    BEGIN

      /* APAGO AS PARCELAS ANTIGAS */
      DELETE FROM
        PAGAMENTOS
      WHERE
        CODMOVIMENTO = :CODIGO;

      /* VALOR DA PARCELA */
      PARCELA = CAST((TOTAL / QUANTIDADE) AS INTEGER);

      /* GERACAO DAS PARCELAS */
      N = 0;
      FOR
      SELECT
        DIAS
      FROM
        PARCELAS(:CONDICAO)
      INTO
        :DIAS
      DO
      BEGIN

        /* NUMERO DA PARCELA */
        N = N + 1;

        /* DESCRICAO DA PARCELA */
        IF (ES = 1) THEN
          DESCRICAO = 'PARC ' || N || '/' || QUANTIDADE || ' COMPRA ' || CODIGO || ' ' || NOME;
        ELSE
          DESCRICAO = 'PARC ' || N || '/' || QUANTIDADE || ' VENDA ' || CODIGO || ' ' || NOME;

        /* CODIGO SEQUENCIAL */
        SELECT
          SEQUENCIA
        FROM
          SEQ_OBTER('PAGAMENTOS')
        INTO
          :CODPAG;

        /* PARCELA A VISTA X PARCELA A PRAZO */
        IF (DIAS = 0) THEN
         BEGIN
           CODDOC = DOCVISTA;
           CODPAGO = 0;
         END ELSE
         BEGIN
           CODDOC = DOCPRAZO;
           CODPAGO = 0;
         END

        /* INSIRO A PARCELA */
        INSERT INTO
          PAGAMENTOS (
            CODIGO,
            CODMOVIMENTO,
            NUMERO,
            DESCRICAO,
            ES,
            VALOR,
            DATAVENCIMENTO,
            CODDOCUMENTO,
            PAGO,
            CODCONTA,
            CODEMPRESA,
            CODCENTRO,
            CODCLIENTE)
          VALUES (
            :CODPAG,
            :CODIGO,
            :N,
            :DESCRICAO,
            :ES,
            :PARCELA,
            :DATAMOV + :DIAS,
            :CODDOC,
            :CODPAGO,
            :CODCONTA,
            :CODEMPRESA,
            :CODCENTRO,
            :CODCLIENTE);

      END

      /* DIFEREN�A NA PRIMEIRA PARCELA */
      UPDATE
        PAGAMENTOS
      SET
        VALOR = VALOR + (:TOTAL - (:PARCELA * :QUANTIDADE))
      WHERE
        CODMOVIMENTO = :CODIGO AND NUMERO = 1;

    END ELSE EXCEPTION CONDICAO_ERRADA;
END!

ALTER TRIGGER MOVIMENTOS_AFTINS
AS
BEGIN
  IF (NEW.ES IN (1, 2)) THEN
    IF (NEW.VALOR_TOTAL > 0) THEN
      EXECUTE PROCEDURE GERAPARCELAS(NEW.CODIGO);
END!

ALTER TRIGGER MOVIMENTOS_AFTUPD
AS
BEGIN
  IF (NEW.ES IN (1, 2)) THEN
   BEGIN
     IF (((NEW.VALOR_TOTAL <> OLD.VALOR_TOTAL) OR
        (NEW.CONDICAO <> OLD.CONDICAO)) AND
        (NEW.TIPO IN (1, 2, 5))) THEN
           EXECUTE PROCEDURE GERAPARCELAS(NEW.CODIGO);
     IF ((NEW.TIPO IN (3, 6)) AND (OLD.TIPO IN (2, 5))) THEN
           EXECUTE PROCEDURE AUTOBAIXA(NEW.CODIGO);
   END
  IF ((NEW.TIPO = 9) OR (NEW.VALOR_TOTAL = 0)) THEN
     DELETE FROM PAGAMENTOS WHERE CODMOVIMENTO = NEW.CODIGO AND
       PAGO = 0;
END!

ALTER PROCEDURE ESTORNO (
    CODMOVIMENTO INTEGER)
AS
DECLARE VARIABLE ES INTEGER;
DECLARE VARIABLE NUMERO INTEGER;
DECLARE VARIABLE CODDOCUMENTO INTEGER;
DECLARE VARIABLE INFODOC VARCHAR(50);
DECLARE VARIABLE CODCONTA INTEGER;
DECLARE VARIABLE TOTAL_PAGO NUMERIC(9,2);
DECLARE VARIABLE DATAVENCIMENTO TIMESTAMP;
DECLARE VARIABLE DESCRICAO VARCHAR(40);
DECLARE VARIABLE NOME VARCHAR(40);
DECLARE VARIABLE CODIGO INTEGER;
DECLARE VARIABLE CODCENTRO INTEGER;
DECLARE VARIABLE CODCLIENTE INTEGER;
BEGIN

  /* MARCO COMO CANCELADO */
  UPDATE
    MOVIMENTOS
  SET
    TIPO = 9
  WHERE
    CODIGO = :CODMOVIMENTO;

  /* DEVOLVO OS PRODUTOS */
  UPDATE
    INDIVIDUAIS
  SET
    VENDIDO = 'N'
  WHERE
    CODMOVSAIDA = :CODMOVIMENTO;

  /* VERIFICO OS PAGAMENTOS E ESTORNO 1 A 1 */
  FOR
  SELECT
    ES,
    NUMERO,
    CODDOCUMENTO,
    INFODOC,
    CODCONTA,
    TOTAL_PAGO,
    DATAVENCIMENTO,
    CODCENTRO,
    CODCLIENTE
  FROM
    PAGAMENTOS
  WHERE
    CODMOVIMENTO = :CODMOVIMENTO AND
    PAGO = 1
  INTO
    :ES,
    :NUMERO,
    :CODDOCUMENTO,
    :INFODOC,
    :CODCONTA,
    :TOTAL_PAGO,
    :DATAVENCIMENTO,
    :CODCENTRO,
    :CODCLIENTE
  DO
  BEGIN

    /* PEGO O NOME DO CLIENTE */
    IF (ES = 1) THEN
     BEGIN

       SELECT
         FO.NOME
       FROM
         MOVIMENTOS MO
         JOIN CLIENTES FO ON
           (FO.CODIGO = MO.CODCLIENTE)
       WHERE
         MO.CODIGO = :CODMOVIMENTO
       INTO
         :NOME;

     END ELSE
     BEGIN

       SELECT
         CL.NOME
       FROM
         MOVIMENTOS MO
         JOIN CLIENTES CL ON
           (CL.CODIGO = MO.CODCLIENTE)
       WHERE
         MO.CODIGO = :CODMOVIMENTO
       INTO
         :NOME;

     END

    /* MONTO A DESCRICAO */
    IF (ES = 1) THEN
      DESCRICAO = 'ESTORNO PARC ' || NUMERO || ' DA COMPRA ' || CODMOVIMENTO || ' ' || UDF_LEFT(NOME, 8);
    ELSE
      DESCRICAO = 'ESTORNO PARC ' || NUMERO || ' DA VENDA ' || CODMOVIMENTO || ' ' || UDF_LEFT(NOME, 8);

    /* INVERTO A CONDICAO PAGAR/RECEBER */
    IF (ES = 1) THEN
      ES = 2;
    ELSE ES = 1;

    /* RETIRO AS HORAS */
    DATAVENCIMENTO = CAST(DATAVENCIMENTO AS DATE);

    /* PEGO O CODIGO DO LANCAMENTO */
    SELECT
      SEQUENCIA
    FROM
      SEQ_OBTER('PAGAMENTOS')
    INTO
      :CODIGO;

    /* GRAVO O ESTORNO DA PARCELA */
    INSERT INTO
      PAGAMENTOS (
        CODIGO,
        CODMOVIMENTO,
        NUMERO,
        DESCRICAO,
        ES,
        DATACADAST,
        VALOR,
        EXTERNO,
        PAGO,
        DESCONTO,
        MULTA_JUROS,
        DATAVENCIMENTO,
        SALDOANT,
        SALDOATU,
        CODCONTA,
        CODDOCUMENTO,
        INFODOC,
        CODCENTRO,
        CODCLIENTE)
      VALUES (
        :CODIGO,
        :CODMOVIMENTO,
        :NUMERO,
        :DESCRICAO,
        :ES,
        'NOW',
        :TOTAL_PAGO,
        'S',
        0,
        0,
        0,
        'NOW',
        0,
        0,
        :CODCONTA,
        :CODDOCUMENTO,
        :INFODOC,
        :CODCENTRO,
        :CODCLIENTE);
  END
END!

ALTER PROCEDURE LANCTO (
    DESCRICAO VARCHAR(40),
    VALOR NUMERIC(9,2),
    CONTA INTEGER,
    TIPO CHAR(1),
    INFODOC VARCHAR(50),
    CODDOC INTEGER,
    CODEMPRESA INTEGER,
    CODCLIENTE INTEGER,
    CODCENTRO INTEGER)
AS
DECLARE VARIABLE CODIGO INTEGER;
DECLARE VARIABLE ES INTEGER;
BEGIN
  /* QUAL O TIPO DO LANCAMENTO */
  IF (TIPO = 'D') THEN
    ES = 1;
  IF (TIPO = 'C') THEN
    ES = 2;
  /* PEGO O CODIGO */
  SELECT
    SEQUENCIA
  FROM
    SEQ_OBTER('PAGAMENTOS')
  INTO
    :CODIGO;
  INSERT INTO
    PAGAMENTOS (
      CODIGO,
      NUMERO,
      DESCRICAO,
      DATACADAST,
      VALOR,
      EXTERNO,
      PAGO,
      DATAPAGO,
      DATAVENCIMENTO,
      CODCONTA,
      ES,
      INFODOC,
      CODDOCUMENTO,
      CODEMPRESA,
      CODCLIENTE,
      CODCENTRO)
  VALUES (
    :CODIGO,
    1,
    :DESCRICAO,
    'NOW',
    :VALOR,
    'S',
    1,
    'NOW',
    'NOW',
    :CONTA,
    :ES,
    :INFODOC,
    :CODDOC,
    :CODEMPRESA,
    :CODCLIENTE,
    :CODCENTRO);
END!



INSERT INTO SCRIPTVER(NUMERO, DATA) VALUES (129, CURRENT_TIMESTAMP)!