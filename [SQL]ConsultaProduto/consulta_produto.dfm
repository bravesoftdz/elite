object formConsultaProduto: TformConsultaProduto
  Left = 370
  Top = 170
  Width = 477
  Height = 411
  BorderIcons = [biSystemMenu, biMaximize]
  Caption = 'Consulta Produto ou Servi�o'
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
              Top = 126
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
              OnMouseEnter = btnModificarMouseEnter
              OnMouseExit = btnModificarMouseExit
            end
            object ToolbarSep971: TToolbarSep97
              Left = 0
              Top = 120
            end
            object btnImprimir: TToolbarButton97
              Left = 0
              Top = 60
              Width = 80
              Height = 60
              Cursor = crHandPoint
              Hint = 'Op��es de Impress�o'
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
              OnClick = btnImprimirClick
              OnMouseEnter = btnModificarMouseEnter
              OnMouseExit = btnModificarMouseExit
            end
            object btnModificar: TToolbarButton97
              Left = 0
              Top = 0
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
              OnMouseEnter = btnModificarMouseEnter
              OnMouseExit = btnModificarMouseExit
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
            DataSource = dscSelecionar
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
          object btnCancelar: TToolbarButton97
            Left = 0
            Top = 0
            Width = 80
            Height = 60
            Cursor = crHandPoint
            Caption = '&Voltar'
            Font.Charset = ANSI_CHARSET
            Font.Color = clNavy
            Font.Height = -11
            Font.Name = 'Verdana'
            Font.Style = []
            ImageIndex = 11
            Images = dmoPrincipal.imgBotoes
            Layout = blGlyphTop
            Opaque = False
            ParentFont = False
            OnClick = btnCancelarClick
            OnMouseEnter = btnModificarMouseEnter
            OnMouseExit = btnModificarMouseExit
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
          Height = 176
          Align = alTop
          BevelOuter = bvNone
          TabOrder = 1
          object Label5: TLabel
            Left = 8
            Top = 3
            Width = 40
            Height = 13
            Caption = 'C�digo'
            FocusControl = DBEdit1
          end
          object Label6: TLabel
            Left = 8
            Top = 43
            Width = 122
            Height = 13
            Caption = 'Descri��o do Produto'
            FocusControl = dedNOME
          end
          object Label7: TLabel
            Left = 208
            Top = 4
            Width = 100
            Height = 13
            Caption = 'C�digo de Barras'
            FocusControl = DBEdit2
          end
          object Label8: TLabel
            Left = 8
            Top = 83
            Width = 97
            Height = 13
            Caption = 'N�mero de S�rie'
            FocusControl = DBEdit3
          end
          object Label23: TLabel
            Left = 8
            Top = 128
            Width = 76
            Height = 13
            Caption = 'Chip / ICCID'
            FocusControl = DBEdit21
          end
          object DBEdit1: TDBEdit
            Left = 8
            Top = 19
            Width = 64
            Height = 21
            TabStop = False
            CharCase = ecUpperCase
            Color = clBtnFace
            DataField = 'CODIGO'
            DataSource = dsrDetalhes
            Font.Charset = ANSI_CHARSET
            Font.Color = clWindowText
            Font.Height = -11
            Font.Name = 'Verdana'
            Font.Style = [fsBold]
            ParentFont = False
            TabOrder = 0
          end
          object dedNOME: TDBEdit
            Left = 8
            Top = 59
            Width = 345
            Height = 21
            TabStop = False
            CharCase = ecUpperCase
            DataField = 'DESCRICAO'
            DataSource = dscSelecionar
            ReadOnly = True
            TabOrder = 1
            OnEnter = edtPesquisarEnter
            OnExit = edtPesquisarExit
          end
          object DBEdit2: TDBEdit
            Left = 208
            Top = 20
            Width = 145
            Height = 21
            TabStop = False
            CharCase = ecUpperCase
            Color = clBtnFace
            DataField = 'BARRA'
            DataSource = dsrDetalhes
            Font.Charset = ANSI_CHARSET
            Font.Color = clWindowText
            Font.Height = -11
            Font.Name = 'Verdana'
            Font.Style = [fsBold]
            ParentFont = False
            TabOrder = 2
          end
          object DBEdit3: TDBEdit
            Left = 8
            Top = 99
            Width = 153
            Height = 21
            TabStop = False
            CharCase = ecUpperCase
            DataField = 'SERIE'
            DataSource = dsrDetalhes
            ReadOnly = True
            TabOrder = 3
            OnEnter = edtPesquisarEnter
            OnExit = edtPesquisarExit
          end
          object DBCheckBox1: TDBCheckBox
            Left = 192
            Top = 88
            Width = 145
            Height = 17
            TabStop = False
            Caption = 'N�mera��o individual'
            DataField = 'UNICO'
            DataSource = dsrDetalhes
            ReadOnly = True
            TabOrder = 4
            ValueChecked = '1'
            ValueUnchecked = '0'
          end
          object DBCheckBox2: TDBCheckBox
            Left = 192
            Top = 106
            Width = 145
            Height = 17
            TabStop = False
            Caption = 'Vendido'
            DataField = 'VENDIDO'
            DataSource = dsrDetalhes
            ReadOnly = True
            TabOrder = 5
            ValueChecked = 'S'
            ValueUnchecked = 'N'
          end
          object DBEdit21: TDBEdit
            Left = 8
            Top = 144
            Width = 225
            Height = 21
            DataField = 'SERIE2'
            DataSource = dsrDetalhes
            TabOrder = 6
            OnEnter = edtPesquisarEnter
            OnExit = edtPesquisarExit
          end
        end
        object PageControl1: TPageControl
          Left = 1
          Top = 177
          Width = 373
          Height = 171
          ActivePage = TabSheet1
          Align = alClient
          TabOrder = 2
          object TabSheet1: TTabSheet
            Caption = '&Compra'
            object Label9: TLabel
              Left = 8
              Top = 8
              Width = 64
              Height = 13
              Caption = 'Fornecedor'
              FocusControl = DBEdit4
            end
            object DBText1: TDBText
              Left = 128
              Top = 1
              Width = 220
              Height = 17
              Alignment = taRightJustify
              DataField = 'DATA'
              DataSource = dsrCompra
              Font.Charset = ANSI_CHARSET
              Font.Color = clWindowText
              Font.Height = -11
              Font.Name = 'Verdana'
              Font.Style = [fsBold]
              ParentFont = False
            end
            object Label10: TLabel
              Left = 176
              Top = 50
              Width = 46
              Height = 13
              Caption = 'Compra'
              FocusControl = DBEdit6
            end
            object Label17: TLabel
              Left = 8
              Top = 50
              Width = 65
              Height = 13
              Caption = 'Quantidade'
              FocusControl = DBEdit14
            end
            object Label11: TLabel
              Left = 104
              Top = 50
              Width = 31
              Height = 13
              Caption = 'ICMS'
              FocusControl = DBEdit7
            end
            object Label12: TLabel
              Left = 264
              Top = 50
              Width = 83
              Height = 13
              Caption = 'Valor do ICMS'
              FocusControl = DBEdit8
            end
            object DBEdit4: TDBEdit
              Left = 8
              Top = 24
              Width = 81
              Height = 21
              Color = clBtnFace
              DataField = 'CODCLIENTE'
              DataSource = dsrCompra
              Font.Charset = ANSI_CHARSET
              Font.Color = clWindowText
              Font.Height = -11
              Font.Name = 'Verdana'
              Font.Style = [fsBold]
              ParentFont = False
              ReadOnly = True
              TabOrder = 0
            end
            object DBEdit5: TDBEdit
              Left = 96
              Top = 24
              Width = 254
              Height = 21
              Color = clBtnFace
              DataField = 'NOME'
              DataSource = dsrCompra
              Font.Charset = ANSI_CHARSET
              Font.Color = clWindowText
              Font.Height = -11
              Font.Name = 'Verdana'
              Font.Style = [fsBold]
              ParentFont = False
              ReadOnly = True
              TabOrder = 1
            end
            object DBEdit6: TDBEdit
              Left = 176
              Top = 66
              Width = 81
              Height = 21
              Color = clBtnFace
              DataField = 'PRECO'
              DataSource = dsrCompra
              Font.Charset = ANSI_CHARSET
              Font.Color = clWindowText
              Font.Height = -11
              Font.Name = 'Verdana'
              Font.Style = [fsBold]
              ParentFont = False
              ReadOnly = True
              TabOrder = 2
            end
            object DBEdit14: TDBEdit
              Left = 8
              Top = 66
              Width = 89
              Height = 21
              Color = clBtnFace
              DataField = 'QUANTIDADE'
              DataSource = dsrDetalhes
              Font.Charset = ANSI_CHARSET
              Font.Color = clWindowText
              Font.Height = -11
              Font.Name = 'Verdana'
              Font.Style = [fsBold]
              ParentFont = False
              ReadOnly = True
              TabOrder = 3
            end
            object DBEdit7: TDBEdit
              Left = 104
              Top = 66
              Width = 64
              Height = 21
              Color = clBtnFace
              DataField = 'ICMSCOMPRA'
              DataSource = dsrCompra
              Font.Charset = ANSI_CHARSET
              Font.Color = clWindowText
              Font.Height = -11
              Font.Name = 'Verdana'
              Font.Style = [fsBold]
              ParentFont = False
              ReadOnly = True
              TabOrder = 4
            end
            object DBEdit8: TDBEdit
              Left = 262
              Top = 66
              Width = 87
              Height = 21
              Color = clBtnFace
              DataField = 'VALOR_ICMSCOMPRA'
              DataSource = dsrCompra
              Font.Charset = ANSI_CHARSET
              Font.Color = clWindowText
              Font.Height = -11
              Font.Name = 'Verdana'
              Font.Style = [fsBold]
              ParentFont = False
              ReadOnly = True
              TabOrder = 5
            end
          end
          object TabSheet2: TTabSheet
            Caption = '&Venda'
            ImageIndex = 1
            object Label13: TLabel
              Left = 8
              Top = 8
              Width = 40
              Height = 13
              Caption = 'Cliente'
              FocusControl = DBEdit9
            end
            object DBText2: TDBText
              Left = 180
              Top = 1
              Width = 169
              Height = 17
              Alignment = taRightJustify
              DataField = 'DATA'
              DataSource = dsrVenda
              Font.Charset = ANSI_CHARSET
              Font.Color = clWindowText
              Font.Height = -11
              Font.Name = 'Verdana'
              Font.Style = [fsBold]
              ParentFont = False
            end
            object Label14: TLabel
              Left = 8
              Top = 50
              Width = 72
              Height = 13
              Caption = 'Valor Tabela'
              FocusControl = DBEdit11
            end
            object Label15: TLabel
              Left = 104
              Top = 50
              Width = 53
              Height = 13
              Caption = 'Desconto'
              FocusControl = DBEdit12
            end
            object Label18: TLabel
              Left = 184
              Top = 50
              Width = 38
              Height = 13
              Caption = 'Quant.'
              FocusControl = DBEdit16
            end
            object Label16: TLabel
              Left = 242
              Top = 50
              Width = 62
              Height = 13
              Caption = 'Valor Pago'
              FocusControl = DBEdit13
            end
            object Label19: TLabel
              Left = 104
              Top = 92
              Width = 83
              Height = 13
              Caption = 'Valor do ICMS'
              FocusControl = DBEdit15
            end
            object Label20: TLabel
              Left = 8
              Top = 92
              Width = 31
              Height = 13
              Caption = 'ICMS'
              FocusControl = DBEdit17
            end
            object DBEdit9: TDBEdit
              Left = 8
              Top = 24
              Width = 81
              Height = 21
              Color = clBtnFace
              DataField = 'CODCLIENTE'
              DataSource = dsrVenda
              Font.Charset = ANSI_CHARSET
              Font.Color = clWindowText
              Font.Height = -11
              Font.Name = 'Verdana'
              Font.Style = [fsBold]
              ParentFont = False
              ReadOnly = True
              TabOrder = 0
            end
            object DBEdit10: TDBEdit
              Left = 104
              Top = 24
              Width = 244
              Height = 21
              Color = clBtnFace
              DataField = 'NOME'
              DataSource = dsrVenda
              Font.Charset = ANSI_CHARSET
              Font.Color = clWindowText
              Font.Height = -11
              Font.Name = 'Verdana'
              Font.Style = [fsBold]
              ParentFont = False
              ReadOnly = True
              TabOrder = 1
            end
            object DBEdit11: TDBEdit
              Left = 8
              Top = 66
              Width = 81
              Height = 21
              Color = clBtnFace
              DataField = 'VALOR_VENDA'
              DataSource = dsrVenda
              Font.Charset = ANSI_CHARSET
              Font.Color = clWindowText
              Font.Height = -11
              Font.Name = 'Verdana'
              Font.Style = [fsBold]
              ParentFont = False
              ReadOnly = True
              TabOrder = 2
            end
            object DBEdit12: TDBEdit
              Left = 104
              Top = 66
              Width = 73
              Height = 21
              Color = clBtnFace
              DataField = 'DESCONTO'
              DataSource = dsrVenda
              Font.Charset = ANSI_CHARSET
              Font.Color = clWindowText
              Font.Height = -11
              Font.Name = 'Verdana'
              Font.Style = [fsBold]
              ParentFont = False
              ReadOnly = True
              TabOrder = 3
            end
            object DBEdit16: TDBEdit
              Left = 184
              Top = 66
              Width = 49
              Height = 21
              Color = clBtnFace
              DataField = 'QUANTIDADE'
              DataSource = dsrVenda
              Font.Charset = ANSI_CHARSET
              Font.Color = clWindowText
              Font.Height = -11
              Font.Name = 'Verdana'
              Font.Style = [fsBold]
              ParentFont = False
              ReadOnly = True
              TabOrder = 4
            end
            object DBEdit13: TDBEdit
              Left = 242
              Top = 66
              Width = 105
              Height = 21
              Color = clBtnFace
              DataField = 'VALOR_PAGO'
              DataSource = dsrVenda
              Font.Charset = ANSI_CHARSET
              Font.Color = clWindowText
              Font.Height = -11
              Font.Name = 'Verdana'
              Font.Style = [fsBold]
              ParentFont = False
              ReadOnly = True
              TabOrder = 5
            end
            object DBRadioGroup1: TDBRadioGroup
              Left = 194
              Top = 94
              Width = 153
              Height = 41
              Caption = ' Situa��o '
              Columns = 2
              DataField = 'VENDIDO'
              DataSource = dsrVenda
              Items.Strings = (
                'Vendido'
                'Devolvido')
              ReadOnly = True
              TabOrder = 6
              Values.Strings = (
                'S'
                'N')
            end
            object DBEdit15: TDBEdit
              Left = 104
              Top = 108
              Width = 81
              Height = 21
              Color = clBtnFace
              DataField = 'VALOR_ICMS'
              DataSource = dsrVenda
              Font.Charset = ANSI_CHARSET
              Font.Color = clWindowText
              Font.Height = -11
              Font.Name = 'Verdana'
              Font.Style = [fsBold]
              ParentFont = False
              ReadOnly = True
              TabOrder = 7
            end
            object DBEdit17: TDBEdit
              Left = 8
              Top = 108
              Width = 81
              Height = 21
              Color = clBtnFace
              DataField = 'ICMSVENDA'
              DataSource = dsrVenda
              Font.Charset = ANSI_CHARSET
              Font.Color = clWindowText
              Font.Height = -11
              Font.Name = 'Verdana'
              Font.Style = [fsBold]
              ParentFont = False
              ReadOnly = True
              TabOrder = 8
            end
          end
          object TabSheet3: TTabSheet
            Caption = 'Estat�stica'
            ImageIndex = 2
            object Label21: TLabel
              Left = 10
              Top = 4
              Width = 187
              Height = 13
              Caption = 'T E M P O    N O    E S T O Q U E'
            end
            object Bevel1: TBevel
              Left = 8
              Top = 18
              Width = 345
              Height = 7
              Shape = bsTopLine
            end
            object lbTempo: TLabel
              Left = 12
              Top = 22
              Width = 333
              Height = 31
              AutoSize = False
              Caption = 'lbTempo'
              Font.Charset = ANSI_CHARSET
              Font.Color = clWindowText
              Font.Height = -11
              Font.Name = 'Verdana'
              Font.Style = [fsBold]
              ParentFont = False
              WordWrap = True
            end
            object Label22: TLabel
              Left = 10
              Top = 52
              Width = 90
              Height = 13
              Caption = 'I M P O S T O S'
            end
            object Bevel2: TBevel
              Left = 8
              Top = 66
              Width = 345
              Height = 7
              Shape = bsTopLine
            end
            object lbICMS: TLabel
              Left = 12
              Top = 70
              Width = 333
              Height = 35
              AutoSize = False
              Caption = 'lbICMS'
              Font.Charset = ANSI_CHARSET
              Font.Color = clWindowText
              Font.Height = -11
              Font.Name = 'Verdana'
              Font.Style = [fsBold]
              ParentFont = False
              WordWrap = True
            end
          end
        end
      end
    end
  end
  object formStorage: TFormStorage
    Active = False
    MinMaxInfo.MinTrackHeight = 411
    MinMaxInfo.MinTrackWidth = 477
    UseRegistry = True
    StoredProps.Strings = (
      'grdDados.Zebra'
      'grdDados.ZebraColor'
      'grdDados.ZebraFontColor')
    StoredValues = <>
    Left = 156
    Top = 129
  end
  object PrinterMenu: TPopupMenu
    Left = 164
    Top = 121
  end
  object qrySelecionar: TIBQuery
    Database = dmoPrincipal.Database
    Transaction = traSelecionar
    AfterOpen = qrySelecionarAfterOpen
    BufferChunks = 100
    CachedUpdates = False
    Left = 244
    Top = 129
  end
  object dscSelecionar: TDataSource
    AutoEdit = False
    DataSet = qrySelecionar
    Left = 244
    Top = 185
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
    Left = 228
    Top = 321
  end
  object qryDetalhes: TIBQuery
    Database = dmoPrincipal.Database
    Transaction = traDetalhes
    AfterInsert = qryDetalhesAfterInsert
    AfterOpen = qryDetalhesAfterOpen
    BufferChunks = 100
    CachedUpdates = True
    SQL.Strings = (
      'SELECT'
      '  *'
      'FROM'
      '  INDIVIDUAIS'
      'WHERE'
      '  CODIGO = :CODIGO')
    UniDirectional = True
    UpdateObject = updDetalhes
    Left = 324
    Top = 129
    ParamData = <
      item
        DataType = ftInteger
        Name = 'CODIGO'
        ParamType = ptUnknown
      end>
  end
  object updDetalhes: TIBUpdateSQL
    ModifySQL.Strings = (
      'update Grupos'
      'set'
      '  GRUPO = :GRUPO'
      'where'
      '  CODIGO = :OLD_CODIGO')
    InsertSQL.Strings = (
      'insert into Grupos'
      '  (CODIGO, GRUPO)'
      'values'
      '  (:CODIGO, :GRUPO)')
    DeleteSQL.Strings = (
      'delete from Grupos'
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
  object qryCompra: TIBQuery
    Database = dmoPrincipal.Database
    Transaction = traCompra
    AfterOpen = qryCompraAfterOpen
    BufferChunks = 100
    CachedUpdates = False
    DataSource = dsrDetalhes
    SQL.Strings = (
      'SELECT'
      '  MOVIMENTOS.CODCLIENTE,'
      '  MOVIMENTOS.DATA,'
      '  CLIENTES.NOME,'
      '  (TEMPITENS.VALOR_UNITARIO - TEMPITENS.DESCONTO) AS PRECO,'
      '  TEMPITENS.ICMSCOMPRA,'
      '  TEMPITENS.VALOR_ICMSCOMPRA'
      'FROM'
      '  MOVIMENTOS,'
      '  CLIENTES,'
      '  TEMPITENS,'
      '  INDIVIDUAIS'
      'WHERE'
      '  (INDIVIDUAIS.CODIGO = :CODIGO) AND'
      '  (INDIVIDUAIS.CODITEM = TEMPITENS.CODIGO ) AND'
      '  (INDIVIDUAIS.CODPRODUTO = TEMPITENS.CODPRODUTO ) AND'
      '  (INDIVIDUAIS.CODMOVENTRADA = TEMPITENS.CODMOVIMENTO ) AND'
      '  (TEMPITENS.CODMOVIMENTO = MOVIMENTOS.CODIGO) AND'
      '  (MOVIMENTOS.CODCLIENTE = CLIENTES.CODIGO)'
      ' ')
    UniDirectional = True
    Left = 25
    Top = 107
    ParamData = <
      item
        DataType = ftInteger
        Name = 'CODIGO'
        ParamType = ptUnknown
      end>
  end
  object dsrCompra: TDataSource
    AutoEdit = False
    DataSet = qryCompra
    Left = 33
    Top = 179
  end
  object qryVenda: TIBQuery
    Database = dmoPrincipal.Database
    Transaction = traVenda
    AfterOpen = qryVendaAfterOpen
    BufferChunks = 100
    CachedUpdates = False
    DataSource = dsrDetalhes
    SQL.Strings = (
      'SELECT'
      '  ID.CODPRODUTO,'
      '  CL.NOME,'
      '  ID.VENDIDO,'
      '  ID.QUANTIDADE,'
      '  ID.VALOR_PAGO,'
      '  ID.VALOR_ICMS,'
      '  ID.VALOR_VENDA,'
      '  ID.DESCONTO,'
      '  ID.ICMSVENDA,'
      '  MV.CODCLIENTE,'
      '  MV.DATA'
      'FROM'
      '  INDIVIDUAIS ID,'
      '  MOVIMENTOS MV,'
      '  CLIENTES CL'
      'WHERE'
      '  ID.CODMOVSAIDA = MV.CODIGO AND'
      '  MV.CODCLIENTE  = CL.CODIGO AND'
      '  ID.CODIGO = :CODIGO'
      ' ')
    UniDirectional = True
    Left = 97
    Top = 115
    ParamData = <
      item
        DataType = ftInteger
        Name = 'CODIGO'
        ParamType = ptUnknown
      end>
  end
  object dsrVenda: TDataSource
    AutoEdit = False
    DataSet = qryVenda
    Left = 105
    Top = 163
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
    Left = 241
    Top = 77
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
    Left = 321
    Top = 77
  end
  object traCompra: TIBTransaction
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
    Left = 25
    Top = 77
  end
  object traVenda: TIBTransaction
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
    Left = 97
    Top = 77
  end
end
