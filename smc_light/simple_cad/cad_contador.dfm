object frm_cad_contador: Tfrm_cad_contador
  Left = 0
  Top = 0
  BorderIcons = [biSystemMenu]
  BorderStyle = bsSingle
  Caption = 'Cadastro | Contador'
  ClientHeight = 700
  ClientWidth = 558
  Color = clBtnHighlight
  DefaultMonitor = dmMainForm
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -15
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  Position = poMainFormCenter
  OnClose = FormClose
  OnCreate = FormCreate
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 18
  object cxPageControl1: TcxPageControl
    Left = 0
    Top = 0
    Width = 558
    Height = 700
    Align = alClient
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'Tahoma'
    Font.Style = [fsBold]
    ParentFont = False
    TabOrder = 0
    Properties.ActivePage = tsCadastro
    Properties.CustomButtons.Buttons = <>
    LookAndFeel.NativeStyle = False
    LookAndFeel.SkinName = 'Metropolis'
    ClientRectBottom = 698
    ClientRectLeft = 2
    ClientRectRight = 556
    ClientRectTop = 28
    object tsConsulta: TcxTabSheet
      Caption = 'Consulta'
      ImageIndex = 0
      OnShow = tsConsultaShow
      object Label20: TLabel
        Left = 12
        Top = 31
        Width = 70
        Height = 18
        Caption = 'Consulta:'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -15
        Font.Name = 'Tahoma'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object Edt_Consulta: TEdit
        Left = 88
        Top = 27
        Width = 142
        Height = 26
        CharCase = ecUpperCase
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -15
        Font.Name = 'Tahoma'
        Font.Style = [fsBold]
        ParentFont = False
        TabOrder = 0
        OnKeyUp = Edt_ConsultaKeyUp
      end
      object cxGroupBox1: TcxGroupBox
        Left = 240
        Top = 4
        Caption = '  Filtro  '
        ParentFont = False
        Style.Font.Charset = DEFAULT_CHARSET
        Style.Font.Color = clWindowText
        Style.Font.Height = -15
        Style.Font.Name = 'Tahoma'
        Style.Font.Style = [fsBold]
        Style.TextStyle = [fsBold]
        Style.IsFontAssigned = True
        TabOrder = 1
        Height = 55
        Width = 169
        object cbFiltro: TcxComboBox
          Left = 13
          Top = 22
          ParentFont = False
          Properties.CharCase = ecUpperCase
          Properties.DropDownListStyle = lsFixedList
          Properties.Items.Strings = (
            'NOME FANTASIA'
            'MUNICIPIO'
            'CONTATO')
          Style.Font.Charset = DEFAULT_CHARSET
          Style.Font.Color = clWindowText
          Style.Font.Height = -15
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
          Text = 'NOME FANTASIA'
          Width = 146
        end
      end
      object cxGrid1: TcxGrid
        Left = 12
        Top = 69
        Width = 525
        Height = 584
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = [fsBold]
        ParentFont = False
        TabOrder = 2
        LookAndFeel.NativeStyle = False
        LookAndFeel.SkinName = 'Office2013White'
        object cxGridDBTableView1: TcxGridDBTableView
          OnDblClick = cxGridDBTableView1DblClick
          Navigator.Buttons.CustomButtons = <>
          OnCellDblClick = cxGrid1DBTableView1CellDblClick
          OnCustomDrawCell = cxGrid1DBTableView1CustomDrawCell
          DataController.DataSource = DS_CONTADOR
          DataController.DetailKeyFieldNames = 'CODIGO'
          DataController.Summary.DefaultGroupSummaryItems = <>
          DataController.Summary.FooterSummaryItems = <>
          DataController.Summary.SummaryGroups = <>
          OptionsView.NoDataToDisplayInfoText = ' '
          OptionsView.GroupByBox = False
          object clCodigo: TcxGridDBColumn
            Caption = 'C'#243'digo'
            DataBinding.FieldName = 'CODIGO'
            Visible = False
            HeaderAlignmentHorz = taCenter
            HeaderGlyphAlignmentHorz = taCenter
            MinWidth = 60
            Width = 60
          end
          object clNomeFantasia: TcxGridDBColumn
            Caption = 'Nome Fantasia'
            DataBinding.FieldName = 'NOME_FANTASIA'
            HeaderAlignmentHorz = taCenter
            MinWidth = 150
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
            Width = 150
          end
          object clContato: TcxGridDBColumn
            Caption = 'Contato'
            DataBinding.FieldName = 'CONTATO'
            HeaderAlignmentHorz = taCenter
            MinWidth = 150
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
            Width = 150
          end
          object clCelular: TcxGridDBColumn
            Caption = 'Celular'
            DataBinding.FieldName = 'CELULAR'
            HeaderAlignmentHorz = taCenter
            MinWidth = 150
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
            Width = 150
          end
          object clWhats: TcxGridDBColumn
            Caption = 'WhatsApp'
            DataBinding.FieldName = 'WHATSAPP'
            HeaderAlignmentHorz = taCenter
            MinWidth = 150
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
            Width = 150
          end
          object clTelefone1: TcxGridDBColumn
            Caption = 'Telefone'
            DataBinding.FieldName = 'TELEFONE1'
            HeaderAlignmentHorz = taCenter
            MinWidth = 150
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
            Width = 150
          end
          object clTelefone2: TcxGridDBColumn
            Caption = 'Telefone 1'
            DataBinding.FieldName = 'TELEFONE2'
            HeaderAlignmentHorz = taCenter
            MinWidth = 150
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
            Width = 150
          end
          object clEmail1: TcxGridDBColumn
            Caption = 'Email'
            DataBinding.FieldName = 'EMAIL1'
            HeaderAlignmentHorz = taCenter
            MinWidth = 150
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
            Width = 150
          end
          object clEmail2: TcxGridDBColumn
            Caption = 'Email 1'
            DataBinding.FieldName = 'EMAIL2'
            HeaderAlignmentHorz = taCenter
            MinWidth = 150
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
            Width = 150
          end
          object clBairro: TcxGridDBColumn
            Caption = 'Status'
            DataBinding.FieldName = 'STATUS_CADASTRAL'
            HeaderAlignmentHorz = taCenter
            MinWidth = 150
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
            Width = 150
          end
        end
        object cxGridLevel1: TcxGridLevel
          GridView = cxGridDBTableView1
        end
      end
      object cxButton3: TcxButton
        Left = 420
        Top = 11
        Width = 116
        Height = 41
        Caption = 'Relat'#243'rio'
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
          0000000000000000000000000000000000000000000000000000000000008484
          84FF848484FF848484FF848484FF848484FF848484FF848484FF848484FF8484
          84FF848484FF848484FF848484FF848484FF848484FF00000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000008484
          84FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF848484FF00000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000008484
          84FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF848484FF00000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000008484
          84FFFFFFFFFFFFFFFFFFB8824DFFB8824DFFB8824DFFB8824DFFB8824DFFB882
          4DFFB8824DFFB8824DFFFFFFFFFFFFFFFFFF848484FF00000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000008484
          84FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF848484FF00000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000008484
          84FFFFFFFFFFFFFFFFFFB8824DFFB8824DFFB8824DFFB8824DFFB8824DFFB882
          4DFFB8824DFFB8824DFFFFFFFFFFFFFFFFFF848484FF00000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          00002626264A787878E7848484FF848484FF848484FF848484FF848484FF8484
          84FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF848484FF848484FF848484FF8484
          84FF848484FF848484FF767676E42626264A0000000000000000000000000000
          0000777777E6848484FF848484FF848484FF848484FF848484FF848484FF8484
          84FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF848484FF848484FF848484FF8484
          84FF848484FF848484FF848484FF787878E70000000000000000000000000000
          0000848484FF848484FF848484FF848484FF848484FF848484FF848484FF8484
          84FF848484FF848484FF848484FF848484FF848484FF848484FF848484FF8484
          84FF848484FF848484FF848484FF848484FF848484FF848484FF848484FF8484
          84FF848484FF848484FF848484FF848484FF0000000000000000000000000000
          0000848484FF848484FF848484FF848484FF848484FF848484FF848484FF8484
          84FF848484FF848484FF848484FF848484FF848484FF848484FF848484FF8484
          84FF848484FF848484FF848484FF848484FF848484FF848484FF848484FF8484
          84FF0000000000000000848484FF848484FF0000000000000000000000000000
          0000848484FF848484FF848484FF848484FF848484FF848484FF848484FF8484
          84FF848484FF848484FF848484FF848484FF848484FF848484FF848484FF8484
          84FF848484FF848484FF848484FF848484FF848484FF848484FF848484FF8484
          84FF848484FF848484FF848484FF848484FF0000000000000000000000000000
          0000848484FF848484FF848484FF848484FF848484FF848484FF848484FF8484
          84FF848484FF848484FF848484FF848484FF848484FF848484FF848484FF8484
          84FF848484FF848484FF848484FF848484FF848484FF848484FF848484FF8484
          84FF848484FF848484FF848484FF848484FF0000000000000000000000000000
          0000848484FF848484FF848484FF848484FF848484FF848484FF848484FF8484
          84FF848484FF848484FF848484FF848484FF848484FF848484FF848484FF8484
          84FF848484FF848484FF848484FF848484FF848484FF848484FF848484FF8484
          84FF848484FF848484FF848484FF848484FF0000000000000000000000000000
          0000848484FF848484FF848484FF848484FF848484FF00000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000008484
          84FF848484FF848484FF848484FF848484FF0000000000000000000000000000
          0000848484FF848484FF848484FF848484FF848484FF00000000B8824DFFB882
          4DFFB8824DFFB8824DFFB8824DFFB8824DFFB8824DFFB8824DFFB8824DFFB882
          4DFFB8824DFFB8824DFFB8824DFFB8824DFFB8824DFFB8824DFF000000008484
          84FF848484FF848484FF848484FF848484FF0000000000000000000000000000
          0000777777E6848484FF848484FF848484FF848484FF00000000B8824DFFB882
          4DFFB8824DFFB8824DFFB8824DFFB8824DFFB8824DFFB8824DFFB8824DFFB882
          4DFFB8824DFFB8824DFFB8824DFFB8824DFFB8824DFFB8824DFF000000008484
          84FF848484FF848484FF848484FF777777E60000000000000000000000000000
          000026262649777777E6848484FF848484FF848484FF00000000B8824DFF8484
          84FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF848484FFB8824DFF000000008484
          84FF848484FF848484FF777777E6262626490000000000000000000000000000
          0000000000000000000000000000000000000000000000000000B8824DFF8484
          84FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF848484FFB8824DFF000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000008484
          84FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF848484FF00000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000008484
          84FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF848484FF00000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000008484
          84FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF848484FF00000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000008484
          84FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF848484FF00000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000008484
          84FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF848484FF00000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000008484
          84FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF848484FF00000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000008484
          84FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF848484FF00000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000008484
          84FF848484FF848484FF848484FF848484FF848484FF848484FF848484FF8484
          84FF848484FF848484FF848484FF848484FF848484FF00000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
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
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'Tahoma'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object DBGrid1: TDBGrid
        Left = 12
        Top = 69
        Width = 524
        Height = 584
        DataSource = DS_CONTADOR
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = [fsBold]
        ParentFont = False
        TabOrder = 4
        TitleFont.Charset = DEFAULT_CHARSET
        TitleFont.Color = clWindowText
        TitleFont.Height = -12
        TitleFont.Name = 'Tahoma'
        TitleFont.Style = [fsBold]
        Visible = False
        OnCellClick = DBGrid1CellClick
        OnDrawColumnCell = DBGrid1DrawColumnCell
        OnDblClick = DBGrid1DblClick
        Columns = <
          item
            Alignment = taCenter
            Expanded = False
            FieldName = 'CODIGO'
            Title.Alignment = taCenter
            Visible = False
          end
          item
            Alignment = taCenter
            Expanded = False
            FieldName = 'RAZAO_SOCIAL'
            Title.Alignment = taCenter
            Visible = False
          end
          item
            Alignment = taCenter
            Expanded = False
            FieldName = 'NOME_FANTASIA'
            Title.Alignment = taCenter
            Title.Caption = 'Nome Fantasia'
            Width = 150
            Visible = True
          end
          item
            Alignment = taCenter
            Expanded = False
            FieldName = 'CNPJ'
            Title.Alignment = taCenter
            Visible = False
          end
          item
            Alignment = taCenter
            Expanded = False
            FieldName = 'CONTATO'
            Title.Alignment = taCenter
            Title.Caption = 'Contato'
            Width = 150
            Visible = True
          end
          item
            Alignment = taCenter
            Expanded = False
            FieldName = 'CELULAR'
            Title.Alignment = taCenter
            Title.Caption = 'Celular'
            Width = 150
            Visible = True
          end
          item
            Alignment = taCenter
            Expanded = False
            FieldName = 'WHATSAPP'
            Title.Alignment = taCenter
            Title.Caption = 'WhatsApp'
            Width = 150
            Visible = True
          end
          item
            Alignment = taCenter
            Expanded = False
            FieldName = 'TELEFONE1'
            Title.Alignment = taCenter
            Title.Caption = 'Telefone'
            Width = 150
            Visible = True
          end
          item
            Alignment = taCenter
            Expanded = False
            FieldName = 'TELEFONE2'
            Title.Alignment = taCenter
            Title.Caption = 'Telefone 1'
            Width = 150
            Visible = True
          end
          item
            Alignment = taCenter
            Expanded = False
            FieldName = 'EMAIL1'
            Title.Alignment = taCenter
            Title.Caption = 'Email'
            Width = 150
            Visible = True
          end
          item
            Alignment = taCenter
            Expanded = False
            FieldName = 'EMAIL2'
            Title.Alignment = taCenter
            Title.Caption = 'Email 1'
            Width = 150
            Visible = True
          end
          item
            Alignment = taCenter
            Expanded = False
            FieldName = 'RUA'
            Title.Alignment = taCenter
            Visible = False
          end
          item
            Alignment = taCenter
            Expanded = False
            FieldName = 'NUMERO'
            Title.Alignment = taCenter
            Visible = False
          end
          item
            Alignment = taCenter
            Expanded = False
            FieldName = 'COMPLEMENTO'
            Title.Alignment = taCenter
            Visible = False
          end
          item
            Alignment = taCenter
            Expanded = False
            FieldName = 'BAIRRO'
            Title.Alignment = taCenter
            Visible = False
          end
          item
            Alignment = taCenter
            Expanded = False
            FieldName = 'ZONA'
            Title.Alignment = taCenter
            Visible = False
          end
          item
            Alignment = taCenter
            Expanded = False
            FieldName = 'UF'
            Title.Alignment = taCenter
            Visible = False
          end
          item
            Alignment = taCenter
            Expanded = False
            FieldName = 'CEP'
            Title.Alignment = taCenter
            Visible = False
          end
          item
            Alignment = taCenter
            Expanded = False
            FieldName = 'MUNICIPIO'
            Title.Alignment = taCenter
            Visible = False
          end
          item
            Alignment = taCenter
            Expanded = False
            FieldName = 'STATUS_CADASTRAL'
            Title.Alignment = taCenter
            Title.Caption = 'Status'
            Width = 150
            Visible = True
          end
          item
            Alignment = taCenter
            Expanded = False
            FieldName = 'CODIGO_MUNICIPIO'
            Title.Alignment = taCenter
            Visible = False
          end
          item
            Alignment = taCenter
            Expanded = False
            FieldName = 'CODIGO_PAIS'
            Title.Alignment = taCenter
            Visible = False
          end
          item
            Alignment = taCenter
            Expanded = False
            FieldName = 'PAIS'
            Title.Alignment = taCenter
            Visible = False
          end
          item
            Alignment = taCenter
            Expanded = False
            FieldName = 'REGIAO'
            Title.Alignment = taCenter
            Visible = False
          end
          item
            Alignment = taCenter
            Expanded = False
            FieldName = 'INSCRICAO_RG'
            Title.Alignment = taCenter
            Visible = False
          end
          item
            Alignment = taCenter
            Expanded = False
            FieldName = 'CODIGO_UF'
            Title.Alignment = taCenter
            Visible = False
          end
          item
            Alignment = taCenter
            Expanded = False
            FieldName = 'RG'
            Title.Alignment = taCenter
            Visible = False
          end
          item
            Alignment = taCenter
            Expanded = False
            FieldName = 'CPF'
            Title.Alignment = taCenter
            Visible = False
          end
          item
            Alignment = taCenter
            Expanded = False
            FieldName = 'INSCRICAO'
            Title.Alignment = taCenter
            Visible = False
          end
          item
            Alignment = taCenter
            Expanded = False
            FieldName = 'TIPO_CONTADOR'
            Title.Alignment = taCenter
            Visible = False
          end>
      end
    end
    object tsCadastro: TcxTabSheet
      Caption = 'Cadastro'
      ImageIndex = 1
      OnShow = tsCadastroShow
      object GroupBox1: TGroupBox
        Left = 12
        Top = 79
        Width = 528
        Height = 284
        Caption = '  Dados Contador  '
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -15
        Font.Name = 'Tahoma'
        Font.Style = [fsBold]
        ParentFont = False
        TabOrder = 0
        object Label1: TLabel
          Left = 35
          Top = 28
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
        object Label2: TLabel
          Left = 17
          Top = 60
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
        object Label13: TLabel
          Left = 64
          Top = 124
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
        object Label14: TLabel
          Left = 73
          Top = 156
          Width = 47
          Height = 18
          Caption = 'Celular:'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -15
          Font.Name = 'Tahoma'
          Font.Style = []
          ParentFont = False
        end
        object Label15: TLabel
          Left = 279
          Top = 156
          Width = 72
          Height = 18
          Caption = 'WhatsApp:'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -15
          Font.Name = 'Tahoma'
          Font.Style = []
          ParentFont = False
        end
        object Label17: TLabel
          Left = 77
          Top = 220
          Width = 43
          Height = 18
          Caption = 'E-mail:'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -15
          Font.Name = 'Tahoma'
          Font.Style = []
          ParentFont = False
        end
        object Label16: TLabel
          Left = 77
          Top = 252
          Width = 43
          Height = 18
          Caption = 'E-mail:'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -15
          Font.Name = 'Tahoma'
          Font.Style = []
          ParentFont = False
        end
        object Label18: TLabel
          Left = 58
          Top = 188
          Width = 62
          Height = 18
          Caption = 'Telefone:'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -15
          Font.Name = 'Tahoma'
          Font.Style = []
          ParentFont = False
        end
        object Label19: TLabel
          Left = 289
          Top = 188
          Width = 62
          Height = 18
          Caption = 'Telefone:'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -15
          Font.Name = 'Tahoma'
          Font.Style = []
          ParentFont = False
        end
        object lbn1: TLabel
          Left = 82
          Top = 92
          Width = 38
          Height = 18
          Caption = 'CNPJ:'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -15
          Font.Name = 'Tahoma'
          Font.Style = []
          ParentFont = False
        end
        object lbIN: TLabel
          Left = 327
          Top = 92
          Width = 24
          Height = 18
          Caption = 'I.E:'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -15
          Font.Name = 'Tahoma'
          Font.Style = []
          ParentFont = False
        end
        object FANTASIA: TDBEdit
          Left = 126
          Top = 56
          Width = 387
          Height = 26
          CharCase = ecUpperCase
          DataField = 'NOME_FANTASIA'
          DataSource = DS_CONTADOR
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -15
          Font.Name = 'Tahoma'
          Font.Style = []
          ParentFont = False
          TabOrder = 1
          OnKeyDown = FANTASIAKeyDown
        end
        object CONTATO: TDBEdit
          Left = 126
          Top = 120
          Width = 387
          Height = 26
          CharCase = ecUpperCase
          DataField = 'CONTATO'
          DataSource = DS_CONTADOR
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -15
          Font.Name = 'Tahoma'
          Font.Style = []
          ParentFont = False
          TabOrder = 2
          OnKeyDown = CONTATOKeyDown
        end
        object CELULAR: TDBEdit
          Left = 126
          Top = 152
          Width = 149
          Height = 26
          DataField = 'CELULAR'
          DataSource = DS_CONTADOR
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -15
          Font.Name = 'Tahoma'
          Font.Style = []
          ParentFont = False
          TabOrder = 3
          OnKeyDown = CELULARKeyDown
          OnKeyPress = CELULARKeyPress
        end
        object WHATSAPP: TDBEdit
          Left = 359
          Top = 152
          Width = 154
          Height = 26
          DataField = 'WHATSAPP'
          DataSource = DS_CONTADOR
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -15
          Font.Name = 'Tahoma'
          Font.Style = []
          ParentFont = False
          TabOrder = 4
          OnKeyDown = WHATSAPPKeyDown
          OnKeyPress = WHATSAPPKeyPress
        end
        object TELEFONE1: TDBEdit
          Left = 126
          Top = 184
          Width = 149
          Height = 26
          DataField = 'TELEFONE1'
          DataSource = DS_CONTADOR
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -15
          Font.Name = 'Tahoma'
          Font.Style = []
          ParentFont = False
          TabOrder = 5
          OnKeyDown = TELEFONE1KeyDown
          OnKeyPress = TELEFONE1KeyPress
        end
        object TELEFONE2: TDBEdit
          Left = 359
          Top = 184
          Width = 154
          Height = 26
          DataField = 'TELEFONE2'
          DataSource = DS_CONTADOR
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -15
          Font.Name = 'Tahoma'
          Font.Style = []
          ParentFont = False
          TabOrder = 6
          OnKeyDown = TELEFONE2KeyDown
          OnKeyPress = TELEFONE2KeyPress
        end
        object EMAIL1: TDBEdit
          Left = 126
          Top = 216
          Width = 387
          Height = 26
          CharCase = ecUpperCase
          DataField = 'EMAIL1'
          DataSource = DS_CONTADOR
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -15
          Font.Name = 'Tahoma'
          Font.Style = []
          ParentFont = False
          TabOrder = 7
          OnKeyDown = EMAIL1KeyDown
        end
        object EMAIL2: TDBEdit
          Left = 126
          Top = 248
          Width = 387
          Height = 26
          CharCase = ecUpperCase
          DataField = 'EMAIL2'
          DataSource = DS_CONTADOR
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -15
          Font.Name = 'Tahoma'
          Font.Style = []
          ParentFont = False
          TabOrder = 8
          OnKeyDown = EMAIL2KeyDown
        end
        object codigo: TcxDBTextEdit
          Left = 389
          Top = 26
          DataBinding.DataField = 'CODIGO'
          DataBinding.DataSource = DS_CONTADOR
          ParentFont = False
          Properties.ReadOnly = True
          TabOrder = 0
          Visible = False
          Width = 121
        end
        object medt1: TDBEdit
          Left = 126
          Top = 88
          Width = 160
          Height = 26
          TabStop = False
          CharCase = ecUpperCase
          DataField = 'CPF'
          DataSource = DS_CONTADOR
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -15
          Font.Name = 'Tahoma'
          Font.Style = []
          ParentFont = False
          TabOrder = 9
          Visible = False
          OnKeyDown = medt1KeyDown
          OnKeyPress = medt1KeyPress
        end
        object dbINSCRICAO: TDBEdit
          Left = 360
          Top = 88
          Width = 153
          Height = 26
          DataField = 'INSCRICAO'
          DataSource = DS_CONTADOR
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -15
          Font.Name = 'Tahoma'
          Font.Style = []
          ParentFont = False
          TabOrder = 11
          OnKeyDown = dbINSCRICAOKeyDown
          OnKeyPress = dbINSCRICAOKeyPress
          OnKeyUp = dbINSCRICAOKeyUp
        end
        object dbRG: TDBEdit
          Left = 360
          Top = 88
          Width = 153
          Height = 26
          DataField = 'RG'
          DataSource = DS_CONTADOR
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -15
          Font.Name = 'Tahoma'
          Font.Style = []
          ParentFont = False
          TabOrder = 12
          OnKeyPress = dbRGKeyPress
          OnKeyUp = dbRGKeyUp
        end
        object RAZAO_SOCIAL: TDBEdit
          Left = 126
          Top = 24
          Width = 387
          Height = 26
          CharCase = ecUpperCase
          DataField = 'RAZAO_SOCIAL'
          DataSource = DS_CONTADOR
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -15
          Font.Name = 'Tahoma'
          Font.Style = []
          ParentFont = False
          TabOrder = 13
          OnKeyDown = RAZAO_SOCIALKeyDown
        end
        object CNPJ: TDBEdit
          Left = 126
          Top = 88
          Width = 160
          Height = 26
          CharCase = ecUpperCase
          DataField = 'CNPJ'
          DataSource = DS_CONTADOR
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -15
          Font.Name = 'Tahoma'
          Font.Style = []
          ParentFont = False
          TabOrder = 10
          OnKeyDown = CONTATOKeyDown
          OnKeyPress = CNPJKeyPress
        end
        object btn_ConsultaCNPJ: TcxButton
          Left = 287
          Top = 89
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
          TabOrder = 14
          OnClick = btn_ConsultaCNPJClick
        end
      end
      object BtnCancelar: TcxButton
        Left = 228
        Top = 610
        Width = 105
        Height = 43
        Caption = 'Cancelar'
        Enabled = False
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
        TabOrder = 1
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'HelveticaNeue'
        Font.Style = [fsBold]
        ParentFont = False
        OnClick = BtnCancelarClick
      end
      object BtnGravar: TcxButton
        Left = 58
        Top = 610
        Width = 105
        Height = 43
        Caption = 'Gravar'
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
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          000000000000311E2A489F6085E7AF6A93FFAF6A93FFAF6A93FFAF6A93FFAF6A
          93FFAF6A93FFAF6A93FFAF6A93FFAF6A93FFAF6A93FFAF6A93FFAF6A93FFAF6A
          93FFAF6A93FFAF6A93FFAF6A93FFAF6A93FFAF6A93FFAF6A93FFAF6A93FFAF6A
          93FFAF6A93FF9F6085E7311E2A48000000000000000000000000000000000000
          0000000000009C5F83E4AF6A93FFAF6A93FFAF6A93FFAF6A93FFAF6A93FFAF6A
          93FFAF6A93FFAF6A93FFAF6A93FFAF6A93FFAF6A93FFAF6A93FFAF6A93FFAF6A
          93FFAF6A93FFAF6A93FFAF6A93FFAF6A93FFAF6A93FFAF6A93FFAF6A93FFAF6A
          93FFAF6A93FFAF6A93FF9C5F83E4000000000000000000000000000000000000
          000000000000AF6A93FFAF6A93FFAF6A93FFAF6A93FFAF6A93FFAF6A93FFAF6A
          93FFAF6A93FFAF6A93FFAF6A93FFAF6A93FFAF6A93FFAF6A93FFAF6A93FFAF6A
          93FFAF6A93FFAF6A93FFAF6A93FFAF6A93FFAF6A93FFAF6A93FFAF6A93FFAF6A
          93FFAF6A93FFAF6A93FFAF6A93FF000000000000000000000000000000000000
          000000000000AF6A93FFAF6A93FFAF6A93FF311E2A4800000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          000000000000000000000000000000000000000000000000000000000000311E
          2A48AF6A93FFAF6A93FFAF6A93FF000000000000000000000000000000000000
          000000000000AF6A93FFAF6A93FFAF6A93FF0000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000AF6A93FFAF6A93FFAF6A93FF000000000000000000000000000000000000
          000000000000AF6A93FFAF6A93FFAF6A93FF0000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000AF6A93FFAF6A93FFAF6A93FF000000000000000000000000000000000000
          000000000000AF6A93FFAF6A93FFAF6A93FF0000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000AF6A93FFAF6A93FFAF6A93FF000000000000000000000000000000000000
          000000000000AF6A93FFAF6A93FFAF6A93FF0000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000AF6A93FFAF6A93FFAF6A93FF000000000000000000000000000000000000
          000000000000AF6A93FFAF6A93FFAF6A93FF0000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000AF6A93FFAF6A93FFAF6A93FF000000000000000000000000000000000000
          000000000000AF6A93FFAF6A93FFAF6A93FF0000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000AF6A93FFAF6A93FFAF6A93FF000000000000000000000000000000000000
          000000000000AF6A93FFAF6A93FFAF6A93FF0000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000AF6A93FFAF6A93FFAF6A93FF000000000000000000000000000000000000
          000000000000AF6A93FFAF6A93FFAF6A93FF0000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000AF6A93FFAF6A93FFAF6A93FF000000000000000000000000000000000000
          000000000000AF6A93FFAF6A93FFAF6A93FF2D1B264200000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000002D1B
          2642AF6A93FFAF6A93FFAF6A93FF000000000000000000000000000000000000
          000000000000AF6A93FFAF6A93FFAF6A93FFAF6A93FFAF6A93FFAF6A93FFAF6A
          93FFAF6A93FFAF6A93FFAF6A93FFAF6A93FFAF6A93FFAF6A93FFAF6A93FFAF6A
          93FFAF6A93FFAF6A93FFAF6A93FFAF6A93FFAF6A93FFAF6A93FFAF6A93FFAF6A
          93FFAF6A93FFAF6A93FFAF6A93FF000000000000000000000000000000000000
          000000000000AF6A93FFAF6A93FFAF6A93FFAF6A93FFAF6A93FFAF6A93FFAF6A
          93FFAF6A93FFAF6A93FFAF6A93FFAF6A93FFAF6A93FFAF6A93FFAF6A93FFAF6A
          93FFAF6A93FFAF6A93FFAF6A93FFAF6A93FFAF6A93FFAF6A93FFAF6A93FFAF6A
          93FFAF6A93FFAF6A93FFAF6A93FF000000000000000000000000000000000000
          000000000000AF6A93FFAF6A93FFAF6A93FFAF6A93FFAF6A93FFAF6A93FFAF6A
          93FFAF6A93FFAF6A93FFAF6A93FFAF6A93FFAF6A93FFAF6A93FFAF6A93FFAF6A
          93FFAF6A93FFAF6A93FFAF6A93FFAF6A93FFAF6A93FFAF6A93FFAF6A93FFAF6A
          93FFAF6A93FFAF6A93FFAF6A93FF000000000000000000000000000000000000
          000000000000AF6A93FFAF6A93FFAF6A93FFAF6A93FFAF6A93FF000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000AF6A93FFAF6A
          93FFAF6A93FFAF6A93FFAF6A93FF000000000000000000000000000000000000
          000000000000AF6A93FFAF6A93FFAF6A93FFAF6A93FFAF6A93FF000000000000
          00000000000000000000AF6A93FFAF6A93FFAF6A93FFAF6A93FFAF6A93FFAF6A
          93FFAF6A93FFAF6A93FFAF6A93FFAF6A93FFAF6A93FF00000000AF6A93FFAF6A
          93FFAF6A93FFAF6A93FFAF6A93FF000000000000000000000000000000000000
          000000000000AF6A93FFAF6A93FFAF6A93FFAF6A93FFAF6A93FF000000000000
          00000000000000000000AF6A93FFAF6A93FFAF6A93FFAF6A93FFAF6A93FFAF6A
          93FFAF6A93FFAF6A93FFAF6A93FFAF6A93FFAF6A93FF00000000AF6A93FFAF6A
          93FFAF6A93FFAF6A93FFAF6A93FF000000000000000000000000000000000000
          000000000000AF6A93FFAF6A93FFAF6A93FFAF6A93FFAF6A93FF000000000000
          00000000000000000000AF6A93FFAF6A93FFAF6A93FFAF6A93FFAF6A93FFAF6A
          93FF000000000000000000000000AF6A93FFAF6A93FF00000000AF6A93FFAF6A
          93FFAF6A93FFAF6A93FFAF6A93FF000000000000000000000000000000000000
          000000000000AF6A93FFAF6A93FFAF6A93FFAF6A93FFAF6A93FF000000000000
          00000000000000000000AF6A93FFAF6A93FFAF6A93FFAF6A93FFAF6A93FFAF6A
          93FF000000000000000000000000AF6A93FFAF6A93FF00000000AF6A93FFAF6A
          93FFAF6A93FFAF6A93FFAF6A93FF000000000000000000000000000000000000
          000000000000AF6A93FFAF6A93FFAF6A93FFAF6A93FFAF6A93FF000000000000
          00000000000000000000AF6A93FFAF6A93FFAF6A93FFAF6A93FFAF6A93FFAF6A
          93FF000000000000000000000000AF6A93FFAF6A93FF00000000AF6A93FFAF6A
          93FFAF6A93FFAF6A93FFAF6A93FF000000000000000000000000000000000000
          000000000000AF6A93FFAF6A93FFAF6A93FFAF6A93FFAF6A93FF000000000000
          00000000000000000000AF6A93FFAF6A93FFAF6A93FFAF6A93FFAF6A93FFAF6A
          93FF000000000000000000000000AF6A93FFAF6A93FF00000000AF6A93FFAF6A
          93FFAF6A93FFAF6A93FFAF6A93FF000000000000000000000000000000000000
          000000000000AF6A93FFAF6A93FFAF6A93FFAF6A93FFAF6A93FF000000000000
          00000000000000000000AF6A93FFAF6A93FFAF6A93FFAF6A93FFAF6A93FFAF6A
          93FF000000000000000000000000AF6A93FFAF6A93FF00000000AF6A93FFAF6A
          93FFAF6A93FFAF6A93FFAF6A93FF000000000000000000000000000000000000
          0000000000009F6085E7AF6A93FFAF6A93FFAF6A93FFAF6A93FF000000000000
          00000000000000000000AF6A93FFAF6A93FFAF6A93FFAF6A93FFAF6A93FFAF6A
          93FFAF6A93FFAF6A93FFAF6A93FFAF6A93FFAF6A93FF00000000AF6A93FFAF6A
          93FFAF6A93FFAF6A93FF9F6085E7000000000000000000000000000000000000
          0000000000002B1A243F8A5474C9AF6A93FFAF6A93FFAF6A93FF000000000000
          00000000000000000000AF6A93FFAF6A93FFAF6A93FFAF6A93FFAF6A93FFAF6A
          93FFAF6A93FFAF6A93FFAF6A93FFAF6A93FFAF6A93FF00000000AF6A93FFAF6A
          93FFAF6A93FF8A5474C92B1A243F000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
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
        OnClick = BtnGravarClick
      end
      object BtnIncluir: TcxButton
        Left = 58
        Top = 610
        Width = 105
        Height = 43
        Hint = 'Come'#231'ar um novo cadastro.'
        Caption = 'Incluir'
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
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
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
        TabOrder = 3
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'HelveticaNeue'
        Font.Style = [fsBold]
        ParentFont = False
        OnClick = BtnIncluirClick
      end
      object BtnAlterar: TcxButton
        Left = 394
        Top = 610
        Width = 105
        Height = 42
        Caption = 'Alterar'
        LookAndFeel.NativeStyle = False
        LookAndFeel.SkinName = 'Metropolis'
        OptionsImage.Glyph.Data = {
          36100000424D3610000000000000360000002800000020000000200000000100
          2000000000000010000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000B8824DFFB882
          4DFFB8824DFFB8824DFF251A0F33000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000B8824DFFB882
          4DFFB8824DFF251A0F33B8824DFF251A0F330000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000B8824DFFB882
          4DFF251A0F33B8824DFFB8824DFFB8824DFF251A0F3300000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000B8824DFF251A
          0F33B8824DFFB8824DFFB8824DFFB8824DFFB8824DFF251A0F33000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          000000000000000000000000000000000000848484FF848484FF848484FF8484
          84FF848484FF848484FF848484FF848484FF848484FFFFFFFFFFF1E6DBFFB882
          4DFFB8824DFFB8824DFFB8824DFFB8824DFFB8824DFFB8824DFF251A0F330000
          0000000000000000000000000000000000000000000000000000000000000000
          000000000000000000000000000000000000848484FFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF1E6
          DBFFB8824DFFB8824DFFB8824DFFB8824DFFB8824DFFB8824DFFB8824DFF251A
          0F33000000000000000000000000000000000000000000000000000000000000
          000000000000000000000000000000000000848484FFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFF1E6DBFFB8824DFFB8824DFFB8824DFFB8824DFFB8824DFFB8824DFFB882
          4DFF251A0F330000000000000000000000000000000000000000000000000000
          000000000000000000000000000000000000848484FFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFF1E6DBFFB8824DFFB8824DFFB8824DFFB8824DFFB8824DFFB882
          4DFFB8824DFF251A0F3300000000000000000000000000000000000000000000
          000000000000000000000000000000000000848484FFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFF1E6DBFFB8824DFFB8824DFFB8824DFFB8824DFFB882
          4DFFB8824DFFB8824DFF251A0F33000000000000000000000000000000000000
          000000000000000000000000000000000000848484FFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFF1E6DBFFB8824DFFB8824DFFB8824DFFB882
          4DFFB8824DFFB8824DFFB8824DFF251A0F330000000000000000000000000000
          000000000000000000000000000000000000848484FFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF1E6DBFFB8824DFFB8824DFFB882
          4DFFB8824DFFB8824DFF251A0F33B8824DFF251A0F3300000000000000000000
          000000000000000000000000000000000000848484FFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF1E6DBFFB8824DFFB882
          4DFFB8824DFF251A0F33B8824DFFB8824DFFB8824DFF00000000000000000000
          000000000000000000000000000000000000848484FFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF1E6DBFFB882
          4DFF251A0F33B8824DFFB8824DFFB8824DFFB8824DFF00000000000000000000
          000000000000000000000000000000000000848484FFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF1E6
          DBFFB8824DFFB8824DFFB8824DFFB8824DFF251A0F3300000000000000000000
          000000000000000000000000000000000000848484FFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFF251A0F33B8824DFFB8824DFF251A0F330000000000000000000000000000
          000000000000000000000000000000000000848484FFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF8484
          84FF000000000000000000000000000000000000000000000000000000000000
          000000000000000000000000000000000000848484FFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF8484
          84FF000000000000000000000000000000000000000000000000000000000000
          000000000000000000000000000000000000848484FFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF8484
          84FF000000000000000000000000000000000000000000000000000000000000
          000000000000000000000000000000000000848484FFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF8484
          84FF000000000000000000000000000000000000000000000000000000000000
          000000000000000000000000000000000000848484FFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF8484
          84FF000000000000000000000000000000000000000000000000000000000000
          000000000000000000000000000000000000848484FFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFF848484FF848484FF848484FF848484FF848484FF848484FF848484FF7777
          77E6000000000000000000000000000000000000000000000000000000000000
          000000000000000000000000000000000000848484FFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFF848484FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFDDDDDDFF8A8A8AFA2626
          264A000000000000000000000000000000000000000000000000000000000000
          000000000000000000000000000000000000848484FFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFF848484FFFFFFFFFFFFFFFFFFFFFFFFFFDDDDDDFF8A8A8AFA2E2E2E4A0000
          0000000000000000000000000000000000000000000000000000000000000000
          000000000000000000000000000000000000848484FFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFF848484FFFFFFFFFFFFFFFFFFDDDDDDFF8B8B8BFB2E2E2E4A000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          000000000000000000000000000000000000848484FFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFF848484FFFFFFFFFFDDDDDDFF8B8B8BFB2E2E2E4A00000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          000000000000000000000000000000000000848484FFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFF848484FFDDDDDDFF8B8B8BFB2E2E2E4A0000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          000000000000000000000000000000000000848484FFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFF848484FF8B8B8BFB2E2E2E4A000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          000000000000000000000000000000000000848484FF848484FF848484FF8484
          84FF848484FF848484FF848484FF848484FF848484FF848484FF848484FF8484
          84FF767676E32626264A00000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
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
        Font.Quality = fqDraft
        ParentFont = False
        OnClick = BtnAlterarClick
      end
      object grpEndereco: TGroupBox
        Left = 12
        Top = 369
        Width = 528
        Height = 224
        Caption = '  Endere'#231'o  '
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -15
        Font.Name = 'Tahoma'
        Font.Style = [fsBold]
        ParentFont = False
        TabOrder = 5
        object TLabel
          Left = 415
          Top = 193
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
          Left = 327
          Top = 124
          Width = 99
          Height = 17
          Caption = 'C'#243'd. Municipio:'
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Height = -15
          Font.Name = 'Helvetica Neue'
          Font.Style = []
          ParentFont = False
        end
        object Label22: TLabel
          Left = 192
          Top = 58
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
          Left = 317
          Top = 92
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
        object TLabel
          Left = 83
          Top = 193
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
          Left = 282
          Top = 193
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
          Left = 42
          Top = 124
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
          Left = 10
          Top = 92
          Width = 96
          Height = 17
          Caption = 'Complemento:'
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Height = -15
          Font.Name = 'Helvetica Neue'
          Font.Style = []
          ParentFont = False
        end
        object Label25: TLabel
          Left = 50
          Top = 58
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
        object Label26: TLabel
          Left = 14
          Top = 24
          Width = 92
          Height = 17
          Caption = 'Rua | Avenida:'
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Height = -15
          Font.Name = 'Helvetica Neue'
          Font.Style = []
          ParentFont = False
        end
        object TLabel
          Left = 70
          Top = 158
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
          Left = 327
          Top = 158
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
          Left = 170
          Top = 193
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
        object btnMunicip: TcxButton
          Left = 266
          Top = 119
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
          TabOrder = 8
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = [fsBold]
          ParentFont = False
          OnClick = btnMunicipClick
        end
        object cxButton19: TcxButton
          Left = 266
          Top = 153
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
          TabOrder = 11
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = [fsBold]
          ParentFont = False
          OnClick = cxButton19Click
        end
        object btn_cep: TcxButton
          Left = 487
          Top = 87
          Width = 26
          Height = 26
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
          TabOrder = 6
          OnClick = btn_cepClick
        end
        object DBEdit76: TDBEdit
          Left = 112
          Top = 19
          Width = 401
          Height = 26
          CharCase = ecUpperCase
          Color = clHighlightText
          DataField = 'RUA'
          DataSource = DS_CONTADOR
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -15
          Font.Name = 'Tahoma'
          Font.Style = []
          ParentFont = False
          TabOrder = 0
          OnKeyDown = DBEdit76KeyDown
        end
        object DBEdit75: TDBEdit
          Left = 112
          Top = 53
          Width = 72
          Height = 26
          BiDiMode = bdRightToLeft
          CharCase = ecUpperCase
          DataField = 'NUMERO'
          DataSource = DS_CONTADOR
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Height = -15
          Font.Name = 'Tahoma'
          Font.Style = []
          ParentBiDiMode = False
          ParentFont = False
          TabOrder = 1
          OnKeyDown = DBEdit75KeyDown
        end
        object DBEdit77: TDBEdit
          Left = 112
          Top = 87
          Width = 178
          Height = 26
          CharCase = ecUpperCase
          DataField = 'COMPLEMENTO'
          DataSource = DS_CONTADOR
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Height = -15
          Font.Name = 'Tahoma'
          Font.Style = []
          ParentFont = False
          TabOrder = 4
          OnKeyDown = DBEdit77KeyDown
        end
        object DBEdit81: TDBEdit
          Left = 112
          Top = 119
          Width = 155
          Height = 26
          CharCase = ecUpperCase
          DataField = 'MUNICIPIO'
          DataSource = DS_CONTADOR
          Enabled = False
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Height = -15
          Font.Name = 'Tahoma'
          Font.Style = []
          ParentFont = False
          TabOrder = 7
        end
        object DBEdit1: TDBEdit
          Left = 112
          Top = 153
          Width = 155
          Height = 26
          CharCase = ecUpperCase
          Color = clHighlightText
          DataField = 'ZONA'
          DataSource = DS_CONTADOR
          Enabled = False
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Height = -15
          Font.Name = 'Tahoma'
          Font.Style = []
          ParentFont = False
          TabOrder = 10
        end
        object DBEdit82: TDBEdit
          Left = 112
          Top = 188
          Width = 39
          Height = 26
          CharCase = ecUpperCase
          DataField = 'UF'
          DataSource = DS_CONTADOR
          Enabled = False
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Height = -15
          Font.Name = 'Tahoma'
          Font.Style = []
          ParentFont = False
          TabOrder = 13
        end
        object DBEdit83: TDBEdit
          Left = 320
          Top = 188
          Width = 80
          Height = 26
          CharCase = ecUpperCase
          DataField = 'PAIS'
          DataSource = DS_CONTADOR
          Enabled = False
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Height = -15
          Font.Name = 'Tahoma'
          Font.Style = []
          ParentFont = False
          TabOrder = 14
        end
        object DBEdit80: TDBEdit
          Left = 432
          Top = 119
          Width = 81
          Height = 26
          CharCase = ecUpperCase
          DataField = 'CODIGO_MUNICIPIO'
          DataSource = DS_CONTADOR
          Enabled = False
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Height = -15
          Font.Name = 'Tahoma'
          Font.Style = []
          ParentFont = False
          TabOrder = 9
        end
        object DBEdit78: TDBEdit
          Left = 358
          Top = 87
          Width = 130
          Height = 26
          CharCase = ecUpperCase
          DataField = 'CEP'
          DataSource = DS_CONTADOR
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Height = -15
          Font.Name = 'Tahoma'
          Font.Style = []
          ParentFont = False
          TabOrder = 5
          OnKeyDown = DBEdit78KeyDown
          OnKeyPress = DBEdit78KeyPress
        end
        object DBEdit104: TDBEdit
          Left = 474
          Top = 188
          Width = 39
          Height = 26
          CharCase = ecUpperCase
          DataField = 'CODIGO_PAIS'
          DataSource = DS_CONTADOR
          Enabled = False
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Height = -15
          Font.Name = 'Tahoma'
          Font.Style = []
          ParentFont = False
          TabOrder = 15
        end
        object DBEdit79: TDBEdit
          Left = 238
          Top = 53
          Width = 249
          Height = 26
          CharCase = ecUpperCase
          DataField = 'BAIRRO'
          DataSource = DS_CONTADOR
          Enabled = False
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Height = -15
          Font.Name = 'Tahoma'
          Font.Style = []
          ParentFont = False
          TabOrder = 2
          OnKeyDown = DBEdit79KeyDown
        end
        object cxButton1: TcxButton
          Left = 487
          Top = 53
          Width = 26
          Height = 26
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
          TabOrder = 3
          OnClick = cxButton1Click
        end
        object DBComboBox1: TDBComboBox
          Left = 383
          Top = 154
          Width = 130
          Height = 26
          Style = csDropDownList
          CharCase = ecUpperCase
          DataField = 'REGIAO'
          DataSource = DS_CONTADOR
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -15
          Font.Name = 'Tahoma'
          Font.Style = []
          Items.Strings = (
            'SUL'
            'NORTE'
            'SULDESTE'
            'CENTRO-OESTE'
            'NORDESTE')
          ParentFont = False
          TabOrder = 12
        end
        object DBEdit2: TDBEdit
          Left = 226
          Top = 188
          Width = 39
          Height = 26
          CharCase = ecUpperCase
          DataField = 'CODIGO_UF'
          DataSource = DS_CONTADOR
          Enabled = False
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Height = -15
          Font.Name = 'Tahoma'
          Font.Style = []
          ParentFont = False
          TabOrder = 16
        end
      end
      object GroupBox3: TGroupBox
        Left = 367
        Top = 12
        Width = 96
        Height = 57
        Caption = '  Status  '
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'Tahoma'
        Font.Style = [fsBold]
        ParentFont = False
        TabOrder = 6
        object DBCk_Inativo: TDBCheckBox
          Left = 11
          Top = 25
          Width = 78
          Height = 17
          Caption = 'Inativo'
          DataField = 'STATUS_CADASTRAL'
          DataSource = DS_CONTADOR
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Height = -15
          Font.Name = 'Tahoma'
          Font.Style = [fsBold]
          ParentFont = False
          TabOrder = 0
        end
      end
      object GroupBox8: TGroupBox
        Left = 111
        Top = 12
        Width = 196
        Height = 57
        Caption = '  TIPO CONTADOR  '
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'Tahoma'
        Font.Style = [fsBold]
        ParentFont = False
        TabOrder = 7
        object BtnFisica: TcxButton
          Left = 17
          Top = 22
          Width = 75
          Height = 25
          Caption = 'F'#237'sica'
          LookAndFeel.NativeStyle = False
          LookAndFeel.SkinName = 'Metropolis'
          OptionsImage.Glyph.Data = {
            36040000424D3604000000000000360000002800000010000000100000000100
            2000000000000004000000000000000000000000000000000000000000000000
            0004000000150000002B00000033000000330000003400000035000000350000
            0036000000360000003600000030000000180000000500000000000000000000
            00143D322A9B947C67FF8F7763FF89715FFF826C59FF7A6553FF735E4CFF6A55
            44FF624E3DFF5A4636FF533F2FFF1E1610A40000001800000000000000000000
            0024927B67F8F4F3F1FFCEB1A4FFC7A694FFD0CAC1FFBD9885FFB88E78FFB8B0
            A4FFB0856FFFAE7D64FF9F9686FF4C3A2BFA0000002D00000000000000000000
            0024937C67F8F5F3F2FFD3B9ABFFCAAB9CFFD6D0C9FFC09E8BFFBC9581FFBFB7
            ACFFB38A74FFB0836DFFA49C8CFF513E30FB0000003100000000000000000000
            001C7B6856E0E7E0DBFFE9DFDAFFDBCDC5FFDCD7D1FFCFC0B5FFC8B8ACFFC6C0
            B4FFBCA899FFB5A190FF9E9384FF49392DE90000002700000000000000000000
            000F4C4035A3CABDB1FFFBFAF9FFEEEAE7FFC3BCB4FF8D8176FF7D6F62FFA399
            8EFFC5BEB4FFBEB6AAFF988C7FFF2F261FB40000001700000000000000000000
            00040A0807318D7867ECDBD1CBFFFBFBFAFFA0988EFF8DB2C7FF6184A7FF7161
            54FFDED9D4FFC4BCB5FF68594CF2070604430000000600000000000000000000
            0000000000070706052D665647C6AB9787FF687487FF335990FF2B4E87FF4449
            5DFF99887CFF52453BD10504043F0000000B0000000100000000000000000000
            000000000000000000040000001E2B3647A76484AFFF7FA3C6FF4B83B4FF234B
            88FF151D32B50000002B00000007000000000000000000000000000000000000
            00000000000000000000000000112A466ECCB0C1D8FF96CCECFF70AFD6FF4377
            AAFF0A1F4ACD0000001B00000000000000000000000000000000000000000000
            000000000000000000000001041E1A346EF9E8EDF4FFA7DDF6FF84C2E5FF6099
            C3FF102F6BF10003073300000000000000000000000000000000000000000000
            00000000000000000000020D2E800B2162FEE4E9F1FFCAEBFBFF96D3F1FF689F
            C6FF14356FF102122CA100000000000000000000000000000000000000000000
            00000000000000000000031444AE486C9EFF203570FF69789FFF97B9D4FF7298
            BEFF0B2552EB041634B400000000000000000000000000000000000000000000
            0000000000000000000003123B92446699FF5A82B0FF355990FF152D68FF2E49
            7BFE072352FF0312298800000000000000000000000000000000000000000000
            0000000000000000000001051128173273F7597EACFF648DB8FF4E76A5FF0B20
            59FC041128810002040E00000000000000000000000000000000000000000000
            0000000000000000000000000000020A214F04164CC1041A5BF303144DD90107
            1C58000000010000000000000000000000000000000000000000}
          TabOrder = 0
          OnClick = BtnFisicaClick
        end
        object BtnJuridica: TcxButton
          Left = 109
          Top = 22
          Width = 75
          Height = 25
          Caption = 'Jur'#237'dica'
          LookAndFeel.NativeStyle = False
          LookAndFeel.SkinName = 'Metropolis'
          OptionsImage.Glyph.Data = {
            36040000424D3604000000000000360000002800000010000000100000000100
            2000000000000004000000000000000000000000000000000000000000000000
            0004000000150000002B00000033000000330000003400000035000000350000
            0036000000360000003600000030000000180000000500000000000000000000
            00141615149B34312FFF302C2BFF2A2826FF262322FF221F1EFF1D1B1AFF1917
            16FF151313FF100F0FFF0D0D0CFF040404A40000001800000000000000000000
            0024393534F8827A74FF554840FF493C37FF423731FF13100EFF100C0CFF2D23
            1FFF261C19FF211815FF1F1714FF0C0C0CFA0000002D00000000000000000000
            00243D3937F88B817BFF675B53FF564941FF2F2B29FF323182FF1A1A6CFF2523
            21FF302520FF281E1BFF221A17FF0F0E0DFB0000003100000000000000000000
            001C363330E0847B75FF7E7269FF63554CFF5E5B5AFF615FA1FF35357DFF5654
            53FF3D302BFF312622FF261E1BFF100E0EE90000002700000000000000000000
            000F242120A3706864FF988C86FF7A6D65FFBBB9B9FF5E5CA0FF4C4C8CFFB7B6
            B6FF463A34FF3C302AFF302B28FF0B0B0AB40000001700000000000000000000
            00040505043144403CEC807772FF958B84FFF7F7F7FF2A2984FF232371FFF5F5
            F5FF5E544FFF564F4CFF1F1E1CF2020202430000000600000000000000000000
            0000000000070303032D312D2BC64A4543FF74849DFF436296FF3C588DFF6370
            8BFF353230FF1B1919D10201013F0000000B0000000100000000000000000000
            000000000000000000040000001E202E41A76484AFFF7FA3C6FF4B83B4FF224B
            87FF0B152BB50000002B00000007000000000000000000000000000000000000
            00000000000000000000000000112A4467CCB0C1D8FF96CCECFF70AFD6FF4377
            AAFF0A1F4ACD0000001B00000000000000000000000000000000000000000000
            000000000000000000000001021E1A2F51F9E8EDF4FFA7DDF6FF84C2E5FF6099
            C3FF102F6BF10000033300000000000000000000000000000000000000000000
            00000000000000000000030B19800A1938FEE4E9F0FFCAEBFBFF96D3F1FF689F
            C6FF14346EF1000213A100000000000000000000000000000000000000000000
            00000000000000000000061126AE1F395BFF212D49FF687387FF97B7CBFF7297
            BDFF071235EB000216B400000000000000000000000000000000000000000000
            00000000000000000000061122921F375AFF233E61FF0C2041FF071432FF2C3E
            62FE030927FF0103138800000000000000000000000000000000000000000000
            0000000000000000000002050A280F2444F7264165FF2A476BFF223D60FF0612
            2FFC020715810000020E00000000000000000000000000000000000000000000
            0000000000000000000000000000040A144F07152DC1071633F304102AD90105
            0F58000000010000000000000000000000000000000000000000}
          TabOrder = 1
          OnClick = BtnJuridicaClick
        end
      end
    end
  end
  object DS_CONTADOR: TDataSource
    DataSet = FDCONTADOR
    Left = 98
    Top = 365
  end
  object FDCONTADOR: TFDQuery
    Connection = Module.connection
    SQL.Strings = (
      'SELECT * FROM CAD_CONTADOR WHERE CODIGO LIKE :PCODIGO')
    Left = 34
    Top = 317
    ParamData = <
      item
        Name = 'PCODIGO'
        DataType = ftString
        ParamType = ptInput
        Value = Null
      end>
    object FDCONTADORCODIGO: TFDAutoIncField
      FieldName = 'CODIGO'
      ReadOnly = True
    end
    object FDCONTADORRAZAO_SOCIAL: TStringField
      FieldName = 'RAZAO_SOCIAL'
      Origin = 'RAZAO_SOCIAL'
      Size = 200
    end
    object FDCONTADORNOME_FANTASIA: TStringField
      FieldName = 'NOME_FANTASIA'
      Origin = 'NOME_FANTASIA'
      Size = 200
    end
    object FDCONTADORCNPJ: TStringField
      FieldName = 'CNPJ'
      Origin = 'CNPJ'
      EditMask = '99.999.999\/9999-99;0;_'
      Size = 14
    end
    object FDCONTADORWHATSAPP: TStringField
      FieldName = 'WHATSAPP'
      Origin = 'WHATSAPP'
      EditMask = '!\(99\) \99999-9999;0;_'
    end
    object FDCONTADORCONTATO: TStringField
      FieldName = 'CONTATO'
      Origin = 'CONTATO'
      Size = 100
    end
    object FDCONTADORTELEFONE2: TStringField
      FieldName = 'TELEFONE2'
      Origin = 'TELEFONE2'
      EditMask = '!\(99\) 9999-9999;0;_'
    end
    object FDCONTADORCELULAR: TStringField
      FieldName = 'CELULAR'
      Origin = 'CELULAR'
      EditMask = '!\(99\) \99999-9999;0;_'
    end
    object FDCONTADORTELEFONE1: TStringField
      FieldName = 'TELEFONE1'
      Origin = 'TELEFONE1'
      EditMask = '!\(99\) 9999-9999;0;_'
    end
    object FDCONTADOREMAIL2: TStringField
      FieldName = 'EMAIL2'
      Origin = 'EMAIL2'
      Size = 100
    end
    object FDCONTADOREMAIL1: TStringField
      FieldName = 'EMAIL1'
      Size = 100
    end
    object FDCONTADORNUMERO: TStringField
      FieldName = 'NUMERO'
      Origin = 'NUMERO'
      Size = 6
    end
    object FDCONTADORRUA: TStringField
      FieldName = 'RUA'
      Origin = 'RUA'
      Size = 200
    end
    object FDCONTADORCOMPLEMENTO: TStringField
      FieldName = 'COMPLEMENTO'
      Origin = 'COMPLEMENTO'
      Size = 200
    end
    object FDCONTADORBAIRRO: TStringField
      FieldName = 'BAIRRO'
      Origin = 'BAIRRO'
      Size = 200
    end
    object FDCONTADORZONA: TStringField
      FieldName = 'ZONA'
      Origin = 'ZONA'
      Size = 100
    end
    object FDCONTADORUF: TStringField
      DisplayWidth = 3
      FieldName = 'UF'
      Origin = 'UF'
      Size = 10
    end
    object FDCONTADORCEP: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'CEP'
      Origin = 'CEP'
      EditMask = '99\.999\-999;0;_'
      Size = 50
    end
    object FDCONTADORSTATUS_CADASTRAL: TStringField
      FieldName = 'STATUS_CADASTRAL'
      FixedChar = True
      Size = 7
    end
    object FDCONTADORMUNICIPIO: TStringField
      FieldName = 'MUNICIPIO'
      Origin = 'MUNICIPIO'
      Size = 100
    end
    object FDCONTADORCODIGO_MUNICIPIO: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'CODIGO_MUNICIPIO'
      Origin = 'CODIGO_MUNICIPIO'
      Size = 50
    end
    object FDCONTADORPAIS: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'PAIS'
      Origin = 'PAIS'
      Size = 50
    end
    object FDCONTADORCODIGO_PAIS: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'CODIGO_PAIS'
      Origin = 'CODIGO_PAIS'
      Size = 50
    end
    object FDCONTADORREGIAO: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'REGIAO'
      Origin = 'REGIAO'
      Size = 50
    end
    object FDCONTADORINSCRICAO_RG: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'INSCRICAO_RG'
      Origin = 'INSCRICAO_RG'
      Size = 14
    end
    object FDCONTADORCODIGO_UF: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'CODIGO_UF'
      Origin = 'CODIGO_UF'
      Size = 50
    end
    object FDCONTADORRG: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'RG'
      Origin = 'RG'
      Size = 18
    end
    object FDCONTADORCPF: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'CPF'
      Origin = 'CPF'
      EditMask = '999\.999\.999\-99;0;_'
      Size = 18
    end
    object FDCONTADORINSCRICAO: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'INSCRICAO'
      Origin = 'INSCRICAO'
      Size = 14
    end
    object FDCONTADORTIPO_CONTADOR: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'TIPO_CONTADOR'
      Origin = 'TIPO_CONTADOR'
      FixedChar = True
      Size = 8
    end
  end
  object SQL_INCREMENT: TFDQuery
    Connection = Module.connection
    SQL.Strings = (
      'select max(codigo)+1 as auto_increment from cad_contador')
    Left = 63
    Top = 396
    object SQL_INCREMENTauto_increment: TLargeintField
      AutoGenerateValue = arDefault
      FieldName = 'auto_increment'
      Origin = 'auto_increment'
      ProviderFlags = []
      ReadOnly = True
    end
  end
  object SQL_C_Clientes: TFDQuery
    Connection = Module.connection
    SQL.Strings = (
      'Select * from cad_contador')
    Left = 226
    Top = 325
    object SQL_C_ClientesCODIGO: TFDAutoIncField
      FieldName = 'CODIGO'
      Origin = 'CODIGO'
      ProviderFlags = [pfInWhere, pfInKey]
      ReadOnly = True
    end
    object SQL_C_ClientesRAZAO_SOCIAL: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'RAZAO_SOCIAL'
      Origin = 'RAZAO_SOCIAL'
      Size = 200
    end
    object SQL_C_ClientesNOME_FANTASIA: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'NOME_FANTASIA'
      Origin = 'NOME_FANTASIA'
      Size = 200
    end
    object SQL_C_ClientesCNPJ: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'CNPJ'
      Origin = 'CNPJ'
      Size = 18
    end
    object SQL_C_ClientesCONTATO: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'CONTATO'
      Origin = 'CONTATO'
      Size = 100
    end
    object SQL_C_ClientesCELULAR: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'CELULAR'
      Origin = 'CELULAR'
    end
    object SQL_C_ClientesWHATSAPP: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'WHATSAPP'
      Origin = 'WHATSAPP'
    end
    object SQL_C_ClientesTELEFONE1: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'TELEFONE1'
      Origin = 'TELEFONE1'
    end
    object SQL_C_ClientesTELEFONE2: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'TELEFONE2'
      Origin = 'TELEFONE2'
      Size = 50
    end
    object SQL_C_ClientesEMAIL1: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'EMAIL1'
      Origin = 'EMAIL1'
      Size = 100
    end
    object SQL_C_ClientesEMAIL2: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'EMAIL2'
      Origin = 'EMAIL2'
      Size = 100
    end
    object SQL_C_ClientesRUA: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'RUA'
      Origin = 'RUA'
      Size = 200
    end
    object SQL_C_ClientesNUMERO: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'NUMERO'
      Origin = 'NUMERO'
      Size = 6
    end
    object SQL_C_ClientesCOMPLEMENTO: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'COMPLEMENTO'
      Origin = 'COMPLEMENTO'
      Size = 200
    end
    object SQL_C_ClientesBAIRRO: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'BAIRRO'
      Origin = 'BAIRRO'
      Size = 200
    end
    object SQL_C_ClientesZONA: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'ZONA'
      Origin = 'ZONA'
      Size = 100
    end
    object SQL_C_ClientesUF: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'UF'
      Origin = 'UF'
      Size = 10
    end
    object SQL_C_ClientesCEP: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'CEP'
      Origin = 'CEP'
      Size = 100
    end
    object SQL_C_ClientesMUNICIPIO: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'MUNICIPIO'
      Origin = 'MUNICIPIO'
      Size = 100
    end
    object SQL_C_ClientesSTATUS_CADASTRAL: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'STATUS_CADASTRAL'
      Origin = 'STATUS_CADASTRAL'
      FixedChar = True
      Size = 7
    end
    object SQL_C_ClientesCODIGO_MUNICIPIO: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'CODIGO_MUNICIPIO'
      Origin = 'CODIGO_MUNICIPIO'
      Size = 50
    end
    object SQL_C_ClientesCODIGO_PAIS: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'CODIGO_PAIS'
      Origin = 'CODIGO_PAIS'
      Size = 50
    end
    object SQL_C_ClientesPAIS: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'PAIS'
      Origin = 'PAIS'
      Size = 50
    end
    object SQL_C_ClientesREGIAO: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'REGIAO'
      Origin = 'REGIAO'
      Size = 50
    end
    object SQL_C_ClientesINSCRICAO_RG: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'INSCRICAO_RG'
      Origin = 'INSCRICAO_RG'
      Size = 14
    end
    object SQL_C_ClientesCODIGO_UF: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'CODIGO_UF'
      Origin = 'CODIGO_UF'
      Size = 50
    end
  end
  object DT_C_Clientes: TDataSource
    DataSet = SQL_C_Clientes
    Left = 194
    Top = 365
  end
  object SQL_LISTA: TFDQuery
    Active = True
    Connection = Module.connection
    SQL.Strings = (
      'Select * from cad_contador')
    Left = 464
    Top = 608
    object SQL_LISTACODIGO: TFDAutoIncField
      FieldName = 'CODIGO'
      Origin = 'CODIGO'
      ProviderFlags = [pfInWhere, pfInKey]
      ReadOnly = True
    end
    object SQL_LISTARAZAO_SOCIAL: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'RAZAO_SOCIAL'
      Origin = 'RAZAO_SOCIAL'
      Size = 200
    end
    object SQL_LISTANOME_FANTASIA: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'NOME_FANTASIA'
      Origin = 'NOME_FANTASIA'
      Size = 200
    end
    object SQL_LISTACNPJ: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'CNPJ'
      Origin = 'CNPJ'
      Size = 18
    end
    object SQL_LISTACONTATO: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'CONTATO'
      Origin = 'CONTATO'
      Size = 100
    end
    object SQL_LISTACELULAR: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'CELULAR'
      Origin = 'CELULAR'
    end
    object SQL_LISTAWHATSAPP: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'WHATSAPP'
      Origin = 'WHATSAPP'
    end
    object SQL_LISTATELEFONE1: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'TELEFONE1'
      Origin = 'TELEFONE1'
    end
    object SQL_LISTATELEFONE2: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'TELEFONE2'
      Origin = 'TELEFONE2'
      Size = 50
    end
    object SQL_LISTAEMAIL1: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'EMAIL1'
      Origin = 'EMAIL1'
      Size = 100
    end
    object SQL_LISTAEMAIL2: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'EMAIL2'
      Origin = 'EMAIL2'
      Size = 100
    end
    object SQL_LISTARUA: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'RUA'
      Origin = 'RUA'
      Size = 200
    end
    object SQL_LISTANUMERO: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'NUMERO'
      Origin = 'NUMERO'
      Size = 6
    end
    object SQL_LISTACOMPLEMENTO: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'COMPLEMENTO'
      Origin = 'COMPLEMENTO'
      Size = 200
    end
    object SQL_LISTABAIRRO: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'BAIRRO'
      Origin = 'BAIRRO'
      Size = 200
    end
    object SQL_LISTAZONA: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'ZONA'
      Origin = 'ZONA'
      Size = 100
    end
    object SQL_LISTAUF: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'UF'
      Origin = 'UF'
      Size = 10
    end
    object SQL_LISTACEP: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'CEP'
      Origin = 'CEP'
      Size = 100
    end
    object SQL_LISTAMUNICIPIO: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'MUNICIPIO'
      Origin = 'MUNICIPIO'
      Size = 100
    end
    object SQL_LISTASTATUS_CADASTRAL: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'STATUS_CADASTRAL'
      Origin = 'STATUS_CADASTRAL'
      FixedChar = True
      Size = 7
    end
    object SQL_LISTACODIGO_MUNICIPIO: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'CODIGO_MUNICIPIO'
      Origin = 'CODIGO_MUNICIPIO'
      Size = 50
    end
    object SQL_LISTACODIGO_PAIS: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'CODIGO_PAIS'
      Origin = 'CODIGO_PAIS'
      Size = 50
    end
    object SQL_LISTAPAIS: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'PAIS'
      Origin = 'PAIS'
      Size = 50
    end
    object SQL_LISTAREGIAO: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'REGIAO'
      Origin = 'REGIAO'
      Size = 50
    end
    object SQL_LISTAINSCRICAO_RG: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'INSCRICAO_RG'
      Origin = 'INSCRICAO_RG'
      Size = 14
    end
    object SQL_LISTACODIGO_UF: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'CODIGO_UF'
      Origin = 'CODIGO_UF'
      Size = 50
    end
    object SQL_LISTARG: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'RG'
      Origin = 'RG'
      Size = 18
    end
    object SQL_LISTACPF: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'CPF'
      Origin = 'CPF'
      Size = 18
    end
    object SQL_LISTAINSCRICAO: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'INSCRICAO'
      Origin = 'INSCRICAO'
      Size = 14
    end
    object SQL_LISTATIPO_CONTADOR: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'TIPO_CONTADOR'
      Origin = 'TIPO_CONTADOR'
      FixedChar = True
      Size = 8
    end
  end
  object DS_LISTA: TDataSource
    DataSet = SQL_LISTA
    Left = 234
    Top = 397
  end
end
