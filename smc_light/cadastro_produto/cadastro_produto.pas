//Verificado automaticamente em 16/06/2020 09:26
﻿{ v 21.10.16 17:18 }
unit cadastro_produto;

interface

uses
  Winapi.Windows, System.SysUtils, System.Variants,
  System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.DBCtrls, Vcl.StdCtrls,
  Vcl.Mask, cxGraphics,
  cxPC,
  cxEdit, cxDropDownEdit, cxDBEdit, Vcl.Menus,
  cxCheckBox, cxButtons, cxMemo,

  cxGroupBox,
  Vcl.DBGrids, FireDAC.Stan.Param,

  Data.DB, FireDAC.Comp.DataSet,
  FireDAC.Comp.Client, cxDBLookupComboBox,
  Vcl.ExtCtrls,
  dialogs,
  vw_consulta_generica, c_Globals,
  cxGridLevel, cxGridCustomTableView, cxGridTableView, cxGridDBTableView,
  cxGrid, System.math, strutils,
  m_Csosn, h_Dialogs, h_Functions, m_Ncm, m_Anp, m_Produto, v_env, cxControls,
  cxLookAndFeels, cxLookAndFeelPainters, dxSkinsCore, dxSkinBlack, dxSkinBlue,
  dxSkinBlueprint,
  dxSkinCaramel,
  dxSkinCoffee, dxSkinDarkRoom, dxSkinDarkSide, dxSkinDevExpressDarkStyle,
  dxSkinDevExpressStyle, dxSkinFoggy, dxSkinGlassOceans, dxSkinHighContrast,
  dxSkiniMaginary, dxSkinLilian,
  dxSkinLiquidSky,
  dxSkinLondonLiquidSky, dxSkinMcSkin, dxSkinMetropolis, dxSkinMetropolisDark,
  dxSkinMoneyTwins, dxSkinOffice2007Black, dxSkinOffice2007Blue,
  dxSkinOffice2007Green,
  dxSkinOffice2007Pink,
  dxSkinOffice2007Silver, dxSkinOffice2010Black, dxSkinOffice2010Blue,
  dxSkinOffice2010Silver, dxSkinOffice2013DarkGray, dxSkinOffice2013LightGray,
  dxSkinOffice2013White,
  dxSkinOffice2016Colorful,
  dxSkinOffice2016Dark, dxSkinPumpkin, dxSkinSeven, dxSkinSevenClassic,
  dxSkinSharp, dxSkinSharpPlus, dxSkinSilver, dxSkinSpringTime, dxSkinStardust,
  dxSkinSummer2008,
  dxSkinTheAsphaltWorld,
  dxSkinsDefaultPainters, dxSkinValentine, dxSkinVisualStudio2013Blue,
  dxSkinVisualStudio2013Dark, dxSkinVisualStudio2013Light, dxSkinVS2010,
  dxSkinWhiteprint, dxSkinXmas2008Blue,
  dxSkinscxPCPainter,
  dxBarBuiltInMenu, cxContainer, cxStyles, cxCustomData, cxFilter, cxData,
  cxDataStorage, cxNavigator, cxDBData, cxLabel, cxCurrencyEdit,
  FireDAC.Stan.Intf, FireDAC.Stan.Option,
  FireDAC.Stan.Error,
  FireDAC.DatS, FireDAC.Phys.Intf, FireDAC.DApt.Intf, FireDAC.Stan.Async,
  FireDAC.DApt, Vcl.Grids, cxButtonEdit, cxCalendar, dxGDIPlusClasses,
  cxLookupEdit, cxDBLookupEdit,
  cxTextEdit, cxMaskEdit,
  cxClasses, cxGridCustomView, cxCheckComboBox;

type
  TFrm_Produto = class(TForm)
    sql_increment: TFDQuery;
    sql_incrementAUTO_INCREMENT: TLargeintField;
    DS_PRODUTO: TDataSource;
    DS_CSTICMS: TDataSource;
    SQL_CSTICMS: TFDQuery;
    DS_CSTPIS: TDataSource;
    DS_CSTCOFINS: TDataSource;
    SQL_CSTPIS: TFDQuery;
    SQL_CSTCOFINS: TFDQuery;
    SQL_CSTCOFINSCODIGO: TStringField;
    SQL_CSTCOFINSDESCRICAO: TStringField;
    SQL_CSTPISCODIGO: TStringField;
    SQL_CSTPISDESCRICAO: TStringField;
    DS_ORIGEM_ICMS: TDataSource;
    SQL_ORIGEM_ICMS: TFDQuery;
    SQL_ORIGEM_ICMSCODIGO: TStringField;
    SQL_ORIGEM_ICMSDESCRICAO: TStringField;
    DS_Lista: TDataSource;
    SQL_LISTA: TFDQuery;
    SQL_PRODUTO: TFDQuery;
    DS_CSTIPI: TDataSource;
    cxPageControl1: TcxPageControl;
    cxTabSheet1: TcxTabSheet;
    Label12: TLabel;
    edtBuscar: TEdit;
    cxTabSheet4: TcxTabSheet;
    GroupBox15: TGroupBox;
    cxTabSheet5: TcxTabSheet;
    GroupBox2: TGroupBox;
    Label13: TLabel;
    Label20: TLabel;
    Label26: TLabel;
    Label39: TLabel;
    FRETE: TDBEdit;
    PRECO_CUSTO: TDBEdit;
    DESP_OPERACIONAIS: TDBEdit;
    CUSTO_MEDIO: TDBEdit;
    GroupBox4: TGroupBox;
    Label3: TLabel;
    Label1: TLabel;
    Label4: TLabel;
    A: TLabel;
    Label5: TLabel;
    Label7: TLabel;
    Label37: TLabel;
    Label15: TLabel;
    Label6: TLabel;
    Label8: TLabel;
    Label36: TLabel;
    btn_familia: TcxButton;
    btn_sub: TcxButton;
    btn_grupo: TcxButton;
    btn_und: TcxButton;
    btn_marca: TcxButton;
    PROD_DESCRICAO: TDBEdit;
    PROD_REFERENCIASFABRICA: TDBEdit;
    FAMILIA: TDBEdit;
    SUBGRUPO: TDBEdit;
    PROD_CDUNIDADE: TDBEdit;
    GRUPO: TDBEdit;
    MARCA: TDBEdit;
    cxDBMemo1: TcxDBMemo;
    CODIGO_BARRAS: TDBEdit;
    SQL_PRODUTOCODIGO: TFDAutoIncField;
    SQL_PRODUTOCODIGO_BARRAS: TStringField;
    SQL_PRODUTOPROD_DESCRICAO: TStringField;
    SQL_PRODUTOPROD_DETALHES: TStringField;
    SQL_PRODUTOPROD_REFERENCIASFABRICA: TStringField;
    SQL_PRODUTOMARCA: TStringField;
    SQL_PRODUTOFAMILIA: TStringField;
    SQL_PRODUTOGRUPO: TStringField;
    SQL_PRODUTOSUBGRUPO: TStringField;
    SQL_PRODUTOPROD_CDUNIDADE: TStringField;
    SQL_PRODUTODATA_CADASTRO: TDateField;
    SQL_PRODUTOTIPO_ITEM: TStringField;
    SQL_PRODUTOLEIS: TStringField;
    SQL_PRODUTOGENERO: TStringField;
    SQL_PRODUTOFORNECEDOR_NOME: TStringField;
    SQL_PRODUTOCOD_COMB: TStringField;
    SQL_PRODUTOENQUADRAMENTO_IPI: TIntegerField;
    SQL_PRODUTOCODIGO_LOCALIZACAO: TIntegerField;
    SQL_PRODUTOICMS_CST: TStringField;
    SQL_PRODUTOICMS_IPI: TStringField;
    SQL_PRODUTOPIS_CST: TStringField;
    SQL_PRODUTOCSOSN: TStringField;
    SQL_PRODUTOCEST: TStringField;
    SQL_PRODUTOANP: TStringField;
    SQL_PRODUTOEX_IPI: TSingleField;
    SQL_CSTIPI: TFDQuery;
    SQL_IPI: TFDQuery;
    DS_IPI: TDataSource;
    SQL_PRODUTONCM: TStringField;
    SQL_CSTICMSCODIGO: TStringField;
    SQL_CSTICMSDESCRICAO: TStringField;
    Label33: TLabel;
    IMPOSTO: TDBEdit;
    SQL_PRODUTOSTATUS_CADASTRAL: TStringField;
    SQL_TIPO_ITEM: TFDQuery;
    DS_TIPO_ITEM: TDataSource;
    SQL_TIPO_ITEMCODIGO: TStringField;
    SQL_TIPO_ITEMDESCRICAO: TStringField;
    SQL_PRODUTOCOD_BARRAS_AUXILIAR: TStringField;
    grupocfop: TGroupBox;
    GroupBox19: TGroupBox;
    Label14: TLabel;
    GroupBox22: TGroupBox;
    Label16: TLabel;
    Label17: TLabel;
    Label29: TLabel;
    NCM: TDBEdit;
    edt_cest: TDBEdit;
    edt_anp: TDBEdit;
    GroupBox23: TGroupBox;
    Label22: TLabel;
    Label2: TLabel;
    SQL_DADOS_ROTINAS: TFDQuery;
    DS_DADOS_ROTINAS: TDataSource;
    Panel1: TPanel;
    btnestoque: TcxButton;
    btnlocalizacao: TcxButton;
    BtnAlterar: TcxButton;
    BtnCancelar: TcxButton;
    BtnGravar: TcxButton;
    BtnIncluir: TcxButton;
    dbedt_codigo: TDBEdit;
    SQL_PRODUTOPESAVEL: TStringField;
    SQL_PRODUTOUTILIZA_ETIQUETA_BALANCA: TStringField;
    SQL_PRODUTOUSA_LOTE: TStringField;
    SQL_PRODUTOCONTROLADO: TStringField;
    popmenu: TPopupMenu;
    duplicar_cadastro: TMenuItem;
    SQL_PRODUTOPRECO_CUSTO: TBCDField;
    SQL_PRODUTOQUANT_MINI_ATACADO_D: TBCDField;
    SQL_PRODUTOQUANT_MINI_DISTRIBUIDOR_D: TBCDField;
    SQL_PRODUTOQUANT_MINI_VAREJO_D: TBCDField;
    SQL_PRODUTOPROD_NFe_N16_pICMS: TBCDField;
    SQL_PRODUTOCODIGO_FORNECEDOR: TIntegerField;
    SQL_PRODUTOQUANT_MINI_VAREJO_P: TBCDField;
    SQL_PRODUTOQUANT_MINI_ATACADO_P: TBCDField;
    SQL_PRODUTOQUANT_MINI_DISTRIBUIDOR_P: TBCDField;
    SQL_PRODUTOQUANT_MINI_VAREJO_Q: TBCDField;
    SQL_PRODUTOQUANT_MINI_ATACADO_Q: TBCDField;
    SQL_PRODUTOQUANT_MINI_DISTRIBUIDOR_Q: TBCDField;
    SQL_PRODUTOPROD_PRECO_ATAC: TBCDField;
    SQL_PRODUTOPROD_PRECO_DIST: TBCDField;
    SQL_PRODUTOPROD_PRECO_VAR: TBCDField;
    SQL_PRODUTOPROD_PROMOCAO_VAR: TBCDField;
    SQL_PRODUTOPROD_PROMOCAO_ATAC: TBCDField;
    SQL_PRODUTOPROD_PROMOCAO_DIST: TBCDField;
    SQL_PRODUTOVALOR_PROMOCIONAL_ATACADO: TBCDField;
    SQL_PRODUTOVALOR_PROMOCIONAL_DISTRIBUIDOR: TBCDField;
    SQL_PRODUTOVALOR_PROMOCIONAL_VAREJO: TBCDField;
    SQL_PRODUTOPROD_SALDO: TBCDField;
    SQL_PRODUTOPROD_NFe_N16_pICMS_SUBST: TStringField;
    SQL_PRODUTOALIQ_IPI: TStringField;
    SQL_PRODUTOMARGEM_LUCRO: TBCDField;
    SQL_PRODUTOMARGEM_L_VAREJO: TBCDField;
    SQL_PRODUTOMARGEM_L_ATACADO: TBCDField;
    SQL_PRODUTOMARGEM_L_DISTRIBUIDOR: TBCDField;
    SQL_PRODUTOPROD_MAXDESC: TBCDField;
    SQL_PRODUTOPROD_MAXDESC_VAR: TBCDField;
    SQL_PRODUTOPROD_MAXDESC_ATAC: TBCDField;
    SQL_PRODUTOPROD_MAXDESC_DIST: TBCDField;
    SQL_PRODUTODESCONTO_L_VAREJO: TBCDField;
    SQL_PRODUTODESCONTO_L_ATACADO: TBCDField;
    SQL_PRODUTODESCONTO_L_DISTRIBUIDOR: TBCDField;
    SQL_PRODUTOFRETE: TBCDField;
    SQL_PRODUTOIMPOSTO: TBCDField;
    SQL_PRODUTOCUSTO_MEDIO: TBCDField;
    SQL_PRODUTOPROD_COMISSAO_LOJA: TBCDField;
    SQL_PRODUTOPROD_COMISSAO_EXT: TBCDField;
    SQL_PRODUTOPROD_ESTOQMIN: TStringField;
    SQL_PRODUTODESP_OPERACIONAIS: TBCDField;
    SQL_PRODUTOPROD_COMISSAO: TBCDField;
    SQL_DADOS_ROTINAScodigo_regime_tributario: TStringField;
    SQL_DADOS_ROTINASid: TIntegerField;
    SQL_DADOS_ROTINASaliq_imcs: TBCDField;
    SQL_DADOS_ROTINASaliq_pis_cumulativo: TBCDField;
    SQL_DADOS_ROTINASaliq_pis_nao_cumulativo: TBCDField;
    SQL_DADOS_ROTINASaliq_cofins_cumulativo: TBCDField;
    SQL_DADOS_ROTINASaliq_cofins_nao_cumulativo: TBCDField;
    SQL_DADOS_ROTINASaliq_iss: TBCDField;
    img1: TImage;
    SQL_PRODUTOCOFINS_CST: TStringField;
    Label58: TLabel;
    Label63: TLabel;
    Label68: TLabel;
    SQL_DADOS_ROTINASPASTA_FTP: TStringField;
    SQL_DADOS_ROTINAScaminho_backup: TStringField;
    SQL_DADOS_ROTINAShost_name: TStringField;
    cbTipoItem: TcxDBLookupComboBox;
    cb_origem: TcxDBLookupComboBox;
    cstpis: TcxDBLookupComboBox;
    SQL_PRODUTOCODIGO_ORIGEM_MERCADORIA: TIntegerField;
    Label55: TLabel;
    DBEdit14: TDBEdit;
    DBEdit15: TDBEdit;
    Label70: TLabel;
    Label74: TLabel;
    DBEdit12: TDBEdit;
    Label78: TLabel;
    chk_monofasico: TcxCheckBox;
    SQL_PRODUTOCOD_BALANCA_1: TStringField;
    SQL_PRODUTOCOD_BALANCA_2: TStringField;
    SQL_PRODUTOCOD_BALANCA_3: TStringField;
    SQL_PRODUTOCST_IPI: TStringField;
    grp_faixa_preco: TGroupBox;
    GroupBox16: TGroupBox;
    Label27: TLabel;
    Label31: TLabel;
    Label81: TLabel;
    s: TDBEdit;
    PROD_MAXDESC_DIST: TDBEdit;
    PROD_MAXDESC_ATAC: TDBEdit;
    GroupBox24: TGroupBox;
    Label80: TLabel;
    Label83: TLabel;
    DBEdit13: TDBEdit;
    PROD_ESTOQMIN: TDBEdit;
    dbcsticms: TcxDBLookupComboBox;
    btn_ncm: TcxButton;
    SQL_LISTACODIGO: TFDAutoIncField;
    SQL_LISTACODIGO_BARRAS: TStringField;
    SQL_LISTACOD_BARRAS_AUXILIAR: TStringField;
    SQL_LISTAPROD_DESCRICAO: TStringField;
    SQL_LISTAPROD_DETALHES: TStringField;
    SQL_LISTAPROD_REFERENCIASFABRICA: TStringField;
    SQL_LISTAMARCA: TStringField;
    SQL_LISTAFAMILIA: TStringField;
    SQL_LISTAGRUPO: TStringField;
    SQL_LISTASUBGRUPO: TStringField;
    SQL_LISTAPROD_CDUNIDADE: TStringField;
    SQL_LISTADATA_CADASTRO: TDateField;
    SQL_LISTATIPO_ITEM: TStringField;
    SQL_LISTAPROD_ESTOQMIN: TStringField;
    SQL_LISTAPRECO_CUSTO: TBCDField;
    SQL_LISTAFRETE: TBCDField;
    SQL_LISTAIMPOSTO: TBCDField;
    SQL_LISTADESP_OPERACIONAIS: TBCDField;
    SQL_LISTACUSTO_MEDIO: TBCDField;
    SQL_LISTAMARGEM_LUCRO: TBCDField;
    SQL_LISTAMARGEM_L_VAREJO: TBCDField;
    SQL_LISTAMARGEM_L_ATACADO: TBCDField;
    SQL_LISTAMARGEM_L_DISTRIBUIDOR: TBCDField;
    SQL_LISTAPROD_MAXDESC: TBCDField;
    SQL_LISTAPROD_MAXDESC_VAR: TBCDField;
    SQL_LISTAPROD_MAXDESC_ATAC: TBCDField;
    SQL_LISTAPROD_MAXDESC_DIST: TBCDField;
    SQL_LISTADESCONTO_L_VAREJO: TBCDField;
    SQL_LISTADESCONTO_L_ATACADO: TBCDField;
    SQL_LISTADESCONTO_L_DISTRIBUIDOR: TBCDField;
    SQL_LISTAPROD_COMISSAO: TBCDField;
    SQL_LISTAPROD_COMISSAO_LOJA: TBCDField;
    SQL_LISTAPROD_COMISSAO_ATAC: TBCDField;
    SQL_LISTAPROD_COMISSAO_DIST: TBCDField;
    SQL_LISTAPROD_COMISSAO_EXT: TBCDField;
    SQL_LISTAPROD_COMISSAO_EXT_VAR: TBCDField;
    SQL_LISTAPROD_COMISSAO_EXT_ATAC: TBCDField;
    SQL_LISTAPROD_COMISSAO_EXT_DIST: TBCDField;
    SQL_LISTAPROD_PRECO_ATAC: TBCDField;
    SQL_LISTAPROD_PRECO_DIST: TBCDField;
    SQL_LISTAPROD_PRECO_VAR: TBCDField;
    SQL_LISTAPROD_PROMOCAO_VAR: TBCDField;
    SQL_LISTAPROD_PROMOCAO_ATAC: TBCDField;
    SQL_LISTAPROD_PROMOCAO_DIST: TBCDField;
    SQL_LISTAVALOR_PROMOCIONAL_ATACADO: TBCDField;
    SQL_LISTAVALOR_PROMOCIONAL_DISTRIBUIDOR: TBCDField;
    SQL_LISTAVALOR_PROMOCIONAL_VAREJO: TBCDField;
    SQL_LISTAPROD_SALDO: TBCDField;
    SQL_LISTAPROD_NFe_N16_pICMS: TBCDField;
    SQL_LISTAPROD_NFe_N16_pICMS_SUBST: TStringField;
    SQL_LISTALEIS: TStringField;
    SQL_LISTAGENERO: TStringField;
    SQL_LISTAFORNECEDOR_NOME: TStringField;
    SQL_LISTACOD_COMB: TStringField;
    SQL_LISTAALIQ_IPI: TStringField;
    SQL_LISTAENQUADRAMENTO_IPI: TIntegerField;
    SQL_LISTACODIGO_LOCALIZACAO: TIntegerField;
    SQL_LISTAICMS_CST: TStringField;
    SQL_LISTAICMS_IPI: TStringField;
    SQL_LISTAPIS_CST: TStringField;
    SQL_LISTACOFINS_CST: TStringField;
    SQL_LISTACODIGO_ORIGEM_MERCADORIA: TIntegerField;
    SQL_LISTACSOSN: TStringField;
    SQL_LISTANCM: TStringField;
    SQL_LISTACEST: TStringField;
    SQL_LISTAANP: TStringField;
    SQL_LISTAEX_IPI: TSingleField;
    SQL_LISTASTATUS_CADASTRAL: TStringField;
    SQL_LISTAPESAVEL: TStringField;
    SQL_LISTAUTILIZA_ETIQUETA_BALANCA: TStringField;
    SQL_LISTAUSA_LOTE: TStringField;
    SQL_LISTACONTROLADO: TStringField;
    SQL_LISTACODIGO_FORNECEDOR: TIntegerField;
    SQL_LISTAQUANT_MINI_VAREJO_P: TBCDField;
    SQL_LISTAQUANT_MINI_ATACADO_P: TBCDField;
    SQL_LISTAQUANT_MINI_DISTRIBUIDOR_P: TBCDField;
    SQL_LISTAQUANT_MINI_VAREJO_Q: TBCDField;
    SQL_LISTAQUANT_MINI_ATACADO_Q: TBCDField;
    SQL_LISTAQUANT_MINI_DISTRIBUIDOR_Q: TBCDField;
    SQL_LISTAQUANT_MINI_VAREJO_D: TBCDField;
    SQL_LISTAQUANT_MINI_DISTRIBUIDOR_D: TBCDField;
    SQL_LISTAQUANT_MINI_ATACADO_D: TBCDField;
    SQL_LISTACST_IPI: TStringField;
    SQL_LISTACOD_BALANCA_1: TStringField;
    SQL_LISTACOD_BALANCA_2: TStringField;
    SQL_LISTACOD_BALANCA_3: TStringField;
    SQL_LISTAPROD_COMISSAO_VAR: TBCDField;
    SQL_PRODUTOPROD_COMISSAO_ATAC: TBCDField;
    SQL_PRODUTOPROD_COMISSAO_DIST: TBCDField;
    SQL_PRODUTOPROD_COMISSAO_EXT_VAR: TBCDField;
    SQL_PRODUTOPROD_COMISSAO_EXT_ATAC: TBCDField;
    SQL_PRODUTOPROD_COMISSAO_EXT_DIST: TBCDField;
    SQL_PRODUTOPROD_COMISSAO_VAR: TBCDField;
    Label88: TLabel;
    edt_preco: TEdit;
    btn_cad_faixa: TcxButton;
    grid_c: TcxGrid;
    grid_cDBTableView1: TcxGridDBTableView;
    grid_cLevel1: TcxGridLevel;
    SQL_PRECO_FAIXA: TFDQuery;
    DS_PRECO_FAIXA: TDataSource;
    SQL_PRECO_FAIXAID: TFDAutoIncField;
    SQL_PRECO_FAIXATIPO: TStringField;
    SQL_PRECO_FAIXAPRECO: TBCDField;
    grid_cDBTableView1TIPO: TcxGridDBColumn;
    grid_cDBTableView1QTDE_MIN: TcxGridDBColumn;
    grid_cDBTableView1PRECO: TcxGridDBColumn;
    Label90: TLabel;
    cb_tipo: TcxComboBox;
    pop_faixa: TPopupMenu;
    RemoverFaixa1: TMenuItem;
    SQL_PRECO_FAIXAID_PRODUTO: TIntegerField;
    Label89: TLabel;
    edt_qtde_min: TEdit;
    SQL_PRECO_FAIXAQTDE: TBCDField;
    chk_diff_estoque: TcxCheckBox;
    Label77: TLabel;
    CSOSN: TDBEdit;
    btn_csosn: TcxButton;
    Label30: TLabel;
    cstcofins: TcxDBLookupComboBox;
    Label52: TLabel;
    PROD_NFe_N16_pICMS: TDBEdit;
    Label61: TLabel;
    aliq_lucro_st: TDBEdit;
    Label53: TLabel;
    PROD_NFe_N14_pRedBC_ST: TDBEdit;
    Label62: TLabel;
    cod_comb: TDBEdit;
    Label56: TLabel;
    pauta_bc: TDBEdit;
    Label60: TLabel;
    edt_genero: TDBEdit;
    Label57: TLabel;
    edt_leis: TcxDBButtonEdit;
    lbl_csosn: TLabel;
    lbl_anp: TLabel;
    SQL_NAT_OP: TFDQuery;
    SQL_CFOP_NATOP: TFDQuery;
    gdCFOPNAT: TcxGrid;
    gdCFOPNATview: TcxGridDBTableView;
    gdCFOPNATl1: TcxGridLevel;
    DS_NAT_OP: TDataSource;
    DS_CFOP_NATOP: TDataSource;
    SQL_NAT_OPid: TFDAutoIncField;
    SQL_NAT_OPdescricao: TStringField;
    gdCFOPNATviewID: TcxGridDBColumn;
    gdCFOPNATviewCFOP: TcxGridDBColumn;
    gdCFOPNATviewDESCRICAO: TcxGridDBColumn;
    mmNCM: TcxMemo;
    btn_anp: TcxButton;
    SQL_CFOP_NATOPDESCRICAO: TStringField;
    SQL_CFOP_NATOPCFOP: TStringField;
    chk_usa_lote: TcxCheckBox;
    cxCheckBox2: TcxCheckBox;
    GroupBox18: TGroupBox;
    Label32: TLabel;
    Label79: TLabel;
    Label82: TLabel;
    MARGEM_LUCRO: TDBEdit;
    MARGEM_L_DISTRIBUIDOR: TDBEdit;
    MARGEM_L_ATACADO: TDBEdit;
    GroupBox17: TcxGroupBox;
    Label24: TLabel;
    PROD_PRECO_VAR: TDBEdit;
    Label23: TLabel;
    PROD_PRECO_DIST: TDBEdit;
    Label86: TLabel;
    PROD_PRECO_ATAC: TDBEdit;
    GroupBox25: TGroupBox;
    Label42: TLabel;
    Label85: TLabel;
    Label87: TLabel;
    PROD_COMISSAO_ATAC: TDBEdit;
    PROD_COMISSAO_DIST: TDBEdit;
    PROD_COMISSAO_VAR: TDBEdit;
    GroupBox26: TGroupBox;
    Label10: TLabel;
    Label38: TLabel;
    Label41: TLabel;
    PROD_COMISSAO_EXT_VAR: TDBEdit;
    PROD_COMISSAO_EXT_DIST: TDBEdit;
    PROD_COMISSAO_EXT_ATAC: TDBEdit;
    GroupBox1: TGroupBox;
    edt_dt_inicio: TcxDBDateEdit;
    edt_dt_fim: TcxDBDateEdit;
    Label9: TLabel;
    Label19: TLabel;
    Label21: TLabel;
    DBEdit1: TDBEdit;
    tbView: TcxGridDBTableView;
    gdProdsLevel1: TcxGridLevel;
    gdProds: TcxGrid;
    Label11: TLabel;
    Label28: TLabel;
    cbFiltro: TcxComboBox;
    Label34: TLabel;
    tbViewCODIGO: TcxGridDBColumn;
    tbViewCODIGO_BARRAS: TcxGridDBColumn;
    tbViewPROD_DESCRICAO: TcxGridDBColumn;
    tbViewPROD_REFERENCIASFABRICA: TcxGridDBColumn;
    tbViewMARCA: TcxGridDBColumn;
    tbViewGRUPO: TcxGridDBColumn;
    tbViewPROD_CDUNIDADE: TcxGridDBColumn;
    tbViewTIPO_ITEM: TcxGridDBColumn;
    tbViewPROD_SALDO: TcxGridDBColumn;
    tbViewPROD_NFe_N16_pICMS: TcxGridDBColumn;
    tbViewICMS_CST: TcxGridDBColumn;
    tbViewPIS_CST: TcxGridDBColumn;
    tbViewCOFINS_CST: TcxGridDBColumn;
    tbViewCSOSN: TcxGridDBColumn;
    tbViewNCM: TcxGridDBColumn;
    tbViewCEST: TcxGridDBColumn;
    tbViewPRECO: TcxGridDBColumn;
    cbTipoItemConsulta: TcxLookupComboBox;
    tbViewPROD_ESTOQMIN: TcxGridDBColumn;
    SQL_PRODUTOPROMOCAO_INICIO: TDateField;
    SQL_PRODUTOPROMOCAO_TERMINO: TDateField;
    SQL_LISTAPROMOCAO_INICIO: TDateField;
    SQL_LISTAPROMOCAO_TERMINO: TDateField;
    QtdeItens: TLabel;
    Label51: TLabel;
    Label35: TLabel;
    lblprodcads: TLabel;
    tbViewPRECO_PROMO: TcxGridDBColumn;
    SQL_PRODUTOPROD_NFe_N14_pRedBC: TBCDField;
    SQL_PRODUTOPROD_NFe_N14_pRedBC_ST: TBCDField;
    SQL_PRODUTOLUCRO_SUBST_TRIBUTARIA: TBCDField;
    SQL_PRODUTOVALOR_PAUTA_BC_ST: TBCDField;
    SQL_LISTAPROD_NFe_N14_pRedBC: TBCDField;
    SQL_LISTAPROD_NFe_N14_pRedBC_ST: TBCDField;
    SQL_LISTALUCRO_SUBST_TRIBUTARIA: TBCDField;
    SQL_LISTAVALOR_PAUTA_BC_ST: TBCDField;
    lbl2: TLabel;
    sql_ponto_impressao: TFDQuery;
    ds_ponto_impressao: TDataSource;
    cb_ponto_impressao: TcxDBLookupComboBox;
    sql_ponto_impressaoid: TFDAutoIncField;
    sql_ponto_impressaonome: TStringField;
    SQL_PRODUTOponto_impressao_id: TIntegerField;
    N1: TMenuItem;
    ImprimirEtiqueta1: TMenuItem;
    DBEdit3: TDBEdit;
    chk_ativocadastro: TcxCheckBox;
    Label18: TLabel;
    cxLabel1: TcxLabel;
    GroupBox6: TGroupBox;
    RadioButton1: TRadioButton;
    RadioButton2: TRadioButton;
    cxButton1: TcxButton;
    procedure cxDBTextEdit2KeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
    procedure cxDBComboBox10KeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
    procedure cxDateEdit1KeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
    procedure BtnGravarClick(Sender: TObject);
    procedure cxTabSheet5Show(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure BtnIncluirClick(Sender: TObject);
    procedure BtnCancelarClick(Sender: TObject);
    procedure btn_familiaClick(Sender: TObject);
    procedure btn_subClick(Sender: TObject);
    procedure btn_marcaClick(Sender: TObject);
    procedure btn_grupoClick(Sender: TObject);
    procedure btn_undClick(Sender: TObject);
    procedure Button1Click(Sender: TObject);
    procedure DBEdit2Exit(Sender: TObject);
    procedure cxDBTextEdit26Exit(Sender: TObject);
    procedure cxDBTextEdit28Exit(Sender: TObject);
    procedure cxDBTextEdit35Exit(Sender: TObject);
    procedure btnestoqueClick(Sender: TObject);
    procedure cxDBTextEdit50KeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
    procedure cxTabSheet1Show(Sender: TObject);
    procedure PROD_NFe_N16_pICMSKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
    procedure PROD_NFe_N14_pRedBC_STKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
    procedure pauta_bcKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
    procedure edt_leisKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
    procedure edt_generoKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
    procedure aliq_lucro_stKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
    procedure edt_ncmKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
    procedure Edit1KeyPress(Sender: TObject; var Key: Char);
    procedure cxDBTextEdit3KeyPress(Sender: TObject; var Key: Char);
    procedure cxDBTextEdit29KeyPress(Sender: TObject; var Key: Char);
    procedure cxDBTextEdit36KeyPress(Sender: TObject; var Key: Char);
    procedure cxDBTextEdit38KeyPress(Sender: TObject; var Key: Char);
    procedure cxDBTextEdit39KeyPress(Sender: TObject; var Key: Char);
    procedure cxDBTextEdit37KeyPress(Sender: TObject; var Key: Char);
    procedure cxDBTextEdit1KeyPress(Sender: TObject; var Key: Char);
    procedure cxDBTextEdit30KeyPress(Sender: TObject; var Key: Char);
    procedure cxDBTextEdit13KeyPress(Sender: TObject; var Key: Char);
    procedure cxDBTextEdit25KeyPress(Sender: TObject; var Key: Char);
    procedure cxDBTextEdit31KeyPress(Sender: TObject; var Key: Char);
    procedure cxDBTextEdit16KeyPress(Sender: TObject; var Key: Char);
    procedure cxDBTextEdit33KeyPress(Sender: TObject; var Key: Char);
    procedure cxDBTextEdit35KeyPress(Sender: TObject; var Key: Char);
    procedure cxDBTextEdit8KeyPress(Sender: TObject; var Key: Char);
    procedure cxDBTextEdit10KeyPress(Sender: TObject; var Key: Char);
    procedure cxDBTextEdit40KeyPress(Sender: TObject; var Key: Char);
    procedure cxDBTextEdit41KeyPress(Sender: TObject; var Key: Char);
    procedure cxDBTextEdit42KeyPress(Sender: TObject; var Key: Char);
    procedure cxDBTextEdit43KeyPress(Sender: TObject; var Key: Char);
    procedure cxDBTextEdit44KeyPress(Sender: TObject; var Key: Char);
    procedure cxDBTextEdit45KeyPress(Sender: TObject; var Key: Char);
    procedure cxDBTextEdit46KeyPress(Sender: TObject; var Key: Char);
    procedure cxDBTextEdit47KeyPress(Sender: TObject; var Key: Char);
    procedure cxDBTextEdit52KeyPress(Sender: TObject; var Key: Char);
    procedure cxDateEdit2KeyPress(Sender: TObject; var Key: Char);
    procedure cxDateEdit1KeyPress(Sender: TObject; var Key: Char);
    procedure cxDBTextEdit56KeyPress(Sender: TObject; var Key: Char);
    procedure DBEdit2KeyPress(Sender: TObject; var Key: Char);
    procedure cxDBTextEdit28KeyPress(Sender: TObject; var Key: Char);
    procedure cxDBTextEdit26KeyPress(Sender: TObject; var Key: Char);
    procedure DBEdit1KeyPress(Sender: TObject; var Key: Char);
    procedure PROD_NFe_N16_pICMSKeyPress(Sender: TObject; var Key: Char);
    procedure PROD_NFe_N14_pRedBC_STKeyPress(Sender: TObject; var Key: Char);
    procedure pauta_bcKeyPress(Sender: TObject; var Key: Char);
    procedure edt_generoKeyPress(Sender: TObject; var Key: Char);
    procedure aliq_lucro_stKeyPress(Sender: TObject; var Key: Char);
    procedure cod_combKeyPress(Sender: TObject; var Key: Char);
    procedure ex_ipiKeyPress(Sender: TObject; var Key: Char);
    procedure aliq_ipiKeyPress(Sender: TObject; var Key: Char);
    procedure aliq_pisKeyPress(Sender: TObject; var Key: Char);
    procedure aliq_cofinsKeyPress(Sender: TObject; var Key: Char);
    procedure edt_cestKeyPress(Sender: TObject; var Key: Char);
    procedure cxDBTextEdit48KeyPress(Sender: TObject; var Key: Char);
    procedure cxDBTextEdit49KeyPress(Sender: TObject; var Key: Char);
    procedure cxDBTextEdit55KeyPress(Sender: TObject; var Key: Char);
    procedure cxDBTextEdit57KeyPress(Sender: TObject; var Key: Char);
    procedure cxDBTextEdit59KeyPress(Sender: TObject; var Key: Char);
    procedure cxDBTextEdit60KeyPress(Sender: TObject; var Key: Char);
    procedure cxDBTextEdit61KeyPress(Sender: TObject; var Key: Char);
    procedure CODIGO_BARRASKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
    procedure PROD_DESCRICAOKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
    procedure PROD_REFERENCIASFABRICAKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
    procedure MARCAKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
    procedure FAMILIAKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
    procedure GRUPOKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
    procedure SUBGRUPOKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
    procedure PROD_ESTOQMINKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
    procedure PRECO_CUSTOKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
    procedure CUSTO_MEDIOKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
    procedure PROD_MAXDESC_DISTKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
    procedure MARGEM_LUCROKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
    procedure MARGEM_L_DISTRIBUIDORKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
    procedure MARGEM_L_ATACADOKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
    procedure PROD_COMISSAO_VARKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
    procedure PROD_COMISSAO_DISTKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
    procedure PROD_COMISSAO_ATACKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
    procedure PROD_COMISSAO_EXT_VARKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
    procedure PROD_COMISSAO_EXT_DISTKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
    procedure PROD_COMISSAO_EXT_ATACKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
    procedure PROD_PRECO_VARKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
    procedure PROD_PRECO_DISTKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
    procedure prodpromo_terminoKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
    procedure FRETEKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
    procedure DESP_OPERACIONAISKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
    procedure Edit1KeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
    procedure CODIGO_BARRASKeyPress(Sender: TObject; var Key: Char);
    procedure PROD_ESTOQMINKeyPress(Sender: TObject; var Key: Char);
    procedure PROD_COMISSAO_VARKeyPress(Sender: TObject; var Key: Char);
    procedure PROD_COMISSAO_DISTKeyPress(Sender: TObject; var Key: Char);
    procedure PROD_COMISSAO_ATACKeyPress(Sender: TObject; var Key: Char);
    procedure PROD_COMISSAO_EXT_VARKeyPress(Sender: TObject; var Key: Char);
    procedure PROD_COMISSAO_EXT_DISTKeyPress(Sender: TObject; var Key: Char);
    procedure PROD_COMISSAO_EXT_ATACKeyPress(Sender: TObject; var Key: Char);
    procedure IMPOSTOKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
    procedure CarregarDadosInternos;
    procedure FormShow(Sender: TObject);
    procedure btn_ncmClick(Sender: TObject);
    procedure FormKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
    procedure cxTabSheet4Show(Sender: TObject);
    procedure RegraTributacao;
    procedure LimparCampos;
    procedure cxTabSheet3Show(Sender: TObject);
    procedure BtnAlterarClick(Sender: TObject);
    procedure duplicar_cadastroClick(Sender: TObject);
    function RemoveEspaco(const str: String): string;
    procedure PROD_DESCRICAOExit(Sender: TObject);
    procedure MARGEM_LUCROExit(Sender: TObject);
    procedure MARGEM_L_DISTRIBUIDORExit(Sender: TObject);
    procedure MARGEM_L_ATACADOExit(Sender: TObject);
    procedure chk_ativoClick(Sender: TObject);
    procedure chk_inativoClick(Sender: TObject);
    procedure chk_todosClick(Sender: TObject);
    procedure cxchckbx1PropertiesChange(Sender: TObject);
    procedure ConsultarProdutos;
    procedure DBEdit14KeyPress(Sender: TObject; var Key: Char);
    procedure DBEdit15KeyPress(Sender: TObject; var Key: Char);
    procedure DBEdit12KeyPress(Sender: TObject; var Key: Char);
    procedure DBEdit14Exit(Sender: TObject);
    procedure CodBalancaCheck(campo: TDBEdit);
    procedure DBEdit15Exit(Sender: TObject);
    procedure DBEdit12Exit(Sender: TObject);
    procedure cxButton7Click(Sender: TObject);
    procedure edtBuscarKeyUp(Sender: TObject; var Key: Word; Shift: TShiftState);
    procedure CODIGO_BARRASKeyUp(Sender: TObject; var Key: Word; Shift: TShiftState);
    function CodBarrasRepetido: Boolean;
    function RefFabricanteRepetido(foco: Boolean = true): Boolean;
    procedure CFOPCODIGOKeyPress(Sender: TObject; var Key: Char);
    procedure CSOSNKeyPress(Sender: TObject; var Key: Char);
    procedure NCMKeyPress(Sender: TObject; var Key: Char);
    procedure edt_cestKeyUp(Sender: TObject; var Key: Word; Shift: TShiftState);
    procedure NCMKeyUp(Sender: TObject; var Key: Word; Shift: TShiftState);
    procedure CSOSNKeyUp(Sender: TObject; var Key: Word; Shift: TShiftState);
    procedure DBEdit13Change(Sender: TObject);
    procedure DBEdit16KeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
    procedure DBEdit13KeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
    procedure PROD_CDUNIDADEKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
    procedure calcular_preco_produtos(Sender: TObject; var Key: Word; Shift: TShiftState);
    procedure PROD_PRECO_ATACKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
    procedure DBEdit13KeyPress(Sender: TObject; var Key: Char);
    procedure sKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
    procedure PROD_MAXDESC_ATACKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
    procedure dbcsticmsClick(Sender: TObject);
    procedure PRECO_CUSTOClick(Sender: TObject);
    procedure FRETEClick(Sender: TObject);
    procedure IMPOSTOClick(Sender: TObject);
    procedure DESP_OPERACIONAISClick(Sender: TObject);
    procedure CUSTO_MEDIOClick(Sender: TObject);
    procedure MARGEM_LUCROClick(Sender: TObject);
    procedure MARGEM_L_DISTRIBUIDORClick(Sender: TObject);
    procedure MARGEM_L_ATACADOClick(Sender: TObject);
    procedure PROD_PRECO_VARClick(Sender: TObject);
    procedure PROD_PRECO_DISTClick(Sender: TObject);
    procedure PROD_PRECO_ATACClick(Sender: TObject);
    procedure PROD_COMISSAO_VARClick(Sender: TObject);
    procedure PROD_COMISSAO_DISTClick(Sender: TObject);
    procedure PROD_COMISSAO_ATACClick(Sender: TObject);
    procedure PROD_COMISSAO_EXT_VARClick(Sender: TObject);
    procedure PROD_COMISSAO_EXT_DISTClick(Sender: TObject);
    procedure PROD_COMISSAO_EXT_ATACClick(Sender: TObject);
    procedure DBEdit13Click(Sender: TObject);
    procedure PROD_ESTOQMINClick(Sender: TObject);
    procedure sClick(Sender: TObject);
    procedure PROD_MAXDESC_DISTClick(Sender: TObject);
    procedure PROD_MAXDESC_ATACClick(Sender: TObject);
    procedure calc_margem(Sender: TObject; var Key: Word; Shift: TShiftState);
    procedure NCMExit(Sender: TObject);
    procedure edt_qtde_minExit(Sender: TObject);
    procedure edt_qtde_minKeyPress(Sender: TObject; var Key: Char);
    procedure edt_qtde_minKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
    procedure edt_qtde_maxKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
    procedure edt_precoKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
    procedure cb_tipoKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
    procedure btn_cad_faixaClick(Sender: TObject);
    procedure carregar_faixa;
    procedure edt_precoExit(Sender: TObject);
    procedure RemoverFaixa1Click(Sender: TObject);
    procedure pop_faixaPopup(Sender: TObject);
    procedure PROD_PRECO_ATACKeyPress(Sender: TObject; var Key: Char);
    procedure chk_diff_estoquePropertiesChange(Sender: TObject);
    procedure PROD_ESTOQMINChange(Sender: TObject);
    procedure PreencherCSOSN(value: string);
    procedure PreencherNCM(value: string);
    procedure preencherANP(value: string);
    procedure limparcsosn;
    procedure carregar_nat_op;
    procedure LimparCFOP_CSOSN;
    procedure LimparNCM;
    procedure LimparANP;
    procedure CSOSNKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
    procedure btn_anpClick(Sender: TObject);
    procedure tbViewCustomDrawCell(Sender: TcxCustomGridTableView; ACanvas: TcxCanvas; AViewInfo: TcxGridTableDataCellViewInfo;
      var ADone: Boolean);
    procedure tbViewCellDblClick(Sender: TcxCustomGridTableView; ACellViewInfo: TcxGridTableDataCellViewInfo; AButton: TMouseButton;
      AShift: TShiftState; var AHandled: Boolean);
    procedure cbFiltroPropertiesEditValueChanged(Sender: TObject);
    procedure cbTipoItemConsultaPropertiesEditValueChanged(Sender: TObject);
    procedure consultaparacadastro;

    procedure updateEstoque;
    procedure btn_csosnClick(Sender: TObject);
    procedure tbViewKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
    procedure PROD_REFERENCIASFABRICAKeyUp(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure ImprimirEtiqueta1Click(Sender: TObject);
    procedure cxButton1Click(Sender: TObject);

  private
    { Private declarations }
    PROCEDURE PreencherCFOP(icms_cst: string);
  public
    { Public declarations }
    deletar_prod_preco_faixa, consultarultimo: Boolean;
  protected
    { Protected declarations }

  end;

var
  Frm_Produto: TFrm_Produto;

implementation

{$R *.dfm}

uses cadastro_familia, cadastro_sub_grupo, cad_marca,

  cadastro_grupo, cadastro_unidade, u_funcoes, m_Etiqueta, vw_etiquetas,
  dados_adicionais;

function TFrm_Produto.RemoveEspaco(const str: String): string;
const
  cDouble = '  ';
  cOne = ' ';
begin
  result := str;
  while pos(cDouble, result) > 0 do
    result := StringReplace(result, cDouble, cOne, [rfReplaceAll]);
end;

procedure TFrm_Produto.RemoverFaixa1Click(Sender: TObject);
begin
  if not clickonTittle(TDBGrid(grid_c)) then
  begin
    if wnconfirmacao('Preço Faixa', slinebreak + 'Deseja deletar faixa de preço ?') then
      execquery('delete from produto_preco_faixa where id = ' + SQL_PRECO_FAIXAID.AsString);
    carregar_faixa;
  end;
end;

procedure TFrm_Produto.sClick(Sender: TObject);
begin
  s.SelectAll;
end;

procedure TFrm_Produto.sKeyDown(Sender: TObject;

  var Key: Word; Shift: TShiftState);
begin
  if Key in [vk_return, vk_tab] then
    PROD_MAXDESC_DIST.SetFocus;

end;

procedure ConsultarCODBARRAS(Consulta: TFDQuery; Texto: TDBEdit; Tabela, Coluna, Parametro: String);
var
  QueryTemp: TFDQuery;
begin
  QueryTemp := TFDQuery.CREATE(nil);
  QueryTemp.Connection := Consulta.Connection;
  with QueryTemp do
  begin
    Close;
    sql.Clear;
    sql.Add('SELECT * FROM ' + Tabela);
    sql.Add(' WHERE ' + Coluna + ' LIKE :' + Parametro + ' AND CODIGO <> ' + QuotedStr(Consulta.FieldByName('codigo').value));
    Params[0].value := '%' + Texto.Text + '%';
    Open;
    if RecordCount <> 0 then
    begin
      Application.MessageBox('Código de Barras Cadastrado em outro Produto!!! ', 'Mensagem do Sistema.', MB_ICONWARNING + MB_OK);
      Texto.SelectAll;
      Texto.SetFocus;
    end;
  end;
  QueryTemp.Destroy;
end;

procedure TFrm_Produto.BtnIncluirClick(Sender: TObject);
begin
  if BtnIncluir.Visible = true then
  begin
    cxTabSheet4.show;
    AlterarEnabled([GroupBox4, GroupBox18, GroupBox2, GroupBox15, GroupBox16, GroupBox24, GroupBox1, GroupBox19, grupocfop, GroupBox22,
      GroupBox23, GroupBox25, GroupBox26, btn_familia, btn_sub, btn_grupo, btn_marca, btn_und, btn_csosn, btn_ncm, btn_anp, grp_faixa_preco,
      btn_cad_faixa], true);
    LimparNCM;
    SQL_CSTIPI.Active := true;
    SQL_CSTPIS.Active := true;
    SQL_CSTCOFINS.Active := true;
    SQL_ORIGEM_ICMS.Active := false;
    SQL_ORIGEM_ICMS.Active := true;
    SQL_PRODUTO.Active := true;
    SQL_CSTICMS.Active := true;
    SQL_NAT_OP.Active := false;
    SQL_NAT_OP.Active := true;
    SQL_TIPO_ITEM.Active := true;
    sql_increment.Active := false;
    sql_increment.Active := true;
    carregar_nat_op;
    SQL_PRODUTO.Insert;
    if sql_incrementAUTO_INCREMENT.value = 0 then
      dbedt_codigo.Field.Text := '1'
    else
      dbedt_codigo.Field.Text := inttostr(sql_incrementAUTO_INCREMENT.value);
    cbTipoItem.itemindex := 0;
    cb_origem.itemindex := 0;
    IniciarCadastro([BtnIncluir, BtnCancelar, BtnAlterar], true);
    PROD_DESCRICAO.SetFocus;
    chk_ativocadastro.Checked := true;
    DBEdit13.Text := '0';
    PROD_ESTOQMIN.Text := '0';
  end;
end;

procedure TFrm_Produto.btn_cad_faixaClick(Sender: TObject);
var
  qtde, preco: extended;
  qry: TFDQuery;
begin
  qtde := strtofloat(TFunctions.ifthen(edt_qtde_min.Text = '', 0, edt_qtde_min.Text));
  preco := strtofloat(TFunctions.ifthen(edt_preco.Text = '', 0, TFunctions.replace(edt_preco.Text, 'R$')));
  cb_tipo.ValidateEdit(false);

  if not CamposObrigatorios([edt_qtde_min, edt_preco, TEdit(cb_tipo)], ['Quantidade Mínima', 'Preço', 'Tipo']) then
  begin
    if comparevalue(preco, 0) <> 1 then
    begin
      wnAlerta('Preço por faixa', slinebreak + 'Preço deve ser diferente de 0');
      edt_preco.SelectAll;
      edt_preco.SetFocus;
    end
    else
    begin
      //qry := simplequery('SELECT ID from produto_preco_faixa where tipo = ? and id_produto = ?', [cb_tipo.Text, dbedt_codigo.Text]);
      qry := simplequery('SELECT ID from produto_preco_faixa where tipo = ? and id_produto = ? and qtde = ?', [cb_tipo.Text, dbedt_codigo.Text, FloatToStr(qtde)]);
      if qry = nil then
      begin
        execquery('insert into produto_preco_faixa(id_usuario, id_produto, tipo, qtde, preco) values(:p1,:p2,:p3,:p4,:p5)',
          [TEnv.Tuser.id, dbedt_codigo.Text, cb_tipo.Text, qtde, preco]);
        deletar_prod_preco_faixa := true;

      end
      else
        execquery('UPDATE PRODUTO_PRECO_FAIXA SET QTDE = ?, PRECO = ? where ID = ?', [qtde, preco, qry.Fields[0].value]);

      carregar_faixa;
      u_funcoes.LimparCampos([edt_qtde_min, edt_preco]);

    end;
  end;
end;

procedure TFrm_Produto.btn_csosnClick(Sender: TObject);
begin
  Frm_Consulta_Generica := TFrm_Consulta_Generica.CREATE(nil, cgCSOSN, TEdit(CSOSN));
  Frm_Consulta_Generica.ShowModal;

  PreencherCSOSN(TEdit(CSOSN).Text);
end;

procedure TFrm_Produto.Button1Click(Sender: TObject);
begin
  SQL_LISTA.Active := true;
end;

procedure TFrm_Produto.calcular_preco_produtos(Sender: TObject;

  var Key: Word; Shift: TShiftState);
var
  _PRECO_CUSTO, _FRETE, _DESP_OPERACIONAIS, _MARGEM_LUCRO, _CUSTO_MEDIO, _PROD_PRECO_VAR, _MARGEM_L_DISTRIBUIDOR,
    _PROD_PRECO_DIST, _MARGEM_L_ATACADO, _PROD_PRECO_ATAC, _IMPOSTO: extended;
begin
  if PRECO_CUSTO.Text <> emptystr then
    _PRECO_CUSTO := TFunctions.replace(PRECO_CUSTO.Text, 'R$', VARDOUBLE);

  if FRETE.Text <> emptystr then
    _FRETE := TFunctions.replace(FRETE.Text, '%', VARDOUBLE);

  if DESP_OPERACIONAIS.Text <> emptystr then
    _DESP_OPERACIONAIS := TFunctions.replace(DESP_OPERACIONAIS.Text, '%', VARDOUBLE);

  if MARGEM_LUCRO.Text <> emptystr then
    _MARGEM_LUCRO := TFunctions.replace(MARGEM_LUCRO.Text, '%', VARDOUBLE);

  if CUSTO_MEDIO.Text <> emptystr then
    _CUSTO_MEDIO := TFunctions.replace(CUSTO_MEDIO.Text, 'R$', VARDOUBLE);

  if PROD_PRECO_VAR.Text <> emptystr then
    _PROD_PRECO_VAR := TFunctions.replace(PROD_PRECO_VAR.Text, 'R$', VARDOUBLE);

  if MARGEM_L_DISTRIBUIDOR.Text <> emptystr then
    _MARGEM_L_DISTRIBUIDOR := TFunctions.replace(MARGEM_L_DISTRIBUIDOR.Text, '%', VARDOUBLE);

  if PROD_PRECO_DIST.Text <> emptystr then
    _PROD_PRECO_DIST := TFunctions.replace(PROD_PRECO_DIST.Text, 'R$', VARDOUBLE);

  if MARGEM_L_ATACADO.Text <> emptystr then
    _MARGEM_L_ATACADO := TFunctions.replace(MARGEM_L_ATACADO.Text, '%', VARDOUBLE);

  if PROD_PRECO_ATAC.Text <> emptystr then
    _PROD_PRECO_ATAC := TFunctions.replace(PROD_PRECO_ATAC.Text, 'R$', VARDOUBLE);

  if IMPOSTO.Text <> emptystr then
    _IMPOSTO := TFunctions.replace(IMPOSTO.Text, '%', VARDOUBLE);

  if _PRECO_CUSTO <> 0 then
    if (_FRETE = 0) and (_DESP_OPERACIONAIS = 0) and (_MARGEM_LUCRO = 0) then
    begin
      _CUSTO_MEDIO := _PRECO_CUSTO;
      _PROD_PRECO_DIST := _CUSTO_MEDIO;
    end
    else
      _CUSTO_MEDIO := _PRECO_CUSTO + ((_PRECO_CUSTO * _FRETE) / 100) + ((_PRECO_CUSTO * _IMPOSTO) / 100) +
        ((_PRECO_CUSTO * _DESP_OPERACIONAIS) / 100);

  if _MARGEM_LUCRO = 0 then
    _PROD_PRECO_VAR := _CUSTO_MEDIO
  else
    _PROD_PRECO_VAR := _CUSTO_MEDIO + ((_CUSTO_MEDIO * _MARGEM_LUCRO) / 100);

  if _MARGEM_L_DISTRIBUIDOR = 0 then
    _PROD_PRECO_DIST := _CUSTO_MEDIO
  else
    _PROD_PRECO_DIST := _CUSTO_MEDIO + ((_CUSTO_MEDIO * _MARGEM_L_DISTRIBUIDOR) / 100);

  if _MARGEM_L_ATACADO = 0 then
    _PROD_PRECO_ATAC := _CUSTO_MEDIO
  else
    _PROD_PRECO_ATAC := _CUSTO_MEDIO + ((_CUSTO_MEDIO * _MARGEM_L_ATACADO) / 100);

  if TDBEdit(Sender) <> PRECO_CUSTO then
    PRECO_CUSTO.Field.asExtended := _PRECO_CUSTO;

  if TDBEdit(Sender) <> FRETE then
    FRETE.Field.asExtended := _FRETE;

  if TDBEdit(Sender) <> DESP_OPERACIONAIS then
    DESP_OPERACIONAIS.Field.asExtended := _DESP_OPERACIONAIS;

  if TDBEdit(Sender) <> MARGEM_LUCRO then
    MARGEM_LUCRO.Field.asExtended := _MARGEM_LUCRO;

  if TDBEdit(Sender) <> CUSTO_MEDIO then
    CUSTO_MEDIO.Field.asExtended := _CUSTO_MEDIO;

  if TDBEdit(Sender) <> PROD_PRECO_VAR then
    PROD_PRECO_VAR.Field.asExtended := _PROD_PRECO_VAR;

  if TDBEdit(Sender) <> MARGEM_L_DISTRIBUIDOR then
    MARGEM_L_DISTRIBUIDOR.Field.asExtended := _MARGEM_L_DISTRIBUIDOR;

  if TDBEdit(Sender) <> PROD_PRECO_DIST then
    PROD_PRECO_DIST.Field.asExtended := _PROD_PRECO_DIST;

  if TDBEdit(Sender) <> MARGEM_L_ATACADO then
    MARGEM_L_ATACADO.Field.asExtended := _MARGEM_L_ATACADO;

  if TDBEdit(Sender) <> PROD_PRECO_ATAC then
    PROD_PRECO_ATAC.Field.asExtended := _PROD_PRECO_ATAC;

  if TDBEdit(Sender) <> IMPOSTO then
    IMPOSTO.Field.asExtended := _IMPOSTO;
end;

procedure TFrm_Produto.calc_margem(Sender: TObject;

  var Key: Word; Shift: TShiftState);
var
  __MARGEM_LUCRO, __CUSTO_MEDIO, __PROD_PRECO_VAR, __MARGEM_L_DISTRIBUIDOR, __PROD_PRECO_DIST, __MARGEM_L_ATACADO,
    __PROD_PRECO_ATAC: extended;
begin
  if MARGEM_LUCRO.Text <> emptystr then
    __MARGEM_LUCRO := TFunctions.replace(MARGEM_LUCRO.Text, '%', VARDOUBLE);

  if CUSTO_MEDIO.Text <> emptystr then
    __CUSTO_MEDIO := TFunctions.replace(CUSTO_MEDIO.Text, 'R$', VARDOUBLE);

  if PROD_PRECO_VAR.Text <> emptystr then
    __PROD_PRECO_VAR := TFunctions.replace(PROD_PRECO_VAR.Text, 'R$', VARDOUBLE);

  if MARGEM_L_DISTRIBUIDOR.Text <> emptystr then
    __MARGEM_L_DISTRIBUIDOR := TFunctions.replace(MARGEM_L_DISTRIBUIDOR.Text, '%', VARDOUBLE);

  if PROD_PRECO_DIST.Text <> emptystr then
    __PROD_PRECO_DIST := TFunctions.replace(PROD_PRECO_DIST.Text, 'R$', VARDOUBLE);

  if MARGEM_L_ATACADO.Text <> emptystr then
    __MARGEM_L_ATACADO := TFunctions.replace(MARGEM_L_ATACADO.Text, '%', VARDOUBLE);

  if PROD_PRECO_ATAC.Text <> emptystr then
    __PROD_PRECO_ATAC := TFunctions.replace(PROD_PRECO_ATAC.Text, 'R$', VARDOUBLE);

  if not(comparevalue(__CUSTO_MEDIO, 0) = 0) then
  begin
    if not(comparevalue(__PROD_PRECO_VAR, 0) = 0) then
      __MARGEM_LUCRO := ((__PROD_PRECO_VAR - __CUSTO_MEDIO) * 100) / __CUSTO_MEDIO;
    if not(comparevalue(__PROD_PRECO_DIST, 0) = 0) then
      __MARGEM_L_DISTRIBUIDOR := ((__PROD_PRECO_DIST - __CUSTO_MEDIO) * 100) / __CUSTO_MEDIO;
    if not(comparevalue(__PROD_PRECO_ATAC, 0) = 0) then
      __MARGEM_L_ATACADO := ((__PROD_PRECO_ATAC - __CUSTO_MEDIO) * 100) / __CUSTO_MEDIO;
  end
  else
    __CUSTO_MEDIO := __PROD_PRECO_VAR;

  if TDBEdit(Sender) <> PROD_PRECO_VAR then
    PROD_PRECO_VAR.Field.asExtended := __PROD_PRECO_VAR;

  if TDBEdit(Sender) <> PROD_PRECO_DIST then
    PROD_PRECO_DIST.Field.asExtended := __PROD_PRECO_DIST;

  if TDBEdit(Sender) <> PROD_PRECO_ATAC then
    PROD_PRECO_ATAC.Field.asExtended := __PROD_PRECO_ATAC;

  if (comparevalue(__MARGEM_LUCRO, 0) = 1) then
    MARGEM_LUCRO.Text := TFunctions.replace(formatarmoeda(__MARGEM_LUCRO), 'R$', VARDOUBLE)
  else
    MARGEM_LUCRO.Field.asExtended := 0;

  if (comparevalue(__MARGEM_L_DISTRIBUIDOR, 0) = 1) then
    MARGEM_L_DISTRIBUIDOR.Field.asExtended := TFunctions.replace(formatarmoeda(__MARGEM_L_DISTRIBUIDOR), 'R$', VARDOUBLE)
  else
    MARGEM_L_DISTRIBUIDOR.Field.asExtended := 0;

  if (comparevalue(__MARGEM_L_ATACADO, 0) = 1) then
    MARGEM_L_ATACADO.Field.asExtended := TFunctions.replace(formatarmoeda(__MARGEM_L_ATACADO), 'R$', VARDOUBLE)
  else
    MARGEM_L_ATACADO.Field.asExtended := 0;
end;

procedure TFrm_Produto.CarregarDadosInternos;
  procedure PreencherInfo(Edit: TEdit; ReferTo, table: string);
  var
    qry: TFDQuery;
  begin
    if ReferTo <> emptystr then
    begin
      qry := simplequery('SELECT DESCRICAO FROM ' + table + ' WHERE DESCRICAO LIKE ' + QuotedStr(ReferTo + '%'));
      if qry <> nil then
        Edit.Text := qry.Fields[0].Text;
    end;

  end;

begin

  SQL_CSTICMS.Active := true;
  SQL_CSTPIS.Active := true;

  SQL_CSTCOFINS.Active := true;

  SQL_ORIGEM_ICMS.Active := true;
  SQL_TIPO_ITEM.Active := true;

  SQL_NAT_OP.Active := false;
  SQL_NAT_OP.Active := true;

  sql_ponto_impressao.Active := false;
  sql_ponto_impressao.Active := true;

  dbedt_codigo.Text := inttostr(SQL_PRODUTOCODIGO.value);
  u_funcoes.CamposObrigatorios_CorPadrao([PROD_DESCRICAO, PROD_CDUNIDADE, PROD_PRECO_VAR, NCM], [], [TcxComboBox(dbcsticms)]);
  u_funcoes.CamposObrigatorios_CorPadrao([edt_qtde_min, edt_preco, TEdit(cb_tipo)], []);
  carregar_faixa;

  AlterarEnabled([GroupBox4, GroupBox18, GroupBox2, GroupBox15, GroupBox16, GroupBox24, GroupBox1, GroupBox19, grupocfop, GroupBox22,
    GroupBox23, GroupBox25, GroupBox26, btn_familia, btn_sub, btn_grupo, btn_marca, btn_und, btn_csosn, btn_ncm, btn_anp, grp_faixa_preco,
    btn_cad_faixa], false);

  if SQL_PRODUTOSTATUS_CADASTRAL.value = 'ATIVO' then
    chk_ativocadastro.Checked := true
  else
    chk_ativocadastro.Checked := false;
  if SQL_PRODUTOUSA_LOTE.value = 'SIM' then
    chk_usa_lote.Checked := true
  else
    chk_usa_lote.Checked := false;

  PreencherCSOSN(SQL_PRODUTOCSOSN.AsString);

  PreencherNCM(SQL_PRODUTONCM.AsString);

  preencherANP(SQL_PRODUTOANP.AsString);

  PreencherCFOP(SQL_PRODUTOICMS_CST.AsString);

  cb_tipo.itemindex := 0;
  btnlocalizacao.Enabled := false;
  btnestoque.Enabled := false;
    IniciarCadastro([BtnIncluir, BtnCancelar, BtnAlterar], false);
end;

procedure TFrm_Produto.LimparNCM;
begin

  NCM.Clear;
  edt_cest.Clear;
  mmNCM.Clear;

end;

procedure TFrm_Produto.LimparANP;
begin
  edt_anp.Clear;
  lbl_anp.Caption :=
    '- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -  ';
end;

procedure TFrm_Produto.LimparCampos;
begin
  SQL_PRODUTO.Active := true;
  SQL_PRODUTO.Active := false;
  TFunctions.ClearFields([edt_qtde_min, edt_preco]);
  cb_tipo.itemindex := -1;
end;

procedure TFrm_Produto.LimparCFOP_CSOSN;
begin
  CSOSN.Clear;
  lbl_csosn.Caption := '';

end;

procedure TFrm_Produto.limparcsosn;
begin
  CSOSN.Clear;
  lbl_csosn.Caption :=
    '- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - ';
end;

procedure TFrm_Produto.aliq_cofinsKeyPress(Sender: TObject;

  var Key: Char);
begin
  inherited;
  Key := u_funcoes.ApenasNumeros(Key);
end;

procedure TFrm_Produto.PROD_NFe_N16_pICMSKeyDown(Sender: TObject;

  var Key: Word; Shift: TShiftState);
begin
  if (Key = vk_return) or (Key = vk_tab) then
    PROD_NFe_N14_pRedBC_ST.SetFocus;

end;

procedure TFrm_Produto.PROD_NFe_N16_pICMSKeyPress(Sender: TObject;

  var Key: Char);
begin
  inherited;
  Key := u_funcoes.ApenasNumeros(Key);
end;

procedure TFrm_Produto.aliq_ipiKeyPress(Sender: TObject;

  var Key: Char);
begin
  inherited;
  Key := u_funcoes.ApenasNumeros(Key);
end;

procedure TFrm_Produto.aliq_lucro_stKeyDown(Sender: TObject;

  var Key: Word; Shift: TShiftState);
begin
  if (Key = vk_return) or (Key = vk_tab) then
  begin
    cod_comb.SetFocus;
  end;
end;

procedure TFrm_Produto.aliq_lucro_stKeyPress(Sender: TObject;

  var Key: Char);
begin
  inherited;
  Key := u_funcoes.ApenasNumeros(Key);
end;

procedure TFrm_Produto.aliq_pisKeyPress(Sender: TObject;

  var Key: Char);
begin
  inherited;
  Key := u_funcoes.ApenasNumeros(Key);
end;

procedure TFrm_Produto.PROD_NFe_N14_pRedBC_STKeyDown(Sender: TObject;

  var Key: Word; Shift: TShiftState);
begin
  if (Key = vk_return) or (Key = vk_tab) then
    pauta_bc.SetFocus;
end;

procedure TFrm_Produto.PROD_NFe_N14_pRedBC_STKeyPress(Sender: TObject;

  var Key: Char);
begin
  inherited;
  Key := u_funcoes.ApenasNumeros(Key);
end;

procedure TFrm_Produto.PROD_COMISSAO_ATACClick(Sender: TObject);
begin
  PROD_COMISSAO_ATAC.SelectAll;
end;

procedure TFrm_Produto.PROD_COMISSAO_ATACKeyDown(Sender: TObject;

  var Key: Word; Shift: TShiftState);
begin
  if (Key = vk_return) or (Key = vk_tab) then
    PROD_COMISSAO_EXT_ATAC.SetFocus;
end;

procedure TFrm_Produto.PROD_COMISSAO_ATACKeyPress(Sender: TObject;

  var Key: Char);
begin
  inherited;
  Key := u_funcoes.ApenasNumeros(Key);
end;

procedure TFrm_Produto.PROD_COMISSAO_DISTClick(Sender: TObject);
begin
  PROD_COMISSAO_DIST.SelectAll;
end;

procedure TFrm_Produto.PROD_COMISSAO_DISTKeyDown(Sender: TObject;

  var Key: Word; Shift: TShiftState);
begin
  if (Key = vk_return) or (Key = vk_tab) then
  begin
    PROD_COMISSAO_EXT_DIST.SetFocus;
  end;
end;

procedure TFrm_Produto.PROD_COMISSAO_DISTKeyPress(Sender: TObject;

  var Key: Char);
begin
  inherited;
  Key := ApenasNumeros(Key);
end;

procedure TFrm_Produto.PROD_COMISSAO_VARClick(Sender: TObject);
begin
  PROD_COMISSAO_VAR.SelectAll;
end;

procedure TFrm_Produto.PROD_COMISSAO_VARKeyDown(Sender: TObject;

  var Key: Word; Shift: TShiftState);
begin
  if (Key = vk_return) or (Key = vk_tab) then
    edt_qtde_min.SetFocus;
end;

procedure TFrm_Produto.PROD_COMISSAO_VARKeyPress(Sender: TObject;

  var Key: Char);
begin
  inherited;
  Key := ApenasNumeros(Key);
end;

procedure TFrm_Produto.BtnAlterarClick(Sender: TObject);
begin
  if ((dbedt_codigo.Text = '') or (dbedt_codigo.Text = '0')) and (PROD_DESCRICAO.Text = '') then
  begin
    Application.MessageBox('Nenhum produto foi selecionado.', 'Alterar', MB_ICONWARNING + MB_OK);
    exit;
  end
  else
  begin
    SQL_PRODUTO.Edit;
    cxTabSheet4.show;
    AlterarEnabled([GroupBox4, GroupBox18, GroupBox2, GroupBox15, GroupBox16, GroupBox24, GroupBox1, GroupBox19, grupocfop, GroupBox22,
      GroupBox23, GroupBox25, GroupBox26, btn_familia, btn_sub, btn_grupo, btn_marca, btn_und, btn_csosn, btn_ncm, btn_anp, grp_faixa_preco,
      btn_cad_faixa], true);
    IniciarCadastro([BtnIncluir, BtnCancelar, BtnAlterar], true);
    BtnIncluir.Visible := false;
    PROD_DESCRICAO.SetFocus;
    carregar_nat_op;
  end;
end;

procedure TFrm_Produto.BtnCancelarClick(Sender: TObject);
begin
  if BtnCancelar.Enabled then
  begin
    if deletar_prod_preco_faixa then
    begin
      execquery('delete from produto_preco_faixa where id_produto=' + dbedt_codigo.Text);
      deletar_prod_preco_faixa := false;
    end;

    SQL_PRODUTO.Cancel;
    SQL_PRODUTO.Active := false;
    sql_increment.Active := false;
    SQL_CSTICMS.Active := false;
    SQL_CSTPIS.Active := false;
    SQL_CSTCOFINS.Active := false;
    SQL_ORIGEM_ICMS.Active := false;
    dbedt_codigo.Clear;
    LimparCampos;
    CarregarDadosInternos;
  end;
end;

procedure TFrm_Produto.BtnGravarClick(Sender: TObject);
begin
  if not BtnIncluir.Visible then
  begin
    //if (not CodBarrasRepetido) and (not RefFabricanteRepetido) then
    RefFabricanteRepetido(false);
    if (not CodBarrasRepetido) then
    begin
      if u_funcoes.CamposObrigatorios([PROD_DESCRICAO, PROD_CDUNIDADE, PROD_PRECO_VAR, NCM],
        ['Descrição do Produto', 'Unidade de Medida', 'Preço de Varejo', 'NCM'], [], [], [TcxComboBox(dbcsticms)], ['CST ICMS']) then
        exit
      else
      begin
        try
          SQL_PRODUTOMARGEM_L_VAREJO.asExtended := TFunctions.replace(MARGEM_LUCRO.Text, '%', VARDOUBLE);
          SQL_PRODUTOMARGEM_L_DISTRIBUIDOR.asExtended := TFunctions.replace(MARGEM_L_DISTRIBUIDOR.Text, '%', VARDOUBLE);
          SQL_PRODUTOMARGEM_L_ATACADO.asExtended := TFunctions.replace(MARGEM_L_ATACADO.Text, '%', VARDOUBLE);

          if chk_ativocadastro.Checked = true then
            SQL_PRODUTOSTATUS_CADASTRAL.value := 'ATIVO';

          if chk_ativocadastro.Checked = false then
            SQL_PRODUTOSTATUS_CADASTRAL.value := 'INATIVO';

          if chk_usa_lote.Checked = true then
            SQL_PRODUTOUSA_LOTE.value := 'SIM'
          else
            SQL_PRODUTOUSA_LOTE.value := 'NAO';

          if cbTipoItem.Text = '' then
            SQL_PRODUTOTIPO_ITEM.value := '00';

          if cstcofins.Text <> emptystr then
            SQL_PRODUTOCOFINS_CST.value := cstcofins.Text;

          if cstpis.Text <> emptystr then
            SQL_PRODUTOPIS_CST.value := cstpis.Text;
          if (TFunctions.replace(PRECO_CUSTO.Text, 'R$', VARDOUBLE) = 0) and (TFunctions.replace(FRETE.Text, '%', VARDOUBLE) = 0) and
            (TFunctions.replace(CUSTO_MEDIO.Text, 'R$', VARDOUBLE) = 0) and (TFunctions.replace(IMPOSTO.Text, '%', VARDOUBLE) = 0) and
            (TFunctions.replace(DESP_OPERACIONAIS.Text, '%', VARDOUBLE) = 0) and
            (TFunctions.replace(PROD_PRECO_VAR.Text, 'R$', VARDOUBLE) <> 0) then
            if wnconfirmacao('Cadastrar Produto', slinebreak + 'Campo PREÇO DE CUSTO está com valor zerado!' + slinebreak +
              'Deseja replicar o preço de varejo no preço de custo do produto?') then
            begin
              PRECO_CUSTO.Text := TFunctions.replace(PROD_PRECO_VAR.Text, 'R$', VARDOUBLE);
              CUSTO_MEDIO.Text := TFunctions.replace(PROD_PRECO_VAR.Text, 'R$', VARDOUBLE);
            end;

          if SQL_PRODUTOPROD_ESTOQMIN.AsString = '' then
            SQL_PRODUTOPROD_ESTOQMIN.value := '0';

          SQL_PRODUTO.Post;
          wninfo('Cadastrar Produto', slinebreak + slinebreak + 'Cadastro conclusão com sucesso!');
          u_funcoes.IniciarCadastro([BtnIncluir, BtnCancelar, BtnAlterar], false);
          LimparCampos;
          CarregarDadosInternos;
          if not consultarultimo then
            Close;
        except
          On e: exception do
          begin
            Application.MessageBox(StringToOleStr(e.Message + slinebreak + 'Erro ao cadastrar Produto. '), 'Erro de Cadastro.',
              MB_ICONINFORMATION + MB_OK);
          end;
        end;
      end;
    end;
  end;
end;

procedure TFrm_Produto.btnestoqueClick(Sender: TObject);
begin
  manworking;
end;

procedure TFrm_Produto.cxButton1Click(Sender: TObject);
begin
  frm_dados_produtos := Tfrm_dados_produtos.CREATE(Application);
  frm_dados_produtos.ShowModal;
end;

procedure TFrm_Produto.cxButton7Click(Sender: TObject);
begin
  SQL_PRODUTO.Prior;
end;

procedure TFrm_Produto.cxchckbx1PropertiesChange(Sender: TObject);
begin
  if chk_monofasico.Checked then
  begin
    cstpis.EditValue := '04';
    cstcofins.EditValue := '04';
  end
  else
  begin
    cstpis.EditValue := '99';
    cstcofins.EditValue := '99';
  end;
end;

procedure TFrm_Produto.btn_anpClick(Sender: TObject);
begin
  Frm_Consulta_Generica := TFrm_Consulta_Generica.CREATE(nil, cgANP, TEdit(edt_anp));
  Frm_Consulta_Generica.ShowModal;
  preencherANP(edt_anp.Text);
end;

procedure TFrm_Produto.btn_undClick(Sender: TObject);
begin

  Frm_unidade := TFrm_unidade.CREATE(Application);
  Frm_unidade.ShowModal;
  PROD_CDUNIDADE.Text := Frm_unidade.SQL_LISTASIGLA.value;
  PROD_ESTOQMIN.SetFocus;

end;

procedure TFrm_Produto.btn_marcaClick(Sender: TObject);
begin
  Frm_Marca := TFrm_Marca.CREATE(Application);
  Frm_Marca.ShowModal;
  MARCA.Text := Frm_Marca.SQL_LISTANOME.value;
end;

procedure TFrm_Produto.btn_ncmClick(Sender: TObject);
var
  int: Integer;
  str_cest: string;
  qry: TFDQuery;
begin
  Frm_Consulta_Generica := TFrm_Consulta_Generica.CREATE(nil, cgNCM, TEdit(NCM));
  Frm_Consulta_Generica.ShowModal;
  str_cest := NCM.Text;
  if str_cest <> emptystr then
  begin
    int := pos(';', str_cest);
    NCM.Text := copy(str_cest, 0, int - 1);
    NCM.Field.Text := NCM.Text;
    edt_cest.Text := TFunctions.replace(str_cest, NCM.Text + ';');
    edt_cest.Field.Text := edt_cest.Text;
    qry := simplequery('SELECT DESCRICAO FROM TAB_CEST WHERE NCM = "' + NCM.Text + '" AND CEST="' + edt_cest.Text + '"');
    if qry <> nil then
      mmNCM.Text := qry.Fields[0].Text;
  end;

end;

procedure TFrm_Produto.btn_familiaClick(Sender: TObject);
begin
  Frm_Familia := TFrm_Familia.CREATE(Application);
  Frm_Familia.ShowModal;
  FAMILIA.Text := Frm_Familia.SQL_LISTADESCRICAO.value;
  SUBGRUPO.SetFocus;
end;

procedure TFrm_Produto.btn_grupoClick(Sender: TObject);
begin
  Frm_Grupo := TFrm_Grupo.CREATE(Application);
  Frm_Grupo.ShowModal;
  GRUPO.Text := Frm_Grupo.SQL_LISTANOME.value;
end;

procedure TFrm_Produto.btn_subClick(Sender: TObject);
begin
  Frm_SubGrupo := TFrm_SubGrupo.CREATE(Application);
  Frm_SubGrupo.ShowModal;
  SUBGRUPO.Text := Frm_SubGrupo.SQL_LISTANOME.value;
  cbTipoItem.SetFocus;
end;

procedure TFrm_Produto.cxDateEdit1KeyDown(Sender: TObject;

  var Key: Word; Shift: TShiftState);
begin
  if (Key = vk_return) or (Key = vk_tab) then
  begin
    cxTabSheet5.show;
  end;

end;

procedure TFrm_Produto.cxDateEdit1KeyPress(Sender: TObject;

  var Key: Char);
begin
  inherited;
  Key := u_funcoes.ApenasNumeros(Key);
end;

procedure TFrm_Produto.cxDateEdit2KeyPress(Sender: TObject;

  var Key: Char);
begin
  inherited;
  Key := u_funcoes.ApenasNumeros(Key);
end;

procedure TFrm_Produto.cxDBComboBox10KeyDown(Sender: TObject;

  var Key: Word; Shift: TShiftState);
begin
  if (Key = vk_return) or (Key = vk_tab) then
  begin
    PROD_ESTOQMIN.SetFocus;
  end;

end;

procedure TFrm_Produto.cxDBTextEdit10KeyPress(Sender: TObject;

  var Key: Char);
begin
  inherited;
  Key := u_funcoes.ApenasNumeros(Key);
end;

procedure TFrm_Produto.cxDBTextEdit13KeyPress(Sender: TObject;

  var Key: Char);
begin
  inherited;
  Key := u_funcoes.ApenasNumeros(Key);
end;

procedure TFrm_Produto.cxDBTextEdit16KeyPress(Sender: TObject;

  var Key: Char);
begin
  inherited;
  Key := u_funcoes.ApenasNumeros(Key);
end;

procedure TFrm_Produto.cxDBTextEdit1KeyPress(Sender: TObject;

  var Key: Char);
begin
  inherited;
  Key := u_funcoes.ApenasNumeros(Key);
end;

procedure TFrm_Produto.cxDBTextEdit25KeyPress(Sender: TObject;

  var Key: Char);
begin
  inherited;
  Key := u_funcoes.ApenasNumeros(Key);
end;

procedure TFrm_Produto.cxDBTextEdit26Exit(Sender: TObject);
begin
  if FRETE.Text = '' then
  begin
    FRETE.Text := '0';
  end;
end;

procedure TFrm_Produto.cxDBTextEdit26KeyPress(Sender: TObject;

  var Key: Char);
begin
  inherited;
  Key := u_funcoes.ApenasNumeros(Key);
end;

procedure TFrm_Produto.cxDBTextEdit28Exit(Sender: TObject);
var
  soma: real;
begin
  if DESP_OPERACIONAIS.Text = '' then
  begin
    DESP_OPERACIONAIS.Text := '0';
  end;

  soma := SQL_PRODUTOFRETE.value + SQL_PRODUTOIMPOSTO.value + SQL_PRODUTODESP_OPERACIONAIS.value;
  SQL_PRODUTOCUSTO_MEDIO.value := (SQL_PRODUTOPRECO_CUSTO.value * soma / 100) + SQL_PRODUTOPRECO_CUSTO.value;
end;

procedure TFrm_Produto.cxDBTextEdit28KeyPress(Sender: TObject;

  var Key: Char);
begin
  inherited;
  Key := u_funcoes.ApenasNumeros(Key);
end;

procedure TFrm_Produto.cxDBTextEdit29KeyPress(Sender: TObject;

  var Key: Char);
begin
  inherited;
  Key := u_funcoes.ApenasNumeros(Key);
end;

procedure TFrm_Produto.cxDBTextEdit2KeyDown(Sender: TObject;

  var Key: Word; Shift: TShiftState);
begin
  if (Key = vk_return) or (Key = vk_tab) then
  begin
    cxDBMemo1.SetFocus;
  end;
end;

procedure TFrm_Produto.cxDBTextEdit30KeyPress(Sender: TObject;

  var Key: Char);
begin
  inherited;
  Key := u_funcoes.ApenasNumeros(Key);
end;

procedure TFrm_Produto.cxDBTextEdit31KeyPress(Sender: TObject;

  var Key: Char);
begin
  inherited;
  Key := u_funcoes.ApenasNumeros(Key);
end;

procedure TFrm_Produto.cxDBTextEdit33KeyPress(Sender: TObject;

  var Key: Char);
begin
  inherited;
  Key := u_funcoes.ApenasNumeros(Key);
end;

procedure TFrm_Produto.cxDBTextEdit35Exit(Sender: TObject);
begin
  SQL_PRODUTOPROD_PRECO_VAR.value := (SQL_PRODUTOCUSTO_MEDIO.value * SQL_PRODUTOMARGEM_LUCRO.value / 100) +
    SQL_PRODUTOCUSTO_MEDIO.value;
end;

procedure TFrm_Produto.cxDBTextEdit35KeyPress(Sender: TObject;

  var Key: Char);
begin
  inherited;
  Key := u_funcoes.ApenasNumeros(Key);
end;

procedure TFrm_Produto.cxDBTextEdit36KeyPress(Sender: TObject;

  var Key: Char);
begin
  inherited;
  Key := u_funcoes.ApenasNumeros(Key);
end;

procedure TFrm_Produto.cxDBTextEdit37KeyPress(Sender: TObject;

  var Key: Char);
begin
  inherited;
  Key := u_funcoes.ApenasNumeros(Key);
end;

procedure TFrm_Produto.cxDBTextEdit38KeyPress(Sender: TObject;

  var Key: Char);
begin
  inherited;
  Key := u_funcoes.ApenasNumeros(Key);
end;

procedure TFrm_Produto.cxDBTextEdit39KeyPress(Sender: TObject;

  var Key: Char);
begin
  inherited;
  Key := u_funcoes.ApenasNumeros(Key);
end;

procedure TFrm_Produto.cxDBTextEdit3KeyPress(Sender: TObject;

  var Key: Char);
begin
  inherited;
  Key := u_funcoes.ApenasNumeros(Key);
end;

procedure TFrm_Produto.cxDBTextEdit40KeyPress(Sender: TObject;

  var Key: Char);
begin
  inherited;
  Key := u_funcoes.ApenasNumeros(Key);
end;

procedure TFrm_Produto.cxDBTextEdit41KeyPress(Sender: TObject;

  var Key: Char);
begin
  inherited;
  Key := u_funcoes.ApenasNumeros(Key);
end;

procedure TFrm_Produto.cxDBTextEdit42KeyPress(Sender: TObject;

  var Key: Char);
begin
  inherited;
  Key := u_funcoes.ApenasNumeros(Key);
end;

procedure TFrm_Produto.cxDBTextEdit43KeyPress(Sender: TObject;

  var Key: Char);
begin
  inherited;
  Key := u_funcoes.ApenasNumeros(Key);
end;

procedure TFrm_Produto.cxDBTextEdit44KeyPress(Sender: TObject;

  var Key: Char);
begin
  inherited;
  Key := u_funcoes.ApenasNumeros(Key);
end;

procedure TFrm_Produto.cxDBTextEdit45KeyPress(Sender: TObject;

  var Key: Char);
begin
  inherited;
  Key := u_funcoes.ApenasNumeros(Key);
end;

procedure TFrm_Produto.cxDBTextEdit46KeyPress(Sender: TObject;

  var Key: Char);
begin
  inherited;
  Key := u_funcoes.ApenasNumeros(Key);
end;

procedure TFrm_Produto.cxDBTextEdit47KeyPress(Sender: TObject;

  var Key: Char);
begin
  inherited;
  Key := u_funcoes.ApenasNumeros(Key);
end;

procedure TFrm_Produto.cxDBTextEdit48KeyPress(Sender: TObject;

  var Key: Char);
begin
  inherited;
  Key := u_funcoes.ApenasNumeros(Key);
end;

procedure TFrm_Produto.cxDBTextEdit49KeyPress(Sender: TObject;

  var Key: Char);
begin
  inherited;
  Key := u_funcoes.ApenasNumeros(Key);
end;

procedure TFrm_Produto.cxDBTextEdit50KeyDown(Sender: TObject;

  var Key: Word; Shift: TShiftState);
begin
  if (Key = vk_return) or (Key = vk_tab) then
  begin
    BtnGravar.SetFocus;
  end;
end;

procedure TFrm_Produto.cxDBTextEdit52KeyPress(Sender: TObject;

  var Key: Char);
begin
  inherited;
  Key := u_funcoes.ApenasNumeros(Key);
end;

procedure TFrm_Produto.cxDBTextEdit55KeyPress(Sender: TObject;

  var Key: Char);
begin
  inherited;
  Key := u_funcoes.ApenasNumeros(Key);
end;

procedure TFrm_Produto.cxDBTextEdit56KeyPress(Sender: TObject;

  var Key: Char);
begin
  inherited;
  Key := u_funcoes.ApenasNumeros(Key);
end;

procedure TFrm_Produto.cxDBTextEdit57KeyPress(Sender: TObject;

  var Key: Char);
begin
  inherited;
  Key := u_funcoes.ApenasNumeros(Key);
end;

procedure TFrm_Produto.cxDBTextEdit59KeyPress(Sender: TObject;

  var Key: Char);
begin
  inherited;
  Key := u_funcoes.ApenasNumeros(Key);
end;

procedure TFrm_Produto.cxDBTextEdit8KeyPress(Sender: TObject;

  var Key: Char);
begin
  inherited;
  Key := u_funcoes.ApenasNumeros(Key);
end;

procedure TFrm_Produto.cxTabSheet1Show(Sender: TObject);
begin
  Panel1.hide;
  cbTipoItemConsulta.EditValue := '00';
  ConsultarProdutos;
  cbFiltro.itemindex := 2;
  edtBuscar.SetFocus;
  lblprodcads.Caption := TProduto.CREATE.countAll;
end;

procedure TFrm_Produto.cxTabSheet3Show(Sender: TObject);
begin
  Panel1.hide;
end;

procedure TFrm_Produto.cxTabSheet4Show(Sender: TObject);
begin
  Panel1.show;
  if BtnIncluir.Visible then
    BtnIncluir.SetFocus;
end;

procedure TFrm_Produto.cxTabSheet5Show(Sender: TObject);
begin
  Panel1.show;
  SQL_CSTICMS.Active := true;
  SQL_ORIGEM_ICMS.Active := true;

end;

procedure TFrm_Produto.PROD_ESTOQMINChange(Sender: TObject);
begin
  if PROD_ESTOQMIN.Text <> '' then
    DBEdit13.OnChange(DBEdit13);

end;

procedure TFrm_Produto.PROD_ESTOQMINClick(Sender: TObject);
begin
  PROD_ESTOQMIN.SelectAll;
end;

procedure TFrm_Produto.PROD_ESTOQMINKeyDown(Sender: TObject;

  var Key: Word; Shift: TShiftState);
begin
  if (Key = vk_return) or (Key = vk_tab) then
    s.SetFocus;
end;

procedure TFrm_Produto.PROD_ESTOQMINKeyPress(Sender: TObject;

  var Key: Char);
begin
  inherited;
  Key := u_funcoes.ApenasNumeros(Key);
end;

procedure TFrm_Produto.dbcsticmsClick(Sender: TObject);
begin
  RegraTributacao;
end;

procedure TFrm_Produto.DBEdit12Exit(Sender: TObject);
begin
  CodBalancaCheck(DBEdit12);
end;

procedure TFrm_Produto.DBEdit12KeyPress(Sender: TObject;

  var Key: Char);
begin
  inherited;
  Key := ApenasNumeros(Key);
end;

procedure TFrm_Produto.DBEdit13Change(Sender: TObject);
var
  value: extended;
begin
  if PROD_ESTOQMIN.Text = '' then
    value := 10
  else
    value := strtofloat(PROD_ESTOQMIN.Text);

  DBEdit13.Color := colorirestoque(DBEdit13.Text, value);
end;

procedure TFrm_Produto.DBEdit13Click(Sender: TObject);
begin
  DBEdit13.SelectAll;
end;

procedure TFrm_Produto.DBEdit13KeyDown(Sender: TObject;

  var Key: Word; Shift: TShiftState);
begin
  if Key in [vk_tab, vk_return] then
    PROD_ESTOQMIN.SetFocus;
end;

procedure TFrm_Produto.DBEdit13KeyPress(Sender: TObject;

  var Key: Char);
begin
  if not TEnv.Tuser.isGerente then
  begin
    tdialogs.wnAlerta('Estoque', 'Você não tem permissão para movimentar estoque.');
    Key := #0;
  end
  else
  begin
    inherited;
    Key := ApenasNumeros(Key);
  end;
end;

procedure TFrm_Produto.DBEdit14Exit(Sender: TObject);
begin
  CodBalancaCheck(DBEdit14);
end;

procedure TFrm_Produto.DBEdit14KeyPress(Sender: TObject;

  var Key: Char);
begin
  inherited;
  Key := ApenasNumeros(Key);
end;

procedure TFrm_Produto.DBEdit15Exit(Sender: TObject);
begin
  CodBalancaCheck(DBEdit15);
end;

procedure TFrm_Produto.DBEdit15KeyPress(Sender: TObject;

  var Key: Char);
begin
  inherited;
  Key := ApenasNumeros(Key);
end;

procedure TFrm_Produto.DBEdit16KeyDown(Sender: TObject;

  var Key: Word; Shift: TShiftState);
begin
  if Key in [vk_tab, vk_return] then
    PRECO_CUSTO.SetFocus;
end;

procedure TFrm_Produto.DBEdit1KeyPress(Sender: TObject;

  var Key: Char);
begin
  inherited;
  Key := u_funcoes.ApenasNumeros(Key);
end;

procedure TFrm_Produto.DBEdit2Exit(Sender: TObject);
var
  soma: real;
begin

  soma := SQL_PRODUTOFRETE.value + SQL_PRODUTOIMPOSTO.value + SQL_PRODUTODESP_OPERACIONAIS.value;
  SQL_PRODUTOCUSTO_MEDIO.value := (SQL_PRODUTOPRECO_CUSTO.value * soma / 100) + SQL_PRODUTOPRECO_CUSTO.value;

end;

procedure TFrm_Produto.DBEdit2KeyPress(Sender: TObject;

  var Key: Char);
begin
  inherited;
  Key := u_funcoes.ApenasNumeros(Key);
end;

procedure TFrm_Produto.CFOPCODIGOKeyPress(Sender: TObject;

  var Key: Char);
begin
  inherited;
  Key := ApenasNumeros(Key);
end;

procedure TFrm_Produto.chk_ativoClick(Sender: TObject);
begin
  edtBuscar.SetFocus;
end;

procedure TFrm_Produto.chk_diff_estoquePropertiesChange(Sender: TObject);
begin
  updateEstoque;
end;

procedure TFrm_Produto.chk_inativoClick(Sender: TObject);
begin
  edtBuscar.SetFocus;
end;

procedure TFrm_Produto.chk_todosClick(Sender: TObject);
begin
  edtBuscar.SetFocus;
end;

procedure TFrm_Produto.CodBalancaCheck(campo: TDBEdit);
var
  qry: TFDQuery;
begin
  if campo.Text <> '' then
  begin
    qry := simplequery('SELECT * FROM PRODUTO WHERE (COD_BALANCA_1 = ' + QuotedStr(campo.Text) + ' OR COD_BALANCA_2 = ' +
      QuotedStr(campo.Text) + ' OR COD_BALANCA_3 = ' + QuotedStr(campo.Text) + ') AND CODIGO <> ' + QuotedStr(dbedt_codigo.Text));
    if qry <> nil then
    begin
      wnAlerta('Código Balança', 'Código da balança ' + campo.Text + ' já está cadastrado no produto ' + slinebreak + 'Cód: ' +
        qry.FieldByName('CODIGO').AsString + ' - Descrição: ' + qry.FieldByName('PROD_DESCRICAO').AsString);
      campo.SelectAll;
      campo.SetFocus;
      qry.Destroy;
    end;
  end;
end;

function TFrm_Produto.CodBarrasRepetido: Boolean;
var
  qry: TFDQuery;
  x: string;
begin
  if (CODIGO_BARRAS.Text <> '') and (CODIGO_BARRAS.Text <> 'SEM GTIN') then
  begin
    x := 'SELECT CODIGO, PROD_DESCRICAO FROM PRODUTO WHERE (CODIGO_BARRAS IS NOT NULL AND CODIGO_BARRAS <> ' + QuotedStr(emptystr) +
      ') AND CODIGO_BARRAS =' + QuotedStr(CODIGO_BARRAS.Text) + ' AND CODIGO  <>' + dbedt_codigo.Text;
    qry := simplequery(x);
    if qry <> nil then
    begin
      result := true;
      wnAlerta('Cadastrar Produto', 'Códgo de Barras já cadastrado no produto: ' + slinebreak + 'Cód: ' + qry.Fields[0].AsString +
        slinebreak + 'Descrição: ' + qry.Fields[1].AsString, taLeftJustify, 12);
      CODIGO_BARRAS.SelectAll;
      CODIGO_BARRAS.SetFocus;
    end
    else
      result := false;
  end;
end;

procedure TFrm_Produto.CODIGO_BARRASKeyDown(Sender: TObject;

  var Key: Word; Shift: TShiftState);
begin
  if (Key = vk_return) or (Key = vk_tab) then
  begin
    PROD_DESCRICAO.SetFocus;
  end;
end;

procedure TFrm_Produto.CODIGO_BARRASKeyPress(Sender: TObject;

  var Key: Char);
begin
  inherited;
  Key := u_funcoes.ApenasNumeros(Key);
end;

procedure TFrm_Produto.CODIGO_BARRASKeyUp(Sender: TObject;

  var Key: Word; Shift: TShiftState);
begin
  if isKeyNumLetter(Key) and (length(CODIGO_BARRAS.Text) > 6) then
    CodBarrasRepetido;
end;

procedure TFrm_Produto.cod_combKeyPress(Sender: TObject;

  var Key: Char);
begin
  inherited;
  Key := u_funcoes.ApenasNumeros(Key);
end;

procedure TFrm_Produto.consultaparacadastro;
begin
  u_funcoes.ConsultarCadastros(SQL_PRODUTO, QuotedStr(inttostr(SQL_LISTACODIGO.value) + '%'), 'PRODUTO', 'CODIGO', 'pcodigo', '', '',
    '', 0, 0);
  CarregarDadosInternos;
  cxTabSheet4.show;
  BtnAlterar.Click;
end;

procedure TFrm_Produto.PROD_MAXDESC_ATACClick(Sender: TObject);
begin
  PROD_MAXDESC_ATAC.SelectAll;
end;

procedure TFrm_Produto.PROD_MAXDESC_ATACKeyDown(Sender: TObject;

  var Key: Word; Shift: TShiftState);
begin
  if Key in [vk_return, vk_tab] then
  begin
    cxTabSheet5.show;
    dbcsticms.SetFocus;
  end;
end;

procedure TFrm_Produto.PROD_MAXDESC_DISTClick(Sender: TObject);
begin
  PROD_MAXDESC_DIST.SelectAll;
end;

procedure TFrm_Produto.PROD_MAXDESC_DISTKeyDown(Sender: TObject;

  var Key: Word; Shift: TShiftState);
begin
  if (Key = vk_return) or (Key = vk_tab) then
  begin
    PROD_MAXDESC_ATAC.SetFocus;
  end;
end;

procedure TFrm_Produto.ConsultarProdutos;
var
  tp_item, fld, sql_x: string;
begin
  tp_item := cbTipoItemConsulta.EditValue;

  if edtBuscar.Text <> '' then
  begin
    fld := TFunctions.ifthen(cbFiltro.SelectedItem, [0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11], ['codigo', 'codigo_barras', 'descricao_produto',
      'PROD_CDUNIDADE', 'PROD_PRECO_VAR', 'valor_promocional_varejo', 'grupo', 'marca', 'icms_cst', 'ncm', 'csosn',
      'PROD_REFERENCIASFABRICA']);
    sql_x := 'select * from produto where tipo_item = ' + tp_item + ' and ' + fld + ' like "%' + TFunctions.replace(edtBuscar.Text, '"') +
      '%" limit 500';
  end
  else
    sql_x := 'select * from produto where tipo_item = ' + tp_item + ' limit 500';

  WITH SQL_LISTA DO
  begin
    Close;
    sql.Clear;
    sql.Add(sql_x);
    Open;
    fetchall;
    QtdeItens.Caption := inttostr(RecordCount);
  end;

end;

procedure TFrm_Produto.CSOSNKeyDown(Sender: TObject;

  var Key: Word; Shift: TShiftState);
begin
  if Key = vk_return then
    if CSOSN.Text <> '' then
      PreencherCSOSN(CSOSN.Text);
end;

procedure TFrm_Produto.CSOSNKeyPress(Sender: TObject;

  var Key: Char);
begin
  inherited;
  Key := ApenasNumeros(Key);
end;

procedure TFrm_Produto.CSOSNKeyUp(Sender: TObject;

  var Key: Word; Shift: TShiftState);
begin
  CSOSN.Text := RemoverEspacoEmBranco(RemoverCaracteresEspeciais(CSOSN.Text));
end;

procedure TFrm_Produto.CUSTO_MEDIOClick(Sender: TObject);
begin
  CUSTO_MEDIO.SelStart := 0;
  CUSTO_MEDIO.SelectAll;
end;

procedure TFrm_Produto.CUSTO_MEDIOKeyDown(Sender: TObject;

  var Key: Word; Shift: TShiftState);
begin
  if (Key = vk_return) or (Key = vk_tab) then
    MARGEM_LUCRO.SetFocus;
end;

procedure TFrm_Produto.carregar_faixa;
begin
  if not ansimatchstr(dbedt_codigo.Text, [emptystr, '0']) then
  begin
    SQL_PRECO_FAIXA.Close;
    SQL_PRECO_FAIXA.ParamByName('pid_prod').value := dbedt_codigo.Text;
    SQL_PRECO_FAIXA.Open;
  end
  else
    SQL_PRECO_FAIXA.Close;
end;

procedure TFrm_Produto.carregar_nat_op;
begin
  SQL_NAT_OP.Active := false;
  SQL_NAT_OP.Active := true;
end;

procedure TFrm_Produto.cbFiltroPropertiesEditValueChanged(Sender: TObject);
begin
  ConsultarProdutos
end;

procedure TFrm_Produto.cbTipoItemConsultaPropertiesEditValueChanged(Sender: TObject);
begin
  ConsultarProdutos
end;

procedure TFrm_Produto.cb_tipoKeyDown(Sender: TObject;

  var Key: Word; Shift: TShiftState);
begin
  if Key in [vk_return, vk_tab] then
  begin
    cb_tipo.ValidateEdit(false);
    if cb_tipo.EditingValue <> null then
      btn_cad_faixa.Click;
  end;
end;

procedure TFrm_Produto.PROD_DESCRICAOExit(Sender: TObject);
begin
  PROD_DESCRICAO.Text := RemoveEspaco(PROD_DESCRICAO.Text);
end;

procedure TFrm_Produto.PROD_DESCRICAOKeyDown(Sender: TObject;

  var Key: Word; Shift: TShiftState);
begin
  if (Key = vk_return) or (Key = vk_tab) then
  begin
    PROD_REFERENCIASFABRICA.SetFocus;
  end;
end;

procedure TFrm_Produto.DESP_OPERACIONAISClick(Sender: TObject);
begin
  DESP_OPERACIONAIS.SelStart := 0;
  DESP_OPERACIONAIS.SelectAll;
end;

procedure TFrm_Produto.DESP_OPERACIONAISKeyDown(Sender: TObject;

  var Key: Word; Shift: TShiftState);
begin
  if (Key = vk_return) or (Key = vk_tab) then
  begin
    CUSTO_MEDIO.SetFocus;
  end;
end;

procedure TFrm_Produto.duplicar_cadastroClick(Sender: TObject);
begin
  SQL_PRODUTO.Active := false;
  SQL_PRODUTO.Active := true;
  BtnCancelar.Click;
  BtnIncluir.Click;
  Duplicarcadastro(SQL_PRODUTO, 'PRODUTO', SQL_LISTACODIGO.Text);
  CODIGO_BARRAS.Field.Clear;
  cxTabSheet4.show;
end;

procedure TFrm_Produto.Edit1KeyDown(Sender: TObject;

  var Key: Word; Shift: TShiftState);
begin
  if (Key = vk_return) or (Key = vk_tab) then
  begin
    CODIGO_BARRAS.SetFocus;
  end;
end;

procedure TFrm_Produto.Edit1KeyPress(Sender: TObject;

  var Key: Char);
begin
  inherited;
  Key := u_funcoes.ApenasNumeros(Key);
end;

procedure TFrm_Produto.edtBuscarKeyUp(Sender: TObject;

  var Key: Word; Shift: TShiftState);
begin
  if isKeyNumLetter(Key) then
    ConsultarProdutos;
end;

procedure TFrm_Produto.edt_cestKeyPress(Sender: TObject;

  var Key: Char);
begin
  inherited;
  Key := ApenasNumeros(Key);
end;

procedure TFrm_Produto.edt_cestKeyUp(Sender: TObject;

  var Key: Word; Shift: TShiftState);
begin
  edt_cest.Text := RemoverEspacoEmBranco(RemoverCaracteresEspeciais(edt_cest.Text));
end;

procedure TFrm_Produto.edt_generoKeyDown(Sender: TObject;

  var Key: Word; Shift: TShiftState);
begin
  if (Key = vk_return) or (Key = vk_tab) then
  begin
    aliq_lucro_st.SetFocus;
  end;
end;

procedure TFrm_Produto.edt_generoKeyPress(Sender: TObject;

  var Key: Char);
begin
  inherited;
  Key := u_funcoes.ApenasNumeros(Key);
end;

procedure TFrm_Produto.edt_leisKeyDown(Sender: TObject;

  var Key: Word; Shift: TShiftState);
begin
  if (Key = vk_return) or (Key = vk_tab) then
  begin
    edt_genero.SetFocus;
  end;
end;

procedure TFrm_Produto.edt_ncmKeyDown(Sender: TObject;

  var Key: Word; Shift: TShiftState);
begin
  if (Key = vk_return) or (Key = vk_tab) then
  begin
    edt_anp.SetFocus;
  end;
end;

procedure TFrm_Produto.edt_precoExit(Sender: TObject);
begin
  if edt_preco.Text <> emptystr then
    edt_preco.Text := formatarmoeda(TFunctions.replace(edt_preco.Text, 'R$', VARDOUBLE));
end;

procedure TFrm_Produto.edt_precoKeyDown(Sender: TObject;

  var Key: Word; Shift: TShiftState);
begin
  if Key in [vk_return, vk_tab] then
    cb_tipo.SetFocus;
end;

procedure TFrm_Produto.edt_qtde_maxKeyDown(Sender: TObject;

  var Key: Word; Shift: TShiftState);
begin
  if Key in [vk_return, vk_tab] then
    edt_preco.SetFocus;
end;

procedure TFrm_Produto.edt_qtde_minExit(Sender: TObject);
begin
  if edt_qtde_min.Text <> emptystr then
    edt_qtde_min.Text := floattostr(formatarmoeda(strtofloat(edt_qtde_min.Text), VARDOUBLE));
end;

procedure TFrm_Produto.edt_qtde_minKeyDown(Sender: TObject;

  var Key: Word; Shift: TShiftState);
begin
  if Key in [vk_return, vk_tab] then
    edt_preco.SetFocus;
end;

procedure TFrm_Produto.edt_qtde_minKeyPress(Sender: TObject;

  var Key: Char);
begin
  inherited;
  Key := ApenasNumeros(Key);
end;

procedure TFrm_Produto.PROD_COMISSAO_EXT_ATACClick(Sender: TObject);
begin
  PROD_COMISSAO_EXT_ATAC.SelectAll;
end;

procedure TFrm_Produto.PROD_COMISSAO_EXT_ATACKeyDown(Sender: TObject;

  var Key: Word; Shift: TShiftState);
begin
  if Key in [vk_return, vk_tab] then
    DBEdit13.SetFocus;
end;

procedure TFrm_Produto.PROD_COMISSAO_EXT_ATACKeyPress(Sender: TObject;

  var Key: Char);
begin

  inherited;
  Key := u_funcoes.ApenasNumeros(Key);

end;

procedure TFrm_Produto.PROD_COMISSAO_EXT_DISTClick(Sender: TObject);
begin
  PROD_COMISSAO_EXT_DIST.SelectAll;
end;

procedure TFrm_Produto.PROD_COMISSAO_EXT_DISTKeyDown(Sender: TObject;

  var Key: Word; Shift: TShiftState);
begin
  if (Key = vk_return) or (Key = vk_tab) then
  begin
    PROD_COMISSAO_ATAC.SetFocus;
  end;
end;

procedure TFrm_Produto.PROD_COMISSAO_EXT_DISTKeyPress(Sender: TObject; var Key: Char);
begin

  inherited;
  Key := u_funcoes.ApenasNumeros(Key);

end;

procedure TFrm_Produto.PROD_COMISSAO_EXT_VARClick(Sender: TObject);
begin
  PROD_COMISSAO_EXT_VAR.SelectAll;
end;

procedure TFrm_Produto.PROD_COMISSAO_EXT_VARKeyDown(Sender: TObject;

  var Key: Word; Shift: TShiftState);
begin
  if (Key = vk_return) or (Key = vk_tab) then
  begin
    PROD_COMISSAO_DIST.SetFocus;
  end;
end;

procedure TFrm_Produto.PROD_COMISSAO_EXT_VARKeyPress(Sender: TObject; var Key: Char);
begin
  inherited;
  Key := u_funcoes.ApenasNumeros(Key);
end;

procedure TFrm_Produto.ex_ipiKeyPress(Sender: TObject; var Key: Char);
begin
  inherited;
  Key := u_funcoes.ApenasNumeros(Key);
end;

procedure TFrm_Produto.FAMILIAKeyDown(Sender: TObject;

  var Key: Word; Shift: TShiftState);
begin
  if (Key = vk_return) or (Key = vk_tab) then
  begin
    GRUPO.SetFocus;
  end;
end;

procedure TFrm_Produto.FormClose(Sender: TObject;

  var Action: TCloseAction);
begin
  execquery('update parametros_sistema set prod_difer_estoque = ?',
    [TFunctions.ifthen(chk_diff_estoque.Checked, [true, false], ['1', '0'])]);
  Action := cafree;
  self := nil;
end;

procedure TFrm_Produto.FormKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
begin
  TeclasAtalho(Key, [VK_F1, VK_F2, VK_F3, VK_F4, VK_F5, VK_F6, VK_F7], [BtnIncluir, BtnGravar, BtnCancelar, BtnAlterar, btnlocalizacao,
    btnestoque]);
end;

procedure TFrm_Produto.FormShow(Sender: TObject);
begin
     cxPageControl1.ActivePageIndex := 0;
  chk_diff_estoque.Checked := (simplequery('select prod_difer_estoque from parametros_sistema').Fields[0].AsString = m_true);
  deletar_prod_preco_faixa := false;
  if consultarultimo then
    LimparCampos;
  CarregarDadosInternos;
end;

procedure TFrm_Produto.FRETEClick(Sender: TObject);
begin
  FRETE.SelStart := 0;
  FRETE.SelectAll;
end;

procedure TFrm_Produto.FRETEKeyDown(Sender: TObject;

  var Key: Word; Shift: TShiftState);
begin
  if (Key = vk_return) or (Key = vk_tab) then
  begin
    IMPOSTO.SetFocus;
  end;
end;

procedure TFrm_Produto.GRUPOKeyDown(Sender: TObject;

  var Key: Word; Shift: TShiftState);
begin
  if (Key = vk_return) or (Key = vk_tab) then
  begin
    SUBGRUPO.SetFocus;
  end;
end;

procedure TFrm_Produto.IMPOSTOClick(Sender: TObject);
begin
  IMPOSTO.SelStart := 0;
  IMPOSTO.SelectAll;
end;

procedure TFrm_Produto.IMPOSTOKeyDown(Sender: TObject;

  var Key: Word; Shift: TShiftState);
begin
  if (Key = vk_return) or (Key = vk_tab) then
  begin
    DESP_OPERACIONAIS.SetFocus;
  end;
end;

procedure TFrm_Produto.ImprimirEtiqueta1Click(Sender: TObject);
begin
     if not TFunctions.CheckOpen(frm_etiquetas) then
        frm_etiquetas := tfrm_etiquetas.Create(nil);
     frm_etiquetas.pgMaster.ActivePage := frm_etiquetas.tabGerar;
     //frm_etiquetas.cxTabSheet2.TabVisible := False;
     //frm_etiquetas.btnSearch.Enabled := False;

     frm_etiquetas.produto := tproduto.create(SQL_LISTACODIGO.AsInteger);
     frm_etiquetas.preencher_dados_produto2;
     frm_etiquetas.showmodal;
end;

procedure TFrm_Produto.MARCAKeyDown(Sender: TObject;

  var Key: Word; Shift: TShiftState);
begin
  if (Key = vk_return) or (Key = vk_tab) then
  begin
    FAMILIA.SetFocus;
  end;
end;

procedure TFrm_Produto.MARGEM_LUCROClick(Sender: TObject);
begin
  MARGEM_LUCRO.SelStart := 0;
  MARGEM_LUCRO.SelectAll;
end;

procedure TFrm_Produto.MARGEM_LUCROExit(Sender: TObject);
var
  resultado: real;
begin
  resultado := SQL_PRODUTOCUSTO_MEDIO.value * SQL_PRODUTOMARGEM_LUCRO.value / 100;
  SQL_PRODUTOPROD_PRECO_VAR.value := SQL_PRODUTOCUSTO_MEDIO.value + resultado;
end;

procedure TFrm_Produto.MARGEM_LUCROKeyDown(Sender: TObject;

  var Key: Word; Shift: TShiftState);
begin
  if (Key = vk_return) or (Key = vk_tab) then
  begin
    MARGEM_L_DISTRIBUIDOR.SetFocus;
  end;
end;

procedure TFrm_Produto.MARGEM_L_ATACADOClick(Sender: TObject);
begin
  MARGEM_L_ATACADO.SelStart := 0;
  MARGEM_L_ATACADO.SelectAll;
end;

procedure TFrm_Produto.MARGEM_L_ATACADOExit(Sender: TObject);
var
  resultado: real;
begin
  resultado := SQL_PRODUTOCUSTO_MEDIO.value * SQL_PRODUTOMARGEM_L_ATACADO.value / 100;
  SQL_PRODUTOPROD_PRECO_ATAC.value := SQL_PRODUTOCUSTO_MEDIO.value + resultado;
end;

procedure TFrm_Produto.MARGEM_L_ATACADOKeyDown(Sender: TObject;

  var Key: Word; Shift: TShiftState);
begin
  if (Key = vk_return) or (Key = vk_tab) then
    PROD_PRECO_VAR.SetFocus;
end;

procedure TFrm_Produto.MARGEM_L_DISTRIBUIDORClick(Sender: TObject);
begin
  MARGEM_L_DISTRIBUIDOR.SelStart := 0;
  MARGEM_L_DISTRIBUIDOR.SelectAll;
end;

procedure TFrm_Produto.MARGEM_L_DISTRIBUIDORExit(Sender: TObject);
var
  resultado: real;
begin
  resultado := SQL_PRODUTOCUSTO_MEDIO.value * SQL_PRODUTOMARGEM_L_DISTRIBUIDOR.value / 100;
  SQL_PRODUTOPROD_PRECO_DIST.value := SQL_PRODUTOCUSTO_MEDIO.value + resultado;
end;

procedure TFrm_Produto.MARGEM_L_DISTRIBUIDORKeyDown(Sender: TObject;

  var Key: Word; Shift: TShiftState);
begin
  if (Key = vk_return) or (Key = vk_tab) then
  begin
    MARGEM_L_ATACADO.SetFocus;
  end;
end;

procedure TFrm_Produto.NCMExit(Sender: TObject);
begin
  if NCM.Text = emptystr then
  begin
    mmNCM.Text := emptystr;
    edt_cest.Clear;
  end;
end;

procedure TFrm_Produto.NCMKeyPress(Sender: TObject;

  var Key: Char);
begin
  inherited;
  Key := ApenasNumeros(Key);
end;

procedure TFrm_Produto.NCMKeyUp(Sender: TObject;

  var Key: Word; Shift: TShiftState);
begin
  NCM.Text := RemoverEspacoEmBranco(RemoverCaracteresEspeciais(NCM.Text));
end;

procedure TFrm_Produto.pauta_bcKeyDown(Sender: TObject;

  var Key: Word; Shift: TShiftState);
begin
  if (Key = vk_return) or (Key = vk_tab) then
  begin
    edt_leis.SetFocus;
  end;
end;

procedure TFrm_Produto.pauta_bcKeyPress(Sender: TObject;

  var Key: Char);
begin
  inherited;
  Key := u_funcoes.ApenasNumeros(Key);
end;

procedure TFrm_Produto.pop_faixaPopup(Sender: TObject);
begin
  if not grp_faixa_preco.Enabled then
    Abort;

end;

procedure TFrm_Produto.PRECO_CUSTOClick(Sender: TObject);
begin
  PRECO_CUSTO.SelStart := 0;
  PRECO_CUSTO.SelectAll;
end;

procedure TFrm_Produto.PRECO_CUSTOKeyDown(Sender: TObject;

  var Key: Word; Shift: TShiftState);
begin
  if (Key = vk_return) or (Key = vk_tab) then
  begin
    FRETE.SetFocus;
  end;
end;

procedure TFrm_Produto.PROD_PRECO_ATACClick(Sender: TObject);
begin
  PROD_PRECO_ATAC.SelStart := 0;
  PROD_PRECO_ATAC.SelectAll;
end;

procedure TFrm_Produto.PROD_PRECO_ATACKeyDown(Sender: TObject;

  var Key: Word; Shift: TShiftState);
begin
  if Key in [vk_return, vk_tab] then
    PROD_COMISSAO_VAR.SetFocus;
end;

procedure TFrm_Produto.PROD_PRECO_ATACKeyPress(Sender: TObject;

  var Key: Char);
begin
  inherited;
  Key := ApenasNumeros(Key);
end;

procedure TFrm_Produto.PROD_PRECO_DISTClick(Sender: TObject);
begin
  PROD_PRECO_DIST.SelStart := 0;
  PROD_PRECO_DIST.SelectAll;
end;

procedure TFrm_Produto.PROD_PRECO_DISTKeyDown(Sender: TObject;

  var Key: Word; Shift: TShiftState);
begin
  if (Key = vk_return) or (Key = vk_tab) then
  begin
    PROD_PRECO_ATAC.SetFocus;
  end;
end;

procedure TFrm_Produto.PROD_PRECO_VARClick(Sender: TObject);
begin
  PROD_PRECO_VAR.SelStart := 0;
  PROD_PRECO_VAR.SelectAll;
end;

procedure TFrm_Produto.PROD_PRECO_VARKeyDown(Sender: TObject;

  var Key: Word; Shift: TShiftState);
begin
  if (Key = vk_return) or (Key = vk_tab) then
  begin
    PROD_PRECO_DIST.SetFocus;
  end;
end;

procedure TFrm_Produto.preencherANP(value: string);
var
  xANP: TANP;
begin
  if value = emptystr then
    LimparANP
  else
  begin
    try
      xANP := TANP.CREATE(strtoint(value));
      edt_anp.Text := value;
      if SQL_PRODUTO.State in [dsEdit, dsInsert] then
        edt_anp.Field.Text := value;
      lbl_anp.Caption := xANP.descricao;
    except
      on e: exception do
        tdialogs.wnAlerta('Consultar ANP', slinebreak + e.Message, 15);
    end;
  end;
end;

procedure TFrm_Produto.PreencherCFOP(icms_cst: string);
var
  cfop_x: string;
begin
  if icms_cst <> '' then
  begin
    if icms_cst = '60' then
      cfop_x := 'CFOP_ST'
    else
      cfop_x := 'CFOP_TI';

    with SQL_CFOP_NATOP do
    begin
      Close;
      Open('SELECT c.descricao as CFOP, no.DESCRICAO FROM NATUREZA_OPERACAO no join cfop c on c.codigo = no.' + cfop_x + ' where ' + cfop_x
        + ' <> 0 order by no.id');
      Refresh;
    end;
  end
  else
    SQL_CFOP_NATOP.Close;

end;

procedure TFrm_Produto.PreencherCSOSN(value: string);
var
  xCSOSN: TCsosn;
begin
  if value = emptystr then
    limparcsosn
  else
  begin
    try
      xCSOSN := TCsosn.CREATE(value);
      CSOSN.Text := value;
      if SQL_PRODUTO.State in [dsEdit, dsInsert] then
        CSOSN.Field.Text := value;
      lbl_csosn.Caption := xCSOSN.descricao;
    except
      on e: exception do
        tdialogs.wnAlerta('Consultar CSOSN', slinebreak + e.Message, 15);
    end;
  end;
end;

procedure TFrm_Produto.PreencherNCM(value: string);
var
  xNCM: tNCM;
begin
  if value = emptystr then
    LimparNCM
  else
  begin
    try
      xNCM := tNCM.CREATE(value);
      if xNCM <> nil then
      begin
        mmNCM.Text := xNCM.descricao;
        edt_cest.Text := xNCM.CEST;
        if SQL_PRODUTO.State in [dsEdit, dsInsert] then
          edt_cest.Field.Text := xNCM.CEST;
        if edt_cest.Text = '0' then
        begin
          mmNCM.Clear;
          edt_cest.Clear;
        end;
        xNCM.Destroy;
      end;
    except
      on e: exception do
        tdialogs.wnAlerta('Consultar NCM', slinebreak + e.Message, 15);
    end;
  end;
end;

procedure TFrm_Produto.prodpromo_terminoKeyDown(Sender: TObject;

  var Key: Word; Shift: TShiftState);
begin
  if (Key = vk_return) or (Key = vk_tab) then
  begin
    cxTabSheet5.show;
  end;
end;

procedure TFrm_Produto.PROD_REFERENCIASFABRICAKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
begin
  if (Key = vk_return) or (Key = vk_tab) then
  begin
    btn_familia.Click;
  end;
end;

procedure TFrm_Produto.PROD_REFERENCIASFABRICAKeyUp(Sender: TObject;
  var Key: Word; Shift: TShiftState);
begin
  if key <> VK_RETURN then
    if length(PROD_REFERENCIASFABRICA.Text) > 0 then
       RefFabricanteRepetido;
end;

function TFrm_Produto.RefFabricanteRepetido(foco: Boolean = true): Boolean;
var
  qry: TFDQuery;
  x: string;
begin
  if PROD_REFERENCIASFABRICA.Text <> '' then
  begin
    x := 'SELECT CODIGO, PROD_DESCRICAO FROM PRODUTO WHERE (PROD_REFERENCIASFABRICA IS NOT NULL AND PROD_REFERENCIASFABRICA <> ' + QuotedStr(emptystr) +
      ') AND PROD_REFERENCIASFABRICA =' + QuotedStr(PROD_REFERENCIASFABRICA.Text) + ' AND CODIGO  <>' + dbedt_codigo.Text;
    qry := simplequery(x);
    if qry <> nil then
    begin
      result := true;
      wnAlerta('Cadastrar Produto', 'Referencia do fabricante já cadastrado no produto: ' + slinebreak + 'Cód: ' + qry.Fields[0].AsString +
        slinebreak + 'Descrição: ' + qry.Fields[1].AsString, taLeftJustify, 12);
      if foco then
      begin
           PROD_REFERENCIASFABRICA.SelectAll;
           PROD_REFERENCIASFABRICA.SetFocus;
      end;
    end
    else
      result := false;
  end;
end;

procedure TFrm_Produto.RegraTributacao;
var
  qry_tmp: TFDQuery;
  CFOP_PADRAO, CFOP_PADRAO_60: string;
  CRT, CST_ICMS: Integer;
  PROD_NFe_N16_pICMS_PARAMETROS: extended;
begin
  SQL_DADOS_ROTINAS.Active := false;
  SQL_DADOS_ROTINAS.Active := true;
  SQL_CSTPIS.Active := false;
  SQL_CSTCOFINS.Active := false;
  SQL_CSTPIS.Active := true;
  SQL_CSTCOFINS.Active := true;

  qry_tmp := simplequery('SELECT CODIGO_REGIME_TRIBUTARIO from empresa');
  if qry_tmp <> nil then
    if (qry_tmp.FieldByName('CODIGO_REGIME_TRIBUTARIO').AsString = emptystr) then
    begin
      wnAlerta('Cadastro de Produto',
        'Nenhuma empresa foi identificada. Por favor, cadastre uma empresa para prosseguir com o cadastro de produtos.');
      exit;
    end
    else
      CRT := strtoint(qry_tmp.FieldByName('CODIGO_REGIME_TRIBUTARIO').AsString);

  if (SQL_DADOS_ROTINASaliq_imcs.Text = '') then
  begin
    wnAlerta('Cadastro de Produto',
      'Nenhuma alíquota padrão de ICMS foi identificada. Por favor, cadastre uma alíquota padrão na tela de parâmetros.');
    exit;
  end
  else
    PROD_NFe_N16_pICMS_PARAMETROS := SQL_DADOS_ROTINASaliq_imcs.value;
  CST_ICMS := strtoint(dbcsticms.EditValue);
  PreencherCFOP(inttostr(CST_ICMS));
  case CRT of
    1: { SIMPLES NACIONAL }
      begin
        LimparCFOP_CSOSN;
        case CST_ICMS of
          40: { ISENTA }
            begin
              PreencherCSOSN('103');
              PROD_NFe_N16_pICMS.Field.Text := '0';
              cstpis.EditValue := '99';
              cstcofins.EditValue := '99';
              exit;
            end;
          41: { Não TRIBUTADA }
            begin
              PreencherCSOSN('102');
              PROD_NFe_N16_pICMS.Field.Text := '0';
              cstpis.EditValue := '99';
              cstcofins.EditValue := '99';
              exit;
            end;
          60: { SUBSTITUIÇÃO }
            begin
              PreencherCSOSN('500');
              PROD_NFe_N16_pICMS.Field.Text := '0';
              cstpis.EditValue := '99';
              cstcofins.EditValue := '99';
              exit;
            end;
        end;
      end; { FIM SIMPLES NACIONAL }
    2: { SIMPLES NACIONAL COM SUBLIMITE }
      begin
        LimparCFOP_CSOSN;
        case CST_ICMS of
          00: { TRIBUTADO }
            begin
              PreencherCSOSN('102');
              PROD_NFe_N16_pICMS.Field.Text := floattostr(PROD_NFe_N16_pICMS_PARAMETROS);
              cstpis.EditValue := '99';
              cstcofins.EditValue := '99';
              exit;
            end;
          40: { ISENTA }
            begin
              PreencherCSOSN('103');
              PROD_NFe_N16_pICMS.Field.Text := '0';
              cstpis.EditValue := '99';
              cstcofins.EditValue := '99';
              exit;
            end;
          60: { SUBSTITUIÇÃO }
            begin
              PreencherCSOSN('500');
              PROD_NFe_N16_pICMS.Field.Text := '0';
              cstpis.EditValue := '99';
              cstcofins.EditValue := '99';
              exit;
            end;
        end;
      end;
    3: { REGIME NORMAL }
      begin
        LimparCFOP_CSOSN;
        case CST_ICMS of
          00: { TRIBUTADO }
            begin
              PreencherCSOSN('102');
              PROD_NFe_N16_pICMS.Field.Text := floattostr(PROD_NFe_N16_pICMS_PARAMETROS);
              cstpis.EditValue := '01';
              cstcofins.EditValue := '01';
              exit;
            end;
          40: { ISENTA }
            begin
              PreencherCSOSN('103');
              PROD_NFe_N16_pICMS.Field.Text := '0';
              cstpis.EditValue := '99';
              cstcofins.EditValue := '99';
              exit;
            end;
          60: { SUBSTITUIÇÃO }
            begin
              PreencherCSOSN('500');
              PROD_NFe_N16_pICMS.Field.Text := '0';
              cstpis.EditValue := '08';
              cstcofins.EditValue := '08';
              exit;
            end;
        end;
      end;
  end;
end;

procedure TFrm_Produto.SUBGRUPOKeyDown(Sender: TObject;

  var Key: Word; Shift: TShiftState);
begin
  if (Key = vk_return) or (Key = vk_tab) then
    PROD_CDUNIDADE.SetFocus;

end;

procedure TFrm_Produto.tbViewCellDblClick(Sender: TcxCustomGridTableView; ACellViewInfo: TcxGridTableDataCellViewInfo;
  AButton: TMouseButton; AShift: TShiftState; var AHandled: Boolean);
begin
  consultaparacadastro;

end;

procedure TFrm_Produto.tbViewCustomDrawCell(Sender: TcxCustomGridTableView; ACanvas: TcxCanvas; AViewInfo: TcxGridTableDataCellViewInfo;
  var ADone: Boolean);
var
  value, est_min: variant;
begin

  if chk_diff_estoque.Checked then
  begin
    est_min := tbView.ViewData.Records[AViewInfo.GridRecord.Index].Values[tbViewPROD_ESTOQMIN.Index];
    est_min := varastype(TFunctions.ifthen(est_min = System.Variants.null, '10', est_min), VARDOUBLE);

    value := tbView.ViewData.Records[AViewInfo.GridRecord.Index].Values[tbViewPROD_SALDO.Index];
    value := varastype(TFunctions.ifthen(value = System.Variants.null, '0', value), varstring);

    ACanvas.Font.Color := colorirestoque(value, est_min);
  end;

  TFunctions.stripedGrid(ACanvas, AViewInfo);

end;

procedure TFrm_Produto.tbViewKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
begin
  if Key = vk_return then
    consultaparacadastro;
end;

procedure TFrm_Produto.PROD_CDUNIDADEKeyDown(Sender: TObject;

  var Key: Word; Shift: TShiftState);
begin
  if Key in [vk_return, vk_tab] then
    PRECO_CUSTO.SetFocus;
end;

procedure TFrm_Produto.updateEstoque;
begin
  gdProds.Repaint;

  if not(SQL_LISTA.State in [dsInactive]) then
  begin
    tbView.DataController.RefreshExternalData;
    tbView.DataController.Refresh;
  end;
end;

procedure TFrm_Produto.cxDBTextEdit60KeyPress(Sender: TObject;

  var Key: Char);
begin
  inherited;
  Key := u_funcoes.ApenasNumeros(Key);
end;

procedure TFrm_Produto.cxDBTextEdit61KeyPress(Sender: TObject;

  var Key: Char);
begin
  inherited;
  Key := u_funcoes.ApenasNumeros(Key);
end;

end.
Trocou PROD_UNIDADE por PROD_UNIDADE : automaticamente em 16/06/2020 10:10
Trocou PROD_UNIDADE por PROD_UNIDADE : automaticamente em 16/06/2020 10:21
Trocou UNIDADE_MEDIDA por PROD_UNIDADE : automaticamente em 16/06/2020 11:02
Trocou INFO_ADICIONAIS por PROD_DETALHES : automaticamente em 16/06/2020 12:06
Trocou PROD_REFERENCIASFABRICA por PROD_REFERENCIASFABRICA : automaticamente em 16/06/2020 12:36
Trocou REFERENCIA_FABRICANTE por PROD_REFERENCIASFABRICA : automaticamente em 16/06/2020 14:04
Trocou PROD_UNIDADE por PROD_CDUNIDADE : automaticamente em 16/06/2020 17:06
Trocou DESCONTO_MAXIMO por PROD_MAXDESC : automaticamente em 16/06/2020 22:23
Trocou DESCONTO_M_VAREJO por PROD_MAXDESC_VAR : automaticamente em 16/06/2020 22:27
Trocou DESCONTO_M_ATACADO por PROD_MAXDESC_ATAC : automaticamente em 16/06/2020 22:31
Trocou DESCONTO_M_DISTRIBUIDOR por PROD_MAXDESC_DIST : automaticamente em 16/06/2020 22:34
Trocou PAGAR_COMISSAO por PROD_COMISSAO : automaticamente em 16/06/2020 22:37
Trocou COMISSAO_BALCAO por PROD_COMISSAO_LOJA : automaticamente em 16/06/2020 22:41
Trocou BALCAO_COMISSAO_VAREJO por PROD_COMISSAO_VAR : automaticamente em 16/06/2020 22:44
Trocou BALCAO_COMISSAO_ATACADO por PROD_COMISSAO_ATAC : automaticamente em 16/06/2020 22:46
Trocou BALCAO_COMISSAO_DISTRIBUIDOR por PROD_COMISSAO_DIST : automaticamente em 16/06/2020 22:49
Trocou ESTOQUE_MINIMO por PROD_ESTOQMIN : automaticamente em 16/06/2020 22:53
Trocou COMISSAO_EXTERNA por PROD_COMISSAO_EXT : automaticamente em 17/06/2020 05:46
Trocou EXTERNA_COMISSAO_VAREJO por PROD_COMISSAO_EXT_VAR : automaticamente em 17/06/2020 05:52
Trocou EXTERNA_COMISSAO_ATACADO por PROD_COMISSAO_EXT_ATAC : automaticamente em 17/06/2020 05:55
Trocou EXTERNA_COMISSAO_DISTRIBUIDOR por PROD_COMISSAO_EXT_DIST : automaticamente em 17/06/2020 06:30
Trocou PRECO_FINAL_VAREJO por PROD_PRECO_VAR : automaticamente em 17/06/2020 06:55
Trocou PRECO_FINAL_ATACADO por PROD_PRECO_ATAC : automaticamente em 17/06/2020 06:59
Trocou PRECO_FINAL_DISTRIBUIDOR por PROD_PRECO_DIST : automaticamente em 17/06/2020 07:02
Trocou PROMO_VAREJO por PROD_PROMOCAO_VAR : automaticamente em 17/06/2020 08:40
Trocou PROMO_ATACADO por PROD_PROMOCAO_ATAC : automaticamente em 17/06/2020 08:44
Trocou PROMO_DISTRIBUIDOR por PROD_PROMOCAO_DIST : automaticamente em 17/06/2020 08:53
Trocou SALDO por @_@_@_@_@_@ : automaticamente em 17/06/2020 21:29
Trocou @_@_@_@_@_@ por PROD_SALDO : automaticamente em 17/06/2020 21:31
Trocou ALIQ_ICMS por PROD_NFe_N16_pICMS : automaticamente em 18/06/2020 07:49
Trocou REDUCAO_ICMS por PROD_NFe_N14_pRedBC : automaticamente em 18/06/2020 07:53
