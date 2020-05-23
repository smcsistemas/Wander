object fmr_arquivos_fiscais: Tfmr_arquivos_fiscais
  Left = 0
  Top = 0
  BorderIcons = [biSystemMenu]
  BorderStyle = bsSingle
  Caption = 'SMC | Arquivos Fiscais'
  ClientHeight = 472
  ClientWidth = 1517
  Color = clWhite
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
  object Label1: TLabel
    Left = 12
    Top = 29
    Width = 65
    Height = 18
    Caption = 'Consultar:'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -15
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentFont = False
  end
  object Shape1: TShape
    Left = 966
    Top = 429
    Width = 153
    Height = 30
    Brush.Color = clGreen
    Pen.Color = clGreen
  end
  object Label2: TLabel
    Left = 972
    Top = 432
    Width = 59
    Height = 24
    Caption = 'Aberto'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clHighlightText
    Font.Height = -20
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentFont = False
  end
  object Label3: TLabel
    Left = 1049
    Top = 432
    Width = 66
    Height = 24
    BiDiMode = bdRightToLeft
    Caption = '000000'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clHighlightText
    Font.Height = -20
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentBiDiMode = False
    ParentFont = False
  end
  object Shape2: TShape
    Left = 1145
    Top = 429
    Width = 153
    Height = 30
    Brush.Color = clHotLight
    Pen.Color = clHotLight
  end
  object Label4: TLabel
    Left = 1151
    Top = 432
    Width = 60
    Height = 24
    Caption = 'Espera'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clHighlightText
    Font.Height = -20
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentFont = False
  end
  object Label5: TLabel
    Left = 1224
    Top = 432
    Width = 66
    Height = 24
    BiDiMode = bdRightToLeft
    Caption = '000000'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clHighlightText
    Font.Height = -20
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentBiDiMode = False
    ParentFont = False
  end
  object Shape3: TShape
    Left = 1326
    Top = 429
    Width = 159
    Height = 30
    Brush.Color = clRed
    Pen.Color = clRed
  end
  object Label6: TLabel
    Left = 1332
    Top = 432
    Width = 74
    Height = 24
    Caption = 'Fechado'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clHighlightText
    Font.Height = -20
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentFont = False
  end
  object Label7: TLabel
    Left = 1413
    Top = 432
    Width = 66
    Height = 24
    BiDiMode = bdRightToLeft
    Caption = '000000'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clHighlightText
    Font.Height = -20
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentBiDiMode = False
    ParentFont = False
  end
  object Shape4: TShape
    Left = 791
    Top = 429
    Width = 153
    Height = 30
    Brush.Color = clPurple
    Pen.Color = clPurple
  end
  object Label8: TLabel
    Left = 796
    Top = 432
    Width = 54
    Height = 24
    Caption = 'Todos'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clHighlightText
    Font.Height = -20
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentFont = False
  end
  object Label9: TLabel
    Left = 872
    Top = 432
    Width = 66
    Height = 24
    BiDiMode = bdRightToLeft
    Caption = '000000'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clHighlightText
    Font.Height = -20
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentBiDiMode = False
    ParentFont = False
  end
  object gdConveniados: TcxGrid
    Left = 1509
    Top = 72
    Width = 1517
    Height = 281
    Align = alCustom
    Font.Charset = ANSI_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'Tahoma'
    Font.Style = [fsBold]
    ParentFont = False
    TabOrder = 0
    LookAndFeel.NativeStyle = False
    LookAndFeel.SkinName = 'Metropolis'
    object gdConveniadosTbVw: TcxGridDBTableView
      Navigator.Buttons.CustomButtons = <>
      DataController.DetailKeyFieldNames = 'id'
      DataController.Summary.DefaultGroupSummaryItems = <>
      DataController.Summary.FooterSummaryItems = <>
      DataController.Summary.SummaryGroups = <>
      OptionsView.NoDataToDisplayInfoText = '...'
      OptionsView.GroupByBox = False
      object gdConveniadosTbVwColumn1: TcxGridDBColumn
        Caption = 'Status | Clientes'
        HeaderAlignmentHorz = taCenter
        MinWidth = 120
        Options.Editing = False
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
        Width = 120
      end
      object gdConveniadosTbVwColumn9: TcxGridDBColumn
        Caption = 'Raz'#227'o Social'
        HeaderAlignmentHorz = taCenter
        MinWidth = 180
        Options.Editing = False
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
        Width = 180
      end
      object gdConveniadosTbVwColumn10: TcxGridDBColumn
        Caption = 'Nome Fantasia'
        HeaderAlignmentHorz = taCenter
        MinWidth = 180
        Options.Editing = False
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
        Width = 180
      end
      object gdConveniadosTbVwColumn11: TcxGridDBColumn
        Caption = 'CNPJ'
        HeaderAlignmentHorz = taCenter
        MinWidth = 90
        Options.Editing = False
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
        Width = 90
      end
      object gdConveniadosTbVwColumn12: TcxGridDBColumn
        Caption = 'Sistema'
        HeaderAlignmentHorz = taCenter
        MinWidth = 64
        Options.Editing = False
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
      end
      object gdConveniadosTbVwColumn13: TcxGridDBColumn
        Caption = 'Contatos | Clientes'
        HeaderAlignmentHorz = taCenter
        MinWidth = 150
        Options.Editing = False
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
        Width = 150
      end
      object gdConveniadosTbVwColumn2: TcxGridDBColumn
        Caption = 'Abrir'
        HeaderAlignmentHorz = taCenter
        MinWidth = 50
        Options.Editing = False
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
        Width = 50
      end
      object gdConveniadosTbVwColumn3: TcxGridDBColumn
        Caption = 'Esperar'
        HeaderAlignmentHorz = taCenter
        MinWidth = 52
        Options.Editing = False
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
        Width = 52
      end
      object gdConveniadosTbVwColumn4: TcxGridDBColumn
        Caption = 'Fechar'
        HeaderAlignmentHorz = taCenter
        MinWidth = 50
        Options.Editing = False
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
        Width = 50
      end
      object gdConveniadosTbVwColumn5: TcxGridDBColumn
        Caption = 'DT. Abertura'
        HeaderAlignmentHorz = taCenter
        MinWidth = 90
        Options.Editing = False
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
        Width = 90
      end
      object gdConveniadosTbVwColumn6: TcxGridDBColumn
        Caption = 'M'#234's'
        HeaderAlignmentHorz = taCenter
        MinWidth = 64
        Options.Editing = False
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
      end
      object gdConveniadosTbVwColumn7: TcxGridDBColumn
        Caption = 'DT. Envio'
        HeaderAlignmentHorz = taCenter
        MinWidth = 80
        Options.Editing = False
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
        Width = 80
      end
      object gdConveniadosTbVwColumn8: TcxGridDBColumn
        Caption = 'T'#233'cnico'
        HeaderAlignmentHorz = taCenter
        MinWidth = 80
        Options.Editing = False
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
        Width = 80
      end
      object gdConveniadosTbVwColumn14: TcxGridDBColumn
        Caption = 'Contador'
        HeaderAlignmentHorz = taCenter
        MinWidth = 90
        Options.Editing = False
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
        Width = 90
      end
      object gdConveniadosTbVwColumn15: TcxGridDBColumn
        Caption = 'Contatos | Contador'
        HeaderAlignmentHorz = taCenter
        MinWidth = 150
        Options.Editing = False
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
        Width = 150
      end
    end
    object gdConveniadosLv: TcxGridLevel
      GridView = gdConveniadosTbVw
    end
  end
  object cxGroupBox6: TcxGroupBox
    Left = 360
    Top = 12
    TabOrder = 1
    Height = 44
    Width = 406
    object Label20: TLabel
      Left = 127
      Top = 16
      Width = 8
      Height = 18
      Caption = #224
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -15
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentFont = False
    end
    object Label21: TLabel
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
      LookAndFeel.NativeStyle = False
      LookAndFeel.SkinName = 'metropolis'
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
  object Edit1: TEdit
    Left = 83
    Top = 25
    Width = 222
    Height = 26
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -15
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentFont = False
    TabOrder = 2
    Text = 'Edit1'
  end
  object cxButton1: TcxButton
    Left = 306
    Top = 25
    Width = 27
    Height = 26
    LookAndFeel.NativeStyle = False
    LookAndFeel.SkinName = 'metropolis'
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
    TabOrder = 3
  end
  object cxGroupBox5: TcxGroupBox
    Left = 791
    Top = 8
    Caption = '  Status  '
    ParentFont = False
    Style.Font.Charset = DEFAULT_CHARSET
    Style.Font.Color = clWindowText
    Style.Font.Height = -15
    Style.Font.Name = 'Tahoma'
    Style.Font.Style = []
    Style.TextStyle = [fsBold]
    Style.IsFontAssigned = True
    TabOrder = 4
    Height = 48
    Width = 340
    object cxRadioButton1: TcxRadioButton
      Left = 85
      Top = 22
      Width = 77
      Height = 17
      Caption = 'Aberto'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clGreen
      Font.Height = -15
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      ParentFont = False
      TabOrder = 0
    end
    object cxRadioButton2: TcxRadioButton
      Left = 248
      Top = 22
      Width = 86
      Height = 17
      Caption = 'Fechado'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clRed
      Font.Height = -15
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      ParentFont = False
      TabOrder = 1
    end
    object cxRadioButton3: TcxRadioButton
      Left = 169
      Top = 22
      Width = 77
      Height = 17
      Caption = 'Espera'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clHotLight
      Font.Height = -15
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      ParentFont = False
      TabOrder = 2
    end
    object cxRadioButton4: TcxRadioButton
      Left = 5
      Top = 22
      Width = 77
      Height = 17
      Caption = 'Aberto'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clPurple
      Font.Height = -15
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      ParentFont = False
      TabOrder = 3
    end
  end
  object grid_otica: TcxGrid
    Left = 8
    Top = 93
    Width = 1475
    Height = 330
    Align = alCustom
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -13
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentFont = False
    TabOrder = 5
    LevelTabs.Style = 2
    LookAndFeel.Kind = lfUltraFlat
    LookAndFeel.NativeStyle = False
    LookAndFeel.SkinName = 'metropolis'
    RootLevelOptions.DetailFrameColor = clGradientActiveCaption
    object grid_oticaDBBandedTableView1: TcxGridDBBandedTableView
      Navigator.Buttons.CustomButtons = <>
      DataController.DataModeController.SmartRefresh = True
      DataController.DataSource = DataSource1
      DataController.Summary.DefaultGroupSummaryItems = <>
      DataController.Summary.FooterSummaryItems = <>
      DataController.Summary.SummaryGroups = <>
      OptionsCustomize.DataRowSizing = True
      OptionsCustomize.GroupRowSizing = True
      OptionsCustomize.BandMoving = False
      OptionsCustomize.BandSizing = False
      OptionsData.CancelOnExit = False
      OptionsData.Deleting = False
      OptionsData.DeletingConfirmation = False
      OptionsData.Editing = False
      OptionsData.Inserting = False
      OptionsView.ColumnAutoWidth = True
      OptionsView.GridLineColor = clGradientActiveCaption
      OptionsView.GroupByBox = False
      OptionsView.Indicator = True
      OptionsView.RowSeparatorColor = clBlack
      Bands = <
        item
          AlternateCaption = 'PERTO'
          Caption = 'DADOS'
          Width = 900
        end
        item
          AlternateCaption = 'LONGE'
          Caption = 'ARQUIVO'
          Options.HoldOwnColumnsOnly = True
          Width = 600
        end
        item
          AlternateCaption = 'OLHO DIREITO_L'
          Caption = 'SITUA'#199#195'O'
          Position.BandIndex = 1
          Position.ColIndex = 0
          Width = 215
        end
        item
          AlternateCaption = 'OLHO ESQUERDO_L'
          Caption = 'DATA'
          Position.BandIndex = 1
          Position.ColIndex = 1
          Width = 215
        end
        item
          Caption = 'Cliente'
          Position.BandIndex = 0
          Position.ColIndex = 0
          Width = 215
        end
        item
          Caption = 'Contato'
          Position.BandIndex = 0
          Position.ColIndex = 1
          Width = 215
        end
        item
          Caption = 'SMC'
          Position.BandIndex = 1
          Position.ColIndex = 2
        end>
      object Arq_data_aberto: TcxGridDBBandedColumn
        Caption = 'ABERTO'
        DataBinding.FieldName = 'AB_DATA'
        GroupSummaryAlignment = taCenter
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
        Width = 83
        Position.BandIndex = 3
        Position.ColIndex = 0
        Position.RowIndex = 0
      end
      object Arq_data_espera: TcxGridDBBandedColumn
        Caption = 'ESPERA'
        DataBinding.FieldName = 'ESP_DATA'
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
        Width = 71
        Position.BandIndex = 3
        Position.ColIndex = 1
        Position.RowIndex = 0
      end
      object Arq_data_enviado: TcxGridDBBandedColumn
        Caption = 'ENVIADO'
        DataBinding.FieldName = 'ENV_DATA'
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
        Width = 68
        Position.BandIndex = 3
        Position.ColIndex = 2
        Position.RowIndex = 0
      end
      object Arq_situacao_aberto: TcxGridDBBandedColumn
        DataBinding.FieldName = 'ABERTO'
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
      object Arq_situacao_espera: TcxGridDBBandedColumn
        DataBinding.FieldName = 'ESPERA'
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
      object Arq_situacao_enviado: TcxGridDBBandedColumn
        DataBinding.FieldName = 'ENVIADO'
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
      object dados_contato_celular: TcxGridDBBandedColumn
        DataBinding.FieldName = 'CELULAR'
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
        Width = 114
        Position.BandIndex = 5
        Position.ColIndex = 1
        Position.RowIndex = 0
      end
      object dados_contato_whats: TcxGridDBBandedColumn
        DataBinding.FieldName = 'WHATSAPP'
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
        Width = 109
        Position.BandIndex = 5
        Position.ColIndex = 0
        Position.RowIndex = 0
      end
      object dados_contato_contador: TcxGridDBBandedColumn
        DataBinding.FieldName = 'CONTADOR'
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
        Width = 103
        Position.BandIndex = 5
        Position.ColIndex = 2
        Position.RowIndex = 0
      end
      object dados_contato_email: TcxGridDBBandedColumn
        Caption = 'E-MAIL'
        DataBinding.FieldName = 'EMAIL'
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
        Width = 123
        Position.BandIndex = 5
        Position.ColIndex = 3
        Position.RowIndex = 0
      end
      object dados_cliente_razao_social: TcxGridDBBandedColumn
        Caption = 'RAZ'#195'O SOCIAL'
        DataBinding.FieldName = 'RAZAO_SOCIAL'
        FooterAlignmentHorz = taCenter
        GroupSummaryAlignment = taCenter
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
        Width = 97
        Position.BandIndex = 4
        Position.ColIndex = 0
        Position.RowIndex = 0
      end
      object dados_cliente_nome_fantasia: TcxGridDBBandedColumn
        Caption = 'NOME FANTASIA'
        DataBinding.FieldName = 'NOME_FANTASIA'
        FooterAlignmentHorz = taCenter
        GroupSummaryAlignment = taCenter
        HeaderAlignmentHorz = taCenter
        HeaderAlignmentVert = vaBottom
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
        Width = 97
        Position.BandIndex = 4
        Position.ColIndex = 1
        Position.RowIndex = 0
      end
      object dados_cliente_cnpj: TcxGridDBBandedColumn
        DataBinding.FieldName = 'CNPJ'
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
        Width = 126
        Position.BandIndex = 4
        Position.ColIndex = 2
        Position.RowIndex = 0
      end
      object dados_cliente_sistema: TcxGridDBBandedColumn
        DataBinding.FieldName = 'SISTEMA'
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
        Width = 130
        Position.BandIndex = 4
        Position.ColIndex = 3
        Position.RowIndex = 0
      end
      object Arq_data_tecnico: TcxGridDBBandedColumn
        Caption = 'T'#201'CNICO'
        DataBinding.FieldName = 'TECNICO'
        HeaderAlignmentHorz = taCenter
        HeaderGlyphAlignmentHorz = taCenter
        Width = 150
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
  object cxButton3: TcxButton
    Left = 1260
    Top = 8
    Width = 227
    Height = 49
    Caption = 'Imprimir Relat'#243'rio'
    LookAndFeel.NativeStyle = False
    LookAndFeel.SkinName = 'metropolis'
    OptionsImage.Glyph.Data = {
      36100000424D3610000000000000360000002800000020000000200000000100
      2000000000000010000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000100000003000000040000
      0005000000050000000500000005000000050000000500000006000000060000
      0006000000060000000600000006000000060000000600000006000000040000
      0002000000010000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000001000000050000000A0000000F0000
      0011000000120000001200000013000000130000001400000014000000140000
      00150000001500000016000000160000001600000016000000140000000F0000
      0007000000020000000000000000000000000000000000000000000000000000
      0001000000010000000100000001000000030000000A7A5A4DC2A57867FFA577
      67FFA57767FFA47666FFA47665FFA37565FFA37565FFA37564FFA37363FFA273
      63FFA27262FFA17262FFA17262FFA17162FFA17161FFA07160FF775347C50000
      000F000000040000000200000001000000010000000100000000000000010000
      00030000000600000007000000090000000C00000014A97C6BFFF8F1EDFFF8F0
      EDFFF7F0EDFFF7F0EDFFF7F0EBFFF6EFEBFFF6EEE8FFF5EDE8FFF5EDE8FFF5EC
      E7FFF6EDE7FFF5ECE7FFF5ECE6FFF5ECE6FFF5ECE6FFF5ECE6FFA27363FF0000
      001B0000000F0000000C0000000A000000080000000500000002000000050000
      000F000000190000001F00000021000000250000002EAC8070FFF9F3EFFFDFB1
      77FFDFAF77FFDFAE76FFDEAE76FFDEAE74FFDCA76DFFDAA465FFDAA265FFDAA1
      64FFDAA063FFD9A062FFD89F61FFD99E5FFFD89D5FFFF6EDE7FFA37565FF0000
      003B0000002E0000002A000000280000002100000014000000070000000E2D1F
      1B618E6454EC9B6C5CFF9B6B5CFF976958FF8F6251FF996C5AFFF9F5F2FFE1B4
      7EFFE5BD89FFE5BD88FFE4BC88FFE5BB86FFE4B982FFE0AF74FFE0AF73FFDFAE
      73FFDFAD72FFDFAC70FFDFAB6EFFDEAA6CFFD89E5FFFF6EEE9FF905F50FF7B4D
      3EFF855444FF865645FF855545FF784D3EEE2517136A0000001400000016986E
      5FF0C39F8DFFCBAB9AFFDCC5B4FFD8C0B0FFD0B8A5FFA87B6BFFFAF6F3FFE3B9
      84FFE7C290FFE8C18FFFE8C08EFFE7C08CFFE7BE8BFFE2B47BFFE1B176FFE1B0
      75FFDFAF74FFDFAE72FFDFAD70FFDEAC6FFFD99F61FFF6F0EAFF9E705FFFCAB2
      A0FFD7C0B0FFDBC4B3FFC8A695FFBE9A88FF926656F10000002000000019A67A
      69FFC8A797FFCDAF9EFFDFCABBFFDBC4B4FFE0CFC3FFAB7F6FFFFBF7F5FFE5BE
      8AFFE9C595FFE9C596FFE9C495FFE9C493FFE8C392FFE5BC86FFE1B379FFE1B2
      77FFE0B076FFE0B074FFE0AE72FFDFAD70FFD9A062FFF8F1ECFFA07363FFDACA
      BEFFD9C3B4FFDEC8B9FFC9AA99FFC4A291FF9E6E5DFF0000002500000019A87B
      6BFFCBAB9BFFD0B3A4FFE3D0C3FFDFCABBFFA47E6DFFA57666FFFBF9F6FFE8C1
      90FFEBC99CFFEBC99BFFEAC99CFFEAC89AFFE9C799FFE8C595FFE2B57BFFE2B4
      7AFFE1B378FFE0B175FFDFAF74FFDFAD71FFDAA063FFF8F2EEFF986B5AFFA17B
      6BFFDEC9BBFFE1CDBFFFCCAE9FFFC7A595FFA0705FFF0000002600000018AA7E
      6DFFCEB0A1FFD3B8AAFFE7D7CCFFE5D3C6FF966C5BFF7A4835FF7A4836FF7A48
      35FF7A4835FF7A4835FF7A4835FF7A4835FF7A4835FF7A4835FF7A4835FF7A48
      36FF7A4836FF7A4835FF7A4835FF7A4835FF7A4835FF7A4835FF7A4835FF966C
      5BFFE5D2C6FFE5D3C6FFCFB3A5FFCAAA9BFFA07261FF0000002500000016AC80
      6FFFD1B6A7FFD6BEB1FFEBDDD5FFE8D9CEFFE8D9CFFFE8D9CFFFE8DACEFFE8D9
      CEFFE8D9CEFFE8D9CFFFE8D9CEFFE8DACFFFE8D9CFFFE8D9CFFFE8DACEFFE8D9
      CFFFE8DACFFFE8D9CEFFE8D9CEFFE8D9CFFFE8D9CEFFE8DACEFFE8DACFFFE8D9
      CFFFE8DACFFFE8D9CEFFD2B9ABFFCCB0A1FFA27363FF0000002300000015AE82
      72FFD4BBAFFFDAC4B9FFEFE5DDFFECE0D7FFECE0D7FFECE0D7FFECE0D8FFECE0
      D7FFECE0D8FFECE0D7FFECE0D7FFECE0D7FFECE0D7FFECE0D7FFECE0D7FFECE0
      D7FFECE0D7FFECE0D7FFECE0D7FFECE0D7FFECE0D7FFECE0D7FFECE0D7FFECE0
      D8FFECE0D7FFECE0D7FFD6BEB3FFCFB4A8FFA37564FF0000002200000014AF84
      74FFD8C1B7FFDECBC1FFF4EBE6FFF0E7E0FFF0E7E0FFF0E7E0FFF0E7DFFFF0E7
      DFFFF0E7E0FFF0E7E0FFF0E7DFFFF0E7DFFFF0E7E0FFF0E7DFFFF0E7E0FFF0E7
      E0FFF0E7E0FFF0E6E0FFF0E6E0FFF0E7DFFFF0E7E0FFF0E6DFFFF0E7E0FFF0E7
      DFFFF0E7E0FFF0E7DFFFDAC4BBFFD3BAB0FFA47666FF0000002000000012B289
      78FFDCC7BEFFE1D0C8FFF6F1ECFFF4EDE8FFF5EEE9FFF7F3EFFFF9F5F2FFF9F6
      F3FFF9F6F3FFF9F6F3FFF9F6F3FFF9F6F3FFF9F6F3FFF9F6F3FFF9F6F3FFF9F6
      F3FFF9F6F3FFF9F6F3FFF9F6F3FFF9F6F3FFF9F6F3FFF9F5F2FFF7F3EFFFF5EE
      E9FFF4EDE7FFF4EDE7FFDDCAC2FFD7C0B6FFA77B6AFF0000001F00000010B68D
      7DFFDFCCC4FFE4D5CEFFF9F5F2FFF8F3EFFFEAE4E1FF8C7A73FF664D45FF553C
      32FF553A32FF553B32FF543A31FF543A32FF543931FF543931FF533930FF5339
      30FF523930FF523830FF523830FF52372FFF51372EFF614942FF897770FFE9E3
      E0FFF8F3EFFFF7F2EEFFE0CFC7FFDAC5BCFFAB7F6FFF0000001D0000000FB992
      81FFE2D1CBFFE8DAD4FFFBF9F7FFE0DBD8FF674E45FF674A40FF6B4E44FF6D4F
      45FF6E4F45FF6E4F45FF6E4F45FF6D4F45FF6E4F45FF6D4F45FF6D4F45FF6D4F
      45FF6E4F45FF6D4F45FF6D4F45FF6D4F45FF6D4F45FF6C4D43FF65483EFF6149
      40FFDFD9D6FFFAF6F4FFE4D4CDFFDDCAC3FFAF8374FF0000001C0000000EBC97
      87FFE5D6CFFFEBDFD9FFFDFCFAFF918079FF6B4F45FF715449FF715349FF7153
      49FF705349FF715449FF715349FF715349FF705349FF71534AFF715349FF7154
      4AFF715349FF715349FF715449FF705349FF715449FF70534AFF715349FF684D
      42FF8C7A73FFFCFAF8FFE7D9D3FFE0CFC7FFB28979FF0000001A0000000CC09C
      8CFFE7DAD4FFECE1DDFFFEFDFCFF6C554AFF896C5FFF8D6F63FF8F7063FF9677
      69FF967769FF957769FF997B6DFF9D7F70FF9E7F70FF9D7F70FF9E7F70FF9E7F
      70FF9E7F70FF9E7F70FF9A7B6CFF967769FF967869FF967769FF8F7163FF8D6E
      61FF634B41FFFDFCFBFFE8DBD6FFE2D3CDFFB68E7EFF000000180000000BC5A1
      91FFEADEDAFFEEE4E1FFFEFEFEFF6E5649FFB29381FFB29381FFB29381FFB393
      81FFB29381FFB29381FFB29281FFB39381FFB29381FFB29381FFB29381FFB293
      81FFB29281FFB39281FFB29381FFB29381FFB29281FFB29381FFB29381FFB392
      81FF684F44FFFEFDFDFFEADEDBFFE6D8D3FFBA9484FF0000001600000009BB9B
      8EF1EFE6E2FFEFE7E3FFFFFEFEFF7F6759FFC6A692FF715349FF705349FF7152
      49FF705348FF705248FF705248FF705248FF705248FF705247FF6F5147FF6F51
      47FF6E5147FF6E5046FF6E5046FF6E5045FF6D5045FF6D4F45FF6D4F45FFC6A5
      92FF795F53FFFFFEFEFFECE2DDFFEDE1DEFFB59284F500000013000000068872
      69B0ECE1DCFFF8F4F2FFFEFEFEFF866F60FFCCAD97FFA97C6BFFF2E9E4FFEEE2
      DBFFEDE2DAFFEDE1DAFFEDE1DBFFECE0D9FFECE0D9FFEDE0D9FFEDDFD8FFECDF
      D8FFECDED8FFECDED7FFECDED8FFECDFD7FFEBDED7FFEEE3DDFFA27363FFC7A8
      93FF80685AFFFCFAFAFFF4EDEBFFEADDD9FF836C61B80000000D000000031F1B
      192EC5AA9FF0EEE3DEFFFAF6F5FF8E7666FFD6B59EFFAD8272FFF4EBE7FFEFE4
      DEFFEFE3DEFFEFE4DDFFEEE3DDFFEEE2DDFFEEE3DCFFEEE2DCFFEDE2DBFFEEE2
      DBFFEDE1DAFFEDE1DBFFEDE0DAFFEDE0D9FFECE0D9FFF0E6DFFFA47767FFCFAF
      99FF896F62FFF8F4F3FFEBE0DAFFBEA395F1201B183A00000007000000010000
      00031613112188746BACB99E90E6937C6FFF957F73FFB18876FFF4EEEAFFF1E7
      E1FFF1E6E1FFF0E6E0FFF0E5E1FFEFE5E0FFF0E5DFFFF0E5DEFFEFE4DEFFEFE4
      DEFFEEE4DEFFEFE3DDFFEFE2DDFFEEE2DCFFEEE3DCFFF1E8E2FFA97C6CFF907A
      6FFF8F7869FFB29587E7836E64B11512102A0000000800000003000000000000
      00010000000200000004000000050000000A00000016B68D7EFFF6F0EDFFF2E9
      E4FFF2E9E5FFF2E9E3FFF1E8E3FFF2E8E3FFF1E7E2FFF1E7E2FFF0E7E2FFF1E7
      E1FFF1E6E0FFF0E6E0FFF0E6E0FFF0E5DFFFEFE5DFFFF3EAE5FFAE8373FF0000
      0023000000130000000D00000009000000050000000200000001000000000000
      0000000000000000000100000001000000040000000EBB9484FFF8F3F0FFF4EC
      E8FFF3EBE8FFF3EBE7FFF3EBE7FFF3EBE6FFF3EAE5FFF3EAE5FFF3E9E5FFF2E9
      E4FFF2E9E4FFF2E8E4FFF1E8E3FFF1E7E2FFF1E7E2FFF5EDE9FFB2897AFF0000
      0018000000080000000400000002000000010000000000000000000000000000
      0000000000000000000000000000000000030000000CBF998AFFF9F5F3FFF6EF
      EBFFF6EEEBFFF5EEEBFFF5EEEAFFF5EDE9FFF5EDE9FFF5EDE9FFF4ECE8FFF3EB
      E8FFF4EBE7FFF4EBE6FFF3EBE6FFF3EAE6FFF3EAE5FFF5EFECFFB69080FF0000
      0014000000050000000100000000000000000000000000000000000000000000
      0000000000000000000000000000000000030000000BC3A08FFFFAF7F5FFF7F1
      EEFFF7F1EEFFF6F0EDFFF7F0EDFFF7F0ECFFF6F0ECFFF6EFEBFFF6EFEBFFF6EF
      EBFFF5EEEAFFF5EEEAFFF5EEE9FFF4EDE9FFF5EDE9FFF7F1EFFFBC9687FF0000
      0013000000050000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000200000009C7A495FFFAF8F7FFF8F4
      F1FFF9F3F1FFF9F3F0FFF8F2F0FFF7F2EFFFF8F3EFFFF7F2EFFFF7F2EFFFF7F2
      EEFFF7F1EDFFF7F0EDFFF7F0EDFFF6EFECFFF6F0EBFFF9F4F2FFC09C8DFF0000
      0011000000040000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000200000008CAA99AFFFDF9F8FFFAF6
      F4FFFAF6F4FFF9F6F4FFF9F5F2FFF9F5F2FFF9F5F2FFF9F5F1FFF8F4F1FFF9F4
      F1FFF8F3F0FFF8F3F0FFF8F3EFFFF8F2EFFFF7F2EFFFFAF6F4FFC4A293FF0000
      0010000000040000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000200000007CDAD9FFFFDFBFBFFFCF8
      F6FFFBF7F6FFFBF7F5FFFBF7F6FFFAF7F5FFFAF7F5FFFAF6F4FFFAF6F4FFFAF6
      F3FFF9F6F3FFF9F5F3FFFAF5F3FFF9F4F2FFF9F4F2FFFAF8F6FFC7A698FF0000
      000E000000040000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000100000005CFB1A2FFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFCBAC9CFF0000
      000B000000030000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000001000000039B857ABFD1B3A5FFD1B3
      A5FFD1B3A4FFD1B3A4FFD0B2A4FFD1B2A4FFD0B2A4FFCFB2A3FFCFB2A3FFCFB2
      A3FFCFB0A3FFCFB1A2FFCFB0A2FFCEB0A2FFCEB0A2FFCEAFA1FF998277C10000
      0007000000020000000000000000000000000000000000000000}
    TabOrder = 6
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -16
    Font.Name = 'Tahoma'
    Font.Style = [fsBold]
    ParentFont = False
  end
  object FDQuery1: TFDQuery
    Connection = Module.connection
    SQL.Strings = (
      'select * from teste')
    Left = 560
    Top = 208
    object FDQuery1codigo: TIntegerField
      AutoGenerateValue = arDefault
      FieldName = 'codigo'
      Origin = 'codigo'
    end
    object FDQuery1RAZAO_SOCIAL: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'RAZAO_SOCIAL'
      Origin = 'RAZAO_SOCIAL'
      Size = 50
    end
    object FDQuery1NOME_FANTASIA: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'NOME_FANTASIA'
      Origin = 'NOME_FANTASIA'
      Size = 50
    end
    object FDQuery1CNPJ: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'CNPJ'
      Origin = 'CNPJ'
      Size = 50
    end
    object FDQuery1SISTEMA: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'SISTEMA'
      Origin = 'SISTEMA'
      Size = 50
    end
    object FDQuery1WHATSAPP: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'WHATSAPP'
      Origin = 'WHATSAPP'
      Size = 50
    end
    object FDQuery1CELULAR: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'CELULAR'
      Origin = 'CELULAR'
      Size = 50
    end
    object FDQuery1CONTADOR: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'CONTADOR'
      Origin = 'CONTADOR'
      Size = 50
    end
    object FDQuery1EMAIL: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'EMAIL'
      Origin = 'EMAIL'
      Size = 50
    end
    object FDQuery1ABERTO: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'ABERTO'
      Origin = 'ABERTO'
      Size = 3
    end
    object FDQuery1ESPERA: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'ESPERA'
      Origin = 'ESPERA'
      Size = 3
    end
    object FDQuery1ENVIADO: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'ENVIADO'
      Origin = 'ENVIADO'
      Size = 3
    end
    object FDQuery1AB_DATA: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'AB_DATA'
      Origin = 'AB_DATA'
      Size = 50
    end
    object FDQuery1ESP_DATA: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'ESP_DATA'
      Origin = 'ESP_DATA'
      Size = 50
    end
    object FDQuery1ENV_DATA: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'ENV_DATA'
      Origin = 'ENV_DATA'
      Size = 50
    end
    object FDQuery1TECNICO: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'TECNICO'
      Origin = 'TECNICO'
      Size = 50
    end
  end
  object DataSource1: TDataSource
    DataSet = FDQuery1
    Left = 632
    Top = 304
  end
  object FDTable1: TFDTable
    MasterSource = DataSource1
    MasterFields = 
      'WHATSAPP;TECNICO;SISTEMA;RAZAO_SOCIAL;NOME_FANTASIA;ESPERA;ESP_D' +
      'ATA;ENVIADO;ENV_DATA;EMAIL;CONTADOR;codigo;CNPJ;CELULAR;ABERTO;A' +
      'B_DATA'
    Connection = Module.connection
    Left = 528
    Top = 280
  end
end
