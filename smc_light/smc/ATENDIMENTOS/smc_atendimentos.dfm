object frm_atendimentos: Tfrm_atendimentos
  Left = 0
  Top = 0
  BorderIcons = [biSystemMenu]
  BorderStyle = bsSingle
  Caption = 'OS | Atendimentos'
  ClientHeight = 571
  ClientWidth = 967
  Color = clGradientInactiveCaption
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
  PixelsPerInch = 96
  TextHeight = 13
  object cxPageControl1: TcxPageControl
    Left = 0
    Top = 0
    Width = 967
    Height = 571
    Align = alClient
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -12
    Font.Name = 'Tahoma'
    Font.Style = [fsBold]
    ParentFont = False
    TabOrder = 0
    Properties.ActivePage = tab_consulta
    Properties.CustomButtons.Buttons = <>
    LookAndFeel.Kind = lfUltraFlat
    LookAndFeel.NativeStyle = False
    LookAndFeel.SkinName = 'metropolis'
    ClientRectBottom = 569
    ClientRectLeft = 2
    ClientRectRight = 965
    ClientRectTop = 29
    object tab_consulta: TcxTabSheet
      Caption = 'Consultar'
      ImageIndex = 0
      OnShow = tab_consultaShow
      object Label1: TLabel
        Left = 13
        Top = 14
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
      object gd_atendimentos: TcxGrid
        Left = 10
        Top = 91
        Width = 942
        Height = 438
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
        object gd_atendimentosTbVw: TcxGridDBTableView
          OnDblClick = gd_atendimentosTbVwDblClick
          Navigator.Buttons.CustomButtons = <>
          DataController.DataSource = ds_atendimentos
          DataController.DetailKeyFieldNames = 'id'
          DataController.Summary.DefaultGroupSummaryItems = <>
          DataController.Summary.FooterSummaryItems = <>
          DataController.Summary.SummaryGroups = <>
          OptionsView.NoDataToDisplayInfoText = '...'
          OptionsView.GroupByBox = False
          object gd_atendimentosTbVwCODIGO: TcxGridDBColumn
            Caption = 'COD'
            DataBinding.FieldName = 'CODIGO'
            MinWidth = 33
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
            Width = 33
          end
          object gd_atendimentosTbVwTECNICO: TcxGridDBColumn
            Caption = 'ATENDENTE'
            DataBinding.FieldName = 'TECNICO'
            MinWidth = 114
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
            Width = 114
          end
          object gd_atendimentosTbVwSISTEMA: TcxGridDBColumn
            DataBinding.FieldName = 'SISTEMA'
            MinWidth = 81
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
            Width = 81
          end
          object gd_atendimentosTbVwSTATUS: TcxGridDBColumn
            DataBinding.FieldName = 'STATUS'
            MinWidth = 84
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
            Width = 84
          end
          object gd_atendimentosTbVwABERTURA: TcxGridDBColumn
            DataBinding.FieldName = 'ABERTURA'
            MinWidth = 141
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
            Width = 141
          end
          object gd_atendimentosTbVwNOME_FANTASIA: TcxGridDBColumn
            Caption = 'CLIENTE'
            DataBinding.FieldName = 'NOME_FANTASIA'
            MinWidth = 272
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
            Width = 272
          end
          object gd_atendimentosTbVwCONTATO_1: TcxGridDBColumn
            Caption = 'CONTATO'
            DataBinding.FieldName = 'CONTATO_1'
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
          object gd_atendimentosTbVwTIPO: TcxGridDBColumn
            DataBinding.FieldName = 'TIPO'
            MinWidth = 96
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
            Width = 96
          end
          object gd_atendimentosTbVwFECHAMENTO: TcxGridDBColumn
            DataBinding.FieldName = 'FECHAMENTO'
            MinWidth = 130
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
          object gd_atendimentosTbVwCONTATO_2: TcxGridDBColumn
            DataBinding.FieldName = 'CONTATO_2'
            Visible = False
            MinWidth = 1404
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
          object gd_atendimentosTbVwCONTATO_3: TcxGridDBColumn
            DataBinding.FieldName = 'CONTATO_3'
            Visible = False
            MinWidth = 1404
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
          object gd_atendimentosTbVwTECNICO_REPASSE: TcxGridDBColumn
            DataBinding.FieldName = 'TECNICO_REPASSE'
            Visible = False
            MinWidth = 1404
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
          object gd_atendimentosTbVwSTATUS_REPASSE: TcxGridDBColumn
            DataBinding.FieldName = 'STATUS_REPASSE'
            Visible = False
            MinWidth = 53
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
          object gd_atendimentosTbVwFECHADO_POR: TcxGridDBColumn
            DataBinding.FieldName = 'FECHADO_POR'
            Visible = False
            MinWidth = 1404
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
          object gd_atendimentosTbVwFECHAMENTO_POR: TcxGridDBColumn
            DataBinding.FieldName = 'FECHAMENTO_POR'
            Visible = False
            MinWidth = 130
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
          object gd_atendimentosTbVwOBSERVAES: TcxGridDBColumn
            DataBinding.FieldName = 'OBSERVA'#199#213'ES'
            Visible = False
            MinWidth = 64
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
          object gd_atendimentosTbVwPROBLEMA: TcxGridDBColumn
            DataBinding.FieldName = 'PROBLEMA'
            Visible = False
            MinWidth = 35004
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
          object gd_atendimentosTbVwSOLUCAO: TcxGridDBColumn
            DataBinding.FieldName = 'SOLUCAO'
            Visible = False
            MinWidth = 35004
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
          object gd_atendimentosTbVwOBSERVACOES: TcxGridDBColumn
            DataBinding.FieldName = 'OBSERVACOES'
            Visible = False
            MinWidth = 35004
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
          object gd_atendimentosTbVwRAZAO_SOCIAL: TcxGridDBColumn
            DataBinding.FieldName = 'RAZAO_SOCIAL'
            Visible = False
            MinWidth = 1404
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
        object gd_atendimentosLv: TcxGridLevel
          GridView = gd_atendimentosTbVw
        end
      end
      object cxButton3: TcxButton
        Left = 775
        Top = 11
        Width = 177
        Height = 68
        Caption = 'Rel'#225'torio'
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
        TabOrder = 1
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -15
        Font.Name = 'Tahoma'
        Font.Style = [fsBold]
        ParentFont = False
        OnClick = cxButton3Click
      end
      object edt_consulta: TEdit
        Left = 89
        Top = 11
        Width = 297
        Height = 24
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'Tahoma'
        Font.Style = []
        ParentFont = False
        TabOrder = 2
        OnKeyPress = edt_consultaKeyPress
      end
      object cxGroupBox6: TcxGroupBox
        Left = 13
        Top = 41
        TabOrder = 3
        Height = 44
        Width = 398
        object Label20: TLabel
          Left = 130
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
          Left = 290
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
        object btn_consulta_data: TcxButton
          Left = 258
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
        object edt_data_ini: TDateTimePicker
          Left = 12
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
        object edt_data_fim: TDateTimePicker
          Left = 148
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
          Left = 324
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
      object btn_consulta_atendimentos: TcxButton
        Left = 386
        Top = 10
        Width = 25
        Height = 27
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
        TabOrder = 4
        OnClick = btn_consulta_atendimentosClick
      end
      object ComboBox4: TComboBox
        Left = 775
        Top = 153
        Width = 103
        Height = 24
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'Tahoma'
        Font.Style = []
        ParentFont = False
        TabOrder = 5
        Text = 'ComboBox1'
        Visible = False
        Items.Strings = (
          'Aberto'#11
          'Fechado')
      end
      object cxLabel3: TcxLabel
        Left = 694
        Top = 152
        Caption = '  Sistema:  '
        ParentColor = False
        ParentFont = False
        Style.BorderColor = clWhite
        Style.Color = clWhite
        Style.Font.Charset = DEFAULT_CHARSET
        Style.Font.Color = clInactiveCaptionText
        Style.Font.Height = -15
        Style.Font.Name = 'Tahoma'
        Style.Font.Style = [fsBold]
        Style.IsFontAssigned = True
        Visible = False
      end
      object rgd_tipo_de_consulta: TRadioGroup
        Left = 447
        Top = 3
        Width = 298
        Height = 74
        Caption = 'Filtro'
        Columns = 3
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -15
        Font.Name = 'Tahoma'
        Font.Style = [fsBold]
        ItemIndex = 0
        Items.Strings = (
          'Cliente'
          'Sistema'
          'Codigo'
          'Atendente'
          'Status')
        ParentFont = False
        TabOrder = 7
      end
    end
    object tab_atendimentos: TcxTabSheet
      Caption = 'Novo'
      Color = clGradientInactiveCaption
      ImageIndex = 1
      ParentColor = False
      object Label4: TLabel
        Left = 510
        Top = 18
        Width = 76
        Height = 18
        Caption = 'Problema:'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -15
        Font.Name = 'Tahoma'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object Label5: TLabel
        Left = 510
        Top = 200
        Width = 64
        Height = 18
        Caption = 'Solu'#231#227'o:'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -15
        Font.Name = 'Tahoma'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object gp_clientes: TcxGroupBox
        Left = 8
        Top = 18
        Caption = '  Cliente  '
        Enabled = False
        ParentFont = False
        Style.Font.Charset = DEFAULT_CHARSET
        Style.Font.Color = clWindowText
        Style.Font.Height = -15
        Style.Font.Name = 'Tahoma'
        Style.Font.Style = [fsBold]
        Style.IsFontAssigned = True
        TabOrder = 0
        Height = 119
        Width = 486
        object Label2: TLabel
          Left = 28
          Top = 52
          Width = 85
          Height = 18
          Caption = 'Raz'#227'o Social:'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -15
          Font.Name = 'Tahoma'
          Font.Style = []
          ParentFont = False
        end
        object Label3: TLabel
          Left = 57
          Top = 84
          Width = 56
          Height = 18
          Caption = 'Contato:'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -15
          Font.Name = 'Tahoma'
          Font.Style = []
          ParentFont = False
        end
        object Label15: TLabel
          Left = 10
          Top = 22
          Width = 103
          Height = 18
          Caption = 'Nome Fantasia:'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -15
          Font.Name = 'Tahoma'
          Font.Style = []
          ParentFont = False
        end
        object Edit3: TEdit
          Left = 1038
          Top = 121
          Width = 137
          Height = 24
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'Tahoma'
          Font.Style = []
          ParentFont = False
          TabOrder = 0
          Text = 'Edit2'
        end
        object btn_consulta_clientes: TcxButton
          Left = 446
          Top = 18
          Width = 24
          Height = 26
          Enabled = False
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
          OnClick = btn_consulta_clientesClick
        end
        object edt_nome_fantasia: TDBEdit
          Left = 119
          Top = 19
          Width = 327
          Height = 24
          CharCase = ecUpperCase
          DataField = 'NOME_FANTASIA'
          DataSource = ds_atendimentos
          Enabled = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'Tahoma'
          Font.Style = []
          ParentFont = False
          TabOrder = 2
        end
        object edt_razao_social: TDBEdit
          Left = 119
          Top = 49
          Width = 351
          Height = 24
          CharCase = ecUpperCase
          DataField = 'RAZAO_SOCIAL'
          DataSource = ds_atendimentos
          Enabled = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'Tahoma'
          Font.Style = []
          ParentFont = False
          TabOrder = 3
        end
        object edt_contato_1: TDBEdit
          Left = 119
          Top = 81
          Width = 113
          Height = 24
          CharCase = ecUpperCase
          DataField = 'CONTATO_1'
          DataSource = ds_atendimentos
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'Tahoma'
          Font.Style = []
          ParentFont = False
          TabOrder = 4
        end
        object edt_contato_2: TDBEdit
          Left = 238
          Top = 81
          Width = 113
          Height = 24
          CharCase = ecUpperCase
          DataField = 'CONTATO_2'
          DataSource = ds_atendimentos
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'Tahoma'
          Font.Style = []
          ParentFont = False
          TabOrder = 5
        end
        object edt_contato_3: TDBEdit
          Left = 357
          Top = 81
          Width = 113
          Height = 24
          CharCase = ecUpperCase
          DataField = 'CONTATO_3'
          DataSource = ds_atendimentos
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'Tahoma'
          Font.Style = []
          ParentFont = False
          TabOrder = 6
        end
      end
      object btn_gravar: TcxButton
        Left = 510
        Top = 467
        Width = 130
        Height = 43
        Caption = 'Gravar'
        Enabled = False
        LookAndFeel.NativeStyle = False
        LookAndFeel.SkinName = 'metropolis'
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
          000E0000001707140E4D133324951D4E38D11D513BD9246448FF246448FF1E51
          3BD91C4E38D11233249607140F4F000000190000001000000008000000040000
          0001000000010000000000000000000000000000000000000000000000000000
          000000000000000000000000000100000001000000040000000B000000150C21
          176B1F563FE1257151FF278963FF299D72FF2AA176FF2BB07FFF2BAF80FF2AA2
          76FF2A9E72FF278964FF267151FF20573FE20C21186D000000180000000D0000
          0005000000010000000100000000000000000000000000000000000000000000
          0000000000000000000100000001000000050000000D040C09361C503ACF2678
          56FF2AA074FF2CB180FF2BB180FF2CB081FF2CB081FF2CB180FF2CB181FF2CB1
          80FF2CB080FF2CB081FF2CB180FF2AA074FF277957FF1D5039D1040C093A0000
          0010000000060000000100000001000000000000000000000000000000000000
          00000000000000000001000000050000000E09191255236248F029946BFF2CB1
          81FF2CB181FF2CB181FF2CB282FF2CB282FF2CB282FF2CB282FF2DB282FF2DB2
          82FF2CB182FF2CB281FF2CB181FF2CB181FF2CB181FF29956CFF246248F10919
          135A000000120000000600000001000000000000000000000000000000000000
          000000000000000000040000000C09191253256C4EFA2A9F74FF2CB181FF2DB1
          82FF2CB283FF2DB283FF2DB283FF2EB283FF2EB284FF2EB384FF2EB383FF2EB3
          84FF2EB384FF2EB283FF2EB383FF2EB383FF2DB282FF2DB182FF2A9F74FF256D
          4FFA091A12590000001000000005000000010000000000000000000000000000
          00000000000200000009050F0B38246549EE2EA47AFF2EB383FF2DB283FF2EB3
          83FF2EB384FF2EB385FF2EB484FF51C7A2FF60CFAEFF37B98DFF2EB485FF2FB5
          85FF2FB485FF2EB485FF2EB485FF2EB384FF2EB383FF2EB384FF2FB384FF2FA5
          7AFF23644AEF050F0B3E0000000C000000030000000100000000000000000000
          000100000005000000101D513BCB2E9770FF30B385FF2EB384FF2EB484FF2EB4
          85FF2FB586FF2FB586FF50C6A1FF32916EFF1E7652FF4AB995FF30B587FF31B6
          87FF30B686FF30B587FF30B587FF2FB586FF2EB486FF2EB485FF2EB485FF30B4
          86FF2E9871FF1D533CD000000016000000070000000100000000000000000000
          00020000000A0C231A652D7D5CFF34B689FF2EB384FF2EB485FF2FB586FF30B5
          86FF31B688FF4EC59FFF389774FF7CAE9AFFA2C4B6FF2F8C6AFF41BF95FF32B7
          89FF32B789FF31B688FF31B689FF31B688FF30B588FF30B686FF2FB486FF2EB4
          85FF34B68AFF2D7E5EFF0D241A6B0000000E0000000300000001000000010000
          00040000000F205B43DD32A67DFF30B587FF2FB586FF30B587FF31B688FF31B7
          88FF4BC49DFF3E9F7CFF6BA28BFFF9F5F1FFF5EFEAFF45896CFF4CB491FF35BB
          8DFF34B98BFF34B98AFF33B98AFF32B989FF32B789FF32B688FF31B688FF30B5
          87FF31B688FF33A77DFF215E44DF000000160000000700000001000000020000
          0007091B144E308061FF37B98BFF30B587FF30B688FF31B688FF33B78AFF48C4
          9BFF46A786FF5A967DFFF6F4F0FFF3E8DFFFF3E8DFFFC8D9D0FF247A58FF4FC5
          9EFF35BB8DFF35BB8DFF34BA8CFF34BA8BFF34BA8BFF33B98AFF32B989FF31B7
          88FF31B688FF37B98CFF308162FF0A1D15570000000B00000002000000020000
          0009153B2B923A9B78FF35B98BFF32B788FF32B989FF33B98BFF46C39AFF4CAF
          8EFF4A8A6FFFF4F4F1FFF4EAE2FFF4E9E0FFF3E8E0FFF7EDE7FF699D87FF409D
          7CFF3FC094FF37BC8FFF37BC8EFF36BB8EFF36BB8DFF35BA8DFF34BA8BFF34B9
          8BFF32B78AFF36BA8CFF3B9C79FF153C2C980000000E00000003000000020000
          000B1E553FC63DAC86FF35B88CFF33B78AFF33B98BFF45C398FF54B797FF4084
          67FFEAEFEAFFF5EBE3FFF2E6DEFFEDDFD6FFF4E9E1FFF4E9E0FFE3E8E1FF2570
          50FF56C19EFF39BE91FF39BE90FF38BD90FF37BC8FFF37BC8EFF35BB8DFF35BB
          8CFF33B98BFF35B98DFF3EAD87FF1E5640CA0000001100000004000000030000
          000C256A4EEC3EB88EFF34BA8CFF35B98CFF3FBF94FF57BD9DFF347B5CFFE5EC
          E8FFF6EDE6FFF1E6DDFFCAC3B6FF9DAA97FFEFE3DCFFF4EAE2FFF6EBE5FF9DBD
          AFFF318464FF4FC8A2FF3ABF94FF3ABF92FF39BE91FF38BD90FF37BD8FFF36BB
          8EFF35BB8CFF35BB8CFF3FB98FFF256D50ED0000001300000005000000030000
          000C287455FA43C096FF35BA8BFF36BB8DFF37B488FF1F704EFFC9D0C8FFF7ED
          E7FFF1E5DEFFBEBCB0FF2E7354FF246F4EFFB5B7A8FFF1E6DFFFF4EAE3FFF6F1
          ECFF548B72FF4EAD8DFF42C49AFF3CC195FF3BC094FF3BBF92FF39BE90FF39BD
          90FF37BC8EFF35BB8DFF44C197FF287657FA0000001300000005000000030000
          000B287656FA4CC49BFF35BC8DFF37BC8EFF37BC8EFF24805CFF608A72FFE4D5
          CCFFB2B5A7FF2C7757FF3CBD96FF3BBB93FF2B7151FFC8C3B6FFF4E9E2FFF5EB
          E4FFE1E8E2FF2D7355FF5FCAABFF40C59AFF3EC197FF3CC195FF3BC094FF3ABF
          92FF38BD90FF38BC8EFF4EC59DFF297859FA0000001200000005000000020000
          000A267052EC55C39FFF39BD91FF38BE90FF3ABE92FF3CC096FF257E5BFF4A7C
          61FF2B7F5EFF41CBA3FF45D3ACFF46D3ADFF39B28DFF3C7457FFDACFC5FFF5EB
          E4FFF7EDE8FFADC7BAFF2E8061FF5ED8B7FF43CDA4FF40C99FFF3DC399FF3CBF
          94FF3ABF92FF3BBF92FF56C5A0FF277256ED0000001100000004000000020000
          0008205D46C559BD9DFF3DC094FF3CC296FF43CDA6FF45D2ACFF44CEA8FF319D
          7AFF46D2ACFF48D5B0FF49D5B0FF49D5B0FF49D5B1FF34A481FF4C7B60FFE0D2
          CAFFF5ECE5FFF9F3EFFF699882FF459D7FFF57D6B3FF44CFA6FF43CDA4FF41C8
          A0FF3DC196FF3FC196FF5BBF9FFF205F47C80000000E00000003000000010000
          00061643328F58B194FF49CDA6FF47D2ACFF48D3AEFF49D5AFFF49D5B0FF4AD7
          B2FF4BD7B2FF4CD8B4FF4DD7B4FF4DD8B4FF4CD8B4FF4DD7B4FF329B78FF4B7B
          61FFDFD2C9FFF6EBE5FFEFF0ECFF468066FF58B699FF55D6B1FF45CFA7FF45CE
          A5FF43CAA3FF48C9A2FF58B295FF174433940000000B00000003000000010000
          00040B201848409E80FF63DEC0FF4BD4B1FF4CD7B2FF4DD7B3FF4ED7B4FF4FD8
          B4FF4FD9B7FF50DAB7FF50DAB7FF51DAB8FF51DAB7FF50DAB7FF51D9B7FF38A6
          84FF47795EFFDDD0C7FFF6ECE7FFF0F2EFFF478368FF61C1A5FF56D5B3FF47CF
          A8FF46CDA6FF62D8B8FF409C7DFF0B20184E0000000700000002000000000000
          0002000000072D7D62DA6CD4BBFF55D9B7FF51D8B5FF51D9B6FF53DAB8FF53DB
          BAFF54DCB9FF55DBBAFF55DCBBFF56DCBBFF55DCBAFF56DDBBFF56DDBAFF55DC
          BAFF40B090FF487A60FFD9CCC4FFF3E9E3FFEDF1EDFF4B876DFF67C7ACFF57D6
          B3FF4ED2ADFF6ECFB6FF29785DDC0000000E0000000400000001000000000000
          0001000000041231275B48A98CFF72E5CAFF56DBB9FF56DBBAFF58DCBCFF58DC
          BCFF59DDBDFF59DEBDFF5ADFBEFF5ADFBFFF5BDFBFFF5ADFBEFF5ADFBEFF59DE
          BDFF59DDBCFF47BB9AFF367559FFBAB9ADFFECDFD8FFDDDFDAFF237150FF45BA
          96FF70DFC3FF46A487FF10302561000000080000000200000000000000000000
          000000000002000000062B765EC66CCEB6FF6AE3C6FF5CDDBDFF5DDEBFFF5EDE
          C0FF5EDFC0FF5FE1C2FF60E1C2FF5FE1C2FF60E1C2FF5FE0C2FF5EE1C1FF5EE0
          C1FF5DDFBFFF5CDFBEFF55CFAFFF2E8464FF72937DFF8FA392FF2D8463FF63D8
          B9FF6DCBB1FF287259C80000000C000000040000000100000000000000000000
          00000000000100000003081410283B9679EC7EDFCBFF6FE4C9FF63E0C3FF63E0
          C3FF64E1C4FF65E2C4FF64E3C5FF64E3C5FF64E3C5FF65E3C5FF64E2C5FF63E2
          C4FF63E2C3FF61E0C1FF5FDFBFFF5EDEBDFF48B797FF2A8362FF61D2B5FF80DB
          C6FF379274ED07140F2D00000006000000020000000000000000000000000000
          00000000000000000001000000041028204644A689F982DFCBFF7EEAD3FF69E2
          C6FF69E3C7FF6AE4C7FF6AE4C8FF6AE5C9FF6AE4C8FF6AE4C8FF6AE4C8FF69E4
          C7FF68E3C6FF66E2C4FF64E0C2FF62DFC1FF61DDBEFF7AE5CDFF82DCC7FF40A2
          83FA0E271F4A0000000700000002000000000000000000000000000000000000
          000000000000000000000000000100000004102921453F9E81EE77D5BEFF93F1
          DFFF7BE9D1FF6FE5CAFF6FE6CBFF70E6CBFF70E6CBFF6FE7CCFF6EE6CBFF6DE6
          CAFF6CE4C8FF6BE3C6FF69E2C5FF75E5CBFF92EEDAFF75D2BAFF3B9B7CEE0F28
          204A000000070000000200000001000000000000000000000000000000000000
          000000000000000000000000000000000001000000030814102335856DC85ABF
          A3FF8BE4D2FF9DF4E5FF8DEFDCFF82EBD5FF7EEBD4FF75E8CFFF74E8CEFF7DEA
          D2FF7FEAD3FF8CEDDAFF9DF2E2FF8BE4D0FF58BEA1FF318469CA071410280000
          0006000000020000000100000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000100000002000000051738
          2E563D987CDA54BD9EFF75D4BCFF8EE6D3FF94EAD9FFA7F5E8FFA7F5E8FF95EA
          D9FF8DE6D3FF73D3BAFF52BB9CFF399679DA16392E5B00000007000000040000
          0002000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000001000000010000
          0003000000040D201A32255A4A82388D73C53B957ACE49B896FC49BA98FC3A95
          7ACF378D74C6235A4A840C201A34000000060000000400000002000000010000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0001000000010000000200000003000000040000000500000005000000050000
          0005000000040000000400000003000000020000000100000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000001000000010000000100000001000000010000
          0001000000010000000100000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000}
        TabOrder = 1
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'HelveticaNeue'
        Font.Style = [fsBold]
        ParentFont = False
        OnClick = btn_gravarClick
      end
      object btn_concluir_atendimento: TcxButton
        Left = 662
        Top = 467
        Width = 282
        Height = 43
        Caption = 'Atendimento Conclu'#237'do'
        Colors.Normal = 217
        Colors.NormalText = 217
        Colors.HotText = 217
        Colors.Pressed = 217
        Colors.PressedText = 217
        Enabled = False
        LookAndFeel.NativeStyle = False
        LookAndFeel.SkinName = 'metropolis'
        OptionsImage.Glyph.Data = {
          36100000424D3610000000000000360000002800000020000000200000000100
          2000000000000010000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000010000
          0003000000050000000700000008000000090000000900000007000000050000
          0003000000010000000100000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000002000000060000
          000D000000150000001C0000002100000024000000220000001E000000160000
          000E000000070000000300000001000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          000000000000000000000000000000000001000000040000000B000000170101
          0935070633860D0A5AC70F0B66DB130E7EFD0F0C66DB0D0A5BCA0806368D0101
          09390000001A0000000D00000005000000010000000000000000000000000000
          0001000000010000000100000001000000010000000100000001000000010000
          0001000000010000000100000002000000050000000F0000022308073A8F1614
          7FF52F33A6FF4149C0FF4E59D0FF5460D8FF4E5AD2FF424BC1FF3135A8FF1714
          81F70A073E990000012600000010000000050000000100000000000000010000
          0002000000050000000500000006000000060000000600000006000000060000
          0006000000060000000600000009000000130101062F100F63CF2A2C9FFF4F5B
          D1FF4A53C8FF4047B9FF3A3EAFFF3A3EAFFF3A3EAFFF4147B9FF4953C8FF505C
          D2FF2D2FA3FF100D60CC01010833000000100000000400000000000000040000
          000B000000120000001600000017000000170000001800000018000000180000
          0018000000180000001A0000002100000233100E5CC73538ACFF525ED4FF4147
          BAFF6263BAFFBDB8D5FFF0E8E6FFF7F0E9FFE3DBD6FFBDBAD5FF6163BAFF4147
          BAFF525ED4FF373CB0FF120E61CB000002230000000B000000020000000A2E21
          1D5994695AEBA37464FFA37463FFA37363FFA37263FFA27262FFA17261FFA171
          61FFA07161FF9E6E5EFFB5978EFF6A5D8EFF2D30A3FF515DD2FF4044B3FF9A96
          C8FFF1E9E0FFF5EDE4FFF5EEE4FF765A50FFE7DED6FFF5EDE4FFF1E9E2FF9997
          C8FF4044B3FF515DD2FF3034A6FF0C0A4094000000170000000600000010996F
          5FEFD0B4A1FFE1CCB7FFE1CCB7FFE1CCB7FFE0CBB7FFE1CCB7FFE0CBB6FFE0CB
          B7FFDEC9B5FFDCC9B7FFCBC2C0FF282792FF505CD1FF3F44B6FFABA7C9FFF1E8
          DCFFF1E9DFFFF3EBE1FFF3EBE3FF7B5F55FFE7DBD3FFF3E9E1FFF3E9DFFFF1E8
          DEFFAEA7CAFF3F44B6FF525FD4FF1E1C89F602020B350000000B00000013A778
          68FFC59C8DFFC19786FFC19686FFC19685FFC09585FFC09584FFBF9485FFBF94
          84FFBD9181FFC7A99EFF83779DFF363BAEFF4C56C8FF6A6ABAFFEEE3D7FFF0E4
          DAFF97776AFFF1E8DEFFF1E8DEFF7F6459FFE4DAD0FFF1E8DEFF947366FFF0E4
          DAFFF0E3D7FF6A6ABAFF4C56C8FF383EB0FF0D0C3F8B0000001100000013A87A
          69FFEFE4DDFFF8F3EFFFF8F3EFFFF8F4EFFFF8F4EFFFD5B8ADFFF8F3EFFFF8F4
          EFFFF4EFEBFFEBE8E6FF5A59A5FF4A53C7FF4248BAFFB8AFC8FFEEE1D6FFEEE3
          D7FFF0E4D9FFF1E6DAFFE8DDD1FF7F6459FFCFBFB3FFE7DAD0FFF0E4DAFFEEE3
          D7FFEEE1D6FFB8B0C8FF4248BAFF4C57CAFF181768C60000001600000012AA7B
          6BFFF6F0E9FFF3EBE2FFF3EBE2FFF2EBE3FFF2EBE2FFC29888FFF3EBE2FFF1EA
          E1FFEEE7DDFFE7E4DFFF4745A0FF5461D3FF3B40B1FFE0D3CEFFEDDED2FFDBCB
          C0FFDDCFC4FFE0D5CDFF99837AFF66493FFF8F7970FFDBCFC7FFEDE3D7FFEEE1
          D4FFEDDED2FFDCCFCCFF3B40B1FF5764D7FF1E1E7EE00000001800000011AB7D
          6DFFF6F0EAFFF3ECE4FFF3ECE4FFF3ECE4FFF3ECE3FFC49A8AFFF3ECE3FFF3EC
          E3FFEFE7DFFFE9E6E1FF3B3C9FFF5967D8FF3C40AFFFE9DACDFF444ABBFF4147
          B8FF3E43B5FF3A3EB1FF745A54FFD6C8C0FF72584EFFDCD2CCFFF6EFEAFFEDE1
          D4FF9A796DFFEBDACDFF3C40AFFF5C69DBFF24238DEE0000001700000010AC7F
          6FFFF7F2EBFFF4EDE5FFF4ECE4FFF4EDE4FFF8F3EDFFD8BAB0FFF7F2EDFFF8F2
          ECFFF4EFEAFFEDEAE8FF4D4EA9FF5A68D8FF3B40B1FFDBCCCAFFE9D9CCFFF6EF
          E8FFF9F5F1FFF9F5F1FFB9A9A2FF80655AFF745A50FFC0B2ABFFF5F1ECFFF5EF
          E8FFE9DACCFFDBCCC8FF3B40B1FF5B6ADAFF242483DD000000140000000FAD81
          70FFC8A090FFC7A090FFC79E8FFFC79D8FFFD8BCB2FF2F35C0FF2E34BFFF2D32
          BEFF2B31BBFF787ACDFF4D4EAEFF535FCEFF434ABBFFB3A8C0FFE9D9C8FFFAF7
          F4FFFBF7F5FFFBF7F5FFFBF7F5FFFBF7F5FFDFD6D3FF735850FFC7BAB6FFF6F2
          EEFFE9D7C8FFB3A8C0FF434BBBFF5562D1FF1F2170BD000000100000000EAF82
          73FFF8F4EEFFF5EEE6FFF4EEE7FFF5EEE7FFF8F3EEFF3138C2FFF4EDE6FFF5ED
          E6FFF3ECE5FFF1ECE6FFA5A5CBFF464FBEFF535FCCFF6765B5FFE8D6C7FFF8F3
          EFFFA58779FFFCFAF9FFFCFAF9FFFCFAF9FFFCFAF9FFE1DAD7FF7A6257FFC7BA
          B4FFE6D4C5FF6765B5FF535FCCFF4952C1FF1415447B0000000B0000000DB084
          75FFF8F4EFFFF5EEE7FFF5EFE8FFF6EEE7FFF8F4EFFF333AC5FFF5EFE7FFF5EE
          E7FFF4EDE6FFF2EDE5FFE4E2E4FF3E42AFFF6070DBFF4147B7FFA39ABBFFEADB
          CFFFFDFBF9FFFEFDFCFFFEFDFCFFFEFDFCFFFEFDFCFFFEFDFCFFE3DDD9FF8166
          5CFFA39ABBFF4147B7FF6070DBFF363BA5F104040C25000000060000000DB286
          77FFF8F4F0FFF5F0E9FFF5F0E9FFF6F0E9FFF8F4EFFF353EC9FFF6EFE8FFF5EF
          E8FFF6EFE8FFF3EDE6FFF1EDE8FF696EC3FF4D57C3FF6170DAFF4145B2FF928B
          B9FFE7D5C9FFF5EEE8FFFBF7F4FFA6877BFFFBF7F4FFF5EEE7FFE7D7C9FF938B
          B9FF4145B2FF6170DAFF4E58C4FF1A1D51830000000B000000030000000CB388
          78FFF9F6F0FFF6F1E9FFF7F0EAFFF6F0EAFFF9F5F1FF3740C9FFF6F0E9FFF6F0
          E9FFF6EFE9FFF5EFE7FFF4EDE7FF8B8FD6FF787BC6FF5864CDFF6777DEFF4951
          BEFF5E5DB3FFAEA3BCFFDECBC1FFE4D2C2FFDEC9C1FFAFA3BCFF5E5DB3FF4951
          BEFF6677DEFF5965CEFF2D3180B90101021100000005000000010000000BB58A
          7AFFCEA89AFFCEA799FFCDA799FFCDA698FFDDC3B8FF3943CDFF3841CAFF3740
          CBFF363FC8FF343DC8FF343AC4FF4C51C9FFDED2D1FF7575BEFF5C68CEFF6D80
          E3FF5C6AD2FF4851BEFF3A3EAFFF3A3EAFFF3A3EAFFF4851BEFF5C6BD2FF6C80
          E4FF5B68D0FF313787BC030309180000000500000001000000000000000AB68B
          7CFFFAF6F2FFF7F2ECFFF7F2ECFFF7F2EBFFFAF6F1FFDDC3B9FFFAF6F2FFFAF6
          F1FFFAF6F1FFFAF6F1FFFAF6F1FFDAC0B5FFF8F4F0FFF4F1EDFFA9ACDAFF5C67
          CEFF6776DAFF7283E2FF7387E5FF7489E8FF7486E6FF7284E3FF6977DBFF5A64
          C9FF222758830000000F0000000500000002000000000000000000000009B88D
          7EFFFAF6F2FFF8F3ECFFF8F3EDFFF8F2ECFFF8F3EDFFCEA99AFFF7F3ECFFF7F2
          EDFFF8F2ECFFF7F3ECFFF8F2ECFFCCA596FFF6F1EAFFF6F1EBFFF5F1EDFFEBEA
          EBFFB9BCE1FF8083CDFF7781DAFF757FDBFF7781DAFF858DD9FFB8BBE1FFC7B3
          B2FF00000014000000070000000100000000000000000000000000000008B990
          7FFFFAF7F4FFF8F3EEFFF8F3EEFFF8F3EEFFF7F3EDFFCFAB9BFFF8F3EEFFF8F3
          EDFFF8F3EDFFF8F3EDFFF8F3EDFFCEA798FFF7F3ECFFF7F3ECFFF6F2EBFFF7F1
          ECFFF6F1EDFFDAC4B9FFF5F2EEFFF4F2EFFFF4F1EDFFF4F1EEFFF6F3F0FFB38B
          7CFF0000000E000000040000000000000000000000000000000000000008BA91
          81FFFAF8F5FFFAF8F4FFFAF8F5FFFAF8F4FFFAF8F4FFCFAD9DFFFBF8F4FFFBF8
          F4FFFAF7F4FFFBF8F3FFFAF8F3FFCEA99AFFFAF7F3FFFAF7F3FFFAF7F3FFFAF7
          F3FFF9F6F2FFCBA495FFF9F6F2FFF9F6F2FFF9F5F2FFF9F6F1FFF9F5F2FFAF82
          73FF0000000C0000000300000000000000000000000000000000000000074C54
          C3FF95A4EDFF6577E1FF6676E1FF6476E1FF6475E1FF6374E0FF6374E0FF6273
          E0FF6272DFFF6171DFFF6070DFFF6070DEFF6070DEFF5F6EDEFF5F6EDDFF5E6D
          DEFF5D6CDDFF5D6CDDFF5C6BDCFF5B6ADDFF5B6ADDFF5B69DCFF818EE6FF3438
          AAFF0000000C0000000300000000000000000000000000000000000000064C54
          C3FF98A6EEFF687AE2FF6779E2FF7D8DE7FF8493E9FF7B8CE7FF6576E1FF6475
          E1FF6474E0FF6374E0FF6373E0FF6272DFFF6172DFFF6171DFFF6070DFFF606F
          DFFF5F6EDEFF7584E4FF7D8AE5FF7483E3FF5D6CDDFF5C6BDCFF8592E7FF3438
          AAFF0000000B0000000300000000000000000000000000000000000000064C55
          C4FF9BAAEFFF697CE3FF5C6DD4FF3E3C7BFF29234EFF2A2A60FF5968CFFF6678
          E1FF6577E1FF6576E1FF6476E1FF6475E0FF6374E0FF6273DFFF6273DFFF6272
          DFFF5464D0FF3D3A79FF29234EFF29285FFF505FCBFF5E6DDDFF8895E9FF3538
          ABFF0000000A0000000300000000000000000000000000000000000000054D55
          C4FF9EADEFFF6B7EE4FF596AD0FF5D558CFFB7A194FF3F376CFF5564C9FF6879
          E2FF687AE2FF6678E2FF6677E2FF6677E2FF6577E1FF6476E1FF6475E0FF6474
          E0FF5160CCFF5D558CFFB7A194FF3F376CFF4C5BC6FF6070DEFF8B98E9FF3538
          ABFF00000009000000020000000000000000000000000000000000000003454E
          B2E88A97E5FFA0AEF0FF8998DEFF645B91FFAA9284FF473F74FF8292D8FF9BAA
          EFFF9AA9EFFF99A8EFFF99A6EDFF98A6EEFF97A5EDFF96A4EDFF95A4EDFF94A2
          EDFF7E8CDBFF645B91FFAA9284FF473F74FF7785D3FF8F9CEAFF7782DAFF3033
          9BE8000000060000000200000000000000000000000000000000000000021315
          31423C439ACA4B54C3FF3C43B0FF6A6399FFFFFEF3FF50487FFF383FAAFF464D
          BDFF454BBCFF444ABBFF4248B9FF4147B8FF4146B8FF3F44B6FF3E44B4FF3D43
          B3FF3034A1FF6A6399FFFFFEF3FF50487FFF2C3097FF373BAEFF2B2E88CC0D0E
          2A45000000030000000100000000000000000000000000000000000000010000
          000100000002000000030000000A8A7368FFDACEC5FF735A50FF0000000E0000
          0004000000040000000500000005000000050000000500000005000000050000
          00050000000C8A7368FFDACEC5FF735A50FF0000001000000006000000050000
          0003000000010000000000000000000000000000000000000000000000000000
          00000000000000000001000000036C5B54C090796FFF66554EC2000000060000
          0001000000010000000100000001000000010000000100000001000000010000
          0001000000036C5B54C090796FFF66554EC20000000600000001000000010000
          0001000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000020000000300000003000000010000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000200000003000000030000000100000000000000000000
          0000000000000000000000000000000000000000000000000000}
        TabOrder = 2
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clRed
        Font.Height = -17
        Font.Name = 'Tahoma'
        Font.Style = [fsBold]
        ParentFont = False
        OnClick = btn_concluir_atendimentoClick
      end
      object gp_atendimentos_1: TcxGroupBox
        Left = 8
        Top = 143
        Caption = '  Atendimentos  '
        Enabled = False
        ParentFont = False
        Style.Font.Charset = DEFAULT_CHARSET
        Style.Font.Color = clWindowText
        Style.Font.Height = -15
        Style.Font.Name = 'Tahoma'
        Style.Font.Style = [fsBold]
        Style.IsFontAssigned = True
        TabOrder = 3
        Height = 382
        Width = 486
        object gp_repasse: TcxGroupBox
          Left = 11
          Top = 121
          Caption = '  Repasse '
          Enabled = False
          ParentFont = False
          Style.Font.Charset = DEFAULT_CHARSET
          Style.Font.Color = clWindowText
          Style.Font.Height = -15
          Style.Font.Name = 'Tahoma'
          Style.Font.Style = [fsBold]
          Style.IsFontAssigned = True
          TabOrder = 0
          Height = 249
          Width = 464
          object C: TLabel
            Left = 30
            Top = 28
            Width = 55
            Height = 18
            Caption = 'T'#233'cnico:'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -15
            Font.Name = 'Tahoma'
            Font.Style = []
            ParentFont = False
          end
          object Label6: TLabel
            Left = 14
            Top = 92
            Width = 102
            Height = 18
            Caption = 'Observa'#231#245'es:'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -15
            Font.Name = 'Tahoma'
            Font.Style = [fsBold]
            ParentFont = False
          end
          object Label7: TLabel
            Left = 0
            Top = 64
            Width = 86
            Height = 18
            Caption = 'Fechado por:'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -15
            Font.Name = 'Tahoma'
            Font.Style = []
            ParentFont = False
          end
          object Label8: TLabel
            Left = 280
            Top = 28
            Width = 46
            Height = 18
            Caption = 'Status:'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -15
            Font.Name = 'Tahoma'
            Font.Style = []
            ParentFont = False
          end
          object Label9: TLabel
            Left = 240
            Top = 66
            Width = 86
            Height = 18
            Caption = 'Fechamento:'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -15
            Font.Name = 'Tahoma'
            Font.Style = []
            ParentFont = False
          end
          object edt_observacoes: TDBMemo
            Left = 21
            Top = 116
            Width = 440
            Height = 122
            DataField = 'OBSERVACOES'
            DataSource = ds_atendimentos
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -15
            Font.Name = 'Tahoma'
            Font.Style = []
            ParentFont = False
            TabOrder = 4
          end
          object edt_fechado_por: TDBEdit
            Left = 91
            Top = 64
            Width = 123
            Height = 24
            CharCase = ecUpperCase
            DataField = 'FECHADO_POR'
            DataSource = ds_atendimentos
            Enabled = False
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -13
            Font.Name = 'Tahoma'
            Font.Style = []
            ParentFont = False
            TabOrder = 2
          end
          object edt_fechamento_repasse: TcxDBDateEdit
            Left = 331
            Top = 64
            DataBinding.DataField = 'FECHAMENTO_POR'
            DataBinding.DataSource = ds_atendimentos
            Enabled = False
            ParentFont = False
            Style.Font.Charset = DEFAULT_CHARSET
            Style.Font.Color = clWindowText
            Style.Font.Height = -13
            Style.Font.Name = 'Tahoma'
            Style.Font.Style = []
            Style.IsFontAssigned = True
            TabOrder = 3
            Width = 123
          end
          object edt_status_repasse: TDBEdit
            Left = 331
            Top = 27
            Width = 123
            Height = 24
            CharCase = ecUpperCase
            DataField = 'STATUS'
            DataSource = ds_atendimentos
            Enabled = False
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -13
            Font.Name = 'Tahoma'
            Font.Style = []
            ParentFont = False
            TabOrder = 1
          end
          object edt_tecnico_repasse: TDBEdit
            Left = 91
            Top = 27
            Width = 123
            Height = 24
            CharCase = ecUpperCase
            DataField = 'TECNICO_REPASSE'
            DataSource = ds_atendimentos
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -13
            Font.Name = 'Tahoma'
            Font.Style = []
            ParentFont = False
            TabOrder = 0
          end
        end
        object gp_atendimentos_2: TcxGroupBox
          Left = 11
          Top = 26
          Enabled = False
          ParentFont = False
          Style.Font.Charset = DEFAULT_CHARSET
          Style.Font.Color = clWindowText
          Style.Font.Height = -15
          Style.Font.Name = 'Tahoma'
          Style.Font.Style = [fsBold]
          Style.IsFontAssigned = True
          TabOrder = 1
          Height = 89
          Width = 464
          object Label25: TLabel
            Left = 14
            Top = 22
            Width = 71
            Height = 18
            Caption = 'Abertura:'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clDefault
            Font.Height = -15
            Font.Name = 'Tahoma'
            Font.Style = [fsBold]
            ParentFont = False
          end
          object Label27: TLabel
            Left = 228
            Top = 22
            Width = 95
            Height = 18
            Caption = 'Fechamento:'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clDefault
            Font.Height = -15
            Font.Name = 'Tahoma'
            Font.Style = [fsBold]
            ParentFont = False
          end
          object Label28: TLabel
            Left = 30
            Top = 56
            Width = 55
            Height = 18
            Caption = 'T'#233'cnico:'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -15
            Font.Name = 'Tahoma'
            Font.Style = []
            ParentFont = False
          end
          object Label29: TLabel
            Left = 277
            Top = 56
            Width = 46
            Height = 18
            Caption = 'Status:'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -15
            Font.Name = 'Tahoma'
            Font.Style = []
            ParentFont = False
          end
          object edt_abertura: TcxDBDateEdit
            Left = 91
            Top = 19
            DataBinding.DataField = 'ABERTURA'
            DataBinding.DataSource = ds_atendimentos
            Enabled = False
            ParentFont = False
            Style.Font.Charset = DEFAULT_CHARSET
            Style.Font.Color = clWindowText
            Style.Font.Height = -13
            Style.Font.Name = 'Tahoma'
            Style.Font.Style = []
            Style.IsFontAssigned = True
            TabOrder = 0
            Width = 123
          end
          object edt_fechamento: TcxDBDateEdit
            Left = 331
            Top = 19
            DataBinding.DataField = 'FECHAMENTO'
            DataBinding.DataSource = ds_atendimentos
            Enabled = False
            ParentFont = False
            Style.Font.Charset = DEFAULT_CHARSET
            Style.Font.Color = clWindowText
            Style.Font.Height = -13
            Style.Font.Name = 'Tahoma'
            Style.Font.Style = []
            Style.IsFontAssigned = True
            TabOrder = 1
            Width = 123
          end
          object edt_tecnico: TDBEdit
            Left = 91
            Top = 53
            Width = 123
            Height = 24
            CharCase = ecUpperCase
            DataField = 'TECNICO'
            DataSource = ds_atendimentos
            Enabled = False
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -13
            Font.Name = 'Tahoma'
            Font.Style = []
            ParentFont = False
            TabOrder = 2
          end
          object edt_status: TDBEdit
            Left = 331
            Top = 53
            Width = 123
            Height = 24
            CharCase = ecUpperCase
            DataField = 'STATUS'
            DataSource = ds_atendimentos
            Enabled = False
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -13
            Font.Name = 'Tahoma'
            Font.Style = []
            ParentFont = False
            TabOrder = 3
          end
        end
        object cxLabel1: TcxLabel
          Left = 305
          Top = 0
          Caption = '  Tipo:  '
          ParentColor = False
          ParentFont = False
          Style.BorderColor = clWhite
          Style.Color = clWhite
          Style.Font.Charset = DEFAULT_CHARSET
          Style.Font.Color = clMenuHighlight
          Style.Font.Height = -15
          Style.Font.Name = 'Tahoma'
          Style.Font.Style = [fsBold]
          Style.IsFontAssigned = True
        end
        object cxLabel2: TcxLabel
          Left = 125
          Top = 1
          Caption = '  Sistema:  '
          ParentColor = False
          ParentFont = False
          Style.BorderColor = clWhite
          Style.Color = clWhite
          Style.Font.Charset = DEFAULT_CHARSET
          Style.Font.Color = clMenuHighlight
          Style.Font.Height = -15
          Style.Font.Name = 'Tahoma'
          Style.Font.Style = [fsBold]
          Style.IsFontAssigned = True
        end
        object edt_sistema: TDBComboBox
          Left = 208
          Top = 1
          Width = 93
          Height = 24
          DataField = 'SISTEMA'
          DataSource = ds_atendimentos
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'Tahoma'
          Font.Style = [fsBold]
          Items.Strings = (
            'MERCHANT'
            'SMC'
            'MDe'
            'GE TRANSPORTE')
          ParentFont = False
          TabOrder = 4
        end
        object edt_tipo: TDBComboBox
          Left = 360
          Top = 1
          Width = 93
          Height = 24
          DataField = 'TIPO'
          DataSource = ds_atendimentos
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'Tahoma'
          Font.Style = [fsBold]
          Items.Strings = (
            'INTERNO'
            'EXTERNO')
          ParentFont = False
          TabOrder = 5
        end
      end
      object btn_novo: TcxButton
        Left = 510
        Top = 394
        Width = 130
        Height = 43
        Caption = 'Novo'
        LookAndFeel.NativeStyle = False
        LookAndFeel.SkinName = 'metropolis'
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
          000E000000171E11094D4C2B1795744223D17A4425D996542DFF96542DFF7A44
          25D9744223D14C2A17961E11094F000000190000001000000008000000040000
          0001000000010000000000000000000000000000000000000000000000000000
          000000000000000000000000000100000001000000040000000B00000015321C
          0F6B824928E19F6137FFB47B4BFFC4915CFFC99560FFD3A36BFFD3A46BFFC895
          60FFC5905CFFB47B4CFFA06238FF814929E2321C0F6D000000180000000D0000
          0005000000010000000100000000000000000000000000000000000000000000
          0000000000000000000100000001000000050000000D120A0636754325CFA76A
          3EFFC7935EFFD5A56CFFD4A46DFFD4A56CFFD4A56CFFD4A56CFFD4A56CFFD5A5
          6CFFD4A56CFFD5A56DFFD4A66DFFC7945FFFA76A3FFF764426D1120A063A0000
          0010000000060000000100000001000000000000000000000000000000000000
          00000000000000000001000000050000000E26160C5590552FF0BE8956FFD6A6
          6EFFD5A56DFFD5A56DFFD5A66DFFD6A76EFFD5A76EFFD5A76EFFD5A76FFFD6A7
          6FFFD6A76EFFD5A76EFFD5A66EFFD5A66DFFD6A66FFFBE8957FF91542FF12616
          0C5A000000120000000600000001000000000000000000000000000000000000
          000000000000000000040000000C26160C539B5F38FAC79560FFD5A76EFFD6A6
          6EFFD5A76FFFD6A770FFD6A870FFD6A871FFD6A871FFD6A871FFD7A871FFD7A9
          71FFD6A870FFD6A870FFD6A871FFD6A86FFFD6A76FFFD5A86FFFC79562FF9A5F
          38FA26160D590000001000000005000000010000000000000000000000000000
          00000000000200000009160D0738925934EECA9A64FFD6A870FFD6A76FFFD6A8
          70FFD7A972FFD7A972FFD7AA73FFDAB17BFFE0BC8DFFE1BE91FFE1BF91FFE0BD
          8EFFDAB07BFFD8AB73FFD7AA73FFD7A972FFD7A971FFD7A870FFD6A970FFCA9A
          65FF925934EF160D073E0000000C000000030000000100000000000000000000
          00010000000500000010774829CBC08C5CFFD8A972FFD6A872FFD8A972FFD8AA
          74FFD8AB74FFD8AB75FFD8AC75FFCEA478FFA46E45FF9E653DFF9E653DFFA46E
          45FFD0A97EFFDAAE79FFD8AC76FFD8AC75FFD8AA74FFD8AB73FFD7AA72FFD7AA
          73FFC08D5DFF7A492AD000000016000000070000000100000000000000000000
          00020000000A34201365AB734AFFD8AD76FFD7AA73FFD8AB74FFD8AB75FFD9AC
          76FFDAAD77FFDAAD78FFDAAF79FFA46D44FFD9C3B4FFF8F2EDFFF9F3EFFFE1CF
          C1FFA67047FFDDB683FFDAAF78FFDAAD78FFDAAD77FFD9AC76FFD8AB75FFD8AA
          74FFD9AD78FFAC744BFF341F126B0000000E0000000300000001000000010000
          00040000000F875332DDCC9B6AFFD8AB76FFD8AB75FFD9AC77FFD9AF78FFDAB0
          79FFDAB07AFFDBB17BFFDBB17CFF9C633AFFECDFD8FFF1E6DDFFF2E6DDFFF9F4
          F0FF9E673EFFE0BA88FFDCB27CFFDBB17BFFDAB07AFFDAB079FFDAAF78FFD9AD
          77FFD9AC77FFCC9C6BFF885432DF000000160000000700000001000000020000
          000727190F4EAF7852FFDAB17BFFD8AC76FFDAAD78FFDBB079FFDBB17BFFDBB2
          7CFFDCB27FFFDCB37FFFDCB480FF9C633AFFEADDD4FFF2E7E0FFF2E8DFFFF8F3
          EEFF9F6840FFE1BC8CFFDEB480FFDCB380FFDCB37EFFDCB27CFFDBB17BFFDAB0
          79FFD9AD77FFDBB17DFFAF7952FF2A1A10570000000B00000002000000020000
          000956362192C5976EFFDBAF7BFFDAB079FFDBB07BFFDBB27CFFDEB886FFE5C4
          98FFE6C69CFFE7C79CFFE7C79CFF9C633AFFEBDED6FFF3EAE2FFF3E9E2FFF9F4
          F0FFA06A42FFE9CEA5FFE7C89DFFE6C79CFFE5C599FFE0B988FFDCB37FFFDCB1
          7EFFDBB17AFFDBB27EFFC5986FFF563722980000000E00000003000000020000
          000B7B4F32C6D1A77AFFDBB17CFFDBB27BFFDCB27FFFDEB480FFD0AA7EFFA46E
          44FF9E673EFFA06A42FFA26D45FFA57049FFF4ECE5FFF5ECE5FFF5ECE5FFF9F5
          F1FFA26C44FFA26E46FFA36F48FFA47049FFAC7B54FFD6B28BFFDFB785FFDCB4
          80FFDCB27FFFDCB37EFFD2A97BFF7C5032CA0000001100000004000000030000
          000C99633EECD8B281FFDBB27DFFDCB37FFFDEB482FFDFB683FFA46E45FFD4BC
          AEFFF9F5F1FFF9F5F2FFFAF6F3FFFAF6F3FFF6EEE8FFF6EEE8FFF5EEE8FFF5ED
          E7FFFAF6F2FFFAF5F2FFF9F5F1FFFAF5F2FFE1CFC3FFA57047FFE3BE8EFFDFB6
          83FFDEB481FFDCB580FFDAB483FF99643FED0000001300000005000000030000
          000CA46D46FADEBA8AFFDEB480FFDEB581FFDFB784FFE0B887FF9C633AFFE6D9
          D3FFF5EDE7FFF5EEE8FFF7EFE9FFF7EFEBFFF7F1EBFFF7F1EBFFF6F1ECFFF7F0
          EBFFF6EFE9FFF6EEE8FFF5EDE7FFF5EBE5FFFAF6F3FF9E653DFFE4C192FFE0B8
          86FFDFB784FFDEB582FFDFBD8CFFA56E47FA0000001300000005000000030000
          000BA67049FAE4C297FFDEB582FFE0B785FFE0B987FFE3C08FFF9C633AFFDFCF
          C7FFF2EAE4FFF6F0EBFFF7F1EDFFF8F2EEFFF9F3EEFFF9F3EEFFF8F2EEFFF8F2
          EDFFF7F1EDFFF7F0EBFFF6EFE9FFF5EDE7FFF5EFEBFF9E653DFFE6C698FFE2BB
          89FFE0B987FFDFB784FFE4C398FFA7714AFA0000001200000005000000020000
          000A9E6B45ECE3C69DFFDFB986FFE2BD8CFFE6CB9EFFE8D1A6FFA36E45FFBE9E
          8CFFCCB6AEFFCFBAB1FFD1BDB5FFD4C1BAFFEDE3DEFFF9F5F2FFFAF5F1FFF9F4
          F0FFE5D7D1FFDDCDC5FFDDCCC4FFDDCEC6FFCFB5A7FFA57047FFE9D0A5FFE6C6
          97FFE2BD8BFFE0BA8AFFE4C69FFF9E6D47ED0000001100000004000000020000
          0008835A3BC5DEC19FFFE6C79AFFE9D1A5FFE9D2A8FFEAD5AAFFD7B990FFAD7C
          53FF9C633AFF9C633AFF9C633AFF9C633AFFECE4E0FFFAF8F4FFFAF7F4FFFCFB
          F9FF9C633AFF9C633AFF9C633AFF9C633AFFAD7B52FFD8B78EFFEACFA3FFE8CC
          9EFFE6C89BFFE4C394FFDFC2A1FF835A3CC80000000E00000003000000010000
          00065D422C8FD8BB9DFFEBD7AFFFEAD3AAFFEBD6ACFFEBD7AEFFECD9AFFFEDDA
          B0FFEDDAB2FFEEDBB4FFEEDCB4FF9C633AFFECE4E1FFFBFAF8FFFCF9F7FFFDFB
          FAFFA7754EFFF0DDB7FFEDD8B0FFEDD7AEFFECD5ABFFEBD2A7FFEAD1A5FFE9CE
          A2FFE8CC9FFFE9CCA2FFD7B898FF5D422D940000000B00000003000000010000
          00042D221848C6A07DFFF2E3C5FFEBD6AEFFECD9AFFFECDAB2FFEDDBB3FFEEDC
          B4FFEFDDB6FFEFDDB7FFF0DFB8FF9C633AFFECE5E1FFFCFCFAFFFCFBF9FFFDFC
          FBFFA57049FFF1DFBBFFEFDBB4FFEED9B1FFEDD7AFFFECD6ABFFEBD3A9FFEAD1
          A5FFE9CEA3FFF0DDBBFFC49B77FF2D20174E0000000700000002000000000000
          000200000007A07A5ADAE9D9BFFFEDDCB5FFEDDCB4FFEDDDB5FFEEDEB8FFEFDF
          B9FFF0E0BAFFF0E1BBFFF1E2BBFF9C633AFFE5D9D5FFF9F6F6FFFDFCFBFFF5F2
          F0FFA26C45FFF2E2BEFFF1DEB7FFEFDCB5FFEEDBB3FFEDD8B0FFECD5ADFFEBD4
          A9FFEBD3A9FFE8D4BAFF9C7453DC0000000E0000000400000001000000000000
          0001000000043E31245BCBA885FFF5ECD1FFEEDDB7FFEEDFB8FFEFE0BBFFF0E2
          BCFFF1E3BDFFF1E4BFFFF2E4BFFFA46F47FFC0A392FFCFBAB4FFCFBBB5FFC3A6
          97FFA7744DFFF3E5C1FFF2E1BBFFF1DFB8FFEFDCB6FFEFDBB3FFEDD9B0FFECD6
          ACFFF4E6CAFFC9A27EFF3E2E2161000000080000000200000000000000000000
          00000000000200000006947457C6E4D1B6FFF2E7C9FFEFE2BCFFF1E3BEFFF1E4
          BFFFF2E5C1FFF2E6C2FFF3E6C3FFDEC6A1FFAF7F57FF9C633AFF9C633AFFAF7F
          58FFDEC7A2FFF3E5C1FFF2E3BDFFF2E1BBFFF0DFB8FFEFDDB6FFEEDAB3FFF2E2
          C2FFE3CDB1FF926F51C80000000C000000040000000100000000000000000000
          0000000000010000000319140F28B6936FECEFE3CCFFF5EACDFFF1E5C1FFF2E7
          C2FFF2E8C3FFF3E8C4FFF3E9C5FFF4E9C5FFF4EAC7FFF4EAC7FFF4E9C6FFF5E9
          C6FFF4E8C5FFF3E6C2FFF3E6C1FFF3E4BEFFF1E1BCFFF0DFB9FFF4E5C6FFEFE1
          CAFFB28D6AED19130E2D00000006000000020000000000000000000000000000
          000000000000000000010000000431271E46C6A27EF9EFE3CBFFF8F1D8FFF3E8
          C4FFF3E9C5FFF4EAC7FFF4EAC8FFF4EBC8FFF5EBC9FFF5ECC9FFF5EBC9FFF5EB
          C8FFF4EAC7FFF4E8C5FFF3E7C4FFF3E5C0FFF2E3BEFFF7EDD3FFEEE0C8FFC39D
          78FA30251B4A0000000700000002000000000000000000000000000000000000
          00000000000000000000000000010000000432281F45BB9876EEE6D5BAFFFBF7
          E3FFF7F0D3FFF4EBC8FFF5ECCBFFF5EDCBFFF6EDCBFFF5EDCCFFF5EDCBFFF5EC
          CBFFF5EBC9FFF5EAC7FFF4E8C5FFF6EDCFFFFBF5E1FFE6D2B7FFB99471EE3127
          1D4A000000070000000200000001000000000000000000000000000000000000
          0000000000000000000000000000000000010000000318130F239E8163C8D8BA
          98FFF1E5CFFFFCF9E7FFFBF6E0FFF8F2D8FFF8F3D6FFF6EFCDFFF6EFCDFFF8F2
          D6FFF8F1D6FFFBF5DEFFFCF8E6FFF1E5CEFFD7B896FF9C7E5FCA17130E280000
          0006000000020000000100000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000100000002000000054136
          2956AE916EDAD4B591FFE5D1B4FFF1E6CFFFF4EAD5FFFCF9E8FFFDF9E8FFF5EA
          D5FFF1E5CEFFE4CFB1FFD3B38EFFAD8E6CDA4336295B00000007000000040000
          0002000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000001000000010000
          000300000004251E1832665642829F8465C5A78C6BCECFAC85FCCFAC85FCA68A
          6ACF9F8366C666544184251E1734000000060000000400000002000000010000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0001000000010000000200000003000000040000000500000005000000050000
          0005000000040000000400000003000000020000000100000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000001000000010000000100000001000000010000
          0001000000010000000100000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000}
        TabOrder = 4
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'HelveticaNeue'
        Font.Style = [fsBold]
        ParentFont = False
        OnClick = btn_novoClick
      end
      object btn_editar: TcxButton
        Left = 662
        Top = 394
        Width = 130
        Height = 43
        Caption = 'Editar'
        Enabled = False
        LookAndFeel.NativeStyle = False
        LookAndFeel.SkinName = 'metropolis'
        OptionsImage.Glyph.Data = {
          36100000424D3610000000000000360000002800000020000000200000000100
          2000000000000010000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000001000000030000
          000B000000160000001A000000140000000D0000000700000004000000020000
          0001000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000001000000010000000100000002000000060000
          0016452E26FF241510DA100A0788020101350000001C00000011000000090000
          0004000000020000000100000001000000010000000100000001000000010000
          0001000000000000000000000000000000000000000000000000000000000000
          00000000000100000002000000040000000600000007000000080000000D0000
          001E4E382FD8A07C6FFF544649FF292C47F716254FB5070C1A5C0000001E0000
          00120000000B0000000800000008000000080000000800000008000000070000
          0005000000020000000100000000000000000000000000000000000000000000
          000000000002000000070000000F00000017000000190000001B0000001F0000
          002B281D188D82706CFFADCAE6FF7492BFFF425D99FF2E478AFF101D3FA50000
          003600000027000000200000001E0000001D0000001E0000001D0000001A0000
          0012000000080000000200000000000000000000000000000000000000000000
          0001000000040000000F78564AC1A57765FFA67666FFA57564FFA47363FFAE88
          7CFFB49D96FF5C5F7AFFDBE3EFFFA2C2E2FF7896C2FF536DA2FF315194FF5962
          88FFB9A49CFFAF8D81FF9D6C5CFF9D6E5DFF9E6D5CFF9E6C5BFF9E6C5BFF704C
          41C3000000130000000400000001000000000000000000000000000000000000
          00010000000500000015A87968FFF9F4F0FFF9F4F0FFF9F3EFFFF8F2EDFFF2EC
          E7FFE6E4E2FF7C8EB5FF8B9FC7FFCED9E9FF2084DBFF51A9E2FF1552AAFF154B
          9EFF6C7EA5FFE1DDDAFFEDE7E2FFF2E8E2FFF4EBE3FFF4EBE4FFF4EAE3FF9E6D
          5CFF000000190000000700000001000000000000000000000000000000000000
          00010000000600000016AA7B6AFFF9F4F1FFF3E9E2FFF3E9E1FFF2E8E0FFF0E5
          DEFFEBE4DFFFB9BEC8FF4B6CABFFFFFFFFFF4DA3E5FF2389DFFF56ADE3FF1658
          ACFF174FA0FF6D7FA5FFE1DAD7FFEBE3DDFFEEE2D9FFF1E4DBFFF5EBE5FF9E6F
          5EFF0000001B0000000700000001000000000000000000000000000000000000
          00010000000500000016AC7D6DFFFAF5F2FFF3EAE2FFF3EAE2FFF4E9E2FFF3E8
          E0FFEFE6E0FFE7E3DFFF8B9BBAFF6990C2FFC2E5F8FF50A7E6FF2791E0FF5DB1
          E5FF1A5DAFFF1953A4FF6F82A8FFE2DBD8FFEBE3DDFFEFE2D9FFF4EBE4FFA170
          60FF0000001B0000000700000001000000000000000000000000000000000000
          00010000000500000015AE8071FFFAF6F3FFF4EAE3FFF4EAE3FFF3EAE2FFF2E8
          E1FFF1E7E0FFF0E7E3FFE5E1DDFF81A1C1FF4590D0FFC7E8F8FF56AEE7FF2C97
          E1FF62B5E6FF1B62B2FF1B57A6FF7185ACFFE4DEDAFFECE4DEFFF2EAE4FFA272
          62FF0000001A0000000700000001000000000000000000000000000000000000
          00000000000500000014B08373FFFAF7F4FFF4EBE4FFF4EAE4FFF4EAE3FFF4EA
          E3FFF2E9E2FFF2E8E1FFEFE7E3FFE6E3DFFF83A4C5FF4895D2FFCBEBFAFF5AB4
          EBFF319DE4FF67BAE7FF1E65B6FF1D5DA9FF7389AEFFE4E0DBFFEFE9E5FFA473
          63FF0000001A0000000600000001000000000000000000000000000000000000
          00000000000500000013B18475FFFBF7F5FFF4ECE5FFF6EBE4FFF6EBE4FFF4EB
          E4FFF4EBE3FFF3EAE2FFF2E8E1FFEFE8E3FFE8E4E0FF86A7C7FF4C9AD4FFCFEE
          FBFF60B9EDFF36A5E9FF6EBEE8FF206BB9FF2061ADFF758CB2FFE8E5E2FFB794
          88FF0000001A0000000700000001000000000000000000000000000000000000
          00000000000400000012B38677FFFCF8F5FFF6ECE6FFF6ECE6FFF6ECE5FFF4EB
          E5FFF4EBE5FFF4EBE4FFF4EBE4FFF2E9E2FFF1E9E4FFE9E6E2FF88AAC9FF4F9F
          D7FFD3F0FCFF64BEEFFF3BABEBFF72C2EAFF2371BCFF2266AFFF7992B7FFC5AF
          A7FF0000001F0000000800000002000000000000000000000000000000000000
          00000000000400000011B58A7AFFFCF8F7FFF7EDE8FFF6ECE6FFF4EDE6FFF4EC
          E6FFF4ECE6FFF6ECE5FFF4ECE4FFF4EBE4FFF2E9E2FFF1EAE4FFEBE7E4FF8BAE
          CCFF52A3D8FFD6F2FCFF6AC5F0FF42B2EBFF77C6ECFF2677C0FF256BB4FF6B7C
          9EFF000000260000000D00000003000000010000000000000000000000000000
          00000000000400000010B78A7BFFFCF9F7FFF7EDE8FFF7EDE9FFF6EDE8FFF6ED
          E6FFF6EDE6FFF6ECE6FFF6ECE5FFF6ECE5FFF6ECE4FFF2E9E2FFF2EBE6FFEDE9
          E6FF8DB1CEFF56A8DAFFD9F4FDFF89D5F6FF47BBEFFF7BCBECFF2A7DC1FF2871
          B7FF191C26990000001400000007000000020000000000000000000000000000
          0000000000040000000FB98D7EFFFCFAF8FFF7EFE9FFF7EFE9FFF7EFE9FFF7EF
          E8FFF6EDE8FFF6EDE8FFF6EDE6FFF6EDE6FFF4ECE6FFF6ECE6FFF3EBE4FFF3EC
          E7FFEEE9E7FF8FB4D0FF5AADDCFFDCF6FDFF74CFF6FF4CC0F0FF80D0EEFF7877
          7BFF794A3AFF29110B900000000F000000060000000200000000000000000000
          0000000000040000000EBB9080FFFCFAF8FFF7F0EAFFF7F0E9FFF6EFE9FFF7EF
          E9FFF7EFE8FFF7EFE9FFF6EDE8FFF7EDE8FFF7EDE6FFF6EDE6FFF6EDE6FFF5EB
          E4FFF3EDE7FFF0EBE8FF91B7D3FF5DB0DEFFDEF8FEFF7AD6F7FF90B9C5FFD8C1
          B3FF996B59FF815141FF190D228D0000000C0000000500000001000000000000
          0000000000030000000DBD9283FFFDFBF9FFF8F1EBFFF8F0EBFFF7F0EBFFF7F0
          EAFFF7F0EAFFF7F0E9FFF7EFE9FFF6EFE9FFF7EDE8FFF6EDE8FFF6EDE8FFF6ED
          E8FFF5EBE5FFF5EEE9FFF1EDE9FF93B9D5FF60B4E0FFE7F7F9FFDBC3B1FFCFB3
          9FFFDBC5B8FF584B8BFF212095FF0A0A3E8B0000000B00000004000000000000
          0000000000030000000DBE9585FFFBF8F7FFF8F2ECFFF8F1EBFFF7F1EBFFF7F1
          EBFFF7F0EBFFF8F0EAFFF7F0EAFFF7EFEAFFF7EFEAFFF7EDE9FFF6EFE8FFF6EF
          E8FFF6EDE8FFF6ECE7FFF5EEE9FFF2EEEBFFA9AEB7FFB58F7EFFFAF0E2FFDFC8
          B6FF9A97C5FF8791E3FF2B2EAAFF25259CFF0F0F458900000006000000000000
          0000000000030000000CC09687FFF8F5F2FFF6EFE9FFF8F2ECFFF8F1ECFFF8F1
          ECFFF7F1ECFFF7F0EBFFF8F1EAFFF8F0EAFFF7F0EAFFF7F0E9FFF7F0E9FFF6EF
          E9FFF6EDE9FFF7EDE9FFF6EEE8FFF6EFECFFF4EFEDFFC2A59DFFBC9788FFF6EE
          E7FF8B9FEDFF6275E1FF98A2E7FF7B85D0FF272A96FF00000007000000000000
          0000000000030000000BC39889FFF6EFEDFFF4EBE6FFF6EFEAFFF8F2EDFFF8F2
          EDFFF8F1EDFFF8F1ECFFF8F1ECFFF8F1EBFFF8F0EBFFF8F0EAFFF7EFEAFFF7F0
          EAFFF7EFEAFFF7F0E9FFF7EFE9FFF5ECE8FFF7EFECFFF5F0EEFFB1A5BDFF6B78
          D4FFDBE7FCFF8BA0EEFFACC0F3FF4E57C3FF21235A8400000004000000000000
          0000000000020000000AC49A8AFFF1E9E6FFF0E6E2FFF4EBE7FFF5EEEBFFF7F1
          ECFFF7F1ECFFF8F2EDFFF7F0EBFFF8F1EDFFF7F1ECFFF8F1ECFFF7F0EBFFF7F0
          EAFFF7F0EBFFF7EFEAFFF7EFEAFFF7EFEAFFF7EFE9FFF6F1ECFFF9F7F6FF928B
          BDFF7180DAFFDCE8FCFF6675D7FF262A60830000000500000002000000000000
          00000000000200000009C69C8CFFE8DDD8FFE8DBD4FFECDFDBFFEFE4E0FFF1E8
          E3FFF4EBE8FFF6EDE9FFF7F1ECFFF8F2EFFFF8F1EDFFF8F1ECFFF8F1ECFFF8F1
          ECFFF8F1EBFFF8F1EBFFF7F0EBFFF7F0EBFFF7EFEAFFF7EFEAFFFBF8F6FFDAC5
          BDFF2B3166885761CEFF2C316681000000040000000200000001000000000000
          00000000000200000008C79E8DFFD9C4BCFFD9C4B9FFDCC6BEFFDECBC4FFE1CF
          C8FFE6D5D0FFEDE0DAFFF4EBE6FFF8F2EDFFF7F1EEFFF9F2EFFFF8F2EFFFF8F2
          EDFFF8F1ECFFF8F1ECFFF7F1ECFFF7F0EBFFF7F0EBFFF7F1EAFFFCF8F5FFCCAB
          9FFF0000000F0000000500000002000000010000000000000000000000000000
          00000000000100000006C8A08FFFCDB1A7FFA37363FFA47363FFA47464FFA475
          64FFA57766FFB38B7CFFEEE3DDFFF7EEECFFF9F3EFFFF9F3EFFFF9F2EFFFF9F3
          EDFFF9F2EDFFF8F1EDFFF8F1ECFFF8F1ECFFF8F1ECFFF8F1ECFFFCF9F7FFBE93
          84FF0000000D0000000300000000000000000000000000000000000000000000
          00000000000100000004563E3683D5B9AEFFFCF9F7FFFEFCFAFFFFFDFCFFFFFE
          FEFFFFFFFFFFAB7E6DFFEADDD7FFF5EEEAFFF9F3F1FFF9F4F0FFF9F3F0FFF9F3
          F0FFF9F3EFFFF9F3EFFFF8F2EFFFF8F2EDFFF8F2EDFFF8F2EDFFFCF9F7FFC096
          87FF0000000C0000000300000000000000000000000000000000000000000000
          000000000000000000020000000559413983D7BAB0FFFCF6F3FFFDF9F7FFFEFB
          FAFFFFFEFEFFB08574FFEADDD6FFF5EEEAFFFAF6F1FFF9F4F1FFF9F4F1FFF9F4
          F1FFF9F4F0FFF9F3EFFFF9F3EFFFF8F3EFFFF9F2EFFFF9F2EFFFFDFAF8FFC298
          88FF0000000B0000000300000000000000000000000000000000000000000000
          0000000000000000000100000002000000055B433B83D8BCB3FFFBF6F3FFFDF9
          F6FFFFFEFEFFB68C7DFFE9DBD5FFF4EBE7FFF7F3F0FFFAF6F2FFF9F4F2FFF9F4
          F1FFF9F4F1FFFAF4F1FFF9F3F0FFF9F3F0FFF9F3F0FFF8F2EFFFFDFAF9FFC499
          89FF0000000A0000000300000000000000000000000000000000000000000000
          000000000000000000000000000000000002000000045D453E83DBC0B5FFFBF6
          F3FFFFFEFEFFBC9584FFE8DCD5FFF0E8E4FFF5EFEBFFF8F3F0FFFAF6F2FFFAF6
          F2FFF9F6F1FFF9F6F1FFF9F4F1FFF9F4F1FFF9F4F0FFF9F4F0FFFDFAF9FFC59B
          8BFF000000090000000200000000000000000000000000000000000000000000
          00000000000000000000000000000000000000000001000000045F484082DDC2
          B8FFFFFEFEFFC19B8BFFE7DAD3FFEEE3DFFFF3EBE6FFF5F0ECFFF8F4F0FFFAF7
          F3FFFAF7F3FFFAF6F2FFF9F4F2FFFAF4F1FFF9F4F1FFFAF4F0FFFDFBFAFFC79D
          8EFF000000080000000200000000000000000000000000000000000000000000
          000000000000000000000000000000000000000000000000000100000003614B
          4382E2CAC2FFDECAC3FFE8DAD6FFEEE4E0FFF2EBE9FFF6F1EFFFFAF7F6FFFFFE
          FEFFFEFEFDFFFEFEFDFFFEFEFDFFFEFEFDFFFEFDFDFFFEFDFDFFFEFDFDFFC89F
          8FFF000000070000000200000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000010000
          0003634D4681CEA596FFCEA695FFCDA595FFCDA595FFCDA495FFCDA495FFCDA3
          94FFCDA394FFCDA394FFCBA293FFCBA293FFCBA291FFCBA191FFCAA191FF9677
          6ABF000000040000000100000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0001000000020000000300000003000000040000000400000004000000040000
          0004000000050000000500000005000000050000000500000005000000050000
          0004000000020000000000000000000000000000000000000000}
        TabOrder = 5
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'HelveticaNeue'
        Font.Style = [fsBold]
        Font.Quality = fqDraft
        ParentFont = False
        OnClick = btn_editarClick
      end
      object btn_cancelar: TcxButton
        Left = 814
        Top = 394
        Width = 130
        Height = 43
        Caption = 'Cancelar'
        Enabled = False
        LookAndFeel.NativeStyle = False
        LookAndFeel.SkinName = 'metropolis'
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
        TabOrder = 6
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'HelveticaNeue'
        Font.Style = [fsBold]
        ParentFont = False
        OnClick = btn_cancelarClick
      end
      object edt_problema: TDBMemo
        Left = 510
        Top = 40
        Width = 434
        Height = 141
        DataField = 'PROBLEMA'
        DataSource = ds_atendimentos
        Enabled = False
        TabOrder = 7
      end
      object edt_solucao: TDBMemo
        Left = 510
        Top = 224
        Width = 434
        Height = 141
        DataField = 'SOLUCAO'
        DataSource = ds_atendimentos
        Enabled = False
        TabOrder = 8
      end
    end
  end
  object sql_atendimentos: TFDQuery
    Connection = Module.connection
    SQL.Strings = (
      'select *'
      'from atendimentos')
    Left = 680
    Top = 272
    object sql_atendimentosCODIGO: TFDAutoIncField
      FieldName = 'CODIGO'
      Origin = 'CODIGO'
      ProviderFlags = [pfInWhere, pfInKey]
      ReadOnly = True
    end
    object sql_atendimentosNOME_FANTASIA: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'NOME_FANTASIA'
      Origin = 'NOME_FANTASIA'
      Size = 200
    end
    object sql_atendimentosRAZAO_SOCIAL: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'RAZAO_SOCIAL'
      Origin = 'RAZAO_SOCIAL'
      Size = 200
    end
    object sql_atendimentosCONTATO_1: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'CONTATO_1'
      Origin = 'CONTATO_1'
      Size = 200
    end
    object sql_atendimentosCONTATO_2: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'CONTATO_2'
      Origin = 'CONTATO_2'
      Size = 200
    end
    object sql_atendimentosCONTATO_3: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'CONTATO_3'
      Origin = 'CONTATO_3'
      Size = 200
    end
    object sql_atendimentosSISTEMA: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'SISTEMA'
      Origin = 'SISTEMA'
      FixedChar = True
      Size = 8
    end
    object sql_atendimentosTIPO: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'TIPO'
      Origin = 'TIPO'
      FixedChar = True
      Size = 7
    end
    object sql_atendimentosABERTURA: TDateTimeField
      AutoGenerateValue = arDefault
      FieldName = 'ABERTURA'
      Origin = 'ABERTURA'
    end
    object sql_atendimentosFECHAMENTO: TDateTimeField
      AutoGenerateValue = arDefault
      FieldName = 'FECHAMENTO'
      Origin = 'FECHAMENTO'
    end
    object sql_atendimentosTECNICO: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'TECNICO'
      Origin = 'TECNICO'
      Size = 200
    end
    object sql_atendimentosTECNICO_REPASSE: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'TECNICO_REPASSE'
      Origin = 'TECNICO_REPASSE'
      Size = 200
    end
    object sql_atendimentosSTATUS: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'STATUS'
      Origin = 'STATUS'
      FixedChar = True
      Size = 7
    end
    object sql_atendimentosSTATUS_REPASSE: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'STATUS_REPASSE'
      Origin = 'STATUS_REPASSE'
      FixedChar = True
      Size = 7
    end
    object sql_atendimentosFECHADO_POR: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'FECHADO_POR'
      Origin = 'FECHADO_POR'
      Size = 200
    end
    object sql_atendimentosFECHAMENTO_POR: TDateTimeField
      AutoGenerateValue = arDefault
      FieldName = 'FECHAMENTO_POR'
      Origin = 'FECHAMENTO_POR'
    end
    object sql_atendimentosPROBLEMA: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'PROBLEMA'
      Origin = 'PROBLEMA'
      Size = 5000
    end
    object sql_atendimentosSOLUCAO: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'SOLUCAO'
      Origin = 'SOLUCAO'
      Size = 5000
    end
    object sql_atendimentosOBSERVACOES: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'OBSERVACOES'
      Origin = 'OBSERVACOES'
      Size = 5000
    end
  end
  object ds_atendimentos: TDataSource
    DataSet = sql_atendimentos
    Left = 768
    Top = 272
  end
  object tfd_atendimentos: TFDTable
    IndexFieldNames = 'CODIGO'
    Connection = Module.connection
    UpdateOptions.UpdateTableName = 'smc_automacao.atendimentos'
    TableName = 'smc_automacao.atendimentos'
    Left = 856
    Top = 272
    object tfd_atendimentosCODIGO: TFDAutoIncField
      FieldName = 'CODIGO'
      Origin = 'CODIGO'
      ProviderFlags = [pfInWhere, pfInKey]
      ReadOnly = True
    end
    object tfd_atendimentosNOME_FANTASIA: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'NOME_FANTASIA'
      Origin = 'NOME_FANTASIA'
      Size = 200
    end
    object tfd_atendimentosRAZAO_SOCIAL: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'RAZAO_SOCIAL'
      Origin = 'RAZAO_SOCIAL'
      Size = 200
    end
    object tfd_atendimentosCONTATO_1: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'CONTATO_1'
      Origin = 'CONTATO_1'
      Size = 200
    end
    object tfd_atendimentosCONTATO_2: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'CONTATO_2'
      Origin = 'CONTATO_2'
      Size = 200
    end
    object tfd_atendimentosCONTATO_3: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'CONTATO_3'
      Origin = 'CONTATO_3'
      Size = 200
    end
    object tfd_atendimentosSISTEMA: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'SISTEMA'
      Origin = 'SISTEMA'
      FixedChar = True
      Size = 8
    end
    object tfd_atendimentosTIPO: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'TIPO'
      Origin = 'TIPO'
      FixedChar = True
      Size = 7
    end
    object tfd_atendimentosABERTURA: TDateTimeField
      AutoGenerateValue = arDefault
      FieldName = 'ABERTURA'
      Origin = 'ABERTURA'
    end
    object tfd_atendimentosFECHAMENTO: TDateTimeField
      AutoGenerateValue = arDefault
      FieldName = 'FECHAMENTO'
      Origin = 'FECHAMENTO'
    end
    object tfd_atendimentosTECNICO: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'TECNICO'
      Origin = 'TECNICO'
      Size = 200
    end
    object tfd_atendimentosTECNICO_REPASSE: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'TECNICO_REPASSE'
      Origin = 'TECNICO_REPASSE'
      Size = 200
    end
    object tfd_atendimentosSTATUS: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'STATUS'
      Origin = 'STATUS'
      FixedChar = True
      Size = 7
    end
    object tfd_atendimentosSTATUS_REPASSE: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'STATUS_REPASSE'
      Origin = 'STATUS_REPASSE'
      FixedChar = True
      Size = 7
    end
    object tfd_atendimentosFECHADO_POR: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'FECHADO_POR'
      Origin = 'FECHADO_POR'
      Size = 200
    end
    object tfd_atendimentosFECHAMENTO_POR: TDateTimeField
      AutoGenerateValue = arDefault
      FieldName = 'FECHAMENTO_POR'
      Origin = 'FECHAMENTO_POR'
    end
    object tfd_atendimentosOBSERVACOES: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'OBSERVACOES'
      Origin = 'OBSERVACOES'
      Size = 5000
    end
    object tfd_atendimentosPROBLEMA: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'PROBLEMA'
      Origin = 'PROBLEMA'
      Size = 5000
    end
    object tfd_atendimentosSOLUCAO: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'SOLUCAO'
      Origin = 'SOLUCAO'
      Size = 5000
    end
  end
end
