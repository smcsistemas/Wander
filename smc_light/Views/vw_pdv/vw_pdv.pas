//Verificado automaticamente em 16/06/2020 09:29
{ v 16.11.16 17:44 }
unit vw_pdv;
{
========================================================================================================================================
ALT|   DATA |HORA |UNIT                        |Descrição                                                                              |
---|--------|-----|----------------------------|----------------------------------------------------------------------------------------
332|15/06/20|13:35|vw_pdv                      |Passa a tratar PRODUTO_PROD(PROD_EAN)    ao invés de PRODUTO(CODIGO_BARRAS)
========================================================================================================================================
}
interface

uses
  Winapi.Windows, System.SysUtils, System.Variants,
  System.Classes, Vcl.Graphics, Vcl.Controls,
  Vcl.Forms, Vcl.StdCtrls, Vcl.Grids, Vcl.DBGrids,
  Vcl.Mask,
  cxButtons,
  Vcl.ExtCtrls,
  FireDAC.Stan.Param,
  Data.DB,
  FireDAC.Comp.DataSet, FireDAC.Comp.Client,
  dateutils,
  vw_consulta_generica, c_Globals, Math, consul_nfce,
  venda_mercadoria, cadastro_produto, desconto_acrescimo, strutils, h_db,
  h_Dialogs, h_Formats,
  h_functions, v_env, vw_views, S_Parametros_NF, S_Module, cxGraphics, cxLookAndFeels, cxLookAndFeelPainters, Vcl.Menus, dxSkinsCore,
  dxSkinBlack, dxSkinBlue, dxSkinBlueprint,
  dxSkinCaramel,
  dxSkinCoffee, dxSkinDarkRoom, dxSkinDarkSide, dxSkinDevExpressDarkStyle, dxSkinDevExpressStyle, dxSkinFoggy, dxSkinGlassOceans,
  dxSkinHighContrast, dxSkiniMaginary, dxSkinLilian,
  dxSkinLiquidSky,
  dxSkinLondonLiquidSky, dxSkinMcSkin, dxSkinMetropolis, dxSkinMetropolisDark, dxSkinMoneyTwins, dxSkinOffice2007Black,
  dxSkinOffice2007Blue, dxSkinOffice2007Green,
  dxSkinOffice2007Pink,
  dxSkinOffice2007Silver, dxSkinOffice2010Black, dxSkinOffice2010Blue, dxSkinOffice2010Silver, dxSkinOffice2013DarkGray,
  dxSkinOffice2013LightGray, dxSkinOffice2013White,
  dxSkinOffice2016Colorful,
  dxSkinOffice2016Dark, dxSkinPumpkin, dxSkinSeven, dxSkinSevenClassic, dxSkinSharp, dxSkinSharpPlus, dxSkinSilver, dxSkinSpringTime,
  dxSkinStardust, dxSkinSummer2008,
  dxSkinTheAsphaltWorld,
  dxSkinsDefaultPainters, dxSkinValentine, dxSkinVisualStudio2013Blue, dxSkinVisualStudio2013Dark, dxSkinVisualStudio2013Light,
  dxSkinVS2010, dxSkinWhiteprint, dxSkinXmas2008Blue,
  FireDAC.Stan.Intf,
  FireDAC.Stan.Option, dialogs, FireDAC.Stan.Error, FireDAC.DatS, FireDAC.Phys.Intf, FireDAC.DApt.Intf, FireDAC.Stan.Async, FireDAC.DApt,
  S_Parametros_Venda, cxControls,
  cxContainer, cxEdit, cxTextEdit, Vcl.ComCtrls, registry, abri_caixa,
  vw_fechar_caixa, confirm_fechamento;

type
  Tfrm_pdv = class(TForm)
    SQL_ProdutoConsulta: TFDQuery;
    SQL_Venda: TFDQuery;
    sql_increment_venda: TFDQuery;
    Sql_consulta_itens: TFDQuery;
    DS_Consulta_Itens: TDataSource;
    sql_totalVenda: TFDQuery;
    sql_deleteitem: TFDQuery;
    SQL_AtualizaSaldo: TFDQuery;
    SQLCancelarVenda: TFDQuery;
    sql_increment_vendaAUTO_INCREMENT: TLargeintField;
    Sql_consulta_itensCODIGO: TFDAutoIncField;
    Sql_consulta_itensCODIGO_VENDA: TIntegerField;
    Sql_consulta_itensCODIGO_ITEM_VENDA: TIntegerField;
    Sql_consulta_itensCODIGO_PRODUTO: TIntegerField;
    Sql_consulta_itensDESCRICAO: TStringField;
    Sql_consulta_itensUNIDADE: TStringField;
    Sql_consulta_itensPRECO: TBCDField;
    Sql_consulta_itensACRESCIMO: TBCDField;
    Sql_consulta_itensDESCONTO: TBCDField;
    Sql_consulta_itensPRECO_TOTAL: TBCDField;
    sql_totalVendaSUMPRECO_TOTAL: TFMTBCDField;
    Sql_consulta_itensQUANTIDADE: TSingleField;
    SQL_VendaCODIGO_VENDA: TIntegerField;
    SQL_VendaCPF_CLIENTE: TStringField;
    SQL_VendaNOME_CLIENTE: TStringField;
    SQL_VendaCODIGO_CLIENTE: TIntegerField;
    SQL_VendaVENDA_FATURADA: TStringField;
    SQL_VendaVALOR_VENDA: TBCDField;
    SQL_VendaACRESCIMO: TBCDField;
    SQL_VendaDESCONTO: TBCDField;
    SQL_VendaTOTAL_VENDA: TBCDField;
    SQL_VendaTROCO: TBCDField;
    SQL_VendaSTATUS: TStringField;
    SQL_VendaOPERADOR: TStringField;
    SQL_VendaCAIXA: TStringField;
    SQL_VendaIE_CLIENTE: TStringField;
    SQL_VendaVALOR_PAGO: TBCDField;
    SQL_VendaDATA: TDateField;
    SQL_VendaHORA: TTimeField;
    SQL_VendaTELEFONE_CLIENTE: TStringField;
    SQL_VendaRUA_CLIENTE: TStringField;
    SQL_VendaNUMERO_CLIENTE: TStringField;
    SQL_VendaBAIRRO_CLIENTE: TStringField;
    SQL_VENDA_ITEM: TFDQuery;
    gridItens: TDBGrid;
    pninfo: TPanel;
    Label24: TLabel;
    Shape1: TShape;
    Label25: TLabel;
    lbl_tipoemissao: TLabel;
    relogio: TTimer;
    pninfovenda: TPanel;
    lbl_c_cliente: TLabel;
    lbl_cliente: TLabel;
    lbl_c_cnpj: TLabel;
    lbl_cnpj: TLabel;
    lbl_c_tel: TLabel;
    lbl_tel: TLabel;
    lbl_c_cod_venda: TLabel;
    lbl_cod_venda: TLabel;
    lbl_c_operador: TLabel;
    lbl_operador: TLabel;
    lbl_c_caixa: TLabel;
    lbl_caixa: TLabel;
    Data: TLabel;
    hora: TLabel;
    pnproduto: TPanel;
    grpDescProduto: TGroupBox;
    Label1: TLabel;
    grpEstoque: TGroupBox;
    Label12: TLabel;
    lbl_estoque: TLabel;
    grpqtde: TGroupBox;
    Label8: TLabel;
    lbl_UnidadeMedida: TLabel;
    Edit2: TEdit;
    grpcodprod: TGroupBox;
    Edt_codBarras: TEdit;
    grpsubtot: TGroupBox;
    lbl_subtotal: TLabel;
    Label18: TLabel;
    Label3: TLabel;
    lnup: TPanel;
    lndown: TPanel;
    pncabecalho: TPanel;
    lblstatuscaixa: TLabel;
    Label2: TLabel;
    Label11: TLabel;
    pnbotoes: TGridPanel;
    BtnConsultarPreco: TcxButton;
    BtnInformarCliente: TcxButton;
    BtnRemoverItem: TcxButton;
    BtnFecharVenda: TcxButton;
    BtnCancelarVenda: TcxButton;
    Label4: TLabel;
    BtnAlterarPreco: TcxButton;
    btn_alterar_quantidade: TcxButton;
    BtnFecharCaixa: TcxButton;
    BtnVendaAux: TcxButton;
    BtnStatusServico: TcxButton;
    BtnInformarVendedor: TcxButton;
    GridPanel1: TGridPanel;
    BtnConsultarVenda: TcxButton;
    BtnConsultarNFCE: TcxButton;
    cxButton1: TcxButton;
    cxButton2: TcxButton;
    BtnDescontoAcrescimos: TcxButton;
    lbl_venda_aux: TLabel;
    BtnSair: TcxButton;
    lbl_c_vendedor: TLabel;
    lbl_vendedor: TLabel;
    SQL_VendaCOD_NFCE: TStringField;
    SQL_VendaCOD_VENDEDOR: TIntegerField;
    SQL_ProdutoConsultaCOD_BARRAS_AUXILIAR: TStringField;
    SQL_ProdutoConsultaPROD_DESCRICAO: TStringField;
    SQL_ProdutoConsultaPROD_DETALHES: TStringField;
    SQL_ProdutoConsultaPROD_REFERENCIASFABRICA: TStringField;
    SQL_ProdutoConsultaMARCA: TStringField;
    SQL_ProdutoConsultaFAMILIA: TStringField;
    SQL_ProdutoConsultaGRUPO: TStringField;
    SQL_ProdutoConsultaSUBGRUPO: TStringField;
    SQL_ProdutoConsultaPROD_CDUNIDADE: TStringField;
    SQL_ProdutoConsultaDATA_CADASTRO: TDateField;
    SQL_ProdutoConsultaTIPO_ITEM: TStringField;
    SQL_ProdutoConsultaESTOQUE_MINIMO: TStringField;
    SQL_ProdutoConsultaPRECO_CUSTO: TBCDField;
    SQL_ProdutoConsultaFRETE: TBCDField;
    SQL_ProdutoConsultaIMPOSTO: TBCDField;
    SQL_ProdutoConsultaDESP_OPERACIONAIS: TBCDField;
    SQL_ProdutoConsultaCUSTO_MEDIO: TBCDField;
    SQL_ProdutoConsultaMARGEM_LUCRO: TBCDField;
    SQL_ProdutoConsultaMARGEM_L_VAREJO: TBCDField;
    SQL_ProdutoConsultaMARGEM_L_ATACADO: TBCDField;
    SQL_ProdutoConsultaMARGEM_L_DISTRIBUIDOR: TBCDField;
    SQL_ProdutoConsultaDESCONTO_MAXIMO: TBCDField;
    SQL_ProdutoConsultaDESCONTO_M_VAREJO: TBCDField;
    SQL_ProdutoConsultaDESCONTO_M_ATACADO: TBCDField;
    SQL_ProdutoConsultaDESCONTO_M_DISTRIBUIDOR: TBCDField;
    SQL_ProdutoConsultaDESCONTO_L_VAREJO: TBCDField;
    SQL_ProdutoConsultaDESCONTO_L_ATACADO: TBCDField;
    SQL_ProdutoConsultaDESCONTO_L_DISTRIBUIDOR: TBCDField;
    SQL_ProdutoConsultaPAGAR_COMISSAO: TBCDField;
    SQL_ProdutoConsultaCOMISSAO_BALCAO: TBCDField;
    SQL_ProdutoConsultaBALCAO_COMISSAO_ATACADO: TBCDField;
    SQL_ProdutoConsultaBALCAO_COMISSAO_DISTRIBUIDOR: TBCDField;
    SQL_ProdutoConsultaCOMISSAO_EXTERNA: TBCDField;
    SQL_ProdutoConsultaEXTERNA_COMISSAO_VAREJO: TBCDField;
    SQL_ProdutoConsultaEXTERNA_COMISSAO_ATACADO: TBCDField;
    SQL_ProdutoConsultaEXTERNA_COMISSAO_DISTRIBUIDOR: TBCDField;
    SQL_ProdutoConsultaPRECO_FINAL_ATACADO: TBCDField;
    SQL_ProdutoConsultaPRECO_FINAL_DISTRIBUIDOR: TBCDField;
    SQL_ProdutoConsultaPRECO_FINAL_VAREJO: TBCDField;
    SQL_ProdutoConsultaPROMO_VAREJO: TBCDField;
    SQL_ProdutoConsultaPROMO_ATACADO: TBCDField;
    SQL_ProdutoConsultaPROMO_DISTRIBUIDOR: TBCDField;
    SQL_ProdutoConsultaVALOR_PROMOCIONAL_ATACADO: TBCDField;
    SQL_ProdutoConsultaVALOR_PROMOCIONAL_DISTRIBUIDOR: TBCDField;
    SQL_ProdutoConsultaVALOR_PROMOCIONAL_VAREJO: TBCDField;
    SQL_ProdutoConsultaSALDO: TBCDField;
    SQL_ProdutoConsultaALIQ_ICMS: TBCDField;
    SQL_ProdutoConsultaLEIS: TStringField;
    SQL_ProdutoConsultaGENERO: TStringField;
    SQL_ProdutoConsultaFORNECEDOR_NOME: TStringField;
    SQL_ProdutoConsultaCOD_COMB: TStringField;
    SQL_ProdutoConsultaALIQ_IPI: TStringField;
    SQL_ProdutoConsultaENQUADRAMENTO_IPI: TIntegerField;
    SQL_ProdutoConsultaCODIGO_LOCALIZACAO: TIntegerField;
    SQL_ProdutoConsultaICMS_CST: TStringField;
    SQL_ProdutoConsultaICMS_IPI: TStringField;
    SQL_ProdutoConsultaPIS_CST: TStringField;
    SQL_ProdutoConsultaCOFINS_CST: TStringField;
    SQL_ProdutoConsultaCODIGO_ORIGEM_MERCADORIA: TIntegerField;
    SQL_ProdutoConsultaCSOSN: TStringField;
    SQL_ProdutoConsultaNCM: TStringField;
    SQL_ProdutoConsultaCEST: TStringField;
    SQL_ProdutoConsultaANP: TStringField;
    SQL_ProdutoConsultaEX_IPI: TSingleField;
    SQL_ProdutoConsultaSTATUS_CADASTRAL: TStringField;
    SQL_ProdutoConsultaPESAVEL: TStringField;
    SQL_ProdutoConsultaUTILIZA_ETIQUETA_BALANCA: TStringField;
    SQL_ProdutoConsultaUSA_LOTE: TStringField;
    SQL_ProdutoConsultaCONTROLADO: TStringField;
    SQL_ProdutoConsultaCODIGO_FORNECEDOR: TIntegerField;
    SQL_ProdutoConsultaQUANT_MINI_VAREJO_P: TBCDField;
    SQL_ProdutoConsultaQUANT_MINI_ATACADO_P: TBCDField;
    SQL_ProdutoConsultaQUANT_MINI_DISTRIBUIDOR_P: TBCDField;
    SQL_ProdutoConsultaQUANT_MINI_VAREJO_Q: TBCDField;
    SQL_ProdutoConsultaQUANT_MINI_ATACADO_Q: TBCDField;
    SQL_ProdutoConsultaQUANT_MINI_DISTRIBUIDOR_Q: TBCDField;
    SQL_ProdutoConsultaQUANT_MINI_VAREJO_D: TBCDField;
    SQL_ProdutoConsultaQUANT_MINI_DISTRIBUIDOR_D: TBCDField;
    SQL_ProdutoConsultaQUANT_MINI_ATACADO_D: TBCDField;
    SQL_ProdutoConsultaCST_IPI: TStringField;
    SQL_ProdutoConsultaCOD_BALANCA_1: TStringField;
    SQL_ProdutoConsultaCOD_BALANCA_2: TStringField;
    SQL_ProdutoConsultaCOD_BALANCA_3: TStringField;
    SQL_ProdutoConsultaBALCAO_COMISSAO_VAREJO: TBCDField;
    SQL_ProdutoConsultaPROMOCAO_INICIO: TDateField;
    SQL_ProdutoConsultaPROMOCAO_TERMINO: TDateField;
    SQL_ProdutoConsultaREDUCAO_ICMS: TBCDField;
    SQL_ProdutoConsultaALIQ_ICMS_SUBST: TStringField;
    SQL_ProdutoConsultaREDUCAO_ICMS_ST: TBCDField;
    SQL_ProdutoConsultaLUCRO_SUBST_TRIBUTARIA: TBCDField;
    SQL_ProdutoConsultaVALOR_PAUTA_BC_ST: TBCDField;
    lblComanda: TLabel;
    edtComandaNum: TLabeledEdit;
    shpComanda: TShape;
    SQL_Vendacomanda: TIntegerField;
    GridPanel2: TGridPanel;
    btn_suprimentos: TcxButton;
    btn_sangrias: TcxButton;
    SQL_VendaIdCaixa: TIntegerField;
    qCaixaDet: TFDQuery;
    qCaixaDetId: TFDAutoIncField;
    qCaixaDetDescricao: TStringField;
    qCaixaDetOperacao: TStringField;
    qCaixaDetDescricaoOperacao: TStringField;
    qCaixaDetIdCaixa: TIntegerField;
    qCaixaDetTotal: TBCDField;
    qCaixaDetOperador: TStringField;
    qCaixaDetLancamento: TDateTimeField;
    qCaixaDetCodigoUsuario: TIntegerField;
    qCaixaDetCodigoVenda: TIntegerField;
    SQL_ProdutoConsultaponto_impressao_id: TIntegerField;
    SQL_ProdutoConsultaNFe_Veiculo_Cor_Codigo: TStringField;
    SQL_ProdutoConsultaNFe_Veiculo_Cor_Descricao: TStringField;
    SQL_ProdutoConsultaNFe_Veiculo_Pot: TStringField;
    SQL_ProdutoConsultaNFe_Veiculo_Cilin: TStringField;
    SQL_ProdutoConsultaNFe_Armamento: TIntegerField;
    SQL_ProdutoConsultaNFe_Combustivel: TIntegerField;
    SQL_ProdutoConsultaNFe_modBC: TIntegerField;
    SQL_ProdutoConsultaNFe_modBCST: TIntegerField;
    SQL_ProdutoConsultaNFe_pMVAST: TBCDField;
    SQL_ProdutoConsultaNFe_motDesICMS: TIntegerField;
    SQL_ProdutoConsultaProduto_ou_Servico: TStringField;
    SQL_ProdutoConsultaPagaComissaoSN: TStringField;
    SQL_ProdutoConsultaContaContabil: TIntegerField;
    SQL_ProdutoConsultaCentroDeCustos: TIntegerField;
    SQL_ProdutoConsultaNFe_indTot: TIntegerField;
    SQL_ProdutoConsultaNFe_Medicamento: TIntegerField;
    SQL_ProdutoConsultaCODIGO_ALFANUMERICO: TStringField;
    SQL_ProdutoConsultaVALOR_PAUTA_BC: TBCDField;
    SQL_ProdutoConsultaNFe_pMVA: TBCDField;
    SQL_ProdutoConsultaNFe_indEscala: TIntegerField;
    SQL_ProdutoConsultaPROD_RASTREAVEL: TIntegerField;
    SQL_ProdutoConsultaPROD_TRATALOTE: TIntegerField;
    SQL_ProdutoConsultaPROD_TRATANUMEROSERIE: TIntegerField;
    SQL_ProdutoConsultaNFe_VeiculoNovo: TIntegerField;
    SQL_ProdutoConsultaNFe_nDI: TStringField;
    SQL_ProdutoConsultaNFe_dDI: TDateTimeField;
    SQL_ProdutoConsultaNFe_xLocDesemb: TStringField;
    SQL_ProdutoConsultaNFe_UFDesemb: TStringField;
    SQL_ProdutoConsultaNFe_dDesemb: TDateTimeField;
    SQL_ProdutoConsultaNFe_cExportador: TStringField;
    SQL_ProdutoConsultaNFe_nAdicao: TIntegerField;
    SQL_ProdutoConsultaNFe_cFabricante: TStringField;
    SQL_ProdutoConsultaNFe_vDescDI: TBCDField;
    SQL_ProdutoConsultaPROD_CODIGO: TStringField;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure Edt_codBarrasKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
    procedure BtnFecharVendaClick(Sender: TObject);
    procedure itenspedido(Qtde: TEdit);
    procedure excluiritem;
    procedure consultaritem;
    procedure totalnfce(LabelTotal: TLabel);
    function fecharvenda: boolean;
    procedure insertpdv;
    procedure cancelarvenda;
    procedure BtnSairClick(Sender: TObject);
    procedure BtnConsultarPrecoClick(Sender: TObject);
    procedure BtnDescontoAcrescimosClick(Sender: TObject);
    procedure FormKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
    function ProdutoRepetido(CodigoProduto, CodigoVenda, Quantidade: string): boolean;
    procedure PreencherDadosProduto(Cod_CodBarras_Descricao, Qtde: TEdit; DescricaoLabel, PrecoUnitario, UnidadeMedida: TLabel);
    procedure PadronizarLayout;
    procedure CaixaLivre(EstadoCaixa: boolean);
    function BuscarCodigo(Cod_CodBarras_Descricao: TEdit): string;
    procedure TelaConsultaProduto(EncontraDois: boolean; EditConsulta: TEdit);
    procedure IncluirItemVenda(Cod_CodBarras_Descricao, Qtde: TEdit; LabelTotalNFCE: TLabel);
    procedure BtnRemoverItemClick(Sender: TObject);
    procedure BtnCancelarVendaClick(Sender: TObject);
    procedure BtnInformarClienteClick(Sender: TObject);
    procedure RotinaCancelarVenda;
    procedure Edit2KeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
    procedure Edit2KeyPress(Sender: TObject; var Key: Char);
    procedure Edit2Exit(Sender: TObject);
    procedure gridItensDrawColumnCell(Sender: TObject; const Rect: TRect; DataCol: Integer; Column: TColumn; State: TGridDrawState);
    procedure Edit2Enter(Sender: TObject);
    procedure InserirProdutoNaVenda;
    procedure gerarvenda;
    procedure BtnAlterarPrecoClick(Sender: TObject);
    procedure VerificaPermissaoNFCE;
    procedure ConfiguracoesIniciais;
    procedure verificarstatusconexao(AtStart: boolean);
    procedure FormCreate(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure AjustarLayout;
    procedure datahora;
    procedure relogioTimer(Sender: TObject);
    procedure btnFecharPdvClick(Sender: TObject);
    procedure btnacessoClick(Sender: TObject);
    procedure ajustargrid;
    procedure PreencherProdBalanca;
    procedure OnCancelClickAlterarPreco(Sender: TObject);
    procedure OnConcluirClickAlterarPreco(Sender: TObject);
    procedure OnShowAlterarPreco(Sender: TObject);
    procedure btn_alterar_quantidadeClick(Sender: TObject);
    function cancelar_venda: boolean;
    procedure consultar_ref;

    procedure parametrosCaixa;

    procedure InutilizarPendentes;
    procedure EnviarContingencia;
    procedure BtnVendaAuxClick(Sender: TObject);
    procedure BtnFecharCaixaClick(Sender: TObject);
    procedure BtnConsultarNFCEClick(Sender: TObject);
    procedure BtnConsultarVendaClick(Sender: TObject);
    procedure BtnStatusServicoClick(Sender: TObject);
    procedure cxButton2Click(Sender: TObject);
    procedure cxButton1Click(Sender: TObject);
    procedure BtnInformarVendedorClick(Sender: TObject);
    function estoque_zerado(cod_produto, cod_venda: string; Qtde: TEdit; alterar_qtde_function: boolean = false): boolean;

    procedure fechar_venda_aux;
    procedure edtComandaNumKeyPress(Sender: TObject; var Key: Char);
    procedure edtComandaNumExit(Sender: TObject);
    procedure EnterField(Sender: TObject);

    procedure calcComanda;
    procedure edtComandaNumKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
    procedure DS_Consulta_ItensStateChange(Sender: TObject);
    procedure btn_suprimentosClick(Sender: TObject);
    procedure btn_sangriasClick(Sender: TObject);
  private
    item: Integer;
    CodigoVenda, CodCliente, modal_result_ap, cod_operador, NumeroCaixa: Integer;
    cpfcnpjcliente, nomecliente, Rua, Numero, Bairro, Municipio, Celular, IE, COD_VENDEDOR: string;
    KeyControl: boolean;
    edt_alterar_preco, edt_qtde_alterar_preco: TEdit;
    lbl_preco_unitario, lbl_PROD_CDUNIDADE, lbl_descricao_produto: TLabel;
    combinacaoQtde, etiqueta: boolean;

  public
    aplica_preco_promo: boolean;
    venda_auxiliar : Boolean;
    function FORM_PDV: Tfrm_pdv;
  const
    CaixaDisponivel = 'CAIXA DISPONÍVEL';

  end;

var
  frm_pdv: Tfrm_pdv;
  Frm_PDV_AUX: Tfrm_pdv;
  totalnfce: real;

implementation

{$R *.dfm}

uses
  Excluir_item_venda, Financeiro_PDV, Informa_Cliente,
  Consulta_Produto, liberacao,
  u_funcoes, U_ConfNFCE, alterar_preco_pdv, relatorios,
  carregando_dados, alterar_quantidade, h_Checks, rel_vw_movimentacao_caixa, h_UIFunctions,
  sangria, suprimento;

procedure Tfrm_pdv.datahora;
begin
  Data.Caption := FormatDateTime('dd/mm/yyyy', date);
  hora.Caption := FormatDateTime('HH:nn', time);
  relogio.Enabled := false;
  relogio.Interval := 60000;
  relogio.Enabled := true;
end;

procedure Tfrm_pdv.DS_Consulta_ItensStateChange(Sender: TObject);
begin
    //BtnFecharVenda.Enabled := (Sql_consulta_itens.Active and (Sql_consulta_itens.RecordCount > 0) and (sql_totalVendaSUMPRECO_TOTAL.Value > 0));
    BtnFecharVenda.Enabled := (Sql_consulta_itens.Active and (Sql_consulta_itens.RecordCount > 0) and (StrToFloat(StringReplace(lbl_subtotal.Caption,'.','',[rfReplaceAll,rfIgnoreCase])) > 0));
    BtnFecharCaixa.Enabled := not (Sql_consulta_itens.Active and (Sql_consulta_itens.RecordCount > 0) and (StrToFloat(StringReplace(lbl_subtotal.Caption,'.','',[rfReplaceAll,rfIgnoreCase])) > 0));
end;

procedure Tfrm_pdv.CaixaLivre(EstadoCaixa: boolean);
begin
  if EstadoCaixa = true then
  begin
    lblstatuscaixa.Caption := CaixaDisponivel;
    lblstatuscaixa.Font.Color := clGreen;
    BtnFecharVenda.Enabled := false;
    BtnRemoverItem.Enabled := false;
    BtnCancelarVenda.Enabled := false;
    btn_alterar_quantidade.Enabled := false;
    BtnAlterarPreco.Enabled := false;
    BtnDescontoAcrescimos.Enabled := false;
    if not lbl_venda_aux.visible then
      BtnVendaAux.Enabled := false;
    lbl_cod_venda.Caption := '';
  end
  else
  begin
    lblstatuscaixa.Caption := 'CAIXA OCUPADO';
    lblstatuscaixa.Font.Color := clRed;
    BtnFecharVenda.Enabled := true;
    BtnRemoverItem.Enabled := true;
    BtnCancelarVenda.Enabled := true;
    btn_alterar_quantidade.Enabled := true;
    BtnDescontoAcrescimos.Enabled := true;
    if not lbl_venda_aux.visible then
      BtnVendaAux.Enabled := true;
    if simplequery('select altera_preco_pdv from parametros_venda').Fields[0].Text = m_true then
      BtnAlterarPreco.Enabled := true;
  end;

  DS_Consulta_ItensStateChange(nil);
end;

procedure Tfrm_pdv.calcComanda;
begin
  lblComanda.visible := Tparametros_venda.Comanda.Enabled;
  edtComandaNum.visible := Tparametros_venda.Comanda.Enabled;
  shpComanda.visible := Tparametros_venda.Comanda.Enabled;
  Label2.visible := not Tparametros_venda.Comanda.Enabled;
  edtComandaNum.Text := FormatFloat('000', Tparametros_venda.Comanda.Numero);
end;

procedure Tfrm_pdv.cancelarvenda;
begin
  fecharvenda;
  SQL_Venda.Cancel;
  SQL_Venda.Active := false;
  with SQLCancelarVenda do // Cancela venda
  begin
    Close;
    SQL.Clear;
    SQL.Add('update venda set status = :pstatus');
    SQL.Add('where CODIGO_VENDA = :pcodigo');
    Params.ParamByName('pcodigo').Value := strtoint(lbl_cod_venda.Caption);
    Params.ParamByName('pstatus').Value := 'CANCELADA';
    ExecSQL;
  end;
  FORM_PDV.item := 0;
  Sql_consulta_itens.Active := false;
  sql_totalVenda.Active := false;

  if (simplequery('SELECT FINAN_C_ABR_FECH FROM PARAMETROS_MODULAR').Fields[0].AsString = m_true) then
  begin
       qCaixaDet.Close;
       qCaixaDet.Open('SELECT * FROM CAIXADETALHE WHERE CodigoVenda = '+lbl_cod_venda.Caption);
       qCaixaDet.Delete;
       qCaixaDet.Close;
  end;

  CaixaLivre(true);
  PadronizarLayout;
end;

function Tfrm_pdv.cancelar_venda: boolean;
begin
  try
    if wnConfirmacao('Cancelar Venda', slinebreak + 'Deseja cancelar venda?', 16) then
    begin
      result := true;
      if not TEnv.Tuser.IsAdmin then
      begin
        if TFrm_liberacao.Execute then
          RotinaCancelarVenda
        else
          result := false;
      end
      else
        RotinaCancelarVenda
    end
    else
      result := false;
  except
    on E: Exception do
      wnErro('Venda | NFCe', E.Message + slinebreak + 'Erro ao finalizar venda');
  end;
end;

procedure Tfrm_pdv.ConfiguracoesIniciais;
begin
  try
    insertpdv;
    VerificaPermissaoNFCE;
    frm_confnfce := tfrm_confnfce.create(nil);
    frm_confnfce.SQL_PARAMETROS_NFCE.Active := false;
    frm_confnfce.SQL_PARAMETROS_NFCE.Active := true;
    if frm_confnfce.SQL_PARAMETROS_NFCEESTOQUE_PDV.Value = m_false then { Esconder Estoque no PDV }
    begin
      grpDescProduto.Width := (grpEstoque.Left + grpEstoque.Width);
      grpEstoque.visible := false;
    end
    else if frm_confnfce.SQL_PARAMETROS_NFCEESTOQUE_PDV.Value = m_true then { Mostrar Estoque no PDV }
    begin
      grpEstoque.visible := true;
    end;
    frm_confnfce.destroy;
    BtnInformarVendedor.Enabled := (simplequery('select informa_vendedor from parametros_venda').Fields[0].AsString = m_true);
  except
    on E: Exception do
    begin

      wnErro('Parametros do Sistema', E.Message + slinebreak + 'Erro ao verificar parâmetros!');

    end;
  end;
end;

procedure Tfrm_pdv.insertpdv;
begin
  PadronizarLayout;
  CaixaLivre(true);
  lbl_caixa.Caption := FormatFloat('000',NumeroCaixa);//'1'; // caixa
  lbl_operador.Caption := TEnv.Tuser.name; // operador
  cod_operador := TEnv.Tuser.id; // codigo operador
  lbl_cnpj.Caption := '';
  lbl_cliente.Caption := '';
  lbl_tel.Caption := '';
  lbl_vendedor.Caption := '';
  COD_VENDEDOR := '';
  lbl_cod_venda.Caption := '';
  lbl_subtotal.Caption := '0,00';
  FORM_PDV.item := 0; // Reconfigura contador
  cpfcnpjcliente := emptystr;
  nomecliente := emptystr;
  Rua := emptystr;
  Numero := emptystr;
  Bairro := emptystr;
  Municipio := emptystr;
  Celular := emptystr;

  calcComanda;
end;

function Tfrm_pdv.fecharvenda: boolean;
begin
  try
    with SQL_Venda do
    begin
      Active := false;
      ParamByName('pcodigo').Value := lbl_cod_venda.Caption;
      open;
      Edit;
      FieldByName('CPF_CLIENTE').Value := lbl_cnpj.Caption;
      FieldByName('NOME_CLIENTE').Value := lbl_cliente.Caption;
      FieldByName('TELEFONE_CLIENTE').Value := lbl_tel.Caption;
      FieldByName('RUA_CLIENTE').Value := Rua;
      FieldByName('IE_CLIENTE').Value := IE;
      FieldByName('COD_VENDEDOR').Value := ifthen(COD_VENDEDOR <> '', COD_VENDEDOR, '0');
      FieldByName('NUMERO_CLIENTE').Value := Numero;
      FieldByName('BAIRRO_CLIENTE').Value := Bairro;
      FieldByName('CODIGO_CLIENTE').Value := CodCliente;
      FieldByName('VENDA_FATURADA').Value := '';
      FieldByName('VALOR_VENDA').Value := lbl_subtotal.Caption;

      SQL_Venda.Post;
      SQL_Venda.Active := false;
    end;
    Sql_consulta_itens.Active := false;
    sql_totalVenda.Active := false;
    result := true;
  except
    on E: Exception do
    begin

      wnErro('Finalização Venda', E.Message + slinebreak + 'Erro ao fechar venda');

      SQL_Venda.Cancel;
      result := false;
    end;
  end;
end;

procedure Tfrm_pdv.fechar_venda_aux;
begin
  if (not BtnVendaAux.Enabled) and (lbl_venda_aux.visible) then
  begin
    Frm_PDV_AUX.Close;
  end;
end;

procedure Tfrm_pdv.totalnfce(LabelTotal: TLabel);
begin
  with sql_totalVenda do
  begin
    Close;
    SQL.Clear;
    SQL.Add('SELECT SUM(PRECO_TOTAL) FROM venda_item');
    SQL.Add('where CODIGO_VENDA like :pcodigo');
    Params[0].Value := lbl_cod_venda.Caption;
    open;
  end;
  LabelTotal.Caption := FormatFloat('0.00', sql_totalVendaSUMPRECO_TOTAL.asextended);
end;

procedure Tfrm_pdv.InutilizarPendentes;
var
  sFirstDay, sLastDay, str_query: string;
  dFirstDay, dLastDay: Tdatetime;
  qry_temp: TFDQuery;
begin
  begin

    dFirstDay := EncodeDate(YearOF(date), MonthOfTheYear(date), 1);
    sFirstDay := FormatDateTime('yyyy-mm-dd', dFirstDay);
    dLastDay := EndOfAMonth(YearOF(date), MonthOfTheYear(date));
    sLastDay := FormatDateTime('yyyy-mm-dd', dLastDay);
    str_query := 'SELECT * FROM NFCE WHERE (STATUS_NFCE IS NULL OR STATUS_NFCE = "PENDENTE") ' +
      ' AND ((TIPO_EMISSAO IS NULL) OR (TIPO_EMISSAO <> "CONTINGENCIA")) AND (((DATA_TRANSMISSAO BETWEEN "' + sFirstDay + '" AND "' + sLastDay +
      '") OR (DATA_TRANSMISSAO = "0000-00-00")) AND (DATA_EMISSAO BETWEEN "' + sFirstDay + '" AND "' + sLastDay + '"))';
    qry_temp := simplequery(str_query);
    if qry_temp <> nil then
      frm_confnfce.InutilizarFaixaNFCE(dFirstDay, dLastDay);
  end;
end;

procedure Tfrm_pdv.EnterField(Sender: TObject);
begin
  edtComandaNum.selectall;
end;

procedure Tfrm_pdv.EnviarContingencia;
var
  DiaAtual, RetornoXML, Status, straux: string;
  qry_temp, qry: TFDQuery;
  i, x, qtderegistros: Integer;
  arrcodigos: array of Integer;
begin
  try
    qry_temp := simplequery('SELECT * FROM NFCE WHERE STATUS_NFCE = "PENDENTE" AND (DATA_EMISSAO BETWEEN "' + FormatDateTime('yyyy-mm-01', date) + '" AND "' +
      FormatDateTime('yyyy-mm-31', date) + '") AND TIPO_EMISSAO = "CONTINGENCIA"');
    if qry_temp <> NIL then
    BEGIN
      WITH qry_temp DO
      BEGIN
        i := 0;
        // Index do vetor
        x := 1; // salto da barra
        frm_relatorio := tfrm_relatorio.create(nil);
        qtderegistros := RecordCount;
        Frm_Carregando_Dados := tfrm_carregando_dados.create(nil);
        Frm_Carregando_Dados.lbl_titulo.Caption := 'Contingência NFC-e';
        Frm_Carregando_Dados.visible := true;
        Frm_Carregando_Dados.show;
        Frm_Carregando_Dados.Update;
        Frm_Carregando_Dados.pb_barra_progresso.Min := 0;
        Frm_Carregando_Dados.pb_barra_progresso.Max := qtderegistros;
        SetLength(arrcodigos, qtderegistros);
        while not Eof do
        begin
          Frm_Carregando_Dados.PreencherBarra(x);
          Frm_Carregando_Dados.Update;
          Frm_Carregando_Dados.MudarLabel('Enviando NFC-e ' + IntToStr(FieldByName('CODIGO').Value) + ' ...');
          arrcodigos[i] := FieldByName('CODIGO').Value;
          if frm_confnfce <> nil then
            frm_confnfce := tfrm_confnfce.create(nil);
          frm_confnfce.configurarcomponente;
          with frm_confnfce do
          begin
            SQL_Venda.Close;
            SQL_Venda.ParamByName('pcodigo').Value := FieldByName('CODIGO_VENDA').Value;
            SQL_Venda.open;
            SQL_VENDA_PAGAMENTO.Close;
            SQL_Venda.ParamByName('pcodigo').Value := FieldByName('CODIGO_VENDA').Value;
            SQL_VENDA_PAGAMENTO.open;
            SQL_VENDA_ITEM.Close;
            SQL_Venda.ParamByName('pcodigo').Value := FieldByName('CODIGO_VENDA').Value;
            SQL_VENDA_ITEM.open;
            m_operador := emptystr;
            m_caixa := emptystr;
            ValorPago := emptystr;
            Troco := emptystr;
            TotalVenda := emptystr;
            m_cliente_nome := emptystr;
            m_cliente_cpfcnpj := emptystr;
            m_cliente_ie := emptystr;
            m_cliente_telefone := emptystr;
            m_codigo_venda := FieldByName('CODIGO_VENDA').AsString;
            qry := simplequery('SELECT OPERADOR,CAIXA, NOME_CLIENTE, CPF_CLIENTE, IE_CLIENTE, TELEFONE_CLIENTE FROM VENDA WHERE CODIGO_VENDA = ?',
              [m_codigo_venda]);
            m_operador := qry.Fields[0].AsString;
            m_caixa := qry.Fields[1].AsString;
            m_cliente_nome := qry.Fields[2].AsString;
            m_cliente_cpfcnpj := qry.Fields[3].AsString;
            m_cliente_ie := qry.Fields[4].AsString;
            m_cliente_telefone := qry.Fields[5].AsString;
            ValorPago := FieldByName('VALOR_PAGO').AsString;
            Troco := FieldByName('TROCO').AsString;
            TotalVenda := FieldByName('VALOR_NFCE').AsString;
            DeletarXMLPendente(FieldByName('CAMINHO_XML').Value);
            FinalizarNFCE(false, FieldByName('CODIGO').Value, false, now, FieldByName('TIPO_EMISSAO').AsString, true, true, false);
          END;
          Next;
          Inc(i);
          Inc(x);
        end;
        Frm_Carregando_Dados.Close;
        straux := '';
        for i := Low(arrcodigos) to High(arrcodigos) do
          if not straux.IsEmpty then
            straux := straux + quotedstr(IntToStr(arrcodigos[i])) + ','
          else
            straux := quotedstr(IntToStr(arrcodigos[i])) + ',';
        with frm_relatorio.SQL_OP_NFCE do
        begin
          Close;
          SQL.Clear;
          straux := 'SELECT *,(select sum(total_nfce) from nfce where status_nfce = "AUTORIZADA") as TOTAL_AUT FROM NFCE WHERE CODIGO IN (' +
            copy(straux, 0, length(straux) - 1) + ')';
          SQL.Add(straux);
          open;
        end;
        if frm_relatorio.SQL_OP_NFCE.RecordCount <> 0 then
        BEGIN
          frm_relatorio.FRX_OP_NFCE.LoadFromFile(frm_relatorio.PATH_OP_NFCE, true);
          frm_relatorio.FRX_OP_NFCE.ShowReport;
        END;
        frm_relatorio.Close;
      END;
    END;
  except
    on E: Exception do
    begin

      wnErro('Enviar Contingência', E.Message + slinebreak + 'Erro ao enviar NFC-e em contingência!');

      Frm_Carregando_Dados.Close;
      Frm_Carregando_Dados.Free;
      frm_relatorio.Close;
      frm_relatorio.Free;
    end;
  end;
end;

procedure Tfrm_pdv.BtnVendaAuxClick(Sender: TObject);
  procedure AbrirVendaAux;
  begin
    BtnVendaAux.Enabled := false;
    Frm_PDV_AUX := Tfrm_pdv.create(nil);
    Frm_PDV_AUX.BtnVendaAux.Enabled := false;
    Frm_PDV_AUX.BtnFecharCaixa.Enabled := false;
    Frm_PDV_AUX.lbl_venda_aux.visible := true;
    Frm_PDV_AUX.venda_auxiliar := true;
    Frm_PDV_AUX.showmodal;
    BtnVendaAux.Enabled := true;
  end;

begin
  if pnbotoes.Enabled and BtnVendaAux.Enabled then
  begin
    if not TEnv.Tuser.IsAdmin then
    begin
      if TFrm_liberacao.Execute then
        AbrirVendaAux
    end
    else
      AbrirVendaAux
  end;
end;

procedure Tfrm_pdv.VerificaPermissaoNFCE;
var
  qry_temp: TFDQuery;
begin
  frm_confnfce := tfrm_confnfce.create(nil);
  qry_temp := TFDQuery.create(nil);
  frm_confnfce.SQL_PARAMETROS_NFCE.Active := false;
  frm_confnfce.SQL_PARAMETROS_NFCE.Active := true;
  if not TParametros_NF.NFCe.LiberadoParaUso then { Chave de liberação não utiliza NFC-e }
    wnErro('Permissão NFC-e',
      'O sistema não está habilitado para emissão da Nota Fiscal do Consumidor. Entre em contato com o suporte técnico para mais detalhes.')

  else if frm_confnfce.SQL_PARAMETROS_NFCEUTILIZA_NFCE.Value = m_true then
  begin
    if FORM_PDV = frm_pdv then
    begin
      if TParametros_NF.EmissaoNormal then
      begin
        EnviarContingencia;
        InutilizarPendentes;
      end
      else
        wnAlerta('Status Conexão', 'O sistema identificou uma falha na conexão de internet.' + slinebreak +
          'Para melhor aproveitamento na utilização do SMC LIGHT, por favor verifique as configurações da sua conexão.');

    end;

  end;
  qry_temp.destroy;
  frm_confnfce.Free;
end;

procedure Tfrm_pdv.verificarstatusconexao(AtStart: boolean);

  procedure colorirconexao(verr: boolean);
  begin
    if verr then
      FORM_PDV.Shape1.Brush.Color := clGreen
    else
      FORM_PDV.Shape1.Brush.Color := clRed;
  end;

begin
  try
    //colorirconexao(TParametros_NF.EmissaoNormal);
    if ExistsNetwork then
    begin
         colorirconexao(True);
         FORM_PDV.lbl_tipoemissao.Caption := TParametros_NF.TIPO_EMISSAO;
    end
    else
    begin
         colorirconexao(False);
         FORM_PDV.lbl_tipoemissao.Caption := 'CONTINGENCIA';
    end;
  except
    on E: Exception do
    begin

      wnErro('Status de Conexão', E.Message + slinebreak + 'Erro verificar conexão!');
    end;
  end;
end;

procedure Tfrm_pdv.consultaritem;
begin
  with Sql_consulta_itens do // Lista os itens no Grid.
  begin
    Close;
    SQL.Clear;
    SQL.Add('select * from venda_item');
    SQL.Add('where CODIGO_VENDA like :pcodigo');
    Params[0].Value := lbl_cod_venda.Caption;
    open;
    last;

    BtnRemoverItem.Enabled := (RecordCount <> 0);

    // Rotina para cancelamento de venda ao remover último item
    // removida do sistema por intermédio do P.O

    // if RecordCount = 0 then // Caso a venda né‰¶ tenha mais itens
    // begin
    // fecharvenda;
    // EXECQUERY('UPDATE VENDA SET STATUS="CANCELADA" WHERE CODIGO_VENDA="' + lbl_cod_venda.Caption + '"');
    // CaixaLivre(true);
    // end;
  end;
end;


procedure Tfrm_pdv.parametrosCaixa;
begin
  btn_suprimentos.Enabled := (simplequery('SELECT FINAN_C_ABR_FECH FROM PARAMETROS_MODULAR').Fields[0].AsString = m_true);
  btn_sangrias.Enabled := (simplequery('SELECT FINAN_C_ABR_FECH FROM PARAMETROS_MODULAR').Fields[0].AsString = m_true);
  BtnFecharCaixa.Enabled := (simplequery('SELECT FINAN_C_ABR_FECH FROM PARAMETROS_MODULAR').Fields[0].AsString = m_true);
end;


procedure Tfrm_pdv.consultar_ref;
var
  qry, qry_cod: TFDQuery;
begin
  qry_cod := Tdb.simplequery
    ('select PROD_CODIGO, PROD_EAN, PROD_DESCRICAO, PROD_CDUNIDADE, SALDO, PROD_REFERENCIASFABRICA, MARCA, PRECO_FINAL_VAREJO from PRODUTO_PROD where PROD_CODIGO = "' +
    Edt_codBarras.Text + '" OR PROD_REFERENCIASFABRICA = "' + Edt_codBarras.Text + '"');
  if qry_cod <> nil then
  begin
    qry_cod.fetchall;
    qry_cod.first;
    if qry_cod.RecordCount > 1 then
    begin
      Frm_Consulta_Generica := TFrm_Consulta_Generica.create(nil, cgProduto, Edt_codBarras);
      Frm_Consulta_Generica.SetCustomQuery(qry_cod.SQL.Text, Edt_codBarras.Text);
      Frm_Consulta_Generica.showmodal;
      exit;
    end;
  end;
  qry := Tdb.simplequery('select PROD_CODIGO from PRODUTO_PROD where PROD_REFERENCIASFABRICA = "' + Edt_codBarras.Text + '"');
  if (qry <> nil) then
    Edt_codBarras.Text := qry.Fields[0].Text;
end;

procedure Tfrm_pdv.cxButton1Click(Sender: TObject);
begin
  if pnbotoes.Enabled then
  begin
    if not u_funcoes.VerificaAberta(Frm_Produto) then
    begin
      Frm_Produto := TFrm_Produto.create(nil);
      Frm_Produto.visible := false;
      Frm_Produto.showmodal;
      Frm_Produto.Free;
    end;
  end;
end;

procedure Tfrm_pdv.cxButton2Click(Sender: TObject);
begin
  if pnbotoes.Enabled then
    TUIFunctions.AcessoRemoto;
end;

procedure Tfrm_pdv.btn_sangriasClick(Sender: TObject);
begin
       if pnbotoes.Enabled then
  begin
    if not u_funcoes.VerificaAberta(Frm_sangria) then
    begin
      Frm_sangria := TFrm_sangria.create(nil);
      Frm_sangria.visible := false;
      Frm_sangria.showmodal;
      Frm_sangria.Free;
    end;
  end;

end;

procedure Tfrm_pdv.btn_suprimentosClick(Sender: TObject);
begin
    if pnbotoes.Enabled then
  begin
    if not u_funcoes.VerificaAberta(Frm_suprimento) then
    begin
      Frm_suprimento := TFrm_suprimento.create(nil);
      Frm_suprimento.visible := false;
      Frm_suprimento.showmodal;
      Frm_suprimento.Free;
    end;
  end;
end;

procedure Tfrm_pdv.gridItensDrawColumnCell(Sender: TObject; const Rect: TRect; DataCol: Integer; Column: TColumn; State: TGridDrawState);
begin
  u_funcoes.GridZebrado(gridItens, Rect, DataCol, Column, State);
end;

function Tfrm_pdv.BuscarCodigo(Cod_CodBarras_Descricao: TEdit): string;
var
  querytmp: TFDQuery;
begin
  with querytmp do
  // Buscar céª´igo por codigo de barras, céª´igo do produto ou descriçŽ¢o
  begin
    querytmp := TFDQuery.create(nil);
    querytmp.connection := module.connection;
    Close;
    SQL.Add('SELECT * FROM PRODUTO_PROD');
    if (length(Cod_CodBarras_Descricao.Text) >= 8) and IsNumber(Cod_CodBarras_Descricao.Text) then // Código de barras
      SQL.Add('WHERE PROD_EAN = ' + quotedstr(Cod_CodBarras_Descricao.Text));
    if (length(Cod_CodBarras_Descricao.Text) < 8) and IsNumber(Cod_CodBarras_Descricao.Text) then // Código do produto
      SQL.Add(' WHERE PROD_CODIGO = ' + quotedstr(Cod_CodBarras_Descricao.Text));
    if not IsNumber(Cod_CodBarras_Descricao.Text) then // Descrição do produto
      SQL.Add(' WHERE PROD_DESCRICAO LIKE ''%' + Cod_CodBarras_Descricao.Text + '%''');
    open;
    if RecordCount = 1 then
    // Encontra apenas um produto
    begin
      result := FieldByName('PROD_CODIGO').Value // Retorna apenas o codigo
    end
    else if RecordCount > 1 then
    // Encontra mais de um produto com a mesma descrição
    begin
      TelaConsultaProduto(true, Cod_CodBarras_Descricao);
      result := Cod_CodBarras_Descricao.Text
      // Abrir tela de consulta de produto
    end
    else
      result := 'INVALID@CODE@';
  end;
  querytmp.destroy;
end;

procedure Tfrm_pdv.PreencherDadosProduto(Cod_CodBarras_Descricao, Qtde: TEdit; DescricaoLabel, PrecoUnitario, UnidadeMedida: TLabel);

  function BloquearSemEstoque: boolean;
  begin
    if not VerificaAberta(frm_confnfce) then
      frm_confnfce := tfrm_confnfce.create(nil);

    with frm_confnfce do
    begin
      SQL_PARAMETROS_NFCE.Active := true;
      if SQL_PARAMETROS_NFCEVENDA_SEM_ESTOQUE.Value = m_false then
        result := true
      else
        result := false;
    end;
    frm_confnfce.Close;
  end;

var
  ConsultaEstoque, qry: TFDQuery;
  msg: string;
  cod_prod: string;

  procedure incluir_item;
  begin
    with ConsultaEstoque do
    begin
      if TChecks.LessEquals(FieldByName('PRECO_FINAL_VAREJO').asextended, 0) then
      begin
        if wnConfirmacao('Produto Sem Preço', 'Produto ' + FieldByName('PROD_DESCRICAO').AsString + ' está sem preço no cadastro!' + slinebreak +
          'Deseja alterar o preço do produto ?') then
        begin
          frm_alterar_preco_pdv := Tfrm_alterar_preco_pdv.create(nil);
          frm_alterar_preco_pdv.visible := false;
          edt_alterar_preco := Cod_CodBarras_Descricao;
          edt_qtde_alterar_preco := Qtde;
          lbl_descricao_produto := DescricaoLabel;
          lbl_preco_unitario := PrecoUnitario;
          lbl_PROD_CDUNIDADE := UnidadeMedida;
          frm_alterar_preco_pdv.OnShow := OnShowAlterarPreco;
          frm_alterar_preco_pdv.BtnGravar.onclick := OnConcluirClickAlterarPreco;
          frm_alterar_preco_pdv.cxButton1.onclick := OnCancelClickAlterarPreco;
          frm_alterar_preco_pdv.showmodal;
          if modal_result_ap = 1 then { ok }
          begin
            Qtde.selectall;
            Qtde.setfocus;
          end
          else if modal_result_ap = 2 then { cancel }
          begin
            Edt_codBarras.selectall;
            Edt_codBarras.setfocus;
          end;
          exit;
        end;
      end;
      if ConsultaEstoque.FieldByName('SALDO').Text <> '' then
      begin
        if strtofloat(ConsultaEstoque.FieldByName('SALDO').Text) <= 0 then
        begin
          if BloquearSemEstoque then
          begin
            msg := 'Produto: ' + ConsultaEstoque.FieldByName('PROD_DESCRICAO').Value + slinebreak + 'Quantidade em Estoque: ' +
              floattostr(ConsultaEstoque.FieldByName('SALDO').Value) + slinebreak + 'Não é permitida a venda de produto com estoque zerado ou negativo!';
            wnAlerta('Venda Produto', msg);
            Cod_CodBarras_Descricao.selectall;
            Cod_CodBarras_Descricao.setfocus;
            lbl_estoque.Color := clBlack;
            DescricaoLabel.Caption := 'DESCRIÇÃO DO PRODUTO';
            ConsultaEstoque.destroy;
            exit;
          end;
          lbl_estoque.Font.Color := clRed
        end
        else
          lbl_estoque.Font.Color := clGreen;
        lbl_estoque.Caption := ConsultaEstoque.FieldByName('SALDO').Text;
      end;
      if ConsultaEstoque.FieldByName('PROD_DESCRICAO').Text <> '' then
      begin
        DescricaoLabel.Caption := ConsultaEstoque.FieldByName('PROD_DESCRICAO').Text;
      end;
      if PrecoUnitario <> nil then
      begin
        if ConsultaEstoque.FieldByName('PRECO_FINAL_VAREJO').Text <> '' then
          PrecoUnitario.Caption := FormatFloat('0.00', ConsultaEstoque.FieldByName('PRECO_FINAL_VAREJO').Value);
      end
      else
      begin

        if simplequery('select preco_promocional from parametros_venda').Fields[0].AsString = m_true then
        begin
          qry := Tdb.simplequery
            ('SELECT PRECO_FINAL_VAREJO, VALOR_PROMOCIONAL_VAREJO,PROMOCAO_INICIO, PROMOCAO_TERMINO FROM PRODUTO_PROD WHERE ? BETWEEN PROMOCAO_INICIO AND PROMOCAO_TERMINO AND PROD_CODIGO = ?',
            [now, cod_prod]);
          if qry <> nil then
          begin
            if Tdb.simplequery('SELECT CODIGO FROM VENDA_ITEM WHERE CODIGO_VENDA = ? AND CODIGO_PRODUTO = ?', [lbl_cod_venda.Caption, cod_prod]) = nil then
              TDialogs.wnInfo('Preço Promocional', 'Produto está no período de promoção!' + slinebreak + 'Preço Normal: ' +
                TFormats.Money(qry.Fields[0].asextended) + slinebreak + 'Preço Promocional: ' + TFormats.Money(qry.Fields[1].asextended) + slinebreak +
                'Período de ' + TFormats.DateTime(qry.Fields[2].asDatetime, 'dd/mm') + ' até ' + TFormats.DateTime(qry.Fields[3].asDatetime, 'dd/mm'), 14);
            aplica_preco_promo := true;
          end;
        end
        else
          aplica_preco_promo := false;

      end;

      if ConsultaEstoque.FieldByName('PROD_CDUNIDADE').Text <> '' then
      begin
        UnidadeMedida.Caption := ConsultaEstoque.FieldByName('PROD_CDUNIDADE').Text;
        if not combinacaoQtde then
          if UnidadeMedida.Caption = 'UN' then
            Qtde.Text := '1'
          else if UnidadeMedida.Caption = 'KG' then
            Qtde.Text := '1,000'
      end;
      Qtde.setfocus;
    end;

  end;

begin
  cod_prod := BuscarCodigo(Cod_CodBarras_Descricao);
  ConsultaEstoque := simplequery('SELECT PROD_CODIGO, SALDO, PROD_DESCRICAO, PRECO_FINAL_VAREJO, PROD_CDUNIDADE, STATUS_CADASTRAL FROM PRODUTO_PROD WHERE CODIGO = ?',
    [cod_prod]);
  if ConsultaEstoque <> nil then
  begin
    if ConsultaEstoque.FieldByName('STATUS_CADASTRAL').AsString = 'INATIVO' then
    begin
      if wnConfirmacao('Produto Inativo', 'Produto "' + ConsultaEstoque.FieldByName('PROD_DESCRICAO').AsString + '" está como INATIVO no cadastro!' +
        slinebreak + 'Deseja ativá-lo para utilizações futuras?') then
      begin
        if TEnv.Tuser.IsAdmin then
        begin
          EXECQUERY('update produto set status_cadastral = "ativo" where codigo = ?', [cod_prod]);
          incluir_item;
        end
        else
        begin
          if TFrm_liberacao.Execute then
          begin
            EXECQUERY('update produto set status_cadastral = "ativo" where codigo = ?', [cod_prod]);
            incluir_item;
          end
          else
          begin
            Cod_CodBarras_Descricao.selectall;
            Cod_CodBarras_Descricao.setfocus;
          end;
        end
      end
      else
      begin
        Cod_CodBarras_Descricao.selectall;
        Cod_CodBarras_Descricao.setfocus;
      end;
    end
    else
      incluir_item;
  end
  else
  begin
    wnAlerta('Informar Produto', slinebreak + slinebreak + 'Produto não encontrado.');
    Cod_CodBarras_Descricao.selectall;
    Cod_CodBarras_Descricao.setfocus;
    lbl_estoque.Color := clBlack;
    DescricaoLabel.Caption := 'DESCRIÇÃO DO PRODUTO';
  end;
end;

procedure Tfrm_pdv.PreencherProdBalanca;
var
  qry: TFDQuery;
  codProd, CodProdBal, TpEtiqueta, FinalPesoPreco, qtdeEtiqueta, PrecoEtiqueta: string;
  qtdecasas: Integer;
  PrecoProduto: extended;
begin
  with qry do
  begin
    qry := simplequery('SELECT TIPO_ETIQUETA, COD_PRODUTO_BALANCA FROM PARAMETROS_VENDA');
    if qry <> nil then
    begin
      TpEtiqueta := FieldByName('TIPO_ETIQUETA').AsString;
      qtdecasas := FieldByName('COD_PRODUTO_BALANCA').asInteger;
      CodProdBal := copy(Edt_codBarras.Text, 2, qtdecasas);
      FinalPesoPreco := copy(Edt_codBarras.Text, 2 + qtdecasas, -2 - qtdecasas + length(Edt_codBarras.Text));
      qry := simplequery('SELECT PROD_CODIGO, PRECO_FINAL_VAREJO FROM PRODUTO_PROD WHERE LPAD(COD_BALANCA_1,' + IntToStr(qtdecasas) + ',0) = ' + quotedstr(CodProdBal));
      if qry = nil then
        qry := simplequery('SELECT PROD_CODIGO, PRECO_FINAL_VAREJO FROM PRODUTO_PROD WHERE LPAD(COD_BALANCA_2,' + IntToStr(qtdecasas) + ',0) = ' + quotedstr(CodProdBal));
      if qry = nil then
        qry := simplequery('SELECT PROD_CODIGO, PRECO_FINAL_VAREJO FROM PRODUTO_PROD WHERE LPAD(COD_BALANCA_3,' + IntToStr(qtdecasas) + ',0) = ' + quotedstr(CodProdBal));
      if qry <> nil then
      begin
        codProd := FieldByName('PROD_CODIGO').AsString;
        PrecoProduto := FieldByName('PRECO_FINAL_VAREJO').Value;
        if TpEtiqueta = 'PESO' then
        begin
          Edt_codBarras.Text := codProd;
          Edit2.Text := copy(FinalPesoPreco, 1, 2) + ',' + copy(FinalPesoPreco, 3, length(FinalPesoPreco));
        end
        else if TpEtiqueta = 'PRECO' then
        begin
          Edt_codBarras.Text := codProd;
          PrecoEtiqueta := copy(FinalPesoPreco, 1, 3) + ',' + copy(FinalPesoPreco, 4, length(FinalPesoPreco));
          qtdeEtiqueta := tfunctions.replace(formatarqtde(strtofloat(PrecoEtiqueta) / PrecoProduto), '.', ',');
          Edit2.Text := qtdeEtiqueta;
        end;
        IncluirItemVenda(Edt_codBarras, Edit2, lbl_subtotal);
      end
      else
        wnAlerta('Produto Balança', 'Produto não encontrado!' + slinebreak + 'Verifique o cadastro do produto.')
    end
    else
      wnAlerta('Produto Balança', 'Produto não encontrado!' + slinebreak + 'Verifique os parametros da balança.');
    exit;
  end;
end;

function Tfrm_pdv.estoque_zerado(cod_produto, cod_venda: string; Qtde: TEdit; alterar_qtde_function: boolean = false): boolean;
var
  qry: TFDQuery;
  estoque_cad, _qtde: extended;
  um: string;
  procedure doMessage;
  begin
    wnAlerta('Estoque', slinebreak + 'Produto selecionado tem apenas ' + floattostr(estoque_cad) + ' ' + um + ' em estoque!');
    Qtde.setfocus;
    Qtde.selectall;
    result := true;
  end;

begin
  result := false;
  _qtde := strtofloat(Qtde.Text);
  if simplequery('select VENDA_SEM_ESTOQUE from parametros_venda').Fields[0].AsString = m_false then
  begin
    qry := simplequery('select saldo, PROD_CDUNIDADE from PRODUTO_PROD where PROD_CODIGO = ' + cod_produto);
    estoque_cad := qry.Fields[0].asextended;
    um := qry.Fields[1].AsString;
    if cod_venda <> emptystr then
    begin
      qry := simplequery('select quantidade from venda_item where codigo_produto = ' + cod_produto + ' and codigo_venda = ' + cod_venda);
      if qry <> nil then // produto já inserido na venda
      begin
        if comparevalue(estoque_cad, ifthen(alterar_qtde_function, _qtde, qry.Fields[0].asextended + _qtde)) = -1 then
          doMessage;
      end
      else
      begin
        if comparevalue(estoque_cad, _qtde) = -1 then
          doMessage;
      end;
    end
    else
    begin
      if comparevalue(estoque_cad, _qtde) = -1 then
        doMessage;
    end;
  end;
end;

procedure Tfrm_pdv.excluiritem;

var
  qry_consutar_itens, qry_reajusar_itens: TFDQuery;
  nItem: Integer;

begin
  with sql_deleteitem do
  // deleta o item
  begin
    Close;
    SQL.Clear;
    SQL.Add('delete from venda_item');
    SQL.Add('where CODIGO_VENDA like :pcodigo and CODIGO_ITEM_VENDA like :pcodigo2');
    //Params.ParamByName('pcodigo').Value := strtoint(frm_pdv.lbl_cod_venda.Caption);//sql_increment_vendaAUTO_INCREMENT.Value;
    Params.ParamByName('pcodigo').Value := strtoint(lbl_cod_venda.Caption);//sql_increment_vendaAUTO_INCREMENT.Value;
    Params.ParamByName('pcodigo2').Value := strtoint(Frm_ExcluirItem.cod_item);
    ExecSQL;
  end;

  with qry_consutar_itens do // Criar Rotina para reajustar céª´igo dos itens
  begin
    qry_consutar_itens := TFDQuery.create(nil);
    qry_consutar_itens.connection := module.connection;
    Close;
    SQL.Clear;
    SQL.Add('select * from venda_item');
    SQL.Add('where CODIGO_VENDA like :pcodigo');
    //Params.ParamByName('pcodigo').Value := strtoint(frm_pdv.lbl_cod_venda.Caption);
    Params.ParamByName('pcodigo').Value := strtoint(lbl_cod_venda.Caption);
    open;
    first;
    nItem := 1;
    // Né·ero do item para reajustar sequé˜¯cia
    qry_reajusar_itens := TFDQuery.create(nil);
    qry_reajusar_itens.connection := module.connection;
    while not Eof do
    begin
      qry_reajusar_itens.Close;
      qry_reajusar_itens.SQL.Clear;
      qry_reajusar_itens.SQL.Add('UPDATE venda_item');
      qry_reajusar_itens.SQL.Add('SET codigo_item_venda = :pcodigo_item_novo');
      qry_reajusar_itens.SQL.Add('WHERE codigo_venda = :pcodigo_venda');
      qry_reajusar_itens.SQL.Add('AND codigo_item_venda = :pcodigo_item_antigo');
      qry_reajusar_itens.Params.ParamByName('pcodigo_item_novo').Value := nItem;
      //qry_reajusar_itens.Params.ParamByName('pcodigo_venda').Value := strtoint(frm_pdv.lbl_cod_venda.Caption);
      qry_reajusar_itens.Params.ParamByName('pcodigo_venda').Value := strtoint(lbl_cod_venda.Caption);
      qry_reajusar_itens.Params.ParamByName('pcodigo_item_antigo').Value := FieldByName('CODIGO_ITEM_VENDA').Value;
      qry_reajusar_itens.ExecSQL;
      nItem := nItem + 1;
      Next;
    end;
    FORM_PDV.item := nItem - 1;
    // Sequência dos itens recebe o indice reajustado
  end;
  qry_consutar_itens.destroy;
  qry_reajusar_itens.destroy;
end;

procedure Tfrm_pdv.BtnFecharCaixaClick(Sender: TObject);
begin
     if BtnFecharCaixa.Enabled then
     begin
          if simplequery('SELECT caixa_conferencia FROM parametros_modular').Fields[0].AsString = m_true then
          begin
               if not u_funcoes.VerificaAberta(Frm_fechar_caixa) then
               begin
                    Frm_fechar_caixa := TFrm_fechar_caixa.create(nil);
                    Frm_fechar_caixa.showmodal;

                    if (ID_CAIXA = 0) then
                       Close;
               end;
          end
          else
          begin
               Frm_conf_fechamento := TFrm_conf_fechamento.Create(nil);
               Frm_conf_fechamento.ShowModal;

               if (ID_CAIXA = 0) then
                  Close;
          end;
     end;
end;

procedure Tfrm_pdv.itenspedido(Qtde: TEdit);
var
  precototal, preco_produto: extended;
  qtde_inf: string;
  qry: TFDQuery;
begin

  if aplica_preco_promo then
    preco_produto := Tdb.simplequery('SELECT VALOR_PROMOCIONAL_VAREJO from PRODUTO_PROD where PROD_CODIGO = ?', [SQL_ProdutoConsultaPROD_CODIGO.Value]).Fields[0].asextended
  else
  begin
    if simplequery('select produto_preco_faixa from parametros_sistema').Fields[0].AsString = m_false then
      preco_produto := SQL_ProdutoConsultaPRECO_FINAL_VAREJO.asextended;

    if simplequery('select produto_preco_faixa from parametros_sistema').Fields[0].AsString = m_true then
    begin
      //qry := simplequery('select preco from produto_preco_faixa where :p1 >= qtde and id_produto = :p2 and tipo="VAREJO" order by preco desc limit 1',
      qry := simplequery('select preco from produto_preco_faixa where :p1 >= qtde and id_produto = :p2 and tipo="VAREJO" order by qtde desc limit 1',
        [strtofloat(Qtde.Text), SQL_ProdutoConsultaPROD_CODIGO.Value]);
      if qry <> nil then
        preco_produto := qry.Fields[0].asextended
      else
        preco_produto := SQL_ProdutoConsultaPRECO_FINAL_VAREJO.asextended;
    end;

  end;

  precototal := strtofloat(FormatFloat('0.00', preco_produto * (strtofloat(Qtde.Text))));

  FORM_PDV.item := FORM_PDV.item + 1;
  with SQL_VENDA_ITEM do
  begin
    Close;
    SQL.Clear;
    SQL.Add('insert into venda_item (CODIGO, CODIGO_VENDA, CODIGO_ITEM_VENDA, CODIGO_PRODUTO, DESCRICAO, UNIDADE,QUANTIDADE, PRECO, ACRESCIMO, DESCONTO, PRECO_CUSTO, PRECO_TOTAL)');
    SQL.Add(' values (DEFAULT, :pcodigo_venda, :pcodigo_item_venda, :pcodigo_produto, :pdescricao, :punidade, :pquantidade, :ppreco, :pacrescimo, :pdesconto, :ppreco_custo, :ppreco_total)');
    Params.ParamByName('pcodigo_venda').Value := lbl_cod_venda.Caption;
    Params.ParamByName('pcodigo_item_venda').Value := FORM_PDV.item;
    Params.ParamByName('pcodigo_produto').Value := SQL_ProdutoConsultaPROD_CODIGO.Value;
    Params.ParamByName('pdescricao').Value := SQL_ProdutoConsultaPROD_DESCRICAO.Value;
    Params.ParamByName('punidade').Value := SQL_ProdutoConsultaPROD_CDUNIDADE.Value;
    Params.ParamByName('pquantidade').asextended := strtofloat(Qtde.Text);
    Params.ParamByName('ppreco').asextended := preco_produto;
    Params.ParamByName('pacrescimo').asextended := 0.00;
    Params.ParamByName('pdesconto').asextended := 0.00;
    Params.ParamByName('ppreco_custo').asextended := simplequery('SELECT CUSTO_MEDIO FROM PRODUTO_PROD WHERE PROD_CODIGO=' + SQL_ProdutoConsultaPROD_CODIGO.AsString)
      .Fields[0].asextended;
    Params.ParamByName('ppreco_total').asextended := precototal;
    ExecSQL;
  end;
  consultaritem;
  totalnfce(lbl_subtotal);
end;

procedure Tfrm_pdv.OnCancelClickAlterarPreco(Sender: TObject);
begin
  modal_result_ap := mrCancel;
  frm_alterar_preco_pdv.Close;
  FORM_PDV.Edt_codBarras.selectall;
  FORM_PDV.Edt_codBarras.setfocus;
end;

procedure Tfrm_pdv.OnConcluirClickAlterarPreco(Sender: TObject);
var
  qry: TFDQuery;
  cod_prod: string;
begin
  cod_prod := BuscarCodigo(edt_alterar_preco);
  if cod_prod <> emptystr then
  begin
    qry := simplequery('SELECT PRECO_FINAL_VAREJO FROM PRODUTO_PROD WHERE PROD_CODIGO=' + cod_prod);
    if qry <> nil then
    begin
      if not(ansimatchstr(frm_alterar_preco_pdv.edt_novo_preco.Text, [emptystr, '0'])) then
      begin
        EXECQUERY('UPDATE PRODUTO_PROD SET PRECO_FINAL_VAREJO = ' + TrocaVirgPPto(frm_alterar_preco_pdv.edt_novo_preco.Text) + ' WHERE PROD_CODIGO = ' + cod_prod);
        modal_result_ap := mrOk;
        frm_alterar_preco_pdv.Close;
        PreencherDadosProduto(edt_alterar_preco, edt_qtde_alterar_preco, lbl_descricao_produto, lbl_preco_unitario, lbl_PROD_CDUNIDADE);
      end;
    end;
  end;
end;

procedure Tfrm_pdv.OnShowAlterarPreco(Sender: TObject);
var
  qry: TFDQuery;
  ds: TDataSource;
begin
  qry := simplequery('SELECT PROD_CODIGO as CODIGO_ITEM_VENDA, PROD_DESCRICAO as DESCRICAO, PRECO_FINAL_VAREJO as PRECO FROM PRODUTO_PROD WHERE PROD_CODIGO = ' +
    BuscarCodigo(edt_alterar_preco));
  if qry <> nil then
  begin
    with frm_alterar_preco_pdv.SQL_ITENS do
    begin
      Close;
      SQL.Clear;
      SQL.Add(qry.SQL.Text);
      open;
    end;
  end;
  frm_alterar_preco_pdv.cb_itens.Properties.OnChange := nil;
  frm_alterar_preco_pdv.cb_itens.ItemIndex := 0;
  frm_alterar_preco_pdv.edt_preco_atual.Text := formatarmoeda(qry.Fields[2].asextended);
  frm_alterar_preco_pdv.edt_novo_preco.setfocus;
  frm_alterar_preco_pdv.cb_itens.Enabled := false;
end;

procedure Tfrm_pdv.PadronizarLayout;
begin
  Edit2.Text := '1'; // Quantidade
  lbl_UnidadeMedida.Caption := 'UN'; // Unidade de Medida
  lbl_estoque.Font.Color := clBlack;
  lbl_estoque.Caption := '0';
  Edt_codBarras.Clear;
  Edt_codBarras.setfocus;
  Label1.Caption := 'DESCRIÇÃO DO PRODUTO';
end;

function Tfrm_pdv.ProdutoRepetido(CodigoProduto, CodigoVenda, Quantidade: string): boolean;
var
  querytmp, qry: TFDQuery;
  PrecoItem, Preco_Total, DescontoItem, AcrescimoItem, QuantidadeAnterior, NovaQuantidade: extended;
  item: string;
  ProdutoRepetido: boolean;
begin
  querytmp := simplequery
    ('SELECT CODIGO, PRECO,DESCONTO,ACRESCIMO, QUANTIDADE, codigo_produto, CODIGO_ITEM_VENDA FROM venda_item where codigo_produto = :pcodigo_produto and codigo_venda = :pcodigo_venda',
    [CodigoProduto, CodigoVenda]);
  if querytmp <> nil then
  begin
    with querytmp do
    begin
      DescontoItem := FieldByName('DESCONTO').Value;
      AcrescimoItem := FieldByName('ACRESCIMO').Value;
      QuantidadeAnterior := FieldByName('QUANTIDADE').Value;
      item := FieldByName('CODIGO_ITEM_VENDA').Value;
      NovaQuantidade := strtofloat(Quantidade) + QuantidadeAnterior;
      if simplequery('select produto_preco_faixa from parametros_sistema').Fields[0].AsString = m_true then
      begin
        qry := simplequery('select preco from produto_preco_faixa where :p1 >= qtde and id_produto = :p2 and tipo="VAREJO" order by qtde desc limit 1',
          [NovaQuantidade, SQL_ProdutoConsultaPROD_CODIGO.Value]);
        if qry <> nil then
          PrecoItem := qry.Fields[0].asextended
        else
          PrecoItem := FieldByName('PRECO').Value;
      end
      else if simplequery('select produto_preco_faixa from parametros_sistema').Fields[0].AsString = m_false then
        PrecoItem := FieldByName('PRECO').Value;

      Preco_Total := (PrecoItem * NovaQuantidade) - DescontoItem + AcrescimoItem;
      Preco_Total := tfunctions.replace(FormatarTag(Preco_Total), '.', ',', varDouble);

      EXECQUERY('Update venda_item SET PRECO = :p1, PRECO_TOTAL = :p2 , QUANTIDADE = :p3 where CODIGO_VENDA = :p4 and CODIGO_ITEM_VENDA = :p5',
        [PrecoItem, Preco_Total, NovaQuantidade, CodigoVenda, item]);
      ProdutoRepetido := true;
    end;
  end
  else
    ProdutoRepetido := false;
  result := ProdutoRepetido;
end;

procedure Tfrm_pdv.relogioTimer(Sender: TObject);
begin
    FORM_PDV.hora.Caption := FormatDateTime('HH:nn', now);

    verificarstatusconexao(false);
    //FORM_PDV.lbl_tipoemissao.Caption := TParametros_NF.TIPO_EMISSAO;
end;

procedure Tfrm_pdv.RotinaCancelarVenda;
begin
  cancelarvenda;
  consultaritem;
  insertpdv;
end;

procedure Tfrm_pdv.TelaConsultaProduto(EncontraDois: boolean; EditConsulta: TEdit);
var
  CodigoProduto: string;
begin
  Frm_Consulta_Generica := TFrm_Consulta_Generica.create(nil, cgProduto, EditConsulta);
  with Frm_Consulta_Generica do
  begin
    if EncontraDois = true then
      edt_consulta.Text := EditConsulta.Text;
    showmodal;
    Free;
  end;
end;

procedure Tfrm_pdv.BtnRemoverItemClick(Sender: TObject);
begin
  if BtnRemoverItem.Enabled and pnbotoes.Enabled then
  begin
    Frm_ExcluirItem := TFrm_ExcluirItem.create(application);
    Frm_ExcluirItem.cod_venda := lbl_cod_venda.Caption;
    Frm_ExcluirItem.showmodal;
    DS_Consulta_ItensStateChange(nil);
  end;
end;

procedure Tfrm_pdv.BtnDescontoAcrescimosClick(Sender: TObject);
begin
  if pnbotoes.Enabled and BtnDescontoAcrescimos.Enabled then
  begin
    frm_desc_Acres := TFrm_Desc_Acres.create(nil);
    frm_desc_Acres.cod_venda := lbl_cod_venda.Caption;
    frm_desc_Acres.showmodal;
    frm_desc_Acres.Free;
    DS_Consulta_ItensStateChange(nil);
  end;
end;

procedure Tfrm_pdv.BtnCancelarVendaClick(Sender: TObject);
begin
  if BtnCancelarVenda.Enabled = true and pnbotoes.Enabled then
  begin
    cancelar_venda;
    fechar_venda_aux;
  end;
end;

procedure Tfrm_pdv.BtnConsultarNFCEClick(Sender: TObject);
begin
  if pnbotoes.Enabled then
  begin
    if not u_funcoes.VerificaAberta(Frm_consul_nfce) then
    begin
      Frm_consul_nfce := TFrm_consul_nfce.create(nil);
      Frm_consul_nfce.visible := false;
      Frm_consul_nfce.showmodal;
      Frm_consul_nfce.Close;
    end;
  end;
end;

procedure Tfrm_pdv.BtnConsultarPrecoClick(Sender: TObject);
begin
  if pnbotoes.Enabled then
  begin
    Frm_Consultar_Preco := TFrm_Consultar_Preco.create(nil);
    Frm_Consultar_Preco.Label2.Caption := Label4.Caption;
    Frm_Consultar_Preco.showmodal;
    Frm_Consultar_Preco.Free;
  end;
end;

procedure Tfrm_pdv.BtnConsultarVendaClick(Sender: TObject);
begin
  if pnbotoes.Enabled then
  begin
    if not u_funcoes.VerificaAberta(Frm_Venda_Mercadoria) then
    begin
      Frm_Venda_Mercadoria := TFrm_Venda_Mercadoria.create(nil);
      Frm_Venda_Mercadoria.showmodal;
    end;
  end;
end;

procedure Tfrm_pdv.btnFecharPdvClick(Sender: TObject);
begin
  if pnbotoes.Enabled then
    BtnSair.Click;
end;

procedure Tfrm_pdv.BtnSairClick(Sender: TObject);
begin
  if lblstatuscaixa.Caption = CaixaDisponivel then
    FORM_PDV.Close
  else
  begin
    //if cancelar_venda then
      FORM_PDV.Close;
  end;
end;

procedure Tfrm_pdv.BtnStatusServicoClick(Sender: TObject);
begin
  if pnbotoes.Enabled then
  begin
    tfrm_confnfce.create(nil).StatusServico.Close;
  end;
end;

procedure Tfrm_pdv.btn_alterar_quantidadeClick(Sender: TObject);
begin
  if btn_alterar_quantidade.Enabled then
    if not VerificaAberta(frm_alterar_quantidade) then
    begin
      frm_alterar_quantidade := tfrm_alterar_quantidade.create(nil);
      frm_alterar_quantidade.cod_venda := lbl_cod_venda.Caption;
      frm_alterar_quantidade.showmodal;
      frm_alterar_quantidade.Free;
      DS_Consulta_ItensStateChange(nil);
    end;
end;

procedure Tfrm_pdv.ajustargrid;

  function TotalColumnsWidth: Integer;
  var
    i, Value: Integer;
  begin
    Value := 0;
    for i := 0 to gridItens.Columns.Count - 1 do
    begin
      Value := Value + gridItens.Columns.Items[i].Width;
    end;
    result := Value;
  end;

var
  ColumnCount, GridTotalWidth, ColumnWidth, totcolwidth: Integer;
  calcwidthaux: extended;
  mensagem: string;
begin
  gridItens.Anchors := [akLeft, aktop, AkRight, akbottom];
  gridItens.Options := [dgTitles, dgIndicator, dgColLines, dgRowLines, dgTabs, dgConfirmDelete, dgCancelOnExit, dgTitleClick, dgTitleHotTrack];
  ColumnCount := gridItens.Columns.Count;
  if ColumnCount = 0 then
    exit
  else
  begin
    calcwidthaux := Screen.Width - (Screen.Width * 0.02);
    GridTotalWidth := trunc(calcwidthaux);
    totcolwidth := GridTotalWidth - TotalColumnsWidth;
    gridItens.Columns[2].Width := gridItens.Columns[2].Width + (trunc(calcwidthaux) - TotalColumnsWidth) - gridItens.Columns[0].Width;
  end;
end;

procedure Tfrm_pdv.AjustarLayout;
var
  calcaux: extended;
begin
  if simplequery('SELECT CONSULTA_REF_FABRICANTE FROM PARAMETROS_VENDA').Fields[0].AsString = m_true then
    Label4.Caption := 'CÓD. / CÓD. BARRAS / DESCRIÇÃO / REF. FABRICANTE';
  pncabecalho.Anchors := [aktop, akLeft, AkRight];

  lblstatuscaixa.Align := alClient;
  lblstatuscaixa.Alignment := tacenter;
  lblstatuscaixa.Anchors := [aktop, AkRight, akLeft];

  lbl_venda_aux.Align := alNone;
  lbl_venda_aux.Alignment := taRightJustify;
  lbl_venda_aux.Anchors := [aktop, AkRight];
  lbl_venda_aux.visible := false;

  BtnSair.Anchors := [aktop, AkRight];

  ajustargrid;

  grpsubtot.Anchors := [aktop, AkRight];
  Data.Anchors := [aktop, AkRight];
  hora.Anchors := [aktop, AkRight];
  pnbotoes.Anchors := [akLeft, AkRight, akbottom];

  grpDescProduto.Anchors := [akbottom, AkRight, akLeft];
  grpcodprod.Anchors := [akbottom, akLeft, AkRight];
  Label4.Anchors := [akLeft, AkRight];
  Label4.Alignment := tacenter;
  Edt_codBarras.Anchors := [akbottom, akLeft, AkRight];
  Label11.Anchors := [akbottom, AkRight];
  grpqtde.Anchors := [akbottom, AkRight];
  grpEstoque.Anchors := [aktop, AkRight];
  pninfo.Anchors := [akbottom, akLeft, AkRight];
  lbl_c_tel.Anchors := [akbottom, AkRight];
  lbl_tel.Anchors := [akbottom, AkRight];
  lbl_c_cnpj.Anchors := [akbottom, AkRight];
  lbl_cliente.Anchors := [akbottom, akLeft];
  lbl_cnpj.Anchors := [akbottom, AkRight];
  pninfovenda.Anchors := [akbottom, akLeft, AkRight];
  lnup.Anchors := [akbottom, akLeft, AkRight];
  lndown.Anchors := [akbottom, akLeft, AkRight];
  pnproduto.Anchors := [akbottom, akLeft, AkRight];
end;

procedure Tfrm_pdv.btnacessoClick(Sender: TObject);
begin
  if pnbotoes.Enabled then
    TUIFunctions.AcessoRemoto;
end;

procedure Tfrm_pdv.BtnAlterarPrecoClick(Sender: TObject);
begin
  if BtnAlterarPreco.Enabled and pnbotoes.Enabled then
    if not u_funcoes.VerificaAberta(frm_alterar_preco_pdv) then
    begin
      frm_alterar_preco_pdv := Tfrm_alterar_preco_pdv.create(nil);
      frm_alterar_preco_pdv.cod_venda := lbl_cod_venda.Caption;
      frm_alterar_preco_pdv.showmodal;
      frm_alterar_preco_pdv.Free;
      DS_Consulta_ItensStateChange(nil);
    end;
end;

procedure Tfrm_pdv.BtnFecharVendaClick(Sender: TObject);
begin
  if BtnFecharVenda.Enabled = true and pnbotoes.Enabled then
  begin
    try
      if simplequery('SELECT INFORMA_VENDEDOR FROM PARAMETROS_VENDA').Fields[0].AsString = m_true then
        if COD_VENDEDOR = '' then
        begin
          wnAlerta('Informar Vendedor', slinebreak + 'Nenhum vendedor foi informado na venda!' + slinebreak +
            'Para prosseguir com a operação, informe um vendedor');
          BtnInformarVendedor.Click;
          Edt_codBarras.selectall;
          Edt_codBarras.setfocus;
          exit;
        end;
      if fecharvenda then
        if not VerificaAberta(Frm_Recebimento) then
        begin
          Frm_Recebimento := TFrm_Recebimento.create(nil);
          Frm_Recebimento.showmodal;
          fechar_venda_aux;
        end;
    except
      on E: Exception do
      begin
        wnErro('Erro na Finalização', E.Message + slinebreak + 'Erro ao finalizar a venda.');
      end;
    end;
  end;
end;

procedure Tfrm_pdv.BtnInformarClienteClick(Sender: TObject);
begin
  if pnbotoes.Enabled then
  begin
    Frm_Informa_Cliente := TFrm_Informa_Cliente.create(application);
    Frm_Informa_Cliente.edt_nome.Text := lbl_cliente.Caption;
    Frm_Informa_Cliente.edt_cpf_cnpj.Text := lbl_cnpj.Caption;
    Frm_Informa_Cliente.edt_telefone.Text := lbl_tel.Caption;
    Frm_Informa_Cliente.edt_ie_rg.Text := IE;
    Frm_Informa_Cliente.edt_celular.Text := Celular;
    Frm_Informa_Cliente.edt_rua.Text := Rua;
    Frm_Informa_Cliente.edt_numero.Text := Numero;
    Frm_Informa_Cliente.edt_Bairro.Text := Bairro;
    Frm_Informa_Cliente.edt_Municipio.Text := Municipio;
    Frm_Informa_Cliente.showmodal;
    if Frm_Informa_Cliente.by_button then
    begin
      CodCliente := Frm_Informa_Cliente.cod_cliente;
      lbl_cnpj.Caption := Frm_Informa_Cliente.edt_cpf_cnpj.Text;
      lbl_cliente.Caption := Frm_Informa_Cliente.edt_nome.Text;
      lbl_tel.Caption := Frm_Informa_Cliente.edt_telefone.Text;
      IE := Frm_Informa_Cliente.edt_ie_rg.Text;
      Rua := Frm_Informa_Cliente.edt_rua.Text;
      Numero := Frm_Informa_Cliente.edt_numero.Text;
      Celular := Frm_Informa_Cliente.edt_celular.Text;
      Bairro := Frm_Informa_Cliente.edt_Bairro.Text;
      Municipio := Frm_Informa_Cliente.edt_Municipio.Text;
    end;
    Frm_Informa_Cliente.Free;
    AjustarLayout;
  end;
end;

procedure Tfrm_pdv.BtnInformarVendedorClick(Sender: TObject);
begin
  if pnbotoes.Enabled and BtnInformarVendedor.Enabled then
  begin
    Frm_Consulta_Generica := TFrm_Consulta_Generica.create(nil, cgVendedor, lbl_vendedor);
    Frm_Consulta_Generica.showmodal;
    Frm_Consulta_Generica.Free;
    if lbl_vendedor.Caption <> emptystr then
    begin
      COD_VENDEDOR := copy(lbl_vendedor.Caption, 0, pos(';', lbl_vendedor.Caption));
      COD_VENDEDOR := tfunctions.replace(COD_VENDEDOR, ';');
      lbl_vendedor.Caption := tfunctions.replace(lbl_vendedor.Caption, COD_VENDEDOR + ';');
    end;
  end;
end;



procedure Tfrm_pdv.Edit2Enter(Sender: TObject);
begin
  if combinacaoQtde or etiqueta then
  begin
    InserirProdutoNaVenda;
    combinacaoQtde := false;
    etiqueta := false;
  end
  else if (copy(Edt_codBarras.Text, 0, 5) <> prefix_etiqueta) and IsNumber(Edt_codBarras.Text) and
    ((length(Edt_codBarras.Text) >= 7) and (length(Edt_codBarras.Text) <= 16)) then
    InserirProdutoNaVenda;

end;

procedure Tfrm_pdv.Edit2Exit(Sender: TObject);
begin
  ZerarValorDigitado;
end;

procedure Tfrm_pdv.Edit2KeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
begin
  if Key = VK_RETURN then
    InserirProdutoNaVenda;
end;

procedure Tfrm_pdv.Edit2KeyPress(Sender: TObject; var Key: Char);
begin
  if lbl_UnidadeMedida.Caption = 'KG' then
  begin
    inherited;
    Key := FormatarQuantidadeKG(Edit2, Key);
  end;
end;

procedure Tfrm_pdv.edtComandaNumExit(Sender: TObject);
var
  qry: TFDQuery;
  iComanda: Integer;
begin
  iComanda := 0;
  if edtComandaNum.Text <> '' then
    iComanda := strtoint(edtComandaNum.Text);
  if iComanda = 0 then
    iComanda := 1;
  qry := Tdb.simplequery('select codigo_venda, total_venda from venda where comanda = ? and data = ? and status = "FECHADA"', [iComanda, date]);
  if qry <> nil then
  begin
    if TDialogs.wnConfirmacao('Comanda', format('Uma comanda com número "%d" já foi aberta hoje para a venda Nº %d, total de R$ %f' + slinebreak +
      'Deseja reutilizar esse número?', [iComanda, qry.Fields[0].asInteger, qry.Fields[1].asextended])) then
    begin
      Tparametros_venda.Comanda.Numero := iComanda;
      edtComandaNum.Text := FormatFloat('000', iComanda);
    end
    else
    begin
      Tparametros_venda.Comanda.Numero := iComanda;
      edtComandaNum.Text := FormatFloat('000', Tparametros_venda.Comanda.Numero);
    end;
  end
  else
  begin
    Tparametros_venda.Comanda.Numero := iComanda;
    edtComandaNum.Text := FormatFloat('000', iComanda);
  end;
end;

procedure Tfrm_pdv.edtComandaNumKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
begin
  if Key = VK_RETURN then
    Edt_codBarras.setfocus;
end;

procedure Tfrm_pdv.edtComandaNumKeyPress(Sender: TObject; var Key: Char);
begin
  inherited;
  Key := tfunctions.OnlyNumbers(Key);
end;

procedure Tfrm_pdv.Edt_codBarrasKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
begin

  if Key = VK_RETURN then
  begin
    if Edt_codBarras.Text = '' then
      TelaConsultaProduto(false, Edt_codBarras)
    else
    begin
      if (tfunctions.matchRegex(Edt_codBarras.Text, '^((\d.+)|(\d))\*((\d.+)|(\d))$')) then
      begin
        combinacaoQtde := true;
        Edit2.Text := tfunctions.getSubRegex(Edt_codBarras.Text, '^((\d.+)|(\d))\*');
        Edit2.Text := copy(Edit2.Text, 0, length(Edit2.Text) - 1);
        Edt_codBarras.Text := tfunctions.getSubRegex(Edt_codBarras.Text, '\*((\d.+)|(\d))$');
        Edt_codBarras.Text := copy(Edt_codBarras.Text, 2, length(Edt_codBarras.Text));
        PreencherDadosProduto(Edt_codBarras, Edit2, Label1, nil, lbl_UnidadeMedida);
      end
      else
      begin
        if (copy(Edt_codBarras.Text, 0, 1) = '2') and IsNumber(Edt_codBarras.Text) and (length(Edt_codBarras.Text) > 6) then
          PreencherProdBalanca
        else
        begin
          if (copy(Edt_codBarras.Text, 0, 5) = prefix_etiqueta) and IsNumber(Edt_codBarras.Text) and
            ((length(Edt_codBarras.Text) >= 7) and (length(Edt_codBarras.Text) <= 16)) then
          begin
            etiqueta := true;
            Edt_codBarras.Text := IntToStr(strtoint(copy(Edt_codBarras.Text, 6, 7)))
          end
          else if simplequery('SELECT CONSULTA_REF_FABRICANTE FROM PARAMETROS_VENDA').Fields[0].AsString = m_true then
            consultar_ref;
          PreencherDadosProduto(Edt_codBarras, Edit2, Label1, nil, lbl_UnidadeMedida);
        end;
      end;
    end;
  end;
end;

procedure Tfrm_pdv.FormClose(Sender: TObject; var Action: TCloseAction);
  procedure closeRoutine;
  begin
       FORM_PDV.Hide;
       //if (simplequery('SELECT FINAN_C_ABR_FECH FROM PARAMETROS_MODULAR').Fields[0].AsString = m_true) then
       //begin
       //     Frm_abrir_caixa.Close;
       //end;

    if not assigned(Frm_PDV_AUX) then // venda auxiliar
    begin
      if TParametros_NF.EmissaoNormal then
      begin
        if TParametros_NF.NFCe.LiberadoParaUso then
        begin
          EnviarContingencia;
          InutilizarPendentes;
        end;
      end;
      frm_pdv := nil;
    end
    else
      Frm_PDV_AUX := nil;
    Action := cafree;
  end;

begin
     if venda_auxiliar then
     begin
          Frm_PDV_AUX := nil;
          Action := cafree;
     end
     else
     begin
          if TEnv.Core.pdvOnly then
          begin
               if (TDialogs.wnConfirmacao('SMC LIGHT', slinebreak + 'Deseja fechar o sistema ?', 16)) then
               begin
                    closeRoutine;
                    application.Terminate;
               end
               else
                   Abort;
          end
          else
              closeRoutine
     end;

end;

procedure Tfrm_pdv.FormCreate(Sender: TObject);
var reg: TRegIniFile;
begin
    NumeroCaixa := 1;
    combinacaoQtde := false;
    etiqueta := false;
    TView.VW_CHECK_CONFIG.show;
    AjustarLayout;
    KeyControl := false;
    TView.VW_CHECK_CONFIG.Close;
    datahora;

    try
      reg:= TRegIniFile.Create('SMC');
      NumeroCaixa := reg.ReadInteger('Caixa','Terminal',1);
      lbl_caixa.Caption := IntToStr(NumeroCaixa);
    finally
       reg.Free;

       if NumeroCaixa <= 0 then
          NumeroCaixa := 1;
    end;
end;

procedure Tfrm_pdv.FormKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
begin
  if Key = vk_escape then
  begin
    BtnSair.Click;
    Key := 0;
  end;
  teclasatalho(Key, [vk_f1, vk_f2, vk_f3, vk_f4, vk_f5, vk_f6, vk_f7, vk_f8, vk_f10, vk_f11, vk_f12],
    [BtnConsultarPreco, BtnInformarCliente, BtnRemoverItem, BtnFecharVenda, BtnCancelarVenda, BtnAlterarPreco, btn_alterar_quantidade, BtnDescontoAcrescimos,
     BtnInformarVendedor, BtnFecharCaixa, BtnVendaAux]);
end;

procedure Tfrm_pdv.FormShow(Sender: TObject);
begin
  verificarstatusconexao(true);
  ConfiguracoesIniciais;
  lbl_tipoemissao.Caption := TParametros_NF.TIPO_EMISSAO;
  parametrosCaixa;

  if not venda_auxiliar then
  begin
      Module.query.Close;
      Module.query.Open('SELECT CODIGO_VENDA, STATUS FROM venda where caixa = '+lbl_caixa.Caption+' AND STATUS = '+QuotedStr('ABERTA')+' AND DATA = CURRENT_DATE() ORDER BY CODIGO_VENDA DESC LIMIT 1');
      if Module.query.FieldByName('STATUS').AsString = 'ABERTA' then
      begin
          lbl_cod_venda.Caption := Module.query.FieldByName('CODIGO_VENDA').AsString;
          consultaritem;
          totalnfce(lbl_subtotal);
          CaixaLivre(false);
          FORM_PDV.item := Sql_consulta_itens.RecordCount;
      end;
      Module.query.Close;
  end;
end;

function Tfrm_pdv.FORM_PDV: Tfrm_pdv;
begin
  if assigned(Frm_PDV_AUX) then
    result := Frm_PDV_AUX
  else
    result := frm_pdv;
end;

procedure Tfrm_pdv.gerarvenda;
var
  sql_anterior: string;
  cod_venda: Integer;
begin
  sql_increment_venda.Active := false;
  sql_increment_venda.Active := true;
  cod_venda := sql_increment_vendaAUTO_INCREMENT.Value;
  if cod_venda = 0 then
  begin
    lbl_cod_venda.Caption := '1';
    cod_venda := 1;
  end
  else
    lbl_cod_venda.Caption := IntToStr(cod_venda);
  with SQL_Venda do
  begin

    Active := true;
    Insert;
    FieldByName('CODIGO_VENDA').Value := lbl_cod_venda.Caption;
    FieldByName('DATA').Value := date;
    FieldByName('HORA').Value := time;
    FieldByName('CAIXA').Value := lbl_caixa.Caption;
    FieldByName('OPERADOR').Value := cod_operador;
    FieldByName('STATUS').Value := 'ABERTA';
    FieldByName('IdCaixa').Value := ID_CAIXA;

    if Tparametros_venda.Comanda.Enabled then
    begin
      FieldByName('comanda').Value := Tparametros_venda.Comanda.Numero;
      Tparametros_venda.Comanda.Numero := Tparametros_venda.Comanda.Numero + 1;
    end;

    Post;
    Active := false;

    if Tparametros_venda.Comanda.Enabled then
      edtComandaNum.Text := FormatFloat('000', Tdb.simplequery('select comanda from venda where codigo_venda = ?', [lbl_cod_venda.Caption]).Fields[0].Value);

     if (simplequery('SELECT FINAN_C_ABR_FECH FROM PARAMETROS_MODULAR').Fields[0].AsString = m_true) then
     begin
          qCaixaDet.Close;
          qCaixaDet.Open('SELECT * FROM CAIXADETALHE WHERE ID IS NULL');
          qCaixaDet.Append;
          qCaixaDetOperacao.AsString := '04';
          qCaixaDetDescricaoOperacao.AsString := 'VENDA';
          qCaixaDetDescricao.AsString := 'VENDA '+IntToStr(COD_VENDA);
          qCaixaDetIdCaixa.AsInteger := ID_CAIXA;
          qCaixaDetOperador.AsString := lbl_operador.Caption;
          qCaixaDetLancamento.AsDateTime := now;
          qCaixaDetCodigoUsuario.AsInteger := cod_operador;
          qCaixaDetCodigoVenda.AsInteger := cod_venda;
          qCaixaDet.Post;
          qCaixaDet.Close;
     end;
  end
end;

procedure Tfrm_pdv.IncluirItemVenda(Cod_CodBarras_Descricao, Qtde: TEdit; LabelTotalNFCE: TLabel);
var
  qry: TFDQuery;
begin
  with SQL_ProdutoConsulta do
  begin
    Close;
    SQL.Clear;
    SQL.Add('Select * from PRODUTO_PROD');
    SQL.Add('WHERE PROD_CODIGO = :pcodigo');
    ParamByName('pcodigo').Value := BuscarCodigo(Cod_CodBarras_Descricao);
    open;
  end;
  LabelTotalNFCE.Caption := FormatFloat('0.00', SQL_ProdutoConsultaPRECO_FINAL_VAREJO.Value);
  if lblstatuscaixa.Caption = CaixaDisponivel then
    gerarvenda;
  itenspedido(Qtde);
  PadronizarLayout;
  CaixaLivre(false);
end;

procedure Tfrm_pdv.InserirProdutoNaVenda;
begin
  if not estoque_zerado(BuscarCodigo(Edt_codBarras), lbl_cod_venda.Caption, Edit2) then
    if ProdutoRepetido(BuscarCodigo(Edt_codBarras), lbl_cod_venda.Caption, Edit2.Text) then
    begin
      consultaritem;
      totalnfce(lbl_subtotal);
      PadronizarLayout;
      exit;
    end
    else
      IncluirItemVenda(Edt_codBarras, Edit2, lbl_subtotal);
end;

end.
Trocou PROD_UNIDADE por PROD_UNIDADE : automaticamente em 16/06/2020 10:17
Trocou PROD_UNIDADE por PROD_UNIDADE : automaticamente em 16/06/2020 10:24
Trocou UNIDADE_MEDIDA por PROD_UNIDADE : automaticamente em 16/06/2020 11:05
Trocou INFO_ADICIONAIS por PROD_DETALHES : automaticamente em 16/06/2020 12:09
Trocou PROD_REFERENCIASFABRICA por PROD_REFERENCIASFABRICA : automaticamente em 16/06/2020 12:40
Trocou REFERENCIA_FABRICANTE por PROD_REFERENCIASFABRICA : automaticamente em 16/06/2020 14:27
Trocou PROD_UNIDADE por PROD_CDUNIDADE : automaticamente em 16/06/2020 17:07
