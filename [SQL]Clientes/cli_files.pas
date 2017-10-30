unit cli_files;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  TB97Tlbr, ComCtrls, StdCtrls, TB97, TB97Tlwn, ExtCtrls, Grids,
  DBGrids, zebdbgrid, Placemnt, Menus, Db, IBQuery, IBCustomDataSet, IBStoredProc, DBCtrls, Mask,
  TB97Ctls, CurrEdit, RXDBCtrl, ToolEdit, IBDatabase, IBSQL, ImgList, ShellApi;

type
  TformCli_files = class(TForm)
    pgcDados: TPageControl;
    tabVisual: TTabSheet;
    Panel1: TPanel;
    Dock971: TDock97;
    ToolWindow971: TToolWindow97;
    Label1: TLabel;
    cmbOrdenar: TComboBox;
    Dock972: TDock97;
    Toolbar972: TToolbar97;
    btnSair: TToolbarButton97;
    formStorage: TFormStorage;
    PrinterMenu: TPopupMenu;
    qrySelecionar: TIBQuery;
    dscSelecionar: TDataSource;
    GridMenu: TPopupMenu;
    Ativarzebra1: TMenuItem;
    N1: TMenuItem;
    Cordalinha1: TMenuItem;
    Cordotexto1: TMenuItem;
    ColorDialog: TColorDialog;
    Panel3: TPanel;
    grdDados: Tzebdbgrid;
    lblWhere: TLabel;
    traSelecionar: TIBTransaction;
    ToolbarButton971: TToolbarButton97;
    ToolbarSep971: TToolbarSep97;
    sqlAdicionar: TIBSQL;
    traAdicionar: TIBTransaction;
    OpenDialog: TOpenDialog;
    ListView1: TListView;
    ImageList: TImageList;
    ComboBox1: TComboBox;
    Label2: TLabel;
    ImageListSmall: TImageList;
    Panel2: TPanel;
    Label3: TLabel;
    Label4: TLabel;
    Label5: TLabel;
    btnExcluir: TToolbarButton97;
    ToolbarSep972: TToolbarSep97;
    btnDownload: TToolbarButton97;
    ToolbarSep973: TToolbarSep97;
    traExcluir: TIBTransaction;
    sqlExcluir: TIBSQL;
    traDownload: TIBTransaction;
    sqlDownload: TIBQuery;
    SaveDialog: TSaveDialog;
    procedure FormShow(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure edtSelecionarKeyPress(Sender: TObject);
    procedure cmbOrdenarChange(Sender: TObject);
    procedure GridMenuPopup(Sender: TObject);
    procedure Ativarzebra1Click(Sender: TObject);
    procedure Cordalinha1Click(Sender: TObject);
    procedure Cordotexto1Click(Sender: TObject);
    procedure qrySelecionarAfterOpen(DataSet: TDataSet);
    procedure edtPesquisarKeyPress(Sender: TObject; var Key: Char);
    procedure FormKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure edtPesquisarEnter(Sender: TObject);
    procedure edtPesquisarExit(Sender: TObject);
    procedure FormDestroy(Sender: TObject);
    procedure DBEdit2KeyPress(Sender: TObject; var Key: Char);
    procedure DBEdit1KeyPress(Sender: TObject; var Key: Char);
    procedure DBEdit3KeyPress(Sender: TObject; var Key: Char);
    procedure DBEdit5KeyPress(Sender: TObject; var Key: Char);
    procedure DBEdit6KeyPress(Sender: TObject; var Key: Char);
    procedure grdDadosDblClick(Sender: TObject);
    procedure ToolbarButton971Click(Sender: TObject);
    procedure ComboBox1Change(Sender: TObject);
    procedure ListView1SelectItem(Sender: TObject; Item: TListItem;
      Selected: Boolean);
    procedure btnExcluirClick(Sender: TObject);
    procedure btnDownloadClick(Sender: TObject);
    procedure ListView1Click(Sender: TObject);
    procedure ToolbarButton971MouseEnter(Sender: TObject);
    procedure ToolbarButton971MouseExit(Sender: TObject);
  private
    { Private declarations }
    WhereArgDynamic: string;
  public
    { Public declarations }
    inCliente: longint;
    procedure SetWhereDynamic(st, stmsg: string);
  end;

var
  formCli_files: TformCli_files;

implementation

uses data_principal, produtos, itindividuo;

type
  TCampoStr = string[30];
  TCampoDes = record
     rotulo, fisico: TCampoStr;
     iTab: byte;
  end;

const

{######################################################################
 #                                                                    #
 #   O CODIGO ABAIXO � O �NICO QUE PRECISA SER MODIFICADO!!!          #
 #                                                                    #
 #   Lembre-se, por�m, do seguinte CHECKLIST:                         #
 #   1 - Modificar os par�metros abaixo conforme a tabela usada       #
 #   2 - ...                                                          #
 #                                                                    #
 ######################################################################}

  { tabelas usadas }
  tblCount  = 1;
  ixTabelas : array[1..tblCount] of TCampoStr =
     ( 'CLI_FILES' );

  { entrada no registro do Windows }
  NomeCurto = 'cli_files';

  { rotulos e nomes fisicos dos campos }
  ixMaximo  = 6;
  ixCampos  : array[1..ixMaximo] of TCampoDes =
     ( (rotulo: 'C�digo'          ; fisico: 'CODIGO'   ; iTab: 1),
       (rotulo: 'Nome do arquivo' ; fisico: 'NOME'     ; iTab: 1),
       (rotulo: 'Tamanho'         ; fisico: 'TAMANHO'  ; iTab: 1),
       (rotulo: '�ltima data'     ; fisico: 'DATA'     ; iTab: 1),
       (rotulo: 'Caminho origem'  ; fisico: 'ORIGINAL' ; iTab: 1),
       (rotulo: 'Usu�rio'         ; fisico: 'USUARIO'  ; iTab: 1) );

  { express�o adicional do where - n�o pode ser mudada em run-time }
  { para acrescentar par�mentos em run-time use SetWhereDynamic!   }
  WhereArgStatic = '';

  { indexes iniciais padrao para os combos }                                    
  ixDefSel = 1;
  ixDefOrd = 1;

{######################################################################
 #                                                                    #
 #                 FINAL DO C�DIGO CUSTOMIZ�VEL                       #
 #                                                                    #
 ######################################################################}

  { uso interno das rotinas }
  tmpSQLSel : string = '';
  tmpSQLOrd : string = '';

{$R *.DFM}

function FldQName(i: byte): string;
begin
  result := ixTabelas[ixCampos[i].iTab] + '.' + ixCampos[i].fisico;
end;

procedure TformCli_files.SetWhereDynamic(st, stmsg: string);
begin
  WhereArgDynamic := st;
  with lblWhere do
   begin
    Visible := (stmsg > '');
    if Visible then Caption := ' ' + stmsg;
   end;
end;

procedure TformCli_files.FormShow(Sender: TObject);
var
  i: byte;
begin
     { carrego os combos com as op��es }
     cmbOrdenar.Clear;
     for i := 1 to ixMaximo do
       cmbOrdenar.Items.Add(ixCampos[i].rotulo);
     cmbOrdenar.ItemIndex := pred(ixDefOrd);

     { desativo a grid }
     grdDados.Visible := False;

     { for�o atualiza��o }
     edtSelecionarKeyPress(Sender);
     Screen.Cursor := crDefault;
end;

procedure TformCli_files.FormCreate(Sender: TObject);
begin

     { defino a atualiza��o das informa��es }
     with formStorage do
      begin
       IniSection := NomeCurto;
       Active := True;
      end;

     { inicializo a express�o din�mica do WHERE }
     WhereArgDynamic := '';

end;

procedure TformCli_files.edtSelecionarKeyPress(Sender: TObject);
var
  i, sel: byte;
  StrSQL: string;
begin

       Screen.Cursor := crHourGlass;
       with qrySelecionar do
        begin

         { cl�usula SELECT }
         StrSQL := 'SELECT ';
         for i := 1 to ixMaximo do
          begin
           StrSQL := StrSQL + ixCampos[i].fisico;
           if i < ixMaximo then StrSQL := StrSQL + ', '
             else StrSQL := StrSQL + ' ';
          end;

         { cl�usula FROM }
         StrSQL := StrSQL + 'FROM ';
         for i := 1 to tblCount do
          begin
           StrSQL := StrSQL + ixTabelas[i];
           if i < tblCount then StrSQL := StrSQL + ', '
             else StrSQL := StrSQL + ' ';
          end;

         { cl�usula WHERE }
         StrSQL := StrSQL + ' WHERE ';

         { argumento especial do WHERE }
         if WhereArgStatic > '' then
           StrSQL := StrSQL + ' (' + WhereArgStatic + ')';
         if WhereArgDynamic > '' then
          begin
           if WhereArgStatic > '' then
             StrSQL := StrSQL + ' AND ';
           StrSQL := StrSQL + '(' + WhereArgDynamic + ')';
          end;

         { salvo antes do ORDER BY }
         tmpSQLSel := StrSQL;

         { cl�usula ORDER BY }
         tmpSQLOrd := ' ORDER BY ' +
            ixCampos[succ(cmbOrdenar.ItemIndex)].fisico;

         SQL.Clear;
         SQL.Add(tmpSQLSel + tmpSQLOrd);
         open;

         if not IsEmpty then
          begin
           cmbOrdenar.Enabled := True;
           grdDados.Visible := True;
           cmbOrdenarChange(Sender);
          end { else btnAdicionar.Enabled := True; }
        end;

       Screen.Cursor := crDefault;
end;

procedure TformCli_files.cmbOrdenarChange(Sender: TObject);
begin
     tmpSQLOrd := ' ORDER BY ' +
       ixCampos[succ(cmbOrdenar.ItemIndex)].fisico;
     with qrySelecionar do
      begin
       SQL.Clear;
       SQL.Add(tmpSQLSel + tmpSQLOrd);
       open;
       if not IsEmpty then
        begin
         grdDados.Visible := True;
        end;
      end;
end;

procedure TformCli_files.GridMenuPopup(Sender: TObject);
begin
     AtivarZebra1.Checked := grdDados.Zebra;
end;

procedure TformCli_files.Ativarzebra1Click(Sender: TObject);
begin
     grdDados.Zebra := not grdDados.Zebra;
end;

procedure TformCli_files.Cordalinha1Click(Sender: TObject);
begin
     with ColorDialog do
      begin
       Color := grdDados.ZebraColor;
       if Execute then
        grdDados.ZebraColor := Color;
      end;
end;

procedure TformCli_files.Cordotexto1Click(Sender: TObject);
begin
     with ColorDialog do
      begin
       Color := grdDados.ZebraFontColor;
       if Execute then
        grdDados.ZebraFontColor := Color;
      end;
end;

procedure TformCli_files.qrySelecionarAfterOpen(DataSet: TDataSet);
var
  i: byte;
  ListItem: TListItem;
  NewColumn: TListColumn;
  tamanho: string;
begin
     { preencho os nomes reais dos campos }
     qrySelecionar.tag := 0;
     for i := 1 to ixMaximo do
      qrySelecionar.fieldByName(ixCampos[i].fisico).DisplayLabel :=
        ixCampos[i].rotulo;

     { preenco o ListView }
     qrySelecionar.disableControls;
     with ListView1 do
      begin
       Items.Clear;
       while not qrySelecionar.eof do
        begin
         { calculo a representa��o do tamanho }
         tamanho := dmoPrincipal.SizeToStr(qrySelecionar.fieldByName('TAMANHO').AsInteger);

         { adiciono o arquivo }
         ListItem := Items.Add;
         Listitem.Caption := Trim(qrySelecionar.fieldByName('NOME').AsString) +
            ' - ' + tamanho;
         ListItem.ImageIndex := 0;
         ListItem.Data := TObject(qrySelecionar.fieldByName('CODIGO').AsInteger);
         qrySelecionar.next;
        end;
       if ComboBox1.Items.Count = 0 then
        begin
         NewColumn := Columns.Add;
         NewColumn.Caption := 'Nome do arquivo';
         ComboBox1.Items.AddObject('�cones grandes',  TObject(vsIcon));
         ComboBox1.Items.AddObject('Lista',           TObject(vsList));
         ComboBox1.Items.AddObject('Grade',           TObject(vsReport));
         ComboBox1.Items.AddObject('�cones pequenos', TObject(vsSmallIcon));
         ComboBox1.ItemIndex := 0;
        end;
      end;
     qrySelecionar.enableControls;
     Label3.Caption := '';
     Label4.Caption := '';
     Label5.Caption := '';
end;

procedure TformCli_files.edtPesquisarKeyPress(Sender: TObject;
  var Key: Char);
begin
     if (cmbOrdenar.ItemIndex = 1) and (not (Key in ['0'..'9', #8])) then
       Key := chr(0);
end;

procedure TformCli_files.FormKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
var
  atag: byte;
begin
     if key = vk_escape then
         Self.ModalResult := mrCancel;

     if key = vk_delete then
         btnExcluirClick(Sender);         

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

procedure TformCli_files.edtPesquisarEnter(Sender: TObject);
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

procedure TformCli_files.edtPesquisarExit(Sender: TObject);
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

procedure TformCli_files.FormDestroy(Sender: TObject);
begin
     if qrySelecionar.Active then qrySelecionar.Close;
end;




procedure TformCli_files.DBEdit2KeyPress(Sender: TObject; var Key: Char);
begin
        dmoPrincipal.PointToComma(Key);

end;

procedure TformCli_files.DBEdit1KeyPress(Sender: TObject; var Key: Char);
begin
        dmoPrincipal.PointToComma(Key);

end;

procedure TformCli_files.DBEdit3KeyPress(Sender: TObject; var Key: Char);
begin
        dmoPrincipal.PointToComma(Key);

end;

procedure TformCli_files.DBEdit5KeyPress(Sender: TObject; var Key: Char);
begin
        dmoPrincipal.PointToComma(Key);

end;

procedure TformCli_files.DBEdit6KeyPress(Sender: TObject; var Key: Char);
begin
        dmoPrincipal.PointToComma(Key);

end;

procedure TformCli_files.grdDadosDblClick(Sender: TObject);
var
  scap: string;
begin
  scap := Caption;
  if Pos('->', scap) > 0 then
   begin
    scap := copy(scap, Pos('->', scap) + 2, length(scap) - Pos('->', scap) - 1);
    if Pos('->', scap) > 0 then
      ModalResult := mrOk;
   end;
end;

procedure TformCli_files.ToolbarButton971Click(Sender: TObject);
var
  arquivo: TMemoryStream;
  tamanho_kb: longint;
begin
   with sqlAdicionar do
    begin

     { qual o arquivo? }
     if not opendialog.execute then exit;

     Screen.Cursor := crHourGlass;

     { pego o tamanho do arquivo }
     tamanho_kb := dmoPrincipal.GetFileSize(opendialog.filename).QuadPart;

     { carrego arquivo no Stream }
     arquivo := TMemoryStream.Create;
     try
       arquivo.LoadFromFile(opendialog.filename);
     except
       on exception do
        begin
         ShowMessage('Erro ao abrir o arquivo!');
         arquivo.Free;
         Screen.Cursor := crDefault;
         exit;
        end;
     end;

     { inicio a transa��o }
     if not Transaction.InTransaction then
       Transaction.StartTransaction;

     { carrego os par�metros }
     with Params do
      begin
       byName('CODIGO').AsInteger     := dmoPrincipal.LerSequencia(ixTabelas[1]);
       byName('CODCLIENTE').AsInteger := inCliente;
       byName('NOME').AsString        := ExtractFileName(opendialog.filename);
       byName('ORIGINAL').AsString    := opendialog.filename;
       byName('DATA').AsDateTime      := dmoPrincipal.GetServerTime;
       byName('USUARIO').AsString     := dmoPrincipal.GetLogUser;
       byName('TAMANHO').AsInteger    := tamanho_kb;
       { carrego o arquivo }
       ByName('CONTEUDO').LoadFromStream(arquivo);
      end;

     { preparo e executo }
     prepare;
     execQuery;

     { termino a transa��o }
     Transaction.Commit;

     { me livro do Stream }
     arquivo.Free;

    end;

   with qrySelecionar do
    begin
     if active then close;
     open;
    end;

   Screen.Cursor := crDefault;

end;

procedure TformCli_files.ComboBox1Change(Sender: TObject);
begin
  with ComboBox1 do
    ListView1.ViewStyle := TViewStyle(Items.Objects[ItemIndex]);
end;

procedure TformCli_files.ListView1SelectItem(Sender: TObject;
  Item: TListItem; Selected: Boolean);
begin

  btnDownload.Enabled := Selected;
  btnExcluir.Enabled  := Selected;

  if selected then
   begin
    qrySelecionar.Locate('CODIGO', Integer(Item.Data), []);

    { informa��es do arquivo selecionado }
    with qrySelecionar do
     begin
      Label3.Caption := ' Arquivo: ' + Trim(fieldByName('NOME').AsString) + ' - ' +
        dmoPrincipal.SizeToStr(fieldByName('TAMANHO').AsInteger);
      Label4.Caption := ' Upload:  ' + Trim(fieldByName('USUARIO').AsString) + ' - ' +
        FormatDateTime('dd/mm/yyyy hh:nn am/pm', fieldByName('DATA').AsDateTime);
      Label5.Caption := ' Or�gem: ' +
        Trim(fieldByName('ORIGINAL').AsString);
      Label5.Hint := Label5.Caption;
     end;
   end else
   begin
     Label3.Caption := '';
     Label4.Caption := '';
     Label5.Caption := '';
   end;

end;

procedure TformCli_files.btnExcluirClick(Sender: TObject);
begin
  if ListView1.Selected = nil then exit;

  if Application.MessageBox(PChar(
       'Voc� solicitou que o seguinte arquivo seja exclu�do: ' + #13#10#13#10 +
       Trim(qrySelecionar.fieldByName('NOME').AsString) + #13#10#13#10 +
       'Tem certeza que deseja excluir esse arquivo?'),
       'Excluir arquivo',
       mb_YesNo + mb_IconQuestion + mb_DefButton2) = IDYES then
   begin

     with sqlExcluir do
      begin

       if not Transaction.InTransaction then
         Transaction.StartTransaction;

       try
         params.ByName('CODIGO').AsInteger :=
           qrySelecionar.fieldByName('CODIGO').AsInteger;
         prepare;
         execQuery;
         Transaction.Commit;
       except
         on exception do
          begin
           Transaction.Rollback;
           raise;
          end;
       end;

      end;

     with qrySelecionar do
      begin
       if active then close;
       open;
      end;

   end;
end;

procedure TformCli_files.btnDownloadClick(Sender: TObject);
begin
  if ListView1.Selected = nil then exit;

  with sqlDownload do
   try

    if active then close;
    paramByName('CODIGO').AsInteger :=
      qrySelecionar.fieldByName('CODIGO').AsInteger;
    prepare;
    open;

    savedialog.initialdir := ExtractFilePath(fieldByName('ORIGINAL').AsString);
    savedialog.filename   := Trim(fieldByName('ORIGINAL').AsString);

    if savedialog.execute then
     begin
      Screen.Cursor := crHourGlass;
      (fieldByName('CONTEUDO') as TBlobField).SaveToFile(savedialog.filename);
      Screen.Cursor := crDefault;
     end;

    close;

   except
    on exception do
     begin
      Screen.Cursor := crDefault;
      close;
      if Transaction.InTransaction then
        Transaction.Rollback;
      raise;
     end;
   end;

   with qrySelecionar do
    begin
     if active then close;
     open;
    end;

end;

procedure TformCli_files.ListView1Click(Sender: TObject);
var
  caminho: string;
begin

  if ListView1.Selected = nil then exit;

  if Application.MessageBox(PChar(
       'Voc� deseja abrir/executar o arquivo ' +
       Trim(qrySelecionar.fieldByName('NOME').AsString) + '?'),
       'Abrir/executar arquivo',
       mb_YesNo + mb_IconQuestion + mb_DefButton2) = IDYES then

    with sqlDownload do
     try

      if active then close;
      paramByName('CODIGO').AsInteger :=
        qrySelecionar.fieldByName('CODIGO').AsInteger;
      prepare;
      open;

      { gero caminho completo para o diret�rio tempor�rio }
      caminho := dmoPrincipal.GetTempDir;
      if caminho[length(caminho)] <> '\' then
        caminho := caminho + '\';
      caminho := caminho + Trim(fieldByName('NOME').AsString);

      { salvo o arquivo }
      (fieldByName('CONTEUDO') as TBlobField).SaveToFile(caminho);

      { abro/executo o arquivo }
      ShellExecute(
        Self.Handle,
        PChar('Open'),
        PChar(ExtractFileName(caminho)),
        nil,
        PChar(ExtractFileDir(caminho)),
        SW_SHOWNORMAL
      );

      close;

     except
      on exception do
       begin
        close;
        if Transaction.InTransaction then
          Transaction.Rollback;
        raise;
       end;
     end;

    with qrySelecionar do
     begin
      if active then close;
      open;
     end;
end;

procedure TformCli_files.ToolbarButton971MouseEnter(Sender: TObject);
begin
   if Sender is TToolbarButton97 then
     (Sender as TToolbarButton97).Font.Style := [fsBold, fsUnderline];
end;

procedure TformCli_files.ToolbarButton971MouseExit(Sender: TObject);
begin
   if Sender is TToolbarButton97 then
     (Sender as TToolbarButton97).Font.Style := [];
end;

end.
