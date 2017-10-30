unit transf;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  IBDatabase, IBCustomDataSet, IBQuery, Db, StdCtrls, Mask, DBCtrls,
  RxMemDS, ExtCtrls, Buttons, IBStoredProc;

type
  TformTransf = class(TForm)
    Panel1: TPanel;
    Bevel1: TBevel;
    Panel2: TPanel;
    memTransf: TRxMemoryData;
    memTransfBARRA: TStringField;
    memTransfQUANTIDADE: TFloatField;
    memTransfCODEMPRESA1: TIntegerField;
    memTransfCODEMPRESA2: TIntegerField;
    Label1: TLabel;
    edBarra: TDBEdit;
    dsrTransf: TDataSource;
    qryProduto: TIBQuery;
    traProduto: TIBTransaction;
    dsrProduto: TDataSource;
    DBEdit2: TDBEdit;
    Label2: TLabel;
    DBEdit3: TDBEdit;
    traEmpresa: TIBTransaction;
    qryEmpresa: TIBQuery;
    dsrEmpresa: TDataSource;
    memTransfEMPRESA: TStringField;
    Label3: TLabel;
    DBLookupComboBox1: TDBLookupComboBox;
    BitBtn1: TBitBtn;
    BitBtn2: TBitBtn;
    spTransf: TIBStoredProc;
    traTransf: TIBTransaction;
    Label4: TLabel;
    Label5: TLabel;
    DBEdit4: TDBEdit;
    memTransfICMS: TFloatField;
    procedure memTransfBARRAChange(Sender: TField);
    procedure qryEmpresaBeforeOpen(DataSet: TDataSet);
    procedure Label1Click(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure memTransfAfterInsert(DataSet: TDataSet);
    procedure BitBtn2Click(Sender: TObject);
    procedure memTransfBeforePost(DataSet: TDataSet);
    procedure edBarraEnter(Sender: TObject);
    procedure edBarraExit(Sender: TObject);
    procedure FormKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  formTransf: TformTransf;

implementation

uses data_principal, produtos, consulta_produto;

{$R *.DFM}

procedure TformTransf.memTransfBARRAChange(Sender: TField);
begin
  with qryProduto do
   begin
    if active then close;
    open;
   end;
end;

procedure TformTransf.qryEmpresaBeforeOpen(DataSet: TDataSet);
begin
  with (Dataset as TIBQuery) do
   paramByName('CODEMPRESA').AsInteger := dmoPrincipal.empresa;
end;

procedure TformTransf.Label1Click(Sender: TObject);
begin
     Screen.Cursor := crHourGlass;
     with TformConsultaProduto.Create(Self) do
      try
       Caption := Self.Caption + ' -> ' + Caption;
       SetWhereDynamic('INDIVIDUAIS.VENDIDO = ''N'' AND INDIVIDUAIS.CODEMPRESA = ' +
         IntToStr(dmoPrincipal.empresa), 'Produtos em estoque');
       ShowModal;
       if (ModalResult = mrOk) and (qrySelecionar.Active) then
          memTransf.fieldByName('BARRA').AsString :=
              qrySelecionar.fieldByName('BARRA').AsString;
          memTransf.fieldByName('QUANTIDADE').AsFloat := 1;
      finally
       release;
      end;
end;

procedure TformTransf.FormShow(Sender: TObject);
begin
  Screen.Cursor := crDefault;
  with memTransf do
   begin
    if active then close;
    open;
    insert;
   end;
  edBarra.SetFocus;
end;

procedure TformTransf.memTransfAfterInsert(DataSet: TDataSet);
begin
  memTransf.fieldByName('CODEMPRESA1').AsInteger := dmoPrincipal.empresa;
end;

procedure TformTransf.BitBtn2Click(Sender: TObject);
begin
   try
     memTransf.post;
     ShowMessage('A transferência foi completada com sucesso!');
   except
     on exception do
      begin
       ShowMessage('Transferência não efetuada.');
       raise;
      end;
   end;
   close;
end;

procedure TformTransf.memTransfBeforePost(DataSet: TDataSet);
begin
  with spTransf do
   try
    if not Transaction.InTransaction then
      Transaction.StartTransaction;
    paramByName('BARRA').AsString :=
      memTransf.fieldByName('BARRA').AsString;
    paramByName('QUANTIDADE').AsFloat :=
      memTransf.fieldByName('QUANTIDADE').AsFloat;
    paramByName('ICMS').AsFloat :=
      memTransf.fieldByName('ICMS').AsFloat;
    paramByName('CODEMPRESA1').AsInteger :=
      memTransf.fieldByName('CODEMPRESA1').AsInteger;
    paramByName('CODEMPRESA2').AsInteger :=
      memTransf.fieldByName('CODEMPRESA2').AsInteger;
    prepare;
    ExecProc;
    Transaction.Commit;
    if prepared then unprepare;
   except
    on exception do
     begin
      Transaction.Rollback;
      if prepared then unprepare;
      raise;
     end;
   end;
end;

procedure TformTransf.edBarraEnter(Sender: TObject);
begin
     if Sender is TEdit then
      begin
       TEdit(Sender).Color := clInfoBK;
       TEdit(Sender).Font.Style := [fsBold];
      end;
     if Sender is TDBEdit then
      begin
       TDBEdit(Sender).Color := clInfoBK;
       TDBEdit(Sender).Font.Style := [fsBold];
      end;
     if Sender is TDBMemo then
      begin
       TDBMemo(Sender).Color := clInfoBK;
       TDBMemo(Sender).Font.Style := [fsBold];
      end;
end;

procedure TformTransf.edBarraExit(Sender: TObject);
begin
     if Sender is TEdit then
      begin
       TEdit(Sender).Color := clWindow;
       TEdit(Sender).Font.Style := [];
      end;
     if Sender is TDBEdit then
      begin
       TDBEdit(Sender).Color := clWindow;
       TDBEdit(Sender).Font.Style := [];
      end;
     if Sender is TDBMemo then
      begin
       TDBMemo(Sender).Color := clWindow;
       TDBMemo(Sender).Font.Style := [];
      end;
end;

procedure TformTransf.FormKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
var
  atag: byte;
begin
     if key = vk_escape then
         Self.ModalResult := mrCancel;

     if ActiveControl = nil then atag := 0 else
       atag := ActiveControl.Tag;

     if key = vk_Return then
      if shift = [] then Perform(wm_NextDlgCtl, 0, 0) else
       if shift = [ssShift] then Perform(wm_NextDlgCtl, 0, 0);

     if not odd(atag) then
      begin
       case key of
        vk_Down: Perform(wm_NextDlgCtl, 0, 0);
        vk_Up: Perform(wm_NextDlgCtl, 1, 0);
       end;
      end;
end;

end.
