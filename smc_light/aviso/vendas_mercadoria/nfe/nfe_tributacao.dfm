object frm_nfe_tributacao: Tfrm_nfe_tributacao
  Left = 0
  Top = 0
  BorderIcons = [biSystemMenu]
  BorderStyle = bsSingle
  Caption = 'NF-e | Tributa'#231#227'o'
  ClientHeight = 548
  ClientWidth = 951
  Color = clWindow
  DefaultMonitor = dmMainForm
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -15
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  Position = poMainFormCenter
  OnClose = FormClose
  PixelsPerInch = 96
  TextHeight = 18
  object Label27: TLabel
    Left = 27
    Top = 71
    Width = 83
    Height = 19
    Caption = 'Valor Frete:'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -16
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentFont = False
  end
  object Label23: TLabel
    Left = 27
    Top = 18
    Width = 119
    Height = 19
    Caption = 'Base C'#225'lc. ICMS:'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -16
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentFont = False
  end
  object Label8: TLabel
    Left = 168
    Top = 18
    Width = 85
    Height = 19
    Caption = 'Valor ICMS:'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -16
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentFont = False
  end
  object Label30: TLabel
    Left = 168
    Top = 71
    Width = 104
    Height = 19
    Caption = 'Valor Serguro:'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -16
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentFont = False
  end
  object Label31: TLabel
    Left = 316
    Top = 71
    Width = 141
    Height = 19
    Caption = 'Outras Desp. Aces.:'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -16
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentFont = False
  end
  object Label12: TLabel
    Left = 316
    Top = 18
    Width = 121
    Height = 19
    Caption = 'Base C'#225'lc. Subst:'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -16
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentFont = False
  end
  object Label19: TLabel
    Left = 476
    Top = 18
    Width = 111
    Height = 19
    Caption = 'V.  ICMS Subst.'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -16
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentFont = False
  end
  object Label32: TLabel
    Left = 476
    Top = 71
    Width = 52
    Height = 19
    Caption = 'V.  IPI:'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -16
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentFont = False
  end
  object Label20: TLabel
    Left = 633
    Top = 71
    Width = 132
    Height = 19
    Caption = 'Dedu'#231#227'o do ICMS:'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -16
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentFont = False
  end
  object Label17: TLabel
    Left = 633
    Top = 18
    Width = 124
    Height = 19
    Caption = 'V. Total Produtos'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -16
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentFont = False
  end
  object Label16: TLabel
    Left = 805
    Top = 18
    Width = 113
    Height = 19
    Caption = 'Total Descontos'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -16
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentFont = False
  end
  object Label33: TLabel
    Left = 818
    Top = 71
    Width = 100
    Height = 19
    Caption = 'V. Total Nota:'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -16
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentFont = False
  end
  object cxGroupBox10: TcxGroupBox
    Left = 27
    Top = 140
    Caption = '  Tributa'#231#227'o ICMS  '
    TabOrder = 0
    Height = 132
    Width = 480
    object Label53: TLabel
      Left = 59
      Top = 26
      Width = 86
      Height = 18
      Caption = 'Base C'#225'lculo:'
    end
    object Label54: TLabel
      Left = 324
      Top = 26
      Width = 40
      Height = 18
      Caption = 'ICMS:'
    end
    object Label55: TLabel
      Left = 274
      Top = 62
      Width = 85
      Height = 18
      Caption = 'ICMS Retido:'
    end
    object Label56: TLabel
      Left = 9
      Top = 62
      Width = 132
      Height = 18
      Caption = 'B Cal. Subts. Tribu.:'
    end
    object Label57: TLabel
      Left = 29
      Top = 98
      Width = 116
      Height = 18
      Caption = 'Redu'#231#227'o B. Calc.:'
    end
    object DBEdit51: TDBEdit
      Left = 160
      Top = 22
      Width = 88
      Height = 27
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -16
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentFont = False
      TabOrder = 0
    end
    object DBEdit52: TDBEdit
      Left = 371
      Top = 22
      Width = 88
      Height = 27
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -16
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentFont = False
      TabOrder = 1
    end
    object DBEdit53: TDBEdit
      Left = 371
      Top = 58
      Width = 88
      Height = 27
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -16
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentFont = False
      TabOrder = 2
    end
    object DBEdit54: TDBEdit
      Left = 160
      Top = 58
      Width = 88
      Height = 27
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -16
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentFont = False
      TabOrder = 3
    end
    object DBEdit55: TDBEdit
      Left = 160
      Top = 95
      Width = 88
      Height = 27
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -16
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentFont = False
      TabOrder = 4
    end
  end
  object cxGroupBox16: TcxGroupBox
    Left = 31
    Top = 296
    Caption = '  IPI  '
    TabOrder = 1
    Height = 55
    Width = 480
    object Label69: TLabel
      Left = 59
      Top = 22
      Width = 86
      Height = 18
      Caption = 'Base C'#225'lculo:'
    end
    object Label70: TLabel
      Left = 337
      Top = 22
      Width = 25
      Height = 18
      Caption = 'IPI:'
    end
    object DBEdit67: TDBEdit
      Left = 160
      Top = 18
      Width = 88
      Height = 27
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -16
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentFont = False
      TabOrder = 0
    end
    object DBEdit68: TDBEdit
      Left = 371
      Top = 18
      Width = 88
      Height = 27
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -16
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentFont = False
      TabOrder = 1
    end
  end
  object cxGroupBox14: TcxGroupBox
    Left = 31
    Top = 389
    Caption = '  COFINS  '
    TabOrder = 2
    Height = 55
    Width = 480
    object Label65: TLabel
      Left = 59
      Top = 23
      Width = 86
      Height = 18
      Caption = 'Base C'#225'lculo:'
    end
    object Label66: TLabel
      Left = 302
      Top = 23
      Width = 57
      Height = 18
      Caption = 'COFINS:'
    end
    object DBEdit63: TDBEdit
      Left = 160
      Top = 19
      Width = 88
      Height = 27
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -16
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentFont = False
      TabOrder = 0
    end
    object DBEdit64: TDBEdit
      Left = 371
      Top = 19
      Width = 88
      Height = 27
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -16
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentFont = False
      TabOrder = 1
    end
  end
  object cxGroupBox15: TcxGroupBox
    Left = 33
    Top = 466
    Caption = '  COFINS  Substitui'#231#227'o  '
    TabOrder = 3
    Height = 55
    Width = 478
    object Label67: TLabel
      Left = 39
      Top = 27
      Width = 86
      Height = 18
      Caption = 'Base C'#225'lculo:'
    end
    object Label68: TLabel
      Left = 250
      Top = 27
      Width = 102
      Height = 18
      Caption = 'COFINS Retido:'
    end
    object DBEdit65: TDBEdit
      Left = 144
      Top = 23
      Width = 84
      Height = 27
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -16
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentFont = False
      TabOrder = 0
    end
    object DBEdit66: TDBEdit
      Left = 371
      Top = 23
      Width = 88
      Height = 27
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -16
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentFont = False
      TabOrder = 1
    end
  end
  object cxGroupBox13: TcxGroupBox
    Left = 517
    Top = 398
    Caption = '  PIS  Substitui'#231#227'o  '
    TabOrder = 4
    Height = 55
    Width = 426
    object Label63: TLabel
      Left = 24
      Top = 24
      Width = 86
      Height = 18
      Caption = 'Base C'#225'lculo:'
    end
    object Label64: TLabel
      Left = 236
      Top = 24
      Width = 72
      Height = 18
      Caption = 'PIS Retido:'
    end
    object DBEdit61: TDBEdit
      Left = 128
      Top = 20
      Width = 88
      Height = 27
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -16
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentFont = False
      TabOrder = 0
    end
    object DBEdit62: TDBEdit
      Left = 323
      Top = 20
      Width = 88
      Height = 27
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -16
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentFont = False
      TabOrder = 1
    end
  end
  object cxGroupBox12: TcxGroupBox
    Left = 517
    Top = 305
    Caption = '  PIS   '
    TabOrder = 5
    Height = 55
    Width = 426
    object Label60: TLabel
      Left = 24
      Top = 23
      Width = 86
      Height = 18
      Caption = 'Base C'#225'lculo:'
    end
    object Label62: TLabel
      Left = 286
      Top = 23
      Width = 27
      Height = 18
      Caption = 'PIS:'
    end
    object DBEdit58: TDBEdit
      Left = 128
      Top = 19
      Width = 88
      Height = 27
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -16
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentFont = False
      TabOrder = 0
    end
    object DBEdit60: TDBEdit
      Left = 323
      Top = 19
      Width = 88
      Height = 27
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -16
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentFont = False
      TabOrder = 1
    end
  end
  object cxGroupBox11: TcxGroupBox
    Left = 517
    Top = 140
    Caption = '  Total Partilha de ICMS  '
    TabOrder = 6
    Height = 132
    Width = 426
    object Label58: TLabel
      Left = 43
      Top = 25
      Width = 253
      Height = 18
      Caption = 'ICMS Fundo Comb. Pobreza UF Dest.:'
    end
    object Label59: TLabel
      Left = 40
      Top = 62
      Width = 257
      Height = 18
      Caption = 'V. ICMS Interstaduas para UF Destino:'
    end
    object Label61: TLabel
      Left = 18
      Top = 99
      Width = 281
      Height = 18
      Caption = 'V. ICMS Interstaduas para UF Remetente:'
    end
    object DBEdit56: TDBEdit
      Left = 323
      Top = 22
      Width = 88
      Height = 27
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -16
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentFont = False
      TabOrder = 0
    end
    object DBEdit57: TDBEdit
      Left = 323
      Top = 58
      Width = 88
      Height = 27
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -16
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentFont = False
      TabOrder = 1
    end
    object DBEdit59: TDBEdit
      Left = 323
      Top = 95
      Width = 88
      Height = 27
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -16
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentFont = False
      TabOrder = 2
    end
  end
  object DBEdit27: TDBEdit
    Left = 27
    Top = 94
    Width = 93
    Height = 27
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -16
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentFont = False
    TabOrder = 7
  end
  object DBEdit9: TDBEdit
    Left = 27
    Top = 41
    Width = 93
    Height = 27
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -16
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentFont = False
    TabOrder = 8
  end
  object DBEdit13: TDBEdit
    Left = 168
    Top = 41
    Width = 93
    Height = 27
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -16
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentFont = False
    TabOrder = 9
  end
  object DBEdit28: TDBEdit
    Left = 168
    Top = 94
    Width = 93
    Height = 27
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -16
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentFont = False
    TabOrder = 10
  end
  object DBEdit29: TDBEdit
    Left = 316
    Top = 94
    Width = 93
    Height = 27
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -16
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentFont = False
    TabOrder = 11
  end
  object DBEdit17: TDBEdit
    Left = 316
    Top = 41
    Width = 93
    Height = 27
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -16
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentFont = False
    TabOrder = 12
  end
  object DBEdit25: TDBEdit
    Left = 476
    Top = 41
    Width = 93
    Height = 27
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -16
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentFont = False
    TabOrder = 13
  end
  object DBEdit30: TDBEdit
    Left = 476
    Top = 94
    Width = 93
    Height = 27
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -16
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentFont = False
    TabOrder = 14
  end
  object DBEdit26: TDBEdit
    Left = 633
    Top = 94
    Width = 93
    Height = 27
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -16
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentFont = False
    TabOrder = 15
  end
  object DBEdit24: TDBEdit
    Left = 633
    Top = 41
    Width = 93
    Height = 27
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -16
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentFont = False
    TabOrder = 16
  end
  object DBEdit18: TDBEdit
    Left = 825
    Top = 41
    Width = 93
    Height = 27
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -16
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentFont = False
    TabOrder = 17
  end
  object DBEdit31: TDBEdit
    Left = 825
    Top = 94
    Width = 93
    Height = 27
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -16
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentFont = False
    TabOrder = 18
  end
end
