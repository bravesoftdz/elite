�
 TFORMVENDEDORES 0p]  TPF0TformVendedoresformVendedoresLeft� Top6Width�Height�BorderIconsbiSystemMenu
biMaximize CaptionPessoalColor	clBtnFaceFont.CharsetANSI_CHARSET
Font.ColorclWindowTextFont.Height�	Font.NameArial
Font.Style 
KeyPreview	OldCreateOrder	OnCloseQueryFormCloseQueryOnCreate
FormCreate	OnDestroyFormDestroy	OnKeyDownFormKeyDownOnShowFormShowPixelsPerInch`
TextHeight TPageControlpgcDadosLeft Top Width�Heightu
ActivePage
tabDetalheAlignalClientHotTrack	TabOrder  	TTabSheet	tabVisualCaption&Pesquisa e Sele��o TPanelPanel1Left Top Width�HeightXAlignalClient
BevelOuter	bvLoweredTabOrder  TDock97Dock971LeftTopWidth�Height.
BoundLinesblTopblLeftblRight  TToolWindow97ToolWindow971Left Top CaptionToolWindow971ClientAreaHeight)ClientAreaWidth�DockPos TabOrder  TLabelLabel1LeftTopWidth!HeightCaption&CampoTransparent	  TLabelLabel2Left� TopWidthCHeightCaption&Pesquisar porTransparent	  	TComboBox
cmbOrdenarTagLeftTopWidthvHeightStylecsDropDownList
ItemHeightTabOrder OnChangecmbOrdenarChange  TEditedtPesquisarLeft� TopWidthHeightCharCaseecUpperCaseTabOrderOnChangeedtPesquisarChangeOnEnteredtPesquisarEnterOnExitedtPesquisarExit
OnKeyPressedtPesquisarKeyPress    TDock97Dock972LeftrTop/WidthVHeight(
BoundLinesblTopblBottomblLeftblRight PositiondpRight 
TToolbar97
Toolbar972Left Top Caption
Toolbar972ColorclBtnHighlightDockPos FullSize	TabOrder  TToolbarButton97btnSairLeft Top� WidthPHeight<CursorcrHandPointHintSair desta janelaCaption&Sa�daFont.CharsetANSI_CHARSET
Font.ColorclWindowTextFont.Height�	Font.NameArial
Font.Style 
ImageIndexImagesdmoPrincipal.imgBotoesLayout
blGlyphTopModalResultOpaque
ParentFontParentShowHintShowHint	  TToolbarSep97ToolbarSep971Left Top�   TToolbarButton97btnAdicionarLeft Top WidthPHeight<CursorcrHandPointHintAdiciona um novo registroCaption
&AdicionarFont.CharsetANSI_CHARSET
Font.ColorclWindowTextFont.Height�	Font.NameArial
Font.Style 
ImageIndex ImagesdmoPrincipal.imgBotoesLayout
blGlyphTopOpaque
ParentFontParentShowHintShowHint	OnClickbtnAdicionarClick  TToolbarButton97btnImprimirLeft TopxWidthPHeight<CursorcrHandPointHintOp��es de Impress�oCaption
&Impress�oFont.CharsetANSI_CHARSET
Font.ColorclWindowTextFont.Height�	Font.NameArial
Font.Style 
ImageIndexImagesdmoPrincipal.imgBotoesLayout
blGlyphTopOpaque
ParentFontParentShowHintShowHint	OnClickbtnImprimirClickOnMouseEnterbtnImprimirMouseEnter  TToolbarButton97btnModificarLeft Top<WidthPHeight<CursorcrHandPointHint)Modifica os dados do registro selecionadoCaption	&DetalhesFont.CharsetANSI_CHARSET
Font.ColorclWindowTextFont.Height�	Font.NameArial
Font.Style 
ImageIndexImagesdmoPrincipal.imgBotoesLayout
blGlyphTopOpaque
ParentFontParentShowHintShowHint	OnClickbtnModificarClick    TPanelPanel3LeftTop/WidthqHeight(AlignalClient
BevelOuterbvNoneTabOrder TLabellblWhereLeft Top WidthqHeightAlignalTopCaptionlblWhereColorclInfoBkFont.CharsetANSI_CHARSET
Font.ColorclWindowTextFont.Height�	Font.NameArial
Font.StylefsBold ParentColor
ParentFontVisible  
TzebdbgridgrdDadosTagLeft TopWidthqHeightAlignalClient
DataSourcedscSelecionar	PopupMenuGridMenuTabOrder TitleFont.CharsetANSI_CHARSETTitleFont.ColorclWindowTextTitleFont.Height�TitleFont.NameArialTitleFont.Style Zebra	
ZebraColorclAquaZebraFontColorclWindowText
OnDblClickgrdDadosDblClick     	TTabSheet
tabDetalheTagCaption	&Detalhes TDock97Dock975LeftsTop WidthVHeightX
BoundLinesblTopblBottomblLeftblRight PositiondpRight 
TToolbar97
Toolbar971Left Top Caption
Toolbar972ColorclBtnHighlightDockPos FullSize	TabOrder  TToolbarSep97ToolbarSep972Left Topx  TToolbarButton97	btnSalvarLeft Top WidthPHeight<CursorcrHandPointCaptionSal&var
ImageIndexImagesdmoPrincipal.imgBotoesLayout
blGlyphTopOpaqueOnClickbtnSalvarClick  TToolbarButton97
btnExcluirLeft Top~WidthPHeight<CursorcrHandPointCaption&Excluir
ImageIndexImagesdmoPrincipal.imgBotoesLayout
blGlyphTopOpaqueOnClickbtnExcluirClick  TToolbarButton97btnCancelarLeft Top<WidthPHeight<CursorcrHandPointCaption	&Cancelar
ImageIndexImagesdmoPrincipal.imgBotoesLayout
blGlyphTopOpaqueOnClickbtnCancelarClick    TPanelpanDadosLeft Top WidthsHeightXAlignalClient
BevelOuter	bvLoweredTabOrder TLabelLabel24LeftTopPWidth%HeightCaptionN�meroFocusControlDBEdit19  TLabelLabel25Left^TopPWidth@HeightCaptionComplementoFocusControlDBEdit20  TDBNavigatordbnDetalhesLeftTop@Width� Height
DataSourcedsrDetalhesTabOrder Visible  TPanelPanel2LeftTopWidthqHeightPAlignalTop
BevelOuterbvNoneTabOrder TLabelLabel5LeftTopWidth!HeightCaptionC�digoFocusControlDBEdit1  TLabelLabel6LeftPTopWidthHeightCaptionNomeFocusControldedNOME  TDBEditDBEdit1LeftTopWidth@HeightTabStopColor	clBtnFace	DataFieldCODIGO
DataSourcedsrDetalhesFont.CharsetANSI_CHARSET
Font.ColorclWindowTextFont.Height�	Font.NameArial
Font.StylefsBold 
ParentFontReadOnly	TabOrder   TDBEditdedNOMELeftPTopWidth	HeightCharCaseecUpperCase	DataFieldNOME
DataSourcedsrDetalhesTabOrderOnEnteredtPesquisarEnterOnExitedtPesquisarExit  TDBRadioGroup	dbrPessoaLeftTop*WidthQHeight!Caption Tipo do cadastro Columns	DataFieldPESSOAFISICA
DataSourcedsrDetalhesItems.StringsPessoa f�sicaPessoa jur�dica TabOrderValues.StringsFJ OnChangedbrPessoaChange   TPageControlpgcDetalhesLeftTopQWidthqHeight
ActivePagetbSegurancaAlignalClientTabOrder 	TTabSheettabPessoaFisicaCaptionPessoa &f�sica TLabelLabel7LeftTop Width8HeightCaption
NascimentoFocusControlDBEdit3  TLabelLabel8LefthTop Width<HeightCaptionNaturalidadeFocusControlDBEdit4  TLabelLabel9LeftTop(WidthHeightCaptionSexo  TLabelLabel10Left� Top(Width6HeightCaptionEstado civil  TLabelLabel11LeftTopPWidthHeightCaptionRGFocusControlDBEdit5  TLabelLabel12Left� TopPWidthHeightCaptionCPFFocusControlDBEdit6  TLabelLabel13LeftTopxWidth;HeightCaptionNome do PaiFocusControlDBEdit7  TLabelLabel14LeftTop� WidthAHeightCaptionNome da M�eFocusControlDBEdit8  TLabelLabel31LeftTop� WidthHeightCaptionRendaFocusControlDBEdit26  TLabelLabel19LeftpTop� Width.HeightCaption	Profiss�oFocusControlDBEdit2  TLabelLabel21LeftxTopPWidth*HeightCaptionOrg.Exp.FocusControlDBEdit30  TDBEditDBEdit3LeftTopWidthYHeight	DataFieldDATANASC
DataSourcedsrDetalhesTabOrder OnEnteredtPesquisarEnterOnExitedtPesquisarExit  TDBEditDBEdit4LefthTopWidth� HeightCharCaseecUpperCase	DataFieldNATURALIDADE
DataSourcedsrDetalhesTabOrderOnEnteredtPesquisarEnterOnExitedtPesquisarExit  TDBComboBoxDBComboBox1TagLeftTop8Width� HeightStylecsDropDownList	DataFieldSEXO
DataSourcedsrDetalhes
ItemHeightItems.StringsFEMININO	MASCULINO TabOrder  TDBComboBoxDBComboBox2TagLeft� Top8Width� HeightStylecsDropDownList	DataFieldESTADOCIVIL
DataSourcedsrDetalhes
ItemHeightItems.StringsAMAZEADOCASADO
DESQUITADO
DIVORCIADOSOLTEIROVIUVO TabOrder  TDBEditDBEdit5LeftTop`WidthiHeight	DataFieldRG
DataSourcedsrDetalhesTabOrderOnEnteredtPesquisarEnterOnExitedtPesquisarExit  TDBEditDBEdit6Left� Top`Width� Height	DataFieldCPF
DataSourcedsrDetalhesTabOrderOnEnteredtPesquisarEnterOnExitDBEdit6Exit  TDBEditDBEdit7LeftTop� WidthQHeightCharCaseecUpperCase	DataFieldPAI
DataSourcedsrDetalhesTabOrderOnEnteredtPesquisarEnterOnExitedtPesquisarExit  TDBEditDBEdit8LeftTop� WidthQHeightCharCaseecUpperCase	DataFieldMAE
DataSourcedsrDetalhesTabOrderOnEnteredtPesquisarEnterOnExitedtPesquisarExit  TDBEditDBEdit26LeftTop� WidthYHeight	DataFieldSALARIO
DataSourcedsrDetalhesTabOrder	OnEnteredtPesquisarEnterOnExitedtPesquisarExit  TDBEditDBEdit2TagLeftpTop� Width� HeightCharCaseecUpperCase	DataField	PROFISSAO
DataSourcedsrDetalhesTabOrder
OnEnteredtPesquisarEnterOnExitedtPesquisarExit  TDBEditDBEdit30LeftxTop`Width1HeightCharCaseecUpperCase	DataFieldORGAOEXP
DataSourcedsrDetalhesTabOrderOnEnteredtPesquisarEnterOnExitedtPesquisarExit   	TTabSheettabPessoaJuridicaCaptionPessoa j&ur�dica
TabVisible TLabelLabel15LeftTop(WidthHeightCaptionCNPJFocusControlDBEdit9  TLabelLabel16Left� Top(WidthXHeightCaptionInscri��o EstadualFocusControlDBEdit10  TLabelLabel17LeftTopPWidth%HeightCaptionContatoFocusControlDBEdit11  TLabelLabel18LeftTopxWidthGHeightCaptionData funda��oFocusControlDBEdit12  TLabelLabel36LeftTop Width?HeightCaptionRaz�o SocialFocusControlDBEdit29  TLabelLabel20LeftTop� Width=HeightCaptionEquipamento  TDBEditDBEdit9LeftTop8Width� Height	DataFieldCGC
DataSourcedsrDetalhesTabOrderOnEnteredtPesquisarEnterOnExitedtPesquisarExit  TDBEditDBEdit10Left� Top8Width� HeightCharCaseecUpperCase	DataFieldIE
DataSourcedsrDetalhesTabOrderOnEnteredtPesquisarEnterOnExitedtPesquisarExit  TDBEditDBEdit11LeftTop`WidthIHeightCharCaseecUpperCase	DataFieldCONTATO
DataSourcedsrDetalhesTabOrderOnEnteredtPesquisarEnterOnExitedtPesquisarExit  TDBEditDBEdit12LeftTop� WidthaHeight	DataFieldDATAFUND
DataSourcedsrDetalhesTabOrderOnEnteredtPesquisarEnterOnExitedtPesquisarExit  TDBEditDBEdit29LeftTopWidthIHeightCharCaseecUpperCase	DataFieldRAZAOSOCIAL
DataSourcedsrDetalhesTabOrder OnEnteredtPesquisarEnterOnExitedtPesquisarExit  TDBMemoDBMemo2TagLeftTop� WidthIHeight<	DataFieldEQUIPAMENTO
DataSourcedsrDetalhesTabOrderOnEnteredtPesquisarEnterOnExitedtPesquisarExit   	TTabSheettabEnderecoCaption	&Endere�o TLabel	lblCIDADELeft� Top Width&HeightCursorcrHandPointCaption&CidadeFocusControlDBEdit13Font.CharsetANSI_CHARSET
Font.ColorclMaroonFont.Height�	Font.NameArial
Font.StylefsBoldfsUnderline 
ParentFontOnClicklblCIDADEClick  TLabel	lblESTADOLeftTop Width%HeightCursorcrHandPointCaption&EstadoFocusControlDBEdit14Font.CharsetANSI_CHARSET
Font.ColorclMaroonFont.Height�	Font.NameArial
Font.StylefsBoldfsUnderline 
ParentFontOnClicklblESTADOClick  TLabellblLOCALIZACAOLeftTop(Width;HeightCursorcrHandPointCaption&LocalidadeFocusControlDBEdit17Font.CharsetANSI_CHARSET
Font.ColorclMaroonFont.Height�	Font.NameArial
Font.StylefsBoldfsUnderline 
ParentFontOnClicklblLOCALIZACAOClick  TLabelLabel22LeftTopPWidth%HeightCaptionN�meroFocusControlDBEdit19  TLabelLabel23Left^TopPWidth@HeightCaptionComplementoFocusControlDBEdit20  TLabelLabel26Left`TopxWidthHeightCaptionBairroFocusControlDBEdit20  TLabelLabel27LeftTopxWidthHeightCaptionCEPFocusControlDBEdit19  TLabelLabel28LeftTop� Width*HeightCaptionTelefoneFocusControlDBEdit23  TLabelLabel29LeftxTop� WidthHeightCaptionFAXFocusControlDBEdit24  TLabelLabel30Left� Top� Width!HeightCaptionCelularFocusControlDBEdit25  TLabelLabel32LeftTop� Width� HeightCaption"Internet mail (correio eletr�nico)FocusControlDBEdit27  TDBEditDBEdit13Left� TopWidth)Height	DataFieldCIDADE
DataSourcedsrDetalhesTabOrderOnEnteredtPesquisarEnterOnExitedtPesquisarExit  TDBEditDBEdit14LeftTopWidthHeightCharCaseecUpperCase	DataFieldESTADO
DataSourcedsrDetalhesTabOrder OnEnteredtPesquisarEnterOnExitedtPesquisarExit  TDBEditDBEdit15Left(TopWidthiHeightTabStopColor	clBtnFace	DataFieldESTADO
DataSourcedmoRelacClientes.dsrEstadoFont.CharsetANSI_CHARSET
Font.ColorclWindowTextFont.Height�	Font.NameArial
Font.StylefsBold 
ParentFontReadOnly	TabOrder	  TDBEditDBEdit16Left� TopWidth� HeightTabStopColor	clBtnFace	DataFieldCIDADE
DataSourcedmoRelacClientes.dsrCidadesFont.CharsetANSI_CHARSET
Font.ColorclWindowTextFont.Height�	Font.NameArial
Font.StylefsBold 
ParentFontReadOnly	TabOrder
  TDBEditDBEdit17LeftTop8Width)Height	DataFieldLOCALIZACAO
DataSourcedsrDetalhesTabOrderOnEnterDBEdit17EnterOnExitedtPesquisarExit  TDBEditDBEdit18Left8Top8Width!HeightTabStopColor	clBtnFace	DataField
LOGRADOURO
DataSourcedmoRelacClientes.dsrLocalidadesFont.CharsetANSI_CHARSET
Font.ColorclWindowTextFont.Height�	Font.NameArial
Font.StylefsBold 
ParentFontReadOnly	TabOrder  TDBEditDBEdit19LeftTop`WidthOHeight	DataFieldNUMERO
DataSourcedsrDetalhesTabOrderOnEnteredtPesquisarEnterOnExitedtPesquisarExit  TDBEditDBEdit20Left^Top`Width� HeightCharCaseecUpperCase	DataFieldCOMPLEMENTO
DataSourcedsrDetalhesTabOrderOnEnteredtPesquisarEnterOnExitedtPesquisarExit  TDBEditDBEdit21LeftTop� WidthQHeightTabStopColor	clBtnFace	DataFieldCEP
DataSourcedmoRelacClientes.dsrLocalidadesFont.CharsetANSI_CHARSET
Font.ColorclWindowTextFont.Height�	Font.NameArial
Font.StylefsBold 
ParentFontReadOnly	TabOrder  TDBEditDBEdit22Left`Top� Width� HeightTabStopColor	clBtnFace	DataFieldBAIRRO
DataSourcedmoRelacClientes.dsrBairrosFont.CharsetANSI_CHARSET
Font.ColorclWindowTextFont.Height�	Font.NameArial
Font.StylefsBold 
ParentFontReadOnly	TabOrder  TDBEditDBEdit23LeftTop� WidthiHeight	DataFieldFONE
DataSourcedsrDetalhesTabOrderOnEnteredtPesquisarEnterOnExitedtPesquisarExit  TDBEditDBEdit24LeftxTop� WidthiHeight	DataFieldFAX
DataSourcedsrDetalhesTabOrderOnEnteredtPesquisarEnterOnExitedtPesquisarExit  TDBEditDBEdit25Left� Top� WidthqHeight	DataFieldCELULAR
DataSourcedsrDetalhesTabOrderOnEnteredtPesquisarEnterOnExitedtPesquisarExit  TDBEditDBEdit27TagLeftTop� WidthQHeight	DataFieldEMAIL
DataSourcedsrDetalhesTabOrderOnEnteredtPesquisarEnterOnExitedtPesquisarExit   	TTabSheet	tabOutrosCaption&Outras informa��es TLabelLabel33LeftTop WidthDHeightCaptionData cadastroFocusControlDBEdit28  TLabelLabel34Left� Top WidthBHeightCaptionObserva��esFocusControlDBMemo1  TLabelLabel35LeftTop(WidthHeightCaptionFotoFocusControlDBImage1  TLabelLabel37LeftTop� WidthQHeightCaptionNome de usu�rioFocusControlDBEdit31  TLabelLabel38Left� Top� WidthUHeightCaptionDesconto m�ximoFocusControlDBEdit32  TDBEditDBEdit28LeftTopWidthqHeight	DataField
DATACADAST
DataSourcedsrDetalhesEnabledTabOrder OnEnteredtPesquisarEnterOnExitedtPesquisarExit  TDBMemoDBMemo1TagLeft� TopWidth� Height� 	DataFieldOBSERVACOES
DataSourcedsrDetalhesTabOrderOnEnteredtPesquisarEnterOnExitedtPesquisarExit  TDBImageDBImage1LeftTop8WidthqHeightq	DataFieldFOTO
DataSourcedsrDetalhes	PopupMenuFotoMenuStretch	TabOrder  TDBEditDBEdit31LeftTop� WidthqHeight	DataFieldNOMEUSER
DataSourcedsrDetalhesEnabledTabOrderOnEnteredtPesquisarEnterOnExitedtPesquisarExit  TDBEditDBEdit32Left� Top� WidthiHeight	DataFieldDESCONTO
DataSourcedsrDetalhesEnabledTabOrderOnEnteredtPesquisarEnterOnExitedtPesquisarExit   	TTabSheettbSegurancaCaption
&Seguran�a
ImageIndex TLabelLabel39LeftTop WidthQHeightCaptionNome de usu�rioFocusControlDBEdit33  TLabelLabel40LeftTop(WidthUHeightCaptionDesconto m�ximoFocusControlDBEdit34  TLabelLabel3LeftTop� Width� HeightCursorcrHandPointCaption&Empresa em que trabalhaFocusControlDBEdit35Font.CharsetANSI_CHARSET
Font.ColorclMaroonFont.Height�	Font.NameArial
Font.StylefsBoldfsUnderline 
ParentFontOnClickLabel3Click  TLabelLabel4LefthTop(Width/HeightCaptionComiss�oFocusControlDBEdit37  TBevelBevel1Left Top� WidthiHeight	Shape	bsTopLine  TDBEditDBEdit33LeftTopWidthYHeight	DataFieldNOMEUSER
DataSourcedsrDetalhesTabOrder OnEnteredtPesquisarEnterOnExitedtPesquisarExit  TDBEditDBEdit34LeftTop8WidthYHeight	DataFieldDESCONTO
DataSourcedsrDetalhesTabOrderOnEnteredtPesquisarEnterOnExitedtPesquisarExit  TDBCheckBoxDBCheckBox1LeftTopXWidthaHeightCaption
Financeiro	DataField
FINANCEIRO
DataSourcedsrDetalhesTabOrderValueCheckedSValueUncheckedN  TDBCheckBoxDBCheckBox2LeftTophWidthaHeightCaptionEstorno	DataFieldESTORNO
DataSourcedsrDetalhesTabOrderValueCheckedSValueUncheckedN  TDBEditDBEdit35LeftTop� Width)Height	DataField
CODEMPRESA
DataSourcedsrDetalhesTabOrderOnEnterDBEdit17EnterOnExitedtPesquisarExit  TDBEditDBEdit36Left8Top� Width!HeightTabStopColor	clBtnFace	DataFieldNOME
DataSource
dsrEmpresaFont.CharsetANSI_CHARSET
Font.ColorclWindowTextFont.Height�	Font.NameArial
Font.StylefsBold 
ParentFontReadOnly	TabOrder  TDBCheckBoxDBCheckBox3LeftTopxWidthaHeightCaptionTroca vendedor	DataFieldTROCAVENDEDOR
DataSourcedsrDetalhesTabOrderValueCheckedSValueUncheckedN  TDBCheckBoxDBCheckBox4LeftTop� WidthaHeightCaptionInternet	DataFieldINTERNET
DataSourcedsrDetalhesTabOrderValueCheckedSValueUncheckedN  TDBEditDBEdit37LefthTop8WidthYHeight	DataFieldCOMISSAO
DataSourcedsrDetalhesTabOrderOnEnteredtPesquisarEnterOnExitedtPesquisarExit  TDBCheckBoxDBCheckBox5LeftTop� Width� HeightCaption#pode mudar de empresa dinamicamente	DataFieldMUDAEMPRESA
DataSourcedsrDetalhesTabOrder	ValueCheckedSValueUncheckedN       
TPopupMenuPrinterMenuLeft� Top�   TIBQueryqrySelecionarDatabasedmoPrincipal.DatabaseTransactiontraSelecionar	AfterOpenqrySelecionarAfterOpenBufferChunksdCachedUpdatesSQL.StringsSELECT * FROM CLIENTES Left� Top�   TDataSourcedscSelecionarAutoEditDataSetqrySelecionarLeft� Top�   
TPopupMenuGridMenuOnPopupGridMenuPopupLeft� TopI 	TMenuItemAtivarzebra1Caption&Ativar zebraOnClickAtivarzebra1Click  	TMenuItemN1Caption-  	TMenuItemCordalinha1CaptionCor da li&nhaOnClickCordalinha1Click  	TMenuItemCordotexto1CaptionCor do t&extoOnClickCordotexto1Click   TColorDialogColorDialogCtl3D	Left� Top�   TIBQueryqryDetalhesDatabasedmoPrincipal.DatabaseTransactiontraDetalhesAfterInsertqryDetalhesAfterInsert	AfterOpenqryDetalhesAfterOpenBufferChunksdCachedUpdates	SQL.StringsSELECT *FROM VENDEDORESWHERE CODIGO = :CODIGO  UniDirectional	UpdateObjectupdDetalhesLeftDTop� 	ParamDataDataType	ftIntegerNameCODIGO	ParamType	ptUnknown    TIBUpdateSQLupdDetalhesModifySQL.Stringsupdate VENDEDORESset  PESSOAFISICA = :PESSOAFISICA,  RAZAOSOCIAL = :RAZAOSOCIAL,  NOME = :NOME,  DATANASC = :DATANASC,  NATURALIDADE = :NATURALIDADE,  SEXO = :SEXO,  ESTADOCIVIL = :ESTADOCIVIL,  RG = :RG,  CPF = :CPF,  CGC = :CGC,  IE = :IE,  PAI = :PAI,  MAE = :MAE,  LOCALIZACAO = :LOCALIZACAO,  NUMERO = :NUMERO,  COMPLEMENTO = :COMPLEMENTO,  BAIRRO = :BAIRRO,  CIDADE = :CIDADE,  ESTADO = :ESTADO,  FONE = :FONE,  FAX = :FAX,  EMAIL = :EMAIL,  HOMEPAGE = :HOMEPAGE,  CELULAR = :CELULAR,  DATACADAST = :DATACADAST,  OBSERVACOES = :OBSERVACOES,  CONTATO = :CONTATO,  DATAFUND = :DATAFUND,  PROFISSAO = :PROFISSAO,  EQUIPAMENTO = :EQUIPAMENTO,  FOTO = :FOTO,  SALARIO = :SALARIO,  ORGAOEXP = :ORGAOEXP,  NOMEUSER = :NOMEUSER,  DESCONTO = :DESCONTO,  FINANCEIRO = :FINANCEIRO,  ESTORNO = :ESTORNO,  CODEMPRESA = :CODEMPRESA,  COMISSAO = :COMISSAO,  INTERNET = :INTERNET,  MUDAEMPRESA = :MUDAEMPRESA,   TROCAVENDEDOR = :TROCAVENDEDORwhere  CODIGO = :OLD_CODIGO    InsertSQL.Stringsinsert into VENDEDORESD  (CODIGO, PESSOAFISICA, RAZAOSOCIAL, NOME, DATANASC, NATURALIDADE, SEXO, A   ESTADOCIVIL, RG, CPF, CGC, IE, PAI, MAE, LOCALIZACAO, NUMERO, COMPLEMENTO, @   BAIRRO, CIDADE, ESTADO, FONE, FAX, EMAIL, HOMEPAGE, CELULAR, DATACADAST, A   OBSERVACOES, CONTATO, DATAFUND, PROFISSAO, EQUIPAMENTO, FOTO, 	SALARIO, A   ORGAOEXP, NOMEUSER, DESCONTO, FINANCEIRO, ESTORNO, SOUNDBYTES,>   CODEMPRESA, COMISSAO, INTERNET, MUDAEMPRESA, TROCAVENDEDOR)values:  (:CODIGO, :PESSOAFISICA, :RAZAOSOCIAL, :NOME, :DATANASC,:NATURALIDADE,G   :SEXO, :ESTADOCIVIL, :RG, :CPF, :CGC, :IE, :PAI, :MAE, :LOCALIZACAO,A   :NUMERO, :COMPLEMENTO, :BAIRRO, :CIDADE, :ESTADO, :FONE, :FAX,:EMAIL,<   :HOMEPAGE, :CELULAR, :DATACADAST, :OBSERVACOES, :CONTATO,
:DATAFUND,C   :PROFISSAO, :EQUIPAMENTO, :FOTO, :SALARIO, :ORGAOEXP, :NOMEUSER,I   :DESCONTO, :FINANCEIRO, :ESTORNO, :SOUNDBYTES, :CODEMPRESA, :COMISSAO,+   :INTERNET, :MUDAEMPRESA, :TROCAVENDEDOR)     DeleteSQL.Stringsdelete from VENDEDORESwhere  CODIGO = :OLD_CODIGO LeftHTop�   TDataSourcedsrDetalhesAutoEditDataSetqryDetalhesLeftDTop�   
TPopupMenuFotoMenuLeft� Top�  	TMenuItemAbrirdoarquivo1Caption&Abrir do arquivo...OnClickAbrirdoarquivo1Click  	TMenuItemColardareadetransferncia1Caption!&Colar (da �rea de transfer�ncia)OnClickColardareadetransferncia1Click  	TMenuItemN2Caption-  	TMenuItemApagar1CaptionApaga&rOnClickApagar1Click   TOpenPictureDialogOpenPictureDialogFilter�All (*.gif;*.bmp;*.ico;*.emf;*.wmf)|*.gif;*.bmp;*.ico;*.emf;*.wmf|CompuServe GIF Image (*.gif)|*.gif|Bitmaps (*.bmp)|*.bmp|Icons (*.ico)|*.ico|Enhanced Metafiles (*.emf)|*.emf|Metafiles (*.wmf)|*.wmfTitleAbrir imagemLeftITop+  TFormStorageFormStorageActiveMinMaxInfo.MinTrackHeight�MinMaxInfo.MinTrackWidth�UseRegistry	StoredProps.StringsgrdDados.ZebragrdDados.ZebraColorgrdDados.ZebraFontColor StoredValues Left� Top�   TIBTransactiontraSelecionarActiveDefaultDatabasedmoPrincipal.Database	IdleTimer DefaultActionTACommitRetainingParams.Stringsreadread_committedrec_versionwait AutoStopActionsaCommitLeft� Top5  TIBTransactiontraDetalhesActiveDefaultDatabasedmoPrincipal.DatabaseDefaultActionTACommitRetainingParams.Stringswriteread_committedrec_versionwait AutoStopActionsaCommitLeftITop5  TIBQuery
qryEmpresaDatabasedmoPrincipal.DatabaseTransaction
traEmpresaBufferChunks�CachedUpdates
DataSourcedsrDetalhesSQL.StringsSELECT  SI.CODIGO,	  CL.NOMEFROM  SISCONFIG SI  JOIN CLIENTES CL ON    (SI.CODCLIENTE = CL.CODIGO)WHERE  SI.CODIGO = :CODEMPRESAORDER BY	  CL.NOME UniDirectional	LeftaTop� 	ParamDataDataType	ftIntegerName
CODEMPRESA	ParamType	ptUnknown    TDataSource
dsrEmpresaAutoEditDataSet
qryEmpresaLeftdTop�   TIBTransaction
traEmpresaActiveDefaultDatabasedmoPrincipal.Database	IdleTimer DefaultActionTACommitRetainingParams.Stringsreadread_committedrec_versionwait AutoStopActionsaCommitLeftaTop}   