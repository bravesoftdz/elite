object formOSnota2: TformOSnota2
  Left = 4
  Top = 163
  Width = 799
  Height = 469
  VertScrollBar.Position = 6
  Caption = 'Imprimir OS da nota'
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  OldCreateOrder = False
  Scaled = False
  PixelsPerInch = 96
  TextHeight = 13
  object qrOSnota: TQuickRep
    Left = -8
    Top = 2
    Width = 794
    Height = 1123
    Frame.Color = clBlack
    Frame.DrawTop = False
    Frame.DrawBottom = False
    Frame.DrawLeft = False
    Frame.DrawRight = False
    DataSet = memItens
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -13
    Font.Name = 'Arial'
    Font.Style = []
    Functions.Strings = (
      'PAGENUMBER'
      'COLUMNNUMBER'
      'REPORTTITLE')
    Functions.DATA = (
      '0'
      '0'
      #39#39)
    OnPreview = qrOSnotaPreview
    Options = [FirstPageHeader, LastPageFooter]
    Page.Columns = 1
    Page.Orientation = poPortrait
    Page.PaperSize = A4
    Page.Values = (
      200
      2970
      100
      2100
      100
      100
      0)
    PrinterSettings.Copies = 1
    PrinterSettings.Duplex = False
    PrinterSettings.FirstPage = 0
    PrinterSettings.LastPage = 0
    PrinterSettings.OutputBin = Auto
    PrintIfEmpty = True
    SnapToGrid = True
    Units = MM
    Zoom = 100
    object DetailBand1: TQRBand
      Left = 38
      Top = 577
      Width = 718
      Height = 18
      Frame.Color = clBlack
      Frame.DrawTop = False
      Frame.DrawBottom = True
      Frame.DrawLeft = True
      Frame.DrawRight = True
      AlignToBottom = False
      Color = clWhite
      ForceNewColumn = False
      ForceNewPage = False
      Size.Values = (
        47.625
        1899.70833333333)
      BandType = rbDetail
      object QRDBText22: TQRDBText
        Left = 586
        Top = 2
        Width = 113
        Height = 17
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          44.9791666666667
          1550.45833333333
          5.29166666666667
          298.979166666667)
        Alignment = taRightJustify
        AlignToBand = False
        AutoSize = False
        AutoStretch = False
        Color = clWhite
        DataSet = memItens
        DataField = 'VALOR_TOTAL'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -12
        Font.Name = 'Verdana'
        Font.Style = []
        ParentFont = False
        Transparent = False
        WordWrap = True
        FontSize = 9
      end
      object QRDBText21: TQRDBText
        Left = 458
        Top = 2
        Width = 113
        Height = 17
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          44.9791666666667
          1211.79166666667
          5.29166666666667
          298.979166666667)
        Alignment = taRightJustify
        AlignToBand = False
        AutoSize = False
        AutoStretch = False
        Color = clWhite
        DataSet = memItens
        DataField = 'VALOR_UNITARIO'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -12
        Font.Name = 'Verdana'
        Font.Style = []
        ParentFont = False
        Transparent = False
        WordWrap = True
        FontSize = 9
      end
      object QRDBText20: TQRDBText
        Left = 392
        Top = 2
        Width = 49
        Height = 17
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          44.9791666666667
          1037.16666666667
          5.29166666666667
          129.645833333333)
        Alignment = taRightJustify
        AlignToBand = False
        AutoSize = False
        AutoStretch = False
        Color = clWhite
        DataSet = memItens
        DataField = 'QUANTIDADE'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -12
        Font.Name = 'Verdana'
        Font.Style = []
        ParentFont = False
        Transparent = False
        WordWrap = True
        FontSize = 9
      end
      object QRDBText19: TQRDBText
        Left = 8
        Top = 2
        Width = 369
        Height = 17
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          44.9791666666667
          21.1666666666667
          5.29166666666667
          976.3125)
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = False
        AutoStretch = False
        Color = clWhite
        DataSet = memItens
        DataField = 'DESCRICAO'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -12
        Font.Name = 'Verdana'
        Font.Style = []
        ParentFont = False
        Transparent = False
        WordWrap = True
        FontSize = 9
      end
      object QRShape8: TQRShape
        Left = 381
        Top = -1
        Width = 9
        Height = 18
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          47.625
          1008.0625
          -2.64583333333333
          23.8125)
        Shape = qrsVertLine
      end
      object QRShape9: TQRShape
        Left = 445
        Top = -1
        Width = 9
        Height = 18
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          47.625
          1177.39583333333
          -2.64583333333333
          23.8125)
        Shape = qrsVertLine
      end
      object QRShape10: TQRShape
        Left = 573
        Top = -1
        Width = 9
        Height = 18
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          47.625
          1516.0625
          -2.64583333333333
          23.8125)
        Shape = qrsVertLine
      end
    end
    object PageHeaderBand1: TQRBand
      Left = 38
      Top = 38
      Width = 718
      Height = 539
      Frame.Color = clBlack
      Frame.DrawTop = False
      Frame.DrawBottom = True
      Frame.DrawLeft = False
      Frame.DrawRight = False
      AlignToBottom = False
      Color = clWhite
      ForceNewColumn = False
      ForceNewPage = False
      Size.Values = (
        1426.10416666667
        1899.70833333333)
      BandType = rbPageHeader
      object QRLabel5: TQRLabel
        Left = 8
        Top = 95
        Width = 144
        Height = 19
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          50.2708333333333
          21.1666666666667
          251.354166666667
          381)
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = True
        AutoStretch = False
        Caption = 'Dados do Cliente:'
        Color = clWhite
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -15
        Font.Name = 'Verdana'
        Font.Style = [fsBold]
        ParentFont = False
        Transparent = False
        WordWrap = True
        FontSize = 11
      end
      object QRLabel6: TQRLabel
        Left = 7
        Top = 120
        Width = 90
        Height = 17
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          44.9791666666667
          18.5208333333333
          317.5
          238.125)
        Alignment = taRightJustify
        AlignToBand = False
        AutoSize = False
        AutoStretch = False
        Caption = 'Nome:'
        Color = clWhite
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'Verdana'
        Font.Style = [fsItalic]
        ParentFont = False
        Transparent = False
        WordWrap = True
        FontSize = 10
      end
      object QRLabel7: TQRLabel
        Left = 7
        Top = 136
        Width = 90
        Height = 17
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          44.9791666666667
          18.5208333333333
          359.833333333333
          238.125)
        Alignment = taRightJustify
        AlignToBand = False
        AutoSize = False
        AutoStretch = False
        Caption = 'Endere�o:'
        Color = clWhite
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'Verdana'
        Font.Style = [fsItalic]
        ParentFont = False
        Transparent = False
        WordWrap = True
        FontSize = 10
      end
      object QRLabel8: TQRLabel
        Left = 7
        Top = 152
        Width = 90
        Height = 17
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          44.9791666666667
          18.5208333333333
          402.166666666667
          238.125)
        Alignment = taRightJustify
        AlignToBand = False
        AutoSize = False
        AutoStretch = False
        Caption = 'Cidade:'
        Color = clWhite
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'Verdana'
        Font.Style = [fsItalic]
        ParentFont = False
        Transparent = False
        WordWrap = True
        FontSize = 10
      end
      object QRLabel10: TQRLabel
        Left = 7
        Top = 168
        Width = 90
        Height = 17
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          44.9791666666667
          18.5208333333333
          444.5
          238.125)
        Alignment = taRightJustify
        AlignToBand = False
        AutoSize = False
        AutoStretch = False
        Caption = 'Telefone:'
        Color = clWhite
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'Verdana'
        Font.Style = [fsItalic]
        ParentFont = False
        Transparent = False
        WordWrap = True
        FontSize = 10
      end
      object QRLabel11: TQRLabel
        Left = 407
        Top = 152
        Width = 90
        Height = 17
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          44.9791666666667
          1076.85416666667
          402.166666666667
          238.125)
        Alignment = taRightJustify
        AlignToBand = False
        AutoSize = False
        AutoStretch = False
        Caption = 'Estado:'
        Color = clWhite
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'Verdana'
        Font.Style = [fsItalic]
        ParentFont = False
        Transparent = False
        WordWrap = True
        FontSize = 10
      end
      object QRLabel13: TQRLabel
        Left = 8
        Top = 191
        Width = 178
        Height = 19
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          50.2708333333333
          21.1666666666667
          505.354166666667
          470.958333333333)
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = True
        AutoStretch = False
        Caption = 'Tipo do Equipamento:'
        Color = clWhite
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -15
        Font.Name = 'Verdana'
        Font.Style = [fsBold]
        ParentFont = False
        Transparent = False
        WordWrap = True
        FontSize = 11
      end
      object QRShape2: TQRShape
        Left = 0
        Top = 208
        Width = 721
        Height = 3
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          7.9375
          0
          550.333333333333
          1907.64583333333)
        Shape = qrsHorLine
      end
      object QRShape3: TQRShape
        Left = 0
        Top = 186
        Width = 721
        Height = 3
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          7.9375
          0
          492.125
          1907.64583333333)
        Shape = qrsHorLine
      end
      object QRLabel14: TQRLabel
        Left = 7
        Top = 216
        Width = 90
        Height = 17
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          44.9791666666667
          18.5208333333333
          571.5
          238.125)
        Alignment = taRightJustify
        AlignToBand = False
        AutoSize = False
        AutoStretch = False
        Caption = 'Marca:'
        Color = clWhite
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'Verdana'
        Font.Style = [fsItalic]
        ParentFont = False
        Transparent = False
        WordWrap = True
        FontSize = 10
      end
      object QRLabel15: TQRLabel
        Left = 303
        Top = 216
        Width = 66
        Height = 17
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          44.9791666666667
          801.6875
          571.5
          174.625)
        Alignment = taRightJustify
        AlignToBand = False
        AutoSize = False
        AutoStretch = False
        Caption = 'Modelo:'
        Color = clWhite
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'Verdana'
        Font.Style = [fsItalic]
        ParentFont = False
        Transparent = False
        WordWrap = True
        FontSize = 10
      end
      object QRLabel16: TQRLabel
        Left = 7
        Top = 232
        Width = 90
        Height = 17
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          44.9791666666667
          18.5208333333333
          613.833333333333
          238.125)
        Alignment = taRightJustify
        AlignToBand = False
        AutoSize = False
        AutoStretch = False
        Caption = 'No. S�rie:'
        Color = clWhite
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'Verdana'
        Font.Style = [fsItalic]
        ParentFont = False
        Transparent = False
        WordWrap = True
        FontSize = 10
      end
      object QRLabel17: TQRLabel
        Left = 304
        Top = 248
        Width = 65
        Height = 17
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          44.9791666666667
          804.333333333333
          656.166666666667
          171.979166666667)
        Alignment = taRightJustify
        AlignToBand = False
        AutoSize = False
        AutoStretch = False
        Caption = 'Medidor:'
        Color = clWhite
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'Verdana'
        Font.Style = [fsItalic]
        ParentFont = False
        Transparent = False
        WordWrap = True
        FontSize = 10
      end
      object QRLabel18: TQRLabel
        Left = 304
        Top = 232
        Width = 65
        Height = 17
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          44.9791666666667
          804.333333333333
          613.833333333333
          171.979166666667)
        Alignment = taRightJustify
        AlignToBand = False
        AutoSize = False
        AutoStretch = False
        Caption = 'Estado:'
        Color = clWhite
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'Verdana'
        Font.Style = [fsItalic]
        ParentFont = False
        Transparent = False
        WordWrap = True
        FontSize = 10
      end
      object QRLabel20: TQRLabel
        Left = 48
        Top = 248
        Width = 49
        Height = 17
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          44.9791666666667
          127
          656.166666666667
          129.645833333333)
        Alignment = taRightJustify
        AlignToBand = False
        AutoSize = False
        AutoStretch = False
        Caption = 'Defeito:'
        Color = clWhite
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'Verdana'
        Font.Style = [fsItalic]
        ParentFont = False
        Transparent = False
        WordWrap = True
        FontSize = 10
      end
      object QRShape4: TQRShape
        Left = 0
        Top = 298
        Width = 721
        Height = 3
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          7.9375
          0
          788.458333333333
          1907.64583333333)
        Shape = qrsHorLine
      end
      object QRLabel21: TQRLabel
        Left = 8
        Top = 303
        Width = 186
        Height = 19
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          50.2708333333333
          21.1666666666667
          801.6875
          492.125)
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = True
        AutoStretch = False
        Caption = 'Notifica��o do Servi�o:'
        Color = clWhite
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -15
        Font.Name = 'Verdana'
        Font.Style = [fsBold]
        ParentFont = False
        Transparent = False
        WordWrap = True
        FontSize = 11
      end
      object QRShape5: TQRShape
        Left = 0
        Top = 320
        Width = 721
        Height = 3
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          7.9375
          0
          846.666666666667
          1907.64583333333)
        Shape = qrsHorLine
      end
      object QRLabel22: TQRLabel
        Left = 7
        Top = 328
        Width = 130
        Height = 17
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          44.9791666666667
          18.5208333333333
          867.833333333333
          343.958333333333)
        Alignment = taRightJustify
        AlignToBand = False
        AutoSize = False
        AutoStretch = False
        Caption = 'Defeito Detectado:'
        Color = clWhite
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'Verdana'
        Font.Style = [fsItalic]
        ParentFont = False
        Transparent = False
        WordWrap = True
        FontSize = 10
      end
      object QRLabel23: TQRLabel
        Left = 7
        Top = 366
        Width = 130
        Height = 17
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          44.9791666666667
          18.5208333333333
          968.375
          343.958333333333)
        Alignment = taRightJustify
        AlignToBand = False
        AutoSize = False
        AutoStretch = False
        Caption = 'Servi�o Realizado:'
        Color = clWhite
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'Verdana'
        Font.Style = [fsItalic]
        ParentFont = False
        Transparent = False
        WordWrap = True
        FontSize = 10
      end
      object QRLabel24: TQRLabel
        Left = 7
        Top = 426
        Width = 130
        Height = 17
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          44.9791666666667
          18.5208333333333
          1127.125
          343.958333333333)
        Alignment = taRightJustify
        AlignToBand = False
        AutoSize = False
        AutoStretch = False
        Caption = 'T�cnico:'
        Color = clWhite
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'Verdana'
        Font.Style = [fsItalic]
        ParentFont = False
        Transparent = False
        WordWrap = True
        FontSize = 10
      end
      object QRLabel26: TQRLabel
        Left = 8
        Top = 520
        Width = 66
        Height = 17
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          44.9791666666667
          21.1666666666667
          1375.83333333333
          174.625)
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = True
        AutoStretch = False
        Caption = 'Descri��o'
        Color = clWhite
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'Verdana'
        Font.Style = [fsItalic]
        ParentFont = False
        Transparent = False
        WordWrap = True
        FontSize = 10
      end
      object QRLabel27: TQRLabel
        Left = 400
        Top = 520
        Width = 46
        Height = 17
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          44.9791666666667
          1058.33333333333
          1375.83333333333
          121.708333333333)
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = True
        AutoStretch = False
        Caption = 'Quant.'
        Color = clWhite
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'Verdana'
        Font.Style = [fsItalic]
        ParentFont = False
        Transparent = False
        WordWrap = True
        FontSize = 10
      end
      object QRLabel28: TQRLabel
        Left = 488
        Top = 520
        Width = 94
        Height = 17
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          44.9791666666667
          1291.16666666667
          1375.83333333333
          248.708333333333)
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = True
        AutoStretch = False
        Caption = 'Pre�o Unit�rio'
        Color = clWhite
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'Verdana'
        Font.Style = [fsItalic]
        ParentFont = False
        Transparent = False
        WordWrap = True
        FontSize = 10
      end
      object QRLabel29: TQRLabel
        Left = 632
        Top = 520
        Width = 77
        Height = 17
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          44.9791666666667
          1672.16666666667
          1375.83333333333
          203.729166666667)
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = True
        AutoStretch = False
        Caption = 'Pre�o Total'
        Color = clWhite
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'Verdana'
        Font.Style = [fsItalic]
        ParentFont = False
        Transparent = False
        WordWrap = True
        FontSize = 10
      end
      object QRDBText1: TQRDBText
        Left = 104
        Top = 121
        Width = 273
        Height = 17
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          44.9791666666667
          275.166666666667
          320.145833333333
          722.3125)
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = False
        AutoStretch = False
        Color = clWhite
        DataSet = qryOSnota
        DataField = 'CLI_NOME'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -12
        Font.Name = 'Verdana'
        Font.Style = [fsBold]
        ParentFont = False
        Transparent = False
        WordWrap = True
        FontSize = 9
      end
      object QRDBText2: TQRDBText
        Left = 104
        Top = 137
        Width = 329
        Height = 17
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          44.9791666666667
          275.166666666667
          362.479166666667
          870.479166666667)
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = False
        AutoStretch = False
        Color = clWhite
        DataSet = qryOSnota
        DataField = 'CLI_LOGRADOURO'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -12
        Font.Name = 'Verdana'
        Font.Style = [fsBold]
        ParentFont = False
        Transparent = False
        WordWrap = True
        FontSize = 9
      end
      object QRDBText3: TQRDBText
        Left = 440
        Top = 136
        Width = 49
        Height = 17
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          44.9791666666667
          1164.16666666667
          359.833333333333
          129.645833333333)
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = False
        AutoStretch = False
        Color = clWhite
        DataSet = qryOSnota
        DataField = 'CLI_NUMERO'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -12
        Font.Name = 'Verdana'
        Font.Style = [fsBold]
        ParentFont = False
        Transparent = False
        WordWrap = True
        FontSize = 9
      end
      object QRDBText4: TQRDBText
        Left = 496
        Top = 136
        Width = 201
        Height = 17
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          44.9791666666667
          1312.33333333333
          359.833333333333
          531.8125)
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = False
        AutoStretch = False
        Color = clWhite
        DataSet = qryOSnota
        DataField = 'CLI_COMPLEMENTO'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -12
        Font.Name = 'Verdana'
        Font.Style = [fsBold]
        ParentFont = False
        Transparent = False
        WordWrap = True
        FontSize = 9
      end
      object QRDBText6: TQRDBText
        Left = 104
        Top = 153
        Width = 329
        Height = 17
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          44.9791666666667
          275.166666666667
          404.8125
          870.479166666667)
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = False
        AutoStretch = False
        Color = clWhite
        DataSet = qryOSnota
        DataField = 'CLI_CIDADE'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -12
        Font.Name = 'Verdana'
        Font.Style = [fsBold]
        ParentFont = False
        Transparent = False
        WordWrap = True
        FontSize = 9
      end
      object QRDBText7: TQRDBText
        Left = 504
        Top = 152
        Width = 49
        Height = 17
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          44.9791666666667
          1333.5
          402.166666666667
          129.645833333333)
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = False
        AutoStretch = False
        Color = clWhite
        DataSet = qryOSnota
        DataField = 'CLI_ESTADO'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -12
        Font.Name = 'Verdana'
        Font.Style = [fsBold]
        ParentFont = False
        Transparent = False
        WordWrap = True
        FontSize = 9
      end
      object QRDBText10: TQRDBText
        Left = 104
        Top = 169
        Width = 161
        Height = 17
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          44.9791666666667
          275.166666666667
          447.145833333333
          425.979166666667)
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = False
        AutoStretch = False
        Color = clWhite
        DataSet = qryOSnota
        DataField = 'CLI_FONE'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -12
        Font.Name = 'Verdana'
        Font.Style = [fsBold]
        ParentFont = False
        Transparent = False
        WordWrap = True
        FontSize = 9
      end
      object QRDBText11: TQRDBText
        Left = 616
        Top = 32
        Width = 89
        Height = 17
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          44.9791666666667
          1629.83333333333
          84.6666666666667
          235.479166666667)
        Alignment = taRightJustify
        AlignToBand = False
        AutoSize = False
        AutoStretch = False
        Color = clWhite
        DataSet = qryOSnota
        DataField = 'CODIGO'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -12
        Font.Name = 'Verdana'
        Font.Style = [fsBold]
        ParentFont = False
        Transparent = False
        WordWrap = True
        FontSize = 9
      end
      object QRDBText12: TQRDBText
        Left = 552
        Top = 72
        Width = 153
        Height = 17
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          44.9791666666667
          1460.5
          190.5
          404.8125)
        Alignment = taRightJustify
        AlignToBand = False
        AutoSize = False
        AutoStretch = False
        Color = clWhite
        DataSet = qryOSnota
        DataField = 'DATA'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -12
        Font.Name = 'Verdana'
        Font.Style = [fsBold]
        ParentFont = False
        Transparent = False
        WordWrap = True
        FontSize = 9
      end
      object QRLabel30: TQRLabel
        Left = 615
        Top = 16
        Width = 90
        Height = 17
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          44.9791666666667
          1627.1875
          42.3333333333333
          238.125)
        Alignment = taRightJustify
        AlignToBand = False
        AutoSize = False
        AutoStretch = False
        Caption = 'N�mero OS'
        Color = clWhite
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'Verdana'
        Font.Style = [fsItalic]
        ParentFont = False
        Transparent = False
        WordWrap = True
        FontSize = 10
      end
      object QRLabel31: TQRLabel
        Left = 592
        Top = 56
        Width = 113
        Height = 17
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          44.9791666666667
          1566.33333333333
          148.166666666667
          298.979166666667)
        Alignment = taRightJustify
        AlignToBand = False
        AutoSize = False
        AutoStretch = False
        Caption = 'Data abertura'
        Color = clWhite
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'Verdana'
        Font.Style = [fsItalic]
        ParentFont = False
        Transparent = False
        WordWrap = True
        FontSize = 10
      end
      object QRDBText5: TQRDBText
        Left = 104
        Top = 217
        Width = 193
        Height = 17
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          44.9791666666667
          275.166666666667
          574.145833333333
          510.645833333333)
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = False
        AutoStretch = False
        Color = clWhite
        DataSet = qryOSnota
        DataField = 'MARCA'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -12
        Font.Name = 'Verdana'
        Font.Style = [fsBold]
        ParentFont = False
        Transparent = False
        WordWrap = True
        FontSize = 9
      end
      object QRDBText13: TQRDBText
        Left = 104
        Top = 233
        Width = 193
        Height = 17
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          44.9791666666667
          275.166666666667
          616.479166666667
          510.645833333333)
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = False
        AutoStretch = False
        Color = clWhite
        DataSet = qryOSnota
        DataField = 'SERIE'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -12
        Font.Name = 'Verdana'
        Font.Style = [fsBold]
        ParentFont = False
        Transparent = False
        WordWrap = True
        FontSize = 9
      end
      object QRDBText15: TQRDBText
        Left = 376
        Top = 217
        Width = 153
        Height = 17
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          44.9791666666667
          994.833333333333
          574.145833333333
          404.8125)
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = False
        AutoStretch = False
        Color = clWhite
        DataSet = qryOSnota
        DataField = 'MODELO'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -12
        Font.Name = 'Verdana'
        Font.Style = [fsBold]
        ParentFont = False
        Transparent = False
        WordWrap = True
        FontSize = 9
      end
      object QRDBText16: TQRDBText
        Left = 376
        Top = 233
        Width = 329
        Height = 17
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          44.9791666666667
          994.833333333333
          616.479166666667
          870.479166666667)
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = False
        AutoStretch = False
        Color = clWhite
        DataSet = qryOSnota
        DataField = 'CONDICAOEXTERNA'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -12
        Font.Name = 'Verdana'
        Font.Style = [fsBold]
        ParentFont = False
        Transparent = False
        WordWrap = True
        FontSize = 9
      end
      object QRDBText17: TQRDBText
        Left = 104
        Top = 249
        Width = 193
        Height = 17
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          44.9791666666667
          275.166666666667
          658.8125
          510.645833333333)
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = False
        AutoStretch = False
        Color = clWhite
        DataSet = qryOSnota
        DataField = 'DEFEITO'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -12
        Font.Name = 'Verdana'
        Font.Style = [fsBold]
        ParentFont = False
        Transparent = False
        WordWrap = True
        FontSize = 9
      end
      object QRLabel54: TQRLabel
        Left = 143
        Top = 328
        Width = 554
        Height = 17
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          44.9791666666667
          378.354166666667
          867.833333333333
          1465.79166666667)
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = False
        AutoStretch = False
        Caption = 
          '________________________________________________________________' +
          '_______________'
        Color = clWhite
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'Arial'
        Font.Style = [fsItalic]
        ParentFont = False
        Transparent = False
        WordWrap = True
        FontSize = 10
      end
      object QRLabel55: TQRLabel
        Left = 143
        Top = 366
        Width = 554
        Height = 17
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          44.9791666666667
          378.354166666667
          968.375
          1465.79166666667)
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = False
        AutoStretch = False
        Caption = 
          '________________________________________________________________' +
          '_______________'
        Color = clWhite
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'Arial'
        Font.Style = [fsItalic]
        ParentFont = False
        Transparent = False
        WordWrap = True
        FontSize = 10
      end
      object QRLabel56: TQRLabel
        Left = 143
        Top = 426
        Width = 170
        Height = 17
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          44.9791666666667
          378.354166666667
          1127.125
          449.791666666667)
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = False
        AutoStretch = False
        Caption = 
          '________________________________________________________________' +
          '_______________'
        Color = clWhite
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'Arial'
        Font.Style = [fsItalic]
        ParentFont = False
        Transparent = False
        WordWrap = True
        FontSize = 10
      end
      object PsQRDBImage1: TPsQRDBImage
        Left = 8
        Top = 8
        Width = 185
        Height = 81
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          214.3125
          21.1666666666667
          21.1666666666667
          489.479166666667)
        DataField = 'IMAGEM'
        DataSet = dmoPrincipal.cdsCliente
        Stretch = True
      end
      object PsQRDBText1: TPsQRDBText
        Left = 208
        Top = 9
        Width = 377
        Height = 14
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          37.0416666666667
          550.333333333333
          23.8125
          997.479166666667)
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = False
        AutoStretch = False
        Color = clWhite
        DataSet = dmoPrincipal.cdsCliente
        DataField = 'RAZAOSOCIAL'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -9
        Font.Name = 'Verdana'
        Font.Style = [fsBold]
        ParentFont = False
        Transparent = False
        WordWrap = True
        FontSize = 7
      end
      object PsQRDBText2: TPsQRDBText
        Left = 208
        Top = 22
        Width = 217
        Height = 14
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          37.0416666666667
          550.333333333333
          58.2083333333333
          574.145833333333)
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = False
        AutoStretch = False
        Color = clWhite
        DataSet = dmoPrincipal.cdsCliente
        DataField = 'LOGRADOURO'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -9
        Font.Name = 'Verdana'
        Font.Style = []
        ParentFont = False
        Transparent = False
        WordWrap = True
        FontSize = 7
      end
      object PsQRDBText3: TPsQRDBText
        Left = 208
        Top = 35
        Width = 233
        Height = 14
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          37.0416666666667
          550.333333333333
          92.6041666666667
          616.479166666667)
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = False
        AutoStretch = False
        Color = clWhite
        DataSet = dmoPrincipal.cdsCliente
        DataField = 'CIDADE'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -9
        Font.Name = 'Verdana'
        Font.Style = []
        ParentFont = False
        Transparent = False
        WordWrap = True
        FontSize = 7
      end
      object QRLabel4: TPsQRLabel
        Left = 208
        Top = 48
        Width = 29
        Height = 14
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          37.0416666666667
          550.333333333333
          127
          76.7291666666667)
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = True
        AutoStretch = False
        Caption = 'CNPJ'
        Color = clWhite
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -9
        Font.Name = 'Verdana'
        Font.Style = []
        ParentFont = False
        Transparent = False
        WordWrap = True
        FontSize = 7
      end
      object QRDBText34: TPsQRDBText
        Left = 241
        Top = 48
        Width = 140
        Height = 14
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          37.0416666666667
          637.645833333333
          127
          370.416666666667)
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = False
        AutoStretch = False
        Color = clWhite
        DataSet = dmoPrincipal.cdsCliente
        DataField = 'CGC'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -9
        Font.Name = 'Verdana'
        Font.Style = []
        ParentFont = False
        Transparent = False
        WordWrap = True
        FontSize = 7
      end
      object PsQRLabel1: TPsQRLabel
        Left = 208
        Top = 61
        Width = 31
        Height = 14
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          37.0416666666667
          550.333333333333
          161.395833333333
          82.0208333333333)
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = True
        AutoStretch = False
        Caption = 'FONE'
        Color = clWhite
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -9
        Font.Name = 'Verdana'
        Font.Style = []
        ParentFont = False
        Transparent = False
        WordWrap = True
        FontSize = 7
      end
      object QRDBText36: TPsQRDBText
        Left = 241
        Top = 61
        Width = 117
        Height = 14
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          37.0416666666667
          637.645833333333
          161.395833333333
          309.5625)
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = False
        AutoStretch = False
        Color = clWhite
        DataSet = dmoPrincipal.cdsCliente
        DataField = 'FONE'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -9
        Font.Name = 'Verdana'
        Font.Style = []
        ParentFont = False
        Transparent = False
        WordWrap = True
        FontSize = 7
      end
      object QRLabel3: TPsQRLabel
        Left = 370
        Top = 61
        Width = 33
        Height = 14
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          37.0416666666667
          978.958333333333
          161.395833333333
          87.3125)
        Alignment = taRightJustify
        AlignToBand = False
        AutoSize = True
        AutoStretch = False
        Caption = 'e-mail'
        Color = clWhite
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -9
        Font.Name = 'Verdana'
        Font.Style = []
        ParentFont = False
        Transparent = False
        WordWrap = True
        FontSize = 7
      end
      object QRDBText37: TPsQRDBText
        Left = 408
        Top = 61
        Width = 177
        Height = 14
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          37.0416666666667
          1079.5
          161.395833333333
          468.3125)
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = False
        AutoStretch = False
        Color = clWhite
        DataSet = dmoPrincipal.cdsCliente
        DataField = 'EMAIL'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -9
        Font.Name = 'Verdana'
        Font.Style = []
        ParentFont = False
        Transparent = False
        WordWrap = True
        FontSize = 7
      end
      object QRLabel1: TPsQRLabel
        Left = 384
        Top = 48
        Width = 47
        Height = 14
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          37.0416666666667
          1016
          127
          124.354166666667)
        Alignment = taRightJustify
        AlignToBand = False
        AutoSize = True
        AutoStretch = False
        Caption = 'Insc.Est.'
        Color = clWhite
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -9
        Font.Name = 'Verdana'
        Font.Style = []
        ParentFont = False
        Transparent = False
        WordWrap = True
        FontSize = 7
      end
      object QRDBText35: TPsQRDBText
        Left = 433
        Top = 48
        Width = 152
        Height = 14
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          37.0416666666667
          1145.64583333333
          127
          402.166666666667)
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = False
        AutoStretch = False
        Color = clWhite
        DataSet = dmoPrincipal.cdsCliente
        DataField = 'IE'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -9
        Font.Name = 'Verdana'
        Font.Style = []
        ParentFont = False
        Transparent = False
        WordWrap = True
        FontSize = 7
      end
      object PsQRDBText4: TPsQRDBText
        Left = 449
        Top = 35
        Width = 24
        Height = 14
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          37.0416666666667
          1187.97916666667
          92.6041666666667
          63.5)
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = False
        AutoStretch = False
        Color = clWhite
        DataSet = dmoPrincipal.cdsCliente
        DataField = 'ESTADO'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -9
        Font.Name = 'Verdana'
        Font.Style = []
        ParentFont = False
        Transparent = False
        WordWrap = True
        FontSize = 7
      end
      object QRDBText33: TPsQRDBText
        Left = 477
        Top = 35
        Width = 108
        Height = 14
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          37.0416666666667
          1262.0625
          92.6041666666667
          285.75)
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = False
        AutoStretch = False
        Color = clWhite
        DataSet = dmoPrincipal.cdsCliente
        DataField = 'CEP'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -9
        Font.Name = 'Verdana'
        Font.Style = []
        ParentFont = False
        Transparent = False
        WordWrap = True
        FontSize = 7
      end
      object PsQRDBText5: TPsQRDBText
        Left = 477
        Top = 22
        Width = 108
        Height = 14
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          37.0416666666667
          1262.0625
          58.2083333333333
          285.75)
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = False
        AutoStretch = False
        Color = clWhite
        DataSet = dmoPrincipal.cdsCliente
        DataField = 'BAIRRO'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -9
        Font.Name = 'Verdana'
        Font.Style = []
        ParentFont = False
        Transparent = False
        WordWrap = True
        FontSize = 7
      end
      object PsQRDBText6: TPsQRDBText
        Left = 433
        Top = 22
        Width = 40
        Height = 14
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          37.0416666666667
          1145.64583333333
          58.2083333333333
          105.833333333333)
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = False
        AutoStretch = False
        Color = clWhite
        DataSet = dmoPrincipal.cdsCliente
        DataField = 'NUMERO'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -9
        Font.Name = 'Verdana'
        Font.Style = []
        ParentFont = False
        Transparent = False
        WordWrap = True
        FontSize = 7
      end
      object QRLabel2: TQRLabel
        Left = 375
        Top = 248
        Width = 194
        Height = 17
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          44.9791666666667
          992.1875
          656.166666666667
          513.291666666667)
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = False
        AutoStretch = False
        Caption = 
          '________________________________________________________________' +
          '_______________'
        Color = clWhite
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'Arial'
        Font.Style = [fsItalic]
        ParentFont = False
        Transparent = False
        WordWrap = True
        FontSize = 10
      end
      object QRLabel46: TQRLabel
        Left = 360
        Top = 191
        Width = 169
        Height = 17
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          44.9791666666667
          952.5
          505.354166666667
          447.145833333333)
        Alignment = taRightJustify
        AlignToBand = False
        AutoSize = False
        AutoStretch = False
        Caption = 'Tipo de Atendimento:'
        Color = clWhite
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'Verdana'
        Font.Style = [fsItalic]
        ParentFont = False
        Transparent = False
        WordWrap = True
        FontSize = 10
      end
      object QRDBText18: TQRDBText
        Left = 536
        Top = 192
        Width = 169
        Height = 17
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          44.9791666666667
          1418.16666666667
          508
          447.145833333333)
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = False
        AutoStretch = False
        Color = clWhite
        DataSet = qryOSnota
        DataField = 'TIPOOS'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -12
        Font.Name = 'Verdana'
        Font.Style = [fsBold]
        ParentFont = False
        Transparent = False
        WordWrap = True
        FontSize = 9
      end
      object PsQRDBText9: TPsQRDBText
        Left = 104
        Top = 264
        Width = 601
        Height = 33
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          87.3125
          275.166666666667
          698.5
          1590.14583333333)
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = False
        AutoStretch = False
        Color = clWhite
        DataSet = qryOSnota
        DataField = 'SERVICOS'
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -12
        Font.Name = 'Verdana'
        Font.Style = []
        ParentFont = False
        Transparent = False
        WordWrap = True
        FontSize = 9
      end
      object QRLabel9: TQRLabel
        Left = 143
        Top = 386
        Width = 554
        Height = 17
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          44.9791666666667
          378.354166666667
          1021.29166666667
          1465.79166666667)
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = False
        AutoStretch = False
        Caption = 
          '________________________________________________________________' +
          '_______________'
        Color = clWhite
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'Arial'
        Font.Style = [fsItalic]
        ParentFont = False
        Transparent = False
        WordWrap = True
        FontSize = 10
      end
      object QRLabel12: TQRLabel
        Left = 320
        Top = 426
        Width = 49
        Height = 17
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          44.9791666666667
          846.666666666667
          1127.125
          129.645833333333)
        Alignment = taRightJustify
        AlignToBand = False
        AutoSize = False
        AutoStretch = False
        Caption = 'In�cio:'
        Color = clWhite
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'Verdana'
        Font.Style = [fsItalic]
        ParentFont = False
        Transparent = False
        WordWrap = True
        FontSize = 10
      end
      object QRLabel44: TQRLabel
        Left = 376
        Top = 426
        Width = 121
        Height = 17
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          44.9791666666667
          994.833333333333
          1127.125
          320.145833333333)
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = False
        AutoStretch = False
        Caption = 
          '________________________________________________________________' +
          '_______________'
        Color = clWhite
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'Arial'
        Font.Style = [fsItalic]
        ParentFont = False
        Transparent = False
        WordWrap = True
        FontSize = 10
      end
      object QRLabel52: TQRLabel
        Left = 504
        Top = 426
        Width = 65
        Height = 17
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          44.9791666666667
          1333.5
          1127.125
          171.979166666667)
        Alignment = taRightJustify
        AlignToBand = False
        AutoSize = False
        AutoStretch = False
        Caption = 'T�rmino:'
        Color = clWhite
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'Verdana'
        Font.Style = [fsItalic]
        ParentFont = False
        Transparent = False
        WordWrap = True
        FontSize = 10
      end
      object QRLabel63: TQRLabel
        Left = 576
        Top = 426
        Width = 121
        Height = 17
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          44.9791666666667
          1524
          1127.125
          320.145833333333)
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = False
        AutoStretch = False
        Caption = 
          '________________________________________________________________' +
          '_______________'
        Color = clWhite
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'Arial'
        Font.Style = [fsItalic]
        ParentFont = False
        Transparent = False
        WordWrap = True
        FontSize = 10
      end
      object QRLabel34: TQRLabel
        Left = 343
        Top = 168
        Width = 90
        Height = 17
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          44.9791666666667
          907.520833333333
          444.5
          238.125)
        Alignment = taRightJustify
        AlignToBand = False
        AutoSize = False
        AutoStretch = False
        Caption = 'Solicitante:'
        Color = clWhite
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'Verdana'
        Font.Style = [fsItalic]
        ParentFont = False
        Transparent = False
        WordWrap = True
        FontSize = 10
      end
      object QRDBText8: TQRDBText
        Left = 440
        Top = 169
        Width = 257
        Height = 17
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          44.9791666666667
          1164.16666666667
          447.145833333333
          679.979166666667)
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = False
        AutoStretch = False
        Color = clWhite
        DataSet = qryOSnota
        DataField = 'SOLICITANTE'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -12
        Font.Name = 'Verdana'
        Font.Style = [fsBold]
        ParentFont = False
        Transparent = False
        WordWrap = True
        FontSize = 9
      end
      object QRLabel19: TQRLabel
        Left = 143
        Top = 347
        Width = 554
        Height = 17
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          44.9791666666667
          378.354166666667
          918.104166666667
          1465.79166666667)
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = False
        AutoStretch = False
        Caption = 
          '________________________________________________________________' +
          '_______________'
        Color = clWhite
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'Arial'
        Font.Style = [fsItalic]
        ParentFont = False
        Transparent = False
        WordWrap = True
        FontSize = 10
      end
      object QRLabel47: TQRLabel
        Left = 143
        Top = 406
        Width = 554
        Height = 17
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          44.9791666666667
          378.354166666667
          1074.20833333333
          1465.79166666667)
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = False
        AutoStretch = False
        Caption = 
          '________________________________________________________________' +
          '_______________'
        Color = clWhite
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'Arial'
        Font.Style = [fsItalic]
        ParentFont = False
        Transparent = False
        WordWrap = True
        FontSize = 10
      end
      object QRLabel48: TQRLabel
        Left = 7
        Top = 446
        Width = 130
        Height = 17
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          44.9791666666667
          18.5208333333333
          1180.04166666667
          343.958333333333)
        Alignment = taRightJustify
        AlignToBand = False
        AutoSize = False
        AutoStretch = False
        Caption = 'Observa��es:'
        Color = clWhite
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'Verdana'
        Font.Style = [fsItalic]
        ParentFont = False
        Transparent = False
        WordWrap = True
        FontSize = 10
      end
      object QRLabel49: TQRLabel
        Left = 143
        Top = 446
        Width = 554
        Height = 17
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          44.9791666666667
          378.354166666667
          1180.04166666667
          1465.79166666667)
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = False
        AutoStretch = False
        Caption = 
          '________________________________________________________________' +
          '_______________'
        Color = clWhite
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'Arial'
        Font.Style = [fsItalic]
        ParentFont = False
        Transparent = False
        WordWrap = True
        FontSize = 10
      end
      object QRLabel50: TQRLabel
        Left = 143
        Top = 466
        Width = 554
        Height = 17
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          44.9791666666667
          378.354166666667
          1232.95833333333
          1465.79166666667)
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = False
        AutoStretch = False
        Caption = 
          '________________________________________________________________' +
          '_______________'
        Color = clWhite
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'Arial'
        Font.Style = [fsItalic]
        ParentFont = False
        Transparent = False
        WordWrap = True
        FontSize = 10
      end
      object QRLabel51: TQRLabel
        Left = 143
        Top = 486
        Width = 554
        Height = 17
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          44.9791666666667
          378.354166666667
          1285.875
          1465.79166666667)
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = False
        AutoStretch = False
        Caption = 
          '________________________________________________________________' +
          '_______________'
        Color = clWhite
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'Arial'
        Font.Style = [fsItalic]
        ParentFont = False
        Transparent = False
        WordWrap = True
        FontSize = 10
      end
      object QRDBText9: TQRDBText
        Left = 384
        Top = 121
        Width = 321
        Height = 17
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          44.9791666666667
          1016
          320.145833333333
          849.3125)
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = False
        AutoStretch = False
        Color = clWhite
        DataSet = qryOSnota
        DataField = 'CLI_RAZAOSOCIAL'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -12
        Font.Name = 'Verdana'
        Font.Style = [fsBold]
        ParentFont = False
        Transparent = False
        WordWrap = True
        FontSize = 9
      end
      object QRDBText14: TQRDBText
        Left = 158
        Top = 98
        Width = 99
        Height = 17
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          44.9791666666667
          418.041666666667
          259.291666666667
          261.9375)
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = False
        AutoStretch = False
        Color = clWhite
        DataSet = qryOSnota
        DataField = 'CODCLIENTE'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -12
        Font.Name = 'Verdana'
        Font.Style = [fsBold]
        ParentFont = False
        Transparent = False
        WordWrap = True
        FontSize = 9
      end
      object QRShape1: TQRShape
        Left = 0
        Top = 112
        Width = 721
        Height = 3
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          7.9375
          0
          296.333333333333
          1907.64583333333)
        Shape = qrsHorLine
      end
    end
    object PageFooterBand1: TQRBand
      Left = 38
      Top = 595
      Width = 718
      Height = 248
      Frame.Color = clBlack
      Frame.DrawTop = False
      Frame.DrawBottom = False
      Frame.DrawLeft = False
      Frame.DrawRight = False
      AlignToBottom = False
      Color = clWhite
      ForceNewColumn = False
      ForceNewPage = False
      Size.Values = (
        656.166666666667
        1899.70833333333)
      BandType = rbPageFooter
      object QRShape11: TQRShape
        Left = 0
        Top = 10
        Width = 721
        Height = 3
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          7.9375
          0
          26.4583333333333
          1907.64583333333)
        Shape = qrsHorLine
      end
      object QRLabel32: TQRLabel
        Left = 8
        Top = 16
        Width = 250
        Height = 19
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          50.2708333333333
          21.1666666666667
          42.3333333333333
          661.458333333333)
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = True
        AutoStretch = False
        Caption = 'Total dos Servi�os e Produtos:'
        Color = clWhite
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -15
        Font.Name = 'Verdana'
        Font.Style = [fsBold]
        ParentFont = False
        Transparent = False
        WordWrap = True
        FontSize = 11
      end
      object QRShape12: TQRShape
        Left = 0
        Top = 32
        Width = 721
        Height = 3
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          7.9375
          0
          84.6666666666667
          1907.64583333333)
        Shape = qrsHorLine
      end
      object QRLabel35: TQRLabel
        Left = 424
        Top = 40
        Width = 137
        Height = 17
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          44.9791666666667
          1121.83333333333
          105.833333333333
          362.479166666667)
        Alignment = taRightJustify
        AlignToBand = False
        AutoSize = False
        AutoStretch = False
        Caption = 'Total de Pe�as:'
        Color = clWhite
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'Verdana'
        Font.Style = [fsItalic]
        ParentFont = False
        Transparent = False
        WordWrap = True
        FontSize = 10
      end
      object QRLabel36: TQRLabel
        Left = 424
        Top = 64
        Width = 137
        Height = 17
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          44.9791666666667
          1121.83333333333
          169.333333333333
          362.479166666667)
        Alignment = taRightJustify
        AlignToBand = False
        AutoSize = False
        AutoStretch = False
        Caption = 'M�o-de-Obra:'
        Color = clWhite
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'Verdana'
        Font.Style = [fsItalic]
        ParentFont = False
        Transparent = False
        WordWrap = True
        FontSize = 10
      end
      object QRLabel37: TQRLabel
        Left = 424
        Top = 88
        Width = 137
        Height = 17
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          44.9791666666667
          1121.83333333333
          232.833333333333
          362.479166666667)
        Alignment = taRightJustify
        AlignToBand = False
        AutoSize = False
        AutoStretch = False
        Caption = 'Total:'
        Color = clWhite
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clMaroon
        Font.Height = -12
        Font.Name = 'Verdana'
        Font.Style = [fsBold, fsItalic]
        ParentFont = False
        Transparent = False
        WordWrap = True
        FontSize = 9
      end
      object QRDBText23: TQRDBText
        Left = 568
        Top = 40
        Width = 137
        Height = 17
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          44.9791666666667
          1502.83333333333
          105.833333333333
          362.479166666667)
        Alignment = taRightJustify
        AlignToBand = False
        AutoSize = False
        AutoStretch = False
        Color = clWhite
        DataSet = qryOSnota
        DataField = 'VALOR_PRODUTOS'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -12
        Font.Name = 'Verdana'
        Font.Style = [fsBold]
        ParentFont = False
        Transparent = False
        WordWrap = True
        FontSize = 9
      end
      object QRDBText24: TQRDBText
        Left = 568
        Top = 64
        Width = 137
        Height = 17
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          44.9791666666667
          1502.83333333333
          169.333333333333
          362.479166666667)
        Alignment = taRightJustify
        AlignToBand = False
        AutoSize = False
        AutoStretch = False
        Color = clWhite
        DataSet = qryOSnota
        DataField = 'VALOR_SERVICOS'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -12
        Font.Name = 'Verdana'
        Font.Style = [fsBold]
        ParentFont = False
        Transparent = False
        WordWrap = True
        FontSize = 9
      end
      object QRDBText25: TQRDBText
        Left = 568
        Top = 88
        Width = 137
        Height = 17
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          44.9791666666667
          1502.83333333333
          232.833333333333
          362.479166666667)
        Alignment = taRightJustify
        AlignToBand = False
        AutoSize = False
        AutoStretch = False
        Color = clWhite
        DataSet = qryOSnota
        DataField = 'VALOR_TOTAL'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clMaroon
        Font.Height = -12
        Font.Name = 'Verdana'
        Font.Style = [fsBold]
        ParentFont = False
        Transparent = False
        WordWrap = True
        FontSize = 9
      end
      object QRLabel38: TQRLabel
        Left = 8
        Top = 88
        Width = 129
        Height = 17
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          44.9791666666667
          21.1666666666667
          232.833333333333
          341.3125)
        Alignment = taRightJustify
        AlignToBand = False
        AutoSize = False
        AutoStretch = False
        Caption = 'Cliente Autorizou?'
        Color = clWhite
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'Verdana'
        Font.Style = [fsItalic]
        ParentFont = False
        Transparent = False
        WordWrap = True
        FontSize = 10
      end
      object QRShape13: TQRShape
        Left = 144
        Top = 88
        Width = 25
        Height = 17
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Frame.Width = 2
        Size.Values = (
          44.9791666666667
          381
          232.833333333333
          66.1458333333333)
        Pen.Width = 2
        Shape = qrsRectangle
      end
      object QRLabel39: TQRLabel
        Left = 175
        Top = 88
        Width = 34
        Height = 17
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          44.9791666666667
          463.020833333333
          232.833333333333
          89.9583333333333)
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = False
        AutoStretch = False
        Caption = 'Sim'
        Color = clWhite
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'Verdana'
        Font.Style = [fsItalic]
        ParentFont = False
        Transparent = False
        WordWrap = True
        FontSize = 10
      end
      object QRShape14: TQRShape
        Left = 224
        Top = 88
        Width = 25
        Height = 17
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Frame.Width = 2
        Size.Values = (
          44.9791666666667
          592.666666666667
          232.833333333333
          66.1458333333333)
        Pen.Width = 2
        Shape = qrsRectangle
      end
      object QRLabel40: TQRLabel
        Left = 255
        Top = 88
        Width = 34
        Height = 17
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          44.9791666666667
          674.6875
          232.833333333333
          89.9583333333333)
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = False
        AutoStretch = False
        Caption = 'N�o'
        Color = clWhite
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'Verdana'
        Font.Style = [fsItalic]
        ParentFont = False
        Transparent = False
        WordWrap = True
        FontSize = 10
      end
      object QRLabel41: TQRLabel
        Left = 88
        Top = 112
        Width = 49
        Height = 17
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          44.9791666666667
          232.833333333333
          296.333333333333
          129.645833333333)
        Alignment = taRightJustify
        AlignToBand = False
        AutoSize = False
        AutoStretch = False
        Caption = 'Data:'
        Color = clWhite
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'Verdana'
        Font.Style = [fsItalic]
        ParentFont = False
        Transparent = False
        WordWrap = True
        FontSize = 10
      end
      object QRLabel42: TQRLabel
        Left = 424
        Top = 136
        Width = 137
        Height = 17
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          44.9791666666667
          1121.83333333333
          359.833333333333
          362.479166666667)
        Alignment = taRightJustify
        AlignToBand = False
        AutoSize = False
        AutoStretch = False
        Caption = 'Data da Entrega:'
        Color = clWhite
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'Verdana'
        Font.Style = [fsItalic]
        ParentFont = False
        Transparent = False
        WordWrap = True
        FontSize = 10
      end
      object QRLabel43: TQRLabel
        Left = 16
        Top = 136
        Width = 121
        Height = 17
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          44.9791666666667
          42.3333333333333
          359.833333333333
          320.145833333333)
        Alignment = taRightJustify
        AlignToBand = False
        AutoSize = False
        AutoStretch = False
        Caption = 'Quem autorizou?'
        Color = clWhite
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'Verdana'
        Font.Style = [fsItalic]
        ParentFont = False
        Transparent = False
        WordWrap = True
        FontSize = 10
      end
      object QRLabel45: TQRLabel
        Left = 16
        Top = 168
        Width = 257
        Height = 17
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          44.9791666666667
          42.3333333333333
          444.5
          679.979166666667)
        Alignment = taRightJustify
        AlignToBand = False
        AutoSize = False
        AutoStretch = False
        Caption = 'Assinatura do Cliente ou Respons�vel:'
        Color = clWhite
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'Verdana'
        Font.Style = [fsItalic]
        ParentFont = False
        Transparent = False
        WordWrap = True
        FontSize = 10
      end
      object QRLabel59: TQRLabel
        Left = 144
        Top = 112
        Width = 113
        Height = 17
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          44.9791666666667
          381
          296.333333333333
          298.979166666667)
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = False
        AutoStretch = False
        Caption = '________________'
        Color = clWhite
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'Arial'
        Font.Style = [fsItalic]
        ParentFont = False
        Transparent = False
        WordWrap = True
        FontSize = 10
      end
      object QRLabel60: TQRLabel
        Left = 567
        Top = 136
        Width = 114
        Height = 17
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          44.9791666666667
          1500.1875
          359.833333333333
          301.625)
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = False
        AutoStretch = False
        Caption = '_________________________'
        Color = clWhite
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'Arial'
        Font.Style = [fsItalic]
        ParentFont = False
        Transparent = False
        WordWrap = True
        FontSize = 10
      end
      object QRLabel61: TQRLabel
        Left = 143
        Top = 136
        Width = 114
        Height = 17
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          44.9791666666667
          378.354166666667
          359.833333333333
          301.625)
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = False
        AutoStretch = False
        Caption = '________________'
        Color = clWhite
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'Arial'
        Font.Style = [fsItalic]
        ParentFont = False
        Transparent = False
        WordWrap = True
        FontSize = 10
      end
      object QRLabel62: TQRLabel
        Left = 279
        Top = 168
        Width = 202
        Height = 17
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          44.9791666666667
          738.1875
          444.5
          534.458333333333)
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = False
        AutoStretch = False
        Caption = '____________________________'
        Color = clWhite
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'Arial'
        Font.Style = [fsItalic]
        ParentFont = False
        Transparent = False
        WordWrap = True
        FontSize = 10
      end
      object QRLabel25: TQRLabel
        Left = 16
        Top = 200
        Width = 257
        Height = 17
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          44.9791666666667
          42.3333333333333
          529.166666666667
          679.979166666667)
        Alignment = taRightJustify
        AlignToBand = False
        AutoSize = False
        AutoStretch = False
        Caption = 'Assinatura do T�cnico:'
        Color = clWhite
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'Verdana'
        Font.Style = [fsItalic]
        ParentFont = False
        Transparent = False
        WordWrap = True
        FontSize = 10
      end
      object QRLabel33: TQRLabel
        Left = 279
        Top = 200
        Width = 202
        Height = 17
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          44.9791666666667
          738.1875
          529.166666666667
          534.458333333333)
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = False
        AutoStretch = False
        Caption = '____________________________'
        Color = clWhite
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'Arial'
        Font.Style = [fsItalic]
        ParentFont = False
        Transparent = False
        WordWrap = True
        FontSize = 10
      end
      object qrMSG: TQRLabel
        Left = 17
        Top = 225
        Width = 690
        Height = 17
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          44.9791666666667
          44.9791666666667
          595.3125
          1825.625)
        Alignment = taCenter
        AlignToBand = False
        AutoSize = False
        AutoStretch = False
        Caption = 
          'HOR�RIO DE ATENDIMENTO: SEGUNDA A SEXTA DAS 09h AS 18h;  AOS SAB' +
          'ADOS DAS 9h AS 13h'
        Color = clWhite
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Verdana'
        Font.Style = [fsBold]
        ParentFont = False
        Transparent = False
        WordWrap = True
        FontSize = 8
      end
    end
  end
  object qryOSnota: TIBQuery
    Database = dmoPrincipal.Database
    Transaction = traOSnota
    AfterOpen = qryOSnotaAfterOpen
    BufferChunks = 100
    CachedUpdates = False
    SQL.Strings = (
      'SELECT'
      '  *'
      'FROM'
      '  REL_NOTACORPO(:CODIGO)'
      '  '
      ''
      ''
      ''
      ' '
      ' '
      ' '
      ' '
      ' '
      ' '
      ' ')
    UniDirectional = True
    Left = 40
    Top = 66
    ParamData = <
      item
        DataType = ftInteger
        Name = 'codigo'
        ParamType = ptUnknown
      end>
    object qryOSnotaES: TSmallintField
      FieldName = 'ES'
    end
    object qryOSnotaCODCLIENTE: TIntegerField
      FieldName = 'CODCLIENTE'
    end
    object qryOSnotaDATA: TDateTimeField
      FieldName = 'DATA'
      DisplayFormat = 'dd/mm/yy HH:mm'
    end
    object qryOSnotaVALOR_SERVICOS: TIBBCDField
      FieldName = 'VALOR_SERVICOS'
      currency = True
      Precision = 9
      Size = 2
    end
    object qryOSnotaVALOR_ITENS: TIBBCDField
      FieldName = 'VALOR_ITENS'
      Precision = 9
      Size = 2
    end
    object qryOSnotaDESCONTO: TIBBCDField
      FieldName = 'DESCONTO'
      Precision = 9
      Size = 2
    end
    object qryOSnotaVALOR_PRODUTOS: TIBBCDField
      FieldName = 'VALOR_PRODUTOS'
      currency = True
      Precision = 9
      Size = 2
    end
    object qryOSnotaVALOR_ICMS: TIBBCDField
      FieldName = 'VALOR_ICMS'
      Precision = 9
      Size = 2
    end
    object qryOSnotaVALOR_TOTAL: TIBBCDField
      FieldName = 'VALOR_TOTAL'
      currency = True
      Precision = 9
      Size = 2
    end
    object qryOSnotaNOTA_NUMERO: TIntegerField
      FieldName = 'NOTA_NUMERO'
    end
    object qryOSnotaNOTA_DATAEMISSAO: TDateTimeField
      FieldName = 'NOTA_DATAEMISSAO'
    end
    object qryOSnotaNOTA_CODTRANSPORTADOR: TIntegerField
      FieldName = 'NOTA_CODTRANSPORTADOR'
    end
    object qryOSnotaNOTA_PLACAVEICULO: TIBStringField
      FieldName = 'NOTA_PLACAVEICULO'
      Size = 10
    end
    object qryOSnotaNOTA_UFVEICULO: TIBStringField
      FieldName = 'NOTA_UFVEICULO'
      Size = 2
    end
    object qryOSnotaNOTA_FRETE: TSmallintField
      FieldName = 'NOTA_FRETE'
    end
    object qryOSnotaNOTA_VALOR_FRETE: TIBBCDField
      FieldName = 'NOTA_VALOR_FRETE'
      Precision = 9
      Size = 2
    end
    object qryOSnotaNOTA_VALOR_SEGURO: TIBBCDField
      FieldName = 'NOTA_VALOR_SEGURO'
      Precision = 9
      Size = 2
    end
    object qryOSnotaNOTA_VALOR_OUTROS: TIBBCDField
      FieldName = 'NOTA_VALOR_OUTROS'
      Precision = 9
      Size = 2
    end
    object qryOSnotaNOTA_VALOR_TOTAL: TIBBCDField
      FieldName = 'NOTA_VALOR_TOTAL'
      Precision = 9
      Size = 2
    end
    object qryOSnotaNOTA_QUANTIDADE: TIBBCDField
      FieldName = 'NOTA_QUANTIDADE'
      Precision = 9
      Size = 2
    end
    object qryOSnotaNOTA_ESPECIE: TIBStringField
      FieldName = 'NOTA_ESPECIE'
      Size = 30
    end
    object qryOSnotaNOTA_MARCA: TIBStringField
      FieldName = 'NOTA_MARCA'
    end
    object qryOSnotaNOTA_VOLNUM: TIntegerField
      FieldName = 'NOTA_VOLNUM'
    end
    object qryOSnotaNOTA_PESOBRUTO: TIBBCDField
      FieldName = 'NOTA_PESOBRUTO'
      Precision = 9
      Size = 2
    end
    object qryOSnotaNOTA_PESOLIQUIDO: TIBBCDField
      FieldName = 'NOTA_PESOLIQUIDO'
      Precision = 9
      Size = 2
    end
    object qryOSnotaCODVENDEDOR: TIntegerField
      FieldName = 'CODVENDEDOR'
    end
    object qryOSnotaSTATUS: TIBStringField
      FieldName = 'STATUS'
    end
    object qryOSnotaCONDICAO: TIBStringField
      FieldName = 'CONDICAO'
      Size = 40
    end
    object qryOSnotaDATAINICIO: TDateTimeField
      FieldName = 'DATAINICIO'
    end
    object qryOSnotaDATATERMINO: TDateTimeField
      FieldName = 'DATATERMINO'
    end
    object qryOSnotaICMSSIMPLES: TIBStringField
      FieldName = 'ICMSSIMPLES'
      FixedChar = True
      Size = 1
    end
    object qryOSnotaVALOR_ISS: TIBBCDField
      FieldName = 'VALOR_ISS'
      Precision = 9
      Size = 2
    end
    object qryOSnotaNOTA_IESUBST: TIBStringField
      FieldName = 'NOTA_IESUBST'
    end
    object qryOSnotaNOTA_DATASAIDA: TDateTimeField
      FieldName = 'NOTA_DATASAIDA'
    end
    object qryOSnotaNOTA_VALORICMSSUBST: TIBBCDField
      FieldName = 'NOTA_VALORICMSSUBST'
      Precision = 9
      Size = 2
    end
    object qryOSnotaVALOR_IPI: TIBBCDField
      FieldName = 'VALOR_IPI'
      Precision = 9
      Size = 2
    end
    object qryOSnotaCODVENDEDOR_ABRE: TIntegerField
      FieldName = 'CODVENDEDOR_ABRE'
    end
    object qryOSnotaDESCONTOTXT: TIBStringField
      FieldName = 'DESCONTOTXT'
      Size = 40
    end
    object qryOSnotaCLI_NOME: TIBStringField
      FieldName = 'CLI_NOME'
      Size = 40
    end
    object qryOSnotaCLI_NUMERO: TIntegerField
      FieldName = 'CLI_NUMERO'
    end
    object qryOSnotaCLI_COMPLEMENTO: TIBStringField
      FieldName = 'CLI_COMPLEMENTO'
      Size = 40
    end
    object qryOSnotaCLI_BAIRRO: TIBStringField
      FieldName = 'CLI_BAIRRO'
      Size = 60
    end
    object qryOSnotaCLI_CEP: TIBStringField
      FieldName = 'CLI_CEP'
      Size = 10
    end
    object qryOSnotaCLI_CIDADE: TIBStringField
      FieldName = 'CLI_CIDADE'
      Size = 60
    end
    object qryOSnotaCLI_ESTADO: TIBStringField
      FieldName = 'CLI_ESTADO'
      Size = 2
    end
    object qryOSnotaCLI_FONE: TIBStringField
      FieldName = 'CLI_FONE'
    end
    object qryOSnotaCLI_FAX: TIBStringField
      FieldName = 'CLI_FAX'
    end
    object qryOSnotaCLI_EMAIL: TIBStringField
      FieldName = 'CLI_EMAIL'
      Size = 50
    end
    object qryOSnotaCLI_RGIE: TIBStringField
      FieldName = 'CLI_RGIE'
    end
    object qryOSnotaCLI_CPFCGC: TIBStringField
      FieldName = 'CLI_CPFCGC'
    end
    object qryOSnotaTRA_NOME: TIBStringField
      FieldName = 'TRA_NOME'
      Size = 40
    end
    object qryOSnotaTRA_LOGRADOURO: TIBStringField
      FieldName = 'TRA_LOGRADOURO'
      Size = 40
    end
    object qryOSnotaTRA_NUMERO: TIntegerField
      FieldName = 'TRA_NUMERO'
    end
    object qryOSnotaTRA_COMPLEMENTO: TIBStringField
      FieldName = 'TRA_COMPLEMENTO'
      Size = 40
    end
    object qryOSnotaTRA_BAIRRO: TIBStringField
      FieldName = 'TRA_BAIRRO'
      Size = 60
    end
    object qryOSnotaTRA_CEP: TIBStringField
      FieldName = 'TRA_CEP'
      Size = 10
    end
    object qryOSnotaTRA_CIDADE: TIBStringField
      FieldName = 'TRA_CIDADE'
      Size = 60
    end
    object qryOSnotaTRA_ESTADO: TIBStringField
      FieldName = 'TRA_ESTADO'
      Size = 2
    end
    object qryOSnotaTRA_FONE: TIBStringField
      FieldName = 'TRA_FONE'
    end
    object qryOSnotaTRA_FAX: TIBStringField
      FieldName = 'TRA_FAX'
    end
    object qryOSnotaTRA_EMAIL: TIBStringField
      FieldName = 'TRA_EMAIL'
      Size = 50
    end
    object qryOSnotaTRA_RGIE: TIBStringField
      FieldName = 'TRA_RGIE'
    end
    object qryOSnotaTRA_CPFCGC: TIBStringField
      FieldName = 'TRA_CPFCGC'
    end
    object qryOSnotaCODIGO: TIntegerField
      FieldName = 'CODIGO'
    end
    object qryOSnotaMARCA: TIBStringField
      FieldName = 'MARCA'
      Size = 40
    end
    object qryOSnotaMODELO: TIBStringField
      FieldName = 'MODELO'
      Size = 40
    end
    object qryOSnotaDEFEITO: TIBStringField
      FieldName = 'DEFEITO'
      Size = 40
    end
    object qryOSnotaGARANTIA: TIBStringField
      FieldName = 'GARANTIA'
      FixedChar = True
      Size = 1
    end
    object qryOSnotaSERIE: TIBStringField
      FieldName = 'SERIE'
      Size = 40
    end
    object qryOSnotaACESSORIOS: TIBStringField
      FieldName = 'ACESSORIOS'
      Size = 40
    end
    object qryOSnotaCONDICAOEXTERNA: TIBStringField
      FieldName = 'CONDICAOEXTERNA'
      Size = 40
    end
    object qryOSnotaSERVICOS: TIBStringField
      FieldName = 'SERVICOS'
      Size = 254
    end
    object qryOSnotaSOLICITANTE: TIBStringField
      FieldName = 'SOLICITANTE'
      Size = 40
    end
    object qryOSnotaOBSERVACOES: TIBStringField
      FieldName = 'OBSERVACOES'
      Origin = '"REL_NOTACORPO"."OBSERVACOES"'
      Size = 254
    end
    object qryOSnotaNOTA_CODNATUOPER: TIBStringField
      FieldName = 'NOTA_CODNATUOPER'
      Origin = '"REL_NOTACORPO"."NOTA_CODNATUOPER"'
      Size = 10
    end
    object qryOSnotaNOTA_DADOSADICIONAIS: TIBStringField
      FieldName = 'NOTA_DADOSADICIONAIS'
      Origin = '"REL_NOTACORPO"."NOTA_DADOSADICIONAIS"'
      Size = 254
    end
    object qryOSnotaICMSSIMPALIQ: TIBBCDField
      FieldName = 'ICMSSIMPALIQ'
      Origin = '"REL_NOTACORPO"."ICMSSIMPALIQ"'
      Precision = 9
      Size = 4
    end
    object qryOSnotaISSALIQ: TIBBCDField
      FieldName = 'ISSALIQ'
      Origin = '"REL_NOTACORPO"."ISSALIQ"'
      Precision = 9
      Size = 4
    end
    object qryOSnotaNOTA_BASEICMS: TIBBCDField
      FieldName = 'NOTA_BASEICMS'
      Origin = '"REL_NOTACORPO"."NOTA_BASEICMS"'
      Precision = 9
      Size = 4
    end
    object qryOSnotaNOTA_BASEICMSSUBST: TIBBCDField
      FieldName = 'NOTA_BASEICMSSUBST'
      Origin = '"REL_NOTACORPO"."NOTA_BASEICMSSUBST"'
      Precision = 9
      Size = 4
    end
    object qryOSnotaVENDEDORABRE: TIBStringField
      FieldName = 'VENDEDORABRE'
      Origin = '"REL_NOTACORPO"."VENDEDORABRE"'
      Size = 40
    end
    object qryOSnotaVENDEDOR: TIBStringField
      FieldName = 'VENDEDOR'
      Origin = '"REL_NOTACORPO"."VENDEDOR"'
      Size = 40
    end
    object qryOSnotaUSUARIO: TIBStringField
      FieldName = 'USUARIO'
      Origin = '"REL_NOTACORPO"."USUARIO"'
      Size = 40
    end
    object qryOSnotaCLI_CONTRATO: TIBStringField
      FieldName = 'CLI_CONTRATO'
      Origin = '"REL_NOTACORPO"."CLI_CONTRATO"'
      FixedChar = True
      Size = 1
    end
    object qryOSnotaCLI_KM: TIntegerField
      FieldName = 'CLI_KM'
      Origin = '"REL_NOTACORPO"."CLI_KM"'
    end
    object qryOSnotaNATUREZAOPERACAO: TIBStringField
      FieldName = 'NATUREZAOPERACAO'
      Origin = '"REL_NOTACORPO"."NATUREZAOPERACAO"'
      Size = 10
    end
    object qryOSnotaCODEMPRESA: TIntegerField
      FieldName = 'CODEMPRESA'
      Origin = '"REL_NOTACORPO"."CODEMPRESA"'
    end
    object qryOSnotaEMPRESA_NOME: TIBStringField
      FieldName = 'EMPRESA_NOME'
      Origin = '"REL_NOTACORPO"."EMPRESA_NOME"'
      Size = 40
    end
    object qryOSnotaEMPRESA_RAZAOSOCIAL: TIBStringField
      FieldName = 'EMPRESA_RAZAOSOCIAL'
      Origin = '"REL_NOTACORPO"."EMPRESA_RAZAOSOCIAL"'
      Size = 40
    end
    object qryOSnotaEMPRESA_CNPJ: TIBStringField
      FieldName = 'EMPRESA_CNPJ'
      Origin = '"REL_NOTACORPO"."EMPRESA_CNPJ"'
    end
    object qryOSnotaEMPRESA_IE: TIBStringField
      FieldName = 'EMPRESA_IE'
      Origin = '"REL_NOTACORPO"."EMPRESA_IE"'
    end
    object qryOSnotaEMPRESA_LOGRADOURO: TIBStringField
      FieldName = 'EMPRESA_LOGRADOURO'
      Origin = '"REL_NOTACORPO"."EMPRESA_LOGRADOURO"'
      Size = 60
    end
    object qryOSnotaEMPRESA_NUMERO: TIntegerField
      FieldName = 'EMPRESA_NUMERO'
      Origin = '"REL_NOTACORPO"."EMPRESA_NUMERO"'
    end
    object qryOSnotaEMPRESA_COMPLEMENTO: TIBStringField
      FieldName = 'EMPRESA_COMPLEMENTO'
      Origin = '"REL_NOTACORPO"."EMPRESA_COMPLEMENTO"'
      Size = 40
    end
    object qryOSnotaEMPRESA_BAIRRO: TIBStringField
      FieldName = 'EMPRESA_BAIRRO'
      Origin = '"REL_NOTACORPO"."EMPRESA_BAIRRO"'
      Size = 60
    end
    object qryOSnotaEMPRESA_CIDADE: TIBStringField
      FieldName = 'EMPRESA_CIDADE'
      Origin = '"REL_NOTACORPO"."EMPRESA_CIDADE"'
      Size = 60
    end
    object qryOSnotaEMPRESA_ESTADO: TIBStringField
      FieldName = 'EMPRESA_ESTADO'
      Origin = '"REL_NOTACORPO"."EMPRESA_ESTADO"'
      FixedChar = True
      Size = 2
    end
    object qryOSnotaEMPRESA_CEP: TIBStringField
      FieldName = 'EMPRESA_CEP'
      Origin = '"REL_NOTACORPO"."EMPRESA_CEP"'
      Size = 9
    end
    object qryOSnotaEMPRESA_FONE: TIBStringField
      FieldName = 'EMPRESA_FONE'
      Origin = '"REL_NOTACORPO"."EMPRESA_FONE"'
    end
    object qryOSnotaTIPOOS: TIBStringField
      FieldName = 'TIPOOS'
      Origin = '"REL_NOTACORPO"."TIPOOS"'
      Size = 40
    end
    object qryOSnotaCLI_LOGRADOURO: TIBStringField
      FieldName = 'CLI_LOGRADOURO'
      Origin = '"REL_NOTACORPO"."CLI_LOGRADOURO"'
      Size = 60
    end
    object qryOSnotaCLI_RAZAOSOCIAL: TIBStringField
      FieldName = 'CLI_RAZAOSOCIAL'
      Origin = '"REL_NOTACORPO"."CLI_RAZAOSOCIAL"'
      Size = 40
    end
    object qryOSnotaXX_ENTRADA: TIBStringField
      FieldName = 'XX_ENTRADA'
      Origin = '"REL_NOTACORPO"."XX_ENTRADA"'
      FixedChar = True
      Size = 2
    end
    object qryOSnotaXX_SAIDA: TIBStringField
      FieldName = 'XX_SAIDA'
      Origin = '"REL_NOTACORPO"."XX_SAIDA"'
      FixedChar = True
      Size = 2
    end
  end
  object qryItens: TIBQuery
    Database = dmoPrincipal.Database
    Transaction = traItens
    AutoCalcFields = False
    AfterOpen = qryItensAfterOpen
    BufferChunks = 100
    CachedUpdates = False
    SQL.Strings = (
      'SELECT'
      '  *'
      'FROM'
      '  REL_NOTAPRO(:CODIGO)')
    Left = 120
    Top = 66
    ParamData = <
      item
        DataType = ftInteger
        Name = 'codigo'
        ParamType = ptUnknown
      end>
    object qryItensCODIGO: TIntegerField
      FieldName = 'CODIGO'
      Origin = '"REL_NOTAPRO"."CODIGO"'
    end
    object qryItensBARRA: TIBStringField
      FieldName = 'BARRA'
      Origin = '"REL_NOTAPRO"."BARRA"'
      FixedChar = True
      Size = 13
    end
    object qryItensDESCRICAO1: TIBStringField
      FieldName = 'DESCRICAO1'
      Origin = '"REL_NOTAPRO"."DESCRICAO1"'
      Size = 60
    end
    object qryItensDESCRICAO2: TIBStringField
      FieldName = 'DESCRICAO2'
      Origin = '"REL_NOTAPRO"."DESCRICAO2"'
      Size = 80
    end
    object qryItensSERIE: TIBStringField
      FieldName = 'SERIE'
      Origin = '"REL_NOTAPRO"."SERIE"'
    end
    object qryItensVALOR_VENDA: TIBBCDField
      FieldName = 'VALOR_VENDA'
      Origin = '"REL_NOTAPRO"."VALOR_VENDA"'
      Precision = 9
      Size = 2
    end
    object qryItensICMS_VENDA: TIBBCDField
      FieldName = 'ICMS_VENDA'
      Origin = '"REL_NOTAPRO"."ICMS_VENDA"'
      Precision = 9
      Size = 2
    end
    object qryItensDESCONTO: TIBBCDField
      FieldName = 'DESCONTO'
      Origin = '"REL_NOTAPRO"."DESCONTO"'
      Precision = 9
      Size = 2
    end
    object qryItensQUANTIDADE: TIBBCDField
      FieldName = 'QUANTIDADE'
      Origin = '"REL_NOTAPRO"."QUANTIDADE"'
      Precision = 9
      Size = 2
    end
    object qryItensVALOR_PAGO: TIBBCDField
      FieldName = 'VALOR_PAGO'
      Origin = '"REL_NOTAPRO"."VALOR_PAGO"'
      Precision = 9
      Size = 2
    end
    object qryItensVALOR_ICMS: TIBBCDField
      FieldName = 'VALOR_ICMS'
      Origin = '"REL_NOTAPRO"."VALOR_ICMS"'
      Precision = 9
      Size = 2
    end
    object qryItensSITTRIBU: TIBStringField
      FieldName = 'SITTRIBU'
      Origin = '"REL_NOTAPRO"."SITTRIBU"'
      FixedChar = True
      Size = 3
    end
    object qryItensUNIDADE: TIBStringField
      FieldName = 'UNIDADE'
      Origin = '"REL_NOTAPRO"."UNIDADE"'
      FixedChar = True
      Size = 2
    end
    object qryItensVALOR_ITEM: TIBBCDField
      FieldName = 'VALOR_ITEM'
      Origin = '"REL_NOTAPRO"."VALOR_ITEM"'
      Precision = 9
      Size = 2
    end
  end
  object traOSnota: TIBTransaction
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
    Left = 41
    Top = 13
  end
  object traItens: TIBTransaction
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
    Left = 121
    Top = 13
  end
  object memItens: TRxMemoryData
    FieldDefs = <>
    Left = 198
    Top = 26
    object memItensCODIGO: TStringField
      FieldName = 'CODIGO'
      Size = 10
    end
    object memItensDESCRICAO: TStringField
      FieldName = 'DESCRICAO'
      Size = 50
    end
    object memItensVALOR_UNITARIO: TStringField
      FieldName = 'VALOR_UNITARIO'
      Size = 18
    end
    object memItensDESCONTO: TStringField
      FieldName = 'DESCONTO'
      Size = 18
    end
    object memItensQUANTIDADE: TStringField
      FieldName = 'QUANTIDADE'
      Size = 18
    end
    object memItensVALOR_TOTAL: TStringField
      FieldName = 'VALOR_TOTAL'
      Size = 18
    end
  end
end
