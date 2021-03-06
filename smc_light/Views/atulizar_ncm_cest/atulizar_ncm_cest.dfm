object frm_atualizar_ncm_cest: Tfrm_atualizar_ncm_cest
  Left = 0
  Top = 0
  BorderIcons = [biSystemMenu]
  BorderStyle = bsSingle
  Caption = 'Atualizar NCM | CEST'
  ClientHeight = 651
  ClientWidth = 594
  Color = clBtnFace
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
  object Panel5: TPanel
    Left = 0
    Top = 400
    Width = 594
    Height = 160
    Align = alBottom
    TabOrder = 4
    object Label3: TLabel
      Left = 1
      Top = 1
      Width = 592
      Height = 14
      Align = alTop
      Alignment = taCenter
      Caption = 
        'Rela'#231#227'o de CEST em duplicidade que n'#227'o foram atulizados no cadas' +
        'tro de produtos: 0'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -12
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      ParentFont = False
      Layout = tlCenter
      ExplicitWidth = 528
    end
    object memoCEST: TcxMemo
      Left = 1
      Top = 23
      Align = alBottom
      Lines.Strings = (
        'cxMemo1')
      ParentFont = False
      Properties.ScrollBars = ssVertical
      Style.BorderStyle = ebsUltraFlat
      Style.Font.Charset = DEFAULT_CHARSET
      Style.Font.Color = clWindowText
      Style.Font.Height = -12
      Style.Font.Name = 'Tahoma'
      Style.Font.Style = []
      Style.IsFontAssigned = True
      TabOrder = 0
      Height = 136
      Width = 592
    end
  end
  object grid_otica: TcxGrid
    Left = 0
    Top = 22
    Width = 594
    Height = 378
    Align = alClient
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'Tahoma'
    Font.Style = [fsBold]
    ParentFont = False
    TabOrder = 0
    LevelTabs.Style = 2
    LockedStateImageOptions.AssignedValues = [lsiavFont]
    LockedStateImageOptions.Font.Charset = DEFAULT_CHARSET
    LockedStateImageOptions.Font.Color = clWindowText
    LockedStateImageOptions.Font.Height = -11
    LockedStateImageOptions.Font.Name = 'Tahoma'
    LockedStateImageOptions.Font.Style = []
    LookAndFeel.Kind = lfFlat
    LookAndFeel.NativeStyle = False
    LookAndFeel.SkinName = 'Office2013LightGray'
    object grid_oticaDBBandedTableView1: TcxGridDBBandedTableView
      Navigator.Buttons.CustomButtons = <>
      DataController.Summary.DefaultGroupSummaryItems = <>
      DataController.Summary.FooterSummaryItems = <>
      DataController.Summary.SummaryGroups = <>
      OptionsCustomize.BandMoving = False
      OptionsCustomize.BandSizing = False
      OptionsData.CancelOnExit = False
      OptionsData.Deleting = False
      OptionsData.DeletingConfirmation = False
      OptionsData.Editing = False
      OptionsData.Inserting = False
      OptionsView.ColumnAutoWidth = True
      OptionsView.GroupByBox = False
      Bands = <
        item
          Caption = 'PROD_NCMSH'
          Width = 20
        end
        item
          Caption = 'CEST'
          Width = 20
        end
        item
          Caption = 'Descri'#231#227'o do CEST'
          Width = 150
        end>
    end
    object grid_oticaLevel1: TcxGridLevel
      Caption = 'DATA'
      GridView = grid_oticaDBBandedTableView1
    end
  end
  object Panel1: TPanel
    Left = 0
    Top = 0
    Width = 594
    Height = 22
    Align = alTop
    TabOrder = 1
    object Label4: TLabel
      Left = 1
      Top = 1
      Width = 592
      Height = 20
      Align = alClient
      Alignment = taCenter
      Caption = 'Lista de CEST - 1000'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -12
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      ParentFont = False
      Layout = tlCenter
      ExplicitWidth = 127
      ExplicitHeight = 14
    end
  end
  object Panel2: TPanel
    Left = 0
    Top = 560
    Width = 594
    Height = 50
    Align = alBottom
    TabOrder = 2
    object ProgressBar1: TProgressBar
      Left = 1
      Top = 1
      Width = 592
      Height = 17
      Align = alTop
      TabOrder = 0
    end
    object Panel3: TPanel
      Left = 1
      Top = 18
      Width = 592
      Height = 31
      Align = alBottom
      TabOrder = 1
      object Label1: TLabel
        Left = 8
        Top = 8
        Width = 186
        Height = 14
        Caption = 'Total de novos CEST inclu'#237'dos:'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -12
        Font.Name = 'Tahoma'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object Label2: TLabel
        Left = 200
        Top = 8
        Width = 8
        Height = 14
        Caption = '0'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -12
        Font.Name = 'Tahoma'
        Font.Style = [fsBold]
        ParentFont = False
      end
    end
  end
  object Panel4: TPanel
    Left = 0
    Top = 610
    Width = 594
    Height = 41
    Align = alBottom
    TabOrder = 3
    object cxButton6: TcxButton
      Left = 496
      Top = 1
      Width = 97
      Height = 39
      Align = alRight
      Caption = 'Sair'
      LookAndFeel.NativeStyle = False
      LookAndFeel.SkinName = 'Office2013White'
      OptionsImage.Glyph.Data = {
        36100000424D3610000000000000360000002800000020000000200000000100
        2000000000000010000000000000000000000000000000000000000000000000
        0000000000000000000100000001000000010000000100000001000000010000
        0001000000010000000100000001000000010000000100000001000000010000
        0001000000010000000100000001000000010000000100000001000000010000
        0001000000010000000100000001000000000000000000000000000000000000
        0001000000010000000200000005000000060000000600000006000000060000
        0006000000070000000700000007000000070000000700000007000000070000
        0007000000070000000700000007000000070000000700000007000000070000
        0007000000060000000600000003000000010000000100000000000000000000
        0001000000040000000B00000013000000170000001800000019000000190000
        001900000019000000190000001A0000001A0000001A0000001A0000001A0000
        001B0000001B0000001B0000001B0000001B0000001B0000001C0000001C0000
        001C0000001B000000160000000E000000050000000100000000000000010000
        00020000000A0E0A2C5B2A208BEB2F2399FF2F2399FF2E2298FF2D2198FF2C20
        96FF2C2096FF2B1F95FF2B1F95FF2A1E94FF2B1D93FF291C93FF291B93FF291A
        93FF291A92FF271992FF271991FF271990FF26188FFF26178FFF26168FFF2416
        8EFF25168DFF201380EC0A06275E0000000D0000000300000001000000010000
        0004000000112D238DE8272DB1FF222FB9FF212DB7FF202DB7FF1F2BB6FF1F2B
        B6FF1F2BB6FF1E2AB6FF1E2AB6FF1F2BB4FF1E2BB6FF1E2AB6FF1E2AB6FF1E2A
        B4FF1D29B4FF1D29B4FF1C27B4FF1C28B4FF1B27B4FF1B27B3FF1B27B3FF1A26
        B3FF1B26B3FF1D20A8FF21147FE9000000150000000600000001000000010000
        000500000014342A9EFF2E3EC6FF2A3BC4FF2A3AC5FF2A3AC4FF2A3AC4FF2A3A
        C4FF2A3AC3FF2A38C4FF2A38C4FF2A38C4FF2937C3FF2837C3FF2A37C3FF2837
        C4FF2836C3FF2736C2FF2836C2FF2735C2FF2735C2FF2635C1FF2533C1FF2533
        C1FF2533C1FF1C27B3FF261890FF000000190000000600000001000000010000
        000500000015372DA1FF3142C7FF2D3DC6FF2E3CC5FF2D3EC5FF2D3DC6FF2C3C
        C5FF2D3CC5FF2C3DC5FF2C3CC5FF2D3BC5FF2C3CC4FF2C3AC4FF2B39C4FF2B3B
        C4FF2B39C4FF2B39C3FF2A38C3FF2939C3FF2937C3FF2837C3FF2736C3FF2836
        C2FF2735C1FF1D29B4FF281A92FF0000001A0000000700000001000000000000
        000500000014382FA4FF3747C9FF3041C7FF3041C7FF2F40C7FF3041C7FF2F40
        C7FF2F40C7FF2F40C6FF303EC6FF2F3FC6FF2E3FC6FF2F3DC6FF2E3EC7FF2E3C
        C6FF2D3DC6FF2D3BC6FF2C3CC5FF2D3AC5FF2B39C4FF2B39C4FF2B39C4FF2A38
        C4FF2937C4FF1F2CB7FF2A1D94FF000000190000000600000001000000000000
        0005000000133B32A5FF3A4CCAFF3243C9FF3343C9FF3243C8FF3243C9FF3242
        C8FF3646C9FF4A5BD2FF5363D5FF4757D1FF3242C9FF3142C8FF3142C8FF3241
        C8FF4555D0FF5060D4FF4857D1FF3340C7FF2E3EC7FF2E3EC6FF2E3BC5FF2D3B
        C5FF2B3CC5FF222DB8FF2D2095FF000000190000000600000001000000000000
        0005000000133D34A8FF3E4FCEFF3547CAFF3547CAFF3546CAFF3547CBFF3849
        CCFF4F5DD2FF444BBCFF3D41B2FF464DBEFF4C5CD1FF3545C9FF3545C9FF4B5B
        D1FF424ABBFF393BACFF3E44B6FF4B59CFFF3444C9FF313FC7FF303FC8FF2F40
        C7FF2F3EC6FF2430BBFF2F2198FF000000180000000600000001000000000000
        0004000000123E36AAFF4357CFFF384ACCFF3849CCFF384ACDFF394ACCFF4E5E
        D2FF4046B6FF9597D4FFE8E8F6FF8081CBFF4148B8FF4F5FD4FF4E5ED4FF3F45
        B7FF7E80C9FFE7E8F5FF9293D0FF3A3EB0FF4A58CEFF3444C9FF3243C8FF3242
        C8FF3142C8FF2734BCFF30249AFF000000170000000600000001000000000000
        0004000000114139ADFF495CD2FF3B4ECDFF3B4FCEFF3C4DCEFF3B4CCEFF444A
        BAFF9597D4FFF9F4F1FFF5ECE6FFF9F5F4FF8182CBFF4046B7FF3F45B6FF7F81
        C9FFF9F5F3FFF4EBE5FFF9F4F1FF9192D0FF3C40B3FF3647CBFF3646CAFF3545
        C9FF3444C9FF2A38BEFF32269CFF000000160000000600000001000000000000
        000400000010413BAFFF4D61D3FF3E52D0FF3E52CFFF3E51D0FF3E52CFFF3B3E
        AFFFE3DADCFFE7D9D1FFF4EAE4FFF4EBE4FFF9F5F4FF7F81C9FF7F80C8FFF9F5
        F4FFF4E9E2FFF4E9E2FFF3E8E1FFE9E2E5FF3233A6FF394ACCFF394ACCFF3849
        CCFF3747CBFF2B3CC1FF34299EFF000000160000000500000001000000000000
        000400000010443EB2FF5267D7FF4155D2FF4156D1FF4255D1FF4155D1FF3C44
        B9FF6E68AFFFD6C2BBFFE9DAD2FFF4EBE5FFF4EBE5FFF9F6F5FFF9F6F4FFF4EA
        E4FFF4EAE3FFF4EAE3FFE5D6D0FF6A64ADFF343BB1FF3D4DCEFF3B4CCEFF3B4C
        CDFF3A4BCDFF2F3EC3FF372DA1FF000000150000000500000001000000000000
        00040000000F4540B4FF586CD8FF4559D3FF465AD3FF4458D3FF4559D3FF4457
        D2FF3940B4FF6D66AEFFD7C2BCFFE9DBD3FFF6ECE6FFF6ECE5FFF4ECE5FFF4EB
        E5FFF6EBE5FFE7D8D1FF6A63ABFF3339AEFF4051CEFF3F51D0FF3F51CFFF3D50
        CFFF3D4FCEFF3141C5FF392FA3FF000000140000000500000001000000000000
        00040000000E4742B6FF5C72DAFF475CD5FF485DD4FF475BD4FF495CD5FF485C
        D5FF495CD3FF3E44B5FF6D67AFFFE9DAD4FFF7EDE9FFF6EDE9FFF6EDE8FFF6ED
        E6FFF4EBE5FF706AB4FF393EB0FF4456D0FF4356D2FF4354D2FF4153D1FF4153
        D1FF3F52D0FF3545C8FF3B31A5FF000000130000000500000000000000000000
        00030000000E4A45B9FF6178DDFF4B61D7FF4B60D6FF4B60D6FF4B5FD6FF4C60
        D6FF6074DBFF4247B5FF7A79C1FFF5EFE9FFF7F0E9FFF6EFE9FFF6EFE9FFF6EF
        E9FFF4ECE7FF7977BFFF3C3FB0FF5E70DAFF475AD4FF4758D3FF4558D2FF4457
        D2FF4356D1FF3849CAFF3B33A8FF000000130000000500000000000000000000
        00030000000D4C47BBFF667CDEFF4D64D8FF4E64D8FF4E64D7FF4D62D7FF6174
        DCFF484CB8FF8080C7FFFAF8F7FFF7F0EBFFF7F1EBFFF7F0EBFFF7F0EAFFF7F0
        EAFFF7F0EAFFFAF7F7FF7A7AC3FF3E42B0FF5C6FDAFF4A5CD5FF485CD4FF465A
        D4FF475AD3FF3A4CCCFF3E36AAFF000000120000000500000000000000000000
        00030000000C4D49BDFF6A82E0FF5067DAFF5066D9FF5066D9FF5166D9FF4C53
        BCFF7D7CC5FFFAF8F7FFF8F2EFFFF8F1EDFFF8F2ECFFE9DDD8FFDECEC8FFEADE
        D8FFF7F0EBFFF7F0EBFFFAF8F7FF7775C0FF4348B4FF4C5FD6FF4B5DD6FF4A5E
        D5FF4A5CD5FF3E50CEFF3E38ACFF000000110000000400000000000000000000
        00030000000C4D4BC0FF6E86E2FF536ADBFF5369DBFF5D73DCFF6F83E1FF3A3A
        A9FFE8E2E7FFEDE3DEFFF9F2EFFFF8F3EFFFE8DDD9FF6F68ADFF6D65A9FFD8C6
        BFFFEADFD8FFF8F2ECFFF7F1ECFFEDE9EEFF2F2D9EFF6073DCFF5367D9FF4D61
        D7FF4C5FD7FF4155D0FF413BAFFF000000110000000400000000000000000000
        00030000000B4F4DC2FF728AE4FF5E74DEFF798CE4FF8396E6FF8396E6FF4C51
        B7FF8179B0FFDCCBC4FFEADFDCFFE7DBD7FF6F68ADFF474AB2FF4649B2FF6C64
        A9FFD8C7C0FFE7DCD7FFEBDFD9FF7E75B0FF4043AFFF6E81E0FF6C7FE0FF6477
        DEFF5267D9FF4457D1FF423DB1FF000000100000000400000000000000000000
        00030000000A5050C4FF8A9FE9FF879AE8FF899BE8FF889CE8FF889AE8FF8191
        E2FF4547B0FF7E75ADFFC3B1B7FF6D66ABFF484DB3FF8091E3FF7E90E3FF4549
        B0FF6B64A9FFC2B0B6FF796FAAFF393BA7FF6F7FDCFF7386E2FF7284E1FF6E82
        E1FF6C7FDFFF5366D7FF4741B4FF0000000F0000000400000000000000000000
        00020000000A6164CCFFA2B6EFFF8DA1EAFF8EA1EAFF8EA1EAFF8D9FEAFF8D9F
        EAFF8594E2FF4D51B5FF3534A2FF5358BBFF8696E6FF8899E8FF8697E8FF8292
        E4FF4E53B8FF2E2C9CFF4347AFFF7585DEFF7B8DE4FF788BE3FF7589E3FF7487
        E2FF7084E1FF6478DDFF5755BEFF0000000E0000000400000000000000000000
        0002000000096C6FD2FFA6BCF1FF93A6ECFF93A6ECFF93A6ECFF93A5ECFF92A4
        EBFF92A4EBFF91A3EBFF90A2EBFF8FA1EAFF8E9FE9FF8D9DEAFF8B9CE9FF8A9B
        E9FF8799E8FF8697E8FF8395E7FF8293E6FF8091E6FF7E90E6FF7B8DE5FF788B
        E5FF7588E3FF697CDFFF6363C5FF0000000E0000000300000000000000000000
        0002000000087075D5FFABC1F2FF99ABEDFF99ABEDFF98ABEDFF98AAEDFF97A9
        EDFF97A8ECFF96A7ECFF96A6ECFF95A5EBFF93A4EBFF92A3EBFF90A1EAFF8F9F
        EAFF8D9EEAFF8B9CE9FF899AE8FF8698E8FF8595E7FF8294E7FF8092E6FF7D90
        E6FF7A8DE5FF6E82E0FF6768C8FF0000000D0000000300000000000000000000
        000200000008757AD8FFB1C5F3FF9DB1EFFF9DB0EFFF9DB0EFFF9DAFEFFF9DAE
        EEFF9BADEEFF9BACEEFF9AABEDFF99AAEDFF98A8EDFF96A7ECFF95A6ECFF93A4
        EBFF91A3EBFF8FA0EAFF8D9FEAFF8B9DE9FF889BE9FF8799E8FF8396E8FF8194
        E7FF7F91E6FF7386E3FF6B6ECBFF0000000C0000000300000000000000000000
        0002000000077A7FDAFFBCCFF5FFA2B5F0FFA2B4F0FFA2B4F0FFA2B4F0FFA1B3
        EFFFA0B2EFFFA0B1EFFF9FB0EFFF9EAEEFFF9CADEEFF9BABEDFF99AAEDFF98A8
        EDFF96A7EDFF93A5ECFF91A3ECFF8FA1EBFF8D9FEAFF8B9DEAFF889BE9FF8598
        E8FF8396E8FF798CE4FF7074CFFF0000000B0000000300000000000000000000
        0001000000057277C8E8BECAF1FFD4E1F9FFD3E0F9FFD2DFF9FFD0DEF9FFCFDD
        F9FFCDDBF7FFCBDAF7FFC9D7F7FFC6D5F6FFC4D4F6FFC2D1F6FFC0CFF5FFBDCE
        F5FFBACBF4FFB7C9F4FFB5C6F3FFB2C3F3FFAEC1F1FFABBFF1FFA8BCF1FFA5B9
        F1FFA2B7F0FF90A0E6FF6A6EBEE9000000080000000200000000000000000000
        00010000000320223744656BAFCB8087DEFF7F87DEFF7F87DDFF7F86DDFF7F86
        DCFF7F85DCFF7E84DCFF7D84DCFF7D84DBFF7D84DBFF7C83DBFF7C82D9FF7C82
        D9FF7B82D9FF7A81D9FF7A81D8FF7A80D8FF7A80D7FF797FD7FF787FD6FF7A7F
        D6FF787ED6FF5F63A8CD1E1F3447000000050000000100000000000000000000
        0000000000010000000200000004000000050000000600000006000000060000
        0006000000070000000700000007000000070000000700000007000000080000
        0008000000080000000800000008000000080000000800000009000000090000
        0009000000080000000700000004000000020000000000000000000000000000
        0000000000000000000100000001000000010000000100000001000000010000
        0001000000010000000200000002000000020000000200000002000000020000
        0002000000020000000200000002000000020000000200000002000000020000
        0002000000020000000200000001000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000}
      TabOrder = 0
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'HelveticaNeue'
      Font.Style = [fsBold]
      ParentFont = False
      OnClick = cxButton6Click
    end
    object cxButton1: TcxButton
      Left = 1
      Top = 1
      Width = 160
      Height = 39
      Align = alLeft
      Caption = 'Atualiar Tabela'
      LookAndFeel.NativeStyle = False
      LookAndFeel.SkinName = 'Office2013White'
      OptionsImage.Glyph.Data = {
        36100000424D3610000000000000360000002800000020000000200000000100
        2000000000000010000000000000000000000000000000000000000000020000
        0004000000060000000600000006000000060000000600000006000000060000
        0006000000060000000600000006000000070000000700000007000000070000
        0007000000070000000700000007000000070000000700000007000000070000
        0006000000040000000200000001000000000000000000000000000000060000
        000E010101150101011701010118010101180101011801010118010101190101
        011901010119010101190101011901010119010101190101011A0101011A0101
        011A0101011A0101011A0101011A0101011A0101011B0101011B0101011A0101
        0117000000100000000700000002000000000000000000000000000000101C40
        7DCD2B5CA6FF2E5EA7FF2D5DA8FF2D5CA7FF2B5DA7FF2C5BA6FF2C5BA6FF2A5B
        A6FF2A5AA6FF2A5AA6FF2959A5FF2958A5FF2857A5FF2858A5FF2756A4FF2756
        A4FF2656A4FF2655A3FF2554A3FF2554A2FF2553A2FF2452A2FF2352A1FF2250
        9FFF1D448DEE050B163D0000000B000000020000000000000000010101152355
        A2FF2B5EA7FF5498D0FF68BDEDFF4CA9E8FF4BA6E7FF49A6E7FF47A5E6FF45A5
        E5FF44A4E5FF43A1E4FF41A1E4FF40A0E3FF3F9FE2FF3D9EE2FF3D9CE2FF3B9D
        E2FF3B9AE1FF3A9AE1FF399ADFFF3898E1FF3797DFFF3698DFFF3698DFFF3493
        DBFF2F81CBFF16366DBF00000011000000040000000000000000010101162759
        A6FF376AAFFF417FBEFF82CBF2FF54AFEAFF50ABE9FF4EACE9FF4CA9E7FF4AA8
        E7FF48A6E6FF48A6E5FF45A5E6FF45A3E5FF44A2E5FF42A2E4FF409FE4FF3FA0
        E3FF3E9FE3FF3C9EE2FF3C9DE3FF3B9CE2FF399BE2FF389AE0FF3799E0FF3699
        E0FF3898DFFF204F9BF80203061D000000050000000100000000010101142A60
        ABFF497EBCFF2E66AEFF8FD2F2FF68BEEEFF57B2ECFF56B1EBFF55B0EAFF52AF
        E9FF51ACE8FF4FAAE8FF4DAAE8FF4CA9E7FF4AA7E7FF48A6E7FF47A5E6FF46A4
        E5FF44A4E5FF42A2E5FF41A2E4FF40A1E4FF3FA0E3FF3E9FE2FF3C9DE2FF3C9B
        E1FF3D9EE2FF2967B3FF0A18305D000000080000000100000000010101132C65
        B1FF598DC6FF2E6AB0FF80BBE2FF85D0F3FF5EB7EDFF5CB7EDFF5CB5EDFF59B5
        EDFF58B3EBFF56B1EBFF56B0E9FF54AFE9FF52ADE9FF53AEE9FF51ACE9FF50AB
        E8FF4CA7E6FF49A7E7FF48A6E6FF46A6E6FF45A5E5FF44A4E4FF43A1E3FF41A2
        E3FF42A2E4FF357DC6FF122D58970000000A000000020000000000000012306B
        B3FF689ECFFF3876BAFF65A0D0FFA2DFF8FF63BCF0FF62BCEFFF62BBEEFF61BC
        EDFF66BDEEFF6CC0EFFF6EC0EFFF70C2EEFF6DBEEDFF6ABDEDFF67BBEDFF64BB
        EDFF62B8EDFF60B6ECFF5BB3EAFF56AEEAFF51ABE9FF4CA7E7FF4AA7E6FF48A6
        E6FF49A6E5FF469ADAFF1B4788D80000000D0000000300000001000000113370
        B7FF78ACD8FF478AC8FF4586C2FFB7E9FBFF75C8F3FF73C6F2FF7ACAF3FF7ECB
        F4FF7ECBF2FF7CCAF3FF7BC9F2FF77C8F1FF76C6F1FF74C4F0FF71C2EFFF6EC0
        EEFF6CBFEEFF69BCEEFF66BBEDFF63B9ECFF61B8ECFF5FB5EBFF59B2EAFF53AE
        E8FF4EABE7FF55AFE9FF2862ACFF040B142C0000000400000001000000103675
        B9FF87BBE0FF589CD4FF3F82C0FFAFDDF1FFA7E2F9FF89D2F6FF88D1F6FF86CF
        F6FF85CEF5FF83CEF3FF81CCF3FF80CCF3FF7ECBF2FF7DCAF2FF7AC8F1FF77C8
        F2FF74C6F0FF71C4F0FF70C3EFFF6CBFEEFF6ABEEDFF67BBEDFF64BAEDFF62B8
        ECFF5EB6EBFF5FB5EBFF3B80C3FF0F2645740000000700000002000000103779
        BCFF96C8E8FF65ADDEFF4A93CCFF90C2E1FFC4EDFCFF8ED6F7FF8DD6F7FF8CD4
        F6FF8AD3F6FF89D2F6FF88D2F5FF86D1F5FF84D0F4FF83CEF4FF82CEF3FF81CC
        F3FF7ECAF2FF7BCAF2FF78C8F0FF76C7F0FF74C5F0FF70C2F0FF6EC0EEFF6ABF
        EEFF68BDEDFF6ABEEDFF58A3D9FF1A4278BA00000009000000020000000F3A7F
        BFFFA4D4EEFF74BDE7FF5FAADCFF6AA7D3FFD8F6FDFF98DDF9FF93D9F8FF92D9
        F8FF90D8F8FF8FD6F8FF8ED6F7FF8BD4F6FF8BD4F6FF89D2F6FF88D2F4FF85D1
        F4FF84D0F4FF83CFF4FF81CDF4FF7FCCF3FF7CCAF1FF79C9F1FF76C8F1FF74C7
        F1FF71C3EFFF70C3EFFF77C3EDFF2761A6F702040614000000030000000E3B82
        C1FFB0E0F4FF82CBEFFF77C4EDFF519ACEFFCBECF7FFDFF8FEFFDFF8FEFFDEF8
        FEFFDDF8FEFFDDF8FEFFDCF7FEFFDAF6FEFFD8F5FCFFBFEDFBFF92D8F7FF8CD4
        F7FF8AD3F6FF88D4F6FF87D2F5FF85D1F5FF83CFF5FF82CEF4FF80CCF3FF7DCB
        F2FF7ACAF2FF77C8F1FF80CBF1FF3F82C1FF0B1E3355000000050000000D3C85
        C3FFBDE8F8FF90D9F5FF87D3F4FF6EBFE8FF56A4D4FF519CCDFF509BCDFF4E99
        CCFF4E98CBFF4B96CCFF4A94CBFF4993CAFF79B2D9FFD1F0F9FFD1F4FCFF9EDF
        F9FF90D8F8FF8FD7F7FF8DD5F7FF8BD6F7FF8AD4F7FF88D3F5FF86D2F5FF83D0
        F5FF82CEF3FF7FCCF3FF84CFF3FF60A6D6FF173C669D000000060000000C3E88
        C5FFC7F0FCFF9AE4FBFF96E2FAFF90DDFAFF8ADAF9FF86D8F9FF83D6F8FF80D2
        F8FF7DD2F8FF7BCFF6FF77CDF6FF72CAF5FF60B6E8FF5AA0D2FFAED7EDFFE1F9
        FEFFE0F9FEFFDFF9FEFFDFF8FEFFDEF7FEFFDEF7FEFFDCF7FEFFDBF6FEFFDBF6
        FEFFD9F5FDFFD7F5FDFFD6F4FDFFBFE3F2FF225B99E0000000070000000B408C
        C7FFCEF6FFFFA5EDFEFFA2EBFEFF9FE9FEFF9CE8FEFF99E7FDFF96E5FDFF93E2
        FDFF91E0FCFF8FDEFCFF8CDCFCFF87D9FBFF81D6FAFF73CBF5FF57A8DBFF4B96
        CBFF4A95CBFF4995CBFF4793CAFF4692CAFF4490C9FF438EC9FF428DC8FF408C
        C7FF286FB3FF286DB3FF276EB2FF2568A8F418446FA4000000050000000B418F
        C9FFD2F7FFFFA8EFFFFFA6EEFFFFA5EDFFFFA3ECFEFFA1EAFEFF9FE9FEFF9CE8
        FEFF9AE6FDFF98E4FDFF95E2FDFF92E1FCFF8DDEFCFF86DAFBFF81D5FAFF7BD2
        F9FF77D0F9FF74CDF9FF71C9F7FF83CEF2FF97CFEBFF9FCEE6FFA4CEE4FFABD2
        E6FF7399C3FF0101011C0000000E0000000800000006000000030000000A4292
        CAFFD5F9FFFFACF1FFFFAAF0FFFFA8EFFFFFA6EEFFFFA5EDFFFFA3ECFFFFA1EB
        FEFF9FE9FEFF9DE8FEFF9AE6FDFF98E4FDFF95E3FDFF92E0FCFF8FDEFCFF8CDA
        FBFF87D9FBFF88D8F9FFA5D9F0FF95B0B9FF8C6F5BFF875436FF874B28FF8854
        35FF836454FF180E075600000012000000050000000100000001000000094394
        CCFFD7FAFFFFAFF3FFFFAEF2FFFFACF1FFFFAAF0FFFFA8EFFFFFA6EDFFFFA5ED
        FFFFA3ECFEFFA1EBFEFF9FEAFEFF9DE7FEFF9AE7FEFF98E5FDFF96E3FDFF93E1
        FCFF97DFF9FFB1D8E7FF608378FF494329FFB07A50FFC38F62FFC99668FFC38F
        62FF7B6B4AFF414429FD1A20129C010201180000000300000000000000084597
        CEFFDBFAFFFFB2F5FFFFB1F4FFFFAFF3FFFFAEF2FFFFACF1FFFFAAF0FFFFA8EF
        FFFFA6EEFFFFADEFFEFFC2F6FEFFCFF8FEFFCEF8FEFFCEF8FEFFCEF8FEFFCCF7
        FDFFD6EFF2FF5F7F6DFF256140FF49916FFF7D7A54FFBE8451FFBD824DFFBE83
        51FF5F7452FF399C79FF266342FF1F2715AB0000000D0000000100000008479A
        CFFFDCFBFFFFB5F6FFFFB4F6FFFFB2F5FFFFB1F4FFFFAFF3FFFFAEF2FFFFACF1
        FFFFB0F2FEFF95D3EDFF4496CCFF4495CCFF4495CCFF4494CCFF4494CBFF64A5
        D2FF769CA8FF205836FF558B68FF60714DFF867B4FFFC28955FFC28A55FFB285
        53FF507653FF309E75FF3EA07DFF454A30FF21150D510000000500000007479C
        D0FFDEFCFFFFB7F7FFFFB6F7FFFFB5F6FFFFB3F6FFFFB2F5FFFFB1F4FFFFB5F4
        FFFF91D3EDFF2D6284A80000000B000000090000000900000009000000090000
        00122C2B1AB55E6C4DFF968455FFCA955FFFDAA96FFFE4B67AFF8E9669FF5E8C
        65FF47BF98FF41B68EFF4A8D67FF8F7B56FF5F4028B40000000A000000054290
        BEE8B4E4F3FFD6F9FEFFD5F9FEFFD5F9FEFFD5F9FEFFD4F9FEFFD4F9FEFFC7F0
        FAFF4C95C2EA050B0F1A00000004000000020000000200000002000000020000
        000D936544E9CB9A69FFD3A16AFFE6BB80FFEAC48EFFEDCD9EFF90AB8DFF7AD6
        B8FF6BB390FF628860FF73835AFF7C835DFF605337E90000000C000000031228
        3445397FA6CB49A0D3FF49A0D3FF49A0D3FF49A0D2FF49A0D2FF499FD2FF499F
        D2FF183445590000000400000001000000000000000000000000000000000000
        000A60593CFA67825DFFC4B07BFFECC996FFF2D9B3FFF2DAB5FFBCC6A7FF98B7
        9DFFC4C7A7FFE8C995FF7D966DFF53AF8BFF345A3DFA0000000C000000010000
        0003000000050000000500000005000000050000000500000006000000060000
        0005000000030000000100000000000000000000000000000000000000000000
        0008275B3FE74FAE8BFF819C72FFF2DDB9FFF5E3C3FFF5E4C5FFF6E3C5FFEBE0
        C2FFAAC4ADFFA0BEA4FF67CBA8FF57C19EFF33583FE80000000A000000000000
        0001000000010000000100000001000000010000000100000001000000010000
        0001000000010000000000000000000000000000000000000000000000000000
        0005184C37AD4BAA87FF7BA077FFF7E8CDFFF7EAD0FFF8EBD3FFF8ECD3FFF8EC
        D3FFC7D7C2FFB5E0CFFF6FE3C2FF54BC9CFF2C3D2CAE00000006000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0002091E1645477D5EFFBCBC8DFFCEDAC4FFC5DDCDFFD9E5D4FFFAF2DEFFFAF2
        DEFFF6EEDBFFD2DFC9FF6CC09EFF469B7BFF171A124700000002000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        00000000000441473499B2A47BFF8BC6A9FFD4F8EEFFD3E7DBFFFCF7E9FFFCF7
        E8FFD0E5D8FF93D6BCFF55BFA1FF2752409A0000000500000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000010504030A36402F814EA889FA8ADFC9FFC3E0CFFFFDFAEEFFFAF3
        E1FFB7C5A6FF519C7DFA23564782010201080000000100000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        00000000000000000000000000020D201A32357C68AF599677E5D2AF88FFBC9D
        7AE68D755BAF1A1A143300000003000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000010000000200000003000000030000
        0003000000020000000100000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000}
      TabOrder = 1
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'HelveticaNeue'
      Font.Style = [fsBold]
      ParentFont = False
      OnClick = cxButton1Click
    end
    object cxButton2: TcxButton
      Left = 161
      Top = 1
      Width = 192
      Height = 39
      Align = alLeft
      Caption = 'Importar tabela CEST'
      LookAndFeel.NativeStyle = False
      LookAndFeel.SkinName = 'Office2013White'
      OptionsImage.Glyph.Data = {
        36100000424D3610000000000000360000002800000020000000200000000100
        2000000000000010000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0001000000010000000100000001000000010000000100000001000000010000
        0001000000010000000100000001000000010000000100000001000000010000
        0001000000010000000100000001000000010000000100000001000000010000
        0001000000010000000000000000000000000000000000000000000000020000
        0004000000060000000600000006000000060000000600000006000000060000
        0006000000060000000600000006000000070000000700000007000000070000
        0007000000070000000700000007000000070000000700000007000000070000
        0006000000040000000200000001000000000000000000000000000000060000
        000E010101150101011701010118010101180101011801010118010101190101
        011901010119010101190101011901010119010101190101011A0101011A0101
        011A0101011A0101011A0101011A0101011A0101011B0101011B0101011A0101
        0117000000100000000700000002000000000000000000000000000000101C40
        7DCD2B5CA6FF2E5EA7FF2D5DA8FF2D5CA7FF2B5DA7FF2C5BA6FF2C5BA6FF2A5B
        A6FF2A5AA6FF2A5AA6FF2959A5FF2958A5FF2857A5FF2858A5FF2756A4FF2756
        A4FF2656A4FF2655A3FF2554A3FF2554A2FF2553A2FF2452A2FF2352A1FF2250
        9FFF1D448DEE050B163D0000000B000000020000000000000000010101152355
        A2FF2B5EA7FF5498D0FF68BDEDFF4CA9E8FF4BA6E7FF49A6E7FF47A5E6FF45A5
        E5FF44A4E5FF43A1E4FF41A1E4FF40A0E3FF3F9FE2FF3D9EE2FF3D9CE2FF3B9D
        E2FF3B9AE1FF3A9AE1FF399ADFFF3898E1FF3797DFFF3698DFFF3698DFFF3493
        DBFF2F81CBFF16366DBF00000011000000040000000000000000010101162759
        A6FF376AAFFF417FBEFF82CBF2FF54AFEAFF50ABE9FF4EACE9FF4CA9E7FF4AA8
        E7FF48A6E6FF48A6E5FF45A5E6FF45A3E5FF44A2E5FF42A2E4FF409FE4FF3FA0
        E3FF3E9FE3FF3C9EE2FF3C9DE3FF3B9CE2FF399BE2FF389AE0FF3799E0FF3699
        E0FF3898DFFF204F9BF80203061D000000050000000100000000010101142A60
        ABFF497EBCFF2E66AEFF8FD2F2FF68BEEEFF57B2ECFF56B1EBFF55B0EAFF52AF
        E9FF51ACE8FF4FAAE8FF4DAAE8FF4CA9E7FF4AA7E7FF48A6E7FF47A5E6FF46A4
        E5FF44A4E5FF42A2E5FF41A2E4FF40A1E4FF3FA0E3FF3E9FE2FF3C9DE2FF3C9B
        E1FF3D9EE2FF2967B3FF0A18305D000000080000000100000000010101132C65
        B1FF598DC6FF2E6AB0FF80BBE2FF85D0F3FF5EB7EDFF5CB7EDFF5CB5EDFF59B5
        EDFF58B3EBFF56B1EBFF56B0E9FF54AFE9FF52ADE9FF53AEE9FF51ACE9FF50AB
        E8FF4CA7E6FF49A7E7FF48A6E6FF46A6E6FF45A5E5FF44A4E4FF43A1E3FF41A2
        E3FF42A2E4FF357DC6FF122D58970000000A000000020000000000000012306B
        B3FF689ECFFF3876BAFF65A0D0FFA2DFF8FF63BCF0FF62BCEFFF62BBEEFF61BC
        EDFF66BDEEFF6CC0EFFF6EC0EFFF70C2EEFF6DBEEDFF6ABDEDFF67BBEDFF64BB
        EDFF62B8EDFF60B6ECFF5BB3EAFF56AEEAFF51ABE9FF4CA7E7FF4AA7E6FF48A6
        E6FF49A6E5FF469ADAFF1B4788D80000000D0000000300000001000000113370
        B7FF78ACD8FF478AC8FF4586C2FFB7E9FBFF75C8F3FF73C6F2FF7ACAF3FF7ECB
        F4FF7ECBF2FF7CCAF3FF7BC9F2FF77C8F1FF76C6F1FF74C4F0FF71C2EFFF6EC0
        EEFF6CBFEEFF69BCEEFF66BBEDFF63B9ECFF61B8ECFF5FB5EBFF59B2EAFF53AE
        E8FF4EABE7FF55AFE9FF2862ACFF040B142C0000000400000001000000103675
        B9FF87BBE0FF589CD4FF3F82C0FFAFDDF1FFA7E2F9FF89D2F6FF88D1F6FF86CF
        F6FF85CEF5FF83CEF3FF81CCF3FF80CCF3FF7ECBF2FF7DCAF2FF7AC8F1FF77C8
        F2FF74C6F0FF71C4F0FF70C3EFFF6CBFEEFF6ABEEDFF67BBEDFF64BAEDFF62B8
        ECFF5EB6EBFF5FB5EBFF3B80C3FF0F2645740000000700000002000000103779
        BCFF96C8E8FF65ADDEFF4A93CCFF90C2E1FFC4EDFCFF8ED6F7FF8DD6F7FF8CD4
        F6FF8AD3F6FF89D2F6FF88D2F5FF86D1F5FF84D0F4FF83CEF4FF82CEF3FF81CC
        F3FF7ECAF2FF7BCAF2FF78C8F0FF76C7F0FF74C5F0FF70C2F0FF6EC0EEFF6ABF
        EEFF68BDEDFF6ABEEDFF58A3D9FF1A4278BA00000009000000020000000F3A7F
        BFFFA4D4EEFF74BDE7FF5FAADCFF6AA7D3FFD8F6FDFF98DDF9FF93D9F8FF92D9
        F8FF90D8F8FF8FD6F8FF8ED6F7FF8BD4F6FF8BD4F6FF89D2F6FF88D2F4FF85D1
        F4FF84D0F4FF83CFF4FF81CDF4FF7FCCF3FF7CCAF1FF79C9F1FF76C8F1FF74C7
        F1FF71C3EFFF70C3EFFF77C3EDFF2761A6F702040614000000030000000E3B82
        C1FFB0E0F4FF82CBEFFF77C4EDFF519ACEFFCBECF7FFDFF8FEFFDFF8FEFFDEF8
        FEFFDDF8FEFFDDF8FEFFDCF7FEFFDAF6FEFFD8F5FCFFBFEDFBFF92D8F7FF8CD4
        F7FF8AD3F6FF88D4F6FF87D2F5FF85D1F5FF83CFF5FF82CEF4FF80CCF3FF7DCB
        F2FF7ACAF2FF77C8F1FF80CBF1FF3F82C1FF0B1E3355000000050000000D3C85
        C3FFBDE8F8FF90D9F5FF87D3F4FF6EBFE8FF56A4D4FF519CCDFF509BCDFF4E99
        CCFF4E98CBFF4B96CCFF4A94CBFF4993CAFF79B2D9FFD1F0F9FFD1F4FCFF9EDF
        F9FF90D8F8FF8FD7F7FF8DD5F7FF8BD6F7FF8AD4F7FF88D3F5FF86D2F5FF83D0
        F5FF82CEF3FF7FCCF3FF84CFF3FF60A6D6FF173C669D000000060000000C3E88
        C5FFC7F0FCFF9AE4FBFF96E2FAFF90DDFAFF8ADAF9FF86D8F9FF83D6F8FF80D2
        F8FF7DD2F8FF7BCFF6FF77CDF6FF72CAF5FF60B6E8FF5AA0D2FFAED7EDFFE1F9
        FEFFE0F9FEFFDFF9FEFFDFF8FEFFDEF7FEFFDEF7FEFFDCF7FEFFDBF6FEFFDBF6
        FEFFD9F5FDFFD7F5FDFFD6F4FDFFBFE3F2FF225B99E0000000070000000B408C
        C7FFCEF6FFFFA5EDFEFFA2EBFEFF9FE9FEFF9CE8FEFF99E7FDFF96E5FDFF93E2
        FDFF91E0FCFF8FDEFCFF8CDCFCFF87D9FBFF81D6FAFF73CBF5FF57A8DBFF4B96
        CBFF4A95CBFF4995CBFF4793CAFF4692CAFF4490C9FF438DC8FF428CC7FF408B
        C6FF286FB2FF286DB2FF276EB1FF2568A8F418446FA4000000050000000B418F
        C9FFD2F7FFFFA8EFFFFFA6EEFFFFA5EDFFFFA3ECFEFFA1EAFEFF9FE9FEFF9CE8
        FEFF9AE6FDFF98E4FDFF95E2FDFF92E1FCFF8DDEFCFF86DAFBFF81D5FAFF7BD2
        F9FF77D0F9FF74CDF9FF71C9F7FF6EC8F5FF6BC5F4FF66C0F1FF64BEEFFF7DC8
        F0FF4993CCFF0101011D000000110000000A00000007000000030000000A4292
        CAFFD5F9FFFFACF1FFFFAAF0FFFFA8EFFFFFA6EEFFFFA5EDFFFFA3ECFFFFA1EB
        FEFF9FE9FEFF9DE8FEFF9AE6FDFF98E4FDFF95E3FDFF92E0FCFF8FDEFCFF8CDA
        FBFF87D9FBFF83D7FAFF84D4F7FF89D2F4FF90D2EFFF93CEECFF97CDE8FFACD3
        E5FF94B9D4FF0000002600000016000000090000000300000001000000094394
        CCFFD7FAFFFFAFF3FFFFAEF2FFFFACF1FFFFAAF0FFFFA8EFFFFFA6EDFFFFA5ED
        FFFFA3ECFEFFA1EBFEFF9FEAFEFF9DE7FEFF9AE7FEFF98E5FDFF96E3FDFF93E1
        FCFF90DFFBFF8DDBFAFFBFE6F5FFABD3DFFF90B9BFFF709D9DFF5D8D88FF507F
        74FF306555FF215E44F611322495000000100000000400000001000000084597
        CEFFDBFAFFFFB2F5FFFFB1F4FFFFAFF3FFFFAEF2FFFFACF1FFFFAAF0FFFFA8EF
        FFFFA6EEFFFFADEFFEFFC2F6FEFFCFF8FEFFCEF8FEFFCEF8FEFFCEF8FEFFCDF8
        FEFFCCF7FDFFCAF5FBFFDAEFF2FF266C50FF397B63FF46927AFF50A188FF59B0
        96FF63C6ABFF79DAC0FF1F5E44F100000016000000050000000100000008479A
        CFFFDCFBFFFFB5F6FFFFB4F6FFFFB2F5FFFFB1F4FFFFAFF3FFFFAEF2FFFFACF1
        FFFFB0F2FEFF95D3EDFF4496CCFF4495CCFF4495CCFF4494CCFF4494CBFF4494
        CBFF4393CBFF4191C9FF99C0DAFF5B908FFF71B19CFF7DE4CAFF65DABAFF59D5
        B2FF4BD0A8FF77CBB3FF1C513BD200000016000000060000000100000007479C
        D0FFDEFCFFFFB7F7FFFFB6F7FFFFB5F6FFFFB3F6FFFFB2F5FFFFB1F4FFFFB5F4
        FFFF91D3EDFF2D6284A80000000B000000090000000900000009000000090000
        000A0000000B0000000D000000160204032E2A6E54F073CCB4FF5BDAB5FF47D2
        A9FF5AD6B4FF6FBCA6FF184433B2000000130000000500000001000000054290
        BEE8B4E4F3FFD6F9FEFFD5F9FEFFD5F9FEFFD5F9FEFFD4F9FEFFD4F9FEFFC7F0
        FAFF4C95C2EA050B0F1A00000004000000020000000300000004000000050000
        0006000000080000000D0206052421513EBE80C8B4FF84E7D0FF71E3C7FF8AE8
        D1FF78E2C6FF68B19AFF14382B930000000F0000000400000001000000031228
        3445397FA6CB49A0D3FF49A0D3FF49A0D3FF49A0D2FF49A0D2FF499FD2FF499F
        D2FF183445590000000400000001000000000000000200000006000000090000
        000C07140F3A112F24792D6E55EB8CCCBBFF95EEDAFF83EAD3FFA1EEDEFF9FD1
        C3FFB5F3E5FF65A58FFF102A20700000000B0000000300000001000000010000
        0003000000050000000500000005000000050000000500000006000000060000
        000500000003000000010000000000000001000000033D886FEA529F85FF3488
        6AFF438A71FF6BAA96FFB1EADEFFA5F2E3FFADF3E5FFCBF8EFFFA6D7C9FF3D8B
        6EF683BAA9FF54977FFF0A1B154A000000080000000200000000000000000000
        0001000000010000000100000001000000010000000100000001000000010000
        00010000000100000000000000000000000000000002040F0C1A257E60B165CA
        AAFFABE3D4FFCBF1E8FFE1FBF7FFCBF0E6FFAADECFFF66B59CFF23654EB6040C
        09291840318A308062FF0309071E000000040000000100000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000100000002000000051036
        2A51257C5FB2309B77E036AE86FF2F9472E0257157B3102F24550000000A0000
        0008000000080000000800000005000000020000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000010000
        0002000000040000000500000006000000060000000600000004000000030000
        0002000000020000000200000001000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000010000000100000001000000010000000100000001000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000}
      TabOrder = 2
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'HelveticaNeue'
      Font.Style = [fsBold]
      ParentFont = False
      OnClick = cxButton2Click
    end
  end
end
Trocou 'NCM' por 'PROD_NCMSH' : automaticamente em 18/06/2020 21:23
