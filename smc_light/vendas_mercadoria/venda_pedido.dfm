object frm_pedido_venda: Tfrm_pedido_venda
  Left = 0
  Top = 0
  BorderIcons = [biSystemMenu]
  BorderStyle = bsSingle
  Caption = 'Pedido | Venda'
  ClientHeight = 672
  ClientWidth = 1281
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
  OnKeyPress = FormKeyPress
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 13
  object cxPageControl1: TcxPageControl
    Left = 0
    Top = 0
    Width = 1281
    Height = 672
    Align = alClient
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'Tahoma'
    Font.Style = [fsBold]
    ParentFont = False
    TabOrder = 0
    Properties.ActivePage = cxTabSheet2
    Properties.CustomButtons.Buttons = <>
    LookAndFeel.NativeStyle = False
    LookAndFeel.SkinName = 'Metropolis'
    ClientRectBottom = 670
    ClientRectLeft = 2
    ClientRectRight = 1279
    ClientRectTop = 28
    object cxTabSheet1: TcxTabSheet
      Caption = 'Consulta'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      ImageIndex = 0
      ParentFont = False
      ExplicitLeft = 0
      ExplicitTop = 0
      ExplicitWidth = 0
      ExplicitHeight = 0
      object lbl_qtde: TLabel
        Left = 537
        Top = 603
        Width = 30
        Height = 19
        Alignment = taRightJustify
        Caption = '000'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -16
        Font.Name = 'Tahoma'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object Label47: TLabel
        Left = 263
        Top = 603
        Width = 207
        Height = 19
        Caption = 'Quantidade de Registros:'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clRed
        Font.Height = -16
        Font.Name = 'Tahoma'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object Label48: TLabel
        Left = 774
        Top = 603
        Width = 179
        Height = 19
        Caption = 'Valor Total Registros:'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clRed
        Font.Height = -16
        Font.Name = 'Tahoma'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object lb_total_nfce: TLabel
        Left = 970
        Top = 603
        Width = 104
        Height = 19
        Caption = 'R$ - 0000,00'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -16
        Font.Name = 'Tahoma'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object GroupBox5: TGroupBox
        Left = 11
        Top = 5
        Width = 199
        Height = 52
        Caption = '  Tipo '
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'Tahoma'
        Font.Style = [fsBold]
        ParentFont = False
        TabOrder = 0
        object cxRadioButton1: TcxRadioButton
          Left = 115
          Top = 20
          Width = 75
          Height = 19
          Caption = ' Sa'#237'da'
          Color = clRed
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWhite
          Font.Height = -16
          Font.Name = 'Tahoma'
          Font.Style = [fsBold]
          ParentColor = False
          ParentFont = False
          TabOrder = 0
          ParentBackground = False
        end
        object cxRadioButton2: TcxRadioButton
          Left = 8
          Top = 20
          Width = 91
          Height = 19
          Caption = ' Entrada'
          Color = clGreen
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWhite
          Font.Height = -16
          Font.Name = 'Tahoma'
          Font.Style = [fsBold]
          ParentColor = False
          ParentFont = False
          TabOrder = 1
          ParentBackground = False
        end
      end
      object GroupBox6: TGroupBox
        Left = 11
        Top = 61
        Width = 291
        Height = 68
        Caption = '  Consultar Faixa NF-e  '
        Color = clWhite
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -15
        Font.Name = 'Tahoma'
        Font.Style = [fsBold]
        ParentBackground = False
        ParentColor = False
        ParentFont = False
        TabOrder = 1
        object Label41: TLabel
          Left = 9
          Top = 33
          Width = 48
          Height = 18
          Caption = 'In'#237'cio:'
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Height = -15
          Font.Name = 'Tahoma'
          Font.Style = [fsBold]
          ParentFont = False
        end
        object Label42: TLabel
          Left = 156
          Top = 33
          Width = 32
          Height = 18
          Caption = 'Fim:'
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Height = -15
          Font.Name = 'Tahoma'
          Font.Style = [fsBold]
          ParentFont = False
        end
        object edt_nfce_fim: TEdit
          Left = 194
          Top = 29
          Width = 84
          Height = 26
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -15
          Font.Name = 'Tahoma'
          Font.Style = [fsBold]
          ParentFont = False
          TabOrder = 1
        end
        object edt_nfce_inicio: TEdit
          Left = 64
          Top = 29
          Width = 84
          Height = 26
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -15
          Font.Name = 'Tahoma'
          Font.Style = [fsBold]
          ParentFont = False
          TabOrder = 0
        end
      end
      object DBGrid1: TDBGrid
        Left = 11
        Top = 140
        Width = 1238
        Height = 451
        Hint = 'Duplo clique para abrir a nota'
        Color = 12827392
        DataSource = DS_C_VENDAS
        FixedColor = clCream
        GradientEndColor = clGray
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = [fsBold]
        Options = [dgTitles, dgIndicator, dgColLines, dgRowLines, dgTabs]
        ParentFont = False
        TabOrder = 2
        TitleFont.Charset = DEFAULT_CHARSET
        TitleFont.Color = clWindowText
        TitleFont.Height = -13
        TitleFont.Name = 'Tahoma'
        TitleFont.Style = [fsBold]
        OnDblClick = DBGrid1DblClick
        Columns = <
          item
            Expanded = False
            FieldName = 'CODIGO_VENDA'
            Title.Caption = 'N'#186' Pedido'
            Width = 79
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'COD_NFCE'
            Title.Caption = 'N'#186' NF-e'
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'NOME_CLIENTE'
            Title.Caption = 'Nome Cliente'
            Width = 357
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'TOTAL_VENDA'
            Title.Caption = 'Valor NF-e'
            Width = 87
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'DATA'
            Title.Caption = 'Data Emiss'#227'o'
            Width = 98
            Visible = True
          end
          item
            Expanded = False
            Title.Caption = 'Tipo Emiss'#227'o'
            Width = 98
            Visible = True
          end
          item
            Expanded = False
            Title.Caption = 'Chave NF-e'
            Width = 266
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'STATUS'
            Title.Caption = 'Status'
            Width = 56
            Visible = True
          end
          item
            Expanded = False
            Title.Caption = 'Tipo Movimento'
            Width = 113
            Visible = True
          end
          item
            Expanded = False
            Title.Caption = 'Usu'#225'rio'
            Visible = True
          end>
      end
      object GroupBox1: TGroupBox
        Left = 311
        Top = 61
        Width = 418
        Height = 68
        Caption = '  Per'#237'odo  '
        Color = clWhite
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -15
        Font.Name = 'Tahoma'
        Font.Style = [fsBold]
        ParentBackground = False
        ParentColor = False
        ParentFont = False
        TabOrder = 3
        object Label43: TLabel
          Left = 7
          Top = 33
          Width = 48
          Height = 18
          Caption = 'In'#237'cio:'
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Height = -15
          Font.Name = 'Tahoma'
          Font.Style = [fsBold]
          ParentFont = False
        end
        object Label44: TLabel
          Left = 167
          Top = 33
          Width = 32
          Height = 18
          Caption = 'Fim:'
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Height = -15
          Font.Name = 'Tahoma'
          Font.Style = [fsBold]
          ParentFont = False
        end
        object Label45: TLabel
          Left = 307
          Top = 33
          Width = 35
          Height = 18
          Caption = 'M'#234's:'
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Height = -15
          Font.Name = 'Tahoma'
          Font.Style = [fsBold]
          ParentFont = False
        end
        object edt_periodo_inicio: TcxDateEdit
          Left = 61
          Top = 29
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
          Properties.DateButtons = []
          Style.Font.Charset = DEFAULT_CHARSET
          Style.Font.Color = clWindowText
          Style.Font.Height = -15
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
          Width = 94
        end
        object edt_periodo_fim: TcxDateEdit
          Left = 205
          Top = 29
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
          Properties.DateButtons = []
          Style.Font.Charset = DEFAULT_CHARSET
          Style.Font.Color = clWindowText
          Style.Font.Height = -15
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
          Width = 94
        end
        object CB_MES: TcxComboBox
          Left = 348
          Top = 29
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
          Style.Font.Height = -15
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
          Width = 61
        end
        object GroupBox2: TGroupBox
          Left = -629
          Top = -602
          Width = 1047
          Height = 670
          Color = clGradientInactiveCaption
          ParentBackground = False
          ParentColor = False
          TabOrder = 3
          object Label49: TLabel
            Left = 963
            Top = 625
            Width = 44
            Height = 13
            Caption = 'Vendas:'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -11
            Font.Name = 'Tahoma'
            Font.Style = [fsBold]
            ParentFont = False
          end
          object Label50: TLabel
            Left = 1018
            Top = 625
            Width = 21
            Height = 13
            Alignment = taRightJustify
            Caption = '000'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -11
            Font.Name = 'Tahoma'
            Font.Style = [fsBold]
            ParentFont = False
          end
          object Label51: TLabel
            Left = 901
            Top = 644
            Width = 106
            Height = 13
            Caption = 'Vendas com NFC-e:'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -11
            Font.Name = 'Tahoma'
            Font.Style = [fsBold]
            ParentFont = False
          end
          object lbl_venda_nfce: TLabel
            Left = 1018
            Top = 645
            Width = 21
            Height = 13
            Alignment = taRightJustify
            Caption = '000'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -11
            Font.Name = 'Tahoma'
            Font.Style = [fsBold]
            ParentFont = False
          end
          object GroupBox8: TGroupBox
            Left = 601
            Top = 16
            Width = 134
            Height = 74
            Caption = 'Faixa de Vendas'
            Color = clGradientInactiveCaption
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -13
            Font.Name = 'Tahoma'
            Font.Style = [fsBold]
            ParentBackground = False
            ParentColor = False
            ParentFont = False
            TabOrder = 0
            object Label52: TLabel
              Left = 8
              Top = 21
              Width = 39
              Height = 16
              Caption = 'In'#237'cio:'
              Font.Charset = ANSI_CHARSET
              Font.Color = clWindowText
              Font.Height = -13
              Font.Name = 'Tahoma'
              Font.Style = [fsBold]
              ParentFont = False
            end
            object Label53: TLabel
              Left = 22
              Top = 47
              Width = 25
              Height = 16
              Caption = 'Fim:'
              Font.Charset = ANSI_CHARSET
              Font.Color = clWindowText
              Font.Height = -13
              Font.Name = 'Tahoma'
              Font.Style = [fsBold]
              ParentFont = False
            end
            object edt_venda_inicio: TEdit
              Left = 50
              Top = 20
              Width = 78
              Height = 21
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clWindowText
              Font.Height = -11
              Font.Name = 'Tahoma'
              Font.Style = [fsBold]
              NumbersOnly = True
              ParentFont = False
              TabOrder = 0
            end
            object edt_venda_fim: TEdit
              Left = 50
              Top = 46
              Width = 78
              Height = 21
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clWindowText
              Font.Height = -11
              Font.Name = 'Tahoma'
              Font.Style = [fsBold]
              NumbersOnly = True
              ParentFont = False
              TabOrder = 1
            end
          end
          object GroupBox9: TGroupBox
            Left = 360
            Top = 16
            Width = 221
            Height = 74
            Caption = '  Per'#237'odo  '
            Color = clGradientInactiveCaption
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -13
            Font.Name = 'Tahoma'
            Font.Style = [fsBold]
            ParentBackground = False
            ParentColor = False
            ParentFont = False
            TabOrder = 1
            object Label54: TLabel
              Left = 7
              Top = 22
              Width = 39
              Height = 16
              Caption = 'In'#237'cio:'
              Font.Charset = ANSI_CHARSET
              Font.Color = clWindowText
              Font.Height = -13
              Font.Name = 'Tahoma'
              Font.Style = [fsBold]
              ParentFont = False
            end
            object Label55: TLabel
              Left = 19
              Top = 48
              Width = 25
              Height = 16
              Caption = 'Fim:'
              Font.Charset = ANSI_CHARSET
              Font.Color = clWindowText
              Font.Height = -13
              Font.Name = 'Tahoma'
              Font.Style = [fsBold]
              ParentFont = False
            end
            object Label56: TLabel
              Left = 148
              Top = 22
              Width = 31
              Height = 16
              Caption = 'M'#234's:'
              Font.Charset = ANSI_CHARSET
              Font.Color = clWindowText
              Font.Height = -13
              Font.Name = 'Tahoma'
              Font.Style = [fsBold]
              ParentFont = False
            end
            object cxDateEdit1: TcxDateEdit
              Left = 47
              Top = 19
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
              Properties.DateButtons = [btnClear, btnToday]
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
              Width = 100
            end
            object cxDateEdit2: TcxDateEdit
              Left = 47
              Top = 45
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
              Properties.DateButtons = [btnClear, btnToday]
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
              Width = 100
            end
            object cxComboBox5: TcxComboBox
              Left = 148
              Top = 45
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
              TabOrder = 2
              Width = 64
            end
          end
          object GroupBox10: TGroupBox
            Left = 10
            Top = 16
            Width = 228
            Height = 74
            Caption = '  Status  '
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -13
            Font.Name = 'Tahoma'
            Font.Style = [fsBold]
            ParentFont = False
            TabOrder = 2
            object Shape4: TShape
              Left = 9
              Top = 47
              Width = 103
              Height = 20
              Brush.Color = clRed
              Pen.Color = clMaroon
              Pen.Style = psClear
            end
            object Shape5: TShape
              Left = 9
              Top = 21
              Width = 103
              Height = 20
              Brush.Color = clGreen
              Pen.Color = clMaroon
              Pen.Style = psClear
            end
            object Shape6: TShape
              Left = 119
              Top = 20
              Width = 103
              Height = 20
              Brush.Color = clYellow
              Pen.Color = clMaroon
              Pen.Style = psClear
            end
            object chk_fechadas: TcxCheckBox
              Left = 9
              Top = 20
              Caption = '  Fechadas  '
              ParentColor = False
              ParentFont = False
              State = cbsChecked
              Style.BorderColor = clSilver
              Style.Color = clGradientInactiveCaption
              Style.Font.Charset = DEFAULT_CHARSET
              Style.Font.Color = clWindowText
              Style.Font.Height = -13
              Style.Font.Name = 'Tahoma'
              Style.Font.Style = [fsBold]
              Style.LookAndFeel.NativeStyle = False
              Style.LookAndFeel.SkinName = 'Office2013White'
              Style.TextColor = clBlack
              Style.IsFontAssigned = True
              StyleDisabled.LookAndFeel.NativeStyle = False
              StyleDisabled.LookAndFeel.SkinName = 'Office2013White'
              StyleFocused.LookAndFeel.NativeStyle = False
              StyleFocused.LookAndFeel.SkinName = 'Office2013White'
              StyleHot.LookAndFeel.NativeStyle = False
              StyleHot.LookAndFeel.SkinName = 'Office2013White'
              TabOrder = 0
              Transparent = True
            end
            object cxCheckBox3: TcxCheckBox
              Left = 8
              Top = 46
              Caption = ' Canceladas '
              ParentColor = False
              ParentFont = False
              State = cbsChecked
              Style.Color = clGradientInactiveCaption
              Style.Font.Charset = DEFAULT_CHARSET
              Style.Font.Color = clWindowText
              Style.Font.Height = -13
              Style.Font.Name = 'Tahoma'
              Style.Font.Style = [fsBold]
              Style.LookAndFeel.NativeStyle = False
              Style.LookAndFeel.SkinName = 'Office2013White'
              Style.TextColor = clBlack
              Style.IsFontAssigned = True
              StyleDisabled.LookAndFeel.NativeStyle = False
              StyleDisabled.LookAndFeel.SkinName = 'Office2013White'
              StyleFocused.LookAndFeel.NativeStyle = False
              StyleFocused.LookAndFeel.SkinName = 'Office2013White'
              StyleHot.LookAndFeel.NativeStyle = False
              StyleHot.LookAndFeel.SkinName = 'Office2013White'
              TabOrder = 1
              Transparent = True
            end
            object chk_abertas: TcxCheckBox
              Left = 119
              Top = 20
              Caption = '   Abertas  '
              ParentColor = False
              ParentFont = False
              State = cbsChecked
              Style.BorderColor = clSilver
              Style.Color = clGradientInactiveCaption
              Style.Font.Charset = DEFAULT_CHARSET
              Style.Font.Color = clWindowText
              Style.Font.Height = -13
              Style.Font.Name = 'Tahoma'
              Style.Font.Style = [fsBold]
              Style.LookAndFeel.NativeStyle = False
              Style.LookAndFeel.SkinName = 'Office2013White'
              Style.TextColor = clBlack
              Style.IsFontAssigned = True
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
          object GroupBox11: TGroupBox
            Left = 762
            Top = 16
            Width = 277
            Height = 74
            Caption = '  Consulta  '
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -13
            Font.Name = 'Tahoma'
            Font.Style = [fsBold]
            ParentFont = False
            TabOrder = 3
            object Label57: TLabel
              Left = 13
              Top = 50
              Width = 69
              Height = 16
              Caption = 'Filtrar Por:'
              Font.Charset = ANSI_CHARSET
              Font.Color = clWindowText
              Font.Height = -13
              Font.Name = 'Tahoma'
              Font.Style = [fsBold]
              ParentFont = False
            end
            object edt_consulta: TEdit
              Left = 13
              Top = 20
              Width = 254
              Height = 24
              CharCase = ecUpperCase
              TabOrder = 0
            end
            object cb_filtro: TcxComboBox
              Left = 87
              Top = 46
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
              Properties.Items.Strings = (
                'Cliente'
                'Caixa'
                'Operador'
                'Vendedor'
                'Comanda')
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
              Width = 180
            end
          end
          object DBGrid2: TDBGrid
            Left = 7
            Top = 93
            Width = 1037
            Height = 527
            Hint = 'Duplo clique para abrir a Venda'
            Color = 12827392
            DataSource = DS_C_VENDAS
            FixedColor = clCream
            GradientEndColor = clGray
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clBlack
            Font.Height = -11
            Font.Name = 'Tahoma'
            Font.Style = [fsBold]
            Options = [dgTitles, dgIndicator, dgColLines, dgRowLines, dgConfirmDelete, dgCancelOnExit, dgTitleClick, dgTitleHotTrack]
            ParentFont = False
            TabOrder = 4
            TitleFont.Charset = DEFAULT_CHARSET
            TitleFont.Color = clWindowText
            TitleFont.Height = -13
            TitleFont.Name = 'Tahoma'
            TitleFont.Style = [fsBold]
            Columns = <
              item
                Alignment = taCenter
                Expanded = False
                FieldName = 'CODIGO_VENDA'
                Title.Alignment = taCenter
                Title.Caption = 'Venda'
                Title.Font.Charset = DEFAULT_CHARSET
                Title.Font.Color = clWindowText
                Title.Font.Height = -12
                Title.Font.Name = 'Tahoma'
                Title.Font.Style = [fsBold]
                Width = 44
                Visible = True
              end
              item
                Alignment = taCenter
                Expanded = False
                FieldName = 'DATA'
                Title.Alignment = taCenter
                Title.Caption = 'Data'
                Width = 80
                Visible = True
              end
              item
                Alignment = taCenter
                Expanded = False
                FieldName = 'HORA'
                Title.Alignment = taCenter
                Title.Caption = 'Hora'
                Width = 62
                Visible = True
              end
              item
                Alignment = taCenter
                Expanded = False
                FieldName = 'CAIXA'
                Title.Alignment = taCenter
                Title.Caption = 'Caixa'
                Width = 49
                Visible = True
              end
              item
                Alignment = taCenter
                Expanded = False
                FieldName = 'OPERADOR'
                Title.Alignment = taCenter
                Title.Caption = 'Operador'
                Width = 98
                Visible = True
              end
              item
                Alignment = taCenter
                Expanded = False
                FieldName = 'VENDEDOR'
                Title.Alignment = taCenter
                Title.Caption = 'Vendedor'
                Width = 106
                Visible = True
              end
              item
                Expanded = False
                FieldName = 'NOME_CLIENTE'
                Title.Alignment = taCenter
                Title.Caption = 'Cliente'
                Width = 136
                Visible = True
              end
              item
                Alignment = taCenter
                Expanded = False
                FieldName = 'TOTAL_VENDA'
                Title.Alignment = taCenter
                Title.Caption = 'Total Venda'
                Width = 109
                Visible = True
              end
              item
                Alignment = taCenter
                Expanded = False
                FieldName = 'VALOR_PAGO'
                Title.Alignment = taCenter
                Title.Caption = 'Valor Pago'
                Width = 111
                Visible = True
              end
              item
                Alignment = taCenter
                Expanded = False
                FieldName = 'STATUS'
                Title.Alignment = taCenter
                Title.Caption = 'Status'
                Width = 73
                Visible = True
              end
              item
                Alignment = taCenter
                Expanded = False
                FieldName = 'COD_NFCE'
                Title.Alignment = taCenter
                Title.Caption = 'NFC-e'
                Width = 59
                Visible = True
              end
              item
                Alignment = taCenter
                Expanded = False
                FieldName = 'comanda'
                Title.Alignment = taCenter
                Title.Caption = 'Comanda'
                Visible = True
              end>
          end
          object GroupBox12: TGroupBox
            Left = 255
            Top = 16
            Width = 91
            Height = 74
            Caption = 'Nota Fiscal  '
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -13
            Font.Name = 'Tahoma'
            Font.Style = [fsBold]
            ParentFont = False
            TabOrder = 5
            object chk_nfce: TcxCheckBox
              Left = 12
              Top = 21
              Caption = 'NFC-e '
              ParentBackground = False
              ParentFont = False
              State = cbsChecked
              Style.BorderColor = clSkyBlue
              Style.Font.Charset = DEFAULT_CHARSET
              Style.Font.Color = clWindowText
              Style.Font.Height = -13
              Style.Font.Name = 'Tahoma'
              Style.Font.Style = [fsBold]
              Style.HotTrack = False
              Style.LookAndFeel.NativeStyle = False
              Style.LookAndFeel.SkinName = 'Office2013White'
              Style.TextColor = clBlack
              Style.IsFontAssigned = True
              StyleDisabled.LookAndFeel.NativeStyle = False
              StyleDisabled.LookAndFeel.SkinName = 'Office2013White'
              StyleFocused.LookAndFeel.NativeStyle = False
              StyleFocused.LookAndFeel.SkinName = 'Office2013White'
              StyleHot.LookAndFeel.NativeStyle = False
              StyleHot.LookAndFeel.SkinName = 'Office2013White'
              TabOrder = 0
            end
            object cxCheckBox6: TcxCheckBox
              Left = 12
              Top = 46
              Caption = 'NF-e  '
              Enabled = False
              ParentBackground = False
              ParentFont = False
              State = cbsChecked
              Style.BorderColor = clSkyBlue
              Style.Font.Charset = DEFAULT_CHARSET
              Style.Font.Color = clWindowText
              Style.Font.Height = -13
              Style.Font.Name = 'Tahoma'
              Style.Font.Style = [fsBold]
              Style.HotTrack = False
              Style.LookAndFeel.NativeStyle = False
              Style.LookAndFeel.SkinName = 'Office2013White'
              Style.TextColor = clBackground
              Style.IsFontAssigned = True
              StyleDisabled.LookAndFeel.NativeStyle = False
              StyleDisabled.LookAndFeel.SkinName = 'Office2013White'
              StyleFocused.LookAndFeel.NativeStyle = False
              StyleFocused.LookAndFeel.SkinName = 'Office2013White'
              StyleHot.LookAndFeel.NativeStyle = False
              StyleHot.LookAndFeel.SkinName = 'Office2013White'
              TabOrder = 1
            end
          end
          object GroupBox13: TGroupBox
            Left = 10
            Top = 621
            Width = 248
            Height = 39
            Caption = ' Ordenar Vendas '
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -12
            Font.Name = 'Tahoma'
            Font.Style = [fsBold]
            ParentFont = False
            TabOrder = 6
            object chk_venda: TcxCheckBox
              Left = 8
              Top = 16
              Caption = 'N '#186' Venda'
              ParentFont = False
              State = cbsChecked
              Style.Font.Charset = DEFAULT_CHARSET
              Style.Font.Color = clWindowText
              Style.Font.Height = -12
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
              TabOrder = 0
            end
            object chk_data: TcxCheckBox
              Left = 102
              Top = 16
              Caption = 'Data'
              ParentFont = False
              Style.Font.Charset = DEFAULT_CHARSET
              Style.Font.Color = clWindowText
              Style.Font.Height = -12
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
              TabOrder = 1
            end
            object chk_status: TcxCheckBox
              Left = 169
              Top = 16
              Caption = 'Status'
              ParentFont = False
              Style.Font.Charset = DEFAULT_CHARSET
              Style.Font.Color = clWindowText
              Style.Font.Height = -12
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
              TabOrder = 2
            end
          end
        end
      end
      object GroupBox4: TGroupBox
        Left = 238
        Top = 5
        Width = 210
        Height = 52
        Caption = '   Emiss'#227'o  '
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -15
        Font.Name = 'Tahoma'
        Font.Style = [fsBold]
        ParentFont = False
        TabOrder = 4
        object chk_normal: TcxCheckBox
          Left = 7
          Top = 20
          Caption = 'Normal '
          ParentBackground = False
          ParentColor = False
          ParentFont = False
          State = cbsChecked
          Style.Color = clWhite
          Style.Font.Charset = DEFAULT_CHARSET
          Style.Font.Color = clWindowText
          Style.Font.Height = -15
          Style.Font.Name = 'Tahoma'
          Style.Font.Style = [fsBold]
          Style.LookAndFeel.NativeStyle = False
          Style.LookAndFeel.SkinName = 'Office2013White'
          Style.TextColor = clNone
          Style.IsFontAssigned = True
          StyleDisabled.LookAndFeel.NativeStyle = False
          StyleDisabled.LookAndFeel.SkinName = 'Office2013White'
          StyleFocused.LookAndFeel.NativeStyle = False
          StyleFocused.LookAndFeel.SkinName = 'Office2013White'
          StyleHot.LookAndFeel.NativeStyle = False
          StyleHot.LookAndFeel.SkinName = 'Office2013White'
          TabOrder = 0
        end
        object chk_contingencia: TcxCheckBox
          Left = 88
          Top = 20
          Caption = 'Conting'#234'ncia'
          ParentBackground = False
          ParentColor = False
          ParentFont = False
          State = cbsChecked
          Style.BorderColor = clNavy
          Style.Color = clWhite
          Style.Font.Charset = DEFAULT_CHARSET
          Style.Font.Color = clWindowText
          Style.Font.Height = -15
          Style.Font.Name = 'Tahoma'
          Style.Font.Style = [fsBold]
          Style.LookAndFeel.NativeStyle = False
          Style.LookAndFeel.SkinName = 'Office2013White'
          Style.TextColor = clNavy
          Style.IsFontAssigned = True
          StyleDisabled.LookAndFeel.NativeStyle = False
          StyleDisabled.LookAndFeel.SkinName = 'Office2013White'
          StyleFocused.LookAndFeel.NativeStyle = False
          StyleFocused.LookAndFeel.SkinName = 'Office2013White'
          StyleHot.LookAndFeel.NativeStyle = False
          StyleHot.LookAndFeel.SkinName = 'Office2013White'
          TabOrder = 1
        end
      end
      object GroupBox7: TGroupBox
        Left = 474
        Top = 5
        Width = 775
        Height = 52
        Caption = '  Pesquisar  '
        Color = clWhite
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -15
        Font.Name = 'Tahoma'
        Font.Style = [fsBold]
        ParentBackground = False
        ParentColor = False
        ParentFont = False
        TabOrder = 5
        object Label46: TLabel
          Left = 9
          Top = 19
          Width = 102
          Height = 18
          Caption = 'Consultar Por'
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Height = -15
          Font.Name = 'Tahoma'
          Font.Style = [fsBold]
          ParentFont = False
        end
        object Edit2: TEdit
          Left = 117
          Top = 15
          Width = 256
          Height = 26
          TabOrder = 0
        end
        object RadioButton3: TRadioButton
          Left = 404
          Top = 20
          Width = 85
          Height = 17
          Caption = 'Cliente'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -15
          Font.Name = 'Tahoma'
          Font.Style = [fsBold]
          ParentFont = False
          TabOrder = 1
        end
        object RadioButton4: TRadioButton
          Left = 495
          Top = 20
          Width = 85
          Height = 17
          Caption = 'N'#186' NFe'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -15
          Font.Name = 'Tahoma'
          Font.Style = [fsBold]
          ParentFont = False
          TabOrder = 2
        end
        object RadioButton5: TRadioButton
          Left = 586
          Top = 20
          Width = 74
          Height = 17
          Caption = 'Valor'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -15
          Font.Name = 'Tahoma'
          Font.Style = [fsBold]
          ParentFont = False
          TabOrder = 3
        end
        object RadioButton6: TRadioButton
          Left = 650
          Top = 19
          Width = 111
          Height = 17
          Caption = 'CNPJ | CPF'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -15
          Font.Name = 'Tahoma'
          Font.Style = [fsBold]
          ParentFont = False
          TabOrder = 4
        end
      end
      object GroupBox3: TGroupBox
        Left = 738
        Top = 61
        Width = 511
        Height = 68
        Caption = '  Legenda  '
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'Tahoma'
        Font.Style = [fsBold]
        ParentFont = False
        TabOrder = 6
        object chk_autorizadas: TcxCheckBox
          Left = 11
          Top = 19
          Caption = ' Autorizadas (99999)'
          ParentBackground = False
          ParentColor = False
          ParentFont = False
          State = cbsChecked
          Style.Color = 54528
          Style.Font.Charset = DEFAULT_CHARSET
          Style.Font.Color = clWindowText
          Style.Font.Height = -12
          Style.Font.Name = 'Tahoma'
          Style.Font.Style = [fsBold]
          Style.LookAndFeel.NativeStyle = False
          Style.LookAndFeel.SkinName = 'Office2013White'
          Style.TextColor = clNone
          Style.IsFontAssigned = True
          StyleDisabled.LookAndFeel.NativeStyle = False
          StyleDisabled.LookAndFeel.SkinName = 'Office2013White'
          StyleFocused.LookAndFeel.NativeStyle = False
          StyleFocused.LookAndFeel.SkinName = 'Office2013White'
          StyleHot.LookAndFeel.NativeStyle = False
          StyleHot.LookAndFeel.SkinName = 'Office2013White'
          TabOrder = 0
        end
        object chk_inutilizadas: TcxCheckBox
          Left = 178
          Top = 43
          Caption = ' Inultilizadas (99999)'
          ParentBackground = False
          ParentColor = False
          ParentFont = False
          State = cbsChecked
          Style.Color = clSilver
          Style.Font.Charset = DEFAULT_CHARSET
          Style.Font.Color = clWindowText
          Style.Font.Height = -12
          Style.Font.Name = 'Tahoma'
          Style.Font.Style = [fsBold]
          Style.LookAndFeel.NativeStyle = False
          Style.LookAndFeel.SkinName = 'Office2013White'
          Style.IsFontAssigned = True
          StyleDisabled.LookAndFeel.NativeStyle = False
          StyleDisabled.LookAndFeel.SkinName = 'Office2013White'
          StyleFocused.LookAndFeel.NativeStyle = False
          StyleFocused.LookAndFeel.SkinName = 'Office2013White'
          StyleHot.LookAndFeel.NativeStyle = False
          StyleHot.LookAndFeel.SkinName = 'Office2013White'
          TabOrder = 3
        end
        object chk_canceladas: TcxCheckBox
          Left = 178
          Top = 19
          Caption = ' Canceladas  (99999) '
          ParentBackground = False
          ParentColor = False
          ParentFont = False
          State = cbsChecked
          Style.Color = clRed
          Style.Font.Charset = DEFAULT_CHARSET
          Style.Font.Color = clWindowText
          Style.Font.Height = -12
          Style.Font.Name = 'Tahoma'
          Style.Font.Style = [fsBold]
          Style.LookAndFeel.NativeStyle = False
          Style.LookAndFeel.SkinName = 'Office2013White'
          Style.IsFontAssigned = True
          StyleDisabled.LookAndFeel.NativeStyle = False
          StyleDisabled.LookAndFeel.SkinName = 'Office2013White'
          StyleFocused.LookAndFeel.NativeStyle = False
          StyleFocused.LookAndFeel.SkinName = 'Office2013White'
          StyleHot.LookAndFeel.NativeStyle = False
          StyleHot.LookAndFeel.SkinName = 'Office2013White'
          TabOrder = 2
        end
        object chk_pendentes: TcxCheckBox
          Left = 11
          Top = 43
          Caption = ' Pendentes  (99999) '
          ParentBackground = False
          ParentColor = False
          ParentFont = False
          State = cbsChecked
          Style.Color = clYellow
          Style.Font.Charset = DEFAULT_CHARSET
          Style.Font.Color = clWindowText
          Style.Font.Height = -12
          Style.Font.Name = 'Tahoma'
          Style.Font.Style = [fsBold]
          Style.LookAndFeel.NativeStyle = False
          Style.LookAndFeel.SkinName = 'Office2013White'
          Style.IsFontAssigned = True
          StyleDisabled.LookAndFeel.NativeStyle = False
          StyleDisabled.LookAndFeel.SkinName = 'Office2013White'
          StyleFocused.LookAndFeel.NativeStyle = False
          StyleFocused.LookAndFeel.SkinName = 'Office2013White'
          StyleHot.LookAndFeel.NativeStyle = False
          StyleHot.LookAndFeel.SkinName = 'Office2013White'
          TabOrder = 1
        end
        object cxCheckBox1: TcxCheckBox
          Left = 346
          Top = 19
          Caption = '  Denegadas  (99999)'
          ParentBackground = False
          ParentColor = False
          ParentFont = False
          State = cbsChecked
          Style.Color = 16751515
          Style.Font.Charset = DEFAULT_CHARSET
          Style.Font.Color = clWindowText
          Style.Font.Height = -12
          Style.Font.Name = 'Tahoma'
          Style.Font.Style = [fsBold]
          Style.LookAndFeel.NativeStyle = False
          Style.LookAndFeel.SkinName = 'Office2013White'
          Style.IsFontAssigned = True
          StyleDisabled.LookAndFeel.NativeStyle = False
          StyleDisabled.LookAndFeel.SkinName = 'Office2013White'
          StyleFocused.LookAndFeel.NativeStyle = False
          StyleFocused.LookAndFeel.SkinName = 'Office2013White'
          StyleHot.LookAndFeel.NativeStyle = False
          StyleHot.LookAndFeel.SkinName = 'Office2013White'
          TabOrder = 4
        end
        object cxCheckBox2: TcxCheckBox
          Left = 346
          Top = 43
          Caption = '  Marcar Todos  '
          ParentBackground = False
          ParentColor = False
          ParentFont = False
          State = cbsChecked
          Style.Color = clWindow
          Style.Font.Charset = DEFAULT_CHARSET
          Style.Font.Color = clWindowText
          Style.Font.Height = -12
          Style.Font.Name = 'Tahoma'
          Style.Font.Style = [fsBold]
          Style.LookAndFeel.NativeStyle = False
          Style.LookAndFeel.SkinName = 'Office2013White'
          Style.IsFontAssigned = True
          StyleDisabled.LookAndFeel.NativeStyle = False
          StyleDisabled.LookAndFeel.SkinName = 'Office2013White'
          StyleFocused.LookAndFeel.NativeStyle = False
          StyleFocused.LookAndFeel.SkinName = 'Office2013White'
          StyleHot.LookAndFeel.NativeStyle = False
          StyleHot.LookAndFeel.SkinName = 'Office2013White'
          TabOrder = 5
        end
      end
    end
    object cxTabSheet2: TcxTabSheet
      Caption = 'Venda'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      ImageIndex = 1
      ParentFont = False
      ExplicitLeft = 0
      ExplicitTop = 0
      ExplicitWidth = 0
      ExplicitHeight = 0
      object Label23: TLabel
        Left = 18
        Top = 7
        Width = 62
        Height = 19
        Caption = 'Pedido:'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -16
        Font.Name = 'Tahoma'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object Label1: TLabel
        Left = 88
        Top = 7
        Width = 27
        Height = 19
        Caption = 'N'#186':'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -16
        Font.Name = 'Tahoma'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object Label2: TLabel
        Left = 21
        Top = 104
        Width = 94
        Height = 19
        Caption = 'Raz'#227'o Social:'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -16
        Font.Name = 'Tahoma'
        Font.Style = []
        ParentFont = False
      end
      object Label3: TLabel
        Left = 317
        Top = 136
        Width = 61
        Height = 19
        Caption = 'Contato:'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -16
        Font.Name = 'Tahoma'
        Font.Style = []
        ParentFont = False
      end
      object Label8: TLabel
        Left = 5
        Top = 177
        Width = 78
        Height = 19
        Caption = 'Telefone:'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -16
        Font.Name = 'Tahoma'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object Label9: TLabel
        Left = 2
        Top = 205
        Width = 81
        Height = 19
        Caption = 'Endere'#231'o:'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -16
        Font.Name = 'Tahoma'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object Label10: TLabel
        Left = 542
        Top = 205
        Width = 27
        Height = 19
        Caption = 'N'#186':'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -16
        Font.Name = 'Tahoma'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object Label11: TLabel
        Left = 27
        Top = 236
        Width = 56
        Height = 19
        Caption = 'Bairro:'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -16
        Font.Name = 'Tahoma'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object Label12: TLabel
        Left = 268
        Top = 236
        Width = 46
        Height = 19
        Caption = 'Zona:'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -16
        Font.Name = 'Tahoma'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object Label13: TLabel
        Left = 558
        Top = 236
        Width = 62
        Height = 19
        Caption = 'Cidade:'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -16
        Font.Name = 'Tahoma'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object Label14: TLabel
        Left = 782
        Top = 236
        Width = 27
        Height = 19
        Caption = 'UF:'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -16
        Font.Name = 'Tahoma'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object Label15: TLabel
        Left = 41
        Top = 71
        Width = 74
        Height = 19
        Caption = 'Vendedor:'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -16
        Font.Name = 'Tahoma'
        Font.Style = []
        ParentFont = False
      end
      object Label18: TLabel
        Left = 717
        Top = 205
        Width = 38
        Height = 19
        Caption = 'CEP:'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -16
        Font.Name = 'Tahoma'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object Shape1: TShape
        Left = 146
        Top = 278
        Width = 696
        Height = 1
        Pen.Color = clRed
      end
      object Label24: TLabel
        Left = 24
        Top = 261
        Width = 116
        Height = 18
        Caption = 'Itens do Pedido'
        Color = clRed
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clRed
        Font.Height = -15
        Font.Name = 'Tahoma'
        Font.Style = [fsBold]
        ParentColor = False
        ParentFont = False
      end
      object Shape2: TShape
        Left = 76
        Top = 609
        Width = 1173
        Height = 1
        Pen.Color = clRed
      end
      object Label25: TLabel
        Left = 24
        Top = 595
        Width = 46
        Height = 18
        Caption = 'Totais'
        Color = clRed
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clRed
        Font.Height = -15
        Font.Name = 'Tahoma'
        Font.Style = [fsBold]
        ParentColor = False
        ParentFont = False
      end
      object Label26: TLabel
        Left = 21
        Top = 619
        Width = 48
        Height = 19
        Caption = 'Itens:'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -16
        Font.Name = 'Tahoma'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object Label28: TLabel
        Left = 613
        Top = 619
        Width = 130
        Height = 19
        Caption = 'Desconto Geral:'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -16
        Font.Name = 'Tahoma'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object Label29: TLabel
        Left = 958
        Top = 617
        Width = 117
        Height = 23
        Caption = 'Valor Pagar:'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clRed
        Font.Height = -19
        Font.Name = 'Tahoma'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object Label6: TLabel
        Left = 214
        Top = 7
        Width = 38
        Height = 19
        Caption = 'Data:'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -16
        Font.Name = 'Tahoma'
        Font.Style = []
        ParentFont = False
      end
      object Label7: TLabel
        Left = 407
        Top = 236
        Width = 63
        Height = 19
        Caption = 'Regi'#227'o:'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -16
        Font.Name = 'Tahoma'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object Label16: TLabel
        Left = 601
        Top = 136
        Width = 55
        Height = 19
        Caption = 'Celular:'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -16
        Font.Name = 'Tahoma'
        Font.Style = []
        ParentFont = False
      end
      object Label17: TLabel
        Left = 346
        Top = 8
        Width = 137
        Height = 19
        Caption = 'Tipo Movimento:'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -16
        Font.Name = 'Tahoma'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object Label19: TLabel
        Left = 540
        Top = 72
        Width = 119
        Height = 19
        Caption = 'Tabela de Pre'#231'o:'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -16
        Font.Name = 'Tahoma'
        Font.Style = []
        ParentFont = False
      end
      object Label21: TLabel
        Left = 16
        Top = 40
        Width = 99
        Height = 19
        Caption = 'Natureza Op.:'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -16
        Font.Name = 'Tahoma'
        Font.Style = []
        ParentFont = False
      end
      object Label22: TLabel
        Left = 696
        Top = 40
        Width = 45
        Height = 19
        Caption = 'CFOP:'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -16
        Font.Name = 'Tahoma'
        Font.Style = []
        ParentFont = False
      end
      object Label20: TLabel
        Left = 295
        Top = 177
        Width = 58
        Height = 19
        Caption = 'E-mail:'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -16
        Font.Name = 'Tahoma'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object Label4: TLabel
        Left = 29
        Top = 136
        Width = 86
        Height = 19
        Caption = 'CNPJ | CPF:'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -16
        Font.Name = 'Tahoma'
        Font.Style = []
        ParentFont = False
      end
      object Label5: TLabel
        Left = 304
        Top = 619
        Width = 127
        Height = 19
        Caption = 'Valor Produtos:'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -16
        Font.Name = 'Tahoma'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object lbTelefone: TLabel
        Left = 82
        Top = 179
        Width = 211
        Height = 16
        AutoSize = False
        Caption = '69 3225-1158'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'Tahoma'
        Font.Style = []
        ParentFont = False
      end
      object lbEndereco: TLabel
        Left = 82
        Top = 207
        Width = 197
        Height = 16
        AutoSize = False
        Caption = 'Av. Calama'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'Tahoma'
        Font.Style = []
        ParentFont = False
      end
      object lbBairro: TLabel
        Left = 82
        Top = 238
        Width = 170
        Height = 16
        AutoSize = False
        Caption = 'Centro'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'Tahoma'
        Font.Style = []
        ParentFont = False
      end
      object lbMunicipio: TLabel
        Left = 618
        Top = 238
        Width = 154
        Height = 16
        AutoSize = False
        Caption = 'Porto Velho'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'Tahoma'
        Font.Style = []
        ParentFont = False
      end
      object lbRegiao: TLabel
        Left = 468
        Top = 238
        Width = 90
        Height = 16
        AutoSize = False
        Caption = 'Sul'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'Tahoma'
        Font.Style = []
        ParentFont = False
      end
      object lbZona: TLabel
        Left = 316
        Top = 238
        Width = 91
        Height = 16
        AutoSize = False
        Caption = 'Norte'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'Tahoma'
        Font.Style = []
        ParentFont = False
      end
      object lbEstado: TLabel
        Left = 813
        Top = 238
        Width = 44
        Height = 16
        AutoSize = False
        Caption = 'RO'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'Tahoma'
        Font.Style = []
        ParentFont = False
      end
      object lbCEP: TLabel
        Left = 757
        Top = 205
        Width = 100
        Height = 16
        AutoSize = False
        Caption = '78900-000'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'Tahoma'
        Font.Style = []
        ParentFont = False
      end
      object lbNumero: TLabel
        Left = 566
        Top = 205
        Width = 138
        Height = 16
        AutoSize = False
        Caption = '999778'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'Tahoma'
        Font.Style = []
        ParentFont = False
      end
      object lbEmail: TLabel
        Left = 353
        Top = 177
        Width = 287
        Height = 16
        AutoSize = False
        Caption = 'email@gmail.com'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'Tahoma'
        Font.Style = []
        ParentFont = False
      end
      object Shape3: TShape
        Left = 25
        Top = 167
        Width = 817
        Height = 1
        Pen.Color = clRed
      end
      object lbEmail_1: TLabel
        Left = 708
        Top = 177
        Width = 157
        Height = 16
        AutoSize = False
        Caption = 'email@gmail.com'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'Tahoma'
        Font.Style = []
        ParentFont = False
      end
      object Label40: TLabel
        Left = 646
        Top = 177
        Width = 58
        Height = 19
        Caption = 'E-mail:'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -16
        Font.Name = 'Tahoma'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object Label27: TLabel
        Left = 5
        Top = 280
        Width = 62
        Height = 19
        Caption = 'Produto:'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -16
        Font.Name = 'Tahoma'
        Font.Style = []
        ParentFont = False
      end
      object Label30: TLabel
        Left = 117
        Top = 280
        Width = 67
        Height = 19
        Caption = 'Descri'#231#227'o'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -16
        Font.Name = 'Tahoma'
        Font.Style = []
        ParentFont = False
      end
      object Label31: TLabel
        Left = 472
        Top = 280
        Width = 37
        Height = 19
        Caption = 'Valor'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -16
        Font.Name = 'Tahoma'
        Font.Style = []
        ParentFont = False
      end
      object Label32: TLabel
        Left = 568
        Top = 280
        Width = 81
        Height = 19
        Caption = 'Quantidade'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -16
        Font.Name = 'Tahoma'
        Font.Style = []
        ParentFont = False
      end
      object Label33: TLabel
        Left = 664
        Top = 280
        Width = 58
        Height = 19
        Caption = 'Unidade'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -16
        Font.Name = 'Tahoma'
        Font.Style = []
        ParentFont = False
      end
      object Label34: TLabel
        Left = 729
        Top = 280
        Width = 39
        Height = 19
        Caption = 'CFOP'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -16
        Font.Name = 'Tahoma'
        Font.Style = []
        ParentFont = False
      end
      object Label35: TLabel
        Left = 21
        Top = 571
        Width = 50
        Height = 19
        Caption = 'Placa:'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -16
        Font.Name = 'Tahoma'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object Shape7: TShape
        Left = 85
        Top = 560
        Width = 1164
        Height = 1
        Pen.Color = clRed
      end
      object Label36: TLabel
        Left = 0
        Top = 547
        Width = 82
        Height = 18
        Caption = 'Transporte'
        Color = clRed
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clRed
        Font.Height = -15
        Font.Name = 'Tahoma'
        Font.Style = [fsBold]
        ParentColor = False
        ParentFont = False
      end
      object Label37: TLabel
        Left = 520
        Top = 571
        Width = 133
        Height = 19
        Caption = 'Transportadora:'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -16
        Font.Name = 'Tahoma'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object BtnGravar: TcxButton
        Left = 871
        Top = 8
        Width = 105
        Height = 43
        Caption = 'Gravar'
        Enabled = False
        LookAndFeel.NativeStyle = False
        LookAndFeel.SkinName = 'Office2013White'
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
        TabOrder = 17
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'HelveticaNeue'
        Font.Style = [fsBold]
        ParentFont = False
        OnClick = BtnGravarClick
      end
      object BtnCancelar: TcxButton
        Left = 1144
        Top = 7
        Width = 105
        Height = 43
        Caption = 'Cancelar'
        Enabled = False
        LookAndFeel.NativeStyle = False
        LookAndFeel.SkinName = 'Office2013White'
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
        TabOrder = 18
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'HelveticaNeue'
        Font.Style = [fsBold]
        ParentFont = False
        OnClick = BtnCancelarClick
      end
      object BtnAlterar: TcxButton
        Left = 999
        Top = 8
        Width = 105
        Height = 43
        Caption = 'Alterar'
        LookAndFeel.NativeStyle = False
        LookAndFeel.SkinName = 'Office2013White'
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
        TabOrder = 19
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'HelveticaNeue'
        Font.Style = [fsBold]
        Font.Quality = fqDraft
        ParentFont = False
        OnClick = BtnAlterarClick
      end
      object cxButton2: TcxButton
        Left = 1094
        Top = 225
        Width = 155
        Height = 50
        Caption = 'Cadastro Site'
        LookAndFeel.NativeStyle = False
        LookAndFeel.SkinName = 'Office2013White'
        OptionsImage.Glyph.Data = {
          36100000424D3610000000000000360000002800000020000000200000000100
          2000000000000010000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000010000000200000005000000070000000800000008000000070000
          0005000000020000000100000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          00000000000200000008000000120000001A0000001D0000001E0000001B0000
          0013000000090000000200000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000010000000100000001000000010000000100000001000000010000
          0002000000050000001110482DC716603CFF15603BFF155F3BFF15603BFF1045
          2BC3000000130000000500000001000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000010000
          0001000000030000000400000005000000060000000700000006000000060000
          00050000000900000018216B4BFF40C293FF29B57FFF2AB57FFF2AB67FFF226B
          4BFF000000190000000700000001000000000000000000000000000000000000
          0000000000000000000000000000000000000000000100000002000000040000
          00080000000C0000001200000016000000180000001A00000019000000170000
          00130000001400000020226F4FFF4BC79CFF26B37EFF25B47EFF30B986FF2270
          50FF0000001C0000000800000001000000010000000100000001000000000000
          00000000000000000000000000010000000100000003000000070000000F0102
          011D03150C62092B19AA173822D62C4129EC90542FFF874D2AEC784325D75833
          1BAC2A180D6B06040439237452FF55CDA4FF2BB884FF2BB984FF37BE8EFF2475
          53FF0000001F0000000D00000007000000060000000400000002000000000000
          0000000000000000000100000001000000040000000B020101193222137E2343
          2AEC0F5E3DFF177553FF1D8561FF398B69FFAFB8A5FFB7BCACFFC4B5A3FFC5AD
          9AFFBCA28FFFA38877F7247956FF5ED3ACFF30BE8CFF31BE8BFF3EC496FF247A
          58FF0000002B0000001E00000019000000160000000F00000006000000000000
          00000000000000000001000000040000000D120A0636774728D75A5F41FF3A86
          64FF228E68FF1B835BFF167B53FF12754DFF73A48BFF347B5DFF1F704EFF1F6F
          4DFF1E704DFF1E6F4CFF247E5BFF49CA9EFF3AC493FF3AC493FF48CA9EFF257F
          5CFF1C6F4BFF1E6F4CFF1F704CFF1E704DFF19593ED10000000B000000000000
          000000000001000000040000000C20130B4B8A532FEB667353FF3C8E6BFF1B83
          5AFF167D53FF177D53FF167C52FF167C52FF6FAB91FF73A691FF378464FF95E2
          CBFF69D6B4FF4ECEA5FF4FCFA6FF50D0A7FF41CA9CFF40C99CFF50D0A7FF50CF
          A6FF4DCEA5FF4CCDA4FF6ED5B5FF297452F7030F093C00000009000000000000
          0001000000030000000A120B06338E5530ED827956FF3E8761FF1C875CFF1C87
          5CFF1D875DFF1D875CFF1D875DFF1D865CFF33946FFF8EBAA7FF68967EFF55A1
          85FF8EE5CCFF54D2AAFF47CEA2FF48CEA3FF48CFA4FF48CFA4FF48CFA4FF48CE
          A3FF46CEA2FF64D7B4FF479979FF092718750000000F00000005000000000000
          00010000000604020119804D2CD99C764EFF4C805EFF239166FF249267FF2493
          68FF249469FF259469FF2A986EFF36A17AFF428B68FF808E6FFFC2B39CFF5789
          69FF85C8B3FF89E5CBFF61DAB5FF60DBB7FF64DEBBFF65DEBBFF60DCB8FF5BD8
          B3FF5FD7B2FF6FC1A6FF11472EB7000000130000000600000002000000000000
          00030000000C472B1984A56A42FF967B50FF478360FF2EA076FF2C9F74FF2DA1
          76FF2EA277FF3BAB83FF4AA580FF4E8663FF857F54FFB88651FFCAA987FFC5B2
          9AFF3D8966FFAFE6D7FF92EBD5FF70E3C4FF70E3C4FF70E3C5FF6FE2C4FF71E3
          C4FF93E0CCFF216B4BE702060425000000080000000200000001000000010000
          00050603021A925935EDB17B4DFFAD7644FF5B7651FF49AE89FF3CB087FF3EB3
          8BFF4FBD97FF539E7BFF6C815AFFA48B5AFFBF905AFFBE8F5AFFBD8F5CFFD2B8
          9CFFA6AA8FFF4C9E7FFFBFF4E7FF8FEBD5FF7BE7CDFF7BE7CCFF7AE7CCFF9DEE
          D9FF439474FD071B13520000000C000000030000000000000000000000020000
          000834201363A56B43FF98784BFF79784FFF557955FF528B68FF57B28FFF5AB5
          92FF56926FFF8D8D61FFC79C66FFC89D68FFC89E69FFC89D68FFC59B66FFC9A2
          74FFD7C1A8FF789F80FF7DC0A9FFBCF5E9FF8EEDD7FF85ECD3FF98EFDAFF73BC
          A4FF375F47C80000001600000006000000020000000000000000000000020000
          000B674026AC87714AFF4C8764FF797D53FFB98754FFA58B5BFF6F865FFF7189
          62FFAF9A6AFFCDA671FFCEA873FFD0AB75FFD0AA75FFD0AA74FFCFA873FFCCA5
          70FFD4B68EFFD6C3AAFF509875FFADDFD1FFB5F5E8FF96F1DCFF9CDDCCFF468D
          6BFF636E62CC0000001300000004000000000000000000000000000000030000
          000D885736DA607653FF51906EFF988456FFBF905CFFC59966FFCAA16DFFCFA8
          74FFD1AD78FFD3B07CFFD3B17DFFD5B37FFFD4B280FFD4B37FFFD4B17DFFD3B1
          7CFFD0AC79FFDDC5A5FFC3BFA4FF42A07DFFCDF4EBFFC6F3E9FF409D7AFF89AA
          97FF567D6AE80000001200000004000000000000000000000000000000030000
          000D755E3CF24D916FFF548764FFB28D5CFFC59A67FFCDA570FFD0AC78FFD4B1
          7EFFD6B482FFD7B783FFD6B684FFD8B986FFD8B886FFD8B886FFD7B785FFD7B6
          83FFD6B482FFD5B585FFE1CEB3FF82B096FF62B79AFF64B79AFF69AF94FF85B8
          A5FF1B5B3EF30000001200000004000000000000000000000000000000030000
          000C386E4FFF60A17FFF7F855CFFC49865FFCCA471FFD2AF7CFFD6B582FFD8B8
          85FFD9BA89FFDFC59AFFE4CEAAFFE7D4B5FFE8D6B7FFE7D4B4FFE3CEA9FFDFC5
          9AFFD9BA88FFD7B783FFD9BF93FFACC3B1FF56B190FF52AD8CFF95CAB7FF4BA4
          82FF115E3DFF0000001000000004000000000000000000000000000000030000
          000B2E694CF1858156FFC0915FFFCAA16EFFD1AE7BFFD6B583FFD9BA88FFDCC0
          92FFE7D5B6FFECDCC1FFECDDC2FFECDDC3FFECDDC3FFECDDC2FFECDDC2FFECDC
          C1FFE8D5B6FFDCC092FFD8BA87FF92B49BFF90D6BEFF81CEB5FF7AC5ADFF329C
          77FF156141F20000000F00000004000000000000000000000000000000020000
          00091F7154D6489875FF578A66FF5B8F6CFF5D9370FFD9BB8AFFDCC192FFECDC
          C1FFEFE2CAFFEFE2CCFFEFE3CCFFF0E4CDFFF0E4CDFFF0E4CDFFF0E3CCFFEFE3
          CBFFEEE1CAFFECDCC1FFDCC192FF7B9F78FF73C9ABFF54C4A2FF4AB995FF39A3
          7EFF185E43DA0000000D00000003000000000000000000000000000000020000
          00071A5A42A63EAF8AFF53CBA6FF59D0ADFF5F9874FFDCBF8FFFE8D6B5FFF2E6
          D3FFF2E8D5FFF2E9D6FFF3E9D6FFF3EAD7FFF4EAD7FFF3EAD7FFF3EAD7FFF3E9
          D6FFF2E8D5FFF1E7D3FFE8D6B5FFB5B488FF6EB091FF68D2B3FF69CDB0FF64B8
          9EFF2B5C4CA80000000A00000002000000000000000000000000000000010000
          00050F31255D39A582FF57CFABFF5DD3B1FF62C4A2FF8AA983FFECE5D1FFF5EC
          DCFFF5EDDDFFF6EEDFFFF6EFE0FFF6EFE0FFF6EFE0FFF6EFE0FFF6EFE0FFF6EE
          DFFFF5EEDEFFF5ECDCFFE4E2CFFFBDB98EFF80A47EFF84CFB6FF72B699FF476E
          50FF162117600000000700000001000000000000000000000000000000000000
          000302050412308E6FE954C9A5FF61D7B5FF66DABAFF69CBABFFD3E6DCFFE9EC
          E0FFF8F2E5FFF8F2E6FFF8F3E7FFF8F4E7FFF9F3E8FFF9F3E7FFF8F3E7FFF8F2
          E6FFF8F2E5FFF0EEE2FFD2E7DDFF6BB392FFA7B389FF609A77FF91966DFFA475
          51EC060403150000000400000001000000000000000000000000000000000000
          0001000000051949397B45B08EFF64D9B8FF6ADDBDFF70E1C3FFD1F5ECFFDDF1
          E9FFDCEBE3FFDCECE4FFEBF1E9FFFBF7EEFFFBF7EEFFFBF7EEFFFBF7EEFFFAF6
          EDFFFAF6ECFFF9F5EBFFD2E3D7FF8FDDC5FF83A984FFD8BB8DFFBC8E64FF523B
          2A7E000000070000000200000000000000000000000000000000000000000000
          0001000000020104030D32856CD256C5A6FF6DDFC0FF73E3C6FFB1F1E1FFE8FB
          F7FFE9FCF7FFECFBF7FFEBF3EDFFFCFAF3FFFCFAF3FFFCFAF3FFFCF9F3FFFCF9
          F2FFFBF9F2FFFBF8F1FFE2E1C9FF73B798FF70CDAFFF839570FF916C4ED30403
          0210000000030000000100000000000000000000000000000000000000000000
          0000000000010000000307120E223F9D83EB63D1B4FF75E5C8FF7FEACFFFDFFA
          F4FFF0FDFAFFEFF8F5FFF8FAF5FFFDFCF7FFFDFCF7FFFDFCF7FFFDFCF7FFFDFB
          F7FFFDFBF6FFFAF6ECFFD1CFA9FF6DB695FF6DDABEFF448F75EC090D09250000
          0005000000010000000000000000000000000000000000000000000000000000
          00000000000000000001000000040E221D3943A088E865D0B4FF7BEACEFF8BEF
          D6FFDDFBF4FFF5FCFAFFF8FCF9FFFCFDFAFFFEFDFBFFFEFDFBFFFEFDFAFFFEFD
          FAFFFAF7ECFFEEDFBBFF7CB491FF6ACEB3FF4BA890E910241F3C000000050000
          0002000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000001000000030915122341947DD15DC6ABFF77E5
          CAFF83F1D6FFAEF7E6FFD5F4EBFFF0F9F5FFFDFEFDFFFEFDF9FFFBF8ECFFF5EE
          D5FFE8E0BAFFB6C19EFF5AA486FF469883D20A16132600000005000000020000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000010000000201020208224A3F6B4EAA
          92E864CCB3FF7EDFC8FFA3EEDEFFA2E5D2FF72BE9DFFF1E4C2FFEBDCB8FFBCBF
          9BFF5C9777FF528C74E8244C426C010202090000000300000001000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000100000001000000030204
          040A2439354F496E649C4A7B64CE678567E5B5A782FFBB9A77E5A6896ACE7B65
          4E9D262B21500304030C00000004000000020000000100000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000010000
          0001000000020000000300000004000000040000000400000004000000040000
          0003000000020000000200000001000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000100000001000000010000000100000001000000010000
          0001000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000}
        TabOrder = 20
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'HelveticaNeue'
        Font.Style = [fsBold]
        Font.Quality = fqDraft
        ParentFont = False
      end
      object cxVendedor: TcxComboBox
        Left = 123
        Top = 67
        ParentFont = False
        Properties.Items.Strings = (
          'DINHEIRO'
          'CHEQUE'
          'C. D'#201'BITO'
          'C. CR'#201'DITO'
          'FIADO'
          'CONV'#202'NIO')
        Style.Font.Charset = DEFAULT_CHARSET
        Style.Font.Color = clWindowText
        Style.Font.Height = -16
        Style.Font.Name = 'Tahoma'
        Style.Font.Style = []
        Style.IsFontAssigned = True
        TabOrder = 5
        Text = 'cxVendedor'
        Width = 300
      end
      object cxPesquisaCliente: TcxButton
        Left = 179
        Top = 100
        Width = 27
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
        TabOrder = 8
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = [fsBold]
        ParentFont = False
        OnClick = cxPesquisaClienteClick
      end
      object cxTabelaDePreco: TcxComboBox
        Left = 665
        Top = 69
        Properties.Items.Strings = (
          'Atacado'
          'Varejo'
          'Distribuidor')
        TabOrder = 6
        Text = 'cxTabelaDePreco'
        Width = 177
      end
      object BtnIncluir: TcxButton
        Left = 872
        Top = 8
        Width = 105
        Height = 43
        Caption = 'Incluir'
        LookAndFeel.NativeStyle = False
        LookAndFeel.SkinName = 'Office2013White'
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
        TabOrder = 21
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'HelveticaNeue'
        Font.Style = [fsBold]
        ParentFont = False
        OnClick = BtnIncluirClick
      end
      object cxButton3: TcxButton
        Left = 1095
        Top = 113
        Width = 154
        Height = 50
        Caption = 'Comprovante'
        LookAndFeel.NativeStyle = False
        LookAndFeel.SkinName = 'Office2013LightGray'
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
        TabOrder = 22
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'Tahoma'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object cxButton1: TcxButton
        Left = 1094
        Top = 58
        Width = 155
        Height = 48
        Caption = '-- Recebimento --'
        LookAndFeel.NativeStyle = False
        LookAndFeel.SkinName = 'Office2013White'
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
        TabOrder = 23
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'HelveticaNeue'
        Font.Style = [fsBold]
        Font.Quality = fqDraft
        ParentFont = False
      end
      object cxGrid1: TcxGrid
        Left = -2
        Top = 325
        Width = 1225
        Height = 220
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = [fsBold]
        ParentFont = False
        TabOrder = 24
        LookAndFeel.NativeStyle = False
        LookAndFeel.SkinName = 'DevExpressStyle'
        object cxGridDBTableView1: TcxGridDBTableView
          OnDblClick = cxGridDBTableView1DblClick
          Navigator.Buttons.CustomButtons = <>
          DataController.DataSource = DS_VENDA_ITEM
          DataController.DetailKeyFieldNames = 'id'
          DataController.Summary.DefaultGroupSummaryItems = <>
          DataController.Summary.FooterSummaryItems = <>
          DataController.Summary.SummaryGroups = <>
          OptionsView.CellEndEllipsis = True
          OptionsView.NoDataToDisplayInfoText = '...'
          OptionsView.CellAutoHeight = True
          OptionsView.ColumnAutoWidth = True
          OptionsView.GroupByBox = False
          object cxGridDBTableView1Column3: TcxGridDBColumn
            Caption = 'Item'
            DataBinding.FieldName = 'CODIGO_ITEM_VENDA'
            FooterAlignmentHorz = taCenter
            GroupSummaryAlignment = taCenter
            HeaderAlignmentHorz = taCenter
            HeaderGlyphAlignmentHorz = taCenter
            Options.Filtering = False
            Options.FilteringAddValueItems = False
            Options.FilteringFilteredItemsList = False
            Options.FilteringMRUItemsList = False
            Options.FilteringPopup = False
            Options.FilteringPopupMultiSelect = False
            Options.FilteringWithFindPanel = False
            Options.GroupFooters = False
            Options.Moving = False
            Width = 48
          end
          object cxGridDBTableView1Column1: TcxGridDBColumn
            Caption = 'C'#243'digo'
            DataBinding.FieldName = 'CODIGO_PRODUTO'
            FooterAlignmentHorz = taCenter
            GroupSummaryAlignment = taCenter
            HeaderAlignmentHorz = taCenter
            HeaderGlyphAlignmentHorz = taCenter
            Options.Filtering = False
            Options.FilteringAddValueItems = False
            Options.FilteringFilteredItemsList = False
            Options.FilteringMRUItemsList = False
            Options.FilteringPopup = False
            Options.FilteringPopupMultiSelect = False
            Options.FilteringWithFindPanel = False
            Options.GroupFooters = False
            Options.Moving = False
            Width = 67
          end
          object cxGridDBTableView1Column2: TcxGridDBColumn
            Caption = 'Descri'#231#227'o'
            DataBinding.FieldName = 'DESCRICAO'
            FooterAlignmentHorz = taCenter
            GroupSummaryAlignment = taCenter
            HeaderAlignmentHorz = taCenter
            HeaderGlyphAlignmentHorz = taCenter
            Options.Filtering = False
            Options.FilteringAddValueItems = False
            Options.FilteringFilteredItemsList = False
            Options.FilteringMRUItemsList = False
            Options.FilteringPopup = False
            Options.FilteringPopupMultiSelect = False
            Options.FilteringWithFindPanel = False
            Options.GroupFooters = False
            Options.Moving = False
            Width = 366
          end
          object cxGridDBTableView1Column11: TcxGridDBColumn
            DataBinding.FieldName = 'VI_CFOP_CSOSN'
            HeaderAlignmentHorz = taCenter
            HeaderGlyphAlignmentHorz = taCenter
            Width = 45
          end
          object cxGridDBTableView1Column4: TcxGridDBColumn
            Caption = 'Unidade'
            DataBinding.FieldName = 'UNIDADE'
            FooterAlignmentHorz = taCenter
            GroupSummaryAlignment = taCenter
            HeaderAlignmentHorz = taCenter
            HeaderGlyphAlignmentHorz = taCenter
            Options.Filtering = False
            Options.FilteringAddValueItems = False
            Options.FilteringFilteredItemsList = False
            Options.FilteringMRUItemsList = False
            Options.FilteringPopup = False
            Options.FilteringPopupMultiSelect = False
            Options.FilteringWithFindPanel = False
            Options.GroupFooters = False
            Options.Moving = False
            Width = 59
          end
          object cxGridDBTableView1Column5: TcxGridDBColumn
            Caption = 'Valor Und.'
            DataBinding.FieldName = 'PRECO'
            FooterAlignmentHorz = taCenter
            GroupSummaryAlignment = taCenter
            HeaderAlignmentHorz = taCenter
            HeaderGlyphAlignmentHorz = taCenter
            Options.Filtering = False
            Options.FilteringAddValueItems = False
            Options.FilteringFilteredItemsList = False
            Options.FilteringMRUItemsList = False
            Options.FilteringPopup = False
            Options.FilteringPopupMultiSelect = False
            Options.FilteringWithFindPanel = False
            Options.GroupFooters = False
            Options.Moving = False
            Width = 106
          end
          object cxGridDBTableView1Column6: TcxGridDBColumn
            Caption = 'Quant.'
            DataBinding.FieldName = 'QUANTIDADE'
            FooterAlignmentHorz = taCenter
            GroupSummaryAlignment = taCenter
            HeaderAlignmentHorz = taCenter
            HeaderGlyphAlignmentHorz = taCenter
            Options.Filtering = False
            Options.FilteringAddValueItems = False
            Options.FilteringFilteredItemsList = False
            Options.FilteringMRUItemsList = False
            Options.FilteringPopup = False
            Options.FilteringPopupMultiSelect = False
            Options.FilteringWithFindPanel = False
            Options.GroupFooters = False
            Options.Moving = False
            Width = 107
          end
          object cxGridDBTableView1Column7: TcxGridDBColumn
            Caption = 'Valor Total'
            DataBinding.FieldName = 'PRECO_TOTAL'
            FooterAlignmentHorz = taCenter
            GroupSummaryAlignment = taCenter
            HeaderAlignmentHorz = taCenter
            HeaderGlyphAlignmentHorz = taCenter
            Options.Filtering = False
            Options.FilteringAddValueItems = False
            Options.FilteringFilteredItemsList = False
            Options.FilteringMRUItemsList = False
            Options.FilteringPopup = False
            Options.FilteringPopupMultiSelect = False
            Options.FilteringWithFindPanel = False
            Options.GroupFooters = False
            Options.Moving = False
            Width = 106
          end
          object cxGridDBTableView1Column8: TcxGridDBColumn
            Caption = 'Desc %'
            DataBinding.FieldName = 'rateio_desconto'
            FooterAlignmentHorz = taCenter
            GroupSummaryAlignment = taCenter
            HeaderAlignmentHorz = taCenter
            HeaderGlyphAlignmentHorz = taCenter
            Options.Filtering = False
            Options.FilteringAddValueItems = False
            Options.FilteringFilteredItemsList = False
            Options.FilteringMRUItemsList = False
            Options.FilteringPopup = False
            Options.FilteringPopupMultiSelect = False
            Options.FilteringWithFindPanel = False
            Options.GroupFooters = False
            Options.Moving = False
            Width = 104
          end
          object cxGridDBTableView1Column9: TcxGridDBColumn
            Caption = 'Desc. R$'
            DataBinding.FieldName = 'DESCONTO'
            FooterAlignmentHorz = taCenter
            GroupSummaryAlignment = taCenter
            HeaderAlignmentHorz = taCenter
            HeaderGlyphAlignmentHorz = taCenter
            Options.Filtering = False
            Options.FilteringAddValueItems = False
            Options.FilteringFilteredItemsList = False
            Options.FilteringMRUItemsList = False
            Options.FilteringPopup = False
            Options.FilteringPopupMultiSelect = False
            Options.FilteringWithFindPanel = False
            Options.GroupFooters = False
            Options.Moving = False
            Width = 109
          end
          object cxGridDBTableView1Column10: TcxGridDBColumn
            Caption = 'Valor Pago'
            DataBinding.FieldName = 'PRECO_TOTAL'
            FooterAlignmentHorz = taCenter
            GroupSummaryAlignment = taCenter
            HeaderAlignmentHorz = taCenter
            HeaderGlyphAlignmentHorz = taCenter
            Options.Filtering = False
            Options.FilteringAddValueItems = False
            Options.FilteringFilteredItemsList = False
            Options.FilteringMRUItemsList = False
            Options.FilteringPopup = False
            Options.FilteringPopupMultiSelect = False
            Options.FilteringWithFindPanel = False
            Options.GroupFooters = False
            Options.Moving = False
            Width = 106
          end
        end
        object cxGridLevel1: TcxGridLevel
          GridView = cxGridDBTableView1
        end
      end
      object cxNaturezaOperacao: TcxComboBox
        Left = 121
        Top = 34
        ParentFont = False
        Properties.Items.Strings = (
          'DINHEIRO'
          'CHEQUE'
          'C. D'#201'BITO'
          'C. CR'#201'DITO'
          'FIADO'
          'CONV'#202'NIO')
        Style.Font.Charset = DEFAULT_CHARSET
        Style.Font.Color = clWindowText
        Style.Font.Height = -16
        Style.Font.Name = 'Tahoma'
        Style.Font.Style = []
        Style.IsFontAssigned = True
        TabOrder = 3
        Text = 'cxNaturezaOperacao'
        OnExit = cxNaturezaOperacaoExit
        Width = 535
      end
      object BtnNFE: TcxButton
        Left = 871
        Top = 169
        Width = 155
        Height = 50
        Hint = 'Excluir cadastro.'
        BiDiMode = bdRightToLeft
        Caption = 'Emitir NF-e'
        LookAndFeel.NativeStyle = False
        LookAndFeel.SkinName = 'Office2013White'
        OptionsImage.Glyph.Data = {
          F6210000424DF6210000000000003600000028000000300000002D0000000100
          200000000000C021000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          000000000000000000000000000000000000000000040101010C020202110202
          02150203031802030318030303190303031C0303031E0303031E0303031E0303
          031E0303031C03030319020303180203031802020215020202110101010C0000
          0004000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000010101010C04040424050505310606
          0639070707400707074407070744070808470708084807080849070808490708
          0848070808470707074407070744070707400606063905050532040404240101
          010D000000010000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          00000000000000000000000000000000000000000003010101090101010D0202
          020F02020212020202130202021302020214020202140303031C030404210202
          0214020202140202021302020213020202120202020F0101010D010101090000
          0003000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000F0C0010867005BC433A25940000
          0003000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000003C320040ECC400FFAD9042EF1F1C
          1468030303190000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          000000000000000000000000000016130B28937C00AEEFC700FFE4BE00FFC2A1
          32FF4F442BA70202021000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000144390067D9B500F0EFC700FFEFC700FFEFC700FFE4BE
          00FFCFAD00FF37301F830101010B000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          00000000000055470060EAC300FFEFC700FFEFC700FFEFC700FFEFC700FFEFC7
          00FFECC400FFB89A2DF742392593000000010000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          000000000000000000005A4B0060EFC700FFEFC700FFEFC700FFEFC700FFEFC7
          00FFEFC700FFE8C200FF9B821CDE010101080000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          00030303031A03030321021416502B7F4FCEB3C700FFEFC700FFEFC700FFEFC7
          00FFEFC700FFEFC700FFAD9100E70303031D0000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          00000000000000000000000000000000000000000000000000000E160738395E
          1DC94E8426F7538C27FF3C8140FF138569FF007C7ECD9A9700D6EFC700FFEFC7
          00FFEFC700FFEFC700FFD0AF00FF5D4F31B00404042800000001000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          000000000000000000000000000000000000000000000E160736508628F44C7C
          28BF305A3E8400CACDFF486C4E8F6A9559CF60963EFF748000FFCAAC00FFEFC7
          00FFEFC700FFEFC700FFEDC500FFD2B100FF78673DCE332C1D7F13110D4B0101
          010B010101060101010800000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          00000000000000000000000000000000000000000001477722DF355A1CA00000
          0000006E77A20095A5BF0000000000000000696E48A08FB642FF598600FFAB99
          00FFEDC500FFEFC700FFEFC700FFEFC700FFE8C100FFDDB800FFB39500F76254
          20BB6E5E00C5594B2EB204040427000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          00000000000000000000000000000000000017270A5058932CFF050802100000
          000000ACBDE000444B610000000002030317D1AE00DFEAC700FFBBC600FF6093
          28FF968E00FFEBC300FFEFC700FFEFC700FFEFC700FFEFC700FFEFC700FFEFC7
          00FFEFC700FFCBAA00FF605332B1020202100000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          00000000000000000000000000000000000028431480426E21C2000000000000
          000000C8DDFF0017192B6756008A9F8500DFEFC700FFEFC700FFEFC700FFC9C6
          00FF689E49FF8E8D00FFEBC400FFEFC700FFEFC700FFEFC700FFEFC700FFEFC7
          00FFEBC400FFEFC700FFB99A00F72D271A780000000300000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          00000000000000000000000000000000000034571A9F2D4A1892000000000000
          000000C3D6FF02020215E0BB00EFEFC700FFEFC700FFEFC700FFEFC700FFEFC7
          00FFD4C900FF679C48FF9E9200FFEEC600FFEFC700FFEFC700FFEFC700FFEFC7
          00FFEFC700FFEFC700FFE9C200FFAD9141EF0304042100000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000003E691DBF2D4A1791000000000000
          000000C4D7FF0303031AEFC700FFEFC700FFEFC700FFEFC700FFEFC700FFEFC7
          00FFEFC700FFBEC200FF609328FFB3A000FFEFC700FFEFC700FFEFC700FFEFC7
          00FFEFC700FFEFC700FFEFC700FFD3B100FF211D146400000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          00000000000000000000000000000000000035591A9F2D4B1998000000000000
          000000CADFFF0021243FC2A200CFEFC700FFEFC700FFEFC700FFEFC700FFEFC7
          00FFEFC700FFEFC700FFB8C400FF618900FFCEB000FFEFC700FFEFC700FFEFC7
          00FFEFC700FFEFC700FFEFC700FFE3BD00FF7E6A3EC70101010D000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000002C491580385E1FB4000000000000
          000000B3C6DF002C305869570070EFC700FFEFC700FFEFC700FFEFC700FFEFC7
          00FFEFC700FFEFC700FFEAC700FF97B923FF738800FFE8C100FFEFC700FFEFC7
          00FFEFC700FFEFC700FFEFC700FFEFC700FFC1A200F704040425000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000001F341060447225D7000000020000
          0000008C9BAF00626BA8B49700C8EFC700FFEFC700FFEFC700FFEFC700FFEFC7
          00FFEFC700FFEFC700FFEFC700FFE1C800FF6CA54BFF9C9400FFEFC700FFEFC7
          00FFEFC700FFEFC700FFEFC700FFEFC700FFDAB600FF05060633000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          000000000000000000000000000000000000101A083058932CFF020202150000
          00003C652980CFAE00FFEFC700FFEFC700FFEFC700FFDAB500FFB39500FF9179
          00FF8F7700FFAF9100FFD6B300FFEFC700FFC1C400FF649000FFD2B300FFEFC7
          00FFEFC700FFEFC700FFEFC700FFEFC700FFD8B400FF2B261868000000030000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          00000000000000000000000000000000000000000000599430EF1A2B0E660000
          000078640080EFC700FFEFC700FFEFC700FFF6E305FFF2EFDAFFFFFFFFFFFFFF
          FFFFFFFFFFFFE9E8DDFFA9A270FF8A7600FFDFBA00FF89B335FF818A00FFEEC6
          00FFEFC700FFEFC700FFEFC700FFEFC700FFE4BE00FFAB8E27EF211D14660000
          0002000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          00000000000000000000000000000000000000000000466C309F375B1CB91714
          0C2F917900B7EFC700FFEFC700FFF8E74DFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFF4F3EEFF7A6D00FFB1AF00FF5F9324FFCBAE
          00FFEFC700FFEFC700FFEFC700FFEFC700FFEFC700FFE7C000FF977E37DE1311
          0D51000000010000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000032432464599134F8C5A4
          00F6EFC700FFEFC700FFEFC700FFFEFBEBFFFFFFFFFFFFFFFFFFFEFBEBFFF8E7
          4DFFF7E400FFFDF8D5FFFFFFFFFFFFFFFFFFF4F3EEFF867700FF93B300FF878F
          00FFEEC600FFEFC700FFEFC700FFEFC700FFEFC700FFEFC700FFDCB700FF9B82
          39E514130E5B0101010500000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000001000000002D260031D8B400F079B03BFF9D99
          00FFEFC700FFEFC700FFEFC700FFFFFFFFFFFFFFFFFFFFFFFFFFCDBA00FFEFC7
          00FFEFC700FFEFC700FFF9EB71FFFCF1A7FFFCF1A7FFF7E400FFC9C300FF5F93
          20FFD3B300FFEFC700FFEFC700FFEFC700FFEFC700FFEFC700FFEFC700FFE6C0
          00FFA2883DE70707074000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000B09
          05113A311F794F442897423824890505052DA48900B3EFC700FFB9C000FF6C91
          00FFE8C100FFEFC700FFEFC700FFFFFFFFFFFFFFFFFFFFFFFFFF938500FF9B81
          00FF9B8100FF9B8100FF9B8100FF9B8100FF9B8100FF9B8100FFAD8F00FF7EAD
          10FF969400FFEFC700FFEFC700FFEFC700FFEFC700FFEFC700FFEFC700FFEFC7
          00FFD6B300FF685835AC00000000000000000000000000000000000000000000
          00000000000000000000000000000000000000000000000000000C0B071F927A
          00C1E1BC00FFECC400FFC7A700FF9D834CEFCCA900EDEFC700FFE2C600FF6FAB
          4EFFAEA000FFEFC700FFEFC700FFFEFBEBFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF9D955DFFB5BD
          00FF688B00FFECC500FFEFC700FFEFC700FFEFC700FFEFC700FFEFC700FFEFC7
          00FFECC500FF887242C800000001000000000000000000000000000000000000
          00000000000000000000000000000000000000000000493D0862CFAE00F5E7C0
          00FFEFC700FFEFC700FFEFC700FFEFC700FFEFC700FFEFC700FFEFC700FFAEBF
          00FF698F00FFE3BD00FFEFC700FFFAEE8EFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFBCB796FFD2B8
          00FF5E9836FFC7AE00FFEFC700FFEFC700FFEFC700FFEFC700FFEFC700FFEFC7
          00FFECC500FF756124A100000000000000000000000000000000000000000000
          00000000000000000000000000000000000000000000A18600AFEFC700FFEFC7
          00FFEFC700FFEFC700FFEFC700FFEFC700FFEFC700FFEFC700FFEFC700FFE9C7
          00FF7EB148FF9C9900FFEFC700FFF4D900FFFFFFFFFFFFFFFFFFFFFFFFFF8D7E
          00FFE4BE00FFEFC700FFEFC700FFF9EB71FFFFFFFFFFFFFFFFFFD2CFBAFFD5B3
          00FF7AAC00FF9A9700FFEFC700FFEFC700FFEFC700FFEFC700FFEFC700FFEFC7
          00FFDDB900EF251E113000000000000000000000000000000000000000000000
          00000000000000000000000000000000000000000000EFC700FFEFC700FFEFC7
          00FFEFC700FFEFC700FFEFC700FFEFC700FFEFC700FFEFC700FFEFC700FFEFC7
          00FFBFC300FF699818FFCFB100FFEFC700FFFCF1A7FFFFFFFFFFFFFFFFFFDEDB
          CCFF887900FFB99900FFCEAF00FFFDF8D5FFFFFFFFFFFFFFFFFFD3D1B9FFECC4
          00FFA5B600FF809500FFEFC700FFEFC700FFEFC700FFEFC700FFDDB800EF5446
          0060000000000000000000000000000000000000000000000000000000000000
          00000000000000000000000000000000000000000000B39500BFEFC700FFEFC7
          00FFEFC700FFEFC700FFEFC700FFEFC700FFEFC700FFEFC700FFEFC700FFEFC7
          00FFEFC700FF9BBC32FF798C00FFE9C200FFF1CE00FFFEFBEBFFFFFFFFFFFFFF
          FFFFFFFFFFFFF4F3EEFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFE3CF00FFEFC7
          00FFBDBA00FF6A9300FFEBC400FFEFC700FFEFC700FFE0BB00EF2D2500300000
          0000000000000000000000000000000000000000000000000000000000000000
          000000000000000000000000000000000000000000002D250030EFC700FFEFC7
          00FFEFC700FFEFC700FFEFC700FFEFC700FFEFC700FFEFC700FFEFC700FFEFC7
          00FFEFC700FFE0C700FF78B05DFF9A9300FFEEC600FFF1CE00FFFCF1A7FFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFCF4BFFFF0CB00FFEFC7
          00FFC8B800FF58942AFFC4A400DF8670008F779500BF00655C9A000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000707070708080808050505050000000000000000050505050BBB264BFE7D4
          00EFC4A900CFF7E400FFF7E400FFF1CE00FFEFC700FFEFC700FFEFC700FFEFC7
          00FFEFC700FFEFC700FFC9C700FF6DA13BFFB19E00FFEFC700FFEFC700FFF4D9
          00FFF8E74DFFFCF1A7FFFCF1A7FFFCF1A7FFF6E000FFF0CB00FFEFC700FFEFC7
          00FFD2AF00EF56902AFF020303170000000000646E80008491B8000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          00006A6B70CF0D121EFF686A6EBF00000000000000008A8C90EF0D121EFF6D70
          77FF303030305E6168FF0D121EFFDAC300FFEFC700FFEFC700FFEFC700FFEFC7
          00FFEFC700FFEFC700FFEFC700FFB8C500FF64930FFFC7AA00FFEFC700FFEFC7
          00FFEFC700FFEFC700FFEFC700FFE9C200FFE8C100FFECC400FFEBC400FF9178
          009F0F0C0010568F2CFF030303180000000000636C80007A86AA000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          00006567699F0D121EFF7C7F85FF00000000505050503F424CFF0D121EFF3F42
          4CFF404040408B8D93FF0D121EFFB1A300FFEFC700FFEFC700FFEFC700FFEFC7
          00FFEFC700FFEFC700FFEFC700FFE9C700FFA5C34AFF6B9600FFC5A900FFEFC7
          00FFEFC700FFEFC700FFDBB700FFDDB900FFB49700DA52440060000000000000
          000009100420558F28FF0202020F00000000008390AF00656F87000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000707070700D121EFF4F525BFF30303030848487AF0D121EFF0D121EFF0D12
          1EFF7070707085868ABF0D121EFF88824DFFEFC700FFEFC700FFEFC700FFEFC7
          00FFEFC700FFEFC700FFEFC700FFEFC700FFEBC700FFA7C44EFF699400FFBBA3
          00FFEEC700FFEFC700FFEFC700FFCBAA00FF77653CBC00000001000000000000
          000017260A50518828F1000000030000000200BED2EF003B4055000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000404040403F424CFF0D121EFF808080806D7077FF1F222EFF6D7077FF0D12
          1EFF6567699FE5D553FF0D121EFF3F424CFFC2B86FFFC2B86FFFC2B86FFFD0C3
          62FFEFC700FFEFC700FFEFC700FFECC500FFEFC700FFEAC700FFADC42DFF6498
          2DFF9D9200FFE6C000FFEFC700FFECC500FF1B8584DA051010470101010A0000
          0000335619A13B621DB000000000004C547800C0D4EF000B0C10000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000006D7077FF0D121EFFC4C5C8EF1F222EFF5D6066EF787A7FCF0D12
          1EFF5A5B61BF8C854B8F2E333DFF0D121EFF0D121EFF0D121EFF0D121EFF2E33
          3DFFF2D200FFEFC700FFEFC700FF9C8200CD1E1900223C320040957C009F8897
          31BF76AC5AFF778900FFC0A200FFBA9C00EE41BBC9D300C9DBF7006D77BA1432
          228858942AFF172F1C7F00575F9800D1E7FF0049516000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000006A6B70CF0D121EFF4F525BFF0D121EFF6567699F6464678F0D12
          1EFF6D7077FF3F3C2A405E6168FF0D121EFF686A6EBF46474A80645F3B9FBEAB
          00FFF1CE00FFEFC700FFEFC700FFA4893CE60303031B00000000000000000000
          00002A34284079A368DF68A049FF567618EC2034149145776AD22F9575FF5892
          2DFF3BAC85FF00D0E4FF00D5EAEF00474E600000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000006567699F0D121EFF0D121EFF2E333DFF40404040606060600D12
          1EFF4F525BFF303030308B8D93FF0D121EFF67686CAF404040404F4D3B50F4D5
          00FFE2C200EFEFC700FFEFC700FFBB9E00E30000000300000000000000000000
          000000000000000000003340305059774F9F63914ECF71AE52FF4A7828BF1E33
          0F60193C40400E3A3F4000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          000000000000707070700D121EFF0D121EFF7A7B81DF00000000303030304F52
          5BFF0D121EFF6060606085868ABF0D121EFF2E333DFF4F525BFF4F525BFF4F52
          5BFF787A7FCF1E1900208670008F514400600000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          000000000000404040406D7077FF4F525BFF5353567000000000000000009A9B
          A1FF4F525BFF636465808181828F4F525BFF4F525BFF4F525BFF4F525BFF4F52
          5BFF7C7F85FF0000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
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
        ParentBiDiMode = False
        TabOrder = 25
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'HelveticaNeue'
        Font.Style = [fsBold]
        ParentFont = False
        OnClick = BtnNFEClick
      end
      object BtnNFCE: TcxButton
        Left = 1095
        Top = 169
        Width = 154
        Height = 50
        Hint = 'Excluir cadastro.'
        Caption = 'Emitir NFC-e'
        LookAndFeel.NativeStyle = False
        LookAndFeel.SkinName = 'Office2013White'
        OptionsImage.Glyph.Data = {
          F6210000424DF6210000000000003600000028000000300000002D0000000100
          200000000000C021000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0001000000010000000100000001000000010000000100000001000000010000
          0001000000010000000100000001000000010000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          000000000000000000000000000000000001010101060102020E020202120202
          021502030318020303180303031A0303031D0303031E0303031E0303031E0303
          031E0303031B03030319020303180203031702020214020202100101010A0000
          0003000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000020202021104040428050606340606
          063B070707410707074407080845070808480708084907080849070808490708
          08480708084607070744070707430607073E060606380505052F0303031F0101
          0108000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          000000000000000000000000000000000001000000040101010A0102020E0202
          0210020202120202021302020213020202140202021402020215020202140202
          0214020202140202021302020213020202110202020F0101010C010101080000
          0002000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000002A23003176643CC10F0D09290000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          00000000000000000000000000000000000078640080DAB600FF6E5D38AF0202
          0216000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000120F0024C3A200D2EFC700FFD1AE00FF8F79
          47DE1C180F420000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          000000000000010101074A3E0069E2BD00FFEFC700FFEFC700FFEFC700FFD6B3
          00FF937B47D90F0D082600000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          000000000000937C00B0ECC500FFEFC700FFEFC700FFEFC700FFEFC700FFEFC7
          00FFDAB600FF79663DC60E0D0928000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000F0C0010C2A200CFEFC700FFEFC700FFEFC700FFEFC700FFEFC7
          00FFEFC700FFD5B300FF4C402675000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          000000000003000000041223104B97BD00FFEFC700FFEFC700FFEFC700FFEFC7
          00FFEFC700FFEDC500FF6453308F000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000111D0843365A
          1DBD446F24DA426D25E021805DFF00979AF7009D87D0EFC700FFEFC700FFEFC7
          00FFEFC700FFECC400FFA88C51EC1D1910470000000100000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          000000000000000000000000000000000000000000001B2E0D6159942DFF4975
          2DAF409174CF3ABBA5EF597E4AB06EA252FF456D0CE3AB9900FFEBC400FFEFC7
          00FFEFC700FFEFC700FFE7C100FFAC9026EF4C4128931A170F460101010C0000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          000000000000000000000000000000000000090F042057912CFF1F3410620000
          000000B3C5EF00535C7100000000161A152092AA70F0629940FF798300FFDEB9
          00FFEFC700FFEFC700FFEFC700FFECC400FFD8B500FFD1B000FF7C693ECD5C4E
          2FA35B4D2FA61D1A114D00000003000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000003152179F426E20C5000000010029
          2D4000C8DBFF000C0D15000000003D320043EFC700FFD7C800FF82B14FFF6C83
          00FFD1B300FFEFC700FFEFC700FFEFC700FFEFC700FFEFC700FFEBC300FFEFC7
          00FFE6C000FFA4893CEF100E0A35000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000004B7E25DF1F34107100000000004A
          5070009CADD70A090511725F00A0B29500E5EFC700FFEFC700FFE2C900FF89B3
          36FF5C8100FFCAAD00FFEFC700FFEFC700FFEFC700FFEFC700FFEFC700FFEBC4
          00FFECC500FFDBB600FF7A673DCA0303031B0000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          00000000000000000000000000000000000059952BFF15220C5400000000005E
          6680009CACD33C320040EFC700FFEFC700FFEFC700FFEFC700FFEFC700FFEBC8
          00FF9EBC39FF618200FFD8B500FFEFC700FFEFC700FFEFC700FFEFC700FFEFC7
          00FFEFC700FFEFC700FFCFAE00FF4D4228880000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          00000000000000000000000000000000000056902AFF080C073600000000005E
          6780009CABD73C320041EFC700FFEFC700FFEFC700FFEFC700FFEFC700FFEFC7
          00FFEBC800FF7FB046FF708600FFE0BA00FFEFC700FFEFC700FFEFC700FFEFC7
          00FFEFC700FFEFC700FFEFC700FF957D49D70102020E00000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          00000000000000000000000000000000000059952BFF111A0B4D00000000004E
          5570009CACDD2E260035EFC700FFEFC700FFEFC700FFEFC700FFEFC700FFEFC7
          00FFEFC700FFE3C900FF79AA41FF888800FFECC500FFEFC700FFEFC700FFEFC7
          00FFEFC700FFEFC700FFEFC700FFCFAE00FF2822165100000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          00000000000000000000000000000000000059942DFF16230D6100000000002D
          324000B3C5EF02020213C2A200CFEFC700FFEFC700FFEFC700FFEFC700FFEFC7
          00FFEFC700FFEFC700FFD0C700FF629940FFAF9C00FFEFC700FFEFC700FFEFC7
          00FFEFC700FFEFC700FFEFC700FFE7C000FF715F37A800000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          000000000000000000000000000000000000447123BF22371483000000000017
          192000C8DDFF24280061E0BA00F0EFC700FFEFC700FFEFC700FFEFC700FFEFC7
          00FFEFC700FFEFC700FFEFC700FFAABF00FF618800FFD5B300FFEFC700FFEFC7
          00FFEFC700FFEFC700FFEFC700FFEFC700FF967D48CD00000003000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          00000000000000000000000000000000000031521A8F375C1EB9000000020000
          000061A942DFD4B200FFEFC700FFEFC700FFEFC700FFECC400FFC8A700FFB697
          00FFC6A500FFE9C200FFEFC700FFEBC800FF81B14DFF818A00FFEDC500FFEFC7
          00FFEFC700FFEFC700FFEFC700FFEFC700FF9E8400D60102020D000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000002339136050862AED020202150000
          0000D1AE00DFEFC700FFEFC700FFF0CB00FFF2DF1FFFD4D1B9FFFFFFFFFFFFFF
          FFFFE9E8DDFFBDB896FFAE9B00FFD1B000FFCDC500FF5F9324FFC1A500FFEFC7
          00FFEFC700FFEFC700FFEFC700FFEFC700FFCFAD00FF493F279B0102020E0000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000509031066A33EFF111B0C570E0C
          0828BF9F00D6EFC700FFEFC700FFFCF4BFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFB8B280FFB99900FF98B700FF738700FFE8C1
          00FFEFC700FFEFC700FFEFC700FFEFC700FFEFC700FFD5B200FF4E4329920101
          010C000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          000000000000000000000000000000000000000000004E7938B6597200E5DDB9
          00FFEFC700FFEFC700FFF4D900FFFFFFFFFFFFFFFFFFFFFFFFFFFEFBEBFFFCF1
          A7FFFCF4BFFFFFFFFFFFFFFFFFFFFFFFFFFFC0BA94FFB2A700FF5F973AFFBFA7
          00FFEFC700FFEFC700FFEFC700FFEFC700FFEFC700FFEFC700FFC5A500FF4A3F
          2795020202100000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          00000000000000000000000000000000000055470064B9B600FF649400FFD7B3
          00FFEFC700FFEFC700FFF7E400FFFFFFFFFFFFFFFFFFFFFFFFFFE0BE00FFEFC7
          00FFEFC700FFF5DC00FFFCF1A7FFFCF1A7FFFCF1A7FFD6BA00FF96B500FF7B86
          00FFEDC500FFEFC700FFEFC700FFEFC700FFEFC700FFEFC700FFEBC400FFD1AF
          00FF4E4329950101010700000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000001713
          0B252D26175A3B321F77040404230F0D0013E1BB00F1E7C500FF7BB13FFF9894
          00FFEFC700FFEFC700FFF7E400FFFFFFFFFFFFFFFFFFD2CFBAFFB39500FFC5A3
          00FFC5A300FFC5A300FFC5A300FFC5A300FFC5A300FFC5A300FFBCB800FF5D92
          1EFFD1AF00FFEFC700FFEFC700FFEFC700FFEFC700FFEFC700FFEFC700FFEFC7
          00FFBC9D47F7100E0A3000000000000000000000000000000000000000000000
          000000000000000000000000000000000000000000000000000016130C30D4B0
          00EFE1BC00FFD7B500FFA2884FEF695A36B7EFC700FFEFC700FFBBC100FF668F
          00FFDEB900FFEFC700FFF4D900FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFA78B00FF73A9
          30FF979300FFEFC700FFEFC700FFEFC700FFEFC700FFEFC700FFEFC700FFEFC7
          00FFD5B300FF342C1B5B00000000000000000000000000000000000000000000
          000000000000000000000000000000000000000000006453008ACFAC00F3E7C0
          00FFEFC700FFEFC700FFE9C200FFEBC400FFEFC700FFEFC700FFE9C700FF7CAF
          47FF979000FFEFC700FFEFCC00FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFC0AB00FFAAB9
          00FF6E8B00FFE9C200FFEFC700FFEFC700FFEFC700FFEFC700FFEFC700FFEFC7
          00FFDFBA00FF1A170E3200000000000000000000000000000000000000000000
          00000000000000000000000000000000000000000001EFC700FFEFC700FFEFC7
          00FFEFC700FFEFC700FFEFC700FFEFC700FFEFC700FFEFC700FFEFC700FFBEC3
          00FF649305FFD7B300FFEFC700FFFCF1A7FFFFFFFFFFFFFFFFFFE9E8DDFFCCB5
          00FFF4D500FFF4D500FFF4D500FFFFFFFFFFFFFFFFFFFFFFFFFFAE9C00FFD3C3
          00FF5D921EFFD0AF00FFEFC700FFEFC700FFEFC700FFEFC700FFEFC700FFEFC7
          00FFC0A100DF0000000200000000000000000000000000000000000000000000
          00000000000000000000000000000000000069570070EFC700FFEFC700FFEFC7
          00FFEFC700FFEFC700FFEFC700FFEFC700FFEFC700FFEFC700FFEFC700FFE9C7
          00FF8DB73EFF838E00FFEBC300FFF4D500FFFFFFFFFFFFFFFFFFFFFFFFFFA59C
          57FFC09F00FFEEC600FFF1D100FFFFFFFFFFFFFFFFFFFFFFFFFFC2AD00FFEFC7
          00FF629F38FFB1A200FFEFC700FFEFC700FFEFC700FFEFC700FFCDAB00DF473B
          00500F0C00100000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000003C320040E0BB00EFEFC700FFEFC7
          00FFEFC700FFEFC700FFEFC700FFEFC700FFEFC700FFEFC700FFEFC700FFEFC7
          00FFD4C700FF69A249FFAD9B00FFEFC700FFF8E74DFFFFFFFFFFFFFFFFFFFFFF
          FFFFE9E8DDFFD2CFBAFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFDFBF00FFEFC7
          00FF87AE00FF949700FFEFC700FFEFC700FFEFC700FFC2A200CF0F0C00100000
          0000000000000000000000000000000000000000000000000000000000000000
          00000000000000000000000000000000000000000000957C009FEFC700FFEFC7
          00FFEFC700FFEFC700FFEFC700FFEFC700FFEFC700FFEFC700FFEFC700FFEFC7
          00FFEFC700FFAEC200FF689200FFD5B200FFEFC700FFF7E400FFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF9EB71FFEFC700FFEFC7
          00FFA1B200FF818E00FFE0BB00EFB19300BF74CB00FF102F1F58000000000000
          0000000000000000000000000000000000000000000000000000000000001010
          101040404040404040401010101000000000000000004F4D3B50D5BC00DFE2C2
          00EFD4B500DFF4D500FFF4D500FFEFC700FFEFC700FFEFC700FFEFC700FFEFC7
          00FFEFC700FFEAC700FFAAC58BFF8A8B2FFFBDAB00FFF5DC00FFF2D200FFF8E7
          4DFFFCF1A7FFFFFFFFFFFFFFFFFFFCF1A7FFF6E000FFEFC700FFEFC700FFEFC7
          00FF9FA900FF416C22D5000000010000000000BCD0EF002E325C000000000000
          0000000000000000000000000000000000000000000000000000000000004040
          40401F222EFF2E333DFF6060606000000000404040401F222EFF0D121EFF8283
          859F545658800D121EFF6D7077FFEFC700FFEFC700FFEFC700FFEFC700FFEFC7
          00FFEFC700FFA69F6BFF1F222EFF0D121EFF0D121EFF1F222EFF8A897EFFF2D2
          00FFEFC700FFEFC700FFECC500FFEFC700FFE8C100FFEFC700FFE0BB00EF7864
          00803A53008F447225D7000000010000000000C5D8FF002E3258000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          00004F525BFF0D121EFF8181828F0000000057585C9F0D121EFF0D121EFF8789
          8CCF606060600D121EFF3F424CFFF4D500FFEFC700FFEFC700FFEFC700FFEFC7
          00FFD9C000FF0D121EFF1F222EFFA7A383FF9CA99FFF4F525BFF0D121EFF9998
          8BFFF0CB00FFECC500FFD4B200FFEFC700FFB29500CF483C00501E1900200000
          00002B481580426D24D1000000000000000000CEE4FF002C314B000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          00005A5D62CF0D121EFF85868ABF101010104D5058EF0D121EFF0D121EFF8B8D
          93FF2F2F2F304F525BFF0D121EFFF6E000FFEFC700FFEFC700FFEFC700FFEFC7
          00FF968D3FFF0D121EFFA8A79AFFF0CB00FFD4CA00FFB5D4ACFF5E6168FF8B8D
          93FFF6E000FFEFC700FFE7C000FFB19455F71C18104500000000000000000000
          00003457199F30501AA0000000000031355000CEE2FF02020212000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          000057585C9F0D121EFF8B8D93FF434345600D121EFF7C7F85FF0D121EFF4F52
          5BFF7C7200807C7F85FF0D121EFF968D3FFFBEAB00FFBEAB00FFBEAB00FFE6CA
          00FF877F2CFF0D121EFFC2B86FFFEFC700FFEFC700FFD5CA00FF9AC48AFF748A
          00FFD6B300FFEFC700FFEFC700FFBFB500FF0D3C3C8302020211000000000000
          0000508625EF1D300E6700000000008D9BBF008C9BB400000001000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000535356700D121EFF5E6168FF8A8C90EF0D121EFFC3C3C4DF2E333DFF1F22
          2EFF7F7C6B80968F59EF0D121EFF0D121EFF0D121EFF0D121EFF0D121EFFA59C
          4FFF877F2CFF0D121EFFB1AB87FF5245006C5A4B006078640080D4BC00EF93BF
          69FF658E00FFA79A00FFE3BD00FF8FA174E100DDF1FF00919EDC003337752742
          158F528828F50715113E006C76A500C9DEEF0021253000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000404040401F222EFF2E333DFF2E333DFF4F525BFF505050505E6168FF0D12
          1EFF7273758F827E5BAF0D121EFF4F525BFF85868ABF85868ABFA49F7EDFDDD1
          72FFCDBC00FF0D121EFF6D7077FF554D3E810000000000000000202020204B4D
          4A5093AD8CCF76AC5CFF6A8D00FF455124B72E4D418C4AB0AEF5249F79FF5690
          2AFF00AFA2FF00C8DDFF00C9DEEF002528300000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000004F525BFF0D121EFF0D121EFF88898FDF000000004A4C52BF0D12
          1EFF85868ABF606060600D121EFF3F424CFF404040400000000078640080E0BB
          00EFF4D500FF2E333DFF0D121EFFAFAEADDF1010101000000000686A6EBF0D12
          1EFFB7B8BDFF151A14205E7B579F6E9E59DF6CA74CFF67A53FFF558A2DDF1F38
          2160193C4040123C404000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000005A5D62CF0D121EFF1F222EFF8F8F8F8F000000005556598F0D12
          1EFF8B8D93FF303030304F525BFF0D121EFF4F525BFF4F525BFF4F525BFF4F52
          5BFF707070707475769F1F222EFF1F222EFF6D6F75EF5C5E65DF1F222EFF1F22
          2EFF8283859F0000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          000000000000757779AF4F525BFF8B8D93FF2020202000000000525252604F52
          5BFF8B8D93FF303030309A9BA1FF4F525BFF4F525BFF4F525BFF4F525BFF4F52
          5BFF7475769F101010106464678F5E6168FF0D121EFF0D121EFF3F424CFFA4A5
          A7CF101010100000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000002020202040404040303030300000000000000000101010104040
          4040404040400000000030303030404040404040404040404040404040404040
          4040202020200000000000000000202020207070707080808080505050500000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000}
        TabOrder = 26
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'HelveticaNeue'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object cxButton4: TcxButton
        Left = 871
        Top = 57
        Width = 154
        Height = 50
        Caption = 'Dados'#13'Adicionais'
        LookAndFeel.NativeStyle = False
        LookAndFeel.SkinName = 'Office2013White'
        OptionsImage.Glyph.Data = {
          36100000424D3610000000000000360000002800000020000000200000000100
          2000000000000010000000000000000000000000000000000000000000000000
          0000000000000000000000000001000000010000000100000001000000010000
          0001000000010000000100000001000000010000000100000001000000010000
          0001000000010000000100000001000000010000000100000001000000010000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000010000000300000004000000040000000500000005000000050000
          0005000000050000000500000005000000050000000500000005000000050000
          0005000000050000000500000005000000060000000600000005000000040000
          0004000000010000000000000000000000000000000000000000000000000000
          0001000000050000000A0000000F000000120000001200000012000000120000
          0012000000120000001300000013000000130000001300000013000000130000
          0014000000140000001400000014000000140000001400000014000000120000
          000C000000060000000100000000000000000000000000000000000000000000
          00030000000B7E5D52BEAC7E6EFFAB7E6FFFAC7E6EFFAB7E6EFFAB7D6DFFAB7D
          6DFFAA7D6DFFAA7D6DFFAB7D6DFFAB7C6CFFAA7C6BFFA97B6CFFA97B6BFFAA7B
          6BFFA97B6BFFA97B6BFFA87A6BFFA97B6AFFA9796AFFA97969FFA87A6AFF7957
          4CBF0000000D0000000300000000000000000000000000000000000000010000
          00030000000EB08474FFFFFFFFFFFAF5F2FFFAF5F1FFFAF5F1FFF9F5F2FFFAF5
          F1FFFAF4F1FFF9F5F1FFFAF5F1FFF9F5F1FFFAF5F1FFF9F4F1FFFAF4F1FFF9F5
          F1FFF9F5F1FFF9F5F1FFF9F4F1FFF9F4F1FFF9F4F1FFF9F4F1FFF9F4F1FFA87A
          6AFF000000120000000400000001000000000000000000000000000000010000
          00040000000FB28677FFFFFFFFFFF5ECE5FFF5ECE5FFF5ECE5FFF5ECE5FFF5EC
          E5FFF5EBE4FFF5EBE5FFF5EBE4FFF5EBE5FFF5EBE4FFF4EBE4FFF4EBE5FFF4EB
          E4FFF4EBE4FFF4EBE4FFF5EBE4FFF5EAE4FFF5EBE3FFF4EAE3FFFAF5F1FFAA7C
          6BFF000000130000000500000001000000000000000000000000000000000000
          00040000000FB38979FFFFFFFFFFF5ECE6FFF5ECE6FFF5ECE6FFF5ECE6FFF5EC
          E5FFF5ECE6FFF5ECE6FFF5ECE5FFF5EBE5FFF5ECE6FFF5ECE5FFF5ECE5FFF5EB
          E4FFF5EBE5FFF5EBE4FFF5EBE4FFF5EBE4FFF4EBE4FFF5EBE5FFF9F5F1FFAB7C
          6CFF000000130000000500000001000000000000000000000000000000000000
          00040000000EB58C7BFFFFFFFFFFF5EDE7FFF5EDE7FFF6ECE6FFF5ECE7FFF5ED
          E6FFF6EDE7FFF5EDE6FFF5ECE6FFF5ECE6FFF5ECE6FFF5ECE6FFF5ECE6FFF5EC
          E6FFF5ECE6FFF5ECE5FFF5ECE5FFF5ECE5FFF5ECE5FFF5ECE5FFFAF5F1FFAB7D
          6EFF000000120000000500000001000000000000000000000000000000000000
          00040000000EB78E7FFFFFFFFFFFF5EEE8FFF6EDE7FFF5EDE8FFC19888FFC098
          87FFC09888FFC09887FFC09786FFC09786FFC09786FFBF9786FFBF9785FFBF97
          85FFBF9685FFBF9685FFBE9685FFF5ECE5FFF5ECE6FFF5ECE6FFFAF5F2FFAC7F
          6EFF000000110000000500000001000000000000000000000000000000000000
          00030000000DB99082FFFFFFFFFFF7EEE9FFF6EFE9FFF6EEE8FFEFE2DBFFEEE2
          DAFFEEE2DAFFEFE2DAFFEEE1DAFFEEE2D9FFEEE1DAFFEDE1D9FFEEE1D9FFEDE1
          D9FFEDE1D9FFEDE1D8FFEEE1D9FFF5ECE7FFF5ECE6FFF6EDE6FFFAF6F2FFAD80
          70FF000000110000000500000001000000000000000000000000000000000000
          00030000000DBB9384FFFFFFFFFFF7EFEAFFF6EEE9FFF6EFEAFFC29B8BFFC29B
          8BFFC29B8BFFC29B8BFFC19A8AFFC29A8AFFC19A89FFC19A89FFC19989FFC19A
          88FFC09989FFC19888FFC09888FFF5EEE8FFF5EEE7FFF6EDE7FFFAF6F3FFAD81
          71FF000000100000000400000001000000000000000000000000000000000000
          00030000000CBD9586FFFFFFFFFFF7F0EBFFF7EFEBFFF7F0EAFFEFE3DDFFF0E3
          DDFFEFE3DCFFF0E3DCFFEFE3DCFFEFE2DBFFEFE2DBFFEFE2DBFFEFE3DBFFEFE2
          DBFFEFE3DBFFEEE2DBFFEEE2DBFFF3EDE9FFE8E6E5FFDCDCDAFFDCDBDAFFCDC3
          C0FF000000250000000900000001000000000000000000000000000000000000
          00030000000BBE9989FFFFFFFFFFF8F1ECFFF8F0EBFFF7F0ECFFC59F90FFC59F
          8FFFC59F8FFFC59F8EFFC49E8EFFC49E8EFFC49D8DFFC49D8DFFC39D8CFFC39D
          8CFFC29C8CFFC39C8BFFC29C8CFFEAE8E6FF4A7B67FF216549FF216448FF2164
          48FF184734D10000001900000001000000000000000000000000000000000000
          00030000000BC09A8BFFFFFFFFFFF8F1ECFFF8F2EDFFF7F1ECFFF1E5DFFFF0E4
          DFFFF0E5DEFFF0E5DEFFF1E5DEFFF1E4DEFFF0E4DDFFF0E4DDFFF0E4DDFFEFE4
          DDFFF0E4DDFFEFE3DCFFEFE4DCFFE3E1E1FF267859FF41C699FF23B57DFF23B2
          7CFF21664AFF0000002200000000000000000000000000000000000000000000
          00030000000AC19D8EFFFFFFFFFFF7F2EEFFF8F2EDFFF8F2EDFFC8A494FFC7A4
          93FFC8A393FFC7A293FFC7A292FFC6A292FFC6A292FFC6A191FFC5A190FFC6A0
          91FFC6A090FFC5A08FFFC59F8FFFE4E2E1FF287D5EFF49CAA0FF22B57EFF27B8
          83FF22694CFF0000002200000000000000000000000000000000000000000000
          00030000000AC39F90FFFFFFFFFFF8F3EFFFF9F3EFFFF9F2EFFFF8F2EFFFF8F2
          EEFFF8F2EEFFF8F2EEFFF8F2EEFFF8F2EEFFF8F2EDFFF8F2EDFFF8F1EDFFF6F1
          EEFFEFEDECFFE9E7E6FFE7E5E4FFD4D3D2FF2B8263FF4FCDA3FF27B884FF2EBC
          89FF246C4FFF000000340000001C0000001C0000001200000004000000000000
          000200000009C5A192FFFFFFFFFFF9F3F0FFF9F4EFFFF9F3EFFFCAA798FFCAA7
          98FFCAA798FFCAA697FFC9A697FFC9A697FFC9A696FFC9A695FFC8A595FFE3D7
          D3FF558C76FF287759FF277658FF277457FF2D8867FF37C293FF2CBD8AFF34C1
          91FF257052FF256E51FF256E50FF246D50FF1A4E39CA00000011000000000000
          000200000009C6A394FFFFFFFFFFFAF4F1FFF9F4F0FFFAF4F0FFF9F4F0FFF9F4
          F0FFF9F4F0FFF9F4F0FFF9F4F0FFF8F4F0FFF9F4EFFFF8F3EFFFF8F3EFFFEEED
          ECFF319170FF63D8B4FF41C99EFF40C99DFF3FC89BFF3DC89AFF2FC290FF3BC7
          98FF39C598FF38C596FF37C494FF36C493FF2C8665FF00000018000000000000
          000200000008C6A596FFFFFFFFFFFAF5F2FFF9F5F2FFF9F5F1FF00A664FF00A2
          61FF009F5EFF009D5BFF00985BFF009658FF009256FF009054FF008D51FFE5DC
          D9FF339575FF69DBBBFF3BCB9DFF47D0A6FF51D3ABFF57D4AFFF5AD6B2FF55D3
          ADFF50D0A8FF45CBA1FF36C595FF3EC79AFF2E8B6BFF00000018000000000000
          000200000008C8A697FFFFFFFFFFFAF6F3FFFAF5F3FFFAF6F2FFF3EBE5FFF3EB
          E5FFF2EAE5FFF3EBE5FFF3EAE5FFF2E9E4FFF2E9E5FFF2E9E4FFF3E9E5FFF1EE
          EDFF369C79FF9EECD7FFAAEFDDFFAAEFDEFFAAEFDDFF91E9D2FF64DBBAFF73DF
          C2FF8EE7D0FFA6EDDBFFA5ECDBFF96E8D2FF30906FFF00000014000000000000
          000200000007C9A799FFFFFFFFFFFAF7F4FFFAF7F3FFFAF6F3FFCFB0A2FFCEB0
          A1FFCFAFA1FFCEAEA1FFCEAEA0FFCEAEA0FFCDADA0FFCDAD9FFFCDAD9EFFE9E0
          DBFF62AE92FF37A07EFF379F7CFF379E7BFF379E7AFF9BECD8FF6EE1C3FF7FE4
          CAFF359A78FF349977FF349776FF349775FF266F56C90000000C000000000000
          000200000006CAA99AFFFFFFFFFFFBF7F5FFFAF7F5FFFAF7F4FFF4ECE7FFF4EC
          E7FFF3ECE8FFF3ECE7FFF3ECE7FFF3ECE7FFF3ECE7FFF3ECE6FFF3EBE7FFF4EE
          EAFFF5F2F0FFF3F1EFFFF3F1F0FFECEAEAFF39A280FFA4EFDEFF77E5CAFF89E9
          D2FF2F8969FF0000001C0000000F0000000F0000000A00000003000000000000
          000200000006CBAA9BFFFFFFFFFFFBF8F6FFFBF8F5FFFBF8F5FFD2B4A6FFD2B4
          A6FFD1B3A6FFD1B3A5FFD1B2A4FFD0B2A4FFD0B2A4FFD0B1A4FFD0B1A3FFD0B0
          A2FFCFB0A2FFCFB0A2FFCFAFA2FFF6F5F4FF3AA784FFABF2E2FF7FE8D0FF91EC
          D8FF328F6FFF0000000F00000000000000000000000000000000000000000000
          000100000006CCAB9CFFFFFFFFFFFBF9F7FFFBF9F7FFFBF9F6FFF4EDE9FFF4ED
          E9FFF4EDE9FFF4EDE9FFF4EEE9FFF4EDE9FFF4EDE8FFF4ECE8FFF4EDE8FFF3ED
          E8FFF3ECE8FFF3EDE8FFF3ECE7FFF8F7F6FF3BAA86FFDEFBF6FFDEFBF6FFDEFB
          F6FF359574FF0000000C00000000000000000000000000000000000000000000
          000100000005CCAC9DFFFFFFFFFFFCFAF8FFFCF9F8FFFCF9F7FFD3B8A9FFD3B7
          A8FFD4B7A8FFD3B7A8FFD3B6A8FFD3B6A7FFD3B6A7FFD3B6A7FFD2B5A6FFD2B4
          A6FFD2B4A6FFD2B4A6FFD1B3A6FFFBFAF9FF6BBFA4FF3DAD89FF3CAC89FF3CAC
          88FF28735AC40000000700000000000000000000000000000000000000000000
          000100000005CDAC9EFFFFFFFFFFFCFAF8FFFCFAF8FFFCFAF8FFFCF9F8FFFCFA
          F8FFFCF9F8FFFCF9F7FFFCF9F8FFFBF9F8FFFCF9F7FFFCF9F7FFFCF9F7FFFBF9
          F6FFFBF9F6FFFBF8F7FFFBF9F6FFFCF8F7FFFAF9F8FFFAF9F9FFF9F9F9FFEAE1
          DEFF0000000C0000000300000000000000000000000000000000000000000000
          000100000004CDAD9EFFFFFFFFFFFDFAF9FFFCFAF9FFFCFAF9FFFCFAF9FFFCFA
          F9FFFCFAF8FFFCFAF8FFFCFAF8FFFCFAF8FFFCFAF8FFFBF9F8FFFCFAF8FFFCFA
          F8FFFCF9F7FFFCFAF8FFFBF9F7FFFCFAF7FFFCF9F7FFFBF9F7FFFDFCFBFFC09B
          8BFF000000070000000200000000000000000000000000000000000000000000
          000100000004CDAD9FFFFFFFFFFFFDFBFAFFFCFBF9FFFCFBFAFFFDFAF9FFFCFB
          FAFFFCFBF9FFFCFAF9FFFDFAF9FFFCFBF9FFFDFAF9FFFDFAF8FFFCFBF9FFFCFA
          F8FFFCFAF8FFFBFAF9FFFCFAF8FFFBFAF8FFFCF9F8FFFBFAF8FFFDFCFBFFC19D
          8EFF000000070000000200000000000000000000000000000000000000000000
          000100000003CEAD9FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFC39E
          8FFF000000060000000100000000000000000000000000000000000000000000
          000000000002998176BECEAEA0FFCEAEA0FFCEAEA0FFCEAEA0FFCEAEA0FFCEAE
          9FFFCEAEA0FFCEAD9FFFCEAD9FFFCEAD9FFFCEAD9FFFCEAD9FFFCEAD9FFFCDAD
          9FFFCDAD9FFFCDAD9FFFCDAD9FFFCDAD9FFFCDAD9FFFCDAD9FFFCDAD9FFF9880
          76BF000000040000000100000000000000000000000000000000000000000000
          0000000000010000000200000002000000030000000300000003000000030000
          0003000000030000000300000004000000040000000400000004000000040000
          0004000000040000000400000004000000050000000500000005000000050000
          0003000000010000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000010000000100000001000000010000
          0001000000010000000100000001000000010000000100000001000000010000
          0001000000010000000100000001000000010000000100000001000000010000
          0001000000000000000000000000000000000000000000000000}
        TabOrder = 27
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'HelveticaNeue'
        Font.Style = [fsBold]
        Font.Quality = fqDraft
        ParentFont = False
        OnClick = cxButton4Click
      end
      object cxButton5: TcxButton
        Left = 871
        Top = 113
        Width = 155
        Height = 50
        Caption = 'Dados Entrega'
        LookAndFeel.NativeStyle = False
        LookAndFeel.SkinName = 'Office2013White'
        OptionsImage.Glyph.Data = {
          36100000424D3610000000000000360000002800000020000000200000000100
          2000000000000010000000000000000000000000000000000000000000000000
          000100000002000000060000000C0000000B0000000600000002000000010000
          0000000000000000000000000000000000000000000000000000000000010000
          0003000000070000000E000000120000000E0000000700000003000000010000
          0000000000000000000000000000000000000000000000000000000000000000
          0001000000040000000EB18575FF3D221BB30000003A00000021000000170000
          0014000000100000000E0000000D0000000E0000001000000014000000170000
          00220000003C574139B5AE8071FF3B2019AC00000031000000170000000C0000
          0006000000030000000200000001000000000000000000000000000000000000
          00010000000500000013B18677FFB99A91FF3E231CBD000000580000003E0000
          002D00000026000000200000001E00000020000000260000002D0000003E0000
          0059594239BEC59E8FFFDCBAAFFFB7988FFF3C211AB500000045000000260000
          00150000000B0000000500000002000000000000000000000000000000000000
          00000000000500000013B28778FFF6EEE9FFBA9C92FF3F241CC1000000680000
          00500000003F0000003700000031000000370000003F00000051000000685942
          3BC2C89F92FFDCBAAFFFB1A993FFF7EEE8FFB8988FFF3D221AB70000004D0000
          002D000000180000000D00000006000000000000000000000000000000000000
          00000000000500000013B48879FFF7EEEAFFF7EFE9FFBB9D93FF40241CC40000
          00730000005E0000004E000000490000004E0000005E000000735A433BC5C7A3
          93FFDCBAB2FF81A483FF247844FFA0DAC5FFF6ECE9FFB99A90FF3D221AB60000
          004B0000002D000000170000000B000000000000000000000000000000000000
          00000000000400000012B58A7AFFF8F0EBFFEDD9C0FFF8EFEBFFBB9D93FF4025
          1DC70000007C0000006900000062000000690000007C5A443DC7C9A496FFE0C1
          B5FF83A98AFF2A8C5BFF267C4BFF52CBA8FFA0DBC6FFF7EEE9FFB99A91FF3D22
          1BB2000000450000002600000011000000010000000000000000000000000000
          00000000000400000011B58B7CFFF7F0EBFFE3C497FFEDDAC1FFF8F0EBFFBC9E
          94FF41251DCA000000850000007C000000855B463DCACAA899FFE0C5B5FF82AE
          8FFF2D9563FF469466FF638B60FF6CD0B0FF51CBA8FFA0DBC6FFF7EEE9FFB99A
          91FF3E231CAC000000380000001B000000020000000100000000000000000000
          00000000000400000010B68D7DFFF8F1ECFFE4C699FFE4C698FFEDDBC2FFF8F0
          ECFFBD9F95FF40271ECD000000965C463ECDCCA99AFFE0C8B9FF86B090FF569A
          6DFF859A6EFF998F5DFFA37840FFB6D4B8FF6CD0B1FF51CBA7FFA1DBC7FFF7EF
          EBFFBA9C92FF3F231CA400000028000000060000000200000000000000000000
          00000000000400000010B88F7FFFF8F1EEFFE5C79AFFE4C69AFFE5C69AFFEEDC
          C4FFF8F0ECFFBE9F95FF623A2EE9CBAA9BFFE2CAB9FFA2B194FF8C9668FFA388
          55FFB78147FFB87E44FFAF7139FFD8CFADFF97D5B9FF57CEACFF52CBA8FFA0DB
          C6FFF8F0EBFFBA9D93FF3F241D9B0000000C0000000300000001000000000000
          0000000000040000000FB89081FFF8F1EFFFE5C99DFFE5C89BFFE5C79BFFE5C7
          9BFFEEDDC5FFF7F1EEFFE9D9D4FFE1CAB8FFB8A88CFFA07B48FFA2713FFFA671
          3DFFAB7339FFAD7034FFA5662CFFD6BB91FFC3D8BEFF62D1B2FF57CEACFF51CB
          A8FFA1DCC6FFF8F0EBFFB38879FF000000110000000400000001000000000000
          0000000000030000000EB99182FFF8F3EFFFEDDAB3FFE9D0A6FFE6C99CFFE6C9
          9CFFE5C99EFFE8E3D2FFF6F0EDFFC8A684FFA37340FF7C5A3CFF2C3B6DFF6F4A
          29FF945E2AFFA3682EFFA36329FFC3A680FFD8D2B5FF9DDAC0FF61D3B4FF57CE
          ACFF51CBA8FFF8F1ECFFB48A7BFF000000130000000500000001000000000000
          0000000000030000000DBB9384FFF9F3F0FFBAE7DBFFE4DFBDFFECD7AFFFE9D1
          A9FFEBD4B0FFE9D3B0FFE8DAC4FFAA7742FF7E5B37FF273F78FF4794D0FF1E2E
          5EFF704A26FF945F2CFF9E6128FFC0A47FFFD3B997FFD5DFCBFF88DDC4FF74DA
          BFFF67D5B7FFF8F2EEFFB68B7CFF000000130000000500000000000000000000
          0000000000030000000CBC9585FFF9F5F1FF79D9C2FFB9ECE6FFE5E8D0FFF0DF
          BFFFECD5B2FFE6D2AFFFD9C9AEFF8D6639FF2F3E6CFF4991CCFF43A3E3FF4188
          C3FF242D53FF7C5025FF955B26FFBDA07DFFC7AC89FFDDCEAFFFC3E1CEFF7FDD
          C4FF79DCC2FFF8F1EFFFB68D7DFF000000120000000500000000000000000000
          0000000000030000000BBD9687FFF9F5F1FF6DD5B7FF87DEC9FFBFEEE9FFEBE7
          CDFFEBDABAFFDBC9A8FFBCB099FF41455EFF4682BEFF4CA8E5FF3F9FE2FF4AA7
          E5FF3974B0FF333247FF805123FFB39978FFC5AB88FFD0B795FFE1D9BFFFB7E2
          CEFF7FDEC6FFF8F2EFFFB78E7FFF000000110000000400000000000000000000
          0000000000030000000BBE9789FFFAF5F3FF6BD4B6FF72D7BBFF96E3D2FFCAEC
          E3FFE6DABEFFC6B69BFF697082FF4073B0FF55AEE7FF43A3E2FF43A2E3FF42A1
          E2FF53ADE6FF30619EFF493E44FFA08B6EFFBFA685FFCEB493FFDFC8A7FFE2DE
          C5FFBFE3D0FFF9F3F0FFB89080FF000000100000000400000000000000000000
          0000000000020000000ABF988AFFFAF6F3FF69D4B5FF6ED6B9FF77D9BEFFAEE6
          DEFFCCCEBCFF908F8AFF335C9CFF63B6E8FF48A6E3FF47A5E4FF46A5E4FF45A4
          E3FF46A4E3FF5DB1E6FF214483FF79716CFFB19B7EFFCAB493FFD7C09FFFE8D4
          B4FFE7DDC2FFF9F3F0FFBA9182FF0000000F0000000400000000000000000000
          00000000000200000008C09A8BFFF9F7F5FFB3E6D6FF6DD5B6FF71D6BAFF8ED3
          C4FFA4B7AFFF37568EFF6CB1DFFF52ADE6FF4CA9E5FF4BA8E5FF4AA8E5FF4AA7
          E5FF49A7E4FF51ABE6FF559BD0FF2E4174FF9F9180FFC2AB8DFFD5BE9FFFE0CA
          ABFFEDDABBFFF9F5F1FFBB9283FF0000000E0000000400000000000000000000
          000000000001000000055F4D4584DDC9C0FFFAF7F5FFB4E5D5FF6CCEB3FF71BF
          AAFF517297FF5F95C7FF61B8EAFF51ADE7FF51ACE7FF4FACE7FF4FACE6FF4EAB
          E6FF4EAAE6FF4CAAE6FF5FB5E9FF3E72ADFF59627BFFB4A795FFCFBB9CFFDECA
          ABFFE9D7B6FFFAF6F2FFBC9485FF0000000E0000000300000000000000000000
          0000000000010000000200000006604E4685DCC9C0FFF6F4F2FFA7D4C7FF539B
          95FF3E69A5FF7EC7EEFF56B1E8FF56B1E8FF55B0E8FF54B0E8FF54AFE7FF53AF
          E7FF53AEE7FF51ADE7FF52ADE6FF6BB8E7FF2C508FFF8F8E92FFC9BDAAFFDCC9
          ABFFE6D4B5FFFAF6F3FFBD9686FF0000000D0000000300000000000000000000
          000000000000000000010000000200000006604E4684D6C3BBFFDCDAD7FF4269
          98FF7EB5DBFF67BBECFF5BB4E9FF5AB4E9FF5AB4E9FF5AB3E9FF59B2E8FF58B2
          E9FF57B1E8FF57B0E8FF56B0E8FF60B5EAFF5F9ECFFF3B4F7DFFBFB7B0FFDBCF
          BEFFE5D4B7FFFAF7F5FFBE9788FF0000000C0000000300000000000000000000
          000000000000000000000000000100000002000000095A49438B9D99A0FF4672
          ACFF90D1F3FF61B9ECFF61B9EBFF60B9EBFF65BAECFF8CD0F2FFA6DDF6FFAADF
          F6FF9AD7F3FF6DBFEDFF5AB4E9FF5AB3E9FF79C6EFFF315C9CFF8D8287FFD8D1
          CEFFE9DECFFFFAF8F5FFBF998AFF0000000B0000000300000000000000000000
          00000000000000000000000000000000000100000006000000193B5278DB82B0
          D6FF7BC7EFFF66BDEDFF66BDEDFF6EC1EDFF7CB9DDFF4A84B8FF3470AAFF4983
          B5FF89BFDFFFAFE1F7FF74C3EEFF5FB8EAFF6EC0EDFF619ACBFF32446CDDC3AF
          A6FFECE8E5FFF9F7F5FFC09A8BFF0000000A0000000300000000000000000000
          00000000000000000000000000000000000100000006000000182D5893EEADDA
          F0FF70C3EFFF6CC1EEFF6BC0EEFF6FB1DAFF2B5C8FE70E1E2F6D0000002C0E1E
          2F6F2B5F92EA8CBFDEFFA3DBF5FF64BBECFF68BDEDFF7FBFE6FF234781E85443
          3D95D8C4BBFFF9F7F6FFC29C8DFF000000090000000200000000000000000000
          00000000000000000000000000000000000000000005010102173665A4FFBDE7
          F9FF73C6F0FF70C5EFFF73C6F0FF4177ADFF0C1A2962000000170000000F0000
          00180E1D2E6A487EB0FFB8E6F8FF68BFEDFF68BEEEFF91D3F3FF2B5495FD0000
          00265D4B4589DEC9C1FFC29D8EFF000000080000000200000000000000000000
          000000000000000000000000000000000000000000040000001034619EF5BCE4
          F6FF82CFF2FF8AD3F4FF9ADBF7FF2E609AFF020507290000000D000000070000
          000E04080D3531659FFFC3EDFBFF80CCF1FF72C5EFFF8FCDEDFF2A528EEF0000
          001D0000000D604E4683DDC6BCFF000000050000000100000000000000000000
          000000000000000000000000000000000000000000020000000A2B5280C9A8CE
          E6FFB9E8F9FFA7E3F9FFA6E2F8FF4172A6FF0B18285B000000100000000B0000
          00120D1B2C644876A9FFB7E8FAFF9CDCF6FF9BDBF6FF85BDE0FF244576CB0000
          0015000000070000000500000004000000020000000100000000000000000000
          00000000000000000000000000000000000000000001000000061C334F7E86AC
          D1FFD9F4FDFFB3E9FAFFB0E8FAFF8ABEDCFF244D82E70D1A2C5F0102031B0D1B
          2D61244D82E88FBCD9FFABE5F9FFA8E2F9FFBAE9F9FF709BC7FF1629447E0000
          000C000000030000000100000001000000010000000000000000000000000000
          0000000000000000000000000000000000000000000000000002030508144170
          A4ECD9EEF7FFCEF3FCFFB9ECFBFFB8ECFBFF8FC1DCFF4976A7FF2B5791FF4977
          A7FF92C2DDFFB5EAFBFFB2E9FAFFB5E9FAFFBEE2F3FF386198E80305081C0000
          0006000000010000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000001000000031628
          3C5C79A3CBFFE6F9FEFFD4F5FDFFC3F1FCFFBFEFFCFFBFEFFCFFBEEFFCFFBDEE
          FCFFBDEEFCFFBCEEFCFFBEEEFCFFD0F4FCFF6A93C1FF101F3158000000080000
          0002000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000010000
          00021C344D7278A1CAFFDBEDF6FFE7FAFEFFDAF7FEFFD0F5FDFFC8F3FDFFC8F3
          FDFFCFF4FDFFD9F6FEFFD1E9F4FF7199C4FF1A304B7600000007000000020000
          0001000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          00000000000115273A524273A4E588AED2FFBCD5E8FFD2E6F1FFEFFCFEFFD2E6
          F1FFBBD4E7FF83A9CEFF3D6B9EE3132335540000000400000002000000010000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          00000000000000000000020406091B324966305880B4386897D5427AB4FF3766
          96D52E567EB5192F45650204060B000000020000000100000000000000000000
          0000000000000000000000000000000000000000000000000000}
        TabOrder = 28
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'HelveticaNeue'
        Font.Style = [fsBold]
        Font.Quality = fqDraft
        ParentFont = False
      end
      object cxButton6: TcxButton
        Left = 871
        Top = 225
        Width = 154
        Height = 50
        Hint = 'Excluir cadastro.'
        Caption = 'Inf. Financeira'
        LookAndFeel.NativeStyle = False
        LookAndFeel.SkinName = 'Office2013White'
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
        TabOrder = 29
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'HelveticaNeue'
        Font.Style = [fsBold]
        ParentFont = False
        OnClick = cxButton6Click
      end
      object edDATA: TEdit
        Left = 252
        Top = 4
        Width = 86
        Height = 26
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -15
        Font.Name = 'Tahoma'
        Font.Style = [fsBold]
        ParentFont = False
        TabOrder = 1
      end
      object edCodigo_Cliente: TEdit
        Left = 121
        Top = 100
        Width = 52
        Height = 26
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -15
        Font.Name = 'Tahoma'
        Font.Style = [fsBold]
        ParentFont = False
        TabOrder = 7
      end
      object edRazao_Social: TEdit
        Left = 214
        Top = 100
        Width = 628
        Height = 26
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -15
        Font.Name = 'Tahoma'
        Font.Style = [fsBold]
        ParentFont = False
        TabOrder = 9
      end
      object edCPF_CNPJ: TEdit
        Left = 124
        Top = 132
        Width = 185
        Height = 26
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -15
        Font.Name = 'Tahoma'
        Font.Style = [fsBold]
        ParentFont = False
        TabOrder = 10
      end
      object edContato_Nome: TEdit
        Left = 385
        Top = 132
        Width = 203
        Height = 26
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -15
        Font.Name = 'Tahoma'
        Font.Style = [fsBold]
        ParentFont = False
        TabOrder = 11
      end
      object edContato_Celular: TEdit
        Left = 665
        Top = 132
        Width = 177
        Height = 26
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -15
        Font.Name = 'Tahoma'
        Font.Style = [fsBold]
        ParentFont = False
        TabOrder = 12
      end
      object edQtdeItens: TEdit
        Left = 75
        Top = 615
        Width = 65
        Height = 26
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -15
        Font.Name = 'Tahoma'
        Font.Style = [fsBold]
        ParentFont = False
        TabOrder = 30
      end
      object edValorItens: TEdit
        Left = 441
        Top = 615
        Width = 108
        Height = 26
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -15
        Font.Name = 'Tahoma'
        Font.Style = [fsBold]
        ParentFont = False
        TabOrder = 31
      end
      object edDescontoGeral: TEdit
        Left = 764
        Top = 615
        Width = 108
        Height = 26
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -15
        Font.Name = 'Tahoma'
        Font.Style = [fsBold]
        ParentFont = False
        TabOrder = 32
        OnExit = edDescontoGeralExit
      end
      object edValorLiquido: TEdit
        Left = 1081
        Top = 612
        Width = 108
        Height = 32
        Color = clYellow
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -20
        Font.Name = 'Tahoma'
        Font.Style = [fsBold]
        ParentFont = False
        TabOrder = 33
      end
      object edCFOP: TEdit
        Left = 747
        Top = 37
        Width = 95
        Height = 26
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -15
        Font.Name = 'Tahoma'
        Font.Style = [fsBold]
        ParentFont = False
        TabOrder = 4
      end
      object edPROD_CODIGO: TEdit
        Left = 3
        Top = 297
        Width = 79
        Height = 26
        CharCase = ecUpperCase
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -15
        Font.Name = 'Tahoma'
        Font.Style = [fsBold]
        ParentFont = False
        TabOrder = 13
        OnExit = edPROD_CODIGOExit
      end
      object cxButton7: TcxButton
        Left = 84
        Top = 299
        Width = 27
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
        TabOrder = 34
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = [fsBold]
        ParentFont = False
        OnClick = cxButton7Click
      end
      object edDESCRICAO_PRODUTO: TEdit
        Left = 115
        Top = 299
        Width = 355
        Height = 26
        CharCase = ecUpperCase
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -15
        Font.Name = 'Tahoma'
        Font.Style = [fsBold]
        ParentFont = False
        ReadOnly = True
        TabOrder = 35
      end
      object edPRECO: TEdit
        Left = 470
        Top = 299
        Width = 95
        Height = 26
        CharCase = ecUpperCase
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -15
        Font.Name = 'Tahoma'
        Font.Style = [fsBold]
        ParentFont = False
        ReadOnly = True
        TabOrder = 36
      end
      object edQUANTIDADE: TEdit
        Left = 566
        Top = 299
        Width = 95
        Height = 26
        CharCase = ecUpperCase
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -15
        Font.Name = 'Tahoma'
        Font.Style = [fsBold]
        ParentFont = False
        TabOrder = 14
        OnExit = edQUANTIDADEExit
      end
      object edUNIDADE_MEDIDA: TEdit
        Left = 662
        Top = 299
        Width = 65
        Height = 26
        TabStop = False
        CharCase = ecUpperCase
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -15
        Font.Name = 'Tahoma'
        Font.Style = [fsBold]
        ParentFont = False
        ReadOnly = True
        TabOrder = 37
      end
      object bIncluirProduto: TcxButton
        Left = 872
        Top = 290
        Width = 103
        Height = 35
        Caption = 'Incluir'
        LookAndFeel.NativeStyle = False
        LookAndFeel.SkinName = 'Office2013White'
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
        TabOrder = 16
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'HelveticaNeue'
        Font.Style = [fsBold]
        ParentFont = False
        OnClick = bIncluirProdutoClick
      end
      object btAlterarProduto: TcxButton
        Left = 993
        Top = 289
        Width = 105
        Height = 35
        Caption = 'Alterar'
        LookAndFeel.NativeStyle = False
        LookAndFeel.SkinName = 'Office2013White'
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
        TabOrder = 38
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'HelveticaNeue'
        Font.Style = [fsBold]
        Font.Quality = fqDraft
        ParentFont = False
        OnClick = btAlterarProdutoClick
      end
      object bCancelarProduto: TcxButton
        Left = 1117
        Top = 289
        Width = 105
        Height = 35
        Caption = 'Cancelar'
        Enabled = False
        LookAndFeel.NativeStyle = False
        LookAndFeel.SkinName = 'Office2013White'
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
        TabOrder = 39
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'HelveticaNeue'
        Font.Style = [fsBold]
        ParentFont = False
        OnClick = bCancelarProdutoClick
      end
      object edCODIGO_VENDA: TEdit
        Left = 121
        Top = 2
        Width = 86
        Height = 26
        TabStop = False
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -15
        Font.Name = 'Tahoma'
        Font.Style = [fsBold]
        ParentFont = False
        TabOrder = 0
        OnExit = edCODIGO_VENDAExit
      end
      object edCFOP_Produto: TEdit
        Left = 727
        Top = 299
        Width = 95
        Height = 26
        CharCase = ecUpperCase
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -15
        Font.Name = 'Tahoma'
        Font.Style = [fsBold]
        ParentFont = False
        TabOrder = 15
        OnExit = edCFOP_ProdutoExit
      end
      object edTPMOV: TEdit
        Left = 487
        Top = 4
        Width = 52
        Height = 26
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -15
        Font.Name = 'Tahoma'
        Font.Style = [fsBold]
        ParentFont = False
        TabOrder = 2
        OnExit = edTPMOVExit
        OnKeyDown = edTPMOVKeyDown
      end
      object edTPMOV_DESCRICAO: TEdit
        Left = 541
        Top = 4
        Width = 271
        Height = 26
        TabStop = False
        Color = clSilver
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -15
        Font.Name = 'Tahoma'
        Font.Style = [fsBold]
        ParentFont = False
        ReadOnly = True
        TabOrder = 40
      end
      object bPesquisaTPMOV: TcxButton
        Left = 813
        Top = 4
        Width = 27
        Height = 26
        Hint = 'Pesquisa Tipo de Movimento'
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
        TabOrder = 41
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = [fsBold]
        ParentFont = False
        OnClick = bPesquisaTPMOVClick
      end
      object edPlaca: TEdit
        Left = 75
        Top = 568
        Width = 120
        Height = 26
        Hint = 'F1 - Pesquisa Ve'#237'culos'
        CharCase = ecUpperCase
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -15
        Font.Name = 'Tahoma'
        Font.Style = [fsBold]
        ParentFont = False
        ParentShowHint = False
        ShowHint = True
        TabOrder = 42
        OnExit = edPlacaExit
        OnKeyDown = edPlacaKeyDown
      end
      object edPLACA_DESCRICAO: TEdit
        Left = 196
        Top = 568
        Width = 297
        Height = 26
        TabStop = False
        CharCase = ecUpperCase
        Color = clSilver
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -15
        Font.Name = 'Tahoma'
        Font.Style = [fsBold]
        ParentFont = False
        ReadOnly = True
        TabOrder = 43
      end
      object edTRANSP_RAZAO_SOCIAL: TEdit
        Left = 657
        Top = 568
        Width = 566
        Height = 26
        TabStop = False
        CharCase = ecUpperCase
        Color = clSilver
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -15
        Font.Name = 'Tahoma'
        Font.Style = [fsBold]
        ParentFont = False
        ReadOnly = True
        TabOrder = 44
      end
      object btn_Tipo: TcxButton
        Left = 495
        Top = 569
        Width = 22
        Height = 22
        Hint = 'Pesquisa Ve'#237'culos'
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
        ParentShowHint = False
        ShowHint = True
        TabOrder = 45
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = [fsBold]
        ParentFont = False
        OnClick = btn_TipoClick
      end
    end
  end
  object DS_C_VENDAS: TDataSource
    DataSet = SQL_C_VENDAS
    Left = 384
    Top = 232
  end
  object SQL_C_VENDAS: TFDQuery
    AfterScroll = SQL_C_VENDASAfterScroll
    Connection = Module.connection
    SQL.Strings = (
      'SELECT v.CODIGO_VENDA, V.DATA, V.HORA, V.CAIXA, '
      
        '(SELECT U.USUARIO FROM USUARIO U WHERE U.CODIGO = V.OPERADOR) AS' +
        ' OPERADOR,'
      
        '(SELECT C.NOME FROM COLABORADOR C WHERE C.CODIGO = V.COD_VENDEDO' +
        'R) AS "VENDEDOR",'
      
        'V.NOME_CLIENTE, V.TOTAL_VENDA, V.VALOR_PAGO,v.TROCO,V.STATUS,V.C' +
        'OD_NFCE, v.comanda'
      'FROM VENDA V')
    Left = 480
    Top = 224
    object SQL_C_VENDASCODIGO_VENDA: TFDAutoIncField
      FieldName = 'CODIGO_VENDA'
      Origin = 'CODIGO_VENDA'
      ProviderFlags = [pfInWhere, pfInKey]
      ReadOnly = True
    end
    object SQL_C_VENDASDATA: TDateField
      AutoGenerateValue = arDefault
      FieldName = 'DATA'
      Origin = 'DATA'
    end
    object SQL_C_VENDASHORA: TTimeField
      AutoGenerateValue = arDefault
      FieldName = 'HORA'
      Origin = 'HORA'
    end
    object SQL_C_VENDASCAIXA: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'CAIXA'
      Origin = 'CAIXA'
      Size = 5
    end
    object SQL_C_VENDASOPERADOR: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'OPERADOR'
      Origin = 'OPERADOR'
      ProviderFlags = []
      ReadOnly = True
      Size = 50
    end
    object SQL_C_VENDASVENDEDOR: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'VENDEDOR'
      Origin = 'VENDEDOR'
      ProviderFlags = []
      ReadOnly = True
      Size = 50
    end
    object SQL_C_VENDASNOME_CLIENTE: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'NOME_CLIENTE'
      Origin = 'NOME_CLIENTE'
      Size = 50
    end
    object SQL_C_VENDASTOTAL_VENDA: TBCDField
      AutoGenerateValue = arDefault
      FieldName = 'TOTAL_VENDA'
      Origin = 'TOTAL_VENDA'
      currency = True
      Precision = 10
    end
    object SQL_C_VENDASVALOR_PAGO: TBCDField
      AutoGenerateValue = arDefault
      FieldName = 'VALOR_PAGO'
      Origin = 'VALOR_PAGO'
      currency = True
      Precision = 10
    end
    object SQL_C_VENDASSTATUS: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'STATUS'
      Origin = 'STATUS'
      FixedChar = True
      Size = 9
    end
    object SQL_C_VENDASCOD_NFCE: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'COD_NFCE'
      Origin = 'COD_NFCE'
      Size = 10
    end
    object SQL_C_VENDASTROCO: TBCDField
      AutoGenerateValue = arDefault
      FieldName = 'TROCO'
      Origin = 'TROCO'
      Precision = 10
    end
    object SQL_C_VENDAScomanda: TIntegerField
      AutoGenerateValue = arDefault
      FieldName = 'comanda'
      Origin = 'comanda'
    end
  end
  object SQL_Natureza_Operacao: TFDQuery
    Connection = Module.connection
    SQL.Strings = (
      'SELECT v.CODIGO_VENDA, V.DATA, V.HORA, V.CAIXA, '
      
        '(SELECT U.USUARIO FROM USUARIO U WHERE U.CODIGO = V.OPERADOR) AS' +
        ' OPERADOR,'
      
        '(SELECT C.NOME FROM COLABORADOR C WHERE C.CODIGO = V.COD_VENDEDO' +
        'R) AS "VENDEDOR",'
      
        'V.NOME_CLIENTE, V.TOTAL_VENDA, V.VALOR_PAGO,v.TROCO,V.STATUS,V.C' +
        'OD_NFCE, v.comanda'
      'FROM VENDA V')
    Left = 408
    Top = 64
  end
  object SQL_Auxiliar: TFDQuery
    Connection = Module.connection
    SQL.Strings = (
      'SELECT v.CODIGO_VENDA, V.DATA, V.HORA, V.CAIXA, '
      
        '(SELECT U.USUARIO FROM USUARIO U WHERE U.CODIGO = V.OPERADOR) AS' +
        ' OPERADOR,'
      
        '(SELECT C.NOME FROM COLABORADOR C WHERE C.CODIGO = V.COD_VENDEDO' +
        'R) AS "VENDEDOR",'
      
        'V.NOME_CLIENTE, V.TOTAL_VENDA, V.VALOR_PAGO,v.TROCO,V.STATUS,V.C' +
        'OD_NFCE, v.comanda'
      'FROM VENDA V')
    Left = 168
    Top = 304
  end
  object FDQuery1: TFDQuery
    AfterScroll = SQL_C_VENDASAfterScroll
    Connection = Module.connection
    SQL.Strings = (
      'SELECT v.CODIGO_VENDA, V.DATA, V.HORA, V.CAIXA, '
      
        '(SELECT U.USUARIO FROM USUARIO U WHERE U.CODIGO = V.OPERADOR) AS' +
        ' OPERADOR,'
      
        '(SELECT C.NOME FROM COLABORADOR C WHERE C.CODIGO = V.COD_VENDEDO' +
        'R) AS "VENDEDOR",'
      
        'V.NOME_CLIENTE, V.TOTAL_VENDA, V.VALOR_PAGO,v.TROCO,V.STATUS,V.C' +
        'OD_NFCE, v.comanda'
      'FROM VENDA V')
    Left = 352
    Top = 384
    object FDAutoIncField1: TFDAutoIncField
      FieldName = 'CODIGO_VENDA'
      Origin = 'CODIGO_VENDA'
      ProviderFlags = [pfInWhere, pfInKey]
      ReadOnly = True
    end
    object DateField1: TDateField
      AutoGenerateValue = arDefault
      FieldName = 'DATA'
      Origin = 'DATA'
    end
    object TimeField1: TTimeField
      AutoGenerateValue = arDefault
      FieldName = 'HORA'
      Origin = 'HORA'
    end
    object StringField1: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'CAIXA'
      Origin = 'CAIXA'
      Size = 5
    end
    object StringField2: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'OPERADOR'
      Origin = 'OPERADOR'
      ProviderFlags = []
      ReadOnly = True
      Size = 50
    end
    object StringField3: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'VENDEDOR'
      Origin = 'VENDEDOR'
      ProviderFlags = []
      ReadOnly = True
      Size = 50
    end
    object StringField4: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'NOME_CLIENTE'
      Origin = 'NOME_CLIENTE'
      Size = 50
    end
    object BCDField1: TBCDField
      AutoGenerateValue = arDefault
      FieldName = 'TOTAL_VENDA'
      Origin = 'TOTAL_VENDA'
      currency = True
      Precision = 10
    end
    object BCDField2: TBCDField
      AutoGenerateValue = arDefault
      FieldName = 'VALOR_PAGO'
      Origin = 'VALOR_PAGO'
      currency = True
      Precision = 10
    end
    object StringField5: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'STATUS'
      Origin = 'STATUS'
      FixedChar = True
      Size = 9
    end
    object StringField6: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'COD_NFCE'
      Origin = 'COD_NFCE'
      Size = 10
    end
    object BCDField3: TBCDField
      AutoGenerateValue = arDefault
      FieldName = 'TROCO'
      Origin = 'TROCO'
      Precision = 10
    end
    object IntegerField1: TIntegerField
      AutoGenerateValue = arDefault
      FieldName = 'comanda'
      Origin = 'comanda'
    end
  end
  object SQL_VENDA: TFDQuery
    BeforePost = SQL_VENDABeforePost
    Connection = Module.connection
    SQL.Strings = (
      'SELECT *'
      'FROM VENDA ')
    Left = 616
    Top = 336
  end
  object DS_VENDAS: TDataSource
    DataSet = SQL_VENDA
    Left = 664
    Top = 392
  end
  object SQL_VENDA_ITEM: TFDQuery
    Connection = Module.connection
    SQL.Strings = (
      'SELECT *'
      'FROM VENDA_ITEM')
    Left = 728
    Top = 336
    object SQL_VENDA_ITEMCODIGO: TFDAutoIncField
      FieldName = 'CODIGO'
      Origin = 'CODIGO'
      ProviderFlags = [pfInWhere, pfInKey]
      ReadOnly = True
    end
    object SQL_VENDA_ITEMCODIGO_VENDA: TIntegerField
      AutoGenerateValue = arDefault
      FieldName = 'CODIGO_VENDA'
      Origin = 'CODIGO_VENDA'
    end
    object SQL_VENDA_ITEMCODIGO_ITEM_VENDA: TIntegerField
      AutoGenerateValue = arDefault
      FieldName = 'CODIGO_ITEM_VENDA'
      Origin = 'CODIGO_ITEM_VENDA'
    end
    object SQL_VENDA_ITEMCODIGO_PRODUTO: TIntegerField
      AutoGenerateValue = arDefault
      FieldName = 'CODIGO_PRODUTO'
      Origin = 'CODIGO_PRODUTO'
    end
    object SQL_VENDA_ITEMDESCRICAO: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'DESCRICAO'
      Origin = 'DESCRICAO'
      Size = 100
    end
    object SQL_VENDA_ITEMUNIDADE: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'UNIDADE'
      Origin = 'UNIDADE'
      Size = 10
    end
    object SQL_VENDA_ITEMQUANTIDADE: TSingleField
      AutoGenerateValue = arDefault
      FieldName = 'QUANTIDADE'
      Origin = 'QUANTIDADE'
    end
    object SQL_VENDA_ITEMPRECO: TBCDField
      AutoGenerateValue = arDefault
      FieldName = 'PRECO'
      Origin = 'PRECO'
      Precision = 10
    end
    object SQL_VENDA_ITEMACRESCIMO: TBCDField
      AutoGenerateValue = arDefault
      FieldName = 'ACRESCIMO'
      Origin = 'ACRESCIMO'
      Precision = 10
    end
    object SQL_VENDA_ITEMDESCONTO: TBCDField
      AutoGenerateValue = arDefault
      FieldName = 'DESCONTO'
      Origin = 'DESCONTO'
      Precision = 10
    end
    object SQL_VENDA_ITEMPRECO_TOTAL: TBCDField
      AutoGenerateValue = arDefault
      FieldName = 'PRECO_TOTAL'
      Origin = 'PRECO_TOTAL'
      Precision = 10
    end
    object SQL_VENDA_ITEMrateio_desconto: TBCDField
      AutoGenerateValue = arDefault
      FieldName = 'rateio_desconto'
      Origin = 'rateio_desconto'
      Precision = 10
    end
    object SQL_VENDA_ITEMrateio_acrescimo: TBCDField
      AutoGenerateValue = arDefault
      FieldName = 'rateio_acrescimo'
      Origin = 'rateio_acrescimo'
      Precision = 10
    end
    object SQL_VENDA_ITEMpreco_custo: TBCDField
      AutoGenerateValue = arDefault
      FieldName = 'preco_custo'
      Origin = 'preco_custo'
      Precision = 10
    end
    object SQL_VENDA_ITEMNFe_Veiculo_Chassi: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'NFe_Veiculo_Chassi'
      Origin = 'NFe_Veiculo_Chassi'
      Size = 17
    end
    object SQL_VENDA_ITEMVI_CFOP_CSOSN: TStringField
      Alignment = taCenter
      AutoGenerateValue = arDefault
      DisplayLabel = 'CFOP'
      FieldName = 'VI_CFOP_CSOSN'
      Origin = 'VI_CFOP_CSOSN'
      Size = 4
    end
  end
  object DS_VENDA_ITEM: TDataSource
    DataSet = SQL_VENDA_ITEM
    Left = 752
    Top = 392
  end
  object SQL_CLIENTE: TFDQuery
    Connection = Module.connection
    SQL.Strings = (
      'SELECT v.CODIGO_VENDA, V.DATA, V.HORA, V.CAIXA, '
      
        '(SELECT U.USUARIO FROM USUARIO U WHERE U.CODIGO = V.OPERADOR) AS' +
        ' OPERADOR,'
      
        '(SELECT C.NOME FROM COLABORADOR C WHERE C.CODIGO = V.COD_VENDEDO' +
        'R) AS "VENDEDOR",'
      
        'V.NOME_CLIENTE, V.TOTAL_VENDA, V.VALOR_PAGO,v.TROCO,V.STATUS,V.C' +
        'OD_NFCE, v.comanda'
      'FROM VENDA V')
    Left = 456
    Top = 368
  end
  object SQL_PRODUTO: TFDQuery
    Connection = Module.connection
    SQL.Strings = (
      'SELECT v.CODIGO_VENDA, V.DATA, V.HORA, V.CAIXA, '
      
        '(SELECT U.USUARIO FROM USUARIO U WHERE U.CODIGO = V.OPERADOR) AS' +
        ' OPERADOR,'
      
        '(SELECT C.NOME FROM COLABORADOR C WHERE C.CODIGO = V.COD_VENDEDO' +
        'R) AS "VENDEDOR",'
      
        'V.NOME_CLIENTE, V.TOTAL_VENDA, V.VALOR_PAGO,v.TROCO,V.STATUS,V.C' +
        'OD_NFCE, v.comanda'
      'FROM VENDA V')
    Left = 248
    Top = 312
  end
end
