object Frm_Produto: TFrm_Produto
  Left = 0
  Top = 0
  ParentCustomHint = False
  BiDiMode = bdLeftToRight
  BorderIcons = [biSystemMenu]
  BorderStyle = bsSingle
  Caption = 'Cadastro de Produtos'
  ClientHeight = 624
  ClientWidth = 1389
  Color = clBtnFace
  UseDockManager = True
  DefaultMonitor = dmMainForm
  Font.Charset = ANSI_CHARSET
  Font.Color = clWindowText
  Font.Height = -13
  Font.Name = 'Helvetica Neue'
  Font.Style = [fsBold]
  KeyPreview = True
  OldCreateOrder = True
  ParentBiDiMode = False
  Position = poMainFormCenter
  Scaled = False
  OnClose = FormClose
  OnKeyPress = FormKeyPress
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 16
  object cxPageControl1: TcxPageControl
    Left = 0
    Top = 0
    Width = 1389
    Height = 624
    Align = alClient
    Font.Charset = ANSI_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'Tahoma'
    Font.Style = [fsBold]
    ParentFont = False
    TabOrder = 0
    Properties.ActivePage = tab_Cadastrar
    Properties.ActivateFocusedTab = False
    Properties.CustomButtons.Buttons = <>
    LookAndFeel.NativeStyle = False
    LookAndFeel.SkinName = 'Office2013White'
    ClientRectBottom = 622
    ClientRectLeft = 2
    ClientRectRight = 1387
    ClientRectTop = 28
    object cxTabSheet1: TcxTabSheet
      Caption = '  Consulta  '
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      ImageIndex = 0
      ParentFont = False
      OnShow = cxTabSheet1Show
      ExplicitLeft = 0
      ExplicitTop = 0
      ExplicitWidth = 0
      ExplicitHeight = 0
      object Label58: TLabel
        Left = 20
        Top = 555
        Width = 45
        Height = 13
        Caption = 'Positivo'
        Color = clGreen
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clGreen
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = [fsBold]
        ParentColor = False
        ParentFont = False
      end
      object Label63: TLabel
        Left = 117
        Top = 555
        Width = 41
        Height = 13
        Caption = 'M'#237'nimo'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clOlive
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object Label68: TLabel
        Left = 212
        Top = 555
        Width = 50
        Height = 13
        Caption = 'Negativo'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clMaroon
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object Label28: TLabel
        Left = 621
        Top = 12
        Width = 70
        Height = 36
        Caption = 'Tipo Item:'#13#10
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -15
        Font.Name = 'Tahoma'
        Font.Style = []
        ParentFont = False
      end
      object QtdeItens: TLabel
        Left = 1348
        Top = 539
        Width = 21
        Height = 13
        Alignment = taRightJustify
        Caption = '000'
      end
      object Label51: TLabel
        Left = 1174
        Top = 539
        Width = 150
        Height = 13
        Caption = 'Total de produtos listados:'
      end
      object Label35: TLabel
        Left = 1148
        Top = 558
        Width = 176
        Height = 13
        Caption = 'Total de produtos cadastrados:'
      end
      object lblprodcads: TLabel
        Left = 1348
        Top = 558
        Width = 21
        Height = 13
        Alignment = taRightJustify
        Caption = '000'
      end
      object Label45: TLabel
        Left = 6
        Top = 8
        Width = 70
        Height = 18
        Align = alCustom
        Caption = 'Consulta:'
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -15
        Font.Name = 'Tahoma'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object edArgumentoDePesquisa: TEdit
        Left = 82
        Top = 6
        Width = 337
        Height = 21
        CharCase = ecUpperCase
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = [fsBold]
        ParentFont = False
        TabOrder = 0
        OnKeyDown = edArgumentoDePesquisaKeyDown
        OnKeyUp = edArgumentoDePesquisaKeyUp
      end
      object chk_diff_estoque: TcxCheckBox
        Left = 19
        Top = 534
        Caption = 'Diferenciar por quantidade em estoque'
        Properties.OnChange = chk_diff_estoquePropertiesChange
        Style.LookAndFeel.NativeStyle = False
        Style.LookAndFeel.SkinName = 'Office2013White'
        StyleDisabled.LookAndFeel.NativeStyle = False
        StyleDisabled.LookAndFeel.SkinName = 'Office2013White'
        StyleFocused.LookAndFeel.NativeStyle = False
        StyleFocused.LookAndFeel.SkinName = 'Office2013White'
        StyleHot.LookAndFeel.NativeStyle = False
        StyleHot.LookAndFeel.SkinName = 'Office2013White'
        TabOrder = 1
        Transparent = True
      end
      object gdProds: TcxGrid
        Left = -1
        Top = 36
        Width = 1357
        Height = 475
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -15
        Font.Name = 'Tahoma'
        Font.Style = [fsBold]
        ParentFont = False
        PopupMenu = popmenu
        TabOrder = 2
        LookAndFeel.NativeStyle = False
        LookAndFeel.SkinName = 'Office2013White'
        object tbView: TcxGridDBTableView
          PopupMenu = popmenu
          OnKeyDown = tbViewKeyDown
          Navigator.Buttons.CustomButtons = <>
          OnCellDblClick = tbViewCellDblClick
          OnCustomDrawCell = tbViewCustomDrawCell
          DataController.DataSource = DS_Lista
          DataController.DetailKeyFieldNames = 'CODIGO'
          DataController.Summary.DefaultGroupSummaryItems = <>
          DataController.Summary.FooterSummaryItems = <>
          DataController.Summary.SummaryGroups = <>
          OptionsData.Deleting = False
          OptionsData.DeletingConfirmation = False
          OptionsData.Editing = False
          OptionsData.Inserting = False
          OptionsView.NoDataToDisplayInfoText = ' . . .'
          OptionsView.GroupByBox = False
          object tbViewCODIGO: TcxGridDBColumn
            Caption = 'C'#243'd.'
            DataBinding.FieldName = 'CODIGO'
            PropertiesClassName = 'TcxLabelProperties'
            Properties.Alignment.Horz = taCenter
            HeaderAlignmentHorz = taCenter
            HeaderGlyphAlignmentHorz = taCenter
            MinWidth = 70
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
            Width = 70
          end
          object tbViewCODIGO_BARRAS: TcxGridDBColumn
            Caption = 'C'#243'd. Barras'
            DataBinding.FieldName = 'CODIGO_BARRAS'
            PropertiesClassName = 'TcxLabelProperties'
            Properties.Alignment.Horz = taCenter
            HeaderAlignmentHorz = taCenter
            HeaderGlyphAlignmentHorz = taCenter
            MinWidth = 120
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
            Width = 120
          end
          object tbViewDESCRICAO_PRODUTO: TcxGridDBColumn
            Caption = 'Produto'
            DataBinding.FieldName = 'DESCRICAO_PRODUTO'
            PropertiesClassName = 'TcxLabelProperties'
            Properties.Alignment.Horz = taLeftJustify
            HeaderGlyphAlignmentHorz = taCenter
            MinWidth = 300
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
            Width = 300
          end
          object tbViewUNIDADE_MEDIDA: TcxGridDBColumn
            Caption = 'UN'
            DataBinding.FieldName = 'UNIDADE_MEDIDA'
            PropertiesClassName = 'TcxLabelProperties'
            Properties.Alignment.Horz = taCenter
            HeaderAlignmentHorz = taCenter
            HeaderGlyphAlignmentHorz = taCenter
            MinWidth = 50
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
            Width = 50
          end
          object tbViewSALDO: TcxGridDBColumn
            Caption = 'Estoque'
            DataBinding.FieldName = 'SALDO'
            PropertiesClassName = 'TcxLabelProperties'
            Properties.Alignment.Horz = taCenter
            HeaderAlignmentHorz = taCenter
            HeaderGlyphAlignmentHorz = taCenter
            MinWidth = 80
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
            Width = 80
          end
          object tbViewPRECO: TcxGridDBColumn
            Caption = 'Pre'#231'o'
            DataBinding.FieldName = 'PRECO_FINAL_VAREJO'
            PropertiesClassName = 'TcxCurrencyEditProperties'
            Properties.Alignment.Horz = taCenter
            Properties.Nullstring = '0'
            FooterAlignmentHorz = taCenter
            GroupSummaryAlignment = taCenter
            HeaderAlignmentHorz = taCenter
            MinWidth = 100
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
            Width = 100
          end
          object tbViewPRECO_PROMO: TcxGridDBColumn
            Caption = 'Pre'#231'o Promo'#231#227'o'
            DataBinding.FieldName = 'VALOR_PROMOCIONAL_VAREJO'
            PropertiesClassName = 'TcxCurrencyEditProperties'
            Properties.Alignment.Horz = taCenter
            Properties.Nullstring = '0'
            FooterAlignmentHorz = taCenter
            GroupSummaryAlignment = taCenter
            HeaderAlignmentHorz = taCenter
            Options.Editing = False
            Options.Filtering = False
            Options.FilteringAddValueItems = False
            Options.FilteringFilteredItemsList = False
            Options.FilteringMRUItemsList = False
            Options.FilteringPopup = False
            Options.FilteringPopupMultiSelect = False
            Options.FilteringWithFindPanel = False
            Options.Focusing = False
            Options.GroupFooters = False
            Options.Grouping = False
            Width = 150
          end
          object tbViewGRUPO: TcxGridDBColumn
            Caption = 'Grupo'
            DataBinding.FieldName = 'GRUPO'
            PropertiesClassName = 'TcxLabelProperties'
            Properties.Alignment.Horz = taCenter
            HeaderAlignmentHorz = taCenter
            HeaderGlyphAlignmentHorz = taCenter
            MinWidth = 100
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
            Width = 100
          end
          object tbViewREFERENCIA_FABRICANTE: TcxGridDBColumn
            Caption = 'Ref Fabricante'
            DataBinding.FieldName = 'REFERENCIA_FABRICANTE'
            PropertiesClassName = 'TcxLabelProperties'
            Properties.Alignment.Horz = taCenter
            HeaderAlignmentHorz = taCenter
            HeaderGlyphAlignmentHorz = taCenter
            MinWidth = 150
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
            Width = 150
          end
          object tbViewTIPO_ITEM: TcxGridDBColumn
            Caption = 'Tipo'
            DataBinding.FieldName = 'TIPO_ITEM'
            PropertiesClassName = 'TcxLabelProperties'
            Properties.Alignment.Horz = taCenter
            HeaderAlignmentHorz = taCenter
            HeaderGlyphAlignmentHorz = taCenter
            MinWidth = 80
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
            Width = 80
          end
          object tbViewMARCA: TcxGridDBColumn
            Caption = 'Marca'
            DataBinding.FieldName = 'MARCA'
            PropertiesClassName = 'TcxLabelProperties'
            Properties.Alignment.Horz = taCenter
            HeaderAlignmentHorz = taCenter
            HeaderGlyphAlignmentHorz = taCenter
            MinWidth = 90
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
            Width = 90
          end
          object tbViewALIQ_ICMS: TcxGridDBColumn
            Caption = 'ICMS %'
            DataBinding.FieldName = 'ALIQ_ICMS'
            PropertiesClassName = 'TcxCurrencyEditProperties'
            Properties.Alignment.Horz = taCenter
            Properties.DisplayFormat = ',0.00 %;-,0.00 %'
            Properties.Nullstring = '0'
            HeaderAlignmentHorz = taCenter
            HeaderGlyphAlignmentHorz = taCenter
            MinWidth = 70
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
            Width = 70
          end
          object tbViewICMS_CST: TcxGridDBColumn
            Caption = 'CST'
            DataBinding.FieldName = 'ICMS_CST'
            PropertiesClassName = 'TcxLabelProperties'
            Properties.Alignment.Horz = taCenter
            HeaderAlignmentHorz = taCenter
            HeaderGlyphAlignmentHorz = taCenter
            MinWidth = 50
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
            Width = 50
          end
          object tbViewNCM: TcxGridDBColumn
            DataBinding.FieldName = 'NCM'
            PropertiesClassName = 'TcxLabelProperties'
            Properties.Alignment.Horz = taCenter
            HeaderAlignmentHorz = taCenter
            HeaderGlyphAlignmentHorz = taCenter
            MinWidth = 120
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
            Width = 120
          end
          object tbViewCEST: TcxGridDBColumn
            DataBinding.FieldName = 'CEST'
            PropertiesClassName = 'TcxLabelProperties'
            Properties.Alignment.Horz = taCenter
            HeaderAlignmentHorz = taCenter
            HeaderGlyphAlignmentHorz = taCenter
            MinWidth = 120
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
            Width = 120
          end
          object tbViewPIS_CST: TcxGridDBColumn
            Caption = 'PIS'
            DataBinding.FieldName = 'PIS_CST'
            PropertiesClassName = 'TcxLabelProperties'
            Properties.Alignment.Horz = taCenter
            HeaderAlignmentHorz = taCenter
            HeaderGlyphAlignmentHorz = taCenter
            MinWidth = 50
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
            Width = 50
          end
          object tbViewCOFINS_CST: TcxGridDBColumn
            Caption = 'COFINS'
            DataBinding.FieldName = 'COFINS_CST'
            PropertiesClassName = 'TcxLabelProperties'
            Properties.Alignment.Horz = taCenter
            HeaderAlignmentHorz = taCenter
            HeaderGlyphAlignmentHorz = taCenter
            MinWidth = 70
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
            Width = 70
          end
          object tbViewESTOQUE_MINIMO: TcxGridDBColumn
            DataBinding.FieldName = 'ESTOQUE_MINIMO'
            Visible = False
          end
        end
        object gdProdsLevel1: TcxGridLevel
          GridView = tbView
        end
      end
      object cbTipoItemConsulta: TcxLookupComboBox
        Left = 697
        Top = 12
        ParentFont = False
        Properties.ButtonGlyph.Data = {
          36040000424D3604000000000000360000002800000010000000100000000100
          2000000000000004000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          000000000000000000000000000000000000000000001D1D1C3B1716162D0000
          0000000000000000000000000000000000000000000000000000000000000000
          00000000000000000000000000000000000000000000636362D1565554B30000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000001C1C1B37626263FF656565FB1211
          1123000000000000000000000000000000000000000000000000000000000000
          000000000000000000000000000000000000595857B83E3E3FFF464646FF4C4C
          4B9C000000000000000000000000000000000000000000000000000000000000
          00000000000000000000000000001E1D1D3B666565FF2E2E2EFF303031FF6A6A
          6AFC0E0E0E1C0000000000000000000000000000000000000000000000000000
          00000000000000000000000000005A5959B9414142FF343434C7343433D34848
          48FF4D4D4B9B0000000000000000000000000000000000000000000000000000
          000000000000000000001B1A1934616161FF2F2F2FAF010101030707070E3333
          34C3696969FF0E0E0E1C00000000000000000000000000000000000000000000
          000000000000000000005D5D5CC33B3B3B9B0000000100000000000000000404
          0408484848B850504EA500000000000000000000000000000000000000000000
          0000000000001B1B1A3636363676000000000000000000000000000000000000
          0000000000003C3C3C831C1B1A37000000000000000000000000000000000000
          00000000000010100F2100000000000000000000000000000000000000000000
          000000000000000000010E0E0E1D000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000}
        Properties.DropDownListStyle = lsFixedList
        Properties.DropDownRows = 10
        Properties.DropDownWidth = 262
        Properties.KeyFieldNames = 'CODIGO'
        Properties.ListColumns = <
          item
            FieldName = 'DESCRICAO'
          end>
        Properties.ListOptions.ShowHeader = False
        Properties.OnEditValueChanged = cbTipoItemConsultaPropertiesEditValueChanged
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
        TabOrder = 3
        Width = 272
      end
      object pnContador: TPanel
        Left = 1312
        Top = -4
        Width = 74
        Height = 41
        BevelOuter = bvNone
        Caption = '0'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlue
        Font.Height = -19
        Font.Name = 'Tahoma'
        Font.Style = [fsBold, fsUnderline]
        ParentFont = False
        TabOrder = 4
      end
    end
    object tab_Cadastrar: TcxTabSheet
      Caption = 'Cadastro'
      ImageIndex = 3
      object Panel2: TPanel
        Left = 9
        Top = 6
        Width = 753
        Height = 358
        BevelOuter = bvNone
        TabOrder = 0
        object Panel1: TPanel
          Left = -19
          Top = 0
          Width = 767
          Height = 354
          BevelOuter = bvNone
          TabOrder = 0
          object GroupBox4: TGroupBox
            Left = 19
            Top = -3
            Width = 750
            Height = 356
            Caption = '  Produto  '
            Font.Charset = ANSI_CHARSET
            Font.Color = clWindowText
            Font.Height = -15
            Font.Name = 'Tahoma'
            Font.Style = [fsBold]
            ParentFont = False
            TabOrder = 0
            object Label3: TLabel
              Left = 193
              Top = 30
              Width = 209
              Height = 18
              Caption = 'C'#243'digo Alfanum'#233'rico Alternativo:'
              Font.Charset = ANSI_CHARSET
              Font.Color = clWindowText
              Font.Height = -15
              Font.Name = 'Tahoma'
              Font.Style = []
              ParentFont = False
            end
            object Label1: TLabel
              Left = 72
              Top = 30
              Width = 48
              Height = 18
              Caption = 'C'#243'digo:'
              Font.Charset = ANSI_CHARSET
              Font.Color = clWindowText
              Font.Height = -15
              Font.Name = 'Tahoma'
              Font.Style = []
              ParentFont = False
            end
            object Label4: TLabel
              Left = 53
              Top = 64
              Width = 67
              Height = 18
              Caption = 'Descri'#231#227'o:'
              Font.Charset = ANSI_CHARSET
              Font.Color = clWindowText
              Font.Height = -15
              Font.Name = 'Tahoma'
              Font.Style = []
              ParentFont = False
            end
            object A: TLabel
              Left = 25
              Top = 94
              Width = 95
              Height = 18
              Caption = 'Inf. Adicionais:'
              Font.Charset = ANSI_CHARSET
              Font.Color = clWindowText
              Font.Height = -15
              Font.Name = 'Tahoma'
              Font.Style = []
              ParentFont = False
            end
            object Label5: TLabel
              Left = 275
              Top = 141
              Width = 104
              Height = 18
              Caption = 'Ref. Fabricante:'
              Font.Charset = ANSI_CHARSET
              Font.Color = clWindowText
              Font.Height = -15
              Font.Name = 'Tahoma'
              Font.Style = []
              ParentFont = False
            end
            object Label7: TLabel
              Left = 48
              Top = 204
              Width = 48
              Height = 18
              Caption = 'Fam'#237'lia:'
              Font.Charset = ANSI_CHARSET
              Font.Color = clWindowText
              Font.Height = -15
              Font.Name = 'Tahoma'
              Font.Style = []
              ParentFont = False
            end
            object Label37: TLabel
              Left = 23
              Top = 262
              Width = 73
              Height = 18
              Caption = 'Sub-Grupo:'
              Font.Charset = ANSI_CHARSET
              Font.Color = clWindowText
              Font.Height = -15
              Font.Name = 'Tahoma'
              Font.Style = []
              ParentFont = False
            end
            object Label15: TLabel
              Left = 543
              Top = 175
              Width = 33
              Height = 18
              Caption = 'Tipo:'
              Font.Charset = ANSI_CHARSET
              Font.Color = clWindowText
              Font.Height = -15
              Font.Name = 'Tahoma'
              Font.Style = []
              ParentFont = False
            end
            object Label6: TLabel
              Left = 275
              Top = 176
              Width = 57
              Height = 18
              Caption = 'Unidade:'
              Font.Charset = ANSI_CHARSET
              Font.Color = clWindowText
              Font.Height = -15
              Font.Name = 'Tahoma'
              Font.Style = []
              ParentFont = False
            end
            object Label8: TLabel
              Left = 51
              Top = 176
              Width = 45
              Height = 18
              Caption = 'Marca:'
              Font.Charset = ANSI_CHARSET
              Font.Color = clWindowText
              Font.Height = -15
              Font.Name = 'Tahoma'
              Font.Style = []
              ParentFont = False
            end
            object Label36: TLabel
              Left = 52
              Top = 234
              Width = 44
              Height = 18
              Caption = 'Grupo:'
              Font.Charset = ANSI_CHARSET
              Font.Color = clWindowText
              Font.Height = -15
              Font.Name = 'Tahoma'
              Font.Style = []
              ParentFont = False
            end
            object lbl2: TLabel
              Left = 470
              Top = 240
              Width = 86
              Height = 18
              Caption = 'Imprime em:'
              Font.Charset = ANSI_CHARSET
              Font.Color = clWindowText
              Font.Height = -15
              Font.Name = 'Tahoma'
              Font.Style = []
              ParentFont = False
            end
            object Label18: TLabel
              Left = 588
              Top = 139
              Width = 76
              Height = 18
              Caption = 'DI/DSI/DA:'
              Font.Charset = ANSI_CHARSET
              Font.Color = clWindowText
              Font.Height = -15
              Font.Name = 'Tahoma'
              Font.Style = []
              ParentFont = False
            end
            object Label11: TLabel
              Left = 25
              Top = 139
              Width = 95
              Height = 18
              Caption = 'C'#243'digo Barras:'
              Font.Charset = ANSI_CHARSET
              Font.Color = clWindowText
              Font.Height = -15
              Font.Name = 'Tahoma'
              Font.Style = []
              ParentFont = False
            end
            object btn_familia: TcxButton
              Left = 431
              Top = 202
              Width = 22
              Height = 22
              LookAndFeel.NativeStyle = False
              LookAndFeel.SkinName = 'Metropolis'
              OptionsImage.Glyph.Data = {
                36040000424D3604000000000000360000002800000010000000100000000100
                2000000000000004000000000000000000000000000000000000000000000000
                0000000000000000000000000000000000000000000000000000000000000000
                000000000000000000020000000E0B14308329448DFB1D2F58A5000000000000
                0000000000000000000000000000000000000000000000000000000000000000
                0000000000020000000E0D1937883C6DB2FF5BB1F9FF325196F4000000000000
                00000000000100000004000000090000000D0000000F0000000F0000000C0000
                00070000000E0F1D3C864A7CBCFF73C4FFFF467CC3FF17254485000000000000
                0002000000081C130F465A3B31BC7C5043F87F5244FF7B4E42FA57382FC11E14
                1059112142875686C2FF88D0FFFF5186C7FF142343880000000F000000010302
                02104A332C91946B5DFDC6ACA1FFE4D1C6FFEDDDD2FFE2D0C5FFC0A599FF855C
                50FF6E6B7EFF98D4F8FF5B8ECBFF152545840000000D00000002000000076046
                3DA6B39288FFE9DAD0FFDAC0A1FFCBA87AFFC49B66FFCCAA7EFFDCC2A5FFE5D2
                C6FF9A766AFF736A77FF162747850000000E00000002000000002A201D4AAE88
                7CFFEFE6DFFFCDA67CFFCDA26BFFE3C28CFFEDD5A2FFE7CD9EFFD3B182FFD0AE
                88FFE7D5CAFF885F53FF25181464000000070000000000000000755B53ACDFCE
                C9FFDDC1A8FFC99865FFE8BE83FFE9C388FFEDCA97FFEFD3A7FFF2D9B0FFD5B1
                87FFDBBEA6FFC5ACA2FF5A3D33C10000000C0000000000000000A9877CE9F8F4
                F2FFC79873FFDEAB77FFEFCDABFFF0D0B1FFEDC9A1FFECC69AFFEFCFA9FFE9C9
                A4FFC89B77FFE6D6CEFF7C5448F10000000F0000000000000000C09C90FFFDFD
                FCFFBE875FFFEDCFB9FFF5DFD2FFF2D6C1FFF1CFB4FFEDC6A4FFECC19BFFEFC8
                A6FFC08B67FFF1E6DFFF8B6154FF0000000F0000000000000000AF9186E6F9F5
                F4FFC69474FFE8CDC3FFF9E8E4FFF6DED2FFF3D4C2FFF0CBB2FFEBB78EFFE5B7
                92FFC59172FFEBDFD9FF866055EE0000000D0000000000000000876F68B0E7D9
                D4FFE2C6B7FFC89072FFFAEFF2FFF9E7E4FFF6DDD3FFF1C8B2FFEBAF88FFC98E
                6CFFDCBBAAFFD3C0B7FF6B4F46BC00000009000000000000000026201E36CCAF
                A7FAFBF8F7FFCF9F88FFC78E72FFE9CDC6FFEDC7B5FFDD9F79FFC88865FFCE9D
                84FFF5EFEBFFB39387FF2A201D52000000040000000000000000000000036454
                4F84D9C2BAFFFDFBFAFFE2C6B8FFCB977EFFC08163FFCB977DFFE0C4B4FFFAF6
                F5FFC9B0A7FF6B564EA700000009000000010000000000000000000000000202
                020762534D81CEB2A9FAEADDD8FFF9F5F4FFFFFFFFFFF9F5F4FFE9DCD7FFC8AC
                A2FC62504B900404031000000002000000000000000000000000000000000000
                000000000003241F1D3486726BADB69B91E6CCADA1FFB99C92E988736CB22822
                1F3E000000060000000100000000000000000000000000000000}
              PaintStyle = bpsGlyph
              TabOrder = 18
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clWindowText
              Font.Height = -11
              Font.Name = 'Tahoma'
              Font.Style = [fsBold]
              ParentFont = False
              OnClick = btn_familiaClick
            end
            object btn_sub: TcxButton
              Left = 431
              Top = 258
              Width = 22
              Height = 24
              LookAndFeel.NativeStyle = False
              LookAndFeel.SkinName = 'Metropolis'
              OptionsImage.Glyph.Data = {
                36040000424D3604000000000000360000002800000010000000100000000100
                2000000000000004000000000000000000000000000000000000000000000000
                0000000000000000000000000000000000000000000000000000000000000000
                000000000000000000020000000E0B14308329448DFB1D2F58A5000000000000
                0000000000000000000000000000000000000000000000000000000000000000
                0000000000020000000E0D1937883C6DB2FF5BB1F9FF325196F4000000000000
                00000000000100000004000000090000000D0000000F0000000F0000000C0000
                00070000000E0F1D3C864A7CBCFF73C4FFFF467CC3FF17254485000000000000
                0002000000081C130F465A3B31BC7C5043F87F5244FF7B4E42FA57382FC11E14
                1059112142875686C2FF88D0FFFF5186C7FF142343880000000F000000010302
                02104A332C91946B5DFDC6ACA1FFE4D1C6FFEDDDD2FFE2D0C5FFC0A599FF855C
                50FF6E6B7EFF98D4F8FF5B8ECBFF152545840000000D00000002000000076046
                3DA6B39288FFE9DAD0FFDAC0A1FFCBA87AFFC49B66FFCCAA7EFFDCC2A5FFE5D2
                C6FF9A766AFF736A77FF162747850000000E00000002000000002A201D4AAE88
                7CFFEFE6DFFFCDA67CFFCDA26BFFE3C28CFFEDD5A2FFE7CD9EFFD3B182FFD0AE
                88FFE7D5CAFF885F53FF25181464000000070000000000000000755B53ACDFCE
                C9FFDDC1A8FFC99865FFE8BE83FFE9C388FFEDCA97FFEFD3A7FFF2D9B0FFD5B1
                87FFDBBEA6FFC5ACA2FF5A3D33C10000000C0000000000000000A9877CE9F8F4
                F2FFC79873FFDEAB77FFEFCDABFFF0D0B1FFEDC9A1FFECC69AFFEFCFA9FFE9C9
                A4FFC89B77FFE6D6CEFF7C5448F10000000F0000000000000000C09C90FFFDFD
                FCFFBE875FFFEDCFB9FFF5DFD2FFF2D6C1FFF1CFB4FFEDC6A4FFECC19BFFEFC8
                A6FFC08B67FFF1E6DFFF8B6154FF0000000F0000000000000000AF9186E6F9F5
                F4FFC69474FFE8CDC3FFF9E8E4FFF6DED2FFF3D4C2FFF0CBB2FFEBB78EFFE5B7
                92FFC59172FFEBDFD9FF866055EE0000000D0000000000000000876F68B0E7D9
                D4FFE2C6B7FFC89072FFFAEFF2FFF9E7E4FFF6DDD3FFF1C8B2FFEBAF88FFC98E
                6CFFDCBBAAFFD3C0B7FF6B4F46BC00000009000000000000000026201E36CCAF
                A7FAFBF8F7FFCF9F88FFC78E72FFE9CDC6FFEDC7B5FFDD9F79FFC88865FFCE9D
                84FFF5EFEBFFB39387FF2A201D52000000040000000000000000000000036454
                4F84D9C2BAFFFDFBFAFFE2C6B8FFCB977EFFC08163FFCB977DFFE0C4B4FFFAF6
                F5FFC9B0A7FF6B564EA700000009000000010000000000000000000000000202
                020762534D81CEB2A9FAEADDD8FFF9F5F4FFFFFFFFFFF9F5F4FFE9DCD7FFC8AC
                A2FC62504B900404031000000002000000000000000000000000000000000000
                000000000003241F1D3486726BADB69B91E6CCADA1FFB99C92E988736CB22822
                1F3E000000060000000100000000000000000000000000000000}
              PaintStyle = bpsGlyph
              TabOrder = 19
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clWindowText
              Font.Height = -11
              Font.Name = 'Tahoma'
              Font.Style = [fsBold]
              ParentFont = False
              OnClick = btn_subClick
            end
            object btn_grupo: TcxButton
              Left = 431
              Top = 230
              Width = 22
              Height = 22
              LookAndFeel.NativeStyle = False
              LookAndFeel.SkinName = 'Metropolis'
              OptionsImage.Glyph.Data = {
                36040000424D3604000000000000360000002800000010000000100000000100
                2000000000000004000000000000000000000000000000000000000000000000
                0000000000000000000000000000000000000000000000000000000000000000
                000000000000000000020000000E0B14308329448DFB1D2F58A5000000000000
                0000000000000000000000000000000000000000000000000000000000000000
                0000000000020000000E0D1937883C6DB2FF5BB1F9FF325196F4000000000000
                00000000000100000004000000090000000D0000000F0000000F0000000C0000
                00070000000E0F1D3C864A7CBCFF73C4FFFF467CC3FF17254485000000000000
                0002000000081C130F465A3B31BC7C5043F87F5244FF7B4E42FA57382FC11E14
                1059112142875686C2FF88D0FFFF5186C7FF142343880000000F000000010302
                02104A332C91946B5DFDC6ACA1FFE4D1C6FFEDDDD2FFE2D0C5FFC0A599FF855C
                50FF6E6B7EFF98D4F8FF5B8ECBFF152545840000000D00000002000000076046
                3DA6B39288FFE9DAD0FFDAC0A1FFCBA87AFFC49B66FFCCAA7EFFDCC2A5FFE5D2
                C6FF9A766AFF736A77FF162747850000000E00000002000000002A201D4AAE88
                7CFFEFE6DFFFCDA67CFFCDA26BFFE3C28CFFEDD5A2FFE7CD9EFFD3B182FFD0AE
                88FFE7D5CAFF885F53FF25181464000000070000000000000000755B53ACDFCE
                C9FFDDC1A8FFC99865FFE8BE83FFE9C388FFEDCA97FFEFD3A7FFF2D9B0FFD5B1
                87FFDBBEA6FFC5ACA2FF5A3D33C10000000C0000000000000000A9877CE9F8F4
                F2FFC79873FFDEAB77FFEFCDABFFF0D0B1FFEDC9A1FFECC69AFFEFCFA9FFE9C9
                A4FFC89B77FFE6D6CEFF7C5448F10000000F0000000000000000C09C90FFFDFD
                FCFFBE875FFFEDCFB9FFF5DFD2FFF2D6C1FFF1CFB4FFEDC6A4FFECC19BFFEFC8
                A6FFC08B67FFF1E6DFFF8B6154FF0000000F0000000000000000AF9186E6F9F5
                F4FFC69474FFE8CDC3FFF9E8E4FFF6DED2FFF3D4C2FFF0CBB2FFEBB78EFFE5B7
                92FFC59172FFEBDFD9FF866055EE0000000D0000000000000000876F68B0E7D9
                D4FFE2C6B7FFC89072FFFAEFF2FFF9E7E4FFF6DDD3FFF1C8B2FFEBAF88FFC98E
                6CFFDCBBAAFFD3C0B7FF6B4F46BC00000009000000000000000026201E36CCAF
                A7FAFBF8F7FFCF9F88FFC78E72FFE9CDC6FFEDC7B5FFDD9F79FFC88865FFCE9D
                84FFF5EFEBFFB39387FF2A201D52000000040000000000000000000000036454
                4F84D9C2BAFFFDFBFAFFE2C6B8FFCB977EFFC08163FFCB977DFFE0C4B4FFFAF6
                F5FFC9B0A7FF6B564EA700000009000000010000000000000000000000000202
                020762534D81CEB2A9FAEADDD8FFF9F5F4FFFFFFFFFFF9F5F4FFE9DCD7FFC8AC
                A2FC62504B900404031000000002000000000000000000000000000000000000
                000000000003241F1D3486726BADB69B91E6CCADA1FFB99C92E988736CB22822
                1F3E000000060000000100000000000000000000000000000000}
              PaintStyle = bpsGlyph
              TabOrder = 17
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clWindowText
              Font.Height = -11
              Font.Name = 'Tahoma'
              Font.Style = [fsBold]
              ParentFont = False
              OnClick = btn_grupoClick
            end
            object btn_und: TcxButton
              Left = 431
              Top = 174
              Width = 22
              Height = 22
              LookAndFeel.NativeStyle = False
              LookAndFeel.SkinName = 'Metropolis'
              OptionsImage.Glyph.Data = {
                36040000424D3604000000000000360000002800000010000000100000000100
                2000000000000004000000000000000000000000000000000000000000000000
                0000000000000000000000000000000000000000000000000000000000000000
                000000000000000000020000000E0B14308329448DFB1D2F58A5000000000000
                0000000000000000000000000000000000000000000000000000000000000000
                0000000000020000000E0D1937883C6DB2FF5BB1F9FF325196F4000000000000
                00000000000100000004000000090000000D0000000F0000000F0000000C0000
                00070000000E0F1D3C864A7CBCFF73C4FFFF467CC3FF17254485000000000000
                0002000000081C130F465A3B31BC7C5043F87F5244FF7B4E42FA57382FC11E14
                1059112142875686C2FF88D0FFFF5186C7FF142343880000000F000000010302
                02104A332C91946B5DFDC6ACA1FFE4D1C6FFEDDDD2FFE2D0C5FFC0A599FF855C
                50FF6E6B7EFF98D4F8FF5B8ECBFF152545840000000D00000002000000076046
                3DA6B39288FFE9DAD0FFDAC0A1FFCBA87AFFC49B66FFCCAA7EFFDCC2A5FFE5D2
                C6FF9A766AFF736A77FF162747850000000E00000002000000002A201D4AAE88
                7CFFEFE6DFFFCDA67CFFCDA26BFFE3C28CFFEDD5A2FFE7CD9EFFD3B182FFD0AE
                88FFE7D5CAFF885F53FF25181464000000070000000000000000755B53ACDFCE
                C9FFDDC1A8FFC99865FFE8BE83FFE9C388FFEDCA97FFEFD3A7FFF2D9B0FFD5B1
                87FFDBBEA6FFC5ACA2FF5A3D33C10000000C0000000000000000A9877CE9F8F4
                F2FFC79873FFDEAB77FFEFCDABFFF0D0B1FFEDC9A1FFECC69AFFEFCFA9FFE9C9
                A4FFC89B77FFE6D6CEFF7C5448F10000000F0000000000000000C09C90FFFDFD
                FCFFBE875FFFEDCFB9FFF5DFD2FFF2D6C1FFF1CFB4FFEDC6A4FFECC19BFFEFC8
                A6FFC08B67FFF1E6DFFF8B6154FF0000000F0000000000000000AF9186E6F9F5
                F4FFC69474FFE8CDC3FFF9E8E4FFF6DED2FFF3D4C2FFF0CBB2FFEBB78EFFE5B7
                92FFC59172FFEBDFD9FF866055EE0000000D0000000000000000876F68B0E7D9
                D4FFE2C6B7FFC89072FFFAEFF2FFF9E7E4FFF6DDD3FFF1C8B2FFEBAF88FFC98E
                6CFFDCBBAAFFD3C0B7FF6B4F46BC00000009000000000000000026201E36CCAF
                A7FAFBF8F7FFCF9F88FFC78E72FFE9CDC6FFEDC7B5FFDD9F79FFC88865FFCE9D
                84FFF5EFEBFFB39387FF2A201D52000000040000000000000000000000036454
                4F84D9C2BAFFFDFBFAFFE2C6B8FFCB977EFFC08163FFCB977DFFE0C4B4FFFAF6
                F5FFC9B0A7FF6B564EA700000009000000010000000000000000000000000202
                020762534D81CEB2A9FAEADDD8FFF9F5F4FFFFFFFFFFF9F5F4FFE9DCD7FFC8AC
                A2FC62504B900404031000000002000000000000000000000000000000000000
                000000000003241F1D3486726BADB69B91E6CCADA1FFB99C92E988736CB22822
                1F3E000000060000000100000000000000000000000000000000}
              PaintStyle = bpsGlyph
              TabOrder = 20
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clWindowText
              Font.Height = -11
              Font.Name = 'Tahoma'
              Font.Style = [fsBold]
              ParentFont = False
              OnClick = btn_undClick
            end
            object btn_marca: TcxButton
              Left = 246
              Top = 174
              Width = 22
              Height = 22
              Caption = '-'
              LookAndFeel.NativeStyle = False
              LookAndFeel.SkinName = 'Metropolis'
              OptionsImage.Glyph.Data = {
                36040000424D3604000000000000360000002800000010000000100000000100
                2000000000000004000000000000000000000000000000000000000000000000
                0000000000000000000000000000000000000000000000000000000000000000
                000000000000000000020000000E0B14308329448DFB1D2F58A5000000000000
                0000000000000000000000000000000000000000000000000000000000000000
                0000000000020000000E0D1937883C6DB2FF5BB1F9FF325196F4000000000000
                00000000000100000004000000090000000D0000000F0000000F0000000C0000
                00070000000E0F1D3C864A7CBCFF73C4FFFF467CC3FF17254485000000000000
                0002000000081C130F465A3B31BC7C5043F87F5244FF7B4E42FA57382FC11E14
                1059112142875686C2FF88D0FFFF5186C7FF142343880000000F000000010302
                02104A332C91946B5DFDC6ACA1FFE4D1C6FFEDDDD2FFE2D0C5FFC0A599FF855C
                50FF6E6B7EFF98D4F8FF5B8ECBFF152545840000000D00000002000000076046
                3DA6B39288FFE9DAD0FFDAC0A1FFCBA87AFFC49B66FFCCAA7EFFDCC2A5FFE5D2
                C6FF9A766AFF736A77FF162747850000000E00000002000000002A201D4AAE88
                7CFFEFE6DFFFCDA67CFFCDA26BFFE3C28CFFEDD5A2FFE7CD9EFFD3B182FFD0AE
                88FFE7D5CAFF885F53FF25181464000000070000000000000000755B53ACDFCE
                C9FFDDC1A8FFC99865FFE8BE83FFE9C388FFEDCA97FFEFD3A7FFF2D9B0FFD5B1
                87FFDBBEA6FFC5ACA2FF5A3D33C10000000C0000000000000000A9877CE9F8F4
                F2FFC79873FFDEAB77FFEFCDABFFF0D0B1FFEDC9A1FFECC69AFFEFCFA9FFE9C9
                A4FFC89B77FFE6D6CEFF7C5448F10000000F0000000000000000C09C90FFFDFD
                FCFFBE875FFFEDCFB9FFF5DFD2FFF2D6C1FFF1CFB4FFEDC6A4FFECC19BFFEFC8
                A6FFC08B67FFF1E6DFFF8B6154FF0000000F0000000000000000AF9186E6F9F5
                F4FFC69474FFE8CDC3FFF9E8E4FFF6DED2FFF3D4C2FFF0CBB2FFEBB78EFFE5B7
                92FFC59172FFEBDFD9FF866055EE0000000D0000000000000000876F68B0E7D9
                D4FFE2C6B7FFC89072FFFAEFF2FFF9E7E4FFF6DDD3FFF1C8B2FFEBAF88FFC98E
                6CFFDCBBAAFFD3C0B7FF6B4F46BC00000009000000000000000026201E36CCAF
                A7FAFBF8F7FFCF9F88FFC78E72FFE9CDC6FFEDC7B5FFDD9F79FFC88865FFCE9D
                84FFF5EFEBFFB39387FF2A201D52000000040000000000000000000000036454
                4F84D9C2BAFFFDFBFAFFE2C6B8FFCB977EFFC08163FFCB977DFFE0C4B4FFFAF6
                F5FFC9B0A7FF6B564EA700000009000000010000000000000000000000000202
                020762534D81CEB2A9FAEADDD8FFF9F5F4FFFFFFFFFFF9F5F4FFE9DCD7FFC8AC
                A2FC62504B900404031000000002000000000000000000000000000000000000
                000000000003241F1D3486726BADB69B91E6CCADA1FFB99C92E988736CB22822
                1F3E000000060000000100000000000000000000000000000000}
              PaintStyle = bpsGlyph
              TabOrder = 16
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clWindowText
              Font.Height = -11
              Font.Name = 'Tahoma'
              Font.Style = [fsBold]
              ParentFont = False
              OnClick = btn_marcaClick
            end
            object edDESCRICAO_PRODUTO: TEdit
              Left = 122
              Top = 58
              Width = 621
              Height = 25
              CharCase = ecUpperCase
              Font.Charset = ANSI_CHARSET
              Font.Color = clWindowText
              Font.Height = -15
              Font.Name = 'Helvetica Neue'
              Font.Style = []
              MaxLength = 200
              ParentFont = False
              TabOrder = 3
              OnExit = edDESCRICAO_PRODUTOExit
            end
            object edREFERENCIA_FABRICANTE: TEdit
              Left = 383
              Top = 136
              Width = 199
              Height = 25
              CharCase = ecUpperCase
              Font.Charset = ANSI_CHARSET
              Font.Color = clWindowText
              Font.Height = -15
              Font.Name = 'Helvetica Neue'
              Font.Style = []
              MaxLength = 50
              ParentFont = False
              TabOrder = 6
              OnExit = edREFERENCIA_FABRICANTEExit
              OnKeyUp = edREFERENCIA_FABRICANTEKeyUp
            end
            object edFAMILIA: TEdit
              Left = 98
              Top = 201
              Width = 36
              Height = 25
              CharCase = ecUpperCase
              Font.Charset = ANSI_CHARSET
              Font.Color = clWindowText
              Font.Height = -15
              Font.Name = 'Helvetica Neue'
              Font.Style = []
              ParentFont = False
              TabOrder = 11
              OnExit = edFAMILIAExit
              OnKeyDown = edFAMILIAKeyDown
            end
            object edSUBGRUPO: TEdit
              Left = 98
              Top = 257
              Width = 36
              Height = 25
              CharCase = ecUpperCase
              Font.Charset = ANSI_CHARSET
              Font.Color = clWindowText
              Font.Height = -15
              Font.Name = 'Helvetica Neue'
              Font.Style = []
              ParentFont = False
              TabOrder = 13
              OnExit = edSUBGRUPOExit
              OnKeyDown = edSUBGRUPOKeyDown
            end
            object edUNIDADE_MEDIDA: TEdit
              Left = 338
              Top = 173
              Width = 36
              Height = 25
              CharCase = ecUpperCase
              Font.Charset = ANSI_CHARSET
              Font.Color = clWindowText
              Font.Height = -15
              Font.Name = 'Helvetica Neue'
              Font.Style = []
              ParentFont = False
              ReadOnly = True
              TabOrder = 9
              OnExit = edUNIDADE_MEDIDAExit
              OnKeyDown = edUNIDADE_MEDIDAKeyDown
            end
            object edGRUPO: TEdit
              Left = 98
              Top = 229
              Width = 36
              Height = 25
              CharCase = ecUpperCase
              Font.Charset = ANSI_CHARSET
              Font.Color = clWindowText
              Font.Height = -15
              Font.Name = 'Helvetica Neue'
              Font.Style = []
              ParentFont = False
              TabOrder = 12
              OnExit = edGRUPOExit
              OnKeyDown = edGRUPOKeyDown
            end
            object edMARCA: TEdit
              Left = 98
              Top = 173
              Width = 36
              Height = 25
              CharCase = ecUpperCase
              Font.Charset = ANSI_CHARSET
              Font.Color = clWindowText
              Font.Height = -15
              Font.Name = 'Helvetica Neue'
              Font.Style = []
              ParentFont = False
              TabOrder = 8
              OnExit = edMARCAExit
              OnKeyDown = edMARCAKeyDown
            end
            object mmINFO_ADICIONAIS: TMemo
              Left = 123
              Top = 88
              Width = 621
              Height = 39
              Font.Charset = ANSI_CHARSET
              Font.Color = clWindowText
              Font.Height = -15
              Font.Name = 'Tahoma'
              Font.Style = [fsBold]
              MaxLength = 200
              ParentFont = False
              TabOrder = 4
            end
            object edCODIGO_ALFANUMERICO: TEdit
              Left = 409
              Top = 27
              Width = 271
              Height = 25
              CharCase = ecUpperCase
              Font.Charset = ANSI_CHARSET
              Font.Color = clWindowText
              Font.Height = -15
              Font.Name = 'Helvetica Neue'
              Font.Style = []
              MaxLength = 20
              ParentFont = False
              TabOrder = 1
              OnExit = edCODIGO_ALFANUMERICOExit
            end
            object edCODIGO: TEdit
              Left = 122
              Top = 26
              Width = 61
              Height = 26
              CharCase = ecUpperCase
              Font.Charset = ANSI_CHARSET
              Font.Color = clWindowText
              Font.Height = -15
              Font.Name = 'Tahoma'
              Font.Style = [fsBold]
              ParentFont = False
              ReadOnly = True
              TabOrder = 0
            end
            object cb_ponto_impressao: TcxDBLookupComboBox
              Left = 559
              Top = 236
              DataBinding.DataField = 'ponto_impressao_id'
              ParentFont = False
              Properties.ButtonGlyph.Data = {
                36040000424D3604000000000000360000002800000010000000100000000100
                2000000000000004000000000000000000000000000000000000000000000000
                0000000000000000000000000000000000000000000000000000000000000000
                0000000000000000000000000000000000000000000000000000000000000000
                0000000000000000000000000000000000000000000000000000000000000000
                0000000000000000000000000000000000000000000000000000000000000000
                0000000000000000000000000000000000000000000000000000000000000000
                0000000000000000000000000000000000000000000000000000000000000000
                000000000000000000000000000000000000000000001D1D1C3B1716162D0000
                0000000000000000000000000000000000000000000000000000000000000000
                00000000000000000000000000000000000000000000636362D1565554B30000
                0000000000000000000000000000000000000000000000000000000000000000
                0000000000000000000000000000000000001C1C1B37626263FF656565FB1211
                1123000000000000000000000000000000000000000000000000000000000000
                000000000000000000000000000000000000595857B83E3E3FFF464646FF4C4C
                4B9C000000000000000000000000000000000000000000000000000000000000
                00000000000000000000000000001E1D1D3B666565FF2E2E2EFF303031FF6A6A
                6AFC0E0E0E1C0000000000000000000000000000000000000000000000000000
                00000000000000000000000000005A5959B9414142FF343434C7343433D34848
                48FF4D4D4B9B0000000000000000000000000000000000000000000000000000
                000000000000000000001B1A1934616161FF2F2F2FAF010101030707070E3333
                34C3696969FF0E0E0E1C00000000000000000000000000000000000000000000
                000000000000000000005D5D5CC33B3B3B9B0000000100000000000000000404
                0408484848B850504EA500000000000000000000000000000000000000000000
                0000000000001B1B1A3636363676000000000000000000000000000000000000
                0000000000003C3C3C831C1B1A37000000000000000000000000000000000000
                00000000000010100F2100000000000000000000000000000000000000000000
                000000000000000000010E0E0E1D000000000000000000000000000000000000
                0000000000000000000000000000000000000000000000000000000000000000
                0000000000000000000000000000000000000000000000000000000000000000
                0000000000000000000000000000000000000000000000000000000000000000
                0000000000000000000000000000000000000000000000000000000000000000
                0000000000000000000000000000000000000000000000000000000000000000
                0000000000000000000000000000000000000000000000000000}
              Properties.DropDownListStyle = lsFixedList
              Properties.DropDownRows = 10
              Properties.DropDownWidth = 420
              Properties.KeyFieldNames = 'id'
              Properties.ListColumns = <
                item
                  FieldName = 'nome'
                end>
              Properties.ListOptions.ShowHeader = False
              Properties.ListSource = ds_ponto_impressao
              Style.Font.Charset = ANSI_CHARSET
              Style.Font.Color = clWindowText
              Style.Font.Height = -15
              Style.Font.Name = 'Tahoma'
              Style.Font.Style = []
              Style.LookAndFeel.NativeStyle = False
              Style.LookAndFeel.SkinName = 'Metropolis'
              Style.IsFontAssigned = True
              StyleDisabled.LookAndFeel.NativeStyle = False
              StyleDisabled.LookAndFeel.SkinName = 'Metropolis'
              StyleFocused.LookAndFeel.NativeStyle = False
              StyleFocused.LookAndFeel.SkinName = 'Metropolis'
              StyleHot.LookAndFeel.NativeStyle = False
              StyleHot.LookAndFeel.SkinName = 'Metropolis'
              TabOrder = 14
              Width = 188
            end
            object edNFe_nDI: TEdit
              Left = 669
              Top = 135
              Width = 74
              Height = 26
              CharCase = ecUpperCase
              Font.Charset = ANSI_CHARSET
              Font.Color = clWindowText
              Font.Height = -15
              Font.Name = 'Tahoma'
              Font.Style = []
              ParentFont = False
              ReadOnly = True
              TabOrder = 7
            end
            object cxGroupBox1: TcxGroupBox
              Left = 22
              Top = 288
              Caption = '  Pre'#231'os'
              TabOrder = 15
              Height = 62
              Width = 720
              object Label9: TLabel
                Left = 32
                Top = 28
                Width = 54
                Height = 18
                Caption = 'Varejo:'
                Font.Charset = ANSI_CHARSET
                Font.Color = clWindowText
                Font.Height = -15
                Font.Name = 'Tahoma'
                Font.Style = [fsBold]
                ParentFont = False
              end
              object Label10: TLabel
                Left = 248
                Top = 28
                Width = 101
                Height = 18
                Caption = 'Disttribuidor:'
                Font.Charset = ANSI_CHARSET
                Font.Color = clWindowText
                Font.Height = -15
                Font.Name = 'Tahoma'
                Font.Style = [fsBold]
                ParentFont = False
              end
              object Label13: TLabel
                Left = 512
                Top = 28
                Width = 65
                Height = 18
                Caption = 'Atacado:'
                Font.Charset = ANSI_CHARSET
                Font.Color = clWindowText
                Font.Height = -15
                Font.Name = 'Tahoma'
                Font.Style = [fsBold]
                ParentFont = False
              end
              object edPRECO_FINAL_VAREJO: TEdit
                Left = 90
                Top = 24
                Width = 122
                Height = 26
                CharCase = ecUpperCase
                Color = 8454143
                Font.Charset = ANSI_CHARSET
                Font.Color = clRed
                Font.Height = -15
                Font.Name = 'Helvetica Neue'
                Font.Style = [fsBold]
                ParentFont = False
                TabOrder = 0
                OnKeyUp = edREFERENCIA_FABRICANTEKeyUp
              end
              object edPRECO_FINAL_DISTRIBUIDOR: TEdit
                Left = 356
                Top = 24
                Width = 122
                Height = 26
                CharCase = ecUpperCase
                Color = 8454143
                Font.Charset = ANSI_CHARSET
                Font.Color = clRed
                Font.Height = -15
                Font.Name = 'Helvetica Neue'
                Font.Style = [fsBold]
                ParentFont = False
                TabOrder = 1
                OnKeyUp = edREFERENCIA_FABRICANTEKeyUp
              end
              object edPRECO_FINAL_ATACADO: TEdit
                Left = 584
                Top = 24
                Width = 122
                Height = 26
                CharCase = ecUpperCase
                Color = 8454143
                Font.Charset = ANSI_CHARSET
                Font.Color = clRed
                Font.Height = -15
                Font.Name = 'Helvetica Neue'
                Font.Style = [fsBold]
                ParentFont = False
                TabOrder = 2
                OnKeyUp = edREFERENCIA_FABRICANTEKeyUp
              end
            end
            object edGRUPO_NOME: TEdit
              Left = 135
              Top = 229
              Width = 292
              Height = 25
              TabStop = False
              CharCase = ecUpperCase
              Color = clSilver
              Font.Charset = ANSI_CHARSET
              Font.Color = clWindowText
              Font.Height = -15
              Font.Name = 'Helvetica Neue'
              Font.Style = []
              ParentFont = False
              ReadOnly = True
              TabOrder = 21
              OnKeyDown = edGRUPOKeyDown
            end
            object edSUBGRUPO_NOME: TEdit
              Left = 135
              Top = 257
              Width = 292
              Height = 25
              TabStop = False
              CharCase = ecUpperCase
              Color = clSilver
              Font.Charset = ANSI_CHARSET
              Font.Color = clWindowText
              Font.Height = -15
              Font.Name = 'Helvetica Neue'
              Font.Style = []
              ParentFont = False
              ReadOnly = True
              TabOrder = 22
              OnKeyDown = edGRUPOKeyDown
            end
            object edMARCA_NOME: TEdit
              Left = 135
              Top = 173
              Width = 108
              Height = 25
              TabStop = False
              CharCase = ecUpperCase
              Color = clSilver
              Font.Charset = ANSI_CHARSET
              Font.Color = clWindowText
              Font.Height = -15
              Font.Name = 'Helvetica Neue'
              Font.Style = []
              ParentFont = False
              ReadOnly = True
              TabOrder = 23
              OnKeyDown = edGRUPOKeyDown
            end
            object edUNIDADE_MEDIDA_NOME: TEdit
              Left = 374
              Top = 173
              Width = 53
              Height = 25
              TabStop = False
              CharCase = ecUpperCase
              Color = clSilver
              Font.Charset = ANSI_CHARSET
              Font.Color = clWindowText
              Font.Height = -15
              Font.Name = 'Helvetica Neue'
              Font.Style = []
              ParentFont = False
              ReadOnly = True
              TabOrder = 24
              OnKeyDown = edGRUPOKeyDown
            end
            object edFAMILIA_NOME: TEdit
              Left = 135
              Top = 201
              Width = 292
              Height = 25
              TabStop = False
              CharCase = ecUpperCase
              Color = clSilver
              Font.Charset = ANSI_CHARSET
              Font.Color = clWindowText
              Font.Height = -15
              Font.Name = 'Helvetica Neue'
              Font.Style = []
              ParentFont = False
              ReadOnly = True
              TabOrder = 25
              OnKeyDown = edGRUPOKeyDown
            end
            object edCODIGO_BARRAS: TEdit
              Left = 122
              Top = 136
              Width = 150
              Height = 25
              CharCase = ecUpperCase
              Font.Charset = ANSI_CHARSET
              Font.Color = clWindowText
              Font.Height = -15
              Font.Name = 'Helvetica Neue'
              Font.Style = []
              ParentFont = False
              TabOrder = 5
              OnKeyPress = edCODIGO_ALFANUMERICOKeyPress
              OnKeyUp = edCODIGO_ALFANUMERICOKeyUp
            end
            object cbSTATUS_CADASTRAL: TcxCheckBox
              Left = 686
              Top = 25
              Caption = 'Ativo '
              ParentBackground = False
              ParentColor = False
              ParentFont = False
              Style.Color = clBtnHighlight
              Style.Font.Charset = ANSI_CHARSET
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
              TabOrder = 2
            end
            object edTIPO_ITEM: TEdit
              Left = 582
              Top = 172
              Width = 36
              Height = 25
              CharCase = ecUpperCase
              Font.Charset = ANSI_CHARSET
              Font.Color = clWindowText
              Font.Height = -15
              Font.Name = 'Helvetica Neue'
              Font.Style = []
              ParentFont = False
              TabOrder = 10
              OnExit = edTIPO_ITEMExit
              OnKeyDown = edTIPO_ITEMKeyDown
            end
            object edTIPO_ITEM_NOME: TEdit
              Left = 619
              Top = 172
              Width = 108
              Height = 25
              TabStop = False
              CharCase = ecUpperCase
              Color = clSilver
              Font.Charset = ANSI_CHARSET
              Font.Color = clWindowText
              Font.Height = -15
              Font.Name = 'Helvetica Neue'
              Font.Style = []
              ParentFont = False
              ReadOnly = True
              TabOrder = 26
              OnKeyDown = edGRUPOKeyDown
            end
            object btn_Tipo: TcxButton
              Left = 730
              Top = 175
              Width = 22
              Height = 22
              LookAndFeel.NativeStyle = False
              LookAndFeel.SkinName = 'Metropolis'
              OptionsImage.Glyph.Data = {
                36040000424D3604000000000000360000002800000010000000100000000100
                2000000000000004000000000000000000000000000000000000000000000000
                0000000000000000000000000000000000000000000000000000000000000000
                000000000000000000020000000E0B14308329448DFB1D2F58A5000000000000
                0000000000000000000000000000000000000000000000000000000000000000
                0000000000020000000E0D1937883C6DB2FF5BB1F9FF325196F4000000000000
                00000000000100000004000000090000000D0000000F0000000F0000000C0000
                00070000000E0F1D3C864A7CBCFF73C4FFFF467CC3FF17254485000000000000
                0002000000081C130F465A3B31BC7C5043F87F5244FF7B4E42FA57382FC11E14
                1059112142875686C2FF88D0FFFF5186C7FF142343880000000F000000010302
                02104A332C91946B5DFDC6ACA1FFE4D1C6FFEDDDD2FFE2D0C5FFC0A599FF855C
                50FF6E6B7EFF98D4F8FF5B8ECBFF152545840000000D00000002000000076046
                3DA6B39288FFE9DAD0FFDAC0A1FFCBA87AFFC49B66FFCCAA7EFFDCC2A5FFE5D2
                C6FF9A766AFF736A77FF162747850000000E00000002000000002A201D4AAE88
                7CFFEFE6DFFFCDA67CFFCDA26BFFE3C28CFFEDD5A2FFE7CD9EFFD3B182FFD0AE
                88FFE7D5CAFF885F53FF25181464000000070000000000000000755B53ACDFCE
                C9FFDDC1A8FFC99865FFE8BE83FFE9C388FFEDCA97FFEFD3A7FFF2D9B0FFD5B1
                87FFDBBEA6FFC5ACA2FF5A3D33C10000000C0000000000000000A9877CE9F8F4
                F2FFC79873FFDEAB77FFEFCDABFFF0D0B1FFEDC9A1FFECC69AFFEFCFA9FFE9C9
                A4FFC89B77FFE6D6CEFF7C5448F10000000F0000000000000000C09C90FFFDFD
                FCFFBE875FFFEDCFB9FFF5DFD2FFF2D6C1FFF1CFB4FFEDC6A4FFECC19BFFEFC8
                A6FFC08B67FFF1E6DFFF8B6154FF0000000F0000000000000000AF9186E6F9F5
                F4FFC69474FFE8CDC3FFF9E8E4FFF6DED2FFF3D4C2FFF0CBB2FFEBB78EFFE5B7
                92FFC59172FFEBDFD9FF866055EE0000000D0000000000000000876F68B0E7D9
                D4FFE2C6B7FFC89072FFFAEFF2FFF9E7E4FFF6DDD3FFF1C8B2FFEBAF88FFC98E
                6CFFDCBBAAFFD3C0B7FF6B4F46BC00000009000000000000000026201E36CCAF
                A7FAFBF8F7FFCF9F88FFC78E72FFE9CDC6FFEDC7B5FFDD9F79FFC88865FFCE9D
                84FFF5EFEBFFB39387FF2A201D52000000040000000000000000000000036454
                4F84D9C2BAFFFDFBFAFFE2C6B8FFCB977EFFC08163FFCB977DFFE0C4B4FFFAF6
                F5FFC9B0A7FF6B564EA700000009000000010000000000000000000000000202
                020762534D81CEB2A9FAEADDD8FFF9F5F4FFFFFFFFFFF9F5F4FFE9DCD7FFC8AC
                A2FC62504B900404031000000002000000000000000000000000000000000000
                000000000003241F1D3486726BADB69B91E6CCADA1FFB99C92E988736CB22822
                1F3E000000060000000100000000000000000000000000000000}
              PaintStyle = bpsGlyph
              TabOrder = 27
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clWindowText
              Font.Height = -11
              Font.Name = 'Tahoma'
              Font.Style = [fsBold]
              ParentFont = False
              OnClick = btn_TipoClick
            end
          end
        end
      end
      object Panel3: TPanel
        Left = 14
        Top = 366
        Width = 747
        Height = 91
        BevelOuter = bvNone
        TabOrder = 1
        object cxButton3: TcxButton
          Left = 22
          Top = 1
          Width = 120
          Height = 40
          Caption = 'Pre'#231'os'
          LookAndFeel.NativeStyle = False
          LookAndFeel.SkinName = 'Metropolis'
          OptionsImage.Glyph.Data = {
            36100000424D3610000000000000360000002800000020000000200000000100
            2000000000000010000000000000000000000000000000000000000000000000
            0000000000000000000000000000000000000000000000000000000000000000
            0000000000000000000000000000000000000000000000000000000000010000
            0001000000010000000100000001000000010000000100000001000000000000
            0000000000000000000000000000000000000000000000000000000000000000
            0000000000000000000000000000000000000000000000000000000000000000
            0000000000000000000000000000000000000000000100000001000000030000
            0005000000060000000700000007000000070000000500000003000000020000
            0001000000000000000000000000000000000000000000000000000000000000
            0000000000000000000000000000000000000000000000000000000000000000
            0000000000000000000000000001000000010000000300000007020907210C36
            268212543BC3155E41D919704EFF155E40D9115239BF0A32227A0209061C0000
            0004000000020000000100000000000000000000000000000000000000000000
            0000000000000000000000000000000000000000000000000000000000000000
            000000000000000000010000000100000005010403150F3D2B8F1D7454F72A95
            70FF32AB83FF37B88EFF3ABE93FF35B78BFF30A87FFF26926AFF196E4EF50D39
            288B0103020C0000000100000001000000000000000000000000000000000000
            0000000000000000000000000000000000000000000000000000000000000000
            0000000000000000000100000005030A0722186044CF2F9470FF3BBD92FF3DC2
            97FF3CC297FF7CDEC4FF7BDDC3FF3AC094FF3ABF94FF39BF93FF36B88CFF238A
            65FF13583DCD0208051800000001000000010000000000000000000000000000
            0000000000000000000000000000000000000000000000000000000000000000
            0000000000010000000401030213195F45CA3BA380FF40C49CFF42C59DFF5CD1
            AEFF6ED8BAFF197150FF19714FFF6FD8BBFF62D2B1FF42C399FF3ABF94FF3ABF
            93FF299770FF13553BC10103020C000000010000000000000000000000000000
            0000000000000000000000000000000000000000000000000000000000000000
            0001000000030000000912433193399C7AFF46C8A1FF43C69DFF61D0B1FF52AE
            91FF348F70FF197351FF197250FF2D8767FF439E80FF6FD2B7FF47C69FFF3CC0
            96FF3BC095FF278E69FF0E392985000000030000000100000000000000000000
            0000000000000000000000000000000000000000000000000000000000000000
            000100000005040E0A2A288262FA53C9A7FF45C8A1FF44C8A0FF45A283FF1B75
            52FF146141FF105737FF0F5537FF1A724FFF1A7250FF217A58FF5EC3A6FF3EC3
            98FF3DC298FF39BA91FF1E7554F5030B081E0000000100000000000000000000
            0000000000000000000000000000000000000000000000000000000000000000
            0002000000091443328D45A887FF4FCEA9FF47CAA3FF46C9A2FF298362FF1666
            45FF2F9A76FF4CC49FFF67D1B3FF1E7856FF1A7351FF1A7351FF348F6FFF40C4
            9BFF3FC399FF3EC399FF2E9873FF0D3324730000000200000001000000000000
            0000000000000000000000000000000000000000000000000000000000000000
            00030000000C20684ECA5AC3A4FF4BCDA7FF47CBA5FF47CBA5FF135D3DFF3298
            76FF74DCC0FF70CCB3FF429D7FFF1B7553FF1B7552FF1A7452FF1C7351FF41C5
            9DFF40C59CFF40C59CFF3AB28BFF175A40C10000000400000001000000000000
            0000000000000000000000000000000000000000000100000001000000010000
            00040000000E277E5FEA65D2B4FF4BCDA7FF49CDA7FF49CCA6FF4FCFAAFF74D3
            B9FF389474FF1D7755FF1D7754FF1C7654FF1B7654FF1B7553FF1B6D4DFF43C7
            9FFF43C79EFF42C79EFF3FBE98FF1D6B4DDE0000000500000001000000000000
            0000000000000000000000000001000000010000000300000005000000060000
            000A000000112D8968FA6CDABCFF4ECFABFF4BCEA9FF4ACEA8FF64CEB3FF2D88
            68FF278262FF2A8564FF2A8565FF288462FF247B5CFF186748FF329F7BFF45C9
            A1FF44C8A1FF44C8A0FF45C69FFF227757F10000000500000001000000000000
            00000000000100000001000000030000000704080E21152B4F8221437CC3244A
            88D91327497D2C8567F16ED6BAFF55D3B0FF4CCFAAFF53D2AFFF55AD91FF2D8A
            68FF2D8968FF2D8868FF267D5EFF1E6E4FFF237657FF48AF8FFF5FD4B2FF4ECE
            A9FF46CAA3FF46CAA2FF4AC5A0FF206F51DE0000000500000001000000000000
            00010000000100000005020306151933598F3062A7F7387DC3FF3B8ED3FF3B98
            DAFF2051738D2C7D68DF69CCB0FF60D7B7FF5AD5B4FF67DABCFF429B7CFF308C
            6DFF308C6CFF308C6BFF3B9375FF5AC3A5FF8CE4CEFFA0EAD9FF8FE5CFFF63D6
            B7FF55D0ADFF47CBA4FF4CBD9AFF1D6148C10000000400000000000000000000
            00010000000504090F222B538CCF407FC3FF439FDFFF43A3E3FF48A7E4FF57AF
            E6FF40789BB22C6D65BA56B598FF78E0C6FF6FDCC0FF6BDBBEFF45A385FF308B
            6BFF338E6EFF328E6EFF88D5C0FF9BE4D2FF56AC91FF308B6CFF3F9678FF67D8
            BAFF67D8BAFF56D2AEFF43A888FF11392A730000000300000000000000010000
            0004010304132D568CCA4B91CFFF48A7E5FF48A6E4FF58B0E8FF58A6DDFF3775
            B9FF215194E4102D447F389776FC8FE0CCFF83E2CAFF6EDDC1FF6AD8BBFF2D82
            64FF2D8363FF328A6BFF359070FF33906FFF2B8261FF297F5FFF45A687FF6BDB
            BDFF6ADABCFF73D5BBFF2D8767F5040D0A1F0000000200000000000000030000
            0009223F6493508FCCFF4FADE7FF4CAAE6FF5CB3E8FF4588C7FF2258A5FF2156
            A3FF2155A3FF122F5B9622605BBD5DB598FF9BEAD7FF81E3CBFF72DEC2FF6CD8
            BCFF44A383FF2F8866FF369272FF369272FF409D7DFF47A586FF6DD9BDFF6FDC
            BFFF7EE0C7FF51AB8EFF1749378A00000004000000010000000000000005070E
            152A467FBEFA62B3E7FF50AEE7FF56B0E8FF4183C3FF235AA6FF2359A5FF1E50
            9DFF17418DFF11357BEA0B1F3D7A2D806AE26DC1A7FFA2EBDAFF8BE5CEFF77E0
            C6FF74DFC4FF74DEC4FF227656FF227655FF73DEC3FF73DEC3FF75DEC4FF88E4
            CDFF66BBA1FF246C52C40103030C000000020000000000000000000000092443
            658D5EA0D7FF5EB7EAFF54B1E8FF57A3DBFF245DA8FF245CA8FF1E529FFF2761
            A8FF4293D2FF4EABE6FF3477AAD4122F477C338972E15DB598FF9FE5D3FFA0EC
            D9FF8EE7D2FF82E3CBFF7AE1C7FF7AE1C7FF82E3CAFF8EE6D0FF95E2CEFF58B0
            93FF23644DB3040A0819000000020000000100000000000000000000000C396A
            9CCA6EB7E5FF5DB7EAFF78C5EFFF4384C2FF255FAAFF255EA9FF3D7DBEFF73C2
            EEFF72C2EFFF72C1EEFF51ADE6FF428FBDD5224A61772D736BBE3D9D7DFA6ABF
            A4FF8CD7C1FF9FE5D2FFADEFDEFF9FE4D2FF8BD6C0FF68BCA1FF389273F21335
            29620000000700000003000000010000000000000000000000000000000E4783
            BCEA79C4EEFF5EB8EBFF174590FF2762ABFF2863ABFF2D68AFFF1D4D98FF1E4E
            97FF1F4E97FF1E4D96FF66BBECFF5FB5E9FF4DA2D3EA3066879A234E5E7D2D6F
            6AB5338671DC359072EF3A9C79FF338C6BE62A755BC41A4A3981050E0B1F0000
            00050000000200000001000000000000000000000000000000000000000E4E91
            CDFA82CCF1FF65BDEDFF7FCAF1FF2F6DB3FF3872B7FF3874B7FF90D1F2FF91D2
            F3FF90D1F3FF8FD1F2FF8ED0F2FF71C1EEFF6FBFECFF5EB7E8FF4D9DCDE33977
            9CAE2D5D7A8B1D36547700000009000000070000000600000004000000020000
            00010000000000000000000000000000000000000000000000000000000D4A8B
            C1EA87CDF0FF6FC3EEFF1F509AFF346EB0FF3C78B9FF3B77B9FF346EB1FF2356
            9EFF23559EFF23559EFF22549EFF78C6EFFF7CC7F0FF76C4EFFF67BBECFF59B4
            E9FF5FB3E6FF3B6EA8DE00000007000000020000000100000001000000000000
            00000000000000000000000000000000000000000000000000000000000B3F77
            A4C985C7EDFF84CEF2FF86CFF3FF4E8BC2FF3F7CBCFF3D7CBBFF5997CCFF94D5
            F4FF86CFF2FF80CCF1FF84CEF2FF91D3F3FF8ACAECFF8ACFF2FF7CC8F0FF68BD
            EDFF65B1E4FF366394C100000004000000000000000000000000000000000000
            0000000000000000000000000000000000000000000000000000000000082B51
            6E8B75B8E4FFA3DDF6FF8ED4F4FF73B7E1FF3772B4FF4180BEFF407FBDFF5C98
            CCFF8BC6E9FF9DD9F4FF8AC5E8FF5A97CBFF3E7CBBFF6DA9D8FF85CDF2FF81CB
            F0FF62A7DBFF203B567300000003000000000000000000000000000000000000
            0000000000000000000000000000000000000000000000000000000000050911
            172857A0D6FAACDEF6FFA0DCF6FF91D5F4FF5694CAFF3772B4FF4381BFFF4381
            C0FF4381BFFF4380BEFF4380BEFF437FBEFF417EBDFF346EB0FF7DC3E9FF91D0
            F1FF508EC9F5070E131F00000002000000000000000000000000000000000000
            0000000000000000000000000000000000000000000000000000000000020000
            00082D56748F7ABBE5FFB7E6F8FFA2DEF7FF93D5F4FF61A1D1FF336EB0FF3D7A
            B9FF4280BEFF4584C1FF4280BDFF3D79B8FF316CAFFF5E9CCFFF9AD9F5FF71B0
            E0FF2A4E6D8A0000000400000001000000000000000000000000000000000000
            0000000000000000000000000000000000000000000000000000000000010000
            0004020405114381ADCD89C5EAFFBDE8F9FFABE1F7FF9BDBF7FF85C6E9FF518E
            C4FF3A74B4FF2E68ACFF3973B3FF508CC3FF84C4E8FFA6DEF7FF84BFE6FF3E75
            A1C40204050C0000000200000000000000000000000000000000000000000000
            0000000000000000000000000000000000000000000000000000000000000000
            000100000005070E121F4382ADCD78BCE5FFBAE5F8FFBDE8FAFFAFE3F9FFA5DE
            F7FF9DDDF7FF9DDCF7FFA3DEF7FFADE2F8FFAFDFF6FF77B8E3FF3A6D93B3060B
            0F19000000020000000100000000000000000000000000000000000000000000
            0000000000000000000000000000000000000000000000000000000000000000
            000000000002000000040204050F2E5A779157A3D6F785C3E9FFA6D9F2FFB9E5
            F7FFC5EDFBFFB8E4F7FFA5D7F1FF84C2E8FF569DD0F21E394D62000000070000
            0003000000010000000000000000000000000000000000000000000000000000
            0000000000000000000000000000000000000000000000000000000000000000
            0000000000000000000100000003000000060912172429506A82407DA6C44C95
            C5E655A5DCFF4C94C4E6407DA5C4294F6A81080F151F00000005000000020000
            0001000000000000000000000000000000000000000000000000000000000000
            0000000000000000000000000000000000000000000000000000000000000000
            0000000000000000000000000001000000020000000300000004000000060000
            0007000000070000000700000006000000040000000200000001000000000000
            0000000000000000000000000000000000000000000000000000000000000000
            0000000000000000000000000000000000000000000000000000}
          TabOrder = 0
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'HelveticaNeue'
          Font.Style = [fsBold]
          ParentFont = False
          OnClick = cxButton3Click
        end
        object cxButton11: TcxButton
          Left = 147
          Top = 1
          Width = 120
          Height = 40
          Caption = 'Estoque'
          LookAndFeel.NativeStyle = False
          LookAndFeel.SkinName = 'Metropolis'
          OptionsImage.Glyph.Data = {
            36100000424D3610000000000000360000002800000020000000200000000100
            2000000000000010000000000000000000000000000000000000000000000000
            0000000000000000000000000000000000000000000000000000000000000000
            0000000000000000000000000000000000000000000000000000000000000000
            0000000000000000000000000000000000000000000000000000000000000000
            0000000000000000000000000000000000000000000000000000000000000000
            0000000000000000000000000000000000000000000000000000000000000000
            0000000000000000000000000000000000000000000000000000000000000000
            0000000000000000000000000000000000000000000000000000000000000000
            0000000000000000000000000000000000000000000000000000000000000000
            0000000000000000000000000000000000000000000000000000000000000000
            0000000000000000000000000000000000000000000000000000000000000000
            0000000000000000000000000000000000030000000900000007000000020000
            0000000000000000000000000000000000000000000000000000000000000000
            0000000000000000000000000000000000000000000000000000000000000000
            0000000000000000000000000000000000000000000000000000000000000000
            00000000000000000000000000070000002006132374030A145A0000001B0000
            0005000000000000000000000000000000000000000000000000000000000000
            0000000000000000000000000000000000000000000000000000000000000000
            0000000000000000000000000000000000000000000000000000000000000000
            0000000000010000000C010305360E2B4FBF2361A0FF195191FF091C36A90000
            012C000000080000000000000000000000000000000000000000000000000000
            0000000000000000000000000000000000000000000000000000000000000000
            0000000000000000000000000000000000000000000000000000000000000000
            00030000001605101B6317487DEA2C7CB9FF53AADEFF2E92D5FF2064A5FF0F2E
            5CDB010203410000000E00000002000000000000000000000000000000000000
            00000000000000000000000000000000000000000000000000010000000A0000
            001C0000001B0000000A00000001000000000000000000000001000000070000
            00200E2B49A12567A5FD3A97D0FF3EA3DBFF62B3E1FF2F95D6FF2E92D4FF2679
            BBFF133C76F60308106500000017000000040000000000000000000000000000
            000000000000000000000000000000000000000000040000001802080E570E2C
            58D40D2A56D402050A500000001600000004000000020000000D040C14431A4D
            7DD63485BEFF48AADDFF46A9DEFF43A7DDFF71BCE5FF3197D6FF2F94D5FF2D92
            D4FF2A88CBFF174988FE06132895000000230000000700000000000000000000
            00000000000000000000000000020000000B0000002A0A203CA6194E8BFB3987
            C2FF2576B8FF143D7AF80714299700000028000000130D283E782870A9F648A4
            D5FF51B4E3FF4EB2E1FF4BAFE0FF48ACDFFF81C5E8FF3299D8FF3097D5FF2F94
            D4FF2D91D4FF2C8DD2FF1B5698FF0A2042C20000013300000009000000000000
            000000000000000000050000001A050E1963164073E32872B0FF379BD8FF53AB
            E0FF2E91D4FF2986CAFF1B5598FF0C2451D80104095A2772B1FF5ABCE5FF5ABE
            E6FF58BBE5FF54B8E4FF51B5E3FF4EB1E2FF90CDECFF349CD9FF319AD7FF3096
            D6FF2F94D5FF2E91D3FF2B8DD2FF2068AAFF0D2C5AE000000021000000000000
            00020000000D01020431113051B12566A5FD3794CFFF3DA4DEFF3DA3DDFF60B3
            E4FF3094D5FF2D8FD3FF2A8AD1FF216DB3FF11356CF92775B4FF64C7EBFF61C4
            E9FF5DC1E8FF5BBEE7FF57BBE5FF54B7E4FF9DD5EFFF349ED9FF339CD8FF3299
            D6FF3095D6FF2E93D4FF2D90D3FF2C8DD2FF133B7BFF00000030000000050000
            001A0919287020588EEB3589C2FF44ABDFFF43ABE0FF41A9E0FF40A6DFFF6DBB
            E7FF3197D7FF2E92D4FF2C8DD2FF2988D0FF2477BFFF2877B5FF6ACDEEFF66CA
            ECFF63C8EBFF61C4E9FF5EC1E8FF5ABEE7FFAADDF2FF35A1DAFF349ED9FF329B
            D8FF3198D7FF2F95D5FF2E93D4FF2D90D3FF133C7CFF00000031000000131942
            68B8317EBAFF47ABDBFF4BB5E4FF49B2E4FF48B1E3FF44AEE1FF43ACE0FF7AC3
            E9FF339BD8FF3096D6FF2E90D3FF2B8CD1FF2780C6FF297AB8FF6FD3F0FF6CD0
            EFFF6ACEEEFF66CAECFF64C7EBFF61C5EAFFB4E2F4FF43A9DEFF35A0DAFF349D
            D8FF329BD7FF3197D6FF2F95D4FF2E92D3FF143E7FFF000000300000001F2B73
            B2FF54BFE8FF53BDE7FF51BBE6FF4FB8E5FF4CB5E4FF4AB3E3FF48B1E3FF87CB
            ECFF349DDAFF3298D7FF2F94D5FF2D8FD3FF2981C7FF2A7BB9FF75D8F3FF73D6
            F1FF6FD3EFFF6CD0EFFF6ACDEDFF7FD3EFFFB3C9E2FF8BCFEDFF4FB2E2FF37A1
            DAFF339DD8FF329AD7FF3097D6FF2F94D5FF143F80FF0000002E000000202C75
            B4FF5CC4E9FF58C2E9FF56C0E8FF53BEE7FF51BBE6FF4FBAE5FF4CB6E4FF95D3
            EFFF35A1DAFF339CD9FF3197D6FF2E92D4FF2A84C8FF2B7DBAFF7ADDF4FF77DB
            F3FF75D9F2FF7CD8F2FFC1EBF9FFC8F1FCFF7FBBDEFF97D4F0FF51B7E5FF52B6
            E4FF49ADE0FF339CD9FF3299D7FF3097D6FF154081FF0000002D0000001E2D77
            B6FF60CAECFF5EC7EBFF5CC5EAFF59C3E9FF57C1E8FF54BEE7FF52BCE7FFA2DA
            F2FF37A3DCFF359FDAFF339AD8FF3095D6FF2B87C8FF2C7FBCFF7EE1F6FF7EDF
            F5FFB5ECF9FFD3F5FCFFADECFAFFA5E8FAFF7FBBDEFFA2D8F1FF51B7E5FF51B7
            E5FF51B7E5FF55B9E6FF40A6DDFF3298D7FF154282FF0000002B0000001C2F7B
            B7FF66CFEEFF63CCEDFF62CAECFF5FC8EBFF5DC6EAFF59C3E9FF57C2E8FFAFE1
            F4FF39A6DDFF37A2DBFF349DD9FF3198D7FF2D8BCBFF2C81BDFF8BD6EEFFCCED
            F8FF6FC0E4FF50B1DEFF4BAFDDFF46ACDBFF3591CAFFABDCF2FF9FD7F1FF95D3
            EFFF8ACEEDFF7FCAECFF76C6EBFF5DABDAFF1F5294FF0002072F0000001A307D
            BAFF6BD4EFFF69D2EFFF66D0EEFF65CDEDFF62CBECFF5FC9ECFF5DC7EBFFBBE7
            F6FF3AA9DFFF38A4DDFF36A0DAFF339CD9FF3092D2FF2B83C1FF2A7CBAFF6CAD
            D6FFC2E7F5FF96D3EFFF74C5EAFF74C5EAFF6FBDE5FF3491CAFF7DBBDEFF7CB9
            DEFF7AB8DEFF64A6D4FF346BA9FF0E326CE1051020680000000E00000018317F
            BCFF71D9F2FF6ED7F1FF6CD5F0FF6AD2EFFF68D1EFFF65CEEEFF63CCECFFC7EC
            F8FF3BABDFFF3AA7DDFF37A3DCFF349FDAFF3299D6FF2F92D2FF2B88CBFF287B
            BEFF2877B7FF6BAAD2FFC2E7F5FF96D3EFFF74C5EAFF42AADAFFA2E6F9FF84D1
            EEFF4689BCFF143F6FD4061322630000001A0000000A00000002000000163280
            BDFF75DDF3FF74DBF2FF71D9F2FF6FD8F2FF6CD5F1FF6BD3EFFF83D9F2FFEAF8
            FDFF86CDECFF63BCE6FF38A5DEFF37A1DBFF349CD9FF3198D7FF2F91D4FF2B8B
            D0FF2981C8FF2677BBFF2672B2FF6AA7D0FFC1E7F5FF63B7DFFF4A91C3FF1747
            78CE071524590000001400000008000000020000000000000000000000143482
            BFFF7BE0F5FF79DFF5FF76DDF3FF74DBF2FF7EDCF3FFBAEDF9FFD9F3FAFFA1D5
            EBFF78C7EBFF5CBBE6FF82CBEBFF52B0E0FF369FDBFF339BD8FF3096D6FF2D91
            D4FF2B8CD1FF2885CCFF257CC5FF184785FF1B5383CF1B507FC70818274E0000
            000D000000060000000100000000000000000000000000000000000000123585
            C0FF7FE4F7FF7CE2F6FF80E1F5FFB0EDF9FFD7F7FDFFB7E9F6FF91D1E9FF6FAC
            D0FF81CBECFF51B7E5FF51B7E5FF5FBCE7FF7BC6E9FF43A6DCFF3299D7FF2F95
            D5FF2D8FD3FF2A8AD1FF2785CDFF123775FF0000002B00000005000000030000
            0001000000000000000000000000000000000000000000000000000000103787
            C2FF83E6F8FFA4EDFAFFD1F7FDFFC5F4FDFFACEAF7FF9AD9EDFF88C6DFFF5F94
            C1FF8CD0EEFF51B7E5FF51B7E5FF51B7E5FF51B7E5FF64BFE7FF72C2E8FF3A9E
            D8FF2E92D4FF2C8DD2FF2988D0FF133977FF0000002700000000000000000000
            00000000000000000000000000000000000000000000000000000000000C3887
            C2FFB4E8F4FFB0DDECFF99CFE3FF92CBE0FF8AC2DAFF7AB2D0FF6AA1C5FF4777
            ABFF97D4F0FF51B7E5FF51B7E5FF51B7E5FF51B7E5FF51B7E5FF51B7E5FF6DC6
            EBFF64BAE6FF3294D4FF2B8BD1FF143B7AFF0000002500000000000000000000
            0000000000000000000000000000000000000000000000000000000000061C42
            5E884A8DBDF288C3DFFFA1D9EEFFA1D9EEFFA1D9EEFFA1D9EEFFA1D9EEFF7EB0
            D6FFA2D8F1FF51B7E5FF51B7E5FF51B7E5FF51B7E5FF51B7E5FF51B7E5FF51B7
            E5FF54B9E6FF71C9EDFF58B0E1FF153D7DFF0000002400000000000000000000
            0000000000000000000000000000000000000000000000000000000000010000
            0005010202101431476F3572A0DD68ADD1FF83CAE6FF86CEE9FF86CEE9FF6FB0
            D7FFABDCF2FF9FD7F1FF95D3EFFF8ACEEDFF7FCAECFF76C6EBFF6EC3E9FF66C0
            E8FF60BDE7FF5BBBE7FF58B7E3FF29649DFF0000001C00000000000000000000
            0000000000000000000000000000000000000000000000000000000000000000
            000000000001000000040000000B0B1C2847275980B95BA0C9FD7FC6E3FF80C6
            E4FF6FB0D7FF69A8D2FF7EB0D6FF487DB0FF609BC8FF68A7D0FF68ADD7FF4E94
            C8FF2E6AA9FF153E7AEE0C2346A7040B164D0000000A00000000000000000000
            0000000000000000000000000000000000000000000000000000000000000000
            00000000000000000000000000010000000300000008040A0F261B405E924E90
            BCF679BEDEFF86CEE9FFA1D9EEFF67A6C9FF67B7DBFF4590C3FF1E528CEE1131
            54AB0612205A0000001A0000000E000000060000000100000000000000000000
            0000000000000000000000000000000000000000000000000000000000000000
            0000000000000000000000000000000000000000000000000002000000060101
            0212102A406D407DA7E388C2DFFF25619DF6173F67B30A1B2D63000000160000
            000D000000060000000100000000000000000000000000000000000000000000
            0000000000000000000000000000000000000000000000000000000000000000
            0000000000000000000000000000000000000000000000000000000000000000
            0001000000050000000C0A192849010304180000000B00000005000000010000
            0000000000000000000000000000000000000000000000000000000000000000
            0000000000000000000000000000000000000000000000000000000000000000
            0000000000000000000000000000000000000000000000000000000000000000
            0000000000000000000100000002000000010000000000000000000000000000
            0000000000000000000000000000000000000000000000000000000000000000
            0000000000000000000000000000000000000000000000000000000000000000
            0000000000000000000000000000000000000000000000000000000000000000
            0000000000000000000000000000000000000000000000000000000000000000
            0000000000000000000000000000000000000000000000000000000000000000
            0000000000000000000000000000000000000000000000000000}
          TabOrder = 1
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'Helvetica Neue'
          Font.Style = [fsBold]
          ParentFont = False
          OnClick = cxButton11Click
        end
        object cxButton12: TcxButton
          Left = 272
          Top = 1
          Width = 120
          Height = 40
          Caption = 'Dados'#13'Especificos'
          LookAndFeel.NativeStyle = False
          LookAndFeel.SkinName = 'Metropolis'
          OptionsImage.Glyph.Data = {
            36100000424D3610000000000000360000002800000020000000200000000100
            2000000000000010000000000000000000000000000000000000000000000000
            0000000000000000000000000000000000000000000000000000000000000000
            0000000000000000000000000000000000000000000000000000000000000000
            0000000000000000000000000000848484FF848484FF848484FF848484FF8484
            84FF848484FF848484FF848484FF848484FF848484FF00000000000000000000
            0000000000000000000000000000000000000000000000000000000000000000
            0000000000000000000000000000000000000000000000000000000000000000
            0000000000000000000000000000848484FF0000000000000000000000000000
            000000000000000000000000000000000000848484FF0000000063ABCFDE528D
            ACB83D697F88233C494E060B0D0E0000000000000000848484FF848484FF8484
            84FF848484FF848484FF848484FF848484FF848484FF848484FF848484FF8484
            84FF848484FF848484FF848484FF848484FF0000000000000000000000000000
            000000000000000000000000000000000000848484FF0000000072C4EEFF72C4
            EEFF72C4EEFF72C4EEFF5694B3C02D4D5D640101020200000000000000000000
            0000000000000000000000000000000000000000000000000000000000000000
            0000000000000000000000000000848484FF0000000000000000000000000000
            000000000000000000000000000000000000848484FF0000000072C4EEFF72C4
            EEFF72C4EEFF72C4EEFF72C4EEFF33566870342C214E33241547000000000000
            0000000000000000000000000000000000000000000000000000000000000000
            0000000000000000000000000000848484FF0000000000000000000000000000
            000000000000000000000000000000000000848484FF0000000072C4EEFF72C4
            EEFF72C4EEFF72C4EEFF62A9CDDC0D101018AB7948ED9B6E41D745311D600000
            0000000000000000000000000000000000000000000000000000000000000000
            0000000000000000000000000000848484FF0000000000000000000000000000
            000000000000000000000000000000000000848484FF0000000072C4EEFF72C4
            EEFF72C4EEFF72C4EEFF28404C56644B308EB8824DFFB8824DFFA57545E54531
            1D60000000000000000000000000000000000000000000000000000000000000
            0000000000000000000000000000848484FF0000000000000000000000000000
            000000000000000000000000000000000000848484FF0000000072C4EEFF72C4
            EEFF72C4EEFF5A9ABCC916161324B47F4BF9B8824DFFB8824DFFB8824DFF9B6E
            41D7332415470000000000000000000000000000000000000000000000000000
            0000000000000000000000000000848484FF0000000000000000000000000000
            000000000000000000000000000000000000848484FF0000000072C4EEFF72C4
            EEFF72C4EEFF1F2B303D7C5835ACB8824DFFB8824DFFB8824DFFB8824DFFB882
            4DFF7E5935AF0E0A061400000000000000000000000000000000000000000000
            0000000000000000000000000000848484FF848484FF848484FF848484FF8484
            84FF848484FF848484FF848484FF848484FF848484FF0000000072C4EEFF72C4
            EEFF4F86A1AF2720183AB7814DFEB8824DFFB8824DFFB8824DFFB8824DFFB882
            4DFFB8824DFF4E37216C00000000000000000000000000000000000000000000
            0000000000000000000000000000000000000000000000000000000000000000
            000000000000000000000000000000000000000000000000000072C4EEFF70C1
            EAFB171A1B2890653CC7B8824DFFB8824DFFB8824DFFB8824DFFB8824DFFB882
            4DFFB8824DFF8B623AC00A07040E000000000000000000000000000000000000
            0000000000000000000000000000000000000000000000000000000000000000
            000000000000000000000000000000000000000000000000000072C4EEFF476F
            82953D2E1D57B8824DFFB8824DFFB8824DFFB8824DFFB8824DFFB8824DFFB882
            4DFFB8824DFFB8824DFF3828184E000000000000000000000000000000000000
            0000000000000000000000000000848484FF848484FF848484FF848484FF8484
            84FF848484FF848484FF848484FF848484FF848484FF000000006CBAE2F21312
            101EA07143DEB8824DFFB8824DFFB8824DFFB8824DFFB8824DFFB8824DFFB882
            4DFFB8824DFFB8824DFF62452988000000000000000000000000000000000000
            0000000000000000000000000000848484FF0000000000000000000000000000
            000000000000000000000000000000000000848484FF000000004058617D543B
            2374B8824DFFB8824DFFB8824DFFB8824DFFB8824DFFB8824DFFB8824DFFB882
            4DFFB8824DFFB8824DFF855E38B8000000000000000000000000000000000000
            0000000000000000000000000000848484FF0000000000000000000000000000
            000000000000000000000000000000000000848484FF0000000014100B1DAC7A
            48EFB8824DFFB8824DFFB8824DFFB8824DFFB8824DFFB8824DFFB8824DFFB882
            4DFFB8824DFFB8824DFFA07143DE000000000000000000000000000000000000
            0000000000000000000000000000848484FF0000000000000000000000000000
            000000000000000000000000000000000000848484FF00000000694A2C91B882
            4DFFB8824DFFB8824DFFB8824DFFB8824DFFB8824DFFB8824DFFB8824DFFB882
            4DFFB8824DFFB8824DFFB27D4AF600000000848484FF848484FF848484FF8484
            84FF848484FF848484FF848484FF848484FF0000000000000000000000000000
            000000000000000000000000000000000000848484FF00000000A17243DFB882
            4DFFB8824DFFB8824DFFB8824DFFB8824DFFB8824DFFB8824DFFB8824DFFB882
            4DFFB8824DFFB8824DFFB27D4AF6000000000000000000000000000000000000
            0000000000000000000000000000848484FF0000000000000000000000000000
            000000000000000000000000000000000000848484FF000000001C150D28A877
            46E9B8824DFFB8824DFFB8824DFFB8824DFFB8824DFFB8824DFFB8824DFFB882
            4DFFB8824DFFB8824DFFA07143DE000000000000000000000000000000000000
            0000000000000000000000000000848484FF0000000000000000000000000000
            000000000000000000000000000000000000848484FF000000004E533A811F18
            0F2DA97747EAB8824DFFB8824DFFB8824DFFB8824DFFB8824DFFB8824DFFB882
            4DFFB8824DFFB8824DFF855E38B8000000000000000000000000000000000000
            0000000000000000000000000000848484FF0000000000000000000000000000
            000000000000000000000000000000000000848484FF0000000097A776FF4A4F
            377B221A1031AC7A48EFB8824DFFB8824DFFB8824DFFB8824DFFB8824DFFB882
            4DFFB8824DFFB8824DFF62452988000000000000000000000000000000000000
            0000000000000000000000000000848484FF848484FF848484FF848484FF8484
            84FF848484FF848484FF848484FF848484FF848484FF0000000097A776FF97A7
            76FF45493372261D1236AD7A48F0B8824DFFB8824DFFB8824DFFB8824DFFB882
            4DFFB8824DFFB8824DFF3828184E000000000000000000000000000000000000
            0000000000000000000000000000000000000000000000000000000000000000
            000000000000000000000000000000000000000000000000000097A776FF97A7
            76FF96A676FE4246316D291F133BB17D4AF5B8824DFFB8824DFFB8824DFFB882
            4DFFB8824DFF8B623AC00A07040E000000000000000000000000000000000000
            0000000000000000000000000000000000000000000000000000000000000000
            000000000000000000000000000000000000000000000000000097A776FF97A7
            76FF97A776FF96A676FE3C402D642D231541B17D4AF5B8824DFFB8824DFFB882
            4DFFB8824DFF4E37216C00000000000000000000000000000000000000000000
            0000000000000000000000000000848484FF848484FF848484FF848484FF8484
            84FF848484FF848484FF848484FF848484FF848484FF0000000097A776FF97A7
            76FF97A776FF97A776FF96A675FD393D2A5F32261747B47F4BF9B8824DFFB882
            4DFF7E5935AF0E0A061400000000000000000000000000000000000000000000
            0000000000000000000000000000848484FF0000000000000000000000000000
            000000000000000000000000000000000000848484FF0000000097A776FF97A7
            76FF97A776FF97A776FF97A776FF95A575FC353827573529194CB47F4BF99B6E
            41D7332415470000000000000000000000000000000000000000000000000000
            0000000000000000000000000000848484FF0000000000000000000000000000
            000000000000000000000000000000000000848484FF0000000097A776FF97A7
            76FF97A776FF97A776FF97A776FF97A776FF95A474FB323525523528194B4530
            1D5F000000000000000000000000000000000000000000000000000000000000
            0000000000000000000000000000848484FF0000000000000000000000000000
            000000000000000000000000000000000000848484FF0000000097A776FF97A7
            76FF97A776FF97A776FF97A776FF97A776FF97A776FF7C8A61D211120D1C0000
            0000000000000000000000000000000000000000000000000000000000000000
            0000000000000000000000000000848484FF0000000000000000000000000000
            000000000000000000000000000000000000848484FF0000000097A776FF97A7
            76FF97A776FF97A776FF97A776FF97A776FF687351AF2A2E2147000000000000
            0000000000000000000000000000000000000000000000000000000000000000
            0000000000000000000000000000848484FF0000000000000000000000000000
            000000000000000000000000000000000000848484FF0000000097A776FF97A7
            76FF97A776FF97A776FF727E59C04047326C0C0D091400000000000000000000
            0000000000000000000000000000000000000000000000000000000000000000
            0000000000000000000000000000848484FF0000000000000000000000000000
            000000000000000000000000000000000000848484FF00000000839167DE6D79
            55B851593F882E33244E0809060E0000000000000000848484FF848484FF8484
            84FF848484FF848484FF848484FF848484FF848484FF848484FF848484FF8484
            84FF848484FF848484FF848484FF848484FF0000000000000000000000000000
            000000000000000000000000000000000000848484FF00000000000000000000
            0000000000000000000000000000000000000000000000000000000000000000
            0000000000000000000000000000000000000000000000000000000000000000
            0000000000000000000000000000848484FF848484FF848484FF848484FF8484
            84FF848484FF848484FF848484FF848484FF848484FF00000000000000000000
            0000000000000000000000000000000000000000000000000000000000000000
            0000000000000000000000000000000000000000000000000000000000000000
            0000000000000000000000000000000000000000000000000000000000000000
            0000000000000000000000000000000000000000000000000000}
          TabOrder = 2
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'HelveticaNeue'
          Font.Style = [fsBold]
          ParentFont = False
          OnClick = cxButton12Click
        end
        object cxButton9: TcxButton
          Left = 397
          Top = 1
          Width = 120
          Height = 40
          Caption = 'Comiss'#245'es %'
          LookAndFeel.NativeStyle = False
          LookAndFeel.SkinName = 'Metropolis'
          OptionsImage.Glyph.Data = {
            36100000424D3610000000000000360000002800000020000000200000000100
            2000000000000010000000000000000000000000000000000000000000000000
            00000000000000000002000000050000000B0000000F00000010000000100000
            000F0000000E0000000A000000090000000C0000000F00000010000000100000
            00100000000E0000000A000000090000000C0000001000000011000000110000
            00100000000D0000000900000004000000010000000000000000000000000000
            00000000000100000005000000140000002B000000390000003E0000003E0000
            003C000000360000002A00000025000000300000003C0000003F0000003F0000
            003D000000360000002A00000026000000310000003D00000040000000400000
            003F000000370000002600000012000000060000000100000000000000000000
            0000000000010000000A00000028020A82FF02067EFF01047AFF01047AFF0103
            79FF010479FF01013CB0000000585E3113FF5F3011FF602E0CFF5E2D0CFF5E2C
            0BFF5D2D0BFF2F1605B20000005A012C83FF00297EFF00287BFF00277AFF0027
            79FF002678FF00143DAE00000031000000120000000400000000000000000000
            0000000000010000000C00000032030C86FF1F27B7FF1F26B7FF1F26B5FF1F26
            B5FF2128B6FF01047CFF01023CC1623112FF9C6022FF9C6021FF9C6122FF9C60
            22FF9C6021FF61330EFF2F1605C5012D86FF0E5DE1FF0E5EE0FF0E5DDFFF0E5C
            DFFF0E5CDFFF00297FFF00133DAC000000240000000900000001000000000000
            0000000000010000000C0000002F030D88FF1F28BAFF1F28B9FF1F27B7FF1F26
            B6FF2329B7FF01057FFF010379FF643213FF9C6022FF9C6021FF9C6122FF9C60
            22FF9C6022FF653912FF602D0CFF01308AFF0E5EE1FF0E5EE1FF0E5EE0FF0E5E
            E0FF0E5CE0FF002B86FF00277AFF000000310000000C00000001000000000000
            0000000000010000000A00000028020583FF2029BDFF1F29BBFF1F28B9FF1F27
            B9FF232BB8FF01047FFF01047BFF663414FF9E6225FF9D6223FF9C6123FF9C61
            21FF9C6021FF673C13FF612F0CFF02328DFF0E60E3FF0E5FE2FF0E5EE1FF0F5F
            E1FF0E5EE0FF002C87FF00277BFF000000340000000D00000001000000000000
            000000000001000000080000001F030789FF232FC0FF1F2ABEFF1F2ABDFF1F29
            BBFF252EBBFF020581FF01047CFF6B3513FFA2682DFF9F6427FF9E6325FF9D62
            24FF9D6325FF6A3D15FF642F0CFF023490FF0D61E5FF0F61E4FF0E60E3FF0E60
            E3FF0E5EE2FF002D89FF00287CFF000000310000000C00000001000000000000
            0000000000010000000600000016050A8EFF2A35C5FF202BC1FF1F2BBFFF1F2A
            BEFF2732BEFF010683FF01047EFF6D3612FFA66F35FFA1672BFFA06629FF9F65
            28FF9F6529FF6D4016FF66300DFF023694FF0E62E6FF0D61E5FF0E61E4FF0E61
            E4FF0E60E3FF002D8CFF00297EFF0000002A0000000B00000001000000000000
            000000000000000000040000000D060D94FF303DC9FF202DC4FF1F2CC2FF1F2B
            C1FF2934C2FF020584FF010480FF713914FFAA763FFFA36A2FFFA3692DFFA268
            2CFFA1692DFF704318FF69320DFF033898FF0E64E7FF0D62E6FF0E62E6FF0E61
            E4FF0E62E4FF002E8FFF002980FF000000250000000900000001000000000000
            0000000000000000000300000009080F9BFF3744CEFF1F2EC7FF1F2DC5FF202D
            C3FF2B37C5FF010686FF010481FF763C16FFAF7E4AFFA66E34FFA56D32FFA46B
            30FFA56D32FF73461AFF6B330DFF033B9CFF0D64E9FF0D64E8FF0E63E8FF0D62
            E6FF0D61E6FF003090FF002A82FF0000001F0000000800000001000000000000
            00000000000000000002000000080A13A0FF3E4DD3FF1F2FCAFF202FC9FF1F2E
            C7FF2D39C9FF010787FF010483FF7C3F16FFB58756FFA97239FFA77037FFA66F
            35FFA77239FF76491CFF6E340EFF033CA1FF1268EAFF0D66E9FF0E64E9FF0D63
            E9FF0F63E7FF003193FF002B85FF0000001A0000000700000001000000000000
            00000000000000000002000000060C17A7FF4655D7FF1F31CDFF2030CCFF1F30
            CAFF2F3DCDFF020789FF020688FF804117FFBA8F62FFAB773FFFAA753CFFAA73
            3AFFAB7740FF7A4C1EFF72350EFF043FA4FF186EEDFF0E67EBFF0E67EAFF0D65
            EAFF1065E9FF003196FF002C86FF000000170000000600000001000000000000
            00000000000000000001000000040E19ACFF4E5EDCFF2033D0FF1F32CEFF2031
            CEFF3040CFFF02078AFF03098CFF864418FFC1986EFFAF7B44FFAE7942FFAC77
            40FFAF7B46FF7E4F21FF76360FFF0441A7FF1F74EFFF0E68EEFF0D68ECFF0E67
            ECFF1268EBFF003297FF002D89FF000000140000000500000001000000000000
            0000000000000000000100000003101DB2FF5868E0FF2034D3FF1F34D2FF2033
            D1FF3143D3FF02078CFF050B93FF89481BFFC6A079FFB27F4AFFB17D47FFAF7C
            45FFB2814DFF825223FF783911FF0443ABFF277AF2FF0D69F0FF0D6AEDFF0E68
            ECFF136AECFF00349AFF002F8CFF000000110000000500000001000000000000
            00000000000000000001000000021220B8FF6170E3FF2035D6FF1F35D5FF1F34
            D3FF3345D6FF02088DFF070D98FF8F4C1DFFCBA984FFB58450FFB3824EFFB280
            4CFFB78755FF865625FF7B3C14FF0545AFFF2E7FF5FF0D6CF2FF0D6BF0FF0E6A
            F0FF156DEEFF00359CFF00308EFF0000000E0000000400000000000000000000
            00000000000000000000000000011424BDFF6979E6FF2036D9FF2036D7FF2036
            D6FF3547D9FF02088EFF08119EFF955220FFD0B190FFB88957FFB78654FFB685
            51FFB98B5BFF8A5927FF7D3F18FF0547B3FF3787F7FF0D6DF3FF0D6DF2FF0E6C
            F2FF176FF1FF00369EFF013192FF0000000C0000000300000000000000000000
            00000000000000000000000000000B13607E7681DBFFC6CFF5FFBDC8F3FFAFBC
            F1FFA0AFEEFF4A55BEFF0A14A5FF9B5723FFD5B899FFBB8E5CFFBA8B5BFFB989
            58FFBD9163FF8D5C29FF80431DFF0649B6FF418DF7FF0D6EF5FF0E6FF5FF0E6D
            F3FF1872F4FF00369FFF013395FF000000090000000300000000000000000000
            0000000000000000000000000000000000000B13607E1525BFFF1322BBFF111F
            B7FF101CB2FF0E1AAEFF0C18AAFF9F5C27FFD9BFA2FFBF9262FFBE9060FFBC8E
            5EFFC29669FF915F2BFF86451CFF064BB9FF4A94F9FF0E70F6FF0D70F6FF0E6E
            F4FF1A75F5FF0036A1FF01359AFF000000060000000200000000000000000000
            0000000000000000000000000000000000000000000000000000000000000000
            0000000000000000000000000000A4612AFFDDC4ABFFC29768FFC19566FFBF93
            64FFC49A70FF94632EFF8B481DFF064DBCFF549BFAFF0E71F7FF0D70F7FF0E70
            F7FF1C77F7FF0038A3FF01379CFF000000040000000100000000000000000000
            0000000000000000000000000000000000000000000000000000000000000000
            0000000000000000000000000000A9672FFFE0C9B2FFC59B6EFFC4996CFFC398
            6AFFC89F76FF976630FF8F4B1EFF074FBFFF5DA0FBFF0E72F8FF0D71F8FF0E71
            F8FF1E7AF8FF0038A5FF02389FFF000000020000000100000000000000000000
            00001C21BBFF181DB6FF1418B1FF1014ADFF0C11A8FF080DA4FF0509A1FF0207
            9EFF00049CFF00000000000000005635197ED5A675FFFFE5BBFFFADEB6FFF1D6
            B0FFE9CBA8FF9F6D38FF924F21FF0751C2FF65A5FCFF0D74FAFF0E73F8FF0E72
            F8FF1E7BF9FF0038A5FF023AA3FF000000010000000000000000000000000000
            0000070726331D21BBFF181CB6FF0709405C000000000000000003053C5C0509
            A1FF02079FFF0000000000000000000000005636197EAB6930FFA7632BFFA55F
            29FFA05C27FF9B5625FF975223FF0853C6FF6EABFDFF0D73FBFF0D74FAFF0D73
            FAFF207FF9FF0038A5FF023DA7FF000000000000000000000000000000000000
            000000000000070826331D21BBFF181DB6FF0709405C00000000000000000305
            3B5C040AA1FF0000000000000000000000000000000000000000000000000000
            00000000000000000000000000000855C8FF75AFFDFF0D73FBFF0D73FBFF0D72
            FBFF227FFAFF0038A5FF023FAAFF000000000000000000000000000000000000
            00000000000000000000070726331C21BBFF181DB6FF0709405C000000000000
            0000000000000000000000000000000000000000000000000000000000000000
            00000000000000000000000000000857CBFF7CB3FDFF0D73FBFF0D73FBFF0D73
            FBFF2480FBFF073EA8FF0341ADFF000000000000000000000000000000000000
            0000000000000000000000000000070826331C21BAFF181DB5FF000000000000
            0000000000000000000000000000000000000000000000000000000000000000
            0000000000000000000000000000042B657E6398E3FFB4D6FEFFA5CCFCFF95C3
            FAFF84B7F9FF3C74CEFF0342B0FF000000000000000000000000000000000000
            0000000000000000000000000000080827332126BFFF1D21BAFF000000000000
            0000000000000000000000000000000000000000000000000000000000000000
            000000000000000000000000000000000000042A647E0853C7FF0750C3FF064D
            BFFF054ABBFF0447B7FF0344B3FF000000000000000000000000000000000000
            00000000000000000000090A29332A2FC8FF262AC4FF0C0E455C000000000000
            0000000000000000000000000000000000000000000000000000000000000000
            0000000000000000000000000000000000000000000000000000000000000000
            0000000000000000000000000000000000000000000000000000000000000000
            0000000000000B0C2A333135D1FF2D32CDFF0F11485C00000000000000000A0C
            435C181CB6FF0000000000000000000000000000000000000000000000000000
            0000000000000000000000000000000000000000000000000000000000000000
            0000000000000000000000000000000000000000000000000000000000000000
            00000D0E2C333B3FD8FF363CD4FF12134B5C00000000000000000D0F475C2126
            BFFF1D21BAFF0000000000000000000000000000000000000000000000000000
            0000000000000000000000000000000000000000000000000000000000000000
            0000000000000000000000000000000000000000000000000000000000000000
            00004347DEFF4044DCFF3B40D8FF363BD5FF3136D0FF2D32CDFF292FC8FF252A
            C4FF2126C0FF0000000000000000000000000000000000000000000000000000
            0000000000000000000000000000000000000000000000000000000000000000
            0000000000000000000000000000000000000000000000000000000000000000
            0000000000000000000000000000000000000000000000000000000000000000
            0000000000000000000000000000000000000000000000000000000000000000
            0000000000000000000000000000000000000000000000000000000000000000
            0000000000000000000000000000000000000000000000000000000000000000
            0000000000000000000000000000000000000000000000000000000000000000
            0000000000000000000000000000000000000000000000000000000000000000
            0000000000000000000000000000000000000000000000000000000000000000
            0000000000000000000000000000000000000000000000000000}
          TabOrder = 3
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'HelveticaNeue'
          Font.Style = [fsBold]
          ParentFont = False
          OnClick = cxButton9Click
        end
        object cxButton14: TcxButton
          Left = 522
          Top = 1
          Width = 120
          Height = 40
          Caption = 'Imagem'
          Enabled = False
          LookAndFeel.NativeStyle = False
          LookAndFeel.SkinName = 'Metropolis'
          OptionsImage.Glyph.Data = {
            36100000424D3610000000000000360000002800000020000000200000000100
            2000000000000010000000000000000000000000000000000000000000000000
            0000000000000000000000000000000000000000000000000000000000000000
            0000000000000000000000000000000000000000000000000000000000000000
            0000000000000000000000000000000000000000000000000000000000000000
            0000000000000000000000000000000000000000000000000000000000000000
            0000000000000000000000000000000000000000000000000000000000000000
            0000000000000000000000000001000000010000000100000001000000010000
            0001000000010000000100000001000000010000000100000001000000010000
            0001000000010000000100000001000000010000000100000000000000010000
            0003000000040000000500000005000000050000000500000005000000050000
            0005000000050000000500000005000000050000000500000005000000050000
            0005000000050000000500000005000000050000000500000005000000050000
            0005000000050000000500000005000000050000000300000002000000050000
            000A0000000F0000001100000011000000120000001200000012000000120000
            0012000000120000001300000013000000130000001300000013000000130000
            0013000000140000001400000014000000140000001400000014000000150000
            0015000000150000001500000015000000130000000D000000060000000A7B5A
            4FBDAB7D6DFFAA7C6DFFA97C6CFFA97B6BFFA97B6AFFA87A6AFFA87969FFA879
            69FFA77868FFA67768FFA57767FFA67767FFA57666FFA57565FFA47565FFA475
            65FFA47464FFA37464FFA37363FFA37363FFA37363FFA27263FFA27262FFA272
            62FFA27262FFA27262FFA17161FFA17161FF735146BF0000000D0000000DAE82
            72FFFBF6F4FFFAF6F3FFFAF6F3FFFAF5F2FFFAF5F2FFFAF4F1FFF9F4F1FFFAF4
            F0FFF9F3F0FFF9F3EFFFF8F3EFFFF8F2EFFFF8F1EEFFF8F1EDFFF8F2EDFFF8F1
            EDFFF8F1ECFFF8F1ECFFF8F1EDFFF8F2EDFFF8F1EDFFF8F2EDFFF8F2EDFFF9F1
            EDFFF8F2EEFFF8F2EEFFF8F3EFFFF9F3EFFFA97A6AFF000000120000000EB083
            74FFFBF7F4FFF6EEE9FFF7EEE9FFF6EFE9FFF6EFE9FFF5EEE8FFF6EEE8FFF5EF
            E9FFF5EEE9FFF5EDE8FFF4EEE8FFF4EDE7FFF3ECE7FFF4EDE8FFF5EFE8FFF7EE
            E8FFF7EEE8FFF6EEE8FFF6EEE8FFF6EDE8FFF6EEE7FFF6EDE7FFF6EDE7FFF6EC
            E6FFF5EDE7FFF6ECE6FFF5ECE6FFF9F3F0FFAA7B6CFF000000130000000EB085
            75FFFBF8F5FFF7EFE9FF30AA7FFF2FAA7FFF2FA980FF30A97DFF30A87FFF2EA8
            7EFF2FA87DFF2FA87DFF2FA77BFF2EA379FF28946CFF186A49FF339A73FF229D
            6EFF229669FF1C835BFF186D4AFF176042FF258962FF2A9871FF1F694BFF2877
            58FF297C5DFF1F694AFFF5ECE7FFF9F4F0FFAA7C6DFF000000130000000DB287
            78FFFBF8F6FFF7EFEAFF30AE83FF35BE90FF35BC8EFF34B88BFF34B589FF34B3
            88FF33B286FF33AF84FF32AE83FF2FA67EFF2B956CFF217D57FF57C5A0FF2BB0
            7FFF2BAD7DFF27A375FF249A6EFF1E845CFF196848FF2AA076FF227553FF2A84
            61FF30936EFF206E4EFFF6EDE6FFFAF5F2FFAB7E6FFF000000120000000DB389
            7AFFFCF9F6FFF8EFEBFF31B087FF36C094FF35BD92FF2EA37AFF2C9B74FF2C97
            70FF298F6AFF288C67FF278762FF288863FF237E59FF1D7F57FF6CC8AEFF2EAD
            7FFF279D72FF239269FF1F8A60FF1E855EFF176D4AFF1C7855FF217554FF2886
            63FF319B75FF237857FFF6EDE7FFFAF5F2FFAD8070FF000000110000000CB58B
            7CFFFCF9F7FFF7F0ECFF34B58CFF38C598FF38C296FF35B68DFF40A984FF4BB6
            90FF3FB388FF41B78CFF46C093FF43BB8FFF39A57CFF1C8058FF68B2A4FF2785
            70FF218862FF1B705FFF1D4C8DFF196A5AFF176A48FF135647FF145C43FF207B
            56FF2F9770FF288B68FFF6EDE8FFFAF6F3FFAE8172FF000000100000000BB68D
            7EFFFCFAF8FFF8F1ECFF37B891FF3DC99DFF3CC69BFF3CC299FF36AF88FF63C4
            A4FF4EC59AFF48C395FF46C092FF40B58BFF35A076FF1C7D55FF357291FF2B60
            A6FF1E6466FF256384FF4A99D2FF195174FF145255FF2961A7FF174D69FF1B72
            4FFF207A56FF2FA07BFFF6EEE8FFFBF6F3FFAF8374FF000000100000000BB98F
            80FFFDFAF9FFF8F1EDFF3EBB94FF43CBA1FF43CAA1FF43C99FFF40C299FF40B3
            8DFF76D5B7FF4EC49CFF48BF94FF3BAA84FF287D79FF19724CFF327590FF4F9B
            D3FF326DADFF326DA5FF60B9E9FF235792FF3875B4FF4196D4FF184E6DFF1562
            42FF1B6464FF31A383FFF6EFE9FFFBF7F5FFB18576FF0000000F0000000ABA91
            83FFFDFAF9FFF8F2EEFF57C4A1FF5ED3AFFF62D5B1FF60D3AFFF5BD1ABFF56C7
            A3FF63C8A7FF86DBC0FF5DC7A3FF35938EFF3B7BBCFF2E69A8FF286B86FF4D98
            D2FF57A7DCFF3875B7FF6BC6F2FF3672B5FF55A7DEFF3B8CCCFF195173FF285E
            A0FF2D75BBFF2C8883FFF7EEEAFFFBF8F6FFB28778FF0000000E00000009BB94
            85FFFDFBFAFFF9F2EFFF7BCAA8FF84D8B5FF83D7B5FF82D8B5FF81D7B3FF7FD5
            B1FF74CCA9FF70C8A9FF84D2B9FF79C8B2FF4282BDFF74C9F2FF4D96D1FF4187
            C7FF69C8F4FF3F80C2FF63C6F5FF3E80C3FF5DC2F3FF387CBFFF4691CEFF48B5
            EFFF2F6EAEFF47A07DFFF7EFE9FFFBF8F7FFB3897AFF0000000E00000009BD96
            87FFFDFCFAFFF9F3EFFFA7CCACFFB4DBB7FFB2DBB8FFB3DAB7FFB2DAB7FFB1D9
            B5FFADD6B3FF8DC2A5FF4F8FA3FF4F97A3FF4B90A0FF61A7DAFF83D6F8FF5AA8
            DDFF5DBAEBFF60B5E6FF5FC3F2FF58B1E5FF56B7E9FF50A4DCFF52C0F4FF4999
            D4FF427F90FF467C89FFF7EFEAFFFCF9F7FFB58B7CFF0000000D00000008BE98
            8AFFFDFCFBFFF9F3F0FFD1CFAFFFDFDDBBFFDFDDBBFFDEDDBAFFDEDDB9FFDEDC
            BAFFDBDCB8FFC0C8AFFF5995CCFF73B7E1FF69ACDAFF599AD0FF6BB5E3FF7BD3
            F7FF508EC4FF355D9DFF2D4B8FFF345B9CFF4686BFFF5FC7F5FF53A7DDFF397E
            BEFF3D8ACAFF3C87BFFFF7F0EBFFFCFAF8FFB78D7FFF0000000C00000007C09A
            8CFFFEFCFCFFF9F4F1FFE8D5B6FFF7E1C0FFF7E2C0FFF7E2C0FFF8E1BFFFF8E1
            BFFFF6DEBDFFF3DAB5FFC2C2B1FF6BA7D2FF84C5E9FF9FDFF8FF91D3F0FF6CA8
            D4FF33589AFF2961A9FF194995FF255BA5FF274B91FF498DC6FF5ABAEAFF63C6
            F4FF5EB2E3FF4A8BBBFFF7F0EBFFFCFAF9FFB99081FF0000000C00000007C19C
            8EFFFEFDFCFFFAF5F1FFF0D8BBFFFEE6C6FFFEE4C5FFFEE5C5FFFDE4C4FFFDE4
            C4FFFDE2C1FFE1D0B9FFA4B9C3FF79ABCDFF60A4D5FF62A8D8FF83CBEEFF507B
            B3FF4485BFFF2865ABFF286CB3FF1A4F9BFF265DA8FF315D9EFF5FBAE8FF4896
            CEFF4591CAFF4D7EABFFF8F0ECFFFDFBFAFFBA9183FF0000000B00000006C39E
            91FFFEFDFDFFFAF5F2FFF2DDC2FFFFE9CDFFFFE9CBFFFFE9CBFFFFE9CBFFFFE9
            CBFFFFE6C5FF75AACFFF8CCBECFF9FDBF5FFAEE7FBFFB2E9FCFFB0E8FBFF4470
            ACFF4185C1FF4893CBFF2769AFFF296FB6FF1D539EFF295499FF6CC9F4FF6ECE
            F7FF7AD2F7FF55A3D2FFF8F1ECFFFDFBFAFFBB9485FF0000000A00000006C4A0
            92FFFEFDFDFFFAF5F3FFF3E3C8FFFFEDD2FFFFEDD3FFFFEDD2FFFFEDD1FFFFED
            D1FFFFECCEFFE9E0CAFFAEC7CEFF87B9D5FF6AB1DCFF70B7DFFF9BDBF5FF5889
            BEFF5EA4D2FF468FC9FF4A99CFFF286AB1FF397BBCFF3165A7FF6EC3ECFF4EA0
            D3FF4D9DD2FF669EBDFFF8F1EDFFFDFCFBFFBD9588FF0000000A00000005C6A2
            95FFFEFEFDFFFBF5F4FFF4E7D1FFFFF1D8FFFFF1D9FFFFF1D8FFFFF2D9FFFFF1
            D8FFFFF1D7FFFFEFD3FFD7DACDFF84C2E2FFA4E0F6FFB7EBFCFFBCEBFBFF8FC4
            E3FF447EBBFF61A9D6FF559BD0FF5197CDFF2760A7FF5BA3D3FF6DC8EFFF7BD3
            F7FF6ABEE8FF4E97C3FFF8F1EEFFFEFCFBFFBE988AFF0000000900000005C7A4
            96FFFFFEFEFFFBF6F4FFF5EBD6FFFFF5DEFFFFF5DFFFFFF5DEFFFFF5DEFFFFF5
            DEFFFFF5DCFFE9E8D7FF8ACAE8FFADE1F6FF9AD3EEFF7ABFE3FF9CD6EFFFB8ED
            FCFF8CC2E3FF5E9ACCFF3F83C1FF5896CAFF67ACD8FF89DCF9FF6DC1E9FF53A8
            D9FF5BB1DFFF4E9FCFFFF8F2EDFFFEFDFCFFC09A8CFF0000000800000004C9A6
            99FFFFFEFEFFFBF7F5FFF6EFDBFFFFF8E3FFFFF8E3FFFFF8E3FFFFF7E3FFFFF8
            E2FFFFF8E2FFF7F3DEFFB7D7DEFFBEDADBFFB7D7DAFF98D2EEFFBFEFFDFFA0D9
            F0FFB9E7F8FFA5DFF4FFC1ECFBFF9CDBF3FFA5E0F6FF6EC3E9FF95DFFAFF68BC
            E5FFA0C8CDFFA0C2C6FFF8F2EEFFFEFDFCFFC19C8EFF0000000800000004CAA7
            9AFFFFFEFEFFFCF8F6FFF7F2E0FFF7F2DFFFF7F2DFFFF7F2DFFFF7F2DFFFF7F2
            DFFFF7F2DFFFF6F1DDFFF6F0DBFFEEECD6FF82C1DDFFA4D6E9FF92CBE4FF83C4
            E1FFA5D8E9FF77BDDDFFA5D8EAFF75BBDDFF9CD4E9FF5EB0D7FF63B5DCFF6EBC
            E0FF519FCBFFEAE8C9FFF9F2EEFFFEFDFDFFC39E91FF0000000700000003CBA9
            9BFFFFFEFEFFFBF7F6FFFCF8F7FFFBF8F7FFFCF8F7FFFCF8F7FFFCF8F7FFFCF9
            F7FFFCF9F7FFFCF9F7FFFCF9F7FFFCF8F7FFFCF8F6FFFCF8F6FFFBF7F6FFFBF7
            F5FFFCF7F5FFFBF6F5FFFBF6F4FFFAF6F3FFFAF6F3FFFAF5F2FFFAF5F1FFF9F4
            F1FFF9F3F0FFF9F3F0FFF8F3EFFFFEFEFDFFC5A092FF0000000600000002CCAA
            9DFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
            FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
            FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
            FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFC6A295FF00000005000000019E87
            7DBED5B5A8FFD4B5A8FFD4B5A8FFD4B5A8FFD4B5A8FFD4B4A7FFD3B4A7FFD3B4
            A6FFD3B3A5FFD2B3A6FFD2B2A5FFD2B2A5FFD2B1A4FFD1B1A4FFD1B0A3FFD0AF
            A2FFD0AFA2FFD0AFA2FFCFAEA1FFCEAEA1FFCEADA0FFCEAD9FFFCDAC9FFFCCAA
            9DFFCCAA9CFFCBA99CFFCBA99BFFCBA89BFF957C71BF00000003000000000000
            0001000000020000000200000002000000020000000200000002000000030000
            0003000000030000000300000003000000030000000300000003000000030000
            0003000000030000000400000004000000040000000400000004000000040000
            0004000000040000000400000004000000040000000300000001000000000000
            0000000000000000000000000000000000000000000000000001000000010000
            0001000000010000000100000001000000010000000100000001000000010000
            0001000000010000000100000001000000010000000100000001000000010000
            0001000000010000000100000001000000010000000100000000000000000000
            0000000000000000000000000000000000000000000000000000000000000000
            0000000000000000000000000000000000000000000000000000000000000000
            0000000000000000000000000000000000000000000000000000000000000000
            0000000000000000000000000000000000000000000000000000000000000000
            0000000000000000000000000000000000000000000000000000000000000000
            0000000000000000000000000000000000000000000000000000000000000000
            0000000000000000000000000000000000000000000000000000000000000000
            0000000000000000000000000000000000000000000000000000}
          TabOrder = 4
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'HelveticaNeue'
          Font.Style = [fsBold]
          ParentFont = False
        end
        object cxButton1: TcxButton
          Left = 22
          Top = 46
          Width = 120
          Height = 40
          Caption = 'Garrafas'
          Enabled = False
          LookAndFeel.NativeStyle = False
          LookAndFeel.SkinName = 'Metropolis'
          OptionsImage.Glyph.Data = {
            36100000424D3610000000000000360000002800000020000000200000000100
            2000000000000010000000000000000000000000000000000000000000000000
            00000000000000000000000000000000000000000000000000030000000C0000
            0012000000130000001300000013000000130000001400000014000000140000
            0014000000140000001400000014000000120000000C00000003000000000000
            0000000000000000000000000000000000000000000000000000000000000000
            000000000000000000000000000000000000000000000000000B806258C4B388
            7AFFB3887AFFB3887AFFB3887AFFB3887AFFB3887AFFB3887AFFB3887AFFB388
            7AFFB3887AFFB3887AFFB3887AFFB3887AFF806258C40000000C000000000000
            0000000000000000000000000000000000000000000000000000000000000000
            0000000000000000000000000000000000000000000000000011B3887AFFF9F3
            EEFFF8F2EDFFF9F2EEFFF9F2EDFFF9F2EDFFF9F2EDFFF8F2EEFFF9F2EDFFF9F2
            EDFFF8F2EDFFF9F2EDFFF8F1EDFFF8F1EDFFB3877AFF00000011000000000000
            0000000000000000000000000000000000000000000000000000000000000000
            0000000000000000000000000000000000000000000000000012B3887AFFF9F3
            EEFFF9F3EEFFF9F2EEFFF9F3EDFFF9F2EDFFF9F2EEFFF9F3EEFFF9F2EDFFF8F2
            EDFFF8F2EDFFF9F2EDFFF8F2EDFFF8F2EDFFB3887AFF00000012000000000000
            0000000000000000000000000000000000000000000000000000000000000000
            0000000000000000000000000000000000000000000000000011B3887AFFF9F3
            EFFFF9F3EFFFD09862FFD09862FFCF9863FFCF9862FFF9F2EEFFF8F3EEFF4B31
            2AFF4B322BFF4B322BFFF8F2EDFFF9F2EEFFB3887AFF00000012000000000000
            0000000000000000000000000000000000000000000000000000000000000000
            0000000000000000000000000000000000000000000000000011B3887AFFFAF3
            EFFFFAF3EFFFD09963FFDAAB77FFDAAB78FFD09863FFF9F2EFFFF9F2EEFFF9F2
            EEFFF9F2EEFFF9F2EEFFF8F3EEFFF9F3EEFFB3887AFF00000011000000000000
            0000000000000000000000000000000000000000000000000000000000000000
            0000000000000000000000000000000000000000000000000010B3887AFFF9F3
            F0FFF9F3EFFFD09A64FFDBAB78FFDBAB78FFD09963FFF9F3EFFFF9F3EFFFF9F3
            EEFFF9F3EFFFF9F3EEFFF9F3EEFFF9F3EEFFB3887AFF00000011000000000000
            0000000000000000000000000000000000000000000000000000000000000000
            000000000000000000000000000000000000000000000000000FB4897AFFFAF4
            F0FFFAF4EFFFD09A64FFDBAC79FFDAAC79FFD19A64FFF9F3EFFFF9F4F0FF5036
            2FFF50372FFF50372FFFF9F3EEFFF9F3EEFFB3887AFF00000010000000000000
            0000000000000000000000000000000000000000000000000000000000000000
            000000000000000000000000000000000000000000000000000FB48A7CFFFAF4
            F1FFFAF4F0FFD29B65FFDBAD7AFFDBAD7AFFD19B65FFF9F4F0FFF9F3F0FFFAF3
            EFFFF9F4EFFFF9F3EFFFF9F3EFFFFAF3EFFFB3887AFF0000000F000000000000
            0000000000000000000000000000000000000000000000000000000000000000
            000000000000000000000000000000000000000000000000000EB58A7CFFFAF5
            F0FFFAF4F1FFD29C66FFDBAE7BFFDBAE7CFFD29B66FFFAF4F0FFF9F4F0FFF9F4
            F0FFF9F4F0FFFAF4F0FFF9F4F0FFF9F4F0FFB3887BFF0000000F000000000000
            0000000000000000000000000000000000000000000000000000000000000000
            000000000000000000000000000000000000000000000000000EB58B7DFFFAF5
            F2FFFAF5F1FFD49D68FFDCAF7DFFDCAF7DFFD29C67FFFAF4F1FFFAF5F1FF563B
            35FF563C34FF563B34FFFAF4F1FFF9F4F0FFB3897BFF0000000E000000000000
            0000000000000000000000000000000000000000000000000000000000000000
            000000000000000000000000000000000000000000000000000DB68B7EFFFAF6
            F2FFFAF5F2FFD29E69FFDCB07EFFDDAF7EFFD29E69FFFAF5F1FFFAF5F1FFFAF5
            F1FFFAF5F0FFF9F4F0FFFAF5F1FFFAF4F1FFB4897BFF0000000E000000000000
            0000000000000000000000000000000000000000000000000000000000000000
            000000000000000000000000000000000000000000000000000DB78D7FFFFAF5
            F2FFFAF6F2FFD4A06AFFDDB07EFFDEB07EFFD5A06AFFFAF5F1FFFAF5F1FFFAF5
            F2FFFAF5F1FFFAF5F1FFFAF4F1FFFAF5F0FFB58A7DFF0000000D000000000000
            0000000000000000000000000000000000000000000000000000000000000000
            000000000000000000000000000000000000000000000000000CB78E80FFFAF6
            F3FFFAF6F2FFD5A06BFFDEB180FFDEB280FFD5A16BFFFAF5F2FFFAF6F2FF5E42
            3AFF5D423BFF5D423BFFFAF5F1FFFAF5F1FFB68B7DFF0000000D000000000000
            0000000000000000000000000000000000000000000000000000000000000000
            000000000000000000000000000000000000000000000000000CB89081FFFBF6
            F4FFFBF6F3FFD5A16CFFDFB381FFDFB281FFD6A16CFFFBF6F2FFFAF6F2FFFAF6
            F2FFFBF6F3FFFAF6F2FFFAF5F2FFFBF6F1FFB68C7EFF0000000C000000000000
            0000000000000000000000000000000000000000000000000000000000000000
            000000000000000000000000000000000000000000000000000BB99183FFFBF6
            F4FFFBF6F3FFD6A36EFFDFB483FFDFB383FFD6A26EFFFBF6F3FFFBF7F3FFFBF6
            F3FFFBF6F3FFFAF6F3FFFAF6F3FFFBF5F2FFB78D80FF0000000C000000000000
            0000000000000000000000000000000000000000000000000000000000000000
            000000000000000000000000000000000000000000000000000ABB9285FFFBF7
            F4FFFBF6F4FFD7A36FFFE0B584FFE0B483FFD6A46FFFFBF6F4FFFBF7F3FF6549
            42FF664941FF654941FFFAF6F3FFFAF6F3FFB88F80FF0000000B000000000000
            0000000000000000000000000000000000000000000000000000000000000000
            000000000000000000000000000000000000000000000000000ABB9386FFFBF7
            F5FFFBF8F5FFD7A471FFE0B685FFE1B685FFD7A46FFFFBF7F4FFFBF7F4FFFBF7
            F4FFFAF7F4FFFAF6F3FFFBF7F3FFFAF6F3FFB99083FF0000000A000000000000
            0000000000000000000000000000000000000000000000000000000000000000
            0000000000000000000000000000000000000000000000000009BC9487FFFBF8
            F5FFFBF7F5FFD7A671FFD9A671FFD9A571FFD7A672FFFBF7F4FFFBF8F4FFFBF7
            F4FFFBF7F4FFFBF7F4FFFBF7F4FFFBF7F4FFB99184FF0000000A000000000000
            0000000000000000000000000000000000000000000000000000000000000000
            0000000000000000000000000000000000000000000000000009BD9588FFFCF8
            F6FFFBF8F5FFFCF8F5FFFBF8F6FFFBF8F5FFFCF7F5FFFBF7F5FFFBF7F5FF6E51
            48FF6D5048FF6D5047FFFBF7F5FFFCF7F5FFBA9285FF00000009000000000000
            0000000000000000000000000000000000000000000000000000000000000000
            0000000000000000000000000000000000000000000000000008BE978AFFFCF8
            F5FFFBF8F6FF4957D1FF4857D1FF4856D1FF4856D1FFFCF8F6FFFCF8F5FFFBF8
            F5FFFBF7F5FFFBF7F5FFFBF8F5FFFBF7F5FFBC9486FF00000009000000000000
            0000000000000000000000000000000000000000000000000000000000000000
            0000000000000000000000000000000000000000000000000008BF988BFFFCF8
            F7FFFCF8F6FF4A58D2FF5D6CDBFF5C6CDBFF4958D1FFFCF8F5FFFCF8F5FFFCF8
            F6FFFBF8F5FFFCF8F5FFFBF8F6FFFBF8F5FFBC9588FF00000008000000000000
            0000000000000000000000000000000000000000000000000000000000000000
            0000000000000000000000000000000000000000000000000007C0998CFFFCF9
            F7FFFCF9F7FF4B5AD4FF5F6EDCFF5E6DDCFF4A59D2FFFCF8F6FFFCF9F6FF7557
            4EFF755850FF75574EFFFBF8F6FFFCF8F6FFBD9688FF00000008000000000000
            0000000000000000000000000000000000000000000000000000000000000000
            0000000000000000000000000000000000000000000000000007C09A8DFFFCF9
            F7FFFCF9F7FF4D5BD4FF5F6FDDFF606EDDFF4C5BD4FFFCF9F6FFFCF9F6FFFCF9
            F6FFFCF9F7FFFCF9F6FFFCF9F6FFFBF8F6FFBE978AFF00000007000000000000
            0000000000000000000000000000000000000000000000000000000000000000
            0000000000000000000000000000000000000000000000000006C19B8EFFFCFA
            F8FFFCFAF8FF4E5DD5FF6171DEFF6171DDFF4D5DD4FFFCFAF7FFFCF9F7FFFCF9
            F7FFFCF9F7FFFCF9F7FFFCF9F7FFFCF9F7FFBF998CFF00000007000000000000
            0000000000000000000000000000000000000000000000000000000000000000
            0000000000000000000000000000000000000000000000000006C29C8FFFFDFA
            F8FFFCFAF8FF4F5FD6FF6373DEFF6373DEFF4F5DD4FFFCF9F8FFFDFAF8FF7C60
            56FF7C5E55FF7C5E55FFFCF9F7FFFCF9F7FFC09A8DFF00000006000000000000
            0000000000000000000000000000000000000000000000000000000000000000
            0000000000000000000000000000000000000000000000000005C39D90FFFDFA
            F9FFFDFAF8FF5160D6FF6574DEFF6574DEFF4F5FD5FFFCF9F8FFFCFAF8FFFDFA
            F8FFFCFAF8FFFDFAF8FFFCFAF8FFFCFAF8FFC09B8EFF00000006000000000000
            0000000000000000000000000000000000000000000000000000000000000000
            0000000000000000000000000000000000000000000000000005C39E90FFFDFB
            F9FFFDFAF9FF5262D6FF6676DFFF6676DFFF5161D6FFFCFAF9FFFDFAF8FFFDFA
            F8FFFCFAF8FFFCFAF8FFFCFAF8FFFDFAF8FFC29C8FFF00000005000000000000
            0000000000000000000000000000000000000000000000000000000000000000
            0000000000000000000000000000000000000000000000000004C49F92FFFDFB
            F9FFFDFBF9FF5363D6FF5363D7FF5363D6FF5363D6FFFDFAF9FFFDFAF9FF8465
            5DFF83665DFF82655DFFFDFAF9FFFDFAF8FFC29D90FF00000005000000000000
            0000000000000000000000000000000000000000000000000000000000000000
            0000000000000000000000000000000000000000000000000004C49F92FFFDFB
            FAFFFDFBF9FFFEFCFAFFFDFCFAFFFDFBFAFFFDFBFAFFFDFBF9FFFDFBFAFFFDFB
            F9FFFDFBF9FFFDFBF9FFFCFBF9FFFCFBF9FFC39E91FF00000004000000000000
            0000000000000000000000000000000000000000000000000000000000000000
            0000000000000000000000000000000000000000000000000003C49F92FFFDFB
            FAFFFDFCFAFFFDFCFAFFFDFCFAFFFDFCFAFFFDFBFAFFFDFCFAFFFDFBFAFFFDFC
            FAFFFDFBFAFFFDFBF9FFFDFBFAFFFDFBFAFFC39E92FF00000004000000000000
            0000000000000000000000000000000000000000000000000000000000000000
            000000000000000000000000000000000000000000000000000291766CBFC49F
            92FFC49F92FFC49F92FFC49F92FFC49F92FFC49F92FFC49F92FFC49F92FFC49F
            92FFC49F92FFC49F92FFC49F92FFC49F92FF91766CBF00000002000000000000
            0000000000000000000000000000000000000000000000000000}
          TabOrder = 5
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'HelveticaNeue'
          Font.Style = [fsBold]
          ParentFont = False
        end
        object cxButton17: TcxButton
          Left = 147
          Top = 45
          Width = 120
          Height = 40
          Caption = 'Etiquetas'
          LookAndFeel.NativeStyle = False
          LookAndFeel.SkinName = 'Metropolis'
          OptionsImage.Glyph.Data = {
            36100000424D3610000000000000360000002800000020000000200000000100
            2000000000000010000000000000000000000000000000000000000000000000
            0000000000000000000000000000000000000000000000000000000000000000
            0000000000000000000000000000000000000000000000000000000000000000
            0000000000000000000000000000000000000000000000000000000000000000
            0000000000000000000000000000000000000000000000000000000000000000
            0001000000010000000100000001000000010000000100000001000000010000
            0001000000010000000100000001000000010000000100000001000000010000
            0001000000010000000100000001000000010000000100000001000000010000
            0001000000010000000100000001000000010000000100000000000000020000
            0004000000060000000600000006000000060000000600000006000000060000
            0006000000060000000600000006000000060000000600000007000000070000
            0007000000070000000700000007000000070000000700000007000000070000
            0007000000070000000700000007000000060000000400000002000000060000
            000E000000150000001700000018000000180000001800000018000000180000
            0018000000190000001900000019000000190000001900000019000000190000
            00190000001A0000001A0000001A0000001A0000001A0000001A0000001A0000
            001A0000001B0000001B0000001A0000001700000010000000070000000E7D5D
            53C0AF8172FFAE8172FFAE8171FFAD8172FFAE8171FFAD8071FFAD8071FFAC7F
            70FFAD7F70FFAC7F70FFAD7F6FFFAC7E6FFFAC7F6EFFAB7E6EFFAC7E6EFFAC7E
            6DFFAC7D6EFFAB7D6DFFAB7D6DFFAB7C6DFFAA7D6CFFAB7D6CFFAA7C6CFFAA7C
            6CFFA97C6CFFAA7B6BFFAA7C6BFFA97B6BFF79594DC10000001000000013AF84
            74FFF9F4EFFFF9F4F0FFF9F3EFFFF9F3EFFFF9F3EFFFF9F3EFFFF9F2EFFFF9F3
            EFFFF9F2EEFFF8F2EEFFF8F2EEFFF8F2EEFFF8F2EEFFF8F2EEFFF8F2EEFFF8F2
            EEFFF8F2EDFFF8F1EDFFF8F1EDFFF8F1EDFFF8F1ECFFF7F0ECFFF8F0ECFFF8F0
            ECFFF7F1ECFFF8F0ECFFF7F1ECFFF8F0EBFFAA7C6CFF0000001600000014B186
            76FFFAF4F1FFF5ECE6FFF5EDE7FFF5ECE6FFF5ECE6FFF5ECE6FFF5ECE6FFF5EC
            E5FFF5ECE6FFF5ECE5FFF5ECE5FFF5ECE5FFF5ECE6FFF5ECE5FFF5EBE5FFF4EB
            E5FFF5EBE5FFF5ECE5FFF5ECE4FFF5EBE5FFF5EBE5FFF4ECE5FFF4EBE4FFF4EC
            E5FFF5EBE5FFF4EBE5FFF4EBE5FFF7F1ECFFAB7D6EFF0000001800000014B287
            78FFFAF6F2FFF6EDE7FFF6ECE7FFF6ECE6FFF5EDE6FFF6EDE7FFF5ECE7FFF6EC
            E6FFF6EDE7FFF5EDE6FFF5EDE6FFF5ECE7FFF5ECE6FFF5ECE6FFF5ECE6FFF5EC
            E6FFF5ECE6FFF5ECE6FFF5ECE5FFF5ECE5FFF5ECE6FFF5EBE5FFF5ECE5FFF5EC
            E5FFF5EBE5FFF5EBE5FFF5EBE5FFF8F2EEFFAC7E6FFF0000001800000013B489
            7AFFFAF6F3FFF6EEE8FFF6EEE7FFF5EDE8FFF7F1ECFFF7F0ECFFF6EDE7FFF6ED
            E8FFF5EDE7FFF5EEE7FFF6EDE7FFF5EDE7FFF6EDE7FFF5EDE7FFF6EDE7FFF6EC
            E6FFF7F0EAFFF5EEE7FFF7EFEBFFF5ECE6FFF5ECE6FFF5EDE6FFF5EDE6FFF7F0
            EAFFF6EDE7FFF7EFE9FFF5ECE5FFF9F3EFFFAD8071FF0000001700000012B58B
            7CFFFBF7F5FFF7EEE8FFF6EEE8FF4B3A32FF4A3933FFF7F1ECFFF6EEE8FFF6EE
            E8FFF6EEE8FFF6EDE8FFF6EDE8FFF6EEE8FFF6EDE8FFF6EEE8FFF6EEE7FF4938
            31FFD6CDC9FF493731FFF7F0EBFFF5EDE7FFF5EDE7FFF6EDE7FF493730FFD6CD
            C8FF493730FFF7EFEBFFF6EDE6FFFAF4F0FFAE8172FF0000001600000011B78C
            7EFFFBF8F6FFF7EFEAFFF7EEE9FF544139FF4C3A33FFF8F1EDFFF7EFE9FFF7F1
            EDFFF6EEEAFFF7F2EDFFF6EFE9FFF7F1EDFFF7F1EDFFF6EEE9FFF7F1ECFF4B3A
            32FFD8CFCAFF4A3932FFF7F1ECFFF6EEE8FFF7F1ECFFF7F1ECFF4B3932FFD8CE
            CAFF493831FFF7F1ECFFF6EDE8FFF9F5F1FFAF8274FF0000001500000010B88E
            80FFFCF9F7FFF7F0EAFFF7F0EBFF554239FF4D3B33FFF8F2EEFF4D3B33FFD8D0
            CAFF4D3B33FFF8F2EDFF4D3A33FF4C3B33FFF8F2EDFF4C3B33FFD9D0CBFF4D3B
            34FFD8D0CBFF4B3A33FFF7F1EDFF4B3933FF4B3A33FFF7F1EDFF4B3A33FFD8CF
            CAFF4B3932FFF8F1EDFFF6EEE8FFFAF6F3FFB08475FF0000001400000010B990
            82FFFCF9F7FFF7F0EBFFF7F0EBFF56433AFF4E3C34FFF9F3EEFF503D35FFDAD1
            CCFF4D3C34FFF8F2EEFF55423AFF4D3B33FFF8F2EEFF4F3D34FFD9D1CBFF4E3C
            34FFD9D1CBFF4D3B33FFF8F2EDFF534039FF4C3B33FFF8F2EDFF4D3C34FFD9D0
            CBFF4B3A33FFF7F2EDFFF6EFE9FFFAF6F4FFB18777FF000000130000000FBB92
            84FFFDFAF8FFF8F1ECFFF7F1ECFF58453BFF503E36FFF8F3EFFF513E36FFDAD1
            CDFF4F3D35FFF9F2EFFF57443BFF4E3C34FFF8F2EFFF503D35FFDAD1CCFF503D
            35FFDAD1CCFF4D3B34FFF8F2EEFF55423AFF4D3B33FFF8F2EDFF4F3C34FFD9D1
            CBFF4D3B33FFF8F2EDFFF7EFEAFFFBF7F5FFB38979FF000000130000000EBC94
            86FFFDFBF9FFF9F2EEFFF9F2EDFF59473CFF513F37FFF9F3F0FF523F37FFDBD2
            CEFF503E36FFF9F3F0FF58453BFF503E35FFF8F3EFFF513E37FFDAD2CDFF513E
            36FFDBD2CDFF4F3D35FFF9F3EFFF56433AFF4E3C34FFF8F2EEFF4F3D35FFDAD1
            CDFF4E3C33FFF8F2EEFFF7F0EBFFFBF8F6FFB48A7BFF000000120000000DBE97
            88FFFDFCFAFFF8F3EFFFF9F3EEFF5B473DFF524037FFF9F4F1FF534139FFDCD4
            CFFF523F37FFFAF5F0FF5A473DFF513F36FFF9F4F1FF524137FFDBD3CEFF5240
            37FFDBD2CEFF503F36FFF9F4F0FF58453CFF503E35FFF9F4EFFF513F36FFDAD2
            CEFF4F3D35FFF9F3EFFFF8F1ECFFFCF9F7FFB68C7DFF000000110000000CBF98
            8AFFFDFCFBFFF9F3EFFFF9F4EFFF5D493FFF544037FFFAF6F2FF554239FFDBD5
            D0FF534037FFFAF5F2FF5B483EFF524037FFFAF5F1FF544238FFDCD4CFFF5341
            38FFDBD3CFFF523F36FFF9F4F1FF5A463DFF523F37FFF9F4F1FF524037FFDCD3
            CFFF503E36FFF9F4F0FFF8F1EDFFFCFAF8FFB88D7FFF000000100000000CC09A
            8DFFFEFCFCFFFAF4F1FFF9F4F0FF5E4A3FFF554238FFFAF6F2FF564339FFDCD6
            D0FF544238FFFAF6F2FF5D4A3EFF534138FFFAF6F2FF554339FFDCD5D0FF5543
            39FFDBD5D0FF534037FFFAF5F2FF5C483EFF524037FFF9F5F1FF544239FFDCD3
            CFFF523F37FFF9F4F1FFF8F3EEFFFDFBF9FFB99081FF0000000F0000000BC29C
            8EFFFEFDFCFFFAF5F2FFFAF5F1FF5F4C40FF564339FFFBF7F3FF57443AFFDDD7
            D1FF554339FFFAF7F3FF5F4A40FF554239FFFAF7F2FF57443AFFDDD6D0FF5643
            39FFDDD5D1FF544138FFFAF6F2FF5D493EFF544137FFFAF5F2FF554339FFDCD5
            D0FF524038FFFAF5F2FFF9F3EFFFFDFBFAFFBA9283FF0000000E0000000AC39E
            90FFFEFDFDFFFAF6F3FFFAF6F2FF614D41FF56443BFFFBF7F4FF58453BFFDED7
            D2FF56443AFFFBF7F3FF604C41FF56443AFFFBF7F3FF57453AFFDDD7D1FF5744
            3BFFDDD6D1FF564339FFFAF7F3FF5E4B3FFF554338FFFBF6F3FF564339FFDDD6
            D1FF544238FFFAF6F2FFF9F4F0FFFDFCFBFFBB9385FF0000000D00000009C4A0
            92FFFEFEFDFFFBF7F4FFFAF6F3FF624D42FF58453BFFFCF7F5FF5A473CFFDED7
            D3FF57443BFFFCF7F5FF614D41FF56443BFFFBF7F4FF58453BFFDED7D3FF5845
            3BFFDED7D2FF56443AFFFAF7F4FF5F4C41FF56443AFFFBF7F4FF57443AFFDED7
            D1FF554339FFFBF7F4FFF9F5F2FFFDFCFBFFBD9588FF0000000D00000008C5A1
            94FFFEFEFEFFFCF7F4FFFBF7F4FF634F43FF58463BFFFCF8F6FF5A473CFFDFD8
            D4FF58453BFFFCF8F6FF624E42FF57453BFFFCF8F6FF59463CFFDED8D3FF5946
            3CFFDFD7D3FF57443AFFFBF8F5FF614D42FF57443BFFFBF7F4FF58463BFFDED7
            D3FF56443AFFFBF7F4FFFAF5F2FFFEFDFCFFBE9789FF0000000C00000008C7A3
            96FFFFFEFEFFFCF8F6FFFBF8F6FF634F43FF59463BFFFCF8F6FF5B483DFFDED7
            D3FF59463BFFFBF8F5FF634E43FF59453BFFFBF7F4FF5A473DFFDED7D3FF5A47
            3DFFDED7D3FF58453BFFFBF6F4FF624E42FF58453BFFFAF7F4FF5A463CFFDED7
            D2FF57453AFFFAF6F3FFFAF6F3FFFEFDFCFFBF998BFF0000000B00000007C8A5
            97FFFFFEFEFFFCF8F7FFFCF8F6FFFCF8F6FFFBF8F6FFFCF8F6FFFCF8F6FFFBF8
            F6FFFCF8F6FFFBF8F6FFFBF9F6FFFCF8F6FFFBF8F5FFFBF7F5FFFBF8F6FFFBF7
            F5FFFBF8F5FFFBF8F5FFFBF7F5FFFCF7F5FFFBF7F4FFFBF7F4FFFBF7F5FFFBF7
            F5FFFBF7F4FFFBF7F5FFFBF7F5FFFEFDFDFFC19B8DFF0000000A00000006CAA6
            99FFFFFFFEFFFCFAF7FFFCF9F7FFFCFAF7FFFCF9F8FFFCF9F7FFFCF9F7FFFCF9
            F6FFFCF9F6FFFCF9F6FFFCF9F7FFFBF9F7FFFCF9F6FFFCF9F7FFFCF9F6FFFCF8
            F6FFFCF8F6FFFCF8F6FFFBF9F6FFFBF8F6FFFCF8F5FFFBF8F6FFFCF8F5FFFBF8
            F6FFFBF8F5FFFBF8F6FFFCF8F5FFFEFEFDFFC39D8FFF0000000A00000006CAA8
            9AFFFFFFFFFFFDFAF8FFFDFAF8FFFCFAF8FFFCFAF8FFFCFAF8FFFCF9F8FFFCFA
            F8FFFCFAF8FFFDF9F8FFFCFAF7FFFCFAF7FFFCF9F7FFFCF9F7FFFCF9F7FFFCF9
            F7FFFCF9F7FFFCF9F6FFFCF9F7FFFCF9F6FFFBF8F6FFFCF9F6FFFBF8F6FFFCF9
            F7FFFCF9F6FFFBF9F6FFFBF8F6FFFFFEFEFFC49F91FF0000000900000004CBA9
            9CFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
            FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
            FEFFFFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFFFFFEFEFFFFFEFEFFFFFEFEFFFFFE
            FEFFFFFEFEFFFFFEFEFFFFFEFEFFFFFEFEFFC5A093FF00000007000000039E89
            7FBFD6B9ACFFD6B8ABFFD5B8ABFFD5B8ABFFD5B8ABFFD5B8ABFFD5B7AAFFD5B7
            AAFFD4B7AAFFD4B6A9FFD4B6A9FFD4B6A9FFD3B5A8FFD3B5A8FFD3B4A7FFD3B4
            A7FFD2B4A7FFD2B3A6FFD2B3A6FFD1B3A5FFD1B2A5FFD1B1A4FFD0B1A4FFD0B0
            A3FFCFB0A2FFCFAFA2FFCFAEA1FFCEAEA1FF998176C000000005000000010000
            0002000000030000000400000004000000040000000400000004000000050000
            0005000000050000000500000005000000050000000500000005000000050000
            0005000000050000000500000005000000060000000600000006000000060000
            0006000000060000000600000006000000060000000400000002000000000000
            0000000000010000000100000001000000010000000100000001000000010000
            0001000000010000000100000001000000010000000100000001000000010000
            0001000000010000000100000001000000010000000100000001000000010000
            0001000000010000000100000001000000010000000100000000000000000000
            0000000000000000000000000000000000000000000000000000000000000000
            0000000000000000000000000000000000000000000000000000000000000000
            0000000000000000000000000000000000000000000000000000000000000000
            0000000000000000000000000000000000000000000000000000000000000000
            0000000000000000000000000000000000000000000000000000000000000000
            0000000000000000000000000000000000000000000000000000000000000000
            0000000000000000000000000000000000000000000000000000000000000000
            0000000000000000000000000000000000000000000000000000}
          TabOrder = 6
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'HelveticaNeue'
          Font.Style = [fsBold]
          ParentFont = False
          OnClick = cxButton17Click
        end
        object cxButton4: TcxButton
          Left = 521
          Top = 46
          Width = 120
          Height = 40
          Caption = 'Hist Vendas'
          LookAndFeel.NativeStyle = False
          LookAndFeel.SkinName = 'Metropolis'
          OptionsImage.Glyph.Data = {
            36100000424D3610000000000000360000002800000020000000200000000100
            2000000000000010000000000000000000000000000000000000000000000000
            0000000000000000000100000002000000060000000A0000000E000000100000
            0010000000100000001100000011000000110000001200000012000000120000
            0012000000130000001300000013000000130000001300000013000000110000
            000D000000080000000300000001000000000000000000000000000000000000
            0000000000000000000200000009000000180000002A000000360000003C0000
            003F000000400000004200000043000000440000004600000047000000470000
            0048000000490000004A0000004A0000004B0000004B0000004B000000460000
            0039000000230000000D00000003000000000000000000000000000000000000
            0000000000010000000500000017011C2F7C033E69D705528AFF045189FF0550
            88FF045087FF044F86FF044E85FF044D85FF044C84FF044C83FF054B82FF044B
            82FF044A81FF044A80FF054980FF054980FF04487FFF04487EFF04477EFF043C
            6AEA0118298D0000002300000009000000010000000000000000000000000000
            0000000000010000000800000025044877E4208EBDFF38C3E9FF33BFE7FF30BB
            E4FF2CB7E1FF28B3DFFF24B0DCFF20ADDAFF1CA9D7FF19A6D6FF17A4D5FF14A1
            D3FF11A1D3FF0FA1D2FF0DA1D3FF0EA2D4FF0FA4D5FF10A6D7FF11A8D9FF13AC
            DCFF043C6AEA000000380000000E000000020000000000000000000000000000
            0000000000010000000A0000002C055890FF3FC9EDFF2ABFE9FF17B7E4FF16B4
            E2FF14B1DFFF13AEDDFF12ABDBFF11A8D9FF10A6D7FF0FA4D6FF0EA3D5FF0FA3
            D4FF0FA2D4FF0EA2D4FF0EA3D5FF10A4D6FF10A7D7FF11A9D9FF12ABDBFF13AD
            DDFF04487FFF0000004400000011000000020000000000000000000000000000
            0000000000010000000B0000002D065A92FF44CBEFFF19BCE8FF6E9CA8FF8F8F
            8FFF8C8C8CFF8B8B8BFF878787FF858585FF828282FF808080FF7D7D7DFF7C7C
            7CFF7A7A7AFF797979FF787878FF787878FF787878FF5C8795FF13AEDDFF14B0
            DFFF04487FFF0000004700000012000000020000000000000000000000000000
            0000000000010000000A0000002B065D94FF49CEF0FF1ABEEAFF909090FFFFFC
            FAFFFFFCF8FFFFFBF6FFFFFAF5FFFFF9F2FFFFF9F0FFFFF7EEFFFFF7ECFFFFF5
            EAFFFFF4E8FFFFF4E6FFFFF2E4FFFFF2E3FFFFF2E2FF787878FF14AFDFFF15B2
            E1FF044980FF0000004700000012000000020000000000000000000000000000
            0000000000010000000A00000029065F96FF4ED0F1FF1AC0EBFF909090FFFFFD
            FAFFFFFCF8FFFFFBF6FFFFFAF5FFFFF9F3FFFFF8F1FFFFF7EEFFFFF7ECFFFFF5
            EAFFFFF5E8FFFFF4E7FFFFF3E5FFFFF2E4FFFFF2E2FF787878FF15B3E1FF16B5
            E3FF054A81FF0000004500000011000000020000000000000000000000000000
            0000000000010000000900000027076299FF53D3F3FF1CC2EDFF909090FFFFFD
            FAFFFFFCF8FFFFFBF7FFFFFAF5FFFFFAF3FFFFF8F1FFFFF8EFFFFFF7EDFFFFF5
            EAFFFFF5E9FFFFF4E7FFFFF4E6FFFFF3E4FFFFF2E3FF787878FF16B6E3FF17B7
            E5FF044B82FF0000004300000011000000020000000000000000000000000000
            000000000001000000080000002407639BFF57D5F5FF1CC4EFFF909090FFFFFD
            FAFFFFFCF9FFFFFCF7FFFFFAF5FFFFF9F4FFFFF9F1FFFFF8EFFFFFF6EDFFFFF6
            EBFFFFF5EAFFFFF4E9FFFFF3E7FFFFF4E5FFFFF3E5FF797979FF18B8E6FF18BA
            E7FF044C83FF0000004100000010000000020000000000000000000000000000
            000000000001000000080000002207679EFF5CD8F6FF1DC7F1FF919191FFFFFD
            FBFFFFFCF9FFFFFCF8FFFFFBF6FFFFFAF4FFFFF9F2FFFFF8F0FFFFF7EFFFFFF6
            EDFFFFF6EBFFFFF5EAFFFFF4E8FFFFF4E7FFFFF3E6FF7A7A7AFF19BCE8FF1ABE
            EAFF044D84FF0000003F00000010000000020000000000000000000000000000
            000000000001000000070000001F076AA0FF61DAF7FF1EC9F2FF939393FFFFFD
            FCFFFFFDF9FFDFB895FFDCB38DFFD6AA83FFD0A277FFCA986DFFFFF7EFFFFFF7
            EEFFFFF6ECFFFFF5EBFFFFF6EAFFFFF5E9FFFFF5E9FF7C7C7CFF1ABFEBFF1BC1
            ECFF054E85FF0000003D0000000F000000020000000000000000000000000000
            000000000001000000070000001D096EA4FF6ADDF9FF24CCF4FF939393FFFFFD
            FCFFFFFDFBFFFFFCF9FFFFFBF8FFFFFAF6FFFFFAF4FFFFF9F2FFFFF8F1FFFFF7
            EFFFFFF7EEFFFFF6ECFFFFF6ECFFFFF5EBFFFFF6EAFF7D7D7DFF1BC2EDFF1CC4
            EEFF055087FF0000003A0000000F000000010000000000000000000000000000
            000000000001000000060000001A0970A6FF73E1FAFF2DD1F7FF959595FFFFFE
            FCFFFFFDFBFFDEB692FFDAB08BFFD6AA81FFD0A076FFCA996CFFC59163FFC08B
            5CFFBD8859FFBB8556FFB88354FFFFF6ECFFFFF6ECFF808080FF1DC5F0FF1EC7
            F1FF055188FF000000380000000E000000010000000000000000000000000000
            00000000000000000005000000170A74AAFF7DE4FCFF36D4F9FF959595FFFFFE
            FEFFFFFDFCFFFFFDFBFFFFFCFAFFFFFCF8FFFFFBF6FFFFFAF5FFFFFAF4FFFFF9
            F3FFFFF8F1FFFFF8F0FFFFF8EFFFFFF7EEFFFFF7EEFF828282FF1EC8F2FF1FCA
            F3FF05538AFF000000350000000D000000010000000000000000000000000000
            00000000000000000005000000150B78ADFF88E8FDFF40D8FAFF979797FFFFFE
            FEFFFFFEFDFFDFB794FFDBB38DFFD9AD86FFD5A77EFFD09F76FFCB9A6EFFC896
            69FFC59365FFC39164FFC39163FFFFF8F0FFFFF8F1FF858585FF1FCCF4FF20CC
            F5FF05558CFF000000320000000C000000010000000000000000000000000000
            00000000000000000004000000120B7BB0FF91EAFEFF4CDCFCFF989898FFFFFF
            FEFFFFFFFEFFFFFEFCFFFFFDFBFFFFFCFAFFFFFCF9FFFFFCF8FFFFFBF7FFFFFB
            F6FFFFFAF5FFFFF9F4FFFFFAF3FFFFFAF3FFFFF9F3FF878787FF21CEF6FF21CF
            F7FF05578EFF0000002F0000000C000000010000000000000000000000000000
            000000000000000000030000000F0B7FB4FF9BEDFEFF58E0FDFF999999FFFFFF
            FFFFFFFEFEFFE2BC9BFFDFB894FFDDB490FFDBB08AFFD9AE87FFD5A981FFD3A5
            7DFFD2A37BFFD1A279FFD0A27AFFFFFAF4FFFFFBF4FF898989FF22D1F9FF22D2
            F9FF055990FF0000002C0000000B000000010000000000000000000000000000
            000000000000000000030000000D0C83B7FFA5EFFFFF64E3FEFF9B9B9BFFFFFF
            FFFFFFFFFFFFFFFEFFFFFFFEFDFFFFFEFDFFFFFEFBFFFFFDFAFFFFFCFAFFFFFC
            F9FFFFFCF9FFFFFCF8FFFDF9F5FFFAF6F3FFFCF8F4FF8C8C8CFF23D3FBFF23D4
            FBFF065B92FF000000280000000A000000010000000000000000000000000000
            000000000000000000020000000A0D88BBFFAFF1FFFF70E6FFFF9C9C9CFFFFFF
            FFFFFFFFFFFFE6C2A3FFE4BF9EFFE2BC9BFFE0B997FFDFB794FFDEB692FFDDB5
            92FFDAB492FFD3AE8FFFD2AF8EFFF4F1EFFFF8F5F2FF8E8E8EFF24D5FCFF24D6
            FDFF075D94FF0000002500000009000000010000000000000000000000000000
            00000000000000000002000000090F8BBFFFB8F2FFFF7DE8FFFF9E9E9EFFFFFF
            FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFEFFFFFEFEFFFFFEFEFFF8F7F5FFE6E5
            E3FFDEDDDCFFE4E3E1FFEAE8E6FFF0EEECFFF5F3F0FF909090FF25D6FDFF25D8
            FEFF075F97FF0000002100000008000000010000000000000000000000000000
            00000000000000000001000000070F8FC2FFC1F4FFFF89EAFFFFA0A0A0FFFFFF
            FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF7F7F7FFDDDDDCFFCCCCCBFFD1D1
            D1FFD8D7D6FFDEDDDCFFE5E5E3FFEBEBE9FFF1F0EFFF919191FF26D7FCFF25D9
            FFFF086399FF0000001E00000008000000010000000000000000000000000000
            00000000000000000001000000051094C6FFC9F6FFFF96EDFFFFA1A1A1FFFFFF
            FFFFFFFFFFFFFFFFFFFFF8F8F8FFD4D4D4FFBCBCBCFFBFBFBFFFC4C4C4FFCBCB
            CAFFD1D1D1FFD9D8D8FFE0E0DEFFE7E7E6FFEEEDECFF919191FF27D5FAFF26D8
            FEFF08659CFF0000001A00000007000000010000000000000000000000000000
            00000000000000000001000000041198CAFFD1F7FFFFA3EFFFFFA2A2A2FFFFFF
            FFFFF9F9F9FFCFCFCFFFAEAEAEFFADADADFFB2B2B2FFB6B6B6FFBDBDBDFFC4C4
            C4FFCBCBCBFFD4D4D4FFDBDBDBFFE3E3E2FFEAEAEAFF949494FF28D3F7FF26D7
            FCFF08689EFF0000001700000006000000010000000000000000000000000000
            0000000000000000000100000003119CCDFFD8F8FFFFAFF1FFFFA6B8BCFFA295
            8DFF936F55FF9B6741FF9B5C30FF955024FF90491CFF8E4719FF8D4518FF8C44
            17FF92491CFF995424FFA06133FFA2724CFF9D8471FF7CA4ACFF2CD2F5FF26D8
            FEFF096CA1FF0000001300000005000000000000000000000000000000000000
            000000000000000000000000000212A0D1FFDFFAFFFFCCF6FFFFAFB4A8FFAA77
            4FFFBD885AFFD2A175FFE0B88FFFEBC9A2FFF0CEA6FFF0C99BFFEEC18CFFEBB7
            7BFFE2A766FFD7995BFFC6874CFFB4713AFF9B5827FF87896EFF2AD9FDFF2EDA
            FFFF096FA4FF0000000F00000004000000000000000000000000000000000000
            00000000000000000000000000010F7BA0C17DCFE9FFE3FAFFFFB78661FFEBCE
            ACFFF7DEBFFFF8E4CAFFF9E7D3FFF9E8D5FFF9E7D2FFF7E2C8FFF4DAB9FFF3D2
            A7FFF0CB95FFEFC68BFFEEC48AFFEEC389FFE2B379FF975629FF42DEFFFF21A9
            D5FF08577FC50000000900000002000000000000000000000000000000000000
            0000000000000000000000000000073848560F7EA1C114A4D4FF5E969FFFB28A
            66FFB67D52FFB47A4EFFB17549FFF9EEE3FFFDF4EAFFFCF1E2FFFBEBD6FFF9E6
            C9FFF1D7B2FF9C592DFF9A562AFF975327FF9D5F34FF807F6EFF0B7AB0FF0965
            90D80427395D0000000500000001000000000000000000000000000000000000
            0000000000000000000000000000000000000000000000000001000000020000
            0002000000030000000300000004AD784FF0ECE6DEF1FEF8EEFFFEF5E6FFF8E9
            D2FFAC7146FE0000000700000008000000080000000800000008000000080000
            0006000000040000000200000000000000000000000000000000000000000000
            0000000000000000000000000000000000000000000000000000000000000000
            000000000000000000010000000178553CA0AB9584C3FBF2E8FFFBEFE0FFE3C6
            AAFFAD8362DC0000000100000001000000020000000200000002000000020000
            0001000000010000000000000000000000000000000000000000000000000000
            0000000000000000000000000000000000000000000000000000000000000000
            00000000000000000000000000002B1F16388F6D52B5BC8A62F9C08B64FEB28C
            6DDC544638640000000000000000000000000000000000000000000000000000
            0000000000000000000000000000000000000000000000000000000000000000
            0000000000000000000000000000000000000000000000000000000000000000
            0000000000000000000000000000000000000000000000000000000000000000
            0000000000000000000000000000000000000000000000000000000000000000
            0000000000000000000000000000000000000000000000000000}
          TabOrder = 7
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'HelveticaNeue'
          Font.Style = [fsBold]
          ParentFont = False
        end
        object cxButton2: TcxButton
          Left = 397
          Top = 45
          Width = 120
          Height = 40
          Caption = 'Hist.Compras'
          LookAndFeel.NativeStyle = False
          LookAndFeel.SkinName = 'Metropolis'
          OptionsImage.Glyph.Data = {
            36100000424D3610000000000000360000002800000020000000200000000100
            2000000000000010000000000000000000000000000000000000000000000000
            000000000000000000010000000100000004000000070000000A0000000C0000
            000C0000000C0000000D0000000D0000000D0000000D0000000D0000000E0000
            000E0000000E0000000E0000000E0000000E0000000E0000000E0000000C0000
            000A000000060000000200000001000000000000000000000000000000000000
            0000000000000000000100000007000000120000001F000000290000002C0000
            002F000000300000003100000032000000330000003400000035000000350000
            0036000000370000003700000038000000380000003800000038000000340000
            002B0000001B0000000A00000002000000000000000000000000000000000000
            0000000000010000000400000011301E13726D432CD290583AFF90583AFF8F58
            39FF8F5739FF8F5839FF8F5739FF8F5739FF8F5739FF8F5739FF8F5739FF8F57
            38FF8F5638FF8E5638FF8E5638FF8F5638FF8F5637FF8E5638FF8E5538FF7747
            2EE52F1C127F0000001A00000007000000010000000000000000000000000000
            000000000001000000060000001B825439E0BB8959FFD8AA6BFFD6A869FFD7A5
            67FFD7A464FFD5A362FFD5A25FFFD4A05DFFD4A05AFFD29F57FFD29E55FFD19B
            52FFD19952FFCF994EFFCF984DFFCF984DFFCF964DFFCF964BFFCE954CFFCE95
            4AFF805237E50000002A0000000A000000010000000000000000000000000000
            00000000000100000007000000219E6747FFDAAE74FFD5A564FFD29D57FFD29D
            56FFD29D56FFD39C55FFD19C55FFD29D54FFD09B54FFD19A53FFD19A52FFD19A
            52FFD09B51FFD09951FFD09850FFD09A4FFFD0994FFFD0974FFFD0974EFFCF98
            4EFF9B6344FF000000320000000C000000010000000000000000000000000000
            00000000000100000008000000229F6A49FFDDB279FFD4A05BFFB78252FFAC76
            4DFFAB774DFFAB764CFFAB764CFFAB764CFFAB754CFFAA754BFFAA744CFFAA74
            4BFFAA734AFFAA734AFFAA7449FFAA7349FFAA7349FFB57E4CFFD19951FFD199
            51FF9C6645FF000000350000000E000000010000000000000000000000000000
            0000000000000000000800000020A06B4CFFDEB780FFD5A460FFAD794FFFFFFC
            FAFFFFFCF8FFFFFBF6FFFFFAF5FFFFF9F2FFFFF9F0FFFFF7EEFFFFF7ECFFFFF5
            EAFFFFF4E8FFFFF4E6FFFFF2E4FFFFF2E3FFFFF2E2FFAB754BFFD29B54FFD29B
            53FF9D6747FF000000350000000D000000010000000000000000000000000000
            000000000000000000070000001FA26D4EFFE0BA87FFD7A763FFAF7C53FFFFFD
            FAFFFFFCF8FFFFFBF6FFFFFAF5FFFFF9F3FFFFF8F1FFFFF7EEFFFFF7ECFFFFF5
            EAFFFFF5E8FFFFF4E7FFFFF3E5FFFFF2E4FFFFF2E2FFAD774DFFD39E57FFD29D
            56FF9F694AFF000000340000000D000000010000000000000000000000000000
            000000000000000000070000001DA37150FFE1BE8CFFD8A867FFB07E56FFFFFD
            FAFFFFFCF8FFFFFBF7FFFFFAF5FFFFFAF3FFFFF8F1FFFFF8EFFFFFF7EDFFFFF5
            EAFFFFF5E9FFFFF4E7FFFFF4E6FFFFF3E4FFFFF2E3FFAD7951FFD4A05BFFD3A0
            5AFFA06C4BFF000000320000000D000000010000000000000000000000000000
            000000000000000000060000001BA57352FFE3C293FFDAAB6CFFB18058FFFFFD
            FAFFFFFCF9FFFFFCF7FFFFFAF5FFFFF9F4FFFFF9F1FFFFF8EFFFFFF6EDFFFFF6
            EBFFFFF5EAFFFFF4E9FFFFF3E7FFFFF4E5FFFFF3E5FFB07B53FFD5A460FFD5A2
            5EFFA16E4EFF000000310000000C000000010000000000000000000000000000
            0000000000000000000600000019A67555FFE6C598FFDBAE71FFB3835BFFFFFD
            FBFFFFFCF9FFFFFCF8FFFFFBF6FFFFFAF4FFFFF9F2FFFFF8F0FFFFF7EFFFFFF6
            EDFFFFF6EBFFFFF5EAFFFFF4E8FFFFF4E7FFFFF3E6FFB17E56FFD7A763FFD7A5
            63FFA37050FF0000002F0000000C000000010000000000000000000000000000
            0000000000000000000500000018A87758FFE7C99EFFDCB175FFB5865EFFFFFD
            FCFFFFFDF9FFDFB895FFDCB38DFFD6AA83FFD0A277FFCA986DFFFFF7EFFFFFF7
            EEFFFFF6ECFFFFF5EBFFFFF6EAFFFFF5E9FFFFF5E9FFB38158FFD7A967FFD8A7
            66FFA57252FF0000002E0000000B000000010000000000000000000000000000
            0000000000000000000500000015AA7B5AFFE8CCA5FFDDB479FFB68861FFFFFD
            FCFFFFFDFBFFFFFCF9FFFFFBF8FFFFFAF6FFFFFAF4FFFFF9F2FFFFF8F1FFFFF7
            EFFFFFF7EEFFFFF6ECFFFFF6ECFFFFF5EBFFFFF6EAFFB3835CFFDAAB6BFFD9AB
            6BFFA67555FF0000002C0000000B000000010000000000000000000000000000
            0000000000000000000400000014AC7C5DFFEAD0A9FFE0B97FFFB88B65FFFFFE
            FCFFFFFDFBFFDEB692FFDAB08BFFD6AA81FFD0A076FFCA996CFFC59163FFC08B
            5CFFBD8859FFBB8556FFB88354FFFFF6ECFFFFF6ECFFB6865EFFDCAE71FFDBAE
            70FFA87858FF0000002A0000000A000000010000000000000000000000000000
            0000000000000000000400000011AD8060FFEBD3AFFFE2BA83FFBA8D68FFFFFE
            FEFFFFFDFCFFFFFDFBFFFFFCFAFFFFFCF8FFFFFBF6FFFFFAF5FFFFFAF4FFFFF9
            F3FFFFF8F1FFFFF8F0FFFFF8EFFFFFF7EEFFFFF7EEFFB78862FFDCB175FFDBB0
            74FFAA7A5AFF000000280000000A000000010000000000000000000000000000
            0000000000000000000300000010AE8262FFEDD7B4FFE3BD87FFBB906AFFFFFE
            FEFFFFFEFDFFDFB794FFDBB38DFFD9AD86FFD5A77EFFD09F76FFCB9A6EFFC896
            69FFC59365FFC39164FFC39163FFFFF8F0FFFFF8F1FFB88B65FFDEB479FFDEB4
            79FFAB7D5CFF0000002500000009000000010000000000000000000000000000
            000000000000000000030000000DB08465FFEEDAB9FFE4C18DFFBC926DFFFFFF
            FEFFFFFFFEFFFFFEFCFFFFFDFBFFFFFCFAFFFFFCF9FFFFFCF8FFFFFBF7FFFFFB
            F6FFFFFAF5FFFFF9F4FFFFFAF3FFFFFAF3FFFFF9F3FFBB8E68FFE0B97FFFDFB8
            7EFFAD805FFF0000002300000009000000010000000000000000000000000000
            000000000000000000020000000BB28767FFF0DCBEFFE5C591FFBE9571FFFFFF
            FFFFFFFEFEFFE2BC9BFFDFB894FFDDB490FFDBB08AFFD9AE87FFD5A981FFD3A5
            7DFFD2A37BFFD1A279FFD0A27AFFFFFAF4FFFFFBF4FFBB916BFFE1BA83FFE1BA
            83FFAF8161FF0000002100000008000000010000000000000000000000000000
            000000000000000000020000000AB3896AFFF1DEC2FFE7C695FFC09874FFFFFF
            FFFFFFFFFFFFFFFEFFFFFFFEFDFFFFFEFDFFFFFEFBFFFFFDFAFFFFFCFAFFFFFC
            F9FFFFFCF9FFFFFCF8FFFCF8F4FFF8F4F1FFFBF7F3FFBD936EFFE2BD88FFE2BD
            86FFB18564FF0000001E00000008000000010000000000000000000000000000
            0000000000000000000200000008B58C6CFFF2E0C6FFE8C999FFC19A77FFFFFF
            FFFFFFFFFFFFE6C2A3FFE4BF9EFFE2BC9BFFE0B997FFDFB794FFDEB692FFDDB5
            92FFD9B391FFCFAB8DFFCEAC8CFFF0EDEBFFF6F3F0FFBD9571FFE4C18DFFE3C0
            8CFFB28767FF0000001C00000007000000000000000000000000000000000000
            0000000000000000000100000007B78E6EFFF3E3CAFFEACC9EFFC39D79FFFFFF
            FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFEFFFFFEFEFFFFFEFEFFF6F5F3FFDEDD
            DBFFD3D2D1FFDBDAD8FFE3E1DFFFEBE9E7FFF1F0EDFFBD9773FFE3C490FFE6C3
            90FFB48969FF0000001900000006000000000000000000000000000000000000
            0000000000000000000100000005B89070FFF5E5CDFFECCEA1FFC4A07CFFFFFF
            FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF4F4F4FFD1D1D0FFBBBBBAFFC2C2
            C2FFCBCAC9FFD3D2D1FFDCDCDAFFE4E4E2FFECEBEAFFBB9775FFE2C394FFE6C5
            95FFB58B6BFF0000001600000006000000000000000000000000000000000000
            0000000000000000000100000004B99272FFF5E7D0FFECD1A5FFC6A27FFFFFFF
            FFFFFFFFFFFFFFFFFFFFF6F6F6FFC6C6C6FFA5A5A5FFA9A9A9FFB0B0B0FFB9B9
            B8FFC2C2C2FFCCCBCBFFD5D5D4FFDFDFDEFFE8E7E6FFBA9777FFE2C596FFE6C8
            97FFB68E6EFF0000001400000005000000000000000000000000000000000000
            0000000000000000000100000003BB9475FFF6E9D3FFEDD3A8FFC7A481FFFFFF
            FFFFF7F7F7FFBFBFBFFF939393FF929292FF989898FF9E9E9EFFA7A7A7FFB0B0
            B0FFBABABAFFC5C5C5FFCFCFCFFFD9D9D8FFE3E3E3FFB9997AFFE1C49AFFE6C9
            9CFFB79170FF0000001100000004000000000000000000000000000000000000
            0000000000000000000000000002BC9676FFF7EBD6FFEED6ACFFD2B28CFFB998
            77FF7E6C5DFF7E6958FF7A614FFF735746FF6C503FFF6A4E3CFF694D3BFF684C
            3AFF6E513FFF765A47FF816651FF90755EFFA5896EFFC0A382FFE0C59DFFE8CE
            9FFFB99272FF0000000E00000004000000000000000000000000000000000000
            0000000000000000000000000002BD9878FFF7ECD8FFF4E1C2FFC0A789FF9278
            65FF9E8876FFB5A291FFC7B8A7FFD4C7B8FFD9CCBCFFD6C7B5FFD0BEAAFFC9B5
            9DFFBDA58CFFB19981FFA18871FF8E745FFF785D4AFFA1886DFFE8CFA4FFECD2
            A8FFBA9474FF0000000B00000003000000000000000000000000000000000000
            00000000000000000000000000018F735BC0DBC3AAFFF7ECD8FF9E8877FFD9CB
            BBFFE6DCD0FFEAE2D8FFEDE6DEFFEEE7E0FFEDE6DEFFE8E0D6FFE2D8CBFFDCCF
            BEFFD4C5B0FFD0C0A9FFCFBFA8FFCFBEA8FFC1AF99FF765C4AFFEFD7B1FFD5B7
            93FF8D7259C40000000700000002000000000000000000000000000000000000
            00000000000000000000000000003F34295690755DC0BE9B7BFFB1937AFFA38D
            7BFF978170FF957E6DFF917968FFF3EEEAFFF7F4F0FFF4F0EAFFEFE9E1FFEAE2
            D7FFDDD3C5FF7A604FFF785D4CFF755A49FF7E6553FFA28871FFBD9878FF9F7F
            64D73F33285B0000000300000001000000000000000000000000000000000000
            0000000000000000000000000000000000000000000000000001000000010000
            0002000000020000000200000003907B6BF0E8E5E2F1F9F7F3FFF6F3EDFFECE6
            DDFF8C7665FE0000000500000006000000060000000600000006000000060000
            0005000000030000000100000000000000000000000000000000000000000000
            0000000000000000000000000000000000000000000000000000000000000000
            000000000000000000000000000165584EA09E968FC3F5F1EEFFF2EDE8FFD1C6
            BBFF958578DC0000000100000001000000010000000100000001000000010000
            0001000000010000000000000000000000000000000000000000000000000000
            0000000000000000000000000000000000000000000000000000000000000000
            000000000000000000000000000025201D387C6F65B5A08D7DF9A38E7FFE9C8D
            81DC4C4641640000000000000000000000000000000000000000000000000000
            0000000000000000000000000000000000000000000000000000000000000000
            0000000000000000000000000000000000000000000000000000000000000000
            0000000000000000000000000000000000000000000000000000000000000000
            0000000000000000000000000000000000000000000000000000000000000000
            0000000000000000000000000000000000000000000000000000}
          TabOrder = 8
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'HelveticaNeue'
          Font.Style = [fsBold]
          ParentFont = False
        end
        object cxButton18: TcxButton
          Left = 272
          Top = 46
          Width = 120
          Height = 40
          Caption = 'Grade'
          Enabled = False
          LookAndFeel.NativeStyle = False
          LookAndFeel.SkinName = 'Metropolis'
          OptionsImage.Glyph.Data = {
            36100000424D3610000000000000360000002800000020000000200000000100
            2000000000000010000000000000000000000000000000000000000000000000
            0000000000000000000000000000000000000000000000000000000000000000
            0000000000000000000000000000000000000000000000000000000000000000
            0000000000000000000000000000000000000000000000000000000000000000
            0000000000000000000000000000000000000000000000000000000000000000
            0000000000000000000000000000000000000000000000000000000000000000
            0000000000000000000000000000000000000000000000000000000000000000
            0000000000000000000000000000000000000000000000000000000000000000
            0000000000000000000000000000000000000000000000000000000000000000
            0000000000000000000000000000000000000000000000000000000000000000
            0000000000000000000000000000000000000000000000000000000000008484
            84FF848484FF848484FF848484FF848484FF848484FF848484FF848484FF8484
            84FF848484FF848484FF848484FF848484FF0000000000000000000000000000
            0000000000000000000000000000000000000000000000000000000000000000
            0000000000000000000000000000000000000000000000000000000000008484
            84FF000000000000000000000000000000000000000000000000000000000000
            0000000000000000000000000000848484FF0000000000000000000000000000
            0000000000000000000000000000000000000000000000000000000000000000
            0000000000000000000000000000000000000000000000000000000000008484
            84FF000000000000000000000000000000000000000000000000000000000000
            0000000000000000000000000000848484FF0000000000000000000000000000
            0000000000000000000000000000000000000000000000000000000000000000
            0000000000000000000000000000000000000000000000000000000000008484
            84FF000000000000000000000000000000000000000000000000000000000000
            0000000000000000000000000000848484FF0000000000000000000000000000
            0000000000000000000000000000000000000000000000000000000000000000
            0000000000000000000000000000000000000000000000000000000000008484
            84FF000000000000000000000000000000000000000000000000000000000000
            0000000000000000000000000000848484FF0000000000000000000000000000
            0000000000000000000000000000000000000000000072C4EEFF72C4EEFF72C4
            EEFF72C4EEFF72C4EEFF72C4EEFF72C4EEFF72C4EEFF72C4EEFF72C4EEFF72C4
            EEFF72C4EEFF72C4EEFF72C4EEFF72C4EEFF72C4EEFF72C4EEFF72C4EEFF0000
            0000000000000000000000000000848484FF0000000000000000000000000000
            0000000000000000000000000000000000000000000072C4EEFF72C4EEFF72C4
            EEFF72C4EEFF72C4EEFF72C4EEFF72C4EEFF72C4EEFF72C4EEFF72C4EEFF72C4
            EEFF72C4EEFF72C4EEFF72C4EEFF72C4EEFF72C4EEFF72C4EEFF72C4EEFF0000
            0000000000000000000000000000848484FF0000000000000000000000000000
            0000000000000000000000000000000000000000000072C4EEFF72C4EEFF72C4
            EEFF72C4EEFF72C4EEFF72C4EEFF72C4EEFF72C4EEFF72C4EEFF72C4EEFF72C4
            EEFF72C4EEFF72C4EEFF72C4EEFF72C4EEFF72C4EEFF72C4EEFF72C4EEFF0000
            0000000000000000000000000000848484FF0000000000000000000000000000
            0000000000000000000000000000000000000000000072C4EEFF72C4EEFF72C4
            EEFF72C4EEFF72C4EEFF72C4EEFF72C4EEFF72C4EEFF72C4EEFF72C4EEFF72C4
            EEFF72C4EEFF72C4EEFF72C4EEFF72C4EEFF72C4EEFF72C4EEFF72C4EEFF0000
            0000000000000000000000000000848484FF0000000000000000000000000000
            0000000000000000000000000000000000000000000072C4EEFF72C4EEFF72C4
            EEFF72C4EEFF72C4EEFF72C4EEFF72C4EEFF72C4EEFF72C4EEFF72C4EEFF72C4
            EEFF72C4EEFF72C4EEFF72C4EEFF72C4EEFF72C4EEFF72C4EEFF72C4EEFF0000
            0000000000000000000000000000848484FF0000000000000000000000000000
            0000000000000000000000000000000000000000000072C4EEFF72C4EEFF72C4
            EEFF72C4EEFF72C4EEFF72C4EEFF72C4EEFF72C4EEFF72C4EEFF72C4EEFF72C4
            EEFF72C4EEFF72C4EEFF72C4EEFF72C4EEFF72C4EEFF72C4EEFF72C4EEFF0000
            0000000000000000000000000000848484FF0000000000000000000000000000
            0000000000000000000000000000000000000000000072C4EEFF72C4EEFF72C4
            EEFF72C4EEFF72C4EEFF72C4EEFF72C4EEFF72C4EEFF72C4EEFF72C4EEFF72C4
            EEFF72C4EEFF72C4EEFF72C4EEFF72C4EEFF72C4EEFF72C4EEFF72C4EEFF0000
            0000000000000000000000000000848484FF0000000000000000000000000000
            0000000000000000000000000000000000000000000072C4EEFF72C4EEFF72C4
            EEFF72C4EEFF72C4EEFF72C4EEFF72C4EEFF72C4EEFF72C4EEFF72C4EEFF72C4
            EEFF72C4EEFF72C4EEFF72C4EEFF72C4EEFF72C4EEFF72C4EEFF72C4EEFF8484
            84FF848484FF848484FF848484FF848484FF0000000000000000000000000000
            0000000000000000000000000000000000000000000072C4EEFF72C4EEFF72C4
            EEFF72C4EEFF72C4EEFF72C4EEFF72C4EEFF72C4EEFF72C4EEFF72C4EEFF72C4
            EEFF72C4EEFF72C4EEFF72C4EEFF72C4EEFF72C4EEFF72C4EEFF72C4EEFF0000
            0000000000000000000000000000000000000000000000000000000000000000
            0000000000000000000000000000000000000000000072C4EEFF72C4EEFF72C4
            EEFF72C4EEFF72C4EEFF72C4EEFF72C4EEFF72C4EEFF72C4EEFF72C4EEFF72C4
            EEFF72C4EEFF72C4EEFF72C4EEFF72C4EEFF72C4EEFF72C4EEFF72C4EEFF0000
            0000000000000000000000000000000000000000000000000000000000000000
            0000848484FF848484FF848484FF848484FF848484FF72C4EEFF72C4EEFF72C4
            EEFF72C4EEFF72C4EEFF72C4EEFF72C4EEFF72C4EEFF72C4EEFF72C4EEFF72C4
            EEFF72C4EEFF72C4EEFF72C4EEFF72C4EEFF72C4EEFF72C4EEFF72C4EEFF0000
            0000000000000000000000000000000000000000000000000000000000000000
            0000848484FF0000000000000000000000000000000072C4EEFF72C4EEFF72C4
            EEFF72C4EEFF72C4EEFF72C4EEFF72C4EEFF72C4EEFF72C4EEFF72C4EEFF72C4
            EEFF72C4EEFF72C4EEFF72C4EEFF72C4EEFF72C4EEFF72C4EEFF72C4EEFF0000
            0000000000000000000000000000000000000000000000000000000000000000
            0000848484FF0000000000000000000000000000000072C4EEFF72C4EEFF72C4
            EEFF72C4EEFF72C4EEFF72C4EEFF72C4EEFF72C4EEFF72C4EEFF72C4EEFF72C4
            EEFF72C4EEFF72C4EEFF72C4EEFF72C4EEFF72C4EEFF72C4EEFF72C4EEFF0000
            0000000000000000000000000000000000000000000000000000000000000000
            0000848484FF0000000000000000000000000000000072C4EEFF72C4EEFF72C4
            EEFF72C4EEFF72C4EEFF72C4EEFF72C4EEFF72C4EEFF72C4EEFF72C4EEFF72C4
            EEFF72C4EEFF72C4EEFF72C4EEFF72C4EEFF72C4EEFF72C4EEFF72C4EEFF0000
            0000000000000000000000000000000000000000000000000000000000000000
            0000848484FF0000000000000000000000000000000072C4EEFF72C4EEFF72C4
            EEFF72C4EEFF72C4EEFF72C4EEFF72C4EEFF72C4EEFF72C4EEFF72C4EEFF72C4
            EEFF72C4EEFF72C4EEFF72C4EEFF72C4EEFF72C4EEFF72C4EEFF72C4EEFF0000
            0000000000000000000000000000000000000000000000000000000000000000
            0000848484FF0000000000000000000000000000000072C4EEFF72C4EEFF72C4
            EEFF72C4EEFF72C4EEFF72C4EEFF72C4EEFF72C4EEFF72C4EEFF72C4EEFF72C4
            EEFF72C4EEFF72C4EEFF72C4EEFF72C4EEFF72C4EEFF72C4EEFF72C4EEFF0000
            0000000000000000000000000000000000000000000000000000000000000000
            0000848484FF0000000000000000000000000000000072C4EEFF72C4EEFF72C4
            EEFF72C4EEFF72C4EEFF72C4EEFF72C4EEFF72C4EEFF72C4EEFF72C4EEFF72C4
            EEFF72C4EEFF72C4EEFF72C4EEFF72C4EEFF72C4EEFF72C4EEFF72C4EEFF0000
            0000000000000000000000000000000000000000000000000000000000000000
            0000848484FF0000000000000000000000000000000072C4EEFF72C4EEFF72C4
            EEFF72C4EEFF72C4EEFF72C4EEFF72C4EEFF72C4EEFF72C4EEFF72C4EEFF72C4
            EEFF72C4EEFF72C4EEFF72C4EEFF72C4EEFF72C4EEFF72C4EEFF72C4EEFF0000
            0000000000000000000000000000000000000000000000000000000000000000
            0000848484FF0000000000000000000000000000000000000000000000000000
            000000000000000000000000000000000000848484FF00000000000000000000
            0000000000000000000000000000000000000000000000000000000000000000
            0000000000000000000000000000000000000000000000000000000000000000
            0000848484FF0000000000000000000000000000000000000000000000000000
            000000000000000000000000000000000000848484FF00000000000000000000
            0000000000000000000000000000000000000000000000000000000000000000
            0000000000000000000000000000000000000000000000000000000000000000
            0000848484FF0000000000000000000000000000000000000000000000000000
            000000000000000000000000000000000000848484FF00000000000000000000
            0000000000000000000000000000000000000000000000000000000000000000
            0000000000000000000000000000000000000000000000000000000000000000
            0000848484FF0000000000000000000000000000000000000000000000000000
            000000000000000000000000000000000000848484FF00000000000000000000
            0000000000000000000000000000000000000000000000000000000000000000
            0000000000000000000000000000000000000000000000000000000000000000
            0000848484FF848484FF848484FF848484FF848484FF848484FF848484FF8484
            84FF848484FF848484FF848484FF848484FF848484FF00000000000000000000
            0000000000000000000000000000000000000000000000000000000000000000
            0000000000000000000000000000000000000000000000000000000000000000
            0000000000000000000000000000000000000000000000000000000000000000
            0000000000000000000000000000000000000000000000000000000000000000
            0000000000000000000000000000000000000000000000000000000000000000
            0000000000000000000000000000000000000000000000000000000000000000
            0000000000000000000000000000000000000000000000000000000000000000
            0000000000000000000000000000000000000000000000000000000000000000
            0000000000000000000000000000000000000000000000000000000000000000
            0000000000000000000000000000000000000000000000000000}
          TabOrder = 9
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'HelveticaNeue'
          Font.Style = [fsBold]
          ParentFont = False
        end
      end
      object Panel4: TPanel
        Left = 759
        Top = -32
        Width = 606
        Height = 438
        TabOrder = 2
        object GroupBox23: TGroupBox
          Left = 4
          Top = 37
          Width = 587
          Height = 148
          Caption = '  Tributa'#231#227'o ICMS'
          Color = clGradientInactiveCaption
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Height = -15
          Font.Name = 'Tahoma'
          Font.Style = [fsBold]
          ParentBackground = False
          ParentColor = False
          ParentFont = False
          TabOrder = 0
          object Label22: TLabel
            Left = 20
            Top = 26
            Width = 44
            Height = 18
            Caption = '(CST):'
            Font.Charset = ANSI_CHARSET
            Font.Color = clWindowText
            Font.Height = -15
            Font.Name = 'Tahoma'
            Font.Style = []
            ParentFont = False
          end
          object Label2: TLabel
            Left = 12
            Top = 53
            Width = 52
            Height = 18
            Caption = 'Origem:'
            Font.Charset = ANSI_CHARSET
            Font.Color = clWindowText
            Font.Height = -15
            Font.Name = 'Tahoma'
            Font.Style = []
            ParentFont = False
          end
          object Label52: TLabel
            Left = 13
            Top = 83
            Width = 51
            Height = 18
            Caption = 'Al'#237'q. %:'
            Font.Charset = ANSI_CHARSET
            Font.Color = clWindowText
            Font.Height = -15
            Font.Name = 'Tahoma'
            Font.Style = []
            ParentFont = False
          end
          object Label61: TLabel
            Left = 13
            Top = 117
            Width = 83
            Height = 18
            Caption = 'Lucro ST %:'
            Font.Charset = ANSI_CHARSET
            Font.Color = clWindowText
            Font.Height = -15
            Font.Name = 'Tahoma'
            Font.Style = []
            ParentFont = False
          end
          object Label53: TLabel
            Left = 109
            Top = 83
            Width = 142
            Height = 18
            Caption = 'Redu'#231#227'o Al'#237'q ICMS%:'
            Font.Charset = ANSI_CHARSET
            Font.Color = clWindowText
            Font.Height = -15
            Font.Name = 'Tahoma'
            Font.Style = []
            ParentFont = False
          end
          object Label62: TLabel
            Left = 177
            Top = 117
            Width = 78
            Height = 18
            Caption = 'C'#243'd. Comb:'
            Font.Charset = ANSI_CHARSET
            Font.Color = clWindowText
            Font.Height = -15
            Font.Name = 'Tahoma'
            Font.Style = []
            ParentFont = False
          end
          object Label56: TLabel
            Left = 357
            Top = 83
            Width = 125
            Height = 18
            Caption = 'Valor Pauta BC ST:'
            Font.Charset = ANSI_CHARSET
            Font.Color = clWindowText
            Font.Height = -15
            Font.Name = 'Tahoma'
            Font.Style = []
            ParentFont = False
          end
          object Label60: TLabel
            Left = 335
            Top = 117
            Width = 52
            Height = 18
            Caption = 'G'#234'nero:'
            Font.Charset = ANSI_CHARSET
            Font.Color = clWindowText
            Font.Height = -15
            Font.Name = 'Tahoma'
            Font.Style = []
            ParentFont = False
          end
          object Label57: TLabel
            Left = 469
            Top = 117
            Width = 29
            Height = 18
            Caption = 'Leis:'
            Font.Charset = ANSI_CHARSET
            Font.Color = clWindowText
            Font.Height = -15
            Font.Name = 'Tahoma'
            Font.Style = []
            ParentFont = False
          end
          object edALIQ_ICMS: TEdit
            Left = 68
            Top = 81
            Width = 36
            Height = 26
            BiDiMode = bdRightToLeft
            Font.Charset = ANSI_CHARSET
            Font.Color = clWindowText
            Font.Height = -15
            Font.Name = 'Helvetica Neue'
            Font.Style = [fsBold]
            ParentBiDiMode = False
            ParentFont = False
            TabOrder = 6
            OnExit = edALIQ_ICMSExit
            OnKeyPress = edALIQ_ICMSKeyPress
          end
          object aliq_lucro_st: TEdit
            Left = 103
            Top = 113
            Width = 64
            Height = 26
            BiDiMode = bdRightToLeft
            Font.Charset = ANSI_CHARSET
            Font.Color = clWindowText
            Font.Height = -15
            Font.Name = 'Helvetica Neue'
            Font.Style = [fsBold]
            ParentBiDiMode = False
            ParentFont = False
            TabOrder = 7
            OnKeyPress = aliq_lucro_stKeyPress
          end
          object edREDUCAO_ICMS: TEdit
            Left = 255
            Top = 79
            Width = 42
            Height = 26
            BiDiMode = bdRightToLeft
            Font.Charset = ANSI_CHARSET
            Font.Color = clWindowText
            Font.Height = -15
            Font.Name = 'Helvetica Neue'
            Font.Style = [fsBold]
            ParentBiDiMode = False
            ParentFont = False
            TabOrder = 8
            OnExit = edREDUCAO_ICMSExit
            OnKeyPress = edREDUCAO_ICMSKeyPress
          end
          object cod_comb: TEdit
            Left = 261
            Top = 113
            Width = 64
            Height = 26
            BiDiMode = bdRightToLeft
            Font.Charset = ANSI_CHARSET
            Font.Color = clWindowText
            Font.Height = -15
            Font.Name = 'Helvetica Neue'
            Font.Style = [fsBold]
            ParentBiDiMode = False
            ParentFont = False
            TabOrder = 9
            OnKeyPress = cod_combKeyPress
          end
          object pauta_bc: TEdit
            Left = 489
            Top = 79
            Width = 86
            Height = 26
            BiDiMode = bdRightToLeft
            Font.Charset = ANSI_CHARSET
            Font.Color = clWindowText
            Font.Height = -15
            Font.Name = 'Helvetica Neue'
            Font.Style = [fsBold]
            ParentBiDiMode = False
            ParentFont = False
            TabOrder = 10
            OnKeyPress = pauta_bcKeyPress
          end
          object edt_genero: TEdit
            Left = 394
            Top = 113
            Width = 65
            Height = 26
            BiDiMode = bdRightToLeft
            Font.Charset = ANSI_CHARSET
            Font.Color = clWindowText
            Font.Height = -15
            Font.Name = 'Helvetica Neue'
            Font.Style = [fsBold]
            ParentBiDiMode = False
            ParentFont = False
            TabOrder = 11
            OnKeyPress = edt_generoKeyPress
          end
          object edt_leis: TcxDBButtonEdit
            Left = 504
            Top = 115
            DataBinding.DataField = 'LEIS'
            ParentFont = False
            Properties.Buttons = <
              item
                Default = True
                Glyph.Data = {
                  36040000424D3604000000000000360000002800000010000000100000000100
                  2000000000000004000000000000000000000000000000000000000000000000
                  0000000000000000000000000000000000000000000000000000000000000000
                  000000000000000000020000000E0B14308329448DFB1D2F58A5000000000000
                  0000000000000000000000000000000000000000000000000000000000000000
                  0000000000020000000E0D1937883C6DB2FF5BB1F9FF325196F4000000000000
                  00000000000100000004000000090000000D0000000F0000000F0000000C0000
                  00070000000E0F1D3C864A7CBCFF73C4FFFF467CC3FF17254485000000000000
                  0002000000081C130F465A3B31BC7C5043F87F5244FF7B4E42FA57382FC11E14
                  1059112142875686C2FF88D0FFFF5186C7FF142343880000000F000000010302
                  02104A332C91946B5DFDC6ACA1FFE4D1C6FFEDDDD2FFE2D0C5FFC0A599FF855C
                  50FF6E6B7EFF98D4F8FF5B8ECBFF152545840000000D00000002000000076046
                  3DA6B39288FFE9DAD0FFDAC0A1FFCBA87AFFC49B66FFCCAA7EFFDCC2A5FFE5D2
                  C6FF9A766AFF736A77FF162747850000000E00000002000000002A201D4AAE88
                  7CFFEFE6DFFFCDA67CFFCDA26BFFE3C28CFFEDD5A2FFE7CD9EFFD3B182FFD0AE
                  88FFE7D5CAFF885F53FF25181464000000070000000000000000755B53ACDFCE
                  C9FFDDC1A8FFC99865FFE8BE83FFE9C388FFEDCA97FFEFD3A7FFF2D9B0FFD5B1
                  87FFDBBEA6FFC5ACA2FF5A3D33C10000000C0000000000000000A9877CE9F8F4
                  F2FFC79873FFDEAB77FFEFCDABFFF0D0B1FFEDC9A1FFECC69AFFEFCFA9FFE9C9
                  A4FFC89B77FFE6D6CEFF7C5448F10000000F0000000000000000C09C90FFFDFD
                  FCFFBE875FFFEDCFB9FFF5DFD2FFF2D6C1FFF1CFB4FFEDC6A4FFECC19BFFEFC8
                  A6FFC08B67FFF1E6DFFF8B6154FF0000000F0000000000000000AF9186E6F9F5
                  F4FFC69474FFE8CDC3FFF9E8E4FFF6DED2FFF3D4C2FFF0CBB2FFEBB78EFFE5B7
                  92FFC59172FFEBDFD9FF866055EE0000000D0000000000000000876F68B0E7D9
                  D4FFE2C6B7FFC89072FFFAEFF2FFF9E7E4FFF6DDD3FFF1C8B2FFEBAF88FFC98E
                  6CFFDCBBAAFFD3C0B7FF6B4F46BC00000009000000000000000026201E36CCAF
                  A7FAFBF8F7FFCF9F88FFC78E72FFE9CDC6FFEDC7B5FFDD9F79FFC88865FFCE9D
                  84FFF5EFEBFFB39387FF2A201D52000000040000000000000000000000036454
                  4F84D9C2BAFFFDFBFAFFE2C6B8FFCB977EFFC08163FFCB977DFFE0C4B4FFFAF6
                  F5FFC9B0A7FF6B564EA700000009000000010000000000000000000000000202
                  020762534D81CEB2A9FAEADDD8FFF9F5F4FFFFFFFFFFF9F5F4FFE9DCD7FFC8AC
                  A2FC62504B900404031000000002000000000000000000000000000000000000
                  000000000003241F1D3486726BADB69B91E6CCADA1FFB99C92E988736CB22822
                  1F3E000000060000000100000000000000000000000000000000}
                Kind = bkGlyph
              end>
            Style.Font.Charset = ANSI_CHARSET
            Style.Font.Color = clWindowText
            Style.Font.Height = -12
            Style.Font.Name = 'Helvetica Neue'
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
            TabOrder = 12
            Width = 71
          end
          object edICMS_CST: TEdit
            Left = 68
            Top = 23
            Width = 36
            Height = 26
            BiDiMode = bdRightToLeft
            Font.Charset = ANSI_CHARSET
            Font.Color = clWindowText
            Font.Height = -15
            Font.Name = 'Helvetica Neue'
            Font.Style = [fsBold]
            MaxLength = 3
            ParentBiDiMode = False
            ParentFont = False
            TabOrder = 0
            OnExit = edICMS_CSTExit
            OnKeyDown = edICMS_CSTKeyDown
          end
          object edICMS_CST_NOME: TEdit
            Left = 104
            Top = 23
            Width = 445
            Height = 25
            TabStop = False
            CharCase = ecUpperCase
            Color = clSilver
            Font.Charset = ANSI_CHARSET
            Font.Color = clWindowText
            Font.Height = -15
            Font.Name = 'Helvetica Neue'
            Font.Style = []
            ParentFont = False
            ReadOnly = True
            TabOrder = 1
            OnKeyDown = edGRUPOKeyDown
          end
          object cxButton5: TcxButton
            Left = 551
            Top = 22
            Width = 22
            Height = 22
            LookAndFeel.NativeStyle = False
            LookAndFeel.SkinName = 'Metropolis'
            OptionsImage.Glyph.Data = {
              36040000424D3604000000000000360000002800000010000000100000000100
              2000000000000004000000000000000000000000000000000000000000000000
              0000000000000000000000000000000000000000000000000000000000000000
              000000000000000000020000000E0B14308329448DFB1D2F58A5000000000000
              0000000000000000000000000000000000000000000000000000000000000000
              0000000000020000000E0D1937883C6DB2FF5BB1F9FF325196F4000000000000
              00000000000100000004000000090000000D0000000F0000000F0000000C0000
              00070000000E0F1D3C864A7CBCFF73C4FFFF467CC3FF17254485000000000000
              0002000000081C130F465A3B31BC7C5043F87F5244FF7B4E42FA57382FC11E14
              1059112142875686C2FF88D0FFFF5186C7FF142343880000000F000000010302
              02104A332C91946B5DFDC6ACA1FFE4D1C6FFEDDDD2FFE2D0C5FFC0A599FF855C
              50FF6E6B7EFF98D4F8FF5B8ECBFF152545840000000D00000002000000076046
              3DA6B39288FFE9DAD0FFDAC0A1FFCBA87AFFC49B66FFCCAA7EFFDCC2A5FFE5D2
              C6FF9A766AFF736A77FF162747850000000E00000002000000002A201D4AAE88
              7CFFEFE6DFFFCDA67CFFCDA26BFFE3C28CFFEDD5A2FFE7CD9EFFD3B182FFD0AE
              88FFE7D5CAFF885F53FF25181464000000070000000000000000755B53ACDFCE
              C9FFDDC1A8FFC99865FFE8BE83FFE9C388FFEDCA97FFEFD3A7FFF2D9B0FFD5B1
              87FFDBBEA6FFC5ACA2FF5A3D33C10000000C0000000000000000A9877CE9F8F4
              F2FFC79873FFDEAB77FFEFCDABFFF0D0B1FFEDC9A1FFECC69AFFEFCFA9FFE9C9
              A4FFC89B77FFE6D6CEFF7C5448F10000000F0000000000000000C09C90FFFDFD
              FCFFBE875FFFEDCFB9FFF5DFD2FFF2D6C1FFF1CFB4FFEDC6A4FFECC19BFFEFC8
              A6FFC08B67FFF1E6DFFF8B6154FF0000000F0000000000000000AF9186E6F9F5
              F4FFC69474FFE8CDC3FFF9E8E4FFF6DED2FFF3D4C2FFF0CBB2FFEBB78EFFE5B7
              92FFC59172FFEBDFD9FF866055EE0000000D0000000000000000876F68B0E7D9
              D4FFE2C6B7FFC89072FFFAEFF2FFF9E7E4FFF6DDD3FFF1C8B2FFEBAF88FFC98E
              6CFFDCBBAAFFD3C0B7FF6B4F46BC00000009000000000000000026201E36CCAF
              A7FAFBF8F7FFCF9F88FFC78E72FFE9CDC6FFEDC7B5FFDD9F79FFC88865FFCE9D
              84FFF5EFEBFFB39387FF2A201D52000000040000000000000000000000036454
              4F84D9C2BAFFFDFBFAFFE2C6B8FFCB977EFFC08163FFCB977DFFE0C4B4FFFAF6
              F5FFC9B0A7FF6B564EA700000009000000010000000000000000000000000202
              020762534D81CEB2A9FAEADDD8FFF9F5F4FFFFFFFFFFF9F5F4FFE9DCD7FFC8AC
              A2FC62504B900404031000000002000000000000000000000000000000000000
              000000000003241F1D3486726BADB69B91E6CCADA1FFB99C92E988736CB22822
              1F3E000000060000000100000000000000000000000000000000}
            PaintStyle = bpsGlyph
            TabOrder = 2
            TabStop = False
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -11
            Font.Name = 'Tahoma'
            Font.Style = [fsBold]
            ParentFont = False
            OnClick = cxButton5Click
          end
          object edCODIGO_ORIGEM_MERCADORIA: TEdit
            Left = 68
            Top = 51
            Width = 36
            Height = 26
            BiDiMode = bdRightToLeft
            Font.Charset = ANSI_CHARSET
            Font.Color = clWindowText
            Font.Height = -15
            Font.Name = 'Helvetica Neue'
            Font.Style = [fsBold]
            MaxLength = 3
            ParentBiDiMode = False
            ParentFont = False
            TabOrder = 3
            OnExit = edCODIGO_ORIGEM_MERCADORIAExit
            OnKeyDown = edCODIGO_ORIGEM_MERCADORIAKeyDown
          end
          object edCODIGO_ORIGEM_MERCADORIA_NOME: TEdit
            Left = 104
            Top = 51
            Width = 445
            Height = 25
            TabStop = False
            CharCase = ecUpperCase
            Color = clSilver
            Font.Charset = ANSI_CHARSET
            Font.Color = clWindowText
            Font.Height = -15
            Font.Name = 'Helvetica Neue'
            Font.Style = []
            ParentFont = False
            ReadOnly = True
            TabOrder = 4
            OnKeyDown = edGRUPOKeyDown
          end
          object cxButton7: TcxButton
            Left = 551
            Top = 51
            Width = 22
            Height = 22
            LookAndFeel.NativeStyle = False
            LookAndFeel.SkinName = 'Metropolis'
            OptionsImage.Glyph.Data = {
              36040000424D3604000000000000360000002800000010000000100000000100
              2000000000000004000000000000000000000000000000000000000000000000
              0000000000000000000000000000000000000000000000000000000000000000
              000000000000000000020000000E0B14308329448DFB1D2F58A5000000000000
              0000000000000000000000000000000000000000000000000000000000000000
              0000000000020000000E0D1937883C6DB2FF5BB1F9FF325196F4000000000000
              00000000000100000004000000090000000D0000000F0000000F0000000C0000
              00070000000E0F1D3C864A7CBCFF73C4FFFF467CC3FF17254485000000000000
              0002000000081C130F465A3B31BC7C5043F87F5244FF7B4E42FA57382FC11E14
              1059112142875686C2FF88D0FFFF5186C7FF142343880000000F000000010302
              02104A332C91946B5DFDC6ACA1FFE4D1C6FFEDDDD2FFE2D0C5FFC0A599FF855C
              50FF6E6B7EFF98D4F8FF5B8ECBFF152545840000000D00000002000000076046
              3DA6B39288FFE9DAD0FFDAC0A1FFCBA87AFFC49B66FFCCAA7EFFDCC2A5FFE5D2
              C6FF9A766AFF736A77FF162747850000000E00000002000000002A201D4AAE88
              7CFFEFE6DFFFCDA67CFFCDA26BFFE3C28CFFEDD5A2FFE7CD9EFFD3B182FFD0AE
              88FFE7D5CAFF885F53FF25181464000000070000000000000000755B53ACDFCE
              C9FFDDC1A8FFC99865FFE8BE83FFE9C388FFEDCA97FFEFD3A7FFF2D9B0FFD5B1
              87FFDBBEA6FFC5ACA2FF5A3D33C10000000C0000000000000000A9877CE9F8F4
              F2FFC79873FFDEAB77FFEFCDABFFF0D0B1FFEDC9A1FFECC69AFFEFCFA9FFE9C9
              A4FFC89B77FFE6D6CEFF7C5448F10000000F0000000000000000C09C90FFFDFD
              FCFFBE875FFFEDCFB9FFF5DFD2FFF2D6C1FFF1CFB4FFEDC6A4FFECC19BFFEFC8
              A6FFC08B67FFF1E6DFFF8B6154FF0000000F0000000000000000AF9186E6F9F5
              F4FFC69474FFE8CDC3FFF9E8E4FFF6DED2FFF3D4C2FFF0CBB2FFEBB78EFFE5B7
              92FFC59172FFEBDFD9FF866055EE0000000D0000000000000000876F68B0E7D9
              D4FFE2C6B7FFC89072FFFAEFF2FFF9E7E4FFF6DDD3FFF1C8B2FFEBAF88FFC98E
              6CFFDCBBAAFFD3C0B7FF6B4F46BC00000009000000000000000026201E36CCAF
              A7FAFBF8F7FFCF9F88FFC78E72FFE9CDC6FFEDC7B5FFDD9F79FFC88865FFCE9D
              84FFF5EFEBFFB39387FF2A201D52000000040000000000000000000000036454
              4F84D9C2BAFFFDFBFAFFE2C6B8FFCB977EFFC08163FFCB977DFFE0C4B4FFFAF6
              F5FFC9B0A7FF6B564EA700000009000000010000000000000000000000000202
              020762534D81CEB2A9FAEADDD8FFF9F5F4FFFFFFFFFFF9F5F4FFE9DCD7FFC8AC
              A2FC62504B900404031000000002000000000000000000000000000000000000
              000000000003241F1D3486726BADB69B91E6CCADA1FFB99C92E988736CB22822
              1F3E000000060000000100000000000000000000000000000000}
            PaintStyle = bpsGlyph
            TabOrder = 5
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -11
            Font.Name = 'Tahoma'
            Font.Style = [fsBold]
            ParentFont = False
            OnClick = cxButton7Click
          end
        end
        object GroupBox22: TGroupBox
          Left = 4
          Top = 188
          Width = 587
          Height = 148
          Caption = '  Geral '
          Color = clGradientInactiveCaption
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Height = -15
          Font.Name = 'Tahoma'
          Font.Style = [fsBold]
          ParentBackground = False
          ParentColor = False
          ParentFont = False
          TabOrder = 1
          object Label16: TLabel
            Left = 21
            Top = 52
            Width = 36
            Height = 18
            Caption = 'NCM:'
            Font.Charset = ANSI_CHARSET
            Font.Color = clWindowText
            Font.Height = -15
            Font.Name = 'Tahoma'
            Font.Style = []
            ParentFont = False
          end
          object Label17: TLabel
            Left = 17
            Top = 85
            Width = 40
            Height = 18
            Caption = 'CEST:'
            Font.Charset = ANSI_CHARSET
            Font.Color = clWindowText
            Font.Height = -15
            Font.Name = 'Tahoma'
            Font.Style = []
            ParentFont = False
          end
          object Label29: TLabel
            Left = 25
            Top = 117
            Width = 32
            Height = 18
            Caption = 'ANP:'
            Font.Charset = ANSI_CHARSET
            Font.Color = clWindowText
            Font.Height = -15
            Font.Name = 'Tahoma'
            Font.Style = []
            ParentFont = False
          end
          object lbl_anp: TLabel
            Left = 206
            Top = 117
            Width = 603
            Height = 14
            Caption = 
              '- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - ' +
              '- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - ' +
              '- - - '
            Font.Charset = ANSI_CHARSET
            Font.Color = clGrayText
            Font.Height = -12
            Font.Name = 'Tahoma'
            Font.Style = [fsBold]
            ParentFont = False
          end
          object NCM: TEdit
            Left = 62
            Top = 48
            Width = 104
            Height = 26
            BiDiMode = bdLeftToRight
            Font.Charset = ANSI_CHARSET
            Font.Color = clWindowText
            Font.Height = -15
            Font.Name = 'Helvetica Neue'
            Font.Style = [fsBold]
            ParentBiDiMode = False
            ParentFont = False
            TabOrder = 0
            OnExit = NCMExit
            OnKeyPress = NCMKeyPress
            OnKeyUp = NCMKeyUp
          end
          object edt_cest: TEdit
            Left = 62
            Top = 81
            Width = 129
            Height = 26
            BiDiMode = bdLeftToRight
            Font.Charset = ANSI_CHARSET
            Font.Color = clWindowText
            Font.Height = -15
            Font.Name = 'Helvetica Neue'
            Font.Style = [fsBold]
            ParentBiDiMode = False
            ParentFont = False
            TabOrder = 3
            OnKeyPress = edt_cestKeyPress
            OnKeyUp = edt_cestKeyUp
          end
          object edt_anp: TEdit
            Left = 62
            Top = 113
            Width = 104
            Height = 26
            BiDiMode = bdLeftToRight
            Font.Charset = ANSI_CHARSET
            Font.Color = clWindowText
            Font.Height = -15
            Font.Name = 'Helvetica Neue'
            Font.Style = [fsBold]
            ParentBiDiMode = False
            ParentFont = False
            TabOrder = 2
          end
          object btn_ncm: TcxButton
            Left = 168
            Top = 47
            Width = 23
            Height = 27
            LookAndFeel.NativeStyle = False
            LookAndFeel.SkinName = 'Metropolis'
            OptionsImage.Glyph.Data = {
              36040000424D3604000000000000360000002800000010000000100000000100
              2000000000000004000000000000000000000000000000000000000000000000
              0000000000000000000000000000000000000000000000000000000000000000
              000000000000000000020000000E0B14308329448DFB1D2F58A5000000000000
              0000000000000000000000000000000000000000000000000000000000000000
              0000000000020000000E0D1937883C6DB2FF5BB1F9FF325196F4000000000000
              00000000000100000004000000090000000D0000000F0000000F0000000C0000
              00070000000E0F1D3C864A7CBCFF73C4FFFF467CC3FF17254485000000000000
              0002000000081C130F465A3B31BC7C5043F87F5244FF7B4E42FA57382FC11E14
              1059112142875686C2FF88D0FFFF5186C7FF142343880000000F000000010302
              02104A332C91946B5DFDC6ACA1FFE4D1C6FFEDDDD2FFE2D0C5FFC0A599FF855C
              50FF6E6B7EFF98D4F8FF5B8ECBFF152545840000000D00000002000000076046
              3DA6B39288FFE9DAD0FFDAC0A1FFCBA87AFFC49B66FFCCAA7EFFDCC2A5FFE5D2
              C6FF9A766AFF736A77FF162747850000000E00000002000000002A201D4AAE88
              7CFFEFE6DFFFCDA67CFFCDA26BFFE3C28CFFEDD5A2FFE7CD9EFFD3B182FFD0AE
              88FFE7D5CAFF885F53FF25181464000000070000000000000000755B53ACDFCE
              C9FFDDC1A8FFC99865FFE8BE83FFE9C388FFEDCA97FFEFD3A7FFF2D9B0FFD5B1
              87FFDBBEA6FFC5ACA2FF5A3D33C10000000C0000000000000000A9877CE9F8F4
              F2FFC79873FFDEAB77FFEFCDABFFF0D0B1FFEDC9A1FFECC69AFFEFCFA9FFE9C9
              A4FFC89B77FFE6D6CEFF7C5448F10000000F0000000000000000C09C90FFFDFD
              FCFFBE875FFFEDCFB9FFF5DFD2FFF2D6C1FFF1CFB4FFEDC6A4FFECC19BFFEFC8
              A6FFC08B67FFF1E6DFFF8B6154FF0000000F0000000000000000AF9186E6F9F5
              F4FFC69474FFE8CDC3FFF9E8E4FFF6DED2FFF3D4C2FFF0CBB2FFEBB78EFFE5B7
              92FFC59172FFEBDFD9FF866055EE0000000D0000000000000000876F68B0E7D9
              D4FFE2C6B7FFC89072FFFAEFF2FFF9E7E4FFF6DDD3FFF1C8B2FFEBAF88FFC98E
              6CFFDCBBAAFFD3C0B7FF6B4F46BC00000009000000000000000026201E36CCAF
              A7FAFBF8F7FFCF9F88FFC78E72FFE9CDC6FFEDC7B5FFDD9F79FFC88865FFCE9D
              84FFF5EFEBFFB39387FF2A201D52000000040000000000000000000000036454
              4F84D9C2BAFFFDFBFAFFE2C6B8FFCB977EFFC08163FFCB977DFFE0C4B4FFFAF6
              F5FFC9B0A7FF6B564EA700000009000000010000000000000000000000000202
              020762534D81CEB2A9FAEADDD8FFF9F5F4FFFFFFFFFFF9F5F4FFE9DCD7FFC8AC
              A2FC62504B900404031000000002000000000000000000000000000000000000
              000000000003241F1D3486726BADB69B91E6CCADA1FFB99C92E988736CB22822
              1F3E000000060000000100000000000000000000000000000000}
            TabOrder = 1
            OnClick = btn_ncmClick
          end
          object mmNCM: TcxMemo
            Left = 206
            Top = 47
            Lines.Strings = (
              'cxMemo1')
            ParentFont = False
            Properties.ReadOnly = True
            Style.Font.Charset = ANSI_CHARSET
            Style.Font.Color = clGrayText
            Style.Font.Height = -11
            Style.Font.Name = 'Helvetica Neue'
            Style.Font.Style = [fsBold]
            Style.IsFontAssigned = True
            TabOrder = 4
            Height = 66
            Width = 367
          end
          object btn_anp: TcxButton
            Left = 168
            Top = 113
            Width = 23
            Height = 26
            LookAndFeel.NativeStyle = False
            LookAndFeel.SkinName = 'Metropolis'
            OptionsImage.Glyph.Data = {
              36040000424D3604000000000000360000002800000010000000100000000100
              2000000000000004000000000000000000000000000000000000000000000000
              0000000000000000000000000000000000000000000000000000000000000000
              000000000000000000020000000E0B14308329448DFB1D2F58A5000000000000
              0000000000000000000000000000000000000000000000000000000000000000
              0000000000020000000E0D1937883C6DB2FF5BB1F9FF325196F4000000000000
              00000000000100000004000000090000000D0000000F0000000F0000000C0000
              00070000000E0F1D3C864A7CBCFF73C4FFFF467CC3FF17254485000000000000
              0002000000081C130F465A3B31BC7C5043F87F5244FF7B4E42FA57382FC11E14
              1059112142875686C2FF88D0FFFF5186C7FF142343880000000F000000010302
              02104A332C91946B5DFDC6ACA1FFE4D1C6FFEDDDD2FFE2D0C5FFC0A599FF855C
              50FF6E6B7EFF98D4F8FF5B8ECBFF152545840000000D00000002000000076046
              3DA6B39288FFE9DAD0FFDAC0A1FFCBA87AFFC49B66FFCCAA7EFFDCC2A5FFE5D2
              C6FF9A766AFF736A77FF162747850000000E00000002000000002A201D4AAE88
              7CFFEFE6DFFFCDA67CFFCDA26BFFE3C28CFFEDD5A2FFE7CD9EFFD3B182FFD0AE
              88FFE7D5CAFF885F53FF25181464000000070000000000000000755B53ACDFCE
              C9FFDDC1A8FFC99865FFE8BE83FFE9C388FFEDCA97FFEFD3A7FFF2D9B0FFD5B1
              87FFDBBEA6FFC5ACA2FF5A3D33C10000000C0000000000000000A9877CE9F8F4
              F2FFC79873FFDEAB77FFEFCDABFFF0D0B1FFEDC9A1FFECC69AFFEFCFA9FFE9C9
              A4FFC89B77FFE6D6CEFF7C5448F10000000F0000000000000000C09C90FFFDFD
              FCFFBE875FFFEDCFB9FFF5DFD2FFF2D6C1FFF1CFB4FFEDC6A4FFECC19BFFEFC8
              A6FFC08B67FFF1E6DFFF8B6154FF0000000F0000000000000000AF9186E6F9F5
              F4FFC69474FFE8CDC3FFF9E8E4FFF6DED2FFF3D4C2FFF0CBB2FFEBB78EFFE5B7
              92FFC59172FFEBDFD9FF866055EE0000000D0000000000000000876F68B0E7D9
              D4FFE2C6B7FFC89072FFFAEFF2FFF9E7E4FFF6DDD3FFF1C8B2FFEBAF88FFC98E
              6CFFDCBBAAFFD3C0B7FF6B4F46BC00000009000000000000000026201E36CCAF
              A7FAFBF8F7FFCF9F88FFC78E72FFE9CDC6FFEDC7B5FFDD9F79FFC88865FFCE9D
              84FFF5EFEBFFB39387FF2A201D52000000040000000000000000000000036454
              4F84D9C2BAFFFDFBFAFFE2C6B8FFCB977EFFC08163FFCB977DFFE0C4B4FFFAF6
              F5FFC9B0A7FF6B564EA700000009000000010000000000000000000000000202
              020762534D81CEB2A9FAEADDD8FFF9F5F4FFFFFFFFFFF9F5F4FFE9DCD7FFC8AC
              A2FC62504B900404031000000002000000000000000000000000000000000000
              000000000003241F1D3486726BADB69B91E6CCADA1FFB99C92E988736CB22822
              1F3E000000060000000100000000000000000000000000000000}
            TabOrder = 5
            OnClick = btn_anpClick
          end
        end
        object GroupBox19: TGroupBox
          Left = 4
          Top = 339
          Width = 587
          Height = 82
          Caption = '  Tributa'#231#227'o PIS / COFINS'
          Color = clGradientInactiveCaption
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Height = -15
          Font.Name = 'Tahoma'
          Font.Style = [fsBold]
          ParentBackground = False
          ParentColor = False
          ParentFont = False
          TabOrder = 2
          object Label14: TLabel
            Left = 37
            Top = 25
            Width = 27
            Height = 18
            Caption = 'PIS:'
            Font.Charset = ANSI_CHARSET
            Font.Color = clWindowText
            Font.Height = -15
            Font.Name = 'Tahoma'
            Font.Style = []
            ParentFont = False
          end
          object Label30: TLabel
            Left = 7
            Top = 54
            Width = 57
            Height = 18
            Caption = 'COFINS:'
            Font.Charset = ANSI_CHARSET
            Font.Color = clWindowText
            Font.Height = -15
            Font.Name = 'Tahoma'
            Font.Style = []
            ParentFont = False
          end
          object cstpis: TcxDBLookupComboBox
            Left = 67
            Top = 21
            DataBinding.DataField = 'PIS_CST'
            ParentFont = False
            Properties.ButtonGlyph.Data = {
              36040000424D3604000000000000360000002800000010000000100000000100
              2000000000000004000000000000000000000000000000000000000000000000
              0000000000000000000000000000000000000000000000000000000000000000
              0000000000000000000000000000000000000000000000000000000000000000
              0000000000000000000000000000000000000000000000000000000000000000
              0000000000000000000000000000000000000000000000000000000000000000
              0000000000000000000000000000000000000000000000000000000000000000
              0000000000000000000000000000000000000000000000000000000000000000
              000000000000000000000000000000000000000000001D1D1C3B1716162D0000
              0000000000000000000000000000000000000000000000000000000000000000
              00000000000000000000000000000000000000000000636362D1565554B30000
              0000000000000000000000000000000000000000000000000000000000000000
              0000000000000000000000000000000000001C1C1B37626263FF656565FB1211
              1123000000000000000000000000000000000000000000000000000000000000
              000000000000000000000000000000000000595857B83E3E3FFF464646FF4C4C
              4B9C000000000000000000000000000000000000000000000000000000000000
              00000000000000000000000000001E1D1D3B666565FF2E2E2EFF303031FF6A6A
              6AFC0E0E0E1C0000000000000000000000000000000000000000000000000000
              00000000000000000000000000005A5959B9414142FF343434C7343433D34848
              48FF4D4D4B9B0000000000000000000000000000000000000000000000000000
              000000000000000000001B1A1934616161FF2F2F2FAF010101030707070E3333
              34C3696969FF0E0E0E1C00000000000000000000000000000000000000000000
              000000000000000000005D5D5CC33B3B3B9B0000000100000000000000000404
              0408484848B850504EA500000000000000000000000000000000000000000000
              0000000000001B1B1A3636363676000000000000000000000000000000000000
              0000000000003C3C3C831C1B1A37000000000000000000000000000000000000
              00000000000010100F2100000000000000000000000000000000000000000000
              000000000000000000010E0E0E1D000000000000000000000000000000000000
              0000000000000000000000000000000000000000000000000000000000000000
              0000000000000000000000000000000000000000000000000000000000000000
              0000000000000000000000000000000000000000000000000000000000000000
              0000000000000000000000000000000000000000000000000000000000000000
              0000000000000000000000000000000000000000000000000000000000000000
              0000000000000000000000000000000000000000000000000000}
            Properties.DropDownListStyle = lsFixedList
            Properties.DropDownRows = 10
            Properties.DropDownWidth = 751
            Properties.KeyFieldNames = 'CODIGO'
            Properties.ListColumns = <
              item
                FieldName = 'DESCRICAO'
              end>
            Properties.ListOptions.ShowHeader = False
            Properties.ListSource = DS_CSTPIS
            Style.Font.Charset = DEFAULT_CHARSET
            Style.Font.Color = clWindowText
            Style.Font.Height = -15
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
            TabOrder = 1
            Width = 508
          end
          object chk_monofasico: TcxCheckBox
            Left = 225
            Top = -1
            Caption = 'Monof'#225'sico'
            ParentBackground = False
            ParentColor = False
            Properties.OnChange = cxchckbx1PropertiesChange
            Style.BorderColor = clMaroon
            Style.Color = clGradientInactiveCaption
            Style.LookAndFeel.NativeStyle = False
            Style.LookAndFeel.SkinName = 'Office2013White'
            Style.TextColor = clRed
            StyleDisabled.LookAndFeel.NativeStyle = False
            StyleDisabled.LookAndFeel.SkinName = 'Office2013White'
            StyleFocused.LookAndFeel.NativeStyle = False
            StyleFocused.LookAndFeel.SkinName = 'Office2013White'
            StyleHot.LookAndFeel.NativeStyle = False
            StyleHot.LookAndFeel.SkinName = 'Office2013White'
            TabOrder = 0
          end
          object cstcofins: TcxDBLookupComboBox
            Left = 67
            Top = 50
            DataBinding.DataField = 'COFINS_CST'
            ParentFont = False
            Properties.ButtonGlyph.Data = {
              36040000424D3604000000000000360000002800000010000000100000000100
              2000000000000004000000000000000000000000000000000000000000000000
              0000000000000000000000000000000000000000000000000000000000000000
              0000000000000000000000000000000000000000000000000000000000000000
              0000000000000000000000000000000000000000000000000000000000000000
              0000000000000000000000000000000000000000000000000000000000000000
              0000000000000000000000000000000000000000000000000000000000000000
              0000000000000000000000000000000000000000000000000000000000000000
              000000000000000000000000000000000000000000001D1D1C3B1716162D0000
              0000000000000000000000000000000000000000000000000000000000000000
              00000000000000000000000000000000000000000000636362D1565554B30000
              0000000000000000000000000000000000000000000000000000000000000000
              0000000000000000000000000000000000001C1C1B37626263FF656565FB1211
              1123000000000000000000000000000000000000000000000000000000000000
              000000000000000000000000000000000000595857B83E3E3FFF464646FF4C4C
              4B9C000000000000000000000000000000000000000000000000000000000000
              00000000000000000000000000001E1D1D3B666565FF2E2E2EFF303031FF6A6A
              6AFC0E0E0E1C0000000000000000000000000000000000000000000000000000
              00000000000000000000000000005A5959B9414142FF343434C7343433D34848
              48FF4D4D4B9B0000000000000000000000000000000000000000000000000000
              000000000000000000001B1A1934616161FF2F2F2FAF010101030707070E3333
              34C3696969FF0E0E0E1C00000000000000000000000000000000000000000000
              000000000000000000005D5D5CC33B3B3B9B0000000100000000000000000404
              0408484848B850504EA500000000000000000000000000000000000000000000
              0000000000001B1B1A3636363676000000000000000000000000000000000000
              0000000000003C3C3C831C1B1A37000000000000000000000000000000000000
              00000000000010100F2100000000000000000000000000000000000000000000
              000000000000000000010E0E0E1D000000000000000000000000000000000000
              0000000000000000000000000000000000000000000000000000000000000000
              0000000000000000000000000000000000000000000000000000000000000000
              0000000000000000000000000000000000000000000000000000000000000000
              0000000000000000000000000000000000000000000000000000000000000000
              0000000000000000000000000000000000000000000000000000000000000000
              0000000000000000000000000000000000000000000000000000}
            Properties.DropDownListStyle = lsFixedList
            Properties.DropDownRows = 10
            Properties.DropDownWidth = 751
            Properties.KeyFieldNames = 'CODIGO'
            Properties.ListColumns = <
              item
                FieldName = 'DESCRICAO'
              end>
            Properties.ListOptions.ShowHeader = False
            Properties.ListSource = DS_CSTCOFINS
            Style.Font.Charset = DEFAULT_CHARSET
            Style.Font.Color = clWindowText
            Style.Font.Height = -15
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
            Width = 508
          end
        end
      end
      object pnControles: TPanel
        Left = 878
        Top = 542
        Width = 502
        Height = 49
        Color = 8421440
        ParentBackground = False
        TabOrder = 3
        object bControleIncluir: TcxButton
          Left = 5
          Top = 5
          Width = 120
          Height = 40
          Hint = 'Come'#231'ar um novo cadastro.'
          Caption = '&Incluir'
          LookAndFeel.Kind = lfFlat
          LookAndFeel.NativeStyle = False
          LookAndFeel.SkinName = 'Metropolis'
          OptionsImage.Glyph.Data = {
            36100000424D3610000000000000360000002800000020000000200000000100
            2000000000000010000000000000000000000000000000000000000000000000
            0000000000000000000000000000000000000000000000000000000000000000
            0000000000000000000000000000000000000000000000000000000000000000
            0000000000000000000000000000000000000000000000000000000000000000
            0000000000000000000000000000000000000000000000000000000000000000
            0000000000000000000000000000000000000000000000000000000000000000
            0000000000000000000000000000000000000000000000000000000000000000
            0000000000000000000000000000000000000000000000000000000000000000
            0000000000000000000000000000000000000000000000000000000000000000
            0000000000000000000000000000000000000000000000000000000000000000
            0000000000000000000000000000000000000000000000000000000000000000
            0000000000000000000000000000000000000000000000000000000000000000
            0000000000000000000000000000000000000000000000000000000000000000
            0000000000000000000000000000000000000000000000000000000000000000
            0000000000000000000000000000000000000000000000000000000000000000
            0000000000000000000000000000000000000000000000000000000000000000
            0000000000000000000000000000000000000000000000000000000000000000
            0000000000000000000000000000000000000000000000000000000000000000
            0000000000000000000000000000000000000000000000000000000000000000
            0000000000000000000000000000000000000000000000000000000000000000
            0000000000000000000000000000000000000000000000000000000000000000
            0000000000000000000000000000000000000000000000000000000000000000
            000000000000000000000000000000000000B8824DFFB8824DFFB8824DFFB882
            4DFF000000000000000000000000000000000000000000000000000000000000
            0000000000000000000000000000000000000000000000000000000000000000
            0000000000000000000000000000000000000000000000000000000000000000
            000000000000000000000000000000000000B8824DFFB8824DFFB8824DFFB882
            4DFF000000000000000000000000000000000000000000000000000000000000
            0000000000000000000000000000000000000000000000000000000000000000
            0000000000000000000000000000000000000000000000000000000000000000
            000000000000000000000000000000000000B8824DFFB8824DFFB8824DFFB882
            4DFF000000000000000000000000000000000000000000000000000000000000
            0000000000000000000000000000000000000000000000000000000000000000
            0000000000000000000000000000000000000000000000000000000000000000
            000000000000000000000000000000000000B8824DFFB8824DFFB8824DFFB882
            4DFF000000000000000000000000000000000000000000000000000000000000
            0000000000000000000000000000000000000000000000000000000000000000
            0000000000000000000000000000000000000000000000000000000000000000
            000000000000000000000000000000000000B8824DFFB8824DFFB8824DFFB882
            4DFF000000000000000000000000000000000000000000000000000000000000
            0000000000000000000000000000000000000000000000000000000000000000
            0000000000000000000000000000000000000000000000000000000000000000
            000000000000000000000000000000000000B8824DFFB8824DFFB8824DFFB882
            4DFF000000000000000000000000000000000000000000000000000000000000
            0000000000000000000000000000000000000000000000000000000000000000
            0000000000000000000000000000000000000000000000000000000000000000
            000000000000000000000000000000000000B8824DFFB8824DFFB8824DFFB882
            4DFF000000000000000000000000000000000000000000000000000000000000
            0000000000000000000000000000000000000000000000000000000000000000
            0000000000000000000000000000000000000000000000000000000000000000
            000000000000000000000000000000000000B8824DFFB8824DFFB8824DFFB882
            4DFF000000000000000000000000000000000000000000000000000000000000
            0000000000000000000000000000000000000000000000000000000000000000
            0000000000000000000000000000000000000000000000000000000000000000
            000000000000000000000000000000000000B8824DFFB8824DFFB8824DFFB882
            4DFF000000000000000000000000000000000000000000000000000000000000
            0000000000000000000000000000000000000000000000000000000000000000
            0000000000000000000000000000B8824DFFB8824DFFB8824DFFB8824DFFB882
            4DFFB8824DFFB8824DFFB8824DFFB8824DFFB8824DFFB8824DFFB8824DFFB882
            4DFFB8824DFFB8824DFFB8824DFFB8824DFFB8824DFFB8824DFFB8824DFFB882
            4DFFB8824DFF0000000000000000000000000000000000000000000000000000
            0000000000000000000000000000B8824DFFB8824DFFB8824DFFB8824DFFB882
            4DFFB8824DFFB8824DFFB8824DFFB8824DFFB8824DFFB8824DFFB8824DFFB882
            4DFFB8824DFFB8824DFFB8824DFFB8824DFFB8824DFFB8824DFFB8824DFFB882
            4DFFB8824DFF0000000000000000000000000000000000000000000000000000
            0000000000000000000000000000B8824DFFB8824DFFB8824DFFB8824DFFB882
            4DFFB8824DFFB8824DFFB8824DFFB8824DFFB8824DFFB8824DFFB8824DFFB882
            4DFFB8824DFFB8824DFFB8824DFFB8824DFFB8824DFFB8824DFFB8824DFFB882
            4DFFB8824DFF0000000000000000000000000000000000000000000000000000
            0000000000000000000000000000B8824DFFB8824DFFB8824DFFB8824DFFB882
            4DFFB8824DFFB8824DFFB8824DFFB8824DFFB8824DFFB8824DFFB8824DFFB882
            4DFFB8824DFFB8824DFFB8824DFFB8824DFFB8824DFFB8824DFFB8824DFFB882
            4DFFB8824DFF0000000000000000000000000000000000000000000000000000
            0000000000000000000000000000000000000000000000000000000000000000
            000000000000000000000000000000000000B8824DFFB8824DFFB8824DFFB882
            4DFF000000000000000000000000000000000000000000000000000000000000
            0000000000000000000000000000000000000000000000000000000000000000
            0000000000000000000000000000000000000000000000000000000000000000
            000000000000000000000000000000000000B8824DFFB8824DFFB8824DFFB882
            4DFF000000000000000000000000000000000000000000000000000000000000
            0000000000000000000000000000000000000000000000000000000000000000
            0000000000000000000000000000000000000000000000000000000000000000
            000000000000000000000000000000000000B8824DFFB8824DFFB8824DFFB882
            4DFF000000000000000000000000000000000000000000000000000000000000
            0000000000000000000000000000000000000000000000000000000000000000
            0000000000000000000000000000000000000000000000000000000000000000
            000000000000000000000000000000000000B8824DFFB8824DFFB8824DFFB882
            4DFF000000000000000000000000000000000000000000000000000000000000
            0000000000000000000000000000000000000000000000000000000000000000
            0000000000000000000000000000000000000000000000000000000000000000
            000000000000000000000000000000000000B8824DFFB8824DFFB8824DFFB882
            4DFF000000000000000000000000000000000000000000000000000000000000
            0000000000000000000000000000000000000000000000000000000000000000
            0000000000000000000000000000000000000000000000000000000000000000
            000000000000000000000000000000000000B8824DFFB8824DFFB8824DFFB882
            4DFF000000000000000000000000000000000000000000000000000000000000
            0000000000000000000000000000000000000000000000000000000000000000
            0000000000000000000000000000000000000000000000000000000000000000
            000000000000000000000000000000000000B8824DFFB8824DFFB8824DFFB882
            4DFF000000000000000000000000000000000000000000000000000000000000
            0000000000000000000000000000000000000000000000000000000000000000
            0000000000000000000000000000000000000000000000000000000000000000
            000000000000000000000000000000000000B8824DFFB8824DFFB8824DFFB882
            4DFF000000000000000000000000000000000000000000000000000000000000
            0000000000000000000000000000000000000000000000000000000000000000
            0000000000000000000000000000000000000000000000000000000000000000
            000000000000000000000000000000000000B8824DFFB8824DFFB8824DFFB882
            4DFF000000000000000000000000000000000000000000000000000000000000
            0000000000000000000000000000000000000000000000000000000000000000
            0000000000000000000000000000000000000000000000000000000000000000
            0000000000000000000000000000000000000000000000000000000000000000
            0000000000000000000000000000000000000000000000000000000000000000
            0000000000000000000000000000000000000000000000000000000000000000
            0000000000000000000000000000000000000000000000000000000000000000
            0000000000000000000000000000000000000000000000000000000000000000
            0000000000000000000000000000000000000000000000000000000000000000
            0000000000000000000000000000000000000000000000000000000000000000
            0000000000000000000000000000000000000000000000000000000000000000
            0000000000000000000000000000000000000000000000000000000000000000
            0000000000000000000000000000000000000000000000000000000000000000
            0000000000000000000000000000000000000000000000000000000000000000
            0000000000000000000000000000000000000000000000000000000000000000
            0000000000000000000000000000000000000000000000000000000000000000
            0000000000000000000000000000000000000000000000000000000000000000
            0000000000000000000000000000000000000000000000000000000000000000
            0000000000000000000000000000000000000000000000000000000000000000
            0000000000000000000000000000000000000000000000000000000000000000
            0000000000000000000000000000000000000000000000000000000000000000
            0000000000000000000000000000000000000000000000000000}
          SpeedButtonOptions.Transparent = True
          TabOrder = 0
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Height = -16
          Font.Name = 'HelveticaNeue'
          Font.Style = [fsBold]
          ParentFont = False
          OnClick = bControleIncluirClick
        end
        object bControleAlterar: TcxButton
          Left = 129
          Top = 5
          Width = 120
          Height = 40
          Caption = '&Alterar'
          Enabled = False
          LookAndFeel.NativeStyle = False
          LookAndFeel.SkinName = 'Metropolis'
          OptionsImage.Glyph.Data = {
            36100000424D3610000000000000360000002800000020000000200000000100
            2000000000000010000000000000000000000000000000000000000000000000
            0000000000000000000000000000000000000000000000000000000000000000
            0000000000000000000000000000000000000000000000000000000000000000
            0000000000000000000000000000000000000000000000000000000000000000
            0000000000000000000000000000000000000000000000000000000000000000
            0000000000000000000000000000000000000000000000000000000000000000
            0000000000000000000000000000000000000000000000000000000000000000
            0000000000000000000000000000000000000000000000000000000000000000
            0000000000000000000000000000000000000000000000000000000000000000
            0000000000000000000000000000000000000000000000000000000000000000
            0000000000000000000000000000000000000000000000000000000000000000
            0000000000000000000000000000000000000000000000000000000000000000
            0000000000000000000000000000000000000000000000000000000000000000
            0000000000000000000000000000000000000000000000000000000000000000
            0000000000000000000000000000000000000000000000000000000000000000
            0000000000000000000000000000000000000000000000000000000000000000
            0000000000000000000000000000000000000000000000000000000000000000
            0000000000000000000000000000000000000000000000000000000000000000
            0000000000000000000000000000000000000000000000000000000000000000
            0000000000000000000000000000000000000000000000000000000000000000
            0000000000000000000000000000000000000000000000000000000000000000
            0000000000000000000000000000000000000000000000000000000000000000
            0000000000000000000000000000000000000000000000000000000000000000
            0000000000000000000000000000000000000000000000000000000000000000
            0000000000000000000000000000000000000000000000000000000000000000
            000000000000000000000000000000000000B8824DFFB8824DFFB8824DFFA272
            44E0060503090000000000000000000000000000000000000000000000000000
            0000000000000000000000000000000000000000000000000000000000000000
            0000000000000000000000000000000000000000000000000000000000000000
            000000000000000000000000000000000000B8824DFFB8824DFFA47445E31B13
            0B250B08050F3324154700000000000000000000000000000000000000000000
            0000000000000000000000000000000000000000000000000000000000000000
            0000000000000000000000000000000000000000000000000000000000000000
            000000000000000000000000000000000000B8824DFFA47445E31B130B250B08
            050F8E643BC5B6804CFC3F2C1A57000000000000000000000000000000000000
            0000000000000000000000000000000000000000000000000000000000000000
            0000000000000000000000000000000000000000000000000000000000000000
            0000000000000000000000000000000000009C6E41D81B130B250B08050F8E64
            3BC5B8824DFFB8824DFFB6804CFC3F2C1A570000000000000000000000000000
            0000000000000000000000000000000000000000000000000000000000000000
            0000000000000000000000000000000000000000000000000000000000000000
            0000000000000000000000000000000000000806030B0B08050F8E643BC5B882
            4DFFB8824DFFB8824DFFB8824DFFB6804CFC3F2C1A5700000000000000000000
            0000000000000000000000000000000000000000000000000000000000000000
            0000000000000000000000000000000000000000000000000000000000000000
            000000000000000000000000000000000000000000003A291851B7814DFEB882
            4DFFB8824DFFB8824DFFB8824DFFB8824DFFB6804CFC3F2C1A57000000000000
            0000000000000000000000000000000000000000000000000000000000000000
            0000000000000000000000000000000000000000000000000000000000000000
            000000000000000000000000000000000000000000000000000049331E65B781
            4DFEB8824DFFB8824DFFB8824DFFB8824DFFB8824DFFB6804CFC3F2C1A570000
            0000000000000000000000000000000000000000000000000000000000000000
            0000000000000000000000000000000000000000000000000000000000000000
            0000000000000000000000000000000000000000000000000000000000004933
            1E65B7814DFEB8824DFFB8824DFFB8824DFFB8824DFFB8824DFFB6804CFC3F2C
            1A57000000000000000000000000000000000000000000000000000000000000
            0000000000000000000000000000000000000000000000000000000000000000
            0000000000000000000000000000000000000000000000000000000000000000
            000049331E65B7814DFEB8824DFFB8824DFFB8824DFFB8824DFFB8824DFFB680
            4CFC3F2C1A570000000000000000000000000000000000000000000000000000
            0000000000000000000000000000000000000000000000000000000000000000
            0000000000000000000000000000000000000000000000000000000000000000
            00000000000049331E65B7814DFEB8824DFFB8824DFFB8824DFFB8824DFFB882
            4DFFB6804CFC3F2D1B5800000000000000000000000000000000000000000000
            0000000000000000000000000000000000000000000000000000000000000000
            0000000000000000000000000000000000000000000000000000000000000000
            0000000000000000000049331E65B7814DFEB8824DFFB8824DFFB8824DFFB882
            4DFFB8824DFFB6804CFC3F2D1B58000000000000000000000000000000000000
            0000000000000000000000000000000000000000000000000000000000000000
            0000000000000000000000000000000000000000000000000000000000000000
            000000000000000000000000000049331E65B7814DFEB8824DFFB8824DFFB882
            4DFFB8824DFFB8824DFFB6804CFC3F2D1B580000000000000000000000000000
            0000000000000000000000000000000000000000000000000000000000000000
            0000000000000000000000000000000000000000000000000000000000000000
            00000000000000000000000000000000000049331E65B7814DFEB8824DFFB882
            4DFFB8824DFFB8824DFFB8824DFFB6804CFC3F2D1B5800000000000000000000
            0000000000000000000000000000000000000000000000000000000000000000
            0000000000000000000000000000000000000000000000000000000000000000
            0000000000000000000000000000000000000000000049331E65B7814DFEB882
            4DFFB8824DFFB8824DFFB8824DFFB8824DFF9A6D40D503020104000000000000
            0000000000000000000000000000000000000000000000000000000000000000
            0000000000000000000000000000000000000000000000000000000000000000
            000000000000000000000000000000000000000000000000000049331E65B781
            4DFEB8824DFFB8824DFFB8824DFF9C6E41D8120D0819110C07173928184F0000
            0000000000000000000000000000000000000000000000000000000000000000
            0000000000000000000000000000000000000000000000000000000000000000
            0000000000000000000000000000000000000000000000000000000000004933
            1E65B7814DFEB8824DFF9C6E41D8120D0819110C07179A6D40D5B6804CFC3F2D
            1B58000000000000000000000000000000000000000000000000000000000000
            0000000000000000000000000000000000000000000000000000000000000000
            0000000000000000000000000000000000000000000000000000000000000000
            000049331E659B6E41D7120D0819110C07179A6D40D5B8824DFFB8824DFFB680
            4CFC3F2D1B580000000000000000000000000000000000000000000000000000
            0000000000000000000000000000000000000000000000000000000000000000
            0000000000000000000000000000000000000000000000000000000000000000
            00000000000005040207100B07169A6D40D5B8824DFFB8824DFFB8824DFFB882
            4DFF795532A70000000000000000000000000000000000000000000000000000
            0000000000000000000000000000000000000000000000000000000000000000
            0000000000000000000000000000000000000000000000000000000000000000
            000000000000000000003F2D1B58B7814DFEB8824DFFB8824DFFB8824DFF7B57
            33AA020201030000000000000000000000000000000000000000000000000000
            0000000000000000000000000000000000000000000000000000000000000000
            0000000000000000000000000000000000000000000000000000000000000000
            000000000000000000000000000049331E65B7814DFEB8824DFF7B5733AA0202
            0103000000000000000000000000000000000000000000000000000000000000
            0000000000000000000000000000000000000000000000000000000000000000
            0000000000000000000000000000000000000000000000000000000000000000
            00000000000000000000000000000000000049331E657A5633A9020201030000
            0000000000000000000000000000000000000000000000000000000000000000
            0000000000000000000000000000000000000000000000000000000000000000
            0000000000000000000000000000000000000000000000000000000000000000
            0000000000000000000000000000000000000000000000000000000000000000
            0000000000000000000000000000000000000000000000000000000000000000
            0000000000000000000000000000000000000000000000000000000000000000
            0000000000000000000000000000000000000000000000000000000000000000
            0000000000000000000000000000000000000000000000000000000000000000
            0000000000000000000000000000000000000000000000000000000000000000
            0000000000000000000000000000000000000000000000000000000000000000
            0000000000000000000000000000000000000000000000000000000000000000
            0000000000000000000000000000000000000000000000000000000000000000
            0000000000000000000000000000000000000000000000000000000000000000
            0000000000000000000000000000000000000000000000000000000000000000
            0000000000000000000000000000000000000000000000000000000000000000
            0000000000000000000000000000000000000000000000000000000000000000
            0000000000000000000000000000000000000000000000000000000000000000
            0000000000000000000000000000000000000000000000000000000000000000
            0000000000000000000000000000000000000000000000000000000000000000
            0000000000000000000000000000000000000000000000000000000000000000
            0000000000000000000000000000000000000000000000000000}
          SpeedButtonOptions.Transparent = True
          TabOrder = 1
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Height = -16
          Font.Name = 'HelveticaNeue'
          Font.Style = [fsBold]
          Font.Quality = fqDraft
          ParentFont = False
          OnClick = bControleAlterarClick
        end
        object bControleCancelar: TcxButton
          Left = 253
          Top = 5
          Width = 120
          Height = 40
          Hint = 'Cancelar cadastro.'
          Caption = '&Cancelar'
          Enabled = False
          LookAndFeel.Kind = lfFlat
          LookAndFeel.NativeStyle = False
          LookAndFeel.SkinName = 'Metropolis'
          OptionsImage.Glyph.Data = {
            36100000424D3610000000000000360000002800000020000000200000000100
            2000000000000010000000000000000000000000000000000000000000000000
            0000000000000000000000000000000000000000000000000000000000000000
            0000000000000000000000000000000000000000000000000000000000000000
            0000000000000000000000000000000000000000000000000000000000000000
            0000000000000000000000000000000000000000000000000000000000000000
            0000000000000000000000000000000000000000000000000000000000000000
            0000000000000000000000000000000000000000000000000000000000000000
            0000000000000000000000000000000000000000000000000000000000000000
            0000000000000000000000000000000000000000000000000000000000000000
            0000000000000000000000000000000000000000000000000000000000000000
            0000000000000000000000000000000000000000000000000000000000000000
            0000000000000000000000000000000000000000000000000000000000000000
            0000000000000000000000000000000000000000000000000000000000000000
            0000000000000000000000000000000000000000000000000000000000000000
            0000000000000000000000000000000000000000000000000000000000000000
            0000000000000000000000000000000000000000000000000000000000000000
            0000000000000000000000000000000000000000000000000000000000000000
            0000000000000000000000000000000000000000000001010202000000000000
            0000000000000000000000000000000000000000000000000000000000000000
            0000000000000000000000000000000000000000000000000000010102020000
            0000000000000000000000000000000000000000000000000000000000000000
            00000000000000000000000000000000000005070F12354EA9C8151E424E0000
            0000000000000000000000000000000000000000000000000000000000000000
            0000000000000000000000000000000000000000000016204552354EA9C80507
            1013000000000000000000000000000000000000000000000000000000000000
            000000000000000000000000000005070F123750AECD4463D8FF4261D3F9151E
            424E000000000000000000000000000000000000000000000000000000000000
            000000000000000000000000000000000000162045524261D3F94463D8FF3750
            AECE050710130000000000000000000000000000000000000000000000000000
            0000000000000000000000000101354DA9C74463D8FF4463D8FF4463D8FF4261
            D3F9151E424E0000000000000000000000000000000000000000000000000000
            0000000000000000000000000000162045524261D3F94463D8FF4463D8FF4463
            D8FF354EA9C80000010100000000000000000000000000000000000000000000
            0000000000000000000000000000151E414D4261D3F94463D8FF4463D8FF4463
            D8FF4261D3F9151E424E00000000000000000000000000000000000000000000
            00000000000000000000162045524261D3F94463D8FF4463D8FF4463D8FF4261
            D3F9131C3E490000000000000000000000000000000000000000000000000000
            000000000000000000000000000000000000151E414D4261D3F94463D8FF4463
            D8FF4463D8FF4261D3F9151E424E000000000000000000000000000000000000
            000000000000162045524261D3F94463D8FF4463D8FF4463D8FF4261D3F9131C
            3E49000000000000000000000000000000000000000000000000000000000000
            00000000000000000000000000000000000000000000151E414D4261D3F94463
            D8FF4463D8FF4463D8FF4261D3F9151F434F0000000000000000000000000000
            0000162045524261D3F94463D8FF4463D8FF4463D8FF4261D3F9131C3E490000
            0000000000000000000000000000000000000000000000000000000000000000
            0000000000000000000000000000000000000000000000000000151E414D4261
            D3F94463D8FF4463D8FF4463D8FF4261D3F9151F434F00000000000000001620
            45524261D3F94463D8FF4463D8FF4463D8FF4261D3F9131C3E49000000000000
            0000000000000000000000000000000000000000000000000000000000000000
            000000000000000000000000000000000000000000000000000000000000151E
            414D4261D3F94463D8FF4463D8FF4463D8FF4261D3F9151F434F162045524261
            D3F94463D8FF4463D8FF4463D8FF4261D3F9131C3E4900000000000000000000
            0000000000000000000000000000000000000000000000000000000000000000
            0000000000000000000000000000000000000000000000000000000000000000
            0000151E414D4261D3F94463D8FF4463D8FF4463D8FF4261D3F94261D3F94463
            D8FF4463D8FF4463D8FF4261D3F9131C3E490000000000000000000000000000
            0000000000000000000000000000000000000000000000000000000000000000
            0000000000000000000000000000000000000000000000000000000000000000
            000000000000151E414D4261D3F94463D8FF4463D8FF4463D8FF4463D8FF4463
            D8FF4463D8FF4261D3F9131C3E49000000000000000000000000000000000000
            0000000000000000000000000000000000000000000000000000000000000000
            0000000000000000000000000000000000000000000000000000000000000000
            00000000000000000000151E414D4261D3F94463D8FF4463D8FF4463D8FF4463
            D8FF4261D3F9131C3E4900000000000000000000000000000000000000000000
            0000000000000000000000000000000000000000000000000000000000000000
            0000000000000000000000000000000000000000000000000000000000000000
            00000000000000000000162045524261D3F94463D8FF4463D8FF4463D8FF4463
            D8FF4261D3F9151F434F00000000000000000000000000000000000000000000
            0000000000000000000000000000000000000000000000000000000000000000
            0000000000000000000000000000000000000000000000000000000000000000
            000000000000162045524261D3F94463D8FF4463D8FF4463D8FF4463D8FF4463
            D8FF4463D8FF4261D3F9151F434F000000000000000000000000000000000000
            0000000000000000000000000000000000000000000000000000000000000000
            0000000000000000000000000000000000000000000000000000000000000000
            0000162045524261D3F94463D8FF4463D8FF4463D8FF4261D3F94261D3F94463
            D8FF4463D8FF4463D8FF4261D3F9151F434F0000000000000000000000000000
            0000000000000000000000000000000000000000000000000000000000000000
            0000000000000000000000000000000000000000000000000000000000001620
            45524261D3F94463D8FF4463D8FF4463D8FF4261D3F9131C3E49151E414D4261
            D3F94463D8FF4463D8FF4463D8FF4261D3F9151F434F00000000000000000000
            0000000000000000000000000000000000000000000000000000000000000000
            0000000000000000000000000000000000000000000000000000162045524261
            D3F94463D8FF4463D8FF4463D8FF4261D3F9131C3E490000000000000000151E
            414D4261D3F94463D8FF4463D8FF4463D8FF4261D3F9151F434F000000000000
            0000000000000000000000000000000000000000000000000000000000000000
            00000000000000000000000000000000000000000000162045524261D3F94463
            D8FF4463D8FF4463D8FF4261D3F9131C3E490000000000000000000000000000
            0000151E414D4261D3F94463D8FF4463D8FF4463D8FF4261D3F9151F434F0000
            0000000000000000000000000000000000000000000000000000000000000000
            000000000000000000000000000000000000162045524261D3F94463D8FF4463
            D8FF4463D8FF4261D3F9131C3E49000000000000000000000000000000000000
            000000000000151E414D4261D3F94463D8FF4463D8FF4463D8FF4261D3F9151F
            434F000000000000000000000000000000000000000000000000000000000000
            0000000000000000000000000000162046534261D3F94463D8FF4463D8FF4463
            D8FF4261D3F9131C3E4900000000000000000000000000000000000000000000
            00000000000000000000151E414D4261D3F94463D8FF4463D8FF4463D8FF4261
            D3F9151F434F0000000000000000000000000000000000000000000000000000
            0000000000000000000001010202354CA7C54463D8FF4463D8FF4463D8FF4261
            D3F9131C3E490000000000000000000000000000000000000000000000000000
            0000000000000000000000000000151E414D4261D3F94463D8FF4463D8FF4463
            D8FF354CA7C50000010100000000000000000000000000000000000000000000
            000000000000000000000000000004060D0F364EABCA4463D8FF4261D3F9131C
            3E49000000000000000000000000000000000000000000000000000000000000
            000000000000000000000000000000000000151E414D4261D3F94463D8FF364F
            ACCB04060E100000000000000000000000000000000000000000000000000000
            00000000000000000000000000000000000004060D0F344CA5C3131C3E490000
            0000000000000000000000000000000000000000000000000000000000000000
            00000000000000000000000000000000000000000000151E414D354CA7C50406
            0E10000000000000000000000000000000000000000000000000000000000000
            0000000000000000000000000000000000000000000000000000000000000000
            0000000000000000000000000000000000000000000000000000000000000000
            0000000000000000000000000000000000000000000000000000010102020000
            0000000000000000000000000000000000000000000000000000000000000000
            0000000000000000000000000000000000000000000000000000000000000000
            0000000000000000000000000000000000000000000000000000000000000000
            0000000000000000000000000000000000000000000000000000000000000000
            0000000000000000000000000000000000000000000000000000000000000000
            0000000000000000000000000000000000000000000000000000000000000000
            0000000000000000000000000000000000000000000000000000000000000000
            0000000000000000000000000000000000000000000000000000000000000000
            0000000000000000000000000000000000000000000000000000000000000000
            0000000000000000000000000000000000000000000000000000000000000000
            0000000000000000000000000000000000000000000000000000000000000000
            0000000000000000000000000000000000000000000000000000000000000000
            0000000000000000000000000000000000000000000000000000000000000000
            0000000000000000000000000000000000000000000000000000000000000000
            0000000000000000000000000000000000000000000000000000000000000000
            0000000000000000000000000000000000000000000000000000000000000000
            0000000000000000000000000000000000000000000000000000}
          SpeedButtonOptions.Transparent = True
          TabOrder = 2
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Height = -16
          Font.Name = 'HelveticaNeue'
          Font.Style = [fsBold]
          ParentFont = False
          OnClick = bControleCancelarClick
        end
        object bControleGravar: TcxButton
          Left = 377
          Top = 5
          Width = 120
          Height = 40
          Hint = 'Cadastrar dados.'
          Caption = '&Gravar'
          Enabled = False
          LookAndFeel.NativeStyle = False
          LookAndFeel.SkinName = 'Metropolis'
          OptionsImage.Glyph.Data = {
            36100000424D3610000000000000360000002800000020000000200000000100
            2000000000000010000000000000000000000000000000000000000000000000
            0000000000000000000000000000000000000000000000000000000000000000
            0000000000000000000000000000000000000000000000000000000000000000
            0000000000000000000000000000000000000000000000000000000000000000
            0000000000000000000000000000000000000000000000000000000000000000
            0000000000000000000000000000000000000000000000000000000000000000
            0000000000000000000000000000000000000000000000000000000000000000
            0000000000000000000000000000000000000000000000000000000000000000
            0000000000000000000000000000000000000000000000000000000000000000
            0000000000000000000000000000000000000000000000000000000000000000
            0000000000000000000000000000000000000000000000000000000000000000
            0000000000000000000000000000000000000000000000000000000000000000
            0000000000000000000000000000000000000000000000000000000000000000
            0000000000004B273C70964E78E0AB5989FFAB5989FFAB5989FFAB5989FFAB59
            89FFAB5989FFAB5989FFAB5989FFAB5989FFAB5989FFAB5989FFAB5989FFAB59
            89FFAB5989FFAB5989FFAB5989FFAB5989FFAB5989FFAB5989FFAB5989FFAB59
            89FFAB5989FF964E78E04B273C70000000000000000000000000000000000000
            000000000000964E78E0AB5989FFAB5989FFAB5989FFAB5989FFFFFFFFFFFFFF
            FFFFFFFFFFFFAB5989FFAB5989FFAB5989FFAB5989FFFFFFFFFFFFFFFFFFFFFF
            FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFAB5989FFAB59
            89FFAB5989FFAB5989FF964E78E0000000000000000000000000000000000000
            000000000000AB5989FFAB5989FFAB5989FFAB5989FFAB5989FFFFFFFFFFFFFF
            FFFFFFFFFFFFAB5989FFAB5989FFAB5989FFAB5989FFFFFFFFFFFFFFFFFFFFFF
            FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFAB5989FFAB59
            89FFAB5989FFAB5989FFAB5989FF000000000000000000000000000000000000
            000000000000AB5989FFAB5989FFAB5989FFAB5989FFAB5989FFFFFFFFFFFFFF
            FFFFFFFFFFFFAB5989FFAB5989FFAB5989FFAB5989FFFFFFFFFFFFFFFFFFFFFF
            FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFAB5989FFAB59
            89FFAB5989FFAB5989FFAB5989FF000000000000000000000000000000000000
            000000000000AB5989FFAB5989FFAB5989FFAB5989FFAB5989FFFFFFFFFFFFFF
            FFFFFFFFFFFFAB5989FFAB5989FFAB5989FFAB5989FFFFFFFFFFFFFFFFFFFFFF
            FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFAB5989FFAB59
            89FFAB5989FFAB5989FFAB5989FF000000000000000000000000000000000000
            000000000000AB5989FFAB5989FFAB5989FFAB5989FFAB5989FFFFFFFFFFFFFF
            FFFFFFFFFFFFAB5989FFAB5989FFAB5989FFAB5989FFFFFFFFFFFFFFFFFFFFFF
            FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFAB5989FFAB59
            89FFAB5989FFAB5989FFAB5989FF000000000000000000000000000000000000
            000000000000AB5989FFAB5989FFAB5989FFAB5989FFAB5989FFFFFFFFFFFFFF
            FFFFFFFFFFFFAB5989FFAB5989FFAB5989FFAB5989FFFFFFFFFFFFFFFFFFFFFF
            FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFAB5989FFAB59
            89FFAB5989FFAB5989FFAB5989FF000000000000000000000000000000000000
            000000000000AB5989FFAB5989FFAB5989FFAB5989FFAB5989FFFFFFFFFFFFFF
            FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
            FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFAB5989FFAB59
            89FFAB5989FFAB5989FFAB5989FF000000000000000000000000000000000000
            000000000000AB5989FFAB5989FFAB5989FFAB5989FFAB5989FFFFFFFFFFFFFF
            FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
            FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFAB5989FFAB59
            89FFAB5989FFAB5989FFAB5989FF000000000000000000000000000000000000
            000000000000AB5989FFAB5989FFAB5989FFAB5989FFAB5989FFAB5989FFAB59
            89FFAB5989FFAB5989FFAB5989FFAB5989FFAB5989FFAB5989FFAB5989FFAB59
            89FFAB5989FFAB5989FFAB5989FFAB5989FFAB5989FFAB5989FFAB5989FFAB59
            89FFAB5989FFAB5989FFAB5989FF000000000000000000000000000000000000
            000000000000AB5989FFAB5989FFAB5989FFAB5989FFAB5989FFAB5989FFAB59
            89FFAB5989FFAB5989FFAB5989FFAB5989FFAB5989FFAB5989FFAB5989FFAB59
            89FFAB5989FFAB5989FFAB5989FFAB5989FFAB5989FFAB5989FFAB5989FFAB59
            89FFAB5989FFAB5989FFAB5989FF000000000000000000000000000000000000
            000000000000AB5989FFAB5989FFAB5989FFAB5989FFAB5989FFAB5989FFAB59
            89FFAB5989FFAB5989FFAB5989FFAB5989FFAB5989FFAB5989FFAB5989FFAB59
            89FFAB5989FFAB5989FFAB5989FFAB5989FFAB5989FFAB5989FFAB5989FFAB59
            89FFAB5989FFAB5989FFAB5989FF000000000000000000000000000000000000
            000000000000AB5989FFAB5989FFAB5989FFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
            FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
            FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
            FFFFAB5989FFAB5989FFAB5989FF000000000000000000000000000000000000
            000000000000AB5989FFAB5989FFAB5989FFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
            FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
            FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
            FFFFAB5989FFAB5989FFAB5989FF000000000000000000000000000000000000
            000000000000AB5989FFAB5989FFAB5989FFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
            FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
            FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
            FFFFAB5989FFAB5989FFAB5989FF000000000000000000000000000000000000
            000000000000AB5989FFAB5989FFAB5989FFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
            FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
            FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
            FFFFAB5989FFAB5989FFAB5989FF000000000000000000000000000000000000
            000000000000AB5989FFAB5989FFAB5989FFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
            FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
            FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
            FFFFAB5989FFAB5989FFAB5989FF000000000000000000000000000000000000
            000000000000AB5989FFAB5989FFAB5989FFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
            FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
            FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
            FFFFAB5989FFAB5989FFAB5989FF000000000000000000000000000000000000
            000000000000AB5989FFAB5989FFAB5989FFFFFFFFFFFFFFFFFFFFFFFFFFC1C1
            C1FFC1C1C1FFC1C1C1FFC1C1C1FFC1C1C1FFC1C1C1FFC1C1C1FFC1C1C1FFC1C1
            C1FFC1C1C1FFC1C1C1FFC1C1C1FFC1C1C1FFC1C1C1FFFFFFFFFFFFFFFFFFFFFF
            FFFFAB5989FFAB5989FFAB5989FF000000000000000000000000000000000000
            000000000000AB5989FFAB5989FFAB5989FFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
            FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
            FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
            FFFFAB5989FFAB5989FFAB5989FF000000000000000000000000000000000000
            000000000000AB5989FFAB5989FFAB5989FFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
            FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
            FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
            FFFFAB5989FFAB5989FFAB5989FF000000000000000000000000000000000000
            000000000000AB5989FFAB5989FFAB5989FFFFFFFFFFFFFFFFFFFFFFFFFFC1C1
            C1FFC1C1C1FFC1C1C1FFC1C1C1FFC1C1C1FFC1C1C1FFC1C1C1FFC1C1C1FFC1C1
            C1FFC1C1C1FFC1C1C1FFC1C1C1FFC1C1C1FFC1C1C1FFFFFFFFFFFFFFFFFFFFFF
            FFFFAB5989FFAB5989FFAB5989FF000000000000000000000000000000000000
            000000000000AB5989FFAB5989FFAB5989FFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
            FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
            FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
            FFFFAB5989FFAB5989FFAB5989FF000000000000000000000000000000000000
            000000000000AB5989FFAB5989FFAB5989FFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
            FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
            FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
            FFFFAB5989FFAB5989FFAB5989FF000000000000000000000000000000000000
            000000000000AB5989FF00000000AB5989FFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
            FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
            FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
            FFFFAB5989FFAB5989FFAB5989FF000000000000000000000000000000000000
            000000000000AB5989FFAB5989FFAB5989FFAB5989FFAB5989FFAB5989FFAB59
            89FFAB5989FFAB5989FFAB5989FFAB5989FFAB5989FFAB5989FFAB5989FFAB59
            89FFAB5989FFAB5989FFAB5989FFAB5989FFAB5989FFAB5989FFAB5989FFAB59
            89FFAB5989FFAB5989FFAB5989FF000000000000000000000000000000000000
            0000000000000000000000000000000000000000000000000000000000000000
            0000000000000000000000000000000000000000000000000000000000000000
            0000000000000000000000000000000000000000000000000000000000000000
            0000000000000000000000000000000000000000000000000000000000000000
            0000000000000000000000000000000000000000000000000000000000000000
            0000000000000000000000000000000000000000000000000000000000000000
            0000000000000000000000000000000000000000000000000000000000000000
            0000000000000000000000000000000000000000000000000000000000000000
            0000000000000000000000000000000000000000000000000000000000000000
            0000000000000000000000000000000000000000000000000000000000000000
            0000000000000000000000000000000000000000000000000000000000000000
            0000000000000000000000000000000000000000000000000000}
          TabOrder = 3
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Height = -16
          Font.Name = 'HelveticaNeue'
          Font.Style = [fsBold]
          ParentFont = False
          OnClick = bControleGravarClick
        end
      end
    end
  end
  object sql_increment: TFDQuery
    Connection = Module.connection
    SQL.Strings = (
      'select max(codigo)+1 as AUTO_INCREMENT from produto')
    Left = 1128
    Top = 192
    object sql_incrementAUTO_INCREMENT: TLargeintField
      AutoGenerateValue = arDefault
      FieldName = 'AUTO_INCREMENT'
      Origin = 'AUTO_INCREMENT'
    end
  end
  object DS_CSTPIS: TDataSource
    DataSet = SQL_CSTPIS
    Left = 192
    Top = 328
  end
  object DS_CSTCOFINS: TDataSource
    DataSet = SQL_CSTCOFINS
    Left = 1056
    Top = 168
  end
  object SQL_CSTPIS: TFDQuery
    Connection = Module.connection
    SQL.Strings = (
      'select * from cst_pis order by codigo')
    Left = 192
    Top = 384
    object SQL_CSTPISCODIGO: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'CODIGO'
      Origin = 'CODIGO'
      Size = 2
    end
    object SQL_CSTPISDESCRICAO: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'DESCRICAO'
      Origin = 'DESCRICAO'
      Size = 210
    end
  end
  object SQL_CSTCOFINS: TFDQuery
    Connection = Module.connection
    SQL.Strings = (
      'select * from cst_cofins order by codigo')
    Left = 1056
    Top = 239
    object SQL_CSTCOFINSCODIGO: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'CODIGO'
      Origin = 'CODIGO'
      Size = 2
    end
    object SQL_CSTCOFINSDESCRICAO: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'DESCRICAO'
      Origin = 'DESCRICAO'
      Size = 150
    end
  end
  object DS_Lista: TDataSource
    DataSet = qConsulta
    Left = 200
    Top = 128
  end
  object DS_CSTIPI: TDataSource
    DataSet = SQL_CSTIPI
    Left = 976
    Top = 168
  end
  object SQL_CSTIPI: TFDQuery
    Connection = Module.connection
    SQL.Strings = (
      'select * from cst_ipi'
      'order by CODIGO')
    Left = 968
    Top = 240
  end
  object SQL_IPI: TFDQuery
    Connection = Module.connection
    SQL.Strings = (
      'SELECT * FROM tab_codenqipi'
      'ORDER BY CODENQ')
    Left = 912
    Top = 240
  end
  object DS_IPI: TDataSource
    DataSet = SQL_IPI
    Left = 912
    Top = 168
  end
  object SQL_DADOS_ROTINAS: TFDQuery
    Connection = Module.connection
    SQL.Strings = (
      
        'select e.codigo_regime_tributario, ps.* from empresa e,  paramet' +
        'ros_sistema ps')
    Left = 704
    Top = 240
    object SQL_DADOS_ROTINAScodigo_regime_tributario: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'codigo_regime_tributario'
      Origin = 'CODIGO_REGIME_TRIBUTARIO'
      FixedChar = True
      Size = 1
    end
    object SQL_DADOS_ROTINASid: TIntegerField
      AutoGenerateValue = arDefault
      FieldName = 'id'
      Origin = 'id'
      ProviderFlags = []
      ReadOnly = True
    end
    object SQL_DADOS_ROTINASaliq_imcs: TBCDField
      AutoGenerateValue = arDefault
      FieldName = 'aliq_imcs'
      Origin = 'aliq_imcs'
      ProviderFlags = []
      ReadOnly = True
      Precision = 10
    end
    object SQL_DADOS_ROTINASaliq_pis_cumulativo: TBCDField
      AutoGenerateValue = arDefault
      FieldName = 'aliq_pis_cumulativo'
      Origin = 'aliq_pis_cumulativo'
      ProviderFlags = []
      ReadOnly = True
      Precision = 10
    end
    object SQL_DADOS_ROTINASaliq_pis_nao_cumulativo: TBCDField
      AutoGenerateValue = arDefault
      FieldName = 'aliq_pis_nao_cumulativo'
      Origin = 'aliq_pis_nao_cumulativo'
      ProviderFlags = []
      ReadOnly = True
      Precision = 10
    end
    object SQL_DADOS_ROTINASaliq_cofins_cumulativo: TBCDField
      AutoGenerateValue = arDefault
      FieldName = 'aliq_cofins_cumulativo'
      Origin = 'aliq_cofins_cumulativo'
      ProviderFlags = []
      ReadOnly = True
      Precision = 10
    end
    object SQL_DADOS_ROTINASaliq_cofins_nao_cumulativo: TBCDField
      AutoGenerateValue = arDefault
      FieldName = 'aliq_cofins_nao_cumulativo'
      Origin = 'aliq_cofins_nao_cumulativo'
      ProviderFlags = []
      ReadOnly = True
      Precision = 10
    end
    object SQL_DADOS_ROTINASaliq_iss: TBCDField
      AutoGenerateValue = arDefault
      FieldName = 'aliq_iss'
      Origin = 'aliq_iss'
      ProviderFlags = []
      ReadOnly = True
      Precision = 10
    end
    object SQL_DADOS_ROTINASPASTA_FTP: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'PASTA_FTP'
      Origin = 'PASTA_FTP'
      ProviderFlags = []
      ReadOnly = True
      Size = 200
    end
    object SQL_DADOS_ROTINAScaminho_backup: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'caminho_backup'
      Origin = 'caminho_backup'
      ProviderFlags = []
      ReadOnly = True
      Size = 100
    end
    object SQL_DADOS_ROTINAShost_name: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'host_name'
      Origin = 'host_name'
      ProviderFlags = []
      ReadOnly = True
      Size = 50
    end
  end
  object DS_DADOS_ROTINAS: TDataSource
    DataSet = SQL_DADOS_ROTINAS
    Left = 704
    Top = 168
  end
  object popmenu: TPopupMenu
    Left = 1152
    Top = 672
    object duplicar_cadastro: TMenuItem
      Bitmap.Data = {
        36040000424D3604000000000000360000002800000010000000100000000100
        2000000000000004000000000000000000000000000000000000000000003C3C
        3CFF3C3C3CFF3C3C3CFF3C3C3CFF3C3C3CFF3C3C3CFF3C3C3CFF3C3C3CFF3C3C
        3CFF3C3C3CFF0000000000000000000000000000000000000000000000003C3C
        3CFF3C3C3CFF3C3C3CFF3C3C3CFF3C3C3CFF3C3C3CFF3C3C3CFF3C3C3CFF3C3C
        3CFF3C3C3CFF0000000000000000000000000000000000000000000000003C3C
        3CFF3C3C3CFF0000000000000000000000000000000000000000000000003C3C
        3CFF3C3C3CFF0000000000000000000000000000000000000000000000003C3C
        3CFF3C3C3CFF0000000000000000000000000000000000000000000000003C3C
        3CFF3C3C3CFF0000000000000000000000000000000000000000000000003C3C
        3CFF3C3C3CFF0000000000000000000000000000000000000000000000003C3C
        3CFF3C3C3CFF000000003C3C3CFF3C3C3CFF3C3C3CFF00000000000000003C3C
        3CFF3C3C3CFF0000000000000000000000000000000000000000000000003C3C
        3CFF3C3C3CFF000000003C3C3CFF3C3C3CFF3C3C3CFF00000000000000003C3C
        3CFF3C3C3CFF0000000000000000000000000000000000000000000000003C3C
        3CFF3C3C3CFF00000000000000003C3C3CFF3C3C3CFF00000000000000003C3C
        3CFF3C3C3CFF0000000000000000000000003C3C3CFF3C3C3CFF3C3C3CFF3C3C
        3CFF3C3C3CFF00000000000000003C3C3CFF3C3C3CFF00000000000000003C3C
        3CFF3C3C3CFF0000000000000000000000003C3C3CFF3C3C3CFF3C3C3CFF3C3C
        3CFF1E1E1E7E00000000000000003C3C3CFF3C3C3CFF00000000000000003C3C
        3CFF3C3C3CFF0000000000000000000000003C3C3CFF3C3C3CFF3C3C3CFF1E1E
        1E7E0000000000000000000000003C3C3CFF3C3C3CFF00000000000000003C3C
        3CFF3C3C3CFF3C3C3CFF3C3C3CFF3C3C3CFF3C3C3CFF3C3C3CFF1E1E1E7E0000
        00000000000000000000000000003C3C3CFF3C3C3CFF00000000000000003C3C
        3CFF3C3C3CFF3C3C3CFF3C3C3CFF3C3C3CFF3C3C3CFF1E1E1E7E000000000000
        00003C3C3CFF3C3C3CFF3C3C3CFF3C3C3CFF3C3C3CFF00000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        00003C3C3CFF3C3C3CFF3C3C3CFF3C3C3CFF1E1E1E7E00000000000000000000
        00000000000000000000000000003C3C3CFF3C3C3CFF00000000000000000000
        00003C3C3CFF3C3C3CFF3C3C3CFF1E1E1E7E0000000000000000000000000000
        00000000000000000000000000003C3C3CFF3C3C3CFF3C3C3CFF3C3C3CFF3C3C
        3CFF3C3C3CFF3C3C3CFF1E1E1E7E000000000000000000000000000000000000
        00000000000000000000000000003C3C3CFF3C3C3CFF3C3C3CFF3C3C3CFF3C3C
        3CFF3C3C3CFF1E1E1E7E00000000000000000000000000000000}
      Caption = 'Duplicar Cadastro'
      OnClick = duplicar_cadastroClick
    end
    object N1: TMenuItem
      Caption = '-'
    end
    object ImprimirEtiqueta1: TMenuItem
      Caption = 'Imprimir Etiqueta'
      OnClick = ImprimirEtiqueta1Click
    end
  end
  object SQL_PRECO_FAIXA: TFDQuery
    Connection = Module.connection
    SQL.Strings = (
      'select * from produto_preco_faixa'
      'where id_produto = :pid_prod')
    Left = 576
    Top = 192
    ParamData = <
      item
        Name = 'PID_PROD'
        DataType = ftString
        ParamType = ptInput
        Value = Null
      end>
    object SQL_PRECO_FAIXAID: TFDAutoIncField
      FieldName = 'ID'
      Origin = 'ID'
      ProviderFlags = [pfInWhere, pfInKey]
      ReadOnly = True
    end
    object SQL_PRECO_FAIXATIPO: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'TIPO'
      Origin = 'TIPO'
      FixedChar = True
      Size = 10
    end
    object SQL_PRECO_FAIXAPRECO: TBCDField
      AutoGenerateValue = arDefault
      FieldName = 'PRECO'
      Origin = 'PRECO'
      Precision = 10
    end
    object SQL_PRECO_FAIXAID_PRODUTO: TIntegerField
      AutoGenerateValue = arDefault
      FieldName = 'ID_PRODUTO'
      Origin = 'ID_PRODUTO'
    end
    object SQL_PRECO_FAIXAQTDE: TBCDField
      AutoGenerateValue = arDefault
      FieldName = 'QTDE'
      Origin = 'QTDE'
      Precision = 10
    end
  end
  object DS_PRECO_FAIXA: TDataSource
    DataSet = SQL_PRECO_FAIXA
    Left = 472
    Top = 256
  end
  object pop_faixa: TPopupMenu
    Left = 1120
    Top = 672
    object RemoverFaixa1: TMenuItem
      Bitmap.Data = {
        36040000424D3604000000000000360000002800000010000000100000000100
        2000000000000004000000000000000000000000000000000000000000000000
        00000000000000000000101010462121218D2F2F2FC7383838F0383838F02F2F
        2FC72121218D1010104600000000000000000000000000000000000000000000
        0000080808202121218C393939F33C3C3CFF3C3C3CFF3C3C3CFF3C3C3CFF3C3C
        3CFF3C3C3CFF393939F32121218C080808200000000000000000000000000808
        0820262626A33C3C3CFF3C3C3CFF3C3C3CFF3C3C3CFF3C3C3CFF3C3C3CFF3C3C
        3CFF3C3C3CFF3C3C3CFF3C3C3CFF262626A30808082000000000000000002121
        218C3C3C3CFF3C3C3CFF3C3C3CFF2D2D2DBE3C3C3CFF3C3C3CFF3C3C3CFF3C3C
        3CFF2D2D2DBE3C3C3CFF3C3C3CFF3C3C3CFF2121218C00000000101010463939
        39F33C3C3CFF3C3C3CFF1E1E1E7E000000001E1E1E7E3C3C3CFF3C3C3CFF1E1E
        1E7E000000001E1E1E7E3C3C3CFF3C3C3CFF393939F3101010462121218D3C3C
        3CFF3C3C3CFF2D2D2DBF0000000000000000000000001E1E1E7E1E1E1E7E0000
        000000000000000000002D2D2DBF3C3C3CFF3C3C3CFF2121218D2F2F2FC73C3C
        3CFF3C3C3CFF3C3C3CFF1E1E1E81000000000000000000000000000000000000
        0000000000001E1E1E813C3C3CFF3C3C3CFF3C3C3CFF2F2F2FC7383838F03C3C
        3CFF3C3C3CFF3C3C3CFF3C3C3CFF1E1E1E810000000000000000000000000000
        00001E1E1E813C3C3CFF3C3C3CFF3C3C3CFF3C3C3CFF383838F0383838F03C3C
        3CFF3C3C3CFF3C3C3CFF3C3C3CFF1E1E1E7E0000000000000000000000000000
        00001E1E1E7E3C3C3CFF3C3C3CFF3C3C3CFF3C3C3CFF383838F02F2F2FC73C3C
        3CFF3C3C3CFF3C3C3CFF1E1E1E7E000000000000000000000000000000000000
        0000000000001E1E1E7E3C3C3CFF3C3C3CFF3C3C3CFF2F2F2FC72121218D3C3C
        3CFF3C3C3CFF2D2D2DBF0000000000000000000000001E1E1E811E1E1E810000
        000000000000000000002D2D2DBF3C3C3CFF3C3C3CFF2121218D101010463939
        39F33C3C3CFF3C3C3CFF1E1E1E81000000001E1E1E813C3C3CFF3C3C3CFF1E1E
        1E81000000001E1E1E813C3C3CFF3C3C3CFF393939F310101046000000002121
        218C3C3C3CFF3C3C3CFF3C3C3CFF2D2D2DC13C3C3CFF3C3C3CFF3C3C3CFF3C3C
        3CFF2D2D2DC13C3C3CFF3C3C3CFF3C3C3CFF2121218C00000000000000000808
        0820262626A33C3C3CFF3C3C3CFF3C3C3CFF3C3C3CFF3C3C3CFF3C3C3CFF3C3C
        3CFF3C3C3CFF3C3C3CFF3C3C3CFF262626A30808082000000000000000000000
        0000080808202121218C393939F33C3C3CFF3C3C3CFF3C3C3CFF3C3C3CFF3C3C
        3CFF3C3C3CFF393939F32121218C080808200000000000000000000000000000
        00000000000000000000101010462121218D2F2F2FC7383838F0383838F02F2F
        2FC72121218D1010104600000000000000000000000000000000}
      Caption = 'Remover Faixa'
    end
  end
  object sql_ponto_impressao: TFDQuery
    Connection = Module.connection
    SQL.Strings = (
      
        'select id, concat(nome, '#39' ('#39', impressora, '#39') '#39') as nome from pon' +
        'to_impressao')
    Left = 296
    Top = 232
    object sql_ponto_impressaoid: TFDAutoIncField
      FieldName = 'id'
      Origin = 'id'
      ProviderFlags = [pfInWhere, pfInKey]
      ReadOnly = True
    end
    object sql_ponto_impressaonome: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'nome'
      Origin = 'nome'
      ProviderFlags = []
      ReadOnly = True
      Size = 514
    end
  end
  object ds_ponto_impressao: TDataSource
    DataSet = sql_ponto_impressao
    Left = 288
    Top = 128
  end
  object qConsulta: TFDQuery
    Connection = Module.connection
    SQL.Strings = (
      'SELECT * FROM produto')
    Left = 72
    Top = 96
    object qConsultaCodigo: TFDAutoIncField
      FieldName = 'Codigo'
      Origin = 'CODIGO'
      ProviderFlags = [pfInWhere, pfInKey]
      ReadOnly = True
    end
    object qConsultacodigo_barras: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'codigo_barras'
      Origin = 'CODIGO_BARRAS'
      Size = 50
    end
    object qConsultadescricao_produto: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'descricao_produto'
      Origin = 'DESCRICAO_PRODUTO'
      Size = 200
    end
    object qConsultaunidade_medida: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'unidade_medida'
      Origin = 'UNIDADE_MEDIDA'
      Size = 50
    end
    object qConsultapreco_final_varejo: TBCDField
      AutoGenerateValue = arDefault
      FieldName = 'preco_final_varejo'
      Origin = 'PRECO_FINAL_VAREJO'
      Precision = 10
    end
    object qConsultavalor_promocional_varejo: TBCDField
      AutoGenerateValue = arDefault
      FieldName = 'valor_promocional_varejo'
      Origin = 'VALOR_PROMOCIONAL_VAREJO'
      Precision = 10
    end
    object qConsultagrupo: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'grupo'
      Origin = 'GRUPO'
      Size = 50
    end
    object qConsultamarca: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'marca'
      Origin = 'MARCA'
      Size = 50
    end
    object qConsultaicms_cst: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'icms_cst'
      Origin = 'ICMS_CST'
      Size = 3
    end
    object qConsultancm: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'ncm'
      Origin = 'NCM'
      Size = 50
    end
    object qConsultareferencia_fabricante: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'referencia_fabricante'
      Origin = 'REFERENCIA_FABRICANTE'
      Size = 50
    end
    object qConsultaCOD_BARRAS_AUXILIAR: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'COD_BARRAS_AUXILIAR'
      Origin = 'COD_BARRAS_AUXILIAR'
      Size = 50
    end
    object qConsultaINFO_ADICIONAIS: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'INFO_ADICIONAIS'
      Origin = 'INFO_ADICIONAIS'
      Size = 200
    end
    object qConsultaFAMILIA: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'FAMILIA'
      Origin = 'FAMILIA'
      Size = 50
    end
    object qConsultaSUBGRUPO: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'SUBGRUPO'
      Origin = 'SUBGRUPO'
      Size = 50
    end
    object qConsultaDATA_CADASTRO: TDateField
      AutoGenerateValue = arDefault
      FieldName = 'DATA_CADASTRO'
      Origin = 'DATA_CADASTRO'
    end
    object qConsultaTIPO_ITEM: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'TIPO_ITEM'
      Origin = 'TIPO_ITEM'
      Size = 100
    end
    object qConsultaESTOQUE_MINIMO: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'ESTOQUE_MINIMO'
      Origin = 'ESTOQUE_MINIMO'
      Size = 50
    end
    object qConsultaPRECO_CUSTO: TBCDField
      AutoGenerateValue = arDefault
      FieldName = 'PRECO_CUSTO'
      Origin = 'PRECO_CUSTO'
      Precision = 10
    end
    object qConsultaFRETE: TBCDField
      AutoGenerateValue = arDefault
      FieldName = 'FRETE'
      Origin = 'FRETE'
      Precision = 10
    end
    object qConsultaIMPOSTO: TBCDField
      AutoGenerateValue = arDefault
      FieldName = 'IMPOSTO'
      Origin = 'IMPOSTO'
      Precision = 10
    end
    object qConsultaDESP_OPERACIONAIS: TBCDField
      AutoGenerateValue = arDefault
      FieldName = 'DESP_OPERACIONAIS'
      Origin = 'DESP_OPERACIONAIS'
      Precision = 10
    end
    object qConsultaCUSTO_MEDIO: TBCDField
      AutoGenerateValue = arDefault
      FieldName = 'CUSTO_MEDIO'
      Origin = 'CUSTO_MEDIO'
      Precision = 10
    end
    object qConsultaMARGEM_LUCRO: TBCDField
      AutoGenerateValue = arDefault
      FieldName = 'MARGEM_LUCRO'
      Origin = 'MARGEM_LUCRO'
      Precision = 10
    end
    object qConsultaMARGEM_L_VAREJO: TBCDField
      AutoGenerateValue = arDefault
      FieldName = 'MARGEM_L_VAREJO'
      Origin = 'MARGEM_L_VAREJO'
      Precision = 10
    end
    object qConsultaMARGEM_L_ATACADO: TBCDField
      AutoGenerateValue = arDefault
      FieldName = 'MARGEM_L_ATACADO'
      Origin = 'MARGEM_L_ATACADO'
      Precision = 10
    end
    object qConsultaMARGEM_L_DISTRIBUIDOR: TBCDField
      AutoGenerateValue = arDefault
      FieldName = 'MARGEM_L_DISTRIBUIDOR'
      Origin = 'MARGEM_L_DISTRIBUIDOR'
      Precision = 10
    end
    object qConsultaDESCONTO_MAXIMO: TBCDField
      AutoGenerateValue = arDefault
      FieldName = 'DESCONTO_MAXIMO'
      Origin = 'DESCONTO_MAXIMO'
      Precision = 10
    end
    object qConsultaDESCONTO_M_VAREJO: TBCDField
      AutoGenerateValue = arDefault
      FieldName = 'DESCONTO_M_VAREJO'
      Origin = 'DESCONTO_M_VAREJO'
      Precision = 10
    end
    object qConsultaDESCONTO_M_ATACADO: TBCDField
      AutoGenerateValue = arDefault
      FieldName = 'DESCONTO_M_ATACADO'
      Origin = 'DESCONTO_M_ATACADO'
      Precision = 10
    end
    object qConsultaDESCONTO_M_DISTRIBUIDOR: TBCDField
      AutoGenerateValue = arDefault
      FieldName = 'DESCONTO_M_DISTRIBUIDOR'
      Origin = 'DESCONTO_M_DISTRIBUIDOR'
      Precision = 10
    end
    object qConsultaDESCONTO_L_VAREJO: TBCDField
      AutoGenerateValue = arDefault
      FieldName = 'DESCONTO_L_VAREJO'
      Origin = 'DESCONTO_L_VAREJO'
      Precision = 10
    end
    object qConsultaDESCONTO_L_ATACADO: TBCDField
      AutoGenerateValue = arDefault
      FieldName = 'DESCONTO_L_ATACADO'
      Origin = 'DESCONTO_L_ATACADO'
      Precision = 10
    end
    object qConsultaDESCONTO_L_DISTRIBUIDOR: TBCDField
      AutoGenerateValue = arDefault
      FieldName = 'DESCONTO_L_DISTRIBUIDOR'
      Origin = 'DESCONTO_L_DISTRIBUIDOR'
      Precision = 10
    end
    object qConsultaPAGAR_COMISSAO: TBCDField
      AutoGenerateValue = arDefault
      FieldName = 'PAGAR_COMISSAO'
      Origin = 'PAGAR_COMISSAO'
      Precision = 10
    end
    object qConsultaCOMISSAO_BALCAO: TBCDField
      AutoGenerateValue = arDefault
      FieldName = 'COMISSAO_BALCAO'
      Origin = 'COMISSAO_BALCAO'
      Precision = 10
    end
    object qConsultaBALCAO_COMISSAO_VAREJO: TBCDField
      AutoGenerateValue = arDefault
      FieldName = 'BALCAO_COMISSAO_VAREJO'
      Origin = 'BALCAO_COMISSAO_VAREJO'
      Precision = 10
    end
    object qConsultaBALCAO_COMISSAO_ATACADO: TBCDField
      AutoGenerateValue = arDefault
      FieldName = 'BALCAO_COMISSAO_ATACADO'
      Origin = 'BALCAO_COMISSAO_ATACADO'
      Precision = 10
    end
    object qConsultaBALCAO_COMISSAO_DISTRIBUIDOR: TBCDField
      AutoGenerateValue = arDefault
      FieldName = 'BALCAO_COMISSAO_DISTRIBUIDOR'
      Origin = 'BALCAO_COMISSAO_DISTRIBUIDOR'
      Precision = 10
    end
    object qConsultaCOMISSAO_EXTERNA: TBCDField
      AutoGenerateValue = arDefault
      FieldName = 'COMISSAO_EXTERNA'
      Origin = 'COMISSAO_EXTERNA'
      Precision = 10
    end
    object qConsultaEXTERNA_COMISSAO_VAREJO: TBCDField
      AutoGenerateValue = arDefault
      FieldName = 'EXTERNA_COMISSAO_VAREJO'
      Origin = 'EXTERNA_COMISSAO_VAREJO'
      Precision = 10
    end
    object qConsultaEXTERNA_COMISSAO_ATACADO: TBCDField
      AutoGenerateValue = arDefault
      FieldName = 'EXTERNA_COMISSAO_ATACADO'
      Origin = 'EXTERNA_COMISSAO_ATACADO'
      Precision = 10
    end
    object qConsultaEXTERNA_COMISSAO_DISTRIBUIDOR: TBCDField
      AutoGenerateValue = arDefault
      FieldName = 'EXTERNA_COMISSAO_DISTRIBUIDOR'
      Origin = 'EXTERNA_COMISSAO_DISTRIBUIDOR'
      Precision = 10
    end
    object qConsultaPRECO_FINAL_ATACADO: TBCDField
      AutoGenerateValue = arDefault
      FieldName = 'PRECO_FINAL_ATACADO'
      Origin = 'PRECO_FINAL_ATACADO'
      Precision = 10
    end
    object qConsultaPRECO_FINAL_DISTRIBUIDOR: TBCDField
      AutoGenerateValue = arDefault
      FieldName = 'PRECO_FINAL_DISTRIBUIDOR'
      Origin = 'PRECO_FINAL_DISTRIBUIDOR'
      Precision = 10
    end
    object qConsultaPROMO_VAREJO: TBCDField
      AutoGenerateValue = arDefault
      FieldName = 'PROMO_VAREJO'
      Origin = 'PROMO_VAREJO'
      Precision = 10
    end
    object qConsultaPROMO_ATACADO: TBCDField
      AutoGenerateValue = arDefault
      FieldName = 'PROMO_ATACADO'
      Origin = 'PROMO_ATACADO'
      Precision = 10
    end
    object qConsultaPROMO_DISTRIBUIDOR: TBCDField
      AutoGenerateValue = arDefault
      FieldName = 'PROMO_DISTRIBUIDOR'
      Origin = 'PROMO_DISTRIBUIDOR'
      Precision = 10
    end
    object qConsultaPROMOCAO_INICIO: TDateField
      AutoGenerateValue = arDefault
      FieldName = 'PROMOCAO_INICIO'
      Origin = 'PROMOCAO_INICIO'
    end
    object qConsultaPROMOCAO_TERMINO: TDateField
      AutoGenerateValue = arDefault
      FieldName = 'PROMOCAO_TERMINO'
      Origin = 'PROMOCAO_TERMINO'
    end
    object qConsultaVALOR_PROMOCIONAL_ATACADO: TBCDField
      AutoGenerateValue = arDefault
      FieldName = 'VALOR_PROMOCIONAL_ATACADO'
      Origin = 'VALOR_PROMOCIONAL_ATACADO'
      Precision = 10
    end
    object qConsultaVALOR_PROMOCIONAL_DISTRIBUIDOR: TBCDField
      AutoGenerateValue = arDefault
      FieldName = 'VALOR_PROMOCIONAL_DISTRIBUIDOR'
      Origin = 'VALOR_PROMOCIONAL_DISTRIBUIDOR'
      Precision = 10
    end
    object qConsultaSALDO: TBCDField
      AutoGenerateValue = arDefault
      FieldName = 'SALDO'
      Origin = 'SALDO'
      Precision = 10
    end
    object qConsultaALIQ_ICMS: TBCDField
      AutoGenerateValue = arDefault
      FieldName = 'ALIQ_ICMS'
      Origin = 'ALIQ_ICMS'
      Precision = 10
    end
    object qConsultaREDUCAO_ICMS: TBCDField
      AutoGenerateValue = arDefault
      FieldName = 'REDUCAO_ICMS'
      Origin = 'REDUCAO_ICMS'
      Precision = 10
    end
    object qConsultaALIQ_ICMS_SUBST: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'ALIQ_ICMS_SUBST'
      Origin = 'ALIQ_ICMS_SUBST'
    end
    object qConsultaREDUCAO_ICMS_ST: TBCDField
      AutoGenerateValue = arDefault
      FieldName = 'REDUCAO_ICMS_ST'
      Origin = 'REDUCAO_ICMS_ST'
      Precision = 10
    end
    object qConsultaLUCRO_SUBST_TRIBUTARIA: TBCDField
      AutoGenerateValue = arDefault
      FieldName = 'LUCRO_SUBST_TRIBUTARIA'
      Origin = 'LUCRO_SUBST_TRIBUTARIA'
      Precision = 10
    end
    object qConsultaVALOR_PAUTA_BC_ST: TBCDField
      AutoGenerateValue = arDefault
      FieldName = 'VALOR_PAUTA_BC_ST'
      Origin = 'VALOR_PAUTA_BC_ST'
      Precision = 10
    end
    object qConsultaLEIS: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'LEIS'
      Origin = 'LEIS'
    end
    object qConsultaGENERO: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'GENERO'
      Origin = 'GENERO'
    end
    object qConsultaFORNECEDOR_NOME: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'FORNECEDOR_NOME'
      Origin = 'FORNECEDOR_NOME'
      Size = 100
    end
    object qConsultaCOD_COMB: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'COD_COMB'
      Origin = 'COD_COMB'
    end
    object qConsultaALIQ_IPI: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'ALIQ_IPI'
      Origin = 'ALIQ_IPI'
    end
    object qConsultaENQUADRAMENTO_IPI: TIntegerField
      AutoGenerateValue = arDefault
      FieldName = 'ENQUADRAMENTO_IPI'
      Origin = 'ENQUADRAMENTO_IPI'
    end
    object qConsultaCODIGO_LOCALIZACAO: TIntegerField
      AutoGenerateValue = arDefault
      FieldName = 'CODIGO_LOCALIZACAO'
      Origin = 'CODIGO_LOCALIZACAO'
    end
    object qConsultaICMS_IPI: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'ICMS_IPI'
      Origin = 'ICMS_IPI'
      Size = 2
    end
    object qConsultaPIS_CST: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'PIS_CST'
      Origin = 'PIS_CST'
      Size = 5
    end
    object qConsultaCOFINS_CST: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'COFINS_CST'
      Origin = 'COFINS_CST'
      Size = 5
    end
    object qConsultaCODIGO_ORIGEM_MERCADORIA: TIntegerField
      AutoGenerateValue = arDefault
      FieldName = 'CODIGO_ORIGEM_MERCADORIA'
      Origin = 'CODIGO_ORIGEM_MERCADORIA'
    end
    object qConsultaCEST: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'CEST'
      Origin = 'CEST'
      Size = 50
    end
    object qConsultaANP: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'ANP'
      Origin = 'ANP'
      Size = 50
    end
    object qConsultaEX_IPI: TSingleField
      AutoGenerateValue = arDefault
      FieldName = 'EX_IPI'
      Origin = 'EX_IPI'
    end
    object qConsultaSTATUS_CADASTRAL: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'STATUS_CADASTRAL'
      Origin = 'STATUS_CADASTRAL'
      FixedChar = True
      Size = 7
    end
    object qConsultaPESAVEL: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'PESAVEL'
      Origin = 'PESAVEL'
      FixedChar = True
      Size = 3
    end
    object qConsultaUTILIZA_ETIQUETA_BALANCA: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'UTILIZA_ETIQUETA_BALANCA'
      Origin = 'UTILIZA_ETIQUETA_BALANCA'
      FixedChar = True
      Size = 3
    end
    object qConsultaUSA_LOTE: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'USA_LOTE'
      Origin = 'USA_LOTE'
      FixedChar = True
      Size = 3
    end
    object qConsultaCONTROLADO: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'CONTROLADO'
      Origin = 'CONTROLADO'
      FixedChar = True
      Size = 3
    end
    object qConsultaCODIGO_FORNECEDOR: TIntegerField
      AutoGenerateValue = arDefault
      FieldName = 'CODIGO_FORNECEDOR'
      Origin = 'CODIGO_FORNECEDOR'
    end
    object qConsultaQUANT_MINI_VAREJO_P: TBCDField
      AutoGenerateValue = arDefault
      FieldName = 'QUANT_MINI_VAREJO_P'
      Origin = 'QUANT_MINI_VAREJO_P'
      Precision = 10
    end
    object qConsultaQUANT_MINI_ATACADO_P: TBCDField
      AutoGenerateValue = arDefault
      FieldName = 'QUANT_MINI_ATACADO_P'
      Origin = 'QUANT_MINI_ATACADO_P'
      Precision = 10
    end
    object qConsultaQUANT_MINI_DISTRIBUIDOR_P: TBCDField
      AutoGenerateValue = arDefault
      FieldName = 'QUANT_MINI_DISTRIBUIDOR_P'
      Origin = 'QUANT_MINI_DISTRIBUIDOR_P'
      Precision = 10
    end
    object qConsultaQUANT_MINI_VAREJO_Q: TBCDField
      AutoGenerateValue = arDefault
      FieldName = 'QUANT_MINI_VAREJO_Q'
      Origin = 'QUANT_MINI_VAREJO_Q'
      Precision = 10
    end
    object qConsultaQUANT_MINI_ATACADO_Q: TBCDField
      AutoGenerateValue = arDefault
      FieldName = 'QUANT_MINI_ATACADO_Q'
      Origin = 'QUANT_MINI_ATACADO_Q'
      Precision = 10
    end
    object qConsultaQUANT_MINI_DISTRIBUIDOR_Q: TBCDField
      AutoGenerateValue = arDefault
      FieldName = 'QUANT_MINI_DISTRIBUIDOR_Q'
      Origin = 'QUANT_MINI_DISTRIBUIDOR_Q'
      Precision = 10
    end
    object qConsultaQUANT_MINI_VAREJO_D: TBCDField
      AutoGenerateValue = arDefault
      FieldName = 'QUANT_MINI_VAREJO_D'
      Origin = 'QUANT_MINI_VAREJO_D'
      Precision = 10
    end
    object qConsultaQUANT_MINI_DISTRIBUIDOR_D: TBCDField
      AutoGenerateValue = arDefault
      FieldName = 'QUANT_MINI_DISTRIBUIDOR_D'
      Origin = 'QUANT_MINI_DISTRIBUIDOR_D'
      Precision = 10
    end
    object qConsultaQUANT_MINI_ATACADO_D: TBCDField
      AutoGenerateValue = arDefault
      FieldName = 'QUANT_MINI_ATACADO_D'
      Origin = 'QUANT_MINI_ATACADO_D'
      Precision = 10
    end
    object qConsultaCST_IPI: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'CST_IPI'
      Origin = 'CST_IPI'
      Size = 3
    end
    object qConsultaCOD_BALANCA_1: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'COD_BALANCA_1'
      Origin = 'COD_BALANCA_1'
      Size = 8
    end
    object qConsultaCOD_BALANCA_2: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'COD_BALANCA_2'
      Origin = 'COD_BALANCA_2'
      Size = 8
    end
    object qConsultaCOD_BALANCA_3: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'COD_BALANCA_3'
      Origin = 'COD_BALANCA_3'
      Size = 8
    end
    object qConsultaponto_impressao_id: TIntegerField
      AutoGenerateValue = arDefault
      FieldName = 'ponto_impressao_id'
      Origin = 'ponto_impressao_id'
    end
    object qConsultaProduto_ou_Servico: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'Produto_ou_Servico'
      Origin = 'Produto_ou_Servico'
      FixedChar = True
      Size = 1
    end
    object qConsultaPagaComissaoSN: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'PagaComissaoSN'
      Origin = 'PagaComissaoSN'
      FixedChar = True
      Size = 1
    end
    object qConsultaContaContabil: TIntegerField
      AutoGenerateValue = arDefault
      FieldName = 'ContaContabil'
      Origin = 'ContaContabil'
    end
    object qConsultaCentroDeCustos: TIntegerField
      AutoGenerateValue = arDefault
      FieldName = 'CentroDeCustos'
      Origin = 'CentroDeCustos'
    end
    object qConsultaNFe_indTot: TIntegerField
      AutoGenerateValue = arDefault
      FieldName = 'NFe_indTot'
      Origin = 'NFe_indTot'
    end
    object qConsultaNFe_VeiculoNovo: TIntegerField
      AutoGenerateValue = arDefault
      FieldName = 'NFe_VeiculoNovo'
      Origin = 'NFe_VeiculoNovo'
    end
    object qConsultaNFe_nDI: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'NFe_nDI'
      Origin = 'NFe_nDI'
      Size = 10
    end
    object qConsultaNFe_dDI: TDateTimeField
      AutoGenerateValue = arDefault
      FieldName = 'NFe_dDI'
      Origin = 'NFe_dDI'
    end
    object qConsultaNFe_xLocDesemb: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'NFe_xLocDesemb'
      Origin = 'NFe_xLocDesemb'
      Size = 60
    end
    object qConsultaNFe_UFDesemb: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'NFe_UFDesemb'
      Origin = 'NFe_UFDesemb'
      Size = 2
    end
    object qConsultaNFe_dDesemb: TDateTimeField
      AutoGenerateValue = arDefault
      FieldName = 'NFe_dDesemb'
      Origin = 'NFe_dDesemb'
    end
    object qConsultaNFe_cExportador: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'NFe_cExportador'
      Origin = 'NFe_cExportador'
      Size = 60
    end
    object qConsultaNFe_nAdicao: TIntegerField
      AutoGenerateValue = arDefault
      FieldName = 'NFe_nAdicao'
      Origin = 'NFe_nAdicao'
    end
    object qConsultaNFe_cFabricante: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'NFe_cFabricante'
      Origin = 'NFe_cFabricante'
      Size = 60
    end
    object qConsultaNFe_vDescDI: TBCDField
      AutoGenerateValue = arDefault
      FieldName = 'NFe_vDescDI'
      Origin = 'NFe_vDescDI'
      Precision = 10
    end
    object qConsultaNFe_Veiculo_Cor_Codigo: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'NFe_Veiculo_Cor_Codigo'
      Origin = 'NFe_Veiculo_Cor_Codigo'
      Size = 4
    end
    object qConsultaNFe_Veiculo_Cor_Descricao: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'NFe_Veiculo_Cor_Descricao'
      Origin = 'NFe_Veiculo_Cor_Descricao'
      Size = 40
    end
    object qConsultaNFe_Veiculo_Pot: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'NFe_Veiculo_Pot'
      Origin = 'NFe_Veiculo_Pot'
      Size = 4
    end
    object qConsultaNFe_Veiculo_Cilin: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'NFe_Veiculo_Cilin'
      Origin = 'NFe_Veiculo_Cilin'
      Size = 4
    end
    object qConsultaNFe_Medicamento: TIntegerField
      AutoGenerateValue = arDefault
      FieldName = 'NFe_Medicamento'
      Origin = 'NFe_Medicamento'
    end
    object qConsultaNFe_Armamento: TIntegerField
      AutoGenerateValue = arDefault
      FieldName = 'NFe_Armamento'
      Origin = 'NFe_Armamento'
    end
    object qConsultaNFe_Combustivel: TIntegerField
      AutoGenerateValue = arDefault
      FieldName = 'NFe_Combustivel'
      Origin = 'NFe_Combustivel'
    end
    object qConsultaNFe_modBC: TIntegerField
      AutoGenerateValue = arDefault
      FieldName = 'NFe_modBC'
      Origin = 'NFe_modBC'
    end
    object qConsultaNFe_modBCST: TIntegerField
      AutoGenerateValue = arDefault
      FieldName = 'NFe_modBCST'
      Origin = 'NFe_modBCST'
    end
    object qConsultaNFe_pMVAST: TBCDField
      AutoGenerateValue = arDefault
      FieldName = 'NFe_pMVAST'
      Origin = 'NFe_pMVAST'
      Precision = 6
      Size = 2
    end
    object qConsultaNFe_motDesICMS: TIntegerField
      AutoGenerateValue = arDefault
      FieldName = 'NFe_motDesICMS'
      Origin = 'NFe_motDesICMS'
    end
    object qConsultaCODIGO_ALFANUMERICO: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'CODIGO_ALFANUMERICO'
      Origin = 'CODIGO_ALFANUMERICO'
    end
  end
  object tConsulta: TTimer
    OnTimer = tConsultaTimer
    Left = 426
    Top = 28
  end
end
