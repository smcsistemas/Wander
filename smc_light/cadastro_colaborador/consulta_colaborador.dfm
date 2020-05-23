object Frm_Consulta_Colaborador: TFrm_Consulta_Colaborador
  Left = 0
  Top = 0
  Caption = 'Consulta'
  ClientHeight = 284
  ClientWidth = 448
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
    Left = 3
    Top = 54
    Width = 438
    Height = 220
    DataSource = DS_CCOLABORADOR
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'Tahoma'
    Font.Style = [fsBold]
    ParentFont = False
    ReadOnly = True
    TabOrder = 0
    TitleFont.Charset = DEFAULT_CHARSET
    TitleFont.Color = clWindowText
    TitleFont.Height = -11
    TitleFont.Name = 'Tahoma'
    TitleFont.Style = [fsBold]
    OnCellClick = DBGrid1CellClick
    OnDrawColumnCell = DBGrid1DrawColumnCell
    OnKeyDown = DBGrid1KeyDown
    Columns = <
      item
        Expanded = False
        FieldName = 'CODIGO'
        Title.Caption = 'C'#243'digo'
        Width = 40
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'NOME'
        Title.Caption = 'Nome'
        Width = 207
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'CPF'
        Width = 116
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'TIPO_COLABORADOR'
        Title.Caption = 'Tipo'
        Width = 91
        Visible = True
      end>
  end
  object ChK_nome: TCheckBox
    Left = 6
    Top = 8
    Width = 65
    Height = 17
    Caption = 'Nome'
    Checked = True
    State = cbChecked
    TabOrder = 1
    OnClick = ChK_nomeClick
  end
  object Chk_cpf: TCheckBox
    Left = 6
    Top = 31
    Width = 67
    Height = 17
    Caption = 'CPF'
    TabOrder = 2
    OnClick = Chk_cpfClick
  end
  object cxButton1: TcxButton
    Left = 366
    Top = 8
    Width = 75
    Height = 38
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
  object Edit1: TMaskEdit
    Left = 66
    Top = 8
    Width = 300
    Height = 38
    CharCase = ecUpperCase
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -25
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentFont = False
    TabOrder = 4
    Text = ''
    OnKeyDown = Edit1KeyDown
  end
  object DS_CCOLABORADOR: TDataSource
    DataSet = SQL_CCOLABORADOR
    Left = 320
    Top = 120
  end
  object SQL_CCOLABORADOR: TFDQuery
    Connection = module.connection
    SQL.Strings = (
      'Select * from colaborador'
      'WHERE CPF LIKE :pcpf')
    Left = 320
    Top = 176
    ParamData = <
      item
        Name = 'PCPF'
        DataType = ftString
        ParamType = ptInput
        Value = '94756163220'
      end>
    object SQL_CCOLABORADORCODIGO_EMPRESA: TIntegerField
      AutoGenerateValue = arDefault
      FieldName = 'CODIGO_EMPRESA'
      Origin = 'CODIGO_EMPRESA'
    end
    object SQL_CCOLABORADORCODIGO: TFDAutoIncField
      FieldName = 'CODIGO'
      Origin = 'CODIGO'
      ProviderFlags = [pfInWhere, pfInKey]
      ReadOnly = True
    end
    object SQL_CCOLABORADORNOME: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'NOME'
      Origin = 'NOME'
      Size = 200
    end
    object SQL_CCOLABORADORTIPO_COLABORADOR: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'TIPO_COLABORADOR'
      Origin = 'TIPO_COLABORADOR'
      FixedChar = True
      Size = 11
    end
    object SQL_CCOLABORADORDATA_CADASTRO: TDateField
      AutoGenerateValue = arDefault
      FieldName = 'DATA_CADASTRO'
      Origin = 'DATA_CADASTRO'
    end
    object SQL_CCOLABORADORDATA_NASCIMENTO: TDateField
      AutoGenerateValue = arDefault
      FieldName = 'DATA_NASCIMENTO'
      Origin = 'DATA_NASCIMENTO'
    end
    object SQL_CCOLABORADORSEXO: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'SEXO'
      Origin = 'SEXO'
      FixedChar = True
      Size = 9
    end
    object SQL_CCOLABORADORESTADO_CIVIL: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'ESTADO_CIVIL'
      Origin = 'ESTADO_CIVIL'
      FixedChar = True
      Size = 13
    end
    object SQL_CCOLABORADORFUNCAO: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'FUNCAO'
      Origin = 'FUNCAO'
      Size = 100
    end
    object SQL_CCOLABORADORNATURALIDADE: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'NATURALIDADE'
      Origin = 'NATURALIDADE'
      Size = 50
    end
    object SQL_CCOLABORADORNACIONALIDADE: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'NACIONALIDADE'
      Origin = 'NACIONALIDADE'
      Size = 50
    end
    object SQL_CCOLABORADORNOME_PAI: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'NOME_PAI'
      Origin = 'NOME_PAI'
      Size = 200
    end
    object SQL_CCOLABORADORNOME_MAE: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'NOME_MAE'
      Origin = 'NOME_MAE'
      Size = 200
    end
    object SQL_CCOLABORADORTELEFONE_PAI: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'TELEFONE_PAI'
      Origin = 'TELEFONE_PAI'
      Size = 50
    end
    object SQL_CCOLABORADORTELEFONE_MAE: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'TELEFONE_MAE'
      Origin = 'TELEFONE_MAE'
      Size = 50
    end
    object SQL_CCOLABORADORCPF: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'CPF'
      Origin = 'CPF'
      Size = 50
    end
    object SQL_CCOLABORADORRG: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'RG'
      Origin = 'RG'
      Size = 50
    end
    object SQL_CCOLABORADORORGAO_EMISSOR: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'ORGAO_EMISSOR'
      Origin = 'ORGAO_EMISSOR'
      Size = 50
    end
    object SQL_CCOLABORADORDATA_EMISSAO: TDateField
      AutoGenerateValue = arDefault
      FieldName = 'DATA_EMISSAO'
      Origin = 'DATA_EMISSAO'
    end
    object SQL_CCOLABORADORTITULO_ELEITOR: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'TITULO_ELEITOR'
      Origin = 'TITULO_ELEITOR'
      Size = 50
    end
    object SQL_CCOLABORADORSECAO: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'SECAO'
      Origin = 'SECAO'
      Size = 50
    end
    object SQL_CCOLABORADORZONA: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'ZONA'
      Origin = 'ZONA'
      Size = 50
    end
    object SQL_CCOLABORADORPIS: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'PIS'
      Origin = 'PIS'
      Size = 50
    end
    object SQL_CCOLABORADORNUMERO_CNH: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'NUMERO_CNH'
      Origin = 'NUMERO_CNH'
      Size = 50
    end
    object SQL_CCOLABORADORVALIDADE_CNH: TDateField
      AutoGenerateValue = arDefault
      FieldName = 'VALIDADE_CNH'
      Origin = 'VALIDADE_CNH'
    end
    object SQL_CCOLABORADORNUMERO_CARTEIRA_TRABALHO: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'NUMERO_CARTEIRA_TRABALHO'
      Origin = 'NUMERO_CARTEIRA_TRABALHO'
      Size = 50
    end
    object SQL_CCOLABORADORSERIE_CARTEIRA_TRABALHO: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'SERIE_CARTEIRA_TRABALHO'
      Origin = 'SERIE_CARTEIRA_TRABALHO'
      Size = 50
    end
    object SQL_CCOLABORADORDATA_ADMISSAO: TDateField
      AutoGenerateValue = arDefault
      FieldName = 'DATA_ADMISSAO'
      Origin = 'DATA_ADMISSAO'
    end
    object SQL_CCOLABORADORDATA_DEMISSAO: TDateField
      AutoGenerateValue = arDefault
      FieldName = 'DATA_DEMISSAO'
      Origin = 'DATA_DEMISSAO'
    end
    object SQL_CCOLABORADORCOMISSAO_VENDA: TSingleField
      AutoGenerateValue = arDefault
      FieldName = 'COMISSAO_VENDA'
      Origin = 'COMISSAO_VENDA'
    end
    object SQL_CCOLABORADORCOMISSAO_ORDEM_SERVICO: TSingleField
      AutoGenerateValue = arDefault
      FieldName = 'COMISSAO_ORDEM_SERVICO'
      Origin = 'COMISSAO_ORDEM_SERVICO'
    end
    object SQL_CCOLABORADORCOMISSAO_HORA_TECNICA: TSingleField
      AutoGenerateValue = arDefault
      FieldName = 'COMISSAO_HORA_TECNICA'
      Origin = 'COMISSAO_HORA_TECNICA'
    end
    object SQL_CCOLABORADORCOMISSAO_GERENTE: TSingleField
      AutoGenerateValue = arDefault
      FieldName = 'COMISSAO_GERENTE'
      Origin = 'COMISSAO_GERENTE'
    end
    object SQL_CCOLABORADORCODIGO_GERENTE: TIntegerField
      AutoGenerateValue = arDefault
      FieldName = 'CODIGO_GERENTE'
      Origin = 'CODIGO_GERENTE'
    end
    object SQL_CCOLABORADORTELEFONE_1: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'TELEFONE_1'
      Origin = 'TELEFONE_1'
      Size = 50
    end
    object SQL_CCOLABORADORTELEFONE_2: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'TELEFONE_2'
      Origin = 'TELEFONE_2'
      Size = 50
    end
    object SQL_CCOLABORADORCELULAR_1: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'CELULAR_1'
      Origin = 'CELULAR_1'
      Size = 50
    end
    object SQL_CCOLABORADORCELULAR_2: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'CELULAR_2'
      Origin = 'CELULAR_2'
      Size = 50
    end
    object SQL_CCOLABORADOREMAIL_1: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'EMAIL_1'
      Origin = 'EMAIL_1'
      Size = 50
    end
    object SQL_CCOLABORADOREMAIL_2: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'EMAIL_2'
      Origin = 'EMAIL_2'
      Size = 50
    end
    object SQL_CCOLABORADOROBS: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'OBS'
      Origin = 'OBS'
      Size = 200
    end
    object SQL_CCOLABORADORSALARIO: TSingleField
      AutoGenerateValue = arDefault
      FieldName = 'SALARIO'
      Origin = 'SALARIO'
    end
    object SQL_CCOLABORADORENDERECO: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'ENDERECO'
      Origin = 'ENDERECO'
      Size = 200
    end
    object SQL_CCOLABORADORNUMERO: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'NUMERO'
      Origin = 'NUMERO'
      Size = 200
    end
    object SQL_CCOLABORADORBAIRRO: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'BAIRRO'
      Origin = 'BAIRRO'
      Size = 200
    end
    object SQL_CCOLABORADORCEP: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'CEP'
      Origin = 'CEP'
      Size = 200
    end
    object SQL_CCOLABORADORMUNICIPIO: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'MUNICIPIO'
      Origin = 'MUNICIPIO'
      Size = 100
    end
    object SQL_CCOLABORADORESTADO: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'ESTADO'
      Origin = 'ESTADO'
      Size = 100
    end
    object SQL_CCOLABORADORPAIS: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'PAIS'
      Origin = 'PAIS'
      Size = 100
    end
    object SQL_CCOLABORADORCOMPLEMENTO: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'COMPLEMENTO'
      Origin = 'COMPLEMENTO'
      Size = 200
    end
    object SQL_CCOLABORADORCODIGO_MUNICIPIO: TIntegerField
      AutoGenerateValue = arDefault
      FieldName = 'CODIGO_MUNICIPIO'
      Origin = 'CODIGO_MUNICIPIO'
    end
    object SQL_CCOLABORADORLIMITE_CREDITO: TSingleField
      AutoGenerateValue = arDefault
      FieldName = 'LIMITE_CREDITO'
      Origin = 'LIMITE_CREDITO'
    end
    object SQL_CCOLABORADORBANCO: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'BANCO'
      Origin = 'BANCO'
      Size = 50
    end
    object SQL_CCOLABORADORBANCO_AGENCIA: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'BANCO_AGENCIA'
      Origin = 'BANCO_AGENCIA'
      Size = 6
    end
    object SQL_CCOLABORADORBANCO_CONTA: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'BANCO_CONTA'
      Origin = 'BANCO_CONTA'
      Size = 8
    end
    object SQL_CCOLABORADORCELULAR_PAI: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'CELULAR_PAI'
      Origin = 'CELULAR_PAI'
      Size = 50
    end
    object SQL_CCOLABORADORCELULAR_MAE: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'CELULAR_MAE'
      Origin = 'CELULAR_MAE'
      Size = 50
    end
    object SQL_CCOLABORADORTELEFONE_BANCO: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'TELEFONE_BANCO'
      Origin = 'TELEFONE_BANCO'
      Size = 50
    end
    object SQL_CCOLABORADORRAMAL_BANCO: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'RAMAL_BANCO'
      Origin = 'RAMAL_BANCO'
      Size = 50
    end
    object SQL_CCOLABORADORBANCO_2: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'BANCO_2'
      Origin = 'BANCO_2'
      Size = 50
    end
    object SQL_CCOLABORADORBANCO_AGENCIA_2: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'BANCO_AGENCIA_2'
      Origin = 'BANCO_AGENCIA_2'
      Size = 6
    end
    object SQL_CCOLABORADORBANCO_CONTA_2: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'BANCO_CONTA_2'
      Origin = 'BANCO_CONTA_2'
      Size = 8
    end
    object SQL_CCOLABORADORTELEFONE_BANCO_2: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'TELEFONE_BANCO_2'
      Origin = 'TELEFONE_BANCO_2'
      Size = 50
    end
    object SQL_CCOLABORADORRAMAL_BANCO_2: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'RAMAL_BANCO_2'
      Origin = 'RAMAL_BANCO_2'
      Size = 50
    end
    object SQL_CCOLABORADORGERENTE_BANCO: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'GERENTE_BANCO'
      Origin = 'GERENTE_BANCO'
      Size = 50
    end
    object SQL_CCOLABORADORGERENTE_BANCO_1: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'GERENTE_BANCO_1'
      Origin = 'GERENTE_BANCO_1'
      Size = 50
    end
    object SQL_CCOLABORADORCOMISSAO_VENDA_EXTERNA: TSingleField
      AutoGenerateValue = arDefault
      FieldName = 'COMISSAO_VENDA_EXTERNA'
      Origin = 'COMISSAO_VENDA_EXTERNA'
    end
    object SQL_CCOLABORADORCOMISSAO_FAIXA_1: TSingleField
      AutoGenerateValue = arDefault
      FieldName = 'COMISSAO_FAIXA_1'
      Origin = 'COMISSAO_FAIXA_1'
    end
    object SQL_CCOLABORADORCOMISSAO_FAIXA_2: TSingleField
      AutoGenerateValue = arDefault
      FieldName = 'COMISSAO_FAIXA_2'
      Origin = 'COMISSAO_FAIXA_2'
    end
    object SQL_CCOLABORADORCOMISSAI_FAIXA_3: TSingleField
      AutoGenerateValue = arDefault
      FieldName = 'COMISSAI_FAIXA_3'
      Origin = 'COMISSAI_FAIXA_3'
    end
    object SQL_CCOLABORADORPORCENTAGEM_FAIXA_1: TSingleField
      AutoGenerateValue = arDefault
      FieldName = 'PORCENTAGEM_FAIXA_1'
      Origin = 'PORCENTAGEM_FAIXA_1'
    end
    object SQL_CCOLABORADORPORCENTAGEM_FAIXA_2: TSingleField
      AutoGenerateValue = arDefault
      FieldName = 'PORCENTAGEM_FAIXA_2'
      Origin = 'PORCENTAGEM_FAIXA_2'
    end
    object SQL_CCOLABORADORPORCENTAGEM_FAIXA_3: TSingleField
      AutoGenerateValue = arDefault
      FieldName = 'PORCENTAGEM_FAIXA_3'
      Origin = 'PORCENTAGEM_FAIXA_3'
    end
    object SQL_CCOLABORADORCODIGO_BANCO_1: TIntegerField
      AutoGenerateValue = arDefault
      FieldName = 'CODIGO_BANCO_1'
      Origin = 'CODIGO_BANCO_1'
    end
    object SQL_CCOLABORADORCODIGO_BANCO_2: TIntegerField
      AutoGenerateValue = arDefault
      FieldName = 'CODIGO_BANCO_2'
      Origin = 'CODIGO_BANCO_2'
    end
    object SQL_CCOLABORADORSTATUS_CADASTRAL: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'STATUS_CADASTRAL'
      Origin = 'STATUS_CADASTRAL'
      FixedChar = True
      Size = 7
    end
  end
end
