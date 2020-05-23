object Frm_ConsultaBanco: TFrm_ConsultaBanco
  Left = 0
  Top = 0
  Caption = 'Consulta banco'
  ClientHeight = 243
  ClientWidth = 445
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  FormStyle = fsMDIChild
  OldCreateOrder = False
  Position = poDesktopCenter
  Visible = True
  OnClose = FormClose
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 13
  object DBGrid1: TDBGrid
    Left = 3
    Top = 56
    Width = 438
    Height = 184
    DataSource = DS_ConsultarBanco
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'Tahoma'
    Font.Style = [fsBold]
    ParentFont = False
    TabOrder = 0
    TitleFont.Charset = DEFAULT_CHARSET
    TitleFont.Color = clWindowText
    TitleFont.Height = -11
    TitleFont.Name = 'Tahoma'
    TitleFont.Style = [fsBold]
    OnDrawColumnCell = DBGrid1DrawColumnCell
    OnKeyDown = DBGrid1KeyDown
    Columns = <
      item
        Expanded = False
        FieldName = 'CODIGO'
        Title.Caption = 'C'#243'digo'
        Width = 52
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'NOME'
        Title.Caption = 'Banco'
        Width = 269
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'CODIGO_1'
        Title.Caption = 'FEBRABAN'
        Visible = True
      end>
  end
  object ChK_codigo: TCheckBox
    Left = 16
    Top = 8
    Width = 97
    Height = 17
    Caption = 'Ag'#234'ncia'
    TabOrder = 1
    Visible = False
    OnClick = ChK_codigoClick
  end
  object Edit1: TEdit
    Left = 89
    Top = 8
    Width = 273
    Height = 31
    CharCase = ecUpperCase
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -19
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentFont = False
    TabOrder = 2
    OnKeyDown = Edit1KeyDown
  end
  object cxButton1: TcxButton
    Left = 366
    Top = 8
    Width = 75
    Height = 34
    Caption = 'Consultar'
    OptionsImage.Glyph.Data = {
      36040000424D3604000000000000360000002800000010000000100000000100
      2000000000000004000000000000000000000000000000000000000000000000
      00000000000000000002000000070000000C0000001000000012000000110000
      000E000000080000000200000000000000000000000000000000000000000000
      000100000004000101120D2A1D79184E36C6216B4BFF216B4BFF216C4BFF1A53
      3AD20F2F21840001011500000005000000010000000000000000000000000000
      0005050F0A351C5B40DC24805CFF29AC7EFF2CC592FF2DC894FF2DC693FF2AAE
      80FF258560FF1A563DD405110C3D00000007000000010000000000000003040E
      0A31206548ED299D74FF2FC896FF2EC996FF56D4ACFF68DAB5FF3BCD9DFF30C9
      96FF32CA99FF2BA479FF227050F805110C3D00000005000000000000000A1A57
      3DD02EA57CFF33CA99FF2EC896FF4CD2A8FF20835CFF00673BFF45BE96FF31CB
      99FF31CB98FF34CC9CFF31AD83FF1B5C41D300010113000000020B23185E2E8A
      66FF3BCD9EFF30CA97FF4BD3A9FF349571FF87AF9DFFB1CFC1FF238A60FF45D3
      A8FF36CF9FFF33CD9BFF3ED0A3FF319470FF0F32237F00000007184D37B63DB3
      8CFF39CD9FFF4BD5A9FF43A382FF699782FFF8F1EEFFF9F3EEFF357F5DFF56C4
      A1FF43D5A8FF3ED3A4FF3CD1A4FF41BC95FF1B5C43CD0000000B1C6446DF4BCA
      A4FF44D2A8FF4FB392FF4E826AFFF0E9E6FFC0C3B5FFEFE3DDFFCEDDD4FF1B75
      4FFF60DCB8FF48D8ACFF47D6AAFF51D4ACFF247A58F80000000E217050F266D9
      B8FF46D3A8FF0B6741FFD2D2CBFF6A8F77FF116B43FF73967EFFF1E8E3FF72A2
      8BFF46A685FF5EDFBAFF4CD9AFFF6BE2C2FF278460FF020604191E684ADC78D9
      BEFF52DAB1FF3DBA92FF096941FF2F9C76FF57DEB8FF2D9973FF73967EFFF0EA
      E7FF4F886CFF5ABB9AFF5BDEB9FF7FE2C7FF27835FF80000000C19523BAB77C8
      B0FF62E0BCFF56DDB7FF59DFBAFF5CE1BDFF5EE2BEFF5FE4C1FF288C67FF698E
      76FFE6E1DCFF176B47FF5FD8B4FF83D5BDFF1E674CC60000000909201747439C
      7BFF95ECD6FF5ADFBAFF5EE2BDFF61E4BFFF64E6C1FF67E6C5FF67E8C7FF39A1
      7EFF1F6D4AFF288B64FF98EFD9FF4DAC8CFF1036286D00000004000000041C5F
      46B578C6ADFF9AEED9FF65E5C0FF64E7C3FF69E7C6FF6BE8C8FF6CE9C9FF6BEA
      C9FF5ED6B6FF97EDD7FF86D3BBFF237759D20102010C0000000100000001030A
      0718247B5BDA70C1A8FFB5F2E3FF98F0DAFF85EDD4FF75EBCEFF88EFD6FF9CF2
      DDFFBAF4E7FF78CDB3FF2A906DEA0615102E0000000200000000000000000000
      0001030A07171E694FB844AB87FF85D2BBFFA8E6D6FFC5F4EBFFABE9D8FF89D8
      C1FF4BB692FF237F60CB05130E27000000030000000000000000000000000000
      000000000001000000030A241B411B60489D258464CF2C9D77EE258867CF1F71
      56B00E3226560000000600000002000000000000000000000000}
    TabOrder = 3
    OnClick = cxButton1Click
  end
  object CheckBox1: TCheckBox
    Left = 16
    Top = 31
    Width = 67
    Height = 17
    Caption = 'Nome'
    TabOrder = 4
    OnClick = CheckBox1Click
  end
  object DS_ConsultarBanco: TDataSource
    DataSet = SQL_ConsultarBanco
    Left = 136
    Top = 120
  end
  object SQL_ConsultarBanco: TFDQuery
    Connection = Module.connection
    SQL.Strings = (
      
        'Select banco.CODIGO, banco.NOME, banco_agencia.CODIGO, banco_age' +
        'ncia.NUMERO_AGENCIA, banco_agencia.NOME_AGENCIA from banco'
      
        'INNER JOIN banco_agencia ON  (banco.CODIGO = banco_agencia.BANCO' +
        ')'
      'WHERE banco.NOME LIKE :pnome')
    Left = 136
    Top = 168
    ParamData = <
      item
        Name = 'PNOME'
        DataType = ftString
        ParamType = ptInput
        Value = '0'
      end>
    object SQL_ConsultarBancoCODIGO: TFDAutoIncField
      FieldName = 'CODIGO'
      KeyFields = 'CODIGO'
      Origin = 'CODIGO'
      ProviderFlags = [pfInWhere, pfInKey]
      ReadOnly = True
    end
    object SQL_ConsultarBancoNOME: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'NOME'
      KeyFields = 'NOME'
      Origin = 'NOME'
      Size = 200
    end
    object SQL_ConsultarBancoCODIGO_1: TIntegerField
      AutoGenerateValue = arDefault
      FieldName = 'CODIGO_1'
      Origin = 'CODIGO'
      ProviderFlags = []
      ReadOnly = True
    end
    object SQL_ConsultarBancoNUMERO_AGENCIA: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'NUMERO_AGENCIA'
      Origin = 'NUMERO_AGENCIA'
      ProviderFlags = []
      ReadOnly = True
      Size = 11
    end
    object SQL_ConsultarBancoNOME_AGENCIA: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'NOME_AGENCIA'
      Origin = 'NOME_AGENCIA'
      ProviderFlags = []
      ReadOnly = True
      Size = 200
    end
  end
end
