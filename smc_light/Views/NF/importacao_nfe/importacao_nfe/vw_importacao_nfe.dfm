object frm_importacao_nfe: Tfrm_importacao_nfe
  Left = 0
  Top = 0
  BorderIcons = [biSystemMenu]
  BorderStyle = bsSingle
  Caption = 'Importa'#231#227'o NF-e'
  ClientHeight = 600
  ClientWidth = 1231
  Color = clBtnFace
  DefaultMonitor = dmMainForm
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  KeyPreview = True
  OldCreateOrder = False
  Position = poMainFormCenter
  OnClose = FormClose
  OnKeyDown = FormKeyDown
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 13
  object cxPageControl1: TcxPageControl
    Left = 0
    Top = 0
    Width = 1231
    Height = 600
    Align = alClient
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -12
    Font.Name = 'Tahoma'
    Font.Style = [fsBold]
    ParentFont = False
    TabOrder = 0
    Properties.ActivePage = tsImportacao
    Properties.CustomButtons.Buttons = <>
    LookAndFeel.Kind = lfFlat
    LookAndFeel.NativeStyle = False
    LookAndFeel.SkinName = 'Office2013White'
    ClientRectBottom = 598
    ClientRectLeft = 2
    ClientRectRight = 1229
    ClientRectTop = 29
    object tsConsulta: TcxTabSheet
      Caption = 'Consultar NF-e'
      ImageIndex = 1
      OnShow = tsConsultaShow
      object cxPageControl3: TcxPageControl
        Left = 0
        Top = 0
        Width = 1227
        Height = 569
        Align = alClient
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = [fsBold]
        ParentFont = False
        TabOrder = 0
        Properties.ActivePage = tsImportadas
        Properties.CustomButtons.Buttons = <>
        LookAndFeel.NativeStyle = False
        LookAndFeel.SkinName = 'Office2013White'
        ClientRectBottom = 567
        ClientRectLeft = 2
        ClientRectRight = 1225
        ClientRectTop = 28
        object tsImportadas: TcxTabSheet
          Caption = 'Notas Fiscais Importadas'
          ImageIndex = 0
          object Label34: TLabel
            Left = 167
            Top = 6
            Width = 59
            Height = 13
            Caption = 'Filtrar por:'
          end
          object Label32: TLabel
            Left = 496
            Top = 5
            Width = 46
            Height = 13
            Caption = 'Per'#237'odo:'
          end
          object Label33: TLabel
            Left = 519
            Top = 31
            Width = 23
            Height = 13
            Caption = 'At'#233':'
          end
          object edt_consulta: TEdit
            Left = 167
            Top = 25
            Width = 302
            Height = 21
            TabOrder = 0
            OnKeyUp = edt_consultaKeyUp
          end
          object cbFiltro: TcxComboBox
            Left = 348
            Top = 2
            ParentFont = False
            Properties.DropDownListStyle = lsFixedList
            Properties.Items.Strings = (
              'Usu'#225'rio'
              'Fornecedor'
              'CNPJ | CPF'
              'NF-e'
              'Chave'
              'Total NF-e')
            Properties.OnEditValueChanged = changefilter
            Style.Font.Charset = DEFAULT_CHARSET
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
            Text = 'Fornecedor'
            Width = 121
          end
          object cxGroupBox2: TcxGroupBox
            Left = 686
            Top = -7
            Caption = ' Status '
            Style.LookAndFeel.NativeStyle = False
            Style.LookAndFeel.SkinName = 'Office2013White'
            StyleDisabled.LookAndFeel.NativeStyle = False
            StyleDisabled.LookAndFeel.SkinName = 'Office2013White'
            StyleFocused.LookAndFeel.NativeStyle = False
            StyleFocused.LookAndFeel.SkinName = 'Office2013White'
            StyleHot.LookAndFeel.NativeStyle = False
            StyleHot.LookAndFeel.SkinName = 'Office2013White'
            TabOrder = 2
            Height = 56
            Width = 381
            object img1: TImage
              Left = 17
              Top = 19
              Width = 20
              Height = 18
              Center = True
              Picture.Data = {
                0B546478504E47496D61676589504E470D0A1A0A0000000D4948445200000010
                0000001008060000001FF3FF610000000467414D410000B18F0BFC6105000000
                1974455874536F6674776172650041646F626520496D616765526561647971C9
                653C00000021744558745469746C65004170706C793B4F4B3B436865636B3B42
                6172733B526962626F6E3B6463C868000000AA49444154384FA5CEB10DC2400C
                05D04454B4489980452883444576A16110466013B2020D532024A89CFFA533F2
                E9EC2807C5D3DD39F95F6E44E42FEEB04631385D2F4BB47AFFA5A0871B6CF8AE
                2D60F80D0223B4350536CC730FF90618AC3874B861B2E12DDC61A71F93304C1A
                5EC303F8D30BB464364C7683013EA02567B061966561FA16A4922368890AC394
                1538253C8BB52DAF8058F284437A87A202EACC3D5414D47287CB493301585260
                AA6C4646A50000000049454E44AE426082}
            end
            object img2: TImage
              Left = 147
              Top = 19
              Width = 20
              Height = 18
              Center = True
              Picture.Data = {
                0B546478504E47496D61676589504E470D0A1A0A0000000D4948445200000010
                0000001008060000001FF3FF610000000467414D410000B18F0BFC6105000000
                1974455874536F6674776172650041646F626520496D616765526561647971C9
                653C0000000B744558745469746C6500496E666F3B6D122D860000009C494441
                54384FAD93E10D403014843B8A69FCB394DF4C61091B58476200EE6B34410E95
                927C09BD7B97BED70A4D3B5EA9452F2631EFF0CE1ADAC97FFCA8442716B1DE80
                8607EF29808541B82207DE1892024875C627A88901F465B7AD2780D304353522
                C37186B700E81199B013739808E0989C98B383F99780DB163202620BC5432C3E
                4628BA48507C955308A9B69D1D343CB1188E01890FBFF318364CA754D12EF1A0
                AB0000000049454E44AE426082}
            end
            object img3: TImage
              Left = 264
              Top = 19
              Width = 20
              Height = 18
              Center = True
              Picture.Data = {
                0B546478504E47496D61676589504E470D0A1A0A0000000D4948445200000010
                0000001008060000001FF3FF610000000467414D410000B18F0BFC6105000000
                1974455874536F6674776172650041646F626520496D616765526561647971C9
                653C00000023744558745469746C650043616E63656C3B53746F703B45786974
                3B426172733B526962626F6E3B4C9696B2000000C249444154384F8D934B0A02
                311044733861567A092F207E10461CAFE94914576D15A424E94EAB8B0749FD18
                0652CCACDCB7AB359879FE07642FECF0ACF20B18B8FAB007995BCDB2B3A170AA
                824847E0A92CF632CECE0823D07CF948BD0DA423380FCBE43350837E64016999
                740304013FD2D295497711088E464299048120EC3F9B2CA36C10101C954518E9
                2E08F8F201841FDB76BE961B2F1DF95916D0862334F8305A2394053C3F32539C
                C0A30A695920A3912798247264E7C319C8F2014E6656DED2409CCC264A9B6200
                00000049454E44AE426082}
            end
            object chkImportadas: TcxCheckBox
              Left = 39
              Top = 18
              Caption = 'Importadas'
              Properties.OnEditValueChanged = checkchange
              State = cbsChecked
              Style.LookAndFeel.NativeStyle = False
              Style.LookAndFeel.SkinName = 'Office2013White'
              StyleDisabled.LookAndFeel.NativeStyle = False
              StyleDisabled.LookAndFeel.SkinName = 'Office2013White'
              StyleFocused.LookAndFeel.NativeStyle = False
              StyleFocused.LookAndFeel.SkinName = 'Office2013White'
              StyleHot.LookAndFeel.NativeStyle = False
              StyleHot.LookAndFeel.SkinName = 'Office2013White'
              TabOrder = 0
              Transparent = True
            end
            object chkPausa: TcxCheckBox
              Left = 170
              Top = 18
              Caption = 'Em Pausa'
              Properties.OnEditValueChanged = checkchange
              State = cbsChecked
              Style.LookAndFeel.NativeStyle = False
              Style.LookAndFeel.SkinName = 'Office2013White'
              StyleDisabled.LookAndFeel.NativeStyle = False
              StyleDisabled.LookAndFeel.SkinName = 'Office2013White'
              StyleFocused.LookAndFeel.NativeStyle = False
              StyleFocused.LookAndFeel.SkinName = 'Office2013White'
              StyleHot.LookAndFeel.NativeStyle = False
              StyleHot.LookAndFeel.SkinName = 'Office2013White'
              TabOrder = 1
              Transparent = True
            end
            object chkCanceladas: TcxCheckBox
              Left = 286
              Top = 18
              Caption = 'Canceladas'
              Properties.OnEditValueChanged = checkchange
              State = cbsChecked
              Style.LookAndFeel.NativeStyle = False
              Style.LookAndFeel.SkinName = 'Office2013White'
              StyleDisabled.LookAndFeel.NativeStyle = False
              StyleDisabled.LookAndFeel.SkinName = 'Office2013White'
              StyleFocused.LookAndFeel.NativeStyle = False
              StyleFocused.LookAndFeel.SkinName = 'Office2013White'
              StyleHot.LookAndFeel.NativeStyle = False
              StyleHot.LookAndFeel.SkinName = 'Office2013White'
              TabOrder = 2
              Transparent = True
            end
          end
          object gdConsImport: TcxGrid
            Left = 0
            Top = 50
            Width = 1218
            Height = 489
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clGrayText
            Font.Height = -11
            Font.Name = 'Tahoma'
            Font.Style = [fsBold]
            ParentFont = False
            TabOrder = 3
            LookAndFeel.NativeStyle = False
            LookAndFeel.SkinName = 'Office2013White'
            object gdConsImportDBTableView1: TcxGridDBTableView
              Navigator.Buttons.CustomButtons = <>
              OnCellDblClick = gdConsImportDBTableView1CellDblClick
              OnCustomDrawCell = gdConsImportDBTableView1CustomDrawCell
              DataController.DataSource = DS_CONSULTA_IMPORTACAO
              DataController.Summary.DefaultGroupSummaryItems = <>
              DataController.Summary.FooterSummaryItems = <>
              DataController.Summary.SummaryGroups = <>
              OptionsData.CancelOnExit = False
              OptionsData.Deleting = False
              OptionsData.DeletingConfirmation = False
              OptionsData.Editing = False
              OptionsData.Inserting = False
              OptionsView.NoDataToDisplayInfoText = 'Nenhuma importa'#231#227'o efetuada'
              OptionsView.GroupByBox = False
              object gdConsImportDBTableView1ID: TcxGridDBColumn
                DataBinding.FieldName = 'ID'
                Visible = False
                HeaderAlignmentHorz = taCenter
                HeaderGlyphAlignmentHorz = taCenter
                Width = 32
              end
              object tbclStatus_Importacao: TcxGridDBColumn
                Caption = 'X'
                DataBinding.FieldName = 'STATUS_IMPORTACAO'
                PropertiesClassName = 'TcxTextEditProperties'
                OnCustomDrawCell = tbclStatus_ImportacaoCustomDrawCell
                HeaderAlignmentHorz = taCenter
                HeaderGlyphAlignmentHorz = taCenter
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
                Options.AutoWidthSizable = False
                Options.GroupFooters = False
                Options.Grouping = False
                Options.HorzSizing = False
                Options.Moving = False
                Width = 20
              end
              object gdConsImportDBTableView1DATA_INICIO: TcxGridDBColumn
                Caption = 'Data'
                DataBinding.FieldName = 'DATA_INICIO'
                PropertiesClassName = 'TcxDateEditProperties'
                Properties.Alignment.Horz = taCenter
                Properties.DisplayFormat = 'dd/mm/yy HH:mm'
                HeaderAlignmentHorz = taCenter
                HeaderGlyphAlignmentHorz = taCenter
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
                Options.AutoWidthSizable = False
                Options.GroupFooters = False
                Options.Grouping = False
                Options.HorzSizing = False
                Options.Moving = False
                Width = 100
              end
              object gdConsImportDBTableView1USUARIO: TcxGridDBColumn
                Caption = 'Usu'#225'rio'
                DataBinding.FieldName = 'USUARIO'
                PropertiesClassName = 'TcxLabelProperties'
                Properties.Alignment.Horz = taCenter
                HeaderAlignmentHorz = taCenter
                HeaderGlyphAlignmentHorz = taCenter
                MinWidth = 110
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
                Options.AutoWidthSizable = False
                Options.GroupFooters = False
                Options.Grouping = False
                Options.HorzSizing = False
                Options.Moving = False
                Width = 110
              end
              object gdConsImportDBTableView1RAZAO_SOCIAL: TcxGridDBColumn
                Caption = 'Fornecedor'
                DataBinding.FieldName = 'RAZAO_SOCIAL'
                PropertiesClassName = 'TcxLabelProperties'
                Properties.Alignment.Horz = taLeftJustify
                HeaderGlyphAlignmentHorz = taCenter
                MinWidth = 300
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
                Options.AutoWidthSizable = False
                Options.GroupFooters = False
                Options.Grouping = False
                Options.HorzSizing = False
                Options.Moving = False
                Width = 300
              end
              object gdConsImportDBTableView1CNPJ_CPF: TcxGridDBColumn
                Caption = 'CNPJ | CPF'
                DataBinding.FieldName = 'CNPJ_CPF'
                PropertiesClassName = 'TcxMaskEditProperties'
                Properties.Alignment.Horz = taCenter
                Properties.IgnoreMaskBlank = True
                Properties.EditMask = '99.999.999/9999-99'
                FooterAlignmentHorz = taCenter
                GroupSummaryAlignment = taCenter
                HeaderAlignmentHorz = taCenter
                HeaderGlyphAlignmentHorz = taCenter
                MinWidth = 145
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
                Width = 145
              end
              object gdConsImportDBTableView1NUMERO: TcxGridDBColumn
                Caption = 'NF-e'
                DataBinding.FieldName = 'NUMERO'
                PropertiesClassName = 'TcxLabelProperties'
                Properties.Alignment.Horz = taCenter
                HeaderAlignmentHorz = taCenter
                HeaderGlyphAlignmentHorz = taCenter
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
                Options.AutoWidthSizable = False
                Options.GroupFooters = False
                Options.Grouping = False
                Options.HorzSizing = False
                Options.Moving = False
                Width = 80
              end
              object gdConsImportDBTableView1CHAVE: TcxGridDBColumn
                Caption = 'Chave'
                DataBinding.FieldName = 'CHAVE'
                PropertiesClassName = 'TcxLabelProperties'
                Properties.Alignment.Horz = taCenter
                HeaderAlignmentHorz = taCenter
                HeaderGlyphAlignmentHorz = taCenter
                MinWidth = 320
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
                Options.AutoWidthSizable = False
                Options.GroupFooters = False
                Options.Grouping = False
                Options.HorzSizing = False
                Options.Moving = False
                Width = 320
              end
              object gdConsImportDBTableView1TOTAL_NFE: TcxGridDBColumn
                Caption = 'Total NF-e'
                DataBinding.FieldName = 'TOTAL_NFE'
                PropertiesClassName = 'TcxCurrencyEditProperties'
                Properties.Alignment.Horz = taCenter
                HeaderAlignmentHorz = taCenter
                HeaderGlyphAlignmentHorz = taCenter
                MinWidth = 141
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
                Options.AutoWidthSizable = False
                Options.GroupFooters = False
                Options.Grouping = False
                Options.HorzSizing = False
                Options.Moving = False
                Width = 141
              end
            end
            object gdConsImportLevel1: TcxGridLevel
              GridView = gdConsImportDBTableView1
            end
          end
          object edt_dt_inicio: TcxDateEdit
            Left = 556
            Top = 2
            EditValue = 0d
            Properties.DateButtons = []
            Properties.DisplayFormat = 'dd/mm/yyyy'
            Properties.EditFormat = 'dd/mm/yyyy'
            Properties.SaveTime = False
            Properties.ShowTime = False
            Properties.OnEditValueChanged = edt_dt_inicioPropertiesEditValueChanged
            Style.LookAndFeel.NativeStyle = False
            Style.LookAndFeel.SkinName = 'Metropolis'
            StyleDisabled.LookAndFeel.NativeStyle = False
            StyleDisabled.LookAndFeel.SkinName = 'Metropolis'
            StyleFocused.LookAndFeel.NativeStyle = False
            StyleFocused.LookAndFeel.SkinName = 'Metropolis'
            StyleHot.LookAndFeel.NativeStyle = False
            StyleHot.LookAndFeel.SkinName = 'Metropolis'
            TabOrder = 4
            Width = 95
          end
          object edt_dt_fim: TcxDateEdit
            Left = 556
            Top = 25
            EditValue = 0d
            Properties.DateButtons = []
            Properties.DisplayFormat = 'dd/mm/yyyy'
            Properties.EditFormat = 'dd/mm/yyyy'
            Properties.SaveTime = False
            Properties.ShowTime = False
            Properties.OnEditValueChanged = edt_dt_fimPropertiesEditValueChanged
            Style.LookAndFeel.NativeStyle = False
            Style.LookAndFeel.SkinName = 'Metropolis'
            StyleDisabled.LookAndFeel.NativeStyle = False
            StyleDisabled.LookAndFeel.SkinName = 'Metropolis'
            StyleFocused.LookAndFeel.NativeStyle = False
            StyleFocused.LookAndFeel.SkinName = 'Metropolis'
            StyleHot.LookAndFeel.NativeStyle = False
            StyleHot.LookAndFeel.SkinName = 'Metropolis'
            TabOrder = 5
            Width = 95
          end
        end
        object tsDestinadas: TcxTabSheet
          Caption = 'Notas Fiscais emitidas para CNPJ '
          Enabled = False
          ImageIndex = 1
          object Label35: TLabel
            Left = 52
            Top = 6
            Width = 59
            Height = 13
            Caption = 'Filtrar por:'
          end
          object Label36: TLabel
            Left = 387
            Top = 5
            Width = 46
            Height = 13
            Caption = 'Per'#237'odo:'
          end
          object Label37: TLabel
            Left = 410
            Top = 31
            Width = 23
            Height = 13
            Caption = 'At'#233':'
          end
          object cxGrid1: TcxGrid
            Left = 0
            Top = 51
            Width = 1223
            Height = 488
            Align = alCustom
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clGrayText
            Font.Height = -11
            Font.Name = 'Tahoma'
            Font.Style = [fsBold]
            ParentFont = False
            TabOrder = 0
            LookAndFeel.NativeStyle = False
            LookAndFeel.SkinName = 'Office2013White'
            object cxGridDBTableView1: TcxGridDBTableView
              PopupMenu = dfeMan
              Navigator.Buttons.CustomButtons = <>
              OnCustomDrawCell = gdConsImportDBTableView1CustomDrawCell
              DataController.DataSource = DS_NF_EMITIDAS
              DataController.Summary.DefaultGroupSummaryItems = <>
              DataController.Summary.FooterSummaryItems = <>
              DataController.Summary.SummaryGroups = <>
              OptionsView.NoDataToDisplayInfoText = 'Nenhuma NF-e dispon'#237'vel'
              OptionsView.GroupByBox = False
              object dbedtId_Manifesto: TcxGridDBColumn
                Caption = ' # '
                DataBinding.FieldName = 'ID_MANIFESTO'
                OnCustomDrawCell = dbedtId_ManifestoCustomDrawCell
                FooterAlignmentHorz = taCenter
                GroupSummaryAlignment = taCenter
                HeaderAlignmentHorz = taCenter
                MinWidth = 21
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
                Width = 21
              end
              object dbedtData_Emissao: TcxGridDBColumn
                Caption = 'Emiss'#227'o'
                DataBinding.FieldName = 'data_emissao'
                PropertiesClassName = 'TcxDateEditProperties'
                Properties.Alignment.Horz = taCenter
                Properties.DisplayFormat = 'dd/mm/yy HH:mm'
                FooterAlignmentHorz = taCenter
                GroupSummaryAlignment = taCenter
                HeaderAlignmentHorz = taCenter
                HeaderGlyphAlignmentHorz = taCenter
                MinWidth = 110
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
                Width = 110
              end
              object dbedtFornecedor: TcxGridDBColumn
                Caption = 'Fornecedor'
                DataBinding.FieldName = 'fornecedor'
                PropertiesClassName = 'TcxLabelProperties'
                GroupSummaryAlignment = taCenter
                MinWidth = 350
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
                Width = 350
              end
              object dbedtCNPJ: TcxGridDBColumn
                DataBinding.FieldName = 'cnpj'
                PropertiesClassName = 'TcxMaskEditProperties'
                Properties.Alignment.Horz = taCenter
                Properties.EditMask = '99.999.999/9999-99'
                GroupSummaryAlignment = taCenter
                HeaderAlignmentHorz = taCenter
                HeaderGlyphAlignmentHorz = taCenter
                MinWidth = 145
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
                Width = 145
              end
              object dbedtChave: TcxGridDBColumn
                Caption = 'Chave'
                DataBinding.FieldName = 'chave'
                PropertiesClassName = 'TcxTextEditProperties'
                Properties.Alignment.Horz = taCenter
                FooterAlignmentHorz = taCenter
                GroupSummaryAlignment = taCenter
                HeaderAlignmentHorz = taCenter
                HeaderGlyphAlignmentHorz = taCenter
                MinWidth = 340
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
                Width = 340
              end
              object dbedtValor_NFe: TcxGridDBColumn
                Caption = 'Valor NF-e'
                DataBinding.FieldName = 'valor'
                PropertiesClassName = 'TcxCurrencyEditProperties'
                Properties.Alignment.Horz = taCenter
                FooterAlignmentHorz = taCenter
                GroupSummaryAlignment = taCenter
                HeaderAlignmentHorz = taCenter
                HeaderGlyphAlignmentHorz = taCenter
                MinWidth = 126
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
                Width = 126
              end
              object dbedtPrevisao_Entrega: TcxGridDBColumn
                Caption = 'Previs'#227'o de Entrega'
                DataBinding.FieldName = 'previsao_entrega'
                PropertiesClassName = 'TcxDateEditProperties'
                Properties.Alignment.Horz = taCenter
                Properties.AssignedValues.EditFormat = True
                Properties.DisplayFormat = 'dd/mm/yy HH:mm'
                FooterAlignmentHorz = taCenter
                GroupSummaryAlignment = taCenter
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
                Options.Focusing = False
                Options.IgnoreTimeForFiltering = False
                Options.IncSearch = False
                Options.GroupFooters = False
                Options.Grouping = False
                Options.HorzSizing = False
                Width = 125
              end
            end
            object cxGridLevel1: TcxGridLevel
              GridView = cxGridDBTableView1
            end
          end
          object edt_dfe_consulta: TEdit
            Left = 53
            Top = 25
            Width = 302
            Height = 21
            TabOrder = 1
            OnKeyUp = edt_dfe_consultaKeyUp
          end
          object cb_dfe_filtro: TcxComboBox
            Left = 236
            Top = 2
            ParentFont = False
            Properties.DropDownListStyle = lsFixedList
            Properties.Items.Strings = (
              'Fornecedor'
              'CNPJ'
              'Chave'
              'Valor NF-e')
            Properties.OnEditValueChanged = changeDfeFilter
            Style.Font.Charset = DEFAULT_CHARSET
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
            Text = 'Fornecedor'
            Width = 119
          end
          object cxGroupBox1: TcxGroupBox
            Left = 583
            Top = -7
            Caption = ' Manifesto '
            Style.LookAndFeel.NativeStyle = False
            Style.LookAndFeel.SkinName = 'Office2013White'
            StyleDisabled.LookAndFeel.NativeStyle = False
            StyleDisabled.LookAndFeel.SkinName = 'Office2013White'
            StyleFocused.LookAndFeel.NativeStyle = False
            StyleFocused.LookAndFeel.SkinName = 'Office2013White'
            StyleHot.LookAndFeel.NativeStyle = False
            StyleHot.LookAndFeel.SkinName = 'Office2013White'
            TabOrder = 3
            Height = 56
            Width = 586
            object Image1: TImage
              Left = 8
              Top = 29
              Width = 20
              Height = 18
              Center = True
              Picture.Data = {
                0B546478504E47496D61676589504E470D0A1A0A0000000D4948445200000010
                0000001008060000001FF3FF61000000206348524D00007A25000080830000F9
                FF000080E9000075300000EA6000003A980000176F925FC54600000009704859
                7300000B0C00000B0C013F4022C8000001A449444154384F9D93DB2B837118C7
                3FFF8222A792B871CDADE3502B2E65CEDC230D17CE1921C761638E4B368A526E
                B8524AE23F904331871BC585229631BF67B661AD3117DFB7A7F77D9EEFF37C9F
                E7FBB2D48D1FB383306504C31A51CD3B682B4FD1979DD3587B48419F8D58CB08
                CC0F80B5F7ABC61FACB4817186888A334CB92EEE33DDB8B3BC9058F3C643E939
                0BA373C4D83A0208A478649E14ED2347192A39470A0220EFE45BDE0B17FD76D2
                565ABD04CB9D303D4684F689134FA75F2013E539B99E98224E26F174AF39C29C
                1E90180A3249A983550F816992C85CA52FD8D8A190EDC669B49040CB365A610C
                96140A32B17E9772AA8FD1FF457B206417250E7A84A0E93F044A825B77AD085A
                B7280C67813E88EC863D6A983013AD79E731DC252A092E65AA24ECEDA0DC670D
                F78CC5376C2E77A933CA2DD529A3F35FB892C5042BF80ED1AE717137364B924D
                35FFB4B2B265BF8D54E5B0CB5027F52CFB955BC33A597E2BCBC347323E4DBCCE
                815D757916229948E08D9D45376C0C5949F615FF201088A69961185C24B17E9F
                3245D6ADBBC4507740D5D002C99651F52BF77CAF810FAD68E70E09B921420000
                000049454E44AE426082}
            end
            object Image2: TImage
              Left = 8
              Top = 9
              Width = 20
              Height = 18
              Center = True
              Picture.Data = {
                0B546478504E47496D61676589504E470D0A1A0A0000000D4948445200000010
                0000001008060000001FF3FF61000000206348524D00007A25000080830000F9
                FF000080E9000075300000EA6000003A980000176F925FC54600000009704859
                7300000B0C00000B0C013F4022C8000001DD49444154384F6368D42887E30AED
                7A86629D168608D3B9A26ED6EB3DD45DCF14AAB89D2FB2B6DBE51D6B3253B254
                A789A152AB8EA14EB30AAE07CE68572B64C834E81554733D3B9935E0CD5B86A0
                CFFF19023F4270D0A7FF2C016F3F2ABB5D98936ED02FD1AA5E826A0048739AE1
                040D1EDF67D71882BEFC670A78F79F39E02D0A0689810CE5F07F753FCE788671
                07500FD88016A06940670BF2F83DBB09B2095D233A06B90868C8E35CFD2EA956
                F56206A0ED450CDACEC7A730047FC1AA011B06B944C9EDC232905718F2F5DA45
                58FCDF7CC4E66C5C98098819033FFCCCD2EF9163F0B15CE90132119B427C1814
                564E369BA219345D4E1682FC854D113ECC10F8E1BFA2DB8526062D9793C5E41A
                20EF7EA989C1D772850FC839D814E1C3203DF6B65B131872F5BAC481025F4809
                441006BAE00F30512931B401A3119864E791E20A50A0CBB95FDE004A430CA0C4
                90AFD721CEE9FFF211316101F23B6BC0DB3719067D4A20CBC1C911942C81C9D3
                88C3FFF54390E9A078C6AA199852819A5F869BCEB3EF542B40E4058821050C39
                FADDD20AEE97973005BEFF0E3208641B1843D83F653DAEAD4D319AAC0C520BD3
                0767807033D04F653A8D0CC98693156CECB64729B85D6C001AD8686DB7232ED5
                70A272894E3343BD6625929E720600A6EAE78BFF7F4E1C0000000049454E44AE
                426082}
            end
            object Image3: TImage
              Left = 211
              Top = 9
              Width = 20
              Height = 18
              Center = True
              Picture.Data = {
                0B546478504E47496D61676589504E470D0A1A0A0000000D4948445200000010
                0000001008060000001FF3FF61000000206348524D00007A25000080830000F9
                FF000080E9000075300000EA6000003A980000176F925FC54600000009704859
                7300000B0C00000B0C013F4022C80000015E49444154384F9D93C12E03511486
                7FEFA11141445854245EC013588A883720E219881D1E426225B191D858948668
                69A5098B268826AD765A9130332AE2F8CFBD3319AA46DBC597B9B973FEFF9C7B
                EEB990342232E482DC6040EE302755AC898375296141AE312459FE3B27A724D0
                44E2639247426AD8110FBEBC410C7EF0F5D0A4D99E5C61444E229D5DA48C785A
                5E5092A6096E8F1AB970A48019A331069A39837E8ACB41A678B42217CF3CEAA8
                6A6DF632766333B7A2B1351CEA51B469096EBE1BE776C17FA1F19718871431DF
                51E9ADA8E616CB90475E532F065A81836D48051B3D1BD4D5A088C5AE1A18A29A
                7BAC828D18E4C6C7AF80FFD00AF248DA39A862BFAB2AF4C875A4788D7DD6208B
                610EC753475769633CC9216907291C651D4F178DD886EA3F1FAF7C58B3D128AB
                416892C3184B3B60D067106C09D70D1C31D15428FE6910A24FBA800979C012CD
                36C916D72B7C8593E6A99F7D8B4D035F5BFA9B242420CAE80000000049454E44
                AE426082}
            end
            object Image4: TImage
              Left = 211
              Top = 29
              Width = 20
              Height = 18
              Center = True
              Picture.Data = {
                0B546478504E47496D61676589504E470D0A1A0A0000000D4948445200000010
                0000001008060000001FF3FF61000000206348524D00007A25000080830000F9
                FF000080E9000075300000EA6000003A980000176F925FC54600000009704859
                7300000B0C00000B0C013F4022C8000000DC49444154384F95D2C10A015114C6
                F1FB0A8A88222CEC3D802DC90B48F20A78023C025B56CA4A791A6525B2922C94
                9452FC8F1177AED334B3F8D59D33F7FB66A6B9E6698C26812ABAE8A18E14FEF6
                BA8318C638E3E9B8600A5F911D2E610D37E8DAA20C5F813C79032DA039200DAE
                3C13681B832CC0CA9838E4FBB44D41EEC84A41CD1A46D59202F955DACD308652
                D07786518CA4A0E10CA3E8484112576B18D603052910B3CF308A155879E42DF6
                D0366A4EC883AB1F399E3B6801DB1115BC737681C8608E1BDCA01C9C258AF866
                ECB02D87260618A20D5FD063CC0B2EC7AEF1CC112AA40000000049454E44AE42
                6082}
            end
            object Image5: TImage
              Left = 433
              Top = 9
              Width = 20
              Height = 18
              Center = True
            end
            object mfe_1: TcxCheckBox
              Left = 32
              Top = 8
              Caption = 'Ci'#234'ncia da Emiss'#227'o'
              Properties.OnEditValueChanged = checkDfeChange
              State = cbsChecked
              Style.LookAndFeel.NativeStyle = False
              Style.LookAndFeel.SkinName = 'Office2013White'
              StyleDisabled.LookAndFeel.NativeStyle = False
              StyleDisabled.LookAndFeel.SkinName = 'Office2013White'
              StyleFocused.LookAndFeel.NativeStyle = False
              StyleFocused.LookAndFeel.SkinName = 'Office2013White'
              StyleHot.LookAndFeel.NativeStyle = False
              StyleHot.LookAndFeel.SkinName = 'Office2013White'
              TabOrder = 0
              Transparent = True
            end
            object mfe_3: TcxCheckBox
              Left = 235
              Top = 8
              Caption = 'Opera'#231#227'o n'#227'o Realizada'
              Properties.OnEditValueChanged = checkchange
              State = cbsChecked
              Style.LookAndFeel.NativeStyle = False
              Style.LookAndFeel.SkinName = 'Office2013White'
              StyleDisabled.LookAndFeel.NativeStyle = False
              StyleDisabled.LookAndFeel.SkinName = 'Office2013White'
              StyleFocused.LookAndFeel.NativeStyle = False
              StyleFocused.LookAndFeel.SkinName = 'Office2013White'
              StyleHot.LookAndFeel.NativeStyle = False
              StyleHot.LookAndFeel.SkinName = 'Office2013White'
              TabOrder = 1
              Transparent = True
            end
            object mfe_4: TcxCheckBox
              Left = 235
              Top = 29
              Caption = 'Desconhecimento da Opera'#231#227'o'
              Properties.OnEditValueChanged = checkchange
              State = cbsChecked
              Style.LookAndFeel.NativeStyle = False
              Style.LookAndFeel.SkinName = 'Office2013White'
              StyleDisabled.LookAndFeel.NativeStyle = False
              StyleDisabled.LookAndFeel.SkinName = 'Office2013White'
              StyleFocused.LookAndFeel.NativeStyle = False
              StyleFocused.LookAndFeel.SkinName = 'Office2013White'
              StyleHot.LookAndFeel.NativeStyle = False
              StyleHot.LookAndFeel.SkinName = 'Office2013White'
              TabOrder = 2
              Transparent = True
            end
            object mfe_2: TcxCheckBox
              Left = 32
              Top = 28
              Caption = 'Confirma'#231#227'o da Opera'#231#227'o'
              Properties.OnEditValueChanged = checkDfeChange
              State = cbsChecked
              Style.LookAndFeel.NativeStyle = False
              Style.LookAndFeel.SkinName = 'Office2013White'
              StyleDisabled.LookAndFeel.NativeStyle = False
              StyleDisabled.LookAndFeel.SkinName = 'Office2013White'
              StyleFocused.LookAndFeel.NativeStyle = False
              StyleFocused.LookAndFeel.SkinName = 'Office2013White'
              StyleHot.LookAndFeel.NativeStyle = False
              StyleHot.LookAndFeel.SkinName = 'Office2013White'
              TabOrder = 3
              Transparent = True
            end
            object mfe_0: TcxCheckBox
              Left = 457
              Top = 8
              Caption = 'Sem Modifica'#231#227'o'
              Properties.OnEditValueChanged = changeDfeFilter
              State = cbsChecked
              Style.LookAndFeel.NativeStyle = False
              Style.LookAndFeel.SkinName = 'Office2013White'
              StyleDisabled.LookAndFeel.NativeStyle = False
              StyleDisabled.LookAndFeel.SkinName = 'Office2013White'
              StyleFocused.LookAndFeel.NativeStyle = False
              StyleFocused.LookAndFeel.SkinName = 'Office2013White'
              StyleHot.LookAndFeel.NativeStyle = False
              StyleHot.LookAndFeel.SkinName = 'Office2013White'
              TabOrder = 4
              Transparent = True
            end
          end
          object edt_dfe_inicio: TcxDateEdit
            Left = 439
            Top = 2
            EditValue = 0d
            Properties.DateButtons = []
            Properties.DisplayFormat = 'dd/mm/yyyy'
            Properties.EditFormat = 'dd/mm/yyyy'
            Properties.ShowTime = False
            Properties.OnEditValueChanged = edt_dfe_inicioPropertiesEditValueChanged
            Style.LookAndFeel.NativeStyle = False
            Style.LookAndFeel.SkinName = 'Metropolis'
            StyleDisabled.LookAndFeel.NativeStyle = False
            StyleDisabled.LookAndFeel.SkinName = 'Metropolis'
            StyleFocused.LookAndFeel.NativeStyle = False
            StyleFocused.LookAndFeel.SkinName = 'Metropolis'
            StyleHot.LookAndFeel.NativeStyle = False
            StyleHot.LookAndFeel.SkinName = 'Metropolis'
            TabOrder = 4
            Width = 95
          end
          object edt_dfe_fim: TcxDateEdit
            Left = 439
            Top = 25
            EditValue = 0d
            Properties.DateButtons = []
            Properties.DisplayFormat = 'dd/mm/yyyy'
            Properties.EditFormat = 'dd/mm/yyyy'
            Properties.ShowTime = False
            Properties.OnEditValueChanged = edt_dfe_fimPropertiesEditValueChanged
            Style.LookAndFeel.NativeStyle = False
            Style.LookAndFeel.SkinName = 'Metropolis'
            StyleDisabled.LookAndFeel.NativeStyle = False
            StyleDisabled.LookAndFeel.SkinName = 'Metropolis'
            StyleFocused.LookAndFeel.NativeStyle = False
            StyleFocused.LookAndFeel.SkinName = 'Metropolis'
            StyleHot.LookAndFeel.NativeStyle = False
            StyleHot.LookAndFeel.SkinName = 'Metropolis'
            TabOrder = 5
            Width = 95
          end
        end
      end
    end
    object tsImportacao: TcxTabSheet
      Caption = 'Importar NF-e'
      ImageIndex = 1
      object btn_retomar: TcxButton
        Left = 1097
        Top = 82
        Width = 126
        Height = 36
        Caption = 'RETORMAR'#13'IMPORTA'#199#195'O'
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
          FFFFFFFFFFFFFFFFFFFFEEE4DBFFD0AF93FFE6D5C8FFFFFFFFFFFFFFFFFFE6D5
          C8FFD0AF93FFEEE4DBFFFFFFFFFFFFFFFFFFF1E6DBFFB8824DFFB8824DFFB882
          4DFFB8824DFFB8824DFF251A0F33B8824DFF251A0F3300000000000000000000
          000000000000000000000000000000000000848484FFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFB8824DFFBD8C5DFFEEE4DBFFFFFFFFFFFFFFFFFFEEE4
          DBFFBD8C5DFFB8824DFFFFFFFFFFFFFFFFFFFFFFFFFFF1E6DBFFB8824DFFB882
          4DFFB8824DFF251A0F33B8824DFFB8824DFFB8824DFF00000000000000000000
          000000000000000000000000000000000000848484FFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFB8824DFFEFE5DDFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFEFE5DDFFB8824DFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF1E6DBFFB882
          4DFF251A0F33B8824DFFB8824DFFB8824DFFB8824DFF00000000000000000000
          000000000000000000000000000000000000848484FFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFB8824DFFEFE5DDFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFEFE5DDFFB8824DFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF1E6
          DBFFB8824DFFB8824DFFB8824DFFB8824DFF251A0F3300000000000000000000
          000000000000000000000000000000000000848484FFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFB8824DFFEFE5DDFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFEFE5DDFFB8824DFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFF251A0F33B8824DFFB8824DFF251A0F330000000000000000000000000000
          000000000000000000000000000000000000848484FFFFFFFFFFFFFFFFFFFFFF
          FFFFF7F2EEFFC79E7AFFBD8C5DFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFBD8C5DFFC79E7AFFF7F2EEFFFFFFFFFFFFFFFFFFFFFFFFFF8484
          84FF000000000000000000000000000000000000000000000000000000000000
          000000000000000000000000000000000000848484FFFFFFFFFFFFFFFFFFFFFF
          FFFFF3EBE5FFBD8C5DFFC79E7AFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFC79E7AFFBD8C5DFFF3EBE5FFFFFFFFFFFFFFFFFFFFFFFFFF8484
          84FF000000000000000000000000000000000000000000000000000000000000
          000000000000000000000000000000000000848484FFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFB8824DFFF1E8E1FFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFF1E8E1FFB8824DFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF8484
          84FF000000000000000000000000000000000000000000000000000000000000
          000000000000000000000000000000000000848484FFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFB8824DFFEFE5DDFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFEFE5DDFFB8824DFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF8484
          84FF000000000000000000000000000000000000000000000000000000000000
          000000000000000000000000000000000000848484FFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFB8824DFFEFE5DDFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFEFE5DDFFB8824DFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF8484
          84FF000000000000000000000000000000000000000000000000000000000000
          000000000000000000000000000000000000848484FFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFB8824DFFD0AF93FFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFD0AF93FFB8824DFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF8484
          84FF000000000000000000000000000000000000000000000000000000000000
          000000000000000000000000000000000000848484FFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFD0AF93FFB8824DFFDDC7B5FFFFFFFFFFFFFFFFFFDDC7
          B5FFB8824DFFD0AF93FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF8484
          84FF000000000000000000000000000000000000000000000000000000000000
          000000000000000000000000000000000000848484FFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFF3EBE5FFF7F2EEFFFFFFFFFFFFFFFFFFF7F2
          EEFFF3EBE5FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF8484
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
          000000000000000000000000000000000000848484FF848484FF848484FF8484
          84FF848484FF848484FF848484FF848484FF848484FF848484FF848484FF8484
          84FF848484FF848484FF848484FF848484FF848484FF848484FF848484FF8484
          84FF000000000000000000000000000000000000000000000000000000000000
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
        TabOrder = 10
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -12
        Font.Name = 'Helveitica'
        Font.Style = [fsBold]
        ParentFont = False
        OnClick = btn_retomarClick
      end
      object btn_pausar: TcxButton
        Left = 1097
        Top = 82
        Width = 126
        Height = 36
        Caption = 'PAUSAR'#13'IMPORTA'#199#195'O'
        LookAndFeel.NativeStyle = False
        LookAndFeel.SkinName = 'Metropolis'
        OptionsImage.Glyph.Data = {
          36100000424D3610000000000000360000002800000020000000200000000100
          2000000000000010000000000000000000000000000000000000000000000000
          0000000000010000000101010103020202060302020803030309030303090303
          030903030309030303090303030903030309030303090303030A0303030A0303
          030A0303030A0303030A0303030A0303030A0303030A0303030A0303030A0303
          0309030202080201010400000001000000010000000000000000000000000000
          000000000001010101050504040F080707190909091F0A0A09210B0A0A220B0A
          0A230B0A0A230B0A0A240B0A0A240B0A0A240B0A0A240C0B0B250C0B0B250C0B
          0B260C0B0B260C0B0B260C0B0B270C0B0B270D0B0B280D0B0B280D0C0B280C0B
          0B260A09091F0606051302020207000000010000000000000000000000000000
          0001010101040504040F1926386236629BEC3A6AA8FF3867A6FF3864A4FF3663
          A2FF3560A0FF345E9DFF345B9BFF325998FF305596FF2F5494FF2E5292FF2D50
          8FFF2B4F8DFF2A4C8BFF2A4A88FF284887FF284685FF274483FF264181FF2640
          7FFF233A75EE141B2C6806060513020101050000000100000000000000000000
          000002010105070706173968A4F04CACDEFF3BA5DDFF3AA4DDFF37A2DCFF35A0
          DBFF339FDBFF329DDAFF319BD9FF2E99D8FF2C98D7FF2B96D6FF2994D5FF2793
          D4FF2691D4FF258FD2FF248ED2FF228DD1FF218AD0FF2089CFFF1F88CEFF1F86
          CEFF1F7EC5FF233C76F10909081E020202070101010100000000000000000000
          0000020202070908081B3F73B2FF58BAE6FF41ACE0FF3EAAE0FF3CA8DFFF3BA6
          DEFF3AA5DDFF38A2DDFF36A2DCFF33A0DCFF329FDBFF309EDBFF2E9CD9FF2D99
          D9FF2A99D9FF2997D7FF2896D7FF2795D7FF2592D6FF2392D6FF2290D5FF208F
          D4FF2089CEFF254080FF0C0B0A24030202090101010100000000000000000000
          0000020202070908081B4176B5FF61C0E8FF46B1E3FF45B0E2FF43AEE1FF41AC
          E1FF40ABDFFF3DA9DFFF3CA7DFFF3BA6DFFF38A4DDFF6BC5EAFF6DC7EBFF6BC6
          EBFF64C2E9FF2F9CDAFF2D9BD9FF2B98D9FF2A97D8FF2796D8FF2694D7FF2392
          D7FF228BD0FF264383FF0B0A0A24030303090101010100000000000000000000
          0000020202060807071A4278B7FF6BC7ECFF4EB7E6FF4CB6E5FF4AB3E5FF48B2
          E4FF46B1E3FF45AFE2FF42ADE1FF40ABE1FF232523FF342A1FFF3A2D20FF3C38
          2FFF62BEE8FF35A1DDFF349FDCFF319DDBFF2F9CDBFF2D9ADAFF2A98DAFF2997
          D8FF278FD2FF274686FF0B0A0A24030303090101010100000000000000000000
          00000202020608070719427CBAFF76CEEDFF57BDE8FF54BDE8FF53BBE6FF50B9
          E6FF4EB7E6FF4CB5E4FF4AB3E4FF48B1E3FF2B4047FF33291FFF3E3123FF4B55
          54FF60BDE8FF3CA7DFFF3AA6DFFF37A3DDFF35A1DCFF329FDCFF319EDBFF2D9C
          DAFF2C94D3FF294888FF0B0A0A22030303090101010100000000000000000000
          00000202020608070718447EBDFF81D5F2FF60C6EBFF5EC3EAFF5CC1E9FF59BF
          E8FF58BDE7FF53BCE7FF52B9E6FF50B7E6FF365E6EFF31281EFF423528FF5B75
          7BFF5DBDE7FF43ADE0FF40ABE0FF3EA9DFFF3BA7DFFF39A5DEFF37A4DDFF34A1
          DCFF309AD6FF2A4B8AFF0A090921020202080101010100000000000000000000
          000002020206070707174580C0FF8EDBF4FF69CBEEFF68CAEDFF64C7EDFF62C6
          ECFF60C4ECFF5EC3EAFF5CC0E9FF59BEE8FF447C93FF2E261DFF463A2CFF6B92
          9CFF5CBDE6FF4BB2E2FF48B1E2FF46AFE1FF43ACE1FF41AAE0FF3EA8DFFF3BA6
          DFFF379ED7FF2C4E8DFF0A090920020202080101010100000000000000000000
          000002020205070606164682C0FF97E0F6FF72D1F0FF6FD0EFFF6DCEEEFF6BCC
          EEFF6ACBEEFF69C8EDFF65C7ECFF64C4EAFF539BB7FF372D24FF4B3E30FF7DB1
          C1FF6AC6EBFF53B8E6FF50B7E5FF4DB5E5FF4BB3E4FF48B1E4FF45AFE2FF42AD
          E1FF3EA4DBFF2D5190FF0A09091F020202080101010100000000000000000000
          000002020205060606144785C3FFA1E4F6FF7AD6F2FF78D4F1FF77D3F1FF75D2
          F0FF73D1EFFF70CEEFFF6ECDEEFF6CCCEDFF51899DFF493D32FF504435FF7A9F
          A8FF86D5F0FF5ABFE8FF58BDE7FF56BBE7FF53B9E6FF4FB6E5FF4DB3E5FF4AB1
          E4FF45A9DDFF2F5493FF0908081D020202070101010100000000000000000000
          000002020205060505134886C5FFAAE9F8FF82DCF4FF80DAF3FF7FD8F3FF7ED7
          F2FF7CD5F2FF79D5F0FF77D2F1FF74D0F0FF3F5153FF4E4235FF55483AFF646B
          66FF8ED8F2FF63C4EAFF60C3E9FF5DC1E8FF5ABEE8FF57BCE7FF54BAE7FF50B7
          E5FF4CAFE0FF305796FF0908081C020202070000000000000000000000000000
          000001010104060505124A88C7FFB2EDF9FF8ADFF5FF89DEF4FF87DDF5FF85DC
          F4FF84D9F3FF82D8F3FF80D7F2FF7ED6F2FF435355FF3E352CFF4F4236FF5F67
          63FF80D3F0FF6ACAEDFF68C8ECFF65C6EBFF62C3EAFF5FC1E9FF5CBFE8FF58BC
          E8FF53B5E2FF325997FF0808081B020202070000000000000000000000000000
          000001010104050505114B8AC9FFBAEFFAFF92E3F7FF91E2F6FF8EE1F7FF8EE0
          F5FF8CDFF5FF8ADDF4FF88DCF5FF85DBF4FF679FADFF455555FF435354FF619A
          ABFF78D1EFFF74CFEFFF71CCEEFF6DCBEDFF69C8EDFF66C7EBFF63C4EBFF60C2
          E9FF59BAE3FF335C9CFF0807071A020202070000000000000000000000000000
          000001010104050505104B8BCBFFC1F2FBFF98E7F7FF98E6F8FF96E5F8FF95E3
          F6FF93E3F7FF92E2F5FF90E0F5FF8EDFF5FF8CDDF4FF88DBF4FF85DAF3FF83D9
          F2FF7FD6F1FF7CD4F0FF79D2F0FF75D0EFFF70CEEEFF6DCBEEFF6AC9EDFF67C7
          EBFF61BEE6FF345F9FFF08070718020202060000000000000000000000000000
          0000010101030404040E4C8CCCFFC7F3FCFFA7ECFAFF9FE8F8FF9DE9F9FF9CE7
          F8FF9BE6F8FF9AE6F7FF98E5F7FF95E3F7FF93E1F6FF91E1F5FF8EDEF4FF8CDC
          F4FF88DBF4FF84D8F3FF81D7F2FF7DD5F1FF7AD2F0FF74D0EFFF71CFEEFF6ECB
          EEFF67C5E9FF3662A1FF07060616020101050000000000000000000000000000
          0000010101020303030B457FB9E9B1DFF2FFCCF5FDFFCAF4FCFFC9F4FCFFC8F4
          FCFFC6F3FCFFC5F2FBFFC2F1FAFFC1F0FAFFBDEFFAFFBAEFFAFFB8ECF9FFB4EC
          F9FFB1EAF9FFACE8F7FFA7E6F7FFA2E5F7FF9FE2F5FF9AE0F5FF95DEF5FF90DC
          F3FF76BEE0FF335C95EB05050512010101040000000000000000000000000000
          000000000001020101061626354D3D6FA2D1637C95FF98B7D6FF7590ABFF4F68
          80FF4A89C8FF4987C6FF4886C5FF4884C3FF4683C1FF4681C0FF457FBEFF437E
          BDFF427BBAFF427AB9FF4277B6FF4075B4FF60758EFF7F95B2FF63758FFF4457
          6FFF315688D4131E2E530303030A010101020000000000000000000000000000
          00000000000001010102020101090303021A776B5DFDE4E1DFFF9F958CFF5246
          38FF04040423040404140404040F0504040F0504040F0504040F050505100505
          05100505051005050512050505180505052881766AFFC0BAB4FF897C71FF4B40
          32FE040404240302020E01010104000000010000000000000000000000000000
          0000000000000000000000000006010101147B6F60FEEAE8E7FFA59B94FF5448
          3AFF010101180101010901010104010101030101010301010104010101040101
          010401010104010101050101010B0101011C7E7265FFCEC8C3FF8D8075FF4E41
          33FF0101011B0101010800000002000000000000000000000000000000000000
          00000000000000000000000000040000001075695CF2E7E4E2FFAEA49CFF5D52
          44FF070605290000000700000001000000000000000000000000000000000000
          00000000000000000002000000080A09082D807567FFCBC4C0FF8C8074FF4F44
          35FA000000160000000600000001000000000000000000000000000000000000
          00000000000000000000000000030000000E6B6056DDD8D4D1FFBAB2ABFF6F64
          57FF1916125A0000000900000002000000000000000000000000000000000000
          000000000000000000030000000B221D1A5E8D8377FFC3BDB6FF85796DFF4B3F
          32E4000000130000000500000001000000000000000000000000000000000000
          00000000000000000000000000030000000B544D44AEC2BDB7FFCCC7C2FF8479
          6EFF352E269C0000000F00000005000000010000000000000000000000000000
          00000000000100000006000000113F39309FA2998FFFB6AFA8FF7C6F63FF3932
          28B20000000F0000000400000001000000000000000000000000000000000000
          000000000000000000000000000100000007302C2766A9A199FFE0DCD9FFA59C
          93FF665C51EA1F1B165E0000000B000000050000000200000001000000010000
          0002000000050000000D231F1A61746A5EEBB6AEA6FFAAA197FF766A5DFF211D
          176B0000000A0000000200000001000000000000000000000000000000000000
          0000000000000000000000000001000000040303031281786DE8CAC6C0FFCDC7
          C1FF93897FFF564D41D0201C185D0000000D0000000800000006000000060000
          00090000000E23201B605E5449D1A39A91FFBEB7B1FF968B80FF594F40E10202
          0218000000060000000100000000000000000000000000000000000000000000
          00000000000000000000000000000000000200000007322E2A62A9A198FFD6D2
          CDFFC4BEB8FF958B81FF6D6257EA3E362F9A1F1B1756090807260A090726211E
          1957413A329B73685CEA9E958AFFC3BDB8FFAEA59DFF837669FF231F19670000
          000A000000030000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000010000000300000009504B4592B3AC
          A4FFD7D3CFFFCDC7C1FFA89F97FF8D8277FF7F7467FF776C5DFF7B6E61FF8175
          68FF8F8478FFABA39BFFC9C4BFFFBBB4ADFF8E8277FF3D362E950000000C0000
          0004000000010000000000000000000000000000000000000000000000000000
          000000000000000000000000000000000000000000010000000300000008443F
          3A7BA9A29BF9CDC8C3FFE0DCD9FFCCC7C2FFBAB3ABFFB1A8A1FFB3ABA4FFBDB6
          B0FFCDC7C4FFD8D4D1FFB6AFA7FF8A8073F9332D277E0000000C000000050000
          0002000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000001000000030000
          0006181615317B746ACFB1AAA3FFC8C3BDFFDAD7D4FFE7E5E3FFE6E4E2FFD4D0
          CDFFBBB4AEFF999085FF61584CD012100E350000000900000004000000010000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000010000
          0002000000040202020B302D2A595F5952AB71685FD0877D70FC82786BFC665E
          52D04E463DAB26221E5B0101010D000000060000000200000001000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000010000000200000004000000060000000700000008000000090000
          0008000000070000000500000003000000010000000100000000000000000000
          0000000000000000000000000000000000000000000000000000}
        TabOrder = 4
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -12
        Font.Name = 'Helveitica'
        Font.Style = [fsBold]
        ParentFont = False
        OnClick = btn_pausarClick
      end
      object btn_finalizar: TcxButton
        Left = 1097
        Top = 1
        Width = 126
        Height = 36
        Caption = 'FINALIZAR'#13'IMPORTA'#199#195'O'
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
        TabOrder = 9
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -12
        Font.Name = 'Helveitica'
        Font.Style = [fsBold]
        ParentFont = False
        OnClick = btn_finalizarClick
      end
      object grp_nfe: TGroupBox
        Left = 3
        Top = -4
        Width = 617
        Height = 205
        Caption = '  NF-e  '
        Color = clWhite
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'Tahoma'
        Font.Style = [fsBold]
        ParentBackground = False
        ParentColor = False
        ParentFont = False
        TabOrder = 0
        object Label1: TLabel
          Left = 51
          Top = 15
          Width = 46
          Height = 18
          Caption = 'Chave:'
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Height = -15
          Font.Name = 'Tahoma'
          Font.Style = []
          ParentFont = False
        end
        object lbl9: TLabel
          Left = 4
          Top = 42
          Width = 93
          Height = 18
          Caption = 'Natureza Op.:'
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Height = -15
          Font.Name = 'Tahoma'
          Font.Style = []
          ParentFont = False
        end
        object lbl11: TLabel
          Left = 39
          Top = 69
          Width = 58
          Height = 18
          Caption = 'N'#186' NF-e:'
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Height = -15
          Font.Name = 'Tahoma'
          Font.Style = []
          ParentFont = False
        end
        object Label17: TLabel
          Left = 20
          Top = 96
          Width = 77
          Height = 18
          Caption = 'Base ICMS:'
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Height = -15
          Font.Name = 'Tahoma'
          Font.Style = []
          ParentFont = False
        end
        object Label8: TLabel
          Left = 19
          Top = 123
          Width = 78
          Height = 18
          Caption = 'Total ICMS:'
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Height = -15
          Font.Name = 'Tahoma'
          Font.Style = []
          ParentFont = False
        end
        object Label16: TLabel
          Left = 14
          Top = 177
          Width = 83
          Height = 18
          Caption = 'T. ICMS ST:'
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Height = -15
          Font.Name = 'Tahoma'
          Font.Style = []
          ParentFont = False
        end
        object Label18: TLabel
          Left = 207
          Top = 69
          Width = 95
          Height = 18
          Caption = 'T. ICMS Des.:'
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Height = -15
          Font.Name = 'Tahoma'
          Font.Style = []
          ParentFont = False
        end
        object Label9: TLabel
          Left = 435
          Top = 96
          Width = 73
          Height = 18
          Caption = 'Valor NF-e:'
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Height = -15
          Font.Name = 'Tahoma'
          Font.Style = []
          ParentFont = False
        end
        object Label15: TLabel
          Left = 415
          Top = 123
          Width = 93
          Height = 18
          Caption = 'T. Descontos:'
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Height = -15
          Font.Name = 'Tahoma'
          Font.Style = []
          ParentFont = False
        end
        object Label21: TLabel
          Left = 415
          Top = 150
          Width = 93
          Height = 18
          Caption = 'T.Acr'#233'scimos:'
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Height = -15
          Font.Name = 'Tahoma'
          Font.Style = []
          ParentFont = False
        end
        object lbl12: TLabel
          Left = 434
          Top = 176
          Width = 74
          Height = 18
          Caption = 'Total NF-e:'
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Height = -15
          Font.Name = 'Tahoma'
          Font.Style = []
          ParentFont = False
        end
        object Label14: TLabel
          Left = 207
          Top = 176
          Width = 95
          Height = 18
          Caption = 'Total COFINS:'
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Height = -15
          Font.Name = 'Tahoma'
          Font.Style = []
          ParentFont = False
        end
        object Label13: TLabel
          Left = 237
          Top = 150
          Width = 65
          Height = 18
          Caption = 'Total PIS:'
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Height = -15
          Font.Name = 'Tahoma'
          Font.Style = []
          ParentFont = False
        end
        object Label20: TLabel
          Left = 225
          Top = 123
          Width = 77
          Height = 18
          Caption = 'Total Frete:'
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Height = -15
          Font.Name = 'Tahoma'
          Font.Style = []
          ParentFont = False
        end
        object Label2: TLabel
          Left = 414
          Top = 69
          Width = 94
          Height = 18
          Caption = 'Data Emiss'#227'o:'
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Height = -15
          Font.Name = 'Tahoma'
          Font.Style = []
          ParentFont = False
        end
        object Label6: TLabel
          Left = 214
          Top = 96
          Width = 88
          Height = 18
          Caption = 'Total Seguro:'
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Height = -15
          Font.Name = 'Tahoma'
          Font.Style = []
          ParentFont = False
        end
        object Label3: TLabel
          Left = 15
          Top = 150
          Width = 82
          Height = 18
          Caption = 'B. ICMS ST:'
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Height = -15
          Font.Name = 'Tahoma'
          Font.Style = []
          ParentFont = False
        end
        object edt_tot_icms_st: TEdit
          Left = 99
          Top = 177
          Width = 97
          Height = 22
          Alignment = taCenter
          Ctl3D = True
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -12
          Font.Name = 'Tahoma'
          Font.Style = [fsBold]
          ParentCtl3D = False
          ParentFont = False
          ReadOnly = True
          TabOrder = 0
        end
        object edt_tot_icms_deson: TEdit
          Left = 305
          Top = 69
          Width = 97
          Height = 22
          Alignment = taCenter
          Ctl3D = True
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -12
          Font.Name = 'Tahoma'
          Font.Style = [fsBold]
          ParentCtl3D = False
          ParentFont = False
          ReadOnly = True
          TabOrder = 1
        end
        object edt_tot_icms: TEdit
          Left = 99
          Top = 123
          Width = 97
          Height = 22
          Alignment = taCenter
          Ctl3D = True
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -12
          Font.Name = 'Tahoma'
          Font.Style = [fsBold]
          ParentCtl3D = False
          ParentFont = False
          ReadOnly = True
          TabOrder = 2
        end
        object edt_base_icms: TEdit
          Left = 99
          Top = 96
          Width = 97
          Height = 22
          Alignment = taCenter
          Ctl3D = True
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -12
          Font.Name = 'Tahoma'
          Font.Style = [fsBold]
          ParentCtl3D = False
          ParentFont = False
          ReadOnly = True
          TabOrder = 3
        end
        object edt_num_nfe: TEdit
          Left = 99
          Top = 69
          Width = 97
          Height = 22
          Alignment = taCenter
          Ctl3D = True
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -12
          Font.Name = 'Tahoma'
          Font.Style = [fsBold]
          ParentCtl3D = False
          ParentFont = False
          ReadOnly = True
          TabOrder = 4
        end
        object edt_nat_op: TEdit
          Left = 99
          Top = 42
          Width = 482
          Height = 22
          Ctl3D = True
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -12
          Font.Name = 'Tahoma'
          Font.Style = [fsBold]
          ParentCtl3D = False
          ParentFont = False
          ReadOnly = True
          TabOrder = 5
        end
        object btn_vinc_nat_op: TcxButton
          Left = 580
          Top = 41
          Width = 28
          Height = 25
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
          TabOrder = 7
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -12
          Font.Name = 'Helveitica'
          Font.Style = [fsBold]
          ParentFont = False
          OnClick = btn_vinc_nat_opClick
        end
        object edt_chave: TEdit
          Left = 99
          Top = 15
          Width = 379
          Height = 22
          Ctl3D = True
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -12
          Font.Name = 'Tahoma'
          Font.Style = [fsBold]
          ParentCtl3D = False
          ParentFont = False
          TabOrder = 8
        end
        object edt_valor_nfe: TEdit
          Left = 511
          Top = 96
          Width = 97
          Height = 22
          Alignment = taCenter
          Ctl3D = True
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -12
          Font.Name = 'Tahoma'
          Font.Style = [fsBold]
          ParentCtl3D = False
          ParentFont = False
          ReadOnly = True
          TabOrder = 9
        end
        object edt_tot_descontos: TEdit
          Left = 511
          Top = 123
          Width = 97
          Height = 22
          Alignment = taCenter
          Ctl3D = True
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -12
          Font.Name = 'Tahoma'
          Font.Style = [fsBold]
          ParentCtl3D = False
          ParentFont = False
          ReadOnly = True
          TabOrder = 10
        end
        object edt_tot_acrescimos: TEdit
          Left = 511
          Top = 150
          Width = 97
          Height = 22
          Alignment = taCenter
          Ctl3D = True
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -12
          Font.Name = 'Tahoma'
          Font.Style = [fsBold]
          ParentCtl3D = False
          ParentFont = False
          ReadOnly = True
          TabOrder = 11
        end
        object edt_tot_nfe: TEdit
          Left = 511
          Top = 176
          Width = 97
          Height = 22
          Alignment = taCenter
          Ctl3D = True
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -12
          Font.Name = 'Tahoma'
          Font.Style = [fsBold]
          ParentCtl3D = False
          ParentFont = False
          ReadOnly = True
          TabOrder = 12
        end
        object edt_tot_cofins: TEdit
          Left = 305
          Top = 177
          Width = 97
          Height = 22
          Alignment = taCenter
          Ctl3D = True
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -12
          Font.Name = 'Tahoma'
          Font.Style = [fsBold]
          ParentCtl3D = False
          ParentFont = False
          ReadOnly = True
          TabOrder = 13
        end
        object edt_tot_pis: TEdit
          Left = 305
          Top = 150
          Width = 97
          Height = 22
          Alignment = taCenter
          Ctl3D = True
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -12
          Font.Name = 'Tahoma'
          Font.Style = [fsBold]
          ParentCtl3D = False
          ParentFont = False
          ReadOnly = True
          TabOrder = 14
        end
        object edt_tot_frete: TEdit
          Left = 305
          Top = 123
          Width = 97
          Height = 22
          Alignment = taCenter
          Ctl3D = True
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -12
          Font.Name = 'Tahoma'
          Font.Style = [fsBold]
          ParentCtl3D = False
          ParentFont = False
          ReadOnly = True
          TabOrder = 15
        end
        object edt_tot_seguro: TEdit
          Left = 305
          Top = 96
          Width = 97
          Height = 22
          Alignment = taCenter
          Ctl3D = True
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -12
          Font.Name = 'Tahoma'
          Font.Style = [fsBold]
          ParentCtl3D = False
          ParentFont = False
          ReadOnly = True
          TabOrder = 16
        end
        object edt_data_emi: TEdit
          Left = 511
          Top = 69
          Width = 97
          Height = 22
          Alignment = taCenter
          Ctl3D = True
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -12
          Font.Name = 'Tahoma'
          Font.Style = [fsBold]
          ParentCtl3D = False
          ParentFont = False
          ReadOnly = True
          TabOrder = 17
        end
        object edt_base_icms_st: TEdit
          Left = 99
          Top = 150
          Width = 97
          Height = 22
          Alignment = taCenter
          Ctl3D = True
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -12
          Font.Name = 'Tahoma'
          Font.Style = [fsBold]
          ParentCtl3D = False
          ParentFont = False
          ReadOnly = True
          TabOrder = 18
        end
        object btn_buscar_xml: TcxButton
          Left = 477
          Top = 13
          Width = 28
          Height = 25
          LookAndFeel.NativeStyle = False
          LookAndFeel.SkinName = 'Metropolis'
          OptionsImage.Glyph.Data = {
            36040000424D3604000000000000360000002800000010000000100000000100
            2000000000000004000000000000000000000000000000000000000000000000
            0000000000000000000000000000000000000000000000000000000000000000
            0000000000000000000000000000000000000000000000000000000000000000
            0000000000000000000000000000000000000000000000000000000000000000
            00000000000000000000000000000000000000000000000000002828284D223B
            484D72C4EEFF72C4EEFF72C4EEFF72C4EEFF72C4EEFF72C4EEFF72C4EEFF72C4
            EEFF72C4EEFF72C4EEFF72C4EEFF223B484D0000000000000000848484FF2828
            284D223B484D72C4EEFF72C4EEFF72C4EEFF72C4EEFF72C4EEFF72C4EEFF72C4
            EEFF72C4EEFF72C4EEFF72C4EEFF72C4EEFF223B484D00000000848484FF8484
            84FF2828284D223B484D72C4EEFF72C4EEFF72C4EEFF72C4EEFF72C4EEFF72C4
            EEFF72C4EEFF72C4EEFF72C4EEFF72C4EEFF72C4EEFF223B484D848484FF8484
            84FF848484FF2828284D223B484D72C4EEFF72C4EEFF72C4EEFF72C4EEFF72C4
            EEFF72C4EEFF72C4EEFF72C4EEFF72C4EEFF72C4EEFF72C4EEFF848484FF8484
            84FF848484FF848484FF2828284D000000000000000000000000223B484D72C4
            EEFF72C4EEFF72C4EEFF72C4EEFF72C4EEFF72C4EEFF223B484D848484FF8484
            84FF848484FF848484FF848484FF848484FF848484FF848484FF2828284D0000
            0000000000000000000000000000000000000000000000000000848484FF8484
            84FF848484FF848484FF848484FF848484FF848484FF848484FF848484FF8484
            84FF848484FF848484FF848484FF848484FF0000000000000000848484FF8484
            84FF848484FF848484FF848484FF848484FF848484FF848484FF848484FF8484
            84FF848484FF848484FF848484FF848484FF0000000000000000848484FF8484
            84FF848484FF848484FF848484FF848484FF848484FF848484FF848484FF8484
            84FF848484FF848484FF848484FF2828284D0000000000000000848484FF8484
            84FF848484FF848484FF848484FF848484FF848484FF2828284D000000000000
            00000000000000000000000000000000000000000000000000002828284D8484
            84FF848484FF848484FF848484FF848484FF2828284D00000000000000000000
            0000000000000000000000000000000000000000000000000000000000000000
            0000000000000000000000000000000000000000000000000000000000000000
            0000000000000000000000000000000000000000000000000000000000000000
            0000000000000000000000000000000000000000000000000000000000000000
            0000000000000000000000000000000000000000000000000000000000000000
            0000000000000000000000000000000000000000000000000000000000000000
            0000000000000000000000000000000000000000000000000000}
          TabOrder = 6
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -12
          Font.Name = 'Helveitica'
          Font.Style = [fsBold]
          ParentFont = False
          OnClick = btn_buscar_xmlClick
        end
      end
      object pcFprTrans: TcxPageControl
        Left = 624
        Top = -2
        Width = 467
        Height = 134
        TabOrder = 1
        Properties.ActivePage = tsFornecedor
        Properties.CustomButtons.Buttons = <>
        LookAndFeel.NativeStyle = False
        LookAndFeel.SkinName = 'Office2013White'
        ClientRectBottom = 132
        ClientRectLeft = 2
        ClientRectRight = 465
        ClientRectTop = 29
        object tsFornecedor: TcxTabSheet
          Caption = 'Fornecedor'
          ImageIndex = 0
          object lbl5: TLabel
            Left = 16
            Top = 3
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
          object Label4: TLabel
            Left = 22
            Top = 29
            Width = 79
            Height = 18
            Caption = 'N. Fantasia:'
            Font.Charset = ANSI_CHARSET
            Font.Color = clBlack
            Font.Height = -15
            Font.Name = 'Tahoma'
            Font.Style = []
            ParentFont = False
          end
          object lbl1: TLabel
            Left = 63
            Top = 55
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
          object Label5: TLabel
            Left = 53
            Top = 81
            Width = 48
            Height = 18
            Caption = 'Cidade:'
            Font.Charset = ANSI_CHARSET
            Font.Color = clBlack
            Font.Height = -15
            Font.Name = 'Tahoma'
            Font.Style = []
            ParentFont = False
          end
          object lbl6: TLabel
            Left = 297
            Top = 55
            Width = 19
            Height = 18
            Caption = 'IE:'
            Font.Charset = ANSI_CHARSET
            Font.Color = clBlack
            Font.Height = -15
            Font.Name = 'Tahoma'
            Font.Style = []
            ParentFont = False
          end
          object lbl2: TLabel
            Left = 293
            Top = 81
            Width = 23
            Height = 18
            Caption = 'UF:'
            Font.Charset = ANSI_CHARSET
            Font.Color = clBlack
            Font.Height = -15
            Font.Name = 'Tahoma'
            Font.Style = []
            ParentFont = False
          end
          object edt_fn_razao: TEdit
            Left = 103
            Top = 3
            Width = 356
            Height = 22
            Ctl3D = True
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -12
            Font.Name = 'Tahoma'
            Font.Style = [fsBold]
            ParentCtl3D = False
            ParentFont = False
            ReadOnly = True
            TabOrder = 0
          end
          object edt_fn_fantasia: TEdit
            Left = 103
            Top = 29
            Width = 356
            Height = 22
            Ctl3D = True
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -12
            Font.Name = 'Tahoma'
            Font.Style = [fsBold]
            ParentCtl3D = False
            ParentFont = False
            ReadOnly = True
            TabOrder = 1
          end
          object edt_fn_cnpj: TEdit
            Left = 103
            Top = 55
            Width = 150
            Height = 22
            Alignment = taCenter
            Ctl3D = True
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -12
            Font.Name = 'Tahoma'
            Font.Style = [fsBold]
            ParentCtl3D = False
            ParentFont = False
            ReadOnly = True
            TabOrder = 2
          end
          object edt_fn_cidade: TEdit
            Left = 103
            Top = 81
            Width = 150
            Height = 22
            Alignment = taCenter
            Ctl3D = True
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -12
            Font.Name = 'Tahoma'
            Font.Style = [fsBold]
            ParentCtl3D = False
            ParentFont = False
            ReadOnly = True
            TabOrder = 3
          end
          object edt_fn_ie: TEdit
            Left = 319
            Top = 55
            Width = 140
            Height = 22
            Alignment = taCenter
            Ctl3D = True
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -12
            Font.Name = 'Tahoma'
            Font.Style = [fsBold]
            ParentCtl3D = False
            ParentFont = False
            ReadOnly = True
            TabOrder = 4
          end
          object edt_fn_uf: TEdit
            Left = 319
            Top = 81
            Width = 45
            Height = 22
            Alignment = taCenter
            Ctl3D = True
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -12
            Font.Name = 'Tahoma'
            Font.Style = [fsBold]
            ParentCtl3D = False
            ParentFont = False
            ReadOnly = True
            TabOrder = 5
          end
        end
        object tsTransportador: TcxTabSheet
          Caption = 'Transportador'
          ImageIndex = 1
          object Label19: TLabel
            Left = 16
            Top = 3
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
          object Label22: TLabel
            Left = 63
            Top = 29
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
          object Label23: TLabel
            Left = 71
            Top = 55
            Width = 30
            Height = 18
            Caption = 'CPF:'
            Font.Charset = ANSI_CHARSET
            Font.Color = clBlack
            Font.Height = -15
            Font.Name = 'Tahoma'
            Font.Style = []
            ParentFont = False
          end
          object Label24: TLabel
            Left = 53
            Top = 81
            Width = 48
            Height = 18
            Caption = 'Cidade:'
            Font.Charset = ANSI_CHARSET
            Font.Color = clBlack
            Font.Height = -15
            Font.Name = 'Tahoma'
            Font.Style = []
            ParentFont = False
          end
          object Label25: TLabel
            Left = 293
            Top = 81
            Width = 23
            Height = 18
            Caption = 'UF:'
            Font.Charset = ANSI_CHARSET
            Font.Color = clBlack
            Font.Height = -15
            Font.Name = 'Tahoma'
            Font.Style = []
            ParentFont = False
          end
          object Label26: TLabel
            Left = 297
            Top = 29
            Width = 19
            Height = 18
            Caption = 'IE:'
            Font.Charset = ANSI_CHARSET
            Font.Color = clBlack
            Font.Height = -15
            Font.Name = 'Tahoma'
            Font.Style = []
            ParentFont = False
          end
          object edt_tr_razao: TEdit
            Left = 103
            Top = 3
            Width = 356
            Height = 22
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -12
            Font.Name = 'Tahoma'
            Font.Style = [fsBold]
            ParentFont = False
            ReadOnly = True
            TabOrder = 0
          end
          object edt_tr_cnpj: TEdit
            Left = 103
            Top = 29
            Width = 150
            Height = 22
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -12
            Font.Name = 'Tahoma'
            Font.Style = [fsBold]
            ParentFont = False
            ReadOnly = True
            TabOrder = 1
          end
          object edt_tr_cpf: TEdit
            Left = 103
            Top = 55
            Width = 150
            Height = 22
            Alignment = taCenter
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -12
            Font.Name = 'Tahoma'
            Font.Style = [fsBold]
            ParentFont = False
            ReadOnly = True
            TabOrder = 2
          end
          object edt_tr_cidade: TEdit
            Left = 103
            Top = 81
            Width = 150
            Height = 22
            Alignment = taCenter
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -12
            Font.Name = 'Tahoma'
            Font.Style = [fsBold]
            ParentFont = False
            ReadOnly = True
            TabOrder = 3
          end
          object edt_tr_uf: TEdit
            Left = 319
            Top = 81
            Width = 45
            Height = 22
            Alignment = taCenter
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -12
            Font.Name = 'Tahoma'
            Font.Style = [fsBold]
            ParentFont = False
            ReadOnly = True
            TabOrder = 4
          end
          object edt_tr_ie: TEdit
            Left = 319
            Top = 29
            Width = 140
            Height = 22
            Alignment = taCenter
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -12
            Font.Name = 'Tahoma'
            Font.Style = [fsBold]
            ParentFont = False
            ReadOnly = True
            TabOrder = 5
          end
        end
        object tsCarga: TcxTabSheet
          Caption = 'Carga'
          ImageIndex = 2
          object Label27: TLabel
            Left = 48
            Top = 41
            Width = 53
            Height = 18
            Caption = 'Esp'#233'cie:'
            Font.Charset = ANSI_CHARSET
            Font.Color = clBlack
            Font.Height = -15
            Font.Name = 'Tahoma'
            Font.Style = []
            ParentFont = False
          end
          object Label28: TLabel
            Left = 22
            Top = 71
            Width = 79
            Height = 18
            Caption = 'Quantidade:'
            Font.Charset = ANSI_CHARSET
            Font.Color = clBlack
            Font.Height = -15
            Font.Name = 'Tahoma'
            Font.Style = []
            ParentFont = False
          end
          object Label29: TLabel
            Left = 276
            Top = 41
            Width = 40
            Height = 18
            Caption = 'Bruto:'
            Font.Charset = ANSI_CHARSET
            Font.Color = clBlack
            Font.Height = -15
            Font.Name = 'Tahoma'
            Font.Style = []
            ParentFont = False
          end
          object Label30: TLabel
            Left = 268
            Top = 71
            Width = 48
            Height = 18
            Caption = 'L'#237'quido:'
            Font.Charset = ANSI_CHARSET
            Font.Color = clBlack
            Font.Height = -15
            Font.Name = 'Tahoma'
            Font.Style = []
            ParentFont = False
          end
          object Label31: TLabel
            Left = 56
            Top = 9
            Width = 45
            Height = 18
            Caption = 'Marca:'
            Font.Charset = ANSI_CHARSET
            Font.Color = clBlack
            Font.Height = -15
            Font.Name = 'Tahoma'
            Font.Style = []
            ParentFont = False
          end
          object edt_cg_especie: TEdit
            Left = 103
            Top = 41
            Width = 150
            Height = 22
            Alignment = taCenter
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -12
            Font.Name = 'Tahoma'
            Font.Style = [fsBold]
            ParentFont = False
            ReadOnly = True
            TabOrder = 0
          end
          object edt_cg_qtde: TEdit
            Left = 103
            Top = 71
            Width = 150
            Height = 22
            Alignment = taCenter
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -12
            Font.Name = 'Tahoma'
            Font.Style = [fsBold]
            ParentFont = False
            ReadOnly = True
            TabOrder = 1
          end
          object edt_cg_liquido: TEdit
            Left = 319
            Top = 71
            Width = 140
            Height = 22
            Alignment = taCenter
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -12
            Font.Name = 'Tahoma'
            Font.Style = [fsBold]
            ParentFont = False
            ReadOnly = True
            TabOrder = 2
          end
          object edt_cg_bruto: TEdit
            Left = 319
            Top = 41
            Width = 140
            Height = 22
            Alignment = taCenter
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -12
            Font.Name = 'Tahoma'
            Font.Style = [fsBold]
            ParentFont = False
            ReadOnly = True
            TabOrder = 3
          end
          object edt_cg_marca: TEdit
            Left = 103
            Top = 9
            Width = 356
            Height = 22
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -12
            Font.Name = 'Tahoma'
            Font.Style = [fsBold]
            ParentFont = False
            ReadOnly = True
            TabOrder = 4
          end
        end
        object tsObs: TcxTabSheet
          Caption = 'Observa'#231#245'es'
          ImageIndex = 3
          object mmObs: TcxMemo
            Left = 0
            Top = 0
            Align = alClient
            ParentFont = False
            Properties.ReadOnly = True
            Style.Font.Charset = DEFAULT_CHARSET
            Style.Font.Color = clWindowText
            Style.Font.Height = -11
            Style.Font.Name = 'Tahoma'
            Style.Font.Style = []
            Style.IsFontAssigned = True
            TabOrder = 0
            Height = 103
            Width = 463
          end
        end
      end
      object btn_iniciar: TcxButton
        Left = 1097
        Top = 1
        Width = 126
        Height = 36
        Caption = 'INICIAR'#13'IMPORTA'#199#195'O'
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
          0000000000000000000100000001000000010000000100000001000000010000
          0001000000010000000100000001000000010000000100000001000000010000
          0001000000010000000100000001000000010000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0002000000040000000600000007000000080000000800000008000000090000
          0009000000090000000900000009000000090000000A0000000A0000000A0000
          000A0000000A0000000A00000009000000060000000300000001000000000000
          0000000000000000000000000000000000000000000000000000000000020000
          000700000011000000190000001D0000001F0000001F00000020000000210000
          0022000000230000002300000024000000250000002500000026000000270000
          0027000000270000002700000023000000190000000B00000003000000000000
          0000000000000000000000000000000000000000000000000000000000040000
          00108F6541C2C68C5BFFC68C5AFFC58B59FFC58B59FFC48A58FFC48957FFC389
          56FFC38855FFC28855FFC28754FFC28753FFC18653FFC08652FFC18552FFC184
          51FFC08451FFBF8350FFBF8450FF885E39C70000001900000006000000000000
          0000000000000000000000000000000000000000000000000001000000050000
          0017C88E5CFFF9F3EDFFF8F2ECFFF8F2EBFFF8F0E9FFF6EFE7FFF6EEE6FFF5ED
          E4FFF4ECE3FFF5EBE1FFF3EAE0FFF3E8DDFFF2E8DCFFF1E6DAFFF0E5D8FFF0E4
          D7FFF0E3D6FFEFE2D4FFEEE0D3FFBF8450FF0000002400000009000000000000
          0000000000000000000000000000000000000000000000000001000000060000
          0018C88E5EFFFCF9F4FFFCF8F3FFFBF6F2FFFBF6F1FFFBF5EFFFFBF4EEFFFAF4
          EDFFFAF3ECFFF9F3EAFFF9F2E9FFF9F1E8FFF9F1E8FFF9F0E7FFF8F0E6FFF8EF
          E5FFF8EFE5FFF8EEE4FFF8EEE3FFC08450FF000000270000000A000000000000
          0000000000000000000000000000000000000000000000000001000000060000
          0017C8905FFFFDF9F5FFFCF8F5FFFCF7F3FFFCF7F2FFFBF6F1FFFBF6EFFFFAF5
          EEFFFAF4EDFFFAF3ECFFFAF3EBFFFAF2EAFFF9F2E9FFF9F1E8FFF9F0E7FFF9F0
          E6FFF8EFE5FFF8EFE5FFF8EFE4FFBF8451FF000000270000000A000000000000
          0000000000000000000000000000000000000000000000000001000000050000
          0016CA905FFFFDF9F7FFFDFAF6FFFDF8F4FFD9AD89FFD8AC87FFD7AA85FFD7A9
          84FFD5A782FFD5A680FFD4A47EFFD2A37CFFD2A17BFFD1A079FFD09E78FFCF9D
          77FFF8F0E6FFF8F0E6FFF8EFE5FFC18552FF000000260000000A000000000000
          0000000000000000000000000000000000000000000000000000000000050000
          0015CA9160FFFDFBF7FFFDFAF7FFFCF9F6FFFDF9F5FFFCF8F4FFFCF8F2FFFBF6
          F1FFFBF5F0FFFBF5EFFFFAF4EDFFFAF3EDFFFAF3EBFFF9F2EAFFF9F2E9FFF9F1
          E8FFF9F0E7FFF9F0E7FFF8EFE6FFC18652FF0000002500000009000000000000
          0000000000000000000000000000000000000000000000000000000000050000
          0014CB9261FFFEFBF9FFFDFBF9FFF8F5F2FFEFEDE9FFF7F4F0FFFDF8F4FFFCF8
          F2FFFCF7F1FFFBF6F0FFFBF5EEFFFAF4EEFFFAF4EDFFFAF3ECFFF9F2EAFFF9F2
          EAFFF9F1E8FFF9F0E8FFF9F0E7FFC18653FF0000002400000009000000000000
          0000000000000000000000000000000000000000000000000000000000050000
          0013CB9262FFFEFCFAFFFEFCFAFFEBE9E7FF438B4AFFD3C6BAFFD7AC88FFD9AE
          89FFD9AC87FFD8AA86FFD6A884FFD5A782FFD4A681FFD4A47FFFD3A37DFFD2A2
          7CFFF9F2E9FFF9F1E8FFF9F1E7FFC28754FF0000002300000009000000000000
          0000000000000000000000000000000000000000000000000000000000040000
          0014C58F60FFEDECEAFFE7E5E4FFD0CECCFF0B7317FF3C8443FFDEDBD9FFF8F4
          F0FFFCF9F4FFFCF7F3FFFBF6F2FFFBF6F1FFFBF5F0FFFBF4EEFFFAF4EDFFFAF4
          ECFFFAF3EBFFF9F2EAFFF9F1E9FFC28755FF0000002200000009000000000000
          0000000000000000000000000000000000000000000000000000000000060001
          0020737F40FF469551FF1C8427FF1A7E26FF0B7518FF109536FF3D8544FFDEDD
          DAFFF9F5F2FF47B4E6FF0096DEFF0094D9FF0091D6FF008FD2FF008DCEFF47A9
          D5FFFAF4ECFFFAF3EBFFF9F2EAFFC38955FF0000002100000008000000000000
          0000000000000000000000000000000000000000000000000001000100110748
          109C25A13EFF23AF50FF44C676FF67CD8EFF81D9A3FF87DCA9FF1F8D36FF448C
          4CFFF2EFECFF009CE6FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF008E
          D1FFFAF4EEFFFAF4ECFFFAF3EBFFC48957FF0000002000000008000000000000
          000000000000000000000000000000000000000000000000000506360C702DA7
          46FF33BF65FF2DB052FF219634FF0C831CFF0C801AFF49AD61FF418D4AFFE5E3
          E1FFFAF7F4FF41B6ECFF009EE7FF009BE5FF009AE2FF0098DEFF0095DAFF41AC
          DDFFFBF5EFFFFBF4EEFFFAF3ECFFC48A57FF0000001F00000008000000000000
          00000000000000000001000000010000000100000001000000090B6619B959C5
          78FF17AF48FF4EA45AFFABCAAFFFDCDBDAFF0C821CFF44944EFFE7E7E6FFFAF8
          F7FFFEFCF9FFFEFCFAFFFDFBF8FFFCFAF7FFFCF9F6FFFCF8F4FFFCF7F3FFFCF7
          F1FFFBF6F0FFFBF6EFFFFBF5EDFFC58B58FF0000001E00000008000000000000
          000100000002000000040000000500000006000000060000000E0E8E20EB76D6
          9DFF129B2DFFAACAAFFFEEEEEDFFEAE9E9FF499853FFDACFC5FFD6B08EFFDCB3
          91FFDDB492FFDDB391FFDEB290FFDCB18EFFDCAF8CFFDAAE8BFFD9AC89FFD8AB
          87FFFBF7F2FFFBF6F0FFFBF5F0FFC58B59FF0000001D00000007000000010000
          0004000000080000000C0000000F00000012000000150000001F0F8520EC6CC4
          91FF1F9434FFCFCFCFFFD6D6D6FFD2D2D2FFCDCCCCFFD0CFCFFFD8D7D6FFE5E5
          E4FFF4F3F2FFFCFBF9FFFEFCFBFFFEFCF9FFFEFBF9FFFDFAF7FFFCF9F6FFFBF8
          F5FFFCF7F3FFFCF7F2FFFBF6F0FFC68C5AFF0000001C00000007000000021528
          354D427FA9E8468BB9FF4489B8FF4187B6FF3F85B4FF3D83B3FF3C81B2FF397F
          B1FF387EAFFF367CAEFF337AADFF3279ACFF3077ABFF2E75A9FF3979A8FF9BAE
          BDFFE7E6E5FFF8F7F6FFFDFCFBFFFDFDFAFFFEFBFAFFFEFCF9FFFDFAF7FFFDF9
          F7FFFCF9F5FFFCF8F4FFFCF7F2FFC78D5BFF0000001B00000007000000024683
          ABE58BBDDBFF9AD3EFFF96D1EFFF93CEEDFF8FCCEDFF8CCAEBFF89C8EAFF86C6
          E9FF83C4E9FF7FC2E8FF7CBFE7FF79BDE5FF76BBE5FF72BAE4FF5198C8FF3B7B
          A9FFD1C6BEFFD8B190FFE0B694FFDFB594FFDEB492FFDDB38FFFDCB18EFFDBB0
          8CFFFDFAF6FFFCF9F5FFFCF8F4FFC88D5CFF0000001A00000007000000015296
          C1FFC5E5F5FF9FD6F1FF9BD4F0FF99D2EFFF95D0EEFF92CEEDFF90CCECFF8CCA
          EBFF89C8EBFF86C5E9FF83C4E9FF80C2E8FF7CBFE6FF79BEE5FF73B9E1FF3077
          AAFFD5D4D4FFF4F3F3FFFEFDFCFFFEFEFDFFFEFDFCFFFEFDFBFFFEFCFAFFFEFC
          F9FFFEFAF8FFFDF9F6FFFCF9F5FFC88E5DFF0000001900000006000000005599
          C4FFCEEBF8FFB8E2F6FFA1D8F1FF9ED6F1FF9BD4F0FF99D2EFFF95D0EEFF92CE
          EDFF90CCEDFF8CCAECFF89C8EBFF86C6EAFF83C4E9FF80C2E7FF7BBDE5FF347B
          ADFFD8D8D7FFF5F4F4FFFEFDFDFFFFFEFDFFFEFEFDFFFEFDFCFFFDFCFCFFFDFD
          FAFFFDFCFAFFFEFBF8FFFDFAF7FFC98F5EFF0000001800000006000000005491
          B8ED9AC6E0FFD3EDF9FFCEEBF8FFCAE9F8FFC5E7F7FFC0E4F6FFBBE2F5FFB6DF
          F4FFB1DCF2FFACDAF2FFA7D7F1FFA2D4EFFF9CD1EDFF98CEEDFF68A6CFFF4182
          AFFFDBD1C8FFDDB796FFE3BB9AFFE2BA98FFE2B996FFE1B795FFDFB693FFDFB5
          92FFFEFCFAFFFDFBFAFFFEFBF8FFC99060FF0000001600000006000000001727
          313F487C9DC9599BC5FF569AC4FF5498C3FF5296C1FF4F94C0FF4D91BEFF4B90
          BCFF498DBBFF478CBAFF448AB8FF4387B7FF4086B6FF3E84B4FF5B92B8FFB5C7
          D3FFF0F0F0FFFBFBFBFFFFFFFFFFFFFFFEFFFFFEFEFFFFFEFEFFFFFEFDFFFEFE
          FCFFFEFCFCFFFEFDFBFFFDFCF9FFCA9160FF0000001500000006000000000000
          0000000000000000000000000000000000010000000300000004000000060000
          000BCB976BFFF5F5F5FFF3F3F3FFF0F0F0FFEEEEEEFFECECECFFEEEEEEFFF3F3
          F3FFFAFAFAFFFEFEFEFFFFFFFFFFFFFFFFFFFFFFFEFFFFFEFEFFFFFEFEFFFFFE
          FDFFFEFDFCFFFDFEFCFFFDFCFBFFCA9261FF0000001400000005000000000000
          0000000000000000000000000000000000000000000000000001000000020000
          0005D29C6DFFFDFDFDFFFDFDFDFFFCFCFCFFFCFCFCFFFBFBFBFFFCFCFCFFFDFD
          FDFFFEFEFEFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFEFFFFFFFEFFFFFE
          FEFFFFFEFDFFFFFEFDFFFEFEFCFFCB9262FF0000001100000004000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          00029D7553BFD39D6FFFD39D6EFFD39C6EFFD29C6DFFD19B6DFFD19B6CFFD19A
          6BFFD1996BFFD1996AFFD0996AFFCF9869FFCF9868FFCF9768FFCE9667FFCE96
          66FFCD9566FFCD9564FFCC9464FF976D49C30000000B00000003000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0001000000020000000300000004000000050000000500000006000000070000
          00070000000800000009000000090000000A0000000B0000000C0000000C0000
          000D0000000E0000000E0000000D0000000A0000000400000001000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000100000001000000010000000100000001000000010000
          0002000000020000000200000002000000020000000300000003000000030000
          0003000000030000000300000003000000020000000100000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000}
        TabOrder = 2
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -12
        Font.Name = 'Helveitica'
        Font.Style = [fsBold]
        ParentFont = False
        OnClick = btn_iniciarClick
      end
      object btn_desfazer: TcxButton
        Left = 1097
        Top = 42
        Width = 126
        Height = 36
        Caption = 'DESFAZER'#13'ALTERA'#199#213'ES'
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
          000000000000281D1138573D24787E5935AE9C6E41D8B17D4AF5B17D4AF59C6E
          41D87E5935AE573D2478281D1138000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000002C1F
          123D6E4D2E98AC7A48EFB8824DFFB8824DFFB8824DFFB8824DFFB8824DFFB882
          4DFFB8824DFFB8824DFFAC7A48EF6E4D2E982C1F123D00000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          00000000000000000000000000000000000000000000000000004C36206A9C6E
          41D8B8824DFFB8824DFFB8824DFFB8824DFFB8824DFFB8824DFFB8824DFFB882
          4DFFB8824DFFB8824DFFB8824DFFB8824DFF9C6E41D84C36206A000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          00000000000000000000000000000000000000000000573E2579B37E4BF8B882
          4DFFB8824DFFB8824DFFB8824DFFB8824DFFB8824DFFB8824DFFB8824DFFB882
          4DFFB8824DFFB8824DFFB8824DFFB8824DFFB8824DFFB37E4BF8573E25790000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000004C36206AB37E4BF8B8824DFFB882
          4DFFB8824DFFB8824DFF855E38B9523A2272281D11380B08050F0B08050F281D
          1138523A2272855E38B9B8824DFFB8824DFFB8824DFFB8824DFFB37E4BF84C36
          206A000000000000000000000000000000000000000000000000000000000000
          00000000000000000000000000002C1F123D9C6E41D8B8824DFFB8824DFFB882
          4DFFA17243DF533B23730906040C000000000000000000000000000000000000
          0000000000000906040C533B2373A17243DFB8824DFFB8824DFFB8824DFF9C6E
          41D82C1F123D0000000000000000000000000000000000000000000000000000
          00000000000000000000000000006E4D2E98B8824DFFB8824DFFB8824DFFA172
          43DF422F1C5C0000000000000000000000000000000000000000000000000000
          0000000000000000000000000000422F1C5CA17243DFB8824DFFB8824DFFB882
          4DFF6E4D2E980000000000000000000000000000000000000000000000000000
          00000000000000000000281D1138AC7A48EFB8824DFFB8824DFFB8824DFF533B
          2373000000000000000000000000000000000000000000000000000000000000
          000000000000000000000000000000000000533B2373B8824DFFB8824DFFB882
          4DFFAC7A48EF281D113800000000000000000000000000000000000000000000
          00000000000000000000573D2478B8824DFFB8824DFFB8824DFF855E38B90906
          040C000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000906040C855E38B9B8824DFFB882
          4DFFB8824DFF573D247800000000000000000000000000000000000000000000
          000000000000000000007E5935AEB8824DFFB8824DFFB8824DFF523A22720000
          0000000000000000000000000000000000000000000000000000000000000000
          00000000000000000000000000000000000000000000523A2272B8824DFFB882
          4DFFB8824DFF7E5935AE00000000000000000000000000000000000000000000
          000000000000000000009C6E41D8B8824DFFB8824DFFB8824DFF281D11380000
          00000000000000000000000000000000000000000000B8824DFFB8824DFFB882
          4DFFB8824DFFB8824DFFB8824DFF0000000000000000281D1138B8824DFFB882
          4DFFB8824DFF9C6E41D800000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          00000000000000000000000000000000000000000000B8824DFFB8824DFFB882
          4DFFB8824DFFB8824DFFB8824DFF00000000000000000B08050FB8824DFFB882
          4DFFB8824DFFB17D4AF500000000000000000000000000000000000000000000
          000000000000B8824DFFB8824DFFB8824DFFB8824DFFB8824DFFB8824DFFB882
          4DFFB8824DFFB8824DFF5C41267F0000000000000000B8824DFFB8824DFF0000
          000000000000000000000000000000000000000000000B08050FB8824DFFB882
          4DFFB8824DFFB17D4AF500000000000000000000000000000000000000000000
          000000000000B8824DFFB8824DFFB8824DFFB8824DFFB8824DFFB8824DFFB882
          4DFFB8824DFF5C41267F000000000000000000000000B8824DFFB8824DFF0000
          00000000000000000000000000000000000000000000281D1138B8824DFFB882
          4DFFB8824DFF9C6E41D800000000000000000000000000000000000000000000
          000000000000B8824DFFB8824DFFB8824DFFB8824DFFB8824DFFB8824DFFB882
          4DFF5C41267F00000000000000000000000000000000B8824DFFB8824DFF0000
          00000000000000000000000000000000000000000000523A2272B8824DFFB882
          4DFFB8824DFF7E5935AE00000000000000000000000000000000000000000000
          000000000000B8824DFFB8824DFFB8824DFFB8824DFFB8824DFFB8824DFF6044
          28850000000000000000000000000000000000000000B8824DFFB8824DFF0000
          0000000000000000000000000000000000000906040C855E38B9B8824DFFB882
          4DFFB8824DFF573D247800000000000000000000000000000000000000000000
          000000000000B8824DFFB8824DFFB8824DFFB8824DFFB8824DFFB8824DFF533B
          23730000000000000000000000000000000000000000B8824DFFB8824DFF0000
          000000000000000000000000000000000000533B2373B8824DFFB8824DFFB882
          4DFFAC7A48EF281D113800000000000000000000000000000000000000000000
          000000000000B8824DFFB8824DFFB8824DFFB8824DFFB8824DFFB8824DFFA172
          43DF422F1C5C00000000000000000000000000000000B8824DFFB8824DFF0000
          0000000000000000000000000000422F1C5CA17243DFB8824DFFB8824DFFB882
          4DFF6E4D2E980000000000000000000000000000000000000000000000000000
          000000000000B8824DFFB8824DFFB8824DFFAA7847EBB8824DFFB8824DFFB882
          4DFFA17243DF533B23730906040C000000000000000000000000000000000000
          0000000000000906040C533B2373A17243DFB8824DFFB8824DFFB8824DFF9C6E
          41D82C1F123D0000000000000000000000000000000000000000000000000000
          000000000000B8824DFFB8824DFF5C41267F4C36206AB37E4BF8B8824DFFB882
          4DFFB8824DFFB8824DFF855E38B9523A2272281D11380B08050F0B08050F281D
          1138523A2272855E38B9B8824DFFB8824DFFB8824DFFB8824DFFB37E4BF84C36
          206A000000000000000000000000000000000000000000000000000000000000
          000000000000B8824DFF5C41267F0000000000000000573E2579B37E4BF8B882
          4DFFB8824DFFB8824DFFB8824DFFB8824DFFB8824DFFB8824DFFB8824DFFB882
          4DFFB8824DFFB8824DFFB8824DFFB8824DFFB8824DFFB37E4BF8573E25790000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000005C41267F000000000000000000000000000000004C36206A9C6E
          41D8B8824DFFB8824DFFB8824DFFB8824DFFB8824DFFB8824DFFB8824DFFB882
          4DFFB8824DFFB8824DFFB8824DFFB8824DFF9C6E41D84C36206A000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000002C1F
          123D6E4D2E98AC7A48EFB8824DFFB8824DFFB8824DFFB8824DFFB8824DFFB882
          4DFFB8824DFFB8824DFFAC7A48EF6E4D2E982C1F123D00000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          000000000000281D1138573D24787E5935AE9C6E41D8B17D4AF5B17D4AF59C6E
          41D87E5935AE573D2478281D1138000000000000000000000000000000000000
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
        TabOrder = 3
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -12
        Font.Name = 'Helveitica'
        Font.Style = [fsBold]
        ParentFont = False
        OnClick = btn_desfazerClick
      end
      object btn_cancelar: TcxButton
        Left = 1097
        Top = 123
        Width = 126
        Height = 36
        Caption = 'CANCELAR'#13'IMPORTA'#199#195'O'
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
          0000000000004463D8FF4463D8FF4463D8FF4463D8FF4463D8FF4463D8FF4463
          D8FF4463D8FF4463D8FF4463D8FF4463D8FF4463D8FF4463D8FF4463D8FF4463
          D8FF4463D8FF4463D8FF4463D8FF4463D8FF4463D8FF4463D8FF4463D8FF4463
          D8FF4463D8FF4463D8FF4463D8FF000000000000000000000000000000000000
          0000000000004463D8FF4463D8FF4463D8FF4463D8FF4463D8FF4463D8FF4463
          D8FF4463D8FF4463D8FF4463D8FF4463D8FF4463D8FF4463D8FF4463D8FF4463
          D8FF4463D8FF4463D8FF4463D8FF4463D8FF4463D8FF4463D8FF4463D8FF4463
          D8FF4463D8FF4463D8FF4463D8FF000000000000000000000000000000000000
          0000000000004463D8FF4463D8FF4463D8FF4463D8FF4463D8FF4463D8FF4463
          D8FF4463D8FF4463D8FF4463D8FF4463D8FF4463D8FF4463D8FF4463D8FF4463
          D8FF4463D8FF4463D8FF4463D8FF4463D8FF4463D8FF4463D8FF4463D8FF4463
          D8FF4463D8FF4463D8FF4463D8FF000000000000000000000000000000000000
          0000000000004463D8FF4463D8FF4463D8FF4463D8FF4463D8FF4463D8FF4463
          D8FF4463D8FF4463D8FF4463D8FF4463D8FF4463D8FF4463D8FF4463D8FF4463
          D8FF4463D8FF4463D8FF4463D8FF4463D8FF4463D8FF4463D8FF4463D8FF4463
          D8FF4463D8FF4463D8FF4463D8FF000000000000000000000000000000000000
          0000000000004463D8FF4463D8FF4463D8FF4463D8FF4463D8FF4463D8FF4463
          D8FF4463D8FF4463D8FF4463D8FF4463D8FF4463D8FF4463D8FF4463D8FF4463
          D8FF4463D8FF4463D8FF4463D8FF4463D8FF4463D8FF4463D8FF4463D8FF4463
          D8FF4463D8FF4463D8FF4463D8FF000000000000000000000000000000000000
          0000000000004463D8FF4463D8FF4463D8FF4463D8FF4463D8FF4463D8FF4463
          D8FF4463D8FF4362D6FD4463D8FF4463D8FF4463D8FF4463D8FF4463D8FF4463
          D8FF4463D8FF4463D8FF4362D6FD4463D8FF4463D8FF4463D8FF4463D8FF4463
          D8FF4463D8FF4463D8FF4463D8FF000000000000000000000000000000000000
          0000000000004463D8FF4463D8FF4463D8FF4463D8FF4463D8FF4463D8FF4463
          D8FF3F5CC9ED0F152F372F4596B14463D8FF4463D8FF4463D8FF4463D8FF4463
          D8FF4463D8FF2E4393AD0F152F373F5CC8EC4463D8FF4463D8FF4463D8FF4463
          D8FF4463D8FF4463D8FF4463D8FF000000000000000000000000000000000000
          0000000000004463D8FF4463D8FF4463D8FF4463D8FF4463D8FF4463D8FF3F5C
          C9ED0D132A3200000000020205062F4596B14463D8FF4463D8FF4463D8FF4463
          D8FF2E4393AD02020506000000000D132A313F5CC8EC4463D8FF4463D8FF4463
          D8FF4463D8FF4463D8FF4463D8FF000000000000000000000000000000000000
          0000000000004463D8FF4463D8FF4463D8FF4463D8FF4463D8FF4463D7FE0F16
          2F38000000000000000000000000020205062F4596B14463D8FF4463D8FF2E43
          93AD020205060000000000000000000000000F152F374463D7FE4463D8FF4463
          D8FF4463D8FF4463D8FF4463D8FF000000000000000000000000000000000000
          0000000000004463D8FF4463D8FF4463D8FF4463D8FF4463D8FF4463D8FF2F45
          97B202020506000000000000000000000000020205062F4495B02E4393AD0202
          05060000000000000000000000000202050631479AB64463D8FF4463D8FF4463
          D8FF4463D8FF4463D8FF4463D8FF000000000000000000000000000000000000
          0000000000004463D8FF4463D8FF4463D8FF4463D8FF4463D8FF4463D8FF4463
          D8FF2F4597B20202050600000000000000000000000002020506020205060000
          000000000000000000000202050631479AB64463D8FF4463D8FF4463D8FF4463
          D8FF4463D8FF4463D8FF4463D8FF000000000000000000000000000000000000
          0000000000004463D8FF4463D8FF4463D8FF4463D8FF4463D8FF4463D8FF4463
          D8FF4463D8FF2F4597B202020506000000000000000000000000000000000000
          0000000000000202050631479AB64463D8FF4463D8FF4463D8FF4463D8FF4463
          D8FF4463D8FF4463D8FF4463D8FF000000000000000000000000000000000000
          0000000000004463D8FF4463D8FF4463D8FF4463D8FF4463D8FF4463D8FF4463
          D8FF4463D8FF4463D8FF2F4597B2020205060000000000000000000000000000
          00000202050631479AB64463D8FF4463D8FF4463D8FF4463D8FF4463D8FF4463
          D8FF4463D8FF4463D8FF4463D8FF000000000000000000000000000000000000
          0000000000004463D8FF4463D8FF4463D8FF4463D8FF4463D8FF4463D8FF4463
          D8FF4463D8FF4463D8FF2E4393AD020205060000000000000000000000000000
          0000020205062F4495B04463D8FF4463D8FF4463D8FF4463D8FF4463D8FF4463
          D8FF4463D8FF4463D8FF4463D8FF000000000000000000000000000000000000
          0000000000004463D8FF4463D8FF4463D8FF4463D8FF4463D8FF4463D8FF4463
          D8FF4463D8FF2E4393AD02020506000000000000000000000000000000000000
          000000000000020205062F4495B04463D8FF4463D8FF4463D8FF4463D8FF4463
          D8FF4463D8FF4463D8FF4463D8FF000000000000000000000000000000000000
          0000000000004463D8FF4463D8FF4463D8FF4463D8FF4463D8FF4463D8FF4463
          D8FF2E4393AD0202050600000000000000000000000002020506020205060000
          00000000000000000000020205062F4495B04463D8FF4463D8FF4463D8FF4463
          D8FF4463D8FF4463D8FF4463D8FF000000000000000000000000000000000000
          0000000000004463D8FF4463D8FF4463D8FF4463D8FF4463D8FF4463D8FF2E43
          93AD020205060000000000000000000000000202050631479AB62F4597B20202
          0506000000000000000000000000020205062F4495B04463D8FF4463D8FF4463
          D8FF4463D8FF4463D8FF4463D8FF000000000000000000000000000000000000
          0000000000004463D8FF4463D8FF4463D8FF4463D8FF4463D8FF4362D6FD0F17
          313A0000000000000000000000000202050631479AB64463D8FF4463D8FF2F45
          97B2020205060000000000000000000000000F17313A4463D7FE4463D8FF4463
          D8FF4463D8FF4463D8FF4463D8FF000000000000000000000000000000000000
          0000000000004463D8FF4463D8FF4463D8FF4463D8FF4463D8FF4463D8FF405D
          CBF00E152D35000000000202050631479AB64463D8FF4463D8FF4463D8FF4463
          D8FF2F4597B202020506000000000E142C34405DCAEF4463D8FF4463D8FF4463
          D8FF4463D8FF4463D8FF4463D8FF000000000000000000000000000000000000
          0000000000004463D8FF4463D8FF4463D8FF4463D8FF4463D8FF4463D8FF4463
          D8FF405DCBF01017333C31479AB64463D8FF4463D8FF4463D8FF4463D8FF4463
          D8FF4463D8FF2F4597B20F17313A405DCAEF4463D8FF4463D8FF4463D8FF4463
          D8FF4463D8FF4463D8FF4463D8FF000000000000000000000000000000000000
          0000000000004463D8FF4463D8FF4463D8FF4463D8FF4463D8FF4463D8FF4463
          D8FF4463D8FF4463D8FF4463D8FF4463D8FF4463D8FF4463D8FF4463D8FF4463
          D8FF4463D8FF4463D8FF4362D6FD4463D8FF4463D8FF4463D8FF4463D8FF4463
          D8FF4463D8FF4463D8FF4463D8FF000000000000000000000000000000000000
          0000000000004463D8FF4463D8FF4463D8FF4463D8FF4463D8FF4463D8FF4463
          D8FF4463D8FF4463D8FF4463D8FF4463D8FF4463D8FF4463D8FF4463D8FF4463
          D8FF4463D8FF4463D8FF4463D8FF4463D8FF4463D8FF4463D8FF4463D8FF4463
          D8FF4463D8FF4463D8FF4463D8FF000000000000000000000000000000000000
          0000000000004463D8FF4463D8FF4463D8FF4463D8FF4463D8FF4463D8FF4463
          D8FF4463D8FF4463D8FF4463D8FF4463D8FF4463D8FF4463D8FF4463D8FF4463
          D8FF4463D8FF4463D8FF4463D8FF4463D8FF4463D8FF4463D8FF4463D8FF4463
          D8FF4463D8FF4463D8FF4463D8FF000000000000000000000000000000000000
          0000000000004463D8FF4463D8FF4463D8FF4463D8FF4463D8FF4463D8FF4463
          D8FF4463D8FF4463D8FF4463D8FF4463D8FF4463D8FF4463D8FF4463D8FF4463
          D8FF4463D8FF4463D8FF4463D8FF4463D8FF4463D8FF4463D8FF4463D8FF4463
          D8FF4463D8FF4463D8FF4463D8FF000000000000000000000000000000000000
          0000000000004463D8FF4463D8FF4463D8FF4463D8FF4463D8FF4463D8FF4463
          D8FF4463D8FF4463D8FF4463D8FF4463D8FF4463D8FF4463D8FF4463D8FF4463
          D8FF4463D8FF4463D8FF4463D8FF4463D8FF4463D8FF4463D8FF4463D8FF4463
          D8FF4463D8FF4463D8FF4463D8FF000000000000000000000000000000000000
          0000000000004463D8FF4463D8FF4463D8FF4463D8FF4463D8FF4463D8FF4463
          D8FF4463D8FF4463D8FF4463D8FF4463D8FF4463D8FF4463D8FF4463D8FF4463
          D8FF4463D8FF4463D8FF4463D8FF4463D8FF4463D8FF4463D8FF4463D8FF4463
          D8FF4463D8FF4463D8FF4463D8FF000000000000000000000000000000000000
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
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -12
        Font.Name = 'Helveitica'
        Font.Style = [fsBold]
        ParentFont = False
        OnClick = btn_cancelarClick
      end
      object btn_correcoes: TcxButton
        Left = 1097
        Top = 165
        Width = 126
        Height = 36
        Caption = 'MODIFICAR'#13'ITENS'
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
          00000000000000000000000000000000000000000000717171FF717171FF7171
          71FF717171FF717171FF717171FF717171FF717171FF717171FF717171FF7171
          71FF717171FF717171FF00000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          00000000000000000000000000000000000000000000717171FF717171FF7171
          71FF717171FF717171FF717171FF717171FF717171FF717171FF717171FF7171
          71FF717171FF717171FF00000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          00000000000000000000000000000000000000000000717171FF717171FF7171
          71FF717171FF717171FF717171FF717171FF717171FF717171FF717171FF7171
          71FF717171FF717171FF00000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000005471DDFF5471DDFF5471DDFF5471DDFF5471DDFF5471DDFF5471
          DDFF5471DDFF5471DDFF00000000000000000000000000000000000000000000
          0000000000000000000039393980393939803939398039393980393939803939
          3980393939803939398000000000000000000000000000000000000000000000
          0000000000005471DDFF5471DDFF5471DDFF5471DDFF5471DDFF5471DDFF5471
          DDFF5471DDFF5471DDFF00000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000005471DDFF5471DDFF5471DDFF5471DDFF5471DDFF5471DDFF5471
          DDFF5471DDFF5471DDFF00000000000000000000000000000000000000000000
          0000000000000000000039393980393939803939398039393980393939803939
          3980393939803939398000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          00000000000000000000000000000000000000000000717171FF717171FF7171
          71FF717171FF717171FF717171FF717171FF717171FF717171FF717171FF7171
          71FF717171FF717171FF00000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          00000000000000000000000000000000000000000000717171FF717171FF7171
          71FF717171FF717171FF717171FF717171FF717171FF717171FF717171FF7171
          71FF717171FF717171FF00000000000000000000000000000000000000000000
          000000000000000000000000000000000000B8824DFFB8824DFFB8824DFF0000
          00000000000000000000000000000000000000000000717171FF717171FF7171
          71FF717171FF717171FF717171FF717171FF717171FF717171FF717171FF7171
          71FF717171FF717171FF00000000000000000000000000000000000000000000
          000000000000000000000000000000000000B8824DFFB8824DFFB8824DFF0000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          000000000000000000000000000000000000B8824DFFB8824DFFB8824DFF0000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          000000000000B8824DFFB8824DFFB8824DFFB8824DFFB8824DFFB8824DFFB882
          4DFFB8824DFFB8824DFF00000000000000000000000000000000000000000000
          0000000000000000000039393980393939803939398039393980393939803939
          3980393939803939398000000000000000000000000000000000000000000000
          000000000000B8824DFFB8824DFFB8824DFFB8824DFFB8824DFFB8824DFFB882
          4DFFB8824DFFB8824DFF00000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          000000000000B8824DFFB8824DFFB8824DFFB8824DFFB8824DFFB8824DFFB882
          4DFFB8824DFFB8824DFF00000000000000000000000000000000000000000000
          0000000000000000000039393980393939803939398039393980393939803939
          3980393939803939398000000000000000000000000000000000000000000000
          000000000000000000000000000000000000B8824DFFB8824DFFB8824DFF0000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          000000000000000000000000000000000000B8824DFFB8824DFFB8824DFF0000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          000000000000000000000000000000000000B8824DFFB8824DFFB8824DFF0000
          00000000000000000000000000000000000000000000717171FF717171FF7171
          71FF717171FF717171FF717171FF717171FF717171FF717171FF717171FF7171
          71FF717171FF717171FF00000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          00000000000000000000000000000000000000000000717171FF717171FF7171
          71FF717171FF717171FF717171FF717171FF717171FF717171FF717171FF7171
          71FF717171FF717171FF00000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          00000000000000000000000000000000000000000000717171FF717171FF7171
          71FF717171FF717171FF717171FF717171FF717171FF717171FF717171FF7171
          71FF717171FF717171FF00000000000000000000000000000000000000000000
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
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -12
        Font.Name = 'Helveitica'
        Font.Style = [fsBold]
        ParentFont = False
        OnClick = btn_correcoesClick
      end
      object grp_importacao: TGroupBox
        Left = 624
        Top = 132
        Width = 467
        Height = 69
        Caption = '  Importa'#231#227'o '
        Color = clWhite
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'Tahoma'
        Font.Style = [fsBold]
        ParentBackground = False
        ParentColor = False
        ParentFont = False
        TabOrder = 7
        object Label10: TLabel
          Left = 39
          Top = 41
          Width = 64
          Height = 18
          Caption = 'Data Fim:'
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Height = -15
          Font.Name = 'Tahoma'
          Font.Style = []
          ParentFont = False
        end
        object Label11: TLabel
          Left = 29
          Top = 15
          Width = 74
          Height = 18
          Caption = 'Data Inicio:'
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Height = -15
          Font.Name = 'Tahoma'
          Font.Style = []
          ParentFont = False
        end
        object Label12: TLabel
          Left = 265
          Top = 15
          Width = 53
          Height = 18
          Caption = 'Usu'#225'rio:'
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Height = -15
          Font.Name = 'Tahoma'
          Font.Style = []
          ParentFont = False
        end
        object Label7: TLabel
          Left = 272
          Top = 41
          Width = 46
          Height = 18
          Caption = 'Status:'
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Height = -15
          Font.Name = 'Tahoma'
          Font.Style = []
          ParentFont = False
        end
        object edt_dt_import_inicio: TEdit
          Left = 105
          Top = 15
          Width = 150
          Height = 22
          Alignment = taCenter
          Ctl3D = True
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -12
          Font.Name = 'Tahoma'
          Font.Style = [fsBold]
          ParentCtl3D = False
          ParentFont = False
          ReadOnly = True
          TabOrder = 0
        end
        object edt_dt_import_fim: TEdit
          Left = 105
          Top = 41
          Width = 150
          Height = 22
          Alignment = taCenter
          Ctl3D = True
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -12
          Font.Name = 'Tahoma'
          Font.Style = [fsBold]
          ParentCtl3D = False
          ParentFont = False
          ReadOnly = True
          TabOrder = 2
        end
        object edt_import_user: TEdit
          Left = 321
          Top = 15
          Width = 140
          Height = 22
          Alignment = taCenter
          Ctl3D = True
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -12
          Font.Name = 'Tahoma'
          Font.Style = [fsBold]
          ParentCtl3D = False
          ParentFont = False
          ReadOnly = True
          TabOrder = 1
        end
        object edt_import_status: TEdit
          Left = 321
          Top = 41
          Width = 140
          Height = 22
          Alignment = taCenter
          Ctl3D = True
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWhite
          Font.Height = -12
          Font.Name = 'Tahoma'
          Font.Style = [fsBold]
          ParentCtl3D = False
          ParentFont = False
          ReadOnly = True
          TabOrder = 3
          OnChange = edt_import_statusChange
        end
      end
      object grid_prods: TcxGrid
        Left = 4
        Top = 207
        Width = 1220
        Height = 364
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = [fsBold]
        ParentFont = False
        TabOrder = 8
        LookAndFeel.Kind = lfFlat
        LookAndFeel.NativeStyle = False
        LookAndFeel.SkinName = 'Office2013White'
        object grid_prodsDBTableView1: TcxGridDBTableView
          Navigator.Buttons.CustomButtons = <>
          DataController.DataSource = DS_PRODUTOS
          DataController.DetailKeyFieldNames = 's'
          DataController.Summary.DefaultGroupSummaryItems = <>
          DataController.Summary.FooterSummaryItems = <>
          DataController.Summary.SummaryGroups = <>
          object grid_prodsDBTableView1ORIGEM: TcxGridDBColumn
            DataBinding.FieldName = 'ORIGEM'
            HeaderAlignmentHorz = taCenter
            HeaderGlyphAlignmentHorz = taCenter
            Width = 42
          end
          object grid_prodsDBTableView1CODIGO: TcxGridDBColumn
            Caption = 'C'#211'D.'
            DataBinding.FieldName = 'CODIGO'
            HeaderAlignmentHorz = taCenter
            HeaderGlyphAlignmentHorz = taCenter
            Width = 62
          end
          object grid_prodsDBTableView1COD_BARRAS: TcxGridDBColumn
            Caption = 'C'#211'D. BARRAS'
            DataBinding.FieldName = 'COD_BARRAS'
            HeaderAlignmentHorz = taCenter
            HeaderGlyphAlignmentHorz = taCenter
            Width = 112
          end
          object grid_prodsDBTableView1NOME: TcxGridDBColumn
            Caption = 'PRODUTO'
            DataBinding.FieldName = 'NOME'
            GroupIndex = 0
            HeaderAlignmentHorz = taCenter
            HeaderGlyphAlignmentHorz = taCenter
            Width = 215
          end
          object grid_prodsDBTableView1MARCA: TcxGridDBColumn
            DataBinding.FieldName = 'PROD_MARCA'
            HeaderAlignmentHorz = taCenter
            HeaderGlyphAlignmentHorz = taCenter
            Width = 100
          end
          object grid_prodsDBTableView1UM: TcxGridDBColumn
            Caption = 'UN'
            DataBinding.FieldName = 'UM'
            HeaderAlignmentHorz = taCenter
            HeaderGlyphAlignmentHorz = taCenter
            Width = 39
          end
          object grid_prodsDBTableView1QTDE: TcxGridDBColumn
            DataBinding.FieldName = 'QTDE'
            HeaderAlignmentHorz = taCenter
            HeaderGlyphAlignmentHorz = taCenter
            Width = 92
          end
          object grid_prodsDBTableView1PRECO_UNI: TcxGridDBColumn
            Caption = 'VALOR'
            DataBinding.FieldName = 'PRECO_UNI'
            HeaderAlignmentHorz = taCenter
            HeaderGlyphAlignmentHorz = taCenter
            Width = 88
          end
          object grid_prodsDBTableView1MARGEM_LUCRO: TcxGridDBColumn
            Caption = 'LUCRO %'
            DataBinding.FieldName = 'MARGEM_LUCRO'
            HeaderAlignmentHorz = taCenter
            HeaderGlyphAlignmentHorz = taCenter
            Width = 100
          end
          object grid_prodsDBTableView1PRECO_VENDA: TcxGridDBColumn
            Caption = 'PRE'#199'O VENDA'
            DataBinding.FieldName = 'PRECO_VENDA'
            HeaderAlignmentHorz = taCenter
            HeaderGlyphAlignmentHorz = taCenter
            Width = 100
          end
          object grid_prodsDBTableView1DESC_MAXIMO: TcxGridDBColumn
            Caption = 'DESC. M'#193'X. %'
            DataBinding.FieldName = 'DESC_MAXIMO'
            HeaderAlignmentHorz = taCenter
            HeaderGlyphAlignmentHorz = taCenter
            Width = 91
          end
          object grid_prodsDBTableView1COMISSAO: TcxGridDBColumn
            Caption = 'COMISS'#195'O'
            DataBinding.FieldName = 'COMISSAO'
            HeaderAlignmentHorz = taCenter
            HeaderGlyphAlignmentHorz = taCenter
            Width = 100
          end
          object grid_prodsDBTableView1TIPO: TcxGridDBColumn
            DataBinding.FieldName = 'TIPO'
            HeaderAlignmentHorz = taCenter
            HeaderGlyphAlignmentHorz = taCenter
            Width = 132
          end
          object grid_prodsDBTableView1CSOSN: TcxGridDBColumn
            DataBinding.FieldName = 'CSOSN'
            HeaderAlignmentHorz = taCenter
            HeaderGlyphAlignmentHorz = taCenter
            Width = 61
          end
          object grid_prodsDBTableView1CST_ICMS: TcxGridDBColumn
            DataBinding.FieldName = 'CST_ICMS'
            HeaderAlignmentHorz = taCenter
            HeaderGlyphAlignmentHorz = taCenter
            Width = 100
          end
          object grid_prodsDBTableView1CST_PIS: TcxGridDBColumn
            DataBinding.FieldName = 'CST_PIS'
            HeaderAlignmentHorz = taCenter
            HeaderGlyphAlignmentHorz = taCenter
            Width = 100
          end
          object grid_prodsDBTableView1CST_COFINS: TcxGridDBColumn
            DataBinding.FieldName = 'CST_COFINS'
            HeaderAlignmentHorz = taCenter
            HeaderGlyphAlignmentHorz = taCenter
            Width = 100
          end
          object grid_prodsDBTableView1NCM: TcxGridDBColumn
            DataBinding.FieldName = 'NCM'
            HeaderAlignmentHorz = taCenter
            HeaderGlyphAlignmentHorz = taCenter
            Width = 100
          end
          object grid_prodsDBTableView1CEST: TcxGridDBColumn
            DataBinding.FieldName = 'CEST'
            HeaderAlignmentHorz = taCenter
            HeaderGlyphAlignmentHorz = taCenter
            Width = 100
          end
          object grid_prodsDBTableView1CFOP_ENTRADA: TcxGridDBColumn
            DataBinding.FieldName = 'CFOP_ENTRADA'
            HeaderAlignmentHorz = taCenter
            HeaderGlyphAlignmentHorz = taCenter
            Width = 100
          end
          object grid_prodsDBTableView1CFOP_SAIDA: TcxGridDBColumn
            DataBinding.FieldName = 'CFOP_SAIDA'
            HeaderAlignmentHorz = taCenter
            HeaderGlyphAlignmentHorz = taCenter
            Width = 100
          end
        end
        object dbtvMain: TcxGridDBBandedTableView
          DragMode = dmAutomatic
          Navigator.Buttons.CustomButtons = <>
          OnCustomDrawCell = dbtvMainCustomDrawCell
          OnEditing = dbtvMainEditing
          OnEditKeyPress = dbtvMainEditKeyPress
          OnEditValueChanged = dbtvMainEditValueChanged
          OnTopRecordIndexChanged = dbtvMainTopRecordIndexChanged
          DataController.DataSource = DS_PRODUTOS
          DataController.MultiThreadedOptions.Filtering = bFalse
          DataController.MultiThreadedOptions.Sorting = bFalse
          DataController.Summary.DefaultGroupSummaryItems = <>
          DataController.Summary.FooterSummaryItems = <>
          DataController.Summary.SummaryGroups = <>
          Filtering.ColumnAddValueItems = False
          Filtering.ColumnMRUItemsList = False
          OptionsBehavior.DragDropText = True
          OptionsData.CancelOnExit = False
          OptionsData.Deleting = False
          OptionsData.DeletingConfirmation = False
          OptionsData.Inserting = False
          OptionsView.NoDataToDisplayInfoText = '. . .'
          OptionsView.GroupByBox = False
          OnCustomDrawGroupCell = dbtvMainCustomDrawGroupCell
          OnLeftPosChanged = dbtvMainLeftPosChanged
          Bands = <
            item
              Caption = 'PRODUTO'
              Options.Moving = False
              Options.Sizing = False
            end
            item
              Caption = 'PRE'#199'O'
              Options.Moving = False
              Options.Sizing = False
            end
            item
              Caption = 'ICMS'
              Options.Moving = False
              Options.Sizing = False
            end
            item
              Caption = 'PIS'
              Options.Moving = False
              Options.Sizing = False
              Width = 50
            end
            item
              Caption = 'COFINS'
              Options.Moving = False
              Options.Sizing = False
              Width = 50
            end
            item
              Caption = 'TRIBUTA'#199#195'O '
              Options.Moving = False
              Options.Sizing = False
            end>
          object dbtvMainCODIGO: TcxGridDBBandedColumn
            Caption = 'C'#243'd'
            DataBinding.FieldName = 'CODIGO'
            PropertiesClassName = 'TcxButtonEditProperties'
            Properties.Alignment.Horz = taLeftJustify
            Properties.Buttons = <
              item
                Default = True
                Kind = bkEllipsis
              end>
            Properties.ClickKey = 0
            Properties.OnButtonClick = dbtvMainCODIGOPropertiesButtonClick
            OnGetProperties = editButtonsProperties
            FooterAlignmentHorz = taCenter
            GroupSummaryAlignment = taCenter
            HeaderAlignmentHorz = taCenter
            HeaderGlyphAlignmentHorz = taCenter
            MinWidth = 120
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
            Options.Moving = False
            Options.Sorting = False
            Options.VertSizing = False
            Width = 120
            Position.BandIndex = 0
            Position.ColIndex = 0
            Position.RowIndex = 0
          end
          object dbtvMainDESCRICAO: TcxGridDBBandedColumn
            Caption = 'Descri'#231#227'o'
            DataBinding.FieldName = 'DESCRICAO'
            PropertiesClassName = 'TcxTextEditProperties'
            Properties.Alignment.Horz = taLeftJustify
            Properties.CharCase = ecUpperCase
            MinWidth = 350
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
            Options.Sorting = False
            Options.VertSizing = False
            Width = 350
            Position.BandIndex = 0
            Position.ColIndex = 1
            Position.RowIndex = 0
          end
          object dbtvMainCOD_BARRAS: TcxGridDBBandedColumn
            Caption = 'C'#243'd. Barras'
            DataBinding.FieldName = 'COD_BARRAS'
            PropertiesClassName = 'TcxTextEditProperties'
            Properties.Alignment.Horz = taCenter
            Properties.CharCase = ecUpperCase
            FooterAlignmentHorz = taCenter
            GroupSummaryAlignment = taCenter
            HeaderAlignmentHorz = taCenter
            HeaderGlyphAlignmentHorz = taCenter
            MinWidth = 150
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
            Options.Sorting = False
            Options.VertSizing = False
            Width = 150
            Position.BandIndex = 0
            Position.ColIndex = 2
            Position.RowIndex = 0
          end
          object dbtvMainMARCA: TcxGridDBBandedColumn
            Caption = 'Marca'
            DataBinding.FieldName = 'PROD_MARCA'
            PropertiesClassName = 'TcxButtonEditProperties'
            Properties.Alignment.Horz = taCenter
            Properties.Buttons = <
              item
                Default = True
                Kind = bkEllipsis
              end>
            Properties.CharCase = ecUpperCase
            Properties.OnButtonClick = dbtvMainMARCAPropertiesButtonClick
            OnGetProperties = editButtonsProperties
            FooterAlignmentHorz = taCenter
            GroupSummaryAlignment = taCenter
            HeaderAlignmentHorz = taCenter
            HeaderGlyphAlignmentHorz = taCenter
            MinWidth = 120
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
            Options.Sorting = False
            Options.VertSizing = False
            Width = 120
            Position.BandIndex = 0
            Position.ColIndex = 3
            Position.RowIndex = 0
          end
          object dbtvMainUM: TcxGridDBBandedColumn
            Caption = 'UND'
            DataBinding.FieldName = 'UM'
            PropertiesClassName = 'TcxComboBoxProperties'
            Properties.CharCase = ecUpperCase
            Properties.DropDownListStyle = lsEditFixedList
            Properties.OnNewLookupDisplayText = dbtvMainUMPropertiesNewLookupDisplayText
            OnGetProperties = dbtvMainUMGetProperties
            FooterAlignmentHorz = taCenter
            GroupSummaryAlignment = taCenter
            HeaderAlignmentHorz = taCenter
            HeaderGlyphAlignmentHorz = taCenter
            MinWidth = 45
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
            Options.Sorting = False
            Options.VertSizing = False
            Width = 45
            Position.BandIndex = 0
            Position.ColIndex = 5
            Position.RowIndex = 0
          end
          object dbtvMainQTDE: TcxGridDBBandedColumn
            Caption = 'QTD'
            DataBinding.FieldName = 'QTDE'
            PropertiesClassName = 'TcxCurrencyEditProperties'
            Properties.Alignment.Horz = taCenter
            Properties.DisplayFormat = ' ,0.000;- ,0.000'
            Properties.ReadOnly = False
            Properties.OnEditValueChanged = dbtvMainQTDEPropertiesEditValueChanged
            FooterAlignmentHorz = taCenter
            GroupSummaryAlignment = taCenter
            HeaderAlignmentHorz = taCenter
            HeaderGlyphAlignmentHorz = taCenter
            MinWidth = 60
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
            Options.Moving = False
            Options.Sorting = False
            Options.VertSizing = False
            Width = 60
            Position.BandIndex = 1
            Position.ColIndex = 1
            Position.RowIndex = 0
          end
          object dbtvMainPRECO_UNI: TcxGridDBBandedColumn
            Caption = 'P. Unit'#225'rio'
            DataBinding.FieldName = 'PRECO_UNI'
            PropertiesClassName = 'TcxCurrencyEditProperties'
            Properties.Alignment.Horz = taCenter
            FooterAlignmentHorz = taCenter
            GroupSummaryAlignment = taCenter
            HeaderAlignmentHorz = taCenter
            HeaderGlyphAlignmentHorz = taCenter
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
            Options.Moving = False
            Options.Sorting = False
            Options.VertSizing = False
            Width = 85
            Position.BandIndex = 1
            Position.ColIndex = 2
            Position.RowIndex = 0
          end
          object dbtvMainDESCONTO: TcxGridDBBandedColumn
            Caption = 'Descontos'
            DataBinding.FieldName = 'DESCONTO'
            PropertiesClassName = 'TcxCurrencyEditProperties'
            Properties.Alignment.Horz = taCenter
            Properties.ReadOnly = True
            FooterAlignmentHorz = taCenter
            GroupSummaryAlignment = taCenter
            HeaderAlignmentHorz = taCenter
            HeaderGlyphAlignmentHorz = taCenter
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
            Options.Moving = False
            Options.Sorting = False
            Options.VertSizing = False
            Width = 85
            Position.BandIndex = 1
            Position.ColIndex = 3
            Position.RowIndex = 0
          end
          object dbtvMainACRESCIMOS: TcxGridDBBandedColumn
            Caption = 'Acr'#233'scimos'
            DataBinding.FieldName = 'ACRESCIMOS'
            PropertiesClassName = 'TcxCurrencyEditProperties'
            Properties.Alignment.Horz = taCenter
            Properties.ReadOnly = True
            FooterAlignmentHorz = taCenter
            GroupSummaryAlignment = taCenter
            HeaderAlignmentHorz = taCenter
            HeaderGlyphAlignmentHorz = taCenter
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
            Options.Moving = False
            Options.Sorting = False
            Options.VertSizing = False
            Width = 85
            Position.BandIndex = 1
            Position.ColIndex = 4
            Position.RowIndex = 0
          end
          object dbtvMainPRECO_TOTAL: TcxGridDBBandedColumn
            Caption = 'P. Total'
            DataBinding.FieldName = 'VALOR_TOTAL'
            PropertiesClassName = 'TcxCurrencyEditProperties'
            Properties.Alignment.Horz = taCenter
            Properties.ReadOnly = True
            FooterAlignmentHorz = taCenter
            GroupSummaryAlignment = taCenter
            HeaderAlignmentHorz = taCenter
            HeaderGlyphAlignmentHorz = taCenter
            MinWidth = 95
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
            Options.Sorting = False
            Options.VertSizing = False
            Width = 95
            Position.BandIndex = 1
            Position.ColIndex = 5
            Position.RowIndex = 0
          end
          object dbtvMainNCM: TcxGridDBBandedColumn
            DataBinding.FieldName = 'NCM'
            PropertiesClassName = 'TcxButtonEditProperties'
            Properties.Alignment.Horz = taLeftJustify
            Properties.Buttons = <
              item
                Default = True
                Kind = bkEllipsis
              end>
            Properties.OnButtonClick = dbtvMainNCMPropertiesButtonClick
            OnGetProperties = editButtonsProperties
            FooterAlignmentHorz = taCenter
            GroupSummaryAlignment = taCenter
            HeaderAlignmentHorz = taCenter
            HeaderGlyphAlignmentHorz = taCenter
            MinWidth = 90
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
            Options.Sorting = False
            Options.VertSizing = False
            Width = 90
            Position.BandIndex = 5
            Position.ColIndex = 3
            Position.RowIndex = 0
          end
          object dbtvMainCEST: TcxGridDBBandedColumn
            DataBinding.FieldName = 'CEST'
            PropertiesClassName = 'TcxTextEditProperties'
            Properties.Alignment.Horz = taCenter
            Properties.CharCase = ecUpperCase
            FooterAlignmentHorz = taCenter
            GroupSummaryAlignment = taCenter
            HeaderAlignmentHorz = taCenter
            HeaderGlyphAlignmentHorz = taCenter
            MinWidth = 80
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
            Options.Sorting = False
            Options.VertSizing = False
            Width = 80
            Position.BandIndex = 5
            Position.ColIndex = 4
            Position.RowIndex = 0
          end
          object dbtvMainCFOP: TcxGridDBBandedColumn
            DataBinding.FieldName = 'CFOP'
            PropertiesClassName = 'TcxButtonEditProperties'
            Properties.Alignment.Horz = taLeftJustify
            Properties.Buttons = <
              item
                Default = True
                Kind = bkEllipsis
              end>
            Properties.OnButtonClick = dbtvMainCFOPPropertiesButtonClick
            OnGetProperties = editButtonsProperties
            FooterAlignmentHorz = taCenter
            GroupSummaryAlignment = taCenter
            HeaderAlignmentHorz = taCenter
            HeaderGlyphAlignmentHorz = taCenter
            MinWidth = 55
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
            Options.Sorting = False
            Options.VertSizing = False
            Width = 55
            Position.BandIndex = 5
            Position.ColIndex = 1
            Position.RowIndex = 0
          end
          object dbtvMainCSOSN: TcxGridDBBandedColumn
            DataBinding.FieldName = 'CSOSN'
            PropertiesClassName = 'TcxButtonEditProperties'
            Properties.Buttons = <
              item
                Default = True
                Kind = bkEllipsis
              end>
            Properties.OnButtonClick = dbtvMainCSOSNPropertiesButtonClick
            OnGetProperties = editButtonsProperties
            FooterAlignmentHorz = taCenter
            GroupSummaryAlignment = taCenter
            HeaderAlignmentHorz = taCenter
            HeaderGlyphAlignmentHorz = taCenter
            MinWidth = 48
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
            Options.Sorting = False
            Options.VertSizing = False
            Width = 48
            Position.BandIndex = 5
            Position.ColIndex = 2
            Position.RowIndex = 0
          end
          object dbtvMainORIGEM: TcxGridDBBandedColumn
            Caption = 'Origem'
            DataBinding.FieldName = 'ORIGEM'
            PropertiesClassName = 'TcxTextEditProperties'
            Properties.Alignment.Horz = taCenter
            Visible = False
            FooterAlignmentHorz = taCenter
            GroupSummaryAlignment = taCenter
            HeaderAlignmentHorz = taCenter
            HeaderGlyphAlignmentHorz = taCenter
            MinWidth = 52
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
            Options.Sorting = False
            Options.VertSizing = False
            VisibleForEditForm = bTrue
            Width = 52
            Position.BandIndex = 5
            Position.ColIndex = 0
            Position.RowIndex = 0
          end
          object dbtvMainMARGEM_LUCRO: TcxGridDBBandedColumn
            Caption = 'Lucro'
            DataBinding.FieldName = 'MARGEM_LUCRO'
            PropertiesClassName = 'TcxCurrencyEditProperties'
            Properties.Alignment.Horz = taCenter
            Properties.DisplayFormat = ',0.00 %;- ,0.00 %'
            Properties.Nullable = False
            Properties.OnEditValueChanged = dbtvMainMARGEM_LUCROPropertiesEditValueChanged
            FooterAlignmentHorz = taCenter
            GroupSummaryAlignment = taCenter
            HeaderAlignmentHorz = taCenter
            HeaderGlyphAlignmentHorz = taCenter
            MinWidth = 70
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
            Options.Sorting = False
            Options.VertSizing = False
            Width = 70
            Position.BandIndex = 1
            Position.ColIndex = 7
            Position.RowIndex = 0
          end
          object dbtvMainDESPESAS_OPERACIONAIS: TcxGridDBBandedColumn
            Caption = 'Desp. Op.'
            DataBinding.FieldName = 'DESPESAS_OPERACIONAIS'
            PropertiesClassName = 'TcxCurrencyEditProperties'
            Properties.Alignment.Horz = taCenter
            Properties.DisplayFormat = ',0.00 %;- ,0.00 %'
            Properties.OnEditValueChanged = dbtvMainDESPESAS_OPERACIONAISPropertiesEditValueChanged
            FooterAlignmentHorz = taCenter
            GroupSummaryAlignment = taCenter
            HeaderAlignmentHorz = taCenter
            HeaderGlyphAlignmentHorz = taCenter
            MinWidth = 70
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
            Options.Sorting = False
            Options.VertSizing = False
            Width = 70
            Position.BandIndex = 1
            Position.ColIndex = 8
            Position.RowIndex = 0
          end
          object dbtvMainPRECO_VENDA: TcxGridDBBandedColumn
            Caption = 'P. Venda'
            DataBinding.FieldName = 'PRECO_VENDA'
            PropertiesClassName = 'TcxCurrencyEditProperties'
            Properties.Alignment.Horz = taCenter
            Properties.OnEditValueChanged = dbtvMainPRECO_VENDAPropertiesEditValueChanged
            FooterAlignmentHorz = taCenter
            GroupSummaryAlignment = taCenter
            HeaderAlignmentHorz = taCenter
            HeaderGlyphAlignmentHorz = taCenter
            MinWidth = 85
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
            Options.Sorting = False
            Options.VertSizing = False
            Width = 85
            Position.BandIndex = 1
            Position.ColIndex = 9
            Position.RowIndex = 0
          end
          object dbtvMainDESC_MAXIMO: TcxGridDBBandedColumn
            Caption = 'Desc. M'#225'x.'
            DataBinding.FieldName = 'DESC_MAXIMO'
            PropertiesClassName = 'TcxCurrencyEditProperties'
            Properties.Alignment.Horz = taCenter
            Properties.DisplayFormat = ',0.00 %;- ,0.00 %'
            FooterAlignmentHorz = taCenter
            GroupSummaryAlignment = taCenter
            HeaderAlignmentHorz = taCenter
            HeaderGlyphAlignmentHorz = taCenter
            MinWidth = 70
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
            Options.Sorting = False
            Options.VertSizing = False
            Width = 70
            Position.BandIndex = 1
            Position.ColIndex = 10
            Position.RowIndex = 0
          end
          object dbtvMainCOMISSAO: TcxGridDBBandedColumn
            Caption = 'Comiss'#227'o'
            DataBinding.FieldName = 'COMISSAO'
            PropertiesClassName = 'TcxCurrencyEditProperties'
            Properties.Alignment.Horz = taCenter
            Properties.DisplayFormat = ',0.00 %;- ,0.00 %'
            FooterAlignmentHorz = taCenter
            GroupSummaryAlignment = taCenter
            HeaderAlignmentHorz = taCenter
            HeaderGlyphAlignmentHorz = taCenter
            MinWidth = 70
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
            Options.Sorting = False
            Options.VertSizing = False
            Width = 70
            Position.BandIndex = 1
            Position.ColIndex = 11
            Position.RowIndex = 0
          end
          object dbtvMainTIPO: TcxGridDBBandedColumn
            Caption = 'Tipo'
            DataBinding.FieldName = 'TIPO'
            PropertiesClassName = 'TcxComboBoxProperties'
            Properties.CharCase = ecUpperCase
            Properties.DropDownListStyle = lsEditFixedList
            Properties.MaxLength = 20
            Properties.OnEditValueChanged = dbtvMainTIPOPropertiesEditValueChanged
            OnGetProperties = dbtvMainTIPOGetProperties
            FooterAlignmentHorz = taCenter
            GroupSummaryAlignment = taCenter
            HeaderAlignmentHorz = taCenter
            HeaderGlyphAlignmentHorz = taCenter
            MinWidth = 55
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
            Options.Sorting = False
            Options.VertSizing = False
            Width = 55
            Position.BandIndex = 0
            Position.ColIndex = 4
            Position.RowIndex = 0
          end
          object dbtvMainDESTINO: TcxGridDBBandedColumn
            DataBinding.FieldName = 'DESTINO'
            Visible = False
            VisibleForEditForm = bTrue
            Position.BandIndex = 1
            Position.ColIndex = 12
            Position.RowIndex = 0
          end
          object dbtvMainITEM: TcxGridDBBandedColumn
            Caption = 'Item'
            DataBinding.FieldName = 'ITEM'
            Visible = False
            GroupIndex = 0
            Position.BandIndex = 1
            Position.ColIndex = 6
            Position.RowIndex = 0
          end
          object dbtvMainBASE_IPI: TcxGridDBBandedColumn
            Caption = 'Base IPI'
            DataBinding.FieldName = 'BASE_IPI'
            PropertiesClassName = 'TcxCurrencyEditProperties'
            Properties.Alignment.Horz = taCenter
            FooterAlignmentHorz = taCenter
            GroupSummaryAlignment = taCenter
            HeaderAlignmentHorz = taCenter
            HeaderGlyphAlignmentHorz = taCenter
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
            Options.Moving = False
            Width = 85
            Position.BandIndex = -1
            Position.ColIndex = -1
            Position.RowIndex = -1
          end
          object dbtvMainALIP_IPI: TcxGridDBBandedColumn
            Caption = '%'
            DataBinding.FieldName = 'PROD_NFe_O13_pIPI'
            PropertiesClassName = 'TcxCurrencyEditProperties'
            Properties.Alignment.Horz = taCenter
            Properties.DisplayFormat = ',0.00 %;- ,0.00 % '
            FooterAlignmentHorz = taCenter
            GroupSummaryAlignment = taCenter
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
            Options.Focusing = False
            Options.IgnoreTimeForFiltering = False
            Options.IncSearch = False
            Options.GroupFooters = False
            Options.Grouping = False
            Options.HorzSizing = False
            Options.Moving = False
            Width = 50
            Position.BandIndex = -1
            Position.ColIndex = -1
            Position.RowIndex = -1
          end
          object dbtvMainTOTAL_IPI: TcxGridDBBandedColumn
            Caption = 'Total IPI'
            DataBinding.FieldName = 'TOTAL_IPI'
            PropertiesClassName = 'TcxCurrencyEditProperties'
            Properties.Alignment.Horz = taCenter
            FooterAlignmentHorz = taCenter
            GroupSummaryAlignment = taCenter
            HeaderAlignmentHorz = taCenter
            HeaderGlyphAlignmentHorz = taCenter
            MinWidth = 87
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
            Width = 87
            Position.BandIndex = -1
            Position.ColIndex = -1
            Position.RowIndex = -1
          end
          object dbtvMainedt: TcxGridDBBandedColumn
            DataBinding.FieldName = 'EDITADO'
            Visible = False
            VisibleForCustomization = False
            Position.BandIndex = 1
            Position.ColIndex = 0
            Position.RowIndex = 0
          end
          object dbtvMainBASE_ICMS: TcxGridDBBandedColumn
            DataBinding.FieldName = 'BASE_ICMS'
            Visible = False
            VisibleForEditForm = bTrue
            Position.BandIndex = -1
            Position.ColIndex = -1
            Position.RowIndex = -1
          end
          object dbtvMainTOTAL_ICMS: TcxGridDBBandedColumn
            DataBinding.FieldName = 'TOTAL_ICMS'
            Visible = False
            VisibleForEditForm = bTrue
            Position.BandIndex = -1
            Position.ColIndex = -1
            Position.RowIndex = -1
          end
          object dbtvMainBASE_PIS: TcxGridDBBandedColumn
            DataBinding.FieldName = 'BASE_PIS'
            Visible = False
            VisibleForEditForm = bTrue
            Position.BandIndex = -1
            Position.ColIndex = -1
            Position.RowIndex = -1
          end
          object dbtvMainALIQ_PIS: TcxGridDBBandedColumn
            DataBinding.FieldName = 'ALIQ_PIS'
            Visible = False
            VisibleForEditForm = bTrue
            Position.BandIndex = -1
            Position.ColIndex = -1
            Position.RowIndex = -1
          end
          object dbtvMainTOTAL_PIS: TcxGridDBBandedColumn
            DataBinding.FieldName = 'TOTAL_PIS'
            Visible = False
            VisibleForEditForm = bTrue
            Position.BandIndex = -1
            Position.ColIndex = -1
            Position.RowIndex = -1
          end
          object dbtvMainBASE_COFINS: TcxGridDBBandedColumn
            DataBinding.FieldName = 'BASE_COFINS'
            Visible = False
            VisibleForEditForm = bTrue
            Position.BandIndex = -1
            Position.ColIndex = -1
            Position.RowIndex = -1
          end
          object dbtvMainALIQ_COFINS: TcxGridDBBandedColumn
            DataBinding.FieldName = 'ALIQ_COFINS'
            Visible = False
            VisibleForEditForm = bTrue
            Position.BandIndex = -1
            Position.ColIndex = -1
            Position.RowIndex = -1
          end
          object dbtvMainTOTAL_COFINS: TcxGridDBBandedColumn
            DataBinding.FieldName = 'TOTAL_COFINS'
            Visible = False
            VisibleForEditForm = bTrue
            Position.BandIndex = -1
            Position.ColIndex = -1
            Position.RowIndex = -1
          end
          object dbtvMainCST_IPI: TcxGridDBBandedColumn
            DataBinding.FieldName = 'CST_IPI'
            Visible = False
            VisibleForEditForm = bTrue
            Position.BandIndex = -1
            Position.ColIndex = -1
            Position.RowIndex = -1
          end
          object dbtvMainPROD_NFe_O02_clEnq: TcxGridDBBandedColumn
            DataBinding.FieldName = 'PROD_NFe_O02_clEnq'
            Visible = False
            VisibleForEditForm = bTrue
            Position.BandIndex = -1
            Position.ColIndex = -1
            Position.RowIndex = -1
          end
          object dbtvMainCST_ICMS: TcxGridDBBandedColumn
            Caption = 'CST'
            DataBinding.FieldName = 'CST_ICMS'
            PropertiesClassName = 'TcxButtonEditProperties'
            Properties.Buttons = <
              item
                Default = True
                Kind = bkEllipsis
              end>
            Properties.OnButtonClick = dbtvMainCST_ICMSPropertiesButtonClick
            OnGetProperties = editButtonsProperties
            HeaderAlignmentHorz = taCenter
            HeaderGlyphAlignmentHorz = taCenter
            MinWidth = 50
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
            VisibleForEditForm = bTrue
            Width = 50
            Position.BandIndex = 2
            Position.ColIndex = 0
            Position.RowIndex = 0
          end
          object dbtvMainPROD_NFe_N16_pICMS: TcxGridDBBandedColumn
            Caption = '%'
            DataBinding.FieldName = 'PROD_NFe_N16_pICMS'
            PropertiesClassName = 'TcxCurrencyEditProperties'
            Properties.DisplayFormat = ',0.00 %;- ,0.00 %'
            HeaderAlignmentHorz = taCenter
            HeaderGlyphAlignmentHorz = taCenter
            MinWidth = 50
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
            VisibleForEditForm = bTrue
            Width = 50
            Position.BandIndex = 2
            Position.ColIndex = 1
            Position.RowIndex = 0
          end
          object dbtvMainCST_PIS: TcxGridDBBandedColumn
            Caption = 'CST'
            DataBinding.FieldName = 'CST_PIS'
            PropertiesClassName = 'TcxButtonEditProperties'
            Properties.Buttons = <
              item
                Default = True
                Kind = bkEllipsis
              end>
            Properties.OnButtonClick = dbtvMainCST_PISPropertiesButtonClick
            OnGetProperties = editButtonsProperties
            FooterAlignmentHorz = taCenter
            GroupSummaryAlignment = taCenter
            HeaderAlignmentHorz = taCenter
            HeaderGlyphAlignmentHorz = taCenter
            MinWidth = 50
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
            VisibleForEditForm = bTrue
            Width = 50
            Position.BandIndex = 3
            Position.ColIndex = 0
            Position.RowIndex = 0
          end
          object dbtvMainCST_COFINS: TcxGridDBBandedColumn
            Caption = 'CST'
            DataBinding.FieldName = 'CST_COFINS'
            PropertiesClassName = 'TcxButtonEditProperties'
            Properties.Buttons = <
              item
                Default = True
                Kind = bkEllipsis
              end>
            Properties.OnButtonClick = dbtvMainCST_COFINSPropertiesButtonClick
            OnGetProperties = editButtonsProperties
            FooterAlignmentHorz = taCenter
            GroupSummaryAlignment = taCenter
            HeaderAlignmentHorz = taCenter
            HeaderGlyphAlignmentHorz = taCenter
            MinWidth = 50
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
            VisibleForEditForm = bTrue
            Width = 50
            Position.BandIndex = 4
            Position.ColIndex = 0
            Position.RowIndex = 0
          end
          object dbtvMainID: TcxGridDBBandedColumn
            DataBinding.FieldName = 'ID'
            Visible = False
            VisibleForCustomization = False
            VisibleForEditForm = bFalse
            Position.BandIndex = 0
            Position.ColIndex = 6
            Position.RowIndex = 0
          end
        end
        object grid_prodsLevel1: TcxGridLevel
          GridView = dbtvMain
        end
      end
      object btn_danfe: TcxButton
        Left = 514
        Top = 9
        Width = 97
        Height = 25
        Caption = 'DANFe'
        LookAndFeel.NativeStyle = False
        LookAndFeel.SkinName = 'Metropolis'
        OptionsImage.Glyph.Data = {
          36040000424D3604000000000000360000002800000010000000100000000100
          2000000000000004000000000000000000000000000000000000000000000000
          00000000000000000000848484FF848484FF848484FF848484FF848484FF8484
          84FF848484FF848484FF848484FF848484FF848484FF848484FF000000000000
          00000000000000000000848484FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF848484FF000000000000
          00000000000000000000FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF848484FF97A776FF97A7
          76FF97A776FF97A776FF97A776FF97A776FF97A776FF97A776FF97A776FF97A7
          76FF97A776FF97A776FF97A776FFFFFFFFFFFFFFFFFF848484FF97A776FFFFFF
          FFFF97A776FFFFFFFFFF97A776FFFFFFFFFF97A776FFFFFFFFFF97A776FFFFFF
          FFFFFFFFFFFFFFFFFFFF97A776FFFFFFFFFFFFFFFFFF848484FF97A776FFFFFF
          FFFFCBD3BAFFFFFFFFFF97A776FFFFFFFFFF97A776FFFFFFFFFF97A776FFFFFF
          FFFF97A776FF97A776FF97A776FFFFFFFFFFFFFFFFFF848484FF97A776FFCBD3
          BAFFFFFFFFFFCBD3BAFF97A776FFFFFFFFFF97A776FFFFFFFFFF97A776FFFFFF
          FFFF97A776FF97A776FF97A776FFFFFFFFFFFFFFFFFF848484FF97A776FFFFFF
          FFFFCBD3BAFFFFFFFFFF97A776FFFFFFFFFFFFFFFFFFFFFFFFFF97A776FFFFFF
          FFFF97A776FF97A776FF97A776FFFFFFFFFFFFFFFFFF848484FF97A776FFFFFF
          FFFF97A776FFFFFFFFFF97A776FFFFFFFFFF97A776FFFFFFFFFF97A776FFFFFF
          FFFF97A776FF97A776FF97A776FFFFFFFFFFFFFFFFFF848484FF97A776FF97A7
          76FF97A776FF97A776FF97A776FF97A776FF97A776FF97A776FF97A776FF97A7
          76FF97A776FF97A776FF97A776FFFFFFFFFFFFFFFFFF848484FF000000000000
          00000000000000000000FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF848484FF000000000000
          00000000000000000000848484FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF848484FF000000000000
          00000000000000000000848484FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF848484FF000000000000
          00000000000000000000848484FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF848484FF000000000000
          00000000000000000000848484FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF848484FF000000000000
          00000000000000000000848484FF848484FF848484FF848484FF848484FF8484
          84FF848484FF848484FF848484FF848484FF848484FF848484FF}
        TabOrder = 11
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Helveitica'
        Font.Style = [fsBold]
        ParentFont = False
        OnClick = btn_danfeClick
      end
    end
  end
  object sty_hint: TcxHintStyleController
    HintStyleClassName = 'TcxHintStyle'
    HintStyle.Animate = cxhaSlideDownward
    HintStyle.AnimationDelay = 0
    HintStyle.CallOutPosition = cxbpAuto
    HintStyle.CaptionFont.Charset = DEFAULT_CHARSET
    HintStyle.CaptionFont.Color = clWindowText
    HintStyle.CaptionFont.Height = -15
    HintStyle.CaptionFont.Name = 'Tahoma'
    HintStyle.CaptionFont.Style = []
    HintStyle.Color = clSilver
    HintStyle.Font.Charset = DEFAULT_CHARSET
    HintStyle.Font.Color = clWindowText
    HintStyle.Font.Height = -13
    HintStyle.Font.Name = 'Tahoma'
    HintStyle.Font.Style = []
    HintStyle.Rounded = True
    HintPause = 50
    HintHidePause = 5000
    LookAndFeel.NativeStyle = False
    LookAndFeel.SkinName = 'Metropolis'
    Left = 48
    Top = 16
  end
  object SQL_PRODUTOS: TFDQuery
    Connection = Module.connection
    FormatOptions.AssignedValues = [fvSortOptions]
    FormatOptions.SortOptions = [soPrimary]
    Left = 296
    Top = 344
  end
  object DS_PRODUTOS: TDataSource
    DataSet = SQL_PRODUTOS
    Left = 16
    Top = 48
  end
  object SQL_CONSULTA_IMPORTACAO: TFDQuery
    Connection = Module.connection
    SQL.Strings = (
      
        'SELECT I.ID, I.DATA_INICIO, U.USUARIO, F.RAZAO_SOCIAL,F.CNPJ_CPF' +
        ', N.NUMERO, N.CHAVE, N.TOTAL_NFE, I.STATUS_IMPORTACAO FROM IMPOR' +
        'TACAO I'
      'JOIN NFE N ON N.ID = I.ID_NFE'
      'JOIN USUARIO U ON U.CODIGO = I.ID_USUARIO'
      'JOIN FORNECEDOR F ON F.CODIGO = N.ID_EMITENTE'
      'WHERE STATUS_IMPORTACAO <> "ABERTA"'
      'ORDER BY I.DATA_INICIO DESC')
    Left = 296
    Top = 400
    object SQL_CONSULTA_IMPORTACAOID: TFDAutoIncField
      FieldName = 'ID'
      Origin = 'ID'
      ProviderFlags = [pfInWhere, pfInKey]
      ReadOnly = True
    end
    object SQL_CONSULTA_IMPORTACAODATA_INICIO: TDateTimeField
      AutoGenerateValue = arDefault
      FieldName = 'DATA_INICIO'
      Origin = 'DATA_INICIO'
    end
    object SQL_CONSULTA_IMPORTACAOUSUARIO: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'USUARIO'
      Origin = 'USUARIO'
      ProviderFlags = []
      ReadOnly = True
      Size = 50
    end
    object SQL_CONSULTA_IMPORTACAORAZAO_SOCIAL: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'RAZAO_SOCIAL'
      Origin = 'RAZAO_SOCIAL'
      ProviderFlags = []
      ReadOnly = True
      Size = 200
    end
    object SQL_CONSULTA_IMPORTACAONUMERO: TIntegerField
      AutoGenerateValue = arDefault
      FieldName = 'NUMERO'
      Origin = 'NUMERO'
      ProviderFlags = []
      ReadOnly = True
    end
    object SQL_CONSULTA_IMPORTACAOCHAVE: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'CHAVE'
      Origin = 'CHAVE'
      ProviderFlags = []
      ReadOnly = True
      Size = 44
    end
    object SQL_CONSULTA_IMPORTACAOTOTAL_NFE: TBCDField
      AutoGenerateValue = arDefault
      FieldName = 'TOTAL_NFE'
      Origin = 'TOTAL_NFE'
      ProviderFlags = []
      ReadOnly = True
      Precision = 10
    end
    object SQL_CONSULTA_IMPORTACAOSTATUS_IMPORTACAO: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'STATUS_IMPORTACAO'
      Origin = 'STATUS_IMPORTACAO'
      FixedChar = True
      Size = 10
    end
    object SQL_CONSULTA_IMPORTACAOCNPJ_CPF: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'CNPJ_CPF'
      Origin = 'CNPJ_CPF'
      ProviderFlags = []
      ReadOnly = True
      Size = 50
    end
  end
  object DS_CONSULTA_IMPORTACAO: TDataSource
    DataSet = SQL_CONSULTA_IMPORTACAO
    Left = 16
    Top = 128
  end
  object ilStatus: TcxImageList
    FormatVersion = 1
    DesignInfo = 11010064
    ImageInfo = <
      item
        Image.Data = {
          36040000424D3604000000000000360000002800000010000000100000000100
          2000000000000004000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000C0E0A1500000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          000000000000000000000000000031362652909F70F32D32234C000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          000000000000000000003136265293A373F997A776FF93A373F92B3022490000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000003136265293A373F997A776FF97A776FF97A776FF93A273F82B2F
          2148000000000000000000000000000000000000000000000000000000000000
          00003136265393A373F997A776FF91A071F54951397B93A273F897A776FF93A2
          73F82B2F21480000000000000000000000000000000000000000000000000506
          0409839166DD97A776FF91A071F5262A1E40000000002B2F214893A273F897A7
          76FF93A273F82B30224900000000000000000000000000000000000000000000
          000015171023808D64D8262A1E400000000000000000000000002B2F214893A2
          73F897A776FF93A273F82B302249000000000000000000000000000000000000
          0000000000000202010300000000000000000000000000000000000000002B2F
          214893A273F897A776FF93A273F82B3022490000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          00002B2F214893A273F897A776FF93A273F82B30224900000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000002B2F214893A273F897A776FF76825CC701010001000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          000000000000000000002B2F214875825CC60B0C081200000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000010100010000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000}
      end
      item
        Image.Data = {
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
      end
      item
        Image.Data = {
          36040000424D3604000000000000360000002800000010000000100000000100
          2000000000000004000000000000000000000000000000000000000000000000
          0000000000000000000020170E2D6D4D2E979E7042DBB6804CFCB27D4AF69D6F
          42DA71502F9C23180E3000000000000000000000000000000000000000000000
          0000060503096E4D2E98B7814CFDB8824DFFB8824DFFB8824DFFB8824DFFB882
          4DFFB8824DFFB7814CFD7351309F0906040C0000000000000000000000000403
          0206886039BCB8824DFFB8824DFFB8824DFFB8824DFFB8824DFFB8824DFFB882
          4DFFB8824DFFB8824DFFB8824DFF8F653CC60705030A00000000000000006C4C
          2D96B8824DFFB8824DFFB8824DFFB8824DFFB8824DFFB8824DFFB8824DFFB882
          4DFFB8824DFFB8824DFFB8824DFFB8824DFF71502F9C0000000020160D2CB680
          4CFCB8824DFFB8824DFFB8824DFFB8824DFFB8824DFF0000000000000000B882
          4DFFB8824DFFB8824DFFB8824DFFB8824DFFB7814DFE251A0F3367492B8FB882
          4DFFB8824DFFB8824DFFB8824DFFB8824DFFB8824DFF0000000000000000B882
          4DFFB8824DFFB8824DFFB8824DFFB8824DFFB8824DFF7351309F9B6E41D7B882
          4DFFB8824DFFB8824DFFB8824DFFB8824DFFB8824DFF0000000000000000B882
          4DFFB8824DFFB8824DFFB8824DFFB8824DFFB8824DFFA27244E0B47F4BF9B882
          4DFFB8824DFFB8824DFFB8824DFFB8824DFFB8824DFF0000000000000000B882
          4DFFB8824DFFB8824DFFB8824DFFB8824DFFB8824DFFB8824DFFB47F4BF9B882
          4DFFB8824DFFB8824DFFB8824DFFB8824DFFB8824DFF0000000000000000B882
          4DFFB8824DFFB8824DFFB8824DFFB8824DFFB8824DFFB47F4BFA9B6E41D7B882
          4DFFB8824DFFB8824DFFB8824DFFB8824DFFB8824DFF0000000000000000B882
          4DFFB8824DFFB8824DFFB8824DFFB8824DFFB8824DFFA07143DE68492B90B882
          4DFFB8824DFFB8824DFFB8824DFFB8824DFFB8824DFFB8824DFFB8824DFFB882
          4DFFB8824DFFB8824DFFB8824DFFB8824DFFB8824DFF735230A020160D2CB781
          4CFDB8824DFFB8824DFFB8824DFFB8824DFFB8824DFF0000000000000000B882
          4DFFB8824DFFB8824DFFB8824DFFB8824DFFB8824DFF281D1138000000006D4D
          2E97B8824DFFB8824DFFB8824DFFB8824DFFB8824DFFB8824DFFB8824DFFB882
          4DFFB8824DFFB8824DFFB8824DFFB8824DFF735230A000000000000000000403
          0206896139BEB8824DFFB8824DFFB8824DFFB8824DFFB8824DFFB8824DFFB882
          4DFFB8824DFFB8824DFFB8824DFF8E643BC50705030A00000000000000000000
          0000050402076E4E2E99B7814DFEB8824DFFB8824DFFB8824DFFB8824DFFB882
          4DFFB8824DFFB8824DFF7351309F060503090000000000000000000000000000
          00000000000000000000251A0F336E4E2E999F7042DCB7814CFDB27E4BF79E70
          42DB71502F9C271C103600000000000000000000000000000000}
      end
      item
        Image.Data = {
          36040000424D3604000000000000360000002800000010000000100000000100
          2000000000000004000000000000000000000000000000000000000000000000
          000000000000000000000000000012060C204116155A692310806B2410814417
          165E14070E230000000000000000000000000000000000000000000000000000
          0000000000000F050B1B882E15A4E84E02F7F35200FFF05100FFF05100FFF352
          00FFEA4F00F9913114AD14070E23000000000000000000000000000000000000
          00001E0A1232CF4607E1F35200FFED5002FFED5003FFED5003FFED5003FFED50
          03FFED5003FFF25200FFD94905E9270D153F0000000000000000000000000C04
          0A17CF4608E2F15100FFED5003FFED5003FFED5003FFED5003FFED5003FFED50
          03FFED5003FFED5003FFF05100FFDB4A05EC13060E2200000000000000007E2B
          189EF45200FFED5003FFED5003FFED5003FFED5003FFED5003FFED5003FFED50
          03FFED5003FFED5003FFED5003FFF35200FF923115B0000000000C040A17E34D
          03F4EE5002FFED5003FFED5003FFED5003FFED5003FFED5003FFED5003FFED50
          03FFED5003FFED5003FFED5003FFED5003FFED5000FC13060E223211174CF452
          00FFED5003FFED5003FFED5003FFED5003FFED5003FFED5003FFED5003FFED50
          03FFED5003FFED5003FFED5003FFED5003FFF45200FF441718605B1F1373F151
          00FFED5003FFED5003FFED5003FFED5003FFED5003FFED5003FFED5003FFED50
          03FFED5003FFED5003FFED5003FFED5003FFF05100FF6B241082591E1271F151
          00FFED5003FFED5003FFED5003FFED5003FFED5003FFED5003FFED5003FFED50
          03FFED5003FFED5003FFED5003FFED5003FFF05100FF6A24118230101548F352
          00FFED5003FFED5003FFED5003FFED5003FFED5003FFED5003FFED5003FFED50
          03FFED5003FFED5003FFED5003FFED5003FFF45200FF4015185B0B040914DF4B
          04F1EE5002FFED5003FFED5003FFED5003FFED5003FFED5003FFED5003FFED50
          03FFED5003FFED5003FFED5003FFED5002FFEA4F01F910060C1E000000007327
          1994F45300FFED5003FFED5003FFED5003FFED5003FFED5003FFED5003FFED50
          03FFED5003FFED5003FFED5003FFF35200FF872E16A600000000000000000903
          0811C4420AD9F25200FFED5003FFED5003FFED5003FFED5003FFED5003FFED50
          03FFED5003FFED5003FFF15100FFD04607E30E050B1A00000000000000000000
          000017081028C1410AD6F45200FFEE5002FFED5003FFED5003FFED5003FFED50
          03FFEE5002FFF35200FFCD4507DF1E0A13330000000000000000000000000000
          0000000000000903071176281693DB4A05EDF35200FFF15100FFF15100FFF252
          00FFE04C04F17F2B159C0D050A18000000000000000000000000000000000000
          00000000000000000000000000000D040715311114485A1F11715D1F10723712
          114B0F0509190000000000000000000000000000000000000000}
      end
      item
        Image.Data = {
          36040000424D3604000000000000360000002800000010000000100000000100
          2000000000000004000000000000000000000000000000000000000000000000
          0000000000000000000000000000001411200045265A00702C8000722C810049
          285E001513230000000000000000000000000000000000000000000000000000
          00000000000000100F1B009038A400F73EF700FF3DFF00FF3FFF00FF3FFF00FF
          3DFF00F93EF9009B39AD00161323000000000000000000000000000000000000
          000000201A3200DC3CE100FF3DFF00FF42FF00FF42FF00FF42FF00FF42FF00FF
          42FF00FF42FF00FF3EFF00E53CE9002A203F000000000000000000000000000D
          0D1700DC3DE200FF3FFF00FF42FF00FF42FF00FF42FF00FF42FF00FF42FF00FF
          42FF00FF42FF00FF42FF00FF40FF00E93DEC0014132200000000000000000088
          399E00FF3CFF00FF42FF00FF42FF00FF42FF00FF42FF00FF42FF00FF42FF00FF
          42FF00FF42FF00FF42FF00FF42FF00FF3DFF009D3BB000000000000D0D1700F3
          3FF400FF41FF00FF42FF00FF42FF00FF42FF00FF42FF00FF42FF00FF42FF00FF
          42FF00FF42FF00FF42FF00FF42FF00FF42FF00FC3EFC001513220036244C00FF
          3CFF00FF42FF00FF42FF00FF42FF00FF42FF00FF42FF00FF42FF00FF42FF00FF
          42FF00FF42FF00FF42FF00FF42FF00FF42FF00FF3DFF00492A6000612B7300FF
          3EFF00FF42FF00FF42FF00FF42FF00FF42FF00FF42FF00FF42FF00FF42FF00FF
          42FF00FF42FF00FF42FF00FF42FF00FF42FF00FF40FF00742C8200602A7100FF
          3EFF00FF42FF00FF42FF00FF42FF00FF42FF00FF42FF00FF42FF00FF42FF00FF
          42FF00FF42FF00FF42FF00FF42FF00FF42FF00FF3FFF00722D820033224800FF
          3DFF00FF42FF00FF42FF00FF42FF00FF42FF00FF42FF00FF42FF00FF42FF00FF
          42FF00FF42FF00FF42FF00FF42FF00FF42FF00FF3CFF0044285B000B0C1400EF
          3FF100FF41FF00FF42FF00FF42FF00FF42FF00FF42FF00FF42FF00FF42FF00FF
          42FF00FF42FF00FF42FF00FF42FF00FF42FF00F93EF90012111E00000000007C
          389400FF3CFF00FF42FF00FF42FF00FF42FF00FF42FF00FF42FF00FF42FF00FF
          42FF00FF42FF00FF42FF00FF42FF00FF3DFF00923AA600000000000000000009
          0A1100D03DD900FF3EFF00FF42FF00FF42FF00FF42FF00FF42FF00FF42FF00FF
          42FF00FF42FF00FF42FF00FF3FFF00DE3DE3000F0F1A00000000000000000000
          00000018162800CD3CD600FF3DFF00FF41FF00FF42FF00FF42FF00FF42FF00FF
          42FF00FF41FF00FF3DFF00D93BDF00211B330000000000000000000000000000
          000000000000000A0A11007E359300EA3EED00FF3EFF00FF3FFF00FF3FFF00FF
          3EFF00EF3EF10088369C000E0D18000000000000000000000000000000000000
          0000000000000000000000000000000E0B15003521480061297100632872003B
          1F4B00100D190000000000000000000000000000000000000000}
      end
      item
        Image.Data = {
          36040000424D3604000000000000360000002800000010000000100000000100
          2000000000000004000000000000000000000000000000000000000000000000
          000000000000000000000000000000001F1F0000595900008080000081810000
          5D5D000023230000000000000000000000000000000000000000000000000000
          00000000000000001B1B0000A3A30000F6F60000FFFF0000FFFF0000FFFF0000
          FFFF0000F9F90000ACAC00002323000000000000000000000000000000000000
          0000000032320000E0E00000FFFF0000FFFF0000FFFF0000FFFF0000FFFF0000
          FFFF0000FFFF0000FFFF0000E9E900003E3E0000000000000000000000000000
          17170000E1E10000FFFF0000FFFF0000FFFF0000FFFF0000FFFF0000FFFF0000
          FFFF0000FFFF0000FFFF0000FFFF0000EBEB0000212100000000000000000000
          9D9D0000FFFF0000FFFF0000FFFF0000FFFF0000FFFF0000FFFF0000FFFF0000
          FFFF0000FFFF0000FFFF0000FFFF0000FFFF0000AFAF00000000000017170000
          F4F40000FFFF0000FFFF0000FFFF0000FFFF0000FFFF0000FFFF0000FFFF0000
          FFFF0000FFFF0000FFFF0000FFFF0000FFFF0000FCFC0000222200004C4C0000
          FFFF0000FFFF0000FFFF0000FFFF0000FFFF0000FFFF0000FFFF0000FFFF0000
          FFFF0000FFFF0000FFFF0000FFFF0000FFFF0000FFFF00005F5F000072720000
          FFFF0000FFFF0000FFFF0000FFFF0000FFFF0000FFFF0000FFFF0000FFFF0000
          FFFF0000FFFF0000FFFF0000FFFF0000FFFF0000FFFF00008282000070700000
          FFFF0000FFFF0000FFFF0000FFFF0000FFFF0000FFFF0000FFFF0000FFFF0000
          FFFF0000FFFF0000FFFF0000FFFF0000FFFF0000FFFF00008181000048480000
          FFFF0000FFFF0000FFFF0000FFFF0000FFFF0000FFFF0000FFFF0000FFFF0000
          FFFF0000FFFF0000FFFF0000FFFF0000FFFF0000FFFF00005B5B000014140000
          F1F10000FFFF0000FFFF0000FFFF0000FFFF0000FFFF0000FFFF0000FFFF0000
          FFFF0000FFFF0000FFFF0000FFFF0000FFFF0000F9F900001E1E000000000000
          93930000FFFF0000FFFF0000FFFF0000FFFF0000FFFF0000FFFF0000FFFF0000
          FFFF0000FFFF0000FFFF0000FFFF0000FFFF0000A6A600000000000000000000
          11110000D8D80000FFFF0000FFFF0000FFFF0000FFFF0000FFFF0000FFFF0000
          FFFF0000FFFF0000FFFF0000FFFF0000E3E300001A1A00000000000000000000
          0000000027270000D5D50000FFFF0000FFFF0000FFFF0000FFFF0000FFFF0000
          FFFF0000FFFF0000FFFF0000DEDE000032320000000000000000000000000000
          00000000000000001111000092920000EDED0000FFFF0000FFFF0000FFFF0000
          FFFF0000F1F100009C9C00001818000000000000000000000000000000000000
          0000000000000000000000000000000015150000474700007070000071710000
          4A4A000018180000000000000000000000000000000000000000}
      end
      item
        Image.Data = {
          36040000424D3604000000000000360000002800000010000000100000000100
          2000000000000004000000000000000000000000000000000000000000000000
          000000000000000000000000000000242C2C00616E6E00848F8F008590900064
          7171002831310000000000000000000000000000000000000000000000000000
          0000000000000021292900A8B6B600F6FEFE00F8FFFF00F7FFFF00F7FFFF00F8
          FFFF00F7FFFF00B1BEBE002A3333000000000000000000000000000000000000
          00000037434300E4EDED00F8FFFF00F6FFFF00F6FFFF00F6FFFF00F6FFFF00F6
          FFFF00F6FFFF00F8FFFF00ECF4F400445151000000000000000000000000001D
          242400E5EEEE00F7FFFF00F6FFFF00F6FFFF00F6FFFF00F6FFFF00F6FFFF00F6
          FFFF00F6FFFF00F6FFFF00F7FFFF00EDF6F600273030000000000000000000A2
          B1B100F9FFFF00F6FFFF00F6FFFF00F6FFFF00F6FFFF00F6FFFF00F6FFFF00F6
          FFFF00F6FFFF00F6FFFF00F6FFFF00F8FFFF00B4C2C200010101001B212100F3
          FCFC00F6FFFF00F6FFFF00F6FFFF00F6FFFF00F6FFFF00F6FFFF00F6FFFF00F6
          FFFF00F6FFFF00F6FFFF00F6FFFF00F6FFFF00F7FFFF0027303000525F5F00F9
          FFFF00F6FFFF00F6FFFF00F6FFFF00F6FFFF00F6FFFF00F6FFFF00F6FFFF00F6
          FFFF00F6FFFF00F6FFFF00F6FFFF00F6FFFF00F9FFFF00657373007B888800F8
          FFFF00F6FFFF00F6FFFF00F6FFFF00F6FFFF00F6FFFF00F6FFFF00F6FFFF00F6
          FFFF00F6FFFF00F6FFFF00F6FFFF00F6FFFF00F7FFFF00869191007A868600F8
          FFFF00F6FFFF00F6FFFF00F6FFFF00F6FFFF00F6FFFF00F6FFFF00F6FFFF00F6
          FFFF00F6FFFF00F6FFFF00F6FFFF00F6FFFF00F7FFFF00869191004E5B5B00F8
          FFFF00F6FFFF00F6FFFF00F6FFFF00F6FFFF00F6FFFF00F6FFFF00F6FFFF00F6
          FFFF00F6FFFF00F6FFFF00F6FFFF00F6FFFF00F8FFFF00616F6F00171D1D00F1
          FAFA00F7FFFF00F6FFFF00F6FFFF00F6FFFF00F6FFFF00F6FFFF00F6FFFF00F6
          FFFF00F6FFFF00F6FFFF00F6FFFF00F6FFFF00F7FFFF00232B2B000000000098
          A8A800F9FFFF00F6FFFF00F6FFFF00F6FFFF00F6FFFF00F6FFFF00F6FFFF00F6
          FFFF00F6FFFF00F6FFFF00F6FFFF00F9FFFF00AAB9B900000000000000000016
          1C1C00DBE6E600F8FFFF00F6FFFF00F6FFFF00F6FFFF00F6FFFF00F6FFFF00F6
          FFFF00F6FFFF00F6FFFF00F7FFFF00E7F0F0001F272700000000000000000000
          0000002C363600D8E3E300F9FFFF00F6FFFF00F6FFFF00F6FFFF00F6FFFF00F6
          FFFF00F6FFFF00F8FFFF00E2EBEB003743430000000000000000000000000000
          00000000000000181D1D0097A5A500EEF7F700F8FFFF00F8FFFF00F7FFFF00F8
          FFFF00F0F9F900A0AEAE001E2525000000000000000000000000000000000000
          0000000000000000000000000000001A1F1F004E5959007A8585007B86860053
          5D5D001D23230000000000000000000000000000000000000000}
      end
      item
        Image.Data = {
          36040000424D3604000000000000360000002800000010000000100000000100
          2000000000000004000000000000000000000000000000000000000000000000
          0000000000000000000001010101282A2A3E56585883696B6BA06A6C6CA1585A
          5A862C2E2E440202020300000000000000000000000000000000000000000000
          0000000000002729293D858787C9AAAAAAFFAAAAAAFFAAAAAAFFAAAAAAFFAAAA
          AAFFAAAAAAFF8B8C8CD12F303148000000000000000000000000000000000000
          0000393C3C59A6A6A6F9AAAAAAFFAAAAAAFFAAAAAAFFAAAAAAFFAAAAAAFFAAAA
          AAFFAAAAAAFFAAAAAAFFAAA9A9FE434747690000000000000000000000002123
          2334A5A5A5F8AAAAAAFFAAAAAAFFAAAAAAFFAAAAAAFFAAAAAAFFAAAAAAFFAAAA
          AAFFAAAAAAFFAAAAAAFFAAAAAAFFAAA9A9FE2B2E2E4400000000010101028284
          85C6AAAAAAFFAAAAAAFFAAAAAAFFAAAAAAFFAAAAAAFFAAAAAAFFAAAAAAFFAAAA
          AAFFAAAAAAFFAAAAAAFFAAAAAAFFAAAAAAFF8E8F90D6030303051F202130AAAA
          AAFFAAAAAAFFAAAAAAFFAAAAAAFFAAAAAAFFAAAAAAFFAAAAAAFFAAAAAAFFAAAA
          AAFFAAAAAAFFAAAAAAFFAAAAAAFFAAAAAAFFAAAAAAFF2B2D2D434D505077AAAA
          AAFFAAAAAAFFAAAAAAFFAAAAAAFFAAAAAAFFAAAAAAFFAAAAAAFFAAAAAAFFAAAA
          AAFFAAAAAAFFAAAAAAFFAAAAAAFFAAAAAAFFAAAAAAFF5A5C5C89696B6CA0AAAA
          AAFFAAAAAAFFAAAAAAFFAAAAAAFFAAAAAAFFAAAAAAFFAAAAAAFFAAAAAAFFAAAA
          AAFFAAAAAAFFAAAAAAFFAAAAAAFFAAAAAAFFAAAAAAFF6B6D6DA26769699DAAAA
          AAFFAAAAAAFFAAAAAAFFAAAAAAFFAAAAAAFFAAAAAAFFAAAAAAFFAAAAAAFFAAAA
          AAFFAAAAAAFFAAAAAAFFAAAAAAFFAAAAAAFFAAAAAAFF6A6C6CA14A4C4C71AAAA
          AAFFAAAAAAFFAAAAAAFFAAAAAAFFAAAAAAFFAAAAAAFFAAAAAAFFAAAAAAFFAAAA
          AAFFAAAAAAFFAAAAAAFFAAAAAAFFAAAAAAFFAAAAAAFF565959841B1C1C2AAAAA
          AAFFAAAAAAFFAAAAAAFFAAAAAAFFAAAAAAFFAAAAAAFFAAAAAAFFAAAAAAFFAAAA
          AAFFAAAAAAFFAAAAAAFFAAAAAAFFAAAAAAFFAAAAAAFF27292A3D000000007C7E
          7EBCAAAAAAFFAAAAAAFFAAAAAAFFAAAAAAFFAAAAAAFFAAAAAAFFAAAAAAFFAAAA
          AAFFAAAAAAFFAAAAAAFFAAAAAAFFAAAAAAFF898A8ACE03030304000000001B1D
          1D2BA1A2A2F3AAAAAAFFAAAAAAFFAAAAAAFFAAAAAAFFAAAAAAFFAAAAAAFFAAAA
          AAFFAAAAAAFFAAAAAAFFAAAAAAFFA7A7A7FA2426273900000000000000000000
          00003032324AA1A1A1F1AAAAAAFFAAAAAAFFAAAAAAFFAAAAAAFFAAAAAAFFAAAA
          AAFFAAAAAAFFAAAAAAFFA5A5A5F73A3C3C590000000000000000000000000000
          0000000000001D1E1F2D7A7B7BB8AAAAAAFFAAAAAAFFAAAAAAFFAAAAAAFFAAAA
          AAFFAAAAAAFF808181C124252537000000000000000000000000000000000000
          00000000000000000000000000001E1E1E2D4A4C4C716668689B6769699C4D4E
          4E75202121310000000000000000000000000000000000000000}
      end>
  end
  object SQL_IMPORTACAO: TFDQuery
    Connection = Module.connection
    Left = 296
    Top = 296
  end
  object DS_IMPORTACAO: TDataSource
    DataSet = SQL_IMPORTACAO
    Left = 48
    Top = 48
  end
  object editRepo: TcxEditRepository
    Left = 16
    Top = 16
    object buttonEditVisible: TcxEditRepositoryButtonItem
      Properties.Alignment.Horz = taLeftJustify
      Properties.Buttons = <
        item
          Default = True
          Kind = bkEllipsis
        end>
      Properties.CharCase = ecUpperCase
    end
    object buttonEditNotVisible: TcxEditRepositoryButtonItem
      Properties.Alignment.Horz = taLeftJustify
      Properties.Buttons = <
        item
          Default = True
          Kind = bkEllipsis
          Visible = False
        end>
      Properties.CharCase = ecUpperCase
    end
    object TextEdit: TcxEditRepositoryTextItem
      Properties.Alignment.Horz = taCenter
      Properties.CharCase = ecUpperCase
    end
    object comboBoxTIPO: TcxEditRepositoryComboBoxItem
      Properties.Alignment.Horz = taCenter
      Properties.DropDownListStyle = lsEditFixedList
      Properties.MaxLength = 5
      Properties.OnEditValueChanged = comboBoxTIPOPropertiesEditValueChanged
      Properties.OnNewLookupDisplayText = comboBoxTIPOPropertiesNewLookupDisplayText
    end
    object comboboxUND: TcxEditRepositoryComboBoxItem
      Properties.Alignment.Horz = taCenter
      Properties.CharCase = ecUpperCase
      Properties.DropDownListStyle = lsEditFixedList
    end
  end
  object tmr: TTimer
    Interval = 10000
    OnTimer = tmrTimer
    Left = 16
    Top = 80
  end
  object SQL_NF_EMITIDAS: TFDQuery
    Connection = Module.connection
    SQL.Strings = (
      'select * from nfe_destinadas'
      'where nfe_importada = false')
    Left = 296
    Top = 456
    object SQL_NF_EMITIDASID: TFDAutoIncField
      FieldName = 'ID'
      Origin = 'ID'
      ProviderFlags = [pfInWhere, pfInKey]
      ReadOnly = True
    end
    object SQL_NF_EMITIDASFORNECEDOR: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'FORNECEDOR'
      Origin = 'FORNECEDOR'
      Size = 255
    end
    object SQL_NF_EMITIDASCNPJ: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'CNPJ'
      Origin = 'CNPJ'
      Size = 14
    end
    object SQL_NF_EMITIDASDATA_EMISSAO: TDateTimeField
      AutoGenerateValue = arDefault
      FieldName = 'DATA_EMISSAO'
      Origin = 'DATA_EMISSAO'
    end
    object SQL_NF_EMITIDASPREVISAO_ENTREGA: TDateField
      AutoGenerateValue = arDefault
      FieldName = 'PREVISAO_ENTREGA'
      Origin = 'PREVISAO_ENTREGA'
    end
    object SQL_NF_EMITIDASVALOR: TBCDField
      AutoGenerateValue = arDefault
      FieldName = 'VALOR'
      Origin = 'VALOR'
      Precision = 10
    end
    object SQL_NF_EMITIDASCHAVE: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'CHAVE'
      Origin = 'CHAVE'
      Size = 44
    end
    object SQL_NF_EMITIDASCAMINHO_XML: TMemoField
      AutoGenerateValue = arDefault
      FieldName = 'CAMINHO_XML'
      Origin = 'CAMINHO_XML'
      BlobType = ftMemo
    end
    object SQL_NF_EMITIDASOBSERVACOES: TMemoField
      AutoGenerateValue = arDefault
      FieldName = 'OBSERVACOES'
      Origin = 'OBSERVACOES'
      BlobType = ftMemo
    end
    object SQL_NF_EMITIDASID_MANIFESTO: TIntegerField
      AutoGenerateValue = arDefault
      FieldName = 'ID_MANIFESTO'
      Origin = 'ID_MANIFESTO'
    end
    object SQL_NF_EMITIDASnfe_importada: TBooleanField
      AutoGenerateValue = arDefault
      FieldName = 'nfe_importada'
      Origin = 'nfe_importada'
    end
  end
  object DS_NF_EMITIDAS: TDataSource
    DataSet = SQL_NF_EMITIDAS
    Left = 48
    Top = 128
  end
  object dfeMan: TPopupMenu
    Left = 48
    Top = 80
    object ImportarNFe1: TMenuItem
      Bitmap.Data = {
        36040000424D3604000000000000360000002800000010000000100000000100
        2000000000000004000000000000000000000000000000000000000000000000
        000000000000000000000000000000000000000000000101000144311F5C7E5C
        3AABAA7C4EE6AA7C4EE67E5C3AAB44311F5C0101000100000000000000000000
        000000000000000000000000000000000000010100015E452C80BC8957FFBC89
        57FFBC8957FFBC8957FFBC8957FFBC8957FF5E452C8001010001000000000000
        00000000000000000000000000000000000044311F5CBC8957FFBC8957FFBC89
        57FF0000000000000000BC8957FFBC8957FFBC8957FF44311F5C2828284D223B
        484D72C4EEFF72C4EEFF72C4EEFF203743487E5C3AABBC8957FFBC8957FFBC89
        57FF0000000000000000BC8957FFBC8957FFBC8957FF7E5C3AAB848484FF2828
        284D223B484D72C4EEFF72C4EEFF09101415AA7C4EE6BC8957FF00000000966E
        46CC0000000000000000966E46CC00000000BC8957FFAA7C4EE6848484FF8484
        84FF2828284D223B484D72C4EEFF09101415AA7C4EE6BC8957FF83603DB20000
        000000000000000000000000000083603DB2BC8957FFAA7C4EE6848484FF8484
        84FF848484FF2828284D223B484D203743487E5C3AABBC8957FFBC8957FF8360
        3DB2000000000000000083603DB2BC8957FFBC8957FF7E5C3AAB848484FF8484
        84FF848484FF848484FF2828284D0000000044311F5CBC8957FFBC8957FFBC89
        57FF83603DB283603DB2BC8957FFBC8957FFBC8957FF44311F5C848484FF8484
        84FF848484FF848484FF848484FF757575E22A2929505E452C80BC8957FFBC89
        57FFBC8957FFBC8957FFBC8957FFBC8957FF5E452C8001010001848484FF8484
        84FF848484FF848484FF848484FF848484FF666666C62A29295044311F5C7E5C
        3AABAA7C4EE6AA7C4EE67E5C3AAB44311F5C0101000100000000848484FF8484
        84FF848484FF848484FF848484FF848484FF848484FF757575E24A4A4A8F2525
        25480B0B0B150B0B0B15252525484A4A4A8F0000000000000000848484FF8484
        84FF848484FF848484FF848484FF848484FF848484FF848484FF848484FF8484
        84FF848484FF848484FF848484FF2828284D0000000000000000848484FF8484
        84FF848484FF848484FF848484FF848484FF848484FF2828284D000000000000
        00000000000000000000000000000000000000000000000000002828284D8484
        84FF848484FF848484FF848484FF848484FF2828284D00000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000}
      Caption = 'Importar NF-e'
      Default = True
      OnClick = ImportarNFe1Click
    end
    object ManifestarNFe1: TMenuItem
      Bitmap.Data = {
        36040000424D3604000000000000360000002800000010000000100000000100
        200000000000000400000000000000000000000000000000000000000000B882
        4DFFB8824DFFB8824DFFB8824DFF000000000000000000000000000000000000
        000000000000000000000000000000000000000000000000000000000000B882
        4DFFB8824DFFB8824DFFB8824DFF000000000000000000000000000000000000
        000000000000000000000000000000000000000000000000000000000000B882
        4DFFB8824DFFB8824DFFB8824DFF0000000072C4EEFF72C4EEFF72C4EEFF72C4
        EEFF00000000000000000000000000000000000000000000000000000000B882
        4DFFB8824DFFB8824DFFB8824DFF0000000072C4EEFF72C4EEFF72C4EEFF72C4
        EEFF00000000000000000000000000000000000000000000000000000000B882
        4DFFB8824DFFB8824DFFB8824DFF0000000072C4EEFF72C4EEFF72C4EEFF72C4
        EEFF00000000000000000000000000000000000000000000000000000000B882
        4DFFB8824DFFB8824DFFB8824DFF0000000072C4EEFF72C4EEFF72C4EEFF72C4
        EEFF00000000000000000000000000000000000000000000000000000000B882
        4DFFB8824DFFB8824DFFB8824DFF0000000072C4EEFF72C4EEFF72C4EEFF72C4
        EEFF00000000000000000000000000000000000000000000000000000000B882
        4DFFB8824DFFB8824DFFB8824DFF0000000072C4EEFF72C4EEFF72C4EEFF72C4
        EEFF0000000097A776FF97A776FF97A776FF97A776FF00000000000000000000
        00000000000000000000000000000000000072C4EEFF72C4EEFF72C4EEFF72C4
        EEFF0000000097A776FF97A776FF97A776FF97A776FF00000000000000000000
        00000000000000000000000000000000000072C4EEFF72C4EEFF72C4EEFF72C4
        EEFF0000000097A776FF97A776FF97A776FF97A776FF00000000000000000000
        00000000000000000000000000000000000072C4EEFF72C4EEFF72C4EEFF72C4
        EEFF0000000097A776FF97A776FF97A776FF97A776FF00000000000000000000
        00000000000000000000000000000000000072C4EEFF72C4EEFF72C4EEFF72C4
        EEFF0000000097A776FF97A776FF97A776FF97A776FF00000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        00000000000097A776FF97A776FF97A776FF97A776FF00000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        00000000000097A776FF97A776FF97A776FF97A776FF00000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        00000000000097A776FF97A776FF97A776FF97A776FF00000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        00000000000097A776FF97A776FF97A776FF97A776FF00000000}
      Caption = 'Manifestar NF-e'
      OnClick = ManifestarNFe1Click
    end
  end
  object SQL_EXCLUIR_SEM_GTIN: TFDQuery
    Connection = Module.connection
    SQL.Strings = (
      'UPDATE IMPORTACAO_PRODUTOS'
      'SET COD_BARRAS='#39#39
      'WHERE COD_BARRAS='#39'SEM GTIN'#39)
    Left = 608
    Top = 304
  end
  object SQL_EXCLUIR_SEM_GTIN_PRODUTOS: TFDQuery
    Connection = Module.connection
    SQL.Strings = (
      'UPDATE PRODUTO'
      'SET CODIGO_BARRAS='#39#39
      'WHERE CODIGO_BARRAS='#39'SEM GTIN'#39)
    Left = 608
    Top = 360
  end
end
Trocou ENQUADRAMENTO_IPI por PROD_NFe_O02_clEnq : automaticamente em 18/06/2020 14:43
