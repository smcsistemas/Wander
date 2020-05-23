object fmr_convenio: Tfmr_convenio
  Left = 0
  Top = 0
  HorzScrollBar.Color = clGradientInactiveCaption
  HorzScrollBar.ParentColor = False
  BorderIcons = [biSystemMenu]
  BorderStyle = bsSingle
  Caption = 'Cadastro | Conv'#234'nio'
  ClientHeight = 321
  ClientWidth = 607
  Color = clBtnFace
  TransparentColorValue = clGradientInactiveCaption
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  Position = poMainFormCenter
  StyleElements = []
  OnClose = FormClose
  PixelsPerInch = 96
  TextHeight = 13
  object TLabel
    Left = 31
    Top = 9
    Width = 49
    Height = 18
    Caption = 'Nome: '
    Font.Charset = ANSI_CHARSET
    Font.Color = clWindowText
    Font.Height = -15
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentFont = False
  end
  object TLabel
    Left = 15
    Top = 40
    Width = 62
    Height = 18
    Caption = 'Matr'#237'cula:'
    Font.Charset = ANSI_CHARSET
    Font.Color = clWindowText
    Font.Height = -15
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentFont = False
  end
  object TLabel
    Left = 310
    Top = 40
    Width = 50
    Height = 18
    Caption = 'Cr'#233'dito:'
    Font.Charset = ANSI_CHARSET
    Font.Color = clWindowText
    Font.Height = -15
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentFont = False
  end
  object TLabel
    Left = 472
    Top = 40
    Width = 45
    Height = 18
    Caption = 'Senha:'
    Font.Charset = ANSI_CHARSET
    Font.Color = clWindowText
    Font.Height = -15
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentFont = False
  end
  object TLabel
    Left = 182
    Top = 40
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
  object conveniadoMatricula: TcxTextEdit
    Left = 81
    Top = 38
    ParentFont = False
    Style.Font.Charset = ANSI_CHARSET
    Style.Font.Color = clWindowText
    Style.Font.Height = -12
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
    TabOrder = 0
    Width = 72
  end
  object conveniadoNome: TcxTextEdit
    Left = 81
    Top = 8
    ParentFont = False
    Properties.CharCase = ecUpperCase
    Style.Font.Charset = ANSI_CHARSET
    Style.Font.Color = clWindowText
    Style.Font.Height = -12
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
    TabOrder = 1
    Width = 224
  end
  object conveniadoCredito: TcxCurrencyEdit
    Left = 365
    Top = 37
    EditValue = 0.000000000000000000
    ParentFont = False
    Style.Font.Charset = ANSI_CHARSET
    Style.Font.Color = clWindowText
    Style.Font.Height = -13
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
    TabOrder = 2
    Width = 78
  end
  object conveniadoSenha: TcxMaskEdit
    Left = 523
    Top = 38
    ParentFont = False
    Properties.EchoMode = eemPassword
    Properties.PasswordChar = '*'
    Style.Font.Charset = ANSI_CHARSET
    Style.Font.Color = clWindowText
    Style.Font.Height = -12
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
    Width = 72
  end
  object conveniadoCpf: TcxMaskEdit
    Left = 215
    Top = 38
    ParentFont = False
    Properties.EditMask = '!999\.999\.999\-99;1; '
    Style.Font.Charset = ANSI_CHARSET
    Style.Font.Color = clWindowText
    Style.Font.Height = -12
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
    TabOrder = 4
    Text = '   .   .   -  '
    Width = 90
  end
  object cxGroupBox3: TcxGroupBox
    Left = 0
    Top = 71
    Align = alBottom
    Caption = '  Conveniados Cadastrados  '
    ParentBackground = False
    ParentColor = False
    ParentFont = False
    Style.Color = clBtnFace
    Style.Font.Charset = ANSI_CHARSET
    Style.Font.Color = clWindowText
    Style.Font.Height = -12
    Style.Font.Name = 'Tahoma'
    Style.Font.Style = [fsBold]
    Style.LookAndFeel.NativeStyle = True
    Style.IsFontAssigned = True
    StyleDisabled.Color = clGradientInactiveCaption
    StyleDisabled.LookAndFeel.NativeStyle = True
    StyleFocused.LookAndFeel.NativeStyle = True
    StyleHot.LookAndFeel.NativeStyle = True
    TabOrder = 5
    Height = 250
    Width = 607
    object TLabel
      Left = 5
      Top = 12
      Width = 54
      Height = 16
      Caption = 'Consulta:'
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentFont = False
    end
    object TLabel
      Left = 283
      Top = 12
      Width = 34
      Height = 16
      Caption = 'Filtro:'
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentFont = False
    end
    object TLabel
      Left = 394
      Top = 12
      Width = 20
      Height = 16
      Caption = 'De:'
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentFont = False
    end
    object TLabel
      Left = 499
      Top = 12
      Width = 24
      Height = 16
      Caption = 'At'#233':'
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentFont = False
    end
    object conveniadoConsulta: TcxTextEdit
      Left = 5
      Top = 27
      ParentFont = False
      Style.Font.Charset = ANSI_CHARSET
      Style.Font.Color = clWindowText
      Style.Font.Height = -11
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
      TabOrder = 0
      Width = 267
    end
    object conveniadoFiltro: TcxComboBox
      Left = 283
      Top = 27
      ParentFont = False
      Properties.DropDownListStyle = lsFixedList
      Properties.Items.Strings = (
        'Nome'
        'CPF'
        'Matr'#237'cula'
        'Cr'#233'dito')
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
      Text = 'Nome'
      Width = 102
    end
    object conveniadoQryPeriodoInicio: TcxDateEdit
      Left = 394
      Top = 27
      ParentFont = False
      Properties.DateButtons = []
      Properties.DisplayFormat = 'dd/mm/yyyy'
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
      TabOrder = 2
      Width = 95
    end
    object conveniadoQryPeriodoFim: TcxDateEdit
      Left = 499
      Top = 27
      ParentFont = False
      Properties.DateButtons = []
      Properties.DisplayFormat = 'dd/mm/yyyy'
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
      Width = 95
    end
    object GroupBox1: TGroupBox
      Left = 454
      Top = 132
      Width = 140
      Height = 109
      TabOrder = 4
      object TLabel
        Left = 25
        Top = 6
        Width = 77
        Height = 16
        Caption = 'Conveniados:'
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'Tahoma'
        Font.Style = []
        ParentFont = False
      end
      object TLabel
        Left = 9
        Top = 31
        Width = 35
        Height = 16
        Caption = 'In'#237'cio:'
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'Tahoma'
        Font.Style = []
        ParentFont = False
      end
      object lblQTDEConveniados: TLabel
        Left = 108
        Top = 6
        Width = 24
        Height = 16
        Caption = '999'
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'Tahoma'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object TLabel
        Left = 17
        Top = 56
        Width = 26
        Height = 16
        Caption = 'Fim:'
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'Tahoma'
        Font.Style = []
        ParentFont = False
      end
      object convenioInicio: TcxDateEdit
        Left = 50
        Top = 25
        Properties.DateButtons = []
        Properties.DisplayFormat = 'dd/mm/yy'
        Properties.EditFormat = 'dd/mm/yy'
        Style.LookAndFeel.NativeStyle = False
        Style.LookAndFeel.SkinName = 'Metropolis'
        StyleDisabled.LookAndFeel.NativeStyle = False
        StyleDisabled.LookAndFeel.SkinName = 'Metropolis'
        StyleFocused.LookAndFeel.NativeStyle = False
        StyleFocused.LookAndFeel.SkinName = 'Metropolis'
        StyleHot.LookAndFeel.NativeStyle = False
        StyleHot.LookAndFeel.SkinName = 'Metropolis'
        TabOrder = 0
        Width = 82
      end
      object convenioFim: TcxDateEdit
        Left = 50
        Top = 53
        Properties.DateButtons = []
        Properties.DisplayFormat = 'dd/mm/yy'
        Properties.EditFormat = 'dd/mm/yy'
        Style.LookAndFeel.NativeStyle = False
        Style.LookAndFeel.SkinName = 'Metropolis'
        StyleDisabled.LookAndFeel.NativeStyle = False
        StyleDisabled.LookAndFeel.SkinName = 'Metropolis'
        StyleFocused.LookAndFeel.NativeStyle = False
        StyleFocused.LookAndFeel.SkinName = 'Metropolis'
        StyleHot.LookAndFeel.NativeStyle = False
        StyleHot.LookAndFeel.SkinName = 'Metropolis'
        TabOrder = 1
        Width = 82
      end
      object btnRenovarConveniados: TcxButton
        Left = 29
        Top = 79
        Width = 95
        Height = 23
        Caption = 'Renovar'
        LookAndFeel.NativeStyle = False
        LookAndFeel.SkinName = 'Office2013White'
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
        TabOrder = 2
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -12
        Font.Name = 'Tahoma'
        Font.Style = [fsBold]
        ParentFont = False
      end
    end
    object gdConveniados: TcxGrid
      Left = 5
      Top = 54
      Width = 443
      Height = 187
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      ParentFont = False
      TabOrder = 5
      LookAndFeel.Kind = lfOffice11
      LookAndFeel.NativeStyle = False
      LookAndFeel.SkinName = 'Office2013LightGray'
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
        object gdConveniadosTbVwColumn2: TcxGridDBColumn
          Caption = 'Per'#237'odo'
          PropertiesClassName = 'TcxLabelProperties'
          HeaderAlignmentHorz = taCenter
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
        end
        object gdConveniadosTbVwColumn1: TcxGridDBColumn
          Caption = 'Nome'
          PropertiesClassName = 'TcxLabelProperties'
          HeaderAlignmentHorz = taCenter
          MinWidth = 155
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
          Width = 155
        end
        object gdConveniadosTbVwColumn3: TcxGridDBColumn
          Caption = 'CPF'
          HeaderAlignmentHorz = taCenter
        end
        object clMatricula: TcxGridDBColumn
          Caption = 'Matr'#237'cula'
          DataBinding.FieldName = 'matricula'
          PropertiesClassName = 'TcxLabelProperties'
          Properties.Alignment.Horz = taCenter
          Properties.Alignment.Vert = taBottomJustify
          FooterAlignmentHorz = taCenter
          GroupSummaryAlignment = taCenter
          HeaderAlignmentHorz = taCenter
          MinWidth = 75
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
          Width = 75
        end
        object clCredito: TcxGridDBColumn
          Caption = 'R$'
          DataBinding.FieldName = 'credito'
          PropertiesClassName = 'TcxCurrencyEditProperties'
          FooterAlignmentHorz = taCenter
          GroupSummaryAlignment = taCenter
          HeaderAlignmentHorz = taCenter
          MinWidth = 85
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
          Width = 85
        end
        object clStatus: TcxGridDBColumn
          DataBinding.FieldName = 'status'
          Visible = False
          VisibleForEditForm = bFalse
        end
      end
      object gdConveniadosLv: TcxGridLevel
        GridView = gdConveniadosTbVw
      end
    end
    object cxButton1: TcxButton
      Left = 454
      Top = 54
      Width = 140
      Height = 23
      Caption = 'Hist'#243'rico Vendas'
      LookAndFeel.NativeStyle = False
      LookAndFeel.SkinName = 'Office2013White'
      OptionsImage.Glyph.Data = {
        36040000424D3604000000000000360000002800000010000000100000000100
        2000000000000004000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        00000000000000000000150F091D51392270845D37B7A97747EAA97747EA845D
        37B751392270150F091D00000000000000000000000000000000000000000000
        000000000000291D11397F5A35B0B8824DFFB8824DFFB8824DFFB8824DFFB882
        4DFFB8824DFF7F5A35B0291D1139000000000000000000000000000000000000
        0000150F091D7F5A35B0B8824DFF8A613ABF4A341F661610091F1610091F4A34
        1F668A613ABFB8824DFF7F5A35B0150F091D0000000000000000000000000000
        000051392270B8824DFF8A613ABF251A0F330000000000000000000000000000
        0000251A0F338A613ABFB8824DFF513922700000000000000000000000000000
        0000845D37B7B8824DFF4A341F66000000000000000000000000000000000000
        0000000000004A341F66B8824DFF845D37B70000000000000000000000000000
        00000000000000000000000000000000000000000000B8824DFFB8824DFFB882
        4DFF000000001610091FB8824DFFA97747EA000000000000000000000000B882
        4DFFB8824DFFB8824DFFB8824DFFB8824DFF5B40267EB8824DFF000000000000
        0000000000001610091FB8824DFFA97747EA000000000000000000000000B882
        4DFFB8824DFFB8824DFFB8824DFF5B40267E00000000B8824DFF000000000000
        0000000000004A341F66B8824DFF845D37B7000000000000000000000000B882
        4DFFB8824DFFB8824DFFA17243DF251A0F3300000000B8824DFF000000000000
        0000251A0F338A613ABFB8824DFF51392270000000000000000000000000B882
        4DFFB8824DFF9B6E41D7B8824DFF8A613ABF4A341F661610091F1610091F4A34
        1F668A613ABFB8824DFF7F5A35B0150F091D000000000000000000000000B882
        4DFF5B40267E291D11397F5A35B0B8824DFFB8824DFFB8824DFFB8824DFFB882
        4DFFB8824DFF7F5A35B0291D1139000000000000000000000000000000005B40
        267E0000000000000000150F091D51392270845D37B7A97747EAA97747EA845D
        37B751392270150F091D00000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000}
      TabOrder = 6
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -12
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      ParentFont = False
      OnClick = cxButton1Click
    end
    object cxButton2: TcxButton
      Left = 454
      Top = 80
      Width = 140
      Height = 23
      Caption = 'Editar'
      LookAndFeel.NativeStyle = False
      LookAndFeel.SkinName = 'Office2013White'
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
      TabOrder = 7
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -12
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object cxButton3: TcxButton
      Left = 454
      Top = 106
      Width = 140
      Height = 23
      Caption = 'Bloquear'
      LookAndFeel.NativeStyle = False
      LookAndFeel.SkinName = 'Office2013White'
      OptionsImage.Glyph.Data = {
        36040000424D3604000000000000360000002800000010000000100000000100
        2000000000000004000000000000000000000000000000000000000000000000
        00000000000000000000000000000000000000000000000000001B2856664463
        D8FF0E142B3300000000000000000E142B334463D8FF1B285666000000000000
        0000848484FF848484FF848484FF848484FF848484FFFFFFFFFF4463D8FF4463
        D8FF4463D8FFDAE0F7FFDAE0F7FF4463D8FF4463D8FF4463D8FF000000000000
        0000848484FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFDAE0F7FF4463
        D8FF4463D8FF4463D8FF4463D8FF4463D8FF4463D8FF0E142B33000000000000
        0000848484FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFDAE0
        F7FF4463D8FF4463D8FF4463D8FF4463D8FF0E142B3300000000000000000000
        0000848484FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFDAE0
        F7FF4463D8FF4463D8FF4463D8FF4463D8FF0E142B3300000000000000000000
        0000848484FFFFFFFFFFB8824DFFB8824DFFB8824DFFFFFFFFFFDAE0F7FF4463
        D8FF4463D8FF4463D8FF4463D8FF4463D8FF4463D8FF0E142B33000000000000
        0000848484FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF4463D8FF4463
        D8FF4463D8FFDAE0F7FFDAE0F7FF4463D8FF4463D8FF4463D8FF000000000000
        0000848484FFFFFFFFFFB8824DFFB8824DFFB8824DFFFFFFFFFFB4C1EFFF4463
        D8FFDAE0F7FFFFFFFFFFFFFFFFFFDAE0F7FF4463D8FF1B285666000000000000
        0000848484FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF0000000000000000000000000000
        0000848484FFFFFFFFFFB8824DFFB8824DFFB8824DFFB8824DFFB8824DFFB882
        4DFFB8824DFFB8824DFFFFFFFFFF848484FF0000000000000000000000000000
        0000848484FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFF848484FF0000000000000000000000000000
        0000848484FFFFFFFFFFB8824DFFB8824DFFB8824DFFB8824DFFB8824DFFFFFF
        FFFF848484FF848484FF848484FF848484FF0000000000000000000000000000
        0000848484FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFF848484FFFAFAFAFA7B7B7BDD1A1A1A330000000000000000000000000000
        0000848484FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFF848484FF7B7B7BDD1A1A1A33000000000000000000000000000000000000
        0000848484FF848484FF848484FF848484FF848484FF848484FF848484FF8383
        83FE848484FF1A1A1A3300000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000}
      TabOrder = 8
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -12
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      ParentFont = False
    end
  end
  object cxButton23: TcxButton
    Left = 316
    Top = 8
    Width = 84
    Height = 23
    Caption = 'Gravar'
    LookAndFeel.NativeStyle = False
    LookAndFeel.SkinName = 'Office2013White'
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
    TabOrder = 6
    Font.Charset = ANSI_CHARSET
    Font.Color = clWindowText
    Font.Height = -12
    Font.Name = 'Tahoma'
    Font.Style = [fsBold]
    ParentFont = False
  end
  object cxButton24: TcxButton
    Left = 412
    Top = 8
    Width = 84
    Height = 23
    Caption = 'Alterar'
    LookAndFeel.NativeStyle = False
    LookAndFeel.SkinName = 'Office2013White'
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
    TabOrder = 7
    Font.Charset = ANSI_CHARSET
    Font.Color = clWindowText
    Font.Height = -12
    Font.Name = 'Tahoma'
    Font.Style = [fsBold]
    ParentFont = False
  end
  object cxButton25: TcxButton
    Left = 509
    Top = 8
    Width = 84
    Height = 23
    Caption = 'Cancelar'
    LookAndFeel.NativeStyle = False
    LookAndFeel.SkinName = 'Office2013White'
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
    TabOrder = 8
    Font.Charset = ANSI_CHARSET
    Font.Color = clWindowText
    Font.Height = -12
    Font.Name = 'Tahoma'
    Font.Style = [fsBold]
    ParentFont = False
  end
end
