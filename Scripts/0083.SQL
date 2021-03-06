/*
** NOME DO VENDEDOR NOS MOVIMENTOS (REDUNDANCIA)
*/

ALTER TABLE MOVIMENTOS ADD NOME_VENDEDOR STR40!

CREATE PROCEDURE PREENCHE_VENDEDOR 
AS
DECLARE VARIABLE CODIGO INTEGER;
DECLARE VARIABLE CODVENDEDOR INTEGER;
DECLARE VARIABLE NOME VARCHAR(40);
BEGIN

  FOR
  SELECT
    CODIGO,
    CODVENDEDOR
  FROM
    MOVIMENTOS
  INTO
    :CODIGO,
    :CODVENDEDOR
  DO
  BEGIN

    IF (CODVENDEDOR IS NOT NULL) THEN
     BEGIN

       SELECT
         NOME
       FROM
         CLIENTES
       WHERE
         CODIGO = :CODVENDEDOR
       INTO
         :NOME;

       UPDATE
         MOVIMENTOS
       SET
         NOME_VENDEDOR = :NOME
       WHERE
         CODIGO = :CODIGO;

     END

  END

END!

EXECUTE PROCEDURE PREENCHE_VENDEDOR!

DROP PROCEDURE PREENCHE_VENDEDOR!

CREATE INDEX MOVIMENTOS_NOME_VENDEDOR ON MOVIMENTOS(NOME_VENDEDOR)!

INSERT INTO SCRIPTVER(NUMERO, DATA) VALUES (83, CURRENT_TIMESTAMP)!
