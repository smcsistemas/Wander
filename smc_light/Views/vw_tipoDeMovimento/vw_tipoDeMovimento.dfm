object frm_tipoDeMovimento: Tfrm_tipoDeMovimento
  Left = 0
  Top = 0
  AutoSize = True
  BorderIcons = [biSystemMenu]
  BorderStyle = bsSingle
  Caption = 'Tipos de Movimento'
  ClientHeight = 489
  ClientWidth = 937
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
  OnKeyPress = FormKeyPress
  OnKeyUp = FormKeyUp
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 13
  object page_control: TcxPageControl
    Left = 0
    Top = 0
    Width = 937
    Height = 489
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
    LookAndFeel.SkinName = 'metropolis'
    ClientRectBottom = 487
    ClientRectLeft = 2
    ClientRectRight = 935
    ClientRectTop = 28
    object tab_consulta: TcxTabSheet
      Caption = 'Consultar'
      Color = clMedGray
      ImageIndex = 0
      ParentColor = False
      OnShow = tab_consultaShow
      object Label45: TLabel
        Left = 14
        Top = 18
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
      object gd: TcxGrid
        Left = 3
        Top = 42
        Width = 918
        Height = 398
        TabOrder = 0
        LookAndFeel.NativeStyle = False
        LookAndFeel.SkinName = 'DevExpressStyle'
        object tb: TcxGridDBTableView
          OnKeyDown = tbKeyDown
          Navigator.Buttons.CustomButtons = <>
          OnCellDblClick = tbCellDblClick
          DataController.DataSource = DS_C_TPMOV
          DataController.Summary.DefaultGroupSummaryItems = <>
          DataController.Summary.FooterSummaryItems = <>
          DataController.Summary.SummaryGroups = <>
          OptionsData.Deleting = False
          OptionsData.DeletingConfirmation = False
          OptionsData.Editing = False
          OptionsData.Inserting = False
          OptionsView.GroupByBox = False
          object tbtpmov_codigo: TcxGridDBColumn
            Caption = 'C'#243'digo'
            DataBinding.FieldName = 'tpmov_codigo'
          end
          object tbtpmov_descricao: TcxGridDBColumn
            Caption = 'Tipo de Movimento'
            DataBinding.FieldName = 'tpmov_descricao'
          end
        end
        object lv: TcxGridLevel
          GridView = tb
        end
      end
      object edt_consulta: TEdit
        Left = 96
        Top = 17
        Width = 337
        Height = 21
        TabOrder = 1
        OnKeyUp = edt_consultaKeyUp
      end
      object btn_relatorios_cli: TcxButton
        Left = 1168
        Top = 13
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
        TabOrder = 2
        Visible = False
        OnClick = btn_relatorios_cliClick
      end
      object pnContador: TPanel
        Left = 844
        Top = 0
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
        TabOrder = 3
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
      object pcCadastrar: TPageControl
        Left = 0
        Top = 0
        Width = 933
        Height = 410
        ActivePage = tbTratamentosFiscais
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -15
        Font.Name = 'Tahoma'
        Font.Style = [fsBold]
        ParentFont = False
        TabOrder = 0
        object tbDadosGerais: TTabSheet
          Caption = '  Dados Gerais'
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Height = -15
          Font.Name = 'Tahoma'
          Font.Style = []
          ParentFont = False
          object Panel1: TPanel
            Left = 0
            Top = 0
            Width = 925
            Height = 377
            Align = alClient
            Font.Charset = ANSI_CHARSET
            Font.Color = clWindowText
            Font.Height = -15
            Font.Name = 'Tahoma'
            Font.Style = [fsBold]
            ParentFont = False
            TabOrder = 0
            object Label10: TLabel
              Left = 13
              Top = 12
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
            object lbl2: TLabel
              Left = 132
              Top = 12
              Width = 74
              Height = 18
              Caption = 'Descri'#231#227'o'
              Font.Charset = ANSI_CHARSET
              Font.Color = clBlack
              Font.Height = -15
              Font.Name = 'Tahoma'
              Font.Style = [fsBold]
              ParentFont = False
            end
            object Label13: TLabel
              Left = 507
              Top = 12
              Width = 65
              Height = 18
              Caption = 'Situa'#231#227'o'
              Font.Charset = ANSI_CHARSET
              Font.Color = clBlack
              Font.Height = -15
              Font.Name = 'Tahoma'
              Font.Style = [fsBold]
              ParentFont = False
            end
            object edTPMOV_CODIGO: TEdit
              Left = 5
              Top = 31
              Width = 121
              Height = 26
              CharCase = ecUpperCase
              Font.Charset = ANSI_CHARSET
              Font.Color = clWindowText
              Font.Height = -15
              Font.Name = 'Tahoma'
              Font.Style = [fsBold]
              ParentFont = False
              TabOrder = 0
              OnExit = edTPMOV_CODIGOExit
            end
            object edTPMOV_DESCRICAO: TEdit
              Left = 130
              Top = 32
              Width = 376
              Height = 26
              CharCase = ecUpperCase
              Font.Charset = ANSI_CHARSET
              Font.Color = clWindowText
              Font.Height = -15
              Font.Name = 'Tahoma'
              Font.Style = [fsBold]
              ParentFont = False
              TabOrder = 1
            end
            object cxTPMOV_ATIVA: TcxComboBox
              Left = 507
              Top = 32
              AutoSize = False
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
              Properties.DropDownListStyle = lsFixedList
              Properties.ImmediateDropDownWhenActivated = True
              Properties.Items.Strings = (
                'Ativo'
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
              TabOrder = 2
              Height = 26
              Width = 122
            end
            object rgTPMOV_CLIFOR: TRadioGroup
              Left = 635
              Top = 15
              Width = 140
              Height = 97
              Caption = 'Se relaciona com'
              Font.Charset = ANSI_CHARSET
              Font.Color = clWindowText
              Font.Height = -13
              Font.Name = 'Tahoma'
              Font.Style = []
              Items.Strings = (
                'Cliente'
                'Fornecedor'
                'N'#227'o se relaciona')
              ParentFont = False
              TabOrder = 3
              TabStop = True
            end
            object rgTPMOV_ES: TRadioGroup
              Left = 7
              Top = 64
              Width = 140
              Height = 79
              Caption = '  Fluxo de Mercadoria'
              Font.Charset = ANSI_CHARSET
              Font.Color = clWindowText
              Font.Height = -13
              Font.Name = 'Tahoma'
              Font.Style = []
              Items.Strings = (
                'Entrada'
                'Sa'#237'da')
              ParentFont = False
              TabOrder = 4
              TabStop = True
            end
          end
        end
        object tbParametrosFiscais: TTabSheet
          Caption = '  Par'#226'metros Fiscais'
          ImageIndex = 1
          object Panel2: TPanel
            Left = 0
            Top = 0
            Width = 925
            Height = 377
            Align = alClient
            TabOrder = 0
            object rgTPMOV_EMITENF: TRadioGroup
              Left = 3
              Top = 12
              Width = 132
              Height = 82
              Caption = 'Documento Fiscal'
              Font.Charset = ANSI_CHARSET
              Font.Color = clWindowText
              Font.Height = -13
              Font.Name = 'Tahoma'
              Font.Style = []
              Items.Strings = (
                'N'#227'o emite'
                'NFe'
                'NFCe')
              ParentFont = False
              TabOrder = 0
              TabStop = True
            end
            object rgTPMOV_INDPRES: TRadioGroup
              Left = 139
              Top = 12
              Width = 273
              Height = 194
              Caption = 'Indicador Presencial quanto ao Cliente'
              Font.Charset = ANSI_CHARSET
              Font.Color = clWindowText
              Font.Height = -13
              Font.Name = 'Tahoma'
              Font.Style = []
              Items.Strings = (
                'N'#227'o se aplica'
                'Presencial'
                'Internet'
                'Teleatendimento'
                'Entrega a domicilio'
                'Presencial fora do estabelecimento'
                'Outros')
              ParentFont = False
              TabOrder = 1
              TabStop = True
            end
            object rgTPMOV_FINALIDADE: TRadioGroup
              Left = 416
              Top = 12
              Width = 148
              Height = 194
              Caption = ' Finalidade da NFe'
              Font.Charset = ANSI_CHARSET
              Font.Color = clWindowText
              Font.Height = -13
              Font.Name = 'Tahoma'
              Font.Style = []
              Items.Strings = (
                'Normal'
                'Complementar'
                'Ajuste'
                'Devolu'#231#227'o'
                'N'#227'o se aplica')
              ParentFont = False
              TabOrder = 2
              TabStop = True
            end
          end
        end
        object tbTratamentosFiscais: TTabSheet
          Caption = '  Tratamentos Fiscais'
          ImageIndex = 2
          object Panel3: TPanel
            Left = 0
            Top = 0
            Width = 925
            Height = 377
            Align = alClient
            TabOrder = 0
            object GroupBox1: TGroupBox
              Left = 0
              Top = 9
              Width = 913
              Height = 365
              Caption = '  Tratar Grupos da NFe  '
              TabOrder = 0
              object Label1: TLabel
                Left = 760
                Top = 348
                Width = 149
                Height = 13
                Caption = '( ST = Subistitui'#231#227'o Tribut'#225'ria )'
                Font.Charset = ANSI_CHARSET
                Font.Color = clWindowText
                Font.Height = -11
                Font.Name = 'Tahoma'
                Font.Style = []
                ParentFont = False
              end
              object cbTPMOV_NFE_TRATAR_GRUPO_B12A_NOTA_REFERENCIADA: TCheckBox
                Left = 11
                Top = 26
                Width = 222
                Height = 17
                Caption = 'B12a - Nota Referenciada'
                Font.Charset = ANSI_CHARSET
                Font.Color = clWindowText
                Font.Height = -12
                Font.Name = 'Tahoma'
                Font.Style = []
                ParentFont = False
                TabOrder = 0
              end
              object cbTPMOV_NFE_TRATAR_GRUPO_B20a_NOTA_REFER_PROD_RURAL: TCheckBox
                Left = 11
                Top = 42
                Width = 321
                Height = 17
                Caption = 'B20a - Nota de Produtor Rural Referenciada '
                Font.Charset = ANSI_CHARSET
                Font.Color = clWindowText
                Font.Height = -12
                Font.Name = 'Tahoma'
                Font.Style = []
                ParentFont = False
                TabOrder = 1
              end
              object cbTPMOV_NFE_TRATAR_GRUPO_B20j_CUPOM_FISCAL_REFERENCIADO: TCheckBox
                Left = 11
                Top = 58
                Width = 315
                Height = 17
                Caption = 'B20j - Cupom Fiscal Referenciado'
                Font.Charset = ANSI_CHARSET
                Font.Color = clWindowText
                Font.Height = -12
                Font.Name = 'Tahoma'
                Font.Style = []
                ParentFont = False
                TabOrder = 2
              end
              object cbTPMOV_NFE_TRATAR_GRUPO_F_LOCAL_DE_RETIRADA: TCheckBox
                Left = 11
                Top = 74
                Width = 315
                Height = 17
                Caption = 'F - Local de Retirada'
                Font.Charset = ANSI_CHARSET
                Font.Color = clWindowText
                Font.Height = -12
                Font.Name = 'Tahoma'
                Font.Style = []
                ParentFont = False
                TabOrder = 3
              end
              object cbTPMOV_NFE_TRATAR_GRUPO_G_LOCAL_DE_ENTREGA: TCheckBox
                Left = 11
                Top = 90
                Width = 315
                Height = 17
                Caption = 'G - Local de Entrega'
                Font.Charset = ANSI_CHARSET
                Font.Color = clWindowText
                Font.Height = -12
                Font.Name = 'Tahoma'
                Font.Style = []
                ParentFont = False
                TabOrder = 4
              end
              object cbTPMOV_NFE_TRATAR_GRUPO_DI_DECLARACAO_DE_IMPORTACAO: TCheckBox
                Left = 11
                Top = 106
                Width = 315
                Height = 17
                Caption = 'DI - Declara'#231#227'o de Importa'#231#227'o'
                Font.Charset = ANSI_CHARSET
                Font.Color = clWindowText
                Font.Height = -12
                Font.Name = 'Tahoma'
                Font.Style = []
                ParentFont = False
                TabOrder = 5
              end
              object cbTPMOV_NFE_TRATAR_GRUPO_J_VEICULOS_NOVOS: TCheckBox
                Left = 11
                Top = 121
                Width = 315
                Height = 17
                Caption = 'J - V'#233#237'culos Novos'
                Font.Charset = ANSI_CHARSET
                Font.Color = clWindowText
                Font.Height = -12
                Font.Name = 'Tahoma'
                Font.Style = []
                ParentFont = False
                TabOrder = 6
              end
              object cbTPMOV_NFE_TRATAR_GRUPO_K_MEDICAMENTOS: TCheckBox
                Left = 11
                Top = 137
                Width = 315
                Height = 17
                Caption = 'K - Mecicamentos'
                Font.Charset = ANSI_CHARSET
                Font.Color = clWindowText
                Font.Height = -12
                Font.Name = 'Tahoma'
                Font.Style = []
                ParentFont = False
                TabOrder = 7
              end
              object cbTPMOV_NFE_TRATAR_GRUPO_L_ARMAMENTOS: TCheckBox
                Left = 11
                Top = 153
                Width = 315
                Height = 17
                Caption = 'L - Armamentos'
                Font.Charset = ANSI_CHARSET
                Font.Color = clWindowText
                Font.Height = -12
                Font.Name = 'Tahoma'
                Font.Style = []
                ParentFont = False
                TabOrder = 8
              end
              object cbTPMOV_NFE_TRATAR_GRUPO_L1_COMBUSTIVEIS: TCheckBox
                Left = 11
                Top = 169
                Width = 315
                Height = 17
                Caption = 'L1 - Combust'#237'veis'
                Font.Charset = ANSI_CHARSET
                Font.Color = clWindowText
                Font.Height = -12
                Font.Name = 'Tahoma'
                Font.Style = []
                ParentFont = False
                TabOrder = 9
              end
              object cbTPMOV_NFE_TRATAR_GRUPO_O_IPI: TCheckBox
                Left = 11
                Top = 185
                Width = 315
                Height = 17
                Caption = 'O - Impostos sobre Produtos Industrializados - IPI '
                Font.Charset = ANSI_CHARSET
                Font.Color = clWindowText
                Font.Height = -12
                Font.Name = 'Tahoma'
                Font.Style = []
                ParentFont = False
                TabOrder = 10
              end
              object cbTPMOV_NFE_TRATAR_GRUPO_P_II: TCheckBox
                Left = 11
                Top = 201
                Width = 315
                Height = 17
                Caption = 'P - Impostos sobre Importa'#231#227'o - II'
                Font.Charset = ANSI_CHARSET
                Font.Color = clWindowText
                Font.Height = -12
                Font.Name = 'Tahoma'
                Font.Style = []
                ParentFont = False
                TabOrder = 11
              end
              object cbTPMOV_NFE_TRATAR_GRUPO_Q_PIS: TCheckBox
                Left = 11
                Top = 217
                Width = 315
                Height = 17
                Caption = 'Q - Programa de Integra'#231#227'o Social - PIS'
                Font.Charset = ANSI_CHARSET
                Font.Color = clWindowText
                Font.Height = -12
                Font.Name = 'Tahoma'
                Font.Style = []
                ParentFont = False
                TabOrder = 12
              end
              object cbTPMOV_NFE_TRATAR_GRUPO_R_PIS_ST: TCheckBox
                Left = 11
                Top = 232
                Width = 315
                Height = 17
                Caption = 'R - Programa de Integra'#231#227'o Social - PIS - ST'
                Font.Charset = ANSI_CHARSET
                Font.Color = clWindowText
                Font.Height = -12
                Font.Name = 'Tahoma'
                Font.Style = []
                ParentFont = False
                TabOrder = 13
              end
              object cbTPMOV_NFE_TRATAR_GRUPO_S_COFINS: TCheckBox
                Left = 11
                Top = 248
                Width = 406
                Height = 17
                Caption = 
                  'S - Contribui'#231#227'o para o Financiamento da Seguridade Social - COF' +
                  'INS'
                Font.Charset = ANSI_CHARSET
                Font.Color = clWindowText
                Font.Height = -12
                Font.Name = 'Tahoma'
                Font.Style = []
                ParentFont = False
                TabOrder = 14
              end
              object cbTPMOV_NFE_TRATAR_GRUPO_T_COFINS_ST: TCheckBox
                Left = 11
                Top = 264
                Width = 410
                Height = 17
                Caption = 
                  'T - Contribui'#231#227'o para o Financiamento da Seguridade Social - COF' +
                  'INS-ST'
                Font.Charset = ANSI_CHARSET
                Font.Color = clWindowText
                Font.Height = -12
                Font.Name = 'Tahoma'
                Font.Style = []
                ParentFont = False
                TabOrder = 15
              end
              object cbTPMOV_NFE_TRATAR_GRUPO_U_ISSQN: TCheckBox
                Left = 11
                Top = 280
                Width = 410
                Height = 17
                Caption = 'U - Imposto Sobre Servi'#231'os de Qualquer Natureza - ISSQN (ou ISS)'
                Font.Charset = ANSI_CHARSET
                Font.Color = clWindowText
                Font.Height = -12
                Font.Name = 'Tahoma'
                Font.Style = []
                ParentFont = False
                TabOrder = 16
              end
            end
          end
        end
      end
      object pnControles: TPanel
        Left = 430
        Top = 406
        Width = 502
        Height = 49
        Color = 8421440
        ParentBackground = False
        TabOrder = 1
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
  object DS_TPMOV: TDataSource
    DataSet = SQL_TPMOV
    Left = 368
    Top = 184
  end
  object SQL_TPMOV: TFDQuery
    MasterSource = DS_C_TPMOV
    Connection = Module.connection
    SQL.Strings = (
      'select * from tipomovimento_tpmov where tpmov_codigo = :pcodigo')
    Left = 296
    Top = 252
    ParamData = <
      item
        Name = 'pcodigo'
        DataType = ftString
        FDDataType = dtWideString
        ParamType = ptInput
        Value = Null
      end>
  end
  object DS_C_TPMOV: TDataSource
    DataSet = SQL_C_TPMOV
    Left = 240
    Top = 144
  end
  object SQL_C_TPMOV: TFDQuery
    AfterScroll = SQL_C_TPMOVAfterScroll
    Connection = Module.connection
    SQL.Strings = (
      'Select tpmov_codigo, tpmov_descricao from tipomovimento_tpmov'
      '')
    Left = 632
    Top = 219
    object SQL_C_TPMOVtpmov_codigo: TStringField
      FieldName = 'tpmov_codigo'
      Origin = 'TPMOV_CODIGO'
      Required = True
      Size = 10
    end
    object SQL_C_TPMOVtpmov_descricao: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'tpmov_descricao'
      Origin = 'TPMOV_DESCRICAO'
      Size = 40
    end
  end
  object SQL_Auxiliar: TFDQuery
    MasterSource = DS_C_TPMOV
    Connection = Module.connection
    SQL.Strings = (
      'select * from tipomovimento_tpmov where tpmov_codigo = :pcodigo')
    Left = 360
    Top = 276
    ParamData = <
      item
        Name = 'pcodigo'
        DataType = ftString
        FDDataType = dtWideString
        ParamType = ptInput
        Value = Null
      end>
  end
end
