object Frm_Venda_Mercadoria: TFrm_Venda_Mercadoria
  Left = 0
  Top = 0
  BorderIcons = [biSystemMenu]
  Caption = 'Consultar Vendas'
  ClientHeight = 657
  ClientWidth = 1036
  Color = clBtnFace
  DefaultMonitor = dmMainForm
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  KeyPreview = True
  OldCreateOrder = True
  Position = poMainFormCenter
  OnClose = FormClose
  OnKeyDown = FormKeyDown
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 13
  object GroupBox2: TGroupBox
    Left = -6
    Top = -8
    Width = 1047
    Height = 670
    Color = clGradientInactiveCaption
    ParentBackground = False
    ParentColor = False
    TabOrder = 0
    object Label5: TLabel
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
    object lbl_qtde: TLabel
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
    object Label4: TLabel
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
    object GroupBox6: TGroupBox
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
      object Label7: TLabel
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
      object Label8: TLabel
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
        OnKeyUp = edt_venda_inicioKeyUp
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
        OnKeyUp = edt_venda_inicioKeyUp
      end
    end
    object GroupBox1: TGroupBox
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
      object Label1: TLabel
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
      object Label2: TLabel
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
      object Label3: TLabel
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
      object edt_periodo_inicio: TcxDateEdit
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
        Properties.OnEditValueChanged = edt_periodo_inicioPropertiesEditValueChanged
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
        OnClick = edt_periodo_inicioClick
        OnEnter = edt_periodo_inicioEnter
        Width = 100
      end
      object edt_periodo_fim: TcxDateEdit
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
        OnClick = edt_periodo_fimClick
        OnEnter = edt_periodo_fimEnter
        Width = 100
      end
      object CB_MES: TcxComboBox
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
    object GroupBox3: TGroupBox
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
      object Shape1: TShape
        Left = 9
        Top = 47
        Width = 103
        Height = 20
        Brush.Color = clRed
        Pen.Color = clMaroon
        Pen.Style = psClear
      end
      object Shape2: TShape
        Left = 9
        Top = 21
        Width = 103
        Height = 20
        Brush.Color = clGreen
        Pen.Color = clMaroon
        Pen.Style = psClear
      end
      object Shape3: TShape
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
        Properties.OnChange = chk_fechadasPropertiesChange
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
      object chk_canceladas: TcxCheckBox
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
    object GroupBox4: TGroupBox
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
      object Label6: TLabel
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
        OnKeyUp = edt_consultaKeyUp
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
    object DBGrid1: TDBGrid
      Left = 7
      Top = 93
      Width = 1037
      Height = 527
      Hint = 'Duplo clique para abrir a Venda'
      Color = 12827392
      DataSource = DS_VENDAS
      FixedColor = clCream
      GradientEndColor = clGray
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clBlack
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      Options = [dgTitles, dgIndicator, dgColLines, dgRowLines, dgConfirmDelete, dgCancelOnExit, dgTitleClick, dgTitleHotTrack]
      ParentFont = False
      PopupMenu = popcorn
      TabOrder = 4
      TitleFont.Charset = DEFAULT_CHARSET
      TitleFont.Color = clWindowText
      TitleFont.Height = -13
      TitleFont.Name = 'Tahoma'
      TitleFont.Style = [fsBold]
      OnDrawColumnCell = DBGrid1DrawColumnCell
      OnDblClick = DBGrid1DblClick
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
    object GroupBox7: TGroupBox
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
        Properties.OnChange = chk_nfcePropertiesChange
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
    object GroupBox8: TGroupBox
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
        Properties.OnChange = chk_vendaPropertiesChange
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
        Properties.OnChange = chk_dataPropertiesChange
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
        Properties.OnChange = chk_statusPropertiesChange
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
  object SQL_VENDAS: TFDQuery
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
    Left = 400
    Top = 232
    object SQL_VENDASCODIGO_VENDA: TFDAutoIncField
      FieldName = 'CODIGO_VENDA'
      Origin = 'CODIGO_VENDA'
      ProviderFlags = [pfInWhere, pfInKey]
      ReadOnly = True
    end
    object SQL_VENDASDATA: TDateField
      AutoGenerateValue = arDefault
      FieldName = 'DATA'
      Origin = 'DATA'
    end
    object SQL_VENDASHORA: TTimeField
      AutoGenerateValue = arDefault
      FieldName = 'HORA'
      Origin = 'HORA'
    end
    object SQL_VENDASCAIXA: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'CAIXA'
      Origin = 'CAIXA'
      Size = 5
    end
    object SQL_VENDASOPERADOR: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'OPERADOR'
      Origin = 'OPERADOR'
      ProviderFlags = []
      ReadOnly = True
      Size = 50
    end
    object SQL_VENDASVENDEDOR: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'VENDEDOR'
      Origin = 'VENDEDOR'
      ProviderFlags = []
      ReadOnly = True
      Size = 50
    end
    object SQL_VENDASNOME_CLIENTE: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'NOME_CLIENTE'
      Origin = 'NOME_CLIENTE'
      Size = 50
    end
    object SQL_VENDASTOTAL_VENDA: TBCDField
      AutoGenerateValue = arDefault
      FieldName = 'TOTAL_VENDA'
      Origin = 'TOTAL_VENDA'
      currency = True
      Precision = 10
    end
    object SQL_VENDASVALOR_PAGO: TBCDField
      AutoGenerateValue = arDefault
      FieldName = 'VALOR_PAGO'
      Origin = 'VALOR_PAGO'
      currency = True
      Precision = 10
    end
    object SQL_VENDASSTATUS: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'STATUS'
      Origin = 'STATUS'
      FixedChar = True
      Size = 9
    end
    object SQL_VENDASCOD_NFCE: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'COD_NFCE'
      Origin = 'COD_NFCE'
      Size = 10
    end
    object SQL_VENDASTROCO: TBCDField
      AutoGenerateValue = arDefault
      FieldName = 'TROCO'
      Origin = 'TROCO'
      Precision = 10
    end
    object SQL_VENDAScomanda: TIntegerField
      AutoGenerateValue = arDefault
      FieldName = 'comanda'
      Origin = 'comanda'
    end
  end
  object DS_VENDAS: TDataSource
    DataSet = SQL_VENDAS
    Left = 400
    Top = 280
  end
  object popcorn: TPopupMenu
    BiDiMode = bdLeftToRight
    ParentBiDiMode = False
    OnPopup = popcornPopup
    Left = 400
    Top = 328
    object mniFecharVenda: TMenuItem
      Bitmap.Data = {
        36040000424D3604000000000000360000002800000010000000100000000100
        2000000000000004000000000000000000000000000000000000000000000000
        00000000000000000000101010462121218D2F2F2FC7383838F0383838F02F2F
        2FC72121218D1010104600000000000000000000000000000000000000000000
        0000080808202121218C393939F33C3C3CFF3C3C3CFF3C3C3CFF3C3C3CFF3C3C
        3CFF3C3C3CFF393939F32121218C080808200000000000000000000000000808
        0820262626A33C3C3CFF3C3C3CFF3C3C3CFF3C3C3CFF3C3C3CFF3C3C3CFF3C3C
        3CFF3C3C3CFF3C3C3CFF3C3C3CFF262626A30808082000000000000000002121
        218C3C3C3CFF3C3C3CFF3C3C3CFF3C3C3CFF1E1E1E7E3C3C3CFF3C3C3CFF3C3C
        3CFF3C3C3CFF3C3C3CFF3C3C3CFF3C3C3CFF2121218C00000000101010463939
        39F33C3C3CFF3C3C3CFF3C3C3CFF1E1E1E7E000000001E1E1E7E3C3C3CFF3C3C
        3CFF3C3C3CFF3C3C3CFF3C3C3CFF3C3C3CFF393939F3101010462121218D3C3C
        3CFF3C3C3CFF3C3C3CFF1E1E1E7E0000000000000000000000001E1E1E7E3C3C
        3CFF3C3C3CFF3C3C3CFF3C3C3CFF3C3C3CFF3C3C3CFF2121218D2F2F2FC73C3C
        3CFF3C3C3CFF3C3C3CFF00000000000000001E1E1E8100000000000000001E1E
        1E7E3C3C3CFF3C3C3CFF3C3C3CFF3C3C3CFF3C3C3CFF2F2F2FC7383838F03C3C
        3CFF3C3C3CFF3C3C3CFF000000001E1E1E813C3C3CFF1E1E1E81000000000000
        00001E1E1E7E3C3C3CFF3C3C3CFF3C3C3CFF3C3C3CFF383838F0383838F03C3C
        3CFF3C3C3CFF3C3C3CFF1E1E1E813C3C3CFF3C3C3CFF3C3C3CFF1E1E1E810000
        0000000000001E1E1E7E3C3C3CFF3C3C3CFF3C3C3CFF383838F02F2F2FC73C3C
        3CFF3C3C3CFF3C3C3CFF3C3C3CFF3C3C3CFF3C3C3CFF3C3C3CFF3C3C3CFF1E1E
        1E8100000000000000003C3C3CFF3C3C3CFF3C3C3CFF2F2F2FC72121218D3C3C
        3CFF3C3C3CFF3C3C3CFF3C3C3CFF3C3C3CFF3C3C3CFF3C3C3CFF3C3C3CFF3C3C
        3CFF1E1E1E81000000003C3C3CFF3C3C3CFF3C3C3CFF2121218D101010463939
        39F33C3C3CFF3C3C3CFF3C3C3CFF3C3C3CFF3C3C3CFF3C3C3CFF3C3C3CFF3C3C
        3CFF3C3C3CFF1E1E1E813C3C3CFF3C3C3CFF393939F310101046000000002121
        218C3C3C3CFF3C3C3CFF3C3C3CFF3C3C3CFF3C3C3CFF3C3C3CFF3C3C3CFF3C3C
        3CFF3C3C3CFF3C3C3CFF3C3C3CFF3C3C3CFF2121218C00000000000000000808
        0820262626A33C3C3CFF3C3C3CFF3C3C3CFF3C3C3CFF3C3C3CFF3C3C3CFF3C3C
        3CFF3C3C3CFF3C3C3CFF3C3C3CFF262626A30808082000000000000000000000
        0000080808202121218C393939F33C3C3CFF3C3C3CFF3C3C3CFF3C3C3CFF3C3C
        3CFF3C3C3CFF393939F32121218C080808200000000000000000000000000000
        00000000000000000000101010462121218D2F2F2FC7383838F0383838F02F2F
        2FC72121218D1010104600000000000000000000000000000000}
      Caption = 'Fechar Venda'
      OnClick = mniFecharVendaClick
    end
    object DetalhesdaVenda1: TMenuItem
      Bitmap.Data = {
        36040000424D3604000000000000360000002800000010000000100000000100
        2000000000000004000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000001515155A303030CA1313135200000000000000001515155A3030
        30CA131313520000000000000000000000000000000000000000000000000000
        000000000000303030CA3C3C3CFF2E2E2EC20000000000000000303030CA3C3C
        3CFF2E2E2EC20000000000000000000000000000000000000000000000000000
        000000000000131313512E2E2EC21212124D0000000000000000131313512E2E
        2EC21212124D0000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        000000000002181818652E2E2EC3383838EE3C3C3CFF383838F0313131D22020
        2089050505150000000000000000000000000000000000000000000000000101
        01062A2A2AB43C3C3CFF3C3C3CFF3C3C3CFF3C3C3CFF3C3C3CFF3C3C3CFF3C3C
        3CFF343434DF0909092600000000000000000000000000000000000000002323
        23953C3C3CFF363636E4101010440000000200000000000000000D0D0D362F2F
        2FC63C3C3CFF303030CA000000010000000000000000000000000C0C0C353C3C
        3CFE3B3B3BFA0B0B0B2F00000000000000000000000000000000000000000505
        0514383838EE3C3C3CFF0F0F0F410000000000000000000000001616165D3C3C
        3CFF202020861A1A1A70353535E01A1A1A70000000001A1A1A70353535E01A1A
        1A701F1F1F833C3C3CFF292929B0000000000000000000000000000000010B0B
        0B2D00000001353535E03C3C3CFF353535E000000000353535E03C3C3CFF3535
        35E0050505143A3A3AF63B3B3BFC0707071C0000000000000000000000000000
        0000000000001A1A1A70353535E01A1A1A70000000001A1A1A70353535E01A1A
        1A70010101062424249A3C3C3CFF1D1D1D7B0000000000000000000000000000
        00000000000000000000000000001A1A1A70353535E01A1A1A70000000000000
        0000000000000B0B0B303C3C3CFF3C3C3CFF3C3C3CFF3C3C3CFF000000000000
        0000000000000000000000000000353535E03C3C3CFF353535E0000000000000
        00000000000000000000282828AB3C3C3CFF3C3C3CFF282828AB000000000000
        00000000000000000000000000001A1A1A70353535E01A1A1A70000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000}
      Caption = 'Detalhes da Venda'
      Default = True
      OnClick = DetalhesdaVenda1Click
    end
    object ImprimirComprovante: TMenuItem
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
      Caption = 'Imprimir Comprovante'
      OnClick = ImprimirComprovanteClick
    end
    object mniCancelarVenda: TMenuItem
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
      Caption = 'Cancelar Venda'
      OnClick = mniCancelarVendaClick
    end
    object ReativarVenda: TMenuItem
      Bitmap.Data = {
        36040000424D3604000000000000360000002800000010000000100000000100
        2000000000000004000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        000000000000000000000707071D1A1A1A702B2B2BB7373737EA373737EA2B2B
        2BB71A1A1A700707071D00000000000000000000000000000000000000000000
        0000000000000D0D0D39292929B03C3C3CFF3C3C3CFF3C3C3CFF3C3C3CFF3C3C
        3CFF3C3C3CFF292929B00D0D0D39000000000000000000000000000000000000
        00000707071D292929B03C3C3CFF2D2D2DBF181818660707071F0707071F1818
        18662D2D2DBF3C3C3CFF292929B00707071D0000000000000000000000000000
        00001A1A1A703C3C3CFF2D2D2DBF0C0C0C330000000000000000000000000000
        00000C0C0C332D2D2DBF3C3C3CFF1A1A1A700000000000000000000000000000
        00002B2B2BB73C3C3CFF18181866000000000000000000000000000000000000
        000000000000181818663C3C3CFF2B2B2BB70000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000707071F3C3C3CFF373737EA0000000000000000000000003C3C
        3CFF3C3C3CFF3C3C3CFF3C3C3CFF3C3C3CFF1E1E1E7E00000000000000000000
        0000000000000707071F3C3C3CFF373737EA0000000000000000000000003C3C
        3CFF3C3C3CFF3C3C3CFF3C3C3CFF1E1E1E7E0000000000000000000000000000
        000000000000181818663C3C3CFF2B2B2BB70000000000000000000000003C3C
        3CFF3C3C3CFF3C3C3CFF343434DF0C0C0C330000000000000000000000000000
        00000C0C0C332D2D2DBF3C3C3CFF1A1A1A700000000000000000000000003C3C
        3CFF3C3C3CFF333333D73C3C3CFF2D2D2DBF181818660707071F0707071F1818
        18662D2D2DBF3C3C3CFF292929B00707071D0000000000000000000000003C3C
        3CFF1E1E1E7E0D0D0D39292929B03C3C3CFF3C3C3CFF3C3C3CFF3C3C3CFF3C3C
        3CFF3C3C3CFF292929B00D0D0D39000000000000000000000000000000001E1E
        1E7E00000000000000000707071D1A1A1A702B2B2BB7373737EA373737EA2B2B
        2BB71A1A1A700707071D00000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000}
      Caption = 'Reativar Venda'
      OnClick = ReativarVendaClick
    end
    object mniAbrirNFCE: TMenuItem
      Bitmap.Data = {
        36040000424D3604000000000000360000002800000010000000100000000100
        2000000000000004000000000000000000000000000000000000000000003333
        33FF333333FF333333FF333333FF333333FF333333FF333333FF333333FF3333
        33FF333333FF333333FF333333FF333333FF333333FF00000000000000003333
        33FF333333FF333333FF333333FF333333FF333333FF333333FF333333FF3333
        33FF333333FF333333FF333333FF333333FF333333FF00000000000000003333
        33FF333333FF0000000000000000000000000000000000000000000000000000
        0000000000000000000000000000333333FF333333FF00000000000000003333
        33FF333333FF0000000000000000000000000000000000000000000000000000
        0000000000000000000000000000333333FF333333FF00000000000000003333
        33FF333333FF000000001F1F1F991F1F1F991F1F1F991F1F1F991F1F1F991F1F
        1F991F1F1F991F1F1F9900000000333333FF333333FF00000000000000003333
        33FF333333FF0000000000000000000000000000000000000000000000000000
        0000000000000000000000000000333333FF333333FF00000000000000003333
        33FF333333FF000000001F1F1F991F1F1F991F1F1F991F1F1F991F1F1F991F1F
        1F991F1F1F991F1F1F9900000000333333FF333333FF00000000000000003333
        33FF333333FF0000000000000000000000000000000000000000000000000000
        0000000000000000000000000000333333FF333333FF00000000000000003333
        33FF333333FF000000001F1F1F991F1F1F991F1F1F991F1F1F99000000003333
        33FF00000000333333FF00000000333333FF333333FF00000000000000003333
        33FF333333FF0000000000000000000000000000000000000000000000003333
        33FF333333FF333333FF00000000333333FF333333FF00000000000000003333
        33FF333333FF000000001F1F1F991F1F1F991F1F1F991F1F1F99000000003333
        33FF333333FF333333FF00000000333333FF333333FF00000000000000003333
        33FF333333FF0000000000000000000000000000000000000000000000003333
        33FF333333FF333333FF00000000333333FF333333FF00000000000000003333
        33FF333333FF000000001F1F1F991F1F1F991F1F1F991F1F1F99000000003333
        33FF333333FF333333FF00000000333333FF333333FF00000000000000003333
        33FF333333FF0000000000000000000000000000000000000000000000003333
        33FF333333FF333333FF00000000333333FF333333FF00000000000000003333
        33FF333333FF333333FF333333FF333333FF333333FF333333FF333333FF3333
        33FF333333FF333333FF333333FF333333FF333333FF00000000000000003333
        33FF333333FF333333FF333333FF333333FF333333FF333333FF333333FF3333
        33FF333333FF333333FF333333FF333333FF333333FF00000000}
      Caption = 'Abrir NFC-e'
      OnClick = mniAbrirNFCEClick
    end
    object mniEmitirNFCE: TMenuItem
      Bitmap.Data = {
        36040000424D3604000000000000360000002800000010000000100000000100
        2000000000000004000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        000013131360252525B8313131F5252525B81313136000000000000000000000
        0000333333FF333333FF333333FF333333FF333333FF333333FF0B0B0B391313
        1360323232F8333333FF00000000333333FF323232F813131360000000000000
        0000333333FF333333FF333333FF333333FF333333FF333333FF010101072525
        25B8333333FF333333FF00000000333333FF333333FF252525B8000000000000
        0000333333FF333333FF00000000000000000000000000000000000000003131
        31F50000000000000000000000000000000000000000313131F5000000000000
        0000333333FF333333FF00000000000000000000000000000000000000002525
        25B8333333FF333333FF00000000333333FF333333FF252525B8000000000000
        0000333333FF333333FF000000001313136013131360111111540909092D1313
        1360323232F8333333FF00000000333333FF323232F813131360000000000000
        0000333333FF333333FF00000000000000000000000000000000000000000000
        000013131360252525B8313131F5252525B81313136000000000000000000000
        0000333333FF333333FF00000000333333FF333333FF333333FF000000000000
        0000000000000B0B0B3901010107000000000000000000000000000000000000
        0000333333FF333333FF00000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000333333FF333333FF00000000333333FF333333FF333333FF333333FF3333
        33FF333333FF00000000333333FF333333FF0000000000000000000000000000
        0000333333FF333333FF00000000000000000000000000000000000000000000
        00000000000000000000333333FF333333FF0000000000000000000000000000
        0000333333FF333333FF00000000131313601313136013131360131313601313
        13601313136000000000333333FF333333FF0000000000000000000000000000
        0000333333FF333333FF00000000000000000000000000000000000000000000
        00000000000000000000333333FF333333FF0000000000000000000000000000
        0000333333FF333333FF333333FF333333FF333333FF333333FF333333FF3333
        33FF333333FF333333FF333333FF333333FF0000000000000000000000000000
        0000333333FF333333FF333333FF333333FF333333FF333333FF333333FF3333
        33FF333333FF333333FF333333FF333333FF0000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000}
      Caption = 'Emitir NFC-e'
      OnClick = mniEmitirNFCEClick
    end
    object DuplicarVenda1: TMenuItem
      Bitmap.Data = {
        36040000424D3604000000000000360000002800000010000000100000000100
        2000000000000004000000000000000000000000000000000000000000003333
        33FF333333FF333333FF333333FF333333FF333333FF333333FF333333FF0000
        0000000000000000000000000000000000000000000000000000000000003333
        33FF333333FF333333FF333333FF333333FF333333FF333333FF333333FF0000
        0000000000000000000000000000000000000000000000000000000000003333
        33FF333333FF333333FF333333FF333333FF333333FF333333FF333333FF0000
        0000000000000000000000000000000000000000000000000000000000003333
        33FF333333FF333333FF333333FF00000000333333FF333333FF333333FF0000
        00001A1A1A801A1A1A8000000000000000000000000000000000000000003333
        33FF333333FF333333FF333333FF00000000333333FF333333FF333333FF0000
        00001A1A1A801A1A1A8000000000000000000000000000000000000000003333
        33FF333333FF333333FF0000000000000000333333FF333333FF333333FF0000
        00001A1A1A801A1A1A8000000000000000000000000000000000000000003333
        33FF333333FF333333FF333333FF00000000333333FF333333FF333333FF0000
        00001A1A1A801A1A1A80000000001A1A1A801A1A1A8000000000000000003333
        33FF333333FF333333FF333333FF333333FF333333FF333333FF333333FF0000
        00001A1A1A801A1A1A80000000001A1A1A801A1A1A8000000000000000003333
        33FF333333FF333333FF333333FF333333FF333333FF333333FF333333FF0000
        00001A1A1A801A1A1A80000000001A1A1A801A1A1A8000000000000000003333
        33FF333333FF333333FF333333FF333333FF333333FF333333FF333333FF0000
        00001A1A1A801A1A1A80000000001A1A1A801A1A1A8000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        00001A1A1A801A1A1A80000000001A1A1A801A1A1A8000000000000000000000
        000000000000000000001A1A1A801A1A1A801A1A1A801A1A1A801A1A1A801A1A
        1A801A1A1A801A1A1A80000000001A1A1A801A1A1A8000000000000000000000
        000000000000000000001A1A1A801A1A1A801A1A1A801A1A1A801A1A1A801A1A
        1A801A1A1A801A1A1A80000000001A1A1A801A1A1A8000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        00000000000000000000000000001A1A1A801A1A1A8000000000000000000000
        000000000000000000000000000000000000000000001A1A1A801A1A1A801A1A
        1A801A1A1A801A1A1A801A1A1A801A1A1A801A1A1A8000000000000000000000
        000000000000000000000000000000000000000000001A1A1A801A1A1A801A1A
        1A801A1A1A801A1A1A801A1A1A801A1A1A801A1A1A8000000000}
      Caption = 'Duplicar Venda'
      OnClick = DuplicarVenda1Click
    end
    object impComanda: TMenuItem
      Bitmap.Data = {
        36040000424D3604000000000000360000002800000010000000100000000100
        2000000000000004000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000001C1C
        1C8C1C1C1C8C1C1C1C8C1C1C1C8C000000001C1C1C8C1C1C1C8C1C1C1C8C1C1C
        1C8C000000001C1C1C8C1C1C1C8C1C1C1C8C1C1C1C8C00000000000000001C1C
        1C8C1C1C1C8C1C1C1C8C1C1C1C8C000000001C1C1C8C1C1C1C8C1C1C1C8C1C1C
        1C8C000000001C1C1C8C1C1C1C8C1C1C1C8C1C1C1C8C00000000000000001C1C
        1C8C1C1C1C8C1C1C1C8C1C1C1C8C000000001C1C1C8C1C1C1C8C1C1C1C8C1C1C
        1C8C000000001C1C1C8C1C1C1C8C1C1C1C8C1C1C1C8C00000000000000001C1C
        1C8C1C1C1C8C1C1C1C8C1C1C1C8C000000001C1C1C8C1C1C1C8C1C1C1C8C1C1C
        1C8C000000001C1C1C8C1C1C1C8C1C1C1C8C1C1C1C8C00000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000001C1C
        1C8C1C1C1C8C1C1C1C8C1C1C1C8C00000000333333FF333333FF333333FF3333
        33FF000000001C1C1C8C1C1C1C8C1C1C1C8C1C1C1C8C00000000000000001C1C
        1C8C1C1C1C8C1C1C1C8C1C1C1C8C00000000333333FF333333FF333333FF3333
        33FF000000001C1C1C8C1C1C1C8C1C1C1C8C1C1C1C8C00000000000000001C1C
        1C8C1C1C1C8C1C1C1C8C1C1C1C8C00000000333333FF333333FF333333FF3333
        33FF000000001C1C1C8C1C1C1C8C1C1C1C8C1C1C1C8C00000000000000001C1C
        1C8C1C1C1C8C1C1C1C8C1C1C1C8C00000000333333FF333333FF333333FF3333
        33FF000000001C1C1C8C1C1C1C8C1C1C1C8C1C1C1C8C00000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000001C1C
        1C8C1C1C1C8C1C1C1C8C1C1C1C8C000000001C1C1C8C1C1C1C8C1C1C1C8C1C1C
        1C8C000000001C1C1C8C1C1C1C8C1C1C1C8C1C1C1C8C00000000000000001C1C
        1C8C1C1C1C8C1C1C1C8C1C1C1C8C000000001C1C1C8C1C1C1C8C1C1C1C8C1C1C
        1C8C000000001C1C1C8C1C1C1C8C1C1C1C8C1C1C1C8C00000000000000001C1C
        1C8C1C1C1C8C1C1C1C8C1C1C1C8C000000001C1C1C8C1C1C1C8C1C1C1C8C1C1C
        1C8C000000001C1C1C8C1C1C1C8C1C1C1C8C1C1C1C8C00000000000000001C1C
        1C8C1C1C1C8C1C1C1C8C1C1C1C8C000000001C1C1C8C1C1C1C8C1C1C1C8C1C1C
        1C8C000000001C1C1C8C1C1C1C8C1C1C1C8C1C1C1C8C00000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000}
      Caption = 'Imprimir Produtos Comanda'
      OnClick = impComandaClick
    end
  end
end
