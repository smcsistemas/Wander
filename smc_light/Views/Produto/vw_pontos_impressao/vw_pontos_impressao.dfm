object frm_pontos_impressao: Tfrm_pontos_impressao
  Left = 0
  Top = 0
  BorderIcons = [biSystemMenu]
  BorderStyle = bsSingle
  Caption = 'Pontos de Impress'#227'o'
  ClientHeight = 409
  ClientWidth = 448
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
  OnKeyDown = FormKeyDown
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 13
  object lbl1: TLabel
    Left = 8
    Top = 8
    Width = 44
    Height = 16
    Caption = 'Nome: '
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -13
    Font.Name = 'Tahoma'
    Font.Style = [fsBold]
    ParentFont = False
  end
  object lbl2: TLabel
    Left = 176
    Top = 8
    Width = 79
    Height = 16
    Caption = 'Impressora:'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -13
    Font.Name = 'Tahoma'
    Font.Style = [fsBold]
    ParentFont = False
  end
  object lbl3: TLabel
    Left = 8
    Top = 98
    Width = 135
    Height = 16
    Caption = 'Pontos cadastrados:'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -13
    Font.Name = 'Tahoma'
    Font.Style = [fsBold]
    ParentFont = False
  end
  object edt_name: TcxTextEdit
    Left = 8
    Top = 26
    ParentFont = False
    Style.Font.Charset = DEFAULT_CHARSET
    Style.Font.Color = clWindowText
    Style.Font.Height = -13
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
    TextHint = 'E.g '#180'Cozinha, Bar ...'#180
    Width = 162
  end
  object cb_printer: TcxComboBox
    Left = 176
    Top = 26
    ParentFont = False
    Properties.DropDownListStyle = lsEditFixedList
    Style.Font.Charset = DEFAULT_CHARSET
    Style.Font.Color = clWindowText
    Style.Font.Height = -13
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
    TextHint = 'Selecione uma impressora ... '
    Width = 264
  end
  object btn_save: TcxButton
    Left = 359
    Top = 66
    Width = 81
    Height = 30
    Caption = 'Salvar'
    Colors.Default = clGreen
    Colors.DefaultText = clWhite
    Colors.Normal = clGreen
    Colors.NormalText = clWhite
    Colors.Hot = 6538752
    Colors.HotText = clWhite
    Colors.Pressed = 16384
    Colors.PressedText = clGray
    LookAndFeel.NativeStyle = False
    TabOrder = 2
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -12
    Font.Name = 'Tahoma'
    Font.Style = [fsBold]
    ParentFont = False
    OnClick = btn_saveClick
  end
  object gd_pontos: TcxGrid
    Left = 8
    Top = 120
    Width = 432
    Height = 281
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'Tahoma'
    Font.Style = [fsBold]
    ParentFont = False
    PopupMenu = popKorn
    TabOrder = 3
    LookAndFeel.NativeStyle = False
    LookAndFeel.SkinName = 'Seven'
    object gd_pontosDBTableView1: TcxGridDBTableView
      Navigator.Buttons.CustomButtons = <>
      OnCellDblClick = gd_pontosDBTableView1CellDblClick
      DataController.DataSource = ds_pontos_impressao
      DataController.Summary.DefaultGroupSummaryItems = <>
      DataController.Summary.FooterSummaryItems = <>
      DataController.Summary.SummaryGroups = <>
      OptionsData.CancelOnExit = False
      OptionsData.Deleting = False
      OptionsData.DeletingConfirmation = False
      OptionsData.Editing = False
      OptionsData.Inserting = False
      OptionsView.GroupByBox = False
      object gd_pontosDBTableView1id: TcxGridDBColumn
        DataBinding.FieldName = 'id'
        Visible = False
        VisibleForEditForm = bTrue
      end
      object gd_pontosDBTableView1nome: TcxGridDBColumn
        Caption = 'Nome'
        DataBinding.FieldName = 'nome'
        PropertiesClassName = 'TcxLabelProperties'
        MinWidth = 162
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
        Options.HorzSizing = False
        Options.Moving = False
        Width = 162
      end
      object gd_pontosDBTableView1impressora: TcxGridDBColumn
        Caption = 'Impressora'
        DataBinding.FieldName = 'impressora'
        PropertiesClassName = 'TcxLabelProperties'
        MinWidth = 268
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
        Options.HorzSizing = False
        Options.Moving = False
        Width = 268
      end
    end
    object gd_pontosLevel1: TcxGridLevel
      GridView = gd_pontosDBTableView1
    end
  end
  object sql_IMPRESSORA_IMP: TFDQuery
    Connection = Module.connection
    SQL.Strings = (
      'select * from IMPRESSORA_IMP')
    Left = 264
    Top = 192
    object sql_IMPRESSORA_IMPid: TFDAutoIncField
      FieldName = 'id'
      Origin = 'id'
      ProviderFlags = [pfInWhere, pfInKey]
      ReadOnly = True
    end
    object sql_IMPRESSORA_IMPnome: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'nome'
      Origin = 'nome'
      Size = 255
    end
    object sql_IMPRESSORA_IMPimpressora: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'impressora'
      Origin = 'impressora'
      Size = 255
    end
  end
  object ds_pontos_impressao: TDataSource
    DataSet = sql_IMPRESSORA_IMP
    Left = 264
    Top = 248
  end
  object popKorn: TPopupMenu
    Left = 188
    Top = 249
    object estarImpressora1: TMenuItem
      Bitmap.Data = {
        36040000424D3604000000000000360000002800000010000000100000000100
        2000000000000004000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000003C3C3CFF3C3C3CFF3C3C3CFF3C3C3CFF3C3C3CFF3C3C3CFF3C3C
        3CFF3C3C3CFF3C3C3CFF3C3C3CFF000000000000000000000000000000000000
        0000000000003C3C3CFF3C3C3CFF3C3C3CFF3C3C3CFF3C3C3CFF3C3C3CFF3C3C
        3CFF3C3C3CFF3C3C3CFF3C3C3CFF0000000000000000000000003C3C3CFF3C3C
        3CFF000000003C3C3CFF3C3C3CFF000000000000000000000000000000000000
        0000000000003C3C3CFF3C3C3CFF000000003C3C3CFF3C3C3CFF3C3C3CFF3C3C
        3CFF000000003C3C3CFF3C3C3CFF000000000000000000000000000000000000
        0000000000003C3C3CFF3C3C3CFF000000003C3C3CFF3C3C3CFF3C3C3CFF3C3C
        3CFF000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000003C3C3CFF3C3C3CFF3C3C3CFF3C3C
        3CFF3C3C3CFF3C3C3CFF3C3C3CFF3C3C3CFF3C3C3CFF3C3C3CFF3C3C3CFF3C3C
        3CFF3C3C3CFF3C3C3CFF3C3C3CFF3C3C3CFF3C3C3CFF3C3C3CFF3C3C3CFF3C3C
        3CFF3C3C3CFF3C3C3CFF3C3C3CFF3C3C3CFF3C3C3CFF3C3C3CFF3C3C3CFF3C3C
        3CFF3C3C3CFF3C3C3CFF3C3C3CFF3C3C3CFF000000003C3C3CFF3C3C3CFF3C3C
        3CFF3C3C3CFF3C3C3CFF3C3C3CFF3C3C3CFF3C3C3CFF3C3C3CFF3C3C3CFF3C3C
        3CFF3C3C3CFF3C3C3CFF3C3C3CFF3C3C3CFF3C3C3CFF3C3C3CFF3C3C3CFF3C3C
        3CFF000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000003C3C3CFF3C3C3CFF3C3C3CFF3C3C
        3CFF000000003C3C3CFF3C3C3CFF000000000000000000000000000000000000
        0000000000003C3C3CFF3C3C3CFF000000003C3C3CFF3C3C3CFF3C3C3CFF3C3C
        3CFF000000003C3C3CFF3C3C3CFF000000000000000000000000000000000000
        0000000000003C3C3CFF3C3C3CFF000000003C3C3CFF3C3C3CFF000000000000
        0000000000003C3C3CFF3C3C3CFF000000000000000000000000000000000000
        0000000000003C3C3CFF3C3C3CFF000000000000000000000000000000000000
        0000000000003C3C3CFF3C3C3CFF3C3C3CFF3C3C3CFF3C3C3CFF3C3C3CFF3C3C
        3CFF3C3C3CFF3C3C3CFF3C3C3CFF000000000000000000000000000000000000
        0000000000003C3C3CFF3C3C3CFF3C3C3CFF3C3C3CFF3C3C3CFF3C3C3CFF3C3C
        3CFF3C3C3CFF3C3C3CFF3C3C3CFF000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000}
      Caption = 'Testar Impressora'
      Default = True
      OnClick = estarImpressora1Click
    end
  end
end
