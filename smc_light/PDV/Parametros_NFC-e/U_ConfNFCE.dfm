object Frm_ConfNFCE: TFrm_ConfNFCE
  Left = 0
  Top = 0
  BorderStyle = bsNone
  Caption = 'Nota Fiscal'
  ClientHeight = 238
  ClientWidth = 286
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  OnCreate = FormCreate
  OnKeyPress = FormKeyPress
  PixelsPerInch = 96
  TextHeight = 13
  object dlgTx2: TOpenDialog
    Left = 32
    Top = 120
  end
  object SQL_Empresa: TFDQuery
    Connection = Module.connection
    Left = 120
    Top = 2
  end
  object Sql_Conf: TFDQuery
    Connection = Module.connection
    Left = 120
    Top = 65
  end
  object SQL_PARAMETROS_NFCE: TFDQuery
    Connection = Module.connection
    Left = 120
    Top = 129
  end
  object SQL_NFCE: TFDQuery
    Connection = Module.connection
    SQL.Strings = (
      'SELECT * FROM NFCE')
    Left = 224
    Top = 8
    object SQL_NFCECODIGO: TFDAutoIncField
      AutoGenerateValue = arNone
      FieldName = 'CODIGO'
      Origin = 'CODIGO'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      ClientAutoIncrement = False
      ServerAutoIncrement = False
      AutoIncrementSeed = 1
      AutoIncrementStep = 1
      IdentityInsert = True
    end
    object SQL_NFCEDATA_EMISSAO: TDateField
      FieldName = 'DATA_EMISSAO'
      Origin = 'DATA_EMISSAO'
      Required = True
    end
    object SQL_NFCEHORA_EMISSAO: TTimeField
      AutoGenerateValue = arDefault
      FieldName = 'HORA_EMISSAO'
      Origin = 'HORA_EMISSAO'
    end
    object SQL_NFCEDATA_TRANSMISSAO: TDateField
      AutoGenerateValue = arDefault
      FieldName = 'DATA_TRANSMISSAO'
      Origin = 'DATA_TRANSMISSAO'
    end
    object SQL_NFCEHORA_TRANSMISSAO: TTimeField
      AutoGenerateValue = arDefault
      FieldName = 'HORA_TRANSMISSAO'
      Origin = 'HORA_TRANSMISSAO'
    end
    object SQL_NFCECODIGO_VENDA: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'CODIGO_VENDA'
      Origin = 'CODIGO_VENDA'
      Size = 50
    end
    object SQL_NFCEVALOR_NFCE: TBCDField
      AutoGenerateValue = arDefault
      FieldName = 'VALOR_NFCE'
      Origin = 'VALOR_NFCE'
      Precision = 10
    end
    object SQL_NFCEACRESCIMOS_NFCE: TBCDField
      AutoGenerateValue = arDefault
      FieldName = 'ACRESCIMOS_NFCE'
      Origin = 'ACRESCIMOS_NFCE'
      Precision = 10
    end
    object SQL_NFCEDESCONTOS_NFCE: TBCDField
      AutoGenerateValue = arDefault
      FieldName = 'DESCONTOS_NFCE'
      Origin = 'DESCONTOS_NFCE'
      Precision = 10
    end
    object SQL_NFCETOTAL_NFCE: TBCDField
      AutoGenerateValue = arDefault
      FieldName = 'TOTAL_NFCE'
      Origin = 'TOTAL_NFCE'
      Precision = 10
    end
    object SQL_NFCEVALOR_PAGO: TBCDField
      AutoGenerateValue = arDefault
      FieldName = 'VALOR_PAGO'
      Origin = 'VALOR_PAGO'
      Precision = 10
    end
    object SQL_NFCETROCO: TBCDField
      AutoGenerateValue = arDefault
      FieldName = 'TROCO'
      Origin = 'TROCO'
      Precision = 10
    end
    object SQL_NFCELOTE: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'LOTE'
      Origin = 'LOTE'
      Size = 5
    end
    object SQL_NFCESERIE: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'SERIE'
      Origin = 'SERIE'
      Size = 5
    end
    object SQL_NFCECHAVE: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'CHAVE'
      Origin = 'CHAVE'
      Size = 60
    end
    object SQL_NFCECAMINHO_XML: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'CAMINHO_XML'
      Origin = 'CAMINHO_XML'
      Size = 200
    end
    object SQL_NFCETIPO_EMISSAO: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'TIPO_EMISSAO'
      Origin = 'TIPO_EMISSAO'
      FixedChar = True
      Size = 12
    end
    object SQL_NFCESTATUS_NFCE: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'STATUS_NFCE'
      Origin = 'STATUS_NFCE'
      FixedChar = True
      Size = 11
    end
    object SQL_NFCERETORNO_NFCE: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'RETORNO_NFCE'
      Origin = 'RETORNO_NFCE'
      Size = 500
    end
    object SQL_NFCEERRO_ROTINA: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'ERRO_ROTINA'
      Origin = 'ERRO_ROTINA'
      FixedChar = True
      Size = 11
    end
  end
  object SQL_VENDA_ITEM: TFDQuery
    Connection = Module.connection
    Left = 224
    Top = 72
  end
  object SQL_VENDA: TFDQuery
    Connection = Module.connection
    Left = 224
    Top = 128
    object SQL_VENDACODIGO_VENDA: TFDAutoIncField
      FieldName = 'CODIGO_VENDA'
      Origin = 'CODIGO_VENDA'
      ProviderFlags = [pfInWhere, pfInKey]
      ReadOnly = True
    end
    object SQL_VENDAOPERADOR: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'OPERADOR'
      Origin = 'OPERADOR'
    end
    object SQL_VENDACAIXA: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'CAIXA'
      Origin = 'CAIXA'
      Size = 5
    end
    object SQL_VENDADATA: TDateField
      AutoGenerateValue = arDefault
      FieldName = 'DATA'
      Origin = 'DATA'
    end
    object SQL_VENDAHORA: TTimeField
      AutoGenerateValue = arDefault
      FieldName = 'HORA'
      Origin = 'HORA'
    end
    object SQL_VENDACPF_CLIENTE: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'CPF_CLIENTE'
      Origin = 'CPF_CLIENTE'
    end
    object SQL_VENDANOME_CLIENTE: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'NOME_CLIENTE'
      Origin = 'NOME_CLIENTE'
      Size = 50
    end
    object SQL_VENDAIE_CLIENTE: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'IE_CLIENTE'
      Origin = 'IE_CLIENTE'
      Size = 50
    end
    object SQL_VENDATELEFONE_CLIENTE: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'TELEFONE_CLIENTE'
      Origin = 'TELEFONE_CLIENTE'
      Size = 50
    end
    object SQL_VENDACODIGO_CLIENTE: TIntegerField
      AutoGenerateValue = arDefault
      FieldName = 'CODIGO_CLIENTE'
      Origin = 'CODIGO_CLIENTE'
    end
    object SQL_VENDARUA_CLIENTE: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'RUA_CLIENTE'
      Origin = 'RUA_CLIENTE'
      Size = 100
    end
    object SQL_VENDANUMERO_CLIENTE: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'NUMERO_CLIENTE'
      Origin = 'NUMERO_CLIENTE'
      Size = 5
    end
    object SQL_VENDABAIRRO_CLIENTE: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'BAIRRO_CLIENTE'
      Origin = 'BAIRRO_CLIENTE'
      Size = 50
    end
    object SQL_VENDAVENDA_FATURADA: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'VENDA_FATURADA'
      Origin = 'VENDA_FATURADA'
      Size = 50
    end
    object SQL_VENDAVALOR_VENDA: TBCDField
      AutoGenerateValue = arDefault
      FieldName = 'VALOR_VENDA'
      Origin = 'VALOR_VENDA'
      Precision = 10
    end
    object SQL_VENDAACRESCIMO: TBCDField
      AutoGenerateValue = arDefault
      FieldName = 'ACRESCIMO'
      Origin = 'ACRESCIMO'
      Precision = 10
    end
    object SQL_VENDADESCONTO: TBCDField
      AutoGenerateValue = arDefault
      FieldName = 'DESCONTO'
      Origin = 'DESCONTO'
      Precision = 10
    end
    object SQL_VENDATOTAL_VENDA: TBCDField
      AutoGenerateValue = arDefault
      FieldName = 'TOTAL_VENDA'
      Origin = 'TOTAL_VENDA'
      Precision = 10
    end
    object SQL_VENDAVALOR_PAGO: TBCDField
      AutoGenerateValue = arDefault
      FieldName = 'VALOR_PAGO'
      Origin = 'VALOR_PAGO'
      Precision = 10
    end
    object SQL_VENDATROCO: TBCDField
      AutoGenerateValue = arDefault
      FieldName = 'TROCO'
      Origin = 'TROCO'
      Precision = 10
    end
    object SQL_VENDASTATUS: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'STATUS'
      Origin = 'STATUS'
      FixedChar = True
      Size = 9
    end
    object SQL_VENDACOD_NFCE: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'COD_NFCE'
      Origin = 'COD_NFCE'
      Size = 10
    end
  end
  object SQL_VENDA_PAGAMENTO: TFDQuery
    Connection = Module.connection
    Left = 120
    Top = 184
  end
  object spdNFCe: TspdNFCe
    VersaoManual = vm60
    DanfceSettings.FraseContingencia = 
      'Danfce em conting'#234'ncia - Impresso em decorr'#234'ncia de problemas t'#233 +
      'cnicos'
    DanfceSettings.FraseHomologacao = 'SEM VALOR FISCAL'
    DanfceSettings.QtdeCopias = 1
    DanfceSettings.LineDelimiter = '|'
    DanfceSettings.InfCplMaxCol = 68
    DanfceSettings.InfCplMaxRow = 7
    DanfceSettings.ModeloDanfce = 
      'C:\Program Files (x86)\Embarcadero\Studio\14.0\bin\Templates\Vm6' +
      '0\Danfce\retrato.rtm'
    DanfceSettings.ModeloDanfceMensagemEletronica = 
      'C:\Program Files (x86)\Embarcadero\Studio\14.0\bin\Templates\Vm6' +
      '0\Danfce\retrato.rtm'
    DanfceSettings.FormatoDanfce = fdNormal
    DanfceSettings.ExibirDetalhamento = False
    Versao = '7.0.46.3388'
    CaracteresRemoverAcentos = #225#233#237#243#250#224#232#236#242#249#226#234#238#244#251#228#235#239#246#252#227#245#241#231#193#201#205#211#218#192#200#204#210#217#194#202#206#212#219#196#203#207#214#220#195#213#209#199#186#170
    TipoCertificado = ckFile
    DiretorioTemplates = 'C:\Program Files (x86)\Embarcadero\Studio\14.0\bin\vm60\'
    IgnoreInvalidCertificates = True
    DiretorioLog = 'Log\'
    Ambiente = akHomologacao
    EmailSettings.Autenticacao = False
    EmailSettings.TimeOut = 0
    EmailSettings.AnexarDanfcePDF = True
    EmailSettings.ConteudoHtml = False
    DiretorioEsquemas = 
      'C:\Program Files (x86)\Embarcadero\Studio\14.0\bin\Esquemas\vm60' +
      '\'
    ConexaoSegura = False
    TimeOut = 0
    SectionINI = 'NFCE'
    DiretorioXmlDestinatario = 
      'C:\Program Files (x86)\Embarcadero\Studio\14.0\bin\XmlDestinatar' +
      'io\'
    MaxSizeLoteEnvio = 500
    DiretorioTemporario = 'C:\Program Files (x86)\Embarcadero\Studio\14.0\bin\Temp\'
    EntregaXML = exEmail
    HashCertificado = '00000000000000000000000000000000'
    Left = 32
    Top = 16
  end
  object spdNFCeDataSets: TspdNFCeDataSets
    VersaoEsquema = pl_009
    ValidaRegrasNegocio = False
    ValidaRegrasNegocioTecno = False
    Left = 32
    Top = 64
  end
end
