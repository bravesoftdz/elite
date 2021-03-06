unit venda_data;

interface

{x$DEFINE DARUMA}

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  Db, IBSQL, IBQuery, IBCustomDataSet, IBStoredProc, RxMemDS, ExtCtrls, IBUpdateSQL,
  IBDatabase, Math

{$IFDEF DARUMA}
  , daruma_fs345
{$ENDIF}
  ;

type
  TdataVenda = class(TDataModule)
    memItens: TRxMemoryData;
    dsrItens: TDataSource;
    InfoItem: TIBStoredProc;
    memItensBARRA: TStringField;
    memItensDESCRICAO: TStringField;
    memItensQUANTIDADE: TFloatField;
    memItensVALOR: TFloatField;
    memItensDESCONTO: TFloatField;
    memItensVALOR_REAL: TFloatField;
    memItensTOTAL: TFloatField;
    qryClientes: TIBQuery;
    dsrClientes: TDataSource;
    qryVendedores: TIBQuery;
    dsrVendedores: TDataSource;
    dsrMovimentos: TDataSource;
    GravaItem: TIBStoredProc;
    CancelaItem: TIBStoredProc;
    qryPagamentos: TIBQuery;
    dsrPagamentos: TDataSource;
    updPagamentos: TIBUpdateSQL;
    TimerPagamentos: TTimer;
    qryDocumentos: TIBQuery;
    dsrDocumentos: TDataSource;
    qryTransportador: TIBQuery;
    dsrTransportador: TDataSource;
    qryLoadItens: TIBQuery;
    dsrLoadItens: TDataSource;
    memItensPS: TStringField;
    qryTecnico: TIBQuery;
    dsrTecnico: TDataSource;
    qryOS_VENDER: TIBQuery;
    updOS_VENDER: TIBUpdateSQL;
    qryServico: TIBQuery;
    memItensCODIGO: TIntegerField;
    updMovimentos: TIBUpdateSQL;
    qryMovimentos: TIBQuery;
    traTransportador: TIBTransaction;
    traLoadItens: TIBTransaction;
    traTecnico: TIBTransaction;
    traDocumentos: TIBTransaction;
    traPagamentos: TIBTransaction;
    traInfoItem: TIBTransaction;
    traGravaItem: TIBTransaction;
    traCancelaItem: TIBTransaction;
    traMovimentos: TIBTransaction;
    traOS_VENDER: TIBTransaction;
    traServico: TIBTransaction;
    traClientes: TIBTransaction;
    traVendedores: TIBTransaction;
    traProduto: TIBTransaction;
    qryProduto: TIBQuery;
    dsrProduto: TDataSource;
    memItensINDICE: TIntegerField;
    qryOS_VENDERCODMOVIMENTO: TIntegerField;
    qryOS_VENDERCODVENDEDOR: TIntegerField;
    qryOS_VENDERDATAINI: TDateTimeField;
    qryOS_VENDERDATAFIM: TDateTimeField;
    qryOS_VENDERPORCENTAGEM: TIBBCDField;
    qryOS_VENDERCODVEICULO: TIntegerField;
    qryOS_VENDERKMINI: TIntegerField;
    qryOS_VENDERKMFIM: TIntegerField;
    qryOS_VENDERKM_TOTAL: TIntegerField;
    qryOS_VENDERTMINUTOS: TIntegerField;
    qryOS_VENDERtecnico: TStringField;
    traVeiculo: TIBTransaction;
    qryVeiculo: TIBQuery;
    dsrVeiculo: TDataSource;
    qryOS_VENDERveiculo: TStringField;
    qryPagamentosCODIGO: TIntegerField;
    qryPagamentosNUMERO: TSmallintField;
    qryPagamentosDATAVENCIMENTO: TDateTimeField;
    qryPagamentosVALOR: TIBBCDField;
    qryPagamentosCODDOCUMENTO: TIntegerField;
    qryPagamentosINFODOC: TIBStringField;
    qryPagamentosTIPO_PAG: TIBStringField;
    qryPagamentosTIPO_DOC: TIBStringField;
    qryPagamentosdocumento: TStringField;
    traDaruma: TIBTransaction;
    spDaruma: TIBStoredProc;
    traLimites: TIBTransaction;
    spLimites: TIBStoredProc;
    traICMS: TIBTransaction;
    spICMS: TIBStoredProc;
    traAtivacao: TIBTransaction;
    qryAtivacao: TIBQuery;
    procedure memItensBARRAChange(Sender: TField);
    procedure DataModuleCreate(Sender: TObject);
    procedure qryMovimentosAfterInsert(DataSet: TDataSet);
    procedure qryMovimentosAfterOpen(DataSet: TDataSet);
    procedure memItensBeforePost(DataSet: TDataSet);
    procedure DataModuleDestroy(Sender: TObject);
    procedure memItensCalcFields(DataSet: TDataSet);
    procedure memItensAfterPost(DataSet: TDataSet);
    procedure memItensVALOR_REALChange(Sender: TField);
    procedure memItensDESCONTOChange(Sender: TField);
    procedure memItensAfterInsert(DataSet: TDataSet);
    procedure qryMovimentosAfterPost(DataSet: TDataSet);
    procedure memItensBeforeDelete(DataSet: TDataSet);
    procedure TimerPagamentosTimer(Sender: TObject);
    procedure qryPagamentosAfterPost(DataSet: TDataSet);
    procedure qryPagamentosBeforePost(DataSet: TDataSet);
    procedure qryPagamentosAfterOpen(DataSet: TDataSet);
    procedure qryPagamentosVALORChange(Sender: TField);
    procedure qryPagamentosCODDOCUMENTOChange(Sender: TField);
    procedure qryMovimentosBeforePost(DataSet: TDataSet);
    procedure qryOS_VENDERAfterPost(DataSet: TDataSet);
    procedure qryOS_VENDERAfterInsert(DataSet: TDataSet);
    procedure qryOS_VENDERAfterOpen(DataSet: TDataSet);
    procedure qryMovimentosAfterEdit(DataSet: TDataSet);
    procedure qryMovimentosAfterClose(DataSet: TDataSet);
    procedure qryTecnicoAfterOpen(DataSet: TDataSet);
    procedure qryDocumentosAfterOpen(DataSet: TDataSet);
  private
    { Private declarations }
    procedure fldCODCLIENTEmudar(Sender: TField);
    procedure fldCODVENDEDORmudar(Sender: TField);
    procedure fldCODTRANSPORTADORmudar(Sender: TField);
    procedure fldVALOR_TOTALcalcular(Sender: TField);
  public
    { Public declarations }
    inLoad: byte;
    indice: integer;
    maxProdutos: integer;
    maxServicos: integer;
    cntProdutos: integer;
    cntServicos: integer;
    stNatureza: string;
    function LimiteProdutos: boolean;
    function LimiteServicos: boolean;
  end;

var
  dataVenda: TdataVenda;

implementation

uses data_principal, ativacao;

{$R *.DFM}

function remove_pontuacao(s: string): string;
var
  i: integer;
begin
  result := '';
  for i := 1 to length(s) do
   if not (s[i] in ['a'..'z', 'A'..'Z', '$', '.', ',']) then
    result := result + s[i];
end;

function alinha_valor(StrTexto: string; inTamanho: integer): string;
begin
  { removo os espa�os desnecess�rios }
  StrTexto := trim(StrTexto);

  if length(StrTexto) > inTamanho then
    Result := Copy(StrTexto, length(StrTexto) - inTamanho + 1, inTamanho)
  else
    begin
      while length(StrTexto) < inTamanho do
        StrTexto := '0' + StrTexto;
      Result := StrTexto;
    end;
end;

function TdataVenda.LimiteProdutos: boolean;
begin
  if maxProdutos = -1 then
    result := false
  else
    result := cntProdutos >= maxProdutos;
end;

function TdataVenda.LimiteServicos: boolean;
begin
  if maxServicos = -1 then
    result := false
  else
    result := cntServicos >= maxServicos;
end;

procedure TdataVenda.memItensBARRAChange(Sender: TField);
var
  tipo: string;
begin

   tipo := '';
   if (LimiteProdutos and (copy(memItensBarra.AsString, 1, 3) <> '111')) or
      (LimiteServicos and (copy(memItensBarra.AsString, 1, 3)  = '111')) then
    begin
    
      if LimiteServicos then
        tipo := 'SERVI�OS'
      else
        tipo := 'PRODUTOS';

      Application.MessageBox(PChar(
        'LIMITE DE LAN�AMENTO DE ' + tipo + #13#10#13#10 +
        'O n�mero de lan�amentos permitidos para uma sa�da j� foi alcan�ado ' +
        'pelo �ltimo item lan�ado. Essa limita��o � autom�tica e baseada ' +
        'no tamanho da sua nota ou cupom fiscais em uso.'),
        'Aviso',
        mb_ok + mb_iconinformation);
      exit;
    end;

  if inLoad = 0 then
   with InfoItem do
    begin
     paramByName('BARRA').AsString := memItensBARRA.AsString;
     paramByName('CODEMPRESA').AsInteger := dmoPrincipal.empresa;
     paramByName('CODMOVIMENTO').AsInteger := qryMovimentos.fieldByName('CODIGO').AsInteger;
     try
       if not Transaction.InTransaction then
         Transaction.StartTransaction;
       prepare;
       execProc;
       memItensDESCRICAO.AsString      := paramByName('DESCRICAO').AsString;
       memItensVALOR.AsCurrency        := paramByName('VALOR').AsCurrency;
       memItensVALOR_REAL.AsCurrency   := paramByName('VALOR').AsCurrency;
       memItensDESCONTO.AsCurrency     := 0.0;
       memItensQUANTIDADE.AsCurrency   := 1.0;
       if prepared then unprepare;
       Transaction.Commit;
     except
       on exception do
        begin
         if prepared then unprepare;
         Transaction.Rollback;
         raise;
        end;
     end;
    end;

  { ligo os eventos }
  memItensDESCONTO.OnChange    := memItensDESCONTOChange;
  memItensVALOR_REAL.OnChange  := memItensVALOR_REALChange;
end;

procedure TdataVenda.DataModuleCreate(Sender: TObject);
var
  i: integer;
  conf: string;
begin
   inLoad := 0;

//   { cadastros fixos do suporte ao Movimento }
//   qryMovimentos.Prepare;
//   qryClientes.Prepare;
//   qryNatureza.Prepare;
//   qryVendedores.Prepare;
//   qryResponsavel.Prepare;
//   qryTransportador.Prepare;

//   { suporte ao Pagamento }
//   qryPagamentos.Prepare;
//   qryDocumentos.Prepare;

//   { suporte ao T�cnico }
//   qryOS_VENDER.Prepare;
//   qryTecnico.Prepare;
//   qryVeiculo.Prepare;

//   { suporte a item especiais }
//   qryLoadItens.Prepare;
//   qryServico.Prepare;

{$IFDEF DARUMA}
   conf := ('COM1:9600,n,8,1');
   i := DAR_AbreSerial(conf);
{$ENDIF}

end;

procedure TdataVenda.qryMovimentosAfterInsert(DataSet: TDataSet);
var
  i: integer;
begin
    Dataset.fieldByName('CODIGO').AsInteger :=
      dmoPrincipal.LerSequencia('MOVIMENTOS');

//    ShowMessage(IntToStr(dmoPrincipal.empresa));

    with qryMovimentos do
     begin

      fieldByName('CODEMPRESA').AsInteger           := dmoPrincipal.empresa;
      fieldByName('PRIORIDADE').AsInteger           := 5;
      fieldByName('ES').AsInteger                   := 2;
      fieldByName('TIPO').AsInteger                 := 5; { venda }
      fieldByName('DATA').AsDateTime                :=
         dmoPrincipal.GetServerTime;
      fieldByName('VALOR_SERVICOS').AsCurrency      := 0;
      fieldByName('VALOR_ITENS').AsCurrency         := 0;
      fieldByName('VALOR_TOTAL').AsCurrency         := 0;
      fieldByName('DESCONTO').AsCurrency            := 0;
      fieldByName('CONDICAO').AsString              := '0/';
      fieldByName('NOTA_VALOR_FRETE').AsCurrency    := 0.0;
      fieldByName('NOTA_VALOR_SEGURO').AsCurrency   := 0.0;
      fieldByName('NOTA_VALOR_OUTROS').AsCurrency   := 0.0;
      fieldByName('VALOR_ICMS').AsCurrency          := 0.0;
      fieldByName('NOTA_QUANTIDADE').AsInteger      := 0;
      fieldByName('NOTA_FRETE').AsInteger           := 2;
      fieldByName('STATUS').AsString                := 'VENDA';
      fieldByName('NOTA_DATASAIDA').AsDateTime      :=
         dmoPrincipal.GetServerTime;
      fieldByName('NOTA_BASEICMS').AsCurrency       := 0.0;
      fieldByName('NOTA_BASEICMSSUBST').AsCurrency  := 0.0;
      fieldByName('NOTA_VALORICMSSUBST').AsCurrency := 0.0;
      fieldByName('VALOR_IPI').AsCurrency           := 0.0;
      fieldByName('NOTA_PESOBRUTO').AsCurrency      := 0;
      fieldByName('NOTA_PESOLIQUIDO').AsCurrency    := 0;
      fieldByName('GARANTIA').AsString              := 'N';
      fieldByName('EMPRESTIMO').AsString            := 'N';
      fieldByName('ECF').AsString                   := 'N';

      { configura��o }
      fieldByName('ICMSSIMPLES').AsString :=
           dmoPrincipal.cdsConfig.fieldByName('ICMSSIMPLES').AsString;
      fieldByName('ICMSSIMPALIQ').AsCurrency :=
           dmoPrincipal.cdsConfig.fieldByName('ALIQUOTA_ICMSSIMPLES').AsCurrency;
      fieldByName('ISSALIQ').AsCurrency      :=
           dmoPrincipal.cdsConfig.fieldByName('ALIQUOTA_ISS').AsCurrency;
      fieldByName('CODCLIENTE').AsInteger :=
           dmoPrincipal.cdsConfig.fieldByName('CODCLIENTE_PADRAO').AsInteger;

      fieldByName('CODRESPONSAVEL').AsInteger   :=
           dmoPrincipal.cdsVendedor.fieldByName('CODIGO').AsInteger;
      fieldByName('CODVENDEDOR').AsInteger      :=
           dmoPrincipal.cdsVendedor.fieldByName('CODIGO').AsInteger;

      if stNatureza = '' then
        fieldByName('NOTA_CODNATUOPER').AsString :=
             dmoPrincipal.cdsConfig.fieldByName('NATUOPER_PADRAO').AsString
      else
        fieldByName('NOTA_CODNATUOPER').AsString := stNatureza;

      { reseto a Natureza de Opera��o }  
      stNatureza := '';

      fieldByName('OSTIPO').AsInteger          := 99;
      fieldByName('CODCENTRO').AsInteger       := 1;

      fieldByName('PERCCOMIS_CALCULO').AsString := 'F';
      fieldByName('PERCCOMIS_PROD').AsCurrency  := 0.0;
      fieldByName('PERCCOMIS_PECA').AsCurrency  := 0.0;
      fieldByName('PERCCOMIS_SERV').AsCurrency  := 0.0;

     end;

{$IFDEF DARUMA}
   i := DAR_AbreCupomFiscal('1');
{$ENDIF}
end;

procedure TdataVenda.qryMovimentosAfterOpen(DataSet: TDataSet);
begin
   with dataset do
    begin
     (fieldByName('VALOR_TOTAL') as TNumericField).EditFormat    := '#,##0.00';
     (fieldByName('VALOR_TOTAL') as TNumericField).DisplayFormat := '#,##0.00';

     (fieldByName('VALOR_SERVICOS') as TNumericField).EditFormat    := '#,##0.00';
     (fieldByName('VALOR_SERVICOS') as TNumericField).DisplayFormat := '#,##0.00';

     (fieldByName('VALOR_ITENS') as TNumericField).EditFormat    := '#,##0.00';
     (fieldByName('VALOR_ITENS') as TNumericField).DisplayFormat := '#,##0.00';

     (fieldByName('VALOR_PRODUTOS') as TNumericField).EditFormat    := '#,##0.00';
     (fieldByName('VALOR_PRODUTOS') as TNumericField).DisplayFormat := '#,##0.00';

     (fieldByName('DESCONTO') as TNumericField).EditFormat    := '#,##0.00';
     (fieldByName('DESCONTO') as TNumericField).DisplayFormat := '#,##0.00';

     (fieldByName('VALOR_ICMS') as TNumericField).EditFormat    := '#,##0.00';
     (fieldByName('VALOR_ICMS') as TNumericField).DisplayFormat := '#,##0.00';

     (fieldByName('NOTA_VALORICMSSUBST') as TNumericField).EditFormat    := '#,##0.00';
     (fieldByName('NOTA_VALORICMSSUBST') as TNumericField).DisplayFormat := '#,##0.00';

     (fieldByName('VALOR_ISS') as TNumericField).EditFormat    := '#,##0.00';
     (fieldByName('VALOR_ISS') as TNumericField).DisplayFormat := '#,##0.00';

     (fieldByName('NOTA_VALOR_SEGURO') as TNumericField).EditFormat    := '#,##0.00';
     (fieldByName('NOTA_VALOR_SEGURO') as TNumericField).DisplayFormat := '#,##0.00';

     (fieldByName('NOTA_VALOR_FRETE') as TNumericField).EditFormat    := '#,##0.00';
     (fieldByName('NOTA_VALOR_FRETE') as TNumericField).DisplayFormat := '#,##0.00';

     (fieldByName('NOTA_VALOR_OUTROS') as TNumericField).EditFormat    := '#,##0.00';
     (fieldByName('NOTA_VALOR_OUTROS') as TNumericField).DisplayFormat := '#,##0.00';

     (fieldByName('VALOR_IPI') as TNumericField).EditFormat    := '#,##0.00';
     (fieldByName('VALOR_IPI') as TNumericField).DisplayFormat := '#,##0.00';

     (fieldByName('NOTA_VALOR_TOTAL') as TNumericField).EditFormat    := '#,##0.00';
     (fieldByName('NOTA_VALOR_TOTAL') as TNumericField).DisplayFormat := '#,##0.00';

     (fieldByName('NOTA_BASEICMS') as TNumericField).EditFormat    := '#,##0.00';
     (fieldByName('NOTA_BASEICMS') as TNumericField).DisplayFormat := '#,##0.00';

     (fieldByName('ICMSSIMPALIQ') as TNumericField).EditFormat    := '#,##0.00';
     (fieldByName('ICMSSIMPALIQ') as TNumericField).DisplayFormat := '#,##0.00';

     (fieldByName('NOTA_BASEICMSSUBST') as TNumericField).EditFormat    := '#,##0.00';
     (fieldByName('NOTA_BASEICMSSUBST') as TNumericField).DisplayFormat := '#,##0.00';

     (fieldByName('ICMSSIMPALIQ') as TNumericField).EditFormat    := '##0.0000 "%"';
     (fieldByName('ICMSSIMPALIQ') as TNumericField).DisplayFormat := '##0.0000 "%"';

     fieldByName('DATAINICIO').EditMask  := '99/99/9999 99:99';
     fieldByName('DATATERMINO').EditMask := '99/99/9999 99:99';
     fieldByName('NOTA_DATASAIDA').EditMask := '99/99/9999 99:99';

     { vetores de altera��o de campos }
     fieldByName('CODCLIENTE').OnChange            := fldCODCLIENTEmudar;
     fieldByName('CODVENDEDOR').OnChange           := fldCODVENDEDORmudar;
     fieldByName('NOTA_CODTRANSPORTADOR').OnChange := fldCODTRANSPORTADORmudar;

     { seus valores iniciais }
     fldCODCLIENTEmudar(fieldByName('CODCLIENTE'));
     fldCODVENDEDORmudar(fieldByName('CODVENDEDOR'));
     fldCODTRANSPORTADORmudar(fieldByName('NOTA_CODTRANSPORTADOR'));

     { calculos }
     fieldByName('VALOR_ITENS').OnChange           := fldVALOR_TOTALcalcular;
     fieldByName('VALOR_SERVICOS').OnChange        := fldVALOR_TOTALcalcular;
     fieldByName('DESCONTO').OnChange              := fldVALOR_TOTALcalcular;
    end;

    { indice dos itens para cancelamento }
    indice := 0;

    with qryOS_VENDER do
     begin
      if active then close;
      open;
     end;

    with qryTecnico do
     begin
      if active then close;
      open;
     end;

    with qryVeiculo do
     begin
      if active then close;
      open;
     end;

    { limites m�ximos para lan�amentos de produtos e servi�os }
    cntProdutos := 0;
    cntServicos := 0;
    with spLimites do
     try
      Transaction.StartTransaction;
      ParamByName('CODEMPRESA').AsInteger := dmoPrincipal.empresa;
      prepare;
      ExecProc;
      maxProdutos := paramByname('PRODUTOS').AsInteger;
      maxServicos := paramByname('SERVICOS').AsInteger;
      if (paramByName('METODO').AsString = 'G') and (maxProdutos = -1) then
        maxProdutos := min(
           dmoPrincipal.LimiteProdutosOS1,
           dmoPrincipal.LimiteProdutosOS2
        );
      Transaction.Commit;
     except
      on exception do
       begin
        Transaction.Rollback;
       end
     end;

end;

procedure TdataVenda.fldCODCLIENTEmudar(Sender: TField);
begin
  if Sender.AsString > '' then
   with qryClientes do
    begin
     if Active then close;
     open;
    end;
end;

procedure TdataVenda.fldCODVENDEDORmudar(Sender: TField);
begin
  if Sender.AsString > '' then
   with qryVendedores do
    begin
     if Active then close;
     open;
    end;
end;

procedure TdataVenda.fldCODTRANSPORTADORmudar(Sender: TField);
begin
  if Sender.AsString > '' then
   with qryTransportador do
    begin
     if Active then close;
     open;
    end;
end;

procedure TdataVenda.fldVALOR_TOTALcalcular(Sender: TField);
begin
  with qryMovimentos do
   begin
    fieldByName('VALOR_TOTAL').AsCurrency :=
      (fieldByName('VALOR_ITENS').AsCurrency +
      fieldByName('VALOR_SERVICOS').AsCurrency) -
      fieldByName('DESCONTO').AsCurrency;
    fieldByName('VALOR_PRODUTOS').AsCurrency :=
      (fieldByName('VALOR_ITENS').AsCurrency -
      fieldByName('DESCONTO').AsCurrency);
    fieldByName('VALOR_ISS').AsCurrency :=
      fieldByName('VALOR_SERVICOS').AsCurrency *
      (fieldByName('ISSALIQ').AsCurrency / 100);
    if fieldByName('ICMSSIMPLES').AsString = 'S' then
      fieldByName('VALOR_ICMS').AsCurrency :=
        fieldByName('VALOR_PRODUTOS').AsCurrency *
        (fieldByName('ICMSSIMPALIQ').AsCurrency / 100);
    fieldByName('NOTA_VALOR_TOTAL').AsCurrency :=
      fieldByName('VALOR_TOTAL').AsCurrency;
   end;
end;

procedure TdataVenda.memItensBeforePost(DataSet: TDataSet);
var
  aliquota: extended;
  TX: string;
begin

  { contagem dos itens }
  if copy(memItensBARRA.AsString, 1, 3) = '111' then
    inc(cntServicos)
  else
    inc(cntProdutos);

  { se nao for carregamento... }
  if inLoad = 0 then
   begin

    { primeira grava��o }
    with datavenda.qryMovimentos do
      if state = dsInsert then
       begin
        post;
        edit;
       end;

    if Trim(memItensBARRA.AsString) > '' then
      try

       { produto ou servi�o?? }
       if copy(memItensBARRA.AsString, 1, 3) = '111' then
         memItensPS.AsString := 'S' else
         memItensPS.AsString := 'P';

       if dmoPrincipal.cdsVendedor.fieldByName('DESCONTO').AsCurrency > 0 then
        begin
         if dmoPrincipal.cdsVendedor.fieldByName('DESCONTO').AsCurrency <
           memItensDESCONTO.AsCurrency then
          begin
           ShowMessage('ATEN��O: O valor do desconto � superior ao permitido!');
           abort;
           exit;
          end;
        end;

{$IFDEF DARUMA}
       { verificar ICMS }
       with qryProduto do
        begin
         if active then close;
         open;
        end;

        with spDaruma do
         try
          paramByName('ICMS').AsBCD :=
            qryProduto.fieldByName('ICMS').AsCurrency;
          prepare;
          execproc;
          TX := paramByName('ALIQUOTA_FISCAL').AsString;
         except
          on exception do
           begin
            raise;
            abort;
            exit;
           end;
         end;


{$ENDIF}

       with GravaItem do
        begin
         paramByName('BARRA').AsString           := memItensBARRA.AsString;
         paramByName('QUANTIDADE').AsCurrency    := memItensQUANTIDADE.AsCurrency;
         paramByName('VALOR').AsCurrency         := memItensVALOR.AsCurrency;
         paramByName('DESCONTO').AsCurrency      :=
             memItensVALOR.AsCurrency - memItensVALOR_REAL.AsCurrency;
         paramByName('ICMS').AsCurrency :=
             InfoItem.paramByName('ICMS').AsCurrency;
         paramByName('CODMOVSAIDA').AsInteger :=
             qryMovimentos.fieldByName('CODIGO').AsInteger;
         { executo a procedure }
         try
           if not Transaction.InTransaction then
             Transaction.StartTransaction;
           prepare;
           execProc;
           if prepared then unprepare;

           Transaction.Commit;

           { atualizo o indice }
           inc(indice);
           memItensINDICE.AsInteger    := indice;

         except
           on exception do
            begin
             if prepared then unprepare;
             Transaction.Rollback;
             raise;
            end;
         end;
        end;
      except
        on exception do
         begin
          raise;
          abort;
         end;
      end
    else abort;
   end;

end;

procedure TdataVenda.DataModuleDestroy(Sender: TObject);
begin
   { cadastros fixos do suporte ao Movimento }
   with qryMovimentos do
    begin
     if active then close;
     unprepare;
    end;
   with qryClientes do
    begin
     if active then close;
     unprepare;
    end;
   with qryVendedores do
    begin
     if active then close;
     unprepare;
    end;
   with qryTransportador do
    begin
     if active then close;
     unprepare;
    end;

   { suporte ao Pagamento }
   with qryPagamentos do
    begin
     if active then close;
     unprepare;
    end;
   with qryDocumentos do
    begin
     if active then close;
     unprepare;
    end;

   { suporte ao T�cnico }
   with qryOS_VENDER do
    begin
     if active then close;
     unprepare;
    end;
   with qryTecnico do
    begin
     if active then close;
     unprepare;
    end;
   with qryVeiculo do
    begin
     if active then close;
     unprepare;
    end;

   { suporte a item especiais }
   with qryLoadItens do
    begin
     if active then close;
     unprepare;
    end;
   with qryServico do
    begin
     if active then close;
     unprepare;
    end;

   { suporte a tabelas de memoria - conte�do ser� perdido }
   with memItens do
    if active then close;

end;

procedure TdataVenda.memItensCalcFields(DataSet: TDataSet);
begin
  with Dataset do
    fieldByName('TOTAL').AsCurrency :=
      fieldByName('QUANTIDADE').AsCurrency * fieldByName('VALOR_REAL').AsCurrency;
end;

procedure TdataVenda.memItensAfterPost(DataSet: TDataSet);
var
   D_a: char;
   Aliquota,
   Codbarra,
   Porcentagem,
   Valor,
   Unid,
   Quantidade,
   Descricao: string;
   i: integer;
   aliquota_icms: extended;
begin


  { ativa��o celular }
  with qryAtivacao do
   begin
     if active then close;
     paramByName('BARRA').AsString := memItensBARRA.AsString;
     paramByName('CODMOVIMENTO').AsInteger :=
       qryMovimentos.fieldByName('CODIGO').Asinteger;
     open;
     if fieldByName('ATIVACAO').AsString = 'S' then
      begin
       with TformAtivacao.Create(Self) do
        try
         inIndividuo := Self.qryAtivacao.fieldByname('CODIGO').AsInteger;
         inMovimento := Self.qryMovimentos.fieldByName('CODIGO').Asinteger;
         ShowModal;
        finally
         release;
        end;
      end;
     close;
   end;

{$IFDEF DARUMA}

  { constantes }
  with spDaruma do
   try
    paramByName('ICMS').AsBCD :=
      qryProduto.fieldByName('ICMS').AsCurrency;
    prepare;
    execproc;
    Aliquota := paramByName('ALIQUOTA_FISCAL').AsString;
   except
    on exception do
     begin
      raise;
      abort;
      exit;
     end;
   end;

   D_a         := ('0');
   Porcentagem := ('0000');

   { valores }
   Codbarra    := ('0' + copy(memItensBARRA.AsString, 4, 5));
//   Codbarra    := copy(memItensBARRA.AsString, 1, 13);
   Quantidade  := alinha_valor(
                     remove_pontuacao(FloatToStr(memItensQUANTIDADE.AsFloat)),
                     5);
   Descricao   := copy(memItensDESCRICAO.AsString, 1, 14);
//   Descricao   := copy(memItensDESCRICAO.AsString, 1, 78);
   Valor       := alinha_valor(
                     remove_pontuacao(FloatToStrF(memItensVALOR_REAL.AsFloat,
                     ffFixed, 12, 2)), 9);

   Unid        := qryProduto.fieldByName('UNIDADE').AsString;

   i := DAR_Desc1Lin6Dig(
//   i := DAR_Desc3Lin13Dig(
          Aliquota,
          Codbarra,
          D_a,
          Porcentagem,
          Valor,
//          Unid,
          Quantidade,
          Descricao,
          '1'
   );

{$ENDIF}


  { atualizo a soma, se nao for carregamento }
  if inLoad = 0 then
   begin
     if Dataset.fieldByName('PS').AsString = 'S' then
      begin
       with qryMovimentos do
        fieldByName('VALOR_SERVICOS').AsCurrency :=
          fieldByName('VALOR_SERVICOS').AsCurrency + Dataset.fieldByName('TOTAL').AsCurrency;
      end else
      begin
       with qryMovimentos do
        fieldByName('VALOR_ITENS').AsCurrency :=
          fieldByName('VALOR_ITENS').AsCurrency + Dataset.fieldByName('TOTAL').AsCurrency;
      end;
   end;
end;

procedure TdataVenda.memItensVALOR_REALChange(Sender: TField);
begin
    memItensDESCONTO.OnChange := nil;
    if memItensVALOR.AsCurrency > 0 then
      memItensDESCONTO.AsCurrency := 100 -
        (memItensVALOR_REAL.AsCurrency * 100) / memItensVALOR.AsCurrency
    else
      memItensDESCONTO.AsCurrency := 0;
    memItensDESCONTO.OnChange := memItensDESCONTOChange;
end;

procedure TdataVenda.memItensDESCONTOChange(Sender: TField);
begin
   memItensVALOR_REAL.OnChange := nil;
   memItensVALOR_REAL.AsCurrency :=
     (memItensVALOR.AsCurrency * (100 - memItensDESCONTO.AsCurrency)) / 100;
   memItensVALOR_REAL.OnChange := memItensVALOR_REALChange;
end;

procedure TdataVenda.memItensAfterInsert(DataSet: TDataSet);
begin
    memItensDESCONTO.OnChange   := nil;
    memItensVALOR_REAL.OnChange := nil;

end;

procedure TdataVenda.qryMovimentosAfterPost(DataSet: TDataSet);
var
  D_a, Tipo: char;
  Valor, Val, Texto: string;
  i: integer;
begin
    dmoPrincipal.SalvarRegistro(qryMovimentos);

//    O CODIGO ABAIXO FOI REALOCADO PARA pgcDadosOnChange
//
    if not qryMovimentos.fieldByName('CODIGO').IsNull then
     begin
      if qryPagamentos.Active then qryPagamentos.close;
      qryPagamentos.Open;
     end;

{$IFDEF DARUMA}

    if qryMovimentos.fieldByName('TIPO').AsInteger in [3, 6] then
     begin

//      cupom_fechado := true;

      { totaliza��o do cupom }
      D_a   := ('0');
      Valor := ('000000000000');
      i := DAR_Totaliza(
        D_a,
        Valor,
        '1'
      );

      { descri��o da forma de pagamento }
      with qryPagamentos do
       begin
        first;
        while not eof do
         begin

          if qryDocumentos.active then qryDocumentos.close;
          qryDocumentos.open;

          Tipo   := 'A';
          Val    := alinha_valor(
                         remove_pontuacao(
                         FloatToStrF(
                         fieldByName('VALOR').AsFloat,
                         ffFixed, 12, 2)), 9);
          Texto   := (FormatDateTime('DD/MM/YYYY',
             fieldByName('DATAVENCIMENTO').AsDateTime) +
             ' - ' + qryDocumentos.fieldByName('DOCUMENTO').AsString);
          i := DAR_DescFormPag(
            Tipo,
            Val,
            Texto,
            '1'
          );

          next;
         end;
       end;

      { fechamento do cupom }
      Texto := (#13+#10 + 'C L I E N T E :' + #13+#10 +
                Trim(qryClientes.fieldByName('NOME').AsString) + #13#10);
      if qryClientes.fieldByName('TIPOPESSOA').AsString = 'F' then
        Texto := Texto + ('CPF ' + Trim(qryClientes.fieldByName('CPF').AsString) +
                '  RG ' + Trim(qryClientes.fieldByName('RG').AsString))
      else
        Texto := Texto + ('CNPJ ' + Trim(qryClientes.fieldByName('CGC').AsString) +
                '  IE ' + Trim(qryClientes.fieldByName('IE').AsString));
      Texto := Texto + #13+#10 + Trim(qryClientes.fieldByName('LOGRADOURO').AsString) +
        ', ' + Trim(qryClientes.fieldByName('NUMERO').AsString) + #13+#10 +
        Trim(qryClientes.fieldByName('BAIRRO').AsString) + ' - ' +
        Trim(qryClientes.fieldByName('CIDADE').AsString) + '/' +
        Trim(qryClientes.fieldByName('ESTADO').AsString) + #13+#10 +
        Trim(qryClientes.fieldByName('CEP').AsString) + ' - FONE: ' +
        Trim(qryClientes.fieldByName('FONE').AsString);
      Texto := Texto + #13+#10+#13+#10 + 'VOLTE SEMPRE!!!';
      i := DAR_FechaCupom(
        Texto,
        '1'
      );
     end;

{$ENDIF}

end;

procedure TdataVenda.memItensBeforeDelete(DataSet: TDataSet);
var
  i: integer;
  barra: string;
begin

   barra := memItensBARRA.AsString;

   with CancelaItem do
    begin
      try
       if not Transaction.InTransaction then
          Transaction.StartTransaction;
       paramByName('BARRA').AsString := memItensBARRA.AsString;
       paramByName('CODMOVSAIDA').AsInteger :=
          qryMovimentos.fieldByName('CODIGO').AsInteger;
       prepare;
       execProc;
       if Dataset.fieldByName('PS').AsString = 'S' then
         qryMovimentos.fieldByName('VALOR_SERVICOS').AsCurrency :=
          qryMovimentos.fieldByName('VALOR_SERVICOS').AsCurrency - Dataset.fieldByName('TOTAL').AsCurrency
       else
         qryMovimentos.fieldByName('VALOR_ITENS').AsCurrency :=
          qryMovimentos.fieldByName('VALOR_ITENS').AsCurrency - Dataset.fieldByName('TOTAL').AsCurrency;
       if prepared then unprepare;

{$IFDEF DARUMA}
       i := DAR_CancelaItem(memItensINDICE.AsString, '1');
{$ENDIF}

       Transaction.Commit;

       { contagem dos itens }
       if copy(memItensBARRA.AsString, 1, 3) = '111' then
         dec(cntServicos)
       else
         dec(cntProdutos);

      except
       on exception do
        begin
         if prepared then unprepare;
         Transaction.Rollback;
         raise;
         abort;
        end;
      end;
    end;
end;

procedure TdataVenda.TimerPagamentosTimer(Sender: TObject);
begin
   TimerPagamentos.Enabled := False;
   with qryPagamentos do
     if state in [dsInsert, dsEdit] then Post;
end;

procedure TdataVenda.qryPagamentosAfterPost(DataSet: TDataSet);
begin
   dmoPrincipal.SalvarRegistro(qryPagamentos);
end;

procedure TdataVenda.qryPagamentosBeforePost(DataSet: TDataSet);
begin
    TimerPagamentos.Enabled := False;
end;

procedure TdataVenda.qryPagamentosAfterOpen(DataSet: TDataSet);
begin
  with Dataset do
   begin

    { m�scaras }
    (fieldByName('NUMERO') as TNumericField).EditFormat    := '0#';
    (fieldByName('NUMERO') as TNumericField).DisplayFormat := '0#';

    (fieldByName('VALOR') as TNumericField).EditFormat    := '#,##0.00';
    (fieldByName('VALOR') as TNumericField).DisplayFormat := '#,##0.00';

    { altera��es dos campos }
    fieldByname('DATAVENCIMENTO').OnChange        := qryPagamentosVALORChange;
    fieldByname('VALOR').OnChange                 := qryPagamentosVALORChange;
    fieldByname('CODDOCUMENTO').OnChange          := qryPagamentosCODDOCUMENTOChange;
    fieldByname('INFODOC').OnChange               := qryPagamentosVALORChange;

   end;
end;

procedure TdataVenda.qryPagamentosVALORChange(Sender: TField);
begin
     if TimerPagamentos.Enabled then
       TimerPagamentos.Enabled := False;
     TimerPagamentos.Enabled := True;
end;

procedure TdataVenda.qryPagamentosCODDOCUMENTOChange(Sender: TField);
begin
     if TimerPagamentos.Enabled then
       TimerPagamentos.Enabled := False;
     TimerPagamentos.Enabled := True;

     with qryDocumentos do
      begin
       if active then close;
       open;
      end;
end;

procedure TdataVenda.qryMovimentosBeforePost(DataSet: TDataSet);
var
  condicao: string;
begin
  with DataSet do
   begin
    fieldByName('NOTA_BASEICMS').AsCurrency :=
      fieldByName('VALOR_PRODUTOS').AsCurrency;

    { verifico se a barra final foi colocada }
    condicao := Trim(fieldByName('CONDICAO').AsString);
    if condicao[length(condicao)] <> '/' then
     begin
      condicao := condicao + '/';
      fieldByName('CONDICAO').AsString := condicao;
     end;

   end;

  with spICMS do
   try
    if not Transaction.InTransaction then
      Transaction.StartTransaction;
    paramByName('CODMOVIMENTO').AsInteger :=
      qryMovimentos.fieldByName('CODIGO').AsInteger;
    ExecProc;
    qryMovimentos.fieldByName('VALOR_ICMS').AsCurrency :=
      paramByname('VALOR_ICMS').AsCurrency;
    Transaction.Commit;
   except
    on exception do
      Transaction.Rollback;
   end;

end;

procedure TdataVenda.qryOS_VENDERAfterPost(DataSet: TDataSet);
begin
   dmoPrincipal.SalvarRegistro(qryOS_VENDER);
end;

procedure TdataVenda.qryOS_VENDERAfterInsert(DataSet: TDataSet);
begin
   Dataset.fieldByName('CODMOVIMENTO').AsInteger :=
     qryMovimentos.fieldByname('CODIGO').AsInteger;
   Dataset.fieldByName('PORCENTAGEM').AsCurrency := 100.0;
   Dataset.fieldByName('DATAINI').AsDateTime :=
     dmoPrincipal.GetServerTime;
   Dataset.fieldByName('DATAFIM').AsDateTime :=
     dmoPrincipal.GetServerTime;
   Dataset.fieldByName('KMINI').AsInteger := 0;
   Dataset.fieldByName('KMFIM').AsInteger := 0;
end;

procedure TdataVenda.qryOS_VENDERAfterOpen(DataSet: TDataSet);
begin
  with Dataset do
   begin
     fieldByName('DATAINI').EditMask  := '00/00/00 00:00';
     (fieldByName('DATAINI') as TDateTimeField).DisplayFormat := 'dd''/''mm''/''yy hh'':''nn';

     fieldByName('DATAFIM').EditMask  := '00/00/00 00:00';
     (fieldByName('DATAFIM') as TDateTimeField).DisplayFormat := 'dd''/''mm''/''yy hh'':''nn';

     (fieldByName('PORCENTAGEM') as TNumericField).DisplayFormat := '##0''%''';
     (fieldByName('PORCENTAGEM') as TNumericField).EditFormat    := '##0';

     (fieldByName('KMINI') as TNumericField).DisplayFormat := '#####0.0'' KM''';
     (fieldByName('KMINI') as TNumericField).EditFormat    := '#####0.0';

     (fieldByName('KMFIM') as TNumericField).DisplayFormat := '#####0.0'' KM''';
     (fieldByName('KMFIM') as TNumericField).EditFormat    := '#####0.0';
   end;

end;

procedure TdataVenda.qryMovimentosAfterEdit(DataSet: TDataSet);
begin

  with Dataset do
   begin
     if fieldByName('CODRESPONSAVEL').IsNull then
      fieldByName('CODRESPONSAVEL').AsInteger   :=
           dmoPrincipal.cdsVendedor.fieldByName('CODIGO').AsInteger;
     if fieldByName('CODVENDEDOR').IsNull then
      fieldByName('CODVENDEDOR').AsInteger      :=
           dmoPrincipal.cdsVendedor.fieldByName('CODIGO').AsInteger;
   end;

end;

procedure TdataVenda.qryMovimentosAfterClose(DataSet: TDataSet);
begin

   { suporte ao movimento }
   with qryClientes do
     if active then close;
   with qryVendedores do
     if active then close;
   with qryTransportador do
     if active then close;

   { suporte ao Pagamento }
   with qryPagamentos do
     if active then close;
   with qryDocumentos do
     if active then close;

   { suporte ao T�cnico }
   with qryOS_VENDER do
     if active then close;
   with qryTecnico do
     if active then close;
   with qryVeiculo do
     if active then close;

   { suporte a item especiais }
   with qryLoadItens do
     if active then close;
   with qryServico do
     if active then close;

   { suporte a tabelas de memoria - conte�do ser� perdido }
   with memItens do
     if active then close;

end;

procedure TdataVenda.qryTecnicoAfterOpen(DataSet: TDataSet);
begin
   with (Dataset as TIBQuery) do
     fetchall;
end;

procedure TdataVenda.qryDocumentosAfterOpen(DataSet: TDataSet);
begin
  with (dataset as TIBQuery) do
    fetchall;
end;

end.
