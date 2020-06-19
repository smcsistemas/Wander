object Frm_Produto2: TFrm_Produto2
  Left = 0
  Top = 0
  ParentCustomHint = False
  BiDiMode = bdLeftToRight
  BorderIcons = [biSystemMenu]
  BorderStyle = bsSingle
  Caption = 'Cadastro de Produtos'
  ClientHeight = 301
  ClientWidth = 782
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
  PixelsPerInch = 96
  TextHeight = 16
  object cxPageControl1: TcxPageControl
    Left = 0
    Top = 0
    Width = 783
    Height = 300
    Font.Charset = ANSI_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'Tahoma'
    Font.Style = [fsBold]
    ParentFont = False
    TabOrder = 0
    Properties.ActivePage = tbNFe
    Properties.ActivateFocusedTab = False
    Properties.CustomButtons.Buttons = <>
    LookAndFeel.NativeStyle = False
    LookAndFeel.SkinName = 'Office2013White'
    ClientRectBottom = 298
    ClientRectLeft = 2
    ClientRectRight = 781
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
      ExplicitLeft = 0
      ExplicitTop = 0
      ExplicitWidth = 0
      ExplicitHeight = 0
      object Label12: TLabel
        Left = 351
        Top = 6
        Width = 66
        Height = 18
        Caption = 'Filtrar Por:'
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -15
        Font.Name = 'Tahoma'
        Font.Style = []
        ParentFont = False
      end
      object Label58: TLabel
        Left = 4
        Top = 249
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
        Left = 101
        Top = 249
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
        Left = 196
        Top = 249
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
        Left = 560
        Top = 7
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
      object Label34: TLabel
        Left = 3
        Top = 6
        Width = 49
        Height = 18
        Caption = 'Buscar:'
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -15
        Font.Name = 'Tahoma'
        Font.Style = []
        ParentFont = False
      end
      object QtdeItens: TLabel
        Left = 749
        Top = 248
        Width = 21
        Height = 13
        Alignment = taRightJustify
        Caption = '000'
      end
      object Label51: TLabel
        Left = 558
        Top = 232
        Width = 150
        Height = 13
        Caption = 'Total de produtos listados:'
      end
      object Label35: TLabel
        Left = 532
        Top = 248
        Width = 176
        Height = 13
        Caption = 'Total de produtos cadastrados:'
      end
      object lblprodcads: TLabel
        Left = 749
        Top = 232
        Width = 21
        Height = 13
        Alignment = taRightJustify
        Caption = '000'
      end
      object edtBuscar: TEdit
        Left = 59
        Top = 5
        Width = 286
        Height = 21
        CharCase = ecUpperCase
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = [fsBold]
        ParentFont = False
        TabOrder = 0
      end
      object chk_diff_estoque: TcxCheckBox
        Left = 3
        Top = 229
        Caption = 'Diferenciar por quantidade em estoque'
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
        Left = 3
        Top = 34
        Width = 767
        Height = 189
        PopupMenu = popmenu
        TabOrder = 2
        LookAndFeel.NativeStyle = False
        LookAndFeel.SkinName = 'DevExpressStyle'
        object tbView: TcxGridDBTableView
          PopupMenu = popmenu
          Navigator.Buttons.CustomButtons = <>
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
            MinWidth = 25
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
            Width = 25
          end
          object tbViewPROD_SALDO: TcxGridDBColumn
            Caption = 'Estoque'
            DataBinding.FieldName = 'PROD_SALDO'
            PropertiesClassName = 'TcxLabelProperties'
            Properties.Alignment.Horz = taCenter
            HeaderAlignmentHorz = taCenter
            HeaderGlyphAlignmentHorz = taCenter
            MinWidth = 60
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
            Width = 60
          end
          object tbViewPRECO: TcxGridDBColumn
            Caption = 'Pre'#231'o'
            DataBinding.FieldName = 'PROD_PRECO_VAR'
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
            Width = 100
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
          object tbViewPROD_REFERENCIASFABRICA: TcxGridDBColumn
            Caption = 'Ref Fabricante'
            DataBinding.FieldName = 'PROD_REFERENCIASFABRICA'
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
          object tbViewTIPO_ITEM: TcxGridDBColumn
            Caption = 'Tipo'
            DataBinding.FieldName = 'TIPO_ITEM'
            PropertiesClassName = 'TcxLabelProperties'
            Properties.Alignment.Horz = taCenter
            HeaderAlignmentHorz = taCenter
            HeaderGlyphAlignmentHorz = taCenter
            MinWidth = 30
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
            Width = 30
          end
          object tbViewMARCA: TcxGridDBColumn
            Caption = 'Marca'
            DataBinding.FieldName = 'PROD_MARCA'
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
          object tbViewPROD_NFe_N16_pICMS: TcxGridDBColumn
            Caption = 'ICMS %'
            DataBinding.FieldName = 'PROD_NFe_N16_pICMS'
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
          object tbViewPROD_NFe_N12_CST_ICMS: TcxGridDBColumn
            Caption = 'CST'
            DataBinding.FieldName = 'PROD_NFe_N12_CST_ICMS'
            PropertiesClassName = 'TcxLabelProperties'
            Properties.Alignment.Horz = taCenter
            HeaderAlignmentHorz = taCenter
            HeaderGlyphAlignmentHorz = taCenter
            MinWidth = 40
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
            Width = 40
          end
          object tbViewCSOSN: TcxGridDBColumn
            DataBinding.FieldName = 'CSOSN'
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
            DataBinding.FieldName = 'PROD_NCMSH'
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
          object tbViewPROD_ESTOQMIN: TcxGridDBColumn
            DataBinding.FieldName = 'PROD_ESTOQMIN'
            Visible = False
          end
        end
        object gdProdsLevel1: TcxGridLevel
          GridView = tbView
        end
      end
      object cbFiltro: TcxComboBox
        Left = 421
        Top = 5
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
        Properties.DropDownRows = 9
        Properties.Items.Strings = (
          'C'#243'digo'
          'C'#243'd. Barras'
          'Descri'#231#227'o'
          'UN'
          'Pre'#231'o'
          'Pre'#231'o Promo'#231#227'o'
          'Grupo'
          'Marca'
          'CST'
          'PROD_NCMSH'
          'CSOSN'
          'Refer'#234'ncia do Fabricante')
        Properties.ReadOnly = False
        Style.LookAndFeel.NativeStyle = False
        Style.LookAndFeel.SkinName = 'Metropolis'
        StyleDisabled.LookAndFeel.NativeStyle = False
        StyleDisabled.LookAndFeel.SkinName = 'Metropolis'
        StyleFocused.LookAndFeel.NativeStyle = False
        StyleFocused.LookAndFeel.SkinName = 'Metropolis'
        StyleHot.LookAndFeel.NativeStyle = False
        StyleHot.LookAndFeel.SkinName = 'Metropolis'
        TabOrder = 3
        Width = 133
      end
      object cbTipoItemConsulta: TcxLookupComboBox
        Left = 637
        Top = 5
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
        Properties.ListSource = DS_TIPO_ITEM
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
        TabOrder = 4
        Width = 134
      end
    end
    object cxTabSheet4: TcxTabSheet
      Caption = '  Geral  '
      ImageIndex = 3
      object lbl1: TLabel
        Left = 815
        Top = 263
        Width = 46
        Height = 18
        Caption = 'Status:'
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -15
        Font.Name = 'Tahoma'
        Font.Style = []
        ParentFont = False
      end
      object GroupBox2: TGroupBox
        Left = 8
        Top = 142
        Width = 610
        Height = 119
        Caption = '  Composi'#231#227'o Pre'#231'o  '
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'Tahoma'
        Font.Style = [fsBold]
        ParentFont = False
        TabOrder = 1
        object Label13: TLabel
          Left = 10
          Top = 22
          Width = 105
          Height = 18
          Caption = 'Pre'#231'o Custo R$:'
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Height = -15
          Font.Name = 'Tahoma'
          Font.Style = []
          ParentFont = False
        end
        object Label20: TLabel
          Left = 224
          Top = 22
          Width = 59
          Height = 18
          Caption = 'Frete %:'
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Height = -15
          Font.Name = 'Tahoma'
          Font.Style = []
          ParentFont = False
        end
        object Label26: TLabel
          Left = 465
          Top = 22
          Width = 92
          Height = 18
          Caption = 'Desp. Op. %:'
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Height = -15
          Font.Name = 'Tahoma'
          Font.Style = []
          ParentFont = False
        end
        object Label39: TLabel
          Left = 9
          Top = 54
          Width = 106
          Height = 18
          Caption = 'Pre'#231'o M'#233'dio R$:'
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Height = -15
          Font.Name = 'Tahoma'
          Font.Style = []
          ParentFont = False
        end
        object Label33: TLabel
          Left = 335
          Top = 22
          Width = 80
          Height = 18
          Caption = 'Imposto %:'
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Height = -15
          Font.Name = 'Tahoma'
          Font.Style = []
          ParentFont = False
        end
        object Label24: TLabel
          Left = 28
          Top = 86
          Width = 87
          Height = 18
          Caption = 'Pre'#231'o Venda:'
          Font.Charset = ANSI_CHARSET
          Font.Color = -1
          Font.Height = -15
          Font.Name = 'Tahoma'
          Font.Style = []
          ParentFont = False
        end
        object Label82: TLabel
          Left = 224
          Top = 54
          Width = 119
          Height = 18
          Caption = 'Margem Lucro %:'
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Height = -15
          Font.Name = 'Tahoma'
          Font.Style = []
          ParentFont = False
        end
        object Label7: TLabel
          Left = 415
          Top = 54
          Width = 142
          Height = 18
          Caption = 'Desconto M'#225'ximo %:'
          Font.Charset = ANSI_CHARSET
          Font.Color = -1
          Font.Height = -15
          Font.Name = 'Tahoma'
          Font.Style = []
          ParentFont = False
        end
        object Label9: TLabel
          Left = 224
          Top = 87
          Width = 94
          Height = 18
          Caption = 'Comiss'#245'es %:'
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Height = -15
          Font.Name = 'Tahoma'
          Font.Style = []
          ParentFont = False
        end
        object FRETE: TDBEdit
          Left = 289
          Top = 20
          Width = 31
          Height = 22
          CharCase = ecUpperCase
          DataField = 'FRETE'
          DataSource = DS_PRODUTO
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Helvetica Neue'
          Font.Style = [fsBold]
          ParentFont = False
          TabOrder = 1
        end
        object PRECO_CUSTO: TDBEdit
          Left = 121
          Top = 20
          Width = 85
          Height = 22
          CharCase = ecUpperCase
          Color = 8454143
          DataField = 'PRECO_CUSTO'
          DataSource = DS_PRODUTO
          Font.Charset = ANSI_CHARSET
          Font.Color = clRed
          Font.Height = -11
          Font.Name = 'Helvetica Neue'
          Font.Style = [fsBold]
          ParentFont = False
          TabOrder = 0
        end
        object DESP_OPERACIONAIS: TDBEdit
          Left = 564
          Top = 20
          Width = 31
          Height = 22
          CharCase = ecUpperCase
          DataField = 'DESP_OPERACIONAIS'
          DataSource = DS_PRODUTO
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Helvetica Neue'
          Font.Style = [fsBold]
          ParentFont = False
          TabOrder = 3
        end
        object CUSTO_MEDIO: TDBEdit
          Left = 121
          Top = 52
          Width = 85
          Height = 22
          CharCase = ecUpperCase
          DataField = 'CUSTO_MEDIO'
          DataSource = DS_PRODUTO
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Helvetica Neue'
          Font.Style = [fsBold]
          ParentFont = False
          TabOrder = 4
        end
        object IMPOSTO: TDBEdit
          Left = 420
          Top = 20
          Width = 31
          Height = 22
          CharCase = ecUpperCase
          DataField = 'IMPOSTO'
          DataSource = DS_PRODUTO
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Helvetica Neue'
          Font.Style = [fsBold]
          ParentFont = False
          TabOrder = 2
        end
        object PROD_PRECO_VAR: TDBEdit
          Left = 121
          Top = 85
          Width = 85
          Height = 21
          CharCase = ecUpperCase
          Color = 8454143
          DataField = 'PROD_PRECO_VAR'
          DataSource = DS_PRODUTO
          Font.Charset = ANSI_CHARSET
          Font.Color = clRed
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = [fsBold]
          ParentFont = False
          TabOrder = 5
        end
        object MARGEM_LUCRO: TDBEdit
          Left = 350
          Top = 53
          Width = 31
          Height = 21
          CharCase = ecUpperCase
          DataField = 'MARGEM_L_VAREJO'
          DataSource = DS_PRODUTO
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = [fsBold]
          ParentFont = False
          TabOrder = 6
        end
        object DBEdit2: TDBEdit
          Left = 564
          Top = 53
          Width = 31
          Height = 21
          CharCase = ecUpperCase
          DataField = 'PROD_PRECO_VAR'
          DataSource = DS_PRODUTO
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = [fsBold]
          ParentFont = False
          TabOrder = 7
        end
        object GroupBox25: TGroupBox
          Left = 331
          Top = 81
          Width = 264
          Height = 30
          Color = clHighlightText
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'Tahoma'
          Font.Style = [fsBold]
          ParentColor = False
          ParentFont = False
          TabOrder = 8
          object Label42: TLabel
            Left = 6
            Top = 5
            Width = 47
            Height = 18
            Caption = 'Balc'#227'o:'
            Font.Charset = ANSI_CHARSET
            Font.Color = clWindowText
            Font.Height = -15
            Font.Name = 'Tahoma'
            Font.Style = []
            ParentFont = False
          end
          object Label10: TLabel
            Left = 136
            Top = 5
            Width = 55
            Height = 18
            Caption = 'Externa:'
            Font.Charset = ANSI_CHARSET
            Font.Color = clWindowText
            Font.Height = -15
            Font.Name = 'Tahoma'
            Font.Style = []
            ParentFont = False
          end
          object PROD_COMISSAO_VAR: TDBEdit
            Left = 62
            Top = 4
            Width = 55
            Height = 21
            CharCase = ecUpperCase
            DataField = 'PROD_COMISSAO_VAR'
            DataSource = DS_PRODUTO
            Font.Charset = ANSI_CHARSET
            Font.Color = clCaptionText
            Font.Height = -11
            Font.Name = 'Tahoma'
            Font.Style = []
            ParentFont = False
            TabOrder = 0
          end
          object PROD_COMISSAO_EXT_VAR: TDBEdit
            Left = 200
            Top = 4
            Width = 55
            Height = 21
            CharCase = ecUpperCase
            DataField = 'PROD_COMISSAO_EXT_VAR'
            DataSource = DS_PRODUTO
            Font.Charset = ANSI_CHARSET
            Font.Color = clCaptionText
            Font.Height = -11
            Font.Name = 'Tahoma'
            Font.Style = []
            ParentFont = False
            TabOrder = 1
          end
        end
      end
      object GroupBox4: TGroupBox
        Left = 7
        Top = 4
        Width = 611
        Height = 133
        Caption = '  Produto  '
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'Tahoma'
        Font.Style = [fsBold]
        ParentFont = False
        TabOrder = 0
        object Label3: TLabel
          Left = 344
          Top = 21
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
        object Label1: TLabel
          Left = 67
          Top = 21
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
          Left = 60
          Top = 48
          Width = 55
          Height = 18
          Caption = 'Produto:'
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Height = -15
          Font.Name = 'Tahoma'
          Font.Style = []
          ParentFont = False
        end
        object Label5: TLabel
          Left = 11
          Top = 75
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
        object Label15: TLabel
          Left = 24
          Top = 102
          Width = 91
          Height = 18
          Caption = 'Tipo de Item:'
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Height = -15
          Font.Name = 'Tahoma'
          Font.Style = []
          ParentFont = False
        end
        object Label6: TLabel
          Left = 417
          Top = 102
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
          Left = 429
          Top = 75
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
        object btn_und: TcxButton
          Left = 573
          Top = 100
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
          TabOrder = 7
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = [fsBold]
          ParentFont = False
        end
        object btn_marca: TcxButton
          Left = 573
          Top = 73
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
          TabOrder = 5
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = [fsBold]
          ParentFont = False
        end
        object DESCRICAO_PRODUTO: TDBEdit
          Left = 120
          Top = 46
          Width = 475
          Height = 22
          CharCase = ecUpperCase
          DataField = 'DESCRICAO_PRODUTO'
          DataSource = DS_PRODUTO
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Helvetica Neue'
          Font.Style = []
          ParentFont = False
          TabOrder = 2
        end
        object PROD_REFERENCIASFABRICA: TDBEdit
          Left = 120
          Top = 73
          Width = 221
          Height = 22
          CharCase = ecUpperCase
          DataField = 'PROD_REFERENCIASFABRICA'
          DataSource = DS_PRODUTO
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Helvetica Neue'
          Font.Style = []
          ParentFont = False
          TabOrder = 3
        end
        object UNIDADE_MEDIDA: TDBEdit
          Left = 478
          Top = 100
          Width = 94
          Height = 22
          CharCase = ecUpperCase
          DataField = 'UNIDADE_MEDIDA'
          DataSource = DS_PRODUTO
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Helvetica Neue'
          Font.Style = []
          ParentFont = False
          ReadOnly = True
          TabOrder = 6
        end
        object MARCA: TDBEdit
          Left = 478
          Top = 73
          Width = 94
          Height = 22
          CharCase = ecUpperCase
          DataField = 'MARCA'
          DataSource = DS_PRODUTO
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Helvetica Neue'
          Font.Style = []
          ParentFont = False
          TabOrder = 4
        end
        object CODIGO_BARRAS: TDBEdit
          Left = 450
          Top = 19
          Width = 145
          Height = 22
          CharCase = ecUpperCase
          DataField = 'CODIGO_BARRAS'
          DataSource = DS_PRODUTO
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Helvetica Neue'
          Font.Style = []
          ParentFont = False
          TabOrder = 1
        end
        object dbedt_codigo: TDBEdit
          Left = 121
          Top = 20
          Width = 121
          Height = 21
          CharCase = ecUpperCase
          DataField = 'CODIGO'
          DataSource = DS_PRODUTO
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = [fsBold]
          ParentFont = False
          ReadOnly = True
          TabOrder = 0
        end
        object cbTipoItem: TcxDBLookupComboBox
          Left = 120
          Top = 101
          DataBinding.DataField = 'TIPO_ITEM'
          DataBinding.DataSource = DS_PRODUTO
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
          Properties.DropDownWidth = 238
          Properties.KeyFieldNames = 'CODIGO'
          Properties.ListColumns = <
            item
              FieldName = 'DESCRICAO'
            end>
          Properties.ListOptions.ShowHeader = False
          Properties.ListSource = DS_TIPO_ITEM
          Style.Font.Charset = ANSI_CHARSET
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
          TabOrder = 8
          Width = 221
        end
      end
      object chk_ativocadastro: TcxCheckBox
        Left = 866
        Top = 262
        Caption = 'Ativo'
        ParentBackground = False
        ParentColor = False
        ParentFont = False
        State = cbsChecked
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
      object Panel1: TPanel
        Left = 639
        Top = 6
        Width = 133
        Height = 254
        BevelOuter = bvNone
        TabOrder = 3
        object btnestoque: TcxButton
          Left = 7
          Top = 150
          Width = 119
          Height = 45
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
          TabOrder = 4
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'Helvetica Neue'
          Font.Style = [fsBold]
          ParentFont = False
          OnClick = btnestoqueClick
        end
        object BtnAlterar: TcxButton
          Left = 7
          Top = 102
          Width = 119
          Height = 42
          Caption = 'Alterar'
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
          TabOrder = 3
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'HelveticaNeue'
          Font.Style = [fsBold]
          Font.Quality = fqDraft
          ParentFont = False
        end
        object BtnCancelar: TcxButton
          Left = 7
          Top = 55
          Width = 119
          Height = 43
          Caption = 'Cancelar'
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
          TabOrder = 2
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'HelveticaNeue'
          Font.Style = [fsBold]
          ParentFont = False
        end
        object BtnGravar: TcxButton
          Left = 7
          Top = 8
          Width = 108
          Height = 43
          Caption = 'Gravar'
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
          TabOrder = 0
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'HelveticaNeue'
          Font.Style = [fsBold]
          ParentFont = False
        end
        object BtnIncluir: TcxButton
          Left = 7
          Top = 8
          Width = 119
          Height = 43
          Caption = 'Incluir'
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
          TabOrder = 1
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'HelveticaNeue'
          Font.Style = [fsBold]
          ParentFont = False
        end
        object cxButton1: TcxButton
          Left = 7
          Top = 201
          Width = 119
          Height = 45
          Caption = 'Tributa'#231#227'o'
          LookAndFeel.NativeStyle = False
          LookAndFeel.SkinName = 'Metropolis'
          OptionsImage.Glyph.Data = {
            36100000424D3610000000000000360000002800000020000000200000000100
            2000000000000010000000000000000000000000000000000000000000000000
            0000000000000000000000000000000000000000000000000000000000000000
            00000000000100000003000000080000000B0000000D0000000D0000000E0000
            000E0000000E0000000E0000000E0000000E0000000F0000000F0000000F0000
            000F0000000F000000100000000F0000000E0000000A00000004000000000000
            0000000000000000000000000000000000000000000000000000000000000000
            000000000002000000077D5E54BCAF8475FFAF8474FFAF8475FFAF8375FFAF83
            75FFAF8474FFAF8374FFAF8374FFAF8374FFAF8374FFAF8374FFAF8374FFAF83
            74FFAF8374FFAF8374FFAF8273FFAE8274FF7D5D52BD0000000A000000000000
            0000000000000000000000000000000000000000000000000000000000000000
            00000000000200000009B18677FFFAF3F0FFFAF3F0FFF9F3F0FFF9F2F0FFF9F3
            F0FFF9F2F0FFF9F2EFFFF9F2EFFFF9F2EFFFF9F2EFFFF9F2EFFFFAF2EFFFFAF2
            EFFFF9F2EFFFF9F2EFFFF9F2EFFFF9F2EFFFB08576FF0000000C000000000000
            0000000000000000000000000000000000000000000000000000000000000000
            0000000000020000000AB3887AFFF9F4F1FFF8EEEBFFF7EFEBFFF7EFEAFFF7EE
            EBFFF8EFEBFFF8EFEBFFF7EEEAFFF7EEEBFFF7EEEBFFF7EEEAFFF8EEEAFFF7EE
            EAFFF7EFEAFFF7EEEAFFF7EEEAFFF9F2EFFFB18677FF0000000D000000000000
            0000000000000000000000000000000000000000000000000000000000000000
            00000000000200000009B48A7CFFFAF4F1FFF8EFEBFFF8EFEBFFF8EEEBFFFAF5
            F2FFFBF6F4FFF8F1EDFFF8EEEBFFF9F3F0FFFBF6F5FFFBF7F4FFFAF3F1FFF8EF
            EBFFF8EFEBFFF8EFEBFFF7EEEBFFF9F3F1FFB38979FF0000000C000000000000
            0000000000000000000000000000000000000000000000000000000000000000
            00000000000200000008B58C7DFFFAF5F2FFF8F0ECFFF8F0ECFFF8EFEBFF7C6A
            63FF67544CFFD4CCC8FFF9F1EDFFA39691FF543F36FF57423AFF8D7C75FFF7EF
            EBFFF7EFEBFFF8EFECFFF8EFEBFFFAF4F1FFB48A7CFF0000000B000000000000
            0001000000010000000100000001000000010000000100000001000000010000
            00010000000300000008B78E80FFFAF5F2FFF8EFECFFF8F0ECFFF8EFECFF6F5A
            51FF533D33FF604A41FFD9D1CDFF5E453BFF5A4238FFBBAEA7FFF7EFECFFF8EF
            ECFFF8EFECFFF8EFECFFF8EFECFFFAF4F2FFB68D7EFF0000000A000000020000
            0003000000050000000600000006000000060000000600000006000000060000
            0006000000080000000DB89082FFFAF5F4FFF8F0ECFFF9F0EDFFF9F0EDFFEBE1
            DEFFC2B4AFFFD4C8C4FF847068FF5E463CFF634D43FFF6EEEAFFF8F0ECFFF8F0
            EDFFF8F0ECFFF8EFECFFF8EFECFFFAF4F2FFB78F80FF00000009000000060000
            000D000000130000001600000016000000160000001600000017000000170000
            0017000000180000001CBA9284FFFBF5F4FFF8F0EEFFF8F0EDFFF8F0EDFFF8F1
            EEFFF8F0EDFFF8F0EDFF98877FFF60483EFF907F79FFF8F0EEFFF9F1EEFFF8F0
            EDFFF8F0EDFFF9F0EDFFF9F0ECFFFAF5F3FFBA9182FF000000080000000D7A59
            4DBFA97C6CFFA97C6BFFA97C6BFFA97C6CFFA97B6CFFA97C6CFFA97C6BFFA87B
            6BFFA87B6BFFD0B9B1FFBC9487FFFBF6F4FFF9F1EDFFF9F1EEFFF9F1EEFFF8F0
            EDFFF8F1EDFFF8F2EEFF70584FFF61483EFF816D65FFF0EBE9FFDDD5D2FFFAF7
            F4FFF9F0EDFFF8F0EEFFF8F0EEFFFBF5F4FFBB9385FF0000000800000012AA7D
            6EFFF8F2EEFFF8F2EEFFF9F2EEFFF8F2EEFFF9F2EEFFF9F2EEFFF9F1EEFFCFB2
            A8FFF7EFECFFF7F3F1FFBD9689FFFBF7F5FFF9F1EEFFF9F1EEFFF9F1EEFFF9F1
            EEFFFBF6F3FFC2B6B1FF685045FF644C43FFCDBFBBFF644D42FF5C443AFF7966
            5DFFF8F1EEFFF9F1EEFFF9F0EEFFFAF6F4FFBC9587FF0000000700000013AC7F
            6FFFF9F2EEFFF7EDE8FFF6EDE8FFF6EDE9FFF7EDE8FFF7EDE8FFF7EDE8FFC19E
            92FFF5ECE7FFF7F2F0FFBE988BFFFCF7F6FFF9F1EEFFF9F1EFFFF9F1EEFFF9F1
            EFFF97857DFF6E564CFF6D544AFFAB9C94FFF9F1EFFFCDC1BBFF766056FF8977
            6EFFF9F1EEFFF9F1EEFFF9F1EEFFFAF7F4FFBD9689FF0000000600000013AD80
            71FFF9F2EFFFF6EDE9FFF6EEE8FFF7EDE9FFF7EEE9FFF7EDE9FFF7EDE9FFC29E
            94FFF6ECE7FFF8F3F1FFBF998CFFFCF7F6FFF9F1EFFFF9F1EEFFF9F2EFFFF9F1
            EFFFF9F2EEFFF9F2EFFFF9F1EFFFF9F1EFFFF9F2EFFFF9F2EFFFFAF1EFFFFAF1
            EFFFF9F1EFFFF9F2EFFFF9F2EFFFFBF7F5FFBF998AFF0000000500000012AE82
            73FFF9F3F0FFF7EDE9FFF7EEE9FFF7EDE9FFF7EDE9FFF7EDEAFFF7EEE9FFC3A0
            94FFF6EDE8FFF8F4F1FFC19B8EFFFCF7F6FFF9F2F0FFFAF2F0FFF9F2F0FFF9F2
            EFFF72594DFF71594DFF70574DFF71574DFF70574CFF6F574BFF6F574BFF5B44
            3BFFF9F2EFFFF9F2EFFFF9F2EFFFFCF7F6FFC0998CFF00000005000000111375
            4EFF14764FFF14764FFF14764FFF13754EFF13754EFF14744DFF14744DFF1374
            4DFFC2A094FFDFCEC8FFC29D8FFFFCF8F6FFFAF2EFFFF9F2F0FFF9F2F0FFF9F3
            F0FFFAF3EFFFF9F2F0FFF9F3EFFFF9F2EFFFFAF2EFFFF9F2F0FFFAF2F0FFFAF2
            EFFFF9F2EFFFFAF2F0FFFAF2EFFFFCF7F6FFC19C8EFF00000004000000111477
            4FFF52C9A6FF4AC6A1FF4AC7A1FF6AD4B6FF4AC6A1FF49C7A1FF49C7A0FF1376
            4EFFF7EEEAFFF9F5F2FFC39D91FFFCF9F8FFFCF9F7FFFCF8F7FFFCF8F7FFFCF8
            F7FFFCF8F7FFFCF8F7FFFCF8F7FFFCF8F7FFFCF8F6FFFCF9F6FFFCF8F6FFFCF8
            F6FFFCF8F6FFFCF7F6FFFCF8F6FFFCF7F6FFC39D8FFF00000003000000101579
            52FF54CBA8FF4BC8A2FF4BC7A1FF0A4F2DFF4AC7A1FF4BC6A1FF4AC7A2FF1477
            51FFF7EEEBFFFAF6F4FFD1B4ABFFC49E91FFC49F91FFC49F91FFC39E92FFC39E
            92FFC39F91FFC39E92FFC49E91FFC49E91FFC39E91FFC39E91FFC39E91FFC39E
            91FFC39E91FFC39E91FFC39E91FFC39E90FF91756BBE000000020000000F177C
            53FF59CEABFF4CC8A1FF4CC8A2FF0A502EFF4BC7A2FF4BC8A1FF4AC8A2FF167A
            52FFF7EFEBFFFCF7F5FFFBF6F4FFFBF6F4FFFAF5F3FFFAF5F3FFFAF5F3FFE0CF
            CAFFF9F5F3FFF9F5F3FFF9F5F3FFFAF5F3FFFAF5F3FFF9F5F3FFFAF7F6FFD7C2
            BCFF0000001500000008000000020000000200000002000000010000000F177E
            55FF5DCFAEFF4CC8A3FF4CC8A2FF0A5330FF4CC8A3FF4CC8A3FF4CC7A2FF177D
            55FFF8EFEBFFF8EFEBFFF7EFEBFFF8EFEBFFF7EFEBFFF7EFEBFFF8EFECFFC5A5
            99FFF8EFEBFFF7EFEBFFF7EFEBFFF7EFEBFFF8EFEBFFF8EEEBFFFAF4F1FFB389
            7CFF0000001300000006000000010000000000000000000000000000000E1980
            58FF61D1B0FF4DC8A3FF4DC9A3FF0B5632FF4CC9A3FF4DC8A2FF4CC8A2FF187F
            58FFC8A69CFFC7A69CFFC7A69CFFC7A69CFFC7A69BFFC6A69AFFC7A59BFFC6A5
            9AFFC6A59AFFC6A599FFC6A499FFC5A599FFC5A599FFC5A599FFD7BFB7FFB58C
            7EFF0000001100000004000000000000000000000000000000000000000D1A83
            5AFF66D2B3FF4EC9A4FF4EC9A3FF0C5934FF4DC9A3FF4DC9A3FF4DC9A3FF1A83
            5AFFF8EFECFFF8F0EDFFF8F0ECFFF8F0ECFFF8F0EDFFF8F0ECFFF8EFECFFC7A6
            9CFFF8EFECFFF8F0EDFFF8EFECFFF8EFECFFF8EFECFFF8F0ECFFFAF5F2FFB78E
            80FF0000001000000004000000000000000000000000000000000000000D1B86
            5DFF69D5B6FF4FC9A4FF4EC9A5FF0D5B36FF4EC9A4FF4EC9A4FF4EC9A4FF1C85
            5CFFF9F0EDFFF8F0EDFFF8F0EDFFF8F0ECFFF8F0EDFFF8F0EDFFF9F0EDFFC8A8
            9DFFF8F0EDFFF9F0EDFFF8F0EDFFF8F0ECFFF8F0ECFFF8F0ECFFFBF5F2FFB990
            82FF0000001000000004000000000000000000000000000000000000000C1C88
            5FFF6ED6B9FF6DD6B8FF6FD6B9FF0D5D37FF6FD7B9FF6BD6B8FF4FC9A4FF1C88
            5FFFF9F0EEFFF8F1EDFFF8F1EDFFF9F0EDFFF8F1EEFFF9F0EDFFF8F0EEFFC9A9
            9FFFF9F0EDFFF8F1EDFFF9F0EDFFF8F0EDFFF9F0EDFFF9F0ECFFFAF5F3FFBA92
            84FF0000000F00000004000000000000000000000000000000000000000B1F8B
            62FF73D9BCFF136942FF13754AFF0D6039FF0D5F38FF13673FFF50CBA5FF1F8B
            62FFF9F1EEFFF9F0EEFFF9F0EDFFF9F0EEFFF9F1EEFFF8F1EEFFF9F1EEFFC9AA
            A0FFF8F1EDFFF9F1EDFFF9F0EDFFF9F0EEFFF8F0EEFFF8F0EDFFFAF5F4FFBC94
            86FF0000000E00000004000000000000000000000000000000000000000B208E
            65FF77DABEFF37A780FF14774CFF14764CFF14754AFF339C76FF50CAA7FF208E
            65FFCBADA2FFCBADA2FFCBACA2FFCBADA1FFCAADA1FFCAACA1FFCAACA1FFCAAB
            A1FFCAACA1FFCAABA0FFCAABA0FFCAABA0FFCAABA0FFC9ABA0FFDEC9C0FFBD95
            89FF0000000E00000003000000000000000000000000000000000000000A2190
            66FF7CDCC1FF50CAA5FF1F875BFF157A4EFF1C7D52FF4FC9A5FF52CCA7FF2291
            67FFF9F1EFFFF9F2EFFFF9F2EFFFFAF1EFFFFAF1EFFFF9F1EFFFF9F2EFFFCBAD
            A3FFF9F1EEFFF9F1EFFFF9F1EEFFF9F1EEFFF9F1EEFFF9F1EEFFFBF7F4FFBE98
            8AFF0000000D0000000300000000000000000000000000000000000000092293
            69FF7FDEC4FF52CCA8FF3EB28BFF14794CFF3BAA83FF52CCA8FF52CCA7FF2393
            6AFFF9F2EFFFFAF2EFFFF9F2EFFFF9F2EFFFF9F2EFFFF9F2EFFFF9F2EFFFCBAE
            A4FFF9F1EFFFFAF2EFFFF9F2EFFFFAF1EFFFF9F2EFFFF9F1EFFFFBF7F6FFC099
            8CFF0000000C0000000300000000000000000000000000000000000000082496
            6BFF83E0C6FF53CDA8FF53CDA9FF127045FF53CCA8FF53CCA8FF53CDA8FF2496
            6BFFF9F2EFFFFAF2EFFFF9F2F0FFFAF2F0FFFAF2EFFFF9F2EFFFFAF2F0FFCDAF
            A5FFFAF2EFFFF9F2EFFFF9F2EFFFF9F2EFFFF9F2EFFFFAF1EFFFFCF7F6FFC19B
            8EFF0000000B0000000300000000000000000000000000000000000000072498
            6DFF88E1C9FF87E1C9FF86E0C9FF86E0C8FF85E0C8FF84E0C8FF84E0C6FF2498
            6EFFFCF7F6FFFCF7F6FFFCF8F6FFFCF7F6FFFCF7F6FFFCF7F6FFFCF7F6FFE2D0
            C9FFFCF7F6FFFCF7F6FFFCF7F6FFFCF7F6FFFCF7F6FFFCF7F6FFFCF7F6FFC29C
            8FFF0000000A0000000300000000000000000000000000000000000000051C72
            51C025996FFF25996FFF25986FFF25986EFF24986EFF24986EFF24986EFF2497
            6DFFC49E91FFC39E91FFC39E91FFC39E91FFC39E91FFC39E91FFC39E91FFC39E
            91FFC39E90FFC39E91FFC39E90FFC39D90FFC39E91FFC39E91FFC39D90FF9175
            6BC1000000060000000200000000000000000000000000000000000000020000
            0004000000060000000700000007000000070000000800000008000000080000
            0008000000080000000800000008000000080000000800000008000000090000
            0009000000090000000900000009000000090000000900000009000000080000
            0006000000030000000100000000000000000000000000000000000000000000
            0001000000010000000200000002000000020000000200000002000000020000
            0002000000020000000200000002000000020000000200000002000000020000
            0002000000020000000200000002000000020000000200000002000000020000
            0001000000010000000000000000000000000000000000000000}
          TabOrder = 5
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'Helvetica Neue'
          Font.Style = [fsBold]
          ParentFont = False
        end
      end
    end
    object tbNFe: TcxTabSheet
      Caption = 'Emiss'#227'o de NFe/NFCe'
      ImageIndex = 2
      object rgNFe_indTot: TRadioGroup
        Left = 24
        Top = 24
        Width = 212
        Height = 75
        Caption = '  Valor total do Item '
        Items.Strings = (
          'N'#227'o comp'#245'e valor total da NF-e '
          'Comp'#245'e ')
        TabOrder = 0
      end
      object rgNFe_VeiculoNovo: TRadioGroup
        Left = 242
        Top = 24
        Width = 96
        Height = 76
        Caption = '  Ve'#237'culo Novo '
        Items.Strings = (
          'N'#227'o '
          'Sim')
        TabOrder = 1
      end
      object rgNFe_Medicamento: TRadioGroup
        Left = 343
        Top = 24
        Width = 96
        Height = 76
        Caption = '  Medicamento'
        Items.Strings = (
          'N'#227'o '
          'Sim')
        TabOrder = 2
      end
    end
  end
  object sql_increment: TFDQuery
    Connection = Module.connection
    SQL.Strings = (
      'select max(codigo)+1 as AUTO_INCREMENT from produto')
    Left = 999
    Top = 431
    object sql_incrementAUTO_INCREMENT: TLargeintField
      AutoGenerateValue = arDefault
      FieldName = 'AUTO_INCREMENT'
      Origin = 'AUTO_INCREMENT'
    end
  end
  object DS_PRODUTO: TDataSource
    DataSet = SQL_PRODUTO
    Left = 1010
    Top = 291
  end
  object DS_CSTICMS: TDataSource
    DataSet = SQL_CSTICMS
    Left = 1138
    Top = 259
  end
  object SQL_CSTICMS: TFDQuery
    Connection = Module.connection
    SQL.Strings = (
      'select * from cst_icms'
      'order by CODIGO')
    Left = 1061
    Top = 392
    object SQL_CSTICMSCODIGO: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'CODIGO'
      Origin = 'CODIGO'
      Size = 2
    end
    object SQL_CSTICMSDESCRICAO: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'DESCRICAO'
      Origin = 'DESCRICAO'
      Size = 100
    end
  end
  object DS_CSTPIS: TDataSource
    DataSet = SQL_CSTPIS
    Left = 1074
    Top = 259
  end
  object DS_CSTCOFINS: TDataSource
    DataSet = SQL_CSTCOFINS
    Left = 1074
    Top = 291
  end
  object SQL_CSTPIS: TFDQuery
    Connection = Module.connection
    SQL.Strings = (
      'select * from cst_pis order by codigo')
    Left = 977
    Top = 387
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
    Left = 1021
    Top = 13
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
  object DS_ORIGEM_ICMS: TDataSource
    DataSet = SQL_ORIGEM_ICMS
    Left = 1104
    Top = 162
  end
  object SQL_ORIGEM_ICMS: TFDQuery
    Connection = Module.connection
    SQL.Strings = (
      'SELECT * FROM origem_mercadoria'
      'ORDER BY CODIGO')
    Left = 1155
    Top = 365
    object SQL_ORIGEM_ICMSCODIGO: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'CODIGO'
      Origin = 'CODIGO'
      Size = 2
    end
    object SQL_ORIGEM_ICMSDESCRICAO: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'DESCRICAO'
      Origin = 'DESCRICAO'
      Size = 200
    end
  end
  object DS_Lista: TDataSource
    DataSet = SQL_LISTA
    Left = 982
    Top = 164
  end
  object SQL_LISTA: TFDQuery
    Connection = Module.connection
    SQL.Strings = (
      'Select * from produto'
      'ORDER BY CODIGO')
    Left = 995
    Top = 492
    object SQL_LISTACODIGO: TFDAutoIncField
      FieldName = 'CODIGO'
      Origin = 'CODIGO'
      ProviderFlags = [pfInWhere, pfInKey]
      ReadOnly = True
    end
    object SQL_LISTACODIGO_BARRAS: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'CODIGO_BARRAS'
      Origin = 'CODIGO_BARRAS'
      Size = 50
    end
    object SQL_LISTACOD_BARRAS_AUXILIAR: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'COD_BARRAS_AUXILIAR'
      Origin = 'COD_BARRAS_AUXILIAR'
      Size = 50
    end
    object SQL_LISTADESCRICAO_PRODUTO: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'DESCRICAO_PRODUTO'
      Origin = 'DESCRICAO_PRODUTO'
      Size = 200
    end
    object SQL_LISTAPROD_DETALHES: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'PROD_DETALHES'
      Origin = 'PROD_DETALHES'
      Size = 200
    end
    object SQL_LISTAPROD_REFERENCIASFABRICA: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'PROD_REFERENCIASFABRICA'
      Origin = 'PROD_REFERENCIASFABRICA'
      Size = 50
    end
    object SQL_LISTAMARCA: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'PROD_MARCA'
      Origin = 'MARCA'
      Size = 50
    end
    object SQL_LISTAFAMILIA: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'PROD_CDFAMILIA'
      Origin = 'PROD_CDFAMILIA'
      Size = 50
    end
    object SQL_LISTAGRUPO: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'GRUPO'
      Origin = 'GRUPO'
      Size = 50
    end
    object SQL_LISTASUBGRUPO: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'SUBGRUPO'
      Origin = 'SUBGRUPO'
      Size = 50
    end
    object SQL_LISTAUNIDADE_MEDIDA: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'UNIDADE_MEDIDA'
      Origin = 'UNIDADE_MEDIDA'
      Size = 50
    end
    object SQL_LISTADATA_CADASTRO: TDateField
      AutoGenerateValue = arDefault
      FieldName = 'DATA_CADASTRO'
      Origin = 'DATA_CADASTRO'
    end
    object SQL_LISTATIPO_ITEM: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'TIPO_ITEM'
      Origin = 'TIPO_ITEM'
      Size = 100
    end
    object SQL_LISTAPROD_ESTOQMIN: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'PROD_ESTOQMIN'
      Origin = 'PROD_ESTOQMIN'
      Size = 50
    end
    object SQL_LISTAPRECO_CUSTO: TBCDField
      AutoGenerateValue = arDefault
      FieldName = 'PRECO_CUSTO'
      Origin = 'PRECO_CUSTO'
      Precision = 10
    end
    object SQL_LISTAFRETE: TBCDField
      AutoGenerateValue = arDefault
      FieldName = 'FRETE'
      Origin = 'FRETE'
      Precision = 10
    end
    object SQL_LISTAIMPOSTO: TBCDField
      AutoGenerateValue = arDefault
      FieldName = 'IMPOSTO'
      Origin = 'IMPOSTO'
      Precision = 10
    end
    object SQL_LISTADESP_OPERACIONAIS: TBCDField
      AutoGenerateValue = arDefault
      FieldName = 'DESP_OPERACIONAIS'
      Origin = 'DESP_OPERACIONAIS'
      Precision = 10
    end
    object SQL_LISTACUSTO_MEDIO: TBCDField
      AutoGenerateValue = arDefault
      FieldName = 'CUSTO_MEDIO'
      Origin = 'CUSTO_MEDIO'
      Precision = 10
    end
    object SQL_LISTAMARGEM_LUCRO: TBCDField
      AutoGenerateValue = arDefault
      FieldName = 'MARGEM_LUCRO'
      Origin = 'MARGEM_LUCRO'
      Precision = 10
    end
    object SQL_LISTAMARGEM_L_VAREJO: TBCDField
      AutoGenerateValue = arDefault
      FieldName = 'MARGEM_L_VAREJO'
      Origin = 'MARGEM_L_VAREJO'
      Precision = 10
    end
    object SQL_LISTAMARGEM_L_ATACADO: TBCDField
      AutoGenerateValue = arDefault
      FieldName = 'MARGEM_L_ATACADO'
      Origin = 'MARGEM_L_ATACADO'
      Precision = 10
    end
    object SQL_LISTAMARGEM_L_DISTRIBUIDOR: TBCDField
      AutoGenerateValue = arDefault
      FieldName = 'MARGEM_L_DISTRIBUIDOR'
      Origin = 'MARGEM_L_DISTRIBUIDOR'
      Precision = 10
    end
    object SQL_LISTAPROD_MAXDESC: TBCDField
      AutoGenerateValue = arDefault
      FieldName = 'PROD_MAXDESC'
      Origin = 'PROD_MAXDESC'
      Precision = 10
    end
    object SQL_LISTAPROD_MAXDESC_VAR: TBCDField
      AutoGenerateValue = arDefault
      FieldName = 'PROD_MAXDESC_VAR'
      Origin = 'PROD_MAXDESC_VAR'
      Precision = 10
    end
    object SQL_LISTAPROD_MAXDESC_ATAC: TBCDField
      AutoGenerateValue = arDefault
      FieldName = 'PROD_MAXDESC_ATAC'
      Origin = 'PROD_MAXDESC_ATAC'
      Precision = 10
    end
    object SQL_LISTAPROD_MAXDESC_DIST: TBCDField
      AutoGenerateValue = arDefault
      FieldName = 'PROD_MAXDESC_DIST'
      Origin = 'PROD_MAXDESC_DIST'
      Precision = 10
    end
    object SQL_LISTADESCONTO_L_VAREJO: TBCDField
      AutoGenerateValue = arDefault
      FieldName = 'DESCONTO_L_VAREJO'
      Origin = 'DESCONTO_L_VAREJO'
      Precision = 10
    end
    object SQL_LISTADESCONTO_L_ATACADO: TBCDField
      AutoGenerateValue = arDefault
      FieldName = 'DESCONTO_L_ATACADO'
      Origin = 'DESCONTO_L_ATACADO'
      Precision = 10
    end
    object SQL_LISTADESCONTO_L_DISTRIBUIDOR: TBCDField
      AutoGenerateValue = arDefault
      FieldName = 'DESCONTO_L_DISTRIBUIDOR'
      Origin = 'DESCONTO_L_DISTRIBUIDOR'
      Precision = 10
    end
    object SQL_LISTAPROD_COMISSAO: TBCDField
      AutoGenerateValue = arDefault
      FieldName = 'PROD_COMISSAO'
      Origin = 'PROD_COMISSAO'
      Precision = 10
    end
    object SQL_LISTAPROD_COMISSAO_LOJA: TBCDField
      AutoGenerateValue = arDefault
      FieldName = 'PROD_COMISSAO_LOJA'
      Origin = 'PROD_COMISSAO_LOJA'
      Precision = 10
    end
    object SQL_LISTAPROD_COMISSAO_ATAC: TBCDField
      AutoGenerateValue = arDefault
      FieldName = 'PROD_COMISSAO_ATAC'
      Origin = 'PROD_COMISSAO_ATAC'
      Precision = 10
    end
    object SQL_LISTAPROD_COMISSAO_DIST: TBCDField
      AutoGenerateValue = arDefault
      FieldName = 'PROD_COMISSAO_DIST'
      Origin = 'PROD_COMISSAO_DIST'
      Precision = 10
    end
    object SQL_LISTAPROD_COMISSAO_EXT: TBCDField
      AutoGenerateValue = arDefault
      FieldName = 'PROD_COMISSAO_EXT'
      Origin = 'PROD_COMISSAO_EXT'
      Precision = 10
    end
    object SQL_LISTAPROD_COMISSAO_EXT_VAR: TBCDField
      AutoGenerateValue = arDefault
      FieldName = 'PROD_COMISSAO_EXT_VAR'
      Origin = 'PROD_COMISSAO_EXT_VAR'
      Precision = 10
    end
    object SQL_LISTAPROD_COMISSAO_EXT_ATAC: TBCDField
      AutoGenerateValue = arDefault
      FieldName = 'PROD_COMISSAO_EXT_ATAC'
      Origin = 'PROD_COMISSAO_EXT_ATAC'
      Precision = 10
    end
    object SQL_LISTAPROD_COMISSAO_EXT_DIST: TBCDField
      AutoGenerateValue = arDefault
      FieldName = 'PROD_COMISSAO_EXT_DIST'
      Origin = 'PROD_COMISSAO_EXT_DIST'
      Precision = 10
    end
    object SQL_LISTAPROD_PRECO_ATAC: TBCDField
      AutoGenerateValue = arDefault
      FieldName = 'PROD_PRECO_ATAC'
      Origin = 'PROD_PRECO_ATAC'
      Precision = 10
    end
    object SQL_LISTAPROD_PRECO_DIST: TBCDField
      AutoGenerateValue = arDefault
      FieldName = 'PROD_PRECO_DIST'
      Origin = 'PROD_PRECO_DIST'
      Precision = 10
    end
    object SQL_LISTAPROD_PRECO_VAR: TBCDField
      AutoGenerateValue = arDefault
      FieldName = 'PROD_PRECO_VAR'
      Origin = 'PROD_PRECO_VAR'
      currency = True
      Precision = 10
    end
    object SQL_LISTAPROD_PROMOCAO_VAR: TBCDField
      AutoGenerateValue = arDefault
      FieldName = 'PROD_PROMOCAO_VAR'
      Origin = 'PROD_PROMOCAO_VAR'
      Precision = 10
    end
    object SQL_LISTAPROD_PROMOCAO_ATAC: TBCDField
      AutoGenerateValue = arDefault
      FieldName = 'PROD_PROMOCAO_ATAC'
      Origin = 'PROD_PROMOCAO_ATAC'
      Precision = 10
    end
    object SQL_LISTAPROD_PROMOCAO_DIST: TBCDField
      AutoGenerateValue = arDefault
      FieldName = 'PROD_PROMOCAO_DIST'
      Origin = 'PROD_PROMOCAO_DIST'
      Precision = 10
    end
    object SQL_LISTAVALOR_PROMOCIONAL_ATACADO: TBCDField
      AutoGenerateValue = arDefault
      FieldName = 'VALOR_PROMOCIONAL_ATACADO'
      Origin = 'VALOR_PROMOCIONAL_ATACADO'
      Precision = 10
    end
    object SQL_LISTAVALOR_PROMOCIONAL_DISTRIBUIDOR: TBCDField
      AutoGenerateValue = arDefault
      FieldName = 'VALOR_PROMOCIONAL_DISTRIBUIDOR'
      Origin = 'VALOR_PROMOCIONAL_DISTRIBUIDOR'
      Precision = 10
    end
    object SQL_LISTAVALOR_PROMOCIONAL_VAREJO: TBCDField
      AutoGenerateValue = arDefault
      FieldName = 'VALOR_PROMOCIONAL_VAREJO'
      Origin = 'VALOR_PROMOCIONAL_VAREJO'
      Precision = 10
    end
    object SQL_LISTAPROD_SALDO: TBCDField
      AutoGenerateValue = arDefault
      FieldName = 'PROD_SALDO'
      Origin = 'PROD_SALDO'
      Precision = 10
    end
    object SQL_LISTAPROD_NFe_N16_pICMS: TBCDField
      AutoGenerateValue = arDefault
      FieldName = 'PROD_NFe_N16_pICMS'
      Origin = 'PROD_NFe_N16_pICMS'
      Precision = 10
    end
    object SQL_LISTAPROD_NFe_N16_pICMS_SUBST: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'PROD_NFe_N16_pICMS_SUBST'
      Origin = 'PROD_NFe_N16_pICMS_SUBST'
    end
    object SQL_LISTALEIS: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'LEIS'
      Origin = 'LEIS'
    end
    object SQL_LISTAGENERO: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'GENERO'
      Origin = 'GENERO'
    end
    object SQL_LISTAFORNECEDOR_NOME: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'FORNECEDOR_NOME'
      Origin = 'FORNECEDOR_NOME'
      Size = 100
    end
    object SQL_LISTACOD_COMB: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'COD_COMB'
      Origin = 'COD_COMB'
    end
    object SQL_LISTAPROD_NFe_O13_pIPI: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'PROD_NFe_O13_pIPI'
      Origin = 'PROD_NFe_O13_pIPI'
    end
    object SQL_LISTAPROD_NFe_O02_clEnq: TIntegerField
      AutoGenerateValue = arDefault
      FieldName = 'PROD_NFe_O02_clEnq'
      Origin = 'PROD_NFe_O02_clEnq'
    end
    object SQL_LISTACODIGO_LOCALIZACAO: TIntegerField
      AutoGenerateValue = arDefault
      FieldName = 'CODIGO_LOCALIZACAO'
      Origin = 'CODIGO_LOCALIZACAO'
    end
    object SQL_LISTAPROD_NFe_N12_CST_ICMS: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'PROD_NFe_N12_CST_ICMS'
      Origin = 'PROD_NFe_N12_CST_ICMS'
      Size = 3
    end
    object SQL_LISTAICMS_IPI: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'ICMS_IPI'
      Origin = 'ICMS_IPI'
      Size = 2
    end
    object SQL_LISTAPIS_CST: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'PIS_CST'
      Origin = 'PIS_CST'
      Size = 5
    end
    object SQL_LISTACOFINS_CST: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'COFINS_CST'
      Origin = 'COFINS_CST'
      Size = 5
    end
    object SQL_LISTAPROD_NFe_N11_orig: TIntegerField
      AutoGenerateValue = arDefault
      FieldName = 'PROD_NFe_N11_orig'
      Origin = 'PROD_NFe_N11_orig'
    end
    object SQL_LISTACSOSN: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'CSOSN'
      Origin = 'CSOSN'
      Size = 200
    end
    object SQL_LISTANCM: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'PROD_NCMSH'
      Origin = 'PROD_NCMSH'
      Size = 50
    end
    object SQL_LISTACEST: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'CEST'
      Origin = 'CEST'
      Size = 50
    end
    object SQL_LISTAANP: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'ANP'
      Origin = 'ANP'
      Size = 50
    end
    object SQL_LISTAEX_IPI: TSingleField
      AutoGenerateValue = arDefault
      FieldName = 'EX_IPI'
      Origin = 'EX_IPI'
    end
    object SQL_LISTASTATUS_CADASTRAL: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'STATUS_CADASTRAL'
      Origin = 'STATUS_CADASTRAL'
      FixedChar = True
      Size = 7
    end
    object SQL_LISTAPESAVEL: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'PESAVEL'
      Origin = 'PESAVEL'
      FixedChar = True
      Size = 3
    end
    object SQL_LISTAUTILIZA_ETIQUETA_BALANCA: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'UTILIZA_ETIQUETA_BALANCA'
      Origin = 'UTILIZA_ETIQUETA_BALANCA'
      FixedChar = True
      Size = 3
    end
    object SQL_LISTAUSA_LOTE: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'USA_LOTE'
      Origin = 'USA_LOTE'
      FixedChar = True
      Size = 3
    end
    object SQL_LISTACONTROLADO: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'CONTROLADO'
      Origin = 'CONTROLADO'
      FixedChar = True
      Size = 3
    end
    object SQL_LISTACODIGO_FORNECEDOR: TIntegerField
      AutoGenerateValue = arDefault
      FieldName = 'CODIGO_FORNECEDOR'
      Origin = 'CODIGO_FORNECEDOR'
    end
    object SQL_LISTAQUANT_MINI_VAREJO_P: TBCDField
      AutoGenerateValue = arDefault
      FieldName = 'QUANT_MINI_VAREJO_P'
      Origin = 'QUANT_MINI_VAREJO_P'
      Precision = 10
    end
    object SQL_LISTAQUANT_MINI_ATACADO_P: TBCDField
      AutoGenerateValue = arDefault
      FieldName = 'QUANT_MINI_ATACADO_P'
      Origin = 'QUANT_MINI_ATACADO_P'
      Precision = 10
    end
    object SQL_LISTAQUANT_MINI_DISTRIBUIDOR_P: TBCDField
      AutoGenerateValue = arDefault
      FieldName = 'QUANT_MINI_DISTRIBUIDOR_P'
      Origin = 'QUANT_MINI_DISTRIBUIDOR_P'
      Precision = 10
    end
    object SQL_LISTAQUANT_MINI_VAREJO_Q: TBCDField
      AutoGenerateValue = arDefault
      FieldName = 'QUANT_MINI_VAREJO_Q'
      Origin = 'QUANT_MINI_VAREJO_Q'
      Precision = 10
    end
    object SQL_LISTAQUANT_MINI_ATACADO_Q: TBCDField
      AutoGenerateValue = arDefault
      FieldName = 'QUANT_MINI_ATACADO_Q'
      Origin = 'QUANT_MINI_ATACADO_Q'
      Precision = 10
    end
    object SQL_LISTAQUANT_MINI_DISTRIBUIDOR_Q: TBCDField
      AutoGenerateValue = arDefault
      FieldName = 'QUANT_MINI_DISTRIBUIDOR_Q'
      Origin = 'QUANT_MINI_DISTRIBUIDOR_Q'
      Precision = 10
    end
    object SQL_LISTAQUANT_MINI_VAREJO_D: TBCDField
      AutoGenerateValue = arDefault
      FieldName = 'QUANT_MINI_VAREJO_D'
      Origin = 'QUANT_MINI_VAREJO_D'
      Precision = 10
    end
    object SQL_LISTAQUANT_MINI_DISTRIBUIDOR_D: TBCDField
      AutoGenerateValue = arDefault
      FieldName = 'QUANT_MINI_DISTRIBUIDOR_D'
      Origin = 'QUANT_MINI_DISTRIBUIDOR_D'
      Precision = 10
    end
    object SQL_LISTAQUANT_MINI_ATACADO_D: TBCDField
      AutoGenerateValue = arDefault
      FieldName = 'QUANT_MINI_ATACADO_D'
      Origin = 'QUANT_MINI_ATACADO_D'
      Precision = 10
    end
    object SQL_LISTAPROD_NFe_O09_CST_IPI: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'PROD_NFe_O09_CST_IPI'
      Origin = 'PROD_NFe_O09_CST_IPI'
      Size = 3
    end
    object SQL_LISTACOD_BALANCA_1: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'COD_BALANCA_1'
      Origin = 'COD_BALANCA_1'
      Size = 8
    end
    object SQL_LISTACOD_BALANCA_2: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'COD_BALANCA_2'
      Origin = 'COD_BALANCA_2'
      Size = 8
    end
    object SQL_LISTACOD_BALANCA_3: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'COD_BALANCA_3'
      Origin = 'COD_BALANCA_3'
      Size = 8
    end
    object SQL_LISTAPROD_COMISSAO_VAR: TBCDField
      AutoGenerateValue = arDefault
      FieldName = 'PROD_COMISSAO_VAR'
      Origin = 'PROD_COMISSAO_VAR'
      Precision = 10
    end
    object SQL_LISTAPROMOCAO_INICIO: TDateField
      AutoGenerateValue = arDefault
      FieldName = 'PROMOCAO_INICIO'
      Origin = 'PROMOCAO_INICIO'
    end
    object SQL_LISTAPROMOCAO_TERMINO: TDateField
      AutoGenerateValue = arDefault
      FieldName = 'PROMOCAO_TERMINO'
      Origin = 'PROMOCAO_TERMINO'
    end
    object SQL_LISTAPROD_NFe_N14_pRedBC: TBCDField
      AutoGenerateValue = arDefault
      FieldName = 'PROD_NFe_N14_pRedBC'
      Origin = 'PROD_NFe_N14_pRedBC'
      Precision = 10
    end
    object SQL_LISTAPROD_NFe_N20_pRedBCST: TBCDField
      AutoGenerateValue = arDefault
      FieldName = 'PROD_NFe_N20_pRedBCST'
      Origin = 'PROD_NFe_N20_pRedBCST'
      Precision = 10
    end
    object SQL_LISTALUCRO_SUBST_TRIBUTARIA: TBCDField
      AutoGenerateValue = arDefault
      FieldName = 'LUCRO_SUBST_TRIBUTARIA'
      Origin = 'LUCRO_SUBST_TRIBUTARIA'
      Precision = 10
    end
    object SQL_LISTAPROD_NFe_N21_vBCST_PAUTA: TBCDField
      AutoGenerateValue = arDefault
      FieldName = 'PROD_NFe_N21_vBCST_PAUTA'
      Origin = 'PROD_NFe_N21_vBCST_PAUTA'
      Precision = 10
    end
  end
  object SQL_PRODUTO: TFDQuery
    Connection = Module.connection
    SQL.Strings = (
      'select * from produto where codigo = :pcodigo')
    Left = 1159
    Top = 429
    ParamData = <
      item
        Name = 'pcodigo'
        DataType = ftWideString
        FDDataType = dtWideString
        ParamType = ptInput
        Value = Null
      end>
    object SQL_PRODUTOCODIGO: TFDAutoIncField
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
    object SQL_PRODUTOCODIGO_BARRAS: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'CODIGO_BARRAS'
      Origin = 'CODIGO_BARRAS'
      Size = 50
    end
    object SQL_PRODUTODESCRICAO_PRODUTO: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'DESCRICAO_PRODUTO'
      Origin = 'DESCRICAO_PRODUTO'
      Size = 200
    end
    object SQL_PRODUTOPROD_DETALHES: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'PROD_DETALHES'
      Origin = 'PROD_DETALHES'
      Size = 200
    end
    object SQL_PRODUTOPROD_REFERENCIASFABRICA: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'PROD_REFERENCIASFABRICA'
      Origin = 'PROD_REFERENCIASFABRICA'
      Size = 50
    end
    object SQL_PRODUTOMARCA: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'PROD_MARCA'
      Origin = 'MARCA'
      Size = 50
    end
    object SQL_PRODUTOFAMILIA: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'PROD_CDFAMILIA'
      Origin = 'PROD_CDFAMILIA'
      Size = 50
    end
    object SQL_PRODUTOGRUPO: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'GRUPO'
      Origin = 'GRUPO'
      Size = 50
    end
    object SQL_PRODUTOSUBGRUPO: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'SUBGRUPO'
      Origin = 'SUBGRUPO'
      Size = 50
    end
    object SQL_PRODUTOUNIDADE_MEDIDA: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'UNIDADE_MEDIDA'
      Origin = 'UNIDADE_MEDIDA'
      Size = 50
    end
    object SQL_PRODUTODATA_CADASTRO: TDateField
      AutoGenerateValue = arDefault
      FieldName = 'DATA_CADASTRO'
      Origin = 'DATA_CADASTRO'
      EditMask = '!99/99/0000;1;_'
    end
    object SQL_PRODUTOTIPO_ITEM: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'TIPO_ITEM'
      Origin = 'TIPO_ITEM'
      Size = 100
    end
    object SQL_PRODUTOLEIS: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'LEIS'
      Origin = 'LEIS'
    end
    object SQL_PRODUTOGENERO: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'GENERO'
      Origin = 'GENERO'
    end
    object SQL_PRODUTOFORNECEDOR_NOME: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'FORNECEDOR_NOME'
      Origin = 'FORNECEDOR_NOME'
      Size = 100
    end
    object SQL_PRODUTOCOD_COMB: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'COD_COMB'
      Origin = 'COD_COMB'
    end
    object SQL_PRODUTOPROD_NFe_O02_clEnq: TIntegerField
      AutoGenerateValue = arDefault
      FieldName = 'PROD_NFe_O02_clEnq'
      Origin = 'PROD_NFe_O02_clEnq'
    end
    object SQL_PRODUTOCODIGO_LOCALIZACAO: TIntegerField
      AutoGenerateValue = arDefault
      FieldName = 'CODIGO_LOCALIZACAO'
      Origin = 'CODIGO_LOCALIZACAO'
    end
    object SQL_PRODUTOPROD_NFe_N12_CST_ICMS: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'PROD_NFe_N12_CST_ICMS'
      Origin = 'PROD_NFe_N12_CST_ICMS'
      Size = 2
    end
    object SQL_PRODUTOICMS_IPI: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'ICMS_IPI'
      Origin = 'ICMS_IPI'
      Size = 2
    end
    object SQL_PRODUTOPIS_CST: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'PIS_CST'
      Origin = 'PIS_CST'
      Size = 2
    end
    object SQL_PRODUTOCSOSN: TStringField
      Alignment = taCenter
      AutoGenerateValue = arDefault
      FieldName = 'CSOSN'
      Origin = 'CSOSN'
      Size = 200
    end
    object SQL_PRODUTOCEST: TStringField
      Alignment = taCenter
      AutoGenerateValue = arDefault
      FieldName = 'CEST'
      Origin = 'CEST'
      Size = 50
    end
    object SQL_PRODUTOANP: TStringField
      Alignment = taCenter
      AutoGenerateValue = arDefault
      FieldName = 'ANP'
      Origin = 'ANP'
      Size = 50
    end
    object SQL_PRODUTOEX_IPI: TSingleField
      AutoGenerateValue = arDefault
      FieldName = 'EX_IPI'
      Origin = 'EX_IPI'
    end
    object SQL_PRODUTONCM: TStringField
      Alignment = taCenter
      AutoGenerateValue = arDefault
      FieldName = 'PROD_NCMSH'
      Origin = 'PROD_NCMSH'
      Size = 50
    end
    object SQL_PRODUTOSTATUS_CADASTRAL: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'STATUS_CADASTRAL'
      Origin = 'STATUS_CADASTRAL'
      FixedChar = True
      Size = 7
    end
    object SQL_PRODUTOCOD_BARRAS_AUXILIAR: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'COD_BARRAS_AUXILIAR'
      Origin = 'COD_BARRAS_AUXILIAR'
      Size = 50
    end
    object SQL_PRODUTOPESAVEL: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'PESAVEL'
      Origin = 'PESAVEL'
      FixedChar = True
      Size = 3
    end
    object SQL_PRODUTOUTILIZA_ETIQUETA_BALANCA: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'UTILIZA_ETIQUETA_BALANCA'
      Origin = 'UTILIZA_ETIQUETA_BALANCA'
      FixedChar = True
      Size = 3
    end
    object SQL_PRODUTOUSA_LOTE: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'USA_LOTE'
      Origin = 'USA_LOTE'
      FixedChar = True
      Size = 3
    end
    object SQL_PRODUTOCONTROLADO: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'CONTROLADO'
      Origin = 'CONTROLADO'
      FixedChar = True
      Size = 3
    end
    object SQL_PRODUTOPRECO_CUSTO: TBCDField
      FieldName = 'PRECO_CUSTO'
      Origin = 'PRECO_CUSTO'
      DisplayFormat = 'R$ #,##0.00'
      Precision = 10
    end
    object SQL_PRODUTOQUANT_MINI_ATACADO_D: TBCDField
      FieldName = 'QUANT_MINI_ATACADO_D'
      Origin = 'QUANT_MINI_ATACADO_D'
      DisplayFormat = '#,##0.00%'
      Precision = 10
    end
    object SQL_PRODUTOQUANT_MINI_DISTRIBUIDOR_D: TBCDField
      FieldName = 'QUANT_MINI_DISTRIBUIDOR_D'
      Origin = 'QUANT_MINI_DISTRIBUIDOR_D'
      DisplayFormat = '#,##0.00%'
      Precision = 10
    end
    object SQL_PRODUTOQUANT_MINI_VAREJO_D: TBCDField
      FieldName = 'QUANT_MINI_VAREJO_D'
      Origin = 'QUANT_MINI_VAREJO_D'
      EditFormat = '#,##0.00%'
      Precision = 10
    end
    object SQL_PRODUTOPROD_NFe_N16_pICMS: TBCDField
      AutoGenerateValue = arDefault
      FieldName = 'PROD_NFe_N16_pICMS'
      Origin = 'PROD_NFe_N16_pICMS'
      Precision = 10
    end
    object SQL_PRODUTOCODIGO_FORNECEDOR: TIntegerField
      AutoGenerateValue = arDefault
      FieldName = 'CODIGO_FORNECEDOR'
      Origin = 'CODIGO_FORNECEDOR'
    end
    object SQL_PRODUTOQUANT_MINI_VAREJO_P: TBCDField
      AutoGenerateValue = arDefault
      FieldName = 'QUANT_MINI_VAREJO_P'
      Origin = 'QUANT_MINI_VAREJO_P'
      Precision = 10
    end
    object SQL_PRODUTOQUANT_MINI_ATACADO_P: TBCDField
      AutoGenerateValue = arDefault
      FieldName = 'QUANT_MINI_ATACADO_P'
      Origin = 'QUANT_MINI_ATACADO_P'
      Precision = 10
    end
    object SQL_PRODUTOQUANT_MINI_DISTRIBUIDOR_P: TBCDField
      AutoGenerateValue = arDefault
      FieldName = 'QUANT_MINI_DISTRIBUIDOR_P'
      Origin = 'QUANT_MINI_DISTRIBUIDOR_P'
      Precision = 10
    end
    object SQL_PRODUTOQUANT_MINI_VAREJO_Q: TBCDField
      AutoGenerateValue = arDefault
      FieldName = 'QUANT_MINI_VAREJO_Q'
      Origin = 'QUANT_MINI_VAREJO_Q'
      Precision = 10
    end
    object SQL_PRODUTOQUANT_MINI_ATACADO_Q: TBCDField
      AutoGenerateValue = arDefault
      FieldName = 'QUANT_MINI_ATACADO_Q'
      Origin = 'QUANT_MINI_ATACADO_Q'
      Precision = 10
    end
    object SQL_PRODUTOQUANT_MINI_DISTRIBUIDOR_Q: TBCDField
      AutoGenerateValue = arDefault
      FieldName = 'QUANT_MINI_DISTRIBUIDOR_Q'
      Origin = 'QUANT_MINI_DISTRIBUIDOR_Q'
      Precision = 10
    end
    object SQL_PRODUTOPROD_PRECO_ATAC: TBCDField
      FieldName = 'PROD_PRECO_ATAC'
      Origin = 'PROD_PRECO_ATAC'
      DisplayFormat = 'R$ #,##0.00'
      Precision = 10
    end
    object SQL_PRODUTOPROD_PRECO_DIST: TBCDField
      FieldName = 'PROD_PRECO_DIST'
      Origin = 'PROD_PRECO_DIST'
      DisplayFormat = 'R$ #,##0.00'
      Precision = 10
    end
    object SQL_PRODUTOPROD_PRECO_VAR: TBCDField
      FieldName = 'PROD_PRECO_VAR'
      Origin = 'PROD_PRECO_VAR'
      DisplayFormat = 'R$ #,##0.00'
      Precision = 10
    end
    object SQL_PRODUTOPROD_PROMOCAO_VAR: TBCDField
      FieldName = 'PROD_PROMOCAO_VAR'
      Origin = 'PROD_PROMOCAO_VAR'
      DisplayFormat = 'R$ #,##0.00'
      Precision = 10
    end
    object SQL_PRODUTOPROD_PROMOCAO_ATAC: TBCDField
      FieldName = 'PROD_PROMOCAO_ATAC'
      Origin = 'PROD_PROMOCAO_ATAC'
      DisplayFormat = 'R$ #,##0.00'
      Precision = 10
    end
    object SQL_PRODUTOPROD_PROMOCAO_DIST: TBCDField
      FieldName = 'PROD_PROMOCAO_DIST'
      Origin = 'PROD_PROMOCAO_DIST'
      DisplayFormat = 'R$ #,##0.00'
      Precision = 10
    end
    object SQL_PRODUTOVALOR_PROMOCIONAL_ATACADO: TBCDField
      FieldName = 'VALOR_PROMOCIONAL_ATACADO'
      Origin = 'VALOR_PROMOCIONAL_ATACADO'
      DisplayFormat = 'R$ #,##0.00'
      Precision = 10
    end
    object SQL_PRODUTOVALOR_PROMOCIONAL_DISTRIBUIDOR: TBCDField
      FieldName = 'VALOR_PROMOCIONAL_DISTRIBUIDOR'
      Origin = 'VALOR_PROMOCIONAL_DISTRIBUIDOR'
      DisplayFormat = 'R$ #,##0.00'
      Precision = 10
    end
    object SQL_PRODUTOVALOR_PROMOCIONAL_VAREJO: TBCDField
      FieldName = 'VALOR_PROMOCIONAL_VAREJO'
      Origin = 'VALOR_PROMOCIONAL_VAREJO'
      DisplayFormat = 'R$ #,##0.00'
      EditFormat = '#,##0.00'
      Precision = 10
    end
    object SQL_PRODUTOPROD_SALDO: TBCDField
      Alignment = taCenter
      AutoGenerateValue = arDefault
      FieldName = 'PROD_SALDO'
      Origin = 'PROD_SALDO'
      Precision = 10
    end
    object SQL_PRODUTOPROD_NFe_N16_pICMS_SUBST: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'PROD_NFe_N16_pICMS_SUBST'
      Origin = 'PROD_NFe_N16_pICMS_SUBST'
    end
    object SQL_PRODUTOPROD_NFe_O13_pIPI: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'PROD_NFe_O13_pIPI'
      Origin = 'PROD_NFe_O13_pIPI'
    end
    object SQL_PRODUTOMARGEM_LUCRO: TBCDField
      FieldName = 'MARGEM_LUCRO'
      Origin = 'MARGEM_LUCRO'
      DisplayFormat = '#,##0.00%'
      EditFormat = '#,##0.00'
      Precision = 10
    end
    object SQL_PRODUTOMARGEM_L_VAREJO: TBCDField
      FieldName = 'MARGEM_L_VAREJO'
      Origin = 'MARGEM_L_VAREJO'
      DisplayFormat = '#,##0.00%'
      EditFormat = '#,##0.00'
      Precision = 10
    end
    object SQL_PRODUTOMARGEM_L_ATACADO: TBCDField
      FieldName = 'MARGEM_L_ATACADO'
      Origin = 'MARGEM_L_ATACADO'
      DisplayFormat = '#,##0.00%'
      EditFormat = '#,##0.00'
      Precision = 10
    end
    object SQL_PRODUTOMARGEM_L_DISTRIBUIDOR: TBCDField
      FieldName = 'MARGEM_L_DISTRIBUIDOR'
      Origin = 'MARGEM_L_DISTRIBUIDOR'
      DisplayFormat = '#,##0.00%'
      EditFormat = '#,##0.00'
      Precision = 10
    end
    object SQL_PRODUTOPROD_MAXDESC: TBCDField
      FieldName = 'PROD_MAXDESC'
      Origin = 'PROD_MAXDESC'
      DisplayFormat = '#,##0.00%'
      Precision = 10
    end
    object SQL_PRODUTOPROD_MAXDESC_VAR: TBCDField
      FieldName = 'PROD_MAXDESC_VAR'
      Origin = 'PROD_MAXDESC_VAR'
      DisplayFormat = '#,##0.00%'
      Precision = 10
    end
    object SQL_PRODUTOPROD_MAXDESC_ATAC: TBCDField
      FieldName = 'PROD_MAXDESC_ATAC'
      Origin = 'PROD_MAXDESC_ATAC'
      DisplayFormat = '#,##0.00%'
      Precision = 10
    end
    object SQL_PRODUTOPROD_MAXDESC_DIST: TBCDField
      FieldName = 'PROD_MAXDESC_DIST'
      Origin = 'PROD_MAXDESC_DIST'
      DisplayFormat = '#,##0.00%'
      Precision = 10
    end
    object SQL_PRODUTODESCONTO_L_VAREJO: TBCDField
      FieldName = 'DESCONTO_L_VAREJO'
      Origin = 'DESCONTO_L_VAREJO'
      DisplayFormat = '#,##0.00%'
      Precision = 10
    end
    object SQL_PRODUTODESCONTO_L_ATACADO: TBCDField
      FieldName = 'DESCONTO_L_ATACADO'
      Origin = 'DESCONTO_L_ATACADO'
      DisplayFormat = '#,##0.00%'
      Precision = 10
    end
    object SQL_PRODUTODESCONTO_L_DISTRIBUIDOR: TBCDField
      FieldName = 'DESCONTO_L_DISTRIBUIDOR'
      Origin = 'DESCONTO_L_DISTRIBUIDOR'
      DisplayFormat = '#,##0.00%'
      Precision = 10
    end
    object SQL_PRODUTOFRETE: TBCDField
      AutoGenerateValue = arDefault
      FieldName = 'FRETE'
      Origin = 'FRETE'
      DisplayFormat = '#,##0.00%'
      Precision = 10
    end
    object SQL_PRODUTOIMPOSTO: TBCDField
      AutoGenerateValue = arDefault
      FieldName = 'IMPOSTO'
      Origin = 'IMPOSTO'
      DisplayFormat = '#,##0.00%'
      Precision = 10
    end
    object SQL_PRODUTOCUSTO_MEDIO: TBCDField
      FieldName = 'CUSTO_MEDIO'
      Origin = 'CUSTO_MEDIO'
      DisplayFormat = 'R$ #,##0.00'
      Precision = 10
    end
    object SQL_PRODUTOPROD_COMISSAO_LOJA: TBCDField
      FieldName = 'PROD_COMISSAO_LOJA'
      Origin = 'PROD_COMISSAO_LOJA'
      DisplayFormat = '#,##0.00%'
      Precision = 10
    end
    object SQL_PRODUTOPROD_COMISSAO_EXT: TBCDField
      FieldName = 'PROD_COMISSAO_EXT'
      Origin = 'PROD_COMISSAO_EXT'
      DisplayFormat = '#,##0.00%'
      Precision = 10
    end
    object SQL_PRODUTOPROD_ESTOQMIN: TStringField
      Alignment = taCenter
      AutoGenerateValue = arDefault
      FieldName = 'PROD_ESTOQMIN'
      Origin = 'PROD_ESTOQMIN'
      Size = 50
    end
    object SQL_PRODUTODESP_OPERACIONAIS: TBCDField
      AutoGenerateValue = arDefault
      FieldName = 'DESP_OPERACIONAIS'
      Origin = 'DESP_OPERACIONAIS'
      DisplayFormat = '#,##0.00%'
      Precision = 10
    end
    object SQL_PRODUTOPROD_COMISSAO: TBCDField
      AutoGenerateValue = arDefault
      FieldName = 'PROD_COMISSAO'
      Origin = 'PROD_COMISSAO'
      Precision = 10
    end
    object SQL_PRODUTOCOFINS_CST: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'COFINS_CST'
      Origin = 'COFINS_CST'
      Size = 2
    end
    object SQL_PRODUTOPROD_NFe_N11_orig: TIntegerField
      AutoGenerateValue = arDefault
      FieldName = 'PROD_NFe_N11_orig'
      Origin = 'PROD_NFe_N11_orig'
    end
    object SQL_PRODUTOCOD_BALANCA_1: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'COD_BALANCA_1'
      Origin = 'COD_BALANCA_1'
      Size = 8
    end
    object SQL_PRODUTOCOD_BALANCA_2: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'COD_BALANCA_2'
      Origin = 'COD_BALANCA_2'
      Size = 8
    end
    object SQL_PRODUTOCOD_BALANCA_3: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'COD_BALANCA_3'
      Origin = 'COD_BALANCA_3'
      Size = 8
    end
    object SQL_PRODUTOPROD_NFe_O09_CST_IPI: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'PROD_NFe_O09_CST_IPI'
      Origin = 'PROD_NFe_O09_CST_IPI'
      Size = 3
    end
    object SQL_PRODUTOPROD_COMISSAO_ATAC: TBCDField
      AutoGenerateValue = arDefault
      FieldName = 'PROD_COMISSAO_ATAC'
      Origin = 'PROD_COMISSAO_ATAC'
      Precision = 10
    end
    object SQL_PRODUTOPROD_COMISSAO_DIST: TBCDField
      AutoGenerateValue = arDefault
      FieldName = 'PROD_COMISSAO_DIST'
      Origin = 'PROD_COMISSAO_DIST'
      Precision = 10
    end
    object SQL_PRODUTOPROD_COMISSAO_EXT_VAR: TBCDField
      AutoGenerateValue = arDefault
      FieldName = 'PROD_COMISSAO_EXT_VAR'
      Origin = 'PROD_COMISSAO_EXT_VAR'
      Precision = 10
    end
    object SQL_PRODUTOPROD_COMISSAO_EXT_ATAC: TBCDField
      AutoGenerateValue = arDefault
      FieldName = 'PROD_COMISSAO_EXT_ATAC'
      Origin = 'PROD_COMISSAO_EXT_ATAC'
      Precision = 10
    end
    object SQL_PRODUTOPROD_COMISSAO_EXT_DIST: TBCDField
      AutoGenerateValue = arDefault
      FieldName = 'PROD_COMISSAO_EXT_DIST'
      Origin = 'PROD_COMISSAO_EXT_DIST'
      Precision = 10
    end
    object SQL_PRODUTOPROD_COMISSAO_VAR: TBCDField
      AutoGenerateValue = arDefault
      FieldName = 'PROD_COMISSAO_VAR'
      Origin = 'PROD_COMISSAO_VAR'
      Precision = 10
    end
    object SQL_PRODUTOPROMOCAO_INICIO: TDateField
      AutoGenerateValue = arDefault
      FieldName = 'PROMOCAO_INICIO'
      Origin = 'PROMOCAO_INICIO'
    end
    object SQL_PRODUTOPROMOCAO_TERMINO: TDateField
      AutoGenerateValue = arDefault
      FieldName = 'PROMOCAO_TERMINO'
      Origin = 'PROMOCAO_TERMINO'
    end
    object SQL_PRODUTOPROD_NFe_N14_pRedBC: TBCDField
      AutoGenerateValue = arDefault
      FieldName = 'PROD_NFe_N14_pRedBC'
      Origin = 'PROD_NFe_N14_pRedBC'
      Precision = 10
    end
    object SQL_PRODUTOPROD_NFe_N20_pRedBCST: TBCDField
      AutoGenerateValue = arDefault
      FieldName = 'PROD_NFe_N20_pRedBCST'
      Origin = 'PROD_NFe_N20_pRedBCST'
      Precision = 10
    end
    object SQL_PRODUTOLUCRO_SUBST_TRIBUTARIA: TBCDField
      AutoGenerateValue = arDefault
      FieldName = 'LUCRO_SUBST_TRIBUTARIA'
      Origin = 'LUCRO_SUBST_TRIBUTARIA'
      Precision = 10
    end
    object SQL_PRODUTOPROD_NFe_N21_vBCST_PAUTA: TBCDField
      AutoGenerateValue = arDefault
      FieldName = 'PROD_NFe_N21_vBCST_PAUTA'
      Origin = 'PROD_NFe_N21_vBCST_PAUTA'
      Precision = 10
    end
    object SQL_PRODUTOponto_impressao_id: TIntegerField
      AutoGenerateValue = arDefault
      FieldName = 'ponto_impressao_id'
      Origin = 'ponto_impressao_id'
    end
  end
  object DS_CSTIPI: TDataSource
    DataSet = SQL_CSTIPI
    Left = 1042
    Top = 259
  end
  object SQL_CSTIPI: TFDQuery
    Connection = Module.connection
    SQL.Strings = (
      'select * from PROD_NFe_O09_CST_IPI'
      'order by CODIGO')
    Left = 1086
    Top = 431
  end
  object SQL_IPI: TFDQuery
    Connection = Module.connection
    SQL.Strings = (
      'SELECT * FROM tab_codenqipi'
      'ORDER BY CODENQ')
    Left = 968
    Top = 69
  end
  object DS_IPI: TDataSource
    DataSet = SQL_IPI
    Left = 1172
    Top = 112
  end
  object SQL_TIPO_ITEM: TFDQuery
    Connection = Module.connection
    SQL.Strings = (
      'SELECT * FROM PRODUTO_TIPO_ITEM')
    Left = 1083
    Top = 339
    object SQL_TIPO_ITEMCODIGO: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'CODIGO'
      Required = True
      Size = 50
    end
    object SQL_TIPO_ITEMDESCRICAO: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'DESCRICAO'
      Required = True
      Size = 100
    end
  end
  object DS_TIPO_ITEM: TDataSource
    AutoEdit = False
    DataSet = SQL_TIPO_ITEM
    Left = 966
    Top = 226
  end
  object SQL_DADOS_ROTINAS: TFDQuery
    Connection = Module.connection
    SQL.Strings = (
      
        'select e.codigo_regime_tributario, ps.* from empresa e,  paramet' +
        'ros_sistema ps')
    Left = 1171
    Top = 308
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
    Left = 1170
    Top = 183
  end
  object popmenu: TPopupMenu
    Left = 1151
    Top = 483
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
    end
  end
  object SQL_PRECO_FAIXA: TFDQuery
    Connection = Module.connection
    SQL.Strings = (
      'select * from produto_preco_faixa'
      'where id_produto = :pid_prod')
    Left = 984
    Top = 333
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
    Left = 1044
    Top = 164
  end
  object pop_faixa: TPopupMenu
    Left = 1095
    Top = 483
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
  object SQL_NAT_OP: TFDQuery
    Connection = Module.connection
    SQL.Strings = (
      'select id, descricao from natureza_operacao order by id')
    Left = 978
    Top = 13
    object SQL_NAT_OPid: TFDAutoIncField
      FieldName = 'id'
      Origin = 'ID'
      ProviderFlags = [pfInWhere, pfInKey]
      ReadOnly = True
    end
    object SQL_NAT_OPdescricao: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'descricao'
      Origin = 'DESCRICAO'
      Size = 255
    end
  end
  object SQL_CFOP_NATOP: TFDQuery
    Connection = Module.connection
    SQL.Strings = (
      
        'SELECT c.descricao as CFOP, no.DESCRICAO FROM NATUREZA_OPERACAO ' +
        'no'
      'join cfop c on c.codigo = no.cfop_st')
    Left = 1017
    Top = 94
    object SQL_CFOP_NATOPDESCRICAO: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'DESCRICAO'
      Origin = 'DESCRICAO'
      Size = 255
    end
    object SQL_CFOP_NATOPCFOP: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'CFOP'
      Origin = 'CFOP'
      Size = 500
    end
  end
  object DS_NAT_OP: TDataSource
    DataSet = SQL_NAT_OP
    Left = 1106
    Top = 259
  end
  object DS_CFOP_NATOP: TDataSource
    DataSet = SQL_CFOP_NATOP
    Left = 1042
    Top = 291
  end
  object sql_ponto_impressao: TFDQuery
    Connection = Module.connection
    SQL.Strings = (
      
        'select id, concat(nome, '#39' ('#39', impressora, '#39') '#39') as nome from pon' +
        'to_impressao')
    Left = 856
    Top = 336
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
    Left = 856
    Top = 392
  end
end
Trocou REFERENCIA_FABRICANTE por PROD_REFERENCIASFABRICA : automaticamente em 16/06/2020 14:13
Trocou INFO_ADICIONAIS por PROD_DETALHES : automaticamente em 16/06/2020 15:07
Trocou FieldName = 'MARCA' por FieldName = 'PROD_MARCA' : automaticamente em 16/06/2020 16:22
Trocou FieldName = 'FAMILIA' por FieldName = 'PROD_CDFAMILIA' : automaticamente em 16/06/2020 17:34
Trocou Origin = 'FAMILIA' por Origin = 'PROD_CDFAMILIA' : automaticamente em 16/06/2020 17:39
Trocou DESCONTO_MAXIMO por PROD_MAXDESC : automaticamente em 16/06/2020 22:24
Trocou DESCONTO_M_VAREJO por PROD_MAXDESC_VAR : automaticamente em 16/06/2020 22:28
Trocou DESCONTO_M_ATACADO por PROD_MAXDESC_ATAC : automaticamente em 16/06/2020 22:31
Trocou DESCONTO_M_DISTRIBUIDOR por PROD_MAXDESC_DIST : automaticamente em 16/06/2020 22:34
Trocou PAGAR_COMISSAO por PROD_COMISSAO : automaticamente em 16/06/2020 22:38
Trocou COMISSAO_BALCAO por PROD_COMISSAO_LOJA : automaticamente em 16/06/2020 22:42
Trocou BALCAO_COMISSAO_VAREJO por PROD_COMISSAO_VAR : automaticamente em 16/06/2020 22:44
Trocou BALCAO_COMISSAO_ATACADO por PROD_COMISSAO_ATAC : automaticamente em 16/06/2020 22:47
Trocou BALCAO_COMISSAO_DISTRIBUIDOR por PROD_COMISSAO_DIST : automaticamente em 16/06/2020 22:49
Trocou ESTOQUE_MINIMO por PROD_ESTOQMIN : automaticamente em 16/06/2020 22:54
Trocou COMISSAO_EXTERNA por PROD_COMISSAO_EXT : automaticamente em 17/06/2020 05:46
Trocou EXTERNA_COMISSAO_VAREJO por PROD_COMISSAO_EXT_VAR : automaticamente em 17/06/2020 05:53
Trocou EXTERNA_COMISSAO_ATACADO por PROD_COMISSAO_EXT_ATAC : automaticamente em 17/06/2020 05:56
Trocou EXTERNA_COMISSAO_DISTRIBUIDOR por PROD_COMISSAO_EXT_DIST : automaticamente em 17/06/2020 06:30
Trocou PRECO_FINAL_VAREJO por PROD_PRECO_VAR : automaticamente em 17/06/2020 06:56
Trocou PRECO_FINAL_ATACADO por PROD_PRECO_ATAC : automaticamente em 17/06/2020 06:59
Trocou PRECO_FINAL_DISTRIBUIDOR por PROD_PRECO_DIST : automaticamente em 17/06/2020 07:02
Trocou PROMO_VAREJO por PROD_PROMOCAO_VAR : automaticamente em 17/06/2020 08:41
Trocou PROMO_ATACADO por PROD_PROMOCAO_ATAC : automaticamente em 17/06/2020 08:45
Trocou PROMO_DISTRIBUIDOR por PROD_PROMOCAO_DIST : automaticamente em 17/06/2020 08:53
Trocou SALDO por @_@_@_@_@_@ : automaticamente em 17/06/2020 21:31
Trocou @_@_@_@_@_@ por PROD_SALDO : automaticamente em 17/06/2020 21:33
Trocou ALIQ_ICMS por PROD_NFe_N16_pICMS : automaticamente em 18/06/2020 07:51
Trocou REDUCAO_ICMS por PROD_NFe_N14_pRedBC : automaticamente em 18/06/2020 07:54
Trocou PROD_NFe_N14_pRedBC_ST por PROD_NFe_N20_pRedBCST : automaticamente em 18/06/2020 09:43
Trocou VALOR_PAUTA_BC_ST por PROD_NFe_N21_vBCST_PAUTA : automaticamente em 18/06/2020 10:02
Trocou ALIQ_IPI por PROD_NFe_O13_pIPI : automaticamente em 18/06/2020 10:50
Trocou ENQUADRAMENTO_IPI por PROD_NFe_O02_clEnq : automaticamente em 18/06/2020 14:43
Trocou ICMS_CST por PROD_NFe_N12_CST : automaticamente em 18/06/2020 17:44
Trocou PROD_NFe_N12_CST por @_@_@_@_@_@ : automaticamente em 18/06/2020 18:02
Trocou @_@_@_@_@_@ por PROD_NFe_N12_CST_ICMS : automaticamente em 18/06/2020 18:05
Trocou CST_IPI por @_@_@_@_@_@ : automaticamente em 18/06/2020 18:41
Trocou @_@_@_@_@_@ por PROD_NFe_O09_CST_IPI : automaticamente em 18/06/2020 18:42
Trocou CODIGO_ORIGEM_MERCADORIA por PROD_NFe_N11_orig : automaticamente em 18/06/2020 19:04
Trocou 'NCM' por 'PROD_NCMSH' : automaticamente em 18/06/2020 21:23
