object fmr_conveniado: Tfmr_conveniado
  Left = 0
  Top = 0
  BorderIcons = [biSystemMenu]
  BorderStyle = bsSingle
  Caption = 'Hist'#243'rico do Conveniado'
  ClientHeight = 438
  ClientWidth = 366
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  Position = poDesktopCenter
  PixelsPerInch = 96
  TextHeight = 13
  object cxPageControl1: TcxPageControl
    Left = 0
    Top = 0
    Width = 370
    Height = 440
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'Tahoma'
    Font.Style = [fsBold]
    ParentFont = False
    TabOrder = 0
    Properties.ActivePage = cxTabSheet1
    Properties.CustomButtons.Buttons = <>
    LookAndFeel.Kind = lfOffice11
    LookAndFeel.NativeStyle = False
    LookAndFeel.SkinName = 'Office2013LightGray'
    ClientRectBottom = 438
    ClientRectLeft = 2
    ClientRectRight = 368
    ClientRectTop = 28
    object cxTabSheet1: TcxTabSheet
      Caption = 'Per'#237'odo'
      ImageIndex = 0
      ExplicitTop = 27
      ExplicitWidth = 362
      ExplicitHeight = 407
      object Label1: TLabel
        Left = 4
        Top = 5
        Width = 198
        Height = 14
        Caption = 'Per'#237'odo de utiliza'#231#227'o do cr'#233'dito:'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -12
        Font.Name = 'Tahoma'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object lblPeriodo: TLabel
        Left = 64
        Top = 33
        Width = 234
        Height = 16
        Caption = 'de DD/MM/YYYY at'#233' DD/MM/YYYY'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clNavy
        Font.Height = -13
        Font.Name = 'Tahoma'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object Label2: TLabel
        Left = 4
        Top = 50
        Width = 49
        Height = 14
        Caption = 'Cr'#233'dito:'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -12
        Font.Name = 'Tahoma'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object Shape3: TShape
        Left = 4
        Top = 159
        Width = 353
        Height = 1
      end
      object Label3: TLabel
        Left = 4
        Top = 144
        Width = 184
        Height = 14
        Caption = 'Vendas efetuadas no per'#237'odo:'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -12
        Font.Name = 'Tahoma'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object Shape1: TShape
        Left = 4
        Top = 21
        Width = 353
        Height = 1
      end
      object Shape2: TShape
        Left = 4
        Top = 66
        Width = 353
        Height = 1
      end
      object Label6: TLabel
        Left = 4
        Top = 393
        Width = 44
        Height = 14
        Caption = 'Vendas:'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -12
        Font.Name = 'Tahoma'
        Font.Style = []
        ParentFont = False
      end
      object lblTotVendasPeriodo: TLabel
        Left = 308
        Top = 393
        Width = 49
        Height = 14
        Alignment = taRightJustify
        Caption = 'R$ 0,00'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -12
        Font.Name = 'Tahoma'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object lblVendasPeriodo: TLabel
        Left = 50
        Top = 393
        Width = 48
        Height = 14
        Caption = 'Vendas:'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -12
        Font.Name = 'Tahoma'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object GridPanel1: TGridPanel
        Left = 4
        Top = 72
        Width = 353
        Height = 63
        Margins.Left = 0
        Margins.Top = 0
        Margins.Right = 0
        Margins.Bottom = 0
        ColumnCollection = <
          item
            Value = 33.335000083338200000
          end
          item
            Value = 33.333333305553240000
          end
          item
            Value = 33.331666611108560000
          end>
        ControlCollection = <
          item
            Column = 0
            Control = lblCredito
            Row = 0
          end
          item
            Column = 1
            Control = lblUtilizado
            Row = 0
          end
          item
            Column = 2
            Control = lblPROD_SALDO
            Row = 0
          end
          item
            Column = 0
            Control = Label5
            Row = 1
          end
          item
            Column = 1
            Control = Label8
            Row = 1
          end
          item
            Column = 2
            Control = Label10
            Row = 1
          end>
        RowCollection = <
          item
            Value = 32.000000000000000000
          end
          item
            Value = 68.000000000000000000
          end>
        TabOrder = 0
        DesignSize = (
          353
          63)
        object lblCredito: TLabel
          Left = 28
          Top = 1
          Width = 62
          Height = 19
          Alignment = taCenter
          Anchors = []
          Caption = 'R$ 0,00'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clNavy
          Font.Height = -16
          Font.Name = 'Tahoma'
          Font.Style = [fsBold]
          ParentFont = False
          ExplicitLeft = 58
          ExplicitTop = 17
        end
        object lblUtilizado: TLabel
          Left = 135
          Top = 1
          Width = 82
          Height = 19
          Alignment = taCenter
          Anchors = []
          Caption = 'R$ 100,00'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clMaroon
          Font.Height = -16
          Font.Name = 'Tahoma'
          Font.Style = [fsBold]
          ParentFont = False
          ExplicitLeft = 176
          ExplicitTop = 17
        end
        object lblPROD_SALDO: TLabel
          Left = 252
          Top = 1
          Width = 82
          Height = 19
          Alignment = taCenter
          Anchors = []
          Caption = 'R$ 100,00'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clGreen
          Font.Height = -16
          Font.Name = 'Tahoma'
          Font.Style = [fsBold]
          ParentFont = False
          ExplicitLeft = 294
          ExplicitTop = 17
        end
        object Label5: TLabel
          Left = 26
          Top = 21
          Width = 66
          Height = 39
          Alignment = taCenter
          Anchors = []
          Caption = 'Cr'#233'dito'#13#10'do'#13#10'Conveniado'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = 6052956
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = [fsBold]
          ParentFont = False
          ExplicitLeft = 58
          ExplicitTop = 58
        end
        object Label8: TLabel
          Left = 151
          Top = 28
          Width = 49
          Height = 26
          Alignment = taCenter
          Anchors = []
          Caption = 'Cr'#233'dito'#13#10'Utilizado'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = 6052956
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = [fsBold]
          ParentFont = False
          ExplicitLeft = 148
        end
        object Label10: TLabel
          Left = 264
          Top = 28
          Width = 58
          Height = 26
          Alignment = taCenter
          Anchors = []
          Caption = 'PROD_SALDO'#13#10'Dispon'#237'vel'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = 6052956
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = [fsBold]
          ParentFont = False
          ExplicitLeft = 271
        end
      end
      object grid: TcxGrid
        Left = 4
        Top = 162
        Width = 353
        Height = 230
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = [fsBold]
        ParentFont = False
        TabOrder = 1
        LookAndFeel.NativeStyle = False
        LookAndFeel.SkinName = 'Office2013White'
        object gridTbVw: TcxGridDBTableView
          Navigator.Buttons.CustomButtons = <>
          DataController.Summary.DefaultGroupSummaryItems = <>
          DataController.Summary.FooterSummaryItems = <>
          DataController.Summary.SummaryGroups = <>
          OptionsView.NoDataToDisplayInfoText = '...'
          OptionsView.GroupByBox = False
          object clId: TcxGridDBColumn
            Caption = 'C'#243'd.'
            DataBinding.FieldName = 'codigo_venda'
            PropertiesClassName = 'TcxLabelProperties'
            Properties.Alignment.Horz = taCenter
            FooterAlignmentHorz = taCenter
            GroupSummaryAlignment = taCenter
            HeaderAlignmentHorz = taCenter
            HeaderGlyphAlignmentHorz = taCenter
            MinWidth = 64
            Options.Editing = False
            Options.Filtering = False
            Options.FilteringWithFindPanel = False
            Options.Focusing = False
            Options.IgnoreTimeForFiltering = False
            Options.IncSearch = False
            Options.FilteringAddValueItems = False
            Options.FilteringFilteredItemsList = False
            Options.FilteringMRUItemsList = False
            Options.FilteringPopup = False
            Options.FilteringPopupMultiSelect = False
            Options.GroupFooters = False
            Options.Grouping = False
            Options.HorzSizing = False
          end
          object clData: TcxGridDBColumn
            Caption = 'Data'
            DataBinding.FieldName = 'data'
            PropertiesClassName = 'TcxDateEditProperties'
            Properties.Alignment.Horz = taCenter
            Properties.DisplayFormat = 'dd/mm/yyyy'
            FooterAlignmentHorz = taCenter
            GroupSummaryAlignment = taCenter
            HeaderAlignmentHorz = taCenter
            HeaderGlyphAlignmentHorz = taCenter
            MinWidth = 138
            Options.Editing = False
            Options.Filtering = False
            Options.FilteringWithFindPanel = False
            Options.Focusing = False
            Options.IgnoreTimeForFiltering = False
            Options.IncSearch = False
            Options.FilteringAddValueItems = False
            Options.FilteringFilteredItemsList = False
            Options.FilteringMRUItemsList = False
            Options.FilteringPopup = False
            Options.FilteringPopupMultiSelect = False
            Options.GroupFooters = False
            Options.Grouping = False
            Options.HorzSizing = False
            Width = 138
          end
          object clValor: TcxGridDBColumn
            Caption = 'R$'
            DataBinding.FieldName = 'total_venda'
            PropertiesClassName = 'TcxCurrencyEditProperties'
            Properties.Alignment.Horz = taCenter
            FooterAlignmentHorz = taCenter
            GroupSummaryAlignment = taCenter
            HeaderAlignmentHorz = taCenter
            HeaderGlyphAlignmentHorz = taCenter
            MinWidth = 138
            Options.Editing = False
            Options.Filtering = False
            Options.FilteringWithFindPanel = False
            Options.Focusing = False
            Options.IgnoreTimeForFiltering = False
            Options.IncSearch = False
            Options.FilteringAddValueItems = False
            Options.FilteringFilteredItemsList = False
            Options.FilteringMRUItemsList = False
            Options.FilteringPopup = False
            Options.FilteringPopupMultiSelect = False
            Options.GroupFooters = False
            Options.Grouping = False
            Options.HorzSizing = False
            Width = 138
          end
        end
        object gridLv: TcxGridLevel
          GridView = gridTbVw
        end
      end
    end
    object cxTabSheet2: TcxTabSheet
      Caption = 'Geral'
      ImageIndex = 1
      ExplicitLeft = 0
      ExplicitTop = 0
      ExplicitWidth = 0
      ExplicitHeight = 0
      object Label4: TLabel
        Left = 6
        Top = 2
        Width = 113
        Height = 14
        Caption = 'Vendas Efetuadas:'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -12
        Font.Name = 'Tahoma'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object Shape4: TShape
        Left = 3
        Top = 18
        Width = 356
        Height = 1
      end
      object Label7: TLabel
        Left = 4
        Top = 393
        Width = 44
        Height = 14
        Caption = 'Vendas:'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -12
        Font.Name = 'Tahoma'
        Font.Style = []
        ParentFont = False
      end
      object lblVendasGeral: TLabel
        Left = 50
        Top = 393
        Width = 48
        Height = 14
        Caption = 'Vendas:'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -12
        Font.Name = 'Tahoma'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object lblTotVendasGeral: TLabel
        Left = 308
        Top = 393
        Width = 49
        Height = 14
        Alignment = taRightJustify
        Caption = 'R$ 0,00'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -12
        Font.Name = 'Tahoma'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object cxGrid1: TcxGrid
        Left = 4
        Top = 24
        Width = 353
        Height = 366
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = [fsBold]
        ParentFont = False
        TabOrder = 0
        LookAndFeel.NativeStyle = False
        LookAndFeel.SkinName = 'Office2013White'
        object cxGridDBTableView1: TcxGridDBTableView
          Navigator.Buttons.CustomButtons = <>
          DataController.Summary.DefaultGroupSummaryItems = <>
          DataController.Summary.FooterSummaryItems = <>
          DataController.Summary.SummaryGroups = <>
          OptionsView.GroupByBox = False
          object cxGridDBColumn1: TcxGridDBColumn
            Caption = 'C'#243'd.'
            DataBinding.FieldName = 'codigo_venda'
            PropertiesClassName = 'TcxLabelProperties'
            Properties.Alignment.Horz = taCenter
            FooterAlignmentHorz = taCenter
            GroupSummaryAlignment = taCenter
            HeaderAlignmentHorz = taCenter
            HeaderGlyphAlignmentHorz = taCenter
            MinWidth = 64
            Options.Editing = False
            Options.Filtering = False
            Options.FilteringWithFindPanel = False
            Options.Focusing = False
            Options.IgnoreTimeForFiltering = False
            Options.IncSearch = False
            Options.FilteringAddValueItems = False
            Options.FilteringFilteredItemsList = False
            Options.FilteringMRUItemsList = False
            Options.FilteringPopup = False
            Options.FilteringPopupMultiSelect = False
            Options.GroupFooters = False
            Options.Grouping = False
            Options.HorzSizing = False
          end
          object cxGridDBColumn2: TcxGridDBColumn
            Caption = 'Data'
            DataBinding.FieldName = 'data'
            PropertiesClassName = 'TcxDateEditProperties'
            Properties.Alignment.Horz = taCenter
            Properties.DisplayFormat = 'dd/mm/yyyy'
            FooterAlignmentHorz = taCenter
            GroupSummaryAlignment = taCenter
            HeaderAlignmentHorz = taCenter
            HeaderGlyphAlignmentHorz = taCenter
            MinWidth = 138
            Options.Editing = False
            Options.Filtering = False
            Options.FilteringWithFindPanel = False
            Options.Focusing = False
            Options.IgnoreTimeForFiltering = False
            Options.IncSearch = False
            Options.FilteringAddValueItems = False
            Options.FilteringFilteredItemsList = False
            Options.FilteringMRUItemsList = False
            Options.FilteringPopup = False
            Options.FilteringPopupMultiSelect = False
            Options.GroupFooters = False
            Options.Grouping = False
            Options.HorzSizing = False
            Width = 138
          end
          object cxGridDBColumn3: TcxGridDBColumn
            Caption = 'R$'
            DataBinding.FieldName = 'total_venda'
            PropertiesClassName = 'TcxCurrencyEditProperties'
            Properties.Alignment.Horz = taCenter
            FooterAlignmentHorz = taCenter
            GroupSummaryAlignment = taCenter
            HeaderAlignmentHorz = taCenter
            HeaderGlyphAlignmentHorz = taCenter
            MinWidth = 138
            Options.Editing = False
            Options.Filtering = False
            Options.FilteringWithFindPanel = False
            Options.Focusing = False
            Options.IgnoreTimeForFiltering = False
            Options.IncSearch = False
            Options.FilteringAddValueItems = False
            Options.FilteringFilteredItemsList = False
            Options.FilteringMRUItemsList = False
            Options.FilteringPopup = False
            Options.FilteringPopupMultiSelect = False
            Options.GroupFooters = False
            Options.Grouping = False
            Options.HorzSizing = False
            Width = 138
          end
        end
        object cxGridLevel1: TcxGridLevel
          GridView = cxGridDBTableView1
        end
      end
    end
  end
end
Trocou SALDO por @_@_@_@_@_@ : automaticamente em 17/06/2020 21:31
Trocou @_@_@_@_@_@ por PROD_SALDO : automaticamente em 17/06/2020 21:33
