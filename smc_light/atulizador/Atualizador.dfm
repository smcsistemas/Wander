object frmAtualizador: TfrmAtualizador
  Left = 0
  Top = 0
  Caption = 'Atualizador'
  ClientHeight = 411
  ClientWidth = 756
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  Position = poScreenCenter
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 13
  object bAtualizar: TButton
    Left = 17
    Top = 8
    Width = 153
    Height = 57
    Caption = '&Atualizar Banco de Dados'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'Tahoma'
    Font.Style = [fsBold]
    ParentFont = False
    TabOrder = 0
    OnClick = bAtualizarClick
  end
  object mmExecutado: TMemo
    Left = 8
    Top = 71
    Width = 740
    Height = 324
    ReadOnly = True
    TabOrder = 1
  end
  object Button1: TButton
    Left = 595
    Top = 8
    Width = 153
    Height = 57
    Caption = '&Sair'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'Tahoma'
    Font.Style = [fsBold]
    ParentFont = False
    TabOrder = 2
    OnClick = Button1Click
  end
  object ProgressBar1: TProgressBar
    Left = 0
    Top = 394
    Width = 756
    Height = 17
    Align = alBottom
    BarColor = clHotLight
    TabOrder = 3
  end
end
