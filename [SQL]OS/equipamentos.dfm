object formEquipamento: TformEquipamento
  Left = 76
  Top = 156
  BorderIcons = [biSystemMenu]
  BorderStyle = bsDialog
  Caption = 'Equipamentos'
  ClientHeight = 208
  ClientWidth = 571
  Color = clBtnFace
  Font.Charset = ANSI_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Verdana'
  Font.Style = []
  KeyPreview = True
  OldCreateOrder = False
  Position = poScreenCenter
  OnKeyDown = FormKeyDown
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 13
  object Dock975: TDock97
    Left = 485
    Top = 0
    Width = 86
    Height = 208
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
      object btnSair: TToolbarButton97
        Left = 0
        Top = 0
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
        OnMouseEnter = btnSairMouseEnter
        OnMouseExit = btnSairMouseExit
      end
    end
  end
  object Panel1: TPanel
    Left = 0
    Top = 0
    Width = 485
    Height = 208
    Align = alClient
    BevelOuter = bvNone
    TabOrder = 1
    object Panel2: TPanel
      Left = 0
      Top = 0
      Width = 485
      Height = 41
      Align = alTop
      BevelOuter = bvLowered
      TabOrder = 0
      object Label1: TLabel
        Left = 8
        Top = 5
        Width = 465
        Height = 36
        AutoSize = False
        Caption = 
          'O sistema Empresa1 procurou nos bancos de dados e descobriu que ' +
          'o cliente em quest�o normalmente usa os seguintes equipamentos:'
        WordWrap = True
      end
    end
    object Panel3: TPanel
      Left = 0
      Top = 41
      Width = 485
      Height = 167
      Align = alClient
      BevelOuter = bvLowered
      TabOrder = 1
      object zebdbgrid1: Tzebdbgrid
        Left = 1
        Top = 1
        Width = 483
        Height = 165
        Align = alClient
        DataSource = formOS.dsrEquipamento
        TabOrder = 0
        TitleFont.Charset = ANSI_CHARSET
        TitleFont.Color = clWindowText
        TitleFont.Height = -11
        TitleFont.Name = 'Verdana'
        TitleFont.Style = []
        Zebra = True
        ZebraColor = clAqua
        ZebraFontColor = clWindowText
        OnDblClick = zebdbgrid1DblClick
        Columns = <
          item
            Expanded = False
            FieldName = 'MARCA'
            Title.Caption = 'Marca'
            Title.Font.Charset = ANSI_CHARSET
            Title.Font.Color = clWindowText
            Title.Font.Height = -11
            Title.Font.Name = 'Verdana'
            Title.Font.Style = [fsBold]
            Width = 130
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'MODELO'
            Title.Caption = 'Modelo'
            Title.Font.Charset = ANSI_CHARSET
            Title.Font.Color = clWindowText
            Title.Font.Height = -11
            Title.Font.Name = 'Verdana'
            Title.Font.Style = [fsBold]
            Width = 126
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'SERIE'
            Title.Caption = 'n� S�rie'
            Title.Font.Charset = ANSI_CHARSET
            Title.Font.Color = clWindowText
            Title.Font.Height = -11
            Title.Font.Name = 'Verdana'
            Title.Font.Style = [fsBold]
            Width = 133
            Visible = True
          end
          item
            Alignment = taRightJustify
            Expanded = False
            FieldName = 'COUNT'
            Title.Alignment = taRightJustify
            Title.Caption = 'n� OS'#39's'
            Title.Font.Charset = ANSI_CHARSET
            Title.Font.Color = clWindowText
            Title.Font.Height = -11
            Title.Font.Name = 'Verdana'
            Title.Font.Style = [fsBold]
            Width = 54
            Visible = True
          end>
      end
    end
  end
end
