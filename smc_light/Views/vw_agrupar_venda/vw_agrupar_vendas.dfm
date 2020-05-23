object frm_agrupar_vendas: Tfrm_agrupar_vendas
  Left = 0
  Top = 0
  BorderIcons = [biSystemMenu]
  BorderStyle = bsSingle
  Caption = 'Agrupar Vendas'
  ClientHeight = 599
  ClientWidth = 864
  Color = clWhite
  DefaultMonitor = dmMainForm
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  Position = poMainFormCenter
  OnClose = FormClose
  OnShow = FormShow
  DesignSize = (
    864
    599)
  PixelsPerInch = 96
  TextHeight = 13
  object lblTotal: TLabel
    Left = 8
    Top = 581
    Width = 45
    Height = 14
    Anchors = []
    Caption = 'lblTotal'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clBlue
    Font.Height = -12
    Font.Name = 'Tahoma'
    Font.Style = [fsBold]
    ParentFont = False
  end
  object Label1: TLabel
    Left = 8
    Top = 3
    Width = 49
    Height = 13
    Caption = 'Consulta'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'Tahoma'
    Font.Style = [fsBold]
    ParentFont = False
  end
  object Label2: TLabel
    Left = 315
    Top = 3
    Width = 29
    Height = 13
    Caption = 'Filtro'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'Tahoma'
    Font.Style = [fsBold]
    ParentFont = False
  end
  object Label3: TLabel
    Left = 439
    Top = 3
    Width = 92
    Height = 13
    Caption = 'Tipo Pagamento'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'Tahoma'
    Font.Style = [fsBold]
    ParentFont = False
  end
  object Label4: TLabel
    Left = 618
    Top = 3
    Width = 15
    Height = 13
    Caption = 'De'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'Tahoma'
    Font.Style = [fsBold]
    ParentFont = False
  end
  object Label5: TLabel
    Left = 745
    Top = 3
    Width = 20
    Height = 13
    Caption = 'At'#233
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'Tahoma'
    Font.Style = [fsBold]
    ParentFont = False
  end
  object lblSelecionadas: TLabel
    Left = 811
    Top = 581
    Width = 45
    Height = 14
    Alignment = taRightJustify
    Anchors = []
    Caption = 'lblTotal'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clGreen
    Font.Height = -12
    Font.Name = 'Tahoma'
    Font.Style = [fsBold]
    ParentFont = False
  end
  object gd: TcxGrid
    Left = 8
    Top = 40
    Width = 848
    Height = 499
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'Tahoma'
    Font.Style = [fsBold]
    ParentFont = False
    TabOrder = 0
    LookAndFeel.NativeStyle = False
    LookAndFeel.SkinName = 'Office2013White'
    object tbvw: TcxGridTableView
      Navigator.Buttons.CustomButtons = <>
      OnCellClick = tbvwCellClick
      OnCellDblClick = tbvwCellDblClick
      OnCustomDrawCell = tbVwCustomDrawCell
      DataController.Summary.DefaultGroupSummaryItems = <>
      DataController.Summary.FooterSummaryItems = <>
      DataController.Summary.SummaryGroups = <>
      OptionsView.NoDataToDisplayInfoText = '...'
      OptionsView.GroupByBox = False
      object colCheck: TcxGridColumn
        PropertiesClassName = 'TcxCheckBoxProperties'
        Properties.OnEditValueChanged = tbvwColumn1PropertiesEditValueChanged
        MinWidth = 24
        Options.FilteringAddValueItems = False
        Options.FilteringFilteredItemsList = False
        Options.FilteringMRUItemsList = False
        Options.FilteringPopup = False
        Options.FilteringPopupMultiSelect = False
        Options.FilteringWithFindPanel = False
        Options.IgnoreTimeForFiltering = False
        Options.IncSearch = False
        Options.GroupFooters = False
        Options.Grouping = False
        Options.HorzSizing = False
        Options.Moving = False
        Width = 24
      end
      object colCod: TcxGridColumn
        Caption = 'C'#243'd.'
        PropertiesClassName = 'TcxLabelProperties'
        Properties.Alignment.Horz = taCenter
        FooterAlignmentHorz = taCenter
        GroupSummaryAlignment = taCenter
        HeaderAlignmentHorz = taCenter
        HeaderGlyphAlignmentHorz = taCenter
        MinWidth = 61
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
        Width = 61
      end
      object colData: TcxGridColumn
        Caption = 'Data'
        PropertiesClassName = 'TcxDateEditProperties'
        Properties.Alignment.Horz = taCenter
        Properties.DisplayFormat = 'dd/mm/yy'
        FooterAlignmentHorz = taCenter
        GroupSummaryAlignment = taCenter
        HeaderAlignmentHorz = taCenter
        HeaderGlyphAlignmentHorz = taCenter
        MinWidth = 75
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
        Width = 75
      end
      object colCliente: TcxGridColumn
        Caption = 'Cliente'
        PropertiesClassName = 'TcxLabelProperties'
        MinWidth = 340
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
        Width = 340
      end
      object colPagamento: TcxGridColumn
        Caption = 'Tipo Pagamento'
        PropertiesClassName = 'TcxLabelProperties'
        MinWidth = 205
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
        Width = 205
      end
      object colTotal: TcxGridColumn
        Caption = 'R$'
        PropertiesClassName = 'TcxCurrencyEditProperties'
        Properties.Alignment.Horz = taCenter
        FooterAlignmentHorz = taCenter
        GroupSummaryAlignment = taCenter
        HeaderAlignmentHorz = taCenter
        HeaderGlyphAlignmentHorz = taCenter
        MinWidth = 122
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
        Width = 122
      end
    end
    object lv: TcxGridLevel
      GridView = tbvw
    end
  end
  object cxButton1: TcxButton
    AlignWithMargins = True
    Left = 745
    Top = 545
    Width = 111
    Height = 25
    Caption = 'Emitir Notas'
    LookAndFeel.NativeStyle = False
    LookAndFeel.SkinName = 'Office2013White'
    OptionsImage.Glyph.Data = {
      36040000424D3604000000000000360000002800000010000000100000000100
      2000000000000004000000000000000000000000000000000000000000000000
      0002000000070000000B0000000C0000000C0000000C0000000C0000000D0000
      000D0000000D0000000D0000000C000000080000000200000000000000000000
      000619563DBE207151FF207050FF206F4FFF216D4EFF206C4DFF216B4CFF216A
      4BFF21694BFF21684AFF21674AFF174935C00000000800000000000000000000
      000925825FFF53D0A8FF45CB9FFF44CB9FFF44CB9EFF64D7B3FF82E1C5FF63D7
      B2FF43CA9DFF42CA9CFF48CCA0FF1E7754FF0000000C00000000000000000000
      0009278662FF5CD4AEFF48CDA1FF58D2ABFF70DBBBFF1C724FFF1C7350FF7CE0
      C1FF66D8B4FF4CCEA4FF4ECFA3FF207956FF0000000C00000000000000000000
      00082B8A66FF65D7B3FF4ACEA3FF3E9F7CFF2B8360FF176745FF1A6D4BFF348C
      6CFF69C5A7FF65D7B4FF53D1A7FF227C58FF0000000B00000000000000000000
      00072C8D6AFF6EDBBAFF4ECFA5FF227957FF43A886FF63C4A5FF207756FF2078
      55FF257D59FF61D6B1FF58D3ACFF237E5BFF0000000A00000000000000000000
      000730916DFF77DEC0FF51D1A8FF60D4B0FF4CA887FF27805CFF227A57FF1F74
      51FF2B8362FF4DCFA5FF5ED6B0FF26805EFF0000000900000000000000000000
      0006329471FF80E1C5FF54D2AAFF3F9F7DFF227A58FF247F5BFF287F5BFF48A9
      87FF77DBBEFF65D8B4FF65D8B4FF288361FF0000000900000000000000000000
      0005349875FF8BE6CCFF5ED9B4FF359471FF1F7351FF257E5AFF7AD0B6FF54AB
      8EFF409978FF67DAB9FF6DDBBBFF2A8663FF0000000800000000000000000000
      0005389D79FF98EBD6FF63DCB9FF5CD0ADFF318C6AFF227956FF288460FF2980
      5EFF42AA87FF5FDAB6FF79E1C5FF2E8B68FF0000000700000000000000000000
      000440A380FFA1EDD9FF69DFBDFF68DFBDFF68DEBCFF1E6F4DFF1D6F4DFF66DD
      BBFF65DCBBFF65DDBAFF80E4C9FF36926EFF0000000700000000000000000000
      000445A884FFA6F0DEFFA6F0DEFFA6EFDDFFA6EFDDFFA5EFDCFFA4EFDCFFA4EF
      DCFFA3EFDCFFA3EEDCFFA2EEDBFF3A9772FF0000000600000000000000000000
      000348AC86FF389976FF379976FF379875FF379774FF369673FF369673FF3595
      72FF349471FF339370FF32936FFF3D9A76FF0000000500000000000000000000
      000252B38FFFAFD3C5FFFEFEFEFFFDFCFCFFFCFAF9FFFAF8F6FFF8F5F3FFF7F2
      F0FFF6F0ECFFF4EDE9FFF2ECE7FF47A27FFF0000000400000000000000000000
      00013F876DBF55B693FF55B693FF56B592FF55B592FF55B592FF55B492FF55B4
      91FF55B491FF54B490FF54B390FF3E856BC00000000300000000000000000000
      0000000000010000000200000002000000020000000200000003000000030000
      0003000000030000000300000003000000020000000100000000}
    TabOrder = 1
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -12
    Font.Name = 'Tahoma'
    Font.Style = [fsBold]
    ParentFont = False
    OnClick = cxButton1Click
  end
  object cbFilter: TcxComboBox
    Left = 315
    Top = 16
    ParentFont = False
    Properties.DropDownListStyle = lsEditFixedList
    Properties.Items.Strings = (
      'Cliente'
      'C'#243'd. Venda'
      'Total R$')
    Properties.OnEditValueChanged = changed
    Style.Font.Charset = DEFAULT_CHARSET
    Style.Font.Color = clWindowText
    Style.Font.Height = -12
    Style.Font.Name = 'Tahoma'
    Style.Font.Style = [fsBold]
    Style.LookAndFeel.NativeStyle = False
    Style.LookAndFeel.SkinName = 'Metropolis'
    Style.IsFontAssigned = True
    StyleDisabled.LookAndFeel.NativeStyle = False
    StyleDisabled.LookAndFeel.SkinName = 'Metropolis'
    StyleFocused.LookAndFeel.NativeStyle = False
    StyleFocused.LookAndFeel.SkinName = 'Metropolis'
    StyleHot.LookAndFeel.NativeStyle = False
    StyleHot.LookAndFeel.SkinName = 'Metropolis'
    TabOrder = 2
    Text = 'Cliente'
    Width = 107
  end
  object dpFrom: TcxDateEdit
    Left = 618
    Top = 16
    EditValue = 43101d
    ParentFont = False
    Properties.Alignment.Horz = taLeftJustify
    Properties.DateButtons = []
    Properties.DisplayFormat = 'dd/mm/yyyy'
    Properties.EditFormat = 'dd/mm/yyyy'
    Properties.OnEditValueChanged = changed
    Style.Font.Charset = DEFAULT_CHARSET
    Style.Font.Color = clWindowText
    Style.Font.Height = -12
    Style.Font.Name = 'Tahoma'
    Style.Font.Style = [fsBold]
    Style.LookAndFeel.NativeStyle = False
    Style.LookAndFeel.SkinName = 'Metropolis'
    Style.IsFontAssigned = True
    StyleDisabled.LookAndFeel.NativeStyle = False
    StyleDisabled.LookAndFeel.SkinName = 'Metropolis'
    StyleFocused.LookAndFeel.NativeStyle = False
    StyleFocused.LookAndFeel.SkinName = 'Metropolis'
    StyleHot.LookAndFeel.NativeStyle = False
    StyleHot.LookAndFeel.SkinName = 'Metropolis'
    TabOrder = 3
    Width = 111
  end
  object dpTo: TcxDateEdit
    Left = 745
    Top = 16
    EditValue = 43101d
    ParentFont = False
    Properties.Alignment.Horz = taLeftJustify
    Properties.DateButtons = []
    Properties.DisplayFormat = 'dd/mm/yyyy'
    Properties.EditFormat = 'dd/mm/yyyy'
    Properties.OnEditValueChanged = changed
    Style.Font.Charset = DEFAULT_CHARSET
    Style.Font.Color = clWindowText
    Style.Font.Height = -12
    Style.Font.Name = 'Tahoma'
    Style.Font.Style = [fsBold]
    Style.LookAndFeel.NativeStyle = False
    Style.LookAndFeel.SkinName = 'Metropolis'
    Style.IsFontAssigned = True
    StyleDisabled.LookAndFeel.NativeStyle = False
    StyleDisabled.LookAndFeel.SkinName = 'Metropolis'
    StyleFocused.LookAndFeel.NativeStyle = False
    StyleFocused.LookAndFeel.SkinName = 'Metropolis'
    StyleHot.LookAndFeel.NativeStyle = False
    StyleHot.LookAndFeel.SkinName = 'Metropolis'
    TabOrder = 4
    Width = 111
  end
  object edtSearch: TcxTextEdit
    Left = 8
    Top = 16
    ParentFont = False
    Properties.CharCase = ecUpperCase
    Style.Font.Charset = DEFAULT_CHARSET
    Style.Font.Color = clWindowText
    Style.Font.Height = -12
    Style.Font.Name = 'Tahoma'
    Style.Font.Style = [fsBold]
    Style.LookAndFeel.NativeStyle = False
    Style.LookAndFeel.SkinName = 'Metropolis'
    Style.IsFontAssigned = True
    StyleDisabled.LookAndFeel.NativeStyle = False
    StyleDisabled.LookAndFeel.SkinName = 'Metropolis'
    StyleFocused.LookAndFeel.NativeStyle = False
    StyleFocused.LookAndFeel.SkinName = 'Metropolis'
    StyleHot.LookAndFeel.NativeStyle = False
    StyleHot.LookAndFeel.SkinName = 'Metropolis'
    TabOrder = 5
    OnKeyUp = edtSearchKeyUp
    Width = 289
  end
  object chkCheckUncheck: TcxCheckBox
    Left = 8
    Top = 551
    Caption = 'Marcar Todos'
    ParentFont = False
    Properties.OnEditValueChanged = chkCheckUncheckPropertiesEditValueChanged
    Style.Font.Charset = DEFAULT_CHARSET
    Style.Font.Color = clWindowText
    Style.Font.Height = -13
    Style.Font.Name = 'Tahoma'
    Style.Font.Style = [fsBold]
    Style.LookAndFeel.NativeStyle = False
    Style.LookAndFeel.SkinName = 'Office2013White'
    Style.IsFontAssigned = True
    StyleDisabled.LookAndFeel.NativeStyle = False
    StyleDisabled.LookAndFeel.SkinName = 'Office2013White'
    StyleFocused.LookAndFeel.NativeStyle = False
    StyleFocused.LookAndFeel.SkinName = 'Office2013White'
    StyleHot.LookAndFeel.NativeStyle = False
    StyleHot.LookAndFeel.SkinName = 'Office2013White'
    TabOrder = 6
  end
  object cbPagamentos: TcxCheckComboBox
    Left = 439
    Top = 16
    ParentFont = False
    Properties.Delimiter = ','
    Properties.EmptySelectionText = 'Selecione os pagamentos'
    Properties.DropDownRows = 15
    Properties.EditValueFormat = cvfIndices
    Properties.Items = <>
    Properties.OnEditValueChanged = cbPagamentosPropertiesEditValueChanged
    Style.Font.Charset = DEFAULT_CHARSET
    Style.Font.Color = clWindowText
    Style.Font.Height = -11
    Style.Font.Name = 'Tahoma'
    Style.Font.Style = [fsBold]
    Style.LookAndFeel.NativeStyle = False
    Style.LookAndFeel.SkinName = 'Metropolis'
    Style.IsFontAssigned = True
    StyleDisabled.LookAndFeel.NativeStyle = False
    StyleDisabled.LookAndFeel.SkinName = 'Metropolis'
    StyleFocused.LookAndFeel.NativeStyle = False
    StyleFocused.LookAndFeel.SkinName = 'Metropolis'
    StyleHot.LookAndFeel.NativeStyle = False
    StyleHot.LookAndFeel.SkinName = 'Metropolis'
    TabOrder = 7
    Width = 162
  end
  object ds_vendas: TDataSource
    DataSet = sql_vendas
    Left = 160
    Top = 224
  end
  object sql_vendas: TFDQuery
    Connection = Module.connection
    SQL.Strings = (
      'select '
      '    v.data,'
      '    v.codigo_venda,'
      '    v.nome_cliente,'
      '    v.total_venda'
      'from venda v'
      'join venda_pagamento vp on vp.codigo_venda = v.codigo_venda'
      
        'where v.cod_nfce = 0 and v.status = '#39'FECHADA'#39' and v.agrupou_vend' +
        'a = 0'
      'and data between :pdata_inicio and :pdata_fim'
      ''
      ''
      ''
      '')
    Left = 160
    Top = 288
    ParamData = <
      item
        Name = 'PDATA_INICIO'
        DataType = ftDate
        ParamType = ptInput
        Value = 43101d
      end
      item
        Name = 'PDATA_FIM'
        DataType = ftDate
        ParamType = ptInput
        Value = 43141d
      end>
    object sql_vendasdata: TDateField
      AutoGenerateValue = arDefault
      FieldName = 'data'
      Origin = 'DATA'
    end
    object sql_vendascodigo_venda: TFDAutoIncField
      FieldName = 'codigo_venda'
      Origin = 'CODIGO_VENDA'
      ProviderFlags = [pfInWhere, pfInKey]
      ReadOnly = True
    end
    object sql_vendasnome_cliente: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'nome_cliente'
      Origin = 'NOME_CLIENTE'
      Size = 50
    end
    object sql_vendastotal_venda: TBCDField
      AutoGenerateValue = arDefault
      FieldName = 'total_venda'
      Origin = 'TOTAL_VENDA'
      Precision = 10
    end
  end
end
