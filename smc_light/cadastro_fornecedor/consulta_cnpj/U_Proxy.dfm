object F_Proxy: TF_Proxy
  Left = 0
  Top = 0
  BorderStyle = bsDialog
  Caption = 'Proxy'
  ClientHeight = 207
  ClientWidth = 235
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  Position = poScreenCenter
  OnClose = FormClose
  PixelsPerInch = 96
  TextHeight = 13
  object Label1: TLabel
    Left = 8
    Top = 8
    Width = 22
    Height = 13
    Caption = 'Host'
  end
  object Label2: TLabel
    Left = 8
    Top = 56
    Width = 26
    Height = 13
    Caption = 'Porta'
  end
  object Label3: TLabel
    Left = 8
    Top = 104
    Width = 36
    Height = 13
    Caption = 'Usu'#225'rio'
  end
  object Label4: TLabel
    Left = 8
    Top = 152
    Width = 30
    Height = 13
    Caption = 'Senha'
  end
  object EditHost: TEdit
    Left = 8
    Top = 27
    Width = 217
    Height = 21
    TabOrder = 0
  end
  object EditPorta: TEdit
    Left = 8
    Top = 75
    Width = 217
    Height = 21
    TabOrder = 1
  end
  object EditUsuario: TEdit
    Left = 8
    Top = 123
    Width = 217
    Height = 21
    TabOrder = 2
  end
  object EditSenha: TEdit
    Left = 8
    Top = 171
    Width = 217
    Height = 21
    TabOrder = 3
  end
end
