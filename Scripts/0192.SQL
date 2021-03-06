/*
** PAGAMENTO PARCIAL NAO FUNCIONAVA... FALTAVA CAMPOS
*/

SET TERM ^ ;

ALTER PROCEDURE BAIXA (
    CODIGO INTEGER,
    MULTA_JUROS NUMERIC(9,2),
    DESCONTO NUMERIC(9,2),
    TIPO CHAR(1),
    CONTA INTEGER,
    CODDOCUMENTO INTEGER,
    INFODOC VARCHAR(50))
AS
DECLARE VARIABLE CODMOVIMENTO INTEGER;
DECLARE VARIABLE NUMERO INTEGER;
DECLARE VARIABLE DESCRICAO VARCHAR(40);
DECLARE VARIABLE ES INTEGER;
DECLARE VARIABLE VALOR NUMERIC(9,2);
DECLARE VARIABLE DATAVENCIMENTO TIMESTAMP;
DECLARE VARIABLE NOVONUM NUMERIC(15,2);
DECLARE VARIABLE CODEMPRESA INTEGER;
DECLARE VARIABLE CODCLIENTE INTEGER;
DECLARE VARIABLE CODCENTRO INTEGER;
DECLARE VARIABLE CODPLANO INTEGER;
BEGIN

  /* FA�O A BAIXA */
  UPDATE
    PAGAMENTOS
  SET
    PAGO = 1,
    MULTA_JUROS = :MULTA_JUROS,
    DESCONTO = :DESCONTO,
    CODCONTA = :CONTA,
    CODDOCUMENTO = :CODDOCUMENTO,
    INFODOC = :INFODOC
  WHERE
    CODIGO = :CODIGO;

  /* � UMA BAIXA PARCIAL */
  IF ((TIPO = 'P') AND (DESCONTO > 0)) THEN
   BEGIN

     /* LEIO OS DADOS DO PAGAMENTO */
     SELECT
       CODMOVIMENTO,
       UDF_LEFT(DESCRICAO, 35),
       ES,
       DESCONTO,
       DATAVENCIMENTO,
       CODEMPRESA,
       CODCLIENTE,
       CODCENTRO,
       CODPLANO
     FROM
       PAGAMENTOS
     WHERE
       CODIGO = :CODIGO
     INTO
       :CODMOVIMENTO,
       :DESCRICAO,
       :ES,
       :VALOR,
       :DATAVENCIMENTO,
       :CODEMPRESA,
       :CODCLIENTE,
       :CODCENTRO,
       :CODPLANO;

     /* PEGO O PROXIMO CODIGO */
     SELECT
       SEQUENCIA
     FROM
       SEQ_OBTER('PAGAMENTOS')
     INTO
       :CODIGO;

     /* ACERTO A DESCRICAO */
     DESCRICAO = 'ADIC ' || DESCRICAO;

     /* PEGO O NUMERO NOVO */
     SELECT
       MAX(NUMERO) + 1
     FROM
       PAGAMENTOS
     WHERE
       CODMOVIMENTO = :CODMOVIMENTO
     INTO
       :NOVONUM;

     /* INSIRO O PAGAMENTO RESTANTE */
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
         CODEMPRESA,
         CODCLIENTE,
         CODCENTRO,
         CODPLANO)
       VALUES (
         :CODIGO,
         :CODMOVIMENTO,
         :NOVONUM,
         :DESCRICAO,
         :ES,
         'NOW',
         :VALOR,
         'S',
         0,
         0,
         0,
         :DATAVENCIMENTO,
         0,
         0,
         :CONTA,
         :CODDOCUMENTO,
         :CODEMPRESA,
         :CODCLIENTE,
         :CODCENTRO,
         :CODPLANO);

   END

END

^

SET TERM ; ^

INSERT INTO SCRIPTVER(NUMERO, DATA) VALUES (192, CURRENT_TIMESTAMP);
COMMIT;