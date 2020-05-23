object frmAcessos: TfrmAcessos
  Left = 7
  Top = 67
  AutoSize = True
  BorderIcons = [biSystemMenu]
  BorderStyle = bsSingle
  Caption = 'Acessos'
  ClientHeight = 651
  ClientWidth = 972
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -10
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  KeyPreview = True
  OldCreateOrder = False
  Position = poScreenCenter
  OnKeyPress = FormKeyPress
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 13
  object Label1: TLabel
    Left = 179
    Top = 3
    Width = 55
    Height = 16
    Caption = 'Usu'#225'rio'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -13
    Font.Name = 'MS Sans Serif'
    Font.Style = [fsBold]
    ParentFont = False
  end
  object Label2: TLabel
    Left = 173
    Top = 32
    Width = 60
    Height = 16
    Caption = 'Fun'#231#245'es'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -13
    Font.Name = 'MS Sans Serif'
    Font.Style = [fsBold]
    ParentFont = False
  end
  object rgFuncoes: TRadioGroup
    Left = 235
    Top = 20
    Width = 247
    Height = 37
    Columns = 3
    ItemIndex = 0
    Items.Strings = (
      'Todas'
      'Permiss'#245'es'
      'Restri'#231#245'es')
    TabOrder = 9
    OnClick = FormShow
  end
  object edt_colaborador: TEdit
    Left = 235
    Top = 1
    Width = 103
    Height = 24
    CharCase = ecUpperCase
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -13
    Font.Name = 'MS Sans Serif'
    Font.Style = [fsBold]
    MaxLength = 10
    ParentFont = False
    TabOrder = 0
    OnExit = edt_colaboradorExit
  end
  object Panel1: TPanel
    Left = 0
    Top = 590
    Width = 964
    Height = 42
    TabOrder = 1
    object bConfirma: TBitBtn
      Left = 235
      Top = 7
      Width = 99
      Height = 32
      Caption = '&Confirmar'
      Enabled = False
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      Glyph.Data = {
        76010000424D7601000000000000760000002800000020000000100000000100
        04000000000000010000120B0000120B00001000000000000000000000000000
        800000800000008080008000000080008000808000007F7F7F00BFBFBF000000
        FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00555555555555
        555555555555555555555555555555555555555555FF55555555555559055555
        55555555577FF5555555555599905555555555557777F5555555555599905555
        555555557777FF5555555559999905555555555777777F555555559999990555
        5555557777777FF5555557990599905555555777757777F55555790555599055
        55557775555777FF5555555555599905555555555557777F5555555555559905
        555555555555777FF5555555555559905555555555555777FF55555555555579
        05555555555555777FF5555555555557905555555555555777FF555555555555
        5990555555555555577755555555555555555555555555555555}
      NumGlyphs = 2
      ParentFont = False
      TabOrder = 0
      OnClick = bConfirmaClick
    end
    object bImprime: TBitBtn
      Left = 336
      Top = 7
      Width = 99
      Height = 32
      Caption = '&Imprimir'
      Enabled = False
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      Glyph.Data = {
        76010000424D7601000000000000760000002800000020000000100000000100
        04000000000000010000130B0000130B00001000000000000000000000000000
        800000800000008080008000000080008000808000007F7F7F00BFBFBF000000
        FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00300000000000
        00033FFFFFFFFFFFFFFF0888888888888880777777777777777F088888888888
        8880777777777777777F0000000000000000FFFFFFFFFFFFFFFF0F8F8F8F8F8F
        8F80777777777777777F08F8F8F8F8F8F9F0777777777777777F0F8F8F8F8F8F
        8F807777777777777F7F0000000000000000777777777777777F3330FFFFFFFF
        03333337F3FFFF3F7F333330F0000F0F03333337F77773737F333330FFFFFFFF
        03333337F3FF3FFF7F333330F00F000003333337F773777773333330FFFF0FF0
        33333337F3FF7F3733333330F08F0F0333333337F7737F7333333330FFFF0033
        33333337FFFF7733333333300000033333333337777773333333}
      NumGlyphs = 2
      ParentFont = False
      TabOrder = 1
    end
  end
  object Edit2: TEdit
    Left = 339
    Top = 1
    Width = 391
    Height = 24
    Color = 8421440
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWhite
    Font.Height = -13
    Font.Name = 'MS Sans Serif'
    Font.Style = [fsBold]
    MaxLength = 40
    ParentFont = False
    ReadOnly = True
    TabOrder = 2
  end
  object CheckListBox1: TCheckListBox
    Left = 8
    Top = 63
    Width = 964
    Height = 530
    Color = 8421440
    Columns = 3
    Enabled = False
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWhite
    Font.Height = -9
    Font.Name = 'MS Sans Serif'
    Font.Style = []
    ItemHeight = 13
    ParentFont = False
    TabOrder = 3
    OnClick = CheckListBox1Click
  end
  object CheckListBox2: TCheckListBox
    Left = 189
    Top = 127
    Width = 247
    Height = 74
    Color = 8454143
    Columns = 5
    Enabled = False
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -9
    Font.Name = 'MS Sans Serif'
    Font.Style = []
    ItemHeight = 13
    Items.Strings = (
      'invisivel'
      'auxiliar')
    ParentFont = False
    TabOrder = 4
    Visible = False
  end
  object Button1: TButton
    Left = 813
    Top = 0
    Width = 150
    Height = 29
    Caption = 'Marcar Todos'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -9
    Font.Name = 'MS Sans Serif'
    Font.Style = [fsBold]
    ParentFont = False
    TabOrder = 5
    OnClick = Button1Click
  end
  object Button2: TButton
    Left = 813
    Top = 28
    Width = 150
    Height = 29
    Caption = 'Desmarcar Todos'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -9
    Font.Name = 'MS Sans Serif'
    Font.Style = [fsBold]
    ParentFont = False
    TabOrder = 6
    OnClick = Button2Click
  end
  object ProgressBar1: TProgressBar
    Left = 2
    Top = 634
    Width = 959
    Height = 17
    TabOrder = 7
  end
  object rgOrdem: TRadioGroup
    Left = 0
    Top = 0
    Width = 130
    Height = 62
    Caption = 'Fun'#231#245'es em Ordem de'
    ItemIndex = 0
    Items.Strings = (
      'C'#243'digo'
      'Descri'#231#227'o')
    TabOrder = 8
    OnClick = FormShow
  end
  object CheckListBox3: TCheckListBox
    Left = 437
    Top = 127
    Width = 247
    Height = 74
    Color = 8454143
    Columns = 5
    Enabled = False
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -9
    Font.Name = 'MS Sans Serif'
    Font.Style = []
    ItemHeight = 13
    Items.Strings = (
      'invisivel'
      'auxiliar')
    ParentFont = False
    TabOrder = 10
    Visible = False
  end
end
