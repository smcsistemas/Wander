object frm_otica: Tfrm_otica
  Left = 0
  Top = 0
  BorderIcons = [biSystemMenu]
  BorderStyle = bsSingle
  Caption = 'Dados '#211'tica'
  ClientHeight = 524
  ClientWidth = 947
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clGradientActiveCaption
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  Position = poMainFormCenter
  OnClose = FormClose
  PixelsPerInch = 96
  TextHeight = 13
  object grid_otica: TcxGrid
    Left = 0
    Top = 240
    Width = 947
    Height = 284
    Align = alBottom
    TabOrder = 0
    LevelTabs.Style = 2
    LookAndFeel.Kind = lfFlat
    LookAndFeel.NativeStyle = False
    LookAndFeel.SkinName = 'Office2013LightGray'
    object grid_oticaDBBandedTableView1: TcxGridDBBandedTableView
      Navigator.Buttons.CustomButtons = <>
      DataController.Summary.DefaultGroupSummaryItems = <>
      DataController.Summary.FooterSummaryItems = <>
      DataController.Summary.SummaryGroups = <>
      OptionsCustomize.BandMoving = False
      OptionsCustomize.BandSizing = False
      OptionsData.CancelOnExit = False
      OptionsData.Deleting = False
      OptionsData.DeletingConfirmation = False
      OptionsData.Editing = False
      OptionsData.Inserting = False
      OptionsView.GroupByBox = False
      Bands = <
        item
          AlternateCaption = 'LONGE'
          Caption = 'LONGE'
          Options.HoldOwnColumnsOnly = True
          Width = 462
        end
        item
          AlternateCaption = 'PERTO'
          Caption = 'PERTO'
          Width = 462
        end
        item
          AlternateCaption = 'OLHO ESQUERDO_L'
          Caption = 'OLHO ESQUERDO'
          Position.BandIndex = 0
          Position.ColIndex = 1
          Width = 215
        end
        item
          AlternateCaption = 'OLHO DIREITO_L'
          Caption = 'OLHO DIREITO'
          Position.BandIndex = 0
          Position.ColIndex = 0
          Width = 215
        end
        item
          Caption = 'OLHO ESQUERDO'
          Position.BandIndex = 1
          Position.ColIndex = 1
          Width = 215
        end
        item
          Caption = 'OLHO DIREITO'
          Position.BandIndex = 1
          Position.ColIndex = 0
          Width = 215
        end
        item
          Caption = #211'CULOS'
          Width = 600
        end>
      object grid_oticaDBBandedTableView1DATA_CADASTRO: TcxGridDBBandedColumn
        Caption = 'DATA'
        DataBinding.FieldName = 'DATA_CADASTRO'
        Visible = False
        DateTimeGrouping = dtgByDate
        GroupIndex = 0
        HeaderAlignmentHorz = taCenter
        HeaderGlyphAlignmentHorz = taCenter
        Position.BandIndex = -1
        Position.ColIndex = -1
        Position.RowIndex = -1
      end
      object grid_oticaDBBandedTableView1L_OE_ESFERA: TcxGridDBBandedColumn
        Caption = 'ESFERA'
        DataBinding.FieldName = 'L_OE_ESFERA'
        HeaderAlignmentHorz = taCenter
        HeaderGlyphAlignmentHorz = taCenter
        Options.Editing = False
        Options.FilteringAddValueItems = False
        Options.FilteringFilteredItemsList = False
        Options.FilteringMRUItemsList = False
        Options.FilteringPopupMultiSelect = False
        Options.FilteringWithFindPanel = False
        Options.IgnoreTimeForFiltering = False
        Options.IncSearch = False
        Options.ShowEditButtons = isebNever
        Options.GroupFooters = False
        Options.Grouping = False
        Options.Moving = False
        VisibleForEditForm = bFalse
        Width = 43
        Position.BandIndex = 2
        Position.ColIndex = 0
        Position.RowIndex = 0
      end
      object grid_oticaDBBandedTableView1L_OE_CILINDRO: TcxGridDBBandedColumn
        Caption = 'CILIN.'
        DataBinding.FieldName = 'L_OE_CILINDRO'
        HeaderAlignmentHorz = taCenter
        HeaderGlyphAlignmentHorz = taCenter
        Options.Editing = False
        Options.FilteringAddValueItems = False
        Options.FilteringFilteredItemsList = False
        Options.FilteringMRUItemsList = False
        Options.FilteringPopupMultiSelect = False
        Options.FilteringWithFindPanel = False
        Options.IgnoreTimeForFiltering = False
        Options.IncSearch = False
        Options.ShowEditButtons = isebNever
        Options.GroupFooters = False
        Options.Grouping = False
        Options.Moving = False
        VisibleForEditForm = bFalse
        Width = 43
        Position.BandIndex = 2
        Position.ColIndex = 1
        Position.RowIndex = 0
      end
      object grid_oticaDBBandedTableView1L_OE_EIXO: TcxGridDBBandedColumn
        Caption = 'EIXO'
        DataBinding.FieldName = 'L_OE_EIXO'
        HeaderAlignmentHorz = taCenter
        HeaderGlyphAlignmentHorz = taCenter
        Options.Editing = False
        Options.FilteringAddValueItems = False
        Options.FilteringFilteredItemsList = False
        Options.FilteringMRUItemsList = False
        Options.FilteringPopupMultiSelect = False
        Options.FilteringWithFindPanel = False
        Options.IgnoreTimeForFiltering = False
        Options.IncSearch = False
        Options.ShowEditButtons = isebNever
        Options.GroupFooters = False
        Options.Grouping = False
        Options.Moving = False
        VisibleForEditForm = bFalse
        Width = 43
        Position.BandIndex = 2
        Position.ColIndex = 2
        Position.RowIndex = 0
      end
      object grid_oticaDBBandedTableView1L_OE_DISTANCIA_PUPILAR: TcxGridDBBandedColumn
        Caption = 'D.P.'
        DataBinding.FieldName = 'L_OE_DISTANCIA_PUPILAR'
        HeaderAlignmentHorz = taCenter
        HeaderGlyphAlignmentHorz = taCenter
        Options.Editing = False
        Options.FilteringAddValueItems = False
        Options.FilteringFilteredItemsList = False
        Options.FilteringMRUItemsList = False
        Options.FilteringPopupMultiSelect = False
        Options.FilteringWithFindPanel = False
        Options.IgnoreTimeForFiltering = False
        Options.IncSearch = False
        Options.ShowEditButtons = isebNever
        Options.GroupFooters = False
        Options.Grouping = False
        Options.Moving = False
        VisibleForEditForm = bFalse
        Width = 43
        Position.BandIndex = 2
        Position.ColIndex = 3
        Position.RowIndex = 0
      end
      object grid_oticaDBBandedTableView1L_OD_ESFERA: TcxGridDBBandedColumn
        Caption = 'ESFERA'
        DataBinding.FieldName = 'L_OD_ESFERA'
        HeaderAlignmentHorz = taCenter
        HeaderGlyphAlignmentHorz = taCenter
        Options.Editing = False
        Options.FilteringAddValueItems = False
        Options.FilteringFilteredItemsList = False
        Options.FilteringMRUItemsList = False
        Options.FilteringPopupMultiSelect = False
        Options.FilteringWithFindPanel = False
        Options.IgnoreTimeForFiltering = False
        Options.IncSearch = False
        Options.ShowEditButtons = isebNever
        Options.GroupFooters = False
        Options.Grouping = False
        Options.Moving = False
        VisibleForEditForm = bFalse
        Width = 43
        Position.BandIndex = 3
        Position.ColIndex = 0
        Position.RowIndex = 0
      end
      object grid_oticaDBBandedTableView1L_OD_CILINDRO: TcxGridDBBandedColumn
        Caption = 'CILIN.'
        DataBinding.FieldName = 'L_OD_CILINDRO'
        HeaderAlignmentHorz = taCenter
        HeaderGlyphAlignmentHorz = taCenter
        Options.Editing = False
        Options.FilteringAddValueItems = False
        Options.FilteringFilteredItemsList = False
        Options.FilteringMRUItemsList = False
        Options.FilteringPopupMultiSelect = False
        Options.FilteringWithFindPanel = False
        Options.IgnoreTimeForFiltering = False
        Options.IncSearch = False
        Options.ShowEditButtons = isebNever
        Options.GroupFooters = False
        Options.Grouping = False
        Options.Moving = False
        VisibleForEditForm = bFalse
        Width = 43
        Position.BandIndex = 3
        Position.ColIndex = 1
        Position.RowIndex = 0
      end
      object grid_oticaDBBandedTableView1L_OD_EIXO: TcxGridDBBandedColumn
        Caption = 'EIXO'
        DataBinding.FieldName = 'L_OD_EIXO'
        HeaderAlignmentHorz = taCenter
        HeaderGlyphAlignmentHorz = taCenter
        Options.Editing = False
        Options.FilteringAddValueItems = False
        Options.FilteringFilteredItemsList = False
        Options.FilteringMRUItemsList = False
        Options.FilteringPopupMultiSelect = False
        Options.FilteringWithFindPanel = False
        Options.IgnoreTimeForFiltering = False
        Options.IncSearch = False
        Options.ShowEditButtons = isebNever
        Options.GroupFooters = False
        Options.Grouping = False
        Options.Moving = False
        VisibleForEditForm = bFalse
        Width = 43
        Position.BandIndex = 3
        Position.ColIndex = 2
        Position.RowIndex = 0
      end
      object grid_oticaDBBandedTableView1L_OD_DISTANCIA_PUPILAR: TcxGridDBBandedColumn
        Caption = 'D.P.'
        DataBinding.FieldName = 'L_OD_DISTANCIA_PUPILAR'
        HeaderAlignmentHorz = taCenter
        HeaderGlyphAlignmentHorz = taCenter
        Options.Editing = False
        Options.FilteringAddValueItems = False
        Options.FilteringFilteredItemsList = False
        Options.FilteringMRUItemsList = False
        Options.FilteringPopupMultiSelect = False
        Options.FilteringWithFindPanel = False
        Options.IgnoreTimeForFiltering = False
        Options.IncSearch = False
        Options.ShowEditButtons = isebNever
        Options.GroupFooters = False
        Options.Grouping = False
        Options.Moving = False
        VisibleForEditForm = bFalse
        Width = 43
        Position.BandIndex = 3
        Position.ColIndex = 3
        Position.RowIndex = 0
      end
      object grid_oticaDBBandedTableView1P_OE_ESFERA: TcxGridDBBandedColumn
        Caption = 'ESFERA'
        DataBinding.FieldName = 'P_OE_ESFERA'
        HeaderAlignmentHorz = taCenter
        HeaderGlyphAlignmentHorz = taCenter
        Options.Editing = False
        Options.FilteringAddValueItems = False
        Options.FilteringFilteredItemsList = False
        Options.FilteringMRUItemsList = False
        Options.FilteringPopupMultiSelect = False
        Options.FilteringWithFindPanel = False
        Options.IgnoreTimeForFiltering = False
        Options.IncSearch = False
        Options.ShowEditButtons = isebNever
        Options.GroupFooters = False
        Options.Grouping = False
        Options.Moving = False
        VisibleForEditForm = bFalse
        Width = 43
        Position.BandIndex = 4
        Position.ColIndex = 0
        Position.RowIndex = 0
      end
      object grid_oticaDBBandedTableView1P_OE_CILINDRO: TcxGridDBBandedColumn
        Caption = 'CILIN.'
        DataBinding.FieldName = 'P_OE_CILINDRO'
        HeaderAlignmentHorz = taCenter
        HeaderGlyphAlignmentHorz = taCenter
        Options.Editing = False
        Options.FilteringAddValueItems = False
        Options.FilteringFilteredItemsList = False
        Options.FilteringMRUItemsList = False
        Options.FilteringPopupMultiSelect = False
        Options.FilteringWithFindPanel = False
        Options.IgnoreTimeForFiltering = False
        Options.IncSearch = False
        Options.ShowEditButtons = isebNever
        Options.GroupFooters = False
        Options.Grouping = False
        Options.Moving = False
        VisibleForEditForm = bFalse
        Width = 43
        Position.BandIndex = 4
        Position.ColIndex = 1
        Position.RowIndex = 0
      end
      object grid_oticaDBBandedTableView1P_OE_EIXO: TcxGridDBBandedColumn
        Caption = 'EIXO'
        DataBinding.FieldName = 'P_OE_EIXO'
        HeaderAlignmentHorz = taCenter
        HeaderGlyphAlignmentHorz = taCenter
        Options.Editing = False
        Options.FilteringAddValueItems = False
        Options.FilteringFilteredItemsList = False
        Options.FilteringMRUItemsList = False
        Options.FilteringPopupMultiSelect = False
        Options.FilteringWithFindPanel = False
        Options.IgnoreTimeForFiltering = False
        Options.IncSearch = False
        Options.ShowEditButtons = isebNever
        Options.GroupFooters = False
        Options.Grouping = False
        Options.Moving = False
        VisibleForEditForm = bFalse
        Width = 43
        Position.BandIndex = 4
        Position.ColIndex = 2
        Position.RowIndex = 0
      end
      object grid_oticaDBBandedTableView1P_OE_DISTANCIA_PUPILAR: TcxGridDBBandedColumn
        Caption = 'D.P.'
        DataBinding.FieldName = 'P_OE_DISTANCIA_PUPILAR'
        HeaderAlignmentHorz = taCenter
        HeaderGlyphAlignmentHorz = taCenter
        Options.Editing = False
        Options.FilteringAddValueItems = False
        Options.FilteringFilteredItemsList = False
        Options.FilteringMRUItemsList = False
        Options.FilteringPopupMultiSelect = False
        Options.FilteringWithFindPanel = False
        Options.IgnoreTimeForFiltering = False
        Options.IncSearch = False
        Options.ShowEditButtons = isebNever
        Options.GroupFooters = False
        Options.Grouping = False
        Options.Moving = False
        VisibleForEditForm = bFalse
        Width = 43
        Position.BandIndex = 4
        Position.ColIndex = 3
        Position.RowIndex = 0
      end
      object grid_oticaDBBandedTableView1P_OD_ESFERA: TcxGridDBBandedColumn
        Caption = 'ESFERA'
        DataBinding.FieldName = 'P_OD_ESFERA'
        HeaderAlignmentHorz = taCenter
        HeaderGlyphAlignmentHorz = taCenter
        Options.Editing = False
        Options.FilteringAddValueItems = False
        Options.FilteringFilteredItemsList = False
        Options.FilteringMRUItemsList = False
        Options.FilteringPopupMultiSelect = False
        Options.FilteringWithFindPanel = False
        Options.IgnoreTimeForFiltering = False
        Options.IncSearch = False
        Options.ShowEditButtons = isebNever
        Options.GroupFooters = False
        Options.Grouping = False
        Options.Moving = False
        VisibleForEditForm = bFalse
        Width = 43
        Position.BandIndex = 5
        Position.ColIndex = 0
        Position.RowIndex = 0
      end
      object grid_oticaDBBandedTableView1P_OD_CILINDRO: TcxGridDBBandedColumn
        Caption = 'CILIN.'
        DataBinding.FieldName = 'P_OD_CILINDRO'
        HeaderAlignmentHorz = taCenter
        HeaderGlyphAlignmentHorz = taCenter
        Options.Editing = False
        Options.FilteringAddValueItems = False
        Options.FilteringFilteredItemsList = False
        Options.FilteringMRUItemsList = False
        Options.FilteringPopupMultiSelect = False
        Options.FilteringWithFindPanel = False
        Options.IgnoreTimeForFiltering = False
        Options.IncSearch = False
        Options.ShowEditButtons = isebNever
        Options.GroupFooters = False
        Options.Grouping = False
        Options.Moving = False
        VisibleForEditForm = bFalse
        Width = 43
        Position.BandIndex = 5
        Position.ColIndex = 1
        Position.RowIndex = 0
      end
      object grid_oticaDBBandedTableView1P_OD_EIXO: TcxGridDBBandedColumn
        Caption = 'EIXO'
        DataBinding.FieldName = 'P_OD_EIXO'
        HeaderAlignmentHorz = taCenter
        HeaderGlyphAlignmentHorz = taCenter
        Options.Editing = False
        Options.FilteringAddValueItems = False
        Options.FilteringFilteredItemsList = False
        Options.FilteringMRUItemsList = False
        Options.FilteringPopupMultiSelect = False
        Options.FilteringWithFindPanel = False
        Options.IgnoreTimeForFiltering = False
        Options.IncSearch = False
        Options.ShowEditButtons = isebNever
        Options.GroupFooters = False
        Options.Grouping = False
        Options.Moving = False
        VisibleForEditForm = bFalse
        Width = 43
        Position.BandIndex = 5
        Position.ColIndex = 2
        Position.RowIndex = 0
      end
      object grid_oticaDBBandedTableView1P_OD_DISTANCIA_PUPILAR: TcxGridDBBandedColumn
        Caption = 'D.P.'
        DataBinding.FieldName = 'P_OD_DISTANCIA_PUPILAR'
        HeaderAlignmentHorz = taCenter
        HeaderGlyphAlignmentHorz = taCenter
        Options.Editing = False
        Options.FilteringAddValueItems = False
        Options.FilteringFilteredItemsList = False
        Options.FilteringMRUItemsList = False
        Options.FilteringPopupMultiSelect = False
        Options.FilteringWithFindPanel = False
        Options.IgnoreTimeForFiltering = False
        Options.IncSearch = False
        Options.ShowEditButtons = isebNever
        Options.GroupFooters = False
        Options.Grouping = False
        Options.Moving = False
        VisibleForEditForm = bFalse
        Width = 43
        Position.BandIndex = 5
        Position.ColIndex = 3
        Position.RowIndex = 0
      end
      object grid_oticaDBBandedTableView1ARMACAO_SOLAR: TcxGridDBBandedColumn
        Caption = #211'CULOS SOLAR'
        DataBinding.FieldName = 'ARMACAO_SOLAR'
        HeaderAlignmentHorz = taCenter
        Options.Editing = False
        Options.FilteringAddValueItems = False
        Options.FilteringFilteredItemsList = False
        Options.FilteringMRUItemsList = False
        Options.FilteringPopupMultiSelect = False
        Options.FilteringWithFindPanel = False
        Options.IgnoreTimeForFiltering = False
        Options.IncSearch = False
        Options.GroupFooters = False
        Options.Grouping = False
        Options.Moving = False
        VisibleForEditForm = bFalse
        Width = 120
        Position.BandIndex = 6
        Position.ColIndex = 4
        Position.RowIndex = 0
      end
      object grid_oticaDBBandedTableView1ARMACAO_GRAU: TcxGridDBBandedColumn
        Caption = 'ARMA'#199#195'O GRAU'
        DataBinding.FieldName = 'ARMACAO_GRAU'
        HeaderAlignmentHorz = taCenter
        Options.Editing = False
        Options.FilteringAddValueItems = False
        Options.FilteringFilteredItemsList = False
        Options.FilteringMRUItemsList = False
        Options.FilteringPopupMultiSelect = False
        Options.FilteringWithFindPanel = False
        Options.IgnoreTimeForFiltering = False
        Options.IncSearch = False
        Options.GroupFooters = False
        Options.Grouping = False
        Options.Moving = False
        VisibleForEditForm = bFalse
        Width = 120
        Position.BandIndex = 6
        Position.ColIndex = 2
        Position.RowIndex = 0
      end
      object grid_oticaDBBandedTableView1LENTE_GRAU: TcxGridDBBandedColumn
        Caption = 'LENTE GRAU'
        DataBinding.FieldName = 'LENTE_GRAU'
        HeaderAlignmentHorz = taCenter
        Options.Editing = False
        Options.FilteringAddValueItems = False
        Options.FilteringFilteredItemsList = False
        Options.FilteringMRUItemsList = False
        Options.FilteringPopupMultiSelect = False
        Options.FilteringWithFindPanel = False
        Options.IgnoreTimeForFiltering = False
        Options.IncSearch = False
        Options.GroupFooters = False
        Options.Grouping = False
        Options.Moving = False
        VisibleForEditForm = bFalse
        Width = 120
        Position.BandIndex = 6
        Position.ColIndex = 1
        Position.RowIndex = 0
      end
      object grid_oticaDBBandedTableView1LENTE_SOLAR: TcxGridDBBandedColumn
        Caption = 'LENTE SOLAR'
        DataBinding.FieldName = 'LENTE_SOLAR'
        HeaderAlignmentHorz = taCenter
        Options.Editing = False
        Options.FilteringAddValueItems = False
        Options.FilteringFilteredItemsList = False
        Options.FilteringMRUItemsList = False
        Options.FilteringPopupMultiSelect = False
        Options.FilteringWithFindPanel = False
        Options.IgnoreTimeForFiltering = False
        Options.IncSearch = False
        Options.GroupFooters = False
        Options.Grouping = False
        Options.Moving = False
        VisibleForEditForm = bFalse
        Width = 120
        Position.BandIndex = 6
        Position.ColIndex = 3
        Position.RowIndex = 0
      end
      object grid_oticaDBBandedTableView1ADICAO: TcxGridDBBandedColumn
        Caption = 'ADI'#199#195'O'
        DataBinding.FieldName = 'ADICAO'
        HeaderAlignmentHorz = taCenter
        Options.Editing = False
        Options.FilteringAddValueItems = False
        Options.FilteringFilteredItemsList = False
        Options.FilteringMRUItemsList = False
        Options.FilteringPopupMultiSelect = False
        Options.FilteringWithFindPanel = False
        Options.IgnoreTimeForFiltering = False
        Options.IncSearch = False
        Options.GroupFooters = False
        Options.Grouping = False
        Options.Moving = False
        VisibleForEditForm = bFalse
        Width = 120
        Position.BandIndex = 6
        Position.ColIndex = 0
        Position.RowIndex = 0
      end
    end
    object grid_oticaLevel1: TcxGridLevel
      Caption = 'DATA'
      GridView = grid_oticaDBBandedTableView1
    end
  end
  object GroupBox3: TGroupBox
    Left = 0
    Top = 0
    Width = 947
    Height = 240
    Align = alTop
    Caption = '  Receita  '
    Color = clBtnFace
    Font.Charset = ANSI_CHARSET
    Font.Color = clWindowText
    Font.Height = -13
    Font.Name = 'Tahoma'
    Font.Style = [fsBold]
    ParentBackground = False
    ParentColor = False
    ParentFont = False
    TabOrder = 1
    object Label13: TLabel
      Left = 147
      Top = 28
      Width = 47
      Height = 16
      Alignment = taCenter
      Caption = 'ESFERA'
    end
    object Label15: TLabel
      Left = 219
      Top = 28
      Width = 60
      Height = 16
      Alignment = taCenter
      Caption = 'CIL'#205'NDRO'
    end
    object Label16: TLabel
      Left = 306
      Top = 28
      Width = 30
      Height = 16
      Alignment = taCenter
      Caption = 'EIXO'
    end
    object Label18: TLabel
      Left = 365
      Top = 20
      Width = 70
      Height = 32
      Alignment = taCenter
      Caption = 'DIST'#194'NCIA'#13#10'PUPILAR'
    end
    object Label22: TLabel
      Left = 37
      Top = 70
      Width = 89
      Height = 16
      Alignment = taCenter
      Caption = 'OLHO DIREITO'
    end
    object Label23: TLabel
      Left = 22
      Top = 99
      Width = 104
      Height = 16
      Alignment = taCenter
      Caption = 'OLHO ESQUERDO'
    end
    object Shape1: TShape
      Left = 25
      Top = 58
      Width = 417
      Height = 1
      Brush.Color = 10485760
      Pen.Color = clGray
    end
    object Label28: TLabel
      Left = 25
      Top = 27
      Width = 55
      Height = 19
      Alignment = taCenter
      Caption = 'LONGE'
      Font.Charset = ANSI_CHARSET
      Font.Color = clRed
      Font.Height = -16
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object Label36: TLabel
      Left = 330
      Top = 152
      Width = 72
      Height = 16
      Alignment = taCenter
      Caption = 'LENTE GRAU'
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentFont = False
    end
    object Label41: TLabel
      Left = 20
      Top = 152
      Width = 100
      Height = 16
      Alignment = taCenter
      Caption = 'ARMA'#199#195'O GRAU:'
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentFont = False
    end
    object Label42: TLabel
      Left = 43
      Top = 202
      Width = 84
      Height = 16
      Alignment = taCenter
      Caption = 'LENTE SOLAR:'
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentFont = False
    end
    object Label43: TLabel
      Left = 309
      Top = 202
      Width = 91
      Height = 16
      Alignment = taCenter
      Caption = #211'CULOS SOLAR'
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentFont = False
    end
    object Label52: TLabel
      Left = 586
      Top = 152
      Width = 45
      Height = 16
      Alignment = taCenter
      Caption = 'ADI'#199#195'O'
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentFont = False
    end
    object Label26: TLabel
      Left = 522
      Top = 99
      Width = 104
      Height = 16
      Alignment = taCenter
      Caption = 'OLHO ESQUERDO'
    end
    object Label24: TLabel
      Left = 537
      Top = 70
      Width = 89
      Height = 16
      Alignment = taCenter
      Caption = 'OLHO DIREITO'
    end
    object Shape2: TShape
      Left = 521
      Top = 58
      Width = 417
      Height = 1
      Brush.Color = clBlue
      Pen.Color = clGray
    end
    object Label35: TLabel
      Left = 521
      Top = 27
      Width = 56
      Height = 19
      Alignment = taCenter
      Caption = 'PERTO'
      Font.Charset = ANSI_CHARSET
      Font.Color = clRed
      Font.Height = -16
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object Shape3: TShape
      Left = 25
      Top = 136
      Width = 913
      Height = 1
      Brush.Color = clBlue
      Pen.Color = clGray
    end
    object Label1: TLabel
      Left = 862
      Top = 20
      Width = 70
      Height = 32
      Alignment = taCenter
      Caption = 'DIST'#194'NCIA'#13#10'PUPILAR'
    end
    object Label2: TLabel
      Left = 806
      Top = 28
      Width = 30
      Height = 16
      Alignment = taCenter
      Caption = 'EIXO'
    end
    object Label3: TLabel
      Left = 715
      Top = 28
      Width = 60
      Height = 16
      Alignment = taCenter
      Caption = 'CIL'#205'NDRO'
    end
    object Label4: TLabel
      Left = 646
      Top = 28
      Width = 47
      Height = 16
      Alignment = taCenter
      Caption = 'ESFERA'
    end
    object Label5: TLabel
      Left = 586
      Top = 201
      Width = 86
      Height = 16
      Alignment = taCenter
      Caption = 'DATA RECEITA'
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentFont = False
    end
    object L_OE_ES: TcxTextEdit
      Left = 137
      Top = 97
      ParentFont = False
      Style.Font.Charset = ANSI_CHARSET
      Style.Font.Color = clWindowText
      Style.Font.Height = -11
      Style.Font.Name = 'Tahoma'
      Style.Font.Style = [fsBold]
      Style.IsFontAssigned = True
      TabOrder = 5
      Width = 70
    end
    object L_OE_C: TcxTextEdit
      Left = 213
      Top = 97
      ParentFont = False
      Style.Font.Charset = ANSI_CHARSET
      Style.Font.Color = clWindowText
      Style.Font.Height = -11
      Style.Font.Name = 'Tahoma'
      Style.Font.Style = [fsBold]
      Style.IsFontAssigned = True
      TabOrder = 6
      Width = 70
    end
    object L_OE_EX: TcxTextEdit
      Left = 289
      Top = 97
      ParentFont = False
      Style.Font.Charset = ANSI_CHARSET
      Style.Font.Color = clWindowText
      Style.Font.Height = -11
      Style.Font.Name = 'Tahoma'
      Style.Font.Style = [fsBold]
      Style.IsFontAssigned = True
      TabOrder = 7
      Width = 70
    end
    object L_OE_DP: TcxTextEdit
      Left = 365
      Top = 97
      ParentFont = False
      Style.Font.Charset = ANSI_CHARSET
      Style.Font.Color = clWindowText
      Style.Font.Height = -11
      Style.Font.Name = 'Tahoma'
      Style.Font.Style = [fsBold]
      Style.IsFontAssigned = True
      TabOrder = 8
      Width = 70
    end
    object L_OD_ES: TcxTextEdit
      Left = 137
      Top = 68
      ParentFont = False
      Style.Font.Charset = ANSI_CHARSET
      Style.Font.Color = clWindowText
      Style.Font.Height = -11
      Style.Font.Name = 'Tahoma'
      Style.Font.Style = [fsBold]
      Style.IsFontAssigned = True
      TabOrder = 1
      Width = 70
    end
    object L_OD_C: TcxTextEdit
      Left = 213
      Top = 68
      ParentFont = False
      Style.Font.Charset = ANSI_CHARSET
      Style.Font.Color = clWindowText
      Style.Font.Height = -11
      Style.Font.Name = 'Tahoma'
      Style.Font.Style = [fsBold]
      Style.IsFontAssigned = True
      TabOrder = 2
      Width = 70
    end
    object L_OD_EX: TcxTextEdit
      Left = 289
      Top = 68
      ParentFont = False
      Style.Font.Charset = ANSI_CHARSET
      Style.Font.Color = clWindowText
      Style.Font.Height = -11
      Style.Font.Name = 'Tahoma'
      Style.Font.Style = [fsBold]
      Style.IsFontAssigned = True
      TabOrder = 3
      Width = 70
    end
    object L_OD_DP: TcxTextEdit
      Left = 365
      Top = 68
      ParentFont = False
      Style.Font.Charset = ANSI_CHARSET
      Style.Font.Color = clWindowText
      Style.Font.Height = -11
      Style.Font.Name = 'Tahoma'
      Style.Font.Style = [fsBold]
      Style.IsFontAssigned = True
      TabOrder = 4
      Width = 70
    end
    object btn_cad: TcxButton
      Left = 845
      Top = 152
      Width = 84
      Height = 23
      Caption = 'Gravar'
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
      TabOrder = 17
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -12
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object ADICAO: TcxTextEdit
      Left = 647
      Top = 152
      ParentFont = False
      Style.Font.Charset = ANSI_CHARSET
      Style.Font.Color = clWindowText
      Style.Font.Height = -11
      Style.Font.Name = 'Tahoma'
      Style.Font.Style = [fsBold]
      Style.IsFontAssigned = True
      TabOrder = 0
      Width = 141
    end
    object P_OE_DP: TcxTextEdit
      Left = 862
      Top = 97
      ParentFont = False
      Style.Font.Charset = ANSI_CHARSET
      Style.Font.Color = clWindowText
      Style.Font.Height = -11
      Style.Font.Name = 'Tahoma'
      Style.Font.Style = [fsBold]
      Style.IsFontAssigned = True
      TabOrder = 16
      Width = 70
    end
    object P_OD_DP: TcxTextEdit
      Left = 862
      Top = 68
      ParentFont = False
      Style.Font.Charset = ANSI_CHARSET
      Style.Font.Color = clWindowText
      Style.Font.Height = -11
      Style.Font.Name = 'Tahoma'
      Style.Font.Style = [fsBold]
      Style.IsFontAssigned = True
      TabOrder = 12
      Width = 70
    end
    object P_OD_EX: TcxTextEdit
      Left = 786
      Top = 68
      ParentFont = False
      Style.Font.Charset = ANSI_CHARSET
      Style.Font.Color = clWindowText
      Style.Font.Height = -11
      Style.Font.Name = 'Tahoma'
      Style.Font.Style = [fsBold]
      Style.IsFontAssigned = True
      TabOrder = 11
      Width = 70
    end
    object P_OE_EX: TcxTextEdit
      Left = 786
      Top = 97
      ParentFont = False
      Style.Font.Charset = ANSI_CHARSET
      Style.Font.Color = clWindowText
      Style.Font.Height = -11
      Style.Font.Name = 'Tahoma'
      Style.Font.Style = [fsBold]
      Style.IsFontAssigned = True
      TabOrder = 15
      Width = 70
    end
    object P_OE_C: TcxTextEdit
      Left = 710
      Top = 97
      ParentFont = False
      Style.Font.Charset = ANSI_CHARSET
      Style.Font.Color = clWindowText
      Style.Font.Height = -11
      Style.Font.Name = 'Tahoma'
      Style.Font.Style = [fsBold]
      Style.IsFontAssigned = True
      TabOrder = 14
      Width = 70
    end
    object P_OD_C: TcxTextEdit
      Left = 710
      Top = 68
      ParentFont = False
      Style.Font.Charset = ANSI_CHARSET
      Style.Font.Color = clWindowText
      Style.Font.Height = -11
      Style.Font.Name = 'Tahoma'
      Style.Font.Style = [fsBold]
      Style.IsFontAssigned = True
      TabOrder = 10
      Width = 70
    end
    object P_OD_ES: TcxTextEdit
      Left = 634
      Top = 68
      ParentFont = False
      Style.Font.Charset = ANSI_CHARSET
      Style.Font.Color = clWindowText
      Style.Font.Height = -11
      Style.Font.Name = 'Tahoma'
      Style.Font.Style = [fsBold]
      Style.IsFontAssigned = True
      TabOrder = 9
      Width = 70
    end
    object P_OE_ES: TcxTextEdit
      Left = 634
      Top = 97
      ParentFont = False
      Style.Font.Charset = ANSI_CHARSET
      Style.Font.Color = clWindowText
      Style.Font.Height = -11
      Style.Font.Name = 'Tahoma'
      Style.Font.Style = [fsBold]
      Style.IsFontAssigned = True
      TabOrder = 13
      Width = 70
    end
    object cxTextEdit3: TcxTextEdit
      Left = 137
      Top = 200
      ParentFont = False
      Style.Font.Charset = ANSI_CHARSET
      Style.Font.Color = clWindowText
      Style.Font.Height = -11
      Style.Font.Name = 'Tahoma'
      Style.Font.Style = [fsBold]
      Style.IsFontAssigned = True
      TabOrder = 18
      Width = 142
    end
    object cxTextEdit4: TcxTextEdit
      Left = 416
      Top = 200
      ParentFont = False
      Style.Font.Charset = ANSI_CHARSET
      Style.Font.Color = clWindowText
      Style.Font.Height = -11
      Style.Font.Name = 'Tahoma'
      Style.Font.Style = [fsBold]
      Style.IsFontAssigned = True
      TabOrder = 19
      Width = 141
    end
    object cxDateEdit1: TcxDateEdit
      Left = 689
      Top = 198
      ParentFont = False
      Style.Font.Charset = ANSI_CHARSET
      Style.Font.Color = clWindowText
      Style.Font.Height = -11
      Style.Font.Name = 'Tahoma'
      Style.Font.Style = [fsBold]
      Style.IsFontAssigned = True
      TabOrder = 20
      Width = 99
    end
    object cxTextEdit1: TcxTextEdit
      Left = 416
      Top = 152
      ParentFont = False
      Style.Font.Charset = ANSI_CHARSET
      Style.Font.Color = clWindowText
      Style.Font.Height = -11
      Style.Font.Name = 'Tahoma'
      Style.Font.Style = [fsBold]
      Style.IsFontAssigned = True
      TabOrder = 21
      Width = 141
    end
    object cxTextEdit2: TcxTextEdit
      Left = 137
      Top = 152
      ParentFont = False
      Style.Font.Charset = ANSI_CHARSET
      Style.Font.Color = clWindowText
      Style.Font.Height = -11
      Style.Font.Name = 'Tahoma'
      Style.Font.Style = [fsBold]
      Style.IsFontAssigned = True
      TabOrder = 22
      Width = 141
    end
    object cxButton24: TcxButton
      Left = 845
      Top = 178
      Width = 84
      Height = 23
      Caption = 'Alterar'
      LookAndFeel.NativeStyle = False
      LookAndFeel.SkinName = 'Metropolis'
      OptionsImage.Glyph.Data = {
        36040000424D3604000000000000360000002800000010000000100000000100
        2000000000000004000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        00000000000000000000000000003827174DB8824DFF00000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        000000000000000000003827174DB8824DFFB8824DFF00000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000003827174DB8824DFFB8824DFFB8824DFFB5804CFB9F7042DC7955
        32A747321E630E0A061400000000000000000000000000000000000000000000
        00003827174DB8824DFFB8824DFFB8824DFFB8824DFFB8824DFFB8824DFFB882
        4DFFB8824DFF7C5834AC2B1E123B000000000000000000000000000000000000
        0000000000003827174DB8824DFFB8824DFFB8824DFFB8824DFFB8824DFFB882
        4DFFB8824DFFB8824DFF855E38B91E150C290000000000000000000000000000
        0000484F3879212419373827174DB8824DFFB8824DFF060402082A1E123A6144
        2886A27344E1B8824DFFB8824DFF5D4227810000000000000000000000000000
        000077845DC98E9D6FF0212419373827174DB8824DFF00000000000000000000
        00004C36206AB8824DFFB8824DFF91663DC90000000000000000000000000000
        000093A273F897A776FF8E9D6FF0020302040000000000000000000000000000
        000003020104AD7A48F0B8824DFFB37E4BF80000000000000000000000000000
        000077845DC997A776FF97A776FF3F45316A00000000000000000000000097A7
        76FF2E32244D281C1137AD7A48F091663DC90000000000000000000000000000
        00004C543C8197A776FF97A776FF859368E14F583E8622261B3A0505040897A7
        76FF97A776FF2E32244D281C1137573E25790000000000000000000000000000
        0000181B13296E7956B997A776FF97A776FF97A776FF97A776FF97A776FF97A7
        76FF97A776FF97A776FF2E32244D000000000000000000000000000000000000
        00000000000023271B3B667150AC97A776FF97A776FF97A776FF97A776FF97A7
        76FF97A776FF97A776FF97A776FF2E32244D0000000000000000000000000000
        000000000000000000000C0D09143B412E63636D4DA7829066DC95A474FB97A7
        76FF97A776FF97A776FF2E32244D000000000000000000000000000000000000
        00000000000000000000000000000000000000000000000000000000000097A7
        76FF97A776FF2E32244D00000000000000000000000000000000000000000000
        00000000000000000000000000000000000000000000000000000000000097A7
        76FF2E32244D0000000000000000000000000000000000000000}
      TabOrder = 23
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -12
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object cxButton25: TcxButton
      Left = 845
      Top = 204
      Width = 84
      Height = 23
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
      TabOrder = 24
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -12
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      ParentFont = False
    end
  end
end
