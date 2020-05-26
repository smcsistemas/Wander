object frm_paramentros_clientes: Tfrm_paramentros_clientes
  Left = 0
  Top = 0
  BorderIcons = [biSystemMenu]
  BorderStyle = bsSingle
  Caption = 'Par'#226'metros | Cliente'
  ClientHeight = 122
  ClientWidth = 445
  Color = clWhite
  DefaultMonitor = dmMainForm
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  Position = poOwnerFormCenter
  OnClose = FormClose
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 13
  object grp_empresa: TGroupBox
    Left = 13
    Top = 10
    Width = 417
    Height = 59
    Color = clGradientInactiveCaption
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'Tahoma'
    Font.Style = [fsBold]
    ParentColor = False
    ParentFont = False
    TabOrder = 0
    object cxDBCheckBox2: TcxDBCheckBox
      Left = 11
      Top = 8
      AutoSize = False
      Caption = 'RECEITA DE '#211'CULOS NO CADASTRO DO CLIENTE'
      DataBinding.DataField = 'dados_otica_cliente'
      DataBinding.DataSource = DS_PARAMETROS_SISTEMA
      ParentBackground = False
      ParentColor = False
      ParentFont = False
      Properties.DisplayChecked = '1'
      Properties.DisplayUnchecked = '0'
      Properties.DisplayGrayed = '0'
      Properties.ValueChecked = '1'
      Properties.ValueGrayed = 0
      Properties.ValueUnchecked = '0'
      Style.Color = clWhite
      Style.Font.Charset = DEFAULT_CHARSET
      Style.Font.Color = clWindowText
      Style.Font.Height = -15
      Style.Font.Name = 'Tahoma'
      Style.Font.Style = [fsBold]
      Style.LookAndFeel.NativeStyle = False
      Style.LookAndFeel.SkinName = 'Office2013White'
      Style.IsFontAssigned = True
      StyleDisabled.Color = clWhite
      StyleDisabled.LookAndFeel.NativeStyle = False
      StyleDisabled.LookAndFeel.SkinName = 'Office2013White'
      StyleFocused.Color = clWhite
      StyleFocused.LookAndFeel.NativeStyle = False
      StyleFocused.LookAndFeel.SkinName = 'Office2013White'
      StyleHot.Color = clWhite
      StyleHot.LookAndFeel.NativeStyle = False
      StyleHot.LookAndFeel.SkinName = 'Office2013White'
      TabOrder = 0
      Height = 19
      Width = 390
    end
    object cxDBCheckBox7: TcxDBCheckBox
      Left = 11
      Top = 33
      AutoSize = False
      Caption = 'CPF OBRIGAT'#211'RIO NO CADASTRO'
      DataBinding.DataField = 'cpf_cad_cliente'
      DataBinding.DataSource = DS_PARAMETROS_SISTEMA
      ParentBackground = False
      ParentColor = False
      ParentFont = False
      Properties.DisplayChecked = '1'
      Properties.DisplayUnchecked = '0'
      Properties.DisplayGrayed = '0'
      Properties.ValueChecked = '1'
      Properties.ValueGrayed = 0
      Properties.ValueUnchecked = '0'
      Style.Color = clWhite
      Style.Font.Charset = DEFAULT_CHARSET
      Style.Font.Color = clWindowText
      Style.Font.Height = -15
      Style.Font.Name = 'Tahoma'
      Style.Font.Style = [fsBold]
      Style.LookAndFeel.NativeStyle = False
      Style.LookAndFeel.SkinName = 'Office2013White'
      Style.IsFontAssigned = True
      StyleDisabled.Color = clWhite
      StyleDisabled.LookAndFeel.NativeStyle = False
      StyleDisabled.LookAndFeel.SkinName = 'Office2013White'
      StyleFocused.Color = clWhite
      StyleFocused.LookAndFeel.NativeStyle = False
      StyleFocused.LookAndFeel.SkinName = 'Office2013White'
      StyleHot.Color = clWhite
      StyleHot.LookAndFeel.NativeStyle = False
      StyleHot.LookAndFeel.SkinName = 'Office2013White'
      TabOrder = 1
      Height = 19
      Width = 293
    end
  end
  object btnGravar: TcxButton
    Left = 13
    Top = 82
    Width = 106
    Height = 29
    Caption = 'Gravar'
    LookAndFeel.NativeStyle = False
    LookAndFeel.SkinName = 'Metropolis'
    OptionsImage.Glyph.Data = {
      36040000424D3604000000000000360000002800000010000000100000000100
      2000000000000004000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000007E4C
      69B7AF6A93FFAF6A93FFAF6A93FFAF6A93FFAF6A93FFAF6A93FFAF6A93FFAF6A
      93FFAF6A93FFAF6A93FFAF6A93FFAF6A93FF7E4C69B70000000000000000AF6A
      93FFAF6A93FFAF6A93FFAF6A93FFAF6A93FFAF6A93FFAF6A93FFAF6A93FFAF6A
      93FFAF6A93FFAF6A93FFAF6A93FFAF6A93FFAF6A93FF0000000000000000AF6A
      93FFAF6A93FF0000000000000000000000000000000000000000000000000000
      0000000000000000000000000000AF6A93FFAF6A93FF0000000000000000AF6A
      93FFAF6A93FF0000000000000000000000000000000000000000000000000000
      0000000000000000000000000000AF6A93FFAF6A93FF0000000000000000AF6A
      93FFAF6A93FF0000000000000000000000000000000000000000000000000000
      0000000000000000000000000000AF6A93FFAF6A93FF0000000000000000AF6A
      93FFAF6A93FF0000000000000000000000000000000000000000000000000000
      0000000000000000000000000000AF6A93FFAF6A93FF0000000000000000AF6A
      93FFAF6A93FF0000000000000000000000000000000000000000000000000000
      0000000000000000000000000000AF6A93FFAF6A93FF0000000000000000AF6A
      93FFAF6A93FFAF6A93FFAF6A93FFAF6A93FFAF6A93FFAF6A93FFAF6A93FFAF6A
      93FFAF6A93FFAF6A93FFAF6A93FFAF6A93FFAF6A93FF0000000000000000AF6A
      93FFAF6A93FFAF6A93FFAF6A93FFAF6A93FFAF6A93FFAF6A93FFAF6A93FFAF6A
      93FFAF6A93FFAF6A93FFAF6A93FFAF6A93FFAF6A93FF0000000000000000AF6A
      93FFAF6A93FFAF6A93FF00000000000000000000000000000000000000000000
      00000000000000000000AF6A93FFAF6A93FFAF6A93FF0000000000000000AF6A
      93FFAF6A93FFAF6A93FF00000000AF6A93FFAF6A93FFAF6A93FFAF6A93FFAF6A
      93FFAF6A93FF00000000AF6A93FFAF6A93FFAF6A93FF0000000000000000AF6A
      93FFAF6A93FFAF6A93FF00000000AF6A93FFAF6A93FFAF6A93FFAF6A93FF0000
      0000AF6A93FF00000000AF6A93FFAF6A93FFAF6A93FF0000000000000000AF6A
      93FFAF6A93FFAF6A93FF00000000AF6A93FFAF6A93FFAF6A93FFAF6A93FF0000
      0000AF6A93FF00000000AF6A93FFAF6A93FFAF6A93FF0000000000000000824F
      6DBDAF6A93FFAF6A93FF00000000AF6A93FFAF6A93FFAF6A93FFAF6A93FFAF6A
      93FFAF6A93FF00000000AF6A93FFAF6A93FF824F6DBD00000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000}
    TabOrder = 1
    Font.Charset = ANSI_CHARSET
    Font.Color = clWindowText
    Font.Height = -13
    Font.Name = 'HelveticaNeue'
    Font.Style = [fsBold]
    ParentFont = False
    OnClick = btnGravarClick
  end
  object btnAlterar: TcxButton
    Left = 13
    Top = 82
    Width = 106
    Height = 29
    Caption = 'Alterar'
    LookAndFeel.Kind = lfOffice11
    LookAndFeel.NativeStyle = False
    LookAndFeel.SkinName = 'Metropolis'
    OptionsImage.Glyph.Data = {
      36040000424D3604000000000000360000002800000010000000100000000100
      2000000000000004000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000B8824DFFB882
      4DFFB8824DFF251A0F3300000000000000000000000000000000000000000000
      0000848484FF848484FF848484FF848484FF848484FFFFFFFFFFB8824DFFB882
      4DFFF1E6DBFFB8824DFF251A0F33000000000000000000000000000000000000
      0000848484FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFB8824DFFF1E6
      DBFFB8824DFFB8824DFFB8824DFF251A0F330000000000000000000000000000
      0000848484FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF1E6DBFFB882
      4DFFB8824DFFB8824DFFB8824DFFB8824DFF251A0F3300000000000000000000
      0000848484FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF1E6
      DBFFB8824DFFB8824DFFB8824DFFB8824DFFB8824DFF251A0F33000000000000
      0000848484FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFF1E6DBFFB8824DFFB8824DFFB8824DFF251A0F33B8824DFF000000000000
      0000848484FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFF1E6DBFFB8824DFFF1E6DBFFB8824DFFB8824DFF000000000000
      0000848484FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFF1E6DBFFB8824DFFB8824DFF251A0F33000000000000
      0000848484FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF0000000000000000000000000000
      0000848484FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFF848484FF0000000000000000000000000000
      0000848484FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFF848484FF0000000000000000000000000000
      0000848484FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFF848484FF848484FF848484FF848484FF0000000000000000000000000000
      0000848484FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFF848484FFFAFAFAFA7B7B7BDD1A1A1A330000000000000000000000000000
      0000848484FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFF848484FF7B7B7BDD1A1A1A33000000000000000000000000000000000000
      0000848484FF848484FF848484FF848484FF848484FF848484FF848484FF8383
      83FE848484FF1A1A1A3300000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000}
    TabOrder = 2
    Font.Charset = ANSI_CHARSET
    Font.Color = clWindowText
    Font.Height = -13
    Font.Name = 'HelveticaNeue'
    Font.Style = [fsBold]
    ParentFont = False
    OnClick = btnAlterarClick
  end
  object btnCancelar: TcxButton
    Left = 324
    Top = 82
    Width = 106
    Height = 29
    Caption = 'Cancelar'
    LookAndFeel.NativeStyle = False
    LookAndFeel.SkinName = 'Metropolis'
    OptionsImage.Glyph.Data = {
      36040000424D3604000000000000360000002800000010000000100000000100
      200000000000000400000000000000000000000000000000000000000000131C
      3C471E2B5F700000000000000000000000000000000000000000000000000000
      00000000000000000000000000001F2D6375131C3C4700000000131C3C474260
      D0F64463D8FF1F2D617300000000000000000000000000000000000000000000
      00000000000000000000202E65774463D8FF4260D1F7131C3C472130687B4463
      D8FF4463D8FF4463D8FF1F2D6173000000000000000000000000000000000000
      000000000000202E65774463D8FF4463D8FF4463D8FF212F677A000000002231
      6C7F4463D8FF4463D8FF4463D8FF1F2D61730000000000000000000000000000
      0000202E65774463D8FF4463D8FF4463D8FF22316B7E00000000000000000000
      000022316C7F4463D8FF4463D8FF4463D8FF1F2D61730000000000000000202E
      65774463D8FF4463D8FF4463D8FF22316B7E0000000000000000000000000000
      00000000000022316C7F4463D8FF4463D8FF4463D8FF1F2D6173202E65774463
      D8FF4463D8FF4463D8FF22316B7E000000000000000000000000000000000000
      0000000000000000000022316C7F4463D8FF4463D8FF4463D8FF4463D8FF4463
      D8FF4463D8FF22316B7E00000000000000000000000000000000000000000000
      000000000000000000000000000022316C7F4463D8FF4463D8FF4463D8FF4463
      D8FF22316B7E0000000000000000000000000000000000000000000000000000
      0000000000000000000000000000202E65774463D8FF4463D8FF4463D8FF4463
      D8FF1F2D62740000000000000000000000000000000000000000000000000000
      00000000000000000000202E65774463D8FF4463D8FF4463D8FF4463D8FF4463
      D8FF4463D8FF1F2D627400000000000000000000000000000000000000000000
      000000000000202E65774463D8FF4463D8FF4463D8FF22316B7E22316C7F4463
      D8FF4463D8FF4463D8FF1F2D6274000000000000000000000000000000000000
      0000202E65774463D8FF4463D8FF4463D8FF21316A7D00000000000000002231
      6C7F4463D8FF4463D8FF4463D8FF1F2D6274000000000000000000000000202E
      65774463D8FF4463D8FF4463D8FF21316A7D0000000000000000000000000000
      000022316C7F4463D8FF4463D8FF4463D8FF1F2D6274000000001F2D63754463
      D8FF4463D8FF4463D8FF21316A7D000000000000000000000000000000000000
      00000000000022316C7F4463D8FF4463D8FF4463D8FF1E2C6172151E414D4261
      D3F94463D8FF21316A7D00000000000000000000000000000000000000000000
      0000000000000000000022316C7F4463D8FF4261D3F9151E424E00000000151E
      414D212F677A0000000000000000000000000000000000000000000000000000
      00000000000000000000000000002130687B151E414D00000000}
    TabOrder = 3
    Font.Charset = ANSI_CHARSET
    Font.Color = clWindowText
    Font.Height = -13
    Font.Name = 'HelveticaNeue'
    Font.Style = [fsBold]
    ParentFont = False
    OnClick = btnCancelarClick
  end
  object SQL_Empresa: TFDQuery
    Connection = Module.connection
    SQL.Strings = (
      'select * from empresa order by codigo desc limit 1')
    Left = 264
    Top = 72
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
      EditMask = '!99/99/9999;0;_'
    end
    object SQL_EmpresaCNPJ: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'CNPJ'
      Origin = 'CNPJ'
      EditMask = '99.999.999/9999-99;0;'
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
      EditMask = '!\(99\) 9999-9999;0;_'
    end
    object SQL_EmpresaEMPRESA_TELEFONE_03: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'EMPRESA_TELEFONE_03'
      Origin = 'EMPRESA_TELEFONE_03'
      EditMask = '!\(99\) \99999-9999;0;_'
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
      EditMask = '!\(99\) \99999-9999;0;_'
    end
    object SQL_EmpresaEMPRESA_CELULAR_02: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'EMPRESA_CELULAR_02'
      Origin = 'EMPRESA_CELULAR_02'
      EditMask = '!\(99\) \99999-9999;0;_'
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
    object SQL_EmpresaEMPRESA_SKYPE: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'EMPRESA_SKYPE'
      Origin = 'EMPRESA_SKYPE'
      Size = 50
    end
    object SQL_EmpresaEMPRESA_EMAIL_02: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'EMPRESA_EMAIL_02'
      Origin = 'EMPRESA_EMAIL_02'
      Size = 100
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
    object SQL_EmpresaSUFRAMA: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'SUFRAMA'
      Origin = 'SUFRAMA'
      Size = 15
    end
    object SQL_EmpresaCEP: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'CEP'
      Origin = 'CEP'
      EditMask = '99\.999\-999;0;_'
      Size = 50
    end
    object SQL_EmpresaBAIRRO: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'BAIRRO'
      Origin = 'BAIRRO'
      Size = 200
    end
    object SQL_EmpresaMUNICIPIO: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'MUNICIPIO'
      Origin = 'MUNICIPIO'
      Size = 50
    end
    object SQL_EmpresaESTADO: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'ESTADO'
      Origin = 'ESTADO'
      Size = 50
    end
    object SQL_EmpresaCODIGO_MUNICIPIO: TIntegerField
      AutoGenerateValue = arDefault
      FieldName = 'CODIGO_MUNICIPIO'
      Origin = 'CODIGO_MUNICIPIO'
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
    object SQL_EmpresaAPURACAO_MENSAL_IPI: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'APURACAO_MENSAL_IPI'
      Origin = 'APURACAO_MENSAL_IPI'
      FixedChar = True
      Size = 1
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
      EditMask = '99\.999\.999/9999-99;0;_'
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
      EditMask = '99\.999\-999;0;_'
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
      EditMask = '!\(99\) 9999-9999;0;_'
    end
    object SQL_EmpresaORGANIZACAO_CONTABIL_TELEFONE_02: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'ORGANIZACAO_CONTABIL_TELEFONE_02'
      Origin = 'ORGANIZACAO_CONTABIL_TELEFONE_02'
      EditMask = '!\(99\) 9999-9999;0;_'
    end
    object SQL_EmpresaORGANIZACAO_CONTABIL_CELULAR_01: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'ORGANIZACAO_CONTABIL_CELULAR_01'
      Origin = 'ORGANIZACAO_CONTABIL_CELULAR_01'
      EditMask = '!\(99\) \99999-9999;0;_'
    end
    object SQL_EmpresaORGANIZACAO_CONTABIL_CELULAR_02: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'ORGANIZACAO_CONTABIL_CELULAR_02'
      Origin = 'ORGANIZACAO_CONTABIL_CELULAR_02'
      EditMask = '!\(99\) \99999-9999;0;_'
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
      EditMask = '999\.999\.999\-99;0;_'
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
      EditMask = '999;0;_'
      Size = 50
    end
    object SQL_EmpresaBANCO_OP2: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'BANCO_OP2'
      Origin = 'BANCO_OP2'
      EditMask = '999;0;_'
      Size = 50
    end
    object SQL_EmpresaBANCO_OP_1: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'BANCO_OP_1'
      Origin = 'BANCO_OP_1'
      EditMask = '999;0;_'
      Size = 50
    end
    object SQL_EmpresaBANCO_OP_1_2: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'BANCO_OP_1_2'
      Origin = 'BANCO_OP_1_2'
      EditMask = '999;0;_'
      Size = 50
    end
    object SQL_EmpresaBANCO_AGENCIA_01: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'BANCO_AGENCIA_01'
      Origin = 'BANCO_AGENCIA_01'
      EditMask = '9999;0;_'
      Size = 50
    end
    object SQL_EmpresaBANCO_CONTA_01: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'BANCO_CONTA_01'
      Origin = 'BANCO_CONTA_01'
      EditMask = '9999999;0;_'
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
      EditMask = '99;0;_'
      Size = 50
    end
    object SQL_EmpresaBANCO_CONTA_01_DIGITO: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'BANCO_CONTA_01_DIGITO'
      Origin = 'BANCO_CONTA_01_DIGITO'
      EditMask = '9;0;_'
      Size = 50
    end
    object SQL_EmpresaBANCO_AGENCIA_02_DIGITO: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'BANCO_AGENCIA_02_DIGITO'
      Origin = 'BANCO_AGENCIA_02_DIGITO'
      EditMask = '99;0;_'
      Size = 50
    end
    object SQL_EmpresaBANCO_CONTA_02_DIGITO: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'BANCO_CONTA_02_DIGITO'
      Origin = 'BANCO_CONTA_02_DIGITO'
      EditMask = '9;0;_'
      Size = 50
    end
    object SQL_EmpresaBANCO_AGENCIA_02: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'BANCO_AGENCIA_02'
      Origin = 'BANCO_AGENCIA_02'
      EditMask = '9999;0;_'
      Size = 50
    end
    object SQL_EmpresaBANCO_CONTA_02: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'BANCO_CONTA_02'
      Origin = 'BANCO_CONTA_02'
      EditMask = '9999999;0;_'
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
      EditMask = '9999;0;_'
      Size = 50
    end
    object SQL_EmpresaBANCO_CONTA_03: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'BANCO_CONTA_03'
      Origin = 'BANCO_CONTA_03'
      EditMask = '9999999;0;_'
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
      EditMask = '!\(99\) 9999-9999;0;_'
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
      EditMask = '!\(99\) 9999-9999;0;_'
      Size = 50
    end
    object SQL_EmpresaBANCO_RAMAL_02: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'BANCO_RAMAL_02'
      Origin = 'BANCO_RAMAL_02'
      Size = 50
    end
    object SQL_EmpresaBANCO_RAMAL_01: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'BANCO_RAMAL_01'
      Origin = 'BANCO_RAMAL_01'
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
      EditMask = '999\.999\.999\-99;0;_'
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
    object SQL_EmpresaINICIO_ATIVIDADE: TDateField
      AutoGenerateValue = arDefault
      FieldName = 'INICIO_ATIVIDADE'
      Origin = 'INICIO_ATIVIDADE'
      EditMask = '!99/99/0000;1;_'
    end
    object SQL_EmpresaAPURACAO_IPI: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'APURACAO_IPI'
      Origin = 'APURACAO_IPI'
      FixedChar = True
      Size = 9
    end
    object SQL_EmpresaEMPRESA_TELEFONE_02: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'EMPRESA_TELEFONE_02'
      Origin = 'EMPRESA_TELEFONE_02'
      EditMask = '!\(99\) 9999-9999;0;_'
    end
    object SQL_EmpresaORGANIZACAO_CONTABIL_NOME: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'ORGANIZACAO_CONTABIL_NOME'
      Origin = 'ORGANIZACAO_CONTABIL_NOME'
      Size = 50
    end
    object SQL_EmpresaCOD_UF: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'COD_UF'
      Origin = 'COD_UF'
      Size = 2
    end
    object SQL_EmpresaTRIBUTACAO_PIS_COFINS: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'TRIBUTACAO_PIS_COFINS'
      Origin = 'TRIBUTACAO_PIS_COFINS'
      FixedChar = True
      Size = 14
    end
    object SQL_EmpresaLOGOTIPO: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'LOGOTIPO'
      Origin = 'LOGOTIPO'
      Size = 50
    end
    object SQL_EmpresaNOME_CONTATO_AD: TMemoField
      AutoGenerateValue = arDefault
      FieldName = 'NOME_CONTATO_AD'
      Origin = 'NOME_CONTATO_AD'
      BlobType = ftMemo
    end
  end
  object SQL_PARAMETROS_SISTEMA: TFDQuery
    Connection = Module.connection
    SQL.Strings = (
      'select * from parametros_sistema')
    Left = 368
    Top = 176
    object SQL_PARAMETROS_SISTEMAid: TFDAutoIncField
      FieldName = 'id'
      Origin = 'id'
      ProviderFlags = [pfInWhere, pfInKey]
      ReadOnly = True
    end
    object SQL_PARAMETROS_SISTEMAaliq_imcs: TBCDField
      AutoGenerateValue = arDefault
      FieldName = 'aliq_imcs'
      Origin = 'aliq_imcs'
      Precision = 10
    end
    object SQL_PARAMETROS_SISTEMAaliq_pis_cumulativo: TBCDField
      AutoGenerateValue = arDefault
      FieldName = 'aliq_pis_cumulativo'
      Origin = 'aliq_pis_cumulativo'
      Precision = 10
    end
    object SQL_PARAMETROS_SISTEMAaliq_pis_nao_cumulativo: TBCDField
      AutoGenerateValue = arDefault
      FieldName = 'aliq_pis_nao_cumulativo'
      Origin = 'aliq_pis_nao_cumulativo'
      Precision = 10
    end
    object SQL_PARAMETROS_SISTEMAaliq_cofins_cumulativo: TBCDField
      AutoGenerateValue = arDefault
      FieldName = 'aliq_cofins_cumulativo'
      Origin = 'aliq_cofins_cumulativo'
      Precision = 10
    end
    object SQL_PARAMETROS_SISTEMAaliq_cofins_nao_cumulativo: TBCDField
      AutoGenerateValue = arDefault
      FieldName = 'aliq_cofins_nao_cumulativo'
      Origin = 'aliq_cofins_nao_cumulativo'
      Precision = 10
    end
    object SQL_PARAMETROS_SISTEMAaliq_iss: TBCDField
      AutoGenerateValue = arDefault
      FieldName = 'aliq_iss'
      Origin = 'aliq_iss'
      Precision = 10
    end
    object SQL_PARAMETROS_SISTEMAcaminho_backup: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'caminho_backup'
      Origin = 'caminho_backup'
      Size = 100
    end
    object SQL_PARAMETROS_SISTEMAhost_name: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'host_name'
      Origin = 'host_name'
      Size = 50
    end
    object SQL_PARAMETROS_SISTEMAPASTA_FTP: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'PASTA_FTP'
      Origin = 'PASTA_FTP'
      Size = 200
    end
    object SQL_PARAMETROS_SISTEMAPathInstalacaoWINRAR: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'PathInstalacaoWINRAR'
      Origin = 'PathInstalacaoWINRAR'
      Size = 100
    end
    object SQL_PARAMETROS_SISTEMAPASTA_XML: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'PASTA_XML'
      Origin = 'PASTA_XML'
      Size = 100
    end
    object SQL_PARAMETROS_SISTEMAdados_otica_cliente: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'dados_otica_cliente'
      Origin = 'dados_otica_cliente'
      FixedChar = True
      Size = 1
    end
    object SQL_PARAMETROS_SISTEMAproduto_preco_faixa: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'produto_preco_faixa'
      Origin = 'produto_preco_faixa'
      FixedChar = True
      Size = 1
    end
    object SQL_PARAMETROS_SISTEMAcpf_cad_cliente: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'cpf_cad_cliente'
      Origin = 'cpf_cad_cliente'
      FixedChar = True
      Size = 1
    end
    object SQL_PARAMETROS_SISTEMAprod_difer_estoque: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'prod_difer_estoque'
      Origin = 'prod_difer_estoque'
      FixedChar = True
      Size = 1
    end
    object SQL_PARAMETROS_SISTEMApasta_notas: TMemoField
      AutoGenerateValue = arDefault
      FieldName = 'pasta_notas'
      Origin = 'pasta_notas'
      BlobType = ftMemo
    end
    object SQL_PARAMETROS_SISTEMAcomanda_num: TIntegerField
      AutoGenerateValue = arDefault
      FieldName = 'comanda_num'
      Origin = 'comanda_num'
    end
    object SQL_PARAMETROS_SISTEMAagrupar_tipos_pagamentos: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'agrupar_tipos_pagamentos'
      Origin = 'agrupar_tipos_pagamentos'
      Size = 255
    end
  end
  object DS_PARAMETROS_SISTEMA: TDataSource
    DataSet = SQL_PARAMETROS_SISTEMA
    Left = 464
    Top = 96
  end
end
