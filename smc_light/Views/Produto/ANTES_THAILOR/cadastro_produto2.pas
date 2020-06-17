//Verificado automaticamente em 16/06/2020 09:29
﻿{ v 21.10.16 17:18 }
unit cadastro_produto2;

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
  TFrm_Produto2 = class(TForm)
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
    Label5: TLabel;
    Label15: TLabel;
    Label6: TLabel;
    Label8: TLabel;
    btn_und: TcxButton;
    btn_marca: TcxButton;
    PROD_DESCRICAO: TDBEdit;
    PROD_REFERENCIASFABRICA: TDBEdit;
    PROD_CDUNIDADE: TDBEdit;
    MARCA: TDBEdit;
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
    SQL_DADOS_ROTINAS: TFDQuery;
    DS_DADOS_ROTINAS: TDataSource;
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
    SQL_PRODUTOALIQ_ICMS: TBCDField;
    SQL_PRODUTOCODIGO_FORNECEDOR: TIntegerField;
    SQL_PRODUTOQUANT_MINI_VAREJO_P: TBCDField;
    SQL_PRODUTOQUANT_MINI_ATACADO_P: TBCDField;
    SQL_PRODUTOQUANT_MINI_DISTRIBUIDOR_P: TBCDField;
    SQL_PRODUTOQUANT_MINI_VAREJO_Q: TBCDField;
    SQL_PRODUTOQUANT_MINI_ATACADO_Q: TBCDField;
    SQL_PRODUTOQUANT_MINI_DISTRIBUIDOR_Q: TBCDField;
    SQL_PRODUTOPRECO_FINAL_ATACADO: TBCDField;
    SQL_PRODUTOPRECO_FINAL_DISTRIBUIDOR: TBCDField;
    SQL_PRODUTOPRECO_FINAL_VAREJO: TBCDField;
    SQL_PRODUTOPROMO_VAREJO: TBCDField;
    SQL_PRODUTOPROMO_ATACADO: TBCDField;
    SQL_PRODUTOPROMO_DISTRIBUIDOR: TBCDField;
    SQL_PRODUTOVALOR_PROMOCIONAL_ATACADO: TBCDField;
    SQL_PRODUTOVALOR_PROMOCIONAL_DISTRIBUIDOR: TBCDField;
    SQL_PRODUTOVALOR_PROMOCIONAL_VAREJO: TBCDField;
    SQL_PRODUTOSALDO: TBCDField;
    SQL_PRODUTOALIQ_ICMS_SUBST: TStringField;
    SQL_PRODUTOALIQ_IPI: TStringField;
    SQL_PRODUTOMARGEM_LUCRO: TBCDField;
    SQL_PRODUTOMARGEM_L_VAREJO: TBCDField;
    SQL_PRODUTOMARGEM_L_ATACADO: TBCDField;
    SQL_PRODUTOMARGEM_L_DISTRIBUIDOR: TBCDField;
    SQL_PRODUTODESCONTO_MAXIMO: TBCDField;
    SQL_PRODUTODESCONTO_M_VAREJO: TBCDField;
    SQL_PRODUTODESCONTO_M_ATACADO: TBCDField;
    SQL_PRODUTODESCONTO_M_DISTRIBUIDOR: TBCDField;
    SQL_PRODUTODESCONTO_L_VAREJO: TBCDField;
    SQL_PRODUTODESCONTO_L_ATACADO: TBCDField;
    SQL_PRODUTODESCONTO_L_DISTRIBUIDOR: TBCDField;
    SQL_PRODUTOFRETE: TBCDField;
    SQL_PRODUTOIMPOSTO: TBCDField;
    SQL_PRODUTOCUSTO_MEDIO: TBCDField;
    SQL_PRODUTOCOMISSAO_BALCAO: TBCDField;
    SQL_PRODUTOCOMISSAO_EXTERNA: TBCDField;
    SQL_PRODUTOESTOQUE_MINIMO: TStringField;
    SQL_PRODUTODESP_OPERACIONAIS: TBCDField;
    SQL_PRODUTOPAGAR_COMISSAO: TBCDField;
    SQL_DADOS_ROTINAScodigo_regime_tributario: TStringField;
    SQL_DADOS_ROTINASid: TIntegerField;
    SQL_DADOS_ROTINASaliq_imcs: TBCDField;
    SQL_DADOS_ROTINASaliq_pis_cumulativo: TBCDField;
    SQL_DADOS_ROTINASaliq_pis_nao_cumulativo: TBCDField;
    SQL_DADOS_ROTINASaliq_cofins_cumulativo: TBCDField;
    SQL_DADOS_ROTINASaliq_cofins_nao_cumulativo: TBCDField;
    SQL_DADOS_ROTINASaliq_iss: TBCDField;
    SQL_PRODUTOCOFINS_CST: TStringField;
    Label58: TLabel;
    Label63: TLabel;
    Label68: TLabel;
    SQL_DADOS_ROTINASPASTA_FTP: TStringField;
    SQL_DADOS_ROTINAScaminho_backup: TStringField;
    SQL_DADOS_ROTINAShost_name: TStringField;
    cbTipoItem: TcxDBLookupComboBox;
    SQL_PRODUTOCODIGO_ORIGEM_MERCADORIA: TIntegerField;
    SQL_PRODUTOCOD_BALANCA_1: TStringField;
    SQL_PRODUTOCOD_BALANCA_2: TStringField;
    SQL_PRODUTOCOD_BALANCA_3: TStringField;
    SQL_PRODUTOCST_IPI: TStringField;
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
    SQL_LISTAESTOQUE_MINIMO: TStringField;
    SQL_LISTAPRECO_CUSTO: TBCDField;
    SQL_LISTAFRETE: TBCDField;
    SQL_LISTAIMPOSTO: TBCDField;
    SQL_LISTADESP_OPERACIONAIS: TBCDField;
    SQL_LISTACUSTO_MEDIO: TBCDField;
    SQL_LISTAMARGEM_LUCRO: TBCDField;
    SQL_LISTAMARGEM_L_VAREJO: TBCDField;
    SQL_LISTAMARGEM_L_ATACADO: TBCDField;
    SQL_LISTAMARGEM_L_DISTRIBUIDOR: TBCDField;
    SQL_LISTADESCONTO_MAXIMO: TBCDField;
    SQL_LISTADESCONTO_M_VAREJO: TBCDField;
    SQL_LISTADESCONTO_M_ATACADO: TBCDField;
    SQL_LISTADESCONTO_M_DISTRIBUIDOR: TBCDField;
    SQL_LISTADESCONTO_L_VAREJO: TBCDField;
    SQL_LISTADESCONTO_L_ATACADO: TBCDField;
    SQL_LISTADESCONTO_L_DISTRIBUIDOR: TBCDField;
    SQL_LISTAPAGAR_COMISSAO: TBCDField;
    SQL_LISTACOMISSAO_BALCAO: TBCDField;
    SQL_LISTABALCAO_COMISSAO_ATACADO: TBCDField;
    SQL_LISTABALCAO_COMISSAO_DISTRIBUIDOR: TBCDField;
    SQL_LISTACOMISSAO_EXTERNA: TBCDField;
    SQL_LISTAEXTERNA_COMISSAO_VAREJO: TBCDField;
    SQL_LISTAEXTERNA_COMISSAO_ATACADO: TBCDField;
    SQL_LISTAEXTERNA_COMISSAO_DISTRIBUIDOR: TBCDField;
    SQL_LISTAPRECO_FINAL_ATACADO: TBCDField;
    SQL_LISTAPRECO_FINAL_DISTRIBUIDOR: TBCDField;
    SQL_LISTAPRECO_FINAL_VAREJO: TBCDField;
    SQL_LISTAPROMO_VAREJO: TBCDField;
    SQL_LISTAPROMO_ATACADO: TBCDField;
    SQL_LISTAPROMO_DISTRIBUIDOR: TBCDField;
    SQL_LISTAVALOR_PROMOCIONAL_ATACADO: TBCDField;
    SQL_LISTAVALOR_PROMOCIONAL_DISTRIBUIDOR: TBCDField;
    SQL_LISTAVALOR_PROMOCIONAL_VAREJO: TBCDField;
    SQL_LISTASALDO: TBCDField;
    SQL_LISTAALIQ_ICMS: TBCDField;
    SQL_LISTAALIQ_ICMS_SUBST: TStringField;
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
    SQL_LISTABALCAO_COMISSAO_VAREJO: TBCDField;
    SQL_PRODUTOBALCAO_COMISSAO_ATACADO: TBCDField;
    SQL_PRODUTOBALCAO_COMISSAO_DISTRIBUIDOR: TBCDField;
    SQL_PRODUTOEXTERNA_COMISSAO_VAREJO: TBCDField;
    SQL_PRODUTOEXTERNA_COMISSAO_ATACADO: TBCDField;
    SQL_PRODUTOEXTERNA_COMISSAO_DISTRIBUIDOR: TBCDField;
    SQL_PRODUTOBALCAO_COMISSAO_VAREJO: TBCDField;
    SQL_PRECO_FAIXA: TFDQuery;
    DS_PRECO_FAIXA: TDataSource;
    SQL_PRECO_FAIXAID: TFDAutoIncField;
    SQL_PRECO_FAIXATIPO: TStringField;
    SQL_PRECO_FAIXAPRECO: TBCDField;
    pop_faixa: TPopupMenu;
    RemoverFaixa1: TMenuItem;
    SQL_PRECO_FAIXAID_PRODUTO: TIntegerField;
    SQL_PRECO_FAIXAQTDE: TBCDField;
    chk_diff_estoque: TcxCheckBox;
    SQL_NAT_OP: TFDQuery;
    SQL_CFOP_NATOP: TFDQuery;
    DS_NAT_OP: TDataSource;
    DS_CFOP_NATOP: TDataSource;
    SQL_NAT_OPid: TFDAutoIncField;
    SQL_NAT_OPdescricao: TStringField;
    SQL_CFOP_NATOPDESCRICAO: TStringField;
    SQL_CFOP_NATOPCFOP: TStringField;
    tbView: TcxGridDBTableView;
    gdProdsLevel1: TcxGridLevel;
    gdProds: TcxGrid;
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
    tbViewSALDO: TcxGridDBColumn;
    tbViewALIQ_ICMS: TcxGridDBColumn;
    tbViewICMS_CST: TcxGridDBColumn;
    tbViewPIS_CST: TcxGridDBColumn;
    tbViewCOFINS_CST: TcxGridDBColumn;
    tbViewCSOSN: TcxGridDBColumn;
    tbViewNCM: TcxGridDBColumn;
    tbViewCEST: TcxGridDBColumn;
    tbViewPRECO: TcxGridDBColumn;
    cbTipoItemConsulta: TcxLookupComboBox;
    tbViewESTOQUE_MINIMO: TcxGridDBColumn;
    SQL_PRODUTOPROMOCAO_INICIO: TDateField;
    SQL_PRODUTOPROMOCAO_TERMINO: TDateField;
    SQL_LISTAPROMOCAO_INICIO: TDateField;
    SQL_LISTAPROMOCAO_TERMINO: TDateField;
    QtdeItens: TLabel;
    Label51: TLabel;
    Label35: TLabel;
    lblprodcads: TLabel;
    tbViewPRECO_PROMO: TcxGridDBColumn;
    SQL_PRODUTOREDUCAO_ICMS: TBCDField;
    SQL_PRODUTOREDUCAO_ICMS_ST: TBCDField;
    SQL_PRODUTOLUCRO_SUBST_TRIBUTARIA: TBCDField;
    SQL_PRODUTOVALOR_PAUTA_BC_ST: TBCDField;
    SQL_LISTAREDUCAO_ICMS: TBCDField;
    SQL_LISTAREDUCAO_ICMS_ST: TBCDField;
    SQL_LISTALUCRO_SUBST_TRIBUTARIA: TBCDField;
    SQL_LISTAVALOR_PAUTA_BC_ST: TBCDField;
    lbl1: TLabel;
    chk_ativocadastro: TcxCheckBox;
    sql_ponto_impressao: TFDQuery;
    ds_ponto_impressao: TDataSource;
    sql_ponto_impressaoid: TFDAutoIncField;
    sql_ponto_impressaonome: TStringField;
    SQL_PRODUTOponto_impressao_id: TIntegerField;
    Label24: TLabel;
    PRECO_FINAL_VAREJO: TDBEdit;
    Label82: TLabel;
    MARGEM_LUCRO: TDBEdit;
    Label7: TLabel;
    DBEdit2: TDBEdit;
    GroupBox25: TGroupBox;
    Label42: TLabel;
    Label10: TLabel;
    BALCAO_COMISSAO_VAREJO: TDBEdit;
    EXTERNA_COMISSAO_VAREJO: TDBEdit;
    Label9: TLabel;
    Panel1: TPanel;
    btnestoque: TcxButton;
    BtnAlterar: TcxButton;
    BtnCancelar: TcxButton;
    BtnGravar: TcxButton;
    BtnIncluir: TcxButton;
    cxButton1: TcxButton;
    tbNFe: TcxTabSheet;
    rgNFe_indTot: TRadioGroup;
    rgNFe_VeiculoNovo: TRadioGroup;
    rgNFe_Medicamento: TRadioGroup;
    procedure btnestoqueClick(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);



  private
    { Private declarations }

  public
    { Public declarations }

  protected
    { Protected declarations }

  end;

var
  Frm_Produto2: TFrm_Produto2;

implementation

{$R *.dfm}

uses cadastro_familia, cadastro_sub_grupo, cad_marca,

  cadastro_grupo, cadastro_unidade, u_funcoes, funcoes_sistema,
  vw_Login, estoque_2;



procedure TFrm_Produto2.btnestoqueClick(Sender: TObject);
begin
if TFrm_Login.Execute then
 begin
  Frm_Estoque2 := TFrm_Estoque2.CREATE(Application);
  Frm_Estoque2.ShowModal;
 end;

end;


procedure TFrm_Produto2.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  Action := cafree;
  self := nil;
end;

end.


Trocou UNIDADE_MEDIDA por PROD_UNIDADE : automaticamente em 16/06/2020 11:04
Trocou INFO_ADICIONAIS por PROD_DETALHES : automaticamente em 16/06/2020 12:08
Trocou PROD_REFERENCIASFABRICA por PROD_REFERENCIASFABRICA : automaticamente em 16/06/2020 12:39
Trocou REFERENCIA_FABRICANTE por PROD_REFERENCIASFABRICA : automaticamente em 16/06/2020 14:13
Trocou PROD_UNIDADE por PROD_CDUNIDADE : automaticamente em 16/06/2020 17:07
