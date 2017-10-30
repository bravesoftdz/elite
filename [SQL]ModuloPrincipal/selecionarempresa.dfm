object formSelecionarEmpresa: TformSelecionarEmpresa
  Left = 287
  Top = 207
  BorderIcons = []
  BorderStyle = bsDialog
  Caption = 'Multiempresa'
  ClientHeight = 104
  ClientWidth = 310
  Color = clBtnFace
  Font.Charset = ANSI_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Verdana'
  Font.Style = []
  OldCreateOrder = False
  Position = poScreenCenter
  OnCreate = FormCreate
  PixelsPerInch = 96
  TextHeight = 13
  object Bevel1: TBevel
    Left = 0
    Top = 65
    Width = 310
    Height = 2
    Align = alTop
    Shape = bsTopLine
  end
  object Panel1: TPanel
    Left = 0
    Top = 0
    Width = 310
    Height = 65
    Align = alTop
    BevelOuter = bvNone
    TabOrder = 0
    object Label1: TLabel
      Left = 16
      Top = 8
      Width = 268
      Height = 13
      Caption = 'Selecione abaixo a empresa para esta sess�o:'
    end
    object rxbEmpresa: TRxDBLookupCombo
      Left = 16
      Top = 24
      Width = 281
      Height = 21
      Cursor = crHandPoint
      DropDownCount = 8
      DisplayAllFields = True
      DisplayEmpty = 'selecione a empresa!'
      EmptyValue = 'nada'
      IndexSwitch = False
      LookupField = 'CODIGO'
      LookupDisplay = 'CODIGO;NOME'
      LookupDisplayIndex = 1
      LookupSource = dsEmpresa
      TabOrder = 0
    end
  end
  object Panel2: TPanel
    Left = 0
    Top = 67
    Width = 310
    Height = 37
    Align = alClient
    BevelOuter = bvNone
    Color = clBtnHighlight
    TabOrder = 1
    object BitBtn1: TBitBtn
      Left = 105
      Top = 6
      Width = 105
      Height = 25
      Cursor = crHandPoint
      Caption = '&OK'
      Default = True
      ModalResult = 1
      TabOrder = 0
      Glyph.Data = {
        F2010000424DF201000000000000760000002800000024000000130000000100
        0400000000007C01000000000000000000001000000000000000000000000000
        80000080000000808000800000008000800080800000C0C0C000808080000000
        FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00333334433333
        3333333333388F3333333333000033334224333333333333338338F333333333
        0000333422224333333333333833338F33333333000033422222243333333333
        83333338F3333333000034222A22224333333338F33F33338F33333300003222
        A2A2224333333338F383F3338F33333300003A2A222A222433333338F8333F33
        38F33333000034A22222A22243333338833333F3338F333300004222A2222A22
        2433338F338F333F3338F3330000222A3A2224A22243338F3838F338F3338F33
        0000A2A333A2224A2224338F83338F338F3338F300003A33333A2224A2224338
        333338F338F3338F000033333333A2224A2243333333338F338F338F00003333
        33333A2224A2233333333338F338F83300003333333333A2224A333333333333
        8F338F33000033333333333A222433333333333338F338F30000333333333333
        A224333333333333338F38F300003333333333333A223333333333333338F8F3
        000033333333333333A3333333333333333383330000}
      NumGlyphs = 2
    end
  end
  object qryEmpresa: TIBQuery
    Database = dmoPrincipal.Database
    Transaction = traEmpresa
    BufferChunks = 100
    CachedUpdates = False
    SQL.Strings = (
      'SELECT'
      '   SC.CODIGO,'
      '   CL.NOME,'
      '   SC.PADRAO'
      'FROM'
      '   SISCONFIG SC'
      '   JOIN CLIENTES CL ON'
      '      (CL.CODIGO = SC.CODCLIENTE)'
      'ORDER BY'
      '   SC.PADRAO DESC,'
      '   SC.CODIGO')
    Left = 24
    Top = 56
  end
  object traEmpresa: TIBTransaction
    Active = False
    DefaultDatabase = dmoPrincipal.Database
    Params.Strings = (
      'concurrency'
      'nowait')
    AutoStopAction = saCommit
    Left = 24
    Top = 8
  end
  object dsEmpresa: TDataSource
    AutoEdit = False
    DataSet = cdsEmpresa
    Left = 256
    Top = 56
  end
  object provEmpresa: TDataSetProvider
    DataSet = qryEmpresa
    Constraints = True
    Options = [poReadOnly]
    Left = 88
    Top = 8
  end
  object cdsEmpresa: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'provEmpresa'
    ReadOnly = True
    Left = 88
    Top = 56
  end
end
