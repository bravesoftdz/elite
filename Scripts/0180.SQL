/*
** EDI��O DO VALOR DO SERVI�O NO PRODUTO
*/

SET TERM ^ ;

ALTER TRIGGER PRODUTOS_MARGEM_UPD
ACTIVE BEFORE UPDATE POSITION 200
AS
BEGIN

  IF ((NEW.PRECOCUSTO = 0) AND (NEW.PRECOVENDA = 0)) THEN
   BEGIN

    NEW.MARGEM = 0;

   END ELSE
   BEGIN

     IF ((NEW.PRECOCUSTO = 0) AND (NEW.PRECOVENDA > 0)) THEN
      BEGIN

        NEW.MARGEM = NEW.PRECOVENDA * 100;

      END ELSE
      BEGIN

        NEW.MARGEM = (100 - ((NEW.PRECOVENDA * 100) / NEW.PRECOCUSTO)) * -1;

      END
   END

   IF (NEW.CODSERVICO IS NULL) THEN
    BEGIN

       NEW.PRECOSERVICO = 0;
       NEW.PRECOTOTAL   = NEW.PRECOVENDA;

    END

END

^

SET TERM ; ^

SET TERM ^ ;

ALTER TRIGGER PRODUTOS_MARGEM_INS
ACTIVE BEFORE INSERT POSITION 200
AS
BEGIN

  IF ((NEW.PRECOCUSTO = 0) AND (NEW.PRECOVENDA = 0)) THEN
   BEGIN

    NEW.MARGEM = 0;

   END ELSE
   BEGIN

     IF ((NEW.PRECOCUSTO = 0) AND (NEW.PRECOVENDA > 0)) THEN
      BEGIN

        NEW.MARGEM = NEW.PRECOVENDA * 100;

      END ELSE
      BEGIN

        NEW.MARGEM = (100 - ((NEW.PRECOVENDA * 100) / NEW.PRECOCUSTO)) * -1;

      END
   END

   IF (NEW.CODSERVICO IS NULL) THEN
    BEGIN

       NEW.PRECOSERVICO = 0;
       NEW.PRECOTOTAL   = NEW.PRECOVENDA;

    END
END

^

SET TERM ; ^

SET TERM ^ ;

ALTER TRIGGER PRODUTOS_MARGEM_INS
ACTIVE BEFORE INSERT POSITION 200
AS
BEGIN

  IF ((NEW.PRECOCUSTO = 0) AND (NEW.PRECOVENDA = 0)) THEN
   BEGIN

    NEW.MARGEM = 0;

   END ELSE
   BEGIN

     IF ((NEW.PRECOCUSTO = 0) AND (NEW.PRECOVENDA > 0)) THEN
      BEGIN

        NEW.MARGEM = NEW.PRECOVENDA * 100;

      END ELSE
      BEGIN

        NEW.MARGEM = (100 - ((NEW.PRECOVENDA * 100) / NEW.PRECOCUSTO)) * -1;

      END
   END

   IF (NEW.CODSERVICO IS NULL) THEN
    BEGIN

       NEW.PRECOSERVICO = 0;
       NEW.PRECOTOTAL   = NEW.PRECOVENDA;

    END ELSE NEW.PRECOTOTAL = NEW.PRECOSERVICO + NEW.PRECOVENDA;
END

^

SET TERM ; ^

SET TERM ^ ;

ALTER TRIGGER PRODUTOS_MARGEM_UPD
ACTIVE BEFORE UPDATE POSITION 200
AS
BEGIN

  IF ((NEW.PRECOCUSTO = 0) AND (NEW.PRECOVENDA = 0)) THEN
   BEGIN

    NEW.MARGEM = 0;

   END ELSE
   BEGIN

     IF ((NEW.PRECOCUSTO = 0) AND (NEW.PRECOVENDA > 0)) THEN
      BEGIN

        NEW.MARGEM = NEW.PRECOVENDA * 100;

      END ELSE
      BEGIN

        NEW.MARGEM = (100 - ((NEW.PRECOVENDA * 100) / NEW.PRECOCUSTO)) * -1;

      END
   END

   IF (NEW.CODSERVICO IS NULL) THEN
    BEGIN

       NEW.PRECOSERVICO = 0;
       NEW.PRECOTOTAL   = NEW.PRECOVENDA;

    END ELSE NEW.PRECOTOTAL = NEW.PRECOSERVICO + NEW.PRECOVENDA;

END

^

SET TERM ; ^

INSERT INTO SCRIPTVER(NUMERO, DATA) VALUES (180, CURRENT_TIMESTAMP);
COMMIT;