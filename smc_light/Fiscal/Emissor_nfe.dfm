object frm_emissor_nfe2: Tfrm_emissor_nfe2
  Left = 0
  Top = 0
  BorderIcons = [biSystemMenu]
  BorderStyle = bsSingle
  Caption = 'Emissor | NFe'
  ClientHeight = 678
  ClientWidth = 1448
  Color = clBtnFace
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
    Width = 1448
    Height = 678
    Align = alClient
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'Tahoma'
    Font.Style = [fsBold]
    ParentFont = False
    TabOrder = 0
    Properties.ActivePage = tb_pedido
    Properties.CustomButtons.Buttons = <>
    LookAndFeel.NativeStyle = False
    LookAndFeel.SkinName = 'Metropolis'
    ClientRectBottom = 676
    ClientRectLeft = 2
    ClientRectRight = 1446
    ClientRectTop = 28
    object tb_consulta: TcxTabSheet
      Caption = 'Consulta'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      ImageIndex = 0
      ParentFont = False
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
      object Label7: TLabel
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
      object Label23: TLabel
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
      object GroupBox7: TGroupBox
        Left = 479
        Top = 5
        Width = 775
        Height = 56
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
        TabOrder = 1
        object Label20: TLabel
          Left = 9
          Top = 24
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
          Top = 20
          Width = 256
          Height = 26
          TabOrder = 0
        end
        object RadioButton3: TRadioButton
          Left = 388
          Top = 25
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
          Left = 479
          Top = 25
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
          Left = 575
          Top = 25
          Width = 65
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
          Top = 25
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
      object GroupBox1: TGroupBox
        Left = 318
        Top = 70
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
        TabOrder = 2
        object Label16: TLabel
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
        object Label17: TLabel
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
        object Label19: TLabel
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
      end
      object GroupBox6: TGroupBox
        Left = 11
        Top = 70
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
        TabOrder = 3
        object Label8: TLabel
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
        object Label12: TLabel
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
          Left = 66
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
      object GroupBox4: TGroupBox
        Left = 247
        Top = 5
        Width = 210
        Height = 56
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
          Top = 24
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
          Top = 24
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
      object DBGrid1: TDBGrid
        Left = 11
        Top = 149
        Width = 1243
        Height = 448
        Hint = 'Duplo clique para abrir a nota'
        Color = 12827392
        FixedColor = clCream
        GradientEndColor = clGray
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = [fsBold]
        Options = [dgTitles, dgIndicator, dgColLines, dgRowLines, dgTabs]
        ParentFont = False
        TabOrder = 5
        TitleFont.Charset = DEFAULT_CHARSET
        TitleFont.Color = clWindowText
        TitleFont.Height = -13
        TitleFont.Name = 'Tahoma'
        TitleFont.Style = [fsBold]
        Columns = <
          item
            Expanded = False
            Title.Caption = 'N'#186' Pedido'
            Width = 79
            Visible = True
          end
          item
            Expanded = False
            Title.Caption = 'N'#186' NF-e'
            Visible = True
          end
          item
            Expanded = False
            Title.Caption = 'Nome Cliente'
            Width = 357
            Visible = True
          end
          item
            Expanded = False
            Title.Caption = 'Valor NF-e'
            Width = 87
            Visible = True
          end
          item
            Expanded = False
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
      object GroupBox3: TGroupBox
        Left = 743
        Top = 70
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
      object Panel1: TPanel
        Left = 1274
        Top = 11
        Width = 153
        Height = 629
        TabOrder = 0
        object btn_status: TcxButton
          Left = 5
          Top = 215
          Width = 148
          Height = 44
          Caption = 'Consultar'#13'Status NF-e'
          LookAndFeel.Kind = lfUltraFlat
          LookAndFeel.NativeStyle = False
          LookAndFeel.SkinName = 'Metropolis'
          OptionsImage.Glyph.Data = {
            36100000424D3610000000000000360000002800000020000000200000000100
            2000000000000010000000000000000000000000000000000000000000000000
            0000000000000000000000000000000000000000000000000000000000000000
            0000000000000000000000000000000000000000000100000003000000050000
            00080000000A0000000B0000000C0000000B0000000A00000008000000050000
            0003000000010000000000000000000000000000000000000000000000000000
            0000000000000000000000000000000000000000000000000000000000000000
            000000000000000000000000000100000003000000070000000E000000170000
            0021000000280000002D0000002F0000002D0000002900000022000000190000
            000F000000080000000400000001000000000000000000000000000000000000
            0000000000000000000000000000000000000000000000000000000000000000
            00010000000100000002000000060000000F0000001C04020231331F1A7B663E
            32C17E4C3DDE925745F49A5C4AFF8F5543F4794738DE61392CC2301B167D0302
            02340000001D0000000F00000006000000010000000000000000000000000000
            0000000000000000000000000000000000000000000000000001000000010000
            0003000000060000000C000000180201012E452B2493935C4BEDB28374FFC3A2
            97FFCBAFA6FFD1BBB1FFD4BFB7FFCFB7AEFFC6A99FFFBD998DFFA97867FF874F
            3EEE3F231B940201012D00000015000000080000000200000000000000000000
            0000000000000000000000000000000000010000000200000004000000080000
            000E0000001800000028110B09547D5143D8BD9386FFD8C3BBFFDFCFC8FFD6C3
            BCFFA3897CFF826252FF6E4B39FF7D5D4DFF9A7E73FFCEB9B0FFD6C3BAFFCCB4
            ABFFAF8172FF734131D60F090749000000180000000800000002000000000000
            000000000000000000010000000100000003000000070000000F0102011E0516
            0D66495F53C4787F74EDA97A68FED6BCB4FFE6D8D2FFE8DCD6FFD1C1B9FF8463
            51FF876756FF9A7C6CFFA78B7CFF987A6AFF7F5E4DFF6F4E3DFFC4B0A7FFDDCC
            C4FFD8C5BDFFC6A79DFF8D5647EF1109074B0000001600000006000000000000
            00000000000100000001000000040000000B020101193222137E23422AEC578C
            75FF8CAEA0FFA77C6CFFE0CEC8FFEBE1DCFFEEE5E1FFEAE0DAFF927361FF977B
            68FFB2998AFFC1A89CFFC5B0A3FFC1A99BFFB29A8AFF917463FF765345FFDCCD
            C6FFE0D1CAFFDBC9C2FFD0B7AEFF834E3EE7090503370000000F000000000000
            000000000001000000040000000D120A0636774728D75A5F41FF3B8463FF8FC1
            B0FF9E8A78FFD4B7AFFFF1E8E3FFF2EDE8FFF5EEEBFFBDA99CFF937361FFB299
            8BFFBBA699FF735B51FF4C332AFF664F46FFB6A195FFB29A8AFF7F5F4EFFA187
            7DFFE6D9D3FFE3D4CEFFE0CFC8FFC19D92FF583024B20000001A000000000000
            0001000000040000000C20130B4B8A532FEB667353FF3C8D6BFF1C8159FF8BB7
            A4FFA7705EFFF0EAE7FFF3EEEBFFF7F3EEFFF7F4F1FFA88B79FFA18474FFC1A9
            9CFF7E665AFF593E32FF543A2FFF4E352AFF664F46FFC2AA9DFF9C7F6EFF7C5D
            4EFFE9DED7FFE7DBD5FFE4D8CFFFDFCFCAFF925342FF02010123000000010000
            00030000000A120B06338E5530ED827956FF3E8761FF1C865CFF1D855BFF8DBD
            AAFF5F667BFFBBAEA8FFEFECE9FFF7F2EFFFF8F5F3FFA68975FFA78C7CFFC5AF
            A2FF715749FF614739FF5C4135FF553B2FFF4E352CFFC6B0A2FFA68B7BFF7351
            40FFEAE1DCFFE6DBD5FFDFD3CDFFB09E96FF4F4D65F30000001E000000010000
            000604020119804D2CD99C764EFF4C805EFF239166FF249267FF239166FF8AC2
            ACFF5D8BABFF796E72FFCFC6C2FFEAE5E2FFF1EEEBFFB29885FFA28574FFDCCE
            BBFFF4F1D5FFBBB096FF614639FF593E33FF735B50FFC0A99CFF9C7E6DFF7D5F
            4FFFE4D9D5FFDCD1CCFFC4B6AFFF736568FF162853A800000016000000030000
            000C472B1984A56A42FF967B50FF478360FF2EA076FF2C9F74FF2DA075FF68B8
            9BFF8ABDB9FF4577B6FF827472FFBCAFACFFDDD5D2FFC0AA9EFF9C7C68FFE0D8
            C5FFEBE5CDFFEEEACCFF735A4BFF7E6459FFB6A093FFAA9183FF7E5D4CFF9B82
            76FFD3C7C2FFB4A39DFF7D6D6BFF30579DFD040B18450000000D000000050603
            021A925935EDB17B4DFFAD7644FF5B7651FF49AE89FF3CB087FF3EB28AFF5CBF
            9DFFA5C9B9FF6F93B2FF6699CBFF7A767AFF8C7A75FFB6ABA6FF9D7E6CFFAB94
            83FFD0C5B1FFC3B19EFFB1978AFFAC9083FF9D8171FF826253FF725041FFB09F
            99FF927C75FF757278FF497BBBFF1127549C0000001400000006000000083420
            1363A56B43FF98784BFF79784FFF557955FF528B68FF57B28FFF5AB592FF5691
            6FFFA9A98AFFD8C6AFFF6E93BDFF7AB2E3FF839AAFFF64595AFF6A5855FF6D53
            49FF6F5045FF76564AFF7F5F51FF755648FF694A3FFF64483EFF765E58FF7264
            64FF7591ADFF5591D3FF1A3B76C50102041D00000008000000020000000B6740
            26AC87714AFF4C8764FF797D53FFB98754FFA58B5BFF6F865FFF718962FFAF9A
            6AFFCCA672FFDCC4A4FFDBCDB7FF7D9FC2FF71A7DCFF96CAEEFF8AA8BFFF6C77
            83FF56545DFF473F47FF403135FF50464CFF605B64FF6F7785FF7C9FBEFF73AE
            E3FF437AC1FF19396FB90103061F0000000A00000003000000000000000D8857
            36DA607653FF51906EFF988456FFBF905CFFC59966FFCAA16DFFCFA874FFD1AD
            78FFD3B07CFFD2B27FFFE0CAA8FFE4D4BCFFB1BBC2FF76A2CEFF7FB2E0FF92C4
            EBFFA1D3F3FFA4D7F7FFA2D7F9FF98CFF4FF87BFECFF6FA6DCFF5188C8FF3968
            AAFD0E1F3C7600000016000000080000000300000001000000000000000D755E
            3CF24D916FFF548764FFB28D5CFFC59A67FFCDA570FFD0AC78FFD4B17EFFD6B4
            82FFD7B783FFD6B684FFD7B885FFDCC29AFFE5D3B8FFE5D6BFFFBCC3C4FF9EB4
            CAFF83A7CEFF729DCFFF6294CCFF5E8FC7FF5C8DC0FF6495B6FF73A2AEFF7EA0
            91F90000001A00000009000000020000000100000000000000000000000C386E
            4FFF60A17FFF7F855CFFC49865FFCCA471FFD2AF7CFFD6B582FFD8B885FFD9BA
            89FFDFC59AFFE4CEAAFFE7D4B5FFE7D5B6FFE5D2B3FFE4D3B4FFE5D2B4FFE3D1
            B5FFE5D5BAFFE5D6BDFFAEC4B3FFA5D8C7FF98D0BDFF85C3ADFF66B095FF3776
            5BFF0000001200000005000000000000000000000000000000000000000B2E69
            4CF1858156FFC0915FFFCAA16EFFD1AE7BFFD6B583FFD9BA88FFDCC092FFE7D5
            B6FFECDCC1FFECDDC2FFECDDC3FFECDDC3FFECDDC2FFEBDCC1FFEBDBC0FFE6D3
            B5FFDABE91FFD6B986FF639370FF5FC6A3FF49BA95FF3FAD88FF329C77FF1561
            41F20000000F0000000400000000000000000000000000000000000000091F71
            54D6489875FF578A66FF5B8F6CFF5D9370FFD9BB8AFFDCC192FFECDCC1FFEFE2
            CAFFEFE2CCFFEFE3CCFFF0E4CDFFF0E4CDFFF0E4CDFFF0E3CCFFEFE3CBFFEEE1
            CAFFECDCC1FFDCC192FF7B9F78FF73CAACFF54C5A3FF4AB995FF39A37EFF185E
            43DA0000000D0000000300000000000000000000000000000000000000071A5A
            42A63EAF8AFF53CBA6FF59D0ADFF5F9874FFDCBF8FFFE8D6B5FFF2E6D3FFF2E8
            D5FFF2E9D6FFF3E9D6FFF3EAD7FFF4EAD7FFF3EAD7FFF3EAD7FFF3E9D6FFF2E8
            D5FFF1E7D3FFE8D6B5FFB5B488FF6EB091FF68D2B3FF69CDB0FF64B89EFF2B5C
            4CA80000000A0000000200000000000000000000000000000000000000050F31
            255D39A582FF57CFABFF5DD3B1FF62C4A2FF8AA983FFECE5D1FFF5ECDCFFF5ED
            DDFFF6EEDFFFF6EFE0FFF6EFE0FFF6EFE0FFF6EFE0FFF6EFE0FFF6EEDFFFF5EE
            DEFFF5ECDCFFE4E2CFFFBDB98EFF80A47EFF84CFB6FF72B699FF476E50FF1621
            1760000000070000000100000000000000000000000000000000000000030205
            0412308E6FE954C9A5FF61D7B5FF66DABAFF69CBABFFD3E6DCFFE9ECE0FFF8F2
            E5FFF8F2E6FFF8F3E7FFF8F4E7FFF9F3E8FFF9F3E7FFF8F3E7FFF8F2E6FFF8F2
            E5FFF0EEE2FFD2E7DDFF6BB392FFA7B389FF609A77FF91966DFFA47551EC0604
            0315000000040000000100000000000000000000000000000000000000010000
            00051949397B45B08EFF64D9B8FF6ADDBDFF70E1C3FFD1F5ECFFDDF1E9FFDCEB
            E3FFDCECE4FFEBF1E9FFFBF7EEFFFBF7EEFFFBF7EEFFFBF7EEFFFAF6EDFFFAF6
            ECFFF9F5EBFFD2E3D7FF8FDDC5FF83A984FFD8BB8DFFBC8E64FF523B2A7E0000
            0007000000020000000000000000000000000000000000000000000000010000
            00020104030D32856CD256C5A6FF6DDFC0FF73E3C6FFB1F1E1FFE8FBF7FFE9FC
            F7FFECFBF7FFEBF3EDFFFCFAF3FFFCFAF3FFFCFAF3FFFCF9F3FFFCF9F2FFFBF9
            F2FFFBF8F1FFE2E1C9FF73B798FF70CDAFFF839570FF916C4ED3040302100000
            0003000000010000000000000000000000000000000000000000000000000000
            00010000000307120E223F9D83EB63D1B4FF75E5C8FF7FEACFFFDFFAF4FFF0FD
            FAFFEFF8F5FFF8FAF5FFFDFCF7FFFDFCF7FFFDFCF7FFFDFCF7FFFDFBF7FFFDFB
            F6FFFAF6ECFFD1CFA9FF6DB695FF6DDABEFF448F75EC090D0925000000050000
            0001000000000000000000000000000000000000000000000000000000000000
            000000000001000000040E221D3943A088E865D0B4FF7BEACEFF8BEFD6FFDDFB
            F4FFF5FCFAFFF8FCF9FFFCFDFAFFFEFDFBFFFEFDFBFFFEFDFAFFFEFDFAFFFAF7
            ECFFEEDFBBFF7CB491FF6ACEB3FF4BA890E910241F3C00000005000000020000
            0000000000000000000000000000000000000000000000000000000000000000
            00000000000000000001000000030915122341947DD15DC6ABFF77E5CAFF83F1
            D6FFAEF7E6FFD5F4EBFFF0F9F5FFFDFEFDFFFEFDF9FFFBF8ECFFF5EED5FFE8E0
            BAFFB6C19EFF5AA486FF469883D20A1613260000000500000002000000000000
            0000000000000000000000000000000000000000000000000000000000000000
            00000000000000000000000000010000000201020208224A3F6B4EAA92E864CC
            B3FF7EDFC8FFA3EEDEFFA2E5D2FF72BE9DFFF1E4C2FFEBDCB8FFBCBF9BFF5C97
            77FF528C74E8244C426C01020209000000030000000100000000000000000000
            0000000000000000000000000000000000000000000000000000000000000000
            00000000000000000000000000000000000100000001000000030204040A2439
            354F496E649C4A7B64CE678567E5B5A782FFBB9A77E5A6896ACE7B654E9D262B
            21500304030C0000000400000002000000010000000000000000000000000000
            0000000000000000000000000000000000000000000000000000000000000000
            0000000000000000000000000000000000000000000000000001000000010000
            0002000000030000000400000004000000040000000400000004000000030000
            0002000000020000000100000000000000000000000000000000000000000000
            0000000000000000000000000000000000000000000000000000000000000000
            0000000000000000000000000000000000000000000000000000000000000000
            0000000000010000000100000001000000010000000100000001000000010000
            0000000000000000000000000000000000000000000000000000000000000000
            0000000000000000000000000000000000000000000000000000}
          TabOrder = 0
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'Tahoma'
          Font.Style = [fsBold]
          ParentFont = False
        end
        object btn_danfe: TcxButton
          Left = 5
          Top = 269
          Width = 148
          Height = 44
          Caption = 'Imprimir'#13'2'#186' Via'
          LookAndFeel.Kind = lfUltraFlat
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
          TabOrder = 1
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'Tahoma'
          Font.Style = [fsBold]
          ParentFont = False
        end
        object btn_transmitir: TcxButton
          Left = 5
          Top = 0
          Width = 148
          Height = 44
          Caption = 'Transmitir'#13'NF-e'
          LookAndFeel.Kind = lfUltraFlat
          LookAndFeel.NativeStyle = False
          LookAndFeel.SkinName = 'Metropolis'
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
          TabOrder = 2
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'Tahoma'
          Font.Style = [fsBold]
          ParentFont = False
        end
        object btn_inutilizar_nfce: TcxButton
          Left = 5
          Top = 104
          Width = 148
          Height = 44
          Caption = 'Inultilizar'#13'NF-e'
          LookAndFeel.Kind = lfUltraFlat
          LookAndFeel.NativeStyle = False
          LookAndFeel.SkinName = 'Metropolis'
          OptionsImage.Glyph.Data = {
            36100000424D3610000000000000360000002800000020000000200000000100
            2000000000000010000000000000000000000000000000000000000000020000
            00090000000E0000000F0000000F000000100000001000000010000000100000
            0010000000100000001000000010000000100000001000000010000000100000
            0011000000110000001100000011000000110000001100000011000000110000
            0011000000110000001100000012000000100000000B00000003000000097E5E
            53C1AF8273FFAE8273FFAE8273FFAD8273FFAD8172FFAE8171FFAC8171FFAC80
            71FFAC7F71FFAB7F70FFAB7F6FFFAB7E6FFFAA7D6FFFAA7E6EFFAA7D6DFFAA7D
            6DFFA97C6CFFA97C6CFFA87B6CFFA87A6BFFA77A6BFFA87B6BFFA77A6AFFA77A
            6AFFA7796AFFA77969FFA67869FFA67869FF77564BC30000000B0000000DB186
            77FFFAF6F2FFFAF5F2FFFAF5F2FFFAF5F2FFFAF6F2FFFAF5F1FFFAF5F1FFFAF5
            F1FFFAF5F1FFFAF5F0FFF9F5F1FFF9F5F0FFF9F4F1FFF9F4F1FFF9F4F0FFF9F4
            F0FFF9F4EFFFF9F3EFFFF9F4EFFFF9F4EFFFF9F4EFFFF9F4EFFFF9F3EFFFF9F3
            EFFFF8F3EFFFF8F3EFFFF9F3EEFFF8F3EEFFAE8172FF000000100000000EB286
            78FFFBF6F3FFF7EFE9FFF7EFE9FFF7EFE9FFF6EFE9FFF6EEE9FFF7EEE9FFF6EE
            E9FFF6EFE9FFF6EEE8FFF6EFE9FFF6EFE8FFF6EEE9FFF6EEE8FFF7EEE8FFF6EE
            E8FFF6EEE8FFF6EEE8FFF6EEE8FFF7EEE8FFF6EEE7FFF6EEE8FFF6EDE7FFF6EE
            E7FFF6EEE8FFF6EEE8FFF6EEE7FFF9F4EFFFAE8274FF000000100000000DB288
            7AFFFAF7F4FFF7EFE9FFF7EFEAFFF7EFEAFFF7EFE9FFF7EFEAFFF6EFE9FFF7EF
            E9FFF7EFE9FFF6EFE9FFF7EFE9FFF7EFE9FFF6EFE9FFF7EFE9FFF6EFE9FFF6EF
            E9FFF6EEE8FFF6EEE8FFF6EEE8FFF6EFE8FFF6EEE8FFF7EEE9FFF6EEE8FFF6EE
            E8FFF6EFE8FFF6EEE8FFF6EEE8FFFAF4EFFFAF8374FF000000100000000DB489
            7BFFFBF7F4FFF7EFEAFFF7EFEAFFDBC5BBFFDBC5BCFFDAC4BBFFDAC4BBFFDAC4
            BBFFDAC4BBFFDAC4BBFFDAC3BBFFDAC4BAFFD9C3BAFFD9C3BAFFD9C3BAFFD9C3
            B9FFD8C3B9FFD9C3B9FFD9C3B9FFD8C2B9FFD8C2B8FFD9C2B8FFD8C2B8FFD8C2
            B8FFD8C1B8FFF7EEE9FFF6EEE8FFFAF5F1FFB08475FF000000100000000DB48B
            7BFFFBF7F5FFF7EFEBFFF7EFEAFFDBC5BDFFDBC5BDFFDBC5BDFFDBC5BCFFDBC5
            BCFFDBC5BCFFDAC4BCFFDAC4BCFFDAC4BBFFDAC4BBFFDAC4BBFFDAC4BBFFD9C4
            BBFFD9C3BAFFD9C3BAFFD9C3B9FFD9C3BAFFD8C3BAFFD9C3B9FFD8C3B9FFD8C3
            B9FFD9C2B9FFF7EFE9FFF6EFE9FFFAF5F1FFB08577FF0000000F0000000CB58B
            7CFFFBF8F6FFF8F0ECFFF7EFEBFFF7F1ECFFF7F1ECFFF7F1ECFFF7F1EBFFF7F0
            ECFFF6F0EBFFF7F1EBFFF7F0EBFFF6F0EAFFF7F1EAFFF6F0EAFFF7F0EBFFF6F0
            EAFFF6F0EBFFF6F0EAFFF7F0EAFFF7F0EAFFF7EFEAFFF6EFE9FFF6F0E9FFF6EF
            EAFFF7EFEAFFF7EFEAFFF7EFE9FFFAF5F2FFB28678FF0000000F0000000CB68D
            7EFFFCF8F6FFF8F0ECFFF7F0ECFFF8F2EDFFF8F1EDFFF7F2ECFFF7F1ECFFF7F1
            ECFFF7F1ECFFF7F1ECFFF7F1EBFFF7F1ECFFF7F0EBFFF6F1EBFFF7F1EBFFF7F1
            EBFFF6F0EBFFF7F0EBFFF7F0EBFFF7F0EAFFF6F0EAFFF7F0EAFFF7EFEAFFF6F0
            EAFFF6F0EAFFF7EFEAFFF7EFEAFFFAF6F3FFB28779FF0000000E0000000BB78E
            7FFFFCF9F7FFF8F0EDFFF8F1EDFFDDC9C1FFDDC9C1FFDDC9C1FFDDC8C1FFF7F1
            ECFFF5F0EBFFEEE9E3FFE8E2DDFFEEE8E4FFF5EFEAFFF8F1ECFFF7F1EBFFF5EF
            EAFFEDE8E3FFE5E0DAFFEBE5E0FFF4EDE8FFF7F0EBFFDBC6BDFFDAC6BCFFDAC5
            BCFFDAC5BCFFF7EFEAFFF8EFEBFFFBF6F3FFB3887BFF0000000E0000000BB890
            81FFFDF9F8FFF8F1EEFFF8F1EDFFF8F2EEFFF8F2EEFFF8F3EEFFF8F2EEFFF5F0
            EBFFE9E4DFFF796FA8FF2D1E8CFF8781B0FFE9E4DFFFF5F0EBFFF5EFEAFFE8E3
            DEFF8780ADFF2C1D8CFF776DA4FFE6E0DBFFF5EFE9FFF7F0EBFFF7F0EBFFF7F0
            EBFFF7F0ECFFF7EFEBFFF7F0EBFFFBF6F4FFB3897BFF0000000D0000000AB890
            82FFFDFAF8FFF9F2EEFFF8F2EEFFF8F3EFFFF9F3EEFFF9F2EFFFF9F3EEFFF0EA
            E8FF7C72ADFF3233AFFF3648CCFF1D1EA5FF8881B0FFE9E3DFFFE9E3E0FF867F
            AEFF1F20A5FF3747CCFF2D2FAEFF796FA8FFECE7E3FFF7F1EDFFF7F1ECFFF7F1
            ECFFF7F1ECFFF7F0ECFFF8F0ECFFFBF7F5FFB58C7CFF0000000D0000000ABA92
            84FFFDFAF9FFF8F2EFFFF8F1EFFFE0CCC5FFDFCDC5FFDFCCC5FFDFCCC5FFECE8
            E4FF352A9AFF596CD8FF3B51D3FF3A4FD2FF1E22A6FF847EAEFF837DADFF2022
            A6FF3A50D3FF3A50D3FF4C5FD4FF362B99FFE8E3DEFFDCC8C0FFDDC8C0FFDCC8
            C0FFDCC7BFFFF8F1EDFFF8F1EDFFFBF7F5FFB68C7DFF0000000D00000009BA93
            85FFFDFAF9FFF9F2EFFFFAF2EFFFF9F4F1FFF9F4F0FFF8F3F1FFF8F3F0FFF3EE
            EAFF9C95BFFF4D4FBAFF667EE0FF415AD6FF415AD7FF1F24A7FF2529A8FF415A
            D7FF415AD7FF5B72DEFF484AB8FF958EB9FFEFE9E6FFF8F3EEFFF8F2EDFFF8F2
            EEFFF8F2EDFFF8F1EDFFF8F1EEFFFCF8F6FFB68D7FFF0000000C00000009BB95
            87FFFDFBFAFFFAF3EFFFF9F3EFFFFAF5F2FFFAF4F1FFF9F4F1FFF9F4F1FFF9F3
            F0FFEFEAE7FF9E98C3FF585CC1FF758DE6FF4A64DBFF4A65DBFF4A65DBFF4A64
            DBFF6983E3FF5356C0FF9993BEFFECE8E4FFF6F0ECFFF9F3EEFFF8F2EFFFF8F2
            EEFFF8F3EEFFF9F1EEFFF8F2EEFFFCF9F7FFB88F80FF0000000C00000009BF99
            8CFFFEFCFBFFFAF4F1FFFAF4F1FFE2CFC9FFE2D0C8FFE2CFC8FFE2D0C8FFFAF4
            F1FFF9F3EFFFF0EAE7FFA09AC4FF5D63C7FF6783E5FF5774E2FF5774E2FF5774
            E2FF565CC6FF9B96C0FFECE8E3FFF8F1EDFFF9F3F0FFE0CBC4FFDFCBC4FFE0CB
            C4FFDFCBC3FFFAF3EFFFFAF3EFFFFDFAF9FFBA9285FF0000000B00000008C09A
            8DFFFEFCFCFFFAF5F2FFFAF5F1FFE3D1CAFFE2D1C9FFE2D0C9FFE2D1C9FFFAF4
            F2FFF9F3F0FFF1EBE8FF9994C1FF4A50BEFF7492EBFF6383E7FF6483E7FF6383
            E7FF3840B6FF908AB8FFEEE8E5FFF8F2EEFFFAF3F0FFE0CDC5FFE0CCC5FFE0CC
            C4FFDFCCC5FFFAF3F0FFFAF4F0FFFDFAF9FFBB9487FF0000000B00000008C19C
            8EFFFEFDFCFFFAF6F3FFFAF5F2FFFBF6F4FFFAF6F3FFFAF6F3FFFAF5F3FFF9F5
            F2FFF3EEECFFA29ECAFF555CC5FF85A1EFFF7897EDFF9CB6F4FF9DB7F5FF7997
            EEFF7796EDFF414ABCFF9893C1FFF0EAE8FFF9F3F0FFFAF4F1FFFAF4F0FFFAF4
            F1FFFAF4F0FFFAF4F0FFFAF4F0FFFDFBF9FFBC9588FF0000000A00000007C29D
            90FFFEFDFCFFFAF6F3FFFAF6F3FFFBF6F4FFFBF7F4FFFAF6F4FFFBF6F4FFF6F2
            F0FFAAA7D3FF636CCFFF93AFF3FF83A1F1FFA6BFF7FF676DCAFF7E87DDFFAFC7
            F8FF83A3F2FF83A1F1FF5058C4FF9D99C7FFF4EFECFFFAF5F1FFFAF5F2FFFAF4
            F1FFFAF5F1FFFAF5F1FFFAF5F1FFFDFBFAFFBD9789FF0000000A00000007C39E
            91FFFEFDFDFFFAF6F4FFFAF7F4FFE5D4CFFFE5D5CEFFE5D4CEFFE5D4CDFFF4F1
            EEFF6769D2FFAFC6F6FF8EADF4FFABC4F8FF6F76D0FFA5A2CFFFB0AED8FF868E
            E1FFB5CCF9FF8DACF4FFA1B8F4FF6767D2FFF1ECE9FFE2D0C9FFE2D0C9FFE2D0
            C9FFE2D0C9FFFAF5F2FFFAF5F2FFFDFCFBFFBE988BFF0000000900000007C3A0
            92FFFEFDFDFFFAF7F5FFFBF7F4FFFBF7F6FFFBF7F6FFFBF8F5FFFBF7F5FFF8F4
            F2FFA8A8DFFF95A0EAFFC0D3F9FF7880D7FFADAAD7FFF5F0EEFFF3F0EDFFB5B4
            DFFF8B93E6FFC1D3F9FF949EE9FFA5A5DBFFF5F1EEFFFAF5F2FFFAF5F3FFFAF5
            F2FFFAF6F3FFFAF5F3FFFAF6F2FFFDFCFBFFC09A8CFF0000000900000006C5A2
            94FFFEFEFDFFFBF7F5FFFBF7F6FFFBF8F6FFFBF7F7FFFCF8F6FFFBF8F7FFFBF7
            F5FFF7F4F2FFACADE3FF7175DDFFB4B2DEFFF6F2F0FFFAF7F5FFFAF6F4FFF6F2
            F0FFB8B7E1FF7175DDFFAAAADFFFF3EFECFFF9F6F3FFFAF6F4FFFBF6F3FFFAF6
            F3FFFAF6F4FFFAF6F4FFFAF6F3FFFEFCFBFFC09B8EFF0000000900000006C6A3
            95FFFEFEFEFFFBF8F6FFFBF8F6FFE7D8D1FFE7D7D1FFE7D7D1FFE6D7D0FFFCF8
            F7FFFBF8F7FFFAF6F4FFF8F4F2FFF9F6F4FFFBF6F5FFFCF7F5FFFBF8F6FFFAF6
            F5FFF8F4F2FFF6F3F1FFF7F3F1FFF9F6F3FFFAF7F4FFE4D4CDFFE4D3CDFFE4D3
            CCFFE4D3CCFFFAF7F4FFFAF6F3FFFEFDFCFFC19D90FF0000000800000005C7A4
            96FFFFFEFEFFFBF9F6FFFCF9F6FFFBF9F7FFFCF8F7FFFBF9F7FFFCF9F8FFFBF9
            F7FFFCF8F7FFFBF8F7FFFBF9F7FFFCF8F7FFFCF9F7FFFBF8F7FFFBF8F7FFFBF8
            F7FFFBF7F7FFFCF8F6FFFBF7F5FFFAF8F5FFFBF7F5FFFBF7F5FFFBF7F5FFFAF7
            F5FFFBF7F5FFFAF7F5FFFAF6F4FFFEFDFCFFC29E90FF0000000800000005C8A5
            98FFFFFEFEFFFBF8F7FFFBF8F8FFFCF8F8FFFCF9F7FFFBF9F8FFFCF9F8FFFBF8
            F8FFFBF9F8FFFCF9F7FFFCF9F8FFFBF8F8FFFCF9F7FFFCF8F7FFFCF8F7FFFBF9
            F7FFFBF9F7FFFCF8F7FFFBF8F6FFFBF8F6FFFBF8F6FFFBF8F6FFFBF8F5FFFBF7
            F5FFFBF8F5FFFBF7F6FFFBF7F5FFFEFDFDFFC3A091FF0000000700000005C9A6
            99FFFFFEFEFFFBF9F8FFFCF9F8FFE8DAD4FFE8D9D3FFE8DAD4FFE8D9D4FFE8D9
            D3FFE8D9D4FFE7D9D3FFE8D9D3FFE8D9D3FFE8D9D2FFE8D9D2FFE8D8D2FFE7D8
            D2FFE7D7D1FFE7D8D1FFE6D8D1FFE6D7D1FFE6D7D0FFE7D7D0FFE6D6D0FFE6D6
            D0FFE5D6D0FFFBF8F6FFFCF8F5FFFEFDFDFFC5A193FF0000000700000004CAA7
            9AFFFFFEFEFFFCFAF8FFFDFAF9FFE9DAD5FFE9DAD4FFE9DAD5FFE9DAD4FFE8DA
            D4FFE8DAD4FFE8D9D4FFE8D9D4FFE8D9D4FFE8D9D3FFE8D9D3FFE8D9D3FFE8D9
            D3FFE7D8D2FFE8D9D2FFE7D9D2FFE8D8D2FFE7D7D2FFE6D7D2FFE6D8D1FFE7D7
            D1FFE7D7D1FFFBF9F7FFFCF8F7FFFEFEFDFFC6A295FF0000000700000004CBA9
            9BFFFFFFFEFFFDFAF9FFFCFAF9FFFCFAF9FFFCFAF9FFFCFAF9FFFCFAF9FFFCFA
            F9FFFCFAF9FFFDFAF8FFFCFAF8FFFCFAF8FFFCFAF9FFFCF9F9FFFCF9F9FFFCF9
            F8FFFCF9F8FFFCF9F8FFFCF9F7FFFCF9F8FFFCF9F7FFFCF9F8FFFCF9F7FFFBF9
            F7FFFCF9F7FFFBF9F8FFFBF9F7FFFEFEFDFFC7A496FF0000000600000004CCAA
            9DFFFFFFFFFFFDFAFAFFFCFAF9FFFCFAF9FFFDFAF9FFFCFAF9FFFDFAF9FFFDFA
            F9FFFDFAF9FFFDFAF9FFFCFAF9FFFCFAF8FFFDFAF9FFFCFAF9FFFCFAF9FFFCFA
            F8FFFDFAF8FFFCF9F8FFFCFAF9FFFCF9F8FFFCF9F8FFFCF9F8FFFCF9F8FFFCF9
            F8FFFCF9F8FFFCF9F8FFFCF9F8FFFEFEFEFFC7A497FF0000000600000003CCAB
            9EFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
            FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
            FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
            FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFC8A699FF00000005000000029A82
            79BFCFB0A4FFCFB0A4FFCFB0A4FFCFB0A4FFCFB0A4FFCFB0A4FFCFB0A4FFCFB0
            A4FFCFB0A3FFCFAFA3FFCFAFA3FFCFAFA3FFCFAFA3FFCFAEA3FFCFAEA3FFCEAF
            A3FFCEAFA2FFCEAEA2FFCEAEA2FFCEAEA2FFCEAEA2FFCEAEA2FFCEAEA2FFCEAE
            A2FFCEADA1FFCEADA1FFCDADA1FFCDADA1FF988077C000000003000000000000
            0002000000030000000300000003000000030000000300000003000000030000
            0003000000030000000300000003000000040000000400000004000000040000
            0004000000040000000400000004000000040000000400000004000000040000
            0004000000040000000500000005000000040000000300000001}
          TabOrder = 3
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'Tahoma'
          Font.Style = [fsBold]
          ParentFont = False
        end
        object btn_cancelar: TcxButton
          Left = 4
          Top = 54
          Width = 149
          Height = 44
          Caption = 'Cancelar'#13'NF-e'
          LookAndFeel.Kind = lfUltraFlat
          LookAndFeel.NativeStyle = False
          LookAndFeel.SkinName = 'Metropolis'
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
          TabOrder = 4
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'Tahoma'
          Font.Style = [fsBold]
          ParentFont = False
        end
        object btn_atualizar_info: TcxButton
          Left = 5
          Top = 157
          Width = 148
          Height = 48
          Caption = 'Inutilizar'#13'Por Faixa'
          LookAndFeel.Kind = lfUltraFlat
          LookAndFeel.NativeStyle = False
          LookAndFeel.SkinName = 'Metropolis'
          OptionsImage.Glyph.Data = {
            36100000424D3610000000000000360000002800000020000000200000000100
            2000000000000010000000000000000000000000000000000000000000000000
            0000000000000000000000000000000000000000000000000000000000000000
            0000000000000000000000000000000000000000000000000000000000000000
            0000000000000000000000000002000000060000000B0000000D0000000B0000
            0006000000020000000000000000000000000000000000000000000000000000
            0000000000000000000100000001000000010000000100000001000000010000
            0001000000010000000100000001000000010000000100000001000000010000
            000100000003000000080001031607132C6F0C285FD20F3076FF0C245BD20510
            2A70000103170000000800000003000000010000000000000000000000000000
            0001000000020000000300000006000000070000000800000008000000080000
            00080000000800000008000000080000000800000008000000090000000B0000
            001002060D2E0B1F4495153779EE336AA7FF57A4D7FFA7E3F9FF2459A2FF1841
            89FF0E2A6AEE07163B9501040B2A0000000A0000000400000001000000000000
            0001000000050000000E000000170000001C0000001E0000001E0000001E0000
            001E0000001E0000001E0000001F0000001F0000001F0000002306101E5A112C
            5AB7214D92FD4485BDFF65B9E6FF6BC4EFFF6BC4EFFFABE4FAFF2A65AEFF2A65
            AEFF2861A9FF1C4992FF113177FD081B49B20309174700000005000000010000
            00040000000E0C092860251F82EC29228FFF29228FFF29218FFF3B33A2FF3B32
            A3FF3A32A3FF3B32A2FF3A32A1FF3A31A2FF3931A1FF382E9CFF2863AAFF55A3
            D7FF6EC6EFFF6FC7F1FF6EC7F1FF6EC6F1FF6DC6F0FFAFE6FAFF2C68AFFF2C67
            AFFF2B67AEFF2B66AFFF2A66AEFF265DA6FF1D4D96FF0000000B000000010000
            000600000016262080EC3C35A5FF3B33A7FF382FA5FF342C9FFF5666D5FF495A
            D2FF485AD1FF485AD0FF4859CFFF4758D0FF4657D0FF4355C7FF2966ACFF72C9
            F1FF71C9F1FF71C8F1FF71C8F1FF70C7F0FF6FC7F1FFB3E7FAFF2C6AB1FF2C69
            B0FF2C69B0FF2D68AFFF2C68B0FF2C68AFFF1F5099FF0000000D000000010000
            00070000001A2A2491FF463EAEFF3831A5FF3831A5FF332C9FFF5667D6FF4B5C
            D2FF495BD2FF495BD2FF495AD1FF485AD1FF475AD0FF4455C9FF2A69AEFF74CB
            F1FF74CBF2FF73CAF1FF73CAF1FF72C9F2FF72C9F1FFB9E9FAFF2E6CB2FF2E6B
            B2FF2D6BB1FF2E6BB1FF2D6AB0FF2D6AB1FF21549BFF0000000C000000010000
            00070000001B2C2592FF4941B1FF3A32A7FF3932A7FF352EA1FF596AD7FF4D5F
            D2FF4C5ED2FF4C5ED2FF4C5DD3FF4B5CD2FF495CD2FF4858CBFF2C6CB1FF76CC
            F2FF76CCF2FF76CBF2FF75CBF2FF74CBF2FF74CAF2FFBEEAFBFF2F6EB3FF2F6E
            B3FF2F6DB3FF2E6CB3FF2F6DB2FF2E6CB2FF23579EFF0000000B000000010000
            00060000001A2D2693FF4B44B3FF3A34A9FF3B34A9FF3530A3FF5C6CD8FF4F62
            D3FF4F60D3FF4E60D4FF4E5FD3FF4D5FD3FF4C5ED3FF4A5BCDFF2D6FB3FF78CE
            F2FF78CEF3FF77CDF3FF76CDF3FF76CCF2FF76CCF2FFC3EBFBFF3170B5FF3070
            B5FF306FB4FF306FB4FF2F6EB4FF306FB4FF245BA1FF0000000A000000010000
            0006000000192D2895FF4D48B5FF3C36ABFF3C35ABFF3731A5FF5E70DAFF5264
            D5FF5162D5FF5163D4FF4F62D4FF4F62D4FF4F61D4FF4D5DCDFF2F72B4FF7ACF
            F3FF7ACFF3FF79CEF4FF79CFF3FF78CEF3FF78CEF3FFC9EDFCFF3272B6FF3272
            B6FF3271B6FF3171B5FF3171B5FF3170B5FF265FA4FF0000000A000000010000
            0006000000182E2995FF514CB8FF3D37ACFF3D37ACFF3833A6FF6072DAFF5466
            D6FF5466D7FF5265D6FF5264D5FF5264D5FF5164D5FF4F61CFFF3175B6FF7BD1
            F4FF7BD0F4FF7BD0F4FF80D1F4FFBEE7FAFFF0FAFEFFFFFFFFFFECF5FBFF9DC1
            E1FF3B79BBFF3373B7FF3272B6FF3272B6FF2863A7FF00000009000000010000
            0006000000172F2A97FF534EB9FF3E39AEFF3E39AEFF3935A8FF6374DBFF5669
            D7FF5568D7FF5567D7FF5467D6FF5466D6FF5466D7FF5164D2FF3278B9FF7DD2
            F4FF90D9F6FFD6F1FCFFF9FDFEFFECF8FEFFD4F0FBFFC5EBFAFFCEEEFBFFE7F7
            FDFFF7FCFEFFBDD8EDFF518BC4FF3374B8FF2A67ABFF00000008000000010000
            000600000017312C99FF5752BCFF403BB0FF403BAFFF3A36A9FF6577DCFF596B
            D8FF586CD8FF586AD8FF576AD7FF5769D7FF5569D7FF5466D4FF347BBBFFA4C9
            E5FFF6FAFDFFE9F7FDFFD3EFFBFFCCEDFBFFC9EBFAFFC5EBFAFFC2E9F9FFBEE8
            F9FFC0E8F9FFD9F2FCFFF2F9FCFF96BBDBFF2C6CAEFF00000006000000010000
            000500000016322D9AFF5A55BDFF413CB1FF413DB1FF3C38ABFF6679DCFF5B6E
            D9FF5A6DD8FF5A6DD8FF5A6CD8FF586CD8FF586BD8FF586AD7FF4E6DCEFF4074
            C3FF4386C1FF82B4DAFFC1E4F5FFCDEDFBFFC9ECFAFFC5EBFAFFC1E9F9FFBDE8
            F9FFADDDF3FF72ADD7FF3C7DB8FA1D4771A90A18253E00000002000000010000
            000500000015332E9BFF5D58C1FF423EB3FF423EB2FF3D38ACFF697CDEFF5D70
            DAFF5D70DAFF5C70D9FF5B6FD9FF5B6ED9FF5B6DD9FF5A6DD9FF596DD8FF586B
            D5FF546CD2FF4673C7FF3A7DBFFF6AA5D3FFA9D4EEFFC5EBFAFFA3D3EDFF66A3
            D2FF3777B9FF183B5A8D040A0F21000000050000000100000000000000000000
            00050000001434309CFF5F5BC3FF4440B4FF433FB4FF3F3BAFFF6B7EDEFF5F72
            DBFF6074DCFF6175DCFF6376DCFF6275DCFF6377DCFF6376DCFF6174DBFF6074
            DBFF5D71DAFF5B6DD8FF596BD5FF4B72CCFF3D7AC2FF367FBEFF3B79C0FF4F74
            CBFF4D4BAFFF0000001900000007000000010000000000000000000000000000
            00050000001335319DFF625FC5FF4542B6FF4541B6FF403DB0FF6F82E0FF697C
            DFFF697DDFFF697CDFFF687CDFFF687BDFFF677BDEFF677ADEFF6679DEFF6679
            DEFF6578DDFF6478DDFF6476DCFF5E72DAFF5A6DD7FF5A6DD6FF596CD6FF6276
            DAFF524EB6FF0000001700000006000000010000000000000000000000000000
            00050000001336339FFF6562C6FF4643B8FF4744B8FF4946B9FF788BE3FF6C81
            E0FF6C81E1FF6C81E0FF6B80E1FF6B7FE0FF6A7FE0FF6A7FE0FF697EE0FF697D
            DFFF697DDFFF697DDEFF687CDFFF687BDFFF6679DDFF5E72DAFF5C6FD9FF677A
            DCFF5351B7FF0000001600000005000000010000000000000000000000000000
            0004000000123934A1FF6866C9FF4A48BBFF5251C1FF4E4DBDFF7B8EE4FF7185
            E1FF7084E1FF7083E1FF6F83E1FF6F83E1FF6E82E1FF6E81E1FF6D81E1FF6D81
            E1FF6C81E1FF6B80E1FF6B80E0FF6B80E0FF6A7FE0FF697DDFFF6175DCFF6B7D
            DEFF5654BAFF0000001500000005000000010000000000000000000000000000
            0004000000113A36A3FF6E6DCDFF5555C4FF5655C4FF5050C0FF8093E6FF7489
            E3FF7388E3FF7388E3FF7388E3FF7287E2FF7286E2FF7286E2FF7186E2FF7185
            E2FF7084E2FF7084E2FF6F83E1FF6F82E1FF6F82E1FF6E82E1FF6C81E0FF7183
            E0FF5857BCFF0000001400000005000000010000000000000000000000000000
            0004000000103A38A4FF7B7AD4FF5859C7FF5958C6FF5354C2FF8296E7FF778D
            E4FF788CE4FF778BE4FF768AE4FF768AE4FF7689E4FF7589E4FF7489E4FF7488
            E4FF7388E4FF7388E4FF7287E4FF7287E3FF7287E3FF7186E3FF7086E2FF7E91
            E5FF5B5ABEFF0000001300000005000000000000000000000000000000000000
            00040000000F3C3AA5FF7F7FD7FF5A5BC9FF5A5BC9FF5757C5FF879AE8FF7B8F
            E6FF7A8EE6FF7A8EE5FF7A8EE5FF798EE5FF798DE5FF778DE5FF778DE5FF778C
            E5FF768BE4FF768BE5FF768BE4FF758AE4FF758AE4FF748AE4FF7489E3FF8395
            E7FF5E5DC0FF0000001300000005000000000000000000000000000000000000
            00040000000F3D3BA8FF8384D9FF5E5ECBFF5E5ECBFF595AC7FF899CEAFF7E93
            E8FF7E93E8FF7E92E7FF7D92E7FF7D91E7FF7D91E7FF7C90E7FF7C90E6FF7B8F
            E6FF7B8FE6FF7A8FE7FF7A8EE6FF798EE6FF788DE6FF788DE5FF778BE5FF879A
            E9FF6060C2FF0000001200000005000000000000000000000000000000000000
            00030000000E3F3DA9FF8788DCFF6062CEFF6061CDFF5B5DC9FF8CA0EBFF8296
            E9FF8196E8FF8096E8FF8096E8FF8095E8FF8095E8FF8094E7FF8094E7FF7F93
            E7FF7E92E7FF7E92E6FF7E92E7FF7E91E7FF7D91E7FF7C91E7FF7C90E6FF8C9E
            EAFF6263C4FF0000001100000004000000000000000000000000000000000000
            00030000000D413FABFF8A8CDEFF6364CFFF6465D0FF5D60CCFF8FA2ECFF859A
            EAFF8599E9FF8499E9FF8499E9FF8398E9FF8397E9FF8397E9FF8397E9FF8296
            E9FF8196E9FF8195E9FF8195E8FF8094E9FF7F94E8FF7F94E8FF7F93E8FF8FA1
            EBFF6465C7FF0000001000000004000000000000000000000000000000000000
            00030000000C4241ACFF8E90E0FF6567D1FF6567D1FF5F62CDFF91A4EDFF879C
            EBFF879CEBFF869CEBFF869BEBFF869BEAFF869AEAFF869AEAFF859AEAFF8599
            E9FF8499E9FF8499E9FF8398E9FF8398E9FF8398E9FF8397E8FF8297E9FF95A7
            ECFF6668C9FF0000001000000004000000000000000000000000000000000000
            00030000000C4443ADFF989BE3FF9496E3FF9396E2FF8D8FDFFFB5C4F3FFACBD
            F2FFACBBF1FFAABBF1FFAAB9F1FFA9B9F1FFA7B8F1FFA6B7F1FFA5B6F0FFA5B5
            F0FFA4B4F0FFA2B3F0FFA1B2EFFFA1B1EFFF9FB0EFFF9EAFEFFF9CAEEFFF8E9C
            E5FF6769C8FF0000000F00000004000000000000000000000000000000000000
            00030000000B4645B0FF5959BBFF5150B7FF5150B6FF5150B6FF7074D1FF6F74
            D0FF6F74D0FF6F74D0FF6E74CFFF6F73CFFF6F72D0FF6E72CFFF6E72CFFF6E71
            CEFF6D71CFFF6D71CEFF6D70CEFF6C70CDFF6C6FCDFF6C6FCDFF6B6FCDFF7E7D
            C5FF6063BEFF0000000E00000004000000000000000000000000000000000000
            00020000000A4646B1FF322E8FFFA197B6FFE0D9CEFFE2D8CEFFE0D9CFFFE2D8
            CEFFE0D6CDFFDFD6CEFFE0D8CDFFE0D6CDFFDFD6CDFFDFD5CBFFDFD5CBFFDFD5
            CAFFDFD5CAFFDFD5CAFFDFD5CBFFDDD2C9FFDDD4C9FFDDD2C9FFDFD5CAFFE1D9
            D2FF6365C3FF0000000D00000003000000000000000000000000000000000000
            0002000000074C4AA7E93B349EFFC7C2DBFFF7F4EFFFF7F4EFFFF7F4EFFFF7F4
            EFFFF7F4EFFFF7F4EFFFF7F4EFFFF7F4EFFFF7F4EFFFF7F4EFFFF7F4EFFFF7F4
            EFFFF6F3EEFFF6F3EEFFF6F3EEFFF6F3EEFFF6F3EEFFF6F3EEFFF6F3EEFFD1D0
            E5FF5C5FB5E90000000900000002000000000000000000000000000000000000
            00010000000415152E47434291CC5553B9FF5553B9FF5553B9FF6C70CDFF6B70
            CDFF6B6FCDFF6B6FCCFF6B6FCCFF6B6FCCFF6B6ECCFF6A6ECCFF6A6ECCFF6A6E
            CBFF6A6DCBFF696DCBFF6A6DCBFF696CCBFF696DCAFF696CCAFF696BCAFF5354
            9FCD1A1A32490000000500000001000000000000000000000000000000000000
            0000000000010000000300000006000000080000000800000009000000090000
            000900000009000000090000000900000009000000090000000A0000000A0000
            000A0000000A0000000A0000000A0000000A0000000A0000000B0000000A0000
            0008000000050000000200000001000000000000000000000000}
          TabOrder = 6
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'Tahoma'
          Font.Style = [fsBold]
          ParentFont = False
          OnClick = btn_atualizar_infoClick
        end
        object btn_enviar: TcxButton
          Left = 4
          Top = 322
          Width = 149
          Height = 44
          Caption = 'Salvar '#13'XML'
          LookAndFeel.Kind = lfUltraFlat
          LookAndFeel.NativeStyle = False
          LookAndFeel.SkinName = 'Metropolis'
          OptionsImage.Glyph.Data = {
            36100000424D3610000000000000360000002800000020000000200000000100
            2000000000000010000000000000000000000000000000000000000000000000
            0000000000000000000000000000000000000000000000000000000000000000
            0000000000000000000000000000000000000000000000000000000000000000
            0000000000000000000000000000000000000000000000000000000000000000
            0000000000000000000000000000000000000000000000000000000000000000
            0000000000000000000000000000000000010000000100000001000000010000
            0001000000010000000100000001000000010000000100000005000000140000
            001F000000210000002100000021000000220000002200000022000000230000
            0023000000230000002300000021000000160000000500000000000000000000
            0000000000000000000100000002000000040000000600000007000000070000
            000700000007000000070000000700000007000000070000001946332CCC6045
            3BFF644A41FFBD8150FFBC7E4DFFB97949FFB67646FFB37141FFB06D3DFFAD68
            39FFAB6535FF553A34FF593D35FF392621CE0000001500000000000000000000
            00000000000000000002000000070000000F00000016000000190000001A0000
            001A0000001B0000001B0000001B0000001B0000001B00000032664A40FF8165
            5AFF6A4F46FFE8C28BFFE7C088FFE6BD85FFE5BB81FFE4B87CFFE3B579FFE2B2
            76FFE2B273FF5A3F37FF664940FF523730FF0000001E00000000000000000000
            000000000001000000040000000F78554AC1A57666FFA57565FFA57465FFA574
            64FFA37463FFA47363FFA37362FFA37262FFA27162FFBDA79FFF6A4E42FF8369
            5FFF70564BFFD9B27DFFD8B07BFFD7AE77FFD7AB74FFD6A970FFD5A66DFFD4A5
            6AFFD4A268FF5E433CFF6F5147FF543931FF0000001D00000000000000000000
            0000000000010000000500000014A77868FFFDFCFAFFFBF8F6FFFBF8F5FFFBF7
            F4FFFBF7F4FFFAF7F4FFFAF6F3FFFAF6F2FFFAF5F2FFE4E0DCFF6E5246FF866C
            63FF765C50FFFFFFFFFFF7F1EBFFF7F0EBFFF7F0EBFFF7EFEBFFF6EFEAFFF6EF
            EAFFF6EFE9FF644940FF715349FF563B33FF0000001B00000000000000000000
            0000000000010000000600000016AA796AFFFDFCFBFFF6ECE6FFF6ECE6FFF6EC
            E6FFF6ECE5FFF4EBE5FFF4EBE5FFF4EBE4FFF4EBE4FFE1D9D2FF725648FF8A70
            65FF7B6154FFFFFFFFFFF8F2EDFFF8F1EDFFF7F1EDFFF7F0EDFFF8F1EBFFF7F0
            EBFFF7F0ECFF6A4F46FF72554BFF5A3E36FF0000001900000000000000000000
            0000000000010000000500000015AA7C6CFFFDFCFBFFF7EDE8FFF7EDE8FFF6EC
            E6FFF4EDE6FFF4ECE6FFF4ECE6FFF6ECE5FFF4ECE4FFE3DAD4FF755A4CFF8E75
            6AFF7F6458FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
            FFFFFFFFFFFF70564BFF75584EFF5C4138FF0000001700000000000000000000
            0000000000010000000500000015AC7D6FFFFEFDFCFFF7EFE9FFF7EDE8FFF7ED
            E9FFF6EDE8FFF6EDE6FFF6EDE6FFF6ECE6FFF6ECE5FFE7DDD7FF7A5E50FF9078
            6EFF82685BFF82675AFF806659FF7F6558FF7E6357FF7D6356FF7A6055FF795F
            53FF775D52FF765B50FF765A50FF5F443BFF0000001500000000000000000000
            0000000000000000000500000014AD7F70FFFEFDFCFFF7F0EAFFF7EFE9FFF7EF
            E9FFF7EFE9FFF7EFE8FFF6EDE8FFF6EDE8FFF6EDE6FFE8E0D9FF7E6253FF947C
            71FF674E44FF654B42FF634A41FF61473FFF5F473EFF5C443CFF5B433AFF5941
            39FF584038FF573F37FF775C52FF63473DFF0000001300000000000000000000
            0000000000000000000500000013AE8172FFFEFDFCFFF7F0EAFFF7F0EAFFF7F0
            E9FFF6EFE9FFF7EFE9FFF7EFE8FFF7EFE9FFF6EDE8FFEAE1DCFF816656FF9680
            75FF6B5248FFF4ECE6FFE9DACEFFE9D8CDFFE9D8CCFFE9D8CBFFE8D7CAFFF3EA
            E2FFF3E9E2FF5A4139FF795E54FF664B40FF0000001100000000000000000000
            0000000000000000000400000012AF8475FFFEFDFDFFF8F1EBFFF8F1EBFFF8F0
            EBFFF7F0EBFFF7F0EAFFF7F0EAFFF7F0E9FFF7EFE9FFEBE5DFFF856A59FF9983
            79FF70564DFFF4ECE6FFEBDACFFFEADACFFFE9D9CDFFE9D9CCFF513730FF6549
            3EFFF3EAE3FF5D453CFF7B6156FF6A4F43FF0000000F00000000000000000000
            0000000000000000000400000011B18676FFFEFDFDFFF8F1EDFFF8F2ECFFF8F1
            EBFFF7F1EBFFF7F1EBFFF7F0EBFFF8F0EAFFF7F0EAFFEEE7E2FF896E5CFF9C87
            7DFF755A50FFF5EDE8FFEBDCD2FFEADCD0FFEADACFFFEAD9CEFF49312BFF5D40
            39FFF4EBE4FF60483FFF7D6358FF6E5346FF0000000D00000000000000000000
            0000000000000000000400000010B48878FFFEFDFDFFF9F2EDFFF8F2ECFFF8F2
            ECFFF8F1ECFFF8F1ECFFF7F1ECFFF7F0EBFFF8F1EAFFF1E9E4FF8D7260FF9F8A
            81FF795E54FFF5EEE9FFECDED4FFEBDCD2FFEADCD1FFEADBD0FF452D27FF472E
            29FFE9D9CDFF644C43FF7F655AFF72574AFF0000000B00000000000000000000
            000000000000000000040000000FB58979FFFEFEFDFFF9F3F0FFF8F2EDFFF8F2
            EDFFF8F2EDFFF8F2EDFFF8F1EDFFF8F1ECFFF8F1ECFFF2EBE5FF917663FFA28D
            83FF7C6157FFF5EFEAFFF5EEE9FFF5EEE9FFF5EDE8FFF5EDE7FFF5ECE6FFF4EC
            E6FFF4ECE6FF695046FF998278FF765B4DFF0000000900000000000000000000
            000000000000000000030000000EB78C7DFFFEFEFEFFF9F4F0FFF9F3F0FFF9F3
            EFFFF8F2EFFFF8F2EDFFF8F2EDFFF8F2EDFFF8F1ECFFF5EEEAFFAC9686FF9377
            64FF7F645AFF998178FF967F75FF937A72FF8E786DFF8B7269FF866E64FF8269
            5FFF7D645BFF6E544AFF7C6052FF5B463BC20000000500000000000000000000
            000000000000000000030000000DDBC7BFFFFEFEFEFFF9F4F1FFF9F4F0FFF9F3
            F1FFF9F3F0FFF8F3EFFFF8F2EFFFF9F2EFFFF8F3EFFFF8F2EFFFF6EFEBFFF5EE
            E9FFF4EDE8FFF4EDE8FFF4EDE7FFF4EDE7FFF2EBE6FFF2EBE6FFF2EAE5FFF7F3
            F1FFD2BCB4FF000000190000000B000000040000000100000000000000002D27
            24B73D352FFF3C342EFF39312CFF372F2AFF352E28FF342B26FF322B25FF2F29
            23FF2E2721FF2D2620FF2C241FFF2B231EFF645D58FFF9F3EFFFF8F2EFFFF9F2
            EFFFF8F2EFFFF8F2EDFFF8F1ECFFF8F1ECFFF7F1ECFFF7F0EBFFF7F0EBFFFAF6
            F3FFAE8373FF0000001200000004000000000000000000000000000000004038
            32FF5B524CFF4E443EFF4C413AFF484038FF463D36FF443A33FF413731FF3F36
            2FFF3E352DFF3C312BFF393129FF382F27FF2A231EFFF9F3F0FFF9F3EFFFF9F3
            EFFFF9F2EFFFF9F3EDFFF9F2EDFFF8F1EDFFF8F1ECFFF8F1ECFFF6EFE9FFF8F4
            F2FFB08374FF0000001100000004000000000000000000000000000000004139
            34FF5D544DFFFAF8F7FF4D433DFFF9F6F5FF473E37FFF9F4F2FF433932FFF7F1
            EFFF3F362FFFF7F0EDFFF7EEECFF393029FF2B231EFFF9F4F0FFF9F3F1FFF9F4
            F0FFF9F3F0FFF9F3F0FFF9F3EFFFF9F3EFFFF8F2EFFFF6F0EAFFF5EDE7FFF6F1
            EEFFB38576FF000000100000000400000000000000000000000000000000423A
            35FF5F564FFFFAF8F7FF4E443EFFF9F6F5FF494038FFF8F5F3FF453A35FFF7F3
            F0FF403730FFF7F0EEFF3C322CFF3A312BFF2B241EFFFAF6F2FFFAF6F1FFF9F4
            F1FFF8F3F0FFF9F4F1FFF8F3EFFFF8F2EEFFF6F0EBFFF4EDE8FFF2E9E5FFF3EC
            E9FFB38978FF0000000F0000000400000000000000000000000000000000433B
            35FF625952FF88817BFFFAF8F7FF857E78FF4B4139FFF9F6F3FF463D36FFF8F2
            F0FF413831FFF7F1EEFF3E332CFF3C312BFF2C241FFFFAF6F2FFF9F6F3FFFAF6
            F2FFF8F2EFFFF6EFEBFFF5EDE9FFF3EAE6FFF0E5E2FFEEE2DDFFEBDED9FFECE1
            DDFFB5897AFF0000000E0000000400000000000000000000000000000000443C
            36FF645B55FFFAF9F8FF514740FFFAF8F6FF4D433CFFF9F6F5FFF9F5F2FFF9F3
            F2FF433932FFF7F2EFFF3F352DFF3D322CFF2D2620FFFAF7F4FFF9F5F2FFF9F5
            F1FFF5EEE9FFEEE2DCFFE6D8D0FFE1D2CAFFE0CEC7FFDECAC2FFDBC7BEFFDCC8
            C2FFB78C7DFF0000000D0000000300000000000000000000000000000000443D
            37FF675C56FFFBF9F8FF524841FFFAF8F7FF4E443EFFF9F7F5FF493F38FFF9F5
            F3FF443A33FFF8F2EFFF403630FF3E352DFF2E2721FFFAF7F4FFFBF7F4FFF8F2
            EFFFEFE6DFFFB38B7CFFA57766FFA47564FFA47464FFA47363FFA37363FFCFB5
            ACFFB78C7DFF0000000A0000000300000000000000000000000000000000453D
            37FF685E59FF665C55FF635853FF5F564FFF5D524CFF594F49FF564B44FF5249
            41FF4E453EFF4B413AFF493F38FF463D35FF2F2722FFFBF8F6FFFAF8F4FFF7F2
            EFFFECDFDAFFAB7E6DFFFFFFFFFFFFFEFEFFFFFDFCFFFEFCFAFFFCF9F7FFCAAF
            A6FF4C352D86000000060000000200000000000000000000000000000000342D
            2ABD453D37FF443C35FF423B35FF403833FF3F3732FF3D352FFF3B332EFF3931
            2BFF362F2AFF352D28FF342B27FF312A24FF645E5AFFFBF9F6FFFBF8F6FFF6F1
            EDFFEBDFDBFFB08574FFFFFEFEFFFEFBFAFFFDF9F7FFFCF6F3FFCEB2A8FF4F38
            3086000000080000000300000001000000000000000000000000000000000000
            0000000000000000000100000005E1CEC7FFFFFFFFFFFEFAF9FFFDFAFAFFFDFB
            F9FFFDFAF9FFFDFAF8FFFDFAF9FFFDF9F8FFFBF9F7FFFBF9F8FFF9F6F4FFF6F0
            ECFFECE1DBFFB68C7DFFFFFEFEFFFDF9F6FFFBF6F3FFD1B5ACFF533B33860000
            0008000000030000000100000000000000000000000000000000000000000000
            0000000000000000000100000004C49E90FFFFFFFFFFFDFBFAFFFDFBFAFFFDFB
            F9FFFDFBF9FFFEFAF9FFFDFAF9FFFDFAF8FFFDFAF8FFF9F7F6FFF9F4F2FFF5ED
            EBFFEBE1DDFFBC9584FFFFFEFEFFFBF6F3FFD4BAAFFF563F3685000000070000
            0003000000010000000000000000000000000000000000000000000000000000
            0000000000000000000100000004C5A190FFFFFFFFFFFEFDFBFFFDFBFBFFFDFD
            FBFFFEFBFAFFFEFBFAFFFDFBF9FFFDFBF9FFFBF7F6FFF9F5F3FFF7F1EEFFF3EB
            E7FFEDE1DCFFC19B8BFFFFFEFEFFD6BCB2FF59423A8400000006000000020000
            0001000000000000000000000000000000000000000000000000000000000000
            0000000000000000000100000003C6A191FFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
            FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFBF9F9FFF9F6F4FFF6F1F0FFF2EC
            E9FFEEE3E0FFE4D2CBFFDBC5BDFF5A453E830000000500000002000000010000
            0000000000000000000000000000000000000000000000000000000000000000
            000000000000000000000000000293776CBEC6A291FFC6A192FFC6A191FFC59F
            91FFC69F92FFC59F91FFC59F90FFC59F91FFC49F90FFC49E90FFC49D8FFFC49E
            8EFFC39D8EFFC39D8EFF5D484182000000040000000200000001000000000000
            0000000000000000000000000000000000000000000000000000000000000000
            0000000000000000000000000001000000010000000200000002000000030000
            0003000000030000000300000003000000030000000300000004000000040000
            0004000000040000000400000003000000010000000000000000000000000000
            0000000000000000000000000000000000000000000000000000}
          TabOrder = 5
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'Tahoma'
          Font.Style = [fsBold]
          ParentFont = False
        end
        object cxButton4: TcxButton
          Left = 4
          Top = 373
          Width = 149
          Height = 44
          Caption = 'Enviar'#13' NF-e Email'
          LookAndFeel.Kind = lfUltraFlat
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
            0000000000000000000000000001000000010000000100000001000000010000
            0001000000010000000100000001000000010000000100000000000000000000
            0000000000000000000000000001000000020000000400000004000000040000
            0005000000050000000500000005000000050000000500000005000000050000
            0005000000050000000500000005000000050000000500000005000000050000
            0005000000050000000500000005000000040000000200000001000000000000
            0000000000000000000100000003000000080000000D00000010000000110000
            0011000000110000001100000012000000120000001200000012000000120000
            0012000000120000001300000013000000130000001300000013000000130000
            00130000001300000013000000130000000F00000009000000031A131127402E
            2960694D449F8E675BD800000007312F69A28F7079EDB18574FFA96F4BFFA768
            3DFFA86A42FFAE806DFFAA8179FF4B49ADFF2C37BDFF373DB5FF9B777FFFAF82
            70FFA86D49FFA5653CFFA66840FFAD7D6AFFA87D75FF4846AAFF2933BBFF363A
            B3FF9A747DFFAD7F6EFFA66B47FF8A4926FF593423A300000009000000000000
            000000000000000000030000000C303CC1FF424AC3FFDCDAEDFFF7F0ECFFBC8B
            6AFFA7693FFFB07750FFEEE0D8FFF1EDF1FF5E65CBFF2D39BEFF404AC3FFDBD8
            EAFFF5EEEAFFBB8868FFA6673DFFAE744EFFECDED5FFEFEBEFFF5B62C8FF2A35
            BCFF3D47C0FFD8D6E7FFF5ECE7FFA26C50FF8C4B28FF0000000E1A1411274030
            2A606B4F469F906B5DD80000000E4F4EAFFF323FC3FFF7EFEAFFF6EFEAFFF6EF
            EAFFF7EFEAFFF6EFEAFFF6EEE9FFF6EEEAFFF7EEE9FFF6EFE9FFF6EEE9FFF6EE
            E9FFF6EEE8FFF6EEE8FFF6EEE8FFF6EDE8FFF6EEE8FFF6EEE8FFF6EDE8FFF5ED
            E8FFF6EDE8FFF6EEE7FFF6EDE7FFF4EBE7FF9F6952FF00000011000000000000
            000000000000000000030000000EA87E76FF646DD0FFF7F0ECFFF7F0EBFFF7F0
            EBFFF7EFEAFFF7F0EBFFF7EFEAFFF7EFEBFFF7EFEBFFF7EFEAFFF7EFEAFFF7EF
            EAFFF7EFE9FFF6EFE9FFF7EFE9FFF7EFE9FFF6EFE9FFF7EFE9FFF7EEE9FFF7EE
            E8FFF6EEE9FFF6EEE8FFF6EEE8FFD8D5E6FFA97B6BFF000000111B1412274231
            2B606C50489F936D61D80000000DB0816EFFF3F1F6FFF7F0ECFFF8F0ECFFFAF4
            F0FFFAF4F1FFF9F4F0FFFAF4F0FFF9F4F0FFF9F3F0FFF9F4F0FFF9F3F0FFF9F3
            F0FFF9F4EFFFF9F3F0FFF7EFEAFFF7EFEAFFF7EFEAFFF7EFEAFFF6EFEAFFF7EF
            E9FFF7EEE9FFF7EEE9FFF6EFE9FF353CB3FF957077FF00000010000000000000
            000000000000000000030000000CB0774FFFF1E6DEFFF8F1EDFFF8F1EDFFC59E
            8DFFC59E8CFFC49E8CFFC49D8CFFC59D8BFFC49D8CFFC49D8BFFC49D8BFFC49C
            8BFFC49C8AFFC49B8BFFF7EFEBFFF7F0EBFFF7F0EAFFF7F0EBFFF7F0EBFFF7EF
            EAFFF7EFEAFFF6EFEAFFF6EFEAFF222BB0FF2F33AAFF0000000F1B1412274232
            2C606D524A9F947063D80000000BB1774EFFB7835EFFF9F2EEFFF8F2EEFFF4EA
            E4FFF3E9E4FFF3E9E3FFF3E9E3FFF3E9E3FFF3E9E3FFF3E9E3FFF3E9E3FFF3E9
            E2FFF3E8E2FFF3E8E2FFF8F1ECFFF8F1ECFFF7F0ECFFF7F0ECFFF8F0EBFFF7F0
            EBFFF7F0ECFFF7F0EBFFF8EFEBFF575DC2FF242DB3FF0000000F000000000000
            000000000000000000030000000BB37F5BFFB27B51FFF8F3EFFFF9F2EFFFC6A0
            8FFFC69F8FFFC5A08FFFC69F8EFFC69F8DFFC59F8EFFC69F8DFFC59E8DFFC59E
            8CFFC59D8CFFC59E8CFFF8F1EDFFF8F2EDFFF8F1ECFFF7F1ECFFF7F0ECFFF8F1
            ECFFF8F0ECFFF7F0ECFFF8F0ECFFF2EFF2FF7C648BFF0000000E1B1513274334
            2E6070554C9F977366D80000000AB88D7EFFC59B7BFFF9F3F0FFF9F3F0FFF4EB
            E5FFF4EBE6FFF4EAE5FFF4EBE5FFF4EBE5FFF4EBE5FFF4EAE5FFF4EAE5FFF4EA
            E4FFF3EAE4FFF3EAE4FFF9F2EEFFF8F1EDFFF9F2EEFFF8F1EDFFF8F1EEFFF8F1
            EEFFF8F1EDFFF8F1EDFFF8F1ECFFEEE1DAFFB18576FF0000000D000000000000
            0000000000000000000200000009A7878EFFFBF6F3FFFAF4F1FFFAF4F1FFC8A2
            91FFC7A291FFC7A190FFC7A291FFC6A190FFC7A190FFC6A18FFFC6A08FFFC6A0
            8FFFC6A08EFFC6A08EFFF8F2EFFFF8F2EFFFF9F2EFFFF8F2EFFFF8F2EEFFF8F2
            EEFFF9F2EEFFF8F2EDFFF9F2EEFFAA7450FFAF826FFF0000000C1C1613274535
            2F6071584E9F997769D800000009535ECBFFE2E4F6FFFAF5F2FFFAF4F2FFFAF5
            F2FFFAF5F1FFFAF4F1FFFAF4F1FFFAF4F1FFF9F4F1FFF9F4F1FFF9F4F1FFF9F4
            F0FFF9F4F0FFF9F4F0FFF9F3F0FFF9F3F0FFF9F3F0FFF9F3F0FFF9F3EFFFF9F2
            EFFFF9F3EFFFF8F3EFFFF9F2EFFFA56944FFA66D48FF0000000C000000000000
            00000000000000000002000000084B5DD5FF5B6BD8FFFAF6F3FFFBF5F3FFFAF5
            F2FFFAF5F2FFFAF5F2FFFAF5F2FFFAF5F2FFFAF5F2FFFAF5F2FFFAF4F2FFFAF5
            F1FFFAF4F2FFF9F5F1FFF9F4F1FFFAF4F1FFF9F4F0FFFCF9F8FFFCF9F8FFFCF9
            F7FFFCF9F7FFFCF9F7FFFCF9F7FFBA8E70FFA66D46FF0000000B1C1614274536
            3160735A509F9B7A6CD800000007686CC4FF4D5FD6FFFAF6F4FFFBF6F4FFFBF6
            F4FFFBF6F3FFFBF5F3FFFAF6F3FFFAF6F3FFFAF6F3FFFBF5F2FFFAF5F2FFFAF5
            F3FFFAF5F2FFFAF5F2FFFAF5F2FFFAF4F1FFFAF4F2FFFCFAF8FF646CDAFF6269
            DAFF6067D8FF5E65D7FFFCF9F8FFF9F5F2FFB2846BFF0000000A000000000000
            0000000000000000000200000007BC9991FF7887E0FFFCF7F4FFFBF7F4FFFBF7
            F4FFFAF6F4FFFBF7F4FFFBF6F4FFFBF7F4FFFAF6F4FFFBF6F3FFFBF6F3FFFBF5
            F4FFFBF6F3FFFAF5F3FFFAF6F3FFFBF5F3FFFAF5F3FFFCFAF9FF6C74DDFF6972
            DDFF6770DCFF656EDBFFFCFAF8FFDFDFF2FFBA9284FF0000000A1D1714274638
            3260755C539F9E7D70D800000006C29C8BFFF6F7FCFFFCF7F6FFFBF7F5FFFBF7
            F6FFFBF7F5FFFCF7F5FFFBF7F5FFFBF6F5FFFBF7F5FFFBF6F4FFFBF6F5FFFBF6
            F4FFFBF6F4FFFBF6F3FFFAF6F4FFFBF6F4FFFAF6F4FFFDFAF9FF727DE1FF707B
            DFFF6F78DFFF6D76DEFFFDFAF9FF4D5DCEFFA88A90FF00000009000000000000
            0000000000000000000100000005C1936EFFF6EDE7FFFCF8F6FFFBF8F6FFFCF8
            F7FFFCF8F6FFFBF8F6FFFCF7F6FFFBF8F6FFFBF7F6FFFCF8F5FFFCF7F6FFFBF7
            F6FFFBF7F5FFFBF6F5FFFBF6F5FFFBF7F5FFFBF6F5FFFDFAF9FF7986E3FF7784
            E3FF7581E2FF747EE1FFFCFAF9FF4050CCFF4B56C6FF000000081D1715274739
            3360765E549FA07F72D800000005C3956CFFC89F7AFFFCF9F8FFFCF8F8FFFCF9
            F7FFFCF8F7FFFCF8F7FFFBF8F6FFFCF8F6FFFCF8F6FFFCF8F6FFFCF8F6FFFBF7
            F6FFFBF7F6FFFCF8F6FFFCF7F6FFFBF7F5FFFBF7F5FFFDFBFAFF7F8DE6FF7D8B
            E5FF7B89E5FF7A87E4FFFDFAF9FF6E7ADAFF4153CFFF00000007000000000000
            0000000000000000000100000003C09776FAC49870FFFFFFFEFFFFFFFEFFFFFE
            FEFFFFFEFEFFFFFEFEFFFFFEFEFFFFFEFEFFFFFEFEFFFFFEFEFFFFFEFEFFFFFE
            FEFFFFFEFEFFFFFEFEFFFFFEFEFFFEFEFEFFFEFEFDFFFEFEFEFFFEFEFEFFFEFE
            FEFFFEFEFEFFFEFEFEFFFEFEFEFFE8E0E2FF84759BF1000000051D181527483A
            3460775F569FA28274D8000000023B312D4BBF9875F3D0B2A6FFD1B1A6FFD0B1
            A5FFD0B1A4FFCFAFA3FFCFAEA2FFCEAEA2FFCEADA1FFCEACA0FFCDACA0FFCDAB
            9EFFCBAB9DFFCBAA9DFFCBA99CFFCAA89BFFC9A89AFFC9A699FFC8A598FFC8A5
            97FFC7A496FFC7A396FFC6A395FFA08171D33128244400000003000000000000
            0000000000000000000000000001000000010000000300000003000000040000
            0004000000040000000400000004000000040000000400000004000000040000
            0004000000040000000500000005000000050000000500000005000000050000
            0005000000050000000500000005000000040000000200000001000000000000
            0000000000000000000000000000000000000000000100000001000000010000
            0001000000010000000100000001000000010000000100000001000000010000
            0001000000010000000100000001000000010000000100000001000000010000
            0001000000010000000100000001000000010000000100000000000000000000
            0000000000000000000000000000000000000000000000000000000000000000
            0000000000000000000000000000000000000000000000000000000000000000
            0000000000000000000000000000000000000000000000000000000000000000
            0000000000000000000000000000000000000000000000000000000000000000
            0000000000000000000000000000000000000000000000000000000000000000
            0000000000000000000000000000000000000000000000000000000000000000
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
          TabOrder = 7
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'Tahoma'
          Font.Style = [fsBold]
          ParentFont = False
          OnClick = cxButton4Click
        end
        object cxButton5: TcxButton
          Left = 4
          Top = 425
          Width = 149
          Height = 44
          Caption = 'NF-e'#13'Complementar'
          LookAndFeel.Kind = lfUltraFlat
          LookAndFeel.NativeStyle = False
          LookAndFeel.SkinName = 'Metropolis'
          OptionsImage.Glyph.Data = {
            36100000424D3610000000000000360000002800000020000000200000000100
            2000000000000010000000000000000000000000000000000000000000000000
            00000000000000000000000000000000000000000002000000060000000D0000
            0013000000160000001600000016000000160000001700000017000000170000
            0017000000170000001700000017000000180000001800000018000000180000
            00180000001800000018000000150000000F0000000700000002000000000000
            000000000000000000000000000000000001000000030000000D7A594DBFA97C
            6CFFA97C6BFFA97C6BFFA97C6CFFA97B6CFFA97C6CFFA97C6BFFA87B6BFFA97B
            6BFFA97B6BFFA87B6BFFA87B6BFFA97B6BFFA87B6BFFA97B6BFFA87B6BFFA97B
            6BFFA87B6BFFA97B6BFFA87B6BFF79584DC00000000F00000004000000000000
            0000000000000000000000000000000000010000000500000012AA7D6EFFF8F2
            EEFFF8F2EEFFF9F2EEFFF8F2EEFFF9F2EEFFF9F2EEFFD0B3A9FFF8F1EDFFF8F0
            EDFFF8F1EDFFF8F1EDFFF8F1EDFFF8F1EDFFCEB1A7FFF8F1EDFFF8F0EDFFF8F0
            EDFFF8F0EDFFF8F1EDFFF8F0EDFFA97C6CFF0000001400000005000000000000
            0000000000000000000000000000000000000000000500000013AC7F6FFFF9F2
            EEFFF7EDE8FFF6EDE8FFF6EDE9FFF7EDE8FFF7EDE8FFC19E92FFF6EDE8FFF6ED
            E8FFF6EDE9FFF7EDE8FFF6EDE8FFF6ECE8FFC09D91FFF6EDE8FFF6EDE8FFF7ED
            E8FFF7ECE8FFF6ECE7FFF8F1EDFFAA7E6EFF0000001600000006000000000000
            0000000000000000000000000000000000000000000500000013AD8071FFF9F2
            EFFFF6EDE9FFF6EEE8FFF7EDE9FFF7EEE9FFF7EDE9FFC29E94FFF7EDE9FFF7ED
            E8FFF7EDE9FFF7EDE9FFF7EDE8FFF6EDE9FFC19E92FFF6EDE8FFF7EDE8FFF7ED
            E9FFF7EDE8FFF7EDE9FFF9F2EFFFAB7F6FFF0000001600000005000000000000
            0000000000000000000000000000000000000000000500000012AE8273FFF9F3
            F0FFF7EDE9FFF7EEE9FFF7EDE9FFF7EDE9FFF7EDEAFFC3A094FFF7EDE9FFF7EE
            E9FFF7EEE9FFF7EEE9FFF7EDE9FFF7EDE9FFC19F93FFF6EDE9FFF7EDE8FFF7ED
            E9FFF7EEE9FFF7EEE9FFF9F2EEFFAD8171FF0000001500000005000000000000
            0000000000000000000000000000000000000000000400000011AF8475FFCFB1
            A8FFC4A297FFC4A296FFC3A296FFC3A196FFC4A196FFC3A196FFC3A195FFC3A1
            95FFC2A195FFC3A094FFC2A094FFC2A094FFC29F94FFC29F94FFC19F93FFC29F
            93FFC29F94FFC29F93FFD2B6ADFFAE8273FF0000001400000005000000000000
            0000000000000000000000000000000000000000000400000011B18677FFFAF3
            F0FFF8EEEAFFF7EEEAFFF7EEEAFFF7EFEAFFF7EEEAFFC4A297FFF7EEEAFFF7EE
            EAFFF7EEE9FFF7EEEAFFF8EEE9FFF8EDEAFFC3A195FFF7EDEAFFF7EEEAFFF7EE
            EAFFF7EEE9FFF7EEEAFFF9F3F0FFAF8476FF0000001400000005000000000000
            0001000000010000000100000001000000010000000500000011B3887AFFFAF4
            F2FFF8EEEBFFF9F7F6FFEFEDECFFF2F0EFFFF8F2F0FFC6A69BFFF7EEEAFFF7EE
            EBFFF7EEEBFFF7EEEAFFF8EEEAFFF7EEEAFFC3A296FFF7EEEAFFF7EEEAFFF7EE
            EAFFF7EEEAFFF7EEEAFFF9F3F0FFB18677FF0000001300000005000000020000
            0003000000050000000600000006000000060000000A00000015B48A7CFFFAF5
            F2FFF8EFEBFFEDEBEAFF1A7B4FFF668B79FFDFE0DEFFE4D9D5FFF8F0EEFFF7EF
            EBFFF8EEEBFFF8EFEBFFF8EEEBFFF8EFEBFFC4A398FFF8EFEBFFF7EEEBFFF7EE
            EBFFF7EFEAFFF7EEEBFFFAF3F0FFB2887AFF0000001200000005000000060000
            000D000000130000001600000016000000160000001A00000025B58C7DFFFAF5
            F2FFF8F0ECFFEAE8E7FF197C50FF55A083FF256546FF9DABA0FFEFEDECFFF8F3
            F1FFF7EFEBFFF7EFEBFFF8EFEBFFF7EFEBFFC5A599FFF8EFECFFF8EFEBFFF8EF
            EBFFF7EFEBFFF7EFEBFFFAF4F2FFB48A7CFF00000012000000040000000D7A59
            4DBFA97C6CFFA97C6BFFA97C6BFFA87C6CFFA57869FFBFADA5FFC0A49BFFE8E1
            DDFFE5DDDBFFD5CECBFF1A7E52FF9BE6CCFF51BD93FF1F724EFF507A64FFCFCC
            C7FFE6DCD9FFD4BCB3FFC6A69AFFC7A59BFFC6A59AFFC6A59AFFC6A599FFC6A4
            99FFC5A599FFC5A599FFD7C0B8FFB68C7EFF000000110000000400000012AA7D
            6EFFF8F2EEFFF8F2EEFFF9F2EEFFF7F1EDFFF4EFECFFEFEEEDFFCEC8C3FF76A9
            94FF3C8B6BFF157850FF14774FFF61CFA5FF52CA9CFF5CCEA2FF3FA079FF1C62
            42FF93AB9FFFEFEDECFFF8F4F2FFF8F0EEFFC7A69CFFF8EFECFFF8EFECFFF8EF
            ECFFF8F0EDFFF8EFECFFFAF5F2FFB88E80FF000000100000000400000013AC7F
            6FFFF9F2EEFFF7EDE8FFF6EDE8FFF6F0EDFFF2F0EFFFA8C4B8FF318A66FF43AA
            82FF54C097FF65D2A9FF64D2A9FF64D1A9FF52C99DFF51C99CFF57CC9FFF59C6
            9CFF277D57FF44765EFFCAD2CDFFF8F5F4FFC8A89DFFF9F0EDFFF9F0ECFFF8F0
            EDFFF9F0EDFFF8F0EDFFFAF5F3FFB99082FF0000000F0000000400000013AD80
            71FFF9F2EFFFF6EDE9FFF7EFE9FFF6F4F2FF9FC1B2FF3D9D78FF61C9A3FF5FD1
            A7FF59CEA2FF55CC9FFF54CC9DFF54CC9DFF54CC9EFF53CA9EFF53CA9DFF53CB
            9EFF63D1A8FF66BF9EFF257C57FFF4F1F1FFC9A99FFFF8F0EEFFF8F0EEFFF9F0
            EDFFF8F1EDFFF9F0EDFFFAF5F4FFBA9384FF0000000F0000000400000012AE82
            73FFF9F3F0FFF7EDE9FFF8F3F0FFDDE3DEFF2E916AFF83DBBBFF87DFC0FF9CE6
            CDFFA6E9D3FFA5E9D3FFA4E9D3FFA4E9D2FF55CC9FFF55CC9EFF5CCFA3FF74D1
            B0FF419A78FF4F9276FFD1DBD7FFF9F6F6FFC9AAA0FFF9F1EEFFF9F0EEFFF8F1
            EDFFF9F1EDFFF9F0EDFFFBF5F4FFBC9486FF0000000E0000000400000011AF84
            75FFCFB1A8FFC4A297FFE3D7D2FF76AB93FF65BB9BFF5BB694FF31956EFF1883
            58FF188257FF178156FF178055FFA6E9D3FF5ACEA3FF6FD6B1FF64BB9BFF1D7F
            58FF529378FFE6DEDBFFE3D4D0FFCFB3A9FFCAABA1FFCAACA1FFCAABA0FFCAAB
            A0FFCAABA0FFCAABA0FFDDC9C1FFBD9689FF0000000D0000000300000011B186
            77FFFAF3F0FFF8EEEAFFF4F2F0FF409B76FF3C9F79FF7EB59EFFBAC4B9FFF2F1
            F1FFF2F0F0FFEAE8E8FF208B5AFFA9EAD5FF78D1B0FF3A9873FF64A289FFE0E4
            E2FFF5F4F3FFFAF7F5FFFAF1EFFFFAF1EFFFCBADA3FFF9F2EFFFF9F2EFFFF9F1
            EEFFF9F1EFFFF9F1EEFFFBF7F4FFBE988AFF0000000D0000000300000010B388
            7AFFFAF4F2FFF8EEEBFFF5F3F2FF2D946AFFBED4CAFFF1F0F0FFC7ABA2FFFCF8
            F7FFF9F2F0FFF4F2F1FF228E5BFF64B899FF39936FFFAFC4B8FFF6F4F3FFFAF6
            F4FFFAF3F0FFF9F2EFFFF9F2EFFFF9F2EFFFCBAEA4FFF9F2EFFFF9F2EFFFF9F1
            EFFFFAF2EFFFF9F2EFFFFCF7F6FFC0998DFF0000000C000000030000000FB48A
            7CFFFAF5F2FFF8EFEBFFF9F6F5FF8DC1ABFFF6F3F2FFE6E3E1FFAB7F6FFFFCF7
            F6FFFAF2EFFFF6F5F4FF289160FF7DB59DFFECEEECFFEADFDCFFF9F4F1FFF9F2
            EFFFFAF2EFFFF9F2F0FFFAF2F0FFFAF2EFFFCDAFA5FFFAF2F0FFFAF2EFFFFAF2
            EFFFF9F2EFFFF9F2EFFFFCF7F6FFC19B8EFF0000000B000000030000000FB58C
            7DFFFAF5F2FFF8F0ECFFF9F4F2FFF8F2EFFFF6F0EDFFE5E2E0FFAC7F71FFFCF9
            F7FFFCF9F6FFFCFBFBFFF9F8F8FFFAF9F9FFFCF9F8FFE4D2CBFFFCF7F6FFFCF7
            F6FFFCF7F6FFFCF8F6FFFCF7F6FFFCF7F6FFE2D0C9FFFCF7F6FFFAF5F3FFFCF7
            F6FFFCF7F6FFFCF7F6FFFCF7F6FFC29C8FFF00000009000000020000000EB78E
            80FFDBC6BEFFC8A89EFFC8A89DFFC7A69CFFC5A59BFFD2C2BCFFB38E83FFAD80
            71FFAD8171FFAD8171FFAC8073FFAC8073FFAC8171FFAC8073FFAD8071FFAD80
            71FFAC8071FFAC8071FFAC8071FFAC8071FFAC8071FFC39E91FFC39E91FFC39E
            90FFC39E91FFC39E90FFC39D90FF91756BC100000006000000020000000DB890
            82FFFAF5F4FFF8F0ECFFF9F0EDFFF9F0EDFFF6EDEAFFF3EBE8FFD0BDB8FFE5E2
            E0FFE3DFDEFFE2DFDDFFE2DFDDFFE2DFDDFFE2DFDDFFCCBDB9FFE2DEDDFFE2DE
            DDFFE2DEDDFFE2DFDDFFE2DEDDFFE3E1E0FFC6B3ACFF000000180000000D0000
            00090000000900000009000000080000000600000003000000010000000DBA92
            84FFFBF5F4FFF8F0EEFFF8F0EDFFF8F0EDFFF7F0EDFFF6EEEBFFC6A79DFFF2EA
            E7FFF3EAE7FFF2EAE7FFF2EAE7FFF2EAE6FFF2EAE7FFC3A499FFF3EAE7FFF3EA
            E6FFF2EAE7FFF3EAE7FFF2EAE7FFF4EFEDFFB58D7FFF00000011000000060000
            00020000000200000002000000020000000100000001000000000000000CBC94
            87FFFBF6F4FFF9F1EDFFF9F1EEFFF9F1EEFFF8F0EDFFF7F0ECFFC9ABA0FFF8F0
            ECFFF8EFEDFFF7F0ECFFF7F0ECFFF8EFECFFF7F0EDFFC8A89EFFF7EFEDFFF7EF
            EDFFF8EFECFFF7F0ECFFF8EFECFFF9F4F3FFB99283FF0000000F000000040000
            00000000000000000000000000000000000000000000000000000000000BBD96
            89FFFBF7F5FFF9F1EEFFF9F1EEFFF9F1EEFFF9F1EEFFF9F1EEFFC8AEA1FFF8F1
            EDFFF9F1EEFFF9F0EEFFF9F0EDFFF9F0EEFFF9F1EEFFC9AAA0FFF9F1EEFFF9F0
            EEFFF8F1EDFFF9F1EDFFF9F0EDFFFBF5F4FFBC9486FF0000000E000000040000
            00000000000000000000000000000000000000000000000000000000000BC185
            53FFDFBB93FFCA935FFFCA935FFFC9925EFFC9925DFFC9915EFFC8915DFFC890
            5CFFC78E5BFFC78C58FFC68C58FFC58B57FFC58955FFC48954FFC48753FFC386
            52FFC38651FFC28551FFC1854FFFD8AC81FFB3723EFF0000000D000000030000
            00000000000000000000000000000000000000000000000000000000000AC185
            54FFEDD3AEFFE0B580FFDFB57FFFE0B47FFFE0B47DFFDFB47DFFC8905CFFDEB2
            7CFFDEB27BFFDDB17AFFDDB079FFDDAF78FFDDAE77FFC48954FFDCAD75FFDCAC
            74FFDBAB73FFDBAA73FFDBAA73FFE9C99FFFB3723EFF0000000D000000030000
            000000000000000000000000000000000000000000000000000000000009C185
            54FFEDD3AFFFE0B580FFE0B57FFFDFB57FFFDFB57EFFDFB47EFFC8905CFFDEB2
            7BFFDEB27BFFDEB17AFFDEB07AFFDDB078FFDCAE78FFC58A55FFDCAD76FFDCAC
            75FFDBAC74FFDBAB73FFDAAB73FFE9CAA1FFB4723EFF0000000C000000030000
            000000000000000000000000000000000000000000000000000000000008C185
            54FFEED4B0FFE0B680FFE0B580FFE0B57FFFE0B47EFFDFB47EFFC8915CFFDEB3
            7CFFDEB27CFFDEB27BFFDEB17AFFDEB079FFDDAF78FFC58A55FFDCAE76FFDCAD
            76FFDCAC75FFDBAB74FFDBAB73FFEACAA2FFB4733EFF0000000B000000030000
            000000000000000000000000000000000000000000000000000000000007C185
            54FFEED4B1FFEED4B1FFEED4B0FFEDD4AFFFEDD3AFFFEDD3AEFFE0BC94FFEDD3
            ADFFEDD3ADFFECD1ABFFEBD0AAFFEBD0AAFFEBD0A9FFDDB68CFFEBCFA7FFEBCE
            A7FFEBCDA6FFEBCDA5FFEBCCA4FFEACBA3FFB4723FFF00000009000000020000
            0000000000000000000000000000000000000000000000000000000000058F63
            3FC0C18554FFC18553FFC08352FFBF8251FFBF8250FFBE804FFFBD804EFFBD7F
            4DFFBC7E4CFFBB7D4AFFBB7B49FFBA7A48FFB97A47FFB87845FFB77744FFB777
            44FFB67543FFB67541FFB57441FFB5733FFF85562FC100000006000000020000
            0000000000000000000000000000000000000000000000000000}
          TabOrder = 8
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'Tahoma'
          Font.Style = [fsBold]
          ParentFont = False
          OnClick = cxButton5Click
        end
        object cxButton6: TcxButton
          Left = 4
          Top = 477
          Width = 149
          Height = 44
          Caption = 'Carta'#13'Corre'#231#227'o'
          LookAndFeel.Kind = lfUltraFlat
          LookAndFeel.NativeStyle = False
          LookAndFeel.SkinName = 'Metropolis'
          OptionsImage.Glyph.Data = {
            36100000424D3610000000000000360000002800000020000000200000000100
            2000000000000010000000000000000000000000000000000000000000010000
            0002000000050000000700000008000000080000000800000009000000090000
            000900000009000000090000000A0000000A0000000A0000000A0000000A0000
            000B0000000B0000000B0000000B0000000B0000000B0000000C0000000C0000
            000C0000000C0000000C0000000B000000090000000400000001000000020000
            000800000012000000180000001B0000001C0000001D0000001D0000001E0000
            001F0000001F0000002000000021000000220000002300000023000000240000
            00250000002500000026000000270000002800000028000000290000002A0000
            002B0000002B0000002B000000290000001F0000000E00000003000000030000
            000E000000320000003300000034000000350000003600000037000000380000
            00390000003A0000003B0000003C0000003D0000003E0000003F000000400000
            0041000000420000004300000044000000450000004600000047000000480000
            00490000004A0000004B0000004C0000004D0000001C00000007000000030000
            000E000000230000002400000025000000260000002700000028000000280000
            00290000002A0000002B0000002C0000002D0000002E0000002F000000300000
            0031000000310000003200000033000000340000003500000036000000370000
            0038000000390000003A0000003B0000003C0000002000000008000000020000
            000900000016000000170000001700000018000000190000001A0000001A0000
            001B0000001C0000001D0000001E0000001E0000001F00000020000000210000
            0022000000230000002300000024000000250000002600000027000000280000
            0028000000290000002A0000002B0000002C0000001C00000007000000010000
            00040000000B0000000B0000000C0000000C0000000D0000000E0000000E0000
            0010000000110000001100000011000000120000001200000013000000140000
            00140000001500000016000000170000001700000018000000190000001A0000
            001A0000001B0000001C0000001D0000001E0000001100000005000000000000
            0001000000030000000400000004000000040000000500000007000000090000
            000D000000100000000E0000000B0000000A000000090000000A0000000B0000
            000B0000000C0000000C0000000D0000000E0000000E0000000F000000100000
            00100000001100000012000000110000000D0000000600000002000000000000
            00000000000000000000000000000000000000000000000000020000000B0000
            001A000000220000001C0000000E000000050000000100000001000000000000
            0000000000000000000000000000000000000000000000000000000000000000
            0000000000000000000000000000000000000000000000000000000000000000
            0000000000000000000000000000000000000000000100000005000000191E21
            5A9D2E30A3FF03022CA20000002A000000140000000800000004000000020000
            0001000000010000000100000000000000000000000000000000000000000000
            0000000000000000000000000000000000000000000000000000000000000000
            00000000000000000000000000000000000000000001000000070000001E4951
            BEFF6E88F7FF2836ACFF03022CA90000003500000021000000160000000F0000
            000C000000080000000300000001000000000000000000000000000000000000
            0000000000000000000000000000000000000000000000000000000000000000
            000000000000000000000000000000000000000000010000000500000017494D
            719C6F81E9FF4E6BF3FF37326AFF392627F3211513A70A07055D000000330000
            002C000000210000001200000007000000020000000000000000000000000000
            0000000000000000000000000000000000000000000000000000000000000000
            00000000000000000000000000000000000000000000000000020000000B0000
            0022494D71A15D5B8AFF684C41FF7B5C4FFF64473DFF463029FF3E2822FF3C27
            21FF2E1C1AD90201013C00000016000000070000000200000000000000000000
            0000000000000000000000000000000000000000000000000000000000000000
            0000000000000000000000000000000000010000000100000002000000050101
            01110101012D725E58F0B0988BFF876558FF745346FF5B3B30FF56382DFF5737
            2EFF2F1A15FF130C2DDD0101073F010101180000000800000002000000000000
            0000000000000000000000000000000000000000000000000000000000010000
            0003000000030000000400000004000000050000000500000005000000070000
            000C0D0D0D2B443730A6806254FFBAA193FF82604FFF67473BFF634338FF3A21
            1AFF483977FF1F1E9FFF0A0753E009090E490404041E00000009000000030000
            0000000000000000000000000000000000000000000000000000000000060000
            000A0000000D0000000F00000010000000110000001200000013000000150000
            00191B1B1B3E3F3A37887C6153FFBAA08EFFA17D67FF876655FF4D3027FF5545
            85FF4647CDFF3636C4FF1E1CA1FF0F0C5BE716161C5E07070722000000080000
            0001000000000000000000000000000000000000000000000000112533513775
            A2E9397FB0FF377EB0FF357BAEFF347AADFF3278ABFF3077ABFF2E76A9FF2D74
            A7FF3D7AA9FF82A0B6FF7F6556FFAC8D7FFFA88672FF755243FF5D4C8CFF4F50
            CFFF4040CAFF4041CCFF3A3AC6FF2120A4FF141465F016161B5B0505051C0000
            00070000000100000000000000000000000000000000000000003E7EACF26DB2
            D6FF92D8F3FF8DD6F2FF89D4F2FF87D2F2FF83D0F0FF80CDF0FF7BCBF0FF79C8
            EFFF74C3E7FFBCD3DFFF816657FF9C7D6FFF886756FF645492FF575BD2FF4243
            CCFF4242CBFF4343CBFF4445CDFF3E3EC6FF2323A8FF110F60E609090F450101
            0115000000070000000100000000000000000000000000000000458AB8FF9ADB
            F4FF9ADBF5FF96DAF4FF91D8F3FF8DD5F2FF8BD4F2FF87D2F2FF83CEF1FF80CC
            F0FF7DC9EAFFCADBE4FF8A796DFF826355FF70629DFF6164D6FF4546CDFF4546
            CCFF4546CDFF4546CCFF4647CDFF4949CFFF4142CAFF2626AAFF0E0C5EDF0202
            0839000000120000000600000001000000000000000000000000488DBBFFA5DF
            F6FFA0DEF6FF9BDCF5FF9ADBF4FF8CB8C8FF756A61FF73685FFF72675EFF87D1
            F1FF71645DFFBEBAB7FFBCB9B8FF635F95FF8189DAFF5256D1FF474ACEFF474A
            CFFF474ACEFF474ACEFF474ACEFF484BD0FF4C50D1FF4347CBFF282AACFF0F0C
            61DC0101083500000011000000060000000100000000000000004C91BDFFA9E1
            F6FFA9E2F7FFA5DFF6FFA0DDF6FF776D64FF9ADBF4FF96DAF3FF736860FF8DD6
            F3FF71655CFF8BD1EFFFC4E1EEFFBBB9BFFF5F67C1FF7B82D9FF585CD5FF4B4E
            D1FF4B4ED1FF4B4ED1FF4B4ED1FF4B4ED2FF4D51D2FF5156D4FF484CCEFF2C2D
            B0FF100F64DB01010833000000100000000600000001000000005093C0FFACE2
            F5FFADE5F8FFACE3F7FFA7E1F6FF97BDCBFF776D65FF756B63FF756961FF96D9
            F3FF71665DFF8DD5F2FF8DD2F0FFBDB8B6FFC2D3E1FF646DC6FF858DDEFF5C63
            D7FF4F53D2FF4F53D3FF4F53D3FF4E53D3FF4F53D3FF5056D4FF555BD6FF4B50
            D1FF2F32B5FF121067DA010108320000000F00000005000000015397C2FFB5E7
            F9FFB3E7F8FFB1E6F8FFADE5F8FFACE3F7FFA7E1F6FFA4DFF6FF756B62FF9BDC
            F5FF73685FFF96DAF4FF91D7F2FF756A61FFC9E4F0FFC5D4E3FF6B76CAFF9099
            E2FF6A71DCFF5F67DBFF6169DCFF636BDDFF6169DCFF5E66DBFF5C63D9FF5C63
            D9FF5056D2FF3437B7FF15136CDA020109300000000E00000005589BC5FFBDE9
            F9FFB9EAFAFFB6E8FAFFB2E7F9FFB1E6F8FF797067FF786F65FF99BECAFFA4DF
            F6FF746A60FF72685FFF71675DFF8AB6C5FF96D7F1FFCBE6F1FFC7D8E6FF727D
            D1FF9EAAE8FF7782E3FF6972DFFF6972DFFF6872DFFF6872DFFF6872DFFF6973
            E0FF666FDEFF555DD4FF383DBBFF181871DB0202092D0000000C5B9DC7FFD6F2
            FBFFBEECFAFFBCEBFAFFB9EAFAFFB6E8FAFFB3E7F9FFB1E6F8FFADE5F8FFABE3
            F7FF756B62FFA4DFF6FFA0DEF5FF9DDCF5FF99DAF4FF99D9F2FFCCE8F2FFCADC
            E8FF7883D4FFA7B4ECFF7F8BE6FF707BE2FF6F7BE2FF6F7BE2FF6F7BE2FF6F7B
            E2FF707CE2FF707CE2FF5B63D7FF3D42BFFF1B1972D80101031C5998BEF1AACF
            E4FFEFFBFEFFECF9FDFFE9F8FDFFE6F7FDFFE1F6FDFFDEF5FDFFD9F3FCFFD4F1
            FBFF929592FFCCEEFAFFC8ECF9FFC1EAF9FFBCE7F8FFB6E5F8FFB4E2F5FFD3EB
            F4FFCCDDEAFF7D89D8FFB0BDEFFF8795E9FF7885E5FF7785E6FF7885E6FF7885
            E6FF7885E5FF7986E6FF7885E6FF6069D9FF363AB0FF12124891182832414C7F
            9FCA5EA0C9FF5C9EC8FF5A9CC6FF589AC5FF5598C3FF5397C2FF5194C0FF4F92
            BFFF4C90BDFF4A8EBCFF488DBAFF468AB8FF4388B7FF4186B6FF3F84B4FF4385
            B5FF89B1CCFF92B1CDFF7686D6FFB6C4F1FF8F9EEBFF7F8DE8FF7F8DE8FF7F8E
            E8FF7F8EE8FF7F8EE8FF808FE8FF7A88E6FF5E66D5FF2F2F94EB000000010000
            0002000000030000000400000004000000050000000600000006000000070000
            000800000008000000090000000A0000000B0000000B0000000C0000000D0000
            000E040404152E2E2E3F393A415A6872BDDEBCCAF3FF96A6EDFF8797EAFF8797
            EBFF8797EAFF8797EAFF8697EAFF8899EAFF8591E6FF3A3BA5F7000000000000
            0000000000010000000100000001000000010000000100000001000000020000
            0002000000020000000200000002000000020000000300000003000000030000
            000300000003010101070B0B0B1312121928656FB8D4C1CFF5FF9EAFF0FF8E9F
            EDFF8EA0EDFF8EA0EDFF8EA0EDFF98AAEFFF8D99E2FF343688C9000000000000
            0000000000000000000000000000000000000000000000000000000000000000
            0000000000000000000000000000000000000000000000000000000000000000
            000000000000000000000000000101010105090A111C6772B8D2C6D4F6FFB9CA
            F6FFA0B3F2FF98ABF1FFA3B6F3FFBECEF6FF727BCFFD15163251000000000000
            0000000000000000000000000000000000000000000000000000000000000000
            0000000000000000000000000000000000000000000000000000000000000000
            00000000000000000000000000000000000100000003090A1019636DB3CDABB9
            EFFFCCDBF7FFD5E4FAFFBDCBF2FF7E8AD9FD282B526F00000008000000000000
            0000000000000000000000000000000000000000000000000000000000000000
            0000000000000000000000000000000000000000000000000000000000000000
            00000000000000000000000000000000000000000001000000020303050B3E45
            71836671BBD4727CD1EE5860A5C0191B2E3E0000000600000002000000000000
            0000000000000000000000000000000000000000000000000000000000000000
            0000000000000000000000000000000000000000000000000000000000000000
            0000000000000000000000000000000000000000000000000000000000010000
            0003000000040000000400000004000000030000000100000000}
          TabOrder = 9
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'Tahoma'
          Font.Style = [fsBold]
          ParentFont = False
          OnClick = cxButton6Click
        end
        object cxButton12: TcxButton
          Left = 4
          Top = 528
          Width = 149
          Height = 44
          Caption = 'Retorno'#13'Mercadoria'
          LookAndFeel.Kind = lfUltraFlat
          LookAndFeel.NativeStyle = False
          LookAndFeel.SkinName = 'Metropolis'
          OptionsImage.Glyph.Data = {
            36100000424D3610000000000000360000002800000020000000200000000100
            2000000000000010000000000000000000000000000000000000000000000000
            0000000000000000000000000000000000000000000000000000000000000000
            0000000000010000000100000003000000050000000300000001000000010000
            0000000000000000000000000000000000000000000000000000000000000000
            0000000000000000000000000000000000000000000000000000000000000000
            0000000000000000000000000000000000000000000000000000000000000000
            000100000003000000070000000E000000120000000E00000007000000030000
            0001000000000000000000000000000000000000000000000000000000000000
            0000000000000000000000000000000000000000000000000000000000000000
            0000000000000000000000000000000000000000000000000000000000010000
            00020000000800000014071A3E92376CAFFF07193E9200000015000000080000
            0003000000010000000000000000000000000000000000000000000000000000
            0000000000000000000000000000000000000000000000000000000000000000
            0000000000000000000000000000000000000000000000000001000000020000
            000800000014091B40943B7FBCFF64C8F8FF397EBBFF081A3F94000000150000
            0009000000030000000100000000000000000000000000000000000000000000
            0000000000000000000000000000000000000000000000000000000000000000
            0000000000000000000000000000000000000000000100000002000000080000
            0013091D41933E82BEFF61C7F8FF5BC4F7FF61C7F7FF3B7FBDFF081A40940000
            0014000000090000000200000001000000000000000000000000000000000000
            0000000000000000000000000000000000000000000000000000000000000000
            0000000000000000000000000000000000010000000200000007000000120B1F
            44924185C0FF65C9F7FF5EC5F7FF5DC6F7FF5CC5F7FF63C8F7FF3E82BDFF091C
            4193000000140000000800000002000000010000000000000000000000000000
            0000000000000000000000000000000000000000000000000000000000000000
            00000000000000000000000000000000000200000007000000110B2146914587
            C0FF69CCF8FF61C7F7FF60C7F8FF4AA7E2FF50B5EFFF5FC6F7FF65C9F7FF4084
            BFFF0A1D42930000001300000008000000020000000100000000000000000000
            0000000000000000000000000000000000000000000000000000000000000000
            000000000000000000000000000200000006000000100D244790498BC3FF6DCC
            F8FF63C9F7FF62C8F8FF4CA7E0FF4EADEAFF3F9ADAFF52B7F0FF60C7F8FF68CA
            F8FF4386C0FF0B1F4492000000130000000A0000000600000009000000090000
            0008000000040000000100000000000000000000000000000000000000000000
            00000000000000000002000000060000000F0E25498F4E8FC5FF71CEF9FF67CA
            F8FF66CAF8FF4CA5DDFF51AFEAFF47A9E8FF50AFEBFF409AD9FF54B8F0FF63C8
            F8FF6ACCF8FF4588C1FF0C20459203020226140E0C66251A16A734241FE33322
            1CDC170F0D6D0000000700000001000000000000000000000000000000000000
            000000000002000000060000000E10284B8E5192C7FF76D1F9FF6ACBF8FF6ACB
            F8FF4EA3DBFF54B2EBFF4AACEAFF4AABEAFF49ABE9FF52B0EBFF4299D8FF56BA
            F0FF65C9F8FF6ECCF7FF4786B9FF17233BB009070540050303260000000C0906
            0534251915A42318149B00000007000000010000000000000000000000000000
            0001000000050000000D122A4D8D5696C9FF7BD3F9FF6ECEF8FF6ECEF8FF4EA2
            D8FF58B5ECFF4EAFEBFF4DAFEBFF4DAEEAFF4DADEAFF4CAEEAFF54B2EBFF4399
            D7FF59BBF1FF68CBF8FF70CCF6FF4A8CC1FF0E24479100000012000000080000
            00040000000B2E1F1BC2100B094C000000030000000000000000000000010000
            00040000000C132C508C5A99CBFF80D5F9FF73D0F8FF72CFF8FF4E9ED5FF5CB9
            EDFF53B3EDFF52B3ECFF51B2ECFF50B1EBFF50B0EBFF4FB2EBFF4FB0EBFF57B5
            ECFF4499D6FF5CBDF1FF6ACBF8FF74CFF9FF4F90C7FF0F254990000000100000
            000700000006150F0D5F2B1D1AB2000000070000000000000000000000020000
            0007152F518A5F9DCEFF85D7F9FF76D2F8FF76D2F9FF4E9CD2FF60BCEFFF57B6
            EDFF57B7EDFF56B6EDFF55B5ECFF55B5ECFF54B4EDFF53B4ECFF52B4EDFF52B3
            ECFF5AB7EDFF4598D5FF5EBEF1FF6DCEF8FF77D2F9FF5193C8FF10284B8F0000
            000F00000008070504283B2A23E7000000090000000000000000000000020000
            0008437EBBFFB0E7FBFF7BD3F9FF79D3F9FF549CD0FF65BFF0FF5BBAEFFF5BBA
            EFFF5AB9EFFF59B9EEFF58B8EDFF58B8EEFF57B7EEFF56B7EDFF56B6EEFF56B6
            EDFF55B6EDFF5EBAEDFF4698D4FF61C1F2FF70CEF9FF7AD3F9FF5595C9FF112A
            4D8E0000011101010014422F29FC0000000A0000000000000000000000010000
            0006213F5D8685B7DCFFA6E3FCFF7DD5F9FF6FCAF5FF4892CBFF60BFF0FF5FBD
            EFFF5FBCEFFF5EBCEFFF5DBBEFFF5CBBEFFF5CBAEFFF5BBAEEFF5AB9EFFF59B9
            EEFF58B8EDFF57B8EEFF60BCEEFF4798D3FF64C3F3FF73D0F9FF7DD3F9FF518F
            C5FF132B4F8F05040329412F28EF0000000A0000000000000000000000010000
            00030000000822405D8786B8DDFFA9E6FCFF80D7F9FF73CDF5FF4992CAFF63C1
            F0FF63C0F0FF62C0F0FF62BEF0FF60BEF1FF5FBDF0FF5FBDF0FF5EBDEFFF5DBC
            EFFF5DBBEFFF5DBBEFFF5CBBEFFF4897D1FF68C6F4FF76D2F9FF74CFF6FF71BE
            E9FF62A6D3FF273951A73A2B25D50000000A0000000000000000000000000000
            0001000000030000000822405E8688B9DDFFACE6FCFF84D8F9FF76CEF6FF4991
            C8FF67C4F1FF66C3F1FF66C3F1FF65C2F1FF64C2F1FF64C1F1FF63C1F0FF62C0
            F0FF62C0F0FF60BEF0FF4995CEFF6DC9F5FF7AD4F9FF7AD3F9FF76CEF5FF61AF
            DFFF88CEEEFF435671FF281D1996000000080000000000000000000000000000
            000000000001000000030000000823425F868ABADDFFAFE8FCFF87DAFAFF7AD0
            F7FF4990C7FF6BC7F3FF6BC6F2FF69C5F2FF68C5F2FF68C4F2FF68C4F2FF67C3
            F2FF66C3F1FF4A94CCFF73CCF5FF7ED5F9FF7ED5F9FF7CD4F8FF76CBF1FF5BA1
            D5FF8ACEECFF4B4446FF0E0A0942000000060000000000000000000000000000
            00000000000000000001000000030000000723425F858BBBDEFFB2E8FCFF8ADB
            FAFF7ED3F6FF498FC5FF6FC9F4FF6EC9F3FF6EC8F3FF6DC8F2FF6DC7F2FF6BC7
            F3FF4B92C9FF77CFF6FF83D7F9FF83D7F9FF81D7FAFF7ED3F7FF6CB9E5FF5EA5
            D6FF7A9EAEFF635E63FF00000014000000030000000000000000000000000000
            0000000000000000000000000001000000020000000723435F858CBCDEFFB4EA
            FCFF8DDDFAFF81D5F8FF4B8FC4FF74CDF4FF73CBF4FF73CBF3FF73CBF4FF4B91
            C7FF7CD2F7FF87DAF9FF8DDBFAFFABE6FBFFB6E8FAFF9CD8F2FF62A5D5FF6CAE
            D3FF5E5551FF86A1BEFF0000000E000000030000000000000000000000000000
            000000000000000000000000000000000001000000020000000624435F848EBD
            DFFFB6EAFCFF90DEFAFF85D8F8FF4B8DC2FF78D0F5FF78D0F5FF4B8FC4FF81D5
            F8FF8BDCFAFF8BDCFAFFA0D9F2FF5C93C4FF3971B0FF5086BBFF6B99BCFF6065
            65FFA2B4BCFF92B5D7FF0000000B000000030000000000000000000000000000
            0000000000000000000000000000000000000000000100000002000000062444
            608490BEE0FFB9ECFCFF93DFFBFF88DAF8FF4B8CC2FF4B8CC2FF86D8F8FF8FDE
            FAFF8FDDFAFF8EDDFAFF558ABDFF173150821E25327E414656E3594D4BFF9DB9
            C3FFC5EBF7FF6095C7FF0000000A000000030000000000000000000000000000
            0000000000000000000000000000000000000000000000000001000000020000
            00052445618392BFE0FFBCEDFCFF95E1FAFF8CDBFAFF8CDCF9FF94E0FAFF93E0
            FAFF92DFFAFF92DFFAFF3066A6FF020508194C3A34D62E26259485A1C2FFBCE8
            F8FFB7EAFAFF4886C1FF00000009000000020000000000000000000000000000
            0000000000000000000000000000000000000000000000000000000000010000
            0002000000052545618393C1E1FFBFEDFCFF99E3FAFF98E2FAFF98E2FAFF97E2
            FAFF97E2FBFF96E1FAFF4580B7FF132D4D8300000116142D4D85729FC9FF95E0
            FAFFB3EAFCFF4888C1FF00000008000000020000000000000000000000000000
            0000000000000000000000000000000000000000000000000000000000000000
            000000000002000000042646628293C2E1FFC1EFFCFF9CE4FBFF9BE3FBFF9AE3
            FBFF9AE3FAFF99E3FAFF8CD3F0FF4882B9FF295D9FFF4985BAFF8AD3F1FF95E1
            FAFFC7F0FDFF4A8AC3FF00000007000000020000000000000000000000000000
            0000000000000000000000000000000000000000000000000000000000000000
            00000000000000000001000000042647628294C2E2FFC2F0FCFF9EE5FBFF9EE4
            FBFF9DE4FBFF9DE4FAFF9CE4FBFF9BE4FAFF9BE3FBFF9BE3FBFF9AE2FAFFBEED
            FCFF84B0D5FF1735558300000004000000010000000000000000000000000000
            0000000000000000000000000000000000000000000000000000000000000000
            0000000000000000000000000001000000032647628196C3E2FFE0F8FEFFE0F7
            FEFFDFF7FEFFDFF7FEFFDEF7FEFFDEF7FEFFDEF7FEFFDDF7FEFFDDF7FEFF85B1
            D6FF183656830000000500000002000000000000000000000000000000000000
            0000000000000000000000000000000000000000000000000000000000000000
            000000000000000000000000000000000001000000032748638170B2E1FF6FB0
            DFFF6CADDDFF6AAADCFF67A9DAFF65A6D7FF62A4D6FF5FA1D4FF5D9FD2FF1837
            5782000000040000000200000001000000000000000000000000000000000000
            0000000000000000000000000000000000000000000000000000000000000000
            0000000000000000000000000000000000000000000100000002000000020000
            0003000000030000000300000003000000040000000400000004000000030000
            0002000000010000000000000000000000000000000000000000000000000000
            0000000000000000000000000000000000000000000000000000000000000000
            0000000000000000000000000000000000000000000000000000000000000000
            0001000000010000000100000001000000010000000100000001000000010000
            0001000000000000000000000000000000000000000000000000000000000000
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
          OnClick = cxButton12Click
        end
        object cxButton13: TcxButton
          Left = 4
          Top = 579
          Width = 149
          Height = 44
          Caption = 'Devolu'#231#227'o'#13'de Vendas'
          LookAndFeel.Kind = lfUltraFlat
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
          TabOrder = 11
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'Tahoma'
          Font.Style = [fsBold]
          ParentFont = False
          OnClick = cxButton13Click
        end
      end
      object GroupBox5: TGroupBox
        Left = 11
        Top = 5
        Width = 225
        Height = 56
        Caption = '  Tipo '
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -16
        Font.Name = 'Tahoma'
        Font.Style = [fsBold]
        ParentFont = False
        TabOrder = 7
        object cxRadioButton1: TcxRadioButton
          Left = 132
          Top = 26
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
          Left = 16
          Top = 26
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
    end
    object tb_pedido: TcxTabSheet
      Tag = 2
      Caption = 'NF-e'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -16
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      ImageIndex = 1
      ParentFont = False
      object Shape1: TShape
        Left = 98
        Top = 256
        Width = 815
        Height = 1
        Pen.Color = clRed
      end
      object Label24: TLabel
        Left = 21
        Top = 244
        Width = 67
        Height = 18
        Caption = 'Produtos'
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
        Left = 67
        Top = 583
        Width = 1358
        Height = 1
        Pen.Color = clRed
      end
      object Label25: TLabel
        Left = 13
        Top = 573
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
        Top = 606
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
        Left = 725
        Top = 606
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
        Left = 1107
        Top = 604
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
      object Label21: TLabel
        Left = 12
        Top = 78
        Width = 113
        Height = 19
        Caption = 'Natureza Op.:'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -16
        Font.Name = 'Tahoma'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object Label22: TLabel
        Left = 607
        Top = 78
        Width = 49
        Height = 19
        Caption = 'CFOP:'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -16
        Font.Name = 'Tahoma'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object Label5: TLabel
        Left = 344
        Top = 606
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
      object Label1: TLabel
        Left = 44
        Top = 221
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
      object Label2: TLabel
        Left = 128
        Top = 221
        Width = 101
        Height = 19
        Caption = '69 3225-1158'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -16
        Font.Name = 'Tahoma'
        Font.Style = []
        ParentFont = False
      end
      object Label4: TLabel
        Left = 128
        Top = 170
        Width = 81
        Height = 19
        Caption = 'Av. Calama'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -16
        Font.Name = 'Tahoma'
        Font.Style = []
        ParentFont = False
      end
      object Label9: TLabel
        Left = 41
        Top = 170
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
      object Label11: TLabel
        Left = 66
        Top = 196
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
      object Label10: TLabel
        Left = 128
        Top = 196
        Width = 47
        Height = 19
        Caption = 'Centro'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -16
        Font.Name = 'Tahoma'
        Font.Style = []
        ParentFont = False
      end
      object Label15: TLabel
        Left = 401
        Top = 196
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
      object Label32: TLabel
        Left = 470
        Top = 196
        Width = 83
        Height = 19
        Caption = 'Porto Velho'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -16
        Font.Name = 'Tahoma'
        Font.Style = []
        ParentFont = False
      end
      object Label35: TLabel
        Left = 682
        Top = 196
        Width = 22
        Height = 19
        Caption = 'RO'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -16
        Font.Name = 'Tahoma'
        Font.Style = []
        ParentFont = False
      end
      object Label18: TLabel
        Left = 650
        Top = 196
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
      object Label36: TLabel
        Left = 835
        Top = 196
        Width = 78
        Height = 19
        Caption = '78900-000'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -16
        Font.Name = 'Tahoma'
        Font.Style = []
        ParentFont = False
      end
      object Label37: TLabel
        Left = 793
        Top = 196
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
      object Label38: TLabel
        Left = 859
        Top = 170
        Width = 54
        Height = 19
        Caption = '999778'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -16
        Font.Name = 'Tahoma'
        Font.Style = []
        ParentFont = False
      end
      object Label39: TLabel
        Left = 826
        Top = 170
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
      object Label40: TLabel
        Left = 722
        Top = 221
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
      object Label41: TLabel
        Left = 786
        Top = 221
        Width = 127
        Height = 19
        Caption = 'email@gmail.com'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -16
        Font.Name = 'Tahoma'
        Font.Style = []
        ParentFont = False
      end
      object Label42: TLabel
        Left = 470
        Top = 221
        Width = 127
        Height = 19
        Caption = 'email@gmail.com'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -16
        Font.Name = 'Tahoma'
        Font.Style = []
        ParentFont = False
      end
      object Label43: TLabel
        Left = 405
        Top = 221
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
      object Label44: TLabel
        Left = 12
        Top = 120
        Width = 110
        Height = 19
        Caption = 'Raz'#227'o Social:'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -16
        Font.Name = 'Tahoma'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object Label45: TLabel
        Left = 128
        Top = 120
        Width = 396
        Height = 19
        Caption = 'SMC SITEMAS DE EMISS'#195'O DE NOTAS  BRASIL 12345'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -16
        Font.Name = 'Tahoma'
        Font.Style = []
        ParentFont = False
      end
      object Label13: TLabel
        Left = 432
        Top = 170
        Width = 62
        Height = 19
        Caption = 'Compl.:'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -16
        Font.Name = 'Tahoma'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object Label14: TLabel
        Left = 503
        Top = 170
        Width = 134
        Height = 19
        Caption = 'Prox'#237'mo ao Araujo'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -16
        Font.Name = 'Tahoma'
        Font.Style = []
        ParentFont = False
      end
      object Label33: TLabel
        Left = 128
        Top = 145
        Width = 148
        Height = 19
        Caption = '10.152.152/0000-01'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -16
        Font.Name = 'Tahoma'
        Font.Style = []
        ParentFont = False
      end
      object Label34: TLabel
        Left = 23
        Top = 145
        Width = 99
        Height = 19
        Caption = 'CNPJ | CPF:'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -16
        Font.Name = 'Tahoma'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object Label46: TLabel
        Left = 814
        Top = 145
        Width = 99
        Height = 19
        Caption = '99999999999'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -16
        Font.Name = 'Tahoma'
        Font.Style = []
        ParentFont = False
      end
      object Label47: TLabel
        Left = 606
        Top = 145
        Width = 198
        Height = 19
        Caption = 'Inscri'#231#227'o Estadual | RG:'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -16
        Font.Name = 'Tahoma'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object Shape3: TShape
        Left = 12
        Top = 112
        Width = 901
        Height = 1
        Pen.Color = clRed
      end
      object DBEdit20: TDBEdit
        Left = 75
        Top = 599
        Width = 86
        Height = 32
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -20
        Font.Name = 'Tahoma'
        Font.Style = []
        ParentFont = False
        TabOrder = 0
      end
      object DBEdit21: TDBEdit
        Left = 479
        Top = 599
        Width = 133
        Height = 32
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -20
        Font.Name = 'Tahoma'
        Font.Style = []
        ParentFont = False
        TabOrder = 1
      end
      object DBEdit22: TDBEdit
        Left = 862
        Top = 599
        Width = 115
        Height = 32
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -20
        Font.Name = 'Tahoma'
        Font.Style = []
        ParentFont = False
        TabOrder = 2
      end
      object DBEdit23: TDBEdit
        Left = 1242
        Top = 597
        Width = 183
        Height = 36
        Color = 8454143
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -23
        Font.Name = 'Tahoma'
        Font.Style = [fsBold]
        ParentFont = False
        TabOrder = 3
      end
      object cxGrid1: TcxGrid
        Left = 4
        Top = 357
        Width = 1413
        Height = 225
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = [fsBold]
        ParentFont = False
        TabOrder = 4
        LookAndFeel.NativeStyle = False
        LookAndFeel.SkinName = 'DevExpressStyle'
        object cxGridDBTableView1: TcxGridDBTableView
          Navigator.Buttons.CustomButtons = <>
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
            FooterAlignmentHorz = taCenter
            GroupSummaryAlignment = taCenter
            HeaderAlignmentHorz = taCenter
            HeaderGlyphAlignmentHorz = taCenter
            Options.Editing = False
            Options.Filtering = False
            Options.FilteringAddValueItems = False
            Options.FilteringFilteredItemsList = False
            Options.FilteringMRUItemsList = False
            Options.FilteringPopup = False
            Options.FilteringPopupMultiSelect = False
            Options.FilteringWithFindPanel = False
            Options.GroupFooters = False
            Options.Moving = False
            Width = 38
          end
          object cxGridDBTableView1Column1: TcxGridDBColumn
            Caption = 'C'#243'digo'
            FooterAlignmentHorz = taCenter
            GroupSummaryAlignment = taCenter
            HeaderAlignmentHorz = taCenter
            HeaderGlyphAlignmentHorz = taCenter
            Options.Editing = False
            Options.Filtering = False
            Options.FilteringAddValueItems = False
            Options.FilteringFilteredItemsList = False
            Options.FilteringMRUItemsList = False
            Options.FilteringPopup = False
            Options.FilteringPopupMultiSelect = False
            Options.FilteringWithFindPanel = False
            Options.GroupFooters = False
            Options.Moving = False
            Width = 61
          end
          object cxGridDBTableView1Column2: TcxGridDBColumn
            Caption = 'Descri'#231#227'o Produto'
            FooterAlignmentHorz = taCenter
            GroupSummaryAlignment = taCenter
            HeaderAlignmentHorz = taCenter
            HeaderGlyphAlignmentHorz = taCenter
            Options.Editing = False
            Options.Filtering = False
            Options.FilteringAddValueItems = False
            Options.FilteringFilteredItemsList = False
            Options.FilteringMRUItemsList = False
            Options.FilteringPopup = False
            Options.FilteringPopupMultiSelect = False
            Options.FilteringWithFindPanel = False
            Options.GroupFooters = False
            Options.Moving = False
            Width = 316
          end
          object cxGridDBTableView1Column11: TcxGridDBColumn
            Caption = 'CST'
            HeaderAlignmentHorz = taCenter
            Width = 63
          end
          object cxGridDBTableView1Column12: TcxGridDBColumn
            Caption = 'CSOSN'
            HeaderAlignmentHorz = taCenter
            Width = 67
          end
          object cxGridDBTableView1Column13: TcxGridDBColumn
            Caption = 'PROD_NCMSH'
            HeaderAlignmentHorz = taCenter
            Width = 55
          end
          object cxGridDBTableView1Column14: TcxGridDBColumn
            Caption = 'CEST'
            HeaderAlignmentHorz = taCenter
            Width = 60
          end
          object cxGridDBTableView1Column4: TcxGridDBColumn
            Caption = 'Unidade'
            FooterAlignmentHorz = taCenter
            GroupSummaryAlignment = taCenter
            HeaderAlignmentHorz = taCenter
            HeaderGlyphAlignmentHorz = taCenter
            Options.Editing = False
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
            FooterAlignmentHorz = taCenter
            GroupSummaryAlignment = taCenter
            HeaderAlignmentHorz = taCenter
            HeaderGlyphAlignmentHorz = taCenter
            Options.Editing = False
            Options.Filtering = False
            Options.FilteringAddValueItems = False
            Options.FilteringFilteredItemsList = False
            Options.FilteringMRUItemsList = False
            Options.FilteringPopup = False
            Options.FilteringPopupMultiSelect = False
            Options.FilteringWithFindPanel = False
            Options.GroupFooters = False
            Options.Moving = False
            Width = 72
          end
          object cxGridDBTableView1Column6: TcxGridDBColumn
            Caption = 'Quant.'
            FooterAlignmentHorz = taCenter
            GroupSummaryAlignment = taCenter
            HeaderAlignmentHorz = taCenter
            HeaderGlyphAlignmentHorz = taCenter
            Options.Editing = False
            Options.Filtering = False
            Options.FilteringAddValueItems = False
            Options.FilteringFilteredItemsList = False
            Options.FilteringMRUItemsList = False
            Options.FilteringPopup = False
            Options.FilteringPopupMultiSelect = False
            Options.FilteringWithFindPanel = False
            Options.GroupFooters = False
            Options.Moving = False
            Width = 68
          end
          object cxGridDBTableView1Column7: TcxGridDBColumn
            Caption = 'Valor Total'
            FooterAlignmentHorz = taCenter
            GroupSummaryAlignment = taCenter
            HeaderAlignmentHorz = taCenter
            HeaderGlyphAlignmentHorz = taCenter
            Options.Editing = False
            Options.Filtering = False
            Options.FilteringAddValueItems = False
            Options.FilteringFilteredItemsList = False
            Options.FilteringMRUItemsList = False
            Options.FilteringPopup = False
            Options.FilteringPopupMultiSelect = False
            Options.FilteringWithFindPanel = False
            Options.GroupFooters = False
            Options.Moving = False
            Width = 77
          end
          object cxGridDBTableView1Column9: TcxGridDBColumn
            Caption = 'Desc. R$'
            FooterAlignmentHorz = taCenter
            GroupSummaryAlignment = taCenter
            HeaderAlignmentHorz = taCenter
            HeaderGlyphAlignmentHorz = taCenter
            Options.Editing = False
            Options.Filtering = False
            Options.FilteringAddValueItems = False
            Options.FilteringFilteredItemsList = False
            Options.FilteringMRUItemsList = False
            Options.FilteringPopup = False
            Options.FilteringPopupMultiSelect = False
            Options.FilteringWithFindPanel = False
            Options.GroupFooters = False
            Options.Moving = False
            Width = 123
          end
          object cxGridDBTableView1Column8: TcxGridDBColumn
            Caption = 'N'#186' Serial'
            GroupSummaryAlignment = taCenter
            HeaderAlignmentHorz = taCenter
            Width = 70
          end
          object cxGridDBTableView1Column10: TcxGridDBColumn
            Caption = 'N'#186' Lote'
            FooterAlignmentHorz = taCenter
            GroupSummaryAlignment = taCenter
            HeaderAlignmentHorz = taCenter
            HeaderGlyphAlignmentHorz = taCenter
            Options.Editing = False
            Options.Filtering = False
            Options.FilteringAddValueItems = False
            Options.FilteringFilteredItemsList = False
            Options.FilteringMRUItemsList = False
            Options.FilteringPopup = False
            Options.FilteringPopupMultiSelect = False
            Options.FilteringWithFindPanel = False
            Options.GroupFooters = False
            Options.Moving = False
            Width = 69
          end
          object cxGridDBTableView1Column16: TcxGridDBColumn
            Caption = 'Dt. Vencimento'
            HeaderAlignmentHorz = taCenter
            Width = 94
          end
        end
        object cxGridLevel1: TcxGridLevel
          GridView = cxGridDBTableView1
        end
      end
      object cxComboBox3: TcxComboBox
        Left = 131
        Top = 74
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
        Text = 'cxComboBox1'
        Width = 459
      end
      object cxGroupBox1: TcxGroupBox
        Left = 256
        Top = 5
        Caption = '  NFe  '
        ParentFont = False
        Style.Font.Charset = DEFAULT_CHARSET
        Style.Font.Color = clWindowText
        Style.Font.Height = -16
        Style.Font.Name = 'Tahoma'
        Style.Font.Style = [fsBold]
        Style.IsFontAssigned = True
        TabOrder = 6
        Height = 56
        Width = 657
        object Label6: TLabel
          Left = 154
          Top = 24
          Width = 58
          Height = 18
          Caption = 'Emiss'#227'o:'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -15
          Font.Name = 'Tahoma'
          Font.Style = []
          ParentFont = False
        end
        object Label3: TLabel
          Left = 17
          Top = 24
          Width = 25
          Height = 18
          Caption = 'N'#186':'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -15
          Font.Name = 'Tahoma'
          Font.Style = [fsBold]
          ParentFont = False
        end
        object Label30: TLabel
          Left = 337
          Top = 24
          Width = 39
          Height = 18
          Caption = 'Sa'#237'da:'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -15
          Font.Name = 'Tahoma'
          Font.Style = []
          ParentFont = False
        end
        object Label31: TLabel
          Left = 498
          Top = 24
          Width = 36
          Height = 18
          Caption = 'Hora:'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -15
          Font.Name = 'Tahoma'
          Font.Style = []
          ParentFont = False
        end
        object Edit1: TEdit
          Left = 48
          Top = 20
          Width = 84
          Height = 27
          Color = clYellow
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -16
          Font.Name = 'Tahoma'
          Font.Style = [fsBold]
          ParentFont = False
          TabOrder = 0
        end
        object Edit3: TEdit
          Left = 218
          Top = 20
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
        object Edit4: TEdit
          Left = 382
          Top = 20
          Width = 84
          Height = 26
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -15
          Font.Name = 'Tahoma'
          Font.Style = [fsBold]
          ParentFont = False
          TabOrder = 2
        end
        object Edit5: TEdit
          Left = 554
          Top = 20
          Width = 84
          Height = 26
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -15
          Font.Name = 'Tahoma'
          Font.Style = [fsBold]
          ParentFont = False
          TabOrder = 3
        end
      end
      object cxGroupBox2: TcxGroupBox
        Left = 782
        Top = 53
        Caption = '  Pedido  '
        ParentFont = False
        Style.Font.Charset = DEFAULT_CHARSET
        Style.Font.Color = clWindowText
        Style.Font.Height = -16
        Style.Font.Name = 'Tahoma'
        Style.Font.Style = [fsBold]
        Style.IsFontAssigned = True
        TabOrder = 7
        Height = 53
        Width = 131
        object Label27: TLabel
          Left = 10
          Top = 25
          Width = 25
          Height = 18
          Caption = 'N'#186':'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -15
          Font.Name = 'Tahoma'
          Font.Style = [fsBold]
          ParentFont = False
        end
        object Edit7: TEdit
          Left = 47
          Top = 21
          Width = 73
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
      object GroupBox2: TGroupBox
        Left = 11
        Top = 5
        Width = 225
        Height = 56
        Caption = '  Tipo '
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -16
        Font.Name = 'Tahoma'
        Font.Style = [fsBold]
        ParentFont = False
        TabOrder = 8
        object cxRadioButton3: TcxRadioButton
          Left = 132
          Top = 26
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
        object cxRadioButton4: TcxRadioButton
          Left = 16
          Top = 26
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
      object cxGroupBox3: TcxGroupBox
        Left = 944
        Top = -2
        ParentBackground = False
        ParentColor = False
        ParentFont = False
        Style.BorderColor = clGradientActiveCaption
        Style.Color = clWhite
        Style.Font.Charset = DEFAULT_CHARSET
        Style.Font.Color = clGradientActiveCaption
        Style.Font.Height = -16
        Style.Font.Name = 'Tahoma'
        Style.Font.Style = [fsBold]
        Style.IsFontAssigned = True
        StyleDisabled.BorderColor = clGradientActiveCaption
        StyleDisabled.TextColor = clGradientActiveCaption
        TabOrder = 9
        Height = 356
        Width = 481
        object BtnCancelar: TcxButton
          Left = 34
          Top = 27
          Width = 158
          Height = 49
          Caption = 'Cancelar'
          Enabled = False
          LookAndFeel.NativeStyle = False
          LookAndFeel.SkinName = 'Metropolis'
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
          TabOrder = 0
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'HelveticaNeue'
          Font.Style = [fsBold]
          ParentFont = False
        end
        object BtnAlterar: TcxButton
          Left = 290
          Top = 27
          Width = 158
          Height = 50
          Caption = 'Alterar'
          LookAndFeel.NativeStyle = False
          LookAndFeel.SkinName = 'Metropolis'
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
          TabOrder = 1
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'HelveticaNeue'
          Font.Style = [fsBold]
          Font.Quality = fqDraft
          ParentFont = False
        end
        object cxButton2: TcxButton
          Left = 34
          Top = 109
          Width = 158
          Height = 50
          Caption = 'Dados'#13'Transporte'
          LookAndFeel.NativeStyle = False
          LookAndFeel.SkinName = 'Metropolis'
          OptionsImage.Glyph.Data = {
            36100000424D3610000000000000360000002800000020000000200000000100
            2000000000000010000000000000000000000000000000000000000000000000
            0000000000000000000000000000000000010000000200000003000000030000
            0002000000010000000000000000000000000000000000000000000000000000
            0000000000000000000000000000000000010000000200000003000000030000
            0002000000010000000000000000000000000000000000000000000000000000
            0001000000010000000200000005000000080000000E00000015000000180000
            0018000000180000001A0000001C0000001F0000002000000021000000210000
            00200000001F0000001C0000001A000000180000001700000017000000160000
            000F000000080000000500000002000000010000000100000000000000010000
            0001000000020000000500000008000000120D09075F2A1B15EB1B110EF20804
            049F0000007B0000007F0000008200000086000000880000008A0000008A0000
            008800000086000000820000007E0000007B0805049F1C110EF2291B14EB0D08
            0661000000130000000900000005000000020000000100000001000000000000
            000100000001000000030000000800000013422F26E6745C50FF644C41FF291B
            16E9000000230000002000000020000000230000002300000024000000240000
            002300000023000000200000001F00000023412D24E8735B4EFF654E41FF2B1C
            17E7000000140000000A00000003000000010000000100000000000000000000
            000000000001000000040000000D000000184F372EFF8C7364FF7A5F4FFF311F
            19FF0000001C0000001300000010000000100000001000000010000000100000
            00100000001000000011000000140000001B4E362EFF8B7364FF795E4EFF311F
            19FF0000001B0000000E00000005000000010000000000000000000000000000
            000000000002000000090A3276C8062374FF051B68FF051B67FF041B67FF041A
            67FF041A67FF041A67FF03175EFF03165BFF03165BFF03165BFF031559FF0316
            59FF031559FF03165CFF041864FF041864FF041864FF041863FF041863FF0418
            63FF041863FF03124BC80000000A000000030000000000000000000000000000
            0000000000030000000C3A83C7FF51AFE9FF51AEE9FF50AEE9FF4FAEE8FF4EAD
            E8FF4EACE8FF4DABE7FF43A0E4FFF4EDE8FFF6EBE6FFF6EBE6FFF4EBE4FFF4EA
            E3FFF4EAE3FF3F9CE2FF48A8E6FF48A7E6FF46A6E6FF47A6E6FF46A5E6FF46A5
            E5FF45A5E5FF204EA0FF0000000E000000040000000000000000000000000000
            0000000000030000000D3A84C7FF54B1EAFF54B0EAFF53B0E9FF52AFE9FF51AF
            E9FF51AEE8FF50ADE9FF45A4E4FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
            FFFFFFFFFFFF429FE3FF4BAAE7FF4AA9E7FF49A9E6FF49A8E7FF48A7E6FF47A7
            E6FF47A6E6FF204FA0FF0000000F000000040000000000000000000000000000
            0000000000030000000D3B84C8FF57B3EAFF57B3EAFF4999D7FF265AA8FF265A
            A8FF4798D6FF53B0E9FF4BA7E6FF47A5E5FF47A5E5FF46A4E5FF46A2E5FF45A2
            E4FF45A2E3FF46A4E4FF4DABE7FF4294D4FF2559A8FF2559A8FF4192D4FF4AA9
            E6FF49A9E7FF2050A0FF0000000F000000040000000000000000000000000000
            0000000000030000000C3B85C8FF5AB6EBFF59B5EAFF5A8AC3FFC3E9F5FFC3E9
            F5FF5A8AC3FF56B2EAFF55B2EAFF55B1EAFF54B0E9FF54B0E9FF52B0E9FF52B0
            E9FF51AEE9FF51AEE8FF50ADE8FF5989C2FFC3E9F5FFC3E9F5FF5989C2FF4DAB
            E7FF4CAAE8FF2152A1FF0000000E000000040000000000000000000000000000
            0000000000030000000B3C86C9FF5EB8ECFF5DB7ECFFCBEBF7FFD8FAFEFFD8FA
            FEFFCBEAF7FF59B4EBFF59B4EBFF58B3EBFF57B3EAFF57B3EAFF56B2EAFF55B1
            E9FF54B1E9FF54B0EAFF53B0E9FFCAEAF7FFD8FAFEFFD8FAFEFFCAEAF6FF4FAD
            E8FF4EACE8FF2253A2FF0000000D000000030000000000000000000000000000
            0000000000030000000B3C87CAFF61BAEDFF60BAEDFF87CAF1FFDDF0FBFFDDF0
            FBFF85CAF1FF5CB7EBFF5BB7ECFF5BB5EBFF5AB6EBFF59B5EAFF59B4EBFF58B4
            EAFF57B3EAFF57B3EAFF55B2EAFF7FC5EFFFDBEEFAFFDBEEFAFF7DC4EEFF52B0
            E9FF52AFE9FF2254A3FF0000000D000000030000000000000000000000000000
            0000000000030000000A3C88CAFF64BDEEFF63BDEDFF62BBEDFF62BBEDFF61BB
            EDFF60B9EDFF5FB9EDFF5FB9ECFF5DB9ECFF5DB8ECFF5DB7ECFF5CB6EBFF5BB6
            EBFF5AB6EBFF59B5EBFF59B4EAFF58B3EBFF57B3EBFF56B3EAFF56B2EAFF56B1
            EAFF55B2E9FF2256A4FF0000000C000000030000000000000000000000000000
            0000000000020000000A3D89CBFF66BFEFFF66BFEFFF7BC9F1FF83CDF2FF82CD
            F2FF81CCF2FF80CCF2FF7FCBF2FF7FCAF1FF7FCAF2FF7ECAF1FF7DC9F1FF7DC9
            F1FF7CC9F1FF7CC8F1FF7BC8F0FF7AC7F1FF79C7F0FF78C6EFFF6FC1EFFF58B4
            EBFF58B3EAFF2358A5FF0000000B000000030000000000000000000000000000
            000000000002000000093E8ACCFF6AC2F0FF6AC1EFFF5B6064FF513A31FF503A
            31FF503A31FF4F3930FF4F382FFF4E382FFF4E372FFF4D362EFF4D362EFF4C36
            2EFF4C362DFF4C362DFF4B352DFF4B342CFF4B342DFF4A342CFF555C62FF5BB6
            EBFF5BB6EBFF2459A7FF0000000B000000030000000000000000000000000000
            000000000002000000083E8BCCFF6DC4F0FF6CC3F0FF4C362EFF553D33FF543C
            33FF543C32FF533B33FF523B31FF523A31FF523A31FF503930FF503930FF5039
            2FFF4F382FFF4E382FFF4D372EFF4D372FFF4D362EFF4D362DFF47322AFF5EB9
            ECFF5DB8ECFF255AA8FF0000000A000000030000000000000000000000000000
            00004C362EB82B1812B93E8CCDFF71C6F1FF70C6F1FF4E382FFF594036FF583F
            35FF583F35FF573E34FF563E34FF553D34FF553D33FF553C33FF533C32FF523C
            32FF523A31FF513A31FF513A30FF503930FF4F3830FF4F3830FF48332BFF62BB
            EDFF61BAEDFF265DA9FF32221CBA140B08B80000000000000000000000000000
            00007C5C50FF3C2119FF3F8DCEFF74C9F2FF73C8F2FF503931FF5D4339FF5C43
            38FF5C4338FF5B4137FF5A4137FF594136FF584036FF583F35FF573E35FF563E
            35FF563D34FF553D34FF553C33FF543C32FF533C32FF523A32FF4A352DFF65BD
            EDFF64BCEDFF265EAAFF553D34FF1C0F0BFF0000000000000000000000000000
            00007C5C50FF3C2119FF3F8ECEFF77CCF3FF76CBF3FF523B32FF61473CFF6146
            3CFF654B3FFF6A4E43FF6D5146FF715347FF715548FF725549FF715449FF6F53
            46FF6A4F43FF674B40FF62483CFF5C4339FF573E35FF563E34FF4C362DFF68C0
            EFFF67C0EFFF2761ABFF553D34FF1C0F0BFF0000000000000000000000000000
            00005C443BBD2C1913BF408FCFFF7ACDF4FF79CEF3FF553D34FF705346FF775A
            4DFF7D5F51FF7D5E51FF7C5C50FF7A5C4FFF7A5B4FFF795A4EFF77594DFF7659
            4CFF76584CFF74574BFF73564AFF725549FF6B4E43FF63483EFF4E382FFF6BC2
            F0FF6AC2F0FF2962ACFF3F2D26BF150B08BE0000000000000000000000000000
            000000000001000000054090D0FF7ED1F4FF7CD0F4FF5F463CFF846356FF8363
            56FF826255FF816254FF816154FF806053FF7F5F52FF7E5F51FF7D5E51FF7C5D
            50FF7B5C4FFF7A5C4FFF795A4EFF785A4DFF76594DFF76584BFF584036FF6EC4
            F1FF6DC4F0FF2964ADFF00000007000000020000000000000000000000000000
            000000000001000000054191D0FF80D3F5FF80D2F5FF664B41FF89675AFF8766
            59FF876658FF866558FF856557FF846456FF836356FF836355FF826254FF8161
            54FF806053FF7F6052FF7E5F52FF7D5E51FF7C5E50FF7C5D4FFF5F453BFF71C7
            F1FF70C7F1FF2A66AFFF00000007000000020000000000000000000000000000
            000000000001000000054192D1FF83D5F6FF82D4F6FF684C42FF8C6A5CFF8B6A
            5CFF8A695BFF8A685AFF89685AFF89685AFF886759FF876658FF866558FF8665
            57FF846456FF836456FF836355FF826255FF816154FF806053FF61473DFF75CA
            F2FF73C9F2FF2B68B1FF00000006000000020000000000000000000000000000
            000000000001000000044193D2FF86D7F6FF85D6F7FF61473DFF8F6C5EFF8E6C
            5EFF8E6C5DFF8D6B5DFF8C6B5DFF8C6A5CFF8B6A5CFF8A695BFF8A685BFF8968
            5AFF89685AFF876759FF876658FF866658FF866557FF856456FF5B4239FF78CC
            F3FF77CCF2FF2C6AB1FF00000006000000010000000000000000000000000000
            000000000001000000044597D4FF8CDBF8FF88D8F8FF5B5E60FF4B332BFF4A33
            2AFF4A332AFF4A332AFF4A332AFF4A322AFF49322AFF493229FF493229FF4932
            29FF483129FF483129FF473129FF473129FF473029FF473029FF54595DFF7BCF
            F4FF7DCFF4FF3171B6FF00000005000000010000000000000000000000000000
            000000000001000000034A98CCF096DBF6FF8BDBF8FF8BDAF8FF8ADAF8FF89DA
            F8FF88D9F8FFB0E9FBFFB0E9FBFFAFE9FBFFAFE9FBFFAFE8FBFFAFE8FAFFAEE8
            FAFFAEE7FAFFADE7FAFFADE7FAFF81D3F6FF80D3F6FF80D2F5FF7ED2F5FF7ED1
            F4FF8AD2F4FF3B79B5F100000004000000010000000000000000000000000000
            00000000000000000002518FB1C48EC9E9FF91DEF9FF8DDCF8FF8CDCF9FF8CDC
            F8FF8CDBF8FF63483CFF6F5245FF6F5245FF6F5245FF6F5245FF6F5245FF6F52
            45FF6F5145FF6E5144FF62473CFF83D5F6FF83D4F6FF82D5F6FF81D3F6FF85D4
            F5FF85C0E4FF4981A4C200000003000000010000000000000000000000000000
            000000000000000000011D313B416AB4E0FCB2E4F8FFA0E4FBFF94E0F9FF8EDE
            F9FF8EDDF9FF63483CFF63483CFF63483CFF63483CFF63483CFF63483CFF6348
            3CFF63483CFF63483CFF63483CFF87D7F8FF86D7F7FF8BD9F7FF95DDF7FFA9E0
            F6FF62A6D4FC1A2D363F00000002000000000000000000000000000000000000
            0000000000000000000000000001375E707A70BCE7FF97D0ECFFB3E4F6FFC0EF
            FCFFC0EEFCFFC0EEFCFFBFEEFCFFBFEEFCFFBEEDFCFFBEEDFCFFBDEDFBFFBDEC
            FBFFBDECFBFFBCECFBFFBCECFBFFBBECFBFFBBEBFBFFACDFF5FF92CBE9FF6AB4
            DFFF355A6D7B0000000200000001000000000000000000000000000000000000
            0000000000000000000000000000000000011D313B41528AA5B267AED2E472C2
            EAFF72C1E9FF72C1E9FF72C1E9FF72C0E9FF72C0E9FF72C0E9FF71C0E8FF71C0
            E8FF71C0E8FF71C0E8FF71C0E8FF71C0E8FF71BFE8FF65ABCFE55085A1B21C30
            3A41000000020000000100000000000000000000000000000000000000000000
            0000000000000000000000000000000000000000000100000001000000010000
            0001000000010000000200000002000000020000000200000002000000020000
            0002000000020000000200000002000000020000000200000002000000020000
            0001000000000000000000000000000000000000000000000000000000000000
            0000000000000000000000000000000000000000000000000000000000000000
            0000000000000000000000000000000000000000000000000000000000000000
            0000000000000000000000000000000000000000000000000000000000000000
            0000000000000000000000000000000000000000000000000000}
          TabOrder = 2
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'Tahoma'
          Font.Style = [fsBold]
          ParentFont = False
          OnClick = cxButton2Click
        end
        object cxButton8: TcxButton
          Left = 290
          Top = 110
          Width = 158
          Height = 48
          Caption = 'Notas'#13'Referenciadas'
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
          TabOrder = 3
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'Tahoma'
          Font.Style = [fsBold]
          ParentFont = False
          OnClick = cxButton8Click
        end
        object cxButton7: TcxButton
          Left = 34
          Top = 193
          Width = 158
          Height = 48
          Caption = 'Tributa'#231#227'o'
          LookAndFeel.NativeStyle = False
          LookAndFeel.SkinName = 'Metropolis'
          OptionsImage.Glyph.Data = {
            36100000424D3610000000000000360000002800000020000000200000000100
            2000000000000010000000000000000000000000000000000000000000000000
            00000000000000000002000000050000000B0000000F00000010000000100000
            000F0000000E0000000A000000090000000C0000000F00000010000000100000
            00100000000E0000000A000000090000000C0000001000000011000000110000
            00100000000D0000000900000004000000010000000000000000000000000000
            00000000000100000005000000140000002B000000390000003E0000003E0000
            003C000000360000002A00000025000000300000003C0000003F0000003F0000
            003D000000360000002A00000026000000310000003D00000040000000400000
            003F000000370000002600000012000000060000000100000000000000000000
            0000000000010000000A00000028020A82FF02067EFF01047AFF01047AFF0103
            79FF010479FF01013CB0000000585E3113FF5F3011FF602E0CFF5E2D0CFF5E2C
            0BFF5D2D0BFF2F1605B20000005A012C83FF00297EFF00287BFF00277AFF0027
            79FF002678FF00143DAE00000031000000120000000400000000000000000000
            0000000000010000000C00000032030C86FF1F27B7FF1F26B7FF1F26B5FF1F26
            B5FF2128B6FF01047CFF01023CC1623112FF9C6022FF9C6021FF9C6122FF9C60
            22FF9C6021FF61330EFF2F1605C5012D86FF0E5DE1FF0E5EE0FF0E5DDFFF0E5C
            DFFF0E5CDFFF00297FFF00133DAC000000240000000900000001000000000000
            0000000000010000000C0000002F030D88FF1F28BAFF1F28B9FF1F27B7FF1F26
            B6FF2329B7FF01057FFF010379FF643213FF9C6022FF9C6021FF9C6122FF9C60
            22FF9C6022FF653912FF602D0CFF01308AFF0E5EE1FF0E5EE1FF0E5EE0FF0E5E
            E0FF0E5CE0FF002B86FF00277AFF000000310000000C00000001000000000000
            0000000000010000000A00000028020583FF2029BDFF1F29BBFF1F28B9FF1F27
            B9FF232BB8FF01047FFF01047BFF663414FF9E6225FF9D6223FF9C6123FF9C61
            21FF9C6021FF673C13FF612F0CFF02328DFF0E60E3FF0E5FE2FF0E5EE1FF0F5F
            E1FF0E5EE0FF002C87FF00277BFF000000340000000D00000001000000000000
            000000000001000000080000001F030789FF232FC0FF1F2ABEFF1F2ABDFF1F29
            BBFF252EBBFF020581FF01047CFF6B3513FFA2682DFF9F6427FF9E6325FF9D62
            24FF9D6325FF6A3D15FF642F0CFF023490FF0D61E5FF0F61E4FF0E60E3FF0E60
            E3FF0E5EE2FF002D89FF00287CFF000000310000000C00000001000000000000
            0000000000010000000600000016050A8EFF2A35C5FF202BC1FF1F2BBFFF1F2A
            BEFF2732BEFF010683FF01047EFF6D3612FFA66F35FFA1672BFFA06629FF9F65
            28FF9F6529FF6D4016FF66300DFF023694FF0E62E6FF0D61E5FF0E61E4FF0E61
            E4FF0E60E3FF002D8CFF00297EFF0000002A0000000B00000001000000000000
            000000000000000000040000000D060D94FF303DC9FF202DC4FF1F2CC2FF1F2B
            C1FF2934C2FF020584FF010480FF713914FFAA763FFFA36A2FFFA3692DFFA268
            2CFFA1692DFF704318FF69320DFF033898FF0E64E7FF0D62E6FF0E62E6FF0E61
            E4FF0E62E4FF002E8FFF002980FF000000250000000900000001000000000000
            0000000000000000000300000009080F9BFF3744CEFF1F2EC7FF1F2DC5FF202D
            C3FF2B37C5FF010686FF010481FF763C16FFAF7E4AFFA66E34FFA56D32FFA46B
            30FFA56D32FF73461AFF6B330DFF033B9CFF0D64E9FF0D64E8FF0E63E8FF0D62
            E6FF0D61E6FF003090FF002A82FF0000001F0000000800000001000000000000
            00000000000000000002000000080A13A0FF3E4DD3FF1F2FCAFF202FC9FF1F2E
            C7FF2D39C9FF010787FF010483FF7C3F16FFB58756FFA97239FFA77037FFA66F
            35FFA77239FF76491CFF6E340EFF033CA1FF1268EAFF0D66E9FF0E64E9FF0D63
            E9FF0F63E7FF003193FF002B85FF0000001A0000000700000001000000000000
            00000000000000000002000000060C17A7FF4655D7FF1F31CDFF2030CCFF1F30
            CAFF2F3DCDFF020789FF020688FF804117FFBA8F62FFAB773FFFAA753CFFAA73
            3AFFAB7740FF7A4C1EFF72350EFF043FA4FF186EEDFF0E67EBFF0E67EAFF0D65
            EAFF1065E9FF003196FF002C86FF000000170000000600000001000000000000
            00000000000000000001000000040E19ACFF4E5EDCFF2033D0FF1F32CEFF2031
            CEFF3040CFFF02078AFF03098CFF864418FFC1986EFFAF7B44FFAE7942FFAC77
            40FFAF7B46FF7E4F21FF76360FFF0441A7FF1F74EFFF0E68EEFF0D68ECFF0E67
            ECFF1268EBFF003297FF002D89FF000000140000000500000001000000000000
            0000000000000000000100000003101DB2FF5868E0FF2034D3FF1F34D2FF2033
            D1FF3143D3FF02078CFF050B93FF89481BFFC6A079FFB27F4AFFB17D47FFAF7C
            45FFB2814DFF825223FF783911FF0443ABFF277AF2FF0D69F0FF0D6AEDFF0E68
            ECFF136AECFF00349AFF002F8CFF000000110000000500000001000000000000
            00000000000000000001000000021220B8FF6170E3FF2035D6FF1F35D5FF1F34
            D3FF3345D6FF02088DFF070D98FF8F4C1DFFCBA984FFB58450FFB3824EFFB280
            4CFFB78755FF865625FF7B3C14FF0545AFFF2E7FF5FF0D6CF2FF0D6BF0FF0E6A
            F0FF156DEEFF00359CFF00308EFF0000000E0000000400000000000000000000
            00000000000000000000000000011424BDFF6979E6FF2036D9FF2036D7FF2036
            D6FF3547D9FF02088EFF08119EFF955220FFD0B190FFB88957FFB78654FFB685
            51FFB98B5BFF8A5927FF7D3F18FF0547B3FF3787F7FF0D6DF3FF0D6DF2FF0E6C
            F2FF176FF1FF00369EFF013192FF0000000C0000000300000000000000000000
            00000000000000000000000000000B13607E7681DBFFC6CFF5FFBDC8F3FFAFBC
            F1FFA0AFEEFF4A55BEFF0A14A5FF9B5723FFD5B899FFBB8E5CFFBA8B5BFFB989
            58FFBD9163FF8D5C29FF80431DFF0649B6FF418DF7FF0D6EF5FF0E6FF5FF0E6D
            F3FF1872F4FF00369FFF013395FF000000090000000300000000000000000000
            0000000000000000000000000000000000000B13607E1525BFFF1322BBFF111F
            B7FF101CB2FF0E1AAEFF0C18AAFF9F5C27FFD9BFA2FFBF9262FFBE9060FFBC8E
            5EFFC29669FF915F2BFF86451CFF064BB9FF4A94F9FF0E70F6FF0D70F6FF0E6E
            F4FF1A75F5FF0036A1FF01359AFF000000060000000200000000000000000000
            0000000000000000000000000000000000000000000000000000000000000000
            0000000000000000000000000000A4612AFFDDC4ABFFC29768FFC19566FFBF93
            64FFC49A70FF94632EFF8B481DFF064DBCFF549BFAFF0E71F7FF0D70F7FF0E70
            F7FF1C77F7FF0038A3FF01379CFF000000040000000100000000000000000000
            0000000000000000000000000000000000000000000000000000000000000000
            0000000000000000000000000000A9672FFFE0C9B2FFC59B6EFFC4996CFFC398
            6AFFC89F76FF976630FF8F4B1EFF074FBFFF5DA0FBFF0E72F8FF0D71F8FF0E71
            F8FF1E7AF8FF0038A5FF02389FFF000000020000000100000000000000000000
            00001C21BBFF181DB6FF1418B1FF1014ADFF0C11A8FF080DA4FF0509A1FF0207
            9EFF00049CFF00000000000000005635197ED5A675FFFFE5BBFFFADEB6FFF1D6
            B0FFE9CBA8FF9F6D38FF924F21FF0751C2FF65A5FCFF0D74FAFF0E73F8FF0E72
            F8FF1E7BF9FF0038A5FF023AA3FF000000010000000000000000000000000000
            0000070726331D21BBFF181CB6FF0709405C000000000000000003053C5C0509
            A1FF02079FFF0000000000000000000000005636197EAB6930FFA7632BFFA55F
            29FFA05C27FF9B5625FF975223FF0853C6FF6EABFDFF0D73FBFF0D74FAFF0D73
            FAFF207FF9FF0038A5FF023DA7FF000000000000000000000000000000000000
            000000000000070826331D21BBFF181DB6FF0709405C00000000000000000305
            3B5C040AA1FF0000000000000000000000000000000000000000000000000000
            00000000000000000000000000000855C8FF75AFFDFF0D73FBFF0D73FBFF0D72
            FBFF227FFAFF0038A5FF023FAAFF000000000000000000000000000000000000
            00000000000000000000070726331C21BBFF181DB6FF0709405C000000000000
            0000000000000000000000000000000000000000000000000000000000000000
            00000000000000000000000000000857CBFF7CB3FDFF0D73FBFF0D73FBFF0D73
            FBFF2480FBFF073EA8FF0341ADFF000000000000000000000000000000000000
            0000000000000000000000000000070826331C21BAFF181DB5FF000000000000
            0000000000000000000000000000000000000000000000000000000000000000
            0000000000000000000000000000042B657E6398E3FFB4D6FEFFA5CCFCFF95C3
            FAFF84B7F9FF3C74CEFF0342B0FF000000000000000000000000000000000000
            0000000000000000000000000000080827332126BFFF1D21BAFF000000000000
            0000000000000000000000000000000000000000000000000000000000000000
            000000000000000000000000000000000000042A647E0853C7FF0750C3FF064D
            BFFF054ABBFF0447B7FF0344B3FF000000000000000000000000000000000000
            00000000000000000000090A29332A2FC8FF262AC4FF0C0E455C000000000000
            0000000000000000000000000000000000000000000000000000000000000000
            0000000000000000000000000000000000000000000000000000000000000000
            0000000000000000000000000000000000000000000000000000000000000000
            0000000000000B0C2A333135D1FF2D32CDFF0F11485C00000000000000000A0C
            435C181CB6FF0000000000000000000000000000000000000000000000000000
            0000000000000000000000000000000000000000000000000000000000000000
            0000000000000000000000000000000000000000000000000000000000000000
            00000D0E2C333B3FD8FF363CD4FF12134B5C00000000000000000D0F475C2126
            BFFF1D21BAFF0000000000000000000000000000000000000000000000000000
            0000000000000000000000000000000000000000000000000000000000000000
            0000000000000000000000000000000000000000000000000000000000000000
            00004347DEFF4044DCFF3B40D8FF363BD5FF3136D0FF2D32CDFF292FC8FF252A
            C4FF2126C0FF0000000000000000000000000000000000000000000000000000
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
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'Tahoma'
          Font.Style = [fsBold]
          ParentFont = False
          OnClick = cxButton7Click
        end
        object cxButton11: TcxButton
          Left = 290
          Top = 193
          Width = 158
          Height = 50
          Caption = 'Enviar NF-e'
          LookAndFeel.NativeStyle = False
          LookAndFeel.SkinName = 'Metropolis'
          OptionsImage.Glyph.Data = {
            6E230000424D6E230000000000003600000028000000310000002E0000000100
            2000000000003823000000000000000000000000000000000000000000000000
            0000000000000000000000000000000000000000000000000000000000000000
            0000000000000000000000000000000000000000000000000000000000000000
            0000000000000000000000000000000000000000000000000000000000000000
            0000000000000000000000000000000000000000000000000000000000000000
            0000000000000000000000000000000000000000000000000000000000000000
            0000000000000000000000000000000000000000000000000000000000000000
            0000000000000000000000000000000000000000000000000000000000000000
            0000000000000000000000000000000000000000000000000000000000000000
            0000000000000000000000000000000000000000000000000000000000000000
            0000000000000000000000000000000000000000000000000000000000000000
            0000000000000000000000000000000000000000000000000000000000000000
            0000000000000000000000000000000000000000000000000000000000000000
            0000000000000000000000000000000000000000000000000000000000000000
            0000000000000000000000000000000000000000000000000000000000000000
            0000000000000000000000000000000000000000000000000000010101010101
            0101010101010101010101010101000000000000000000000000000000000000
            0000000000000000000000000000000000000000000000000000000000000000
            0000000000000000000000000000000000000000000000000000000000000000
            0000000000000000000000000000000000000000000000000000000000000000
            0000000000000000000000000000000000000000000000000000000000000000
            0000010101050202020C02020210020202120303031503030315030303160303
            03190304041B0304041B0304041B030303190303031603030315030303150202
            02120202020F0101010B01010104000000000000000000000000000000000000
            0000000000000000000000000000000000000000000000000000000000000000
            0000000000000000000000000000000000000000000000000000000000000000
            0000000000000000000000000000000000000000000000000000000000000000
            0000010101020202021205050527060707320708083908090940080909420809
            0943090909460909094709090947090909470909094508090942080909420808
            083F0707073806070731050505240202020E0000000100000000000000000000
            0000000000000000000000000000000000000000000000000000000000000000
            0000000000000000000000000000000000000000000000000000000000000000
            0000000000000000000000000000000000000000000000000000000000000000
            00000000000000000000010101050101010B0202020F02020211030303140303
            03150303031603030316171615471011118A1112124904040417030303150303
            031503030314020202110202020F0101010A0101010400000000000000000000
            0000000000000000000000000000000000000000000000000000000000000000
            0000000000000000000000000000000000000000000000000000000000000000
            0000000000000000000000000000000000000000000000000000000000000000
            0000000000000000000000000000000000000000000000000000000000000000
            0000000000000000000006060608C6A628F072624AC81011117E0E0E0E590808
            080B000000000000000000000000000000000000000000000000000000000000
            0000000000000000000000000000000000000000000000000000000000000000
            0000000000000000000000000000000000000000000000000000000000000000
            0000000000000000000000000000000000000000000000000000000000000000
            0000000000000000000000000000000000000000000000000000000000000000
            000000000000020202020E0E0E222B28188CEDC600FFD3B140FE8F7B5CE11213
            13800F0F0F560303030400000000000000000000000000000000000000000000
            0000000000000000000000000000000000000000000000000000000000000000
            0000000000000000000000000000000000000000000000000000000000000000
            0000000000000000000000000000000000000000000000000000000000000000
            0000000000000000000000000000000000000000000000000000000000000000
            000000000000000000000C0D0D407C6A3DCFD2B00AF3EDC600FFE8C203FDCEAC
            45FEB99C6DFC1213138011111144030303040000000000000000000000000000
            0000000000000000000000000000000000000000000000000000000000000000
            0000000000000000000000000000000000000000000000000000000000000000
            0000000000000000000000000000000000000000000000000000000000000000
            0000000000000000000000000000000000000000000000000000000000000000
            00000000000000000000110E0113B3964AEAEDC600FFEDC600FFEDC600FFEDC6
            00FFE1BD06FADBB821FD9D8461EA1011117F1313133100000000000000000000
            0000000000000000000000000000000000000000000000000000000000000000
            0000000000000000000000000000000000000000000000000000000000000000
            0000000000000000000000000000000000000000000000000000000000000000
            0000000000000000000000000000000000000000000000000000000000000000
            00000000000000000000000000001E190021C7A603D8EDC600FFEDC600FFEDC6
            00FFEDC600FFEDC600FFEDC600FFD6B42EFE86724ED71314143A000000000000
            0000000000000000000000000000000000000000000000000000000000000000
            0000000000000000000000000000000000000000000000000000000000000000
            0000000000000000000000000000000000000000000000000000000000000000
            0000000000000000000000000000000000000000000000000000000000000000
            0000000000000101010108080811090909230809092517150A2BC0A103D5EDC6
            00FFEDC600FFEDC600FFEDC600FFE7C102FCEDC600FFC3A44BF50D0E0E5D0606
            0608000000000000000000000000000000000000000000000000000000000000
            0000000000000000000000000000000000000000000000000000000000000000
            0000000000000000000000000000000000000000000000000000000000000000
            0000000000000000000000000000000000000000000000000000000000000000
            000000000000040404050F101053193319884D784BF94E7A4CFA507C4EFE0662
            68FF417A4AFFC9AF1EFFDEBD0FFFEDC600FFEDC600FFEDC600FFCFAD3EFC1718
            16830E0F0F5F0D0D0D1802020202000000000000000000000000000000000000
            0000000000000000000000000000000000000000000000000000000000000000
            0000000000000000000000000000000000000000000000000000000000000000
            0000000000000000000000000000000000000000000000000000000000000000
            00000000000000000000101010474B7649FD4A7648FF649D62FF619A5FFF5787
            55FF4B7749FF4B7849FE6E7429FDB39804FFECC500FFE3C00AFFE6C204FFD8B5
            35FEBDA06BFE1D1D198A1011117C0E0E0E6C0E0E0E350E0E0E1B101111200808
            080B000000000000000000000000000000000000000000000000000000000000
            0000000000000000000000000000000000000000000000000000000000000000
            0000000000000000000000000000000000000000000000000000000000000000
            000000000000000000000808080C4E7A4CFC4E7A4CFF5E915CFD07ADB7F806A7
            B5FF12C3C5F89EC7A4FC598E58FF4B7849FF4E7B4CFF9D8300FFE8C200FFEDC6
            00FFE7C208FFDEBC0BFCC1A140F8AC9157F378674DD0111212801011117F1011
            117F0E0F0F670A0A0A0F00000000000000000000000000000000000000000000
            0000000000000000000000000000000000000000000000000000000000000000
            0000000000000000000000000000000000000000000000000000000000000000
            00000000000000000000000000001313132C4D7A4BFF568754FE0000000008A5
            AFFE04C3D1FE0000000010101023B69839EAA1CAA6FE548152FF4C794AFF977F
            00FFD2B412FCEDC600FFEDC600FFEDC600FFEDC600FFD4B22BFECCAB34FEC5A5
            30FAB39665F826251D8E0F101052020202020000000000000000000000000000
            0000000000000000000000000000000000000000000000000000000000000000
            0000000000000000000000000000000000000000000000000000000000000000
            000000000000000000000000000000000000598557F8578555FF0F160F270000
            000007ADB7FE04B6C2FC0E0E0E1A3E392BA4CAAA06EBEDC600FF99C495FD5E97
            5CFF4B7849FF907A02FDE6C000FFEDC600FFE1BF10FFEDC600FFE2BE05FBE0BC
            0AFBD8B520FEE9C206FEAE956BF6111212801011113400000000000000000000
            0000000000000000000000000000000000000000000000000000000000000000
            0000000000000000000000000000000000000000000000000000000000000000
            00000000000000000000000000000000000000000000538151FE629E60FF0000
            00000000000007ACB8FF07B9C3F8A1871CC3E0BC13FDEDC600FFEDC600FFEDC6
            00FFD6BA35FD5D945BFF4B7849FF998000FFEAC300FFE6C010FFEDC600FFEDC6
            00FFEDC600FFEDC600FFE4BE10FED1B139FD6D5D45C30C0D0D62000000000000
            0000000000000000000000000000000000000000000000000000000000000000
            0000000000000000000000000000000000000000000000000000000000000000
            0000000000000000000000000000000000000000000000000000558453FE5689
            54FE000000000000000005B5C0FE08B6C1F8BC9D07D0EDC600FFEDC600FFEDC6
            00FFEDC600FFEDC600FFD7BA32FE5E965CFF4C794AFE9E8408FEE8C10AFFEDC6
            00FFEDC600FFEDC600FFEDC600FFEDC600FFEDC600FFBC9E47F31112127D0F10
            1021000000000000000000000000000000000000000000000000000000000000
            0000000000000000000000000000000000000000000000000000000000000000
            0000000000000000000000000000000000000000000000000000000000005686
            55FE558553FE000000000000000005B4C0FF07B5BFF8B69802C6EDC600FFEDC6
            00FFEDC600FFEDC600FFEDC600FFE6C005FDA6B040FF629660FF4D7A4BFFBFA0
            00FFEDC600FFEDC600FFEDC600FFEDC600FFEDC600FFE8C209FFD1AF3DFE6757
            44C20F10104A0000000000000000000000000000000000000000000000000000
            0000000000000000000000000000000000000000000000000000000000000000
            0000000000000000000000000000000000000000000000000000000000000000
            0000588956FE5B9259FF000000000000000002BCC8FE06ACB6FA78640181EDC6
            00FFEDC600FFEDC600FFEDC600FFE6C00CFFEDC600FFEDC600FF8FBF90FD517E
            4FFF517E4FFEDEB900FFEDC600FFEDC600FFEDC600FFEDC600FFEDC600FFEDC6
            00FFA98D4CEA0D0E0E6900000000000000000000000000000000000000000000
            0000000000000000000000000000000000000000000000000000000000000000
            0000000000000000000000000000000000000000000000000000000000000000
            0000000000005D8F5BFD639D62FF000000000000000001BCC8FE05B1BEFEAB8F
            38DFE9C308FFEDC600FFDCB711FBE5BF0BFEEBC405FFEDC600FFEDC600FFEDC6
            00FF99C49DFF4C794AFF96800AFFECC500FFEDC600FFEDC600FFEDC600FFEDC6
            00FFE9C308FFC7A73BF411121175020202030000000000000000000000000000
            0000000000000000000000000000000000000000000000000000000000000000
            0000000000000000000000000000000000000000000000000000000000000000
            00000000000000000000588D56F65E915CFF060606080000000008C6D3FE538D
            7FFECCAB11F2EDC600FFEDC600FFEDC600FFECC500FFD7B502FDD0AD00FFD0AE
            00FFE0BB00FFEDC600FF5A8E58FF4D7A4BFFC4A400FFEDC600FFEDC600FFE9C3
            04FFE9C303FEEDC600FFC9A92AF22E2A22910C0C0C1A00000000000000000000
            0000000000000000000000000000000000000000000000000000000000000000
            0000000000000000000000000000000000000000000000000000000000000000
            0000000000000000000000000000000000005B8F59FF507C4EF90000000043C8
            A1F8EDC600FFEDC600FFEDC600FFEDC600FFC5AD30FF867D50FFA39E80FFA29D
            80FF746D41FF473C00FF544700FF647F4CFF548152FF538051FFDFBA0FFEE9C3
            08FFEDC600FFEDC600FFEDC600FFD4B216F6645642BC1011117C0F0F0F200000
            0000000000000000000000000000000000000000000000000000000000000000
            0000000000000000000000000000000000000000000000000000000000000000
            00000000000000000000000000000000000000000000649A63FE538351FE0909
            090D705F0899EDC600FFEDC600FFEECA10FFEFE4B0FFFFFFFFFFFFFFFFFFFFFF
            FFFFFFFFFFFFFFFFFFFFF4F4F0FF989270FF473C00FF3C523FFF4B7749FFB89A
            00FFEDC600FFEDC600FFEDC600FFEDC600FFE4BF04FBC3A541FD3D362BA30E0F
            0F720C0D0D190000000000000000000000000000000000000000000000000000
            0000000000000000000000000000000000000000000000000000000000000000
            000000000000000000000000000000000000000000000000000068A068FD67A1
            66FF847038D3CBAA2AFAEDC600FFEDC600FFF6E380FFFFFFFFFFFFFFFFFFFFFF
            FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFBBB7A0FF3F3C07FF2A3E
            2AFF507C4EFFE9C300FFEDC600FFEDC600FFEDC600FFEDC600FFEDC600FFC5A6
            47FD4A4133AC0E0F0F720E0F0F21000000000000000000000000000000000000
            0000000000000000000000000000000000000000000000000000000000000000
            0000000000000000000000000000000000000000000000000000030303045154
            31B877AE78FF58854EFFEDC600FFE8C309FFEDC600FFFDF8E0FFFFFFFFFFFFFF
            FFFFE9E7E0FFD3BB40FFF0D130FFF5DF70FFFFFFFFFFFFFFFFFFFFFFFFFFF0DB
            70FF83B586FF4D7A4BFFC3A300FFEDC600FFEDC600FFEDC600FFEDC600FFEDC6
            00FFE8C109FEC4A552FE61533EBB0F1010750505050800000000000000000000
            0000000000000000000000000000000000000000000000000000000000000000
            00000000000000000000020202020E0E0E3F0E0F0F520D0E0E57101010235246
            0861EDC600FF81B583FF578B56FFECC500FFE7C10EFFEDC600FFFFFFFFFFFFFF
            FFFFFFFFFFFF8C8560FF9F8600FFD5B300FFD5B300FFD8BD36FEE0C640FFE0C6
            40FFDDC130FFBCAB16FE4E774CFF538051FEECC500FFEDC600FFEDC600FFEDC6
            00FFEDC600FFE6C10AFFEDC600FFCBAA46FE3830289E0909091C000000000000
            0000000000000000000000000000000000000000000000000000000000000000
            00000000000000000000060606094E432287AD9246F5B39739F1AF936BF92826
            1E909B8306CCEDC600FF6BA26CFF7DB281FF93952EFFEDC600FFEDC600FFFEFC
            F0FFFFFFFFFFFFFFFFFFBAB6A0FFA39E81FFA09C82FEA09C82FEA19C82FFA39E
            80FFA39E80FFA39E80FF746C43FF253625FF4C794AFFDAB603FEEAC304FEE4BF
            10FFE3BF0FFFE0BC0BFCEDC600FFEDC600FFE4BE13FE927B5BDC070808230000
            0000000000000000000000000000000000000000000000000000000000000000
            00000000000000000000060606095B4E20ACC7A732F9EDC600FFEDC600FFCBAA
            29F8CEAC37FEE1BD16FFEDC600FFEDC600FF8BBE8FFF528350FFECC500FFEDC6
            00FFFBF1C0FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
            FFFFFFFFFFFFFFFFFFFFFFFFFFFFBAB6A1FF223420FF466F44FFB59901FFEDC6
            00FFEAC404FFEAC404FFE2BE12FFE8C20AFFEDC600FFE3BE0EFEB99C6AFC0909
            0916000000000000000000000000000000000000000000000000000000000000
            00000000000000000000000000009C833CC8E4BF04FBEDC600FFEDC600FFDFBA
            02F7E4BF01FAEDC600FFEDC600FFE4BF08FCEDC600FF76AB79FF85B989FF6893
            42FFEDC600FFEED86BFFFFFFFFFFFFFFFFFFFFFFFFFFDDDBD0FFE9E3C0FFFBF1
            C0FFFBF1C0FFFBF7E1FEFFFFFFFFFFFFFFFFD2CFC0FF473C00FF568553FF517F
            4FFEEDC600FFEDC600FFEDC600FFE4BF07FDE6C10CFFEAC304FEE2BD0DFDB198
            5FEF020202020000000000000000000000000000000000000000000000000000
            000000000000000000000000000000000000C4A40BE1EDC600FFE7C102FCD7B4
            05F4EDC600FFEDC600FFEDC600FFEDC600FFEDC600FFEDC600FFEDC600FF91C0
            95FF578D56FFE4BF00FFE7C41BFEFEFCF0FFFFFFFFFFFFFFFFFFC6C3B0FF483D
            00FFA68A00FFE5BF00FFF9F0C0FFFFFFFFFFFFFFFFFFD2CFC0FF473C00FF6499
            64FF4F7D4DFEEBC400FFD8B508F5EDC600FFEDC600FFE1BC09FAE5C00CFFB294
            09C40706040A0000000000000000000000000000000000000000000000000000
            00000000000000000000000000000000000000000000DAB710F3E4BF01FAEDC6
            00FFEDC600FFEDC600FFEDC600FFEDC600FFEDC600FFEDC600FFEDC600FFEDC6
            00FF789E5DFF93C298FF507D4EFFDFBA05F8F3D850FFFFFFFFFFFFFFFFFFFFFF
            FFFFD2CFC0FF8C8560FFAFAB90FFF4F4F0FFFFFFFFFFFFFFFFFFC6C3B0FF6052
            00FF649B63FF4F7D4DFFE4BF00FFD8B60CF5EDC600FFEDC600FFD7B417F63129
            163F000000000000000000000000000000000000000000000000000000000000
            0000000000000000000000000000000000000000000000000000594B0060EDC6
            00FFEDC600FFEDC600FFEDC600FFEDC600FFEDC600FFEDC600FFEDC600FFEDC6
            00FFEDC600FFEDC600FF93C197FF7DB37DFFB29F0BFFE1BD0BFBF5DF70FFFFFF
            FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF9386
            41FFE5BF00FF76A347FF507E4EFFD3B10CFBE7C20DFFEDC600FFA6C43FFF1916
            0A2B000000000000000000000000000000000000000000000000000000000000
            00000000000000000000000000000000000030303030707070F0898989E91010
            1010C1A200D0D5C159FF7E7C70FF9D9880FFF0D130FF8E8B7EFF7E7C70FFF0D1
            30FFEDC600FFEDC600FFEDC600FFEDC600FF9BC7A1FF578D56FFD4B100FFEDC6
            00FFF0D130FFFDF8E0FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFDFBF0FFF2DF
            80FFE1BC08FAEDC600FFEDC600FF548152FF6E7F38E7473C125605B5C0FE0FE1
            F3FF090909200000000000000000000000000000000000000000000000000000
            00000000000000000000000000000000000000000000101010101E1E1EFE0000
            00FF4040404000000000636361F3000000FF1F1F1EFFEFCD20FF3F3E3BFF0000
            00FFB9AC68FFEDC600FFEDC600FFEDC600FFEDC600FFB3BE25FF9EC9A4FF507F
            4EFFD7B409FDEDC600FFEDC600FFF0D130FFF2D440FFF3D850FFECD04DFEEAC9
            2BFFEDC600FFEDC600FFEBC404FFCEAD23F2619A5FFF537F51F80000000006BF
            CBFE0FE1F3FF0909092100000000000000000000000000000000000000000000
            0000000000000000000000000000000000000000000000000000000000004949
            49F9000000FF787878B8303030300E0E0EFE000000FF000000FFE4CD55FF7F7D
            75FF000000FF8D886EFFEDC600FFEDC600FFEDC600FFEDC600FFEDC600FF87BC
            86FF9EC9A4FF527F50FEDEBA00FFEDC600FFEDC600FFE8C305FFDAB732FFD7B4
            0EF7E5BF07FBD6B42DFCA88D03B66051187700000000619A5FFF537F51F80000
            000006B2BEFE13DFEFFF0A0A0A1D000000000000000000000000000000000000
            0000000000000000000000000000000000000000000000000000000000000000
            0000767676E6000000FF767676E67A7A7ADA000000FF000000FF000000FFABA1
            6EFFACA480FF000000FF4E4D48FFF2D440FFF2D440FFEFD246FFEFCF33FFEDC6
            00FFE6C103FC90C290FFA2CBA7FF51804FFFD7B400FFEDC600FFE6C00DFFDCBE
            15FFC0A253FB7C6A10BF2B260D3E000000000000000000000000548252FF5481
            53EA0000000006B7C3FE04BECAFE090909120000000000000000000000000000
            0000000000000000000000000000000000000000000000000000000000000000
            000000000000686868A8000000FF565656F63C3C3CFC000000FF6C6C6CFC0000
            00FF7E7C70FFD6C465FF000000FF000000FF000000FF000000FF000000FF3F3F
            3DFFD8B513F8CFAD31FEEDC600FF94C095FFA3CCA9FF4F7E4DFFC1A200FFECC5
            00FFEDC600FFD6B726FFB29C6CFE050505060000000000000000507C4EFB507F
            4EFF030303041C656C8103C8D7FF04BAC8FB0303030400000000000000000000
            0000000000000000000000000000000000000000000000000000000000000000
            0000000000000000000040404040000000FF1E1E1EFE000000FF1E1E1EFE7E7E
            7E9E000000FF3F3E3AFFF0D130FF1F1F1EFF000000FF6E6D65FF7E7C70FF7E7C
            70FF7E7B6EFFEFCD20FFDFBA0FFBBE9F11D4DFBA00F091BD96FAA6CEACFF578B
            56FE68852FFFDCB700FFDEBB1DFF6EC1BBFF07A6B0FE1F5C6282060606085586
            53FE517F4FFE0000000008A5AFFE0DE1F3FF1011113E00000000000000000000
            0000000000000000000000000000000000000000000000000000000000000000
            0000000000000000000000000000000000002C2C2CFC000000FF000000FF7676
            76E6303030300F0F0FFF0F0F0FFFD7B928EA4E4E4DFF000000FF807E78C1D9B6
            12F8EDC600FFEDC600FFEDC600FFBEA15BFD1010102700000000231D0327729C
            62E8A8CEAEFF90C596FF50814EFF847028FE58B3BDFC77D2DCFF43BCC8FF4E7E
            4CFE528151FF598B58FE05C4D2FF04D6E7FF0ABECBF203030303000000000000
            0000000000000000000000000000000000000000000000000000000000000000
            00000000000000000000000000000000000000000000585858F8000000FF0000
            00FF55555565000000003C3C3CFC000000FF65656585707070F0000000FF1E1E
            1EFE3F3E3BFF3F3E3BFF3F3E3BFF9D9880FFCAA958FE1E1C1837000000000000
            000000000000000000009AC5A0FDA3CBA9FF8FBE94FF629F61FF588B56FF649D
            63FF548452FF538051FE3BE2F2FE23D6E7FE0D909AB501010101000000000000
            0000000000000000000000000000000000000000000000000000000000000000
            0000000000000000000000000000000000000000000000000000767676D63B3B
            3BFB747474F40000000000000000878787E73C3C3CFC868686B6828282B23C3C
            3CFC3B3B3BFB3F3E3CFF3D3D3BFD3E3E3CFE6F6D68FFD2AF37FE040404050000
            000000000000000000000000000000000000000000007EAF7DF88EBA90FE76AC
            79FE5F945EFD4D714BC200000000000000000000000000000000000000000000
            0000000000000000000000000000000000000000000000000000000000000000
            0000000000000000000000000000000000000000000000000000000000000000
            0000000000000000000000000000000000000000000000000000000000000000
            000000000000000000000000000000000000000000003B320040594B24720000
            0000000000000000000000000000000000000000000000000000000000000000
            0000000000000000000000000000000000000000000000000000000000000000
            0000000000000000000000000000000000000000000000000000000000000000
            0000000000000000000000000000000000000000000000000000000000000000
            0000000000000000000000000000000000000000000000000000000000000000
            0000000000000000000000000000000000000000000000000000000000000000
            0000000000000000000000000000000000000000000000000000000000000000
            0000000000000000000000000000000000000000000000000000000000000000
            0000000000000000000000000000000000000000000000000000000000000000
            0000000000000000000000000000000000000000000000000000000000000000
            0000000000000000000000000000000000000000000000000000000000000000
            0000000000000000000000000000000000000000000000000000000000000000
            0000000000000000000000000000000000000000000000000000000000000000
            0000000000000000000000000000000000000000000000000000000000000000
            0000000000000000000000000000000000000000000000000000000000000000
            000000000000000000000000000000000000}
          TabOrder = 5
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'Tahoma'
          Font.Style = [fsBold]
          ParentFont = False
          OnClick = cxButton11Click
        end
        object rgtpEmis: TRadioGroup
          Left = 280
          Top = 238
          Width = 193
          Height = 121
          Caption = 'Tipo de Emiss'#227'o de NFe'
          Columns = 2
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = []
          Items.Strings = (
            'Normal'
            'Conting'#234'ncia'
            'SCAN'
            'DPEC'
            'FSDA'
            'SVCAN'
            'SVCRS'
            'SVCSP'
            'Off line')
          ParentFont = False
          TabOrder = 6
          TabStop = True
        end
      end
      object cxLabel2: TcxLabel
        Left = 409
        Top = -4
        Caption = '  Data  '
        ParentColor = False
        Style.BorderColor = clWindow
        Style.Color = clWindow
      end
      object Edit6: TEdit
        Left = 662
        Top = 74
        Width = 84
        Height = 26
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -15
        Font.Name = 'Tahoma'
        Font.Style = [fsBold]
        ParentFont = False
        TabOrder = 11
      end
    end
  end
end
Trocou 'NCM' por 'PROD_NCMSH' : automaticamente em 18/06/2020 21:22
