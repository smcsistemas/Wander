object frm_parametro_vendas: Tfrm_parametro_vendas
  Left = 0
  Top = 0
  BorderIcons = [biSystemMenu]
  BorderStyle = bsSingle
  Caption = 'Par'#226'metros | Venda'
  ClientHeight = 669
  ClientWidth = 1100
  Color = clWhite
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  Position = poOwnerFormCenter
  OnClose = FormClose
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 13
  object grp_venda: TGroupBox
    Left = 14
    Top = 12
    Width = 456
    Height = 286
    Caption = '  VENDA  '
    Color = clGradientInactiveCaption
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -15
    Font.Name = 'Tahoma'
    Font.Style = [fsBold]
    ParentColor = False
    ParentFont = False
    TabOrder = 0
    object lbl_vias: TLabel
      Left = 338
      Top = 25
      Width = 37
      Height = 18
      Caption = 'Vias:'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -15
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object Label1: TLabel
      Left = 13
      Top = 53
      Width = 91
      Height = 18
      Caption = 'Impressora:'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clHighlight
      Font.Height = -15
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object Label3: TLabel
      Left = 304
      Top = 82
      Width = 71
      Height = 18
      Caption = 'Terminal:'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -15
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object chk_comprovante: TcxDBCheckBox
      Left = 13
      Top = 24
      AutoSize = False
      Caption = 'IMPRIMIR COMPROVANTE'
      DataBinding.DataField = 'IMPRIMIR_COMPROVANTE'
      DataBinding.DataSource = DS_PARAMETROS_VENDA
      ParentBackground = False
      ParentColor = False
      ParentFont = False
      Properties.DisplayChecked = '1'
      Properties.DisplayUnchecked = '0'
      Properties.DisplayGrayed = '0'
      Properties.ValueChecked = '1'
      Properties.ValueGrayed = 0
      Properties.ValueUnchecked = '0'
      Properties.OnEditValueChanged = chk_comprovantePropertiesEditValueChanged
      Style.Color = clWhite
      Style.Font.Charset = DEFAULT_CHARSET
      Style.Font.Color = clWindowText
      Style.Font.Height = -15
      Style.Font.Name = 'Tahoma'
      Style.Font.Style = [fsBold]
      Style.LookAndFeel.NativeStyle = False
      Style.LookAndFeel.SkinName = 'Office2013White'
      Style.IsFontAssigned = True
      StyleDisabled.Color = clWhite
      StyleDisabled.LookAndFeel.NativeStyle = False
      StyleDisabled.LookAndFeel.SkinName = 'Office2013White'
      StyleFocused.Color = clWhite
      StyleFocused.LookAndFeel.NativeStyle = False
      StyleFocused.LookAndFeel.SkinName = 'Office2013White'
      StyleHot.Color = clWhite
      StyleHot.LookAndFeel.NativeStyle = False
      StyleHot.LookAndFeel.SkinName = 'Office2013White'
      TabOrder = 1
      OnClick = chk_comprovanteClick
      Height = 19
      Width = 228
    end
    object cxDBCheckBox1: TcxDBCheckBox
      Left = 13
      Top = 116
      AutoSize = False
      Caption = 'PERMITIR VENDA COM PRODUTO SEM ESTOQUE'
      DataBinding.DataField = 'VENDA_SEM_ESTOQUE'
      DataBinding.DataSource = DS_PARAMETROS_VENDA
      ParentBackground = False
      ParentColor = False
      ParentFont = False
      Properties.DisplayChecked = '1'
      Properties.DisplayUnchecked = '0'
      Properties.DisplayGrayed = '0'
      Properties.ValueChecked = '1'
      Properties.ValueGrayed = 0
      Properties.ValueUnchecked = '0'
      Style.Color = clWhite
      Style.Font.Charset = DEFAULT_CHARSET
      Style.Font.Color = clWindowText
      Style.Font.Height = -15
      Style.Font.Name = 'Tahoma'
      Style.Font.Style = [fsBold]
      Style.LookAndFeel.NativeStyle = False
      Style.LookAndFeel.SkinName = 'Office2013White'
      Style.IsFontAssigned = True
      StyleDisabled.Color = clWhite
      StyleDisabled.LookAndFeel.NativeStyle = False
      StyleDisabled.LookAndFeel.SkinName = 'Office2013White'
      StyleFocused.Color = clWhite
      StyleFocused.LookAndFeel.NativeStyle = False
      StyleFocused.LookAndFeel.SkinName = 'Office2013White'
      StyleHot.Color = clWhite
      StyleHot.LookAndFeel.NativeStyle = False
      StyleHot.LookAndFeel.SkinName = 'Office2013White'
      TabOrder = 2
      Height = 19
      Width = 394
    end
    object cxDBCheckBox6: TcxDBCheckBox
      Left = 13
      Top = 143
      AutoSize = False
      Caption = 'MOSTRAR ESTOQUE NO PDV'
      DataBinding.DataField = 'ESTOQUE_PDV'
      DataBinding.DataSource = DS_PARAMETROS_VENDA
      ParentBackground = False
      ParentColor = False
      ParentFont = False
      Properties.DisplayChecked = '1'
      Properties.DisplayUnchecked = '0'
      Properties.DisplayGrayed = '0'
      Properties.ValueChecked = '1'
      Properties.ValueGrayed = 0
      Properties.ValueUnchecked = '0'
      Style.Color = clWhite
      Style.Font.Charset = DEFAULT_CHARSET
      Style.Font.Color = clWindowText
      Style.Font.Height = -15
      Style.Font.Name = 'Tahoma'
      Style.Font.Style = [fsBold]
      Style.LookAndFeel.NativeStyle = False
      Style.LookAndFeel.SkinName = 'Office2013White'
      Style.IsFontAssigned = True
      StyleDisabled.Color = clWhite
      StyleDisabled.LookAndFeel.NativeStyle = False
      StyleDisabled.LookAndFeel.SkinName = 'Office2013White'
      StyleFocused.Color = clWhite
      StyleFocused.LookAndFeel.NativeStyle = False
      StyleFocused.LookAndFeel.SkinName = 'Office2013White'
      StyleHot.Color = clWhite
      StyleHot.LookAndFeel.NativeStyle = False
      StyleHot.LookAndFeel.SkinName = 'Office2013White'
      TabOrder = 3
      Height = 19
      Width = 300
    end
    object cxDBCheckBox10: TcxDBCheckBox
      Left = 13
      Top = 171
      AutoSize = False
      Caption = 'ALTERAR PRE'#199'O DO PRODUTO NO PDV'
      DataBinding.DataField = 'ALTERA_PRECO_PDV'
      DataBinding.DataSource = DS_PARAMETROS_VENDA
      ParentBackground = False
      ParentColor = False
      ParentFont = False
      Properties.DisplayChecked = '1'
      Properties.DisplayUnchecked = '0'
      Properties.DisplayGrayed = '0'
      Properties.ValueChecked = '1'
      Properties.ValueGrayed = 0
      Properties.ValueUnchecked = '0'
      Style.Color = clWhite
      Style.Font.Charset = DEFAULT_CHARSET
      Style.Font.Color = clWindowText
      Style.Font.Height = -15
      Style.Font.Name = 'Tahoma'
      Style.Font.Style = [fsBold]
      Style.LookAndFeel.NativeStyle = False
      Style.LookAndFeel.SkinName = 'Office2013White'
      Style.IsFontAssigned = True
      StyleDisabled.Color = clWhite
      StyleDisabled.LookAndFeel.NativeStyle = False
      StyleDisabled.LookAndFeel.SkinName = 'Office2013White'
      StyleFocused.Color = clWhite
      StyleFocused.LookAndFeel.NativeStyle = False
      StyleFocused.LookAndFeel.SkinName = 'Office2013White'
      StyleHot.Color = clWhite
      StyleHot.LookAndFeel.NativeStyle = False
      StyleHot.LookAndFeel.SkinName = 'Office2013White'
      TabOrder = 4
      Height = 19
      Width = 330
    end
    object cxDBCheckBox11: TcxDBCheckBox
      Left = 13
      Top = 198
      AutoSize = False
      Caption = 'CONSULTA POR REF. FABRICANTE'
      DataBinding.DataField = 'CONSULTA_REF_FABRICANTE'
      DataBinding.DataSource = DS_PARAMETROS_VENDA
      ParentBackground = False
      ParentColor = False
      ParentFont = False
      Properties.DisplayChecked = '1'
      Properties.DisplayUnchecked = '0'
      Properties.DisplayGrayed = '0'
      Properties.ValueChecked = '1'
      Properties.ValueGrayed = 0
      Properties.ValueUnchecked = '0'
      Style.Color = clWhite
      Style.Font.Charset = DEFAULT_CHARSET
      Style.Font.Color = clWindowText
      Style.Font.Height = -15
      Style.Font.Name = 'Tahoma'
      Style.Font.Style = [fsBold]
      Style.LookAndFeel.NativeStyle = False
      Style.LookAndFeel.SkinName = 'Office2013White'
      Style.IsFontAssigned = True
      StyleDisabled.Color = clWhite
      StyleDisabled.LookAndFeel.NativeStyle = False
      StyleDisabled.LookAndFeel.SkinName = 'Office2013White'
      StyleFocused.Color = clWhite
      StyleFocused.LookAndFeel.NativeStyle = False
      StyleFocused.LookAndFeel.SkinName = 'Office2013White'
      StyleHot.Color = clWhite
      StyleHot.LookAndFeel.NativeStyle = False
      StyleHot.LookAndFeel.SkinName = 'Office2013White'
      TabOrder = 5
      Height = 19
      Width = 330
    end
    object edt_vias: TEdit
      Left = 389
      Top = 22
      Width = 50
      Height = 27
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -16
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      ParentFont = False
      TabOrder = 0
      Text = '1'
    end
    object cxDBCheckBox3: TcxDBCheckBox
      Left = 13
      Top = 226
      AutoSize = False
      Caption = 'INFORMA VENDEDOR'
      DataBinding.DataField = 'INFORMA_VENDEDOR'
      DataBinding.DataSource = DS_PARAMETROS_VENDA
      ParentBackground = False
      ParentColor = False
      ParentFont = False
      Properties.DisplayChecked = '1'
      Properties.DisplayUnchecked = '0'
      Properties.DisplayGrayed = '0'
      Properties.ValueChecked = '1'
      Properties.ValueGrayed = 0
      Properties.ValueUnchecked = '0'
      Style.Color = clWhite
      Style.Font.Charset = DEFAULT_CHARSET
      Style.Font.Color = clWindowText
      Style.Font.Height = -15
      Style.Font.Name = 'Tahoma'
      Style.Font.Style = [fsBold]
      Style.LookAndFeel.NativeStyle = False
      Style.LookAndFeel.SkinName = 'Office2013White'
      Style.IsFontAssigned = True
      StyleDisabled.Color = clWhite
      StyleDisabled.LookAndFeel.NativeStyle = False
      StyleDisabled.LookAndFeel.SkinName = 'Office2013White'
      StyleFocused.Color = clWhite
      StyleFocused.LookAndFeel.NativeStyle = False
      StyleFocused.LookAndFeel.SkinName = 'Office2013White'
      StyleHot.Color = clWhite
      StyleHot.LookAndFeel.NativeStyle = False
      StyleHot.LookAndFeel.SkinName = 'Office2013White'
      TabOrder = 6
      Height = 19
      Width = 330
    end
    object cxDBCheckBox5: TcxDBCheckBox
      Left = 13
      Top = 254
      AutoSize = False
      Caption = 'DESCONTO M'#193'XIMO NO PRODUTO'
      DataBinding.DataField = 'DESCONTO_MAX_PRODUTO'
      DataBinding.DataSource = DS_PARAMETROS_VENDA
      ParentBackground = False
      ParentColor = False
      ParentFont = False
      Properties.DisplayChecked = '1'
      Properties.DisplayUnchecked = '0'
      Properties.DisplayGrayed = '0'
      Properties.ValueChecked = '1'
      Properties.ValueGrayed = 0
      Properties.ValueUnchecked = '0'
      Style.Color = clWhite
      Style.Font.Charset = DEFAULT_CHARSET
      Style.Font.Color = clWindowText
      Style.Font.Height = -15
      Style.Font.Name = 'Tahoma'
      Style.Font.Style = [fsBold]
      Style.LookAndFeel.NativeStyle = False
      Style.LookAndFeel.SkinName = 'Office2013White'
      Style.IsFontAssigned = True
      StyleDisabled.Color = clWhite
      StyleDisabled.LookAndFeel.NativeStyle = False
      StyleDisabled.LookAndFeel.SkinName = 'Office2013White'
      StyleFocused.Color = clWhite
      StyleFocused.LookAndFeel.NativeStyle = False
      StyleFocused.LookAndFeel.SkinName = 'Office2013White'
      StyleHot.Color = clWhite
      StyleHot.LookAndFeel.NativeStyle = False
      StyleHot.LookAndFeel.SkinName = 'Office2013White'
      TabOrder = 7
      Height = 19
      Width = 330
    end
    object cbImpressora: TcxComboBox
      Left = 13
      Top = 77
      ParentFont = False
      Properties.DropDownListStyle = lsFixedList
      Style.Font.Charset = DEFAULT_CHARSET
      Style.Font.Color = clWindowText
      Style.Font.Height = -15
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
      TabOrder = 8
      Width = 258
    end
    object edt_terminal: TEdit
      Left = 389
      Top = 78
      Width = 50
      Height = 27
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -16
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      NumbersOnly = True
      ParentFont = False
      TabOrder = 9
      Text = '1'
    end
  end
  object grp_pagamento: TGroupBox
    Left = 498
    Top = 12
    Width = 445
    Height = 197
    Caption = '  VENDA PAGAMENTO  '
    Color = clGradientInactiveCaption
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -15
    Font.Name = 'Tahoma'
    Font.Style = [fsBold]
    ParentColor = False
    ParentFont = False
    TabOrder = 1
    object pag_padrao: TcxDBCheckBox
      Left = 13
      Top = 82
      ParentCustomHint = False
      AutoSize = False
      Caption = 'PAGAMENTO PADR'#195'O'
      DataBinding.DataField = 'USA_PAG_PADRAO'
      DataBinding.DataSource = DS_PARAMETROS_VENDA
      ParentBackground = False
      ParentColor = False
      ParentFont = False
      Properties.DisplayChecked = '1'
      Properties.DisplayUnchecked = '0'
      Properties.DisplayGrayed = '0'
      Properties.ValueChecked = '1'
      Properties.ValueGrayed = 0
      Properties.ValueUnchecked = '0'
      Style.Color = clHighlightText
      Style.Font.Charset = DEFAULT_CHARSET
      Style.Font.Color = clWindowText
      Style.Font.Height = -15
      Style.Font.Name = 'Tahoma'
      Style.Font.Style = [fsBold]
      Style.LookAndFeel.NativeStyle = False
      Style.LookAndFeel.SkinName = 'Office2013White'
      Style.TransparentBorder = True
      Style.IsFontAssigned = True
      StyleDisabled.Color = clWhite
      StyleDisabled.LookAndFeel.NativeStyle = False
      StyleDisabled.LookAndFeel.SkinName = 'Office2013White'
      StyleFocused.Color = clWhite
      StyleFocused.LookAndFeel.NativeStyle = False
      StyleFocused.LookAndFeel.SkinName = 'Office2013White'
      StyleHot.Color = clWhite
      StyleHot.LookAndFeel.NativeStyle = False
      StyleHot.LookAndFeel.SkinName = 'Office2013White'
      TabOrder = 3
      Height = 19
      Width = 204
    end
    object PagPadrao: TcxDBLookupComboBox
      Left = 264
      Top = 80
      DataBinding.DataField = 'PAG_PADRAO'
      DataBinding.DataSource = DS_PARAMETROS_VENDA
      ParentFont = False
      Properties.KeyFieldNames = 'COD_TIPO_PAGAMENTO'
      Properties.ListColumns = <
        item
          FieldName = 'TIPO_PAGAMENTO'
        end>
      Properties.ListOptions.ShowHeader = False
      Properties.ListSource = DS_PAGAMENTOS
      Style.Font.Charset = DEFAULT_CHARSET
      Style.Font.Color = clWindowText
      Style.Font.Height = -15
      Style.Font.Name = 'Tahoma'
      Style.Font.Style = [fsBold]
      Style.LookAndFeel.NativeStyle = False
      Style.LookAndFeel.SkinName = 'Metropolis'
      Style.TextStyle = [fsBold]
      Style.IsFontAssigned = True
      StyleDisabled.LookAndFeel.NativeStyle = False
      StyleDisabled.LookAndFeel.SkinName = 'Metropolis'
      StyleFocused.LookAndFeel.NativeStyle = False
      StyleFocused.LookAndFeel.SkinName = 'Metropolis'
      StyleHot.LookAndFeel.NativeStyle = False
      StyleHot.LookAndFeel.SkinName = 'Metropolis'
      TabOrder = 2
      Width = 170
    end
    object chk_habilita_fiado: TcxDBCheckBox
      Left = 13
      Top = 28
      ParentCustomHint = False
      AutoSize = False
      Caption = 'HABILITAR PAGAMENTO FIADO'
      DataBinding.DataField = 'HABILITAR_FIADO'
      DataBinding.DataSource = DS_PARAMETROS_VENDA
      ParentBackground = False
      ParentColor = False
      ParentFont = False
      Properties.DisplayChecked = '1'
      Properties.DisplayUnchecked = '0'
      Properties.DisplayGrayed = '0'
      Properties.ValueChecked = '1'
      Properties.ValueGrayed = 0
      Properties.ValueUnchecked = '0'
      Style.Color = clHighlightText
      Style.Font.Charset = DEFAULT_CHARSET
      Style.Font.Color = clWindowText
      Style.Font.Height = -15
      Style.Font.Name = 'Tahoma'
      Style.Font.Style = [fsBold]
      Style.LookAndFeel.NativeStyle = False
      Style.LookAndFeel.SkinName = 'Office2013White'
      Style.TransparentBorder = True
      Style.IsFontAssigned = True
      StyleDisabled.Color = clWhite
      StyleDisabled.LookAndFeel.NativeStyle = False
      StyleDisabled.LookAndFeel.SkinName = 'Office2013White'
      StyleFocused.Color = clWhite
      StyleFocused.LookAndFeel.NativeStyle = False
      StyleFocused.LookAndFeel.SkinName = 'Office2013White'
      StyleHot.Color = clWhite
      StyleHot.LookAndFeel.NativeStyle = False
      StyleHot.LookAndFeel.SkinName = 'Office2013White'
      TabOrder = 0
      OnClick = chk_habilita_fiadoClick
      Height = 19
      Width = 314
    end
    object chk_fiado_comprovante: TcxDBCheckBox
      Left = 13
      Top = 55
      ParentCustomHint = False
      AutoSize = False
      Caption = 'FIADO IMPRIME COMPROVANTE'
      DataBinding.DataField = 'FIADO_COMPROVANTE'
      DataBinding.DataSource = DS_PARAMETROS_VENDA
      Enabled = False
      ParentBackground = False
      ParentColor = False
      ParentFont = False
      Properties.DisplayChecked = '1'
      Properties.DisplayUnchecked = '0'
      Properties.DisplayGrayed = '0'
      Properties.ValueChecked = '1'
      Properties.ValueGrayed = 0
      Properties.ValueUnchecked = '0'
      Style.Color = clHighlightText
      Style.Font.Charset = DEFAULT_CHARSET
      Style.Font.Color = clWindowText
      Style.Font.Height = -15
      Style.Font.Name = 'Tahoma'
      Style.Font.Style = [fsBold]
      Style.LookAndFeel.NativeStyle = False
      Style.LookAndFeel.SkinName = 'Office2013White'
      Style.TransparentBorder = True
      Style.IsFontAssigned = True
      StyleDisabled.Color = clWhite
      StyleDisabled.LookAndFeel.NativeStyle = False
      StyleDisabled.LookAndFeel.SkinName = 'Office2013White'
      StyleFocused.Color = clWhite
      StyleFocused.LookAndFeel.NativeStyle = False
      StyleFocused.LookAndFeel.SkinName = 'Office2013White'
      StyleHot.Color = clWhite
      StyleHot.LookAndFeel.NativeStyle = False
      StyleHot.LookAndFeel.SkinName = 'Office2013White'
      TabOrder = 1
      OnClick = chk_fiado_comprovanteClick
      Height = 19
      Width = 284
    end
    object chk_paglista: TcxCheckBox
      Left = 13
      Top = 136
      ParentCustomHint = False
      Caption = 'PAGAMENTO EM LISTA'
      ParentBackground = False
      ParentColor = False
      ParentFont = False
      Style.Color = clHighlightText
      Style.Font.Charset = DEFAULT_CHARSET
      Style.Font.Color = clGrayText
      Style.Font.Height = -15
      Style.Font.Name = 'Tahoma'
      Style.Font.Style = [fsBold]
      Style.LookAndFeel.NativeStyle = False
      Style.LookAndFeel.SkinName = 'Office2013White'
      Style.TextColor = 3223857
      Style.TransparentBorder = True
      Style.IsFontAssigned = True
      StyleDisabled.LookAndFeel.NativeStyle = False
      StyleDisabled.LookAndFeel.SkinName = 'Office2013White'
      StyleFocused.LookAndFeel.NativeStyle = False
      StyleFocused.LookAndFeel.SkinName = 'Office2013White'
      StyleHot.LookAndFeel.NativeStyle = False
      StyleHot.LookAndFeel.SkinName = 'Office2013White'
      TabOrder = 5
      OnClick = chk_paglistaClick
    end
    object chk_pagcodigo: TcxCheckBox
      Left = 13
      Top = 109
      ParentCustomHint = False
      Caption = 'PAGAMENTO POR C'#211'DIGO'
      ParentBackground = False
      ParentColor = False
      ParentFont = False
      Style.Color = clHighlightText
      Style.Font.Charset = DEFAULT_CHARSET
      Style.Font.Color = clGrayText
      Style.Font.Height = -15
      Style.Font.Name = 'Tahoma'
      Style.Font.Style = [fsBold]
      Style.LookAndFeel.NativeStyle = False
      Style.LookAndFeel.SkinName = 'Office2013White'
      Style.TextColor = 3223857
      Style.TransparentBorder = True
      Style.IsFontAssigned = True
      StyleDisabled.LookAndFeel.NativeStyle = False
      StyleDisabled.LookAndFeel.SkinName = 'Office2013White'
      StyleFocused.LookAndFeel.NativeStyle = False
      StyleFocused.LookAndFeel.SkinName = 'Office2013White'
      StyleHot.LookAndFeel.NativeStyle = False
      StyleHot.LookAndFeel.SkinName = 'Office2013White'
      TabOrder = 4
      OnClick = chk_pagcodigoClick
    end
    object cxDBCheckBox9: TcxDBCheckBox
      Left = 13
      Top = 164
      AutoSize = False
      Caption = 'USA CONVENIO'
      DataBinding.DataField = 'usa_convenio'
      DataBinding.DataSource = DS_PARAMETROS_VENDA
      ParentBackground = False
      ParentColor = False
      ParentFont = False
      Properties.DisplayChecked = '1'
      Properties.DisplayUnchecked = '0'
      Properties.DisplayGrayed = '0'
      Properties.UseAlignmentWhenInplace = True
      Properties.ValueGrayed = 'False'
      Style.Color = clWhite
      Style.Font.Charset = DEFAULT_CHARSET
      Style.Font.Color = clWindowText
      Style.Font.Height = -15
      Style.Font.Name = 'Tahoma'
      Style.Font.Style = [fsBold]
      Style.LookAndFeel.NativeStyle = False
      Style.LookAndFeel.SkinName = 'Office2013White'
      Style.IsFontAssigned = True
      StyleDisabled.Color = clWhite
      StyleDisabled.LookAndFeel.NativeStyle = False
      StyleDisabled.LookAndFeel.SkinName = 'Office2013White'
      StyleFocused.Color = clWhite
      StyleFocused.LookAndFeel.NativeStyle = False
      StyleFocused.LookAndFeel.SkinName = 'Office2013White'
      StyleHot.Color = clWhite
      StyleHot.LookAndFeel.NativeStyle = False
      StyleHot.LookAndFeel.SkinName = 'Office2013White'
      TabOrder = 6
      Height = 19
      Width = 156
    end
  end
  object grpAgrupar: TGroupBox
    Left = 498
    Top = 226
    Width = 445
    Height = 66
    Caption = '   AGRUPAR VENDAS  '
    Color = clGradientInactiveCaption
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -15
    Font.Name = 'Tahoma'
    Font.Style = [fsBold]
    ParentColor = False
    ParentFont = False
    TabOrder = 2
    object Label2: TLabel
      Left = 12
      Top = 31
      Width = 132
      Height = 18
      Caption = 'Tipos Pagamento:'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -15
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object cbPagamentos: TcxCheckComboBox
      Left = 160
      Top = 27
      ParentFont = False
      Properties.EmptySelectionText = 'Selecione os tipos de pagamento'
      Properties.DropDownRows = 20
      Properties.EditValueFormat = cvfIndices
      Properties.Items = <>
      Style.Font.Charset = DEFAULT_CHARSET
      Style.Font.Color = clWindowText
      Style.Font.Height = -15
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
      Width = 274
    end
  end
  object btnGravar: TcxButton
    Left = 968
    Top = 53
    Width = 106
    Height = 43
    Caption = 'Gravar'
    LookAndFeel.NativeStyle = False
    LookAndFeel.SkinName = 'Metropolis'
    OptionsImage.Glyph.Data = {
      36100000424D3610000000000000360000002800000020000000200000000100
      2000000000000010000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000311E2A489F6085E7AF6A93FFAF6A93FFAF6A93FFAF6A93FFAF6A
      93FFAF6A93FFAF6A93FFAF6A93FFAF6A93FFAF6A93FFAF6A93FFAF6A93FFAF6A
      93FFAF6A93FFAF6A93FFAF6A93FFAF6A93FFAF6A93FFAF6A93FFAF6A93FFAF6A
      93FFAF6A93FF9F6085E7311E2A48000000000000000000000000000000000000
      0000000000009C5F83E4AF6A93FFAF6A93FFAF6A93FFAF6A93FFAF6A93FFAF6A
      93FFAF6A93FFAF6A93FFAF6A93FFAF6A93FFAF6A93FFAF6A93FFAF6A93FFAF6A
      93FFAF6A93FFAF6A93FFAF6A93FFAF6A93FFAF6A93FFAF6A93FFAF6A93FFAF6A
      93FFAF6A93FFAF6A93FF9C5F83E4000000000000000000000000000000000000
      000000000000AF6A93FFAF6A93FFAF6A93FFAF6A93FFAF6A93FFAF6A93FFAF6A
      93FFAF6A93FFAF6A93FFAF6A93FFAF6A93FFAF6A93FFAF6A93FFAF6A93FFAF6A
      93FFAF6A93FFAF6A93FFAF6A93FFAF6A93FFAF6A93FFAF6A93FFAF6A93FFAF6A
      93FFAF6A93FFAF6A93FFAF6A93FF000000000000000000000000000000000000
      000000000000AF6A93FFAF6A93FFAF6A93FF311E2A4800000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000000000000000000000311E
      2A48AF6A93FFAF6A93FFAF6A93FF000000000000000000000000000000000000
      000000000000AF6A93FFAF6A93FFAF6A93FF0000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000AF6A93FFAF6A93FFAF6A93FF000000000000000000000000000000000000
      000000000000AF6A93FFAF6A93FFAF6A93FF0000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000AF6A93FFAF6A93FFAF6A93FF000000000000000000000000000000000000
      000000000000AF6A93FFAF6A93FFAF6A93FF0000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000AF6A93FFAF6A93FFAF6A93FF000000000000000000000000000000000000
      000000000000AF6A93FFAF6A93FFAF6A93FF0000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000AF6A93FFAF6A93FFAF6A93FF000000000000000000000000000000000000
      000000000000AF6A93FFAF6A93FFAF6A93FF0000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000AF6A93FFAF6A93FFAF6A93FF000000000000000000000000000000000000
      000000000000AF6A93FFAF6A93FFAF6A93FF0000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000AF6A93FFAF6A93FFAF6A93FF000000000000000000000000000000000000
      000000000000AF6A93FFAF6A93FFAF6A93FF0000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000AF6A93FFAF6A93FFAF6A93FF000000000000000000000000000000000000
      000000000000AF6A93FFAF6A93FFAF6A93FF0000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000AF6A93FFAF6A93FFAF6A93FF000000000000000000000000000000000000
      000000000000AF6A93FFAF6A93FFAF6A93FF2D1B264200000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000002D1B
      2642AF6A93FFAF6A93FFAF6A93FF000000000000000000000000000000000000
      000000000000AF6A93FFAF6A93FFAF6A93FFAF6A93FFAF6A93FFAF6A93FFAF6A
      93FFAF6A93FFAF6A93FFAF6A93FFAF6A93FFAF6A93FFAF6A93FFAF6A93FFAF6A
      93FFAF6A93FFAF6A93FFAF6A93FFAF6A93FFAF6A93FFAF6A93FFAF6A93FFAF6A
      93FFAF6A93FFAF6A93FFAF6A93FF000000000000000000000000000000000000
      000000000000AF6A93FFAF6A93FFAF6A93FFAF6A93FFAF6A93FFAF6A93FFAF6A
      93FFAF6A93FFAF6A93FFAF6A93FFAF6A93FFAF6A93FFAF6A93FFAF6A93FFAF6A
      93FFAF6A93FFAF6A93FFAF6A93FFAF6A93FFAF6A93FFAF6A93FFAF6A93FFAF6A
      93FFAF6A93FFAF6A93FFAF6A93FF000000000000000000000000000000000000
      000000000000AF6A93FFAF6A93FFAF6A93FFAF6A93FFAF6A93FFAF6A93FFAF6A
      93FFAF6A93FFAF6A93FFAF6A93FFAF6A93FFAF6A93FFAF6A93FFAF6A93FFAF6A
      93FFAF6A93FFAF6A93FFAF6A93FFAF6A93FFAF6A93FFAF6A93FFAF6A93FFAF6A
      93FFAF6A93FFAF6A93FFAF6A93FF000000000000000000000000000000000000
      000000000000AF6A93FFAF6A93FFAF6A93FFAF6A93FFAF6A93FF000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000AF6A93FFAF6A
      93FFAF6A93FFAF6A93FFAF6A93FF000000000000000000000000000000000000
      000000000000AF6A93FFAF6A93FFAF6A93FFAF6A93FFAF6A93FF000000000000
      00000000000000000000AF6A93FFAF6A93FFAF6A93FFAF6A93FFAF6A93FFAF6A
      93FFAF6A93FFAF6A93FFAF6A93FFAF6A93FFAF6A93FF00000000AF6A93FFAF6A
      93FFAF6A93FFAF6A93FFAF6A93FF000000000000000000000000000000000000
      000000000000AF6A93FFAF6A93FFAF6A93FFAF6A93FFAF6A93FF000000000000
      00000000000000000000AF6A93FFAF6A93FFAF6A93FFAF6A93FFAF6A93FFAF6A
      93FFAF6A93FFAF6A93FFAF6A93FFAF6A93FFAF6A93FF00000000AF6A93FFAF6A
      93FFAF6A93FFAF6A93FFAF6A93FF000000000000000000000000000000000000
      000000000000AF6A93FFAF6A93FFAF6A93FFAF6A93FFAF6A93FF000000000000
      00000000000000000000AF6A93FFAF6A93FFAF6A93FFAF6A93FFAF6A93FFAF6A
      93FF000000000000000000000000AF6A93FFAF6A93FF00000000AF6A93FFAF6A
      93FFAF6A93FFAF6A93FFAF6A93FF000000000000000000000000000000000000
      000000000000AF6A93FFAF6A93FFAF6A93FFAF6A93FFAF6A93FF000000000000
      00000000000000000000AF6A93FFAF6A93FFAF6A93FFAF6A93FFAF6A93FFAF6A
      93FF000000000000000000000000AF6A93FFAF6A93FF00000000AF6A93FFAF6A
      93FFAF6A93FFAF6A93FFAF6A93FF000000000000000000000000000000000000
      000000000000AF6A93FFAF6A93FFAF6A93FFAF6A93FFAF6A93FF000000000000
      00000000000000000000AF6A93FFAF6A93FFAF6A93FFAF6A93FFAF6A93FFAF6A
      93FF000000000000000000000000AF6A93FFAF6A93FF00000000AF6A93FFAF6A
      93FFAF6A93FFAF6A93FFAF6A93FF000000000000000000000000000000000000
      000000000000AF6A93FFAF6A93FFAF6A93FFAF6A93FFAF6A93FF000000000000
      00000000000000000000AF6A93FFAF6A93FFAF6A93FFAF6A93FFAF6A93FFAF6A
      93FF000000000000000000000000AF6A93FFAF6A93FF00000000AF6A93FFAF6A
      93FFAF6A93FFAF6A93FFAF6A93FF000000000000000000000000000000000000
      000000000000AF6A93FFAF6A93FFAF6A93FFAF6A93FFAF6A93FF000000000000
      00000000000000000000AF6A93FFAF6A93FFAF6A93FFAF6A93FFAF6A93FFAF6A
      93FF000000000000000000000000AF6A93FFAF6A93FF00000000AF6A93FFAF6A
      93FFAF6A93FFAF6A93FFAF6A93FF000000000000000000000000000000000000
      0000000000009F6085E7AF6A93FFAF6A93FFAF6A93FFAF6A93FF000000000000
      00000000000000000000AF6A93FFAF6A93FFAF6A93FFAF6A93FFAF6A93FFAF6A
      93FFAF6A93FFAF6A93FFAF6A93FFAF6A93FFAF6A93FF00000000AF6A93FFAF6A
      93FFAF6A93FFAF6A93FF9F6085E7000000000000000000000000000000000000
      0000000000002B1A243F8A5474C9AF6A93FFAF6A93FFAF6A93FF000000000000
      00000000000000000000AF6A93FFAF6A93FFAF6A93FFAF6A93FFAF6A93FFAF6A
      93FFAF6A93FFAF6A93FFAF6A93FFAF6A93FFAF6A93FF00000000AF6A93FFAF6A
      93FFAF6A93FF8A5474C92B1A243F000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000}
    TabOrder = 3
    Font.Charset = ANSI_CHARSET
    Font.Color = clWindowText
    Font.Height = -13
    Font.Name = 'HelveticaNeue'
    Font.Style = [fsBold]
    ParentFont = False
    OnClick = btnGravarClick
  end
  object btnAlterar: TcxButton
    Left = 968
    Top = 53
    Width = 106
    Height = 43
    Caption = 'Alterar'
    LookAndFeel.Kind = lfOffice11
    LookAndFeel.NativeStyle = False
    LookAndFeel.SkinName = 'Metropolis'
    OptionsImage.Glyph.Data = {
      36100000424D3610000000000000360000002800000020000000200000000100
      2000000000000010000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000B8824DFFB882
      4DFFB8824DFFB8824DFF251A0F33000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000B8824DFFB882
      4DFFB8824DFF251A0F33B8824DFF251A0F330000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000B8824DFFB882
      4DFF251A0F33B8824DFFB8824DFFB8824DFF251A0F3300000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000B8824DFF251A
      0F33B8824DFFB8824DFFB8824DFFB8824DFFB8824DFF251A0F33000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000848484FF848484FF848484FF8484
      84FF848484FF848484FF848484FF848484FF848484FFFFFFFFFFF1E6DBFFB882
      4DFFB8824DFFB8824DFFB8824DFFB8824DFFB8824DFFB8824DFF251A0F330000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000848484FFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF1E6
      DBFFB8824DFFB8824DFFB8824DFFB8824DFFB8824DFFB8824DFFB8824DFF251A
      0F33000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000848484FFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFF1E6DBFFB8824DFFB8824DFFB8824DFFB8824DFFB8824DFFB8824DFFB882
      4DFF251A0F330000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000848484FFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFF1E6DBFFB8824DFFB8824DFFB8824DFFB8824DFFB8824DFFB882
      4DFFB8824DFF251A0F3300000000000000000000000000000000000000000000
      000000000000000000000000000000000000848484FFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFF1E6DBFFB8824DFFB8824DFFB8824DFFB8824DFFB882
      4DFFB8824DFFB8824DFF251A0F33000000000000000000000000000000000000
      000000000000000000000000000000000000848484FFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFF1E6DBFFB8824DFFB8824DFFB8824DFFB882
      4DFFB8824DFFB8824DFFB8824DFF251A0F330000000000000000000000000000
      000000000000000000000000000000000000848484FFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF1E6DBFFB8824DFFB8824DFFB882
      4DFFB8824DFFB8824DFF251A0F33B8824DFF251A0F3300000000000000000000
      000000000000000000000000000000000000848484FFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF1E6DBFFB8824DFFB882
      4DFFB8824DFF251A0F33B8824DFFB8824DFFB8824DFF00000000000000000000
      000000000000000000000000000000000000848484FFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF1E6DBFFB882
      4DFF251A0F33B8824DFFB8824DFFB8824DFFB8824DFF00000000000000000000
      000000000000000000000000000000000000848484FFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF1E6
      DBFFB8824DFFB8824DFFB8824DFFB8824DFF251A0F3300000000000000000000
      000000000000000000000000000000000000848484FFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFF251A0F33B8824DFFB8824DFF251A0F330000000000000000000000000000
      000000000000000000000000000000000000848484FFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF8484
      84FF000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000848484FFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF8484
      84FF000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000848484FFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF8484
      84FF000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000848484FFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF8484
      84FF000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000848484FFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF8484
      84FF000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000848484FFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFF848484FF848484FF848484FF848484FF848484FF848484FF848484FF7777
      77E6000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000848484FFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFF848484FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFDDDDDDFF8A8A8AFA2626
      264A000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000848484FFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFF848484FFFFFFFFFFFFFFFFFFFFFFFFFFDDDDDDFF8A8A8AFA2E2E2E4A0000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000848484FFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFF848484FFFFFFFFFFFFFFFFFFDDDDDDFF8B8B8BFB2E2E2E4A000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000848484FFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFF848484FFFFFFFFFFDDDDDDFF8B8B8BFB2E2E2E4A00000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000848484FFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFF848484FFDDDDDDFF8B8B8BFB2E2E2E4A0000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000848484FFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFF848484FF8B8B8BFB2E2E2E4A000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000848484FF848484FF848484FF8484
      84FF848484FF848484FF848484FF848484FF848484FF848484FF848484FF8484
      84FF767676E32626264A00000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000}
    TabOrder = 4
    Font.Charset = ANSI_CHARSET
    Font.Color = clWindowText
    Font.Height = -13
    Font.Name = 'HelveticaNeue'
    Font.Style = [fsBold]
    ParentFont = False
    OnClick = btnAlterarClick
  end
  object btnCancelar: TcxButton
    Left = 968
    Top = 157
    Width = 106
    Height = 43
    Caption = 'Cancelar'
    LookAndFeel.NativeStyle = False
    LookAndFeel.SkinName = 'Metropolis'
    OptionsImage.Glyph.Data = {
      36100000424D3610000000000000360000002800000020000000200000000100
      2000000000000010000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000001010202000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000010102020000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000005070F12354EA9C8151E424E0000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000016204552354EA9C80507
      1013000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000005070F123750AECD4463D8FF4261D3F9151E
      424E000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000162045524261D3F94463D8FF3750
      AECE050710130000000000000000000000000000000000000000000000000000
      0000000000000000000000000101354DA9C74463D8FF4463D8FF4463D8FF4261
      D3F9151E424E0000000000000000000000000000000000000000000000000000
      0000000000000000000000000000162045524261D3F94463D8FF4463D8FF4463
      D8FF354EA9C80000010100000000000000000000000000000000000000000000
      0000000000000000000000000000151E414D4261D3F94463D8FF4463D8FF4463
      D8FF4261D3F9151E424E00000000000000000000000000000000000000000000
      00000000000000000000162045524261D3F94463D8FF4463D8FF4463D8FF4261
      D3F9131C3E490000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000151E414D4261D3F94463D8FF4463
      D8FF4463D8FF4261D3F9151E424E000000000000000000000000000000000000
      000000000000162045524261D3F94463D8FF4463D8FF4463D8FF4261D3F9131C
      3E49000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000151E414D4261D3F94463
      D8FF4463D8FF4463D8FF4261D3F9151F434F0000000000000000000000000000
      0000162045524261D3F94463D8FF4463D8FF4463D8FF4261D3F9131C3E490000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000151E414D4261
      D3F94463D8FF4463D8FF4463D8FF4261D3F9151F434F00000000000000001620
      45524261D3F94463D8FF4463D8FF4463D8FF4261D3F9131C3E49000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000000000000000000000151E
      414D4261D3F94463D8FF4463D8FF4463D8FF4261D3F9151F434F162045524261
      D3F94463D8FF4463D8FF4463D8FF4261D3F9131C3E4900000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000151E414D4261D3F94463D8FF4463D8FF4463D8FF4261D3F94261D3F94463
      D8FF4463D8FF4463D8FF4261D3F9131C3E490000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000151E414D4261D3F94463D8FF4463D8FF4463D8FF4463D8FF4463
      D8FF4463D8FF4261D3F9131C3E49000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000151E414D4261D3F94463D8FF4463D8FF4463D8FF4463
      D8FF4261D3F9131C3E4900000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000162045524261D3F94463D8FF4463D8FF4463D8FF4463
      D8FF4261D3F9151F434F00000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000162045524261D3F94463D8FF4463D8FF4463D8FF4463D8FF4463
      D8FF4463D8FF4261D3F9151F434F000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000162045524261D3F94463D8FF4463D8FF4463D8FF4261D3F94261D3F94463
      D8FF4463D8FF4463D8FF4261D3F9151F434F0000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000001620
      45524261D3F94463D8FF4463D8FF4463D8FF4261D3F9131C3E49151E414D4261
      D3F94463D8FF4463D8FF4463D8FF4261D3F9151F434F00000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000162045524261
      D3F94463D8FF4463D8FF4463D8FF4261D3F9131C3E490000000000000000151E
      414D4261D3F94463D8FF4463D8FF4463D8FF4261D3F9151F434F000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000162045524261D3F94463
      D8FF4463D8FF4463D8FF4261D3F9131C3E490000000000000000000000000000
      0000151E414D4261D3F94463D8FF4463D8FF4463D8FF4261D3F9151F434F0000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000162045524261D3F94463D8FF4463
      D8FF4463D8FF4261D3F9131C3E49000000000000000000000000000000000000
      000000000000151E414D4261D3F94463D8FF4463D8FF4463D8FF4261D3F9151F
      434F000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000162046534261D3F94463D8FF4463D8FF4463
      D8FF4261D3F9131C3E4900000000000000000000000000000000000000000000
      00000000000000000000151E414D4261D3F94463D8FF4463D8FF4463D8FF4261
      D3F9151F434F0000000000000000000000000000000000000000000000000000
      0000000000000000000001010202354CA7C54463D8FF4463D8FF4463D8FF4261
      D3F9131C3E490000000000000000000000000000000000000000000000000000
      0000000000000000000000000000151E414D4261D3F94463D8FF4463D8FF4463
      D8FF354CA7C50000010100000000000000000000000000000000000000000000
      000000000000000000000000000004060D0F364EABCA4463D8FF4261D3F9131C
      3E49000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000151E414D4261D3F94463D8FF364F
      ACCB04060E100000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000004060D0F344CA5C3131C3E490000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000151E414D354CA7C50406
      0E10000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000010102020000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000}
    TabOrder = 5
    Font.Charset = ANSI_CHARSET
    Font.Color = clWindowText
    Font.Height = -13
    Font.Name = 'HelveticaNeue'
    Font.Style = [fsBold]
    ParentFont = False
    OnClick = btnCancelarClick
  end
  object cxPageControl1: TcxPageControl
    Left = 14
    Top = 312
    Width = 1060
    Height = 338
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -16
    Font.Name = 'Tahoma'
    Font.Style = [fsBold]
    ParentFont = False
    TabOrder = 6
    Properties.ActivePage = cxTabSheet1
    Properties.CustomButtons.Buttons = <>
    LookAndFeel.Kind = lfOffice11
    LookAndFeel.NativeStyle = False
    LookAndFeel.SkinName = 'Office2013White'
    ClientRectBottom = 336
    ClientRectLeft = 2
    ClientRectRight = 1058
    ClientRectTop = 34
    object cxTabSheet1: TcxTabSheet
      Caption = '  PEDIDO  '
      Color = clWhite
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -16
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      ImageIndex = 0
      ParentColor = False
      ParentFont = False
      ExplicitLeft = 4
      ExplicitTop = 24
      ExplicitWidth = 281
      ExplicitHeight = 165
      object cxGroupBox1: TcxGroupBox
        Left = 11
        Top = 7
        Caption = '  CASAS DECIMAIS  '
        TabOrder = 0
        Height = 95
        Width = 317
        object edtCasaDecPreco: TEdit
          Left = 220
          Top = 57
          Width = 50
          Height = 26
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clRed
          Font.Height = -15
          Font.Name = 'Tahoma'
          Font.Style = [fsBold]
          ParentFont = False
          TabOrder = 0
          Text = '1'
        end
        object edtCasaDec: TEdit
          Left = 220
          Top = 25
          Width = 50
          Height = 26
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clRed
          Font.Height = -15
          Font.Name = 'Tahoma'
          Font.Style = [fsBold]
          ParentFont = False
          TabOrder = 1
          Text = '1'
        end
        object cxDBCheckBox2: TcxDBCheckBox
          Left = 16
          Top = 29
          AutoSize = False
          Caption = 'NA QUANTIDADE'
          DataBinding.DataField = 'INFORMA_VENDEDOR'
          DataBinding.DataSource = DS_PARAMETROS_VENDA
          ParentBackground = False
          ParentColor = False
          ParentFont = False
          Properties.DisplayChecked = '1'
          Properties.DisplayUnchecked = '0'
          Properties.DisplayGrayed = '0'
          Properties.ValueChecked = '1'
          Properties.ValueGrayed = 0
          Properties.ValueUnchecked = '0'
          Style.Color = clWhite
          Style.Font.Charset = DEFAULT_CHARSET
          Style.Font.Color = clWindowText
          Style.Font.Height = -15
          Style.Font.Name = 'Tahoma'
          Style.Font.Style = [fsBold]
          Style.LookAndFeel.NativeStyle = False
          Style.LookAndFeel.SkinName = 'Office2013White'
          Style.TextColor = clRed
          Style.IsFontAssigned = True
          StyleDisabled.Color = clWhite
          StyleDisabled.LookAndFeel.NativeStyle = False
          StyleDisabled.LookAndFeel.SkinName = 'Office2013White'
          StyleFocused.Color = clWhite
          StyleFocused.LookAndFeel.NativeStyle = False
          StyleFocused.LookAndFeel.SkinName = 'Office2013White'
          StyleHot.Color = clWhite
          StyleHot.LookAndFeel.NativeStyle = False
          StyleHot.LookAndFeel.SkinName = 'Office2013White'
          TabOrder = 2
          Height = 19
          Width = 156
        end
        object cxDBCheckBox4: TcxDBCheckBox
          Left = 16
          Top = 61
          AutoSize = False
          Caption = 'NO PRE'#199'O'
          DataBinding.DataField = 'INFORMA_VENDEDOR'
          DataBinding.DataSource = DS_PARAMETROS_VENDA
          ParentBackground = False
          ParentColor = False
          ParentFont = False
          Properties.DisplayChecked = '1'
          Properties.DisplayUnchecked = '0'
          Properties.DisplayGrayed = '0'
          Properties.ValueChecked = '1'
          Properties.ValueGrayed = 0
          Properties.ValueUnchecked = '0'
          Style.Color = clWhite
          Style.Font.Charset = DEFAULT_CHARSET
          Style.Font.Color = clWindowText
          Style.Font.Height = -15
          Style.Font.Name = 'Tahoma'
          Style.Font.Style = [fsBold]
          Style.LookAndFeel.NativeStyle = False
          Style.LookAndFeel.SkinName = 'Office2013White'
          Style.TextColor = clRed
          Style.IsFontAssigned = True
          StyleDisabled.Color = clWhite
          StyleDisabled.LookAndFeel.NativeStyle = False
          StyleDisabled.LookAndFeel.SkinName = 'Office2013White'
          StyleFocused.Color = clWhite
          StyleFocused.LookAndFeel.NativeStyle = False
          StyleFocused.LookAndFeel.SkinName = 'Office2013White'
          StyleHot.Color = clWhite
          StyleHot.LookAndFeel.NativeStyle = False
          StyleHot.LookAndFeel.SkinName = 'Office2013White'
          TabOrder = 3
          Height = 19
          Width = 134
        end
      end
      object cxGroupBox2: TcxGroupBox
        Left = 11
        Top = 108
        Caption = '  CONSULTA  '
        TabOrder = 1
        Height = 77
        Width = 317
        object cxDBCheckBox13: TcxDBCheckBox
          Left = 11
          Top = 49
          AutoSize = False
          Caption = 'REF. DO FABRICANTE NO PEDIDO'
          DataBinding.DataField = 'INFORMA_VENDEDOR'
          DataBinding.DataSource = DS_PARAMETROS_VENDA
          ParentBackground = False
          ParentColor = False
          ParentFont = False
          Properties.DisplayChecked = '1'
          Properties.DisplayUnchecked = '0'
          Properties.DisplayGrayed = '0'
          Properties.ValueChecked = '1'
          Properties.ValueGrayed = 0
          Properties.ValueUnchecked = '0'
          Style.Color = clWhite
          Style.Font.Charset = DEFAULT_CHARSET
          Style.Font.Color = clWindowText
          Style.Font.Height = -15
          Style.Font.Name = 'Tahoma'
          Style.Font.Style = [fsBold]
          Style.LookAndFeel.NativeStyle = False
          Style.LookAndFeel.SkinName = 'Office2013White'
          Style.IsFontAssigned = True
          StyleDisabled.Color = clWhite
          StyleDisabled.LookAndFeel.NativeStyle = False
          StyleDisabled.LookAndFeel.SkinName = 'Office2013White'
          StyleFocused.Color = clWhite
          StyleFocused.LookAndFeel.NativeStyle = False
          StyleFocused.LookAndFeel.SkinName = 'Office2013White'
          StyleHot.Color = clWhite
          StyleHot.LookAndFeel.NativeStyle = False
          StyleHot.LookAndFeel.SkinName = 'Office2013White'
          TabOrder = 0
          Height = 19
          Width = 294
        end
        object cxDBCheckBox7: TcxDBCheckBox
          Left = 11
          Top = 22
          AutoSize = False
          Caption = 'SUB GRUPO NA TELA'
          DataBinding.DataField = 'INFORMA_VENDEDOR'
          DataBinding.DataSource = DS_PARAMETROS_VENDA
          ParentBackground = False
          ParentColor = False
          ParentFont = False
          Properties.DisplayChecked = '1'
          Properties.DisplayUnchecked = '0'
          Properties.DisplayGrayed = '0'
          Properties.ValueChecked = '1'
          Properties.ValueGrayed = 0
          Properties.ValueUnchecked = '0'
          Style.Color = clWhite
          Style.Font.Charset = DEFAULT_CHARSET
          Style.Font.Color = clWindowText
          Style.Font.Height = -15
          Style.Font.Name = 'Tahoma'
          Style.Font.Style = [fsBold]
          Style.LookAndFeel.NativeStyle = False
          Style.LookAndFeel.SkinName = 'Office2013White'
          Style.TextColor = clRed
          Style.IsFontAssigned = True
          StyleDisabled.Color = clWhite
          StyleDisabled.LookAndFeel.NativeStyle = False
          StyleDisabled.LookAndFeel.SkinName = 'Office2013White'
          StyleFocused.Color = clWhite
          StyleFocused.LookAndFeel.NativeStyle = False
          StyleFocused.LookAndFeel.SkinName = 'Office2013White'
          StyleHot.Color = clWhite
          StyleHot.LookAndFeel.NativeStyle = False
          StyleHot.LookAndFeel.SkinName = 'Office2013White'
          TabOrder = 1
          Height = 19
          Width = 214
        end
      end
      object cxGroupBox3: TcxGroupBox
        Left = 11
        Top = 188
        Caption = '  DATA  '
        TabOrder = 2
        Height = 101
        Width = 317
        object cxDBCheckBox12: TcxDBCheckBox
          Left = 11
          Top = 23
          AutoSize = False
          Caption = 'ABERTURA PODE SER ALTERADA'
          DataBinding.DataField = 'INFORMA_VENDEDOR'
          DataBinding.DataSource = DS_PARAMETROS_VENDA
          ParentBackground = False
          ParentColor = False
          ParentFont = False
          Properties.DisplayChecked = '1'
          Properties.DisplayUnchecked = '0'
          Properties.DisplayGrayed = '0'
          Properties.ValueChecked = '1'
          Properties.ValueGrayed = 0
          Properties.ValueUnchecked = '0'
          Style.Color = clWhite
          Style.Font.Charset = DEFAULT_CHARSET
          Style.Font.Color = clWindowText
          Style.Font.Height = -15
          Style.Font.Name = 'Tahoma'
          Style.Font.Style = [fsBold]
          Style.LookAndFeel.NativeStyle = False
          Style.LookAndFeel.SkinName = 'Office2013White'
          Style.TextColor = clRed
          Style.IsFontAssigned = True
          StyleDisabled.Color = clWhite
          StyleDisabled.LookAndFeel.NativeStyle = False
          StyleDisabled.LookAndFeel.SkinName = 'Office2013White'
          StyleFocused.Color = clWhite
          StyleFocused.LookAndFeel.NativeStyle = False
          StyleFocused.LookAndFeel.SkinName = 'Office2013White'
          StyleHot.Color = clWhite
          StyleHot.LookAndFeel.NativeStyle = False
          StyleHot.LookAndFeel.SkinName = 'Office2013White'
          TabOrder = 0
          Height = 19
          Width = 280
        end
        object cxDBCheckBox8: TcxDBCheckBox
          Left = 11
          Top = 48
          AutoSize = False
          Caption = 'FECHAMENTO PODE SER ALTERADA'
          DataBinding.DataField = 'INFORMA_VENDEDOR'
          DataBinding.DataSource = DS_PARAMETROS_VENDA
          ParentBackground = False
          ParentColor = False
          ParentFont = False
          Properties.DisplayChecked = '1'
          Properties.DisplayUnchecked = '0'
          Properties.DisplayGrayed = '0'
          Properties.ValueChecked = '1'
          Properties.ValueGrayed = 0
          Properties.ValueUnchecked = '0'
          Style.Color = clWhite
          Style.Font.Charset = DEFAULT_CHARSET
          Style.Font.Color = clWindowText
          Style.Font.Height = -15
          Style.Font.Name = 'Tahoma'
          Style.Font.Style = [fsBold]
          Style.LookAndFeel.NativeStyle = False
          Style.LookAndFeel.SkinName = 'Office2013White'
          Style.TextColor = clRed
          Style.IsFontAssigned = True
          StyleDisabled.Color = clWhite
          StyleDisabled.LookAndFeel.NativeStyle = False
          StyleDisabled.LookAndFeel.SkinName = 'Office2013White'
          StyleFocused.Color = clWhite
          StyleFocused.LookAndFeel.NativeStyle = False
          StyleFocused.LookAndFeel.SkinName = 'Office2013White'
          StyleHot.Color = clWhite
          StyleHot.LookAndFeel.NativeStyle = False
          StyleHot.LookAndFeel.SkinName = 'Office2013White'
          TabOrder = 1
          Height = 19
          Width = 295
        end
        object cxDBCheckBox20: TcxDBCheckBox
          Left = 11
          Top = 73
          AutoSize = False
          Caption = 'DATA DE CONSULTA POR PERIODO'
          DataBinding.DataField = 'INFORMA_VENDEDOR'
          DataBinding.DataSource = DS_PARAMETROS_VENDA
          ParentBackground = False
          ParentColor = False
          ParentFont = False
          Properties.DisplayChecked = '1'
          Properties.DisplayUnchecked = '0'
          Properties.DisplayGrayed = '0'
          Properties.ValueChecked = '1'
          Properties.ValueGrayed = 0
          Properties.ValueUnchecked = '0'
          Style.Color = clWhite
          Style.Font.Charset = DEFAULT_CHARSET
          Style.Font.Color = clWindowText
          Style.Font.Height = -15
          Style.Font.Name = 'Tahoma'
          Style.Font.Style = [fsBold]
          Style.LookAndFeel.NativeStyle = False
          Style.LookAndFeel.SkinName = 'Office2013White'
          Style.TextColor = clRed
          Style.IsFontAssigned = True
          StyleDisabled.Color = clWhite
          StyleDisabled.LookAndFeel.NativeStyle = False
          StyleDisabled.LookAndFeel.SkinName = 'Office2013White'
          StyleFocused.Color = clWhite
          StyleFocused.LookAndFeel.NativeStyle = False
          StyleFocused.LookAndFeel.SkinName = 'Office2013White'
          StyleHot.Color = clWhite
          StyleHot.LookAndFeel.NativeStyle = False
          StyleHot.LookAndFeel.SkinName = 'Office2013White'
          TabOrder = 2
          Height = 19
          Width = 295
        end
      end
      object cxGroupBox5: TcxGroupBox
        Left = 378
        Top = 108
        TabOrder = 3
        Height = 181
        Width = 655
        object cxDBCheckBox14: TcxDBCheckBox
          Left = 10
          Top = 23
          AutoSize = False
          Caption = 'OBRIGAT'#211'RIO INFORMA VENDEDOR'
          DataBinding.DataField = 'INFORMA_VENDEDOR'
          DataBinding.DataSource = DS_PARAMETROS_VENDA
          ParentBackground = False
          ParentColor = False
          ParentFont = False
          Properties.DisplayChecked = '1'
          Properties.DisplayUnchecked = '0'
          Properties.DisplayGrayed = '0'
          Properties.ValueChecked = '1'
          Properties.ValueGrayed = 0
          Properties.ValueUnchecked = '0'
          Style.Color = clWhite
          Style.Font.Charset = DEFAULT_CHARSET
          Style.Font.Color = clWindowText
          Style.Font.Height = -15
          Style.Font.Name = 'Tahoma'
          Style.Font.Style = [fsBold]
          Style.LookAndFeel.NativeStyle = False
          Style.LookAndFeel.SkinName = 'Office2013White'
          Style.IsFontAssigned = True
          StyleDisabled.Color = clWhite
          StyleDisabled.LookAndFeel.NativeStyle = False
          StyleDisabled.LookAndFeel.SkinName = 'Office2013White'
          StyleFocused.Color = clWhite
          StyleFocused.LookAndFeel.NativeStyle = False
          StyleFocused.LookAndFeel.SkinName = 'Office2013White'
          StyleHot.Color = clWhite
          StyleHot.LookAndFeel.NativeStyle = False
          StyleHot.LookAndFeel.SkinName = 'Office2013White'
          TabOrder = 0
          Height = 19
          Width = 330
        end
        object cxDBCheckBox15: TcxDBCheckBox
          Left = 10
          Top = 55
          AutoSize = False
          Caption = 'PERMITE ALTERAR PRE'#199'O PRODUTO NO PEDIDO'
          DataBinding.DataField = 'INFORMA_VENDEDOR'
          DataBinding.DataSource = DS_PARAMETROS_VENDA
          ParentBackground = False
          ParentColor = False
          ParentFont = False
          Properties.DisplayChecked = '1'
          Properties.DisplayUnchecked = '0'
          Properties.DisplayGrayed = '0'
          Properties.ValueChecked = '1'
          Properties.ValueGrayed = 0
          Properties.ValueUnchecked = '0'
          Style.Color = clWhite
          Style.Font.Charset = DEFAULT_CHARSET
          Style.Font.Color = clWindowText
          Style.Font.Height = -15
          Style.Font.Name = 'Tahoma'
          Style.Font.Style = [fsBold]
          Style.LookAndFeel.NativeStyle = False
          Style.LookAndFeel.SkinName = 'Office2013White'
          Style.TextColor = clRed
          Style.IsFontAssigned = True
          StyleDisabled.Color = clWhite
          StyleDisabled.LookAndFeel.NativeStyle = False
          StyleDisabled.LookAndFeel.SkinName = 'Office2013White'
          StyleFocused.Color = clWhite
          StyleFocused.LookAndFeel.NativeStyle = False
          StyleFocused.LookAndFeel.SkinName = 'Office2013White'
          StyleHot.Color = clWhite
          StyleHot.LookAndFeel.NativeStyle = False
          StyleHot.LookAndFeel.SkinName = 'Office2013White'
          TabOrder = 1
          Height = 19
          Width = 412
        end
        object cxDBCheckBox18: TcxDBCheckBox
          Left = 10
          Top = 85
          AutoSize = False
          Caption = 'PERMITE GRAVAR NO CADASTRO PRE'#199'O DO PRODUTO ALTERADO NO PEDIDO.'
          DataBinding.DataField = 'INFORMA_VENDEDOR'
          DataBinding.DataSource = DS_PARAMETROS_VENDA
          ParentBackground = False
          ParentColor = False
          ParentFont = False
          Properties.DisplayChecked = '1'
          Properties.DisplayUnchecked = '0'
          Properties.DisplayGrayed = '0'
          Properties.ValueChecked = '1'
          Properties.ValueGrayed = 0
          Properties.ValueUnchecked = '0'
          Style.Color = clWhite
          Style.Font.Charset = DEFAULT_CHARSET
          Style.Font.Color = clWindowText
          Style.Font.Height = -15
          Style.Font.Name = 'Tahoma'
          Style.Font.Style = [fsBold]
          Style.LookAndFeel.NativeStyle = False
          Style.LookAndFeel.SkinName = 'Office2013White'
          Style.TextColor = clRed
          Style.IsFontAssigned = True
          StyleDisabled.Color = clWhite
          StyleDisabled.LookAndFeel.NativeStyle = False
          StyleDisabled.LookAndFeel.SkinName = 'Office2013White'
          StyleFocused.Color = clWhite
          StyleFocused.LookAndFeel.NativeStyle = False
          StyleFocused.LookAndFeel.SkinName = 'Office2013White'
          StyleHot.Color = clWhite
          StyleHot.LookAndFeel.NativeStyle = False
          StyleHot.LookAndFeel.SkinName = 'Office2013White'
          TabOrder = 2
          Height = 25
          Width = 623
        end
        object cxDBCheckBox17: TcxDBCheckBox
          Left = 10
          Top = 116
          AutoSize = False
          Caption = 'UTILIZA TABELA DE PRE'#199'OS '
          DataBinding.DataField = 'INFORMA_VENDEDOR'
          DataBinding.DataSource = DS_PARAMETROS_VENDA
          ParentBackground = False
          ParentColor = False
          ParentFont = False
          Properties.DisplayChecked = '1'
          Properties.DisplayUnchecked = '0'
          Properties.DisplayGrayed = '0'
          Properties.ValueChecked = '1'
          Properties.ValueGrayed = 0
          Properties.ValueUnchecked = '0'
          Style.Color = clWhite
          Style.Font.Charset = DEFAULT_CHARSET
          Style.Font.Color = clWindowText
          Style.Font.Height = -15
          Style.Font.Name = 'Tahoma'
          Style.Font.Style = [fsBold]
          Style.LookAndFeel.NativeStyle = False
          Style.LookAndFeel.SkinName = 'Office2013White'
          Style.TextColor = clRed
          Style.IsFontAssigned = True
          StyleDisabled.Color = clWhite
          StyleDisabled.LookAndFeel.NativeStyle = False
          StyleDisabled.LookAndFeel.SkinName = 'Office2013White'
          StyleFocused.Color = clWhite
          StyleFocused.LookAndFeel.NativeStyle = False
          StyleFocused.LookAndFeel.SkinName = 'Office2013White'
          StyleHot.Color = clWhite
          StyleHot.LookAndFeel.NativeStyle = False
          StyleHot.LookAndFeel.SkinName = 'Office2013White'
          TabOrder = 3
          Height = 27
          Width = 330
        end
        object cxDBCheckBox19: TcxDBCheckBox
          Left = 10
          Top = 152
          AutoSize = False
          Caption = 'UTILIZA CONVENIO'
          DataBinding.DataField = 'INFORMA_VENDEDOR'
          DataBinding.DataSource = DS_PARAMETROS_VENDA
          ParentBackground = False
          ParentColor = False
          ParentFont = False
          Properties.DisplayChecked = '1'
          Properties.DisplayUnchecked = '0'
          Properties.DisplayGrayed = '0'
          Properties.ValueChecked = '1'
          Properties.ValueGrayed = 0
          Properties.ValueUnchecked = '0'
          Style.Color = clWhite
          Style.Font.Charset = DEFAULT_CHARSET
          Style.Font.Color = clWindowText
          Style.Font.Height = -15
          Style.Font.Name = 'Tahoma'
          Style.Font.Style = [fsBold]
          Style.LookAndFeel.NativeStyle = False
          Style.LookAndFeel.SkinName = 'Office2013White'
          Style.TextColor = clRed
          Style.IsFontAssigned = True
          StyleDisabled.Color = clWhite
          StyleDisabled.LookAndFeel.NativeStyle = False
          StyleDisabled.LookAndFeel.SkinName = 'Office2013White'
          StyleFocused.Color = clWhite
          StyleFocused.LookAndFeel.NativeStyle = False
          StyleFocused.LookAndFeel.SkinName = 'Office2013White'
          StyleHot.Color = clWhite
          StyleHot.LookAndFeel.NativeStyle = False
          StyleHot.LookAndFeel.SkinName = 'Office2013White'
          TabOrder = 4
          Height = 19
          Width = 212
        end
      end
      object cxGroupBox4: TcxGroupBox
        Left = 410
        Top = 7
        Caption = '  IMPRESS'#195'O  '
        TabOrder = 4
        Height = 95
        Width = 591
        object Label7: TLabel
          Left = 445
          Top = 64
          Width = 71
          Height = 18
          Caption = 'Terminal:'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -15
          Font.Name = 'Tahoma'
          Font.Style = [fsBold]
          ParentFont = False
        end
        object Label5: TLabel
          Left = 479
          Top = 27
          Width = 37
          Height = 18
          Caption = 'Vias:'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -15
          Font.Name = 'Tahoma'
          Font.Style = [fsBold]
          ParentFont = False
        end
        object Label4: TLabel
          Left = 315
          Top = 27
          Width = 144
          Height = 18
          Caption = ' LIMITAR  N.'#186' VIAS'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clRed
          Font.Height = -15
          Font.Name = 'Tahoma'
          Font.Style = [fsBold]
          ParentFont = False
        end
        object Label6: TLabel
          Left = 26
          Top = 64
          Width = 91
          Height = 18
          Caption = 'Impressora:'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clHighlight
          Font.Height = -15
          Font.Name = 'Tahoma'
          Font.Style = [fsBold]
          ParentFont = False
        end
        object edt_vias_pedido: TEdit
          Left = 528
          Top = 23
          Width = 50
          Height = 27
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -16
          Font.Name = 'Tahoma'
          Font.Style = [fsBold]
          ParentFont = False
          TabOrder = 0
          Text = '1'
        end
        object edt_terminal_pedido: TEdit
          Left = 528
          Top = 60
          Width = 50
          Height = 27
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -16
          Font.Name = 'Tahoma'
          Font.Style = [fsBold]
          NumbersOnly = True
          ParentFont = False
          TabOrder = 1
          Text = '1'
        end
        object cxDBCheckBox16: TcxDBCheckBox
          Left = 26
          Top = 27
          AutoSize = False
          Caption = 'COMPROVANTE'
          DataBinding.DataField = 'IMPRIMIR_COMPROVANTE'
          DataBinding.DataSource = DS_PARAMETROS_VENDA
          ParentBackground = False
          ParentColor = False
          ParentFont = False
          Properties.DisplayChecked = '1'
          Properties.DisplayUnchecked = '0'
          Properties.DisplayGrayed = '0'
          Properties.ValueChecked = '1'
          Properties.ValueGrayed = 0
          Properties.ValueUnchecked = '0'
          Properties.OnEditValueChanged = chk_comprovantePropertiesEditValueChanged
          Style.Color = clWhite
          Style.Font.Charset = DEFAULT_CHARSET
          Style.Font.Color = clWindowText
          Style.Font.Height = -15
          Style.Font.Name = 'Tahoma'
          Style.Font.Style = [fsBold]
          Style.LookAndFeel.NativeStyle = False
          Style.LookAndFeel.SkinName = 'Office2013White'
          Style.IsFontAssigned = True
          StyleDisabled.Color = clWhite
          StyleDisabled.LookAndFeel.NativeStyle = False
          StyleDisabled.LookAndFeel.SkinName = 'Office2013White'
          StyleFocused.Color = clWhite
          StyleFocused.LookAndFeel.NativeStyle = False
          StyleFocused.LookAndFeel.SkinName = 'Office2013White'
          StyleHot.Color = clWhite
          StyleHot.LookAndFeel.NativeStyle = False
          StyleHot.LookAndFeel.SkinName = 'Office2013White'
          TabOrder = 2
          OnClick = chk_comprovanteClick
          Height = 19
          Width = 147
        end
        object cbImpressora_pedido: TcxComboBox
          Left = 123
          Top = 60
          ParentFont = False
          Properties.DropDownListStyle = lsFixedList
          Style.Font.Charset = DEFAULT_CHARSET
          Style.Font.Color = clWindowText
          Style.Font.Height = -15
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
          TabOrder = 3
          Width = 278
        end
      end
    end
    object cxTabSheet2: TcxTabSheet
      Caption = '  PDV  '
      ImageIndex = 1
      ExplicitLeft = 4
      ExplicitTop = 24
      ExplicitWidth = 281
      ExplicitHeight = 165
      object cxGroupBox7: TcxGroupBox
        Left = 21
        Top = 52
        Caption = '  CONSULTA  '
        TabOrder = 0
        Height = 61
        Width = 378
        object cxDBCheckBox27: TcxDBCheckBox
          Left = 10
          Top = 26
          AutoSize = False
          Caption = 'POR REFERENCIA DO FABRICANTE NO PDV'
          DataBinding.DataField = 'INFORMA_VENDEDOR'
          DataBinding.DataSource = DS_PARAMETROS_VENDA
          ParentBackground = False
          ParentColor = False
          ParentFont = False
          Properties.DisplayChecked = '1'
          Properties.DisplayUnchecked = '0'
          Properties.DisplayGrayed = '0'
          Properties.ValueChecked = '1'
          Properties.ValueGrayed = 0
          Properties.ValueUnchecked = '0'
          Style.Color = clWhite
          Style.Font.Charset = DEFAULT_CHARSET
          Style.Font.Color = clWindowText
          Style.Font.Height = -15
          Style.Font.Name = 'Tahoma'
          Style.Font.Style = [fsBold]
          Style.LookAndFeel.NativeStyle = False
          Style.LookAndFeel.SkinName = 'Office2013White'
          Style.TextColor = clRed
          Style.IsFontAssigned = True
          StyleDisabled.Color = clWhite
          StyleDisabled.LookAndFeel.NativeStyle = False
          StyleDisabled.LookAndFeel.SkinName = 'Office2013White'
          StyleFocused.Color = clWhite
          StyleFocused.LookAndFeel.NativeStyle = False
          StyleFocused.LookAndFeel.SkinName = 'Office2013White'
          StyleHot.Color = clWhite
          StyleHot.LookAndFeel.NativeStyle = False
          StyleHot.LookAndFeel.SkinName = 'Office2013White'
          TabOrder = 0
          Height = 20
          Width = 352
        end
      end
      object cxGroupBox8: TcxGroupBox
        Left = 421
        Top = 29
        Caption = '  IMPRESS'#195'O  '
        TabOrder = 1
        Height = 95
        Width = 597
        object Label8: TLabel
          Left = 445
          Top = 64
          Width = 71
          Height = 18
          Caption = 'Terminal:'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -15
          Font.Name = 'Tahoma'
          Font.Style = [fsBold]
          ParentFont = False
        end
        object Label9: TLabel
          Left = 479
          Top = 27
          Width = 37
          Height = 18
          Caption = 'Vias:'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -15
          Font.Name = 'Tahoma'
          Font.Style = [fsBold]
          ParentFont = False
        end
        object Label10: TLabel
          Left = 315
          Top = 27
          Width = 144
          Height = 18
          Caption = ' LIMITAR  N.'#186' VIAS'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clRed
          Font.Height = -15
          Font.Name = 'Tahoma'
          Font.Style = [fsBold]
          ParentFont = False
        end
        object Label11: TLabel
          Left = 26
          Top = 64
          Width = 91
          Height = 18
          Caption = 'Impressora:'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clHighlight
          Font.Height = -15
          Font.Name = 'Tahoma'
          Font.Style = [fsBold]
          ParentFont = False
        end
        object Edit1: TEdit
          Left = 528
          Top = 23
          Width = 50
          Height = 27
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -16
          Font.Name = 'Tahoma'
          Font.Style = [fsBold]
          ParentFont = False
          TabOrder = 0
          Text = '1'
        end
        object Edit2: TEdit
          Left = 528
          Top = 60
          Width = 50
          Height = 27
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -16
          Font.Name = 'Tahoma'
          Font.Style = [fsBold]
          NumbersOnly = True
          ParentFont = False
          TabOrder = 1
          Text = '1'
        end
        object cxDBCheckBox21: TcxDBCheckBox
          Left = 26
          Top = 27
          AutoSize = False
          Caption = 'COMPROVANTE'
          DataBinding.DataField = 'IMPRIMIR_COMPROVANTE'
          DataBinding.DataSource = DS_PARAMETROS_VENDA
          ParentBackground = False
          ParentColor = False
          ParentFont = False
          Properties.DisplayChecked = '1'
          Properties.DisplayUnchecked = '0'
          Properties.DisplayGrayed = '0'
          Properties.ValueChecked = '1'
          Properties.ValueGrayed = 0
          Properties.ValueUnchecked = '0'
          Properties.OnEditValueChanged = chk_comprovantePropertiesEditValueChanged
          Style.Color = clWhite
          Style.Font.Charset = DEFAULT_CHARSET
          Style.Font.Color = clWindowText
          Style.Font.Height = -15
          Style.Font.Name = 'Tahoma'
          Style.Font.Style = [fsBold]
          Style.LookAndFeel.NativeStyle = False
          Style.LookAndFeel.SkinName = 'Office2013White'
          Style.IsFontAssigned = True
          StyleDisabled.Color = clWhite
          StyleDisabled.LookAndFeel.NativeStyle = False
          StyleDisabled.LookAndFeel.SkinName = 'Office2013White'
          StyleFocused.Color = clWhite
          StyleFocused.LookAndFeel.NativeStyle = False
          StyleFocused.LookAndFeel.SkinName = 'Office2013White'
          StyleHot.Color = clWhite
          StyleHot.LookAndFeel.NativeStyle = False
          StyleHot.LookAndFeel.SkinName = 'Office2013White'
          TabOrder = 2
          OnClick = chk_comprovanteClick
          Height = 19
          Width = 147
        end
        object cxComboBox1: TcxComboBox
          Left = 123
          Top = 60
          ParentFont = False
          Properties.DropDownListStyle = lsFixedList
          Style.Font.Charset = DEFAULT_CHARSET
          Style.Font.Color = clWindowText
          Style.Font.Height = -15
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
          TabOrder = 3
          Width = 278
        end
      end
      object cxGroupBox9: TcxGroupBox
        Left = 21
        Top = 154
        TabOrder = 2
        Height = 127
        Width = 1006
        object Label12: TLabel
          Left = 14
          Top = 90
          Width = 327
          Height = 18
          Caption = 'PRODUTO ALTERADO PELA VENDA NO PDV.'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clRed
          Font.Height = -15
          Font.Name = 'Tahoma'
          Font.Style = [fsBold]
          ParentFont = False
        end
        object cxDBCheckBox22: TcxDBCheckBox
          Left = 14
          Top = 27
          AutoSize = False
          Caption = 'OBRIGAT'#211'RIO INFORMA VENDEDOR'
          DataBinding.DataField = 'INFORMA_VENDEDOR'
          DataBinding.DataSource = DS_PARAMETROS_VENDA
          ParentBackground = False
          ParentColor = False
          ParentFont = False
          Properties.DisplayChecked = '1'
          Properties.DisplayUnchecked = '0'
          Properties.DisplayGrayed = '0'
          Properties.ValueChecked = '1'
          Properties.ValueGrayed = 0
          Properties.ValueUnchecked = '0'
          Style.Color = clWhite
          Style.Font.Charset = DEFAULT_CHARSET
          Style.Font.Color = clWindowText
          Style.Font.Height = -15
          Style.Font.Name = 'Tahoma'
          Style.Font.Style = [fsBold]
          Style.LookAndFeel.NativeStyle = False
          Style.LookAndFeel.SkinName = 'Office2013White'
          Style.IsFontAssigned = True
          StyleDisabled.Color = clWhite
          StyleDisabled.LookAndFeel.NativeStyle = False
          StyleDisabled.LookAndFeel.SkinName = 'Office2013White'
          StyleFocused.Color = clWhite
          StyleFocused.LookAndFeel.NativeStyle = False
          StyleFocused.LookAndFeel.SkinName = 'Office2013White'
          StyleHot.Color = clWhite
          StyleHot.LookAndFeel.NativeStyle = False
          StyleHot.LookAndFeel.SkinName = 'Office2013White'
          TabOrder = 0
          Height = 19
          Width = 330
        end
        object cxDBCheckBox23: TcxDBCheckBox
          Left = 14
          Top = 67
          AutoSize = False
          Caption = 'PERMITE ALTERAR PRE'#199'O NO CADASTRO DO '
          DataBinding.DataField = 'INFORMA_VENDEDOR'
          DataBinding.DataSource = DS_PARAMETROS_VENDA
          ParentBackground = False
          ParentColor = False
          ParentFont = False
          Properties.DisplayChecked = '1'
          Properties.DisplayUnchecked = '0'
          Properties.DisplayGrayed = '0'
          Properties.ValueChecked = '1'
          Properties.ValueGrayed = 0
          Properties.ValueUnchecked = '0'
          Style.Color = clWhite
          Style.Font.Charset = DEFAULT_CHARSET
          Style.Font.Color = clWindowText
          Style.Font.Height = -15
          Style.Font.Name = 'Tahoma'
          Style.Font.Style = [fsBold]
          Style.LookAndFeel.NativeStyle = False
          Style.LookAndFeel.SkinName = 'Office2013White'
          Style.TextColor = clRed
          Style.IsFontAssigned = True
          StyleDisabled.Color = clWhite
          StyleDisabled.LookAndFeel.NativeStyle = False
          StyleDisabled.LookAndFeel.SkinName = 'Office2013White'
          StyleFocused.Color = clWhite
          StyleFocused.LookAndFeel.NativeStyle = False
          StyleFocused.LookAndFeel.SkinName = 'Office2013White'
          StyleHot.Color = clWhite
          StyleHot.LookAndFeel.NativeStyle = False
          StyleHot.LookAndFeel.SkinName = 'Office2013White'
          TabOrder = 1
          Height = 19
          Width = 365
        end
        object cxDBCheckBox24: TcxDBCheckBox
          Left = 498
          Top = 27
          AutoSize = False
          Caption = 'PERMITE GRAVAR NO CADASTRO PRE'#199'O DO PRODUTO'
          DataBinding.DataField = 'INFORMA_VENDEDOR'
          DataBinding.DataSource = DS_PARAMETROS_VENDA
          ParentBackground = False
          ParentColor = False
          ParentFont = False
          Properties.DisplayChecked = '1'
          Properties.DisplayUnchecked = '0'
          Properties.DisplayGrayed = '0'
          Properties.ValueChecked = '1'
          Properties.ValueGrayed = 0
          Properties.ValueUnchecked = '0'
          Style.Color = clWhite
          Style.Font.Charset = DEFAULT_CHARSET
          Style.Font.Color = clWindowText
          Style.Font.Height = -15
          Style.Font.Name = 'Tahoma'
          Style.Font.Style = [fsBold]
          Style.LookAndFeel.NativeStyle = False
          Style.LookAndFeel.SkinName = 'Office2013White'
          Style.TextColor = clRed
          Style.IsFontAssigned = True
          StyleDisabled.Color = clWhite
          StyleDisabled.LookAndFeel.NativeStyle = False
          StyleDisabled.LookAndFeel.SkinName = 'Office2013White'
          StyleFocused.Color = clWhite
          StyleFocused.LookAndFeel.NativeStyle = False
          StyleFocused.LookAndFeel.SkinName = 'Office2013White'
          StyleHot.Color = clWhite
          StyleHot.LookAndFeel.NativeStyle = False
          StyleHot.LookAndFeel.SkinName = 'Office2013White'
          TabOrder = 2
          Height = 25
          Width = 447
        end
        object cxDBCheckBox25: TcxDBCheckBox
          Left = 498
          Top = 67
          AutoSize = False
          Caption = 'UTLIZA CONV'#202'NIO'
          DataBinding.DataField = 'INFORMA_VENDEDOR'
          DataBinding.DataSource = DS_PARAMETROS_VENDA
          ParentBackground = False
          ParentColor = False
          ParentFont = False
          Properties.DisplayChecked = '1'
          Properties.DisplayUnchecked = '0'
          Properties.DisplayGrayed = '0'
          Properties.ValueChecked = '1'
          Properties.ValueGrayed = 0
          Properties.ValueUnchecked = '0'
          Style.Color = clWhite
          Style.Font.Charset = DEFAULT_CHARSET
          Style.Font.Color = clWindowText
          Style.Font.Height = -15
          Style.Font.Name = 'Tahoma'
          Style.Font.Style = [fsBold]
          Style.LookAndFeel.NativeStyle = False
          Style.LookAndFeel.SkinName = 'Office2013White'
          Style.TextColor = clRed
          Style.IsFontAssigned = True
          StyleDisabled.Color = clWhite
          StyleDisabled.LookAndFeel.NativeStyle = False
          StyleDisabled.LookAndFeel.SkinName = 'Office2013White'
          StyleFocused.Color = clWhite
          StyleFocused.LookAndFeel.NativeStyle = False
          StyleFocused.LookAndFeel.SkinName = 'Office2013White'
          StyleHot.Color = clWhite
          StyleHot.LookAndFeel.NativeStyle = False
          StyleHot.LookAndFeel.SkinName = 'Office2013White'
          TabOrder = 3
          Height = 27
          Width = 205
        end
        object cxDBCheckBox26: TcxDBCheckBox
          Left = 10
          Top = 187
          AutoSize = False
          Caption = 'UTILIZA CONVENIO'
          DataBinding.DataField = 'INFORMA_VENDEDOR'
          DataBinding.DataSource = DS_PARAMETROS_VENDA
          ParentBackground = False
          ParentColor = False
          ParentFont = False
          Properties.DisplayChecked = '1'
          Properties.DisplayUnchecked = '0'
          Properties.DisplayGrayed = '0'
          Properties.ValueChecked = '1'
          Properties.ValueGrayed = 0
          Properties.ValueUnchecked = '0'
          Style.Color = clWhite
          Style.Font.Charset = DEFAULT_CHARSET
          Style.Font.Color = clWindowText
          Style.Font.Height = -15
          Style.Font.Name = 'Tahoma'
          Style.Font.Style = [fsBold]
          Style.LookAndFeel.NativeStyle = False
          Style.LookAndFeel.SkinName = 'Office2013White'
          Style.TextColor = clRed
          Style.IsFontAssigned = True
          StyleDisabled.Color = clWhite
          StyleDisabled.LookAndFeel.NativeStyle = False
          StyleDisabled.LookAndFeel.SkinName = 'Office2013White'
          StyleFocused.Color = clWhite
          StyleFocused.LookAndFeel.NativeStyle = False
          StyleFocused.LookAndFeel.SkinName = 'Office2013White'
          StyleHot.Color = clWhite
          StyleHot.LookAndFeel.NativeStyle = False
          StyleHot.LookAndFeel.SkinName = 'Office2013White'
          TabOrder = 4
          Height = 19
          Width = 212
        end
      end
    end
  end
  object SQL_PARAMETROS_SISTEMA: TFDQuery
    Connection = Module.connection
    SQL.Strings = (
      'select * from parametros_sistema')
    Left = 1216
    Top = 416
    object SQL_PARAMETROS_SISTEMAid: TFDAutoIncField
      FieldName = 'id'
      Origin = 'id'
      ProviderFlags = [pfInWhere, pfInKey]
      ReadOnly = True
    end
    object SQL_PARAMETROS_SISTEMAaliq_imcs: TBCDField
      AutoGenerateValue = arDefault
      FieldName = 'aliq_imcs'
      Origin = 'aliq_imcs'
      Precision = 10
    end
    object SQL_PARAMETROS_SISTEMAaliq_pis_cumulativo: TBCDField
      AutoGenerateValue = arDefault
      FieldName = 'aliq_pis_cumulativo'
      Origin = 'aliq_pis_cumulativo'
      Precision = 10
    end
    object SQL_PARAMETROS_SISTEMAaliq_pis_nao_cumulativo: TBCDField
      AutoGenerateValue = arDefault
      FieldName = 'aliq_pis_nao_cumulativo'
      Origin = 'aliq_pis_nao_cumulativo'
      Precision = 10
    end
    object SQL_PARAMETROS_SISTEMAaliq_cofins_cumulativo: TBCDField
      AutoGenerateValue = arDefault
      FieldName = 'aliq_cofins_cumulativo'
      Origin = 'aliq_cofins_cumulativo'
      Precision = 10
    end
    object SQL_PARAMETROS_SISTEMAaliq_cofins_nao_cumulativo: TBCDField
      AutoGenerateValue = arDefault
      FieldName = 'aliq_cofins_nao_cumulativo'
      Origin = 'aliq_cofins_nao_cumulativo'
      Precision = 10
    end
    object SQL_PARAMETROS_SISTEMAaliq_iss: TBCDField
      AutoGenerateValue = arDefault
      FieldName = 'aliq_iss'
      Origin = 'aliq_iss'
      Precision = 10
    end
    object SQL_PARAMETROS_SISTEMAcaminho_backup: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'caminho_backup'
      Origin = 'caminho_backup'
      Size = 100
    end
    object SQL_PARAMETROS_SISTEMAhost_name: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'host_name'
      Origin = 'host_name'
      Size = 50
    end
    object SQL_PARAMETROS_SISTEMAPASTA_FTP: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'PASTA_FTP'
      Origin = 'PASTA_FTP'
      Size = 200
    end
    object SQL_PARAMETROS_SISTEMAPathInstalacaoWINRAR: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'PathInstalacaoWINRAR'
      Origin = 'PathInstalacaoWINRAR'
      Size = 100
    end
    object SQL_PARAMETROS_SISTEMAPASTA_XML: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'PASTA_XML'
      Origin = 'PASTA_XML'
      Size = 100
    end
    object SQL_PARAMETROS_SISTEMAdados_otica_cliente: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'dados_otica_cliente'
      Origin = 'dados_otica_cliente'
      FixedChar = True
      Size = 1
    end
    object SQL_PARAMETROS_SISTEMAproduto_preco_faixa: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'produto_preco_faixa'
      Origin = 'produto_preco_faixa'
      FixedChar = True
      Size = 1
    end
    object SQL_PARAMETROS_SISTEMAcpf_cad_cliente: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'cpf_cad_cliente'
      Origin = 'cpf_cad_cliente'
      FixedChar = True
      Size = 1
    end
    object SQL_PARAMETROS_SISTEMAprod_difer_estoque: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'prod_difer_estoque'
      Origin = 'prod_difer_estoque'
      FixedChar = True
      Size = 1
    end
    object SQL_PARAMETROS_SISTEMApasta_notas: TMemoField
      AutoGenerateValue = arDefault
      FieldName = 'pasta_notas'
      Origin = 'pasta_notas'
      BlobType = ftMemo
    end
    object SQL_PARAMETROS_SISTEMAcomanda_num: TIntegerField
      AutoGenerateValue = arDefault
      FieldName = 'comanda_num'
      Origin = 'comanda_num'
    end
    object SQL_PARAMETROS_SISTEMAagrupar_tipos_pagamentos: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'agrupar_tipos_pagamentos'
      Origin = 'agrupar_tipos_pagamentos'
      Size = 255
    end
  end
  object SQL_Empresa: TFDQuery
    Connection = Module.connection
    SQL.Strings = (
      'select * from empresa order by codigo desc limit 1')
    Left = 1216
    Top = 280
    object SQL_EmpresaCODIGO: TFDAutoIncField
      FieldName = 'CODIGO'
      Origin = 'CODIGO'
      ProviderFlags = [pfInWhere, pfInKey]
      ReadOnly = True
    end
    object SQL_EmpresaRAZAO_SOCIAL: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'RAZAO_SOCIAL'
      Origin = 'RAZAO_SOCIAL'
      Size = 150
    end
    object SQL_EmpresaNOME_FANTASIA: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'NOME_FANTASIA'
      Origin = 'NOME_FANTASIA'
      Size = 60
    end
    object SQL_EmpresaDATA_CADASTRO: TDateField
      AutoGenerateValue = arDefault
      FieldName = 'DATA_CADASTRO'
      Origin = 'DATA_CADASTRO'
      EditMask = '!99/99/9999;0;_'
    end
    object SQL_EmpresaCNPJ: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'CNPJ'
      Origin = 'CNPJ'
      EditMask = '99.999.999/9999-99;0;'
      Size = 50
    end
    object SQL_EmpresaINSCRICAO_ESTADUAL: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'INSCRICAO_ESTADUAL'
      Origin = 'INSCRICAO_ESTADUAL'
      Size = 14
    end
    object SQL_EmpresaINSCRICAO_MUNICIPAL: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'INSCRICAO_MUNICIPAL'
      Origin = 'INSCRICAO_MUNICIPAL'
    end
    object SQL_EmpresaEMPRESA_TELEFONE_01: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'EMPRESA_TELEFONE_01'
      Origin = 'EMPRESA_TELEFONE_01'
      EditMask = '!\(99\) 9999-9999;0;_'
    end
    object SQL_EmpresaEMPRESA_TELEFONE_03: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'EMPRESA_TELEFONE_03'
      Origin = 'EMPRESA_TELEFONE_03'
      EditMask = '!\(99\) \99999-9999;0;_'
    end
    object SQL_EmpresaEMPRESA_FAX: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'EMPRESA_FAX'
      Origin = 'EMPRESA_FAX'
    end
    object SQL_EmpresaEMPRESA_CELULAR_01: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'EMPRESA_CELULAR_01'
      Origin = 'EMPRESA_CELULAR_01'
      EditMask = '!\(99\) \99999-9999;0;_'
    end
    object SQL_EmpresaEMPRESA_CELULAR_02: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'EMPRESA_CELULAR_02'
      Origin = 'EMPRESA_CELULAR_02'
      EditMask = '!\(99\) \99999-9999;0;_'
    end
    object SQL_EmpresaEMPRESA_SITE: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'EMPRESA_SITE'
      Origin = 'EMPRESA_SITE'
      Size = 50
    end
    object SQL_EmpresaEMPRESA_EMAIL_01: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'EMPRESA_EMAIL_01'
      Origin = 'EMPRESA_EMAIL_01'
      Size = 100
    end
    object SQL_EmpresaEMPRESA_SKYPE: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'EMPRESA_SKYPE'
      Origin = 'EMPRESA_SKYPE'
      Size = 50
    end
    object SQL_EmpresaEMPRESA_EMAIL_02: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'EMPRESA_EMAIL_02'
      Origin = 'EMPRESA_EMAIL_02'
      Size = 100
    end
    object SQL_EmpresaENDERECO: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'ENDERECO'
      Origin = 'ENDERECO'
      Size = 200
    end
    object SQL_EmpresaNUMERO: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'NUMERO'
      Origin = 'NUMERO'
    end
    object SQL_EmpresaSUFRAMA: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'SUFRAMA'
      Origin = 'SUFRAMA'
      Size = 15
    end
    object SQL_EmpresaCEP: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'CEP'
      Origin = 'CEP'
      EditMask = '99\.999\-999;0;_'
      Size = 50
    end
    object SQL_EmpresaBAIRRO: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'BAIRRO'
      Origin = 'BAIRRO'
      Size = 200
    end
    object SQL_EmpresaMUNICIPIO: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'MUNICIPIO'
      Origin = 'MUNICIPIO'
      Size = 50
    end
    object SQL_EmpresaESTADO: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'ESTADO'
      Origin = 'ESTADO'
      Size = 50
    end
    object SQL_EmpresaCODIGO_MUNICIPIO: TIntegerField
      AutoGenerateValue = arDefault
      FieldName = 'CODIGO_MUNICIPIO'
      Origin = 'CODIGO_MUNICIPIO'
    end
    object SQL_EmpresaPAIS: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'PAIS'
      Origin = 'PAIS'
      Size = 50
    end
    object SQL_EmpresaCOMPLEMENTO: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'COMPLEMENTO'
      Origin = 'COMPLEMENTO'
      Size = 200
    end
    object SQL_EmpresaIE_SUBSTITUTO_TRIBUTARIO: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'IE_SUBSTITUTO_TRIBUTARIO'
      Origin = 'IE_SUBSTITUTO_TRIBUTARIO'
      Size = 15
    end
    object SQL_EmpresaCODIGO_REGIME_TRIBUTARIO: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'CODIGO_REGIME_TRIBUTARIO'
      Origin = 'CODIGO_REGIME_TRIBUTARIO'
      FixedChar = True
      Size = 1
    end
    object SQL_EmpresaAPURACAO_MENSAL_IPI: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'APURACAO_MENSAL_IPI'
      Origin = 'APURACAO_MENSAL_IPI'
      FixedChar = True
      Size = 1
    end
    object SQL_EmpresaAPURACAO_DECENDIAL_IPI: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'APURACAO_DECENDIAL_IPI'
      Origin = 'APURACAO_DECENDIAL_IPI'
      FixedChar = True
      Size = 1
    end
    object SQL_EmpresaOPTANTE_SIMPLES_NACIONAL: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'OPTANTE_SIMPLES_NACIONAL'
      Origin = 'OPTANTE_SIMPLES_NACIONAL'
      FixedChar = True
      Size = 1
    end
    object SQL_EmpresaTRIBUTADO_ALIQUOTA_FIXA_ICMS: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'TRIBUTADO_ALIQUOTA_FIXA_ICMS'
      Origin = 'TRIBUTADO_ALIQUOTA_FIXA_ICMS'
      FixedChar = True
      Size = 1
    end
    object SQL_EmpresaCONTRIBUINTE_IPI: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'CONTRIBUINTE_IPI'
      Origin = 'CONTRIBUINTE_IPI'
      FixedChar = True
      Size = 1
    end
    object SQL_EmpresaORGANIZACAO_CONTABIL_RAZAO_SOCIAL: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'ORGANIZACAO_CONTABIL_RAZAO_SOCIAL'
      Origin = 'ORGANIZACAO_CONTABIL_RAZAO_SOCIAL'
      Size = 200
    end
    object SQL_EmpresaORGANIZACAO_CONTABIL_FANTASIA: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'ORGANIZACAO_CONTABIL_FANTASIA'
      Origin = 'ORGANIZACAO_CONTABIL_FANTASIA'
      Size = 200
    end
    object SQL_EmpresaORGANIZACAO_CONTABIL_CNPJ_CPF: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'ORGANIZACAO_CONTABIL_CNPJ_CPF'
      Origin = 'ORGANIZACAO_CONTABIL_CNPJ_CPF'
      EditMask = '99\.999\.999/9999-99;0;_'
    end
    object SQL_EmpresaORGANIZACAO_CONTABIL_INSCRICAO: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'ORGANIZACAO_CONTABIL_INSCRICAO'
      Origin = 'ORGANIZACAO_CONTABIL_INSCRICAO'
      Size = 50
    end
    object SQL_EmpresaORGANIZACAO_CONTABIL_ENDERECO: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'ORGANIZACAO_CONTABIL_ENDERECO'
      Origin = 'ORGANIZACAO_CONTABIL_ENDERECO'
      Size = 100
    end
    object SQL_EmpresaORGANIZACAO_CONTABIL_BAIRRO: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'ORGANIZACAO_CONTABIL_BAIRRO'
      Origin = 'ORGANIZACAO_CONTABIL_BAIRRO'
      Size = 100
    end
    object SQL_EmpresaORGANIZACAO_CONTABIL_NUMERO: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'ORGANIZACAO_CONTABIL_NUMERO'
      Origin = 'ORGANIZACAO_CONTABIL_NUMERO'
      Size = 10
    end
    object SQL_EmpresaORGANIZACAO_CONTABIL_MUNICIPIO: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'ORGANIZACAO_CONTABIL_MUNICIPIO'
      Origin = 'ORGANIZACAO_CONTABIL_MUNICIPIO'
      Size = 50
    end
    object SQL_EmpresaORGANIZACAO_CONTABIL_CODIGO_MUNICIPIO: TIntegerField
      AutoGenerateValue = arDefault
      FieldName = 'ORGANIZACAO_CONTABIL_CODIGO_MUNICIPIO'
      Origin = 'ORGANIZACAO_CONTABIL_CODIGO_MUNICIPIO'
    end
    object SQL_EmpresaORGANIZACAO_CONTABIL_ESTADO: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'ORGANIZACAO_CONTABIL_ESTADO'
      Origin = 'ORGANIZACAO_CONTABIL_ESTADO'
      Size = 50
    end
    object SQL_EmpresaORGANIZACAO_CONTABIL_PAIS: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'ORGANIZACAO_CONTABIL_PAIS'
      Origin = 'ORGANIZACAO_CONTABIL_PAIS'
      Size = 50
    end
    object SQL_EmpresaORGANIZACAO_CONTABIL_CEP: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'ORGANIZACAO_CONTABIL_CEP'
      Origin = 'ORGANIZACAO_CONTABIL_CEP'
      EditMask = '99\.999\-999;0;_'
      Size = 100
    end
    object SQL_EmpresaORGANIZACAO_CONTABIL_COMPLEMENTO: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'ORGANIZACAO_CONTABIL_COMPLEMENTO'
      Origin = 'ORGANIZACAO_CONTABIL_COMPLEMENTO'
      Size = 100
    end
    object SQL_EmpresaORGANIZACAO_CONTABIL_TELEFONE_01: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'ORGANIZACAO_CONTABIL_TELEFONE_01'
      Origin = 'ORGANIZACAO_CONTABIL_TELEFONE_01'
      EditMask = '!\(99\) 9999-9999;0;_'
    end
    object SQL_EmpresaORGANIZACAO_CONTABIL_TELEFONE_02: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'ORGANIZACAO_CONTABIL_TELEFONE_02'
      Origin = 'ORGANIZACAO_CONTABIL_TELEFONE_02'
      EditMask = '!\(99\) 9999-9999;0;_'
    end
    object SQL_EmpresaORGANIZACAO_CONTABIL_CELULAR_01: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'ORGANIZACAO_CONTABIL_CELULAR_01'
      Origin = 'ORGANIZACAO_CONTABIL_CELULAR_01'
      EditMask = '!\(99\) \99999-9999;0;_'
    end
    object SQL_EmpresaORGANIZACAO_CONTABIL_CELULAR_02: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'ORGANIZACAO_CONTABIL_CELULAR_02'
      Origin = 'ORGANIZACAO_CONTABIL_CELULAR_02'
      EditMask = '!\(99\) \99999-9999;0;_'
    end
    object SQL_EmpresaORGANIZACAO_CONTABIL_EMAIL_01: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'ORGANIZACAO_CONTABIL_EMAIL_01'
      Origin = 'ORGANIZACAO_CONTABIL_EMAIL_01'
      Size = 100
    end
    object SQL_EmpresaORGANIZACAO_CONTABIL_EMAIL_02: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'ORGANIZACAO_CONTABIL_EMAIL_02'
      Origin = 'ORGANIZACAO_CONTABIL_EMAIL_02'
      Size = 100
    end
    object SQL_EmpresaORGANIZACAO_CONTABIL_SITE: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'ORGANIZACAO_CONTABIL_SITE'
      Origin = 'ORGANIZACAO_CONTABIL_SITE'
      Size = 100
    end
    object SQL_EmpresaORGANIZACAO_CONTABIL_SKYPE: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'ORGANIZACAO_CONTABIL_SKYPE'
      Origin = 'ORGANIZACAO_CONTABIL_SKYPE'
      Size = 50
    end
    object SQL_EmpresaCONTADOR_NOME: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'CONTADOR_NOME'
      Origin = 'CONTADOR_NOME'
      Size = 200
    end
    object SQL_EmpresaCONTADOR_CPF: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'CONTADOR_CPF'
      Origin = 'CONTADOR_CPF'
      EditMask = '999\.999\.999\-99;0;_'
      Size = 14
    end
    object SQL_EmpresaCONTADOR_CRC: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'CONTADOR_CRC'
      Origin = 'CONTADOR_CRC'
      Size = 50
    end
    object SQL_EmpresaNIRE: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'NIRE'
      Origin = 'NIRE'
      Size = 11
    end
    object SQL_EmpresaCNAE: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'CNAE'
      Origin = 'CNAE'
      Size = 7
    end
    object SQL_EmpresaBANCO_01: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'BANCO_01'
      Origin = 'BANCO_01'
      Size = 50
    end
    object SQL_EmpresaBANCO_OP: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'BANCO_OP'
      Origin = 'BANCO_OP'
      EditMask = '999;0;_'
      Size = 50
    end
    object SQL_EmpresaBANCO_OP2: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'BANCO_OP2'
      Origin = 'BANCO_OP2'
      EditMask = '999;0;_'
      Size = 50
    end
    object SQL_EmpresaBANCO_OP_1: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'BANCO_OP_1'
      Origin = 'BANCO_OP_1'
      EditMask = '999;0;_'
      Size = 50
    end
    object SQL_EmpresaBANCO_OP_1_2: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'BANCO_OP_1_2'
      Origin = 'BANCO_OP_1_2'
      EditMask = '999;0;_'
      Size = 50
    end
    object SQL_EmpresaBANCO_AGENCIA_01: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'BANCO_AGENCIA_01'
      Origin = 'BANCO_AGENCIA_01'
      EditMask = '9999;0;_'
      Size = 50
    end
    object SQL_EmpresaBANCO_CONTA_01: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'BANCO_CONTA_01'
      Origin = 'BANCO_CONTA_01'
      EditMask = '9999999;0;_'
      Size = 50
    end
    object SQL_EmpresaBANCO_02: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'BANCO_02'
      Origin = 'BANCO_02'
      Size = 50
    end
    object SQL_EmpresaBANCO_AGENCIA_01_DIGITO: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'BANCO_AGENCIA_01_DIGITO'
      Origin = 'BANCO_AGENCIA_01_DIGITO'
      EditMask = '99;0;_'
      Size = 50
    end
    object SQL_EmpresaBANCO_CONTA_01_DIGITO: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'BANCO_CONTA_01_DIGITO'
      Origin = 'BANCO_CONTA_01_DIGITO'
      EditMask = '9;0;_'
      Size = 50
    end
    object SQL_EmpresaBANCO_AGENCIA_02_DIGITO: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'BANCO_AGENCIA_02_DIGITO'
      Origin = 'BANCO_AGENCIA_02_DIGITO'
      EditMask = '99;0;_'
      Size = 50
    end
    object SQL_EmpresaBANCO_CONTA_02_DIGITO: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'BANCO_CONTA_02_DIGITO'
      Origin = 'BANCO_CONTA_02_DIGITO'
      EditMask = '9;0;_'
      Size = 50
    end
    object SQL_EmpresaBANCO_AGENCIA_02: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'BANCO_AGENCIA_02'
      Origin = 'BANCO_AGENCIA_02'
      EditMask = '9999;0;_'
      Size = 50
    end
    object SQL_EmpresaBANCO_CONTA_02: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'BANCO_CONTA_02'
      Origin = 'BANCO_CONTA_02'
      EditMask = '9999999;0;_'
      Size = 50
    end
    object SQL_EmpresaBANCO_03: TIntegerField
      AutoGenerateValue = arDefault
      FieldName = 'BANCO_03'
      Origin = 'BANCO_03'
    end
    object SQL_EmpresaBANCO_AGENCIA_03: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'BANCO_AGENCIA_03'
      Origin = 'BANCO_AGENCIA_03'
      EditMask = '9999;0;_'
      Size = 50
    end
    object SQL_EmpresaBANCO_CONTA_03: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'BANCO_CONTA_03'
      Origin = 'BANCO_CONTA_03'
      EditMask = '9999999;0;_'
      Size = 50
    end
    object SQL_EmpresaBANCO_GERENTE_01: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'BANCO_GERENTE_01'
      Origin = 'BANCO_GERENTE_01'
      Size = 50
    end
    object SQL_EmpresaBANCO_TELEFONE_01: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'BANCO_TELEFONE_01'
      Origin = 'BANCO_TELEFONE_01'
      EditMask = '!\(99\) 9999-9999;0;_'
      Size = 50
    end
    object SQL_EmpresaBANCO_GERENTE_02: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'BANCO_GERENTE_02'
      Origin = 'BANCO_GERENTE_02'
      Size = 50
    end
    object SQL_EmpresaBANCO_TELEFONE_02: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'BANCO_TELEFONE_02'
      Origin = 'BANCO_TELEFONE_02'
      EditMask = '!\(99\) 9999-9999;0;_'
      Size = 50
    end
    object SQL_EmpresaBANCO_RAMAL_02: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'BANCO_RAMAL_02'
      Origin = 'BANCO_RAMAL_02'
      Size = 50
    end
    object SQL_EmpresaBANCO_RAMAL_01: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'BANCO_RAMAL_01'
      Origin = 'BANCO_RAMAL_01'
      Size = 50
    end
    object SQL_EmpresaSOCIO_01: TIntegerField
      AutoGenerateValue = arDefault
      FieldName = 'SOCIO_01'
      Origin = 'SOCIO_01'
    end
    object SQL_EmpresaSOCIO_02: TIntegerField
      AutoGenerateValue = arDefault
      FieldName = 'SOCIO_02'
      Origin = 'SOCIO_02'
    end
    object SQL_EmpresaRODAPE: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'RODAPE'
      Origin = 'RODAPE'
      Size = 500
    end
    object SQL_EmpresaSELECAO_EMPRESA: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'SELECAO_EMPRESA'
      Origin = 'SELECAO_EMPRESA'
      Size = 50
    end
    object SQL_EmpresaCODIGO_IDENTIFICACAO: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'CODIGO_IDENTIFICACAO'
      Origin = 'CODIGO_IDENTIFICACAO'
      Size = 50
    end
    object SQL_EmpresaCHAVE_ATIVACAO: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'CHAVE_ATIVACAO'
      Origin = 'CHAVE_ATIVACAO'
      Size = 50
    end
    object SQL_EmpresaCODIGO_PAIS: TIntegerField
      AutoGenerateValue = arDefault
      FieldName = 'CODIGO_PAIS'
      Origin = 'CODIGO_PAIS'
    end
    object SQL_EmpresaORGANIZACAO_CONTABIL_CODPAIS: TIntegerField
      AutoGenerateValue = arDefault
      FieldName = 'ORGANIZACAO_CONTABIL_CODPAIS'
      Origin = 'ORGANIZACAO_CONTABIL_CODPAIS'
    end
    object SQL_EmpresaORGANIZACAO_CONTABIL_CPF: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'ORGANIZACAO_CONTABIL_CPF'
      Origin = 'ORGANIZACAO_CONTABIL_CPF'
      EditMask = '999\.999\.999\-99;0;_'
      Size = 50
    end
    object SQL_EmpresaDIA_VENCIMENTO: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'DIA_VENCIMENTO'
      Origin = 'DIA_VENCIMENTO'
      Size = 2
    end
    object SQL_EmpresaARQUIVOS_FISCAIS_EMAIL_01: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'ARQUIVOS_FISCAIS_EMAIL_01'
      Origin = 'ARQUIVOS_FISCAIS_EMAIL_01'
      Size = 50
    end
    object SQL_EmpresaARQUIVOS_FISCAIS_EMAIL_02: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'ARQUIVOS_FISCAIS_EMAIL_02'
      Origin = 'ARQUIVOS_FISCAIS_EMAIL_02'
      Size = 50
    end
    object SQL_EmpresaINICIO_ATIVIDADE: TDateField
      AutoGenerateValue = arDefault
      FieldName = 'INICIO_ATIVIDADE'
      Origin = 'INICIO_ATIVIDADE'
      EditMask = '!99/99/0000;1;_'
    end
    object SQL_EmpresaAPURACAO_IPI: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'APURACAO_IPI'
      Origin = 'APURACAO_IPI'
      FixedChar = True
      Size = 9
    end
    object SQL_EmpresaEMPRESA_TELEFONE_02: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'EMPRESA_TELEFONE_02'
      Origin = 'EMPRESA_TELEFONE_02'
      EditMask = '!\(99\) 9999-9999;0;_'
    end
    object SQL_EmpresaORGANIZACAO_CONTABIL_NOME: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'ORGANIZACAO_CONTABIL_NOME'
      Origin = 'ORGANIZACAO_CONTABIL_NOME'
      Size = 50
    end
    object SQL_EmpresaCOD_UF: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'COD_UF'
      Origin = 'COD_UF'
      Size = 2
    end
    object SQL_EmpresaTRIBUTACAO_PIS_COFINS: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'TRIBUTACAO_PIS_COFINS'
      Origin = 'TRIBUTACAO_PIS_COFINS'
      FixedChar = True
      Size = 14
    end
    object SQL_EmpresaLOGOTIPO: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'LOGOTIPO'
      Origin = 'LOGOTIPO'
      Size = 50
    end
    object SQL_EmpresaNOME_CONTATO_AD: TMemoField
      AutoGenerateValue = arDefault
      FieldName = 'NOME_CONTATO_AD'
      Origin = 'NOME_CONTATO_AD'
      BlobType = ftMemo
    end
  end
  object DS_PARAMETROS_VENDA: TDataSource
    DataSet = SQL_PARAMETROS_VENDA
    Left = 1304
    Top = 245
  end
  object SQL_PARAMETROS_VENDA: TFDQuery
    Connection = Module.connection
    SQL.Strings = (
      'select * from parametros_venda')
    Left = 1216
    Top = 344
    object SQL_PARAMETROS_VENDAIMPRIMIR_COMPROVANTE: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'IMPRIMIR_COMPROVANTE'
      Origin = 'IMPRIMIR_COMPROVANTE'
      FixedChar = True
      Size = 1
    end
    object SQL_PARAMETROS_VENDAVENDA_SEM_ESTOQUE: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'VENDA_SEM_ESTOQUE'
      Origin = 'VENDA_SEM_ESTOQUE'
      FixedChar = True
      Size = 1
    end
    object SQL_PARAMETROS_VENDAHABILITAR_FIADO: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'HABILITAR_FIADO'
      Origin = 'HABILITAR_FIADO'
      FixedChar = True
      Size = 1
    end
    object SQL_PARAMETROS_VENDAFIADO_COMPROVANTE: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'FIADO_COMPROVANTE'
      Origin = 'FIADO_COMPROVANTE'
      FixedChar = True
      Size = 1
    end
    object SQL_PARAMETROS_VENDAESTOQUE_PDV: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'ESTOQUE_PDV'
      Origin = 'ESTOQUE_PDV'
      FixedChar = True
      Size = 1
    end
    object SQL_PARAMETROS_VENDAABRIR_GAVETA: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'ABRIR_GAVETA'
      Origin = 'ABRIR_GAVETA'
      FixedChar = True
      Size = 1
    end
    object SQL_PARAMETROS_VENDAALTERA_PRECO_PDV: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'ALTERA_PRECO_PDV'
      Origin = 'ALTERA_PRECO_PDV'
      FixedChar = True
      Size = 1
    end
    object SQL_PARAMETROS_VENDAVIAS_COMPROVANTE: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'VIAS_COMPROVANTE'
      Origin = 'VIAS_COMPROVANTE'
      FixedChar = True
      Size = 1
    end
    object SQL_PARAMETROS_VENDAUSA_PAG_PADRAO: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'USA_PAG_PADRAO'
      Origin = 'USA_PAG_PADRAO'
      FixedChar = True
      Size = 1
    end
    object SQL_PARAMETROS_VENDAPAG_PADRAO: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'PAG_PADRAO'
      Origin = 'PAG_PADRAO'
      FixedChar = True
      Size = 3
    end
    object SQL_PARAMETROS_VENDAPAG_LISTA: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'PAG_LISTA'
      Origin = 'PAG_LISTA'
      FixedChar = True
      Size = 1
    end
    object SQL_PARAMETROS_VENDAPAG_CODIGO: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'PAG_CODIGO'
      Origin = 'PAG_CODIGO'
      FixedChar = True
      Size = 1
    end
    object SQL_PARAMETROS_VENDATIPO_ETIQUETA: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'TIPO_ETIQUETA'
      Origin = 'TIPO_ETIQUETA'
      FixedChar = True
      Size = 5
    end
    object SQL_PARAMETROS_VENDACOD_PRODUTO_BALANCA: TShortintField
      AutoGenerateValue = arDefault
      FieldName = 'COD_PRODUTO_BALANCA'
      Origin = 'COD_PRODUTO_BALANCA'
    end
    object SQL_PARAMETROS_VENDACONSULTA_REF_FABRICANTE: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'CONSULTA_REF_FABRICANTE'
      Origin = 'CONSULTA_REF_FABRICANTE'
      FixedChar = True
      Size = 1
    end
    object SQL_PARAMETROS_VENDAINFORMA_VENDEDOR: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'INFORMA_VENDEDOR'
      Origin = 'INFORMA_VENDEDOR'
      FixedChar = True
      Size = 1
    end
    object SQL_PARAMETROS_VENDADESCONTO_MAX_PRODUTO: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'DESCONTO_MAX_PRODUTO'
      Origin = 'DESCONTO_MAX_PRODUTO'
      FixedChar = True
      Size = 1
    end
    object SQL_PARAMETROS_VENDAPRECO_PROMOCIONAL: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'PRECO_PROMOCIONAL'
      Origin = 'PRECO_PROMOCIONAL'
      FixedChar = True
      Size = 1
    end
    object SQL_PARAMETROS_VENDAusa_convenio: TBooleanField
      AutoGenerateValue = arDefault
      FieldName = 'usa_convenio'
      Origin = 'usa_convenio'
    end
    object SQL_PARAMETROS_VENDAIMPRESSORA_COMPROVANTE: TMemoField
      AutoGenerateValue = arDefault
      FieldName = 'IMPRESSORA_COMPROVANTE'
      Origin = 'IMPRESSORA_COMPROVANTE'
      BlobType = ftMemo
    end
    object SQL_PARAMETROS_VENDAusa_comanda: TBooleanField
      AutoGenerateValue = arDefault
      FieldName = 'usa_comanda'
      Origin = 'usa_comanda'
    end
    object SQL_PARAMETROS_VENDAseparar_produtos_comanda: TBooleanField
      AutoGenerateValue = arDefault
      FieldName = 'separar_produtos_comanda'
      Origin = 'separar_produtos_comanda'
    end
  end
  object DS_PARAMETROS_SISTEMA: TDataSource
    DataSet = SQL_PARAMETROS_SISTEMA
    Left = 1288
    Top = 352
  end
  object SQL_PAGAMENTOS: TFDQuery
    Connection = Module.connection
    SQL.Strings = (
      'select COD_TIPO_PAGAMENTO, TIPO_PAGAMENTO from tipo_pagamento')
    Left = 1144
    Top = 288
    object SQL_PAGAMENTOSCOD_TIPO_PAGAMENTO: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'COD_TIPO_PAGAMENTO'
      Origin = 'COD_TIPO_PAGAMENTO'
      Size = 10
    end
    object SQL_PAGAMENTOSTIPO_PAGAMENTO: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'TIPO_PAGAMENTO'
      Origin = 'TIPO_PAGAMENTO'
      Size = 50
    end
  end
  object DS_PAGAMENTOS: TDataSource
    DataSet = SQL_PAGAMENTOS
    Left = 1136
    Top = 350
  end
end
