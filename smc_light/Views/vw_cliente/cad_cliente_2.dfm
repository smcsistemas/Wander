object frm_cadastro_cliente: Tfrm_cadastro_cliente
  Left = 0
  Top = 0
  BorderIcons = [biSystemMenu]
  BorderStyle = bsSingle
  Caption = 'Cadastro Cliente'
  ClientHeight = 540
  ClientWidth = 1368
  Color = clBtnFace
  DefaultMonitor = dmMainForm
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  KeyPreview = True
  OldCreateOrder = False
  Position = poDesktopCenter
  OnClose = FormClose
  OnKeyPress = FormKeyPress
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 13
  object page_control: TcxPageControl
    Left = 0
    Top = 0
    Width = 1368
    Height = 540
    Align = alClient
    Color = clBtnFace
    Font.Charset = ANSI_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'Tahoma'
    Font.Style = [fsBold]
    ParentBackground = False
    ParentColor = False
    ParentFont = False
    TabOrder = 0
    Properties.ActivePage = tab_cadastrar
    Properties.CustomButtons.Buttons = <>
    LookAndFeel.Kind = lfFlat
    LookAndFeel.NativeStyle = False
    LookAndFeel.SkinName = 'Metropolis'
    ClientRectBottom = 538
    ClientRectLeft = 2
    ClientRectRight = 1366
    ClientRectTop = 28
    object tab_consulta: TcxTabSheet
      Caption = 'Consultar'
      Color = clMedGray
      ImageIndex = 0
      ParentColor = False
      ExplicitLeft = 0
      ExplicitTop = 0
      ExplicitWidth = 0
      ExplicitHeight = 507
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
      object Label47: TLabel
        Left = 451
        Top = 2
        Width = 59
        Height = 13
        Align = alCustom
        Caption = 'Filtrar por:'
      end
      object Label49: TLabel
        Left = 607
        Top = 2
        Width = 76
        Height = 13
        Align = alCustom
        Caption = 'Ordernar por:'
      end
      object Label24: TLabel
        Left = 6
        Top = 35
        Width = 428
        Height = 13
        Caption = 
          '(Raz'#227'o Social / Fantasia / Cod / CPF / CNPJ / IE / RG / Fones / ' +
          'Cels / Emails / Contato ...)'
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = []
        ParentFont = False
      end
      object edArgumentoDePesquisa: TEdit
        Left = 82
        Top = 6
        Width = 337
        Height = 21
        CharCase = ecUpperCase
        TabOrder = 0
        OnChange = edArgumentoDePesquisaChange
      end
      object gd: TcxGrid
        Left = 0
        Top = 52
        Width = 1364
        Height = 458
        Align = alBottom
        TabOrder = 1
        LookAndFeel.NativeStyle = False
        LookAndFeel.SkinName = 'Office2013White'
        ExplicitTop = 49
        object tb: TcxGridDBTableView
          Navigator.Buttons.CustomButtons = <>
          OnCellDblClick = tbCellDblClick
          OnCustomDrawCell = tbCustomDrawCell
          DataController.DataSource = dsConsulta
          DataController.Summary.DefaultGroupSummaryItems = <>
          DataController.Summary.FooterSummaryItems = <>
          DataController.Summary.SummaryGroups = <>
          OptionsData.Deleting = False
          OptionsData.DeletingConfirmation = False
          OptionsData.Editing = False
          OptionsData.Inserting = False
          OptionsView.GroupByBox = False
          object tbstatus_cadastral: TcxGridDBColumn
            Caption = 'S'
            DataBinding.FieldName = 'status_cadastral'
            PropertiesClassName = 'TcxLabelProperties'
            Properties.Alignment.Horz = taCenter
            Visible = False
            HeaderAlignmentHorz = taCenter
            HeaderGlyphAlignmentHorz = taCenter
            Options.Filtering = False
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
            Width = 20
          end
          object tbpessoa_tipo: TcxGridDBColumn
            Caption = 'TP'
            DataBinding.FieldName = 'pessoa_tipo'
            PropertiesClassName = 'TcxLabelProperties'
            Properties.Alignment.Horz = taCenter
            HeaderAlignmentHorz = taCenter
            HeaderGlyphAlignmentHorz = taCenter
            MinWidth = 22
            Options.Editing = False
            Options.Filtering = False
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
            Width = 22
          end
          object tbcodigo: TcxGridDBColumn
            Caption = 'C'#243'd'
            DataBinding.FieldName = 'codigo'
            PropertiesClassName = 'TcxTextEditProperties'
            Properties.Alignment.Horz = taCenter
            Properties.ReadOnly = True
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
            Options.IgnoreTimeForFiltering = False
            Options.IncSearch = False
            Options.GroupFooters = False
            Options.Grouping = False
            Options.HorzSizing = False
            Width = 50
          end
          object tbdata_cadastro: TcxGridDBColumn
            Caption = 'Data'
            DataBinding.FieldName = 'data_cadastro'
            PropertiesClassName = 'TcxDateEditProperties'
            Properties.Alignment.Horz = taCenter
            Properties.AssignedValues.EditFormat = True
            Properties.DisplayFormat = 'dd/mm/yy'
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
            Width = 70
          end
          object tbrazao_social: TcxGridDBColumn
            Caption = 'Raz'#227'o Social'
            DataBinding.FieldName = 'razao_social'
            PropertiesClassName = 'TcxTextEditProperties'
            Properties.ReadOnly = True
            MinWidth = 300
            Options.Editing = False
            Options.Filtering = False
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
            Width = 300
          end
          object tbfantasia: TcxGridDBColumn
            Caption = 'Fantasia'
            DataBinding.FieldName = 'fantasia'
            PropertiesClassName = 'TcxTextEditProperties'
            Properties.ReadOnly = True
            MinWidth = 200
            Options.Editing = False
            Options.Filtering = False
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
            Width = 200
          end
          object tbcnpj: TcxGridDBColumn
            Caption = 'CNPJ'
            DataBinding.FieldName = 'cnpj'
            PropertiesClassName = 'TcxTextEditProperties'
            Properties.Alignment.Horz = taCenter
            HeaderAlignmentHorz = taCenter
            HeaderGlyphAlignmentHorz = taCenter
            MinWidth = 125
            Options.Editing = False
            Options.Filtering = False
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
            Width = 125
          end
          object tbcpf: TcxGridDBColumn
            Caption = 'CPF'
            DataBinding.FieldName = 'cpf'
            PropertiesClassName = 'TcxTextEditProperties'
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
            Options.IgnoreTimeForFiltering = False
            Options.IncSearch = False
            Options.GroupFooters = False
            Options.Grouping = False
            Options.HorzSizing = False
            Width = 100
          end
          object tbtelefone: TcxGridDBColumn
            Caption = 'Telefone'
            DataBinding.FieldName = 'telefone'
            PropertiesClassName = 'TcxTextEditProperties'
            Properties.Alignment.Horz = taCenter
            HeaderAlignmentHorz = taCenter
            HeaderGlyphAlignmentHorz = taCenter
            MinWidth = 105
            Options.Editing = False
            Options.Filtering = False
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
            Width = 105
          end
          object tbcelular: TcxGridDBColumn
            Caption = 'Celular'
            DataBinding.FieldName = 'celular'
            PropertiesClassName = 'TcxTextEditProperties'
            Properties.Alignment.Horz = taCenter
            HeaderAlignmentHorz = taCenter
            HeaderGlyphAlignmentHorz = taCenter
            MinWidth = 105
            Options.Editing = False
            Options.Filtering = False
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
            Width = 105
          end
          object tbinscricao_estadual: TcxGridDBColumn
            Caption = 'IE'
            DataBinding.FieldName = 'inscricao_estadual'
            PropertiesClassName = 'TcxTextEditProperties'
            Properties.Alignment.Horz = taCenter
            Properties.ReadOnly = True
            HeaderAlignmentHorz = taCenter
            HeaderGlyphAlignmentHorz = taCenter
            MinWidth = 105
            Options.Editing = False
            Options.Filtering = False
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
            Width = 105
          end
          object tbmunicipio: TcxGridDBColumn
            Caption = 'Cidade'
            DataBinding.FieldName = 'municipio'
            PropertiesClassName = 'TcxTextEditProperties'
            Properties.Alignment.Horz = taCenter
            Properties.ReadOnly = True
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
            Options.IgnoreTimeForFiltering = False
            Options.IncSearch = False
            Options.GroupFooters = False
            Options.Grouping = False
            Options.HorzSizing = False
            Width = 150
          end
          object tbestado: TcxGridDBColumn
            Caption = 'UF'
            DataBinding.FieldName = 'estado'
            PropertiesClassName = 'TcxTextEditProperties'
            Properties.Alignment.Horz = taCenter
            Properties.ReadOnly = True
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
            Options.IgnoreTimeForFiltering = False
            Options.IncSearch = False
            Options.GroupFooters = False
            Options.Grouping = False
            Options.HorzSizing = False
            Width = 30
          end
        end
        object lv: TcxGridLevel
          GridView = tb
        end
      end
      object cbFiltro: TcxComboBox
        Left = 451
        Top = 18
        ParentFont = False
        Properties.DropDownListStyle = lsFixedList
        Properties.Items.Strings = (
          'C'#243'digo'
          'Raz'#227'o Social'
          'Nome Fantasia'
          'CPNJ'
          'CPF'
          'Telefone'
          'Celular'
          'IE'
          'Cidade'
          'UF')
        Style.Font.Charset = ANSI_CHARSET
        Style.Font.Color = clWindowText
        Style.Font.Height = -13
        Style.Font.Name = 'Tahoma'
        Style.Font.Style = [fsBold]
        Style.LookAndFeel.NativeStyle = False
        Style.LookAndFeel.SkinName = 'DevExpressStyle'
        Style.IsFontAssigned = True
        StyleDisabled.LookAndFeel.NativeStyle = False
        StyleDisabled.LookAndFeel.SkinName = 'DevExpressStyle'
        StyleFocused.LookAndFeel.NativeStyle = False
        StyleFocused.LookAndFeel.SkinName = 'DevExpressStyle'
        StyleHot.LookAndFeel.NativeStyle = False
        StyleHot.LookAndFeel.SkinName = 'DevExpressStyle'
        TabOrder = 2
        Text = 'Raz'#227'o Social'
        Width = 118
      end
      object cbOrder: TcxComboBox
        Left = 607
        Top = 19
        ParentFont = False
        Properties.DropDownListStyle = lsFixedList
        Properties.Items.Strings = (
          'C'#243'digo'
          'Raz'#227'o Social'
          'Nome Fantasia'
          'Tipo Pessoa'
          'Status'
          'Cidade'
          'UF')
        Style.Font.Charset = ANSI_CHARSET
        Style.Font.Color = clWindowText
        Style.Font.Height = -13
        Style.Font.Name = 'Tahoma'
        Style.Font.Style = [fsBold]
        Style.LookAndFeel.NativeStyle = False
        Style.LookAndFeel.SkinName = 'DevExpressStyle'
        Style.IsFontAssigned = True
        StyleDisabled.LookAndFeel.NativeStyle = False
        StyleDisabled.LookAndFeel.SkinName = 'DevExpressStyle'
        StyleFocused.LookAndFeel.NativeStyle = False
        StyleFocused.LookAndFeel.SkinName = 'DevExpressStyle'
        StyleHot.LookAndFeel.NativeStyle = False
        StyleHot.LookAndFeel.SkinName = 'DevExpressStyle'
        TabOrder = 3
        Text = 'C'#243'digo'
        OnClick = cbOrderClick
        Width = 118
      end
      object btn_relatorios_cli: TcxButton
        Left = 1141
        Top = 3
        Width = 144
        Height = 40
        Caption = 'Relat'#243'rios'
        Enabled = False
        LookAndFeel.NativeStyle = False
        LookAndFeel.SkinName = 'Metropolis'
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
        Visible = False
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -16
        Font.Name = 'Tahoma'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object rgSTATUS_CADASTRAL: TRadioGroup
        Left = 959
        Top = -2
        Width = 185
        Height = 45
        Caption = 'Status'
        Columns = 2
        Items.Strings = (
          'Ativo'
          'Inativo'
          'Bloqueado'
          'Todos')
        TabOrder = 5
        OnClick = rgSTATUS_CADASTRALClick
      end
      object rgPESSOA_TIPO: TRadioGroup
        Left = 731
        Top = 3
        Width = 222
        Height = 45
        Caption = 'Pessoa'
        Columns = 3
        Items.Strings = (
          'F'#237'sica'
          'Jur'#237'dica'
          'Todas')
        TabOrder = 4
        OnClick = rgSTATUS_CADASTRALClick
      end
      object pnContador: TPanel
        Left = 1288
        Top = 4
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
        TabOrder = 7
      end
    end
    object tab_cadastrar: TcxTabSheet
      Caption = 'Cadastrar'
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -15
      Font.Name = 'Tahoma'
      Font.Style = []
      ImageIndex = 1
      ParentFont = False
      object Label10: TLabel
        Left = 19
        Top = 4
        Width = 51
        Height = 18
        Caption = 'C'#243'digo'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Height = -15
        Font.Name = 'Tahoma'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object Label13: TLabel
        Left = 554
        Top = 16
        Width = 48
        Height = 16
        Caption = 'Status:'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Height = -13
        Font.Name = 'Tahoma'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object Label7: TLabel
        Left = 29
        Top = 235
        Width = 128
        Height = 18
        Caption = 'Situa'#231#227'o Financeira:'
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -15
        Font.Name = 'Tahoma'
        Font.Style = []
        ParentFont = False
      end
      object Label8: TLabel
        Left = 326
        Top = 235
        Width = 106
        Height = 18
        Caption = 'Lmt. de Cr'#233'dito:'
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -15
        Font.Name = 'Tahoma'
        Font.Style = []
        ParentFont = False
      end
      object Label11: TLabel
        Left = 44
        Top = 262
        Width = 63
        Height = 18
        Caption = 'Atividade:'
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -15
        Font.Name = 'Tahoma'
        Font.Style = []
        ParentFont = False
      end
      object lbDetalhesBloqueio: TLabel
        Left = 660
        Top = 16
        Width = 45
        Height = 13
        Caption = 'Bloqueios'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = []
        ParentFont = False
      end
      object bt_SMC: TcxButton
        Left = 1209
        Top = 18
        Width = 148
        Height = 55
        Caption = 'SMC'
        LookAndFeel.NativeStyle = False
        LookAndFeel.SkinName = 'Metropolis'
        OptionsImage.Glyph.Data = {
          3A110000424D3A11000000000000360000002800000021000000210000000100
          2000000000000411000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          000000000000000000000000000000000000000000001B1B1B30272727402A2A
          2A40000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          000000000000070707102B2A29604D4C4BA0757272E0949191FF9E9C9BFFA9A8
          A8FFB6B4B3FFC2C1C0FFC2C2C2F0A9A8A6C0636261701A1A1A20000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000070707103938378073716FF28F8D8CFFA5A29FFFADABAAFFAEACABFFB0AD
          ACFFB1AFAEFFB3B0AFFFB5B2B1FFB6B4B3FFBCB9B8FFC0BDBCFFC3C1C0FF807F
          7EB0212020300000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000242323506F6D6CF1918E8EFFA3A19FFFA4A2A1FFA4A2A2FFA6A4A4FFA8A6
          A6FFAAA8A8FFABAAA9FFADABAAFFAFADADFFB1AFAFFFB3B1B0FFB5B2B1FFB7B5
          B4FFB6B3B2FFA9A7A7FF56555590090909100000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000484645A07E7B7BFF959393FF989696FF9A9898FF9C9A99FF9C9A9AFF9D9C
          9CFF8F8786FF918988FF8E8583FF958C8BFF958D8CFFA5A2A2FFACAAAAFFAEAC
          ACFFB0AEAEFFB3B0B1FFB5B3B3FFA7A5A4FF6C6B6BD008080810000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000484645A07E7C7CFF8A888AFF8D8A8BFF8E8C8DFF908E8FFF7C6F6CFF5F47
          3DFF47260CFF47260CFF47260CFF47260CFF47260CFF47260CFF47260CFF5537
          27FF7B6965FFA7A5A6FFAAA8A9FFACAAABFFAFADAEFFA9A7A7FF72706EF11716
          1630000000000000000000000000000000000000000000000000000000000000
          0000484645A0777574FF7D7B7DFF7F7D7FFF807F80FF7C7372FF5D3F2FFF512D
          0DFF512D0DFF512D0DFF522E0DFF522E0DFF522E0DFF522E0DFF522E0DFF522E
          0DFF522E0DFF522E0DFF5A3823FF83726FFFA3A1A2FFA5A3A4FFA7A5A6FFA3A1
          A2FF6F6D6CD40909091000000000000000000000000000000000000000000000
          00002B2A2960727070FF737173FF737173FF737173FF6E615EFF5E3817FF5C35
          10FF5C3510FF5C3510FF60380EFF60380EFF60380EFF60380EFF60380EFF6038
          0EFF60380EFF60380EFF60380EFF60380EFF60380EFF755A4FFF999798FF9B9A
          9BFF9E9C9EFF9D9A9AFF686665B0000000000000000000000000000000000000
          0000070707106C6A69F36C6B6CFF6E6C6EFF6E6C6EFF6D5F5CFF693F0EFF693F
          0EFF693F0EFF693F0EFF693F0EFF6C410EFF6C410EFF6C410EFF6C410EFF6C41
          0EFF6C410EFF6C410EFF6C410EFF6C410EFF6C410EFF6C410EFF6C410EFF7657
          4AFF8F8D8EFF929092FF959395FFA09E9DFF4141416000000000000000000000
          000000000000484645A06B696BFF686769FF686769FF696261FF75491EFF7647
          11FF764711FF764711FF764711FF794A12FF794A12FF794A12FF794A12FF794A
          12FF794A12FF794A12FF794A12FF794A12FF794A12FF794A12FF794A12FF794A
          12FF784912FF796058FF858385FF858385FF8A898AFFA3A0A0E3000000000000
          000000000000070707106D6C6CFF646365FF646365FF646365FF744D32FF7C4A
          11FF814F14FF825015FF825015FF825015FF845218FF845218FF845218FF8452
          18FF845218FF845218FF845218FF845218FF845218FF845218FF845218FF8452
          17FF7F4D13FF794710FF79491BFF756D6DFF757477FF78777AFF9E9C9DFF5150
          4F600000000000000000323130706A6869FF5E5D5FFF5E5D5FFF685954FF834C
          11FF834C11FF834C11FF844F13FF875214FF895417FF8C581BFF8F5A1DFF8F5A
          1DFF8F5A1DFF8F5A1DFF8F5A1DFF8F5A1DFF8D581BFF8C5719FF895417FF8651
          13FF834C11FF834C11FF834C11FF834C11FF77543FFF656568FF68686AFF7473
          76FFBCBAB8D00000000000000000575654C05B5B5EFF59585BFF59585BFF7D54
          39FF8B5211FF8B5211FF8B5211FF8B5211FF8B5211FF8B5211FF8B5211FF8B52
          11FF8B5211FF8B5211FF8B5211FF8B5211FF8B5211FF8B5211FF8B5211FF8B52
          11FF8B5211FF8B5211FF8B5211FF8B5211FF8B5211FF88521AFF585456FF5857
          5AFF5B5A5DFFC4C2C2FF0D0D0D10000000007E7B7AFF555457FF555457FF5554
          57FF945613FF945613FF945613FF945613FF98623CFF945613FF945613FF9456
          13FF945613FF945613FF945613FF945613FF945613FF945613FF945613FF9456
          13FF945613FF945613FF945613FF965E31FF945613FF945613FF945613FF5C4F
          4AFF4C4B4EFF4C4B4EFF929193FF3E3D3D5017171630898786FF545457FF504F
          53FF595151FF9C5B11FF9D5C17FFD2B7AEFFE3E2E1FFD9D8D7FFCBC7C6FFB290
          83FF9C5B11FFE4D9D5FFD2B8AFFFB88976FFE1E0DFFFC8AEA5FFBB9282FFC9C7
          C6FFAD7E69FF9C5B11FFC59D8DFFE3DFDEFFDAD9D8FFD1CFCEFFBFA59EFF9C5B
          11FF655046FF47474AFF47474AFF737276FF5D5C5C8021202040979493FF9794
          94FF565558FF564E4EFFA25E12FFC9A192FFEBEAE9FFD1B5ACFFB17D64FFD8D1
          CFFFCDC9C8FFA46635FFE3DAD7FFD5BAB0FFCFB0A7FFE4E3E2FFD7CDCAFFC298
          88FFD3D2D1FFB2816AFFC69B8AFFEDECEBFFCCAEA4FFB58571FFCAB4AEFFCFCD
          CDFFBB8C7AFF77543EFF444346FF48484BFF999798FF5857578024232340A09E
          9DFFB3B1AFFFB3B1AFFF83716AFFA35F12FFB37F65FFB88975FFA86730FFCFA8
          9AFFE0DDDCFFD6D4D2FFA76A3FFFDDD4D0FFD4B9B0FFDCD0CCFFE1DEDDFFDFDC
          DBFFC5A194FFD9D7D6FFB48068FFD9C8C2FFDDD2CEFFA76732FFA35F12FFAF77
          59FFBC9A8FFFAB7352FF75533CFF646366FFAAA8A7FFB2AFAEFF535252802626
          2640AAA9A8FFBBB8B7FFBBB8B7FFB7A6A0FFA35F12FFA35F12FFD0B0A5FFE1E0
          DFFFDEDDDCFFDDDBDAFFCDBBB6FFA35F12FFD6CFCCFFD1B9B2FFDCD9D7FFCEB8
          B0FFDDDCDBFFD5C8C3FFD9D8D7FFB58066FFD5CDCAFFD5C6C1FFA35F12FFA35F
          12FFA35F12FFA35F12FFA35F12FFA87B62FFBBB8B7FFBBB8B7FFB2B0AFFF4F4D
          4D8029282840B4B2B2FFC3C0BFFFC3C0BFFFBFB1AAFFA35F12FFB17B5EFFD0CE
          CDFFD0CCCBFFCAB4ACFFB07D64FFA35F12FFA35F12FFCBC5C3FFD2CBC9FFD5D3
          D2FFB58168FFD2CBC9FFD5D1D0FFD6D5D4FFB57F64FFC6BEBBFFCCC4C1FFA561
          1CFFA35F12FFA66528FFA96A3BFFA35F12FFB28B77FFC3C0BFFFC3C0BFFFB2B0
          AFFF4A4949800B0B0B10BFBDBCFFCAC8C8FFCAC8C8FFC9C4C2FFA35F12FFB390
          83FFC0BEBDFFCCABA0FFB17858FFCECCCBFFCBC1BDFFA35F12FFBFBBB9FFC4C1
          C0FFCCC8C6FFA35F12FFC6B6B1FFCFCDCDFFD0CECDFFB57E63FFB8A29BFFBFBC
          BBFFBEA297FFAA6E48FFC2AEA8FFCCCAC9FFBD927FFFBC9D90FFCAC8C8FFCAC8
          C8FFA9A7A7FF3D3C3B7000000000B1B0AFE0D2D0D0FFD2D0D0FFD2D0D0FFAA6E
          40FFA66F4FFFB1ABA9FFB2AFADFFB6B3B2FFBAB6B4FFB68E7EFFA35F12FFB1AE
          ACFFB5B2B0FFC3B1ABFFA35F12FFBB9B8FFFC4C1C0FFC7C5C3FFB57D61FFA66B
          44FFB5A7A1FFB0ADABFFB5B2B0FFB9B6B4FFC1B1ACFFA35F12FFCCC2BFFFD2D0
          D0FFD2D0D0FF9E9C9BFF1A19193000000000888685A0DFDEDDFFDBD9D9FFDBD9
          D9FFC3A092FFA35F12FFA56737FFA87964FFA97A65FFA46327FFA35F12FFA35F
          12FFA66F4FFFA66F4FFFA56839FFA35F12FFA5652AFFAA7559FFAB775AFFA561
          1CFFA35F12FFA35F12FFA56737FFA97F6DFFA56839FFA35F12FFAE744FFFDBD9
          D9FFDBD9D9FFDBD9D9FF828080F1000000000000000049484850DFDDDBFFE4E3
          E2FFE4E3E2FFDFD7D5FFA96935FFA35F12FFA35F12FFA35F12FFA35F12FFA35F
          12FFA35F12FFA35F12FFA35F12FFA35F12FFA35F12FFA35F12FFA35F12FFA35F
          12FFA35F12FFA35F12FFA35F12FFA35F12FFA35F12FFA35F12FFA35F12FFD1B7
          AEFFE4E3E2FFE4E3E2FFC2BFC0FF5C5A5AA0000000000000000000000000B5B4
          B3E0EBEAEAFFEEEDEDFFEEEDEDFFD2B1A7FFA35F12FFA35F12FFA35F12FFA35F
          12FFA35F12FFA35F12FFA35F12FFA35F12FFA35F12FFA35F12FFA35F12FFA35F
          12FFA35F12FFA35F12FFA35F12FFA35F12FFA35F12FFA35F12FFA35F12FFB57E
          60FFEEEDEDFFEEEDEDFFEEEDEDFFA6A3A3FF1E1E1D3000000000000000000000
          000049484860CBCACBFFF8F8F7FFF8F8F7FFF8F8F7FFC1907AFFA35F12FFA35F
          12FFA35F12FFA45F12FFA56116FFA66317FFA76319FFA76319FFA76319FFA763
          19FFA76319FFA76319FFA66317FFA56115FFA35F12FFA35F12FFA35F12FFAF71
          46FFF1E9E6FFF8F8F7FFF8F8F7FFD8D7D7FF6D6C6BB000000000000000000000
          00000000000000000000807E7FC0E3E2E2FFFFFFFFFFFFFFFFFFFFFFFFFFBE89
          70FFA35F12FFA56115FFA8651AFFA96619FFA96619FFA96619FFA96619FFA966
          19FFA96619FFA96619FFA96619FFA96619FFA96619FFA8651AFFA46013FFB072
          47FFF7F0EEFFFFFFFFFFFFFFFFFFF7F6F6FF9F9E9DF216151520000000000000
          000000000000000000000000000014141420939292F1F6F5F6FFFFFFFFFFFFFF
          FFFFFFFFFFFFD0A696FFAD6D2EFFAA6817FFAA6817FFAA6817FFAA6817FFAA68
          17FFAA6817FFAA6817FFAA6817FFAA6817FFAA6817FFAA6817FFAC6A16FFBD87
          6CFFF7F0EEFFFFFFFFFFFFFFFFFFFFFFFFFFBCBABBFF403F3F60000000000000
          0000000000000000000000000000000000000000000023232240959393FFF5F4
          F5FFFFFFFFFFFFFFFFFFFFFFFFFFF0E2DEFFC3917AFFAC6A16FFAC6A16FFAC6A
          16FFAC6A16FFAC6A16FFAE6D13FFAE6D13FFAE6D13FFAE6D13FFBC8567FFE3C9
          C2FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFBBBABBFF6A6969A0000000000000
          0000000000000000000000000000000000000000000000000000000000002726
          2550807E7EF3DFDEDFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF9F4F2FFE1C5
          BDFFDAB8ACFFCC9F8CFFCC9F8CFFCC9F8CFFD2A99AFFDDBEB4FFF4E9E6FFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFF6F6F7FFBAB8BAFF696868A0000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          000000000000171716307A7979E2C6C5C6FFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFDBD9DAFFA8A6A7FF3F3E3E60000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          00000000000000000000000000000909091056565590AEADAEFFDFDEDDFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFE4E3E3FFAEADAEFF727070C015151520000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000161616206C6B
          6A90C3C2C2F1EAE8E6FFF5F5F4FFF5F5F4FFF8F8F8FFFFFFFFFFFAFAFBFFE6E5
          E5FFDBD9DAFFBBBABBFF959394FF5F5D5CB02625254000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          000000000000000000002C2B2B305F5E5E707F7E7EA08F8E8EC0878586C07E7D
          7CC06D6B6BB04A4949802C2B2A50090808100000000000000000000000000000
          000000000000000000000000000000000000000000000000000000000000}
        SpeedButtonOptions.Transparent = True
        TabOrder = 21
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -20
        Font.Name = 'HelveticaNeue'
        Font.Style = [fsBold]
        ParentFont = False
        OnClick = bt_SMCClick
      end
      object edCODIGO: TEdit
        Left = 17
        Top = 28
        Width = 54
        Height = 31
        Hint = 'C'#243'digo do Cliente'
        Enabled = False
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -19
        Font.Name = 'Tahoma'
        Font.Style = []
        ParentFont = False
        ReadOnly = True
        TabOrder = 0
      end
      object gpData: TGroupBox
        Left = 244
        Top = 3
        Width = 306
        Height = 62
        Caption = '  Datas '
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -15
        Font.Name = 'Tahoma'
        Font.Style = [fsBold]
        ParentFont = False
        TabOrder = 2
        object Label14: TLabel
          Left = 4
          Top = 15
          Width = 56
          Height = 16
          Caption = 'Cadastro:'
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Tahoma'
          Font.Style = []
          ParentFont = False
        end
        object lbInativo: TLabel
          Left = 189
          Top = 15
          Width = 43
          Height = 16
          Caption = 'Inativo:'
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Tahoma'
          Font.Style = []
          ParentFont = False
        end
        object Label27: TLabel
          Left = 259
          Top = 12
          Width = 42
          Height = 13
          Caption = 'Detalhes'
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = []
          ParentFont = False
        end
        object Label16: TLabel
          Left = 82
          Top = 15
          Width = 55
          Height = 16
          Caption = 'Empresa:'
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Tahoma'
          Font.Style = []
          ParentFont = False
        end
        object btDetalhesBloqueio: TcxButton
          Left = 261
          Top = 29
          Width = 34
          Height = 28
          Hint = 'Detalhes do bloqueio'
          LookAndFeel.Kind = lfOffice11
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
          ParentShowHint = False
          ShowHint = True
          TabOrder = 0
          TabStop = False
          OnClick = btDetalhesBloqueioClick
        end
        object edDATA_CADASTRO: TMaskEdit
          Left = 3
          Top = 31
          Width = 73
          Height = 26
          Hint = 'Data de Cadastro'
          TabStop = False
          Color = clSilver
          EditMask = '!99/99/00;1;_'
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Height = -15
          Font.Name = 'Tahoma'
          Font.Style = []
          MaxLength = 8
          ParentFont = False
          ReadOnly = True
          TabOrder = 1
          Text = '  /  /  '
        end
        object edDTBLOQUEIO: TMaskEdit
          Left = 181
          Top = 31
          Width = 74
          Height = 26
          Hint = 'Data em que ficou inativo'
          TabStop = False
          Color = clSilver
          EditMask = '!99/99/00;1;_'
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Height = -15
          Font.Name = 'Tahoma'
          Font.Style = []
          MaxLength = 8
          ParentFont = False
          ReadOnly = True
          TabOrder = 2
          Text = '  /  /  '
        end
        object edCLI_EMP_CODIGO: TMaskEdit
          Tag = 3
          Left = 80
          Top = 31
          Width = 100
          Height = 26
          TabStop = False
          Color = clSilver
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Height = -15
          Font.Name = 'Tahoma'
          Font.Style = []
          ParentFont = False
          ReadOnly = True
          TabOrder = 3
          Text = ''
        end
      end
      object cbSituacaoCadastral: TcxComboBox
        Left = 553
        Top = 35
        Hint = 'Situa'#231#227'o Cadastral'
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
        Properties.CharCase = ecUpperCase
        Properties.DropDownListStyle = lsFixedList
        Properties.ImmediateDropDownWhenActivated = True
        Properties.Items.Strings = (
          'Ativo'
          'Bloqueado'
          'Inativo')
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
        Width = 109
      end
      object cbHistoricoBloqueios: TcxButton
        Left = 665
        Top = 32
        Width = 29
        Height = 22
        Hint = 'Hist'#243'rico de Bloqueios'
        LookAndFeel.Kind = lfOffice11
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
        ParentShowHint = False
        ShowHint = True
        TabOrder = 18
        OnClick = cbHistoricoBloqueiosClick
      end
      object bt_Compra: TcxButton
        Tag = 3
        Left = 797
        Top = 394
        Width = 131
        Height = 46
        Caption = 'Compra'
        LookAndFeel.NativeStyle = False
        LookAndFeel.SkinName = 'Metropolis'
        OptionsImage.Glyph.Data = {
          36100000424D3610000000000000360000002800000020000000200000000100
          2000000000000010000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          00000000000000000002000000070000000B0000000900000005000000010000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000030000000C0000001F0000002E0000002900000016000000070000
          0001000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000001000000010000
          00020000000A000000230C0907664D3E2DEE34291EC00101013C000000150000
          0004000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000200000006000000090000
          000B000000180B09065B52402FF5A79B8DFF958879FF251D16A7000000290000
          0009000000010000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000020000000A00000019000000270000
          0029000000301C161090584633FFB4A99DFFD6CEC4FF5B4D3FEE000000390000
          000D000000020000000000000001000000010000000100000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000001000000070000001B0B0906574E3E2DEC3429
          1EBC0101015A0F0C098D584633FF7A6B5AFFD3CBC1FF716150FD0000003B0000
          000E0000000200000002000000070000000B0000000900000005000000010000
          0000000000000000000000000000000000000000000000000000000000000000
          00000000000000000000000000020000000E0B09074A51412FF3A79B8DFF9588
          79FF29241DCB282828E636322DF9544332FF5B4936FE31281DC2000000320000
          000D000000050000000C0000001F0000002E0000002900000016000000070000
          0001000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000004000000151C16107B584633FF978F86FF615F
          5DFF515151FF858485FF4B4B4BFF353434FE302B24E80000006C000000340000
          001600000010000000250B0906674D3E2DEE34291EC00101013C000000150000
          0004000000000000000000000000000000000000000000000000000000000000
          00000000000000000001000000070000001C1E1C198B4B4742FF585858FF8384
          84FF999999FFA6A6A6FF5B5B5CFF484848FF3E3E3EFF242424E4070707740000
          00370000002C0B09066151412FF6A79B8DFF958879FF251D16A7000000290000
          0009000000010000000000000000000000000000000000000000000000000000
          000000000000000000020000000B0E0E0E4B5A5A5AFF868686FF9B9B9BFF9797
          97FF838283FFB3B3B3FF606060FF4D4D4DFF4D4D4DFF4B4C4BFF333333FD1616
          16B7010101611C16109F584633FFB4A99DFFD6CEC4FF5B4D3FEE000000390000
          000D000000020000000000000000000000000000000000000000000000000000
          000000000000000000030000000E2828288E737373FF9D9D9DFF919191FF9898
          98FF767677FFC1C1C1FF686868FF505050FF535353FF555556FF4C4D4DFF4141
          41FF252525EF161311C0584633FF7A6B5AFFD3CBC1FF716150FD0000003B0000
          000E000000020000000000000000000000000000000000000000000000000000
          0000000000000000000400000010424242CC8D8D8DFFA1A1A1FF7F7E7FFF9C9B
          9CFF7B7B7BFFD0CFCFFF6E6E6EFF565656FF5B5B5BFF595959FF4C4C4CFF5354
          54FF4E4E4DFF353434FF332D27F8554432FF5B4936FE32271DC00000002D0000
          000A000000010000000000000000000000000000000000000000000000000000
          00000000000100000004070707205E5E5EFCA2A3A2FF9C9C9CFF868686FF9091
          91FF878687FFDBDBDBFF767676FF6C6C6CFF626262FF5D5D5DFF515051FF5B5B
          5BFF4D4C4CFF555454FF444444FF2D2C2BFD2E2820E1000000570000001F0000
          0006000000000000000000000000000000000000000000000000000000000000
          0000000000010000000422222263777777FFA8A8A7FF919192FF939393FF9D9D
          9DFFA4A5A5FFE7E7E7FF7D7D7DFF797979FF707070FF696969FF5B5B5BFF6060
          61FF4D4C4DFF595959FF525152FF525352FF313131FF070707730000001E0000
          0006000000000000000000000000000000000000000000000000000000000000
          00000000000000000003414141A9919090FFACABACFF818181FFA8A9A9FFB2B2
          B2FFB4B4B4FFF4F4F4FFB2B2B2FF818181FF7B7B7AFF767776FF666666FF6464
          63FF575756FF616161FF4B4B4BFF5D5D5DFF414141FF141414AC000000280000
          0009000000010000000000000000000000000000000000000000000000000000
          00000000000001010103616161EDA9AAAAFFB1B1B0FFB2B2B2FFB4B4B5FFDFDF
          DFFFC4C4C4FF7E7D7EFFAEADAEFFC2C2C2FF9E9F9FFF7D7E7EFF7A7A79FF7575
          75FF616262FF616060FF565656FF5C5D5CFF545353FF222222DD000000330000
          000E000000020000000000000000000000000000000000000000000000000000
          0000000000001A1A1A3C7B7B7AFFB2B2B2FFB7B8B7FFEAEAEAFFAFAFAFFF8888
          88FF838484FF646464FF8F8F90FF5A5959FFBCBCBCFFBCBCBCFF838383FF7C7B
          7CFF727273FF6D6D6DFF626362FF5C5C5CFF646464FF323232FD0303034D0000
          0015000000040000000000000000000000000000000000000000000000000000
          0000000000003B3B3B87979797FFECECECFFCACACAFF929291FF717171FF7E7E
          7FFF7B7B7BFF707071FF868686FF616262FF929191FF605F60FFDBDBDBFFACAC
          ACFF808080FF7A7A7AFF727272FF595958FF6C6C6CFF454545FF1111118B0000
          001D000000070000000100000000000000000000000000000000000000000000
          000019191936828282E8BFBEBEFF9E9F9FFF949595FF919091FF7E7E7EFF8888
          88FF737373FF7D7E7EFF7D7D7DFF6F6F6FFF888888FF616161FFD4D4D4FFCDCD
          CDFFE3E3E3FF8F8F8FFF7C7C7DFF787878FF737374FF5A5A5AFF202020C30000
          00270000000A0000000100000000000000000000000000000000000000000000
          0000191919364A4A4AA2737373F9878787FF989898FF999998FF959494FF9191
          90FF7E7E7EFF888888FF757575FF7D7C7CFF7F7F7FFF6E6E6EFFDDDDDDFFC6C6
          C6FFE5E5E5FFBFBFBFFFD2D2D2FF848484FF7A7A7AFF727272FF333333F30101
          01300000000E0000000200000000000000000000000000000000000000000000
          000000000000000000000A0A0A153737377B666666E77F7F7FFF919191FF9998
          99FF959595FF909191FF7E7E7EFF888888FF767676FF7B7B7AFFE6E6E6FFC2C2
          C2FFEEEEEEFFD8D8D8FFF4F4F4FFEFEFEFFFB3B2B2FF7C7C7CFF474747FF0D0D
          0D64000000130000000400000000000000000000000000000000000000000000
          000000000000000000000000000000000000010101032929295D565656C97676
          76FF898989FF989797FF959495FF919191FF807F80FF888788FFEFEFEFFFDADA
          DAFFF6F6F6FFFAFAFAFFFCFCFCFFFEFEFEFFDDDDDDFF949494FB575757FF1E1E
          1EB7000000130000000400000001000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000001717
          1736444444A26A6A6AF9808080FF949494FF959595FF919191FFF8F8F8FFFAFA
          FAFFFCFCFCFFE1E1E1FFA4A4A4FF656565FF3A3A3ADB21212192141414AD2424
          24D70000000D0000000300000001000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          000000000000090909153232327B5C5C5CE7767676FF8C8C8CFFE2E2E2FFAAAA
          AAFF6F6F6FFF454545D8272727860C0C0C340000000E0000000C020202280C0C
          0CE2000000080000000100000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000010101032424245A4D4D4DC9515151F52F2F
          2FA30D0D0D2C0000000600000005000000040000000300000002000000021414
          14D20606063D0000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000070707780909
          0996000000010000000100000001000000010000000000000000000000001212
          127E11112CA30000112500000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          00000000000000000000000000000000000000000000000000000303031E1616
          16E100000003000000000000000000000000000000000202233C00004D900101
          73E900007AFF0606418700000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000001E1E
          1ED20909093C000000000202283C00005B9000008AE4000093FF0C0C90FF2A2A
          97FF3D3D89DB2323426600000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000002424
          419C0B0B6DCB00009CE40000AAFF0C0CA8FF2A2AADFF3D3D9ADB2D2D5D841010
          2130000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          00000000000000000000000000000000000000000000000000000A0A181E5757
          CAFF1F1FB8FF2A2ABBFF3D3DA7DB2D2D65840E0E202A00000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000003838
          83A52424546A0909151B00000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000}
        SpeedButtonOptions.Transparent = True
        TabOrder = 14
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'HelveticaNeue'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object bt_Complemento_Financeiro: TcxButton
        Tag = 3
        Left = 1088
        Top = 393
        Width = 131
        Height = 46
        Caption = 'Compemento'#13'Financeiro'
        LookAndFeel.NativeStyle = False
        LookAndFeel.SkinName = 'Metropolis'
        OptionsImage.Glyph.Data = {
          36100000424D3610000000000000360000002800000020000000200000000100
          2000000000000010000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000010000000100000001000000010000000100000001000000010000
          0001000000010000000100000001000000010000000100000001000000010000
          0001000000010000000100000001000000010000000100000001000000010000
          0001000000010000000100000001000000010000000000000000000000010000
          0002000000040000000600000007000000070000000700000007000000070000
          0007000000070000000700000007000000070000000700000007000000080000
          0008000000080000000800000008000000080000000800000008000000080000
          0008000000080000000800000007000000050000000200000001000000020000
          000700000010000000180000001B0000001C0000001C0000001C0000001C0000
          001C0000001C0000001D0000001D0000001D0000001D0000001D0000001D0000
          001D0000001D0000001E0000001E0000001E0000001E0000001E0000001E0000
          001E0000001F0000001E0000001B000000130000000900000002000000040000
          0010755346C1A37462FFA27361FFA27261FFA37260FFA2725FFFA1715FFFA071
          5FFFA1705EFFA0705DFFA0705DFF9E6E5DFF9E6E5DFF9E6D5CFF9D6D5BFF9D6D
          5BFF9D6C5AFF9C6C5AFF9C6B5AFF9B6B59FF9B6A59FF9B6A59FF9A6A58FF9A69
          58FF9A6957FF996857FF996856FF6D4A3EC30000001300000005000000060000
          0016A87A68FFFBF8F5FFFAF6F4FFFAF6F3FFFAF5F3FFF9F6F3FFF9F6F3FFFAF5
          F3FFF9F5F2FFF9F5F3FFF9F5F2FFF9F5F3FFF9F5F2FFF9F5F2FFF9F5F2FFF9F5
          F2FFF9F5F2FFF9F5F2FFF9F5F2FFF9F5F2FFF9F5F2FFF9F5F2FFF9F5F2FFF9F5
          F2FFF9F5F2FFF9F5F1FFFAF5F4FFA57663FF0000001A00000007000000060000
          0018A87A68FFFBF8F7FFF5EEE9FFF5EEE9FFF5EEE9FFF5EEE9FFF5EDE9FFF5EC
          E9FFF4EDE7FFF4EDE8FFF4ECE7FFF4ECE6FFF4ECE7FFF5ECE6FFF4ECE7FFF4EC
          E7FFF4ECE7FFF4ECE6FFF4ECE6FFF4EBE6FFF4EBE5FFF4EBE6FFF4ECE5FFF3EB
          E6FFF4EBE6FFF4EBE5FFFAF6F4FFA57663FF0000001C00000007000000060000
          0018A87A68FFFBF9F7FFF6EFEAFFF6EFEAFFF5EFEAFFF5EFE9FFF5EEE9FFF5EE
          E9FFF5EEE9FFF5EEE9FFF4EEE9FFF5EDE9FFF4EDE8FFF4EDE8FFF4ECE8FFF4EC
          E7FFF5ECE7FFF5ECE7FFF4ECE6FFF4ECE6FFF4ECE6FFF4ECE6FFF4ECE6FFF4EC
          E6FFF4EBE6FFF4EBE5FFFAF7F4FFA57663FF0000001C00000007000000060000
          0016A97B6AFFFCF9F8FFF7F0EBFFF8F3F0FFF7EFEAFFF6EFEAFFF6EEEAFFF6EF
          EAFFF6EEEAFFF5EEEAFFF5EEE9FFF5EEE9FFF5EEE9FFF5EEE9FFF5EEE8FFF5EE
          E8FFF5EDE8FFF4EDE9FFF5ECE8FFF4ECE7FFF4ECE6FFF5ECE6FFF4ECE7FFF4EC
          E7FFF4ECE6FFF4EBE6FFFAF7F4FFA67664FF0000001B00000007000000050000
          0015AB7D6BFFFCFAF8FFF7F0ECFFE3DDE9FFF8F4F1FFF7EFEBFFF6EFECFFF6EF
          EBFFF9F3F0FFF7EFEAFFF6EFEAFFF6EFEAFFF6EFE9FFF6EFE9FFF6EEE9FFF5EE
          EAFFF5EEE9FFF5EEE9FFF5EEE8FFF5EDE8FFF5EEE8FFF4EDE8FFF5EDE8FFF4EC
          E8FFF4ECE7FFF4ECE6FFFAF7F6FFA77765FF0000001A00000007000000050000
          0015AB7E6DFFFCFAF9FFF8F2EDFF3940CDFFE3E0E9FFF9F5F1FFF7F0EDFFF8F4
          F1FFEDE7EAFFF8F4F1FFF7EFEBFFF7EFECFFF7EFEBFFF6EFEBFFF6EFEAFFF6EF
          EAFFF6EEEAFFF6EEE9FFF6EEE9FFF6EEE9FFF5EEE9FFF4EEE8FFF5EDE9FFF5EE
          E8FFF5EDE8FFF5EEE8FFFAF8F6FFA77867FF0000001900000006000000050000
          0014AC806FFFFCFBFAFFF7F1EFFF4B54D8FF3A43CEFFE5E0EAFFFAF5F2FFE3E0
          E9FF373ECCFFE3DFE9FFF9F5F2FFF6F1ECFFF6F0EBFFF7F0ECFFF7EFECFFF6EF
          EBFFF6EFECFFF7EFEBFFF6EFEBFFF7EFEAFFF6EEEAFFF6EFE9FFF6EFE9FFF6EF
          E9FFF6EEE9FFF5EEE8FFFBF8F6FFA97A69FF0000001800000006000000050000
          0013AE8271FFFDFBFAFFF7F2EFFFE7E2EDFF4C55D9FF3C44CEFFC4C2E6FF3C43
          CDFF4B52D7FF3B42CDFFE3E0EAFFF9F5F1FFF7F1ECFFF7F1ECFFF7F1ECFFF8F5
          F0FFF7F0EBFFF6F0ECFFF7F0ECFFF7EFECFFF6EFEBFFF7EFEBFFF6EFEBFFF7EE
          EAFFF6EEEBFFF6EEEAFFFBF9F7FFAA7B6AFF0000001700000006000000040000
          0012AF8372FFFDFCFAFFF8F3F0FFF8F3F0FFE7E3EDFF4E57D9FF4149D2FF4C56
          D9FFD7D4EAFF4B54D8FF3C44CEFFE5E0EBFFF9F5F2FFF8F1EEFFF9F5F2FFEDE8
          EBFFF9F5F1FFF7F1EDFFF7F0ECFFF7F0ECFFF7F1ECFFF6F1ECFFF7F0ECFFF7F0
          ECFFF6EFEBFFF6EEEBFFFCF9F8FFAA7D6CFF0000001600000006000000040000
          0011B18575FFFDFCFBFFF9F4F1FFF9F4F1FFF9F4F0FFE8E4EEFF4F58DAFFE7E4
          EDFFF8F3EFFFE7E3EDFF4C56D9FF3D45CEFFE4E0EBFFFAF5F3FFE5E0EBFF3A42
          CDFFE4DFEAFFFAF5F2FFF7F2EEFFF7F1EDFFF7F2EDFFF7F1ECFFF7F0ECFFF6F1
          ECFFF6F0ECFFF6F1EBFFFCFAF9FFAC7F6DFF0000001500000005000000040000
          0010B28777FFFDFCFCFFF9F5F2FFFAF5F2FFFAF5F1FFF9F5F2FFF0EDF0FFF9F5
          F1FFF9F4F1FFF9F4F0FFE8E4EEFF4E57DAFF3D45D0FFC4C3E6FF3D44CEFF4C54
          D7FF3D43CDFFE4E0EBFFF9F5F2FFF7F1EEFFF7F2EEFFF8F1EEFFF7F1EDFFF7F1
          EEFFF9F5F2FFF7F0EDFFFDFAF9FFAD806FFF0000001400000005000000040000
          000FB48978FFFEFDFCFFFAF5F3FFFAF6F3FFFAF5F3FFF9F5F3FFFAF5F2FFFAF5
          F2FFF9F4F2FFF9F4F2FFF9F5F1FFE8E5EFFF5058DBFF434BD3FF4F57D9FFD8D6
          ECFF4D57DAFF3D45CEFFE5E1ECFFFAF6F3FFF8F3EEFFF7F2EFFFF7F2EFFFF9F5
          F3FFE3E0EAFFF7F2EEFFFDFBFAFFAF8272FF0000001300000005000000030000
          000EB58B7AFFFEFDFCFFFBF6F4FFFBF6F4FFFAF5F3FFFAF6F3FFFAF6F3FFFAF5
          F3FFFAF6F2FFFAF5F3FFFAF5F2FFFAF5F2FFE8E5F0FF525BDBFFE9E5EFFFFAF5
          F2FFE8E4EFFF4F57D9FF3E46D0FFE6E1ECFFFBF6F4FFF9F3F0FFFAF7F3FFE5E1
          ECFF3C44CDFFF8F3EEFFFDFBFAFFB08373FF0000001200000005000000030000
          000DB68D7CFFFEFDFDFFFBF7F5FFFBF7F4FFFAF7F4FFFAF7F4FFFAF6F4FFFAF6
          F3FFFAF6F4FFFAF6F3FFFAF5F3FFFAF5F3FFF9F5F2FFF1EDF2FFFAF5F2FFFAF5
          F2FFFAF4F2FFE9E5F0FF515ADBFF3F47D1FFE6E3EEFFFBF7F5FFE6E2EEFF3D45
          CEFF4C56D9FFF9F4F0FFFDFCFBFFB18675FF0000001100000004000000030000
          000CB88F7EFFFEFDFDFFFBF8F6FFFBF8F6FFFBF8F6FFFBF7F5FFFBF7F5FFFBF7
          F5FFFAF7F5FFFBF7F4FFFAF6F4FFFBF6F4FFFAF6F4FFFAF6F4FFFAF6F3FFFAF5
          F3FFFAF6F3FFFAF6F2FFE9E5F0FF525BDCFF414AD2FFC6C5E9FF4149D2FF5058
          DAFFE8E4EFFFF9F4F1FFFEFCFCFFB28777FF0000001000000004000000030000
          000BB99080FFFEFEFEFFFBF9F7FFFBF9F7FFFCF8F6FFFBF8F6FFFBF8F6FFFBF8
          F6FFFAF8F5FFFBF8F6FFFAF7F5FFFBF7F5FFFAF7F5FFFAF7F5FFFAF7F4FFFAF6
          F4FFFAF6F4FFFAF6F4FFFAF6F3FFE9E7F1FF545DDCFF464FD5FF525CDBFFE8E5
          F0FFFAF5F2FFF9F5F2FFFEFDFCFFB48979FF0000000F00000004000000030000
          000ABB9383FFFEFEFEFFFBF9F8FFFCF9F8FFFBF9F7FFFBF9F7FFFBF9F7FFFBF9
          F7FFFBF9F6FFFBF8F7FFFBF8F6FFFBF8F6FFFBF8F5FFFAF7F6FFFBF8F5FFFBF7
          F5FFFAF7F5FFFAF7F5FFFAF7F4FFFAF7F4FFE9E8F2FF555FDDFFE9E7F2FFF9F6
          F3FFFAF6F3FFF9F6F3FFFEFDFCFFB58B7BFF0000000E00000004000000020000
          000ABC9484FFFFFEFEFFFCFAF9FFFCFAF8FFFCFAF8FFFCF9F8FFFCF9F8FFFBF9
          F7FFFBF9F7FFFBF9F7FFFBF9F7FFFCF8F7FFFBF8F6FFFBF8F6FFFBF8F6FFFBF8
          F6FFFBF8F6FFFBF8F6FFFAF8F5FFFAF7F6FFFBF8F5FFF2EFF4FFFAF7F4FFFBF7
          F5FFFAF7F4FFFAF7F4FFFEFDFDFFB78D7DFF0000000D00000003000000020000
          0009BD9686FFFEFEFEFFFCFBF9FFFDFAF8FFFCFAF9FFFCFAF8FFFCFAF8FFFCFA
          F8FFFCFAF8FFFCF9F7FFFBF9F8FFFBF9F7FFFCF9F8FFFCF9F7FFFBF9F7FFFCF9
          F6FFFBF9F7FFFBF9F7FFFBF8F6FFFBF8F6FFFBF8F6FFFAF8F5FFFBF8F6FFFBF8
          F5FFFBF7F5FFFAF7F5FFFEFDFDFFB88F7FFF0000000D00000003000000020000
          0008BF9788FFFFFEFEFFFDFBFAFFFDFBF9FFFCFBFAFFFCFBF9FFFCFBF9FFFCFB
          F9FFFCFBF8FFFCFAF9FFFCFAF8FFFCFAF8FFFCFAF8FFFBF9F7FFFBF9F7FFFCF9
          F7FFFBF9F8FFFCF9F7FFFCF9F7FFFCF9F7FFFBF8F6FFFBF9F6FFFBF9F6FFFBF8
          F6FFFBF8F6FFFBF8F6FFFEFEFDFFB99180FF0000000C00000003000000020000
          0007C09989FFFFFFFFFFFDFBFAFFFDFBFAFFFDFBFAFFFDFBFAFFFDFBF9FFFCFB
          FAFFFCFBF9FFFCFBF9FFFCFBF9FFFCFBF8FFFCFBF8FFFCFAF8FFFCFAF8FFFCFA
          F8FFFCFAF8FFFCF9F8FFFCFAF8FFFCF9F7FFFBF9F7FFFBF9F7FFFBF9F7FFFBF8
          F7FFFBF9F6FFFBF8F6FFFEFEFDFFBB9383FF0000000B00000003000000010000
          0005C09A8BFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFEFFFFFFFEFFFFFFFEFFFFFF
          FEFFFFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFFFFFEFEFFFFFFFEFFFEFE
          FEFFFEFEFEFFFEFEFEFFFEFEFEFFFEFEFEFFFEFEFEFFFEFEFEFFFEFEFEFFFEFE
          FEFFFEFEFEFFFEFEFEFFFEFEFEFFBC9485FF0000000900000002000000010000
          00039A837ABFD0B1A5FFD0B2A5FFD0B1A5FFD0B1A4FFD0B1A4FFD0B1A4FFCFB0
          A4FFD0B0A4FFCFB0A3FFCFB0A3FFCFB0A3FFCFB0A2FFCEB0A2FFCFAFA2FFCEAF
          A2FFCFB0A2FFCEAFA2FFCEAFA2FFCDAFA1FFCEAEA1FFCDAEA1FFCDAEA1FFCDAE
          A1FFCDADA1FFCDADA1FFCDADA1FF988077C00000000600000001000000000000
          0001000000030000000400000005000000050000000500000005000000060000
          0006000000060000000600000006000000060000000600000006000000070000
          0007000000070000000700000007000000070000000700000007000000080000
          0008000000080000000800000007000000050000000200000001000000000000
          0000000000010000000100000001000000010000000100000001000000010000
          0001000000010000000100000001000000010000000100000001000000010000
          0001000000020000000200000002000000020000000200000002000000020000
          0002000000020000000200000002000000010000000100000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000}
        TabOrder = 16
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = [fsBold]
        ParentFont = False
        OnClick = bt_Complemento_FinanceiroClick
      end
      object bt_Financeiro: TcxButton
        Tag = 3
        Left = 943
        Top = 394
        Width = 131
        Height = 46
        Caption = 'Financeiro'
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
        SpeedButtonOptions.Transparent = True
        TabOrder = 15
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'HelveticaNeue'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object bt_Cobranca: TcxButton
        Tag = 3
        Left = 1230
        Top = 394
        Width = 131
        Height = 46
        Caption = 'Cobran'#231'a'
        LookAndFeel.NativeStyle = False
        LookAndFeel.SkinName = 'Metropolis'
        OptionsImage.Glyph.Data = {
          3A110000424D3A11000000000000360000002800000021000000210000000100
          2000000000000411000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          000000000000000000000D2272801944E4FF1944E4FF1944E4FF1944E4FF1944
          E4FF3D6CEBFF1944E4FF80808080404040400000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          00000000000000000000000000000D2272801944E4FF1944E4FF1944E4FF1944
          E4FF1944E4FFE1ECFDFF3060E9FFFFFFFFFF777F858825313B4025313B405572
          8A945C7B95A06789A5B25B79939E232E383C0000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000D2272801944E4FF1944E4FF1944
          E4FF1944E4FF1944E4FF1944E4FF1944E4FFFFFFFFFFAFD3F2FF93C4EDFF93C4
          EDFF93C4EDFF93C4EDFF93C4EDFF93C4EDFF93C4EDFF82AED2E2415668701219
          1E20000000000000000000000000000000000000000000000000000000000000
          000000000000000000000000000000000000000000000D2272801944E4FF1944
          E4FF1944E4FF1944E4FF1944E4FF1944E4FF1944E4FFFFFFFFFFAFD3F2FF93C4
          EDFF93C4EDFF93C4EDFF93C4EDFF93C4EDFF93C4EDFF93C4EDFF93C4EDFF93C4
          EDFF93C4EDFF78A0C1D04156687012191E200000000000000000000000000000
          00000000000000000000000000000000000000000000000000000D2272801944
          E4FF1944E4FF1944E4FF1944E4FF1944E4FF1944E4FF1944E4FFFFFFFFFFAFD3
          F2FF93C4EDFF93C4EDFF92C3ECFF8ABAE4FF8BBCE6FF8DBDE7FF8CBDE7FFA1C9
          EBFFA9CDECFF91C2EBFF93C4EDFF93C4EDFF93C4EDFF7D9DB8C46C81939C0000
          0000000000000000000000000000000000000000000000000000000000000D22
          72801944E4FF1944E4FF1944E4FF1944E4FF1944E4FF1944E4FF1944E4FFC2C3
          C4C492B2CED993C4EDFF93C4EDFF93C4EDFF93C4EDFF93C4EDFF93C4EDFF93C4
          EDFFA5CDEFFFC0DAF1FF202C353B4A62778081ACD0E093C4EDFF8EBAE0F16679
          8992000000000000000000000000000000000000000000000000000000000000
          000003091D200611394006113940061139400611394006113940061139400611
          394000000000090C0F10415668706E93B2BF8AB8DEEF85B3DAEF769FC2D46E93
          B3C460819DAC465C6F7A21262B2E0000000000000000000000001C252D30090C
          0F10000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          00000000000000000000132315502E5434AC34633CE000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          00000B150D30325B3AB2548F5EF868AA74FF76B981FF60A06CFF132315500000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000001323155068AA74FF76B981FF76B981FF76B981FF76B981FF294D
          30A6000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          00000000000000000000000000004F8B5AF776B981FF76B981FF76B981FF76B9
          81FF4B8657F60000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000002E5434AC76B981FF76B981FF5897
          64FF71B47DFF60A06CFF0F1C1140000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000060505102220
          1E60363533820000000000000000000000000000000000000000000000000000
          000000000000000000000000000000000000000000001323155068AA74FF5F9E
          6AFF559260FF5D9D69FF62A36EFF25472B970000000000000000000000000000
          0000000000000000000000000000000000000B0B0A202726247053504FC95956
          51FF595651FF656361E800000000000000000000000000000000000000000000
          000000000000000000000000000000000000000000000000000004070410518E
          5CFF53915EFF6DAF79FF60A06CFF6DAF79FF498253EC00000000000000000000
          000000000000000000000000000000000000606060605E5B59F3CECCCEFF716E
          6DFF595651FF595651FF6B6967EF000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000315A38BA71B47DFF549260FF549260FF76B981FF60A06CFF1C2E2E570F15
          1B201720283000000000374A59606F94B2C06F94B2C0C5CCD1D3969494FF6966
          64FF595651FF595651FF595651FF6B6967EF0000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          000000000000162B1A6068AA74FF76B981FF76B981FF81C09AFF9DCBD2FF7DAF
          CAFA8CBDE7FF8BBCE6FF8BBBE4F893C4EDFF93C4EDFF93C4EDFFBCDAF4FFDAD8
          D8FF595651FF595651FF595651FF595651FF6B6967EF00000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000004070410589764FF76B981FF76B981FFA6CFD9FFB8D6
          F1FF93C4EDFF93C4EDFF93C4EDFF93C4EDFF93C4EDFF93C4EDFF93C4EDFF9AC7
          EEFFFFFFFFFF696664FF595651FF595651FF595651FF6B6967EF000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          00000000000000000000000000000000000035613DBF76B981FF76B981FF7ABB
          8AFF7CB4A6FF5B9487FF6B9EC4FF6FA1CDFF7AACD7FF93C4EDFF93C4EDFF93C4
          EDFF93C4EDFFDEEDF9FF969494FF595651FF595651FF5A5854EE363533820000
          0000000000000000000000000000000000000000000000000000000000000000
          00000000000000000000000000000000000000000000162B1A604A8555FF538F
          68FF5C9390FF76A9C4FC78A9D4FF74A5D1FF6598C5FF78A9D5FF93C4EDFF93C4
          EDFF93C4EDFF8EBDE5F671808E945B5B5B742F2E2C7911100F30000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000040704100B15
          0D301C252D308AB8DFF093C4EDFF8BBAE3F881B2DDFF82B3DDFF93C4EDFF93C4
          EDFF93C4EDFF739CBED200000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          00000000000000000000090C0F107AA2C4D393C4EDFF93C4EDFF91C2EAFC93C4
          EDFF93C4EDFF5F7F99A500000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000025313B405C7B95A093C4
          EDFF93C4EDFF374A596000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000090C0F1012191E2000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          000000000000000000000000000000000000000000000000000000000000}
        SpeedButtonOptions.Transparent = True
        TabOrder = 17
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'HelveticaNeue'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object bt_Dependentes: TcxButton
        Tag = 3
        Left = 944
        Top = 328
        Width = 131
        Height = 46
        Caption = 'Dependentes'
        LookAndFeel.NativeStyle = False
        LookAndFeel.SkinName = 'Metropolis'
        OptionsImage.Glyph.Data = {
          36100000424D3610000000000000360000002800000020000000200000000100
          2000000000000010000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000010000
          0001000000010000000100000001000000010000000100000001000000010000
          0001000000010000000100000001000000010000000100000001000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000001000000020000
          0003000000030000000400000005000000050000000500000006000000060000
          0006000000050000000600000005000000040000000400000003000000020000
          0001000000010000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000010000000300000006000000090000
          000B0000000E0000000F00000011000000120000001400000015000000150000
          0015000000150000001400000013000000120000000F0000000C000000080000
          0005000000020000000100000000000000000000000000000000000000000000
          0000000000000000000000000001000000040000000A01070E26041B356A0526
          4B91063060B5073771D207366FD3073875E0084087FF073E83FF073D82FF063C
          7FFF05326DE1052D63D4052C60D4042351B8021B3D9502132B710004092C0000
          0010000000070000000200000000000000000000000000000000000000000000
          0000000000000000000000000002000000080A3F79C2135CA7FF1767B7FF1B6E
          C0FF1F76CAFF217DD3FF217CD1FF237FD6FF2786E0FF2786DFFF2685DFFF2685
          DFFF217BD1FF1E76CCFF1E74CAFF1A6BBEFF155FAFFF11549FFF0A3F84FF0425
          52B80000000E0000000400000001000000000000000000000000000000000000
          00000000000000000000000000020000000A0F5EADFF51ACEEFF2C91E8FF2C90
          E8FF2B90E7FF2B8FE6FF2B8EE6FF2B8DE5FF2A8DE5FF298CE4FF298BE4FF288A
          E3FF298AE2FF2889E2FF2788E1FF2788E1FF2787E0FF2686E0FF358FDDFF073A
          7AF2000000120000000400000001000000000000000000000000000000000000
          0000000000000000000000000002000000091166B6FF56B2F2FF3096EDFF2F96
          ECFF2F96EBFF2E94EBFF2E94EAFF2E93EAFF2E93E9FF2D91E8FF2C91E8FF2C91
          E8FF2C8FE7FF2B8FE7FF2B8FE6FF2A8EE5FF2A8DE5FF2A8CE4FF3793E0FF083F
          80EB000000120000000500000001000000000000000000000000000000000000
          000000000000000000000000000200000007115EA7E050ADEEFF40A4F2FF48A9
          F2FF4BADF3FF4BABF2FF43A7F1FF389EEFFF2F97EEFF3098EDFF3097EDFF3096
          ECFF2F95ECFF2F95EBFF2E94EBFF2E93EAFF2E93E9FF3296EAFF378FDAFF093C
          77D00000000E0000000300000001000000000000000000000000000000000000
          0000000000000000000000000001000000040930526F3A95DBFF77C5F6FF70C6
          F8FF5EBCF7FF58B8F7FF59B9F6FF5FB9F7FF56B4F5FF4EB0F5FF52B1F3FF4FB0
          F4FF48AAF2FF3BA0F1FF329AEEFF359BF0FF40A5EFFF419FE7FF2173BFFF041E
          3968000000080000000200000001000000000000000000000000000000000000
          000100000005000000080000000B0000000E00000012093154771871BDED459B
          DFFF7AC8F5FF7FCDFBFF68BDF1FF4999D2FF2D78B7FF145DA0FF115A9CFF216D
          AEFF3A8BC8FF56B0ECFF5DB8F7FF45A4EBFF267EC9FF0E579BE60626457B0000
          0019000000120000000E0000000A000000060000000100000000000000030002
          031403172A5D0525459006305CB706396FD628527FDB4D77A2F7517CA9FF3A7B
          B6FF1F7AC8FF3E96D9FF4C99CFFF387DB5FF6AA4CEFF70A1C9FF5482B0FF3D6E
          A4FF1F5D9AFF3984BEFF3185CCFF1E6EB9FF3A76B0FF527EACFF4A75A5F72451
          83DC033770D7012E5CB9012146970113286200010319000000040000000A0C4B
          86E5266DADFF2570B6FF2C79C1FF3281CAFF3280CAFF3988D4FF5399DBFF6FA9
          DFFF76ADDFFF5299D7FF2B85CFFF9AC7E3FF678DAEFF335484FF2D4F80FF3758
          86FF37649CFF257BC6FF5395D2FF75AADCFF6BA5DDFF4E95D8FF3584D0FF2C7C
          C7FF2C7BC7FF2571BDFF1D66B1FF155AA3FF044184F30000000E0000000B0E55
          95F36BB2E6FF489BE0FF469AE0FF4699E0FF4598DFFF4497DEFF4496DDFF4394
          DDFF57A0E0FF75AFE2FF6DA4D6FF2E68A3FF2F5A95FF4574ADFF4271ABFF204B
          88FF235E98FF71A4D4FF75AEE1FF569FDDFF4394DDFF4295DDFF4194DDFF4092
          DCFF4092DBFF3E91DAFF3E8FDAFF4896D9FF054489F6000000110000000A1056
          92E871B7E8FF5AACEAFF64B2EBFF6AB5EBFF6BB5EBFF65B2EAFF5BAAE7FF4FA3
          E5FF4CA0E3FF6DADE3FF6D9AC2FF3F6AA3FF75ADE2FF75AEE2FF7EB3E4FF76AB
          DDFF26518DFF789DBDFF7DBAE6FF5BA9E6FF4FA3E5FF4CA0E3FF4A9EE3FF4A9E
          E2FF499DE1FF489CE1FF499DE2FF4D9ADAFF054481E50000000E000000060D41
          6DAC65ABDAFF9FD6F6FF8CCCF4FF7BC3F2FF79C1F1FF76BEF0FF72BDF0FF6EBA
          EEFF5CAEEBFF82BBE5FF537CABFF5F94CBFF74B2E7FF6DABE3FF69A6DFFF7DB3
          E4FF5182B9FF466996FF94C3E3FF72BDF0FF6EBAEEFF5BAEEBFF53A9E9FF54A8
          E9FF53A8E8FF5AACE9FF62B1EBFF408CCBFF05325DA700000009000000020208
          0D1C1C5880B43F93C8FF7CBCE3FFA5DBF8FF8DD0F6FF66AFE8FF3984D1FF1E6B
          C4FF3D82CEFF79ABD6FF4A73A8FF90C7EEFF93CDF5FF81C0EEFF70ADE4FF74AC
          E2FF76A9DBFF254D87FF83AECFFF4188D2FF1E6BC4FF2F7ACCFF489BE0FF63B7
          F0FF71BDF1FF4E9DD6FF1E6FB2FF084070BC0105091D00000003000000000000
          000200000007081822391B577BAB3A8FC5FC72B4E2FF4E93D4FF75A8D0FF7FA4
          C0FF83A0C2FF5275A6FF5882B6FFA8DCFAFFA5DAFAFF99D2F6FF7DBAEBFF6EAB
          E2FF7FB3E3FF2C5794FF395C8DFF96BBD9FF739ABAFF4C76A9FF2462AEFF4B98
          D7FF1F72B5FD0C416EAE03111E3D0000000A0000000200000000000000000000
          000000000000000000020000000606121A2D236994CD6CA3C7FF53779DFF6580
          A5FF59749DFF133776FF5880B1FFAEDEF7FFB1E2FCFFA9DDFAFF8BC6F1FF72AD
          E3FF75A7D7FF204681FF163A76FF879FB8FF506F98FF3A5A86FF356394FF1256
          8ACC020D152D0000000800000003000000000000000000000000000000000000
          000000000000000000000000000001010105090C0E31336092FC4E7EB6FF8AAF
          D5FF335A94FF265596FF3A6095FFA9D3EBFFAEDBF2FF99C6E3FF78ABD5FF6096
          CAFF5B87B8FF11326FFF0F387CFF5879A9FF7FA7D2FF4476B0FF255286FC090C
          0E36010101060000000000000000000000000000000000000000000000000000
          00000000000000000000000000000303030C212F43855282B8FF77B8EAFFA3CD
          F0FF235093FF3F76B5FF234B89FF8FB5CFFF678DB4FF244983FF133878FF1236
          72FF173771FF0F3D80FF103E85FF39619BFFA0CBEFFF7EB9E9FF4171ABFF1625
          3B8B0404040E0000000000000000000000000000000000000000000000000000
          0000000000000000000000000002060606183C5B85D693BEE2FFA8D7F5FFA7D2
          F2FF1C5097FF5D96D0FF215398FF3F6699FF285DA2FF326BB2FF2D69B2FF235B
          A5FF194C95FF124792FF134791FF214888FFA4D0F2FF7DBBEBFF6AA1D4FF2242
          71D90808081E0101010300000000000000000000000000000000000000000000
          0000000000000000000002020207203456A35179ADFEB7DFF6FFBAE3F8FFC2E3
          F8FF2D65ABFF68A1D5FF4783C1FF295FA1FF5790CFFF74A9DCFF6DA3D6FF548C
          C7FF3671B4FF1E57A2FF174E99FF204B8CFFC0E2F8FF7BBBEBFF83BCEAFF2F58
          93FE192A458A0303030A00000000000000000000000000000000000000000000
          0000000000000000000007122248193E7DFF4B72A8FFBAE0F4FFC1E7FBFFCDEA
          FAFF5A91CBFF5691CCFF7BB3DEFF588BBDFFA3CCEFFFA6CCECFF90BDE3FF71A4
          D5FF538BC5FF3C76B6FF2059A0FF4770A8FFCDEAFAFF7CBDECFF88C1ECFF3B66
          9FFF0F2E69F70409143400000000000000000000000000000000000000000000
          00000000000000000000112C51943B639BFF38619CFFB0D4EAFFB3D9EEFFB1D2
          E9FF8FBBDFFF4380C4FF3B7BC3FF70A7DFFF82B2E0FFA5CAEAFFB7D7EFFF96BE
          E2FF6398CDFF346DAFFF295CA0FFABC9E2FFB5D4EAFF68A6D6FF71A9D7FF3F68
          A1FF0D2D6CFF0617378700000000000000000000000000000000000000000000
          0000000000000000000019406EB46991BFFF295A99FF7FA6CAFF4771A6FF2852
          8FFF5474A3FF647FAAFF5F81B0FF4976B0FF3B70AFF03670B3E92E72BEFF316F
          B6FA4077B9FF4876B0FF9DBAD6FF7E9BC1FF2D5691FF174282FF1A4382FF2249
          86FF173F7DFF0B2350B100000000000000000000000000000000000000000000
          000000000000000000001D4775AE87AED6FF7BA6D1FF3264A4FF5382BAFF5B8E
          C5FF5285C0FF426FAAFF456DA4FF5175A7FF536A8DD452525252525252526682
          A2C8AAC6E2FF9DBDDDFF547EB3FF5885BCFF5B8EC5FF5285C0FF3666A5FF2453
          94FF1D4B8DFF123062C300000000000000000000000000000000000000000000
          000000000000000000001837587873A3D2FFBDDAF1FF72A3D2FFB9D6EEFFAACB
          E8FF87B1DCFF5889C2FF3E72B1FF3366A6FF133460AB00000000000000001837
          587873A3D2FFBDDAF1FF72A3D2FFB9D6EEFFAACBE8FF87B1DCFF5889C2FF3E72
          B1FF3366A6FF133460AB00000000000000000000000000000000000000000000
          00000000000000000000050A10153770A9DA689ED2FF7DADD9FFB0CDE8FFC4DA
          EFFFC0D9EEFF96BADEFF5F92C7FF3166A2F2081320330000000000000000050A
          10153770A9DA689ED2FF7DADD9FFB0CDE8FFC4DAEFFFC0D9EEFF96BADEFF5F92
          C7FF3166A2F20813203300000000000000000000000000000000000000000000
          000000000000000000000000000003080C0F142D4558204971922A6095C3316F
          AEE73478BEFF2C64A1DB1D446D9908121D2A0000000000000000000000000000
          000003080C0F142D4558204971922A6095C3316FAEE73478BEFF2C64A1DB1D44
          6D9908121D2A0000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
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
        TabOrder = 11
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'HelveticaNeue'
        Font.Style = [fsBold]
        ParentFont = False
        OnClick = bt_DependentesClick
      end
      object bt_Conveniados: TcxButton
        Tag = 3
        Left = 797
        Top = 328
        Width = 131
        Height = 46
        Caption = 'Conv'#234'niados'
        LookAndFeel.NativeStyle = False
        LookAndFeel.SkinName = 'metropolis'
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
          0001000000010000000100000001000000010000000100000001000000010000
          0001000000010000000100000001000000010000000100000001000000010000
          0001000000010000000100000001000000010000000100000001000000010000
          0001000000010000000000000000000000000000000000000000000000020000
          0004000000060000000600000006000000060000000600000006000000060000
          0006000000060000000600000006000000070000000700000007000000070000
          0007000000070000000700000007000000070000000700000007000000070000
          0006000000040000000200000001000000000000000000000000000000060000
          000E000000150000001700000018000000180000001800000018000000190000
          001900000019000000190000001900000019000000190000001A0000001A0000
          001A0000001A0000001A0000001A0000001A0000001B0000001B0000001A0000
          001700000010000000070000000200000000000000000000000000000010173B
          7ACD2557A4FF2859A5FF2758A6FF2757A5FF2558A5FF2656A3FF2656A4FF2456
          A4FF2455A4FF2455A3FF2354A2FF2353A2FF2252A2FF2253A2FF2151A1FF2151
          A1FF2051A1FF2050A0FF1F4FA0FF1F4F9FFF1F4E9FFF1E4D9FFF1D4D9EFF1C4B
          9CFF173F8AEE040A143D0000000B000000020000000000000000000000151D50
          9FFF2559A5FF4F95CFFF64BBEDFF47A7E7FF46A5E6FF44A4E6FF42A3E5FF40A2
          E4FF3FA1E4FF3E9FE3FF3C9EE3FF3B9DE2FF3A9CE1FF389BE1FF389AE1FF359A
          E1FF3598E0FF3497E0FF3397DEFF3296E0FF3195DEFF3095DEFF3095DEFF2E90
          DAFF297DCAFF12326BBF00000011000000040000000000000000000000162154
          A3FF3166ADFF3C7BBCFF7ECBF2FF4FADE9FF4BAAE8FF49AAE8FF47A7E6FF45A6
          E6FF43A5E5FF43A3E4FF40A2E5FF40A1E4FF3FA0E4FF3D9FE3FF3B9DE3FF3A9D
          E2FF399CE2FF379BE1FF379AE2FF3599E1FF3398E1FF3298DFFF3197DFFF3096
          DFFF3295DEFF1A4A98F80103051D00000005000000010000000000000014245C
          A9FF447ABAFF2862ACFF8CD1F2FF64BCEEFF52B0EBFF51AFEAFF50AEE9FF4DAD
          E8FF4CAAE7FF4AA9E7FF48A8E7FF47A7E6FF45A5E6FF43A4E6FF42A3E5FF41A1
          E4FF3FA1E4FF3D9FE4FF3C9FE3FF3B9EE3FF3A9DE2FF399CE1FF379AE1FF3699
          E0FF389CE1FF2363B1FF08162E5D000000080000000100000000000000132661
          AFFF548AC4FF2866AEFF7CB9E1FF82CFF3FF59B6EDFF57B5EDFF57B4ECFF54B3
          ECFF53B1EAFF51B0EAFF51AEE8FF4FADE8FF4DABE8FF4EACE8FF4CAAE8FF4BAA
          E7FF47A6E5FF44A6E6FF43A4E5FF41A3E5FF40A2E4FF3FA1E3FF3E9FE2FF3C9F
          E2FF3D9FE3FF2F7AC4FF0F2A56970000000A0000000200000000000000122A67
          B1FF649BCEFF3272B8FF619DCFFF9FDEF8FF5FBAF0FF5EBAEFFF5EB9EEFF5DBA
          EDFF62BBEEFF68BFEFFF6ABEEFFF6CC0EEFF69BDEDFF66BBEDFF63B9EDFF60B9
          ECFF5EB6ECFF5BB4EBFF56B1E9FF51ADE9FF4CA9E8FF47A6E6FF45A5E5FF43A4
          E5FF44A4E4FF4198D9FF164385D80000000D0000000300000001000000112D6C
          B5FF74AAD7FF4287C6FF4083C0FFB5E8FBFF71C6F3FF6FC4F2FF76C8F3FF7ACA
          F4FF7ACAF2FF78C8F3FF77C7F2FF73C6F1FF72C4F1FF70C2F0FF6DC0EFFF6ABF
          EEFF68BDEEFF65BAEEFF62B9ECFF5FB7EBFF5DB6EBFF5AB4EAFF54B0E9FF4EAC
          E7FF49A9E6FF50ADE8FF225EAAFF030A132C0000000400000001000000103071
          B7FF84B9DFFF5399D3FF3A7EBEFFADDCF1FFA5E1F9FF86D1F6FF85D0F6FF83CF
          F6FF82CEF5FF7FCDF3FF7DCBF3FF7CCBF3FF7ACAF2FF79C8F2FF76C6F1FF73C6
          F2FF70C4F0FF6DC2F0FF6CC1EFFF68BDEEFF66BCEDFF63B9ECFF60B8ECFF5EB6
          EBFF59B4EAFF5AB3EAFF357CC1FF0C2344740000000700000002000000103176
          BAFF93C6E7FF61ABDDFF4590CBFF8DC0E0FFC2EDFCFF8BD5F7FF8AD5F7FF89D3
          F6FF87D2F6FF86D1F6FF85D1F5FF83D0F5FF81CFF4FF7FCDF4FF7ECDF3FF7DCB
          F3FF7AC9F2FF77C8F2FF74C6F0FF72C5F0FF70C3F0FF6CC1F0FF6ABFEEFF66BD
          EEFF64BBEDFF66BCEDFF53A0D8FF153F75BA00000009000000020000000F347B
          BDFFA1D3EEFF70BBE6FF5AA8DBFF66A5D2FFD7F6FDFF95DCF9FF90D8F8FF8FD8
          F8FF8DD7F8FF8CD5F8FF8BD5F7FF88D3F6FF88D3F6FF86D1F6FF85D1F4FF82D0
          F4FF81CFF4FF80CEF4FF7DCCF4FF7BCBF3FF78C9F1FF75C7F1FF72C6F1FF70C5
          F1FF6DC1EFFF6CC1EFFF73C1EDFF215DA4F701030614000000030000000E357E
          BFFFAEDFF4FF7ECAEFFF73C2ECFF4C97CDFFCAEBF7FFDEF8FEFFDEF8FEFFDDF8
          FEFFDCF8FEFFDCF8FEFFDBF7FEFFD9F6FEFFD7F5FCFFBDECFBFF8FD7F7FF89D3
          F7FF87D2F6FF85D3F6FF84D1F5FF82D0F5FF80CEF5FF7ECDF4FF7CCBF3FF79CA
          F2FF76C8F2FF73C6F1FF7CCAF1FF3A7EBFFF091C3255000000050000000D3782
          C1FFBBE7F8FF8DD8F5FF84D2F4FF6ABDE7FF51A1D3FF4C99CCFF4B98CCFF4996
          CBFF4995CAFF4693CBFF4591CAFF4490C8FF75B0D8FFD0F0F9FFD0F4FCFF9BDE
          F9FF8DD7F8FF8CD6F7FF8AD4F7FF88D5F7FF87D3F7FF85D2F5FF83D1F5FF80CF
          F5FF7ECDF3FF7BCCF3FF81CEF3FF5CA4D5FF133A659D000000060000000C3985
          C3FFC5F0FCFF97E3FBFF93E1FAFF8DDCFAFF87D9F9FF83D7F9FF7FD5F8FF7CD2
          F8FF79D1F8FF77CEF6FF73CCF6FF6EC9F5FF5BB4E7FF559DD1FFACD6ECFFE0F9
          FEFFDFF9FEFFDEF9FEFFDEF8FEFFDDF7FEFFDDF7FEFFDBF7FEFFDAF6FEFFDAF6
          FEFFD8F5FDFFD6F5FDFFD5F4FDFFBDE2F2FF1D5897E0000000070000000B3B89
          C5FFCDF6FFFFA2ECFEFF9FEAFEFF9CE8FEFF99E7FEFF96E6FDFF93E4FDFF90E2
          FDFF8EDFFCFF8CDDFCFF89DCFCFF84D9FBFF7DD5FAFF6FCAF5FF52A7DAFF4694
          CAFF4592CAFF4492CAFF4290C9FF418FC8FF3F8DC7FF3E8BC7FF3D8AC6FF3B89
          C5FF226BB1FF226AB1FF216AB0FF2064A6F415416DA4000000050000000B3C8C
          C7FFD1F7FFFFA6EFFFFFA4EEFFFFA2ECFFFFA0EBFEFF9EE9FEFF9CE8FEFF99E7
          FEFF97E5FDFF95E3FDFF92E1FDFF8FE0FCFF8ADDFCFF83D9FBFF7DD4FAFF77D1
          F9FF73CFF9FF70CCF9FF6DC9F8FF6AC7F6FF68C5F6FF64C2F5FF62C0F4FF7CCC
          F6FF2C6CB1FF000000170000000D0000000800000006000000030000000A3D8F
          C9FFD4F9FFFFAAF1FFFFA8F0FFFFA6EFFFFFA4EEFFFFA2EDFFFFA0EBFFFF9EEA
          FEFF9CE8FEFF9AE7FEFF97E5FDFF95E3FDFF92E2FDFF8FDFFCFF8CDDFCFF89DA
          FBFF84D9FBFF81D7FBFF7ED5FAFF7CD3FAFF79D1F9FF76CEF9FF73CDF8FF8DD6
          F9FF357DBEFF0000000F00000005000000020000000100000001000000093E91
          CBFFD6FAFFFFADF3FFFFACF2FFFFAAF1FFFFA8F0FFFFA6EFFFFFA4EDFFFFA2ED
          FFFFA0EBFEFF9EEAFEFF9CE9FEFF9AE6FEFF97E6FEFF95E4FDFF93E2FDFF90E0
          FCFF8EDFFCFF8BDDFCFF88DBFBFF85D9FBFF83D7FAFF81D5FAFF7DD3F9FF95DC
          FBFF3985C4FF0000000C00000003000000000000000000000000000000084095
          CDFFDAFAFFFFB0F5FFFFAFF4FFFFADF3FFFFACF2FFFFAAF1FFFFA8F0FFFFA6EF
          FFFFA4EEFFFFABEFFEFFC0F6FEFFCEF8FEFFCDF8FEFFCDF8FEFFCDF8FEFFCCF8
          FEFFCCF8FEFFCBF8FEFFCBF8FEFFCBF8FEFFCAF8FEFFCAF8FEFFC9F8FEFFA7DE
          F1FF367CB3E90000000A00000003000000000000000000000000000000084297
          CEFFDBFBFFFFB3F6FFFFB2F6FFFFB0F5FFFFAFF4FFFFADF3FFFFACF2FFFFAAF1
          FFFFAEF2FEFF92D2ECFF3F93CBFF3F92CBFF3F92CBFF3F91CBFF3F91CAFF3F91
          CAFF3E90CAFF3D90CAFF3E8FC9FF3D8FC9FF3D8EC9FF3D8DC8FF3D8DC8FF306F
          9ECD0F23314A0000000700000002000000000000000000000000000000074299
          CFFFDDFCFFFFB5F7FFFFB4F7FFFFB3F6FFFFB1F6FFFFB0F5FFFFAFF4FFFFB3F4
          FFFF8ED2ECFF2A6082A80000000B000000090000000900000009000000090000
          0009000000090000000900000009000000090000000A0000000A0000000A0000
          0009000000060000000300000001000000000000000000000000000000053D8D
          BDE8B2E3F3FFD5F9FEFFD4F9FEFFD4F9FEFFD4F9FEFFD3F9FEFFD3F9FEFFC5F0
          FAFF4893C1EA050B0F1A00000004000000020000000200000002000000020000
          0002000000020000000200000002000000020000000200000002000000020000
          0002000000010000000100000000000000000000000000000000000000031127
          3445357CA6CB449DD2FF449DD2FF449DD2FF449DD1FF449DD1FF449CD1FF449C
          D1FF163345590000000400000001000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000010000
          0003000000050000000500000005000000050000000500000006000000060000
          0005000000030000000100000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0001000000010000000100000001000000010000000100000001000000010000
          0001000000010000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
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
        TabOrder = 10
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'HelveticaNeue'
        Font.Style = [fsBold]
        ParentFont = False
        OnClick = bt_ConveniadosClick
      end
      object bt_Otica: TcxButton
        Tag = 3
        Left = 1088
        Top = 328
        Width = 131
        Height = 46
        Caption = #211'tica'
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
          0000000000000000000100000001000000010000000100000001000000010000
          0001000000010000000100000001000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000010000
          0002000000020000000400000006000000070000000800000009000000090000
          0008000000070000000600000004000000030000000200000001000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000100000002000000040000
          00080000000D00000012000000170000001B0000001E00000020000000200000
          001F0000001D00000019000000140000000E0000000900000004000000020000
          0001000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000001000000010000000400000009000000110000
          001A160E0C43482E268E664136B87D5041D8985F4EF89D6251FF9C6250FF975D
          4CF87D4D3FD9643E32B9472B2490170F0C490000001D000000130000000A0000
          0005000000020000000100000000000000000000000000000000000000000000
          0000000000000000000100000002000000060000000F0201011E402A237F8657
          48DEA87566FFBB9488FFC7A99EFFD0B8B0FFDCCAC4FFDECEC8FFDFCFC8FFDCCA
          C4FFD1B8B0FFC6A79DFFBA9285FFA57060FF815041DF3E261F82020101230000
          0012000000080000000300000001000000000000000000000000000000000000
          000000000001000000020000000800000013281B17598E5E50E4B99285FFD5BF
          B7FFE1D2CCFFE1D3CEFFD0BEB6FFA0867AFF806151FF6E4C39FF6F4C39FF7E5E
          4DFF9A7F73FFCAB8AFFFE1D3CFFFE1D3CCFFD5BEB6FFB68C7FFF885444E62617
          135F000000180000000B00000003000000010000000000000000000000000000
          000100000002000000080000001453383093B28678FFDAC6BEFFE3D6D1FFE5D8
          D2FFE6D7D2FFA58C80FF724F3DFF8B6651FF9D7864FFAD8972FFA9866FFFA17C
          67FF8C6855FF724E3CFF997E71FFE2D5D0FFE6D8D3FFE4D6D2FFD9C5BDFFAC7B
          6CFF4F3027990000001A0000000A000000020000000100000000000000010000
          00010000000500000011563B3295C3A298FFE5D7D2FFE6DAD6FFE8DDD7FFE8DD
          D8FF937769FF7C5745FFA27C68FFB18D79FFB99782FFBD9E8BFFBA9886FFBD9D
          8BFFB99683FFA8836FFF7D5946FF896C5CFFE6DAD5FFE9DED9FFE7DBD6FFE5D8
          D3FFBF9B8FFF5031289B00000017000000080000000200000001000000000000
          00030000000C3928226ABA9488FFE4D9D6FFE9DEDAFFEBE1DDFFEDE3DFFFAB94
          89FF805C48FFA37C67FFB28F7AFFC0A38FFFCBB1A2FFD2B9ACFFCFB7AAFFD1B9
          AAFFC8AC9BFFBA9886FFB2917BFF815E4AFF9E8578FFEDE4E0FFECE2DEFFE9E0
          DBFFE8DCD7FFB5887BFF35201A71000000110000000400000001000000010000
          00060C0907249D7364ECDDCFCDFFE9DFDDFFEDE4E1FFEFE7E4FFE1D5D0FF7857
          44FFA17C64FFB18C78FFBE9F8CFFC2AA9BFF786258FF563F36FF543D34FF7660
          57FFC4AEA2FFCFB5A6FFBFA08CFFAD8975FF75513FFFD6C9C3FFF0E8E5FFEDE5
          E2FFECE2DEFFE3D5CEFF966151F00B07052C0000000A00000002000000020000
          000A523B3389C3A59EFFE5DDDFFFEDE5E3FFF0EAE7FFF2ECEAFFB09B90FF8A64
          50FFAB846FFFBC9C88FFC0A798FF573F35FF4B322AFF4B322AFF4B332AFF4A33
          2AFF543B33FFC2AEA1FFCBB19FFFBA9985FF8E6A57FFA1897DFFF3EDEBFFF2EB
          E9FFEFE8E5FFECE3E0FFBE998DFF452B22890000000F00000003000000030000
          000C8A6456DBCABCBEFFE4DDDFFFEEE8E8FFF4EEECFFF6F1EFFF927667FF9A72
          5DFFAF8D76FFC4A997FF7C6559FF52392EFF513A2FFF523A2FFF52392FFF523A
          2EFF51392FFF7D685BFFD4BEAEFFBFA28FFFA4826BFF836353FFF6F2F0FFF5EF
          EDFFF2ECE9FFEAE3E0FFCFBEB9FF7A4D3DD90000001200000004000000030000
          000B42699AD98E8F99EFD8D3D5FFEDE7E8FFF5F1F0FFF8F4F3FF846656FF9D74
          5FFFAF8D75FFC5AB98FF634B3FFF594136FF594135FF5A4135FF5A4136FF5941
          36FF5A4136FF60483DFFD4BEAEFFBFA28EFFAC8A74FF775443FFF8F5F3FFF6F2
          F1FFF0EBEAFFE0DAD7FF85858BE8032662D10000001200000004000000020000
          0008304B6E9E5D7392F8B4B1B4FFE3DFE0FFF4F0EFFFF9F5F4FF866757FFA57E
          68FFB5947EFFCAB19FFF938270FFE8E3C8FFEFEBD0FF978674FF61493DFF6149
          3CFF62493DFF695145FFD7C2B3FFC5A995FFB3927DFF74523FFFF9F6F5FFF4F1
          EFFFE4E1E0FFB9B5B4FF405377F8021945970000000E00000003000000010000
          0005131E2C47688AB4FF677890FFBAB8B9FFE6E4E3FFF4F2F2FF977D6FFF9F7B
          65FFB4957EFFC8AF9BFFDDD5BCFFE8E4C9FFEFEBD0FFECE7CCFF6B5143FF6850
          41FF684F41FF8F796AFFD4BFAEFFC2A993FFA78873FF87695AFFF4F2F1FFE4E2
          E2FFB9B7B6FF525F7BFF4B6899FF010B1D4C0000000900000002000000000000
          0002000000084F74A4DE738EADFF66748BFFAEADADFFDAD9D9FFB3A49CFF8E6B
          58FFB4947CFFBFA48FFFE5DDC3FFE2DCC2FFE9E4C9FFE9E4C9FF705848FF6D54
          45FF755D4DFFCBB9A6FFCBB6A2FFBFA48EFF93735FFFA38E83FFD8D7D7FFAAA9
          AAFF515D76FF677DA0FF244681E3000000100000000500000001000000000000
          0001000000041723324D6A99CFFF7991AEFF657083FF818790FFB2AEADFF6F54
          44FFA38470FFB1957FFFCAB8A2FFE1D8C0FFD4CBB3FF9A8876FF7A6353FF9580
          6FFFCABBA7FFCAB6A2FFBEA891FFAC927DFF6C4E3EFFA7A19EFF767B85FF555D
          73FF7288A4FF4A74B1FF06112659000000090000000200000000000000000000
          00000000000200000005416084AF79A8D7FF87A8C8FF707782FF5D6778FF5E5D
          64FF594236FF7F6A5BFF927F6EFFA1917EFFB0A08FFFB8A998FFB3A593FFB1A3
          92FFA59683FF968574FF806E5EFF594337FF4E4C55FF4C5467FF6B6E78FF829F
          C1FF5D87BFFF163366BB0000000B000000030000000100000000000000000000
          00000000000000000002010202095982AFD97EAFDDFF95C2E7FF89A4BBFF6E73
          7BFF59585FFF484D5BFF454753FF4A484CFF544D4AFF5E544AFF5B5145FF524C
          49FF464349FF3C3E4BFF3D3F4FFF504C54FF6C6C71FF8BA0B4FF8EB5DDFF5986
          BFFF214584E00001020F00000005000000010000000000000000000000000000
          00000000000000000001000000020203050B4E6F95B97EB1DEFF92C4EAFFA1CF
          F0FF9EC4DFFF859AA9FF737D85FF615F62FF514846FF453530FF41302AFF4E42
          40FF5F5B5CFF757A80FF8A9AA6FFA6C3DBFF9DC4E6FF77A3D2FF4470B0FF1636
          6EC5000205140000000500000002000000000000000000000000000000000000
          000000000000000000000000000100000002000000042D405772719FD0F988BB
          E5FF97CAF0FF9FD1F4FFA6D6F6FFACD9F7FFB1DDF8FFB7E0FAFFBBE2FAFFB8E0
          F8FFB4DBF6FFA8D2F0FF97C2E8FF77A6D4FF4E7CB9FF29539AFD0A2044840001
          020C000000040000000100000000000000000000000000000000000000000000
          00000000000000000000000000000000000000000001000000020A0E131C3D59
          799C6692C5F579A9D9FF82B4E0FF8CBFE8FF94C8EEFF99CDF2FF96CAF0FF88BA
          E5FF75A6D7FF5E8DC4FF4774B2FF305B9DFC183460A404091226000000060000
          0003000000010000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000010000
          000205070A102434475D3E5A7CA24E72A0D15C89C2FF5885BFFF5380BBFF4F7B
          B8FF3C6195D42A4770A61728406503060A160000000500000003000000010000
          0001000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000010000000100000002000000030000000300000003000000040000
          0004000000040000000300000002000000020000000100000001000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000100000001000000010000
          0001000000010000000100000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
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
        TabOrder = 12
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'HelveticaNeue'
        Font.Style = [fsBold]
        ParentFont = False
        OnClick = bt_OticaClick
      end
      object bt_Animais: TcxButton
        Tag = 3
        Left = 1230
        Top = 328
        Width = 131
        Height = 46
        Hint = 'Consultar CNPJ e buscar dados da receita.'
        Caption = 'Animais'
        LookAndFeel.NativeStyle = False
        LookAndFeel.SkinName = 'Metropolis'
        OptionsImage.Glyph.Data = {
          3A0F0000424D3A0F00000000000036000000280000001F0000001F0000000100
          200000000000040F000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          000019333B58344E56F72D2D2DFF2D2D2DFF2D2D2DFF2D2D2DFF2D2D2DFF2D2D
          2DFF2D2D2DFF2D2D2DFF2D2D2DFF2D2D2DFF2D2D2DFF2D2D2DFF2D2D2DFF2D2D
          2DFF2D2D2DFF2D2D2DFF2D2D2DFF2D2D2DFF2D2D2DFF2D2D2DFF2D2D2DFF2D2D
          2DFF383838FF606060D01E1E1E2E0000000000000000050D0F10325663D02D2D
          2DFF37555EFF4FAFCFFF57CDF4FF57CDF4FF57CDF4FF57CDF4FF57CDF4FF57CD
          F4FF4CA5C2FF4A9BB6FF2F3639FF427D90FF41565DFF8B8B8BFFBBBBBBFF2D2D
          2DFFEAEAEAFF686868FF737373FFEAEAEAFFBBBBBBFFBBBBBBFFC6C6C6FFA3A3
          A3FF444444FF545454F70000000000000000323F43FD2F3639FF45879DFF52B9
          DBFF3D6977FF4FAFCFFF57CDF4FF57CDF4FF57CDF4FF57CDF4FF45879DFF2D2D
          2DFF2D2D2DFF354A52FF52B9DBFF41565DFF8B8B8BFFBBBBBBFF2D2D2DFFEAEA
          EAFF5C5C5CFF8B8B8BFF686868FF2D2D2DFF2D2D2DFF5C5C5CFFEAEAEAFFAFAF
          AFFF2D2D2DFF0F0F0F10000000002D2D2DFF54C3E8FF3D7182F02C2E2FF52D2D
          2DFF4A9BB6FF57CDF4FF57CDF4FF57CDF4FF57CDF4FF3F7384FF37555EFF52B9
          DBFF4CA5C2FF4CA5C2FF3C4C51FF8B8B8BFFBBBBBBFF2D2D2DFFEAEAEAFF5C5C
          5CFF686868FF686868FF8B8B8BFFEAEAEAFFEAEAEAFFEAEAEAFFD2D2D2FF2D2D
          2DFF1111111F000000002D2D2DFF4CA5C2FF2D2D2DFF242B2EBF2D2D2DFF54C3
          E8FF57CDF4FF57CDF4FF57CDF4FF54C3E8FF2F3639FF45879DFF427D90FF2D2D
          2DFF2D2D2DFF2D2D2DFF8B8B8BFFD2D2D2FF8B8B8BFFEAEAEAFFBBBBBBFF2D2D
          2DFF2D2D2DFF979797FFEAEAEAFFEAEAEAFFEAEAEAFFAFAFAFFF2D2D2DFF0000
          0000000000002D2D2DFF4CA5C2FF2D2D2DFF1C323970324045FF57CDF4FF57CD
          F4FF57CDF4FF52B9DBFF354A52FF324045FF54C3E8FF57CDF4FF57CDF4FF57CD
          F4FF41565DFF8B8B8BFFEAEAEAFFEAEAEAFFEAEAEAFFEAEAEAFFD2D2D2FFA3A3
          A3FFEAEAEAFFEAEAEAFFEAEAEAFFDEDEDEFF505050FF383838BE000000000000
          00002D2D2DFF2D3F45D82B2B2BF12031369437555EFF57CDF4FF4FAFCFFF3240
          45FF2D2D2DFF354A52FF4FAFCFFF57CDF4FF57CDF4FF57CDF4FF57CDF4FF4156
          5DFF8B8B8BFFEAEAEAFFEAEAEAFFC6C6C6FFBBBBBBFFBBBBBBFFBBBBBBFFBBBB
          BBFFBBBBBBFF7F7F7FFF373737FD333333DF0303031000000000000000001111
          1160222222C00E0E0E5018282E642D2D2DFF57CDF4FF54C3E8FF4CA5C2FF4FAF
          CFFF57CDF4FF57CDF4FF52B9DBFF52B9DBFF57CDF4FF54C3E8FF3C4C51FF8B8B
          8BFFEAEAEAFFA3A3A3FF2D2D2DFF3E544CFF3C5149FB272B2ACC222222C02222
          22C0222222C01717178003030310000000000000000000000000000000000000
          000000000000080808302D2D2DFF52B9DBFF57CDF4FF57CDF4FF57CDF4FF57CD
          F4FF57CDF4FF3D6977FF2D2D2DFF364B51FF353737FE2D2D2DFFAFAFAFFFEAEA
          EAFF7F7F7FFF2D2D2DFF3D403FFC537D6DFF3C5149FB18201D66000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000002F373AF4427D90FF57CDF4FF57CDF4FF57CDF4FF57CDF4FF57CD
          F4FF57CDF4FF4791A9FF2D2D2DFF2D2D2DFF686868FFEAEAEAFFEAEAEAFFEAEA
          EAFFA3A3A3FF2D2D2DFF2D2D2DFF4B7263FF558F79D90C110F2E000000000000
          000000000000000000000000000000000000000000000000000000000000070D
          0B1047736DF4324045FF54C3E8FF57CDF4FF57CDF4FF57CDF4FF57CDF4FF57CD
          F4FF507F8FFF444444FF979797FFD2D2D2FFBBBBBBFF2D2D2DFFEAEAEAFFC6C6
          C6FF8B8B8BFF383838FF61A38AFF4B7263FF2F3332FC0C110F2E000000000000
          0000000000000000000000000000000000000000000000000000384B44E763A5
          8BFF303637FE3D6977FF57CDF4FF57CDF4FF57CDF4FF57CDF4FF52B9DBFF4561
          6AFF2D2D2DFF383838FF8C8C8CFFB2B2B2FFBBBBBBFFA3A3A3FF8E8E8EFF2D2D
          2DFF2D2D2DFF4B7263FF6BB89AFF3A4A44FF333E3AF000000000000000000000
          00000000000000000000000000000000000030403AC1313634FF6AB799FF5C99
          86FF2D2D2DFF4791A9FF57CDF4FF57CDF4FF57CDF4FF3D6977FF2D2D2DFF5050
          50FFDEDEDEFF7F7F7FFFA3A3A3FFEAEAEAFF7F7F7FFFA3A3A3FFD2D2D2FF3838
          38FF2D2D2DFF59907AFF6AB799FF313634FF30403AC100000000000000000000
          00000000000000000000141D1A4A2D2D2DFF5D9982FF73CBA9FF73CBA9FF5790
          7DFF2D2D2DFF3D6977FF54C3E8FF57CDF4FF54C3E8FF4D92A8FF373737FED2D2
          D2FFAFAFAFFF8B8B8BFF8B8B8BFF8B8B8BFFAFAFAFFFBBBBBBFF2D2D2DFF61A3
          8AFF6FC1A1FF73CBA9FF5D9982FF2D2D2DFF141D1A4A00000000000000000000
          00000000000034423CE83E544CFF73CBA9FF73CBA9FF73CBA9FF73CBA9FF61A3
          8AFF303636FE2F3638FE427D90FF54C3E8FF57CDF4FF3D4A4FFD505050FF2D2D
          2DFF3F7384FF324045FF323635FF2D2D2DFF383838FF526B61FF73CBA9FF73CB
          A9FF73CBA9FF73CBA9FF3E544CFF34423CE8000000000000000000000000141D
          1A4A2D2D2DFF61A38AFF73CBA9FF73CBA9FF73CBA9FF73CBA9FF73CBA9FF6FC1
          A1FF4E7C6FFF303636FE3A5F6BFF57CDF4FF4CA5C2FF2D2D2DFF4791A9FF57CD
          F4FF37555EFF507C6BFF4A695DFF343736FF6FC1A1FF73CBA9FF73CBA9FF73CB
          A9FF73CBA9FF61A38AFF2D2D2DFF141D1A4A000000000000000030403AC13A4A
          44FF73CBA9FF73CBA9FF73CBA9FF73CBA9FF73CBA9FF73CBA9FF73CBA9FF73CB
          A9FF4C7C74FF37555EFF57CDF4FF57CDF4FF57CDF4FF57CDF4FF57CDF4FF3755
          5EFF507C6BFF73CBA9FF73CBA9FF73CBA9FF73CBA9FF73CBA9FF73CBA9FF73CB
          A9FF73CBA9FF3A4A44FF30403AC1000000000000000036433EF6548673FF73CB
          A9FF73CBA9FF73CBA9FF73CBA9FF73CBA9FF73CBA9FF73CBA9FF73CBA9FF4C7C
          74FF37555EFF57CDF4FF52B9DBFF4CA5C2FF52B9DBFF57CDF4FF37555EFF507C
          6BFF73CBA9FF73CBA9FF73CBA9FF73CBA9FF73CBA9FF73CBA9FF73CBA9FF73CB
          A9FF548673FF36433EF600000000000000002D2D2DFF61A38AFF73CBA9FF73CB
          A9FF73CBA9FF73CBA9FF73CBA9FF73CBA9FF73CBA9FF73CBA9FF4C7C74FF3755
          5EFF57CDF4FF427D90FF2D2D2DFF427D90FF57CDF4FF37555EFF507C6BFF73CB
          A9FF73CBA9FF73CBA9FF73CBA9FF73CBA9FF73CBA9FF73CBA9FF73CBA9FF61A3
          8AFF2D2D2DFF00000000030303102D2D2DFF6FC1A1FF73CBA9FF73CBA9FF73CB
          A9FF73CBA9FF73CBA9FF73CBA9FF73CBA9FF73CBA9FF4C7C74FF37555EFF52B9
          DBFF4FAFCFFF57CDF4FF4FAFCFFF52B9DBFF37555EFF507C6BFF73CBA9FF73CB
          A9FF73CBA9FF73CBA9FF73CBA9FF73CBA9FF73CBA9FF73CBA9FF6FC1A1FF2D2D
          2DFF00000000101B172E2D2D2DFF6AB799FF73CBA9FF73CBA9FF73CBA9FF73CB
          A9FF6FC1A1FF415E56FF507C6BFF73CBA9FF4C7C74FF37555EFF427D90FF3755
          5EFF57CDF4FF37555EFF427D90FF37555EFF435E53FF73CBA9FF507C6BFF425E
          55FF73CBA9FF73CBA9FF73CBA9FF73CBA9FF73CBA9FF6AB799FF2D2D2DFF0000
          0000000000002D2D2DFF61A38AFF73CBA9FF73CBA9FF73CBA9FF73CBA9FF3E5C
          59FC2F3639FF303636FE35403EFF303637FF3A5F6BFF57CDF4FF57CDF4FF57CD
          F4FF57CDF4FF57CDF4FF4791A9FF2D2D2DFF313635FF303636FE303639FF4F7C
          6DFF73CBA9FF73CBA9FF73CBA9FF73CBA9FF5D9982FF2D2D2DFF000000000000
          0000394A44F347685BFF73CBA9FF73CBA9FF73CBA9FF73CBA9FF4A7873FA2F36
          39FF4A9BB6FF4CA5C2FF4CA5C2FF4FAFCFFF427D90FF427D90FF427D90FF427D
          90FF427D90FF427D90FF4A9BB6FF4CA5C2FF52B9DBFF354A52FF3C5A5BFA73CB
          A9FF73CBA9FF73CBA9FF73CBA9FF47685BFF394A44F300000000000000003149
          40A62D2D2DFF6AB799FF73CBA9FF73CBA9FF73CBA9FF73CBA9FF35484BFC354A
          52FF57CDF4FF57CDF4FF37555EFF323D3EFB374E4FF7374E4FF7374E4FF7374E
          4FF7323D3FFC37555EFF57CDF4FF45879DFF2D2D2DFF64AD96FF73CBA9FF73CB
          A9FF73CBA9FF6AB799FF2D2D2DFF2C41399C0000000000000000000000003845
          3FF93E544CFF73CBA9FF73CBA9FF73CBA9FF73CBA9FF68B79EFF2F3638FE3A5F
          6BFF3F7384FF2D2D2DFF6AB799FF6FC1A1FF507C6BFF6FC1A1FF73CBA9FF61A3
          8AFF2D2D2DFF3F7384FF2F3639FF4A7873FA73CBA9FF73CBA9FF73CBA9FF73CB
          A9FF3E544CFF38453FF9000000000000000000000000000000001A2822573136
          34FF47685BFF73CBA9FF73CBA9FF73CBA9FF73CBA9FF569083FF374E4FF7374E
          4FF74E7C6FFF6FC1A1FF3A4A44FF2D2D2DFF3A4A44FF6FC1A1FF73CBA9FF4972
          69FF374E4FF73D5A5AFA73CBA9FF73CBA9FF73CBA9FF73CBA9FF47685BFF3136
          34FF1A28225700000000000000000000000000000000000000002B473C7E3136
          34FF435E53FF6FC1A1FF73CBA9FF73CBA9FF73CBA9FF73CBA9FF73CBA9FF6AB7
          99FF3A4A44FF2E3230F9111111602E3230F93A4A44FF6AB799FF73CBA9FF73CB
          A9FF73CBA9FF73CBA9FF73CBA9FF6FC1A1FF435E53FF313634FF2B473C7E0000
          000000000000000000000000000000000000000000000000000020322B64353F
          3BFD313634FF4B7263FF61A38AFF6FC1A1FF61A38AFF4B7263FF313634FF313A
          36EB030303100000000006060620313A36EB313634FF4B7263FF61A38AFF6FC1
          A1FF61A38AFF4B7263FF313634FF353F3BFD20322B6400000000000000000000
          0000000000000000000000000000000000000000000000000000070D0B103551
          46B038453FF92D2D2DFF2D2D2DFF2D2D2DFF323A37F723312B88000000000000
          000000000000000000000000000023312B88313936F52D2D2DFF2D2D2DFF2D2D
          2DFF36433EF6355146B0070D0B10000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000001927224A00000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          000000000000000000000000000000000000000000000000000000000000}
        SpeedButtonOptions.Transparent = True
        TabOrder = 13
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'HelveticaNeue'
        Font.Style = [fsBold]
        ParentFont = False
        OnClick = bt_AnimaisClick
      end
      object pcEnderecos: TcxPageControl
        Left = 797
        Top = 79
        Width = 564
        Height = 236
        TabOrder = 9
        Properties.ActivePage = cxTabSheet3
        Properties.CustomButtons.Buttons = <>
        ClientRectBottom = 232
        ClientRectLeft = 4
        ClientRectRight = 560
        ClientRectTop = 29
        object cxTabSheet1: TcxTabSheet
          Caption = 'Endere'#231'o'
          ImageIndex = 0
          ExplicitLeft = 0
          ExplicitTop = 0
          ExplicitWidth = 0
          ExplicitHeight = 0
          object Panel1: TPanel
            Left = 3
            Top = 9
            Width = 530
            Height = 207
            TabOrder = 0
            object TLabel
              Left = 35
              Top = 14
              Width = 35
              Height = 17
              Caption = 'CEP:'
              Font.Charset = ANSI_CHARSET
              Font.Color = clWindowText
              Font.Height = -15
              Font.Name = 'Helvetica Neue'
              Font.Style = []
              ParentFont = False
            end
            object Label2: TLabel
              Left = 188
              Top = 14
              Width = 31
              Height = 17
              Caption = 'Rua:'
              Font.Charset = ANSI_CHARSET
              Font.Color = clWindowText
              Font.Height = -15
              Font.Name = 'Helvetica Neue'
              Font.Style = []
              ParentFont = False
            end
            object Label9: TLabel
              Left = 14
              Top = 47
              Width = 56
              Height = 17
              Caption = 'N'#250'mero:'
              Font.Charset = ANSI_CHARSET
              Font.Color = clWindowText
              Font.Height = -15
              Font.Name = 'Helvetica Neue'
              Font.Style = []
              ParentFont = False
            end
            object TLabel
              Left = 19
              Top = 79
              Width = 51
              Height = 17
              Caption = 'Compl.:'
              Font.Charset = ANSI_CHARSET
              Font.Color = clWindowText
              Font.Height = -15
              Font.Name = 'Helvetica Neue'
              Font.Style = []
              ParentFont = False
            end
            object TLabel
              Left = 6
              Top = 110
              Width = 64
              Height = 17
              Caption = 'Mun'#237'cipio:'
              Font.Charset = ANSI_CHARSET
              Font.Color = clWindowText
              Font.Height = -15
              Font.Name = 'Helvetica Neue'
              Font.Style = []
              ParentFont = False
            end
            object TLabel
              Left = 269
              Top = 142
              Width = 50
              Height = 17
              Caption = 'Regi'#227'o:'
              Font.Charset = ANSI_CHARSET
              Font.Color = clWindowText
              Font.Height = -15
              Font.Name = 'Helvetica Neue'
              Font.Style = []
              ParentFont = False
            end
            object TLabel
              Left = 411
              Top = 110
              Width = 50
              Height = 17
              Caption = 'C'#243'digo:'
              Font.Charset = ANSI_CHARSET
              Font.Color = clWindowText
              Font.Height = -15
              Font.Name = 'Helvetica Neue'
              Font.Style = []
              ParentFont = False
            end
            object Label1: TLabel
              Left = 176
              Top = 47
              Width = 43
              Height = 17
              Caption = 'Bairro:'
              Font.Charset = ANSI_CHARSET
              Font.Color = clWindowText
              Font.Height = -15
              Font.Name = 'Helvetica Neue'
              Font.Style = []
              ParentFont = False
            end
            object TLabel
              Left = 34
              Top = 142
              Width = 36
              Height = 17
              Caption = 'Zona:'
              Font.Charset = ANSI_CHARSET
              Font.Color = clWindowText
              Font.Height = -15
              Font.Name = 'Helvetica Neue'
              Font.Style = []
              ParentFont = False
            end
            object TLabel
              Left = 47
              Top = 173
              Width = 23
              Height = 17
              Caption = 'UF:'
              Font.Charset = ANSI_CHARSET
              Font.Color = clWindowText
              Font.Height = -15
              Font.Name = 'Helvetica Neue'
              Font.Style = []
              ParentFont = False
            end
            object TLabel
              Left = 120
              Top = 172
              Width = 50
              Height = 17
              Caption = 'C'#243'digo:'
              Font.Charset = ANSI_CHARSET
              Font.Color = clWindowText
              Font.Height = -15
              Font.Name = 'Helvetica Neue'
              Font.Style = []
              ParentFont = False
            end
            object TLabel
              Left = 219
              Top = 173
              Width = 33
              Height = 17
              Caption = 'Pa'#237's:'
              Font.Charset = ANSI_CHARSET
              Font.Color = clWindowText
              Font.Height = -15
              Font.Name = 'Helvetica Neue'
              Font.Style = []
              ParentFont = False
            end
            object TLabel
              Left = 426
              Top = 173
              Width = 50
              Height = 17
              Caption = 'C'#243'digo:'
              Font.Charset = ANSI_CHARSET
              Font.Color = clWindowText
              Font.Height = -15
              Font.Name = 'Helvetica Neue'
              Font.Style = []
              ParentFont = False
            end
            object btRegiao: TcxButton
              Left = 501
              Top = 137
              Width = 24
              Height = 26
              LookAndFeel.NativeStyle = False
              LookAndFeel.SkinName = 'Office2013White'
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
              TabOrder = 13
              TabStop = False
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clWindowText
              Font.Height = -11
              Font.Name = 'Tahoma'
              Font.Style = [fsBold]
              ParentFont = False
            end
            object edREG_DESCRICAO: TEdit
              Left = 366
              Top = 137
              Width = 131
              Height = 26
              TabStop = False
              Color = clSilver
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clWindowText
              Font.Height = -15
              Font.Name = 'Tahoma'
              Font.Style = []
              ParentFont = False
              ReadOnly = True
              TabOrder = 14
            end
            object edID_REGIAO: TEdit
              Left = 323
              Top = 137
              Width = 41
              Height = 26
              CharCase = ecUpperCase
              Color = clHighlightText
              Font.Charset = ANSI_CHARSET
              Font.Color = clWindowText
              Font.Height = -15
              Font.Name = 'Tahoma'
              Font.Style = []
              ParentFont = False
              TabOrder = 8
              OnChange = edID_REGIAOChange
            end
            object edBAIRRO: TEdit
              Left = 225
              Top = 42
              Width = 298
              Height = 26
              CharCase = ecUpperCase
              Font.Charset = ANSI_CHARSET
              Font.Color = clWindowText
              Font.Height = -15
              Font.Name = 'Tahoma'
              Font.Style = []
              ParentFont = False
              TabOrder = 3
            end
            object edCEP: TEdit
              Left = 78
              Top = 10
              Width = 93
              Height = 26
              CharCase = ecUpperCase
              Font.Charset = ANSI_CHARSET
              Font.Color = clWindowText
              Font.Height = -15
              Font.Name = 'Tahoma'
              Font.Style = []
              ParentFont = False
              TabOrder = 0
              OnEnter = edCEPEnter
              OnExit = edCEPExit
            end
            object edENDERECO: TEdit
              Left = 225
              Top = 10
              Width = 298
              Height = 26
              CharCase = ecUpperCase
              Color = clHighlightText
              Font.Charset = ANSI_CHARSET
              Font.Color = clWindowText
              Font.Height = -15
              Font.Name = 'Tahoma'
              Font.Style = []
              ParentFont = False
              TabOrder = 1
            end
            object edNUMERO: TEdit
              Left = 78
              Top = 42
              Width = 93
              Height = 26
              BiDiMode = bdRightToLeft
              CharCase = ecUpperCase
              Font.Charset = ANSI_CHARSET
              Font.Color = clWindowText
              Font.Height = -15
              Font.Name = 'Tahoma'
              Font.Style = []
              ParentBiDiMode = False
              ParentFont = False
              TabOrder = 2
            end
            object edCOMPLEMENTO: TEdit
              Left = 78
              Top = 74
              Width = 445
              Height = 26
              CharCase = ecUpperCase
              Font.Charset = ANSI_CHARSET
              Font.Color = clWindowText
              Font.Height = -15
              Font.Name = 'Tahoma'
              Font.Style = []
              ParentFont = False
              TabOrder = 4
            end
            object edMUNICIPIO: TEdit
              Left = 78
              Top = 106
              Width = 304
              Height = 26
              CharCase = ecUpperCase
              Font.Charset = ANSI_CHARSET
              Font.Color = clWindowText
              Font.Height = -15
              Font.Name = 'Tahoma'
              Font.Style = []
              ParentFont = False
              TabOrder = 5
            end
            object edZONA: TEdit
              Left = 78
              Top = 136
              Width = 152
              Height = 26
              CharCase = ecUpperCase
              Color = clHighlightText
              Font.Charset = ANSI_CHARSET
              Font.Color = clWindowText
              Font.Height = -15
              Font.Name = 'Tahoma'
              Font.Style = []
              ParentFont = False
              TabOrder = 7
            end
            object edESTADO: TEdit
              Left = 78
              Top = 168
              Width = 39
              Height = 26
              CharCase = ecUpperCase
              Font.Charset = ANSI_CHARSET
              Font.Color = clWindowText
              Font.Height = -15
              Font.Name = 'Tahoma'
              Font.Style = []
              ParentFont = False
              TabOrder = 9
            end
            object edCODIGO_UF: TEdit
              Left = 176
              Top = 168
              Width = 39
              Height = 26
              CharCase = ecUpperCase
              Font.Charset = ANSI_CHARSET
              Font.Color = clWindowText
              Font.Height = -15
              Font.Name = 'Tahoma'
              Font.Style = []
              ParentFont = False
              TabOrder = 10
            end
            object edPAIS: TEdit
              Left = 252
              Top = 169
              Width = 168
              Height = 26
              CharCase = ecUpperCase
              Font.Charset = ANSI_CHARSET
              Font.Color = clWindowText
              Font.Height = -15
              Font.Name = 'Tahoma'
              Font.Style = []
              ParentFont = False
              TabOrder = 11
            end
            object edCODIGO_PAIS: TEdit
              Left = 482
              Top = 169
              Width = 42
              Height = 26
              CharCase = ecUpperCase
              Font.Charset = ANSI_CHARSET
              Font.Color = clWindowText
              Font.Height = -15
              Font.Name = 'Tahoma'
              Font.Style = []
              ParentFont = False
              TabOrder = 12
            end
            object edCODIGO_MUNICIPIO: TEdit
              Left = 461
              Top = 106
              Width = 60
              Height = 26
              CharCase = ecUpperCase
              Font.Charset = ANSI_CHARSET
              Font.Color = clWindowText
              Font.Height = -15
              Font.Name = 'Tahoma'
              Font.Style = []
              ParentFont = False
              TabOrder = 6
            end
            object bPesqCidade: TcxButton
              Left = 384
              Top = 104
              Width = 24
              Height = 26
              LookAndFeel.NativeStyle = False
              LookAndFeel.SkinName = 'Office2013White'
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
              TabOrder = 15
              TabStop = False
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clWindowText
              Font.Height = -11
              Font.Name = 'Tahoma'
              Font.Style = [fsBold]
              ParentFont = False
              OnClick = bPesqCidadeClick
            end
            object btn_zona: TcxButton
              Left = 236
              Top = 137
              Width = 24
              Height = 26
              LookAndFeel.NativeStyle = False
              LookAndFeel.SkinName = 'Office2013White'
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
              TabStop = False
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clWindowText
              Font.Height = -11
              Font.Name = 'Tahoma'
              Font.Style = [fsBold]
              ParentFont = False
            end
          end
        end
        object cxTabSheet2: TcxTabSheet
          Caption = 'Entrega'
          ImageIndex = 1
          ExplicitLeft = 0
          ExplicitTop = 0
          ExplicitWidth = 0
          ExplicitHeight = 0
          object Panel2: TPanel
            Left = 15
            Top = -4
            Width = 530
            Height = 207
            TabOrder = 0
            object TLabel
              Left = 35
              Top = 14
              Width = 35
              Height = 17
              Caption = 'CEP:'
              Font.Charset = ANSI_CHARSET
              Font.Color = clWindowText
              Font.Height = -15
              Font.Name = 'Helvetica Neue'
              Font.Style = []
              ParentFont = False
            end
            object Label12: TLabel
              Left = 188
              Top = 14
              Width = 31
              Height = 17
              Caption = 'Rua:'
              Font.Charset = ANSI_CHARSET
              Font.Color = clWindowText
              Font.Height = -15
              Font.Name = 'Helvetica Neue'
              Font.Style = []
              ParentFont = False
            end
            object Label18: TLabel
              Left = 14
              Top = 47
              Width = 56
              Height = 17
              Caption = 'N'#250'mero:'
              Font.Charset = ANSI_CHARSET
              Font.Color = clWindowText
              Font.Height = -15
              Font.Name = 'Helvetica Neue'
              Font.Style = []
              ParentFont = False
            end
            object TLabel
              Left = 19
              Top = 79
              Width = 51
              Height = 17
              Caption = 'Compl.:'
              Font.Charset = ANSI_CHARSET
              Font.Color = clWindowText
              Font.Height = -15
              Font.Name = 'Helvetica Neue'
              Font.Style = []
              ParentFont = False
            end
            object TLabel
              Left = 6
              Top = 110
              Width = 64
              Height = 17
              Caption = 'Mun'#237'cipio:'
              Font.Charset = ANSI_CHARSET
              Font.Color = clWindowText
              Font.Height = -15
              Font.Name = 'Helvetica Neue'
              Font.Style = []
              ParentFont = False
            end
            object TLabel
              Left = 269
              Top = 142
              Width = 50
              Height = 17
              Caption = 'Regi'#227'o:'
              Font.Charset = ANSI_CHARSET
              Font.Color = clWindowText
              Font.Height = -15
              Font.Name = 'Helvetica Neue'
              Font.Style = []
              ParentFont = False
            end
            object TLabel
              Left = 411
              Top = 110
              Width = 50
              Height = 17
              Caption = 'C'#243'digo:'
              Font.Charset = ANSI_CHARSET
              Font.Color = clWindowText
              Font.Height = -15
              Font.Name = 'Helvetica Neue'
              Font.Style = []
              ParentFont = False
            end
            object Label20: TLabel
              Left = 176
              Top = 47
              Width = 43
              Height = 17
              Caption = 'Bairro:'
              Font.Charset = ANSI_CHARSET
              Font.Color = clWindowText
              Font.Height = -15
              Font.Name = 'Helvetica Neue'
              Font.Style = []
              ParentFont = False
            end
            object TLabel
              Left = 34
              Top = 142
              Width = 36
              Height = 17
              Caption = 'Zona:'
              Font.Charset = ANSI_CHARSET
              Font.Color = clWindowText
              Font.Height = -15
              Font.Name = 'Helvetica Neue'
              Font.Style = []
              ParentFont = False
            end
            object TLabel
              Left = 47
              Top = 173
              Width = 23
              Height = 17
              Caption = 'UF:'
              Font.Charset = ANSI_CHARSET
              Font.Color = clWindowText
              Font.Height = -15
              Font.Name = 'Helvetica Neue'
              Font.Style = []
              ParentFont = False
            end
            object TLabel
              Left = 120
              Top = 172
              Width = 50
              Height = 17
              Caption = 'C'#243'digo:'
              Font.Charset = ANSI_CHARSET
              Font.Color = clWindowText
              Font.Height = -15
              Font.Name = 'Helvetica Neue'
              Font.Style = []
              ParentFont = False
            end
            object TLabel
              Left = 219
              Top = 173
              Width = 33
              Height = 17
              Caption = 'Pa'#237's:'
              Font.Charset = ANSI_CHARSET
              Font.Color = clWindowText
              Font.Height = -15
              Font.Name = 'Helvetica Neue'
              Font.Style = []
              ParentFont = False
            end
            object TLabel
              Left = 426
              Top = 173
              Width = 50
              Height = 17
              Caption = 'C'#243'digo:'
              Font.Charset = ANSI_CHARSET
              Font.Color = clWindowText
              Font.Height = -15
              Font.Name = 'Helvetica Neue'
              Font.Style = []
              ParentFont = False
            end
            object cxButton1: TcxButton
              Left = 501
              Top = 137
              Width = 24
              Height = 26
              LookAndFeel.NativeStyle = False
              LookAndFeel.SkinName = 'Office2013White'
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
              TabOrder = 13
              TabStop = False
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clWindowText
              Font.Height = -11
              Font.Name = 'Tahoma'
              Font.Style = [fsBold]
              ParentFont = False
            end
            object edREG_DESCRICAO_ENTREGA: TEdit
              Left = 366
              Top = 137
              Width = 131
              Height = 26
              TabStop = False
              Color = clSilver
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clWindowText
              Font.Height = -15
              Font.Name = 'Tahoma'
              Font.Style = []
              ParentFont = False
              ReadOnly = True
              TabOrder = 14
            end
            object edENTREGA_ID_REGIAO: TEdit
              Left = 323
              Top = 137
              Width = 41
              Height = 26
              CharCase = ecUpperCase
              Color = clHighlightText
              Font.Charset = ANSI_CHARSET
              Font.Color = clWindowText
              Font.Height = -15
              Font.Name = 'Tahoma'
              Font.Style = []
              ParentFont = False
              TabOrder = 8
              OnChange = edENTREGA_ID_REGIAOChange
            end
            object edENTREGA_BAIRRO: TEdit
              Left = 225
              Top = 42
              Width = 298
              Height = 26
              CharCase = ecUpperCase
              Font.Charset = ANSI_CHARSET
              Font.Color = clWindowText
              Font.Height = -15
              Font.Name = 'Tahoma'
              Font.Style = []
              ParentFont = False
              TabOrder = 3
            end
            object edENTREGA_CEP: TEdit
              Left = 78
              Top = 9
              Width = 93
              Height = 26
              CharCase = ecUpperCase
              Font.Charset = ANSI_CHARSET
              Font.Color = clWindowText
              Font.Height = -15
              Font.Name = 'Tahoma'
              Font.Style = []
              ParentFont = False
              TabOrder = 0
              OnEnter = edENTREGA_CEPEnter
              OnExit = edENTREGA_CEPExit
            end
            object edENTREGA_ENDERECO: TEdit
              Left = 225
              Top = 10
              Width = 298
              Height = 26
              CharCase = ecUpperCase
              Color = clHighlightText
              Font.Charset = ANSI_CHARSET
              Font.Color = clWindowText
              Font.Height = -15
              Font.Name = 'Tahoma'
              Font.Style = []
              ParentFont = False
              TabOrder = 1
            end
            object edENTREGA_NUMERO: TEdit
              Left = 78
              Top = 42
              Width = 93
              Height = 26
              BiDiMode = bdRightToLeft
              CharCase = ecUpperCase
              Font.Charset = ANSI_CHARSET
              Font.Color = clWindowText
              Font.Height = -15
              Font.Name = 'Tahoma'
              Font.Style = []
              ParentBiDiMode = False
              ParentFont = False
              TabOrder = 2
            end
            object edENTREGA_COMPLEMENTO: TEdit
              Left = 78
              Top = 74
              Width = 445
              Height = 26
              CharCase = ecUpperCase
              Font.Charset = ANSI_CHARSET
              Font.Color = clWindowText
              Font.Height = -15
              Font.Name = 'Tahoma'
              Font.Style = []
              ParentFont = False
              TabOrder = 4
            end
            object edENTREGA_MUNICIPIO: TEdit
              Left = 78
              Top = 104
              Width = 304
              Height = 26
              CharCase = ecUpperCase
              Font.Charset = ANSI_CHARSET
              Font.Color = clWindowText
              Font.Height = -15
              Font.Name = 'Tahoma'
              Font.Style = []
              ParentFont = False
              TabOrder = 5
            end
            object edENTREGA_ZONA: TEdit
              Left = 78
              Top = 136
              Width = 152
              Height = 26
              CharCase = ecUpperCase
              Color = clHighlightText
              Font.Charset = ANSI_CHARSET
              Font.Color = clWindowText
              Font.Height = -15
              Font.Name = 'Tahoma'
              Font.Style = []
              ParentFont = False
              TabOrder = 7
            end
            object edENTREGA_ESTADO: TEdit
              Left = 78
              Top = 168
              Width = 39
              Height = 26
              CharCase = ecUpperCase
              Font.Charset = ANSI_CHARSET
              Font.Color = clWindowText
              Font.Height = -15
              Font.Name = 'Tahoma'
              Font.Style = []
              ParentFont = False
              TabOrder = 9
            end
            object edENTREGA_CODIGO_UF: TEdit
              Left = 174
              Top = 168
              Width = 39
              Height = 26
              CharCase = ecUpperCase
              Font.Charset = ANSI_CHARSET
              Font.Color = clWindowText
              Font.Height = -15
              Font.Name = 'Tahoma'
              Font.Style = []
              ParentFont = False
              TabOrder = 10
            end
            object edENTREGA_PAIS: TEdit
              Left = 252
              Top = 169
              Width = 168
              Height = 26
              CharCase = ecUpperCase
              Font.Charset = ANSI_CHARSET
              Font.Color = clWindowText
              Font.Height = -15
              Font.Name = 'Tahoma'
              Font.Style = []
              ParentFont = False
              TabOrder = 11
            end
            object edENTREGA_CODIGO_PAIS: TEdit
              Left = 481
              Top = 168
              Width = 42
              Height = 26
              CharCase = ecUpperCase
              Font.Charset = ANSI_CHARSET
              Font.Color = clWindowText
              Font.Height = -15
              Font.Name = 'Tahoma'
              Font.Style = []
              ParentFont = False
              TabOrder = 12
            end
            object edENTREGA_CODIGO_MUNICIPIO: TEdit
              Left = 467
              Top = 106
              Width = 60
              Height = 26
              CharCase = ecUpperCase
              Font.Charset = ANSI_CHARSET
              Font.Color = clWindowText
              Font.Height = -15
              Font.Name = 'Tahoma'
              Font.Style = []
              ParentFont = False
              TabOrder = 6
            end
            object bPesqCidadeEntrega: TcxButton
              Left = 384
              Top = 104
              Width = 24
              Height = 26
              LookAndFeel.NativeStyle = False
              LookAndFeel.SkinName = 'Office2013White'
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
              TabOrder = 15
              TabStop = False
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clWindowText
              Font.Height = -11
              Font.Name = 'Tahoma'
              Font.Style = [fsBold]
              ParentFont = False
              OnClick = bPesqCidadeEntregaClick
            end
            object cxButton4: TcxButton
              Left = 236
              Top = 137
              Width = 24
              Height = 26
              LookAndFeel.NativeStyle = False
              LookAndFeel.SkinName = 'Office2013White'
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
              TabStop = False
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clWindowText
              Font.Height = -11
              Font.Name = 'Tahoma'
              Font.Style = [fsBold]
              ParentFont = False
            end
          end
        end
        object cxTabSheet3: TcxTabSheet
          Caption = 'Cobran'#231'a'
          ImageIndex = 2
          object Panel3: TPanel
            Left = 15
            Top = -4
            Width = 530
            Height = 207
            TabOrder = 0
            object TLabel
              Left = 35
              Top = 14
              Width = 35
              Height = 17
              Caption = 'CEP:'
              Font.Charset = ANSI_CHARSET
              Font.Color = clWindowText
              Font.Height = -15
              Font.Name = 'Helvetica Neue'
              Font.Style = []
              ParentFont = False
            end
            object Label21: TLabel
              Left = 188
              Top = 14
              Width = 31
              Height = 17
              Caption = 'Rua:'
              Font.Charset = ANSI_CHARSET
              Font.Color = clWindowText
              Font.Height = -15
              Font.Name = 'Helvetica Neue'
              Font.Style = []
              ParentFont = False
            end
            object Label22: TLabel
              Left = 14
              Top = 47
              Width = 56
              Height = 17
              Caption = 'N'#250'mero:'
              Font.Charset = ANSI_CHARSET
              Font.Color = clWindowText
              Font.Height = -15
              Font.Name = 'Helvetica Neue'
              Font.Style = []
              ParentFont = False
            end
            object TLabel
              Left = 19
              Top = 79
              Width = 51
              Height = 17
              Caption = 'Compl.:'
              Font.Charset = ANSI_CHARSET
              Font.Color = clWindowText
              Font.Height = -15
              Font.Name = 'Helvetica Neue'
              Font.Style = []
              ParentFont = False
            end
            object TLabel
              Left = 6
              Top = 110
              Width = 64
              Height = 17
              Caption = 'Mun'#237'cipio:'
              Font.Charset = ANSI_CHARSET
              Font.Color = clWindowText
              Font.Height = -15
              Font.Name = 'Helvetica Neue'
              Font.Style = []
              ParentFont = False
            end
            object TLabel
              Left = 269
              Top = 142
              Width = 50
              Height = 17
              Caption = 'Regi'#227'o:'
              Font.Charset = ANSI_CHARSET
              Font.Color = clWindowText
              Font.Height = -15
              Font.Name = 'Helvetica Neue'
              Font.Style = []
              ParentFont = False
            end
            object TLabel
              Left = 411
              Top = 110
              Width = 50
              Height = 17
              Caption = 'C'#243'digo:'
              Font.Charset = ANSI_CHARSET
              Font.Color = clWindowText
              Font.Height = -15
              Font.Name = 'Helvetica Neue'
              Font.Style = []
              ParentFont = False
            end
            object Label23: TLabel
              Left = 176
              Top = 47
              Width = 43
              Height = 17
              Caption = 'Bairro:'
              Font.Charset = ANSI_CHARSET
              Font.Color = clWindowText
              Font.Height = -15
              Font.Name = 'Helvetica Neue'
              Font.Style = []
              ParentFont = False
            end
            object TLabel
              Left = 34
              Top = 142
              Width = 36
              Height = 17
              Caption = 'Zona:'
              Font.Charset = ANSI_CHARSET
              Font.Color = clWindowText
              Font.Height = -15
              Font.Name = 'Helvetica Neue'
              Font.Style = []
              ParentFont = False
            end
            object TLabel
              Left = 47
              Top = 173
              Width = 23
              Height = 17
              Caption = 'UF:'
              Font.Charset = ANSI_CHARSET
              Font.Color = clWindowText
              Font.Height = -15
              Font.Name = 'Helvetica Neue'
              Font.Style = []
              ParentFont = False
            end
            object TLabel
              Left = 120
              Top = 172
              Width = 50
              Height = 17
              Caption = 'C'#243'digo:'
              Font.Charset = ANSI_CHARSET
              Font.Color = clWindowText
              Font.Height = -15
              Font.Name = 'Helvetica Neue'
              Font.Style = []
              ParentFont = False
            end
            object TLabel
              Left = 219
              Top = 173
              Width = 33
              Height = 17
              Caption = 'Pa'#237's:'
              Font.Charset = ANSI_CHARSET
              Font.Color = clWindowText
              Font.Height = -15
              Font.Name = 'Helvetica Neue'
              Font.Style = []
              ParentFont = False
            end
            object TLabel
              Left = 426
              Top = 173
              Width = 50
              Height = 17
              Caption = 'C'#243'digo:'
              Font.Charset = ANSI_CHARSET
              Font.Color = clWindowText
              Font.Height = -15
              Font.Name = 'Helvetica Neue'
              Font.Style = []
              ParentFont = False
            end
            object cxButton5: TcxButton
              Left = 501
              Top = 137
              Width = 24
              Height = 26
              LookAndFeel.NativeStyle = False
              LookAndFeel.SkinName = 'Office2013White'
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
              TabOrder = 13
              TabStop = False
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clWindowText
              Font.Height = -11
              Font.Name = 'Tahoma'
              Font.Style = [fsBold]
              ParentFont = False
            end
            object edREG_DESCRICAO_COBRANCA: TEdit
              Left = 366
              Top = 137
              Width = 131
              Height = 26
              TabStop = False
              Color = clSilver
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clWindowText
              Font.Height = -15
              Font.Name = 'Tahoma'
              Font.Style = []
              ParentFont = False
              ReadOnly = True
              TabOrder = 14
            end
            object edCOBRANCA_ID_REGIAO: TEdit
              Left = 325
              Top = 137
              Width = 41
              Height = 26
              CharCase = ecUpperCase
              Color = clHighlightText
              Font.Charset = ANSI_CHARSET
              Font.Color = clWindowText
              Font.Height = -15
              Font.Name = 'Tahoma'
              Font.Style = []
              ParentFont = False
              TabOrder = 8
              OnChange = edCOBRANCA_ID_REGIAOChange
            end
            object edCOBRANCA_BAIRRO: TEdit
              Left = 225
              Top = 42
              Width = 298
              Height = 26
              CharCase = ecUpperCase
              Font.Charset = ANSI_CHARSET
              Font.Color = clWindowText
              Font.Height = -15
              Font.Name = 'Tahoma'
              Font.Style = []
              ParentFont = False
              TabOrder = 3
            end
            object edCOBRANCA_CEP: TEdit
              Left = 78
              Top = 9
              Width = 93
              Height = 26
              CharCase = ecUpperCase
              Font.Charset = ANSI_CHARSET
              Font.Color = clWindowText
              Font.Height = -15
              Font.Name = 'Tahoma'
              Font.Style = []
              ParentFont = False
              TabOrder = 0
              OnEnter = edCOBRANCA_CEPEnter
              OnExit = edCOBRANCA_CEPExit
            end
            object edCOBRANCA_ENDERECO: TEdit
              Left = 225
              Top = 10
              Width = 298
              Height = 26
              CharCase = ecUpperCase
              Color = clHighlightText
              Font.Charset = ANSI_CHARSET
              Font.Color = clWindowText
              Font.Height = -15
              Font.Name = 'Tahoma'
              Font.Style = []
              ParentFont = False
              TabOrder = 1
            end
            object edCOBRANCA_NUMERO: TEdit
              Left = 78
              Top = 41
              Width = 93
              Height = 26
              BiDiMode = bdRightToLeft
              CharCase = ecUpperCase
              Font.Charset = ANSI_CHARSET
              Font.Color = clWindowText
              Font.Height = -15
              Font.Name = 'Tahoma'
              Font.Style = []
              ParentBiDiMode = False
              ParentFont = False
              TabOrder = 2
            end
            object edCOBRANCA_COMPLEMENTO: TEdit
              Left = 78
              Top = 74
              Width = 445
              Height = 26
              CharCase = ecUpperCase
              Font.Charset = ANSI_CHARSET
              Font.Color = clWindowText
              Font.Height = -15
              Font.Name = 'Tahoma'
              Font.Style = []
              ParentFont = False
              TabOrder = 4
            end
            object edCOBRANCA_MUNICIPIO: TEdit
              Left = 76
              Top = 106
              Width = 304
              Height = 26
              CharCase = ecUpperCase
              Font.Charset = ANSI_CHARSET
              Font.Color = clWindowText
              Font.Height = -15
              Font.Name = 'Tahoma'
              Font.Style = []
              ParentFont = False
              TabOrder = 5
            end
            object edCOBRANCA_ZONA: TEdit
              Left = 78
              Top = 136
              Width = 152
              Height = 26
              CharCase = ecUpperCase
              Color = clHighlightText
              Font.Charset = ANSI_CHARSET
              Font.Color = clWindowText
              Font.Height = -15
              Font.Name = 'Tahoma'
              Font.Style = []
              ParentFont = False
              TabOrder = 7
            end
            object edCOBRANCA_ESTADO: TEdit
              Left = 78
              Top = 168
              Width = 39
              Height = 26
              CharCase = ecUpperCase
              Font.Charset = ANSI_CHARSET
              Font.Color = clWindowText
              Font.Height = -15
              Font.Name = 'Tahoma'
              Font.Style = []
              ParentFont = False
              TabOrder = 9
            end
            object edCOBRANCA_CODIGO_UF: TEdit
              Left = 174
              Top = 168
              Width = 39
              Height = 26
              CharCase = ecUpperCase
              Font.Charset = ANSI_CHARSET
              Font.Color = clWindowText
              Font.Height = -15
              Font.Name = 'Tahoma'
              Font.Style = []
              ParentFont = False
              TabOrder = 10
            end
            object edCOBRANCA_PAIS: TEdit
              Left = 252
              Top = 169
              Width = 168
              Height = 26
              CharCase = ecUpperCase
              Font.Charset = ANSI_CHARSET
              Font.Color = clWindowText
              Font.Height = -15
              Font.Name = 'Tahoma'
              Font.Style = []
              ParentFont = False
              TabOrder = 11
            end
            object edCOBRANCA_CODIGO_PAIS: TEdit
              Left = 481
              Top = 168
              Width = 42
              Height = 26
              CharCase = ecUpperCase
              Font.Charset = ANSI_CHARSET
              Font.Color = clWindowText
              Font.Height = -15
              Font.Name = 'Tahoma'
              Font.Style = []
              ParentFont = False
              TabOrder = 12
            end
            object edCOBRANCA_CODIGO_MUNICIPIO: TEdit
              Left = 461
              Top = 106
              Width = 60
              Height = 26
              CharCase = ecUpperCase
              Font.Charset = ANSI_CHARSET
              Font.Color = clWindowText
              Font.Height = -15
              Font.Name = 'Tahoma'
              Font.Style = []
              ParentFont = False
              TabOrder = 6
            end
            object bPesqCidadeCobranca: TcxButton
              Left = 384
              Top = 104
              Width = 24
              Height = 26
              LookAndFeel.NativeStyle = False
              LookAndFeel.SkinName = 'Office2013White'
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
              TabOrder = 15
              TabStop = False
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clWindowText
              Font.Height = -11
              Font.Name = 'Tahoma'
              Font.Style = [fsBold]
              ParentFont = False
              OnClick = bPesqCidadeCobrancaClick
            end
            object cxButton8: TcxButton
              Left = 236
              Top = 137
              Width = 24
              Height = 26
              LookAndFeel.NativeStyle = False
              LookAndFeel.SkinName = 'Office2013White'
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
              TabStop = False
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clWindowText
              Font.Height = -11
              Font.Name = 'Tahoma'
              Font.Style = [fsBold]
              ParentFont = False
            end
          end
        end
      end
      object gpContato: TGroupBox
        Left = 17
        Top = 283
        Width = 762
        Height = 217
        Caption = '  Contatos  '
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -15
        Font.Name = 'Tahoma'
        Font.Style = [fsBold]
        ParentFont = False
        TabOrder = 8
        object pcContatos: TcxPageControl
          AlignWithMargins = True
          Left = 5
          Top = 23
          Width = 752
          Height = 189
          Align = alClient
          TabOrder = 0
          Properties.ActivePage = cxTabSheet6
          Properties.CustomButtons.Buttons = <>
          ClientRectBottom = 185
          ClientRectLeft = 4
          ClientRectRight = 748
          ClientRectTop = 29
          object cxTabSheet4: TcxTabSheet
            Caption = 'Empresa'
            ImageIndex = 0
            ExplicitLeft = 0
            ExplicitTop = 0
            ExplicitWidth = 0
            ExplicitHeight = 0
            object TLabel
              Left = 22
              Top = 19
              Width = 62
              Height = 18
              Caption = 'Telefone:'
              Font.Charset = ANSI_CHARSET
              Font.Color = clWindowText
              Font.Height = -15
              Font.Name = 'Tahoma'
              Font.Style = []
              ParentFont = False
            end
            object TLabel
              Left = 37
              Top = 51
              Width = 47
              Height = 18
              Caption = 'Celular:'
              Font.Charset = ANSI_CHARSET
              Font.Color = clWindowText
              Font.Height = -15
              Font.Name = 'Tahoma'
              Font.Style = []
              ParentFont = False
            end
            object TLabel
              Left = 41
              Top = 84
              Width = 43
              Height = 18
              Caption = 'E-mail:'
              Font.Charset = ANSI_CHARSET
              Font.Color = clWindowText
              Font.Height = -15
              Font.Name = 'Tahoma'
              Font.Style = []
              ParentFont = False
            end
            object TLabel
              Left = 264
              Top = 51
              Width = 60
              Height = 18
              Caption = 'Celular 2:'
              Font.Charset = ANSI_CHARSET
              Font.Color = clWindowText
              Font.Height = -15
              Font.Name = 'Tahoma'
              Font.Style = []
              ParentFont = False
            end
            object TLabel
              Left = 411
              Top = 84
              Width = 43
              Height = 18
              Caption = 'E-mail:'
              Font.Charset = ANSI_CHARSET
              Font.Color = clWindowText
              Font.Height = -15
              Font.Name = 'Tahoma'
              Font.Style = []
              ParentFont = False
            end
            object TLabel
              Left = 515
              Top = 51
              Width = 47
              Height = 18
              Caption = 'Whats:'
              Font.Charset = ANSI_CHARSET
              Font.Color = clWindowText
              Font.Height = -15
              Font.Name = 'Tahoma'
              Font.Style = []
              ParentFont = False
            end
            object TLabel
              Left = 41
              Top = 121
              Width = 43
              Height = 18
              Caption = 'E-mail:'
              Font.Charset = ANSI_CHARSET
              Font.Color = clWindowText
              Font.Height = -15
              Font.Name = 'Tahoma'
              Font.Style = []
              ParentFont = False
            end
            object TLabel
              Left = 426
              Top = 121
              Width = 28
              Height = 18
              Caption = 'Site:'
              Font.Charset = ANSI_CHARSET
              Font.Color = clWindowText
              Font.Height = -15
              Font.Name = 'Tahoma'
              Font.Style = []
              ParentFont = False
            end
            object TLabel
              Left = 262
              Top = 19
              Width = 62
              Height = 18
              Caption = 'Telefone:'
              Font.Charset = ANSI_CHARSET
              Font.Color = clWindowText
              Font.Height = -15
              Font.Name = 'Tahoma'
              Font.Style = []
              ParentFont = False
            end
            object TLabel
              Left = 500
              Top = 19
              Width = 62
              Height = 18
              Caption = 'Telefone:'
              Font.Charset = ANSI_CHARSET
              Font.Color = clWindowText
              Font.Height = -15
              Font.Name = 'Tahoma'
              Font.Style = []
              ParentFont = False
            end
            object edEMAIL: TEdit
              Left = 90
              Top = 80
              Width = 269
              Height = 26
              CharCase = ecLowerCase
              Font.Charset = ANSI_CHARSET
              Font.Color = clWindowText
              Font.Height = -15
              Font.Name = 'Tahoma'
              Font.Style = []
              ParentFont = False
              TabOrder = 6
            end
            object edCELULAR: TEdit
              Left = 90
              Top = 47
              Width = 159
              Height = 26
              CharCase = ecUpperCase
              Font.Charset = ANSI_CHARSET
              Font.Color = clWindowText
              Font.Height = -15
              Font.Name = 'Tahoma'
              Font.Style = []
              ParentFont = False
              TabOrder = 3
            end
            object edTELEFONE: TEdit
              Left = 90
              Top = 15
              Width = 159
              Height = 26
              CharCase = ecUpperCase
              Font.Charset = ANSI_CHARSET
              Font.Color = clWindowText
              Font.Height = -15
              Font.Name = 'Tahoma'
              Font.Style = []
              ParentFont = False
              TabOrder = 0
            end
            object edCELULAR_1: TEdit
              Left = 333
              Top = 47
              Width = 159
              Height = 26
              CharCase = ecUpperCase
              Font.Charset = ANSI_CHARSET
              Font.Color = clWindowText
              Font.Height = -15
              Font.Name = 'Tahoma'
              Font.Style = []
              ParentFont = False
              TabOrder = 4
            end
            object edTELEFONE_1: TEdit
              Left = 333
              Top = 15
              Width = 159
              Height = 26
              CharCase = ecUpperCase
              Font.Charset = ANSI_CHARSET
              Font.Color = clWindowText
              Font.Height = -15
              Font.Name = 'Tahoma'
              Font.Style = []
              ParentFont = False
              TabOrder = 1
            end
            object edEMAIL_1: TEdit
              Left = 462
              Top = 80
              Width = 269
              Height = 26
              CharCase = ecLowerCase
              Font.Charset = ANSI_CHARSET
              Font.Color = clWindowText
              Font.Height = -15
              Font.Name = 'Tahoma'
              Font.Style = []
              ParentFont = False
              TabOrder = 7
            end
            object edWhatsApp: TEdit
              Left = 568
              Top = 47
              Width = 163
              Height = 26
              CharCase = ecUpperCase
              Font.Charset = ANSI_CHARSET
              Font.Color = clWindowText
              Font.Height = -15
              Font.Name = 'Tahoma'
              Font.Style = []
              ParentFont = False
              TabOrder = 5
            end
            object edEMAIL_2: TEdit
              Left = 90
              Top = 117
              Width = 269
              Height = 26
              CharCase = ecLowerCase
              Font.Charset = ANSI_CHARSET
              Font.Color = clWindowText
              Font.Height = -15
              Font.Name = 'Tahoma'
              Font.Style = []
              ParentFont = False
              TabOrder = 8
            end
            object edSite_HomePage: TEdit
              Left = 462
              Top = 117
              Width = 269
              Height = 26
              CharCase = ecLowerCase
              Font.Charset = ANSI_CHARSET
              Font.Color = clWindowText
              Font.Height = -15
              Font.Name = 'Tahoma'
              Font.Style = []
              ParentFont = False
              TabOrder = 9
            end
            object edTELEFONE_2: TEdit
              Left = 568
              Top = 15
              Width = 163
              Height = 26
              CharCase = ecUpperCase
              Font.Charset = ANSI_CHARSET
              Font.Color = clWindowText
              Font.Height = -15
              Font.Name = 'Tahoma'
              Font.Style = []
              ParentFont = False
              TabOrder = 2
            end
          end
          object cxTabSheet5: TcxTabSheet
            Caption = 'Propriet'#225'rio'
            ImageIndex = 0
            ExplicitLeft = 0
            ExplicitTop = 0
            ExplicitWidth = 0
            ExplicitHeight = 0
            object TLabel
              Left = 20
              Top = 15
              Width = 77
              Height = 18
              Caption = 'Propriet'#225'rio:'
              Font.Charset = ANSI_CHARSET
              Font.Color = clWindowText
              Font.Height = -15
              Font.Name = 'Tahoma'
              Font.Style = []
              ParentFont = False
            end
            object TLabel
              Left = 50
              Top = 51
              Width = 47
              Height = 18
              Caption = 'Celular:'
              Font.Charset = ANSI_CHARSET
              Font.Color = clWindowText
              Font.Height = -15
              Font.Name = 'Tahoma'
              Font.Style = []
              ParentFont = False
            end
            object TLabel
              Left = 54
              Top = 89
              Width = 43
              Height = 18
              Caption = 'E-mail:'
              Font.Charset = ANSI_CHARSET
              Font.Color = clWindowText
              Font.Height = -15
              Font.Name = 'Tahoma'
              Font.Style = []
              ParentFont = False
            end
            object TLabel
              Left = 335
              Top = 17
              Width = 62
              Height = 18
              Caption = 'Telefone:'
              Font.Charset = ANSI_CHARSET
              Font.Color = clWindowText
              Font.Height = -15
              Font.Name = 'Tahoma'
              Font.Style = []
              ParentFont = False
            end
            object TLabel
              Left = 514
              Top = 51
              Width = 47
              Height = 18
              Caption = 'Whats:'
              Font.Charset = ANSI_CHARSET
              Font.Color = clWindowText
              Font.Height = -15
              Font.Name = 'Tahoma'
              Font.Style = []
              ParentFont = False
            end
            object TLabel
              Left = 275
              Top = 51
              Width = 60
              Height = 18
              Caption = 'Celular 2:'
              Font.Charset = ANSI_CHARSET
              Font.Color = clWindowText
              Font.Height = -15
              Font.Name = 'Tahoma'
              Font.Style = []
              ParentFont = False
            end
            object TLabel
              Left = 408
              Top = 89
              Width = 43
              Height = 18
              Caption = 'E-mail:'
              Font.Charset = ANSI_CHARSET
              Font.Color = clWindowText
              Font.Height = -15
              Font.Name = 'Tahoma'
              Font.Style = []
              ParentFont = False
            end
            object TLabel
              Left = 576
              Top = 17
              Width = 45
              Height = 18
              Caption = 'Ramal:'
              Font.Charset = ANSI_CHARSET
              Font.Color = clWindowText
              Font.Height = -15
              Font.Name = 'Tahoma'
              Font.Style = []
              ParentFont = False
            end
            object edPROPRIETARIO_NOME: TEdit
              Left = 103
              Top = 11
              Width = 216
              Height = 26
              CharCase = ecUpperCase
              Font.Charset = ANSI_CHARSET
              Font.Color = clWindowText
              Font.Height = -15
              Font.Name = 'Tahoma'
              Font.Style = []
              ParentFont = False
              TabOrder = 0
            end
            object edPROPRIETARIO_EMAIL1: TEdit
              Left = 103
              Top = 85
              Width = 269
              Height = 26
              CharCase = ecLowerCase
              Font.Charset = ANSI_CHARSET
              Font.Color = clWindowText
              Font.Height = -15
              Font.Name = 'Tahoma'
              Font.Style = []
              ParentFont = False
              TabOrder = 6
            end
            object edPROPRIETARIO_FONE: TEdit
              Left = 403
              Top = 13
              Width = 164
              Height = 26
              CharCase = ecUpperCase
              Font.Charset = ANSI_CHARSET
              Font.Color = clWindowText
              Font.Height = -15
              Font.Name = 'Tahoma'
              Font.Style = []
              ParentFont = False
              TabOrder = 1
            end
            object edPROPRIETARIO_WHATSAPP: TEdit
              Left = 570
              Top = 47
              Width = 159
              Height = 26
              CharCase = ecUpperCase
              Font.Charset = ANSI_CHARSET
              Font.Color = clWindowText
              Font.Height = -15
              Font.Name = 'Tahoma'
              Font.Style = []
              ParentFont = False
              TabOrder = 5
            end
            object edPROPRIETARIO_CELULAR1: TEdit
              Left = 103
              Top = 47
              Width = 159
              Height = 26
              CharCase = ecUpperCase
              Font.Charset = ANSI_CHARSET
              Font.Color = clWindowText
              Font.Height = -15
              Font.Name = 'Tahoma'
              Font.Style = []
              ParentFont = False
              TabOrder = 3
            end
            object edPROPRIETARIO_CELULAR2: TEdit
              Left = 349
              Top = 45
              Width = 159
              Height = 26
              CharCase = ecUpperCase
              Font.Charset = ANSI_CHARSET
              Font.Color = clWindowText
              Font.Height = -15
              Font.Name = 'Tahoma'
              Font.Style = []
              ParentFont = False
              TabOrder = 4
            end
            object edPROPRIETARIO_EMAIL2: TEdit
              Left = 460
              Top = 85
              Width = 269
              Height = 26
              CharCase = ecLowerCase
              Font.Charset = ANSI_CHARSET
              Font.Color = clWindowText
              Font.Height = -15
              Font.Name = 'Tahoma'
              Font.Style = []
              ParentFont = False
              TabOrder = 7
            end
            object edPROPRIETARIO_RAMAL: TEdit
              Left = 627
              Top = 15
              Width = 101
              Height = 26
              CharCase = ecUpperCase
              Font.Charset = ANSI_CHARSET
              Font.Color = clWindowText
              Font.Height = -15
              Font.Name = 'Tahoma'
              Font.Style = []
              ParentFont = False
              TabOrder = 2
            end
          end
          object cxTabSheet6: TcxTabSheet
            Caption = 'Respons'#225'vel'
            ImageIndex = 2
            object TLabel
              Left = 11
              Top = 15
              Width = 86
              Height = 18
              Caption = 'Respons'#225'vel:'
              Font.Charset = ANSI_CHARSET
              Font.Color = clWindowText
              Font.Height = -15
              Font.Name = 'Tahoma'
              Font.Style = []
              ParentFont = False
            end
            object TLabel
              Left = 50
              Top = 51
              Width = 47
              Height = 18
              Caption = 'Celular:'
              Font.Charset = ANSI_CHARSET
              Font.Color = clWindowText
              Font.Height = -15
              Font.Name = 'Tahoma'
              Font.Style = []
              ParentFont = False
            end
            object TLabel
              Left = 54
              Top = 89
              Width = 43
              Height = 18
              Caption = 'E-mail:'
              Font.Charset = ANSI_CHARSET
              Font.Color = clWindowText
              Font.Height = -15
              Font.Name = 'Tahoma'
              Font.Style = []
              ParentFont = False
            end
            object TLabel
              Left = 275
              Top = 51
              Width = 60
              Height = 18
              Caption = 'Celular 2:'
              Font.Charset = ANSI_CHARSET
              Font.Color = clWindowText
              Font.Height = -15
              Font.Name = 'Tahoma'
              Font.Style = []
              ParentFont = False
            end
            object TLabel
              Left = 335
              Top = 17
              Width = 62
              Height = 18
              Caption = 'Telefone:'
              Font.Charset = ANSI_CHARSET
              Font.Color = clWindowText
              Font.Height = -15
              Font.Name = 'Tahoma'
              Font.Style = []
              ParentFont = False
            end
            object TLabel
              Left = 408
              Top = 89
              Width = 43
              Height = 18
              Caption = 'E-mail:'
              Font.Charset = ANSI_CHARSET
              Font.Color = clWindowText
              Font.Height = -15
              Font.Name = 'Tahoma'
              Font.Style = []
              ParentFont = False
            end
            object TLabel
              Left = 514
              Top = 51
              Width = 47
              Height = 18
              Caption = 'Whats:'
              Font.Charset = ANSI_CHARSET
              Font.Color = clWindowText
              Font.Height = -15
              Font.Name = 'Tahoma'
              Font.Style = []
              ParentFont = False
            end
            object TLabel
              Left = 576
              Top = 17
              Width = 45
              Height = 18
              Caption = 'Ramal:'
              Font.Charset = ANSI_CHARSET
              Font.Color = clWindowText
              Font.Height = -15
              Font.Name = 'Tahoma'
              Font.Style = []
              ParentFont = False
            end
            object edCONTATO_EMAIL1: TEdit
              Left = 103
              Top = 85
              Width = 269
              Height = 26
              CharCase = ecLowerCase
              Font.Charset = ANSI_CHARSET
              Font.Color = clWindowText
              Font.Height = -15
              Font.Name = 'Tahoma'
              Font.Style = []
              ParentFont = False
              TabOrder = 6
            end
            object edCONTATO_CELULAR: TEdit
              Left = 103
              Top = 47
              Width = 159
              Height = 26
              CharCase = ecUpperCase
              Font.Charset = ANSI_CHARSET
              Font.Color = clWindowText
              Font.Height = -15
              Font.Name = 'Tahoma'
              Font.Style = []
              ParentFont = False
              TabOrder = 3
            end
            object edCONTATO_NOME: TEdit
              Left = 103
              Top = 11
              Width = 216
              Height = 26
              CharCase = ecUpperCase
              Font.Charset = ANSI_CHARSET
              Font.Color = clWindowText
              Font.Height = -15
              Font.Name = 'Tahoma'
              Font.Style = []
              ParentFont = False
              TabOrder = 0
            end
            object edCONTATO_CELULAR2: TEdit
              Left = 346
              Top = 47
              Width = 159
              Height = 26
              CharCase = ecUpperCase
              Font.Charset = ANSI_CHARSET
              Font.Color = clWindowText
              Font.Height = -15
              Font.Name = 'Tahoma'
              Font.Style = []
              ParentFont = False
              TabOrder = 4
            end
            object edCONTATO_FONE: TEdit
              Left = 403
              Top = 13
              Width = 164
              Height = 26
              CharCase = ecUpperCase
              Font.Charset = ANSI_CHARSET
              Font.Color = clWindowText
              Font.Height = -15
              Font.Name = 'Tahoma'
              Font.Style = []
              ParentFont = False
              TabOrder = 1
            end
            object edCONTATO_EMAIL2: TEdit
              Left = 460
              Top = 85
              Width = 269
              Height = 26
              CharCase = ecLowerCase
              Font.Charset = ANSI_CHARSET
              Font.Color = clWindowText
              Font.Height = -15
              Font.Name = 'Tahoma'
              Font.Style = []
              ParentFont = False
              TabOrder = 7
            end
            object edCONTATO_WHATSAPP: TEdit
              Left = 570
              Top = 47
              Width = 159
              Height = 26
              CharCase = ecUpperCase
              Font.Charset = ANSI_CHARSET
              Font.Color = clWindowText
              Font.Height = -15
              Font.Name = 'Tahoma'
              Font.Style = []
              ParentFont = False
              TabOrder = 5
            end
            object edCONTATO_RAMAL: TEdit
              Left = 628
              Top = 13
              Width = 101
              Height = 26
              CharCase = ecUpperCase
              Font.Charset = ANSI_CHARSET
              Font.Color = clWindowText
              Font.Height = -15
              Font.Name = 'Tahoma'
              Font.Style = []
              ParentFont = False
              TabOrder = 2
            end
          end
        end
      end
      object PageControl1: TPageControl
        Left = 17
        Top = 70
        Width = 762
        Height = 160
        ActivePage = tsPessoaJuridica
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -15
        Font.Name = 'Tahoma'
        Font.Style = [fsBold]
        ParentFont = False
        TabOrder = 4
        object tsPessoaFisica: TTabSheet
          Caption = 'Pessoa F'#237'sica'
          ExplicitLeft = 0
          ExplicitTop = 0
          ExplicitWidth = 0
          ExplicitHeight = 0
          object Label25: TLabel
            Left = 70
            Top = 39
            Width = 44
            Height = 18
            Caption = 'Nome:'
            Font.Charset = ANSI_CHARSET
            Font.Color = clWindowText
            Font.Height = -15
            Font.Name = 'Tahoma'
            Font.Style = []
            ParentFont = False
          end
          object Label3: TLabel
            Left = 83
            Top = 6
            Width = 30
            Height = 18
            Caption = 'CPF:'
            Font.Charset = ANSI_CHARSET
            Font.Color = clWindowText
            Font.Height = -15
            Font.Name = 'Tahoma'
            Font.Style = []
            ParentFont = False
          end
          object lblRG: TLabel
            Left = 289
            Top = 41
            Width = 24
            Height = 18
            Caption = 'RG:'
            Font.Charset = ANSI_CHARSET
            Font.Color = clWindowText
            Font.Height = -15
            Font.Name = 'Tahoma'
            Font.Style = []
            ParentFont = False
          end
          object Label4: TLabel
            Left = 578
            Top = 6
            Width = 37
            Height = 18
            Caption = 'Sexo:'
            Font.Charset = ANSI_CHARSET
            Font.Color = clWindowText
            Font.Height = -15
            Font.Name = 'Tahoma'
            Font.Style = []
            ParentFont = False
          end
          object Label6: TLabel
            Left = 244
            Top = 72
            Width = 89
            Height = 18
            Caption = 'Org. Emissor:'
            Font.Charset = ANSI_CHARSET
            Font.Color = clWindowText
            Font.Height = -15
            Font.Name = 'Tahoma'
            Font.Style = []
            ParentFont = False
          end
          object Label30: TLabel
            Left = 418
            Top = 72
            Width = 62
            Height = 17
            Caption = 'Emiss'#227'o:'
            Font.Charset = ANSI_CHARSET
            Font.Color = clWindowText
            Font.Height = -15
            Font.Name = 'Helvetica Neue'
            Font.Style = []
            ParentFont = False
          end
          object Label5: TLabel
            Left = 320
            Top = 6
            Width = 81
            Height = 18
            Caption = 'Nascimento:'
            Font.Charset = ANSI_CHARSET
            Font.Color = clWindowText
            Font.Height = -15
            Font.Name = 'Tahoma'
            Font.Style = []
            ParentFont = False
          end
          object Label19: TLabel
            Left = 93
            Top = 104
            Width = 19
            Height = 18
            Caption = 'IE:'
            Font.Charset = ANSI_CHARSET
            Font.Color = clWindowText
            Font.Height = -15
            Font.Name = 'Tahoma'
            Font.Style = []
            ParentFont = False
          end
          object Label28: TLabel
            Left = 90
            Top = 72
            Width = 24
            Height = 18
            Caption = 'RG:'
            Font.Charset = ANSI_CHARSET
            Font.Color = clWindowText
            Font.Height = -15
            Font.Name = 'Tahoma'
            Font.Style = []
            ParentFont = False
          end
          object edRG: TEdit
            Left = 119
            Top = 69
            Width = 121
            Height = 26
            CharCase = ecUpperCase
            Font.Charset = ANSI_CHARSET
            Font.Color = clWindowText
            Font.Height = -15
            Font.Name = 'Tahoma'
            Font.Style = []
            ParentFont = False
            TabOrder = 4
          end
          object edORGAO_EMISSOR: TEdit
            Left = 338
            Top = 69
            Width = 75
            Height = 26
            Font.Charset = ANSI_CHARSET
            Font.Color = clWindowText
            Font.Height = -15
            Font.Name = 'Tahoma'
            Font.Style = []
            ParentFont = False
            TabOrder = 5
          end
          object edINSCRICAO_ESTADUAL_PF: TEdit
            Left = 119
            Top = 101
            Width = 121
            Height = 26
            CharCase = ecUpperCase
            Font.Charset = ANSI_CHARSET
            Font.Color = clWindowText
            Font.Height = -15
            Font.Name = 'Tahoma'
            Font.Style = []
            ParentFont = False
            TabOrder = 7
          end
          object edDATA_EMISSAO: TcxDateEdit
            Left = 487
            Top = 69
            ParentFont = False
            Style.Font.Charset = ANSI_CHARSET
            Style.Font.Color = clWindowText
            Style.Font.Height = -15
            Style.Font.Name = 'Tahoma'
            Style.Font.Style = []
            Style.IsFontAssigned = True
            TabOrder = 6
            Width = 95
          end
          object edCPF: TMaskEdit
            Tag = 1
            Left = 119
            Top = 3
            Width = 136
            Height = 26
            Hint = 'CPF'
            CharCase = ecUpperCase
            Font.Charset = ANSI_CHARSET
            Font.Color = clWindowText
            Font.Height = -15
            Font.Name = 'Tahoma'
            Font.Style = []
            ParentFont = False
            TabOrder = 0
            Text = ''
            OnExit = edCPFExit
          end
          object edDATA_NASCIMENTO: TMaskEdit
            Left = 407
            Top = 3
            Width = 73
            Height = 26
            EditMask = '!99/99/00;1;_'
            Font.Charset = ANSI_CHARSET
            Font.Color = clWindowText
            Font.Height = -15
            Font.Name = 'Tahoma'
            Font.Style = []
            MaxLength = 8
            ParentFont = False
            ReadOnly = True
            TabOrder = 1
            Text = '  /  /  '
          end
          object cbSexo: TComboBox
            Left = 622
            Top = 3
            Width = 121
            Height = 26
            Font.Charset = ANSI_CHARSET
            Font.Color = clWindowText
            Font.Height = -15
            Font.Name = 'Tahoma'
            Font.Style = []
            ParentFont = False
            TabOrder = 2
            Items.Strings = (
              'MASCULINO'
              'FEMININO')
          end
          object edNOME: TEdit
            Tag = 1
            Left = 120
            Top = 35
            Width = 622
            Height = 26
            Color = 15132390
            Font.Charset = ANSI_CHARSET
            Font.Color = clBlue
            Font.Height = -15
            Font.Name = 'Tahoma'
            Font.Style = [fsBold]
            MaxLength = 200
            ParentFont = False
            TabOrder = 3
          end
        end
        object tsPessoaJuridica: TTabSheet
          Caption = 'Pessoa Jur'#237'dica'
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Height = -15
          Font.Name = 'Tahoma'
          Font.Style = [fsBold]
          ImageIndex = 1
          ParentFont = False
          object lbl2: TLabel
            Left = 29
            Top = 39
            Width = 85
            Height = 18
            Caption = 'Raz'#227'o Social:'
            Font.Charset = ANSI_CHARSET
            Font.Color = clBlack
            Font.Height = -15
            Font.Name = 'Tahoma'
            Font.Style = []
            ParentFont = False
          end
          object lbl3: TLabel
            Left = 11
            Top = 71
            Width = 103
            Height = 18
            Caption = 'Nome Fantasia:'
            Font.Charset = ANSI_CHARSET
            Font.Color = clBlack
            Font.Height = -15
            Font.Name = 'Tahoma'
            Font.Style = []
            ParentFont = False
          end
          object lbl4: TLabel
            Left = 22
            Top = 103
            Width = 92
            Height = 18
            Caption = 'Insc Estadual:'
            Font.Charset = ANSI_CHARSET
            Font.Color = clBlack
            Font.Height = -15
            Font.Name = 'Tahoma'
            Font.Style = []
            ParentFont = False
          end
          object lbl5: TLabel
            Left = 464
            Top = 103
            Width = 113
            Height = 18
            Caption = 'Sit. Tribut. ICMS:'
            Font.Charset = ANSI_CHARSET
            Font.Color = clWindowText
            Font.Height = -15
            Font.Name = 'Tahoma'
            Font.Style = []
            ParentFont = False
          end
          object lbl7: TLabel
            Left = 74
            Top = 6
            Width = 38
            Height = 18
            Caption = 'CNPJ:'
            Font.Charset = ANSI_CHARSET
            Font.Color = clBlack
            Font.Height = -15
            Font.Name = 'Tahoma'
            Font.Style = []
            ParentFont = False
          end
          object lbl8: TLabel
            Left = 234
            Top = 103
            Width = 95
            Height = 18
            Caption = 'Insc Municipal:'
            Font.Charset = ANSI_CHARSET
            Font.Color = clWindowText
            Font.Height = -15
            Font.Name = 'Tahoma'
            Font.Style = []
            ParentFont = False
          end
          object Label17: TLabel
            Left = 575
            Top = 71
            Width = 60
            Height = 18
            Caption = 'Suframa:'
            Font.Charset = ANSI_CHARSET
            Font.Color = clWindowText
            Font.Height = -15
            Font.Name = 'Tahoma'
            Font.Style = []
            ParentFont = False
          end
          object Label26: TLabel
            Left = 132
            Top = 145
            Width = 526
            Height = 18
            Caption = 
              'Programador: Campos obrigat'#243'rios devem ter a propriedade "TAG" =' +
              ' 1'
            Font.Charset = ANSI_CHARSET
            Font.Color = clRed
            Font.Height = -15
            Font.Name = 'Tahoma'
            Font.Style = [fsBold]
            ParentFont = False
            Visible = False
          end
          object edINSCRICAO_ESTADUAL_PJ: TEdit
            Left = 119
            Top = 99
            Width = 102
            Height = 26
            CharCase = ecUpperCase
            Font.Charset = ANSI_CHARSET
            Font.Color = clWindowText
            Font.Height = -15
            Font.Name = 'Tahoma'
            Font.Style = []
            ParentFont = False
            TabOrder = 4
          end
          object edINSCRICAO_MUNICIPAL: TEdit
            Left = 335
            Top = 99
            Width = 102
            Height = 26
            Font.Charset = ANSI_CHARSET
            Font.Color = clWindowText
            Font.Height = -15
            Font.Name = 'Tahoma'
            Font.Style = []
            ParentFont = False
            TabOrder = 5
          end
          object edFANTASIA: TEdit
            Tag = 1
            Left = 119
            Top = 67
            Width = 398
            Height = 26
            CharCase = ecUpperCase
            Font.Charset = ANSI_CHARSET
            Font.Color = clWindowText
            Font.Height = -15
            Font.Name = 'Tahoma'
            Font.Style = [fsBold]
            MaxLength = 200
            ParentFont = False
            TabOrder = 2
          end
          object edCNPJ: TMaskEdit
            Tag = 1
            Left = 119
            Top = 3
            Width = 136
            Height = 26
            Font.Charset = ANSI_CHARSET
            Font.Color = clWindowText
            Font.Height = -15
            Font.Name = 'Tahoma'
            Font.Style = []
            ParentFont = False
            TabOrder = 0
            Text = ''
            OnExit = edCNPJExit
          end
          object cbTRIBUTACAO_ICMS: TDBComboBox
            Left = 580
            Top = 99
            Width = 162
            Height = 26
            ParentCustomHint = False
            Style = csDropDownList
            AutoComplete = False
            AutoDropDown = True
            CharCase = ecUpperCase
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -15
            Font.Name = 'Tahoma'
            Font.Style = []
            Items.Strings = (
              'CONTRIBUINTE'
              'ISENTO'
              'N'#195'O CONTRIBUINTE')
            ParentFont = False
            ParentShowHint = False
            ShowHint = False
            TabOrder = 6
          end
          object edSUFRAMA: TEdit
            Left = 640
            Top = 67
            Width = 102
            Height = 26
            CharCase = ecUpperCase
            Font.Charset = ANSI_CHARSET
            Font.Color = clWindowText
            Font.Height = -15
            Font.Name = 'Tahoma'
            Font.Style = []
            MaxLength = 9
            ParentFont = False
            TabOrder = 3
          end
          object btn_ConsultaCNPJ: TcxButton
            Left = 255
            Top = 3
            Width = 25
            Height = 26
            Hint = 'Consulta CNPJ na Receita Federal. Necess'#225'rio acesso internet.'
            LookAndFeel.Kind = lfOffice11
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
            ParentShowHint = False
            ShowHint = True
            TabOrder = 7
            OnClick = btn_ConsultaCNPJClick
          end
          object edRAZAO_SOCIAL: TEdit
            Tag = 1
            Left = 119
            Top = 35
            Width = 622
            Height = 26
            Color = 15132390
            Font.Charset = ANSI_CHARSET
            Font.Color = clBlue
            Font.Height = -15
            Font.Name = 'Tahoma'
            Font.Style = [fsBold]
            MaxLength = 200
            ParentFont = False
            TabOrder = 1
          end
        end
      end
      object rgPessoa: TRadioGroup
        Tag = 1
        Left = 76
        Top = 13
        Width = 165
        Height = 56
        Hint = 'Pessoa F'#237'sica ou Jur'#237'dica'
        Caption = ' Pessoa'
        Columns = 2
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -15
        Font.Name = 'Tahoma'
        Font.Style = [fsBold]
        Items.Strings = (
          'F'#237'sica'
          'Jur'#237'dica')
        ParentFont = False
        TabOrder = 1
        OnClick = rgPessoaClick
      end
      object cbSITUACAO_FINANCEIRA: TDBComboBox
        Left = 162
        Top = 231
        Width = 146
        Height = 22
        Style = csOwnerDrawFixed
        CharCase = ecUpperCase
        DataField = 'SITUACAO_FINANCEIRA'
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -15
        Font.Name = 'Tahoma'
        Font.Style = []
        Items.Strings = (
          'ATIVO'
          'BLOQUEADO PARCIAL'
          'BLOQUEADO')
        ParentFont = False
        TabOrder = 5
      end
      object edLIMITE_CREDITO: TEdit
        Left = 440
        Top = 231
        Width = 121
        Height = 26
        TabOrder = 6
        OnExit = edLIMITE_CREDITOExit
      end
      object edID_CAD_RAMO_ATIVIDADE: TEdit
        Left = 113
        Top = 259
        Width = 49
        Height = 26
        CharCase = ecUpperCase
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -15
        Font.Name = 'Tahoma'
        Font.Style = []
        ParentFont = False
        TabOrder = 7
        OnExit = edID_CAD_RAMO_ATIVIDADEExit
      end
      object edRAMO_ATIVIDADE_DESCRICAO: TEdit
        Left = 163
        Top = 259
        Width = 568
        Height = 26
        TabStop = False
        Color = clSilver
        Enabled = False
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -15
        Font.Name = 'Tahoma'
        Font.Style = []
        ParentFont = False
        ReadOnly = True
        TabOrder = 22
      end
      object cbATIVIDADE: TcxButton
        Left = 734
        Top = 258
        Width = 25
        Height = 27
        LookAndFeel.Kind = lfOffice11
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
        TabOrder = 23
        TabStop = False
        OnClick = cbATIVIDADEClick
      end
      object btComplementoDeDados: TcxButton
        Left = 575
        Top = 233
        Width = 180
        Height = 22
        Caption = 'Complemento de Dados'
        Enabled = False
        LookAndFeel.NativeStyle = False
        LookAndFeel.SkinName = 'Metropolis'
        OptionsImage.Glyph.Data = {
          36040000424D3604000000000000360000002800000010000000100000000100
          2000000000000004000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000B8824DFFB882
          4DFFB8824DFF251A0F3300000000000000000000000000000000000000000000
          0000848484FF848484FF848484FF848484FF848484FFFFFFFFFFB8824DFFB882
          4DFFF1E6DBFFB8824DFF251A0F33000000000000000000000000000000000000
          0000848484FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFB8824DFFF1E6
          DBFFB8824DFFB8824DFFB8824DFF251A0F330000000000000000000000000000
          0000848484FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF1E6DBFFB882
          4DFFB8824DFFB8824DFFB8824DFFB8824DFF251A0F3300000000000000000000
          0000848484FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF1E6
          DBFFB8824DFFB8824DFFB8824DFFB8824DFFB8824DFF251A0F33000000000000
          0000848484FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFF1E6DBFFB8824DFFB8824DFFB8824DFF251A0F33B8824DFF000000000000
          0000848484FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFF1E6DBFFB8824DFFF1E6DBFFB8824DFFB8824DFF000000000000
          0000848484FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFF1E6DBFFB8824DFFB8824DFF251A0F33000000000000
          0000848484FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF0000000000000000000000000000
          0000848484FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFF848484FF0000000000000000000000000000
          0000848484FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFF848484FF0000000000000000000000000000
          0000848484FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFF848484FF848484FF848484FF848484FF0000000000000000000000000000
          0000848484FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFF848484FFFAFAFAFA7B7B7BDD1A1A1A330000000000000000000000000000
          0000848484FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFF848484FF7B7B7BDD1A1A1A33000000000000000000000000000000000000
          0000848484FF848484FF848484FF848484FF848484FF848484FF848484FF8383
          83FE848484FF1A1A1A3300000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000}
        TabOrder = 24
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'Tahoma'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object GroupBox1: TGroupBox
        Left = 712
        Top = 11
        Width = 494
        Height = 62
        Caption = '  '#218'ltima Altera'#231#227'o '
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -15
        Font.Name = 'Tahoma'
        Font.Style = [fsBold]
        ParentFont = False
        TabOrder = 25
        object Label29: TLabel
          Left = 2
          Top = 17
          Width = 482
          Height = 16
          Caption = 
            'Data           Hora    Empresa             Usu'#225'rio              ' +
            '       Terminal          Hist'#243'rico'
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Tahoma'
          Font.Style = []
          ParentFont = False
        end
        object edUSUALTEROU: TEdit
          Tag = 3
          Left = 216
          Top = 32
          Width = 126
          Height = 22
          CharCase = ecUpperCase
          Color = clSilver
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Height = -12
          Font.Name = 'Tahoma'
          Font.Style = []
          ParentFont = False
          TabOrder = 0
        end
        object edDTALTEROU: TMaskEdit
          Tag = 3
          Left = 3
          Top = 32
          Width = 64
          Height = 22
          Hint = 'Data em que ficou inativo'
          Color = clSilver
          EditMask = '!99/99/00;1;_'
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Height = -12
          Font.Name = 'Tahoma'
          Font.Style = []
          MaxLength = 8
          ParentFont = False
          ReadOnly = True
          TabOrder = 1
          Text = '  /  /  '
        end
        object edHRALTEROU: TEdit
          Left = 69
          Top = 32
          Width = 44
          Height = 22
          CharCase = ecUpperCase
          Color = clSilver
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Height = -12
          Font.Name = 'Tahoma'
          Font.Style = []
          ParentFont = False
          TabOrder = 2
        end
        object edMAQALTEROU: TMaskEdit
          Tag = 3
          Left = 344
          Top = 32
          Width = 88
          Height = 22
          TabStop = False
          Color = clSilver
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Height = -12
          Font.Name = 'Tahoma'
          Font.Style = []
          ParentFont = False
          ReadOnly = True
          TabOrder = 3
          Text = ''
        end
        object bHistoricoAlteracoes: TcxButton
          Left = 433
          Top = 32
          Width = 56
          Height = 22
          Hint = 'Hist'#243'rico de Bloqueios'
          LookAndFeel.Kind = lfOffice11
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
          ParentShowHint = False
          ShowHint = True
          TabOrder = 4
          OnClick = bHistoricoAlteracoesClick
        end
        object edEMP_ALTEROU: TMaskEdit
          Tag = 3
          Left = 115
          Top = 32
          Width = 100
          Height = 22
          TabStop = False
          Color = clSilver
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Height = -12
          Font.Name = 'Tahoma'
          Font.Style = []
          ParentFont = False
          ReadOnly = True
          TabOrder = 5
          Text = ''
        end
      end
      object chk_concerssionaria: TcxCheckBox
        Left = 907
        Top = -1
        Caption = 'Concession'#225'ria'
        Enabled = False
        ParentBackground = False
        ParentColor = False
        ParentFont = False
        Properties.Alignment = taLeftJustify
        Style.BorderColor = clWindow
        Style.Color = clRed
        Style.Font.Charset = ANSI_CHARSET
        Style.Font.Color = clRed
        Style.Font.Height = -12
        Style.Font.Name = 'Tahoma'
        Style.Font.Style = [fsBold]
        Style.LookAndFeel.NativeStyle = False
        Style.LookAndFeel.SkinName = 'Office2013White'
        Style.Shadow = False
        Style.IsFontAssigned = True
        StyleDisabled.LookAndFeel.NativeStyle = False
        StyleDisabled.LookAndFeel.SkinName = 'Office2013White'
        StyleDisabled.TextColor = clRed
        StyleFocused.LookAndFeel.NativeStyle = False
        StyleFocused.LookAndFeel.SkinName = 'Office2013White'
        StyleHot.LookAndFeel.NativeStyle = False
        StyleHot.LookAndFeel.SkinName = 'Office2013White'
        TabOrder = 20
        Transparent = True
      end
      object chk_rural: TcxCheckBox
        Left = 1024
        Top = 0
        Caption = 'Produtor Rural'
        Enabled = False
        ParentBackground = False
        ParentColor = False
        ParentFont = False
        Properties.Alignment = taLeftJustify
        Style.BorderColor = clWindow
        Style.Color = clRed
        Style.Font.Charset = ANSI_CHARSET
        Style.Font.Color = clRed
        Style.Font.Height = -12
        Style.Font.Name = 'Tahoma'
        Style.Font.Style = [fsBold]
        Style.LookAndFeel.NativeStyle = False
        Style.LookAndFeel.SkinName = 'Office2013White'
        Style.Shadow = False
        Style.IsFontAssigned = True
        StyleDisabled.LookAndFeel.NativeStyle = False
        StyleDisabled.LookAndFeel.SkinName = 'Office2013White'
        StyleDisabled.TextColor = clRed
        StyleFocused.LookAndFeel.NativeStyle = False
        StyleFocused.LookAndFeel.SkinName = 'Office2013White'
        StyleHot.LookAndFeel.NativeStyle = False
        StyleHot.LookAndFeel.SkinName = 'Office2013White'
        TabOrder = 19
        Transparent = True
      end
      object pnControles: TPanel
        Left = 862
        Top = 458
        Width = 502
        Height = 49
        Color = 8421440
        ParentBackground = False
        TabOrder = 26
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
  object qConsulta: TFDQuery
    Connection = Module.connection
    SQL.Strings = (
      'Select * from cliente'
      '')
    Left = 520
    Top = 99
    object qConsultacodigo: TFDAutoIncField
      FieldName = 'codigo'
      Origin = 'CODIGO'
      ProviderFlags = [pfInWhere, pfInKey]
      ReadOnly = True
    end
    object qConsultadata_cadastro: TDateField
      AutoGenerateValue = arDefault
      FieldName = 'data_cadastro'
      Origin = 'DATA_CADASTRO'
    end
    object qConsultasituacao_financeira: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'situacao_financeira'
      Origin = 'SITUACAO_FINANCEIRA'
      FixedChar = True
      Size = 17
    end
    object qConsultapessoa_tipo: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'pessoa_tipo'
      Origin = 'PESSOA_TIPO'
      FixedChar = True
      Size = 8
    end
    object qConsultarazao_social: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'razao_social'
      Origin = 'RAZAO_SOCIAL'
      Size = 200
    end
    object qConsultafantasia: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'fantasia'
      Origin = 'FANTASIA'
      Size = 200
    end
    object qConsultacpf: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'cpf'
      Origin = 'CPF'
    end
    object qConsultacnpj: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'cnpj'
      Origin = 'CNPJ'
      Size = 50
    end
    object qConsultainscricao_estadual: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'inscricao_estadual'
      Origin = 'INSCRICAO_ESTADUAL'
      Size = 50
    end
    object qConsultastatus_cadastral: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'status_cadastral'
      Origin = 'STATUS_CADASTRAL'
      FixedChar = True
      Size = 7
    end
    object qConsultamunicipio: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'municipio'
      Origin = 'MUNICIPIO'
      Size = 100
    end
    object qConsultaestado: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'estado'
      Origin = 'ESTADO'
      Size = 100
    end
    object qConsultatelefone: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'telefone'
      Origin = 'TELEFONE'
      Size = 50
    end
    object qConsultacelular: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'celular'
      Origin = 'CELULAR'
      Size = 50
    end
    object qConsultarota: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'rota'
      Origin = 'ROTA'
      Size = 100
    end
    object qConsultaCONSUMIDOR_FINAL: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'CONSUMIDOR_FINAL'
      Origin = 'CONSUMIDOR_FINAL'
      FixedChar = True
      Size = 3
    end
    object qConsultaCLIENTE_TIPO: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'CLIENTE_TIPO'
      Origin = 'CLIENTE_TIPO'
      Size = 50
    end
    object qConsultaCONSUMIDOR_TIPO: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'CONSUMIDOR_TIPO'
      Origin = 'CONSUMIDOR_TIPO'
      FixedChar = True
      Size = 16
    end
    object qConsultaNATURALIDADE: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'NATURALIDADE'
      Origin = 'NATURALIDADE'
      Size = 50
    end
    object qConsultaNACIONALIDADE: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'NACIONALIDADE'
      Origin = 'NACIONALIDADE'
      Size = 50
    end
    object qConsultaRG: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'RG'
      Origin = 'RG'
      Size = 50
    end
    object qConsultaORGAO_EMISSOR: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'ORGAO_EMISSOR'
      Origin = 'ORGAO_EMISSOR'
      Size = 50
    end
    object qConsultaINSCRICAO_MUNICIPAL: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'INSCRICAO_MUNICIPAL'
      Origin = 'INSCRICAO_MUNICIPAL'
      Size = 50
    end
    object qConsultaDATA_NASCIMENTO: TDateField
      AutoGenerateValue = arDefault
      FieldName = 'DATA_NASCIMENTO'
      Origin = 'DATA_NASCIMENTO'
    end
    object qConsultaSEXO: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'SEXO'
      Origin = 'SEXO'
      FixedChar = True
      Size = 9
    end
    object qConsultaESTADO_CIVIL: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'ESTADO_CIVIL'
      Origin = 'ESTADO_CIVIL'
      FixedChar = True
      Size = 14
    end
    object qConsultaSUFRAMA: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'SUFRAMA'
      Origin = 'SUFRAMA'
      Size = 50
    end
    object qConsultaRAMO_ATIVIDADE: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'RAMO_ATIVIDADE'
      Origin = 'RAMO_ATIVIDADE'
      Size = 50
    end
    object qConsultaATIVIDADE: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'ATIVIDADE'
      Origin = 'ATIVIDADE'
      Size = 50
    end
    object qConsultaDATA_EMISSAO: TDateField
      AutoGenerateValue = arDefault
      FieldName = 'DATA_EMISSAO'
      Origin = 'DATA_EMISSAO'
    end
    object qConsultaNOME_PAI: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'NOME_PAI'
      Origin = 'NOME_PAI'
      Size = 200
    end
    object qConsultaNOME_MAE: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'NOME_MAE'
      Origin = 'NOME_MAE'
      Size = 200
    end
    object qConsultaLIMITE_CREDITO: TBCDField
      AutoGenerateValue = arDefault
      FieldName = 'LIMITE_CREDITO'
      Origin = 'LIMITE_CREDITO'
      Precision = 15
      Size = 2
    end
    object qConsultaENDERECO: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'ENDERECO'
      Origin = 'ENDERECO'
      Size = 200
    end
    object qConsultaNUMERO: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'NUMERO'
      Origin = 'NUMERO'
      Size = 50
    end
    object qConsultaBAIRRO: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'BAIRRO'
      Origin = 'BAIRRO'
      Size = 100
    end
    object qConsultaCOMPLEMENTO: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'COMPLEMENTO'
      Origin = 'COMPLEMENTO'
      Size = 200
    end
    object qConsultaCEP: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'CEP'
      Origin = 'CEP'
      Size = 100
    end
    object qConsultaCODIGO_MUNICIPIO: TIntegerField
      AutoGenerateValue = arDefault
      FieldName = 'CODIGO_MUNICIPIO'
      Origin = 'CODIGO_MUNICIPIO'
    end
    object qConsultaREGIAO: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'REGIAO'
      Origin = 'REGIAO'
      Size = 100
    end
    object qConsultaZONA: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'ZONA'
      Origin = 'ZONA'
      Size = 100
    end
    object qConsultaPAIS: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'PAIS'
      Origin = 'PAIS'
      Size = 100
    end
    object qConsultaCODIGO_PAIS: TIntegerField
      AutoGenerateValue = arDefault
      FieldName = 'CODIGO_PAIS'
      Origin = 'CODIGO_PAIS'
    end
    object qConsultaENTREGA_ENDERECO: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'ENTREGA_ENDERECO'
      Origin = 'ENTREGA_ENDERECO'
      Size = 200
    end
    object qConsultaENTREGA_NUMERO: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'ENTREGA_NUMERO'
      Origin = 'ENTREGA_NUMERO'
      Size = 50
    end
    object qConsultaENTREGA_BAIRRO: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'ENTREGA_BAIRRO'
      Origin = 'ENTREGA_BAIRRO'
      Size = 100
    end
    object qConsultaENTREGA_COMPLEMENTO: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'ENTREGA_COMPLEMENTO'
      Origin = 'ENTREGA_COMPLEMENTO'
      Size = 200
    end
    object qConsultaENTREGA_CEP: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'ENTREGA_CEP'
      Origin = 'ENTREGA_CEP'
      Size = 100
    end
    object qConsultaENTREGA_MUNICIPIO: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'ENTREGA_MUNICIPIO'
      Origin = 'ENTREGA_MUNICIPIO'
      Size = 100
    end
    object qConsultaENTREGA_CODIGO_MUNICIPIO: TIntegerField
      AutoGenerateValue = arDefault
      FieldName = 'ENTREGA_CODIGO_MUNICIPIO'
      Origin = 'ENTREGA_CODIGO_MUNICIPIO'
    end
    object qConsultaENTREGA_REGIAO: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'ENTREGA_REGIAO'
      Origin = 'ENTREGA_REGIAO'
      Size = 50
    end
    object qConsultaENTREGA_ZONA: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'ENTREGA_ZONA'
      Origin = 'ENTREGA_ZONA'
      Size = 50
    end
    object qConsultaENTREGA_ESTADO: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'ENTREGA_ESTADO'
      Origin = 'ENTREGA_ESTADO'
      Size = 50
    end
    object qConsultaENTREGA_PAIS: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'ENTREGA_PAIS'
      Origin = 'ENTREGA_PAIS'
      Size = 50
    end
    object qConsultaENTREGA_CODIGO_PAIS: TIntegerField
      AutoGenerateValue = arDefault
      FieldName = 'ENTREGA_CODIGO_PAIS'
      Origin = 'ENTREGA_CODIGO_PAIS'
    end
    object qConsultaCOBRANCA_ENDERECO: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'COBRANCA_ENDERECO'
      Origin = 'COBRANCA_ENDERECO'
      Size = 200
    end
    object qConsultaCOBRANCA_NUMERO: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'COBRANCA_NUMERO'
      Origin = 'COBRANCA_NUMERO'
      Size = 50
    end
    object qConsultaCOBRANCA_BAIRRO: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'COBRANCA_BAIRRO'
      Origin = 'COBRANCA_BAIRRO'
      Size = 100
    end
    object qConsultaCOBRANCA_COMPLEMENTO: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'COBRANCA_COMPLEMENTO'
      Origin = 'COBRANCA_COMPLEMENTO'
      Size = 200
    end
    object qConsultaCOBRANCA_CEP: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'COBRANCA_CEP'
      Origin = 'COBRANCA_CEP'
      Size = 50
    end
    object qConsultaCOBRANCA_MUNICIPIO: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'COBRANCA_MUNICIPIO'
      Origin = 'COBRANCA_MUNICIPIO'
      Size = 50
    end
    object qConsultaCOBRANCA_CODIGO_MUNICIPIO: TIntegerField
      AutoGenerateValue = arDefault
      FieldName = 'COBRANCA_CODIGO_MUNICIPIO'
      Origin = 'COBRANCA_CODIGO_MUNICIPIO'
    end
    object qConsultaCOBRANCA_REGIAO: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'COBRANCA_REGIAO'
      Origin = 'COBRANCA_REGIAO'
      Size = 50
    end
    object qConsultaCOBRANCA_ZONA: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'COBRANCA_ZONA'
      Origin = 'COBRANCA_ZONA'
      Size = 50
    end
    object qConsultaCOBRANCA_ESTADO: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'COBRANCA_ESTADO'
      Origin = 'COBRANCA_ESTADO'
      Size = 50
    end
    object qConsultaCOBRANCA_PAIS: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'COBRANCA_PAIS'
      Origin = 'COBRANCA_PAIS'
      Size = 50
    end
    object qConsultaCOBRANCA_CODIGO_PAIS: TIntegerField
      AutoGenerateValue = arDefault
      FieldName = 'COBRANCA_CODIGO_PAIS'
      Origin = 'COBRANCA_CODIGO_PAIS'
    end
    object qConsultaAVALISTA_NOME: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'AVALISTA_NOME'
      Origin = 'AVALISTA_NOME'
      Size = 200
    end
    object qConsultaAVALISTA_DATA_NASCIMENTO: TDateField
      AutoGenerateValue = arDefault
      FieldName = 'AVALISTA_DATA_NASCIMENTO'
      Origin = 'AVALISTA_DATA_NASCIMENTO'
    end
    object qConsultaAVALISTA_CPF: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'AVALISTA_CPF'
      Origin = 'AVALISTA_CPF'
      Size = 50
    end
    object qConsultaAVALISTA_RG: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'AVALISTA_RG'
      Origin = 'AVALISTA_RG'
      Size = 50
    end
    object qConsultaAVALISTA_ORGAO_EMISSOR: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'AVALISTA_ORGAO_EMISSOR'
      Origin = 'AVALISTA_ORGAO_EMISSOR'
      Size = 50
    end
    object qConsultaAVALISTA_RG_DATA_EMISSAO: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'AVALISTA_RG_DATA_EMISSAO'
      Origin = 'AVALISTA_RG_DATA_EMISSAO'
      Size = 50
    end
    object qConsultaAVALISTA_ESTADO_CIVIL: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'AVALISTA_ESTADO_CIVIL'
      Origin = 'AVALISTA_ESTADO_CIVIL'
      FixedChar = True
      Size = 14
    end
    object qConsultaAVALISTA_NACIONALIDADE: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'AVALISTA_NACIONALIDADE'
      Origin = 'AVALISTA_NACIONALIDADE'
      Size = 50
    end
    object qConsultaAVALISTA_NATURALIDADE: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'AVALISTA_NATURALIDADE'
      Origin = 'AVALISTA_NATURALIDADE'
      Size = 50
    end
    object qConsultaAVALISTA_NOME_PAI: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'AVALISTA_NOME_PAI'
      Origin = 'AVALISTA_NOME_PAI'
      Size = 200
    end
    object qConsultaAVALISTA_NOME_MAE: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'AVALISTA_NOME_MAE'
      Origin = 'AVALISTA_NOME_MAE'
      Size = 50
    end
    object qConsultaAVALISTA_ENDERECO: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'AVALISTA_ENDERECO'
      Origin = 'AVALISTA_ENDERECO'
      Size = 200
    end
    object qConsultaAVALISTA_NUMERO: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'AVALISTA_NUMERO'
      Origin = 'AVALISTA_NUMERO'
      Size = 50
    end
    object qConsultaAVALISTA_BAIRRO: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'AVALISTA_BAIRRO'
      Origin = 'AVALISTA_BAIRRO'
      Size = 100
    end
    object qConsultaAVALISTA_COMPLEMENTO: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'AVALISTA_COMPLEMENTO'
      Origin = 'AVALISTA_COMPLEMENTO'
      Size = 200
    end
    object qConsultaAVALISTA_CEP: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'AVALISTA_CEP'
      Origin = 'AVALISTA_CEP'
      Size = 50
    end
    object qConsultaAVALISTA_MUNICIPIO: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'AVALISTA_MUNICIPIO'
      Origin = 'AVALISTA_MUNICIPIO'
      Size = 50
    end
    object qConsultaAVALISTA_CODIGO_MUNICIPIO: TIntegerField
      AutoGenerateValue = arDefault
      FieldName = 'AVALISTA_CODIGO_MUNICIPIO'
      Origin = 'AVALISTA_CODIGO_MUNICIPIO'
    end
    object qConsultaAVALISTA_REGIAO: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'AVALISTA_REGIAO'
      Origin = 'AVALISTA_REGIAO'
      Size = 50
    end
    object qConsultaAVALISTA_ZONA: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'AVALISTA_ZONA'
      Origin = 'AVALISTA_ZONA'
      Size = 50
    end
    object qConsultaAVALISTA_ESTADO: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'AVALISTA_ESTADO'
      Origin = 'AVALISTA_ESTADO'
      Size = 50
    end
    object qConsultaAVALISTA_PAIS: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'AVALISTA_PAIS'
      Origin = 'AVALISTA_PAIS'
      Size = 50
    end
    object qConsultaAVALISTA_CODIGO_PAIS: TIntegerField
      AutoGenerateValue = arDefault
      FieldName = 'AVALISTA_CODIGO_PAIS'
      Origin = 'AVALISTA_CODIGO_PAIS'
    end
    object qConsultaALIQUOTA_FECOEP: TIntegerField
      AutoGenerateValue = arDefault
      FieldName = 'ALIQUOTA_FECOEP'
      Origin = 'ALIQUOTA_FECOEP'
    end
    object qConsultaBANCO_1: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'BANCO_1'
      Origin = 'BANCO_1'
      Size = 50
    end
    object qConsultaBANCO_OP_CONTA: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'BANCO_OP_CONTA'
      Origin = 'BANCO_OP_CONTA'
      Size = 50
    end
    object qConsultaBANCO_OP2_CONTA: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'BANCO_OP2_CONTA'
      Origin = 'BANCO_OP2_CONTA'
      Size = 50
    end
    object qConsultaBANCO_CONTA_1: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'BANCO_CONTA_1'
      Origin = 'BANCO_CONTA_1'
      Size = 50
    end
    object qConsultaBANCO_AGENCIA_1: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'BANCO_AGENCIA_1'
      Origin = 'BANCO_AGENCIA_1'
      Size = 50
    end
    object qConsultaBANCO_2: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'BANCO_2'
      Origin = 'BANCO_2'
      Size = 50
    end
    object qConsultaBANCO_CONTA_2: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'BANCO_CONTA_2'
      Origin = 'BANCO_CONTA_2'
      Size = 50
    end
    object qConsultaBANCO_CONTA_DIGITO: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'BANCO_CONTA_DIGITO'
      Origin = 'BANCO_CONTA_DIGITO'
      Size = 50
    end
    object qConsultaBANCO_CONTA_DIGITO_2: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'BANCO_CONTA_DIGITO_2'
      Origin = 'BANCO_CONTA_DIGITO_2'
      Size = 50
    end
    object qConsultaBANCO_ANGENCIA_DIGITO: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'BANCO_ANGENCIA_DIGITO'
      Origin = 'BANCO_ANGENCIA_DIGITO'
      Size = 50
    end
    object qConsultaBANCO_ANGENCIA_DIGITO_2: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'BANCO_ANGENCIA_DIGITO_2'
      Origin = 'BANCO_ANGENCIA_DIGITO_2'
      Size = 50
    end
    object qConsultaBANCO_AGENCIA_2: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'BANCO_AGENCIA_2'
      Origin = 'BANCO_AGENCIA_2'
      Size = 50
    end
    object qConsultaCONTATO_NOME: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'CONTATO_NOME'
      Origin = 'CONTATO_NOME'
      Size = 200
    end
    object qConsultaCONTATO_CELULAR: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'CONTATO_CELULAR'
      Origin = 'CONTATO_CELULAR'
      Size = 50
    end
    object qConsultaTELEFONE_1: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'TELEFONE_1'
      Origin = 'TELEFONE_1'
      Size = 50
    end
    object qConsultaCONTATO: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'CONTATO'
      Origin = 'CONTATO'
      Size = 50
    end
    object qConsultaCELULAR_1: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'CELULAR_1'
      Origin = 'CELULAR_1'
      Size = 50
    end
    object qConsultaCONTATO_1: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'CONTATO_1'
      Origin = 'CONTATO_1'
      Size = 50
    end
    object qConsultaEMAIL: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'EMAIL'
      Origin = 'EMAIL'
      Size = 100
    end
    object qConsultaEMAIL_1: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'EMAIL_1'
      Origin = 'EMAIL_1'
      Size = 100
    end
    object qConsultaSKYPE: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'SKYPE'
      Origin = 'SKYPE'
      Size = 100
    end
    object qConsultaOBSERVACAO: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'OBSERVACAO'
      Origin = 'OBSERVACAO'
      Size = 200
    end
    object qConsultaconvenio_inicio: TDateField
      AutoGenerateValue = arDefault
      FieldName = 'convenio_inicio'
      Origin = 'convenio_inicio'
    end
    object qConsultaconvenio_fim: TDateField
      AutoGenerateValue = arDefault
      FieldName = 'convenio_fim'
      Origin = 'convenio_fim'
    end
    object qConsultaINDICACAO_IE: TIntegerField
      AutoGenerateValue = arDefault
      FieldName = 'INDICACAO_IE'
      Origin = 'INDICACAO_IE'
    end
    object qConsultaTRIBUTACAO_ICMS: TIntegerField
      AutoGenerateValue = arDefault
      FieldName = 'TRIBUTACAO_ICMS'
      Origin = 'TRIBUTACAO_ICMS'
    end
    object qConsultaCONTRIBUINTE_ICMS: TIntegerField
      AutoGenerateValue = arDefault
      FieldName = 'CONTRIBUINTE_ICMS'
      Origin = 'CONTRIBUINTE_ICMS'
    end
    object qConsultaID_CAD_RAMO_ATIVIDADE: TIntegerField
      AutoGenerateValue = arDefault
      FieldName = 'ID_CAD_RAMO_ATIVIDADE'
      Origin = 'ID_CAD_RAMO_ATIVIDADE'
    end
    object qConsultaDTBLOQUEIO: TDateField
      AutoGenerateValue = arDefault
      FieldName = 'DTBLOQUEIO'
      Origin = 'DTBLOQUEIO'
    end
    object qConsultaHRBLOQUEIO: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'HRBLOQUEIO'
      Origin = 'HRBLOQUEIO'
      Size = 5
    end
    object qConsultaUSUBLOQUEIO: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'USUBLOQUEIO'
      Origin = 'USUBLOQUEIO'
    end
    object qConsultaMAQBLOQUEIO: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'MAQBLOQUEIO'
      Origin = 'MAQBLOQUEIO'
      Size = 50
    end
    object qConsultaDTALTEROU: TDateField
      AutoGenerateValue = arDefault
      FieldName = 'DTALTEROU'
      Origin = 'DTALTEROU'
    end
    object qConsultaHRALTEROU: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'HRALTEROU'
      Origin = 'HRALTEROU'
      Size = 5
    end
    object qConsultaUSUALTEROU: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'USUALTEROU'
      Origin = 'USUALTEROU'
    end
    object qConsultaMAQALTEROU: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'MAQALTEROU'
      Origin = 'MAQALTEROU'
      Size = 50
    end
    object qConsultaID_REGIAO: TIntegerField
      AutoGenerateValue = arDefault
      FieldName = 'ID_REGIAO'
      Origin = 'ID_REGIAO'
    end
    object qConsultaBLOQUEADO: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'BLOQUEADO'
      Origin = 'BLOQUEADO'
      FixedChar = True
      Size = 3
    end
    object qConsultaTELEFONE_2: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'TELEFONE_2'
      Origin = 'TELEFONE_2'
      Size = 50
    end
    object qConsultaWhatsApp: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'WhatsApp'
      Origin = 'WhatsApp'
      Size = 50
    end
    object qConsultaEMAIL_2: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'EMAIL_2'
      Origin = 'EMAIL_2'
      Size = 100
    end
    object qConsultaSite_HomePage: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'Site_HomePage'
      Origin = 'Site_HomePage'
      Size = 100
    end
    object qConsultaPROPRIETARIO_NOME: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'PROPRIETARIO_NOME'
      Origin = 'PROPRIETARIO_NOME'
      Size = 50
    end
    object qConsultaPROPRIETARIO_FONE: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'PROPRIETARIO_FONE'
      Origin = 'PROPRIETARIO_FONE'
      Size = 50
    end
    object qConsultaPROPRIETARIO_RAMAL: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'PROPRIETARIO_RAMAL'
      Origin = 'PROPRIETARIO_RAMAL'
      Size = 10
    end
    object qConsultaPROPRIETARIO_CELULAR1: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'PROPRIETARIO_CELULAR1'
      Origin = 'PROPRIETARIO_CELULAR1'
      Size = 50
    end
    object qConsultaPROPRIETARIO_CELULAR2: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'PROPRIETARIO_CELULAR2'
      Origin = 'PROPRIETARIO_CELULAR2'
      Size = 50
    end
    object qConsultaPROPRIETARIO_EMAIL1: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'PROPRIETARIO_EMAIL1'
      Origin = 'PROPRIETARIO_EMAIL1'
      Size = 100
    end
    object qConsultaPROPRIETARIO_EMAIL2: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'PROPRIETARIO_EMAIL2'
      Origin = 'PROPRIETARIO_EMAIL2'
      Size = 100
    end
    object qConsultaPROPRIETARIO_WHATSAPP: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'PROPRIETARIO_WHATSAPP'
      Origin = 'PROPRIETARIO_WHATSAPP'
      Size = 50
    end
    object qConsultaCONTATO_FONE: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'CONTATO_FONE'
      Origin = 'CONTATO_FONE'
      Size = 50
    end
    object qConsultaCONTATO_RAMAL: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'CONTATO_RAMAL'
      Origin = 'CONTATO_RAMAL'
      Size = 10
    end
    object qConsultaCONTATO_CELULAR2: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'CONTATO_CELULAR2'
      Origin = 'CONTATO_CELULAR2'
      Size = 10
    end
    object qConsultaCONTATO_WHATSAPP: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'CONTATO_WHATSAPP'
      Origin = 'CONTATO_WHATSAPP'
      Size = 50
    end
    object qConsultaCONTATO_EMAIL1: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'CONTATO_EMAIL1'
      Origin = 'CONTATO_EMAIL1'
      Size = 100
    end
    object qConsultaCONTATO_EMAIL2: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'CONTATO_EMAIL2'
      Origin = 'CONTATO_EMAIL2'
      Size = 100
    end
    object qConsultaCODIGO_UF: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'CODIGO_UF'
      Origin = 'CODIGO_UF'
      Size = 2
    end
    object qConsultaENTREGA_CODIGO_UF: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'ENTREGA_CODIGO_UF'
      Origin = 'ENTREGA_CODIGO_UF'
      Size = 2
    end
    object qConsultaCOBRANCA_CODIGO_UF: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'COBRANCA_CODIGO_UF'
      Origin = 'COBRANCA_CODIGO_UF'
      Size = 2
    end
    object qConsultaENTREGA_ID_REGIAO: TIntegerField
      AutoGenerateValue = arDefault
      FieldName = 'ENTREGA_ID_REGIAO'
      Origin = 'ENTREGA_ID_REGIAO'
    end
    object qConsultaCOBRANCA_ID_REGIAO: TIntegerField
      AutoGenerateValue = arDefault
      FieldName = 'COBRANCA_ID_REGIAO'
      Origin = 'COBRANCA_ID_REGIAO'
    end
    object qConsultaCLI_EMP_CODIGO: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'CLI_EMP_CODIGO'
      Origin = 'CLI_EMP_CODIGO'
    end
    object qConsultaEMP_ALTEROU: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'EMP_ALTEROU'
      Origin = 'EMP_ALTEROU'
    end
    object qConsultaCRT_CODIGO_REGIME_TRIBUTARIO: TIntegerField
      AutoGenerateValue = arDefault
      FieldName = 'CRT_CODIGO_REGIME_TRIBUTARIO'
      Origin = 'CRT_CODIGO_REGIME_TRIBUTARIO'
    end
  end
  object dsConsulta: TDataSource
    DataSet = qConsulta
    Left = 449
    Top = 81
  end
end
