object frm_rel_pvw_vertical: Tfrm_rel_pvw_vertical
  Left = 0
  Top = 0
  BorderIcons = []
  BorderStyle = bsNone
  Caption = 'frm_rel_pvw_vertical'
  ClientHeight = 300
  ClientWidth = 505
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  KeyPreview = True
  OldCreateOrder = False
  WindowState = wsMaximized
  OnClose = FormClose
  OnKeyDown = FormKeyDown
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 13
  object GridPanel1: TGridPanel
    Left = 0
    Top = 0
    Width = 505
    Height = 300
    Align = alClient
    Caption = 'GridPanel1'
    ColumnCollection = <
      item
        Value = 25.000000000000040000
      end
      item
        Value = 74.999999999999960000
      end>
    ControlCollection = <
      item
        Column = 1
        Control = pvw_report
        Row = 0
      end
      item
        Column = 0
        Control = GridPanel2
        Row = 0
      end>
    RowCollection = <
      item
        Value = 100.000000000000000000
      end>
    TabOrder = 0
    ExplicitWidth = 486
    object pvw_report: TfrxPreview
      Left = 126
      Top = 1
      Width = 378
      Height = 298
      Align = alClient
      OutlineVisible = True
      OutlineWidth = 121
      ThumbnailVisible = False
      UseReportHints = True
      ExplicitLeft = 122
      ExplicitWidth = 363
    end
    object GridPanel2: TGridPanel
      Left = 1
      Top = 1
      Width = 125
      Height = 298
      Align = alClient
      Caption = 'GridPanel2'
      ColumnCollection = <
        item
          Value = 100.000000000000000000
        end>
      ControlCollection = <
        item
          Column = 0
          Control = cxButton3
          Row = 2
        end
        item
          Column = 0
          Control = Edit1
          Row = 0
        end
        item
          Column = 0
          Control = Button1
          Row = 1
        end>
      RowCollection = <
        item
          Value = 45.000000000000000000
        end
        item
          Value = 45.000000000000000000
        end
        item
          Value = 9.999999999999998000
        end>
      TabOrder = 1
      ExplicitWidth = 121
      DesignSize = (
        125
        298)
      object cxButton3: TcxButton
        Left = 1
        Top = 267
        Width = 123
        Height = 30
        Align = alClient
        Caption = 'cxButton1'
        TabOrder = 0
        OnClick = cxButton3Click
        ExplicitWidth = 119
      end
      object Edit1: TEdit
        Left = 3
        Top = 57
        Width = 119
        Height = 21
        Anchors = []
        TabOrder = 1
        Text = 'Edit1'
        ExplicitLeft = 1
      end
      object Button1: TButton
        Left = 25
        Top = 188
        Width = 75
        Height = 25
        Anchors = []
        Caption = 'Button1'
        TabOrder = 2
        OnClick = Button1Click
        ExplicitLeft = 23
      end
    end
  end
  object DS_REPORT: TfrxDBDataset
    UserName = 'DS_REPORT'
    CloseDataSource = False
    FieldAliases.Strings = (
      'codigo=codigo'
      'descricao_produto=descricao_produto'
      'preco_final_varejo=preco_final_varejo')
    DataSet = SQL_REPORT
    BCDToCurrency = False
    Left = 152
    Top = 72
  end
  object FR_REPORT: TfrxReport
    Version = '5.2.3'
    DotMatrixReport = False
    IniFile = '\Software\Fast Reports'
    PreviewOptions.Buttons = [pbPrint, pbLoad, pbSave, pbExport, pbZoom, pbFind, pbOutline, pbPageSetup, pbTools, pbEdit, pbNavigator, pbExportQuick]
    PreviewOptions.Zoom = 1.000000000000000000
    PrintOptions.Printer = 'Default'
    PrintOptions.PrintOnSheet = 0
    ReportOptions.CreateDate = 42943.698559386600000000
    ReportOptions.LastChange = 42943.716869247700000000
    ScriptLanguage = 'PascalScript'
    ScriptText.Strings = (
      'begin'
      ''
      'end.')
    Left = 216
    Top = 72
    Datasets = <
      item
        DataSet = DS_REPORT
        DataSetName = 'DS_REPORT'
      end>
    Variables = <>
    Style = <>
    object Data: TfrxDataPage
      Height = 1000.000000000000000000
      Width = 1000.000000000000000000
    end
    object Page1: TfrxReportPage
      PaperWidth = 210.000000000000000000
      PaperHeight = 297.000000000000000000
      PaperSize = 9
      LeftMargin = 10.000000000000000000
      RightMargin = 10.000000000000000000
      TopMargin = 10.000000000000000000
      BottomMargin = 10.000000000000000000
      object PageHeader1: TfrxPageHeader
        FillType = ftBrush
        Height = 37.795300000000000000
        Top = 18.897650000000000000
        Width = 718.110700000000000000
        object Memo1: TfrxMemoView
          Left = 3.779530000000000000
          Top = 3.779530000000000000
          Width = 94.488250000000000000
          Height = 18.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          HAlign = haCenter
          Memo.UTF8W = (
            'CODIGO')
          ParentFont = False
        end
        object Memo2: TfrxMemoView
          Left = 113.385900000000000000
          Top = 3.779530000000000000
          Width = 204.094620000000000000
          Height = 18.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          HAlign = haCenter
          Memo.UTF8W = (
            'PRODUTO')
          ParentFont = False
        end
        object Memo3: TfrxMemoView
          Left = 332.598640000000000000
          Top = 3.779530000000000000
          Width = 94.488250000000000000
          Height = 18.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          HAlign = haCenter
          Memo.UTF8W = (
            'PRE'#199'O')
          ParentFont = False
        end
      end
      object MasterData1: TfrxMasterData
        FillType = ftBrush
        Height = 22.677180000000000000
        Top = 117.165430000000000000
        Width = 718.110700000000000000
        DataSet = DS_REPORT
        DataSetName = 'DS_REPORT'
        RowCount = 0
        object DS_REPORTcodigo: TfrxMemoView
          Left = 3.779530000000000000
          Top = 3.779530000000000000
          Width = 94.488250000000000000
          Height = 18.897650000000000000
          DataField = 'codigo'
          DataSet = DS_REPORT
          DataSetName = 'DS_REPORT'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          HAlign = haCenter
          Memo.UTF8W = (
            '[DS_REPORT."codigo"]')
          ParentFont = False
        end
        object DS_REPORTdescricao_produto: TfrxMemoView
          Left = 113.385900000000000000
          Top = 3.779530000000000000
          Width = 204.094620000000000000
          Height = 18.897650000000000000
          DataField = 'descricao_produto'
          DataSet = DS_REPORT
          DataSetName = 'DS_REPORT'
          Memo.UTF8W = (
            '[DS_REPORT."descricao_produto"]')
        end
        object DS_REPORTpreco_final_varejo: TfrxMemoView
          Left = 332.598640000000000000
          Top = 3.779530000000000000
          Width = 94.488250000000000000
          Height = 18.897650000000000000
          DataField = 'preco_final_varejo'
          DataSet = DS_REPORT
          DataSetName = 'DS_REPORT'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          HAlign = haCenter
          Memo.UTF8W = (
            '[DS_REPORT."preco_final_varejo"]')
          ParentFont = False
        end
      end
      object PageFooter1: TfrxPageFooter
        FillType = ftBrush
        Height = 22.677180000000000000
        Top = 200.315090000000000000
        Width = 718.110700000000000000
      end
    end
  end
  object SQL_REPORT: TFDQuery
    Connection = Module.connection
    SQL.Strings = (
      'select '
      'PROD_CODIGO AS codigo, '
      'PROD_DESCRCICAO AS descricao_produto, '
      'preco_final_varejo'
      'from PRODUTO_PROD'
      'limit 100')
    Left = 216
    Top = 136
    object SQL_REPORTcodigo: TFDAutoIncField
      FieldName = 'codigo'
      Origin = 'CODIGO'
      ProviderFlags = [pfInWhere, pfInKey]
      ReadOnly = True
    end
    object SQL_REPORTdescricao_produto: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'descricao_produto'
      Origin = 'DESCRICAO_PRODUTO'
      Size = 200
    end
    object SQL_REPORTpreco_final_varejo: TBCDField
      AutoGenerateValue = arDefault
      FieldName = 'preco_final_varejo'
      Origin = 'PRECO_FINAL_VAREJO'
      Precision = 10
    end
  end
end
