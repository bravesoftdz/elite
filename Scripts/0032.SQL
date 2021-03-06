/* comissoes */

ALTER TABLE PRODUTOS ADD COMISSIONADO SIMNAO!

ALTER TABLE CLIENTES ADD COMISSIONADO SIMNAO!

CREATE VIEW REL_CONTAS_PAGAS(
    CODIGO,
    CODMOVIMENTO,
    NUMERO,
    ES,
    DESCRICAO,
    VALOR,
    DESCONTO,
    MULTA_JUROS,
    TOTAL_PAGO,
    DATAPAGO,
    INFODOC,
    DOCUMENTO,
    CODEMPRESA,
    NOMEUSUARIO)
AS
SELECT PAGAMENTOS.CODIGO, 
       PAGAMENTOS.CODMOVIMENTO, 
       PAGAMENTOS.NUMERO,
       PAGAMENTOS.ES,
       PAGAMENTOS.DESCRICAO,
       PAGAMENTOS.VALOR, 
       PAGAMENTOS.DESCONTO,
       PAGAMENTOS.MULTA_JUROS,
       PAGAMENTOS.TOTAL_PAGO,
       CAST(PAGAMENTOS.DATAPAGO AS DATE),
       PAGAMENTOS.INFODOC,
       DOCUMENTOS.DOCUMENTO, 
       PAGAMENTOS.CODEMPRESA,
       PAGAMENTOS.NOMEUSUARIO
FROM
       PAGAMENTOS PAGAMENTOS
       LEFT OUTER JOIN DOCUMENTOS DOCUMENTOS ON
         (DOCUMENTOS.CODIGO = PAGAMENTOS.CODDOCUMENTO)
WHERE
       PAGAMENTOS.ES = 1 AND
       PAGAMENTOS.PAGO = 1
!

GRANT SELECT ON REL_CONTAS_PAGAS TO PUBLIC!