unit vw_importacao_nfe;
{
========================================================================================================================================
ALT|   DATA |HORA |UNIT                        |Descrição                                                                              |
---|--------|-----|----------------------------|----------------------------------------------------------------------------------------
331|15/06/20|13:35|vw_importacao_nfe           |Passa a tratar PRODUTO_PROD(PROD_EAN)    ao invés de PRODUTO(CODIGO_BARRAS)
303|15/06/20|10:14|vw_importacao_nfe           |Passa a tratar PRODUTO_PROD(PROD_CODIGO) ao invés de PRODUTO(CODIGO)
========================================================================================================================================
}

interface

uses
  WINAPI.WINDOWS, SYSTEM.SYSUTILS, SYSTEM.VARIANTS, SYSTEM.CLASSES,
  VCL.GRAPHICS, VCL.CONTROLS, VCL.FORMS, VCL.DIALOGS,
  CXGRAPHICS,
  CXEDIT, VCL.MENUS,
  VCL.STDCTRLS, CXBUTTONS, CXCHECKBOX, CXPC, VCL.EXTCTRLS,
  DATA.DB, CXGRIDLEVEL,
  CXGRIDCUSTOMTABLEVIEW, CXGRIDTABLEVIEW, CXGRIDDBTABLEVIEW, CXGRID,
  CXDROPDOWNEDIT,

  FIREDAC.COMP.CLIENT,
  CXHINT, FIREDAC.STAN.PARAM,
  FIREDAC.COMP.DATASET, CXBUTTONEDIT,
  LIBERACAO,
  cxGridBandedTableView, cxGridDBBandedTableView, cxCurrencyEdit, m_NFe,
  vw_vincular_nat_op, h_Dialogs, h_db, h_Functions,
  v_Env, h_Formats, m_Importacao, h_Files, cxCalendar, strutils,
  cxMemo, vw_consulta_generica, c_Globals,
  m_Tipo_Produto, cxEditRepositoryItems, m_Produto, cxGroupBox,
  m_UNIDADE_MEDIDA, cxControls, cxLookAndFeels, cxLookAndFeelPainters,
  dxSkinsCore, dxSkinBlack, dxSkinBlue, dxSkinBlueprint, dxSkinCaramel,
  dxSkinCoffee, dxSkinDarkRoom,
  dxSkinDarkSide,
  dxSkinDevExpressDarkStyle, dxSkinDevExpressStyle, dxSkinFoggy,
  dxSkinGlassOceans, dxSkinHighContrast, dxSkiniMaginary, dxSkinLilian,
  dxSkinLiquidSky, dxSkinLondonLiquidSky,
  dxSkinMcSkin,
  dxSkinMetropolis, dxSkinMetropolisDark, dxSkinMoneyTwins,
  dxSkinOffice2007Black, dxSkinOffice2007Blue, dxSkinOffice2007Green,
  dxSkinOffice2007Pink, dxSkinOffice2007Silver,
  dxSkinOffice2010Black,
  dxSkinOffice2010Blue, dxSkinOffice2010Silver, dxSkinOffice2013DarkGray,
  dxSkinOffice2013LightGray, dxSkinOffice2013White, dxSkinOffice2016Colorful,
  dxSkinOffice2016Dark,
  dxSkinPumpkin, dxSkinSeven,
  dxSkinSevenClassic, dxSkinSharp, dxSkinSharpPlus, dxSkinSilver,
  dxSkinSpringTime, dxSkinStardust, dxSkinSummer2008, dxSkinTheAsphaltWorld,
  dxSkinsDefaultPainters,
  dxSkinValentine,
  dxSkinVisualStudio2013Blue, dxSkinVisualStudio2013Dark,
  dxSkinVisualStudio2013Light, dxSkinVS2010, dxSkinWhiteprint,
  dxSkinXmas2008Blue, dxSkinscxPCPainter, dxBarBuiltInMenu,
  cxContainer, cxStyles,
  cxCustomData, cxFilter, cxData, cxDataStorage, cxNavigator, cxDBData,
  cxTextEdit, cxLabel, cxMaskEdit, VCL.ComCtrls, dxCore, cxDateUtils,
  dxScreenTip, FIREDAC.STAN.Intf,
  FIREDAC.STAN.Option,
  FIREDAC.STAN.Error, FIREDAC.DatS, FIREDAC.Phys.Intf, FIREDAC.DApt.Intf,
  FIREDAC.STAN.Async, FIREDAC.DApt, VCL.ImgList, dxCustomHint, cxClasses,
  cxGridCustomView,
  dxGDIPlusClasses, m_ICMS, m_Csosn, m_XML;

type
  TFrm_importacao_nfe = class(TFORM)
    STY_HINT: TCXHINTSTYLECONTROLLER;
    SQL_PRODUTOS: TFDQUERY;
    DS_PRODUTOS: TDATASOURCE;
    cxPageControl1: TcxPageControl;
    tsConsulta: TcxTabSheet;
    SQL_PRODUTOSID: TFDAutoIncField;
    SQL_PRODUTOSID_IMPORTACAO: TIntegerField;
    SQL_PRODUTOSID_NFE: TIntegerField;
    SQL_PRODUTOSCODIGO: TStringField;
    SQL_PRODUTOSITEM: TIntegerField;
    SQL_PRODUTOSDESTINO: TStringField;
    SQL_PRODUTOSDESCRICAO: TStringField;
    SQL_PRODUTOSCOD_BARRAS: TStringField;
    SQL_PRODUTOSMARCA: TStringField;
    SQL_PRODUTOSUM: TStringField;
    SQL_PRODUTOSQTDE: TBCDField;
    SQL_PRODUTOSPRECO_UNI: TBCDField;
    SQL_PRODUTOSDESCONTO: TBCDField;
    SQL_PRODUTOSACRESCIMOS: TBCDField;
    SQL_PRODUTOSVALOR_TOTAL: TBCDField;
    SQL_PRODUTOSBASE_ICMS: TBCDField;
    SQL_PRODUTOSTOTAL_ICMS: TBCDField;
    SQL_PRODUTOSBASE_PIS: TBCDField;
    SQL_PRODUTOSALIQ_PIS: TBCDField;
    SQL_PRODUTOSTOTAL_PIS: TBCDField;
    SQL_PRODUTOSBASE_COFINS: TBCDField;
    SQL_PRODUTOSALIQ_COFINS: TBCDField;
    SQL_PRODUTOSTOTAL_COFINS: TBCDField;
    SQL_PRODUTOSNCM: TStringField;
    SQL_PRODUTOSCEST: TStringField;
    SQL_PRODUTOSCFOP: TStringField;
    SQL_PRODUTOSCSOSN: TStringField;
    SQL_PRODUTOSORIGEM: TStringField;
    SQL_PRODUTOSMARGEM_LUCRO: TBCDField;
    SQL_PRODUTOSDESPESAS_OPERACIONAIS: TBCDField;
    SQL_PRODUTOSPRECO_VENDA: TBCDField;
    SQL_PRODUTOSDESC_MAXIMO: TBCDField;
    SQL_PRODUTOSCOMISSAO: TBCDField;
    SQL_PRODUTOSTIPO: TStringField;
    tsImportacao: TcxTabSheet;
    grp_nfe: TGroupBox;
    Label1: TLabel;
    lbl9: TLabel;
    lbl11: TLabel;
    Label17: TLabel;
    Label8: TLabel;
    Label16: TLabel;
    Label18: TLabel;
    Label9: TLabel;
    Label15: TLabel;
    Label21: TLabel;
    lbl12: TLabel;
    Label14: TLabel;
    Label13: TLabel;
    Label20: TLabel;
    Label2: TLabel;
    Label6: TLabel;
    Label3: TLabel;
    edt_tot_icms_st: TEdit;
    edt_tot_icms_deson: TEdit;
    edt_tot_icms: TEdit;
    edt_base_icms: TEdit;
    edt_num_nfe: TEdit;
    edt_nat_op: TEdit;
    btn_buscar_xml: TcxButton;
    btn_vinc_nat_op: TcxButton;
    edt_chave: TEdit;
    edt_valor_nfe: TEdit;
    edt_tot_descontos: TEdit;
    edt_tot_acrescimos: TEdit;
    edt_tot_nfe: TEdit;
    edt_tot_cofins: TEdit;
    edt_tot_pis: TEdit;
    edt_tot_frete: TEdit;
    edt_tot_seguro: TEdit;
    edt_data_emi: TEdit;
    edt_base_icms_st: TEdit;
    pcFprTrans: TcxPageControl;
    tsFornecedor: TcxTabSheet;
    lbl5: TLabel;
    Label4: TLabel;
    lbl1: TLabel;
    Label5: TLabel;
    lbl6: TLabel;
    lbl2: TLabel;
    edt_fn_razao: TEdit;
    edt_fn_fantasia: TEdit;
    edt_fn_cnpj: TEdit;
    edt_fn_cidade: TEdit;
    edt_fn_ie: TEdit;
    edt_fn_uf: TEdit;
    tsTransportador: TcxTabSheet;
    Label19: TLabel;
    Label22: TLabel;
    Label23: TLabel;
    Label24: TLabel;
    Label25: TLabel;
    Label26: TLabel;
    edt_tr_razao: TEdit;
    edt_tr_cnpj: TEdit;
    edt_tr_cpf: TEdit;
    edt_tr_cidade: TEdit;
    edt_tr_uf: TEdit;
    edt_tr_ie: TEdit;
    btn_iniciar: TcxButton;
    btn_desfazer: TcxButton;
    btn_pausar: TcxButton;
    btn_cancelar: TcxButton;
    btn_correcoes: TcxButton;
    grp_importacao: TGroupBox;
    Label10: TLabel;
    Label11: TLabel;
    Label12: TLabel;
    Label7: TLabel;
    edt_dt_import_inicio: TEdit;
    edt_dt_import_fim: TEdit;
    edt_import_user: TEdit;
    edt_import_status: TEdit;
    grid_prods: TcxGrid;
    grid_prodsDBTableView1: TcxGridDBTableView;
    grid_prodsDBTableView1ORIGEM: TcxGridDBColumn;
    grid_prodsDBTableView1CODIGO: TcxGridDBColumn;
    grid_prodsDBTableView1COD_BARRAS: TcxGridDBColumn;
    grid_prodsDBTableView1NOME: TcxGridDBColumn;
    grid_prodsDBTableView1MARCA: TcxGridDBColumn;
    grid_prodsDBTableView1UM: TcxGridDBColumn;
    grid_prodsDBTableView1QTDE: TcxGridDBColumn;
    grid_prodsDBTableView1PRECO_UNI: TcxGridDBColumn;
    grid_prodsDBTableView1MARGEM_LUCRO: TcxGridDBColumn;
    grid_prodsDBTableView1PRECO_VENDA: TcxGridDBColumn;
    grid_prodsDBTableView1DESC_MAXIMO: TcxGridDBColumn;
    grid_prodsDBTableView1COMISSAO: TcxGridDBColumn;
    grid_prodsDBTableView1TIPO: TcxGridDBColumn;
    grid_prodsDBTableView1CSOSN: TcxGridDBColumn;
    grid_prodsDBTableView1CST_ICMS: TcxGridDBColumn;
    grid_prodsDBTableView1CST_PIS: TcxGridDBColumn;
    grid_prodsDBTableView1CST_COFINS: TcxGridDBColumn;
    grid_prodsDBTableView1NCM: TcxGridDBColumn;
    grid_prodsDBTableView1CEST: TcxGridDBColumn;
    grid_prodsDBTableView1CFOP_ENTRADA: TcxGridDBColumn;
    grid_prodsDBTableView1CFOP_SAIDA: TcxGridDBColumn;
    dbtvMain: TcxGridDBBandedTableView;
    dbtvMainCODIGO: TcxGridDBBandedColumn;
    dbtvMainDESCRICAO: TcxGridDBBandedColumn;
    dbtvMainCOD_BARRAS: TcxGridDBBandedColumn;
    dbtvMainMARCA: TcxGridDBBandedColumn;
    dbtvMainUM: TcxGridDBBandedColumn;
    dbtvMainQTDE: TcxGridDBBandedColumn;
    dbtvMainPRECO_UNI: TcxGridDBBandedColumn;
    dbtvMainDESCONTO: TcxGridDBBandedColumn;
    dbtvMainACRESCIMOS: TcxGridDBBandedColumn;
    dbtvMainPRECO_TOTAL: TcxGridDBBandedColumn;
    dbtvMainNCM: TcxGridDBBandedColumn;
    dbtvMainCEST: TcxGridDBBandedColumn;
    dbtvMainCFOP: TcxGridDBBandedColumn;
    dbtvMainCSOSN: TcxGridDBBandedColumn;
    dbtvMainORIGEM: TcxGridDBBandedColumn;
    dbtvMainMARGEM_LUCRO: TcxGridDBBandedColumn;
    dbtvMainDESPESAS_OPERACIONAIS: TcxGridDBBandedColumn;
    dbtvMainPRECO_VENDA: TcxGridDBBandedColumn;
    dbtvMainDESC_MAXIMO: TcxGridDBBandedColumn;
    dbtvMainCOMISSAO: TcxGridDBBandedColumn;
    dbtvMainTIPO: TcxGridDBBandedColumn;
    grid_prodsLevel1: TcxGridLevel;
    btn_finalizar: TcxButton;
    SQL_CONSULTA_IMPORTACAO: TFDQUERY;
    DS_CONSULTA_IMPORTACAO: TDATASOURCE;
    SQL_CONSULTA_IMPORTACAOID: TFDAutoIncField;
    SQL_CONSULTA_IMPORTACAODATA_INICIO: TDateTimeField;
    SQL_CONSULTA_IMPORTACAOUSUARIO: TStringField;
    SQL_CONSULTA_IMPORTACAORAZAO_SOCIAL: TStringField;
    SQL_CONSULTA_IMPORTACAONUMERO: TIntegerField;
    SQL_CONSULTA_IMPORTACAOCHAVE: TStringField;
    SQL_CONSULTA_IMPORTACAOTOTAL_NFE: TBCDField;
    SQL_CONSULTA_IMPORTACAOSTATUS_IMPORTACAO: TStringField;
    SQL_CONSULTA_IMPORTACAOCNPJ_CPF: TStringField;
    ilStatus: TcxImageList;
    SQL_IMPORTACAO: TFDQUERY;
    DS_IMPORTACAO: TDATASOURCE;
    btn_retomar: TcxButton;
    SQL_IMPORTACAODATA_EMISSAO: TDateTimeField;
    SQL_IMPORTACAOCHAVE: TStringField;
    SQL_IMPORTACAONAT_OP: TStringField;
    SQL_IMPORTACAONFe: TIntegerField;
    SQL_IMPORTACAOBASE_ICMS: TBCDField;
    SQL_IMPORTACAOVALOR_ICMS: TBCDField;
    SQL_IMPORTACAOBASE_ICMS_ST: TBCDField;
    SQL_IMPORTACAOVALOR_ICMS_ST: TBCDField;
    SQL_IMPORTACAOICMS_DESONERADO: TBCDField;
    SQL_IMPORTACAOVALOR_SEGURO: TBCDField;
    SQL_IMPORTACAOVALOR_NFE: TBCDField;
    SQL_IMPORTACAOVALOR_FRETE: TBCDField;
    SQL_IMPORTACAOVALOR_DESPESAS: TBCDField;
    SQL_IMPORTACAOVALOR_DESCONTO: TBCDField;
    SQL_IMPORTACAOVALOR_PIS: TBCDField;
    SQL_IMPORTACAOVALOR_COFINS: TBCDField;
    SQL_IMPORTACAOTOTAL_NFE: TBCDField;
    SQL_IMPORTACAODATA_INICIO: TDateTimeField;
    SQL_IMPORTACAODATA_FIM: TDateTimeField;
    SQL_IMPORTACAOSTATUS_IMPORTACAO: TStringField;
    SQL_IMPORTACAOF_RAZAO: TStringField;
    SQL_IMPORTACAOF_FANTASIA: TStringField;
    SQL_IMPORTACAOF_CNPJ: TStringField;
    SQL_IMPORTACAOF_IE: TStringField;
    SQL_IMPORTACAOF_MUNICIPIO: TStringField;
    SQL_IMPORTACAOF_ESTADO: TStringField;
    SQL_IMPORTACAOT_RAZAO: TStringField;
    SQL_IMPORTACAOT_CNPJ: TStringField;
    SQL_IMPORTACAOT_CPF: TStringField;
    SQL_IMPORTACAOT_IE: TStringField;
    SQL_IMPORTACAOT_MUNICIPIO: TStringField;
    SQL_IMPORTACAOT_ESTADO: TStringField;
    SQL_IMPORTACAOUSUARIO: TStringField;
    dbtvMainITEM: TcxGridDBBandedColumn;
    dbtvMainDESTINO: TcxGridDBBandedColumn;
    SQL_IMPORTACAOI_ID: TFDAutoIncField;
    tsCarga: TcxTabSheet;
    Label27: TLabel;
    edt_cg_especie: TEdit;
    tsObs: TcxTabSheet;
    mmObs: TcxMemo;
    Label28: TLabel;
    edt_cg_qtde: TEdit;
    Label29: TLabel;
    Label30: TLabel;
    edt_cg_liquido: TEdit;
    edt_cg_bruto: TEdit;
    Label31: TLabel;
    edt_cg_marca: TEdit;
    SQL_IMPORTACAOESPECIE_CARGA: TStringField;
    SQL_IMPORTACAOQUANTIDADE_CARGA: TBCDField;
    SQL_IMPORTACAOPESO_BRUTO: TBCDField;
    SQL_IMPORTACAOPESO_LIQUIDO: TBCDField;
    SQL_IMPORTACAOMARCA_CARGA: TStringField;
    SQL_IMPORTACAOOBSERVACOES: TMemoField;
    dbtvMainBASE_IPI: TcxGridDBBandedColumn;
    dbtvMainALIP_IPI: TcxGridDBBandedColumn;
    dbtvMainTOTAL_IPI: TcxGridDBBandedColumn;
    SQL_PRODUTOSCST_IPI: TStringField;
    SQL_PRODUTOSENQUADRAMENTO_IPI: TStringField;
    SQL_PRODUTOSBASE_IPI: TBCDField;
    SQL_PRODUTOSPROD_NFe_O13_pIPI: TBCDField;
    SQL_PRODUTOSTOTAL_IPI: TBCDField;
    dbtvMainedt: TcxGridDBBandedColumn;
    SQL_PRODUTOSEDITADO: TIntegerField;
    editRepo: TcxEditRepository;
    buttonEditVisible: TcxEditRepositoryButtonItem;
    buttonEditNotVisible: TcxEditRepositoryButtonItem;
    btn_danfe: TcxButton;
    TextEdit: TcxEditRepositoryTextItem;
    comboBoxTIPO: TcxEditRepositoryComboBoxItem;
    SQL_PRODUTOSCST_ICMS: TStringField;
    SQL_PRODUTOSPROD_NFe_N16_pICMS: TBCDField;
    SQL_PRODUTOSCST_PIS: TStringField;
    SQL_PRODUTOSCST_COFINS: TStringField;
    dbtvMainBASE_ICMS: TcxGridDBBandedColumn;
    dbtvMainTOTAL_ICMS: TcxGridDBBandedColumn;
    dbtvMainBASE_PIS: TcxGridDBBandedColumn;
    dbtvMainALIQ_PIS: TcxGridDBBandedColumn;
    dbtvMainTOTAL_PIS: TcxGridDBBandedColumn;
    dbtvMainBASE_COFINS: TcxGridDBBandedColumn;
    dbtvMainALIQ_COFINS: TcxGridDBBandedColumn;
    dbtvMainTOTAL_COFINS: TcxGridDBBandedColumn;
    dbtvMainCST_IPI: TcxGridDBBandedColumn;
    dbtvMainENQUADRAMENTO_IPI: TcxGridDBBandedColumn;
    dbtvMainCST_ICMS: TcxGridDBBandedColumn;
    dbtvMainPROD_NFe_N16_pICMS: TcxGridDBBandedColumn;
    dbtvMainCST_PIS: TcxGridDBBandedColumn;
    dbtvMainCST_COFINS: TcxGridDBBandedColumn;
    tmr: TTimer;
    SQL_NF_EMITIDAS: TFDQUERY;
    DS_NF_EMITIDAS: TDATASOURCE;
    SQL_NF_EMITIDASID: TFDAutoIncField;
    SQL_NF_EMITIDASFORNECEDOR: TStringField;
    SQL_NF_EMITIDASCNPJ: TStringField;
    SQL_NF_EMITIDASDATA_EMISSAO: TDateTimeField;
    SQL_NF_EMITIDASPREVISAO_ENTREGA: TDateField;
    SQL_NF_EMITIDASVALOR: TBCDField;
    SQL_NF_EMITIDASCHAVE: TStringField;
    SQL_NF_EMITIDASCAMINHO_XML: TMemoField;
    SQL_NF_EMITIDASOBSERVACOES: TMemoField;
    SQL_NF_EMITIDASID_MANIFESTO: TIntegerField;
    cxPageControl3: TcxPageControl;
    tsImportadas: TcxTabSheet;
    tsDestinadas: TcxTabSheet;
    cxGrid1: TcxGrid;
    cxGridDBTableView1: TcxGridDBTableView;
    dbedtId_Manifesto: TcxGridDBColumn;
    dbedtFornecedor: TcxGridDBColumn;
    dbedtCNPJ: TcxGridDBColumn;
    dbedtChave: TcxGridDBColumn;
    dbedtData_Emissao: TcxGridDBColumn;
    dbedtValor_NFe: TcxGridDBColumn;
    dbedtPrevisao_Entrega: TcxGridDBColumn;
    cxGridLevel1: TcxGridLevel;
    edt_consulta: TEdit;
    Label34: TLabel;
    cbFiltro: TcxComboBox;
    Label32: TLabel;
    Label33: TLabel;
    cxGroupBox2: TcxGroupBox;
    img1: TImage;
    img2: TImage;
    img3: TImage;
    chkImportadas: TcxCheckBox;
    chkPausa: TcxCheckBox;
    chkCanceladas: TcxCheckBox;
    gdConsImport: TcxGrid;
    gdConsImportDBTableView1: TcxGridDBTableView;
    gdConsImportDBTableView1ID: TcxGridDBColumn;
    tbclStatus_Importacao: TcxGridDBColumn;
    gdConsImportDBTableView1DATA_INICIO: TcxGridDBColumn;
    gdConsImportDBTableView1USUARIO: TcxGridDBColumn;
    gdConsImportDBTableView1RAZAO_SOCIAL: TcxGridDBColumn;
    gdConsImportDBTableView1CNPJ_CPF: TcxGridDBColumn;
    gdConsImportDBTableView1NUMERO: TcxGridDBColumn;
    gdConsImportDBTableView1CHAVE: TcxGridDBColumn;
    gdConsImportDBTableView1TOTAL_NFE: TcxGridDBColumn;
    gdConsImportLevel1: TcxGridLevel;
    edt_dfe_consulta: TEdit;
    Label35: TLabel;
    cb_dfe_filtro: TcxComboBox;
    Label36: TLabel;
    Label37: TLabel;
    cxGroupBox1: TcxGroupBox;
    Image1: TImage;
    Image2: TImage;
    Image3: TImage;
    mfe_1: TcxCheckBox;
    mfe_3: TcxCheckBox;
    mfe_4: TcxCheckBox;
    mfe_2: TcxCheckBox;
    Image4: TImage;
    Image5: TImage;
    mfe_0: TcxCheckBox;
    dfeMan: TPopupMenu;
    ImportarNFe1: TMenuItem;
    ManifestarNFe1: TMenuItem;
    SQL_NF_EMITIDASnfe_importada: TBooleanField;
    comboboxUND: TcxEditRepositoryComboBoxItem;
    edt_dt_inicio: TcxDateEdit;
    edt_dt_fim: TcxDateEdit;
    edt_dfe_inicio: TcxDateEdit;
    edt_dfe_fim: TcxDateEdit;
    dbtvMainID: TcxGridDBBandedColumn;
    SQL_EXCLUIR_SEM_GTIN: TFDQuery;
    SQL_EXCLUIR_SEM_GTIN_PRODUTOS: TFDQuery;
    procedure FORMCLOSE(SENDER: TOBJECT; var ACTION: TCLOSEACTION);
    procedure FORMKEYDOWN(SENDER: TOBJECT; var KEY: WORD; SHIFT: TSHIFTSTATE);
    procedure btn_buscar_xmlClick(SENDER: TOBJECT);
    procedure BTN_INICIARCLICK(SENDER: TOBJECT);
    function CANCELAR_IMPORT: BOOLEAN;
    procedure BTN_CANCELARCLICK(SENDER: TOBJECT);
    procedure BTN_BAIXAR_XMLCLICK(SENDER: TOBJECT);
    procedure edt_import_statusChange(SENDER: TOBJECT);
    procedure dbtvMainEditing(SENDER: TcxCustomGridTableView; AItem: TcxCustomGridTableItem; var AAllow: BOOLEAN);
    procedure calc_tot;
    procedure dbtvMainCustomDrawCell(SENDER: TcxCustomGridTableView; ACanvas: TcxCanvas; AViewInfo: TcxGridTableDataCellViewInfo; var ADone: BOOLEAN);
    procedure btn_vinc_nat_opClick(SENDER: TOBJECT);
    procedure vinc_nat_op;
    procedure LoadProdutos(const pId: Integer);
    procedure btn_pausarClick(SENDER: TOBJECT);
    procedure tsConsultaShow(SENDER: TOBJECT);
    procedure gdConsImportDBTableView1CustomDrawCell(SENDER: TcxCustomGridTableView; ACanvas: TcxCanvas; AViewInfo: TcxGridTableDataCellViewInfo; var ADone: BOOLEAN);
    procedure tbclStatus_ImportacaoCustomDrawCell(SENDER: TcxCustomGridTableView; ACanvas: TcxCanvas; AViewInfo: TcxGridTableDataCellViewInfo; var ADone: BOOLEAN);
    procedure fdFromModel;
    procedure fdFromQuery;
    procedure stateButtons;
    procedure btn_retomarClick(SENDER: TOBJECT);
    procedure btn_desfazerClick(SENDER: TOBJECT);
    procedure dbtvMainEditValueChanged(SENDER: TcxCustomGridTableView; AItem: TcxCustomGridTableItem);
    procedure dbtvMainCustomDrawGroupCell(SENDER: TcxCustomGridTableView; ACanvas: TcxCanvas; AViewInfo: TcxGridTableCellViewInfo; var ADone: BOOLEAN);
    procedure dbtvMainLeftPosChanged(SENDER: TOBJECT);
    procedure dbtvMainTopRecordIndexChanged(SENDER: TOBJECT);
    procedure dbtvMainCODIGOPropertiesButtonClick(SENDER: TOBJECT; AButtonIndex: Integer);
    procedure dbtvMainEditKeyPress(SENDER: TcxCustomGridTableView; AItem: TcxCustomGridTableItem; AEdit: TcxCustomEdit; var KEY: Char);
    procedure reloadGrid;
    procedure edt_consultaKeyUp(SENDER: TOBJECT; var KEY: WORD; SHIFT: TSHIFTSTATE);
    procedure dbtvMainNCMPropertiesButtonClick(SENDER: TOBJECT; AButtonIndex: Integer);
    procedure dbtvMainCFOPPropertiesButtonClick(SENDER: TOBJECT; AButtonIndex: Integer);
    procedure editButtonsProperties(SENDER: TcxCustomGridTableItem; ARecord: TcxCustomGridRecord; var AProperties: TcxCustomEditProperties);
    procedure btn_correcoesClick(SENDER: TOBJECT);
    procedure btn_danfeClick(SENDER: TOBJECT);
    procedure dbtvMainMARCAPropertiesButtonClick(SENDER: TOBJECT; AButtonIndex: Integer);
    procedure dbtvMainTIPOGetProperties(SENDER: TcxCustomGridTableItem; ARecord: TcxCustomGridRecord; var AProperties: TcxCustomEditProperties);
    procedure dbtvMainCSOSNPropertiesButtonClick(SENDER: TOBJECT; AButtonIndex: Integer);
    procedure dbtvMainORIGEMPropertiesButtonClick(SENDER: TOBJECT; AButtonIndex: Integer);
    procedure tmrTimer(SENDER: TOBJECT);
    procedure checkchange(SENDER: TOBJECT);
    procedure changefilter(SENDER: TOBJECT);
    procedure FormShow(SENDER: TOBJECT);
    procedure dbtvMainMARGEM_LUCROPropertiesEditValueChanged(SENDER: TOBJECT);
    procedure dbtvMainDESPESAS_OPERACIONAISPropertiesEditValueChanged(SENDER: TOBJECT);
    procedure dbtvMainPRECO_VENDAPropertiesEditValueChanged(SENDER: TOBJECT);
    procedure dbtvMainCST_ICMSPropertiesButtonClick(SENDER: TOBJECT; AButtonIndex: Integer);
    procedure dbtvMainCST_PISPropertiesButtonClick(SENDER: TOBJECT; AButtonIndex: Integer);
    procedure dbtvMainCST_COFINSPropertiesButtonClick(SENDER: TOBJECT; AButtonIndex: Integer);
    procedure btn_finalizarClick(SENDER: TOBJECT);
    procedure dbedtId_ManifestoCustomDrawCell(SENDER: TcxCustomGridTableView; ACanvas: TcxCanvas; AViewInfo: TcxGridTableDataCellViewInfo; var ADone: BOOLEAN);
    procedure changeDfeFilter(SENDER: TOBJECT);
    procedure checkDfeChange(SENDER: TOBJECT);
    procedure edt_dfe_consultaKeyUp(SENDER: TOBJECT; var KEY: WORD; SHIFT: TSHIFTSTATE);
    procedure ImportarNFe1Click(SENDER: TOBJECT);
    procedure ManifestarNFe1Click(SENDER: TOBJECT);
    procedure gdConsImportDBTableView1CellDblClick(SENDER: TcxCustomGridTableView; ACellViewInfo: TcxGridTableDataCellViewInfo; AButton: TMouseButton; AShift: TSHIFTSTATE;
      var AHandled: BOOLEAN);
    procedure dbtvMainUMGetProperties(SENDER: TcxCustomGridTableItem; ARecord: TcxCustomGridRecord; var AProperties: TcxCustomEditProperties);
    procedure dbtvMainQTDEPropertiesEditValueChanged(SENDER: TOBJECT);
    procedure dbtvMainUMPropertiesEditValueChanged(SENDER: TOBJECT);
    procedure dbtvMainUMPropertiesNewLookupDisplayText(SENDER: TOBJECT; const AText: TCaption);
    procedure comboBoxTIPOPropertiesEditValueChanged(SENDER: TOBJECT);
    procedure comboBoxTIPOPropertiesNewLookupDisplayText(SENDER: TOBJECT; const AText: TCaption);
    procedure dbtvMainTIPOPropertiesEditValueChanged(SENDER: TOBJECT);
    procedure edt_dt_inicioPropertiesEditValueChanged(SENDER: TOBJECT);
    procedure edt_dt_fimPropertiesEditValueChanged(SENDER: TOBJECT);
    procedure edt_dfe_inicioPropertiesEditValueChanged(SENDER: TOBJECT);
    procedure edt_dfe_fimPropertiesEditValueChanged(SENDER: TOBJECT);
  private
    { PRIVATE DECLARATIONS }
    NFe: TNFe;
    Importacao: TImportacao;
    RUA, NUMERO, BAIRRO, CEP, COD_UF, TELEFONE, COD_MUN, COD_IMPORT, nat_op: string;
    ID_IMPORTACAO: Integer;
    procedure defaultLayout(PBOOL: BOOLEAN; withStateButtons: BOOLEAN = true);
    procedure consultar_pis_cofins(cgtable: TConsultaGenericaKind);
    procedure doEdition;
    procedure reloadDFE;
    procedure reloadConsultaNfe;
    function preco_venda(lucro, despesas: variant): BOOLEAN;
    function lucro_despesas(venda: variant): BOOLEAN;
    function validar_preco_venda(value, preco_medio: extended): BOOLEAN;
    procedure ImportarFromFile(path_xml: string);
    function calcular_preco_quantidade(qtde: currency): BOOLEAN;
    procedure tab_consulta_focus;
    procedure nil_objects;

  public
    { PUBLIC DECLARATIONS }
  end;

var
  FRM_IMPORTACAO_NFE: TFrm_importacao_nfe;

implementation

{$R *.DFM}

uses m_Empresa, h_Checks, S_Parametros_Tributacao, v_Dir, vw_manifestar_nfe;

procedure TFrm_importacao_nfe.btn_buscar_xmlClick(SENDER: TOBJECT);
var
  PATH, PATH_RENAME: string;
begin
  try

    PATH := tdir.Desktop;
    PATH := TFunctions.SELECTFILE(PATH, 'Arquivos XML|*.xml');
    if PATH <> EMPTYSTR then
    begin
      if EXTRACTFILEEXT(PATH) = '.xml' then
      begin
        ImportarFromFile(PATH);
        vinc_nat_op;
        stateButtons;
      end
      else
        tdialogs.WNALERTA('Importação NF-e', slinebreak + 'Arquivos com extensão ' + EXTRACTFILEEXT(PATH) + ' não são permitidos para importação!' + slinebreak +
          'Apenas arquivos .xml devem ser informados.', 12);
    end;
  except
    on e: Exception do
    begin
      tdialogs.wnErro('Carregar XML', e.Message + slinebreak + 'Erro ao carregar XML', 10);
      CANCELAR_IMPORT;
      btn_iniciar.Click;
    end;

  end;
end;

procedure TFrm_importacao_nfe.btn_danfeClick(SENDER: TOBJECT);
begin
  if Importacao = nil then
    TNFe.VisualizarDanfe(TNFe.Create(TImportacao.Create(SQL_IMPORTACAOI_ID.AsInteger).NFe.id).caminho_xml)
  else
    TNFe.VisualizarDanfe(TNFe.Create(TImportacao.Create(Importacao.id).NFe.id).caminho_xml);

end;

procedure TFrm_importacao_nfe.BTN_BAIXAR_XMLCLICK(SENDER: TOBJECT);
begin
  // if edt_chave.Text = EMPTYSTR then
  // begin
  // TDialogs.WNALERTA('Baixar NF-e', slinebreak + slinebreak + 'Informe uma chave para ser consultada!');
  // edt_chave.SETFOCUS;
  // exit;
  // end;
  // try
  // NFe.CHAVE := edt_chave.Text;
  // if NFe.BaixarNF(NFe.CHAVE) then
  // begin
  // NFe.ImportarNF(NFe.caminho_xml, Importacao);
  // btn_danfe.ENABLED := false;
  // fdFromModel;
  // end;
  // except
  // on e: exception do
  // begin
  // TDialogs.WNALERTA('Baixar NF-e', e.Message);
  // edt_chave.SELECTALL;
  // edt_chave.SETFOCUS;
  // end;
  // end;
  tdialogs.manworking;
end;

procedure TFrm_importacao_nfe.BTN_CANCELARCLICK(SENDER: TOBJECT);
begin
  CANCELAR_IMPORT;
end;

procedure TFrm_importacao_nfe.btn_correcoesClick(SENDER: TOBJECT);
begin

  // if not TFunctions.CheckOpen(vw_Modifica_Item) then
  // begin
  // vw_Modifica_Item := Tvw_Modifica_Item.create(Importacao.id);
  // vw_Modifica_Item.showmodal;
  // end;

  tdialogs.manworking;
end;

procedure TFrm_importacao_nfe.btn_desfazerClick(SENDER: TOBJECT);
begin
  if tdialogs.wnConfirmacao('Desfazer Alterações', slinebreak + 'Deseja desfazer todas as alterações nos itens ?', 14) then
  begin
    Importacao.desfazerAlteracoesItens;
    btn_desfazer.ENABLED := false;
    LoadProdutos(Importacao.id);
  end;
end;

procedure TFrm_importacao_nfe.btn_finalizarClick(SENDER: TOBJECT);
begin
  if assigned(Importacao) and assigned(NFe) and (edt_chave.Text <> '') then
  begin
    if tdialogs.wnConfirmacao('Finalizar Importação', slinebreak + 'Deseja finalizar a importação ?', 14) then
    begin
      try
        tdialogs.wnOpNF.Show('Finalizando Importação ...', 55);
        Importacao.Finalizar;
        tdialogs.wnOpNF.Free;

        tdialogs.wnInfo('Finalizar Importação', format('Importação para a NF-e "%s" ' + slinebreak + 'do fornecedor "%s" foi finalizada com sucesso!',
          [NFe.NUMERO, TFunctions.ifthen(NFe.Emitente.NOME_FANTASIA = '', NFe.Emitente.RAZAO_SOCIAL, NFe.Emitente.NOME_FANTASIA)]), 14);

        Importacao := nil;
        NFe := nil;
        defaultLayout(true);
        tab_consulta_focus;
      EXCEPT
        ON e: Exception DO
        BEGIN
          tdialogs.wnOpNF.Free;
          tdialogs.wnErro('Finalizar Importação', 'Erro ao finalizar importação:' + e.Message);
        END;
      end;
    end;
  end
  else
    tdialogs.WNALERTA('Finalizar Importação', 'Importação não pode ser finalizada pois os dados informados não são suficientes!');
end;

procedure TFrm_importacao_nfe.BTN_INICIARCLICK(SENDER: TOBJECT);
begin
  Importacao := TImportacao.Create;

  Importacao.Iniciar;
  NFe := TNFe.Create;

  defaultLayout(false, false);

  edt_dt_import_inicio.Text := Importacao.DATA_INICIO;
  edt_import_user.Text := Importacao.USUARIO.NOME;
  edt_import_status.Text := Importacao.STATUS_IMPORTACAO;
  FRM_IMPORTACAO_NFE.SQL_EXCLUIR_SEM_GTIN_PRODUTOS.Execute();

  stateButtons;

end;

(*
  Verifica se quantidade editada é maior que quantidade original e calcula preço unitário para o produto
*)

function TFrm_importacao_nfe.calcular_preco_quantidade(qtde: currency): BOOLEAN;
var
  item: TImportacao.TItem;
begin
  try

    result := true;
    item := TImportacao.TItem.get(['id_importacao', 'item', 'destino'], [Importacao.id, dbtvMainITEM.EditValue, '0']);
    if tchecks.equals(qtde, 0) then
    begin
      dbtvMainQTDE.EditValue := 0;
      dbtvMainPRECO_UNI.EditValue := 0;
      dbtvMainACRESCIMOS.EditValue := 0;
      dbtvMainDESCONTO.EditValue := 0;
    end
    else
    begin
      dbtvMainQTDE.EditValue := qtde;
      dbtvMainPRECO_UNI.EditValue := (item.preco_uni * item.qtde) / qtde;
      dbtvMainACRESCIMOS.EditValue := (item.acrescimos * item.qtde) / qtde;
      dbtvMainDESCONTO.EditValue := (item.desconto * item.qtde) / qtde;
    end;

    dbtvMainPRECO_TOTAL.EditValue := (dbtvMainQTDE.EditValue * dbtvMainPRECO_UNI.EditValue) + dbtvMainACRESCIMOS.EditValue - dbtvMainDESCONTO.EditValue;
    preco_venda(dbtvMainMARGEM_LUCRO.EditValue, dbtvMainDESPESAS_OPERACIONAIS.EditValue);

  except
    on e: Exception do
    begin
      result := false;
      tdialogs.wnErro('Importação NF-e', 'Erro ao alterar a quantidade de produto:' + e.Message);
    end;
  end;

end;

procedure TFrm_importacao_nfe.calc_tot;
var
  qtde, prod: extended;
begin
  // if SQL_PRODUTOSORIGEM.Value = 1 then
  // grid_prodsDBBandedTableView1VALOR_TOTAL.EditValue := SQL_PRODUTOSQTDE.AsExtended * SQL_PRODUTOSPRECO_UNI.AsExtended;
end;

function TFrm_importacao_nfe.CANCELAR_IMPORT: BOOLEAN;
  procedure c;
  begin
    Importacao.cancelar;
    nil_objects;
    defaultLayout(true);
  end;

begin
  result := false;
  if assigned(Importacao) then
    if (edt_num_nfe.Text <> EMPTYSTR) and (edt_chave.Text <> EMPTYSTR) and (edt_import_status.Text = 'ABERTA') then
    begin
      if tdialogs.wnConfirmacao('Cancelar Importação', 'Uma importação para a nota ' + edt_num_nfe.Text + ' do fornecedor ' + edt_fn_razao.Text + ' foi iniciada!' + slinebreak +
        'não será possível continuar a importação a partir dessa operação.' + slinebreak + 'Deseja cancelar importação?', 11) then
      begin
        result := true;
        if not tenv.TUser.isAdmin then
        begin
          if TFRM_LIBERACAO.EXECUTE then
            c
          else
            result := false;
        end
        else
          c;
      end;
    end
    else
    begin
      Importacao.Remover;
      nil_objects;
      defaultLayout(true);
      result := true;
    end
  else
    result := true;
end;

procedure TFrm_importacao_nfe.changeDfeFilter(SENDER: TOBJECT);
begin
  TcxComboBox(SENDER).ValidateEdit(true);
  if TcxComboBox(SENDER).EditValue <> null then
    reloadDFE;
end;

procedure TFrm_importacao_nfe.changefilter(SENDER: TOBJECT);
begin
  TcxComboBox(SENDER).ValidateEdit(true);
  if TcxComboBox(SENDER).EditValue <> null then
    reloadConsultaNfe;
end;

procedure TFrm_importacao_nfe.checkchange(SENDER: TOBJECT);
begin
  reloadConsultaNfe;
end;

procedure TFrm_importacao_nfe.comboBoxTIPOPropertiesEditValueChanged(SENDER: TOBJECT);
begin
  showmessage('EditValueChanged');
end;

procedure TFrm_importacao_nfe.comboBoxTIPOPropertiesNewLookupDisplayText(SENDER: TOBJECT; const AText: TCaption);
begin
  showmessage('NewLookupDisplayText');
end;

procedure TFrm_importacao_nfe.consultar_pis_cofins(cgtable: TConsultaGenericaKind);
var
  aux: TEdit;
begin

  aux := TEdit.Create(nil);
  Frm_Consulta_Generica := tfrm_consulta_generica.Create(nil, cgtable, aux);
  Frm_Consulta_Generica.showmodal;
  if aux.Text <> '' then
  begin
    dbtvMainCST_COFINS.EditValue := aux.Text;
    dbtvMainCST_PIS.EditValue := aux.Text;
    doEdition;
  end;

end;

procedure TFrm_importacao_nfe.dbedtId_ManifestoCustomDrawCell(SENDER: TcxCustomGridTableView; ACanvas: TcxCanvas; AViewInfo: TcxGridTableDataCellViewInfo; var ADone: BOOLEAN);
begin
  if dbedtId_Manifesto.EditValue <> '' then
    TFunctions.setImageByStatus([1, 2, 3, 4, 99], [3, 4, 6, 5, 7], ACanvas, dbedtId_Manifesto.Index, ilStatus, AViewInfo);

  ADone := true;
end;

procedure TFrm_importacao_nfe.tsConsultaShow(SENDER: TOBJECT);
begin
  reloadConsultaNfe;
end;

procedure TFrm_importacao_nfe.btn_pausarClick(SENDER: TOBJECT);
begin

  if tdialogs.wnConfirmacao('Importação NF-e', 'Deseja pausar a importação da NF-e ' + Importacao.NFe.NUMERO + ' emitida pelo fornecedor ' + Importacao.NFe.Emitente.RAZAO_SOCIAL +
    ' ?') then
  begin

    Importacao.Pausar;
    defaultLayout(true);
    tab_consulta_focus;
    nil_objects;

  end;

end;

procedure TFrm_importacao_nfe.btn_retomarClick(SENDER: TOBJECT);
begin

  Importacao := TImportacao.Create(SQL_IMPORTACAOI_ID.AsInteger);

  Importacao.Retomar;

  NFe := Importacao.NFe;

  defaultLayout(false, false);

  edt_dt_import_inicio.Text := Importacao.DATA_INICIO;
  edt_import_user.Text := Importacao.USUARIO.NOME;
  edt_import_status.Text := Importacao.STATUS_IMPORTACAO;

  fdFromModel;

  stateButtons;

end;

procedure TFrm_importacao_nfe.btn_vinc_nat_opClick(SENDER: TOBJECT);
begin
  vinc_nat_op;
end;

procedure TFrm_importacao_nfe.edt_consultaKeyUp(SENDER: TOBJECT; var KEY: WORD; SHIFT: TSHIFTSTATE);
begin
  if TFunctions.isKeyNumLetter(KEY) then
    reloadConsultaNfe;
end;

procedure TFrm_importacao_nfe.edt_dfe_consultaKeyUp(SENDER: TOBJECT; var KEY: WORD; SHIFT: TSHIFTSTATE);
begin
  if TFunctions.isKeyNumLetter(KEY) then
    reloadDFE;
end;

procedure TFrm_importacao_nfe.edt_dfe_fimPropertiesEditValueChanged(SENDER: TOBJECT);
begin
  edt_dfe_fim.ValidateEdit();
  reloadDFE;
end;

procedure TFrm_importacao_nfe.edt_dfe_inicioPropertiesEditValueChanged(SENDER: TOBJECT);
begin
  edt_dfe_inicio.ValidateEdit();
  reloadDFE;
end;

procedure TFrm_importacao_nfe.edt_dt_fimPropertiesEditValueChanged(SENDER: TOBJECT);
begin
  edt_dt_fim.ValidateEdit();
  reloadConsultaNfe;
end;

procedure TFrm_importacao_nfe.edt_dt_inicioPropertiesEditValueChanged(SENDER: TOBJECT);
begin
  edt_dt_inicio.ValidateEdit();
  reloadConsultaNfe;
end;

procedure TFrm_importacao_nfe.edt_import_statusChange(SENDER: TOBJECT);
begin
  edt_import_status.Color := TFunctions.ColorByStatus(edt_import_status.Text, ['ABERTA', 'PAUSADA', 'CANCELADA', 'FINALIZADA'], [clWEBOrange, clWebBlue, clMaroon, clWebDarkgreen]);
end;

procedure TFrm_importacao_nfe.fdFromModel;
begin

  edt_nat_op.Text := Importacao.NATUREZA_OP;

  if NFe <> nil then
  begin
    edt_chave.Text := NFe.chave;
    edt_num_nfe.Text := NFe.NUMERO;

    edt_fn_razao.Text := NFe.Emitente.RAZAO_SOCIAL;
    edt_fn_fantasia.Text := NFe.Emitente.NOME_FANTASIA;
    edt_fn_cnpj.Text := NFe.Emitente.CNPJ;
    edt_fn_ie.Text := NFe.Emitente.IE;
    edt_fn_cidade.Text := NFe.Emitente.MUNICIPIO;
    edt_fn_uf.Text := NFe.Emitente.UF;

    if NFe.Transportador.id <> 0 then
    begin
      edt_tr_razao.Text := NFe.Transportador.RAZAO;
      edt_tr_cpf.Text := NFe.Transportador.CPF;
      edt_tr_cnpj.Text := NFe.Transportador.CNPJ;
      edt_tr_ie.Text := NFe.Transportador.IE;
      edt_tr_cidade.Text := NFe.Transportador.MUNICIPIO;
      edt_tr_uf.Text := NFe.Transportador.UF;
    end;

    edt_base_icms.Text := NFe.BASE_ICMS;
    edt_tot_icms.Text := NFe.VALOR_ICMS;
    edt_base_icms_st.Text := NFe.BASE_ICMS_ST;
    edt_tot_icms_st.Text := NFe.VALOR_ICMS_ST;
    edt_tot_icms_deson.Text := NFe.valor_icms_desonerado;
    edt_valor_nfe.Text := NFe.VALOR_NFE;
    edt_tot_frete.Text := NFe.VALOR_FRETE;
    edt_tot_seguro.Text := NFe.VALOR_SEGURO;
    edt_tot_descontos.Text := NFe.VALOR_DESCONTO;
    edt_tot_acrescimos.Text := NFe.VALOR_DESPESAS;
    edt_tot_pis.Text := NFe.VALOR_PIS;
    edt_tot_cofins.Text := NFe.VALOR_COFINS;
    edt_tot_nfe.Text := NFe.TOTAL_NFE;
    edt_data_emi.Text := copy(NFe.DATA_EMISSAO, 0, 10);

    edt_cg_especie.Text := NFe.Carga.ESPECIE;
    edt_cg_qtde.Text := tformats.Coin(NFe.Carga.QUANTIDADE);
    if edt_cg_qtde.Text = '0' then
      edt_cg_qtde.Clear;
    edt_cg_bruto.Text := FLOATTOSTR(NFe.Carga.PESO_BRUTO);
    if edt_cg_bruto.Text = '0' then
      edt_cg_bruto.Clear;
    edt_cg_liquido.Text := FLOATTOSTR(NFe.Carga.PESO_liquido);
    if edt_cg_liquido.Text = '0' then
      edt_cg_liquido.Clear;
    edt_cg_marca.Text := NFe.Carga.MARCA;

    mmObs.Lines.Clear;
    mmObs.Lines.Text := NFe.observacoes;
  end;

  LoadProdutos(Importacao.id);

end;

procedure TFrm_importacao_nfe.fdFromQuery;
begin
  defaultLayout(false, false);

  with SQL_IMPORTACAO do
  begin

    edt_import_user.Text := Fieldbyname('USUARIO').asString;
    edt_import_status.Text := Fieldbyname('STATUS_IMPORTACAO').asString;
    edt_dt_import_inicio.Text := tformats.DateTime(Fieldbyname('DATA_INICIO').AsDateTime);
    edt_dt_import_fim.Text := tformats.DateTime(Fieldbyname('DATA_FIM').AsDateTime);

    edt_chave.Text := Fieldbyname('CHAVE').asString;
    edt_nat_op.Text := Fieldbyname('NAT_OP').asString;
    edt_num_nfe.Text := Fieldbyname('NFE').asString;

    edt_fn_razao.Text := Fieldbyname('F_RAZAO').asString;
    edt_fn_fantasia.Text := Fieldbyname('F_FANTASIA').asString;
    edt_fn_cnpj.Text := tformats.CNPJ(Fieldbyname('F_CNPJ').asString);
    edt_fn_ie.Text := Fieldbyname('F_IE').asString;
    edt_fn_cidade.Text := Fieldbyname('F_MUNICIPIO').asString;
    edt_fn_uf.Text := Fieldbyname('F_ESTADO').asString;

    edt_tr_razao.Text := Fieldbyname('T_RAZAO').asString;
    edt_tr_cpf.Text := tformats.CPF(Fieldbyname('T_CPF').asString);
    edt_tr_cnpj.Text := tformats.CNPJ(Fieldbyname('T_CNPJ').asString);
    edt_tr_ie.Text := Fieldbyname('T_IE').asString;
    edt_tr_cidade.Text := Fieldbyname('T_MUNICIPIO').asString;
    edt_tr_uf.Text := Fieldbyname('T_ESTADO').asString;

    edt_base_icms.Text := tformats.Money(Fieldbyname('BASE_ICMS').asExtended);
    edt_tot_icms.Text := tformats.Money(Fieldbyname('VALOR_ICMS').asExtended);
    edt_base_icms_st.Text := tformats.Money(Fieldbyname('BASE_ICMS_ST').asExtended);
    edt_tot_icms_st.Text := tformats.Money(Fieldbyname('VALOR_ICMS_ST').asExtended);
    edt_tot_icms_deson.Text := tformats.Money(Fieldbyname('ICMS_DESONERADO').asExtended);
    edt_valor_nfe.Text := tformats.Money(Fieldbyname('VALOR_NFE').asExtended);
    edt_tot_frete.Text := tformats.Money(Fieldbyname('VALOR_FRETE').asExtended);
    edt_tot_seguro.Text := tformats.Money(Fieldbyname('VALOR_SEGURO').asExtended);
    edt_tot_descontos.Text := tformats.Money(Fieldbyname('VALOR_DESCONTO').asExtended);
    edt_tot_acrescimos.Text := tformats.Money(Fieldbyname('VALOR_DESPESAS').asExtended);
    edt_tot_pis.Text := tformats.Money(Fieldbyname('VALOR_PIS').asExtended);
    edt_tot_cofins.Text := tformats.Money(Fieldbyname('VALOR_COFINS').asExtended);
    edt_tot_nfe.Text := tformats.Money(Fieldbyname('TOTAL_NFE').asExtended);
    edt_data_emi.Text := tformats.DateTime(Fieldbyname('DATA_EMISSAO').AsDateTime, 'dd/mm/yyyy');

    edt_cg_especie.Text := Fieldbyname('ESPECIE_CARGA').asString;
    edt_cg_qtde.Text := ifthen(Fieldbyname('QUANTIDADE_CARGA').asString = '0', '', Fieldbyname('QUANTIDADE_CARGA').asString);
    edt_cg_bruto.Text := ifthen(Fieldbyname('PESO_BRUTO').asString = '0', '', Fieldbyname('PESO_BRUTO').asString);
    edt_cg_liquido.Text := ifthen(Fieldbyname('PESO_LIQUIDO').asString = '0', '', Fieldbyname('PESO_LIQUIDO').asString);
    edt_cg_marca.Text := Fieldbyname('MARCA_CARGA').asString;

    mmObs.Lines.Clear;
    mmObs.Lines.Text := Fieldbyname('OBSERVACOES').asString;

    LoadProdutos(Fieldbyname('I_ID').AsInteger);

  end;

  stateButtons;

end;

procedure TFrm_importacao_nfe.FORMCLOSE(SENDER: TOBJECT; var ACTION: TCLOSEACTION);
begin
  if CANCELAR_IMPORT then
  begin
    ACTION := CAFREE;
    self := NIL;
  end
  else
    abort;
end;

procedure TFrm_importacao_nfe.FORMKEYDOWN(SENDER: TOBJECT; var KEY: WORD; SHIFT: TSHIFTSTATE);
begin

  if KEY = VK_ESCAPE then
    CLOSE;

end;

procedure TFrm_importacao_nfe.FormShow(SENDER: TOBJECT);
begin
  try

    TFunctions.changeChecked([chkImportadas, chkPausa, chkCanceladas], true);

    edt_dt_inicio.date := tenv.date.firstdayofmonth;
    edt_dt_fim.date := now;
    edt_dfe_inicio.date := tenv.date.sumDays(-360); // Um ano
    edt_dfe_fim.date := now;

    defaultLayout(true);
    tsDestinadas.Caption := tsDestinadas.Caption + ' ' + tformats.CNPJ(tempresa.Create.CNPJ);
    reloadDFE;

  except
    on e: Exception do
      tdialogs.wnErro('Importação NF-e', 'Erro ao abrir tela de importação:' + slinebreak + e.Message);
  end;
end;

procedure TFrm_importacao_nfe.gdConsImportDBTableView1CellDblClick(SENDER: TcxCustomGridTableView; ACellViewInfo: TcxGridTableDataCellViewInfo; AButton: TMouseButton;
  AShift: TSHIFTSTATE; var AHandled: BOOLEAN);
begin
  SQL_IMPORTACAO.Active := false;
  SQL_IMPORTACAO.ParamByName('pid').AsInteger := SQL_CONSULTA_IMPORTACAOID.AsInteger;
  SQL_IMPORTACAO.Active := true;
  tsImportacao.Show;
  fdFromQuery;
end;

procedure TFrm_importacao_nfe.gdConsImportDBTableView1CustomDrawCell(SENDER: TcxCustomGridTableView; ACanvas: TcxCanvas; AViewInfo: TcxGridTableDataCellViewInfo;
  var ADone: BOOLEAN);
begin
  TFunctions.StripedGrid(ACanvas, AViewInfo);
end;

procedure TFrm_importacao_nfe.ImportarFromFile(path_xml: string);
begin
  try
    tdialogs.wnOpNF.Show('Importando Dados' + slinebreak + 'da XML ...', 55);
    path_xml := TFile.copy(path_xml, tdir.NFe.Entrada + TFunctions.replace(TFunctions.clearUTF8(ExtractFileName(path_xml)), ' ', '_'));
    NFe.ImportarNF(path_xml, Importacao);
    fdFromModel;
    tdialogs.wnOpNF.Free;
  except
    on e: Exception do
    begin
      tdialogs.wnOpNF.Free;
      raise Exception.Create(e.Message);
    end;
  end;
end;

procedure TFrm_importacao_nfe.ImportarNFe1Click(SENDER: TOBJECT);
var
  manifesto: Integer;
  path_xml: string;
begin
  try
    manifesto := strtoint(dbedtId_Manifesto.EditValue);
    if manifesto in [1, 3, 4, 99] then // não confirmação
      tdialogs.WNALERTA('Importar NF-e', 'Para importar uma NF-e emitida contra o cnpj da empresa' + slinebreak + ' a nota deve ser manifestada antes com o status' + slinebreak +
        '"Confirmação da Operação!', 14)
    else // Confirmação da operação
    begin
      if CANCELAR_IMPORT then
      begin
        Importacao := TImportacao.Create;
        Importacao.Iniciar;
        NFe := TNFe.Create;
        path_xml := SQL_NF_EMITIDASCAMINHO_XML.asString;
        defaultLayout(true);
        ImportarFromFile(path_xml);
        edt_dt_import_inicio.Text := Importacao.DATA_INICIO;
        edt_import_user.Text := Importacao.USUARIO.NOME;
        edt_import_status.Text := Importacao.STATUS_IMPORTACAO;
        tsImportacao.Show;
        vinc_nat_op;
        stateButtons;
      end;
    end;
  except
    on e: Exception do
    begin
      Importacao := nil;
      NFe := nil;
      tdialogs.wnErro('Importar NF-e', 'Erro ao importar NF-e "' + dbedtChave.EditValue + '":' + slinebreak + e.Message);
    end;
  end;
end;

procedure TFrm_importacao_nfe.tab_consulta_focus;
begin
  tsConsulta.Show;
  tsImportadas.Show;
end;

procedure TFrm_importacao_nfe.tbclStatus_ImportacaoCustomDrawCell(SENDER: TcxCustomGridTableView; ACanvas: TcxCanvas; AViewInfo: TcxGridTableDataCellViewInfo; var ADone: BOOLEAN);
begin
  TFunctions.setImageByStatus(['FINALIZADA', 'CANCELADA', 'PAUSADA'], [0, 1, 2], ACanvas, tbclStatus_Importacao.Index, ilStatus, AViewInfo);
  ADone := true;
end;

procedure TFrm_importacao_nfe.tmrTimer(SENDER: TOBJECT);
begin
  reloadDFE;
end;

procedure TFrm_importacao_nfe.dbtvMainCFOPPropertiesButtonClick(SENDER: TOBJECT; AButtonIndex: Integer);
var
  aux: TEdit;
begin
  aux := TEdit.Create(nil);

  tfrm_consulta_generica.Create.consultaCFOP(aux).showmodal;
  if aux.Text <> EMPTYSTR then
  begin
    dbtvMainCFOP.EditValue := aux.Text;
    doEdition;
  end;

  aux.Free;
end;

procedure TFrm_importacao_nfe.editButtonsProperties(SENDER: TcxCustomGridTableItem; ARecord: TcxCustomGridRecord; var AProperties: TcxCustomEditProperties);
begin

  IF ARecord.values[dbtvMainDESTINO.Index] = '0' THEN
    AProperties := buttonEditNotVisible.Properties

  ELSE if ARecord.values[dbtvMainDESTINO.Index] = '1' then
    AProperties := buttonEditVisible.Properties;

  AProperties.OnButtonClick := TcxButtonEditProperties(SENDER.Properties).OnButtonClick;

end;

procedure TFrm_importacao_nfe.dbtvMainCODIGOPropertiesButtonClick(SENDER: TOBJECT; AButtonIndex: Integer);
var
  xEdit: TEdit;
  objProduto: TProduto;
begin
  if AButtonIndex = 0 then
  begin
    xEdit := TEdit.Create(nil);
    Frm_Consulta_Generica := tfrm_consulta_generica.Create(nil, cgproduto, xEdit);
    Frm_Consulta_Generica.showmodal;
    if xEdit.Text <> '' then
    begin
      try
        objProduto := TProduto.Create(xEdit.Text);

        if tdialogs.wnConfirmacao('Vincular Produtos', format('Deseja vincular as informações do produto "%s" cadastrado' + slinebreak + 'com o Item: %s - "%s" da nota fiscal?',
          [objProduto.DESCRICAO, dbtvMainITEM.EditValue, dbtvMainDESCRICAO.EditValue]), 11, taLeftJustify) then
        begin

          dbtvMainCODIGO.EditValue := objProduto.PROD_CODIGO;
          dbtvMainDESCRICAO.EditValue := objProduto.DESCRICAO;
          dbtvMainCOD_BARRAS.EditValue := objProduto.PROD_EAN;
          dbtvMainTIPO.EditValue := objProduto.TIPO_ITEM;
          dbtvMainMARCA.EditValue := objProduto.MARCA;

          dbtvMainMARGEM_LUCRO.EditValue := objProduto.MARGEM_LUCRO_VAREJO;
          dbtvMainDESPESAS_OPERACIONAIS.EditValue := objProduto.DESP_OPERARCIONAIS;
          dbtvMainDESC_MAXIMO.EditValue := objProduto.PROD_MAXDESC_VAR;
          dbtvMainCOMISSAO.EditValue := objProduto.PROD_COMISSAO_LOJA_VAREJO;
          dbtvMainPRECO_VENDA.EditValue := objProduto.PROD_PRECO_VAR;

          dbtvMainCST_ICMS.EditValue := objProduto.ICMS_CST;
          dbtvMainPROD_NFe_N16_pICMS.EditValue := objProduto.PROD_NFe_N16_pICMS;
          dbtvMainCST_PIS.EditValue := objProduto.PIS_CST;
          dbtvMainCST_COFINS.EditValue := objProduto.COFINS_CST;
          dbtvMainCSOSN.EditValue := objProduto.CSOSN;

          Importacao.AtualizarCFOPItens(dbtvMainID.EditValue);
          doEdition;

        end;

      finally
        xEdit.Free;
        objProduto.Free;
      end;
    end;
  end;
end;

procedure TFrm_importacao_nfe.dbtvMainCSOSNPropertiesButtonClick(SENDER: TOBJECT; AButtonIndex: Integer);
var
  aux: TEdit;
begin
  aux := TEdit.Create(nil);

  tfrm_consulta_generica.Create.consultaCSOSN(aux).showmodal;

  if aux.Text <> '' then
  begin

    dbtvMainCSOSN.EditValue := aux.Text;
    dbtvMainCST_ICMS.EditValue := tcsosn.Create(dbtvMainCSOSN.EditValue).CST_ICMS;
    doEdition;
    Importacao.AtualizarCFOPItens(dbtvMainID.EditValue);
    doEdition;
  end;

  aux.Free;

end;

procedure TFrm_importacao_nfe.dbtvMainCST_COFINSPropertiesButtonClick(SENDER: TOBJECT; AButtonIndex: Integer);
begin
  consultar_pis_cofins(cgPis);
end;

procedure TFrm_importacao_nfe.dbtvMainCST_ICMSPropertiesButtonClick(SENDER: TOBJECT; AButtonIndex: Integer);
var
  ICMS: TEdit;
begin
  ICMS := TEdit.Create(nil);

  Frm_Consulta_Generica := tfrm_consulta_generica.Create(nil, TConsultaGenericaKind.cgICMS, ICMS);
  Frm_Consulta_Generica.showmodal;

  if ICMS.Text <> '' then
  begin

    if ICMS.Text = '00' then
      dbtvMainPROD_NFe_N16_pICMS.EditValue := TParametros_Tributacao.PROD_NFe_N16_pICMS
    else if ansimatchstr(ICMS.Text, ['40', '41', '60']) then
      dbtvMainPROD_NFe_N16_pICMS.EditValue := 0;

    dbtvMainCST_ICMS.EditValue := ICMS.Text;
    dbtvMainCSOSN.EditValue := ticms.Create(dbtvMainCST_ICMS.EditValue).CSOSN;

    doEdition;
    Importacao.AtualizarCFOPItens(dbtvMainID.EditValue);
    doEdition;
  end;

end;

procedure TFrm_importacao_nfe.dbtvMainCST_PISPropertiesButtonClick(SENDER: TOBJECT; AButtonIndex: Integer);
begin
  consultar_pis_cofins(cgPis);
end;

procedure TFrm_importacao_nfe.dbtvMainCustomDrawCell(SENDER: TcxCustomGridTableView; ACanvas: TcxCanvas; AViewInfo: TcxGridTableDataCellViewInfo; var ADone: BOOLEAN);
var
  __value: variant;
begin
  ADone := true;
  __value := varastype(dbtvMain.ViewData.Records[AViewInfo.GridRecord.Index].values[dbtvMainDESTINO.Index], varString);
  ACanvas.Font.Color := TFunctions.ColorByStatus(__value, ['0', '1'], [clWebRed, clWebMediumBlue]);

  if __value = '0' then
    if AViewInfo.item.Index in [dbtvMainMARCA.Index, dbtvMainTIPO.Index, dbtvMainDESC_MAXIMO.Index, dbtvMainMARGEM_LUCRO.Index, dbtvMainDESPESAS_OPERACIONAIS.Index,
      dbtvMainPRECO_VENDA.Index, dbtvMainCOMISSAO.Index] then
    begin
      ACanvas.Font.Color := rgb(213, 213, 213);
      ACanvas.Brush.Color := rgb(213, 213, 213);
    end;

  if __value = '1' then
    if AViewInfo.item.Index in [dbtvMainORIGEM.Index] then
    begin
      ACanvas.Font.Color := rgb(213, 213, 213);
      ACanvas.Brush.Color := rgb(213, 213, 213);
    end;
  ADone := false;
end;

procedure TFrm_importacao_nfe.dbtvMainCustomDrawGroupCell(SENDER: TcxCustomGridTableView; ACanvas: TcxCanvas; AViewInfo: TcxGridTableCellViewInfo; var ADone: BOOLEAN);
var
  valueEdit, recNIDX: Integer;
  xDesc: string;
begin

  ADone := true;

  ACanvas.Font.Color := rgb(0, 0, 0);

  recNIDX := TFunctions.replace(TFunctions.getSubRegex(AViewInfo.Text, 'Item\s:\s(\d?\d?\d)'), 'Item : ', varinteger);
  recNIDX := recNIDX + (recNIDX - 1);

  xDesc := varastype(dbtvMain.DataController.values[recNIDX - 1, dbtvMainDESCRICAO.Index], varString);

  AViewInfo.Text := AViewInfo.Text + ' - ' + xDesc;

  valueEdit := varastype(dbtvMain.DataController.values[recNIDX, dbtvMainedt.Index], varinteger);

  if valueEdit = 0 then
    ACanvas.Brush.Color := rgb(250, 232, 150) // amarelo
  else if valueEdit = 1 then
    ACanvas.Brush.Color := rgb(139, 223, 62); // verde

  ADone := false;

end;

procedure TFrm_importacao_nfe.dbtvMainDESPESAS_OPERACIONAISPropertiesEditValueChanged(SENDER: TOBJECT);
begin
  if not preco_venda(dbtvMainMARGEM_LUCRO.EditValue, tcxcurrencyedit(SENDER).value) then
    abort;
end;

procedure TFrm_importacao_nfe.dbtvMainEditing(SENDER: TcxCustomGridTableView; AItem: TcxCustomGridTableItem; var AAllow: BOOLEAN);
begin
  AAllow := false;
  AAllow := (edt_import_status.Text = 'ABERTA') and (SQL_PRODUTOSDESTINO.value = '1');
end;

procedure TFrm_importacao_nfe.dbtvMainEditKeyPress(SENDER: TcxCustomGridTableView; AItem: TcxCustomGridTableItem; AEdit: TcxCustomEdit; var KEY: Char);
begin
  inherited;
  // Desliza dedo Issue

  if AItem.Index in [dbtvMainCODIGO.Index, dbtvMainMARCA.Index, dbtvMainCST_ICMS.Index, dbtvMainCST_PIS.Index, dbtvMainCST_COFINS.Index, dbtvMainORIGEM.Index, dbtvMainCSOSN.Index,
    dbtvMainCFOP.Index] then
    // código
    KEY := #0;

  if AItem.Index in [dbtvMainNCM.Index, dbtvMainCEST.Index] then
    KEY := TFunctions.OnlyNumbers(KEY);

end;

procedure TFrm_importacao_nfe.dbtvMainEditValueChanged(SENDER: TcxCustomGridTableView; AItem: TcxCustomGridTableItem);
begin
  doEdition;
end;

procedure TFrm_importacao_nfe.dbtvMainLeftPosChanged(SENDER: TOBJECT);
begin
  dbtvMain.DataController.Refresh;
end;

procedure TFrm_importacao_nfe.dbtvMainMARCAPropertiesButtonClick(SENDER: TOBJECT; AButtonIndex: Integer);
var
  aux: TEdit;
begin
  aux := TEdit.Create(nil);
  tfrm_consulta_generica.Create.consultaMarca(aux).showmodal;

  if aux.Text <> '' then
  begin
    dbtvMainMARCA.EditValue := aux.Text;
    doEdition;
  end;
  aux.Destroy;
end;

procedure TFrm_importacao_nfe.dbtvMainMARGEM_LUCROPropertiesEditValueChanged(SENDER: TOBJECT);
begin
  if not preco_venda(tcxcurrencyedit(SENDER).value, dbtvMainDESPESAS_OPERACIONAIS.EditValue) then
    abort;
end;

procedure TFrm_importacao_nfe.dbtvMainNCMPropertiesButtonClick(SENDER: TOBJECT; AButtonIndex: Integer);
var
  aux: TEdit;
begin
  aux := TEdit.Create(nil);

  tfrm_consulta_generica.Create.consultaNCM(aux).showmodal;

  if aux.Text <> '' then
  begin
    dbtvMainNCM.EditValue := copy(aux.Text, 0, pos(';', aux.Text) - 1);
    dbtvMainCEST.EditValue := copy(aux.Text, pos(';', aux.Text) + 1, length(aux.Text));
    doEdition;
  end;

  aux.Destroy;
end;

procedure TFrm_importacao_nfe.dbtvMainORIGEMPropertiesButtonClick(SENDER: TOBJECT; AButtonIndex: Integer);
var
  aux: TEdit;
begin
  aux := TEdit.Create(nil);

  Frm_Consulta_Generica := tfrm_consulta_generica.Create(nil, cgORIGEm, aux);
  Frm_Consulta_Generica.showmodal;

  if aux.Text <> '' then
  begin
    dbtvMainORIGEM.EditValue := aux.Text;
    doEdition;
  end;
end;

procedure TFrm_importacao_nfe.dbtvMainPRECO_VENDAPropertiesEditValueChanged(SENDER: TOBJECT);
begin

  if not lucro_despesas(tcxcurrencyedit(SENDER).value) then
    abort;

end;

procedure TFrm_importacao_nfe.dbtvMainQTDEPropertiesEditValueChanged(SENDER: TOBJECT);
begin
  if not calcular_preco_quantidade(tcxcurrencyedit(SENDER).value) then
    abort;
end;

procedure TFrm_importacao_nfe.dbtvMainTIPOGetProperties(SENDER: TcxCustomGridTableItem; ARecord: TcxCustomGridRecord; var AProperties: TcxCustomEditProperties);
begin

  if ARecord.values[dbtvMainDESTINO.Index] = '0' then
    AProperties := TextEdit.Properties

  else if ARecord.values[dbtvMainDESTINO.Index] = '1' then
    AProperties := comboBoxTIPO.Properties;

  AProperties.OnEditValueChanged := TcxButtonEditProperties(SENDER.Properties).OnEditValueChanged;

end;

procedure TFrm_importacao_nfe.dbtvMainTIPOPropertiesEditValueChanged(SENDER: TOBJECT);
var
  tipo: string;
begin
  tipo := TcxComboBox(SENDER).Properties.Items[TcxComboBox(SENDER).SelectedItem];
  tipo := TFunctions.getSubRegex(tipo, '^\d\d?\d');

  if TFunctions.getSubRegex(tipo, '^\d\d?\d') = '07' then
    // material para uso e consumo
    if dbtvMainCST_ICMS.EditValue = '60' then // substituição tributária
      dbtvMainCFOP.EditValue := '1407'
    else
      dbtvMainCFOP.EditValue := '1556'
  else if TFunctions.getSubRegex(tipo, '^\d\d?\d') = '08' then
    // ativo imobilizado
    if dbtvMainCST_ICMS.EditValue = '60' then // substituição tributária
      dbtvMainCFOP.EditValue := '1406'
    else
      dbtvMainCFOP.EditValue := '1551'
  else
    Importacao.AtualizarCFOPItens(dbtvMainID.EditValue);

  dbtvMainTIPO.EditValue := tipo;

end;

procedure TFrm_importacao_nfe.dbtvMainTopRecordIndexChanged(SENDER: TOBJECT);
begin
  dbtvMain.DataController.Refresh;
end;

procedure TFrm_importacao_nfe.dbtvMainUMGetProperties(SENDER: TcxCustomGridTableItem; ARecord: TcxCustomGridRecord; var AProperties: TcxCustomEditProperties);
begin
  if ARecord.values[dbtvMainDESTINO.Index] = '0' then
    AProperties := TextEdit.Properties

  else if ARecord.values[dbtvMainDESTINO.Index] = '1' then
    AProperties := comboboxUND.Properties;

  AProperties.OnEditValueChanged := TcxButtonEditProperties(SENDER.Properties).OnEditValueChanged;

end;

procedure TFrm_importacao_nfe.dbtvMainUMPropertiesEditValueChanged(SENDER: TOBJECT);
begin
  doEdition;
end;

procedure TFrm_importacao_nfe.dbtvMainUMPropertiesNewLookupDisplayText(SENDER: TOBJECT; const AText: TCaption);
begin
  doEdition;
end;

procedure TFrm_importacao_nfe.doEdition;
begin
  btn_desfazer.ENABLED := true;

  Importacao.ItemEditado(dbtvMainITEM.EditValue);

  reloadGrid;
end;

procedure TFrm_importacao_nfe.defaultLayout(PBOOL: BOOLEAN; withStateButtons: BOOLEAN = true);
begin
  btn_vinc_nat_op.ENABLED := false;
  TFunctions.clearfields(self);
  SQL_PRODUTOS.Active := false;
  mmObs.Lines.Clear;

  TFunctions.ChangeEnabled([grp_importacao, grp_nfe, btn_buscar_xml, btn_buscar_xml, btn_finalizar, btn_pausar, btn_desfazer, btn_correcoes], not PBOOL);
  btn_iniciar.Visible := PBOOL;
  btn_finalizar.Visible := not PBOOL;

  if not PBOOL then
    edt_chave.SetFocus;

  if withStateButtons then
    stateButtons;
end;

procedure TFrm_importacao_nfe.LoadProdutos(const pId: Integer);
  procedure loadCombos(qry: TFDQUERY; columnbProps: TcxComboBoxProperties; field: String; field2: String = '');
  begin
    if qry <> nil then
    begin
      qry.first;
      columnbProps.Items.Clear;
      while not qry.Eof do
      begin

        if field2.IsEmpty then
          columnbProps.Items.Add(qry.Fieldbyname(field).asString)
        else
          columnbProps.Items.Add(qry.Fieldbyname(field).asString + ' - ' + qry.Fieldbyname(field2).asString);

        qry.Next;
      end;
    end;
  end;

var
  qry: TFDQUERY;

begin
  with SQL_PRODUTOS do
  begin
    Active := false;
    ParamByName('pid').AsInteger := pId;
    Active := true;
    fetchall;
    if RecordCount > 0 then
    begin
      dbtvMain.ViewData.collapse(true);
      dbtvMain.ViewData.Rows[0].Expand(false);

      loadCombos(TTipo_Produto.Create.getAll, comboBoxTIPO.Properties, 'DESCRICAO');
      loadCombos(TUnidadeMedida.Create.getAll, comboboxUND.Properties, 'SIGLA');

      dbtvMain.OptionsView.ShowEditButtons := gsebAlways;
    end;
  end;
end;

function TFrm_importacao_nfe.lucro_despesas(venda: variant): BOOLEAN;
var
  lucro, despesas: extended;
begin

  result := true;

  if validar_preco_venda(venda, dbtvMainPRECO_UNI.EditValue) then
  begin

    dbtvMainDESPESAS_OPERACIONAIS.EditValue := 0;

    if tchecks.greater(venda, dbtvMainPRECO_UNI.EditValue) then
      lucro := (((venda - dbtvMainPRECO_UNI.EditValue) * 100) / dbtvMainPRECO_UNI.EditValue)
    else if tchecks.equals(venda, dbtvMainPRECO_UNI.EditValue) then
      lucro := 0;

    dbtvMainMARGEM_LUCRO.EditValue := lucro;
    dbtvMainPRECO_VENDA.EditValue := venda;

  end
  else
    result := false;

end;

procedure TFrm_importacao_nfe.ManifestarNFe1Click(SENDER: TOBJECT);
begin
  if not TFunctions.CheckOpen(frm_manifestar_nfe) then
    frm_manifestar_nfe := tfrm_manifestar_nfe.Create(SQL_NF_EMITIDASID.AsInteger);
  frm_manifestar_nfe.showmodal;
  reloadDFE;
end;

procedure TFrm_importacao_nfe.nil_objects;
begin
  Importacao := nil;
  NFe := nil;
end;

procedure TFrm_importacao_nfe.checkDfeChange(SENDER: TOBJECT);
begin
  reloadDFE;
end;

function TFrm_importacao_nfe.preco_venda(lucro, despesas: variant): BOOLEAN;
var
  venda: extended;
begin
  result := true;
  lucro := TFunctions.ValidateVariant(lucro);
  despesas := TFunctions.ValidateVariant(despesas);
  venda := (TFunctions.ValidateVariant(dbtvMainPRECO_UNI.EditValue));
  venda := venda + ((lucro * venda) / 100) + ((despesas * venda) / 100);

  if validar_preco_venda(venda, dbtvMainPRECO_UNI.EditValue) then
  begin
    dbtvMainMARGEM_LUCRO.EditValue := lucro;
    dbtvMainDESPESAS_OPERACIONAIS.EditValue := despesas;
    dbtvMainPRECO_VENDA.EditValue := venda;
  end
  else
    result := false;

end;

procedure TFrm_importacao_nfe.reloadDFE;
const
  sql_base = ' SELECT * FROM NFE_DESTINADAS ';
  sql_order = ' ORDER BY DATA_EMISSAO DESC ';
var
  sql_where: string;
  _VALUE, _FIELD, _STATUS, _DATA: string;
begin

  // if edt_consulta.Text <> '' then
  // begin
  // {
  // Fornecedor
  // CNPJ
  // Chave
  // Valor NF-e
  // }
  // _VALUE := tdb.removeSqlInjection(edt_consulta.Text);
  //
  // _FIELD := TFunctions.getIndex(cbFiltro.SelectedItem, ['FORNECEDOR LIKE "%' + _VALUE + '%"', 'CNPJ LIKE "' + _VALUE + '%"', 'CHAVE LIKE "' + _VALUE + '%"',
  // 'VALOR like "' + _VALUE + '%"']);
  //
  // _FIELD := ' AND ' + _FIELD;
  //
  // end;
  //
  // _STATUS := format('WHERE ID_MANIFESTO in %s ', [tdb.genin([mfe_1.Checked, mfe_2.Checked, mfe_3.Checked, mfe_4.Checked, mfe_0.Checked], [1, 2, 3, 4, 99])]);
  //
  // _DATA := ' AND date(DATA_EMISSAO) BETWEEN "' + formatdatetime('yyyy-mm-dd', dt_dfe_inicio.Date) + '" AND "' + formatdatetime('yyyy-mm-dd', dt_dfe_fim.Date) + '"';
  //
  // sql_where := _STATUS + _DATA + _FIELD;
  //
  // with SQL_NF_EMITIDAS do
  // begin
  // Active := false;
  // CLOSE;
  // sql.Clear;
  // sql.Add(sql_base + sql_where + sql_order);
  // Open;
  // Active := true;
  // end;

end;

procedure TFrm_importacao_nfe.reloadGrid;
begin
  dbtvMain.DataController.RefreshExternalData;
  dbtvMain.DataController.Refresh;
end;

procedure TFrm_importacao_nfe.reloadConsultaNfe;
const
  sql_base = ' SELECT I.ID, I.DATA_INICIO, U.USUARIO, F.RAZAO_SOCIAL, F.CNPJ_CPF, N.NUMERO, N.CHAVE, N.TOTAL_NFE, I.STATUS_IMPORTACAO FROM IMPORTACAO I ' +
    ' JOIN NFE N ON N.ID = I.ID_NFE JOIN USUARIO U ON U.CODIGO = I.ID_USUARIO JOIN FORNECEDOR F ON F.CODIGO = N.ID_EMITENTE ';
  sql_order = ' ORDER BY I.DATA_INICIO DESC ';
var
  sql_where: string;
  _VALUE, _FIELD, _STATUS, _DATA: string;
begin

  if edt_consulta.Text <> '' then
  begin

    _VALUE := tdb.removeSqlInjection(edt_consulta.Text);

    _FIELD := TFunctions.getIndex(cbFiltro.SelectedItem, ['U.USUARIO LIKE "%' + _VALUE + '%"', 'F.RAZAO_SOCIAL LIKE "%' + _VALUE + '%"', 'F.CNPJ_CPF LIKE "' + _VALUE + '%"',
      'N.NUMERO LIKE "' + _VALUE + '%"', 'N.CHAVE LIKE "' + _VALUE + '%"', 'N.TOTAL_NFE like "' + _VALUE + '%"']);

    _FIELD := ' AND ' + _FIELD;

  end;

  _STATUS := format('WHERE I.STATUS_IMPORTACAO in %s ', [tdb.genin([chkImportadas.Checked, chkPausa.Checked, chkCanceladas.Checked], ['FINALIZADA', 'PAUSADA', 'CANCELADA'])]);

  _DATA := ' AND date(I.DATA_INICIO) BETWEEN "' + formatdatetime('yyyy-mm-dd', edt_dt_inicio.date) + '" AND "' + formatdatetime('yyyy-mm-dd', edt_dt_fim.date) + '"';

  sql_where := _STATUS + _DATA + _FIELD;

  with SQL_CONSULTA_IMPORTACAO do
  begin
    Active := false;
    CLOSE;
    sql.Clear;
    sql.Add(sql_base + sql_where + sql_order);
    Open;
    Active := true;
  end;

end;

procedure TFrm_importacao_nfe.stateButtons;
begin

  btn_desfazer.ENABLED := false;
  btn_iniciar.Visible := (ansimatchstr(edt_import_status.Text, ['', 'PAUSADA', 'CANCELADA', 'FINALIZADA']));
  edt_chave.ReadOnly := btn_iniciar.Visible;
  btn_finalizar.Visible := NOT btn_iniciar.Visible;
  btn_finalizar.ENABLED := (edt_import_status.Text = 'ABERTA');
  btn_cancelar.ENABLED := (edt_import_status.Text = 'ABERTA');
  btn_pausar.ENABLED := ((edt_chave.Text <> '') and (edt_import_status.Text = 'ABERTA'));
  btn_pausar.Visible := (edt_import_status.Text <> 'PAUSADA');
  btn_retomar.Visible := (edt_import_status.Text = 'PAUSADA');
  btn_correcoes.ENABLED := ((edt_chave.Text <> '') and (edt_import_status.Text = 'ABERTA'));
  btn_danfe.ENABLED := ((edt_chave.Text <> '') and (edt_import_status.Text <> ''));
  btn_buscar_xml.ENABLED := ((edt_chave.Text = '') and (edt_import_status.Text = 'ABERTA'));
  btn_vinc_nat_op.ENABLED := ((edt_chave.Text <> '') and (edt_import_status.Text = 'ABERTA'));

end;

function TFrm_importacao_nfe.validar_preco_venda(value, preco_medio: extended): BOOLEAN;
begin
  result := true;
  if tchecks.Less(value, preco_medio) then
  begin
    tdialogs.WNALERTA('Preço de Venda', 'Preço de venda do item deve ser maior ou igual ao seu preço unitário de custo!');
    result := false;
  end;
end;

procedure TFrm_importacao_nfe.vinc_nat_op;
var
  n1, n2: string;
  n3: Integer;
begin
  if not TFunctions.CheckOpen(frm_vincular_nat_op) then
  begin

    n1 := Importacao.NATUREZA_OP;
    n2 := '';
    if NFe.NATUREZA_OP <> nil then
      n2 := NFe.NATUREZA_OP.DESCRICAO;
    n3 := NFe.id;

    frm_vincular_nat_op := tfrm_vincular_nat_op.Create(nil, n1, n2, n3);

    if NFe.Emitente.UF = NFe.destinatario.UF then
      frm_vincular_nat_op.genFilter('ENTRADA', inttostr(NFe.FINALIDADE), 'DENTRO')
    else
      frm_vincular_nat_op.genFilter('ENTRADA', inttostr(NFe.FINALIDADE), 'FORA');

    frm_vincular_nat_op.showmodal;

    NFe.RecarregarNatOp;

    Importacao.AtualizarCFOPItens;
    reloadGrid;

    if NFe.NATUREZA_OP <> nil then
      edt_nat_op.Text := NFe.NATUREZA_OP.DESCRICAO
    else
      edt_nat_op.Text := Importacao.NATUREZA_OP

  end;
end;

end.

Trocou ('MARCA por ('PROD_MARCA : automaticamente em 16/06/2020 16:08
Trocou ('PROD_MARCA por ('MARCA : automaticamente em 16/06/2020 16:08
Trocou DESCONTO_M_VAREJO por PROD_MAXDESC_VAR : automaticamente em 16/06/2020 22:28
Trocou COMISSAO_BALCAO por PROD_COMISSAO_LOJA : automaticamente em 16/06/2020 22:42
Trocou PRECO_FINAL_VAREJO por PROD_PRECO_VAR : automaticamente em 17/06/2020 06:56
Trocou ALIQ_ICMS por PROD_NFe_N16_pICMS : automaticamente em 18/06/2020 07:51
Trocou ALIQ_IPI por PROD_NFe_O13_pIPI : automaticamente em 18/06/2020 10:50
