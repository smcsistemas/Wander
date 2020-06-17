object Frm_Produto: TFrm_Produto
  Left = 0
  Top = 0
  ParentCustomHint = False
  BiDiMode = bdLeftToRight
  BorderIcons = [biSystemMenu]
  BorderStyle = bsSingle
  Caption = 'Cadastro de Produtos'
  ClientHeight = 592
  ClientWidth = 990
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
  OnKeyDown = FormKeyDown
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 16
  object Label74: TLabel
    Left = 23
    Top = 60
    Width = 103
    Height = 18
    Caption = 'C'#243'd. Balan'#231'a 2:'
    Font.Charset = ANSI_CHARSET
    Font.Color = clWindowText
    Font.Height = -15
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentFont = False
  end
  object Label11: TLabel
    Left = 535
    Top = 32
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
  object cxPageControl1: TcxPageControl
    Left = 0
    Top = 0
    Width = 990
    Height = 592
    Align = alClient
    Font.Charset = ANSI_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'Tahoma'
    Font.Style = [fsBold]
    ParentFont = False
    TabOrder = 0
    Properties.ActivePage = cxTabSheet5
    Properties.ActivateFocusedTab = False
    Properties.CustomButtons.Buttons = <>
    LookAndFeel.NativeStyle = False
    LookAndFeel.SkinName = 'Office2013White'
    ClientRectBottom = 590
    ClientRectLeft = 2
    ClientRectRight = 988
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
      object Label12: TLabel
        Left = 332
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
        Left = 12
        Top = 539
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
        Left = 109
        Top = 539
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
        Left = 204
        Top = 539
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
        Left = 618
        Top = 6
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
        Left = 11
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
        Left = 952
        Top = 520
        Width = 21
        Height = 13
        Alignment = taRightJustify
        Caption = '000'
      end
      object Label51: TLabel
        Left = 758
        Top = 520
        Width = 150
        Height = 13
        Caption = 'Total de produtos listados:'
      end
      object Label35: TLabel
        Left = 732
        Top = 539
        Width = 176
        Height = 13
        Caption = 'Total de produtos cadastrados:'
      end
      object lblprodcads: TLabel
        Left = 952
        Top = 539
        Width = 21
        Height = 13
        Alignment = taRightJustify
        Caption = '000'
      end
      object edtBuscar: TEdit
        Left = 66
        Top = 6
        Width = 238
        Height = 21
        CharCase = ecUpperCase
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = [fsBold]
        ParentFont = False
        TabOrder = 0
        OnKeyUp = edtBuscarKeyUp
      end
      object chk_diff_estoque: TcxCheckBox
        Left = 11
        Top = 518
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
        Left = 14
        Top = 37
        Width = 957
        Height = 475
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
          object tbViewSALDO: TcxGridDBColumn
            Caption = 'Estoque'
            DataBinding.FieldName = 'SALDO'
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
        Left = 403
        Top = 6
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
          'NCM'
          'CSOSN'
          'Refer'#234'ncia do Fabricante')
        Properties.ReadOnly = False
        Properties.OnEditValueChanged = cbFiltroPropertiesEditValueChanged
        Style.LookAndFeel.NativeStyle = False
        Style.LookAndFeel.SkinName = 'Metropolis'
        StyleDisabled.LookAndFeel.NativeStyle = False
        StyleDisabled.LookAndFeel.SkinName = 'Metropolis'
        StyleFocused.LookAndFeel.NativeStyle = False
        StyleFocused.LookAndFeel.SkinName = 'Metropolis'
        StyleHot.LookAndFeel.NativeStyle = False
        StyleHot.LookAndFeel.SkinName = 'Metropolis'
        TabOrder = 3
        Width = 186
      end
      object cbTipoItemConsulta: TcxLookupComboBox
        Left = 699
        Top = 6
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
        TabOrder = 4
        Width = 272
      end
    end
    object cxTabSheet4: TcxTabSheet
      Caption = '  Geral  '
      ImageIndex = 3
      OnShow = cxTabSheet4Show
      object GroupBox4: TGroupBox
        Left = 11
        Top = 3
        Width = 794
        Height = 220
        Caption = '  Produto  '
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -15
        Font.Name = 'Tahoma'
        Font.Style = [fsBold]
        ParentFont = False
        TabOrder = 0
        object Label3: TLabel
          Left = 255
          Top = 32
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
          Left = 70
          Top = 32
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
          Left = 65
          Top = 60
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
        object A: TLabel
          Left = 23
          Top = 83
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
          Left = 14
          Top = 132
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
          Left = 595
          Top = 132
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
          Left = 337
          Top = 163
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
          Left = 27
          Top = 192
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
          Left = 586
          Top = 163
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
          Left = 365
          Top = 132
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
          Left = 74
          Top = 163
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
          Left = 452
          Top = 192
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
          Left = 488
          Top = 32
          Width = 214
          Height = 18
          Caption = 'N'#186' Doc. Importa'#231#227'o DI/DSI/DA:'
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Height = -15
          Font.Name = 'Tahoma'
          Font.Style = []
          ParentFont = False
        end
        object btn_familia: TcxButton
          Left = 761
          Top = 130
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
          TabOrder = 10
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = [fsBold]
          ParentFont = False
          OnClick = btn_familiaClick
        end
        object btn_sub: TcxButton
          Left = 530
          Top = 161
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
          TabOrder = 12
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = [fsBold]
          ParentFont = False
          OnClick = btn_subClick
        end
        object btn_grupo: TcxButton
          Left = 254
          Top = 161
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
          TabOrder = 8
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = [fsBold]
          ParentFont = False
          OnClick = btn_grupoClick
        end
        object btn_und: TcxButton
          Left = 761
          Top = 161
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
          TabOrder = 14
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = [fsBold]
          ParentFont = False
          OnClick = btn_undClick
        end
        object btn_marca: TcxButton
          Left = 530
          Top = 130
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
          TabOrder = 6
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = [fsBold]
          ParentFont = False
          OnClick = btn_marcaClick
        end
        object DESCRICAO_PRODUTO: TDBEdit
          Left = 124
          Top = 58
          Width = 658
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
          OnExit = DESCRICAO_PRODUTOExit
          OnKeyDown = DESCRICAO_PRODUTOKeyDown
        end
        object PROD_REFERENCIASFABRICA: TDBEdit
          Left = 124
          Top = 130
          Width = 162
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
          TabOrder = 4
          OnKeyDown = PROD_REFERENCIASFABRICAKeyDown
          OnKeyUp = PROD_REFERENCIASFABRICAKeyUp
        end
        object FAMILIA: TDBEdit
          Left = 648
          Top = 130
          Width = 111
          Height = 22
          CharCase = ecUpperCase
          DataField = 'FAMILIA'
          DataSource = DS_PRODUTO
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Helvetica Neue'
          Font.Style = []
          ParentFont = False
          TabOrder = 9
          OnKeyDown = FAMILIAKeyDown
        end
        object SUBGRUPO: TDBEdit
          Left = 416
          Top = 161
          Width = 111
          Height = 22
          CharCase = ecUpperCase
          DataField = 'SUBGRUPO'
          DataSource = DS_PRODUTO
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Helvetica Neue'
          Font.Style = []
          ParentFont = False
          TabOrder = 11
          OnKeyDown = SUBGRUPOKeyDown
        end
        object UNIDADE_MEDIDA: TDBEdit
          Left = 648
          Top = 161
          Width = 111
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
          TabOrder = 13
          OnKeyDown = UNIDADE_MEDIDAKeyDown
        end
        object GRUPO: TDBEdit
          Left = 124
          Top = 161
          Width = 126
          Height = 22
          CharCase = ecUpperCase
          DataField = 'GRUPO'
          DataSource = DS_PRODUTO
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Helvetica Neue'
          Font.Style = []
          ParentFont = False
          TabOrder = 7
          OnKeyDown = GRUPOKeyDown
        end
        object MARCA: TDBEdit
          Left = 416
          Top = 130
          Width = 111
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
          TabOrder = 5
          OnKeyDown = MARCAKeyDown
        end
        object cxDBMemo1: TcxDBMemo
          Left = 124
          Top = 85
          DataBinding.DataField = 'PROD_DETALHES'
          DataBinding.DataSource = DS_PRODUTO
          ParentFont = False
          Properties.CharCase = ecUpperCase
          Style.Font.Charset = ANSI_CHARSET
          Style.Font.Color = clWindowText
          Style.Font.Height = -11
          Style.Font.Name = 'Tahoma'
          Style.Font.Style = []
          Style.TextStyle = []
          Style.IsFontAssigned = True
          TabOrder = 3
          Height = 39
          Width = 658
        end
        object CODIGO_BARRAS: TDBEdit
          Left = 356
          Top = 30
          Width = 117
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
          OnKeyDown = CODIGO_BARRASKeyDown
          OnKeyPress = CODIGO_BARRASKeyPress
          OnKeyUp = CODIGO_BARRASKeyUp
        end
        object dbedt_codigo: TDBEdit
          Left = 124
          Top = 31
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
          Left = 124
          Top = 191
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
          TabOrder = 15
          Width = 258
        end
        object cb_ponto_impressao: TcxDBLookupComboBox
          Left = 544
          Top = 191
          DataBinding.DataField = 'ponto_impressao_id'
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
          TabOrder = 16
          Width = 239
        end
        object DBEdit3: TDBEdit
          Left = 708
          Top = 29
          Width = 74
          Height = 24
          CharCase = ecUpperCase
          DataSource = DS_PRODUTO
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'Tahoma'
          Font.Style = []
          ParentFont = False
          ReadOnly = True
          TabOrder = 17
        end
      end
      object GroupBox1: TGroupBox
        Left = 11
        Top = 486
        Width = 426
        Height = 54
        Caption = '  Pre'#231'o Promocional'
        Color = clHighlightText
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -15
        Font.Name = 'Tahoma'
        Font.Style = [fsBold]
        ParentColor = False
        ParentFont = False
        TabOrder = 10
        object Label9: TLabel
          Left = 13
          Top = 24
          Width = 38
          Height = 18
          Caption = 'In'#237'cio:'
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Height = -15
          Font.Name = 'Tahoma'
          Font.Style = []
          ParentFont = False
        end
        object Label19: TLabel
          Left = 156
          Top = 24
          Width = 28
          Height = 18
          Caption = 'Fim:'
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Height = -15
          Font.Name = 'Tahoma'
          Font.Style = []
          ParentFont = False
        end
        object Label21: TLabel
          Left = 287
          Top = 24
          Width = 41
          Height = 18
          Caption = 'Pre'#231'o:'
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Height = -15
          Font.Name = 'Tahoma'
          Font.Style = []
          ParentFont = False
        end
        object edt_dt_inicio: TcxDBDateEdit
          Left = 57
          Top = 30
          DataBinding.DataField = 'PROMOCAO_INICIO'
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
          Properties.DisplayFormat = 'dd/mm/yyyy'
          Properties.EditFormat = 'dd/mm/yyyy'
          Properties.Nullstring = '0'
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
          TabOrder = 0
          Width = 89
        end
        object edt_dt_fim: TcxDBDateEdit
          Left = 187
          Top = 23
          DataBinding.DataField = 'PROMOCAO_TERMINO'
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
          TabOrder = 1
          Width = 89
        end
        object DBEdit1: TDBEdit
          Left = 332
          Top = 23
          Width = 81
          Height = 21
          CharCase = ecUpperCase
          DataField = 'VALOR_PROMOCIONAL_VAREJO'
          DataSource = DS_PRODUTO
          Font.Charset = ANSI_CHARSET
          Font.Color = clCaptionText
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = [fsBold]
          ParentFont = False
          TabOrder = 2
          OnClick = PROD_COMISSAO_VARClick
          OnKeyDown = PROD_COMISSAO_VARKeyDown
          OnKeyPress = PROD_COMISSAO_VARKeyPress
        end
      end
      object GroupBox26: TGroupBox
        Left = 11
        Top = 385
        Width = 426
        Height = 50
        Caption = '  Comiss'#227'o Externa  '
        Color = clHighlightText
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -15
        Font.Name = 'Tahoma'
        Font.Style = [fsBold]
        ParentColor = False
        ParentFont = False
        TabOrder = 9
        object Label10: TLabel
          Left = 12
          Top = 22
          Width = 47
          Height = 18
          Caption = 'Varejo:'
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Height = -15
          Font.Name = 'Tahoma'
          Font.Style = []
          ParentFont = False
        end
        object Label38: TLabel
          Left = 140
          Top = 22
          Width = 75
          Height = 18
          Caption = 'Distribuidor:'
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Height = -15
          Font.Name = 'Tahoma'
          Font.Style = []
          ParentFont = False
        end
        object Label41: TLabel
          Left = 290
          Top = 22
          Width = 58
          Height = 18
          Caption = 'Atacado:'
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Height = -15
          Font.Name = 'Tahoma'
          Font.Style = []
          ParentFont = False
        end
        object PROD_COMISSAO_EXT_VAR: TDBEdit
          Left = 67
          Top = 21
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
          TabOrder = 0
          OnClick = PROD_COMISSAO_EXT_VARClick
          OnKeyDown = PROD_COMISSAO_EXT_VARKeyDown
          OnKeyPress = PROD_COMISSAO_EXT_VARKeyPress
        end
        object PROD_COMISSAO_EXT_DIST: TDBEdit
          Left = 222
          Top = 21
          Width = 55
          Height = 21
          CharCase = ecUpperCase
          DataField = 'PROD_COMISSAO_EXT_DIST'
          DataSource = DS_PRODUTO
          Font.Charset = ANSI_CHARSET
          Font.Color = clCaptionText
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = []
          ParentFont = False
          TabOrder = 1
          OnClick = PROD_COMISSAO_EXT_DISTClick
          OnKeyDown = PROD_COMISSAO_EXT_DISTKeyDown
          OnKeyPress = PROD_COMISSAO_EXT_DISTKeyPress
        end
        object PROD_COMISSAO_EXT_ATAC: TDBEdit
          Left = 356
          Top = 21
          Width = 57
          Height = 21
          CharCase = ecUpperCase
          DataField = 'PROD_COMISSAO_EXT_ATAC'
          DataSource = DS_PRODUTO
          Font.Charset = ANSI_CHARSET
          Font.Color = clDefault
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = []
          ParentFont = False
          TabOrder = 2
          OnClick = PROD_COMISSAO_EXT_ATACClick
          OnKeyDown = PROD_COMISSAO_EXT_ATACKeyDown
          OnKeyPress = PROD_COMISSAO_EXT_ATACKeyPress
        end
      end
      object GroupBox25: TGroupBox
        Left = 12
        Top = 436
        Width = 425
        Height = 52
        Caption = '  Comiss'#227'o Balc'#227'o  '
        Color = clHighlightText
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -15
        Font.Name = 'Tahoma'
        Font.Style = [fsBold]
        ParentColor = False
        ParentFont = False
        TabOrder = 8
        object Label42: TLabel
          Left = 11
          Top = 23
          Width = 47
          Height = 18
          Caption = 'Varejo:'
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Height = -15
          Font.Name = 'Tahoma'
          Font.Style = []
          ParentFont = False
        end
        object Label85: TLabel
          Left = 139
          Top = 23
          Width = 75
          Height = 18
          Caption = 'Distribuidor:'
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Height = -15
          Font.Name = 'Tahoma'
          Font.Style = []
          ParentFont = False
        end
        object Label87: TLabel
          Left = 289
          Top = 23
          Width = 58
          Height = 18
          Caption = 'Atacado:'
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Height = -15
          Font.Name = 'Tahoma'
          Font.Style = []
          ParentFont = False
        end
        object PROD_COMISSAO_ATAC: TDBEdit
          Left = 355
          Top = 22
          Width = 57
          Height = 21
          CharCase = ecUpperCase
          DataField = 'PROD_COMISSAO_ATAC'
          DataSource = DS_PRODUTO
          Font.Charset = ANSI_CHARSET
          Font.Color = clCaptionText
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = []
          ParentFont = False
          TabOrder = 0
          OnClick = PROD_COMISSAO_ATACClick
          OnKeyDown = PROD_COMISSAO_ATACKeyDown
          OnKeyPress = PROD_COMISSAO_ATACKeyPress
        end
        object PROD_COMISSAO_DIST: TDBEdit
          Left = 221
          Top = 22
          Width = 55
          Height = 21
          CharCase = ecUpperCase
          DataField = 'PROD_COMISSAO_DIST'
          DataSource = DS_PRODUTO
          Font.Charset = ANSI_CHARSET
          Font.Color = clCaptionText
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = []
          ParentFont = False
          TabOrder = 1
          OnClick = PROD_COMISSAO_DISTClick
          OnKeyDown = PROD_COMISSAO_DISTKeyDown
          OnKeyPress = PROD_COMISSAO_DISTKeyPress
        end
        object PROD_COMISSAO_VAR: TDBEdit
          Left = 66
          Top = 22
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
          TabOrder = 2
          OnClick = PROD_COMISSAO_VARClick
          OnKeyDown = PROD_COMISSAO_VARKeyDown
          OnKeyPress = PROD_COMISSAO_VARKeyPress
        end
      end
      object grp_faixa_preco: TGroupBox
        Left = 448
        Top = 385
        Width = 357
        Height = 157
        Caption = ' Faixa de Pre'#231'o '
        Color = clHighlightText
        Enabled = False
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -15
        Font.Name = 'Tahoma'
        Font.Style = [fsBold]
        ParentColor = False
        ParentFont = False
        TabOrder = 3
        object Label88: TLabel
          Left = 104
          Top = 20
          Width = 63
          Height = 18
          Caption = 'Pre'#231'o R$:'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -15
          Font.Name = 'Tahoma'
          Font.Style = []
          ParentFont = False
        end
        object Label90: TLabel
          Left = 213
          Top = 20
          Width = 33
          Height = 18
          Caption = 'Tipo:'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -15
          Font.Name = 'Tahoma'
          Font.Style = []
          ParentFont = False
        end
        object Label89: TLabel
          Left = 10
          Top = 20
          Width = 64
          Height = 18
          Caption = 'Qtde Min:'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -15
          Font.Name = 'Tahoma'
          Font.Style = []
          ParentFont = False
        end
        object edt_preco: TEdit
          Left = 104
          Top = 42
          Width = 88
          Height = 21
          Alignment = taCenter
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = [fsBold]
          ParentFont = False
          TabOrder = 0
          OnExit = edt_precoExit
          OnKeyDown = edt_precoKeyDown
          OnKeyPress = edt_qtde_minKeyPress
        end
        object btn_cad_faixa: TcxButton
          Left = 300
          Top = 41
          Width = 40
          Height = 22
          LookAndFeel.NativeStyle = False
          LookAndFeel.SkinName = 'Metropolis'
          OptionsImage.Glyph.Data = {
            36040000424D3604000000000000360000002800000010000000100000000100
            2000000000000004000000000000000000000000000000000000000000000000
            0000000000000000000000000000000000000000000000000000000000000000
            000000000000000000000000000000000000000000000000000000000000562D
            4580AB5989FFAB5989FFAB5989FFAB5989FFAB5989FFAB5989FFAB5989FFAB59
            89FFAB5989FFAB5989FFAB5989FFAB5989FF562D45800000000000000000AB59
            89FFAB5989FFAB5989FFFFFFFEFFFFFFFEFFAB5989FFAB5989FFFFFFFEFFFFFF
            FEFFFFFFFEFFFFFFFEFFAB5989FFAB5989FFAB5989FF0000000000000000AB59
            89FFAB5989FFAB5989FFFFFFFEFFFFFFFEFFAB5989FFAB5989FFFFFFFEFFFFFF
            FEFFFFFFFEFFFFFFFEFFAB5989FFAB5989FFAB5989FF0000000000000000AB59
            89FFAB5989FFAB5989FFFFFFFEFFFFFFFEFFAB5989FFAB5989FFFFFFFEFFFFFF
            FEFFFFFFFEFFFFFFFEFFAB5989FFAB5989FFAB5989FF0000000000000000AB59
            89FFAB5989FFAB5989FFFFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFFFFFF
            FEFFFFFFFEFFFFFFFEFFAB5989FFAB5989FFAB5989FF0000000000000000AB59
            89FFAB5989FFAB5989FFAB5989FFAB5989FFAB5989FFAB5989FFAB5989FFAB59
            89FFAB5989FFAB5989FFAB5989FFAB5989FFAB5989FF0000000000000000AB59
            89FFAB5989FFAB5989FFAB5989FFAB5989FFAB5989FFAB5989FFAB5989FFAB59
            89FFAB5989FFAB5989FFAB5989FFAB5989FFAB5989FF0000000000000000AB59
            89FFAB5989FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
            FFFFFFFFFFFFFFFFFFFFFFFFFFFFAB5989FFAB5989FF0000000000000000AB59
            89FFAB5989FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
            FFFFFFFFFFFFFFFFFFFFFFFFFFFFAB5989FFAB5989FF0000000000000000AB59
            89FFAB5989FFFFFFFFFFFFFFFFFFC1C1C1FFC1C1C1FFC1C1C1FFC1C1C1FFC1C1
            C1FFC1C1C1FFFFFFFFFFFFFFFFFFAB5989FFAB5989FF0000000000000000AB59
            89FFAB5989FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
            FFFFFFFFFFFFFFFFFFFFFFFFFFFFAB5989FFAB5989FF0000000000000000AB59
            89FFAB5989FFFFFFFFFFFFFFFFFFC1C1C1FFC1C1C1FFC1C1C1FFC1C1C1FFC1C1
            C1FFC1C1C1FFFFFFFFFFFFFFFFFFAB5989FFAB5989FF0000000000000000AB59
            89FFAB5989FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
            FFFFFFFFFFFFFFFFFFFFFFFFFFFFAB5989FFAB5989FF0000000000000000AB59
            89FFAB5989FFAB5989FFAB5989FFAB5989FFAB5989FFAB5989FFAB5989FFAB59
            89FFAB5989FFAB5989FFAB5989FFAB5989FFAB5989FF00000000000000000000
            0000000000000000000000000000000000000000000000000000000000000000
            0000000000000000000000000000000000000000000000000000}
          TabOrder = 1
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'HelveticaNeue'
          Font.Style = [fsBold]
          ParentFont = False
          OnClick = btn_cad_faixaClick
        end
        object grid_c: TcxGrid
          Left = 2
          Top = 73
          Width = 353
          Height = 82
          Align = alBottom
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = [fsBold]
          ParentFont = False
          TabOrder = 2
          LookAndFeel.NativeStyle = False
          LookAndFeel.SkinName = 'Office2013White'
          object grid_cDBTableView1: TcxGridDBTableView
            PopupMenu = pop_faixa
            Navigator.Buttons.CustomButtons = <>
            DataController.DataSource = DS_PRECO_FAIXA
            DataController.Summary.DefaultGroupSummaryItems = <>
            DataController.Summary.FooterSummaryItems = <>
            DataController.Summary.SummaryGroups = <>
            OptionsView.GroupByBox = False
            object grid_cDBTableView1TIPO: TcxGridDBColumn
              Caption = 'Tipo'
              DataBinding.FieldName = 'TIPO'
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
            object grid_cDBTableView1QTDE_MIN: TcxGridDBColumn
              Caption = 'Min'
              DataBinding.FieldName = 'QTDE'
              PropertiesClassName = 'TcxCurrencyEditProperties'
              Properties.Alignment.Horz = taCenter
              Properties.DisplayFormat = ',0.00;-,0.00'
              HeaderAlignmentHorz = taCenter
              HeaderGlyphAlignmentHorz = taCenter
              MinWidth = 88
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
              Width = 88
            end
            object grid_cDBTableView1PRECO: TcxGridDBColumn
              Caption = 'Pre'#231'o'
              DataBinding.FieldName = 'PRECO'
              PropertiesClassName = 'TcxCurrencyEditProperties'
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
          end
          object grid_cLevel1: TcxGridLevel
            GridView = grid_cDBTableView1
          end
        end
        object cb_tipo: TcxComboBox
          Left = 211
          Top = 44
          ParentFont = False
          Properties.DropDownListStyle = lsFixedList
          Properties.DropDownRows = 3
          Properties.Items.Strings = (
            'VAREJO'
            'DISTRIBUIDOR'
            'ATACADO')
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
          TabOrder = 3
          OnKeyDown = cb_tipoKeyDown
          Width = 83
        end
        object edt_qtde_min: TEdit
          Left = 10
          Top = 42
          Width = 64
          Height = 21
          Alignment = taCenter
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = [fsBold]
          ParentFont = False
          TabOrder = 4
          OnKeyDown = edt_qtde_maxKeyDown
          OnKeyPress = edt_qtde_minKeyPress
        end
      end
      object GroupBox16: TGroupBox
        Left = 648
        Top = 229
        Width = 157
        Height = 153
        Caption = ' Desconto M'#225'x. % '
        Color = clWhite
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'Tahoma'
        Font.Style = [fsBold]
        ParentBackground = False
        ParentColor = False
        ParentFont = False
        TabOrder = 4
        object Label27: TLabel
          Left = 35
          Top = 18
          Width = 47
          Height = 18
          Caption = 'Varejo:'
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Height = -15
          Font.Name = 'Tahoma'
          Font.Style = []
          ParentFont = False
        end
        object Label31: TLabel
          Left = 7
          Top = 70
          Width = 75
          Height = 18
          Caption = 'Distribuidor:'
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Height = -15
          Font.Name = 'Tahoma'
          Font.Style = []
          ParentFont = False
        end
        object Label81: TLabel
          Left = 24
          Top = 123
          Width = 58
          Height = 18
          Caption = 'Atacado:'
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Height = -15
          Font.Name = 'Tahoma'
          Font.Style = []
          ParentFont = False
        end
        object s: TDBEdit
          Left = 90
          Top = 18
          Width = 56
          Height = 21
          CharCase = ecUpperCase
          DataField = 'PROD_MAXDESC_VAR'
          DataSource = DS_PRODUTO
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = []
          ParentFont = False
          TabOrder = 0
          OnClick = sClick
          OnKeyDown = sKeyDown
        end
        object PROD_MAXDESC_DIST: TDBEdit
          Left = 90
          Top = 70
          Width = 56
          Height = 21
          CharCase = ecUpperCase
          DataField = 'PROD_MAXDESC_DIST'
          DataSource = DS_PRODUTO
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = []
          ParentFont = False
          TabOrder = 1
          OnClick = PROD_MAXDESC_DISTClick
          OnKeyDown = PROD_MAXDESC_DISTKeyDown
        end
        object PROD_MAXDESC_ATAC: TDBEdit
          Left = 90
          Top = 122
          Width = 56
          Height = 21
          CharCase = ecUpperCase
          DataField = 'PROD_MAXDESC_ATAC'
          DataSource = DS_PRODUTO
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = []
          ParentFont = False
          TabOrder = 2
          OnClick = PROD_MAXDESC_ATACClick
          OnKeyDown = PROD_MAXDESC_ATACKeyDown
        end
      end
      object GroupBox24: TGroupBox
        Left = 817
        Top = 109
        Width = 164
        Height = 114
        Caption = '  Estoque   '
        Color = clWhite
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'Tahoma'
        Font.Style = [fsBold]
        ParentBackground = False
        ParentColor = False
        ParentFont = False
        TabOrder = 5
        object Label80: TLabel
          Left = 22
          Top = 17
          Width = 37
          Height = 18
          Caption = 'Atual:'
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Height = -15
          Font.Name = 'Tahoma'
          Font.Style = []
          ParentFont = False
        end
        object Label83: TLabel
          Left = 9
          Top = 47
          Width = 50
          Height = 18
          Caption = 'M'#237'nimo:'
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Height = -15
          Font.Name = 'Tahoma'
          Font.Style = []
          ParentFont = False
        end
        object DBEdit13: TDBEdit
          Left = 63
          Top = 18
          Width = 90
          Height = 21
          CharCase = ecUpperCase
          DataField = 'SALDO'
          DataSource = DS_PRODUTO
          Font.Charset = ANSI_CHARSET
          Font.Color = clWhite
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = [fsBold]
          ParentFont = False
          TabOrder = 0
          OnChange = DBEdit13Change
          OnClick = DBEdit13Click
          OnKeyDown = DBEdit13KeyDown
          OnKeyPress = DBEdit13KeyPress
        end
        object PROD_ESTOQMIN: TDBEdit
          Left = 63
          Top = 45
          Width = 90
          Height = 22
          BiDiMode = bdLeftToRight
          CharCase = ecUpperCase
          DataField = 'PROD_ESTOQMIN'
          DataSource = DS_PRODUTO
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Helvetica Neue'
          Font.Style = [fsBold]
          ParentBiDiMode = False
          ParentFont = False
          TabOrder = 1
          OnChange = PROD_ESTOQMINChange
          OnClick = PROD_ESTOQMINClick
          OnKeyDown = PROD_ESTOQMINKeyDown
          OnKeyPress = PROD_ESTOQMINKeyPress
        end
        object chk_usa_lote: TcxCheckBox
          Left = 29
          Top = 69
          Caption = 'Usa Lote'
          ParentBackground = False
          ParentColor = False
          Style.Color = clBtnHighlight
          Style.LookAndFeel.NativeStyle = False
          Style.LookAndFeel.SkinName = 'Office2013White'
          StyleDisabled.LookAndFeel.NativeStyle = False
          StyleDisabled.LookAndFeel.SkinName = 'Office2013White'
          StyleFocused.LookAndFeel.NativeStyle = False
          StyleFocused.LookAndFeel.SkinName = 'Office2013White'
          StyleHot.LookAndFeel.NativeStyle = False
          StyleHot.LookAndFeel.SkinName = 'Office2013White'
          TabOrder = 2
        end
        object cxCheckBox2: TcxCheckBox
          Left = 29
          Top = 88
          Caption = 'Usa N'#186' Serial'
          ParentBackground = False
          ParentColor = False
          Style.Color = clBtnHighlight
          Style.LookAndFeel.NativeStyle = False
          Style.LookAndFeel.SkinName = 'Office2013White'
          StyleDisabled.LookAndFeel.NativeStyle = False
          StyleDisabled.LookAndFeel.SkinName = 'Office2013White'
          StyleFocused.LookAndFeel.NativeStyle = False
          StyleFocused.LookAndFeel.SkinName = 'Office2013White'
          StyleHot.LookAndFeel.NativeStyle = False
          StyleHot.LookAndFeel.SkinName = 'Office2013White'
          TabOrder = 3
        end
      end
      object GroupBox15: TGroupBox
        Left = 817
        Top = 3
        Width = 164
        Height = 101
        Caption = '  Balan'#231'a  '
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'Tahoma'
        Font.Style = [fsBold]
        ParentFont = False
        TabOrder = 1
        object Label55: TLabel
          Left = 11
          Top = 19
          Width = 48
          Height = 18
          Caption = 'C'#243'd. 1:'
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Height = -15
          Font.Name = 'Tahoma'
          Font.Style = []
          ParentFont = False
        end
        object Label70: TLabel
          Left = 11
          Top = 44
          Width = 48
          Height = 18
          Caption = 'C'#243'd. 2:'
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Height = -15
          Font.Name = 'Tahoma'
          Font.Style = []
          ParentFont = False
        end
        object Label78: TLabel
          Left = 11
          Top = 70
          Width = 48
          Height = 18
          Caption = 'C'#243'd. 3:'
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Height = -15
          Font.Name = 'Tahoma'
          Font.Style = []
          ParentFont = False
        end
        object DBEdit14: TDBEdit
          Left = 63
          Top = 20
          Width = 90
          Height = 21
          CharCase = ecUpperCase
          DataField = 'COD_BALANCA_1'
          DataSource = DS_PRODUTO
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = []
          ParentFont = False
          TabOrder = 0
          OnExit = DBEdit14Exit
          OnKeyPress = DBEdit14KeyPress
        end
        object DBEdit15: TDBEdit
          Left = 63
          Top = 45
          Width = 90
          Height = 21
          CharCase = ecUpperCase
          DataField = 'COD_BALANCA_2'
          DataSource = DS_PRODUTO
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = []
          ParentFont = False
          TabOrder = 1
          OnExit = DBEdit15Exit
          OnKeyPress = DBEdit15KeyPress
        end
        object DBEdit12: TDBEdit
          Left = 63
          Top = 71
          Width = 90
          Height = 21
          CharCase = ecUpperCase
          DataField = 'COD_BALANCA_3'
          DataSource = DS_PRODUTO
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = []
          ParentFont = False
          TabOrder = 2
          OnExit = DBEdit12Exit
          OnKeyPress = DBEdit12KeyPress
        end
      end
      object GroupBox18: TGroupBox
        Left = 285
        Top = 229
        Width = 152
        Height = 153
        Caption = '  Margem Lucro %  '
        Color = clBtnFace
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'Tahoma'
        Font.Style = [fsBold]
        ParentColor = False
        ParentFont = False
        TabOrder = 6
        object Label32: TLabel
          Left = 23
          Top = 123
          Width = 58
          Height = 18
          Caption = 'Atacado:'
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Height = -15
          Font.Name = 'Tahoma'
          Font.Style = []
          ParentFont = False
        end
        object Label79: TLabel
          Left = 6
          Top = 70
          Width = 75
          Height = 18
          Caption = 'Distribuidor:'
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Height = -15
          Font.Name = 'Tahoma'
          Font.Style = []
          ParentFont = False
        end
        object Label82: TLabel
          Left = 34
          Top = 18
          Width = 47
          Height = 18
          Caption = 'Varejo:'
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Height = -15
          Font.Name = 'Tahoma'
          Font.Style = []
          ParentFont = False
        end
        object MARGEM_LUCRO: TDBEdit
          Left = 87
          Top = 18
          Width = 56
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
          TabOrder = 0
          OnClick = MARGEM_LUCROClick
          OnExit = MARGEM_LUCROExit
          OnKeyDown = MARGEM_LUCROKeyDown
          OnKeyUp = calcular_preco_produtos
        end
        object MARGEM_L_DISTRIBUIDOR: TDBEdit
          Left = 87
          Top = 70
          Width = 56
          Height = 21
          CharCase = ecUpperCase
          DataField = 'MARGEM_L_DISTRIBUIDOR'
          DataSource = DS_PRODUTO
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = [fsBold]
          ParentFont = False
          TabOrder = 1
          OnClick = MARGEM_L_DISTRIBUIDORClick
          OnExit = MARGEM_L_DISTRIBUIDORExit
          OnKeyDown = MARGEM_L_DISTRIBUIDORKeyDown
          OnKeyUp = calcular_preco_produtos
        end
        object MARGEM_L_ATACADO: TDBEdit
          Left = 87
          Top = 122
          Width = 56
          Height = 21
          CharCase = ecUpperCase
          DataField = 'MARGEM_L_ATACADO'
          DataSource = DS_PRODUTO
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = [fsBold]
          ParentFont = False
          TabOrder = 2
          OnClick = MARGEM_L_ATACADOClick
          OnExit = MARGEM_L_ATACADOExit
          OnKeyDown = MARGEM_L_ATACADOKeyDown
          OnKeyUp = calcular_preco_produtos
        end
      end
      object GroupBox2: TGroupBox
        Left = 11
        Top = 229
        Width = 262
        Height = 153
        Caption = '  Composi'#231#227'o Pre'#231'o  '
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'Tahoma'
        Font.Style = [fsBold]
        ParentFont = False
        TabOrder = 2
        object Label13: TLabel
          Left = 53
          Top = 18
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
          Left = 99
          Top = 44
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
          Left = 8
          Top = 96
          Width = 150
          Height = 18
          Caption = 'Desp. Operacionais %:'
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Height = -15
          Font.Name = 'Tahoma'
          Font.Style = []
          ParentFont = False
        end
        object Label39: TLabel
          Left = 36
          Top = 123
          Width = 122
          Height = 18
          Caption = 'Pre'#231'o M'#233'dio R$:'
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Height = -15
          Font.Name = 'Tahoma'
          Font.Style = [fsBold]
          ParentFont = False
        end
        object Label33: TLabel
          Left = 78
          Top = 70
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
        object FRETE: TDBEdit
          Left = 165
          Top = 44
          Width = 56
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
          OnClick = FRETEClick
          OnKeyDown = FRETEKeyDown
          OnKeyUp = calcular_preco_produtos
        end
        object PRECO_CUSTO: TDBEdit
          Left = 165
          Top = 18
          Width = 85
          Height = 22
          CharCase = ecUpperCase
          DataField = 'PRECO_CUSTO'
          DataSource = DS_PRODUTO
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Helvetica Neue'
          Font.Style = [fsBold]
          ParentFont = False
          TabOrder = 0
          OnClick = PRECO_CUSTOClick
          OnKeyDown = PRECO_CUSTOKeyDown
          OnKeyUp = calcular_preco_produtos
        end
        object DESP_OPERACIONAIS: TDBEdit
          Left = 165
          Top = 96
          Width = 56
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
          OnClick = DESP_OPERACIONAISClick
          OnKeyDown = DESP_OPERACIONAISKeyDown
          OnKeyUp = calcular_preco_produtos
        end
        object CUSTO_MEDIO: TDBEdit
          Left = 165
          Top = 122
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
          OnClick = CUSTO_MEDIOClick
          OnKeyDown = CUSTO_MEDIOKeyDown
          OnKeyUp = calcular_preco_produtos
        end
        object IMPOSTO: TDBEdit
          Left = 165
          Top = 70
          Width = 56
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
          OnClick = IMPOSTOClick
          OnKeyDown = IMPOSTOKeyDown
          OnKeyUp = calcular_preco_produtos
        end
      end
      object GroupBox17: TcxGroupBox
        Left = 448
        Top = 229
        Caption = '  Pre'#231'o Final  '
        ParentFont = False
        Style.Font.Charset = ANSI_CHARSET
        Style.Font.Color = clWindowText
        Style.Font.Height = -13
        Style.Font.Name = 'Tahoma'
        Style.Font.Style = [fsBold]
        Style.TextColor = clRed
        Style.IsFontAssigned = True
        TabOrder = 7
        Height = 153
        Width = 191
        object Label24: TLabel
          Left = 38
          Top = 20
          Width = 48
          Height = 16
          Caption = 'Varejo:'
          Font.Charset = ANSI_CHARSET
          Font.Color = -1
          Font.Height = -13
          Font.Name = 'Tahoma'
          Font.Style = [fsBold]
          ParentFont = False
        end
        object Label23: TLabel
          Left = 6
          Top = 72
          Width = 80
          Height = 16
          Caption = 'Distribuidor:'
          Font.Charset = ANSI_CHARSET
          Font.Color = -1
          Font.Height = -13
          Font.Name = 'Tahoma'
          Font.Style = [fsBold]
          ParentFont = False
        end
        object Label86: TLabel
          Left = 26
          Top = 125
          Width = 60
          Height = 16
          Caption = 'Atacado:'
          Font.Charset = ANSI_CHARSET
          Font.Color = -1
          Font.Height = -13
          Font.Name = 'Tahoma'
          Font.Style = [fsBold]
          ParentFont = False
        end
        object PROD_PRECO_VAR: TDBEdit
          Left = 97
          Top = 18
          Width = 85
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
          TabOrder = 0
          OnClick = PROD_PRECO_VARClick
          OnKeyDown = PROD_PRECO_VARKeyDown
          OnKeyUp = calc_margem
        end
        object PROD_PRECO_DIST: TDBEdit
          Left = 97
          Top = 70
          Width = 85
          Height = 21
          CharCase = ecUpperCase
          DataField = 'PROD_PRECO_DIST'
          DataSource = DS_PRODUTO
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = [fsBold]
          ParentFont = False
          TabOrder = 1
          OnClick = PROD_PRECO_DISTClick
          OnKeyDown = PROD_PRECO_DISTKeyDown
        end
        object PROD_PRECO_ATAC: TDBEdit
          Left = 97
          Top = 122
          Width = 85
          Height = 21
          CharCase = ecUpperCase
          DataField = 'PROD_PRECO_ATAC'
          DataSource = DS_PRODUTO
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = [fsBold]
          ParentFont = False
          TabOrder = 2
          OnClick = PROD_PRECO_ATACClick
          OnKeyDown = PROD_PRECO_ATACKeyDown
          OnKeyPress = PROD_PRECO_ATACKeyPress
          OnKeyUp = calc_margem
        end
      end
      object chk_ativocadastro: TcxCheckBox
        Left = 741
        Top = 4
        Caption = 'Ativo '
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
        TabOrder = 11
      end
      object cxLabel1: TcxLabel
        Left = 662
        Top = 2
        Caption = '  Status:  '
        ParentColor = False
        ParentFont = False
        Style.BorderColor = clWhite
        Style.Color = clWhite
        Style.Font.Charset = ANSI_CHARSET
        Style.Font.Color = clWindowText
        Style.Font.Height = -15
        Style.Font.Name = 'Tahoma'
        Style.Font.Style = [fsBold]
        Style.TextColor = clRed
        Style.IsFontAssigned = True
        Properties.ShadowedColor = clWhite
      end
      object GroupBox6: TGroupBox
        Left = 1187
        Top = 255
        Width = 164
        Height = 45
        Caption = '  Somar no Total NF-e  '
        Color = clWhite
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'Tahoma'
        Font.Style = [fsBold]
        ParentBackground = False
        ParentColor = False
        ParentFont = False
        TabOrder = 13
        object RadioButton1: TRadioButton
          Left = 11
          Top = 21
          Width = 65
          Height = 17
          Caption = 'N'#227'o'
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Height = -15
          Font.Name = 'Tahoma'
          Font.Style = [fsBold]
          ParentFont = False
          TabOrder = 0
        end
        object RadioButton2: TRadioButton
          Left = 90
          Top = 21
          Width = 65
          Height = 17
          Caption = 'Sim'
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Height = -15
          Font.Name = 'Tahoma'
          Font.Style = [fsBold]
          ParentFont = False
          TabOrder = 1
        end
      end
    end
    object cxTabSheet5: TcxTabSheet
      Caption = '  Tributa'#231#227'o  '
      ImageIndex = 4
      OnShow = cxTabSheet5Show
      object img1: TImage
        Left = -64
        Top = -120
        Width = 994
        Height = 633
        Picture.Data = {
          0D546478536D617274496D616765FFD8FFE000104A4649460001020100490049
          0000FFEE000E41646F626500640000000001FFE1004A4578696600004D4D002A
          000000080003011A00050000000100000032011B0005000000010000003A0128
          000300000001000200000000000000490000000100000049000000010000FFDB
          004300040303030303040303040604030406070504040507080606070606080A
          0809090909080A0A0C0C0C0C0C0A0C0C0D0D0C0C111111111114141414141414
          141414FFDB0043010405050807080F0A0A0F140E0E0E14141414141414141414
          1414141414141414141414141414141414141414141414141414141414141414
          1414141414141414FFC0001108028203F003011100021101031101FFC4001C00
          01000301010101010000000000000000000203040105070608FFC40049100002
          0201020206070406090401040301000102031121043112415161221305718191
          A1B1C132D1425206627223331407F0E18292A2B2435315F1C2D22434E2638316
          73445464FFC400190101010003010000000000000000000000000102030405FF
          C4002B1101000202010302050305000000000000000102110304213112418151
          61224213C1521491D1322343FFDA000C03010002110311003F00FEEF08000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000012000000000000000000000000000000000000000000
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
          1DC30186030C06180C30186030C06180C30186030C06180C30186030C06180C3
          0186030C06180C30186030C06180C30186030C06180C30186030C06180C30186
          030C06180C30186030C06180C30186030C06180C30186030C06180C30186030C
          06180C30186030C06180C30186030C06180C30186030C06180C30186030C0618
          0C30186030C06180C30186030C06180C30186030C06180C30186030C06180C30
          186030C06180C30186030C06180C30186030C06180C30186030C06180C301860
          30C06180C30186030C06180C30186030C06180C30186030C06180C30186030C0
          6180C30186030C06180C30186074000000000000000000000000000000000000
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
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000007
          4AA0000000000000000000000000000000000000000000000000000000000000
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
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000004880000000000000000000000000000000
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
          0000000000000000007700300300300300300300300300300300300300300300
          3003003003003003003003003003003003003003003003003003003003003003
          0030030030030030030030030030030030030030030030030030030030030030
          0300300300300300300300300300300300300300300300300300300300300300
          3003003003003003003003003003003003003003003003003003003003003003
          0030030030030030030030030030030030030030030030030030030030030030
          0300300300300740000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000155FB8A76D1E6BA5CA9F05D2FD080F3DF9B5B6CF9369439BE872D7DCB
          ED28DDB67BA706F74A2A4FE98C7A3D3AB20BC0000000000038E4971697A40EA6
          9EAB540000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000052F7106DC6A4ED92E2A1AA5E97C0072EE2CFAE6AB8FE186AFFBCF
          EC01FC26DDBCCEB5397E29F7DFB5E40F3EC8ADA79AD738AE5AAE586968B5D3E3
          86547AC45000154B714C5F2F3A72FC31EF3F62CB039E3C9FEEEA9CBB5A505FE2
          69FB80EE772F84610F4B727EC497C407877BFAAEC7EA452FF33901C96DDC9352
          BAC79E94D47FCA9019BFE236ADE5B9B7D3997F501AA8DBD5B68F2531E58B797A
          B7AFAC0B40000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000E36926DBC25C5B02AF1A53D288F32FF00725A43DBC5FA80781CFADF27
          67E87D30F674FAF205A924924B0970480E8003CDF398C7C1AE7CC959097775D5
          A7C71EE28BA8DECF7114EBA26F45994B118E7B1905DCBB89FD538D6BAA0B99FB
          65A7F84084ABDB45E2E973C9FDDB25CD9FECF0F7010B3753AB10DB6DA73FECB8
          47DE809EDE7BC9B6F715C2B863449E659F801A40000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          00000000000000000000000000000000000000000000A7C77669B78F3FFF0071
          E905EBE9F501D5426D4AE7E2496A93D22BD11FB40B400000000AA7652DE1AF12
          6BA22B99A7F2019BE5C22AB5D72EF3F62D3DE0255C5272BAC6E2B8E5F2C57B31
          EF02BAB73B3E754D328F33FBB05A7B9600D20000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          00000000000000000000000000000000000000000573BA31978714E76FE08F47
          6B7D0047C1959AEE1F32E8AD7D0BD3D7EB02E000000119CE105CD3928AEB6043
          C4B27FBB8617E39E9EC5C7E00426AB8EBB8B399F1E4E0BD515ABF5E40C776FEE
          8C33B7A7C3A568A6D7C3A0A8BB6F46EA7CB75DB87869351870C3F77B88ABADD9
          D1763C6529E386652F8278028D942146EF73B78A4969387EABE8F501BC000038
          DA5AB785DA05366F36D57D76C7D0BBCFDD90215EFF006D6CD5706DC9E8BBAC0D
          4000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000072528C22
          E536A315C5BE00539B6FFA73553F8B84E4BB1747C40B615C2B8F2C1617CFB409
          00000467642B599BC6782E2DBEC5D20433759F4AF0A1F8A5ACBD9C17AFD8054E
          CA2B7CD1CDB63D14F8FA93F9440EE3737717E143A971FB7E004E1B6AA1AB5CD2
          7C5CB5FEA03BB8ABC6A2CAFA64B4F4F4014796D9E26D545FD55B717F1406B6D4
          5664D25D6F40305B6C21BFA6EAFBD19C5D52E5E97C561F0E206BE6BE5C20A2BA
          E4F5F62CFC40725AFEAB71FA914BFCDCC077C083FA9CA5E993C7B13C005452B5
          55C73D7859026E116B0E29A5C328024A3A2492EC03A000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          000000000000000000000000000000002BB2D506A115CF6BD5417C5F520391A5
          B92B2E6A762D6297D31F42F98168000072528C53949A515C5BD1015F3D967D0B
          921F8E4B5F547ED02AF12AADE6B5E258F4F125AE7D0F56FD114077C1B6DD6E96
          23F87FAB55EDC81742B857F4AD7A64F57ED03B29C63A37ABE096AFD880A617DB
          2DC3A655F2454799393CCA4B38D31A0174A718E8DF7BA23C5BF52D40F3EAD9EE
          54A72F13C184DF349474F6151A2A8571D5C9EE2CCE54B194BB137C3D6C8ACBE6
          5B9872C6398ABAB9A9C639CCB2BAF0B0BDA50AEFFF0090B3913BA305F538E231
          F5F108DD46D69DBE5D6BBCF8C9BCB6455C042575517895914FA9B59039E3D7D1
          CCFB5464D7B5201E2C9FD354DFF757C5A01E259D14CBD6E3F26C073DDFEDAFEF
          7F50155F76EEB87357429635799AD12F6015ED777BABE2A6F6E9572D54D49747
          63034F8967FB32F538FF00E480E78D15F5426BFB2DFF00972077F88A783B127D
          527CAFD8C0B38EA8000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000532B65649
          D7474693B5EA9762EB604EBAA1526A3AB7ACA4F5937D6D81300000AE56E64E15
          2E79AE2F8463E97F202A938424E537E2DD1F5421F25F101C96DFACDE21DAB0BD
          517C7D32F601742B84354BBCF8C9EADFAC0ECA718BC71974456AC0E62C9FD4F9
          23D4B8FB7EC03B18461F4AC678BE97E960556C6AB2C83CC9D95E74ADEBAF436B
          87B40E392A9779C698BE8E337FD7ED020E797DDADC9F152B9FBD4357EE40270D
          C4E2DE5C9F4473E147DD997BC0F2E75455928CA2A526B2A34AE7CB7A7179C151
          E86CA5BDF0A15CA98C21058E69B69BF5222B5F876BFAAD6BB209457BF2FDE073
          F87A9FD49CFF005DB92F636C0B2308C16211515D49600E8000000AF70F976F6C
          BAA127EE02BD8AC6CE95FA29FB750340001C746061DF4230554295E1DB6D918F
          343BAF1D3AA03700000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          00000000000000000000000000000000000000000000000006D2597A25C58146
          65B9FA5B8EDFF12D253F4752ED02E8C6308A8C52515A24B801D00072528C1734
          9E175814593CC79ED9783475709CBECF42D40845DB6251AAB75D2B82FA32BE2B
          D4BD605D5D11861BC36BE949622BD080B2528C5664FD1D6C087ED27FA11EAFBD
          FD404E318C1622B0BA7FAC0878BCDA54B9FF004B847DBF60155964136AC9B9C9
          71AE1A25E9D7FCCC0E2F1EC58825557D0A3A7F89AF82F58050A6A935972B5F18
          C32E5EB7ABF6BC0164636B5884634C7FBD2F768BDE077C083D6CCD8FF4DE57B3
          87B80A770957B8DB5AB48E5D6FFB4B403580000000000000A37AF976973FD06B
          DAB004B6CB976F547AA115EC480B40018B6B177CF716CA52C788E30C4A49623A
          704F005CF6AA57576CAC949D59E58BC63BCB1D09017800000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          000000000000E4A518C5CA4F115AB6F824050A2F73894D35B7E31ADE8E5DB2EC
          ECF681A0000032EE37D5D3354C53B6F7C2B871F5F5010FFD8B27D1E2AF5F267D
          A93F6B7D805F56DE35BE793765BF8E5ABF575202E02BE773D2AD57E37F4FABAC
          09460A2F9B8C9F193E2045D996E35AE792E3D115E9605564E1078BA5E24FA2A8
          F0F5AFFC981CE5DC5FF53F0ABFC2B29FADE8FE1EB03B0554310A21E24A3D2B0A
          29FA787B3503B63E54E57CDE38F855E7E5AB02DA791D717087245EAA384B8FA0
          0EB9C53C6732EA5AB038A56396B151875B7AFB17DA053BF49EDA4DB51947128B
          7A6AB503B4EF76F74A3084F364967970FABD006802B95F4C1F2CAC8A97E1CEBE
          C023FC427AC2B9CBFB3CBFE7E5021FC549FD31827D53B127FE15201E35CF872A
          F44673F824039EFE1E224FB299FCDB01395B18B9789278FBB1A9B7EF0306E777
          2B76F6C79A7A2C352824B8F06D3782A3745DD08A8F8896124B9AA9FC7288A92B
          6CE0ACAA4FAB2E2FE2C0CDBADF6EF6CF32A23E1BC626A4E4B2FD480E795EE1F2
          2DBCAA9C67AC9CDAD1B6F3AF5147A44000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          000000000000000000000000000000000000000000000000000000000000000E
          4A4A29CA4F115AB6C0A63195ED5962E5A96B5D6F8BED97C9017800004669B849
          2972B69E25D5DA07932DB4F6DFFB5B6739C52C5B26D6669BCB71D3DE547A944E
          A9D519D3FBB7AAFEBED22AC033EEA89DD1EECDAE5D557F764D3E12EC0255EE6B
          9C1496927A787F7935A358EC013788F3DF2E4AFF00027C7B1B5C7D080A94AEBD
          254AF068E8935DE6BB1747F4E0075F81B4708E336D8F10CF4BF4BFFA81394799
          E2E7CEFF00D987D3EBEBF5E8058A326B0FBB1FC31FB7EC024A318AC258EB02BA
          E8E48283939457D31E092EAD3880F16B5DDAD73B5F760B38F5F0407253B52729
          CA34C3ADBCBF925EF030EE16D652E79F8B74B82E85EAD17B9151CD92DCF2A857
          52AD74DAD2527EB79F801B3F8572D6D9F375A9665F16A3FE12291FE1A1DD8CDB
          6BEED7C7D95A40571BAA9DCE9AF6D294E3AB94D28E9D7DED40D0BC7E0A308AF4
          B97BB080EF2DFD3647D507F39301E1D8F8DD2F528FCD301E14FF00DE9FB21FF8
          81E7476766EA16A57CA1076CB9A2D269E1F178C151E8D15D9557CB6D8ED967EA
          69222AC693D1EA80F3BCC2B83B36D4C6293B2CEF34B1A478FC40D1194D6F1D51
          93F0A30E6926F3DE6F4D5EA068CACE33AF501D00000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          00071B4936DE12D5B605314F712564B4A56B5C1FDE7F89FC80BC000039294611
          7293C45716055CB2BB5B162BE8ADF4F6CBEC02E03CBBA5FF001977354B9A8BB2
          FC14F0D4BB3B0A8DDB696E275F3EE22A1293CC60BA176F691495CE798D38C47E
          AB5FD2BD1D6C0A6B75C2535B58BB6F97EF2C970D7ADFC9016436D99789B87E25
          BD1F857A1017CA518F1E2F825C5FA80CFBAA25BAA9C5F71AEF57D6A4B86580D9
          5CAEA56572DB07CB6C7AA4B8FB40D1294629CA4D28AE2DE880AFC59CFF00751C
          AFC72EEAF52E2C0AAD9D307CB7CDDB67FB51E1FDD5FF007004F776A4AB8AA2BE
          86F5963D1C17B007F0D4D7FB4BE7CD25F7E6F18F465FCC0B23349628A9B5D78E
          48FBF5F6203BCB74BEA9A82EA82CBF6CBEC03BE057F7939BFD36E5EE7A016249
          2C2584BA1018ECB2BA7CC2329C94633A9C5E5A4B2A59406C00DA5ABD1010F16A
          5A39C73E9403C6A738F1239EACA031ED373B7AA95E25918CA5293C37AEAC0DE9
          A6B2B54F8300DE165F003C3AF71096EAA9DF64A29293E67978726F09673A60A8
          F5A9AE1194ED8CFC4766332D1F05D84563DD6D29BF7B5C12719CA329DB28BC3C
          2D17BC0F42B878708C399CB974E693CB7E902400000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          067FFE4CBFFF009E2FFBF25F25EF034006D2597A25C5819EDAECDC25384DC145
          F356B1A49AE0E4BA80EC37316A51B5725D0FAEBE2F5E1CBD698128C2536ACB56
          1AFA2BE88F6FA40B40AECB395A8457358F847E6FA90154E34D1FFB3B86A56AD3
          9DAF74574015C677EEA0E724A9DB71EF3D64BB786804A35F8D8E5CAA5709BD1B
          FD55C22BB40D318C2B8F2C528C17B00E29B9FEEF1CBF8F8AF57581D8C1475E32
          7C64F88126D2597A203CDBA7FC3EE3F8AA74A6DC42D935DCE6E89715902D5B9D
          AF3E149EE2F5C145736BD9F75016787B9BFF007B2F06BFF6EB7DEF5CBEC02DAA
          8AA958AE2A3D6FA7DA0553BA6F74B6D9F0E328F3466B56F1C52CE880BA34D717
          CD8E69FE296AFDAC0981C6D24DB784B56C0CF1DFEDA79E4939634E18CFA39B19
          03BE3DB2FA2B7E9C3FFBB957BC0A9ED1D9678B2AA3E23E2DE3E1897C40B7C0B1
          FD5358EA7CD2F8CB1EE03AB6CB8F361FE8C20BE29812F06584BC59E9D5CABE11
          038EA6937E34F4FD5FB00C354546AD9A9DBCAA4E52C3E5C2D25C32BB4A8DA9B7
          F4EE2327DA93F8344565DE59BEADA8270946DEE479561E5AED6CA346CFC6F0D5
          7755C9E1A4A2F29E70416CB6F449E5D71E6FC4961FB56A064DBD529EE7716D76
          4A2A0D550CF7FE95969F365F1ED034F36E21F542362EB83E57EC969FE202E000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          00000000000000000000001458DDD37441E20BF7B25FE55DAFA40B9251492584
          B4497501D02BFDEBCFFA4B87E93FB0094E718479A5C3DEDF520334A97B99C672
          6E0E0F471786974C535D3D6C0D60573B1A92AEB59B1FB22BAD808C614C5C9B6D
          BD6527AB6FD5EE40556C2A9E2EDCAEEC74841EBC7B3A5B032C22E8B210DC26B6
          936DD5193CA8C9BD148A8F4C8AAEE55CA1CB62E64F841716D740146CAE9BE6DB
          D91719D7A638E23D09B02F9DAA2F922B9ECFC2BA3D2FA00E2A9CFBD73E67C541
          7D2BD5D3EB031EFABB6FDC57B794FC3A26B2BB64BA1811F2F8ADAEE2DDA4D2E7
          7DEAE7D328F501E9800326FE1255C7710FDE6DDF3AED8FDE5EC02E5B8A9A4E2F
          99C926A31D5E1F62E0039AF9FD3155AEB9779FB17DA01D5959B67292F4F2AF76
          3DE05154AAAB73646B598CE31945416755A3E1EA03473DAFE9AF1FAED2F8640A
          B6F3DC5D1939CA31E59383514F398BC716DFC00B7C37D3649FB17C1203BE143A
          E5FDE97DA0552F0D58AAF0A527CBCDCDA631EB6072CDBD364529D0DAEC693FF3
          01DA69AF6E9F855497371594F87A64058E59FAAB78ED49FC1B031DCAA96EE882
          8F2C62A539775C7D1D0BA40D55468AB9BC39E53D5A7372C7A32D815FFC86D7BC
          B9B128A6F9649A7A7A4096C60E1B58397D73EFC9F6CDE40D0000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          00000000002ABAC92C575FEF67F4F525D327E802BA2EAA36BDB434E5E129719C
          B3DEC75E3A40D20572FDA3705F42FADF5F67DA04E528C22E52788AE20674A774
          F9A5A6382FC29F47EB3F701A1251492584B8202ABAF509C298B5E359F4E7825D
          6C09A50A61EF6DEADB6042738D6BC5BB8FDC82F975B021B6C6E12DCCDF3379E4
          8F4475C69DBDA059B9F0DD328D91E75258505C5BEC032EDE9BE0E32BE6E76C57
          72B6FBB05C33268A8D296733E6C2FBD6BD1B5D9D4BFA7691545A9A4F7142E484
          577E59C39C73978CFB9B0344254D74F88BB956399B9653F4BCEA051479843737
          F854C2528259958F44BD405DB9A7C7A9C53C4D77AB9754970031DFCDB9DBC375
          52E5DD6DDF7974E63F52036D17C3714C6E8F092D5753E9403C6E6D298F88FF00
          17087B7EC02338AE5CEE6CEEBD3957763E8EB6053B193AEA95518B9C6339786D
          2C662F865BC6A05F29CB389CD41FE082E697C3E407156E5AF27F6AD7CCFD4BFA
          D011F014EF564AE94ACAFEE45A8A59D754B5C3C74B034B78596062DADB2F12D5
          E1B55CE6E69E72D652E8590353B5259C3C75BC47FCD8021E3C5FD387D994FF00
          CB9021E258F731C41E391ACB524B394F8B8813BACB6BAE562845F2ACE399FD80
          59073714EC4A33E949E57B409018DD5BA8EEDEE3109C797912CB4D4739EDD40B
          A6E335CB752DC7B529AF62CBF701E55DB9A317431876C94632E5D235C74F8265
          47B35CA1382956D3835DD6B8608A900000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000067DE6EA3B4A
          5D8F593D211EB6051E56DDB5CF7164F9EEB1F7B5FA52E0BB00D96550B63C9647
          31E3E87D680A33B9AE71A22FC48CB85AF8C62B8E74C37D40694A308E16914067
          B3C5BA0EDA9671AD317D2FF17FE20594595D90CD69A516D3524D3E6E9CE40EDB
          638E2105CD6CBE95D1DADF62020EBAABAA4AE7CDCEFBF27C6527C3FAB0052AD9
          5128C6F52B24D7EC52C397A1F6F6817D754B9BC5BB0ED6B0971514FA17CD810B
          94A99F8942E69CFEBA97DEC74F63402BB2334EC8CB9A7C2766348FE8A4FA7B3D
          A049A8C2399E91CE90E2E52EDEB601A72C4AF5FA94AD75EDEB7EE4049E22BC5B
          DA4A3AA5F757DAC0CF76DE5BFC29C9D5445FD0BEA976BEA029AD7FC6EE7C27FF
          00C4BDF764FEECBA9B03D303CADC6ED6DF7364B6D8936B16A7F4A92E9D0A8A61
          6C3656F2EE129D562F1142B794A4FB338E007A75D96EE2119C23E1572594E587
          2C762E0BD7EC22ABDC5309D5355273BD6BCFC5E53CE1B7A7A80B696F71546C72
          C424B2A10D3D4DF1016CFF0087E455C1284E4A32970C39689E3A409BADC977A4
          E4FAB847D8B8FAC0C9546E8EE6716B3A72CB912847A1C7B7A581A7C26F57CABD
          5CF2F6CBEC027E1A7F54A52F5E3DCB0808E76D07A72297AB204BC58F4293FECC
          BEC01E24BA2B963FB2BE2C0AEF76595CAB8D52CCBA7BAD7F9901DAACB2D829A8
          AD5B587A3CA78E8CF5013CD8B8C163B1E5FBD203B093926DC1C31D12C7C9B023
          7D9E1533B3F0C5B5E9E802355108EDEBAAC8A972A594D675E90232D9D59E6ADB
          AE5D717FD1FB00E7FEDD5D2AD8FBFDDFD6069000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000079966
          DA7BEDEB9D8B1B5A7BB1CFDE6B8E3D65472EF2DB299F8FB09384971AF3F0CFC1
          8559B6F338CA5E0EE978372D1E748B7EBE041E83692CB785D6050E51BDE1493A
          1639A59D24DF049F575817810B26AA8E7196F48C5716DF42039556E3994DF35B
          2FA9AE1D89762021B8754396CB1734A1F4478EAF4CE00E514CB9BC7BB5B9F05F
          853E8F4816CE7CAD463AD8F82F9BEC03918AA93949F34E5F54BA5BEA4043BB56
          3BBDF79F0EB8F5BE2FED604E15B4FC4B1F358FD89752028573A6D942E4E76CB5
          AE515C53E11ECC7F58128573BA4ACB1F0FA71F4C7F57ADFE97B00EA4B6D2C2FD
          C4DF4EBCB27F27F1027B8A21B8AA5559C1F07D29F5819B65B89439B6BB9695B4
          FDE7C2505D3902C6BF888CA15414299FD5635ACB3F857CD818F6DB5A2ADCD95D
          B5BB2F8BCD7D4E3D7D4547A5C9296B6BD3F047E9F5F5915294E15A49BC74462B
          8FA9203251E242EB36EBF67097ED61959787C52D71C40D51AA09F33EF4FF0014
          B57EAEAF501CBAFAA88B9DB2514B5C74BF4203053BF9DFB96F6F4B719251965E
          30937ABC2D3881BF92C7F5598EC82C7C7203C1AFEF2E7FD76E5F1C813492584B
          0BA9010BFF0073661B4D45B4D3C3D17601D8C2292C3963B64DFC58146F36D65D
          05E15D2AB972DA5969FBC0CFB0DB5CE88D92DC4D29ACA82E0B5EDC946BF0770B
          E8BFFBD152FB080D6F238C4AB9F5B6A51F8640A7736592F0E99D4D73CD3972B5
          24E31D5F6FB80D0B714B7CBCFCB27C232CC5FB258605A0000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          000015D927A571789CFA7A92E2C09C62A29462B0968901D028DCED28DD471647
          BCB84D6924078CE1B876BF2E8DCE757325D9A71F522A3DA7B5A9D70AD6546BFA
          30F186BA7D24571DD2A34DC7D1D16A5A7AD74303B545D92F1EC4D36B15C5FDD8
          BF9BE90276591AA0EC9708814510774BF89B355FE9C7E7F6017CE7CB8496672F
          A63FD3A00E24AA4E52799CBEA7D2DF424046737069B5CD74B4841747F4E96045
          D1626AE53E6BD714F48BECECEC03B2DD41456166C795E1BD1A6B8E7A92EB0395
          52E4DD973E694B8E98D3AB1D0BB3DA06802B92F1A2E0B4ADAC3975A7D5F6818F
          776DAA31DBED33AE8E69E5E9D09FC5818EBDA4A51B1A6FF8DA65CCAB7869A5F1
          C951E942C5BEDAE61375C9E93E5E316B8A22B34A0A1446DAD286E36AF138F5F5
          FA73C4A8D4B751B629C26AB8C96565A737E88EA454A1196AE11E4CF1B27ACDFF
          004FE88083BA984F15277DFC32B56B3DBC12039377614B71678306F0A15ACCB2
          F865E3E00595D11867C3AD45BE339F7A4FFA7A40A238DBEFE516FBB7C39B45F7
          A3D092EC035F3B7F4C5BED7A2F7EBEE03BFB47F863ED97D803965F8DFAB1F601
          19C2BE56AC93E56B5CC9AD3DA042BDD6D72AA85B16D689673C3B5812B67074DA
          D493C45B7879E8604764B1B4A57E827EDD40BC0019A7B2AA56F8F194E1667398
          BFB5302C946C6B964A36C7AA4B0FE69815F2570FA5CB6EFA17DCF63CC7D804F9
          EFAFEB82B23F8A1A4BFBAFED02E0000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000031FF151AAF9ADCC5D
          5CCF15CDFD0E2B86AB87581B134D656A9F06000AB7172A29958F8A5DD5D6DF00
          3CDA7CBAFF000D5F19B86E38A4FABB4A8D14EFDC25E0EF23E1D9F8BEEB22B4BC
          5F3E5E34C1A72EA94B8A5E8405C078F2DC7FC86F63429A8EDA2F386F1CF8F8E4
          A8F512AE887763859CA8AE2DB22BB083599CF5B25C7A92EA40427DC9F88DB9CD
          F76AAD75FF004E90275D6E3994DF35B2FAA5F25D8072DB3C3494573592D210EB
          7F6202BAF6A94D5D649CEEFBCF8473E8ECE8034014CEC4ACE4B5A8D78CC7AA58
          E39F475015596CEE978752D1F43D347D32EA5D9C581755446AD78CDAC393EA5D
          0BA9760156EE99A71DD50BF6D5F15F8A3D280CCEC54CE3BFA35DB5D85B882E89
          75944E738EEEC6B6B2846DC6B63FAF957525C389029AA8D93C43376E1E8B1EFC
          0172A2EBF5DCCB963FED45FC5FF4F4816C5D75AF0E98E71F762B45E97C0084B3
          72707DE8BE31870F5C9FCB502C92972B95B3E582E2A3A69DAF8FC00F3373BBDA
          4555E0679A99A92787AC7A565EA546D86E6EBE2A5452D45F094F45F27EC22A5E
          16EA7F5DAA0BA63059F7BC7C007F095B58B273B3F5A4FE58024B6BB65FE945FA
          527F1023FC2D55294F6F5423763BADAD3206194F7CDEE79D43BB5E2CF4624D63
          1E92A36ED9DD1DBD49422E2A1149F33CF0EAE522ADF126BEAAA5E94E2D7C7203
          C7A97D4DC3F5D38FC409A69ACA795D680E811E784A4EBE64E6BEA8E56527D680
          8F85CBAD4F93B38C7D9F60160000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          000000000000000000000000000000000000000000001C946338B8CD2945F14F
          540657B4B297CDB29F275D33CBADFCD0175164EDAD4EC8724B54D672B478CA60
          422BC7BDD8FF007556635F6CFA5FAB801A00CFBB857657E1CD27297D2DFDDEB9
          7A80F35DB66D2296D6EF129B32A09A794D3C68547A356DE4B68E9B24FC4B13E7
          9717991155CBCB369E02AF1CAE3AF8BF7B3D6D819EBDC5FB4945EF14ACA38577
          7567A5AF475EA547A3E356EBF16325283E0D6B9EC44572B8B7273B31E2B5F4F1
          E58BE8FB4095B62AA3CCF56F48C5716DF04808D55B8B7659ADD2E2FA12FC2BB1
          01681C94A308B949E22B8B032C9CEF9F2C7471EB5950ED7D72EA5D0069AEB8D7
          1E58F4EADBE2DF5B02404276A83E54B9AC7AA8AF8BEA40791B8AE7DE70925B7B
          65894F1DC527C5C7B3B4A8955B554352A66DD2FBB6DD8D1E7AB5D57BBD207A50
          8554776B5CD63E3D327E96451B72787DE7D308E915E97FD3D0024A118A774972
          F0505A47D18E903BCD6CFF00771E48FE29F1F5457CC0AE6A9CF25ADDD3FC1C7F
          C2B45E960514C255EE6CA6315546C8A9C534A4D25A35A3C01B6AAA34D71AA2DB
          8C56137C4094A5182CC9A8AEB6F080AFF89A9FD0DCFB611725ED4B00427BAE44
          9CAB714F839CA114FDB2CFB8092B2F9A528570717C1F88F87AA2C0F3EE5BEB2C
          DCC68845A9B51B127FA38D1BC151B36CF78A98C6DAE0A4B4FA9AD17A1488ABBC
          4B571A9BFD5927F1C01CF1E2BEB8CE3E98B6BDAB280849ECFEBE68C5E70E5078
          797D7CA04A3CF8E6AAC8D90FD2FF00CA3F6019A8F06DE6BF711E59DB2CC26F4C
          4782C4BA00D5CB6C3E897891FC33E3EA97DA05A0000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000AED
          6F0AB8BC4A7A67A974B021B894ABA95542FDACD72D69698C2E3EA40476F7D294
          6849D538AC7873D1FABAC0D2DE357C00F1BCC6EB2C92AAB4DCED59C2E3E1F42F
          5F16543CBE7B576C7C57C96C128D70970CF4BCF5B607B245552FDACF93EE47EB
          ED7D0BED0276382AE4ECC3AD27CD9D5600FCF2BBC19CAEDBE2118CB30AA597C5
          359C76151EA797532A2A9EE7712C596F7A4E5D115D64569AA329CBC7B161F0AE
          0FEEC5F4FA581701C94A308B949E22B8B032C9D96D8925897149FF00A6BADFE9
          3E84069AEB8D715082C2F7B6FA5812029B2EC73460D2E5FAE6FE98FDAFB00A79
          62E0ECBB30A1EBCB2FAEC7D1CDF28FFD00B3C296E17ED97253F7695A7AE4D7C0
          0A6BB63B752DAEEA5DC8AFD9CDF0943ABD280D18A1EDFBAF96992FA93E5D3AF2
          05744EC9415304A1C9A393586D743517D604FF006554B114ECBDFAE5EB7C1203
          9DFB349B7FA95BC25E9969EE025C91AE0F99C6AAD7151EEAD7AD819373746AF0
          6EA61292ADB5CCF2934D6BABD5FA4A2E5FC55C9379845F4690E3FDE7F0209476
          893E6725CDF892CCBDB3E6605BE0C1FD4E52F4C9E3D99C014DF46C9C5AB392B7
          F8B44D7B40A21BDD9C671DBC6D9B4B114E2B11CFF6520275C716CDA9497EDF97
          EA7AA51E0F5D40DC00001170849A94A29C9706D6A80C9B95B7BE29571F127397
          2B75C9466B09B7AFDA05F47870AE347336E2B189E92C2EC03BE1386B4BE4FD07
          AC3D9D1EA02D0000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000575F7E52B7A3E987A174FAD811ABF6
          9395FF0077E8AFF553D5FAD813B2AAEE8F2D91525DBD1E80333AEC8D91DB2B1C
          E992CCA32D64A2BA33D4F80129D154B70DA8FED26BF692EA82D31EB027B8D9D1
          B958B23DEE89AD2480C52FE3BCB96232F1F6FAF2A7F5474F9151AB67BAA2E8F2
          56DA92E3196399F4B7A1157DB546EADD73CF2CB19C69C1E40C8F6956E973C578
          708AE5A651D1E9D2FAFB00A96E2C8591AB78F9A9849AF162B494970CFA3E2547
          A12B6B8C3C59492AF8F367422A4A49C5493EEB59CF6019A7395928F2ACB7AD51
          7C34FBF2EC5D005F5D71AA3CAB56F5949F16DF4B0260516DB9524A5CB08FEF2C
          EAEC5DA05788C630B2D8B8C53FD8D0B579EB7D72F8016C2A93978B761D9F762B
          58C17676F68139D8A1858E69BFA62B8B031DDB656DCA57376598EED11D2315DA
          FA80B9A50D66D4A50E97A570FEBF7FA00824E76392CF898C37FEA61EBC38417B
          C0B9570AE0F9DA8D6B56B385EB6F8FAC0E789658B144792BFF00726B0B1D91D3
          DE04631AF9949277DABFD49705E87C17F6409D89B8377D8A15B58925A2C3EB6F
          FA80E78E9452A60E504B1CD2EEC525DB2D5FA80878964FFD4C2EAA62E7FE2795
          EE01E13971AE53FF00F967A7B2395EE0270AA70FA21557FAAB3F0E50333A2CFE
          327C8EB8DAEB525350E9E67DAF5ED014ECB72A5CD6DA9F79CD28F36B26B1978E
          508D3E1DCB84F3EB6BE3CC14FF00D88F1CB7D9CB25F083038EFB22D2E473937C
          39651C74F4E57BC08D9BC846B97185AD6211968F2F440728AAA9C9F2B5285515
          5C6717AB97193CAF5016CA13C62495B0EA9614BD4F8008CA5AF852E6C71AE7A4
          97ADEBED02E00000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000216B6A3CB17894DF2C5F567A7D4B50217
          3E4AE3557DD94F15C31D0BA5FA9016C631845422B118AC25D88036926DBC25AB
          6053534A13DCD9A73F7B5E882E0BD9A813AA2D2739E939BE692EAEA5EA40725B
          8AA37C36EDFED679692E849675F6018B78EDBDC2AAB576F0EC82E9F5B2A335BB
          6F0711DC41C397E8DCD5F35D204DEF3715C3C3BA4AEA1E33757F528675CF0C64
          0D36798552955B7DABE695B84A4B8413D338EB5D4456C5556AB5572A75A58C3D
          73E903CC8ECFC5DCCAB8732D9D72E0DE99E948A8DB74E2F31C7ECA18524BEF4B
          A20BE645594D6E29CECD6D9EB26B82EA4BB1016814D9665B8465CB18ACDB67E1
          5D5E902A4E2A2AE9C5AAA3A51525AB6F83C75BE802DAAA97378D6EB6BD12E88A
          EA5F3604A7634F92B5CD63F625D6C0AE29E651A9E67FEADCFAD742FE9A012845
          358AF4ADEB29FDE93F4FCC0AA58A77117625E04B0AA7D109F6FA7AC0E59B8AEB
          9F36DF164E5DD9C21AFA1BC675026A3CD2CCBF6D747D55C1FDBED604E7184573
          EE2795D4F48E7B174815BDC5936E14C7971D6B32FEEE897F69FA80476D36D4E6
          F12FC4FBF3F537A2F5202E54569E5AE697E29779FBF801394A30599C94575B78
          021E3D6FE9CCBF562DAF6E30067DD5AEB8BB96D9C9F0729E3092F436C0AEB717
          B88CB71546A6EA9662F18D24B528D345952A2A5CF1D211E95D4417269EA9E576
          01D00067BABF1ED516A328C165A92CEAFA9F470027170ADBCC156E4F3278586F
          AF2BE605A046508CF0DE925C24B4680900000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          000000000000000000000000000000000000000000000000000015AEFDADF456
          B957A5EAFDD8028BAEF0DDBB8C732A57875AEB9CB19F92F681CA7CC689E21737
          4DC977A335CAB20597591B270DB45E5D9DE9E3FDB5C7DBC009D9DFB2357DD5DF
          9FA1705EB6059292845CA5C229B7E84078154B7365B3DE2A9D9E2732C2E3CBA2
          78F568547ADB7DFEDAFC413E4B387872D1FA88AD13708C2529E3912CCB3C3006
          15B292FDA533F07712CC9D7F770DE89AEC28C74D5E05EE77B7B7BA4F35CB9538
          2CF14C237CB7738255DC95729FD3745E6BC75F67AC8AD127C918D54E9296917C
          7097160574C14E4A6BF735E554BADF4CBD7D006902BB272CAAEBFDE4BA7A975B
          0316F6ABE0A12AD296D6AC4EC839625369E5E7AC0BF6B64375277E7328E631AF
          A60BB575B02DB6C69F2431CEF56DF08C7AD819A309DCDAA24E1545BCCDE73397
          079FE9A7C02FA93B23CB2AFC3AA3DDE4EBC7CBE205E064DFC5DF4BA633E4595E
          249EAB1D5E9CE00E6D7671A6BE5598A7F5744A5E96B82EC404ACDCA83F076F1E
          7B16985F4C7D9FD3D0021B594A5E25F3729F52F867A3D5EF034250AE3A62105E
          A480878AE5FBA8392FC4FBB1F6F17EA4077C3B25FBCB1E3F0C3BABDBC40EC6AA
          E0F318AE6FC4F57ED7A813029DDACED6EFD46FD8804F6D45F28DB6414A4968DF
          501DFE1B6FC3C287F7501C7B4DB3FF004D2F469F002ABB63CEA3E15D6558E852
          9497BD81A12B62925253C7E2D1BF5AFB00E52A5CAE564796726DC9653EC5C3B0
          0B0087238EB5BC7E83FA7FA80EC669BE56B967F85FCBAC090000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          000E4A4A31727C22B2FD40569F83439CFEA49CA497E27AB4BD60570AF5AAA9EA
          EBFDACFF005E4DE3DF9605D6D355D1E5B60A6BB50187CBB6D1AECBAF4B96BCCA
          15AFD14F57AFA00D94B4F326FF0069677F97A79782F701CDC3CD7E12FAAD7C8B
          D0F8BF52C80A21151E6824A1F4D697E05C3DBC40E6E367B7DCAFDAC3BDF8D692
          F681E5CA57D373DAD563BEB834F926D2CF2EB8C951B36FBFDBD964BC5FD8DF2C
          2E59E9A2E093F5915B6C8D728356A4EBC65E78600F2ADAA5B683B2A972C26B33
          A65AAE46F459EDC9512DACE76661649ABB70F56F2B1525F77D3C1600F512514A
          31584B44BB08AE59355C5C9EBD092E2DBE0808C23E1C65658D73BEF4E5D0B1D1
          E84067A3711DF592714FC0A5AC67EF4BA1FA80ABCC15754A375598EF1BC47916
          79976AE9029A27376C76D7D8FC5B64E76C52D782C472B8702A3D6494528C5612
          D12445455B073F0FA7A1F43C71C3EC00DB9BC45E22B8CBE48086E2545544BC6C
          2A7835E9EAED030D3B8BF78D6DEB6D54BEBB7849C7A33D4CA8F46AA6BA63CB5A
          C2F7B22A2ED737CB4AE6EB9BFA57DBEA03AA95952B1F8935C1BE0BD0BA00B000
          000057745CE9B21159728B4970E2808D72BF923CD52524B55CCBE480973DABFD
          3CFA24BE780216EE7C18F3CEA9E3869CAFE0C0B612538466934A4B293D1EA048
          000000725152587EA7D280E80000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          000000000000000000000000000000000000000000AEDEF7243F13D7D11D7FA8
          08DDDF9D5575BE797EAC35F8E00ED3DE52B7FDC936BF5568BDB8C81DBA6E15B7
          1FADF761FAD2D10119C546B86DE3C25887F652D7DDA014BDABBE72BD592AE6DE
          2B717C231D3DEF50335D3DDAB554E4A726DD50B12C35CD86DE3D0547AA924B0B
          82E0457252518B949E231596FB101E753B1AE74C7C659BAE7CEDF0715C4A85DB
          2BA2B0B1B9A970859A4D2EC9018DD92DBA71AA728C56B2DBDCB2B46B44FB7D40
          6BD852ACA2CBF75DE56CB9DF37543A48AD75531B60ECBA09BB70D45FDD8AFA57
          6012A6338CA71E773A9691E6D5A7D3AF4A03B1FDAD9E27DC836A1DB2E0DFC80E
          6EA996E28953197239617371D320665E5CE88A96CEC70B92C4B9B58CFD280AEE
          DC576274EEAA50DCF0CBD74E398BF8228CEF6B7ECA4B72DE27C79BEA49BE2A4B
          8EBD68237EDF78B73CB5B5E158D65A7D2BF448AD33AA138786D622B18C698C75
          0126E308E5E2318AF4249019ACDBC77B895E9AA62F308706FB5FD80433FF001F
          2C3CBD949E9D2EB93E8F4302F519DDAD9DDAFA2B5C5FEB3F90172492C2D12E08
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          000000000000000000000000000000000000000000000056BBD749F44128AF4B
          D5FC80AA526E5758B8AE5A6B7FA4FA7DB25EC034462A31518E918AC25D880AA7
          DFBE10E882737E97A2F98119B6E7392E314AA87EB4B197F002D938D35B7C2108
          E7D514053454B9A339AFDA413CBFD3B3BD2F881A40CFB9EFBAF6FF00EE3EFF00
          EA4757EDE005B0EF4A53E8FA63E85C7DE04DB4936F44B56C0C33AA3B89421647
          2EC6ED9F5A82D22BB33F6810B76D6D72546DEC73849734A99F0E58B5A67B7814
          76EF30B611F0FC170DCB784A5AC7D29F4846A9E6308D307DF9E99EAEB9115155
          CDBF1299F2C62B92106B306974F5FAC09ABF95A8DD1F0E4F44DEB07E897DA04A
          C949572956B9A693E55D6C0F22ADBDAF9EEBEB7756DB56453EF732E95D78E054
          76FBD534C6319ADCD137DC8D99E78B5D78E290128D537FB5DF424A134B9271D3
          C3C70785C00D71BECDB616E5F8943FA3731EDE1CD8F8915A2CAE37D7CB978786
          A517D2B54D0152DC4EA7E16E166CFF004E715A4FEC7D8066545B4D8F73BBC5B0
          92719A596A29F4E1F41517572FE1251AE4F9B693FDD599CF2E7845BEAEA6456C
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          000000000000000000000000000000000000000000000015D4D723B1F09373CF
          6747B80A6A4DC694F8CB9AE92F4EB8F6C80D40515359BAE9689C9A4FF461A7C7
          2072A4DBAD3E293B66BAA53E1F1604B70D350ADF09C9737EAC7BCFE180275A6A
          09BD24FBCD76BD409819612E6BAFBD6BC98A6BF4AD5FB5B034C63CB151EA58C8
          15DDDEE5ABFDC7DEFD55ABFB008D324D59B993C464DE1F4284345F360476B646
          FE7DCC784DF2C73D118FF5E581C5446EDCFF00132D557DC82E8CAE2FDA049373
          72B13D66FC3ADF525C5FC40BD251492D12D12029DC4ACC46BAB0E73787CDC394
          083B1575C76F545D764B10827D0BA5E783C20344211AE11841623158480C0F6E
          B797CEFAF1055BC42784F9A4BA5F58164F7CE86AADC579B5E1775AE5927A6750
          3AA9B6B529D314EA936DEDDF0E57D59E0FB008559AF33D9E655AFDE6D65A4A2F
          F473C3D00257EDE6DCEE6A554F10C4B49D6FA9AE3C7A501A76DCEEAEFB7283FD
          DB97D4E1D19032EE734C67B6861D76C7452D557978CBD1F7409EC699EDB34CE7
          E237DE9359C45F56BD606D000008CECAEB59B24A3D5978033DBE61455C14EC7D
          508E7E3803159F9829AF8ED374FD15A7FF00714575FE6CF2594B92EBA5B69BFB
          B74251F7A4D2F68C0F5E9BE9DC56ADDBD91B6A7C275C94A2FD6882C000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000042D6E35C9AFAB0F97D3D0042F4A3B775C7EF255C7FB4
          D47E6076187758D708A8C17A7EA7F1404EC9725729FE14D814F272EDA14F073E
          58B5E9D65EEC81657ACA73EB7CABD11D3E3902AB3BF7F2F54543FBEF32F7440D
          2042D9AAAB9D8FEEA6FD8066ADF8355109A93E6CCEC924E587C75C76B034C2EA
          AD6D5735271C670F38CFFD00A2D937E2CA2FBDA535FEB4B197EFF7010F318CE3
          B2F0A98B7971824B578FE880E54AED96DE35AAF9A2A29269ACF8926F3A74ACB4
          04DEE2A8551A61271B65884549352CCB4CE1FB40BE115CD88FD35AE48AF8FC80
          B00CF44E16DB64F3992EEA5D2971E007172D92B2E92E682FD9D717C1E1EBED96
          9EA039773554C76F5C9BB6D7CAA4DEBAEADFA80BEB8429AE308E918A033C6985
          F7ABE51CE16639FC3D1EDE20699C9C6394B327A4570CB02BB688CDF8917E1DD1
          E162F83EB4079EA98EEB750BB7388E8B9125DDB397A72FAFA8A8D4ECF06C55ED
          9AB1599C579D22FAF2B82EB4454A5CB54650CF35B3D6D9B59E3A70F745010DA5
          77EDDAAED6B9279E482D5C7A75D35036811B2C855095B6C942B82729CE4D28A8
          AD5B6DF0480FCED7E77BEF3FB654FE5E8726C60DC6DF34B5771B5C55717C7FA7
          02A3D7DA793EDF6FDFBA52DD6E1FD56DAF3AF62E0456E9CEAA2B95964A35D35C
          5CA7393518C631596DB7A249018579FF00914A4A11F33DA39B6928ABEB6DB7C3
          4E6036DFB7DBEE60EBDCD50BAB7C61645497B181E05FF94E8A2D7BBF21BE7E59
          BBE2E306E544FB2507FD3B0B9459B2F39BE9DC47CBBCF2A5B5DEBD2ABA3FB8BB
          F55F43ECFF00A057B64000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          00000000000000000000000000000000000000000000015DBAF247F1497F87BD
          F202376B6530FD2727E88C5FCF0062D9EE2D842CB2745938DB64A6A504A5D9C3
          39E828BACDDD37A8D116D4EC924E328B8BC675E288345924AC8B97D308CAC7EA
          D3E0D812A9355C53FAB1997A5EAC0A68EF5939F5CA52F67717BA2C0D2066DEF7
          A10A78F8B38C5AFD1CE581A40AE3CB1F12D7D2DE5F6434F93033E796744669E8
          A56CF09CBBD2D3A3D2C0D50B21626E0F293C3F48109F7AD843A2399BF82F8819
          2FA2DBF7BCCE1CD5570EEA97D32787A7B40D14FF00EBC1572ADC52CB728F7A39
          7ABE1AFB809B9C2C4A30929733C3C3E85C408EEA3075E5C54ACCA55B7D126F4F
          7805E1D52852DE1423959D32F87103957ED6FB2F7F4C3F675FABEA7EDD0095F2
          5855BFA5A729FEA2E3EDE00595C5C63AFD4F597A5FD80723DE7CFD1C23E8E97E
          B02177ED24B6EB8497358FAA1D5EBE004379CB2A9D2DA8E565C9ACA8C63C5FD8
          053B6AA3B2A3C497EF67C14BA171C3F8B02EAE2E38B26B9AD97D117A3CBE97D5
          F2E005F18E357AC9F160480FCCEEA9B7F356F25B3E6957F97B6D2C6E5C5E1EE6
          C8EBCA9AFBABFA7462A3DADE6F7CA3F2DF954F77BDB6AD87956CE1ACA5DD8462
          B4518A5AB6F828AD5BD16A222667104CC43E1BF9A3F9DFE69E692B36BF95E3FF
          001DB0CB8FF1734A5BAB16AB293CC6B4D3E8CCBF49703D6D5C1F5BB876727F6B
          E6FBDF33DE7995CF73E63B9B779B8786EDDC592B67A70D66DBD3A0F42BAAB5ED
          0E4B5ED3DE5478B9D3A0D9860DDE55E7FE6FE4762B7C9F7D76C65A655137084B
          9755CD05DD925D524CD37D14B7786CAEDB57B4BEB3F93FF9DF07655E5FF9C942
          B537CB0F36A972C799F0F1AB4B0975CE1A2FC29659E6EEE14D7AD7ABB75F2227
          A4BEBFB9DAEC7CE364A1672DFB5BA2ACAAC834D61ACC67092EC7A34798EC797E
          5BBADCEC777FF09E653E7B31CDB2DCBFF56B5D0FF49147B64000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000AE5ADB05D094A5EB585F3022F5DCAFD083FF001B5FF8816A4A2928
          A492E0968808BD6D8F626FD7A600CBBB539C2E55ACC9F254BD6F2FFCC058EEDC
          D516ECA138C56B284D705D8F0077669F849CA2E32C28EAB0DE16AFDAD81A00CD
          3EFEFAA8FF00B7094FDBDD03436A29C9F04B2C0A669AA635BFAA6E3197AFEAF7
          64084EE8D0F71B99FD30E5AD25C5E167E3202EA64A75466B84D73FF7B5F981CA
          BBD3B27D6F957A23FD7902D00047921CFE26173E31CDD3802B9F7F715C3A209D
          8FD2FBABE607773251A26DAE6D30A2F5CB7A25ED0254D6AAAA15AFBAB0DF5BE9
          6042118DAA739A528CDE89EAB963C3ED0213FD9CE308D8E319714DE78F0C37AA
          E0C0D0F9611CBD2315EA4901553DDAE57D9A39F7E59E88E345EA405518BB6DC4
          FB2CB57F921EAE2C045ABAC95F2FDC57A47B71D2068845FD73FAE5D1D4BA8098
          187CD2C9ADB3A6A78B2EEE297545F17EC02AAAEDAF96ECF979E34ED688394EC9
          B518A8C56652937A2EB6CA3F98BF98DF9FF79F9D7CD251AE73AFC876B36B61B5
          7A73634F166BF14BA33F4AD3ADBF7F8BC78D7199EF2F2F76DF29C4767E2E3294
          1E62F0773996ADC4BA51303BFC4763181C7B8974218154A529BCC9E5947D67F9
          3FFCC5DC794EF2AFCABE6F7B9794EEA5C9E5F64DE7F87BE4F4867F04DE9D92EC
          6CF2799C7E9E75F77771F6FDB2FB6F9DD2F7FB3CD2F1BDDBBF1B6B35F529C75C
          67B4F21DEDFE4DE630F35F2EA7791D2725CB6C7AAC8E925ED20DE00000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          000000000000105ADCFF00462B1FDA6FEC0230D77173EA508FB32FFEE02D0211
          D6C9BEA515EBD5FCC0E53AA9CBF14E5FE17CBF2039B9D689C7F12E4FEF777E60
          5A000CD4E65BBDC4BA172C63F3F80175BF435F8B11FEF3C7CC0E4F5BAB8F5734
          FD9DDFFB80F3B7B0B2CD9D7C8B2EDB9CB4FD272C145CB6DBEA20955B95284569
          19C744976EAC829FE3775B670AEDAE0F3DED1E1B52CF5F0792A342F33A92CDB5
          D952FC4E398FB5115757BDDA59F45D1D7A1BC3F63C017E53595C00CFB6B2174A
          DBA0F9A2E5CB16BAA2BED6C0EDDDFB69AFA32EC97A21C3DED013B9B55B51D252
          C462FB65A67D404E294528AD12584BB1011AF55293FBEFDDC1019EE859E13F02
          BE6564D7343385E1AE38CE9AE3DE072CDDD4E5185B9A92EFCE362E5CA8EA92E8
          796024E51A1457EFF72F38EAE6E3EC5A01746114E3547E8AF0DF6CBA3ED02E00
          0787E63BD5FC4CEA4F4AF0BD78CBF8951F3FFE64F986F375E5547E5BF2E972EE
          FCEAC75593D5726D694A76BCA7D3DD835D2A4CDFA3116F29ED0D7B333188F57E
          2E9FE566CACDBA8F89B87735FBF5851CFEAE386BD6757F3B6673D30D3FC6AE1F
          985F9137F579DEF7C86F78DD57B57BAD9D9C2362E78C62DAE84F328BEA676CF2
          A3C22FF3C4B9A34FD535F93F296D56D16CE8BA0EBBAB93859092C3528BC34D1D
          D131319873CC61C84276CE35D7173B26D46108ACB6DE892411FA5FCD3F93B79F
          962DF29D86E22E7E69BFDB2DC5B4AD796765928C60B1D2B1AF69CDAB7C5E2D3E
          90DD7D735C47ACBDDF27FE59CAFA94FCC6CB1DCD734A9DBE3BA96BAC9A79C74E
          870ECE74E7E9874D78D18EADDBDFE524E744ADF2BBECAAD8C5CE31DC35C8D2FD
          34A3CBE92539B6CE2D195B71E3BD65F4EFC9DF98ACF3BFCB9B1DF5F38CF76A2E
          8DD4A3252CDD449D7397774EFB8F3AEC679FB69E169874D2DE5112F63F2ADBFC
          3F9AF9A79727FB1B1C77942E85CDA4FDED1AE59BF5A450000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          00015C75B6C7D4A31F665FCC0E53F5DEFAE7F084501681087D563FD2F9203947
          EEA2FF00177BFBCF207371AC611EBB21EE9737C80B40019767AF8D2FC5636BD0
          D27F302F9EAE0BA1CBE09BF90155D3941DF6478D75663E9EF3F92031D1BEF0F6
          F542EA6D4A2977F974696AB0513BFCCF6D3A2C8D52CDAD72A834D71D1905CF6B
          1BEF8EE6C49C1D69723EB7FF00503AFCBF6F9CD7CD5CBAE12698154FCB5BE162
          976590527EDE20679F97DF5C65E1C126D3D6A9CA3ED52CE4A8B76337B3A3C3BA
          AB136DC9CB972B5F4055DB5BE3B9DCDD645776115083ECCB6FDA41A27DEB6B8F
          42CCDFAB45F10393BEB4A494D788B449BD79BA101292E4AF963A68A31F5E8809
          A492C2E0B8018F7344A567767977CA2A5092CC7960B3E9E8F7819E35476DB99E
          E655351AE38C55AC549AEDC6346547A34EB5C64F8CD733F4CB522A6000FC0EEB
          74DEFF007B97F4EE2C8FF764D151F86F39FCC5E5FE57FCC0F28FF999B8F95BD9
          CEA9D986D52F7167D6D2E8CD5152EC3B74EA9BEBB63BF473ECBC56D197E87F33
          7F2DFCDBCC7CDB6DF9C7F23F9C530DED74A54C2C6ACA64A29ACD73C5906A49FD
          328F2E75CEA65A77D6B5F0BC744BEA999F2ACBF3BF9067F99FCEFF0098BBDD9F
          E736FF00E57CBFCB6CA5C255554B8C23B8A5A4BC18C6324F9DB52D739E383772
          6B48D31E1DA67F46BD3369D93E5DF0BBF9CBFCB8F0F6BFFEDBE4F5E654A51F35
          A62B5705851B92FD1E13ECD7A18E16FF00B27D8E46AFBA147F247F97FF00C4DB
          1FCE7E6F57FEBD326BCA699AD25645E1DD87D117A43B75E8467CDDF8FA23DD8F
          1F57DD2FD9FE63F22ABCEFF9A1B176E1AD9F933BE09FE37B99413F529338A2D3
          1A263E36FD1D3319D9ECF907F35BCDF79FFEC7BAFCBB5CDD7E59E5CE11F062F1
          1B2D7053739A5C5AE6E58F52E1C59E9F0F544522DEB2E2E45E66D8F487E336DE
          6FE69B3D9EE7CBF6BBCB69D8EF128EE76F09B55D893CEAB81D934899CCC75868
          8B4C461F52FE51798423E4FBFD8CA5FB6AF74EE51CAFDDD95422BA73C6123C4E
          746367B3D1E34FD0FA879049CBF30576C784A89D72F427CDF1381D2FDB114000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          000000000000000000042BCF35BFACB1FDD8811A318B1AE9B25EE7802D021078
          84A5DB2F736072858A6B5D518AF701CBBEBA175D9F084981680E1A819763A6D9
          49E996DBF569F20271BE16CEB8C549379977A328AE1DAB1D204E1AD9767F128F
          F853F98127F5C57424DFCBE6067DF50AEA945E8F9E2B38D757CBF3038B6BBA82
          4ABDD3C2E0A514C0AE95B85BE93BE4A5C95FD496161B0252DDEEA153B67B65C8
          A3CD9535C319E0D0176DF755DF5426E515392CB86565302E4D3CE1E71C40CFB4
          AA15F8CE3F7AC7EEFEB02D8EB758FA9463F17F3020E4FC38384559E24F293785
          86DCB3D204636DCDC1CE1DC7DE784B863A936D816C6EAE73E459E7C7361C5C74
          E1D29011FAB72BFF00B70CFF007DFF00F481DA35AF9DFF00A8DCBD4F87B80B40
          0003E33F9A3CD6EF2BF33F31A2A8E7713DD5B28B9708C64F9B38F5E8650C5F3A
          FE1BCBBCE3F376D29FCCD75CE8DEEDECAE89C2C55C9DF54B99479A519249A961
          2C713BF8FB2D4A5A6BDFA39F6D22D3197EFBF28FE5EDC7E57FCD55F9879379C4
          A9FCADC8FF0088F2CBE73B2DB2728358E58C635B5CD8973B69AE1864D9C98D94
          C5A3EA29AA6B6CC4F47B177E61D86E7F9A1BDDCEC251776D3F2FF85BA947FDC7
          BFA1A4DF4E2334613131A3AFEEFD19FF00D3D99FC9FF0099F0FF00F71F34FCA7
          E7328D9B5DCC93D84ADC38F7AB5CF4493D1A9718E7B574A13A7FD717AFA77FEE
          917FAA6B2DDE6FFCC4DAED7F34FE5BFC93E43C94C25B8A63BF5524A35EDE2BB9
          4C52E1949378E8C2E965D7A7CA96BD8B5F168AC3C5FE64FE6F87E56FE64793F9
          939E3657F963DAEEA6B39509DF39674CFD328C64FB0D9A357E4D331EB961B2DE
          3789F93C4FCE5F95B6FF009D7750F3DF2BDE55B7DFDF082B676F33A2E8A8E233
          E682934F970B48BCAC0E3F27F1478DA3A1B74F9F58793B6FE4F6E5F95EEF71BB
          F3ADB47CCE30E7DA51529BA32B592B6CB23071D34D22D2E393A679F5F28888E8
          D31C69C7597E5FF2A2BE9AB71B88C9D7B885EE0A7096A94231E0E2F1C5CB5472
          732D9D9ECDFA23157DEBF969B8DD79945EEF74BBF4B9D7E270E6494357FDE386
          5D30FA418A800000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          000000000000000000000000000000000AEB799DDD935FE4881CDBAC425DB3B3
          FCEC0B40AB2FC1B1F0FAFE2C09C162115D49010B5FED685FA4DFF82405A046C7
          8849F527F0028DAA6B6AD3E39B3FCF203425849752C640AE19FDB3CEBCCFDD14
          8042A719464E729622E3896BC71AFB80EDDC21FAF1F881601458D2F1E5C315AD
          7D0A4C095914F6D384969C8D35EA02986D36D2EEBAA3850825A7A40A21E5FF00
          B4B79395454B118BE6D1613E2A4BACA855B6DC72B70961734F4564D70935D2A4
          4557653BA7386B2695C9B8B945E5C639E388F422A35D97CFC5A6AF0E5094DBD5
          E34EEB5A61BEB22AE75C2538A924F922D2F5E3EC038AB5E2CB1292EEC7A5BE99
          75E40C146F25CFBB767082C466F8E8DA4B4EBC951E9D7CAAB8A8BCC70B0FB304
          54800003E3FF00CCFF002D96DFCF2BDEA5FB1DED69F3747895A5092F62899431
          97C9FF0039F9659BAF2896EB6E9FF11B17E3C71C5C12EFA5E85DEF51D5C6D9E1
          7F94B56CAF955F8EA7F985F9AE1B7FE16BF31B250C6149A8BB31FAF8E6F79EAC
          F175CCE70E5FCB6C7765F2BFCC3E79E55BABF7BB0DDBA373BAADD3B8B1E24E75
          B9C6C69E53FBD08BF51B6DAAB68C4C746117989CABDD798EFB7DBEFF0092DCEE
          9BDF39467E34572C94A1C1AC630D60CA948AC623B319B4CCE5651E6DE65B5F34
          879D51BD92F34AECF1A3B96939789F8B5CA1E11E3E3E8794E72B7CF7F3179E7E
          63B6ABFCE379FC5DB4C7C3AE524A2D472DE3BA974B26BD75A7F8ADAF36EEAFCB
          7F34FE60F238F26C3796554A79F0F4B2B4F8E79649A463B34D2FDE1956F31D96
          6FBF3B7E66F3B51D9EE37B65AAD6A11DBD49414E4DE12E58249B6F81AE346BD7
          D70CA6F6B747D5FC8FF2F3F2DF2CDAECE7DEB6B87ED64B54EC9B729E3B399BC1
          E25EFE5699F8BBA231187DDBF27795C3CB3C9E8AD2C58E399FEB49B93F6671EA
          354B27E848A00000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          00000000000000000000000000000000030EC6F95BB8DDC1F08CF31F47D3F203
          4EDDE613ECB26BFC4C0B40CD4DD1BF6D64E3C3335EF6C0D11FA63E84063DD5FE
          1EF3695F449BCFF6972AF881B40AEF92851649F0517F0029DB4F9F68E7159CBB
          1C575F7A58034A7949B586FA00AE2D28DCDF04DFC1016814EE271AA11B27A463
          24DB597D9D0057FF0023B3FF0071FF00727F60155BBEDACE1746336DCE2D47BB
          2E38F401B2DD699BFD17F00234F19FF67FCA809579CD99FC5F2405554E3551CD
          3D129CA3D7AB9B5D00423754A4B57ADB27C1FE17D804A56C27B8A5473F7F8A6B
          A3B40BD2EFC9F62F8B0392A94A4E4A528B692D1F567ED02896D7C4A55164524D
          2E7B22FBD98F07C35034C22A108C23F4C524BD080E800007E7FF0038F917FCF7
          92DB454B3BDA1F8DB57D2E715AC7FB4B4F4E0B092F8AC60DE54972CE2F96716B
          0D35C534648F907E76FCAF77E5EDC3DF6C6B6FC9AE794E2B3E0CDFDC9767E17E
          AF4FB1C5E479478CF7726DD7EB0FC7FF001BDA77B9F07F1BDA0C1FC6BEB061DF
          E3BB42E1DFE3BB4187D6FF00961F90AFB2757E68F38A5D71C737976DA6B579FF
          005A49F0FD0FEF7533C9E57233F4D7B3AF56BC7597D8F61E5FE36F28DBD71E6B
          6725CB1F474BEC479AE87D576F4C76F4C298EAA092CF5BE97EB3155800000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000001E155B39EE379B9AE36BAB964DE52CE5397A5151757E57649
          CD3DCC972C9C744FD3D7DA059FF133FF00FD53F67F58561A7697EE212957F4C5
          E1ACE35F4045B0F2CDCCE2A69AC4965779F060573D9DFB6BA8CB5E24E4956F2D
          A524D7103D2F0FCD3FDDAFD9FF00D24555B9AFCC3C09F8B641D6966492D70BD4
          5468F2D7FF00A905D59F7BCFCC8AD60575FD56A7AAE7F8C53F9816000005566D
          A9B65CD64732E19CB5F060425B2DB34D286B8D357F6812DB575C298BAD614D29
          3ED6D76813AFEAB7F597F9620476FF004493E8B27EF9B7F30299C2337CB3598A
          B936BD31D3E20593A6A53AFBAB0DB5EE6FE40591AA106E508E1B493F57FD4098
          000000000007CF3F3B7E50B3C69F9F79455CF29665BFDAC78C92D5D915D7D6BF
          ACCA251F8D86D769BFDBCA12846EDBD89C6CAE694A2D3E31945E8547CC3F34FF
          00249DD29EF3F2A6E152DA729797EE64F933ABC5766AD678252FEF247A1AB993
          1D2DD5AADAA27B3E63E65F927F39F94CA71DEF92EED42BFAADAAA95F5763F12A
          E68FBCEEAF235CFAB4CEB9796BCB7CE1BC2D86E5BEA54D9F61B3F2D3E31FD53C
          27E0FD0F947F2DBF3E79D58A147936E36F07ABBB7B17B5824FA7F6BCADFF0065
          3669B72B5D7D72CA35CCBECBF927F92BE59E47387987E61B23E6BE651D6BA526
          B6B5493D1A52D66FB64B1FA3D279DBB956BF48E90DD5D710FA6EE271DB463184
          1DDB9B1F2D3441667393E0B08E36D7EC3F2BFE5FB7CB2A96FBCC5A9F9AEE177D
          4758D50FC11F9BFE8E4ABF464000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          00000000000000000000000000000000000000000000000000AA14575DD65D1F
          AEDC7375774055A597AFD34FDB0881681551446853517953939FA33D00776FFB
          8AD754527EA5802728464D3924DC5E639E860740E4A2A517192CC5AC35D8C0A7
          6D18D7E2D51D2309A515D9C91605E0570D2CB575B52F6AC7C80B00010B6DAE8A
          DDB6BE582E2F8F1D3A00926A4934F29EA981C5641CE55A92738E1CA3D2B20476
          FF00B98C7F0F73FBAF1F203B1D2D9AEB5197B72BE40469D2CBA3D53CAF438AF9
          E40AAE92AD5D27C232AEC7E84D2FFB40E59BEDB2E5929F328CB2F9536B835D0B
          B40E55E634D95CE7869C5B4A3AB6D2E0F87481AAB9AB211B23C24935EB024000
          000000001F93F3DFC91B6DFDD3F30F2AB16C3CCA5ACF0B34DAFF004E2B837D6B
          D85CA61F91DCD1E6BE52DC3CE3613AA0BFFED52BC4A1F6E5671EB289D3B8DADC
          93AED8BCF6E1FB181AE1052FA75F46A06BA361B8BBF775B7DAF4F881BE9F21DF
          DDA462AB8BE364B82F42E2C83DDF2BF20D979649DE978DBD97D5B89FD5E88F52
          0AF5480000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000551D37362EB8C25EF92F90168002BA
          3E86BAA525FE27802C02319C27CDCAF3CADC658E86BA004ADAE1F5CE31F4B480
          C546ED4BCC2EAD494AA928B84934D65259D40D6F71B78FD56C17F69018FF008F
          AA3BC96649D2E097324DF7936FA3D2513979A6D53C2E693EC8E3FCD820E7FC8C
          A4F156DAC976FF00D32051BDB3797EDE7196DF92B5DE94B39692D7A522A1B38E
          FADDB56E1662BC623AA5A278FC2DF40556EBBE9DEF7AC6A4E3CCE69E7314B5EA
          CF008DF5512CD9195B3EEC9F06A3F5252CE8BB48AB2BCA9C5379D2516DBCBEE4
          B4F73033BDCB8799F80D772C8249F6ACB0256DBC9BE85328A75DD0E5967AF2C0
          D728C64B1249AEA7A8108A51B671E89252F93F8203B5690E5FC2DC7D4B87B809
          800000000000000186EF25F28DC49CAED8D329BE33E48A97B524C08C3C8BCA6B
          7986D609FAF1ECC81B2BA28A562AAE30FD549016000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          000000000AA5A6E60FF1424BD69A6BE605A000AEBD276C7F4935E8715F302C03
          C95B05B8DDEEA339CA3152524974F3E59517C7C9F671E3CD2F4BFB304567B761
          5437B55708B5458B826DEAB39D5E4A8DB1F2ED9C7FD3CBED6DFCC8AAADD9456E
          689D75AF0B556471A69D2C0DB18423F4C547D0B00480E34A49A6B29E8D3EA039
          5D70AA0ABAD72C23C10095709EB28A6F0E39E9C3E205145B195CE3CC9CDC173C
          53D54A0F0F3ED03B64D5562E64F0E4A4A58EEEAB95A6F87681CDC6DE12BE9DCB
          D255B49E3A53D17BD813BEA84A55DB25DEAA49A7D8F47F6817015D9DD9C27D19
          E57E897F5A402328F8D28269B6949A4F54D68FE4058000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          000000000000000000000000000000002AB7F7B4FEB4BFCAC0B40015C7F7F67E
          AC3E3202C0298FFF0026DFD4AFE3302E02BB7EAABF5FFED60580000000000018
          ECFF00E6D1FF00E4FA3D1F7809798FFF000EDF57F990164FFF008FD3F4AE3F57
          FD409DDFBAB3F55FC00981E66FBF7ABF79F547EBFDC946DDB7EED7EEFF00FC5F
          4905C00000000000000000000000000000000003FFD9}
      end
      object grupocfop: TGroupBox
        Left = 3
        Top = 346
        Width = 804
        Height = 272
        Caption = '  C'#243'digo CFOP  '
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'Tahoma'
        Font.Style = [fsBold]
        ParentFont = False
        TabOrder = 2
        object gdCFOPNAT: TcxGrid
          Left = 8
          Top = 18
          Width = 786
          Height = 249
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = [fsBold]
          ParentFont = False
          TabOrder = 0
          LookAndFeel.NativeStyle = False
          LookAndFeel.SkinName = 'Office2013White'
          object gdCFOPNATview: TcxGridDBTableView
            Navigator.Buttons.CustomButtons = <>
            DataController.DataSource = DS_CFOP_NATOP
            DataController.Summary.DefaultGroupSummaryItems = <>
            DataController.Summary.FooterSummaryItems = <>
            DataController.Summary.SummaryGroups = <>
            OptionsView.NoDataToDisplayInfoText = ' . . .'
            OptionsView.GroupByBox = False
            object gdCFOPNATviewID: TcxGridDBColumn
              DataBinding.FieldName = 'ID'
              Visible = False
            end
            object gdCFOPNATviewCFOP: TcxGridDBColumn
              DataBinding.FieldName = 'CFOP'
              PropertiesClassName = 'TcxLabelProperties'
              Properties.Alignment.Horz = taLeftJustify
              HeaderGlyphAlignmentHorz = taCenter
              MinWidth = 250
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
              Width = 412
            end
            object gdCFOPNATviewDESCRICAO: TcxGridDBColumn
              Caption = 'Natureza de Opera'#231#227'o'
              DataBinding.FieldName = 'DESCRICAO'
              PropertiesClassName = 'TcxLabelProperties'
              Properties.Alignment.Horz = taLeftJustify
              MinWidth = 294
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
              Width = 412
            end
          end
          object gdCFOPNATl1: TcxGridLevel
            GridView = gdCFOPNATview
          end
        end
      end
      object GroupBox19: TGroupBox
        Left = 3
        Top = 264
        Width = 804
        Height = 82
        Caption = '  Tributa'#231#227'o PIS / COFINS'
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'Tahoma'
        Font.Style = [fsBold]
        ParentFont = False
        TabOrder = 1
        object Label14: TLabel
          Left = 37
          Top = 22
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
          Top = 49
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
          TabOrder = 1
          Width = 730
        end
        object chk_monofasico: TcxCheckBox
          Left = 177
          Top = -1
          Caption = 'Monof'#225'sico'
          ParentBackground = False
          ParentColor = False
          Properties.OnChange = cxchckbx1PropertiesChange
          Style.BorderColor = clMaroon
          Style.Color = clWhite
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
          Top = 48
          DataBinding.DataField = 'COFINS_CST'
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
          TabOrder = 2
          Width = 730
        end
      end
      object GroupBox22: TGroupBox
        Left = 3
        Top = 129
        Width = 804
        Height = 136
        Caption = '  Geral '
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'Tahoma'
        Font.Style = [fsBold]
        ParentFont = False
        TabOrder = 3
        object Label16: TLabel
          Left = 23
          Top = 50
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
          Left = 19
          Top = 75
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
          Left = 27
          Top = 101
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
        object Label77: TLabel
          Left = 8
          Top = 25
          Width = 51
          Height = 18
          Caption = 'CSOSN:'
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Height = -15
          Font.Name = 'Tahoma'
          Font.Style = []
          ParentFont = False
        end
        object lbl_csosn: TLabel
          Left = 206
          Top = 26
          Width = 608
          Height = 14
          Caption = 
            'GGGGGGGGGGGGGGGGGGGGGGGGGGGGGGGGGGGGGGGGGGGGGGGGGGGGGGGGGGGGGGGG' +
            'GGGGGGGGGGGG'
          Font.Charset = ANSI_CHARSET
          Font.Color = clGrayText
          Font.Height = -12
          Font.Name = 'Tahoma'
          Font.Style = [fsBold]
          ParentFont = False
        end
        object lbl_anp: TLabel
          Left = 206
          Top = 104
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
        object NCM: TDBEdit
          Left = 62
          Top = 49
          Width = 106
          Height = 22
          BiDiMode = bdLeftToRight
          DataField = 'NCM'
          DataSource = DS_PRODUTO
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Helvetica Neue'
          Font.Style = [fsBold]
          ParentBiDiMode = False
          ParentFont = False
          TabOrder = 0
          OnExit = NCMExit
          OnKeyPress = NCMKeyPress
          OnKeyUp = NCMKeyUp
        end
        object edt_cest: TDBEdit
          Left = 62
          Top = 74
          Width = 129
          Height = 22
          BiDiMode = bdLeftToRight
          DataField = 'CEST'
          DataSource = DS_PRODUTO
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Helvetica Neue'
          Font.Style = [fsBold]
          ParentBiDiMode = False
          ParentFont = False
          TabOrder = 3
          OnKeyPress = edt_cestKeyPress
          OnKeyUp = edt_cestKeyUp
        end
        object edt_anp: TDBEdit
          Left = 62
          Top = 100
          Width = 106
          Height = 22
          BiDiMode = bdLeftToRight
          DataField = 'ANP'
          DataSource = DS_PRODUTO
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
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
          TabOrder = 1
          OnClick = btn_ncmClick
        end
        object CSOSN: TDBEdit
          Left = 62
          Top = 24
          Width = 58
          Height = 21
          BiDiMode = bdLeftToRight
          DataField = 'CSOSN'
          DataSource = DS_PRODUTO
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = [fsBold]
          ParentBiDiMode = False
          ParentFont = False
          TabOrder = 4
          OnKeyDown = CSOSNKeyDown
          OnKeyPress = CSOSNKeyPress
          OnKeyUp = CSOSNKeyUp
        end
        object btn_csosn: TcxButton
          Left = 119
          Top = 22
          Width = 23
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
          TabOrder = 5
          OnClick = btn_csosnClick
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
          TabOrder = 6
          Height = 52
          Width = 587
        end
        object btn_anp: TcxButton
          Left = 168
          Top = 98
          Width = 23
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
          TabOrder = 7
          OnClick = btn_anpClick
        end
      end
      object GroupBox23: TGroupBox
        Left = 11
        Top = 6
        Width = 796
        Height = 125
        Caption = '  Tributa'#231#227'o ICMS'
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'Tahoma'
        Font.Style = [fsBold]
        ParentFont = False
        TabOrder = 0
        object Label22: TLabel
          Left = 20
          Top = 19
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
          Top = 44
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
          Left = 626
          Top = 70
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
          Left = 180
          Top = 70
          Width = 81
          Height = 18
          Caption = 'Redu'#231#227'o %:'
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Height = -15
          Font.Name = 'Tahoma'
          Font.Style = []
          ParentFont = False
        end
        object Label62: TLabel
          Left = 181
          Top = 95
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
          Left = 388
          Top = 70
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
          Left = 460
          Top = 95
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
          Left = 674
          Top = 95
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
        object cb_origem: TcxDBLookupComboBox
          Left = 67
          Top = 43
          DataBinding.DataField = 'CODIGO_ORIGEM_MERCADORIA'
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
          Properties.DropDownWidth = 751
          Properties.KeyFieldNames = 'CODIGO'
          Properties.ListColumns = <
            item
              FieldName = 'DESCRICAO'
            end>
          Properties.ListOptions.ShowHeader = False
          Properties.ListSource = DS_ORIGEM_ICMS
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
          TabOrder = 1
          Width = 719
        end
        object dbcsticms: TcxDBLookupComboBox
          Left = 67
          Top = 18
          DataBinding.DataField = 'ICMS_CST'
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
          Properties.DropDownWidth = 751
          Properties.KeyFieldNames = 'CODIGO'
          Properties.ListColumns = <
            item
              FieldName = 'DESCRICAO'
            end>
          Properties.ListOptions.ShowHeader = False
          Properties.ListSource = DS_CSTICMS
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
          TabOrder = 0
          OnClick = dbcsticmsClick
          Width = 719
        end
        object aliq_icms: TDBEdit
          Left = 67
          Top = 81
          Width = 80
          Height = 22
          BiDiMode = bdRightToLeft
          DataField = 'ALIQ_ICMS'
          DataSource = DS_PRODUTO
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Helvetica Neue'
          Font.Style = [fsBold]
          ParentBiDiMode = False
          ParentFont = False
          TabOrder = 2
          OnKeyDown = aliq_icmsKeyDown
          OnKeyPress = aliq_icmsKeyPress
        end
        object aliq_lucro_st: TDBEdit
          Left = 706
          Top = 68
          Width = 80
          Height = 22
          BiDiMode = bdRightToLeft
          DataField = 'LUCRO_SUBST_TRIBUTARIA'
          DataSource = DS_PRODUTO
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Helvetica Neue'
          Font.Style = [fsBold]
          ParentBiDiMode = False
          ParentFont = False
          TabOrder = 3
          OnKeyDown = aliq_lucro_stKeyDown
          OnKeyPress = aliq_lucro_stKeyPress
        end
        object REDUCAO_ICMS_ST: TDBEdit
          Left = 263
          Top = 68
          Width = 83
          Height = 22
          BiDiMode = bdRightToLeft
          DataField = 'REDUCAO_ICMS'
          DataSource = DS_PRODUTO
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Helvetica Neue'
          Font.Style = [fsBold]
          ParentBiDiMode = False
          ParentFont = False
          TabOrder = 4
          OnKeyDown = REDUCAO_ICMS_STKeyDown
          OnKeyPress = REDUCAO_ICMS_STKeyPress
        end
        object cod_comb: TDBEdit
          Left = 263
          Top = 94
          Width = 83
          Height = 22
          BiDiMode = bdRightToLeft
          DataField = 'COD_COMB'
          DataSource = DS_PRODUTO
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Helvetica Neue'
          Font.Style = [fsBold]
          ParentBiDiMode = False
          ParentFont = False
          TabOrder = 5
          OnKeyPress = cod_combKeyPress
        end
        object pauta_bc: TDBEdit
          Left = 516
          Top = 68
          Width = 86
          Height = 22
          BiDiMode = bdRightToLeft
          DataField = 'VALOR_PAUTA_BC_ST'
          DataSource = DS_PRODUTO
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Helvetica Neue'
          Font.Style = [fsBold]
          ParentBiDiMode = False
          ParentFont = False
          TabOrder = 6
          OnKeyDown = pauta_bcKeyDown
          OnKeyPress = pauta_bcKeyPress
        end
        object edt_genero: TDBEdit
          Left = 516
          Top = 94
          Width = 86
          Height = 22
          BiDiMode = bdRightToLeft
          DataField = 'GENERO'
          DataSource = DS_PRODUTO
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Helvetica Neue'
          Font.Style = [fsBold]
          ParentBiDiMode = False
          ParentFont = False
          TabOrder = 7
          OnKeyDown = edt_generoKeyDown
          OnKeyPress = edt_generoKeyPress
        end
        object edt_leis: TcxDBButtonEdit
          Left = 706
          Top = 94
          DataBinding.DataField = 'LEIS'
          DataBinding.DataSource = DS_PRODUTO
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
          TabOrder = 8
          OnKeyDown = edt_leisKeyDown
          Width = 80
        end
      end
    end
  end
  object Panel1: TPanel
    Left = 830
    Top = 257
    Width = 123
    Height = 312
    BevelOuter = bvNone
    TabOrder = 1
    object btnestoque: TcxButton
      Left = 7
      Top = 211
      Width = 108
      Height = 45
      Caption = 'Estoque'#13'[F7]'
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
      TabOrder = 5
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'Helvetica Neue'
      Font.Style = [fsBold]
      ParentFont = False
      OnClick = btnestoqueClick
    end
    object btnlocalizacao: TcxButton
      Left = 7
      Top = 156
      Width = 108
      Height = 43
      Caption = 'Localiza'#231#227'o'#13'[F6]'
      LookAndFeel.NativeStyle = False
      LookAndFeel.SkinName = 'Metropolis'
      OptionsImage.Glyph.Data = {
        F6060000424DF606000000000000360000002800000018000000180000000100
        180000000000C006000000000000000000000000000000000000FF00FFFF00FF
        FF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00
        FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF
        00FFFF00FFFF00FFABA7A68C8888C09596FF00FFFF00FFFF00FFFF00FFFF00FF
        FF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00
        FFFF00FFFF00FFFF00FFFF00FFACA8A786868A2A669A4B7BA0C09494FF00FFFF
        00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FF
        FF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FF9B9D9D5492C22E99FF1B7C
        CB557A97C19595FF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF
        00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FF3DADFF
        57C1FF4DB1FF3196FA197CC9537997C19495FF00FFFF00FFFF00FFFF00FFFF00
        FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF
        00FFFF00FFFF00FF41ABFF5DBFFE4DAFFF3196FA197BC85A7A97C29594FF00FF
        FF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00
        FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FF42ABFE5CC0FE4DAFFF3096FA19
        7AC8587A96C19494FF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FF
        FF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FF42AC
        FE5CC0FE4DAFFF2E94FA187AC75F7C97BB9396FF00FFFF00FFFF00FFFF00FFFF
        00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FF
        FF00FFFF00FFFF00FF44ADFE5CBFFE4DB0FF2D94F81979C6437397FF00FFFF00
        FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF
        00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FF46AEFE5CBFFE4CB0FF3F97ED
        577B94FF00FFFF00FFFF00FFAE837EAE837EAE837EAE837EAE837EFF00FFFF00
        FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FF46
        AFFE66C5FFA3CCF1BEB3AB867170A9807AAE837EE5D8BDFFFFE2FFFFE2FFFFE0
        EEDFC6AE837EAE837EFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00
        FFFF00FFFF00FFFF00FFFF00FFFF00FFDCBFB8C69E8ED8BDA3FFFFDDFFFFDDFF
        FFDBFFFFDAFFFFDBFFFFDDFFFFE9DEC9B7AE837EFF00FFFF00FFFF00FFFF00FF
        FF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFAE857FDEC0A5FFF3
        C1FCF1C8FFFFDAFFFFD9FFFFDAFFFFE0FFFFE4FFFFEFFFFFFFDDCAC8AE837EFF
        00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FF
        AE837EFFEFB9F5D4A5FBF0C6FFFFDBFFFFDAFFFFDDFFFFEBFFFFF5FFFFFBFFFF
        FDFFFFFEAE837EFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF
        00FFFF00FFAE837EECD5B4F8D6A2F2C997FCEDC4FFFFDBFFFFDAFFFFE0FFFFF0
        FFFFFEFFFFFDFFFFF5FFFFEBE1D3B8AE837EFF00FFFF00FFFF00FFFF00FFFF00
        FFFF00FFFF00FFFF00FFFF00FFAE837EFFF3BFF4CB95F0C18EF9E5BAFEFDD7FF
        FFDCFFFFDFFFFFECFFFFF8FFFFF8FFFFECFFFFE0FFFFE3AE837EFF00FFFF00FF
        FF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFAE837EFFF4C0F3C994EEB8
        84F5D5A5FDF3CBFFFFDCFFFFDDFFFFE2FFFFE8FFFFE9FFFFE2FFFFDDFFFFE3AE
        837EFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFAE837E
        FFF5C3F6D19CEEB27DF1C593F7E0B3FDF7D0FFFFDCFFFFDDFFFFDDFFFFDDFFFF
        DBFFFFDAFFFFE1AE837EFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF
        00FFFF00FFAE837EECD5B4FDE6B2F3C996F2C792F3D09CF8E3B5FCF5CDFFFFDA
        FFFFDCFFFFDBFFFFDBFFFFDCE2D3B8AE837EFF00FFFF00FFFF00FFFF00FFFF00
        FFFF00FFFF00FFFF00FFFF00FFFF00FFAE837EFFFED0FCF0D6F8E0BEF4CF9DF3
        CD9AF6D8AAFBEABFFDF4CBFCF7CFFEF8D1FFFFDEAE837EFF00FFFF00FFFF00FF
        FF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFAE837EE0CAB2FFFF
        FFFEF9F2F8E1BEF1C48DEEBA85F1C491F4D1A1F8DEB0FFF7C6DDC7AEAE837EFF
        00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FF
        FF00FFAE837ED9C6C0FFFFFFFFF7D7F8DAA6F4CB95F5CD99F9D9A6FFF1BBDEC2
        A9AE837EFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF
        00FFFF00FFFF00FFFF00FFFF00FFAE837EAE837EE8D5B4FFF9C5FFF5C0FFF5C2
        EED8B7AE837EAE837EFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00
        FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFAE837EAE
        837EAE837EAE837EAE837EFF00FFFF00FFFF00FFFF00FFFF00FF}
      TabOrder = 4
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'Helvetica Neue'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object BtnAlterar: TcxButton
      Left = 7
      Top = 108
      Width = 108
      Height = 42
      Caption = 'Alterar'#13'[F4]'
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
      OnClick = BtnAlterarClick
    end
    object BtnCancelar: TcxButton
      Left = 7
      Top = 58
      Width = 108
      Height = 43
      Caption = 'Cancelar'#13'[F3]'
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
      OnClick = BtnCancelarClick
    end
    object BtnGravar: TcxButton
      Left = 7
      Top = 6
      Width = 108
      Height = 43
      Caption = 'Gravar'#13'[F2]'
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
      OnClick = BtnGravarClick
    end
    object BtnIncluir: TcxButton
      Left = 7
      Top = 6
      Width = 108
      Height = 43
      Caption = 'Incluir'#13'[F1]'
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
      OnClick = BtnIncluirClick
    end
    object cxButton1: TcxButton
      Left = 4
      Top = 265
      Width = 114
      Height = 43
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
      TabOrder = 6
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'HelveticaNeue'
      Font.Style = [fsBold]
      ParentFont = False
      OnClick = cxButton1Click
    end
  end
  object sql_increment: TFDQuery
    Connection = Module.connection
    SQL.Strings = (
      'select max(codigo)+1 as AUTO_INCREMENT from produto')
    Left = 1080
    Top = 712
    object sql_incrementAUTO_INCREMENT: TLargeintField
      AutoGenerateValue = arDefault
      FieldName = 'AUTO_INCREMENT'
      Origin = 'AUTO_INCREMENT'
    end
  end
  object DS_PRODUTO: TDataSource
    DataSet = SQL_PRODUTO
    Left = 368
    Top = 736
  end
  object DS_CSTICMS: TDataSource
    DataSet = SQL_CSTICMS
    Left = 1096
    Top = 784
  end
  object SQL_CSTICMS: TFDQuery
    Connection = Module.connection
    SQL.Strings = (
      'select * from cst_icms'
      'order by CODIGO')
    Left = 1112
    Top = 712
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
    Left = 432
    Top = 704
  end
  object DS_CSTCOFINS: TDataSource
    DataSet = SQL_CSTCOFINS
    Left = 1032
    Top = 816
  end
  object SQL_CSTPIS: TFDQuery
    Connection = Module.connection
    SQL.Strings = (
      'select * from cst_pis order by codigo')
    Left = 1048
    Top = 712
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
    Left = 1008
    Top = 600
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
    Left = 432
    Top = 672
  end
  object SQL_ORIGEM_ICMS: TFDQuery
    Connection = Module.connection
    SQL.Strings = (
      'SELECT * FROM origem_mercadoria'
      'ORDER BY CODIGO')
    Left = 1144
    Top = 616
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
    Left = 368
    Top = 672
  end
  object SQL_LISTA: TFDQuery
    Connection = Module.connection
    SQL.Strings = (
      'Select * from produto'
      'ORDER BY CODIGO')
    Left = 1168
    Top = 784
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
    object SQL_LISTASALDO: TBCDField
      AutoGenerateValue = arDefault
      FieldName = 'SALDO'
      Origin = 'SALDO'
      Precision = 10
    end
    object SQL_LISTAALIQ_ICMS: TBCDField
      AutoGenerateValue = arDefault
      FieldName = 'ALIQ_ICMS'
      Origin = 'ALIQ_ICMS'
      Precision = 10
    end
    object SQL_LISTAALIQ_ICMS_SUBST: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'ALIQ_ICMS_SUBST'
      Origin = 'ALIQ_ICMS_SUBST'
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
    object SQL_LISTAALIQ_IPI: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'ALIQ_IPI'
      Origin = 'ALIQ_IPI'
    end
    object SQL_LISTAENQUADRAMENTO_IPI: TIntegerField
      AutoGenerateValue = arDefault
      FieldName = 'ENQUADRAMENTO_IPI'
      Origin = 'ENQUADRAMENTO_IPI'
    end
    object SQL_LISTACODIGO_LOCALIZACAO: TIntegerField
      AutoGenerateValue = arDefault
      FieldName = 'CODIGO_LOCALIZACAO'
      Origin = 'CODIGO_LOCALIZACAO'
    end
    object SQL_LISTAICMS_CST: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'ICMS_CST'
      Origin = 'ICMS_CST'
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
    object SQL_LISTACODIGO_ORIGEM_MERCADORIA: TIntegerField
      AutoGenerateValue = arDefault
      FieldName = 'CODIGO_ORIGEM_MERCADORIA'
      Origin = 'CODIGO_ORIGEM_MERCADORIA'
    end
    object SQL_LISTACSOSN: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'CSOSN'
      Origin = 'CSOSN'
      Size = 200
    end
    object SQL_LISTANCM: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'NCM'
      Origin = 'NCM'
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
    object SQL_LISTACST_IPI: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'CST_IPI'
      Origin = 'CST_IPI'
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
    object SQL_LISTAREDUCAO_ICMS: TBCDField
      AutoGenerateValue = arDefault
      FieldName = 'REDUCAO_ICMS'
      Origin = 'REDUCAO_ICMS'
      Precision = 10
    end
    object SQL_LISTAREDUCAO_ICMS_ST: TBCDField
      AutoGenerateValue = arDefault
      FieldName = 'REDUCAO_ICMS_ST'
      Origin = 'REDUCAO_ICMS_ST'
      Precision = 10
    end
    object SQL_LISTALUCRO_SUBST_TRIBUTARIA: TBCDField
      AutoGenerateValue = arDefault
      FieldName = 'LUCRO_SUBST_TRIBUTARIA'
      Origin = 'LUCRO_SUBST_TRIBUTARIA'
      Precision = 10
    end
    object SQL_LISTAVALOR_PAUTA_BC_ST: TBCDField
      AutoGenerateValue = arDefault
      FieldName = 'VALOR_PAUTA_BC_ST'
      Origin = 'VALOR_PAUTA_BC_ST'
      Precision = 10
    end
  end
  object SQL_PRODUTO: TFDQuery
    Connection = Module.connection
    SQL.Strings = (
      'select * from produto where codigo = :pcodigo')
    Left = 1176
    Top = 712
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
    object SQL_PRODUTOENQUADRAMENTO_IPI: TIntegerField
      AutoGenerateValue = arDefault
      FieldName = 'ENQUADRAMENTO_IPI'
      Origin = 'ENQUADRAMENTO_IPI'
    end
    object SQL_PRODUTOCODIGO_LOCALIZACAO: TIntegerField
      AutoGenerateValue = arDefault
      FieldName = 'CODIGO_LOCALIZACAO'
      Origin = 'CODIGO_LOCALIZACAO'
    end
    object SQL_PRODUTOICMS_CST: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'ICMS_CST'
      Origin = 'ICMS_CST'
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
      FieldName = 'NCM'
      Origin = 'NCM'
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
    object SQL_PRODUTOALIQ_ICMS: TBCDField
      AutoGenerateValue = arDefault
      FieldName = 'ALIQ_ICMS'
      Origin = 'ALIQ_ICMS'
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
    object SQL_PRODUTOSALDO: TBCDField
      Alignment = taCenter
      AutoGenerateValue = arDefault
      FieldName = 'SALDO'
      Origin = 'SALDO'
      Precision = 10
    end
    object SQL_PRODUTOALIQ_ICMS_SUBST: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'ALIQ_ICMS_SUBST'
      Origin = 'ALIQ_ICMS_SUBST'
    end
    object SQL_PRODUTOALIQ_IPI: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'ALIQ_IPI'
      Origin = 'ALIQ_IPI'
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
    object SQL_PRODUTOCODIGO_ORIGEM_MERCADORIA: TIntegerField
      AutoGenerateValue = arDefault
      FieldName = 'CODIGO_ORIGEM_MERCADORIA'
      Origin = 'CODIGO_ORIGEM_MERCADORIA'
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
    object SQL_PRODUTOCST_IPI: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'CST_IPI'
      Origin = 'CST_IPI'
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
    object SQL_PRODUTOREDUCAO_ICMS: TBCDField
      AutoGenerateValue = arDefault
      FieldName = 'REDUCAO_ICMS'
      Origin = 'REDUCAO_ICMS'
      Precision = 10
    end
    object SQL_PRODUTOREDUCAO_ICMS_ST: TBCDField
      AutoGenerateValue = arDefault
      FieldName = 'REDUCAO_ICMS_ST'
      Origin = 'REDUCAO_ICMS_ST'
      Precision = 10
    end
    object SQL_PRODUTOLUCRO_SUBST_TRIBUTARIA: TBCDField
      AutoGenerateValue = arDefault
      FieldName = 'LUCRO_SUBST_TRIBUTARIA'
      Origin = 'LUCRO_SUBST_TRIBUTARIA'
      Precision = 10
    end
    object SQL_PRODUTOVALOR_PAUTA_BC_ST: TBCDField
      AutoGenerateValue = arDefault
      FieldName = 'VALOR_PAUTA_BC_ST'
      Origin = 'VALOR_PAUTA_BC_ST'
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
    Left = 400
    Top = 704
  end
  object SQL_CSTIPI: TFDQuery
    Connection = Module.connection
    SQL.Strings = (
      'select * from cst_ipi'
      'order by CODIGO')
    Left = 1144
    Top = 712
  end
  object SQL_IPI: TFDQuery
    Connection = Module.connection
    SQL.Strings = (
      'SELECT * FROM tab_codenqipi'
      'ORDER BY CODENQ')
    Left = 1000
    Top = 664
  end
  object DS_IPI: TDataSource
    DataSet = SQL_IPI
    Left = 496
    Top = 672
  end
  object SQL_TIPO_ITEM: TFDQuery
    Connection = Module.connection
    SQL.Strings = (
      'SELECT * FROM PRODUTO_TIPO_ITEM')
    Left = 1080
    Top = 616
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
    Left = 368
    Top = 704
  end
  object SQL_DADOS_ROTINAS: TFDQuery
    Connection = Module.connection
    SQL.Strings = (
      
        'select e.codigo_regime_tributario, ps.* from empresa e,  paramet' +
        'ros_sistema ps')
    Left = 1112
    Top = 584
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
    Left = 464
    Top = 672
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
    Left = 1048
    Top = 616
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
    Left = 400
    Top = 672
  end
  object pop_faixa: TPopupMenu
    OnPopup = pop_faixaPopup
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
      OnClick = RemoverFaixa1Click
    end
  end
  object SQL_NAT_OP: TFDQuery
    Connection = Module.connection
    SQL.Strings = (
      'select id, descricao from natureza_operacao order by id')
    Left = 984
    Top = 608
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
    Left = 1008
    Top = 744
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
    Left = 456
    Top = 736
  end
  object DS_CFOP_NATOP: TDataSource
    DataSet = SQL_CFOP_NATOP
    Left = 1000
    Top = 816
  end
  object sql_ponto_impressao: TFDQuery
    Connection = Module.connection
    SQL.Strings = (
      
        'select id, concat(nome, '#39' ('#39', impressora, '#39') '#39') as nome from pon' +
        'to_impressao')
    Left = 944
    Top = 616
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
    Left = 904
    Top = 632
  end
end
Trocou REFERENCIA_FABRICANTE por PROD_REFERENCIASFABRICA : automaticamente em 16/06/2020 14:04
Trocou INFO_ADICIONAIS por PROD_DETALHES : automaticamente em 16/06/2020 15:06
Trocou FieldName = 'MARCA' por FieldName = 'PROD_MARCA' : automaticamente em 16/06/2020 16:21
Trocou FieldName = 'FAMILIA' por FieldName = 'PROD_CDFAMILIA' : automaticamente em 16/06/2020 17:33
Trocou Origin = 'FAMILIA' por Origin = 'PROD_CDFAMILIA' : automaticamente em 16/06/2020 17:38
Trocou DESCONTO_MAXIMO por PROD_MAXDESC : automaticamente em 16/06/2020 22:23
Trocou DESCONTO_M_VAREJO por PROD_MAXDESC_VAR : automaticamente em 16/06/2020 22:27
Trocou DESCONTO_M_ATACADO por PROD_MAXDESC_ATAC : automaticamente em 16/06/2020 22:31
Trocou DESCONTO_M_DISTRIBUIDOR por PROD_MAXDESC_DIST : automaticamente em 16/06/2020 22:33
Trocou PAGAR_COMISSAO por PROD_COMISSAO : automaticamente em 16/06/2020 22:37
Trocou COMISSAO_BALCAO por PROD_COMISSAO_LOJA : automaticamente em 16/06/2020 22:41
Trocou BALCAO_COMISSAO_VAREJO por PROD_COMISSAO_VAR : automaticamente em 16/06/2020 22:43
Trocou BALCAO_COMISSAO_ATACADO por PROD_COMISSAO_ATAC : automaticamente em 16/06/2020 22:46
Trocou BALCAO_COMISSAO_DISTRIBUIDOR por PROD_COMISSAO_DIST : automaticamente em 16/06/2020 22:49
Trocou ESTOQUE_MINIMO por PROD_ESTOQMIN : automaticamente em 16/06/2020 22:53
Trocou COMISSAO_EXTERNA por PROD_COMISSAO_EXT : automaticamente em 17/06/2020 05:46
Trocou EXTERNA_COMISSAO_VAREJO por PROD_COMISSAO_EXT_VAR : automaticamente em 17/06/2020 05:52
Trocou EXTERNA_COMISSAO_ATACADO por PROD_COMISSAO_EXT_ATAC : automaticamente em 17/06/2020 05:55
Trocou EXTERNA_COMISSAO_DISTRIBUIDOR por PROD_COMISSAO_EXT_DIST : automaticamente em 17/06/2020 06:30
Trocou PRECO_FINAL_VAREJO por PROD_PRECO_VAR : automaticamente em 17/06/2020 06:55
Trocou PRECO_FINAL_ATACADO por PROD_PRECO_ATAC : automaticamente em 17/06/2020 06:59
Trocou PRECO_FINAL_DISTRIBUIDOR por PROD_PRECO_DIST : automaticamente em 17/06/2020 07:02
Trocou PROMO_VAREJO por PROD_PROMOCAO_VAR : automaticamente em 17/06/2020 08:40
Trocou PROMO_ATACADO por PROD_PROMOCAO_ATAC : automaticamente em 17/06/2020 08:44
Trocou PROMO_DISTRIBUIDOR por PROD_PROMOCAO_DIST : automaticamente em 17/06/2020 08:53
