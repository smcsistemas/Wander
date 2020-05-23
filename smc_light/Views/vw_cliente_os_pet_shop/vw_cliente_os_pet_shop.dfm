object frm_cliente_os_pet_shop: Tfrm_cliente_os_pet_shop
  Left = 0
  Top = 0
  BorderIcons = [biSystemMenu]
  Caption = 'Selecione o Cliente'
  ClientHeight = 477
  ClientWidth = 362
  Color = clWhite
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  Position = poMainFormCenter
  OnClose = FormClose
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 13
  object Label1: TLabel
    Left = 2
    Top = 16
    Width = 112
    Height = 16
    Caption = 'Consultar Clientes :'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -13
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentFont = False
  end
  object gd_clientes_os_pet: TcxGrid
    Left = 2
    Top = 64
    Width = 357
    Height = 409
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentFont = False
    TabOrder = 0
    LookAndFeel.NativeStyle = False
    LookAndFeel.SkinName = 'Metropolis'
    object gd_clientes_os_petDBTableView1: TcxGridDBTableView
      OnDblClick = gd_clientes_os_petDBTableView1DblClick
      Navigator.Buttons.CustomButtons = <>
      DataController.DataSource = ds_cliente_os_pet
      DataController.Summary.DefaultGroupSummaryItems = <>
      DataController.Summary.FooterSummaryItems = <>
      DataController.Summary.SummaryGroups = <>
      OptionsView.GroupByBox = False
      object gd_clientes_os_petDBTableView1codigo: TcxGridDBColumn
        Caption = 'COD'
        DataBinding.FieldName = 'codigo'
        MinWidth = 43
        Options.Editing = False
        Options.Filtering = False
        Options.FilteringAddValueItems = False
        Options.FilteringFilteredItemsList = False
        Options.FilteringMRUItemsList = False
        Options.FilteringPopup = False
        Options.FilteringPopupMultiSelect = False
        Options.FilteringWithFindPanel = False
        Options.Focusing = False
        Options.IgnoreTimeForFiltering = False
        Options.IncSearch = False
        Options.GroupFooters = False
        Options.Grouping = False
        Options.HorzSizing = False
        Options.Moving = False
        Width = 43
      end
      object gd_clientes_os_petDBTableView1razao_social: TcxGridDBColumn
        Caption = 'RAZ'#195'O SOCIAL'
        DataBinding.FieldName = 'razao_social'
        MinWidth = 173
        Options.Editing = False
        Options.Filtering = False
        Options.FilteringAddValueItems = False
        Options.FilteringFilteredItemsList = False
        Options.FilteringMRUItemsList = False
        Options.FilteringPopup = False
        Options.FilteringPopupMultiSelect = False
        Options.FilteringWithFindPanel = False
        Options.Focusing = False
        Options.IgnoreTimeForFiltering = False
        Options.IncSearch = False
        Options.GroupFooters = False
        Options.Grouping = False
        Options.HorzSizing = False
        Options.Moving = False
        Width = 173
      end
      object gd_clientes_os_petDBTableView1fantasia: TcxGridDBColumn
        Caption = 'NOME FANTASIA'
        DataBinding.FieldName = 'fantasia'
        MinWidth = 1204
        Options.Editing = False
        Options.Filtering = False
        Options.FilteringAddValueItems = False
        Options.FilteringFilteredItemsList = False
        Options.FilteringMRUItemsList = False
        Options.FilteringPopup = False
        Options.FilteringPopupMultiSelect = False
        Options.FilteringWithFindPanel = False
        Options.Focusing = False
        Options.IgnoreTimeForFiltering = False
        Options.IncSearch = False
        Options.GroupFooters = False
        Options.Grouping = False
        Options.HorzSizing = False
        Options.Moving = False
      end
      object gd_clientes_os_petDBTableView1Column1: TcxGridDBColumn
        Caption = 'CPF'
        DataBinding.FieldName = 'cpf'
        Visible = False
      end
      object gd_clientes_os_petDBTableView1Column2: TcxGridDBColumn
        Caption = 'CNPJ'
        DataBinding.FieldName = 'cnpj'
        Visible = False
      end
      object gd_clientes_os_petDBTableView1Column3: TcxGridDBColumn
        Caption = 'CELULAR'
        DataBinding.FieldName = 'celular_1'
        Visible = False
      end
      object gd_clientes_os_petDBTableView1Column4: TcxGridDBColumn
        Caption = 'ENDERE'#199'O'
        DataBinding.FieldName = 'endereco'
        Visible = False
      end
      object gd_clientes_os_petDBTableView1Column5: TcxGridDBColumn
        Caption = 'NUMERO'
        DataBinding.FieldName = 'numero'
        Visible = False
      end
      object gd_clientes_os_petDBTableView1Column6: TcxGridDBColumn
        Caption = 'BAIRRO'
        DataBinding.FieldName = 'bairro'
        Visible = False
      end
      object gd_clientes_os_petDBTableView1Column7: TcxGridDBColumn
        Caption = 'COMPLEMENTO'
        DataBinding.FieldName = 'complemento'
        Visible = False
      end
      object gd_clientes_os_petDBTableView1Column8: TcxGridDBColumn
        Caption = 'MUNICIPIO'
        DataBinding.FieldName = 'municipio'
        Visible = False
      end
      object gd_clientes_os_petDBTableView1Column9: TcxGridDBColumn
        Caption = 'ESTADO'
        DataBinding.FieldName = 'estado'
        Visible = False
      end
      object gd_clientes_os_petDBTableView1Column10: TcxGridDBColumn
        Caption = 'CEP'
        DataBinding.FieldName = 'cep'
        Visible = False
      end
    end
    object gd_clientes_os_petLevel1: TcxGridLevel
      GridView = gd_clientes_os_petDBTableView1
    end
  end
  object edt_cliente_atendimentos: TEdit
    Left = 2
    Top = 36
    Width = 169
    Height = 21
    TabOrder = 1
    OnKeyPress = edt_cliente_atendimentosKeyPress
  end
  object rdg_cliente_atendimentos: TRadioGroup
    Left = 173
    Top = 0
    Width = 185
    Height = 58
    Caption = 'Filtrar por :'
    Columns = 2
    ItemIndex = 2
    Items.Strings = (
      'C'#243'digo'
      'Raz'#227'o social'
      'Nome Fantasia')
    TabOrder = 2
  end
  object sql_cliente_os_pet: TFDQuery
    Connection = Module.connection
    SQL.Strings = (
      
        'select codigo, razao_social, fantasia, cpf, cnpj, celular_1, end' +
        'ereco, numero, bairro, complemento, municipio, estado, cep'
      'from cliente')
    Left = 32
    Top = 200
    object sql_cliente_os_petcodigo: TFDAutoIncField
      FieldName = 'codigo'
      Origin = 'CODIGO'
      ProviderFlags = [pfInWhere, pfInKey]
      ReadOnly = True
    end
    object sql_cliente_os_petrazao_social: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'razao_social'
      Origin = 'RAZAO_SOCIAL'
      Size = 200
    end
    object sql_cliente_os_petfantasia: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'fantasia'
      Origin = 'FANTASIA'
      Size = 200
    end
    object sql_cliente_os_petcpf: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'cpf'
      Origin = 'CPF'
    end
    object sql_cliente_os_petcnpj: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'cnpj'
      Origin = 'CNPJ'
      Size = 50
    end
    object sql_cliente_os_petcelular_1: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'celular_1'
      Origin = 'CELULAR_1'
      Size = 50
    end
    object sql_cliente_os_petendereco: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'endereco'
      Origin = 'ENDERECO'
      Size = 200
    end
    object sql_cliente_os_petnumero: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'numero'
      Origin = 'NUMERO'
      Size = 50
    end
    object sql_cliente_os_petbairro: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'bairro'
      Origin = 'BAIRRO'
      Size = 100
    end
    object sql_cliente_os_petcomplemento: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'complemento'
      Origin = 'COMPLEMENTO'
      Size = 200
    end
    object sql_cliente_os_petmunicipio: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'municipio'
      Origin = 'MUNICIPIO'
      Size = 100
    end
    object sql_cliente_os_petestado: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'estado'
      Origin = 'ESTADO'
      Size = 100
    end
    object sql_cliente_os_petcep: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'cep'
      Origin = 'CEP'
      Size = 100
    end
  end
  object ds_cliente_os_pet: TDataSource
    DataSet = sql_cliente_os_pet
    Left = 168
    Top = 200
  end
  object tfd_cliente_os_pet: TFDTable
    IndexFieldNames = 'CODIGO'
    Connection = Module.connection
    UpdateOptions.UpdateTableName = 'smc_automacao.cliente'
    TableName = 'smc_automacao.cliente'
    Left = 288
    Top = 200
    object tfd_cliente_os_petCODIGO: TFDAutoIncField
      FieldName = 'CODIGO'
      Origin = 'CODIGO'
      ProviderFlags = [pfInWhere, pfInKey]
      ReadOnly = True
    end
    object tfd_cliente_os_petCODIGO_CONT: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'CODIGO_CONT'
      Origin = 'CODIGO_CONT'
      Size = 11
    end
    object tfd_cliente_os_petDATA_CADASTRO: TDateField
      AutoGenerateValue = arDefault
      FieldName = 'DATA_CADASTRO'
      Origin = 'DATA_CADASTRO'
    end
    object tfd_cliente_os_petSITUACAO_FINANCEIRA: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'SITUACAO_FINANCEIRA'
      Origin = 'SITUACAO_FINANCEIRA'
      FixedChar = True
      Size = 17
    end
    object tfd_cliente_os_petCONSUMIDOR_FINAL: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'CONSUMIDOR_FINAL'
      Origin = 'CONSUMIDOR_FINAL'
      FixedChar = True
      Size = 3
    end
    object tfd_cliente_os_petPESSOA_TIPO: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'PESSOA_TIPO'
      Origin = 'PESSOA_TIPO'
      FixedChar = True
      Size = 8
    end
    object tfd_cliente_os_petCLIENTE_TIPO: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'CLIENTE_TIPO'
      Origin = 'CLIENTE_TIPO'
      Size = 50
    end
    object tfd_cliente_os_petCONSUMIDOR_TIPO: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'CONSUMIDOR_TIPO'
      Origin = 'CONSUMIDOR_TIPO'
      FixedChar = True
      Size = 16
    end
    object tfd_cliente_os_petRAZAO_SOCIAL: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'RAZAO_SOCIAL'
      Origin = 'RAZAO_SOCIAL'
      Size = 200
    end
    object tfd_cliente_os_petFANTASIA: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'FANTASIA'
      Origin = 'FANTASIA'
      Size = 200
    end
    object tfd_cliente_os_petCPF: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'CPF'
      Origin = 'CPF'
    end
    object tfd_cliente_os_petCNPJ: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'CNPJ'
      Origin = 'CNPJ'
      Size = 50
    end
    object tfd_cliente_os_petNATURALIDADE: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'NATURALIDADE'
      Origin = 'NATURALIDADE'
      Size = 50
    end
    object tfd_cliente_os_petNACIONALIDADE: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'NACIONALIDADE'
      Origin = 'NACIONALIDADE'
      Size = 50
    end
    object tfd_cliente_os_petRG: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'RG'
      Origin = 'RG'
      Size = 50
    end
    object tfd_cliente_os_petORGAO_EMISSOR: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'ORGAO_EMISSOR'
      Origin = 'ORGAO_EMISSOR'
      Size = 50
    end
    object tfd_cliente_os_petINSCRICAO_ESTADUAL: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'INSCRICAO_ESTADUAL'
      Origin = 'INSCRICAO_ESTADUAL'
      Size = 50
    end
    object tfd_cliente_os_petINSCRICAO_MUNICIPAL: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'INSCRICAO_MUNICIPAL'
      Origin = 'INSCRICAO_MUNICIPAL'
      Size = 50
    end
    object tfd_cliente_os_petSTATUS_CADASTRAL: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'STATUS_CADASTRAL'
      Origin = 'STATUS_CADASTRAL'
      FixedChar = True
      Size = 7
    end
    object tfd_cliente_os_petDATA_NASCIMENTO: TDateField
      AutoGenerateValue = arDefault
      FieldName = 'DATA_NASCIMENTO'
      Origin = 'DATA_NASCIMENTO'
    end
    object tfd_cliente_os_petSEXO: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'SEXO'
      Origin = 'SEXO'
      FixedChar = True
      Size = 9
    end
    object tfd_cliente_os_petESTADO_CIVIL: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'ESTADO_CIVIL'
      Origin = 'ESTADO_CIVIL'
      FixedChar = True
      Size = 14
    end
    object tfd_cliente_os_petSUFRAMA: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'SUFRAMA'
      Origin = 'SUFRAMA'
      Size = 50
    end
    object tfd_cliente_os_petRAMO_ATIVIDADE: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'RAMO_ATIVIDADE'
      Origin = 'RAMO_ATIVIDADE'
      Size = 50
    end
    object tfd_cliente_os_petATIVIDADE: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'ATIVIDADE'
      Origin = 'ATIVIDADE'
      Size = 50
    end
    object tfd_cliente_os_petDATA_EMISSAO: TDateField
      AutoGenerateValue = arDefault
      FieldName = 'DATA_EMISSAO'
      Origin = 'DATA_EMISSAO'
    end
    object tfd_cliente_os_petNOME_PAI: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'NOME_PAI'
      Origin = 'NOME_PAI'
      Size = 200
    end
    object tfd_cliente_os_petNOME_MAE: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'NOME_MAE'
      Origin = 'NOME_MAE'
      Size = 200
    end
    object tfd_cliente_os_petLIMITE_CREDITO: TBCDField
      AutoGenerateValue = arDefault
      FieldName = 'LIMITE_CREDITO'
      Origin = 'LIMITE_CREDITO'
      Precision = 15
      Size = 2
    end
    object tfd_cliente_os_petENDERECO: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'ENDERECO'
      Origin = 'ENDERECO'
      Size = 200
    end
    object tfd_cliente_os_petNUMERO: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'NUMERO'
      Origin = 'NUMERO'
      Size = 50
    end
    object tfd_cliente_os_petBAIRRO: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'BAIRRO'
      Origin = 'BAIRRO'
      Size = 100
    end
    object tfd_cliente_os_petCOMPLEMENTO: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'COMPLEMENTO'
      Origin = 'COMPLEMENTO'
      Size = 200
    end
    object tfd_cliente_os_petCEP: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'CEP'
      Origin = 'CEP'
      Size = 100
    end
    object tfd_cliente_os_petMUNICIPIO: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'MUNICIPIO'
      Origin = 'MUNICIPIO'
      Size = 100
    end
    object tfd_cliente_os_petCODIGO_MUNICIPIO: TIntegerField
      AutoGenerateValue = arDefault
      FieldName = 'CODIGO_MUNICIPIO'
      Origin = 'CODIGO_MUNICIPIO'
    end
    object tfd_cliente_os_petREGIAO: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'REGIAO'
      Origin = 'REGIAO'
      Size = 100
    end
    object tfd_cliente_os_petZONA: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'ZONA'
      Origin = 'ZONA'
      Size = 100
    end
    object tfd_cliente_os_petESTADO: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'ESTADO'
      Origin = 'ESTADO'
      Size = 100
    end
    object tfd_cliente_os_petPAIS: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'PAIS'
      Origin = 'PAIS'
      Size = 100
    end
    object tfd_cliente_os_petCODIGO_PAIS: TIntegerField
      AutoGenerateValue = arDefault
      FieldName = 'CODIGO_PAIS'
      Origin = 'CODIGO_PAIS'
    end
    object tfd_cliente_os_petALIQUOTA_FECOEP: TIntegerField
      AutoGenerateValue = arDefault
      FieldName = 'ALIQUOTA_FECOEP'
      Origin = 'ALIQUOTA_FECOEP'
    end
    object tfd_cliente_os_petBANCO_1: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'BANCO_1'
      Origin = 'BANCO_1'
      Size = 50
    end
    object tfd_cliente_os_petBANCO_OP_CONTA: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'BANCO_OP_CONTA'
      Origin = 'BANCO_OP_CONTA'
      Size = 50
    end
    object tfd_cliente_os_petBANCO_OP2_CONTA: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'BANCO_OP2_CONTA'
      Origin = 'BANCO_OP2_CONTA'
      Size = 50
    end
    object tfd_cliente_os_petBANCO_CONTA_1: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'BANCO_CONTA_1'
      Origin = 'BANCO_CONTA_1'
      Size = 50
    end
    object tfd_cliente_os_petBANCO_AGENCIA_1: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'BANCO_AGENCIA_1'
      Origin = 'BANCO_AGENCIA_1'
      Size = 50
    end
    object tfd_cliente_os_petCONTATO_NOME: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'CONTATO_NOME'
      Origin = 'CONTATO_NOME'
      Size = 200
    end
    object tfd_cliente_os_petCONTATO_CELULAR: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'CONTATO_CELULAR'
      Origin = 'CONTATO_CELULAR'
      Size = 50
    end
    object tfd_cliente_os_petTELEFONE: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'TELEFONE'
      Origin = 'TELEFONE'
      Size = 50
    end
    object tfd_cliente_os_petTELEFONE_1: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'TELEFONE_1'
      Origin = 'TELEFONE_1'
      Size = 50
    end
    object tfd_cliente_os_petCELULAR: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'CELULAR'
      Origin = 'CELULAR'
      Size = 50
    end
    object tfd_cliente_os_petWHATS: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'WHATS'
      Origin = 'WHATS'
      Size = 50
    end
    object tfd_cliente_os_petCONTATO: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'CONTATO'
      Origin = 'CONTATO'
      Size = 50
    end
    object tfd_cliente_os_petCELULAR_1: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'CELULAR_1'
      Origin = 'CELULAR_1'
      Size = 50
    end
    object tfd_cliente_os_petCONTATO_1: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'CONTATO_1'
      Origin = 'CONTATO_1'
      Size = 50
    end
    object tfd_cliente_os_petEMAIL: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'EMAIL'
      Origin = 'EMAIL'
      Size = 100
    end
    object tfd_cliente_os_petEMAIL_1: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'EMAIL_1'
      Origin = 'EMAIL_1'
      Size = 100
    end
    object tfd_cliente_os_petSKYPE: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'SKYPE'
      Origin = 'SKYPE'
      Size = 100
    end
    object tfd_cliente_os_petOBSERVACAO: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'OBSERVACAO'
      Origin = 'OBSERVACAO'
      Size = 200
    end
    object tfd_cliente_os_petconvenio_inicio: TDateField
      AutoGenerateValue = arDefault
      FieldName = 'convenio_inicio'
      Origin = 'convenio_inicio'
    end
    object tfd_cliente_os_petconvenio_fim: TDateField
      AutoGenerateValue = arDefault
      FieldName = 'convenio_fim'
      Origin = 'convenio_fim'
    end
    object tfd_cliente_os_petROTA: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'ROTA'
      Origin = 'ROTA'
      Size = 100
    end
    object tfd_cliente_os_petINDICACAO_IE: TIntegerField
      AutoGenerateValue = arDefault
      FieldName = 'INDICACAO_IE'
      Origin = 'INDICACAO_IE'
    end
    object tfd_cliente_os_petTRIBUTACAO_ICMS: TIntegerField
      AutoGenerateValue = arDefault
      FieldName = 'TRIBUTACAO_ICMS'
      Origin = 'TRIBUTACAO_ICMS'
    end
    object tfd_cliente_os_petCONTRIBUINTE_ICMS: TIntegerField
      AutoGenerateValue = arDefault
      FieldName = 'CONTRIBUINTE_ICMS'
      Origin = 'CONTRIBUINTE_ICMS'
    end
  end
end
