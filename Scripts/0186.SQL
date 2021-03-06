/*
** CADASTRO DE IMPRESSORAS POR MAQUINA
*/

CREATE TABLE IMPRESSORAS(
    MAQUINA STR40_VALIDO NOT NULL,
    CODEMPRESA INTEGER NOT NULL,
    OS1 STR60,
    OS2 STR60,
    FECHAMENTO STR60,
    NF STR60,
    RECIBO STR60,
    BOLETO STR60,
    ECF STR30,
    ECF_NCC SIMNAO);

ALTER TABLE IMPRESSORAS
ADD CONSTRAINT FK_IMPRESSORAS
PRIMARY KEY (MAQUINA,CODEMPRESA);

ALTER TABLE IMPRESSORAS
ADD CONSTRAINT IMPRESSORAS_FK01
FOREIGN KEY (CODEMPRESA)
REFERENCES SISCONFIG(CODIGO)
ON DELETE CASCADE
ON UPDATE CASCADE;

GRANT ALL ON  TABLE IMPRESSORAS TO PUBLIC;

INSERT INTO SCRIPTVER(NUMERO, DATA) VALUES (186, CURRENT_TIMESTAMP);
COMMIT;