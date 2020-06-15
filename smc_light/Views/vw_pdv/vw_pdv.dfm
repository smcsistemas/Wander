object frm_pdv: Tfrm_pdv
  Left = 0
  Top = 0
  BorderIcons = []
  BorderStyle = bsNone
  ClientHeight = 649
  ClientWidth = 1082
  Color = clWhite
  DefaultMonitor = dmMainForm
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -19
  Font.Name = 'Segoe UI Light'
  Font.Style = []
  KeyPreview = True
  OldCreateOrder = False
  Position = poDesigned
  WindowState = wsMaximized
  OnClose = FormClose
  OnCreate = FormCreate
  OnKeyDown = FormKeyDown
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 25
  object pnproduto: TPanel
    Left = 20
    Top = 272
    Width = 1045
    Height = 165
    BiDiMode = bdLeftToRight
    Color = 16448250
    Ctl3D = False
    ParentBiDiMode = False
    ParentBackground = False
    ParentCtl3D = False
    TabOrder = 2
    object Label11: TLabel
      Left = 433
      Top = 108
      Width = 27
      Height = 46
      Caption = 'X'
      Color = clYellow
      Font.Charset = ANSI_CHARSET
      Font.Color = clBlack
      Font.Height = -40
      Font.Name = 'HelveticaNeue'
      Font.Style = [fsBold]
      ParentColor = False
      ParentFont = False
    end
    object grpDescProduto: TGroupBox
      Left = 3
      Top = 4
      Width = 938
      Height = 66
      Color = 16707806
      Ctl3D = False
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clBlack
      Font.Height = -19
      Font.Name = 'Segoe UI Light'
      Font.Style = []
      ParentBackground = False
      ParentColor = False
      ParentCtl3D = False
      ParentFont = False
      TabOrder = 0
      object Label1: TLabel
        Left = 3
        Top = 13
        Width = 536
        Height = 47
        Caption = 'DESCRI'#199#195'O DO PRODUTO'
        Color = 16091986
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Height = -41
        Font.Name = 'HelveticaNeue'
        Font.Style = [fsBold]
        ParentColor = False
        ParentFont = False
      end
    end
    object grpEstoque: TGroupBox
      Left = 942
      Top = 4
      Width = 99
      Height = 66
      Color = 16707806
      Ctl3D = False
      ParentBackground = False
      ParentColor = False
      ParentCtl3D = False
      TabOrder = 1
      object Label12: TLabel
        Left = 2
        Top = 2
        Width = 89
        Height = 27
        Alignment = taCenter
        Caption = 'Estoque'
        Color = 16091986
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Height = -24
        Font.Name = 'HelveticaNeue'
        Font.Style = []
        ParentColor = False
        ParentFont = False
      end
      object lbl_estoque: TLabel
        AlignWithMargins = True
        Left = 3
        Top = 35
        Width = 95
        Height = 32
        Alignment = taCenter
        AutoSize = False
        BiDiMode = bdLeftToRight
        Caption = '0'
        Color = 16360610
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Height = -23
        Font.Name = 'HelveticaNeue'
        Font.Style = [fsBold]
        ParentBiDiMode = False
        ParentColor = False
        ParentFont = False
      end
    end
    object grpqtde: TGroupBox
      Left = 501
      Top = 78
      Width = 151
      Height = 81
      Color = 16707806
      Ctl3D = False
      ParentBackground = False
      ParentColor = False
      ParentCtl3D = False
      TabOrder = 3
      DesignSize = (
        151
        81)
      object Label8: TLabel
        AlignWithMargins = True
        Left = 2
        Top = 8
        Width = 147
        Height = 20
        Alignment = taCenter
        Anchors = [akLeft, akTop, akRight, akBottom]
        AutoSize = False
        Caption = 'QUANTIDADE'
        Color = 16091986
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Height = -19
        Font.Name = 'HelveticaNeue'
        Font.Style = [fsBold]
        ParentColor = False
        ParentFont = False
      end
      object lbl_UnidadeMedida: TLabel
        Left = 113
        Top = 41
        Width = 28
        Height = 24
        Caption = 'UN'
        Color = clYellow
        Font.Charset = ANSI_CHARSET
        Font.Color = clRed
        Font.Height = -21
        Font.Name = 'HelveticaNeue'
        Font.Style = [fsBold]
        ParentColor = False
        ParentFont = False
      end
      object Edit2: TEdit
        Left = 10
        Top = 34
        Width = 94
        Height = 35
        Alignment = taCenter
        BorderStyle = bsNone
        Color = clBlack
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clYellow
        Font.Height = -28
        Font.Name = 'Tahoma'
        Font.Style = [fsBold]
        MaxLength = 6
        NumbersOnly = True
        ParentFont = False
        TabOrder = 0
        Text = '1'
        OnEnter = Edit2Enter
        OnExit = Edit2Exit
        OnKeyDown = Edit2KeyDown
        OnKeyPress = Edit2KeyPress
      end
    end
    object grpcodprod: TGroupBox
      Left = 3
      Top = 78
      Width = 389
      Height = 81
      Color = 16707806
      Ctl3D = False
      ParentBackground = False
      ParentColor = False
      ParentCtl3D = False
      TabOrder = 2
      object Label4: TLabel
        Left = 3
        Top = 7
        Width = 387
        Height = 21
        Align = alCustom
        Alignment = taCenter
        AutoSize = False
        Caption = 'C'#211'D. / C'#211'D. BARRAS / DESCRI'#199#195'O'
        Color = 16091986
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Height = -17
        Font.Name = 'HelveticaNeue'
        Font.Style = [fsBold]
        ParentColor = False
        ParentFont = False
      end
      object Edt_codBarras: TEdit
        Left = 5
        Top = 34
        Width = 369
        Height = 35
        Hint = 
          'F1 - Consultar Pre'#231'o'#13#10'F2 - Informar Cliente'#13#10'F3 - Remover Item'#13#10 +
          'F4 - Fechar Venda'#13#10'F5 - Cancelar Venda'#13#10'F6 - Alterar Pre'#231'o'#13#10'F7 -' +
          ' Alterar Quantidade'#13#10'F8 - Descontos Acr'#233'scimos'#13#10'F9 - Lan'#231'amentos' +
          ' Caixa'#13#10'F10 - Informar Vendedor'#13#10'F11 - Fechar Caixa'#13#10'F12 - Venda' +
          ' Auxiliar'
        TabStop = False
        BevelEdges = []
        BevelOuter = bvNone
        BiDiMode = bdLeftToRight
        BorderStyle = bsNone
        CharCase = ecUpperCase
        Color = clBlack
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clYellow
        Font.Height = -25
        Font.Name = 'Tahoma'
        Font.Style = [fsBold]
        MaxLength = 100
        ParentBiDiMode = False
        ParentFont = False
        ParentShowHint = False
        ShowHint = True
        TabOrder = 0
        TextHint = 'Buscar Produto ...'
        OnKeyDown = Edt_codBarrasKeyDown
      end
    end
    object grpsubtot: TGroupBox
      Left = 720
      Top = 78
      Width = 321
      Height = 81
      BiDiMode = bdLeftToRight
      Color = 16707806
      Ctl3D = False
      ParentBackground = False
      ParentBiDiMode = False
      ParentColor = False
      ParentCtl3D = False
      TabOrder = 4
      object lbl_subtotal: TLabel
        Left = 111
        Top = 23
        Width = 208
        Height = 55
        Alignment = taRightJustify
        BiDiMode = bdLeftToRight
        Caption = '         0,00'
        Color = 16091986
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Height = -47
        Font.Name = 'HelveticaNeue'
        Font.Style = [fsBold]
        ParentBiDiMode = False
        ParentColor = False
        ParentFont = False
      end
      object Label18: TLabel
        Left = 3
        Top = 4
        Width = 105
        Height = 22
        Caption = 'SUBTOTAL'
        Color = clWhite
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlue
        Font.Height = -19
        Font.Name = 'HelveticaNeue'
        Font.Style = [fsBold]
        ParentColor = False
        ParentFont = False
      end
      object Label3: TLabel
        Left = 3
        Top = 23
        Width = 60
        Height = 55
        Caption = 'R$'
        Color = 16091986
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Height = -47
        Font.Name = 'HelveticaNeue'
        Font.Style = [fsBold]
        ParentColor = False
        ParentFont = False
      end
    end
  end
  object pninfo: TPanel
    Left = 20
    Top = 618
    Width = 1045
    Height = 22
    BiDiMode = bdLeftToRight
    Color = 16448250
    ParentBiDiMode = False
    ParentBackground = False
    TabOrder = 7
    object Label24: TLabel
      Left = 3
      Top = -1
      Width = 141
      Height = 18
      Caption = 'Status de Conex'#227'o:'
      Color = 12351299
      Font.Charset = ANSI_CHARSET
      Font.Color = clGrayText
      Font.Height = -13
      Font.Name = 'Arial Black'
      Font.Style = [fsBold]
      ParentColor = False
      ParentFont = False
    end
    object Shape1: TShape
      Left = 145
      Top = -1
      Width = 23
      Height = 18
      Brush.Color = clGreen
      Pen.Color = clWindow
      Shape = stCircle
    end
    object Label25: TLabel
      AlignWithMargins = True
      Left = 227
      Top = -1
      Width = 103
      Height = 18
      Caption = 'Tipo Emiss'#227'o: '
      Color = 12351299
      Font.Charset = ANSI_CHARSET
      Font.Color = clGrayText
      Font.Height = -13
      Font.Name = 'Arial Black'
      Font.Style = [fsBold]
      ParentColor = False
      ParentFont = False
    end
    object lbl_tipoemissao: TLabel
      AlignWithMargins = True
      Left = 331
      Top = -1
      Width = 62
      Height = 18
      Caption = 'TPEMISS'
      Color = 12351299
      Font.Charset = ANSI_CHARSET
      Font.Color = clGrayText
      Font.Height = -13
      Font.Name = 'Arial Black'
      Font.Style = [fsBold]
      ParentColor = False
      ParentFont = False
    end
    object data: TLabel
      AlignWithMargins = True
      Left = 961
      Top = -1
      Width = 80
      Height = 18
      Caption = '00/00/0000'
      Color = 12351299
      Font.Charset = ANSI_CHARSET
      Font.Color = clGrayText
      Font.Height = -13
      Font.Name = 'Arial Black'
      Font.Style = [fsBold]
      ParentColor = False
      ParentFont = False
    end
    object hora: TLabel
      AlignWithMargins = True
      Left = 914
      Top = -1
      Width = 40
      Height = 18
      Caption = '00:00'
      Color = 12351299
      Font.Charset = ANSI_CHARSET
      Font.Color = clGrayText
      Font.Height = -13
      Font.Name = 'Arial Black'
      Font.Style = [fsBold]
      ParentColor = False
      ParentFont = False
    end
  end
  object gridItens: TDBGrid
    Left = 20
    Top = 49
    Width = 1045
    Height = 217
    Align = alCustom
    BiDiMode = bdLeftToRight
    Color = clBtnFace
    DataSource = DS_Consulta_Itens
    GradientEndColor = clWhite
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -16
    Font.Name = 'Tahoma'
    Font.Style = []
    Options = [dgEditing, dgTitles, dgIndicator, dgColLines, dgRowLines, dgTitleClick]
    ParentBiDiMode = False
    ParentFont = False
    ReadOnly = True
    TabOrder = 1
    TitleFont.Charset = DEFAULT_CHARSET
    TitleFont.Color = clWindowText
    TitleFont.Height = -11
    TitleFont.Name = 'Tahoma'
    TitleFont.Style = []
    OnDrawColumnCell = gridItensDrawColumnCell
    Columns = <
      item
        Alignment = taCenter
        Expanded = False
        FieldName = 'CODIGO_ITEM_VENDA'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -16
        Font.Name = 'Tahoma'
        Font.Style = [fsBold]
        Title.Alignment = taCenter
        Title.Caption = 'Item'
        Title.Color = clBlack
        Title.Font.Charset = DEFAULT_CHARSET
        Title.Font.Color = clWindowText
        Title.Font.Height = -16
        Title.Font.Name = 'Tahoma'
        Title.Font.Style = [fsBold]
        Width = 52
        Visible = True
      end
      item
        Alignment = taCenter
        Expanded = False
        FieldName = 'CODIGO_PRODUTO'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -16
        Font.Name = 'Tahoma'
        Font.Style = [fsBold]
        Title.Alignment = taCenter
        Title.Caption = 'C'#243'd'
        Title.Color = clBlack
        Title.Font.Charset = DEFAULT_CHARSET
        Title.Font.Color = clWindowText
        Title.Font.Height = -16
        Title.Font.Name = 'Tahoma'
        Title.Font.Style = [fsBold]
        Width = 62
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'DESCRICAO'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -16
        Font.Name = 'Tahoma'
        Font.Style = [fsBold]
        Title.Caption = 'Descri'#231#227'o'
        Title.Color = clBlack
        Title.Font.Charset = DEFAULT_CHARSET
        Title.Font.Color = clWindowText
        Title.Font.Height = -16
        Title.Font.Name = 'Tahoma'
        Title.Font.Style = [fsBold]
        Width = 289
        Visible = True
      end
      item
        Alignment = taCenter
        Expanded = False
        FieldName = 'UNIDADE'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -16
        Font.Name = 'Tahoma'
        Font.Style = [fsBold]
        Title.Alignment = taCenter
        Title.Caption = 'UN'
        Title.Color = clBlack
        Title.Font.Charset = DEFAULT_CHARSET
        Title.Font.Color = clWindowText
        Title.Font.Height = -16
        Title.Font.Name = 'Tahoma'
        Title.Font.Style = [fsBold]
        Width = 37
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'QUANTIDADE'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -16
        Font.Name = 'Tahoma'
        Font.Style = [fsBold]
        Title.Alignment = taCenter
        Title.Caption = 'QTD'
        Title.Color = clBlack
        Title.Font.Charset = DEFAULT_CHARSET
        Title.Font.Color = clWindowText
        Title.Font.Height = -16
        Title.Font.Name = 'Tahoma'
        Title.Font.Style = [fsBold]
        Width = 62
        Visible = True
      end
      item
        Alignment = taCenter
        Expanded = False
        FieldName = 'PRECO'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -16
        Font.Name = 'Tahoma'
        Font.Style = [fsBold]
        Title.Alignment = taCenter
        Title.Caption = 'Pre'#231'o'
        Title.Color = clBlack
        Title.Font.Charset = DEFAULT_CHARSET
        Title.Font.Color = clWindowText
        Title.Font.Height = -16
        Title.Font.Name = 'Tahoma'
        Title.Font.Style = [fsBold]
        Width = 126
        Visible = True
      end
      item
        Alignment = taCenter
        Expanded = False
        FieldName = 'DESCONTO'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -16
        Font.Name = 'Tahoma'
        Font.Style = [fsBold]
        Title.Alignment = taCenter
        Title.Caption = 'Desconto'
        Title.Color = clBlack
        Title.Font.Charset = DEFAULT_CHARSET
        Title.Font.Color = clWindowText
        Title.Font.Height = -16
        Title.Font.Name = 'Tahoma'
        Title.Font.Style = [fsBold]
        Width = 133
        Visible = True
      end
      item
        Alignment = taCenter
        Expanded = False
        FieldName = 'ACRESCIMO'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -16
        Font.Name = 'Tahoma'
        Font.Style = [fsBold]
        Title.Alignment = taCenter
        Title.Caption = 'Acr'#233'scimo'
        Title.Color = clBlack
        Title.Font.Charset = DEFAULT_CHARSET
        Title.Font.Color = clWindowText
        Title.Font.Height = -16
        Title.Font.Name = 'Tahoma'
        Title.Font.Style = [fsBold]
        Width = 134
        Visible = True
      end
      item
        Alignment = taCenter
        Expanded = False
        FieldName = 'PRECO_TOTAL'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -16
        Font.Name = 'Tahoma'
        Font.Style = [fsBold]
        Title.Alignment = taCenter
        Title.Caption = 'Total'
        Title.Color = clBlack
        Title.Font.Charset = DEFAULT_CHARSET
        Title.Font.Color = clWindowText
        Title.Font.Height = -16
        Title.Font.Name = 'Tahoma'
        Title.Font.Style = [fsBold]
        Width = 126
        Visible = True
      end>
  end
  object pninfovenda: TPanel
    Left = 20
    Top = 588
    Width = 1045
    Height = 22
    Color = 16448250
    ParentBackground = False
    TabOrder = 6
    object lbl_c_cliente: TLabel
      Left = 504
      Top = 3
      Width = 42
      Height = 15
      Caption = 'Cliente:'
      Color = 12351299
      Font.Charset = ANSI_CHARSET
      Font.Color = clCaptionText
      Font.Height = -12
      Font.Name = 'HelveticaNeue'
      Font.Style = [fsBold]
      ParentColor = False
      ParentFont = False
    end
    object lbl_cliente: TLabel
      Left = 549
      Top = 3
      Width = 49
      Height = 14
      Caption = 'CLIENTE'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -12
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object lbl_c_cnpj: TLabel
      Left = 845
      Top = 3
      Width = 59
      Height = 15
      Caption = 'CNPJ|CPF:'
      Color = 12351299
      Font.Charset = ANSI_CHARSET
      Font.Color = clCaptionText
      Font.Height = -12
      Font.Name = 'HelveticaNeue'
      Font.Style = [fsBold]
      ParentColor = False
      ParentFont = False
    end
    object lbl_cnpj: TLabel
      Left = 909
      Top = 3
      Width = 132
      Height = 14
      Caption = '99.999.999/9990-99'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -12
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object lbl_c_tel: TLabel
      Left = 669
      Top = 3
      Width = 51
      Height = 15
      Caption = 'Telefone:'
      Color = 12351299
      Font.Charset = ANSI_CHARSET
      Font.Color = clCaptionText
      Font.Height = -12
      Font.Name = 'HelveticaNeue'
      Font.Style = [fsBold]
      ParentColor = False
      ParentFont = False
    end
    object lbl_tel: TLabel
      Left = 721
      Top = 3
      Width = 107
      Height = 14
      Caption = '(99) 99999-9999'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -12
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object lbl_c_cod_venda: TLabel
      Left = 80
      Top = 3
      Width = 53
      Height = 15
      Caption = 'N'#186' Venda:'
      Color = 12351299
      Font.Charset = ANSI_CHARSET
      Font.Color = clCaptionText
      Font.Height = -12
      Font.Name = 'HelveticaNeue'
      Font.Style = [fsBold]
      ParentColor = False
      ParentFont = False
    end
    object lbl_cod_venda: TLabel
      Left = 134
      Top = 3
      Width = 32
      Height = 14
      Caption = '1058'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -12
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object lbl_c_operador: TLabel
      Left = 174
      Top = 3
      Width = 57
      Height = 15
      Caption = 'Operador:'
      Color = 12351299
      Font.Charset = ANSI_CHARSET
      Font.Color = clCaptionText
      Font.Height = -12
      Font.Name = 'HelveticaNeue'
      Font.Style = [fsBold]
      ParentColor = False
      ParentFont = False
    end
    object lbl_operador: TLabel
      Left = 232
      Top = 3
      Width = 56
      Height = 14
      Caption = 'LOJAABC'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -12
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object lbl_c_caixa: TLabel
      Left = 11
      Top = 3
      Width = 35
      Height = 15
      Caption = 'Caixa:'
      Color = 12351299
      Font.Charset = ANSI_CHARSET
      Font.Color = clCaptionText
      Font.Height = -12
      Font.Name = 'HelveticaNeue'
      Font.Style = [fsBold]
      ParentColor = False
      ParentFont = False
    end
    object lbl_caixa: TLabel
      Left = 46
      Top = 3
      Width = 16
      Height = 14
      Caption = '35'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -12
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object lbl_c_vendedor: TLabel
      Left = 296
      Top = 3
      Width = 57
      Height = 15
      Caption = 'Vendedor:'
      Color = 12351299
      Font.Charset = ANSI_CHARSET
      Font.Color = clCaptionText
      Font.Height = -12
      Font.Name = 'HelveticaNeue'
      Font.Style = [fsBold]
      ParentColor = False
      ParentFont = False
    end
    object lbl_vendedor: TLabel
      Left = 355
      Top = 3
      Width = 66
      Height = 14
      Caption = 'VENDEDOR'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -12
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      ParentFont = False
    end
  end
  object lnup: TPanel
    Left = 0
    Top = 440
    Width = 1090
    Height = 5
    Align = alCustom
    Color = 11579568
    ParentBackground = False
    TabOrder = 3
  end
  object lndown: TPanel
    Left = 0
    Top = 576
    Width = 1089
    Height = 5
    Align = alCustom
    Color = 11579568
    ParentBackground = False
    TabOrder = 5
  end
  object pncabecalho: TPanel
    Left = 20
    Top = 10
    Width = 1045
    Height = 34
    Color = 16448250
    ParentBackground = False
    TabOrder = 0
    object lblstatuscaixa: TLabel
      Left = 1
      Top = -1
      Width = 305
      Height = 38
      Align = alCustom
      Alignment = taCenter
      Caption = 'CAIXA DISPON'#205'VEL'
      Color = clCaptionText
      Font.Charset = ANSI_CHARSET
      Font.Color = clGreen
      Font.Height = -33
      Font.Name = 'Arial'
      Font.Style = [fsBold]
      ParentColor = False
      ParentFont = False
    end
    object Label2: TLabel
      Left = 3
      Top = 17
      Width = 119
      Height = 18
      Caption = 'ITENS DA VENDA'
      Color = 12351299
      Font.Charset = ANSI_CHARSET
      Font.Color = clHotLight
      Font.Height = -13
      Font.Name = 'Arial Black'
      Font.Style = [fsBold]
      ParentColor = False
      ParentFont = False
    end
    object lbl_venda_aux: TLabel
      Left = 734
      Top = -1
      Width = 273
      Height = 38
      Alignment = taCenter
      Caption = 'VENDA AUXILIAR'
      Color = clCaptionText
      Font.Charset = ANSI_CHARSET
      Font.Color = clRed
      Font.Height = -33
      Font.Name = 'Arial'
      Font.Style = [fsBold]
      ParentColor = False
      ParentFont = False
    end
    object lblComanda: TLabel
      Left = 1
      Top = -1
      Width = 233
      Height = 38
      Align = alCustom
      Alignment = taCenter
      Caption = 'COMANDA N'#186': '
      Color = clCaptionText
      Font.Charset = ANSI_CHARSET
      Font.Color = clNavy
      Font.Height = -33
      Font.Name = 'Arial'
      Font.Style = [fsBold]
      ParentColor = False
      ParentFont = False
    end
    object shpComanda: TShape
      Left = 225
      Top = 30
      Width = 128
      Height = 2
      Pen.Color = 6447714
    end
    object BtnSair: TcxButton
      Left = 1013
      Top = 3
      Width = 28
      Height = 27
      LookAndFeel.NativeStyle = False
      LookAndFeel.SkinName = 'Office2013White'
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
        0000000000004463D8FF4463D8FF4463D8FF4463D8FF4463D8FF4463D8FF4463
        D8FF4463D8FF4463D8FF4463D8FF4463D8FF4463D8FF4463D8FF4463D8FF4463
        D8FF4463D8FF4463D8FF4463D8FF4463D8FF4463D8FF4463D8FF4463D8FF4463
        D8FF4463D8FF4463D8FF4463D8FF000000000000000000000000000000000000
        0000000000004463D8FF4463D8FF4463D8FF4463D8FF4463D8FF4463D8FF4463
        D8FF4463D8FF4463D8FF4463D8FF4463D8FF4463D8FF4463D8FF4463D8FF4463
        D8FF4463D8FF4463D8FF4463D8FF4463D8FF4463D8FF4463D8FF4463D8FF4463
        D8FF4463D8FF4463D8FF4463D8FF000000000000000000000000000000000000
        0000000000004463D8FF4463D8FF4463D8FF4463D8FF4463D8FF4463D8FF4463
        D8FF4463D8FF4463D8FF4463D8FF4463D8FF4463D8FF4463D8FF4463D8FF4463
        D8FF4463D8FF4463D8FF4463D8FF4463D8FF4463D8FF4463D8FF4463D8FF4463
        D8FF4463D8FF4463D8FF4463D8FF000000000000000000000000000000000000
        0000000000004463D8FF4463D8FF4463D8FF4463D8FF4463D8FF4463D8FF4463
        D8FF4463D8FF4463D8FF4463D8FF4463D8FF4463D8FF4463D8FF4463D8FF4463
        D8FF4463D8FF4463D8FF4463D8FF4463D8FF4463D8FF4463D8FF4463D8FF4463
        D8FF4463D8FF4463D8FF4463D8FF000000000000000000000000000000000000
        0000000000004463D8FF4463D8FF4463D8FF4463D8FF4463D8FF4463D8FF4463
        D8FF4463D8FF4463D8FF4463D8FF4463D8FF4463D8FF4463D8FF4463D8FF4463
        D8FF4463D8FF4463D8FF4463D8FF4463D8FF4463D8FF4463D8FF4463D8FF4463
        D8FF4463D8FF4463D8FF4463D8FF000000000000000000000000000000000000
        0000000000004463D8FF4463D8FF4463D8FF4463D8FF4463D8FF4463D8FF4463
        D8FF4463D8FF4362D6FD4463D8FF4463D8FF4463D8FF4463D8FF4463D8FF4463
        D8FF4463D8FF4463D8FF4362D6FD4463D8FF4463D8FF4463D8FF4463D8FF4463
        D8FF4463D8FF4463D8FF4463D8FF000000000000000000000000000000000000
        0000000000004463D8FF4463D8FF4463D8FF4463D8FF4463D8FF4463D8FF4463
        D8FF3F5CC9ED0F152F372F4596B14463D8FF4463D8FF4463D8FF4463D8FF4463
        D8FF4463D8FF2E4393AD0F152F373F5CC8EC4463D8FF4463D8FF4463D8FF4463
        D8FF4463D8FF4463D8FF4463D8FF000000000000000000000000000000000000
        0000000000004463D8FF4463D8FF4463D8FF4463D8FF4463D8FF4463D8FF3F5C
        C9ED0D132A3200000000020205062F4596B14463D8FF4463D8FF4463D8FF4463
        D8FF2E4393AD02020506000000000D132A313F5CC8EC4463D8FF4463D8FF4463
        D8FF4463D8FF4463D8FF4463D8FF000000000000000000000000000000000000
        0000000000004463D8FF4463D8FF4463D8FF4463D8FF4463D8FF4463D7FE0F16
        2F38000000000000000000000000020205062F4596B14463D8FF4463D8FF2E43
        93AD020205060000000000000000000000000F152F374463D7FE4463D8FF4463
        D8FF4463D8FF4463D8FF4463D8FF000000000000000000000000000000000000
        0000000000004463D8FF4463D8FF4463D8FF4463D8FF4463D8FF4463D8FF2F45
        97B202020506000000000000000000000000020205062F4495B02E4393AD0202
        05060000000000000000000000000202050631479AB64463D8FF4463D8FF4463
        D8FF4463D8FF4463D8FF4463D8FF000000000000000000000000000000000000
        0000000000004463D8FF4463D8FF4463D8FF4463D8FF4463D8FF4463D8FF4463
        D8FF2F4597B20202050600000000000000000000000002020506020205060000
        000000000000000000000202050631479AB64463D8FF4463D8FF4463D8FF4463
        D8FF4463D8FF4463D8FF4463D8FF000000000000000000000000000000000000
        0000000000004463D8FF4463D8FF4463D8FF4463D8FF4463D8FF4463D8FF4463
        D8FF4463D8FF2F4597B202020506000000000000000000000000000000000000
        0000000000000202050631479AB64463D8FF4463D8FF4463D8FF4463D8FF4463
        D8FF4463D8FF4463D8FF4463D8FF000000000000000000000000000000000000
        0000000000004463D8FF4463D8FF4463D8FF4463D8FF4463D8FF4463D8FF4463
        D8FF4463D8FF4463D8FF2F4597B2020205060000000000000000000000000000
        00000202050631479AB64463D8FF4463D8FF4463D8FF4463D8FF4463D8FF4463
        D8FF4463D8FF4463D8FF4463D8FF000000000000000000000000000000000000
        0000000000004463D8FF4463D8FF4463D8FF4463D8FF4463D8FF4463D8FF4463
        D8FF4463D8FF4463D8FF2E4393AD020205060000000000000000000000000000
        0000020205062F4495B04463D8FF4463D8FF4463D8FF4463D8FF4463D8FF4463
        D8FF4463D8FF4463D8FF4463D8FF000000000000000000000000000000000000
        0000000000004463D8FF4463D8FF4463D8FF4463D8FF4463D8FF4463D8FF4463
        D8FF4463D8FF2E4393AD02020506000000000000000000000000000000000000
        000000000000020205062F4495B04463D8FF4463D8FF4463D8FF4463D8FF4463
        D8FF4463D8FF4463D8FF4463D8FF000000000000000000000000000000000000
        0000000000004463D8FF4463D8FF4463D8FF4463D8FF4463D8FF4463D8FF4463
        D8FF2E4393AD0202050600000000000000000000000002020506020205060000
        00000000000000000000020205062F4495B04463D8FF4463D8FF4463D8FF4463
        D8FF4463D8FF4463D8FF4463D8FF000000000000000000000000000000000000
        0000000000004463D8FF4463D8FF4463D8FF4463D8FF4463D8FF4463D8FF2E43
        93AD020205060000000000000000000000000202050631479AB62F4597B20202
        0506000000000000000000000000020205062F4495B04463D8FF4463D8FF4463
        D8FF4463D8FF4463D8FF4463D8FF000000000000000000000000000000000000
        0000000000004463D8FF4463D8FF4463D8FF4463D8FF4463D8FF4362D6FD0F17
        313A0000000000000000000000000202050631479AB64463D8FF4463D8FF2F45
        97B2020205060000000000000000000000000F17313A4463D7FE4463D8FF4463
        D8FF4463D8FF4463D8FF4463D8FF000000000000000000000000000000000000
        0000000000004463D8FF4463D8FF4463D8FF4463D8FF4463D8FF4463D8FF405D
        CBF00E152D35000000000202050631479AB64463D8FF4463D8FF4463D8FF4463
        D8FF2F4597B202020506000000000E142C34405DCAEF4463D8FF4463D8FF4463
        D8FF4463D8FF4463D8FF4463D8FF000000000000000000000000000000000000
        0000000000004463D8FF4463D8FF4463D8FF4463D8FF4463D8FF4463D8FF4463
        D8FF405DCBF01017333C31479AB64463D8FF4463D8FF4463D8FF4463D8FF4463
        D8FF4463D8FF2F4597B20F17313A405DCAEF4463D8FF4463D8FF4463D8FF4463
        D8FF4463D8FF4463D8FF4463D8FF000000000000000000000000000000000000
        0000000000004463D8FF4463D8FF4463D8FF4463D8FF4463D8FF4463D8FF4463
        D8FF4463D8FF4463D8FF4463D8FF4463D8FF4463D8FF4463D8FF4463D8FF4463
        D8FF4463D8FF4463D8FF4362D6FD4463D8FF4463D8FF4463D8FF4463D8FF4463
        D8FF4463D8FF4463D8FF4463D8FF000000000000000000000000000000000000
        0000000000004463D8FF4463D8FF4463D8FF4463D8FF4463D8FF4463D8FF4463
        D8FF4463D8FF4463D8FF4463D8FF4463D8FF4463D8FF4463D8FF4463D8FF4463
        D8FF4463D8FF4463D8FF4463D8FF4463D8FF4463D8FF4463D8FF4463D8FF4463
        D8FF4463D8FF4463D8FF4463D8FF000000000000000000000000000000000000
        0000000000004463D8FF4463D8FF4463D8FF4463D8FF4463D8FF4463D8FF4463
        D8FF4463D8FF4463D8FF4463D8FF4463D8FF4463D8FF4463D8FF4463D8FF4463
        D8FF4463D8FF4463D8FF4463D8FF4463D8FF4463D8FF4463D8FF4463D8FF4463
        D8FF4463D8FF4463D8FF4463D8FF000000000000000000000000000000000000
        0000000000004463D8FF4463D8FF4463D8FF4463D8FF4463D8FF4463D8FF4463
        D8FF4463D8FF4463D8FF4463D8FF4463D8FF4463D8FF4463D8FF4463D8FF4463
        D8FF4463D8FF4463D8FF4463D8FF4463D8FF4463D8FF4463D8FF4463D8FF4463
        D8FF4463D8FF4463D8FF4463D8FF000000000000000000000000000000000000
        0000000000004463D8FF4463D8FF4463D8FF4463D8FF4463D8FF4463D8FF4463
        D8FF4463D8FF4463D8FF4463D8FF4463D8FF4463D8FF4463D8FF4463D8FF4463
        D8FF4463D8FF4463D8FF4463D8FF4463D8FF4463D8FF4463D8FF4463D8FF4463
        D8FF4463D8FF4463D8FF4463D8FF000000000000000000000000000000000000
        0000000000004463D8FF4463D8FF4463D8FF4463D8FF4463D8FF4463D8FF4463
        D8FF4463D8FF4463D8FF4463D8FF4463D8FF4463D8FF4463D8FF4463D8FF4463
        D8FF4463D8FF4463D8FF4463D8FF4463D8FF4463D8FF4463D8FF4463D8FF4463
        D8FF4463D8FF4463D8FF4463D8FF000000000000000000000000000000000000
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
      TabOrder = 0
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      ParentFont = False
      OnClick = BtnSairClick
    end
    object edtComandaNum: TLabeledEdit
      Left = 225
      Top = 3
      Width = 128
      Height = 27
      BevelEdges = [beBottom]
      BevelInner = bvNone
      BevelOuter = bvNone
      BorderStyle = bsNone
      Color = 16448250
      EditLabel.Width = 144
      EditLabel.Height = 25
      EditLabel.Caption = 'edtComandaNum'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clNavy
      Font.Height = -27
      Font.Name = 'Arial'
      Font.Style = [fsBold]
      ParentFont = False
      TabOrder = 1
      Text = '000'
      OnClick = EnterField
      OnEnter = EnterField
      OnExit = edtComandaNumExit
      OnKeyDown = edtComandaNumKeyDown
      OnKeyPress = edtComandaNumKeyPress
    end
  end
  object pnbotoes: TGridPanel
    Left = 20
    Top = 449
    Width = 1045
    Height = 123
    ColumnCollection = <
      item
        Value = 12.501145248974320000
      end
      item
        Value = 12.500073183051290000
      end
      item
        Value = 12.499205388158170000
      end
      item
        Value = 12.503645644530780000
      end
      item
        Value = 12.501144248092570000
      end
      item
        Value = 12.498643352059720000
      end
      item
        Value = 12.496142956351730000
      end
      item
        Value = 12.499999978781420000
      end>
    ControlCollection = <
      item
        Column = 0
        Control = BtnConsultarPreco
        Row = 0
      end
      item
        Column = 1
        Control = BtnInformarCliente
        Row = 0
      end
      item
        Column = 2
        Control = BtnRemoverItem
        Row = 0
      end
      item
        Column = 3
        Control = BtnFecharVenda
        Row = 0
      end
      item
        Column = 4
        Control = BtnCancelarVenda
        Row = 0
      end
      item
        Column = 5
        Control = BtnAlterarPreco
        Row = 0
      end
      item
        Column = 6
        Control = btn_alterar_quantidade
        Row = 0
      end
      item
        Column = 2
        Control = BtnFecharCaixa
        Row = 1
      end
      item
        Column = 3
        Control = BtnVendaAux
        Row = 1
      end
      item
        Column = 6
        Control = BtnStatusServico
        Row = 1
      end
      item
        Column = 1
        Control = BtnInformarVendedor
        Row = 1
      end
      item
        Column = 5
        Control = GridPanel1
        Row = 1
      end
      item
        Column = 4
        Control = cxButton1
        Row = 1
      end
      item
        Column = 7
        Control = cxButton2
        Row = 1
      end
      item
        Column = 7
        Control = BtnDescontoAcrescimos
        Row = 0
      end
      item
        Column = 0
        Control = GridPanel2
        Row = 1
      end>
    RowCollection = <
      item
        Value = 50.000005960465200000
      end
      item
        Value = 49.999994039534800000
      end>
    TabOrder = 4
    object BtnConsultarPreco: TcxButton
      Left = 1
      Top = 1
      Width = 130
      Height = 60
      Align = alClient
      Caption = 'CONSULTAR'#13'PRE'#199'O'#13'[F1]'
      LookAndFeel.NativeStyle = False
      LookAndFeel.SkinName = 'Metropolis'
      OptionsImage.Glyph.Data = {
        36100000424D3610000000000000360000002800000020000000200000000100
        2000000000000010000000000000000000000000000000000000000000000000
        0000B8824DFFB8824DFFB8824DFFB8824DFFB8824DFFB8824DFFB8824DFFB882
        4DFFB8824DFFB8824DFFB8824DFFB8824DFFB8824DFFB8824DFFB8824DFF0000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000B8824DFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFB8824DFF0000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000B8824DFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFB8824DFF0000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000B8824DFFFFFFFFFFFFFFFFFFC1C1C1FFC1C1C1FFC1C1C1FFC1C1C1FFC1C1
        C1FFC1C1C1FFC1C1C1FFC1C1C1FFC1C1C1FFFFFFFFFFFFFFFFFFB8824DFF0000
        000097A776FF97A776FF97A776FF97A776FF97A776FF97A776FF97A776FF97A7
        76FF97A776FF97A776FF97A776FF839166DD2A2E214700000000000000000000
        0000B8824DFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFB8824DFF0000
        000097A776FF97A776FF97A776FF97A776FF97A776FF97A776FF97A776FF97A7
        76FF97A776FF97A776FF97A776FF97A776FF88976AE600000000000000000000
        0000B8824DFFFFFFFFFFFFFFFFFFC1C1C1FFC1C1C1FFC1C1C1FFC1C1C1FFC1C1
        C1FFC1C1C1FFC1C1C1FFC1C1C1FFC1C1C1FFFFFFFFFFFFFFFFFFB8824DFF0000
        000097A776FF97A776FF97A776FF97A776FF97A776FF97A776FF97A776FF97A7
        76FF97A776FF97A776FF97A776FF97A776FF97A776FF00000000000000000000
        0000B8824DFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFB8824DFF0000
        000097A776FF8D9C6EEE000000000000000097A776FF97A776FF97A776FF97A7
        76FF97A776FF97A776FF97A776FF97A776FF97A776FF00000000000000000000
        0000B8824DFFFFFFFFFFFFFFFFFFFFFFFFFFF6EFE9FFDDC3A9FFC89E75FFBA85
        52FFC89E75FFDDC3A9FFF6EFE9FFFFFFFFFFFFFFFFFFFFFFFFFFB8824DFF0000
        0000464E37770000000000000000000000000A0B081151593F8897A776FF97A7
        76FF97A776FF97A776FF97A776FF97A776FF97A776FF00000000000000000000
        0000B8824DFFFFFFFFFFFFFFFFFFF6EFE9FFD1AE8CFFB8824DFFB8824DFFB882
        4DFFB8824DFFB8824DFFD1AE8CFFF6EFE9FFFFFFFFFFFFFFFFFFB8824DFF0000
        0000000000000000000000000000000000000000000000000000464E377797A7
        76FF97A776FF97A776FF97A776FF97A776FF97A776FF00000000000000000000
        0000B8824DFFFFFFFFFFFFFFFFFFDDC3A9FFB8824DFFB8824DFFB8824DFFB882
        4DFFB8824DFFB8824DFFB8824DFFDDC3A9FFFFFFFFFFFFFFFFFFB8824DFF0000
        00000000000032382755000000000000000051593F8800000000000000008D9C
        6EEE97A776FF97A776FF97A776FF97A776FF97A776FF00000000000000000000
        0000B8824DFFFFFFFFFFFFFFFFFFC89E75FFB8824DFFB8824DFFB8824DFFB882
        4DFFB8824DFFB8824DFFB8824DFFC89E75FFFFFFFFFFFFFFFFFFB8824DFF0000
        000000000000839166DD000000000000000097A776FF00000000000000006F7A
        57BB97A776FF97A776FF97A776FF97A776FF97A776FF00000000000000000000
        0000B8824DFFFFFFFFFFFFFFFFFFBA8552FFB8824DFFB8824DFFB8824DFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFB8824DFF0000
        000097A776FF97A776FF0000000000000000656F4FAA00000000000000006F7A
        57BB97A776FF97A776FF97A776FF97A776FF97A776FF00000000000000000000
        0000B8824DFFFFFFFFFFFFFFFFFFC89E75FFB8824DFFB8824DFFB8824DFFFFFF
        FFFFCBA37CFFCBA37CFFCBA37CFFD7B89AFFFFFFFFFFFFFFFFFFB8824DFF0000
        000097A776FF839166DD000000000000000000000000000000001416102297A7
        76FF97A776FF97A776FF97A776FF97A776FF97A776FF00000000000000000000
        0000B8824DFFFFFFFFFFFFFFFFFFDDC3A9FFB8824DFFB8824DFFB8824DFFFFFF
        FFFFCBA37CFFCBA37CFFCBA37CFFE6D3C0FFFFFFFFFFFFFFFFFFB8824DFF0000
        0000464E3777000000000000000000000000000000001416102279865ECC97A7
        76FF97A776FF97A776FF97A776FF97A776FF97A776FF00000000000000000000
        0000B8824DFFFFFFFFFFFFFFFFFFF6EFE9FFD1AE8CFFB8824DFFB8824DFFFFFF
        FFFFCBA37CFFCBA37CFFDDC4ABFFF9F4EFFFFFFFFFFFFFFFFFFFB8824DFF0000
        0000000000000000000000000000000000005B64479997A776FF97A776FF97A7
        76FF97A776FF97A776FF97A776FF97A776FF97A776FF00000000000000000000
        0000B8824DFFFFFFFFFFFFFFFFFFFFFFFFFFF6EFE9FFDDC3A9FFC89E75FFFFFF
        FFFFD7B89AFFE6D3C0FFF9F4EFFFFFFFFFFFFFFFFFFFFFFFFFFFB8824DFF0000
        00000000000032382755000000000000000097A776FF97A776FF97A776FF97A7
        76FF97A776FF97A776FF97A776FF97A776FF97A776FF00000000000000000000
        0000B8824DFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFB8824DFF0000
        0000000000006F7A57BB000000000000000079865ECC51593F886F7A57BB97A7
        76FF97A776FF97A776FF97A776FF97A776FF97A776FF00000000000000000000
        0000B8824DFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFB8824DFF0000
        0000000000003C432F6600000000000000001E211833000000001E21183397A7
        76FF97A776FF97A776FF97A776FF97A776FF97A776FF00000000000000000000
        0000B8824DFFB8824DFFB8824DFFB8824DFFB8824DFFB8824DFFB8824DFFB882
        4DFFB8824DFFB8824DFFB8824DFFB8824DFFB8824DFFB8824DFFB8824DFF0000
        0000000000000000000000000000000000000000000000000000656F4FAA97A7
        76FF97A776FF97A776FF97A776FF97A776FF97A776FF00000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000656F4FAA1416102200000000000000001E211833656F4FAA97A776FF97A7
        76FF97A776FF97A776FF97A776FF97A776FF97A776FF00000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        00000000000097A776FF97A776FF97A776FF97A776FF97A776FF97A776FF97A7
        76FF97A776FF97A776FF000000000000000097A776FF97A776FF97A776FF97A7
        76FF97A776FF97A776FF97A776FF97A776FF97A776FF00000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        00000000000097A776FF97A776FF97A776FF97A776FF97A776FF97A776FF97A7
        76FF97A776FF97A776FF97A776FF97A776FF97A776FF97A776FF97A776FF97A7
        76FF97A776FF97A776FF97A776FF97A776FF96A676FE00000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        00000000000089976BE797A776FF97A776FF97A776FF97A776FF97A776FF97A7
        76FF97A776FF97A776FF97A776FF97A776FF97A776FF97A776FF97A776FF97A7
        76FF97A776FF97A776FF97A776FF97A776FF6C7754B600000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000002C31234B93A373F997A776FF97A776FF97A776FF97A776FF97A7
        76FF97A776FF97A776FF97A776FF97A776FF97A776FF97A776FF97A776FF97A7
        76FF97A776FF97A776FF97A776FF78845DCA090A070F00000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        000000000000000000002B30224993A273F897A776FF97A776FF97A776FF97A7
        76FF97A776FF97A776FF97A776FF97A776FF97A776FF97A776FF97A776FF97A7
        76FF97A776FF97A776FF7C8A61D20B0C09130000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        00000000000000000000000000002A2E214792A172F697A776FF97A776FF97A7
        76FF97A776FF697552B20E0F0B170B0C0913636D4DA797A776FF97A776FF97A7
        76FF97A776FF808D64D80C0E0A15000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        000000000000000000000000000000000000282D1F4491A071F597A776FF97A7
        76FF97A776FF0C0E0A1500000000000000000708060C93A373F997A776FF97A7
        76FF839166DD11120D1C00000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        00000000000000000000000000000000000000000000262B1E4191A071F597A7
        76FF97A776FF0D0E0A1600000000000000000707050B95A474FB97A776FF8695
        69E314160F210000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        000000000000000000000000000000000000000000000000000025291D3E909F
        70F397A776FF656F4FAA0809060E0607050A5D67499D97A776FF89986BE81719
        1226000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000002427
        1C3C8F9E70F297A776FF94A474FA93A373F997A776FF8B9A6DEB1B1D152D0000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        000022261B3A8E9D6FF097A776FF97A776FF8E9D6FF01E211833000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000002124193788976AE68B996CEA22261B3A00000000000000000000
        0000000000000000000000000000000000000000000000000000}
      TabOrder = 0
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      ParentFont = False
      OnClick = BtnConsultarPrecoClick
    end
    object BtnInformarCliente: TcxButton
      Left = 131
      Top = 1
      Width = 130
      Height = 60
      Align = alClient
      Caption = 'INFORMAR'#13'CLIENTE'#13'[F2]'
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
        000000000000000000000000000000000000A67545E6B8824DFFB8824DFFB882
        4DFFB8824DFFB8824DFFB8824DFFB8824DFFB8824DFFB8824DFFB8824DFFB882
        4DFFB8824DFFB8824DFFB8824DFFB8824DFFB8824DFFB8824DFFB8824DFFB882
        4DFFA57545E50000000000000000000000000000000000000000000000000000
        000000000000000000000000000000000000B37E4BF8B8824DFFB8824DFFB882
        4DFFB8824DFFB8824DFFB8824DFFB8824DFFB8824DFFB8824DFFB8824DFFB882
        4DFFB8824DFFB8824DFFB8824DFFB8824DFFB8824DFFB8824DFFB8824DFFB882
        4DFFB37E4BF80000000000000000000000000000000000000000000000000000
        000000000000000000000000000000000000886039BCB8824DFFB8824DFFB882
        4DFFB8824DFFB8824DFFB8824DFFB8824DFFB8824DFFB8824DFFB8824DFFB882
        4DFFB8824DFFB8824DFFB8824DFFB8824DFFB8824DFFB8824DFFB8824DFFB882
        4DFF886039BC0000000000000000000000000000000000000000000000000000
        00000000000000000000000000000000000023190F31B17D4AF5B8824DFFB882
        4DFFB8824DFFB8824DFFB8824DFFB8824DFFB8824DFFB8824DFFB8824DFFB882
        4DFFB8824DFFB8824DFFB8824DFFB8824DFFB8824DFFB8824DFFB8824DFFB17D
        4AF524190F320000000000000000000000000000000000000000000000000000
        000000000000000000000000000000000000000000002B1F123CA57445E4B882
        4DFFB8824DFFB8824DFFB8824DFFB8824DFFB8824DFF93683ECC7B5733AA9469
        3ECDB8824DFFB8824DFFB8824DFFB8824DFFB8824DFFB8824DFFA57445E42B1F
        123C000000000000000000000000000000000000000000000000000000000000
        00000000000000000000000000000000000000000000000000000906040C563D
        24779A6D41D6B8824DFFB8824DFFB47F4BF93A29185100000000000000000000
        0000402D1B59B6804CFCB8824DFFB8824DFF9A6D41D6563D24770906040C0000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000001C140C27795532A7553C24760000000000000000000000000000
        000000000000593F257B7C5834AC1C140C270000000000000000000000000000
        0000000000000000000000000000000000000000000000000000AE7B49F1B882
        4DFFB8824DFFB8824DFFB8824DFFB8824DFFB8824DFFB8824DFFB8824DFFB882
        4DFF9C6E41D83F2D1B583F2D1B580101000100000000000000000907040D0000
        00000000000001010102000000003C2A19539C6E41D8B8824DFFB8824DFFB882
        4DFFB8824DFFB8824DFFB8824DFFB8824DFFB8824DFFAD7A48F0B17D4AF5B882
        4DFFB8824DFFB8824DFFB8824DFFB8824DFFB8824DFFB8824DFFB8824DFFB882
        4DFFB8824DFFB8824DFF3F2D1B5804030205543B2374A37344E2B8824DFFA474
        45E3563D247702020103402D1B59B8824DFFB8824DFFB8824DFFB8824DFFB882
        4DFFB8824DFFB8824DFFB8824DFFB8824DFFB8824DFFB17D4AF5795633A8B882
        4DFFB8824DFFB8824DFFB8824DFFB8824DFFB8824DFFB8824DFFB8824DFFB882
        4DFFB8824DFF7E5935AE00000000795532A7B8824DFFB8824DFFB8824DFFB882
        4DFFB8824DFF785532A6000000007E5935AEB8824DFFB8824DFFB8824DFFB882
        4DFFB8824DFFB8824DFFB8824DFFB8824DFFB8824DFF795633A80F0B06159D6F
        42D9B8824DFFB8824DFFB8824DFFB8824DFFB8824DFFB8824DFFB8824DFFB882
        4DFFB8824DFF2C1F123D3A291851B8824DFFB8824DFFB8824DFFB8824DFFB882
        4DFFB8824DFFB8824DFF3A2918512B1F123CB8824DFFB8824DFFB8824DFFB882
        4DFFB8824DFFB8824DFFB8824DFFB8824DFF9E7042DB120D0819000000000C09
        051171502F9DB5804CFBB8824DFFB8824DFFB8824DFFA37344E248331E64261B
        10353C2A1953020201038C633BC2B8824DFFB8824DFFB8824DFFB8824DFFB882
        4DFFB8824DFFB8824DFF8D633BC3010100011F160D2B49331E65A57445E4B882
        4DFFB8824DFFB8824DFFB5804CFB71502F9D0C09051100000000000000000000
        000000000000140E081C4C36206995693ECEA77646E7100B0716000000000000
        00000000000020170E2DB6804CFCB8824DFFB8824DFFB8824DFFB8824DFFB882
        4DFFB8824DFFB8824DFFB6804CFC21170E2E0000000000000000140E081CA977
        47EA95693ECE4C362069140E081C000000000000000000000000000000000000
        00000000000000000000000000000302010420170E2D00000000000000000000
        000000000000886039BCB8824DFFB8824DFFB8824DFFB8824DFFB8824DFFB882
        4DFFB8824DFFB8824DFFB8824DFF886039BC0000000000000000000000002017
        0E2D030201040000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000022180E2F704F2F9B9166
        3DC919110A2290663CC8B8824DFFB8824DFFB8824DFFB8824DFFB8824DFFB882
        4DFFB8824DFFB8824DFFB8824DFF92673DCA1E150D2A7351309F20170E2D0000
        0000000000000000000000000000000000000000000000000000000000000000
        00000000000000000000000000000000000034251648B47F4BF9B8824DFFB882
        4DFF281C11374E37216CB8824DFFB8824DFFB8824DFFB8824DFFB8824DFFB882
        4DFFB8824DFFB8824DFFB8824DFF4F38216D261B1035B8824DFFB47F4BF93525
        1649000000000000000000000000000000000000000000000000000000000000
        00000000000000000000000000000705030AA77646E8B8824DFFB8824DFFB882
        4DFF6A4B2C933626174BB8824DFFB8824DFFB8824DFFB8824DFFB8824DFFB882
        4DFFB8824DFFB8824DFFB8824DFF3626174B694A2C92B8824DFFB8824DFFA776
        46E80806030B0000000000000000000000000000000000000000000000000000
        000000000000000000000000000045301D5FB8824DFFB8824DFFB8824DFFB882
        4DFF825C36B4281C1137B8824DFFB8824DFFB8824DFFB8824DFFB8824DFFB882
        4DFFB8824DFFB8824DFFB8824DFF2C1F123D825C36B4B8824DFFB8824DFFB882
        4DFF47321E630000000000000000000000000000000000000000000000000000
        0000000000000000000006040208976B3FD1B8824DFFB8824DFFB8824DFFB882
        4DFF90663CC80705030AAF7C49F3B8824DFFB8824DFFB8824DFFB8824DFFB882
        4DFFB8824DFFB8824DFFB27D4AF60A07040E8C633BC2B8824DFFB8824DFFB882
        4DFF976B3FD10604020800000000000000000000000000000000000000000000
        000000000000000000003827174DB8824DFFB8824DFFB8824DFFB8824DFFB882
        4DFFB17D4AF50906040C5A40267DB8824DFFB8824DFFB8824DFFB8824DFFB882
        4DFFB8824DFFB8824DFF5F43288406050309AE7B49F1B8824DFFB8824DFFB882
        4DFFB8824DFF3827174D00000000000000000000000000000000000000000000
        0000000000000000000022180E2FB6804CFCB8824DFFB8824DFFB8824DFFB882
        4DFFB8824DFF5E4227820000000044301C5E8D633BC3A87746E9B5804CFBA977
        47EA8F653CC645301D5F01010001593F257BB8824DFFB8824DFFB8824DFFB882
        4DFFB6804CFC20170E2D00000000000000000000000000000000000000000000
        00000000000000000000000000009E7042DBB8824DFFB8824DFFB8824DFFB882
        4DFFB8824DFFB8824DFF745231A1261B10340000000000000000000000000000
        00000D090512291D1139735230A0B7814DFEB8824DFFB8824DFFB8824DFFB882
        4DFF9F7042DC0000000000000000000000000000000000000000000000000000
        0000000000000000000000000000956A3FCFB8824DFFB8824DFFB8824DFFB882
        4DFFB8824DFFB8824DFFB8824DFF966A3FD00000000000000000000000000000
        0000956A3FCFB8824DFFB8824DFFB8824DFFB8824DFFB8824DFFB8824DFFB882
        4DFF966A3FD00000000000000000000000000000000000000000000000000000
        0000000000000000000000000000765331A3B8824DFFB8824DFFB8824DFFB882
        4DFFB8824DFFB8824DFFB8824DFF7A5633A90000000000000000000000000000
        0000765331A3B8824DFFB8824DFFB8824DFFB8824DFFB8824DFFB8824DFFB882
        4DFF7A5633A90000000000000000000000000000000000000000000000000000
        0000000000000000000000000000281D1138B6804CFCB8824DFFB8824DFFB882
        4DFFB8824DFFB8824DFFB6804CFC2D20133E0000000000000000000000000000
        0000281D1138B6804CFCB8824DFFB8824DFFB8824DFFB8824DFFB8824DFFB680
        4CFC2D20133E0000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000002F211441835D37B6A87746E9B580
        4CFBA97747EA855E38B930221442000000000000000000000000000000000000
        0000000000002F211441835D37B6A87746E9B5804CFBA97747EA855E38B93022
        1442000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000}
      TabOrder = 1
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      ParentFont = False
      OnClick = BtnInformarClienteClick
    end
    object BtnRemoverItem: TcxButton
      Left = 261
      Top = 1
      Width = 130
      Height = 60
      Align = alClient
      Caption = 'REMOVER'#13'ITEM'#13'[F3]'
      Enabled = False
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
        00000000000000000000B8824DFFB8824DFFB8824DFFB8824DFFB8824DFFB882
        4DFFB8824DFFB8824DFFB8824DFF000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        00000000000000000000B8824DFFB8824DFFB8824DFFB8824DFFB8824DFFB882
        4DFFB8824DFFB8824DFFB8824DFF000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000A07040EB8824DFF432F1C5DB8824DFF432F1C5DB8824DFF432F
        1C5DB8824DFF432F1C5DB8824DFF0907040D0000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        00000000000018110A21B8824DFFB8824DFFB8824DFFB8824DFFB8824DFFB882
        4DFFB8824DFFB8824DFFB8824DFF160F091E0000000000000000000000000000
        0000848484FF848484FF848484FF848484FF848484FF848484FF848484FF8484
        84FF848484FF848484FF848484FF848484FF848484FF848484FF848484FFFFFF
        FFFFFFFFFFFFEFE3D7FFB8824DFFB8824DFF432F1C5DB8824DFF432F1C5DB882
        4DFF432F1C5DB8824DFFB8824DFF281C11370000000000000000000000000000
        0000848484FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFCCCCCCFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFCCCCCCFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFE6D2BFFFB8824DFFB8824DFFB8824DFFB8824DFFB8824DFFB882
        4DFFB8824DFFB8824DFFB8824DFF3D2B1A550000000000000000000000000000
        0000848484FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFCCCCCCFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFCCCCCCFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFDBBFA4FFB8824DFF432F1C5DB8824DFF432F1C5DB8824DFF432F
        1C5DB8824DFF432F1C5DB8824DFF593F257B0000000000000000000000000000
        0000848484FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFCCCCCCFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFCCCCCCFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFD2AF8DFFB8824DFFB8824DFFB8824DFFB8824DFFB8824DFFB882
        4DFFB8824DFFB8824DFFB8824DFF71502F9C0000000000000000000000000000
        0000848484FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFCBA47DFF432F1C5DB8824DFF432F1C5DB8824DFF432F1C5DB882
        4DFF432F1C5DB8824DFF432F1C5D7E5935AF0000000000000000000000000000
        0000848484FFCCCCCCFFCCCCCCFFFFFFFFFF5471DDFF5471DDFF5471DDFF5471
        DDFF5471DDFF5471DDFF5471DDFF5471DDFFFFFFFFFFCCCCCCFFCCCCCCFFFFFF
        FFFFFFFFFFFFC69B70FFB8824DFFB8824DFFB8824DFFB8824DFFB8824DFFB882
        4DFFB8824DFFB8824DFFB8824DFF8F653CC60000000000000000000000000000
        0000848484FFFFFFFFFFFFFFFFFFFFFFFFFF5471DDFF5471DDFF5471DDFF5471
        DDFF5471DDFF5471DDFF5471DDFF5471DDFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFC08F60FFB8824DFF432F1C5DB8824DFF432F1C5DB8824DFF432F
        1C5DB8824DFF432F1C5DB8824DFF9D6F42DA0000000000000000000000000000
        0000848484FFFFFFFFFFFFFFFFFFFFFFFFFF5471DDFF5471DDFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFF5471DDFF5471DDFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFBA8552FFB8824DFFB8824DFFB8824DFFB8824DFFB8824DFFB882
        4DFFB8824DFFB8824DFFB8824DFFAC7948EE0000000000000000000000000000
        0000848484FFFFFFFFFFFFFFFFFFFFFFFFFF5471DDFF5471DDFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFF5471DDFF5471DDFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFF00000000000000000000000000000000000000000000
        0000848484FFFFFFFFFFFFFFFFFFFFFFFFFF5471DDFF5471DDFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFF5471DDFF5471DDFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFB8824DFFB8824DFFB8824DFFB8824DFFB8824DFFB8824DFFB8824DFFB882
        4DFFB8824DFFB8824DFFB8824DFFB8824DFFB8824DFF00000000000000000000
        0000848484FFCCCCCCFFCCCCCCFFFFFFFFFF5471DDFF5471DDFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFF5471DDFF5471DDFFFFFFFFFFCCCCCCFFCCCCCCFFFFFF
        FFFFB8824DFFB8824DFFB8824DFFB8824DFFB8824DFFB8824DFFB8824DFFB882
        4DFFB8824DFFB8824DFFB8824DFFB8824DFFB8824DFF00000000000000000000
        0000848484FFFFFFFFFFFFFFFFFFFFFFFFFF5471DDFF5471DDFF5471DDFF5471
        DDFF5471DDFF5471DDFF5471DDFF5471DDFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFF00000000000000000000000000000000000000000000
        0000848484FFFFFFFFFFFFFFFFFFFFFFFFFF5471DDFF5471DDFF5471DDFF5471
        DDFF5471DDFF5471DDFF5471DDFF5471DDFFFFFFFFFFFFFFFFFFFFFFFFFFCCCC
        CCFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFDDE3F8FF5471DDFFDDE3
        F8FFFFFFFFFFFFFFFFFF00000000000000000000000000000000000000000000
        0000848484FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFCCCC
        CCFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFDDE3F8FF5471DDFF5471DDFF5471
        DDFFDDE3F8FFFFFFFFFF00000000000000000000000000000000000000000000
        0000848484FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFCCCCCCFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFCCCCCCFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFCCCC
        CCFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF5471DDFF5471DDFF5471DDFF5471
        DDFF5471DDFFFFFFFFFF00000000000000000000000000000000000000000000
        0000848484FFCCCCCCFFCCCCCCFFCCCCCCFFCCCCCCFFCCCCCCFFCCCCCCFFCCCC
        CCFFCCCCCCFFCCCCCCFFCCCCCCFFCCCCCCFFCCCCCCFFCCCCCCFFCCCCCCFFCCCC
        CCFFCCCCCCFFCCCCCCFFCCCCCCFFFFFFFFFF5471DDFFDDE3F8FF5471DDFFDDE3
        F8FF5471DDFFFFFFFFFF00000000000000000000000000000000000000000000
        0000848484FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFCCCCCCFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFCCCCCCFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFCCCC
        CCFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF5471DDFFFFFF
        FFFFFFFFFFFFFFFFFFFF00000000000000000000000000000000000000000000
        0000848484FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFCCCCCCFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFCCCCCCFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFCCCC
        CCFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFCCCCCCFFFFFFFFFF5471DDFFFFFF
        FFFFFFFFFFFF848484FF00000000000000000000000000000000000000000000
        0000848484FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFCCCCCCFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFCCCCCCFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFCCCC
        CCFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFCCCCCCFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFF848484FF00000000000000000000000000000000000000000000
        0000848484FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFCCCCCCFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFCCCCCCFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFCCCC
        CCFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFCCCCCCFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFF848484FF00000000000000000000000000000000000000000000
        0000848484FF848484FF848484FF848484FF848484FF848484FF848484FF8484
        84FF848484FF848484FF848484FF848484FF848484FF848484FF848484FF8484
        84FF848484FF848484FF848484FF848484FF848484FF848484FF848484FF8484
        84FF848484FF848484FF00000000000000000000000000000000000000000000
        0000848484FF848484FF848484FF848484FF848484FF848484FF848484FF8484
        84FF848484FF848484FF848484FF848484FF848484FF848484FF848484FF8484
        84FF848484FF848484FF848484FF848484FF848484FF848484FF848484FF8484
        84FF848484FF848484FF00000000000000000000000000000000000000000000
        0000848484FF848484FF848484FF848484FF848484FF848484FF848484FF8484
        84FF848484FF848484FF848484FF848484FF848484FF848484FF848484FF8484
        84FF848484FF848484FF848484FF848484FF848484FF848484FF848484FF8484
        84FF848484FF848484FF00000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000}
      TabOrder = 2
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      ParentFont = False
      OnClick = BtnRemoverItemClick
    end
    object BtnFecharVenda: TcxButton
      Left = 391
      Top = 1
      Width = 130
      Height = 60
      Align = alClient
      Caption = 'FECHAR'#13'VENDA'#13'[F4]'
      Enabled = False
      LookAndFeel.NativeStyle = False
      LookAndFeel.SkinName = 'Metropolis'
      OptionsImage.Glyph.Data = {
        36230000424D3623000000000000360000002800000038000000280000000100
        2000000000000023000000000000000000000000000000000000000000000000
        00000000000402080520020C0929020C0929020C0929020C0929020C0929020C
        0929020C0929020C0929020C0929020C0929020C0929020C0929020C0929020C
        0929020C0929020C0929020C0929020C0929020C0929020C0929020C0929020C
        0929020C0929020C0929020C0929020C0929020C0929020D0A28030E0B281B39
        475949809AA966A9C6D858AEDBEE3FA1DBF83189BDFA206996F4195B82E31E59
        7DC1173D557F040A0F200000000A000000070000000000000000000000000000
        000000000000000000000000000000000000000000000000000000000000020C
        08220E6344A0149966E015A06AE8159F6AE8159F6AE8159F6AE8159F6AE8159F
        6AE8159F6AE8159F6AE8159F6AE8159F6AE8159F6AE8159F6AE8159F6AE8159F
        6AE8159F6AE8159F6AE8159F6AE8159F6AE8159F6AE8159F6AE8159F6AE8159F
        6AE8159F6AE8159F6AE815A06AE816A26BE8169F6AE8129562E8218F7BE85DBD
        EDFF8ADBFFFF94DDFAFF79CFF8FF65BFEFFF53ACDCFF4496C4FF3E88B2FF3A8A
        B8FF3795CCFF2152719700000000000000010000000000000000000000000000
        00000000000000000000000000000000000000000000000000000104030B1384
        59C81CD08AFF18CB85FF17C984FF18CA84FF18CA84FF18CA84FF18CA84FF18CA
        84FF18CA84FF18CA84FF18CA84FF18CA84FF18CA84FF18CA84FF18CA84FF18CA
        84FF18CA84FF18CA84FF18CA84FF18CA84FF18CA84FF18CA84FF18CA84FF19CB
        85FF1BCD87FF1CCC88FF1BC684FF19BD7EFF19B87CFF17AB71FF2AB09DFF75CE
        F6FF87DBF5FF72CCF2FF7DCFF2FF72C9F1FF52B8F0FF3FA2DBFF2F82B4FF236A
        96FF2573A3FF276E99DE0E233150070F152B060A0F210303050D000000000000
        00000000000000000000000000000000000000000000000000000C4D36831DC5
        84FF1AC683FF26C588FF43CD97FF4BD09CFF4AD09CFF4AD09CFF4AD09CFF4AD0
        9CFF4AD09CFF4AD09CFF4AD09CFF4AD09CFF4AD09CFF4ACF9CFF4BD09CFF4DD0
        9EFF4ED19EFF4ED19EFF4ED19EFF4DD09DFF4AD09CFF4CD19DFF4FD3A0FF4DCF
        9CFF3FC391FF26B57FFF18B077FF18B87CFF18B076FF17B476FF20BC92FF69CB
        E1FF66C8F3FF6DC5F0FF8DD0EFFF7DC3E9FF60B2E1FF52A6D5FF479CC8FF4598
        C1FF479BC6FF3B9ACCFF318BC1FC206092EF134C78E8154F75D5184B69A71028
        3855010203060000000000000000000000000000000000000000158A5ED91CC6
        84FF25C687FF59D4A3FF67D7ACFF66D7ABFF66D7ABFF66D7ABFF66D7ABFF66D7
        ABFF66D7ABFF66D7ABFF66D7ABFF66D7ABFF66D7ABFF69D8ACFF68D8ACFF5CD5
        A5FF4ED19EFF43CE98FF50D29FFF5ED7A7FF6AD9ADFF64D2A7FF4FC497FF35B7
        85FF1FB47CFF16BB7CFF18C482FF19B67AFF18B277FF16C37FFF24C585FF4FC2
        B5FF5EBBE9FF7CCCF0FF73C5EEFF4EB1EAFF3B9BD3FF297CADFF226C98FF2B7C
        A9FF449AC8FF53B7E8FF4BB2E6FF3078B0FF2B70A5FF3887B7FF3E99CBFF3796
        CCFF183E546E0000000000000000000000000000000000000000179162E01CC5
        83FF3ECD95FF68D8ACFF64D7AAFF64D7AAFF64D7AAFF64D7AAFF64D7AAFF64D7
        AAFF64D7AAFF64D7AAFF64D7AAFF64D7AAFF67D7ABFF5AD4A5FF38CB92FF1FC4
        84FF21C686FF50D3A0FF21C485FF22BB81FF33B886FF25B37DFF14B677FF11BF
        7BFF14C37FFF24C888FF21B57EFF18B177FF16C380FF23C686FF55D1A1FF5CC4
        D9FF73C8F3FF8ED4F1FF7FC9ECFF67BCE9FF5AB1E0FF4EA7D1FF499EC7FF459B
        C7FF3491C4FF3C99CDFF5BBBE7FF246AA3FF1B5C8DFF2C75A2FF4190BDFF44A4
        DAFF265E7D9C0000000000000000000000000000000000000000188E62DE1FC6
        86FF46CF9AFF68D8ACFF65D7ABFF65D7ABFF65D7ABFF65D7ABFF65D7ABFF65D7
        ABFF65D7ABFF65D7ABFF65D7ABFF68D8ACFF58D4A3FF2AC88AFF1EC685FF2BC9
        8CFF56CEA0FF8FD3B9FF20B17BFF15B276FF12BA79FF11C17DFF18C481FF29C7
        8AFF46D09AFF44BF8FFF1EB27AFF15C27FFF22C686FF55D3A1FF63D3ADFF5DBD
        E3FF7AC8F0FF72C4ECFF51B3E9FF3E9ED4FF2D83B2FF2876A0FF3587B1FF50A8
        D2FF57BCECFF4BAFE4FF3C84BAFF2B6DA5FF3076A5FF3C8BB5FF398FBFFF3897
        CDFF245674930000000000000000000000000000000000000000188F62DE22C7
        87FF47D09BFF6AD9ADFF67D8ACFF67D8ACFF67D8ACFF67D8ACFF68D8ADFF67D8
        ACFF67D8ACFF67D8ACFF68D8ADFF63D8ABFF2FCB8FFF22C586FF26BD84FF48BD
        92FF38B888FF16B779FF13BF7DFF16C380FF1FC685FF35CA90FF4FD09EFF64D8
        ABFF50C397FF1DB279FF14C27EFF22C586FF54D2A1FF66D8A8FF5BC6CEFF6CC4
        F2FF8DD4F2FF84CEF1FF69C2F2FF5BB6E9FF47A1D0FF3B8DBAFF3687B4FF2E86
        BAFF3E9BCDFF5CBDEBFF2B79B8FF20649DFF226A9AFF2F7AA4FF3D8DBBFF44A3
        D8FF245A78950000000000000000000000000000000000000000188F63DE24C8
        89FF49D19CFF6CDAAEFF69D9ADFF69D9ADFF6AD9ADFF6CDAAFFF6BD9AEFF6CD9
        AFFF6AD9AEFF6DDCB0FF70DBB1FF47CA98FF1FB77DFF1CB178FF19B379FF14BB
        7BFF0FC07BFF18C481FF2AC88AFF45CE99FF5DD4A6FF68D7ACFF6BDAAEFF4FC3
        96FF1AB178FF13C27EFF22C586FF54D2A1FF66D7AAFF62D7A7FF5FC3DDFF8BD6
        F7FF9AE0F7FF93E0FAFF8BDDFAFF80DAFAFF79D7F8FF71D3F9FF6DD0F9FF58C0
        F1FF43A6DDFF4899D1FF3781BDFF3884B9FF4297C2FF3C8FB8FF3890BEFF3897
        CDFF235674930000000000000000000000000000000000000000198F63DE27C9
        8AFF4BD29DFF6EDAAFFF6BD9AEFF6BD9AEFF6AD9AEFF50D29FFF41CF98FF59D7
        A6FF6DD8AFFF5DCDA2FF41BC8DFF1EB17AFF16B779FF14BF7DFF16C380FF20C5
        85FF36CA90FF52D2A0FF60D6A8FF5DD5A6FF57D3A2FF59D6A5FF4CC396FF1BB1
        78FF14C17EFF21C585FF54D2A1FF65D7AAFF63D7AAFF63D7A8FF67C6D2FFA2E7
        FEFFA5EEFFFFA1EDFEFF85DEF8FF7BD5F4FF78D6F6FF70D4FAFF68D2FDFF72D8
        FFFF67CEF9FF3B94D3FF2874B2FF2C7AAFFF3284AFFF3786AFFF489EC9FF48AD
        E0FF255B7A950000000000000000000000000000000000000000198F63DE29C9
        8CFF4ED29FFF6FDAB1FF6CD9AFFF70DAB1FF5AD7A6FF2BCA8DFF27C287FF27B9
        82FF30B685FF1BB279FF10BA78FF13C27EFF19C481FF2AC88AFF42CD97FF5AD3
        A4FF68D7ACFF52D29FFF2FC98DFF1CC483FF1FC685FF20B77DFF18B077FF14C2
        7FFF21C586FF53D2A0FF65D7AAFF63D6A9FF64D7ABFF65D8AAFF61CFB3FF6BCA
        D3FF82D6EBFF87DEF7FF7CD9FBFF73D1FAFF6DD2FAFF71D7FBFF7AD4FBFF7ECF
        F7FF63BCECFF499FDAFF4695CDFF449ACCFF3688B6FF3181ADFF3085B6FF3797
        CDFF2559779100000000000000000000000000000000000000001B9065DE2DCB
        8EFF51D2A1FF73DCB3FF74DEB5FF74DBB3FF49C696FF20B37CFF1CB179FF16B6
        79FF11BE7BFF13C37FFF20C685FF36CA91FF4FD19EFF61D5A8FF67D7ABFF66D7
        ABFF40CE96FF18C280FF5CD4A5FF75DDB3FF20B77DFF17B076FF15C27FFF20C5
        85FF53D1A1FF65D7AAFF63D6A9FF64D7AAFF65D7ABFF67D7ACFF68D9ABFF67D7
        ABFF4ACBA5FF30C1A0FF3AC5AEFF44C9B7FF67D5C6FF62CAD3FF5DB9EEFF6BC0
        ECFF72C4ECFF60BBEAFF4FAFE4FF3F99CBFF3483AFFF3A86AFFF4698C4FF43A4
        DAFF2358779400000000000000000000000000000000000000001C9066DE2FCC
        8FFF54D5A4FF76DCB5FF57C69CFF32B684FF1CB57BFF14BB7AFF14C27EFF19C5
        82FF2AC78BFF44CE97FF5AD4A4FF65D7AAFF66D7ABFF64D7AAFF66D7ABFF46CF
        9AFF1DC483FF1BC482FFA4E9CEFFB9DED1FF1EB17AFF15C27EFF20C585FF52D1
        A0FF67D7ABFF66D7ABFF68D8ACFF68D8ADFF68D8ACFF68D8ADFF69D9ADFF6DDA
        AEFF43CF96FF29C987FF2CCA88FF31CC8BFF6BDBA8FF67CCC4FF61BEF1FF82D0
        F3FF8BD2F1FF6EC4F0FF56B2E6FF469FD1FF3587B5FF3180ACFF3188B8FF399A
        CEFF2458779300000000000000000000000000000000000000001D9066DE33CE
        92FF58D5A6FF49BD91FF15B377FF12BE7CFF14C37FFF20C586FF36CB91FF4FD1
        9EFF61D5A7FF66D7AAFF65D7AAFF63D6A9FF63D7AAFF65D7ABFF5CD4A6FF26C7
        88FF1EC483FF93E4C4FFC0E0D5FF2BB480FF12C17DFF20C585FF54D2A1FF69D8
        ACFF5ED5A7FF56D3A3FF54D3A2FF5AD4A4FF66D7ABFF6DDAAFFF6BD9AEFF6DD9
        AFFF5AD5A4FF31CB8FFF2FCB8EFF48D19CFF73DCB1FF67CDC8FF66C0F1FF81CC
        EFFF81CCEEFF64BDEBFF4CABE0FF3E95C8FF3281ADFF3985AFFF4799C6FF44A5
        DBFF2358779400000000000000000000000000000000000000001E9167DE3BD2
        97FF42C493FF1AB479FF17C481FF1DC484FF40CD96FF5AD4A4FF65D7AAFF66D7
        ABFF64D7AAFF63D7AAFF64D7ABFF64D7ABFF65D7ABFF68D8ACFF49CF9BFF20C6
        84FF35CC91FFA2D9C5FF2DB582FF0EC07BFF1FC585FF54D2A1FF60D5A8FF3FCD
        96FF27C789FF1EC483FF21C686FF27C789FF33CA90FF4FD29FFF6BD8AEFF70DA
        B0FF70DBB1FF64D8ABFF5ED6A7FF71DBB2FF76DEB3FF68CDC7FF5EBBEFFF7DCD
        F1FF87D1F0FF6BC3F1FF54B3EAFF45A0D4FF3286B5FF2C7CA9FF2D82B4FF3796
        CBFF2559779300000000000000000000000000000000000000001E9168DE40D2
        99FF2BB883FF18BE7EFF1BC382FF45CE99FF67D7ACFF65D7AAFF63D7AAFF63D7
        AAFF64D7AAFF65D7ABFF65D7ABFF66D7ABFF67D7ACFF69D8ADFF3DCD95FF26C9
        8AFF2ABB84FF1EB179FF10C07CFF20C584FF53D1A0FF5CD4A5FF26C688FF10C0
        7CFF19C381FF2BC88CFF1EC584FF22C686FF28C889FF28C88AFF41CE97FF6BD9
        AFFF71DBB2FF74DCB4FF77DCB5FF76DCB5FF77DEB3FF68CDCAFF6EC6F4FF96DB
        F5FF97DEF8FF90DDFAFF85DBFBFF7BD7FBFF72D2F8FF6DCDF5FF61C1EDFF46AF
        E7FF2154758E00000000000000000000000000000000000000001F9369DF42D3
        9AFF29B781FF1BC080FF24C687FF5ED5A6FF64D7AAFF64D7AAFF64D7ABFF65D7
        ABFF66D7ABFF66D7ABFF67D8ACFF68D8ACFF69D8ADFF69D9ADFF3ECF96FF25BA
        81FF19AF76FF13C17DFF1FC484FF51D19FFF63D6A9FF28C689FF63D6AAFF7ADC
        B6FFABE9D1FFE3F8F0FFA5E8CEFF35CB90FF29C88AFF2ECA8DFF2CCA8CFF48D1
        9CFF72DBB2FF73DCB3FF75DCB4FF76DDB5FF79DEB5FF6ACBC5FF8DD7F5FFA8F0
        FFFF9FECFDFF8FE5FAFF7CD8F5FF7AD6F4FF75D6F9FF69D3FDFF66D3FFFF73DC
        FFFF3D8A92CC0A1B083600000000000000000000000000000000209368E14FD9
        A3FF33BE89FF1AB97CFF25C788FF5DD5A6FF66D7ACFF65D7ABFF66D7ABFF67D7
        ACFF67D8ACFF6BD9AEFF6DD9AFFF6CD9AEFF6AD9AEFF70DCB2FF3FC290FF17AE
        75FF16C27FFF1EC584FF50D09EFF68D7ACFF43CE98FF17C27FFF63D7AAFFFFFF
        FFFFF0FBF7FFCCF2E3FFFFFFFFFFB5ECD7FF30CA8EFF2FCA8EFF32CB90FF33CC
        90FF62D7AAFF77DDB5FF76DDB5FF78DDB6FF79DEB6FF77DABAFF71CDD2FF80D5
        ECFF93E2FAFF89E3FFFF73D8FDFF6AD4FDFF70DAFFFF7BDDFFFF81D5F1FF5BBE
        B0FF209A42FF1D8727F21B521F970912082300000000000000000F6E4BB26CE0
        B3FF73D8B1FF20B47CFF20C685FF4DD09DFF69D8ADFF67D8ACFF68D8ADFF68D8
        ADFF6BD9AEFF61D6A8FF53D3A1FF62D7A9FF72DDB3FF5AC99FFF20B17AFF15C1
        7EFF1FC484FF4FD19FFF66D7AAFF61D6A8FF2DC88CFF1BC382FF99E4C7FFE7F8
        F2FFC6F0E0FF6EDAB0FFC0EEDCFFFCFEFDFF4BD19DFF26C889FF30CB8EFF34CC
        91FF4ED29FFF78DEB6FF78DDB6FF79DDB6FF7BDEB8FF7DE0B8FF76DDB5FF89DA
        C9FF9ADFE1FF56C4C1FF86B2ACFF86A69FFF338577FF228561FF1C8F43FF2A98
        48FF269636FF108E15FF149021FF218128E917471982050A041400190F3343B8
        8CF4B7FBE1FF64C7A2FF1DC182FF37CC92FF68D8ADFF69D9ADFF69D9ADFF6BD9
        AEFF62D7A9FF33CB8FFF28C88AFF37CE94FF53C89BFF20B17AFF14C07DFF1EC4
        84FF4FD19EFF66D7AAFF64D7AAFF5AD5A5FF26C688FF24C687FFD9F5EAFFDEF7
        EDFF62D6AAFFC1EFDDFFD3F3E7FFCFF3E5FF35CC91FF51D4A1FF46D09AFF35CC
        91FF45D09AFF77DCB5FF7ADDB7FF7BDEB8FF7CDFB8FF79DFB7FF93E5C4FFBDF2
        DCFF77DAAEFF82AA66FFEEA35FFFF4A063FFB3854CFF425B20FF0E5911FF72A9
        ABFF5DB1DFFF3AA17DFF1B9026FF088911FF199326FF206323B4000000000535
        245B4AB38CE767CFA9FF24BD82FF2AC98BFF5DD6A6FF6CD9AFFF6BD9AFFF6ED9
        B0FF55D3A2FF29C98BFF31CD90FF29BE85FF19AE76FF14C17DFF1EC484FF4ED0
        9EFF66D7AAFF63D6A9FF66D7ACFF59D4A5FF26C789FF21C585FF9CE5C9FFB8EC
        D9FF27C789FF75DCB4FFFFFFFFFF90E3C3FF42CF98FFECFBF5FFA5E9CEFF34CC
        91FF45D09AFF76DDB6FF7BDEB8FF7CDFB8FF79DEB7FF92E4C5FFBCF1DEFF73D8
        B0FF659171FFD28A73FFFBA561FFF9A360FFFEA76AFFF2A269FFB28B5FFF8A72
        6EFF7F748BFF7FAEEAFF52A9CBFF359962FF0E8E18FF1D7121D0000000000000
        000000100923083A28611A8D62D329CC8DFF49D09BFF70DAB0FF6DDAAFFF6FDA
        B1FF65D8ABFF3BCF96FF2CBE86FF1AAF76FF15C17EFF1DC483FF4DD09EFF66D7
        AAFF63D6A9FF64D7AAFF66D7ACFF5FD5A8FF2BC88BFF26C788FF2FC98DFF2FC9
        8DFF27C889FFB3ECD6FFE0F7EEFFC2F0DEFF84E0BCFFEAFAF3FFC2F0DEFF37CE
        93FF4BD29DFF7ADEB7FF7CDFB9FF79DEB7FF91E4C4FFBCF1DEFF72D7B3FF6FA0
        75FF9D81CAFF482EE5FF7D55ADFFE2A36CFFF89F5CFFF5A163FFFFA96EFF975E
        4FFF834E4DFFB87573FFB6B7DBFF72BBB4FF14861AFF123A1269000000000000
        000000000000000000000A3E2C662AC68BFF37CD93FF6BD9AEFF70DAB1FF6FDB
        B1FF77DFB6FF57C99EFF1BAF77FF15C07EFF1EC583FF4DD09DFF66D7AAFF63D6
        A9FF64D7AAFF65D7ABFF66D7ABFF68D8ACFF39CC93FF28C88AFF29C88AFF29C8
        8AFF35CC91FFDFF6EEFFDDF6EDFF85E0BDFFE1F7EEFFF4FCF9FF7DDEB9FF36CD
        93FF5BD6A7FF7EDFBAFF78DEB7FF91E4C4FFBBF1DDFF73D8B4FF79A669FFB579
        89FF8479FCFFAEA8FFFF7292FBFF46ADEAFF9BA3A0FFF79F5FFFDC995EFF4F54
        2FFF876258FFC07376FFE7D4CBFF43A64DFF116819D40508040E000000000000
        00000000000000000000010C091A22A372E331CF91FF5AD5A6FF73DBB3FF75DD
        B5FF62CCA4FF24B17CFF15C07DFF1DC483FF4DCF9DFF65D7AAFF63D6A9FF64D7
        AAFF65D7ABFF66D7ABFF68D8ACFF6BD9AEFF55D3A2FF29C88AFF2DC98DFF30CA
        8EFF2ECA8DFF95E4C5FFFFFFFFFFF5FCF9FFF8FDFBFFEFFBF6FF68D9ADFF3ECF
        97FF73DCB3FF7ADFB7FF90E4C4FFBBF1DDFF74D7B4FF73A774FFF2A766FFDF91
        74FF4524D3FF4C57F4FF9DD2FFFFA5E4FFFF72BEE8FFE9A06AFFA77F5CFF276C
        37FF298F36FF6F8053FF729766FF158D25FF1233125F00000000000000000000
        00000000000000000000000000001466489C32CF92FF47D19BFF76DDB5FF6BD4
        ADFF25B17DFF13C07DFF1DC483FF4CD09DFF65D7ABFF63D7A9FF64D7AAFF65D7
        ABFF66D7ABFF68D8ACFF69D9ADFF6AD9AEFF6DD9AFFF46D09AFF2CC98CFF31CB
        8FFF33CB90FF35CC91FF83E1BCFFB2ECD5FF7EDFB9FF66D9ACFF59D6A5FF60D8
        AAFF7BDFB8FF90E4C3FFBBF1DCFF74D8B5FF73A978FFEEAC74FFF0AF7FFFDCB5
        90FFD4957EFFA88392FF3FA9EAFF5DC5FFFFB4C0C0FFDB9767FF8C807BFFBFC4
        C2FF88B992FF2D9B43FF139128FF1C6E24C90303020600000000000000000000
        000000000000000000000000000006261B422DBD86FB3BCF96FF6FDCB1FF49BF
        92FF13BB7BFF19C481FF42CD97FF66D7ABFF63D6A9FF64D7AAFF65D7ABFF66D7
        ABFF68D8ACFF6CD9AEFF6EDAB0FF6FDAB1FF6EDAB0FF6DDAAFFF4BD19DFF33CB
        91FF32CB90FF33CC90FF2DCB8DFF2DCB8EFF31CC90FF3BCF95FF5ED8A8FF7BDF
        B8FF8FE3C3FFBBF0DDFF75D8B5FF72AF7FFFEFB683FFFBB47EFFD3BBA6FFCCD3
        D9FFDFD5C5FFE9BC90FFCCA986FFB6A590FFEBA571FFAE826AFF999B9EFFE3E1
        E3FFE7DCE5FF65AA73FF18912BFE112D11500000000000000000000000000000
        0000000000000000000000000000000302081F8B63C83AD498FF5CD7A7FF37B8
        87FF15C17EFF20C585FF59D3A4FF64D7AAFF64D7AAFF65D7ABFF66D7ABFF68D8
        ACFF6AD9AEFF58D4A3FF44CF98FF56D4A3FF6FDBB1FF71DBB2FF74DBB3FF63D7
        AAFF4ED39FFF45D09AFF44D09AFF4AD29EFF59D6A6FF71DCB3FF7CDFB8FF8FE4
        C3FFBCF1DCFF76D9B6FF71B182FFF0C092FFFDC291FFE9BD98FFCACBCCFFD5D5
        D6FFE1E4E6FFDADEE1FFDAC2AFFFFCAA6BFFD89963FF6F7065FFB9B6BBFFD3CE
        D3FFB2BFB4FF2EA445FF1E6E26B9010000020000000000000000000000000000
        0000000000000000000000000000000000000D4631703ACE95FF4AD49FFF38B9
        88FF18C17FFF20C585FF59D3A4FF66D7ABFF65D7ABFF66D7ABFF68D8ACFF6AD9
        AEFF5FD6A7FF2EC98DFF28C88AFF2DCA8EFF5ED6A8FF73DBB3FF73DBB3FF78DD
        B6FF79DEB6FF76DCB5FF76DDB5FF7ADEB7FF7FE0BAFF7CDFB8FF8FE3C2FFBBF0
        DCFF77D9B6FF72B486FFF0C49AFFFEC89BFFF9C494FFE5C2A3FFCDCCCBFFC8CC
        CFFFD3D4D5FFD0D2D6FFD4C1B1FFF7AF78FF777443FF337938FF76A875FFA8B1
        A8FF5BA56BFF1F9A33FB0E250F3F000000000000000000000000000000000000
        00000000000000000000000000000000000002120D232EAC7DED4BD9A2FF37BF
        8CFF14B577FF1CC684FF3DCD95FF68D8ACFF67D7ACFF68D8ACFF69D8ADFF6CDA
        AFFF59D4A5FF2AC88BFF2FCA8DFF2CC98DFF57D5A3FF76DCB4FF74DCB4FF76DD
        B5FF78DDB6FF7ADDB7FF7CDFB8FF7DDFB9FF79DFB7FF8EE3C2FFBCF1DDFF78D9
        B6FF70B588FFEFC8A0FFFFCDA4FFF8C99DFFF8C496FFF6BD8AFFE9B68BFFCCB4
        A2FFBABBBBFFBBBBBBFFECB386FFCC9966FF34632DFF39953BFF389A37FF3F94
        3FFF279B38FF1E6326A900000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000017694BA15CE0ACFF7AE0
        B8FF44BB8FFF1CBA7EFF21C787FF47CF9AFF6AD9AEFF6AD9AEFF6AD9AEFF6CD9
        AFFF6AD9AEFF43CF99FF32CB8FFF41CF98FF6DDAAFFF75DCB5FF76DDB4FF78DD
        B6FF79DDB6FF7ADEB7FF7CDFB8FF79DFB7FF8DE3C2FFBDF1DCFF85E3BFFF79BF
        90FFEFCCA5FFFFD1A9FFF9CDA5FFF8C89CFFF6BF8FFFF5B784FFF5AF77FFF2A8
        6EFFDDA780FFDAAA86FFF4AA74FF6F6F40FF2E7B32FF409F3FFF3A9838FF3396
        30FF379034F40C1B0B3100000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000002150F272A9B70D987EA
        C4FFB2F5DBFF58C89FFF20C486FF24CA89FF4BD09CFF6DD9AFFF6CD9AFFF6DDA
        AFFF70DAB1FF70DBB1FF67D8ABFF70DAB2FF76DCB5FF76DDB5FF77DDB6FF79DE
        B7FF7ADEB8FF7CDFB8FF79DEB7FF8DE3C2FFBDF1DDFF82E1BEFF307C58BFC6A0
        7DD5FFDDB5FFFFD8B0FFF9CBA2FFF6C295FFF5B987FFF4B17DFFF1AA72FFF1A6
        69FFF3A365FFFAA66AFFC0915EFF30632BFF3D963DFF3C9A3AFF379533FF399C
        34FF265822990000000000000000000000000000000000000000000000000000
        000000000000000000000000000000000000000000000000000000130D261461
        4593379370C7338768BC137351B925C487FF29CC8CFF4ED19EFF70DAB1FF6FDA
        B0FF70DBB1FF72DBB2FF76DCB5FF75DDB5FF76DDB5FF77DDB6FF79DDB6FF7BDE
        B8FF7CDFB8FF79DEB6FF8DE2C1FFBDF2DEFF87E4C1FF186D4EA800010008130C
        08137F5E4880E6B892EAFFD5A7FFFBC191FFF4B381FFF2AC76FFF0A76BFFEFA3
        64FFF1A363FFEA9F67FB5B5E34D43D893EFF459D42FF388E35FF349130FF3789
        31EE091508270000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        00000000000800000003000101061160439829C78BFF2DCD8FFF51D3A0FF73DC
        B3FF72DBB2FF73DBB3FF74DCB4FF76DDB5FF77DDB6FF79DDB6FF7ADEB7FF7CDF
        B8FF79DEB7FF8CE3C1FFBDF2DEFF87E5C1FF187150AA0002000A000000000000
        00000000000024160F248E694F8FEEB487F4FFBD87FFF5A871FFEFA064FFED9E
        5EFFF6A564FFA56D49BA030701131A3D185B3E833AD044963FFF3F9638FF224C
        1E87000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000051262459B2CC98DFF32CE92FF55D4
        A3FF76DCB4FF75DCB4FF76DDB5FF77DDB6FF79DDB6FF7ADEB8FF7CDFB8FF79DE
        B7FF8BE2C1FFBDF2DDFF88E5C2FF197251AC0003010C00000000000000000000
        000000000000000000000000000035231935A67655A9F1A775FBFBA369FFF69C
        5DFFE89961FE382418450000000000000000030D031120491C701F4E1C850308
        0310000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        000000000000000000000000000000000000000100061264469D31CB90FF36D0
        94FF5AD6A6FF78DEB6FF78DDB6FF79DEB7FF7BDEB8FF7CDFB8FF79DEB7FF8AE2
        C0FFBCF1DDFF8BE7C3FF1A7353AE0004010E0000000000000000000000000000
        00000000000000000000000000000000000000000000462F2247B67A57BBE396
        65E97B4F348E0000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        00000000000000000000000000000000000000000000000100061365479E34CC
        93FF3AD196FF5ED7A8FF7CDEB8FF7DDFB9FF7EE0B9FF79DFB7FF8AE2C0FFBCF1
        DCFF8CE7C4FF1A7553B10004010D000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000020101022115
        1021000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000101071568
        49A039CE95FF40D39AFF59D6A5FF6ADAAFFF68DBAEFF84E1BDFFBCF1DDFF8DE8
        C5FF1B7754B20004020F00000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000002
        010716694BA23DD098FF58DBA8FF69DBAFFF86E3BFFFBCF3DEFF8CE8C5FF1D77
        56B3000502100000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000201081667489E46C797FB83E3BEFF9FEACCFF76D6B1FE1C7354AC0006
        0311000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        000000000000000000000532225B137854C0137E55C600392468000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000}
      TabOrder = 3
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      ParentFont = False
      OnClick = BtnFecharVendaClick
    end
    object BtnCancelarVenda: TcxButton
      Left = 521
      Top = 1
      Width = 130
      Height = 60
      Align = alClient
      Caption = 'CANCELAR'#13'VENDA'#13'[F5]'
      Enabled = False
      LookAndFeel.NativeStyle = False
      LookAndFeel.SkinName = 'Metropolis'
      OptionsImage.Glyph.Data = {
        76240000424D762400000000000036000000280000003A000000280000000100
        2000000000004024000000000000000000000000000000000000000000000000
        0006000000090000000E00000011000000110000001100000011000000110000
        0011000000110000001100000011000000110000001100000011000000110000
        0011000000110000001100000011000000110000001100000011000000110000
        0011000000110000001100000011000000110000001100000011000000110000
        01110D1C24322E526675528CA7B84F9DC7DF3E98CEF13481BAF5255D9CEC2147
        87D41D3270A112194F620C103A47080A283302040F1600000203000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000040000000908402C7E11865BD7128D5FDE128D5FDE128D5FDE128D
        5FDE128D5FDE128D5FDE128D5FDE128D5FDE128D5FDE128D5FDE128D5FDE128D
        5FDE128D5FDE128D5FDE128D5FDE128D5FDE128D5FDE128D5FDE128D5FDE128D
        5FDE128D5FDE128D5FDE128D5FDE128D5FDE128D5FDE128D5FDE128D5FDE128D
        5FDE128E5FDE218D7CE05AB6E5F377CCF1FD8DD2EFFF71BAECFF4B87ECFF3652
        ECFF3346EDFF3443F1FF3543F3FF3543F3FE333FEEF9303CDEEC2933C1CE1419
        656C01020E100000000000000000000000000000000000000000000000000000
        0000000000000000000002120D23118157C619BD7EFF19C280FF18C380FF18C3
        80FF18C380FF18C380FF18C380FF18C380FF18C380FF18C380FF18C380FF18C3
        80FF18C380FF18C380FF18C380FF18C380FF18C380FF18C380FF18C380FF18C3
        80FF18C380FF18C380FF18C380FF18C380FF18C380FF18C380FF18C380FF18C2
        80FF18B97AFF17B177FF17A36FFF2DA99EFF69C4F0FF87D4F4FF6AA6F4FF4563
        F5FF3645F4FF3643F4FF3643F4FF3643F4FF3643F4FF3643F4FF3643F4FF3643
        F4FF3643F4FF3440ECF82933BDC71116565A0001040400000000000000000000
        0000000000000000000000000000000000000D6041941AC07FFE1BC382FF1BC3
        82FF29C589FF32C88EFF32C88EFF32C88EFF32C88EFF32C88EFF32C88EFF32C8
        8EFF32C88EFF32C88EFF32C88EFF32C88EFF32C88EFF32C88EFF32C88EFF32C8
        8EFF32C88EFF32C88EFF32C88EFF32C88EFF32C88EFF32C88FFF31C88DFF2FC6
        8BFF21BA7FFF17A470FF17B277FF17B77AFF17AB73FF2BB7A0FF88DFF5FF578E
        F1FF3644F2FF3643F4FF3643F4FF3643F4FF3643F4FF3643F4FF3643F4FF3643
        F4FF3643F4FF3643F4FF3643F4FF3643F4FF3643F4FF323FE8F31920737C0204
        0B0E000000000000000000000000000000000000000000000000179C69DF1DC4
        83FF25C587FF55D2A0FF61D5A7FF62D6A8FF62D6A8FF62D6A8FF62D6A8FF62D6
        A8FF62D6A8FF62D6A8FF62D6A8FF62D6A8FF62D6A8FF62D6A8FF62D6A8FF63D6
        A8FF5FD5A7FF59D3A3FF5BD3A4FF62D5A8FF63D6A8FF62D6A8FF63D6A9FF53C7
        9AFF32B182FF20B57CFF18BA7BFF18C17FFF18B478FF17AF76FF17C180FF20BF
        89FF4688D8FF3849F3FF3643F4FF3643F4FF3643F4FF3643F4FF3643F4FF3643
        F4FF3643F4FF3643F4FF3643F4FF3643F4FF3643F4FF3643F4FF3643F4FF3643
        F4FF3543F0FD2540A2B900010304000000000000000000000000000000000000
        00001AA972EE1FC484FF3FCC95FF63D6A9FF63D6A9FF63D6A9FF63D6A9FF63D6
        A9FF63D6A9FF63D6A9FF63D6A9FF63D6A9FF63D6A9FF63D6A9FF63D6A9FF61D5
        A8FF53D19FFF34C98FFF20C484FF2DC78CFF26C687FF23C486FF3BC590FF48C3
        94FF26AF7BFF16B176FF17C17FFF18C280FF1CC282FF1BB67AFF17AF76FF18C2
        80FF1DC282FF3EA2B3FF3646F1FF3643F3FF3643F4FF3643F4FF3542F4FF3441
        F4FF3441F4FF3542F4FF3643F4FF3643F4FF3643F4FF3441F4FF3441F4FF3542
        F4FF3643F4FF3643F4FF3643F4FF3445EDFB0D11404400000001000000000000
        000000000000000000001CAA74EF20C485FF4BCF9CFF64D7AAFF64D7AAFF64D7
        AAFF64D7AAFF64D7AAFF64D7AAFF64D7AAFF64D7AAFF64D7AAFF64D7AAFF64D7
        AAFF65D7AAFF3ECC95FF21C485FF21C485FF1EC483FFAAE8D1FF6ACDA7FF17A3
        6FFF17B276FF18BE7DFF18C17FFF18C280FF1AC280FF38CA90FF41BD8FFF17AF
        75FF17C17FFF1EC383FF54CFA2FF4069DEFF3643F4FF3643F4FF3643F4FF3643
        F4FF3340F4FF535EF5FF3F4BF4FF3441F4FF3643F4FF3643F4FF3441F4FF3744
        F4FF4E59F4FF3240F4FF3542F4FF3643F4FF3643F4FF3543F3FE2B35C7D20304
        1314000000000000000000000000000000001EAB75EF23C587FF4ED09DFF66D7
        ABFF66D7ABFF66D7ABFF66D7ABFF66D7ABFF66D7ABFF66D7ABFF66D7ABFF66D7
        ABFF66D7ABFF66D7ABFF44CE98FF24C687FF25C687FF3CC38FFF4EBE94FF38B8
        88FF18B579FF18C180FF18C280FF1BC281FF2FC88CFF46CD98FF5CD4A5FF4AC1
        94FF1BB379FF18C280FF1EC383FF4ECE9EFF51A4C1FF3749EFFF3643F4FF3643
        F4FF3542F4FF3441F4FF727BF7FFE5E7FDFFAFB4FAFF414CF4FF3340F4FF3442
        F4FF434FF4FFAAAEF9FFE2E4FDFF7982F7FF3643F4FF3542F4FF3643F4FF3643
        F4FF3542F1FC13185D62000000000000000000000000000000001FAC76EF26C7
        89FF50D29FFF68D8ADFF68D8ADFF68D8ADFF68D8ADFF68D8ADFF68D8ADFF68D8
        ADFF68D8ADFF68D8ADFF68D8ADFF59D3A4FF24C486FF22BA80FF18A471FF13B1
        75FF19C280FF18C280FF19C281FF1EC283FF3ACA93FF5FD3A6FF61D6A8FF60D5
        A7FF48C092FF14AD74FF18C281FF1FC383FF57D2A2FF5ECEABFF4477D8FF3643
        F4FF3643F4FF3643F4FF3542F4FF3845F4FFA8AEF9FFF9FAFDFFFCFCFEFFB3B7
        F9FF404DF3FF3845F4FFAEB3F9FFFEFEFFFFFCFCFEFFB4B9FAFF3C49F4FF3542
        F4FF3643F4FF3643F4FF3643F4FF20299AA20000000000000000000000000000
        000021AC77EF28C789FF51D29FFF6AD9ADFF6AD9ADFF6AD9ADFF6AD9ADFF5DD5
        A6FF4CD19DFF60D5A7FF6AD9ADFF6AD9AEFF59CA9FFF2EB07FFF19B479FF18B9
        7BFF18C180FF19C280FF1BC282FF35C98FFF4ECF9DFF5CD3A5FF62D5A8FF62D6
        A8FF64D7AAFF47BE92FF1AB479FF18C280FF20C383FF52D09FFF60D5A7FF5CC3
        B1FF3B58E7FF3643F4FF3643F4FF3643F4FF3643F4FF3542F4FF414DF4FFA9AF
        F9FFF9FAFEFFFCFCFEFFBDC2FAFFB6BCFBFFF9FAFEFFFCFCFEFFAAAFF9FF404C
        F4FF3441F4FF3643F4FF3643F4FF3643F4FF3643F4FF2C37CBD7000000000000
        0000000000000000000022AC78EF2BC88CFF54D3A2FF6CD9AFFF6CD9AFFF6CD9
        AFFF5AD4A5FF2AC88AFF2BC88BFF2DC388FF48C394FF29AF7EFF14B275FF17C0
        7FFF18C280FF1BC282FF28C588FF3FCB95FF5BD3A5FF5FD4A6FF4ECF9CFF34C8
        8FFF26C688FF24C587FF26B67FFF15B075FF18C280FF21C485FF54D1A0FF61D6
        A8FF62D6A8FF5CC0B4FF384DEDFF3643F4FF3643F4FF3643F4FF3643F4FF3643
        F4FF3542F4FF3B47F4FFA4AAF9FFF7F8FDFFFFFFFFFFFFFFFFFFF7F8FEFFADB3
        F9FF404DF4FF3441F4FF3643F4FF3643F4FF3643F4FF3643F4FF3643F4FF303C
        DEEA0000000000000000000000000000000024AC79EF2EC98DFF57D3A3FF6ED9
        AFFF6ED9AFFF6ED9AFFF4CD19EFF2ABF86FF1CA673FF17B177FF18BF7EFF18C1
        7FFF18C280FF1BC281FF37CA92FF58D2A3FF5ED5A6FF61D5A7FF5DD4A5FF2CC7
        8BFF29C688FF7BDBB6FF1EC383FF1DB179FF16B478FF18C280FF20C384FF5AD2
        A3FF60D5A7FF61D6A8FF62D6A9FF5CBCB6FF3748F0FF3643F4FF3643F4FF3643
        F4FF3643F4FF3643F4FF3542F4FF3340F4FF4A56F4FFE3E5FDFFFFFFFFFFFFFF
        FFFFDBDDFCFF4653F4FF3240F4FF3643F4FF3643F4FF3643F4FF3643F4FF3643
        F4FF3643F4FF333FEEF90000000000000000000000000000000026AE7AEF31CA
        8FFF59D5A5FF70DBB2FF62CFA5FF43BC8FFF25B47EFF18B578FF18C07FFF18C2
        80FF1BC282FF2FC78CFF45CD99FF5BD3A4FF62D6A8FF61D6A8FF62D6A8FF5DD4
        A6FF2DC78BFF20C484FF36CA90FFE9F8F2FF5EC49DFF17B378FF18C281FF21C3
        85FF53D1A0FF61D6A8FF62D6A8FF63D7AAFF64D7AAFF5EC1B5FF384FEDFF3643
        F4FF3643F4FF3643F4FF3643F4FF3643F4FF3441F4FF4954F4FFBABFFBFFFAFB
        FDFFFAFBFEFFFBFBFEFFFBFBFEFFC3C7FBFF4E59F5FF3340F4FF3542F4FF3643
        F4FF3643F4FF3643F4FF3643F4FF2F3BDBE70000000000000000000000000000
        000028AE7CEF34CB91FF5BD5A6FF51C097FF16AD74FF19C280FF18C280FF1AC3
        81FF1FC384FF38C991FF5DD3A5FF61D6A8FF61D6A8FF62D6A9FF63D6A9FF63D7
        AAFF63D6A9FF3BCA93FF22C586FF25C587FFBFEDDCFF99CFBCFF13B276FF19C2
        81FF22C485FF5ED4A7FF61D6A8FF61D5A8FF61D5A8FF63D5A9FF64D6AAFF60C6
        B3FF3D5BE6FF3643F4FF3643F4FF3643F4FF3542F4FF3441F4FF4853F4FFC7CB
        FBFFFEFEFFFFFAFAFEFFA3A8F8FF989FF9FFF6F7FDFFFEFEFEFFC5C9FAFF4954
        F4FF3441F4FF3542F4FF3643F4FF3643F4FF3643F4FF2A35C6D2000000000000
        000000000000000000002AAF7DEF36CC92FF46C494FF1AB77AFF18C281FF19C2
        81FF31C88DFF4FCF9DFF5CD4A5FF61D5A8FF61D5A8FF62D6A8FF62D6A9FF63D6
        A9FF63D7AAFF64D7AAFF61D5A8FF2AC78AFF22C586FF89E0BEFF90CEB7FF1AB8
        7CFF19C281FF21C384FF56D2A2FF5FD4A7FF40CD96FF2DC78CFF2AC78AFF2BC7
        8AFF31C88DFF3DC799FF447ED2FF3643F3FF3643F4FF3643F4FF3542F4FF3845
        F4FFAAB0FAFFFBFBFEFFF5F6FEFF959BF7FF3B48F3FF3644F4FF9399F8FFF7F8
        FEFFFDFDFEFFB6BCFAFF3C49F4FF3542F4FF3643F4FF3643F4FF3643F4FF1E26
        9198000000000000000000000000000000002CB07EEF3BCE95FF2BB782FF19C1
        80FF1AC281FF3CCA92FF61D5A7FF61D6A8FF61D6A8FF63D6A9FF63D6A9FF63D7
        AAFF64D7AAFF65D7ABFF65D7ABFF66D7ABFF5BD3A4FF26C788FF26C587FF49BC
        92FF14B377FF19C280FF26C487FF5DD3A5FF52D19FFF24C585FF1FC484FF20C4
        85FF21C586FF24C687FF26C788FF29C78AFF2CA3A6FF344CECFF3643F4FF3643
        F4FF3643F4FF3340F4FF5D67F5FFD3D6FCFF999FF8FF3844F4FF3441F4FF3543
        F4FF3945F4FF9097F8FFD0D3FCFF626CF5FF3441F4FF3643F4FF3643F4FF3643
        F4FF343FEEF90F144F52000000000000000000000000000000002EB17FEF3FD0
        98FF23B37DFF1BC281FF23C486FF64D6A9FF62D6A8FF62D6A9FF63D6A9FF64D7
        AAFF64D7AAFF64D7ABFF65D7ABFF66D7ABFF67D7ACFF67D8ACFF54D3A2FF27C8
        89FF1FB17AFF17B87BFF18C280FF21C384FF5BD3A4FF5DD5A6FF22C485FF70D8
        B0FF2FC88CFFA1E6CBFFBEEDDAFF54D3A1FF27C789FF2AC88BFF2CC88CFF3270
        CFFF3643F4FF3643F4FF3643F4FF3643F4FF3442F4FF424EF4FF3946F4FF3441
        F4FF3643F4FF3643F4FF3542F4FF3542F4FF3E4CF4FF3441F4FF3542F4FF3643
        F4FF3643F4FF3643F3FF2531AEBE02020D0E0000000000000000000000000000
        000030B17FEF49D39DFF2CB983FF1DC382FF29C688FF65D7AAFF63D7AAFF64D7
        AAFF64D7ABFF65D7ABFF66D7ABFF67D7ABFF67D7ACFF68D8ACFF69D8ADFF6AD9
        ADFF5BD4A5FF1FB17AFF17B679FF18C280FF28C589FF5AD2A3FF5ED5A6FF28C6
        88FF26C687FFB8EBD7FFF1FAF7FFE5F7F1FFF5FBF9FFF1FBF7FF69D8ADFF2CC9
        8BFF2EC98DFF31ABA6FF354EEAFF3643F3FF3643F4FF3643F4FF3643F4FF3542
        F4FF3542F4FF3643F4FF3643F4FF3643F4FF3643F4FF3542F4FF3542F4FF3643
        F4FF3643F4FF3643F4FF3643F4FF314BDCFF227E50FF1A5A1FA3071907350000
        000000000000000000002FAA7BE67CDFB8FF3DC290FF1FBE81FF21C585FF5ED5
        A7FF65D7ABFF66D7ABFF67D7ABFF68D8ACFF68D8ADFF68D8ACFF66D7ABFF67D7
        ACFF6BD9AEFF6AD8AEFF42B88BFF17B87BFF19C281FF25C587FF5ED4A5FF61D6
        A8FF50D09EFF20C484FF26C688FFE4F6EFFFF2FAF7FFAFEAD3FF68D7ABFFF8FC
        FBFFE5F8F0FF2EC88DFF31CA8EFF33CB90FF35A5ABFF364DEBFF3643F3FF3643
        F4FF3643F4FF3643F4FF3643F4FF3643F4FF3643F4FF3643F4FF3643F4FF3643
        F4FF3643F4FF3643F4FF3643F4FF3543F3FF3344EAFF297876FF158E22FF0F86
        1FFF259031FD1851189C030A0312000000021E7958B264D4A9FDA4E6CCFF2AAA
        7AFF23C687FF38CB91FF67D7ACFF67D8ACFF68D8ACFF69D8ADFF6AD8ADFF3FCD
        96FF2EC98DFF36CA91FF68D9ADFF3BB788FF17B97BFF18C281FF28C688FF5AD3
        A4FF61D5A8FF62D6A8FF44CE98FF22C585FF55D2A1FFFEFEFEFF8AE0BFFF97E4
        C6FFABE8D0FFDCF5EBFFCAF0E2FF2DC98DFF3DCC95FF34CC91FF37CA93FF3DA1
        B5FF3C52ECFF3643F3FF3643F4FF3643F4FF3643F4FF3643F4FF3643F4FF3643
        F4FF3643F4FF3643F4FF3643F4FF3643F4FF3643F4FF2F43D7FF3A707DFF5DAB
        D6FF54A98DFF1D8F2AFF0E8A1CFF138620FF1A7C22EA0E300E5D06261B401C7B
        58B874D3AFFA64C3A0FF21BD82FF26C688FF5FD5A7FF6AD9ADFF6AD9ADFF6BD9
        AEFF60D5A8FF2BC88BFF2DC98DFF2DC78CFF29B17EFF17B87AFF19C280FF2BC5
        8AFF5DD4A5FF61D6A8FF62D6A9FF63D7AAFF40CD97FF23C586FF48CE9AFFF3FB
        F9FFA0E6CBFF2CC88BFFBEEEDBFFF9FDFBFF5FD6A8FF4ED19FFFE6F7F1FF7ADC
        B6FF3ACD94FF44CF9AFF6BBDC3FF4B75DFFF3A4DEEFF3643F3FF3643F4FF3643
        F4FF3643F4FF3643F4FF3643F4FF3643F4FF3643F3FF4249E9FF705FC5FF8B74
        76FF858271FF84838DFF649BD6FF60ADD5FF379768FF198E2AFF10851CFF1C5A
        1EA70000000000040207072D1F4C16684BA91EA573F029C88AFF51D19FFF6BD9
        AEFF6BD9AEFF6CD9AFFF69D7ADFF30C98EFF30CA8EFF20AF79FF17BF7FFF18C2
        80FF26C487FF5CD3A4FF61D6A8FF62D6A8FF63D7AAFF64D7AAFF45CD98FF24C6
        87FF28C789FF47CE9AFF30C98DFF37CB92FFD3F3E6FFF3FBF9FFC2EFDEFF62D7
        A9FFF9FDFCFFAAE9D1FF3BCE95FF4AD19DFF7ADDB8FF78DAB9FF6CBCC5FF5283
        DAFF4F64EDFF3B4CF0FF3544F1FF3542F4FF343FF3FF3A3FECFF7E66B9FFC289
        85FFEA9E66FFF09F63FFDB986BFF6A4E4DFFA05C5AFFAF8C95FF7ABCF3FF3C98
        6BFF127C1DF80C240C4200000000000000000000000000000000105C408F2CC9
        8CFF3BCC94FF6EDAAFFF6EDAAFFF6EDAB0FF6FDAB0FF5BD2A5FF22AE7AFF17B9
        7BFF19C281FF2FC78CFF5ED4A6FF61D5A8FF62D6A9FF63D7A9FF65D7ABFF65D7
        ABFF52D1A0FF27C789FF29C88AFF2CC98BFF2DC98CFF44CF99FFF0FBF7FFB8EC
        D8FF9EE5CAFFD1F3E5FFFAFDFCFF84E0BCFF3ECF96FF58D5A5FF7CDEB8FF7CDF
        B8FF80DFBBFFAAE6D4FF8FD3CDFF479991FF9B7E90FF6F6AF4FFA4A2F7FF6269
        F0FF5897D8FF95A6A8FFEA9D66FFF1A063FFB08253FF63453DFFB27573FFC597
        95FFE2EEE4FF22872EFF206623C00105010A0000000000000000000000000000
        00000524193F2AC087FE2ECA8DFF63D7AAFF70DBB1FF71DBB2FF70DAB1FF39B5
        87FF17BE7EFF19C280FF26C589FF5ED4A6FF62D6A8FF62D6A9FF64D7AAFF65D7
        ABFF66D7ABFF67D8ACFF64D7AAFF2BC78AFF2BC88BFF2ECA8DFF2FCA8EFF3ECD
        95FFDDF5ECFFFCFEFDFFCFF2E4FFF5FBF8FFF3FCF8FF47D09CFF40D098FF6CDA
        AEFF7CDEB9FF7DDEB9FFB2EBD5FFA5E8CEFF51B584FFD8A46BFFE29971FF331F
        E6FF4135EDFFC4D7FCFFAFDFFDFF45B6F8FFC8A07EFFE39962FF375B2AFF1D78
        2DFF80996FFF9A5D54FF59A964FF1D8326FA0614052A00000000000000000000
        000000000000000000000003020718865DD532CA8FFF44CF99FF71DBB2FF6ED8
        B0FF34B284FF17BB7CFF18C280FF31C78DFF60D5A7FF61D6A8FF62D6A9FF63D7
        A9FF65D7ABFF65D7ABFF67D8ACFF68D8ADFF6AD9ADFF5CD5A6FF2EC98DFF2FCA
        8EFF31CA8EFF33CB90FF57D3A4FFBFEEDCFFD8F5E9FF91E2C3FF94E3C5FF59D5
        A5FF59D5A4FF7BDEB8FF7FDFB9FFAEEAD3FF9DE5C9FF53B183FFCAAA75FFF2AC
        72FFE1A97DFFD4917CFFA7759AFF3DA2EFFF57BEFBFF98D3F5FFD7A47DFFBC8B
        6BFF8C8C8AFF9ABA9FFF309342FF2B943AFF118823FE17501B92000000000000
        00000000000000000000000000000000000000000000062F20522FC088FC38CD
        93FF6BD9AEFF5ECCA2FF18B97CFF19C280FF28C588FF5ED3A6FF62D6A8FF62D6
        A9FF64D7AAFF64D7ABFF66D7ABFF67D7ACFF69D8ADFF6AD9ADFF6BD9AEFF6CD9
        AFFF54D3A2FF34CB90FF33CB90FF36CC92FF37CC92FF36CC92FF37CC92FF3DCE
        95FF3FCF97FF57D5A4FF7DDFB8FF83E0BCFFB2EBD6FF9AE4C8FF56B787FFD3B1
        7FFFF4B37EFFE3B289FFC9CACBFFCFC5BDFFE2B089FFCAA888FF86ABB9FFACA6
        9AFFE29E6CFF887972FFC5C5C5FFDADADAFFD1D0D1FF2D963FFF238C31F30818
        082C000000000000000000000000000000000000000000000000000000000003
        0206259C6FD838CC93FF5ED7A8FF43BC8FFF17BF7EFF1AC281FF53D2A0FF61D6
        A8FF62D6A9FF63D7AAFF65D7ABFF65D7ABFF67D7ACFF69D8ACFF5CD4A6FF5BD4
        A5FF6CD9AFFF6DD9AFFF6FDAB1FF6CD8AEFF48D09BFF37CC92FF38CD93FF3ACE
        95FF3CCE95FF48D09CFF6FDBB0FF7BDEB7FF77DDB6FFB2EBD5FFA0E7CCFF4EB1
        83FFDFBD90FFF5BF8FFFF1B989FFCAC4BFFFCECECEFFDEDEDEFFDEDDDCFFCEC5
        BDFFE8AA7AFFF1A56CFFA47F68FF878787FFCACACAFFCBCBCBFF95B49AFF1E9A
        35FF1A4C1B8B0000000000000000000000000000000000000000000000000000
        00000000000000000000125D42913CCE96FF48D19CFF46BC90FF19BF7FFF1DC3
        82FF58D3A2FF62D6A9FF64D7AAFF65D7ABFF66D7ABFF67D7ACFF68D8ACFF46CE
        99FF2BC88BFF2CC98CFF47CF9AFF6FDAB0FF71DBB2FF73DBB3FF74DCB3FF70DB
        B1FF69D9AEFF6ADAAEFF72DBB3FF7BDEB7FF7DDFB9FF86E0BEFFB3ECD6FF92E2
        C3FF56B588FFD5C095FFF7C59AFFF7C394FFE9C09CFFD0CFCEFFCDCDCDFFD7D7
        D7FFD5D5D5FFCECBCAFFE9B083FFD39E6AFF3F6433FF6A996BFFAAB3AAFFADB6
        AFFF2A9B40FF238330D800020004000000000000000000000000000000000000
        0000000000000000000000000000000000000420163B34BE8AFD41D098FF45C6
        95FF1BBC7EFF1DC383FF3CCB93FF64D6AAFF65D7ABFF66D7ABFF68D8ACFF69D8
        ADFF67D7ABFF35CA91FF2EC98DFF2FCA8EFF3ACC93FF71DAB2FF72DBB2FF74DC
        B4FF75DCB4FF77DDB5FF78DDB6FF7ADEB7FF7BDEB8FF7DDFB9FF7BDEB8FFB2EB
        D5FFA2E6CDFF54B386FFEBC8A0FFF8CAA0FFF8C79DFFF7C496FFF6BE8CFFE3B5
        8EFFC3BAB1FFBFBEBEFFC0C0C1FFCAB6A4FFF2B07AFF7D7244FF327933FF3F9C
        3EFF3B9539FF3E9749FF1B9533FF1640196B0000000000000000000000000000
        000000000000000000000000000000000000000000000000000000020104197D
        59C556D3A3FF5FD5A7FF25AD7BFF1DBF81FF20C585FF46CD99FF67D7ABFF67D8
        ACFF69D8ADFF6AD9ADFF6AD8ADFF47CF9AFF2DC98DFF30CA8EFF48D09CFF72DA
        B2FF73DCB4FF75DDB4FF76DDB5FF78DDB6FF79DDB6FF7BDEB8FF7DDFB8FF86E0
        BDFFB3EBD6FF8FE0C1FF4DAE81FFDAC7A0FFF9CDA6FFF9CBA2FFF7C89DFFF6C0
        91FFF4B886FFF3B27CFFEDAA76FFDEA882FFC7AD99FFEBA976FFC09160FF3062
        2AFF3D943CFF3D9A3AFF389635FF339432FF338434E30207020E000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        000000000000051F153432AE7FEB91E3C3FFAEEAD2FF4BB890FF22C083FF24C6
        87FF4CD09DFF67D7ABFF6AD9AEFF6BD9AEFF6DD9AFFF6EDAB0FF5BD5A6FF5BD4
        A5FF71DAB2FF73DCB4FF75DCB4FF77DDB6FF78DDB6FF7ADEB7FF7BDEB8FF7BDF
        B8FF84E0BCFFB2EBD5FF94E2C4FF449C74E1E9C39CFAF9D0AAFFF9CFA8FFF8CB
        A1FFF6C396FFF4BA89FFF3B37EFFF1AB75FFF0A76CFFF0A369FFF0A269FFEBA2
        6DFF636D3AFF337933FF3D9A3CFF399637FF359431FF379132F80A1D08390000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000010523193C228D67DA4AC496FE48C1
        94FE199066EF24C284FF29C889FF4AD09CFF6CD9AEFF6CD9AFFF6EDAB0FF6FDA
        B0FF71DBB2FF72DBB2FF73DBB3FF74DCB4FF76DDB5FF78DDB6FF79DDB6FF7BDE
        B8FF7DDFB8FF83E0BCFFB4EBD6FF8FE1C1FF1C845FD3040E09181C140F1DCD97
        74CFF9D3ADFFF7C79DFFF5BE8FFFF4B583FFF2AD78FFF0A86EFFEFA466FFF0A2
        64FFF0A166FFBF8F5FFE36662FFF40963FFF3B9338FF378F33FF31922DFF2C68
        28B4000100020000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000004
        020702150E2802150E280107040D1164459D28C488FF2CC98CFF4CD09DFF6CD9
        AFFF6FDBB1FF71DBB2FF72DBB3FF73DCB4FF75DCB4FF76DDB5FF78DDB6FF7ADE
        B7FF7BDEB8FF7CDEB8FF8BE2C0FFB3EBD6FF89DFBFFF227D5BB9000A06110000
        0000000000000502010556392A57BD8F6DC0F6BC8EFFF3B17FFFF0A872FFEFA2
        67FFED9F60FFEE9F5FFFDE9761F3281B0E401B3D196C3E8639D4418F3EFE3387
        2FFF3D9036FE0E230C4000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        00000000000000000000000000000000000000000000000302060F6546AF2AC0
        87FC30CA8FFF51D2A0FF71DAB1FF72DBB3FF74DCB4FF75DCB4FF77DDB5FF78DD
        B6FF7ADEB7FF7CDFB8FF7DDFB9FF83E0BCFFB4ECD6FF8DDEBFFD1C7D5AC50006
        040B00000000000000000000000000000000000000000000000050322251DBA1
        77E0EEA471FCEE9A62FFEC985BFFED995BFF87593A9D00000000000000000004
        00071F541B7F4B9142E61B461883000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        000000020205105D40942FC48BFF34CB90FF4ED19FFF72DBB3FF75DCB4FF76DD
        B5FF78DDB6FF79DDB6FF7BDEB8FF7CDEB8FF8DE2C2FFB3ECD6FF81DDBAFF1E76
        56B5010A07120000000000000000000000000000000000000000000000000000
        000000000000130B07135A3C2B5CDF9668E6EE9E6AFFDF9362F925160F2E0000
        0000000000000000000000000000000400080000000100000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000302060E5C409930BD88F938CD93FF55D4
        A3FF75DCB4FF78DDB6FF7ADEB7FF7BDEB8FF7BDFB8FF87E1BFFFB3EBD6FF86DC
        BAFC1C7352B10006040B00000000000000000000000000000000000000000000
        000000000000000000000000000000000000000000000000000053342454130A
        0618000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000301040E57
        3C9036C68EFF3DCE95FF51D3A0FF79DDB5FF7CDEB8FF7CDFB8FF8CE2C1FFB4ED
        D7FF7DDBB7FF167250B80007040D000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        000000000000000302060F523A8637BF8BF846D19CFF51D4A1FF5BD6A7FF82E0
        BCFFB3ECD6FF7EDBB7FD1B6B4EA20005040A0000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        000000000000000000000000000000000000000201030D543B8F3BC28FF986E0
        BDFEB3EBD6FFB1EAD5FF75D5B1FB116A4BB50004030800000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000210
        0B1C145D428E309F75D847B189E8369673CC114F387E00040308000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000}
      TabOrder = 4
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      ParentFont = False
      OnClick = BtnCancelarVendaClick
    end
    object BtnAlterarPreco: TcxButton
      Left = 651
      Top = 1
      Width = 130
      Height = 60
      Align = alClient
      BiDiMode = bdRightToLeft
      Caption = 'ALTERAR'#13'PRE'#199'O'#13'[F6]'
      Enabled = False
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
        000000000000000000000000000000000000000000000000000004040306363C
        2A5B667150AC849267DF94A474FA94A474FA849267DF667150AC363C2A5B0404
        0306000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000031362653828F65DB97A7
        76FF97A776FF97A776FF97A776FF97A776FF97A776FF97A776FF97A776FF828F
        65DB323727540000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000020201035760449397A776FF97A776FF97A7
        76FF97A776FF97A776FF97A776FF97A776FF97A776FF97A776FF97A776FF97A7
        76FF97A776FF5861449402020103000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000525A408A97A776FF97A776FF97A776FF97A7
        76FF97A776FF97A776FF59624596090A070F97A776FF97A776FF97A776FF97A7
        76FF97A776FF97A776FF525A408A000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        000000000000000000003238275597A776FF97A776FF97A776FF97A776FF97A7
        76FF88976AE66E7956B939402D610607050A737F5AC295A575FC97A776FF97A7
        76FF97A776FF97A776FF97A776FF323827550000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        00000000000004040306869569E397A776FF97A776FF97A776FF97A776FF3940
        2D6101010102000000000000000000000000000000001E211833869569E397A7
        76FF97A776FF97A776FF97A776FF87956AE40405030700000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        000000000000363C2A5B97A776FF97A776FF97A776FF97A776FF97A776FF2427
        1C3C191C132A3F46326B3035255105050408292E204600000000292E204697A7
        76FF97A776FF97A776FF97A776FF97A776FF363C2B5C00000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        00000000000065704FAB97A776FF97A776FF97A776FF97A776FF97A776FF7E8B
        62D497A776FF97A776FF59624596090A070F737F5AC2000000000607050A97A7
        76FF97A776FF97A776FF97A776FF97A776FF667150AC00000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        000000000000808E64D997A776FF97A776FF97A776FF97A776FF97A776FF97A7
        76FF97A776FF97A776FF596245960708060C373D2B5D000000001B1E152E97A7
        76FF97A776FF97A776FF97A776FF97A776FF859368E000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000008F9E70F297A776FF97A776FF97A776FF97A776FF97A776FF97A7
        76FF92A272F75E684A9F1C1F163000000000000000000809060D76825CC797A7
        76FF97A776FF97A776FF97A776FF97A776FF93A373F900000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        00000000000093A273F897A776FF97A776FF97A776FF97A776FF97A776FF7B88
        60CF12140E1F000000000000000001010001333828567F8D63D797A776FF97A7
        76FF97A776FF97A776FF97A776FF97A776FF93A373F900000000000000000000
        0000000000000000000000000000030506062946555B4D84A1AC64ABD0DF70C0
        E9FA0D161B1D859368E097A776FF97A776FF97A776FF97A776FF97A776FF1E21
        183300000000090A0710292D2045090A070F97A776FF97A776FF97A776FF97A7
        76FF97A776FF97A776FF97A776FF97A776FF859368E000000000000000000000
        0000000000000000000025404D5362A8CCDB72C4EEFF72C4EEFF72C4EEFF72C4
        EEFF223B484D65704FAB97A776FF97A776FF97A776FF97A776FF97A776FF0000
        000000000000697452B159624596090A070F97A776FF97A776FF97A776FF97A7
        76FF97A776FF97A776FF97A776FF97A776FF667150AC00000000000000000000
        0000010203034271899372C4EEFF72C4EEFF72C4EEFF72C4EEFF72C4EEFF72C4
        EEFF42728A94363C2A5B97A776FF97A776FF97A776FF97A776FF97A776FF1C1F
        162F000000002B2F21483F46326B0708060C697452B1383E2C5F7F8C63D697A7
        76FF97A776FF97A776FF97A776FF97A776FF363C2B5C00000000000000000000
        00003E6A818A72C4EEFF72C4EEFF72C4EEFF72C4EEFF72C4EEFF72C4EEFF72C4
        EEFF6AB6DDED0A0F1115869569E397A776FF97A776FF97A776FF97A776FF7683
        5DC80D0E0A1600000000000000000000000000000000000000007C8A61D297A7
        76FF97A776FF97A776FF97A776FF87956AE40404030600000000000000002641
        4F5572C4EEFF72C4EEFF72C4EEFF72C4EEFF72C4EEFF6EBCE5F53860757D1423
        2A2D080D1011030506063237275497A776FF97A776FF97A776FF97A776FF97A7
        76FF8F9E70F15F694BA1292D204504040306454D3675616B4CA493A373F997A7
        76FF97A776FF97A776FF97A776FF3237275400000000000000000305060665AE
        D4E372C4EEFF72C4EEFF72C4EEFF72C4EEFF70C0E9FA1A2D373B000000000000
        00000C15191B05080A0B00000000515A3F8997A776FF97A776FF97A776FF97A7
        76FF97A776FF97A776FF59624596090A070F97A776FF97A776FF97A776FF97A7
        76FF97A776FF97A776FF515A3F890000000000000000000000002946555B72C4
        EEFF72C4EEFF72C4EEFF72C4EEFF72C4EEFF43738B950000000004060708538E
        ADB972C4EEFF71C2ECFD4F88A5B10E171B1F515A3F8997A776FF97A776FF97A7
        76FF97A776FF97A776FF97A776FF97A776FF97A776FF97A776FF97A776FF97A7
        76FF97A776FF515A3F89020201030000000000000000000000004C83A0AB72C4
        EEFF72C4EEFF72C4EEFF72C4EEFF5FA4C7D5182A323600000000223B484D5B9D
        BECC5B9DBECC5FA4C7D572C4EEFF64ABD0DF1422292C30352551828F65DB97A7
        76FF97A776FF97A776FF97A776FF97A776FF97A776FF97A776FF97A776FF828F
        65DB31362652000000000000000000000000000000000000000061A7CBD972C4
        EEFF72C4EEFF72C4EEFF72C4EEFF14232A2D0000000000000000000000000000
        00000000000014232A2D72C4EEFF72C4EEFF6EBEE7F73C677D860B1012163338
        2856626D4DA6849267DF93A373F9909F70F37F8D63D7626D4DA6323827550404
        03060000000000000000000000000000000000000000000000006CBAE2F272C4
        EEFF72C4EEFF72C4EEFF72C4EEFF5491AFBC0000000000000000406E858F5490
        AFBB5490AFBB5999BAC772C4EEFF72C4EEFF72C4EEFF72C4EEFF6AB7DEEE4373
        8B95223A474C0D171C1E00000000000000000000000000000000000000000000
        00000000000000000000000000000000000000000000000000006FBFE7F872C4
        EEFF72C4EEFF72C4EEFF72C4EEFF375F737B0000000000000000233C494E2E4E
        5F662E4E5F663A63788172C4EEFF72C4EEFF72C4EEFF72C4EEFF72C4EEFF72C4
        EEFF72C4EEFF6FBFE8F900000000000000000000000000000000000000000000
        000000000000000000000000000000000000000000000000000064ACD1E072C4
        EEFF72C4EEFF72C4EEFF72C4EEFF213844490406070800000000080D10110F1A
        20220F1A20222138444972C4EEFF72C4EEFF72C4EEFF72C4EEFF72C4EEFF72C4
        EEFF72C4EEFF64ACD1E000000000000000000000000000000000000000000000
        00000000000000000000000000000000000000000000000000004C83A0AB72C4
        EEFF72C4EEFF72C4EEFF72C4EEFF72C4EEFF2E4E5F66000000001C303B3F72C3
        EDFE72C4EEFF72C4EEFF72C4EEFF72C4EEFF72C4EEFF72C4EEFF72C4EEFF72C4
        EEFF72C4EEFF4D84A1AC00000000000000000000000000000000000000000000
        00000000000000000000000000000000000000000000000000002946555B72C4
        EEFF72C4EEFF72C4EEFF72C4EEFF72C4EEFF60A4C8D603050606000000002947
        565C5DA0C2D05B9DBECC3E6B828B72C4EEFF72C4EEFF72C4EEFF72C4EEFF72C4
        EEFF72C4EEFF2947565C00000000000000000000000000000000000000000000
        00000000000000000000000000000000000000000000000000000305060665AE
        D4E372C4EEFF72C4EEFF72C4EEFF72C4EEFF72C4EEFF4A809BA6040607080000
        000000000000000000000D171C1E72C4EEFF72C4EEFF72C4EEFF72C4EEFF72C4
        EEFF66AFD5E40305060600000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000002641
        4E5472C4EEFF72C4EEFF72C4EEFF72C4EEFF72C4EEFF72C4EEFF63ABCFDE3A64
        79822946555B2E4E5F664A809BA672C4EEFF72C4EEFF72C4EEFF72C4EEFF72C4
        EEFF26414E540000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        00003D69808972C4EEFF72C4EEFF72C4EEFF72C4EEFF72C4EEFF72C4EEFF72C4
        EEFF72C4EEFF72C4EEFF72C4EEFF72C4EEFF72C4EEFF72C4EEFF72C4EEFF3D69
        8089000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000010203033D69808972C4EEFF72C4EEFF72C4EEFF72C4EEFF72C4EEFF72C4
        EEFF72C4EEFF72C4EEFF72C4EEFF72C4EEFF72C4EEFF72C4EEFF3D6980890102
        0303000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        00000000000000000000243E4C5162A8CCDB72C4EEFF72C4EEFF72C4EEFF72C4
        EEFF72C4EEFF72C4EEFF72C4EEFF72C4EEFF62A8CCDB253F4D52000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        000000000000000000000000000003050606264250564A809BA664ABD0DF6FBF
        E8F96DBBE3F360A5C9D74A809BA626414F550305060600000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000}
      ParentBiDiMode = False
      TabOrder = 5
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      ParentFont = False
      OnClick = BtnAlterarPrecoClick
    end
    object btn_alterar_quantidade: TcxButton
      Left = 781
      Top = 1
      Width = 130
      Height = 60
      Align = alClient
      Caption = 'ALTERAR'#13'QUANTIDADE'#13'[F7]'
      Enabled = False
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
        000000000000000000000000000097A776FF97A776FF97A776FF97A776FF97A7
        76FF97A776FF97A776FF00000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        000000000000000000000000000097A776FF97A776FF97A776FF97A776FF97A7
        76FF97A776FF97A776FF00000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        000000000000000000000000000097A776FF97A776FF97A776FF97A776FF97A7
        76FF97A776FF97A776FF0000000000000000848484FF848484FF848484FF8484
        84FF848484FF848484FF848484FF000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        000000000000000000000000000097A776FF97A776FF97A776FF97A776FF97A7
        76FF97A776FF97A776FF00000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        000000000000000000000000000097A776FF97A776FF97A776FF97A776FF97A7
        76FF97A776FF97A776FF0000000000000000848484FF848484FF848484FF8484
        84FF848484FF848484FF848484FF848484FF848484FF848484FF848484FF0000
        0000000000000000000000000000000000000000000000000000000000000000
        000000000000000000000000000097A776FF97A776FF97A776FF97A776FF97A7
        76FF97A776FF97A776FF00000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        000000000000000000000000000097A776FF97A776FF97A776FF97A776FF97A7
        76FF97A776FF97A776FF00000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        000000000000000000000000000072C4EEFF72C4EEFF72C4EEFF72C4EEFF72C4
        EEFF72C4EEFF72C4EEFF00000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        000000000000000000000000000072C4EEFF72C4EEFF72C4EEFF72C4EEFF72C4
        EEFF72C4EEFF72C4EEFF00000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        000000000000000000000000000072C4EEFF72C4EEFF72C4EEFF72C4EEFF72C4
        EEFF72C4EEFF72C4EEFF0000000000000000848484FF848484FF848484FF8484
        84FF848484FF848484FF848484FF000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        000000000000000000000000000072C4EEFF72C4EEFF72C4EEFF72C4EEFF72C4
        EEFF72C4EEFF72C4EEFF00000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        000000000000000000000000000072C4EEFF72C4EEFF72C4EEFF72C4EEFF72C4
        EEFF72C4EEFF72C4EEFF0000000000000000848484FF848484FF848484FF8484
        84FF848484FF848484FF848484FF848484FF848484FF848484FF848484FF0000
        0000000000000000000000000000000000000000000000000000000000000000
        000000000000000000000000000072C4EEFF72C4EEFF72C4EEFF72C4EEFF72C4
        EEFF72C4EEFF72C4EEFF00000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        000000000000000000000000000072C4EEFF72C4EEFF72C4EEFF72C4EEFF72C4
        EEFF72C4EEFF72C4EEFF00000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000B8824DFFB8824DFFB8824DFFB8824DFFB882
        4DFFB8824DFFB8824DFF00000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000B8824DFFB8824DFFB8824DFFB8824DFFB882
        4DFFB8824DFFB8824DFF00000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000B8824DFFB8824DFFB8824DFFB8824DFFB882
        4DFFB8824DFFB8824DFF0000000000000000848484FF848484FF848484FF8484
        84FF848484FF848484FF848484FF000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000B8824DFFB8824DFFB8824DFFB8824DFFB882
        4DFFB8824DFFB8824DFF00000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000B8824DFFB8824DFFB8824DFFB8824DFFB882
        4DFFB8824DFFB8824DFF0000000000000000848484FF848484FF848484FF8484
        84FF848484FF848484FF848484FF848484FF848484FF848484FF848484FF0000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000B8824DFFB8824DFFB8824DFFB8824DFFB882
        4DFFB8824DFFB8824DFF00000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000B8824DFFB8824DFFB8824DFFB8824DFFB882
        4DFFB8824DFFB8824DFF00000000000000000000000000000000000000000000
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
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000}
      TabOrder = 6
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      ParentFont = False
      OnClick = btn_alterar_quantidadeClick
    end
    object BtnFecharCaixa: TcxButton
      Left = 261
      Top = 61
      Width = 130
      Height = 61
      Align = alClient
      Caption = 'FECHAR'#13'CAIXA'#13'[F11]'
      LookAndFeel.NativeStyle = False
      LookAndFeel.SkinName = 'Metropolis'
      OptionsImage.Glyph.Data = {
        36100000424D3610000000000000360000002800000020000000200000000100
        2000000000000010000000000000000000000000000000000000B8824DFFB882
        4DFFB8824DFFB8824DFFB8824DFFB8824DFFB8824DFFB8824DFFB8824DFFB882
        4DFFB8824DFFB8824DFFB8824DFFB8824DFFB8824DFF00000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000B8824DFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFB8824DFF00000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000B8824DFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFB8824DFF00000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000B8824DFFFFFF
        FFFFFFFFFFFFC1C1C1FFC1C1C1FFC1C1C1FFC1C1C1FFC1C1C1FFC1C1C1FFC1C1
        C1FFC1C1C1FFC1C1C1FFFFFFFFFFFFFFFFFFB8824DFF00000000000000000000
        000000000000090E1E23344BA4C24362D5FC354EA9C80A0F2026000000000000
        0000000000000000000000000000000000000000000000000000B8824DFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFB8824DFF00000000000000000000
        000000000000344CA5C34463D8FF4463D8FF4463D8FF364EAAC9000000000000
        0000000000000000000000000000000000000000000000000000B8824DFFFFFF
        FFFFFFFFFFFFC1C1C1FFC1C1C1FFC1C1C1FFC1C1C1FFC1C1C1FFC1C1C1FFC1C1
        C1FFC1C1C1FFC1C1C1FFFFFFFFFFFFFFFFFFB8824DFF00000000000000000000
        0000000001014261D3F94463D8FF4463D8FF4463D8FF4362D6FD010203040000
        0000000000000000000000000000000000000000000000000000B8824DFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFB8824DFF00000000000000000000
        000000000000364EABCA4463D8FF4463D8FF4463D8FF3751B0D0000000000000
        0000000000000000000000000000000000000000000000000000B8824DFFFFFF
        FFFFFFFFFFFFFFFFFFFFF6EFE9FFDDC3A9FFC89E75FFBA8552FFC89E75FFDDC3
        A9FFF6EFE9FFFFFFFFFFFFFFFFFFFFFFFFFFB8824DFF00000000000000000000
        0000000000000B10242A3750AECD4463D7FE3852B3D30B11242B000000000000
        0000000000000000000000000000000000000000000000000000B8824DFFFFFF
        FFFFFFFFFFFFF6EFE9FFD1AE8CFFB8824DFFB8824DFFB8824DFFB8824DFFB882
        4DFFD1AE8CFFF6EFE9FFFFFFFFFFFFFFFFFFB8824DFF00000000000000000000
        0000000000000000000000000000020205060000000000000000000000000000
        0000000000000000000000000000000000000000000000000000B8824DFFFFFF
        FFFFFFFFFFFFDDC3A9FFB8824DFFB8824DFFB8824DFFB8824DFFB8824DFFB882
        4DFFB8824DFFDDC3A9FFFFFFFFFFFFFFFFFFB8824DFF000000004463D8FF4463
        D8FF4463D8FF4463D8FF4463D8FF4463D8FF4463D8FF4463D8FF4463D8FF0000
        0000000000000000000000000000000000000000000000000000B8824DFFFFFF
        FFFFFFFFFFFFC89E75FFB8824DFFB8824DFFB8824DFFB8824DFFB8824DFFB882
        4DFFB8824DFFC89E75FFFFFFFFFFFFFFFFFFB8824DFF000000004463D8FF4463
        D8FF4463D8FF4463D8FF4463D8FF4463D8FF4463D8FF4463D8FF4463D8FF0000
        0000000000000000000000000000000000000000000000000000B8824DFFFFFF
        FFFFFFFFFFFFBA8552FFB8824DFFB8824DFFB8824DFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFB8824DFF000000004463D8FF4463
        D8FF4463D8FF4463D8FF4463D8FF4463D8FF4463D8FF4463D8FF4463D8FF0000
        0000000000000000000000000000000000000000000000000000B8824DFFFFFF
        FFFFFFFFFFFFC89E75FFB8824DFFB8824DFFB8824DFFFFFFFFFFCBA37CFFCBA3
        7CFFCBA37CFFD7B89AFFFFFFFFFFFFFFFFFFB8824DFF00000000000000000000
        0000000000000000000000000000000000004463D8FF4463D8FF4463D8FF0000
        0000000000000000000000000000000000000000000000000000B8824DFFFFFF
        FFFFFFFFFFFFDDC3A9FFB8824DFFB8824DFFB8824DFFFFFFFFFFCBA37CFFCBA3
        7CFFCBA37CFFE6D3C0FFFFFFFFFFFFFFFFFFB8824DFF000000004463D8FF4463
        D8FF4463D8FF4463D8FF4463D8FF000000004463D8FF4463D8FF4463D8FF0000
        0000000000000000000000000000000000000000000000000000B8824DFFFFFF
        FFFFFFFFFFFFF6EFE9FFD1AE8CFFB8824DFFB8824DFFFFFFFFFFCBA37CFFCBA3
        7CFFDDC4ABFFF9F4EFFFFFFFFFFFFFFFFFFFB8824DFF000000004463D8FF4463
        D8FF4463D8FF4463D8FF4463D8FF000000004463D8FF4463D8FF4463D8FF0000
        0000000000000000000000000000000000000000000000000000B8824DFFFFFF
        FFFFFFFFFFFFFFFFFFFFF6EFE9FFDDC3A9FFC89E75FFFFFFFFFFD7B89AFFE6D3
        C0FFF9F4EFFFFFFFFFFFFFFFFFFFFFFFFFFFB8824DFF000000004463D8FF4463
        D8FF4463D8FF4463D8FF4463D8FF000000004463D8FF4463D8FF4463D8FF0000
        0000000000000000000000000000000000000000000000000000B8824DFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFB8824DFF000000004463D8FF4463
        D8FF4463D8FF4463D8FF4463D8FF000000004463D8FF4463D8FF4463D8FF0000
        0000000000000000000000000000000000000000000000000000B8824DFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFB8824DFF000000004463D8FF4463
        D8FF4463D8FF4463D8FF4463D8FF000000004463D8FF4463D8FF4463D8FF0000
        0000000000000000000000000000000000000000000000000000B8824DFFB882
        4DFFB8824DFFB8824DFFB8824DFFB8824DFFB8824DFFB8824DFFB8824DFFB882
        4DFFB8824DFFB8824DFFB8824DFFB8824DFFB8824DFF000000004463D8FF4463
        D8FF4463D8FF4463D8FF4463D8FF000000004463D8FF4463D8FF4463D8FF0000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        00000000000000000000000000000000000000000000000000004463D8FF4463
        D8FF4463D8FF4463D8FF4463D8FF000000004463D8FF4463D8FF4463D8FF0000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000004463D8FF4463D8FF4463D8FF4463
        D8FF4463D8FF4463D8FF4463D8FF4463D8FF4463D8FF4463D8FF4463D8FF4463
        D8FF4463D8FF4463D8FF4463D8FF000000004463D8FF4463D8FF4463D8FF4463
        D8FF4463D8FF4463D8FF4463D8FF000000000000000000000000000000000000
        0000000000000000000000000000000000004463D8FF4463D8FF4463D8FF4463
        D8FF4463D8FF4463D8FF4463D8FF4463D8FF4463D8FF4463D8FF4463D8FF4463
        D8FF4463D8FF4463D8FF4463D8FF000000004463D8FF4463D8FF4463D8FF4463
        D8FF4463D8FF4463D8FF4463D8FF000000000000000000000000000000000000
        0000000000000000000000000000000000004463D8FF4463D8FF4463D8FF4463
        D8FF4463D8FF4463D8FF4463D8FF4463D8FF4463D8FF4463D8FF000000000000
        0000000000004463D8FF4463D8FF000000004463D8FF4463D8FF4463D8FF4463
        D8FF4463D8FF4463D8FF4463D8FF000000000000000000000000000000000000
        0000000000000000000000000000000000004463D8FF4463D8FF4463D8FF4463
        D8FF4463D8FF4463D8FF4463D8FF4463D8FF4463D8FF4463D8FF000000000000
        0000000000004463D8FF4463D8FF000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000004463D8FF4463D8FF4463D8FF4463
        D8FF4463D8FF4463D8FF4463D8FF4463D8FF4463D8FF4463D8FF4463D8FF4463
        D8FF4463D8FF4463D8FF4463D8FF000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000004463D8FF4463D8FF4463D8FF4463
        D8FF4463D8FF4463D8FF4463D8FF4463D8FF4463D8FF4463D8FF4463D8FF4463
        D8FF4463D8FF4463D8FF4463D8FF000000000000000000000000000000000000
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
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000}
      TabOrder = 9
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      ParentFont = False
      OnClick = BtnFecharCaixaClick
    end
    object BtnVendaAux: TcxButton
      Left = 391
      Top = 61
      Width = 130
      Height = 61
      Align = alClient
      Caption = 'VENDA'#13'AUXILIAR'#13'[F12]'
      Enabled = False
      LookAndFeel.NativeStyle = False
      LookAndFeel.SkinName = 'Metropolis'
      OptionsImage.Glyph.Data = {
        36190000424D3619000000000000360000002800000028000000280000000100
        2000000000000019000000000000000000000000000000000000000000000000
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
        0000000000000000000000000000010101020101010201010102010101020101
        0102010101020101010201010102010101020101010201010102010101020101
        0102010101020101010201010102010101020101010201010102010101020101
        0102010101020101010201010102010101020101010201010102010101020101
        0102010101020000000000000000000000000000000000000000000000000000
        0000000000000000000000000000588B35FF588B37FF588B37FF588B37FF588B
        37FF588B37FF588B37FF588B37FF588B37FF588B37FF588B37FF588B37FF588B
        37FF588B37FF588B37FF588B37FF588B37FF588B37FF588B37FF588B37FF588B
        37FF588B37FF588B37FF588B37FF588B37FF588B37FF588B37FF588B37FF588B
        37FF588B35FF1019083100000000000000000000000000000000000000000000
        0000000000000000000000000000588B35FFB1DCAEFFB1DCAEFFB1DCAEFFB1DC
        AEFFB1DCAEFFB1DCAEFFB1DCAEFFB1DCAEFFB1DCAEFFB1DCAEFFB1DCAEFFB1DC
        AEFFB1DCAEFFB1DCAEFFB1DCAEFFB1DCAEFFB1DCAEFFB1DCAEFFB1DCAEFFB1DC
        AEFFB1DCAEFFB1DCAEFFB1DCAEFFB1DCAEFFB1DCAEFFB1DCAEFFB1DCAEFFB1DC
        AEFF8EB77DFF365721A100000000000000000000000000000000000000000000
        0000000000000000000000000000588B35FFB1DCAEFFB1DCAEFFB1DCAEFFB1DC
        AEFFB1DCAEFFB1DCAEFFB1DCAEFFB1DCAEFFB1DCAEFFB1DCAEFFB1DCAEFFB1DC
        AEFFB1DCAEFFB1DCAEFFB1DCAEFFB1DCAEFFB1DCAEFFB1DCAEFFB1DCAEFFB1DC
        AEFFB1DCAEFFB1DCAEFFB1DCAEFFB1DCAEFFB1DCAEFFB1DCAEFFB1DCAEFFB1DC
        AEFFB1DCAEFF588B35FF00000000000000000000000000000000000000000000
        000000000000000000002B45198181AE6EFFB1DCAEFFB1DCAEFFB1DCAEFFB1DC
        AEFFB1DCAEFFB1DCAEFFB1DCAEFFB1DCAEFFB1DCAEFFB1DCAEFFB1DCAEFFB1DC
        AEFFB6DFB2FFB1DCAEFFB1DCAEFFB1DCAEFFB1DCAEFFB1DCAEFFB1DCAEFFB1DC
        AEFFB1DCAEFFB1DCAEFFB1DCAEFFB1DCAEFFB1DCAEFFB1DCAEFFB1DCAEFFB1DC
        AEFFB1DCAEFF588B35FF00000000000000000000000000000000000000000000
        000000000000000000004C792EE0A7D2A2FFB1DCAEFFB1DCAEFFB1DCAEFFB1DC
        AEFFB1DCAEFFB1DCAEFFB1DCAEFFB1DCAEFFB1DCAEFFB1DCAEFFB1DCAEFFBFE3
        BDFFFFFFFFFFD0EACDFFB1DCAEFFB1DCAEFFB1DCAEFFB1DCAEFFB1DCAEFFB1DC
        AEFFB1DCAEFFB1DCAEFFB1DCAEFFB1DCAEFFB1DCAEFFB1DCAEFFB1DCAEFFB1DC
        AEFFB1DCAEFF588B35FF00000000000000000000000000000000000000000000
        00000000000000000000588B35FFB1DCAEFFB1DCAEFFB1DCAEFFB1DCAEFFB1DC
        AEFFB1DCAEFFB1DCAEFFB1DCAEFFB1DCAEFFB1DCAEFFB1DCAEFFBFE3BDFFFFFF
        FFFFFFFFFFFFFFFFFFFFD0EACDFFB1DCAEFFB1DCAEFFB1DCAEFFB1DCAEFFB1DC
        AEFFB1DCAEFFB1DCAEFFB1DCAEFFB1DCAEFFB1DCAEFFB1DCAEFFB1DCAEFFB1DC
        AEFFB1DCAEFF6F9F55FF1B2C1051000000000000000000000000000000000000
        00000000000000000000588B35FFB1DCAEFFB1DCAEFFB1DCAEFFB1DCAEFFB1DC
        AEFFB1DCAEFFB1DCAEFFB1DCAEFFB1DCAEFFB1DCAEFFBFE3BDFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFD0EACDFFB1DCAEFFB1DCAEFFB1DCAEFFB1DC
        AEFFB1DCAEFFB1DCAEFFB1DCAEFFB1DCAEFFB1DCAEFFB1DCAEFFB1DCAEFFB1DC
        AEFFB1DCAEFF99C18DFF406826C1000000000000000000000000000000000000
        00000000000010190831649546FFB1DCAEFFB1DCAEFFB1DCAEFFB1DCAEFFB1DC
        AEFFB1DCAEFFB1DCAEFFB1DCAEFFB1DCAEFFBFE3BDFFFFFFFFFFFFFFFFFFFFFF
        FFFFFEFFFEFFFFFFFFFFFFFFFFFFFFFFFFFFD0EACDFFB1DCAEFFB1DCAEFFB1DC
        AEFFB1DCAEFFB1DCAEFFB1DCAEFFB1DCAEFFB1DCAEFFB1DCAEFFB1DCAEFFB1DC
        AEFFB1DCAEFFB1DCAEFF588B35FF000000000000000000000000000000000000
        000000000000365721A18EB77DFFB1DCAEFFB1DCAEFFB1DCAEFFB1DCAEFFB1DC
        AEFFB1DCAEFFB1DCAEFFB1DCAEFFBFE3BDFFFFFFFFFFFFFFFFFFFFFFFFFFFEFF
        FEFFB1DCAEFFFAFDFAFFFFFFFFFFFFFFFFFFFFFFFFFFD0EACDFFB1DCAEFFB1DC
        AEFFB1DCAEFFB1DCAEFFB1DCAEFFB1DCAEFFB1DCAEFFB1DCAEFFB1DCAEFFB1DC
        AEFFB1DCAEFFB1DCAEFF588B35FF000000000000000000000000000000000000
        000000000000588B35FFB1DCAEFFB1DCAEFFB1DCAEFFB1DCAEFFB1DCAEFFB1DC
        AEFFB1DCAEFFB1DCAEFFBFE3BDFFFFFFFFFFFFFFFFFFFFFFFFFFFEFFFEFFB1DC
        AEFFB1DCAEFFB1DCAEFFFAFDFAFFFFFFFFFFFFFFFFFFFFFFFFFFD0EACDFFB1DC
        AEFFB1DCAEFFB1DCAEFFB1DCAEFFB1DCAEFFB1DCAEFFB1DCAEFFB1DCAEFFB1DC
        AEFFB1DCAEFFB1DCAEFF588B35FF000000000000000000000000000000000000
        000000000000588B35FFB1DCAEFFB1DCAEFFB1DCAEFFB1DCAEFFB1DCAEFFB1DC
        AEFFB1DCAEFFB1DCAEFFBEE2BBFFFFFFFFFFFFFFFFFFFEFFFEFFB1DCAEFFB1DC
        AEFFB1DCAEFFB1DCAEFFB1DCAEFFFAFDFAFFFFFFFFFFFFFFFFFFFFFFFFFFD0EA
        CDFFB1DCAEFFB1DCAEFFB1DCAEFFB1DCAEFFB1DCAEFFB1DCAEFFB1DCAEFFB1DC
        AEFFB1DCAEFFB1DCAEFF81AE6EFF2B4519810000000000000000000000000000
        000000000000588B35FFB1DCAEFFB1DCAEFFB1DCAEFFB1DCAEFFB1DCAEFFB1DC
        AEFFB1DCAEFFB1DCAEFFB1DCAEFFBEE2BBFFFEFFFEFFB1DCAEFFB1DCAEFFB1DC
        AEFFB1DCAEFFB1DCAEFFB1DCAEFFB1DCAEFFFAFDFAFFFFFFFFFFFFFFFFFFFFFF
        FFFFD0EACDFFB1DCAEFFB1DCAEFFB1DCAEFFB1DCAEFFB1DCAEFFB1DCAEFFB1DC
        AEFFB1DCAEFFB1DCAEFFA2CC9AFF4C792EE00000000000000000000000000000
        00001B2C10516F9F55FFB1DCAEFFB1DCAEFFB1DCAEFFB1DCAEFFB1DCAEFFB1DC
        AEFFB1DCAEFFB1DCAEFFB1DCAEFFB1DCAEFFB1DCAEFFB1DCAEFFB1DCAEFFB1DC
        AEFFB1DCAEFFB1DCAEFFB1DCAEFFB1DCAEFFB1DCAEFFFAFDFAFFFFFFFFFFFFFF
        FFFFFFFFFFFFD0EACDFFB1DCAEFFB1DCAEFFB1DCAEFFB1DCAEFFB1DCAEFFB1DC
        AEFFB1DCAEFFB1DCAEFFB1DCAEFF588B35FF0000000000000000000000000000
        0000406826C19EC793FFB1DCAEFFB1DCAEFFB1DCAEFFB1DCAEFFB1DCAEFFB1DC
        AEFFB1DCAEFFB1DCAEFFB1DCAEFFB1DCAEFFB1DCAEFFB1DCAEFFB1DCAEFFB1DC
        AEFFB1DCAEFFB1DCAEFFB1DCAEFFB1DCAEFFB1DCAEFFB1DCAEFFFAFDFAFFFFFF
        FFFFFFFFFFFFFFFFFFFFB1DCAEFFB1DCAEFFB1DCAEFFB1DCAEFFB1DCAEFFB1DC
        AEFFB1DCAEFFB1DCAEFFB1DCAEFF588B35FF0000000000000000000000000000
        0000588B35FFB1DCAEFFB1DCAEFFB1DCAEFFB1DCAEFFB1DCAEFFB1DCAEFFB1DC
        AEFFB1DCAEFFB1DCAEFFB1DCAEFFB1DCAEFFB1DCAEFFB1DCAEFFB1DCAEFFB1DC
        AEFFB1DCAEFFB1DCAEFFB1DCAEFFB1DCAEFFB1DCAEFFB1DCAEFFB1DCAEFFFAFD
        FAFFFFFFFFFFB5DEB1FFB1DCAEFFB1DCAEFFB1DCAEFFB1DCAEFFB1DCAEFFB1DC
        AEFFB1DCAEFFB1DCAEFFB1DCAEFF649546FF1019083100000000000000000000
        0000588B35FFB1DCAEFFB1DCAEFFB1DCAEFFB1DCAEFFB1DCAEFFB1DCAEFFB1DC
        AEFFB1DCAEFFB1DCAEFFB1DCAEFFB1DCAEFFB1DCAEFFB1DCAEFFB1DCAEFFB1DC
        AEFFB1DCAEFFB1DCAEFFB1DCAEFFB1DCAEFFB1DCAEFFB1DCAEFFB1DCAEFFB1DC
        AEFFB6DFB2FFB1DCAEFFB1DCAEFFB1DCAEFFB1DCAEFFB1DCAEFFB1DCAEFFB1DC
        AEFFB1DCAEFFB1DCAEFFB1DCAEFF8EB77DFF365721A000000000000000000000
        0000588B35FFB1DCAEFFB1DCAEFFB1DCAEFFB1DCAEFFB1DCAEFFB1DCAEFFB1DC
        AEFFB1DCAEFFB1DCAEFFB1DCAEFFB1DCAEFFB1DCAEFFB1DCAEFFB1DCAEFFB1DC
        AEFFB1DCAEFFB1DCAEFFB1DCAEFFB1DCAEFFB1DCAEFFB1DCAEFFB1DCAEFFB1DC
        AEFFB1DCAEFFB1DCAEFFB1DCAEFFB1DCAEFFB1DCAEFFB1DCAEFFB1DCAEFFB1DC
        AEFFB1DCAEFFB1DCAEFFB1DCAEFFB1DCAEFF588B35FF00000000588B35FF588B
        35FF588B35FF588B35FF588B35FF588B35FF588B35FF588B35FF588B35FF588B
        35FF588B35FF588B35FF588B35FF588B35FF588B35FF588B35FF588B35FF588B
        35FF588B35FF588B35FF588B35FF588B35FF588B35FF588B35FF588B35FF588B
        35FF588B35FF588B35FF588B35FF588B35FF588B35FF588B35FF588B35FF588B
        35FF588B35FF588B35FF588B35FF588B35FF588B35FF588B35FF588B35FFB1DC
        AEFFB1DCAEFFB1DCAEFFB1DCAEFFB1DCAEFFB1DCAEFFB1DCAEFFB1DCAEFFB1DC
        AEFFB1DCAEFFB1DCAEFFB1DCAEFFB1DCAEFFB1DCAEFFB1DCAEFFB1DCAEFFB1DC
        AEFFB1DCAEFFB1DCAEFFB1DCAEFFB1DCAEFFB1DCAEFFB1DCAEFFB1DCAEFFB1DC
        AEFFB1DCAEFFB1DCAEFFB1DCAEFFB1DCAEFFB1DCAEFFB1DCAEFFB1DCAEFFB1DC
        AEFFB1DCAEFFB1DCAEFFB1DCAEFFB1DCAEFFB1DCAEFF588B35FF588B35FFB1DC
        AEFFB1DCAEFFB1DCAEFFB1DCAEFFB1DCAEFFB1DCAEFFB1DCAEFFB1DCAEFFB1DC
        AEFFB1DCAEFFB1DCAEFFB1DCAEFFB1DCAEFFB1DCAEFFB1DCAEFFB1DCAEFFB1DC
        AEFFB1DCAEFFB1DCAEFFB1DCAEFFB1DCAEFFB1DCAEFFB1DCAEFFB1DCAEFFB1DC
        AEFFB1DCAEFFB1DCAEFFB1DCAEFFB1DCAEFFB1DCAEFFB1DCAEFFB1DCAEFFB1DC
        AEFFB1DCAEFFB1DCAEFFB1DCAEFFB1DCAEFFB1DCAEFF588B35FF588B35FFB1DC
        AEFFB1DCAEFFB1DCAEFFB1DCAEFFB1DCAEFFB1DCAEFFB1DCAEFFB1DCAEFFB1DC
        AEFFB1DCAEFFB1DCAEFFB1DCAEFFB1DCAEFFB1DCAEFFB1DCAEFFB1DCAEFFB1DC
        AEFFB1DCAEFFB1DCAEFFB1DCAEFFB1DCAEFFB1DCAEFFB1DCAEFFB1DCAEFFB1DC
        AEFFB1DCAEFFB1DCAEFFB1DCAEFFB1DCAEFFB1DCAEFFB1DCAEFFB1DCAEFFB1DC
        AEFFB1DCAEFFB1DCAEFFB1DCAEFFB1DCAEFFB1DCAEFF588B35FF588B35FF588B
        35FF588B35FF588B35FF588B35FF588B35FF588B35FF588B35FF588B35FF588B
        35FF588B35FF588B35FF588B35FF588B35FF588B35FF588B35FF588B35FF588B
        35FF588B35FF588B35FF588B35FF588B35FF588B35FF588B35FF588B35FF588B
        35FF588B35FF588B35FF588B35FF588B35FF588B35FF588B35FF588B35FF588B
        35FF588B35FF588B35FF588B35FF588B35FF588B35FF588B35FF000000000000
        00000000000000000000000000000000000000000000080603107A5C41FFBDA7
        93FFCDB6A3FFCDB6A3FFCDB6A3FFBDA793FF7A5C41FF08060310000000000000
        0000000000000000000000000000000000000000000000000000000000006349
        34D07D5F44FFA99077FFA99077FFA99077FFA99077FF7D5D44FF624934CF0000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000080603107A5C
        41FFBDA793FFCDB6A3FFCDB6A3FFCDB6A3FFBDA793FF7A5C41FF080603100000
        0000000000000000000000000000000000000000000000000000634934D07D5F
        44FFA99077FFA99077FFA99077FFA99077FF7D5D44FF624934CF000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000806
        03107A5C41FFBDA793FFCDB6A3FFCDB6A3FFCDB6A3FFBDA793FF7A5C41FF0806
        03100000000000000000000000000000000000000000634934D07D5F44FFA990
        77FFA99077FFA99077FFA99077FF7D5D44FF624934CF00000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000080603107A5C41FFBDA793FFCDB6A3FFCDB6A3FFCDB6A3FFBDA793FF7A5C
        41FF08060310000000000000000000000000634934D07D5F44FFA99077FFA990
        77FFA99077FFA99077FF7D5D44FF624934CF0000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        000000000000080603107A5C41FFBDA793FFCDB6A3FFCDB6A3FFCDB6A3FFBDA7
        93FF7A5C41FF0806031000000000634934D07D5F44FFA99077FFA99077FFA990
        77FFA99077FF7D5D44FF624934CF000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        00000000000000000000080603107A5C41FFBDA793FFCDB6A3FFCDB6A3FFCDB6
        A3FFBDA793FF7A5C41FF644A35D37D5F44FFA99077FFA99077FFA99077FFA990
        77FF7D5D44FF624934CF00000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000080603107A5C41FFBDA793FFCDB6A3FFCDB6
        A3FFCDB6A3FFBDA793FF7A5C41FFA68E73FFA99077FFA99077FFA99077FF7D5D
        44FF624934CF0000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        000000000000000000000000000000000000080603107A5C41FFBDA793FFCDB6
        A3FFCDB6A3FFCDB6A3FFBDA793FF7A5C41FFA99077FFA99077FF7D5D44FF6249
        34CF000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        00000000000000000000000000000000000000000000080603107A5C41FFBDA7
        93FFCDB6A3FFCDB6A3FFCDB6A3FFAE9681FF866A4EFF7D5D44FF624934CF0000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000080603107A5C
        41FFBDA793FFCDB6A3FFCDB6A3FFC1AC99FF7A5A41FF624934CF000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000806
        03107A5C41FFAE9681FFC1AC99FF7A5C41FF664E36D800000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        00000000000072573BF07A5C41FF413021870000000000000000000000000000
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
      TabOrder = 10
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      ParentFont = False
      OnClick = BtnVendaAuxClick
    end
    object BtnStatusServico: TcxButton
      Left = 781
      Top = 61
      Width = 130
      Height = 61
      Align = alClient
      Caption = 'STATUS'#13'SERVI'#199'O'
      LookAndFeel.NativeStyle = False
      LookAndFeel.SkinName = 'Metropolis'
      OptionsImage.Glyph.Data = {
        36100000424D3610000000000000360000002800000020000000200000000100
        2000000000000010000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000A0E
        1E243751B0D00A0E1E2400000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        000000000000000000000000000000000000000000000000000003050A0C3A54
        B7D84463D8FF3953B6D70304080A000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        00001B1B1B353A3A3A70555555A46B6B6BCE7A7A7AEC838383FD7A7A7AEC6B6B
        6BCE555555A43A3A3A701B1B1B350000000000000000000000002B3F88A14463
        D8FF4463D8FF4463D8FF2A3D849C000000000000000000000000000000000000
        00000000000000000000000000000000000000000000000000002727274B5353
        53A0686868C95D5D5DB46C6C6CD04242427F0A0A0A14010101020A0A0A144242
        427F6C6C6CD05D5D5DB4686868C94D4D4D950303030617224B584463D8FF4463
        D8FF4463D8FF4463D8FF4463D8FF172149560000000000000000000000000000
        000000000000000000000000000000000000121212234848488B626262BE3C3C
        3C731E1E1E395B5B5BAF35353566000000000000000000000000000000000000
        0000353535665B5B5BAF1E1E1E391A1A1A3205070F123E5BC6EA4463D8FF4463
        D8FF4463D8FF4463D8FF4463D8FF3E5AC5E805070E1100000000000000000000
        00000000000000000000000000001F1F1F3C5C5C5CB14D4D4D951717172C0000
        00003F3F3F7A4E4E4E9600000000000000000000000000000000000000000000
        0000000000004E4E4E963838386C0000000026387A904463D8FF4463D8FF4463
        D8FF4463D8FF4463D8FF4463D8FF4463D8FF2638798F00000000000000000000
        000000000000000000001F1F1F3C5E5E5EB53F3F3F7A01010101000000001313
        1325616161BC1E1E1E3A00000000000000000000000000000000000000000000
        0000000000001E1E1E3A3030305D080B191D4260D2F84463D8FF4463D8FF4463
        D8FF4463D8FF4463D8FF4463D8FF4463D8FF4260D1F7070B181C000000000000
        000000000000121212235C5C5CB13F3F3F7A0000000000000000000000003838
        386D4F4F4F990000000000000000000000000000000000000000000000000000
        000000000000000000000E0E0E1B22326D814463D8FF4463D8FF3C57BFE1121A
        3A440304090B121A3A443C57BEE04463D8FF4463D8FF22326C80000000000000
        0000000000005F5F5FB7616161BB151515290000000000000000000000005C5C
        5CB22B2B2B530000000000000000000000000000000000000000000000000000
        00000000000000000000020202033852B2D24463D8FF4463D8FF121A3A440000
        00000000000000000000111936404463D8FF4463D8FF3A54B7D8000000000000
        00002727274B707070D85B5B5BB06A6A6ACD6C6C6CD0595959AB5151519C7676
        76E32F2F2F5B1D1D1D38131313240B0B0B150505050901010102010101020505
        05090B0B0B1513131324010101024260D1F74463D8FF4463D8FF03050A0C0000
        00000000000000000000020205064463D8FF4463D8FF4261D3F9000000000000
        0000535353A03C3C3C7300000000020202041717172C2A2A2A51555555A57070
        70D95A5A5AAE666666C6717171DA797979EA7F7F7FF6838383FD838383FD7F7F
        7FF6797979EA717171DA030303063C58BFE24463D8FF4463D8FF121A3A440000
        00000000000000000000111936404463D8FF4463D8FF3C57BFE1000000001B1B
        1B35686868C91010101F00000000000000000000000000000000454545854040
        407B000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000293B82994463D8FF4463D8FF3C57BFE1121B
        3A4503050A0C121B3A453C57BFE14463D8FF4463D8FF283B8097000000003A3A
        3A704E4E4E970000000000000000000000000000000000000000595959AB2C2C
        2C55000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000090C1B20405ECCF14463D8FF4463D8FF4463
        D8FF4463D8FF4463D8FF4463D8FF4463D8FF415ECDF2090C1B20000000005555
        55A4323232610000000000000000000000000000000000000000696969CB1B1B
        1B35000000000000000000000000000000000000000000000000000000000000
        000000000000000000000000000002020203131C3D48415ECDF24463D8FF4463
        D8FF4463D8FF4463D8FF4463D8FF415ECDF2131C3D4800000000000000006B6B
        6BCE1B1B1B350000000000000000000000000000000000000000767676E40E0E
        0E1C000000000000000000000000000000000000000000000000000000000000
        00000000000000000000000000000A0A0A140606060C080C1A1F283B80973C57
        BFE14261D3F93C57BFE1283B8097080C1A1F0000000000000000000000007A7A
        7AEC0A0A0A1400000000000000000000000000000000000000007F7F7FF50505
        050A000000000000000000000000000000000000000000000000000000000000
        00000000000000000000000000000505050A6F6F6FD700000000000000000000
        0000000000000000000001010102323232600000000000000000000000008383
        83FD848484FF848484FF848484FF848484FF848484FF848484FF848484FF8484
        84FF848484FF848484FF848484FF848484FF848484FF848484FF848484FF8484
        84FF848484FF848484FF848484FF848484FF848484FF848484FF848484FF8484
        84FF848484FF848484FF848484FF848484FF0000000000000000000000007A7A
        7AEC0A0A0A1400000000000000000000000000000000000000007F7F7FF50505
        050A000000000000000000000000000000000000000000000000000000000000
        00000000000000000000000000000505050A7F7F7FF500000000000000000000
        000000000000000000000A0A0A147A7A7AEC0000000000000000000000006B6B
        6BCE1B1B1B350000000000000000000000000000000000000000767676E40E0E
        0E1C000000000000000000000000000000000000000000000000000000000000
        00000000000000000000000000000E0E0E1C767676E400000000000000000000
        000000000000000000001B1B1B356B6B6BCE0000000000000000000000005555
        55A4323232610000000000000000000000000000000000000000696969CB1B1B
        1B35000000000000000000000000000000000000000000000000000000000000
        00000000000000000000000000001B1B1B35696969CB00000000000000000000
        0000000000000000000032323261555555A40000000000000000000000003A3A
        3A704E4E4E970000000000000000000000000000000000000000595959AB2C2C
        2C55000000000000000000000000000000000000000000000000000000000000
        00000000000000000000000000002C2C2C55595959AB00000000000000000000
        000000000000000000004E4E4E973A3A3A700000000000000000000000001B1B
        1B35686868C91010101F00000000000000000000000000000000454545854040
        407B000000000000000000000000000000000000000000000000000000000000
        00000000000000000000000000004040407B4545458500000000000000000000
        0000000000001010101F686868C91B1B1B350000000000000000000000000000
        0000535353A03C3C3C7300000000020202041717172C2A2A2A51555555A57070
        70D95A5A5AAE666666C6717171DA797979EA7F7F7FF6838383FD838383FD7F7F
        7FF6797979EA717171DA666666C6767676E35F5F5FB83C3C3C742A2A2A511717
        172C020202043C3C3C73535353A0000000000000000000000000000000000000
        00002727274B707070D85B5B5BB06A6A6ACD6C6C6CD0595959AB5151519C7676
        76E32F2F2F5B1D1D1D38131313240B0B0B150505050901010102010101020505
        05090B0B0B151313132423232344727272DD4444448347474789595959AB6C6C
        6CD06F6F6FD6767676E42727274B000000000000000000000000000000000000
        0000000000005F5F5FB7616161BB151515290000000000000000000000005C5C
        5CB22B2B2B530000000000000000000000000000000000000000000000000000
        000000000000000000002B2B2B535C5C5CB20000000000000000000000000101
        0101565656A6565656A700000000000000000000000000000000000000000000
        000000000000121212235C5C5CB13F3F3F7A0000000000000000000000003838
        386D4F4F4F990000000000000000000000000000000000000000000000000000
        000000000000000000004F4F4F993838386D0000000000000000000000003F3F
        3F7A5C5C5CB11212122300000000000000000000000000000000000000000000
        000000000000000000001F1F1F3C5E5E5EB53F3F3F7A01010101000000001313
        1325616161BC1E1E1E3A00000000000000000000000000000000000000000000
        0000000000001E1E1E3A616161BC1313132500000000010101013F3F3F7A5E5E
        5EB51F1F1F3C0000000000000000000000000000000000000000000000000000
        00000000000000000000000000001F1F1F3C5C5C5CB14D4D4D951717172C0000
        00003F3F3F7A4E4E4E9600000000000000000000000000000000000000000000
        0000000000004E4E4E963F3F3F7A000000001717172C4D4D4D955C5C5CB11F1F
        1F3C000000000000000000000000000000000000000000000000000000000000
        000000000000000000000000000000000000121212234848488B626262BE3C3C
        3C731E1E1E395B5B5BAF35353566000000000000000000000000000000000000
        0000353535665B5B5BAF1E1E1E393C3C3C73626262BE4848488B121212230000
        0000000000000000000000000000000000000000000000000000000000000000
        00000000000000000000000000000000000000000000000000002727274B5353
        53A0686868C95D5D5DB46C6C6CD04242427F0A0A0A14010101020A0A0A144242
        427F6C6C6CD05D5D5DB4686868C9535353A02727274B00000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        00001B1B1B353A3A3A70555555A46B6B6BCE7A7A7AEC838383FD7A7A7AEC6B6B
        6BCE555555A43A3A3A701B1B1B35000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000}
      TabOrder = 13
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      ParentFont = False
      OnClick = BtnStatusServicoClick
    end
    object BtnInformarVendedor: TcxButton
      Left = 131
      Top = 61
      Width = 130
      Height = 61
      Align = alClient
      Caption = 'INFORMAR'#13'VENDEDOR'#13'[F10]'
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
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000848484FF848484FF848484FF848484FF848484FF848484FF848484FF8484
        84FF848484FF848484FF848484FF848484FF848484FF848484FF848484FF8484
        84FF848484FF848484FF848484FF848484FF848484FF848484FF848484FF8484
        84FF848484FF848484FF848484FF848484FF0000000000000000000000000000
        0000848484FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFF848484FF0000000000000000000000000000
        0000848484FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFF848484FF0000000000000000000000000000
        0000848484FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFF848484FF0000000000000000000000000000
        0000848484FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFF848484FF0000000000000000000000000000
        0000848484FFFFFFFFFFFFFFFFFFECDED0FFC69B70FFBA8552FFB8824DFFB882
        4DFFB8824DFFB8824DFFBA8552FFC69B71FFEFE3D7FFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFF848484FF0000000000000000000000000000
        0000848484FFFFFFFFFFFFFFFFFFC19263FFB8824DFFB8824DFFB8824DFFB882
        4DFFB8824DFFB8824DFFB8824DFFB8824DFFC29466FFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFF848484FF0000000000000000000000000000
        0000848484FFFFFFFFFFFFFFFFFFBE8C5CFFB8824DFFB8824DFFB8824DFFB882
        4DFFB8824DFFB8824DFFB8824DFFB8824DFFBF8E5EFFFFFFFFFFFFFFFFFFAFAF
        AFFFAFAFAFFFAFAFAFFFAFAFAFFFAFAFAFFFAFAFAFFFAFAFAFFFAFAFAFFFAFAF
        AFFFAFAFAFFFFFFFFFFFFFFFFFFF848484FF0000000000000000000000000000
        0000848484FFFFFFFFFFFFFFFFFFCFAB88FFB8824DFFB8824DFFB8824DFFB882
        4DFFB8824DFFB8824DFFB8824DFFB8824DFFD2B08FFFFFFFFFFFFFFFFFFFAFAF
        AFFFAFAFAFFFAFAFAFFFAFAFAFFFAFAFAFFFAFAFAFFFAFAFAFFFAFAFAFFFAFAF
        AFFFAFAFAFFFFFFFFFFFFFFFFFFF848484FF0000000000000000000000000000
        0000848484FFFFFFFFFFFFFFFFFFF2E7DDFFBA8551FFB8824DFFC59A6FFFF5ED
        E6FFF4ECE4FFC4976BFFB8824DFFBA8551FFF3EAE2FFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFF848484FF0000000000000000000000000000
        0000848484FFFFFFFFFFFFFFFFFFFFFFFFFFE7D5C3FFC09061FFF6EEE7FFFFFF
        FFFFFFFFFFFFF6EFE8FFC19163FFE9D8C7FFFFFFFFFFFFFFFFFFFFFFFFFFAFAF
        AFFFAFAFAFFFAFAFAFFFAFAFAFFFAFAFAFFFAFAFAFFFAFAFAFFFAFAFAFFFAFAF
        AFFFAFAFAFFFFFFFFFFFFFFFFFFF848484FF0000000000000000000000000000
        0000848484FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFE7D5C3FFBF8E
        5EFFBF8E5EFFE7D4C2FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFAFAF
        AFFFAFAFAFFFAFAFAFFFAFAFAFFFAFAFAFFFAFAFAFFFAFAFAFFFAFAFAFFFAFAF
        AFFFAFAFAFFFFFFFFFFFFFFFFFFF848484FF0000000000000000000000000000
        0000848484FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF1E6DCFFB98450FFB882
        4DFFB8824DFFB98450FFF1E6DCFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFF848484FF0000000000000000000000000000
        0000848484FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFCFAB88FFB8824DFFB882
        4DFFB8824DFFB8824DFFD0AC89FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFAFAF
        AFFFAFAFAFFFAFAFAFFFAFAFAFFFAFAFAFFFAFAFAFFFAFAFAFFFAFAFAFFFAFAF
        AFFFAFAFAFFFFFFFFFFFFFFFFFFF848484FF0000000000000000000000000000
        0000848484FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFBC8A58FFB8824DFFB882
        4DFFB8824DFFB8824DFFBE8C5BFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFAFAF
        AFFFAFAFAFFFAFAFAFFFAFAFAFFFAFAFAFFFAFAFAFFFAFAFAFFFAFAFAFFFAFAF
        AFFFAFAFAFFFFFFFFFFFFFFFFFFF848484FF0000000000000000000000000000
        0000848484FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFBA8551FFB8824DFFB882
        4DFFB8824DFFB8824DFFBA8653FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFF848484FF0000000000000000000000000000
        0000848484FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFD1AE8CFFB8824DFFB882
        4DFFB8824DFFB8824DFFD2B18FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFF848484FF0000000000000000000000000000
        0000848484FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFBF8F5FFD6B698FFBF8F
        5FFFBE8C5BFFD6B698FFFBF9F6FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFF848484FF0000000000000000000000000000
        0000848484FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFF848484FF0000000000000000000000000000
        0000848484FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFF848484FF0000000000000000000000000000
        0000848484FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFF848484FF0000000000000000000000000000
        0000848484FF848484FF848484FF848484FF848484FF848484FF848484FF8484
        84FF848484FF848484FF848484FF848484FF848484FF848484FF848484FF8484
        84FF848484FF848484FF848484FF848484FF848484FF848484FF848484FF8484
        84FF848484FF848484FF848484FF848484FF0000000000000000000000000000
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
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000}
      TabOrder = 8
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      ParentFont = False
      OnClick = BtnInformarVendedorClick
    end
    object GridPanel1: TGridPanel
      Left = 651
      Top = 61
      Width = 130
      Height = 61
      Align = alClient
      Caption = 'GridPanel1'
      ColumnCollection = <
        item
          Value = 100.000000000000000000
        end>
      ControlCollection = <
        item
          Column = 0
          Control = BtnConsultarVenda
          Row = 0
        end
        item
          Column = 0
          Control = BtnConsultarNFCE
          Row = 1
        end>
      RowCollection = <
        item
          Value = 50.000000000000000000
        end
        item
          Value = 50.000000000000000000
        end>
      TabOrder = 12
      object BtnConsultarVenda: TcxButton
        Left = 1
        Top = 1
        Width = 128
        Height = 29
        Align = alClient
        Caption = 'CONSULTAR'#13'VENDA'
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
          00000000000000000000000000000203070827387B913E5AC5E93D59C1E4202F
          667901010303000000000000000000000000000000000203070827387B913E5A
          C5E93D59C1E4202F667901010303000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000293B81984463D8FF4463D8FF4463D8FF4463
          D8FF21316A7D00000000000000000000000000000000293B81984463D8FF4463
          D8FF4463D8FF4463D8FF21316A7D000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          00000000000000000000000001014260D0F64463D8FF4463D8FF4463D8FF4463
          D8FF3B56BBDD000000000000000000000000000001014260D0F64463D8FF4463
          D8FF4463D8FF4463D8FF3B56BBDD000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          00000000000000000000000001014260D0F64463D8FF4463D8FF4463D8FF4463
          D8FF3B56BBDD000000000000000000000000000001014260D0F64463D8FF4463
          D8FF4463D8FF4463D8FF3B56BBDD000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000293C839B4463D8FF4463D8FF4463D8FF4463
          D8FF22326C8000000000000000000000000000000000293C839B4463D8FF4463
          D8FF4463D8FF4463D8FF22326C80000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          000000000000000000000000000002030809283A7F96405DCBF03E5BC6EA2434
          7287010103030000000000000000000000000000000002030809283A7F96405D
          CBF03E5BC6EA2434728701010303000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          000000000000000000004463D8FF4463D8FF4463D8FF4463D8FF4463D8FF4463
          D8FF4463D8FF4463D8FF4463D8FF4463D8FF4463D8FF4463D8FF4463D8FF4463
          D8FF4463D8FF4463D8FF4463D8FF0B1023290000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          000000000000000000004463D8FF4463D8FF4463D8FF4463D8FF4463D8FF4463
          D8FF4463D8FF4463D8FF4463D8FF4463D8FF4463D8FF4463D8FF4463D8FF4463
          D8FF4463D8FF4463D8FF4463D8FF22326C800000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          000000000000000000004463D8FF4463D8FF4463D8FF4463D8FF4463D8FF4463
          D8FF4463D8FF4463D8FF4463D8FF4463D8FF4463D8FF4463D8FF4463D8FF4463
          D8FF4463D8FF4463D8FF4463D8FF3953B6D70000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          000002030708415ECDF24463D8FF4463D8FF0C12272E00000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000B10242A4463D8FF4463D8FF4463D8FF4463D8FF4463D8FF4463
          D8FF4463D8FF4463D8FF4463D8FF4463D8FF4463D8FF4463D8FF4463D8FF4463
          D8FF4463D8FF4463D8FF4463D8FF4463D8FF2334718500000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          00000000000022316C7F4463D8FF4463D8FF4463D8FF4463D8FF4463D8FF4463
          D8FF4463D8FF4463D8FF4463D8FF4463D8FF4463D8FF4463D8FF4463D8FF4463
          D8FF4463D8FF4463D8FF4463D8FF4463D8FF3A55BADB00000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000003952B4D44463D8FF4463D8FF4463D8FF4463D8FF4463D8FF4463
          D8FF4463D8FF4463D8FF4463D8FF4463D8FF4463D8FF4463D8FF4463D8FF4463
          D8FF4463D8FF4463D8FF4463D8FF4463D8FF4463D8FF0E142B33000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          00000B10242A4463D8FF4463D8FF4463D8FF4463D8FF4463D8FF4463D8FF4463
          D8FF4463D8FF4463D8FF4463D8FF4463D8FF4463D8FF4463D8FF4463D8FF4463
          D8FF4463D8FF4463D8FF4463D8FF4463D8FF4463D8FF25357489000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          000022316C7F4463D8FF4463D8FF4463D8FF4463D8FF4463D8FF4463D8FF4463
          D8FF4463D8FF4463D8FF4463D8FF4463D8FF4463D8FF4463D8FF4463D8FF4463
          D8FF4463D8FF4463D8FF4463D8FF4463D8FF4463D8FF3B57BDDF000001010000
          0000000000000000000000000000000000000000000000000000000000000000
          00003852B3D34463D8FF4463D8FF4463D8FF4463D8FF4463D8FF4463D8FF4463
          D8FF4463D8FF4463D8FF4463D8FF4463D8FF4463D8FF4463D8FF4463D8FF4463
          D8FF4463D8FF4463D8FF4463D8FF4463D8FF4463D8FF4463D8FF0F152F370000
          0000000000000000000000000000000000000000000000000000000000000B10
          22284463D8FF4463D8FF4463D8FF4463D8FF4463D8FF4463D8FF4463D8FF4463
          D8FF4463D8FF4463D8FF4463D8FF4463D8FF4463D8FF4463D8FF4463D8FF4463
          D8FF4463D8FF4463D8FF4463D8FF4463D8FF4463D8FF4463D8FF2637788E0000
          0000000000000000000000000000000000000000000000000000000000002231
          6C7F4463D8FF4463D8FF4463D8FF4463D8FF4463D8FF4463D8FF4463D8FF4463
          D8FF4463D8FF4463D8FF4463D8FF4463D8FF4463D8FF4463D8FF4463D8FF4463
          D8FF4463D8FF4463D8FF4463D8FF4463D8FF4463D8FF4463D8FF3D58C0E30101
          0202000000000000000000000000000000000000000000000000000000003852
          B3D34463D8FF4463D8FF4463D8FF4463D8FF4463D8FF4463D8FF4463D8FF4463
          D8FF4463D8FF4463D8FF4463D8FF4463D8FF4463D8FF4463D8FF4463D8FF4463
          D8FF4463D8FF4463D8FF4463D8FF4463D8FF4463D8FF4463D8FF4463D8FF1017
          333C000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000002638798F4463D8FF4463D8FF2739
          7C92000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000F152F374463D8FF4463D8FF3E5A
          C4E7010102020000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          000000000000000000000000000000000000000001013B56BCDE4463D8FF4463
          D8FF111937410000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          00000000000000000000000000000000000000000000243573884463D8FF4463
          D8FF283B80970000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          000000000000000000000000000000000000000000000D132A314463D8FF4463
          D8FF3E5BC6EA0102030400000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          00000000000000000000000000000000000000000000000000003A54B7D84463
          D8FF4463D8FF4463D8FF4463D8FF4463D8FF4463D8FF4463D8FF000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          000000000000000000000000000000000000000000000000000022326D814463
          D8FF4463D8FF4463D8FF4463D8FF4463D8FF4463D8FF4463D8FF000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          00000000000000000000000000000000000000000000000000000B10242A4463
          D8FF4463D8FF4463D8FF4463D8FF4463D8FF4463D8FF4463D8FF000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0101000000000000000000000000000000000000000000000000}
        TabOrder = 0
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = [fsBold]
        ParentFont = False
        OnClick = BtnConsultarVendaClick
      end
      object BtnConsultarNFCE: TcxButton
        Left = 1
        Top = 30
        Width = 128
        Height = 30
        Align = alClient
        Caption = 'CONSULTAR'#13'NFC-e'
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
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          00000000000072C4EEFF72C4EEFF72C4EEFF72C4EEFF72C4EEFF72C4EEFF72C4
          EEFF72C4EEFF72C4EEFF72C4EEFF72C4EEFF72C4EEFF72C4EEFF72C4EEFF72C4
          EEFF72C4EEFF72C4EEFF72C4EEFF72C4EEFF72C4EEFF72C4EEFF223B484D0000
          0000000000000000000000000000000000000000000000000000000000000000
          000000000000223B484D72C4EEFF72C4EEFF72C4EEFF72C4EEFF72C4EEFF72C4
          EEFF72C4EEFF72C4EEFF72C4EEFF72C4EEFF72C4EEFF72C4EEFF72C4EEFF72C4
          EEFF72C4EEFF72C4EEFF72C4EEFF72C4EEFF72C4EEFF72C4EEFF72C4EEFF223B
          484D000000000000000000000000000000000000000000000000000000000000
          0000000000002828284D223B484D72C4EEFF72C4EEFF72C4EEFF72C4EEFF72C4
          EEFF72C4EEFF72C4EEFF72C4EEFF72C4EEFF72C4EEFF72C4EEFF72C4EEFF72C4
          EEFF72C4EEFF72C4EEFF72C4EEFF72C4EEFF72C4EEFF72C4EEFF72C4EEFF72C4
          EEFF223B484D0000000000000000000000000000000000000000000000000000
          000000000000848484FF2828284D223B484D72C4EEFF72C4EEFF72C4EEFF72C4
          EEFF72C4EEFF72C4EEFF72C4EEFF72C4EEFF72C4EEFF72C4EEFF72C4EEFF72C4
          EEFF72C4EEFF72C4EEFF72C4EEFF72C4EEFF72C4EEFF72C4EEFF72C4EEFF72C4
          EEFF72C4EEFF223B484D00000000000000000000000000000000000000000000
          000000000000848484FF848484FF2828284D24353E4D72C4EEFF72C4EEFF72C4
          EEFF72C4EEFF72C4EEFF72C4EEFF72C4EEFF72C4EEFF72C4EEFF72C4EEFF72C4
          EEFF72C4EEFF72C4EEFF72C4EEFF72C4EEFF72C4EEFF72C4EEFF72C4EEFF72C4
          EEFF72C4EEFF72C4EEFF223B484D000000000000000000000000000000000000
          000000000000848484FF848484FF000000002828284D223B484D72C4EEFF72C4
          EEFF72C4EEFF72C4EEFF72C4EEFF72C4EEFF72C4EEFF72C4EEFF72C4EEFF72C4
          EEFF72C4EEFF72C4EEFF72C4EEFF72C4EEFF72C4EEFF72C4EEFF72C4EEFF72C4
          EEFF72C4EEFF72C4EEFF72C4EEFF223B484D0000000000000000000000000000
          000000000000848484FF848484FF00000000848484FF4D4D4D4D223B484D72C4
          EEFF72C4EEFF72C4EEFF72C4EEFF72C4EEFF72C4EEFF72C4EEFF72C4EEFF72C4
          EEFF72C4EEFF72C4EEFF72C4EEFF72C4EEFF72C4EEFF72C4EEFF72C4EEFF72C4
          EEFF72C4EEFF72C4EEFF72C4EEFF72C4EEFF223B484D00000000000000000000
          000000000000848484FF848484FF00000000848484FFFFFFFFFF4D4D4D4D223B
          484D72C4EEFF72C4EEFF72C4EEFF72C4EEFF72C4EEFF72C4EEFF72C4EEFF72C4
          EEFF72C4EEFF72C4EEFF72C4EEFF72C4EEFF72C4EEFF72C4EEFF72C4EEFF72C4
          EEFF72C4EEFF72C4EEFF72C4EEFF72C4EEFF72C4EEFF223B484D000000000000
          000000000000848484FF848484FF00000000848484FFFFFFFFFFFFFFFFFF4D4D
          4D4D0000000000000000000000000000000000000000000000004D4D4D4DFFFF
          FFFF72C4EEFF72C4EEFF72C4EEFF72C4EEFF72C4EEFF72C4EEFF72C4EEFF72C4
          EEFF72C4EEFF72C4EEFF72C4EEFF72C4EEFF72C4EEFF72C4EEFF000000000000
          000000000000848484FF848484FF00000000848484FFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF4D4D4D4D4D4D
          4D4DFFFFFFFF72C4EEFF72C4EEFF72C4EEFF72C4EEFF72C4EEFF72C4EEFF72C4
          EEFF72C4EEFF72C4EEFF72C4EEFF72C4EEFF72C4EEFF223B484D000000000000
          000000000000848484FF848484FF00000000848484FFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF4D4D
          4D4D000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          000000000000848484FF848484FF00000000848484FFFFFFFFFFFFFFFFFFFFFF
          FFFFB8824DFFB8824DFFB8824DFFB8824DFFB8824DFFB8824DFFB8824DFFB882
          4DFFB8824DFFB8824DFFFFFFFFFFFFFFFFFFFFFFFFFF848484FF000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          000000000000848484FF848484FF00000000848484FFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF848484FF000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          000000000000848484FF848484FF00000000848484FFFFFFFFFFFFFFFFFFFFFF
          FFFFB8824DFFB8824DFFB8824DFFB8824DFFB8824DFFB8824DFFB8824DFFB882
          4DFFB8824DFFB8824DFFFFFFFFFFFFFFFFFFFFFFFFFF848484FF000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          000000000000848484FF848484FF00000000848484FFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF848484FF000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          000000000000848484FF848484FF00000000848484FFFFFFFFFFFFFFFFFFFFFF
          FFFFB8824DFFB8824DFFB8824DFFB8824DFFB8824DFFB8824DFFB8824DFFB882
          4DFFB8824DFFB8824DFFFFFFFFFFFFFFFFFFFFFFFFFF848484FF000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          000000000000848484FF848484FF00000000848484FFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF848484FF000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          000000000000848484FF848484FF00000000848484FFFFFFFFFFFFFFFFFFFFFF
          FFFFB8824DFFB8824DFFB8824DFFB8824DFFB8824DFFB8824DFFB8824DFFB882
          4DFFB8824DFFB8824DFFFFFFFFFFFFFFFFFFFFFFFFFF848484FF000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000002828284D848484FF00000000848484FFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF848484FF000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          000000000000000000000000000000000000848484FFFFFFFFFFFFFFFFFFFFFF
          FFFFB8824DFFB8824DFFB8824DFFB8824DFFB8824DFFB8824DFFB8824DFFB882
          4DFFB8824DFFB8824DFFFFFFFFFFFFFFFFFFFFFFFFFF848484FF000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          000000000000000000000000000000000000848484FFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF848484FF000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          000000000000000000000000000000000000848484FFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF848484FF000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          000000000000000000000000000000000000848484FF848484FF848484FF8484
          84FF848484FF848484FF848484FF848484FF848484FF848484FF848484FF8484
          84FF848484FF848484FF848484FF848484FF848484FF848484FF000000000000
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
        TabOrder = 1
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = [fsBold]
        ParentFont = False
        OnClick = BtnConsultarNFCEClick
      end
    end
    object cxButton1: TcxButton
      Left = 521
      Top = 61
      Width = 130
      Height = 61
      Align = alClient
      Caption = 'CADASTRO'#13'PRODUTOS'
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
        000072C4EEFF72C4EEFF72C4EEFF72C4EEFF72C4EEFF72C4EEFF72C4EEFF72C4
        EEFF72C4EEFF72C4EEFF72C4EEFF72C4EEFF72C4EEFF72C4EEFF72C4EEFF72C4
        EEFF72C4EEFF72C4EEFF72C4EEFF72C4EEFF72C4EEFF72C4EEFF72C4EEFF72C4
        EEFF000000000000000000000000000000000000000000000000000000000000
        000072C4EEFF72C4EEFF72C4EEFF72C4EEFF72C4EEFF72C4EEFF72C4EEFF72C4
        EEFF72C4EEFF72C4EEFF72C4EEFF72C4EEFF72C4EEFF72C4EEFF72C4EEFF72C4
        EEFF72C4EEFF72C4EEFF72C4EEFF72C4EEFF72C4EEFF72C4EEFF72C4EEFF72C4
        EEFF000000000000000000000000000000000000000000000000000000000000
        000072C4EEFF72C4EEFF72C4EEFF72C4EEFF72C4EEFF72C4EEFF72C4EEFF72C4
        EEFF72C4EEFF72C4EEFF72C4EEFF72C4EEFF72C4EEFF72C4EEFF72C4EEFF72C4
        EEFF72C4EEFF72C4EEFF72C4EEFF72C4EEFF72C4EEFF72C4EEFF72C4EEFF72C4
        EEFF000000000000000000000000000000000000000000000000000000000000
        000072C4EEFF72C4EEFF72C4EEFF72C4EEFF72C4EEFF72C4EEFF72C4EEFF72C4
        EEFF72C4EEFF72C4EEFF72C4EEFF72C4EEFF72C4EEFF72C4EEFF72C4EEFF72C4
        EEFF72C4EEFF72C4EEFF72C4EEFF72C4EEFF72C4EEFF72C4EEFF72C4EEFF72C4
        EEFF000000000000000000000000000000000000000000000000000000000000
        000072C4EEFF72C4EEFF72C4EEFF72C4EEFF72C4EEFF72C4EEFF72C4EEFF72C4
        EEFF72C4EEFF72C4EEFF72C4EEFF72C4EEFF72C4EEFF72C4EEFF72C4EEFF72C4
        EEFF72C4EEFF72C4EEFF72C4EEFF72C4EEFF72C4EEFF72C4EEFF72C4EEFF72C4
        EEFF000000000000000000000000000000000000000000000000000000000000
        000072C4EEFF72C4EEFF72C4EEFF72C4EEFF72C4EEFF72C4EEFF72C4EEFF72C4
        EEFF72C4EEFF72C4EEFF72C4EEFF72C4EEFF72C4EEFF72C4EEFF72C4EEFF72C4
        EEFF72C4EEFF72C4EEFF72C4EEFF72C4EEFF72C4EEFF72C4EEFF72C4EEFF72C4
        EEFF000000000000000000000000000000000000000000000000000000000000
        000072C4EEFF72C4EEFF72C4EEFF72C4EEFF72C4EEFF72C4EEFF72C4EEFF72C4
        EEFF72C4EEFF72C4EEFF72C4EEFF72C4EEFF72C4EEFF72C4EEFF72C4EEFF72C4
        EEFF72C4EEFF72C4EEFF72C4EEFF72C4EEFF72C4EEFF72C4EEFF72C4EEFF72C4
        EEFF0000000072C4EEFF72C4EEFF72C4EEFF0000000000000000000000000000
        000072C4EEFF72C4EEFF72C4EEFF72C4EEFF72C4EEFF72C4EEFF72C4EEFF72C4
        EEFF72C4EEFF72C4EEFF72C4EEFF72C4EEFF72C4EEFF72C4EEFF72C4EEFF72C4
        EEFF72C4EEFF72C4EEFF72C4EEFF72C4EEFF72C4EEFF72C4EEFF72C4EEFF72C4
        EEFF0000000072C4EEFF72C4EEFF72C4EEFF0000000000000000000000000000
        000072C4EEFF72C4EEFF72C4EEFF72C4EEFF72C4EEFF72C4EEFF72C4EEFF72C4
        EEFF72C4EEFF72C4EEFF72C4EEFF72C4EEFF72C4EEFF72C4EEFF72C4EEFF72C4
        EEFF72C4EEFF72C4EEFF72C4EEFF72C4EEFF72C4EEFF72C4EEFF72C4EEFF72C4
        EEFF0000000072C4EEFF72C4EEFF72C4EEFF0000000000000000000000000000
        000072C4EEFF72C4EEFF72C4EEFF72C4EEFF72C4EEFF72C4EEFF72C4EEFF72C4
        EEFF72C4EEFF72C4EEFF72C4EEFF72C4EEFF72C4EEFF72C4EEFF72C4EEFF72C4
        EEFF72C4EEFF72C4EEFF72C4EEFF72C4EEFF72C4EEFF72C4EEFF72C4EEFF72C4
        EEFF0000000072C4EEFF72C4EEFF72C4EEFF0000000000000000000000000000
        000072C4EEFF72C4EEFF72C4EEFF72C4EEFF72C4EEFF72C4EEFF72C4EEFF72C4
        EEFF72C4EEFF72C4EEFF72C4EEFF72C4EEFF72C4EEFF72C4EEFF72C4EEFF72C4
        EEFF72C4EEFF72C4EEFF72C4EEFF72C4EEFF72C4EEFF72C4EEFF72C4EEFF72C4
        EEFF0000000072C4EEFF72C4EEFF72C4EEFF0000000000000000000000000000
        000072C4EEFF72C4EEFF72C4EEFF72C4EEFF72C4EEFF72C4EEFF72C4EEFF72C4
        EEFF72C4EEFF00000000000000000000000000000000000000000000000072C4
        EEFF72C4EEFF72C4EEFF72C4EEFF72C4EEFF72C4EEFF72C4EEFF72C4EEFF72C4
        EEFF0000000072C4EEFF72C4EEFF72C4EEFF0000000000000000000000000000
        000072C4EEFF72C4EEFF72C4EEFF72C4EEFF72C4EEFF72C4EEFF72C4EEFF72C4
        EEFF72C4EEFF00000000000000000000000000000000000000000000000072C4
        EEFF72C4EEFF72C4EEFF72C4EEFF72C4EEFF72C4EEFF72C4EEFF72C4EEFF72C4
        EEFF0000000072C4EEFF72C4EEFF72C4EEFF0000000000000000000000000000
        000072C4EEFF72C4EEFF72C4EEFF72C4EEFF72C4EEFF72C4EEFF72C4EEFF72C4
        EEFF72C4EEFF00000000000000000000000000000000000000000000000072C4
        EEFF72C4EEFF72C4EEFF72C4EEFF72C4EEFF72C4EEFF72C4EEFF72C4EEFF72C4
        EEFF0000000072C4EEFF72C4EEFF72C4EEFF0000000000000000000000000000
        000072C4EEFF72C4EEFF72C4EEFF72C4EEFF72C4EEFF72C4EEFF72C4EEFF72C4
        EEFF72C4EEFF72C4EEFF72C4EEFF72C4EEFF72C4EEFF72C4EEFF72C4EEFF72C4
        EEFF72C4EEFF72C4EEFF72C4EEFF72C4EEFF72C4EEFF72C4EEFF72C4EEFF72C4
        EEFF0000000072C4EEFF72C4EEFF72C4EEFF0000000000000000000000000000
        000072C4EEFF72C4EEFF72C4EEFF72C4EEFF72C4EEFF72C4EEFF72C4EEFF72C4
        EEFF72C4EEFF72C4EEFF72C4EEFF72C4EEFF72C4EEFF72C4EEFF72C4EEFF72C4
        EEFF72C4EEFF72C4EEFF72C4EEFF72C4EEFF72C4EEFF72C4EEFF72C4EEFF72C4
        EEFF0000000072C4EEFF72C4EEFF72C4EEFF0000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        00000000000072C4EEFF72C4EEFF72C4EEFF0000000000000000000000000000
        000072C4EEFF72C4EEFF72C4EEFF72C4EEFF72C4EEFF72C4EEFF72C4EEFF72C4
        EEFF72C4EEFF72C4EEFF72C4EEFF72C4EEFF72C4EEFF72C4EEFF72C4EEFF72C4
        EEFF72C4EEFF72C4EEFF72C4EEFF72C4EEFF72C4EEFF72C4EEFF72C4EEFF72C4
        EEFF0000000072C4EEFF72C4EEFF72C4EEFF0000000000000000000000000000
        000072C4EEFF72C4EEFF72C4EEFF72C4EEFF72C4EEFF72C4EEFF72C4EEFF72C4
        EEFF72C4EEFF72C4EEFF72C4EEFF72C4EEFF72C4EEFF72C4EEFF72C4EEFF72C4
        EEFF72C4EEFF72C4EEFF72C4EEFF72C4EEFF72C4EEFF72C4EEFF72C4EEFF72C4
        EEFF0000000072C4EEFF72C4EEFF72C4EEFF0000000000000000000000000000
        000072C4EEFF72C4EEFF72C4EEFF72C4EEFF72C4EEFF72C4EEFF72C4EEFF72C4
        EEFF72C4EEFF72C4EEFF72C4EEFF72C4EEFF72C4EEFF72C4EEFF72C4EEFF72C4
        EEFF72C4EEFF72C4EEFF72C4EEFF72C4EEFF72C4EEFF72C4EEFF72C4EEFF72C4
        EEFF0000000072C4EEFF72C4EEFF72C4EEFF0000000000000000000000000000
        000072C4EEFF72C4EEFF72C4EEFF72C4EEFF72C4EEFF72C4EEFF72C4EEFF72C4
        EEFF72C4EEFF72C4EEFF72C4EEFF72C4EEFF72C4EEFF72C4EEFF72C4EEFF72C4
        EEFF72C4EEFF72C4EEFF72C4EEFF72C4EEFF72C4EEFF72C4EEFF72C4EEFF72C4
        EEFF0000000072C4EEFF72C4EEFF72C4EEFF0000000000000000000000000000
        000072C4EEFF72C4EEFF72C4EEFF72C4EEFF72C4EEFF72C4EEFF72C4EEFF72C4
        EEFF72C4EEFF72C4EEFF72C4EEFF72C4EEFF72C4EEFF72C4EEFF72C4EEFF72C4
        EEFF72C4EEFF72C4EEFF72C4EEFF72C4EEFF72C4EEFF72C4EEFF72C4EEFF72C4
        EEFF000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        00000000000072C4EEFF72C4EEFF72C4EEFF0000000000000000000000000000
        00000000000000000000000000000000000072C4EEFF72C4EEFF72C4EEFF72C4
        EEFF72C4EEFF72C4EEFF72C4EEFF72C4EEFF72C4EEFF72C4EEFF72C4EEFF72C4
        EEFF72C4EEFF72C4EEFF72C4EEFF72C4EEFF72C4EEFF72C4EEFF72C4EEFF72C4
        EEFF72C4EEFF72C4EEFF72C4EEFF72C4EEFF0000000000000000000000000000
        00000000000000000000000000000000000072C4EEFF72C4EEFF72C4EEFF72C4
        EEFF72C4EEFF72C4EEFF72C4EEFF72C4EEFF72C4EEFF72C4EEFF72C4EEFF72C4
        EEFF72C4EEFF72C4EEFF72C4EEFF72C4EEFF72C4EEFF72C4EEFF72C4EEFF72C4
        EEFF72C4EEFF72C4EEFF72C4EEFF72C4EEFF0000000000000000000000000000
        00000000000000000000000000000000000072C4EEFF72C4EEFF72C4EEFF72C4
        EEFF72C4EEFF72C4EEFF72C4EEFF72C4EEFF72C4EEFF72C4EEFF72C4EEFF72C4
        EEFF72C4EEFF72C4EEFF72C4EEFF72C4EEFF72C4EEFF72C4EEFF72C4EEFF72C4
        EEFF72C4EEFF72C4EEFF72C4EEFF72C4EEFF0000000000000000000000000000
        00000000000000000000000000000000000072C4EEFF72C4EEFF72C4EEFF72C4
        EEFF72C4EEFF72C4EEFF72C4EEFF72C4EEFF72C4EEFF72C4EEFF72C4EEFF72C4
        EEFF72C4EEFF72C4EEFF72C4EEFF72C4EEFF72C4EEFF72C4EEFF72C4EEFF72C4
        EEFF72C4EEFF72C4EEFF72C4EEFF72C4EEFF0000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000}
      TabOrder = 11
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      ParentFont = False
      OnClick = cxButton1Click
    end
    object cxButton2: TcxButton
      Left = 911
      Top = 61
      Width = 133
      Height = 61
      Align = alClient
      Caption = 'ACESSO'#13'REMOTO'
      LookAndFeel.NativeStyle = False
      LookAndFeel.SkinName = 'Metropolis'
      OptionsImage.Glyph.Data = {
        DA1F0000424DDA1F00000000000036000000280000002D0000002D0000000100
        200000000000A41F000000000000000000000000000000000000000000000000
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
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000707070D0E0E0D181C1B1B2B0B0B0B110808080B000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        000000000000010101020E0E0E1F3433336D6C6969D2989593FFA19E9CFFACA9
        A7FFB5B2B0FFC1BFBDFFCECCCAFFD8D5D5FC969594B14141414A161515190000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000302020528252558716F6EFD7C79
        78FF989593FFAEABA9FFB6B4B2FFB6B4B2FFB7B4B2FFB8B5B3FFB9B6B4FFB8B6
        B4FFB8B6B4FFC2C0BEFFD8D7D6FFDCDAD8FFBCBBBAE425252430010101010000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000262524556D6968F8858180FFABA8A5FFAFACAAFFB1AEACFFB1AFADFFB3B0
        AEFFB4B1AFFFB5B2B0FFB6B3B1FFB6B3B2FFB8B5B3FFB9B6B4FFBBB8B7FFBCBA
        B8FFBDBBB9FFBEBCBAFFBBB9B6FEA8A5A2EF0E0F0F1700000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        00000000000000000000000000000606060F605C5CDA7D7A78FFA29F9DFFAAA7
        A5FFABA7A5FFACA8A6FFACA9A7FFAEABA9FFAFACAAFFB0ADABFFB1AFADFFB2AF
        ADFFB3B0AEFFB5B2B0FFB5B3B1FFB8B5B3FFB9B7B5FFBBB7B7FFBCB9B8FFBCBA
        B8FFBAB8B6FFA39F9DFF63615FA7000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000001616
        1532696766F08E8B88FFA4A19FFFA3A09EFFA5A19FFFA5A2A0FFA6A3A1FFB0AD
        ABFFA9A8A6FF695F5EFF5C4A47FF4F3E3EFF4F3F3FFF544442FF5F4E4AFF746B
        6CFFBDBCBBFFBCBAB8FFB7B3B2FFB8B6B4FFBAB7B6FFBBB9B7FFBCBAB8FFA29F
        9DFF6D6A69D20707070E00000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        00000000000000000000000000001F1E1E45706D6DFD908D8AFF9B9896FF9B98
        96FF9D9A98FF9D9A98FF9F9D9BFF706563FF321210FF200000FF310100FF3203
        00FF330500FF330500FF320400FF320300FF2F0100FF210000FF3F2524FF8178
        78FFBDBBB9FFB5B2B0FFB6B4B2FFB9B5B4FFBCBAB8FF9C9997FF646260DB0505
        050B000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000B0A
        0A196D6C6AF7878583FF918D8CFF928F8DFF94918FFF989594FF817A77FF2605
        05FF370500FF360601FF360601FF360601FF360601FF360601FF360601FF3606
        01FF360601FF360601FF360601FF360701FF350200FF351915FF9F9B99FFB3B0
        AEFFB3B0AEFFB5B2B1FFB8B5B3FF9B9897FF6D6B69D500000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000020202056F6B6AF67E7B7AFF868381FF8885
        83FF898685FF8C8987FF3B2825FF3B0900FF3C0B01FF3C0B01FF3C0B01FF3C0B
        01FF3C0B01FF3C0B01FF3C0B01FF3C0B01FF3C0B01FF3C0B01FF3C0B01FF3C0B
        01FF3C0B01FF3D0B00FF3E0C00FF370800FF726666FFADAAA8FFAEABA9FFB0AE
        ACFFB3B0AEFF9F9C9AFF716E6EC5000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000575553C572706FFF817E7DFF817E7DFF817E7DFF838080FF331B15FF4413
        00FF441300FF441300FF441300FF441300FF441300FF441300FF441300FF4413
        00FF441300FF441300FF441300FF441300FF441300FF441300FF461501FF4615
        01FF461501FF451400FF574644FFA7A5A3FFA9A5A4FFAAA7A5FFADABA9FFA19E
        9CFF2E2D2C440000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000001313132B6F6B6AFF7C7978FF7D7A
        79FF7D7A79FF82807FFF3D231CFF4C1B01FF4C1B02FF4C1B02FF4C1B02FF4C1B
        02FF4C1B02FF4C1B02FF4C1B02FF4C1B02FF4C1B02FF4C1B02FF4C1B02FF4C1B
        02FF4C1B02FF4C1B02FF4C1B02FF4D1D02FF4D1D02FF4D1D02FF4D1D02FF4C1C
        01FF5F5352FFA3A09EFFA29F9DFFA4A19FFFA7A4A3FFADAAA8F9040404050000
        0000000000000000000000000000000000000000000000000000000000000000
        000000000000656463E772706FFF797675FF797675FF7A7776FF53453EFF5323
        01FF532403FF532403FF532403FF532403FF532403FF532403FF532403FF5324
        03FF532403FF532403FF532403FF532403FF532403FF532403FF532403FF5526
        03FF552603FF552603FF552603FF552603FF552703FF471800FF85807EFF9794
        92FF9B9896FF9D9A98FFB1AEADFF6362627F0000000000000000000000000000
        0000000000000000000000000000000000000000000019181839716E6DFF7673
        72FF767372FF767372FF666264FF441700FF522203FF572903FF5C2E03FF5C2D
        03FF5B2D03FF5B2D03FF5B2D03FF5B2D03FF5B2D03FF5B2D03FF5B2D03FF5B2D
        03FF5B2D03FF5B2D03FF5B2D03FF5B2D03FF5D2F03FF5E2F03FF5E2F03FF5C2E
        03FF562703FF4E1E03FF4E1E02FF391707FF8F8E8CFF8F8C8BFF928F8DFF9794
        92FFD9D6D5FF0909090B00000000000000000000000000000000000000000000
        00000000000000000000494947A76E6C6BFF716F6EFF716F6EFF72706FFF4A33
        23FF552403FF542403FF532403FF542503FF5B2C03FF603103FF623303FF6435
        03FF653604FF653604FF653604FF653604FF653604FF653604FF653604FF6536
        04FF633403FF613203FF5F3003FF582903FF532203FF542403FF542403FF5424
        03FF562501FF5E5450FF848181FF878482FF898685FFCCCBCAFF303131370000
        0000000000000000000000000000000000000000000000000000000000007573
        72FF6E6C6BFF6D6B6AFF6D6B6AFF6C6B6CFF4D2302FF592A01FF582A04FF572A
        07FF592A05FF5A2A03FF592A03FF572802FF562905FF582A05FF592A04FF592A
        04FF592A03FF592A04FF582A03FF562803FF572804FF592A03FF592A03FF5A2A
        03FF592A02FF592A02FF572A06FF572A07FF582A05FF5A2A02FF44240EFF7B79
        79FF797776FF7D7A79FF93908EFFAAA8A8BE0000000000000000000000000000
        00000000000000000000000000001B1B1B3E797574FF6A6867FF6A6867FF6A68
        67FF453734FF613000FF72584CFF989593FF9D9997FF6C5951FF5E3309FF5623
        00FFC9CBCDFF9E9D9CFF53311DFF603104FF68380AFF654537FF603002FF794C
        29FFD4D5D6FFCBC8C7FF633812FF603104FF603104FF664122FF827976FF9C9A
        98FF9F9C9BFF847670FF5C3E30FF5C2D00FF504D4FFF6A6867FF6D6B6AFF6E6B
        6AFFE1DEDDFF0101010200000000000000000000000000000000000000000000
        00003D3B3B7E787675FF666463FF666463FF676564FF4D3115FF988374FFA19F
        9DFFA8A5A4FFB0ADAAFFBBB9B7FF98827AFF5C2B00FFCDCED0FFABA9A8FF5D38
        21FF673804FFBAB2AFFFBEB7B6FF663B15FF7E4F29FFECEEEEFFE7E4E2FF6B3D
        0DFF653500FF8D7B6FFF9F9C9AFFA5A2A0FFAAA8A5FFB3B0AFFFBEBCBAFFC9C7
        C6FF947767FF473932FF5F5D5CFF5F5D5CFF605E5DFFC7C5C4FF1E1D1E260000
        00000000000000000000000000000000000000000000555353A5908E8BFF5E5C
        5CFF62605FFF636161FF5B2E00FFC3C2C3FFBDBBB9FFA79183FFBDA194FFE1E0
        DFFFF2F4F6FF703D0DFFDADBDDFFC4C2C2FF683E20FFB9A396FFDCDAD9FFE5E4
        E3FFB59D91FF82542CFFFFFFFFFFF9F6F5FF6F3F09FFA28672FFAFADACFFB8B6
        B4FFBFB2AEFF8A633CFF957154FFF1EBEBFFDDCFCDFF73420BFF4E3820FF5C5A
        5AFF5B5959FF5B5959FFB0AEADFF363535480000000000000000000000000000
        00000000000000000000686565BEA5A2A0FFA6A3A1FF6E6C6BFF5E5C5BFF7147
        1FFFAD906EFFAE9370FF6E3A00FF794915FFFCFCFCFFFFFFFFFF7C4915FFECEF
        F2FFE1E2E2FF8A6246FFEFF0F1FFF7F8F8FFFDFDFDFFFFFFFFFFAC856DFFFFFF
        FFFFFAF7F5FF754407FFC6C1BFFFD0CFCEFFB29C8AFF6F3B00FF754409FF7443
        08FF703E03FF77460EFF75440AFF5D3C16FF5A5857FF555352FF7A7775FFB9B7
        B6FF4442425D0000000000000000000000000000000000000000000000007675
        72CCABA8A6FFB3AFAEFFB5B1B0FF949291FF6F4410FF794807FF84531FFFBDA4
        8BFFF6EEEDFFFFFFFFFFFAF4F4FF733D00FFFFFFFFFFF9F8F9FFFDFCFCFFFFFF
        FFFFD4C0B3FFD5C2B4FFFFFFFFFFFEFEFDFFFFFFFFFFFAF7F5FF895A2CFFEEEE
        EEFFFBFDFFFF7C480FFF7B490AFF7B490AFF7B490AFF7B490AFF7B490AFF7B49
        0AFF603E16FF656362FF979492FFB4B1AFFFB4B1B0FF403F3E5D000000000000
        0000000000000000000000000000000000007E7D7ACCB4B1AFFFBAB7B5FFBAB7
        B5FFBEBBB9FF714511FF9C724EFFFFFFFFFFFFFFFFFFFFFFFFFFEEE4DFFF8354
        1FFF713C00FFFFFFFFFFFEFEFEFFFFFFFFFFF8F4F2FF7C4B0BFF744001FFF2EA
        E7FFFFFFFFFFFFFFFFFFF9F7F5FF956A49FFF7F7F6FFEBDFDCFF744000FF7B49
        0AFF7B490AFF7B490AFF7B490AFF7B490AFF7B490AFF6D4A22FFC4C1C0FFBAB7
        B5FFBAB7B5FFB0ADABFF3D3B3B5D000000000000000000000000000000000000
        000000000000807E7BC1BAB7B6FFC0BDBCFFC0BDBCFFC4C1C1FF6C3E07FFE8E7
        E7FFF1F1F0FFE7DBD6FF845225FF784504FF7A4809FF733E00FFECEEF1FFEDED
        ECFFF6F5F5FF825224FF7B490AFF7B490AFF916134FFFFFFFFFFFFFFFFFFFAF7
        F5FF7D5026FFD2D0D0FFE5E8E9FF82501DFF7B490AFF7B490AFF7B490AFF7B49
        0AFF7B490AFF7B490AFF714F28FFC6C3C2FFC0BDBCFFC0BDBCFFAAA7A5FF3A38
        385D000000000000000000000000000000000000000000000000777575ABC2C0
        BEFFC7C5C3FFC7C5C3FFCAC9C7FF825D44FFC1C1C0FFCFD0D2FF7A4712FF7E4D
        11FFD0B8ACFFD5BEB3FF804D13FFCBCCCFFFD1D0CFFFAC917FFF7B490AFF7B49
        0AFF7B490AFF7A4707FFB69980FFFFFFFFFFFAF7F6FF7C490AFFAAA5A2FFB7B4
        B2FFC5B4ACFF764100FF7B490AFF7B490AFF7D4C14FF85541FFF7E4B0AFF7663
        4FFFC7C5C3FFC7C5C3FFC7C5C3FFA6A3A1FF2827264300000000000000000000
        00000000000000000000000000005C5A5A7BC9C7C6FFCDCBCAFFCDCBCAFFCDCB
        CAFF644C36FFA5A2A0FFA9A7A5FFC7BBB3FFC4B8B0FFC8C6C6FFDADDDEFF7C47
        0DFFB0B0B1FFA89E98FF7A4708FF7B490AFF7B490AFF7B490AFF7B490AFF7947
        09FFD6C5C0FFF3F1EFFF7C4A0DFF7E6453FFA19F9DFFA6A3A2FFB5AFABFFCDBF
        B2FFD5CDC4FFCBC7C5FFDCDADAFF956634FF827773FFCDCBCAFFCDCBCAFFCDCC
        CAFF9F9C9BFF1918182D00000000000000000000000000000000000000000000
        000032323140D8D6D5FFD5D2D2FFD5D2D2FFD5D2D2FF746967FF867160FF9C9A
        98FF9C9997FFA19E9CFFAAA8A6FF8E705BFF774100FF9B9C9FFF7B4D19FF7B49
        0AFF7B490AFF7B490AFF7B490AFF7B490AFF7B490AFF7F511FFFDBD9D7FF7C4B
        0DFF7A4707FF7B6557FF9B9A98FF9B9795FF9C9A98FFA29F9DFFABAAA8FFADA9
        A8FF715032FFC6C4C6FFD5D2D2FFD5D2D2FFD7D5D4FF979493FF000000000000
        0000000000000000000000000000000000000000000000000000E2E1E0FFDBD9
        D8FFDBD9D8FFDBD9D8FFEAEAEAFF63390BFF7A5E46FF857973FF877A74FF7E61
        45FF7A480AFF7A4503FF816349FF7B4909FF7B490AFF7B490AFF7B490AFF7B49
        0AFF7B490AFF7B490AFF7A4808FF855F41FF7C4A0CFF7B490AFF7B4808FF744E
        2AFF806C61FF877A76FF877872FF7E634CFF764716FF694A2AFFE3E2E1FFDBD9
        D8FFDBD9D8FFC9C6C5FF676464C5000000000000000000000000000000000000
        0000000000000000000000000000989796A8E1DFDEFFE2E0DFFFE2E0DFFFE3E1
        E0FF837264FF7E4A06FF7B4705FF7B4705FF7B4909FF7B490AFF7B490AFF7B48
        07FF7B490AFF7B490AFF7B490AFF7B490AFF7B490AFF7B490AFF7B490AFF7B49
        0AFF7B4908FF7B490AFF7B490AFF7B490AFF7B4909FF7C4906FF7B4705FF7B48
        05FF7B4908FF794705FFABA4A1FFE1DFDEFFE2E0DFFFE2E0DFFF94918FFF2726
        2545000000000000000000000000000000000000000000000000000000000000
        00003737363FDEDDDCFFE9E8E8FFE9E7E7FFE9E7E7FFE1E0E1FF613A0AFF7B49
        0AFF7B490AFF7B490AFF7B490AFF7B490AFF7B490AFF7B490AFF7B490AFF7B49
        0AFF7B490AFF7B490AFF7B490AFF7B490AFF7B490AFF7B490AFF7B490AFF7B49
        0AFF7B490AFF7B490AFF7B490AFF7B490AFF7B490AFF7B490AFF654A33FFF3F2
        F3FFE9E7E7FFE9E7E7FFE5E4E3FF949190FF0606060B00000000000000000000
        0000000000000000000000000000000000000000000000000000C5C3C2F1E8E7
        E7FFF0F0EFFFF0F0EFFFF0F0EFFFB4ADAAFF7C4906FF7B490AFF7B490AFF7B49
        0AFF7B490AFF7B490AFF7B490AFF7B490AFF7B4A0BFF7C4B0DFF7D4C0DFF7D4C
        0FFF7C4B0CFF7B4A0CFF7B490AFF7B490AFF7B490AFF7B490AFF7B490AFF7B49
        0AFF7B490AFF7B490AFF6D4007FFD8D6D6FFF0F0EFFFF0F0EFFFF1F1F0FFB5B1
        AFFF525150860000000000000000000000000000000000000000000000000000
        00000000000000000000000000002121212BBFBDBBFFF7F7F6FFF7F7F6FFF7F7
        F6FFF9F9F8FFA6988EFF7D4A08FF7B490AFF7B490AFF7B490AFF7B490BFF804F
        15FF815015FF825115FF825115FF825115FF825115FF825115FF825115FF8251
        15FF825115FF815015FF7C4B0FFF7B4809FF7B490AFF7B490AFF7C4907FFDDD9
        D7FFF8F8F7FFF7F7F6FFF7F7F6FFECECEAFF969391F904030307000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        000000000000838080BACDCBCAFFFFFFFFFFFEFEFEFFFEFEFEFFFDFDFDFF9080
        72FF7C4907FF7B4909FF805014FF84541AFF84541AFF84541AFF84541AFF8454
        1AFF84541AFF84541AFF84541AFF84541AFF84541AFF84541AFF83531AFF8555
        1BFF84541AFF7B490AFF764405FFDAD6D4FFFEFEFEFFFEFEFEFFFEFEFEFFFFFF
        FFFFA8A5A3FF3332314E00000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000030202049996
        95F7EAE9E8FFFFFFFFFFFFFFFFFFFFFFFFFFFEFEFEFFBAB1ACFF6D410CFF8958
        1FFF87571FFF87571FFF87571FFF87571FFF87571FFF87571FFF87571FFF8757
        1FFF87571FFF87571FFF885720FF895822FF885821FF8B5920FF714D29FFCECA
        CCFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFC4C2C1FF7D7B79C4000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        00000000000000000000000000000000000018181728888583F8E7E6E5FFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFD9D6D7FF886F58FF7B4F1FFF8C5B22FF8A59
        23FF8A5923FF8A5923FF8A5923FF8A5923FF8A5923FF8A5A24FF8B5B26FF8C5C
        26FF8D5C25FF7A5024FF948374FFF6F5F6FFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFD3D2D1FF908D8AE200000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        000000000000000000002F2D2D58797674FEE4E4E3FFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFD6D3D4FF857369FF855B30FF815729FF7E5320FF8B5B
        26FF8C5C27FF8C5C29FF805524FF83582CFF835E38FF897B75FFEEEDEFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFD1CFCEFF94918FED030303030000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        000012121228726F6EFFCBC9C7FFFEFEFEFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF93939AFF96969DFF9999A0FFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFDFD
        FDFFB3B1AFFF93908FE905050407000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        000000000000000000000000000000000000000000000000000004040409807D
        7CEDA19E9CFFFEFEFEFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFEAE9E8FF989593FF625F5F9A000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000202020334323255AEABA9FEC3C2
        C0FFFAFAF9FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFE5E3E3FF9A98
        97FF8D8A89F41616152500000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        00000000000000000000000000000908080D504E4E6EBEBCBBF2E0DEDDFFEDEB
        ECFFFAFAFAFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFDFC
        FCFFE2E1E0FFB9B7B6FF9F9C9AFF6D6B6AD82A29294A00000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000383837427D7C7B8CB0AFAFC9C6C3C2EDD8D6
        D5FFCBC9C8FFC0BDBCFFB8B4B3FFACA8A6FF8B8987EA6C6968BC4644447F0F0F
        0F1E000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000011121218171616210707
        070B000000000000000000000000000000000000000000000000000000000000
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
        000000000000000000000000000000000000000000000000000000000000}
      TabOrder = 14
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      ParentFont = False
      OnClick = cxButton2Click
    end
    object BtnDescontoAcrescimos: TcxButton
      Left = 911
      Top = 1
      Width = 133
      Height = 60
      Align = alClient
      Caption = 'DESCONTOS'#13'ACR'#201'SCIMOS'#13'[F8]'
      Enabled = False
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
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        00000000000000000000000000000000000000000000717171FF717171FF7171
        71FF717171FF717171FF717171FF717171FF717171FF717171FF717171FF7171
        71FF717171FF717171FF00000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        00000000000000000000000000000000000000000000717171FF717171FF7171
        71FF717171FF717171FF717171FF717171FF717171FF717171FF717171FF7171
        71FF717171FF717171FF00000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        00000000000000000000000000000000000000000000717171FF717171FF7171
        71FF717171FF717171FF717171FF717171FF717171FF717171FF717171FF7171
        71FF717171FF717171FF00000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000005471DDFF5471DDFF5471DDFF5471DDFF5471DDFF5471DDFF5471
        DDFF5471DDFF5471DDFF00000000000000000000000000000000000000000000
        0000000000000000000039393980393939803939398039393980393939803939
        3980393939803939398000000000000000000000000000000000000000000000
        0000000000005471DDFF5471DDFF5471DDFF5471DDFF5471DDFF5471DDFF5471
        DDFF5471DDFF5471DDFF00000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000005471DDFF5471DDFF5471DDFF5471DDFF5471DDFF5471DDFF5471
        DDFF5471DDFF5471DDFF00000000000000000000000000000000000000000000
        0000000000000000000039393980393939803939398039393980393939803939
        3980393939803939398000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        00000000000000000000000000000000000000000000717171FF717171FF7171
        71FF717171FF717171FF717171FF717171FF717171FF717171FF717171FF7171
        71FF717171FF717171FF00000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        00000000000000000000000000000000000000000000717171FF717171FF7171
        71FF717171FF717171FF717171FF717171FF717171FF717171FF717171FF7171
        71FF717171FF717171FF00000000000000000000000000000000000000000000
        000000000000000000000000000000000000B8824DFFB8824DFFB8824DFF0000
        00000000000000000000000000000000000000000000717171FF717171FF7171
        71FF717171FF717171FF717171FF717171FF717171FF717171FF717171FF7171
        71FF717171FF717171FF00000000000000000000000000000000000000000000
        000000000000000000000000000000000000B8824DFFB8824DFFB8824DFF0000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        000000000000000000000000000000000000B8824DFFB8824DFFB8824DFF0000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        000000000000B8824DFFB8824DFFB8824DFFB8824DFFB8824DFFB8824DFFB882
        4DFFB8824DFFB8824DFF00000000000000000000000000000000000000000000
        0000000000000000000039393980393939803939398039393980393939803939
        3980393939803939398000000000000000000000000000000000000000000000
        000000000000B8824DFFB8824DFFB8824DFFB8824DFFB8824DFFB8824DFFB882
        4DFFB8824DFFB8824DFF00000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        000000000000B8824DFFB8824DFFB8824DFFB8824DFFB8824DFFB8824DFFB882
        4DFFB8824DFFB8824DFF00000000000000000000000000000000000000000000
        0000000000000000000039393980393939803939398039393980393939803939
        3980393939803939398000000000000000000000000000000000000000000000
        000000000000000000000000000000000000B8824DFFB8824DFFB8824DFF0000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        000000000000000000000000000000000000B8824DFFB8824DFFB8824DFF0000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        000000000000000000000000000000000000B8824DFFB8824DFFB8824DFF0000
        00000000000000000000000000000000000000000000717171FF717171FF7171
        71FF717171FF717171FF717171FF717171FF717171FF717171FF717171FF7171
        71FF717171FF717171FF00000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        00000000000000000000000000000000000000000000717171FF717171FF7171
        71FF717171FF717171FF717171FF717171FF717171FF717171FF717171FF7171
        71FF717171FF717171FF00000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        00000000000000000000000000000000000000000000717171FF717171FF7171
        71FF717171FF717171FF717171FF717171FF717171FF717171FF717171FF7171
        71FF717171FF717171FF00000000000000000000000000000000000000000000
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
      TabOrder = 7
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      ParentFont = False
      OnClick = BtnDescontoAcrescimosClick
    end
    object GridPanel2: TGridPanel
      Left = 1
      Top = 61
      Width = 130
      Height = 61
      Align = alClient
      Caption = 'GridPanel1'
      ColumnCollection = <
        item
          Value = 100.000000000000000000
        end>
      ControlCollection = <
        item
          Column = 0
          Control = btn_suprimentos
          Row = 0
        end
        item
          Column = 0
          Control = btn_sangrias
          Row = 1
        end>
      RowCollection = <
        item
          Value = 50.000000000000000000
        end
        item
          Value = 50.000000000000000000
        end>
      TabOrder = 15
      object btn_suprimentos: TcxButton
        Left = 1
        Top = 1
        Width = 128
        Height = 29
        Align = alClient
        Caption = 'SUPRIMENTOS'
        LookAndFeel.NativeStyle = False
        LookAndFeel.SkinName = 'Metropolis'
        OptionsImage.Glyph.Data = {
          36100000424D3610000000000000360000002800000020000000200000000100
          2000000000000010000000000000000000000000000000000000000000000000
          0001000000020000000400000005000000050000000500000005000000050000
          0005000000050000000500000005000000050000000500000005000000050000
          0005000000050000000500000005000000050000000500000005000000050000
          0005000000050000000500000004000000020000000100000001000000010000
          0003000000090000000F00000012000000140000001400000014000000140000
          0014000000140000001400000014000000140000001400000014000000140000
          0014000000140000001500000015000000150000001500000015000000150000
          00150000001500000014000000100000000A0000000400000001000000020000
          000809182E571D4A92EA2053A1FF2053A1FF1F52A1FF1F51A1FF1F52A0FF1F51
          A1FF1F51A0FF1E50A1FF1F50A0FF1F50A0FF1F4F9FFF1E50A0FF1E50A0FF1E4F
          A0FF1E4F9FFF1E4F9FFF1D4E9FFF1E4E9FFF1D4E9EFF1D4E9FFF1E4D9EFF1D4E
          9EFF1D4D9EFF1D4D9EFF1B468FEA08162D590000000900000002000000040000
          000E1E4B92E760A2D8FF57B0E9FF55AFE8FF55AFE9FF53AEE8FF53AEE8FF52AD
          E8FF51ACE7FF50ABE8FF4FABE7FF4FAAE7FF4EAAE7FF4DA9E7FF4CA9E7FF4BA8
          E6FF4BA8E6FF4AA8E6FF4AA7E6FF49A6E6FF47A6E5FF47A6E6FF46A6E5FF46A6
          E5FF45A5E5FF45A5E5FF5096D4FF1A468EE80000001000000004000000040000
          00112156A4FF76BEEDFF4CA9E7FF4BA8E7FF4AA8E7FF49A7E6FF47A6E6FF47A5
          E6FF46A5E6FF45A4E6FF44A4E5FF43A3E5FF42A2E5FF42A2E5FF41A1E5FF40A1
          E4FF3FA1E4FF3FA0E3FF3D9FE4FF3D9FE3FF3C9EE3FF3B9DE3FF3B9DE3FF3A9C
          E2FF399CE2FF389CE3FF5FAFE8FF1D4F9FFF0000001300000004000000040000
          00112257A5FF78BFEDFF50ACE8FF4FABE8FF4EAAE8FF4DAAE7FF4CA9E7FF4BA8
          E7FF4AA8E6FF49A7E6FF48A7E6FF48A6E6FF46A5E5FF45A4E6FF45A4E5FF43A4
          E5FF43A3E4FF41A2E5FF41A1E4FF40A1E4FF3FA1E4FF3EA0E4FF3E9FE4FF3D9F
          E4FF3C9EE3FF3C9EE3FF61B1E8FF1E4FA0FF0000001300000005000000040000
          00102358A6FF7EC2EEFF55AFE9FF53AFE9FF52AEE8FF52ADE8FF51ACE8FF50AC
          E8FF4EAAE8FF4EABE7FF4DAAE7FF4BA8E7FF4AA8E7FF4AA7E6FF49A7E6FF48A6
          E6FF46A5E6FF46A5E6FF45A4E5FF44A4E5FF43A3E5FF42A3E5FF42A2E4FF41A1
          E4FF3FA1E4FF3FA0E4FF65B3EAFF1F50A1FF0000001300000005000000040000
          0010245AA6FF84C6EFFF59B2EAFF58B2EAFF57B1EAFF55B0EAFF55AFE9FF54AE
          E9FF53AEE9FF51ADE9FF51ADE9FF50ACE8FF4EABE8FF4EAAE7FF4DAAE7FF4BA9
          E7FF4BA9E7FF4AA7E6FF49A7E6FF48A6E6FF47A5E6FF46A5E5FF45A5E6FF45A4
          E6FF44A3E5FF43A3E4FF6AB6EBFF1F52A1FF0000001200000005000000040000
          000F245BA7FF89C9F0FF5EB5ECFF5DB4EBFF5BB3EBFF5AB3EBFF59B2EAFF58B2
          EBFF57B1EAFF56B0EAFF55AFE9FF54AFE9FF53AEE9FF52ADE8FF51ACE9FF50AC
          E8FF4FABE8FF4EAAE7FF4DAAE8FF4DAAE7FF4BA9E7FF4AA8E7FF49A7E6FF48A7
          E6FF47A6E6FF46A5E6FF70BAEBFF2053A2FF0000001100000004000000040000
          000F265DA9FF8FCCF2FF63B8EDFF61B8ECFF60B7ECFF5FB6ECFF5EB6ECFF5DB5
          EBFF5CB5EBFF5BB4EAFF59B3EBFF7BC4EFFFB7E3F8FFD3F3FCFFD3F2FCFFB5E2
          F8FF76C1EEFF53AEE9FF52ADE8FF51ACE8FF4FACE8FF4EABE8FF4DABE8FF4DA9
          E7FF4CA9E7FF4AA8E7FF75BDEDFF2054A3FF0000001100000004000000040000
          000E265FAAFF94CFF3FF66BBEDFF65BAEEFF65BAEDFF64BAEDFF63B9ECFF62B8
          ECFF61B8ECFF5FB6ECFF9DD6F5FFD8F5FEFF94D6F5FF7BCCF3FF7ECEF4FF9BDB
          F8FFD3F5FEFF96D3F3FF56B0EAFF55B0E9FF55AFE9FF53AEE9FF52AEE9FF51AD
          E8FF50ACE9FF4FABE7FF7BC0EEFF2155A4FF0000001000000004000000030000
          000E2761AAFF98D3F4FF6CBFEFFF6ABEEFFF69BDEEFF69BDEEFF68BCEEFF66BB
          EEFF65BBEDFF84C9F1FFD3F2FDFF7AC9F2FF6CC4F1FF71C7F2FF75CBF3FF7ACF
          F4FF85D6F7FFCDF2FDFF79C4F0FF59B3EBFF58B2EAFF57B1EAFF56B1EAFF55AF
          EAFF55AFE9FF53AEE9FF82C4EFFF2257A4FF0000001000000004000000030000
          000D2863ACFF9ED6F5FF70C2F0FF6FC1F0FF6EC0EFFF6DBFEFFF6CBFEFFF6BBE
          EFFF6ABEEFFFC8ECFAFFA5DEF7FF58A6DBFF3674B8FF265AA7FF265BA7FF3B77
          B9FF68B2E0FFA1E2F9FFBEE9FAFF5EB5ECFF5DB5ECFF5CB4EBFF5BB3EBFF5AB3
          EBFF59B2EAFF58B1EAFF86C6F0FF2359A5FF0000000F00000004000000030000
          000D3F86C7FFE5F9FDFFECFCFFFFEAFBFEFFE9FBFFFFE9FBFFFFE8FBFEFFE7FA
          FEFFE5FAFFFFE4FBFEFF4A8DCAFF2052A0FF1F52A0FF20519FFF20519FFF1F51
          A0FF1F52A0FF5899CEFFDCF9FFFFDAF8FFFFDAF9FEFFD9F8FEFFD8F9FEFFD8F8
          FEFFD7F8FEFFD5F8FEFFCEF4FDFF3574BBFF0000000F00000004000000030000
          000C4189CAFFC3F0FCFF98E4FBFF98E5FBFF97E5FBFF97E4FBFF97E4FBFF96E3
          FBFF96E4FBFF55A5DBFF2255A3FF2257A4FF20549EFF1F5098FF1F5098FF2053
          9EFF2156A4FF2155A3FF74BCE5FF93E1FAFF93E1FBFF92E0FAFF92E0FAFF92E0
          FAFF91E0FBFF91E0FAFFB1E9FBFF3778BEFF0000000E00000004000000030000
          000C438DCCFFBBF0FCFF9AE6FBFF9AE6FCFF9AE6FBFF9AE5FBFF9AE5FBFF99E5
          FCFF98E5FBFF326FB5FF2459A6FF2258A3FF1F528EFF28614EFF245E4AFF1F51
          8DFF2257A2FF2358A5FF3D78B8FF95E2FAFF94E2FBFF94E2FBFF94E2FBFF93E2
          FBFF93E1FAFF93E1FBFFACE9FCFF397CC0FF0000000D00000003000000030000
          000B4590CFFFBEF1FDFF9DE7FCFF255CA8FF255CA7FF255CA8FF245CA7FF245C
          A7FF245BA6FF245AA6FF265DA8FF24589FFF1B5150FF7AC1AEFF61B79EFF1A50
          4EFF23579EFF255CA7FF2258A5FF2359A5FF2259A6FF2258A5FF2258A5FF2258
          A5FF2257A5FF95E2FBFFB0EAFCFF3B80C2FF0000000D00000003000000030000
          000B4793D2FFC1F2FDFF9FE8FCFF2760ABFF2A67B1FF2A67B1FF2967B1FF2967
          B1FF2966B0FF2863ACFF275FA5FF20566FFF5B9985FF64D2B1FF61D0AFFF448F
          75FF1F556FFF255DA4FF2761ACFF2862AEFF2762AFFF2862AFFF2762AEFF2761
          AEFF245BA7FF97E4FBFFB2ECFBFF3D84C6FF0000000D00000003000000030000
          000A4996D3FFC4F3FDFFA1EAFDFF2964ADFF2C6DB5FF2C6CB4FF2C6CB4FF2C6B
          B4FF2A69B2FF2A67ACFF265F92FF346F5AFF7EDAC2FF42C49BFF43C39BFF70D3
          B7FF2A6A53FF245B90FF2863AAFF2966B0FF2A66B1FF2966B2FF2966B1FF2965
          B1FF265EA9FF99E6FBFFB6EDFCFF3F87C8FF0000000C00000003000000020000
          000A4B99D6FFC6F4FEFFA2EBFCFF2B69B0FF2F71B8FF2F71B7FF2E71B7FF2E70
          B5FF2D6CB2FF2A67A8FF215F55FF80CCB8FF4FC9A4FF43C49BFF43C39AFF4FC9
          A3FF68C0A6FF205D54FF2964A5FF2B69B0FF2C6BB3FF2C6AB3FF2C6AB4FF2B6A
          B4FF2761ABFF9BE7FCFFB9EEFDFF428BCBFF0000000B00000003000000020000
          00094D9CD8FFC7F4FEFFA4ECFCFF2C6DB2FF3177BBFF3177BBFF3175B9FF3073
          B7FF2E6FB0FF256374FF66A995FF64D3B3FF47C69DFF46C69DFF45C59DFF45C5
          9DFF61D1AFFF4F9E83FF235F71FF2C6AADFF2D6FB4FF2E70B6FF2D70B7FF2D6F
          B7FF2965AEFF9DE8FCFFBBF0FDFF448ECEFF0000000B00000003000000020000
          00094E9FDAFFCAF5FEFFA6EEFDFF2F70B6FF347DBFFF337CBEFF337ABDFF3177
          B6FF2C6D98FF40826BFF7FDEC5FF4AC8A2FF49C8A0FF48C8A0FF48C79FFF47C6
          9EFF48C79FFF73D8BCFF337B60FF286794FF2E6FB3FF2F73B8FF2F74BAFF2F73
          BAFF2B69B0FFA0E9FCFFBEF1FDFF4691CFFF0000000A00000003000000020000
          000850A1DCFFCCF6FEFFA8EFFDFF3175B7FF3074B8FF3173B7FF2F71B3FF2D6B
          A8FF296C5EFF86D6C2FF55CEA9FF4DCAA3FF4CCAA2FF4BC9A2FF4AC9A2FF4AC9
          A1FF49C8A0FF52CCA6FF70CBB2FF246659FF2A65A3FF2C6AAEFF2D6CB2FF2D6C
          B2FF2C6CB1FFA1EAFCFFC1F2FDFF4894D2FF0000000A00000003000000020000
          000751A4DEFFCEF7FEFFB3F2FEFFA9F0FDFFA8EFFDFFA6EBF9FFA0E5F2FF5498
          8CFF73BBA6FF67D5B6FF51CBA6FF5AD1AEFF62D4B3FF67D7B6FF66D6B5FF5FD3
          B1FF56CEAAFF4DCAA3FF62D3B2FF5AAE95FF519389FF9BE0EFFFA1E7F7FFA3EB
          FCFFA4ECFDFFACEEFDFFC3F3FEFF4A97D4FF0000000900000002000000010000
          00054C96CAE8AFE3F6FFD0F8FEFFD0F8FEFFCCF6FCFFC8F0F6FF96C5C2FF4D94
          7CFF80DFC7FF56D0ABFF6CD9BBFF6FDBBDFF6EDBBCFF6DDABBFF6BD9BBFF6AD9
          B9FF68D8B8FF63D5B4FF51CBA7FF75DABFFF3E8A6FFF8FC0BEFFC0ECF5FFC6F3
          FCFFC6F5FEFFC6F4FEFFA6DDF4FF458BC2E80000000700000002000000010000
          0003152937444283B0CC54A7E0FF54A6DFFF52A3DCFF4C9BCCFF37826CFFAAE9
          DDFFB9F7EDFFB9F7EDFFB9F7EDFFB9F7EDFF73DDC1FF72DDC0FF71DCBFFF6FDB
          BDFF94E9D5FF93E9D5FFB9F7EDFFB9F7EDFFA9E9DCFF337A68FF4893C5FF4D9C
          D6FF4E9ED9FF4E9ED9FF3E7CABCC132736460000000400000001000000000000
          0001000000030000000500000006000000080000000B2C6451AE43987AFF4398
          7AFF42967AFF429679FF429679FFB9F7EDFF78E0C5FF77E0C3FF76DFC3FF75DE
          C2FF97EAD7FF409476FF409376FF409276FF409375FF409275FF2B624EB20000
          000D000000090000000700000006000000030000000100000000000000000000
          00000000000100000001000000010000000300000004000000070000000B0000
          000D0000000F0000001545997DFFB9F7EDFF7EE3C9FF7DE2C7FF7BE2C7FF7AE1
          C6FF99ECD9FF43977AFF00000017000000110000000F0000000C000000090000
          0005000000030000000200000001000000010000000000000000000000000000
          0000000000003131313100000000000000000000000000000001000000020000
          0003000000050000000C479D80FFB9F7EDFF82E5CCFF81E4CBFF80E4CAFF7FE3
          CAFF9CEDDBFF459B7EFF0000000E000000060000000300000002000000020000
          0001000000000000000031313131000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000030000000948A183FFB9F7EDFF86E7CFFF86E6CEFF85E6CEFF83E6
          CDFF9EEEDDFF479F81FF0000000B000000030000000100000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          000000000002000000074AA386FFB9F7EDFFB9F7EDFFB9F7EDFFB9F7EDFFB9F7
          EDFFB9F7EDFF4AA284FF00000009000000020000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          00000000000100000005387B66C04CA689FF4CA688FF4CA689FF4CA689FF4CA5
          88FF4CA587FF387964C000000005000000010000000000000000000000000000
          0000000000000000000000000000000000000000000000000000}
        TabOrder = 0
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = [fsBold]
        ParentFont = False
        OnClick = btn_suprimentosClick
      end
      object btn_sangrias: TcxButton
        Left = 1
        Top = 30
        Width = 128
        Height = 30
        Align = alClient
        Caption = 'SANGRIAS'
        LookAndFeel.NativeStyle = False
        LookAndFeel.SkinName = 'Metropolis'
        OptionsImage.Glyph.Data = {
          36100000424D3610000000000000360000002800000020000000200000000100
          2000000000000010000000000000000000000000000000000000000000000000
          0001000000020000000400000005000000050000000500000005000000050000
          0005000000050000000500000005000000050000000500000005000000050000
          0005000000050000000500000005000000050000000500000005000000050000
          0005000000050000000500000004000000020000000100000001000000010000
          0003000000090000000F00000012000000140000001400000014000000140000
          0014000000140000001400000014000000140000001400000014000000140000
          0014000000140000001500000015000000150000001500000015000000150000
          00150000001500000014000000100000000A0000000400000001000000020000
          000809182E571D4A92EA2053A1FF2053A1FF1F52A1FF1F51A1FF1F52A0FF1F51
          A1FF1F51A0FF1E50A1FF1F50A0FF1F50A0FF1F4F9FFF1E50A0FF1E50A0FF1E4F
          A0FF1E4F9FFF1E4F9FFF1D4E9FFF1E4E9FFF1D4E9EFF1D4E9FFF1E4D9EFF1D4E
          9EFF1D4D9EFF1D4D9EFF1B468FEA08162D590000000900000002000000040000
          000E1E4B92E760A2D8FF57B0E9FF55AFE8FF55AFE9FF53AEE8FF53AEE8FF52AD
          E8FF51ACE7FF50ABE8FF4FABE7FF4FAAE7FF4EAAE7FF4DA9E7FF4CA9E7FF4BA8
          E6FF4BA8E6FF4AA8E6FF4AA7E6FF49A6E6FF47A6E5FF47A6E6FF46A6E5FF46A6
          E5FF45A5E5FF45A5E5FF5096D4FF1A468EE80000001000000004000000040000
          00112156A4FF76BEEDFF4CA9E7FF4BA8E7FF4AA8E7FF49A7E6FF47A6E6FF47A5
          E6FF46A5E6FF45A4E6FF44A4E5FF43A3E5FF42A2E5FF42A2E5FF41A1E5FF40A1
          E4FF3FA1E4FF3FA0E3FF3D9FE4FF3D9FE3FF3C9EE3FF3B9DE3FF3B9DE3FF3A9C
          E2FF399CE2FF389CE3FF5FAFE8FF1D4F9FFF0000001300000004000000040000
          00112257A5FF78BFEDFF50ACE8FF4FABE8FF4EAAE8FF4DAAE7FF4CA9E7FF4BA8
          E7FF4AA8E6FF49A7E6FF48A7E6FF48A6E6FF46A5E5FF45A4E6FF45A4E5FF43A4
          E5FF43A3E4FF41A2E5FF41A1E4FF40A1E4FF3FA1E4FF3EA0E4FF3E9FE4FF3D9F
          E4FF3C9EE3FF3C9EE3FF61B1E8FF1E4FA0FF0000001300000005000000040000
          00102358A6FF7EC2EEFF55AFE9FF53AFE9FF52AEE8FF52ADE8FF51ACE8FF50AC
          E8FF4EAAE8FF4EABE7FF4DAAE7FF4BA8E7FF4AA8E7FF4AA7E6FF49A7E6FF48A6
          E6FF46A5E6FF46A5E6FF45A4E5FF44A4E5FF43A3E5FF42A3E5FF42A2E4FF41A1
          E4FF3FA1E4FF3FA0E4FF65B3EAFF1F50A1FF0000001300000005000000040000
          0010245AA6FF84C6EFFF59B2EAFF58B2EAFF57B1EAFF55B0EAFF55AFE9FF54AE
          E9FF53AEE9FF51ADE9FF51ADE9FF50ACE8FF4EABE8FF4EAAE7FF4DAAE7FF4BA9
          E7FF4BA9E7FF4AA7E6FF49A7E6FF48A6E6FF47A5E6FF46A5E5FF45A5E6FF45A4
          E6FF44A3E5FF43A3E4FF6AB6EBFF1F52A1FF0000001200000005000000040000
          000F245BA7FF89C9F0FF5EB5ECFF5DB4EBFF5BB3EBFF5AB3EBFF59B2EAFF58B2
          EBFF57B1EAFF56B0EAFF55AFE9FF54AFE9FF53AEE9FF52ADE8FF51ACE9FF50AC
          E8FF4FABE8FF4EAAE7FF4DAAE8FF4DAAE7FF4BA9E7FF4AA8E7FF49A7E6FF48A7
          E6FF47A6E6FF46A5E6FF70BAEBFF2053A2FF0000001100000004000000040000
          000F265DA9FF8FCCF2FF63B8EDFF61B8ECFF60B7ECFF5FB6ECFF5EB6ECFF5DB5
          EBFF5CB5EBFF5BB4EAFF59B3EBFF7BC4EFFFB7E3F8FFD3F3FCFFD3F2FCFFB5E2
          F8FF76C1EEFF53AEE9FF52ADE8FF51ACE8FF4FACE8FF4EABE8FF4DABE8FF4DA9
          E7FF4CA9E7FF4AA8E7FF75BDEDFF2054A3FF0000001100000004000000040000
          000E265FAAFF94CFF3FF66BBEDFF65BAEEFF65BAEDFF64BAEDFF63B9ECFF62B8
          ECFF61B8ECFF5FB6ECFF9DD6F5FFD8F5FEFF94D6F5FF7BCCF3FF7ECEF4FF9BDB
          F8FFD3F5FEFF96D3F3FF56B0EAFF55B0E9FF55AFE9FF53AEE9FF52AEE9FF51AD
          E8FF50ACE9FF4FABE7FF7BC0EEFF2155A4FF0000001000000004000000030000
          000E2761AAFF98D3F4FF6CBFEFFF6ABEEFFF69BDEEFF69BDEEFF68BCEEFF66BB
          EEFF65BBEDFF84C9F1FFD3F2FDFF7AC9F2FF6CC4F1FF71C7F2FF75CBF3FF7ACF
          F4FF85D6F7FFCDF2FDFF79C4F0FF59B3EBFF58B2EAFF57B1EAFF56B1EAFF55AF
          EAFF55AFE9FF53AEE9FF82C4EFFF2257A4FF0000001000000004000000030000
          000D2863ACFF9ED6F5FF70C2F0FF6FC1F0FF6EC0EFFF6DBFEFFF6CBFEFFF6BBE
          EFFF6ABEEFFFC7EBF9FFA4DDF6FF58A6DBFF3674B8FF265BA7FF265CA7FF3B77
          B9FF68B2E0FFA0E1F8FFBDE8F9FF5EB5ECFF5DB5ECFF5CB4EBFF5BB3EBFF5AB3
          EBFF59B2EAFF58B1EAFF86C6F0FF2359A5FF0000000F00000004000000030000
          000D3F86C7FFE5F9FDFFECFCFFFFEAFBFEFFE9FBFFFFE9FBFFFFE8FBFEFFE7FA
          FEFFE4F9FEFFE1F8FBFF488AC5FF1E4E9AFF1E509BFF1F509CFF1F509CFF1E4F
          9BFF1D4E9AFF5696C9FFD9F6FCFFD9F7FEFFDAF9FEFFD9F8FEFFD8F9FEFFD8F8
          FEFFD7F8FEFFD5F8FEFFCEF4FDFF3574BBFF0000000F00000004000000030000
          000C4189CAFFC3F0FCFF98E4FBFF98E5FBFF97E5FBFF97E4FBFF97E4FBFF96E3
          FBFF95E2F9FF529ED2FF1E4B92FF1D4A8DFF1C498CFF1C498BFF1C498BFF1C48
          8CFF1C498DFF1D4B91FF6FB4DBFF92DFF8FF93E1FBFF92E0FAFF92E0FAFF92E0
          FAFF91E0FBFF91E0FAFFB1E9FBFF3778BEFF0000000E00000004000000030000
          000C438DCCFFBBF0FCFF9AE6FBFF9AE6FCFF9AE6FBFF9AE5FBFF9AE5FBFF98E4
          FBFF96E2F8FF2E67A8FF6F483FFF8C4726FF8B4725FF8B4725FF8B4725FF8B47
          24FF8B4624FF6E463DFF386FAAFF93DEF6FF93E1FAFF94E2FBFF94E2FBFF93E2
          FBFF93E1FAFF93E1FBFFACE9FCFF397CC0FF0000000D00000003000000030000
          000B4590CFFFBEF1FDFF9DE7FCFF255CA8FF255CA7FF255CA8FF245CA7FF245C
          A6FF2359A4FF205297FFAA683FFFE0BD8BFFE0BD8AFFE0BC89FFE0BC88FFDFBC
          89FFDFBC87FFA9673DFF1E5095FF2257A3FF2259A5FF2258A5FF2258A5FF2258
          A5FF2257A5FF95E2FBFFB0EAFCFF3B80C2FF0000000D00000003000000030000
          000B4793D2FFC1F2FDFF9FE8FCFF2760ABFF2A67B1FF2A67B0FF2967B0FF2967
          B0FF2864ADFF255B9DFFAB6B42FFE1BF8FFFDDB680FFDDB680FFDDB680FFDDB5
          7EFFE0BD8AFFAA6940FF23589CFF2760ABFF2762AEFF2862AEFF2762ADFF2761
          AEFF245BA7FF97E4FBFFB2ECFBFF3D84C6FF0000000D00000003000000030000
          000A4996D3FFC4F3FDFFA1EAFDFF2964ADFF2C6DB3FF2A6AB0FF2A68ADFF2A66
          ADFF2864A9FF265D9CFFAD6E45FFE1C194FFDEB883FFDEB883FFDEB882FFDDB6
          81FFE1BE8FFFAC6C42FF24599AFF2661A7FF2862AAFF2762ACFF2964ADFF2965
          AFFF265EA8FF99E6FBFFB6EDFCFF3F87C8FF0000000C00000003000000020000
          000A4B99D6FFC6F4FEFFA2EBFCFF2B69AFFF2E6EB4FF2B69AAFF2863A0FF2760
          9CFF265D9AFF245891FFAF7148FFE3C597FFDFBA85FFDEBA85FFDEB984FFDEB8
          83FFE2C194FFAD6F46FF23558EFF255B97FF265C99FF265C9CFF2862A6FF2A67
          B0FF2761AAFF9BE7FCFFB9EEFDFF428BCBFF0000000B00000003000000020000
          00094D9CD8FFC7F4FEFFA4ECFCFF2C6DB1FF3074B6FF735D5CFF965532FF9655
          32FF975531FF975431FFB1744BFFE5C79AFFDFBC88FFDFBC87FFDFBB87FFDFBB
          86FFE2C496FFAF7249FF93512EFF93512EFF93512DFF93502DFF6F5754FF2C6C
          B1FF2964ADFF9DE8FCFFBBF0FDFF448ECEFF0000000B00000003000000020000
          00094E9FDAFFCAF5FEFFA6EEFDFF2F70B5FF337BBBFF3974ABFFAB7E61FFEAD3
          B4FFE7CBA1FFE7CAA0FFE6C9A0FFE6CA9EFFE0BE8BFFE0BD8AFFE1BD8AFFE0BD
          89FFE5C69AFFE4C59AFFE4C598FFE3C497FFE7CDACFFA8795BFF356CA5FF2E70
          B6FF2B69AFFFA0E9FCFFBEF1FDFF4691CFFF0000000A00000003000000020000
          000850A1DCFFCCF6FEFFA8EFFDFF3175B7FF3073B7FF2F70B2FF506E8EFFC699
          75FFECD5B0FFE2C290FFE2C18EFFE2C08EFFE2C08DFFE1C08CFFE2C08CFFE1BF
          8BFFE0BE8BFFE1BE8BFFE1BD8AFFE9D0AAFFC3936FFF4D6789FF2B69ACFF2C6B
          B0FF2C6CB1FFA1EAFCFFC1F2FDFF4894D2FF0000000A00000003000000020000
          000751A4DEFFCEF7FEFFB3F2FEFFA9F0FDFFA8EFFDFFA6EBF9FF9FE4F1FFA9A1
          8FFFDBBB9EFFE7CCA2FFE3C493FFE7CB9CFFEAD0A2FFECD3A7FFEBD3A5FFE9CD
          9EFFE6C897FFE1C08FFFE6C99CFFD9B897FFA59D8BFF9ADFEEFFA1E7F7FFA3EB
          FCFFA4ECFDFFACEEFDFFC3F3FEFF4A97D4FF0000000900000002000000010000
          00054C96CAE8AFE3F6FFD0F8FEFFD0F8FEFFCEF8FEFFCDF7FDFFCBF2F9FFC1E4
          E9FFBB9271FFE9D5B9FFEED7AEFFEFDAAEFFEFD9ADFFEFD8ACFFEED7ABFFEED5
          AAFFEDD5A8FFEBD2A5FFE8D2B3FFB68D6DFFBBE0E7FFC3EFF8FFC5F3FCFFC8F5
          FEFFC6F5FEFFC6F4FEFFA6DDF4FF458BC2E80000000700000002000000010000
          0003152937444283B0CC54A7E0FF54A7E0FF53A6E0FF53A6E0FF52A5DDFF51A0
          D9FF6494B5FFC79C7AFFF5E9CDFFF1DEB4FFF1DDB3FFF1DBB1FFF0DBB0FFF0DA
          AFFFEFD9AEFFF3E4C7FFC59875FF608FB1FF4D9BD4FF4E9FD9FF4F9FDAFF4F9F
          DAFF4E9FDAFF4E9ED9FF3E7CABCC132736460000000400000001000000000000
          0001000000030000000500000006000000070000000700000007000000080000
          000A0000001160453191DCBEA2FFF5E7C6FFF3E0B8FFF2DFB6FFF2DFB5FFF1DE
          B4FFF3E3C1FFDBBB9EFF5E432F92000000120000000B00000009000000080000
          0008000000080000000700000006000000030000000100000000000000000000
          0000000000010000000100000001000000020000000200000002000000020000
          00030000000602020111987050D1EDDCC5FFF5E5C1FFF4E2BBFFF4E2BAFFF3E2
          BDFFECDAC3FF976F50D104030216000000060000000300000002000000020000
          0002000000020000000200000001000000010000000000000000000000000000
          0000000000003131313100000000000000000000000000000000000000000000
          000000000001000000051E161035C39979F8F7EDD6FFF6E6BFFFF6E5BEFFF6EB
          D3FFC29876F81D160F3500000006000000020000000000000000000000000000
          0000000000000000000031313131000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          000000000000000000020000000855402E7ADBBEA1FFF9EED1FFF8EDCFFFDBBD
          9FFF543F2E7B0000000800000002000000010000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000100000003000000098F6C51C0EDDBC6FFEEDCC6FF916D
          52C30000000A0000000300000001000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          00000000000000000000000000010000000415100C26BF9878F1BF9877F11510
          0C27000000040000000100000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000}
        TabOrder = 1
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = [fsBold]
        ParentFont = False
        OnClick = btn_sangriasClick
      end
    end
  end
  object SQL_ProdutoConsulta: TFDQuery
    Connection = Module.connection
    SQL.Strings = (
      'Select * from produto_prod')
    Left = 864
    Top = 280
    object SQL_ProdutoConsultaCODIGO_BARRAS: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'CODIGO_BARRAS'
      Origin = 'CODIGO_BARRAS'
      Size = 50
    end
    object SQL_ProdutoConsultaCOD_BARRAS_AUXILIAR: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'COD_BARRAS_AUXILIAR'
      Origin = 'COD_BARRAS_AUXILIAR'
      Size = 50
    end
    object SQL_ProdutoConsultaDESCRICAO_PRODUTO: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'DESCRICAO_PRODUTO'
      Origin = 'DESCRICAO_PRODUTO'
      Size = 200
    end
    object SQL_ProdutoConsultaINFO_ADICIONAIS: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'INFO_ADICIONAIS'
      Origin = 'INFO_ADICIONAIS'
      Size = 200
    end
    object SQL_ProdutoConsultaREFERENCIA_FABRICANTE: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'REFERENCIA_FABRICANTE'
      Origin = 'REFERENCIA_FABRICANTE'
      Size = 50
    end
    object SQL_ProdutoConsultaMARCA: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'MARCA'
      Origin = 'MARCA'
      Size = 50
    end
    object SQL_ProdutoConsultaFAMILIA: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'FAMILIA'
      Origin = 'FAMILIA'
      Size = 50
    end
    object SQL_ProdutoConsultaGRUPO: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'GRUPO'
      Origin = 'GRUPO'
      Size = 50
    end
    object SQL_ProdutoConsultaSUBGRUPO: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'SUBGRUPO'
      Origin = 'SUBGRUPO'
      Size = 50
    end
    object SQL_ProdutoConsultaUNIDADE_MEDIDA: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'UNIDADE_MEDIDA'
      Origin = 'UNIDADE_MEDIDA'
      Size = 50
    end
    object SQL_ProdutoConsultaDATA_CADASTRO: TDateField
      AutoGenerateValue = arDefault
      FieldName = 'DATA_CADASTRO'
      Origin = 'DATA_CADASTRO'
    end
    object SQL_ProdutoConsultaTIPO_ITEM: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'TIPO_ITEM'
      Origin = 'TIPO_ITEM'
      Size = 100
    end
    object SQL_ProdutoConsultaESTOQUE_MINIMO: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'ESTOQUE_MINIMO'
      Origin = 'ESTOQUE_MINIMO'
      Size = 50
    end
    object SQL_ProdutoConsultaPRECO_CUSTO: TBCDField
      AutoGenerateValue = arDefault
      FieldName = 'PRECO_CUSTO'
      Origin = 'PRECO_CUSTO'
      Precision = 10
    end
    object SQL_ProdutoConsultaFRETE: TBCDField
      AutoGenerateValue = arDefault
      FieldName = 'FRETE'
      Origin = 'FRETE'
      Precision = 10
    end
    object SQL_ProdutoConsultaIMPOSTO: TBCDField
      AutoGenerateValue = arDefault
      FieldName = 'IMPOSTO'
      Origin = 'IMPOSTO'
      Precision = 10
    end
    object SQL_ProdutoConsultaDESP_OPERACIONAIS: TBCDField
      AutoGenerateValue = arDefault
      FieldName = 'DESP_OPERACIONAIS'
      Origin = 'DESP_OPERACIONAIS'
      Precision = 10
    end
    object SQL_ProdutoConsultaCUSTO_MEDIO: TBCDField
      AutoGenerateValue = arDefault
      FieldName = 'CUSTO_MEDIO'
      Origin = 'CUSTO_MEDIO'
      Precision = 10
    end
    object SQL_ProdutoConsultaMARGEM_LUCRO: TBCDField
      AutoGenerateValue = arDefault
      FieldName = 'MARGEM_LUCRO'
      Origin = 'MARGEM_LUCRO'
      Precision = 10
    end
    object SQL_ProdutoConsultaMARGEM_L_VAREJO: TBCDField
      AutoGenerateValue = arDefault
      FieldName = 'MARGEM_L_VAREJO'
      Origin = 'MARGEM_L_VAREJO'
      Precision = 10
    end
    object SQL_ProdutoConsultaMARGEM_L_ATACADO: TBCDField
      AutoGenerateValue = arDefault
      FieldName = 'MARGEM_L_ATACADO'
      Origin = 'MARGEM_L_ATACADO'
      Precision = 10
    end
    object SQL_ProdutoConsultaMARGEM_L_DISTRIBUIDOR: TBCDField
      AutoGenerateValue = arDefault
      FieldName = 'MARGEM_L_DISTRIBUIDOR'
      Origin = 'MARGEM_L_DISTRIBUIDOR'
      Precision = 10
    end
    object SQL_ProdutoConsultaDESCONTO_MAXIMO: TBCDField
      AutoGenerateValue = arDefault
      FieldName = 'DESCONTO_MAXIMO'
      Origin = 'DESCONTO_MAXIMO'
      Precision = 10
    end
    object SQL_ProdutoConsultaDESCONTO_M_VAREJO: TBCDField
      AutoGenerateValue = arDefault
      FieldName = 'DESCONTO_M_VAREJO'
      Origin = 'DESCONTO_M_VAREJO'
      Precision = 10
    end
    object SQL_ProdutoConsultaDESCONTO_M_ATACADO: TBCDField
      AutoGenerateValue = arDefault
      FieldName = 'DESCONTO_M_ATACADO'
      Origin = 'DESCONTO_M_ATACADO'
      Precision = 10
    end
    object SQL_ProdutoConsultaDESCONTO_M_DISTRIBUIDOR: TBCDField
      AutoGenerateValue = arDefault
      FieldName = 'DESCONTO_M_DISTRIBUIDOR'
      Origin = 'DESCONTO_M_DISTRIBUIDOR'
      Precision = 10
    end
    object SQL_ProdutoConsultaDESCONTO_L_VAREJO: TBCDField
      AutoGenerateValue = arDefault
      FieldName = 'DESCONTO_L_VAREJO'
      Origin = 'DESCONTO_L_VAREJO'
      Precision = 10
    end
    object SQL_ProdutoConsultaDESCONTO_L_ATACADO: TBCDField
      AutoGenerateValue = arDefault
      FieldName = 'DESCONTO_L_ATACADO'
      Origin = 'DESCONTO_L_ATACADO'
      Precision = 10
    end
    object SQL_ProdutoConsultaDESCONTO_L_DISTRIBUIDOR: TBCDField
      AutoGenerateValue = arDefault
      FieldName = 'DESCONTO_L_DISTRIBUIDOR'
      Origin = 'DESCONTO_L_DISTRIBUIDOR'
      Precision = 10
    end
    object SQL_ProdutoConsultaPAGAR_COMISSAO: TBCDField
      AutoGenerateValue = arDefault
      FieldName = 'PAGAR_COMISSAO'
      Origin = 'PAGAR_COMISSAO'
      Precision = 10
    end
    object SQL_ProdutoConsultaCOMISSAO_BALCAO: TBCDField
      AutoGenerateValue = arDefault
      FieldName = 'COMISSAO_BALCAO'
      Origin = 'COMISSAO_BALCAO'
      Precision = 10
    end
    object SQL_ProdutoConsultaBALCAO_COMISSAO_ATACADO: TBCDField
      AutoGenerateValue = arDefault
      FieldName = 'BALCAO_COMISSAO_ATACADO'
      Origin = 'BALCAO_COMISSAO_ATACADO'
      Precision = 10
    end
    object SQL_ProdutoConsultaBALCAO_COMISSAO_DISTRIBUIDOR: TBCDField
      AutoGenerateValue = arDefault
      FieldName = 'BALCAO_COMISSAO_DISTRIBUIDOR'
      Origin = 'BALCAO_COMISSAO_DISTRIBUIDOR'
      Precision = 10
    end
    object SQL_ProdutoConsultaCOMISSAO_EXTERNA: TBCDField
      AutoGenerateValue = arDefault
      FieldName = 'COMISSAO_EXTERNA'
      Origin = 'COMISSAO_EXTERNA'
      Precision = 10
    end
    object SQL_ProdutoConsultaEXTERNA_COMISSAO_VAREJO: TBCDField
      AutoGenerateValue = arDefault
      FieldName = 'EXTERNA_COMISSAO_VAREJO'
      Origin = 'EXTERNA_COMISSAO_VAREJO'
      Precision = 10
    end
    object SQL_ProdutoConsultaEXTERNA_COMISSAO_ATACADO: TBCDField
      AutoGenerateValue = arDefault
      FieldName = 'EXTERNA_COMISSAO_ATACADO'
      Origin = 'EXTERNA_COMISSAO_ATACADO'
      Precision = 10
    end
    object SQL_ProdutoConsultaEXTERNA_COMISSAO_DISTRIBUIDOR: TBCDField
      AutoGenerateValue = arDefault
      FieldName = 'EXTERNA_COMISSAO_DISTRIBUIDOR'
      Origin = 'EXTERNA_COMISSAO_DISTRIBUIDOR'
      Precision = 10
    end
    object SQL_ProdutoConsultaPRECO_FINAL_ATACADO: TBCDField
      AutoGenerateValue = arDefault
      FieldName = 'PRECO_FINAL_ATACADO'
      Origin = 'PRECO_FINAL_ATACADO'
      Precision = 10
    end
    object SQL_ProdutoConsultaPRECO_FINAL_DISTRIBUIDOR: TBCDField
      AutoGenerateValue = arDefault
      FieldName = 'PRECO_FINAL_DISTRIBUIDOR'
      Origin = 'PRECO_FINAL_DISTRIBUIDOR'
      Precision = 10
    end
    object SQL_ProdutoConsultaPRECO_FINAL_VAREJO: TBCDField
      AutoGenerateValue = arDefault
      FieldName = 'PRECO_FINAL_VAREJO'
      Origin = 'PRECO_FINAL_VAREJO'
      Precision = 10
    end
    object SQL_ProdutoConsultaPROMO_VAREJO: TBCDField
      AutoGenerateValue = arDefault
      FieldName = 'PROMO_VAREJO'
      Origin = 'PROMO_VAREJO'
      Precision = 10
    end
    object SQL_ProdutoConsultaPROMO_ATACADO: TBCDField
      AutoGenerateValue = arDefault
      FieldName = 'PROMO_ATACADO'
      Origin = 'PROMO_ATACADO'
      Precision = 10
    end
    object SQL_ProdutoConsultaPROMO_DISTRIBUIDOR: TBCDField
      AutoGenerateValue = arDefault
      FieldName = 'PROMO_DISTRIBUIDOR'
      Origin = 'PROMO_DISTRIBUIDOR'
      Precision = 10
    end
    object SQL_ProdutoConsultaVALOR_PROMOCIONAL_ATACADO: TBCDField
      AutoGenerateValue = arDefault
      FieldName = 'VALOR_PROMOCIONAL_ATACADO'
      Origin = 'VALOR_PROMOCIONAL_ATACADO'
      Precision = 10
    end
    object SQL_ProdutoConsultaVALOR_PROMOCIONAL_DISTRIBUIDOR: TBCDField
      AutoGenerateValue = arDefault
      FieldName = 'VALOR_PROMOCIONAL_DISTRIBUIDOR'
      Origin = 'VALOR_PROMOCIONAL_DISTRIBUIDOR'
      Precision = 10
    end
    object SQL_ProdutoConsultaVALOR_PROMOCIONAL_VAREJO: TBCDField
      AutoGenerateValue = arDefault
      FieldName = 'VALOR_PROMOCIONAL_VAREJO'
      Origin = 'VALOR_PROMOCIONAL_VAREJO'
      Precision = 10
    end
    object SQL_ProdutoConsultaSALDO: TBCDField
      AutoGenerateValue = arDefault
      FieldName = 'SALDO'
      Origin = 'SALDO'
      Precision = 10
    end
    object SQL_ProdutoConsultaALIQ_ICMS: TBCDField
      AutoGenerateValue = arDefault
      FieldName = 'ALIQ_ICMS'
      Origin = 'ALIQ_ICMS'
      Precision = 10
    end
    object SQL_ProdutoConsultaLEIS: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'LEIS'
      Origin = 'LEIS'
    end
    object SQL_ProdutoConsultaGENERO: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'GENERO'
      Origin = 'GENERO'
    end
    object SQL_ProdutoConsultaFORNECEDOR_NOME: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'FORNECEDOR_NOME'
      Origin = 'FORNECEDOR_NOME'
      Size = 100
    end
    object SQL_ProdutoConsultaCOD_COMB: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'COD_COMB'
      Origin = 'COD_COMB'
    end
    object SQL_ProdutoConsultaALIQ_IPI: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'ALIQ_IPI'
      Origin = 'ALIQ_IPI'
    end
    object SQL_ProdutoConsultaENQUADRAMENTO_IPI: TIntegerField
      AutoGenerateValue = arDefault
      FieldName = 'ENQUADRAMENTO_IPI'
      Origin = 'ENQUADRAMENTO_IPI'
    end
    object SQL_ProdutoConsultaCODIGO_LOCALIZACAO: TIntegerField
      AutoGenerateValue = arDefault
      FieldName = 'CODIGO_LOCALIZACAO'
      Origin = 'CODIGO_LOCALIZACAO'
    end
    object SQL_ProdutoConsultaICMS_CST: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'ICMS_CST'
      Origin = 'ICMS_CST'
      Size = 3
    end
    object SQL_ProdutoConsultaICMS_IPI: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'ICMS_IPI'
      Origin = 'ICMS_IPI'
      Size = 2
    end
    object SQL_ProdutoConsultaPIS_CST: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'PIS_CST'
      Origin = 'PIS_CST'
      Size = 5
    end
    object SQL_ProdutoConsultaCOFINS_CST: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'COFINS_CST'
      Origin = 'COFINS_CST'
      Size = 5
    end
    object SQL_ProdutoConsultaCODIGO_ORIGEM_MERCADORIA: TIntegerField
      AutoGenerateValue = arDefault
      FieldName = 'CODIGO_ORIGEM_MERCADORIA'
      Origin = 'CODIGO_ORIGEM_MERCADORIA'
    end
    object SQL_ProdutoConsultaCSOSN: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'CSOSN'
      Origin = 'CSOSN'
      Size = 200
    end
    object SQL_ProdutoConsultaNCM: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'NCM'
      Origin = 'NCM'
      Size = 50
    end
    object SQL_ProdutoConsultaCEST: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'CEST'
      Origin = 'CEST'
      Size = 50
    end
    object SQL_ProdutoConsultaANP: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'ANP'
      Origin = 'ANP'
      Size = 50
    end
    object SQL_ProdutoConsultaEX_IPI: TSingleField
      AutoGenerateValue = arDefault
      FieldName = 'EX_IPI'
      Origin = 'EX_IPI'
    end
    object SQL_ProdutoConsultaSTATUS_CADASTRAL: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'STATUS_CADASTRAL'
      Origin = 'STATUS_CADASTRAL'
      FixedChar = True
      Size = 7
    end
    object SQL_ProdutoConsultaPESAVEL: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'PESAVEL'
      Origin = 'PESAVEL'
      FixedChar = True
      Size = 3
    end
    object SQL_ProdutoConsultaUTILIZA_ETIQUETA_BALANCA: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'UTILIZA_ETIQUETA_BALANCA'
      Origin = 'UTILIZA_ETIQUETA_BALANCA'
      FixedChar = True
      Size = 3
    end
    object SQL_ProdutoConsultaUSA_LOTE: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'USA_LOTE'
      Origin = 'USA_LOTE'
      FixedChar = True
      Size = 3
    end
    object SQL_ProdutoConsultaCONTROLADO: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'CONTROLADO'
      Origin = 'CONTROLADO'
      FixedChar = True
      Size = 3
    end
    object SQL_ProdutoConsultaCODIGO_FORNECEDOR: TIntegerField
      AutoGenerateValue = arDefault
      FieldName = 'CODIGO_FORNECEDOR'
      Origin = 'CODIGO_FORNECEDOR'
    end
    object SQL_ProdutoConsultaQUANT_MINI_VAREJO_P: TBCDField
      AutoGenerateValue = arDefault
      FieldName = 'QUANT_MINI_VAREJO_P'
      Origin = 'QUANT_MINI_VAREJO_P'
      Precision = 10
    end
    object SQL_ProdutoConsultaQUANT_MINI_ATACADO_P: TBCDField
      AutoGenerateValue = arDefault
      FieldName = 'QUANT_MINI_ATACADO_P'
      Origin = 'QUANT_MINI_ATACADO_P'
      Precision = 10
    end
    object SQL_ProdutoConsultaQUANT_MINI_DISTRIBUIDOR_P: TBCDField
      AutoGenerateValue = arDefault
      FieldName = 'QUANT_MINI_DISTRIBUIDOR_P'
      Origin = 'QUANT_MINI_DISTRIBUIDOR_P'
      Precision = 10
    end
    object SQL_ProdutoConsultaQUANT_MINI_VAREJO_Q: TBCDField
      AutoGenerateValue = arDefault
      FieldName = 'QUANT_MINI_VAREJO_Q'
      Origin = 'QUANT_MINI_VAREJO_Q'
      Precision = 10
    end
    object SQL_ProdutoConsultaQUANT_MINI_ATACADO_Q: TBCDField
      AutoGenerateValue = arDefault
      FieldName = 'QUANT_MINI_ATACADO_Q'
      Origin = 'QUANT_MINI_ATACADO_Q'
      Precision = 10
    end
    object SQL_ProdutoConsultaQUANT_MINI_DISTRIBUIDOR_Q: TBCDField
      AutoGenerateValue = arDefault
      FieldName = 'QUANT_MINI_DISTRIBUIDOR_Q'
      Origin = 'QUANT_MINI_DISTRIBUIDOR_Q'
      Precision = 10
    end
    object SQL_ProdutoConsultaQUANT_MINI_VAREJO_D: TBCDField
      AutoGenerateValue = arDefault
      FieldName = 'QUANT_MINI_VAREJO_D'
      Origin = 'QUANT_MINI_VAREJO_D'
      Precision = 10
    end
    object SQL_ProdutoConsultaQUANT_MINI_DISTRIBUIDOR_D: TBCDField
      AutoGenerateValue = arDefault
      FieldName = 'QUANT_MINI_DISTRIBUIDOR_D'
      Origin = 'QUANT_MINI_DISTRIBUIDOR_D'
      Precision = 10
    end
    object SQL_ProdutoConsultaQUANT_MINI_ATACADO_D: TBCDField
      AutoGenerateValue = arDefault
      FieldName = 'QUANT_MINI_ATACADO_D'
      Origin = 'QUANT_MINI_ATACADO_D'
      Precision = 10
    end
    object SQL_ProdutoConsultaCST_IPI: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'CST_IPI'
      Origin = 'CST_IPI'
      Size = 3
    end
    object SQL_ProdutoConsultaCOD_BALANCA_1: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'COD_BALANCA_1'
      Origin = 'COD_BALANCA_1'
      Size = 8
    end
    object SQL_ProdutoConsultaCOD_BALANCA_2: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'COD_BALANCA_2'
      Origin = 'COD_BALANCA_2'
      Size = 8
    end
    object SQL_ProdutoConsultaCOD_BALANCA_3: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'COD_BALANCA_3'
      Origin = 'COD_BALANCA_3'
      Size = 8
    end
    object SQL_ProdutoConsultaBALCAO_COMISSAO_VAREJO: TBCDField
      AutoGenerateValue = arDefault
      FieldName = 'BALCAO_COMISSAO_VAREJO'
      Origin = 'BALCAO_COMISSAO_VAREJO'
      Precision = 10
    end
    object SQL_ProdutoConsultaPROMOCAO_INICIO: TDateField
      AutoGenerateValue = arDefault
      FieldName = 'PROMOCAO_INICIO'
      Origin = 'PROMOCAO_INICIO'
    end
    object SQL_ProdutoConsultaPROMOCAO_TERMINO: TDateField
      AutoGenerateValue = arDefault
      FieldName = 'PROMOCAO_TERMINO'
      Origin = 'PROMOCAO_TERMINO'
    end
    object SQL_ProdutoConsultaREDUCAO_ICMS: TBCDField
      AutoGenerateValue = arDefault
      FieldName = 'REDUCAO_ICMS'
      Origin = 'REDUCAO_ICMS'
      Precision = 10
    end
    object SQL_ProdutoConsultaALIQ_ICMS_SUBST: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'ALIQ_ICMS_SUBST'
      Origin = 'ALIQ_ICMS_SUBST'
    end
    object SQL_ProdutoConsultaREDUCAO_ICMS_ST: TBCDField
      AutoGenerateValue = arDefault
      FieldName = 'REDUCAO_ICMS_ST'
      Origin = 'REDUCAO_ICMS_ST'
      Precision = 10
    end
    object SQL_ProdutoConsultaLUCRO_SUBST_TRIBUTARIA: TBCDField
      AutoGenerateValue = arDefault
      FieldName = 'LUCRO_SUBST_TRIBUTARIA'
      Origin = 'LUCRO_SUBST_TRIBUTARIA'
      Precision = 10
    end
    object SQL_ProdutoConsultaVALOR_PAUTA_BC_ST: TBCDField
      AutoGenerateValue = arDefault
      FieldName = 'VALOR_PAUTA_BC_ST'
      Origin = 'VALOR_PAUTA_BC_ST'
      Precision = 10
    end
    object SQL_ProdutoConsultaponto_impressao_id: TIntegerField
      AutoGenerateValue = arDefault
      FieldName = 'ponto_impressao_id'
      Origin = 'ponto_impressao_id'
    end
    object SQL_ProdutoConsultaNFe_Veiculo_Cor_Codigo: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'NFe_Veiculo_Cor_Codigo'
      Origin = 'NFe_Veiculo_Cor_Codigo'
      Size = 4
    end
    object SQL_ProdutoConsultaNFe_Veiculo_Cor_Descricao: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'NFe_Veiculo_Cor_Descricao'
      Origin = 'NFe_Veiculo_Cor_Descricao'
      Size = 40
    end
    object SQL_ProdutoConsultaNFe_Veiculo_Pot: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'NFe_Veiculo_Pot'
      Origin = 'NFe_Veiculo_Pot'
      Size = 4
    end
    object SQL_ProdutoConsultaNFe_Veiculo_Cilin: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'NFe_Veiculo_Cilin'
      Origin = 'NFe_Veiculo_Cilin'
      Size = 4
    end
    object SQL_ProdutoConsultaNFe_Armamento: TIntegerField
      AutoGenerateValue = arDefault
      FieldName = 'NFe_Armamento'
      Origin = 'NFe_Armamento'
    end
    object SQL_ProdutoConsultaNFe_Combustivel: TIntegerField
      AutoGenerateValue = arDefault
      FieldName = 'NFe_Combustivel'
      Origin = 'NFe_Combustivel'
    end
    object SQL_ProdutoConsultaNFe_modBC: TIntegerField
      AutoGenerateValue = arDefault
      FieldName = 'NFe_modBC'
      Origin = 'NFe_modBC'
    end
    object SQL_ProdutoConsultaNFe_modBCST: TIntegerField
      AutoGenerateValue = arDefault
      FieldName = 'NFe_modBCST'
      Origin = 'NFe_modBCST'
    end
    object SQL_ProdutoConsultaNFe_pMVAST: TBCDField
      AutoGenerateValue = arDefault
      FieldName = 'NFe_pMVAST'
      Origin = 'NFe_pMVAST'
      Precision = 6
      Size = 2
    end
    object SQL_ProdutoConsultaNFe_motDesICMS: TIntegerField
      AutoGenerateValue = arDefault
      FieldName = 'NFe_motDesICMS'
      Origin = 'NFe_motDesICMS'
    end
    object SQL_ProdutoConsultaProduto_ou_Servico: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'Produto_ou_Servico'
      Origin = 'Produto_ou_Servico'
      FixedChar = True
      Size = 1
    end
    object SQL_ProdutoConsultaPagaComissaoSN: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'PagaComissaoSN'
      Origin = 'PagaComissaoSN'
      FixedChar = True
      Size = 1
    end
    object SQL_ProdutoConsultaContaContabil: TIntegerField
      AutoGenerateValue = arDefault
      FieldName = 'ContaContabil'
      Origin = 'ContaContabil'
    end
    object SQL_ProdutoConsultaCentroDeCustos: TIntegerField
      AutoGenerateValue = arDefault
      FieldName = 'CentroDeCustos'
      Origin = 'CentroDeCustos'
    end
    object SQL_ProdutoConsultaNFe_indTot: TIntegerField
      AutoGenerateValue = arDefault
      FieldName = 'NFe_indTot'
      Origin = 'NFe_indTot'
    end
    object SQL_ProdutoConsultaNFe_Medicamento: TIntegerField
      AutoGenerateValue = arDefault
      FieldName = 'NFe_Medicamento'
      Origin = 'NFe_Medicamento'
    end
    object SQL_ProdutoConsultaCODIGO_ALFANUMERICO: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'CODIGO_ALFANUMERICO'
      Origin = 'CODIGO_ALFANUMERICO'
    end
    object SQL_ProdutoConsultaVALOR_PAUTA_BC: TBCDField
      AutoGenerateValue = arDefault
      FieldName = 'VALOR_PAUTA_BC'
      Origin = 'VALOR_PAUTA_BC'
      Precision = 10
    end
    object SQL_ProdutoConsultaNFe_pMVA: TBCDField
      AutoGenerateValue = arDefault
      FieldName = 'NFe_pMVA'
      Origin = 'NFe_pMVA'
      Precision = 6
    end
    object SQL_ProdutoConsultaNFe_indEscala: TIntegerField
      AutoGenerateValue = arDefault
      FieldName = 'NFe_indEscala'
      Origin = 'NFe_indEscala'
    end
    object SQL_ProdutoConsultaPROD_RASTREAVEL: TIntegerField
      AutoGenerateValue = arDefault
      FieldName = 'PROD_RASTREAVEL'
      Origin = 'PROD_RASTREAVEL'
    end
    object SQL_ProdutoConsultaPROD_TRATALOTE: TIntegerField
      AutoGenerateValue = arDefault
      FieldName = 'PROD_TRATALOTE'
      Origin = 'PROD_TRATALOTE'
    end
    object SQL_ProdutoConsultaPROD_TRATANUMEROSERIE: TIntegerField
      AutoGenerateValue = arDefault
      FieldName = 'PROD_TRATANUMEROSERIE'
      Origin = 'PROD_TRATANUMEROSERIE'
    end
    object SQL_ProdutoConsultaNFe_VeiculoNovo: TIntegerField
      AutoGenerateValue = arDefault
      FieldName = 'NFe_VeiculoNovo'
      Origin = 'NFe_VeiculoNovo'
    end
    object SQL_ProdutoConsultaNFe_nDI: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'NFe_nDI'
      Origin = 'NFe_nDI'
      Size = 10
    end
    object SQL_ProdutoConsultaNFe_dDI: TDateTimeField
      AutoGenerateValue = arDefault
      FieldName = 'NFe_dDI'
      Origin = 'NFe_dDI'
    end
    object SQL_ProdutoConsultaNFe_xLocDesemb: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'NFe_xLocDesemb'
      Origin = 'NFe_xLocDesemb'
      Size = 60
    end
    object SQL_ProdutoConsultaNFe_UFDesemb: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'NFe_UFDesemb'
      Origin = 'NFe_UFDesemb'
      Size = 2
    end
    object SQL_ProdutoConsultaNFe_dDesemb: TDateTimeField
      AutoGenerateValue = arDefault
      FieldName = 'NFe_dDesemb'
      Origin = 'NFe_dDesemb'
    end
    object SQL_ProdutoConsultaNFe_cExportador: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'NFe_cExportador'
      Origin = 'NFe_cExportador'
      Size = 60
    end
    object SQL_ProdutoConsultaNFe_nAdicao: TIntegerField
      AutoGenerateValue = arDefault
      FieldName = 'NFe_nAdicao'
      Origin = 'NFe_nAdicao'
    end
    object SQL_ProdutoConsultaNFe_cFabricante: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'NFe_cFabricante'
      Origin = 'NFe_cFabricante'
      Size = 60
    end
    object SQL_ProdutoConsultaNFe_vDescDI: TBCDField
      AutoGenerateValue = arDefault
      FieldName = 'NFe_vDescDI'
      Origin = 'NFe_vDescDI'
      Precision = 10
    end
    object SQL_ProdutoConsultaPROD_CODIGO: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'PROD_CODIGO'
      Origin = 'PROD_CODIGO'
    end
  end
  object SQL_Venda: TFDQuery
    ConstraintsEnabled = True
    Connection = Module.connection
    SQL.Strings = (
      'SELECT * FROM venda'
      'WHERE CODIGO_VENDA LIKE :pcodigo')
    Left = 864
    Top = 328
    ParamData = <
      item
        Name = 'PCODIGO'
        DataType = ftString
        ParamType = ptInput
        Value = '1'
      end>
    object SQL_VendaCODIGO_VENDA: TIntegerField
      AutoGenerateValue = arDefault
      FieldName = 'CODIGO_VENDA'
      Origin = 'CODIGO_VENDA'
    end
    object SQL_VendaCPF_CLIENTE: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'CPF_CLIENTE'
      Origin = 'CPF_CLIENTE'
    end
    object SQL_VendaNOME_CLIENTE: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'NOME_CLIENTE'
      Origin = 'NOME_CLIENTE'
      Size = 50
    end
    object SQL_VendaCODIGO_CLIENTE: TIntegerField
      AutoGenerateValue = arDefault
      FieldName = 'CODIGO_CLIENTE'
      Origin = 'CODIGO_CLIENTE'
    end
    object SQL_VendaVENDA_FATURADA: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'VENDA_FATURADA'
      Origin = 'VENDA_FATURADA'
      Size = 50
    end
    object SQL_VendaVALOR_VENDA: TBCDField
      AutoGenerateValue = arDefault
      FieldName = 'VALOR_VENDA'
      Origin = 'VALOR_VENDA'
      Precision = 10
    end
    object SQL_VendaACRESCIMO: TBCDField
      AutoGenerateValue = arDefault
      FieldName = 'ACRESCIMO'
      Origin = 'ACRESCIMO'
      Precision = 10
    end
    object SQL_VendaDESCONTO: TBCDField
      AutoGenerateValue = arDefault
      FieldName = 'DESCONTO'
      Origin = 'DESCONTO'
      Precision = 10
    end
    object SQL_VendaTOTAL_VENDA: TBCDField
      AutoGenerateValue = arDefault
      FieldName = 'TOTAL_VENDA'
      Origin = 'TOTAL_VENDA'
      Precision = 10
    end
    object SQL_VendaTROCO: TBCDField
      AutoGenerateValue = arDefault
      FieldName = 'TROCO'
      Origin = 'TROCO'
      Precision = 10
    end
    object SQL_VendaSTATUS: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'STATUS'
      Origin = 'STATUS'
      FixedChar = True
      Size = 9
    end
    object SQL_VendaOPERADOR: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'OPERADOR'
      Origin = 'OPERADOR'
    end
    object SQL_VendaCAIXA: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'CAIXA'
      Origin = 'CAIXA'
      Size = 5
    end
    object SQL_VendaIE_CLIENTE: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'IE_CLIENTE'
      Origin = 'IE_CLIENTE'
      Size = 50
    end
    object SQL_VendaVALOR_PAGO: TBCDField
      AutoGenerateValue = arDefault
      FieldName = 'VALOR_PAGO'
      Origin = 'VALOR_PAGO'
      Precision = 10
    end
    object SQL_VendaDATA: TDateField
      AutoGenerateValue = arDefault
      FieldName = 'DATA'
      Origin = 'DATA'
    end
    object SQL_VendaHORA: TTimeField
      AutoGenerateValue = arDefault
      FieldName = 'HORA'
      Origin = 'HORA'
    end
    object SQL_VendaTELEFONE_CLIENTE: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'TELEFONE_CLIENTE'
      Origin = 'TELEFONE_CLIENTE'
      Size = 50
    end
    object SQL_VendaRUA_CLIENTE: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'RUA_CLIENTE'
      Origin = 'RUA_CLIENTE'
      Size = 100
    end
    object SQL_VendaNUMERO_CLIENTE: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'NUMERO_CLIENTE'
      Origin = 'NUMERO_CLIENTE'
      Size = 5
    end
    object SQL_VendaBAIRRO_CLIENTE: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'BAIRRO_CLIENTE'
      Origin = 'BAIRRO_CLIENTE'
      Size = 50
    end
    object SQL_VendaCOD_NFCE: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'COD_NFCE'
      Origin = 'COD_NFCE'
      Size = 10
    end
    object SQL_VendaCOD_VENDEDOR: TIntegerField
      AutoGenerateValue = arDefault
      FieldName = 'COD_VENDEDOR'
      Origin = 'COD_VENDEDOR'
    end
    object SQL_Vendacomanda: TIntegerField
      AutoGenerateValue = arDefault
      FieldName = 'comanda'
      Origin = 'comanda'
    end
    object SQL_VendaIdCaixa: TIntegerField
      AutoGenerateValue = arDefault
      FieldName = 'IdCaixa'
      Origin = 'IdCaixa'
    end
  end
  object sql_increment_venda: TFDQuery
    Connection = Module.connection
    SQL.Strings = (
      'select max(codigo_venda)+1 as AUTO_INCREMENT from venda')
    Left = 864
    Top = 176
    object sql_increment_vendaAUTO_INCREMENT: TLargeintField
      AutoGenerateValue = arDefault
      FieldName = 'AUTO_INCREMENT'
      Origin = 'AUTO_INCREMENT'
      ProviderFlags = []
      ReadOnly = True
    end
  end
  object Sql_consulta_itens: TFDQuery
    Connection = Module.connection
    SQL.Strings = (
      'select * from venda_item'
      'where CODIGO_VENDA like :pcodigo')
    Left = 864
    Top = 224
    ParamData = <
      item
        Name = 'PCODIGO'
        DataType = ftString
        ParamType = ptInput
        Value = '4'
      end>
    object Sql_consulta_itensCODIGO: TFDAutoIncField
      FieldName = 'CODIGO'
      Origin = 'CODIGO'
      ProviderFlags = [pfInWhere, pfInKey]
      ReadOnly = True
    end
    object Sql_consulta_itensCODIGO_VENDA: TIntegerField
      FieldName = 'CODIGO_VENDA'
      Origin = 'CODIGO_VENDA'
    end
    object Sql_consulta_itensCODIGO_ITEM_VENDA: TIntegerField
      AutoGenerateValue = arDefault
      FieldName = 'CODIGO_ITEM_VENDA'
      Origin = 'CODIGO_ITEM_VENDA'
    end
    object Sql_consulta_itensCODIGO_PRODUTO: TIntegerField
      AutoGenerateValue = arDefault
      FieldName = 'CODIGO_PRODUTO'
      Origin = 'CODIGO_PRODUTO'
    end
    object Sql_consulta_itensDESCRICAO: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'DESCRICAO'
      Origin = 'DESCRICAO'
      Size = 100
    end
    object Sql_consulta_itensUNIDADE: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'UNIDADE'
      Origin = 'UNIDADE'
      Size = 10
    end
    object Sql_consulta_itensPRECO: TBCDField
      AutoGenerateValue = arDefault
      FieldName = 'PRECO'
      Origin = 'PRECO'
      currency = True
      Precision = 10
    end
    object Sql_consulta_itensACRESCIMO: TBCDField
      FieldName = 'ACRESCIMO'
      Origin = 'ACRESCIMO'
      currency = True
      Precision = 10
    end
    object Sql_consulta_itensDESCONTO: TBCDField
      FieldName = 'DESCONTO'
      Origin = 'DESCONTO'
      currency = True
      Precision = 10
    end
    object Sql_consulta_itensPRECO_TOTAL: TBCDField
      FieldName = 'PRECO_TOTAL'
      Origin = 'PRECO_TOTAL'
      currency = True
      Precision = 10
    end
    object Sql_consulta_itensQUANTIDADE: TSingleField
      Alignment = taCenter
      FieldName = 'QUANTIDADE'
      Origin = 'QUANTIDADE'
      DisplayFormat = '0.000'
    end
  end
  object DS_Consulta_Itens: TDataSource
    DataSet = Sql_consulta_itens
    OnStateChange = DS_Consulta_ItensStateChange
    Left = 776
    Top = 40
  end
  object sql_totalVenda: TFDQuery
    Connection = Module.connection
    SQL.Strings = (
      'SELECT SUM(PRECO_TOTAL) FROM venda_item'
      'where CODIGO_VENDA like :pcodigo')
    Left = 864
    Top = 80
    ParamData = <
      item
        Name = 'PCODIGO'
        DataType = ftString
        ParamType = ptInput
        Value = '1'
      end>
    object sql_totalVendaSUMPRECO_TOTAL: TFMTBCDField
      AutoGenerateValue = arDefault
      FieldName = 'SUM(PRECO_TOTAL)'
      Origin = '`SUM(PRECO_TOTAL)`'
      ProviderFlags = []
      ReadOnly = True
      Precision = 32
      Size = 4
    end
  end
  object sql_deleteitem: TFDQuery
    Connection = Module.connection
    SQL.Strings = (
      'delete from venda_item'
      
        'where CODIGO_VENDA like :pcodigo and CODIGO_ITEM_VENDA like :pin' +
        'tem')
    Left = 776
    Top = 152
    ParamData = <
      item
        Name = 'PCODIGO'
        DataType = ftString
        ParamType = ptInput
        Value = '1'
      end
      item
        Name = 'PINTEM'
        DataType = ftString
        ParamType = ptInput
        Value = '1'
      end>
  end
  object SQL_AtualizaSaldo: TFDQuery
    Connection = Module.connection
    SQL.Strings = (
      'Update produto SET SALDO = :psaldo where CODIGO = :pcodigo')
    Left = 776
    Top = 96
    ParamData = <
      item
        Name = 'PSALDO'
        DataType = ftString
        ParamType = ptInput
        Value = '1'
      end
      item
        Name = 'PCODIGO'
        DataType = ftString
        ParamType = ptInput
        Value = '1'
      end>
  end
  object SQLCancelarVenda: TFDQuery
    Connection = Module.connection
    SQL.Strings = (
      'update venda set status = :pstatus'
      'where codigo_venda = :pcodigo')
    Left = 864
    Top = 128
    ParamData = <
      item
        Name = 'PSTATUS'
        DataType = ftWideString
        ParamType = ptInput
        Value = Null
      end
      item
        Name = 'PCODIGO'
        DataType = ftWideString
        ParamType = ptInput
        Value = Null
      end>
  end
  object SQL_VENDA_ITEM: TFDQuery
    Connection = Module.connection
    Left = 864
    Top = 40
  end
  object relogio: TTimer
    Interval = 3000
    OnTimer = relogioTimer
    Left = 136
    Top = 136
  end
  object qCaixaDet: TFDQuery
    Connection = Module.connection
    SQL.Strings = (
      'Select * from CaixaDetalhe')
    Left = 775
    Top = 208
    object qCaixaDetId: TFDAutoIncField
      FieldName = 'Id'
      Origin = 'Id'
      ProviderFlags = [pfInWhere, pfInKey]
      ReadOnly = True
    end
    object qCaixaDetDescricao: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'Descricao'
      Origin = 'Descricao'
      Size = 100
    end
    object qCaixaDetOperacao: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'Operacao'
      Origin = 'Operacao'
      Size = 2
    end
    object qCaixaDetDescricaoOperacao: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'DescricaoOperacao'
      Origin = 'DescricaoOperacao'
      Size = 30
    end
    object qCaixaDetIdCaixa: TIntegerField
      AutoGenerateValue = arDefault
      FieldName = 'IdCaixa'
      Origin = 'IdCaixa'
    end
    object qCaixaDetTotal: TBCDField
      AutoGenerateValue = arDefault
      FieldName = 'Total'
      Origin = 'Total'
      Precision = 10
      Size = 2
    end
    object qCaixaDetOperador: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'Operador'
      Origin = 'Operador'
      Size = 50
    end
    object qCaixaDetLancamento: TDateTimeField
      AutoGenerateValue = arDefault
      FieldName = 'Lancamento'
      Origin = 'Lancamento'
    end
    object qCaixaDetCodigoUsuario: TIntegerField
      AutoGenerateValue = arDefault
      FieldName = 'CodigoUsuario'
      Origin = 'CodigoUsuario'
    end
    object qCaixaDetCodigoVenda: TIntegerField
      AutoGenerateValue = arDefault
      FieldName = 'CodigoVenda'
      Origin = 'CodigoVenda'
    end
  end
end
