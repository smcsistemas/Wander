object Frm_Consulta_Banco_Geral: TFrm_Consulta_Banco_Geral
  Left = 0
  Top = 0
  Caption = 'Consulta'
  ClientHeight = 264
  ClientWidth = 516
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
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 13
  object DBGrid1: TDBGrid
    Left = 16
    Top = 55
    Width = 489
    Height = 201
    DataSource = DS_ConsultarBanco_CONTA
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
        FieldName = 'CONTA'
        Title.Caption = 'Conta'
        Width = 51
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'CONTA_DIGITO'
        Title.Caption = 'Digito'
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'AGENCIA'
        Title.Caption = 'Ag'#234'ncia'
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'AGENCIA_DIGITO'
        Title.Caption = 'Digito'
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'NOME_AGENCIA'
        Title.Caption = 'Nome Ag'#234'ncia'
        Width = 102
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'NOME_BANCO'
        Title.Caption = 'Nome Banco'
        Width = 114
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'COD_FEBRABAN'
        Visible = True
      end>
  end
  object ChK_codigo: TCheckBox
    Left = 16
    Top = 8
    Width = 97
    Height = 17
    Caption = 'N'#186' Conta'
    TabOrder = 1
    OnClick = ChK_codigoClick
  end
  object CheckBox1: TCheckBox
    Left = 16
    Top = 31
    Width = 67
    Height = 17
    Caption = 'Nome'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentFont = False
    TabOrder = 2
    OnClick = CheckBox1Click
  end
  object Edit1: TEdit
    Left = 89
    Top = 8
    Width = 320
    Height = 31
    CharCase = ecUpperCase
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -19
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentFont = False
    TabOrder = 3
    OnKeyDown = Edit1KeyDown
  end
  object cxButton1: TcxButton
    Left = 430
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
    TabOrder = 4
    OnClick = cxButton1Click
  end
  object DS_ConsultarBanco_CONTA: TDataSource
    DataSet = SQL_ConsultarBanco_CONTA
    Left = 136
    Top = 120
  end
  object SQL_ConsultarBanco_CONTA: TFDQuery
    Connection = Module.connection
    SQL.Strings = (
      'select * from conta_bancaria'
      'WHERE CONTA LIKE :pconta')
    Left = 136
    Top = 168
    ParamData = <
      item
        Name = 'PCONTA'
        ParamType = ptInput
        Value = Null
      end>
    object SQL_ConsultarBanco_CONTACODIGO: TFDAutoIncField
      FieldName = 'CODIGO'
      Origin = 'CODIGO'
      ProviderFlags = [pfInWhere, pfInKey]
      ReadOnly = True
    end
    object SQL_ConsultarBanco_CONTADATA_CADASTRO: TDateField
      AutoGenerateValue = arDefault
      FieldName = 'DATA_CADASTRO'
      Origin = 'DATA_CADASTRO'
    end
    object SQL_ConsultarBanco_CONTANOME_AGENCIA: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'NOME_AGENCIA'
      Origin = 'NOME_AGENCIA'
      Size = 200
    end
    object SQL_ConsultarBanco_CONTATITULAR: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'TITULAR'
      Origin = 'TITULAR'
      Size = 200
    end
    object SQL_ConsultarBanco_CONTAAGENCIA: TIntegerField
      AutoGenerateValue = arDefault
      FieldName = 'AGENCIA'
      Origin = 'AGENCIA'
    end
    object SQL_ConsultarBanco_CONTANOME_BANCO: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'NOME_BANCO'
      Origin = 'NOME_BANCO'
      Size = 200
    end
    object SQL_ConsultarBanco_CONTAAGENCIA_DIGITO: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'AGENCIA_DIGITO'
      Origin = 'AGENCIA_DIGITO'
      FixedChar = True
      Size = 1
    end
    object SQL_ConsultarBanco_CONTACONTA: TIntegerField
      AutoGenerateValue = arDefault
      FieldName = 'CONTA'
      Origin = 'CONTA'
    end
    object SQL_ConsultarBanco_CONTACONTA_DIGITO: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'CONTA_DIGITO'
      Origin = 'CONTA_DIGITO'
      FixedChar = True
      Size = 1
    end
    object SQL_ConsultarBanco_CONTAOPERACAO: TIntegerField
      AutoGenerateValue = arDefault
      FieldName = 'OPERACAO'
      Origin = 'OPERACAO'
    end
    object SQL_ConsultarBanco_CONTAGERENTE: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'GERENTE'
      Origin = 'GERENTE'
      Size = 100
    end
    object SQL_ConsultarBanco_CONTAGERENTE_TELEFONE: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'GERENTE_TELEFONE'
      Origin = 'GERENTE_TELEFONE'
    end
    object SQL_ConsultarBanco_CONTATIPO: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'TIPO'
      Origin = 'TIPO'
      FixedChar = True
      Size = 14
    end
    object SQL_ConsultarBanco_CONTACONTA_PROD_SALDO: TBCDField
      AutoGenerateValue = arDefault
      FieldName = 'CONTA_PROD_SALDO'
      Origin = 'CONTA_PROD_SALDO'
      Precision = 15
      Size = 2
    end
    object SQL_ConsultarBanco_CONTAPESSOAS: TIntegerField
      AutoGenerateValue = arDefault
      FieldName = 'PESSOAS'
      Origin = 'PESSOAS'
    end
    object SQL_ConsultarBanco_CONTAEMPRESA: TIntegerField
      AutoGenerateValue = arDefault
      FieldName = 'EMPRESA'
      Origin = 'EMPRESA'
    end
    object SQL_ConsultarBanco_CONTACOLABORADOR: TIntegerField
      AutoGenerateValue = arDefault
      FieldName = 'COLABORADOR'
      Origin = 'COLABORADOR'
    end
    object SQL_ConsultarBanco_CONTACARTEIRA: TIntegerField
      AutoGenerateValue = arDefault
      FieldName = 'CARTEIRA'
      Origin = 'CARTEIRA'
    end
    object SQL_ConsultarBanco_CONTACONVENIO: TIntegerField
      AutoGenerateValue = arDefault
      FieldName = 'CONVENIO'
      Origin = 'CONVENIO'
    end
    object SQL_ConsultarBanco_CONTABENEFICIARIO: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'BENEFICIARIO'
      Origin = 'BENEFICIARIO'
      Size = 200
    end
    object SQL_ConsultarBanco_CONTALAYOUT_REMESSA: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'LAYOUT_REMESSA'
      Origin = 'LAYOUT_REMESSA'
      Size = 200
    end
    object SQL_ConsultarBanco_CONTALAYOUT_RETORNO: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'LAYOUT_RETORNO'
      Origin = 'LAYOUT_RETORNO'
      Size = 200
    end
    object SQL_ConsultarBanco_CONTAJUROS: TBCDField
      AutoGenerateValue = arDefault
      FieldName = 'JUROS'
      Origin = 'JUROS'
      Precision = 15
      Size = 2
    end
    object SQL_ConsultarBanco_CONTAMULTA: TBCDField
      AutoGenerateValue = arDefault
      FieldName = 'MULTA'
      Origin = 'MULTA'
      Precision = 15
      Size = 2
    end
    object SQL_ConsultarBanco_CONTADESCONTO: TBCDField
      AutoGenerateValue = arDefault
      FieldName = 'DESCONTO'
      Origin = 'DESCONTO'
      Precision = 15
      Size = 2
    end
    object SQL_ConsultarBanco_CONTAMENSAGEM_01: TMemoField
      AutoGenerateValue = arDefault
      FieldName = 'MENSAGEM_01'
      Origin = 'MENSAGEM_01'
      BlobType = ftMemo
    end
    object SQL_ConsultarBanco_CONTAMENSAGEM_02: TMemoField
      AutoGenerateValue = arDefault
      FieldName = 'MENSAGEM_02'
      Origin = 'MENSAGEM_02'
      BlobType = ftMemo
    end
    object SQL_ConsultarBanco_CONTAMENSAGEM_03: TMemoField
      AutoGenerateValue = arDefault
      FieldName = 'MENSAGEM_03'
      Origin = 'MENSAGEM_03'
      BlobType = ftMemo
    end
    object SQL_ConsultarBanco_CONTACOD_FEBRABAN: TIntegerField
      AutoGenerateValue = arDefault
      FieldName = 'COD_FEBRABAN'
      Origin = 'COD_FEBRABAN'
    end
  end
  object DS_ConsultarBanco_NOME: TDataSource
    DataSet = SQL_ConsultarBanco_NOME
    Left = 312
    Top = 120
  end
  object SQL_ConsultarBanco_NOME: TFDQuery
    Connection = Module.connection
    SQL.Strings = (
      'select * from conta_bancaria'
      'WHERE NOME_BANCO LIKE :pnome')
    Left = 320
    Top = 176
    ParamData = <
      item
        Name = 'PNOME'
        DataType = ftString
        ParamType = ptInput
        Value = '0'
      end>
    object SQL_ConsultarBanco_NOMECODIGO: TFDAutoIncField
      FieldName = 'CODIGO'
      Origin = 'CODIGO'
      ProviderFlags = [pfInWhere, pfInKey]
      ReadOnly = True
    end
    object SQL_ConsultarBanco_NOMEDATA_CADASTRO: TDateField
      AutoGenerateValue = arDefault
      FieldName = 'DATA_CADASTRO'
      Origin = 'DATA_CADASTRO'
    end
    object SQL_ConsultarBanco_NOMENOME_AGENCIA: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'NOME_AGENCIA'
      Origin = 'NOME_AGENCIA'
      Size = 200
    end
    object SQL_ConsultarBanco_NOMETITULAR: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'TITULAR'
      Origin = 'TITULAR'
      Size = 200
    end
    object SQL_ConsultarBanco_NOMEAGENCIA: TIntegerField
      AutoGenerateValue = arDefault
      FieldName = 'AGENCIA'
      Origin = 'AGENCIA'
    end
    object SQL_ConsultarBanco_NOMENOME_BANCO: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'NOME_BANCO'
      Origin = 'NOME_BANCO'
      Size = 200
    end
    object SQL_ConsultarBanco_NOMEAGENCIA_DIGITO: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'AGENCIA_DIGITO'
      Origin = 'AGENCIA_DIGITO'
      FixedChar = True
      Size = 1
    end
    object SQL_ConsultarBanco_NOMECONTA: TIntegerField
      AutoGenerateValue = arDefault
      FieldName = 'CONTA'
      Origin = 'CONTA'
    end
    object SQL_ConsultarBanco_NOMECONTA_DIGITO: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'CONTA_DIGITO'
      Origin = 'CONTA_DIGITO'
      FixedChar = True
      Size = 1
    end
    object SQL_ConsultarBanco_NOMEOPERACAO: TIntegerField
      AutoGenerateValue = arDefault
      FieldName = 'OPERACAO'
      Origin = 'OPERACAO'
    end
    object SQL_ConsultarBanco_NOMEGERENTE: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'GERENTE'
      Origin = 'GERENTE'
      Size = 100
    end
    object SQL_ConsultarBanco_NOMEGERENTE_TELEFONE: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'GERENTE_TELEFONE'
      Origin = 'GERENTE_TELEFONE'
    end
    object SQL_ConsultarBanco_NOMETIPO: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'TIPO'
      Origin = 'TIPO'
      FixedChar = True
      Size = 14
    end
    object SQL_ConsultarBanco_NOMECONTA_PROD_SALDO: TBCDField
      AutoGenerateValue = arDefault
      FieldName = 'CONTA_PROD_SALDO'
      Origin = 'CONTA_PROD_SALDO'
      Precision = 15
      Size = 2
    end
    object SQL_ConsultarBanco_NOMEPESSOAS: TIntegerField
      AutoGenerateValue = arDefault
      FieldName = 'PESSOAS'
      Origin = 'PESSOAS'
    end
    object SQL_ConsultarBanco_NOMEEMPRESA: TIntegerField
      AutoGenerateValue = arDefault
      FieldName = 'EMPRESA'
      Origin = 'EMPRESA'
    end
    object SQL_ConsultarBanco_NOMECOLABORADOR: TIntegerField
      AutoGenerateValue = arDefault
      FieldName = 'COLABORADOR'
      Origin = 'COLABORADOR'
    end
    object SQL_ConsultarBanco_NOMECARTEIRA: TIntegerField
      AutoGenerateValue = arDefault
      FieldName = 'CARTEIRA'
      Origin = 'CARTEIRA'
    end
    object SQL_ConsultarBanco_NOMECONVENIO: TIntegerField
      AutoGenerateValue = arDefault
      FieldName = 'CONVENIO'
      Origin = 'CONVENIO'
    end
    object SQL_ConsultarBanco_NOMEBENEFICIARIO: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'BENEFICIARIO'
      Origin = 'BENEFICIARIO'
      Size = 200
    end
    object SQL_ConsultarBanco_NOMELAYOUT_REMESSA: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'LAYOUT_REMESSA'
      Origin = 'LAYOUT_REMESSA'
      Size = 200
    end
    object SQL_ConsultarBanco_NOMELAYOUT_RETORNO: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'LAYOUT_RETORNO'
      Origin = 'LAYOUT_RETORNO'
      Size = 200
    end
    object SQL_ConsultarBanco_NOMEJUROS: TBCDField
      AutoGenerateValue = arDefault
      FieldName = 'JUROS'
      Origin = 'JUROS'
      Precision = 15
      Size = 2
    end
    object SQL_ConsultarBanco_NOMEMULTA: TBCDField
      AutoGenerateValue = arDefault
      FieldName = 'MULTA'
      Origin = 'MULTA'
      Precision = 15
      Size = 2
    end
    object SQL_ConsultarBanco_NOMEDESCONTO: TBCDField
      AutoGenerateValue = arDefault
      FieldName = 'DESCONTO'
      Origin = 'DESCONTO'
      Precision = 15
      Size = 2
    end
    object SQL_ConsultarBanco_NOMEMENSAGEM_01: TMemoField
      AutoGenerateValue = arDefault
      FieldName = 'MENSAGEM_01'
      Origin = 'MENSAGEM_01'
      BlobType = ftMemo
    end
    object SQL_ConsultarBanco_NOMEMENSAGEM_02: TMemoField
      AutoGenerateValue = arDefault
      FieldName = 'MENSAGEM_02'
      Origin = 'MENSAGEM_02'
      BlobType = ftMemo
    end
    object SQL_ConsultarBanco_NOMEMENSAGEM_03: TMemoField
      AutoGenerateValue = arDefault
      FieldName = 'MENSAGEM_03'
      Origin = 'MENSAGEM_03'
      BlobType = ftMemo
    end
    object SQL_ConsultarBanco_NOMECOD_FEBRABAN: TIntegerField
      AutoGenerateValue = arDefault
      FieldName = 'COD_FEBRABAN'
      Origin = 'COD_FEBRABAN'
    end
  end
end
Trocou SALDO por @_@_@_@_@_@ : automaticamente em 17/06/2020 21:29
Trocou @_@_@_@_@_@ por PROD_SALDO : automaticamente em 17/06/2020 21:31
