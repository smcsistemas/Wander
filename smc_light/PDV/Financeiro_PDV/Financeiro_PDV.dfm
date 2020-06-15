object Frm_Recebimento: TFrm_Recebimento
  Left = 0
  Top = 0
  ParentCustomHint = False
  Align = alCustom
  BiDiMode = bdLeftToRight
  BorderStyle = bsNone
  Caption = 'Financeiro'
  ClientHeight = 614
  ClientWidth = 851
  Color = 15918299
  DefaultMonitor = dmMainForm
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  KeyPreview = True
  OldCreateOrder = True
  ParentBiDiMode = False
  Position = poScreenCenter
  Scaled = False
  OnClose = FormClose
  OnCreate = FormCreate
  OnKeyDown = FormKeyDown
  OnKeyPress = FormKeyPress
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 13
  object GroupBox2: TGroupBox
    Left = 0
    Top = -5
    Width = 849
    Height = 619
    ParentCustomHint = False
    Color = 15918299
    Ctl3D = True
    DoubleBuffered = True
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentBackground = False
    ParentColor = False
    ParentCtl3D = False
    ParentDoubleBuffered = False
    ParentFont = False
    ParentShowHint = False
    ShowHint = False
    TabOrder = 0
    object Label17: TLabel
      Left = 32
      Top = 131
      Width = 9
      Height = 38
      Font.Charset = ANSI_CHARSET
      Font.Color = 242
      Font.Height = -33
      Font.Name = 'Helvetica Neue'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object Label7: TLabel
      Left = 257
      Top = 91
      Width = 3
      Height = 13
    end
    object GroupBox1: TGroupBox
      Left = 431
      Top = 25
      Width = 391
      Height = 172
      Caption = '  Pagamento '
      Color = 14993846
      Ctl3D = False
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -16
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      ParentBackground = False
      ParentColor = False
      ParentCtl3D = False
      ParentFont = False
      TabOrder = 1
      object Label1: TLabel
        Left = 26
        Top = 93
        Width = 104
        Height = 16
        Caption = 'VALOR PAGO R$'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'Tahoma'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object Label3: TLabel
        Left = 26
        Top = 26
        Width = 111
        Height = 16
        Caption = 'TIPO PAGAMENTO'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'Tahoma'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object edt_valor: TEdit
        Left = 33
        Top = 115
        Width = 328
        Height = 40
        Alignment = taRightJustify
        BorderStyle = bsNone
        Color = clBlack
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clYellow
        Font.Height = -27
        Font.Name = 'Tahoma'
        Font.Style = [fsBold]
        ParentFont = False
        TabOrder = 0
        OnClick = edt_valorClick
        OnExit = edt_valorExit
        OnKeyDown = edt_valorKeyDown
        OnKeyPress = edt_valorKeyPress
        OnMouseEnter = edt_valorMouseEnter
      end
    end
    object DBGrid1: TDBGrid
      Left = 431
      Top = 228
      Width = 391
      Height = 259
      Hint = 'Delete - Excluir Registro'
      DataSource = DS_venda_pagamento
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      ParentFont = False
      ParentShowHint = False
      PopupMenu = popGrid
      ReadOnly = True
      ShowHint = True
      TabOrder = 3
      TitleFont.Charset = DEFAULT_CHARSET
      TitleFont.Color = clWindowText
      TitleFont.Height = -13
      TitleFont.Name = 'Tahoma'
      TitleFont.Style = [fsBold]
      OnDrawColumnCell = DBGrid1DrawColumnCell
      OnKeyDown = DBGrid1KeyDown
      Columns = <
        item
          Alignment = taCenter
          Expanded = False
          FieldName = 'TIPO_PAGAMENTO'
          Title.Alignment = taCenter
          Title.Caption = 'TIPO PAGAMENTO'
          Width = 127
          Visible = True
        end
        item
          Alignment = taCenter
          Expanded = False
          FieldName = 'TOTAL_PAGO'
          Title.Alignment = taCenter
          Title.Caption = 'TOTAL PAGO'
          Width = 118
          Visible = True
        end
        item
          Alignment = taCenter
          Expanded = False
          FieldName = 'VALOR_DEBITADO'
          Title.Alignment = taCenter
          Title.Caption = 'VALOR DEBITADO'
          Width = 131
          Visible = True
        end>
    end
    object GroupBox4: TGroupBox
      Left = 24
      Top = 22
      Width = 380
      Height = 96
      Caption = 'Informa'#231#245'es Gerais'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -16
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      ParentFont = False
      TabOrder = 0
      object Label4: TLabel
        Left = 8
        Top = 25
        Width = 62
        Height = 16
        Caption = 'N'#186' Venda:'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'HelveticaNeue'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object Label14: TLabel
        Left = 173
        Top = 42
        Width = 67
        Height = 16
        Caption = 'CNPJ|CPF:'
        Color = 12351299
        Font.Charset = ANSI_CHARSET
        Font.Color = clCaptionText
        Font.Height = -13
        Font.Name = 'HelveticaNeue'
        Font.Style = [fsBold]
        ParentColor = False
        ParentFont = False
      end
      object Label9: TLabel
        Left = 191
        Top = 25
        Width = 49
        Height = 16
        Caption = 'Cliente:'
        Color = 12351299
        Font.Charset = ANSI_CHARSET
        Font.Color = clCaptionText
        Font.Height = -13
        Font.Name = 'HelveticaNeue'
        Font.Style = [fsBold]
        ParentColor = False
        ParentFont = False
      end
      object Label5: TLabel
        Left = 6
        Top = 42
        Width = 64
        Height = 16
        Caption = 'Operador:'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'HelveticaNeue'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object lbl_venda: TLabel
        Left = 76
        Top = 25
        Width = 84
        Height = 16
        Caption = '.....................'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'HelveticaNeue'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object lbl_operador: TLabel
        Left = 76
        Top = 42
        Width = 84
        Height = 16
        Caption = '.....................'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'HelveticaNeue'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object lbl_cliente_cpf: TLabel
        Left = 249
        Top = 42
        Width = 84
        Height = 16
        Caption = '.....................'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'HelveticaNeue'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object lbl_cliente_nome: TLabel
        Left = 249
        Top = 25
        Width = 84
        Height = 16
        Caption = '.....................'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'HelveticaNeue'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object Label22: TLabel
        Left = 29
        Top = 60
        Width = 41
        Height = 16
        Caption = 'Caixa:'
        Color = 12351299
        Font.Charset = ANSI_CHARSET
        Font.Color = clCaptionText
        Font.Height = -13
        Font.Name = 'HelveticaNeue'
        Font.Style = [fsBold]
        ParentColor = False
        ParentFont = False
      end
      object lbl_caixa: TLabel
        Left = 76
        Top = 60
        Width = 84
        Height = 16
        Caption = '.....................'
        Color = 12351299
        Font.Charset = ANSI_CHARSET
        Font.Color = clCaptionText
        Font.Height = -13
        Font.Name = 'HelveticaNeue'
        Font.Style = [fsBold]
        ParentColor = False
        ParentFont = False
      end
      object Label6: TLabel
        Left = 5
        Top = 77
        Width = 65
        Height = 16
        Caption = 'Vendedor:'
        Color = 12351299
        Font.Charset = ANSI_CHARSET
        Font.Color = clCaptionText
        Font.Height = -13
        Font.Name = 'HelveticaNeue'
        Font.Style = [fsBold]
        ParentColor = False
        ParentFont = False
      end
      object lbl_vendedor: TLabel
        Left = 76
        Top = 77
        Width = 84
        Height = 16
        Caption = '.....................'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'HelveticaNeue'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object Label10: TLabel
        Left = 181
        Top = 60
        Width = 59
        Height = 16
        Caption = 'Telefone:'
        Color = 12351299
        Font.Charset = ANSI_CHARSET
        Font.Color = clCaptionText
        Font.Height = -13
        Font.Name = 'HelveticaNeue'
        Font.Style = [fsBold]
        ParentColor = False
        ParentFont = False
      end
      object lbl_telefone: TLabel
        Left = 249
        Top = 60
        Width = 84
        Height = 16
        Caption = '.....................'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'HelveticaNeue'
        Font.Style = [fsBold]
        ParentFont = False
      end
    end
    object GroupBox3: TGroupBox
      Left = 24
      Top = 402
      Width = 380
      Height = 191
      Caption = '  Info. Pagamentos'
      Color = 15918299
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -16
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      ParentBackground = False
      ParentColor = False
      ParentFont = False
      TabOrder = 4
      object Label16: TLabel
        Left = 68
        Top = 22
        Width = 144
        Height = 76
        Caption = 'PAGO R$'#13#10
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Height = -33
        Font.Name = 'Helvetica Neue'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object Label15: TLabel
        Left = 37
        Top = 80
        Width = 175
        Height = 38
        Caption = 'DEVIDO R$'
        Font.Charset = ANSI_CHARSET
        Font.Color = clRed
        Font.Height = -33
        Font.Name = 'Helvetica Neue'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object Label12: TLabel
        Left = 42
        Top = 139
        Width = 170
        Height = 38
        Caption = 'TROCO R$'
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -33
        Font.Name = 'Helvetica Neue'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object edt_pago: TEdit
        Left = 216
        Top = 19
        Width = 146
        Height = 41
        Alignment = taRightJustify
        CharCase = ecUpperCase
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -27
        Font.Name = 'Tahoma'
        Font.Style = [fsBold]
        ParentFont = False
        ReadOnly = True
        TabOrder = 0
      end
      object cxGroupBox2: TcxGroupBox
        Left = 3
        Top = 68
        ParentCustomHint = False
        BiDiMode = bdLeftToRight
        Ctl3D = False
        ParentBackground = False
        ParentBiDiMode = False
        ParentColor = False
        ParentCtl3D = False
        ParentFont = False
        ParentShowHint = False
        ShowHint = False
        Style.BorderColor = clAqua
        Style.BorderStyle = ebsThick
        Style.Color = clBlue
        Style.Edges = []
        Style.LookAndFeel.NativeStyle = False
        Style.Shadow = False
        Style.TransparentBorder = True
        StyleDisabled.LookAndFeel.NativeStyle = False
        StyleFocused.LookAndFeel.NativeStyle = False
        StyleHot.LookAndFeel.NativeStyle = False
        TabOrder = 1
        Height = 4
        Width = 388
        object cxGroupBox4: TcxGroupBox
          Left = 0
          Top = -120
          ParentCustomHint = False
          BiDiMode = bdLeftToRight
          Ctl3D = False
          ParentBackground = False
          ParentBiDiMode = False
          ParentColor = False
          ParentCtl3D = False
          ParentFont = False
          ParentShowHint = False
          ShowHint = False
          Style.BorderColor = clAqua
          Style.BorderStyle = ebsThick
          Style.Color = clBlue
          Style.Edges = []
          Style.LookAndFeel.NativeStyle = False
          Style.Shadow = False
          Style.TransparentBorder = True
          StyleDisabled.LookAndFeel.NativeStyle = False
          StyleFocused.LookAndFeel.NativeStyle = False
          StyleHot.LookAndFeel.NativeStyle = False
          TabOrder = 0
          Height = 4
          Width = 327
        end
      end
      object edt_devido: TEdit
        Left = 216
        Top = 79
        Width = 146
        Height = 41
        Alignment = taRightJustify
        CharCase = ecUpperCase
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -27
        Font.Name = 'Tahoma'
        Font.Style = [fsBold]
        ParentFont = False
        ReadOnly = True
        TabOrder = 2
      end
      object cxGroupBox1: TcxGroupBox
        Left = 3
        Top = 127
        ParentCustomHint = False
        BiDiMode = bdLeftToRight
        Ctl3D = False
        ParentBackground = False
        ParentBiDiMode = False
        ParentColor = False
        ParentCtl3D = False
        ParentFont = False
        ParentShowHint = False
        ShowHint = False
        Style.BorderColor = clAqua
        Style.BorderStyle = ebsThick
        Style.Color = clBlue
        Style.Edges = []
        Style.LookAndFeel.NativeStyle = False
        Style.Shadow = False
        Style.TransparentBorder = True
        StyleDisabled.LookAndFeel.NativeStyle = False
        StyleFocused.LookAndFeel.NativeStyle = False
        StyleHot.LookAndFeel.NativeStyle = False
        TabOrder = 3
        Height = 4
        Width = 388
      end
      object edt_troco: TEdit
        Left = 216
        Top = 137
        Width = 146
        Height = 41
        Alignment = taRightJustify
        CharCase = ecUpperCase
        Color = clInfoText
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clYellow
        Font.Height = -27
        Font.Name = 'Tahoma'
        Font.Style = [fsBold]
        ParentFont = False
        ReadOnly = True
        TabOrder = 4
      end
    end
    object GroupBox5: TGroupBox
      Left = 24
      Top = 120
      Width = 380
      Height = 274
      Caption = ' Venda'
      Color = 15918299
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -16
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      ParentBackground = False
      ParentColor = False
      ParentFont = False
      TabOrder = 2
      object Label13: TLabel
        Left = 49
        Top = 26
        Width = 163
        Height = 38
        Caption = 'VALOR R$'
        Font.Charset = ANSI_CHARSET
        Font.Color = -1
        Font.Height = -33
        Font.Name = 'Helvetica Neue'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object Label2: TLabel
        Left = 28
        Top = 94
        Width = 184
        Height = 38
        Caption = 'DESCONTO'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Height = -33
        Font.Name = 'Helvetica Neue'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object Label11: TLabel
        Left = 10
        Top = 160
        Width = 202
        Height = 38
        Caption = 'ACR'#201'SCIMO'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Height = -33
        Font.Name = 'Helvetica Neue'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object Label18: TLabel
        Left = 55
        Top = 219
        Width = 157
        Height = 38
        Caption = 'TOTAL R$'
        Font.Charset = ANSI_CHARSET
        Font.Color = clRed
        Font.Height = -33
        Font.Name = 'Helvetica Neue'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object cxGroupBox6: TcxGroupBox
        Left = 3
        Top = 76
        ParentCustomHint = False
        BiDiMode = bdLeftToRight
        Ctl3D = False
        ParentBackground = False
        ParentBiDiMode = False
        ParentColor = False
        ParentCtl3D = False
        ParentFont = False
        ParentShowHint = False
        ShowHint = False
        Style.BorderColor = clAqua
        Style.BorderStyle = ebsThick
        Style.Color = clBlue
        Style.Edges = []
        Style.LookAndFeel.NativeStyle = False
        Style.Shadow = False
        Style.TransparentBorder = True
        StyleDisabled.LookAndFeel.NativeStyle = False
        StyleFocused.LookAndFeel.NativeStyle = False
        StyleHot.LookAndFeel.NativeStyle = False
        TabOrder = 1
        Height = 4
        Width = 407
      end
      object edt_valor_venda: TEdit
        Left = 216
        Top = 24
        Width = 146
        Height = 41
        Alignment = taRightJustify
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -27
        Font.Name = 'Tahoma'
        Font.Style = [fsBold]
        ParentFont = False
        ReadOnly = True
        TabOrder = 0
      end
      object edt_desconto: TEdit
        Left = 216
        Top = 90
        Width = 108
        Height = 41
        Alignment = taRightJustify
        CharCase = ecUpperCase
        Color = clWhite
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -27
        Font.Name = 'Tahoma'
        Font.Style = [fsBold]
        ParentFont = False
        TabOrder = 3
        OnEnter = edt_descontoEnter
        OnExit = edt_descontoExit
        OnKeyDown = edt_descontoKeyDown
        OnKeyPress = edt_descontoKeyPress
      end
      object D_Dinheiro: TcxCheckBox
        Left = 325
        Top = 82
        Caption = 'R$'
        ParentFont = False
        Properties.OnChange = D_DinheiroPropertiesChange
        State = cbsChecked
        Style.Font.Charset = DEFAULT_CHARSET
        Style.Font.Color = clWindowText
        Style.Font.Height = -19
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
      object D_Porcentagem: TcxCheckBox
        Left = 325
        Top = 108
        Caption = '%'
        ParentFont = False
        Properties.OnChange = D_PorcentagemPropertiesChange
        Style.Font.Charset = DEFAULT_CHARSET
        Style.Font.Color = clWindowText
        Style.Font.Height = -19
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
      object A_dinheiro: TcxCheckBox
        Left = 325
        Top = 149
        Caption = 'R$'
        ParentFont = False
        Properties.OnChange = A_dinheiroPropertiesChange
        State = cbsChecked
        Style.Font.Charset = DEFAULT_CHARSET
        Style.Font.Color = clWindowText
        Style.Font.Height = -19
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
        TabOrder = 6
      end
      object A_porcentagem: TcxCheckBox
        Left = 325
        Top = 176
        Caption = '%'
        ParentFont = False
        Properties.OnChange = A_porcentagemPropertiesChange
        Style.Font.Charset = DEFAULT_CHARSET
        Style.Font.Color = clWindowText
        Style.Font.Height = -19
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
        TabOrder = 8
      end
      object edt_acrescimo: TEdit
        Left = 216
        Top = 157
        Width = 108
        Height = 41
        Alignment = taRightJustify
        CharCase = ecUpperCase
        Color = clWhite
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -27
        Font.Name = 'Tahoma'
        Font.Style = [fsBold]
        ParentFont = False
        TabOrder = 7
        OnEnter = edt_acrescimoEnter
        OnExit = edt_acrescimoExit
        OnKeyDown = edt_acrescimoKeyDown
        OnKeyPress = edt_acrescimoKeyPress
      end
      object edt_total: TEdit
        Left = 216
        Top = 220
        Width = 146
        Height = 41
        Alignment = taRightJustify
        CharCase = ecUpperCase
        Color = clInfoText
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clYellow
        Font.Height = -27
        Font.Name = 'Tahoma'
        Font.Style = [fsBold]
        ParentFont = False
        ReadOnly = True
        TabOrder = 10
      end
      object cxGroupBox7: TcxGroupBox
        Left = 3
        Top = 142
        ParentCustomHint = False
        BiDiMode = bdLeftToRight
        Ctl3D = False
        ParentBackground = False
        ParentBiDiMode = False
        ParentColor = False
        ParentCtl3D = False
        ParentFont = False
        ParentShowHint = False
        ShowHint = False
        Style.BorderColor = clAqua
        Style.BorderStyle = ebsThick
        Style.Color = clBlue
        Style.Edges = []
        Style.LookAndFeel.NativeStyle = False
        Style.Shadow = False
        Style.TransparentBorder = True
        StyleDisabled.LookAndFeel.NativeStyle = False
        StyleFocused.LookAndFeel.NativeStyle = False
        StyleHot.LookAndFeel.NativeStyle = False
        TabOrder = 5
        Height = 4
        Width = 407
        object cxGroupBox8: TcxGroupBox
          Left = 0
          Top = -120
          ParentCustomHint = False
          BiDiMode = bdLeftToRight
          Ctl3D = False
          ParentBackground = False
          ParentBiDiMode = False
          ParentColor = False
          ParentCtl3D = False
          ParentFont = False
          ParentShowHint = False
          ShowHint = False
          Style.BorderColor = clAqua
          Style.BorderStyle = ebsThick
          Style.Color = clBlue
          Style.Edges = []
          Style.LookAndFeel.NativeStyle = False
          Style.Shadow = False
          Style.TransparentBorder = True
          StyleDisabled.LookAndFeel.NativeStyle = False
          StyleFocused.LookAndFeel.NativeStyle = False
          StyleHot.LookAndFeel.NativeStyle = False
          TabOrder = 0
          Height = 4
          Width = 327
        end
      end
      object cxGroupBox3: TcxGroupBox
        Left = 0
        Top = 208
        ParentCustomHint = False
        BiDiMode = bdLeftToRight
        Ctl3D = False
        ParentBackground = False
        ParentBiDiMode = False
        ParentColor = False
        ParentCtl3D = False
        ParentFont = False
        ParentShowHint = False
        ShowHint = False
        Style.BorderColor = clAqua
        Style.BorderStyle = ebsThick
        Style.Color = clBlue
        Style.Edges = []
        Style.LookAndFeel.NativeStyle = False
        Style.Shadow = False
        Style.TransparentBorder = True
        StyleDisabled.LookAndFeel.NativeStyle = False
        StyleFocused.LookAndFeel.NativeStyle = False
        StyleHot.LookAndFeel.NativeStyle = False
        TabOrder = 9
        Height = 4
        Width = 407
        object cxGroupBox5: TcxGroupBox
          Left = 0
          Top = -120
          ParentCustomHint = False
          BiDiMode = bdLeftToRight
          Ctl3D = False
          ParentBackground = False
          ParentBiDiMode = False
          ParentColor = False
          ParentCtl3D = False
          ParentFont = False
          ParentShowHint = False
          ShowHint = False
          Style.BorderColor = clAqua
          Style.BorderStyle = ebsThick
          Style.Color = clBlue
          Style.Edges = []
          Style.LookAndFeel.NativeStyle = False
          Style.Shadow = False
          Style.TransparentBorder = True
          StyleDisabled.LookAndFeel.NativeStyle = False
          StyleFocused.LookAndFeel.NativeStyle = False
          StyleHot.LookAndFeel.NativeStyle = False
          TabOrder = 0
          Height = 4
          Width = 327
        end
      end
    end
    object btn_finalizar: TcxButton
      Left = 464
      Top = 519
      Width = 151
      Height = 61
      Caption = 'FINALIZAR'#13'VENDA'#13'[F1]'
      LookAndFeel.NativeStyle = False
      LookAndFeel.SkinName = 'Metropolis'
      OptionsImage.Glyph.Data = {
        36100000424D3610000000000000360000002800000020000000200000000100
        2000000000000010000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        00000000000000000000000000000000000000000000000000000000000097A7
        76FF97A776FF97A776FF97A776FF97A776FF97A776FF97A776FF97A776FF97A7
        76FF97A776FF97A776FF97A776FF97A776FF97A776FF97A776FF97A776FF97A7
        76FF97A776FF97A776FF97A776FF97A776FF97A776FF97A776FF97A776FF97A7
        76FF97A776FF97A776FF97A776FF97A776FF97A776FF000000000000000097A7
        76FF97A776FF97A776FF97A776FF97A776FF97A776FF97A776FF97A776FF97A7
        76FF97A776FF97A776FF97A776FF97A776FF97A776FF97A776FF97A776FF97A7
        76FF97A776FF97A776FF97A776FF97A776FF97A776FF97A776FF97A776FF97A7
        76FF97A776FF97A776FF97A776FF97A776FF97A776FF000000000000000097A7
        76FF97A776FF97A776FF97A776FF97A776FF97A776FF97A776FF97A776FF97A7
        76FF97A776FF97A776FF97A776FF97A776FF97A776FF97A776FF97A776FF97A7
        76FF97A776FF97A776FF97A776FF97A776FF97A776FF97A776FF97A776FF97A7
        76FF97A776FF97A776FF97A776FF97A776FF97A776FF000000000000000097A7
        76FF97A776FF97A776FF97A776FF97A776FF97A776FF97A776FF97A776FF97A7
        76FF97A776FF97A776FF97A776FF97A776FF97A776FF97A776FF97A776FF97A7
        76FF97A776FF97A776FF97A776FF97A776FF97A776FF97A776FF97A776FF97A7
        76FF97A776FF97A776FF97A776FF97A776FF97A776FF000000000000000097A7
        76FF97A776FF97A776FF97A776FF97A776FF97A776FF97A776FF97A776FF97A7
        76FF97A776FF97A776FF97A776FF97A776FF97A776FF97A776FF97A776FF97A7
        76FF97A776FF97A776FF97A776FF97A776FF97A776FF97A776FF97A776FF97A7
        76FF97A776FF97A776FF97A776FF97A776FF97A776FF000000000000000097A7
        76FF97A776FF97A776FF97A776FF97A776FF97A776FF97A776FF97A776FF97A7
        76FF97A776FF97A776FF98A877FF97A776FF97A776FF97A776FF97A776FF97A7
        76FF97A776FF97A776FF97A776FF97A776FF97A776FF97A776FF97A776FF97A7
        76FF97A776FF97A776FF97A776FF97A776FF97A776FF000000000000000097A7
        76FF97A776FF97A776FF97A776FF97A776FF97A776FF97A776FF97A776FF97A7
        76FF97A776FF9EAD80FFE9ECE2FFB9C4A3FF97A776FF97A776FF97A776FF97A7
        76FF97A776FF97A776FF97A776FF97A776FF97A776FF97A776FF97A776FF97A7
        76FF97A776FF97A776FF97A776FF97A776FF97A776FF000000000000000097A7
        76FF97A776FF97A776FF97A776FF97A776FF97A776FF97A776FF97A776FF97A7
        76FF9EAD80FFEBEEE4FFFFFFFFFFFDFDFCFFB9C4A3FF97A776FF97A776FF97A7
        76FF97A776FF97A776FF97A776FF97A776FF97A776FF97A776FF97A776FF97A7
        76FF97A776FF97A776FF97A776FF97A776FF97A776FF000000000000000097A7
        76FF97A776FF97A776FF97A776FF97A776FF97A776FF97A776FF97A776FF9DAC
        7EFFEBEEE4FFFFFFFFFFFFFFFFFFFFFFFFFFFDFDFCFFB8C3A2FF97A776FF97A7
        76FF97A776FF97A776FF97A776FF97A776FF97A776FF97A776FF97A776FF97A7
        76FF97A776FF97A776FF97A776FF97A776FF97A776FF000000000000000097A7
        76FF97A776FF97A776FF97A776FF97A776FF97A776FF97A776FF9DAC7EFFE9ED
        E3FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFDFDFCFFB7C2A0FF97A7
        76FF97A776FF97A776FF97A776FF97A776FF97A776FF97A776FF97A776FF97A7
        76FF97A776FF97A776FF97A776FF97A776FF97A776FF000000000000000097A7
        76FF97A776FF97A776FF97A776FF97A776FF97A776FF9DAC7EFFE9EDE3FFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFDFDFCFFB7C2
        A0FF97A776FF97A776FF97A776FF97A776FF97A776FF97A776FF97A776FF97A7
        76FF97A776FF97A776FF97A776FF97A776FF97A776FF000000000000000097A7
        76FF97A776FF97A776FF97A776FF97A776FF9DAC7EFFE9EDE3FFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFE7EBDFFFFDFDFCFFFFFFFFFFFFFFFFFFFFFFFFFFFDFD
        FCFFB7C2A0FF97A776FF97A776FF97A776FF97A776FF97A776FF97A776FF97A7
        76FF97A776FF97A776FF97A776FF97A776FF97A776FF000000000000000097A7
        76FF97A776FF97A776FF97A776FF9DAC7EFFE9EDE3FFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFDFE4D5FF99A979FFB6C29FFFFDFDFCFFFFFFFFFFFFFFFFFFFFFF
        FFFFFDFDFCFFB7C2A0FF97A776FF97A776FF97A776FF97A776FF97A776FF97A7
        76FF97A776FF97A776FF97A776FF97A776FF97A776FF000000000000000097A7
        76FF97A776FF97A776FF9DAC7EFFE9EDE3FFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFDFE4D5FF99A979FF97A776FF97A776FFB6C29FFFFDFDFCFFFFFFFFFFFFFF
        FFFFFFFFFFFFFDFDFCFFB7C2A0FF97A776FF97A776FF97A776FF97A776FF97A7
        76FF97A776FF97A776FF97A776FF97A776FF97A776FF000000000000000097A7
        76FF97A776FF97A776FFBBC6A6FFFFFFFEFFFFFFFFFFFFFFFFFFFFFFFFFFDFE4
        D5FF99A979FF97A776FF97A776FF97A776FF97A776FFB6C29FFFFDFDFCFFFFFF
        FFFFFFFFFFFFFFFFFFFFFDFDFCFFB7C2A0FF97A776FF97A776FF97A776FF97A7
        76FF97A776FF97A776FF97A776FF97A776FF97A776FF000000000000000097A7
        76FF97A776FF97A776FF97A776FFC3CDB1FFFFFFFEFFFFFFFFFFDFE4D5FF99A9
        79FF97A776FF97A776FF97A776FF97A776FF97A776FF97A776FFB6C29FFFFDFD
        FCFFFFFFFFFFFFFFFFFFFFFFFFFFFDFDFCFFB7C2A0FF97A776FF97A776FF97A7
        76FF97A776FF97A776FF97A776FF97A776FF97A776FF000000000000000097A7
        76FF97A776FF97A776FF97A776FF97A776FFC3CDB1FFDEE3D4FF99A979FF97A7
        76FF97A776FF97A776FF97A776FF97A776FF97A776FF97A776FF97A776FFB6C2
        9FFFFDFDFCFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFB7C2A0FF97A776FF97A7
        76FF97A776FF97A776FF97A776FF97A776FF97A776FF000000000000000097A7
        76FF97A776FF97A776FF97A776FF97A776FF97A776FF97A777FF97A776FF97A7
        76FF97A776FF97A776FF97A776FF97A776FF97A776FF97A776FF97A776FF97A7
        76FFB6C29FFFFDFDFCFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFB7C2A0FF97A7
        76FF97A776FF97A776FF97A776FF97A776FF97A776FF000000000000000097A7
        76FF97A776FF97A776FF97A776FF97A776FF97A776FF97A776FF97A776FF97A7
        76FF97A776FF97A776FF97A776FF97A776FF97A776FF97A776FF97A776FF97A7
        76FF97A776FFB6C29FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFDFDFCFFB7C2
        A0FF97A776FF97A776FF97A776FF97A776FF97A776FF000000000000000097A7
        76FF97A776FF97A776FF97A776FF97A776FF97A776FF97A776FF97A776FF97A7
        76FF97A776FF97A776FF97A776FF97A776FF97A776FF97A776FF97A776FF97A7
        76FF97A776FF97A776FFB6C29FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFDFD
        FCFFB7C2A0FF97A776FF97A776FF97A776FF97A776FF000000000000000097A7
        76FF97A776FF97A776FF97A776FF97A776FF97A776FF97A776FF97A776FF97A7
        76FF97A776FF97A776FF97A776FF97A776FF97A776FF97A776FF97A776FF97A7
        76FF97A776FF97A776FF97A776FFB6C29FFFFDFDFCFFFFFFFFFFFFFFFFFFFFFF
        FFFFFDFDFCFFB7C2A0FF97A776FF97A776FF97A776FF000000000000000097A7
        76FF97A776FF97A776FF97A776FF97A776FF97A776FF97A776FF97A776FF97A7
        76FF97A776FF97A776FF97A776FF97A776FF97A776FF97A776FF97A776FF97A7
        76FF97A776FF97A776FF97A776FF97A776FFB6C29FFFFDFDFCFFFFFFFFFFFFFF
        FFFFFFFFFFFFE7EBE0FF97A777FF97A776FF97A776FF000000000000000097A7
        76FF97A776FF97A776FF97A776FF97A776FF97A776FF97A776FF97A776FF97A7
        76FF97A776FF97A776FF97A776FF97A776FF97A776FF97A776FF97A776FF97A7
        76FF97A776FF97A776FF97A776FF97A776FF97A776FFB6C29FFFFDFDFCFFFFFF
        FFFFEAEDE3FF9EAD7FFF97A776FF97A776FF97A776FF000000000000000097A7
        76FF97A776FF97A776FF97A776FF97A776FF97A776FF97A776FF97A776FF97A7
        76FF97A776FF97A776FF97A776FF97A776FF97A776FF97A776FF97A776FF97A7
        76FF97A776FF97A776FF97A776FF97A776FF97A776FF97A776FFB6C29FFFE7EB
        E0FF9EAD7FFF97A776FF97A776FF97A776FF97A776FF000000000000000097A7
        76FF97A776FF97A776FF97A776FF97A776FF97A776FF97A776FF97A776FF97A7
        76FF97A776FF97A776FF97A776FF97A776FF97A776FF97A776FF97A776FF97A7
        76FF97A776FF97A776FF97A776FF97A776FF97A776FF97A776FF97A776FF98A8
        77FF97A776FF97A776FF97A776FF97A776FF97A776FF000000000000000097A7
        76FF97A776FF97A776FF97A776FF97A776FF97A776FF97A776FF97A776FF97A7
        76FF97A776FF97A776FF97A776FF97A776FF97A776FF97A776FF97A776FF97A7
        76FF97A776FF97A776FF97A776FF97A776FF97A776FF97A776FF97A776FF97A7
        76FF97A776FF97A776FF97A776FF97A776FF97A776FF000000000000000097A7
        76FF97A776FF97A776FF97A776FF97A776FF97A776FF97A776FF97A776FF97A7
        76FF97A776FF97A776FF97A776FF97A776FF97A776FF97A776FF97A776FF97A7
        76FF97A776FF97A776FF97A776FF97A776FF97A776FF97A776FF97A776FF97A7
        76FF97A776FF97A776FF97A776FF97A776FF97A776FF000000000000000097A7
        76FF97A776FF97A776FF97A776FF97A776FF97A776FF97A776FF97A776FF97A7
        76FF97A776FF97A776FF97A776FF97A776FF97A776FF97A776FF97A776FF97A7
        76FF97A776FF97A776FF97A776FF97A776FF97A776FF97A776FF97A776FF97A7
        76FF97A776FF97A776FF97A776FF97A776FF97A776FF000000000000000097A7
        76FF97A776FF97A776FF97A776FF97A776FF97A776FF97A776FF97A776FF97A7
        76FF97A776FF97A776FF97A776FF97A776FF97A776FF97A776FF97A776FF97A7
        76FF97A776FF97A776FF97A776FF97A776FF97A776FF97A776FF97A776FF97A7
        76FF97A776FF97A776FF97A776FF97A776FF97A776FF000000000000000097A7
        76FF97A776FF97A776FF97A776FF97A776FF97A776FF97A776FF97A776FF97A7
        76FF97A776FF97A776FF97A776FF97A776FF97A776FF97A776FF97A776FF97A7
        76FF97A776FF97A776FF97A776FF97A776FF97A776FF97A776FF97A776FF97A7
        76FF97A776FF97A776FF97A776FF97A776FF97A776FF00000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000}
      TabOrder = 5
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -15
      Font.Name = 'Haveitica'
      Font.Style = [fsBold]
      ParentFont = False
      OnClick = btn_finalizarClick
    end
    object btnSair: TcxButton
      Left = 641
      Top = 519
      Width = 151
      Height = 61
      Cancel = True
      Caption = 'CANCELAR'#13'FINALIZA'#199#195'O'#13'[F2]'
      LookAndFeel.NativeStyle = False
      LookAndFeel.SkinName = 'Metropolis'
      OptionsImage.Glyph.Data = {
        36100000424D3610000000000000360000002800000020000000200000000100
        2000000000000010000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000004463
        D8FF4463D8FF4463D8FF4463D8FF4463D8FF4463D8FF4463D8FF4463D8FF4463
        D8FF4463D8FF4463D8FF4463D8FF4463D8FF4463D8FF4463D8FF4463D8FF4463
        D8FF4463D8FF4463D8FF4463D8FF4463D8FF4463D8FF4463D8FF4463D8FF4463
        D8FF4463D8FF4463D8FF4463D8FF4463D8FF4463D8FF00000000000000004463
        D8FF4463D8FF4463D8FF4463D8FF4463D8FF4463D8FF4463D8FF4463D8FF4463
        D8FF4463D8FF4463D8FF4463D8FF4463D8FF4463D8FF4463D8FF4463D8FF4463
        D8FF4463D8FF4463D8FF4463D8FF4463D8FF4463D8FF4463D8FF4463D8FF4463
        D8FF4463D8FF4463D8FF4463D8FF4463D8FF4463D8FF00000000000000004463
        D8FF4463D8FF4463D8FF4463D8FF4463D8FF4463D8FF4463D8FF4463D8FF4463
        D8FF4463D8FF4463D8FF4463D8FF4463D8FF4463D8FF4463D8FF4463D8FF4463
        D8FF4463D8FF4463D8FF4463D8FF4463D8FF4463D8FF4463D8FF4463D8FF4463
        D8FF4463D8FF4463D8FF4463D8FF4463D8FF4463D8FF00000000000000004463
        D8FF4463D8FF4463D8FF4463D8FF4463D8FF4463D8FF4463D8FF4463D8FF4463
        D8FF4463D8FF4463D8FF4463D8FF4463D8FF4463D8FF4463D8FF4463D8FF4463
        D8FF4463D8FF4463D8FF4463D8FF4463D8FF4463D8FF4463D8FF4463D8FF4463
        D8FF4463D8FF4463D8FF4463D8FF4463D8FF4463D8FF00000000000000004463
        D8FF4463D8FF4463D8FF4463D8FF4463D8FF4463D8FF4463D8FF4362D6FD4463
        D8FF4463D8FF4463D8FF4463D8FF4463D8FF4463D8FF4463D8FF4463D8FF4463
        D8FF4463D8FF4463D8FF4463D8FF4463D8FF4463D8FF4362D6FD4463D8FF4463
        D8FF4463D8FF4463D8FF4463D8FF4463D8FF4463D8FF00000000000000004463
        D8FF4463D8FF4463D8FF4463D8FF4463D8FF4463D8FF3F5CC9ED0F152F372F45
        96B14463D8FF4463D8FF4463D8FF4463D8FF4463D8FF4463D8FF4463D8FF4463
        D8FF4463D8FF4463D8FF4463D8FF4463D8FF2E4393AD0F152F373F5CC8EC4463
        D8FF4463D8FF4463D8FF4463D8FF4463D8FF4463D8FF00000000000000004463
        D8FF4463D8FF4463D8FF4463D8FF4463D8FF3F5CC9ED0D132A32000000000202
        05062F4596B14463D8FF4463D8FF4463D8FF4463D8FF4463D8FF4463D8FF4463
        D8FF4463D8FF4463D8FF4463D8FF2E4393AD02020506000000000D132A313F5C
        C8EC4463D8FF4463D8FF4463D8FF4463D8FF4463D8FF00000000000000004463
        D8FF4463D8FF4463D8FF4463D8FF4463D7FE0F162F3800000000000000000000
        0000020205062F4596B14463D8FF4463D8FF4463D8FF4463D8FF4463D8FF4463
        D8FF4463D8FF4463D8FF2E4393AD020205060000000000000000000000000F15
        2F374463D7FE4463D8FF4463D8FF4463D8FF4463D8FF00000000000000004463
        D8FF4463D8FF4463D8FF4463D8FF4463D8FF2F4597B202020506000000000000
        000000000000000000002F4596B14463D8FF4463D8FF4463D8FF4463D8FF4463
        D8FF4463D8FF2E4393AD02020506000000000000000000000000020205063147
        9AB64463D8FF4463D8FF4463D8FF4463D8FF4463D8FF00000000000000004463
        D8FF4463D8FF4463D8FF4463D8FF4463D8FF4463D8FF2F4597B2020205060000
        00000000000000000000020205062F4495B04463D8FF4463D8FF4463D8FF4463
        D8FF2E4393AD000000000000000000000000000000000202050631479AB64463
        D8FF4463D8FF4463D8FF4463D8FF4463D8FF4463D8FF00000000000000004463
        D8FF4463D8FF4463D8FF4463D8FF4463D8FF4463D8FF4463D8FF2F4597B20000
        0000000000000000000000000000020205062F4495B04463D8FF4463D8FF2E43
        93AD020205060000000000000000000000000202050631479AB64463D8FF4463
        D8FF4463D8FF4463D8FF4463D8FF4463D8FF4463D8FF00000000000000004463
        D8FF4463D8FF4463D8FF4463D8FF4463D8FF4463D8FF4463D8FF4463D8FF2F45
        97B202020506000000000000000000000000020205062F4495B02E4393AD0202
        05060000000000000000000000000000000031479AB64463D8FF4463D8FF4463
        D8FF4463D8FF4463D8FF4463D8FF4463D8FF4463D8FF00000000000000004463
        D8FF4463D8FF4463D8FF4463D8FF4463D8FF4463D8FF4463D8FF4463D8FF4463
        D8FF2F4597B20202050600000000000000000000000002020506020205060000
        000000000000000000000202050631479AB64463D8FF4463D8FF4463D8FF4463
        D8FF4463D8FF4463D8FF4463D8FF4463D8FF4463D8FF00000000000000004463
        D8FF4463D8FF4463D8FF4463D8FF4463D8FF4463D8FF4463D8FF4463D8FF4463
        D8FF4463D8FF2F4597B202020506000000000000000000000000000000000000
        0000000000000202050631479AB64463D8FF4463D8FF4463D8FF4463D8FF4463
        D8FF4463D8FF4463D8FF4463D8FF4463D8FF4463D8FF00000000000000004463
        D8FF4463D8FF4463D8FF4463D8FF4463D8FF4463D8FF4463D8FF4463D8FF4463
        D8FF4463D8FF4463D8FF2F4597B2020205060000000000000000000000000000
        00000202050631479AB64463D8FF4463D8FF4463D8FF4463D8FF4463D8FF4463
        D8FF4463D8FF4463D8FF4463D8FF4463D8FF4463D8FF00000000000000004463
        D8FF4463D8FF4463D8FF4463D8FF4463D8FF4463D8FF4463D8FF4463D8FF4463
        D8FF4463D8FF4463D8FF2E4393AD020205060000000000000000000000000000
        0000020205062F4495B04463D8FF4463D8FF4463D8FF4463D8FF4463D8FF4463
        D8FF4463D8FF4463D8FF4463D8FF4463D8FF4463D8FF00000000000000004463
        D8FF4463D8FF4463D8FF4463D8FF4463D8FF4463D8FF4463D8FF4463D8FF4463
        D8FF4463D8FF2E4393AD02020506000000000000000000000000000000000000
        000000000000020205062F4495B04463D8FF4463D8FF4463D8FF4463D8FF4463
        D8FF4463D8FF4463D8FF4463D8FF4463D8FF4463D8FF00000000000000004463
        D8FF4463D8FF4463D8FF4463D8FF4463D8FF4463D8FF4463D8FF4463D8FF4463
        D8FF2E4393AD0202050600000000000000000000000002020506020205060000
        00000000000000000000020205062F4495B04463D8FF4463D8FF4463D8FF4463
        D8FF4463D8FF4463D8FF4463D8FF4463D8FF4463D8FF00000000000000004463
        D8FF4463D8FF4463D8FF4463D8FF4463D8FF4463D8FF4463D8FF4463D8FF2E43
        93AD020205060000000000000000000000000202050631479AB62F4597B20202
        0506000000000000000000000000000000002F4495B04463D8FF4463D8FF4463
        D8FF4463D8FF4463D8FF4463D8FF4463D8FF4463D8FF00000000000000004463
        D8FF4463D8FF4463D8FF4463D8FF4463D8FF4463D8FF4463D8FF2E4393AD0000
        00000000000000000000000000000202050631479AB64463D8FF4463D8FF2F45
        97B202020506000000000000000000000000020205062F4495B04463D8FF4463
        D8FF4463D8FF4463D8FF4463D8FF4463D8FF4463D8FF00000000000000004463
        D8FF4463D8FF4463D8FF4463D8FF4463D8FF4463D8FF2E4393AD020205060000
        000000000000000000000202050631479AB64463D8FF4463D8FF4463D8FF4463
        D8FF2F4597B200000000000000000000000000000000020205062F4495B04463
        D8FF4463D8FF4463D8FF4463D8FF4463D8FF4463D8FF00000000000000004463
        D8FF4463D8FF4463D8FF4463D8FF4463D8FF2E4392AC02020506000000000000
        0000000000000000000031479AB64463D8FF4463D8FF4463D8FF4463D8FF4463
        D8FF4463D8FF2F4597B202020506000000000000000000000000020205062F44
        95B04463D8FF4463D8FF4463D8FF4463D8FF4463D8FF00000000000000004463
        D8FF4463D8FF4463D8FF4463D8FF4362D6FD0F17313A00000000000000000000
        00000202050631479AB64463D8FF4463D8FF4463D8FF4463D8FF4463D8FF4463
        D8FF4463D8FF4463D8FF2F4597B2020205060000000000000000000000000F17
        313A4463D7FE4463D8FF4463D8FF4463D8FF4463D8FF00000000000000004463
        D8FF4463D8FF4463D8FF4463D8FF4463D8FF405DCBF00E152D35000000000202
        050631479AB64463D8FF4463D8FF4463D8FF4463D8FF4463D8FF4463D8FF4463
        D8FF4463D8FF4463D8FF4463D8FF2F4597B202020506000000000E142C34405D
        CAEF4463D8FF4463D8FF4463D8FF4463D8FF4463D8FF00000000000000004463
        D8FF4463D8FF4463D8FF4463D8FF4463D8FF4463D8FF405DCBF01017333C3147
        9AB64463D8FF4463D8FF4463D8FF4463D8FF4463D8FF4463D8FF4463D8FF4463
        D8FF4463D8FF4463D8FF4463D8FF4463D8FF2F4597B20F17313A405DCAEF4463
        D8FF4463D8FF4463D8FF4463D8FF4463D8FF4463D8FF00000000000000004463
        D8FF4463D8FF4463D8FF4463D8FF4463D8FF4463D8FF4463D8FF4463D8FF4463
        D8FF4463D8FF4463D8FF4463D8FF4463D8FF4463D8FF4463D8FF4463D8FF4463
        D8FF4463D8FF4463D8FF4463D8FF4463D8FF4463D8FF4362D6FD4463D8FF4463
        D8FF4463D8FF4463D8FF4463D8FF4463D8FF4463D8FF00000000000000004463
        D8FF4463D8FF4463D8FF4463D8FF4463D8FF4463D8FF4463D8FF4463D8FF4463
        D8FF4463D8FF4463D8FF4463D8FF4463D8FF4463D8FF4463D8FF4463D8FF4463
        D8FF4463D8FF4463D8FF4463D8FF4463D8FF4463D8FF4463D8FF4463D8FF4463
        D8FF4463D8FF4463D8FF4463D8FF4463D8FF4463D8FF00000000000000004463
        D8FF4463D8FF4463D8FF4463D8FF4463D8FF4463D8FF4463D8FF4463D8FF4463
        D8FF4463D8FF4463D8FF4463D8FF4463D8FF4463D8FF4463D8FF4463D8FF4463
        D8FF4463D8FF4463D8FF4463D8FF4463D8FF4463D8FF4463D8FF4463D8FF4463
        D8FF4463D8FF4463D8FF4463D8FF4463D8FF4463D8FF00000000000000004463
        D8FF4463D8FF4463D8FF4463D8FF4463D8FF4463D8FF4463D8FF4463D8FF4463
        D8FF4463D8FF4463D8FF4463D8FF4463D8FF4463D8FF4463D8FF4463D8FF4463
        D8FF4463D8FF4463D8FF4463D8FF4463D8FF4463D8FF4463D8FF4463D8FF4463
        D8FF4463D8FF4463D8FF4463D8FF4463D8FF4463D8FF00000000000000004463
        D8FF4463D8FF4463D8FF4463D8FF4463D8FF4463D8FF4463D8FF4463D8FF4463
        D8FF4463D8FF4463D8FF4463D8FF4463D8FF4463D8FF4463D8FF4463D8FF4463
        D8FF4463D8FF4463D8FF4463D8FF4463D8FF4463D8FF4463D8FF4463D8FF4463
        D8FF4463D8FF4463D8FF4463D8FF4463D8FF4463D8FF00000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000}
      TabOrder = 6
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -15
      Font.Name = 'Haveitica'
      Font.Style = [fsBold]
      ParentFont = False
      OnClick = btnSairClick
    end
  end
  object edtCodPag: TEdit
    Left = 464
    Top = 67
    Width = 70
    Height = 33
    Hint = 
      '01'#9'Dinheiro'#13#10'02'#9'Cheque'#13#10'03'#9'Cart'#227'o de Cr'#233'dito'#13#10'04'#9'Cart'#227'o de D'#233'bit' +
      'o'#13#10'05'#9'Cr'#233'dito Loja'#13#10'10'#9'Vale Alimenta'#231#227'o'#13#10'11'#9'Vale Refei'#231#227'o'#13#10'12'#9'Va' +
      'le Presente'#13#10'13'#9'Vale Combust'#237'vel'#13#10'99'#9'Outros'#13#10'100'#9'Fiado'#13#10
    Alignment = taRightJustify
    Color = clBlack
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clYellow
    Font.Height = -21
    Font.Name = 'Tahoma'
    Font.Style = [fsBold]
    HideSelection = False
    ParentFont = False
    TabOrder = 2
    OnClick = edtCodPagClick
    OnEnter = edtCodPagEnter
    OnKeyDown = edtCodPagKeyDown
    OnKeyPress = edtCodPagKeyPress
  end
  object edtPagDesc: TEdit
    Left = 548
    Top = 67
    Width = 244
    Height = 33
    Color = clBlack
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clYellow
    Font.Height = -21
    Font.Name = 'Tahoma'
    Font.Style = [fsBold]
    ParentFont = False
    TabOrder = 3
    TextHint = 'Tipo de Pagamento'
  end
  object dbTipoPagamento: TcxLookupComboBox
    Left = 464
    Top = 67
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
    Properties.DropDownListStyle = lsFixedList
    Properties.ImmediateDropDownWhenActivated = True
    Properties.KeyFieldNames = 'COD_TIPO_PAGAMENTO'
    Properties.ListColumns = <
      item
        FieldName = 'TIPO_PAGAMENTO'
      end>
    Properties.ListOptions.ShowHeader = False
    Properties.ListSource = DS_TIPO_PAGAMENTO
    Style.Font.Charset = DEFAULT_CHARSET
    Style.Font.Color = clWindowText
    Style.Font.Height = -23
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
    OnKeyDown = dbTipoPagamentoKeyDown
    Width = 328
  end
  object DS_venda_pagamento: TDataSource
    DataSet = SQL_venda_pagamento
    Left = 48
    Top = 16
  end
  object SQL_venda_pagamento: TFDQuery
    Connection = Module.connection
    SQL.Strings = (
      'select * from venda_pagamento '
      'where codigo_venda = :pcodigo')
    Left = 376
    Top = 104
    ParamData = <
      item
        Name = 'PCODIGO'
        DataType = ftInteger
        ParamType = ptInput
        Value = Null
      end>
    object SQL_venda_pagamentoCODIGO: TFDAutoIncField
      FieldName = 'CODIGO'
      Origin = 'CODIGO'
      ProviderFlags = [pfInWhere, pfInKey]
      ReadOnly = True
    end
    object SQL_venda_pagamentoCODIGO_VENDA: TIntegerField
      AutoGenerateValue = arDefault
      FieldName = 'CODIGO_VENDA'
      Origin = 'CODIGO_VENDA'
    end
    object SQL_venda_pagamentoCOD_TIPO_PAGAMENTO: TStringField
      FieldName = 'COD_TIPO_PAGAMENTO'
      Origin = 'COD_TIPO_PAGAMENTO'
      Required = True
      Size = 10
    end
    object SQL_venda_pagamentoTIPO_PAGAMENTO: TStringField
      FieldName = 'TIPO_PAGAMENTO'
      Origin = 'TIPO_PAGAMENTO'
      Required = True
      Size = 50
    end
    object SQL_venda_pagamentoTOTAL_PAGO: TBCDField
      FieldName = 'TOTAL_PAGO'
      Origin = 'TOTAL_PAGO'
      currency = True
      Precision = 10
    end
    object SQL_venda_pagamentoVALOR_DEBITADO: TBCDField
      FieldName = 'VALOR_DEBITADO'
      Origin = 'VALOR_DEBITADO'
      currency = True
      Precision = 10
    end
  end
  object SQL_Venda_Item: TFDQuery
    Connection = Module.connection
    Left = 376
    Top = 288
  end
  object SQL_NFCE: TFDQuery
    Connection = Module.connection
    SQL.Strings = (
      'SELECT * FROM NFCE'
      'WHERE CODIGO_VENDA = :pcodigo_venda')
    Left = 376
    Top = 232
    ParamData = <
      item
        Name = 'PCODIGO_VENDA'
        DataType = ftInteger
        ParamType = ptInput
        Value = Null
      end>
    object SQL_NFCECODIGO: TFDAutoIncField
      FieldName = 'CODIGO'
      Origin = 'CODIGO'
      ProviderFlags = [pfInWhere, pfInKey]
      ReadOnly = True
    end
    object SQL_NFCECAIXA: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'CAIXA'
      Origin = 'CAIXA'
      Size = 5
    end
    object SQL_NFCEOPERADOR: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'OPERADOR'
      Origin = 'OPERADOR'
    end
    object SQL_NFCECLIENTE_NOME: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'CLIENTE_NOME'
      Origin = 'CLIENTE_NOME'
      Size = 50
    end
    object SQL_NFCECLIENTE_CPF: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'CLIENTE_CPF'
      Origin = 'CLIENTE_CPF'
      Size = 50
    end
    object SQL_NFCECODIGO_VENDA: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'CODIGO_VENDA'
      Origin = 'CODIGO_VENDA'
      Size = 50
    end
    object SQL_NFCEVALOR_NFCE: TBCDField
      AutoGenerateValue = arDefault
      FieldName = 'VALOR_NFCE'
      Origin = 'VALOR_NFCE'
      Precision = 10
    end
    object SQL_NFCEACRESCIMOS_NFCE: TBCDField
      AutoGenerateValue = arDefault
      FieldName = 'ACRESCIMOS_NFCE'
      Origin = 'ACRESCIMOS_NFCE'
      Precision = 10
    end
    object SQL_NFCEDESCONTOS_NFCE: TBCDField
      AutoGenerateValue = arDefault
      FieldName = 'DESCONTOS_NFCE'
      Origin = 'DESCONTOS_NFCE'
      Precision = 10
    end
    object SQL_NFCETOTAL_NFCE: TBCDField
      AutoGenerateValue = arDefault
      FieldName = 'TOTAL_NFCE'
      Origin = 'TOTAL_NFCE'
      Precision = 10
    end
    object SQL_NFCEVALOR_PAGO: TBCDField
      AutoGenerateValue = arDefault
      FieldName = 'VALOR_PAGO'
      Origin = 'VALOR_PAGO'
      Precision = 10
    end
    object SQL_NFCETROCO: TBCDField
      AutoGenerateValue = arDefault
      FieldName = 'TROCO'
      Origin = 'TROCO'
      Precision = 10
    end
    object SQL_NFCELOTE: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'LOTE'
      Origin = 'LOTE'
      Size = 5
    end
    object SQL_NFCESERIE: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'SERIE'
      Origin = 'SERIE'
      Size = 5
    end
    object SQL_NFCECHAVE: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'CHAVE'
      Origin = 'CHAVE'
      Size = 60
    end
    object SQL_NFCECAMINHO_XML: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'CAMINHO_XML'
      Origin = 'CAMINHO_XML'
      Size = 200
    end
    object SQL_NFCETIPO_EMISSAO: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'TIPO_EMISSAO'
      Origin = 'TIPO_EMISSAO'
      FixedChar = True
      Size = 12
    end
    object SQL_NFCESTATUS_NFCE: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'STATUS_NFCE'
      Origin = 'STATUS_NFCE'
      FixedChar = True
      Size = 11
    end
    object SQL_NFCEERRO_ROTINA: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'ERRO_ROTINA'
      Origin = 'ERRO_ROTINA'
      FixedChar = True
      Size = 11
    end
    object SQL_NFCERETORNO_NFCE: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'RETORNO_NFCE'
      Origin = 'RETORNO_NFCE'
      Size = 500
    end
    object SQL_NFCEDATA_EMISSAO: TDateField
      FieldName = 'DATA_EMISSAO'
      Origin = 'DATA_EMISSAO'
      Required = True
    end
    object SQL_NFCEHORA_EMISSAO: TTimeField
      AutoGenerateValue = arDefault
      FieldName = 'HORA_EMISSAO'
      Origin = 'HORA_EMISSAO'
    end
    object SQL_NFCEDATA_TRANSMISSAO: TDateField
      AutoGenerateValue = arDefault
      FieldName = 'DATA_TRANSMISSAO'
      Origin = 'DATA_TRANSMISSAO'
    end
    object SQL_NFCEHORA_TRANSMISSAO: TTimeField
      AutoGenerateValue = arDefault
      FieldName = 'HORA_TRANSMISSAO'
      Origin = 'HORA_TRANSMISSAO'
    end
    object SQL_NFCECLIENTE_IE: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'CLIENTE_IE'
      Origin = 'CLIENTE_IE'
      Size = 50
    end
    object SQL_NFCECLIENTE_TELEFONE: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'CLIENTE_TELEFONE'
      Origin = 'CLIENTE_TELEFONE'
      Size = 50
    end
  end
  object SQL_TIPO_PAGAMENTO: TFDQuery
    Connection = Module.connection
    SQL.Strings = (
      'select * from tipo_pagamento')
    Left = 368
    Top = 48
    object SQL_TIPO_PAGAMENTOCODIGO: TFDAutoIncField
      FieldName = 'CODIGO'
      Origin = 'CODIGO'
      ProviderFlags = [pfInWhere, pfInKey]
      ReadOnly = True
    end
    object SQL_TIPO_PAGAMENTOCOD_TIPO_PAGAMENTO: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'COD_TIPO_PAGAMENTO'
      Origin = 'COD_TIPO_PAGAMENTO'
      Size = 10
    end
    object SQL_TIPO_PAGAMENTOTIPO_PAGAMENTO: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'TIPO_PAGAMENTO'
      Origin = 'TIPO_PAGAMENTO'
      Size = 50
    end
  end
  object DS_TIPO_PAGAMENTO: TDataSource
    DataSet = SQL_TIPO_PAGAMENTO
    Left = 16
    Top = 16
  end
  object popGrid: TPopupMenu
    Left = 80
    Top = 48
    object DeletarPagamento1: TMenuItem
      Bitmap.Data = {
        36040000424D3604000000000000360000002800000010000000100000000100
        2000000000000004000000000000000000000000000000000000000000000000
        00000000000000000000101010462121218D2F2F2FC7383838F0383838F02F2F
        2FC72121218D1010104600000000000000000000000000000000000000000000
        0000080808202121218C393939F33C3C3CFF3C3C3CFF3C3C3CFF3C3C3CFF3C3C
        3CFF3C3C3CFF393939F32121218C080808200000000000000000000000000808
        0820262626A33C3C3CFF3C3C3CFF3C3C3CFF3C3C3CFF3C3C3CFF3C3C3CFF3C3C
        3CFF3C3C3CFF3C3C3CFF3C3C3CFF262626A30808082000000000000000002121
        218C3C3C3CFF3C3C3CFF3C3C3CFF2D2D2DBE3C3C3CFF3C3C3CFF3C3C3CFF3C3C
        3CFF2D2D2DBE3C3C3CFF3C3C3CFF3C3C3CFF2121218C00000000101010463939
        39F33C3C3CFF3C3C3CFF1E1E1E7E000000001E1E1E7E3C3C3CFF3C3C3CFF1E1E
        1E7E000000001E1E1E7E3C3C3CFF3C3C3CFF393939F3101010462121218D3C3C
        3CFF3C3C3CFF2D2D2DBF0000000000000000000000001E1E1E7E1E1E1E7E0000
        000000000000000000002D2D2DBF3C3C3CFF3C3C3CFF2121218D2F2F2FC73C3C
        3CFF3C3C3CFF3C3C3CFF1E1E1E81000000000000000000000000000000000000
        0000000000001E1E1E813C3C3CFF3C3C3CFF3C3C3CFF2F2F2FC7383838F03C3C
        3CFF3C3C3CFF3C3C3CFF3C3C3CFF1E1E1E810000000000000000000000000000
        00001E1E1E813C3C3CFF3C3C3CFF3C3C3CFF3C3C3CFF383838F0383838F03C3C
        3CFF3C3C3CFF3C3C3CFF3C3C3CFF1E1E1E7E0000000000000000000000000000
        00001E1E1E7E3C3C3CFF3C3C3CFF3C3C3CFF3C3C3CFF383838F02F2F2FC73C3C
        3CFF3C3C3CFF3C3C3CFF1E1E1E7E000000000000000000000000000000000000
        0000000000001E1E1E7E3C3C3CFF3C3C3CFF3C3C3CFF2F2F2FC72121218D3C3C
        3CFF3C3C3CFF2D2D2DBF0000000000000000000000001E1E1E811E1E1E810000
        000000000000000000002D2D2DBF3C3C3CFF3C3C3CFF2121218D101010463939
        39F33C3C3CFF3C3C3CFF1E1E1E81000000001E1E1E813C3C3CFF3C3C3CFF1E1E
        1E81000000001E1E1E813C3C3CFF3C3C3CFF393939F310101046000000002121
        218C3C3C3CFF3C3C3CFF3C3C3CFF2D2D2DC13C3C3CFF3C3C3CFF3C3C3CFF3C3C
        3CFF2D2D2DC13C3C3CFF3C3C3CFF3C3C3CFF2121218C00000000000000000808
        0820262626A33C3C3CFF3C3C3CFF3C3C3CFF3C3C3CFF3C3C3CFF3C3C3CFF3C3C
        3CFF3C3C3CFF3C3C3CFF3C3C3CFF262626A30808082000000000000000000000
        0000080808202121218C393939F33C3C3CFF3C3C3CFF3C3C3CFF3C3C3CFF3C3C
        3CFF3C3C3CFF393939F32121218C080808200000000000000000000000000000
        00000000000000000000101010462121218D2F2F2FC7383838F0383838F02F2F
        2FC72121218D1010104600000000000000000000000000000000}
      Caption = 'Deletar Pagamento'
      Default = True
      OnClick = DeletarPagamento1Click
    end
  end
  object SQL_VENDA: TFDQuery
    Connection = Module.connection
    SQL.Strings = (
      'SELECT * FROM VENDA '
      'WHERE CODIGO_VENDA = :pcodigo')
    Left = 376
    Top = 168
    ParamData = <
      item
        Name = 'PCODIGO'
        DataType = ftWideString
        FDDataType = dtWideString
        ParamType = ptInput
      end>
    object SQL_VENDACODIGO_VENDA: TIntegerField
      AutoGenerateValue = arDefault
      FieldName = 'CODIGO_VENDA'
      Origin = 'CODIGO_VENDA'
    end
    object SQL_VENDAOPERADOR: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'OPERADOR'
      Origin = 'OPERADOR'
    end
    object SQL_VENDACAIXA: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'CAIXA'
      Origin = 'CAIXA'
      Size = 5
    end
    object SQL_VENDACPF_CLIENTE: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'CPF_CLIENTE'
      Origin = 'CPF_CLIENTE'
    end
    object SQL_VENDANOME_CLIENTE: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'NOME_CLIENTE'
      Origin = 'NOME_CLIENTE'
      Size = 50
    end
    object SQL_VENDACODIGO_CLIENTE: TIntegerField
      AutoGenerateValue = arDefault
      FieldName = 'CODIGO_CLIENTE'
      Origin = 'CODIGO_CLIENTE'
    end
    object SQL_VENDAVENDA_FATURADA: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'VENDA_FATURADA'
      Origin = 'VENDA_FATURADA'
      Size = 50
    end
    object SQL_VENDAVALOR_VENDA: TBCDField
      AutoGenerateValue = arDefault
      FieldName = 'VALOR_VENDA'
      Origin = 'VALOR_VENDA'
      Precision = 10
    end
    object SQL_VENDAACRESCIMO: TBCDField
      AutoGenerateValue = arDefault
      FieldName = 'ACRESCIMO'
      Origin = 'ACRESCIMO'
      Precision = 10
    end
    object SQL_VENDADESCONTO: TBCDField
      AutoGenerateValue = arDefault
      FieldName = 'DESCONTO'
      Origin = 'DESCONTO'
      Precision = 10
    end
    object SQL_VENDATOTAL_VENDA: TBCDField
      AutoGenerateValue = arDefault
      FieldName = 'TOTAL_VENDA'
      Origin = 'TOTAL_VENDA'
      Precision = 10
    end
    object SQL_VENDATROCO: TBCDField
      AutoGenerateValue = arDefault
      FieldName = 'TROCO'
      Origin = 'TROCO'
      Precision = 10
    end
    object SQL_VENDASTATUS: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'STATUS'
      Origin = 'STATUS'
      FixedChar = True
      Size = 9
    end
    object SQL_VENDAVALOR_PAGO: TBCDField
      AutoGenerateValue = arDefault
      FieldName = 'VALOR_PAGO'
      Origin = 'VALOR_PAGO'
      Precision = 10
    end
    object SQL_VENDADATA: TDateField
      AutoGenerateValue = arDefault
      FieldName = 'DATA'
      Origin = 'DATA'
    end
    object SQL_VENDAHORA: TTimeField
      AutoGenerateValue = arDefault
      FieldName = 'HORA'
      Origin = 'HORA'
    end
    object SQL_VENDAIE_CLIENTE: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'IE_CLIENTE'
      Origin = 'IE_CLIENTE'
      Size = 50
    end
    object SQL_VENDACOD_NFCE: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'COD_NFCE'
      Origin = 'COD_NFCE'
      Size = 10
    end
    object SQL_VENDATELEFONE_CLIENTE: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'TELEFONE_CLIENTE'
      Origin = 'TELEFONE_CLIENTE'
      Size = 50
    end
    object SQL_VENDARUA_CLIENTE: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'RUA_CLIENTE'
      Origin = 'RUA_CLIENTE'
      Size = 100
    end
    object SQL_VENDANUMERO_CLIENTE: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'NUMERO_CLIENTE'
      Origin = 'NUMERO_CLIENTE'
      Size = 5
    end
    object SQL_VENDABAIRRO_CLIENTE: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'BAIRRO_CLIENTE'
      Origin = 'BAIRRO_CLIENTE'
      Size = 50
    end
    object SQL_VENDACOD_VENDEDOR: TIntegerField
      AutoGenerateValue = arDefault
      FieldName = 'COD_VENDEDOR'
      Origin = 'COD_VENDEDOR'
    end
    object SQL_VENDAconveniado_id: TIntegerField
      AutoGenerateValue = arDefault
      FieldName = 'conveniado_id'
      Origin = 'conveniado_id'
    end
    object SQL_VENDAcomanda: TIntegerField
      AutoGenerateValue = arDefault
      FieldName = 'comanda'
      Origin = 'comanda'
    end
    object SQL_VENDAagrupou_venda: TBooleanField
      AutoGenerateValue = arDefault
      FieldName = 'agrupou_venda'
      Origin = 'agrupou_venda'
    end
    object SQL_VENDAIdCaixa: TIntegerField
      AutoGenerateValue = arDefault
      FieldName = 'IdCaixa'
      Origin = 'IdCaixa'
    end
    object SQL_VENDASTATUSNFe: TIntegerField
      AutoGenerateValue = arDefault
      FieldName = 'STATUSNFe'
      Origin = 'STATUSNFe'
    end
    object SQL_VENDANOTAFISCAL: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'NOTAFISCAL'
      Origin = 'NOTAFISCAL'
      Size = 10
    end
    object SQL_VENDAVENDA_TPMOV: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'VENDA_TPMOV'
      Origin = 'VENDA_TPMOV'
      Size = 10
    end
    object SQL_VENDAvenda_natureza_operacao: TIntegerField
      AutoGenerateValue = arDefault
      FieldName = 'venda_natureza_operacao'
      Origin = 'venda_natureza_operacao'
    end
    object SQL_VENDAvenda_tipo: TIntegerField
      AutoGenerateValue = arDefault
      FieldName = 'venda_tipo'
      Origin = 'venda_tipo'
    end
    object SQL_VENDAPED_NFREFERENCIA_PRODUTOR_RURAL: TIntegerField
      AutoGenerateValue = arDefault
      FieldName = 'PED_NFREFERENCIA_PRODUTOR_RURAL'
      Origin = 'PED_NFREFERENCIA_PRODUTOR_RURAL'
    end
    object SQL_VENDAPED_NFREFERENCIA_UF: TIntegerField
      AutoGenerateValue = arDefault
      FieldName = 'PED_NFREFERENCIA_UF'
      Origin = 'PED_NFREFERENCIA_UF'
    end
    object SQL_VENDAPED_NFREFERENCIA_DTEMISSAO: TDateTimeField
      AutoGenerateValue = arDefault
      FieldName = 'PED_NFREFERENCIA_DTEMISSAO'
      Origin = 'PED_NFREFERENCIA_DTEMISSAO'
    end
    object SQL_VENDAPED_NFREFERENCIA_CNPJ: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'PED_NFREFERENCIA_CNPJ'
      Origin = 'PED_NFREFERENCIA_CNPJ'
      Size = 14
    end
    object SQL_VENDAPED_NFREFERENCIA_CPF: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'PED_NFREFERENCIA_CPF'
      Origin = 'PED_NFREFERENCIA_CPF'
      Size = 11
    end
    object SQL_VENDAPED_NFREFERENCIA_IE: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'PED_NFREFERENCIA_IE'
      Origin = 'PED_NFREFERENCIA_IE'
      Size = 14
    end
    object SQL_VENDAPED_NFREFERENCIA_MODELO: TIntegerField
      AutoGenerateValue = arDefault
      FieldName = 'PED_NFREFERENCIA_MODELO'
      Origin = 'PED_NFREFERENCIA_MODELO'
    end
    object SQL_VENDAPED_NFREFERENCIA_SERIE: TIntegerField
      AutoGenerateValue = arDefault
      FieldName = 'PED_NFREFERENCIA_SERIE'
      Origin = 'PED_NFREFERENCIA_SERIE'
    end
    object SQL_VENDAPED_NFREFERENCIA_REFCTE: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'PED_NFREFERENCIA_REFCTE'
      Origin = 'PED_NFREFERENCIA_REFCTE'
      Size = 40
    end
    object SQL_VENDAPED_NFREFERENCIA_ECF_NECF: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'PED_NFREFERENCIA_ECF_NECF'
      Origin = 'PED_NFREFERENCIA_ECF_NECF'
      Size = 3
    end
    object SQL_VENDAPED_NFREFERENCIA_ECF_Modelo: TIntegerField
      AutoGenerateValue = arDefault
      FieldName = 'PED_NFREFERENCIA_ECF_Modelo'
      Origin = 'PED_NFREFERENCIA_ECF_Modelo'
    end
    object SQL_VENDAPED_NFREFERENCIA_ECF_NCOO: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'PED_NFREFERENCIA_ECF_NCOO'
      Origin = 'PED_NFREFERENCIA_ECF_NCOO'
      Size = 6
    end
    object SQL_VENDANFe_Veiculo_tpOp: TIntegerField
      AutoGenerateValue = arDefault
      FieldName = 'NFe_Veiculo_tpOp'
      Origin = 'NFe_Veiculo_tpOp'
    end
    object SQL_VENDATransportador: TIntegerField
      AutoGenerateValue = arDefault
      FieldName = 'Transportador'
      Origin = 'Transportador'
    end
    object SQL_VENDATransportador_Veiculo: TIntegerField
      AutoGenerateValue = arDefault
      FieldName = 'Transportador_Veiculo'
      Origin = 'Transportador_Veiculo'
    end
    object SQL_VENDANFe_QVOL: TIntegerField
      AutoGenerateValue = arDefault
      FieldName = 'NFe_QVOL'
      Origin = 'NFe_QVOL'
    end
    object SQL_VENDANFe_ESP: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'NFe_ESP'
      Origin = 'NFe_ESP'
      Size = 60
    end
    object SQL_VENDANFe_MARCA: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'NFe_MARCA'
      Origin = 'NFe_MARCA'
      Size = 60
    end
    object SQL_VENDANFe_NVOL: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'NFe_NVOL'
      Origin = 'NFe_NVOL'
      Size = 60
    end
    object SQL_VENDANFe_PESOL: TBCDField
      AutoGenerateValue = arDefault
      FieldName = 'NFe_PESOL'
      Origin = 'NFe_PESOL'
      Precision = 10
    end
    object SQL_VENDANFe_PESOB: TBCDField
      AutoGenerateValue = arDefault
      FieldName = 'NFe_PESOB'
      Origin = 'NFe_PESOB'
      Precision = 10
    end
  end
end
