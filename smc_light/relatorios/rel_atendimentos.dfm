object frm_rel_atendimentos: Tfrm_rel_atendimentos
  Left = 0
  Top = 0
  BorderIcons = [biSystemMenu]
  Caption = 'Relat'#243'rios Atendimentos'
  ClientHeight = 239
  ClientWidth = 354
  Color = clWhite
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  Position = poDesktopCenter
  OnClose = FormClose
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 13
  object gp_date: TGroupBox
    Left = 8
    Top = 7
    Width = 337
    Height = 84
    Caption = 'Per'#237'odo'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -12
    Font.Name = 'Tahoma'
    Font.Style = [fsBold]
    ParentFont = False
    TabOrder = 0
    object Label1: TLabel
      Left = 32
      Top = 23
      Width = 41
      Height = 14
      Caption = 'In'#237'cio :'
    end
    object Label2: TLabel
      Left = 184
      Top = 23
      Width = 28
      Height = 14
      Caption = 'Fim :'
    end
    object edt_data_inicio: TcxDateEdit
      Left = 32
      Top = 43
      TabOrder = 0
      Width = 121
    end
    object edt_data_fim: TcxDateEdit
      Left = 184
      Top = 43
      TabOrder = 1
      Width = 121
    end
  end
  object gp_atendente: TGroupBox
    Left = 8
    Top = 273
    Width = 185
    Height = 58
    Caption = 'Atendente'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -12
    Font.Name = 'Tahoma'
    Font.Style = [fsBold]
    ParentFont = False
    TabOrder = 2
    Visible = False
    object edt_atendente: TEdit
      Left = 22
      Top = 24
      Width = 141
      Height = 22
      Enabled = False
      TabOrder = 0
    end
  end
  object gp_cliente: TGroupBox
    Left = 8
    Top = 297
    Width = 249
    Height = 58
    Caption = 'Selecione o Cliente'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -12
    Font.Name = 'Tahoma'
    Font.Style = [fsBold]
    ParentFont = False
    TabOrder = 3
    Visible = False
    object edt_cliente: TcxLookupComboBox
      Left = 22
      Top = 24
      Properties.KeyFieldNames = 'CODIGO'
      Properties.ListColumns = <
        item
          FieldName = 'FANTASIA'
        end>
      Properties.ListOptions.ShowHeader = False
      Properties.ListSource = ds_clientes
      TabOrder = 0
      Width = 211
    end
  end
  object gp_check: TGroupBox
    Left = 8
    Top = 97
    Width = 337
    Height = 74
    Caption = 'Tipo de Ralat'#243'rio'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -12
    Font.Name = 'Tahoma'
    Font.Style = [fsBold]
    ParentFont = False
    TabOrder = 1
    object chk_geral: TCheckBox
      Left = 22
      Top = 35
      Width = 82
      Height = 17
      Caption = 'Geral'
      Checked = True
      State = cbChecked
      TabOrder = 0
      OnClick = chk_geralClick
    end
    object chk_usuario_logado: TCheckBox
      Left = 99
      Top = 35
      Width = 119
      Height = 17
      Caption = 'Usu'#225'rio Logado'
      TabOrder = 1
      OnClick = chk_usuario_logadoClick
    end
    object chk_por_cliente: TCheckBox
      Left = 229
      Top = 35
      Width = 86
      Height = 17
      Caption = 'Por Cliente'
      TabOrder = 2
      OnClick = chk_por_clienteClick
    end
  end
  object btn_Gerar_relatorio: TcxButton
    Left = 139
    Top = 196
    Width = 81
    Height = 32
    Caption = 'Gerar'
    Colors.Default = 8404992
    Colors.DefaultText = clWhite
    Colors.Normal = 8404992
    Colors.NormalText = clWhite
    Colors.Hot = 12615680
    Colors.HotText = clWhite
    Colors.Pressed = clNavy
    Colors.PressedText = clGray
    LookAndFeel.NativeStyle = False
    OptionsImage.Glyph.Data = {
      36040000424D3604000000000000360000002800000010000000100000000100
      2000000000000004000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000848484FF848484FF848484FF848484FF848484FF848484FF848484FF8484
      84FF848484FF848484FF848484FF848484FF0000000000000000000000000000
      0000848484FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFF848484FF0000000000000000000000000000
      0000848484FFFFFFFFFFB8824DFFB8824DFFB8824DFFB8824DFFB8824DFFB882
      4DFFB8824DFFB8824DFFFFFFFFFF848484FF0000000000000000000000000000
      0000848484FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFF848484FF0000000000000000000000000000
      0000848484FFFFFFFFFFB8824DFFB8824DFFB8824DFFB8824DFFB8824DFFB882
      4DFFB8824DFFB8824DFFFFFFFFFF848484FF0000000000000000000000000000
      0000848484FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFF848484FF0000000000000000000000000000
      0000848484FFFFFFFFFFB8824DFFFFFFFFFF97A776FF97A776FF97A776FF97A7
      76FFFFFFFFFFB8824DFFFFFFFFFF848484FF0000000000000000000000000000
      0000848484FFFFFFFFFFFFFFFFFFFFFFFFFF97A776FF97A776FF97A776FF97A7
      76FFFFFFFFFFFFFFFFFFFFFFFFFF848484FF0000000000000000000000000000
      0000848484FFFFFFFFFFB8824DFFFFFFFFFF97A776FF97A776FF97A776FF97A7
      76FFFFFFFFFFB8824DFFFFFFFFFF848484FF0000000000000000000000000000
      0000848484FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFF848484FF0000000000000000000000000000
      0000848484FFFFFFFFFFB8824DFFB8824DFFB8824DFFB8824DFFB8824DFFB882
      4DFFB8824DFFB8824DFFFFFFFFFF848484FF0000000000000000000000000000
      0000848484FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFF848484FF0000000000000000000000000000
      0000848484FFFFFFFFFFB8824DFFB8824DFFB8824DFFB8824DFFB8824DFFB882
      4DFFB8824DFFB8824DFFFFFFFFFF848484FF0000000000000000000000000000
      0000848484FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFF848484FF0000000000000000000000000000
      0000848484FF848484FF848484FF848484FF848484FF848484FF848484FF8484
      84FF848484FF848484FF848484FF848484FF0000000000000000}
    TabOrder = 4
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -12
    Font.Name = 'Tahoma'
    Font.Style = [fsBold]
    ParentFont = False
    OnClick = btn_Gerar_relatorioClick
  end
  object sql_clientes: TFDQuery
    Connection = Module.connection
    SQL.Strings = (
      'select *'
      'from cliente')
    Left = 8
    Top = 360
  end
  object ds_clientes: TDataSource
    DataSet = sql_clientes
    Left = 56
    Top = 360
  end
  object sql_rel_geral: TFDQuery
    Connection = Module.connection
    SQL.Strings = (
      
        'select TECNICO, SISTEMA, NOME_FANTASIA, CONTATO_1, PROBLEMA, SOL' +
        'UCAO, STATUS'
      'from atendimentos'
      'where date(ABERTURA) between :pdata_inicio and :pdata_fim'
      'order by NOME_FANTASIA')
    Left = 392
    Top = 16
    ParamData = <
      item
        Name = 'PDATA_INICIO'
        DataType = ftDate
        ParamType = ptInput
        Value = 43929d
      end
      item
        Name = 'PDATA_FIM'
        DataType = ftDate
        ParamType = ptInput
        Value = 43929d
      end>
    object sql_rel_geralTECNICO: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'TECNICO'
      Origin = 'TECNICO'
      Size = 200
    end
    object sql_rel_geralSISTEMA: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'SISTEMA'
      Origin = 'SISTEMA'
      FixedChar = True
      Size = 8
    end
    object sql_rel_geralNOME_FANTASIA: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'NOME_FANTASIA'
      Origin = 'NOME_FANTASIA'
      Size = 200
    end
    object sql_rel_geralCONTATO_1: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'CONTATO_1'
      Origin = 'CONTATO_1'
      Size = 200
    end
    object sql_rel_geralPROBLEMA: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'PROBLEMA'
      Origin = 'PROBLEMA'
      Size = 5000
    end
    object sql_rel_geralSOLUCAO: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'SOLUCAO'
      Origin = 'SOLUCAO'
      Size = 5000
    end
    object sql_rel_geralSTATUS: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'STATUS'
      Origin = 'STATUS'
      FixedChar = True
      Size = 7
    end
  end
  object dse_rel_geral: TfrxDBDataset
    UserName = 'dse_rel_geral'
    CloseDataSource = False
    FieldAliases.Strings = (
      'TECNICO=TECNICO'
      'SISTEMA=SISTEMA'
      'NOME_FANTASIA=NOME_FANTASIA'
      'CONTATO_1=CONTATO_1'
      'PROBLEMA=PROBLEMA'
      'SOLUCAO=SOLUCAO'
      'STATUS=STATUS')
    DataSet = sql_rel_geral
    BCDToCurrency = False
    Left = 480
    Top = 16
  end
  object frx_rel_usuario: TfrxReport
    Version = '5.2.3'
    DotMatrixReport = False
    IniFile = '\Software\Fast Reports'
    PreviewOptions.Buttons = [pbPrint, pbLoad, pbSave, pbExport, pbZoom, pbFind, pbOutline, pbPageSetup, pbTools, pbEdit, pbNavigator, pbExportQuick]
    PreviewOptions.Zoom = 1.000000000000000000
    PrintOptions.Printer = 'Default'
    PrintOptions.PrintOnSheet = 0
    ReportOptions.CreateDate = 43097.453301180600000000
    ReportOptions.LastChange = 43257.439475509300000000
    ScriptLanguage = 'PascalScript'
    ScriptText.Strings = (
      'begin'
      ''
      'end.')
    Left = 565
    Top = 88
    Datasets = <
      item
        DataSet = dse_rel_usuario
        DataSetName = 'dse_rel_usuario'
      end>
    Variables = <
      item
        Name = ' PRINCIPAL'
        Value = Null
      end
      item
        Name = 'edt_data_1'
        Value = ''
      end
      item
        Name = 'edt_data_2'
        Value = ''
      end>
    Style = <>
    object Data: TfrxDataPage
      Height = 1000.000000000000000000
      Width = 1000.000000000000000000
    end
    object Page1: TfrxReportPage
      Orientation = poLandscape
      PaperWidth = 297.000000000000000000
      PaperHeight = 210.000000000000000000
      PaperSize = 256
      LeftMargin = 10.000000000000000000
      RightMargin = 10.000000000000000000
      TopMargin = 10.000000000000000000
      BottomMargin = 10.000000000000000000
      object PageHeader1: TfrxPageHeader
        FillType = ftBrush
        Height = 26.456710000000000000
        Top = 18.897650000000000000
        Width = 1046.929810000000000000
        object Memo17: TfrxMemoView
          Width = 1046.929810000000000000
          Height = 22.677180000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -19
          Font.Name = 'Arial'
          Font.Style = [fsBold, fsItalic]
          Fill.BackColor = 15000804
          Memo.UTF8W = (
            'ATENDIMENTOS POR ATENDENTE SMC')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo18: TfrxMemoView
          Left = 366.976500000000000000
          Top = 9.448825000000000000
          Width = 472.441250000000000000
          Height = 3.779530000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -21
          Font.Name = 'Arial'
          Font.Style = [fsBold, fsItalic]
          FillType = ftGradient
          Fill.StartColor = clGray
          Fill.EndColor = clSilver
          Fill.GradientStyle = gsHorizontal
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo19: TfrxMemoView
          Left = 846.717070000000000000
          Top = 3.779530000000000000
          Width = 56.692950000000000000
          Height = 15.118120000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Calibri'
          Font.Style = [fsBold]
          Memo.UTF8W = (
            'PER'#205'ODO:')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo22: TfrxMemoView
          Left = 903.410020000000000000
          Top = 3.779530000000000000
          Width = 64.252010000000000000
          Height = 15.118120000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Calibri'
          Font.Style = [fsBold]
          Memo.UTF8W = (
            '[edt_data_1]')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo23: TfrxMemoView
          Left = 982.677800000000000000
          Top = 3.779530000000000000
          Width = 64.252010000000000000
          Height = 15.118120000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Calibri'
          Font.Style = [fsBold]
          Memo.UTF8W = (
            '[edt_data_2]')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo24: TfrxMemoView
          Left = 967.559680000000000000
          Top = 3.779530000000000000
          Width = 15.118120000000000000
          Height = 15.118120000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Calibri'
          Font.Style = [fsBold]
          HAlign = haCenter
          Memo.UTF8W = (
            #192)
          ParentFont = False
          VAlign = vaCenter
        end
      end
      object PageFooter1: TfrxPageFooter
        FillType = ftBrush
        Height = 18.897650000000000000
        Top = 336.378170000000000000
        Width = 1046.929810000000000000
        object Memo25: TfrxMemoView
          Top = 3.779530000000000000
          Width = 154.960730000000000000
          Height = 15.118120000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Style = fsDot
          Memo.UTF8W = (
            'SMC - AUTOMA'#199#195'O COMERCIAL')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo26: TfrxMemoView
          Width = 1046.929810000000000000
          Height = 3.779530000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -21
          Font.Name = 'Arial'
          Font.Style = [fsBold, fsItalic]
          FillType = ftGradient
          Fill.StartColor = clGray
          Fill.EndColor = clSilver
          Fill.GradientStyle = gsHorizontal
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo27: TfrxMemoView
          Left = 483.779840000000000000
          Top = 3.779530000000000000
          Width = 102.047310000000000000
          Height = 15.118120000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Style = fsDot
          HAlign = haCenter
          Memo.UTF8W = (
            'P'#193'GINA: [PAGE]')
          ParentFont = False
          VAlign = vaCenter
        end
      end
      object Header1: TfrxHeader
        FillType = ftBrush
        Height = 15.118120000000000000
        Top = 105.826840000000000000
        Width = 1046.929810000000000000
        object Memo7: TfrxMemoView
          Left = 989.898270000000000000
          Width = 56.692950000000000000
          Height = 15.118120000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Calibri'
          Font.Style = [fsBold]
          Frame.Color = clGray
          Frame.Typ = [ftTop, ftBottom]
          Fill.BackColor = clSilver
          HAlign = haCenter
          Memo.UTF8W = (
            'STATUS')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo6: TfrxMemoView
          Left = 631.181510000000000000
          Width = 359.055350000000000000
          Height = 15.118120000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Calibri'
          Font.Style = [fsBold]
          Frame.Color = clGray
          Frame.Typ = [ftRight, ftTop, ftBottom]
          Fill.BackColor = clSilver
          HAlign = haCenter
          Memo.UTF8W = (
            'SOLU'#199#195'O')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo5: TfrxMemoView
          Left = 324.937230000000000000
          Width = 306.141930000000000000
          Height = 15.118120000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Calibri'
          Font.Style = [fsBold]
          Frame.Color = clGray
          Frame.Typ = [ftRight, ftTop, ftBottom]
          Fill.BackColor = clSilver
          HAlign = haCenter
          Memo.UTF8W = (
            'MOTIVO DO ATENDIMENTO')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo4: TfrxMemoView
          Left = 253.110390000000000000
          Width = 71.811070000000000000
          Height = 15.118120000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Calibri'
          Font.Style = [fsBold]
          Frame.Color = clGray
          Frame.Typ = [ftRight, ftTop, ftBottom]
          Fill.BackColor = clSilver
          HAlign = haCenter
          Memo.UTF8W = (
            'CONTATO')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo3: TfrxMemoView
          Left = 128.504020000000000000
          Width = 124.724490000000000000
          Height = 15.118120000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Calibri'
          Font.Style = [fsBold]
          Frame.Color = clGray
          Frame.Typ = [ftRight, ftTop, ftBottom]
          Fill.BackColor = clSilver
          HAlign = haCenter
          Memo.UTF8W = (
            'CLIENTE')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo2: TfrxMemoView
          Left = 68.031540000000000000
          Width = 60.472480000000000000
          Height = 15.118120000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Calibri'
          Font.Style = [fsBold]
          Frame.Color = clGray
          Frame.Typ = [ftRight, ftTop, ftBottom]
          Fill.BackColor = clSilver
          HAlign = haCenter
          Memo.UTF8W = (
            'SISTEMA')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo1: TfrxMemoView
          Width = 68.031540000000000000
          Height = 15.118120000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Calibri'
          Font.Style = [fsBold]
          Frame.Color = clGray
          Frame.Typ = [ftRight, ftTop, ftBottom]
          Fill.BackColor = clSilver
          HAlign = haCenter
          Memo.UTF8W = (
            'ATENDENTE')
          ParentFont = False
          VAlign = vaCenter
        end
      end
      object Footer1: TfrxFooter
        FillType = ftBrush
        Height = 77.370130000000000000
        Top = 196.535560000000000000
        Width = 1046.929810000000000000
        object Line2: TfrxLineView
          Top = 7.559060000000000000
          Width = 1046.929810000000000000
          Color = clBlack
          Frame.Color = clSilver
          Frame.Width = 2.000000000000000000
          Diagonal = True
        end
        object SysMemo1: TfrxSysMemoView
          Left = 950.110700000000000000
          Top = 53.015770000000000000
          Width = 94.488250000000000000
          Height = 18.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Calibri'
          Font.Style = [fsBold]
          Memo.UTF8W = (
            '[COUNT(MasterData1)]')
          ParentFont = False
        end
        object Memo50: TfrxMemoView
          Top = 29.338590000000000000
          Width = 1046.929810000000000000
          Height = 18.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -16
          Font.Name = 'Arial'
          Font.Style = [fsBold, fsItalic]
          Fill.BackColor = 15000804
          Memo.UTF8W = (
            'CONTAGEM')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo16: TfrxMemoView
          Left = 102.047310000000000000
          Top = 36.897650000000000000
          Width = 944.882500000000000000
          Height = 3.779530000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Calibri'
          Font.Style = [fsBold]
          Frame.Color = clGray
          FillType = ftGradient
          Fill.StartColor = clGray
          Fill.EndColor = clSilver
          Fill.GradientStyle = gsHorizontal
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo21: TfrxMemoView
          Top = 53.913420000000000000
          Width = 948.662030000000000000
          Height = 15.118120000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Calibri'
          Font.Style = [fsBold]
          Frame.Color = clSilver
          Frame.Style = fsDot
          Frame.Typ = [ftBottom]
          Memo.UTF8W = (
            'TOTAL DE ATENDIMENTOS :')
          ParentFont = False
          VAlign = vaCenter
        end
      end
      object MasterData1: TfrxMasterData
        FillType = ftBrush
        Height = 31.472480000000000000
        Top = 143.622140000000000000
        Width = 1046.929810000000000000
        DataSet = dse_rel_usuario
        DataSetName = 'dse_rel_usuario'
        RowCount = 0
        object Memo8: TfrxMemoView
          Width = 68.031540000000000000
          Height = 30.236240000000000000
          DataField = 'TECNICO'
          DataSet = dse_rel_usuario
          DataSetName = 'dse_rel_usuario'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'Calibri'
          Font.Style = []
          Frame.Color = clSilver
          Frame.Style = fsDot
          Frame.Typ = [ftRight]
          HAlign = haCenter
          Memo.UTF8W = (
            '[dse_rel_usuario."TECNICO"]')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo9: TfrxMemoView
          Left = 68.031540000000000000
          Width = 60.472480000000000000
          Height = 30.236240000000000000
          DataField = 'SISTEMA'
          DataSet = dse_rel_usuario
          DataSetName = 'dse_rel_usuario'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'Calibri'
          Font.Style = []
          Frame.Color = clSilver
          Frame.Style = fsDot
          Frame.Typ = [ftRight]
          HAlign = haCenter
          Memo.UTF8W = (
            '[dse_rel_usuario."SISTEMA"]')
          ParentFont = False
          VAlign = vaCenter
        end
        object Line1: TfrxLineView
          Top = 31.472480000000000000
          Width = 1046.929810000000000000
          Color = clBlack
          Frame.Color = clSilver
          Diagonal = True
        end
        object Memo10: TfrxMemoView
          Left = 128.504020000000000000
          Width = 124.724490000000000000
          Height = 30.236240000000000000
          DataField = 'NOME_FANTASIA'
          DataSet = dse_rel_usuario
          DataSetName = 'dse_rel_usuario'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'Calibri'
          Font.Style = []
          Frame.Color = clSilver
          Frame.Style = fsDot
          Frame.Typ = [ftRight]
          HAlign = haCenter
          Memo.UTF8W = (
            '[dse_rel_usuario."NOME_FANTASIA"]')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo11: TfrxMemoView
          Left = 253.110390000000000000
          Width = 71.811070000000000000
          Height = 30.236240000000000000
          DataField = 'CONTATO_1'
          DataSet = dse_rel_usuario
          DataSetName = 'dse_rel_usuario'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'Calibri'
          Font.Style = []
          Frame.Color = clSilver
          Frame.Style = fsDot
          Frame.Typ = [ftRight]
          HAlign = haCenter
          Memo.UTF8W = (
            '[dse_rel_usuario."CONTATO_1"]')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo14: TfrxMemoView
          Left = 989.898270000000000000
          Width = 56.692950000000000000
          Height = 30.236240000000000000
          DataField = 'STATUS'
          DataSet = dse_rel_usuario
          DataSetName = 'dse_rel_usuario'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'Calibri'
          Font.Style = []
          HAlign = haCenter
          Memo.UTF8W = (
            '[dse_rel_usuario."STATUS"]')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo12: TfrxMemoView
          Left = 324.937230000000000000
          Width = 306.141930000000000000
          Height = 30.236240000000000000
          DataField = 'PROBLEMA'
          DataSet = dse_rel_usuario
          DataSetName = 'dse_rel_usuario'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -8
          Font.Name = 'Calibri'
          Font.Style = []
          Frame.Color = clSilver
          Frame.Style = fsDot
          Frame.Typ = [ftRight]
          Memo.UTF8W = (
            '[dse_rel_usuario."PROBLEMA"]')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo13: TfrxMemoView
          Left = 631.181510000000000000
          Width = 359.055350000000000000
          Height = 30.236240000000000000
          DataField = 'SOLUCAO'
          DataSet = dse_rel_usuario
          DataSetName = 'dse_rel_usuario'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -8
          Font.Name = 'Calibri'
          Font.Style = []
          Frame.Color = clSilver
          Frame.Style = fsDot
          Frame.Typ = [ftRight]
          Memo.UTF8W = (
            '[dse_rel_usuario."SOLUCAO"]')
          ParentFont = False
          VAlign = vaCenter
        end
      end
    end
  end
  object sql_rel_usuario: TFDQuery
    Connection = Module.connection
    SQL.Strings = (
      
        'select TECNICO, SISTEMA, NOME_FANTASIA, CONTATO_1, PROBLEMA, SOL' +
        'UCAO, STATUS'
      'from atendimentos'
      
        'where date(ABERTURA) between :pdata_inicio and :pdata_fim and TE' +
        'CNICO=:patendente'
      'order by STATUS desc')
    Left = 392
    Top = 88
    ParamData = <
      item
        Name = 'PDATA_INICIO'
        DataType = ftDate
        ParamType = ptInput
        Value = 43831d
      end
      item
        Name = 'PDATA_FIM'
        DataType = ftDate
        ParamType = ptInput
        Value = 43929d
      end
      item
        Name = 'PATENDENTE'
        DataType = ftString
        ParamType = ptInput
        Value = 'MASTER'
      end>
    object sql_rel_usuarioTECNICO: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'TECNICO'
      Origin = 'TECNICO'
      Size = 200
    end
    object sql_rel_usuarioSISTEMA: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'SISTEMA'
      Origin = 'SISTEMA'
      FixedChar = True
      Size = 8
    end
    object sql_rel_usuarioNOME_FANTASIA: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'NOME_FANTASIA'
      Origin = 'NOME_FANTASIA'
      Size = 200
    end
    object sql_rel_usuarioCONTATO_1: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'CONTATO_1'
      Origin = 'CONTATO_1'
      Size = 200
    end
    object sql_rel_usuarioPROBLEMA: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'PROBLEMA'
      Origin = 'PROBLEMA'
      Size = 5000
    end
    object sql_rel_usuarioSOLUCAO: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'SOLUCAO'
      Origin = 'SOLUCAO'
      Size = 5000
    end
    object sql_rel_usuarioSTATUS: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'STATUS'
      Origin = 'STATUS'
      FixedChar = True
      Size = 7
    end
  end
  object dse_rel_usuario: TfrxDBDataset
    UserName = 'dse_rel_usuario'
    CloseDataSource = False
    FieldAliases.Strings = (
      'TECNICO=TECNICO'
      'SISTEMA=SISTEMA'
      'NOME_FANTASIA=NOME_FANTASIA'
      'CONTATO_1=CONTATO_1'
      'PROBLEMA=PROBLEMA'
      'SOLUCAO=SOLUCAO'
      'STATUS=STATUS')
    DataSet = sql_rel_usuario
    BCDToCurrency = False
    Left = 480
    Top = 88
  end
  object sql_rel_por_cliente: TFDQuery
    Connection = Module.connection
    SQL.Strings = (
      
        'select TECNICO, SISTEMA, NOME_FANTASIA, CONTATO_1, PROBLEMA, SOL' +
        'UCAO, STATUS'
      'from atendimentos'
      
        'where date(ABERTURA) between :pdata_inicio and :pdata_fim and NO' +
        'ME_FANTASIA=:pcliente'
      'order by STATUS desc'
      '')
    Left = 392
    Top = 160
    ParamData = <
      item
        Name = 'PDATA_INICIO'
        DataType = ftDate
        ParamType = ptInput
        Value = 43831d
      end
      item
        Name = 'PDATA_FIM'
        DataType = ftDate
        ParamType = ptInput
        Value = 43929d
      end
      item
        Name = 'PCLIENTE'
        DataType = ftString
        ParamType = ptInput
        Value = 'cliente'
      end>
    object sql_rel_por_clienteTECNICO: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'TECNICO'
      Origin = 'TECNICO'
      Size = 200
    end
    object sql_rel_por_clienteSISTEMA: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'SISTEMA'
      Origin = 'SISTEMA'
      FixedChar = True
      Size = 8
    end
    object sql_rel_por_clienteNOME_FANTASIA: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'NOME_FANTASIA'
      Origin = 'NOME_FANTASIA'
      Size = 200
    end
    object sql_rel_por_clienteCONTATO_1: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'CONTATO_1'
      Origin = 'CONTATO_1'
      Size = 200
    end
    object sql_rel_por_clientePROBLEMA: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'PROBLEMA'
      Origin = 'PROBLEMA'
      Size = 5000
    end
    object sql_rel_por_clienteSOLUCAO: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'SOLUCAO'
      Origin = 'SOLUCAO'
      Size = 5000
    end
    object sql_rel_por_clienteSTATUS: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'STATUS'
      Origin = 'STATUS'
      FixedChar = True
      Size = 7
    end
  end
  object frx_rel_por_cliente: TfrxReport
    Version = '5.2.3'
    DotMatrixReport = False
    IniFile = '\Software\Fast Reports'
    PreviewOptions.Buttons = [pbPrint, pbLoad, pbSave, pbExport, pbZoom, pbFind, pbOutline, pbPageSetup, pbTools, pbEdit, pbNavigator, pbExportQuick]
    PreviewOptions.Zoom = 1.000000000000000000
    PrintOptions.Printer = 'Default'
    PrintOptions.PrintOnSheet = 0
    ReportOptions.CreateDate = 43097.453301180600000000
    ReportOptions.LastChange = 43257.439475509300000000
    ScriptLanguage = 'PascalScript'
    ScriptText.Strings = (
      'begin'
      ''
      'end.')
    Left = 565
    Top = 160
    Datasets = <
      item
        DataSet = dse_rel_por_cliente
        DataSetName = 'dse_rel_por_cliente'
      end>
    Variables = <
      item
        Name = ' PRINCIPAL'
        Value = Null
      end
      item
        Name = 'edt_data_1'
        Value = ''
      end
      item
        Name = 'edt_data_2'
        Value = ''
      end>
    Style = <>
    object Data: TfrxDataPage
      Height = 1000.000000000000000000
      Width = 1000.000000000000000000
    end
    object Page1: TfrxReportPage
      Orientation = poLandscape
      PaperWidth = 297.000000000000000000
      PaperHeight = 210.000000000000000000
      PaperSize = 256
      LeftMargin = 10.000000000000000000
      RightMargin = 10.000000000000000000
      TopMargin = 10.000000000000000000
      BottomMargin = 10.000000000000000000
      object PageHeader1: TfrxPageHeader
        FillType = ftBrush
        Height = 26.456710000000000000
        Top = 18.897650000000000000
        Width = 1046.929810000000000000
        object Memo17: TfrxMemoView
          Width = 1046.929810000000000000
          Height = 22.677180000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -19
          Font.Name = 'Arial'
          Font.Style = [fsBold, fsItalic]
          Fill.BackColor = 15000804
          Memo.UTF8W = (
            'ATENDIMENTOS POR CLIENTE')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo18: TfrxMemoView
          Left = 288.976500000000000000
          Top = 9.448825000000000000
          Width = 551.811380000000000000
          Height = 3.779530000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -21
          Font.Name = 'Arial'
          Font.Style = [fsBold, fsItalic]
          FillType = ftGradient
          Fill.StartColor = clGray
          Fill.EndColor = clSilver
          Fill.GradientStyle = gsHorizontal
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo19: TfrxMemoView
          Left = 846.717070000000000000
          Top = 3.779530000000000000
          Width = 56.692950000000000000
          Height = 15.118120000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Calibri'
          Font.Style = [fsBold]
          Memo.UTF8W = (
            'PER'#205'ODO:')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo22: TfrxMemoView
          Left = 903.410020000000000000
          Top = 3.779530000000000000
          Width = 64.252010000000000000
          Height = 15.118120000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Calibri'
          Font.Style = [fsBold]
          Memo.UTF8W = (
            '[edt_data_1]')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo23: TfrxMemoView
          Left = 982.677800000000000000
          Top = 3.779530000000000000
          Width = 64.252010000000000000
          Height = 15.118120000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Calibri'
          Font.Style = [fsBold]
          Memo.UTF8W = (
            '[edt_data_2]')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo24: TfrxMemoView
          Left = 967.559680000000000000
          Top = 3.779530000000000000
          Width = 15.118120000000000000
          Height = 15.118120000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Calibri'
          Font.Style = [fsBold]
          HAlign = haCenter
          Memo.UTF8W = (
            #192)
          ParentFont = False
          VAlign = vaCenter
        end
      end
      object PageFooter1: TfrxPageFooter
        FillType = ftBrush
        Height = 18.897650000000000000
        Top = 377.953000000000000000
        Width = 1046.929810000000000000
        object Memo25: TfrxMemoView
          Top = 3.779530000000000000
          Width = 154.960730000000000000
          Height = 15.118120000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Style = fsDot
          Memo.UTF8W = (
            'SMC - AUTOMA'#199#195'O COMERCIAL')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo26: TfrxMemoView
          Width = 1046.929810000000000000
          Height = 3.779530000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -21
          Font.Name = 'Arial'
          Font.Style = [fsBold, fsItalic]
          FillType = ftGradient
          Fill.StartColor = clGray
          Fill.EndColor = clSilver
          Fill.GradientStyle = gsHorizontal
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo27: TfrxMemoView
          Left = 483.779840000000000000
          Top = 3.779530000000000000
          Width = 102.047310000000000000
          Height = 15.118120000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Style = fsDot
          HAlign = haCenter
          Memo.UTF8W = (
            'P'#193'GINA: [PAGE]')
          ParentFont = False
          VAlign = vaCenter
        end
      end
      object Header1: TfrxHeader
        FillType = ftBrush
        Height = 15.118120000000000000
        Top = 105.826840000000000000
        Width = 1046.929810000000000000
        object Memo7: TfrxMemoView
          Left = 989.898270000000000000
          Width = 56.692950000000000000
          Height = 15.118120000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Calibri'
          Font.Style = [fsBold]
          Frame.Color = clGray
          Frame.Typ = [ftTop, ftBottom]
          Fill.BackColor = clSilver
          HAlign = haCenter
          Memo.UTF8W = (
            'STATUS')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo6: TfrxMemoView
          Left = 631.181510000000000000
          Width = 359.055350000000000000
          Height = 15.118120000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Calibri'
          Font.Style = [fsBold]
          Frame.Color = clGray
          Frame.Typ = [ftRight, ftTop, ftBottom]
          Fill.BackColor = clSilver
          HAlign = haCenter
          Memo.UTF8W = (
            'SOLU'#199#195'O')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo5: TfrxMemoView
          Left = 324.937230000000000000
          Width = 306.141930000000000000
          Height = 15.118120000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Calibri'
          Font.Style = [fsBold]
          Frame.Color = clGray
          Frame.Typ = [ftRight, ftTop, ftBottom]
          Fill.BackColor = clSilver
          HAlign = haCenter
          Memo.UTF8W = (
            'MOTIVO DO ATENDIMENTO')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo4: TfrxMemoView
          Left = 253.110390000000000000
          Width = 71.811070000000000000
          Height = 15.118120000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Calibri'
          Font.Style = [fsBold]
          Frame.Color = clGray
          Frame.Typ = [ftRight, ftTop, ftBottom]
          Fill.BackColor = clSilver
          HAlign = haCenter
          Memo.UTF8W = (
            'CONTATO')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo3: TfrxMemoView
          Left = 128.504020000000000000
          Width = 124.724490000000000000
          Height = 15.118120000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Calibri'
          Font.Style = [fsBold]
          Frame.Color = clGray
          Frame.Typ = [ftRight, ftTop, ftBottom]
          Fill.BackColor = clSilver
          HAlign = haCenter
          Memo.UTF8W = (
            'CLIENTE')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo2: TfrxMemoView
          Left = 68.031540000000000000
          Width = 60.472480000000000000
          Height = 15.118120000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Calibri'
          Font.Style = [fsBold]
          Frame.Color = clGray
          Frame.Typ = [ftRight, ftTop, ftBottom]
          Fill.BackColor = clSilver
          HAlign = haCenter
          Memo.UTF8W = (
            'SISTEMA')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo1: TfrxMemoView
          Width = 68.031540000000000000
          Height = 15.118120000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Calibri'
          Font.Style = [fsBold]
          Frame.Color = clGray
          Frame.Typ = [ftRight, ftTop, ftBottom]
          Fill.BackColor = clSilver
          HAlign = haCenter
          Memo.UTF8W = (
            'ATENDENTE')
          ParentFont = False
          VAlign = vaCenter
        end
      end
      object Footer1: TfrxFooter
        FillType = ftBrush
        Height = 120.944960000000000000
        Top = 196.535560000000000000
        Width = 1046.929810000000000000
        object Line2: TfrxLineView
          Top = 7.559060000000000000
          Width = 1046.929810000000000000
          Color = clBlack
          Frame.Color = clSilver
          Frame.Width = 2.000000000000000000
          Diagonal = True
        end
        object Memo21: TfrxMemoView
          Left = 0.779530000000000000
          Top = 49.795300000000000000
          Width = 963.780150000000000000
          Height = 15.118120000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Calibri'
          Font.Style = [fsBold]
          Frame.Color = clSilver
          Frame.Style = fsDot
          Frame.Typ = [ftBottom]
          Memo.UTF8W = (
            'TOTAL DE ATENDIMENTOS :')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo50: TfrxMemoView
          Left = 0.779530000000000000
          Top = 25.118120000000000000
          Width = 1046.929810000000000000
          Height = 18.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -16
          Font.Name = 'Arial'
          Font.Style = [fsBold, fsItalic]
          Fill.BackColor = 15000804
          Memo.UTF8W = (
            'CONTAGEM')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo16: TfrxMemoView
          Left = 102.047310000000000000
          Top = 33.677180000000000000
          Width = 944.882500000000000000
          Height = 3.779530000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Calibri'
          Font.Style = [fsBold]
          Frame.Color = clGray
          FillType = ftGradient
          Fill.StartColor = clGray
          Fill.EndColor = clSilver
          Fill.GradientStyle = gsHorizontal
          ParentFont = False
          VAlign = vaCenter
        end
        object SysMemo1: TfrxSysMemoView
          Left = 963.780150000000000000
          Top = 48.354360000000000000
          Width = 79.370130000000000000
          Height = 18.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Calibri'
          Font.Style = [fsBold]
          Memo.UTF8W = (
            '[COUNT(MasterData1)]')
          ParentFont = False
        end
      end
      object MasterData1: TfrxMasterData
        FillType = ftBrush
        Height = 31.472480000000000000
        Top = 143.622140000000000000
        Width = 1046.929810000000000000
        DataSet = dse_rel_por_cliente
        DataSetName = 'dse_rel_por_cliente'
        RowCount = 0
        object Memo8: TfrxMemoView
          Width = 68.031540000000000000
          Height = 30.236240000000000000
          DataField = 'TECNICO'
          DataSet = dse_rel_por_cliente
          DataSetName = 'dse_rel_por_cliente'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'Calibri'
          Font.Style = []
          Frame.Color = clSilver
          Frame.Style = fsDot
          Frame.Typ = [ftRight]
          HAlign = haCenter
          Memo.UTF8W = (
            '[dse_rel_por_cliente."TECNICO"]')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo9: TfrxMemoView
          Left = 68.031540000000000000
          Width = 60.472480000000000000
          Height = 30.236240000000000000
          DataField = 'SISTEMA'
          DataSet = dse_rel_por_cliente
          DataSetName = 'dse_rel_por_cliente'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'Calibri'
          Font.Style = []
          Frame.Color = clSilver
          Frame.Style = fsDot
          Frame.Typ = [ftRight]
          HAlign = haCenter
          Memo.UTF8W = (
            '[dse_rel_por_cliente."SISTEMA"]')
          ParentFont = False
          VAlign = vaCenter
        end
        object Line1: TfrxLineView
          Top = 31.472480000000000000
          Width = 1046.929810000000000000
          Color = clBlack
          Frame.Color = clSilver
          Diagonal = True
        end
        object Memo10: TfrxMemoView
          Left = 128.504020000000000000
          Width = 124.724490000000000000
          Height = 30.236240000000000000
          DataField = 'NOME_FANTASIA'
          DataSet = dse_rel_por_cliente
          DataSetName = 'dse_rel_por_cliente'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'Calibri'
          Font.Style = []
          Frame.Color = clSilver
          Frame.Style = fsDot
          Frame.Typ = [ftRight]
          HAlign = haCenter
          Memo.UTF8W = (
            '[dse_rel_por_cliente."NOME_FANTASIA"]')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo11: TfrxMemoView
          Left = 253.110390000000000000
          Width = 71.811070000000000000
          Height = 30.236240000000000000
          DataField = 'CONTATO_1'
          DataSet = dse_rel_por_cliente
          DataSetName = 'dse_rel_por_cliente'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'Calibri'
          Font.Style = []
          Frame.Color = clSilver
          Frame.Style = fsDot
          Frame.Typ = [ftRight]
          HAlign = haCenter
          Memo.UTF8W = (
            '[dse_rel_por_cliente."CONTATO_1"]')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo14: TfrxMemoView
          Left = 989.898270000000000000
          Width = 56.692950000000000000
          Height = 30.236240000000000000
          DataField = 'STATUS'
          DataSet = dse_rel_por_cliente
          DataSetName = 'dse_rel_por_cliente'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'Calibri'
          Font.Style = []
          HAlign = haCenter
          Memo.UTF8W = (
            '[dse_rel_por_cliente."STATUS"]')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo12: TfrxMemoView
          Left = 324.937230000000000000
          Width = 306.141930000000000000
          Height = 30.236240000000000000
          DataField = 'PROBLEMA'
          DataSet = dse_rel_por_cliente
          DataSetName = 'dse_rel_por_cliente'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -8
          Font.Name = 'Calibri'
          Font.Style = []
          Frame.Color = clSilver
          Frame.Style = fsDot
          Frame.Typ = [ftRight]
          Memo.UTF8W = (
            '[dse_rel_por_cliente."PROBLEMA"]')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo13: TfrxMemoView
          Left = 631.181510000000000000
          Width = 359.055350000000000000
          Height = 30.236240000000000000
          DataField = 'SOLUCAO'
          DataSet = dse_rel_por_cliente
          DataSetName = 'dse_rel_por_cliente'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -8
          Font.Name = 'Calibri'
          Font.Style = []
          Frame.Color = clSilver
          Frame.Style = fsDot
          Frame.Typ = [ftRight]
          Memo.UTF8W = (
            '[dse_rel_por_cliente."SOLUCAO"]')
          ParentFont = False
          VAlign = vaCenter
        end
      end
    end
  end
  object dse_rel_por_cliente: TfrxDBDataset
    UserName = 'dse_rel_por_cliente'
    CloseDataSource = False
    FieldAliases.Strings = (
      'TECNICO=TECNICO'
      'SISTEMA=SISTEMA'
      'NOME_FANTASIA=NOME_FANTASIA'
      'CONTATO_1=CONTATO_1'
      'PROBLEMA=PROBLEMA'
      'SOLUCAO=SOLUCAO'
      'STATUS=STATUS')
    DataSet = sql_rel_por_cliente
    BCDToCurrency = False
    Left = 480
    Top = 160
  end
  object frx_rel_geral: TfrxReport
    Version = '5.2.3'
    DotMatrixReport = False
    IniFile = '\Software\Fast Reports'
    PreviewOptions.Buttons = [pbPrint, pbLoad, pbSave, pbExport, pbZoom, pbFind, pbOutline, pbPageSetup, pbTools, pbEdit, pbNavigator, pbExportQuick]
    PreviewOptions.Zoom = 1.000000000000000000
    PrintOptions.Printer = 'Default'
    PrintOptions.PrintOnSheet = 0
    ReportOptions.CreateDate = 43097.453301180600000000
    ReportOptions.LastChange = 43257.439475509300000000
    ScriptLanguage = 'PascalScript'
    ScriptText.Strings = (
      'begin'
      ''
      'end.')
    Left = 565
    Top = 16
    Datasets = <
      item
        DataSet = dse_rel_geral
        DataSetName = 'dse_rel_geral'
      end>
    Variables = <
      item
        Name = ' PRINCIPAL'
        Value = Null
      end
      item
        Name = 'edt_data_1'
        Value = ''
      end
      item
        Name = 'edt_data_2'
        Value = ''
      end>
    Style = <>
    object Data: TfrxDataPage
      Height = 1000.000000000000000000
      Width = 1000.000000000000000000
    end
    object Page1: TfrxReportPage
      Orientation = poLandscape
      PaperWidth = 297.000000000000000000
      PaperHeight = 210.000000000000000000
      PaperSize = 256
      LeftMargin = 10.000000000000000000
      RightMargin = 10.000000000000000000
      TopMargin = 10.000000000000000000
      BottomMargin = 10.000000000000000000
      object PageHeader1: TfrxPageHeader
        FillType = ftBrush
        Height = 26.456710000000000000
        Top = 18.897650000000000000
        Width = 1046.929810000000000000
        object Memo17: TfrxMemoView
          Width = 1046.929810000000000000
          Height = 22.677180000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -19
          Font.Name = 'Arial'
          Font.Style = [fsBold, fsItalic]
          Fill.BackColor = 15000804
          Memo.UTF8W = (
            'ATENDIMENTOS POR ATENDENTE SMC')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo18: TfrxMemoView
          Left = 366.976500000000000000
          Top = 9.448825000000000000
          Width = 472.441250000000000000
          Height = 3.779530000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -21
          Font.Name = 'Arial'
          Font.Style = [fsBold, fsItalic]
          FillType = ftGradient
          Fill.StartColor = clGray
          Fill.EndColor = clSilver
          Fill.GradientStyle = gsHorizontal
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo19: TfrxMemoView
          Left = 846.717070000000000000
          Top = 3.779530000000000000
          Width = 56.692950000000000000
          Height = 15.118120000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Calibri'
          Font.Style = [fsBold]
          Memo.UTF8W = (
            'PER'#205'ODO:')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo22: TfrxMemoView
          Left = 903.410020000000000000
          Top = 3.779530000000000000
          Width = 64.252010000000000000
          Height = 15.118120000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Calibri'
          Font.Style = [fsBold]
          Memo.UTF8W = (
            '[edt_data_1]')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo23: TfrxMemoView
          Left = 982.677800000000000000
          Top = 3.779530000000000000
          Width = 64.252010000000000000
          Height = 15.118120000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Calibri'
          Font.Style = [fsBold]
          Memo.UTF8W = (
            '[edt_data_2]')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo24: TfrxMemoView
          Left = 967.559680000000000000
          Top = 3.779530000000000000
          Width = 15.118120000000000000
          Height = 15.118120000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Calibri'
          Font.Style = [fsBold]
          HAlign = haCenter
          Memo.UTF8W = (
            #192)
          ParentFont = False
          VAlign = vaCenter
        end
      end
      object PageFooter1: TfrxPageFooter
        FillType = ftBrush
        Height = 18.897650000000000000
        Top = 272.126160000000000000
        Width = 1046.929810000000000000
        object Memo25: TfrxMemoView
          Top = 3.779530000000000000
          Width = 154.960730000000000000
          Height = 15.118120000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Style = fsDot
          Memo.UTF8W = (
            'SMC - AUTOMA'#199#195'O COMERCIAL')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo26: TfrxMemoView
          Width = 1046.929810000000000000
          Height = 3.779530000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -21
          Font.Name = 'Arial'
          Font.Style = [fsBold, fsItalic]
          FillType = ftGradient
          Fill.StartColor = clGray
          Fill.EndColor = clSilver
          Fill.GradientStyle = gsHorizontal
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo27: TfrxMemoView
          Left = 483.779840000000000000
          Top = 3.779530000000000000
          Width = 102.047310000000000000
          Height = 15.118120000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Style = fsDot
          HAlign = haCenter
          Memo.UTF8W = (
            'P'#193'GINA: [PAGE]')
          ParentFont = False
          VAlign = vaCenter
        end
      end
      object Header1: TfrxHeader
        FillType = ftBrush
        Height = 15.118120000000000000
        Top = 105.826840000000000000
        Width = 1046.929810000000000000
        object Memo7: TfrxMemoView
          Left = 989.898270000000000000
          Width = 56.692950000000000000
          Height = 15.118120000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Calibri'
          Font.Style = [fsBold]
          Frame.Color = clGray
          Frame.Typ = [ftTop, ftBottom]
          Fill.BackColor = clSilver
          HAlign = haCenter
          Memo.UTF8W = (
            'STATUS')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo6: TfrxMemoView
          Left = 631.181510000000000000
          Width = 359.055350000000000000
          Height = 15.118120000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Calibri'
          Font.Style = [fsBold]
          Frame.Color = clGray
          Frame.Typ = [ftRight, ftTop, ftBottom]
          Fill.BackColor = clSilver
          HAlign = haCenter
          Memo.UTF8W = (
            'SOLU'#199#195'O')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo5: TfrxMemoView
          Left = 324.937230000000000000
          Width = 306.141930000000000000
          Height = 15.118120000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Calibri'
          Font.Style = [fsBold]
          Frame.Color = clGray
          Frame.Typ = [ftRight, ftTop, ftBottom]
          Fill.BackColor = clSilver
          HAlign = haCenter
          Memo.UTF8W = (
            'MOTIVO DO ATENDIMENTO')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo4: TfrxMemoView
          Left = 253.110390000000000000
          Width = 71.811070000000000000
          Height = 15.118120000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Calibri'
          Font.Style = [fsBold]
          Frame.Color = clGray
          Frame.Typ = [ftRight, ftTop, ftBottom]
          Fill.BackColor = clSilver
          HAlign = haCenter
          Memo.UTF8W = (
            'CONTATO')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo3: TfrxMemoView
          Left = 128.504020000000000000
          Width = 124.724490000000000000
          Height = 15.118120000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Calibri'
          Font.Style = [fsBold]
          Frame.Color = clGray
          Frame.Typ = [ftRight, ftTop, ftBottom]
          Fill.BackColor = clSilver
          HAlign = haCenter
          Memo.UTF8W = (
            'CLIENTE')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo2: TfrxMemoView
          Left = 68.031540000000000000
          Width = 60.472480000000000000
          Height = 15.118120000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Calibri'
          Font.Style = [fsBold]
          Frame.Color = clGray
          Frame.Typ = [ftRight, ftTop, ftBottom]
          Fill.BackColor = clSilver
          HAlign = haCenter
          Memo.UTF8W = (
            'SISTEMA')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo1: TfrxMemoView
          Width = 68.031540000000000000
          Height = 15.118120000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Calibri'
          Font.Style = [fsBold]
          Frame.Color = clGray
          Frame.Typ = [ftRight, ftTop, ftBottom]
          Fill.BackColor = clSilver
          HAlign = haCenter
          Memo.UTF8W = (
            'ATENDENTE')
          ParentFont = False
          VAlign = vaCenter
        end
      end
      object Footer1: TfrxFooter
        FillType = ftBrush
        Height = 13.118120000000000000
        Top = 196.535560000000000000
        Width = 1046.929810000000000000
        object Line2: TfrxLineView
          Top = 7.559060000000000000
          Width = 1046.929810000000000000
          Color = clBlack
          Frame.Color = clSilver
          Frame.Width = 2.000000000000000000
          Diagonal = True
        end
      end
      object MasterData1: TfrxMasterData
        FillType = ftBrush
        Height = 31.472480000000000000
        Top = 143.622140000000000000
        Width = 1046.929810000000000000
        DataSet = dse_rel_geral
        DataSetName = 'dse_rel_geral'
        RowCount = 0
        object Memo8: TfrxMemoView
          Width = 68.031540000000000000
          Height = 30.236240000000000000
          DataField = 'TECNICO'
          DataSet = dse_rel_geral
          DataSetName = 'dse_rel_geral'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'Calibri'
          Font.Style = []
          Frame.Color = clSilver
          Frame.Style = fsDot
          Frame.Typ = [ftRight]
          HAlign = haCenter
          Memo.UTF8W = (
            '[dse_rel_geral."TECNICO"]')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo9: TfrxMemoView
          Left = 68.031540000000000000
          Width = 60.472480000000000000
          Height = 30.236240000000000000
          DataField = 'SISTEMA'
          DataSet = dse_rel_geral
          DataSetName = 'dse_rel_geral'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'Calibri'
          Font.Style = []
          Frame.Color = clSilver
          Frame.Style = fsDot
          Frame.Typ = [ftRight]
          HAlign = haCenter
          Memo.UTF8W = (
            '[dse_rel_geral."SISTEMA"]')
          ParentFont = False
          VAlign = vaCenter
        end
        object Line1: TfrxLineView
          Top = 31.472480000000000000
          Width = 1046.929810000000000000
          Color = clBlack
          Frame.Color = clSilver
          Diagonal = True
        end
        object Memo10: TfrxMemoView
          Left = 128.504020000000000000
          Width = 124.724490000000000000
          Height = 30.236240000000000000
          DataField = 'NOME_FANTASIA'
          DataSet = dse_rel_geral
          DataSetName = 'dse_rel_geral'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'Calibri'
          Font.Style = []
          Frame.Color = clSilver
          Frame.Style = fsDot
          Frame.Typ = [ftRight]
          HAlign = haCenter
          Memo.UTF8W = (
            '[dse_rel_geral."NOME_FANTASIA"]')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo11: TfrxMemoView
          Left = 253.110390000000000000
          Width = 71.811070000000000000
          Height = 30.236240000000000000
          DataField = 'CONTATO_1'
          DataSet = dse_rel_geral
          DataSetName = 'dse_rel_geral'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'Calibri'
          Font.Style = []
          Frame.Color = clSilver
          Frame.Style = fsDot
          Frame.Typ = [ftRight]
          HAlign = haCenter
          Memo.UTF8W = (
            '[dse_rel_geral."CONTATO_1"]')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo14: TfrxMemoView
          Left = 989.898270000000000000
          Width = 56.692950000000000000
          Height = 30.236240000000000000
          DataField = 'STATUS'
          DataSet = dse_rel_geral
          DataSetName = 'dse_rel_geral'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -9
          Font.Name = 'Calibri'
          Font.Style = []
          HAlign = haCenter
          Memo.UTF8W = (
            '[dse_rel_geral."STATUS"]')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo12: TfrxMemoView
          Left = 324.937230000000000000
          Width = 306.141930000000000000
          Height = 30.236240000000000000
          DataField = 'PROBLEMA'
          DataSet = dse_rel_geral
          DataSetName = 'dse_rel_geral'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -8
          Font.Name = 'Calibri'
          Font.Style = []
          Frame.Color = clSilver
          Frame.Style = fsDot
          Frame.Typ = [ftRight]
          Memo.UTF8W = (
            '[dse_rel_geral."PROBLEMA"]')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo13: TfrxMemoView
          Left = 631.181510000000000000
          Width = 359.055350000000000000
          Height = 30.236240000000000000
          DataField = 'SOLUCAO'
          DataSet = dse_rel_geral
          DataSetName = 'dse_rel_geral'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -8
          Font.Name = 'Calibri'
          Font.Style = []
          Frame.Color = clSilver
          Frame.Style = fsDot
          Frame.Typ = [ftRight]
          Memo.UTF8W = (
            '[dse_rel_geral."SOLUCAO"]')
          ParentFont = False
          VAlign = vaCenter
        end
      end
    end
  end
end
