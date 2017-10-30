unit ativacao;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  IBCustomDataSet, IBUpdateSQL, Db, IBQuery, IBDatabase, StdCtrls, Buttons,
  ExtCtrls, DBCtrls, Mask;

type
  TformAtivacao = class(TForm)
    Panel1: TPanel;
    Panel2: TPanel;
    BitBtn1: TBitBtn;
    BitBtn2: TBitBtn;
    traAtivacao: TIBTransaction;
    qryAtivacao: TIBQuery;
    dsrAtivacao: TDataSource;
    updAtivacao: TIBUpdateSQL;
    Label1: TLabel;
    DBEdit1: TDBEdit;
    Label2: TLabel;
    DBEdit2: TDBEdit;
    Label3: TLabel;
    DBEdit3: TDBEdit;
    Label4: TLabel;
    DBEdit4: TDBEdit;
    Label5: TLabel;
    DBEdit5: TDBEdit;
    Label6: TLabel;
    DBEdit6: TDBEdit;
    pnlCompra: TPanel;
    Label7: TLabel;
    DBEdit7: TDBEdit;
    Label8: TLabel;
    DBEdit8: TDBEdit;
    Label9: TLabel;
    DBEdit9: TDBEdit;
    DBCheckBox1: TDBCheckBox;
    traOperadora: TIBTransaction;
    qryOperadora: TIBQuery;
    dsrOperadora: TDataSource;
    dsrPlano: TDataSource;
    qryPlano: TIBQuery;
    traPlano: TIBTransaction;
    traProduto: TIBTransaction;
    qryProduto: TIBQuery;
    dsrProduto: TDataSource;
    procedure Label4Click(Sender: TObject);
    procedure Label5Click(Sender: TObject);
    procedure qryAtivacaoAfterOpen(DataSet: TDataSet);
    procedure qryProdutoAfterOpen(DataSet: TDataSet);
    procedure FormShow(Sender: TObject);
    procedure qryAtivacaoAfterEdit(DataSet: TDataSet);
    procedure BitBtn2Click(Sender: TObject);
    procedure BitBtn1Click(Sender: TObject);
    procedure qryAtivacaoAfterPost(DataSet: TDataSet);
  private
    { Private declarations }
    procedure fldCODOPERADORAmudar(Sender: TField);
    procedure fldCODPLANOmudar(Sender: TField);
  public
    { Public declarations }
    inIndividuo,
    inMovimento: longint;
  end;

var
  formAtivacao: TformAtivacao;

implementation

uses data_principal, operadoras, planos;

{$R *.DFM}

procedure TformAtivacao.Label4Click(Sender: TObject);
begin
     with TformOperadoras.Create(Self) do
      try
       Caption := Self.Caption + ' -> ' + Caption;
       ShowModal;
       if (ModalResult = mrOk) and (qrySelecionar.Active) then
         Self.qryAtivacao.fieldByName('CODOPERADORA').AsInteger :=
           qrySelecionar.fieldByName('CODIGO').AsInteger;
      finally
       release;
      end;

end;

procedure TformAtivacao.Label5Click(Sender: TObject);
begin
   if not qryAtivacao.fieldByName('CODOPERADORA').IsNull then
     with TformPlanos.Create(Self) do
      try
       Caption := Self.Caption + ' -> ' + Caption;
       inOperadora := Self.qryAtivacao.fieldByName('CODOPERADORA').AsInteger;
       SetWhereDynamic(Format('(CODOPERADORA = %d)',
        [Self.qryAtivacao.fieldByName('CODOPERADORA').AsInteger]),
        Format('Planos da %d - %s',
          [Self.qryAtivacao.fieldByName('CODOPERADORA').AsInteger,
          Self.qryOperadora.fieldByName('NOME').AsString]));
       ShowModal;
       if (ModalResult = mrOk) and (qrySelecionar.Active) then
         Self.qryAtivacao.fieldByName('CODPLANO').AsInteger :=
           qrySelecionar.fieldByName('CODIGO').AsInteger;
      finally
       release;
      end;

end;

procedure TformAtivacao.qryAtivacaoAfterOpen(DataSet: TDataSet);
begin
     with Dataset do
      begin

       fieldByName('NUMERO_FONE').EditMask := '(99)c999-9999';

       { rotinas de chamada }
       fieldByName('CODOPERADORA').OnChange := fldCODOPERADORAmudar;
       fieldByName('CODPLANO').OnChange := fldCODPLANOmudar;

       fldCODOPERADORAmudar(fieldByName('CODOPERADORA'));
       fldCODPLANOmudar(fieldByName('CODPLANO'));
      end;

end;

procedure TformAtivacao.fldCODOPERADORAmudar(Sender: TField);
begin
  if Sender.AsString > '' then
   with qryOperadora do
    begin
     if active then close;
     open;
    end;
end;

procedure TformAtivacao.fldCODPLANOmudar(Sender: TField);
begin
  if Sender.AsString > '' then
   with qryPlano do
    begin
     if active then close;
     open;
    end;
end;


procedure TformAtivacao.qryProdutoAfterOpen(DataSet: TDataSet);
begin
   with Dataset do
     begin
       (fieldByName('VALOR_VENDA') as TIBBCDField).Currency := True;
       (fieldByName('VALOR_PAGO') as TIBBCDField).Currency := True;
     end;
end;

procedure TformAtivacao.FormShow(Sender: TObject);
begin
  with qryAtivacao do
   begin
    if active then close;
    paramByName('CODIGO').AsInteger := InIndividuo;
    open;
    edit;
   end;
end;

procedure TformAtivacao.qryAtivacaoAfterEdit(DataSet: TDataSet);
begin
  with qryProduto do
   begin
    if active then close;
    paramByName('CODMOVIMENTO').AsInteger := inMovimento;
    open;
    if not fieldByName('CODIGO').isNull then
     begin
       qryAtivacao.FieldByName('CODINDIVIDUO').AsInteger :=
          fieldByName('CODIGO').AsInteger;
       qryAtivacao.FieldByName('CODOPERADORA').AsInteger :=
          fieldByName('CODOPERADORA').AsInteger;
       qryAtivacao.FieldByName('CODPLANO').AsInteger :=
          fieldByName('CODPLANO').AsInteger;
       qryAtivacao.FieldByName('NUMERO_FONE').AsString :=
          fieldByName('NUMERO_FONE').AsString;
       qryAtivacao.FieldByName('APARELO').AsString :=
          fieldByName('APARELO').AsString;
       qryAtivacao.FieldByName('SERIE').AsString :=
          fieldByName('SERIE').AsString;
       if fieldByName('VALOR_PAGO').AsCurrency <> fieldByname('VALOR_VENDA').AsCurrency then
          qryAtivacao.fieldByName('REBATE').AsString := 'S';
     end else
     begin
       qryAtivacao.FieldByName('CODINDIVIDUO').Clear;
       qryAtivacao.FieldByName('CODOPERADORA').Clear;
       qryAtivacao.FieldByName('CODPLANO').Clear;
       qryAtivacao.FieldByName('NUMERO_FONE').Clear;
       qryAtivacao.FieldByName('APARELO').Clear;
       qryAtivacao.FieldByName('SERIE').Clear;
     end;
   end;
  qryAtivacao.fieldByName('ATIVACAO').AsString := 'S';
end;

procedure TformAtivacao.BitBtn2Click(Sender: TObject);
begin
  qryAtivacao.Post;
end;

procedure TformAtivacao.BitBtn1Click(Sender: TObject);
begin
  qryAtivacao.Cancel;
end;

procedure TformAtivacao.qryAtivacaoAfterPost(DataSet: TDataSet);
begin
    dmoPrincipal.SalvarRegistro(qryAtivacao);
end;

end.
