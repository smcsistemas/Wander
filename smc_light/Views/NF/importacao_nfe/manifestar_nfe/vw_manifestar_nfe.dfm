object frm_manifestar_nfe: Tfrm_manifestar_nfe
  Left = 0
  Top = 0
  BorderIcons = [biSystemMenu]
  BorderStyle = bsSingle
  Caption = 'Manifestar NF-e'
  ClientHeight = 306
  ClientWidth = 433
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
  object Label1: TLabel
    Left = 5
    Top = 16
    Width = 45
    Height = 16
    Caption = 'Evento'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -13
    Font.Name = 'Tahoma'
    Font.Style = [fsBold]
    ParentFont = False
  end
  object Label2: TLabel
    Left = 4
    Top = 76
    Width = 84
    Height = 16
    Caption = 'Observa'#231#245'es'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -13
    Font.Name = 'Tahoma'
    Font.Style = [fsBold]
    ParentFont = False
  end
  object cb_cod_man: TcxComboBox
    Left = 5
    Top = 33
    ParentFont = False
    Properties.Alignment.Horz = taLeftJustify
    Properties.DropDownListStyle = lsFixedList
    Properties.Items.Strings = (
      '1 - Ci'#234'ncia da Emiss'#227'o'
      '2 - Confirma'#231#227'o da Opera'#231#227'o'
      '3 - Opera'#231#227'o n'#227'o Realizada'
      '4 - Desconhecimento da Opera'#231#227'o')
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
    Text = '1 - Ci'#234'ncia da Emiss'#227'o'
    Width = 423
  end
  object mmObs: TcxMemo
    Left = 5
    Top = 96
    TabOrder = 1
    Height = 161
    Width = 423
  end
  object btn_confirmar: TcxButton
    Left = 226
    Top = 266
    Width = 81
    Height = 32
    Caption = 'Confirmar'
    Colors.Default = clGreen
    Colors.DefaultText = clWhite
    Colors.Normal = clGreen
    Colors.NormalText = clWhite
    Colors.Hot = 6538752
    Colors.HotText = clWhite
    Colors.Pressed = 16384
    Colors.PressedText = clGray
    LookAndFeel.NativeStyle = False
    TabOrder = 2
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -12
    Font.Name = 'Tahoma'
    Font.Style = [fsBold]
    ParentFont = False
    OnClick = btn_confirmarClick
  end
  object btn_cancelar: TcxButton
    Left = 129
    Top = 266
    Width = 81
    Height = 32
    Caption = 'Cancelar'
    Colors.Default = clRed
    Colors.DefaultText = clWhite
    Colors.Normal = clRed
    Colors.NormalText = clWhite
    Colors.Hot = 7434751
    Colors.HotText = clWhite
    Colors.Pressed = clMaroon
    Colors.PressedText = clGray
    LookAndFeel.NativeStyle = False
    TabOrder = 3
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -12
    Font.Name = 'Tahoma'
    Font.Style = [fsBold]
    ParentFont = False
    OnClick = btn_cancelarClick
  end
end
