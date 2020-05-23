object FRM_os_fotografia: TFRM_os_fotografia
  Left = 0
  Top = 0
  BorderIcons = [biSystemMenu]
  BorderStyle = bsSingle
  Caption = 'O.S Fotografica'
  ClientHeight = 649
  ClientWidth = 1015
  Color = clBtnFace
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
  object cxPageControl1: TcxPageControl
    Left = -2
    Top = -1
    Width = 1019
    Height = 653
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'Tahoma'
    Font.Style = [fsBold]
    ParentFont = False
    TabOrder = 0
    Properties.ActivePage = cxTabSheet2
    Properties.CustomButtons.Buttons = <>
    ClientRectBottom = 649
    ClientRectLeft = 4
    ClientRectRight = 1015
    ClientRectTop = 24
    object cxTabSheet2: TcxTabSheet
      Caption = '  Ordem Servi'#231'o  '
      ImageIndex = 1
      object lbl13: TLabel
        Left = 488
        Top = 296
        Width = 27
        Height = 13
        Caption = 'lbl13'
      end
      object lbl19: TLabel
        Left = 36
        Top = 148
        Width = 65
        Height = 19
        Caption = 'Produto'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlue
        Font.Height = -16
        Font.Name = 'Tahoma'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object lbl22: TLabel
        Left = 24
        Top = 386
        Width = 59
        Height = 19
        Caption = 'Servi'#231'o'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlue
        Font.Height = -16
        Font.Name = 'Tahoma'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object grp2: TGroupBox
        Left = 8
        Top = 5
        Width = 846
        Height = 41
        TabOrder = 0
        object lbl1: TLabel
          Left = 587
          Top = 10
          Width = 62
          Height = 18
          Caption = 'Vendedor'
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Height = -15
          Font.Name = 'Tahoma'
          Font.Style = []
          ParentFont = False
        end
        object lbl15: TLabel
          Left = 119
          Top = 10
          Width = 62
          Height = 18
          Caption = 'Data Ent.'
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Height = -15
          Font.Name = 'Tahoma'
          Font.Style = []
          ParentFont = False
        end
        object lbl16: TLabel
          Left = 21
          Top = 11
          Width = 46
          Height = 18
          Caption = 'N'#186' O.S'
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Height = -15
          Font.Name = 'Tahoma'
          Font.Style = []
          ParentFont = False
        end
        object lbl20: TLabel
          Left = 276
          Top = 10
          Width = 72
          Height = 18
          Caption = 'Data Fech.'
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Height = -15
          Font.Name = 'Tahoma'
          Font.Style = []
          ParentFont = False
        end
        object lbl21: TLabel
          Left = 443
          Top = 10
          Width = 49
          Height = 18
          Caption = 'Sit. O.S'
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Height = -15
          Font.Name = 'Tahoma'
          Font.Style = []
          ParentFont = False
        end
        object cxDBComboBox1: TcxDBComboBox
          Left = 659
          Top = 10
          ParentFont = False
          Style.Font.Charset = DEFAULT_CHARSET
          Style.Font.Color = clWindowText
          Style.Font.Height = -11
          Style.Font.Name = 'Tahoma'
          Style.Font.Style = []
          Style.IsFontAssigned = True
          TabOrder = 0
          Width = 174
        end
        object cxDBTextEdit2: TcxDBTextEdit
          Left = 73
          Top = 10
          ParentFont = False
          Style.Font.Charset = DEFAULT_CHARSET
          Style.Font.Color = clWindowText
          Style.Font.Height = -11
          Style.Font.Name = 'Tahoma'
          Style.Font.Style = []
          Style.IsFontAssigned = True
          TabOrder = 1
          Width = 36
        end
        object cxDBTextEdit8: TcxDBTextEdit
          Left = 358
          Top = 10
          ParentFont = False
          Style.Font.Charset = DEFAULT_CHARSET
          Style.Font.Color = clWindowText
          Style.Font.Height = -11
          Style.Font.Name = 'Tahoma'
          Style.Font.Style = []
          Style.IsFontAssigned = True
          TabOrder = 2
          Width = 75
        end
        object cxDBTextEdit7: TcxDBTextEdit
          Left = 502
          Top = 10
          ParentFont = False
          Style.Font.Charset = DEFAULT_CHARSET
          Style.Font.Color = clWindowText
          Style.Font.Height = -11
          Style.Font.Name = 'Tahoma'
          Style.Font.Style = []
          Style.IsFontAssigned = True
          TabOrder = 3
          Width = 75
        end
        object cxDBTextEdit1: TcxDBTextEdit
          Left = 191
          Top = 10
          ParentFont = False
          Style.Font.Charset = DEFAULT_CHARSET
          Style.Font.Color = clWindowText
          Style.Font.Height = -11
          Style.Font.Name = 'Tahoma'
          Style.Font.Style = []
          Style.IsFontAssigned = True
          TabOrder = 4
          Width = 75
        end
      end
      object grp1: TGroupBox
        Left = 8
        Top = 52
        Width = 846
        Height = 85
        Caption = '  Dados Cliente  '
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'HelveticaNeue'
        Font.Style = [fsBold]
        ParentFont = False
        TabOrder = 1
        object lbl2: TLabel
          Left = 19
          Top = 53
          Width = 65
          Height = 18
          Caption = 'Endere'#231'o:'
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Height = -15
          Font.Name = 'Tahoma'
          Font.Style = []
          ParentFont = False
        end
        object lbl5: TLabel
          Left = 369
          Top = 53
          Width = 22
          Height = 18
          Caption = 'N'#186':'
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Height = -15
          Font.Name = 'Tahoma'
          Font.Style = []
          ParentFont = False
        end
        object lbl6: TLabel
          Left = 611
          Top = 53
          Width = 48
          Height = 18
          Caption = 'Cidade:'
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Height = -15
          Font.Name = 'Tahoma'
          Font.Style = []
          ParentFont = False
        end
        object lbl8: TLabel
          Left = 459
          Top = 53
          Width = 42
          Height = 18
          Caption = 'Bairro:'
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Height = -15
          Font.Name = 'Tahoma'
          Font.Style = []
          ParentFont = False
        end
        object lbl9: TLabel
          Left = 764
          Top = 53
          Width = 23
          Height = 18
          Caption = 'UF:'
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Height = -15
          Font.Name = 'Tahoma'
          Font.Style = []
          ParentFont = False
        end
        object lbl12: TLabel
          Left = 19
          Top = 24
          Width = 43
          Height = 18
          Caption = 'C'#243'digo'
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Height = -15
          Font.Name = 'Tahoma'
          Font.Style = []
          ParentFont = False
        end
        object lbl4: TLabel
          Left = 526
          Top = 22
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
        object lbl7: TLabel
          Left = 694
          Top = 22
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
        object cxDBTextEdit3: TcxDBTextEdit
          Left = 71
          Top = 22
          ParentFont = False
          Style.Font.Charset = ANSI_CHARSET
          Style.Font.Color = clWindowText
          Style.Font.Height = -11
          Style.Font.Name = 'HelveticaNeue'
          Style.Font.Style = []
          Style.IsFontAssigned = True
          TabOrder = 0
          Width = 40
        end
        object cxButton1: TcxButton
          Left = 109
          Top = 23
          Width = 24
          Height = 20
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
          TabOrder = 1
        end
        object cxDBTextEdit4: TcxDBTextEdit
          Left = 139
          Top = 22
          ParentFont = False
          Style.Font.Charset = ANSI_CHARSET
          Style.Font.Color = clWindowText
          Style.Font.Height = -11
          Style.Font.Name = 'Tahoma'
          Style.Font.Style = []
          Style.IsFontAssigned = True
          TabOrder = 2
          Width = 362
        end
        object cxDBTextEdit9: TcxDBTextEdit
          Left = 562
          Top = 22
          ParentFont = False
          Style.Font.Charset = ANSI_CHARSET
          Style.Font.Color = clWindowText
          Style.Font.Height = -11
          Style.Font.Name = 'Tahoma'
          Style.Font.Style = []
          Style.IsFontAssigned = True
          TabOrder = 3
          Width = 122
        end
        object cxDBTextEdit10: TcxDBTextEdit
          Left = 746
          Top = 22
          ParentFont = False
          Style.Font.Charset = ANSI_CHARSET
          Style.Font.Color = clWindowText
          Style.Font.Height = -11
          Style.Font.Name = 'Tahoma'
          Style.Font.Style = []
          Style.IsFontAssigned = True
          TabOrder = 4
          Width = 86
        end
      end
      object grp5: TGroupBox
        Left = 8
        Top = 145
        Width = 846
        Height = 229
        Caption = '                       '
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -15
        Font.Name = 'Tahoma'
        Font.Style = [fsBold]
        ParentFont = False
        TabOrder = 2
        object dbgrd1: TDBGrid
          Left = 8
          Top = 20
          Width = 822
          Height = 165
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = [fsBold]
          ParentFont = False
          TabOrder = 0
          TitleFont.Charset = ANSI_CHARSET
          TitleFont.Color = clWindowText
          TitleFont.Height = -15
          TitleFont.Name = 'Tahoma'
          TitleFont.Style = [fsBold]
          Columns = <
            item
              Expanded = False
              Title.Caption = 'C'#243'digo'
              Width = 73
              Visible = True
            end
            item
              Expanded = False
              Title.Caption = 'Descri'#231#227'o'
              Width = 272
              Visible = True
            end
            item
              Expanded = False
              Title.Caption = 'Quant.'
              Width = 77
              Visible = True
            end
            item
              Expanded = False
              Title.Caption = 'Pre'#231'o'
              Width = 75
              Visible = True
            end
            item
              Expanded = False
              Title.Caption = 'Total'
              Visible = True
            end
            item
              Expanded = False
              Title.Caption = 'Desc. %'
              Width = 74
              Visible = True
            end
            item
              Expanded = False
              Title.Caption = 'Desc. R$'
              Width = 88
              Visible = True
            end
            item
              Expanded = False
              Title.Caption = 'Total Liqu'#237'do'
              Width = 113
              Visible = True
            end>
        end
        object grp18: TGroupBox
          Left = -8
          Top = 192
          Width = 863
          Height = 105
          Color = clGradientInactiveCaption
          ParentBackground = False
          ParentColor = False
          TabOrder = 1
          object lbl23: TLabel
            Left = 600
            Top = 11
            Width = 107
            Height = 19
            Caption = 'Total L'#237'quido'
            Font.Charset = ANSI_CHARSET
            Font.Color = clWindowText
            Font.Height = -16
            Font.Name = 'Tahoma'
            Font.Style = [fsBold]
            ParentFont = False
          end
          object lbl17: TLabel
            Left = 263
            Top = 11
            Width = 123
            Height = 19
            Caption = 'Total Desconto'
            Font.Charset = ANSI_CHARSET
            Font.Color = clWindowText
            Font.Height = -16
            Font.Name = 'Tahoma'
            Font.Style = [fsBold]
            ParentFont = False
          end
          object lbl14: TLabel
            Left = 20
            Top = 11
            Width = 43
            Height = 19
            Caption = 'Total'
            Font.Charset = ANSI_CHARSET
            Font.Color = clWindowText
            Font.Height = -16
            Font.Name = 'Tahoma'
            Font.Style = [fsBold]
            ParentFont = False
          end
          object cxDBTextEdit15: TcxDBTextEdit
            Left = 730
            Top = 7
            ParentFont = False
            Style.Font.Charset = DEFAULT_CHARSET
            Style.Font.Color = clWindowText
            Style.Font.Height = -15
            Style.Font.Name = 'Tahoma'
            Style.Font.Style = [fsBold]
            Style.IsFontAssigned = True
            TabOrder = 0
            Width = 113
          end
          object cxDBTextEdit14: TcxDBTextEdit
            Left = 403
            Top = 7
            ParentFont = False
            Style.Font.Charset = DEFAULT_CHARSET
            Style.Font.Color = clWindowText
            Style.Font.Height = -15
            Style.Font.Name = 'Tahoma'
            Style.Font.Style = [fsBold]
            Style.IsFontAssigned = True
            TabOrder = 1
            Width = 123
          end
          object cxDBTextEdit13: TcxDBTextEdit
            Left = 80
            Top = 7
            ParentFont = False
            Style.Font.Charset = DEFAULT_CHARSET
            Style.Font.Color = clWindowText
            Style.Font.Height = -15
            Style.Font.Name = 'Tahoma'
            Style.Font.Style = [fsBold]
            Style.IsFontAssigned = True
            TabOrder = 2
            Width = 92
          end
        end
      end
      object grp3: TGroupBox
        Left = 8
        Top = 380
        Width = 846
        Height = 229
        Caption = '                 '
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -15
        Font.Name = 'Tahoma'
        Font.Style = [fsBold]
        ParentFont = False
        TabOrder = 3
        object dbgrd4: TDBGrid
          Left = 10
          Top = 24
          Width = 822
          Height = 165
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = [fsBold]
          ParentFont = False
          TabOrder = 0
          TitleFont.Charset = ANSI_CHARSET
          TitleFont.Color = clWindowText
          TitleFont.Height = -15
          TitleFont.Name = 'Tahoma'
          TitleFont.Style = [fsBold]
          Columns = <
            item
              Expanded = False
              Title.Caption = 'C'#243'digo'
              Width = 73
              Visible = True
            end
            item
              Expanded = False
              Title.Caption = 'Descri'#231#227'o'
              Width = 272
              Visible = True
            end
            item
              Expanded = False
              Title.Caption = 'Quant.'
              Width = 77
              Visible = True
            end
            item
              Expanded = False
              Title.Caption = 'Pre'#231'o'
              Width = 75
              Visible = True
            end
            item
              Expanded = False
              Title.Caption = 'Total'
              Visible = True
            end
            item
              Expanded = False
              Title.Caption = 'Desc. %'
              Width = 74
              Visible = True
            end
            item
              Expanded = False
              Title.Caption = 'Desc. R$'
              Width = 88
              Visible = True
            end
            item
              Expanded = False
              Title.Caption = 'Total Liqu'#237'do'
              Width = 113
              Visible = True
            end>
        end
        object grp19: TGroupBox
          Left = -13
          Top = 194
          Width = 863
          Height = 105
          Color = clGradientInactiveCaption
          ParentBackground = False
          ParentColor = False
          TabOrder = 1
          object lbl3: TLabel
            Left = 600
            Top = 11
            Width = 107
            Height = 19
            Caption = 'Total L'#237'quido'
            Font.Charset = ANSI_CHARSET
            Font.Color = clWindowText
            Font.Height = -16
            Font.Name = 'Tahoma'
            Font.Style = [fsBold]
            ParentFont = False
          end
          object lbl10: TLabel
            Left = 263
            Top = 11
            Width = 123
            Height = 19
            Caption = 'Total Desconto'
            Font.Charset = ANSI_CHARSET
            Font.Color = clWindowText
            Font.Height = -16
            Font.Name = 'Tahoma'
            Font.Style = [fsBold]
            ParentFont = False
          end
          object lbl11: TLabel
            Left = 20
            Top = 11
            Width = 43
            Height = 19
            Caption = 'Total'
            Font.Charset = ANSI_CHARSET
            Font.Color = clWindowText
            Font.Height = -16
            Font.Name = 'Tahoma'
            Font.Style = [fsBold]
            ParentFont = False
          end
          object cxDBTextEdit5: TcxDBTextEdit
            Left = 730
            Top = 7
            ParentFont = False
            Style.Font.Charset = DEFAULT_CHARSET
            Style.Font.Color = clWindowText
            Style.Font.Height = -15
            Style.Font.Name = 'Tahoma'
            Style.Font.Style = [fsBold]
            Style.IsFontAssigned = True
            TabOrder = 0
            Width = 113
          end
          object cxDBTextEdit11: TcxDBTextEdit
            Left = 403
            Top = 7
            ParentFont = False
            Style.Font.Charset = DEFAULT_CHARSET
            Style.Font.Color = clWindowText
            Style.Font.Height = -15
            Style.Font.Name = 'Tahoma'
            Style.Font.Style = [fsBold]
            Style.IsFontAssigned = True
            TabOrder = 1
            Width = 123
          end
          object cxDBTextEdit12: TcxDBTextEdit
            Left = 80
            Top = 7
            ParentFont = False
            Style.Font.Charset = DEFAULT_CHARSET
            Style.Font.Color = clWindowText
            Style.Font.Height = -15
            Style.Font.Name = 'Tahoma'
            Style.Font.Style = [fsBold]
            Style.IsFontAssigned = True
            TabOrder = 2
            Width = 92
          end
        end
      end
      object grp20: TGroupBox
        Left = 869
        Top = 288
        Width = 119
        Height = 71
        Color = clGradientInactiveCaption
        ParentBackground = False
        ParentColor = False
        TabOrder = 4
        object lbl18: TLabel
          Left = 8
          Top = 7
          Width = 105
          Height = 21
          Caption = 'N'#186' Envelope'
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Height = -17
          Font.Name = 'Tahoma'
          Font.Style = [fsBold]
          ParentFont = False
        end
        object cxDBTextEdit6: TcxDBTextEdit
          Left = 7
          Top = 34
          ParentFont = False
          Style.Font.Charset = DEFAULT_CHARSET
          Style.Font.Color = clWindowText
          Style.Font.Height = -15
          Style.Font.Name = 'Tahoma'
          Style.Font.Style = [fsBold]
          Style.IsFontAssigned = True
          TabOrder = 0
          Width = 106
        end
      end
    end
    object cxTabSheet3: TcxTabSheet
      Caption = '  Financeiro  O.S.'
      ImageIndex = 2
      object lbl36: TLabel
        Left = 463
        Top = 225
        Width = 154
        Height = 16
        Caption = 'Tipo Pag. Adiantamento'
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'Tahoma'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object lbl40: TLabel
        Left = 13
        Top = 364
        Width = 97
        Height = 18
        Caption = 'Observa'#231#245'es'
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -15
        Font.Name = 'Tahoma'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object lbl24: TLabel
        Left = 463
        Top = 301
        Width = 156
        Height = 16
        Caption = 'Tipo Pag. Saldo Devedor'
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'Tahoma'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object lbl45: TLabel
        Left = 42
        Top = 12
        Width = 65
        Height = 19
        Caption = 'Produto'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlue
        Font.Height = -16
        Font.Name = 'Tahoma'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object lbl46: TLabel
        Left = 492
        Top = 12
        Width = 59
        Height = 19
        Caption = 'Servi'#231'o'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlue
        Font.Height = -16
        Font.Name = 'Tahoma'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object grp10: TGroupBox
        Left = 480
        Top = 15
        Width = 375
        Height = 191
        Caption = '                 '
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -15
        Font.Name = 'Tahoma'
        Font.Style = [fsBold]
        ParentFont = False
        TabOrder = 0
        object lbl32: TLabel
          Left = 21
          Top = 25
          Width = 73
          Height = 18
          Caption = 'Total Bruto'
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Height = -15
          Font.Name = 'Tahoma'
          Font.Style = []
          ParentFont = False
        end
        object lbl33: TLabel
          Left = 19
          Top = 104
          Width = 75
          Height = 18
          Caption = 'Desc. Geral'
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Height = -15
          Font.Name = 'Tahoma'
          Font.Style = []
          ParentFont = False
        end
        object lbl34: TLabel
          Left = 20
          Top = 141
          Width = 74
          Height = 18
          Caption = 'Valor Pagar'
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Height = -15
          Font.Name = 'Tahoma'
          Font.Style = []
          ParentFont = False
        end
        object lbl35: TLabel
          Left = 37
          Top = 62
          Width = 57
          Height = 18
          Caption = 'Desc. %'
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Height = -15
          Font.Name = 'Tahoma'
          Font.Style = []
          ParentFont = False
        end
        object cxDBTextEdit26: TcxDBTextEdit
          Left = 100
          Top = 24
          ParentFont = False
          Style.Font.Charset = DEFAULT_CHARSET
          Style.Font.Color = clWindowText
          Style.Font.Height = -11
          Style.Font.Name = 'Tahoma'
          Style.Font.Style = []
          Style.IsFontAssigned = True
          TabOrder = 0
          Width = 69
        end
        object cxDBTextEdit27: TcxDBTextEdit
          Left = 100
          Top = 103
          ParentFont = False
          Style.Font.Charset = DEFAULT_CHARSET
          Style.Font.Color = clWindowText
          Style.Font.Height = -11
          Style.Font.Name = 'Tahoma'
          Style.Font.Style = []
          Style.IsFontAssigned = True
          TabOrder = 1
          Width = 69
        end
        object cxDBTextEdit28: TcxDBTextEdit
          Left = 100
          Top = 139
          ParentFont = False
          Style.Font.Charset = DEFAULT_CHARSET
          Style.Font.Color = clWindowText
          Style.Font.Height = -11
          Style.Font.Name = 'Tahoma'
          Style.Font.Style = []
          Style.IsFontAssigned = True
          TabOrder = 2
          Width = 69
        end
        object cxDBTextEdit29: TcxDBTextEdit
          Left = 100
          Top = 60
          ParentFont = False
          Style.Font.Charset = DEFAULT_CHARSET
          Style.Font.Color = clWindowText
          Style.Font.Height = -11
          Style.Font.Name = 'Tahoma'
          Style.Font.Style = []
          Style.IsFontAssigned = True
          TabOrder = 3
          Width = 69
        end
        object grp11: TGroupBox
          Left = 207
          Top = 23
          Width = 149
          Height = 57
          Caption = '  Centro Custo  '
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = [fsBold]
          ParentFont = False
          TabOrder = 4
          object cxDBTextEdit18: TcxDBTextEdit
            Left = 12
            Top = 20
            ParentFont = False
            Style.Font.Charset = DEFAULT_CHARSET
            Style.Font.Color = clWindowText
            Style.Font.Height = -11
            Style.Font.Name = 'Tahoma'
            Style.Font.Style = []
            Style.IsFontAssigned = True
            TabOrder = 0
            Width = 109
          end
          object cxButton3: TcxButton
            Left = 120
            Top = 20
            Width = 21
            Height = 21
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
            TabOrder = 1
          end
        end
        object grp12: TGroupBox
          Left = 208
          Top = 103
          Width = 149
          Height = 57
          Caption = '  Plano Conta  '
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = [fsBold]
          ParentFont = False
          TabOrder = 5
          object cxDBTextEdit30: TcxDBTextEdit
            Left = 12
            Top = 20
            ParentFont = False
            Style.Font.Charset = DEFAULT_CHARSET
            Style.Font.Color = clWindowText
            Style.Font.Height = -11
            Style.Font.Name = 'Tahoma'
            Style.Font.Style = []
            Style.IsFontAssigned = True
            TabOrder = 0
            Width = 109
          end
          object cxButton4: TcxButton
            Left = 120
            Top = 20
            Width = 21
            Height = 21
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
            TabOrder = 1
          end
        end
      end
      object grp6: TGroupBox
        Left = 13
        Top = 220
        Width = 190
        Height = 138
        Caption = '  Situa'#231#227'o Pagamento  '
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -15
        Font.Name = 'Tahoma'
        Font.Style = [fsBold]
        ParentFont = False
        TabOrder = 1
        object cxCheckBox2: TcxCheckBox
          Left = 19
          Top = 25
          Caption = 'Sem Pagamento'
          ParentBackground = False
          ParentColor = False
          ParentFont = False
          Style.Color = clWhite
          Style.Font.Charset = DEFAULT_CHARSET
          Style.Font.Color = clWindowText
          Style.Font.Height = -13
          Style.Font.Name = 'Tahoma'
          Style.Font.Style = [fsBold]
          Style.IsFontAssigned = True
          TabOrder = 0
        end
        object cxCheckBox3: TcxCheckBox
          Left = 19
          Top = 63
          Caption = 'Pagamento Parcial'
          ParentBackground = False
          ParentColor = False
          ParentFont = False
          Style.Color = clWhite
          Style.Font.Charset = DEFAULT_CHARSET
          Style.Font.Color = clWindowText
          Style.Font.Height = -13
          Style.Font.Name = 'Tahoma'
          Style.Font.Style = [fsBold]
          Style.IsFontAssigned = True
          TabOrder = 1
        end
        object cxCheckBox4: TcxCheckBox
          Left = 19
          Top = 101
          Caption = 'Pagamento Total '
          ParentBackground = False
          ParentColor = False
          ParentFont = False
          Style.Color = clWhite
          Style.Font.Charset = DEFAULT_CHARSET
          Style.Font.Color = clWindowText
          Style.Font.Height = -13
          Style.Font.Name = 'Tahoma'
          Style.Font.Style = [fsBold]
          Style.IsFontAssigned = True
          TabOrder = 2
        end
      end
      object cbb1: TComboBox
        Left = 463
        Top = 258
        Width = 154
        Height = 24
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'Tahoma'
        Font.Style = []
        ParentFont = False
        TabOrder = 2
        Text = 'cbb1'
      end
      object grp14: TGroupBox
        Left = 635
        Top = 220
        Width = 220
        Height = 138
        Caption = '  Troco  '
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -15
        Font.Name = 'Tahoma'
        Font.Style = [fsBold]
        ParentFont = False
        TabOrder = 3
        object lbl37: TLabel
          Left = 11
          Top = 23
          Width = 113
          Height = 18
          Caption = 'Valor Recebido'
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Height = -15
          Font.Name = 'Tahoma'
          Font.Style = [fsBold]
          ParentFont = False
        end
        object lbl38: TLabel
          Left = 15
          Top = 65
          Width = 109
          Height = 18
          Caption = 'Saldo Devedor'
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Height = -15
          Font.Name = 'Tahoma'
          Font.Style = [fsBold]
          ParentFont = False
        end
        object lbl39: TLabel
          Left = 82
          Top = 103
          Width = 42
          Height = 18
          Caption = 'Troco'
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Height = -15
          Font.Name = 'Tahoma'
          Font.Style = [fsBold]
          ParentFont = False
        end
        object cxDBTextEdit32: TcxDBTextEdit
          Left = 133
          Top = 22
          ParentFont = False
          Style.Font.Charset = DEFAULT_CHARSET
          Style.Font.Color = clWindowText
          Style.Font.Height = -11
          Style.Font.Name = 'Tahoma'
          Style.Font.Style = [fsBold]
          Style.IsFontAssigned = True
          TabOrder = 0
          Width = 69
        end
        object cxDBTextEdit33: TcxDBTextEdit
          Left = 133
          Top = 64
          ParentFont = False
          Style.Font.Charset = DEFAULT_CHARSET
          Style.Font.Color = clWindowText
          Style.Font.Height = -11
          Style.Font.Name = 'Tahoma'
          Style.Font.Style = [fsBold]
          Style.IsFontAssigned = True
          TabOrder = 1
          Width = 69
        end
        object cxDBTextEdit34: TcxDBTextEdit
          Left = 133
          Top = 102
          ParentFont = False
          Style.Font.Charset = DEFAULT_CHARSET
          Style.Font.Color = clWindowText
          Style.Font.Height = -11
          Style.Font.Name = 'Tahoma'
          Style.Font.Style = [fsBold]
          Style.IsFontAssigned = True
          TabOrder = 2
          Width = 69
        end
      end
      object dbmmo2: TDBMemo
        Left = 13
        Top = 388
        Width = 846
        Height = 197
        TabOrder = 4
      end
      object grp13: TGroupBox
        Left = 217
        Top = 220
        Width = 231
        Height = 138
        Caption = '  Pagamento  '
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -15
        Font.Name = 'Tahoma'
        Font.Style = [fsBold]
        ParentFont = False
        TabOrder = 5
        object lbl27: TLabel
          Left = 29
          Top = 104
          Width = 109
          Height = 18
          Caption = 'Saldo Devedor'
          Font.Charset = ANSI_CHARSET
          Font.Color = clRed
          Font.Height = -15
          Font.Name = 'Tahoma'
          Font.Style = [fsBold]
          ParentFont = False
        end
        object lbl25: TLabel
          Left = 25
          Top = 27
          Width = 113
          Height = 18
          Caption = 'Valor Total O.S'
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Height = -15
          Font.Name = 'Tahoma'
          Font.Style = [fsBold]
          ParentFont = False
        end
        object lbl26: TLabel
          Left = 35
          Top = 72
          Width = 103
          Height = 18
          Caption = 'Adiantamento'
          Font.Charset = ANSI_CHARSET
          Font.Color = clHotLight
          Font.Height = -15
          Font.Name = 'Tahoma'
          Font.Style = [fsBold]
          ParentFont = False
        end
        object cxDBTextEdit19: TcxDBTextEdit
          Left = 152
          Top = 68
          ParentFont = False
          Style.Font.Charset = DEFAULT_CHARSET
          Style.Font.Color = clWindowText
          Style.Font.Height = -15
          Style.Font.Name = 'Tahoma'
          Style.Font.Style = [fsBold]
          Style.IsFontAssigned = True
          TabOrder = 0
          Width = 65
        end
        object cxDBTextEdit17: TcxDBTextEdit
          Left = 152
          Top = 100
          ParentFont = False
          Style.Font.Charset = DEFAULT_CHARSET
          Style.Font.Color = clWindowText
          Style.Font.Height = -15
          Style.Font.Name = 'Tahoma'
          Style.Font.Style = [fsBold]
          Style.IsFontAssigned = True
          TabOrder = 1
          Width = 65
        end
        object cxDBTextEdit16: TcxDBTextEdit
          Left = 152
          Top = 23
          ParentFont = False
          Style.Font.Charset = DEFAULT_CHARSET
          Style.Font.Color = clWindowText
          Style.Font.Height = -15
          Style.Font.Name = 'Tahoma'
          Style.Font.Style = [fsBold]
          Style.IsFontAssigned = True
          TabOrder = 2
          Width = 65
        end
        object grp15: TGroupBox
          Left = 0
          Top = 58
          Width = 337
          Height = 4
          TabOrder = 3
        end
      end
      object grp7: TGroupBox
        Left = 40
        Top = 15
        Width = 379
        Height = 191
        Caption = '                  '
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -15
        Font.Name = 'Tahoma'
        Font.Style = [fsBold]
        ParentFont = False
        TabOrder = 6
        object lbl28: TLabel
          Left = 21
          Top = 25
          Width = 73
          Height = 18
          Caption = 'Total Bruto'
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Height = -15
          Font.Name = 'Tahoma'
          Font.Style = []
          ParentFont = False
        end
        object lbl29: TLabel
          Left = 19
          Top = 104
          Width = 75
          Height = 18
          Caption = 'Desc. Geral'
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Height = -15
          Font.Name = 'Tahoma'
          Font.Style = []
          ParentFont = False
        end
        object lbl30: TLabel
          Left = 20
          Top = 141
          Width = 74
          Height = 18
          Caption = 'Valor Pagar'
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Height = -15
          Font.Name = 'Tahoma'
          Font.Style = []
          ParentFont = False
        end
        object lbl31: TLabel
          Left = 37
          Top = 62
          Width = 57
          Height = 18
          Caption = 'Desc. %'
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Height = -15
          Font.Name = 'Tahoma'
          Font.Style = []
          ParentFont = False
        end
        object cxDBTextEdit20: TcxDBTextEdit
          Left = 100
          Top = 24
          ParentFont = False
          Style.Font.Charset = DEFAULT_CHARSET
          Style.Font.Color = clWindowText
          Style.Font.Height = -11
          Style.Font.Name = 'Tahoma'
          Style.Font.Style = []
          Style.IsFontAssigned = True
          TabOrder = 0
          Width = 69
        end
        object cxDBTextEdit21: TcxDBTextEdit
          Left = 100
          Top = 103
          ParentFont = False
          Style.Font.Charset = DEFAULT_CHARSET
          Style.Font.Color = clWindowText
          Style.Font.Height = -11
          Style.Font.Name = 'Tahoma'
          Style.Font.Style = []
          Style.IsFontAssigned = True
          TabOrder = 1
          Width = 69
        end
        object cxDBTextEdit22: TcxDBTextEdit
          Left = 100
          Top = 139
          ParentFont = False
          Style.Font.Charset = DEFAULT_CHARSET
          Style.Font.Color = clWindowText
          Style.Font.Height = -11
          Style.Font.Name = 'Tahoma'
          Style.Font.Style = []
          Style.IsFontAssigned = True
          TabOrder = 2
          Width = 69
        end
        object cxDBTextEdit23: TcxDBTextEdit
          Left = 100
          Top = 60
          ParentFont = False
          Style.Font.Charset = DEFAULT_CHARSET
          Style.Font.Color = clWindowText
          Style.Font.Height = -11
          Style.Font.Name = 'Tahoma'
          Style.Font.Style = []
          Style.IsFontAssigned = True
          TabOrder = 3
          Width = 69
        end
        object grp8: TGroupBox
          Left = 216
          Top = 103
          Width = 149
          Height = 57
          Caption = '  Plano Conta  '
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = [fsBold]
          ParentFont = False
          TabOrder = 4
          object cxDBTextEdit24: TcxDBTextEdit
            Left = 12
            Top = 20
            ParentFont = False
            Style.Font.Charset = DEFAULT_CHARSET
            Style.Font.Color = clWindowText
            Style.Font.Height = -11
            Style.Font.Name = 'Tahoma'
            Style.Font.Style = []
            Style.IsFontAssigned = True
            TabOrder = 0
            Width = 109
          end
          object cxButton2: TcxButton
            Left = 120
            Top = 20
            Width = 21
            Height = 21
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
            TabOrder = 1
          end
        end
        object grp9: TGroupBox
          Left = 215
          Top = 23
          Width = 149
          Height = 57
          Caption = '  Centro Custo  '
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = [fsBold]
          ParentFont = False
          TabOrder = 5
          object cxDBTextEdit25: TcxDBTextEdit
            Left = 12
            Top = 20
            ParentFont = False
            Style.Font.Charset = DEFAULT_CHARSET
            Style.Font.Color = clWindowText
            Style.Font.Height = -11
            Style.Font.Name = 'Tahoma'
            Style.Font.Style = []
            Style.IsFontAssigned = True
            TabOrder = 0
            Width = 109
          end
          object cxButton5: TcxButton
            Left = 120
            Top = 20
            Width = 21
            Height = 21
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
            TabOrder = 1
          end
        end
      end
      object cbb2: TComboBox
        Left = 463
        Top = 334
        Width = 154
        Height = 24
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'Tahoma'
        Font.Style = []
        ParentFont = False
        TabOrder = 7
        Text = 'cbb1'
      end
    end
    object cxTabSheet1: TcxTabSheet
      Caption = '  Consulta  '
      ImageIndex = 0
      object lbl41: TLabel
        Left = 12
        Top = 20
        Width = 60
        Height = 18
        Caption = 'Consultar'
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -15
        Font.Name = 'Tahoma'
        Font.Style = []
        ParentFont = False
      end
      object lbl42: TLabel
        Left = 292
        Top = 10
        Width = 5
        Height = 18
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -15
        Font.Name = 'Tahoma'
        Font.Style = []
        ParentFont = False
      end
      object lbl43: TLabel
        Left = 25
        Top = 47
        Width = 47
        Height = 18
        Caption = 'Per'#237'odo'
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -15
        Font.Name = 'Tahoma'
        Font.Style = []
        ParentFont = False
      end
      object lbl44: TLabel
        Left = 174
        Top = 47
        Width = 8
        Height = 18
        Caption = #224
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -15
        Font.Name = 'Tahoma'
        Font.Style = []
        ParentFont = False
      end
      object grp21: TGroupBox
        Left = 858
        Top = 303
        Width = 155
        Height = 79
        Caption = '                 '
        Color = clGradientInactiveCaption
        ParentBackground = False
        ParentColor = False
        TabOrder = 7
        object lbl48: TLabel
          Left = 12
          Top = -2
          Width = 47
          Height = 21
          Caption = 'Aviso'
          Font.Charset = ANSI_CHARSET
          Font.Color = clRed
          Font.Height = -17
          Font.Name = 'Tahoma'
          Font.Style = [fsBold]
          ParentFont = False
        end
        object lbl47: TLabel
          Left = 6
          Top = 20
          Width = 146
          Height = 48
          Caption = ' Selecionar a O.S. com '#13#10'o bot'#227'o direito do '#13#10
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'Tahoma'
          Font.Style = [fsBold]
          ParentFont = False
        end
        object lbl49: TLabel
          Left = 6
          Top = 52
          Width = 137
          Height = 16
          Caption = 'mouse envia a NFC-e.'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'Tahoma'
          Font.Style = [fsBold]
          ParentFont = False
        end
      end
      object cxDBTextEdit35: TcxDBTextEdit
        Left = 78
        Top = 19
        ParentFont = False
        Style.Font.Charset = DEFAULT_CHARSET
        Style.Font.Color = clWindowText
        Style.Font.Height = -11
        Style.Font.Name = 'Tahoma'
        Style.Font.Style = []
        Style.IsFontAssigned = True
        TabOrder = 0
        Width = 203
      end
      object grp16: TGroupBox
        Left = 353
        Top = 17
        Width = 172
        Height = 50
        Caption = '  Campos Consulta  '
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'Tahoma'
        Font.Style = [fsBold]
        ParentFont = False
        TabOrder = 1
        object dbcbb1: TDBComboBox
          Left = 13
          Top = 19
          Width = 145
          Height = 24
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'Tahoma'
          Font.Style = []
          Items.Strings = (
            'N'#186' Evelope'
            'N'#186' O.S.'
            'Cliente')
          ParentFont = False
          TabOrder = 0
        end
      end
      object grp17: TGroupBox
        Left = 723
        Top = 3
        Width = 130
        Height = 81
        Caption = '  Status  '
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'Tahoma'
        Font.Style = [fsBold]
        ParentFont = False
        TabOrder = 2
        object cxCheckBox5: TcxCheckBox
          Left = 18
          Top = 16
          Caption = 'Abertas'
          ParentBackground = False
          ParentColor = False
          ParentFont = False
          Style.BorderColor = clRed
          Style.BorderStyle = ebsOffice11
          Style.Color = clWhite
          Style.Font.Charset = DEFAULT_CHARSET
          Style.Font.Color = clWhite
          Style.Font.Height = -13
          Style.Font.Name = 'Tahoma'
          Style.Font.Style = [fsBold]
          Style.TextColor = clRed
          Style.TextStyle = [fsBold]
          Style.IsFontAssigned = True
          TabOrder = 0
        end
        object cxCheckBox6: TcxCheckBox
          Left = 18
          Top = 35
          Caption = 'Fechadas'
          ParentBackground = False
          ParentColor = False
          Style.Color = clWhite
          Style.TextColor = clGreen
          TabOrder = 1
        end
        object cxCheckBox7: TcxCheckBox
          Left = 18
          Top = 54
          Caption = 'Todas'
          ParentBackground = False
          ParentColor = False
          Style.Color = clWhite
          TabOrder = 2
        end
      end
      object cxMaskEdit1: TcxMaskEdit
        Left = 78
        Top = 46
        Properties.CharCase = ecUpperCase
        Properties.EditMask = '!99/99/0000;1;_'
        TabOrder = 3
        Text = '  /  /   1'
        Width = 90
      end
      object dbgrd3: TDBGrid
        Left = 12
        Top = 90
        Width = 841
        Height = 521
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'Tahoma'
        Font.Style = [fsBold]
        ParentFont = False
        TabOrder = 4
        TitleFont.Charset = DEFAULT_CHARSET
        TitleFont.Color = clWindowText
        TitleFont.Height = -13
        TitleFont.Name = 'Tahoma'
        TitleFont.Style = [fsBold]
        Columns = <
          item
            Expanded = False
            Title.Caption = 'N'#186' O.S.'
            Width = 107
            Visible = True
          end
          item
            Expanded = False
            Title.Caption = 'Data'
            Width = 117
            Visible = True
          end
          item
            Expanded = False
            Title.Caption = 'Cliente'
            Width = 201
            Visible = True
          end
          item
            Expanded = False
            Title.Caption = 'N'#186' Envelope'
            Width = 99
            Visible = True
          end
          item
            Expanded = False
            Title.Caption = 'Valor O.S.'
            Width = 91
            Visible = True
          end
          item
            Expanded = False
            Title.Caption = 'Sit. Pag.'
            Width = 75
            Visible = True
          end
          item
            Expanded = False
            Title.Caption = 'Saldo Devedor'
            Width = 91
            Visible = True
          end
          item
            Expanded = False
            Title.Caption = 'Status O.S.'
            Width = 144
            Visible = True
          end>
      end
      object cxMaskEdit2: TcxMaskEdit
        Left = 191
        Top = 46
        Properties.CharCase = ecUpperCase
        Properties.EditMask = '!99/99/0000;1;_'
        TabOrder = 5
        Text = '  /  /   1'
        Width = 90
      end
      object grp4: TGroupBox
        Left = 558
        Top = 3
        Width = 127
        Height = 81
        Caption = '  Situa'#231#227'o  '
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'Tahoma'
        Font.Style = [fsBold]
        ParentFont = False
        TabOrder = 6
        object cxCheckBox8: TcxCheckBox
          Left = 17
          Top = 16
          Caption = 'Sem Pag.'
          ParentBackground = False
          ParentColor = False
          Style.Color = clWhite
          TabOrder = 0
        end
        object cxCheckBox9: TcxCheckBox
          Left = 17
          Top = 34
          Caption = 'Pag. Parcial'
          ParentBackground = False
          ParentColor = False
          Style.Color = clWhite
          TabOrder = 1
        end
        object cxCheckBox10: TcxCheckBox
          Left = 17
          Top = 54
          Caption = 'Pag. Total'
          ParentBackground = False
          ParentColor = False
          Style.Color = clWhite
          TabOrder = 2
        end
      end
    end
  end
  object pnl1: TPanel
    Left = 876
    Top = 39
    Width = 119
    Height = 266
    BevelOuter = bvNone
    Color = clWhite
    ParentBackground = False
    TabOrder = 1
    object BtnGravar: TcxButton
      Left = 0
      Top = -1
      Width = 106
      Height = 43
      Caption = 'Gravar'#13'[F2]'
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
      TabOrder = 1
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'HelveticaNeue'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object BtnIncluir: TcxButton
      Left = 0
      Top = -1
      Width = 106
      Height = 43
      Caption = 'Incluir'#13'[F1]'
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
      TabOrder = 0
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'HelveticaNeue'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object BtnCancelar: TcxButton
      Left = 0
      Top = 47
      Width = 106
      Height = 43
      Caption = 'Cancelar'#13'[F3]'
      Enabled = False
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
      TabOrder = 2
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'HelveticaNeue'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object BtnAlterar: TcxButton
      Left = 0
      Top = 95
      Width = 106
      Height = 42
      Caption = 'Alterar'#13'[F4]'
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
      TabOrder = 3
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'HelveticaNeue'
      Font.Style = [fsBold]
      Font.Quality = fqDraft
      ParentFont = False
    end
    object BtnExcluir: TcxButton
      Left = 0
      Top = 142
      Width = 106
      Height = 43
      Hint = 'Excluir cadastro.'
      Caption = 'Excluir'#13'[F5]'
      OptionsImage.Glyph.Data = {
        36100000424D3610000000000000360000002800000020000000200000000100
        2000000000000010000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000020000000A00000010000000090000000200000000000000000000
        00020000000A000000120000000C000000030000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        00020000000F0F0742921D0F7EEF0603347A0000000E00000002000000020000
        000F0804347C1D0F7EF00F084194000000120000000200000000000000000000
        0000000000010000000200000004000000060000000700000007000000070000
        0007000000070000000800000008000000080000000800000008000000080000
        0010120B47953233AFFF3648CCFF1D1EA5FF0603357E00000017000000170804
        35801F20A5FF3747CCFF2D2FAEFF120B46950000000B00000000000000000000
        0000000000020000000800000011000000180000001B0000001C0000001D0000
        001D0000001D0000001D0000001D0000001E0000001E0000001E0000001F0000
        002A281D8DF3596CD8FF3B51D3FF3A4FD2FF1E22A6FF0602358D0602358E2022
        A6FF3A50D3FF3A50D3FF4C5FD4FF291D8CF10000001000000000000000000000
        000100000004000000117E5E52C1AF8271FFAE8172FFAE8171FFAE8070FFAD80
        70FFAD7F70FFAC7F6FFFAC7E6EFFAB7E6DFFAB7D6DFFAB7D6CFFAE8271FFE1D4
        CFFF9389B4FF4D4FBAFF667EE0FF415AD6FF415AD7FF1F24A7FF2529A8FF415A
        D7FF415AD7FF5B72DEFF484AB8FF130F3C7A0000000900000000000000000000
        00010000000600000016B08374FFFDFCFAFFFBF8F6FFFBF8F5FFFBF7F5FFFBF7
        F4FFFAF7F4FFFBF6F3FFFBF6F3FFFAF5F2FFFAF5F1FFFAF4F1FFF9F4F1FFFAF7
        F4FFF3F2F1FFA19DC9FF585CC1FF758DE6FF4A64DBFF4A65DBFF4A65DBFF4A64
        DBFF6983E3FF5356C0FF16123F7C0000000D0000000200000000000000000000
        00010000000600000018B18576FFFDFCFBFFF6EEE8FFF6EEE8FFF6EEE8FFF6ED
        E7FFF6EDE7FFF5EDE6FFF5ECE6FFF6ECE6FFF5ECE5FFF5EBE5FFF5ECE5FFF4EC
        E5FFF7F1ECFFF2F0EEFFA19DC9FF5D63C7FF6783E5FF5774E2FF5774E2FF5774
        E2FF565CC6FF1916438A00000015000000030000000000000000000000000000
        00020000000600000018B38777FFFEFCFBFFF6EEE9FFF7EFE8FFF6EFE9FFF6EE
        E8FFF6EDE8FFF6EDE7FFF6EDE7FFF6EDE7FFF5ECE6FFF5EDE6FFF5ECE6FFF5EC
        E6FFF7F1ECFFF3F1EFFF9A97C5FF4A50BEFF7492EBFF6383E7FF6483E7FF6383
        E7FF3840B6FF0B093A8800000013000000030000000000000000000000000000
        00010000000500000016B58B7CFFFEFDFCFFF8F0EBFFF7EFEAFFF7EFEAFFF7EF
        EAFFF7EFEAFFF7EFE9FFF6EEE9FFF6EEE8FFF6EEE8FFF6EEE8FFF6EDE7FFF7F2
        EEFFF6F3F2FFA4A1CEFF555CC5FF85A1EFFF7897EDFF9CB6F4FF9DB7F5FF7997
        EEFF7796EDFF414ABCFF0E0C3C770000000B0000000100000000000000000000
        00010000000500000015B68C7EFFFEFDFCFFF7F1ECFFF7F1EBFFFAF4F0FFFAF4
        F0FFF9F3EFFFF8F4EFFFF8F3EFFFF9F3EFFFF8F3EEFFF8F2EEFFF8F2EEFFF9F7
        F6FFABAAD7FF636CCFFF93AFF3FF83A1F1FFA6BFF7FF676DCAFF7E87DDFFAFC7
        F8FF83A3F2FF83A1F1FF5058C4FF121140720000000600000000000000000000
        00000000000500000014B78E80FFFEFDFDFFF8F1EDFFF8F1ECFFBE9382FFBE93
        82FFBE9382FFBE9381FFBE9282FFBE9381FFBE9281FFBE9282FFBE9583FFE6DA
        D4FF6667D1FFAFC6F6FF8EADF4FFABC4F8FF6F76D0FFA6A4D2FFB1B0DBFF868E
        E1FFB5CCF9FF8DACF4FFA1B8F4FF5758C3EF0000000900000000000000000000
        00000000000500000013B88F82FFFEFDFDFFF8F2EEFFF8F1EDFFFAF5F2FFFAF5
        F1FFFAF5F1FFFAF5F1FFFAF5F0FFF9F4F0FFF9F4EFFFF9F4EFFFF8F3EFFFFAF8
        F7FFA9AAE2FF95A0EAFFC0D3F9FF7880D7FFAFAEDAFFF7F5F3FFF6F3F2FFB8B8
        E3FF8B93E6FFC1D3F9FF949EE9FF303168870000000500000000000000000000
        00000000000400000012BB9184FFFEFEFDFFF8F3EEFFF8F2EEFFC09584FFC095
        85FFC09485FFBF9584FFC09584FFC09583FFC09484FFBF9483FFC09585FFD7BD
        B3FFEBE0DCFFA7A3D8FF7073DBFFADA7D1FFEAE0DCFFF8F2EEFFF8F2EEFFF9F7
        F7FFAFAAD3FF5E62CBEE31326886000000080000000100000000000000000000
        00000000000400000011BB9485FFFEFEFDFFF9F4F0FFF9F3EFFFFBF6F2FFFBF6
        F2FFFBF5F2FFFAF5F2FFFAF5F2FFFAF5F1FFFAF5F1FFF9F5F1FFFAF4F0FFF9F4
        F0FFFBF8F6FFFBFAF8FFF9F7F6FFFBFAF8FFF9F6F3FFF7EEE9FFF6EEE8FFFBF8
        F6FFE4D7D2FF0000001C0000000A000000020000000000000000000000000000
        00000000000400000010BC9788FFFEFEFDFFF9F3F0FFF9F4EFFFC19887FFC197
        87FFC19787FFC19786FFC09787FFC19786FFC19786FFC19686FFC09686FFC096
        86FFC09686FFC19786FFC29786FFC19786FFB78A7AFFF6F0EAFFF7F0EAFFFBF7
        F4FFB58B7BFF0000001600000006000000010000000000000000000000000000
        0000000000040000000FBF988AFFFEFEFEFFFAF5F1FFF9F4F1FFFBF7F4FFFBF7
        F3FFFBF7F3FFFBF6F3FFFBF6F3FFFAF5F2FFFBF6F2FFFBF5F2FFFAF5F2FFFAF5
        F1FFFAF5F1FFF9F5F1FFF9F4F1FFFAF4F1FFFAF5F1FFF7F0EBFFF8F0EBFFFBF8
        F5FFB58A7AFF0000001500000005000000010000000000000000000000000000
        0000000000040000000EC0998BFFFEFEFEFFFAF5F2FFFAF5F1FFC39A8AFFC29A
        89FFC39A8AFFC29A89FFC39989FFC39989FFC29A89FFC29989FFC29889FFC398
        89FFC29988FFC29987FFC29888FFC29888FFB98E7BFFF7F0ECFFF8F0EBFFFBF8
        F6FFB58C7DFF0000001500000005000000010000000000000000000000000000
        0000000000030000000EC19C8DFFFFFEFEFFFBF6F3FFFAF6F2FFFBF8F5FFFBF8
        F5FFFBF8F5FFFBF7F5FFFBF7F4FFFBF7F4FFFBF6F3FFFBF6F4FFFAF6F3FFFBF6
        F3FFFAF5F2FFFAF5F2FFFAF5F2FFFAF5F2FFFAF5F2FFF8F1EDFFF8F1ECFFFBF9
        F7FFB78E7FFF0000001400000005000000010000000000000000000000000000
        0000000000030000000CC49F90FFFFFEFEFFFBF7F5FFFBF7F4FFC59D8DFFC49D
        8CFFC59C8CFFC49C8CFFC49D8CFFC49C8CFFC49C8BFFC49C8BFFC49B8BFFC39B
        8BFFC39B8BFFC49C8BFFC49B8BFFC49B8BFFBA907FFFF8F2EEFFF8F2EEFFFAF7
        F5FFB99283FF0000001200000004000000000000000000000000000000000000
        0000000000030000000BC4A192FFFFFFFEFFFBF7F5FFFBF8F5FFFCF9F8FFFBF9
        F7FFFBF9F7FFFBF8F6FFFBF8F6FFFBF8F5FFFBF8F5FFFBF8F5FFFBF8F5FFFBF8
        F5FFFBF7F5FFFBF8F4FFFBF7F4FFFBF6F4FFFBF6F3FFF9F3EFFFF7F1ECFFF9F4
        F3FFBB9284FF0000001100000004000000000000000000000000000000000000
        0000000000020000000AC6A294FFFFFFFEFFFCF8F6FFFBF8F5FFC7A190FFC7A0
        90FFC7A08FFFC6A090FFC69F90FFC79F8FFFC79F8FFFC79F8FFFC69E8FFFC69F
        8FFFC69F8EFFC69E8EFFC69E8EFFC69E8EFFBD9281FFF7F2EDFFF6EFEAFFF7F2
        EFFFBD9486FF0000001000000004000000000000000000000000000000000000
        00000000000200000009C8A495FFFFFFFFFFFCF9F6FFFBF9F6FFFDFBF8FFFCFA
        F8FFFCFAF8FFFCFAF8FFFCFAF8FFFBF9F7FFFCF9F7FFFCF9F7FFFCF9F6FFFBF8
        F6FFFBF8F5FFFBF8F6FFFBF8F5FFFBF7F4FFF9F5F2FFF5EFEAFFF3EAE6FFF3ED
        EAFFBD9888FF0000000F00000004000000000000000000000000000000000000
        00000000000200000008C8A597FFFFFFFFFFFCFAF8FFFCFAF7FFC9A394FFC9A3
        93FFC8A393FFC9A393FFC8A293FFC8A393FFC9A292FFC8A292FFC8A291FFC8A1
        92FFC7A192FFC7A291FFC8A191FFC7A191FFBF9685FFEFE4DFFFECE0DBFFECE1
        DDFFBF988AFF0000000E00000004000000000000000000000000000000000000
        00000000000200000008C9A698FFFFFFFFFFFCFAF9FFFCFAF8FFFDFBFAFFFDFB
        F9FFFDFBF9FFFDFBF9FFFCFBF8FFFCFAF8FFFDFAF8FFFCFAF8FFFBF8F7FFFBF8
        F6FFF6EFEAFFEFE3DEFFE7D9D2FFE2D3CBFFE1CFC8FFDFCCC4FFDCC8BFFFDCC9
        C2FFC19A8CFF0000000D00000003000000000000000000000000000000000000
        00000000000200000007CBA899FFFFFFFFFFFDFAF9FFFDFAF9FFCBA696FFCBA6
        96FFCAA696FFCBA696FFCBA696FFCAA596FFCAA596FFCAA595FFCAA595FFC29A
        89FFF0E7E1FFB89284FFAC7F6FFFAB7E6DFFAB7D6DFFAB7C6CFFAA7C6CFFD1B8
        AFFFC29D8DFF0000000A00000003000000000000000000000000000000000000
        00000000000100000006CBA99BFFFFFFFFFFFDFBFAFFFDFAFAFFFDFBFBFFFDFB
        FBFFFEFBFAFFFDFCFAFFFDFBFAFFFDFBF9FFFDFBF9FFFDFBF9FFFCFBF8FFFAF6
        F4FFEDE0DCFFB18676FFFFFFFFFFFFFEFEFFFFFDFCFFFEFCFAFFFCF9F7FFD1B7
        AEFF533C35860000000600000002000000000000000000000000000000000000
        00000000000100000005CBAA9DFFFFFFFFFFFDFBFAFFFDFBFAFFCCA999FFCCA9
        99FFCCA999FFCCA999FFCCA899FFCCA899FFCCA899FFCCA899FFCCA799FFC49D
        8DFFECE0DBFFB68D7DFFFFFEFEFFFEFBFAFFFDF9F7FFFCF6F3FFD4BAB0FF553F
        3886000000080000000300000001000000000000000000000000000000000000
        00000000000100000005CCAB9DFFFFFFFFFFFEFCFBFFFEFCFAFFFEFBFAFFFDFB
        FBFFFDFCFAFFFDFBFAFFFDFBF9FFFDFAF9FFFCFAF8FFFCFAF9FFFAF7F5FFF6F1
        EDFFEDE2DCFFBC9485FFFFFEFEFFFDF9F6FFFBF6F3FFD6BCB4FF58433B860000
        0008000000030000000100000000000000000000000000000000000000000000
        00000000000100000004CDAC9FFFFFFFFFFFFDFCFCFFFDFDFCFFFDFCFBFFFDFC
        FBFFFDFCFAFFFDFCFAFFFEFBFAFFFDFBF9FFFDFBF9FFFAF8F7FFF9F5F3FFF5EE
        ECFFECE2DDFFC19C8CFFFFFEFEFFFBF6F3FFD9C1B7FF5B463F85000000070000
        0003000000010000000000000000000000000000000000000000000000000000
        00000000000100000003CEAD9FFFFFFFFFFFFEFCFCFFFEFDFCFFFEFDFCFFFDFC
        FCFFFDFDFCFFFEFCFBFFFEFCFBFFFDFCFAFFFBF8F7FFF9F6F4FFF7F2EFFFF3EC
        E8FFEDE2DDFFC6A293FFFFFEFEFFDBC3BAFF5D49428400000006000000020000
        0001000000000000000000000000000000000000000000000000000000000000
        00000000000100000002CEADA0FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFBF9F9FFF9F6F4FFF6F1F0FFF2EC
        E9FFEEE3E0FFE5D4CEFFE0CCC4FF5F4D45830000000500000002000000010000
        0000000000000000000000000000000000000000000000000000000000000000
        00000000000000000001998076BECEAEA0FFCEADA0FFCEAE9FFFCEADA0FFCEAD
        9FFFCDAC9FFFCEACA0FFCDAC9FFFCDAC9FFFCCAC9EFFCCAB9EFFCCAA9DFFCCAB
        9CFFCBAA9CFFCBAA9CFF614F4882000000040000000200000001000000000000
        0000000000000000000000000000000000000000000000000000}
      TabOrder = 4
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'HelveticaNeue'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object cxButton6: TcxButton
      Left = 0
      Top = 199
      Width = 106
      Height = 45
      Caption = 'Imprimir'
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
      TabOrder = 5
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'Helvetica Neue'
      Font.Style = [fsBold]
      ParentFont = False
    end
  end
end
