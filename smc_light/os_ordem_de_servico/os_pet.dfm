﻿object Frm_os_pet: TFrm_os_pet
  Left = 0
  Top = 0
  BorderIcons = [biSystemMenu]
  BorderStyle = bsSingle
  Caption = 'Ordem de Servi'#231'o | Pet Shop'
  ClientHeight = 536
  ClientWidth = 973
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -15
  Font.Name = 'Tahoma'
  Font.Style = [fsBold]
  OldCreateOrder = False
  Position = poMainFormCenter
  OnClose = FormClose
  PixelsPerInch = 96
  TextHeight = 18
  object cxPageControl2: TcxPageControl
    Left = 0
    Top = 0
    Width = 973
    Height = 536
    Align = alClient
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'Tahoma'
    Font.Style = [fsBold]
    ParentFont = False
    TabOrder = 0
    Properties.ActivePage = cxTabSheet11
    Properties.CustomButtons.Buttons = <>
    LookAndFeel.NativeStyle = False
    LookAndFeel.SkinName = 'metropolis'
    ClientRectBottom = 534
    ClientRectLeft = 2
    ClientRectRight = 971
    ClientRectTop = 28
    object cxTabSheet10: TcxTabSheet
      Caption = 'Consultar'
      ImageIndex = 0
      ExplicitLeft = 0
      ExplicitTop = 0
      ExplicitWidth = 0
      ExplicitHeight = 0
      object Label3: TLabel
        Left = 16
        Top = 88
        Width = 111
        Height = 18
        Caption = 'Ordem Servi'#231'o'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -15
        Font.Name = 'Tahoma'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object GroupBox3: TGroupBox
        Left = 16
        Top = 0
        Width = 163
        Height = 84
        Caption = '  Periodo  '
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -15
        Font.Name = 'Tahoma'
        Font.Style = [fsBold]
        ParentFont = False
        TabOrder = 0
        object Label1: TLabel
          Left = 22
          Top = 23
          Width = 38
          Height = 18
          Caption = 'In'#237'cio:'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -15
          Font.Name = 'Tahoma'
          Font.Style = []
          ParentFont = False
        end
        object Label2: TLabel
          Left = 32
          Top = 54
          Width = 28
          Height = 18
          Caption = 'Fim:'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -15
          Font.Name = 'Tahoma'
          Font.Style = []
          ParentFont = False
        end
        object Edit1: TEdit
          Left = 70
          Top = 19
          Width = 83
          Height = 26
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -15
          Font.Name = 'Tahoma'
          Font.Style = []
          ParentFont = False
          TabOrder = 0
          Text = 'Edit1'
        end
        object Edit2: TEdit
          Left = 70
          Top = 50
          Width = 83
          Height = 26
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -15
          Font.Name = 'Tahoma'
          Font.Style = []
          ParentFont = False
          TabOrder = 1
          Text = 'Edit1'
        end
      end
      object GroupBox2: TGroupBox
        Left = 185
        Top = 3
        Width = 204
        Height = 81
        Caption = '  Consulta por  '
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'Tahoma'
        Font.Style = [fsBold]
        ParentFont = False
        TabOrder = 1
        object RadioButton6: TRadioButton
          Left = 13
          Top = 22
          Width = 113
          Height = 17
          Caption = 'N'#186' O.S.'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clInfoText
          Font.Height = -13
          Font.Name = 'Tahoma'
          Font.Style = [fsBold]
          ParentFont = False
          TabOrder = 0
        end
        object RadioButton7: TRadioButton
          Left = 13
          Top = 52
          Width = 113
          Height = 17
          Caption = 'Cliente'
          Color = clBlue
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clInfoText
          Font.Height = -13
          Font.Name = 'Tahoma'
          Font.Style = [fsBold]
          ParentColor = False
          ParentFont = False
          TabOrder = 1
        end
        object RadioButton8: TRadioButton
          Left = 101
          Top = 52
          Width = 68
          Height = 17
          Caption = 'Animal'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clInfoText
          Font.Height = -13
          Font.Name = 'Tahoma'
          Font.Style = [fsBold]
          ParentFont = False
          TabOrder = 2
        end
        object RadioButton9: TRadioButton
          Left = 101
          Top = 22
          Width = 92
          Height = 17
          Caption = 'CNPJ | CPF'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clInfoText
          Font.Height = -13
          Font.Name = 'Tahoma'
          Font.Style = [fsBold]
          ParentFont = False
          TabOrder = 3
        end
      end
      object cxGroupBox3: TcxGroupBox
        Left = 402
        Top = 11
        Caption = '  Consultar  '
        ParentFont = False
        Style.Font.Charset = DEFAULT_CHARSET
        Style.Font.Color = clWindowText
        Style.Font.Height = -15
        Style.Font.Name = 'Tahoma'
        Style.Font.Style = [fsBold]
        Style.IsFontAssigned = True
        TabOrder = 2
        Height = 65
        Width = 319
        object cxButton1: TcxButton
          Left = 279
          Top = 24
          Width = 25
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
          TabOrder = 0
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = [fsBold]
          ParentFont = False
        end
        object Edit5: TEdit
          Left = 9
          Top = 24
          Width = 268
          Height = 26
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -15
          Font.Name = 'Tahoma'
          Font.Style = []
          ParentFont = False
          TabOrder = 1
          Text = 'Edit1'
        end
      end
      object GroupBox1: TGroupBox
        Left = 740
        Top = 3
        Width = 213
        Height = 72
        Caption = '  Status O.S.  '
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -15
        Font.Name = 'Tahoma'
        Font.Style = [fsBold]
        ParentFont = False
        TabOrder = 3
        object cxCheckBox1: TcxCheckBox
          Left = 8
          Top = 18
          Caption = 'Abertas'
          ParentFont = False
          Style.Font.Charset = DEFAULT_CHARSET
          Style.Font.Color = clWindowText
          Style.Font.Height = -13
          Style.Font.Name = 'Tahoma'
          Style.Font.Style = [fsBold]
          Style.IsFontAssigned = True
          TabOrder = 0
        end
        object cxCheckBox2: TcxCheckBox
          Left = 111
          Top = 18
          Caption = 'Fechadas'
          ParentFont = False
          Style.Font.Charset = DEFAULT_CHARSET
          Style.Font.Color = clWindowText
          Style.Font.Height = -13
          Style.Font.Name = 'Tahoma'
          Style.Font.Style = [fsBold]
          Style.TextColor = clBlue
          Style.IsFontAssigned = True
          TabOrder = 1
        end
        object cxCheckBox3: TcxCheckBox
          Left = 8
          Top = 46
          Caption = 'Reabertas'
          ParentFont = False
          Style.Font.Charset = DEFAULT_CHARSET
          Style.Font.Color = clWindowText
          Style.Font.Height = -13
          Style.Font.Name = 'Tahoma'
          Style.Font.Style = [fsBold]
          Style.TextColor = 4227072
          Style.IsFontAssigned = True
          TabOrder = 2
        end
        object cxCheckBox4: TcxCheckBox
          Left = 111
          Top = 46
          Caption = 'Canceladas'
          ParentFont = False
          Style.Font.Charset = DEFAULT_CHARSET
          Style.Font.Color = clWindowText
          Style.Font.Height = -13
          Style.Font.Name = 'Tahoma'
          Style.Font.Style = [fsBold]
          Style.TextColor = clRed
          Style.IsFontAssigned = True
          TabOrder = 3
        end
      end
      object gdConveniados: TcxGrid
        Left = 16
        Top = 120
        Width = 937
        Height = 361
        Align = alCustom
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = [fsBold]
        ParentFont = False
        TabOrder = 4
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
          object clid: TcxGridDBColumn
            DataBinding.FieldName = 'id'
            Visible = False
          end
          object clRua: TcxGridDBColumn
            Caption = 'N'#186' O.S.'
            DataBinding.FieldName = 'periodo'
            FooterAlignmentHorz = taCenter
            GroupSummaryAlignment = taCenter
            HeaderAlignmentHorz = taCenter
            MinWidth = 100
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
            Width = 100
          end
          object clNumero: TcxGridDBColumn
            Caption = 'Data'
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
          object clBairro: TcxGridDBColumn
            Caption = 'CNPJ | CPF'
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
          object clComplemento: TcxGridDBColumn
            Caption = 'Cliente'
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
          object clRegiao: TcxGridDBColumn
            Caption = 'Pet'
            HeaderAlignmentHorz = taCenter
            MinWidth = 100
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
            Width = 100
          end
          object clMunicipio: TcxGridDBColumn
            Caption = 'V. Total'
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
        end
        object gdConveniadosLv: TcxGridLevel
          GridView = gdConveniadosTbVw
        end
      end
    end
    object cxTabSheet11: TcxTabSheet
      Caption = 'Gerar'
      ImageIndex = 1
      object Label5: TLabel
        Left = 6
        Top = 14
        Width = 54
        Height = 18
        Caption = 'N'#186' O.S.:'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -15
        Font.Name = '-'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object Label6: TLabel
        Left = 173
        Top = 14
        Width = 40
        Height = 18
        Caption = 'Data:'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -15
        Font.Name = 'Tahoma'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object Label9: TLabel
        Left = 331
        Top = 14
        Width = 90
        Height = 18
        Caption = 'Veterin'#225'rio:'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -15
        Font.Name = 'Tahoma'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object Label7: TLabel
        Left = 569
        Top = 14
        Width = 81
        Height = 18
        Caption = 'Atendente:'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -15
        Font.Name = 'Tahoma'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object Edit3: TEdit
        Left = 69
        Top = 10
        Width = 88
        Height = 26
        Color = 8454143
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -15
        Font.Name = '-'
        Font.Style = [fsBold]
        ParentFont = False
        TabOrder = 0
        Text = 'Edit1'
      end
      object Edit4: TEdit
        Left = 219
        Top = 12
        Width = 88
        Height = 25
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -15
        Font.Name = '-'
        Font.Style = []
        ParentFont = False
        TabOrder = 1
        Text = 'Edit1'
      end
      object ComboBox2: TComboBox
        Left = 427
        Top = 12
        Width = 114
        Height = 23
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -12
        Font.Name = '-'
        Font.Style = []
        ParentFont = False
        TabOrder = 2
        Text = 'ComboBox1'
      end
      object ComboBox1: TComboBox
        Left = 658
        Top = 12
        Width = 122
        Height = 23
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -12
        Font.Name = '-'
        Font.Style = []
        ParentFont = False
        TabOrder = 3
        Text = 'ComboBox1'
      end
      object cxGroupBox4: TcxGroupBox
        Left = 6
        Top = 42
        Caption = '  Cliente  '
        ParentFont = False
        Style.Font.Charset = DEFAULT_CHARSET
        Style.Font.Color = clWindowText
        Style.Font.Height = -15
        Style.Font.Name = 'Tahoma'
        Style.Font.Style = [fsBold]
        Style.IsFontAssigned = True
        TabOrder = 4
        Height = 112
        Width = 774
        object Label8: TLabel
          Left = 104
          Top = 26
          Width = 228
          Height = 18
          Caption = 'J'#243'se Fulano De Tal Filho de Onofre'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -15
          Font.Name = 'Tahoma'
          Font.Style = []
          ParentFont = False
        end
        object Label10: TLabel
          Left = 14
          Top = 56
          Width = 37
          Height = 18
          Caption = 'End.:'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -15
          Font.Name = 'Tahoma'
          Font.Style = [fsBold]
          ParentFont = False
        end
        object Label11: TLabel
          Left = 14
          Top = 82
          Width = 106
          Height = 18
          Caption = 'Complemento:'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -15
          Font.Name = 'Tahoma'
          Font.Style = [fsBold]
          ParentFont = False
        end
        object Label12: TLabel
          Left = 319
          Top = 56
          Width = 25
          Height = 18
          Caption = 'N'#186':'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -15
          Font.Name = 'Tahoma'
          Font.Style = [fsBold]
          ParentFont = False
        end
        object Label13: TLabel
          Left = 487
          Top = 56
          Width = 52
          Height = 18
          Caption = 'Bairro:'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -15
          Font.Name = 'Tahoma'
          Font.Style = [fsBold]
          ParentFont = False
        end
        object Label14: TLabel
          Left = 327
          Top = 82
          Width = 56
          Height = 18
          Caption = 'Cidade:'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -15
          Font.Name = 'Tahoma'
          Font.Style = [fsBold]
          ParentFont = False
        end
        object Label15: TLabel
          Left = 543
          Top = 82
          Width = 25
          Height = 18
          Caption = 'UF:'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -15
          Font.Name = 'Tahoma'
          Font.Style = [fsBold]
          ParentFont = False
        end
        object Label17: TLabel
          Left = 367
          Top = 26
          Width = 92
          Height = 18
          Caption = 'CFP | CNPJ:'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -15
          Font.Name = 'Tahoma'
          Font.Style = [fsBold]
          ParentFont = False
        end
        object Label18: TLabel
          Left = 640
          Top = 82
          Width = 34
          Height = 18
          Caption = 'CEP:'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -15
          Font.Name = 'Tahoma'
          Font.Style = [fsBold]
          ParentFont = False
        end
        object Label19: TLabel
          Left = 580
          Top = 25
          Width = 70
          Height = 18
          Caption = 'Telefone:'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -15
          Font.Name = 'Tahoma'
          Font.Style = [fsBold]
          ParentFont = False
        end
        object Label4: TLabel
          Left = 465
          Top = 25
          Width = 103
          Height = 18
          Caption = '009.015.052-00'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -15
          Font.Name = 'Tahoma'
          Font.Style = []
          ParentFont = False
        end
        object Label29: TLabel
          Left = 656
          Top = 25
          Width = 105
          Height = 18
          Caption = '(69) 992721893'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -15
          Font.Name = 'Tahoma'
          Font.Style = []
          ParentFont = False
        end
        object Label30: TLabel
          Left = 57
          Top = 56
          Width = 75
          Height = 18
          Caption = 'Av. Calama'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -15
          Font.Name = 'Tahoma'
          Font.Style = []
          ParentFont = False
        end
        object Label32: TLabel
          Left = 350
          Top = 56
          Width = 32
          Height = 18
          Caption = '7773'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -15
          Font.Name = 'Tahoma'
          Font.Style = []
          ParentFont = False
        end
        object Label33: TLabel
          Left = 545
          Top = 56
          Width = 49
          Height = 18
          Caption = 'Planalto'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -15
          Font.Name = 'Tahoma'
          Font.Style = []
          ParentFont = False
        end
        object Label34: TLabel
          Left = 126
          Top = 82
          Width = 163
          Height = 18
          Caption = 'De frente ao restuarante'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -15
          Font.Name = 'Tahoma'
          Font.Style = []
          ParentFont = False
        end
        object Label35: TLabel
          Left = 389
          Top = 82
          Width = 74
          Height = 18
          Caption = 'Porto Velho'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -15
          Font.Name = 'Tahoma'
          Font.Style = []
          ParentFont = False
        end
        object Label36: TLabel
          Left = 574
          Top = 82
          Width = 20
          Height = 18
          Caption = 'RO'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -15
          Font.Name = 'Tahoma'
          Font.Style = []
          ParentFont = False
        end
        object Label37: TLabel
          Left = 684
          Top = 82
          Width = 77
          Height = 18
          Caption = '76820-2520'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -15
          Font.Name = 'Tahoma'
          Font.Style = []
          ParentFont = False
        end
        object Código: TDBEdit
          Left = 14
          Top = 23
          Width = 52
          Height = 26
          TabOrder = 0
        end
        object cxButton8: TcxButton
          Left = 66
          Top = 23
          Width = 25
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
          TabOrder = 1
        end
      end
      object cxGroupBox5: TcxGroupBox
        Left = 6
        Top = 158
        Caption = '  Dados Animal  '
        ParentFont = False
        Style.Font.Charset = DEFAULT_CHARSET
        Style.Font.Color = clWindowText
        Style.Font.Height = -15
        Style.Font.Name = 'Tahoma'
        Style.Font.Style = [fsBold]
        Style.IsFontAssigned = True
        TabOrder = 5
        Height = 54
        Width = 774
        object Label16: TLabel
          Left = 96
          Top = 26
          Width = 190
          Height = 18
          Caption = 'CACHORRO BEM ATENDIDO'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -15
          Font.Name = 'Tahoma'
          Font.Style = []
          ParentFont = False
        end
        object Label20: TLabel
          Left = 580
          Top = 26
          Width = 42
          Height = 18
          Caption = 'Ra'#231'a:'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -15
          Font.Name = 'Tahoma'
          Font.Style = [fsBold]
          ParentFont = False
        end
        object Label31: TLabel
          Left = 355
          Top = 26
          Width = 42
          Height = 18
          Caption = 'Sexo:'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -15
          Font.Name = 'Tahoma'
          Font.Style = [fsBold]
          ParentFont = False
        end
        object Label38: TLabel
          Left = 403
          Top = 26
          Width = 43
          Height = 18
          Caption = 'Macho'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -15
          Font.Name = 'Tahoma'
          Font.Style = []
          ParentFont = False
        end
        object Label39: TLabel
          Left = 628
          Top = 26
          Width = 55
          Height = 18
          Caption = 'Chiwawa'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -15
          Font.Name = 'Tahoma'
          Font.Style = []
          ParentFont = False
        end
        object DBEdit1: TDBEdit
          Left = 14
          Top = 22
          Width = 52
          Height = 26
          TabOrder = 0
        end
        object cxButton10: TcxButton
          Left = 66
          Top = 22
          Width = 24
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
          TabOrder = 1
        end
      end
      object cxPageControl1: TcxPageControl
        Left = 6
        Top = 218
        Width = 770
        Height = 176
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -12
        Font.Name = 'Tahoma'
        Font.Style = [fsBold]
        ParentFont = False
        TabOrder = 6
        Properties.ActivePage = cxTabSheet1
        Properties.CustomButtons.Buttons = <>
        ClientRectBottom = 172
        ClientRectLeft = 4
        ClientRectRight = 766
        ClientRectTop = 25
        object cxTabSheet1: TcxTabSheet
          Caption = 'Produtos'
          ImageIndex = 0
          object DBGrid3: TDBGrid
            AlignWithMargins = True
            Left = 3
            Top = 3
            Width = 756
            Height = 141
            Align = alClient
            TabOrder = 0
            TitleFont.Charset = DEFAULT_CHARSET
            TitleFont.Color = clWindowText
            TitleFont.Height = -12
            TitleFont.Name = 'Tahoma'
            TitleFont.Style = [fsBold]
            Columns = <
              item
                Expanded = False
                FieldName = 'C'#243'digo'
                Title.Alignment = taCenter
                Visible = True
              end
              item
                Expanded = False
                FieldName = 'Descri'#231#227'o'
                Width = 228
                Visible = True
              end
              item
                Expanded = False
                FieldName = 'Quant.'
                Width = 80
                Visible = True
              end
              item
                Expanded = False
                FieldName = 'Valor'
                Visible = True
              end
              item
                Expanded = False
                FieldName = 'Total'
                Visible = True
              end
              item
                Expanded = False
                FieldName = 'Desc. %'
                Visible = True
              end
              item
                Expanded = False
                FieldName = 'Desc. R$'
                Visible = True
              end
              item
                Expanded = False
                FieldName = 'Total Pagar'
                Width = 78
                Visible = True
              end>
          end
        end
        object cxTabSheet2: TcxTabSheet
          Caption = 'Servi'#231'os'
          ImageIndex = 1
          ExplicitLeft = 3
          ExplicitTop = 26
          ExplicitWidth = 0
          ExplicitHeight = 0
          object DBGrid4: TDBGrid
            AlignWithMargins = True
            Left = 3
            Top = 3
            Width = 756
            Height = 141
            Align = alClient
            TabOrder = 0
            TitleFont.Charset = DEFAULT_CHARSET
            TitleFont.Color = clWindowText
            TitleFont.Height = -12
            TitleFont.Name = 'Tahoma'
            TitleFont.Style = [fsBold]
            Columns = <
              item
                Expanded = False
                FieldName = 'C'#243'digo'
                Visible = True
              end
              item
                Expanded = False
                FieldName = 'Descri'#231#227'o'
                Width = 228
                Visible = True
              end
              item
                Expanded = False
                FieldName = 'Quant.'
                Width = 80
                Visible = True
              end
              item
                Expanded = False
                FieldName = 'Valor'
                Visible = True
              end
              item
                Expanded = False
                FieldName = 'Total'
                Visible = True
              end
              item
                Expanded = False
                FieldName = 'Desc. %'
                Visible = True
              end
              item
                Expanded = False
                FieldName = 'Desc. R$'
                Visible = True
              end
              item
                Expanded = False
                FieldName = 'Total Pagar'
                Width = 78
                Visible = True
              end>
          end
        end
        object cxTabSheet3: TcxTabSheet
          Caption = 'Vacinas'
          ImageIndex = 2
          ExplicitLeft = 0
          ExplicitTop = 0
          ExplicitWidth = 0
          ExplicitHeight = 0
          object DBGrid5: TDBGrid
            AlignWithMargins = True
            Left = 3
            Top = 3
            Width = 756
            Height = 141
            Align = alClient
            TabOrder = 0
            TitleFont.Charset = DEFAULT_CHARSET
            TitleFont.Color = clWindowText
            TitleFont.Height = -12
            TitleFont.Name = 'Tahoma'
            TitleFont.Style = [fsBold]
          end
        end
        object cxTabSheet4: TcxTabSheet
          Caption = 'Sinais Vitais'
          ImageIndex = 3
          ExplicitLeft = 0
          ExplicitTop = 0
          ExplicitWidth = 0
          ExplicitHeight = 0
          object Label21: TLabel
            Left = 3
            Top = 7
            Width = 91
            Height = 18
            Caption = 'Temperatura:'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clBlack
            Font.Height = -15
            Font.Name = 'Tahoma'
            Font.Style = []
            ParentFont = False
          end
          object Label22: TLabel
            Left = 170
            Top = 7
            Width = 155
            Height = 18
            Caption = 'Frequ'#234'ncia Respirat'#243'ria:'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clBlack
            Font.Height = -15
            Font.Name = 'Tahoma'
            Font.Style = []
            ParentFont = False
          end
          object Label23: TLabel
            Left = 490
            Top = 7
            Width = 135
            Height = 18
            Caption = 'Frequ'#234'ncia Cardiaca:'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clBlack
            Font.Height = -15
            Font.Name = 'Tahoma'
            Font.Style = []
            ParentFont = False
          end
          object Edit6: TEdit
            Left = 98
            Top = 5
            Width = 41
            Height = 23
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -12
            Font.Name = '-'
            Font.Style = []
            ParentFont = False
            TabOrder = 0
            Text = 'Edit1'
          end
          object Edit7: TEdit
            Left = 631
            Top = 5
            Width = 98
            Height = 23
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -12
            Font.Name = '-'
            Font.Style = []
            ParentFont = False
            TabOrder = 1
            Text = 'Edit1'
          end
          object Edit13: TEdit
            Left = 340
            Top = 5
            Width = 98
            Height = 23
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -12
            Font.Name = '-'
            Font.Style = []
            ParentFont = False
            TabOrder = 2
            Text = 'Edit1'
          end
          object DBMemo2: TDBMemo
            AlignWithMargins = True
            Left = 3
            Top = 34
            Width = 756
            Height = 110
            Align = alBottom
            TabOrder = 3
          end
        end
        object cxTabSheet5: TcxTabSheet
          Caption = 'Diagnosticos'
          ImageIndex = 4
          ExplicitLeft = 0
          ExplicitTop = 0
          ExplicitWidth = 0
          ExplicitHeight = 0
          object DBGrid7: TDBGrid
            AlignWithMargins = True
            Left = 3
            Top = 3
            Width = 756
            Height = 141
            Align = alClient
            TabOrder = 0
            TitleFont.Charset = DEFAULT_CHARSET
            TitleFont.Color = clWindowText
            TitleFont.Height = -12
            TitleFont.Name = 'Tahoma'
            TitleFont.Style = [fsBold]
          end
        end
        object cxTabSheet6: TcxTabSheet
          Caption = 'Exames'
          ImageIndex = 5
          ExplicitLeft = 0
          ExplicitTop = 0
          ExplicitWidth = 0
          ExplicitHeight = 0
          object DBGrid8: TDBGrid
            AlignWithMargins = True
            Left = 3
            Top = 3
            Width = 756
            Height = 141
            Align = alClient
            TabOrder = 0
            TitleFont.Charset = DEFAULT_CHARSET
            TitleFont.Color = clWindowText
            TitleFont.Height = -12
            TitleFont.Name = 'Tahoma'
            TitleFont.Style = [fsBold]
          end
        end
        object cxTabSheet7: TcxTabSheet
          Caption = 'Hemogramas'
          ImageIndex = 6
          ExplicitLeft = 0
          ExplicitTop = 0
          ExplicitWidth = 0
          ExplicitHeight = 0
          object DBGrid9: TDBGrid
            AlignWithMargins = True
            Left = 3
            Top = 3
            Width = 756
            Height = 141
            Align = alClient
            TabOrder = 0
            TitleFont.Charset = DEFAULT_CHARSET
            TitleFont.Color = clWindowText
            TitleFont.Height = -12
            TitleFont.Name = 'Tahoma'
            TitleFont.Style = [fsBold]
            Columns = <
              item
                Expanded = False
                FieldName = 'C'#243'digo'
                Visible = True
              end
              item
                Expanded = False
                FieldName = 'Tipo'
                Width = 115
                Visible = True
              end
              item
                Expanded = False
                FieldName = 'Sigla'
                Visible = True
              end
              item
                Expanded = False
                FieldName = 'Descri'#231#227'o'
                Width = 257
                Visible = True
              end
              item
                Expanded = False
                FieldName = 'Canino'
                Visible = True
              end
              item
                Expanded = False
                FieldName = 'Felinos'
                Visible = True
              end
              item
                Expanded = False
                FieldName = 'U. Medidas'
                Width = 80
                Visible = True
              end>
          end
        end
        object cxTabSheet8: TcxTabSheet
          Caption = 'Tratamento'
          ImageIndex = 7
          ExplicitLeft = 0
          ExplicitTop = 0
          ExplicitWidth = 0
          ExplicitHeight = 0
          object DBGrid10: TDBGrid
            AlignWithMargins = True
            Left = 3
            Top = 3
            Width = 756
            Height = 141
            Align = alClient
            TabOrder = 0
            TitleFont.Charset = DEFAULT_CHARSET
            TitleFont.Color = clWindowText
            TitleFont.Height = -12
            TitleFont.Name = 'Tahoma'
            TitleFont.Style = [fsBold]
          end
        end
        object cxTabSheet9: TcxTabSheet
          Caption = 'Observa'#231#227'o'
          ImageIndex = 8
          ExplicitLeft = 0
          ExplicitTop = 0
          ExplicitWidth = 0
          ExplicitHeight = 0
          object Descrição: TDBMemo
            AlignWithMargins = True
            Left = 3
            Top = 3
            Width = 756
            Height = 141
            Align = alClient
            TabOrder = 0
          end
        end
      end
      object GroupBox5: TGroupBox
        Left = 6
        Top = 400
        Width = 774
        Height = 85
        Caption = '  Totaliza'#231#227'o  '
        Color = clGradientInactiveCaption
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clGradientInactiveCaption
        Font.Height = -15
        Font.Name = '-'
        Font.Style = [fsBold]
        ParentBackground = False
        ParentColor = False
        ParentFont = False
        TabOrder = 7
        object Label24: TLabel
          Left = 14
          Top = 25
          Width = 74
          Height = 19
          Caption = 'Valor O.S.'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -16
          Font.Name = '-'
          Font.Style = [fsBold]
          ParentFont = False
        end
        object Label25: TLabel
          Left = 109
          Top = 25
          Width = 74
          Height = 19
          Caption = 'Desconto'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -16
          Font.Name = '-'
          Font.Style = [fsBold]
          ParentFont = False
        end
        object Label26: TLabel
          Left = 206
          Top = 25
          Width = 99
          Height = 19
          Caption = 'Total L'#237'quido'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -16
          Font.Name = '-'
          Font.Style = [fsBold]
          ParentFont = False
        end
        object Label27: TLabel
          Left = 324
          Top = 25
          Width = 106
          Height = 19
          Caption = 'Adiantamento'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -16
          Font.Name = '-'
          Font.Style = [fsBold]
          ParentFont = False
        end
        object Label28: TLabel
          Left = 450
          Top = 25
          Width = 113
          Height = 19
          Caption = 'PROD_SALDO Devedor'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -16
          Font.Name = '-'
          Font.Style = [fsBold]
          ParentFont = False
        end
        object Edit8: TEdit
          Left = 14
          Top = 52
          Width = 76
          Height = 27
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -16
          Font.Name = '-'
          Font.Style = [fsBold]
          ParentFont = False
          TabOrder = 0
          Text = 'Edit8'
        end
        object Edit9: TEdit
          Left = 109
          Top = 52
          Width = 76
          Height = 27
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -16
          Font.Name = '-'
          Font.Style = [fsBold]
          ParentFont = False
          TabOrder = 1
          Text = 'Edit8'
        end
        object Edit10: TEdit
          Left = 206
          Top = 52
          Width = 99
          Height = 27
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -16
          Font.Name = '-'
          Font.Style = [fsBold]
          ParentFont = False
          TabOrder = 2
          Text = 'Edit8'
        end
        object Edit11: TEdit
          Left = 324
          Top = 52
          Width = 106
          Height = 27
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -16
          Font.Name = '-'
          Font.Style = [fsBold]
          ParentFont = False
          TabOrder = 3
          Text = 'Edit8'
        end
        object Edit12: TEdit
          Left = 450
          Top = 52
          Width = 113
          Height = 27
          Color = clYellow
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -16
          Font.Name = '-'
          Font.Style = [fsBold]
          ParentFont = False
          TabOrder = 4
          Text = 'Edit8'
        end
        object cxButton9: TcxButton
          Left = 586
          Top = 25
          Width = 162
          Height = 54
          Caption = 'Imprimir Recibo'#13'Adiantamento'
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
          TabOrder = 5
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'Tahoma'
          Font.Style = [fsBold]
          ParentFont = False
          OnClick = cxButton9Click
        end
      end
      object cxButton12: TcxButton
        Left = 802
        Top = 14
        Width = 146
        Height = 51
        Caption = 'Novo'
        LookAndFeel.Kind = lfOffice11
        LookAndFeel.NativeStyle = False
        OptionsImage.Glyph.Data = {
          36100000424D3610000000000000360000002800000020000000200000000100
          2000000000000010000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000010000
          0001000000020000000300000005000000050000000500000005000000040000
          0002000000010000000100000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000001000000020000
          0004000000090000000E000000120000001400000015000000130000000E0000
          0009000000050000000200000001000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000002000000060000
          000E06100B3A143A279C1E5339D7236745FF236645FF1D5238D71438259C050F
          0A3C0000000F0000000700000002000000010000000000000000000000000000
          0000000000000000000000000000000000000000000100000001000000010000
          0001000000010000000100000001000000010000000300000008000000121131
          2283286E4DF728976AFF24AB77FF22BC81FF22BC81FF23AA76FF239264FF2468
          46F80F2E1F830000001300000008000000030000000100000000000000000000
          0000000000000000000077554AB7A57666FFA57565FFA57465FFA57464FFA374
          63FFA47363FFA37362FFA37262FFA17162FFA57869FFBCA79EFF518066FF328C
          68FF25B47EFF24BD85FF31C490FF37C794FF36C794FF30C490FF23BC83FF23B3
          7CFF258259FF1B4D34C101020219000000070000000200000001000000000000
          00000000000000000000A77868FFFDFCFAFFFBF8F6FFFBF8F5FFFBF7F4FFFBF7
          F4FFFAF7F4FFFAF6F3FFF9F5F1FFF7F2EFFFEFEDEAFF7AA590FF3E9976FF2AC0
          8BFF27C188FF27BF88FF438D6AFF477557FF477457FF438C68FF25BE87FF24BE
          85FF23BE85FF288960FF163E2B9D0000000E0000000400000001000000000000
          00000000000000000001AA796AFFFDFCFBFFF6ECE6FFF6ECE6FFF6ECE6FFF6EC
          E5FFF4EBE5FFF4EBE5FFF3EAE3FFEFE8E2FFC7D2CAFF388864FF46CCA0FF2AC2
          8BFF29C28BFF29C28AFF49785AFFEFE2D8FFF6EDE8FF487659FF27BF89FF27C1
          88FF27BF88FF27BB85FF2A7956FC07140E3E0000000700000001000000000000
          00000000000000000001AA7C6CFFFDFCFBFFF7EDE8FFF7EDE8FFF6ECE6FFF4ED
          E6FFF4ECE6FFF4ECE6FFF4EAE3FFEEE9E4FF7DAB95FF56B594FF38C997FF39CA
          98FF3FCC9DFF3FCC9DFF4A7A5CFFF1E4DEFFF7EFEAFF49795BFF3DCB9BFF3DCB
          9BFF37C896FF29C28BFF30A075FF19432F9C0000000B00000003000000000000
          00000000000000000001AC7D6FFFFEFDFCFFF7EFE9FFF7EDE8FFF7EDE9FFF6ED
          E8FFF6EDE6FFF6EDE6FFF3E9E3FFEFE9E6FF4C9675FF67D1B0FF33C893FF4A95
          72FF4C7E60FF4C7E5FFF4C7E5FFFF7F1EDFFF7F1ECFF4B7C5EFF4B7B5DFF4A7B
          5DFF47926EFF2AC38CFF2DB785FF26674ADA0000000D00000003000000000000
          00000000000000000000AD7F70FFFEFDFCFFF7F0EAFFF7EFE9FFF7EFE9FFF7EF
          E9FFF7EFE8FFF6EDE8FFF3EAE5FFEFEAE8FF3B926CFF6FDEBEFF33C994FF4F81
          63FFF6ECE7FFF9F4F1FFF9F3F0FFF8F3EFFFF8F2EEFFF8F2EDFFF8F1EDFFF7F1
          EDFF4B7D5FFF2DC58FFF31C38FFF2F7B59F40000000E00000003000000000000
          00000000000000000000AE8172FFFEFDFCFFF7F0EAFFF7F0EAFFF7F0E9FFF6EF
          E9FFF7EFE9FFF7EFE8FFF5EDE7FFF0ECE9FF3E9670FF7FE4C7FF48D2A5FF5084
          66FFEFE2DFFFEFE4DEFFEFE2DAFFF6ECE9FFF9F4F1FFF5ECE6FFEEDED5FFEBDE
          D2FF4D8061FF35C896FF3BC798FF307F5CF20000000D00000003000000000000
          00000000000000000000AF8475FFFEFDFDFFF8F1EBFFF8F1EBFFF8F0EBFFF7F0
          EBFFF7F0EAFFF7F0EAFFF5EEE7FFF2EEEAFF56A583FF8DDDC5FF89EAD1FF599F
          80FF518668FF518667FF518567FFF6EFECFFFAF6F4FF4F8465FF4F8465FF4F84
          64FF539A7AFF5BDBB4FF56CBA3FF2D7555D90000000B00000003000000000000
          00000000000000000000B18676FFFEFDFDFFF8F1EDFFF8F2ECFFF8F1EBFFF7F1
          EBFFF7F1EBFFF7F0EBFFF7EFE9FFF3EEEAFF8ABEA7FF8ACCB5FFAEF3E3FF7AE9
          CCFF76E7CAFF74E7C9FF528869FFF8F3F1FFFAF7F5FF508768FF6CE3C2FF6AE2
          C1FF69E2BFFF6AE2BFFF6CC1A4FF1F513B950000000800000002000000000000
          00000000000000000000B48878FFFEFDFDFFF9F2EDFFF8F2ECFFF8F2ECFFF8F1
          ECFFF8F1ECFFF7F1ECFFF6EFEAFFF6F0EAFFD3E1D7FF4DA883FFC5F4E9FFA3F2
          E0FF7DEAD0FF7CEACEFF538A6BFFF6EEEBFFF6EEEBFF528A6AFF74E7C9FF72E6
          C7FF71E5C6FF92EAD2FF449D78FC0A1912350000000400000001000000000000
          00000000000000000000B58979FFFEFEFDFFF9F3F0FFF8F2EDFFF8F2EDFFF8F2
          EDFFF8F2EDFFF8F1EDFFF8F1ECFFF7F0EBFFF6F1EEFF8DC4ACFF71C0A2FFD1F9
          F1FFB0F4E5FF89EED6FF60A588FF538C6DFF538C6DFF5EA586FF7BEACEFF81EA
          D0FFA6F1E0FF6ABA9BFF22564195000000070000000200000001000000000000
          00000000000000000000B78C7DFFFEFEFEFFF9F4F0FFF9F3F0FFF9F3EFFFF8F2
          EFFFF8F2EDFFF8F2EDFFF8F2EDFFF8F1ECFFF6F0ECFFF1F0ECFF74BB9DFF68BD
          9BFFC5F0E5FFC9F9EFFFAAF5E4FF91F0DAFF86EED5FF90EFD9FFA6F3E2FFB4ED
          DDFF65B898FF2E7457BD0204030F000000030000000100000000000000000000
          00000000000000000000B78E7FFFFEFEFEFFF9F4F1FFF9F4F0FFF9F3F1FFF9F3
          F0FFF8F3EFFFF8F2EFFFF9F2EFFFF8F3EFFFF7F1EEFFF7F1EDFFF6F3F0FFA5D1
          BDFF51AF89FF8FD2B9FFB9E9DBFFD9FAF4FFD8FAF4FFB8E8DBFF8DD0B8FF4EAA
          85FF1D4A38830000000C00000003000000010000000000000000000000000000
          00000000000000000000B98F80FFFFFEFEFFFAF4F1FFFAF6F1FFFAF4F1FFF9F4
          F1FFF9F3F1FFF9F3F0FFF9F3EFFFF9F3EFFFF9F3EFFFF7F1EEFFF7F1EEFFF7F3
          F1FFDBE8DFFF92C9B1FF67B896FF46AC82FF46AB82FF66B796FF92CAB2FFBBB9
          ACFF000000170000000600000001000000000000000000000000000000000000
          00000000000000000000BB9182FFFFFEFEFFFAF6F3FFF9F6F2FFF9F6F2FFF9F4
          F1FFF9F4F1FFFAF4F0FFF9F4F0FFF9F4F0FFF9F3F0FFF9F3EFFFF9F3EFFFF8F1
          EEFFF8F3EDFFF8F3EFFFF7F3F0FFF6F3F0FFF7F3F1FFF5F0EDFFF6F3F2FFBA93
          86FF000000120000000400000000000000000000000000000000000000000000
          00000000000000000000BC9384FFFFFEFEFFFAF7F3FFFBF7F3FFFAF6F2FFFAF7
          F2FFFAF6F2FFFAF6F2FFFAF4F1FFF9F4F1FFF9F4F0FFF9F3F1FFF9F4F0FFF9F3
          F0FFF9F3F0FFF8F2EEFFF8F2EEFFF7F1EEFFF5EFE9FFF4ECE6FFF5F0EDFFB385
          76FF000000100000000400000000000000000000000000000000000000000000
          00000000000000000000BD9685FFFFFFFEFFFBF8F4FFFAF7F4FFFAF7F3FFFAF7
          F3FFFAF7F3FFFAF6F3FFF9F6F2FFFAF6F2FFFAF6F2FFFAF6F1FFF9F4F1FFF8F3
          F0FFF9F4F1FFF8F3EFFFF8F2EEFFF6F0EBFFF4EDE8FFF2E9E5FFF3ECE9FFB389
          78FF0000000F0000000400000000000000000000000000000000000000000000
          00000000000000000000BF9787FFFFFFFFFFFBF8F6FFFBF8F4FFFAF7F6FFFAF7
          F4FFFAF7F3FFFAF7F3FFFAF7F3FFFAF6F3FFFAF6F2FFF9F6F3FFFAF6F2FFF8F2
          EFFFF6EFEBFFF5EDE9FFF3EAE6FFF0E5E2FFEEE2DDFFEBDED9FFECE1DDFFB589
          7AFF0000000E0000000400000000000000000000000000000000000000000000
          00000000000000000000C09989FFFFFFFFFFFBF8F7FFFBF8F6FFFBF8F6FFFBF8
          F6FFFAF8F4FFFBF7F4FFFAF7F4FFFBF7F4FFFAF7F4FFF9F5F2FFF9F5F1FFF5EE
          E9FFEEE2DCFFE6D8D0FFE1D2CAFFE0CEC7FFDECAC2FFDBC7BEFFDCC8C2FFB78C
          7DFF0000000D0000000300000000000000000000000000000000000000000000
          00000000000000000000C19A8BFFFFFFFFFFFBF9F7FFFBF9F7FFFBF9F6FFFDF9
          F6FFFBF8F6FFFAF8F6FFFBF8F6FFFBF8F4FFFAF7F4FFFBF7F4FFF8F2EFFFEFE6
          DFFFB38B7CFFA57766FFA47564FFA47464FFA47363FFA37363FFA37363FFA576
          65FF0000000A0000000300000000000000000000000000000000000000000000
          00000000000000000000C19B8CFFFFFFFFFFFBF9F8FFFBF9F8FFFDF9F7FFFBFA
          F7FFFBF9F7FFFBF9F7FFFBF8F6FFFBF8F6FFFBF8F6FFFAF8F4FFF7F2EFFFECDF
          DAFFAB7E6DFFFFFFFFFFFFFEFEFFFFFDFCFFFEFCFAFFFCF9F7FFCAAFA6FF4C35
          2D86000000060000000200000000000000000000000000000000000000000000
          00000000000000000000C39D8DFFFFFFFFFFFDFAF8FFFDFAF9FFFDF9F8FFFDFA
          F8FFFDF9F7FFFDF9F8FFFBF9F7FFFBF9F7FFFBF9F6FFFBF8F6FFF6F1EDFFEBDF
          DBFFB08574FFFFFEFEFFFEFBFAFFFDF9F7FFFCF6F3FFCEB2A8FF4F3830860000
          0008000000030000000100000000000000000000000000000000000000000000
          00000000000000000000C39D8FFFFFFFFFFFFEFAF9FFFDFAFAFFFDFBF9FFFDFA
          F9FFFDFAF8FFFDFAF9FFFDF9F8FFFBF9F7FFFBF9F8FFF9F6F4FFF6F0ECFFECE1
          DBFFB68C7DFFFFFEFEFFFDF9F6FFFBF6F3FFD1B5ACFF533B3386000000080000
          0003000000010000000000000000000000000000000000000000000000000000
          00000000000000000000C49E90FFFFFFFFFFFDFBFAFFFDFBFAFFFDFBF9FFFDFB
          F9FFFEFAF9FFFDFAF9FFFDFAF8FFFDFAF8FFF9F7F6FFF9F4F2FFF5EDEBFFEBE1
          DDFFBC9584FFFFFEFEFFFBF6F3FFD4BAAFFF563F368500000007000000030000
          0001000000000000000000000000000000000000000000000000000000000000
          00000000000000000000C5A190FFFFFFFFFFFEFDFBFFFDFBFBFFFDFDFBFFFEFB
          FAFFFEFBFAFFFDFBF9FFFDFBF9FFFBF7F6FFF9F5F3FFF7F1EEFFF3EBE7FFEDE1
          DCFFC19B8BFFFFFEFEFFD6BCB2FF59423A840000000600000002000000010000
          0000000000000000000000000000000000000000000000000000000000000000
          00000000000000000000C6A191FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFBF9F9FFF9F6F4FFF6F1F0FFF2ECE9FFEEE3
          E0FFC5A191FFDBC5BDFF5A453E83000000050000000200000001000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000093776CBDC6A291FFC6A192FFC6A191FFC59F91FFC69F
          92FFC59F91FFC59F90FFC59F91FFC49F90FFC49E90FFC49D8FFFC49E8EFFC39D
          8EFFC39D8EFF5D48418200000004000000020000000100000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000010000000100000002000000030000
          0003000000030000000300000003000000030000000400000004000000040000
          0004000000040000000300000001000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000}
        TabOrder = 8
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'Tahoma'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object cxButton2: TcxButton
        Left = 802
        Top = 89
        Width = 146
        Height = 51
        Caption = 'Cancelar'
        LookAndFeel.Kind = lfOffice11
        LookAndFeel.NativeStyle = False
        OptionsImage.Glyph.Data = {
          36100000424D3610000000000000360000002800000020000000200000000100
          2000000000000010000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0001000000010000000200000004000000050000000600000007000000070000
          0006000000050000000400000002000000010000000100000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000001000000010000
          0003000000060000000B0000001000000015000000180000001A0000001A0000
          001800000016000000110000000C000000070000000400000001000000010000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000010000000100000003000000070000
          000E0000001706031B4D0F084595180B69D11A0B6FD91E0E87FF1E0D87FF180A
          6ED9170968D10F06449606021B4F000000190000001000000008000000040000
          0001000000010000000000000000000000000000000000000000000000000000
          000000000000000000000000000100000001000000040000000B000000150B06
          2E6B1C0F76E11F148FFF1C199AFF1A1EA4FF1A1FA5FF1823ACFF1822ACFF191E
          A5FF1A1DA3FF1B1899FF1D118DFF1A0C75E20A052C6D000000180000000D0000
          0005000000010000000100000000000000000000000000000000000000000000
          0000000000000000000100000001000000050000000D040311361C0F6ECF2119
          96FF1D21A8FF1C27B2FF1E2AB4FF202DBAFF212DBAFF232FBDFF232FBCFF202D
          B9FF202CB9FF1E2AB6FF1B26B0FF1B1FA5FF1E1492FF180B6AD10402103A0000
          0010000000060000000100000001000000000000000000000000000000000000
          00000000000000000001000000050000000E0A062455241788F02022A5FF202B
          B5FF2231BBFF2432BDFF2533BDFF2533BDFF2533BEFF2533BEFF2433BEFF2532
          BEFF2432BEFF2433BDFF2532BDFF222EBAFF1E2AB3FF1E1EA1FF1D1181F10804
          225A000000120000000600000001000000000000000000000000000000000000
          000000000000000000040000000C0A072553281C93FA2329ADFF2532BCFF2735
          BFFF2735C1FF2836BFFF2836C1FF2836C0FF2836C2FF2836C0FF2836C0FF2836
          C0FF2736C0FF2736C0FF2736BFFF2635BFFF2635BEFF2230BAFF1F25A9FF2114
          8BFA080523590000001000000005000000010000000000000000000000000000
          0000000000020000000906041638281E8CEE262FB2FF2935C0FF2A38C1FF2B38
          C2FF2A39C3FF2B39C2FF2A3AC2FF2B3AC3FF2C3AC3FF2C3AC3FF2C3AC3FF2B3A
          C3FF2B39C3FF2B3AC3FF2939C2FF2A38C2FF2938C2FF2837C0FF2634BFFF2228
          AEFF211585EF0503143E0000000C000000030000000100000000000000000000
          00010000000500000010241B77CB2B2EAFFF2C3BC2FF2D3BC4FF2E3DC4FF2D3D
          C4FF3140C5FF4556CFFF4F5ED2FF4454CEFF303FC7FF2F3EC5FF2F3EC5FF303F
          C6FF4453CEFF4D5DD3FF4555CFFF303FC5FF2C3CC3FF2D3BC4FF2B3AC3FF2A38
          C1FF2526A8FF1D1270D000000016000000070000000100000000000000000000
          00020000000A110D3465312BA5FF3040C4FF2F3FC5FF2F40C6FF3041C6FF3344
          C7FF4B5ACFFF434ABBFF3D41B2FF444CBDFF4A5AD0FF3344C8FF3344C9FF495A
          D1FF4249BAFF393BACFF3E44B6FF4958CDFF3343C7FF2F3FC5FF2E3EC5FF2E3D
          C5FF2E3CC2FF29219AFF0D08306B0000000E0000000300000001000000010000
          00040000000F2C2489DD323BBBFF3344C8FF3243C8FF3244C8FF3444C9FF4B5A
          CFFF4046B6FF9597D4FFE8E8F6FF8081CBFF4147B8FF4D5ED3FF4D5FD3FF3E45
          B7FF7E80C9FFE7E8F5FF9293D0FF3A3EB0FF4959CEFF3244C7FF3142C7FF3041
          C7FF3243C7FF2C35B6FF24187EDF000000160000000700000001000000020000
          00070E0C294E3A36ACFF3A4AC9FF3546C9FF3646CAFF3648C9FF3748CBFF4349
          B9FF9597D4FFF9F4F1FFF5ECE6FFF9F5F4FF8182CBFF4046B7FF3F45B6FF7F81
          C9FFF9F5F3FFF4EBE5FFF9F4F1FF9192D0FF3C41B3FF3648C9FF3546CAFF3445
          C9FF3344C8FF3747C7FF2F29A1FF0B0827570000000B00000002000000020000
          00091F1A59924044BBFF3E4ECCFF384ACCFF394CCBFF3A4CCCFF3B4DCCFF3B3E
          AFFFE3DADCFFE7D9D1FFF4EAE4FFF4EBE4FFF9F5F4FF7F81C9FF7F80C8FFF9F5
          F4FFF4E9E2FFF4E9E2FFF3E8E1FFE9E2E5FF3233A6FF3A4CCCFF384BCBFF384A
          CAFF3748CAFF3A4CCBFF373AB2FF181252980000000E00000003000000020000
          000B2F2882C6444FC7FF3D50CEFF3C4ECDFF3C50CFFF3D50CFFF3D51CFFF3B43
          B8FF6E68AFFFD6C2BBFFE9DAD2FFF4EBE5FFF4EBE5FFF9F6F5FFF9F6F4FFF4EA
          E4FFF4EAE3FFF4EAE3FFE5D6D0FF6A64ADFF343BB1FF3E50CEFF3C4FCDFF3B4D
          CDFF3A4DCCFF3C4ECDFF3F48C0FF251D77CA0000001100000004000000030000
          000C3A36A2EC4958CEFF4052D0FF3F52D0FF4053D0FF4054D1FF4155D1FF4255
          D1FF3940B4FF6D66AEFFD7C2BCFFE9DBD3FFF6ECE6FFF6ECE5FFF4ECE5FFF4EB
          E5FFF6EBE5FFE7D8D1FF6A63ABFF3339AEFF4054CFFF4054D0FF3F52D0FF3E52
          CFFF3D50CFFF3E50CFFF4554CBFF2F2694ED0000001300000005000000030000
          000C423CAFFA5061D5FF4154D1FF4256D1FF4356D2FF4357D2FF4458D3FF4559
          D3FF465AD2FF3E43B5FF6D67AFFFE9DAD4FFF7EDE9FFF6EDE9FFF6EDE8FFF6ED
          E6FFF4EBE5FF706AB4FF393EB1FF4559D1FF4459D3FF4358D2FF4357D2FF4256
          D1FF4054D0FF3F53D0FF4C60D3FF362CA0FA0000001300000005000000030000
          000B4541B1FA5B6DDAFF4557D3FF4559D3FF465AD4FF465BD4FF475CD4FF4A5F
          D5FF687ADDFF464BB6FF7A79C1FFF5EFE9FFF7F0E9FFF6EFE9FFF6EFE9FFF6EF
          E9FFF4ECE7FF7977BFFF3F43B1FF6578DCFF4A5ED5FF475BD4FF465AD4FF4559
          D3FF4357D2FF4356D1FF576BD8FF3830A4FA0000001200000005000000020000
          000A433FABEC6576DAFF485ED5FF475CD5FF485DD5FF5468D9FF687BDDFF8496
          E5FF5255BAFF8080C7FFFAF8F7FFF7F0EBFFF7F1EBFFF7F0EBFFF7F0EAFFF7F0
          EAFFF7F0EAFFFAF7F7FF7A7AC3FF4549B2FF7789E0FF5D70DBFF5063D8FF485D
          D5FF465BD4FF475BD4FF6372D8FF38309DED0000001100000004000000020000
          000839378FC56F7DDAFF4E63D9FF5167D8FF7084E1FF7C8FE4FF7D90E4FF5A5F
          BFFF7D7CC5FFFAF8F7FFF8F2EFFFF8F1EDFFF8F2ECFFE9DDD8FFDECEC8FFEADE
          D8FFF7F0EBFFF7F0EBFFFAF8F7FF7775C0FF4D51B6FF6B7FDFFF687CDEFF5F73
          DBFF4E62D6FF4D62D7FF6A77D5FF302B84C80000000E00000003000000010000
          00062A28668F747DD6FF6F83E1FF8092E4FF8295E5FF8295E5FF8295E6FF3A3B
          A9FFE8E2E7FFEDE3DEFFF9F2EFFFF8F3EFFFE8DDD9FF6F68ADFF6D65A9FFD8C6
          BFFFEADFD8FFF8F2ECFFF7F1ECFFEDE9EEFF2F2D9EFF6F84E2FF6E81E0FF6B7F
          DFFF677BDEFF6376DDFF6C73CFFF23205F940000000B00000003000000010000
          0004151430486F72D1FF9FB0EDFF8699E6FF879AE7FF879AE7FF889BE8FF4E53
          B7FF8179B0FFDCCBC4FFEADFDCFFE7DBD7FF6F68ADFF494DB3FF484CB3FF6C64
          A9FFD8C7C0FFE7DCD7FFEBDFD9FF7E75B0FF4245B0FF7589E2FF7287E2FF7083
          E2FF6C80E0FF889BE8FF5F5FC4FF11102D4E0000000700000002000000000000
          0002000000075757AEDAA8B5EBFF90A3E9FF8D9FE9FF8EA0E9FF8EA0E9FF8696
          E4FF4649B0FF7E75ADFFC3B1B7FF6D66ABFF4A4FB4FF8799E6FF8698E6FF474C
          B1FF6B64A9FFC2B0B6FF796FAAFF3A3CA8FF7587DEFF7A8EE5FF778BE3FF7489
          E3FF768AE3FF99A5E5FF4643A0DC0000000E0000000400000001000000000000
          0001000000042324455B7E82D9FFB0C1F2FF92A5EAFF93A5EBFF93A5EBFF93A5
          EBFF8A9AE4FF4F54B6FF3534A2FF565CBBFF8D9FE8FF8FA2EBFF8EA1EAFF899C
          E7FF5157B9FF2E2C9CFF454AB0FF7C8EE1FF8295E7FF7F92E6FF7C90E5FF798D
          E5FF9EB0EDFF6C6ECBFF1C1B4061000000080000000200000000000000000000
          000000000002000000065455A2C6A8B2E9FFA8B9F0FF97AAECFF98AAECFF98AA
          ECFF98AAECFF97AAECFF97A9ECFF96A9ECFF95A8ECFF94A7ECFF93A6EBFF91A4
          EBFF8FA3EAFF8DA0EAFF8B9FEAFF899CE9FF859AE8FF8397E8FF8194E6FF93A5
          EBFF9CA5E3FF464497C80000000C000000040000000100000000000000000000
          000000000001000000030F0F1C286B6EC5ECBDCAF2FFACBEF1FF9DAFEDFF9DAF
          EEFF9DAFEDFF9DAFEDFF9BAEEDFF9AADEDFF9AACEDFF99ABEDFF97AAEDFF96A9
          ECFF94A7ECFF91A5EBFF8FA3EAFF8CA0EAFF8A9EEAFF879BE9FF99ACEDFFB2C0
          EEFF5C5CBBED0C0C1A2D00000006000000020000000000000000000000000000
          00000000000000000001000000041D1D3646787BD5F9BFCBF2FFBCCCF5FFA1B4
          EFFFA1B3EFFFA1B3EFFFA0B3EEFF9FB1EFFF9EB1EFFF9DAFEEFF9BAEEEFF9AAD
          EEFF98ABEDFF95A9ECFF93A6ECFF90A4EBFF8EA1EAFFACBEF2FFB6C3EFFF696B
          CBFA1818324A0000000700000002000000000000000000000000000000000000
          0000000000000000000000000001000000041D1E36457074CBEEB0BAEEFFD0E0
          F9FFB5C6F3FFA5B7F0FFA5B7F0FFA3B6F0FFA3B5EFFFA1B4EFFF9FB2EFFF9EB0
          EEFF9CAEEEFF99ACEDFF97ABEDFFA6B9F0FFC7D8F7FFA8B1E9FF6466C4EE1A1A
          334A000000070000000200000001000000000000000000000000000000000000
          000000000000000000000000000000000001000000030E0F1A235E60AAC89196
          E4FFC4D0F4FFD7E7FBFFC7D7F7FFB8C8F4FFB3C4F3FFA6B8F0FFA4B7F0FFAFC0
          F2FFB1C2F2FFC0D1F6FFD2E3FAFFBFCCF2FF888EDEFF5556A6CA0D0D19280000
          0006000000020000000100000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000100000002000000052728
          4656686CBCDA878CE1FFAAB2ECFFC4D1F4FFCAD6F6FFDDECFCFFDCECFCFFC8D5
          F5FFC1CEF3FFA5AEEAFF8085DEFF6163B7DA2526475B00000007000000040000
          0002000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000001000000010000
          000300000004161728323E3F6E825F61A9C56366B2CE797EDBFC787CDAFC6064
          B1CF5C5EA9C63A3D6D8415162734000000060000000400000002000000010000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0001000000010000000200000003000000040000000500000005000000050000
          0005000000040000000400000003000000020000000100000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000001000000010000000100000001000000010000
          0001000000010000000100000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000}
        TabOrder = 9
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'Tahoma'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object cxButton14: TcxButton
        Left = 802
        Top = 166
        Width = 146
        Height = 50
        Caption = 'Excluir'
        LookAndFeel.Kind = lfOffice11
        LookAndFeel.NativeStyle = False
        OptionsImage.Glyph.Data = {
          36100000424D3610000000000000360000002800000020000000200000000100
          2000000000000010000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000001000000010000000100000001000000010000
          0001000000010000000100000001000000010000000100000001000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000010000000100000004000000070000000A0000000B0000000B0000
          000B0000000B0000000C0000000B0000000A0000000800000004000000020000
          0001000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          00010000000300000007000000100000001B0000002200000027000000280000
          0028000000280000002800000028000000240000001C00000011000000080000
          0003000000010000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          000200000007000000121D130A476D4626BA986234F2A36937FFA26836FF9E6C
          41FF91857CFF9A704EFF9E6332FF985E30F8653E1FB71D12094D000000150000
          0009000000030000000100000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000020000
          0007000000135239237CCF935BFBE2A76EFFE9B47DFFD0965AFFB5783BFFB679
          3AFFB98D63FFC3B9B3FFBB9168FFB57839FFA46A31FF8F5525FD3E230F8D0000
          00190000000A0000000300000001000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000060000
          0012523A237CDA9E67FFEBB37CFFECB47DFFECB47CFFEEB984FFD1975CFFB578
          3BFFB5783BFFBA8E64FFC4BAB7FFBB926AFFB4783BFFB4783BFF9D622DFF4427
          1095000000180000000900000002000000010000000000000000000000000000
          00000000000000000000000000000000000000000000000000000000000C5138
          2375DA9F68FFEDB77FFFECB67FFFEDB67FFFEDB67FFFECB67FFFEFBD89FFD198
          5DFFB5793BFFB5793BFFBB8F65FFC6BCB9FFBB926BFFB5783BFFB5783BFFA064
          2FFF44281194000000180000000A000000020000000000000000000000000000
          000000000000000000000000000000000000000000000000000000000010C38A
          57F1ECB781FFEDB882FFEDB882FFEDB981FFEDB882FFEDB882FFEFB882FFEFC0
          8EFFD2995FFFB6793CFFB6793CFFBB9066FFC8C0BAFFBC946DFFB77A3BFFB77A
          3BFF2229A5FF02064B9600000017000000090000000200000000000000000000
          00000000000000000000000000000000000000000000000000000000000FCA99
          6AF0F1C594FFEFBA85FFEFBA84FFEFBA84FFEFBA85FFEFBA84FFEFBA84FFEFBA
          84FFF1C492FFD39A61FFB67A3DFFB6793DFFBD9168FFCBC2BCFFBE956EFF4147
          B7FF3140C8FF1B28AFFF02074C96000000170000000900000002000000000000
          00000000000000000000000000000000000000000000000000000000000A5541
          2D73DFAB77FFF3CB9DFFF0BB87FFEFBB87FFF0BC87FFF0BB87FFF0BC87FFF0BC
          87FFF0BB87FFF2C797FFD39B63FFB67A3EFFB67A3EFFBE9469FFCBC4C2FF6D74
          C7FF3342C9FF3342C9FF1C29B1FF02084D950000001600000009000000020000
          0000000000000000000000000000000000000000000000000000000000040000
          000D543D2877E0AD7BFFF5D0A2FFF0BF8BFFF1BE8BFFF1BE8BFFF1BF8BFFF1BF
          8BFFF1BE8BFFF0BF8BFFF3CB9EFFD49D65FFB67B3FFF464BBAFF6870C9FFCEC6
          C5FF6F76C8FF3545CBFF3645CBFF1E2BB2FF03094D9400000015000000080000
          0002000000000000000000000000000000000000000000000000000000010000
          00050000000D543E2976E1B07FFFF6D4A9FFF1C08DFFF1C08DFFF1C18DFFF1C0
          8DFFF1C18DFFF2C18DFFF1C18EFFF5CEA2FF6374D7FF3748CDFF3747CCFF6A73
          CBFFCFC9C7FF717ACBFF3748CDFF3747CDFF1F2EB3FF030A4D94000000140000
          0008000000020000000000000000000000000000000000000000000000000000
          0001000000050000000D553F2A75E1B384FFF7D7AEFFF2C290FFF2C290FFF2C2
          90FFF2C290FFF2C290FFF2C290FF8EA1E5FF99B1F4FF576FDFFF394AD0FF3A4A
          CFFF6C75CDFFD3CCC9FF747CCDFF394ACFFF394ACFFF212FB6FF040A4E930000
          0014000000080000000200000000000000000000000000000000000000000000
          000000000001000000050000000C55402C74E3B687FFF8DBB4FFF3C492FFF3C4
          93FFF3C493FFF3C493FF95A8E6FF7C99F0FF7B98F0FF9EB7F4FF5B72E0FF3C4D
          D1FF3C4DD1FF6F78D0FFD4CECEFF767ECFFF3C4DD1FF3C4DD1FF2332B7FF050B
          5092000000130000000700000002000000000000000000000000000000000000
          00000000000000000001000000040000000B56412D74E3B88BFFF9DEB7FFF4C6
          96FFF3C695FF9BADE8FF839EF1FF829DF1FF7F9CF1FF7F9BF0FFA4BDF6FF5E76
          E2FF4050D3FF4050D3FF727BD2FFD6D0D0FF7A81D2FF4050D3FF4050D3FF2534
          B9FF050B50920000001200000007000000020000000000000000000000000000
          0000000000000000000000000001000000040000000B56422E73E4BA8FFFFAE1
          BCFFA1B2E8FF88A4F2FF87A2F2FF87A2F2FF85A0F1FF839FF2FF829EF1FFAAC1
          F7FF6178E3FF4355D5FF4355D6FF757FD4FFD9D4D2FF7E87D4FF4355D5FF4355
          D5FF2737BBFF060C519100000011000000070000000100000000000000000000
          000000000000000000000000000000000001000000040000000A56432E728B99
          D6FFB9D1F9FF8DA7F3FF8CA6F2FF8AA5F2FF89A4F2FF88A3F2FF86A2F2FF86A1
          F2FFB0C6F8FF657BE4FF4657D7FF4657D7FF7781D7FFDBD6D6FF808AD7FF4658
          D7FF4657D7FF293ABDFF060D51900000000F0000000500000001000000000000
          00000000000000000000000000000000000000000001000000040000000A2029
          52717A8EDEFFBED4FAFF91AAF3FF8EA9F3FF8DA9F3FF8CA7F3FF8BA6F3FF8AA5
          F3FF89A4F2FFB5CAF8FF687FE6FF475BDAFF475BDAFF7985DAFFDED9D9FF838D
          D9FF475AD9FF485BDAFF2333B7FF050A3E6E0000000900000002000000000000
          0000000000000000000000000000000000000000000000000001000000030000
          0009212B52717F94DEFFC5DBFAFF9DB6F5FF9CB7F5FF9AB3F4FF97B2F4FF95AE
          F4FF8FABF4FF8DA8F3FFB9CEF9FF6A82E7FF4A5EDBFF4A5EDBFF7B88DBFFDFDC
          DCFF8590DBFF4A5EDBFF4357D2FF0A0F70CD0000000A00000002000000000000
          0000000000000000000000000000000000000000000000000000000000010000
          000300000008252F53708CA1E3FFC9DFFBFFA1BAF5FFA0BAF5FF9FB8F5FF9DB7
          F5FF9CB5F5FF9BB4F5FF95AFF4FFBED4F9FF6C85E8FF4B61DCFF4B61DCFF7D8B
          DEFFE2DEDFFF8A97DEFF3444C1FF090D51890000000800000002000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          000100000003000000082C36567093A8E5FFCCE2FBFFA5BEF6FFA4BCF6FFA3BB
          F5FFA1BBF6FFA0BAF5FF9FB8F5FF9EB7F5FFC5D8F9FF6E86E9FF4D63DEFF4D63
          DFFF8694E1FFDBD8D7FF3B3F77B4000002100000000400000001000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          00000000000100000003000000072E38576F98ADE7FFCFE4FCFFA8C1F7FFA7C0
          F7FFA6BEF6FFA5BEF6FFA4BDF6FFA2BBF6FFA1BAF5FFC9DDFBFF738BEAFF5B71
          E3FF5162D3FF353978B402020210000000050000000100000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000100000003000000072F39576E9BB0E7FFD0E5FDFFABC5
          F8FFAAC3F7FFA9C2F7FFA8C2F7FFA7BFF6FFA6BEF6FFA5BEF6FFD7EAFDFF8398
          E6FF121B77B30000020F00000005000000020000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          00000000000000000000000000010000000200000006313B586D9DB3E7FFD1E7
          FDFFAEC7F8FFADC6F8FFACC5F8FFABC4F7FFAAC2F7FFC6DDFBFFAABEEEFF4858
          90B20101020E0000000500000001000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000010000000200000006333D586DA0B5
          E8FFD2E7FDFFB1C8F8FFAFC7F8FFAFC7F8FFCBE2FCFFB2C5F0FF4E5F93B20102
          030D000000040000000100000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          000000000000000000000000000000000000000000010000000200000005343E
          586DA3B7E8FFD5E9FDFFBAD0F9FFD1E7FDFFB7C9F0FF536595B10102030B0000
          0004000000010000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000020000
          0005343F596B9DB2E6FFC9DDF7FFA7BCEBFF576896B00102030A000000030000
          0001000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          000200000004293044535B6D9AB23B4663760202030800000002000000010000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000010000000200000003000000030000000200000001000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000}
        TabOrder = 10
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'Tahoma'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object cxButton7: TcxButton
        Left = 802
        Top = 242
        Width = 146
        Height = 50
        Caption = 'Fechar'
        LookAndFeel.Kind = lfOffice11
        LookAndFeel.NativeStyle = False
        OptionsImage.Glyph.Data = {
          36100000424D3610000000000000360000002800000020000000200000000100
          2000000000000010000000000000000000000000000000000000000000000000
          0000000000000000000100000001000000010000000100000001000000010000
          0001000000010000000100000001000000010000000100000001000000010000
          0001000000010000000100000001000000010000000100000001000000010000
          0001000000010000000100000001000000000000000000000000000000000000
          0001000000010000000200000005000000060000000600000006000000060000
          0006000000070000000700000007000000070000000700000007000000070000
          0007000000070000000700000007000000070000000700000007000000070000
          0007000000060000000600000003000000010000000100000000000000000000
          0001000000040000000B00000013000000170000001800000019000000190000
          001900000019000000190000001A0000001A0000001A0000001A0000001A0000
          001B0000001B0000001B0000001B0000001B0000001B0000001C0000001C0000
          001C0000001B000000160000000E000000050000000100000000000000010000
          00020000000A0E0A2C5B2A208BEB2F2399FF2F2399FF2E2298FF2D2198FF2C20
          96FF2C2096FF2B1F95FF2B1F95FF2A1E94FF2B1D93FF291C93FF291B93FF291A
          93FF291A92FF271992FF271991FF271990FF26188FFF26178FFF26168FFF2416
          8EFF25168DFF201380EC0A06275E0000000D0000000300000001000000010000
          0004000000112D238DE8272DB1FF222FB9FF212DB7FF202DB7FF1F2BB6FF1F2B
          B6FF1F2BB6FF1E2AB6FF1E2AB6FF1F2BB4FF1E2BB6FF1E2AB6FF1E2AB6FF1E2A
          B4FF1D29B4FF1D29B4FF1C27B4FF1C28B4FF1B27B4FF1B27B3FF1B27B3FF1A26
          B3FF1B26B3FF1D20A8FF21147FE9000000150000000600000001000000010000
          000500000014342A9EFF2E3EC6FF2A3BC4FF2A3AC5FF2A3AC4FF2A3AC4FF2A3A
          C4FF2A3AC3FF2A38C4FF2A38C4FF2A38C4FF2937C3FF2837C3FF2A37C3FF2837
          C4FF2836C3FF2736C2FF2836C2FF2735C2FF2735C2FF2635C1FF2533C1FF2533
          C1FF2533C1FF1C27B3FF261890FF000000190000000600000001000000010000
          000500000015372DA1FF3142C7FF2D3DC6FF2E3CC5FF2D3EC5FF2D3DC6FF2C3C
          C5FF2D3CC5FF2C3DC5FF2C3CC5FF2D3BC5FF2C3CC4FF2C3AC4FF2B39C4FF2B3B
          C4FF2B39C4FF2B39C3FF2A38C3FF2939C3FF2937C3FF2837C3FF2736C3FF2836
          C2FF2735C1FF1D29B4FF281A92FF0000001A0000000700000001000000000000
          000500000014382FA4FF3747C9FF3041C7FF3041C7FF2F40C7FF3041C7FF2F40
          C7FF2F40C7FF2F40C6FF303EC6FF2F3FC6FF2E3FC6FF2F3DC6FF2E3EC7FF2E3C
          C6FF2D3DC6FF2D3BC6FF2C3CC5FF2D3AC5FF2B39C4FF2B39C4FF2B39C4FF2A38
          C4FF2937C4FF1F2CB7FF2A1D94FF000000190000000600000001000000000000
          0005000000133B32A5FF3A4CCAFF3243C9FF3343C9FF3243C8FF3243C9FF3242
          C8FF3646C9FF4A5BD2FF5363D5FF4757D1FF3242C9FF3142C8FF3142C8FF3241
          C8FF4555D0FF5060D4FF4857D1FF3340C7FF2E3EC7FF2E3EC6FF2E3BC5FF2D3B
          C5FF2B3CC5FF222DB8FF2D2095FF000000190000000600000001000000000000
          0005000000133D34A8FF3E4FCEFF3547CAFF3547CAFF3546CAFF3547CBFF3849
          CCFF4F5DD2FF444BBCFF3D41B2FF464DBEFF4C5CD1FF3545C9FF3545C9FF4B5B
          D1FF424ABBFF393BACFF3E44B6FF4B59CFFF3444C9FF313FC7FF303FC8FF2F40
          C7FF2F3EC6FF2430BBFF2F2198FF000000180000000600000001000000000000
          0004000000123E36AAFF4357CFFF384ACCFF3849CCFF384ACDFF394ACCFF4E5E
          D2FF4046B6FF9597D4FFE8E8F6FF8081CBFF4148B8FF4F5FD4FF4E5ED4FF3F45
          B7FF7E80C9FFE7E8F5FF9293D0FF3A3EB0FF4A58CEFF3444C9FF3243C8FF3242
          C8FF3142C8FF2734BCFF30249AFF000000170000000600000001000000000000
          0004000000114139ADFF495CD2FF3B4ECDFF3B4FCEFF3C4DCEFF3B4CCEFF444A
          BAFF9597D4FFF9F4F1FFF5ECE6FFF9F5F4FF8182CBFF4046B7FF3F45B6FF7F81
          C9FFF9F5F3FFF4EBE5FFF9F4F1FF9192D0FF3C40B3FF3647CBFF3646CAFF3545
          C9FF3444C9FF2A38BEFF32269CFF000000160000000600000001000000000000
          000400000010413BAFFF4D61D3FF3E52D0FF3E52CFFF3E51D0FF3E52CFFF3B3E
          AFFFE3DADCFFE7D9D1FFF4EAE4FFF4EBE4FFF9F5F4FF7F81C9FF7F80C8FFF9F5
          F4FFF4E9E2FFF4E9E2FFF3E8E1FFE9E2E5FF3233A6FF394ACCFF394ACCFF3849
          CCFF3747CBFF2B3CC1FF34299EFF000000160000000500000001000000000000
          000400000010443EB2FF5267D7FF4155D2FF4156D1FF4255D1FF4155D1FF3C44
          B9FF6E68AFFFD6C2BBFFE9DAD2FFF4EBE5FFF4EBE5FFF9F6F5FFF9F6F4FFF4EA
          E4FFF4EAE3FFF4EAE3FFE5D6D0FF6A64ADFF343BB1FF3D4DCEFF3B4CCEFF3B4C
          CDFF3A4BCDFF2F3EC3FF372DA1FF000000150000000500000001000000000000
          00040000000F4540B4FF586CD8FF4559D3FF465AD3FF4458D3FF4559D3FF4457
          D2FF3940B4FF6D66AEFFD7C2BCFFE9DBD3FFF6ECE6FFF6ECE5FFF4ECE5FFF4EB
          E5FFF6EBE5FFE7D8D1FF6A63ABFF3339AEFF4051CEFF3F51D0FF3F51CFFF3D50
          CFFF3D4FCEFF3141C5FF392FA3FF000000140000000500000001000000000000
          00040000000E4742B6FF5C72DAFF475CD5FF485DD4FF475BD4FF495CD5FF485C
          D5FF495CD3FF3E44B5FF6D67AFFFE9DAD4FFF7EDE9FFF6EDE9FFF6EDE8FFF6ED
          E6FFF4EBE5FF706AB4FF393EB0FF4456D0FF4356D2FF4354D2FF4153D1FF4153
          D1FF3F52D0FF3545C8FF3B31A5FF000000130000000500000000000000000000
          00030000000E4A45B9FF6178DDFF4B61D7FF4B60D6FF4B60D6FF4B5FD6FF4C60
          D6FF6074DBFF4247B5FF7A79C1FFF5EFE9FFF7F0E9FFF6EFE9FFF6EFE9FFF6EF
          E9FFF4ECE7FF7977BFFF3C3FB0FF5E70DAFF475AD4FF4758D3FF4558D2FF4457
          D2FF4356D1FF3849CAFF3B33A8FF000000130000000500000000000000000000
          00030000000D4C47BBFF667CDEFF4D64D8FF4E64D8FF4E64D7FF4D62D7FF6174
          DCFF484CB8FF8080C7FFFAF8F7FFF7F0EBFFF7F1EBFFF7F0EBFFF7F0EAFFF7F0
          EAFFF7F0EAFFFAF7F7FF7A7AC3FF3E42B0FF5C6FDAFF4A5CD5FF485CD4FF465A
          D4FF475AD3FF3A4CCCFF3E36AAFF000000120000000500000000000000000000
          00030000000C4D49BDFF6A82E0FF5067DAFF5066D9FF5066D9FF5166D9FF4C53
          BCFF7D7CC5FFFAF8F7FFF8F2EFFFF8F1EDFFF8F2ECFFE9DDD8FFDECEC8FFEADE
          D8FFF7F0EBFFF7F0EBFFFAF8F7FF7775C0FF4348B4FF4C5FD6FF4B5DD6FF4A5E
          D5FF4A5CD5FF3E50CEFF3E38ACFF000000110000000400000000000000000000
          00030000000C4D4BC0FF6E86E2FF536ADBFF5369DBFF5D73DCFF6F83E1FF3A3A
          A9FFE8E2E7FFEDE3DEFFF9F2EFFFF8F3EFFFE8DDD9FF6F68ADFF6D65A9FFD8C6
          BFFFEADFD8FFF8F2ECFFF7F1ECFFEDE9EEFF2F2D9EFF6073DCFF5367D9FF4D61
          D7FF4C5FD7FF4155D0FF413BAFFF000000110000000400000000000000000000
          00030000000B4F4DC2FF728AE4FF5E74DEFF798CE4FF8396E6FF8396E6FF4C51
          B7FF8179B0FFDCCBC4FFEADFDCFFE7DBD7FF6F68ADFF474AB2FF4649B2FF6C64
          A9FFD8C7C0FFE7DCD7FFEBDFD9FF7E75B0FF4043AFFF6E81E0FF6C7FE0FF6477
          DEFF5267D9FF4457D1FF423DB1FF000000100000000400000000000000000000
          00030000000A5050C4FF8A9FE9FF879AE8FF899BE8FF889CE8FF889AE8FF8191
          E2FF4547B0FF7E75ADFFC3B1B7FF6D66ABFF484DB3FF8091E3FF7E90E3FF4549
          B0FF6B64A9FFC2B0B6FF796FAAFF393BA7FF6F7FDCFF7386E2FF7284E1FF6E82
          E1FF6C7FDFFF5366D7FF4741B4FF0000000F0000000400000000000000000000
          00020000000A6164CCFFA2B6EFFF8DA1EAFF8EA1EAFF8EA1EAFF8D9FEAFF8D9F
          EAFF8594E2FF4D51B5FF3534A2FF5358BBFF8696E6FF8899E8FF8697E8FF8292
          E4FF4E53B8FF2E2C9CFF4347AFFF7585DEFF7B8DE4FF788BE3FF7589E3FF7487
          E2FF7084E1FF6478DDFF5755BEFF0000000E0000000400000000000000000000
          0002000000096C6FD2FFA6BCF1FF93A6ECFF93A6ECFF93A6ECFF93A5ECFF92A4
          EBFF92A4EBFF91A3EBFF90A2EBFF8FA1EAFF8E9FE9FF8D9DEAFF8B9CE9FF8A9B
          E9FF8799E8FF8697E8FF8395E7FF8293E6FF8091E6FF7E90E6FF7B8DE5FF788B
          E5FF7588E3FF697CDFFF6363C5FF0000000E0000000300000000000000000000
          0002000000087075D5FFABC1F2FF99ABEDFF99ABEDFF98ABEDFF98AAEDFF97A9
          EDFF97A8ECFF96A7ECFF96A6ECFF95A5EBFF93A4EBFF92A3EBFF90A1EAFF8F9F
          EAFF8D9EEAFF8B9CE9FF899AE8FF8698E8FF8595E7FF8294E7FF8092E6FF7D90
          E6FF7A8DE5FF6E82E0FF6768C8FF0000000D0000000300000000000000000000
          000200000008757AD8FFB1C5F3FF9DB1EFFF9DB0EFFF9DB0EFFF9DAFEFFF9DAE
          EEFF9BADEEFF9BACEEFF9AABEDFF99AAEDFF98A8EDFF96A7ECFF95A6ECFF93A4
          EBFF91A3EBFF8FA0EAFF8D9FEAFF8B9DE9FF889BE9FF8799E8FF8396E8FF8194
          E7FF7F91E6FF7386E3FF6B6ECBFF0000000C0000000300000000000000000000
          0002000000077A7FDAFFBCCFF5FFA2B5F0FFA2B4F0FFA2B4F0FFA2B4F0FFA1B3
          EFFFA0B2EFFFA0B1EFFF9FB0EFFF9EAEEFFF9CADEEFF9BABEDFF99AAEDFF98A8
          EDFF96A7EDFF93A5ECFF91A3ECFF8FA1EBFF8D9FEAFF8B9DEAFF889BE9FF8598
          E8FF8396E8FF798CE4FF7074CFFF0000000B0000000300000000000000000000
          0001000000057277C8E8BECAF1FFD4E1F9FFD3E0F9FFD2DFF9FFD0DEF9FFCFDD
          F9FFCDDBF7FFCBDAF7FFC9D7F7FFC6D5F6FFC4D4F6FFC2D1F6FFC0CFF5FFBDCE
          F5FFBACBF4FFB7C9F4FFB5C6F3FFB2C3F3FFAEC1F1FFABBFF1FFA8BCF1FFA5B9
          F1FFA2B7F0FF90A0E6FF6A6EBEE9000000080000000200000000000000000000
          00010000000320223744656BAFCB8087DEFF7F87DEFF7F87DDFF7F86DDFF7F86
          DCFF7F85DCFF7E84DCFF7D84DCFF7D84DBFF7D84DBFF7C83DBFF7C82D9FF7C82
          D9FF7B82D9FF7A81D9FF7A81D8FF7A80D8FF7A80D7FF797FD7FF787FD6FF7A7F
          D6FF787ED6FF5F63A8CD1E1F3447000000050000000100000000000000000000
          0000000000010000000200000004000000050000000600000006000000060000
          0006000000070000000700000007000000070000000700000007000000080000
          0008000000080000000800000008000000080000000800000009000000090000
          0009000000080000000700000004000000020000000000000000000000000000
          0000000000000000000100000001000000010000000100000001000000010000
          0001000000010000000200000002000000020000000200000002000000020000
          0002000000020000000200000002000000020000000200000002000000020000
          0002000000020000000200000001000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000}
        TabOrder = 11
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'Tahoma'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object cxButton6: TcxButton
        Left = 802
        Top = 317
        Width = 146
        Height = 50
        Caption = 'Imprimir O.S.'
        LookAndFeel.Kind = lfOffice11
        LookAndFeel.NativeStyle = False
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
        TabOrder = 12
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'Tahoma'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object cxButton5: TcxButton
        Left = 802
        Top = 416
        Width = 146
        Height = 50
        Caption = 'Recebimentos'
        LookAndFeel.Kind = lfOffice11
        LookAndFeel.NativeStyle = False
        OptionsImage.Glyph.Data = {
          36190000424D3619000000000000360000002800000028000000280000000100
          2000000000000019000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          00000000000000000000000000000000000000000000010203030D212C2C2B69
          92933E92CCCC3A88BEBF1C445D5D050D12120000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          000000000000000000000205070708121A1A122D3F3F3888BCBD4DB7FFFF4DB7
          FFFF4DB7FFFF4DB7FFFF4DB7FFFF45A6E8E92D6B9495122C3E3E071118180103
          0505000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          000003070A0A0E212E2E204C6A6A3985BBBC44A6E7E843A6EAF043ABF5FD43A7
          EDF344A6E9EC4AB0F6F74DB7FFFF4DB7FFFF4DB7FFFF48ADF0F13682B4B51E47
          63630E223030040A0D0D00000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          000000000000000000000000000000000000000000000000000003080B0B1128
          3838296288883B8DC4C54AB0F6F745A8EBEC3793D8E42F8BD6E83093E5FC308E
          D9EE328DD4E23A9AE3ED3F9CDEE247ADF0F24DB7FFFF4DB7FFFF4DB7FFFF4BB2
          F7F83C8FC7C82A648B8C16364B4B050C10100000000003060808102634341F49
          6666060E13130000000000000000000000000000000000000000000000000000
          000000000000000000000000000000000000040A0E0E16354B4B2E709B9C3E95
          CECF4CB3FAFB4DB7FFFF4BB4FBFC3B9CE6F03093E5FC3896DFEA40A3ECF63C9E
          E7F23396E1F23192E3F9308FDAEC3695DFEE3994D5DD46A5E9EA4BB6FCFD4DB7
          FFFF4DB7FFFF4BB2F9FA429EDBDC3782B4B5214F6E6E2C6992933E92CCCD48AA
          EDEE17374C4C0000000000000000000000000000000000000000000000000000
          00000000000000000000000000001C435D5D3680B4B546A6E6E74BB2F9FA4DB7
          FFFF4DB7FFFF4DB7FFFF48B0FAFE379CECFE399EEEFF4AB1F8FA4BB5FBFD4AB4
          FAFC48B2F8FC3F9CDFE43084C6D33090DFF43092E2F63495E5FA348ACCD53F98
          D6D94DB7FFFF4DB7FFFF4DB7FFFF4DB7FFFF48ABF0F04BB2F7F84DB7FFFF4DB7
          FFFF3175A2A30000000000000000000000000000000000000000000000000000
          0000000000000E2230303D91CACB4DB7FFFF4DB7FFFF4DB7FFFF4DB7FFFF4DB7
          FFFF4DB7FFFF4CB6FEFF43ACF7FF349AEBFF3BA2F1FF4DB7FFFF4DB7FFFF4DB7
          FFFF4DB7FFFF4DB7FFFF4DB7FFFF47AAECEE3789C6CD3391DAEB3292E1F52F8F
          DDF2388DCDD54DB7FFFF4DB7FFFF4DB7FFFF4DB7FFFF4DB7FFFF4DB7FFFF4DB7
          FFFF4DB7FFFF08141A1A00000000000000000000000000000000000000000000
          0000000000002B658D8E4BB2F7F84DB7FFFF4DB7FFFF4DB7FFFF4DB7FFFF4CB6
          FFFF48B1FBFF42AAF6FF389DEDFF3296E9FF369AECFF47B0FAFF4CB6FEFF4DB7
          FFFF4DB7FFFF4DB7FFFF4DB7FFFF4DB7FFFF4DB7FFFF48ADF2F33D97D5D83A9C
          E6F242A5EBF24DB7FFFF4DB7FFFF4DB7FFFF4DB7FFFF4DB7FFFF4DB7FFFF4DB7
          FFFF4DB7FFFF25597C7C00000000000000000000000000000000000000000000
          0000000000002B678E8F4BB2F7F84DB7FFFF4DB7FFFF4CB6FEFF46AFFAFF3FA5
          F3FF379CEDFF3296E9FF3195E8FF3195E8FF3195E8FF369BECFF3EA6F3FF43AC
          F6FD4BB3FBFE4DB7FFFF4DB7FFFF4DB7FFFF4DB7FFFF4DB7FFFF4DB7FFFF4DB7
          FFFF4DB7FFFF4DB7FFFF4DB7FFFF4DB7FFFF4DB7FFFF4DB7FFFF4DB7FFFF4DB7
          FFFF4DB7FFFF3E92CCCD07101616000000000000000000000000000000000000
          0000000000000E212E2E3580B2B349B0F5F6378AC2C4348ED0DB369BECFF3296
          E8FF3195E8FF3195E8FF3195E8FF3195E8FF3195E8FF2F92E4FC2779BBCD1B4C
          72791B435E5F2C6B939448A9ECED4DB7FFFF4DB7FFFF4DB7FFFF4DB7FFFF4DB7
          FFFF4DB7FFFF4DB7FFFF4DB7FFFF4DB7FFFF4DB7FFFF4DB7FFFF4DB7FFFF4DB7
          FFFF4DB7FFFF46A8E9EA1A3E5656000000000000000000000000000000000000
          00000000000000010202071219190C1D282808131B1C153F626B2D87D4E93195
          E8FF22649DAD2471B0C13195E8FF3195E8FF2D88D4E8143F626B06111B1E0205
          080901020303050B10100E222F2F25587A7A3F94CFD04BB3FAFB4DB7FFFF4DB7
          FFFF4DB7FFFF4DB7FFFF4DB7FFFF4DB7FFFF4DB7FFFF4DB7FFFF4DB7FFFF4DB7
          FFFF4DB7FFFF3F99D3D41A405959000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000020508090102
          020200000000040D141610324E560F2E484F02070A0B00000000000000000000
          00000000000000000000000000000000000002050707112939392F6F9C9D429F
          DEDF47ABEEEF4AAEF3F44AAEF3F44AAEF3F447A8EAEB44A1E0E13D91C9CA2A65
          8D8E102635350000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000D1F
          2B2B204C6A6A265B7F7F265B7F7F265B7F7F1B405A5A0F23313103080B0B0000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          00000000000000000000000000000A120A1A223D215E0D170C25000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          00000000000000000000070B07112F5A2E8F3E863AE9376D35B3090F08190000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          000000000000000000000000000000000000172B164E255021AE0B1309210000
          00000000000000000000355F32943B8A37F43C8E38FF3D8E39FB3F773CC30000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000060E061F22591FDA215F1CFF266023E81B36
          18730B130A22356033953C8E38FF3C8E38FF3C8E38FF3C8E38FF3C8E38FF3E77
          3DC2091008190000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          00000000000000000000040804111F461C9C215E1CF9205E1BFF205E1BFF2B6A
          26FA407B3CDC3C8B38F74A9847FF42923EFF3C8E38FF40913CFF4C9948FF408E
          3BFB376D35B30D170C2500000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          000000000000000000001227105722591DE4205E1BFF205E1BFF276522FF3C81
          38FF3E8D3AFF58A155FF87C185FF7BB878FF72B26FFF78B775FF8AC287FF64A9
          60FF3F8F3DF9356832AE0D170C25000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000B150A2B22501FBE24631FFE215F1CFF266421FF42863EFF3E8E
          3AFF59A156FF91C78FFFA7D6A5FFA7D6A5FFA7D6A5FFA7D6A5FFA7D6A5FF9ACD
          97FF65AA62FF408F3DF9376D35B3090F08190000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          00000305030A1735147A215D1CFA4A8B46FF70B26DFF5DA35AFF3F8F3BFF58A0
          54FF91C78FFFA6D5A4FFA7D6A5FFA7D6A5FFA7D6A5FFA7D6A5FFA7D6A5FFA6D6
          A4FF99CD97FF64A960FF408E3BFB3F773CC30000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          00000D1D0C42276322F83B7A36FF72B46FFF6BB269FF3E8F3AFF5CA359FF95CA
          93FFA7D6A5FFA7D6A5FFA7D6A5FFA7D6A5FF98CC95FF5CA459FF42923EFF7DB9
          7AFFA7D6A5FF9FD09DFF64A960FF3E903AFF3E773DC209100819000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000509
          0511285D24D72A6925FF5C9D58FF68AF65FF42933EFF5CA358FF95C993FFA7D6
          A5FFA7D6A5FFA7D6A5FFA7D6A5FFA7D6A5FF7FBB7CFF459441FF3C8E38FF539D
          4FFFA7D6A5FFA7D6A5FF82BD7FFF459441FF3D8D39FB376D35B30D170C250000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000001D3B
          1A7D246220FE43833FFF60A75DFF449441FF58A055FF96CA94FFA4D4A2FF99CC
          97FF8EC58CFF94C992FFA1D29FFFA7D6A5FF8EC58BFF549E50FF3F903BFF6CAE
          69FFA7D6A5FFA7D6A5FF71B16DFF40913CFF3C8E38FF3E8D3BF9356832AE0D17
          0C25000000000000000000000000000000000000000000000000000000000000
          00000000000000000000000000000000000000000000000000001325114A235A
          20E22E6D29FF599F56FF459441FF59A156FF91C78FFF98CC96FF6FB16DFF56A0
          53FF4F9B4CFF539E50FF62A75EFF8FC68CFFA4D4A1FF90C78EFF86C083FF9CCE
          9AFFA7D6A5FFA7D6A5FF6CAF6AFF3F903BFF3C8E38FF3C8E38FF448B40ED192E
          1949000000000000000000000000000000000000000000000000000000000000
          00000000000000000000000000000000000000000000040904131C4618AD215F
          1CFC579C52FF42923EFF58A054FF91C78FFF93C991FF4E9A4AFF40913CFF3C8E
          38FF3C8E38FF3C8E38FF3D8F39FF5AA257FF95CA93FFA7D6A5FFA7D6A5FFA7D6
          A5FFA7D6A5FFA7D6A5FF74B471FF41923DFF3C8E38FF3C8339E3254324680408
          040C000000000000000000000000000000000000000000000000000000000000
          000000000000000000000000000000000000020402081B3A18802A6625F8498D
          45FF3E8F3AFF5CA359FF95CA93FF96CB94FF4E9A4AFF3C8E38FF3C8E38FF3C8E
          38FF3C8E38FF3C8E38FF3C8E38FF41913DFF79B776FFA7D6A5FFA7D6A5FFA7D6
          A5FFA7D6A5FF9CCF9AFF6BAD68FF42923EFF387C36D722392157000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000010100020F1F0E41295E26D73E843BFF3E8E
          3AFF5CA358FF95C993FFA5D4A3FF6AAD67FF3F903BFF3C8E38FF3C8E38FF3C8E
          38FF3C8E38FF3C8E38FF3C8E38FF3C8E38FF71B26EFFA7D6A5FFA7D6A5FFA6D5
          A4FF97CC95FF67AB64FF41923DFF387936D0192A193E00000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000050A0416265023AB3D8139FE3E8D3AFF58A0
          55FF96CA94FFA7D6A5FF98CB95FF559F52FF3C8E38FF3C8E38FF3C8E38FF3C8E
          38FF3C8E38FF3C8E38FF3C8E38FF40913CFF77B675FFA7D6A5FFA7D6A5FF95CA
          91FF5EA55AFF43913FFC387535C5172A17410000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          00000000000000000000000000001D371B6740853DF93E8E3AFF59A156FF91C7
          8FFFA7D6A5FFA7D6A5FF8DC58BFF4F9A4BFF3C8E38FF3C8E38FF3C8E38FF3C8E
          38FF3C8E38FF3C8E38FF3C8E38FF4E9A4AFF8BC489FFA7D6A5FF94C992FF58A1
          54FF3F903DFD326930B013221235020302050000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          00000000000000000000070C0616448340EA3D8E39FF4C9949FF89C287FFA6D5
          A4FFA7D6A5FFA7D6A5FF92C790FF519C4EFF3C8E38FF3C8E38FF3C8E38FF3C8E
          38FF3C8E38FF3C8E38FF3E903AFF68AC66FFA3D4A1FF90C68EFF529D4EFF3E8E
          3AFC386E35B80D170C2401010102000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          00000000000000000000386235A432752FD432752FD4377934D46FA06FD48BB2
          88D48BB288D48BB288D488B086D44C884BD432752FD432752FD432752FD43275
          2FD432752FD432752FD44C884BD487AF84D472A16FD43E7E3CD432752FD43460
          3498000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
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
        TabOrder = 13
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'Tahoma'
        Font.Style = [fsBold]
        ParentFont = False
        OnClick = cxButton5Click
      end
    end
  end
end
Trocou SALDO por @_@_@_@_@_@ : automaticamente em 17/06/2020 21:30
Trocou @_@_@_@_@_@ por PROD_SALDO : automaticamente em 17/06/2020 21:32
