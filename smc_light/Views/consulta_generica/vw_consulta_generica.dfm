object Frm_Consulta_Generica: TFrm_Consulta_Generica
  Left = 0
  Top = 0
  BorderIcons = [biSystemMenu]
  BorderStyle = bsSingle
  Caption = 'Consulta Gen'#233'rica'
  ClientHeight = 530
  ClientWidth = 790
  Color = clBtnFace
  DefaultMonitor = dmMainForm
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  KeyPreview = True
  OldCreateOrder = False
  Position = poMainFormCenter
  OnClose = FormClose
  OnCreate = FormCreate
  OnKeyDown = FormKeyDown
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 13
  object GridPanel2: TGridPanel
    AlignWithMargins = True
    Left = 3
    Top = 3
    Width = 784
    Height = 524
    Align = alClient
    Color = clWhite
    ColumnCollection = <
      item
        Value = 100.000000000000000000
      end>
    ControlCollection = <
      item
        Column = 0
        Control = db_grid
        Row = 1
      end
      item
        Column = 0
        Control = GridPanel1
        Row = 0
      end>
    ParentBackground = False
    RowCollection = <
      item
        Value = 11.999999999854700000
      end
      item
        Value = 88.000000000145310000
      end>
    TabOrder = 0
    object db_grid: TDBGrid
      AlignWithMargins = True
      Left = 4
      Top = 66
      Width = 776
      Height = 454
      Align = alClient
      DataSource = DS_DATA
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      Options = [dgTitles, dgIndicator, dgColLines, dgRowLines, dgTabs, dgConfirmDelete, dgCancelOnExit, dgTitleClick, dgTitleHotTrack]
      ParentFont = False
      TabOrder = 1
      TitleFont.Charset = DEFAULT_CHARSET
      TitleFont.Color = clWindowText
      TitleFont.Height = -11
      TitleFont.Name = 'Tahoma'
      TitleFont.Style = []
      OnDrawColumnCell = db_gridDrawColumnCell
      OnDblClick = db_gridDblClick
      OnKeyDown = db_gridKeyDown
      OnTitleClick = db_gridTitleClick
    end
    object GridPanel1: TGridPanel
      Left = 1
      Top = 1
      Width = 782
      Height = 62
      Align = alClient
      Anchors = [akLeft, akRight]
      Color = clWhite
      ColumnCollection = <
        item
          Value = 78.000002354175090000
        end
        item
          Value = 21.999997645824910000
        end>
      ControlCollection = <
        item
          Column = 0
          Control = edt_consulta
          Row = 0
        end
        item
          Column = 1
          Control = cb_tipo_consulta
          Row = 0
        end>
      ParentBackground = False
      RowCollection = <
        item
          Value = 100.000000000000000000
        end>
      TabOrder = 0
      object edt_consulta: TcxTextEdit
        AlignWithMargins = True
        Left = 4
        Top = 4
        TabStop = False
        Align = alClient
        BeepOnEnter = False
        ParentFont = False
        Properties.CharCase = ecUpperCase
        Style.Font.Charset = DEFAULT_CHARSET
        Style.Font.Color = clMaroon
        Style.Font.Height = -17
        Style.Font.Name = 'Tahoma'
        Style.Font.Style = [fsBold]
        Style.LookAndFeel.NativeStyle = False
        Style.LookAndFeel.SkinName = 'Metropolis'
        Style.IsFontAssigned = True
        StyleDisabled.LookAndFeel.NativeStyle = False
        StyleDisabled.LookAndFeel.SkinName = 'Metropolis'
        StyleDisabled.TextColor = clRed
        StyleFocused.LookAndFeel.NativeStyle = False
        StyleFocused.LookAndFeel.SkinName = 'Metropolis'
        StyleHot.LookAndFeel.NativeStyle = False
        StyleHot.LookAndFeel.SkinName = 'Metropolis'
        TabOrder = 0
        OnKeyDown = edt_consultaKeyDown
        OnKeyUp = edt_consultaKeyUp
        Width = 602
      end
      object cb_tipo_consulta: TcxComboBox
        AlignWithMargins = True
        Left = 612
        Top = 4
        Align = alClient
        BeepOnEnter = False
        ParentFont = False
        Properties.Alignment.Horz = taCenter
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
        Properties.CharCase = ecUpperCase
        Properties.DropDownListStyle = lsFixedList
        Properties.Items.Strings = (
          'ITEM CONSULTA 1'
          'ITEM CONSULTA 2'
          'ITEM CONSULTA 3'
          'ITEM CONSULTA 4'
          'ITEM CONSULTA 5')
        Properties.ReadOnly = False
        Properties.OnEditValueChanged = cb_tipo_consultaPropertiesEditValueChanged
        Style.Font.Charset = DEFAULT_CHARSET
        Style.Font.Color = clGray
        Style.Font.Height = -17
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
        OnKeyDown = cb_tipo_consultaKeyDown
        Width = 166
      end
    end
  end
  object SQL_DATA: TFDQuery
    Connection = Module.connection
    Left = 238
    Top = 96
  end
  object DS_DATA: TDataSource
    DataSet = SQL_DATA
    Left = 240
    Top = 152
  end
end
