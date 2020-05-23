object frm_cliente: Tfrm_cliente
  Left = 0
  Top = 0
  BorderIcons = [biSystemMenu]
  BorderStyle = bsSingle
  Caption = 'Clientes'
  ClientHeight = 637
  ClientWidth = 1195
  Color = clBtnFace
  DefaultMonitor = dmMainForm
  Font.Charset = ANSI_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  KeyPreview = True
  OldCreateOrder = False
  Position = poMainFormCenter
  OnClose = FormClose
  OnCreate = FormCreate
  OnKeyDown = FormKeyDown
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 13
  object page_control: TcxPageControl
    Left = 0
    Top = 0
    Width = 1195
    Height = 637
    Align = alClient
    Font.Charset = ANSI_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'Tahoma'
    Font.Style = [fsBold]
    ParentFont = False
    TabOrder = 0
    Properties.ActivePage = tab_cadastrar
    Properties.CustomButtons.Buttons = <>
    LookAndFeel.NativeStyle = False
    LookAndFeel.SkinName = 'Office2013White'
    ClientRectBottom = 635
    ClientRectLeft = 2
    ClientRectRight = 1193
    ClientRectTop = 28
    object tab_consulta: TcxTabSheet
      Caption = 'Consultar'
      Color = clMedGray
      ImageIndex = 0
      ParentColor = False
      OnShow = tab_consultaShow
      object Label45: TLabel
        Left = 147
        Top = -1
        Width = 52
        Height = 13
        Align = alCustom
        Caption = 'Consulta:'
      end
      object Label47: TLabel
        Left = 435
        Top = -1
        Width = 59
        Height = 13
        Align = alCustom
        Caption = 'Filtrar por:'
      end
      object Label49: TLabel
        Left = 559
        Top = -1
        Width = 76
        Height = 13
        Align = alCustom
        Caption = 'Ordernar por:'
      end
      object gd: TcxGrid
        Left = -2
        Top = 40
        Width = 1193
        Height = 568
        TabOrder = 0
        LookAndFeel.NativeStyle = False
        LookAndFeel.SkinName = 'DevExpressStyle'
        object tb: TcxGridDBTableView
          OnKeyDown = tbKeyDown
          Navigator.Buttons.CustomButtons = <>
          OnCellDblClick = tbCellDblClick
          OnCustomDrawCell = tbCustomDrawCell
          DataController.DataSource = DS_C_Clientes
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
            OnCustomDrawCell = tbpessoa_tipoCustomDrawCell
            OnGetDisplayText = tbpessoa_tipoGetDisplayText
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
            OnGetDisplayText = tbcnpjGetDisplayText
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
            OnGetDisplayText = tbcpfGetDisplayText
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
            OnGetDisplayText = tbtelefoneGetDisplayText
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
            OnGetDisplayText = tbtelefoneGetDisplayText
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
      object cxGroupBox1: TcxGroupBox
        Left = 683
        Top = -6
        Caption = ' Pessoa Tipo '
        Style.LookAndFeel.NativeStyle = False
        Style.LookAndFeel.SkinName = 'Office2013White'
        StyleDisabled.LookAndFeel.NativeStyle = False
        StyleDisabled.LookAndFeel.SkinName = 'Office2013White'
        StyleFocused.LookAndFeel.NativeStyle = False
        StyleFocused.LookAndFeel.SkinName = 'Office2013White'
        StyleHot.LookAndFeel.NativeStyle = False
        StyleHot.LookAndFeel.SkinName = 'Office2013White'
        TabOrder = 1
        Height = 44
        Width = 182
        object Image1: TImage
          Left = 7
          Top = 11
          Width = 17
          Height = 19
          Center = True
          Picture.Data = {
            0B546478504E47496D61676589504E470D0A1A0A0000000D4948445200000010
            0000001008060000001FF3FF610000000467414D410000B18F0BFC6105000000
            0B744558745469746C6500486F6D653B1E7464380000034C49444154384F6D93
            7F4CCC611CC71F6536CBAFCC8F48C950530C53E6D726F34F13922C336A52F2A3
            F3238E4A494B2AB57E70AA51594297295DE9746AA1C61F0D1333D1157775EEAE
            EE5775DFFBDE0FE5EDF97EF923E3BBBDBE9F67DFE779BF9EE7B3675F72AD650B
            296C0EFCCDD34052200B24F49970F9C146FF82A640E453A20BE705D06FCE14A7
            3F4C385EEE4EE2CADC091970D413AD5D4234B63AA2B6D6D239E29458EEBFB6A4
            35044ACB5D7499AF22A57A25D26F96BDCDBBFD0639A5AF912E7AF59C5B17239A
            4F88CA2A264AEB3DA2642BF9F0A91BABD7164883203717E370AE3FA2AE2E4787
            FE3C8415BE90B649C0302CCE673F035D3B3132671E213D4C09E9668AB8B0734C
            96DFBAAC9A2D786FCAC4F6B39E28AEBC83B4EBE9083AED86679A28084ABCD1D0
            5A87D3E94F39C1A4BD97DD087967CAE0C3FB92976EB8787F033A74E7B053E889
            B2EAFBE8550CE073AF1AB7AAEE615BFC5CD42B82115DB008D117449CC0655732
            1570E19D27BC36094BD7E085F630762578A2A2E601541A23462C760C33767CED
            D3E356B518C167E6A24ABE1E11D91E08D8E3BA95662792A0D8059B04A21578D2
            1F86D0A405B82B79887EB509438C0326F30F182986612A51EA512AAEA692D928
            FFEC8BF0343704EC9EB19944667A4150EC83882B0B216B9342A91E8261C801FD
            F06F749401931D1A830D7285118F9A25084FF1C4C15C0FECB9E0C1B5422653E6
            0852EB606159688D761A70E05198FB5FA874362807ACD019CD38241473417A05
            C48594752DE3242EA9852F3136F613DFF576A8F436D4EDF500D35904E69D881F
            AB0DB40D8D95B6E4407C460B279806D052F271212798929CD7C60BB85DBE69AD
            6838B018231DD93034C6A061FF625EF0A59FC5206DEF641A7F8DD37901FFA2B6
            849CE7708CFE448F9A85FC3B0B69940F86DA92A1AB8FA4636FF40DDAF05161E1
            4571A94D5CC875BC60BA30B31556FB18BAFA2CF8A4B44016EB07A34C80C19A70
            C88EFAF1A7EAFCCA4041EBB194275C68E678C18CF88C668CB0A3F8407779FF8D
            414BDC4AE82591D08A43E878157AE9C9DEC8CDE856B1884D92FE2370399250FB
            F2449A0C824B32C45D6CC2F5301F14867A233FC41BB93B96E048522362131F23
            26B11111A7AA5ED1CCD4F102EE579DD2DEDEBE99D6597F98FD1FE650B8B96914
            6700E417FF6949870C94D7F20000000049454E44AE426082}
        end
        object Image2: TImage
          Left = 90
          Top = 11
          Width = 17
          Height = 19
          Center = True
          Picture.Data = {
            0B546478504E47496D61676589504E470D0A1A0A0000000D4948445200000010
            0000001008060000001FF3FF610000000467414D410000B18F0BFC6105000000
            18744558745469746C650050726F6A6563743B506F7274666F6C696F3BFE964F
            2D0000028449444154384FA5D35D4853611CC7F1559A0C19533775475353E7E6
            6C2F3A67A2586AD6027185D39126999289DA2CDFD169335144CC74D94C2DCB0D
            8545A524695E0585DD54865759D9F022EDBE82A08BE0D7F31745336FA4031F38
            3CFFE77C393C87C303F05F765CEC3C72209CB1B52771CBAD3AF1B24525B4D5CB
            F9E13BEDA56B0FB38FF1DCD09E12ECB626723566959FAC3C5A20AB96F16BAE84
            7BBAD96C3FE3B58EEEF7323C8F5557D54BB7A3126E87199F472F61D69283A57B
            15F834528E8F77993B6598309FC4E2702916072FE2FD6009DEDD2C9E5B0FF1BC
            E6BA0AF1EBEBAB5DB16527D0FB7B53803FDB64C4F70F535899B1E0CBD3A6352B
            33CD587DB669657A73F66DF109DA53A5141050C0DB557A0CEE292B9CC55AF41A
            A41830C5E04D5F3616ECB958B8958B799B71CB4C81A5C91634C6065240480141
            B73E068D711C6EB00DBF7FBC406B0A875AA50875E49008D50A9FBF669552011A
            54620AF85240D89FADC3507E323A8F87E2E75B131AE2C5E8D14760202B0AF62C
            297AD9FDD699ED941ADD2714141051C077F47C3A9E7714A03E4E84B2483EEA34
            BE785C128F197322A62B123151A25D5BA359ADDA0753557AF41B6229E04F01D1
            602EDB58978907856A38F395183FABC444911A93C51A4C16A9F0E89C126379D1
            B86F94C16992E1E185245CCF9053404201FFBE4C151C053A0C1B22E03046619C
            6D22AE3C395C676418CB91C2698CC488E120ECFA100C9D8E4647721805822810
            D09526C5ED2C39FAD239F46E489330EC605325E8490DDC743410B68C1058B512
            0A0453C0A741CBBD6E3B1C8CB684205CD371688D97C04AE202703596D1F8A345
            2346B39A51896051FAE1B25C38CF9E5D3B440F863E07D542D6856E13B60DAD89
            19CF7FFEAEDD01EF0F9AAEF6DC555858810000000049454E44AE426082}
        end
        object chkFisica: TcxCheckBox
          Left = 26
          Top = 11
          Caption = 'F'#237'sica'
          ParentBackground = False
          ParentColor = False
          Properties.OnEditValueChanged = chkchange
          State = cbsChecked
          Style.Color = clWhite
          Style.LookAndFeel.NativeStyle = False
          Style.LookAndFeel.SkinName = 'Office2013White'
          StyleDisabled.LookAndFeel.NativeStyle = False
          StyleDisabled.LookAndFeel.SkinName = 'Office2013White'
          StyleFocused.LookAndFeel.NativeStyle = False
          StyleFocused.LookAndFeel.SkinName = 'Office2013White'
          StyleHot.LookAndFeel.NativeStyle = False
          StyleHot.LookAndFeel.SkinName = 'Office2013White'
          TabOrder = 0
        end
        object chkJuridica: TcxCheckBox
          Left = 109
          Top = 11
          Caption = 'Jur'#237'dica'
          ParentBackground = False
          ParentColor = False
          Properties.OnEditValueChanged = chkchange
          State = cbsChecked
          Style.Color = clWhite
          Style.LookAndFeel.NativeStyle = False
          Style.LookAndFeel.SkinName = 'Office2013White'
          StyleDisabled.LookAndFeel.NativeStyle = False
          StyleDisabled.LookAndFeel.SkinName = 'Office2013White'
          StyleFocused.LookAndFeel.NativeStyle = False
          StyleFocused.LookAndFeel.SkinName = 'Office2013White'
          StyleHot.LookAndFeel.NativeStyle = False
          StyleHot.LookAndFeel.SkinName = 'Office2013White'
          TabOrder = 1
        end
      end
      object cxGroupBox2: TcxGroupBox
        Left = 874
        Top = -6
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
        Height = 44
        Width = 137
        object chkAtivo: TcxCheckBox
          Left = 10
          Top = 11
          Caption = 'Ativo'
          ParentBackground = False
          ParentColor = False
          Properties.OnEditValueChanged = chkchange
          State = cbsChecked
          Style.Color = clWhite
          Style.LookAndFeel.NativeStyle = False
          Style.LookAndFeel.SkinName = 'Office2013White'
          Style.TextColor = clGreen
          StyleDisabled.LookAndFeel.NativeStyle = False
          StyleDisabled.LookAndFeel.SkinName = 'Office2013White'
          StyleFocused.LookAndFeel.NativeStyle = False
          StyleFocused.LookAndFeel.SkinName = 'Office2013White'
          StyleHot.LookAndFeel.NativeStyle = False
          StyleHot.LookAndFeel.SkinName = 'Office2013White'
          TabOrder = 0
        end
        object chkInativo: TcxCheckBox
          Left = 66
          Top = 11
          Caption = 'Inativo'
          ParentBackground = False
          ParentColor = False
          Properties.OnEditValueChanged = chkchange
          State = cbsChecked
          Style.Color = clWhite
          Style.LookAndFeel.NativeStyle = False
          Style.LookAndFeel.SkinName = 'Office2013White'
          Style.TextColor = clRed
          StyleDisabled.LookAndFeel.NativeStyle = False
          StyleDisabled.LookAndFeel.SkinName = 'Office2013White'
          StyleFocused.LookAndFeel.NativeStyle = False
          StyleFocused.LookAndFeel.SkinName = 'Office2013White'
          StyleHot.LookAndFeel.NativeStyle = False
          StyleHot.LookAndFeel.SkinName = 'Office2013White'
          TabOrder = 1
        end
      end
      object edt_consulta: TEdit
        Left = 147
        Top = 17
        Width = 284
        Height = 21
        TabOrder = 3
        OnKeyPress = edt_consultaKeyPress
        OnKeyUp = edt_consultaKeyUp
      end
      object cbFiltro: TcxComboBox
        Left = 435
        Top = 15
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
        Properties.OnEditValueChanged = chkchange
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
        TabOrder = 4
        Text = 'Raz'#227'o Social'
        Width = 118
      end
      object cbOrder: TcxComboBox
        Left = 559
        Top = 15
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
        Properties.OnEditValueChanged = chkchange
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
        TabOrder = 5
        Text = 'C'#243'digo'
        Width = 118
      end
      object btn_relatorios_cli: TcxButton
        Left = 1040
        Top = 7
        Width = 97
        Height = 25
        Caption = 'Relat'#243'rios'
        Enabled = False
        LookAndFeel.NativeStyle = False
        LookAndFeel.SkinName = 'Metropolis'
        OptionsImage.Glyph.Data = {
          36040000424D3604000000000000360000002800000010000000100000000100
          2000000000000004000000000000000000000000000000000000000000000000
          00000000000000000002000000060000001000000027896559C6BF8D7BFFC08D
          7BFFBF8D7BFFC08D7BFF896558C3000000140000000A00000007000000000000
          00000000000000000005784F41BDA06855FF8D5C4CFFC2907FFFF7EFECFFF7F0
          EBFFF6EFEBFFF6EFEAFFC2917FFF875746FF8B5948FF623F33BE000000000000
          00000000000000000008BB7E6AFFE3CEBEFFD8C3B5FFC49483FFF8F2EFFFE3B7
          81FFE3B47CFFF8F1EDFFC49583FFE2CCBCFFE6D1C1FFB67764FF000000080000
          000D0000000E00000015BE8470FFEBDACFFFE9D8CEFF794734FF784734FF7847
          34FF784734FF784734FF784734FFECDACEFFEBDBCFFFBA7C69FF87695EC0BB91
          83FFBB9182FFCBB0A6FFC28B78FFF2E7DDFFF2E7DEFFF3E7DEFFF2E5DEFFF3E5
          DEFFF2E7DDFFF2E7DDFFF2E7DEFFF2E7DDFFF2E5DEFFBD836FFFBD9486FFF9F5
          F3FFBD9485FFF5F3F1FFC7927EFFF7F0ECFFCFC1BAFF75574CFF674439FF6644
          38FF654337FF644236FF725249FFCEBEB7FFF7F0ECFFC18A76FFBF9789FFBE96
          88FFC58D61FFD5AE92FFCB9885FFFBF8F6FF745043FF744F43FF744E43FF734E
          42FF724D42FF724C41FF724C40FF7C5E52FFFCF8F6FFC5917CFFC19B8CFFFAF6
          F4FFC79066FFEED8B8FFD1A48EFFF5EAE7FF7F5D4EFFBF8D7CFFFBF8F6FFF0E5
          DFFFEFE5DEFFEFE5DEFF966D5DFF775747FFF4E9E5FFB78876E8C39D8FFFFAF7
          F5FFC9946AFFF1DBB9FFE7CCAFFFD7AE98FF8A6959FFC29180FFFCFAF9FFF1E8
          E1FFF1E7E2FFF1E7E1FF9E7565FF836252FFA27C6DCB33272244C5A092FFFAF7
          F6FFCB976FFFEFD5A9FFF1DBB9FFF1DDBEFFF1DDBEFFC59684FFFDFCFBFFF4EA
          E5FFF2EAE5FFF3EAE3FFC29381FF000000030000000200000001C7A395FFFBF8
          F6FFCD9B73FFF0D4A7FFEFD4A5FFEFD3A5FFF3E0C2FFC79A88FFFEFDFCFFFEFD
          FCFFFDFCFBFFFDFBFBFFC69786FF000000000000000000000000CAA698FFFBF8
          F7FFCF9E77FFF1D6AAFFF0D6A9FFF1D5A9FFF5E3C5FFCFA691FFCA9D8CFFCA9D
          8CFFCA9C8BFFC99C8AFF957366BD000000000000000000000000CBA99AFFFCF9
          F8FFD0A07AFFF1D7ABFFF1D7ABFFF1D7ABFFF4E1BFFFDEBEA3FFFCFAFAFFDAC2
          B8FF000000090000000000000000000000000000000000000000CDAC9DFFCDAB
          9DFFD0A17BFFD0A17BFFD0A17BFFD0A17BFFD0A17BFFD0A17AFFCBA99AFFCBA8
          9AFF000000090000000000000000000000000000000000000000CEAEA0FFFCFA
          F9FFCEAD9FFFFCFAF9FFFCFAF9FFFCF9F9FFFCF9F8FFCDAC9EFFFCF9F8FFCCAB
          9CFF0000000800000000000000000000000000000000000000009A8278C1CFAF
          A1FFCFAFA0FFCFAEA0FFCFAEA1FFCEAEA0FFCEAEA0FFCEAEA0FFCEAD9FFF9880
          76C2000000040000000000000000000000000000000000000000}
        TabOrder = 6
        Visible = False
        OnClick = btn_relatorios_cliClick
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
      ExplicitLeft = 4
      ExplicitTop = 30
      object Label10: TLabel
        Left = 15
        Top = 9
        Width = 33
        Height = 18
        Caption = 'C'#243'd.'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Height = -15
        Font.Name = 'Tahoma'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object btnSintegra: TImage
        Left = 1067
        Top = 470
        Width = 105
        Height = 128
        Hint = 'Ir para o site do Sintegra.'
        Picture.Data = {
          0B546478504E47496D61676589504E470D0A1A0A0000000D4948445200000064
          00000078080600000004F657B40000000467414D410000B18F0BFC6105000000
          097048597300002E1F00002E1F0178EE815F0000001974455874536F66747761
          72650041646F626520496D616765526561647971C9653C000035B74944415478
          5EED7D05585559DBF651E9D3058773E86E102494B65BECEE40ECEE8E19BBB163
          D4B1C74E2CB031B175746C050504043BB8FF67ED734050747CFFF7FB06DFF7E3
          BEAE877DF65A6BAFBDF6BAF753BBE095A004252841094A508212FC74887412AD
          D0FD2CC14F00FE87243728048230DD7A098A13E39ACB977E4A7241C2AF167775
          4525284EDCFBC33EF7C37917BC39ED025A35D19696A058602D13B8E2921B3E9C
          7343EE453734F49536D15595A038D0315C3EF113F98F0FF7551C29B19DCC76EB
          AA4A501CE8514D3AF3D30522E4950911E28CC5DD4CE3755525280E70845C72C2
          87D7227CBC6159424871A384909F0C7984BCBD2CC5C79B2584143B3842AE3A22
          D3CC0A1F6E58951052DC6084BC5FEB804C85062FBBD960718F12428A153DA2A4
          33735CD57872E63CB2E42A2CED5742C83F8152244A1ECFC04DBBFA1931B6A299
          99562E4879FA14A90D5B639EA3AC28424AF1F4F5FD74BF4BF0EF40D4DDFEA0F2
          489D379215619FC4AB23D8A5914278A6B4DCF374E356D49F771E29D7AF234D66
          7E5F575508FC48D5517137D774135FF95C5A95694B39C8F8E5CD9AE97E97A008
          306D60B094FD11F95A915003B2D56190AF0D8528DAEEA1AE8E03468F2E9DADB2
          C9BDFF2419BC3A7B71F6E603643978215DA6B1D035C98791B7729064883BC433
          83205B1FFE49D8D7E5122B373434B411FDE20F7E23ABDFB8863C5E69DDF2FF3C
          CC45CDAC56CA765679CD6F68F1441A1BF4497EA03AC4B30321DA5819B2CD5560
          E021A9A56BCBE1B9B9A64BEA984918B1F90A0C1AED87D7889378BA6D273978F3
          1DBA26F993AB2735AA20DE5009C221DE104F2C07D9F6CA100F7079616029A827
          9A1200F1B23088A6FA3FA6A612BE87BC9576ABFF4330E4F16C25F3029F1BD8C9
          07D2AABD6C6DF83BE9369AA425A110F7768278312DC7FB42BEBB0A44CB226052
          CBF2B281C4841122E03A2064C9D4AF9E3C7A44641C8041E3FD28533F0E0F1F27
          E3855C9DCBEAF5F4F442856DED0EF3BBBB1C35E9E97243F48B1F449D1C200855
          4332C113B2296521EAE6F85EB23C1CC241B4BE3418C2189797F4FB236D6E6064
          6464C5FAF9AF073FC0B4AF7453E54F924D15216C63F34034D1F789646130C48B
          82A1385A0BB2C5411056A449EBEE0CE9DC0048E70440B2242497698C6C57E58F
          46816607DE9B5904648455C5A6D3B7A1DF603F470893619BAE2075ECAF78AED0
          74E1F6555EB5423CCC13E2097E902C0E81745324240BCA43D4D206E2911E90CD
          0B8278B03B847DDD682CF6103372867880DFC2E6948181414DEA82CE9DFF6218
          58C9DCA4F32B4071A01AA40BCB43B1A32224342992A12E108FF181786538C42D
          6D39CD10CF0A847C6F5528F65783785E79D29A0A90C69687BE93B469A64C7523
          E5EC39987639924F0613A3E68790F2F001322466D9BA5D96160CF17C255A4A13
          4D04B3C9178F290B296983B8872BC4BF4742D884C8F9D51F8246D6102F0C81A8
          AD3D24BF47C0C851BE4CD4D79DF563A9EDEABF10E27E6E4F6CF6D487902657B4
          B30A4C269785647908A2BA85D0D95F15E2D800088910C5F19A90FD51913B9365
          6BC221A3335BBA320C92719E4FC1F3D3CFB6F3C09FF71E7366AA2021FAE44BD6
          9FBA858CF06AB8A954553710188D12D4B1BC28194F644F0E84F4B7304897D3BE
          7FF5039933086B5A403EC51FE64BAB43D4C5914827B3D5C991C6140ADBDE1520
          E949048EF47A4343B7D31EC17F17D48EE7DA63F296399868A9C4301F0D2E2ACD
          215C158A639BD7A37F982BFA94B782642299981674B64EF683E2546D28126A42
          B23E1282DE6E77A80FC30C85C5C2679BB6A3EA8CB39C332F48081365E704A49C
          4F42A6DCFC16B52FC38FB23C2E1AE60D516707884793535F4AFE692E455B8BCB
          4338C003E655ECD06FEA50ADF6CCA013A28E15C88C2276712C2CDA7840B28834
          7361F98F64BB22B8A3F86F8170944F8ECDE11638387C2C9A855AA2496D6BC45A
          A9603AD21B9757AC429B0827D4B79043D0D41A92FE2E60D18F681A49B4138C03
          9413A88B52F1E1E17AD92AAB8F7F3D7A82D25185B5234F98D65CBCFD10594E3E
          7828B26039879E30DAF13ECB63440B8221E9E70C413B0708877A90890C85F9B8
          30F49E3F12FC567614699583495D4B22DF05B167FE80F9ACAAA449F690B2D07B
          63F87B761C52A954CC96FFC9B032520AF684EFAD8691E3AA62C1A2A93859DD09
          ABEB3960470D271C8E7440FC81CD181FE58D057E64420ED5A0B3927C06395FC5
          81AA90ACA1899C5B9E9B8C37626B9B97D6CEB8FD88728FBAFB8A24448F0839FB
          27F991AAF5916B661DC98D80C7731735B1C9954C25E7CE9C7A1F178AACBCD128
          CA1AC3464662EE9C51E8DDC6197D47FAA36F6B5A7675C3EE7DBFA3EF8010F835
          B28590C262C9C20A30F655F429C52B3346D7E77F1EF479FA5EF2CD11EF643BAA
          A051735BECED5F09EB174EC79AEE9ED8D0CD1B7BA2BDB03AC60BA70E6CC594D6
          FE981E41DAB1B912E72FC4FD5CC9A993F3DF5409FC10D5325D97BC4C85667EDA
          C4E95876F84FE835F85A4B1AC79EC3D3EDBB98C9BA4ECDE5829AEA4BA27EEE14
          E292D68DF18588A22DC9F472A4817EF8755059ECEE198A8DB3C76247576FECE8
          EC891D34AEED5DBD90B86B25D6C684222AD202E2216E108FF20005084F04752C
          32B423F90F849C2560142D49E6D3193FD10F76F3AA62D4AAA9D867618E5FDDCC
          D1DB4B85BF646A5C5FB91AE33DECE11B6601D98608B2F32150C455E51238515F
          37360165B43D72289529337B9772EB4F58F43A5A880CE35687919C928C1CB906
          CF94CABC9CA594A0AED515165189669176F4728688222E612FD2926847582DAB
          81BEF38643D8D511A2D16521EE620F61436BCCDDBB1296134833C8AF48A75239
          E531E29EB4ED004FF01B5A9ED4F5FD1F01B968905706DF4B7651B2841CE2BA08
          9826D681947EDB5573C4F2A913B1C7568331EE16181C45B67C882B96C5ADC708
          4F72E4BB282BDF5609229A1CC5AE2AE0D7B3F985FA33D276FB19994A6B9F978E
          5EF8F3714ABEE92A1DB50F276E90A9AAD39CF210F597D7A70C8DAB5BC6CB5685
          51D65F511B62CFA51365922F2CA786A2F7AC61E0FB9B41D88EC86847D1570B3B
          CC9E331396732B433A8DFC8A9F2999D06022D209A218474897858012D511BABE
          7F6E085A5A5D66D79FC414D28AC6D29935B12C04B30328E9AB0DDB7575F1EBC6
          19A8E4A1440F27332C76D5704E7C75D22EA8D753E8D9CB0DD2B5E1100D717F61
          6C6CACD175592432949A65CF868DC386E3B7A0D7300E6D179DC7D32D3B902935
          2BF202238349B0A283A8AB739A7838455B5156648ADC61B1A43AFAAC19472131
          85B90B486651B238CE0773B62D87C50CCA93D6518417690ED1504F48A6FA423C
          DC0BA225E4E48958EAD255DBF34F0A3D91C8DFF45C149D452E501CAE89D0B68E
          086D628FC5E18EE0CF0F826A752D8C5A300946C7AA83BF97CC517F7718CE2987
          A5273643318126E3484D22AE0E78467AE5755D168934B9A662B6C2F25DFAED5B
          081E9B48E16F1C34314790F6F03E9E0784E63E57AA63744D8B84B1A7CC42DF4A
          ECAB37D4E3A56C6C28BA2F190583715E30A2A8CB90C25CA395C198B97529E443
          032118EB0DC9CC7210D058655B497B0752783C9F12CB3941E087AB12755DEAEB
          963F172874DC279E1308D9DC00C8F75545A51E5EE86F2AC5768D399A0C298B35
          43AB60CDA26958DEC503CBC9B1AFE8E98DE5BD7C70F2E0368CED10882E3DDDC0
          AF6BB397BACABBEAFB15D2659AC09766B648BB7F0F9E834F7C76EC448AAA4B02
          9E3D4B41B66720B2949643749B7C13ABDB7BECFD7D4445FC3E770C9691435FDE
          8DA4A71796F7F0C6D13DAB11DB370C55CBAB21A8A88130D49CBB5A2019EB0309
          E531F23FC8D78DF5FA6064A4176E24FD49AF7B19B7B4DDA738561B428AE9659B
          222098E18BA7320D1A9755E186950613FA8460F9FCA918DBDA09C39A3A605C3F
          6F8CEBED8584435BD1BB4B209A86681E5037DF3CDBB24CAD2A93667C4ABB7F17
          01A34E419F4C5541A7CE91D2391EA9294FF022A8223294163D749B1689C5AD5C
          7F5B1E53FEAFC5B16330A6B31BC650E8CB4933471C5CB704235BFAA07C7B7B04
          442871E9A4151A8FB08641076D50209E42E6AB2F456E9303DE1B2AF9DD755DFE
          3C10F6727D2CEAE604F1343FC86690FF5814842C911A61AD1C11E768897A1D3D
          70D4D21163B6CC8449234BCCAE60073ED96D138AF1579CD802D320DBE5D4CD37
          35E3B9D22A384765C799258F210534E34BA1EC5D45D9FA53A629DE4C53344375
          5D14895F0E5C978F9C35F11E9F124693C6D6301EEA05C18240CC3BB501A6FD03
          61E429C7E2190EB879518DC7B7659837CB1CC2D19E100FA32C9EF9A2F6149DB5
          B149D675F773C0D05E3A5E79B20EE50D952119E5CE5D39956DAD089BFA3658E1
          A6C6F0104B0C51CB3030C21553964C81304C854702336896074234CE27FBD0E1
          C397C3AA54AFA3EBEE2B64995B56CD565A21FDE103941B5984667C29A429661D
          0F6B35A5422564CA347D755D7D858B172F9AAE5DB7E10F9E40A0E0079AAE9450
          C82D6E6E83B9C7D6C16A6D2D48B744E2569235EE5CD7E0D31B216E5E32477457
          4B88660650A61F0161634B0A04CA31076FACEDF127806C0B45234B4321251BAB
          3C5B0FA25A1650532CBFC45383F3169670AE6A856CA91A0DCBD962E3F87138AF
          546150B0250C64262369F352972F5F3E1852B56A94B6B7C2C8505984BD34B747
          DAA307701F78FCDB9A9127448601238C34C5B4533C5252539053B63CD26516A3
          745D160223E4F775EBB6E85679825E2EEFC59495CFDDBB0A16C329341EE38D7B
          374CF1F2B9041F5E8A90F9540ECBF15E906EAC08D1288A2229FA9293B3D7B396
          76D57551BCA0EC4B299D1700E5A9BA901DA84126AB1C24B141B05B1386E5E6A6
          886CE780BF442A3408B3C2CC60776C993011ED2A59C3764930421462BF352D3C
          A549172E1CA9592DBCF9D2BA1584BA6E39A4AA3435739436487BFC10FE234EFE
          BD6690380E3903D3EE27B4EB448AB2433C9E3D4DC68B902A782E57B31B62F9D8
          D33240747CDD14FBDF7F5FBD63D79010E9A2E67E0A61A4FA8A8C92C18527D643
          D3C415C24E0E38B4D91EEF72C4A4256A3C7F2C82702411322780925657CEC1B3
          A8CB38CC74293F50997F45A13821509EA84D245016DCD616CAD3F5488569B0E4
          F4FE929B639AB912919383D07CA00F0E0EAF860D8BA6634F776FECEDE6837D7D
          CA218EE4CCE11D98DBA13C663474BCACEB93F20CBB90974A6BA43D7904B7FEDF
          F1195F48DCF554CC3DFA50AB29AC8C96CA0E147DA53EA5E8CB1F190A0BA6951C
          B6C6F8241E1856119BE78FE3C6C2492F5FEC89F1C1E99DABB0A957181A37B583
          47841C772FAB70F59C1A337F3387949257A1AF0246B5289719E105C9645F0A87
          DD3E08BA39E5DD87293EE8EBEBFBC8775046BB3888BB00271EE305968B081AD9
          C0215C05E5864A505E6A04879E4EA83F340CB3964E43A5D16551B9BAF5C31E11
          D653A3C3ADA61D3B14F7B059B8FBB63A5E669C03CE905BD6796166FB319DA2A9
          F2454553DF90D2F5E2F0FEE32764BF7E8F5275F7E697EB132916D1E4E8931F23
          2BAC2A698AC520B69F01D5ECDA0D6F526EC1C219536EC5D03898F48CB09E12D9
          C109EB77FD862A8D5CE118ED00E17077788CF1C4F37B0A3836B480600485ED73
          ECB17481150CEBD952D65F1E42325DA2E941DCEDE3E286A17C4715C8F75787B0
          86258C2F3780742191F38B2F64ECCE1FA9B588A217613D4B58CFAA8C312B2643
          48110ACFC444A5DB9EC77C4840B56ADC430CE433C25F995A239526CFA9EF777C
          46C3FD5C1DCBD2F3C466E069E4411E43DB16A8636D65ED0E934F214DF10840A6
          52338EDB1F20261FF207FB9D07BD60F3E57313374135A43C04DD28C4A5CC5D14
          4BC9603B27F8B5B7468D5A2A24DF3347E63319BAF45042B4BE22C4CD6C205B1B
          0E439EA18DAE9BE281098FA792EDAC0AE1B2F2500C77C501576BB84F28CB5D1C
          942C2062D64640B2B30A0CE6FAC23DA12986AD9F9E6BE829E9A6DB9CC3A54B97
          0E7B55AD5A3B5BA50A7B2153E7A6DFBB83F0F189DFD50C8B11FB10BBFB11A66E
          BF932F171EBED0D1011CB8915EA86EEAF627081ABD11965DC97CB1E8CBB70269
          8A267A116052D0A973108964B30E6D7CEB32231CA5297317B00B923D28A4274D
          103B487025D18A9CBB0CB96F05B87BD502367D9D20994ABE736D248BB694DA4E
          8A11B23D553031CC1E82967698259342B3BD12C41329715A110CBD2515103ACC
          0BFB2D4C912DB2409A40F116E6E68532DBA42B570EAD72F69CFE92425B164D79
          0EFA7B9F215A3E008D2E8D0172750C7C07EF3F001FDF54C5BC034DC97C1DE092
          C7E4674F91E315803467AF8D2BB76ED9A41B0A072895824C73DB27390A5B9CA1
          70BD554B0794EE640B4167076806B9E074823DB29E4AF0E9B510D7CE5B60D068
          228B3278F160F78FFC1A1685FAFA476160665C4734BE5CA6A89A06CFC4E6A859
          558319FE56D868A186C9AE4A18DED219573432E484D5C08B3FB6E06EF213641C
          39822C95C3A73499D9F495037CEA6DEAE659EF568FBE975E8855603E236C2C69
          469E43FE8E88970C81E2580DD81C6F8A9B59A9BAA9FF1A39AFAEE06D8E121F5E
          0931735F6BDAF620177D319FC2A2AFCCC89A480A8D3CB372805FBDA503BDA31E
          595AF6CD16AB5E3F5FBB81C64BC9E5A183C8AEDF0AF7344A4C0EB6823CC80C27
          4FD920833484119294A8C69C598E1076B48778AA3F84833C5275D3F3CFC3B899
          DD4EC9964A58E267857E7E1AAC335323B49C39F6389BE205257E2F868D45C6D5
          ABD878F121824625821715871072D2EC7A5356DFC1C83037C3859A6EC8D23872
          9AE13BF4C7A329F1D221501EAFC589E048255C4CBFA7A3E0335233CE52EE5086
          C8107132334E47086DCF48577789C723D2942CF22977021CF1CC4E83EC9A0DB9
          C8AEF98224F0284870EE7714B313EE20FDEE5FC89A321339E67678166A86F444
          193E42803BD72C21EBE208C99A4808BB384338C2ABF8B276E9700AF5D68523A2
          9E0D66845B21DE468A571E41C85EB11A8F29ABEEBFE11A34D1F1DC3D8B3C7FC0
          9682D687B032F12E3276EC44A6AD37526902C2493398F32D38E9DF13E9F2FEF9
          84488E54C61B6697BEC0BBF7D9F8C8DE3FD411326E47A7C2FD90A648C9D1334D
          791E590BCF97FE86C43B8FA1E992F0F98916228E8D5FDAF6103A2FBF8CEBEC61
          BC8D9B91111E856C6F118EB4B0047FB63FF4FBBB938604403823E036AFB45E4F
          DD14FDB35036B6BEBFA8891BD2C50ABC88EE8B1749E771E4CE13CE2197A228A8
          5454D1F7BD99F06AEF43CDC967F034331D8E7D8EFD4B6418343804C9EE66F984
          789CEEAAA3005874F710B2737672BF997B799965974F48E79583BFEE4B77EDEB
          61EA33B45D7C497BC38BCABE6A47C26E8231ADF11F7E0ABF9DBE8F8CEB579139
          FA17BC90A8B1C9420E07F235A59A5BB1FBFF06DA19FA87B091C72B4361E3B65C
          85159E77EE87874F9F21E95E32544C1BAAEFFD211FC0449FCE425E1DD29E1F6C
          9F2F4D28033F512D9F90FDC9D7005290BAE7C74073220CB9AFF59195D91EEFA8
          2C2BFB772243C849D0B8D945F74704F0EAC471135E64FD17C2C6CBABB9079236
          87B0E9DC5D3CCCC840EAECC5F824B5C0155B2BE4CA1C44BAA9FA67B14269D6FD
          A29F1A6F5C8290367D1E6E13319377DD8431A937AFD6F789614F87286312B0EF
          CA03946EA6B5EB3F24142509170C25226A7264488F56C5B19407901DADCB39F9
          A19702F1919CEDC7D77CBC7A618DCCECEB64B6F8E4800550466F2CB24F5E83FD
          D876EE1EBC061DFFE6D32C9C70C4ED4599E6073168CD155C497E86F40D5BF0BA
          7C153C919BA24D2D4A12DBDBA4EBA6A77850E617DFB7411B22115BCF1E2FCDEC
          91D37310D26EDFC2A6A4C7889C408E9C34A00CA979C103E3D5DE8B98651791FA
          E821D263FAE2F2E3148EC46F998A7C21328CDB6F2EA41DCAE3B5213C5A89FB2D
          3B569B4C8F2ADF4471F2529F5B7E7C2540A97AF15FF5C94CD0F1DB8F913A712A
          D2AF5EC1A4DD7F122934DE022713F327BC9A7BE131F804628FDC45CAC3FBC826
          53F5DAC1075BDD4C11DED5157AC3DC29170B05BFAE65B17E73C5D0582D8A674F
          F7190FF784EC440D74EAE08AFB2652BC0DA88417EBFEC08D94540CDD7015FA2D
          0E72441891438FBFFD04CF57ACC10BA1296EF9D920B36E133C4E4F8541CB6F91
          429353FF300C63D6D0C4572F404661B1A5FDE38DA030213A799AA221ADA4FE0B
          F4CB34E3C0F58778DE2E0629566A640895783E6024AE3C79069781C7383FC723
          5F18B3EC124E3F7C86ACC309785DAF319E8914E85BC53A57D1D60E8693BDB91C
          843D3F20DB5C092621A6ECF1A3E28149B8D942F660B278A01BC4BD28399AEC0F
          F9B97A3098EE8DC8C901D858CD1AAFACDC903D642C9E3DBC8745C7EE2185C2CC
          570D9AE3A65C8105F51DAE76AB6E73F2B6D26C77465865DC219367D28126ABF6
          1118D44DE044BFF65118B4D90AE1C241509E2AA81985454ADA71F6F167075E58
          84E8BA6A00A76105C9609A9136623C1ECBCC1246D4B5DFB1BCB5CBC58B76E6EF
          DE8455C3F33F6F626EC25D3CA0DCE9C5A41978E35981925B056A5A4911515509
          93A56174DCCE108F2042629CB92BDCEC89193D6BD170DDF4FCF330696015CF1E
          F117530CAE3C551BD299E5201C5D16C23EAEDCF35582B3519034B146AFD6CE48
          11CBF1AA6E33BC925AE1B0CCBC376D5EC8F1DD1B302C3B33BC2A3948325F3BEB
          43FC477B8837B5873CAE21948995C94CD52892883CA9905815203F5114211FA9
          BC4CC3C2649CB94B5ADA2E1AC99EE5D8FB20056178D32FA0DE4B8A9C5E366B07
          96B08E8A3087CD045F48DCE548D86B8BFBD71D201AEEC1BDCB429939A4B30320
          9DE60BD1482F76E9A4F81E78108C74FF53B1AF1A2493B5EACAEE1A0A7BBA42D4
          DA0ECAD375B96B59E28E0E149B9783D1A60834AA6D8D411B0720B875F5DBBA2E
          F271EEF6CDEE37AAD4B89E135E1D375352204AA803D32226BE28911CA98BB72F
          A44592C164FB99CAF9DAC1C848BCF704193D062025A27AFAE499B30EE886908F
          3DFBF68F6E30A4153AB4768141531B085687C13BDA8EBBAF7EF78619B2522528
          5F530E512535C453CA7219BAFC8F48185A0B0A5DA3FBC7C1F7512E90B0773A7E
          0BE59E719292569892C9E20798413CCE0BE231DE509E8982885D5618E206E9CE
          2A902DAF88ADC7F7C020CC749EAE9B3C943A75F152D61577D3A3992155C839A7
          4310FF7DAD60C24FA8878CE7329A7816DA7E4D06DE9A402F4F33C81F9CBDFF04
          E9AD3BE3B1527EEDF4D52BECFE858B76F7F9A87DE5F295BB92C97E7422F94354
          CD927BA821F18015DE664B70F7A62965F272AC5A684AE58E90FE1602D9C2F230
          AA687E4AB77D31C2D0D04EBEAD0AE45B2B72AF0F487E2DCBDD39942E0A8290B4
          44508DD479723948D9BB1E23899CD3F5209AE08D23174F40D0DDE5B5AE17EE2E
          E19A681FC7A3EB67676C9B3B00F1B6EA272F89943F9FA6409C50BF4822E4E433
          6C4FD4C29334338AA08A26835D6B9AB3B73185DF07B844F53C9191D1BD3FEE59
          983F895F3D06D3064667ECEAE359E8DD0FA9B7D998EDDBB67E10D1448BA7FBC3
          28D00C0A7F152E9DB644C65339D7E7D3072AEC5CA181688A3F992D3718879B3D
          E07BCBD95396DF7C48E31F03BF8D7D167B0657B62C88DD35037B73567EA83AD9
          FEAA100DF2828C0E4CE0A380E2441D48A6F8413AC907A1DB3B61D4D6E9B982B1
          3E7F1AF6F7C0E68E9E4BF7F7F3C3C64E6E3873EEFC5B87D9B345594A8B1E2F43
          C8A7709AF299080589614214A2932A0044C4B7C8609299A6A210361EA588900B
          444666CB8E782E516D9C0F48138E1ECB5DD7C105717DFCB02DDA3BFF2188D99B
          16BDB36F1B982B9E446678593044553470EE648B94FB2A1CDDAF063E0A31EA17
          0DCC7E219FC2DEEC9A4DC73DC11FC63ECAE235577930E4F1ECA53470D91F9520
          5B1701C98A109A3872F013BD21DF5505D255E15024926F696D4B8E99CA477842
          32BF1C8E249D86EF6FC15834D41F077AFBE197BA0E77F5F54DCADEBC795371E6
          CC19EE5668BA423D8A69CAEDA74FC94FD487807C45EB0BA17898664AE12DBF48
          12F284992A7E9BED44C67E5C78908CCC6EFDD863A6BFB37E2F5CB8F0DAD5D5B5
          66AF6073AB256D5D0FC70FF4C78E1EBE372BF8AA17C6271E83C9782F887A902F
          8C71A293CC1BB20815B29E29F1E08635DAC6DAC1E457B2060B89AC7114C074D2
          BE7945DD7EF50C72B141D0DFED95727F3548979487A0828AF323A27A56509259
          11F772812933632BC2B832F69486ACAB337E59D204A736AFC3FA8E6E70A86B95
          A6EB8A4352525270D2C58B5CD91D0FABDF328322F1E8593A729E4B68A2BF4F04
          13BC3384FFF02544C6415C7E988CE7CDDA2259AAFDECC6952B57922B56AC58E8
          C1B64951366DB744BBBFBA76361ECD3B50203296FC1F9DFDA228F21F1D1CB990
          76F502157C5B5842B08CC2FCD95447A658DCCB957BA59A5F537D46D7D5CF01A6
          25E20134D1D37DC19E3017B5650F8FD991B65480626765F0D7D0A093A2209C17
          08BD280BB81EA88E839D3CB17DFF06545BD0810ECEF7ADAEAB7C9096845FB874
          EDCECEE1D570D4D9FCC5EB0A15718F34253B435D24097982F786081F338F1CB8
          968CAC2EBD71D751F562DBA85AAF2E245D4969DEB2E530DD2EF2C0DEB4D5AC5D
          BBBAC3FCD869F8A3B31BE7FFE4646A25EBC36054DF0AFA43C837F674829069C6
          AC004806B94048A6967B4B98F230433371F1DEB62D0AC62D6C1EC8F7D5A0789C
          FCC4EA5048467871F7D92D578661B4B929D6599AA11269C761730DBA4439C1AA
          9B138C67FB20F1CA39F66265BAB0B5D311E360D33EBAEE38EC1C5429F9D2D9E3
          98BD78FEFA17A54DDA670745E0FEB30CE46428BE228239DB8F2F0570EBF71B69
          C6218E8C8C266D916520FA2DF1EA9925870FC4617C7D37F6DE612118CAF995EC
          0785279F397D16C62BFC21A468D184C273FE106F5468A141BF5E6AAC9A650F41
          574A7C5BDB4048818A88345C40FE5130C13FD7D89ADFB7B4BE7E6B5D773F0F04
          B5AC06C956864238DC1B8A4394511FAD01B3390148E7C9E0D5D1095D1ADA43B2
          3218956A592355AA469B400D9931F23D64E68E271C8594C8942C0926E7286BCC
          FADBDCCD73FADE3EE550C9CE70D5F1E3C747275EB8F0E4614CAFBB59DEE5712F
          259534C5021F88843CAD3872CD1F7ACDF7A154E303B8FA2805E91D6290DCA4D5
          FB8433A7D3C68D9BB07C78A42426AE5F392C6EE5329A1BB0F6DEB7A1B0AFE7D3
          B367CF4212A2792589652F1705A152671B9CDD6787D4876ADCBBA1C68513B610
          2DA90061451AF338EE562D2463BDD9FB8FB9FCEA96F7A81F3ED7E34F05137D5F
          D3F3515C24249A1944216E14F861E610ACAF800C8906C39A38C38AFC4B9A4883
          A84015265850384961B0F2700DB82DAA854B679288C49A2CDB7D77A4BBA7EF3E
          8A7E064416BA505766CF91237D6E45F7BA9D552E14779333495354C8792143ED
          C953C0AB710CFA4DF6E3DA23D28C86AD70DB2B206DFCBC79EC655133EDE63CDE
          966EDEA7F6F4F243DF700B073D8151B07DB0DBE4F3D72F435CC512E2051520EA
          EC0455731B5C3BADC6EB2C296E24D9720F329C3F660601F3177D5D2063DA3F23
          00A2E6D6DCC7080CBECE637E1E98B4B4BB2BDD4C21F072F6FE843FCCFDCC20A1
          2C778D4C86FEDE1ADC9499A16D050D263B9AA34617173AA0F2DC2343F21D15A1
          5E1A89F367CEC137A1357676767BBBBEB3D73BEAB2C897F6AF853A8223E5D133
          483B9CD25E056E7910D7EE3D427AFB18DC70B5F8A06B5A08F1A3C3F5B6C578BF
          DDD4C935C3AF7DC4A353A74EC176301141A648CCA2A699FED8B74E85372FE4B8
          9E648DDC372CE730C58ED564A69652FD104F884791660C240D59100C934AEABF
          745DFFB4282DECE49025A77056F25B055C969B62AC1F2554320B54AE6185A966
          4AF4F4B5C051072B72F02C9AF1610F978185CDF21D9520A404F272C2011C593E
          1AFA42BD8392119EAF8D1D4485E2FB1D5DFC4CB651CE72D3C9FA75EA80113871
          ED2E771FBEFF86CB78B6653B9E9A9A7FDCDCBF1C7B60CD5ABB4521A8036D4BB7
          3AB16E06F6EFD80EE399E4A4578743D4DE9E92D9F2ECD31D983EDF1AD7CE9B92
          2914705A72EF8639BA0DB7A3909ECC71236BC8269785747D0414DBB8477EF2B5
          EFA7803260FA0455B989E1BA550E148C5B49A706A4B94E2A87581B15E24C14F0
          6B640F11A9FA18851CCB9D3558EB6001797C75282F50E4D5CC0AB21D442065BD
          DEA322B0AB9303A64C1AFDF240D2910F65B7B482E15C1F089A58C4E9BAE76DEB
          E055765F476F64CA2C729F50265FA6A9F6E616BB5D7CE711257F5E8138D2C41D
          CD7D5485C645700F1E57EF4DE2E9D3194327F7C52A324DAA965E902EAE08E120
          CA25267A5048EE8EEEF39C91FE44814F2F2548BE698D8D8B6D60329834637620
          844D6DC964519EB52512267E8ABCAF0E71300D981E6416348399C8E283B0DABA
          4746CD8F835F6FFB7359C4E2254AF7D1556D6D7B998978160E9A719E1FC757A4
          835E1F0261633585C43E30AA6B0193B86AA8DDC60DB2A56114DF378130BC258C
          EA2C8761DDFD28533701E655A743BFB659AAEA781456C4AFC7CE73FB51614F5B
          F07C0C27B17D6EE85976709AA91A4FE30EA2D294D3F9577099687A1EC5D3FBF7
          91293143F300F56C6E9084D12347F7DB75780F662F9D0771944DAEF850659856
          99008306476058EB00F895E743D0A10F9922F267DDAD317B9E184ECDECA0EAE5
          0863CAA3C46DAD20E94C27553485F2137DC0B7952CF2B35B2456788EAD218958
          3CDFB8EEF60C6E1E6A6C2EF44DAF7F1CA2881587B5931107FD668761D8E2044C
          9AC4C398DD64AAB6FBBD5EB3DD308CDA0EC3A6B46CB013063577C2B036FDAE1B
          47CB03D0AF7F841CF161DA9E5D89D5DEA113D4D90CBEAFE2838CE27BE1C148D8
          1C6884E9C75622EE08454FD76FCCBF51D1FF5C7AA3B63878E53E4AD72B7CBB95
          3D28316ECB55A48E9D84BB6A8B3B976EDF5E76F4C891B4F19B67C17C54308C3A
          B24F7694A3682E0826D537E8F6C984EDFF100C1A1E8341ED4328D3F0100C1BEE
          A31C64178D93C6DF9CC65C8F96CDF640BFDAF65CE346073EB1E3346879823BEE
          BC7EE4210BF6E8A6A678A0711D1268D0A2E0BBE271E0B19B4B6C59278193BCC1
          EAD53F8832F5E96049581BFD02F727F244BFE921A89CFA423CDA9DFB54939492
          30219916495C45986CAA800655C2F6E6A86C712F3905A59B7CBD3D935275F7E1
          FAFDC7C82A5B017D9DBDB61AAFA250765704D8F7B2C473288860EF0976B58799
          430CED8F4DE6177DB007186AD3B8D9FD731A27BB16C6C6CFC65DAAAE76F24B47
          B1E3F8E239806647A0721FE2AF9B9AE2832468EE62C38671B96C50FA4DE3B0FD
          7C180C68B9EE5455AC3B590DC62DE8ACA2ACB965EC08D498F50BA217F743E22D
          5FF80C5EC61D74DE01314D51FA4F85B9AA2924031CB9FB2BD2A515209EE14FF6
          DD87BB0166D6C0EE5DB685632E9BF02FB523BF1F9AD0F8CBF79019590BDE0DEC
          DECAD68743B62808A2760E90B077D3290317F57681B9A631E401B360D0A4F06D
          5D65C72DD87A2E12B6DDD621E15A20A6EE6982D24446CCD2DE98BEA739F8AD76
          A2DB6FBD5171DAA4FC6D0C1B1EF8240D9DCF5EC9FB3920AAB6369D0DACF7FA9E
          789925C3C41D1D3078630F745BD51FB30FB685BADB7A3C4F37C3808DFD51E597
          99F01B178BBB0F1C283ACA9B8C0330F5FB156A22C3DCBC3944BF52F235CC9372
          993ADCF52265621D48881CF9D9BA38235064A61C3F098FA127F327A4A098B43C
          84A777EE204DA87C653CD117D209D4D7788AE6D845400A34D887038CDD6530B3
          68060DEDCFD473346DA7D536A6B53BCE4422235D85BF1EB841DD633D4E5D0D84
          FFD89978F6CC1C2D168FC4A2F82678986C8BE802CF7809ABAF2D5EDF51101AF7
          8191FACDB44F73F06A1DC3E3276A283A6DA29CC00557FE72C7DC836D2884E4A3
          F79AEE587DB41E7874B66D4F0CC1BE8B21D06FA0557BE37A3BA0366B0AB5790B
          8E10F178773AA36D493B7CB90F98C9D68591A929CF5DC2F777961FCD0AA98263
          D7EE738F12E54D0A13F6BDAC315BAF5296DE0DBBC58A39D20D15B9CC5B322F90
          235642444B66F9733796546AEDFED87E8DEAEFCEEF8357F504B23395A839691A
          EE3C764672B2158227CC40EA3335F69EAB805F77B441C494A9885E3DF0F3BE49
          CB34DE130A7D13B258E0C60B1798143818BDFA879196AA80B8C316AC3A561DFB
          2E85A0E38A41E8B7B41F961DAC872DA76AE215C5F61377B4C28B0C53CE2EB3ED
          8CEB6EFB4C88AA3991403949636B989EAFCF7D794E1868CADDF89250E2663CC0
          F1769654959672FB2F2E19CC9F1412FD86FB69029F2043AA62F7C9ED258B8321
          251204D534DA176A0692B4B18370AA1F549AE63A429A815F6B4B7E1FA5EA1DC6
          DB1C0922264FC290759D909A6A0AFF5173F1F4A9256690F98ABB108E7AF3C6A1
          FBDAFE85F66D1CB53B97CD8776668A01161E23C34DEAEEC82A38287667AEDAA4
          A92843075567EA14444D9B0C5EBD78AE5CD27E1B2C7AAE83BCF316F45E360006
          E45B0C38C77C88C2E17D50064E878626476DDE8C9C6F00A42B4221A1A451BEAB
          3AC4E398A6B06B5DA1307296EFBAA3B4ED9ED2AE27066EB808C3FA7B61D4402B
          119313F168ED1F7824B55E6AED3D5A22195F169275946744AA216A6403E1085A
          67DF77A47295AA3191D1028AB213604291944123767250E44766ABC5DC71DCB8
          3B2D1A81A0910BB813A7FCC8F968B760344AD16F65F4060AB17FCF3F6E4EC877
          F16B6DCD52FB8CAFAC9BA27F16728FD12EE290D879FCBA3B5E1835A3A8A43909
          2DF59B90342513466121F79BCC1967D2280A31687E9442475A364A80111DBCB8
          C686E726AD664134B22FF85DCF42D8F13827FC36A720687502FCD6A7C06F7202
          82D627C16F4ACB962721EA701A461D12C16B751CFAADE2216AFB59F45A1C03AF
          E971E851BDA853223960DA9E427161BBD3E0D3767CDA9EDF5CDB8F765FB48F98
          7310B7E9486DA7C1A4E69A37868D0FC2B0513C374EBD261441D2523B7E3A96C6
          3476EE78D871B2DFDAE3366A4A42818DA8E28A234ABF29C1BA292A3EA8DD86F9
          C80266F59005CF1B290F5F305D1EB678AE346CF95269C8C2A5F2E07973E4E5E7
          4C97969F31565A6EDA0065B9490D6C6DBB3B79F1BC4CD9B6A2768A11C2F1E1AF
          059D1321E87C02061D4F439FA4749BF3E0773A89D2EDCEC1B063220CDB1311B4
          34A0A5A03339F44E9414523B26A55B9F8380DAD65B3E1DC94FAD218C3946DB9E
          825EFB33DAB6AC1D2384DA30D1E7FA2062A84ED0F934A4B191B4B462576DF57C
          783E4A27F32E2EB272D31B4A83E7F45784CC1BAD088B9DA20C5B30931D9756E6
          CF5084CE9B2C0B8E1D2A099CD3CDD67B744010CFADE017B3FFB321E335D208BA
          D2A4B53B834FDCAD59096E3CF486BCCF01EE490F76DF7CD48E9E987FA423365D
          A80BF580385CBAE387C74FEDB9B6D71E948549E75378F2D40669691AFC7EB63E
          3C26AFC5AD47DE1C811919E6E4CFAAC37ED456B88DDF88D4742B18E98815449F
          8689BB7AAB6E28256050BB8FB7D4127216B9AF4DC8DC9CC48B4C3946EFEE8D61
          3B869079BA48132FC29263EDF1FA85101E6336E1C63D7772B8E6E035BE46BF7D
          D060D974EC4EAA4551DC9FD4460CD75FD751E02047C4DC05C87C6E86635723E1
          40845CBA1D80A43B9E30EF1FA725A4EB19F8994F53E8865202864284BC312111
          60F3D9DAF835AE3B7A6D1A8D326DCFE2ED4B3111D20E7D360F272D30C5B5BB9E
          3A422EE3E25F15D064C554AC3FD308BC6617919329811B11328734EA55A60CE9
          69E6384E84D88FDC427D1BE1FA3D6FAC3BDB102664D61821F6EA76FFBDDFE6FD
          FF4141423EBD358671CC097C7CC987E7AFBFE30D99ACC7294ED87F3902CB8FB7
          45F315D3B033A90AAEDCF142F2332B4A38EDF13C430D49AFC3789D2DC375325F
          57EE7BC273CA1ACC4AE8846E1BC6E1F973358E5F8BC4D05D7DB1E76225388DDC
          4E040B6144CEBE849022C0111273067CE6D4BBD2594BA6A454C7B310753D8ED2
          1D290AEA9580D2ADCEC3A8CB29187739093DF23506D1E4ACA34F71ED792D2ED1
          3627C06B7B018ABE07C16B99C4F561447EC5980502D4CEB82B397172F6861DCE
          40D8E5040C6398432727CF11D2B4849082F0E3F9E9F31BEC7ACC425F41CC592E
          04E6B3659EB0755D1D57AF5B1A5299014DA83E2D9918E8DAE46D9FFF3B5ABB5E
          B0BFBC3A51F338F6824DF13F71F83342506E72B8D87F5AA582C20F985AB19C4F
          D519C1BE95677839D7EB2FB38A69CCB3A2E4CB6C62E472A5F7F3CD4A9FD7DBA4
          65DFB0E57A85770ECFAC7F2D9EE5C82A4A6AE7ED5E7760B04FE5E9A17EE1B17C
          AFA915BFEC5B10303654B7EB12FC2BF86B8D4D0A6E7B0037DC800BAE7875D411
          5909F6B82252BECC9459E3CD0C53644AAD912C337F97B6CF1E6F8E39233789DA
          5E27A1EDB28EDA7FF9CA4109FE1D5C5F66F980FD476826EFCF6985FD0FDC4B42
          E5AB37EB95F8F04E84B7F1523C169BBFCB39E594DF266F9BD438FBBC07BB4BF0
          3F81EB2BAC9EE08A2B38E1FE3BB42B5E9F71C52591F25596A7066F36CA91D344
          85C752F3779909CEB96F4F533BA6219749689BF48376DCA7CA4BF03F84FE35E5
          83E7B7570E191925EBD12944525B2D143A53B1FC9652F32CCDD40A690A2BA4CB
          ADF0C8CC3287CAD53C9E91654D4741D8802AD2E8A94D9583A73657FEE77EAFFD
          3F0AB6C60159179C9171CE89931AB524DFFD0A6909FE9751C3595EEEE5716724
          EF74C08B04270C6FA4FCEE07944BF0BF0C4F1B03E7FB1B1D716D851DEEAC7740
          EBF2DAE7824B504C70510B9D9EED73C2C3AD0E48D9ED88E615940D755525280E
          843919FB7FB8E886F7675DF19EF293C1F5953FDF17A6FF2FA18A972CF0E54917
          642638E2C531478C696ECADE7F2F4171C1552374BCBDC61E49B1D6B84E7EA44D
          98A289AEAA04C58052837A998FFF73AF13FE24FF718B962307A95751B99EB6BA
          04FF301C44C81522F79D2097842D0108E0E4645651D7A004FF34FC02CD22960F
          56A7FEF98703E26758BCAD142AAFA7AB2A4171C05C6A6485ABEEDC0544768DAB
          49A094FDFFDA1214230459098EEF73B9D0D72D576C68F85FF92F52FFD3A09AD1
          4A39AD9C5A5841B75E821294E0BF0FB9B9B90B4AE4E7111EF7A5E11FC4C74F9F
          90FDEA1D3273DE22E7F57B5007BA9ACF60FFB783C9A74FDA3AF637AFAC2814AC
          63DDE5AD7F4FB46D738BAC2B28458D8FE1F5BB0FC87AF9969337ECA3BE45E043
          11FD316173F07760C79ED7FE5FC50F13F2C7C16BE069FA90F4D28ABA27787683
          71F1C6135D0B2D788A18F0CC7B63D4B293DC7ACECB37E029A9CCAC278E5DBCCF
          9515044F1ECD09435A463678A6DDB9EDBF29BAB6176E3C2EBA3E4F543D713FF9
          39D7360FA999AF20AB3C83EA75C7C0847E2BAACDE24EB2821054F8A5707F05C4
          D07F3CE2CFFCA56BF9351455D83EA82DCDC5BB6F10FE2DFC10217189B751CA79
          28CAB80D87A1E340F05D06A38CC320E8B98F00CF7E201EA464E95A02A51C8770
          E553D79FE5D6735EBD4529276D19CFBADF57672DCF6130C940EE777A660E0CEC
          FAC380D699E8D1FED876A55D87E5971958F7E4DA5EBE95CCD53131A031E5D7E7
          CB001AD76742AEDF7D069E651FAE7D29AA3771190463125EDED8889CB70526CF
          A2CE5CAEBC4C817DEB939426E1DAD3719EBF59F8646460C7C7E684B561D271EA
          415DCD8FE1870829E3A29D98E8E98774255AE8B90EE74892474ED3957C9F1026
          75066EE3CAF35090902FA18898C66DD36CEC1E5DC967E411F2AD6D0B829B241D
          19D2C0F164523E9B92E4D42CAE0F761CAA1AB375A59F09098E59AF2BF90C03CF
          915C9D206082AEE43362B7257175A5E904E6C667DB5F57F363F82142F2181FB1
          F4043E1538C34F5C7E8001F34F60E4F2CFFF62E8EF0861046466BFE1EA18BE47
          883C7C2AB74DFDE13B74259FF1AF1012BB5D3B49EC388AC2CA03D7D064CC5E9C
          BAF24857F2999080CEBFEB4A3EA3DDAFFBBFD95F29C7C15CDD91A47B543F80B4
          7C042EDF4ED6D5FE3D7E889096E3F771E683690ACF66005A8CDB8B2BB752F0EE
          C3475D8BCFF816216C5B75D5995C9D9EFB48AE8EE1DF2584F57DF6DA43245E79
          50484E5DFAECAF9455A6736DED1B2DD695FC3DF208291FBD961C792EE7CC99A3
          7FF3EE23956B2D8643E385BAD65AA465E4709A914794479B155C3B71C8246EFD
          47F0C34EDD821C1F8FB1AFB3EBCCA730BB5B63C0E6427EE15B84B049E74C072D
          59FDF66337B9FA7F97104EC8CE7F29ECECCC43DE59DB82B4A020E66DBB8085BB
          92F285ADE7218F9052CE34762E98D1053496BD39F3A667DB171FBE3821CB7658
          C56D63533F965B4F49CBE2DAB2797BFFFEEB93B728FC30210C2F725EA30DA9AB
          89D7489426DB98478EAAFA2C5D8BEF13C23060C171AE9E67A375F0FF2E214CF3
          5A4CD8F795341AB55BD7F2B30FAC3E60ABAE440B9E1D991446203B0E322D054D
          5021A7EE3800A599F9E1F63714EBE2B527534170C7C2FAA3BE985F62EB4C4A39
          6B4F86E8A985FDEFB7F0B784B073FFFD874FC82A60F7F3D066621CB73336A96C
          E70C7F470843295D8416D465CD577505F13FE5431C1A2FE2DA8A827ED1956811
          BBF32216EDB98251BF25721359B0AF3C422A745DA72DA0C32B9D17593A0FCB3F
          DE3CEC4BFC8BABE3EAADFA8167D19793FCB21F74EE7F4BC8F3AC5794736855F5
          CDDBF7BA522DB8B382D4914D6A36E51B0C3F42C8A3944C3AD3A89D4EC3FEB709
          397BFD11D7968DA3A8132B8DC26DCE3F16414841A79E954373A13B3E558DCF56
          81C1C06BB4761FA425A56DFA161256CE34F0EA9D145DEB6FE3874C168F7203D6
          69198FE1C87CF18A73722C66D7D4D20EBA20FB3F4208835DA305DA81B2EDFF4D
          42DE917D6619F797C29C701E4A3BEACE6E9BFEB848F983D651E7E2DCB5C79C3F
          FC721C4511C2D07BCE51AE9C9D4C67AF69A3B257AFDF71C7C81CFA4B3ADE2FC1
          C263B68D34748AAEE4DBF82142FEBC4F4915B38F6CD0B4E45950164A491E5B67
          0713BBE3A2AEE58F13C2C0B3D5F5F96F10C26D4F63294ABACD88D7B56697423E
          E69FADA5C90F70C7C01CB4CEBFB0E38AECB551D7FADB8430303FC26DC3FC20AD
          470DDBC9ADB3632F0A89571F6ADB73CEFDFB97537ED8A9A766BC8445AD392845
          83284507C696D2D0C95CF85B10C6DE6320A43362F6566DC4C20831F61903234A
          A6BEC49A43D7B8B3A7A83A064D8D395C5F2CCCFE1257FF4AE1EABE2723969DD0
          B5FE8CD12B13694287E51F07F30B8CF097749617844393455C1F913D37E94A3E
          23E7D51B98941DCBD5371BB30786347EF67BCAFA73BA165FC3C87314D7A67FEC
          315D49D1F861424AF0CFA084909F0AC0FF03505EF9B43CA6FB3C000000004945
          4E44AE426082}
        OnClick = btnSintegraClick
      end
      object gpJuridica: TGroupBox
        Left = 15
        Top = 64
        Width = 523
        Height = 150
        Caption = '  P. Jur'#237'dica  '
        Color = clWhite
        DoubleBuffered = False
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'Tahoma'
        Font.Style = [fsBold]
        ParentColor = False
        ParentDoubleBuffered = False
        ParentFont = False
        TabOrder = 15
        object lbl2: TLabel
          Left = 48
          Top = 25
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
          Left = 30
          Top = 49
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
          Left = 268
          Top = 75
          Width = 122
          Height = 18
          Caption = 'Inscri'#231#227'o Estadual:'
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Height = -15
          Font.Name = 'Tahoma'
          Font.Style = []
          ParentFont = False
        end
        object lbl5: TLabel
          Left = 73
          Top = 100
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
        object lbl6: TLabel
          Left = 27
          Top = 125
          Width = 106
          Height = 18
          Caption = 'Ramo Atividade:'
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Height = -15
          Font.Name = 'Tahoma'
          Font.Style = []
          ParentFont = False
        end
        object lbl7: TLabel
          Left = 95
          Top = 75
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
          Left = 265
          Top = 100
          Width = 125
          Height = 18
          Caption = 'Inscri'#231#227'o Municipal:'
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Height = -15
          Font.Name = 'Tahoma'
          Font.Style = []
          ParentFont = False
        end
        object lbl9: TLabel
          Left = 5
          Top = 150
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
        object lbl10: TLabel
          Left = 284
          Top = 150
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
        object dbedtINSCRICAO_ESTADUAL: TDBEdit
          Left = 394
          Top = 74
          Width = 119
          Height = 21
          CharCase = ecUpperCase
          DataField = 'INSCRICAO_ESTADUAL'
          DataSource = DS_Cliente
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = []
          ParentFont = False
          TabOrder = 3
          OnExit = dbedtINSCRICAO_ESTADUALExit
        end
        object cxDBTextEdit32: TcxDBTextEdit
          Left = 136
          Top = 99
          DataBinding.DataField = 'SUFRAMA'
          DataBinding.DataSource = DS_Cliente
          ParentFont = False
          Properties.CharCase = ecUpperCase
          Style.Font.Charset = ANSI_CHARSET
          Style.Font.Color = clWindowText
          Style.Font.Height = -11
          Style.Font.Name = 'Tahoma'
          Style.Font.Style = []
          Style.IsFontAssigned = True
          TabOrder = 4
          OnKeyDown = cxDBTextEdit32KeyDown
          OnKeyPress = cxDBTextEdit32KeyPress
          Width = 126
        end
        object dbedtINSCRICAO_MUNICIPAL: TDBEdit
          Left = 394
          Top = 99
          Width = 119
          Height = 21
          DataField = 'INSCRICAO_MUNICIPAL'
          DataSource = DS_Cliente
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = []
          ParentFont = False
          TabOrder = 5
          OnKeyDown = dbedtINSCRICAO_MUNICIPALKeyDown
          OnKeyPress = dbedtINSCRICAO_MUNICIPALKeyPress
        end
        object dbedt_atividade: TDBEdit
          Left = 136
          Top = 124
          Width = 355
          Height = 21
          CharCase = ecUpperCase
          DataField = 'RAMO_ATIVIDADE'
          DataSource = DS_Cliente
          Enabled = False
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = []
          ParentFont = False
          TabOrder = 6
          OnKeyDown = dbedt_atividadeKeyDown
        end
        object dbedt_fantasia: TDBEdit
          Left = 136
          Top = 49
          Width = 377
          Height = 21
          CharCase = ecUpperCase
          DataField = 'FANTASIA'
          DataSource = DS_Cliente
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = []
          ParentFont = False
          TabOrder = 1
          OnKeyDown = dbedt_fantasiaKeyDown
          OnKeyPress = dbedt_fantasiaKeyPress
        end
        object dbedt_razaosocial: TDBEdit
          Left = 136
          Top = 24
          Width = 377
          Height = 21
          CharCase = ecUpperCase
          DataField = 'RAZAO_SOCIAL'
          DataSource = DS_Cliente
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = []
          ParentFont = False
          TabOrder = 0
          OnKeyDown = dbedt_razaosocialKeyDown
          OnKeyPress = dbedt_razaosocialKeyPress
        end
        object btn_ramo: TcxButton
          Left = 482
          Top = 124
          Width = 23
          Height = 21
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
          TabOrder = 7
          OnClick = btn_ramoClick
        end
        object medt1: TMaskEdit
          Left = 136
          Top = 73
          Width = 126
          Height = 21
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = []
          ParentFont = False
          TabOrder = 2
          Text = 'MaskEdit1'
          OnEnter = medt1Enter
          OnExit = medt1Exit
          OnKeyDown = medt1KeyDown
          OnKeyPress = medt1KeyPress
          OnKeyUp = medt1KeyUp
        end
        object dbcbbSITUACAO_FINANCEIRA: TDBComboBox
          Left = 136
          Top = 152
          Width = 126
          Height = 22
          Style = csOwnerDrawFixed
          CharCase = ecUpperCase
          DataField = 'SITUACAO_FINANCEIRA'
          DataSource = DS_Cliente
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = []
          Items.Strings = (
            'ATIVO'
            'BLOQUEADO PARCIAL'
            'BLOQUEADO')
          ParentFont = False
          TabOrder = 8
          OnKeyPress = dbcbbSITUACAO_FINANCEIRAKeyPress
        end
        object cxDBTextEdit58: TcxDBTextEdit
          Left = 394
          Top = 151
          DataBinding.DataField = 'LIMITE_CREDITO'
          DataBinding.DataSource = DS_Cliente
          ParentColor = True
          ParentFont = False
          Style.Font.Charset = ANSI_CHARSET
          Style.Font.Color = clWindowText
          Style.Font.Height = -11
          Style.Font.Name = 'Tahoma'
          Style.Font.Style = []
          Style.IsFontAssigned = True
          TabOrder = 9
          OnKeyPress = cxDBTextEdit58KeyPress
          Width = 119
        end
      end
      object GroupBox9: TGroupBox
        Left = 544
        Top = 500
        Width = 505
        Height = 98
        Caption = '  Observa'#231#245'es  '
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -12
        Font.Name = 'Tahoma'
        Font.Style = [fsBold]
        ParentFont = False
        TabOrder = 16
        object DBMemo1: TDBMemo
          Left = 7
          Top = 20
          Width = 490
          Height = 71
          DataField = 'OBSERVACAO'
          DataSource = DS_Cliente
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Height = -12
          Font.Name = 'Tahoma'
          Font.Style = []
          ParentFont = False
          TabOrder = 0
        end
      end
      object chk_ativo_cadastro: TcxCheckBox
        Left = 302
        Top = 23
        Caption = 'Ativo'
        ParentBackground = False
        ParentColor = False
        ParentFont = False
        ParentShowHint = False
        ShowHint = False
        State = cbsChecked
        Style.BorderColor = clWindow
        Style.Color = clBtnHighlight
        Style.Font.Charset = ANSI_CHARSET
        Style.Font.Color = clWindowText
        Style.Font.Height = -15
        Style.Font.Name = 'Tahoma'
        Style.Font.Style = [fsBold]
        Style.LookAndFeel.NativeStyle = False
        Style.LookAndFeel.SkinName = 'Office2013White'
        Style.Shadow = False
        Style.IsFontAssigned = True
        StyleDisabled.LookAndFeel.NativeStyle = False
        StyleDisabled.LookAndFeel.SkinName = 'Office2013White'
        StyleFocused.LookAndFeel.NativeStyle = False
        StyleFocused.LookAndFeel.SkinName = 'Office2013White'
        StyleHot.LookAndFeel.NativeStyle = False
        StyleHot.LookAndFeel.SkinName = 'Office2013White'
        TabOrder = 4
        Transparent = True
      end
      object chk_rural: TcxCheckBox
        Left = 381
        Top = 23
        Caption = 'Produtor Rural'
        Enabled = False
        ParentBackground = False
        ParentColor = False
        ParentFont = False
        Properties.Alignment = taLeftJustify
        Properties.OnChange = chk_ruralPropertiesChange
        Style.BorderColor = clWindow
        Style.Color = clBtnHighlight
        Style.Font.Charset = ANSI_CHARSET
        Style.Font.Color = clWindowText
        Style.Font.Height = -15
        Style.Font.Name = 'Tahoma'
        Style.Font.Style = [fsBold]
        Style.LookAndFeel.NativeStyle = False
        Style.LookAndFeel.SkinName = 'Office2013White'
        Style.Shadow = False
        Style.IsFontAssigned = True
        StyleDisabled.LookAndFeel.NativeStyle = False
        StyleDisabled.LookAndFeel.SkinName = 'Office2013White'
        StyleFocused.LookAndFeel.NativeStyle = False
        StyleFocused.LookAndFeel.SkinName = 'Office2013White'
        StyleHot.LookAndFeel.NativeStyle = False
        StyleHot.LookAndFeel.SkinName = 'Office2013White'
        TabOrder = 5
        Transparent = True
      end
      object GroupBox8: TGroupBox
        Left = 94
        Top = 8
        Width = 187
        Height = 51
        Caption = '  TIPO PESSOA  '
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'Tahoma'
        Font.Style = [fsBold]
        ParentFont = False
        TabOrder = 0
        object BtnFisica: TcxButton
          Left = 8
          Top = 18
          Width = 75
          Height = 25
          Caption = 'F'#237'sica'
          Enabled = False
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
          Left = 92
          Top = 18
          Width = 88
          Height = 25
          Caption = 'Jur'#237'dica'
          Enabled = False
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
      object PageControl3: TPageControl
        Left = 17
        Top = 297
        Width = 523
        Height = 208
        ActivePage = TabSheet7
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'Tahoma'
        Font.Style = [fsBold]
        ParentFont = False
        Style = tsFlatButtons
        TabOrder = 12
        object TabSheet7: TTabSheet
          Caption = 'Endere'#231'o'
          object TLabel
            Left = 64
            Top = 144
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
          object Label14: TLabel
            Left = 22
            Top = 13
            Width = 92
            Height = 17
            Caption = 'Rua | Avenida:'
            Font.Charset = ANSI_CHARSET
            Font.Color = clBlack
            Font.Height = -15
            Font.Name = 'Helvetica Neue'
            Font.Style = []
            ParentFont = False
          end
          object Label19: TLabel
            Left = 58
            Top = 40
            Width = 56
            Height = 17
            Caption = 'N'#250'mero:'
            Font.Charset = ANSI_CHARSET
            Font.Color = clBlack
            Font.Height = -15
            Font.Name = 'Helvetica Neue'
            Font.Style = []
            ParentFont = False
          end
          object TLabel
            Left = 18
            Top = 66
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
          object TLabel
            Left = 50
            Top = 117
            Width = 64
            Height = 17
            Caption = 'Mun'#237'cipio:'
            Font.Charset = ANSI_CHARSET
            Font.Color = clBlack
            Font.Height = -15
            Font.Name = 'Helvetica Neue'
            Font.Style = []
            ParentFont = False
          end
          object TLabel
            Left = 344
            Top = 66
            Width = 35
            Height = 17
            Caption = 'CEP:'
            Font.Charset = ANSI_CHARSET
            Font.Color = clBlack
            Font.Height = -15
            Font.Name = 'Helvetica Neue'
            Font.Style = []
            ParentFont = False
          end
          object Label48: TLabel
            Left = 195
            Top = 40
            Width = 43
            Height = 17
            Caption = 'Bairro:'
            Font.Charset = ANSI_CHARSET
            Font.Color = clBlack
            Font.Height = -15
            Font.Name = 'Helvetica Neue'
            Font.Style = []
            ParentFont = False
          end
          object TLabel
            Left = 273
            Top = 144
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
            Left = 270
            Top = 116
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
          object TLabel
            Left = 399
            Top = 144
            Width = 68
            Height = 17
            Caption = 'C'#243'd. Pa'#237's:'
            Font.Charset = ANSI_CHARSET
            Font.Color = clWindowText
            Font.Height = -15
            Font.Name = 'Helvetica Neue'
            Font.Style = []
            ParentFont = False
          end
          object TLabel
            Left = 444
            Top = 116
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
            Left = 78
            Top = 92
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
            Left = 318
            Top = 92
            Width = 35
            Height = 17
            Caption = 'Rota:'
            Font.Charset = ANSI_CHARSET
            Font.Color = clWindowText
            Font.Height = -15
            Font.Name = 'Helvetica Neue'
            Font.Style = []
            ParentFont = False
          end
          object DBEdit78: TDBEdit
            Left = 384
            Top = 64
            Width = 97
            Height = 21
            CharCase = ecUpperCase
            DataField = 'CEP'
            DataSource = DS_Cliente
            Font.Charset = ANSI_CHARSET
            Font.Color = clWindowText
            Font.Height = -11
            Font.Name = 'Tahoma'
            Font.Style = []
            ParentFont = False
            TabOrder = 8
            OnKeyDown = DBEdit78KeyDown
            OnKeyPress = DBEdit78KeyPress
          end
          object DBEdit77: TDBEdit
            Left = 118
            Top = 64
            Width = 195
            Height = 21
            CharCase = ecUpperCase
            DataField = 'COMPLEMENTO'
            DataSource = DS_Cliente
            Font.Charset = ANSI_CHARSET
            Font.Color = clWindowText
            Font.Height = -11
            Font.Name = 'Tahoma'
            Font.Style = []
            ParentFont = False
            TabOrder = 3
            OnKeyDown = DBEdit77KeyDown
          end
          object DBEdit75: TDBEdit
            Left = 118
            Top = 38
            Width = 72
            Height = 21
            BiDiMode = bdRightToLeft
            CharCase = ecUpperCase
            DataField = 'NUMERO'
            DataSource = DS_Cliente
            Font.Charset = ANSI_CHARSET
            Font.Color = clWindowText
            Font.Height = -11
            Font.Name = 'Tahoma'
            Font.Style = []
            ParentBiDiMode = False
            ParentFont = False
            TabOrder = 1
            OnKeyDown = DBEdit75KeyDown
            OnKeyPress = DBEdit75KeyPress
          end
          object DBEdit76: TDBEdit
            Left = 118
            Top = 11
            Width = 363
            Height = 21
            CharCase = ecUpperCase
            Color = clHighlightText
            DataField = 'ENDERECO'
            DataSource = DS_Cliente
            Enabled = False
            Font.Charset = ANSI_CHARSET
            Font.Color = clWindowText
            Font.Height = -11
            Font.Name = 'Tahoma'
            Font.Style = []
            ParentFont = False
            TabOrder = 0
            OnKeyDown = DBEdit76KeyDown
          end
          object DBEdit79: TDBEdit
            Left = 241
            Top = 38
            Width = 266
            Height = 21
            CharCase = ecUpperCase
            DataField = 'BAIRRO'
            DataSource = DS_Cliente
            Font.Charset = ANSI_CHARSET
            Font.Color = clWindowText
            Font.Height = -11
            Font.Name = 'Tahoma'
            Font.Style = []
            ParentFont = False
            TabOrder = 2
            OnKeyDown = DBEdit79KeyDown
          end
          object DBEdit83: TDBEdit
            Left = 312
            Top = 142
            Width = 80
            Height = 21
            CharCase = ecUpperCase
            DataField = 'PAIS'
            DataSource = DS_Cliente
            Enabled = False
            Font.Charset = ANSI_CHARSET
            Font.Color = clWindowText
            Font.Height = -11
            Font.Name = 'Tahoma'
            Font.Style = []
            ParentFont = False
            TabOrder = 9
          end
          object DBEdit80: TDBEdit
            Left = 375
            Top = 114
            Width = 64
            Height = 21
            CharCase = ecUpperCase
            DataField = 'CODIGO_MUNICIPIO'
            DataSource = DS_Cliente
            Enabled = False
            Font.Charset = ANSI_CHARSET
            Font.Color = clWindowText
            Font.Height = -11
            Font.Name = 'Tahoma'
            Font.Style = []
            ParentFont = False
            TabOrder = 6
          end
          object DBEdit82: TDBEdit
            Left = 470
            Top = 114
            Width = 39
            Height = 21
            CharCase = ecUpperCase
            DataField = 'ESTADO'
            DataSource = DS_Cliente
            Enabled = False
            Font.Charset = ANSI_CHARSET
            Font.Color = clWindowText
            Font.Height = -11
            Font.Name = 'Tahoma'
            Font.Style = []
            ParentFont = False
            TabOrder = 7
          end
          object DBEdit104: TDBEdit
            Left = 470
            Top = 142
            Width = 39
            Height = 21
            CharCase = ecUpperCase
            DataField = 'CODIGO_PAIS'
            DataSource = DS_Cliente
            Enabled = False
            Font.Charset = ANSI_CHARSET
            Font.Color = clWindowText
            Font.Height = -11
            Font.Name = 'Tahoma'
            Font.Style = []
            ParentFont = False
            TabOrder = 10
          end
          object DBEdit81: TDBEdit
            Left = 118
            Top = 115
            Width = 119
            Height = 21
            CharCase = ecUpperCase
            DataField = 'MUNICIPIO'
            DataSource = DS_Cliente
            Enabled = False
            Font.Charset = ANSI_CHARSET
            Font.Color = clWindowText
            Font.Height = -11
            Font.Name = 'Tahoma'
            Font.Style = []
            ParentFont = False
            TabOrder = 4
            OnKeyDown = DBEdit81KeyDown
          end
          object btnMunicipE1: TcxButton
            Left = 239
            Top = 112
            Width = 25
            Height = 26
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
            TabOrder = 5
            OnClick = btnMunicipE1Click
          end
          object btn_cep_1: TcxButton
            Left = 482
            Top = 62
            Width = 27
            Height = 25
            LookAndFeel.NativeStyle = False
            LookAndFeel.SkinName = 'Metropolis'
            OptionsImage.Glyph.Data = {
              36040000424D3604000000000000360000002800000010000000100000000100
              2000000000000004000000000000000000000000000000000000000000000000
              0000000000020000000A000000140000001B000000170000000D000000060000
              000E0000001D000000250000001F000000110000000400000000000000000000
              00020000000E291F177C4C3B2BCD664B39F949372AD0271D168600000029261C
              148B483326D75C4730FA443226DA241B12930000001D00000004000000000000
              00072A2119789A897EFCC6BFB8FFE3E1DEFFC3BCB5FF968677FD402F23C99384
              75FDBEB6AFFFDAD7D5FFBBB3ADFF8E7F6FFD231B139200000011000000000000
              000E543F30CACAC1BBFF9F8A7AFF7D614CFF785E48FF745945FF6F5541FF6B52
              3DFF684E3AFF654C37FF857364FFBCB3ADFF473425D90000001F000000031008
              0532735742FDE8E6E4FF896E56FFA8A29DFF826651FFFFFFFFFFDAD8D5FFD4D3
              D1FF7A5F49FF9B9590FF684E3AFFDBD8D6FF5D4834FA000000230000000C6D39
              24AC885D46FFCDC5BEFFA89382FF8D715AFF896D56FF866A54FF816550FF7D61
              4CFF795E48FF745944FF8D7969FFBFB7B0FF493526D50000001B3B1F1164C46B
              45FEA56647FFA49485FFCDC4BEFFE8E6E4FFCBC2BCFF9E8E80FF744D37FF9C8B
              7DFFC5BCB6FFE0DEDCFFC2B9B3FF958475FD261D15870000000E713B21AAD17B
              4DFF9E713FFF6D5C33FF5F5936FF745C45FF6E583BFF976042FFBF6844FF6D56
              2DFF605332FF6D523DFF724B38FC281E168E00000014000000039D512EDDA77F
              46FF54691DFFC1935CFFBE915AFFC5905BFFD6945FFFE2925FFFCE7D4FFF406B
              11FF2F8F28FF568044FFB9614DFD000000270000000300000000B56034FB6271
              27FF9D8C50FFAE9D5BFFE3BC7AFFF2BF7EFFF1B678FFEEA86FFFCE8B58FF4480
              27FF4AB25BFF67905CFFC86E56FF000000200000000000000000A0552FDC637C
              2AFF3C731DFF2E7E15FFA5A460FFE9C986FFF3C684FFF1BA7AFFD59964FF6887
              45FF5FC886FF7D8B60FFC0684EF90000001A0000000000000000743F23A59285
              40FF298818FF28971CFF43892BFFAFAA6BFFE5C785FFF1C382FFD8A56BFF8095
              5DFF7F8F60FFB87350FF9E563FD80000001200000000000000003E22125BB972
              3DFC6E9C43FF43A138FF5EB556FF78B96EFFA9AA70FFDEC07EFFB6985BFF427D
              14FF8E7936FFCC7752FE4C281B80000000090000000000000000000000056839
              1E94B4834CFF96B773FF81AE79FF94B087FFA8B592FFA39C5DFF3C8213FF5B7F
              23FFC87F52FF7E462FB70000001100000002000000000000000000000001110A
              051C68391F94BC7845FCC4AE82FFB6B38EFFBDBFA7FF8A9B67FF8E8E4DFFBD7C
              4BFE724026A91008052700000003000000000000000000000000000000000000
              0001000000053E22125B743F23A5A0552FDCB66135FB9E512EDD713C21AA3B1F
              11640000000C0000000300000000000000000000000000000000}
            TabOrder = 11
            OnClick = btn_cep_1Click
          end
          object DBEdit1: TDBEdit
            Left = 118
            Top = 90
            Width = 120
            Height = 21
            CharCase = ecUpperCase
            Color = clHighlightText
            DataField = 'ZONA'
            DataSource = DS_Cliente
            Enabled = False
            Font.Charset = ANSI_CHARSET
            Font.Color = clWindowText
            Font.Height = -11
            Font.Name = 'Tahoma'
            Font.Style = []
            ParentFont = False
            TabOrder = 12
            OnKeyDown = DBEdit77KeyDown
          end
          object DBEdit3: TDBEdit
            Left = 358
            Top = 90
            Width = 123
            Height = 21
            CharCase = ecUpperCase
            Color = clHighlightText
            DataField = 'ROTA'
            DataSource = DS_Cliente
            Enabled = False
            Font.Charset = ANSI_CHARSET
            Font.Color = clWindowText
            Font.Height = -11
            Font.Name = 'Tahoma'
            Font.Style = []
            ParentFont = False
            TabOrder = 13
          end
          object btn_zona: TcxButton
            Left = 239
            Top = 87
            Width = 25
            Height = 26
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
            TabOrder = 14
            OnClick = btn_zonaClick
          end
          object bnt_rota: TcxButton
            Left = 482
            Top = 87
            Width = 25
            Height = 26
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
            TabOrder = 15
            OnClick = bnt_rotaClick
          end
          object btn_endereco: TcxButton
            Left = 482
            Top = 8
            Width = 25
            Height = 26
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
            TabOrder = 16
            OnClick = btn_enderecoClick
          end
          object DBComboBox1: TDBComboBox
            Left = 118
            Top = 141
            Width = 145
            Height = 22
            Style = csOwnerDrawFixed
            CharCase = ecUpperCase
            DataField = 'REGIAO'
            DataSource = DS_Cliente
            Font.Charset = ANSI_CHARSET
            Font.Color = clWindowText
            Font.Height = -11
            Font.Name = 'Tahoma'
            Font.Style = []
            Items.Strings = (
              'SUL'
              'NORTE'
              'SUDESTE'
              'CENTRO OESTE'
              'NORDESTE')
            ParentFont = False
            TabOrder = 17
            OnKeyPress = dbcbbSITUACAO_FINANCEIRAKeyPress
          end
        end
        object TabSheet8: TTabSheet
          Caption = 'Endere'#231'o Entrega'
          ImageIndex = 1
          object Label60: TLabel
            Left = 194
            Top = 38
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
          object Label29: TLabel
            Left = 22
            Top = 13
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
          object Label31: TLabel
            Left = 58
            Top = 38
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
            Left = 18
            Top = 63
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
          object TLabel
            Left = 50
            Top = 90
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
            Left = 79
            Top = 118
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
            Left = 340
            Top = 63
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
            Left = 444
            Top = 90
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
            Left = 270
            Top = 90
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
          object TLabel
            Left = 261
            Top = 118
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
            Left = 399
            Top = 118
            Width = 68
            Height = 17
            Caption = 'C'#243'd. Pa'#237's:'
            Font.Charset = ANSI_CHARSET
            Font.Color = clWindowText
            Font.Height = -15
            Font.Name = 'Helvetica Neue'
            Font.Style = []
            ParentFont = False
          end
          object DBEdit84: TDBEdit
            Left = 118
            Top = 116
            Width = 97
            Height = 21
            CharCase = ecUpperCase
            DataField = 'ENTREGA_CEP'
            DataSource = DS_Cliente
            Font.Charset = ANSI_CHARSET
            Font.Color = clWindowText
            Font.Height = -11
            Font.Name = 'Tahoma'
            Font.Style = []
            ParentFont = False
            TabOrder = 9
            OnKeyDown = DBEdit84KeyDown
            OnKeyPress = DBEdit84KeyPress
          end
          object DBEdit85: TDBEdit
            Left = 118
            Top = 88
            Width = 121
            Height = 21
            CharCase = ecUpperCase
            DataField = 'ENTREGA_MUNICIPIO'
            DataSource = DS_Cliente
            Enabled = False
            Font.Charset = ANSI_CHARSET
            Font.Color = clWindowText
            Font.Height = -11
            Font.Name = 'Tahoma'
            Font.Style = []
            ParentFont = False
            TabOrder = 5
            OnKeyDown = DBEdit85KeyDown
          end
          object dbedit86: TDBEdit
            Left = 118
            Top = 61
            Width = 213
            Height = 21
            CharCase = ecUpperCase
            DataField = 'ENTREGA_COMPLEMENTO'
            DataSource = DS_Cliente
            Font.Charset = ANSI_CHARSET
            Font.Color = clWindowText
            Font.Height = -11
            Font.Name = 'Tahoma'
            Font.Style = []
            ParentFont = False
            TabOrder = 3
            OnKeyDown = dbedit86KeyDown
          end
          object DBEdit87: TDBEdit
            Left = 118
            Top = 36
            Width = 72
            Height = 21
            BiDiMode = bdRightToLeft
            CharCase = ecUpperCase
            DataField = 'ENTREGA_NUMERO'
            DataSource = DS_Cliente
            Font.Charset = ANSI_CHARSET
            Font.Color = clWindowText
            Font.Height = -11
            Font.Name = 'Tahoma'
            Font.Style = []
            ParentBiDiMode = False
            ParentFont = False
            TabOrder = 1
            OnKeyDown = DBEdit87KeyDown
            OnKeyPress = DBEdit87KeyPress
          end
          object DBEdit88: TDBEdit
            Left = 118
            Top = 11
            Width = 386
            Height = 21
            CharCase = ecUpperCase
            DataField = 'ENTREGA_ENDERECO'
            DataSource = DS_Cliente
            Font.Charset = ANSI_CHARSET
            Font.Color = clWindowText
            Font.Height = -11
            Font.Name = 'Tahoma'
            Font.Style = []
            ParentFont = False
            TabOrder = 0
            OnKeyDown = DBEdit88KeyDown
          end
          object DBEdit89: TDBEdit
            Left = 239
            Top = 36
            Width = 265
            Height = 21
            CharCase = ecUpperCase
            DataField = 'ENTREGA_BAIRRO'
            DataSource = DS_Cliente
            Font.Charset = ANSI_CHARSET
            Font.Color = clWindowText
            Font.Height = -11
            Font.Name = 'Tahoma'
            Font.Style = []
            ParentFont = False
            TabOrder = 2
            OnKeyDown = DBEdit89KeyDown
          end
          object DBEdit90: TDBEdit
            Left = 298
            Top = 116
            Width = 81
            Height = 21
            CharCase = ecUpperCase
            DataField = 'ENTREGA_PAIS'
            DataSource = DS_Cliente
            Enabled = False
            Font.Charset = ANSI_CHARSET
            Font.Color = clWindowText
            Font.Height = -11
            Font.Name = 'Tahoma'
            Font.Style = []
            ParentFont = False
            TabOrder = 10
          end
          object DBEdit91: TDBEdit
            Left = 372
            Top = 88
            Width = 64
            Height = 21
            CharCase = ecUpperCase
            DataField = 'ENTREGA_CODIGO_MUNICIPIO'
            DataSource = DS_Cliente
            Enabled = False
            Font.Charset = ANSI_CHARSET
            Font.Color = clWindowText
            Font.Height = -11
            Font.Name = 'Tahoma'
            Font.Style = []
            ParentFont = False
            TabOrder = 7
          end
          object DBEdit92: TDBEdit
            Left = 470
            Top = 116
            Width = 34
            Height = 21
            CharCase = ecUpperCase
            DataField = 'ENTREGA_CODIGO_PAIS'
            DataSource = DS_Cliente
            Enabled = False
            Font.Charset = ANSI_CHARSET
            Font.Color = clWindowText
            Font.Height = -11
            Font.Name = 'Tahoma'
            Font.Style = []
            ParentFont = False
            TabOrder = 11
          end
          object DBEdit93: TDBEdit
            Left = 470
            Top = 88
            Width = 34
            Height = 21
            CharCase = ecUpperCase
            DataField = 'ENTREGA_ESTADO'
            DataSource = DS_Cliente
            Enabled = False
            Font.Charset = ANSI_CHARSET
            Font.Color = clWindowText
            Font.Height = -11
            Font.Name = 'Tahoma'
            Font.Style = []
            ParentFont = False
            TabOrder = 8
          end
          object DBEdit94: TDBEdit
            Left = 394
            Top = 61
            Width = 110
            Height = 21
            CharCase = ecUpperCase
            DataField = 'ENTREGA_REGIAO'
            DataSource = DS_Cliente
            Font.Charset = ANSI_CHARSET
            Font.Color = clWindowText
            Font.Height = -11
            Font.Name = 'Tahoma'
            Font.Style = []
            ParentFont = False
            TabOrder = 4
            OnKeyDown = DBEdit94KeyDown
            OnKeyPress = DBEdit94KeyPress
          end
          object btnMunicipE2: TcxButton
            Left = 239
            Top = 85
            Width = 25
            Height = 26
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
            TabOrder = 6
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -11
            Font.Name = 'Tahoma'
            Font.Style = [fsBold]
            ParentFont = False
            OnClick = btnMunicipE2Click
          end
          object btn_cep_2: TcxButton
            Left = 212
            Top = 113
            Width = 27
            Height = 25
            LookAndFeel.NativeStyle = False
            LookAndFeel.SkinName = 'Metropolis'
            OptionsImage.Glyph.Data = {
              36040000424D3604000000000000360000002800000010000000100000000100
              2000000000000004000000000000000000000000000000000000000000000000
              0000000000020000000A000000140000001B000000170000000D000000060000
              000E0000001D000000250000001F000000110000000400000000000000000000
              00020000000E291F177C4C3B2BCD664B39F949372AD0271D168600000029261C
              148B483326D75C4730FA443226DA241B12930000001D00000004000000000000
              00072A2119789A897EFCC6BFB8FFE3E1DEFFC3BCB5FF968677FD402F23C99384
              75FDBEB6AFFFDAD7D5FFBBB3ADFF8E7F6FFD231B139200000011000000000000
              000E543F30CACAC1BBFF9F8A7AFF7D614CFF785E48FF745945FF6F5541FF6B52
              3DFF684E3AFF654C37FF857364FFBCB3ADFF473425D90000001F000000031008
              0532735742FDE8E6E4FF896E56FFA8A29DFF826651FFFFFFFFFFDAD8D5FFD4D3
              D1FF7A5F49FF9B9590FF684E3AFFDBD8D6FF5D4834FA000000230000000C6D39
              24AC885D46FFCDC5BEFFA89382FF8D715AFF896D56FF866A54FF816550FF7D61
              4CFF795E48FF745944FF8D7969FFBFB7B0FF493526D50000001B3B1F1164C46B
              45FEA56647FFA49485FFCDC4BEFFE8E6E4FFCBC2BCFF9E8E80FF744D37FF9C8B
              7DFFC5BCB6FFE0DEDCFFC2B9B3FF958475FD261D15870000000E713B21AAD17B
              4DFF9E713FFF6D5C33FF5F5936FF745C45FF6E583BFF976042FFBF6844FF6D56
              2DFF605332FF6D523DFF724B38FC281E168E00000014000000039D512EDDA77F
              46FF54691DFFC1935CFFBE915AFFC5905BFFD6945FFFE2925FFFCE7D4FFF406B
              11FF2F8F28FF568044FFB9614DFD000000270000000300000000B56034FB6271
              27FF9D8C50FFAE9D5BFFE3BC7AFFF2BF7EFFF1B678FFEEA86FFFCE8B58FF4480
              27FF4AB25BFF67905CFFC86E56FF000000200000000000000000A0552FDC637C
              2AFF3C731DFF2E7E15FFA5A460FFE9C986FFF3C684FFF1BA7AFFD59964FF6887
              45FF5FC886FF7D8B60FFC0684EF90000001A0000000000000000743F23A59285
              40FF298818FF28971CFF43892BFFAFAA6BFFE5C785FFF1C382FFD8A56BFF8095
              5DFF7F8F60FFB87350FF9E563FD80000001200000000000000003E22125BB972
              3DFC6E9C43FF43A138FF5EB556FF78B96EFFA9AA70FFDEC07EFFB6985BFF427D
              14FF8E7936FFCC7752FE4C281B80000000090000000000000000000000056839
              1E94B4834CFF96B773FF81AE79FF94B087FFA8B592FFA39C5DFF3C8213FF5B7F
              23FFC87F52FF7E462FB70000001100000002000000000000000000000001110A
              051C68391F94BC7845FCC4AE82FFB6B38EFFBDBFA7FF8A9B67FF8E8E4DFFBD7C
              4BFE724026A91008052700000003000000000000000000000000000000000000
              0001000000053E22125B743F23A5A0552FDCB66135FB9E512EDD713C21AA3B1F
              11640000000C0000000300000000000000000000000000000000}
            TabOrder = 12
            OnClick = btn_cep_2Click
          end
        end
        object TabSheet9: TTabSheet
          Caption = 'Endere'#231'o Cobran'#231'a'
          ImageIndex = 2
          object Label33: TLabel
            Left = 22
            Top = 13
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
          object Label34: TLabel
            Left = 58
            Top = 38
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
            Left = 18
            Top = 63
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
          object Label44: TLabel
            Left = 194
            Top = 38
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
            Left = 340
            Top = 63
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
            Left = 50
            Top = 90
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
            Left = 270
            Top = 90
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
          object TLabel
            Left = 444
            Top = 90
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
            Left = 399
            Top = 118
            Width = 68
            Height = 17
            Caption = 'C'#243'd. Pa'#237's:'
            Font.Charset = ANSI_CHARSET
            Font.Color = clWindowText
            Font.Height = -15
            Font.Name = 'Helvetica Neue'
            Font.Style = []
            ParentFont = False
          end
          object TLabel
            Left = 261
            Top = 118
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
            Left = 79
            Top = 118
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
          object DBEdit95: TDBEdit
            Left = 118
            Top = 88
            Width = 121
            Height = 21
            CharCase = ecUpperCase
            DataField = 'COBRANCA_MUNICIPIO'
            DataSource = DS_Cliente
            Enabled = False
            Font.Charset = ANSI_CHARSET
            Font.Color = clWindowText
            Font.Height = -11
            Font.Name = 'Tahoma'
            Font.Style = []
            ParentFont = False
            TabOrder = 5
          end
          object DBEdit96: TDBEdit
            Left = 118
            Top = 116
            Width = 97
            Height = 21
            CharCase = ecUpperCase
            DataField = 'COBRANCA_CEP'
            DataSource = DS_Cliente
            Font.Charset = ANSI_CHARSET
            Font.Color = clWindowText
            Font.Height = -11
            Font.Name = 'Tahoma'
            Font.Style = []
            ParentFont = False
            TabOrder = 9
            OnKeyDown = DBEdit96KeyDown
            OnKeyPress = DBEdit96KeyPress
          end
          object DBEdit97: TDBEdit
            Left = 118
            Top = 61
            Width = 213
            Height = 21
            CharCase = ecUpperCase
            DataField = 'COBRANCA_COMPLEMENTO'
            DataSource = DS_Cliente
            Font.Charset = ANSI_CHARSET
            Font.Color = clWindowText
            Font.Height = -11
            Font.Name = 'Tahoma'
            Font.Style = []
            ParentFont = False
            TabOrder = 3
            OnKeyDown = DBEdit97KeyDown
          end
          object DBEdit98: TDBEdit
            Left = 118
            Top = 36
            Width = 72
            Height = 21
            BiDiMode = bdRightToLeft
            CharCase = ecUpperCase
            DataField = 'COBRANCA_NUMERO'
            DataSource = DS_Cliente
            Font.Charset = ANSI_CHARSET
            Font.Color = clWindowText
            Font.Height = -11
            Font.Name = 'Tahoma'
            Font.Style = []
            ParentBiDiMode = False
            ParentFont = False
            TabOrder = 1
            OnKeyDown = DBEdit98KeyDown
            OnKeyPress = DBEdit98KeyPress
          end
          object DBEdit99: TDBEdit
            Left = 118
            Top = 11
            Width = 386
            Height = 21
            CharCase = ecUpperCase
            DataField = 'COBRANCA_ENDERECO'
            DataSource = DS_Cliente
            Font.Charset = ANSI_CHARSET
            Font.Color = clWindowText
            Font.Height = -11
            Font.Name = 'Tahoma'
            Font.Style = []
            ParentFont = False
            TabOrder = 0
            OnKeyDown = DBEdit99KeyDown
          end
          object DBEdit100: TDBEdit
            Left = 239
            Top = 36
            Width = 265
            Height = 21
            CharCase = ecUpperCase
            DataField = 'COBRANCA_BAIRRO'
            DataSource = DS_Cliente
            Font.Charset = ANSI_CHARSET
            Font.Color = clWindowText
            Font.Height = -11
            Font.Name = 'Tahoma'
            Font.Style = []
            ParentFont = False
            TabOrder = 2
            OnKeyDown = DBEdit100KeyDown
          end
          object DBEdit101: TDBEdit
            Left = 372
            Top = 88
            Width = 64
            Height = 21
            CharCase = ecUpperCase
            DataField = 'COBRANCA_CODIGO_MUNICIPIO'
            DataSource = DS_Cliente
            Enabled = False
            Font.Charset = ANSI_CHARSET
            Font.Color = clWindowText
            Font.Height = -11
            Font.Name = 'Tahoma'
            Font.Style = []
            ParentFont = False
            TabOrder = 7
          end
          object DBEdit102: TDBEdit
            Left = 298
            Top = 116
            Width = 81
            Height = 21
            CharCase = ecUpperCase
            DataField = 'COBRANCA_PAIS'
            DataSource = DS_Cliente
            Enabled = False
            Font.Charset = ANSI_CHARSET
            Font.Color = clWindowText
            Font.Height = -11
            Font.Name = 'Tahoma'
            Font.Style = []
            ParentFont = False
            TabOrder = 10
          end
          object DBEdit103: TDBEdit
            Left = 470
            Top = 116
            Width = 34
            Height = 21
            CharCase = ecUpperCase
            DataField = 'COBRANCA_CODIGO_PAIS'
            DataSource = DS_Cliente
            Enabled = False
            Font.Charset = ANSI_CHARSET
            Font.Color = clWindowText
            Font.Height = -11
            Font.Name = 'Tahoma'
            Font.Style = []
            ParentFont = False
            TabOrder = 11
            OnKeyDown = DBEdit103KeyDown
          end
          object DBEdit105: TDBEdit
            Left = 470
            Top = 88
            Width = 34
            Height = 21
            CharCase = ecUpperCase
            DataField = 'COBRANCA_ESTADO'
            DataSource = DS_Cliente
            Enabled = False
            Font.Charset = ANSI_CHARSET
            Font.Color = clWindowText
            Font.Height = -11
            Font.Name = 'Tahoma'
            Font.Style = []
            ParentFont = False
            TabOrder = 8
          end
          object DBEdit106: TDBEdit
            Left = 394
            Top = 61
            Width = 110
            Height = 21
            CharCase = ecUpperCase
            DataField = 'COBRANCA_REGIAO'
            DataSource = DS_Cliente
            Font.Charset = ANSI_CHARSET
            Font.Color = clWindowText
            Font.Height = -11
            Font.Name = 'Tahoma'
            Font.Style = []
            ParentFont = False
            TabOrder = 4
            OnKeyDown = DBEdit106KeyDown
            OnKeyPress = DBEdit106KeyPress
          end
          object btnMunicipE3: TcxButton
            Left = 239
            Top = 85
            Width = 25
            Height = 26
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
            TabOrder = 6
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -11
            Font.Name = 'Tahoma'
            Font.Style = [fsBold]
            ParentFont = False
            OnClick = btnMunicipE3Click
          end
          object btn_cep_3: TcxButton
            Left = 212
            Top = 113
            Width = 27
            Height = 25
            LookAndFeel.NativeStyle = False
            LookAndFeel.SkinName = 'Metropolis'
            OptionsImage.Glyph.Data = {
              36040000424D3604000000000000360000002800000010000000100000000100
              2000000000000004000000000000000000000000000000000000000000000000
              0000000000020000000A000000140000001B000000170000000D000000060000
              000E0000001D000000250000001F000000110000000400000000000000000000
              00020000000E291F177C4C3B2BCD664B39F949372AD0271D168600000029261C
              148B483326D75C4730FA443226DA241B12930000001D00000004000000000000
              00072A2119789A897EFCC6BFB8FFE3E1DEFFC3BCB5FF968677FD402F23C99384
              75FDBEB6AFFFDAD7D5FFBBB3ADFF8E7F6FFD231B139200000011000000000000
              000E543F30CACAC1BBFF9F8A7AFF7D614CFF785E48FF745945FF6F5541FF6B52
              3DFF684E3AFF654C37FF857364FFBCB3ADFF473425D90000001F000000031008
              0532735742FDE8E6E4FF896E56FFA8A29DFF826651FFFFFFFFFFDAD8D5FFD4D3
              D1FF7A5F49FF9B9590FF684E3AFFDBD8D6FF5D4834FA000000230000000C6D39
              24AC885D46FFCDC5BEFFA89382FF8D715AFF896D56FF866A54FF816550FF7D61
              4CFF795E48FF745944FF8D7969FFBFB7B0FF493526D50000001B3B1F1164C46B
              45FEA56647FFA49485FFCDC4BEFFE8E6E4FFCBC2BCFF9E8E80FF744D37FF9C8B
              7DFFC5BCB6FFE0DEDCFFC2B9B3FF958475FD261D15870000000E713B21AAD17B
              4DFF9E713FFF6D5C33FF5F5936FF745C45FF6E583BFF976042FFBF6844FF6D56
              2DFF605332FF6D523DFF724B38FC281E168E00000014000000039D512EDDA77F
              46FF54691DFFC1935CFFBE915AFFC5905BFFD6945FFFE2925FFFCE7D4FFF406B
              11FF2F8F28FF568044FFB9614DFD000000270000000300000000B56034FB6271
              27FF9D8C50FFAE9D5BFFE3BC7AFFF2BF7EFFF1B678FFEEA86FFFCE8B58FF4480
              27FF4AB25BFF67905CFFC86E56FF000000200000000000000000A0552FDC637C
              2AFF3C731DFF2E7E15FFA5A460FFE9C986FFF3C684FFF1BA7AFFD59964FF6887
              45FF5FC886FF7D8B60FFC0684EF90000001A0000000000000000743F23A59285
              40FF298818FF28971CFF43892BFFAFAA6BFFE5C785FFF1C382FFD8A56BFF8095
              5DFF7F8F60FFB87350FF9E563FD80000001200000000000000003E22125BB972
              3DFC6E9C43FF43A138FF5EB556FF78B96EFFA9AA70FFDEC07EFFB6985BFF427D
              14FF8E7936FFCC7752FE4C281B80000000090000000000000000000000056839
              1E94B4834CFF96B773FF81AE79FF94B087FFA8B592FFA39C5DFF3C8213FF5B7F
              23FFC87F52FF7E462FB70000001100000002000000000000000000000001110A
              051C68391F94BC7845FCC4AE82FFB6B38EFFBDBFA7FF8A9B67FF8E8E4DFFBD7C
              4BFE724026A91008052700000003000000000000000000000000000000000000
              0001000000053E22125B743F23A5A0552FDCB66135FB9E512EDD713C21AA3B1F
              11640000000C0000000300000000000000000000000000000000}
            TabOrder = 12
            OnClick = btn_cep_3Click
          end
        end
      end
      object BtnGravar: TcxButton
        Left = 1067
        Top = 7
        Width = 105
        Height = 43
        Hint = 'Cadastrar dados.'
        Caption = 'Gravar'#13'[F2]'
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
        TabOrder = 1
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'HelveticaNeue'
        Font.Style = [fsBold]
        ParentFont = False
        OnClick = BtnGravarClick
      end
      object BtnCancelar: TcxButton
        Left = 1067
        Top = 54
        Width = 105
        Height = 43
        Hint = 'Cancelar cadastro.'
        Caption = 'Cancelar'#13'[F3]'
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
        SpeedButtonOptions.Transparent = True
        TabOrder = 7
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'HelveticaNeue'
        Font.Style = [fsBold]
        ParentFont = False
        OnClick = BtnCancelarClick
      end
      object BtnIncluir: TcxButton
        Left = 1067
        Top = 7
        Width = 105
        Height = 43
        Hint = 'Come'#231'ar um novo cadastro.'
        Caption = 'Incluir'#13'[F1]'
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
        TabOrder = 2
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'HelveticaNeue'
        Font.Style = [fsBold]
        ParentFont = False
        OnClick = BtnIncluirClick
      end
      object BtnAlterar: TcxButton
        Left = 1067
        Top = 101
        Width = 105
        Height = 42
        Caption = 'Alterar'#13'[F4]'
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
        TabOrder = 9
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'HelveticaNeue'
        Font.Style = [fsBold]
        Font.Quality = fqDraft
        ParentFont = False
        OnClick = BtnAlterarClick
      end
      object BtnConsultarCnpj: TcxButton
        Left = 1067
        Top = 147
        Width = 105
        Height = 43
        Hint = 'Consultar CNPJ e buscar dados da receita.'
        Caption = 'Consultar'#13'CNPJ [F6]'
        Enabled = False
        LookAndFeel.NativeStyle = False
        LookAndFeel.SkinName = 'Metropolis'
        OptionsImage.Glyph.Data = {
          36100000424D3610000000000000360000002800000020000000200000000100
          2000000000000010000000000000000000000000000000000000000000000000
          0000000000000000000000000001000000010000000100000001000000010000
          0001000000010000000100000001000000010000000100000001000000010000
          0001000000010000000100000001000000010000000100000001000000020000
          0003000000080000000F00000014000000130000000C00000005000000000000
          0000000000010000000200000003000000060000000700000008000000080000
          0008000000080000000800000008000000080000000800000008000000080000
          00080000000800000008000000080000000800000008000000090000000A0000
          000F000000190E1C38771F4486EB1E407BDF081122510000000B000000000000
          000000000001000000050000000E000000170000001C0000001E0000001E0000
          001E0000001E0000001E0000001E0000001F0000001F0000001F0000001F0000
          001F0000001F0000001F0000001F000000200000002100000022000000270000
          002F102342902967B0FF4791D0FF64ADE0FF1E407DDE00000011000000000000
          0001000000040000000E170F0D604A322BEC523730FF52372FFF51362FFFA968
          3CFFA8683CFFA8673BFFA8673AFFA76639FFA86538FFA66537FFA76537FFA664
          36FFA66335FFA66335FFA66334FFA56233FFA66133FFAE744DFFB58A6CFF706D
          7BFF2B6EB5FF4A98D6FF70BFEEFFB8E1F4FF224788EB00000011000000000000
          000100000006000000164B332BEC65493FFF65473DFF61433AFF5B3F36FFDCB5
          84FFD8AE79FFD8AD79FFD8AC79FFD7AB78FFD7AB78FFD4A976FFD4A976FFD3A8
          73FFD2A673FFD3A773FFD3A873FFD1A772FFD5B083FFD5B896FF9B7D6AFF2767
          B3FF4A98D6FF70BEEEFFC7F0FEFF447DBAFF0F203C750000000C000000000000
          0001000000070000001A563A33FF6F5148FF62443BFF62443AFF5B3E35FFDCB6
          84FFDAAE7AFFD9AE7AFFD8AD7AFFD6AC79FFD7B386FFD6B691FFD4B897FFCFB4
          94FFCEB392FFCFB393FFD0B595FFCFB08BFFD1B594FF9D7963FF7F5043FF6F54
          51FF5BAFE9FFC7F0FEFF4885C0FF122644840000001000000005000000000000
          0001000000070000001B583C34FF71554AFF63463BFF63463BFF5D4036FFDDB8
          87FFDAB07DFFD9B07CFFD9B181FFDABD98FFD2B796FFA7866EFF886250FF7448
          3BFF74473BFF74483BFF855E4EFF9C7B66FF906E5BFF7C4E44FFB9988EFFCCB6
          AEFFC9C3BDFF4181C0FF1328468E000000160000000700000001000000000000
          0001000000060000001A593E36FF74574CFF65473CFF65473CFF5E4237FFDFBA
          8AFFDCB380FFDBB583FFDCC09EFFC4A78BFF895F4FFF99736BFFD4C3BDFFEBDD
          D3FFEEDDD3FFE9D8CDFFC8B0A5FF8F695DFF744B3EFF9D7E74FFC8B6AEFFE1D6
          D1FF97746AFF937161FF000000290000000D0000000300000000000000000000
          000100000006000000195B4037FF765A4FFF66493EFF66493EFF604338FFE0BA
          8CFFDBB481FFDEC19DFFC9AE91FF91685AFFC8B4AEFFF5EDE7FFCBA586FFBC8E
          65FFB38053FFBF916CFFCCA88BFFE7D3C6FFB5988CFF7E5548FFBCACA6FF9370
          68FFA4816BFFBC9980FF00000020000000090000000100000000000000000000
          000100000006000000185E4239FF795D53FF684A3FFF684A3FFF62453AFFE1BC
          8FFFDEBC91FFD9C0A0FFA47B6AFFD9C9C4FFE8D8CBFFB28053FFC9A385FFDABF
          ABFFE2CDBEFFDAC0ADFFCBA88DFFB88C66FFDFC7B5FFC4AB9FFF7A5145FF9878
          62FFD7BE9FFFB58868FF0000001C000000070000000100000000000000000000
          0001000000060000001761453AFF7E6055FF6A4B41FF6A4B41FF63463BFFE1BE
          91FFE0C39FFFC3A48DFFBE9F95FFF8F3EEFFB38154FFD7BCA6FFDEC8B8FFDCC4
          B3FFDCC4B3FFDEC8B8FFE1CDBEFFDBC1AFFFB88D6AFFE9D8CDFF9B786CFFA688
          71FFD6BC98FFAE7952FF0000001C000000070000000100000000000000000000
          0001000000060000001762473DFF80635AFF6B4D43FF6B4D42FF65473DFFE2BF
          94FFE0C7A7FFB79582FFE7DAD6FFD5B598FFC8A385FFE1CABBFFDFC7B8FFDFC7
          B8FFDFC7B7FFDFC7B8FFE1CABBFFE5D1C4FFCEAE94FFC8A689FFD0BAB1FF8E69
          58FFD9BFA1FFB07C54FF0000001B000000060000000100000000000000000000
          0001000000050000001665493EFF83675DFF6D5044FF6D4F44FF67493EFFE2C2
          96FFE1CAABFFB69081FFFAF7F6FFC19368FFE2CEBDFFF5EDE0FFF3EBDEFFECDE
          D1FFE3D0C1FFE2CDBFFFE2CDBFFFE5D2C4FFE2CFBFFFB2825DFFEADDD6FF875E
          50FFD9C2A5FFB07D56FF0000001A000000060000000100000000000000000000
          00010000000500000015674B40FF856B60FF6F5146FF6F5146FF694B40FFE4C4
          9BFFE2CBADFFBB9487FFFEFEFDFFBB895AFFF9F4E8FFFCF9EDFFF9F4E9FFF5ED
          E2FFF0E5DAFFE6D5C9FFE5D2C6FFE6D3C7FFECDDD4FFAA764CFFF4EBE5FF8B62
          55FFD9C3A7FFB27F59FF00000019000000060000000100000000000000000000
          000000000005000000146A4D42FF896F63FF715348FF715347FF6A4D42FFE5C6
          9DFFE5CEB1FFC09C8DFFFAF8F7FFC1946AFFF3EBDCFFFEFCF1FFFCF9EEFFFAF5
          EAFFF6F0E5FFF0E5DAFFE8D8CDFFE9D9CFFFE5D3C6FFAF7D55FFEFE6E0FF976E
          5FFFDCC7AAFFB5835CFF00000017000000060000000100000000000000000000
          000000000005000000136C5044FF8D7366FF745649FF745549FF6E4F44FFE7CA
          A1FFE9D4B7FFCAAB99FFECE2DEFFD5B598FFCFB194FFFFFEF3FFFEFDF2FFFDFA
          EFFFFBF6ECFFF7F1E7FFEBDDD4FFEDE0D8FFCAA990FFC5A185FFE1D5D0FFA783
          72FFE1CAADFFB7865FFF00000017000000060000000100000000000000000000
          000000000005000000136F5245FF907569FF76574BFF78594BFF7A5B4FFFEBD2
          AAFFECD5B5FFDBC2ACFFD3BAB0FFF9F4EFFFAC784FFFE9DAC6FFFFFEF3FFFEFD
          F2FFFDFBF0FFFAF5EBFFEFE4DDFFDECAB9FFAD7A51FFF6F0ECFFC0A299FFC4A8
          92FFE5CEAFFFBA8961FF00000016000000050000000100000000000000000000
          00000000000400000012725548FF93796CFF7C5D4FFF866857FF816453FFEED5
          AFFFECD4B0FFECDBBEFFCAAA9AFFE9DCD8FFE6D6C9FFAB774DFFCCAC8FFFEDE1
          CFFFFCF9EEFFE6D4C6FFC8A68BFFAB774DFFE6D6C9FFE4D6D1FFB69484FFE2CD
          B0FFE7CDA9FFBC8C65FF00000015000000050000000100000000000000000000
          00000000000400000011735649FF998072FF8A6D5CFF8A6E5CFF846756FFF0D8
          B4FFECD4ABFFEFDCBFFFE7D4BCFFC7A799FFE3D3CDFFF5EFEAFFC7A488FFAB77
          4DFFA56D40FFAA764BFFC8A68AFFF5EFEAFFE0CFC8FFBF9D90FFDECAB1FFEAD7
          B9FFE9CCA6FFBF8F67FF00000014000000050000000100000000000000000000
          00000000000400000010765A4CFFA78F81FF8E7260FF8E715FFF876C59FFF1DA
          B8FFEFD7B0FFEFD7B2FFF1DFC4FFE8D6BDFFCBAB9CFFD0B4AAFFEDE2DEFFFCFB
          FAFFFFFFFFFFFCFBFAFFEDE2DEFFD0B4AAFFC9A99AFFE2CEB6FFECDBBEFFECD2
          ADFFEED5B2FFC0916AFF00000013000000050000000000000000000000000000
          0000000000040000000F795C4EFFAD9685FF917663FF917663FF8C705DFFF2DD
          BBFFF1DAB4FFF1DAB4FFF0DAB5FFF3E1C5FFF2E1C8FFE1CCB6FFD4B9A7FFCBAC
          9DFFC3A194FFCBAB9CFFD2B6A5FFDCC7B1FFEDDDC3FFEFDDC1FFEED6B2FFEED5
          AFFFF0DAB8FFC2946CFF00000013000000050000000000000000000000000000
          0000000000040000000F7A5D4FFFB19A8AFF957A66FF957A67FF8F7461FFF4DF
          BEFFF2DCB8FFF1DCB8FFF2DCB7FFF1DBB7FFF1DEBDFFF2E0C3FFF2E1C7FFF1E2
          CAFFF0E1C9FFF0E1C8FFF0E0C4FFF0DEC0FFF0DCBAFFEFD8B1FFF0D8B2FFF0D9
          B2FFF2DDBBFFC3956EFF00000012000000050000000000000000000000000000
          0000000000030000000E7D6051FFB49F8EFF997D6AFF997D6AFF927664FFF4E3
          C2FFF3DFBBFFF3DEBBFFF3DEBAFFF3DEBAFFF3DEB9FFF3DEB9FFF2DDB8FFF1DC
          B8FFF2DCB8FFF1DCB8FFF1DCB7FFF1DBB6FFF1DCB7FFF1DBB6FFF2DBB6FFF1DA
          B6FFF3E0C0FFC59871FF00000011000000040000000000000000000000000000
          0000000000030000000D7F6252FFB7A492FF9B806DFF9C806DFF957B67FFF5E5
          C5FFF5E1BFFFF5E2BEFFF5E1BEFFF5E1BEFFF4E1BDFFF4E0BDFFF4E0BDFFF4E0
          BCFFF3E0BBFFF4DFBBFFF3DFBBFFF3DFBAFFF3DFBAFFF3DFBAFFF3DFBAFFF2DE
          BAFFF4E2C3FFC69973FF00000010000000040000000000000000000000000000
          0000000000030000000C816454FFBBA896FF9F8570FF9F8570FF997F6AFFF6E6
          C8FFF5E4C2FFF5E4C2FFF5E3C1FFF5E3C1FFF5E3C1FFF5E3C0FFF5E3C0FFF5E2
          C0FFF5E3BFFFF5E2BFFFF4E1BFFFF4E2BEFFF5E1BDFFF4E1BDFFF4E1BDFFF4E0
          BDFFF5E5C8FFC2946DFF00000010000000040000000000000000000000000000
          0000000000030000000C826655FFC3B0A2FFC1AE9DFFC0AD9CFFBBA895FFFAF0
          DCFFF9EED7FFF9EED7FFF9EDD6FFF9EDD6FFF9ECD5FFF9ECD4FFF9ECD4FFF9EB
          D2FFF9EBD2FFF7EAD2FFF8EAD2FFF7EAD0FFF8EAD0FFF7EACFFFF7E9CEFFF7E9
          CEFFEDD8B9FFBD8E67FF0000000F000000040000000000000000000000000000
          0000000000030000000B846757FF9B8173FF8F7365FF8F7365FF8B6F61FFD8B2
          8BFFD6B086FFD6AF86FFD6AF85FFD6AF85FFD6AE85FFD5AE84FFD6AE84FFD5AD
          84FFD5AD83FFD5AD83FFD5AD82FFD5AC82FFD4AC82FFD3AC82FFD3AC81FFD4AB
          81FFD0AC88FFBE946EFF0000000E000000040000000000000000000000000000
          0000000000020000000A866958FF63473EFFB19E97FFE0D9CEFFE2D8CEFFE0D9
          CFFFE2D8CEFFE0D6CDFFDFD6CEFFE0D8CDFFE0D6CDFFDFD6CDFFDFD5CBFFDFD5
          CBFFDFD5CAFFDFD5CAFFDFD5CAFFDFD5CBFFDDD2C9FFDDD4C9FFDDD2C9FFDFD5
          CAFFE1D9D2FFC69E78FF0000000D000000030000000000000000000000000000
          000000000002000000077B6050E96B4B41FFD4C9C3FFF7F4EFFFF7F4EFFFF7F4
          EFFFF7F4EFFFF7F4EFFFF7F4EFFFF7F4EFFFF7F4EFFFF7F4EFFFF7F4EFFFF7F4
          EFFFF7F4EFFFF6F3EEFFF6F3EEFFF6F3EEFFF6F3EEFFF6F3EEFFF6F3EEFFF6F3
          EEFFEBDFD1FFB89370E900000009000000020000000000000000000000000000
          00000000000100000004221A16476B5447CC886B5AFF886B59FF886A59FFD3AE
          89FFD3AE89FFD2AD88FFD2AD88FFD2AD87FFD2AC87FFD1AC86FFD1AB86FFD1AB
          85FFD0AA84FFD0AA84FFD0A983FFCFA882FFCFA881FFCEA781FFCEA680FFCEA6
          7FFFA28264CD33281F4900000005000000010000000000000000000000000000
          0000000000000000000100000003000000060000000800000008000000090000
          00090000000900000009000000090000000900000009000000090000000A0000
          000A0000000A0000000A0000000A0000000A0000000A0000000A0000000B0000
          000A000000080000000500000002000000010000000000000000000000000000
          0000000000000000000000000001000000010000000200000002000000020000
          0002000000020000000200000002000000020000000200000002000000020000
          0002000000020000000200000002000000020000000200000002000000020000
          0002000000020000000100000001000000000000000000000000}
        SpeedButtonOptions.Transparent = True
        TabOrder = 11
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'HelveticaNeue'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object gpFisica: TGroupBox
        Left = 15
        Top = 64
        Width = 523
        Height = 175
        Caption = '  P. F'#237'sica  '
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'Tahoma'
        Font.Style = [fsBold]
        ParentFont = False
        TabOrder = 8
        object Label25: TLabel
          Left = 41
          Top = 20
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
          Left = 55
          Top = 45
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
          Left = 61
          Top = 70
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
        object Label1: TLabel
          Left = 48
          Top = 96
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
        object Label20: TLabel
          Left = 8
          Top = 121
          Width = 77
          Height = 18
          Caption = 'Estado Civil:'
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Height = -15
          Font.Name = 'Tahoma'
          Font.Style = []
          ParentFont = False
        end
        object Label7: TLabel
          Left = 7
          Top = 147
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
        object Label6: TLabel
          Left = 219
          Top = 70
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
          Left = 355
          Top = 71
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
        object Label2: TLabel
          Left = 336
          Top = 45
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
        object Label32: TLabel
          Left = 265
          Top = 121
          Width = 92
          Height = 18
          Caption = 'Nacionalidade:'
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Height = -15
          Font.Name = 'Tahoma'
          Font.Style = []
          ParentFont = False
        end
        object Label9: TLabel
          Left = 272
          Top = 96
          Width = 85
          Height = 18
          Caption = 'Naturalidade:'
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Height = -15
          Font.Name = 'Tahoma'
          Font.Style = []
          ParentFont = False
        end
        object Label5: TLabel
          Left = 284
          Top = 147
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
        object DBComboBox2: TDBComboBox
          Left = 90
          Top = 120
          Width = 121
          Height = 22
          Style = csOwnerDrawFixed
          CharCase = ecUpperCase
          DataField = 'ESTADO_CIVIL'
          DataSource = DS_Cliente
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = []
          Items.Strings = (
            'CASADO (A)'
            'SOLTEIRO (A)'
            'VIUVO (A)'
            'DIVORCIADO (A)')
          ParentFont = False
          TabOrder = 9
          OnKeyDown = DBComboBox2KeyDown
          OnKeyPress = DBComboBox2KeyPress
        end
        object dbcbSexo: TDBComboBox
          Left = 90
          Top = 95
          Width = 121
          Height = 22
          Style = csOwnerDrawFixed
          CharCase = ecUpperCase
          DataField = 'SEXO'
          DataSource = DS_Cliente
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = []
          Items.Strings = (
            'MASCULINO'
            'FEMININO')
          ParentFont = False
          TabOrder = 7
          OnKeyDown = dbcbSexoKeyDown
          OnKeyPress = dbcbSexoKeyPress
        end
        object dbedtRG: TDBEdit
          Left = 90
          Top = 68
          Width = 121
          Height = 21
          CharCase = ecUpperCase
          DataField = 'RG'
          DataSource = DS_Cliente
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = []
          ParentFont = False
          TabOrder = 4
          OnKeyDown = dbedtRGKeyDown
          OnKeyPress = dbedtRGKeyPress
        end
        object dbedtOE: TcxDBTextEdit
          Tag = 3
          Left = 313
          Top = 69
          DataBinding.DataField = 'ORGAO_EMISSOR'
          DataBinding.DataSource = DS_Cliente
          ParentFont = False
          Properties.CharCase = ecUpperCase
          Style.Color = clHighlightText
          Style.Font.Charset = ANSI_CHARSET
          Style.Font.Color = clWindowText
          Style.Font.Height = -11
          Style.Font.Name = 'Tahoma'
          Style.Font.Style = []
          Style.IsFontAssigned = True
          TabOrder = 6
          OnKeyDown = dbedtOEKeyDown
          OnKeyPress = dbedtOEKeyPress
          Width = 35
        end
        object cxDBTextEdit6: TcxDBTextEdit
          Tag = 3
          Left = 361
          Top = 95
          DataBinding.DataField = 'NATURALIDADE'
          DataBinding.DataSource = DS_Cliente
          ParentFont = False
          Properties.CharCase = ecUpperCase
          Style.Font.Charset = ANSI_CHARSET
          Style.Font.Color = clWindowText
          Style.Font.Height = -11
          Style.Font.Name = 'Tahoma'
          Style.Font.Style = [fsBold]
          Style.TextStyle = []
          Style.IsFontAssigned = True
          TabOrder = 8
          OnKeyDown = cxDBTextEdit6KeyDown
          OnKeyPress = cxDBTextEdit6KeyPress
          Width = 152
        end
        object cxDBTextEdit7: TcxDBTextEdit
          Tag = 3
          Left = 361
          Top = 120
          DataBinding.DataField = 'NACIONALIDADE'
          DataBinding.DataSource = DS_Cliente
          ParentFont = False
          Properties.CharCase = ecUpperCase
          Style.Font.Charset = ANSI_CHARSET
          Style.Font.Color = clWindowText
          Style.Font.Height = -11
          Style.Font.Name = 'Tahoma'
          Style.Font.Style = [fsBold]
          Style.TextStyle = []
          Style.IsFontAssigned = True
          TabOrder = 10
          OnKeyPress = cxDBTextEdit7KeyPress
          Width = 152
        end
        object edt_ie: TDBEdit
          Left = 90
          Top = 68
          Width = 121
          Height = 22
          CharCase = ecUpperCase
          DataField = 'INSCRICAO_ESTADUAL'
          DataSource = DS_Cliente
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Height = -12
          Font.Name = 'Tahoma'
          Font.Style = []
          ParentFont = False
          TabOrder = 3
          Visible = False
          OnKeyDown = edt_ieKeyDown
        end
        object dbedtNome: TDBEdit
          Left = 90
          Top = 19
          Width = 423
          Height = 21
          CharCase = ecUpperCase
          DataField = 'RAZAO_SOCIAL'
          DataSource = DS_Cliente
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = []
          ParentFont = False
          TabOrder = 0
          OnKeyDown = dbedtNomeKeyDown
          OnKeyPress = dbedtNomeKeyPress
        end
        object cxDBTextEdit9: TcxDBTextEdit
          Left = 394
          Top = 146
          DataBinding.DataField = 'LIMITE_CREDITO'
          DataBinding.DataSource = DS_Cliente
          ParentFont = False
          Style.Font.Charset = ANSI_CHARSET
          Style.Font.Color = clWindowText
          Style.Font.Height = -11
          Style.Font.Name = 'Tahoma'
          Style.Font.Style = []
          Style.IsFontAssigned = True
          TabOrder = 12
          OnKeyPress = cxDBTextEdit9KeyPress
          Width = 119
        end
        object edt_data: TcxDateEdit
          Left = 420
          Top = 44
          ParentFont = False
          Style.Font.Charset = ANSI_CHARSET
          Style.Font.Color = clWindowText
          Style.Font.Height = -11
          Style.Font.Name = 'Tahoma'
          Style.Font.Style = []
          Style.IsFontAssigned = True
          TabOrder = 2
          OnKeyDown = edt_dataKeyDown
          OnKeyPress = edt_dataKeyPress
          Width = 93
        end
        object DBEdit73: TcxDateEdit
          Left = 420
          Top = 68
          ParentFont = False
          Style.Font.Charset = ANSI_CHARSET
          Style.Font.Color = clWindowText
          Style.Font.Height = -11
          Style.Font.Name = 'Tahoma'
          Style.Font.Style = []
          Style.IsFontAssigned = True
          TabOrder = 5
          OnKeyDown = DBEdit73KeyDown
          OnKeyPress = DBEdit73KeyPress
          Width = 93
        end
        object DBComboBox3: TDBComboBox
          Left = 141
          Top = 146
          Width = 121
          Height = 22
          Style = csOwnerDrawFixed
          CharCase = ecUpperCase
          DataField = 'SITUACAO_FINANCEIRA'
          DataSource = DS_Cliente
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = []
          Items.Strings = (
            'ATIVO'
            'BLOQUEADO PARCIAL'
            'BLOQUEADO')
          ParentFont = False
          TabOrder = 11
          OnKeyDown = DBComboBox2KeyDown
          OnKeyPress = DBComboBox2KeyPress
        end
        object MaskEdit1: TMaskEdit
          Left = 90
          Top = 42
          Width = 121
          Height = 21
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = []
          ParentFont = False
          TabOrder = 1
          Text = 'MaskEdit1'
          OnEnter = MaskEdit1Enter
          OnExit = MaskEdit1Exit
          OnKeyDown = MaskEdit1KeyDown
          OnKeyPress = MaskEdit1KeyPress
          OnKeyUp = MaskEdit1KeyUp
        end
      end
      object GroupBox12: TGroupBox
        Left = 544
        Top = 16
        Width = 249
        Height = 119
        Caption = '  Contatos  '
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -12
        Font.Name = 'Tahoma'
        Font.Style = [fsBold]
        ParentFont = False
        TabOrder = 3
        object TLabel
          Left = 12
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
          Left = 18
          Top = 43
          Width = 56
          Height = 18
          Caption = 'Contato:'
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Height = -15
          Font.Name = 'Tahoma'
          Font.Style = []
          ParentFont = False
        end
        object TLabel
          Left = 27
          Top = 68
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
          Left = 31
          Top = 93
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
        object DBEdit2: TDBEdit
          Left = 88
          Top = 18
          Width = 145
          Height = 21
          CharCase = ecUpperCase
          DataField = 'TELEFONE'
          DataSource = DS_Cliente
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = []
          ParentFont = False
          TabOrder = 0
          OnKeyDown = DBEdit2KeyDown
          OnKeyPress = DBEdit2KeyPress
        end
        object DBEdit4: TDBEdit
          Left = 88
          Top = 67
          Width = 145
          Height = 21
          CharCase = ecUpperCase
          DataField = 'CELULAR'
          DataSource = DS_Cliente
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = []
          ParentFont = False
          TabOrder = 2
          OnKeyDown = DBEdit4KeyDown
          OnKeyPress = DBEdit4KeyPress
        end
        object dbedtcontato1: TDBEdit
          Left = 88
          Top = 42
          Width = 145
          Height = 21
          CharCase = ecUpperCase
          DataField = 'CONTATO'
          DataSource = DS_Cliente
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = []
          ParentFont = False
          TabOrder = 1
          OnKeyDown = dbedtcontato1KeyDown
          OnKeyPress = dbedtcontato1KeyPress
        end
        object dbedtemail: TDBEdit
          Left = 88
          Top = 92
          Width = 145
          Height = 21
          CharCase = ecUpperCase
          DataField = 'EMAIL'
          DataSource = DS_Cliente
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = []
          ParentFont = False
          TabOrder = 3
        end
      end
      object GroupBox4: TGroupBox
        Left = 280
        Top = 500
        Width = 258
        Height = 98
        Caption = '  Info. Banc'#225'rias Adicionais  '
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'Tahoma'
        Font.Style = [fsBold]
        ParentFont = False
        TabOrder = 14
        object TLabel
          Left = 174
          Top = 71
          Width = 40
          Height = 18
          Caption = 'D'#237'gito:'
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Height = -15
          Font.Name = 'Tahoma'
          Font.Style = []
          ParentFont = False
        end
        object TLabel
          Left = 188
          Top = 47
          Width = 26
          Height = 17
          Caption = 'OP:'
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Height = -15
          Font.Name = 'Helvetica Neue'
          Font.Style = []
          ParentFont = False
        end
        object TLabel
          Left = 114
          Top = 46
          Width = 40
          Height = 18
          Caption = 'D'#237'gito:'
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Height = -15
          Font.Name = 'Tahoma'
          Font.Style = []
          ParentFont = False
        end
        object TLabel
          Left = 21
          Top = 46
          Width = 43
          Height = 18
          Caption = 'Conta:'
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Height = -15
          Font.Name = 'Tahoma'
          Font.Style = []
          ParentFont = False
        end
        object TLabel
          Left = 9
          Top = 71
          Width = 55
          Height = 18
          Caption = 'Ag'#234'ncia:'
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Height = -15
          Font.Name = 'Tahoma'
          Font.Style = []
          ParentFont = False
        end
        object TLabel
          Left = 19
          Top = 21
          Width = 45
          Height = 18
          Caption = 'Banco:'
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Height = -15
          Font.Name = 'Tahoma'
          Font.Style = []
          ParentFont = False
        end
        object cxDBTextEdit20: TcxDBTextEdit
          Left = 66
          Top = 20
          DataBinding.DataField = 'BANCO_2'
          DataBinding.DataSource = DS_Cliente
          ParentFont = False
          Properties.CharCase = ecUpperCase
          Style.Font.Charset = DEFAULT_CHARSET
          Style.Font.Color = clWindowText
          Style.Font.Height = -11
          Style.Font.Name = 'Tahoma'
          Style.Font.Style = []
          Style.IsFontAssigned = True
          TabOrder = 0
          OnKeyDown = cxDBTextEdit20KeyDown
          OnKeyPress = cxDBTextEdit20KeyPress
          Width = 182
        end
        object DBEdit21: TDBEdit
          Left = 66
          Top = 45
          Width = 41
          Height = 21
          CharCase = ecUpperCase
          DataField = 'BANCO_CONTA_2'
          DataSource = DS_Cliente
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = []
          ParentFont = False
          TabOrder = 1
          OnKeyDown = DBEdit21KeyDown
          OnKeyPress = DBEdit21KeyPress
        end
        object DBEdit22: TDBEdit
          Left = 66
          Top = 70
          Width = 41
          Height = 21
          BiDiMode = bdRightToLeft
          CharCase = ecUpperCase
          DataField = 'BANCO_AGENCIA_2'
          DataSource = DS_Cliente
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = []
          ParentBiDiMode = False
          ParentFont = False
          TabOrder = 4
          OnKeyDown = DBEdit22KeyDown
          OnKeyPress = DBEdit22KeyPress
        end
        object DBEdit19: TDBEdit
          Left = 156
          Top = 45
          Width = 30
          Height = 21
          BiDiMode = bdRightToLeft
          CharCase = ecUpperCase
          DataField = 'BANCO_CONTA_DIGITO_2'
          DataSource = DS_Cliente
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = []
          ParentBiDiMode = False
          ParentFont = False
          TabOrder = 2
          OnKeyDown = DBEdit19KeyDown
          OnKeyPress = DBEdit19KeyPress
        end
        object DBEdit15: TDBEdit
          Left = 216
          Top = 45
          Width = 32
          Height = 21
          BiDiMode = bdRightToLeft
          CharCase = ecUpperCase
          DataField = 'BANCO_OP2_CONTA'
          DataSource = DS_Cliente
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = []
          ParentBiDiMode = False
          ParentFont = False
          TabOrder = 3
          OnKeyDown = DBEdit15KeyDown
          OnKeyPress = DBEdit15KeyPress
        end
        object DBEdit30: TDBEdit
          Left = 216
          Top = 70
          Width = 32
          Height = 21
          BiDiMode = bdRightToLeft
          CharCase = ecUpperCase
          DataField = 'BANCO_ANGENCIA_DIGITO_2'
          DataSource = DS_Cliente
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = []
          ParentBiDiMode = False
          ParentFont = False
          TabOrder = 5
          OnKeyDown = DBEdit30KeyDown
          OnKeyPress = DBEdit30KeyPress
        end
      end
      object GroupBox1: TGroupBox
        Left = 15
        Top = 500
        Width = 258
        Height = 98
        Caption = '  Info. Banc'#225'rias  '
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'Tahoma'
        Font.Style = [fsBold]
        ParentFont = False
        TabOrder = 13
        object TLabel
          Left = 174
          Top = 71
          Width = 40
          Height = 18
          Caption = 'D'#237'gito:'
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Height = -15
          Font.Name = 'Tahoma'
          Font.Style = []
          ParentFont = False
        end
        object TLabel
          Left = 188
          Top = 47
          Width = 26
          Height = 17
          Caption = 'OP:'
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Height = -15
          Font.Name = 'Helvetica Neue'
          Font.Style = []
          ParentFont = False
        end
        object TLabel
          Left = 114
          Top = 46
          Width = 40
          Height = 18
          Caption = 'D'#237'gito:'
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Height = -15
          Font.Name = 'Tahoma'
          Font.Style = []
          ParentFont = False
        end
        object TLabel
          Left = 21
          Top = 46
          Width = 43
          Height = 18
          Caption = 'Conta:'
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Height = -15
          Font.Name = 'Tahoma'
          Font.Style = []
          ParentFont = False
        end
        object TLabel
          Left = 9
          Top = 71
          Width = 55
          Height = 18
          Caption = 'Ag'#234'ncia:'
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Height = -15
          Font.Name = 'Tahoma'
          Font.Style = []
          ParentFont = False
        end
        object TLabel
          Left = 19
          Top = 23
          Width = 45
          Height = 18
          Caption = 'Banco:'
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Height = -15
          Font.Name = 'Tahoma'
          Font.Style = []
          ParentFont = False
        end
        object cxDBTextEdit18: TcxDBTextEdit
          Left = 66
          Top = 20
          DataBinding.DataField = 'BANCO_1'
          DataBinding.DataSource = DS_Cliente
          ParentFont = False
          Properties.CharCase = ecUpperCase
          Style.Font.Charset = DEFAULT_CHARSET
          Style.Font.Color = clWindowText
          Style.Font.Height = -11
          Style.Font.Name = 'Tahoma'
          Style.Font.Style = []
          Style.IsFontAssigned = True
          TabOrder = 0
          OnKeyDown = cxDBTextEdit18KeyDown
          OnKeyPress = cxDBTextEdit18KeyPress
          Width = 182
        end
        object DBEdit20: TDBEdit
          Left = 66
          Top = 45
          Width = 41
          Height = 21
          CharCase = ecUpperCase
          DataField = 'BANCO_CONTA_1'
          DataSource = DS_Cliente
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = []
          ParentFont = False
          TabOrder = 1
          OnKeyDown = DBEdit20KeyDown
          OnKeyPress = DBEdit20KeyPress
        end
        object DBEdit18: TDBEdit
          Left = 156
          Top = 45
          Width = 30
          Height = 21
          BiDiMode = bdRightToLeft
          CharCase = ecUpperCase
          DataField = 'BANCO_CONTA_DIGITO'
          DataSource = DS_Cliente
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = []
          ParentBiDiMode = False
          ParentFont = False
          TabOrder = 2
          OnKeyDown = DBEdit18KeyDown
          OnKeyPress = DBEdit18KeyPress
        end
        object DBEdit10: TDBEdit
          Left = 216
          Top = 45
          Width = 32
          Height = 21
          BiDiMode = bdRightToLeft
          CharCase = ecUpperCase
          DataField = 'BANCO_OP_CONTA'
          DataSource = DS_Cliente
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = []
          ParentBiDiMode = False
          ParentFont = False
          TabOrder = 3
          OnKeyDown = DBEdit10KeyDown
          OnKeyPress = DBEdit10KeyPress
        end
        object DBEdit23: TDBEdit
          Left = 66
          Top = 70
          Width = 41
          Height = 21
          BiDiMode = bdRightToLeft
          CharCase = ecUpperCase
          DataField = 'BANCO_AGENCIA_1'
          DataSource = DS_Cliente
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = []
          ParentBiDiMode = False
          ParentFont = False
          TabOrder = 4
          OnKeyDown = DBEdit23KeyDown
          OnKeyPress = DBEdit23KeyPress
        end
        object DBEdit31: TDBEdit
          Left = 216
          Top = 70
          Width = 32
          Height = 21
          BiDiMode = bdRightToLeft
          CharCase = ecUpperCase
          DataField = 'BANCO_ANGENCIA_DIGITO'
          DataSource = DS_Cliente
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = []
          ParentBiDiMode = False
          ParentFont = False
          TabOrder = 5
          OnKeyDown = DBEdit31KeyDown
          OnKeyPress = DBEdit31KeyPress
        end
      end
      object grp1: TGroupBox
        Left = 808
        Top = 16
        Width = 241
        Height = 119
        Caption = '  Contatos Adicionais  '
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -12
        Font.Name = 'Tahoma'
        Font.Style = [fsBold]
        ParentFont = False
        TabOrder = 10
        object TLabel
          Left = 29
          Top = 93
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
          Left = 25
          Top = 68
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
          Left = 16
          Top = 43
          Width = 56
          Height = 18
          Caption = 'Contato:'
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Height = -15
          Font.Name = 'Tahoma'
          Font.Style = []
          ParentFont = False
        end
        object TLabel
          Left = 10
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
        object cxDBTextEdit24: TcxDBTextEdit
          Left = 82
          Top = 92
          DataBinding.DataField = 'EMAIL_1'
          DataBinding.DataSource = DS_Cliente
          ParentFont = False
          Properties.CharCase = ecUpperCase
          Style.Font.Charset = ANSI_CHARSET
          Style.Font.Color = clWindowText
          Style.Font.Height = -11
          Style.Font.Name = 'Tahoma'
          Style.Font.Style = []
          Style.IsFontAssigned = True
          TabOrder = 3
          OnKeyDown = cxDBTextEdit24KeyDown
          Width = 144
        end
        object dbedtCELULAR_1: TDBEdit
          Left = 82
          Top = 67
          Width = 144
          Height = 21
          CharCase = ecUpperCase
          DataField = 'CELULAR_1'
          DataSource = DS_Cliente
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = []
          ParentFont = False
          TabOrder = 2
          OnKeyDown = dbedtCELULAR_1KeyDown
          OnKeyPress = dbedtCELULAR_1KeyPress
        end
        object cxDBTextEdit59: TcxDBTextEdit
          Left = 82
          Top = 42
          DataBinding.DataField = 'CONTATO_1'
          DataBinding.DataSource = DS_Cliente
          ParentFont = False
          Properties.CharCase = ecUpperCase
          Style.Font.Charset = ANSI_CHARSET
          Style.Font.Color = clWindowText
          Style.Font.Height = -11
          Style.Font.Name = 'Tahoma'
          Style.Font.Style = []
          Style.IsFontAssigned = True
          TabOrder = 1
          OnKeyDown = cxDBTextEdit59KeyDown
          OnKeyPress = cxDBTextEdit59KeyPress
          Width = 144
        end
        object dbedtTELEFONE_1: TDBEdit
          Left = 82
          Top = 18
          Width = 144
          Height = 21
          CharCase = ecUpperCase
          DataField = 'TELEFONE_1'
          DataSource = DS_Cliente
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = []
          ParentFont = False
          TabOrder = 0
          OnKeyDown = dbedtTELEFONE_1KeyDown
          OnKeyPress = dbedtTELEFONE_1KeyPress
        end
      end
      object dbedt_codigo: TDBEdit
        Left = 15
        Top = 31
        Width = 52
        Height = 21
        DataField = 'CODIGO'
        DataSource = DS_Cliente
        Enabled = False
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = []
        ParentFont = False
        ReadOnly = True
        TabOrder = 6
      end
      object grpConveniados: TGroupBox
        Left = 544
        Top = 134
        Width = 505
        Height = 77
        Caption = '  Conveniados  '
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -12
        Font.Name = 'Tahoma'
        Font.Style = [fsBold]
        ParentFont = False
        TabOrder = 17
        object TLabel
          Left = 22
          Top = 19
          Width = 42
          Height = 16
          Caption = 'Nome: '
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'Tahoma'
          Font.Style = []
          ParentFont = False
        end
        object TLabel
          Left = 369
          Top = 19
          Width = 27
          Height = 16
          Caption = 'CPF:'
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'Tahoma'
          Font.Style = []
          ParentFont = False
        end
        object TLabel
          Left = 4
          Top = 46
          Width = 57
          Height = 16
          Caption = 'Matr'#237'cula:'
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'Tahoma'
          Font.Style = []
          ParentFont = False
        end
        object TLabel
          Left = 145
          Top = 46
          Width = 46
          Height = 16
          Caption = 'Cr'#233'dito:'
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'Tahoma'
          Font.Style = []
          ParentFont = False
        end
        object TLabel
          Left = 287
          Top = 46
          Width = 41
          Height = 16
          Caption = 'Senha:'
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'Tahoma'
          Font.Style = []
          ParentFont = False
        end
        object conveniadoNome: TcxTextEdit
          Left = 63
          Top = 18
          ParentFont = False
          Properties.CharCase = ecUpperCase
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
          Width = 279
        end
        object conveniadoCpf: TcxMaskEdit
          Left = 400
          Top = 18
          ParentFont = False
          Properties.EditMask = '!999\.999\.999\-99;1; '
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
          TabOrder = 1
          Text = '   .   .   -  '
          Width = 90
        end
        object conveniadoSenha: TcxMaskEdit
          Left = 332
          Top = 45
          ParentFont = False
          Properties.EchoMode = eemPassword
          Properties.PasswordChar = '*'
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
          TabOrder = 4
          OnKeyPress = conveniadoSenhaKeyPress
          Width = 64
        end
        object conveniadoMatricula: TcxTextEdit
          Left = 63
          Top = 45
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
          TabOrder = 2
          OnKeyPress = conveniadoMatriculaKeyPress
          Width = 72
        end
        object conveniadoCredito: TcxCurrencyEdit
          Left = 193
          Top = 45
          EditValue = 0.000000000000000000
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
          TabOrder = 3
          OnEnter = conveniadoCreditoEnter
          Width = 85
        end
        object btn_confirmar: TcxButton
          Left = 406
          Top = 44
          Width = 84
          Height = 23
          Caption = 'Gravar'
          LookAndFeel.NativeStyle = False
          LookAndFeel.SkinName = 'Metropolis'
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
          TabOrder = 5
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Height = -12
          Font.Name = 'Tahoma'
          Font.Style = [fsBold]
          ParentFont = False
          OnClick = btn_confirmarClick
        end
      end
      object cxGroupBox3: TcxGroupBox
        Left = 544
        Top = 216
        Caption = '  Conveniados Cadastrados  '
        ParentBackground = False
        ParentColor = False
        ParentFont = False
        Style.Color = 16250871
        Style.Font.Charset = ANSI_CHARSET
        Style.Font.Color = clWindowText
        Style.Font.Height = -12
        Style.Font.Name = 'Tahoma'
        Style.Font.Style = [fsBold]
        Style.IsFontAssigned = True
        TabOrder = 18
        Height = 275
        Width = 505
        object TLabel
          Left = 2
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
          Left = 212
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
          Left = 313
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
          Left = 408
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
        object TLabel
          Left = 2
          Top = 250
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
        object lblQTDEConveniados: TLabel
          Left = 80
          Top = 250
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
          Left = 134
          Top = 251
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
        object TLabel
          Left = 282
          Top = 251
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
        object conveniadoConsulta: TcxTextEdit
          Left = 2
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
          OnKeyUp = conveniadoConsultaKeyUp
          Width = 211
        end
        object conveniadoFiltro: TcxComboBox
          Left = 212
          Top = 27
          ParentFont = False
          Properties.DropDownListStyle = lsFixedList
          Properties.Items.Strings = (
            'Nome'
            'CPF'
            'Matr'#237'cula'
            'Cr'#233'dito')
          Properties.OnChange = change
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
          Left = 313
          Top = 27
          ParentFont = False
          Properties.DateButtons = []
          Properties.DisplayFormat = 'dd/mm/yyyy'
          Properties.OnChange = change
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
          Left = 408
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
        object gdConveniados: TcxGrid
          Left = 2
          Top = 46
          Width = 501
          Height = 201
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
            PopupMenu = popConveniados
            Navigator.Buttons.CustomButtons = <>
            OnCellDblClick = gdConveniadosTbVwCellDblClick
            OnCustomDrawCell = gdConveniadosTbVwCustomDrawCell
            DataController.DataSource = ds_conveniado
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
            object clPeriodo: TcxGridDBColumn
              Caption = 'Per'#237'odo'
              DataBinding.FieldName = 'periodo'
              FooterAlignmentHorz = taCenter
              GroupSummaryAlignment = taCenter
              HeaderAlignmentHorz = taCenter
              MinWidth = 84
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
              Width = 84
            end
            object clNome: TcxGridDBColumn
              Caption = 'Nome'
              DataBinding.FieldName = 'nome'
              MinWidth = 179
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
              Width = 179
            end
            object clCPF: TcxGridDBColumn
              Caption = 'CPF'
              DataBinding.FieldName = 'cpf'
              PropertiesClassName = 'TcxMaskEditProperties'
              Properties.Alignment.Horz = taCenter
              Properties.EditMask = '999\.999\.999\-99'
              FooterAlignmentHorz = taCenter
              GroupSummaryAlignment = taCenter
              HeaderAlignmentHorz = taCenter
              MinWidth = 93
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
              Width = 93
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
              MinWidth = 67
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
              Width = 67
            end
            object clCredito: TcxGridDBColumn
              Caption = 'R$'
              DataBinding.FieldName = 'credito'
              PropertiesClassName = 'TcxCurrencyEditProperties'
              FooterAlignmentHorz = taCenter
              GroupSummaryAlignment = taCenter
              HeaderAlignmentHorz = taCenter
              MinWidth = 76
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
              Width = 76
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
        object btnRenovarConveniados: TcxButton
          Left = 419
          Top = 248
          Width = 84
          Height = 23
          Caption = 'Renovar'
          LookAndFeel.NativeStyle = False
          LookAndFeel.SkinName = 'Metropolis'
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
          TabOrder = 5
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Height = -12
          Font.Name = 'Tahoma'
          Font.Style = [fsBold]
          ParentFont = False
          OnClick = btnRenovarConveniadosClick
        end
        object convenioInicio: TcxDateEdit
          Left = 172
          Top = 249
          Properties.DateButtons = []
          Properties.DisplayFormat = 'dd/mm/yy'
          Properties.EditFormat = 'dd/mm/yy'
          Properties.OnEditValueChanged = convenioInicioPropertiesEditValueChanged
          Style.LookAndFeel.NativeStyle = False
          Style.LookAndFeel.SkinName = 'Metropolis'
          StyleDisabled.LookAndFeel.NativeStyle = False
          StyleDisabled.LookAndFeel.SkinName = 'Metropolis'
          StyleFocused.LookAndFeel.NativeStyle = False
          StyleFocused.LookAndFeel.SkinName = 'Metropolis'
          StyleHot.LookAndFeel.NativeStyle = False
          StyleHot.LookAndFeel.SkinName = 'Metropolis'
          TabOrder = 6
          Width = 95
        end
        object convenioFim: TcxDateEdit
          Left = 310
          Top = 249
          Properties.DateButtons = []
          Properties.DisplayFormat = 'dd/mm/yy'
          Properties.EditFormat = 'dd/mm/yy'
          Properties.OnEditValueChanged = convenioFimPropertiesEditValueChanged
          Style.LookAndFeel.NativeStyle = False
          Style.LookAndFeel.SkinName = 'Metropolis'
          StyleDisabled.LookAndFeel.NativeStyle = False
          StyleDisabled.LookAndFeel.SkinName = 'Metropolis'
          StyleFocused.LookAndFeel.NativeStyle = False
          StyleFocused.LookAndFeel.SkinName = 'Metropolis'
          StyleHot.LookAndFeel.NativeStyle = False
          StyleHot.LookAndFeel.SkinName = 'Metropolis'
          TabOrder = 7
          Width = 95
        end
      end
    end
    object tb_otica: TcxTabSheet
      Caption = 'Dados '#211'tica'
      ImageIndex = 2
      object GroupBox3: TGroupBox
        Left = 3
        Top = 9
        Width = 1185
        Height = 208
        Caption = '  Receita  '
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'Tahoma'
        Font.Style = [fsBold]
        ParentFont = False
        TabOrder = 0
        object Label13: TLabel
          Left = 256
          Top = 20
          Width = 47
          Height = 16
          Alignment = taCenter
          Caption = 'ESFERA'
        end
        object Label15: TLabel
          Left = 328
          Top = 20
          Width = 60
          Height = 16
          Alignment = taCenter
          Caption = 'CIL'#205'NDRO'
        end
        object Label16: TLabel
          Left = 415
          Top = 20
          Width = 30
          Height = 16
          Alignment = taCenter
          Caption = 'EIXO'
        end
        object Label18: TLabel
          Left = 474
          Top = 12
          Width = 70
          Height = 32
          Alignment = taCenter
          Caption = 'DIST'#194'NCIA'#13#10'PUPILAR'
        end
        object Label22: TLabel
          Left = 152
          Top = 63
          Width = 89
          Height = 16
          Alignment = taCenter
          Caption = 'OLHO DIREITO'
        end
        object Label23: TLabel
          Left = 137
          Top = 90
          Width = 104
          Height = 16
          Alignment = taCenter
          Caption = 'OLHO ESQUERDO'
        end
        object Shape1: TShape
          Left = 137
          Top = 50
          Width = 417
          Height = 1
          Brush.Color = 10485760
          Pen.Color = clGray
        end
        object Label28: TLabel
          Left = 137
          Top = 34
          Width = 39
          Height = 16
          Alignment = taCenter
          Caption = 'LONGE'
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlue
          Font.Height = -13
          Font.Name = 'Tahoma'
          Font.Style = [fsBold]
          ParentFont = False
        end
        object Label36: TLabel
          Left = 622
          Top = 61
          Width = 75
          Height = 16
          Alignment = taCenter
          Caption = 'LENTE GRAU'
        end
        object Label41: TLabel
          Left = 591
          Top = 90
          Width = 106
          Height = 16
          Alignment = taCenter
          Caption = 'ARMA'#199#195'O GRAU'
        end
        object Label42: TLabel
          Left = 614
          Top = 119
          Width = 83
          Height = 16
          Alignment = taCenter
          Caption = 'LENTE SOLAR'
        end
        object Label43: TLabel
          Left = 601
          Top = 148
          Width = 96
          Height = 16
          Alignment = taCenter
          Caption = #211'CULOS SOLAR'
        end
        object Label52: TLabel
          Left = 646
          Top = 32
          Width = 51
          Height = 16
          Alignment = taCenter
          Caption = 'ADI'#199#195'O'
        end
        object Label26: TLabel
          Left = 137
          Top = 173
          Width = 104
          Height = 16
          Alignment = taCenter
          Caption = 'OLHO ESQUERDO'
        end
        object Label24: TLabel
          Left = 152
          Top = 146
          Width = 89
          Height = 16
          Alignment = taCenter
          Caption = 'OLHO DIREITO'
        end
        object Shape2: TShape
          Left = 137
          Top = 132
          Width = 417
          Height = 1
          Brush.Color = clBlue
          Pen.Color = clGray
        end
        object Label35: TLabel
          Left = 136
          Top = 115
          Width = 40
          Height = 16
          Alignment = taCenter
          Caption = 'PERTO'
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlue
          Font.Height = -13
          Font.Name = 'Tahoma'
          Font.Style = [fsBold]
          ParentFont = False
        end
        object L_OE_ES: TcxTextEdit
          Left = 246
          Top = 89
          ParentFont = False
          Style.Font.Charset = ANSI_CHARSET
          Style.Font.Color = clWindowText
          Style.Font.Height = -11
          Style.Font.Name = 'Tahoma'
          Style.Font.Style = [fsBold]
          Style.IsFontAssigned = True
          TabOrder = 6
          OnKeyDown = L_OE_ESKeyDown
          OnKeyPress = L_OE_ESKeyPress
          Width = 70
        end
        object L_OE_C: TcxTextEdit
          Left = 322
          Top = 89
          ParentFont = False
          Style.Font.Charset = ANSI_CHARSET
          Style.Font.Color = clWindowText
          Style.Font.Height = -11
          Style.Font.Name = 'Tahoma'
          Style.Font.Style = [fsBold]
          Style.IsFontAssigned = True
          TabOrder = 7
          OnKeyDown = L_OE_CKeyDown
          OnKeyPress = L_OE_CKeyPress
          Width = 70
        end
        object L_OE_EX: TcxTextEdit
          Left = 398
          Top = 89
          ParentFont = False
          Style.Font.Charset = ANSI_CHARSET
          Style.Font.Color = clWindowText
          Style.Font.Height = -11
          Style.Font.Name = 'Tahoma'
          Style.Font.Style = [fsBold]
          Style.IsFontAssigned = True
          TabOrder = 8
          OnKeyDown = L_OE_EXKeyDown
          OnKeyPress = L_OE_EXKeyPress
          Width = 70
        end
        object L_OE_DP: TcxTextEdit
          Left = 474
          Top = 89
          ParentFont = False
          Style.Font.Charset = ANSI_CHARSET
          Style.Font.Color = clWindowText
          Style.Font.Height = -11
          Style.Font.Name = 'Tahoma'
          Style.Font.Style = [fsBold]
          Style.IsFontAssigned = True
          TabOrder = 9
          OnKeyDown = L_OE_DPKeyDown
          OnKeyPress = L_OE_DPKeyPress
          Width = 70
        end
        object LENTE_GRAU: TcxTextEdit
          Left = 707
          Top = 60
          ParentFont = False
          Properties.CharCase = ecUpperCase
          Style.Font.Charset = ANSI_CHARSET
          Style.Font.Color = clWindowText
          Style.Font.Height = -11
          Style.Font.Name = 'Tahoma'
          Style.Font.Style = [fsBold]
          Style.IsFontAssigned = True
          TabOrder = 5
          OnKeyDown = LENTE_GRAUKeyDown
          Width = 312
        end
        object ARMACAO_GRAU: TcxTextEdit
          Left = 707
          Top = 89
          ParentFont = False
          Properties.CharCase = ecUpperCase
          Style.Font.Charset = ANSI_CHARSET
          Style.Font.Color = clWindowText
          Style.Font.Height = -11
          Style.Font.Name = 'Tahoma'
          Style.Font.Style = [fsBold]
          Style.IsFontAssigned = True
          TabOrder = 10
          OnKeyDown = ARMACAO_GRAUKeyDown
          Width = 312
        end
        object LENTE_SOLAR: TcxTextEdit
          Left = 707
          Top = 118
          ParentFont = False
          Properties.CharCase = ecUpperCase
          Style.Font.Charset = ANSI_CHARSET
          Style.Font.Color = clWindowText
          Style.Font.Height = -11
          Style.Font.Name = 'Tahoma'
          Style.Font.Style = [fsBold]
          Style.IsFontAssigned = True
          TabOrder = 11
          OnKeyDown = LENTE_SOLARKeyDown
          Width = 312
        end
        object ARMACAO_SOLAR: TcxTextEdit
          Left = 707
          Top = 147
          ParentFont = False
          Properties.CharCase = ecUpperCase
          Style.Font.Charset = ANSI_CHARSET
          Style.Font.Color = clWindowText
          Style.Font.Height = -11
          Style.Font.Name = 'Tahoma'
          Style.Font.Style = [fsBold]
          Style.IsFontAssigned = True
          TabOrder = 16
          OnKeyDown = ARMACAO_SOLARKeyDown
          Width = 312
        end
        object L_OD_ES: TcxTextEdit
          Left = 246
          Top = 62
          ParentFont = False
          Style.Font.Charset = ANSI_CHARSET
          Style.Font.Color = clWindowText
          Style.Font.Height = -11
          Style.Font.Name = 'Tahoma'
          Style.Font.Style = [fsBold]
          Style.IsFontAssigned = True
          TabOrder = 1
          OnKeyDown = L_OD_ESKeyDown
          OnKeyPress = L_OD_ESKeyPress
          Width = 70
        end
        object L_OD_C: TcxTextEdit
          Left = 322
          Top = 62
          ParentFont = False
          Style.Font.Charset = ANSI_CHARSET
          Style.Font.Color = clWindowText
          Style.Font.Height = -11
          Style.Font.Name = 'Tahoma'
          Style.Font.Style = [fsBold]
          Style.IsFontAssigned = True
          TabOrder = 2
          OnKeyDown = L_OD_CKeyDown
          OnKeyPress = L_OD_CKeyPress
          Width = 70
        end
        object L_OD_EX: TcxTextEdit
          Left = 398
          Top = 62
          ParentFont = False
          Style.Font.Charset = ANSI_CHARSET
          Style.Font.Color = clWindowText
          Style.Font.Height = -11
          Style.Font.Name = 'Tahoma'
          Style.Font.Style = [fsBold]
          Style.IsFontAssigned = True
          TabOrder = 3
          OnKeyDown = L_OD_EXKeyDown
          OnKeyPress = L_OD_EXKeyPress
          Width = 70
        end
        object L_OD_DP: TcxTextEdit
          Left = 474
          Top = 62
          ParentFont = False
          Style.Font.Charset = ANSI_CHARSET
          Style.Font.Color = clWindowText
          Style.Font.Height = -11
          Style.Font.Name = 'Tahoma'
          Style.Font.Style = [fsBold]
          Style.IsFontAssigned = True
          TabOrder = 4
          OnKeyDown = L_OD_DPKeyDown
          OnKeyPress = L_OD_DPKeyPress
          Width = 70
        end
        object btn_cad: TcxButton
          Left = 935
          Top = 177
          Width = 84
          Height = 23
          Caption = 'Gravar'
          LookAndFeel.NativeStyle = False
          LookAndFeel.SkinName = 'Metropolis'
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
          TabOrder = 21
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Height = -12
          Font.Name = 'Tahoma'
          Font.Style = [fsBold]
          ParentFont = False
          OnClick = btn_cadClick
        end
        object ADICAO: TcxTextEdit
          Left = 707
          Top = 31
          ParentFont = False
          Style.Font.Charset = ANSI_CHARSET
          Style.Font.Color = clWindowText
          Style.Font.Height = -11
          Style.Font.Name = 'Tahoma'
          Style.Font.Style = [fsBold]
          Style.IsFontAssigned = True
          TabOrder = 0
          OnKeyDown = ADICAOKeyDown
          Width = 157
        end
        object P_OE_DP: TcxTextEdit
          Left = 474
          Top = 172
          ParentFont = False
          Style.Font.Charset = ANSI_CHARSET
          Style.Font.Color = clWindowText
          Style.Font.Height = -11
          Style.Font.Name = 'Tahoma'
          Style.Font.Style = [fsBold]
          Style.IsFontAssigned = True
          TabOrder = 20
          OnKeyDown = P_OE_DPKeyDown
          OnKeyPress = P_OE_DPKeyPress
          Width = 70
        end
        object P_OD_DP: TcxTextEdit
          Left = 474
          Top = 145
          ParentFont = False
          Style.Font.Charset = ANSI_CHARSET
          Style.Font.Color = clWindowText
          Style.Font.Height = -11
          Style.Font.Name = 'Tahoma'
          Style.Font.Style = [fsBold]
          Style.IsFontAssigned = True
          TabOrder = 15
          OnKeyDown = P_OD_DPKeyDown
          OnKeyPress = P_OD_DPKeyPress
          Width = 70
        end
        object P_OD_EX: TcxTextEdit
          Left = 398
          Top = 145
          ParentFont = False
          Style.Font.Charset = ANSI_CHARSET
          Style.Font.Color = clWindowText
          Style.Font.Height = -11
          Style.Font.Name = 'Tahoma'
          Style.Font.Style = [fsBold]
          Style.IsFontAssigned = True
          TabOrder = 14
          OnKeyDown = P_OD_EXKeyDown
          OnKeyPress = P_OD_EXKeyPress
          Width = 70
        end
        object P_OE_EX: TcxTextEdit
          Left = 398
          Top = 172
          ParentFont = False
          Style.Font.Charset = ANSI_CHARSET
          Style.Font.Color = clWindowText
          Style.Font.Height = -11
          Style.Font.Name = 'Tahoma'
          Style.Font.Style = [fsBold]
          Style.IsFontAssigned = True
          TabOrder = 19
          OnKeyDown = P_OE_EXKeyDown
          OnKeyPress = P_OE_EXKeyPress
          Width = 70
        end
        object P_OE_C: TcxTextEdit
          Left = 322
          Top = 172
          ParentFont = False
          Style.Font.Charset = ANSI_CHARSET
          Style.Font.Color = clWindowText
          Style.Font.Height = -11
          Style.Font.Name = 'Tahoma'
          Style.Font.Style = [fsBold]
          Style.IsFontAssigned = True
          TabOrder = 18
          OnKeyDown = P_OE_CKeyDown
          OnKeyPress = P_OE_CKeyPress
          Width = 70
        end
        object P_OD_C: TcxTextEdit
          Left = 322
          Top = 145
          ParentFont = False
          Style.Font.Charset = ANSI_CHARSET
          Style.Font.Color = clWindowText
          Style.Font.Height = -11
          Style.Font.Name = 'Tahoma'
          Style.Font.Style = [fsBold]
          Style.IsFontAssigned = True
          TabOrder = 13
          OnKeyDown = P_OD_CKeyDown
          OnKeyPress = P_OD_CKeyPress
          Width = 70
        end
        object P_OD_ES: TcxTextEdit
          Left = 246
          Top = 145
          ParentFont = False
          Style.Font.Charset = ANSI_CHARSET
          Style.Font.Color = clWindowText
          Style.Font.Height = -11
          Style.Font.Name = 'Tahoma'
          Style.Font.Style = [fsBold]
          Style.IsFontAssigned = True
          TabOrder = 12
          OnKeyDown = P_OD_ESKeyDown
          OnKeyPress = P_OD_ESKeyPress
          Width = 70
        end
        object P_OE_ES: TcxTextEdit
          Left = 246
          Top = 172
          ParentFont = False
          Style.Font.Charset = ANSI_CHARSET
          Style.Font.Color = clWindowText
          Style.Font.Height = -11
          Style.Font.Name = 'Tahoma'
          Style.Font.Style = [fsBold]
          Style.IsFontAssigned = True
          TabOrder = 17
          OnKeyDown = P_OE_ESKeyDown
          OnKeyPress = P_OE_ESKeyPress
          Width = 70
        end
      end
      object grid_otica: TcxGrid
        Left = 3
        Top = 221
        Width = 1185
        Height = 383
        PopupMenu = grid_otica_pop
        TabOrder = 1
        LevelTabs.Style = 2
        LookAndFeel.Kind = lfFlat
        LookAndFeel.NativeStyle = False
        LookAndFeel.SkinName = 'Office2013LightGray'
        object grid_oticaDBBandedTableView1: TcxGridDBBandedTableView
          Navigator.Buttons.CustomButtons = <>
          OnCellDblClick = grid_oticaDBBandedTableView1CellDblClick
          OnCustomDrawCell = grid_oticaDBBandedTableView1CustomDrawCell
          DataController.DataSource = DS_DADOS_OTICA
          DataController.Summary.DefaultGroupSummaryItems = <>
          DataController.Summary.FooterSummaryItems = <>
          DataController.Summary.SummaryGroups = <>
          OptionsCustomize.BandMoving = False
          OptionsCustomize.BandSizing = False
          OptionsData.CancelOnExit = False
          OptionsData.Deleting = False
          OptionsData.DeletingConfirmation = False
          OptionsData.Editing = False
          OptionsData.Inserting = False
          OptionsView.GroupByBox = False
          Bands = <
            item
              AlternateCaption = 'LONGE'
              Caption = 'LONGE'
              Options.HoldOwnColumnsOnly = True
              Width = 462
            end
            item
              AlternateCaption = 'PERTO'
              Caption = 'PERTO'
              Width = 462
            end
            item
              AlternateCaption = 'OLHO ESQUERDO_L'
              Caption = 'OLHO ESQUERDO'
              Position.BandIndex = 0
              Position.ColIndex = 1
              Width = 215
            end
            item
              AlternateCaption = 'OLHO DIREITO_L'
              Caption = 'OLHO DIREITO'
              Position.BandIndex = 0
              Position.ColIndex = 0
              Width = 215
            end
            item
              Caption = 'OLHO ESQUERDO'
              Position.BandIndex = 1
              Position.ColIndex = 1
              Width = 215
            end
            item
              Caption = 'OLHO DIREITO'
              Position.BandIndex = 1
              Position.ColIndex = 0
              Width = 215
            end
            item
              Caption = #211'CULOS'
              Width = 600
            end>
          object grid_oticaDBBandedTableView1DATA_CADASTRO: TcxGridDBBandedColumn
            Caption = 'DATA'
            DataBinding.FieldName = 'DATA_CADASTRO'
            Visible = False
            DateTimeGrouping = dtgByDate
            GroupIndex = 0
            HeaderAlignmentHorz = taCenter
            HeaderGlyphAlignmentHorz = taCenter
            Position.BandIndex = -1
            Position.ColIndex = -1
            Position.RowIndex = -1
          end
          object grid_oticaDBBandedTableView1L_OE_ESFERA: TcxGridDBBandedColumn
            Caption = 'ESFERA'
            DataBinding.FieldName = 'L_OE_ESFERA'
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
          object grid_oticaDBBandedTableView1L_OE_CILINDRO: TcxGridDBBandedColumn
            Caption = 'CILIN.'
            DataBinding.FieldName = 'L_OE_CILINDRO'
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
          object grid_oticaDBBandedTableView1L_OE_EIXO: TcxGridDBBandedColumn
            Caption = 'EIXO'
            DataBinding.FieldName = 'L_OE_EIXO'
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
          object grid_oticaDBBandedTableView1L_OE_DISTANCIA_PUPILAR: TcxGridDBBandedColumn
            Caption = 'D.P.'
            DataBinding.FieldName = 'L_OE_DISTANCIA_PUPILAR'
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
            Position.ColIndex = 3
            Position.RowIndex = 0
          end
          object grid_oticaDBBandedTableView1L_OD_ESFERA: TcxGridDBBandedColumn
            Caption = 'ESFERA'
            DataBinding.FieldName = 'L_OD_ESFERA'
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
            Position.BandIndex = 3
            Position.ColIndex = 0
            Position.RowIndex = 0
          end
          object grid_oticaDBBandedTableView1L_OD_CILINDRO: TcxGridDBBandedColumn
            Caption = 'CILIN.'
            DataBinding.FieldName = 'L_OD_CILINDRO'
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
            Position.BandIndex = 3
            Position.ColIndex = 1
            Position.RowIndex = 0
          end
          object grid_oticaDBBandedTableView1L_OD_EIXO: TcxGridDBBandedColumn
            Caption = 'EIXO'
            DataBinding.FieldName = 'L_OD_EIXO'
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
            Position.BandIndex = 3
            Position.ColIndex = 2
            Position.RowIndex = 0
          end
          object grid_oticaDBBandedTableView1L_OD_DISTANCIA_PUPILAR: TcxGridDBBandedColumn
            Caption = 'D.P.'
            DataBinding.FieldName = 'L_OD_DISTANCIA_PUPILAR'
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
            Position.BandIndex = 3
            Position.ColIndex = 3
            Position.RowIndex = 0
          end
          object grid_oticaDBBandedTableView1P_OE_ESFERA: TcxGridDBBandedColumn
            Caption = 'ESFERA'
            DataBinding.FieldName = 'P_OE_ESFERA'
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
            Position.BandIndex = 4
            Position.ColIndex = 0
            Position.RowIndex = 0
          end
          object grid_oticaDBBandedTableView1P_OE_CILINDRO: TcxGridDBBandedColumn
            Caption = 'CILIN.'
            DataBinding.FieldName = 'P_OE_CILINDRO'
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
            Position.BandIndex = 4
            Position.ColIndex = 1
            Position.RowIndex = 0
          end
          object grid_oticaDBBandedTableView1P_OE_EIXO: TcxGridDBBandedColumn
            Caption = 'EIXO'
            DataBinding.FieldName = 'P_OE_EIXO'
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
            Position.BandIndex = 4
            Position.ColIndex = 2
            Position.RowIndex = 0
          end
          object grid_oticaDBBandedTableView1P_OE_DISTANCIA_PUPILAR: TcxGridDBBandedColumn
            Caption = 'D.P.'
            DataBinding.FieldName = 'P_OE_DISTANCIA_PUPILAR'
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
            Position.BandIndex = 4
            Position.ColIndex = 3
            Position.RowIndex = 0
          end
          object grid_oticaDBBandedTableView1P_OD_ESFERA: TcxGridDBBandedColumn
            Caption = 'ESFERA'
            DataBinding.FieldName = 'P_OD_ESFERA'
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
            Position.BandIndex = 5
            Position.ColIndex = 0
            Position.RowIndex = 0
          end
          object grid_oticaDBBandedTableView1P_OD_CILINDRO: TcxGridDBBandedColumn
            Caption = 'CILIN.'
            DataBinding.FieldName = 'P_OD_CILINDRO'
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
            Position.BandIndex = 5
            Position.ColIndex = 1
            Position.RowIndex = 0
          end
          object grid_oticaDBBandedTableView1P_OD_EIXO: TcxGridDBBandedColumn
            Caption = 'EIXO'
            DataBinding.FieldName = 'P_OD_EIXO'
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
            Position.BandIndex = 5
            Position.ColIndex = 2
            Position.RowIndex = 0
          end
          object grid_oticaDBBandedTableView1P_OD_DISTANCIA_PUPILAR: TcxGridDBBandedColumn
            Caption = 'D.P.'
            DataBinding.FieldName = 'P_OD_DISTANCIA_PUPILAR'
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
            Position.BandIndex = 5
            Position.ColIndex = 3
            Position.RowIndex = 0
          end
          object grid_oticaDBBandedTableView1ARMACAO_SOLAR: TcxGridDBBandedColumn
            Caption = #211'CULOS SOLAR'
            DataBinding.FieldName = 'ARMACAO_SOLAR'
            HeaderAlignmentHorz = taCenter
            Options.Editing = False
            Options.FilteringAddValueItems = False
            Options.FilteringFilteredItemsList = False
            Options.FilteringMRUItemsList = False
            Options.FilteringPopupMultiSelect = False
            Options.FilteringWithFindPanel = False
            Options.IgnoreTimeForFiltering = False
            Options.IncSearch = False
            Options.GroupFooters = False
            Options.Grouping = False
            Options.Moving = False
            VisibleForEditForm = bFalse
            Width = 120
            Position.BandIndex = 6
            Position.ColIndex = 4
            Position.RowIndex = 0
          end
          object grid_oticaDBBandedTableView1ARMACAO_GRAU: TcxGridDBBandedColumn
            Caption = 'ARMA'#199#195'O GRAU'
            DataBinding.FieldName = 'ARMACAO_GRAU'
            HeaderAlignmentHorz = taCenter
            Options.Editing = False
            Options.FilteringAddValueItems = False
            Options.FilteringFilteredItemsList = False
            Options.FilteringMRUItemsList = False
            Options.FilteringPopupMultiSelect = False
            Options.FilteringWithFindPanel = False
            Options.IgnoreTimeForFiltering = False
            Options.IncSearch = False
            Options.GroupFooters = False
            Options.Grouping = False
            Options.Moving = False
            VisibleForEditForm = bFalse
            Width = 120
            Position.BandIndex = 6
            Position.ColIndex = 2
            Position.RowIndex = 0
          end
          object grid_oticaDBBandedTableView1LENTE_GRAU: TcxGridDBBandedColumn
            Caption = 'LENTE GRAU'
            DataBinding.FieldName = 'LENTE_GRAU'
            HeaderAlignmentHorz = taCenter
            Options.Editing = False
            Options.FilteringAddValueItems = False
            Options.FilteringFilteredItemsList = False
            Options.FilteringMRUItemsList = False
            Options.FilteringPopupMultiSelect = False
            Options.FilteringWithFindPanel = False
            Options.IgnoreTimeForFiltering = False
            Options.IncSearch = False
            Options.GroupFooters = False
            Options.Grouping = False
            Options.Moving = False
            VisibleForEditForm = bFalse
            Width = 120
            Position.BandIndex = 6
            Position.ColIndex = 1
            Position.RowIndex = 0
          end
          object grid_oticaDBBandedTableView1LENTE_SOLAR: TcxGridDBBandedColumn
            Caption = 'LENTE SOLAR'
            DataBinding.FieldName = 'LENTE_SOLAR'
            HeaderAlignmentHorz = taCenter
            Options.Editing = False
            Options.FilteringAddValueItems = False
            Options.FilteringFilteredItemsList = False
            Options.FilteringMRUItemsList = False
            Options.FilteringPopupMultiSelect = False
            Options.FilteringWithFindPanel = False
            Options.IgnoreTimeForFiltering = False
            Options.IncSearch = False
            Options.GroupFooters = False
            Options.Grouping = False
            Options.Moving = False
            VisibleForEditForm = bFalse
            Width = 120
            Position.BandIndex = 6
            Position.ColIndex = 3
            Position.RowIndex = 0
          end
          object grid_oticaDBBandedTableView1ADICAO: TcxGridDBBandedColumn
            Caption = 'ADI'#199#195'O'
            DataBinding.FieldName = 'ADICAO'
            HeaderAlignmentHorz = taCenter
            Options.Editing = False
            Options.FilteringAddValueItems = False
            Options.FilteringFilteredItemsList = False
            Options.FilteringMRUItemsList = False
            Options.FilteringPopupMultiSelect = False
            Options.FilteringWithFindPanel = False
            Options.IgnoreTimeForFiltering = False
            Options.IncSearch = False
            Options.GroupFooters = False
            Options.Grouping = False
            Options.Moving = False
            VisibleForEditForm = bFalse
            Width = 120
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
    end
  end
  object DS_Cliente: TDataSource
    DataSet = SQL_Cliente
    Left = 1144
    Top = 256
  end
  object SQL_Cliente: TFDQuery
    MasterSource = DS_C_Clientes
    Connection = Module.connection
    SQL.Strings = (
      'select * from cliente where codigo = :pcodigo')
    Left = 1080
    Top = 332
    ParamData = <
      item
        Name = 'pcodigo'
        DataType = ftString
        FDDataType = dtWideString
        ParamType = ptInput
        Value = Null
      end>
    object SQL_ClienteCODIGO: TFDAutoIncField
      AutoGenerateValue = arNone
      FieldName = 'CODIGO'
      Origin = 'CODIGO'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      ServerAutoIncrement = False
      AutoIncrementSeed = 1
      AutoIncrementStep = 1
      IdentityInsert = True
    end
    object SQL_ClienteDATA_CADASTRO: TDateField
      AutoGenerateValue = arDefault
      FieldName = 'DATA_CADASTRO'
      Origin = 'DATA_CADASTRO'
      EditMask = '99/99/9999;0;_'
    end
    object SQL_ClienteSITUACAO_FINANCEIRA: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'SITUACAO_FINANCEIRA'
      Origin = 'SITUACAO_FINANCEIRA'
      FixedChar = True
      Size = 17
    end
    object SQL_ClienteCONSUMIDOR_FINAL: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'CONSUMIDOR_FINAL'
      Origin = 'CONSUMIDOR_FINAL'
      FixedChar = True
      Size = 3
    end
    object SQL_ClientePESSOA_TIPO: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'PESSOA_TIPO'
      Origin = 'PESSOA_TIPO'
      FixedChar = True
      Size = 8
    end
    object SQL_ClienteRAZAO_SOCIAL: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'RAZAO_SOCIAL'
      Origin = 'RAZAO_SOCIAL'
      Size = 200
    end
    object SQL_ClienteFANTASIA: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'FANTASIA'
      Origin = 'FANTASIA'
      Size = 200
    end
    object SQL_ClienteCPF: TStringField
      AutoGenerateValue = arDefault
      ConstraintErrorMessage = 'Por favor, preencha o camp de CPF com 11 d'#237'gitos.'
      FieldName = 'CPF'
      Origin = 'CPF'
    end
    object SQL_ClienteCNPJ: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'CNPJ'
      Origin = 'CNPJ'
      Size = 30
    end
    object SQL_ClienteNATURALIDADE: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'NATURALIDADE'
      Origin = 'NATURALIDADE'
      Size = 50
    end
    object SQL_ClienteNACIONALIDADE: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'NACIONALIDADE'
      Origin = 'NACIONALIDADE'
      Size = 50
    end
    object SQL_ClienteRG: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'RG'
      Origin = 'RG'
      Size = 50
    end
    object SQL_ClienteORGAO_EMISSOR: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'ORGAO_EMISSOR'
      Origin = 'ORGAO_EMISSOR'
      Size = 50
    end
    object SQL_ClienteINSCRICAO_ESTADUAL: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'INSCRICAO_ESTADUAL'
      Origin = 'INSCRICAO_ESTADUAL'
      Size = 50
    end
    object SQL_ClienteINSCRICAO_MUNICIPAL: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'INSCRICAO_MUNICIPAL'
      Origin = 'INSCRICAO_MUNICIPAL'
      Size = 50
    end
    object SQL_ClienteSTATUS_CADASTRAL: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'STATUS_CADASTRAL'
      Origin = 'STATUS_CADASTRAL'
      FixedChar = True
      Size = 7
    end
    object SQL_ClienteSEXO: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'SEXO'
      Origin = 'SEXO'
      FixedChar = True
      Size = 9
    end
    object SQL_ClienteESTADO_CIVIL: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'ESTADO_CIVIL'
      Origin = 'ESTADO_CIVIL'
      FixedChar = True
      Size = 14
    end
    object SQL_ClienteSUFRAMA: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'SUFRAMA'
      Origin = 'SUFRAMA'
      Size = 50
    end
    object SQL_ClienteRAMO_ATIVIDADE: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'RAMO_ATIVIDADE'
      Origin = 'RAMO_ATIVIDADE'
      Size = 50
    end
    object SQL_ClienteATIVIDADE: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'ATIVIDADE'
      Origin = 'ATIVIDADE'
      Size = 50
    end
    object SQL_ClienteNOME_PAI: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'NOME_PAI'
      Origin = 'NOME_PAI'
      Size = 200
    end
    object SQL_ClienteNOME_MAE: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'NOME_MAE'
      Origin = 'NOME_MAE'
      Size = 200
    end
    object SQL_ClienteLIMITE_CREDITO: TBCDField
      AutoGenerateValue = arDefault
      FieldName = 'LIMITE_CREDITO'
      Origin = 'LIMITE_CREDITO'
      DisplayFormat = 'R$ #,##0.00'
      Precision = 15
      Size = 2
    end
    object SQL_ClienteENDERECO: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'ENDERECO'
      Origin = 'ENDERECO'
      Size = 200
    end
    object SQL_ClienteNUMERO: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'NUMERO'
      Origin = 'NUMERO'
      Size = 50
    end
    object SQL_ClienteBAIRRO: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'BAIRRO'
      Origin = 'BAIRRO'
      Size = 100
    end
    object SQL_ClienteCOMPLEMENTO: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'COMPLEMENTO'
      Origin = 'COMPLEMENTO'
      Size = 200
    end
    object TStringField
      AutoGenerateValue = arDefault
      FieldName = 'CEP'
      Origin = 'CEP'
      EditMask = '00\.000\-000;1;_'
      Size = 100
    end
    object SQL_ClienteMUNICIPIO: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'MUNICIPIO'
      Origin = 'MUNICIPIO'
      Size = 100
    end
    object SQL_ClienteCODIGO_MUNICIPIO: TIntegerField
      AutoGenerateValue = arDefault
      FieldName = 'CODIGO_MUNICIPIO'
      Origin = 'CODIGO_MUNICIPIO'
    end
    object SQL_ClienteREGIAO: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'REGIAO'
      Origin = 'REGIAO'
      Size = 100
    end
    object SQL_ClienteZONA: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'ZONA'
      Origin = 'ZONA'
      Size = 100
    end
    object SQL_ClienteESTADO: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'ESTADO'
      Origin = 'ESTADO'
      Size = 100
    end
    object SQL_ClientePAIS: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'PAIS'
      Origin = 'PAIS'
      Size = 100
    end
    object SQL_ClienteCODIGO_PAIS: TIntegerField
      AutoGenerateValue = arDefault
      FieldName = 'CODIGO_PAIS'
      Origin = 'CODIGO_PAIS'
    end
    object SQL_ClienteENTREGA_ENDERECO: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'ENTREGA_ENDERECO'
      Origin = 'ENTREGA_ENDERECO'
      Size = 200
    end
    object SQL_ClienteENTREGA_NUMERO: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'ENTREGA_NUMERO'
      Origin = 'ENTREGA_NUMERO'
      Size = 50
    end
    object SQL_ClienteENTREGA_BAIRRO: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'ENTREGA_BAIRRO'
      Origin = 'ENTREGA_BAIRRO'
      Size = 100
    end
    object SQL_ClienteENTREGA_COMPLEMENTO: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'ENTREGA_COMPLEMENTO'
      Origin = 'ENTREGA_COMPLEMENTO'
      Size = 200
    end
    object SQL_ClienteENTREGA_CEP: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'ENTREGA_CEP'
      Origin = 'ENTREGA_CEP'
      EditMask = '00\.000\-000;0;_'
      Size = 100
    end
    object SQL_ClienteENTREGA_MUNICIPIO: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'ENTREGA_MUNICIPIO'
      Origin = 'ENTREGA_MUNICIPIO'
      Size = 100
    end
    object SQL_ClienteENTREGA_CODIGO_MUNICIPIO: TIntegerField
      AutoGenerateValue = arDefault
      FieldName = 'ENTREGA_CODIGO_MUNICIPIO'
      Origin = 'ENTREGA_CODIGO_MUNICIPIO'
    end
    object SQL_ClienteENTREGA_ZONA: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'ENTREGA_ZONA'
      Origin = 'ENTREGA_ZONA'
      Size = 50
    end
    object SQL_ClienteENTREGA_REGIAO: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'ENTREGA_REGIAO'
      Origin = 'ENTREGA_REGIAO'
      Size = 50
    end
    object SQL_ClienteENTREGA_ESTADO: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'ENTREGA_ESTADO'
      Origin = 'ENTREGA_ESTADO'
      Size = 50
    end
    object SQL_ClienteENTREGA_PAIS: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'ENTREGA_PAIS'
      Origin = 'ENTREGA_PAIS'
      Size = 50
    end
    object SQL_ClienteENTREGA_CODIGO_PAIS: TIntegerField
      AutoGenerateValue = arDefault
      FieldName = 'ENTREGA_CODIGO_PAIS'
      Origin = 'ENTREGA_CODIGO_PAIS'
    end
    object SQL_ClienteCOBRANCA_ENDERECO: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'COBRANCA_ENDERECO'
      Origin = 'COBRANCA_ENDERECO'
      Size = 200
    end
    object SQL_ClienteCOBRANCA_NUMERO: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'COBRANCA_NUMERO'
      Origin = 'COBRANCA_NUMERO'
      Size = 50
    end
    object SQL_ClienteCOBRANCA_BAIRRO: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'COBRANCA_BAIRRO'
      Origin = 'COBRANCA_BAIRRO'
      Size = 100
    end
    object SQL_ClienteCOBRANCA_COMPLEMENTO: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'COBRANCA_COMPLEMENTO'
      Origin = 'COBRANCA_COMPLEMENTO'
      Size = 200
    end
    object SQL_ClienteCOBRANCA_CEP: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'COBRANCA_CEP'
      Origin = 'COBRANCA_CEP'
      EditMask = '00\.000\-000;0;_'
      Size = 50
    end
    object SQL_ClienteCOBRANCA_MUNICIPIO: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'COBRANCA_MUNICIPIO'
      Origin = 'COBRANCA_MUNICIPIO'
      Size = 50
    end
    object SQL_ClienteCOBRANCA_CODIGO_MUNICIPIO: TIntegerField
      AutoGenerateValue = arDefault
      FieldName = 'COBRANCA_CODIGO_MUNICIPIO'
      Origin = 'COBRANCA_CODIGO_MUNICIPIO'
    end
    object SQL_ClienteCOBRANCA_REGIAO: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'COBRANCA_REGIAO'
      Origin = 'COBRANCA_REGIAO'
      Size = 50
    end
    object SQL_ClienteCOBRANCA_ZONA: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'COBRANCA_ZONA'
      Origin = 'COBRANCA_ZONA'
      Size = 50
    end
    object SQL_ClienteCOBRANCA_ESTADO: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'COBRANCA_ESTADO'
      Origin = 'COBRANCA_ESTADO'
      Size = 50
    end
    object SQL_ClienteCOBRANCA_PAIS: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'COBRANCA_PAIS'
      Origin = 'COBRANCA_PAIS'
      Size = 50
    end
    object SQL_ClienteCOBRANCA_CODIGO_PAIS: TIntegerField
      AutoGenerateValue = arDefault
      FieldName = 'COBRANCA_CODIGO_PAIS'
      Origin = 'COBRANCA_CODIGO_PAIS'
    end
    object SQL_ClienteAVALISTA_NOME: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'AVALISTA_NOME'
      Origin = 'AVALISTA_NOME'
      Size = 200
    end
    object SQL_ClienteAVALISTA_DATA_NASCIMENTO: TDateField
      AutoGenerateValue = arDefault
      FieldName = 'AVALISTA_DATA_NASCIMENTO'
      Origin = 'AVALISTA_DATA_NASCIMENTO'
    end
    object SQL_ClienteAVALISTA_CPF: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'AVALISTA_CPF'
      Origin = 'AVALISTA_CPF'
      EditMask = '000\.000\.000\-00;0;_'
      Size = 50
    end
    object SQL_ClienteAVALISTA_RG: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'AVALISTA_RG'
      Origin = 'AVALISTA_RG'
      Size = 50
    end
    object SQL_ClienteAVALISTA_ORGAO_EMISSOR: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'AVALISTA_ORGAO_EMISSOR'
      Origin = 'AVALISTA_ORGAO_EMISSOR'
      Size = 50
    end
    object SQL_ClienteAVALISTA_RG_DATA_EMISSAO: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'AVALISTA_RG_DATA_EMISSAO'
      Origin = 'AVALISTA_RG_DATA_EMISSAO'
      Size = 50
    end
    object SQL_ClienteAVALISTA_ESTADO_CIVIL: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'AVALISTA_ESTADO_CIVIL'
      Origin = 'AVALISTA_ESTADO_CIVIL'
      FixedChar = True
      Size = 14
    end
    object SQL_ClienteAVALISTA_NACIONALIDADE: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'AVALISTA_NACIONALIDADE'
      Origin = 'AVALISTA_NACIONALIDADE'
      Size = 50
    end
    object SQL_ClienteAVALISTA_NATURALIDADE: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'AVALISTA_NATURALIDADE'
      Origin = 'AVALISTA_NATURALIDADE'
      Size = 50
    end
    object SQL_ClienteAVALISTA_NOME_PAI: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'AVALISTA_NOME_PAI'
      Origin = 'AVALISTA_NOME_PAI'
      Size = 200
    end
    object SQL_ClienteAVALISTA_NOME_MAE: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'AVALISTA_NOME_MAE'
      Origin = 'AVALISTA_NOME_MAE'
      Size = 50
    end
    object SQL_ClienteAVALISTA_ENDERECO: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'AVALISTA_ENDERECO'
      Origin = 'AVALISTA_ENDERECO'
      Size = 200
    end
    object SQL_ClienteAVALISTA_NUMERO: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'AVALISTA_NUMERO'
      Origin = 'AVALISTA_NUMERO'
      Size = 50
    end
    object SQL_ClienteAVALISTA_BAIRRO: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'AVALISTA_BAIRRO'
      Origin = 'AVALISTA_BAIRRO'
      Size = 100
    end
    object SQL_ClienteAVALISTA_COMPLEMENTO: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'AVALISTA_COMPLEMENTO'
      Origin = 'AVALISTA_COMPLEMENTO'
      Size = 200
    end
    object SQL_ClienteAVALISTA_CEP: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'AVALISTA_CEP'
      Origin = 'AVALISTA_CEP'
      EditMask = '00\.000\-000;0;_'
      Size = 50
    end
    object SQL_ClienteAVALISTA_MUNICIPIO: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'AVALISTA_MUNICIPIO'
      Origin = 'AVALISTA_MUNICIPIO'
      Size = 50
    end
    object SQL_ClienteAVALISTA_CODIGO_MUNICIPIO: TIntegerField
      AutoGenerateValue = arDefault
      FieldName = 'AVALISTA_CODIGO_MUNICIPIO'
      Origin = 'AVALISTA_CODIGO_MUNICIPIO'
    end
    object SQL_ClienteAVALISTA_REGIAO: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'AVALISTA_REGIAO'
      Origin = 'AVALISTA_REGIAO'
      Size = 50
    end
    object SQL_ClienteAVALISTA_ZONA: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'AVALISTA_ZONA'
      Origin = 'AVALISTA_ZONA'
      Size = 50
    end
    object SQL_ClienteAVALISTA_ESTADO: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'AVALISTA_ESTADO'
      Origin = 'AVALISTA_ESTADO'
      Size = 50
    end
    object SQL_ClienteAVALISTA_PAIS: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'AVALISTA_PAIS'
      Origin = 'AVALISTA_PAIS'
      Size = 50
    end
    object SQL_ClienteAVALISTA_CODIGO_PAIS: TIntegerField
      AutoGenerateValue = arDefault
      FieldName = 'AVALISTA_CODIGO_PAIS'
      Origin = 'AVALISTA_CODIGO_PAIS'
    end
    object SQL_ClienteALIQUOTA_FECOEP: TIntegerField
      AutoGenerateValue = arDefault
      FieldName = 'ALIQUOTA_FECOEP'
      Origin = 'ALIQUOTA_FECOEP'
    end
    object SQL_ClienteBANCO_1: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'BANCO_1'
      Origin = 'BANCO_1'
      Size = 50
    end
    object SQL_ClienteBANCO_CONTA_1: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'BANCO_CONTA_1'
      Origin = 'BANCO_CONTA_1'
      EditMask = '0000000;1;_'
      Size = 50
    end
    object SQL_ClienteBANCO_AGENCIA_1: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'BANCO_AGENCIA_1'
      Origin = 'BANCO_AGENCIA_1'
      EditMask = '0000;1;_'
      Size = 50
    end
    object SQL_ClienteBANCO_2: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'BANCO_2'
      Origin = 'BANCO_2'
      Size = 50
    end
    object SQL_ClienteBANCO_CONTA_2: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'BANCO_CONTA_2'
      Origin = 'BANCO_CONTA_2'
      EditMask = '0000000;1;_'
      Size = 50
    end
    object SQL_ClienteBANCO_CONTA_DIGITO: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'BANCO_CONTA_DIGITO'
      Origin = 'BANCO_CONTA_DIGITO'
      EditMask = '0;1;_'
      Size = 50
    end
    object SQL_ClienteBANCO_CONTA_DIGITO_2: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'BANCO_CONTA_DIGITO_2'
      Origin = 'BANCO_CONTA_DIGITO_2'
      EditMask = '0;1;_'
      Size = 50
    end
    object SQL_ClienteBANCO_ANGENCIA_DIGITO: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'BANCO_ANGENCIA_DIGITO'
      Origin = 'BANCO_ANGENCIA_DIGITO'
      EditMask = '00;1;_'
      Size = 50
    end
    object SQL_ClienteBANCO_ANGENCIA_DIGITO_2: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'BANCO_ANGENCIA_DIGITO_2'
      Origin = 'BANCO_ANGENCIA_DIGITO_2'
      EditMask = '00;1;_'
      Size = 50
    end
    object SQL_ClienteBANCO_AGENCIA_2: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'BANCO_AGENCIA_2'
      Origin = 'BANCO_AGENCIA_2'
      EditMask = '0000;1;_'
      Size = 50
    end
    object SQL_ClienteCONTATO_NOME: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'CONTATO_NOME'
      Origin = 'CONTATO_NOME'
      Size = 200
    end
    object SQL_ClienteCONTATO_CELULAR: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'CONTATO_CELULAR'
      Origin = 'CONTATO_CELULAR'
      Size = 50
    end
    object SQL_ClienteTELEFONE: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'TELEFONE'
      Origin = 'TELEFONE'
      EditMask = '!\(99\) 0000-0000;0;_'
      Size = 50
    end
    object SQL_ClienteTELEFONE_1: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'TELEFONE_1'
      Origin = 'TELEFONE_1'
      EditMask = '!\(99\) 0000-0000;1;_'
      Size = 50
    end
    object SQL_ClienteCELULAR: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'CELULAR'
      Origin = 'CELULAR'
      EditMask = '!\(99\) \90000-0000;1;_'
      Size = 50
    end
    object SQL_ClienteCONTATO: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'CONTATO'
      Origin = 'CONTATO'
      Size = 50
    end
    object SQL_ClienteCELULAR_1: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'CELULAR_1'
      Origin = 'CELULAR_1'
      EditMask = '!\(99\) \90000-0000;1;_'
      Size = 50
    end
    object SQL_ClienteCONTATO_1: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'CONTATO_1'
      Origin = 'CONTATO_1'
      Size = 50
    end
    object SQL_ClienteEMAIL: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'EMAIL'
      Origin = 'EMAIL'
      Size = 100
    end
    object SQL_ClienteEMAIL_1: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'EMAIL_1'
      Origin = 'EMAIL_1'
      Size = 100
    end
    object SQL_ClienteSKYPE: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'SKYPE'
      Origin = 'SKYPE'
      Size = 100
    end
    object SQL_ClienteOBSERVACAO: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'OBSERVACAO'
      Origin = 'OBSERVACAO'
      Size = 200
    end
    object SQL_ClienteBANCO_OP_CONTA: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'BANCO_OP_CONTA'
      Origin = 'BANCO_OP_CONTA'
      EditMask = '000;1;_'
      Size = 50
    end
    object SQL_ClienteBANCO_OP2_CONTA: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'BANCO_OP2_CONTA'
      Origin = 'BANCO_OP2_CONTA'
      EditMask = '000;1;_'
      Size = 50
    end
    object SQL_ClienteCLIENTE_TIPO: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'CLIENTE_TIPO'
      Origin = 'CLIENTE_TIPO'
      Size = 50
    end
    object SQL_ClienteCONSUMIDOR_TIPO: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'CONSUMIDOR_TIPO'
      Origin = 'CONSUMIDOR_TIPO'
      FixedChar = True
      Size = 16
    end
    object SQL_ClienteDATA_NASCIMENTO: TDateField
      AutoGenerateValue = arDefault
      FieldName = 'DATA_NASCIMENTO'
      Origin = 'DATA_NASCIMENTO'
      EditMask = '!99/99/9999;1;_'
    end
    object SQL_ClienteDATA_EMISSAO: TDateField
      AutoGenerateValue = arDefault
      FieldName = 'DATA_EMISSAO'
      Origin = 'DATA_EMISSAO'
      EditMask = '!99/99/9999;1;_'
    end
    object SQL_Clienteconvenio_inicio: TDateField
      AutoGenerateValue = arDefault
      FieldName = 'convenio_inicio'
      Origin = 'convenio_inicio'
    end
    object SQL_Clienteconvenio_fim: TDateField
      AutoGenerateValue = arDefault
      FieldName = 'convenio_fim'
      Origin = 'convenio_fim'
    end
    object SQL_ClienteROTA: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'ROTA'
      Origin = 'ROTA'
      Size = 100
    end
  end
  object sql_increment: TFDQuery
    Connection = Module.connection
    SQL.Strings = (
      'SELECT max(codigo)+1 as AUTO_INCREMENT from cliente')
    Left = 1112
    Top = 288
    object sql_incrementAUTO_INCREMENT: TLargeintField
      AutoGenerateValue = arDefault
      FieldName = 'AUTO_INCREMENT'
      Origin = 'AUTO_INCREMENT'
    end
  end
  object DS_C_Clientes: TDataSource
    DataSet = SQL_C_Clientes
    Left = 1080
    Top = 256
  end
  object SQL_C_Clientes: TFDQuery
    Connection = Module.connection
    SQL.Strings = (
      
        'Select codigo, data_cadastro, situacao_financeira, pessoa_tipo, ' +
        'razao_social, fantasia, cpf, cnpj, inscricao_estadual, status_ca' +
        'dastral,'
      'municipio, estado, telefone, celular, rota from cliente'
      '')
    Left = 1184
    Top = 331
    object SQL_C_Clientescodigo: TFDAutoIncField
      FieldName = 'codigo'
      Origin = 'CODIGO'
      ProviderFlags = [pfInWhere, pfInKey]
      ReadOnly = True
    end
    object SQL_C_Clientesdata_cadastro: TDateField
      AutoGenerateValue = arDefault
      FieldName = 'data_cadastro'
      Origin = 'DATA_CADASTRO'
    end
    object SQL_C_Clientespessoa_tipo: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'pessoa_tipo'
      Origin = 'PESSOA_TIPO'
      FixedChar = True
      Size = 8
    end
    object SQL_C_Clientesrazao_social: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'razao_social'
      Origin = 'RAZAO_SOCIAL'
      Size = 200
    end
    object SQL_C_Clientesfantasia: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'fantasia'
      Origin = 'FANTASIA'
      Size = 200
    end
    object SQL_C_Clientescpf: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'cpf'
      Origin = 'CPF'
    end
    object SQL_C_Clientescnpj: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'cnpj'
      Origin = 'CNPJ'
      Size = 50
    end
    object SQL_C_Clientesinscricao_estadual: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'inscricao_estadual'
      Origin = 'INSCRICAO_ESTADUAL'
      Size = 50
    end
    object SQL_C_Clientesstatus_cadastral: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'status_cadastral'
      Origin = 'STATUS_CADASTRAL'
      FixedChar = True
      Size = 7
    end
    object SQL_C_Clientesmunicipio: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'municipio'
      Origin = 'MUNICIPIO'
      Size = 100
    end
    object SQL_C_Clientesestado: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'estado'
      Origin = 'ESTADO'
      Size = 100
    end
    object SQL_C_Clientestelefone: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'telefone'
      Origin = 'TELEFONE'
      Size = 50
    end
    object SQL_C_Clientescelular: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'celular'
      Origin = 'CELULAR'
      Size = 50
    end
  end
  object popmenugrid: TPopupMenu
    Left = 1144
    Top = 288
    object Cadastrarcomofornecedor1: TMenuItem
      Caption = 'Cadastrar como fornecedor'
    end
  end
  object SQL_DADOS_OTICA: TFDQuery
    Connection = Module.connection
    SQL.Strings = (
      'select * from cliente_dados_otica where codigo_cliente = :pcod')
    Left = 1176
    Top = 256
    ParamData = <
      item
        Name = 'PCOD'
        DataType = ftInteger
        ParamType = ptInput
        Value = Null
      end>
    object SQL_DADOS_OTICACODIGO: TFDAutoIncField
      Alignment = taCenter
      FieldName = 'CODIGO'
      Origin = 'CODIGO'
      ProviderFlags = [pfInWhere, pfInKey]
      ReadOnly = True
    end
    object SQL_DADOS_OTICACODIGO_CLIENTE: TIntegerField
      Alignment = taCenter
      AutoGenerateValue = arDefault
      FieldName = 'CODIGO_CLIENTE'
      Origin = 'CODIGO_CLIENTE'
    end
    object SQL_DADOS_OTICADATA_CADASTRO: TSQLTimeStampField
      Alignment = taRightJustify
      AutoGenerateValue = arDefault
      FieldName = 'DATA_CADASTRO'
      Origin = 'DATA_CADASTRO'
    end
    object SQL_DADOS_OTICAL_OE_ESFERA: TStringField
      Alignment = taCenter
      AutoGenerateValue = arDefault
      FieldName = 'L_OE_ESFERA'
      Origin = 'L_OE_ESFERA'
      Size = 25
    end
    object SQL_DADOS_OTICAL_OE_CILINDRO: TStringField
      Alignment = taCenter
      AutoGenerateValue = arDefault
      FieldName = 'L_OE_CILINDRO'
      Origin = 'L_OE_CILINDRO'
      Size = 25
    end
    object SQL_DADOS_OTICAL_OE_EIXO: TStringField
      Alignment = taCenter
      AutoGenerateValue = arDefault
      FieldName = 'L_OE_EIXO'
      Origin = 'L_OE_EIXO'
      Size = 25
    end
    object SQL_DADOS_OTICAL_OE_DISTANCIA_PUPILAR: TStringField
      Alignment = taCenter
      AutoGenerateValue = arDefault
      FieldName = 'L_OE_DISTANCIA_PUPILAR'
      Origin = 'L_OE_DISTANCIA_PUPILAR'
      Size = 25
    end
    object SQL_DADOS_OTICAL_OD_ESFERA: TStringField
      Alignment = taCenter
      AutoGenerateValue = arDefault
      FieldName = 'L_OD_ESFERA'
      Origin = 'L_OD_ESFERA'
      Size = 25
    end
    object SQL_DADOS_OTICAL_OD_CILINDRO: TStringField
      Alignment = taCenter
      AutoGenerateValue = arDefault
      FieldName = 'L_OD_CILINDRO'
      Origin = 'L_OD_CILINDRO'
      Size = 25
    end
    object SQL_DADOS_OTICAL_OD_EIXO: TStringField
      Alignment = taCenter
      AutoGenerateValue = arDefault
      FieldName = 'L_OD_EIXO'
      Origin = 'L_OD_EIXO'
      Size = 25
    end
    object SQL_DADOS_OTICAL_OD_DISTANCIA_PUPILAR: TStringField
      Alignment = taCenter
      AutoGenerateValue = arDefault
      FieldName = 'L_OD_DISTANCIA_PUPILAR'
      Origin = 'L_OD_DISTANCIA_PUPILAR'
      Size = 25
    end
    object SQL_DADOS_OTICAP_OE_ESFERA: TStringField
      Alignment = taCenter
      AutoGenerateValue = arDefault
      FieldName = 'P_OE_ESFERA'
      Origin = 'P_OE_ESFERA'
      Size = 25
    end
    object SQL_DADOS_OTICAP_OE_CILINDRO: TStringField
      Alignment = taCenter
      AutoGenerateValue = arDefault
      FieldName = 'P_OE_CILINDRO'
      Origin = 'P_OE_CILINDRO'
      Size = 25
    end
    object SQL_DADOS_OTICAP_OE_EIXO: TStringField
      Alignment = taCenter
      AutoGenerateValue = arDefault
      FieldName = 'P_OE_EIXO'
      Origin = 'P_OE_EIXO'
      Size = 25
    end
    object SQL_DADOS_OTICAP_OE_DISTANCIA_PUPILAR: TStringField
      Alignment = taCenter
      AutoGenerateValue = arDefault
      FieldName = 'P_OE_DISTANCIA_PUPILAR'
      Origin = 'P_OE_DISTANCIA_PUPILAR'
      Size = 25
    end
    object SQL_DADOS_OTICAP_OD_ESFERA: TStringField
      Alignment = taCenter
      AutoGenerateValue = arDefault
      FieldName = 'P_OD_ESFERA'
      Origin = 'P_OD_ESFERA'
      Size = 25
    end
    object SQL_DADOS_OTICAP_OD_CILINDRO: TStringField
      Alignment = taCenter
      AutoGenerateValue = arDefault
      FieldName = 'P_OD_CILINDRO'
      Origin = 'P_OD_CILINDRO'
      Size = 25
    end
    object SQL_DADOS_OTICAP_OD_EIXO: TStringField
      Alignment = taCenter
      AutoGenerateValue = arDefault
      FieldName = 'P_OD_EIXO'
      Origin = 'P_OD_EIXO'
      Size = 25
    end
    object SQL_DADOS_OTICAP_OD_DISTANCIA_PUPILAR: TStringField
      Alignment = taCenter
      AutoGenerateValue = arDefault
      FieldName = 'P_OD_DISTANCIA_PUPILAR'
      Origin = 'P_OD_DISTANCIA_PUPILAR'
      Size = 25
    end
    object SQL_DADOS_OTICALENTE_GRAU: TStringField
      Alignment = taCenter
      AutoGenerateValue = arDefault
      FieldName = 'LENTE_GRAU'
      Origin = 'LENTE_GRAU'
      Size = 100
    end
    object SQL_DADOS_OTICAARMACAO_GRAU: TStringField
      Alignment = taCenter
      AutoGenerateValue = arDefault
      FieldName = 'ARMACAO_GRAU'
      Origin = 'ARMACAO_GRAU'
      Size = 100
    end
    object SQL_DADOS_OTICALENTE_SOLAR: TStringField
      Alignment = taCenter
      AutoGenerateValue = arDefault
      FieldName = 'LENTE_SOLAR'
      Origin = 'LENTE_SOLAR'
      Size = 100
    end
    object SQL_DADOS_OTICAARMACAO_SOLAR: TStringField
      Alignment = taCenter
      AutoGenerateValue = arDefault
      FieldName = 'ARMACAO_SOLAR'
      Origin = 'ARMACAO_SOLAR'
      Size = 100
    end
    object SQL_DADOS_OTICAADICAO: TStringField
      Alignment = taCenter
      AutoGenerateValue = arDefault
      FieldName = 'ADICAO'
      Origin = 'ADICAO'
      Size = 25
    end
  end
  object DS_DADOS_OTICA: TDataSource
    DataSet = SQL_DADOS_OTICA
    Left = 1112
    Top = 256
  end
  object grid_otica_pop: TPopupMenu
    Left = 1176
    Top = 288
    object Alterar1: TMenuItem
      Bitmap.Data = {
        36040000424D3604000000000000360000002800000010000000100000000100
        2000000000000004000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000003C3C3CFF3C3C3CFF3C3C3CFF3C3C3CFF3C3C3CFF3C3C3CFF3C3C
        3CFF3C3C3CFF3C3C3CFF3C3C3CFF3C3C3CFF0000000000000000000000000000
        0000000000003C3C3CFF3C3C3CFF3C3C3CFF3C3C3CFF3C3C3CFF3C3C3CFF3C3C
        3CFF3C3C3CFF3C3C3CFF3C3C3CFF3C3C3CFF0000000000000000000000000000
        0000000000003C3C3CFF3C3C3CFF000000000000000000000000000000000000
        000000000000000000003C3C3CFF3C3C3CFF0000000000000000000000000000
        0000000000003C3C3CFF2D2D2DBE00000000000000001E1E1E7E3C3C3CFF0000
        000000000000000000003C3C3CFF3C3C3CFF0000000000000000000000000000
        0000000000002D2D2DBE040404101E1E1E811E1E1E81000000001E1E1E7E0000
        000000000000000000003C3C3CFF3C3C3CFF0000000000000000000000000000
        000000000000040404101E1E1E813C3C3CFF3C3C3CFF1E1E1E81000000000000
        000000000000000000003C3C3CFF3C3C3CFF0000000000000000000000000000
        0000000000001E1E1E813C3C3CFF3C3C3CFF3C3C3CFF1E1E1E7E000000000000
        000000000000000000003C3C3CFF3C3C3CFF0000000000000000000000000000
        00001E1E1E813C3C3CFF3C3C3CFF3C3C3CFF1E1E1E7E00000000000000000000
        000000000000000000003C3C3CFF3C3C3CFF0000000000000000000000001A1A
        1A703C3C3CFF3C3C3CFF3C3C3CFF1E1E1E7E0000000000000000000000000000
        000000000000000000003C3C3CFF3C3C3CFF00000000000000001A1A1A703C3C
        3CFF3C3C3CFF3C3C3CFF1E1E1E7E040404100000000000000000000000003C3C
        3CFF3C3C3CFF3C3C3CFF3C3C3CFF3C3C3CFF0000000000000000353535E03C3C
        3CFF3C3C3CFF1A1A1A700A0A0A2C000000000000000000000000000000003C3C
        3CFF3C3C3CFF3C3C3CFF3C3C3CFF1E1E1E7E00000000000000001A1A1A703535
        35E01A1A1A700A0A0A2C3C3C3CFF000000000000000000000000000000003C3C
        3CFF3C3C3CFF3C3C3CFF1E1E1E7E000000000000000000000000000000000000
        0000000000003C3C3CFF3C3C3CFF3C3C3CFF3C3C3CFF3C3C3CFF3C3C3CFF3C3C
        3CFF3C3C3CFF1E1E1E7E00000000000000000000000000000000000000000000
        0000000000003C3C3CFF3C3C3CFF3C3C3CFF3C3C3CFF3C3C3CFF3C3C3CFF3C3C
        3CFF1E1E1E7E0000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000}
      Caption = 'Alterar'
      Default = True
    end
    object Excluir1: TMenuItem
      Bitmap.Data = {
        36040000424D3604000000000000360000002800000010000000100000000100
        2000000000000004000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        000000000000000000000F0F0F41000000000000000000000000000000000000
        0000000000000F0F0F4100000000000000000000000000000000000000000000
        0000000000001E1E1E813C3C3CFF1E1E1E810000000000000000000000000000
        00001E1E1E813C3C3CFF1E1E1E81000000000000000000000000000000000000
        00000F0F0F403C3C3CFF3C3C3CFF3C3C3CFF1E1E1E8100000000000000001E1E
        1E813C3C3CFF3C3C3CFF3C3C3CFF0F0F0F400000000000000000000000000000
        0000000000001E1E1E7E3C3C3CFF3C3C3CFF3C3C3CFF1E1E1E811E1E1E813C3C
        3CFF3C3C3CFF3C3C3CFF1E1E1E7E000000000000000000000000000000000000
        000000000000000000001E1E1E7E3C3C3CFF3C3C3CFF3C3C3CFF3C3C3CFF3C3C
        3CFF3C3C3CFF1E1E1E7E00000000000000000000000000000000000000000000
        00000000000000000000000000001E1E1E7E3C3C3CFF3C3C3CFF3C3C3CFF3C3C
        3CFF1E1E1E7E0000000000000000000000000000000000000000000000000000
        00000000000000000000000000001E1E1E813C3C3CFF3C3C3CFF3C3C3CFF3C3C
        3CFF1E1E1E810000000000000000000000000000000000000000000000000000
        000000000000000000001E1E1E813C3C3CFF3C3C3CFF3C3C3CFF3C3C3CFF3C3C
        3CFF3C3C3CFF1E1E1E8100000000000000000000000000000000000000000000
        0000000000001E1E1E813C3C3CFF3C3C3CFF3C3C3CFF1E1E1E7E1E1E1E7E3C3C
        3CFF3C3C3CFF3C3C3CFF1E1E1E81000000000000000000000000000000000000
        00000F0F0F403C3C3CFF3C3C3CFF3C3C3CFF1E1E1E7E00000000000000001E1E
        1E7E3C3C3CFF3C3C3CFF3C3C3CFF0F0F0F400000000000000000000000000000
        0000000000001E1E1E7E3C3C3CFF1E1E1E7E0000000000000000000000000000
        00001E1E1E7E3C3C3CFF1E1E1E7E000000000000000000000000000000000000
        000000000000000000000F0F0F3E000000000000000000000000000000000000
        0000000000000F0F0F3E00000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000}
      Caption = 'Excluir'
    end
  end
  object imlist: TcxImageList
    FormatVersion = 1
    DesignInfo = 18875448
    ImageInfo = <
      item
        Image.Data = {
          36040000424D3604000000000000360000002800000010000000100000000100
          2000000000000004000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000040000
          00110000001B0000001D0000001D0000001E0000001E0000001E0000001E0000
          001F0000001F0000001F0000001F0000001E0000001400000005000000101427
          5DC91B3681FF1A3581FF193480FF18337FFF18337EFF16317EFF16307DFF152F
          7DFF142F7CFF142E7BFF132D7BFF122C7AFF0C1F58CC00000013000000162440
          88FF274C96FF19418FFF19418EFF19418EFF18408EFF19408EFF183F8DFF173F
          8CFF173F8CFF173F8CFF173E8CFF1D4390FF18327EFF0000001B000000152D4A
          8FFF345BA0FF224D99FF2552A0FF2655A4FF2655A4FF2758A7FF2657A7FF2453
          A3FF2352A1FF204D9CFF1D4694FF284F98FF1F3A84FF0000001A000000133754
          97FF4A74B4FF2E5EA8FF2C59A1FF2C5AA4FF2E60ADFF2F61AEFF2D60AEFF2C5D
          ABFF2858A3FF26529EFF2655A1FF3963AAFF27438BFF0000001800000011415F
          9FFF5B84BDFF133175FF092368FF112F74FF3364ACFF376CB5FF376AB4FF3264
          ADFF112F74FF092368FF102E73FF4670B1FF304D92FF000000150000000F3451
          92FF3A5998FF1E4486FF55CBF5FF143376FF22468CFF254C95FF244C94FF2246
          8EFF1E4486FF55CBF5FF143376FF2E4E90FF29458AFF000000130000000D2A46
          8AFF193178FF244D8DFFC0F2FCFF193C7FFF132C73FF132C74FF132B74FF1029
          71FF244D8DFFC0F2FCFF193C7FFF0D246DFF142D76FF000000110000000B4266
          A7FF7EB1DCFF3261A1FF244D8EFF2A5595FF518FCAFF5494CFFF5493CFFF5290
          CCFF3261A1FF244D8EFF295595FF7CAEDAFF173078FF0000000F000000095279
          B7FFB1D7F1FF7AB5E3FF79B3E2FF79B3E2FF7BB5E3FF7BB6E4FF7BB6E4FF7BB6
          E4FF7AB4E3FF79B3E2FF79B3E2FFB0D6F0FF243F83FF0000000D000000075E88
          C3FFC4E5F8FFC4E5F8FFC4E5F8FFC4E5F8FFC4E5F8FFC4E5F8FFC4E5F8FFC4E5
          F8FFC4E5F8FFC4E5F8FFC4E5F8FFC4E5F8FF355190FF0000000B00000004557E
          ADC16DA0DCFF6CA0DCFF6B9FDBFF537AB7FF6A9DDAFF699CD9FF699BD8FF689A
          D8FF476CADFF6699D6FF6597D6FF6497D5FF4A6F9DC300000007000000010000
          0003000000050000000500000005173471DC0B19387203071026020610260411
          3372041C60DC0000000600000007000000070000000600000002000000000000
          00000000000000000000000000000408112110224C90163272DE112D6FDE0819
          459001050F210000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000}
      end
      item
        Image.Data = {
          36040000424D3604000000000000360000002800000010000000100000000100
          2000000000000004000000000000000000000000000000000000000000000000
          00030000000C3030303F00000014000000140000001500000015000000150000
          00150000001500000016000000140000000E0000000300000000000000000000
          000B855B4FC4B8806DFFB87F6CFFB77D6BFF275392FF265190FF264F8EFF244D
          8BFFB47967FFB37866FFB47864FF805648C50000000D00000000000000000000
          0010BA8471FFFCF6F2FFF5E0D2FFF4DFD1FF2F6BBBFF5EB0ECFF4FA7E8FF306B
          BBFFF6E6DDFFF3DBCCFFF6E4DAFFB57966FF0000001200000000000000000000
          000FBD8674FFFDF9F7FFF5E2D7FFF5E1D6FF2B66B8FF6CB8EEFF56ACEAFF2B68
          B8FFF7E8DFFFF4DED0FFF7E8E0FFB67C69FF0000001200000000000000000000
          000EBF8A77FFFEFCFAFFF6E6DCFFF6E5DBFF2761B5FF7BC1F0FF5EB1EBFF2661
          B5FFF8EAE2FFF5E0D4FFF9EDE6FFB77E6BFF0000001100000000000000000000
          000CC18D7BFFFEFDFDFFF7E9E1FFF7E8DFFF235CB2FF88C9F2FF64B4EDFF235B
          B2FFF9EDE6FFF6E3D9FFFAF0EAFFB9806EFF0000000F00000000000000000000
          000BC4907EFFFEFDFDFFF9ECE5FFF8ECE4FF1D57AFFF95D0F4FF93CFF4FF1D57
          AFFFF9EDE6FFF7E7DEFFFAF3EEFFBB8471FF0000000E00000000000000090000
          0016AF7E6CFFF6F6F5FFF9EEE8FFFAEFE9FF1B53AEFF1B53AEFF1B53AEFF1B53
          AEFFF8EBE4FFF7E9E1FFF3EEEBFFA77462FF000000190000000B20865EFF2796
          6CFF1F855DFFB5C1B8FFF0E6E1FFFAF0EDFFFAF1ECFFFAF1ECFFFAF1EBFFF9EF
          E9FFF8EDE7FFEEE0DBFFB0BAAEFF1E7C56FF1D8B60FF1D7A54FF0718113C2D93
          6CFF53E3B6FF1C7951FFABB0A3FFEFE6E3FFFAF4F0FFFBF3EFFFFBF3EEFFF9F1
          EDFFECE1DEFFA8A79BFF15724BFF2AD89DFF188056FF04140D3F00000003081A
          123C339B74FF65E8C0FF1E7750FFA9ACA0FFEEE7E4FFF9F5F2FFF9F4F1FFECE2
          DEFFA7A89AFF17724BFF39DBA6FF1D885DFF04160E4300000004000000000000
          0003081C143A3AA57DFF75EBC9FF1E744EFFA5A89CFFE9E0DDFFE6DDD8FFA4A6
          9AFF17714AFF4BE0B1FF218F63FF937A63FF0000000B00000000000000000000
          000000000003091E163841AC87FF86EFD1FF1E734CFFA1A296FF829280FF1870
          48FF61E7BEFF26976CFFAFBDB2FFB98270FF0000000600000000000000000000
          000000000000000000020A1F183648B58FFF96F3DBFF348B65FF2C8961FF76EC
          C9FF2AA074FFB0C1B5FFF6F4F4FFBE8876FF0000000400000000000000000000
          00000000000000000000000000020B2119364FBD97FFA3F5E1FF89F3D7FF2FA8
          7CFF7D7B69CDCC9E8DFFCB9B8AFF946E61BF0000000200000000000000000000
          0000000000000000000000000000000000010C221B3440B78FFF40B78EFF051E
          1535000000030000000200000002000000010000000000000000}
      end>
  end
  object sql_conveniados: TFDQuery
    Connection = Module.connection
    SQL.Strings = (
      
        'select cc.id, concat(DATE_FORMAT(cc.periodo_inicio,"%d/%m"),'#39' - ' +
        #39',DATE_FORMAT(cc.periodo_fim,"%d/%m")) as periodo, cc.nome, cc.m' +
        'atricula, cc.cpf, cc.credito, cc.status from cliente_conveniado ' +
        'cc')
    Left = 568
    Top = 352
    object sql_conveniadosperiodo: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'periodo'
      Origin = 'periodo'
      ProviderFlags = []
      ReadOnly = True
      Size = 13
    end
    object sql_conveniadosnome: TStringField
      FieldName = 'nome'
      Origin = 'nome'
      Required = True
      Size = 255
    end
    object sql_conveniadosmatricula: TStringField
      FieldName = 'matricula'
      Origin = 'matricula'
      Required = True
      Size = 10
    end
    object sql_conveniadoscpf: TStringField
      FieldName = 'cpf'
      Origin = 'cpf'
      Required = True
      FixedChar = True
      Size = 11
    end
    object sql_conveniadoscredito: TBCDField
      AutoGenerateValue = arDefault
      FieldName = 'credito'
      Origin = 'credito'
      Precision = 10
      Size = 2
    end
    object sql_conveniadosid: TFDAutoIncField
      FieldName = 'id'
      Origin = 'id'
      ProviderFlags = [pfInWhere, pfInKey]
      ReadOnly = True
    end
    object sql_conveniadosstatus: TBooleanField
      AutoGenerateValue = arDefault
      FieldName = 'status'
      Origin = '`status`'
    end
  end
  object ds_conveniado: TDataSource
    DataSet = sql_conveniados
    Left = 592
    Top = 336
  end
  object popConveniados: TPopupMenu
    Left = 624
    Top = 321
    object HistricodeVendas1: TMenuItem
      Bitmap.Data = {
        36040000424D3604000000000000360000002800000010000000100000000100
        2000000000000004000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000003333
        33FF333333FF333333FF333333FF00000000333333FF333333FF333333FF3333
        33FF00000000333333FF333333FF333333FF333333FF00000000000000003333
        33FF333333FF333333FF333333FF00000000333333FF333333FF333333FF3333
        33FF00000000333333FF333333FF333333FF333333FF00000000000000003333
        33FF333333FF333333FF333333FF00000000333333FF333333FF333333FF3333
        33FF00000000333333FF333333FF333333FF333333FF00000000000000003333
        33FF333333FF333333FF333333FF00000000333333FF333333FF333333FF3333
        33FF00000000333333FF333333FF333333FF333333FF00000000000000003333
        33FF333333FF333333FF333333FF00000000333333FF333333FF333333FF3333
        33FF00000000333333FF333333FF333333FF333333FF00000000000000000000
        000000000000000000000000000000000000333333FF333333FF333333FF3333
        33FF00000000333333FF333333FF333333FF333333FF00000000000000000000
        000000000000000000000000000000000000333333FF333333FF333333FF3333
        33FF00000000333333FF333333FF333333FF333333FF00000000000000000000
        000000000000000000000000000000000000333333FF333333FF333333FF3333
        33FF00000000333333FF333333FF333333FF333333FF00000000000000000000
        000000000000000000000000000000000000333333FF333333FF333333FF3333
        33FF000000000000000000000000000000000000000000000000000000000000
        000000000000000000000000000000000000333333FF333333FF333333FF3333
        33FF000000000000000000000000000000000000000000000000000000000000
        000000000000000000000000000000000000333333FF333333FF333333FF3333
        33FF000000000000000000000000000000000000000000000000000000000000
        000000000000000000000000000000000000333333FF333333FF333333FF3333
        33FF000000000000000000000000000000000000000000000000000000000000
        000000000000000000000000000000000000333333FF333333FF333333FF3333
        33FF000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000}
      Caption = 'Hist'#243'rico de Vendas'
      Default = True
      OnClick = HistricodeVendas1Click
    end
    object Editar1: TMenuItem
      Bitmap.Data = {
        36040000424D3604000000000000360000002800000010000000100000000100
        2000000000000004000000000000000000000000000000000000000000000000
        000000000000000000000000000000000000000000003C3C3CFF1E1E1E7E0000
        0000000000000000000000000000000000000000000000000000000000000000
        000000000000000000000000000000000000000000001E1E1E7E000000001E1E
        1E811E1E1E810000000000000000000000000000000000000000000000000000
        00000000000000000000000000000000000000000000000000001E1E1E813C3C
        3CFF3C3C3CFF1E1E1E8100000000000000000000000000000000000000000000
        00000000000000000000000000000000000000000000000000001E1E1E7E3C3C
        3CFF3C3C3CFF3C3C3CFF1E1E1E81000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000001E1E
        1E7E3C3C3CFF3C3C3CFF3C3C3CFF1E1E1E810000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        00001E1E1E7E3C3C3CFF3C3C3CFF3C3C3CFF1E1E1E8100000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000001E1E1E7E3C3C3CFF3C3C3CFF3C3C3CFF1A1A1A70000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        000000000000000000001E1E1E7E3C3C3CFF3C3C3CFF353535E0000000003C3C
        3CFF3C3C3CFF3C3C3CFF3C3C3CFF3C3C3CFF3C3C3CFF3C3C3CFF3C3C3CFF3C3C
        3CFF3C3C3CFF3C3C3CFF000000001A1A1A70353535E01A1A1A70000000003C3C
        3CFF1E1E1E800000000000000000000000003C3C3CFF00000000000000000000
        00001E1E1E803C3C3CFF00000000000000000000000000000000000000003C3C
        3CFF000000003C3C3CFF3C3C3CFF000000003C3C3CFF000000003C3C3CFF3C3C
        3CFF000000003C3C3CFF00000000000000000000000000000000000000003C3C
        3CFF1E1E1E800000000000000000000000003C3C3CFF000000003C3C3CFF3C3C
        3CFF000000003C3C3CFF00000000000000000000000000000000000000003C3C
        3CFF3C3C3CFF3C3C3CFF3C3C3CFF000000003C3C3CFF00000000000000000000
        00001E1E1E803C3C3CFF00000000000000000000000000000000000000003C3C
        3CFF3C3C3CFF00000000000000001E1E1E803C3C3CFF000000003C3C3CFF3C3C
        3CFF3C3C3CFF3C3C3CFF00000000000000000000000000000000000000003C3C
        3CFF3C3C3CFF3C3C3CFF3C3C3CFF3C3C3CFF3C3C3CFF000000003C3C3CFF3C3C
        3CFF3C3C3CFF3C3C3CFF00000000000000000000000000000000000000003C3C
        3CFF3C3C3CFF3C3C3CFF3C3C3CFF3C3C3CFF3C3C3CFF3C3C3CFF3C3C3CFF3C3C
        3CFF3C3C3CFF3C3C3CFF00000000000000000000000000000000}
      Caption = 'Editar'
      OnClick = Editar1Click
    end
    object ZerarConvenio1: TMenuItem
      Bitmap.Data = {
        36040000424D3604000000000000360000002800000010000000100000000100
        2000000000000004000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000002525
        25B7333333FF333333FF333333FF333333FF333333FF252525B7000000000000
        0000000000000000000000000000000000000000000000000000000000003333
        33FF333333FF333333FF00000000333333FF333333FF333333FF000000000000
        0000333333FF333333FF333333FF333333FF333333FF333333FF000000003333
        33FF333333FF1D1D1D8F000000001D1D1D8F333333FF333333FF000000000000
        0000333333FF333333FF333333FF333333FF333333FF333333FF000000003333
        33FF333333FF0606061F000000000606061F333333FF333333FF000000000000
        0000333333FF333333FF00000000000000000000000000000000000000003333
        33FF333333FF1D1D1D8F0606061F1D1D1D8F333333FF333333FF000000000000
        0000333333FF333333FF00000000000000000000000000000000000000002626
        26BD333333FF333333FF333333FF333333FF333333FF262626BD000000000000
        0000333333FF333333FF00000000262626BF262626BF262626BF0A0A0A300000
        0000333333FF000000000000000000000000333333FF00000000000000000000
        0000333333FF333333FF00000000000000000000000000000000000000000000
        0000333333FF0D0D0D40000000000D0D0D40333333FF00000000000000000000
        0000333333FF333333FF00000000262626BF262626BF262626BF262626BF0000
        00000D0D0D40333333FF333333FF333333FF0D0D0D4000000000000000000000
        0000333333FF333333FF00000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000333333FF333333FF00000000262626BF262626BF262626BF262626BF2626
        26BF00000000333333FF333333FF000000000000000000000000000000000000
        0000333333FF333333FF00000000000000000000000000000000000000000000
        000000000000333333FF333333FF000000000000000000000000000000000000
        0000333333FF333333FF00000000262626BF262626BF262626BF262626BF2626
        26BF00000000333333FF333333FF000000000000000000000000000000000000
        0000333333FF333333FF00000000000000000000000000000000000000000000
        000000000000333333FF333333FF000000000000000000000000000000000000
        0000333333FF333333FF333333FF333333FF333333FF333333FF333333FF3333
        33FF333333FF333333FF333333FF000000000000000000000000000000000000
        0000333333FF333333FF333333FF333333FF333333FF333333FF333333FF3333
        33FF333333FF333333FF333333FF000000000000000000000000}
      Caption = 'Bloquear'
      OnClick = ZerarConvenio1Click
    end
  end
end
