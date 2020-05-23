object frm_agrupar_venda_fiado: Tfrm_agrupar_venda_fiado
  Left = 0
  Top = 0
  BorderIcons = []
  BorderStyle = bsSingle
  Caption = 'Selecionar pagamento'
  ClientHeight = 197
  ClientWidth = 384
  Color = clWhite
  DefaultMonitor = dmMainForm
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  Position = poMainFormCenter
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 13
  object Label1: TLabel
    Left = 8
    Top = 8
    Width = 363
    Height = 96
    Caption = 
      '   Um pagamento FIADO foi identificado na(s) venda(s) selecionad' +
      'a(s).'#13#10'Para emitir uma Nota Fiscal, voc'#234' deve selecionar outra f' +
      'orma de pagamento v'#225'lida.'#13#10#13#10'Selecione abaixo, a forma de pagame' +
      'nto:'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -13
    Font.Name = 'Tahoma'
    Font.Style = [fsBold]
    ParentFont = False
    WordWrap = True
  end
  object Label2: TLabel
    Left = 8
    Top = 8
    Width = 8
    Height = 16
    Caption = '*'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clMaroon
    Font.Height = -13
    Font.Name = 'Tahoma'
    Font.Style = [fsBold]
    ParentFont = False
  end
  object cbPagamentos: TcxLookupComboBox
    Left = 8
    Top = 116
    ParentFont = False
    Properties.DropDownListStyle = lsFixedList
    Properties.DropDownRows = 15
    Properties.KeyFieldNames = 'COD_TIPO_PAGAMENTO'
    Properties.ListColumns = <
      item
        FieldName = 'TIPO_PAGAMENTO'
      end>
    Properties.ListOptions.ShowHeader = False
    Properties.ListSource = ds_pagamentos
    Style.Font.Charset = DEFAULT_CHARSET
    Style.Font.Color = clWindowText
    Style.Font.Height = -19
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
    Width = 368
  end
  object btn_confirmar: TcxButton
    Left = 152
    Top = 156
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
    TabOrder = 1
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -12
    Font.Name = 'Tahoma'
    Font.Style = [fsBold]
    ParentFont = False
    OnClick = btn_confirmarClick
  end
  object sql_pagamentos: TFDQuery
    Connection = Module.connection
    SQL.Strings = (
      
        'select * from tipo_pagamento where cod_tipo_pagamento not in ("1' +
        '00", "101", "06")')
    Left = 288
    Top = 168
    object sql_pagamentosCODIGO: TFDAutoIncField
      FieldName = 'CODIGO'
      Origin = 'CODIGO'
      ProviderFlags = [pfInWhere, pfInKey]
      ReadOnly = True
    end
    object sql_pagamentosCOD_TIPO_PAGAMENTO: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'COD_TIPO_PAGAMENTO'
      Origin = 'COD_TIPO_PAGAMENTO'
      Size = 10
    end
    object sql_pagamentosTIPO_PAGAMENTO: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'TIPO_PAGAMENTO'
      Origin = 'TIPO_PAGAMENTO'
      Size = 50
    end
  end
  object ds_pagamentos: TDataSource
    DataSet = sql_pagamentos
    Left = 352
    Top = 154
  end
end
