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
    SQL.Strings = (
      'select p.*, e.* from empresa e, parametros_sistema p')
    Left = 120
    Top = 2
    object SQL_Empresaid: TFDAutoIncField
      FieldName = 'id'
      Origin = 'id'
      ReadOnly = True
    end
    object SQL_Empresaaliq_imcs: TBCDField
      AutoGenerateValue = arDefault
      FieldName = 'aliq_imcs'
      Origin = 'aliq_imcs'
      Precision = 10
    end
    object SQL_Empresaaliq_pis_cumulativo: TBCDField
      AutoGenerateValue = arDefault
      FieldName = 'aliq_pis_cumulativo'
      Origin = 'aliq_pis_cumulativo'
      Precision = 10
    end
    object SQL_Empresaaliq_pis_nao_cumulativo: TBCDField
      AutoGenerateValue = arDefault
      FieldName = 'aliq_pis_nao_cumulativo'
      Origin = 'aliq_pis_nao_cumulativo'
      Precision = 10
    end
    object SQL_Empresaaliq_cofins_cumulativo: TBCDField
      AutoGenerateValue = arDefault
      FieldName = 'aliq_cofins_cumulativo'
      Origin = 'aliq_cofins_cumulativo'
      Precision = 10
    end
    object SQL_Empresaaliq_cofins_nao_cumulativo: TBCDField
      AutoGenerateValue = arDefault
      FieldName = 'aliq_cofins_nao_cumulativo'
      Origin = 'aliq_cofins_nao_cumulativo'
      Precision = 10
    end
    object SQL_Empresaaliq_iss: TBCDField
      AutoGenerateValue = arDefault
      FieldName = 'aliq_iss'
      Origin = 'aliq_iss'
      Precision = 10
    end
    object SQL_Empresacaminho_backup: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'caminho_backup'
      Origin = 'caminho_backup'
      Size = 100
    end
    object SQL_Empresahost_name: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'host_name'
      Origin = 'host_name'
      Size = 50
    end
    object SQL_EmpresaPASTA_FTP: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'PASTA_FTP'
      Origin = 'PASTA_FTP'
      Size = 200
    end
    object SQL_EmpresaCODIGO: TFDAutoIncField
      FieldName = 'CODIGO'
      Origin = 'CODIGO'
      ProviderFlags = [pfInWhere, pfInKey]
      ReadOnly = True
    end
    object SQL_EmpresaRAZAO_SOCIAL: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'RAZAO_SOCIAL'
      Origin = 'RAZAO_SOCIAL'
      Size = 150
    end
    object SQL_EmpresaNOME_FANTASIA: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'NOME_FANTASIA'
      Origin = 'NOME_FANTASIA'
      Size = 60
    end
    object SQL_EmpresaDATA_CADASTRO: TDateField
      AutoGenerateValue = arDefault
      FieldName = 'DATA_CADASTRO'
      Origin = 'DATA_CADASTRO'
    end
    object SQL_EmpresaCNPJ: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'CNPJ'
      Origin = 'CNPJ'
      Size = 50
    end
    object SQL_EmpresaINSCRICAO_ESTADUAL: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'INSCRICAO_ESTADUAL'
      Origin = 'INSCRICAO_ESTADUAL'
      Size = 14
    end
    object SQL_EmpresaINSCRICAO_MUNICIPAL: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'INSCRICAO_MUNICIPAL'
      Origin = 'INSCRICAO_MUNICIPAL'
    end
    object SQL_EmpresaEMPRESA_TELEFONE_01: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'EMPRESA_TELEFONE_01'
      Origin = 'EMPRESA_TELEFONE_01'
    end
    object SQL_EmpresaEMPRESA_TELEFONE_02: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'EMPRESA_TELEFONE_02'
      Origin = 'EMPRESA_TELEFONE_02'
    end
    object SQL_EmpresaEMPRESA_TELEFONE_03: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'EMPRESA_TELEFONE_03'
      Origin = 'EMPRESA_TELEFONE_03'
    end
    object SQL_EmpresaEMPRESA_FAX: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'EMPRESA_FAX'
      Origin = 'EMPRESA_FAX'
    end
    object SQL_EmpresaEMPRESA_CELULAR_01: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'EMPRESA_CELULAR_01'
      Origin = 'EMPRESA_CELULAR_01'
    end
    object SQL_EmpresaEMPRESA_CELULAR_02: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'EMPRESA_CELULAR_02'
      Origin = 'EMPRESA_CELULAR_02'
    end
    object SQL_EmpresaEMPRESA_SKYPE: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'EMPRESA_SKYPE'
      Origin = 'EMPRESA_SKYPE'
      Size = 50
    end
    object SQL_EmpresaEMPRESA_SITE: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'EMPRESA_SITE'
      Origin = 'EMPRESA_SITE'
      Size = 50
    end
    object SQL_EmpresaEMPRESA_EMAIL_01: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'EMPRESA_EMAIL_01'
      Origin = 'EMPRESA_EMAIL_01'
      Size = 100
    end
    object SQL_EmpresaEMPRESA_EMAIL_02: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'EMPRESA_EMAIL_02'
      Origin = 'EMPRESA_EMAIL_02'
      Size = 100
    end
    object SQL_EmpresaSUFRAMA: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'SUFRAMA'
      Origin = 'SUFRAMA'
      Size = 15
    end
    object SQL_EmpresaENDERECO: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'ENDERECO'
      Origin = 'ENDERECO'
      Size = 200
    end
    object SQL_EmpresaNUMERO: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'NUMERO'
      Origin = 'NUMERO'
    end
    object SQL_EmpresaBAIRRO: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'BAIRRO'
      Origin = 'BAIRRO'
      Size = 200
    end
    object SQL_EmpresaCEP: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'CEP'
      Origin = 'CEP'
      Size = 50
    end
    object SQL_EmpresaMUNICIPIO: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'MUNICIPIO'
      Origin = 'MUNICIPIO'
      Size = 50
    end
    object SQL_EmpresaCODIGO_MUNICIPIO: TIntegerField
      AutoGenerateValue = arDefault
      FieldName = 'CODIGO_MUNICIPIO'
      Origin = 'CODIGO_MUNICIPIO'
    end
    object SQL_EmpresaESTADO: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'ESTADO'
      Origin = 'ESTADO'
      Size = 50
    end
    object SQL_EmpresaCOD_UF: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'COD_UF'
      Origin = 'COD_UF'
      Size = 2
    end
    object SQL_EmpresaPAIS: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'PAIS'
      Origin = 'PAIS'
      Size = 50
    end
    object SQL_EmpresaCOMPLEMENTO: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'COMPLEMENTO'
      Origin = 'COMPLEMENTO'
      Size = 200
    end
    object SQL_EmpresaINICIO_ATIVIDADE: TDateField
      AutoGenerateValue = arDefault
      FieldName = 'INICIO_ATIVIDADE'
      Origin = 'INICIO_ATIVIDADE'
    end
    object SQL_EmpresaIE_SUBSTITUTO_TRIBUTARIO: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'IE_SUBSTITUTO_TRIBUTARIO'
      Origin = 'IE_SUBSTITUTO_TRIBUTARIO'
      Size = 15
    end
    object SQL_EmpresaCODIGO_REGIME_TRIBUTARIO: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'CODIGO_REGIME_TRIBUTARIO'
      Origin = 'CODIGO_REGIME_TRIBUTARIO'
      FixedChar = True
      Size = 1
    end
    object SQL_EmpresaTRIBUTACAO_PIS_COFINS: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'TRIBUTACAO_PIS_COFINS'
      Origin = 'TRIBUTACAO_PIS_COFINS'
      FixedChar = True
      Size = 14
    end
    object SQL_EmpresaAPURACAO_MENSAL_IPI: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'APURACAO_MENSAL_IPI'
      Origin = 'APURACAO_MENSAL_IPI'
      FixedChar = True
      Size = 1
    end
    object SQL_EmpresaAPURACAO_IPI: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'APURACAO_IPI'
      Origin = 'APURACAO_IPI'
      FixedChar = True
      Size = 9
    end
    object SQL_EmpresaAPURACAO_DECENDIAL_IPI: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'APURACAO_DECENDIAL_IPI'
      Origin = 'APURACAO_DECENDIAL_IPI'
      FixedChar = True
      Size = 1
    end
    object SQL_EmpresaTRIBUTADO_ALIQUOTA_FIXA_ICMS: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'TRIBUTADO_ALIQUOTA_FIXA_ICMS'
      Origin = 'TRIBUTADO_ALIQUOTA_FIXA_ICMS'
      FixedChar = True
      Size = 1
    end
    object SQL_EmpresaCONTRIBUINTE_IPI: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'CONTRIBUINTE_IPI'
      Origin = 'CONTRIBUINTE_IPI'
      FixedChar = True
      Size = 1
    end
    object SQL_EmpresaORGANIZACAO_CONTABIL_RAZAO_SOCIAL: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'ORGANIZACAO_CONTABIL_RAZAO_SOCIAL'
      Origin = 'ORGANIZACAO_CONTABIL_RAZAO_SOCIAL'
      Size = 200
    end
    object SQL_EmpresaORGANIZACAO_CONTABIL_FANTASIA: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'ORGANIZACAO_CONTABIL_FANTASIA'
      Origin = 'ORGANIZACAO_CONTABIL_FANTASIA'
      Size = 200
    end
    object SQL_EmpresaORGANIZACAO_CONTABIL_CNPJ_CPF: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'ORGANIZACAO_CONTABIL_CNPJ_CPF'
      Origin = 'ORGANIZACAO_CONTABIL_CNPJ_CPF'
    end
    object SQL_EmpresaORGANIZACAO_CONTABIL_INSCRICAO: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'ORGANIZACAO_CONTABIL_INSCRICAO'
      Origin = 'ORGANIZACAO_CONTABIL_INSCRICAO'
      Size = 50
    end
    object SQL_EmpresaORGANIZACAO_CONTABIL_ENDERECO: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'ORGANIZACAO_CONTABIL_ENDERECO'
      Origin = 'ORGANIZACAO_CONTABIL_ENDERECO'
      Size = 100
    end
    object SQL_EmpresaORGANIZACAO_CONTABIL_BAIRRO: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'ORGANIZACAO_CONTABIL_BAIRRO'
      Origin = 'ORGANIZACAO_CONTABIL_BAIRRO'
      Size = 100
    end
    object SQL_EmpresaORGANIZACAO_CONTABIL_NUMERO: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'ORGANIZACAO_CONTABIL_NUMERO'
      Origin = 'ORGANIZACAO_CONTABIL_NUMERO'
      Size = 10
    end
    object SQL_EmpresaORGANIZACAO_CONTABIL_MUNICIPIO: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'ORGANIZACAO_CONTABIL_MUNICIPIO'
      Origin = 'ORGANIZACAO_CONTABIL_MUNICIPIO'
      Size = 50
    end
    object SQL_EmpresaORGANIZACAO_CONTABIL_CODIGO_MUNICIPIO: TIntegerField
      AutoGenerateValue = arDefault
      FieldName = 'ORGANIZACAO_CONTABIL_CODIGO_MUNICIPIO'
      Origin = 'ORGANIZACAO_CONTABIL_CODIGO_MUNICIPIO'
    end
    object SQL_EmpresaORGANIZACAO_CONTABIL_ESTADO: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'ORGANIZACAO_CONTABIL_ESTADO'
      Origin = 'ORGANIZACAO_CONTABIL_ESTADO'
      Size = 50
    end
    object SQL_EmpresaORGANIZACAO_CONTABIL_PAIS: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'ORGANIZACAO_CONTABIL_PAIS'
      Origin = 'ORGANIZACAO_CONTABIL_PAIS'
      Size = 50
    end
    object SQL_EmpresaORGANIZACAO_CONTABIL_CEP: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'ORGANIZACAO_CONTABIL_CEP'
      Origin = 'ORGANIZACAO_CONTABIL_CEP'
      Size = 100
    end
    object SQL_EmpresaORGANIZACAO_CONTABIL_COMPLEMENTO: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'ORGANIZACAO_CONTABIL_COMPLEMENTO'
      Origin = 'ORGANIZACAO_CONTABIL_COMPLEMENTO'
      Size = 100
    end
    object SQL_EmpresaORGANIZACAO_CONTABIL_TELEFONE_01: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'ORGANIZACAO_CONTABIL_TELEFONE_01'
      Origin = 'ORGANIZACAO_CONTABIL_TELEFONE_01'
    end
    object SQL_EmpresaORGANIZACAO_CONTABIL_TELEFONE_02: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'ORGANIZACAO_CONTABIL_TELEFONE_02'
      Origin = 'ORGANIZACAO_CONTABIL_TELEFONE_02'
    end
    object SQL_EmpresaORGANIZACAO_CONTABIL_CELULAR_01: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'ORGANIZACAO_CONTABIL_CELULAR_01'
      Origin = 'ORGANIZACAO_CONTABIL_CELULAR_01'
    end
    object SQL_EmpresaORGANIZACAO_CONTABIL_CELULAR_02: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'ORGANIZACAO_CONTABIL_CELULAR_02'
      Origin = 'ORGANIZACAO_CONTABIL_CELULAR_02'
    end
    object SQL_EmpresaORGANIZACAO_CONTABIL_EMAIL_01: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'ORGANIZACAO_CONTABIL_EMAIL_01'
      Origin = 'ORGANIZACAO_CONTABIL_EMAIL_01'
      Size = 100
    end
    object SQL_EmpresaORGANIZACAO_CONTABIL_EMAIL_02: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'ORGANIZACAO_CONTABIL_EMAIL_02'
      Origin = 'ORGANIZACAO_CONTABIL_EMAIL_02'
      Size = 100
    end
    object SQL_EmpresaORGANIZACAO_CONTABIL_SITE: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'ORGANIZACAO_CONTABIL_SITE'
      Origin = 'ORGANIZACAO_CONTABIL_SITE'
      Size = 100
    end
    object SQL_EmpresaORGANIZACAO_CONTABIL_SKYPE: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'ORGANIZACAO_CONTABIL_SKYPE'
      Origin = 'ORGANIZACAO_CONTABIL_SKYPE'
      Size = 50
    end
    object SQL_EmpresaCONTADOR_NOME: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'CONTADOR_NOME'
      Origin = 'CONTADOR_NOME'
      Size = 200
    end
    object SQL_EmpresaCONTADOR_CPF: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'CONTADOR_CPF'
      Origin = 'CONTADOR_CPF'
      Size = 14
    end
    object SQL_EmpresaCONTADOR_CRC: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'CONTADOR_CRC'
      Origin = 'CONTADOR_CRC'
      Size = 50
    end
    object SQL_EmpresaNIRE: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'NIRE'
      Origin = 'NIRE'
      Size = 11
    end
    object SQL_EmpresaCNAE: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'CNAE'
      Origin = 'CNAE'
      Size = 7
    end
    object SQL_EmpresaBANCO_01: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'BANCO_01'
      Origin = 'BANCO_01'
      Size = 50
    end
    object SQL_EmpresaBANCO_OP: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'BANCO_OP'
      Origin = 'BANCO_OP'
      Size = 50
    end
    object SQL_EmpresaBANCO_OP2: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'BANCO_OP2'
      Origin = 'BANCO_OP2'
      Size = 50
    end
    object SQL_EmpresaBANCO_OP_1: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'BANCO_OP_1'
      Origin = 'BANCO_OP_1'
      Size = 50
    end
    object SQL_EmpresaBANCO_OP_1_2: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'BANCO_OP_1_2'
      Origin = 'BANCO_OP_1_2'
      Size = 50
    end
    object SQL_EmpresaBANCO_AGENCIA_01: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'BANCO_AGENCIA_01'
      Origin = 'BANCO_AGENCIA_01'
      Size = 50
    end
    object SQL_EmpresaBANCO_CONTA_01: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'BANCO_CONTA_01'
      Origin = 'BANCO_CONTA_01'
      Size = 50
    end
    object SQL_EmpresaBANCO_02: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'BANCO_02'
      Origin = 'BANCO_02'
      Size = 50
    end
    object SQL_EmpresaBANCO_AGENCIA_01_DIGITO: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'BANCO_AGENCIA_01_DIGITO'
      Origin = 'BANCO_AGENCIA_01_DIGITO'
      Size = 50
    end
    object SQL_EmpresaBANCO_CONTA_01_DIGITO: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'BANCO_CONTA_01_DIGITO'
      Origin = 'BANCO_CONTA_01_DIGITO'
      Size = 50
    end
    object SQL_EmpresaBANCO_AGENCIA_02_DIGITO: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'BANCO_AGENCIA_02_DIGITO'
      Origin = 'BANCO_AGENCIA_02_DIGITO'
      Size = 50
    end
    object SQL_EmpresaBANCO_CONTA_02_DIGITO: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'BANCO_CONTA_02_DIGITO'
      Origin = 'BANCO_CONTA_02_DIGITO'
      Size = 50
    end
    object SQL_EmpresaBANCO_AGENCIA_02: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'BANCO_AGENCIA_02'
      Origin = 'BANCO_AGENCIA_02'
      Size = 50
    end
    object SQL_EmpresaBANCO_CONTA_02: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'BANCO_CONTA_02'
      Origin = 'BANCO_CONTA_02'
      Size = 50
    end
    object SQL_EmpresaBANCO_03: TIntegerField
      AutoGenerateValue = arDefault
      FieldName = 'BANCO_03'
      Origin = 'BANCO_03'
    end
    object SQL_EmpresaBANCO_AGENCIA_03: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'BANCO_AGENCIA_03'
      Origin = 'BANCO_AGENCIA_03'
      Size = 50
    end
    object SQL_EmpresaBANCO_CONTA_03: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'BANCO_CONTA_03'
      Origin = 'BANCO_CONTA_03'
      Size = 50
    end
    object SQL_EmpresaBANCO_GERENTE_01: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'BANCO_GERENTE_01'
      Origin = 'BANCO_GERENTE_01'
      Size = 50
    end
    object SQL_EmpresaBANCO_TELEFONE_01: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'BANCO_TELEFONE_01'
      Origin = 'BANCO_TELEFONE_01'
      Size = 50
    end
    object SQL_EmpresaBANCO_RAMAL_01: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'BANCO_RAMAL_01'
      Origin = 'BANCO_RAMAL_01'
      Size = 50
    end
    object SQL_EmpresaBANCO_GERENTE_02: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'BANCO_GERENTE_02'
      Origin = 'BANCO_GERENTE_02'
      Size = 50
    end
    object SQL_EmpresaBANCO_TELEFONE_02: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'BANCO_TELEFONE_02'
      Origin = 'BANCO_TELEFONE_02'
      Size = 50
    end
    object SQL_EmpresaBANCO_RAMAL_02: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'BANCO_RAMAL_02'
      Origin = 'BANCO_RAMAL_02'
      Size = 50
    end
    object SQL_EmpresaSOCIO_01: TIntegerField
      AutoGenerateValue = arDefault
      FieldName = 'SOCIO_01'
      Origin = 'SOCIO_01'
    end
    object SQL_EmpresaSOCIO_02: TIntegerField
      AutoGenerateValue = arDefault
      FieldName = 'SOCIO_02'
      Origin = 'SOCIO_02'
    end
    object SQL_EmpresaRODAPE: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'RODAPE'
      Origin = 'RODAPE'
      Size = 500
    end
    object SQL_EmpresaLOGOTIPO: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'LOGOTIPO'
      Origin = 'LOGOTIPO'
      Size = 50
    end
    object SQL_EmpresaSELECAO_EMPRESA: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'SELECAO_EMPRESA'
      Origin = 'SELECAO_EMPRESA'
      Size = 50
    end
    object SQL_EmpresaCODIGO_IDENTIFICACAO: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'CODIGO_IDENTIFICACAO'
      Origin = 'CODIGO_IDENTIFICACAO'
      Size = 50
    end
    object SQL_EmpresaCHAVE_ATIVACAO: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'CHAVE_ATIVACAO'
      Origin = 'CHAVE_ATIVACAO'
      Size = 50
    end
    object SQL_EmpresaCODIGO_PAIS: TIntegerField
      AutoGenerateValue = arDefault
      FieldName = 'CODIGO_PAIS'
      Origin = 'CODIGO_PAIS'
    end
    object SQL_EmpresaORGANIZACAO_CONTABIL_CODPAIS: TIntegerField
      AutoGenerateValue = arDefault
      FieldName = 'ORGANIZACAO_CONTABIL_CODPAIS'
      Origin = 'ORGANIZACAO_CONTABIL_CODPAIS'
    end
    object SQL_EmpresaORGANIZACAO_CONTABIL_CPF: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'ORGANIZACAO_CONTABIL_CPF'
      Origin = 'ORGANIZACAO_CONTABIL_CPF'
      Size = 50
    end
    object SQL_EmpresaDIA_VENCIMENTO: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'DIA_VENCIMENTO'
      Origin = 'DIA_VENCIMENTO'
      Size = 2
    end
    object SQL_EmpresaARQUIVOS_FISCAIS_EMAIL_01: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'ARQUIVOS_FISCAIS_EMAIL_01'
      Origin = 'ARQUIVOS_FISCAIS_EMAIL_01'
      Size = 50
    end
    object SQL_EmpresaARQUIVOS_FISCAIS_EMAIL_02: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'ARQUIVOS_FISCAIS_EMAIL_02'
      Origin = 'ARQUIVOS_FISCAIS_EMAIL_02'
      Size = 50
    end
    object SQL_EmpresaORGANIZACAO_CONTABIL_NOME: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'ORGANIZACAO_CONTABIL_NOME'
      Origin = 'ORGANIZACAO_CONTABIL_NOME'
      Size = 50
    end
    object SQL_EmpresaNOME_CONTATO_AD: TMemoField
      AutoGenerateValue = arDefault
      FieldName = 'NOME_CONTATO_AD'
      Origin = 'NOME_CONTATO_AD'
      BlobType = ftMemo
    end
  end
  object Sql_Conf: TFDQuery
    Connection = Module.connection
    SQL.Strings = (
      'select * from config_notas')
    Left = 120
    Top = 65
    object Sql_ConfCODIGO: TFDAutoIncField
      FieldName = 'CODIGO'
      Origin = 'CODIGO'
      ReadOnly = True
    end
    object Sql_ConfCERTIFICADO: TMemoField
      AutoGenerateValue = arDefault
      FieldName = 'CERTIFICADO'
      Origin = 'CERTIFICADO'
      BlobType = ftMemo
    end
    object Sql_ConfID_TOKEN: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'ID_TOKEN'
      Origin = 'ID_TOKEN'
      Size = 50
    end
    object Sql_ConfCODIGO_CSC: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'CODIGO_CSC'
      Origin = 'CODIGO_CSC'
      Size = 50
    end
    object Sql_ConfEMAIL_SMTP: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'EMAIL_SMTP'
      Origin = 'EMAIL_SMTP'
      Size = 50
    end
    object Sql_ConfAMBIENTE: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'AMBIENTE'
      Origin = 'AMBIENTE'
      FixedChar = True
      Size = 11
    end
    object Sql_ConfSMT_SEGURO: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'SMT_SEGURO'
      Origin = 'SMT_SEGURO'
      Size = 50
    end
    object Sql_ConfPORTA: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'PORTA'
      Origin = 'PORTA'
      Size = 50
    end
    object Sql_ConfEMAIL: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'EMAIL'
      Origin = 'EMAIL'
      Size = 50
    end
    object Sql_ConfSENHA: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'SENHA'
      Origin = 'SENHA'
      Size = 50
    end
    object Sql_ConfNUMERO_SERIE_CERTIFICADO: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'NUMERO_SERIE_CERTIFICADO'
      Origin = 'NUMERO_SERIE_CERTIFICADO'
      Size = 50
    end
    object Sql_ConfTIPO_NOTA: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'TIPO_NOTA'
      Origin = 'TIPO_NOTA'
      FixedChar = True
      Size = 12
    end
  end
  object SQL_PARAMETROS_NFCE: TFDQuery
    Connection = Module.connection
    SQL.Strings = (
      'select pn.*, pv.* from parametros_nfce pn,parametros_venda pv')
    Left = 120
    Top = 129
    object SQL_PARAMETROS_NFCEUTILIZA_NFCE: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'UTILIZA_NFCE'
      Origin = 'UTILIZA_NFCE'
      FixedChar = True
      Size = 1
    end
    object SQL_PARAMETROS_NFCEIMPRIMIR_DANFE_DIRETO: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'IMPRIMIR_DANFE_DIRETO'
      Origin = 'IMPRIMIR_DANFE_DIRETO'
      FixedChar = True
      Size = 1
    end
    object SQL_PARAMETROS_NFCEVISUALIZAR_DANFE: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'VISUALIZAR_DANFE'
      Origin = 'VISUALIZAR_DANFE'
      FixedChar = True
      Size = 1
    end
    object SQL_PARAMETROS_NFCEVENDA_GERA_NFCE: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'VENDA_GERA_NFCE'
      Origin = 'VENDA_GERA_NFCE'
      FixedChar = True
      Size = 1
    end
    object SQL_PARAMETROS_NFCECARTAO_GERA_NFCE: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'CARTAO_GERA_NFCE'
      Origin = 'CARTAO_GERA_NFCE'
      FixedChar = True
      Size = 1
    end
    object SQL_PARAMETROS_NFCENFCE_COMPROVANTE: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'NFCE_COMPROVANTE'
      Origin = 'NFCE_COMPROVANTE'
      FixedChar = True
      Size = 1
    end
    object SQL_PARAMETROS_NFCEIMPRESSORA_DANFE: TStringField
      FieldName = 'IMPRESSORA_DANFE'
      Origin = 'IMPRESSORA_DANFE'
      Size = 50
    end
    object SQL_PARAMETROS_NFCELOTE: TStringField
      FieldName = 'LOTE'
      Origin = 'LOTE'
      Size = 5
    end
    object SQL_PARAMETROS_NFCEIMPRIMIR_COMPROVANTE: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'IMPRIMIR_COMPROVANTE'
      Origin = 'IMPRIMIR_COMPROVANTE'
      ProviderFlags = []
      ReadOnly = True
      FixedChar = True
      Size = 1
    end
    object SQL_PARAMETROS_NFCEVENDA_SEM_ESTOQUE: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'VENDA_SEM_ESTOQUE'
      Origin = 'VENDA_SEM_ESTOQUE'
      ProviderFlags = []
      ReadOnly = True
      FixedChar = True
      Size = 1
    end
    object SQL_PARAMETROS_NFCEHABILITAR_FIADO: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'HABILITAR_FIADO'
      Origin = 'HABILITAR_FIADO'
      ProviderFlags = []
      ReadOnly = True
      FixedChar = True
      Size = 1
    end
    object SQL_PARAMETROS_NFCEFIADO_COMPROVANTE: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'FIADO_COMPROVANTE'
      Origin = 'FIADO_COMPROVANTE'
      ProviderFlags = []
      ReadOnly = True
      FixedChar = True
      Size = 1
    end
    object SQL_PARAMETROS_NFCEESTOQUE_PDV: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'ESTOQUE_PDV'
      Origin = 'ESTOQUE_PDV'
      ProviderFlags = []
      ReadOnly = True
      FixedChar = True
      Size = 1
    end
    object SQL_PARAMETROS_NFCEALTERA_PRECO_PDV: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'ALTERA_PRECO_PDV'
      Origin = 'ALTERA_PRECO_PDV'
      ProviderFlags = []
      ReadOnly = True
      FixedChar = True
      Size = 1
    end
    object SQL_PARAMETROS_NFCEABRIR_GAVETA: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'ABRIR_GAVETA'
      Origin = 'ABRIR_GAVETA'
      ProviderFlags = []
      ReadOnly = True
      FixedChar = True
      Size = 1
    end
    object SQL_PARAMETROS_NFCESERIE_NORMAL: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'SERIE_NORMAL'
      Origin = 'SERIE_NORMAL'
      Size = 3
    end
    object SQL_PARAMETROS_NFCEVIAS_COMPROVANTE: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'VIAS_COMPROVANTE'
      Origin = 'VIAS_COMPROVANTE'
      ProviderFlags = []
      ReadOnly = True
      FixedChar = True
      Size = 1
    end
    object SQL_PARAMETROS_NFCEUSA_PAG_PADRAO: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'USA_PAG_PADRAO'
      Origin = 'USA_PAG_PADRAO'
      ProviderFlags = []
      ReadOnly = True
      FixedChar = True
      Size = 1
    end
    object SQL_PARAMETROS_NFCEPAG_PADRAO: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'PAG_PADRAO'
      Origin = 'PAG_PADRAO'
      ProviderFlags = []
      ReadOnly = True
      FixedChar = True
      Size = 3
    end
    object SQL_PARAMETROS_NFCEPAG_LISTA: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'PAG_LISTA'
      Origin = 'PAG_LISTA'
      ProviderFlags = []
      ReadOnly = True
      FixedChar = True
      Size = 1
    end
    object SQL_PARAMETROS_NFCEPAG_CODIGO: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'PAG_CODIGO'
      Origin = 'PAG_CODIGO'
      ProviderFlags = []
      ReadOnly = True
      FixedChar = True
      Size = 1
    end
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
    SQL.Strings = (
      'select '
      ''
      
        '     vi.CODIGO_PRODUTO, vi.CODIGO_VENDA,vi.QUANTIDADE,vi.PRECO,v' +
        'i.PRECO_TOTAL,vi.ACRESCIMO,vi.DESCONTO,vi.CODIGO_ITEM_VENDA,'
      
        '     p.CODIGO,p.DESCRICAO_PRODUTO,p.NCM,p.FRETE,p.ICMS_CST,p.UNI' +
        'DADE_MEDIDA,p.CODIGO_ORIGEM_MERCADORIA,p.ALIQ_ICMS, p.CSOSN,'
      '     p.CEST, p.CODIGO_BARRAS, p.PIS_CST, p.COFINS_CST'
      ''
      'from venda_item vi'
      ''
      'inner join produto p ON (vi.CODIGO_PRODUTO = p.CODIGO)'
      ''
      'WHERE vi.CODIGO_VENDA = :pcodigo')
    Left = 224
    Top = 72
    ParamData = <
      item
        Name = 'PCODIGO'
        DataType = ftString
        ParamType = ptInput
        Value = Null
      end>
    object SQL_VENDA_ITEMCODIGO_PRODUTO: TIntegerField
      AutoGenerateValue = arDefault
      FieldName = 'CODIGO_PRODUTO'
      Origin = 'CODIGO_PRODUTO'
    end
    object SQL_VENDA_ITEMCODIGO_VENDA: TIntegerField
      AutoGenerateValue = arDefault
      FieldName = 'CODIGO_VENDA'
      Origin = 'CODIGO_VENDA'
    end
    object SQL_VENDA_ITEMQUANTIDADE: TSingleField
      AutoGenerateValue = arDefault
      FieldName = 'QUANTIDADE'
      Origin = 'QUANTIDADE'
    end
    object SQL_VENDA_ITEMPRECO: TBCDField
      AutoGenerateValue = arDefault
      FieldName = 'PRECO'
      Origin = 'PRECO'
      Precision = 10
    end
    object SQL_VENDA_ITEMPRECO_TOTAL: TBCDField
      AutoGenerateValue = arDefault
      FieldName = 'PRECO_TOTAL'
      Origin = 'PRECO_TOTAL'
      Precision = 10
    end
    object SQL_VENDA_ITEMACRESCIMO: TBCDField
      AutoGenerateValue = arDefault
      FieldName = 'ACRESCIMO'
      Origin = 'ACRESCIMO'
      Precision = 10
    end
    object SQL_VENDA_ITEMDESCONTO: TBCDField
      AutoGenerateValue = arDefault
      FieldName = 'DESCONTO'
      Origin = 'DESCONTO'
      Precision = 10
    end
    object SQL_VENDA_ITEMCODIGO_ITEM_VENDA: TIntegerField
      AutoGenerateValue = arDefault
      FieldName = 'CODIGO_ITEM_VENDA'
      Origin = 'CODIGO_ITEM_VENDA'
    end
    object SQL_VENDA_ITEMCODIGO: TIntegerField
      AutoGenerateValue = arDefault
      FieldName = 'CODIGO'
      Origin = 'CODIGO'
      ProviderFlags = [pfInKey]
      ReadOnly = True
    end
    object SQL_VENDA_ITEMDESCRICAO_PRODUTO: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'DESCRICAO_PRODUTO'
      Origin = 'DESCRICAO_PRODUTO'
      ProviderFlags = []
      ReadOnly = True
      Size = 200
    end
    object SQL_VENDA_ITEMNCM: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'NCM'
      Origin = 'NCM'
      ProviderFlags = []
      ReadOnly = True
      Size = 50
    end
    object SQL_VENDA_ITEMFRETE: TBCDField
      AutoGenerateValue = arDefault
      FieldName = 'FRETE'
      Origin = 'FRETE'
      ProviderFlags = []
      ReadOnly = True
      Precision = 10
    end
    object SQL_VENDA_ITEMICMS_CST: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'ICMS_CST'
      Origin = 'ICMS_CST'
      ProviderFlags = []
      ReadOnly = True
      Size = 2
    end
    object SQL_VENDA_ITEMUNIDADE_MEDIDA: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'UNIDADE_MEDIDA'
      Origin = 'UNIDADE_MEDIDA'
      ProviderFlags = []
      ReadOnly = True
      Size = 50
    end
    object SQL_VENDA_ITEMCODIGO_ORIGEM_MERCADORIA: TIntegerField
      AutoGenerateValue = arDefault
      FieldName = 'CODIGO_ORIGEM_MERCADORIA'
      Origin = 'CODIGO_ORIGEM_MERCADORIA'
      ProviderFlags = []
      ReadOnly = True
    end
    object SQL_VENDA_ITEMALIQ_ICMS: TBCDField
      AutoGenerateValue = arDefault
      FieldName = 'ALIQ_ICMS'
      Origin = 'ALIQ_ICMS'
      ProviderFlags = []
      ReadOnly = True
      Precision = 10
    end
    object SQL_VENDA_ITEMCSOSN: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'CSOSN'
      Origin = 'CSOSN'
      ProviderFlags = []
      ReadOnly = True
      Size = 200
    end
    object SQL_VENDA_ITEMCEST: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'CEST'
      Origin = 'CEST'
      ProviderFlags = []
      ReadOnly = True
      Size = 50
    end
    object SQL_VENDA_ITEMCODIGO_BARRAS: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'CODIGO_BARRAS'
      Origin = 'CODIGO_BARRAS'
      ProviderFlags = []
      ReadOnly = True
      Size = 50
    end
    object SQL_VENDA_ITEMPIS_CST: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'PIS_CST'
      Origin = 'PIS_CST'
      ProviderFlags = []
      ReadOnly = True
      Size = 5
    end
    object SQL_VENDA_ITEMCOFINS_CST: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'COFINS_CST'
      Origin = 'COFINS_CST'
      ProviderFlags = []
      ReadOnly = True
      Size = 5
    end
  end
  object SQL_VENDA: TFDQuery
    Connection = Module.connection
    SQL.Strings = (
      'SELECT * FROM VENDA '
      'WHERE CODIGO_VENDA = :pcodigo')
    Left = 224
    Top = 128
    ParamData = <
      item
        Name = 'PCODIGO'
        DataType = ftString
        ParamType = ptInput
        Value = Null
      end>
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
    SQL.Strings = (
      'select * from venda_pagamento '
      'where codigo_venda = :pcodigo')
    Left = 120
    Top = 184
    ParamData = <
      item
        Name = 'PCODIGO'
        DataType = ftString
        ParamType = ptInput
        Value = Null
      end>
    object SQL_VENDA_PAGAMENTOCODIGO: TFDAutoIncField
      FieldName = 'CODIGO'
      Origin = 'CODIGO'
      ProviderFlags = [pfInWhere, pfInKey]
      ReadOnly = True
    end
    object SQL_VENDA_PAGAMENTOCODIGO_VENDA: TIntegerField
      AutoGenerateValue = arDefault
      FieldName = 'CODIGO_VENDA'
      Origin = 'CODIGO_VENDA'
    end
    object SQL_VENDA_PAGAMENTOCOD_TIPO_PAGAMENTO: TStringField
      FieldName = 'COD_TIPO_PAGAMENTO'
      Origin = 'COD_TIPO_PAGAMENTO'
      Required = True
      Size = 10
    end
    object SQL_VENDA_PAGAMENTOTIPO_PAGAMENTO: TStringField
      FieldName = 'TIPO_PAGAMENTO'
      Origin = 'TIPO_PAGAMENTO'
      Required = True
      Size = 50
    end
    object SQL_VENDA_PAGAMENTOTOTAL_PAGO: TBCDField
      AutoGenerateValue = arDefault
      FieldName = 'TOTAL_PAGO'
      Origin = 'TOTAL_PAGO'
      Precision = 10
    end
    object SQL_VENDA_PAGAMENTOVALOR_DEBITADO: TBCDField
      AutoGenerateValue = arDefault
      FieldName = 'VALOR_DEBITADO'
      Origin = 'VALOR_DEBITADO'
      Precision = 10
    end
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
