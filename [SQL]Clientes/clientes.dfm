object formClientes: TformClientes
  Left = 359
  Top = 176
  Width = 539
  Height = 446
  BorderIcons = [biSystemMenu, biMaximize]
  Caption = 'Pessoas'
  Color = clBtnFace
  Font.Charset = ANSI_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Verdana'
  Font.Style = []
  KeyPreview = True
  OldCreateOrder = True
  Position = poDefault
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
    Width = 531
    Height = 400
    ActivePage = tabVisual
    Align = alClient
    MultiLine = True
    TabOrder = 0
    object tabVisual: TTabSheet
      Caption = '&Pesquisa e Sele��o'
      object Panel1: TPanel
        Left = 0
        Top = 0
        Width = 523
        Height = 372
        Align = alClient
        BevelOuter = bvLowered
        TabOrder = 0
        object Dock971: TDock97
          Left = 1
          Top = 1
          Width = 521
          Height = 46
          BoundLines = [blTop, blLeft, blRight]
          object ToolWindow971: TToolWindow97
            Left = 0
            Top = 0
            Caption = 'ToolWindow971'
            ClientAreaHeight = 41
            ClientAreaWidth = 506
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
          Top = 324
          Width = 521
          Height = 47
          BoundLines = [blTop, blBottom, blLeft, blRight]
          Position = dpBottom
          object ToolWindow972: TToolWindow97
            Left = 0
            Top = 0
            Caption = 'ToolWindow971'
            ClientAreaHeight = 41
            ClientAreaWidth = 506
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
              Width = 284
              Height = 21
              CharCase = ecUpperCase
              TabOrder = 1
              OnEnter = edtPesquisarEnter
              OnExit = edtPesquisarExit
              OnKeyPress = edtSelecionarKeyPress
            end
            object cbOcultos: TCheckBox
              Left = 334
              Top = -1
              Width = 83
              Height = 17
              Cursor = crHandPoint
              Caption = 'ver ocultos'
              Font.Charset = ANSI_CHARSET
              Font.Color = clNavy
              Font.Height = -11
              Font.Name = 'Verdana'
              Font.Style = []
              ParentFont = False
              TabOrder = 2
              OnClick = cbOcultosClick
            end
          end
        end
        object Dock972: TDock97
          Left = 436
          Top = 47
          Width = 86
          Height = 277
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
          Width = 435
          Height = 277
          Align = alClient
          BevelOuter = bvNone
          TabOrder = 3
          object lblWhere: TLabel
            Left = 0
            Top = 0
            Width = 435
            Height = 13
            Align = alTop
            Caption = 'lblWhere'
            Color = clInfoBk
            ParentColor = False
            Visible = False
          end
          object grdDados: Tzebdbgrid
            Tag = 1
            Left = 0
            Top = 13
            Width = 435
            Height = 236
            Cursor = crHandPoint
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
          object Dock974: TDock97
            Left = 0
            Top = 249
            Width = 435
            Height = 28
            BoundLines = [blTop, blBottom, blLeft, blRight]
            Color = clInfoBk
            Position = dpBottom
            object Toolbar973: TToolbar97
              Left = 0
              Top = 0
              Caption = 'Toolbar973'
              Color = clInfoBk
              CloseButton = False
              DockPos = 0
              FullSize = True
              TabOrder = 0
              object btnHistorico: TToolbarButton97
                Left = 90
                Top = 0
                Width = 90
                Height = 22
                Cursor = crHandPoint
                Color = clInfoBk
                Caption = 'Hist�rico'
                Font.Charset = ANSI_CHARSET
                Font.Color = clNavy
                Font.Height = -11
                Font.Name = 'Verdana'
                Font.Style = []
                ImageIndex = 0
                Images = dmoPrincipal.imgBotoesPeq
                Layout = blGlyphRight
                ParentFont = False
                OnClick = btnHistoricoClick
                OnMouseEnter = btnAdicionarMouseEnter
                OnMouseExit = btnAdicionarMouseExit
              end
              object btnArquivos: TToolbarButton97
                Left = 0
                Top = 0
                Width = 90
                Height = 22
                Cursor = crHandPoint
                Color = clInfoBk
                Caption = 'Arquivos'
                Font.Charset = ANSI_CHARSET
                Font.Color = clNavy
                Font.Height = -11
                Font.Name = 'Verdana'
                Font.Style = []
                ImageIndex = 0
                Images = dmoPrincipal.imgBotoesPeq
                Layout = blGlyphRight
                ParentFont = False
                OnClick = btnArquivosClick
                OnMouseEnter = btnAdicionarMouseEnter
                OnMouseExit = btnAdicionarMouseExit
              end
              object btnMais: TToolbarButton97
                Left = 257
                Top = 0
                Width = 83
                Height = 22
                Cursor = crHandPoint
                Color = clInfoBk
                DropdownMenu = MenuMais
                Caption = 'veja mais'
                Font.Charset = ANSI_CHARSET
                Font.Color = clBlack
                Font.Height = -11
                Font.Name = 'Verdana'
                Font.Style = []
                Layout = blGlyphRight
                ParentFont = False
                ParentShowHint = False
                ShowHint = True
                OnMouseEnter = btnAdicionarMouseEnter
                OnMouseExit = btnAdicionarMouseExit
              end
              object btnEmail: TToolbarButton97
                Left = 180
                Top = 0
                Width = 77
                Height = 22
                Cursor = crHandPoint
                Color = clInfoBk
                Caption = 'e-mail'
                Font.Charset = ANSI_CHARSET
                Font.Color = clNavy
                Font.Height = -11
                Font.Name = 'Verdana'
                Font.Style = []
                ImageIndex = 0
                Images = dmoPrincipal.imgBotoesPeq
                Layout = blGlyphRight
                ParentFont = False
                ParentShowHint = False
                ShowHint = True
                Visible = False
                OnClick = btnEmailClick
                OnMouseEnter = btnAdicionarMouseEnter
                OnMouseExit = btnAdicionarMouseExit
              end
            end
          end
        end
      end
    end
    object tabDetalhe: TTabSheet
      Tag = 1
      Caption = '&Detalhes'
      object Dock975: TDock97
        Left = 437
        Top = 0
        Width = 86
        Height = 372
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
            Caption = '&Cancelar'
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
        Width = 437
        Height = 372
        Align = alClient
        BevelOuter = bvLowered
        TabOrder = 1
        object Label24: TLabel
          Left = 8
          Top = 80
          Width = 45
          Height = 13
          Caption = 'N�mero'
          FocusControl = DBEdit19
        end
        object Label25: TLabel
          Left = 94
          Top = 80
          Width = 80
          Height = 13
          Caption = 'Complemento'
          FocusControl = DBEdit20
        end
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
          Width = 435
          Height = 80
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
            Left = 80
            Top = 3
            Width = 33
            Height = 13
            Caption = 'Nome'
            FocusControl = dedNOME
          end
          object DBEdit1: TDBEdit
            Left = 8
            Top = 19
            Width = 64
            Height = 21
            TabStop = False
            Color = clBtnFace
            DataField = 'CODIGO'
            DataSource = dsrDetalhes
            Font.Charset = ANSI_CHARSET
            Font.Color = clWindowText
            Font.Height = -11
            Font.Name = 'Verdana'
            Font.Style = [fsBold]
            ParentFont = False
            ReadOnly = True
            TabOrder = 0
          end
          object dedNOME: TDBEdit
            Left = 80
            Top = 19
            Width = 265
            Height = 21
            CharCase = ecUpperCase
            DataField = 'NOME'
            DataSource = dsrDetalhes
            TabOrder = 1
            OnEnter = edtPesquisarEnter
            OnExit = edtPesquisarExit
          end
          object dbrPessoa: TDBRadioGroup
            Left = 8
            Top = 42
            Width = 337
            Height = 33
            Caption = ' Representa��o '
            Columns = 2
            DataField = 'PESSOAFISICA'
            DataSource = dsrDetalhes
            Items.Strings = (
              'Pessoa f�sica'
              'Pessoa jur�dica')
            TabOrder = 2
            Values.Strings = (
              'F'
              'J')
            OnChange = dbrPessoaChange
          end
        end
        object pgcDetalhes: TPageControl
          Left = 1
          Top = 81
          Width = 435
          Height = 290
          ActivePage = tabEndereco
          Align = alClient
          TabOrder = 2
          object tabPessoaFisica: TTabSheet
            Caption = 'Pessoa &f�sica'
            object Label7: TLabel
              Left = 8
              Top = 0
              Width = 66
              Height = 13
              Caption = 'Nascimento'
              FocusControl = DBEdit3
            end
            object Label8: TLabel
              Left = 104
              Top = 0
              Width = 72
              Height = 13
              Caption = 'Naturalidade'
              FocusControl = DBEdit4
            end
            object Label9: TLabel
              Left = 8
              Top = 40
              Width = 29
              Height = 13
              Caption = 'Sexo'
            end
            object Label10: TLabel
              Left = 144
              Top = 40
              Width = 64
              Height = 13
              Caption = 'Estado civil'
            end
            object Label11: TLabel
              Left = 8
              Top = 80
              Width = 17
              Height = 13
              Caption = 'RG'
              FocusControl = DBEdit5
            end
            object Label12: TLabel
              Left = 176
              Top = 80
              Width = 22
              Height = 13
              Caption = 'CPF'
              FocusControl = DBEdit6
            end
            object Label13: TLabel
              Left = 8
              Top = 120
              Width = 72
              Height = 13
              Caption = 'Nome do Pai'
              FocusControl = DBEdit7
            end
            object Label14: TLabel
              Left = 8
              Top = 160
              Width = 78
              Height = 13
              Caption = 'Nome da M�e'
              FocusControl = DBEdit8
            end
            object Label31: TLabel
              Left = 8
              Top = 200
              Width = 36
              Height = 13
              Caption = 'Renda'
              FocusControl = DBEdit26
            end
            object Label19: TLabel
              Left = 112
              Top = 200
              Width = 52
              Height = 13
              Caption = 'Profiss�o'
              FocusControl = DBEdit2
            end
            object Label21: TLabel
              Left = 120
              Top = 80
              Width = 50
              Height = 13
              Caption = 'Org.Exp.'
              FocusControl = DBEdit30
            end
            object DBEdit3: TDBEdit
              Left = 8
              Top = 16
              Width = 89
              Height = 21
              DataField = 'DATANASC'
              DataSource = dsrDetalhes
              TabOrder = 0
              OnEnter = edtPesquisarEnter
              OnExit = edtPesquisarExit
            end
            object DBEdit4: TDBEdit
              Left = 104
              Top = 16
              Width = 241
              Height = 21
              CharCase = ecUpperCase
              DataField = 'NATURALIDADE'
              DataSource = dsrDetalhes
              TabOrder = 1
              OnEnter = edtPesquisarEnter
              OnExit = edtPesquisarExit
            end
            object DBComboBox1: TDBComboBox
              Tag = 1
              Left = 8
              Top = 56
              Width = 129
              Height = 21
              Style = csDropDownList
              DataField = 'SEXO'
              DataSource = dsrDetalhes
              ItemHeight = 13
              Items.Strings = (
                'FEMININO'
                'MASCULINO')
              TabOrder = 2
            end
            object DBComboBox2: TDBComboBox
              Tag = 1
              Left = 144
              Top = 56
              Width = 201
              Height = 21
              Style = csDropDownList
              DataField = 'ESTADOCIVIL'
              DataSource = dsrDetalhes
              ItemHeight = 13
              Items.Strings = (
                'AMAZEADO'
                'CASADO'
                'DESQUITADO'
                'DIVORCIADO'
                'SOLTEIRO'
                'VIUVO')
              TabOrder = 3
            end
            object DBEdit5: TDBEdit
              Left = 8
              Top = 96
              Width = 105
              Height = 21
              DataField = 'RG'
              DataSource = dsrDetalhes
              TabOrder = 4
              OnEnter = edtPesquisarEnter
              OnExit = edtPesquisarExit
            end
            object DBEdit6: TDBEdit
              Left = 176
              Top = 96
              Width = 169
              Height = 21
              DataField = 'CPF'
              DataSource = dsrDetalhes
              TabOrder = 6
              OnEnter = edtPesquisarEnter
              OnExit = DBEdit6Exit
            end
            object DBEdit7: TDBEdit
              Left = 8
              Top = 136
              Width = 337
              Height = 21
              CharCase = ecUpperCase
              DataField = 'PAI'
              DataSource = dsrDetalhes
              TabOrder = 7
              OnEnter = edtPesquisarEnter
              OnExit = edtPesquisarExit
            end
            object DBEdit8: TDBEdit
              Left = 8
              Top = 176
              Width = 337
              Height = 21
              CharCase = ecUpperCase
              DataField = 'MAE'
              DataSource = dsrDetalhes
              TabOrder = 8
              OnEnter = edtPesquisarEnter
              OnExit = edtPesquisarExit
            end
            object DBEdit26: TDBEdit
              Left = 8
              Top = 216
              Width = 89
              Height = 21
              DataField = 'SALARIO'
              DataSource = dsrDetalhes
              TabOrder = 9
              OnEnter = edtPesquisarEnter
              OnExit = edtPesquisarExit
            end
            object DBEdit2: TDBEdit
              Tag = 2
              Left = 112
              Top = 216
              Width = 233
              Height = 21
              CharCase = ecUpperCase
              DataField = 'PROFISSAO'
              DataSource = dsrDetalhes
              TabOrder = 10
              OnEnter = edtPesquisarEnter
              OnExit = edtPesquisarExit
            end
            object DBEdit30: TDBEdit
              Left = 120
              Top = 96
              Width = 49
              Height = 21
              CharCase = ecUpperCase
              DataField = 'ORGAOEXP'
              DataSource = dsrDetalhes
              TabOrder = 5
              OnEnter = edtPesquisarEnter
              OnExit = edtPesquisarExit
            end
          end
          object tabPessoaJuridica: TTabSheet
            Caption = 'Pessoa j&ur�dica'
            TabVisible = False
            object Label15: TLabel
              Left = 8
              Top = 40
              Width = 29
              Height = 13
              Caption = 'CNPJ'
              FocusControl = DBEdit9
            end
            object Label16: TLabel
              Left = 176
              Top = 40
              Width = 104
              Height = 13
              Caption = 'Inscri��o Estadual'
              FocusControl = DBEdit10
            end
            object Label17: TLabel
              Left = 8
              Top = 80
              Width = 45
              Height = 13
              Caption = 'Contato'
              FocusControl = DBEdit11
            end
            object Label18: TLabel
              Left = 8
              Top = 120
              Width = 83
              Height = 13
              Caption = 'Data funda��o'
              FocusControl = DBEdit12
            end
            object Label36: TLabel
              Left = 8
              Top = 0
              Width = 73
              Height = 13
              Caption = 'Raz�o Social'
              FocusControl = DBEdit29
            end
            object DBEdit9: TDBEdit
              Left = 8
              Top = 56
              Width = 161
              Height = 21
              DataField = 'CGC'
              DataSource = dsrDetalhes
              TabOrder = 1
              OnEnter = edtPesquisarEnter
              OnExit = edtPesquisarExit
            end
            object DBEdit10: TDBEdit
              Left = 176
              Top = 56
              Width = 161
              Height = 21
              CharCase = ecUpperCase
              DataField = 'IE'
              DataSource = dsrDetalhes
              TabOrder = 2
              OnEnter = edtPesquisarEnter
              OnExit = edtPesquisarExit
            end
            object DBEdit11: TDBEdit
              Left = 8
              Top = 96
              Width = 329
              Height = 21
              CharCase = ecUpperCase
              DataField = 'CONTATO'
              DataSource = dsrDetalhes
              TabOrder = 3
              OnEnter = edtPesquisarEnter
              OnExit = edtPesquisarExit
            end
            object DBEdit12: TDBEdit
              Left = 8
              Top = 136
              Width = 97
              Height = 21
              DataField = 'DATAFUND'
              DataSource = dsrDetalhes
              TabOrder = 4
              OnEnter = edtPesquisarEnter
              OnExit = edtPesquisarExit
            end
            object DBEdit29: TDBEdit
              Left = 8
              Top = 16
              Width = 329
              Height = 21
              CharCase = ecUpperCase
              DataField = 'RAZAOSOCIAL'
              DataSource = dsrDetalhes
              TabOrder = 0
              OnEnter = edtPesquisarEnter
              OnExit = edtPesquisarExit
            end
            object DBCheckBox1: TDBCheckBox
              Left = 184
              Top = 136
              Width = 97
              Height = 17
              Caption = 'Contrato'
              DataField = 'CONTRATO'
              DataSource = dsrDetalhes
              TabOrder = 5
              ValueChecked = 'S'
              ValueUnchecked = 'N'
            end
          end
          object tabEndereco: TTabSheet
            Caption = '&Endere�o'
            object lblCIDADE: TLabel
              Left = 152
              Top = 0
              Width = 44
              Height = 13
              Cursor = crHandPoint
              Caption = '&Cidade'
              FocusControl = DBEdit13
              Font.Charset = ANSI_CHARSET
              Font.Color = clMaroon
              Font.Height = -11
              Font.Name = 'Verdana'
              Font.Style = [fsBold, fsUnderline]
              ParentFont = False
              OnClick = lblCIDADEClick
            end
            object lblESTADO: TLabel
              Left = 8
              Top = 0
              Width = 44
              Height = 13
              Cursor = crHandPoint
              Caption = '&Estado'
              FocusControl = DBEdit14
              Font.Charset = ANSI_CHARSET
              Font.Color = clMaroon
              Font.Height = -11
              Font.Name = 'Verdana'
              Font.Style = [fsBold, fsUnderline]
              ParentFont = False
              OnClick = lblESTADOClick
            end
            object lblLOCALIZACAO: TLabel
              Left = 8
              Top = 40
              Width = 70
              Height = 13
              Cursor = crHandPoint
              Caption = '&Localidade'
              FocusControl = DBEdit17
              Font.Charset = ANSI_CHARSET
              Font.Color = clMaroon
              Font.Height = -11
              Font.Name = 'Verdana'
              Font.Style = [fsBold, fsUnderline]
              ParentFont = False
              OnClick = lblLOCALIZACAOClick
            end
            object Label22: TLabel
              Left = 8
              Top = 80
              Width = 45
              Height = 13
              Caption = 'N�mero'
              FocusControl = DBEdit19
            end
            object Label23: TLabel
              Left = 78
              Top = 80
              Width = 80
              Height = 13
              Caption = 'Complemento'
              FocusControl = DBEdit20
            end
            object Label26: TLabel
              Left = 96
              Top = 120
              Width = 35
              Height = 13
              Caption = 'Bairro'
              FocusControl = DBEdit20
            end
            object Label27: TLabel
              Left = 8
              Top = 120
              Width = 23
              Height = 13
              Caption = 'CEP'
              FocusControl = DBEdit19
            end
            object Label28: TLabel
              Left = 8
              Top = 160
              Width = 49
              Height = 13
              Caption = 'Telefone'
              FocusControl = DBEdit23
            end
            object Label29: TLabel
              Left = 120
              Top = 160
              Width = 22
              Height = 13
              Caption = 'FAX'
              FocusControl = DBEdit24
            end
            object Label30: TLabel
              Left = 232
              Top = 160
              Width = 41
              Height = 13
              Caption = 'Celular'
              FocusControl = DBEdit25
            end
            object Label32: TLabel
              Left = 8
              Top = 200
              Width = 188
              Height = 13
              Caption = 'Internet mail (correio eletr�nico)'
              FocusControl = DBEdit27
            end
            object Label47: TLabel
              Left = 270
              Top = 80
              Width = 73
              Height = 13
              Caption = 'Dist�ncia KM'
              FocusControl = DBEdit37
            end
            object DBEdit13: TDBEdit
              Left = 152
              Top = 16
              Width = 41
              Height = 21
              DataField = 'CIDADE'
              DataSource = dsrDetalhes
              TabOrder = 1
              OnEnter = edtPesquisarEnter
              OnExit = edtPesquisarExit
            end
            object DBEdit14: TDBEdit
              Left = 8
              Top = 16
              Width = 25
              Height = 21
              CharCase = ecUpperCase
              DataField = 'ESTADO'
              DataSource = dsrDetalhes
              TabOrder = 0
              OnEnter = edtPesquisarEnter
              OnExit = edtPesquisarExit
            end
            object DBEdit15: TDBEdit
              Left = 40
              Top = 16
              Width = 105
              Height = 21
              TabStop = False
              Color = clBtnFace
              DataField = 'ESTADO'
              DataSource = dmoRelacClientes.dsrEstado
              Font.Charset = ANSI_CHARSET
              Font.Color = clWindowText
              Font.Height = -11
              Font.Name = 'Verdana'
              Font.Style = [fsBold]
              ParentFont = False
              ReadOnly = True
              TabOrder = 10
            end
            object DBEdit16: TDBEdit
              Left = 200
              Top = 16
              Width = 145
              Height = 21
              TabStop = False
              Color = clBtnFace
              DataField = 'CIDADE'
              DataSource = dmoRelacClientes.dsrCidades
              Font.Charset = ANSI_CHARSET
              Font.Color = clWindowText
              Font.Height = -11
              Font.Name = 'Verdana'
              Font.Style = [fsBold]
              ParentFont = False
              ReadOnly = True
              TabOrder = 11
            end
            object DBEdit17: TDBEdit
              Left = 8
              Top = 56
              Width = 49
              Height = 21
              DataField = 'LOCALIZACAO'
              DataSource = dsrDetalhes
              TabOrder = 2
              OnEnter = DBEdit17Enter
              OnExit = DBEdit17Exit
            end
            object DBEdit18: TDBEdit
              Left = 64
              Top = 56
              Width = 281
              Height = 21
              TabStop = False
              Color = clBtnFace
              DataField = 'LOGRADOURO'
              DataSource = dmoRelacClientes.dsrLocalidades
              Font.Charset = ANSI_CHARSET
              Font.Color = clWindowText
              Font.Height = -11
              Font.Name = 'Verdana'
              Font.Style = [fsBold]
              ParentFont = False
              ReadOnly = True
              TabOrder = 12
            end
            object DBEdit19: TDBEdit
              Left = 8
              Top = 96
              Width = 65
              Height = 21
              DataField = 'NUMERO'
              DataSource = dsrDetalhes
              TabOrder = 3
              OnEnter = edtPesquisarEnter
              OnExit = edtPesquisarExit
            end
            object DBEdit20: TDBEdit
              Left = 78
              Top = 96
              Width = 187
              Height = 21
              CharCase = ecUpperCase
              DataField = 'COMPLEMENTO'
              DataSource = dsrDetalhes
              TabOrder = 4
              OnEnter = edtPesquisarEnter
              OnExit = edtPesquisarExit
            end
            object DBEdit21: TDBEdit
              Left = 8
              Top = 136
              Width = 81
              Height = 21
              TabStop = False
              Color = clBtnFace
              DataField = 'CEP'
              DataSource = dmoRelacClientes.dsrLocalidades
              Font.Charset = ANSI_CHARSET
              Font.Color = clWindowText
              Font.Height = -11
              Font.Name = 'Verdana'
              Font.Style = [fsBold]
              ParentFont = False
              ReadOnly = True
              TabOrder = 13
            end
            object DBEdit22: TDBEdit
              Left = 96
              Top = 136
              Width = 249
              Height = 21
              TabStop = False
              Color = clBtnFace
              DataField = 'BAIRRO'
              DataSource = dmoRelacClientes.dsrBairros
              Font.Charset = ANSI_CHARSET
              Font.Color = clWindowText
              Font.Height = -11
              Font.Name = 'Verdana'
              Font.Style = [fsBold]
              ParentFont = False
              ReadOnly = True
              TabOrder = 14
            end
            object DBEdit23: TDBEdit
              Left = 8
              Top = 176
              Width = 105
              Height = 21
              DataField = 'FONE'
              DataSource = dsrDetalhes
              TabOrder = 6
              OnEnter = edtPesquisarEnter
              OnExit = edtPesquisarExit
            end
            object DBEdit24: TDBEdit
              Left = 120
              Top = 176
              Width = 105
              Height = 21
              DataField = 'FAX'
              DataSource = dsrDetalhes
              TabOrder = 7
              OnEnter = edtPesquisarEnter
              OnExit = edtPesquisarExit
            end
            object DBEdit25: TDBEdit
              Left = 232
              Top = 176
              Width = 113
              Height = 21
              DataField = 'CELULAR'
              DataSource = dsrDetalhes
              TabOrder = 8
              OnEnter = edtPesquisarEnter
              OnExit = edtPesquisarExit
            end
            object DBEdit27: TDBEdit
              Tag = 2
              Left = 8
              Top = 216
              Width = 337
              Height = 21
              DataField = 'EMAIL'
              DataSource = dsrDetalhes
              TabOrder = 9
              OnEnter = edtPesquisarEnter
              OnExit = edtPesquisarExit
            end
            object DBEdit37: TDBEdit
              Left = 270
              Top = 96
              Width = 75
              Height = 21
              CharCase = ecUpperCase
              DataField = 'KMS'
              DataSource = dsrDetalhes
              TabOrder = 5
              OnEnter = edtPesquisarEnter
              OnExit = edtPesquisarExit
            end
          end
          object TabSheet3: TTabSheet
            Caption = 'Tipo'
            ImageIndex = 7
            object dbrTipo: TDBRadioGroup
              Left = 8
              Top = 3
              Width = 337
              Height = 126
              Caption = ' Tipo cadastro '
              DataField = 'TIPO'
              DataSource = dsrDetalhes
              Items.Strings = (
                'Cliente'
                'Associado'
                'Fornecedor'
                'Transportador'
                'Terceiro')
              TabOrder = 0
              Values.Strings = (
                'C'
                'A'
                'F'
                'T'
                '3')
            end
          end
          object tabCredito: TTabSheet
            Caption = 'Cr�dito'
            ImageIndex = 6
            object Label37: TLabel
              Left = 8
              Top = 0
              Width = 36
              Height = 13
              Caption = 'Renda'
              FocusControl = DBEdit31
            end
            object Label38: TLabel
              Left = 8
              Top = 40
              Width = 80
              Height = 13
              Caption = 'Limite Cr�dito'
              FocusControl = dedLIMITECREDITO
            end
            object DBEdit31: TDBEdit
              Left = 8
              Top = 16
              Width = 97
              Height = 21
              DataField = 'SALARIO'
              DataSource = dsrDetalhes
              TabOrder = 0
              OnEnter = edtPesquisarEnter
              OnExit = edtPesquisarExit
            end
            object dedLIMITECREDITO: TDBEdit
              Left = 8
              Top = 56
              Width = 97
              Height = 21
              DataField = 'LIMITECREDITO'
              DataSource = dsrDetalhes
              TabOrder = 1
              OnEnter = edtPesquisarEnter
              OnExit = edtPesquisarExit
            end
            object dbrTIPOBLOQUEIO: TDBRadioGroup
              Left = 8
              Top = 144
              Width = 337
              Height = 89
              Caption = ' Configura��es de bloqueio '
              DataField = 'TIPO_BLOQUEIO'
              DataSource = dsrDetalhes
              Items.Strings = (
                'Autom�tico - Tempo devedor ou Limite de cr�dito'
                'Manual - permanentemente Bloqueado'
                'Manual - permanentemente Liberado')
              TabOrder = 2
              Values.Strings = (
                'A'
                'B'
                'L')
            end
            object dbrTIPOIMPEDIMENTO: TDBRadioGroup
              Left = 120
              Top = 0
              Width = 225
              Height = 129
              Caption = ' Impedimentos '
              DataField = 'TIPO_IMPEDIMENTO'
              DataSource = dsrDetalhes
              Items.Strings = (
                'Nenhuma restri��o'
                'SCPC'
                'SERASA'
                'Protesto em Cart�rio'
                'Outros - use Observ��es')
              TabOrder = 3
              Values.Strings = (
                'N'
                'C'
                'E'
                'P'
                'O')
            end
          end
          object tabOutros: TTabSheet
            Caption = '&Outras informa��es'
            object Label33: TLabel
              Left = 8
              Top = 0
              Width = 80
              Height = 13
              Caption = 'Data cadastro'
              FocusControl = DBEdit28
            end
            object Label34: TLabel
              Left = 136
              Top = 0
              Width = 74
              Height = 13
              Caption = 'Observa��es'
              FocusControl = DBMemo1
            end
            object Label35: TLabel
              Left = 8
              Top = 40
              Width = 24
              Height = 13
              Caption = 'Foto'
              FocusControl = imagem
            end
            object DBEdit28: TDBEdit
              Left = 8
              Top = 16
              Width = 113
              Height = 21
              DataField = 'DATACADAST'
              DataSource = dsrDetalhes
              TabOrder = 0
              OnEnter = edtPesquisarEnter
              OnExit = edtPesquisarExit
            end
            object DBMemo1: TDBMemo
              Tag = 3
              Left = 136
              Top = 16
              Width = 201
              Height = 153
              DataField = 'OBSERVACOES'
              DataSource = dsrDetalhes
              TabOrder = 1
              OnEnter = edtPesquisarEnter
              OnExit = edtPesquisarExit
            end
            object imagem: TDBImage
              Left = 8
              Top = 56
              Width = 113
              Height = 113
              DataField = 'FOTO'
              PopupMenu = FotoMenu
              Stretch = True
              TabOrder = 2
            end
            object DBCheckBox2: TDBCheckBox
              Tag = 2
              Left = 8
              Top = 179
              Width = 105
              Height = 17
              Caption = 'Comissionado'
              DataField = 'COMISSIONADO'
              DataSource = dsrDetalhes
              TabOrder = 3
              ValueChecked = 'S'
              ValueUnchecked = 'N'
            end
            object DBCheckBox3: TDBCheckBox
              Tag = 2
              Left = 8
              Top = 203
              Width = 105
              Height = 17
              Caption = 'Oculto'
              DataField = 'OCULTO'
              DataSource = dsrDetalhes
              TabOrder = 4
              ValueChecked = 'S'
              ValueUnchecked = 'N'
            end
          end
          object tabSeguranca: TTabSheet
            Caption = 'Seguran�a'
            ImageIndex = 6
            object Panel4: TPanel
              Left = 0
              Top = 0
              Width = 427
              Height = 33
              Align = alTop
              BevelOuter = bvNone
              Caption = 'Seguran�a do Usu�rio'
              Font.Charset = ANSI_CHARSET
              Font.Color = clMaroon
              Font.Height = -16
              Font.Name = 'Verdana'
              Font.Style = [fsBold]
              ParentFont = False
              TabOrder = 0
            end
            object PageControl1: TPageControl
              Left = 0
              Top = 33
              Width = 427
              Height = 229
              ActivePage = TabSheet2
              Align = alClient
              TabOrder = 1
              object TabSheet1: TTabSheet
                Caption = 'Login'
                object Label20: TLabel
                  Left = 8
                  Top = 8
                  Width = 114
                  Height = 13
                  Caption = 'Usu�rio (username)'
                  FocusControl = DBEdit38
                end
                object Bevel2: TBevel
                  Left = 6
                  Top = 58
                  Width = 410
                  Height = 9
                  Shape = bsTopLine
                end
                object Label50: TLabel
                  Left = 8
                  Top = 144
                  Width = 169
                  Height = 13
                  Cursor = crHandPoint
                  Caption = '&Empresa de acesso inicial'
                  FocusControl = DBEdit41
                  Font.Charset = ANSI_CHARSET
                  Font.Color = clMaroon
                  Font.Height = -11
                  Font.Name = 'Verdana'
                  Font.Style = [fsBold, fsUnderline]
                  ParentFont = False
                  OnClick = Label50Click
                end
                object Bevel1: TBevel
                  Left = 6
                  Top = 106
                  Width = 410
                  Height = 9
                  Shape = bsTopLine
                end
                object DBEdit38: TDBEdit
                  Left = 8
                  Top = 24
                  Width = 145
                  Height = 21
                  DataField = 'NOMEUSER'
                  DataSource = dsrDetalhes
                  TabOrder = 0
                  OnEnter = edtPesquisarEnter
                  OnExit = edtPesquisarExit
                end
                object dbcInternet: TDBCheckBox
                  Left = 8
                  Top = 72
                  Width = 249
                  Height = 17
                  Caption = 'Acesso Remoto - Empresa1 Reloaded'
                  DataField = 'INTERNET'
                  DataSource = dsrDetalhes
                  TabOrder = 1
                  ValueChecked = 'S'
                  ValueUnchecked = 'N'
                end
                object dbcMultiempresa: TDBCheckBox
                  Left = 8
                  Top = 120
                  Width = 266
                  Height = 17
                  Caption = 'Acesso a Todas as Empresas do Sistema'
                  DataField = 'MUDAEMPRESA'
                  DataSource = dsrDetalhes
                  TabOrder = 2
                  ValueChecked = 'S'
                  ValueUnchecked = 'N'
                end
                object DBEdit41: TDBEdit
                  Left = 8
                  Top = 160
                  Width = 73
                  Height = 21
                  DataField = 'CODEMPRESA'
                  DataSource = dsrDetalhes
                  TabOrder = 3
                  OnEnter = DBEdit17Enter
                  OnExit = edtPesquisarExit
                end
                object DBEdit42: TDBEdit
                  Left = 88
                  Top = 160
                  Width = 329
                  Height = 21
                  TabStop = False
                  Color = clBtnFace
                  DataField = 'NOME'
                  Font.Charset = ANSI_CHARSET
                  Font.Color = clWindowText
                  Font.Height = -11
                  Font.Name = 'Verdana'
                  Font.Style = [fsBold]
                  ParentFont = False
                  ReadOnly = True
                  TabOrder = 4
                end
              end
              object TabSheet2: TTabSheet
                Caption = 'Privil�gios'
                ImageIndex = 1
                object Bevel3: TBevel
                  Left = 6
                  Top = 106
                  Width = 410
                  Height = 9
                  Shape = bsTopLine
                end
                object Label48: TLabel
                  Left = 8
                  Top = 120
                  Width = 159
                  Height = 13
                  Caption = 'Desconto M�ximo na Venda'
                  FocusControl = DBEdit39
                end
                object dbcFinanceiro: TDBCheckBox
                  Left = 8
                  Top = 8
                  Width = 97
                  Height = 17
                  Caption = 'Financeiro'
                  DataField = 'FINANCEIRO'
                  DataSource = dsrDetalhes
                  TabOrder = 0
                  ValueChecked = 'S'
                  ValueUnchecked = 'N'
                end
                object dbcEstorno: TDBCheckBox
                  Left = 8
                  Top = 24
                  Width = 97
                  Height = 17
                  Caption = 'Estorno'
                  DataField = 'ESTORNO'
                  DataSource = dsrDetalhes
                  TabOrder = 1
                  ValueChecked = 'S'
                  ValueUnchecked = 'N'
                end
                object dbcVendedor: TDBCheckBox
                  Left = 8
                  Top = 40
                  Width = 121
                  Height = 17
                  Caption = 'Troca vendedor'
                  DataField = 'TROCAVENDEDOR'
                  DataSource = dsrDetalhes
                  TabOrder = 2
                  ValueChecked = 'S'
                  ValueUnchecked = 'N'
                end
                object dbcSequencia: TDBCheckBox
                  Left = 8
                  Top = 56
                  Width = 121
                  Height = 17
                  Caption = 'Seq��ncia'
                  DataField = 'SEQUENCIAS'
                  DataSource = dsrDetalhes
                  TabOrder = 3
                  ValueChecked = 'S'
                  ValueUnchecked = 'N'
                end
                object dbcRecalculo: TDBCheckBox
                  Left = 8
                  Top = 72
                  Width = 121
                  Height = 17
                  Caption = 'Rec�lculo'
                  DataField = 'RECALCULO'
                  DataSource = dsrDetalhes
                  TabOrder = 4
                  ValueChecked = 'S'
                  ValueUnchecked = 'N'
                end
                object dbcCusto: TDBCheckBox
                  Left = 136
                  Top = 8
                  Width = 97
                  Height = 17
                  Caption = 'Custo'
                  DataField = 'CUSTO'
                  DataSource = dsrDetalhes
                  TabOrder = 5
                  ValueChecked = 'S'
                  ValueUnchecked = 'N'
                end
                object dbcRecebimento: TDBCheckBox
                  Left = 136
                  Top = 24
                  Width = 105
                  Height = 17
                  Caption = 'Recebimento'
                  DataField = 'RECEBIMENTO'
                  DataSource = dsrDetalhes
                  TabOrder = 6
                  ValueChecked = 'S'
                  ValueUnchecked = 'N'
                end
                object dbcCompras: TDBCheckBox
                  Left = 136
                  Top = 40
                  Width = 97
                  Height = 17
                  Caption = 'Compras'
                  DataField = 'COMPRAS'
                  DataSource = dsrDetalhes
                  TabOrder = 7
                  ValueChecked = 'S'
                  ValueUnchecked = 'N'
                end
                object dbcTransferencia: TDBCheckBox
                  Left = 136
                  Top = 56
                  Width = 97
                  Height = 17
                  Caption = 'Transfer�ncia'
                  DataField = 'TRANSFERENCIA'
                  DataSource = dsrDetalhes
                  TabOrder = 8
                  ValueChecked = 'S'
                  ValueUnchecked = 'N'
                end
                object dbcRelatorios: TDBCheckBox
                  Left = 136
                  Top = 71
                  Width = 97
                  Height = 17
                  Caption = 'Relat�rios'
                  DataField = 'RELATORIOS'
                  DataSource = dsrDetalhes
                  TabOrder = 9
                  ValueChecked = 'S'
                  ValueUnchecked = 'N'
                end
                object DBCheckBox4: TDBCheckBox
                  Left = 256
                  Top = 23
                  Width = 97
                  Height = 17
                  Caption = 'Venda Direta'
                  DataField = 'VENDADIRETA'
                  DataSource = dsrDetalhes
                  TabOrder = 10
                  ValueChecked = 'S'
                  ValueUnchecked = 'N'
                end
                object DBCheckBox5: TDBCheckBox
                  Left = 256
                  Top = 7
                  Width = 97
                  Height = 17
                  Caption = 'T�cnico Login'
                  DataField = 'TECNICOLOGIN'
                  DataSource = dsrDetalhes
                  TabOrder = 11
                  ValueChecked = 'S'
                  ValueUnchecked = 'N'
                end
                object DBCheckBox6: TDBCheckBox
                  Left = 256
                  Top = 39
                  Width = 97
                  Height = 17
                  Caption = 'Fechamento'
                  DataField = 'FECHAMENTO'
                  DataSource = dsrDetalhes
                  TabOrder = 12
                  ValueChecked = 'S'
                  ValueUnchecked = 'N'
                end
                object DBEdit39: TDBEdit
                  Left = 8
                  Top = 136
                  Width = 89
                  Height = 21
                  DataField = 'DESCONTO'
                  DataSource = dsrDetalhes
                  TabOrder = 13
                  OnEnter = edtPesquisarEnter
                  OnExit = edtPesquisarExit
                end
              end
              object TabSheet4: TTabSheet
                Caption = 'Comissionamento'
                ImageIndex = 2
                object Label49: TLabel
                  Left = 8
                  Top = 8
                  Width = 50
                  Height = 13
                  Caption = 'Produtos'
                  FocusControl = DBEdit40
                end
                object Label39: TLabel
                  Left = 128
                  Top = 8
                  Width = 33
                  Height = 13
                  Caption = 'Pe�as'
                  FocusControl = DBEdit32
                end
                object Label40: TLabel
                  Left = 248
                  Top = 8
                  Width = 49
                  Height = 13
                  Caption = 'Servi�os'
                  FocusControl = DBEdit33
                end
                object DBEdit40: TDBEdit
                  Left = 8
                  Top = 24
                  Width = 105
                  Height = 21
                  DataField = 'PERCCOMIS_PROD'
                  DataSource = dsrDetalhes
                  TabOrder = 0
                  OnEnter = edtPesquisarEnter
                  OnExit = edtPesquisarExit
                end
                object DBEdit32: TDBEdit
                  Left = 128
                  Top = 24
                  Width = 105
                  Height = 21
                  DataField = 'PERCCOMIS_PECA'
                  DataSource = dsrDetalhes
                  TabOrder = 1
                  OnEnter = edtPesquisarEnter
                  OnExit = edtPesquisarExit
                end
                object DBEdit33: TDBEdit
                  Left = 248
                  Top = 24
                  Width = 105
                  Height = 21
                  DataField = 'PERCCOMIS_SERV'
                  DataSource = dsrDetalhes
                  TabOrder = 2
                  OnEnter = edtPesquisarEnter
                  OnExit = edtPesquisarExit
                end
                object DBRadioGroup1: TDBRadioGroup
                  Left = 8
                  Top = 56
                  Width = 346
                  Height = 49
                  Caption = ' Efetuar c�lculo no evento '
                  Columns = 2
                  DataField = 'PERCCOMIS_CALCULO'
                  DataSource = dsrDetalhes
                  Items.Strings = (
                    'Faturamento'
                    'Recebimento')
                  TabOrder = 3
                  Values.Strings = (
                    'F'
                    'R')
                end
              end
            end
          end
        end
      end
    end
  end
  object Barra: TStatusBar
    Left = 0
    Top = 400
    Width = 531
    Height = 19
    Color = clWhite
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clMaroon
    Font.Height = -11
    Font.Name = 'Verdana'
    Font.Style = [fsBold]
    Panels = <
      item
        Alignment = taCenter
        Width = 120
      end
      item
        Width = 50
      end>
    SimplePanel = True
    UseSystemFont = False
  end
  object PrinterMenu: TPopupMenu
    Left = 52
    Top = 561
    object Grade1: TMenuItem
      Caption = '&Grade'
      OnClick = Grade1Click
    end
    object N6: TMenuItem
      Caption = '-'
    end
    object Todososclientes1: TMenuItem
      Caption = '&Todos os clientes'
    end
  end
  object qrySelecionar: TIBQuery
    Database = dmoPrincipal.Database
    Transaction = traSelecionar
    AfterOpen = qrySelecionarAfterOpen
    AfterScroll = qrySelecionarAfterScroll
    BufferChunks = 100
    CachedUpdates = False
    SQL.Strings = (
      'SELECT * FROM CLIENTES')
    UniDirectional = True
    Left = 588
    Top = 201
  end
  object dscSelecionar: TDataSource
    AutoEdit = False
    DataSet = cdsSelecionar
    Left = 660
    Top = 265
  end
  object GridMenu: TPopupMenu
    OnPopup = GridMenuPopup
    Left = 116
    Top = 569
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
    Left = 180
    Top = 577
  end
  object qryDetalhes: TIBQuery
    Database = dmoPrincipal.Database
    Transaction = dmoPrincipal.traDefault
    BufferChunks = 100
    CachedUpdates = False
    SQL.Strings = (
      'SELECT '
      '* FROM CLIENTES'
      'WHERE CODIGO = :CODIGO ')
    UniDirectional = True
    Left = 756
    Top = 201
    ParamData = <
      item
        DataType = ftInteger
        Name = 'CODIGO'
        ParamType = ptUnknown
      end>
  end
  object dsrDetalhes: TDataSource
    AutoEdit = False
    DataSet = cdsDetalhes
    Left = 828
    Top = 257
  end
  object FotoMenu: TPopupMenu
    Left = 377
    Top = 579
    object Abrirdoarquivo1: TMenuItem
      Caption = '&Abrir do arquivo...'
      OnClick = Abrirdoarquivo1Click
    end
    object Colardareadetransferncia1: TMenuItem
      Caption = '&Colar (da �rea de transfer�ncia)'
      OnClick = Colardareadetransferncia1Click
    end
    object N2: TMenuItem
      Caption = '-'
    end
    object Apagar1: TMenuItem
      Caption = 'Apaga&r'
      OnClick = Apagar1Click
    end
  end
  object OpenPictureDialog: TOpenPictureDialog
    Filter = 
      'All (*.gif;*.bmp;*.ico;*.emf;*.wmf,*.jpg)|*.gif;*.bmp;*.ico;*.em' +
      'f;*.wmf,*.jpg|CompuServe GIF Image (*.gif)|*.gif|Bitmaps (*.bmp)' +
      '|*.bmp|Icons (*.ico)|*.ico|Enhanced Metafiles (*.emf)|*.emf|Meta' +
      'files (*.wmf)|*.wmf|JPEG images (*.jpg)|*.jpg'
    Title = 'Abrir imagem'
    Left = 233
    Top = 547
  end
  object FormStorage: TFormStorage
    Active = False
    MinMaxInfo.MinTrackHeight = 437
    MinMaxInfo.MinTrackWidth = 471
    UseRegistry = True
    StoredProps.Strings = (
      'grdDados.Zebra'
      'grdDados.ZebraColor'
      'grdDados.ZebraFontColor')
    StoredValues = <>
    Left = 301
    Top = 576
  end
  object traSelecionar: TIBTransaction
    Active = False
    DefaultDatabase = dmoPrincipal.Database
    Params.Strings = (
      'read'
      'read_committed'
      'rec_version'
      'wait')
    AutoStopAction = saCommit
    Left = 589
    Top = 149
  end
  object MenuMais: TPopupMenu
    Alignment = paRight
    Images = dmoPrincipal.imgBotoesPeq
    MenuAnimation = [maLeftToRight, maRightToLeft, maTopToBottom, maBottomToTop]
    Left = 149
    Top = 511
    object IniciarVenda1: TMenuItem
      Caption = 'Iniciar &Venda...'
      ImageIndex = 0
      OnClick = IniciarVenda1Click
    end
    object AbrirOS1: TMenuItem
      Caption = '&Abrir OS...'
      ImageIndex = 0
      OnClick = AbrirOS1Click
    end
    object FazerOramento1: TMenuItem
      Caption = '&Fazer Or�amento...'
      ImageIndex = 0
      OnClick = FazerOramento1Click
    end
    object N4: TMenuItem
      Caption = '-'
    end
    object Equipamentos1: TMenuItem
      Caption = '&Equipamentos...'
      ImageIndex = 0
      OnClick = Equipamentos1Click
    end
    object N5: TMenuItem
      Caption = '-'
    end
    object Movimentos1: TMenuItem
      Caption = '&Movimentos...'
      ImageIndex = 0
      OnClick = Movimentos1Click
    end
    object Recebveis1: TMenuItem
      Caption = 'Todos a &Receber...'
      ImageIndex = 0
      OnClick = Recebveis1Click
    end
    object Histricofinanceiro1: TMenuItem
      Caption = 'A&reas geogr�ficas...'
      ImageIndex = 0
      OnClick = btnAreasClick
    end
    object N3: TMenuItem
      Caption = '-'
    end
    object Compras1: TMenuItem
      Caption = 'O que ele &Compra?'
      ImageIndex = 0
    end
    object Vendas1: TMenuItem
      Caption = 'O que ele &Vende?'
      ImageIndex = 0
    end
  end
  object provSelecionar: TDataSetProvider
    DataSet = qrySelecionar
    Constraints = False
    Exported = False
    Options = [poReadOnly]
    UpdateMode = upWhereKeyOnly
    Left = 657
    Top = 148
  end
  object cdsSelecionar: TClientDataSet
    Aggregates = <>
    AutoCalcFields = False
    IndexName = 'DEFAULT_ORDER'
    FetchOnDemand = False
    Params = <>
    ProviderName = 'provSelecionar'
    ReadOnly = True
    AfterOpen = cdsSelecionarAfterOpen
    AfterScroll = cdsSelecionarAfterScroll
    AfterRefresh = cdsSelecionarAfterRefresh
    Left = 661
    Top = 199
  end
  object provDetalhes: TDataSetProvider
    DataSet = qryDetalhes
    Constraints = True
    UpdateMode = upWhereKeyOnly
    OnUpdateData = provDetalhesUpdateData
    Left = 825
    Top = 148
  end
  object cdsDetalhes: TClientDataSet
    Aggregates = <>
    AutoCalcFields = False
    Constraints = <
      item
        FromDictionary = False
      end>
    FieldDefs = <
      item
        Name = 'CODIGO'
        Attributes = [faRequired]
        DataType = ftInteger
      end
      item
        Name = 'PESSOAFISICA'
        Attributes = [faFixed]
        DataType = ftString
        Size = 1
      end
      item
        Name = 'RAZAOSOCIAL'
        Attributes = [faFixed]
        DataType = ftString
        Size = 50
      end
      item
        Name = 'NOME'
        Attributes = [faRequired, faFixed]
        DataType = ftString
        Size = 40
      end
      item
        Name = 'DATANASC'
        DataType = ftDateTime
      end
      item
        Name = 'NATURALIDADE'
        Attributes = [faFixed]
        DataType = ftString
        Size = 40
      end
      item
        Name = 'SEXO'
        Attributes = [faFixed]
        DataType = ftString
        Size = 20
      end
      item
        Name = 'ESTADOCIVIL'
        Attributes = [faFixed]
        DataType = ftString
        Size = 20
      end
      item
        Name = 'RG'
        Attributes = [faFixed]
        DataType = ftString
        Size = 20
      end
      item
        Name = 'CPF'
        Attributes = [faFixed]
        DataType = ftString
        Size = 20
      end
      item
        Name = 'CGC'
        Attributes = [faFixed]
        DataType = ftString
        Size = 20
      end
      item
        Name = 'IE'
        Attributes = [faFixed]
        DataType = ftString
        Size = 20
      end
      item
        Name = 'PAI'
        Attributes = [faFixed]
        DataType = ftString
        Size = 40
      end
      item
        Name = 'MAE'
        Attributes = [faFixed]
        DataType = ftString
        Size = 40
      end
      item
        Name = 'LOCALIZACAO'
        Attributes = [faRequired]
        DataType = ftInteger
      end
      item
        Name = 'NUMERO'
        DataType = ftInteger
      end
      item
        Name = 'COMPLEMENTO'
        Attributes = [faFixed]
        DataType = ftString
        Size = 40
      end
      item
        Name = 'BAIRRO'
        Attributes = [faRequired]
        DataType = ftInteger
      end
      item
        Name = 'CIDADE'
        Attributes = [faRequired]
        DataType = ftInteger
      end
      item
        Name = 'ESTADO'
        Attributes = [faRequired, faFixed]
        DataType = ftString
        Size = 2
      end
      item
        Name = 'FONE'
        Attributes = [faFixed]
        DataType = ftString
        Size = 20
      end
      item
        Name = 'FAX'
        Attributes = [faFixed]
        DataType = ftString
        Size = 20
      end
      item
        Name = 'EMAIL'
        Attributes = [faFixed]
        DataType = ftString
        Size = 50
      end
      item
        Name = 'HOMEPAGE'
        Attributes = [faFixed]
        DataType = ftString
        Size = 60
      end
      item
        Name = 'CELULAR'
        Attributes = [faFixed]
        DataType = ftString
        Size = 20
      end
      item
        Name = 'DATACADAST'
        DataType = ftDateTime
      end
      item
        Name = 'OBSERVACOES'
        DataType = ftString
        Size = 2048
      end
      item
        Name = 'CONTATO'
        Attributes = [faFixed]
        DataType = ftString
        Size = 40
      end
      item
        Name = 'DATAFUND'
        DataType = ftDateTime
      end
      item
        Name = 'PROFISSAO'
        Attributes = [faFixed]
        DataType = ftString
        Size = 30
      end
      item
        Name = 'EQUIPAMENTO'
        DataType = ftString
        Size = 1024
      end
      item
        Name = 'FOTO'
        DataType = ftBlob
        Size = 8
      end
      item
        Name = 'SALARIO'
        DataType = ftBCD
        Precision = 9
        Size = 2
      end
      item
        Name = 'ORGAOEXP'
        Attributes = [faFixed]
        DataType = ftString
        Size = 6
      end
      item
        Name = 'SOUNDBYTES'
        Attributes = [faRequired]
        DataType = ftInteger
      end
      item
        Name = 'PROTESTO'
        Attributes = [faFixed]
        DataType = ftString
        Size = 1
      end
      item
        Name = 'SPC'
        Attributes = [faFixed]
        DataType = ftString
        Size = 1
      end
      item
        Name = 'SERASA'
        Attributes = [faFixed]
        DataType = ftString
        Size = 1
      end
      item
        Name = 'IMOVEL'
        Attributes = [faFixed]
        DataType = ftString
        Size = 1
      end
      item
        Name = 'PROTESTO_DATA'
        DataType = ftDateTime
      end
      item
        Name = 'SPC_DATA'
        DataType = ftDateTime
      end
      item
        Name = 'SERASA_DATA'
        DataType = ftDateTime
      end
      item
        Name = 'PROTESTO_USER'
        Attributes = [faFixed]
        DataType = ftString
        Size = 20
      end
      item
        Name = 'SPC_USER'
        Attributes = [faFixed]
        DataType = ftString
        Size = 20
      end
      item
        Name = 'SERASA_USER'
        Attributes = [faFixed]
        DataType = ftString
        Size = 20
      end
      item
        Name = 'CODEMPREEND'
        DataType = ftInteger
      end
      item
        Name = 'PROCESSO_OK'
        Attributes = [faFixed]
        DataType = ftString
        Size = 1
      end
      item
        Name = 'IMOVEL_TIPO'
        Attributes = [faFixed]
        DataType = ftString
        Size = 20
      end
      item
        Name = 'FGTS'
        Attributes = [faFixed]
        DataType = ftString
        Size = 1
      end
      item
        Name = 'PIS'
        Attributes = [faFixed]
        DataType = ftString
        Size = 20
      end
      item
        Name = 'VALOR_FGTS'
        DataType = ftBCD
        Precision = 9
        Size = 2
      end
      item
        Name = 'CONTRATO'
        Attributes = [faFixed]
        DataType = ftString
        Size = 1
      end
      item
        Name = 'KMS'
        DataType = ftInteger
      end
      item
        Name = 'COMISSIONADO'
        Attributes = [faFixed]
        DataType = ftString
        Size = 1
      end
      item
        Name = 'NOMEUSER'
        Attributes = [faRequired, faFixed]
        DataType = ftString
        Size = 30
      end
      item
        Name = 'DESCONTO'
        DataType = ftBCD
        Precision = 9
        Size = 2
      end
      item
        Name = 'FINANCEIRO'
        Attributes = [faFixed]
        DataType = ftString
        Size = 1
      end
      item
        Name = 'ESTORNO'
        Attributes = [faFixed]
        DataType = ftString
        Size = 1
      end
      item
        Name = 'CODEMPRESA'
        Attributes = [faRequired]
        DataType = ftInteger
      end
      item
        Name = 'TROCAVENDEDOR'
        Attributes = [faFixed]
        DataType = ftString
        Size = 1
      end
      item
        Name = 'INTERNET'
        Attributes = [faFixed]
        DataType = ftString
        Size = 1
      end
      item
        Name = 'MUDAEMPRESA'
        Attributes = [faFixed]
        DataType = ftString
        Size = 1
      end
      item
        Name = 'COMISSAO'
        DataType = ftBCD
        Precision = 9
        Size = 2
      end
      item
        Name = 'TIPO'
        Attributes = [faRequired, faFixed]
        DataType = ftString
        Size = 1
      end
      item
        Name = 'CODFORNECEDOR'
        DataType = ftInteger
      end
      item
        Name = 'CODTRANSPORTADOR'
        DataType = ftInteger
      end
      item
        Name = 'CODASSOCIADO'
        DataType = ftInteger
      end
      item
        Name = 'NOME_FAMILIA'
        Attributes = [faFixed]
        DataType = ftString
        Size = 50
      end
      item
        Name = 'RECEBIMENTO'
        Attributes = [faFixed]
        DataType = ftString
        Size = 1
      end
      item
        Name = 'CUSTO'
        Attributes = [faFixed]
        DataType = ftString
        Size = 1
      end
      item
        Name = 'SEQUENCIAS'
        Attributes = [faFixed]
        DataType = ftString
        Size = 1
      end
      item
        Name = 'RECALCULO'
        Attributes = [faFixed]
        DataType = ftString
        Size = 1
      end
      item
        Name = 'COMPRAS'
        Attributes = [faFixed]
        DataType = ftString
        Size = 1
      end
      item
        Name = 'TRANSFERENCIA'
        Attributes = [faFixed]
        DataType = ftString
        Size = 1
      end
      item
        Name = 'RELATORIOS'
        Attributes = [faFixed]
        DataType = ftString
        Size = 1
      end
      item
        Name = 'LIMITECREDITO'
        DataType = ftBCD
        Precision = 9
        Size = 2
      end
      item
        Name = 'TIPO_BLOQUEIO'
        Attributes = [faFixed]
        DataType = ftString
        Size = 1
      end
      item
        Name = 'TIPO_IMPEDIMENTO'
        Attributes = [faFixed]
        DataType = ftString
        Size = 1
      end
      item
        Name = 'OCULTO'
        Attributes = [faFixed]
        DataType = ftString
        Size = 1
      end
      item
        Name = 'VENDADIRETA'
        Attributes = [faFixed]
        DataType = ftString
        Size = 1
      end
      item
        Name = 'TECNICOLOGIN'
        Attributes = [faFixed]
        DataType = ftString
        Size = 1
      end
      item
        Name = 'FECHAMENTO'
        Attributes = [faFixed]
        DataType = ftString
        Size = 1
      end
      item
        Name = 'LOG_USUARIO'
        Attributes = [faFixed]
        DataType = ftString
        Size = 30
      end
      item
        Name = 'LOG_TIPO'
        Attributes = [faFixed]
        DataType = ftString
        Size = 10
      end
      item
        Name = 'LOG_MAQUINA'
        Attributes = [faFixed]
        DataType = ftString
        Size = 30
      end
      item
        Name = 'LOG_DATAREMOTO'
        DataType = ftDateTime
      end
      item
        Name = 'LOG_DATASERVIDOR'
        DataType = ftDateTime
      end
      item
        Name = 'LOG_DADOS'
        DataType = ftString
        Size = 254
      end
      item
        Name = 'SENHAWEB'
        Attributes = [faFixed]
        DataType = ftString
        Size = 10
      end
      item
        Name = 'PERCCOMIS_PROD'
        DataType = ftBCD
        Precision = 9
        Size = 2
      end
      item
        Name = 'PERCCOMIS_PECA'
        DataType = ftBCD
        Precision = 9
        Size = 2
      end
      item
        Name = 'PERCCOMIS_SERV'
        DataType = ftBCD
        Precision = 9
        Size = 2
      end
      item
        Name = 'PERCCOMIS_CALCULO'
        Attributes = [faFixed]
        DataType = ftString
        Size = 1
      end>
    IndexDefs = <
      item
        Name = 'DEFAULT_ORDER'
      end
      item
        Name = 'CHANGEINDEX'
      end>
    IndexFieldNames = 'CODIGO'
    FetchOnDemand = False
    PacketRecords = 1
    Params = <>
    ProviderName = 'provDetalhes'
    StoreDefs = True
    AfterOpen = cdsDetalhesAfterOpen
    BeforePost = cdsDetalhesBeforePost
    AfterPost = cdsDetalhesAfterPost
    AfterDelete = cdsDetalhesAfterDelete
    OnNewRecord = cdsDetalhesNewRecord
    OnReconcileError = cdsDetalhesReconcileError
    Left = 821
    Top = 199
    object cdsDetalhesCODIGO: TIntegerField
      FieldName = 'CODIGO'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object cdsDetalhesPESSOAFISICA: TStringField
      FieldName = 'PESSOAFISICA'
      FixedChar = True
      Size = 1
    end
    object cdsDetalhesRAZAOSOCIAL: TStringField
      FieldName = 'RAZAOSOCIAL'
      FixedChar = True
      Size = 50
    end
    object cdsDetalhesNOME: TStringField
      FieldName = 'NOME'
      Required = True
      FixedChar = True
      Size = 40
    end
    object cdsDetalhesDATANASC: TDateTimeField
      FieldName = 'DATANASC'
    end
    object cdsDetalhesNATURALIDADE: TStringField
      FieldName = 'NATURALIDADE'
      FixedChar = True
      Size = 40
    end
    object cdsDetalhesSEXO: TStringField
      FieldName = 'SEXO'
      FixedChar = True
    end
    object cdsDetalhesESTADOCIVIL: TStringField
      FieldName = 'ESTADOCIVIL'
      FixedChar = True
    end
    object cdsDetalhesRG: TStringField
      FieldName = 'RG'
      FixedChar = True
    end
    object cdsDetalhesCPF: TStringField
      FieldName = 'CPF'
      FixedChar = True
    end
    object cdsDetalhesCGC: TStringField
      FieldName = 'CGC'
      FixedChar = True
    end
    object cdsDetalhesIE: TStringField
      FieldName = 'IE'
      FixedChar = True
    end
    object cdsDetalhesPAI: TStringField
      FieldName = 'PAI'
      FixedChar = True
      Size = 40
    end
    object cdsDetalhesMAE: TStringField
      FieldName = 'MAE'
      FixedChar = True
      Size = 40
    end
    object cdsDetalhesLOCALIZACAO: TIntegerField
      FieldName = 'LOCALIZACAO'
      Required = True
    end
    object cdsDetalhesNUMERO: TIntegerField
      FieldName = 'NUMERO'
    end
    object cdsDetalhesCOMPLEMENTO: TStringField
      FieldName = 'COMPLEMENTO'
      FixedChar = True
      Size = 40
    end
    object cdsDetalhesBAIRRO: TIntegerField
      FieldName = 'BAIRRO'
      Required = True
    end
    object cdsDetalhesCIDADE: TIntegerField
      FieldName = 'CIDADE'
      Required = True
    end
    object cdsDetalhesESTADO: TStringField
      FieldName = 'ESTADO'
      Required = True
      FixedChar = True
      Size = 2
    end
    object cdsDetalhesFONE: TStringField
      FieldName = 'FONE'
      FixedChar = True
    end
    object cdsDetalhesFAX: TStringField
      FieldName = 'FAX'
      FixedChar = True
    end
    object cdsDetalhesEMAIL: TStringField
      FieldName = 'EMAIL'
      FixedChar = True
      Size = 50
    end
    object cdsDetalhesHOMEPAGE: TStringField
      FieldName = 'HOMEPAGE'
      FixedChar = True
      Size = 60
    end
    object cdsDetalhesCELULAR: TStringField
      FieldName = 'CELULAR'
      FixedChar = True
    end
    object cdsDetalhesDATACADAST: TDateTimeField
      FieldName = 'DATACADAST'
    end
    object cdsDetalhesOBSERVACOES: TStringField
      FieldName = 'OBSERVACOES'
      Size = 2048
    end
    object cdsDetalhesCONTATO: TStringField
      FieldName = 'CONTATO'
      FixedChar = True
      Size = 40
    end
    object cdsDetalhesDATAFUND: TDateTimeField
      FieldName = 'DATAFUND'
    end
    object cdsDetalhesPROFISSAO: TStringField
      FieldName = 'PROFISSAO'
      FixedChar = True
      Size = 30
    end
    object cdsDetalhesEQUIPAMENTO: TStringField
      FieldName = 'EQUIPAMENTO'
      Size = 1024
    end
    object cdsDetalhesFOTO: TBlobField
      FieldName = 'FOTO'
      BlobType = ftBlob
      Size = 8
    end
    object cdsDetalhesSALARIO: TBCDField
      FieldName = 'SALARIO'
      Precision = 9
      Size = 2
    end
    object cdsDetalhesORGAOEXP: TStringField
      FieldName = 'ORGAOEXP'
      FixedChar = True
      Size = 6
    end
    object cdsDetalhesSOUNDBYTES: TIntegerField
      FieldName = 'SOUNDBYTES'
      Required = True
    end
    object cdsDetalhesPROTESTO: TStringField
      FieldName = 'PROTESTO'
      FixedChar = True
      Size = 1
    end
    object cdsDetalhesSPC: TStringField
      FieldName = 'SPC'
      FixedChar = True
      Size = 1
    end
    object cdsDetalhesSERASA: TStringField
      FieldName = 'SERASA'
      FixedChar = True
      Size = 1
    end
    object cdsDetalhesIMOVEL: TStringField
      FieldName = 'IMOVEL'
      FixedChar = True
      Size = 1
    end
    object cdsDetalhesPROTESTO_DATA: TDateTimeField
      FieldName = 'PROTESTO_DATA'
    end
    object cdsDetalhesSPC_DATA: TDateTimeField
      FieldName = 'SPC_DATA'
    end
    object cdsDetalhesSERASA_DATA: TDateTimeField
      FieldName = 'SERASA_DATA'
    end
    object cdsDetalhesPROTESTO_USER: TStringField
      FieldName = 'PROTESTO_USER'
      FixedChar = True
    end
    object cdsDetalhesSPC_USER: TStringField
      FieldName = 'SPC_USER'
      FixedChar = True
    end
    object cdsDetalhesSERASA_USER: TStringField
      FieldName = 'SERASA_USER'
      FixedChar = True
    end
    object cdsDetalhesCODEMPREEND: TIntegerField
      FieldName = 'CODEMPREEND'
    end
    object cdsDetalhesPROCESSO_OK: TStringField
      FieldName = 'PROCESSO_OK'
      FixedChar = True
      Size = 1
    end
    object cdsDetalhesIMOVEL_TIPO: TStringField
      FieldName = 'IMOVEL_TIPO'
      FixedChar = True
    end
    object cdsDetalhesFGTS: TStringField
      FieldName = 'FGTS'
      FixedChar = True
      Size = 1
    end
    object cdsDetalhesPIS: TStringField
      FieldName = 'PIS'
      FixedChar = True
    end
    object cdsDetalhesVALOR_FGTS: TBCDField
      FieldName = 'VALOR_FGTS'
      Precision = 9
      Size = 2
    end
    object cdsDetalhesCONTRATO: TStringField
      FieldName = 'CONTRATO'
      FixedChar = True
      Size = 1
    end
    object cdsDetalhesKMS: TIntegerField
      FieldName = 'KMS'
    end
    object cdsDetalhesCOMISSIONADO: TStringField
      FieldName = 'COMISSIONADO'
      FixedChar = True
      Size = 1
    end
    object cdsDetalhesNOMEUSER: TStringField
      FieldName = 'NOMEUSER'
      Required = True
      FixedChar = True
      Size = 30
    end
    object cdsDetalhesDESCONTO: TBCDField
      FieldName = 'DESCONTO'
      Precision = 9
      Size = 2
    end
    object cdsDetalhesFINANCEIRO: TStringField
      FieldName = 'FINANCEIRO'
      FixedChar = True
      Size = 1
    end
    object cdsDetalhesESTORNO: TStringField
      FieldName = 'ESTORNO'
      FixedChar = True
      Size = 1
    end
    object cdsDetalhesCODEMPRESA: TIntegerField
      FieldName = 'CODEMPRESA'
      Required = True
    end
    object cdsDetalhesTROCAVENDEDOR: TStringField
      FieldName = 'TROCAVENDEDOR'
      FixedChar = True
      Size = 1
    end
    object cdsDetalhesINTERNET: TStringField
      FieldName = 'INTERNET'
      FixedChar = True
      Size = 1
    end
    object cdsDetalhesMUDAEMPRESA: TStringField
      FieldName = 'MUDAEMPRESA'
      FixedChar = True
      Size = 1
    end
    object cdsDetalhesCOMISSAO: TBCDField
      FieldName = 'COMISSAO'
      Precision = 9
      Size = 2
    end
    object cdsDetalhesTIPO: TStringField
      FieldName = 'TIPO'
      Required = True
      FixedChar = True
      Size = 1
    end
    object cdsDetalhesCODFORNECEDOR: TIntegerField
      FieldName = 'CODFORNECEDOR'
    end
    object cdsDetalhesCODTRANSPORTADOR: TIntegerField
      FieldName = 'CODTRANSPORTADOR'
    end
    object cdsDetalhesCODASSOCIADO: TIntegerField
      FieldName = 'CODASSOCIADO'
    end
    object cdsDetalhesNOME_FAMILIA: TStringField
      FieldName = 'NOME_FAMILIA'
      FixedChar = True
      Size = 50
    end
    object cdsDetalhesRECEBIMENTO: TStringField
      FieldName = 'RECEBIMENTO'
      FixedChar = True
      Size = 1
    end
    object cdsDetalhesCUSTO: TStringField
      FieldName = 'CUSTO'
      FixedChar = True
      Size = 1
    end
    object cdsDetalhesSEQUENCIAS: TStringField
      FieldName = 'SEQUENCIAS'
      FixedChar = True
      Size = 1
    end
    object cdsDetalhesRECALCULO: TStringField
      FieldName = 'RECALCULO'
      FixedChar = True
      Size = 1
    end
    object cdsDetalhesCOMPRAS: TStringField
      FieldName = 'COMPRAS'
      FixedChar = True
      Size = 1
    end
    object cdsDetalhesTRANSFERENCIA: TStringField
      FieldName = 'TRANSFERENCIA'
      FixedChar = True
      Size = 1
    end
    object cdsDetalhesRELATORIOS: TStringField
      FieldName = 'RELATORIOS'
      FixedChar = True
      Size = 1
    end
    object cdsDetalhesLIMITECREDITO: TBCDField
      FieldName = 'LIMITECREDITO'
      Precision = 9
      Size = 2
    end
    object cdsDetalhesTIPO_BLOQUEIO: TStringField
      FieldName = 'TIPO_BLOQUEIO'
      FixedChar = True
      Size = 1
    end
    object cdsDetalhesTIPO_IMPEDIMENTO: TStringField
      FieldName = 'TIPO_IMPEDIMENTO'
      FixedChar = True
      Size = 1
    end
    object cdsDetalhesOCULTO: TStringField
      FieldName = 'OCULTO'
      FixedChar = True
      Size = 1
    end
    object cdsDetalhesVENDADIRETA: TStringField
      FieldName = 'VENDADIRETA'
      FixedChar = True
      Size = 1
    end
    object cdsDetalhesTECNICOLOGIN: TStringField
      FieldName = 'TECNICOLOGIN'
      FixedChar = True
      Size = 1
    end
    object cdsDetalhesFECHAMENTO: TStringField
      FieldName = 'FECHAMENTO'
      FixedChar = True
      Size = 1
    end
    object cdsDetalhesLOG_USUARIO: TStringField
      FieldName = 'LOG_USUARIO'
      FixedChar = True
      Size = 30
    end
    object cdsDetalhesLOG_TIPO: TStringField
      FieldName = 'LOG_TIPO'
      FixedChar = True
      Size = 10
    end
    object cdsDetalhesLOG_MAQUINA: TStringField
      FieldName = 'LOG_MAQUINA'
      FixedChar = True
      Size = 30
    end
    object cdsDetalhesLOG_DATAREMOTO: TDateTimeField
      FieldName = 'LOG_DATAREMOTO'
    end
    object cdsDetalhesSENHAWEB: TStringField
      FieldName = 'SENHAWEB'
      FixedChar = True
      Size = 10
    end
    object cdsDetalhesPERCCOMIS_PROD: TBCDField
      FieldName = 'PERCCOMIS_PROD'
      Precision = 9
      Size = 2
    end
    object cdsDetalhesPERCCOMIS_PECA: TBCDField
      FieldName = 'PERCCOMIS_PECA'
      Precision = 9
      Size = 2
    end
    object cdsDetalhesPERCCOMIS_SERV: TBCDField
      FieldName = 'PERCCOMIS_SERV'
      Precision = 9
      Size = 2
    end
    object cdsDetalhesPERCCOMIS_CALCULO: TStringField
      FieldName = 'PERCCOMIS_CALCULO'
      FixedChar = True
      Size = 1
    end
  end
end