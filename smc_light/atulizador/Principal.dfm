object frmPrincipal: TfrmPrincipal
  Left = 0
  Top = 0
  Caption = 'Atualizador'
  ClientHeight = 305
  ClientWidth = 609
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  Position = poScreenCenter
  PixelsPerInch = 96
  TextHeight = 13
  object bAtualizar: TButton
    Left = 192
    Top = 112
    Width = 153
    Height = 57
    Caption = '&Atualizar Banco de Dados'
    TabOrder = 0
    OnClick = bAtualizarClick
  end
  object MySQLDriver: TFDPhysMySQLDriverLink
    Left = 400
    Top = 88
  end
  object FDGUIxWaitCursor1: TFDGUIxWaitCursor
    Provider = 'Forms'
    ScreenCursor = gcrAppWait
    Left = 400
    Top = 208
  end
  object FdBaseDados: TFDConnection
    Params.Strings = (
      'Database=smc_automacao'
      'User_Name=root'
      'Password=1234'
      'CharacterSet=utf8'
      'Server=127.0.0.1'
      'DriverID=MySQL')
    LoginPrompt = False
    Left = 536
    Top = 128
  end
  object Query1: TFDQuery
    Connection = FdBaseDados
    SQL.Strings = (
      'select * from agenda_compromissos')
    Left = 400
    Top = 152
  end
end
