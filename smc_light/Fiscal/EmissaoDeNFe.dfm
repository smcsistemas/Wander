object frmEmissaoDeNFe: TfrmEmissaoDeNFe
  Left = 0
  Top = 0
  Caption = 'Emiss'#227'o de NFe'
  ClientHeight = 337
  ClientWidth = 661
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  Position = poScreenCenter
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 13
  object Panel1: TPanel
    Left = 0
    Top = 0
    Width = 661
    Height = 41
    Align = alTop
    Caption = 'Emiss'#227'o de NFe'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -16
    Font.Name = 'Tahoma'
    Font.Style = [fsBold]
    ParentFont = False
    TabOrder = 0
  end
  object MemoResp: TMemo
    Left = 256
    Top = 240
    Width = 185
    Height = 89
    Lines.Strings = (
      'MemoResp')
    TabOrder = 1
    Visible = False
  end
  object memoRespWS: TMemo
    Left = 448
    Top = 240
    Width = 185
    Height = 89
    Lines.Strings = (
      'MemoResp')
    TabOrder = 2
    Visible = False
  end
  object WBResposta: TWebBrowser
    Left = 488
    Top = 130
    Width = 105
    Height = 87
    TabOrder = 3
    ControlData = {
      4C000000DA0A0000FE0800000000000000000000000000000000000000000000
      000000004C000000000000000000000001000000E0D057007335CF11AE690800
      2B2E126208000000000000004C0000000114020000000000C000000000000046
      8000000000000000000000000000000000000000000000000000000000000000
      00000000000000000100000000000000000000000000000000000000}
  end
  object qNFe: TFDQuery
    Connection = Module.connection
    SQL.Strings = (
      'select * from usuario_usu')
    Left = 24
    Top = 69
  end
  object dsNFe: TDataSource
    DataSet = qNFe
    Left = 306
    Top = 117
  end
  object qVENDA_ITEM: TFDQuery
    Connection = Module.connection
    SQL.Strings = (
      '')
    Left = 112
    Top = 61
  end
  object qNFCe: TFDQuery
    Connection = Module.connection
    SQL.Strings = (
      '')
    Left = 112
    Top = 117
  end
  object qMovimento: TFDQuery
    Connection = Module.connection
    SQL.Strings = (
      '')
    Left = 368
    Top = 117
  end
  object qEMITENTE: TFDQuery
    Connection = Module.connection
    SQL.Strings = (
      'select * from usuario_usu')
    Left = 627
    Top = 261
  end
  object qNFE_CONFIGURACAO: TFDQuery
    Connection = Module.connection
    SQL.Strings = (
      'select * from config_cfg')
    Left = 224
    Top = 60
  end
  object qItensNFe: TFDQuery
    Connection = Module.connection
    SQL.Strings = (
      'SELECT QUANTIDADE AS QTDE,'
      'DESCRICAO  AS PRODUTO,'
      '       PRECO      AS VALOR'
      '  FROM VENDA_ITEM'
      'ORDER BY DESCRICAO')
    Left = 632
    Top = 213
    object qItensNFeQTDE: TFloatField
      FieldName = 'QTDE'
      Origin = 'SMC.VENDA_ITEM.QUANTIDADE'
    end
    object qItensNFePRODUTO: TStringField
      FieldName = 'PRODUTO'
      Origin = 'SMC.VENDA_ITEM.DESCRICAO'
      Size = 100
    end
    object qItensNFeVALOR: TFloatField
      FieldName = 'VALOR'
      Origin = 'SMC.VENDA_ITEM.PRECO'
    end
  end
  object qDESTINATARIO: TFDQuery
    Connection = Module.connection
    SQL.Strings = (
      'select * from usuario_usu')
    Left = 635
    Top = 165
  end
  object qVEICULO_VEI: TFDQuery
    Connection = Module.connection
    SQL.Strings = (
      'select * from usuario_usu')
    Left = 651
    Top = 101
  end
  object qNOTAFISCAL_NF: TFDQuery
    Connection = Module.connection
    SQL.Strings = (
      'select * from usuario_usu')
    Left = 635
    Top = 45
  end
  object qNATOP: TFDQuery
    Connection = Module.connection
    SQL.Strings = (
      'select * from usuario_usu')
    Left = 187
    Top = 133
  end
  object Query2: TFDQuery
    Connection = Module.connection
    SQL.Strings = (
      'select * from usuario_usu')
    Left = 83
    Top = 213
  end
  object qCONFIG_NOTAS: TFDQuery
    Connection = Module.connection
    Left = 155
    Top = 229
  end
  object DANFeNFe: TACBrNFeDANFeRL
    Sistema = 'SMC'
    MargemInferior = 8.000000000000000000
    MargemSuperior = 8.000000000000000000
    MargemEsquerda = 6.000000000000000000
    MargemDireita = 5.099999999999999000
    ExpandeLogoMarcaConfig.Altura = 0
    ExpandeLogoMarcaConfig.Esquerda = 0
    ExpandeLogoMarcaConfig.Topo = 0
    ExpandeLogoMarcaConfig.Largura = 0
    ExpandeLogoMarcaConfig.Dimensionar = False
    ExpandeLogoMarcaConfig.Esticar = True
    CasasDecimais.Formato = tdetInteger
    CasasDecimais.qCom = 2
    CasasDecimais.vUnCom = 2
    CasasDecimais.MaskqCom = ',0.00'
    CasasDecimais.MaskvUnCom = ',0.00'
    ACBrNFe = ACBrNFe1
    Left = 260
    Top = 173
  end
  object ACBrNFe1: TACBrNFe
    Configuracoes.Geral.SSLLib = libWinCrypt
    Configuracoes.Geral.SSLCryptLib = cryWinCrypt
    Configuracoes.Geral.SSLHttpLib = httpWinHttp
    Configuracoes.Geral.SSLXmlSignLib = xsLibXml2
    Configuracoes.Geral.FormatoAlerta = 'TAG:%TAGNIVEL% ID:%ID%/%TAG%(%DESCRICAO%) - %MSG%.'
    Configuracoes.Geral.VersaoQRCode = veqr000
    Configuracoes.Arquivos.OrdenacaoPath = <>
    Configuracoes.WebServices.Visualizar = True
    Configuracoes.WebServices.UF = 'RO'
    Configuracoes.WebServices.AguardarConsultaRet = 0
    Configuracoes.WebServices.QuebradeLinha = '|'
    Configuracoes.WebServices.SSLType = LT_TLSv1_2
    Configuracoes.RespTec.IdCSRT = 0
    DANFE = DANFeNFe
    Left = 28
    Top = 173
  end
  object qVENDA: TFDQuery
    Connection = Module.connection
    SQL.Strings = (
      '')
    Left = 512
    Top = 60
  end
  object Query1: TFDQuery
    Connection = Module.connection
    SQL.Strings = (
      'select * from usuario_usu')
    Left = 83
    Top = 261
  end
  object qCFOPPROD_CP: TFDQuery
    Connection = Module.connection
    SQL.Strings = (
      'select * from usuario_usu')
    Left = 131
    Top = 285
  end
  object ACBrPosPrinter1: TACBrPosPrinter
    ConfigBarras.MostrarCodigo = False
    ConfigBarras.LarguraLinha = 0
    ConfigBarras.Altura = 0
    ConfigBarras.Margem = 0
    ConfigQRCode.Tipo = 2
    ConfigQRCode.LarguraModulo = 4
    ConfigQRCode.ErrorLevel = 0
    LinhasEntreCupons = 0
    Left = 36
    Top = 259
  end
  object qCONTACORRENTE_CC: TFDQuery
    Connection = Module.connection
    Left = 219
    Top = 157
  end
  object qNaturezaOperacao: TFDQuery
    Connection = Module.connection
    SQL.Strings = (
      'select * from usuario_usu')
    Left = 131
    Top = 181
  end
  object qTPMOV: TFDQuery
    Connection = Module.connection
    SQL.Strings = (
      'select * from usuario_usu')
    Left = 387
    Top = 173
  end
  object Sql_Transportador: TFDQuery
    Connection = Module.connection
    SQL.Strings = (
      'select * from transportador'
      '')
    Left = 392
    Top = 53
    object Sql_TransportadorID: TFDAutoIncField
      FieldName = 'ID'
      Origin = 'ID'
      ProviderFlags = [pfInWhere, pfInKey]
      ReadOnly = True
    end
    object Sql_TransportadorCPF: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'CPF'
      Origin = 'CPF'
      Size = 11
    end
    object Sql_TransportadorCNPJ: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'CNPJ'
      Origin = 'CNPJ'
      Size = 14
    end
    object Sql_TransportadorIE: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'IE'
      Origin = 'IE'
    end
    object Sql_TransportadorRAZAO_SOCIAL: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'RAZAO_SOCIAL'
      Origin = 'RAZAO_SOCIAL'
      Size = 255
    end
    object Sql_TransportadorRUA: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'RUA'
      Origin = 'RUA'
      Size = 255
    end
    object Sql_TransportadorMUNICIPIO: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'MUNICIPIO'
      Origin = 'MUNICIPIO'
      Size = 255
    end
    object Sql_TransportadorUF: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'UF'
      Origin = 'UF'
      Size = 3
    end
    object Sql_TransportadorContribuinte_do_ICMS: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'Contribuinte_do_ICMS'
      Origin = 'Contribuinte_do_ICMS'
      FixedChar = True
      Size = 1
    end
  end
  object Sql_Transportador_Veiculo: TFDQuery
    Connection = Module.connection
    SQL.Strings = (
      'select * from Transportadora_Veiculos'
      '')
    Left = 416
    Top = 101
    object Sql_Transportador_VeiculoCODIGO: TFDAutoIncField
      FieldName = 'CODIGO'
      Origin = 'CODIGO'
      ProviderFlags = [pfInWhere, pfInKey]
      ReadOnly = True
    end
    object Sql_Transportador_VeiculoDESCRICAO: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'DESCRICAO'
      Origin = 'DESCRICAO'
      Size = 100
    end
    object Sql_Transportador_VeiculoPLACA: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'PLACA'
      Origin = 'PLACA'
      Size = 10
    end
    object Sql_Transportador_VeiculoTRANSP_COD: TIntegerField
      AutoGenerateValue = arDefault
      FieldName = 'TRANSP_COD'
      Origin = 'TRANSP_COD'
    end
    object Sql_Transportador_VeiculoTRANSP_RAZAO_SOCIAL: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'TRANSP_RAZAO_SOCIAL'
      Origin = 'TRANSP_RAZAO_SOCIAL'
      Size = 10
    end
    object Sql_Transportador_VeiculoUF: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'UF'
      Origin = 'UF'
      Size = 2
    end
    object Sql_Transportador_VeiculoRENAVAM: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'RENAVAM'
      Origin = 'RENAVAM'
      Size = 10
    end
    object Sql_Transportador_VeiculoCHASSI: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'CHASSI'
      Origin = 'CHASSI'
    end
    object Sql_Transportador_VeiculoMARCA: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'PROD_MARCA'
      Origin = 'MARCA'
      Size = 50
    end
    object Sql_Transportador_VeiculoCOR_FABRICA: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'COR_FABRICA'
      Origin = 'COR_FABRICA'
      Size = 50
    end
    object Sql_Transportador_VeiculoCOR_DESCRICAO: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'COR_DESCRICAO'
      Origin = 'COR_DESCRICAO'
      Size = 50
    end
    object Sql_Transportador_VeiculoANO: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'ANO'
      Origin = 'ANO'
      Size = 10
    end
    object Sql_Transportador_VeiculoMODELO: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'MODELO'
      Origin = 'MODELO'
      Size = 10
    end
    object Sql_Transportador_VeiculoREBOQUE1: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'REBOQUE1'
      Origin = 'REBOQUE1'
      Size = 10
    end
    object Sql_Transportador_VeiculoREBOQUE2: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'REBOQUE2'
      Origin = 'REBOQUE2'
      Size = 10
    end
    object Sql_Transportador_VeiculoREBOQUE3: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'REBOQUE3'
      Origin = 'REBOQUE3'
      Size = 10
    end
    object Sql_Transportador_VeiculoREBOQUE4: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'REBOQUE4'
      Origin = 'REBOQUE4'
      Size = 10
    end
    object Sql_Transportador_VeiculoCOMBUSTIVEL: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'COMBUSTIVEL'
      Origin = 'COMBUSTIVEL'
    end
  end
  object SQL_venda_lacre_vlac: TFDQuery
    Connection = Module.connection
    SQL.Strings = (
      'select * from venda_lacre_vlac'
      ''
      '')
    Left = 440
    Top = 157
    object SQL_venda_lacre_vlacVLAC_ID_VENDA: TIntegerField
      FieldName = 'VLAC_ID_VENDA'
      Origin = 'VLAC_ID_VENDA'
      Required = True
    end
    object SQL_venda_lacre_vlacVLAC_NLACRE: TStringField
      FieldName = 'VLAC_NLACRE'
      Origin = 'VLAC_NLACRE'
      Required = True
      Size = 60
    end
  end
  object qRELACAO_CFOP_x_PRODUTO_xCST_PISCOFINS_RPC: TFDQuery
    Connection = Module.connection
    SQL.Strings = (
      'select * from usuario_usu')
    Left = 339
    Top = 181
  end
  object qRASTRO_RAS: TFDQuery
    Connection = Module.connection
    SQL.Strings = (
      'select * from RASTRO_RAS')
    Left = 448
    Top = 53
    object IntegerField1: TIntegerField
      FieldName = 'VLAC_ID_VENDA'
      Origin = 'VLAC_ID_VENDA'
      Required = True
    end
    object StringField1: TStringField
      FieldName = 'VLAC_NLACRE'
      Origin = 'VLAC_NLACRE'
      Required = True
      Size = 60
    end
  end
end
Trocou FieldName = 'MARCA' por FieldName = 'PROD_MARCA' : automaticamente em 16/06/2020 16:21
