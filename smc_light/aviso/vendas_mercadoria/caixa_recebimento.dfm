object frm_caixa_recebimento: Tfrm_caixa_recebimento
  Left = 0
  Top = 0
  BorderIcons = [biSystemMenu]
  BorderStyle = bsSingle
  Caption = 'Caixa | Recebimento'
  ClientHeight = 617
  ClientWidth = 1350
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
  PixelsPerInch = 96
  TextHeight = 13
  object DBGrid1: TDBGrid
    Left = 17
    Top = 157
    Width = 1316
    Height = 196
    Hint = 'Duplo clique para abrir a nota'
    Color = 12827392
    DataSource = DataSource1
    FixedColor = clCream
    GradientEndColor = clGray
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clBlack
    Font.Height = -11
    Font.Name = 'Tahoma'
    Font.Style = [fsBold]
    Options = [dgTitles, dgIndicator, dgColLines, dgRowLines, dgTabs]
    ParentFont = False
    TabOrder = 0
    TitleFont.Charset = DEFAULT_CHARSET
    TitleFont.Color = clWindowText
    TitleFont.Height = -13
    TitleFont.Name = 'Tahoma'
    TitleFont.Style = [fsBold]
    Columns = <
      item
        Expanded = False
        Title.Alignment = taCenter
        Title.Caption = 'Data | Hora'
        Width = 100
        Visible = True
      end
      item
        Expanded = False
        Title.Alignment = taCenter
        Title.Caption = 'N'#186' Pedido'
        Width = 77
        Visible = True
      end
      item
        Expanded = False
        Title.Alignment = taCenter
        Title.Caption = 'Tipo Pedido'
        Width = 82
        Visible = True
      end
      item
        Expanded = False
        Title.Alignment = taCenter
        Title.Caption = 'Destinat'#225'rio'
        Width = 345
        Visible = True
      end
      item
        Expanded = False
        Title.Alignment = taCenter
        Title.Caption = 'Valor'
        Width = 98
        Visible = True
      end
      item
        Expanded = False
        Title.Alignment = taCenter
        Title.Caption = 'Vendedor'
        Width = 98
        Visible = True
      end
      item
        Expanded = False
        Title.Alignment = taCenter
        Title.Caption = 'Conferente'
        Width = 106
        Visible = True
      end
      item
        Expanded = False
        Title.Alignment = taCenter
        Title.Caption = 'Inform'#231#245'es Adicionais'
        Width = 217
        Visible = True
      end
      item
        Expanded = False
        Title.Alignment = taCenter
        Title.Caption = 'Status Confer'#234'ncia'
        Width = 133
        Visible = True
      end>
  end
  object GroupBox3: TGroupBox
    Left = 286
    Top = 74
    Width = 766
    Height = 53
    Caption = '  Status Financeiro do Pedido  '
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -13
    Font.Name = 'Tahoma'
    Font.Style = [fsBold]
    ParentFont = False
    TabOrder = 1
    object chk_autorizadas: TcxCheckBox
      Left = 36
      Top = 21
      Caption = '  Fechado  '
      ParentBackground = False
      ParentColor = False
      ParentFont = False
      State = cbsChecked
      Style.Color = 54528
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
    object chk_canceladas: TcxCheckBox
      Left = 502
      Top = 21
      Caption = ' Cancelado  '
      ParentBackground = False
      ParentColor = False
      ParentFont = False
      State = cbsChecked
      Style.BorderColor = clWindowFrame
      Style.Color = clRed
      Style.Font.Charset = DEFAULT_CHARSET
      Style.Font.Color = clWhite
      Style.Font.Height = -15
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
      Left = 179
      Top = 21
      Caption = '  Processando  '
      ParentBackground = False
      ParentColor = False
      ParentFont = False
      State = cbsChecked
      Style.Color = clYellow
      Style.Font.Charset = DEFAULT_CHARSET
      Style.Font.Color = clWindowText
      Style.Font.Height = -15
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
    object cxCheckBox2: TcxCheckBox
      Left = 359
      Top = 21
      Caption = '  Abertas  '
      ParentBackground = False
      ParentColor = False
      ParentFont = False
      State = cbsChecked
      Style.BorderColor = clWindowText
      Style.Color = 16744576
      Style.Font.Charset = DEFAULT_CHARSET
      Style.Font.Color = clWindow
      Style.Font.Height = -15
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
    object cxCheckBox1: TcxCheckBox
      Left = 654
      Top = 21
      Caption = '  Todos  '
      ParentBackground = False
      ParentColor = False
      ParentFont = False
      State = cbsChecked
      Style.Color = clWindow
      Style.Font.Charset = DEFAULT_CHARSET
      Style.Font.Color = clWindowText
      Style.Font.Height = -15
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
  end
  object GroupBox7: TGroupBox
    Left = 17
    Top = 11
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
    TabOrder = 2
    object Label46: TLabel
      Left = 9
      Top = 22
      Width = 107
      Height = 18
      Caption = 'Consultar Por:'
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -15
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object Edit2: TEdit
      Left = 125
      Top = 18
      Width = 256
      Height = 26
      TabOrder = 0
    end
    object RadioButton3: TRadioButton
      Left = 428
      Top = 23
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
    object RadioButton5: TRadioButton
      Left = 546
      Top = 23
      Width = 74
      Height = 17
      Caption = 'Valor'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -15
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      ParentFont = False
      TabOrder = 2
    end
    object RadioButton6: TRadioButton
      Left = 650
      Top = 23
      Width = 111
      Height = 17
      Caption = 'CNPJ | CPF'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -15
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      ParentFont = False
      TabOrder = 3
    end
  end
  object GroupBox1: TGroupBox
    Left = 828
    Top = 11
    Width = 418
    Height = 52
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
      Top = 23
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
      Top = 23
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
      Top = 23
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
  object cxComboBox1: TcxComboBox
    Left = 854
    Top = 197
    Properties.Items.Strings = (
      'N'#227'o Conferido'
      'Parcialmente'
      'Conferido')
    TabOrder = 4
    Text = 'cxComboBox1'
    Visible = False
    Width = 129
  end
  object DBGrid2: TDBGrid
    Left = 17
    Top = 374
    Width = 1304
    Height = 220
    Hint = 'Duplo clique para abrir a nota'
    Color = clRed
    DataSource = DataSource1
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
    OnDrawColumnCell = DBGrid2DrawColumnCell
    OnDblClick = DBGrid2DblClick
    Columns = <
      item
        Expanded = False
        Title.Alignment = taCenter
        Title.Caption = 'N'#186' Parcela'
        Width = 100
        Visible = True
      end
      item
        Expanded = False
        Title.Alignment = taCenter
        Title.Caption = 'Tipo Pagamento'
        Width = 140
        Visible = True
      end
      item
        Expanded = False
        Title.Alignment = taCenter
        Title.Caption = 'Valor'
        Width = 82
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'Prazo'
        ReadOnly = True
        Title.Alignment = taCenter
        Width = 243
        Visible = True
      end
      item
        Expanded = False
        Title.Alignment = taCenter
        Title.Caption = 'Vecimento'
        Width = 98
        Visible = True
      end
      item
        Expanded = False
        Title.Alignment = taCenter
        Title.Caption = 'Termial'
        Width = 98
        Visible = True
      end
      item
        Expanded = False
        Title.Alignment = taCenter
        Title.Caption = 'Operador Caixa'
        Width = 119
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'Comprovante'
        Title.Alignment = taCenter
        Width = 104
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'NFe'
        Title.Alignment = taCenter
        Title.Caption = 'NF-e'
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'NFCe'
        Title.Alignment = taCenter
        Title.Caption = 'NFC-e'
        Width = 64
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'NFSe'
        Title.Alignment = taCenter
        Title.Caption = 'NFS-e'
        Width = 64
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'Entrega'
        Visible = True
      end>
  end
  object Button1: TButton
    Left = 640
    Top = 312
    Width = 75
    Height = 25
    Caption = 'Button1'
    TabOrder = 6
  end
  object QueryPedido: TFDQuery
    Active = True
    CachedUpdates = True
    Connection = Module.connection
    SQL.Strings = (
      'select * from pedido')
    Left = 296
    Top = 248
    object QueryPedidoID: TIntegerField
      AutoGenerateValue = arDefault
      FieldName = 'ID'
      Origin = 'ID'
    end
    object QueryPedidoPrazo: TIntegerField
      AutoGenerateValue = arDefault
      FieldName = 'Prazo'
      Origin = 'Prazo'
    end
    object QueryPedidoNFe: TIntegerField
      AutoGenerateValue = arDefault
      FieldName = 'NFe'
      Origin = 'NFe'
    end
    object QueryPedidoNFCe: TIntegerField
      AutoGenerateValue = arDefault
      FieldName = 'NFCe'
      Origin = 'NFCe'
    end
    object QueryPedidoNFSe: TIntegerField
      AutoGenerateValue = arDefault
      FieldName = 'NFSe'
      Origin = 'NFSe'
    end
    object QueryPedidoComprovante: TIntegerField
      AutoGenerateValue = arDefault
      FieldName = 'Comprovante'
      Origin = 'Comprovante'
    end
    object QueryPedidoStatus: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'Status'
      Origin = '`Status`'
      FixedChar = True
      Size = 13
    end
  end
  object DataSource1: TDataSource
    DataSet = QueryPedido
    Left = 664
    Top = 312
  end
end
