object fmr_os_mecanica: Tfmr_os_mecanica
  Left = 0
  Top = 0
  BorderIcons = [biSystemMenu]
  BorderStyle = bsSingle
  Caption = 'Ordem Servi'#231'o | Mecaninca'
  ClientHeight = 848
  ClientWidth = 1292
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
  PixelsPerInch = 96
  TextHeight = 13
  object cxPageControl2: TcxPageControl
    Left = 0
    Top = 0
    Width = 1292
    Height = 848
    Align = alClient
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -12
    Font.Name = 'Tahoma'
    Font.Style = [fsBold]
    ParentFont = False
    TabOrder = 0
    Properties.ActivePage = cxTabSheet5
    Properties.CustomButtons.Buttons = <>
    LookAndFeel.NativeStyle = False
    LookAndFeel.SkinName = 'Metropolis'
    ExplicitHeight = 701
    ClientRectBottom = 846
    ClientRectLeft = 2
    ClientRectRight = 1290
    ClientRectTop = 29
    object Consulta: TcxTabSheet
      Caption = 'Consulta'
      ImageIndex = 0
      ExplicitHeight = 670
      object Label50: TLabel
        Left = 17
        Top = 23
        Width = 67
        Height = 19
        Caption = 'Consulta:'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -16
        Font.Name = 'Tahoma'
        Font.Style = []
        ParentFont = False
      end
      object Label51: TLabel
        Left = 377
        Top = 22
        Width = 144
        Height = 19
        Caption = 'Campo de Consulta:'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -16
        Font.Name = 'Tahoma'
        Font.Style = []
        ParentFont = False
      end
      object Edit16: TEdit
        Left = 96
        Top = 19
        Width = 233
        Height = 26
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -15
        Font.Name = 'Tahoma'
        Font.Style = [fsBold]
        ParentFont = False
        TabOrder = 0
      end
      object cxComboBox1: TcxComboBox
        Left = 527
        Top = 18
        ParentFont = False
        Properties.Items.Strings = (
          'Ordem Servi'#231'o'
          'Cliente'
          'Nome fantasia cliente'
          'Situa'#231#227'o'
          'Obs. Inf. OS'
          'Placa')
        Style.Font.Charset = DEFAULT_CHARSET
        Style.Font.Color = clWindowText
        Style.Font.Height = -16
        Style.Font.Name = 'Tahoma'
        Style.Font.Style = []
        Style.IsFontAssigned = True
        TabOrder = 1
        Width = 198
      end
      object cxGroupBox6: TcxGroupBox
        Left = 876
        Top = 404
        TabOrder = 2
        Height = 44
        Width = 406
        object Label52: TLabel
          Left = 127
          Top = 18
          Width = 7
          Height = 14
          Caption = #224
        end
        object Label53: TLabel
          Left = 295
          Top = 18
          Width = 28
          Height = 14
          Caption = 'M'#234's:'
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Height = -12
          Font.Name = 'Tahoma'
          Font.Style = [fsBold]
          ParentFont = False
        end
        object cxButton13: TcxButton
          Left = 255
          Top = 13
          Width = 24
          Height = 24
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
          TabOrder = 0
        end
        object DateTimePicker3: TDateTimePicker
          Left = 9
          Top = 14
          Width = 105
          Height = 22
          Date = 43532.681891481480000000
          Time = 43532.681891481480000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -12
          Font.Name = 'Tahoma'
          Font.Style = []
          ParentFont = False
          TabOrder = 1
        end
        object DateTimePicker4: TDateTimePicker
          Left = 145
          Top = 14
          Width = 105
          Height = 22
          Date = 43532.681891481480000000
          Time = 43532.681891481480000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -12
          Font.Name = 'Tahoma'
          Font.Style = []
          ParentFont = False
          TabOrder = 2
        end
        object cxComboBox4: TcxComboBox
          Left = 330
          Top = 14
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
          Properties.Items.Strings = (
            '01'
            '02'
            '03'
            '04'
            '05'
            '06'
            '07'
            '08'
            '09'
            '10'
            '11'
            '12')
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
          Width = 64
        end
      end
      object cxGrid4: TcxGrid
        Left = 0
        Top = 211
        Width = 1288
        Height = 606
        Align = alBottom
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = [fsBold]
        ParentFont = False
        TabOrder = 3
        LookAndFeel.NativeStyle = False
        LookAndFeel.SkinName = 'DevExpressStyle'
        ExplicitTop = 64
        object cxGridDBTableView4: TcxGridDBTableView
          Navigator.Buttons.CustomButtons = <>
          DataController.DetailKeyFieldNames = 'id'
          DataController.Summary.DefaultGroupSummaryItems = <>
          DataController.Summary.FooterSummaryItems = <>
          DataController.Summary.SummaryGroups = <>
          OptionsView.CellEndEllipsis = True
          OptionsView.NoDataToDisplayInfoText = '...'
          OptionsView.CellAutoHeight = True
          OptionsView.ColumnAutoWidth = True
          OptionsView.GroupByBox = False
          object cxGridDBColumn18: TcxGridDBColumn
            Caption = 'Data'
            DataBinding.FieldName = 'CODIGO_ITEM_VENDA'
            FooterAlignmentHorz = taCenter
            GroupSummaryAlignment = taCenter
            HeaderAlignmentHorz = taCenter
            HeaderGlyphAlignmentHorz = taCenter
            Options.Filtering = False
            Options.FilteringAddValueItems = False
            Options.FilteringFilteredItemsList = False
            Options.FilteringMRUItemsList = False
            Options.FilteringPopup = False
            Options.FilteringPopupMultiSelect = False
            Options.FilteringWithFindPanel = False
            Options.GroupFooters = False
            Options.Moving = False
            Width = 48
          end
          object cxGridDBColumn19: TcxGridDBColumn
            Caption = 'No O.S.'
            DataBinding.FieldName = 'CODIGO_PRODUTO'
            FooterAlignmentHorz = taCenter
            GroupSummaryAlignment = taCenter
            HeaderAlignmentHorz = taCenter
            HeaderGlyphAlignmentHorz = taCenter
            Options.Filtering = False
            Options.FilteringAddValueItems = False
            Options.FilteringFilteredItemsList = False
            Options.FilteringMRUItemsList = False
            Options.FilteringPopup = False
            Options.FilteringPopupMultiSelect = False
            Options.FilteringWithFindPanel = False
            Options.GroupFooters = False
            Options.Moving = False
            Width = 67
          end
          object cxGridDBColumn20: TcxGridDBColumn
            Caption = 'N'#186' NF-e'
            DataBinding.FieldName = 'DESCRICAO'
            FooterAlignmentHorz = taCenter
            GroupSummaryAlignment = taCenter
            HeaderAlignmentHorz = taCenter
            HeaderGlyphAlignmentHorz = taCenter
            Options.Filtering = False
            Options.FilteringAddValueItems = False
            Options.FilteringFilteredItemsList = False
            Options.FilteringMRUItemsList = False
            Options.FilteringPopup = False
            Options.FilteringPopupMultiSelect = False
            Options.FilteringWithFindPanel = False
            Options.GroupFooters = False
            Options.Moving = False
            Width = 366
          end
          object cxGridDBColumn21: TcxGridDBColumn
            Caption = 'N'#186' NFC-e'
            DataBinding.FieldName = 'CFOP'
            FooterAlignmentHorz = taCenter
            GroupSummaryAlignment = taCenter
            HeaderAlignmentHorz = taCenter
            HeaderGlyphAlignmentHorz = taCenter
            Width = 75
          end
          object cxGridDBColumn22: TcxGridDBColumn
            Caption = 'Cliente'
            DataBinding.FieldName = 'UNIDADE'
            FooterAlignmentHorz = taCenter
            GroupSummaryAlignment = taCenter
            HeaderAlignmentHorz = taCenter
            HeaderGlyphAlignmentHorz = taCenter
            Options.Filtering = False
            Options.FilteringAddValueItems = False
            Options.FilteringFilteredItemsList = False
            Options.FilteringMRUItemsList = False
            Options.FilteringPopup = False
            Options.FilteringPopupMultiSelect = False
            Options.FilteringWithFindPanel = False
            Options.GroupFooters = False
            Options.Moving = False
            Width = 59
          end
          object cxGridDBColumn23: TcxGridDBColumn
            Caption = 'Valor'
            DataBinding.FieldName = 'PRECO'
            FooterAlignmentHorz = taCenter
            GroupSummaryAlignment = taCenter
            HeaderAlignmentHorz = taCenter
            HeaderGlyphAlignmentHorz = taCenter
            Options.Filtering = False
            Options.FilteringAddValueItems = False
            Options.FilteringFilteredItemsList = False
            Options.FilteringMRUItemsList = False
            Options.FilteringPopup = False
            Options.FilteringPopupMultiSelect = False
            Options.FilteringWithFindPanel = False
            Options.GroupFooters = False
            Options.Moving = False
            Width = 106
          end
          object cxGridDBColumn24: TcxGridDBColumn
            Caption = 'T'#233'cnico'
            DataBinding.FieldName = 'QUANTIDADE'
            FooterAlignmentHorz = taCenter
            GroupSummaryAlignment = taCenter
            HeaderAlignmentHorz = taCenter
            HeaderGlyphAlignmentHorz = taCenter
            Options.Filtering = False
            Options.FilteringAddValueItems = False
            Options.FilteringFilteredItemsList = False
            Options.FilteringMRUItemsList = False
            Options.FilteringPopup = False
            Options.FilteringPopupMultiSelect = False
            Options.FilteringWithFindPanel = False
            Options.GroupFooters = False
            Options.Moving = False
            Width = 107
          end
          object cxGridDBColumn25: TcxGridDBColumn
            Caption = 'Cor'
            DataBinding.FieldName = 'PRECO_TOTAL'
            FooterAlignmentHorz = taCenter
            GroupSummaryAlignment = taCenter
            HeaderAlignmentHorz = taCenter
            HeaderGlyphAlignmentHorz = taCenter
            Options.Filtering = False
            Options.FilteringAddValueItems = False
            Options.FilteringFilteredItemsList = False
            Options.FilteringMRUItemsList = False
            Options.FilteringPopup = False
            Options.FilteringPopupMultiSelect = False
            Options.FilteringWithFindPanel = False
            Options.GroupFooters = False
            Options.Moving = False
            Width = 106
          end
          object cxGridDBColumn26: TcxGridDBColumn
            Caption = 'Marca'
            DataBinding.FieldName = 'rateio_desconto'
            FooterAlignmentHorz = taCenter
            GroupSummaryAlignment = taCenter
            HeaderAlignmentHorz = taCenter
            HeaderGlyphAlignmentHorz = taCenter
            Options.Filtering = False
            Options.FilteringAddValueItems = False
            Options.FilteringFilteredItemsList = False
            Options.FilteringMRUItemsList = False
            Options.FilteringPopup = False
            Options.FilteringPopupMultiSelect = False
            Options.FilteringWithFindPanel = False
            Options.GroupFooters = False
            Options.Moving = False
            Width = 104
          end
          object cxGridDBColumn27: TcxGridDBColumn
            Caption = 'Nome Fantasia'
            DataBinding.FieldName = 'DESCONTO'
            FooterAlignmentHorz = taCenter
            GroupSummaryAlignment = taCenter
            HeaderAlignmentHorz = taCenter
            HeaderGlyphAlignmentHorz = taCenter
            Options.Filtering = False
            Options.FilteringAddValueItems = False
            Options.FilteringFilteredItemsList = False
            Options.FilteringMRUItemsList = False
            Options.FilteringPopup = False
            Options.FilteringPopupMultiSelect = False
            Options.FilteringWithFindPanel = False
            Options.GroupFooters = False
            Options.Moving = False
            Width = 109
          end
          object cxGridDBColumn28: TcxGridDBColumn
            Caption = 'Respons'#225'vel'
            DataBinding.FieldName = 'PRECO_TOTAL'
            FooterAlignmentHorz = taCenter
            GroupSummaryAlignment = taCenter
            HeaderAlignmentHorz = taCenter
            HeaderGlyphAlignmentHorz = taCenter
            Options.Filtering = False
            Options.FilteringAddValueItems = False
            Options.FilteringFilteredItemsList = False
            Options.FilteringMRUItemsList = False
            Options.FilteringPopup = False
            Options.FilteringPopupMultiSelect = False
            Options.FilteringWithFindPanel = False
            Options.GroupFooters = False
            Options.Moving = False
            VisibleForEditForm = bTrue
            Width = 106
          end
          object cxGridDBTableView4Column1: TcxGridDBColumn
            Caption = 'Fonte Resp.'
            GroupSummaryAlignment = taCenter
            HeaderAlignmentHorz = taCenter
            HeaderGlyphAlignmentHorz = taCenter
            Options.Filtering = False
            Options.FilteringAddValueItems = False
            Options.FilteringFilteredItemsList = False
            Options.FilteringMRUItemsList = False
            Options.FilteringPopup = False
            Options.FilteringPopupMultiSelect = False
            Options.FilteringWithFindPanel = False
            Options.GroupFooters = False
            Options.Moving = False
            VisibleForEditForm = bTrue
            Width = 100
          end
          object cxGridDBTableView4Column2: TcxGridDBColumn
            Caption = 'Justificativa de reabertura'
            FooterAlignmentHorz = taCenter
            GroupSummaryAlignment = taCenter
            HeaderAlignmentHorz = taCenter
            Options.Filtering = False
            Options.FilteringAddValueItems = False
            Options.FilteringFilteredItemsList = False
            Options.FilteringMRUItemsList = False
            Options.FilteringPopup = False
            Options.FilteringPopupMultiSelect = False
            Options.FilteringWithFindPanel = False
            Options.GroupFooters = False
            Options.Moving = False
            VisibleForEditForm = bTrue
            Width = 250
          end
        end
        object cxGridLevel4: TcxGridLevel
          GridView = cxGridDBTableView4
        end
      end
      object cxGroupBox3: TcxGroupBox
        Left = 752
        Top = 5
        TabOrder = 4
        Height = 44
        Width = 406
        object Label54: TLabel
          Left = 127
          Top = 18
          Width = 7
          Height = 14
          Caption = #224
        end
        object Label55: TLabel
          Left = 295
          Top = 18
          Width = 28
          Height = 14
          Caption = 'M'#234's:'
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Height = -12
          Font.Name = 'Tahoma'
          Font.Style = [fsBold]
          ParentFont = False
        end
        object cxButton5: TcxButton
          Left = 255
          Top = 13
          Width = 24
          Height = 24
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
          TabOrder = 0
        end
        object DateTimePicker1: TDateTimePicker
          Left = 9
          Top = 14
          Width = 105
          Height = 22
          Date = 43532.681891481480000000
          Time = 43532.681891481480000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -12
          Font.Name = 'Tahoma'
          Font.Style = []
          ParentFont = False
          TabOrder = 1
        end
        object DateTimePicker2: TDateTimePicker
          Left = 145
          Top = 14
          Width = 105
          Height = 22
          Date = 43532.681891481480000000
          Time = 43532.681891481480000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -12
          Font.Name = 'Tahoma'
          Font.Style = []
          ParentFont = False
          TabOrder = 2
        end
        object cxComboBox2: TcxComboBox
          Left = 330
          Top = 14
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
          Properties.Items.Strings = (
            '01'
            '02'
            '03'
            '04'
            '05'
            '06'
            '07'
            '08'
            '09'
            '10'
            '11'
            '12')
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
          Width = 64
        end
      end
      object cxButton6: TcxButton
        Left = 335
        Top = 19
        Width = 27
        Height = 26
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
    end
    object cxTabSheet5: TcxTabSheet
      Caption = 'Ordem Servi'#231'o'
      ImageIndex = 1
      ExplicitHeight = 670
      object cxGroupBox2: TcxGroupBox
        Left = 8
        Top = 207
        Caption = '  Endere'#231'o  '
        ParentFont = False
        Style.Font.Charset = DEFAULT_CHARSET
        Style.Font.Color = clWindowText
        Style.Font.Height = -15
        Style.Font.Name = 'Tahoma'
        Style.Font.Style = [fsBold]
        Style.IsFontAssigned = True
        TabOrder = 0
        Height = 121
        Width = 849
        object Label8: TLabel
          Left = 21
          Top = 25
          Width = 78
          Height = 19
          Caption = 'Telefone:'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -16
          Font.Name = 'Tahoma'
          Font.Style = [fsBold]
          ParentFont = False
        end
        object lbTelefone: TLabel
          Left = 106
          Top = 26
          Width = 211
          Height = 16
          AutoSize = False
          Caption = '69 3225-1158'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -15
          Font.Name = 'Tahoma'
          Font.Style = []
          ParentFont = False
        end
        object Label9: TLabel
          Left = 18
          Top = 55
          Width = 81
          Height = 19
          Caption = 'Endere'#231'o:'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -16
          Font.Name = 'Tahoma'
          Font.Style = [fsBold]
          ParentFont = False
        end
        object lbEndereco: TLabel
          Left = 106
          Top = 56
          Width = 197
          Height = 16
          AutoSize = False
          Caption = 'Av. Calama'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -15
          Font.Name = 'Tahoma'
          Font.Style = []
          ParentFont = False
        end
        object Label11: TLabel
          Left = 43
          Top = 84
          Width = 56
          Height = 19
          Caption = 'Bairro:'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -16
          Font.Name = 'Tahoma'
          Font.Style = [fsBold]
          ParentFont = False
        end
        object lbBairro: TLabel
          Left = 106
          Top = 85
          Width = 170
          Height = 16
          AutoSize = False
          Caption = 'Centro'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -15
          Font.Name = 'Tahoma'
          Font.Style = []
          ParentFont = False
        end
        object Label12: TLabel
          Left = 323
          Top = 84
          Width = 46
          Height = 19
          Caption = 'Zona:'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -16
          Font.Name = 'Tahoma'
          Font.Style = [fsBold]
          ParentFont = False
        end
        object lbZona: TLabel
          Left = 376
          Top = 85
          Width = 91
          Height = 16
          AutoSize = False
          Caption = 'Norte'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -15
          Font.Name = 'Tahoma'
          Font.Style = []
          ParentFont = False
        end
        object Label20: TLabel
          Left = 311
          Top = 25
          Width = 58
          Height = 19
          Caption = 'E-mail:'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -16
          Font.Name = 'Tahoma'
          Font.Style = [fsBold]
          ParentFont = False
        end
        object lbEmail: TLabel
          Left = 376
          Top = 25
          Width = 287
          Height = 22
          AutoSize = False
          Caption = 'email@gmail.com'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -15
          Font.Name = 'Tahoma'
          Font.Style = []
          ParentFont = False
        end
        object Label7: TLabel
          Left = 455
          Top = 84
          Width = 63
          Height = 19
          Caption = 'Regi'#227'o:'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -16
          Font.Name = 'Tahoma'
          Font.Style = [fsBold]
          ParentFont = False
        end
        object lbRegiao: TLabel
          Left = 528
          Top = 85
          Width = 72
          Height = 16
          AutoSize = False
          Caption = 'Sul'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -15
          Font.Name = 'Tahoma'
          Font.Style = []
          ParentFont = False
        end
        object Label10: TLabel
          Left = 494
          Top = 55
          Width = 27
          Height = 19
          Caption = 'N'#186':'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -16
          Font.Name = 'Tahoma'
          Font.Style = [fsBold]
          ParentFont = False
        end
        object lbNumero: TLabel
          Left = 531
          Top = 56
          Width = 138
          Height = 16
          AutoSize = False
          Caption = '999778'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -15
          Font.Name = 'Tahoma'
          Font.Style = []
          ParentFont = False
        end
        object Label13: TLabel
          Left = 590
          Top = 84
          Width = 62
          Height = 19
          Caption = 'Cidade:'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -16
          Font.Name = 'Tahoma'
          Font.Style = [fsBold]
          ParentFont = False
        end
        object lbMunicipio: TLabel
          Left = 663
          Top = 85
          Width = 113
          Height = 16
          AutoSize = False
          Caption = 'Porto Velho'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -15
          Font.Name = 'Tahoma'
          Font.Style = []
          ParentFont = False
        end
        object Label18: TLabel
          Left = 716
          Top = 55
          Width = 38
          Height = 19
          Caption = 'CEP:'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -16
          Font.Name = 'Tahoma'
          Font.Style = [fsBold]
          ParentFont = False
        end
        object lbCEP: TLabel
          Left = 760
          Top = 56
          Width = 80
          Height = 16
          AutoSize = False
          Caption = '78900-000'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -15
          Font.Name = 'Tahoma'
          Font.Style = []
          ParentFont = False
        end
        object Label14: TLabel
          Left = 768
          Top = 88
          Width = 27
          Height = 19
          Caption = 'UF:'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -16
          Font.Name = 'Tahoma'
          Font.Style = [fsBold]
          ParentFont = False
        end
        object lbEstado: TLabel
          Left = 801
          Top = 85
          Width = 33
          Height = 16
          AutoSize = False
          Caption = 'RO'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -15
          Font.Name = 'Tahoma'
          Font.Style = []
          ParentFont = False
        end
        object lbEmail_1: TLabel
          Left = 709
          Top = 26
          Width = 125
          Height = 29
          AutoSize = False
          Caption = 'email@gmail.com'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -15
          Font.Name = 'Tahoma'
          Font.Style = []
          ParentFont = False
        end
        object Label40: TLabel
          Left = 646
          Top = 25
          Width = 58
          Height = 19
          Caption = 'E-mail:'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -16
          Font.Name = 'Tahoma'
          Font.Style = [fsBold]
          ParentFont = False
        end
      end
      object cxGroupBox1: TcxGroupBox
        Left = 8
        Top = 2
        Caption = '  Inf. Pedidos  '
        ParentFont = False
        Style.Font.Charset = DEFAULT_CHARSET
        Style.Font.Color = clWindowText
        Style.Font.Height = -15
        Style.Font.Name = 'Tahoma'
        Style.Font.Style = [fsBold]
        Style.IsFontAssigned = True
        TabOrder = 1
        Height = 201
        Width = 849
        object Label23: TLabel
          Left = 49
          Top = 25
          Width = 62
          Height = 19
          Caption = 'Pedido:'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -16
          Font.Name = 'Tahoma'
          Font.Style = [fsBold]
          ParentFont = False
        end
        object Label21: TLabel
          Left = 13
          Top = 59
          Width = 99
          Height = 19
          Caption = 'Natureza Op.:'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -16
          Font.Name = 'Tahoma'
          Font.Style = []
          ParentFont = False
        end
        object Label15: TLabel
          Left = 37
          Top = 93
          Width = 74
          Height = 19
          Caption = 'Vendedor:'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -16
          Font.Name = 'Tahoma'
          Font.Style = []
          ParentFont = False
        end
        object Label2: TLabel
          Left = 17
          Top = 127
          Width = 94
          Height = 19
          Caption = 'Raz'#227'o Social:'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -16
          Font.Name = 'Tahoma'
          Font.Style = []
          ParentFont = False
        end
        object Label4: TLabel
          Left = 25
          Top = 163
          Width = 86
          Height = 19
          Caption = 'CNPJ | CPF:'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -16
          Font.Name = 'Tahoma'
          Font.Style = []
          ParentFont = False
        end
        object Label6: TLabel
          Left = 216
          Top = 25
          Width = 91
          Height = 19
          Caption = 'Data Pedido:'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -16
          Font.Name = 'Tahoma'
          Font.Style = []
          ParentFont = False
        end
        object Label3: TLabel
          Left = 309
          Top = 163
          Width = 61
          Height = 19
          Caption = 'Contato:'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -16
          Font.Name = 'Tahoma'
          Font.Style = []
          ParentFont = False
        end
        object Label16: TLabel
          Left = 590
          Top = 163
          Width = 55
          Height = 19
          Caption = 'Celular:'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -16
          Font.Name = 'Tahoma'
          Font.Style = []
          ParentFont = False
        end
        object Label22: TLabel
          Left = 680
          Top = 59
          Width = 45
          Height = 19
          Caption = 'CFOP:'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -16
          Font.Name = 'Tahoma'
          Font.Style = []
          ParentFont = False
        end
        object Label17: TLabel
          Left = 447
          Top = 25
          Width = 104
          Height = 19
          Caption = 'Tipo de O.S.:'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -16
          Font.Name = 'Tahoma'
          Font.Style = [fsBold]
          ParentFont = False
        end
        object edCPF_CNPJ: TEdit
          Left = 118
          Top = 159
          Width = 181
          Height = 26
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -15
          Font.Name = 'Tahoma'
          Font.Style = [fsBold]
          ParentFont = False
          TabOrder = 0
        end
        object edCodigo_Cliente: TEdit
          Left = 118
          Top = 123
          Width = 52
          Height = 26
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -15
          Font.Name = 'Tahoma'
          Font.Style = [fsBold]
          ParentFont = False
          TabOrder = 1
        end
        object cxPesquisaCliente: TcxButton
          Left = 175
          Top = 123
          Width = 27
          Height = 26
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
          TabOrder = 2
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = [fsBold]
          ParentFont = False
        end
        object cxVendedor: TcxComboBox
          Left = 118
          Top = 89
          ParentFont = False
          Properties.DropDownListStyle = lsFixedList
          Style.Font.Charset = DEFAULT_CHARSET
          Style.Font.Color = clWindowText
          Style.Font.Height = -16
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
          TabOrder = 3
          Width = 684
        end
        object cxNaturezaOperacao: TcxComboBox
          Left = 118
          Top = 55
          ParentFont = False
          Properties.Items.Strings = (
            'DINHEIRO'
            'CHEQUE'
            'C. D'#201'BITO'
            'C. CR'#201'DITO'
            'FIADO'
            'CONV'#202'NIO')
          Style.Font.Charset = DEFAULT_CHARSET
          Style.Font.Color = clWindowText
          Style.Font.Height = -16
          Style.Font.Name = 'Tahoma'
          Style.Font.Style = []
          Style.IsFontAssigned = True
          TabOrder = 4
          Text = 'cxNaturezaOperacao'
          Width = 535
        end
        object edCODIGO_VENDA: TEdit
          Left = 118
          Top = 21
          Width = 86
          Height = 26
          TabStop = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -15
          Font.Name = 'Tahoma'
          Font.Style = [fsBold]
          ParentFont = False
          TabOrder = 5
        end
        object edRazao_Social: TEdit
          Left = 208
          Top = 123
          Width = 626
          Height = 26
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -15
          Font.Name = 'Tahoma'
          Font.Style = [fsBold]
          ParentFont = False
          TabOrder = 6
        end
        object edContato_Nome: TEdit
          Left = 375
          Top = 159
          Width = 203
          Height = 26
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -15
          Font.Name = 'Tahoma'
          Font.Style = [fsBold]
          ParentFont = False
          TabOrder = 7
        end
        object edContato_Celular: TEdit
          Left = 657
          Top = 159
          Width = 177
          Height = 26
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -15
          Font.Name = 'Tahoma'
          Font.Style = [fsBold]
          ParentFont = False
          TabOrder = 8
        end
        object edCFOP: TEdit
          Left = 739
          Top = 55
          Width = 95
          Height = 26
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -15
          Font.Name = 'Tahoma'
          Font.Style = [fsBold]
          ParentFont = False
          TabOrder = 9
        end
        object cxTipoPedido: TcxComboBox
          Left = 561
          Top = 21
          ParentFont = False
          Properties.Items.Strings = (
            'Or'#231'amento'
            'Venda'
            'Venda  Antecipada'
            'Venda Consignada'
            'Troca de Mercadoria')
          Style.Font.Charset = DEFAULT_CHARSET
          Style.Font.Color = clWindowText
          Style.Font.Height = -16
          Style.Font.Name = 'Tahoma'
          Style.Font.Style = []
          Style.IsFontAssigned = True
          TabOrder = 10
          Text = 'cxTipoPedido'
          Width = 273
        end
        object cxDateEdit1: TcxDateEdit
          Left = 313
          Top = 21
          ParentFont = False
          Style.Font.Charset = DEFAULT_CHARSET
          Style.Font.Color = clWindowText
          Style.Font.Height = -15
          Style.Font.Name = 'Tahoma'
          Style.Font.Style = []
          Style.IsFontAssigned = True
          TabOrder = 11
          Width = 121
        end
        object cxButton8: TcxButton
          Left = 808
          Top = 89
          Width = 26
          Height = 27
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
          TabOrder = 12
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = [fsBold]
          ParentFont = False
        end
      end
      object cxPageControl1: TcxPageControl
        Left = 8
        Top = 338
        Width = 1265
        Height = 319
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -15
        Font.Name = 'Tahoma'
        Font.Style = []
        ParentFont = False
        TabOrder = 2
        Properties.ActivePage = cxTabSheet1
        Properties.CustomButtons.Buttons = <>
        ClientRectBottom = 315
        ClientRectLeft = 4
        ClientRectRight = 1261
        ClientRectTop = 29
        object cxTabSheet1: TcxTabSheet
          Caption = 'Produtos'
          ImageIndex = 0
          object Label27: TLabel
            Left = 13
            Top = 9
            Width = 62
            Height = 19
            Caption = 'Produto:'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -16
            Font.Name = 'Tahoma'
            Font.Style = []
            ParentFont = False
          end
          object Label30: TLabel
            Left = 204
            Top = 9
            Width = 73
            Height = 19
            Caption = 'Descri'#231#227'o:'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -16
            Font.Name = 'Tahoma'
            Font.Style = []
            ParentFont = False
          end
          object Label31: TLabel
            Left = 606
            Top = 9
            Width = 43
            Height = 19
            Caption = 'Valor:'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -16
            Font.Name = 'Tahoma'
            Font.Style = []
            ParentFont = False
          end
          object Label32: TLabel
            Left = 763
            Top = 9
            Width = 87
            Height = 19
            Caption = 'Quantidade:'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -16
            Font.Name = 'Tahoma'
            Font.Style = []
            ParentFont = False
          end
          object Label33: TLabel
            Left = 963
            Top = 9
            Width = 64
            Height = 19
            Caption = 'Unidade:'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -16
            Font.Name = 'Tahoma'
            Font.Style = []
            ParentFont = False
          end
          object Label34: TLabel
            Left = 1106
            Top = 9
            Width = 45
            Height = 19
            Caption = 'CFOP:'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -16
            Font.Name = 'Tahoma'
            Font.Style = []
            ParentFont = False
          end
          object Label25: TLabel
            Left = 13
            Top = 232
            Width = 46
            Height = 18
            Caption = 'Totais'
            Color = clRed
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clRed
            Font.Height = -15
            Font.Name = 'Tahoma'
            Font.Style = [fsBold]
            ParentColor = False
            ParentFont = False
          end
          object Label26: TLabel
            Left = 21
            Top = 256
            Width = 48
            Height = 19
            Caption = 'Itens:'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -16
            Font.Name = 'Tahoma'
            Font.Style = [fsBold]
            ParentFont = False
          end
          object Label5: TLabel
            Left = 264
            Top = 256
            Width = 127
            Height = 19
            Caption = 'Valor Produtos:'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -16
            Font.Name = 'Tahoma'
            Font.Style = [fsBold]
            ParentFont = False
          end
          object Label28: TLabel
            Left = 669
            Top = 256
            Width = 130
            Height = 19
            Caption = 'Desconto Geral:'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -16
            Font.Name = 'Tahoma'
            Font.Style = [fsBold]
            ParentFont = False
          end
          object Label29: TLabel
            Left = 998
            Top = 254
            Width = 117
            Height = 23
            Caption = 'Valor Pagar:'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clRed
            Font.Height = -19
            Font.Name = 'Tahoma'
            Font.Style = [fsBold]
            ParentFont = False
          end
          object Shape1: TShape
            Left = 65
            Top = 244
            Width = 1173
            Height = 1
            Brush.Color = clDefault
          end
          object edPROD_CODIGO: TEdit
            Left = 82
            Top = 5
            Width = 79
            Height = 26
            CharCase = ecUpperCase
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -15
            Font.Name = 'Tahoma'
            Font.Style = [fsBold]
            ParentFont = False
            TabOrder = 0
          end
          object cxButton7: TcxButton
            Left = 166
            Top = 5
            Width = 27
            Height = 26
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
            TabOrder = 1
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -11
            Font.Name = 'Tahoma'
            Font.Style = [fsBold]
            ParentFont = False
          end
          object edDESCRICAO_PRODUTO: TEdit
            Left = 283
            Top = 5
            Width = 314
            Height = 26
            CharCase = ecUpperCase
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -15
            Font.Name = 'Tahoma'
            Font.Style = [fsBold]
            ParentFont = False
            ReadOnly = True
            TabOrder = 2
          end
          object edPRECO: TEdit
            Left = 657
            Top = 5
            Width = 95
            Height = 26
            CharCase = ecUpperCase
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -15
            Font.Name = 'Tahoma'
            Font.Style = [fsBold]
            ParentFont = False
            ReadOnly = True
            TabOrder = 3
          end
          object edQUANTIDADE: TEdit
            Left = 857
            Top = 5
            Width = 95
            Height = 26
            CharCase = ecUpperCase
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -15
            Font.Name = 'Tahoma'
            Font.Style = [fsBold]
            ParentFont = False
            TabOrder = 4
          end
          object edUNIDADE_MEDIDA: TEdit
            Left = 1033
            Top = 7
            Width = 65
            Height = 26
            TabStop = False
            CharCase = ecUpperCase
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -15
            Font.Name = 'Tahoma'
            Font.Style = [fsBold]
            ParentFont = False
            ReadOnly = True
            TabOrder = 5
          end
          object edCFOP_Produto: TEdit
            Left = 1157
            Top = 5
            Width = 81
            Height = 26
            CharCase = ecUpperCase
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -15
            Font.Name = 'Tahoma'
            Font.Style = [fsBold]
            ParentFont = False
            TabOrder = 6
          end
          object cxGrid1: TcxGrid
            Left = 13
            Top = 39
            Width = 1225
            Height = 187
            Font.Charset = ANSI_CHARSET
            Font.Color = clWindowText
            Font.Height = -11
            Font.Name = 'Tahoma'
            Font.Style = [fsBold]
            ParentFont = False
            TabOrder = 7
            LookAndFeel.NativeStyle = False
            LookAndFeel.SkinName = 'DevExpressStyle'
            object cxGridDBTableView1: TcxGridDBTableView
              Navigator.Buttons.CustomButtons = <>
              DataController.DataSource = DT_LISTA
              DataController.DetailKeyFieldNames = 'id'
              DataController.Summary.DefaultGroupSummaryItems = <>
              DataController.Summary.FooterSummaryItems = <>
              DataController.Summary.SummaryGroups = <>
              OptionsView.CellEndEllipsis = True
              OptionsView.NoDataToDisplayInfoText = '...'
              OptionsView.CellAutoHeight = True
              OptionsView.ColumnAutoWidth = True
              OptionsView.GroupByBox = False
              object cxGridDBTableView1Column3: TcxGridDBColumn
                Caption = 'Item'
                DataBinding.FieldName = 'CODIGO_ITEM_VENDA'
                FooterAlignmentHorz = taCenter
                GroupSummaryAlignment = taCenter
                HeaderAlignmentHorz = taCenter
                HeaderGlyphAlignmentHorz = taCenter
                Options.Filtering = False
                Options.FilteringAddValueItems = False
                Options.FilteringFilteredItemsList = False
                Options.FilteringMRUItemsList = False
                Options.FilteringPopup = False
                Options.FilteringPopupMultiSelect = False
                Options.FilteringWithFindPanel = False
                Options.GroupFooters = False
                Options.Moving = False
                Width = 48
              end
              object cxGridDBTableView1Column1: TcxGridDBColumn
                Caption = 'C'#243'digo'
                DataBinding.FieldName = 'CODIGO_PRODUTO'
                FooterAlignmentHorz = taCenter
                GroupSummaryAlignment = taCenter
                HeaderAlignmentHorz = taCenter
                HeaderGlyphAlignmentHorz = taCenter
                Options.Filtering = False
                Options.FilteringAddValueItems = False
                Options.FilteringFilteredItemsList = False
                Options.FilteringMRUItemsList = False
                Options.FilteringPopup = False
                Options.FilteringPopupMultiSelect = False
                Options.FilteringWithFindPanel = False
                Options.GroupFooters = False
                Options.Moving = False
                Width = 67
              end
              object cxGridDBTableView1Column2: TcxGridDBColumn
                Caption = 'Descri'#231#227'o'
                DataBinding.FieldName = 'DESCRICAO'
                FooterAlignmentHorz = taCenter
                GroupSummaryAlignment = taCenter
                HeaderAlignmentHorz = taCenter
                HeaderGlyphAlignmentHorz = taCenter
                Options.Filtering = False
                Options.FilteringAddValueItems = False
                Options.FilteringFilteredItemsList = False
                Options.FilteringMRUItemsList = False
                Options.FilteringPopup = False
                Options.FilteringPopupMultiSelect = False
                Options.FilteringWithFindPanel = False
                Options.GroupFooters = False
                Options.Moving = False
                Width = 366
              end
              object cxGridDBTableView1Column11: TcxGridDBColumn
                DataBinding.FieldName = 'CFOP'
                FooterAlignmentHorz = taCenter
                GroupSummaryAlignment = taCenter
                HeaderAlignmentHorz = taCenter
                HeaderGlyphAlignmentHorz = taCenter
                Width = 45
              end
              object cxGridDBTableView1Column4: TcxGridDBColumn
                Caption = 'Unidade'
                DataBinding.FieldName = 'UNIDADE'
                FooterAlignmentHorz = taCenter
                GroupSummaryAlignment = taCenter
                HeaderAlignmentHorz = taCenter
                HeaderGlyphAlignmentHorz = taCenter
                Options.Filtering = False
                Options.FilteringAddValueItems = False
                Options.FilteringFilteredItemsList = False
                Options.FilteringMRUItemsList = False
                Options.FilteringPopup = False
                Options.FilteringPopupMultiSelect = False
                Options.FilteringWithFindPanel = False
                Options.GroupFooters = False
                Options.Moving = False
                Width = 59
              end
              object cxGridDBTableView1Column5: TcxGridDBColumn
                Caption = 'Valor Und.'
                DataBinding.FieldName = 'PRECO'
                FooterAlignmentHorz = taCenter
                GroupSummaryAlignment = taCenter
                HeaderAlignmentHorz = taCenter
                HeaderGlyphAlignmentHorz = taCenter
                Options.Filtering = False
                Options.FilteringAddValueItems = False
                Options.FilteringFilteredItemsList = False
                Options.FilteringMRUItemsList = False
                Options.FilteringPopup = False
                Options.FilteringPopupMultiSelect = False
                Options.FilteringWithFindPanel = False
                Options.GroupFooters = False
                Options.Moving = False
                Width = 106
              end
              object cxGridDBTableView1Column6: TcxGridDBColumn
                Caption = 'Quant.'
                DataBinding.FieldName = 'QUANTIDADE'
                FooterAlignmentHorz = taCenter
                GroupSummaryAlignment = taCenter
                HeaderAlignmentHorz = taCenter
                HeaderGlyphAlignmentHorz = taCenter
                Options.Filtering = False
                Options.FilteringAddValueItems = False
                Options.FilteringFilteredItemsList = False
                Options.FilteringMRUItemsList = False
                Options.FilteringPopup = False
                Options.FilteringPopupMultiSelect = False
                Options.FilteringWithFindPanel = False
                Options.GroupFooters = False
                Options.Moving = False
                Width = 107
              end
              object cxGridDBTableView1Column7: TcxGridDBColumn
                Caption = 'Valor Total'
                DataBinding.FieldName = 'PRECO_TOTAL'
                FooterAlignmentHorz = taCenter
                GroupSummaryAlignment = taCenter
                HeaderAlignmentHorz = taCenter
                HeaderGlyphAlignmentHorz = taCenter
                Options.Filtering = False
                Options.FilteringAddValueItems = False
                Options.FilteringFilteredItemsList = False
                Options.FilteringMRUItemsList = False
                Options.FilteringPopup = False
                Options.FilteringPopupMultiSelect = False
                Options.FilteringWithFindPanel = False
                Options.GroupFooters = False
                Options.Moving = False
                Width = 106
              end
              object cxGridDBTableView1Column8: TcxGridDBColumn
                Caption = 'Desc %'
                DataBinding.FieldName = 'rateio_desconto'
                FooterAlignmentHorz = taCenter
                GroupSummaryAlignment = taCenter
                HeaderAlignmentHorz = taCenter
                HeaderGlyphAlignmentHorz = taCenter
                Options.Filtering = False
                Options.FilteringAddValueItems = False
                Options.FilteringFilteredItemsList = False
                Options.FilteringMRUItemsList = False
                Options.FilteringPopup = False
                Options.FilteringPopupMultiSelect = False
                Options.FilteringWithFindPanel = False
                Options.GroupFooters = False
                Options.Moving = False
                Width = 104
              end
              object cxGridDBTableView1Column9: TcxGridDBColumn
                Caption = 'Desc. R$'
                DataBinding.FieldName = 'DESCONTO'
                FooterAlignmentHorz = taCenter
                GroupSummaryAlignment = taCenter
                HeaderAlignmentHorz = taCenter
                HeaderGlyphAlignmentHorz = taCenter
                Options.Filtering = False
                Options.FilteringAddValueItems = False
                Options.FilteringFilteredItemsList = False
                Options.FilteringMRUItemsList = False
                Options.FilteringPopup = False
                Options.FilteringPopupMultiSelect = False
                Options.FilteringWithFindPanel = False
                Options.GroupFooters = False
                Options.Moving = False
                Width = 109
              end
              object cxGridDBTableView1Column10: TcxGridDBColumn
                Caption = 'Valor Pago'
                DataBinding.FieldName = 'PRECO_TOTAL'
                FooterAlignmentHorz = taCenter
                GroupSummaryAlignment = taCenter
                HeaderAlignmentHorz = taCenter
                HeaderGlyphAlignmentHorz = taCenter
                Options.Filtering = False
                Options.FilteringAddValueItems = False
                Options.FilteringFilteredItemsList = False
                Options.FilteringMRUItemsList = False
                Options.FilteringPopup = False
                Options.FilteringPopupMultiSelect = False
                Options.FilteringWithFindPanel = False
                Options.GroupFooters = False
                Options.Moving = False
                Width = 106
              end
            end
            object cxGridLevel1: TcxGridLevel
              GridView = cxGridDBTableView1
            end
          end
          object edQtdeItens: TEdit
            Left = 75
            Top = 252
            Width = 65
            Height = 26
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -15
            Font.Name = 'Tahoma'
            Font.Style = [fsBold]
            ParentFont = False
            TabOrder = 8
          end
          object edValorItens: TEdit
            Left = 401
            Top = 252
            Width = 108
            Height = 26
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -15
            Font.Name = 'Tahoma'
            Font.Style = [fsBold]
            ParentFont = False
            TabOrder = 9
          end
          object edDescontoGeral: TEdit
            Left = 804
            Top = 252
            Width = 108
            Height = 26
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -15
            Font.Name = 'Tahoma'
            Font.Style = [fsBold]
            ParentFont = False
            TabOrder = 10
          end
          object edValorLiquido: TEdit
            Left = 1130
            Top = 249
            Width = 108
            Height = 32
            Color = clYellow
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -20
            Font.Name = 'Tahoma'
            Font.Style = [fsBold]
            ParentFont = False
            TabOrder = 11
          end
        end
        object cxTabSheet2: TcxTabSheet
          Caption = 'Servi'#231'os'
          ImageIndex = 1
          object Label1: TLabel
            Left = 1103
            Top = 9
            Width = 45
            Height = 19
            Caption = 'CFOP:'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -16
            Font.Name = 'Tahoma'
            Font.Style = []
            ParentFont = False
          end
          object Label24: TLabel
            Left = 963
            Top = 9
            Width = 64
            Height = 19
            Caption = 'Unidade:'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -16
            Font.Name = 'Tahoma'
            Font.Style = []
            ParentFont = False
          end
          object Label35: TLabel
            Left = 763
            Top = 9
            Width = 87
            Height = 19
            Caption = 'Quantidade:'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -16
            Font.Name = 'Tahoma'
            Font.Style = []
            ParentFont = False
          end
          object Label36: TLabel
            Left = 606
            Top = 9
            Width = 43
            Height = 19
            Caption = 'Valor:'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -16
            Font.Name = 'Tahoma'
            Font.Style = []
            ParentFont = False
          end
          object Label37: TLabel
            Left = 204
            Top = 9
            Width = 73
            Height = 19
            Caption = 'Descri'#231#227'o:'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -16
            Font.Name = 'Tahoma'
            Font.Style = []
            ParentFont = False
          end
          object Label38: TLabel
            Left = 13
            Top = 9
            Width = 57
            Height = 19
            Caption = 'Servi'#231'o:'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -16
            Font.Name = 'Tahoma'
            Font.Style = []
            ParentFont = False
          end
          object Shape2: TShape
            Left = 65
            Top = 243
            Width = 1173
            Height = 1
            Brush.Color = clDefault
          end
          object Label39: TLabel
            Left = 13
            Top = 231
            Width = 46
            Height = 18
            Caption = 'Totais'
            Color = clRed
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clRed
            Font.Height = -15
            Font.Name = 'Tahoma'
            Font.Style = [fsBold]
            ParentColor = False
            ParentFont = False
          end
          object Label41: TLabel
            Left = 21
            Top = 257
            Width = 73
            Height = 19
            Caption = 'Servi'#231'os:'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -16
            Font.Name = 'Tahoma'
            Font.Style = [fsBold]
            ParentFont = False
          end
          object Label42: TLabel
            Left = 264
            Top = 257
            Width = 121
            Height = 19
            Caption = 'Valor Servi'#231'os:'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -16
            Font.Name = 'Tahoma'
            Font.Style = [fsBold]
            ParentFont = False
          end
          object Label43: TLabel
            Left = 669
            Top = 257
            Width = 130
            Height = 19
            Caption = 'Desconto Geral:'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -16
            Font.Name = 'Tahoma'
            Font.Style = [fsBold]
            ParentFont = False
          end
          object Label44: TLabel
            Left = 998
            Top = 255
            Width = 117
            Height = 23
            Caption = 'Valor Pagar:'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clRed
            Font.Height = -19
            Font.Name = 'Tahoma'
            Font.Style = [fsBold]
            ParentFont = False
          end
          object cxGrid2: TcxGrid
            Left = 13
            Top = 39
            Width = 1225
            Height = 187
            Font.Charset = ANSI_CHARSET
            Font.Color = clWindowText
            Font.Height = -11
            Font.Name = 'Tahoma'
            Font.Style = [fsBold]
            ParentFont = False
            TabOrder = 0
            LookAndFeel.NativeStyle = False
            LookAndFeel.SkinName = 'DevExpressStyle'
            object cxGridDBTableView2: TcxGridDBTableView
              Navigator.Buttons.CustomButtons = <>
              DataController.DetailKeyFieldNames = 'id'
              DataController.Summary.DefaultGroupSummaryItems = <>
              DataController.Summary.FooterSummaryItems = <>
              DataController.Summary.SummaryGroups = <>
              OptionsView.CellEndEllipsis = True
              OptionsView.NoDataToDisplayInfoText = '...'
              OptionsView.CellAutoHeight = True
              OptionsView.ColumnAutoWidth = True
              OptionsView.GroupByBox = False
              object cxGridDBColumn1: TcxGridDBColumn
                Caption = 'Item'
                DataBinding.FieldName = 'CODIGO_ITEM_VENDA'
                FooterAlignmentHorz = taCenter
                GroupSummaryAlignment = taCenter
                HeaderAlignmentHorz = taCenter
                HeaderGlyphAlignmentHorz = taCenter
                Options.Filtering = False
                Options.FilteringAddValueItems = False
                Options.FilteringFilteredItemsList = False
                Options.FilteringMRUItemsList = False
                Options.FilteringPopup = False
                Options.FilteringPopupMultiSelect = False
                Options.FilteringWithFindPanel = False
                Options.GroupFooters = False
                Options.Moving = False
                Width = 48
              end
              object cxGridDBColumn2: TcxGridDBColumn
                Caption = 'C'#243'digo'
                DataBinding.FieldName = 'CODIGO_PRODUTO'
                FooterAlignmentHorz = taCenter
                GroupSummaryAlignment = taCenter
                HeaderAlignmentHorz = taCenter
                HeaderGlyphAlignmentHorz = taCenter
                Options.Filtering = False
                Options.FilteringAddValueItems = False
                Options.FilteringFilteredItemsList = False
                Options.FilteringMRUItemsList = False
                Options.FilteringPopup = False
                Options.FilteringPopupMultiSelect = False
                Options.FilteringWithFindPanel = False
                Options.GroupFooters = False
                Options.Moving = False
                Width = 67
              end
              object cxGridDBColumn3: TcxGridDBColumn
                Caption = 'Descri'#231#227'o'
                DataBinding.FieldName = 'DESCRICAO'
                FooterAlignmentHorz = taCenter
                GroupSummaryAlignment = taCenter
                HeaderAlignmentHorz = taCenter
                HeaderGlyphAlignmentHorz = taCenter
                Options.Filtering = False
                Options.FilteringAddValueItems = False
                Options.FilteringFilteredItemsList = False
                Options.FilteringMRUItemsList = False
                Options.FilteringPopup = False
                Options.FilteringPopupMultiSelect = False
                Options.FilteringWithFindPanel = False
                Options.GroupFooters = False
                Options.Moving = False
                Width = 366
              end
              object cxGridDBColumn4: TcxGridDBColumn
                DataBinding.FieldName = 'CFOP'
                FooterAlignmentHorz = taCenter
                GroupSummaryAlignment = taCenter
                HeaderAlignmentHorz = taCenter
                HeaderGlyphAlignmentHorz = taCenter
                Width = 45
              end
              object cxGridDBColumn5: TcxGridDBColumn
                Caption = 'Unidade'
                DataBinding.FieldName = 'UNIDADE'
                FooterAlignmentHorz = taCenter
                GroupSummaryAlignment = taCenter
                HeaderAlignmentHorz = taCenter
                HeaderGlyphAlignmentHorz = taCenter
                Options.Filtering = False
                Options.FilteringAddValueItems = False
                Options.FilteringFilteredItemsList = False
                Options.FilteringMRUItemsList = False
                Options.FilteringPopup = False
                Options.FilteringPopupMultiSelect = False
                Options.FilteringWithFindPanel = False
                Options.GroupFooters = False
                Options.Moving = False
                Width = 59
              end
              object cxGridDBColumn6: TcxGridDBColumn
                Caption = 'Valor Und.'
                DataBinding.FieldName = 'PRECO'
                FooterAlignmentHorz = taCenter
                GroupSummaryAlignment = taCenter
                HeaderAlignmentHorz = taCenter
                HeaderGlyphAlignmentHorz = taCenter
                Options.Filtering = False
                Options.FilteringAddValueItems = False
                Options.FilteringFilteredItemsList = False
                Options.FilteringMRUItemsList = False
                Options.FilteringPopup = False
                Options.FilteringPopupMultiSelect = False
                Options.FilteringWithFindPanel = False
                Options.GroupFooters = False
                Options.Moving = False
                Width = 106
              end
              object cxGridDBColumn7: TcxGridDBColumn
                Caption = 'Quant.'
                DataBinding.FieldName = 'QUANTIDADE'
                FooterAlignmentHorz = taCenter
                GroupSummaryAlignment = taCenter
                HeaderAlignmentHorz = taCenter
                HeaderGlyphAlignmentHorz = taCenter
                Options.Filtering = False
                Options.FilteringAddValueItems = False
                Options.FilteringFilteredItemsList = False
                Options.FilteringMRUItemsList = False
                Options.FilteringPopup = False
                Options.FilteringPopupMultiSelect = False
                Options.FilteringWithFindPanel = False
                Options.GroupFooters = False
                Options.Moving = False
                Width = 107
              end
              object cxGridDBColumn8: TcxGridDBColumn
                Caption = 'Valor Total'
                DataBinding.FieldName = 'PRECO_TOTAL'
                FooterAlignmentHorz = taCenter
                GroupSummaryAlignment = taCenter
                HeaderAlignmentHorz = taCenter
                HeaderGlyphAlignmentHorz = taCenter
                Options.Filtering = False
                Options.FilteringAddValueItems = False
                Options.FilteringFilteredItemsList = False
                Options.FilteringMRUItemsList = False
                Options.FilteringPopup = False
                Options.FilteringPopupMultiSelect = False
                Options.FilteringWithFindPanel = False
                Options.GroupFooters = False
                Options.Moving = False
                Width = 106
              end
              object cxGridDBColumn9: TcxGridDBColumn
                Caption = 'Desc %'
                DataBinding.FieldName = 'rateio_desconto'
                FooterAlignmentHorz = taCenter
                GroupSummaryAlignment = taCenter
                HeaderAlignmentHorz = taCenter
                HeaderGlyphAlignmentHorz = taCenter
                Options.Filtering = False
                Options.FilteringAddValueItems = False
                Options.FilteringFilteredItemsList = False
                Options.FilteringMRUItemsList = False
                Options.FilteringPopup = False
                Options.FilteringPopupMultiSelect = False
                Options.FilteringWithFindPanel = False
                Options.GroupFooters = False
                Options.Moving = False
                Width = 104
              end
              object cxGridDBColumn10: TcxGridDBColumn
                Caption = 'Desc. R$'
                DataBinding.FieldName = 'DESCONTO'
                FooterAlignmentHorz = taCenter
                GroupSummaryAlignment = taCenter
                HeaderAlignmentHorz = taCenter
                HeaderGlyphAlignmentHorz = taCenter
                Options.Filtering = False
                Options.FilteringAddValueItems = False
                Options.FilteringFilteredItemsList = False
                Options.FilteringMRUItemsList = False
                Options.FilteringPopup = False
                Options.FilteringPopupMultiSelect = False
                Options.FilteringWithFindPanel = False
                Options.GroupFooters = False
                Options.Moving = False
                Width = 109
              end
              object cxGridDBColumn11: TcxGridDBColumn
                Caption = 'Valor Pago'
                DataBinding.FieldName = 'PRECO_TOTAL'
                FooterAlignmentHorz = taCenter
                GroupSummaryAlignment = taCenter
                HeaderAlignmentHorz = taCenter
                HeaderGlyphAlignmentHorz = taCenter
                Options.Filtering = False
                Options.FilteringAddValueItems = False
                Options.FilteringFilteredItemsList = False
                Options.FilteringMRUItemsList = False
                Options.FilteringPopup = False
                Options.FilteringPopupMultiSelect = False
                Options.FilteringWithFindPanel = False
                Options.GroupFooters = False
                Options.Moving = False
                Width = 106
              end
            end
            object cxGridLevel2: TcxGridLevel
              GridView = cxGridDBTableView2
            end
          end
          object Edit1: TEdit
            Left = 1157
            Top = 5
            Width = 81
            Height = 26
            CharCase = ecUpperCase
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -15
            Font.Name = 'Tahoma'
            Font.Style = [fsBold]
            ParentFont = False
            TabOrder = 1
          end
          object Edit2: TEdit
            Left = 857
            Top = 5
            Width = 95
            Height = 26
            CharCase = ecUpperCase
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -15
            Font.Name = 'Tahoma'
            Font.Style = [fsBold]
            ParentFont = False
            TabOrder = 2
          end
          object Edit3: TEdit
            Left = 657
            Top = 5
            Width = 95
            Height = 26
            CharCase = ecUpperCase
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -15
            Font.Name = 'Tahoma'
            Font.Style = [fsBold]
            ParentFont = False
            ReadOnly = True
            TabOrder = 3
          end
          object Edit4: TEdit
            Left = 283
            Top = 5
            Width = 314
            Height = 26
            CharCase = ecUpperCase
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -15
            Font.Name = 'Tahoma'
            Font.Style = [fsBold]
            ParentFont = False
            ReadOnly = True
            TabOrder = 4
          end
          object cxButton1: TcxButton
            Left = 166
            Top = 5
            Width = 27
            Height = 26
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
          object Edit5: TEdit
            Left = 81
            Top = 5
            Width = 79
            Height = 26
            CharCase = ecUpperCase
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -15
            Font.Name = 'Tahoma'
            Font.Style = [fsBold]
            ParentFont = False
            TabOrder = 6
          end
          object Edit6: TEdit
            Left = 99
            Top = 253
            Width = 65
            Height = 26
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -15
            Font.Name = 'Tahoma'
            Font.Style = [fsBold]
            ParentFont = False
            TabOrder = 7
          end
          object Edit7: TEdit
            Left = 401
            Top = 253
            Width = 108
            Height = 26
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -15
            Font.Name = 'Tahoma'
            Font.Style = [fsBold]
            ParentFont = False
            TabOrder = 8
          end
          object Edit8: TEdit
            Left = 804
            Top = 253
            Width = 108
            Height = 26
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -15
            Font.Name = 'Tahoma'
            Font.Style = [fsBold]
            ParentFont = False
            TabOrder = 9
          end
          object Edit9: TEdit
            Left = 1130
            Top = 250
            Width = 108
            Height = 32
            Color = clYellow
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -20
            Font.Name = 'Tahoma'
            Font.Style = [fsBold]
            ParentFont = False
            TabOrder = 10
          end
          object Edit10: TEdit
            Left = 1033
            Top = 5
            Width = 65
            Height = 26
            TabStop = False
            CharCase = ecUpperCase
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -15
            Font.Name = 'Tahoma'
            Font.Style = [fsBold]
            ParentFont = False
            ReadOnly = True
            TabOrder = 11
          end
        end
        object cxTabSheet3: TcxTabSheet
          Caption = 'T'#233'cnico'
          ImageIndex = 2
          object Label45: TLabel
            Left = 13
            Top = 9
            Width = 93
            Height = 19
            Caption = 'Respons'#225'vel:'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -16
            Font.Name = 'Tahoma'
            Font.Style = []
            ParentFont = False
          end
          object Label46: TLabel
            Left = 244
            Top = 9
            Width = 73
            Height = 19
            Caption = 'Descri'#231#227'o:'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -16
            Font.Name = 'Tahoma'
            Font.Style = []
            ParentFont = False
          end
          object Label47: TLabel
            Left = 664
            Top = 9
            Width = 88
            Height = 19
            Caption = 'Comis'#227'o %:'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -16
            Font.Name = 'Tahoma'
            Font.Style = []
            ParentFont = False
          end
          object Label48: TLabel
            Left = 840
            Top = 9
            Width = 83
            Height = 19
            Caption = 'Hora Trab.:'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -16
            Font.Name = 'Tahoma'
            Font.Style = []
            ParentFont = False
          end
          object Label49: TLabel
            Left = 1022
            Top = 9
            Width = 97
            Height = 19
            Caption = 'Minuto Trab.:'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -16
            Font.Name = 'Tahoma'
            Font.Style = []
            ParentFont = False
          end
          object Edit11: TEdit
            Left = 122
            Top = 5
            Width = 79
            Height = 26
            CharCase = ecUpperCase
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -15
            Font.Name = 'Tahoma'
            Font.Style = [fsBold]
            ParentFont = False
            TabOrder = 0
          end
          object cxButton2: TcxButton
            Left = 206
            Top = 5
            Width = 27
            Height = 26
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
            TabOrder = 1
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -11
            Font.Name = 'Tahoma'
            Font.Style = [fsBold]
            ParentFont = False
          end
          object Edit12: TEdit
            Left = 323
            Top = 5
            Width = 314
            Height = 26
            CharCase = ecUpperCase
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -15
            Font.Name = 'Tahoma'
            Font.Style = [fsBold]
            ParentFont = False
            ReadOnly = True
            TabOrder = 2
          end
          object cxGrid3: TcxGrid
            Left = 13
            Top = 39
            Width = 1225
            Height = 244
            Font.Charset = ANSI_CHARSET
            Font.Color = clWindowText
            Font.Height = -11
            Font.Name = 'Tahoma'
            Font.Style = [fsBold]
            ParentFont = False
            TabOrder = 3
            LookAndFeel.NativeStyle = False
            LookAndFeel.SkinName = 'DevExpressStyle'
            object cxGridDBTableView3: TcxGridDBTableView
              Navigator.Buttons.CustomButtons = <>
              DataController.DetailKeyFieldNames = 'id'
              DataController.Summary.DefaultGroupSummaryItems = <>
              DataController.Summary.FooterSummaryItems = <>
              DataController.Summary.SummaryGroups = <>
              OptionsView.CellEndEllipsis = True
              OptionsView.NoDataToDisplayInfoText = '...'
              OptionsView.CellAutoHeight = True
              OptionsView.ColumnAutoWidth = True
              OptionsView.GroupByBox = False
              object cxGridDBColumn12: TcxGridDBColumn
                Caption = 'C'#243'digo'
                DataBinding.FieldName = 'CODIGO_ITEM_VENDA'
                FooterAlignmentHorz = taCenter
                GroupSummaryAlignment = taCenter
                HeaderAlignmentHorz = taCenter
                HeaderGlyphAlignmentHorz = taCenter
                Options.Filtering = False
                Options.FilteringAddValueItems = False
                Options.FilteringFilteredItemsList = False
                Options.FilteringMRUItemsList = False
                Options.FilteringPopup = False
                Options.FilteringPopupMultiSelect = False
                Options.FilteringWithFindPanel = False
                Options.GroupFooters = False
                Options.Moving = False
                Width = 50
              end
              object cxGridDBColumn13: TcxGridDBColumn
                Caption = 'C'#243'digo'
                DataBinding.FieldName = 'CODIGO_PRODUTO'
                FooterAlignmentHorz = taCenter
                GroupSummaryAlignment = taCenter
                HeaderAlignmentHorz = taCenter
                HeaderGlyphAlignmentHorz = taCenter
                Options.Filtering = False
                Options.FilteringAddValueItems = False
                Options.FilteringFilteredItemsList = False
                Options.FilteringMRUItemsList = False
                Options.FilteringPopup = False
                Options.FilteringPopupMultiSelect = False
                Options.FilteringWithFindPanel = False
                Options.GroupFooters = False
                Options.Moving = False
                Width = 67
              end
              object cxGridDBColumn14: TcxGridDBColumn
                Caption = 'Respons'#225'vel'
                DataBinding.FieldName = 'DESCRICAO'
                FooterAlignmentHorz = taCenter
                GroupSummaryAlignment = taCenter
                HeaderAlignmentHorz = taCenter
                HeaderGlyphAlignmentHorz = taCenter
                Options.Filtering = False
                Options.FilteringAddValueItems = False
                Options.FilteringFilteredItemsList = False
                Options.FilteringMRUItemsList = False
                Options.FilteringPopup = False
                Options.FilteringPopupMultiSelect = False
                Options.FilteringWithFindPanel = False
                Options.GroupFooters = False
                Options.Moving = False
                Width = 366
              end
              object cxGridDBColumn15: TcxGridDBColumn
                Caption = 'Hora Trab.'
                DataBinding.FieldName = 'CFOP'
                FooterAlignmentHorz = taCenter
                GroupSummaryAlignment = taCenter
                HeaderAlignmentHorz = taCenter
                HeaderGlyphAlignmentHorz = taCenter
                Width = 45
              end
              object cxGridDBColumn16: TcxGridDBColumn
                Caption = 'Minuto Trab.'
                DataBinding.FieldName = 'UNIDADE'
                FooterAlignmentHorz = taCenter
                GroupSummaryAlignment = taCenter
                HeaderAlignmentHorz = taCenter
                HeaderGlyphAlignmentHorz = taCenter
                Options.Filtering = False
                Options.FilteringAddValueItems = False
                Options.FilteringFilteredItemsList = False
                Options.FilteringMRUItemsList = False
                Options.FilteringPopup = False
                Options.FilteringPopupMultiSelect = False
                Options.FilteringWithFindPanel = False
                Options.GroupFooters = False
                Options.Moving = False
                Width = 59
              end
              object cxGridDBColumn17: TcxGridDBColumn
                Caption = 'Comiss'#227'o %'
                DataBinding.FieldName = 'PRECO'
                FooterAlignmentHorz = taCenter
                GroupSummaryAlignment = taCenter
                HeaderAlignmentHorz = taCenter
                HeaderGlyphAlignmentHorz = taCenter
                Options.Filtering = False
                Options.FilteringAddValueItems = False
                Options.FilteringFilteredItemsList = False
                Options.FilteringMRUItemsList = False
                Options.FilteringPopup = False
                Options.FilteringPopupMultiSelect = False
                Options.FilteringWithFindPanel = False
                Options.GroupFooters = False
                Options.Moving = False
                Width = 106
              end
            end
            object cxGridLevel3: TcxGridLevel
              GridView = cxGridDBTableView3
            end
          end
          object Edit13: TEdit
            Left = 758
            Top = 5
            Width = 66
            Height = 26
            CharCase = ecUpperCase
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -15
            Font.Name = 'Tahoma'
            Font.Style = [fsBold]
            ParentFont = False
            ReadOnly = True
            TabOrder = 4
          end
          object Edit14: TEdit
            Left = 934
            Top = 5
            Width = 66
            Height = 26
            CharCase = ecUpperCase
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -15
            Font.Name = 'Tahoma'
            Font.Style = [fsBold]
            ParentFont = False
            ReadOnly = True
            TabOrder = 5
          end
          object Edit15: TEdit
            Left = 1132
            Top = 5
            Width = 66
            Height = 26
            CharCase = ecUpperCase
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -15
            Font.Name = 'Tahoma'
            Font.Style = [fsBold]
            ParentFont = False
            ReadOnly = True
            TabOrder = 6
          end
          object cxButton3: TcxButton
            Left = 1211
            Top = 5
            Width = 27
            Height = 26
            Caption = '-'
            LookAndFeel.NativeStyle = False
            LookAndFeel.SkinName = 'Metropolis'
            OptionsImage.Glyph.Data = {
              36040000424D3604000000000000360000002800000010000000100000000100
              2000000000000004000000000000000000000000000000000000000000000000
              0000000000020000000A170D0738542D1894814626D193502AEA924F2AE87F45
              25D0522C17931209053000000009000000010000000000000000000000000000
              00030201011159311B97A96239FAC58957FFD6A36DFFDDAF75FFDDAF74FFD6A4
              6BFFC58956FFA46137F53C2112730000000F0000000300000000000000020201
              0110744226B9BC7C4DFFDDAE77FFDEB076FFE2B782FFE3BB87FFE3BC86FFE1B7
              82FFDEAF74FFDBAB72FFBD7E4EFF6F3E24B50000001000000002000000085C36
              2095BE8053FFE0B37CFFDFB076FFDEB177FFB78254FFAA7144FFAB7245FFBC88
              59FFDFB279FFDFB277FFDEB077FFC08253FF55321D920000000A190F0932B070
              47FADFB27DFFDFB27AFFE0B37BFFE0B57DFFA56B3FFFF5EFEAFFF8F3EEFFAB72
              45FFE2B67EFFE0B47CFFE0B47BFFDEB079FFB3734AFB130B072F613C2795CD9B
              6FFFE2B780FFE5BD89FFE7C291FFE8C393FFA56B3FFFF1E6DEFFF9F5F1FFAA71
              44FFE8C494FFE8C393FFE5BF8CFFE1B77FFFD09C6EFF5434218B935E3DD2DCB3
              83FFE3B781FFBA8659FFA97043FFAB7245FFAC7346FFF5EDE6FFFAF6F3FFAD75
              47FFB0784AFFB17A4BFFC29162FFE4B983FFDEB17EFF8E5B3BD0B0744CF2E3BF
              8FFFE4BB84FFA56B3FFFF3EBE6FFFAF6F3FFF6EFE8FFF7F0EAFFFBF7F5FFFAF7
              F4FFFAF7F3FFFAF6F2FFAB7245FFE5BD87FFE5BE8BFFAB714CEEAE764FECE9C9
              A0FFE5BE89FFA56B3FFFE0D2CAFFE1D3CCFFE3D5CFFFF2EAE4FFF8F3EFFFEADF
              D9FFE6DAD4FFE9DED9FFAA7144FFE7C08CFFEACA9DFFAE764FEE9A6A49D0E9CD
              ACFFEAC796FFB78456FFA56B3FFFA56B3FFFA56B3FFFF1EAE5FFFAF6F3FFA56B
              3FFFA56B3FFFA56B3FFFB78457FFEACA99FFEBD1ADFF996A49D46E4E3697DDBB
              9DFFEED3A9FFEECFA2FFEED2A5FFF0D6A9FFA56B3FFFF0EAE7FFFDFCFBFFA56B
              3FFFF1D6AAFFF0D5A8FFEED2A5FFEFD4A7FFE0C2A2FF6246318F1C140E2BC794
              6CFCF5E8CCFFEFD6ABFFF1D8AEFFF2DAB0FFA56B3FFFDECFC9FFDFD1CBFFA56B
              3FFFF3DCB2FFF1DBB0FFF1D8ADFFF7EACDFFC69470FA1A120D2E000000036F52
              3C92D7B08CFFF8EFD3FFF3E0B9FFF3DFB7FFB98A5FFFA56B3FFFA56B3FFFBA8A
              5FFFF4E1B9FFF4E2BDFFFAF1D5FFD9B390FF664B368C00000006000000010202
              0107906C4EB8D9B38FFFF7EDD3FFF8EED0FFF7EBC9FFF6E8C4FFF6E8C5FFF7EC
              CAFFF8EED0FFF4E8CDFFD7AF8BFF88664AB30202010B00000001000000000000
              00010202010770543F8FCFA078FCE2C4A2FFEBD7B8FFF4E9CDFFF4EACEFFECD8
              B9FFE3C5A3FFC59973F24C392A67000000060000000100000000000000000000
              000000000001000000022019122C6C543E89A47E5FCCC59770F1C19570EEA47E
              60CD6C543F8B16110D2200000003000000010000000000000000}
            PaintStyle = bpsGlyph
            TabOrder = 7
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -11
            Font.Name = 'Tahoma'
            Font.Style = [fsBold]
            ParentFont = False
          end
        end
      end
      object cxButton4: TcxButton
        Left = 884
        Top = 167
        Width = 140
        Height = 43
        Caption = 'Dados'#13'Ve'#237'culos'
        LookAndFeel.NativeStyle = False
        LookAndFeel.SkinName = 'Metropolis'
        OptionsImage.Glyph.Data = {
          36100000424D3610000000000000360000002800000020000000200000000100
          2000000000000010000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000002F20
          294A946683ED9F6C8DFF936683EC2E1F29490000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000002F20294A946683ED9F6C8DFF936683EC2E1F2949000000000000
          0000000000000000000000000000000000000000000000000000000000009466
          83ED99868BFF988E8BFF9A868CFF936683EC0000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          000000000000946683ED99868BFF988E8BFF9A868CFF936683EC000000000000
          0000000000000000000000000000000000000000000000000000000000009F6C
          8DFF988E8BFF988E8BFF988E8BFF9F6C8DFF0000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000009F6C8DFF988E8BFF988E8BFF988E8BFF9F6C8DFF000000000000
          0000000000000000000000000000000000000000000000000000000000009F6C
          8DFF9F6C8DFF9F6C8DFF9F6C8DFF9F6C8DFF9F6C8DFF9F6C8DFF9F6C8DFF9F6C
          8DFF9F6C8DFF9F6C8DFF9F6C8DFF9F6C8DFF9F6C8DFF9F6C8DFF9F6C8DFF9F6C
          8DFF9F6C8DFF9F6C8DFF9F6C8DFF9F6C8DFF9F6C8DFF9F6C8DFF000000000000
          0000000000000000000000000000000000000000000000000000000000009F6C
          8DFF9978EDFF9978EDFF9978EDFF9978EDFF9978EDFF9978EDFF9978EDFF9978
          EDFF9978EDFF9978EDFF9978EDFF9978EDFF9978EDFF9978EDFF9978EDFF9978
          EDFF9978EDFF9978EDFF9978EDFF9978EDFF9978EDFF9F6C8DFF000000000000
          0000000000000000000000000000000000000000000000000000000000009F6C
          8DFF9978EDFF9F74A4FF9F6C8DFF9F6C8DFF9F6C8DFF9F74A4FF9978EDFF9978
          EDFF9978EDFF9978EDFF9978EDFF9978EDFF9978EDFF9978EDFF9978EDFF9F74
          A4FF9F6C8DFF9F6C8DFF9F6C8DFF9F74A4FF9978EDFF9F6C8DFF2F20294A9466
          83ED9F6C8DFF936683EC2E1F2949000000000000000000000000000000009F6C
          8DFF9F7DF0FF9F6C8DFFB5DEF0FFB2CEE2FFAFBED4FF9F6E91FF9F7DF0FF9F6E
          98FF9F6C8DFF9F6C8DFF9F6C8DFF9F6C8DFF9F6C8DFF9F6E95FF9F7DEEFF9F6E
          91FFAFBED4FFB2CEE2FFB5DEF0FF9F6C8DFF9F7DF0FF9F6C8DFF946683ED9986
          8BFF988E8BFF9A868CFF936683EC000000000000000000000000000000009E6C
          8CFEA582F2FFA277ACFFA1749AFFA178A7FFA279B3FFA47CD2FFA583F2FFA583
          F2FFA583F2FFA583F2FFA583F2FFA583F2FFA583F2FFA583F2FFA583F2FFA47C
          D2FFA279B3FFA178A7FFA1749AFFA278ABFFA582F2FF9E6C8CFE9F6C8DFF988E
          8BFF988E8BFF988E8BFF9F6C8DFF000000000000000000000000000000009666
          89EFA481E6FFA583F2FFA583F2FFA583F2FFA583F2FFA583F2FFA583F2FFA583
          F2FFA583F2FFA583F2FFA583F2FFA583F2FFA583F2FFA583F2FFA583F2FFA583
          F2FFA583F2FFA583F2FFA583F2FFA583F2FFA480E6FF97688BF29F6C8DFF9F6C
          8DFF9F6C8DFF9F6C8DFF9F6C8DFF9F6C8DFF9F6C8DFF9F6C8DFF9F6C8DFF9F6C
          8DFFA179C0FEA583F2FFA583F2FFA583F2FFA583F2FFA583F2FFA583F2FFA583
          F2FFA583F2FFA583F2FFA583F2FFA583F2FFA583F2FFA583F2FFA583F2FFA583
          F2FFA583F2FFA583F2FFA583F2FFA583F2FFA077BFFD6F4C69B19F6C8DFF97D3
          F6FF97D3F6FF97D3F6FF97D3F6FF97D3F6FF97D3F6FF97D3F6FF97D3F6FF98C6
          E8FF9F7195FFA37DD7FFA77BB5FFA57594FF9F6C8DFF9F6C8DFF9F6C8DFF9F6C
          8DFF9F6C8DFF9F6C8DFF9F6C8DFF9F6C8DFF9F6C8DFF9F6C8DFF9F6C8DFF9F6C
          8DFF9F6C8DFFA57493FFA478B4FFA47DD7FF9A698BF5150E13229F6C8DFF97D3
          F6FF9BA3C5FF9B9CBEFF9BA2C3FF97D1F5FF9BA3C4FF9B9CBEFF9B9CBEFF9B9C
          BEFF9D80A0FF9F6C8EFFC49CA8FFEFDACDFFFEEED9FFFAE0C0FFF9DEBCFFFDE9
          D1FFFFF0DEFFFFF0DEFFFDE9D1FFF9DEBCFFB6899AFFCDAAB1FFF6E3D6FFCCAA
          B3FFB78DA2FFF2DED3FFCDACB3FF9F6C8EFF48314173000000009F6C8DFFAEE3
          F9FFA8B0CBFFA7ABC7FFA8AECAFFAEE2F8FFA8B1CCFFA7ABC7FFA7ABC7FFA7AB
          C7FFA7ABC7FFA37798FFE6C7B2FFFAE0BFFFFEEED9FFFEEED9FFFAE0C0FFF9DE
          BCFFFDE9D1FFFFF0DEFFFFF0DEFFFDE9D2FFEED0B6FFB68899FFA37190FFB78D
          A2FFF3E0D4FFFFF0DEFFE9D2CCFF9E708DF302020204000000009E6C8CFEAEE2
          F9FFAEE3F9FFAEE3F9FFAEE3F9FFAEE3F9FFAEE3F9FFAEE3F9FFAEE3F9FFAEE3
          F9FFAEE3F9FFA6A9C5FFBF95A5FFF9DEBBFFFAE0BFFFFEEED9FFFEEEDAFFFAE0
          C0FFF9DEBBFFFDE9D0FFFFF0DEFFFFF0DEFFFDEAD2FFF9DFBBFFFAE0BFFFFEEE
          D9FFFFF0DEFFFFF0DEFFC49FABFF52384A820000000000000000966A89EFACD6
          EDFFAEE3F9FFAEE3F9FFAEE3F9FFAEE3F9FFAEE3F9FFAEE3F9FFAEE3F9FFAEE3
          F9FFAEE3F9FFACD5ECFFA27293FFF7DCBAFFF9DEBBFFFAE0BFFFFEEED9FFFEEE
          DAFFFAE0C0FFF9DEBBFFFDE9D0FFFFF0DEFFFFF0DEFFFDEAD2FFF9DFBBFFFAE0
          BFFFFEEED9FFFCECDCFFA37191FE9E6C8CFD785669C004030407694B5FA7A3A6
          C0FAAEE3F9FFAEE3F9FFAEE3F9FFAEE3F9FFAEE3F9FFAEE3F9FFAEE3F9FFAEE3
          F9FFAEE3F9FFAEE3F9FFA283A7FFD6B3B0FFF9DEBBFFF9DEBBFFFAE0BFFFFEEE
          D9FFFEEDDAFFA97993FF9F6C8DFFA77692FFFDEDDDFFFFF0DEFFFDEAD2FFF9DF
          BBFFFAE0BFFFDEC2C0FF9F7593FF988D8BFF9D778BFE3D2A3662150E13229A6D
          8CF5AAC4DDFFA89EB8FFA37694FF9F6C8DFF9F6C8DFF9F6C8DFF9F6C8DFF9F6C
          8DFF9F6C8DFFC2B7BEFFC2B6BEFFA7789AFFEDCEB5FFF9DEBBFFF9DEBBFFFAE0
          C0FFFEEED9FFFEEED9FFFAE0C0FFF9DEBCFFFDE9D1FFFFF0DEFFFFF0DEFFFDE9
          D2FFEDCEB6FFA57698FF9A828CFF988E8BFF9B7D8CFF50364780000000004731
          40719F6C8EFFC3A2A8FFEBCDB4FFF9DEBBFFF9DEBBFFF9DEBBFFF9DEBBFFF9DE
          BBFFF9DEBBFFF9DEBBFFF9DDBBFFC8A0A5FFA47291FF9F6C8DFF9F6C8DFF9F6C
          8DFF9F6C8DFF9F6C8DFF9F6C8DFF9F6C8DFF9F6C8DFF9F6C8DFF9F6C8DFF9F6C
          8DFFA17290FFA18B8AFFA4AD7FFFA4AE7EFFA18D85FF50364780000000000201
          02039A6E8AEFE6C7B2FFF9DEBBFFF9DEBBFFF9DEBBFFF9DEBBFFF9DEBBFFF9DE
          BBFFF9DEBBFFF9DEBBFFF9DEBBFFF9DEBBFFF9DEBBFFF9DEBBFFF9DEBBFFF9DE
          BBFFF9DEBBFFE4C5B0FFA1788EFAAFC973FFAFCA72FFAFCA72FFAFCA72FFAFCA
          72FFAFCA72FFAFCA72FFAFCA72FFAFCA72FFA79B7FFF50364780000000000000
          0000543C4C84C49CA1FFF9DEBBFFF9DEBBFFF9DEBBFFF9DEBBFFF9DEBBFFF9DE
          BBFFF9DEBBFFF9DEBBFFF9DEBBFFF9DEBBFFF9DEBBFFF9DEBBFFF9DEBBFFF9DE
          BBFFF9DEBBFFBE9BA3FFA27E89FFA79880FFA79880FFA79880FFA89D7FFFAFC9
          73FFA89F7EFFA79880FFA79D7EFFAFC972FFA79B7FFF50364780000000000000
          0000140E1220A2738FFCF7DCBAFFF9DEBBFFF9DEBBFFF9DEBBFFF9DEBBFFF9DE
          BBFFF9DEBBFFF9DEBBFFF9DEBBFFF9DEBBFFF9DEBBFFF9DEBBFFF9DEBBFFF9DE
          BBFFF6DBBAFFA27490FFA89B80FFA79E7FFFA79E7FFFA79E7FFFA7A07DFFAFC9
          73FFA8A27DFFA79E7FFFA8A07EFFAFC972FFA79B7FFF50364780000000000000
          000000000000936C83DFDDBAACFFF9DEBBFFF9DEBBFFF9DEBBFFF9DEBBFFF9DD
          BBFFA97893FF9F6C8DFFA77591FFF7DCBAFFF9DEBBFFF9DEBBFFF9DEBBFFF9DE
          BBFFD7BAB1FFA3848EFFAFCA72FFAFCA72FFAFCA72FFAFCA72FFAFCA72FFAFCA
          72FFAFCA72FFAFCA72FFAFCA72FFAFCA72FFA69A7FFE4E35457D000000000000
          0000000000003E2C3762AC7E95FEEDCEB5FFF9DEBBFFF9DEBBFFF9DEBBFFF9DE
          BBFFF9DEBBFFF9DEBBFFF9DEBBFFF9DEBBFFF9DEBBFFF9DEBBFFF9DEBBFFEDCE
          B5FFA77F98FFAAA97CFFAFCA72FFAFCA72FFAFCA72FFAFCA72FFAFCA72FFAFCA
          72FFAFCA72FFAFCA72FFAFCA72FFAFCA72FF9C837EF33927335C000000000000
          0000000000000101010263495A989E6F8DFA9F6C8DFF9F6C8DFF9F6C8DFF9F6C
          8DFF9F6C8DFF9F6C8DFF9F6C8DFF9F6C8DFF9F6C8DFF9F6C8DFF9F6C8DFFA273
          90FFB99F96FFD7D399FFA77B8FFF9F6C8DFF9F6C8DFF9F6C8DFF9F6C8DFF9F6C
          8DFF9F6C8DFFA3748DFFA69283FFABB479FF996B86F40F0A0D18000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          00000000000063485495B28796FEF9DDBBFFF9DEBBFFF9DEBBFFF9DEBBFFF9DE
          BBFFF9DEBBFFF9DEBBFFF9DEBBFFF9DEBBFFF9DEBBFFF9DEBBFFF9DEBBFFF9DE
          BBFFF9DEBBFFECCEB5FFC7A39FFF9F6D8CFF5139478100000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          00000000000002010203966B82E9E0BEAEFFF9DEBBFFF9DEBBFFF9DEBBFFF9DE
          BBFFF9DEBBFFF9DEBBFFF9DEBBFFF9DEBBFFF9DEBBFFF9DEBBFFF9DEBBFFF9DE
          BBFFF9DEBBFFF9DEBBFFE1BFAEFF966B82E80201020300000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          000000000000000000003E2A3764B38A95FDF9DEBBFFD3ADA7FFD3ADA7FFF9DE
          BBFFAC7C94FFF9DEBBFFD3ADA7FFD3ADA7FFF9DEBBFFAC7C94FFF9DEBBFFD3AD
          A7FFD3ADA7FFF9DEBBFFB38A95FD3D2A37620000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          00000000000000000000040304079D6F8AF6E9C9B2FFD3ADA7FFD3ADA7FFF9DE
          BBFFAC7C94FFF9DEBBFFD3ADA7FFD3ADA7FFF9DEBBFFAC7C94FFF9DEBBFFD3AD
          A7FFD3ADA7FFEBCDB4FF9E6E89F6050304080000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000533B4882B28796FEF1D3B6FFF9DEBBFFF9DE
          BBFFF9DEBBFFF9DEBBFFF9DEBBFFF9DEBBFFF9DEBBFFF9DEBBFFF9DEBBFFF9DE
          BBFFF1D4B7FFB28795FE533B4882000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000040303066E5060AB9F6E8BFC9F6C8DFF9F6C
          8DFF9F6C8DFF9F6C8DFF9F6C8DFF9F6C8DFF9F6C8DFF9F6C8DFF9F6C8DFF9F6C
          8DFF9F6D8CFC6D4F5EA904030306000000000000000000000000000000000000
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
        OnClick = cxButton4Click
      end
      object BtnGravar: TcxButton
        Left = 884
        Top = 84
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
        TabOrder = 4
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'HelveticaNeue'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object BtnIncluir: TcxButton
        Left = 884
        Top = 84
        Width = 108
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
        TabOrder = 5
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'HelveticaNeue'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object BtnCancelar: TcxButton
        Left = 1027
        Top = 84
        Width = 108
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
        TabOrder = 6
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'HelveticaNeue'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object BtnAlterar: TcxButton
        Left = 1165
        Top = 84
        Width = 108
        Height = 43
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
        TabOrder = 7
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'HelveticaNeue'
        Font.Style = [fsBold]
        Font.Quality = fqDraft
        ParentFont = False
      end
    end
  end
  object SQL_MECANICA: TFDQuery
    Connection = Module.connection
    SQL.Strings = (
      'select * from OS_MECANICA'
      'where CODIGO LIKE :pcodigo')
    Left = 152
    Top = 720
    ParamData = <
      item
        Name = 'PCODIGO'
        DataType = ftString
        ParamType = ptInput
        Value = '0'
      end>
    object SQL_MECANICACODIGO: TFDAutoIncField
      FieldName = 'CODIGO'
      Origin = 'CODIGO'
      ProviderFlags = [pfInWhere, pfInKey]
    end
    object SQL_MECANICAN_PEDIDO: TIntegerField
      AutoGenerateValue = arDefault
      FieldName = 'N_PEDIDO'
      Origin = 'N_PEDIDO'
    end
    object SQL_MECANICADATA_PEDIDO: TDateField
      AutoGenerateValue = arDefault
      FieldName = 'DATA_PEDIDO'
      Origin = 'DATA_PEDIDO'
    end
    object SQL_MECANICATIPO_OS: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'TIPO_OS'
      Origin = 'TIPO_OS'
      Size = 100
    end
    object SQL_MECANICANATUREZA_OP: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'NATUREZA_OP'
      Origin = 'NATUREZA_OP'
      Size = 10
    end
    object SQL_MECANICACFOP: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'CFOP'
      Origin = 'CFOP'
      Size = 5
    end
    object SQL_MECANICAVENDEDOR: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'VENDEDOR'
      Origin = 'VENDEDOR'
      Size = 50
    end
    object SQL_MECANICACLIENTE_COD: TIntegerField
      AutoGenerateValue = arDefault
      FieldName = 'CLIENTE_COD'
      Origin = 'CLIENTE_COD'
    end
    object SQL_MECANICACLIENTE_RAZAO_SOCIAL: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'CLIENTE_RAZAO_SOCIAL'
      Origin = 'CLIENTE_RAZAO_SOCIAL'
      Size = 50
    end
    object SQL_MECANICACLIENTE_CNPJ_CPF: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'CLIENTE_CNPJ_CPF'
      Origin = 'CLIENTE_CNPJ_CPF'
    end
    object SQL_MECANICACONTATO: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'CONTATO'
      Origin = 'CONTATO'
      Size = 50
    end
    object SQL_MECANICACELULAR: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'CELULAR'
      Origin = 'CELULAR'
    end
    object SQL_MECANICACLIENTE_COD_ENDERECO: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'CLIENTE_COD_ENDERECO'
      Origin = 'CLIENTE_COD_ENDERECO'
      Size = 50
    end
    object SQL_MECANICACLIENTE_COD_T_ENDERECO: TIntegerField
      AutoGenerateValue = arDefault
      FieldName = 'CLIENTE_COD_T_ENDERECO'
      Origin = 'CLIENTE_COD_T_ENDERECO'
    end
    object SQL_MECANICAPRODUTO_COD: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'PRODUTO_COD'
      Origin = 'PRODUTO_COD'
      Size = 50
    end
    object SQL_MECANICAPRODUTO_DESC: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'PRODUTO_DESC'
      Origin = 'PRODUTO_DESC'
      Size = 50
    end
    object SQL_MECANICAPRODUTO_VALOR: TIntegerField
      AutoGenerateValue = arDefault
      FieldName = 'PRODUTO_VALOR'
      Origin = 'PRODUTO_VALOR'
    end
    object SQL_MECANICAPRODUTO_QNT: TIntegerField
      AutoGenerateValue = arDefault
      FieldName = 'PRODUTO_QNT'
      Origin = 'PRODUTO_QNT'
    end
    object SQL_MECANICAPRODUTO_UND: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'PRODUTO_UND'
      Origin = 'PRODUTO_UND'
      Size = 50
    end
    object SQL_MECANICAPRODUTO_CFOP: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'PRODUTO_CFOP'
      Origin = 'PRODUTO_CFOP'
      Size = 10
    end
    object SQL_MECANICAPRODUTO_ITENS: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'PRODUTO_ITENS'
      Origin = 'PRODUTO_ITENS'
      Size = 10
    end
    object SQL_MECANICAPRODUTO_V_PRODUTOS: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'PRODUTO_V_PRODUTOS'
      Origin = 'PRODUTO_V_PRODUTOS'
      Size = 5
    end
    object SQL_MECANICAPRODUTO_DESCONTO_GERAL: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'PRODUTO_DESCONTO_GERAL'
      Origin = 'PRODUTO_DESCONTO_GERAL'
      Size = 50
    end
    object SQL_MECANICAPRODUTO_V_PAGAR: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'PRODUTO_V_PAGAR'
      Origin = 'PRODUTO_V_PAGAR'
    end
  end
  object DT_VEICULOS: TDataSource
    DataSet = SQL_MECANICA
    Left = 152
    Top = 776
  end
  object DT_LISTA: TDataSource
    DataSet = SQL_LISTA
    Left = 248
    Top = 776
  end
  object SQL_LISTA: TFDQuery
    Connection = Module.connection
    SQL.Strings = (
      'select * from OS_MECANICA')
    Left = 248
    Top = 720
    object SQL_LISTACODIGO: TFDAutoIncField
      FieldName = 'CODIGO'
      Origin = 'CODIGO'
      ProviderFlags = [pfInWhere, pfInKey]
    end
    object SQL_LISTAN_PEDIDO: TIntegerField
      AutoGenerateValue = arDefault
      FieldName = 'N_PEDIDO'
      Origin = 'N_PEDIDO'
    end
    object SQL_LISTADATA_PEDIDO: TDateField
      AutoGenerateValue = arDefault
      FieldName = 'DATA_PEDIDO'
      Origin = 'DATA_PEDIDO'
    end
    object SQL_LISTATIPO_OS: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'TIPO_OS'
      Origin = 'TIPO_OS'
      Size = 100
    end
    object SQL_LISTANATUREZA_OP: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'NATUREZA_OP'
      Origin = 'NATUREZA_OP'
      Size = 10
    end
    object SQL_LISTACFOP: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'CFOP'
      Origin = 'CFOP'
      Size = 5
    end
    object SQL_LISTAVENDEDOR: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'VENDEDOR'
      Origin = 'VENDEDOR'
      Size = 50
    end
    object SQL_LISTACLIENTE_COD: TIntegerField
      AutoGenerateValue = arDefault
      FieldName = 'CLIENTE_COD'
      Origin = 'CLIENTE_COD'
    end
    object SQL_LISTACLIENTE_RAZAO_SOCIAL: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'CLIENTE_RAZAO_SOCIAL'
      Origin = 'CLIENTE_RAZAO_SOCIAL'
      Size = 50
    end
    object SQL_LISTACLIENTE_CNPJ_CPF: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'CLIENTE_CNPJ_CPF'
      Origin = 'CLIENTE_CNPJ_CPF'
    end
    object SQL_LISTACONTATO: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'CONTATO'
      Origin = 'CONTATO'
      Size = 50
    end
    object SQL_LISTACELULAR: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'CELULAR'
      Origin = 'CELULAR'
    end
    object SQL_LISTACLIENTE_COD_ENDERECO: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'CLIENTE_COD_ENDERECO'
      Origin = 'CLIENTE_COD_ENDERECO'
      Size = 50
    end
    object SQL_LISTACLIENTE_COD_T_ENDERECO: TIntegerField
      AutoGenerateValue = arDefault
      FieldName = 'CLIENTE_COD_T_ENDERECO'
      Origin = 'CLIENTE_COD_T_ENDERECO'
    end
    object SQL_LISTAPRODUTO_COD: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'PRODUTO_COD'
      Origin = 'PRODUTO_COD'
      Size = 50
    end
    object SQL_LISTAPRODUTO_DESC: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'PRODUTO_DESC'
      Origin = 'PRODUTO_DESC'
      Size = 50
    end
    object SQL_LISTAPRODUTO_VALOR: TIntegerField
      AutoGenerateValue = arDefault
      FieldName = 'PRODUTO_VALOR'
      Origin = 'PRODUTO_VALOR'
    end
    object SQL_LISTAPRODUTO_QNT: TIntegerField
      AutoGenerateValue = arDefault
      FieldName = 'PRODUTO_QNT'
      Origin = 'PRODUTO_QNT'
    end
    object SQL_LISTAPRODUTO_UND: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'PRODUTO_UND'
      Origin = 'PRODUTO_UND'
      Size = 50
    end
    object SQL_LISTAPRODUTO_CFOP: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'PRODUTO_CFOP'
      Origin = 'PRODUTO_CFOP'
      Size = 10
    end
    object SQL_LISTAPRODUTO_ITENS: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'PRODUTO_ITENS'
      Origin = 'PRODUTO_ITENS'
      Size = 10
    end
    object SQL_LISTAPRODUTO_V_PRODUTOS: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'PRODUTO_V_PRODUTOS'
      Origin = 'PRODUTO_V_PRODUTOS'
      Size = 5
    end
    object SQL_LISTAPRODUTO_DESCONTO_GERAL: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'PRODUTO_DESCONTO_GERAL'
      Origin = 'PRODUTO_DESCONTO_GERAL'
      Size = 50
    end
    object SQL_LISTAPRODUTO_V_PAGAR: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'PRODUTO_V_PAGAR'
      Origin = 'PRODUTO_V_PAGAR'
    end
  end
  object sql_increment: TFDQuery
    Connection = Module.connection
    SQL.Strings = (
      'SELECT AUTO_INCREMENT'
      'FROM information_schema.TABLES'
      'WHERE TABLE_SCHEMA = "smc_automacao"'
      'AND TABLE_NAME = "OS_MECANICA"')
    Left = 352
    Top = 728
    object sql_incrementAUTO_INCREMENT: TLargeintField
      AutoGenerateValue = arDefault
      FieldName = 'AUTO_INCREMENT'
      Origin = 'AUTO_INCREMENT'
    end
  end
  object dt_increment: TDataSource
    DataSet = sql_increment
    Left = 352
    Top = 784
  end
end
