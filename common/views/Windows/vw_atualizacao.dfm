object frm_atualizacao: Tfrm_atualizacao
  Left = 0
  Top = 0
  BorderIcons = []
  BorderStyle = bsNone
  ClientHeight = 610
  ClientWidth = 761
  Color = 12089098
  DefaultMonitor = dmMainForm
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  Position = poMainFormCenter
  OnClick = FormClick
  PixelsPerInch = 96
  TextHeight = 13
  object lblUpdateFooter: TLabel
    Left = 8
    Top = 590
    Width = 298
    Height = 15
    Align = alCustom
    BiDiMode = bdLeftToRight
    Caption = 'Tudo estar'#225' pronto em breve! Por gentileza aguarde ...'
    Color = clBlack
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWhite
    Font.Height = -12
    Font.Name = 'HELVEITICA NEUE'
    Font.Style = [fsItalic]
    ParentBiDiMode = False
    ParentColor = False
    ParentFont = False
    Layout = tlCenter
  end
  object lblPercent: TLabel
    Left = 8
    Top = 555
    Width = 45
    Height = 18
    Align = alCustom
    BiDiMode = bdLeftToRight
    Caption = '100 %'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWhite
    Font.Height = -16
    Font.Name = 'HELVEITICA NEUE'
    Font.Style = [fsBold, fsItalic]
    ParentBiDiMode = False
    ParentFont = False
    Layout = tlCenter
  end
  object lblTransfer: TLabel
    Left = 602
    Top = 555
    Width = 151
    Height = 16
    Align = alCustom
    Alignment = taRightJustify
    BiDiMode = bdLeftToRight
    Caption = '( 50,00 Mb de 50,00 Mb )'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWhite
    Font.Height = -13
    Font.Name = 'HELVEITICA NEUE'
    Font.Style = [fsBold, fsItalic]
    ParentBiDiMode = False
    ParentFont = False
    Layout = tlCenter
  end
  object wbInfo: TWebBrowser
    Left = 8
    Top = 8
    Width = 745
    Height = 540
    ParentCustomHint = False
    ParentShowHint = False
    ShowHint = False
    TabOrder = 0
    ControlData = {
      4C000000FF4C0000D03700000000000000000000000000000000000000000000
      000000004C000000000000000000000001000000E0D057007335CF11AE690800
      2B2E126208000000000000004C0000000114020000000000C000000000000046
      8000000000000000000000000000000000000000000000000000000000000000
      00000000000000000100000000000000000000000000000000000000}
  end
  object pbUpdate: TcxProgressBar
    Left = 8
    Top = 576
    ParentFont = False
    Properties.ShowTextStyle = cxtsText
    Style.Font.Charset = DEFAULT_CHARSET
    Style.Font.Color = clWindowText
    Style.Font.Height = -5
    Style.Font.Name = 'Tahoma'
    Style.Font.Style = []
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
    Width = 745
  end
end
