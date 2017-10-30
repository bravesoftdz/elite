object formContratos: TformContratos
  Left = 364
  Top = 193
  Width = 477
  Height = 411
  BorderIcons = [biSystemMenu, biMaximize]
  Caption = 'Contratos'
  Color = clBtnFace
  Font.Charset = ANSI_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Verdana'
  Font.Style = []
  KeyPreview = True
  OldCreateOrder = True
  OnCloseQuery = FormCloseQuery
  OnCreate = FormCreate
  OnDestroy = FormDestroy
  OnKeyDown = FormKeyDown
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 13
  object pgcDados: TPageControl
    Left = 0
    Top = 0
    Width = 469
    Height = 377
    ActivePage = tabVisual
    Align = alClient
    HotTrack = True
    TabOrder = 0
    object tabVisual: TTabSheet
      Caption = '&Pesquisa e Sele��o'
      object Panel1: TPanel
        Left = 0
        Top = 0
        Width = 461
        Height = 349
        Align = alClient
        BevelOuter = bvLowered
        TabOrder = 0
        object Dock971: TDock97
          Left = 1
          Top = 1
          Width = 459
          Height = 46
          BoundLines = [blTop, blLeft, blRight]
          object ToolWindow971: TToolWindow97
            Left = 0
            Top = 0
            Caption = 'ToolWindow971'
            ClientAreaHeight = 41
            ClientAreaWidth = 444
            DockPos = 0
            FullSize = True
            TabOrder = 0
            object Label1: TLabel
              Left = 4
              Top = 1
              Width = 41
              Height = 13
              Caption = '&Campo'
              Transparent = True
            end
            object Label2: TLabel
              Left = 135
              Top = 1
              Width = 78
              Height = 13
              Caption = '&Pesquisar por'
              Transparent = True
            end
            object cmbOrdenar: TComboBox
              Tag = 1
              Left = 3
              Top = 16
              Width = 118
              Height = 21
              Style = csDropDownList
              ItemHeight = 13
              TabOrder = 0
              OnChange = cmbOrdenarChange
            end
            object edtPesquisar: TEdit
              Left = 134
              Top = 16
              Width = 283
              Height = 21
              CharCase = ecUpperCase
              TabOrder = 1
              OnChange = edtPesquisarChange
              OnEnter = edtPesquisarEnter
              OnExit = edtPesquisarExit
              OnKeyPress = edtPesquisarKeyPress
            end
          end
        end
        object Dock973: TDock97
          Left = 1
          Top = 302
          Width = 459
          Height = 46
          BoundLines = [blBottom, blLeft, blRight]
          Position = dpBottom
          object ToolWindow972: TToolWindow97
            Left = 0
            Top = 0
            Caption = 'ToolWindow971'
            ClientAreaHeight = 41
            ClientAreaWidth = 444
            DockPos = 0
            FullSize = True
            TabOrder = 0
            object Label3: TLabel
              Left = 4
              Top = 1
              Width = 83
              Height = 13
              Caption = 'S&elecionar por'
              Transparent = True
            end
            object Label4: TLabel
              Left = 135
              Top = 1
              Width = 162
              Height = 13
              Caption = '&Que satisfa�am a express�o'
              Transparent = True
            end
            object cmbSelecionar: TComboBox
              Tag = 1
              Left = 3
              Top = 16
              Width = 118
              Height = 21
              Style = csDropDownList
              ItemHeight = 13
              TabOrder = 0
              OnChange = cmbSelecionarChange
            end
            object edtSelecionar: TEdit
              Left = 134
              Top = 16
              Width = 283
              Height = 21
              CharCase = ecUpperCase
              TabOrder = 1
              OnEnter = edtPesquisarEnter
              OnExit = edtPesquisarExit
              OnKeyPress = edtSelecionarKeyPress
            end
          end
        end
        object Dock972: TDock97
          Left = 374
          Top = 47
          Width = 86
          Height = 255
          BoundLines = [blTop, blBottom, blLeft, blRight]
          Position = dpRight
          object Toolbar972: TToolbar97
            Left = 0
            Top = 0
            Caption = 'Toolbar972'
            Color = clBtnHighlight
            DockPos = 0
            FullSize = True
            TabOrder = 0
            object btnSair: TToolbarButton97
              Left = 0
              Top = 186
              Width = 80
              Height = 60
              Cursor = crHandPoint
              Hint = 'Sair desta janela'
              Caption = '&Sa�da'
              Font.Charset = ANSI_CHARSET
              Font.Color = clNavy
              Font.Height = -11
              Font.Name = 'Verdana'
              Font.Style = []
              ImageIndex = 6
              Images = dmoPrincipal.imgBotoes
              Layout = blGlyphTop
              ModalResult = 1
              Opaque = False
              ParentFont = False
              ParentShowHint = False
              ShowHint = True
              OnClick = btnSairClick
              OnMouseEnter = btnAdicionarMouseEnter
              OnMouseExit = btnAdicionarMouseExit
            end
            object ToolbarSep971: TToolbarSep97
              Left = 0
              Top = 180
            end
            object btnAdicionar: TToolbarButton97
              Left = 0
              Top = 0
              Width = 80
              Height = 60
              Cursor = crHandPoint
              Hint = 'Adiciona um novo registro'
              Caption = '&Adicionar'
              Font.Charset = ANSI_CHARSET
              Font.Color = clNavy
              Font.Height = -11
              Font.Name = 'Verdana'
              Font.Style = []
              ImageIndex = 0
              Images = dmoPrincipal.imgBotoes
              Layout = blGlyphTop
              Opaque = False
              ParentFont = False
              ParentShowHint = False
              ShowHint = True
              OnClick = btnAdicionarClick
              OnMouseEnter = btnAdicionarMouseEnter
              OnMouseExit = btnAdicionarMouseExit
            end
            object btnImprimir: TToolbarButton97
              Left = 0
              Top = 120
              Width = 80
              Height = 60
              Cursor = crHandPoint
              Hint = 'Op��es de Impress�o'
              DropdownMenu = PrinterMenu
              Caption = '&Impress�o'
              Font.Charset = ANSI_CHARSET
              Font.Color = clNavy
              Font.Height = -11
              Font.Name = 'Verdana'
              Font.Style = []
              ImageIndex = 2
              Images = dmoPrincipal.imgBotoes
              Layout = blGlyphTop
              Opaque = False
              ParentFont = False
              ParentShowHint = False
              ShowHint = True
              OnMouseEnter = btnAdicionarMouseEnter
              OnMouseExit = btnAdicionarMouseExit
            end
            object btnModificar: TToolbarButton97
              Left = 0
              Top = 60
              Width = 80
              Height = 60
              Cursor = crHandPoint
              Hint = 'Modifica os dados do registro selecionado'
              Caption = '&Detalhes'
              Font.Charset = ANSI_CHARSET
              Font.Color = clNavy
              Font.Height = -11
              Font.Name = 'Verdana'
              Font.Style = []
              ImageIndex = 1
              Images = dmoPrincipal.imgBotoes
              Layout = blGlyphTop
              Opaque = False
              ParentFont = False
              ParentShowHint = False
              ShowHint = True
              OnClick = btnModificarClick
              OnMouseEnter = btnAdicionarMouseEnter
              OnMouseExit = btnAdicionarMouseExit
            end
          end
        end
        object Panel3: TPanel
          Left = 1
          Top = 47
          Width = 373
          Height = 255
          Align = alClient
          BevelOuter = bvNone
          TabOrder = 3
          object lblWhere: TLabel
            Left = 0
            Top = 0
            Width = 373
            Height = 13
            Align = alTop
            Caption = 'lblWhere'
            Color = clInfoBk
            Font.Charset = ANSI_CHARSET
            Font.Color = clWindowText
            Font.Height = -11
            Font.Name = 'Verdana'
            Font.Style = [fsBold]
            ParentColor = False
            ParentFont = False
            Visible = False
          end
          object grdDados: Tzebdbgrid
            Tag = 1
            Left = 0
            Top = 13
            Width = 373
            Height = 242
            Align = alClient
            DataSource = dsrSelecionar
            PopupMenu = GridMenu
            TabOrder = 0
            TitleFont.Charset = ANSI_CHARSET
            TitleFont.Color = clWindowText
            TitleFont.Height = -11
            TitleFont.Name = 'Verdana'
            TitleFont.Style = []
            Zebra = True
            ZebraColor = clAqua
            ZebraFontColor = clWindowText
            OnDblClick = grdDadosDblClick
          end
        end
      end
    end
    object tabDetalhe: TTabSheet
      Tag = 1
      Caption = '&Detalhes'
      object Dock975: TDock97
        Left = 375
        Top = 0
        Width = 86
        Height = 349
        BoundLines = [blTop, blBottom, blLeft, blRight]
        Position = dpRight
        object Toolbar971: TToolbar97
          Left = 0
          Top = 0
          Caption = 'Toolbar972'
          Color = clBtnHighlight
          DockPos = 0
          FullSize = True
          TabOrder = 0
          object ToolbarSep972: TToolbarSep97
            Left = 0
            Top = 120
          end
          object btnSalvar: TToolbarButton97
            Left = 0
            Top = 0
            Width = 80
            Height = 60
            Cursor = crHandPoint
            Caption = 'Sal&var'
            Font.Charset = ANSI_CHARSET
            Font.Color = clNavy
            Font.Height = -11
            Font.Name = 'Verdana'
            Font.Style = []
            ImageIndex = 3
            Images = dmoPrincipal.imgBotoes
            Layout = blGlyphTop
            Opaque = False
            ParentFont = False
            OnClick = btnSalvarClick
            OnMouseEnter = btnAdicionarMouseEnter
            OnMouseExit = btnAdicionarMouseExit
          end
          object btnExcluir: TToolbarButton97
            Left = 0
            Top = 126
            Width = 80
            Height = 60
            Cursor = crHandPoint
            Caption = '&Excluir'
            Font.Charset = ANSI_CHARSET
            Font.Color = clNavy
            Font.Height = -11
            Font.Name = 'Verdana'
            Font.Style = []
            ImageIndex = 5
            Images = dmoPrincipal.imgBotoes
            Layout = blGlyphTop
            Opaque = False
            ParentFont = False
            OnClick = btnExcluirClick
            OnMouseEnter = btnAdicionarMouseEnter
            OnMouseExit = btnAdicionarMouseExit
          end
          object btnCancelar: TToolbarButton97
            Left = 0
            Top = 60
            Width = 80
            Height = 60
            Cursor = crHandPoint
            Caption = 'Cancelar'
            Font.Charset = ANSI_CHARSET
            Font.Color = clNavy
            Font.Height = -11
            Font.Name = 'Verdana'
            Font.Style = []
            ImageIndex = 4
            Images = dmoPrincipal.imgBotoes
            Layout = blGlyphTop
            Opaque = False
            ParentFont = False
            OnClick = btnCancelarClick
            OnMouseEnter = btnAdicionarMouseEnter
            OnMouseExit = btnAdicionarMouseExit
          end
        end
      end
      object panDados: TPanel
        Left = 0
        Top = 0
        Width = 375
        Height = 349
        Align = alClient
        BevelOuter = bvLowered
        TabOrder = 1
        object dbnDetalhes: TDBNavigator
          Left = 8
          Top = 320
          Width = 240
          Height = 25
          DataSource = dsrDetalhes
          TabOrder = 0
          Visible = False
        end
        object Panel2: TPanel
          Left = 1
          Top = 1
          Width = 373
          Height = 347
          Align = alClient
          BevelOuter = bvNone
          TabOrder = 1
          object Label5: TLabel
            Left = 8
            Top = 3
            Width = 77
            Height = 13
            Cursor = crHandPoint
            Caption = 'Contratante'
            FocusControl = DBEdit1
            Font.Charset = ANSI_CHARSET
            Font.Color = clMaroon
            Font.Height = -11
            Font.Name = 'Verdana'
            Font.Style = [fsBold, fsUnderline]
            ParentFont = False
            OnClick = Label5Click
          end
          object Label7: TLabel
            Left = 8
            Top = 123
            Width = 62
            Height = 13
            Cursor = crHandPoint
            Caption = 'Vendedor'
            FocusControl = DBEdit4
            Font.Charset = ANSI_CHARSET
            Font.Color = clMaroon
            Font.Height = -11
            Font.Name = 'Verdana'
            Font.Style = [fsBold, fsUnderline]
            ParentFont = False
            OnClick = Label7Click
          end
          object Label8: TLabel
            Left = 8
            Top = 163
            Width = 134
            Height = 13
            Cursor = crHandPoint
            Caption = 'T�cnico preferencial'
            FocusControl = DBEdit6
            Font.Charset = ANSI_CHARSET
            Font.Color = clMaroon
            Font.Height = -11
            Font.Name = 'Verdana'
            Font.Style = [fsBold, fsUnderline]
            ParentFont = False
            OnClick = Label8Click
          end
          object Label11: TLabel
            Left = 8
            Top = 203
            Width = 125
            Height = 13
            Cursor = crHandPoint
            Caption = 'Natureza Opera��o'
            FocusControl = DBEdit10
            Font.Charset = ANSI_CHARSET
            Font.Color = clMaroon
            Font.Height = -11
            Font.Name = 'Verdana'
            Font.Style = [fsBold, fsUnderline]
            ParentFont = False
            OnClick = Label11Click
          end
          object Label12: TLabel
            Left = 8
            Top = 243
            Width = 124
            Height = 13
            Cursor = crHandPoint
            Caption = 'Servi�o contratado'
            FocusControl = DBEdit12
            Font.Charset = ANSI_CHARSET
            Font.Color = clMaroon
            Font.Height = -11
            Font.Name = 'Verdana'
            Font.Style = [fsBold, fsUnderline]
            ParentFont = False
            OnClick = Label12Click
          end
          object Label13: TLabel
            Left = 8
            Top = 283
            Width = 156
            Height = 13
            Cursor = crHandPoint
            Caption = 'Condi��o de Pagamento'
            FocusControl = DBEdit14
            Font.Charset = ANSI_CHARSET
            Font.Color = clMaroon
            Font.Height = -11
            Font.Name = 'Verdana'
            Font.Style = [fsBold, fsUnderline]
            ParentFont = False
            OnClick = Label13Click
          end
          object DBEdit1: TDBEdit
            Left = 8
            Top = 19
            Width = 65
            Height = 21
            CharCase = ecUpperCase
            DataField = 'CODIGO'
            DataSource = dsrDetalhes
            Font.Charset = ANSI_CHARSET
            Font.Color = clWindowText
            Font.Height = -11
            Font.Name = 'Verdana'
            Font.Style = []
            ParentFont = False
            TabOrder = 0
            OnEnter = edtPesquisarEnter
            OnExit = edtPesquisarExit
          end
          object DBEdit3: TDBEdit
            Left = 80
            Top = 19
            Width = 281
            Height = 21
            TabStop = False
            CharCase = ecUpperCase
            Color = clBtnFace
            DataField = 'NOME'
            DataSource = dsrCliente
            Font.Charset = ANSI_CHARSET
            Font.Color = clWindowText
            Font.Height = -11
            Font.Name = 'Verdana'
            Font.Style = [fsBold]
            ParentFont = False
            ReadOnly = True
            TabOrder = 9
          end
          object DBEdit4: TDBEdit
            Left = 8
            Top = 139
            Width = 65
            Height = 21
            CharCase = ecUpperCase
            DataField = 'CODVENDEDOR'
            DataSource = dsrDetalhes
            Font.Charset = ANSI_CHARSET
            Font.Color = clWindowText
            Font.Height = -11
            Font.Name = 'Verdana'
            Font.Style = []
            ParentFont = False
            TabOrder = 4
            OnEnter = edtPesquisarEnter
            OnExit = edtPesquisarExit
          end
          object DBEdit5: TDBEdit
            Left = 80
            Top = 139
            Width = 281
            Height = 21
            TabStop = False
            CharCase = ecUpperCase
            Color = clBtnFace
            DataField = 'NOME'
            DataSource = dsrVendedor
            Font.Charset = ANSI_CHARSET
            Font.Color = clWindowText
            Font.Height = -11
            Font.Name = 'Verdana'
            Font.Style = [fsBold]
            ParentFont = False
            ReadOnly = True
            TabOrder = 10
          end
          object DBEdit6: TDBEdit
            Left = 8
            Top = 179
            Width = 65
            Height = 21
            CharCase = ecUpperCase
            DataField = 'CODTECNICO'
            DataSource = dsrDetalhes
            Font.Charset = ANSI_CHARSET
            Font.Color = clWindowText
            Font.Height = -11
            Font.Name = 'Verdana'
            Font.Style = []
            ParentFont = False
            TabOrder = 5
            OnEnter = edtPesquisarEnter
            OnExit = edtPesquisarExit
          end
          object DBEdit7: TDBEdit
            Left = 80
            Top = 179
            Width = 281
            Height = 21
            TabStop = False
            CharCase = ecUpperCase
            Color = clBtnFace
            DataField = 'NOME'
            DataSource = dsrTecnico
            Font.Charset = ANSI_CHARSET
            Font.Color = clWindowText
            Font.Height = -11
            Font.Name = 'Verdana'
            Font.Style = [fsBold]
            ParentFont = False
            ReadOnly = True
            TabOrder = 11
          end
          object GroupBox1: TGroupBox
            Left = 8
            Top = 48
            Width = 225
            Height = 65
            Caption = ' Per�odo de Vig�ncia '
            TabOrder = 1
            object Label6: TLabel
              Left = 8
              Top = 19
              Width = 31
              Height = 13
              Caption = 'In�cio'
              FocusControl = DBEdit2
            end
            object Label9: TLabel
              Left = 112
              Top = 19
              Width = 47
              Height = 13
              Caption = 'T�rmino'
              FocusControl = DBEdit8
            end
            object DBEdit2: TDBEdit
              Left = 8
              Top = 35
              Width = 97
              Height = 21
              CharCase = ecUpperCase
              DataField = 'DATAINI'
              DataSource = dsrDetalhes
              TabOrder = 0
              OnEnter = edtPesquisarEnter
              OnExit = edtPesquisarExit
            end
            object DBEdit8: TDBEdit
              Left = 112
              Top = 35
              Width = 97
              Height = 21
              CharCase = ecUpperCase
              DataField = 'DATAFIM'
              DataSource = dsrDetalhes
              TabOrder = 1
              OnEnter = edtPesquisarEnter
              OnExit = edtPesquisarExit
            end
          end
          object DBEdit9: TDBEdit
            Left = 248
            Top = 82
            Width = 113
            Height = 21
            CharCase = ecUpperCase
            DataField = 'VALOR'
            DataSource = dsrDetalhes
            TabOrder = 3
            OnEnter = edtPesquisarEnter
            OnExit = edtPesquisarExit
          end
          object DBEdit10: TDBEdit
            Left = 8
            Top = 219
            Width = 65
            Height = 21
            CharCase = ecUpperCase
            DataField = 'CODNATUOPER'
            DataSource = dsrDetalhes
            Font.Charset = ANSI_CHARSET
            Font.Color = clWindowText
            Font.Height = -11
            Font.Name = 'Verdana'
            Font.Style = []
            ParentFont = False
            TabOrder = 6
            OnEnter = edtPesquisarEnter
            OnExit = edtPesquisarExit
          end
          object DBEdit11: TDBEdit
            Left = 80
            Top = 219
            Width = 281
            Height = 21
            TabStop = False
            CharCase = ecUpperCase
            Color = clBtnFace
            DataField = 'NATUREZA'
            DataSource = dsrNatuoper
            Font.Charset = ANSI_CHARSET
            Font.Color = clWindowText
            Font.Height = -11
            Font.Name = 'Verdana'
            Font.Style = [fsBold]
            ParentFont = False
            ReadOnly = True
            TabOrder = 12
          end
          object DBEdit12: TDBEdit
            Left = 8
            Top = 259
            Width = 65
            Height = 21
            CharCase = ecUpperCase
            DataField = 'CODSERVICO'
            DataSource = dsrDetalhes
            Font.Charset = ANSI_CHARSET
            Font.Color = clWindowText
            Font.Height = -11
            Font.Name = 'Verdana'
            Font.Style = []
            ParentFont = False
            TabOrder = 7
            OnEnter = edtPesquisarEnter
            OnExit = edtPesquisarExit
          end
          object DBEdit13: TDBEdit
            Left = 80
            Top = 259
            Width = 281
            Height = 21
            TabStop = False
            CharCase = ecUpperCase
            Color = clBtnFace
            DataField = 'DESCRICAO'
            DataSource = dsrServico
            Font.Charset = ANSI_CHARSET
            Font.Color = clWindowText
            Font.Height = -11
            Font.Name = 'Verdana'
            Font.Style = [fsBold]
            ParentFont = False
            ReadOnly = True
            TabOrder = 13
          end
          object DBEdit14: TDBEdit
            Left = 8
            Top = 299
            Width = 65
            Height = 21
            CharCase = ecUpperCase
            DataField = 'CODCONDPAG'
            DataSource = dsrDetalhes
            Font.Charset = ANSI_CHARSET
            Font.Color = clWindowText
            Font.Height = -11
            Font.Name = 'Verdana'
            Font.Style = []
            ParentFont = False
            TabOrder = 8
            OnEnter = edtPesquisarEnter
            OnExit = edtPesquisarExit
          end
          object DBEdit15: TDBEdit
            Left = 80
            Top = 299
            Width = 281
            Height = 21
            TabStop = False
            CharCase = ecUpperCase
            Color = clBtnFace
            DataField = 'DESCRICAO'
            DataSource = dsrCondpag
            Font.Charset = ANSI_CHARSET
            Font.Color = clWindowText
            Font.Height = -11
            Font.Name = 'Verdana'
            Font.Style = [fsBold]
            ParentFont = False
            ReadOnly = True
            TabOrder = 14
          end
          object DBCheckBox1: TDBCheckBox
            Left = 248
            Top = 64
            Width = 97
            Height = 17
            Caption = 'Faturar Valor'
            DataField = 'FATURAR'
            DataSource = dsrDetalhes
            TabOrder = 2
            ValueChecked = 'S'
            ValueUnchecked = 'N'
          end
        end
      end
    end
  end
  object PrinterMenu: TPopupMenu
    Left = 156
    Top = 185
    object Grade1: TMenuItem
      Caption = '&Grade'
      OnClick = Grade1Click
    end
    object N2: TMenuItem
      Caption = '-'
    end
    object Notasfiscaisdefatura1: TMenuItem
      Caption = 'Notas Fiscais de Faturamento'
      OnClick = Notasfiscaisdefatura1Click
    end
  end
  object GridMenu: TPopupMenu
    OnPopup = GridMenuPopup
    Left = 156
    Top = 297
    object Ativarzebra1: TMenuItem
      Caption = '&Ativar zebra'
      OnClick = Ativarzebra1Click
    end
    object N1: TMenuItem
      Caption = '-'
    end
    object Cordalinha1: TMenuItem
      Caption = 'Cor da li&nha'
      OnClick = Cordalinha1Click
    end
    object Cordotexto1: TMenuItem
      Caption = 'Cor do t&exto'
      OnClick = Cordotexto1Click
    end
  end
  object ColorDialog: TColorDialog
    Ctl3D = True
    Left = 156
    Top = 241
  end
  object qryDetalhes: TIBQuery
    Database = dmoPrincipal.Database
    Transaction = traDetalhes
    AfterInsert = qryDetalhesAfterInsert
    AfterOpen = qryDetalhesAfterOpen
    BufferChunks = 100
    CachedUpdates = True
    SQL.Strings = (
      'SELECT *'
      'FROM CONTRATOS'
      'WHERE ( CODIGO = :CODIGO )')
    UniDirectional = True
    UpdateObject = updDetalhes
    Left = 324
    Top = 129
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'CODIGO'
        ParamType = ptUnknown
      end>
    object qryDetalhesCODIGO: TIntegerField
      FieldName = 'CODIGO'
      Origin = '"CONTRATOS"."CODIGO"'
      Required = True
      OnChange = qryDetalhesCODIGOChange
    end
    object qryDetalhesDATAINI: TDateField
      FieldName = 'DATAINI'
      Origin = '"CONTRATOS"."DATAINI"'
      Required = True
    end
    object qryDetalhesDATAFIM: TDateField
      FieldName = 'DATAFIM'
      Origin = '"CONTRATOS"."DATAFIM"'
      Required = True
    end
    object qryDetalhesCODVENDEDOR: TIntegerField
      FieldName = 'CODVENDEDOR'
      Origin = '"CONTRATOS"."CODVENDEDOR"'
      OnChange = qryDetalhesCODVENDEDORChange
    end
    object qryDetalhesCODTECNICO: TIntegerField
      FieldName = 'CODTECNICO'
      Origin = '"CONTRATOS"."CODTECNICO"'
      OnChange = qryDetalhesCODTECNICOChange
    end
    object qryDetalhesVALOR: TIBBCDField
      FieldName = 'VALOR'
      Origin = '"CONTRATOS"."VALOR"'
      Precision = 9
      Size = 2
    end
    object qryDetalhesCODNATUOPER: TIBStringField
      FieldName = 'CODNATUOPER'
      Origin = '"CONTRATOS"."CODNATUOPER"'
      Required = True
      OnChange = qryDetalhesCODNATUOPERChange
      FixedChar = True
      Size = 6
    end
    object qryDetalhesCODSERVICO: TIntegerField
      FieldName = 'CODSERVICO'
      Origin = '"CONTRATOS"."CODSERVICO"'
      Required = True
      OnChange = qryDetalhesCODSERVICOChange
    end
    object qryDetalhesCODCONDPAG: TIntegerField
      FieldName = 'CODCONDPAG'
      Origin = '"CONTRATOS"."CODCONDPAG"'
      Required = True
      OnChange = qryDetalhesCODCONDPAGChange
    end
    object qryDetalhesFATURAR: TIBStringField
      FieldName = 'FATURAR'
      Origin = '"CONTRATOS"."FATURAR"'
      FixedChar = True
      Size = 1
    end
  end
  object updDetalhes: TIBUpdateSQL
    RefreshSQL.Strings = (
      'Select '
      '  CODIGO,'
      '  DATAINI,'
      '  DATAFIM,'
      '  CODVENDEDOR,'
      '  CODTECNICO,'
      '  VALOR,'
      '  CODNATUOPER,'
      '  CODSERVICO,'
      '  CODCONDPAG,'
      '  FATURAR'
      'from CONTRATOS '
      'where'
      '  CODIGO = :CODIGO')
    ModifySQL.Strings = (
      'update CONTRATOS'
      'set'
      '  CODIGO = :CODIGO,'
      '  DATAINI = :DATAINI,'
      '  DATAFIM = :DATAFIM,'
      '  CODVENDEDOR = :CODVENDEDOR,'
      '  CODTECNICO = :CODTECNICO,'
      '  VALOR = :VALOR,'
      '  CODNATUOPER = :CODNATUOPER,'
      '  CODSERVICO = :CODSERVICO,'
      '  CODCONDPAG = :CODCONDPAG,'
      '  FATURAR = :FATURAR'
      'where'
      '  CODIGO = :OLD_CODIGO')
    InsertSQL.Strings = (
      'insert into CONTRATOS'
      
        '  (CODIGO, DATAINI, DATAFIM, CODVENDEDOR, CODTECNICO, VALOR, COD' +
        'NATUOPER, '
      '   CODSERVICO, CODCONDPAG, FATURAR)'
      'values'
      
        '  (:CODIGO, :DATAINI, :DATAFIM, :CODVENDEDOR, :CODTECNICO, :VALO' +
        'R, :CODNATUOPER, '
      '   :CODSERVICO, :CODCONDPAG, :FATURAR)')
    DeleteSQL.Strings = (
      'delete from CONTRATOS'
      'where'
      '  CODIGO = :OLD_CODIGO')
    Left = 324
    Top = 241
  end
  object dsrDetalhes: TDataSource
    AutoEdit = False
    DataSet = qryDetalhes
    Left = 324
    Top = 185
  end
  object FormStorage: TFormStorage
    Active = False
    MinMaxInfo.MinTrackHeight = 411
    MinMaxInfo.MinTrackWidth = 477
    UseRegistry = True
    StoredProps.Strings = (
      'grdDados.Zebra'
      'grdDados.ZebraColor'
      'grdDados.ZebraFontColor')
    StoredValues = <>
    Left = 157
    Top = 128
  end
  object qrySelecionar: TIBQuery
    Database = dmoPrincipal.Database
    Transaction = traSelecionar
    AutoCalcFields = False
    AfterOpen = qrySelecionarAfterOpen
    BufferChunks = 100
    CachedUpdates = False
    Left = 245
    Top = 128
  end
  object dsrSelecionar: TDataSource
    AutoEdit = False
    DataSet = qrySelecionar
    Left = 245
    Top = 184
  end
  object traSelecionar: TIBTransaction
    Active = False
    DefaultDatabase = dmoPrincipal.Database
    IdleTimer = 1024
    DefaultAction = TACommitRetaining
    Params.Strings = (
      'read'
      'read_committed'
      'rec_version'
      'wait')
    AutoStopAction = saCommit
    Left = 233
    Top = 301
  end
  object traDetalhes: TIBTransaction
    Active = False
    DefaultDatabase = dmoPrincipal.Database
    DefaultAction = TACommitRetaining
    Params.Strings = (
      'write'
      'read_committed'
      'rec_version'
      'wait')
    AutoStopAction = saCommit
    Left = 305
    Top = 301
  end
  object traCliente: TIBTransaction
    Active = False
    DefaultDatabase = dmoPrincipal.Database
    IdleTimer = 1024
    DefaultAction = TACommitRetaining
    Params.Strings = (
      'read'
      'read_committed'
      'rec_version'
      'wait')
    AutoStopAction = saCommit
    Left = 537
    Top = 77
  end
  object qryCliente: TIBQuery
    Database = dmoPrincipal.Database
    Transaction = traCliente
    AutoCalcFields = False
    BufferChunks = 100
    CachedUpdates = False
    DataSource = dsrDetalhes
    SQL.Strings = (
      'SELECT NOME FROM CLIENTES WHERE CODIGO = :CODIGO')
    UniDirectional = True
    Left = 533
    Top = 128
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'CODIGO'
        ParamType = ptUnknown
      end>
  end
  object dsrCliente: TDataSource
    AutoEdit = False
    DataSet = qryCliente
    Left = 533
    Top = 184
  end
  object traTecnico: TIBTransaction
    Active = False
    DefaultDatabase = dmoPrincipal.Database
    IdleTimer = 1024
    DefaultAction = TACommitRetaining
    Params.Strings = (
      'read'
      'read_committed'
      'rec_version'
      'wait')
    AutoStopAction = saCommit
    Left = 609
    Top = 77
  end
  object qryTecnico: TIBQuery
    Database = dmoPrincipal.Database
    Transaction = traTecnico
    AutoCalcFields = False
    BufferChunks = 100
    CachedUpdates = False
    DataSource = dsrDetalhes
    SQL.Strings = (
      'SELECT NOME FROM CLIENTES WHERE CODIGO = :CODTECNICO')
    UniDirectional = True
    Left = 605
    Top = 128
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'CODTECNICO'
        ParamType = ptUnknown
      end>
  end
  object dsrTecnico: TDataSource
    AutoEdit = False
    DataSet = qryTecnico
    Left = 605
    Top = 184
  end
  object traVendedor: TIBTransaction
    Active = False
    DefaultDatabase = dmoPrincipal.Database
    IdleTimer = 1024
    DefaultAction = TACommitRetaining
    Params.Strings = (
      'read'
      'read_committed'
      'rec_version'
      'wait')
    AutoStopAction = saCommit
    Left = 681
    Top = 77
  end
  object qryVendedor: TIBQuery
    Database = dmoPrincipal.Database
    Transaction = traVendedor
    AutoCalcFields = False
    BufferChunks = 100
    CachedUpdates = False
    DataSource = dsrDetalhes
    SQL.Strings = (
      'SELECT NOME FROM CLIENTES WHERE CODIGO = :CODVENDEDOR')
    UniDirectional = True
    Left = 677
    Top = 128
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'CODVENDEDOR'
        ParamType = ptUnknown
      end>
  end
  object dsrVendedor: TDataSource
    AutoEdit = False
    DataSet = qryVendedor
    Left = 677
    Top = 184
  end
  object traNatuoper: TIBTransaction
    Active = False
    DefaultDatabase = dmoPrincipal.Database
    IdleTimer = 1024
    DefaultAction = TACommitRetaining
    Params.Strings = (
      'read'
      'read_committed'
      'rec_version'
      'wait')
    AutoStopAction = saCommit
    Left = 753
    Top = 77
  end
  object qryNatuoper: TIBQuery
    Database = dmoPrincipal.Database
    Transaction = traNatuoper
    AutoCalcFields = False
    BufferChunks = 100
    CachedUpdates = False
    DataSource = dsrDetalhes
    SQL.Strings = (
      'SELECT NATUREZA FROM NATUOPER WHERE CODIGO = :CODNATUOPER')
    UniDirectional = True
    Left = 749
    Top = 128
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'CODNATUOPER'
        ParamType = ptUnknown
      end>
  end
  object dsrNatuoper: TDataSource
    AutoEdit = False
    DataSet = qryNatuoper
    Left = 749
    Top = 184
  end
  object traServico: TIBTransaction
    Active = False
    DefaultDatabase = dmoPrincipal.Database
    IdleTimer = 1024
    DefaultAction = TACommitRetaining
    Params.Strings = (
      'read'
      'read_committed'
      'rec_version'
      'wait')
    AutoStopAction = saCommit
    Left = 825
    Top = 77
  end
  object qryServico: TIBQuery
    Database = dmoPrincipal.Database
    Transaction = traServico
    AutoCalcFields = False
    BufferChunks = 100
    CachedUpdates = False
    DataSource = dsrDetalhes
    SQL.Strings = (
      'SELECT DESCRICAO FROM PRODUTOS WHERE CODIGO = :CODSERVICO')
    UniDirectional = True
    Left = 821
    Top = 128
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'CODSERVICO'
        ParamType = ptUnknown
      end>
  end
  object dsrServico: TDataSource
    AutoEdit = False
    DataSet = qryServico
    Left = 821
    Top = 184
  end
  object traCondPag: TIBTransaction
    Active = False
    DefaultDatabase = dmoPrincipal.Database
    IdleTimer = 1024
    DefaultAction = TACommitRetaining
    Params.Strings = (
      'read'
      'read_committed'
      'rec_version'
      'wait')
    AutoStopAction = saCommit
    Left = 897
    Top = 77
  end
  object qryCondPag: TIBQuery
    Database = dmoPrincipal.Database
    Transaction = traCondPag
    AutoCalcFields = False
    BufferChunks = 100
    CachedUpdates = False
    DataSource = dsrDetalhes
    SQL.Strings = (
      'SELECT DESCRICAO FROM CONDPAG WHERE CODIGO = :CODCONDPAG')
    UniDirectional = True
    Left = 893
    Top = 128
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'CODCONDPAG'
        ParamType = ptUnknown
      end>
  end
  object dsrCondpag: TDataSource
    AutoEdit = False
    DataSet = qryCondPag
    Left = 893
    Top = 184
  end
end
