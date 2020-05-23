object frm_inf_complemento: Tfrm_inf_complemento
  Left = 0
  Top = 0
  BorderIcons = [biSystemMenu]
  BorderStyle = bsSingle
  Caption = 'Informa'#231'oes Complementares'
  ClientHeight = 180
  ClientWidth = 594
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  Position = poMainFormCenter
  PixelsPerInch = 96
  TextHeight = 13
  object gpFisica: TGroupBox
    Left = 0
    Top = 0
    Width = 594
    Height = 180
    Align = alClient
    Color = 16382457
    Font.Charset = ANSI_CHARSET
    Font.Color = clWindowText
    Font.Height = -13
    Font.Name = 'Tahoma'
    Font.Style = [fsBold]
    ParentBackground = False
    ParentColor = False
    ParentFont = False
    TabOrder = 0
    ExplicitHeight = 147
    object Label1: TLabel
      Left = 54
      Top = 12
      Width = 37
      Height = 18
      Caption = 'Sexo:'
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -15
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentFont = False
    end
    object Label20: TLabel
      Left = 391
      Top = 11
      Width = 77
      Height = 18
      Caption = 'Estado Civil:'
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -15
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentFont = False
    end
    object Label11: TLabel
      Left = 24
      Top = 88
      Width = 67
      Height = 18
      Caption = 'Nome Pai:'
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -15
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentFont = False
    end
    object Label12: TLabel
      Left = 13
      Top = 116
      Width = 77
      Height = 18
      Caption = 'Nome M'#227'e:'
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -15
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentFont = False
    end
    object Label6: TLabel
      Left = 254
      Top = 37
      Width = 89
      Height = 18
      Caption = 'Org. Emissor:'
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -15
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentFont = False
    end
    object Label30: TLabel
      Left = 406
      Top = 39
      Width = 62
      Height = 17
      Caption = 'Emiss'#227'o:'
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -15
      Font.Name = 'Helvetica Neue'
      Font.Style = []
      ParentFont = False
    end
    object Label2: TLabel
      Left = 230
      Top = 11
      Width = 81
      Height = 18
      Caption = 'Nascimento:'
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -15
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentFont = False
    end
    object Label32: TLabel
      Left = 307
      Top = 61
      Width = 92
      Height = 18
      Caption = 'Nacionalidade:'
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -15
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentFont = False
    end
    object Label9: TLabel
      Left = 67
      Top = 37
      Width = 24
      Height = 18
      Caption = 'RG:'
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -15
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentFont = False
    end
    object Label3: TLabel
      Left = 352
      Top = 88
      Width = 47
      Height = 18
      Caption = 'Celular:'
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -15
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentFont = False
    end
    object Label4: TLabel
      Left = 352
      Top = 116
      Width = 47
      Height = 18
      Caption = 'Celular:'
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -15
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentFont = False
    end
    object Label5: TLabel
      Left = 6
      Top = 61
      Width = 85
      Height = 18
      Caption = 'Naturalidade:'
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -15
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentFont = False
    end
    object cxDBTextEdit5: TcxDBTextEdit
      Left = 95
      Top = 87
      DataBinding.DataField = 'NOME_PAI'
      ParentFont = False
      Properties.CharCase = ecUpperCase
      Style.Font.Charset = ANSI_CHARSET
      Style.Font.Color = clWindowText
      Style.Font.Height = -11
      Style.Font.Name = 'Tahoma'
      Style.Font.Style = [fsBold]
      Style.TextStyle = []
      Style.IsFontAssigned = True
      TabOrder = 7
      Width = 191
    end
    object DBComboBox2: TDBComboBox
      Left = 475
      Top = 7
      Width = 96
      Height = 22
      Style = csOwnerDrawFixed
      CharCase = ecUpperCase
      DataField = 'ESTADO_CIVIL'
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = []
      Items.Strings = (
        'CASADO (A)'
        'SOLTEIRO (A)'
        'VIUVO (A)'
        'DIVORCIADO (A)')
      ParentFont = False
      TabOrder = 5
    end
    object dbcbSexo: TDBComboBox
      Left = 95
      Top = 10
      Width = 121
      Height = 22
      Style = csOwnerDrawFixed
      CharCase = ecUpperCase
      DataField = 'SEXO'
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = []
      Items.Strings = (
        'MASCULINO'
        'FEMININO')
      ParentFont = False
      TabOrder = 3
    end
    object dbedtOE: TcxDBTextEdit
      Tag = 3
      Left = 347
      Top = 36
      DataBinding.DataField = 'ORGAO_EMISSOR'
      ParentFont = False
      Properties.CharCase = ecUpperCase
      Style.Color = clHighlightText
      Style.Font.Charset = ANSI_CHARSET
      Style.Font.Color = clWindowText
      Style.Font.Height = -11
      Style.Font.Name = 'Tahoma'
      Style.Font.Style = []
      Style.IsFontAssigned = True
      TabOrder = 2
      Width = 35
    end
    object cxDBTextEdit6: TcxDBTextEdit
      Tag = 3
      Left = 95
      Top = 36
      DataBinding.DataField = 'NATURALIDADE'
      ParentFont = False
      Properties.CharCase = ecUpperCase
      Style.Font.Charset = ANSI_CHARSET
      Style.Font.Color = clWindowText
      Style.Font.Height = -11
      Style.Font.Name = 'Tahoma'
      Style.Font.Style = [fsBold]
      Style.TextStyle = []
      Style.IsFontAssigned = True
      TabOrder = 4
      Width = 121
    end
    object cxDBTextEdit7: TcxDBTextEdit
      Tag = 3
      Left = 403
      Top = 60
      DataBinding.DataField = 'NACIONALIDADE'
      ParentFont = False
      Properties.CharCase = ecUpperCase
      Style.Font.Charset = ANSI_CHARSET
      Style.Font.Color = clWindowText
      Style.Font.Height = -11
      Style.Font.Name = 'Tahoma'
      Style.Font.Style = [fsBold]
      Style.TextStyle = []
      Style.IsFontAssigned = True
      TabOrder = 6
      Width = 168
    end
    object cxDBTextEdit3: TcxDBTextEdit
      Tag = 3
      Left = 95
      Top = 114
      DataBinding.DataField = 'NOME_MAE'
      ParentFont = False
      Properties.CharCase = ecUpperCase
      Style.Font.Charset = ANSI_CHARSET
      Style.Font.Color = clWindowText
      Style.Font.Height = -11
      Style.Font.Name = 'Tahoma'
      Style.Font.Style = []
      Style.IsFontAssigned = True
      TabOrder = 8
      Width = 191
    end
    object edt_data: TcxDateEdit
      Left = 315
      Top = 10
      ParentFont = False
      Style.Font.Charset = ANSI_CHARSET
      Style.Font.Color = clWindowText
      Style.Font.Height = -11
      Style.Font.Name = 'Tahoma'
      Style.Font.Style = []
      Style.IsFontAssigned = True
      TabOrder = 0
      Width = 67
    end
    object DBEdit73: TcxDateEdit
      Left = 475
      Top = 33
      ParentFont = False
      Style.Font.Charset = ANSI_CHARSET
      Style.Font.Color = clWindowText
      Style.Font.Height = -11
      Style.Font.Name = 'Tahoma'
      Style.Font.Style = []
      Style.IsFontAssigned = True
      TabOrder = 1
      Width = 96
    end
    object cxDBTextEdit1: TcxDBTextEdit
      Left = 403
      Top = 87
      DataBinding.DataField = 'NOME_PAI'
      ParentFont = False
      Properties.CharCase = ecUpperCase
      Style.Font.Charset = ANSI_CHARSET
      Style.Font.Color = clWindowText
      Style.Font.Height = -11
      Style.Font.Name = 'Tahoma'
      Style.Font.Style = [fsBold]
      Style.TextStyle = []
      Style.IsFontAssigned = True
      TabOrder = 9
      Width = 168
    end
    object cxDBTextEdit2: TcxDBTextEdit
      Tag = 3
      Left = 403
      Top = 114
      DataBinding.DataField = 'NOME_MAE'
      ParentFont = False
      Properties.CharCase = ecUpperCase
      Style.Font.Charset = ANSI_CHARSET
      Style.Font.Color = clWindowText
      Style.Font.Height = -11
      Style.Font.Name = 'Tahoma'
      Style.Font.Style = []
      Style.IsFontAssigned = True
      TabOrder = 10
      Width = 168
    end
    object cxDBTextEdit4: TcxDBTextEdit
      Tag = 3
      Left = 95
      Top = 60
      DataBinding.DataField = 'NATURALIDADE'
      ParentFont = False
      Properties.CharCase = ecUpperCase
      Style.Font.Charset = ANSI_CHARSET
      Style.Font.Color = clWindowText
      Style.Font.Height = -11
      Style.Font.Name = 'Tahoma'
      Style.Font.Style = [fsBold]
      Style.TextStyle = []
      Style.IsFontAssigned = True
      TabOrder = 11
      Width = 120
    end
    object cxButton23: TcxButton
      Left = 164
      Top = 146
      Width = 84
      Height = 23
      Caption = 'Gravar'
      LookAndFeel.NativeStyle = False
      LookAndFeel.SkinName = 'Metropolis'
      OptionsImage.Glyph.Data = {
        36040000424D3604000000000000360000002800000010000000100000000100
        2000000000000004000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        000000000000000000000000000000000000000000000000000000000000562D
        4580AB5989FFAB5989FFAB5989FFAB5989FFAB5989FFAB5989FFAB5989FFAB59
        89FFAB5989FFAB5989FFAB5989FFAB5989FF562D45800000000000000000AB59
        89FFAB5989FFAB5989FFFFFFFEFFFFFFFEFFAB5989FFAB5989FFFFFFFEFFFFFF
        FEFFFFFFFEFFFFFFFEFFAB5989FFAB5989FFAB5989FF0000000000000000AB59
        89FFAB5989FFAB5989FFFFFFFEFFFFFFFEFFAB5989FFAB5989FFFFFFFEFFFFFF
        FEFFFFFFFEFFFFFFFEFFAB5989FFAB5989FFAB5989FF0000000000000000AB59
        89FFAB5989FFAB5989FFFFFFFEFFFFFFFEFFAB5989FFAB5989FFFFFFFEFFFFFF
        FEFFFFFFFEFFFFFFFEFFAB5989FFAB5989FFAB5989FF0000000000000000AB59
        89FFAB5989FFAB5989FFFFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFFFFFFFEFFFFFF
        FEFFFFFFFEFFFFFFFEFFAB5989FFAB5989FFAB5989FF0000000000000000AB59
        89FFAB5989FFAB5989FFAB5989FFAB5989FFAB5989FFAB5989FFAB5989FFAB59
        89FFAB5989FFAB5989FFAB5989FFAB5989FFAB5989FF0000000000000000AB59
        89FFAB5989FFAB5989FFAB5989FFAB5989FFAB5989FFAB5989FFAB5989FFAB59
        89FFAB5989FFAB5989FFAB5989FFAB5989FFAB5989FF0000000000000000AB59
        89FFAB5989FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFAB5989FFAB5989FF0000000000000000AB59
        89FFAB5989FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFAB5989FFAB5989FF0000000000000000AB59
        89FFAB5989FFFFFFFFFFFFFFFFFFC1C1C1FFC1C1C1FFC1C1C1FFC1C1C1FFC1C1
        C1FFC1C1C1FFFFFFFFFFFFFFFFFFAB5989FFAB5989FF0000000000000000AB59
        89FFAB5989FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFAB5989FFAB5989FF0000000000000000AB59
        89FFAB5989FFFFFFFFFFFFFFFFFFC1C1C1FFC1C1C1FFC1C1C1FFC1C1C1FFC1C1
        C1FFC1C1C1FFFFFFFFFFFFFFFFFFAB5989FFAB5989FF0000000000000000AB59
        89FFAB5989FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFAB5989FFAB5989FF0000000000000000AB59
        89FFAB5989FFAB5989FFAB5989FFAB5989FFAB5989FFAB5989FFAB5989FFAB59
        89FFAB5989FFAB5989FFAB5989FFAB5989FFAB5989FF00000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000}
      TabOrder = 12
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -12
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object cxButton24: TcxButton
      Left = 259
      Top = 146
      Width = 84
      Height = 23
      Caption = 'Alterar'
      LookAndFeel.NativeStyle = False
      LookAndFeel.SkinName = 'Metropolis'
      OptionsImage.Glyph.Data = {
        36040000424D3604000000000000360000002800000010000000100000000100
        2000000000000004000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        00000000000000000000000000003827174DB8824DFF00000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        000000000000000000003827174DB8824DFFB8824DFF00000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000003827174DB8824DFFB8824DFFB8824DFFB5804CFB9F7042DC7955
        32A747321E630E0A061400000000000000000000000000000000000000000000
        00003827174DB8824DFFB8824DFFB8824DFFB8824DFFB8824DFFB8824DFFB882
        4DFFB8824DFF7C5834AC2B1E123B000000000000000000000000000000000000
        0000000000003827174DB8824DFFB8824DFFB8824DFFB8824DFFB8824DFFB882
        4DFFB8824DFFB8824DFF855E38B91E150C290000000000000000000000000000
        0000484F3879212419373827174DB8824DFFB8824DFF060402082A1E123A6144
        2886A27344E1B8824DFFB8824DFF5D4227810000000000000000000000000000
        000077845DC98E9D6FF0212419373827174DB8824DFF00000000000000000000
        00004C36206AB8824DFFB8824DFF91663DC90000000000000000000000000000
        000093A273F897A776FF8E9D6FF0020302040000000000000000000000000000
        000003020104AD7A48F0B8824DFFB37E4BF80000000000000000000000000000
        000077845DC997A776FF97A776FF3F45316A00000000000000000000000097A7
        76FF2E32244D281C1137AD7A48F091663DC90000000000000000000000000000
        00004C543C8197A776FF97A776FF859368E14F583E8622261B3A0505040897A7
        76FF97A776FF2E32244D281C1137573E25790000000000000000000000000000
        0000181B13296E7956B997A776FF97A776FF97A776FF97A776FF97A776FF97A7
        76FF97A776FF97A776FF2E32244D000000000000000000000000000000000000
        00000000000023271B3B667150AC97A776FF97A776FF97A776FF97A776FF97A7
        76FF97A776FF97A776FF97A776FF2E32244D0000000000000000000000000000
        000000000000000000000C0D09143B412E63636D4DA7829066DC95A474FB97A7
        76FF97A776FF97A776FF2E32244D000000000000000000000000000000000000
        00000000000000000000000000000000000000000000000000000000000097A7
        76FF97A776FF2E32244D00000000000000000000000000000000000000000000
        00000000000000000000000000000000000000000000000000000000000097A7
        76FF2E32244D0000000000000000000000000000000000000000}
      TabOrder = 13
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -12
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object cxButton25: TcxButton
      Left = 355
      Top = 146
      Width = 84
      Height = 23
      Caption = 'Cancelar'
      LookAndFeel.NativeStyle = False
      LookAndFeel.SkinName = 'Metropolis'
      OptionsImage.Glyph.Data = {
        36040000424D3604000000000000360000002800000010000000100000000100
        200000000000000400000000000000000000000000000000000000000000131C
        3C471E2B5F700000000000000000000000000000000000000000000000000000
        00000000000000000000000000001F2D6375131C3C4700000000131C3C474260
        D0F64463D8FF1F2D617300000000000000000000000000000000000000000000
        00000000000000000000202E65774463D8FF4260D1F7131C3C472130687B4463
        D8FF4463D8FF4463D8FF1F2D6173000000000000000000000000000000000000
        000000000000202E65774463D8FF4463D8FF4463D8FF212F677A000000002231
        6C7F4463D8FF4463D8FF4463D8FF1F2D61730000000000000000000000000000
        0000202E65774463D8FF4463D8FF4463D8FF22316B7E00000000000000000000
        000022316C7F4463D8FF4463D8FF4463D8FF1F2D61730000000000000000202E
        65774463D8FF4463D8FF4463D8FF22316B7E0000000000000000000000000000
        00000000000022316C7F4463D8FF4463D8FF4463D8FF1F2D6173202E65774463
        D8FF4463D8FF4463D8FF22316B7E000000000000000000000000000000000000
        0000000000000000000022316C7F4463D8FF4463D8FF4463D8FF4463D8FF4463
        D8FF4463D8FF22316B7E00000000000000000000000000000000000000000000
        000000000000000000000000000022316C7F4463D8FF4463D8FF4463D8FF4463
        D8FF22316B7E0000000000000000000000000000000000000000000000000000
        0000000000000000000000000000202E65774463D8FF4463D8FF4463D8FF4463
        D8FF1F2D62740000000000000000000000000000000000000000000000000000
        00000000000000000000202E65774463D8FF4463D8FF4463D8FF4463D8FF4463
        D8FF4463D8FF1F2D627400000000000000000000000000000000000000000000
        000000000000202E65774463D8FF4463D8FF4463D8FF22316B7E22316C7F4463
        D8FF4463D8FF4463D8FF1F2D6274000000000000000000000000000000000000
        0000202E65774463D8FF4463D8FF4463D8FF21316A7D00000000000000002231
        6C7F4463D8FF4463D8FF4463D8FF1F2D6274000000000000000000000000202E
        65774463D8FF4463D8FF4463D8FF21316A7D0000000000000000000000000000
        000022316C7F4463D8FF4463D8FF4463D8FF1F2D6274000000001F2D63754463
        D8FF4463D8FF4463D8FF21316A7D000000000000000000000000000000000000
        00000000000022316C7F4463D8FF4463D8FF4463D8FF1E2C6172151E414D4261
        D3F94463D8FF21316A7D00000000000000000000000000000000000000000000
        0000000000000000000022316C7F4463D8FF4261D3F9151E424E00000000151E
        414D212F677A0000000000000000000000000000000000000000000000000000
        00000000000000000000000000002130687B151E414D00000000}
      TabOrder = 14
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -12
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      ParentFont = False
    end
  end
end
