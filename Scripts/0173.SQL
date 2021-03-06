/*
** APAGO PLANO DE CONTAS RECURSIVAMENTE
*/

SET TERM ^ ;

CREATE TRIGGER PLANCONTAS_BD0 FOR PLANCONTAS
ACTIVE BEFORE DELETE POSITION 0
AS
begin
  /* DELETO TODOS OS QUE DEPENDEM DELE */
  DELETE FROM
    PLANCONTAS
  WHERE
    CODPAI = OLD.CODIGO;
end

^

SET TERM ; ^

INSERT INTO SCRIPTVER(NUMERO, DATA) VALUES (173, CURRENT_TIMESTAMP);
COMMIT;