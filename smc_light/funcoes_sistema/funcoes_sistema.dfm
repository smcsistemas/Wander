object frm_funcoes_sistema: Tfrm_funcoes_sistema
  Left = 0
  Top = 0
  BorderIcons = [biSystemMenu]
  BorderStyle = bsSingle
  Caption = 'Fun'#231#245'es'
  ClientHeight = 204
  ClientWidth = 382
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
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 13
  object GroupBox1: TGroupBox
    Left = 8
    Top = 8
    Width = 369
    Height = 193
    Caption = '  Consultar Faixa NF-e '
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -12
    Font.Name = 'Tahoma'
    Font.Style = [fsBold]
    ParentFont = False
    TabOrder = 0
    object Label1: TLabel
      Left = 32
      Top = 26
      Width = 71
      Height = 28
      Caption = 'Modelo NF :'#13#10
    end
    object Label2: TLabel
      Left = 65
      Top = 123
      Width = 38
      Height = 14
      Caption = 'S'#233'rie: '
    end
    object Label3: TLabel
      Left = 57
      Top = 155
      Width = 46
      Height = 14
      Caption = 'Cod UF:'
    end
    object Label4: TLabel
      Left = 10
      Top = 90
      Width = 93
      Height = 14
      Caption = 'Tipo Ambiente:'
    end
    object Label5: TLabel
      Left = 21
      Top = 58
      Width = 82
      Height = 14
      Caption = 'Tipo Emiss'#227'o:'
    end
    object Label6: TLabel
      Left = 174
      Top = 58
      Width = 81
      Height = 14
      Caption = 'Ano Emiss'#227'o:'
    end
    object Label7: TLabel
      Left = 213
      Top = 125
      Width = 42
      Height = 14
      Caption = 'NF Fim:'
    end
    object Label8: TLabel
      Left = 200
      Top = 91
      Width = 55
      Height = 14
      Caption = 'NF Inicio:'
    end
    object Label9: TLabel
      Left = 227
      Top = 24
      Width = 28
      Height = 14
      Caption = 'M'#234's:'
    end
    object cxButton1: TcxButton
      Left = 234
      Top = 153
      Width = 110
      Height = 25
      Caption = 'Consultar'
      LookAndFeel.NativeStyle = False
      LookAndFeel.SkinName = 'Office2013White'
      TabOrder = 9
      OnClick = cxButton1Click
    end
    object cod_uf: TEdit
      Left = 112
      Top = 152
      Width = 49
      Height = 22
      TabOrder = 8
      Text = '11'
    end
    object emissao: TEdit
      Left = 112
      Top = 55
      Width = 49
      Height = 22
      TabOrder = 2
      Text = '1'
    end
    object modelo: TEdit
      Left = 112
      Top = 21
      Width = 49
      Height = 22
      TabOrder = 0
      Text = '65'
    end
    object ambiente: TEdit
      Left = 112
      Top = 87
      Width = 49
      Height = 22
      TabOrder = 4
      Text = '1'
    end
    object ano: TEdit
      Left = 264
      Top = 55
      Width = 49
      Height = 22
      TabOrder = 3
      Text = '17'
    end
    object nf_fim: TEdit
      Left = 264
      Top = 122
      Width = 80
      Height = 22
      TabOrder = 7
      Text = '1000'
    end
    object nf_inicio: TEdit
      Left = 264
      Top = 88
      Width = 80
      Height = 22
      TabOrder = 5
      Text = '1'
    end
    object serie: TEdit
      Left = 112
      Top = 118
      Width = 49
      Height = 22
      TabOrder = 6
      Text = '001'
    end
    object mes: TEdit
      Left = 264
      Top = 21
      Width = 49
      Height = 22
      TabOrder = 1
      Text = '01'
    end
  end
end
