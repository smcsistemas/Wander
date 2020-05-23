object frm_cliente_atendimentos: Tfrm_cliente_atendimentos
  Left = 0
  Top = 0
  BorderIcons = [biSystemMenu]
  Caption = 'Selecione o Cliente'
  ClientHeight = 485
  ClientWidth = 380
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
    Left = 11
    Top = 21
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
  object gd_clientes_atendimentos: TcxGrid
    Left = 9
    Top = 69
    Width = 361
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
    object gd_clientes_atendimentosDBTableView1: TcxGridDBTableView
      OnDblClick = gd_clientes_atendimentosDBTableView1DblClick
      Navigator.Buttons.CustomButtons = <>
      DataController.DataSource = ds_cliente_atendimentos
      DataController.Summary.DefaultGroupSummaryItems = <>
      DataController.Summary.FooterSummaryItems = <>
      DataController.Summary.SummaryGroups = <>
      OptionsView.GroupByBox = False
      object gd_clientes_atendimentosDBTableView1codigo: TcxGridDBColumn
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
      object gd_clientes_atendimentosDBTableView1razao_social: TcxGridDBColumn
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
      object gd_clientes_atendimentosDBTableView1fantasia: TcxGridDBColumn
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
    end
    object gd_clientes_atendimentosLevel1: TcxGridLevel
      GridView = gd_clientes_atendimentosDBTableView1
    end
  end
  object edt_cliente_atendimentos: TEdit
    Left = 11
    Top = 41
    Width = 169
    Height = 21
    TabOrder = 1
    OnKeyPress = edt_cliente_atendimentosKeyPress
  end
  object rdg_cliente_atendimentos: TRadioGroup
    Left = 182
    Top = 5
    Width = 188
    Height = 58
    Caption = '  Filtrar por '
    Columns = 2
    ItemIndex = 2
    Items.Strings = (
      'C'#243'digo'
      'Raz'#227'o social'
      'Nome Fantasia')
    TabOrder = 2
  end
  object sql_cliente_atendimentos: TFDQuery
    Connection = Module.connection
    SQL.Strings = (
      'select codigo, razao_social, fantasia'
      'from cliente')
    Left = 41
    Top = 477
    object sql_cliente_atendimentoscodigo: TFDAutoIncField
      FieldName = 'codigo'
      Origin = 'CODIGO'
      ProviderFlags = [pfInWhere, pfInKey]
      ReadOnly = True
    end
    object sql_cliente_atendimentosrazao_social: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'razao_social'
      Origin = 'RAZAO_SOCIAL'
      Size = 200
    end
    object sql_cliente_atendimentosfantasia: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'fantasia'
      Origin = 'FANTASIA'
      Size = 200
    end
  end
  object ds_cliente_atendimentos: TDataSource
    DataSet = sql_cliente_atendimentos
    Left = 169
    Top = 477
  end
  object tfd_cliente_atendimentos: TFDTable
    IndexFieldNames = 'CODIGO'
    Connection = Module.connection
    UpdateOptions.UpdateTableName = 'smc_automacao.cliente'
    TableName = 'smc_automacao.cliente'
    Left = 281
    Top = 477
    object tfd_cliente_atendimentosCODIGO: TFDAutoIncField
      FieldName = 'CODIGO'
      Origin = 'CODIGO'
      ProviderFlags = [pfInWhere, pfInKey]
      ReadOnly = True
    end
    object tfd_cliente_atendimentosCODIGO_CONT: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'CODIGO_CONT'
      Origin = 'CODIGO_CONT'
      Size = 11
    end
    object tfd_cliente_atendimentosDATA_CADASTRO: TDateField
      AutoGenerateValue = arDefault
      FieldName = 'DATA_CADASTRO'
      Origin = 'DATA_CADASTRO'
    end
    object tfd_cliente_atendimentosSITUACAO_FINANCEIRA: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'SITUACAO_FINANCEIRA'
      Origin = 'SITUACAO_FINANCEIRA'
      FixedChar = True
      Size = 17
    end
    object tfd_cliente_atendimentosCONSUMIDOR_FINAL: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'CONSUMIDOR_FINAL'
      Origin = 'CONSUMIDOR_FINAL'
      FixedChar = True
      Size = 3
    end
    object tfd_cliente_atendimentosPESSOA_TIPO: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'PESSOA_TIPO'
      Origin = 'PESSOA_TIPO'
      FixedChar = True
      Size = 8
    end
    object tfd_cliente_atendimentosCLIENTE_TIPO: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'CLIENTE_TIPO'
      Origin = 'CLIENTE_TIPO'
      Size = 50
    end
    object tfd_cliente_atendimentosCONSUMIDOR_TIPO: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'CONSUMIDOR_TIPO'
      Origin = 'CONSUMIDOR_TIPO'
      FixedChar = True
      Size = 16
    end
    object tfd_cliente_atendimentosRAZAO_SOCIAL: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'RAZAO_SOCIAL'
      Origin = 'RAZAO_SOCIAL'
      Size = 200
    end
    object tfd_cliente_atendimentosFANTASIA: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'FANTASIA'
      Origin = 'FANTASIA'
      Size = 200
    end
    object tfd_cliente_atendimentosCPF: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'CPF'
      Origin = 'CPF'
    end
    object tfd_cliente_atendimentosCNPJ: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'CNPJ'
      Origin = 'CNPJ'
      Size = 50
    end
    object tfd_cliente_atendimentosNATURALIDADE: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'NATURALIDADE'
      Origin = 'NATURALIDADE'
      Size = 50
    end
    object tfd_cliente_atendimentosNACIONALIDADE: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'NACIONALIDADE'
      Origin = 'NACIONALIDADE'
      Size = 50
    end
    object tfd_cliente_atendimentosRG: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'RG'
      Origin = 'RG'
      Size = 50
    end
    object tfd_cliente_atendimentosORGAO_EMISSOR: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'ORGAO_EMISSOR'
      Origin = 'ORGAO_EMISSOR'
      Size = 50
    end
    object tfd_cliente_atendimentosINSCRICAO_ESTADUAL: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'INSCRICAO_ESTADUAL'
      Origin = 'INSCRICAO_ESTADUAL'
      Size = 50
    end
    object tfd_cliente_atendimentosINSCRICAO_MUNICIPAL: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'INSCRICAO_MUNICIPAL'
      Origin = 'INSCRICAO_MUNICIPAL'
      Size = 50
    end
    object tfd_cliente_atendimentosSTATUS_CADASTRAL: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'STATUS_CADASTRAL'
      Origin = 'STATUS_CADASTRAL'
      FixedChar = True
      Size = 7
    end
    object tfd_cliente_atendimentosDATA_NASCIMENTO: TDateField
      AutoGenerateValue = arDefault
      FieldName = 'DATA_NASCIMENTO'
      Origin = 'DATA_NASCIMENTO'
    end
    object tfd_cliente_atendimentosSEXO: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'SEXO'
      Origin = 'SEXO'
      FixedChar = True
      Size = 9
    end
    object tfd_cliente_atendimentosESTADO_CIVIL: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'ESTADO_CIVIL'
      Origin = 'ESTADO_CIVIL'
      FixedChar = True
      Size = 14
    end
    object tfd_cliente_atendimentosSUFRAMA: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'SUFRAMA'
      Origin = 'SUFRAMA'
      Size = 50
    end
    object tfd_cliente_atendimentosRAMO_ATIVIDADE: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'RAMO_ATIVIDADE'
      Origin = 'RAMO_ATIVIDADE'
      Size = 50
    end
    object tfd_cliente_atendimentosATIVIDADE: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'ATIVIDADE'
      Origin = 'ATIVIDADE'
      Size = 50
    end
    object tfd_cliente_atendimentosALIQUOTA_FECOEP: TIntegerField
      AutoGenerateValue = arDefault
      FieldName = 'ALIQUOTA_FECOEP'
      Origin = 'ALIQUOTA_FECOEP'
    end
    object tfd_cliente_atendimentosOBSERVACAO: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'OBSERVACAO'
      Origin = 'OBSERVACAO'
      Size = 200
    end
    object tfd_cliente_atendimentosconvenio_inicio: TDateField
      AutoGenerateValue = arDefault
      FieldName = 'convenio_inicio'
      Origin = 'convenio_inicio'
    end
    object tfd_cliente_atendimentosconvenio_fim: TDateField
      AutoGenerateValue = arDefault
      FieldName = 'convenio_fim'
      Origin = 'convenio_fim'
    end
    object tfd_cliente_atendimentosROTA: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'ROTA'
      Origin = 'ROTA'
      Size = 100
    end
    object tfd_cliente_atendimentosINDICACAO_IE: TIntegerField
      AutoGenerateValue = arDefault
      FieldName = 'INDICACAO_IE'
      Origin = 'INDICACAO_IE'
    end
    object tfd_cliente_atendimentosTRIBUTACAO_ICMS: TIntegerField
      AutoGenerateValue = arDefault
      FieldName = 'TRIBUTACAO_ICMS'
      Origin = 'TRIBUTACAO_ICMS'
    end
    object tfd_cliente_atendimentosCONTRIBUINTE_ICMS: TIntegerField
      AutoGenerateValue = arDefault
      FieldName = 'CONTRIBUINTE_ICMS'
      Origin = 'CONTRIBUINTE_ICMS'
    end
    object tfd_cliente_atendimentosDATA_EMISSAO: TDateField
      AutoGenerateValue = arDefault
      FieldName = 'DATA_EMISSAO'
      Origin = 'DATA_EMISSAO'
    end
    object tfd_cliente_atendimentosNOME_PAI: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'NOME_PAI'
      Origin = 'NOME_PAI'
      Size = 200
    end
    object tfd_cliente_atendimentosNOME_MAE: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'NOME_MAE'
      Origin = 'NOME_MAE'
      Size = 200
    end
    object tfd_cliente_atendimentosLIMITE_CREDITO: TBCDField
      AutoGenerateValue = arDefault
      FieldName = 'LIMITE_CREDITO'
      Origin = 'LIMITE_CREDITO'
      Precision = 15
      Size = 2
    end
    object tfd_cliente_atendimentosENDERECO: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'ENDERECO'
      Origin = 'ENDERECO'
      Size = 200
    end
    object tfd_cliente_atendimentosNUMERO: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'NUMERO'
      Origin = 'NUMERO'
      Size = 50
    end
    object tfd_cliente_atendimentosBAIRRO: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'BAIRRO'
      Origin = 'BAIRRO'
      Size = 100
    end
    object tfd_cliente_atendimentosCOMPLEMENTO: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'COMPLEMENTO'
      Origin = 'COMPLEMENTO'
      Size = 200
    end
    object tfd_cliente_atendimentosCEP: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'CEP'
      Origin = 'CEP'
      Size = 100
    end
    object tfd_cliente_atendimentosMUNICIPIO: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'MUNICIPIO'
      Origin = 'MUNICIPIO'
      Size = 100
    end
    object tfd_cliente_atendimentosCODIGO_MUNICIPIO: TIntegerField
      AutoGenerateValue = arDefault
      FieldName = 'CODIGO_MUNICIPIO'
      Origin = 'CODIGO_MUNICIPIO'
    end
    object tfd_cliente_atendimentosREGIAO: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'REGIAO'
      Origin = 'REGIAO'
      Size = 100
    end
    object tfd_cliente_atendimentosZONA: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'ZONA'
      Origin = 'ZONA'
      Size = 100
    end
    object tfd_cliente_atendimentosESTADO: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'ESTADO'
      Origin = 'ESTADO'
      Size = 100
    end
    object tfd_cliente_atendimentosPAIS: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'PAIS'
      Origin = 'PAIS'
      Size = 100
    end
    object tfd_cliente_atendimentosCODIGO_PAIS: TIntegerField
      AutoGenerateValue = arDefault
      FieldName = 'CODIGO_PAIS'
      Origin = 'CODIGO_PAIS'
    end
    object tfd_cliente_atendimentosBANCO_1: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'BANCO_1'
      Origin = 'BANCO_1'
      Size = 50
    end
    object tfd_cliente_atendimentosBANCO_OP_CONTA: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'BANCO_OP_CONTA'
      Origin = 'BANCO_OP_CONTA'
      Size = 50
    end
    object tfd_cliente_atendimentosBANCO_OP2_CONTA: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'BANCO_OP2_CONTA'
      Origin = 'BANCO_OP2_CONTA'
      Size = 50
    end
    object tfd_cliente_atendimentosBANCO_CONTA_1: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'BANCO_CONTA_1'
      Origin = 'BANCO_CONTA_1'
      Size = 50
    end
    object tfd_cliente_atendimentosBANCO_AGENCIA_1: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'BANCO_AGENCIA_1'
      Origin = 'BANCO_AGENCIA_1'
      Size = 50
    end
    object tfd_cliente_atendimentosCONTATO_NOME: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'CONTATO_NOME'
      Origin = 'CONTATO_NOME'
      Size = 200
    end
    object tfd_cliente_atendimentosCONTATO_CELULAR: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'CONTATO_CELULAR'
      Origin = 'CONTATO_CELULAR'
      Size = 50
    end
    object tfd_cliente_atendimentosTELEFONE: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'TELEFONE'
      Origin = 'TELEFONE'
      Size = 50
    end
    object tfd_cliente_atendimentosTELEFONE_1: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'TELEFONE_1'
      Origin = 'TELEFONE_1'
      Size = 50
    end
    object tfd_cliente_atendimentosCELULAR: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'CELULAR'
      Origin = 'CELULAR'
      Size = 50
    end
    object tfd_cliente_atendimentosWHATS: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'WHATS'
      Origin = 'WHATS'
      Size = 50
    end
    object tfd_cliente_atendimentosCONTATO: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'CONTATO'
      Origin = 'CONTATO'
      Size = 50
    end
    object tfd_cliente_atendimentosCELULAR_1: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'CELULAR_1'
      Origin = 'CELULAR_1'
      Size = 50
    end
    object tfd_cliente_atendimentosCONTATO_1: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'CONTATO_1'
      Origin = 'CONTATO_1'
      Size = 50
    end
    object tfd_cliente_atendimentosEMAIL: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'EMAIL'
      Origin = 'EMAIL'
      Size = 100
    end
    object tfd_cliente_atendimentosEMAIL_1: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'EMAIL_1'
      Origin = 'EMAIL_1'
      Size = 100
    end
    object tfd_cliente_atendimentosSKYPE: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'SKYPE'
      Origin = 'SKYPE'
      Size = 100
    end
  end
end
