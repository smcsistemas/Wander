object frm_cad_cesta: Tfrm_cad_cesta
  Left = 0
  Top = 0
  BorderIcons = [biSystemMenu]
  BorderStyle = bsSingle
  Caption = 'Cadastro | Cesta'
  ClientHeight = 625
  ClientWidth = 986
  Color = clBtnFace
  DefaultMonitor = dmMainForm
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  Position = poMainFormCenter
  PixelsPerInch = 96
  TextHeight = 13
  object GroupBox10: TGroupBox
    Left = 8
    Top = 8
    Width = 964
    Height = 602
    Caption = '  Cesta B'#225'sica  '
    Color = clBtnFace
    Font.Charset = ANSI_CHARSET
    Font.Color = clWindowText
    Font.Height = -15
    Font.Name = 'Tahoma'
    Font.Style = [fsBold]
    ParentBackground = False
    ParentColor = False
    ParentFont = False
    TabOrder = 0
    object Label44: TLabel
      Left = 859
      Top = 22
      Width = 86
      Height = 18
      Caption = 'Quantidade'
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -15
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object Label45: TLabel
      Left = 69
      Top = 22
      Width = 137
      Height = 18
      Caption = 'Descri'#231#227'o Produto'
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -15
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object Label47: TLabel
      Left = 12
      Top = 22
      Width = 33
      Height = 18
      Caption = 'C'#243'd.'
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -15
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object Label43: TLabel
      Left = 408
      Top = 568
      Width = 89
      Height = 18
      Caption = 'Custo Total:'
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -15
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object DBGrid7: TDBGrid
      Left = 12
      Top = 73
      Width = 941
      Height = 472
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -15
      Font.Name = 'Helvetica Neue'
      Font.Style = [fsBold]
      ParentFont = False
      TabOrder = 3
      TitleFont.Charset = ANSI_CHARSET
      TitleFont.Color = clWindowText
      TitleFont.Height = -11
      TitleFont.Name = 'Helvetica Neue'
      TitleFont.Style = [fsBold]
      Columns = <
        item
          Expanded = False
          Title.Caption = 'C'#243'digo'
          Title.Font.Charset = ANSI_CHARSET
          Title.Font.Color = clWindowText
          Title.Font.Height = -15
          Title.Font.Name = 'Helvetica Neue'
          Title.Font.Style = [fsBold]
          Width = 48
          Visible = True
        end
        item
          Expanded = False
          Title.Caption = 'Descri'#231#227'o'
          Title.Font.Charset = ANSI_CHARSET
          Title.Font.Color = clWindowText
          Title.Font.Height = -15
          Title.Font.Name = 'Helvetica Neue'
          Title.Font.Style = [fsBold]
          Width = 652
          Visible = True
        end
        item
          Expanded = False
          Title.Caption = 'Quant.'
          Title.Font.Charset = ANSI_CHARSET
          Title.Font.Color = clWindowText
          Title.Font.Height = -15
          Title.Font.Name = 'Helvetica Neue'
          Title.Font.Style = [fsBold]
          Width = 56
          Visible = True
        end
        item
          Expanded = False
          Title.Caption = 'Pre'#231'o'
          Title.Font.Charset = ANSI_CHARSET
          Title.Font.Color = clWindowText
          Title.Font.Height = -15
          Title.Font.Name = 'Helvetica Neue'
          Title.Font.Style = [fsBold]
          Width = 74
          Visible = True
        end
        item
          Expanded = False
          Title.Caption = 'Sub-Total'
          Title.Font.Charset = ANSI_CHARSET
          Title.Font.Color = clWindowText
          Title.Font.Height = -15
          Title.Font.Name = 'Helvetica Neue'
          Title.Font.Style = [fsBold]
          Width = 90
          Visible = True
        end>
    end
    object cxButton10: TcxButton
      Left = 12
      Top = 564
      Width = 102
      Height = 26
      Caption = 'Gravar'
      LookAndFeel.NativeStyle = False
      LookAndFeel.SkinName = 'Office2013White'
      OptionsImage.Glyph.Data = {
        36040000424D3604000000000000360000002800000010000000100000000100
        2000000000000004000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000007E4C
        69B7AF6A93FFAF6A93FFAF6A93FFAF6A93FFAF6A93FFAF6A93FFAF6A93FFAF6A
        93FFAF6A93FFAF6A93FFAF6A93FFAF6A93FF7E4C69B70000000000000000AF6A
        93FFAF6A93FFAF6A93FFAF6A93FFAF6A93FFAF6A93FFAF6A93FFAF6A93FFAF6A
        93FFAF6A93FFAF6A93FFAF6A93FFAF6A93FFAF6A93FF0000000000000000AF6A
        93FFAF6A93FF0000000000000000000000000000000000000000000000000000
        0000000000000000000000000000AF6A93FFAF6A93FF0000000000000000AF6A
        93FFAF6A93FF0000000000000000000000000000000000000000000000000000
        0000000000000000000000000000AF6A93FFAF6A93FF0000000000000000AF6A
        93FFAF6A93FF0000000000000000000000000000000000000000000000000000
        0000000000000000000000000000AF6A93FFAF6A93FF0000000000000000AF6A
        93FFAF6A93FF0000000000000000000000000000000000000000000000000000
        0000000000000000000000000000AF6A93FFAF6A93FF0000000000000000AF6A
        93FFAF6A93FF0000000000000000000000000000000000000000000000000000
        0000000000000000000000000000AF6A93FFAF6A93FF0000000000000000AF6A
        93FFAF6A93FFAF6A93FFAF6A93FFAF6A93FFAF6A93FFAF6A93FFAF6A93FFAF6A
        93FFAF6A93FFAF6A93FFAF6A93FFAF6A93FFAF6A93FF0000000000000000AF6A
        93FFAF6A93FFAF6A93FFAF6A93FFAF6A93FFAF6A93FFAF6A93FFAF6A93FFAF6A
        93FFAF6A93FFAF6A93FFAF6A93FFAF6A93FFAF6A93FF0000000000000000AF6A
        93FFAF6A93FFAF6A93FF00000000000000000000000000000000000000000000
        00000000000000000000AF6A93FFAF6A93FFAF6A93FF0000000000000000AF6A
        93FFAF6A93FFAF6A93FF00000000AF6A93FFAF6A93FFAF6A93FFAF6A93FFAF6A
        93FFAF6A93FF00000000AF6A93FFAF6A93FFAF6A93FF0000000000000000AF6A
        93FFAF6A93FFAF6A93FF00000000AF6A93FFAF6A93FFAF6A93FFAF6A93FF0000
        0000AF6A93FF00000000AF6A93FFAF6A93FFAF6A93FF0000000000000000AF6A
        93FFAF6A93FFAF6A93FF00000000AF6A93FFAF6A93FFAF6A93FFAF6A93FF0000
        0000AF6A93FF00000000AF6A93FFAF6A93FFAF6A93FF0000000000000000824F
        6DBDAF6A93FFAF6A93FF00000000AF6A93FFAF6A93FFAF6A93FFAF6A93FFAF6A
        93FFAF6A93FF00000000AF6A93FFAF6A93FF824F6DBD00000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000}
      TabOrder = 4
    end
    object DBEdit2: TDBEdit
      Left = 12
      Top = 43
      Width = 43
      Height = 26
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -15
      Font.Name = 'Helvetica Neue'
      Font.Style = [fsBold]
      ParentFont = False
      TabOrder = 0
    end
    object DBEdit8: TDBEdit
      Left = 69
      Top = 43
      Width = 775
      Height = 26
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -15
      Font.Name = 'Helvetica Neue'
      Font.Style = [fsBold]
      ParentFont = False
      TabOrder = 1
    end
    object DBEdit11: TDBEdit
      Left = 859
      Top = 43
      Width = 94
      Height = 26
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -15
      Font.Name = 'Helvetica Neue'
      Font.Style = [fsBold]
      ParentFont = False
      TabOrder = 2
    end
    object Edit1: TEdit
      Left = 503
      Top = 564
      Width = 121
      Height = 26
      TabOrder = 6
      Text = 'Edit1'
    end
    object cxButton9: TcxButton
      Left = 132
      Top = 564
      Width = 102
      Height = 26
      Caption = 'Alterar'
      LookAndFeel.NativeStyle = False
      LookAndFeel.SkinName = 'Office2013White'
      OptionsImage.Glyph.Data = {
        36040000424D3604000000000000360000002800000010000000100000000100
        2000000000000004000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000B8824DFFB882
        4DFFB8824DFF251A0F3300000000000000000000000000000000000000000000
        0000848484FF848484FF848484FF848484FF848484FFFFFFFFFFB8824DFFB882
        4DFFF1E6DBFFB8824DFF251A0F33000000000000000000000000000000000000
        0000848484FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFB8824DFFF1E6
        DBFFB8824DFFB8824DFFB8824DFF251A0F330000000000000000000000000000
        0000848484FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF1E6DBFFB882
        4DFFB8824DFFB8824DFFB8824DFFB8824DFF251A0F3300000000000000000000
        0000848484FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF1E6
        DBFFB8824DFFB8824DFFB8824DFFB8824DFFB8824DFF251A0F33000000000000
        0000848484FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFF1E6DBFFB8824DFFB8824DFFB8824DFF251A0F33B8824DFF000000000000
        0000848484FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFF1E6DBFFB8824DFFF1E6DBFFB8824DFFB8824DFF000000000000
        0000848484FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFF1E6DBFFB8824DFFB8824DFF251A0F33000000000000
        0000848484FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF0000000000000000000000000000
        0000848484FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFF848484FF0000000000000000000000000000
        0000848484FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFF848484FF0000000000000000000000000000
        0000848484FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFF848484FF848484FF848484FF848484FF0000000000000000000000000000
        0000848484FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFF848484FFFAFAFAFA7B7B7BDD1A1A1A330000000000000000000000000000
        0000848484FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFF848484FF7B7B7BDD1A1A1A33000000000000000000000000000000000000
        0000848484FF848484FF848484FF848484FF848484FF848484FF848484FF8383
        83FE848484FF1A1A1A3300000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000}
      TabOrder = 5
    end
  end
end
