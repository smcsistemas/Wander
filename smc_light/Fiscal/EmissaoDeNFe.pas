//Verificado automaticamente em 16/06/2020 09:27
unit EmissaoDeNFe;
{

========================================================================================================================================
ALT|   DATA |HORA |UNIT                        |Descrição                                                                              |
---|--------|-----|----------------------------|----------------------------------------------------------------------------------------
344|15/06/20|18:23|EmissaoDeNFe                |Passa a tratar PRODUTO_PROD(PROD_CDUNIDADE)ao invés de PRODUTO(PROD_CDUNIDADE)
322|15/06/20|13:35|EmissaoDeNFe                |Passa a tratar PRODUTO_PROD(PROD_EAN)    ao invés de PRODUTO(CODIGO_BARRAS)
315|15/06/20|10:14|EmissaoDeNFe                |Passa a tratar PRODUTO_PROD(PROD_CODIGO) ao invés de PRODUTO(CODIGO)
287|10/06/20|11:20|EmissaoDeNFe                |Grupo BA incorporou grupos B20a e B20j (NFe referenciadas produtor rural e cupom fiscal)
286|09/06/20|22:12|EmissaoDeNFe                |Grupo ZX - Informações Suplemtares da NFe - Explicitado
285|09/06/20|21:37|EmissaoDeNFe                |Grupo ZD - Informações do Responsável Técnico - Explicitado
284|09/06/20|21:01|EmissaoDeNFe                |Grupo YA - Informações de Pagamento - Explicitado
283|09/06/20|20:16|EmissaoDeNFe                |Grupo Y - Cobr/Fat/Dup explicitados
282|09/06/20|16:53|EmissaoDeNFe                |Passa a tratar Grupo LB da NFe = Operações com Papel Imune
275|09/06/20|06:33|EmissaoDeNFe                |Passa a usar a função VazioSeInteiroMenos1
274|09/06/20|06:33|EmissaoDeNFe                |Passa a usar a função InteiroMenos1_se_Vazio
271|08/06/20|11:03|EmissaoDeNFe                |Consumindo a tabela RASTRO_RAS (Dados de rastreabilidade)
270|08/06/20|08:35|EmissaoDeNFe                |Passa a tratar a coluna PROD_RASTREAVEL (indicador de rastreabilidade) da tabela PRODUTO
265|06/06/20|22:09|EmissaoDeNFe                |Criada procedure Tratar_Grupo_I80_Rastreabilidade_de_produto
263|06/06/20|16:29|EmissaoDeNFe                |APlicando o CST do COFINS da tabela RELACAO_CFOP_x_PRODUTO_xCST_PISCOFINS_RPC
262|06/06/20|15:22|EmissaoDeNFe                |% PIS Cumulativo e Não Cumulativo estavam fixo no código (0,65% e 1,65%). Passa a tratar as novas colunas pPIS_CUMULATIVO e pPIS_NAOCUMULATIVO da tabela EMPRESA
255|05/06/20|14:09|EmissaoDeNFe                |Passa a usar a nova chave RPC_TPMOV da tabela RELACAO_CFOP_x_PRODUTO_xCST_PISCOFINS_RPC
253|05/06/20|14:09|EmissaoDeNFe                |APlicando o CST do PIS da tabela RELACAO_CFOP_x_PRODUTO_xCST_PISCOFINS_RPC
249|02/06/20|20:08|EmissaoDeNFe                |Passa a completar com pontos "." as unidades de medida que possuam menos de 3 caracteres (ex: KG -> KG.)
========================================================================================================================================

================================================================================
| ITEM|DATA  HR|UNIT                |HISTORICO                                 |
|-----|--------|--------------------|------------------------------------------|
|  198|25/05/20|wander              |VENDA_ITEM(CFOP) substituido por          |
|     |   14:37|EmissaoDeNFe        |VENDA_ITEM(VI_CFOP_CSOSN)                 |
================================================================================

================================================================================
|   DATA   |DESENVOLVEDOR|HISTORICO DA ALTERACAO DO CODIGO                     |
|----------|-------------|-----------------------------------------------------|
|14/03/2020|WANDER       |Criada esta unit/form para concentrar todo o processo|
|        25|             |de emissão de documentos fiscais e poder atender a   |
|          |             |qualquer parte do sistema que precise emitir doc fisc|
|----------|-------------|-----------------------------------------------------|
|16/03/2020|WANDER       |Passou usar a variav global g_Numero_do_Movimento c/ |
|        26|             |o nro do movimento p/o qual será emitido doc fiscal  |
|----------|-------------|-----------------------------------------------------|
|19/03/2020|WANDER       |Emitiu a primeira NFe pelo SMC                       |
|        29|             |                                                     |
|----------|-------------|-----------------------------------------------------|
|21/03/2020|WANDER       |Passou a ler dados do Cliente ou do Fornecedor como  |
|        33|             |Destinatário em função de parâmetros do tipo de movim|
|----------|-------------|-----------------------------------------------------|
|21/03/2020|WANDER       |Passou a aplicar a natureza da operacao na NFe em    |
|        34|             |função de parâmetros do tipo de movimento            |
|----------|-------------|-----------------------------------------------------|
|21/03/2020|WANDER       |Passou a aplicar a tipo de NFe (entrada ou saída) em |
|        35|             |função de parâmetros do tipo de movimento            |
|----------|-------------|-----------------------------------------------------|
|31/03/2020|WANDER       |Passou a configurar idDest (interna, interestadual,  |
|        58|             |exterior) a partir da tabela Natureza_Operacao e não |
|          |             |mais da tabela TipoMovimento_TpMov                   |
|----------|-------------|-----------------------------------------------------|
|02/04/2020|WANDER       |Implementado todo o tratamento de ICMS               |
|     a    |             |                                                     |
|08/04/2020|             |                                                     |
|        67|             |                                                     |
================================================================================
|ITEM |DATA |UNIT / FILE         |HISTORICO                                    |
|-----|-----|--------------------|---------------------------------------------|
|   89|20/04|Wander              |Tratamento de IPI (indicação)                |
|     |07:30|                    |                                             |
|-----|-----|--------------------|---------------------------------------------|
|   90|20/04|Wander              |Tratamento de Importação                     |
|     |09:30|                    |                                             |
|-----|-----|--------------------|---------------------------------------------|
|   92|20/04|Wander              |Tratamento de COFINS                         |
|     |17:00|                    |                                             |
|-----|-----|--------------------|---------------------------------------------|
|   94|21/04|Wander              |Tratamento de COFINS_ST                      |
|     |17:00|                    |                                             |
|-----|-----|--------------------|---------------------------------------------|
|   95|22/04|Wander              |Tratamento de Totais da NFe                  |
|     |07:00|                    |                                             |
|-----|-----|--------------------|---------------------------------------------|
|  106|24/04|Wander              |Tratamento Transportador                     |
|     |00:30|                    |                                             |
================================================================================
}

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.ExtCtrls, Data.DB,
  //ACBrNFeDANFEClass, ACBrNFeDANFeESCPOS, ACBrDFe, ACBrNFe, ACBrBase,
  //ACBrDFeReport, ACBrDFeDANFeReport, ACBrNFeDANFeRLClass,
  Bde.DBTables,
  // ACBR-----------------------------------------------------------------------
  ACBrNFe,
  ACBrDFeSSL,
  ACBrNFeDANFEClass,
  ACBrDFe,
  ACBrNFeDANFeESCPOS,
  ACBrDANFCeFortesFr,
  ACBrMail,
  ACBrNFeDANFeRLClass,
  ACBrPosPrinter,
  ACBrUtil,
  ACBrNFeNotasFiscais,

  pcnConversao,
  pcnConversaoNFe,
  pcnNFe,
  ACBrBase, ACBrFala, pcnNFeRTXT, ACBrDFeReport, ACBrDFeDANFeReport,
  IdExplicitTLSClientServerBase, IdSMTPBase, ACBrNFeDANFEFR, IdSMTP, IdMessage,
  Vcl.StdCtrls, SHDocVw, Vcl.OleCtrls, FireDAC.Stan.Intf, FireDAC.Stan.Option,
  FireDAC.Stan.Param, FireDAC.Stan.Error, FireDAC.DatS, FireDAC.Phys.Intf,
  FireDAC.DApt.Intf, FireDAC.Stan.Async, FireDAC.DApt, FireDAC.Comp.DataSet,
  FireDAC.Comp.Client;

type
  TfrmEmissaoDeNFe = class(TForm)
    Panel1: TPanel;
    qNFe: TFDQuery;
    dsNFe: TDataSource;
    qVENDA_ITEM: TFDQuery;
    qNFCe: TFDQuery;
    qMovimento: TFDQuery;
    qEMITENTE: TFDQuery;
    qNFE_CONFIGURACAO: TFDQuery;
    qItensNFe: TFDQuery;
    qItensNFeQTDE: TFloatField;
    qItensNFePRODUTO: TStringField;
    qItensNFeVALOR: TFloatField;
    qDESTINATARIO: TFDQuery;
    qVEICULO_VEI: TFDQuery;
    qNOTAFISCAL_NF: TFDQuery;
    qNATOP: TFDQuery;
    Query2: TFDQuery;
    qCONFIG_NOTAS: TFDQuery;
    DANFeNFe: TACBrNFeDANFeRL;
    ACBrNFe1: TACBrNFe;
    qVENDA: TFDQuery;
    Query1: TFDQuery;
    qCFOPPROD_CP: TFDQuery;
    ACBrPosPrinter1: TACBrPosPrinter;
    MemoResp: TMemo;
    memoRespWS: TMemo;
    qCONTACORRENTE_CC: TFDQuery;
    WBResposta: TWebBrowser;
    qNaturezaOperacao: TFDQuery;
    qTPMOV: TFDQuery;
    Sql_Transportador: TFDQuery;
    Sql_TransportadorID: TFDAutoIncField;
    Sql_TransportadorCPF: TStringField;
    Sql_TransportadorCNPJ: TStringField;
    Sql_TransportadorIE: TStringField;
    Sql_TransportadorRAZAO_SOCIAL: TStringField;
    Sql_TransportadorRUA: TStringField;
    Sql_TransportadorMUNICIPIO: TStringField;
    Sql_TransportadorUF: TStringField;
    Sql_TransportadorContribuinte_do_ICMS: TStringField;
    Sql_Transportador_Veiculo: TFDQuery;
    Sql_Transportador_VeiculoCODIGO: TFDAutoIncField;
    Sql_Transportador_VeiculoDESCRICAO: TStringField;
    Sql_Transportador_VeiculoPLACA: TStringField;
    Sql_Transportador_VeiculoTRANSP_COD: TIntegerField;
    Sql_Transportador_VeiculoTRANSP_RAZAO_SOCIAL: TStringField;
    Sql_Transportador_VeiculoUF: TStringField;
    Sql_Transportador_VeiculoRENAVAM: TStringField;
    Sql_Transportador_VeiculoCHASSI: TStringField;
    Sql_Transportador_VeiculoMARCA: TStringField;
    Sql_Transportador_VeiculoCOR_FABRICA: TStringField;
    Sql_Transportador_VeiculoCOR_DESCRICAO: TStringField;
    Sql_Transportador_VeiculoANO: TStringField;
    Sql_Transportador_VeiculoMODELO: TStringField;
    Sql_Transportador_VeiculoREBOQUE1: TStringField;
    Sql_Transportador_VeiculoREBOQUE2: TStringField;
    Sql_Transportador_VeiculoREBOQUE3: TStringField;
    Sql_Transportador_VeiculoREBOQUE4: TStringField;
    Sql_Transportador_VeiculoCOMBUSTIVEL: TStringField;
    SQL_venda_lacre_vlac: TFDQuery;
    SQL_venda_lacre_vlacVLAC_ID_VENDA: TIntegerField;
    SQL_venda_lacre_vlacVLAC_NLACRE: TStringField;
    qRELACAO_CFOP_x_PRODUTO_xCST_PISCOFINS_RPC: TFDQuery;
    qRASTRO_RAS: TFDQuery;
    IntegerField1: TIntegerField;
    StringField1: TStringField;
    procedure FormShow(Sender: TObject);
  private
    { Private declarations }
    procedure Configura_Componentes_Locais;
    procedure Trata_NFe;
    function LerConfiguracao: Boolean;
    function Carregar_Configuracao_Emissor:Boolean;
    function Carregar_Configuracao_Notas:Boolean;
    function Carregar_Configuracao_NFe:Boolean;
    function Carregar_Configuracao_Proxy_Rede:Boolean;
    function Carregar_Configuracao_Envio_Email:Boolean;
    function Carregar_Configuracao_Locais_Arquivos:Boolean;
    function Configurar_NFe:Boolean;
    function Configurar_Componente_ACBr_NFe:Boolean;
    function fCP_PFCPST(pCP_CODIGO, pCP_UFORIGEM, pCP_UFDESTINO:String):Boolean;
    function ConverteCSTIPI(pPROD_STIPI:String):TpcnCstIpi;
    function ConverteCSTICMS(pPROD_CSTICMS:String):TpcnCSTIcms;
    function ConverteCSOSN(pCSOSN:String):TpcnCSOSNIcms;
    function Configurar_NFCe:Boolean;
    procedure LoadXML(RetWS: String; MyWebBrowser: TWebBrowser);
    function TransmitirNFe:Boolean;
    procedure DestacarAmbienteEmissao(pAmbiente:Integer);
    function Carregar_Venda(pPedido:Integer):Boolean;
    function Carregar_Venda_Itens(pPedido:Integer):Boolean;
    procedure Carregar_Transportador(pID:Integer);
    procedure Carregar_Transportador_Veiculo(pCODIGO:Integer);
    procedure Carregar_Venda_Lacre(pCODIGO:Integer);
    procedure Carregar_RASTRO_RAS(pPedido:Integer;pPRODUTO:String);
    procedure Carregar_RELACAO_CFOP_x_PRODUTO_xCST_PISCOFINS_RPC(pTPMOV,pCFOP,pProduto:String);
    function Venda_Possui_Produtos_e_Servicos:Boolean;
    function AlgumProdutoSem_ICMS_ST:Boolean;
    function AlgumProdutoSem_CODIGO_ORIGEM_MERCADORIA:Boolean;
    function Algum_Nao_eh_Produto_nem_Servico:Boolean;
    function Carregar_TipoDeMovimento(pTPMOV_CODIGO:String):Boolean;
    function Carregar_NaturezaDeOperacao(pID:Integer):Boolean;
    function CalcularImpostos_NFe(pPedido:Integer):Boolean;
    procedure MarcaVendaComoNotaEmitidaOK(pPEDIDO:Integer;pNumNFe:String);
    function Carregar_Destinatario(pCodigoCliFor:String):Boolean;
    function Carregar_Cliente(pCliente:String):Boolean;
    function Carregar_Fornecedor(pFornecedor:String):Boolean;
    function Dados_Corretos:Boolean;
    function Dados_do_Movimento_Corretos:Boolean;
    function Dados_do_Destinatario_Corretos:Boolean;
    function Dados_do_TipoDeMovimento_Corretos:Boolean;

    procedure Zerar_Somadores_NFe;
    procedure Somar_Totais_Parciais;
    // Tratamentos da emissão da NFe - layouts federais //
    // Grupo A
    procedure Tratar_Grupo_A_Dados_Da_NFe;
    // Grupo B
    procedure Tratar_Grupo_B_Identificacao_da_NFe;
    procedure Tratar_Grupo_BA_Documento_Fiscal_Referencado;
    // Grupo C
    procedure Tratar_Grupo_C_Identificacao_do_Emitente_da_NFe;
    // Grupo D
    procedure Tratar_Grupo_D_Identificacao_do_Fisco_Emitente_da_NFe;
    // Grupo E
    procedure Tratar_Grupo_E_Identificacao_do_Destinatario_da_NFe;
    // Grupo F
    procedure Tratar_Grupo_F_Identificao_do_Local_de_Retirada;
    // Grupo G
    procedure Tratar_Grupo_G_Identificao_do_Local_de_Entrega;
    // Grupo H
    procedure Tratar_Grupo_H_Detalhamento_de_Produtos_e_Serviços_da_NFe;
    // Grupo I
    procedure Tratar_Grupo_I_Produtos_e_Serviços_da_NFe;
    // Grupo I80
    procedure Tratar_Grupo_I80_Rastreabilidade_de_produto;
    // SubGrupo DI
    procedure Tratar_SubGrupo_DI_Declaracao_de_Importacao;
    // Grupo J
    procedure Tratar_Grupo_J_Detalhamento_Especifico_de_Veiculos_Novos;
    // Grupo K
    procedure Tratar_Grupo_K_Detalhamento_Especifico_de_Medicamento;
    // Grupo L
    procedure Tratar_Grupo_L_Detalhamento_Especifico_de_Armamentos;
    // Grupo LB
    procedure Tratar_Grupo_LB_Detalhamento_Especifico_para_Operacao_com_Papel_Imune;
    // Grupo L1
    procedure Tratar_Grupo_L1_Detalhamento_Especifico_de_Combustiveis;
    // Grupo M
    procedure Tratar_Grupo_M_Tributos_Incidentes_no_Produto_ou_Serviço;
    // Grupo N
    procedure Tratar_Grupo_N_ICMS_Normal_e_ST;
    // Grupo NA
    procedure Tratar_Grupo_NA_ICMS_para_a_UF_de_Destino;
    //
    procedure Tratar_impostos_de_Produtos;
    procedure Tratar_impostos_de_Servicos;

    // ICMS
    procedure Tratar_ICMS;
    procedure Tratar_ICMS00;
    procedure Tratar_ICMS10;
    procedure Tratar_ICMS20;
    procedure Tratar_ICMS30;
    procedure Tratar_ICMS40_41_50;
    procedure Tratar_ICMS51;
    procedure Tratar_ICMS60;
    procedure Tratar_ICMS70;
    procedure Tratar_ICMS90;

    procedure Tratar_Partilha_do_ICMS;
    procedure Tratar_Repasse_do_ICMS_ST;

    procedure Tratar_N11_Produto_Imposto_ICMS_orig;
    procedure Tratar_N12_Produto_Imposto_ICMS_CST;
    procedure Tratar_N12_Produto_Imposto_ICMS_CSOSN(pCSOSN:TpcnCSOSNIcms);
    procedure Tratar_N13_Produto_Imposto_ICMS_modBC;
    procedure Tratar_N14_Produto_Imposto_ICMS_pRedBC;
    procedure Tratar_N15_Produto_Imposto_ICMS_vBC;

    procedure Tratar_N16_Produto_Imposto_ICMS_pICMS;
    procedure Tratar_N16a_vICMSOp;
    procedure Tratar_N16b_pDif;
    procedure Tratar_N16c_vICMSDif;
    procedure Tratar_N17_Produto_Imposto_ICMS_vICMS;

    // Fundo de Combate à Pobreza
    procedure Tratar_Fundo_de_Combate_A_Pobreza;
    procedure Tratar_N17a_Produto_Imposto_ICMS_vBCFCP;
    procedure Tratar_N17b_Produto_Imposto_ICMS_pFCP;
    procedure Tratar_N17c_Produto_Imposto_ICMS_vFCP;

    // Substituição Tributária
    procedure Tratar_N18_Produto_Imposto_ICMS_modBCST;
    procedure Tratar_N19_Produto_Imposto_ICMS_pMVAST;
    procedure Tratar_N20_Produto_Imposto_ICMS_pRedBCST;
    procedure Tratar_N21_Produto_Imposto_ICMS_vBCST;
    procedure Tratar_N22_Produto_Imposto_ICMS_pICMSST;
    procedure Tratar_N23_Produto_Imposto_ICMS_vICMSST;
    procedure Tratar_N23a_Produto_Imposto_ICMS_vBCFCPST;
    procedure Tratar_N23b_Produto_Imposto_ICMS_pFCPST;
    procedure Tratar_N23d_Produto_Imposto_ICMS_vFCPST;
    procedure Tratar_N24_Produto_Imposto_ICMS_UFST;
    procedure Tratar_N25_Produto_Imposto_ICMS_pBCOp;
    procedure Tratar_N26_Produto_Imposto_ICMS_vBCSTRet;
    procedure Tratar_N26a_Produto_Imposto_ICMS_pST;
    procedure Tratar_N26b_Produto_Imposto_ICMS_vICMSSubstituto;

    // Retenção de ICMS
    procedure Tratar_N27_Produto_Imposto_ICMS_vICMSSTRet;
    procedure Tratar_N27a_Produto_Imposto_ICMS_vBCFCPSTRet;
    procedure Tratar_N27b_Produto_Imposto_ICMS_pFCPSTRet;
    procedure Tratar_N27d_Produto_Imposto_ICMS_vFCPSTRet;

    // Desoneração de ICMS
    procedure Tratar_N28a_Produto_Imposto_ICMS_vICMSDeson;
    procedure Tratar_N28_Produto_Imposto_ICMS_motDesICMS;

    // Crédito de ICMS
    procedure Tratar_N29_Produto_Imposto_ICMS_pCredSN;
    procedure Tratar_N30_Produto_Imposto_ICMS_vCredICMSSN;

    // ICMS ST Destinatário
    procedure Tratar_N31_Produto_Imposto_ICMS_vBCSTDest;
    procedure Tratar_N32_Produto_Imposto_ICMS_vICMSSTDes;

    // ICMS Efetivo
    procedure Tratar_N34_Produto_Imposto_ICMS_pRedBCEfet;
    procedure Tratar_N35_Produto_Imposto_ICMS_vBCEfet;
    procedure Tratar_N36_Produto_Imposto_ICMS_pICMSEfet;
    procedure Tratar_N37_Produto_Imposto_ICMS_vICMSEfet;

    // CSOSN
    procedure Tratar_CSOSN;
    procedure Tratar_CSOSN_000;
    procedure Tratar_CSOSN_101;
    procedure Tratar_CSOSN_102;
    procedure Tratar_CSOSN_102_103_300_400(pCSOSN: TpcnCSOSNIcms);
    procedure Tratar_CSOSN_103;
    procedure Tratar_CSOSN_201;
    procedure Tratar_CSOSN_202;
    procedure Tratar_CSOSN_202_203(pCSOSN: TpcnCSOSNIcms);
    procedure Tratar_CSOSN_203;
    procedure Tratar_CSOSN_300;
    procedure Tratar_CSOSN_400;
    procedure Tratar_CSOSN_500;
    procedure Tratar_CSOSN_900;

    // Grupo O
    procedure Tratar_Grupo_O_Imposto_sobre_Produtos_Industrializados_IPI;
    // Grupo P
    procedure Tratar_Grupo_P_Imposto_de_Importacao;
    // Grupo Q
    procedure Tratar_Grupo_Q_PIS;
    // Grupo R
    procedure Tratar_Grupo_R_PIS_ST;
    // Grupo S
    procedure Tratar_Grupo_S_COFINS;
    // Grupo T
    procedure Tratar_Grupo_T_COFINS_ST;
    // Grupo U
    procedure Tratar_Grupo_U_ISSQN;
    // Grupo V
    procedure Tratar_Grupo_V_Informacoes_Adicionais_do_Produto;
    // Grupo W
    procedure Tratar_Grupo_W_Valores_Totais_da_NFe;
    // Grupo W01
    procedure Tratar_Grupo_W01_Totalda_NFe_ISSQN;
    // Grupo W02
    procedure Tratar_Grupo_W02_Totalda_NFe_Retencao_de_Tributos;
    // Grupo X
    procedure Tratar_Grupo_X_Informacoes_do_Transporte_da_NFe;
    // Grupo Y
    procedure Tratar_Grupo_Y_Dados_da_Cobranca;
    // Grupo YA
    procedure Tratar_Grupo_YA_Informacoes_de_Pagamento;
    // Grupo Z
    procedure Tratar_Grupo_Z_Informacoes_Adicionais_da_NFe;
    // Grupo ZA
    procedure Tratar_Grupo_ZA_Informacoes_de_Comercio_Exterior;
    // Grupo ZB
    procedure Tratar_Grupo_ZB_Informacoes_de_Compras;
    // Grupo ZC
    procedure Tratar_Grupo_ZC_Informacoes_do_Registro_de_Aquisicao_de_Cana;
    // Grupo ZD
    procedure Tratar_Grupo_ZD_Informacoes_do_Responsavel_Tecnico;
    // Grupo ZX
    procedure Tratar_Grupo_ZX_Informacoes_Suplementares_da_Nota_Fiscal;
    // Grupo ZZ
    procedure Tratar_Grupo_ZZ_Informacoes_da_Assinatura_Digital;

  public
    { Public declarations }
  end;

var
  frmEmissaoDeNFe: TfrmEmissaoDeNFe;
  xNumNota,
  xCSOSN, xValor, vFrase, xxxUsuario, vSenha: String;

  vAvisarQueNaoEncontrou: Boolean;

  vValor,         vMostraValor,
  vValorAuxiliar, vValorDaBaseDeCalculoDoICMS, vBrenanfe_ValorTotalDoICMS : real;

  vNumNota,
  vNFE_ou_NFCe : Integer;  // 0=nfe 1=nfece

  fNumNota : Real;

  //----------------------------------------------------------------------------
  // BLOCO CRIAR NOTA DE DEVOLUCAO
  //----------------------------------------------------------------------------
  XML_PED_NEPEDIDO  : Integer;
  XML_FOR_CODIGO    : String;
  NotaReferenciada  : TNFrefCollectionItem;
  Nota              : TNFe;
  NotaDeDevolucao,
  XML_DO_FORNECEDOR : NotaFiscal;
  Duplicata         : TDupCollectionItem;
  Produto,
  ProdutoDevolvido  : TDetCollectionItem;
  Volume            : TVolCollectionItem;
  Lacre             : TLacresCollectionItem;
  Rastro            : TrastroCollectionItem;
  Medicamento       : TmedCollectionItem;
  Pagamento         : TpagCollectionItem;
  //----------------------------------------------------------------------------
  // Bloco de Somadores da NFe
  //----------------------------------------------------------------------------
    vNota_Total_ICMSTot_vBC       ,
    vNota_Total_ICMSTot_vICMS     ,
    vNota_Total_ICMSTot_vBCST     ,
    vNota_Total_ICMSTot_vST       ,
    vNota_Total_ICMSTot_vProd     ,
    vNota_Total_ICMSTot_vFrete    ,
    vNota_Total_ICMSTot_vSeg      ,
    vNota_Total_ICMSTot_vDesc     ,
    vNota_Total_ICMSTot_vII       ,
    vNota_Total_ICMSTot_vIPI      ,
    vNota_Total_ICMSTot_vPIS      ,
    vNota_Total_ICMSTot_vCOFINS   ,
    vNota_Total_ICMSTot_vOutro    ,
    vNota_Total_ICMSTot_vNF       ,

    vNota_Total_ISSQNtot_vServ    ,
    vNota_Total_ISSQNtot_vBC      ,
    vNota_Total_ISSQNtot_vISS     ,
    vNota_Total_ISSQNtot_vPIS     ,
    vNota_Total_ISSQNtot_vCOFINS  ,

    vNota_Total_retTrib_vRetPIS   ,
    vNota_Total_retTrib_vRetCOFINS,
    vNota_Total_retTrib_vRetCSLL  ,
    vNota_Total_retTrib_vBCIRRF   ,
    vNota_Total_retTrib_vIRRF     ,
    vNota_Total_retTrib_vBCRetPrev,
    vNota_Total_retTrib_vRetPrev  : Real;
    //--------------------------------------------------------------------------
implementation

uses global_variables, u_funcoes, S_Module;

{$R *.dfm}


function TfrmEmissaoDeNFe.CalcularImpostos_NFe(pPedido: Integer): Boolean;
var vPercentualDescontoRateadoItem, // Define percentual de descontos para
                                    // raterio proporcional entre os itens
    vAuxiliarBCItem,                // Valor da Base de Cálculo de cada Item
    vAuxiliarBCTotal :Real;         // Valor total da Base de Cálculo da Nota

    vCLI_EMAILXMLNFE, vTermoClienteFornecedor,
    vNCMdoProduto,
    vTexto, xLinha, vAux, vDadosFatura,vCST, sEAN : String;

    i, vPED_NRPEDIDO, vItem, vLetra, vSerieNFe: integer;

    vEncontrouParametrosCFOP, vCFOPDefinido : boolean;

    vPROD_ICMSREDUCAO,
    vVValor,
    vValorDoICMS,
    vQtde, vValorUnitario, vValorDoProdutoUnitxQtde, vValorDoProduto,
    vValorUnitarioDeTributacao, vQuantidadeTributavel, vValorTotalDoItem,
    vOlhoNoImpostoFederal,
    vOlhoNoImpostoImportado,
    vOlhoNoImpostoEstadual   : real;
begin
   // Calcula os impostos sobre o movimento, para a emissão de NFe
   //---------------------------------------------------------------------------
   result := false;

   // Inicializa Variáveis e contadores
   vAuxiliarBCItem  := 0;
   vAuxiliarBCTotal := 0;

   // Define o Valor de Desconto a ser rateado entre os itens do pedido
   vPercentualDescontoRateadoItem := 0;
   if qVENDA.FieldByName('VALOR_VENDA').AsFloat > 0 then
      vPercentualDescontoRateadoItem := qVENDA.FieldByName('DESCONTO').AsFloat
                                      * 100
                                      / qVENDA.FieldByName('VALOR_VENDA').AsFloat;

   // Recupera o número sequencial da nota a ser emitida
   vSerieNFe := qNFE_CONFIGURACAO.FieldByName('NFeC_Serie').AsInteger;
   xNumNota := IntToStr(ProximaNotaFiscal(vSerieNFe));
   while Length(xNumNota) < 6 do
     xNumNota := '0' + xNumNota;
   vNumNota := StrToInt(xNumNota);
   fNumNota := StrToFloat(xNumNota);

   // ------------------------------------------
   // O LOTE TEM O MESMO NUMERO DA NFE ENVIADA.
   // CADA LOTE TERA APENAS UMA UNICA NFE
   // TRATAR A NFE...
   // ------------------------------------------

   // CONDICAO DE PAGAMENTO
   // Depois tratarei isto.... ***
   {
   qCONDICAOPGTO_CPG.Close;
   qCONDICAOPGTO_CPG.Sql.Clear;
   qCONDICAOPGTO_CPG.Sql.Add('SELECT TIPO_PAGAMENTO as CPG_NOME,             ');
   qCONDICAOPGTO_CPG.Sql.Add('       0              as CPG_VALORMINIMO,      ');
   qCONDICAOPGTO_CPG.Sql.Add('       ''             as CPG_TIPO,             ');
   qCONDICAOPGTO_CPG.Sql.Add('       ''             as CPG_DETALHAMENTO,     ');
   qCONDICAOPGTO_CPG.Sql.Add('       0              as CPG_P1,               ');
   qCONDICAOPGTO_CPG.Sql.Add('       COD_TIPO_PAGAMENT,                      ');
   qCONDICAOPGTO_CPG.Sql.Add('       TOTAL_PAGO,                             ');
   qCONDICAOPGTO_CPG.Sql.Add('       VALOR_DEBITADO                          ');
   qCONDICAOPGTO_CPG.Sql.Add('  FROM venda_pagamento                         ');
   qCONDICAOPGTO_CPG.Sql.Add(' WHERE CODIGO = :CPG_CODIGO                    ');
   qCONDICAOPGTO_CPG.ParamByName('CPG_CODIGO').AsInteger :=
                                   qVENDA.FieldbyName('CODIGO_VENDA').AsInteger;
   qCONDICAOPGTO_CPG.Open;
   }

   //----------------------------------------------------------------------
   // CRIA NOTA VAZIA
   //----------------------------------------------------------------------
   ACBrNFe1.NotasFiscais.Clear;
   Nota := ACBrNFe1.NotasFiscais.Add.NFe;

   Tratar_Grupo_A_Dados_Da_NFe;
   Tratar_Grupo_B_Identificacao_da_NFe;
   Tratar_Grupo_C_Identificacao_do_Emitente_da_NFe;
   Tratar_Grupo_D_Identificacao_do_Fisco_Emitente_da_NFe;
   Tratar_Grupo_E_Identificacao_do_Destinatario_da_NFe;
   Tratar_Grupo_F_Identificao_do_Local_de_Retirada;
   Tratar_Grupo_G_Identificao_do_Local_de_Entrega;
   Tratar_Grupo_H_Detalhamento_de_Produtos_e_Serviços_da_NFe;
   Tratar_Grupo_W_Valores_Totais_da_NFe;
   Tratar_Grupo_W01_Totalda_NFe_ISSQN;
   Tratar_Grupo_W02_Totalda_NFe_Retencao_de_Tributos;
   Tratar_Grupo_X_Informacoes_do_Transporte_da_NFe;
   Tratar_Grupo_Y_Dados_da_Cobranca;
   Tratar_Grupo_YA_Informacoes_de_Pagamento;
   Tratar_Grupo_Z_Informacoes_Adicionais_da_NFe;
   Tratar_Grupo_ZA_Informacoes_de_Comercio_Exterior;
   Tratar_Grupo_ZB_Informacoes_de_Compras;
   Tratar_Grupo_ZC_Informacoes_do_Registro_de_Aquisicao_de_Cana;
   Tratar_Grupo_ZD_Informacoes_do_Responsavel_Tecnico;
   Tratar_Grupo_ZX_Informacoes_Suplementares_da_Nota_Fiscal;
   Tratar_Grupo_ZZ_Informacoes_da_Assinatura_Digital;

    //
    // O LOTE TEM O MESMO NUMERO DA NFE ENVIADA.
    // CADA LOTE TERA APENAS UMA UNICA NFE
    // ACBrNFe1.Enviar(qVENDA.FieldByName('NF_NUMERO').AsInteger); // numero do lote
    //001

    // ENVIAR NFE
    //--------------------------------------------------------------------------
    ACBrNFe1.Configuracoes.WebServices.UF := 'RO';

    TransmitirNFe;
end;

function TfrmEmissaoDeNFe.Carregar_Cliente(pCliente:String): Boolean;
begin
   // Recupera os dados do cliente
   try
     qDESTINATARIO.close;
     qDESTINATARIO.sql.clear;
     qDESTINATARIO.sql.add('SELECT *               ');
     qDESTINATARIO.sql.add('  FROM CLIENTE         ');
     qDESTINATARIO.sql.add(' WHERE CODIGO = :CODIGO');
     qDESTINATARIO.ParamByName('CODIGO').AsString := pCliente;
     qDESTINATARIO.Open;
     Result := True;
   except
     Result := False;
   end;
end;

function TfrmEmissaoDeNFe.Carregar_Configuracao_Emissor: Boolean;
begin
   // UF do Emissor
   // Recuperar do cadastro da empresa.
   // Precisa pegar com o usuário o código da empresa desejada
   // Por enquanto estou pegando a 1a empresa que encontrar no banco de dados
   //---------------------------------------------------------------------------
   result := false;

   qEMITENTE.Close;
   qEMITENTE.SQL.Clear;
   qEMITENTE.SQL.Add('select * from empresa');
   qEMITENTE.Open;

   if Length(qEMITENTE.fieldbyname('RAZAO_SOCIAL').AsString) > 60 then
   begin
      ShowMessage('A Sefaz obriga Razão Social com no máximo 60 caracteres.');
      exit;
   end;
   result := true;
end;

function TfrmEmissaoDeNFe.Carregar_Configuracao_Envio_Email: Boolean;
begin
   // Configurações para o envio de emails
   //=========================================================================
   try
     //edtSmtpHost.Text      := '';
     //edtSmtpPort.Text      := '';
     //edtSmtpUser.Text      := '';
     //edtSmtpPass.Text      := '';
     //edtEmailAssunto.Text  := '';
     //cbEmailSSL.Checked    := False;
     Result := true;
   except
     Result := False;
   end;
end;

function TfrmEmissaoDeNFe.Carregar_Configuracao_Locais_Arquivos: Boolean;
var ok:Boolean;
begin
     // Configuracoes de NFe
     //-------------------------------------------------------------------------
     // Geral
     Case g_NFE_ou_NFCe of
        0 : ACBrNFe1.Configuracoes.Geral.ModeloDF := moNFe;
        1 : ACBrNFe1.Configuracoes.Geral.ModeloDF := moNFCe;
        // etc...
     End;

     ACBrNFe1.Configuracoes.Geral.VersaoDF    := ve400; // ve310, Ve400, ...
     ACBrNFe1.Configuracoes.Geral.VersaoQRCode:= veqr200;
     // Danfe da NFe
     ACBrNFe1.DANFE               := DANFeNFe;  // ACBrNFeDANFERave1;
     ACBrNFe1.DANFE.TipoDANFE     := StrToTpImp(OK,IntToStr(qNFE_CONFIGURACAO.FieldByName('NFeC_LayoutDanfe').AsInteger));
     ACBrNFe1.DANFE.Logo          := qNFE_CONFIGURACAO.FieldByName('NFeC_PathLogoMarca').AsString;
     if qNFE_CONFIGURACAO.FieldByName('NFe_MostraPreview' ).AsInteger = 0 Then
        ACBrNFe1.DANFE.MostraPreview := False
     else
        ACBrNFe1.DANFE.MostraPreview := True;
end;

function TfrmEmissaoDeNFe.Carregar_Configuracao_NFe: Boolean;
begin
  // Acessa a tabela de configuracoes da NFe
  // para recuperar ambiente, forma de emissão, série, etc...
  //----------------------------------------------------------------------------

  // Define o Ambiente
  // 0 = Produção
  // 1 = Homologação (testes)
  //----------------------------------------------------------------------------
  try
      qNFE_CONFIGURACAO.close;
      qNFE_CONFIGURACAO.sql.clear;
      qNFE_CONFIGURACAO.sql.Add('SELECT * FROM NFe_Configuracao');
      qNFE_CONFIGURACAO.Open;
      DestacarAmbienteEmissao(qNFE_CONFIGURACAO.FieldByName('NFeC_Ambiente').AsInteger);
      result := true;
  except
      Result := false;
  end;
end;

function TfrmEmissaoDeNFe.Carregar_Configuracao_Notas: Boolean;
begin
  // Acessa a tabela de configuracoes da NFCe
  // para recuperar dados do certificado digital que é o mesmo da NFe
  //----------------------------------------------------------------------------
  try
    qCONFIG_NOTAS.close;
    qCONFIG_NOTAS.sql.clear;
    qCONFIG_NOTAS.sql.Add('SELECT * FROM CONFIG_NOTAS');
    qCONFIG_NOTAS.Open;
    Result := True;
  Except
    Result := False;
  end;
end;

function TfrmEmissaoDeNFe.Carregar_Configuracao_Proxy_Rede: Boolean;
begin
   // Configurações para o envio de emails
   //=========================================================================
   try
     //edtSmtpHost.Text      := '';
     //edtSmtpPort.Text      := '';
     //edtSmtpUser.Text      := '';
     //edtSmtpPass.Text      := '';
     //edtEmailAssunto.Text  := '';
     //cbEmailSSL.Checked    := False;
     Result := true;
   except
     Result := False;
   end;

end;

function TfrmEmissaoDeNFe.Carregar_Destinatario(pCodigoCliFor:String):Boolean;
begin
   // Carrega dados do Destinatário do doc fiscal
   //---------------------------------------------------------------------------
   // Se o tipo de movimento está parametrizado para tratar Cliente,
   // Carrega dados do cliente
   //
   // Se o tipo de movimento está parametrizado para tratar Fornecedor,
   // Carrega dados do fornecedor
   //---------------------------------------------------------------------------
   if qTPMOV.FieldByName('TPMOV_CLIFOR').AsString = 'C' then
      result := Carregar_Cliente(pCodigoCliFor)
   else
      result := Carregar_Fornecedor(pCodigoCliFor)
end;

function TfrmEmissaoDeNFe.Carregar_Fornecedor(pFornecedor: String): Boolean;
begin
   // Recupera os dados do cliente
   try
     qDESTINATARIO.close;
     qDESTINATARIO.sql.clear;
     qDESTINATARIO.sql.add('SELECT *               ');
     qDESTINATARIO.sql.add('  FROM FORNECEDOR      ');
     qDESTINATARIO.sql.add(' WHERE CODIGO = :CODIGO');
     qDESTINATARIO.ParamByName('CODIGO').AsString := pFornecedor;
     qDESTINATARIO.Open;
     Result := True;
   except
     Result := False;
   end;

end;

function TfrmEmissaoDeNFe.Carregar_NaturezaDeOperacao(
  pID: Integer): Boolean;
begin
   // Carrega configuracoes da Natureza de Operação
   Result := False;
   try
     qNaturezaOperacao.close;
     qNaturezaOperacao.Sql.Clear;
     qNaturezaOperacao.sql.Add('SELECT *                ');
     qNaturezaOperacao.sql.Add('  FROM NATUREZA_OPERACAO');
     qNaturezaOperacao.sql.Add(' WHERE ID = :ID         ');
     qNaturezaOperacao.ParamByName('ID').AsInteger := pID;
     qNaturezaOperacao.Open;
     if qNaturezaOperacao.eof then
     begin
       ShowMessage('Natureza de Operação [ ' +
                   IntToStr(pID) +
                   ' ] não encontrada...');
       exit;
     end;
     Result := True;
   except
   end;
end;

procedure TfrmEmissaoDeNFe.Carregar_RELACAO_CFOP_x_PRODUTO_xCST_PISCOFINS_RPC(pTPMOV,pCFOP,pProduto:String);
begin
   qRELACAO_CFOP_x_PRODUTO_xCST_PISCOFINS_RPC.Close;
   qRELACAO_CFOP_x_PRODUTO_xCST_PISCOFINS_RPC.Sql.Clear;
   qRELACAO_CFOP_x_PRODUTO_xCST_PISCOFINS_RPC.Sql.Add('SELECT *                                         ');
   qRELACAO_CFOP_x_PRODUTO_xCST_PISCOFINS_RPC.Sql.Add('  FROM RELACAO_CFOP_x_PRODUTO_xCST_PISCOFINS_RPC ');
   qRELACAO_CFOP_x_PRODUTO_xCST_PISCOFINS_RPC.Sql.Add(' WHERE RPC_TPMOV   = :TPMOV                      ');
   qRELACAO_CFOP_x_PRODUTO_xCST_PISCOFINS_RPC.Sql.Add('   AND RPC_CFOP    = :CFOP                       ');
   qRELACAO_CFOP_x_PRODUTO_xCST_PISCOFINS_RPC.Sql.Add('   AND RPC_PRODUTO = :PRODUTO                    ');
   qRELACAO_CFOP_x_PRODUTO_xCST_PISCOFINS_RPC.ParamByName('TPMOV'  ).AsString := pTPMOV;
   qRELACAO_CFOP_x_PRODUTO_xCST_PISCOFINS_RPC.ParamByName('CFOP'   ).AsString := pCFOP;
   qRELACAO_CFOP_x_PRODUTO_xCST_PISCOFINS_RPC.ParamByName('PRODUTO').AsString := pPRODUTO;
   qRELACAO_CFOP_x_PRODUTO_xCST_PISCOFINS_RPC.Open;
end;

function TfrmEmissaoDeNFe.Carregar_TipoDeMovimento(
  pTPMOV_CODIGO: String): Boolean;
begin
   // Carrega configuracoes do tipo de movimento
   // que definem como o emissor deve se comportar
   // para cada tipo de movimentacao / Nota Fiscal
   Result := False;
   try
     qTPMOV.close;
     qTPMOV.Sql.Clear;
     qTPMOV.sql.Add('SELECT *                           ');
     qTPMOV.sql.Add('  FROM TIPOMOVIMENTO_TPMOV         ');
     qTPMOV.sql.Add(' WHERE TPMOV_CODIGO = :TPMOV_CODIGO');
     qTPMOV.ParamByName('TPMOV_CODIGO').AsString := pTPMOV_CODIGO;
     qTPMOV.Open;
     if qTPMOV.eof then
     begin
       ShowMessage('Tipo de Movimento [ ' +
                   pTPMOV_CODIGO +
                   ' ] não encontrado...');
       exit;
     end;
     Result := True;
   except
   end;
end;

procedure TfrmEmissaoDeNFe.Carregar_Transportador(pID: Integer);
begin
   // Recupera os dados do Transportador
   if pID = -1 then
      // Não há transportador associado ao pedido
      exit;

   Sql_Transportador.Close;
   Sql_Transportador.Sql.Clear;
   Sql_Transportador.Sql.Add('SELECT *            ');
   Sql_Transportador.Sql.Add('  FROM TRANSPORTADOR');
   Sql_Transportador.Sql.Add(' WHERE ID = :ID     ');
   Sql_Transportador.ParamByName('ID').AsInteger := pID;
   Sql_Transportador.Open;
end;

procedure TfrmEmissaoDeNFe.Carregar_Transportador_Veiculo(pCODIGO: Integer);
begin
   // Recupera os dados do Transportador_Veiculo
   if pCODIGO = -1 then
      // Não há Transportador_Veiculo associado ao pedido
      exit;

   Sql_Transportador_Veiculo.Close;
   Sql_Transportador_Veiculo.Sql.Clear;
   Sql_Transportador_Veiculo.Sql.Add('SELECT *                      ');
   Sql_Transportador_Veiculo.Sql.Add('  FROM Transportadora_Veiculos');
   Sql_Transportador_Veiculo.Sql.Add(' WHERE CODIGO = :CODIGO       ');
   Sql_Transportador_Veiculo.ParamByName('CODIGO').AsInteger := pCODIGO;
   Sql_Transportador_Veiculo.Open;
end;

function TfrmEmissaoDeNFe.Carregar_Venda(pPedido: Integer): Boolean;
begin
   // Recupera os dados do pedido
   //---------------------------------------------------------------------------

   // Caso o tipo de movimento não esteja definido no registro do movimento,
   // adota-se "V" de "Venda"
   Executar('UPDATE VENDA SET VENDA_TPMOV = ''V'' WHERE VENDA_TPMOV IS NULL');

   // Recuperar dados...
   try
       qVENDA.Close;
       qVENDA.Sql.Clear;
       qVENDA.Sql.Add('SELECT *                            ');
       qVENDA.Sql.Add('  FROM VENDA                        ');
       qVENDA.Sql.Add(' WHERE CODIGO_VENDA = :CODIGO_VENDA ');
       qVENDA.ParamByName('CODIGO_VENDA').AsInteger := pPedido;
       qVENDA.Open;
       Result := true;
   except
       Result := False;
   end;
end;

function TfrmEmissaoDeNFe.Carregar_Venda_Itens(pPedido: Integer): Boolean;
begin
   // Carregar Itens do Pedido
   try
     qVENDA_ITEM.Close;
     qVENDA_ITEM.Sql.Clear;
     qVENDA_ITEM.Sql.Add('SELECT *                                ');
     qVENDA_ITEM.Sql.Add('  FROM VENDA_ITEM V,                    ');
     qVENDA_ITEM.Sql.Add('       PRODUTO_PROD P                   ');
     qVENDA_ITEM.Sql.Add(' WHERE V.CODIGO_PRODUTO = P.PROD_CODIGO ');
     qVENDA_ITEM.Sql.Add('   AND V.CODIGO_VENDA   = :IPED_NRPEDIDO');
     qVENDA_ITEM.ParamByName('IPED_NRPEDIDO').AsInteger := pPEDIDO;
     qVENDA_ITEM.Open;
     Result := True;
   except
     Result := False;
   end;
end;

procedure TfrmEmissaoDeNFe.Carregar_Venda_Lacre(pCODIGO: Integer);
begin
   //Recupera os dados dos Lacres associados ao movimento
   //--------------------------------------------------------------------------
   SQL_venda_lacre_vlac.Close;
   SQL_venda_lacre_vlac.SQL.Clear;
   SQL_venda_lacre_vlac.SQL.Add('SELECT *                             ');
   SQL_venda_lacre_vlac.SQL.Add('  FROM venda_lacre_vlac              ');
   SQL_venda_lacre_vlac.SQL.Add(' WHERE VLAC_ID_VENDA = :VLAC_ID_VENDA');
   SQL_venda_lacre_vlac.ParamByName('VLAC_ID_VENDA').AsInteger := pCodigo;
   SQL_venda_lacre_vlac.Open;
end;

procedure TfrmEmissaoDeNFe.Carregar_RASTRO_RAS(pPedido:Integer;pPRODUTO:String);
begin
   //Recupera os dados dos RASTREABILIDADE associados ao Produto
   //--------------------------------------------------------------------------
   qRASTRO_RAS.Close;
   qRASTRO_RAS.SQL.Clear;
   qRASTRO_RAS.SQL.Add('SELECT *                             ');
   qRASTRO_RAS.SQL.Add('  FROM RASTRO_RAS                    ');
   qRASTRO_RAS.SQL.Add(' WHERE RAS_NRPEDIDO  = :RAS_NRPEDIDO ');
   qRASTRO_RAS.SQL.Add(' WHERE RAS_CDPRODUTO = :RAS_CDPRODUTO');
   qRASTRO_RAS.ParamByName('RAS_NRPEDIDO' ).AsInteger := pPedido;
   qRASTRO_RAS.ParamByName('RAS_CDPRODUTO').AsString  := pProduto;
   qRASTRO_RAS.Open;
end;

function TfrmEmissaoDeNFe.AlgumProdutoSem_ICMS_ST: Boolean;
begin
   // Verifica se existe algum item da venda sem o código da ST do ICMS
   // ou com código inválido
   // Se não, existir, retorna false
   // Se existir, avisa ao usuário com código e nome do produto e retorna true
   //---------------------------------------------------------------------------
   result := False;
   qVENDA_ITEM.First;
   while not qVENDA_ITEM.eof do
   begin
     // Obrigado a ter o código da ST do ICMS
     if qVENDA_ITEM.FieldByName('ICMS_CST').AsString = '' then
     begin
       ShowMessage('O produto:'+#13+#13+
                   qVENDA_ITEM.FieldByName('DESCRICAO').AsString+#13+#13+
                   'Código ['+IntToStr(qVENDA_ITEM.FieldByName('CODIGO_PRODUTO').AsInteger)+']'+#13+#13+
                   'Não possui o código da ST do ICMS definido em seu cadastro.'+#13+#13+
                   'Impossível emitir NFe. '+#13+#13+
                   'Corrija o cadastro e tente novamente.');
       result := true;
     end
     else
     begin
       // Obrigado a ser um código numérico inteiro
       try
          StrToInt(qVENDA_ITEM.FieldByName('ICMS_CST').AsString);
       except
         ShowMessage('O produto:'+#13+#13+
                     qVENDA_ITEM.FieldByName('DESCRICAO').AsString+#13+#13+
                     'Código ['+IntToStr(qVENDA_ITEM.FieldByName('CODIGO_PRODUTO').AsInteger)+']'+#13+#13+
                     'Possui um código da ST do ICMS inválido definido em seu cadastro: ['+
                     qVENDA_ITEM.FieldByName('ICMS_CST').AsString+']'#13+#13+
                     'Impossível emitir NFe. '+#13+#13+
                     'Corrija o cadastro e tente novamente.');
         result := true;
       end;
     end;
     qVENDA_ITEM.Next;
   end;
   qVENDA_ITEM.First;
end;

function TfrmEmissaoDeNFe.Algum_Nao_eh_Produto_nem_Servico: Boolean;
begin
   // Verifica se existe algum item da venda
   // que não seja nem produto nem serviço,
   // pois só permitido emitir NFe para Produtos e Serviços
   //
   // Matéria prima, embalagens, insumos, ativos e materiais de consumo não
   // podem ser comercializados
   //
   // Se existir, avisa ao usuário com código e nome do produto e retorna true
   //---------------------------------------------------------------------------
   result := False;
   qVENDA_ITEM.First;
   while not qVENDA_ITEM.eof do
   begin
     // Obrigado a ter o TIPO_ITEM
     if qVENDA_ITEM.FieldByName('TIPO_ITEM').AsString = '' then
     begin
       ShowMessage('O produto:'+#13+#13+
                   qVENDA_ITEM.FieldByName('DESCRICAO').AsString+#13+#13+
                   'Código ['+IntToStr(qVENDA_ITEM.FieldByName('CODIGO_PRODUTO').AsInteger)+']'+#13+#13+
                   'Não possui o TIPO de PRODUTO definido em seu cadastro.'+#13+#13+
                   'Impossível emitir NFe. '+#13+#13+
                   'Corrija o cadastro e tente novamente.');
       result := true;
     end
     else
     begin
       // Obrigado ser produto (00) ou serviço (09)
       if (qVENDA_ITEM.FieldByName('TIPO_ITEM').AsString <> '00') and
          (qVENDA_ITEM.FieldByName('TIPO_ITEM').AsString <> '09') then
       begin
         ShowMessage('O produto:'+#13+#13+
                     qVENDA_ITEM.FieldByName('DESCRICAO').AsString+#13+#13+
                     'Código ['+IntToStr(qVENDA_ITEM.FieldByName('CODIGO_PRODUTO').AsInteger)+']'+#13+#13+
                     'Não está configurado como Produto (00) nem Serviço (09), mas sim como: ['+
                     qVENDA_ITEM.FieldByName('TIPO_ITEM').AsString+']'#13+#13+
                     'OBS: Matéria-prima, embalagens, ativos, insumos, '+#13+#13+
                     '     materiais de consumo, e outros, não podem ser comercialiados.'+#13+#13+
                     'Impossível emitir NFe. '+#13+#13+
                     'Corrija o cadastro e tente novamente.');
         result := true;
       end;
     end;
     qVENDA_ITEM.Next;
   end;
   qVENDA_ITEM.First;
end;

function TfrmEmissaoDeNFe.AlgumProdutoSem_CODIGO_ORIGEM_MERCADORIA: Boolean;
begin
   // Verifica se existe algum item da venda sem o código da origem
   // ou com código inválido
   // Se não, existir, retorna false
   // Se existir, avisa ao usuário com código e nome do produto e retorna true
   //---------------------------------------------------------------------------
   result := False;
   qVENDA_ITEM.First;
   while not qVENDA_ITEM.eof do
   begin
     if not qVENDA_ITEM.FieldByName('CODIGO_ORIGEM_MERCADORIA').AsInteger
            in [0, 1, 2, 3, 4, 5, 6, 7, 8] then
     begin
       ShowMessage('O produto:'+#13+#13+
                   qVENDA_ITEM.FieldByName('DESCRICAO').AsString+#13+#13+
                   'Código ['+IntToStr(qVENDA_ITEM.FieldByName('CODIGO_PRODUTO').AsInteger)+']'+#13+#13+
                   'Não possui um código válido de sua origem definido em seu cadastro.'+#13+#13+
                   'Impossível emitir NFe. '+#13+#13+
                   'Corrija o cadastro e tente novamente.');
       result := true;
     end;
     qVENDA_ITEM.Next;
   end;
   qVENDA_ITEM.First;
end;

function TfrmEmissaoDeNFe.Configurar_Componente_ACBr_NFe: Boolean;
var Ok : Boolean;
begin
  // Aplica ao componente ACBr as configurações carregadas do SMC
  //----------------------------------------------------------------------------
  try
      if qCONFIG_NOTAS.FieldByName('ArquivoPFX').AsString <> '' then
      begin
        ACBrNFe1.Configuracoes.Certificados.ArquivoPFX  := qCONFIG_NOTAS.FieldByName('ArquivoPFX'              ).AsString;
        ACBrNFe1.Configuracoes.Certificados.Senha       := qCONFIG_NOTAS.FieldByName('SENHA_CERTIFICADO'       ).AsString;
        ACBrNFe1.Configuracoes.Certificados.NumeroSerie := qCONFIG_NOTAS.FieldByName('NUMERO_SERIE_CERTIFICADO').AsString;
      end
      else
      begin
        ACBrNFe1.Configuracoes.Certificados.ArquivoPFX  := '';
        ACBrNFe1.Configuracoes.Certificados.Senha       := '';
        ACBrNFe1.Configuracoes.Certificados.NumeroSerie := '';
      end;

      // Configurar PosPrinter
      //ACBrPosPrinter1.Desativar;
      ACBrPosPrinter1.Modelo         := TACBrPosPrinterModelo(qCONFIG_NOTAS.FieldByName('ModeloPosPrinter').AsInteger);
      ACBrPosPrinter1.PaginaDeCodigo := TACBrPosPaginaCodigo( qCONFIG_NOTAS.FieldByName('PaginaDeCodigo'  ).AsInteger);
      ACBrPosPrinter1.Porta          :=                       qCONFIG_NOTAS.FieldByName('Porta'           ).AsString;
      //ACBrPosPrinter1.ColunasFonteNormal := seColunas.Value;
      //ACBrPosPrinter1.LinhasEntreCupons  := seLinhasPular.Value;
      //ACBrPosPrinter1.EspacoEntreLinhas  := seEspLinhas.Value;
      //ACBrPosPrinter1.CortaPapel         := cbCortarPapel.Checked;
      //ACBrPosPrinter1.Ativar;

       ACBrNFe1.Configuracoes.Arquivos.PathSchemas := 'C:\SMC\EmissorFiscal\schemas';

       with ACBrNFe1.Configuracoes.Arquivos do
       begin
         Salvar             := True;
         SepararPorMes      := True;
         AdicionarLiteral   := True;
         EmissaoPathNFe     := True;
         SalvarEvento       := True;
         SepararPorCNPJ     := True;
         SepararPorModelo   := True;
         PathSalvar         := 'C:\SMC\SEFAZ\XML';
         PathSchemas        := 'C:\SMC\SCHEMAS';
         PathNFe            := 'C:\SMC\SEFAZ\XML';
         PathInu            := 'C:\SMC\SEFAZ\AUXILAR\INUTILIZADAS';
         PathEvento         := 'C:\SMC\SEFAZ\AUXILIAR\EVENTOS';
       end;

       with ACBrNFe1.Configuracoes.WebServices do
       begin
         Salvar    := False;
         UF        := 'RO';//cbUF.Text;
         Ambiente  := StrToTpAmb(ok,IntToStr(qNFE_CONFIGURACAO.FieldByName('NFeC_Ambiente').AsInteger+1));
         case qNFE_CONFIGURACAO.FieldByName('NFeC_VerMsgWS').AsInteger of
            0 : Visualizar := False;
            1 : Visualizar := True;
         end;
       end;

       ACBrNFe1.Configuracoes.Geral.FormaEmissao := StrToTpEmis(ok,IntToStr(qNFE_CONFIGURACAO.FieldByName('NFeC_FormaEmissao').AsInteger));

       // Salvar
       ACBrNFe1.Configuracoes.Geral.Salvar := true;
       Result := True;
  except
     Result := False;
  end;
end;

function TfrmEmissaoDeNFe.Configurar_NFCe: Boolean;
var Ok : Boolean;
begin
  // Aplica ao componente ACBr as configurações carregadas do SMC
  //----------------------------------------------------------------------------
  try
      if qCONFIG_NOTAS.FieldByName('ArquivoPFX').AsString <> '' then
      begin
        ACBrNFe1.Configuracoes.Certificados.ArquivoPFX  := qCONFIG_NOTAS.FieldByName('ArquivoPFX'              ).AsString;
        ACBrNFe1.Configuracoes.Certificados.Senha       := qCONFIG_NOTAS.FieldByName('SENHA_CERTIFICADO'       ).AsString;
        ACBrNFe1.Configuracoes.Certificados.NumeroSerie := qCONFIG_NOTAS.FieldByName('NUMERO_SERIE_CERTIFICADO').AsString;
      end
      else
      begin
        ACBrNFe1.Configuracoes.Certificados.ArquivoPFX  := '';
        ACBrNFe1.Configuracoes.Certificados.Senha       := '';
        ACBrNFe1.Configuracoes.Certificados.NumeroSerie := '';
      end;

      // Configurar PosPrinter
      //ACBrPosPrinter1.Desativar;
      ACBrPosPrinter1.Modelo         := TACBrPosPrinterModelo(qCONFIG_NOTAS.FieldByName('ModeloPosPrinter').AsInteger);
      ACBrPosPrinter1.PaginaDeCodigo := TACBrPosPaginaCodigo( qCONFIG_NOTAS.FieldByName('PaginaDeCodigo'  ).AsInteger);
      ACBrPosPrinter1.Porta          :=                       qCONFIG_NOTAS.FieldByName('Porta'           ).AsString;
      //ACBrPosPrinter1.ColunasFonteNormal := seColunas.Value;
      //ACBrPosPrinter1.LinhasEntreCupons  := seLinhasPular.Value;
      //ACBrPosPrinter1.EspacoEntreLinhas  := seEspLinhas.Value;
      //ACBrPosPrinter1.CortaPapel         := cbCortarPapel.Checked;
      //ACBrPosPrinter1.Ativar;

       ACBrNFe1.Configuracoes.Arquivos.PathSchemas := 'C:\SMC\EmissorFiscal\schemas';

       with ACBrNFe1.Configuracoes.Arquivos do
       begin
         Salvar             := True;
         SepararPorMes      := True;
         AdicionarLiteral   := True;
         EmissaoPathNFe     := True;
         SalvarEvento       := True;
         SepararPorCNPJ     := True;
         SepararPorModelo   := True;
         PathSalvar         := 'C:\SMC\SEFAZ\XML';
         PathSchemas        := 'C:\SMC\SCHEMAS';
         PathNFe            := 'C:\SMC\SEFAZ\XML';
         PathInu            := 'C:\SMC\SEFAZ\AUXILAR\INUTILIZADAS';
         PathEvento         := 'C:\SMC\SEFAZ\AUXILIAR\EVENTOS';
       end;

       with ACBrNFe1.Configuracoes.WebServices do
       begin
         Salvar    := False;
         UF        := 'RO';//cbUF.Text;
         Ambiente  := StrToTpAmb(ok,IntToStr(qNFE_CONFIGURACAO.FieldByName('NFeC_Ambiente').AsInteger+1));
         case qNFE_CONFIGURACAO.FieldByName('NFeC_VerMsgWS').AsInteger of
            0 : Visualizar := False;
            1 : Visualizar := True;
         end;
       end;

       ACBrNFe1.Configuracoes.Geral.FormaEmissao := StrToTpEmis(ok,IntToStr(qNFE_CONFIGURACAO.FieldByName('NFeC_FormaEmissao').AsInteger));

       // Salvar
       ACBrNFe1.Configuracoes.Geral.Salvar := true;
       Result := True;
  except
     Result := False;
  end;
end;

function TfrmEmissaoDeNFe.Configurar_NFe: Boolean;
var ok:Boolean;
begin
     // Configuracoes de NFe
     //-------------------------------------------------------------------------
     // Geral
     ACBrNFe1.Configuracoes.Geral.ModeloDF    := moNFe; //NF-e ou NFC-e
     ACBrNFe1.Configuracoes.Geral.VersaoDF    := ve400; // ve310, Ve400, ...
     ACBrNFe1.Configuracoes.Geral.VersaoQRCode:= veqr200;
     // Danfe da NFe
     ACBrNFe1.DANFE               := DANFeNFe;  // ACBrNFeDANFERave1;
     ACBrNFe1.DANFE.TipoDANFE     := StrToTpImp(OK,IntToStr(qNFE_CONFIGURACAO.FieldByName('NFeC_LayoutDanfe').AsInteger));
     ACBrNFe1.DANFE.Logo          := qNFE_CONFIGURACAO.FieldByName('NFeC_PathLogoMarca').AsString;
     if qNFE_CONFIGURACAO.FieldByName('NFe_MostraPreview' ).AsInteger = 0 Then
        ACBrNFe1.DANFE.MostraPreview := False
     else
        ACBrNFe1.DANFE.MostraPreview := True;
end;

procedure TfrmEmissaoDeNFe.Configura_Componentes_Locais;
var i : Integer;
begin
 // Configura propriedades comuns a todos os objetos do tipo TFDQuery desta tela
 //-----------------------------------------------------------------------------
 for i := 0 to frmEmissaoDeNFe.ComponentCount - 1  do
 begin
   if frmEmissaoDeNFe.Components[i] is TFDQuery then
   begin
     (frmEmissaoDeNFe.Components[i] as TFDQuery).Connection     := Module.connection;
     (frmEmissaoDeNFe.Components[i] as TFDQuery).ConnectionName := 'connection';
    // (frmEmissaoDeNFe.Components[i] as TFDQuery).Sql.Clear;
   end;
 end;
end;

function TfrmEmissaoDeNFe.ConverteCSOSN(pCSOSN: String): TpcnCSOSNIcms;
begin
   //Converte string em constantes CSOSN
   //---------------------------------------------------------------------------
   if pCSOSN = '101' then result := csosn101;
   if pCSOSN = '102' then result := csosn102;
   if pCSOSN = '103' then result := csosn103;
   if pCSOSN = '201' then result := csosn201;
   if pCSOSN = '202' then result := csosn202;
   if pCSOSN = '203' then result := csosn203;
   if pCSOSN = '300' then result := csosn300;
   if pCSOSN = '400' then result := csosn400;
   if pCSOSN = '500' then result := csosn500;
   if pCSOSN = '900' then result := csosn900;
end;

function TfrmEmissaoDeNFe.ConverteCSTICMS(pPROD_CSTICMS: String): TpcnCSTIcms;
begin
   //Converte string em constantes do CST do ICMS
   //---------------------------------------------------------------------------
   if pPROD_CSTICMS = '00' then Result := cst00;
   if pPROD_CSTICMS = '70' then Result := cst70;
   if pPROD_CSTICMS = '20' then Result := cst20;
   if pPROD_CSTICMS = '51' then Result := cst51;
   if pPROD_CSTICMS = '60' then Result := cst60;
   if pPROD_CSTICMS = '40' then Result := cst40;
   if pPROD_CSTICMS = '30' then Result := cst30;
   if pPROD_CSTICMS = '41' then Result := cst41;
   if pPROD_CSTICMS = '90' then Result := cst90;
   if pPROD_CSTICMS = '50' then Result := cst50;
   if pPROD_CSTICMS = '10' then Result := cst10;
end;

function TfrmEmissaoDeNFe.ConverteCSTIPI(pPROD_STIPI: String): TpcnCstIpi;
begin
   //Converte string em constantes do CST do IPI
   //---------------------------------------------------------------------------
   if pPROD_STIPI = '00' then result := ipi00;
   if pPROD_STIPI = '01' then result := ipi01;
   if pPROD_STIPI = '02' then result := ipi02;
   if pPROD_STIPI = '03' then result := ipi03;
   if pPROD_STIPI = '04' then result := ipi04;
   if pPROD_STIPI = '05' then result := ipi05;
   if pPROD_STIPI = '49' then result := ipi49;
   if pPROD_STIPI = '50' then result := ipi50;
   if pPROD_STIPI = '51' then result := ipi51;
   if pPROD_STIPI = '52' then result := ipi52;
   if pPROD_STIPI = '53' then result := ipi53;
   if pPROD_STIPI = '54' then result := ipi54;
   if pPROD_STIPI = '55' then result := ipi55;
   if pPROD_STIPI = '99' then result := ipi99;
end;

function TfrmEmissaoDeNFe.Dados_Corretos: Boolean;
begin
   //Valida os dados antes da emissão.
   //Retorna true se tudo ok
   //Retorna false se algo está errado
   //---------------------------------------------------------------------------
   result := false;
   if not Dados_do_Movimento_Corretos then exit;
   if not Dados_do_Destinatario_Corretos then exit;
   if not Dados_do_TipoDeMovimento_Corretos then exit;
   result := true;
end;

function TfrmEmissaoDeNFe.Dados_do_Movimento_Corretos: Boolean;
begin
   //Valida obrigatoriedade do Tipo de Movimento no registro do movimento
   //Retorna true se tudo ok
   //Retorna false se algo está errado
   //---------------------------------------------------------------------------
   result := false;
   if qVENDA.FieldByName('VENDA_TPMOV').AsString = '' then
   begin
     wnAlerta('Erro',
              'Tipo de Movimento não definido neste movimento.'
            + slinebreak
            + slinebreak
            + 'Impossível emitir Documento Fiscal.');
     exit;
   end;
   result := true;
end;

function TfrmEmissaoDeNFe.Dados_do_TipoDeMovimento_Corretos: Boolean;
begin
   //Valida dados do Tipo de Movimento
   //Retorna true se tudo ok
   //Retorna false se algo está errado
   //---------------------------------------------------------------------------
   result := false;
   // A Natureza de Operacao virá da venda...

   // Recusar se tpmov não emite doc fiscal
   if qTPMOV.FieldByName('TPMOV_EMITENF').AsInteger = 0 then
   begin
     ShowMessage('Este movimento [ '
               + qTPMOV.FieldByName('TPMOV_CODIGO').AsString
               + ' ] está configurado para não emitir documentos fiscais.');
     exit;
   end;

   // Recusar se tpmov emite NFCe
   if qTPMOV.FieldByName('TPMOV_EMITENF').AsInteger = 2 then
   begin
     ShowMessage('Este movimento [ '
               + qTPMOV.FieldByName('TPMOV_CODIGO').AsString
               + ' ] está configurado para emitir NFCe e não NFe.');
     exit;
   end;

   // Recusar se tpmov com Finalidade de NFe = Não se Aplica
   if qTPMOV.FieldByName('TPMOV_FINALIDADE').AsInteger = 5 then
   begin
     ShowMessage('Este movimento [ '
               + qTPMOV.FieldByName('TPMOV_CODIGO').AsString
               + ' ] está configurado Finalidade de Documento Fiscal = Não se Aplica.');
     exit;
   end;

   result := true;
   exit;
   {
   if qTPMOV.FieldByName('TPMOV_NATUREZADAOPERACAO').AsString = '' then
   begin
     wnAlerta('Erro',
              'Tipo de Movimento [ ' +
              qTPMOV.FieldByName('TPMOV_CODIGO').AsString + '] '
              +slinebreak + slinebreak +
              'sem Natureza de Operação definida');
     exit;
   end;
   }
   result := True;
end;

function TfrmEmissaoDeNFe.Dados_do_Destinatario_Corretos: Boolean;
var xFone1, xFone2: String;
begin
   //Valida dados do Destinatário
   //Retorna true se tudo ok
   //Retorna false se algo está errado
   //---------------------------------------------------------------------------
   xFone1 := qDESTINATARIO.FieldByName('TELEFONE').AsString;
   xFone2 := Trim(COPY(SoNumerosX(qDESTINATARIO.FieldByName('TELEFONE').AsString),1,12));
   if length(xFone1) = 0 then
   begin
     wnAlerta('Erro',
              'A Sefaz exige o número do telefone do Cliente.'+slinebreak + slinebreak +
              'Altere o cadastro do Destinatário');
     exit;
   end;
   if length(xFone2) > 12 then
   begin
      wnAlerta('Erro',
               'A Sefaz limita o número do telefone do Cliente em 12 digitos.'+slinebreak + slinebreak +
               'Altere o cadastro do Destinatário (fone='+xFone1+')');
      exit;
   end;
   result := true;
end;

procedure TfrmEmissaoDeNFe.DestacarAmbienteEmissao(pAmbiente: Integer);
begin
  // Evidencia o ambiente de emissão do documento fiscal
  //----------------------------------------------------------------------------
  if pAmbiente = 0 then
  begin
    frmEmissaoDeNFe.Color := $00FFFF80;
    Panel1.Color := $00FFFF80;
    frmEmissaoDeNFe.Caption := 'PRODUÇÃO';
    Panel1.Caption := 'PRODUÇÃO';
  end
  else
  begin
    frmEmissaoDeNFe.Color := $0080FFFF;
    Panel1.Color := $0080FFFF;
    frmEmissaoDeNFe.Caption := 'HOMOLOGAÇÃO';
    Panel1.Caption := 'HOMOLOGAÇÃO';
  end;
end;

function TfrmEmissaoDeNFe.fCP_PFCPST(pCP_CODIGO, pCP_UFORIGEM,
  pCP_UFDESTINO: String): Boolean;
begin
    //Verifica se o produto possui parametrização definindo
    //o CFOP em função da origem e destino do movimento
    //Retorna true  se possui.
    //Retorna false se não possui.
    //--------------------------------------------------------------------------
    Result := False;
    if pCP_CODIGO = '' then
      Exit;

    // ESTE PROD TEM EM SEU CAD ABA FISCAL ASSOCIACAO COM COD CALC ICMS
    // PROCURAR PELO CALCULO...
    qCFOPPROD_CP.close;
    qCFOPPROD_CP.sql.clear;
    qCFOPPROD_CP.sql.add('SELECT * FROM CFOPPROD_CP           ');
    qCFOPPROD_CP.sql.add(' WHERE CP_CODIGO    = :CP_CODIGO    ');
    qCFOPPROD_CP.sql.add('   AND CP_UFORIGEM  = :CP_UFORIGEM  ');
    qCFOPPROD_CP.sql.add('   AND CP_UFDESTINO = :CP_UFDESTINO ');
    // CODIGO ESTA NO CAD PROD
    qCFOPPROD_CP.ParamByName('CP_CODIGO'   ).AsString := pCP_CODIGO;
    // ORIGEM É A UF DA FILIAL DO EMISSOR DA NF (BRENA)
    qCFOPPROD_CP.ParamByName('CP_UFORIGEM' ).AsString := pCP_UFORIGEM;
    // DESTINO É A UF DO CLIENTE/FORNECEDOR
    qCFOPPROD_CP.ParamByName('CP_UFDESTINO').AsString := pCP_UFDESTINO;
    qCFOPPROD_CP.Open;
    Result := not qCFOPPROD_CP.eof;
end;

procedure TfrmEmissaoDeNFe.FormShow(Sender: TObject);
begin
   //Procedimentos automátios realizados quando a tela abre
   //---------------------------------------------------------------------------

   //Configurar o componente Acbr e variáveis de ambiente
   Configura_Componentes_Locais;

   //Tentar emitir a NFe
   Trata_NFe;

   //Fechar a tela
   Close;
end;

function TfrmEmissaoDeNFe.LerConfiguracao: Boolean;
Var StreamMemo : TMemoryStream;
    vDias :Extended;
begin
  // Carrega as configurações necessárias
  // para o cálculo dos impostos e
  // para a emissão da NFe
  // ---------------------------------------------------------------------------
  // Retorna False caso não consiga concluir alguma das etapas necessárias
  // Retorna True em caso contrátio.
  // ---------------------------------------------------------------------------
  Result := False;

  // Carregar as configurações do Emissor da NFe
  if not Carregar_Configuracao_Emissor then
     exit;

  // Carregar as configurações de Notas (definidas no SMC)
  if not Carregar_Configuracao_Notas then
     exit;

  // Carregar as configurações de NFe (definidas no SMC)
  if not Carregar_Configuracao_NFe then
     exit;

  //Não tratar NFCe por enquanto...
  //Carregar_Configuracao_NFCe;

  // Carregar configurações de rede, se houver
  if not Carregar_Configuracao_Proxy_Rede then
     exit;

  // Carregar configurações de conta de email para o envio
  // do xml para o destinatário, se houver configurações
  if not Carregar_Configuracao_Envio_Email then
     exit;

  // Carrega configurações dos locais onde serão armazenados os arquivos XML
  if not Carregar_Configuracao_Locais_Arquivos then
     exit;

  if g_NFE_ou_NFCe = 0 then
  begin
    // Le configurações para emissão de NFe
    if not Configurar_NFe then
       exit;
    // Aplica as configurações carregas ao componente ACBr que emite NFe
    if not Configurar_Componente_ACBr_NFe then
       exit;
  end
  else
  begin
    // Le configurações para emissão de NFCe
    if not Configurar_NFCe then
       exit;
    // Aplica as configurações carregas ao componente ACBr que emite NFe
    // if not Configurar_Componente_ACBr_NFCe then
    //    exit;
  end;

  Result := True;
end;


procedure TfrmEmissaoDeNFe.LoadXML(RetWS: String; MyWebBrowser: TWebBrowser);
var vPED_NRPEDIDO,a,b : integer;
    vPED_SERIENF, vPED_NOTAFISCAL : String;
    vPED_DTENTREGA: tDateTime;
    VetProdutos:Array[0..100] of String;
begin
   //Tratamento para reemissão
   //---------------------------------------------------------------------------
     exit;

    vPED_NRPEDIDO := g_Numero_do_Movimento;

    qVENDA_ITEM.close;
    qVENDA_ITEM.sql.clear;
    qVENDA_ITEM.sql.add('SELECT * FROM ITENSPEDIDO_IPED,      ');
    qVENDA_ITEM.sql.add('              PEDIDO_PED             ');
    qVENDA_ITEM.sql.add(' WHERE PED_NRPEDIDO  = IPED_NRPEDIDO ');
    qVENDA_ITEM.sql.add('   AND IPED_NRPEDIDO = :PEDIDO       ');
    qVENDA_ITEM.Sql.Add('ORDER BY IPED_SEQUENCIAL             ');
    qVENDA_ITEM.ParamByName('PEDIDO').AsInteger:= vPED_NRPEDIDO;
    qVENDA_ITEM.Open;
    if qVENDA_ITEM.eof then
       exit;

    vPED_SERIENF    := qVENDA_ITEM.fieldbyname('PED_SERIENF'   ).AsString;
    vPED_NOTAFISCAL := qVENDA_ITEM.fieldbyname('PED_NOTAFISCAL').AsString;
    vPED_DTENTREGA  := qVENDA_ITEM.fieldbyname('PED_DTENTREGA' ).AsDateTime;
    a := 0;
    while ( not (qVENDA_ITEM.eof ) ) do
    begin
        inc(a);
        VetProdutos[a] := qVENDA_ITEM.fieldbyname('IPED_CDPRODUTO').AsString;
        qVENDA_ITEM.Next;
    end;
    if vPED_NOTAFISCAL <> '' then
    begin
     // MARCA A NOTAFISCAL COMO CANCELADA
     qNOTAFISCAL_NF.close;
     qNOTAFISCAL_NF.SQL.clear;
     qNOTAFISCAL_NF.sql.add('UPDATE NOTAFISCAL_NF              ');
     qNOTAFISCAL_NF.sql.add('   SET NF_CANCELADA  = ''SIM'',   '); // CANCELADA
     qNOTAFISCAL_NF.sql.add('       NF_DTCANCELA  = :DATA,     '); // DATA CANCELAMENTO
     qNOTAFISCAL_NF.sql.add('       NF_USUCANCELA = :USUARIO,  '); // USUARIO QUE CANCELOU
     qNOTAFISCAL_NF.sql.add('       NF_HRCANCELA  = :HORA,     '); // HORARIO DO CANCELAMENTO
     qNOTAFISCAL_NF.sql.add('       NF_MOTIVOCANCELA = :MOTIVO '); // MOTIVO DO CANCELAMENTO
     qNOTAFISCAL_NF.sql.add(' WHERE NF_SERIE  = :SERIE   ');
     qNOTAFISCAL_NF.sql.add('   AND NF_NUMERO = :NUMERO  ');
     qNOTAFISCAL_NF.parambyname('SERIE'  ).AsString   := vPED_SERIENF;
     qNOTAFISCAL_NF.parambyname('NUMERO' ).AsString   := vPED_NOTAFISCAL;
     qNOTAFISCAL_NF.parambyname('DATA'   ).AsDateTime := DataServidor;
     qNOTAFISCAL_NF.parambyname('USUARIO').AsString   := xxxUsuario;
     qNOTAFISCAL_NF.parambyname('HORA'   ).AsString   := HoraServidor;
     qNOTAFISCAL_NF.parambyname('MOTIVO' ).AsString   := '1';
     qNOTAFISCAL_NF.ExecSql;
    end;
     // CANCELA O PEDIDO
     qVENDA.close;
     qVENDA.SQL.clear;
     qVENDA.sql.add('UPDATE PEDIDO_PED                               ');
     qVENDA.sql.add('   SET PED_NOTAFISCALCANCELADA  = ''SIM'',      ');
     qVENDA.Sql.Add('       PED_CANCELADO            = ''S'',        ');
     qVENDA.Sql.Add('       PED_USUCANCELOU          = :USUARIO,     ');
     qVENDA.Sql.Add('       PED_DTCANCELOU           = :DATA,        ');
     qVENDA.Sql.Add('       PED_HRCANCELOU           = :HORA         ');
     qVENDA.sql.add(' WHERE PED_NRPEDIDO             = :PED_NRPEDIDO ');
     qVENDA.parambyname('PED_NRPEDIDO').AsInteger := vPED_NRPEDIDO;
     qVENDA.ParamByName('USUARIO'     ).AsString   := xxxUsuario;
     qVENDA.ParamByName('DATA'        ).AsDateTime := DataServidor;
     qVENDA.ParamByName('HORA'        ).AsString   := HoraServidor;
     qVENDA.ExecSql;

     // CANCELA O CONTAS A RECEBER DO CLIENTE
     qCONTACORRENTE_CC.close;
     qCONTACORRENTE_CC.SQL.clear;
     qCONTACORRENTE_CC.sql.add('UPDATE CONTACORRENTE_CC                     ');
     qCONTACORRENTE_CC.sql.add('   SET CC_CANCELADO          = ''S'',       ');
     qCONTACORRENTE_CC.SQL.Add('       CC_DESCANCELADO       = ''N'',       ');
     qCONTACORRENTE_CC.sql.add('       CC_ROTINACANCELOU     = 51,          ');
     qCONTACORRENTE_CC.SQL.Add('       CC_MOTIVOCANCELAMENTO = :MOTIVO,     ');
     qCONTACORRENTE_CC.SQL.Add('       CC_USUCANCELAMENTO    = :USUARIO,    ');
     qCONTACORRENTE_CC.SQL.Add('       CC_DTCANCELAMENTO     = :DATA,       ');
     qCONTACORRENTE_CC.SQL.Add('       CC_HRCANCELAMENTO     = :HORA        ');
     qCONTACORRENTE_CC.sql.add(' WHERE CC_NRPEDIDO           = :CC_NRPEDIDO ');
     qCONTACORRENTE_CC.ParamByName('CC_NRPEDIDO').AsInteger  := vPED_NRPEDIDO;
     qCONTACORRENTE_CC.ParamByName('USUARIO'    ).AsString   := xxxUsuario;
     qCONTACORRENTE_CC.ParamByName('DATA'       ).AsDateTime := DataServidor;
     qCONTACORRENTE_CC.ParamByName('HORA'       ).AsString   := HoraServidor;
     qCONTACORRENTE_CC.ParamByName('MOTIVO'     ).AsString   := 'CNF';
     qCONTACORRENTE_CC.ExecSql;

   for b := 1 to a do
   begin
      RecalculaPROD_SALDOEstoque(VetProdutos[b],vPED_DTENTREGA);
   end;
end;

procedure TfrmEmissaoDeNFe.MarcaVendaComoNotaEmitidaOK(pPEDIDO: Integer;
  pNumNFe: String);
begin
   //ALTERAR O STATUS DA VENDA PARA NOTA FISCAL FMITIDA
   //---------------------------------------------------------------------------
   Query1.close;
   Query1.sql.clear;
   Query1.sql.add('UPDATE VENDA                            ');
   Query1.sql.add('   SET NOTAFISCAL     = :PED_NOTAFISCAL,');
   Query1.sql.add('       STATUSNFe      = 1               '); // NFe EMITIDA
   Query1.sql.add(' WHERE CODIGO_vENDA   = :PED_NRPEDIDO   ');
   query1.ParamByName('PED_NRPEDIDO'  ).AsInteger := pPEDIDO;
   query1.ParamByName('PED_NOTAFISCAL').AsString  := pNumNFe;
   query1.ExecSql;
end;

function TfrmEmissaoDeNFe.TransmitirNFe: Boolean;
begin
   //---------------------------------------------------------------------------
   // EMITE NFe
   //---------------------------------------------------------------------------
   // Tenta transmitir o xml da Nfe para a Sefaz
   // Retorna True se conseguiu transmitir
   // Retorna False em caso contrário
   //---------------------------------------------------------------------------
   Result := False;
   ACBrNFe1.Enviar(vNumNota,False);

    //  MemoResp.Lines.Text := UTF8Encode(ACBrNFe1.WebServices.Retorno.RetWS);
    //  memoRespWS.Lines.Text := UTF8Encode(ACBrNFe1.WebServices.Retorno.RetornoWS);
    //  LoadXML(MemoResp, WBResposta);
    MemoResp.Lines.Text := ACBrNFe1.WebServices.Retorno.RetWS;
    memoRespWS.Lines.Text := ACBrNFe1.WebServices.Retorno.RetornoWS;
    LoadXML(ACBrNFe1.WebServices.Retorno.RetornoWS, WBResposta);

    memoResp.Lines.Add('');
    memoResp.Lines.Add('Envio NFe');
    memoResp.Lines.Add('tpAmb: '+ TpAmbToStr(ACBrNFe1.WebServices.Retorno.TpAmb));
    memoResp.Lines.Add('verAplic: '+ ACBrNFe1.WebServices.Retorno.verAplic);
    memoResp.Lines.Add('cStat: '+ IntToStr(ACBrNFe1.WebServices.Retorno.cStat));
    memoResp.Lines.Add('cUF: '+ IntToStr(ACBrNFe1.WebServices.Retorno.cUF));
    memoResp.Lines.Add('xMotivo: '+ ACBrNFe1.WebServices.Retorno.xMotivo);
    memoResp.Lines.Add('cMsg: '+ IntToStr(ACBrNFe1.WebServices.Retorno.cMsg));
    memoResp.Lines.Add('xMsg: '+ ACBrNFe1.WebServices.Retorno.xMsg);
    memoResp.Lines.Add('Recibo: '+ ACBrNFe1.WebServices.Retorno.Recibo);
    memoResp.Lines.Add('Protocolo: '+ ACBrNFe1.WebServices.Retorno.Protocolo);
    //
    if (ACBrNFe1.WebServices.Retorno.Recibo    <> '') and
       (ACBrNFe1.WebServices.Retorno.Protocolo <> '') and
       (AcbrNFe1.WebServices.Retorno.ChaveNFe  <> '') then
    begin
            //
            // GRAVAR NA NOTA FISCAL O NUMERO DO PROTOCOLO E RECIBO SEFAZ
            //
            // 05/06/11
            // ASSOCIA O NOME DO ARQUIVO XML A NOTA FISCAL EMITIDA
            //
            qNOTAFISCAL_NF.Close;
            qNOTAFISCAL_NF.sql.Clear;
            qNOTAFISCAL_NF.sql.add('UPDATE NOTAFISCAL_NF                  ');
            qNOTAFISCAL_NF.sql.add('   SET NF_PROTOCOLO  = :NF_PROTOCOLO, ');
            qNOTAFISCAL_NF.sql.add('       NF_RECIBO     = :NF_RECIBO,    ');
            qNOTAFISCAL_NF.sql.add('       NF_CHAVENFE   = :NF_CHAVENFE,  ');
            qNOTAFISCAL_NF.sql.add('       NF_ARQUIVOXML = :NF_ARQUIVOXML ');
            qNOTAFISCAL_NF.sql.add(' WHERE NF_NUMERO    = :NF_NUMERO      ');
            qNOTAFISCAL_NF.sql.add('   AND NF_SERIE     = :NF_SERIE       ');
            qNOTAFISCAL_NF.ParamByName('NF_PROTOCOLO' ).AsString  := ACBrNFe1.WebServices.Retorno.Protocolo;
            qNOTAFISCAL_NF.ParamByName('NF_RECIBO'    ).AsString  := ACBrNFe1.WebServices.Retorno.Recibo;
            qNOTAFISCAL_NF.ParamByName('NF_CHAVENFE'  ).AsString  := AcbrNFe1.WebServices.Retorno.ChaveNFe;
            qNOTAFISCAL_NF.ParamByName('NF_NUMERO'    ).AsString  := IntToStr(vNumNota);//;//qVENDA.FieldByName('NF_NUMERO').AsString;
            qNOTAFISCAL_NF.ParamByName('NF_SERIE'     ).AsString  := '1';//qVENDA.FieldByName('NF_SERIE' ).AsString;
            qNOTAFISCAL_NF.ParamByName('NF_ARQUIVOXML').AsString  := COPY(ACBrNFe1.Configuracoes.Arquivos.PathSalvar+'\'+copy(ACBrNFe1.NotasFiscais.Items[0].NFe.infNFe.ID, (length(ACBrNFe1.NotasFiscais.Items[0].NFe.infNFe.ID)-44)+1, 44)+'-NFe.xml',1,255);
            qNOTAFISCAL_NF.ExecSql;
            //
            // MARCA O PEDIDO COMO TENDO NOTA FISCAL ELETRONICA EMITIDA
            //
            {
            Query1.Close;
            Query1.SQL.Clear;
            Query1.Sql.Add('UPDATE PEDIDO_PED                   ');
            Query1.Sql.Add('   SET PED_NFE      = ''S'',        ');
            Query1.Sql.Add('       PED_NFEDT    = :PED_NFEDT,   ');
            Query1.Sql.Add('       PED_NFEHR    = :PED_NFEHR,   ');
            Query1.Sql.Add('       PED_NFEUSU   = :PED_NFEUSU   ');
            Query1.Sql.Add(' WHERE PED_NRPEDIDO = :PED_NRPEDIDO ');
            Query1.ParamByName('PED_NRPEDIDO').AsInteger  := qVENDA.FieldByName('PED_NRPEDIDO').AsInteger;
            Query1.ParamByName('PED_NFEDT'   ).AsDateTime := DataServidor;
            Query1.ParamByName('PED_NFEHR'   ).AsString   := HoraServidor;
            Query1.ParamByName('PED_NFEUSU'  ).AsString   := edUsuario.Text;
            Query1.ExecSql;
            }
        end
    else
        begin
            ShowMessage(AcbrNFe1.WebServices.Retorno.xMotivo);
            ShowMessage(AcbrNFe1.WebServices.Retorno.Msg);
            ShowMessage(AcbrNFe1.WebServices.Retorno.Msg);
        end;

    ShowMessage('NFE 4.00:'+#13+
                'Protocolo SEFAZ: ' + ACBrNFe1.WebServices.Retorno.Protocolo+#13+#13+
                '   Recibo SEFAZ: ' + ACBrNFe1.WebServices.Retorno.Recibo);

    MemoResp.Lines.Text := UTF8Encode(ACBrNFe1.WebServices.Retorno.RetWS);

    //LoadXML(MemoResp, WBResposta);
    MemoResp.Lines.Text := ACBrNFe1.WebServices.Retorno.RetWS;
    memoRespWS.Lines.Text := ACBrNFe1.WebServices.Retorno.RetornoWS;
    LoadXML(ACBrNFe1.WebServices.Retorno.RetornoWS, WBResposta);

    MemoResp.Lines.Add('');
    MemoResp.Lines.Add('Envio NFe');
    MemoResp.Lines.Add('tpAmb: '+ TpAmbToStr(ACBrNFe1.WebServices.Retorno.TpAmb));
    MemoResp.Lines.Add('verAplic: '+ ACBrNFe1.WebServices.Retorno.verAplic);
    MemoResp.Lines.Add('cStat: '+ IntToStr(ACBrNFe1.WebServices.Retorno.cStat));
    MemoResp.Lines.Add('cUF: '+ IntToStr(ACBrNFe1.WebServices.Retorno.cUF));
    MemoResp.Lines.Add('xMotivo: '+ ACBrNFe1.WebServices.Retorno.xMotivo);
    MemoResp.Lines.Add('cMsg: '+ IntToStr(ACBrNFe1.WebServices.Retorno.cMsg));
    MemoResp.Lines.Add('xMsg: '+ ACBrNFe1.WebServices.Retorno.xMsg);
    MemoResp.Lines.Add('Recibo: '+ ACBrNFe1.WebServices.Retorno.Recibo);
    MemoResp.Lines.Add('Protocolo: '+ ACBrNFe1.WebServices.Retorno.Protocolo);

    {
    if MonitorarEvento('EMITIR NOTA FISCAL') then
    begin
        try
           // Email Login
           IdSMTP1.Host     := fPARAMETROS_PAR_ler('Email_Host');
           IdSMTP1.Port     := sTRtOiNT(fPARAMETROS_PAR_ler('Email_Port'));
           IdSMTP1.Username := fPARAMETROS_PAR_ler('Email_UserId');
           IdSMTP1.password := fPARAMETROS_PAR_ler('Email_Password');

              IdSMTP1.AuthType := satDefault;
           // IdSMTP1.AuthenticationType := atLogin;
            try
              idmessage1.MessageParts.Clear;
            except
            end;
            IdSMTP1.Connect;
            //IdSMTP1.Connect(0);

            //O seu endereço de e-mail
            {
            IdMessage1.From.Address :=fPARAMETROS_PAR_ler('Email_UserId');
            IdMessage1.Recipients.EMailAddresses := vEMAIL;
            //O assunto da mensagem
            IdMessage1.Subject :='Nota Fiscal Eletrônica: '+qDESTINATARIO.FieldByName('RAZAO_SOCIAL').AsString;

            IdMessage1.Body.Clear;
            IdMessage1.Body.add('Nota Fiscal Eletronica [ ' + FormatFloat('00000000',qVENDA.FieldByName('NF_NUMERO').AsInteger)+' ], Serie [ '+ qVENDA.FieldByName('NF_SERIE' ).AsString+' ]');
            IdMessage1.Body.add('Emitida pela empresa '+qEMITENTE.FieldByName('FILI_DESCRICAO').AsString);
            IdMessage1.Body.add('Para '+qDESTINATARIO.FieldByName('RAZAO_SOCIAL').AsString);
            IdMessage1.Body.add(' ');
            IdMessage1.Body.add('Email emitido automaticamente.');
            IdMessage1.Body.add('----------------------------------------');
            IdMessage1.Body.add('Sistema BRENA de Automacao Comercial    ');
            IdMessage1.Body.add('www.brena.com.br  '+fPARAMETROS_PAR_LER('EmailBrena'));
            IdMessage1.Body.add('(21)99 55 99 56 9                       ');
            IdMessage1.Body.add('----------------------------------------');
            try
               IdSMTP1.Send(IdMessage1);
            except
            end;
            IdSMTP1.Disconnect;
            }
        //except
        //end;
    //end;


    // ENVIA O ARQUIVO XML POR EMAIL...
    //vEMAIL := qDESTINATARIO.FieldByName('EMAIL').AsString;
    {
    //        if vEMAIL = '' then
        begin
            ShowMessage(edUSU_NOME.text+', o '+ vTermoClienteFornecedor +' ' + qDESTINATARIO.FieldByName('RAZAO_SOCIAL').AsString+#13+#13+
                        'Informe o EMAIL PARA ENVIO DE ARQUIVO XML DE NFE.'+#13+#13+
                        'Se informar, seu '+ vTermoClienteFornecedor +' receberá automaticamente o arquivo xml sempre que gerar uma nfe para ele.'+#13+#13+
                        'A seguir, voce poderá informar um email, ou corrigir o existente, que o Sistema associará a seu '+ vTermoClienteFornecedor +'... Use ENTER.');
            if not(InputQuery(PChar('Entre com o endereço de email do seu '+vTermoClienteFornecedor+'. Se não souber use ENTER.'), pChar('Email do '+ vTermoClienteFornecedor), vEMAIL)) then exit;
        end;

        if vEMAIL = '' then
        begin
               showmessage(edUSU_NOME.text+', seu '+vTermoClienteFornecedor+' não receberá o email com o xml desta nota fiscal,'+#13+#13+
                           'pois não possue em seu cadastro a informação EMAIL PARA ENVIO DE ARQUIVO XML DE NFE.'+#13+#13+
                           'Procure informar este email, pois brevemente o envio deste arquivo será obrigatório.');
        end;
    }

    //if vEMAIL <> '' then
    //begin
           {
              if qTPMOV.FieldByName('TPMOV_CLIFOR').AsString = 'C' then
                 begin
                    query1.close;
                    query1.sql.clear;
                    query1.sql.add('UPDATE CLIENTE_CLI SET EMAIL = :EMAIL ');
                    query1.sql.add('  WHERE CLI_CODIGO = :CLI_CODIGO ');
                    query1.paramByName('EMAIL').AsString := vEMAIL;
                    query1.paramByName('CLI_CODIGO').AsString := qDESTINATARIO.FIeldByName('CLI_CODIGO').AsString;
                    query1.execsql;
                 end
              else
                 begin
                    query1.close;
                    query1.sql.clear;
                    query1.sql.add('UPDATE FORNECEDOR_FOR SET FOR_EMAILXMLNFE = :FOR_EMAILXMLNFE ');
                    query1.sql.add('  WHERE FOR_CODIGO = :FOR_CODIGO ');
                    query1.paramByName('FOR_EMAILXMLNFE').AsString := vEMAIL;
                    query1.paramByName('FOR_CODIGO').AsString := qDESTINATARIO.FIeldByName('CLI_CODIGO').AsString;
                    query1.execsql;
                 end;


      //      try
               // Email Login
               IdSMTP1.Host     := fPARAMETROS_PAR_ler('Email_Host');
               IdSMTP1.Port     := sTRtOiNT(fPARAMETROS_PAR_ler('Email_Port'));
               IdSMTP1.Username := fPARAMETROS_PAR_ler('Email_UserId');
               IdSMTP1.password := fPARAMETROS_PAR_ler('Email_Password');

               // IdSMTP1.AuthenticationType := atLogin;
                  IdSMTP1.AuthType := satDefault;
                try
                  idmessage1.MessageParts.Clear;
                except
                end;
                //TIdAttachment.Create(idmessage1.MessageParts, TFileName(ACBrNFe1.Configuracoes.Arquivos.PathSalvar+'\'+copy(ACBrNFe1.NotasFiscais.Items[0].NFe.infNFe.ID, (length(ACBrNFe1.NotasFiscais.Items[0].NFe.infNFe.ID)-44)+1, 44)+'-NFe.xml'));
                //IdSMTP1.Connect(0);

                //O seu endereço de e-mail
                IdMessage1.From.Address :=fPARAMETROS_PAR_ler('Email_UserId');
                //Aqui vai o endereço de e-mail para o qual você quer mandar o xml
                // 08/08/11 nao manda mais email para o wander
                //IdMessage1.Recipients.EMailAddresses :='wanderok@msn.com';
//                IdMessage1.Recipients.EMailAddresses :=vEMAIL;
                //O assunto da mensagem
                IdMessage1.Subject :='Nota Fiscal Eletrônica: '+qEMITENTE.FieldByName('FILI_DESCRICAO').AsString;

                IdMessage1.Body.Clear;
                IdMessage1.Body.add('Prezados, ');
                IdMessage1.Body.add(' ');
                IdMessage1.Body.add('Segue arquivo XML da Nota Fiscal Eletronica [ ' + FormatFloat('00000000',qVENDA.FieldByName('NF_NUMERO').AsInteger)+' ], Serie [ '+ qVENDA.FieldByName('NF_SERIE' ).AsString+' ]');
                IdMessage1.Body.add('Emitido pela empresa '+qEMITENTE.FieldByName('FILI_DESCRICAO').AsString);
                IdMessage1.Body.add('CNPJ:'+qEMITENTE.FieldByName('FILI_CNPJ').AsString);
                IdMessage1.Body.add(' ');
                IdMessage1.Body.add('Email emitido automaticamente.');
                IdMessage1.Body.add('----------------------------------------');
                IdMessage1.Body.add('Sistema BRENA de Automacao Comercial    ');
                IdMessage1.Body.add('www.brena.com.br  '+fPARAMETROS_PAR_LER('EmailBrena'));
                IdMessage1.Body.add('(21)99 55 99 56 9                       ');
                IdMessage1.Body.add('----------------------------------------');
                try
                   IdSMTP1.Send(IdMessage1);
                   ShowMessage('Foi enviado para o email de seu '+vTermoClienteFornecedor+' o arquivo XML desta NFe');
                except
                   ShowMessage(edUSU_NOME.text+', não foi possível enviar o arquivo XML desta NFe para o email de seu '+vTermoClienteFornecedor);
                end;
                IdSMTP1.Disconnect;

            except
            end;
    end;
     }
    //ACBrNFe1.DANFE := DANFeNFe;
    // aqui*********************************
    ACBrNFe1.NotasFiscais.Imprimir;

    ACBrNFe1.NotasFiscais.Clear;

   Result := True;

end;

procedure TfrmEmissaoDeNFe.Tratar_Fundo_de_Combate_A_Pobreza;
begin
   //Tratamento do FCP - Fundo de Combate à Pobreza
   //---------------------------------------------------------------------------

    With Produto.Imposto.ICMSUFDest do
    begin
      // partilha do ICMS e fundo de probreza
      vBCUFDest      := 0.00;
      pFCPUFDest     := 0.00;
      pICMSUFDest    := 0.00;
      pICMSInter     := 0.00;
      pICMSInterPart := 0.00;
      vFCPUFDest     := 0.00;
      vICMSUFDest    := 0.00;
      vICMSUFRemet   := 0.00;
    end;
end;

procedure TfrmEmissaoDeNFe.Tratar_Grupo_A_Dados_Da_NFe;
begin
   //---------------------------------------------------------------------------
   // LAYOUT FEDERAL
   //---------------------------------------------------------------------------
   // TRATAMENTO DO GRUPO A - Dados da Nota Fiscal eletrônica #
   //---------------------------------------------------------------------------

   {A03-ID}
   //Identificador da TAG a ser assinada
   //informar a chave de acesso da NF-e precedida do literal ‘NFe’,
   //acrescentada a validação do formato (v2.0).
   Nota.infNFe.ID := xNumNota; // qVENDA.FieldByName('NF_NUMERO').AsString;

end;

procedure TfrmEmissaoDeNFe.Tratar_Grupo_B_Identificacao_da_NFe;
begin
   //---------------------------------------------------------------------------
   // LAYOUT FEDERAL
   //---------------------------------------------------------------------------
   // TRATAMENTO DO GRUPO B - Identificação da Nota Fiscal eletrônica #
   //---------------------------------------------------------------------------

   {5-B01}
   //ide
   //Grupo das informações de identificação da NF-e
   //---------------------------------------------------------------------------

   {6-B02}
   //cUF
   //Código da UF do emitente do Documento Fiscal
   //Utilizar a Tabela do IBGE de código de unidades da federação
   //(Anexo IV - Tabela de UF, Município e País)
   Nota.Ide.cUF := SoNumeros(qEMITENTE.FieldByName('COD_UF').AsString);

   {7-B03}
   //cNF
   //Código numérico que compõe a Chave de Acesso.
   //Número aleatório gerado pelo emitente para cada NF-e para evitar acessos
   //indevidos da NF-e. (v2.0)
   Nota.Ide.cNF := 99559956;

   {8-B04}
   //natOp
   //Descrição da Natureza da Operação
   //Informar a natureza da operação de que decorrer a saída ou a entrada,
   //tais como: venda, compra, transferência, devolução, importação, consignação,
   //remessa (para fins de demonstração, de industrialização ou outra),
   //conforme previsto na alínea 'i', inciso I, art. 19 do CONVÊNIO S/Nº,
   //de 15 de dezembro de 1970.
   Nota.Ide.natOp := qNaturezaOperacao.FieldByName('DESCRICAO').AsString;

   {9-B05} //XXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXX
   //indPag
   //Indicador da forma de pagamento
   //0 – pagamento à vista;
   //1 – pagamento à prazo;
   //2 - outros
   //Nota.Ide.indPag := ipVista;
   //                                    (Excluído no leiaute 4.0 - NT 2016/002)

   {10-B06}
   //mod
   //Código do Modelo do Documento Fiscal
   //    55 = NF-e emitida em substituição ao modelo 1 ou 1A;
   //    65 = NFC-e, utilizada nas operações de venda no varejo
   //(a critério da UF aceitar este modelo de documento).
   Nota.Ide.modelo := 55;

   {11-B07}
   //serie
   //Série do Documento Fiscal,
   //Preencher com zeros na hipótese de a NF-e não possuir série. (v2.0)
   //
   //Série 890-899 de uso exclusivo para emissão de NF-e avulsa,
   //pelo contribuinte com seu certificado digital, através do site do Fisco
   //                                                        (procEmi=2). (v2.0)
   //
   //===========================================================================
   //                       >> ANTES <<
   //===========================================================================
   //Serie 900-999 – uso exclusivo de NF-e emitidas no SCAN. (v2.0)
   //===========================================================================
   //                       >> AGORA <<
   //===========================================================================
   //Série na faixa:
   //  - [000-889]: Aplicativo do Contribuinte; Emitente=CNPJ;
   //               Assinatura pelo e-CNPJ do contribuinte (procEmi<>1,2);
   //
   //  - [890-899]: Emissão no site do Fisco (NFA-e - Avulsa);
   //               Emitente= CNPJ / CPF;
   //               Assinatura pelo e-CNPJ da SEFAZ (procEmi=1);
   //
   //  - [900-909]: Emissão no site do Fisco (NFA-e);
   //               Emitente= CNPJ;
   //               Assinatura pelo e-CNPJ da SEFAZ (procEmi=1), ou
   //               Assinatura pelo e-CNPJ do contribuinte (procEmi=2);
   //
   //  - [910-919]: Emissão no site do Fisco (NFA-e);
   //               Emitente= CPF;
   //               Assinatura pelo e-CNPJ da SEFAZ (procEmi=1), ou
   //               Assinatura pelo e-CPF do contribuinte (procEmi=2);
   //
   //  - [920-969]: Aplicativo do Contribuinte; Emitente=CPF;
   //               Assinatura pelo e-CPF do contribuinte (procEmi<>1,2);
   //
   //                                                   (Atualizado NT 2018/001)
   //===========================================================================
   Nota.Ide.serie := qNFE_CONFIGURACAO.FieldByName('NFeC_Serie').AsInteger;

   {12-B08}
   //nNF
   //Número do Documento Fiscal
   Nota.Ide.nNF := vNumNota; // qVENDA.FieldByName('NF_NUMERO').AsInteger;

   {13-B09}
   //dEmi
   //Data de emissão do Documento Fiscal
   //Data e hora no formato UTC (Universal Coordinated Time):
   //                                                     AAAA-MM-DDThh:mm:ssTZD
   Nota.Ide.dEmi := Date;

   //Data e hora no formato UTC (Universal Coordinated Time):
   //                                                     AAAA-MM-DDThh:mm:ssTZD
   //Observação: Não informar este campo para a NFC-e.

   {14-B10}
   //dhSaiEnt
   //Data de Saída ou da Entrada da Mercadoria/Produto
   Nota.Ide.dSaiEnt := Date;

   {14a-B10a}  //?????? -  a confirmar pois data e hora foram substituidos por data+hora
   //hSaiEnt
   //Hora de Saída ou da Entrada da Mercadoria/Produto
   //Formato “HH:MM:SS” (v.2.0)
   Nota.Ide.hSaiEnt := Now;

   {15-B11}
   //tpNF
   //Tipo de Operação
   //   0 = entrada
   //   1 = saída
   if qTPMOV.FieldByName('TPMOV_ES').AsString = 'S' then
      Nota.Ide.tpNF := tnSaida
   else
      Nota.Ide.tpNF := tnEntrada;

   {15-B12}
   //cMunFG
   //Código do Município de Ocorrência do Fato Gerador
   //Informar o município de ocorrência do fato gerador do ICMS.
   //Utilizar a Tabela do IBGE (Anexo VII - Tabela de UF, Município e País)
   Nota.Ide.cMunFG := SoNumeros(qEMITENTE.FieldByName('CODIGO_MUNICIPIO').AsString);

   Tratar_Grupo_BA_Documento_Fiscal_Referencado;

   {25-B21}
   //tpImp
   //Formato de Impressão do DANFE
   //      0 = Sem geração de DANFE;
   //      1 = DANFE normal, Retrato;
   //      2 = DANFE normal, Paisagem;
   //      3 = DANFE Simplificado;
   //      4 = DANFE NFC-e;
   //      5 = DANFE NFC-e em mensagem eletrônica (o envio de mensagem eletrônica
   //          pode ser feita de forma simultânea com a impressão do DANFE;
   //usar o tpImp=5 quando esta for a única forma de disponibilização do DANFE)
   case qNFE_CONFIGURACAO.FieldByName('NFeC_LayoutDanfe').AsInteger of
      0 : Nota.Ide.tpImp := tiSemGeracao;
      1 : Nota.Ide.tpImp := tiRetrato;
      2 : Nota.Ide.tpImp := tiPaisagem;
      3 : Nota.Ide.tpImp := tiSimplificado;
      4 : Nota.Ide.tpImp := tiNFCe;
      5 : Nota.Ide.tpImp := tiMsgEletronica;
   end;

   {26-B22}
   //(tpEmis)
   //Tipo de Emissão da NF-e
   //   1 – Normal
   //       Emissão normal (Não contingência}
   //
   //   2 – Contingência FS-IA
   //       Emissão em contingência
   //       com impressão do DANFE em Formulário de Segurança
   //       (Impressor Autônomo)
   //
   //   3 – Contingência SCAN
   //       Emissão em contingência
   //       no Sistema de Contingência do Ambiente Nacional – SCAN
   //                                                  *Desativado * NT 2015/002
   //
   //   4 – Contingência DPEC
   //       Emissão em contingência
   //       com envio da Declaração Prévia de Emissão em Contingência – DPEC
   //
   //   5 – Contingência FS-DA
   //       Emissão em contingência
   //       com impressão do DANFE em Formulário de Segurança
   //       (Documento Auxiliar)
   //
   //   6 - Contingência SVC-AN (SEFAZ Virtual de Contingência do AN);
   //
   //   7 - Contingência SVC-RS (SEFAZ Virtual de Contingência do RS);
   //
   //   9 - Contingência off-line da NFC-e;
   //
   //Observação: Para a NFC-e somente é válida a opção de contingência:
   //                 9 - Contingência Off-Line e, a critério da UF,
   //                 4 - Contingência EPEC.
   //                                                              (NT 2015/002)
   case g_NFE_tpEmis of
      0 : Nota.Ide.tpEmis := teNormal;
      1 : Nota.Ide.tpEmis := teContingencia;
      2 : Nota.Ide.tpEmis := teSCAN;
      3 : Nota.Ide.tpEmis := teDPEC;
      4 : Nota.Ide.tpEmis := teFSDA;
      5 : Nota.Ide.tpEmis := teSVCAN;
      6 : Nota.Ide.tpEmis := teSVCRS;
      7 : Nota.Ide.tpEmis := teSVCSP;
      8 : Nota.Ide.tpEmis := teOffLine;
   end;

   {27-B23}
   //cDV
   //Dígito Verificador da Chave de Acesso da NF-e
   //Informar o DV da Chave de Acesso da NF-e.
   //O DV será calculado com a aplicação do algoritmo módulo 11 (base 2,9)
   //da Chave de Acesso. (vide item 5.4 do MOC_Visão Geral)
   //*** Preenchido pelo componente ACBr ***

   {28-B24}
   //tpAmb
   //Identificação do Ambiente
   //   1-Produção
   //   2-Homologação
   Case qNFE_CONFIGURACAO.FieldByName('NFeC_Ambiente').AsInteger of
      0 : Nota.Ide.tpAmb := taProducao;
      1 : Nota.Ide.tpAmb := taHomologacao;
   End;

   {29-B25}
   //finNFe
   //Finalidade de emissão da NFe
   //   1 - NF-e normal
   //   2 - NF-e complementar
   //   3 – NF-e de ajuste
   //   4 - NF-e de devolução de mercadoria
   Case qTPMOV.FieldByName('TPMOV_FINALIDADE').AsInteger of
      0 : Nota.Ide.finNFe := fnNormal;
      1 : Nota.Ide.finNFe := fnComplementar;
      2 : Nota.Ide.finNFe := fnAjuste;
      3 : Nota.Ide.finNFe := fnDevolucao;
   End;

   {29.1-B25a}
   //indFinal
   //Indica operação com Consumidor final
   //     0 = Normal
   //     1 = Consumidor final
   if qDESTINATARIO.FieldByName('CONSUMIDOR_FINAL').AsString = 'SIM' then
      Nota.Ide.indFinal := cfConsumidorFinal
   else
      Nota.Ide.indFinal := cfNao;

   {29.2-B25b}
   //indPres
   //Indicador de presença do comprador no estabelecimento comercial no momento da operação
   //       0=Não se aplica (por exemplo, Nota Fiscal complementar ou de ajuste)
   //       1=Operação presencial
   //       2=Operação não presencial, pela Internet
   //       3=Operação não presencial, Teleatendimento
   //       4=NFC-e em operação com entrega a domicílio
   //       5=Operação presencial, fora do estabelecimento
   //                                                     (incluído NT 2016/002)
   //       9=Operação não presencial, outros.
   Nota.Ide.indPres := TpcnPresencaComprador(qTPMOV.FieldByName('TPMOV_INDPRES').AsInteger);

   {29a-B26}
   //procEmi
   //Processo de emissão da NF-e
   //Identificador do processo de emissão da NF-e:
   //    0 - emissão de NF-e com aplicativo do contribuinte;
   //    1 - emissão de NF-e avulsa pelo Fisco;
   //    2 - emissão de NF-e avulsa,
   //        pelo contribuinte com seu certificado digital,
   //        através do site do Fisco;
   //    3 - emissão NF-e pelo contribuinte
   //        com aplicativo fornecido pelo Fisco.
   Nota.Ide.procEmi := peAplicativoContribuinte;
   //                  peAvulsaFisco,
   //                  peAvulsaContribuinte,
   //                  peContribuinteAplicativoFisco

   {29b-B27}
   //verProc
   //Versão do Processo de emissão da NF-e
   //Identificador da versão do processo de emissão
   //(informar a versão do aplicativo emissor de NF-e).
   Nota.Ide.verProc := '1.0.0.0';

   // Apenas para contingencias
   if Nota.Ide.tpEmis = teContingencia then
   begin
       {29c-B28}
       //dhCont
       //Data e Hora da entrada em contingência
       //Informar a data e hora de entrada em contingência
       //no formato AAAA-MMDDTHH:MM:SS (v.2.0).
       //Data e hora no formato UTC (Universal Coordinated Time):
       //                                                 AAAA-MM-DDThh:mm:ssTZD
       Nota.Ide.dhCont := g_NFe_Contigencia_dhCont;

       {29d-B29}
       //xJust
       //Justificativa da entrada em contingência
       //Informar a Justificativa da entrada em contingência (v.2.0)
       Nota.Ide.xJust := g_NFe_Contigencia_xJust;
   end;
end;

procedure TfrmEmissaoDeNFe.Tratar_Grupo_BA_Documento_Fiscal_Referencado;
begin

   //Somente se o tipo de movimento está configurado para tratar o grupo B12a
   //---------------------------------------------------------------------------
   if qTPMOV.FieldByName('TPMOV_NFE_TRATAR_GRUPO_B12A_NOTA_REFERENCIADA').AsInteger = 0 then
      exit;

   //---------------------------------------------------------------------------
   // LAYOUT FEDERAL
   //---------------------------------------------------------------------------
   // TRATAMENTO DO GRUPO Ba - Identificação da Nota Fiscal eletrônica #
   //---------------------------------------------------------------------------

   {29x.1-BA01}
   //NFref
   //Grupo de informação das NF/NF-e referenciadas
   //Grupo com as informações das:
   //      - NF/NF-e
   //      - NF de produtor
   //      - Cupom Fiscal
   //referenciadas.
   //Esta informação será utilizada nas hipóteses previstas na legislação.
   //Exemplos:
   //    - Devolução de Mercadorias
   //    - Substituição de NF cancelada
   //    - Complementação de NF
   //    - etc...
   // (v.2.0)
   //---------------------------------------------------------------------------

   //NFe de finalidade "Normal" não trata NFe referenciada
   if qTPMOV.FieldByName('TPMOV_FINALIDADE').AsInteger = 0 then exit;

   //NFe de finalidade "Ajuste" não trata NFe referenciada
   if qTPMOV.FieldByName('TPMOV_FINALIDADE').AsInteger = 2 then exit;

   {
      //NFe de finalidade "Complementar" trata NFe referenciada
   if (qTPMOV.FieldByName('TPMOV_FINALIDADE').AsInteger = 1) or
      //NFe de finalidade "Devolução" trata NFe referenciada
      (qTPMOV.FieldByName('TPMOV_FINALIDADE').AsInteger = 3) then
   begin

   end;
   }

   // Criar TAG Nota Referenciada
   //---------------------------------------------------------------------------
   NotaReferenciada := Nota.Ide.NFref.add;

   {29x.2-BA02}
   //refNFe
   //Chave de acesso da NF-e referenciada
   //Utilizar esta TAG para referenciar uma Nota Fiscal Eletrônica emitida
   //anteriormente, vinculada a NF-e atual.
   //
   //Referencia uma NF-e (modelo 55) emitida anteriormente,
   //vinculada a NF-e atual, ou uma NFC-e (modelo 65)
   NotaReferenciada.refNFe := qVENDA.fieldByName('PED_NFREFERENCIA_CHAVENFE').AsString;

   {29x.3-BA03}
   //refNF
   //Informação da NF modelo 1/1A ou modelo 2, referenciada

   {29x.4-BA04}
   //cUF
   //Código da UF do emitente do Documento Fiscal
   //Utilizar a Tabela do IBGE
   //(Anexo IX - Tabela de UF, Município e País)
   NotaReferenciada.RefNF.cUF := SoNumeros(qVENDA.FieldByName('PED_NFREFERENCIA_UF').AsString);

   {29x.5-BA05}
   //AAMM
   //Ano e Mês de emissão da NFe
   //AAMM da emissão da NF
   NotaReferenciada.RefNF.AAMM := DataAAMM(qVENDA.FieldByName('PED_NFREFERENCIA_DTEMISSAO').AsDateTime);

   {29x.6-BA06}
   //CNPJ
   //CNPJ do emitente
   //Informar o CNPJ do emitente da NF
   NotaReferenciada.RefNF.CNPJ   := SoNumerosX(qVENDA.FieldByName('PED_NFREFERENCIA_CNPJ').AsString);

   {29x.7-BA07}
   //mod
   //Modelo do Documento Fiscal
   //Informar o código do modelo do Documento fiscal:
   //      01 – modelo 01
   //      02 - modelo 02
   //                                                  (incluído na NT 2016/002)
   NotaReferenciada.RefNF.modelo := qVENDA.FieldByName('PED_NFREFERENCIA_MODELO').AsInteger;

   {29x8-BA08}
   //serie
   //Série do Documento Fiscal
   //Informar a série do documento fiscal (informar zero se inexistente)
   NotaReferenciada.RefNF.serie := qVENDA.FieldByName('PED_NFREFERENCIA_SERIE').AsInteger;

   {29x.9-BA09}
   //nNF
   //Número do Documento Fiscal
   //1 – 999999999
   NotaReferenciada.RefNF.nNF := qVENDA.FieldByName('PED_NFREFERENCIA').AsInteger;

   //Somente se o tipo de movimento está configurado para tratar o grupo B20a
   //---------------------------------------------------------------------------
   if qTPMOV.FieldByName('TPMOV_NFE_TRATAR_GRUPO_B20a_NOTA_REFER_PROD_RURAL').AsInteger = 1 then
   begin

     // Tratar apenas NFe de produtor rural referenciada
     if qVENDA.FieldByName('PED_NFREFERENCIA_PRODUTOR_RURAL').AsInteger = 1 then
     begin


       {29x.10-BA10}
       //(refNFP)
       //Grupo de informações da NF de produtor rural referenciada

       {29x.11-BA11}
       //cUF
       //Código da UF do emitente do Documento Fiscal
       //Utilizar a Tabela do IBGE
       //(Anexo IX - Tabela de UF, Município e País) (v2.0)
       NotaReferenciada.refNFP.cUF := SoNumeros(qVENDA.FieldByName('PED_NFREFERENCIA_UF').AsString);

       {29x.12-BA12}
       //AAMM
       //Ano e Mês de emissão da NFe
       //AAMM da emissão da NF de produtor (v2.0)
       NotaReferenciada.refNFP.AAMM := DataAAMM(qVENDA.FieldByName('PED_NFREFERENCIA_DTEMISSAO').AsDateTime);

       {29x.13-BA13}
       //CNPJ
       //CNPJ do emitente
       //Informar o CNPJ do emitente da NF de produtor (v2.0)
       if qVENDA.FieldByName('PED_NFREFERENCIA_CNPJ').AsString <> '' then
          NotaReferenciada.refNFP.CNPJCPF := SoNumerosX(qVENDA.FieldByName('PED_NFREFERENCIA_CNPJ').AsString);

       {29x.14-BA14}
       //CPF
       //CPF do emitente
       //Informar o CPF do emitente da NF de produtor (v2.0)
       if qVENDA.FieldByName('PED_NFREFERENCIA_CPF').AsString <> '' then
          NotaReferenciada.refNFP.CNPJCPF := SoNumerosX(qVENDA.FieldByName('PED_NFREFERENCIA_CPF').AsString);

       {29x.15-BA15}
       //IE
       //IE do emitente
       //Informar a IE do emitente da NF de Produtor (v2.0)
       //ou o literal “ISENTO”
       if qVENDA.FieldByName('PED_NFREFERENCIA_IE').AsString <> '' then
          NotaReferenciada.refNFP.IE := SoNumerosX(qVENDA.FieldByName('PED_NFREFERENCIA_IE').AsString);

       {29x.16-BA16}
       //mod
       //Modelo do Documento Fiscal
       //Informar o código:
       //     04 – NF de Produtor ou
       //     01 - NF avulsa  (v2.0)
       NotaReferenciada.refNFP.modelo := qVENDA.FieldByName('PED_NFREFERENCIA_MODELO').AsString;

       {29x.17-BA17}
       //serie
       //Série do Documento Fiscal
       //(Informar zero se não existente)(v2.0)
       NotaReferenciada.refNFP.serie := qVENDA.FieldByName('PED_NFREFERENCIA_SERIE').AsInteger;

       {29x18-BA18}
       //nNF
       //Número do Documento Fiscal
       //1 – 999999999
       NotaReferenciada.refNFP.nNF := qVENDA.FieldByName('PED_NFREFERENCIA').AsInteger;

       {29x19-BA19}
       //refCTe
       //Chave de acesso do CT-e referenciada
       //Utilizar esta TAG para referenciar um CT-e emitido anteriormente, vinculada a NF-e atual - (v2.0).
       NotaReferenciada.refCTe := qVENDA.FieldByName('PED_NFREFERENCIA_REFCTE').AsString;
     end;
   end;

   if qTPMOV.FieldByName('TPMOV_NFE_TRATAR_GRUPO_B20j_CUPOM_FISCAL_REFERENCIADO').AsInteger = 1 then
   begin
      // Tratar apenas NFe com Cupom Fiscal referenciado
      if qVENDA.FieldByName('PED_NFREFERENCIA_ECF_NECF').AsInteger = 1 then
      begin
         {29x.20-BA20}
         //refECF
         //Informações do Cupom Fiscal referenciado
         //Grupo do Cupom Fiscal vinculado à NF-e (v2.0).

         {29x.21-BA21}
         //mod
         //Modelo do Documento Fiscal
         //Preencher com:
         //  "2B" = Cupom Fiscal emitido por máquina registradora (não ECF)
         //  "2C" = Cupom Fiscal PDV
         //  "2D" = Cupom Fiscal (emitido por ECF) (v2.0).
         case qVENDA.FieldByName('PED_NFREFERENCIA_ECF_Modelo').AsInteger of
            0 : NotaReferenciada.RefECF.modelo := ECFModRefVazio;
            1 : NotaReferenciada.RefECF.modelo := ECFModRef2B;
            2 : NotaReferenciada.RefECF.modelo := ECFModRef2C;
            3 : NotaReferenciada.RefECF.modelo := ECFModRef2D;
         end;

         {29x.22-BA22}
         //nECF
         //Número de ordem seqüencial do ECF
         //Informar o número de ordem seqüencial do ECF que emitiu o
         //Cupom Fiscal vinculado à NF-e (v2.0).
         NotaReferenciada.RefECF.nECF := qVENDA.FieldByName('PED_NFREFERENCIA_ECF_NECF').AsString;

         {29x.23-BA23}
         //nCOO
         //Número do Contador de Ordem de Operação - COO
         //Informar o Número do Contador de Ordem de Operação - COO
         //vinculado à NF-e (v2.0).
         NotaReferenciada.RefECF.nCOO := qVENDA.FieldByName('PED_NFREFERENCIA_ECF_NCOO').AsString;
      end;
   end;
end;

procedure TfrmEmissaoDeNFe.Tratar_Grupo_C_Identificacao_do_Emitente_da_NFe;
begin
   //---------------------------------------------------------------------------
   // LAYOUT FEDERAL
   //---------------------------------------------------------------------------
   // TRATAMENTO DO GRUPO C -Identificação do Emitente da Nota Fiscal eletrônica
   //---------------------------------------------------------------------------

   {30-C01}
   //(emit)
   // Grupo de identificação do emitente da NF-e

   {31-C02}
   //(CNPJ)
   //CNPJ do emitente
   // ou...
   {31a-C02a}
   //(CPF)
   //CPF do remetente
   //Informar o CNPJ do emitente.
   //Em se tratando de emissão de NF-e avulsa pelo Fisco, as informações do
   //remetente serão informadas neste grupo.
   //O CNPJ ou CPF deverão ser informados com os zeros não significativos
   if Nota.Ide.procEmi = peAplicativoContribuinte then
      Nota.Emit.CNPJCPF := zeros(SoNumerosX(qEMITENTE.FieldByName('CNPJ').AsString),14)
   else
   if Nota.Ide.procEmi = peAvulsaFisco then
      Nota.Emit.CNPJCPF := zeros(SoNumerosX(qEMITENTE.FieldByName('CPF').AsString),14)
   else
      Nota.Emit.CNPJCPF := zeros('0',14);

   {32-C03}
   //(xNome)
   //Razão Social ou Nome do emitente
   Nota.Emit.xNome := qEMITENTE.FieldByName('RAZAO_SOCIAL').AsString;

   {33-C04}
   //(xFant)
   //Nome fantasia
   Nota.Emit.xFant := qEMITENTE.FieldByName('NOME_FANTASIA').AsString;

   {34-C05}
   //(enderEmit)
   //Grupo do Endereço do emitente

   {35-C06}
   //(xLgr)
   //Logradouro
   Nota.Emit.EnderEmit.xLgr := qEMITENTE.FieldByName('ENDERECO').AsString;

   {36-C07}
   //(nro)
   //Número
   Nota.Emit.EnderEmit.nro := qEMITENTE.FieldByName('NUMERO').AsString;

   {37-C08}
   //(xCpl)
   //Complemento
   Nota.Emit.EnderEmit.xCpl := qEMITENTE.FieldByName('COMPLEMENTO').AsString;

   {38-C09}
   //(xBairro)
   //Bairro
   Nota.Emit.EnderEmit.xBairro := qEMITENTE.FieldByName('BAIRRO').AsString;

   {39-C10}
   //(cMun)
   //Código do município
   //Utilizar a Tabela do IBGE (Anexo VII - Tabela de UF, Município e País).
   Nota.Emit.EnderEmit.cMun := qEMITENTE.FieldByName('CODIGO_MUNICIPIO').AsInteger;

   {40-C11}
   //(xMun)
   //Nome do município
   Nota.Emit.EnderEmit.xMun := qEMITENTE.FieldByName('MUNICIPIO').AsString;

   {41-C12}
   //{UF}
   //Sigla da UF
   Nota.Emit.EnderEmit.UF := qEMITENTE.FieldByName('ESTADO').AsString;

   {42-C13}
   //(CEP)
   //Código do CEP
   //Informar os zeros não significativos
   Nota.Emit.EnderEmit.CEP := qEMITENTE.FieldByName('CEP').AsInteger;

   {43-C14}
   //(cPais)
   //Código do País
   //  1058 - Brasil
   Nota.Emit.enderEmit.cPais := 1058;

   {44-C15}
   //(xPais)
   //Nome do País
   Nota.Emit.enderEmit.xPais := 'BRASIL';

   {45-C16}
   //(fone)
   //Telefone
   // a) Preencher com o Código DDD + número do telefone.
   // b) Nas operações com exterior é permitido informar
   //    o código do país + código da localidade + número do telefone (v.2.0)
   Nota.Emit.EnderEmit.fone := COPY(qEMITENTE.FieldByName('EMPRESA_TELEFONE_01').AsString,1,10);

   {46-C17}
   //(IE)
   //IE
   //Campo de informação obrigatória nos casos de emissão própria (procEmi = 0, 2 ou 3)
   //A IE deve ser informada apenas com algarismos para destinatários contribuintes do ICMS,
   //sem caracteres de formatação (ponto, barra, hífen, etc.);
   //O literal “ISENTO” deve ser informado apenas para contribuintes do ICMS que são isentos
   //de inscrição no cadastro de contribuintes do ICMS e estejam emitindo NF-e avulsa;
   if qEMITENTE.FieldByName('CONTRIBUINTE_ICMS').AsString = 'N' then
      Nota.Emit.IE := 'ISENTO'
   else
   if (Nota.Ide.procEmi = peAplicativoContribuinte     ) or
      (Nota.Ide.procEmi = peAvulsaContribuinte         ) or
      (Nota.Ide.procEmi = peContribuinteAplicativoFisco) then
      Nota.Emit.IE := SoNumerosX(qEMITENTE.FieldByName('INSCRICAO_ESTADUAL').AsString);

   {47-C18}
   //(IEST)
   //IE do Substituto Tributário
   //Informar a IE do ST da UF de destino da mercadoria,
   //quando houver a retenção do ICMS ST para a UF de destino.
   Nota.Emit.IEST := '';

   {48-C19}
   //(IM)
   //Inscrição Municipal
   //Este campo deve ser informado, quando ocorrer a emissão de NF-e conjugada,
   //com prestação de serviços sujeitos ao ISSQN e fornecimento de peças
   //sujeitos ao ICMS.
   Nota.Emit.IM := '';

   {49-C20}
   //(CNAE)
   //CNAE fiscal
   //Este campo deve ser informado quando o campo IM (C19) for informado
   if Nota.Emit.IM <> '' then
      Nota.Emit.CNAE := '';

   {49a-C21}
   //(CRT)
   //Código de Regime Tributário
   //Este campo será obrigatoriamente preenchido com:
   //   1 – Simples Nacional
   //   2 – Simples Nacional – excesso de sublimite de receita bruta
   //   3 – Regime Normal. (v2.0).
   Case qEMITENTE.FieldByName('CODIGO_REGIME_TRIBUTARIO').AsInteger of
      1 : Nota.Emit.CRT := crtSimplesNacional;
      2 : Nota.Emit.CRT := crtSimplesExcessoReceita;
      3 : Nota.Emit.CRT := crtRegimeNormal;
   End;
end;

procedure TfrmEmissaoDeNFe.Tratar_Grupo_D_Identificacao_do_Fisco_Emitente_da_NFe;
begin
   //---------------------------------------------------------------------------
   // LAYOUT FEDERAL
   //---------------------------------------------------------------------------
   // TRATAMENTO DO GRUPO D - Identificação do Fisco Emitente da NF-e
   //---------------------------------------------------------------------------

   {50-D01}
   //(avulsa)
   //Informações do fisco emitente, grupo de uso exclusivo do fisco.

   exit;
end;

procedure TfrmEmissaoDeNFe.Tratar_Grupo_E_Identificacao_do_Destinatario_da_NFe;
begin
   //---------------------------------------------------------------------------
   // LAYOUT FEDERAL
   //---------------------------------------------------------------------------
   // TRATAMENTO DO GRUPO E - Identificação do Destinatário da NFe
   //---------------------------------------------------------------------------

   {62-E01}
   //(dest)
   //Grupo de identificação do Destinatário da NF-e

   {63-E02}
   //(CNPJ)
   //CNPJ do destinatário
   // ou
   {64-E03}
   //(CPF)
   //CPF do destinatário
   //Informar o CNPJ ou o CPF do destinatário,
   //preenchendo os zeros não significativos.

   //===========================================================================
   //                       >> ANTES <<
   //===========================================================================
   //Não informar o conteúdo da TAG se a operação for realizada com o exterior
   //===========================================================================
   //                       >> AGORA <<
   //===========================================================================
   //Informar o CNPJ ou o CPF do destinatário, preenchendo
   //os zeros não significativos. No caso de operação com o
   //exterior, ou para comprador estrangeiro informar a tag "idEstrangeiro”.
   //===========================================================================

   if qNaturezaOperacao.FieldByName('ESTADO').AsString <> 'EXTERIOR' then
   begin
       if qDESTINATARIO.FieldByName('PESSOA_TIPO').AsString = 'FISICA' then
          Nota.Dest.CNPJCPF := SoNumerosX(qDESTINATARIO.FieldByName('CPF').AsString)
       else
          Nota.Dest.CNPJCPF := SoNumerosX(qDESTINATARIO.FieldByName('CNPJ').AsString);
   end;

   {65-E04}
   //(xNome)
   //Razão Social ou nome do destinatário
   Nota.Dest.xNome := qDESTINATARIO.FieldByName('RAZAO_SOCIAL').AsString;

   {66-E05}
   //(enderDest)
   //Grupo de endereço do Destinatário da NF-e

   {67-E06}
   //(xLgr)
   //Logradouro
   Nota.Dest.EnderDest.xLgr := qDESTINATARIO.FieldByName('ENDERECO').AsString;

   {68-E07}
   //(nro)
   //Número
   if qDESTINATARIO.FieldByName('NUMERO'    ).AsString <> '' then
      Nota.Dest.EnderDest.nro := qDESTINATARIO.FieldByName('NUMERO').AsString
   else
      Nota.Dest.EnderDest.nro := 'SN';

   {69-E08}
   //(xCpl)
   //Complemento
   Nota.Dest.EnderDest.xCpl := '';

   {70-E09}
   //(xBairro)
   //Bairro
   Nota.Dest.EnderDest.xBairro := qDESTINATARIO.FieldByName('BAIRRO').AsString;

   {71-E10}
   //(cMun)
   //Código do município
   //Utilizar a Tabela do IBGE (Anexo VII - Tabela de UF, Município e País).
   //Informar ‘9999999‘ para operações com o exterior.
   if qNaturezaOperacao.FieldByName('ESTADO').AsString <> 'EXTERIOR' then
      Nota.Dest.EnderDest.cMun := SoNumeros(qDESTINATARIO.FieldByName('CODIGO_MUNICIPIO').AsString)
   else
      Nota.Dest.EnderDest.cMun := 9999999;

   {72-E11}
   //(xMun)
   //Nome do município
   //Informar ‘EXTERIOR‘ para operações com o exterior.
   if qNaturezaOperacao.FieldByName('ESTADO').AsString <> 'EXTERIOR' then
      Nota.Dest.EnderDest.xMun := qDESTINATARIO.FieldByName('MUNICIPIO').AsString
   else
      Nota.Dest.EnderDest.xMun := 'EXTERIOR';

   {73-E12}
   //(UF)
   //Sigla da UF
   //Informar ‘EX’ para operações com o exterior
   if qNaturezaOperacao.FieldByName('ESTADO').AsString <> 'EXTERIOR' then
      Nota.Dest.EnderDest.UF := qDESTINATARIO.FieldByName('ESTADO').AsString
   else
      Nota.Dest.EnderDest.UF := 'EX';

   {74-E13}
   //(CEP)
   //Código do CEP
   //Informar os zeros não significativos.
   Nota.Dest.EnderDest.CEP := SoNumeros(qDESTINATARIO.FieldByName('CEP').AsString);

   {75-E14}
   //(cPais)
   //Código do País
   //Utilizar a Tabela do BACEN (Anexo VII - Tabela de UF, Município e País).
   Nota.Dest.EnderDest.cPais := 1058;

   {E15}
   //(xPais)
   //Nome do País
   Nota.Dest.EnderDest.xPais := 'BRASIL';

   {77-E16}
   //(fone)
   //Telefone
   //Preencher com o Código DDD + número do telefone.
   //Nas operações com exterior é permitido informar o código do país + código da localidade + número do telefone (v.2.0)
   Nota.Dest.EnderDest.Fone := COPY(SoNumerosX(qDESTINATARIO.FieldByName('TELEFONE').AsString),1,12);

   {78-E17}
   //(IE)
   // IE
   //Informar a IE quando o destinatário for contribuinte do ICMS.
   //Informar ISENTO quando o destinatário for contribuinte do ICMS,
   //mas não estiver obrigado à inscrição no cadastro de contribuintes do ICMS.
   //Não informar o conteúdo da TAG se o destinatário não for contribuinte do ICMS.
   //Esta tag aceita apenas:
   //    - ausência de conteúdo (<IE></IE> ou <IE/>)
   //      para destinatários não contribuintes do ICMS;
   //    - algarismos para destinatários contribuintes do ICMS,
   //      sem caracteres de formatação (ponto, barra, hífen, etc.);
   //    - literal “ISENTO” para destinatários contribuintes do ICMS
   //      que são isentos de inscrição no cadastro de contribuintes do ICMS;
   Case qDESTINATARIO.FieldByName('INDICACAO_IE').AsInteger of
          // Contribuinte
      0 : Nota.Dest.IE := SoNumerosX(qDESTINATARIO.FieldByName('INSCRICAO_ESTADUAL' ).AsString);
          // Isento
      1 : Nota.Dest.IE := 'ISENTO';
          // Não Contribuinte
      2 : Nota.Dest.IE := '';
   End;

   // Não existe mais na 4.0 - mas foi mantido para o período de transição
   Case qDESTINATARIO.FieldByName('INDICACAO_IE').AsInteger of
      0 : Nota.Dest.indIEDest := inContribuinte;
      1 : Nota.Dest.indIEDest := inIsento;
      2 : Nota.Dest.indIEDest := inNaoContribuinte;
   End;

   {79-E18}
   //(ISUF)
   //Inscrição na SUFRAMA
   //Obrigatório, nas operações que se beneficiam de incentivos fiscais
   //existentes nas áreas sob controle da SUFRAMA.
   //A omissão da Inscrição SUFRAMA impede o processamento da operação pelo
   //Sistema de Mercadoria Nacional da SUFRAMA e a liberação da Declaração de
   //Ingresso, prejudicando a comprovação do ingresso/internamento da mercadoria
   //nas áreas sob controle da SUFRAMA. (v2.0)
   Nota.Dest.ISUF := qDESTINATARIO.FieldByName('SUFRAMA').AsString;

   {79a-E19}
   //(email)
   //email
   //Informar o  e-mail do destinatário.
   //O campo pode ser utilizado para informar o e-mail de recepção da NF-e
   //indicada pelo destinatário (v2.0)
   Nota.Dest.Email := qDESTINATARIO.FieldByName('EMAIL').AsString;
end;

procedure TfrmEmissaoDeNFe.Tratar_Grupo_F_Identificao_do_Local_de_Retirada;
begin
   //Somente se o tipo de movimento está configurado para tratar o grupo F
   //---------------------------------------------------------------------------
   if qTPMOV.FieldByName('TPMOV_NFE_TRATAR_GRUPO_F_LOCAL_DE_RETIRADA').AsInteger = 0 then
      exit;

   //---------------------------------------------------------------------------
   // LAYOUT FEDERAL
   //---------------------------------------------------------------------------
   // TRATAMENTO DO GRUPO E - Identificação do Destinatário da NFe
   //---------------------------------------------------------------------------

   {80-F01}
   //(retirada)
   //Grupo de identificação do Local de retirada
   //Informar apenas quando for diferente do endereço do remetente.

   // AINDA NÂO IMPLEMENTADO
   exit;

   {81-F02}
   //(CNPJ)
   //CNPJ
   //Informar o CNPJ ou o CPF, preenchendo os zeros não significativos. (v2.0)
   Nota.Retirada.CNPJCPF := '';

   {81a-F02a}
   //(CPF)
   //CPF
   Nota.Retirada.CNPJCPF := '';

   {82-F03}
   //(xLgr)
   //Logradouro
   Nota.Retirada.xLgr := '';

   {83-F04}
   //(nro)
   //Número
   Nota.Retirada.nro := '';

   {84-F05}
   //(xCpl)
   //Complemento
   Nota.Retirada.xCpl := '';

   {85-F06}
   //(xBairro)
   //Bairro
   Nota.Retirada.xBairro := '';

   {86-F07}
   //(cMun)
   //Código do município
   //Utilizar a Tabela do IBGE (Anexo VII - Tabela de UF, Município e País).
   //Informar ‘9999999 ‘para operações com o exterior.
   Nota.Retirada.cMun := 0;

   {87-F08}
   //(xMun)
   //Nome do município
   //Informar ‘EXTERIOR‘ para operações com o exterior.
   Nota.Retirada.xMun := '';

   {88-F09}
   //(UF)
   //Sigla da UF
   //Informar ‘EX’ para operações com o exterior.
   Nota.Retirada.UF := '';
end;

procedure TfrmEmissaoDeNFe.Tratar_Grupo_G_Identificao_do_Local_de_Entrega;
begin
   //Somente se o tipo de movimento está configurado para tratar o grupo G
   //---------------------------------------------------------------------------
   if qTPMOV.FieldByName('TPMOV_NFE_TRATAR_GRUPO_G_LOCAL_DE_ENTREGA').AsInteger = 0 then
      exit;

   //---------------------------------------------------------------------------
   // LAYOUT FEDERAL
   //---------------------------------------------------------------------------
   // TRATAMENTO DO GRUPO G - Identificação do Local de Entrega #
   //---------------------------------------------------------------------------

   {89-G01}
   //(entrega)
   //Grupo de identificação do Local de entrega
   //Informar apenas quando for diferente do endereço do destinatário.

   // Não implementado
   exit;

   {90-G02}
   //(CNPJ)
   //CNPJ
   //Informar o CNPJ ou o CPF, preenchendo os zeros não significativos. (v2.0)
   Nota.Entrega.CNPJCPF := '';

   {90a-G02a}
   //(CPF)
   //CPF
   Nota.Entrega.CNPJCPF := '';

   {91-G03}
   //(xLgr)
   //Logradouro
   Nota.Entrega.xLgr := '';

   {92-G04}
   //(nro)
   //Número
   Nota.Entrega.nro := '';

   {93-G05}
   //(xCpl)
   //Complemento
   Nota.Entrega.xCpl := '';

   {94-G06}
   //(xBairro)
   //Bairro
   Nota.Entrega.xBairro := '';

   {95-G07}
   //(cMun)
   //Código do município
   //Utilizar a Tabela do IBGE (Anexo VII - Tabela de UF, Município e País).
   //Informar ‘9999999 ‘para operações com o exterior.
   Nota.Entrega.cMun := 0;

   {96-G08}
   //(xMun)
   //Nome do município
   //Informar ‘EXTERIOR‘ para operações com o exterior.
   Nota.Entrega.xMun := '';

   {97-G09}
   //(UF)
   //Sigla da UF
   //Informar ‘EX’ para operações com o exterior.
   Nota.Entrega.UF := '';
end;

procedure TfrmEmissaoDeNFe.Tratar_Grupo_H_Detalhamento_de_Produtos_e_Serviços_da_NFe;
var nItem : integer;
begin
   //---------------------------------------------------------------------------
   // LAYOUT FEDERAL
   //---------------------------------------------------------------------------
   // TRATAMENTO DO GRUPO H - Detalhamento de Produtos e Serviços da NF-e
   //---------------------------------------------------------------------------

   {98-H01}
   //(det)
   //Grupo do detalhamento de Produtos e Serviços da NF-e
   //Múltiplas ocorrências (máximo = 990)

   nItem := 0;
   While NOT qVENDA_ITEM.eof do
   begin
     //Para cada item do movimento/venda...
     inc(nItem);
     Produto := Nota.Det.Add;

     {99-H02}
     //(nItem)
     //Número do item (1-990)
     //Número sequencial, para cada item deve ser incrementado
     Produto.Prod.nItem := nItem;

     Tratar_Grupo_I_Produtos_e_Serviços_da_NFe;

     //Próximo item do movimento/venda
     qVENDA_ITEM.Next;
    end;
end;

procedure TfrmEmissaoDeNFe.Tratar_Grupo_I_Produtos_e_Serviços_da_NFe;
var sEAN : String;
begin
   //---------------------------------------------------------------------------
   // LAYOUT FEDERAL
   //---------------------------------------------------------------------------
   // TRATAMENTO DO GRUPO I - Produtos e Serviços da NF-e
   //---------------------------------------------------------------------------

   {100-I01}
   //(prod)
   //TAG de grupo do detalhamento de Produtos e Serviços da NF-e

   {101-I02}
   //(cProd)
   //Código do produto ou serviço
   //Preencher com CFOP, caso se trate de itens não relacionados com
   //mercadorias/produtos e que o contribuinte não possua codificação própria.
   //Formato ”CFOP9999”
   Produto.Prod.cProd := qVENDA_ITEM.FieldByName('CODIGO_PRODUTO').AsString;

   {102-I03}
   //(cEAN)
   //GTIN (Global Trade Item Number) do produto.
   //     (antigo código EAN ou código de barras)
   //Preencher com o código GTIN-8, GTIN-12, GTIN-13 ou GTIN14
   //     (antigos códigos EAN, UPC e DUN-14),

   //===========================================================================
   //                       >> ANTES <<
   //===========================================================================
   //não informar o conteúdo da TAG em caso de o produto não possuir este código
   //===========================================================================
   //                       >> AGORA <<
   //===========================================================================
   //Para produtos que não possuem código de barras com
   //GTIN, deve ser informado o literal “SEM GTIN”;
   //(atualizado NT 2017/001)   //===========================================================================

   //Obrigatória informação do NCM completo (8 dígitos).
   //Nota: Em caso de item de serviço ou item que não tenham produto
   //(ex. transferência de crédito, crédito do ativo imobilizado, etc.),
   //informar o valor 00 (dois zeros). (NT 2014/004)

   sEAN := qVENDA_ITEM.FieldByName('PROD_EAN').AsString;
   if Trim(sEAN) = '' then
      // PRODUTO SEM CODIGO DE BARRAS
      Produto.Prod.cEAN := 'SEM GTIN'
   else
   begin
       // PRODUTO COM CODIGO DE BARRAS
       Produto.Prod.cEAN := '';
       While Length(sEAN) < 14 do
             sEAN := '0'+sEAN;
       If copy(sEan,1,1) = '0' then
          sEAN := copy(sEAN,2,13);
       IF EAN13Valido(sEAN) {esta função está na ACBrUtil} then
       begin
          Produto.Prod.cEAN := sEAN;
          Produto.Prod.cEANTrib := sEAN;
       end;
    end;

    if Produto.Prod.cEAN = '' then
    begin
       Produto.Prod.cEAN :='SEM GTIN';
       Produto.Prod.cEANTrib :='SEM GTIN';
    end;

   {103-I04}
   //(xProd)
   //Descrição do produto ou serviço
   Produto.Prod.xProd := COPY(qVENDA_ITEM.FieldByName('DESCRICAO').AsString,1,100);

   {104-I05}
   //(NCM)
   //Código NCM com 8 dígitos ou 2 dígitos (gênero)
   //Código NCM (8 posições), informar o gênero (posição do capítulo do NCM)
   //quando a operação não for de comércio exterior (importação/ exportação) ou
   //o produto não seja tributado pelo IPI.
   //Em caso de serviço informar o código 99 (v2.0)
   Produto.Prod.NCM := qVENDA_ITEM.FieldByName('NCM').AsString;

   {104a-I05a}
   //(NVE)
   //Codificação NVE - Nomenclatura de Valor Aduaneiro e Estatística.
   //Codificação opcional que detalha alguns NCM.
   //Formato: duas letras maiúsculas e 4 algarismos.
   //Se a mercadoria se enquadrar em mais de uma codificação,
   //informar até 8 codificações principais.
   //Vide: Anexo XII.03 - Identificador NVE.
   //Produto.Prod.NVE := qVENDA_ITEM.FieldByName('NVE').AsString;

   {104b-I05b}
   //-x-
   //Sequência XML
   //(NT 2016/002)

   {104d-I05c}
   //CEST
   //Código CEST
   //Campo CEST (Código Especificador da Substituição Tributária),
   //que estabelece a sistemática de uniformização e identificação das
   //mercadorias e bens passíveis de sujeição aos regimes de substituição
   //tributária e de antecipação de recolhimento do ICMS.
   //(Incluído na NT 2015/003. Atualizado NT 2016/002)

   {104e-I05d}
   //indEscala
   //Indicador de Produção em escala relevante, conforme Cláusula 23 do Convenio
   //ICMS 52/2017:
   //     S - Produzido em Escala Relevante;
   //     N – Produzido em Escala NÃO Relevante.
   //
   //Nota: preenchimento obrigatório para produtos com NCM relacionado no
   //      Anexo XXVII do Convenio 52/2017
   //
   //(Incluido na NT 2016/002)
   Case qVENDA_ITEM.FieldByName('NFe_indEscala').AsInteger of      0 : Produto.Prod.indEscala := ieRelevante;
      1 : Produto.Prod.indEscala := ieNaoRelevante;
      2 : Produto.Prod.indEscala := ieNenhum;
   End;

   {104f-105e}
   //CNPJFab
   //CNPJ do Fabricante da Mercadoria
   //Obrigatório para produto em escala NÃO relevante.
   //(Incluído na NT 2016/002)   //CNPJFab := '';

   {104g-I05f}
   //cBenef
   //Código de Benefício Fiscal na UF aplicado ao item.
   //Código de Benefício Fiscal utilizado pela UF, aplicado ao item.
   //Obs.: Deve ser utilizado o mesmo código adotado na EFD e outras declarações, nas UF que o exigem.
   //(Incluído na NT 2016/002)
   //cBenef := '';

   {105-I06}
   //(EXTIPI)
   //EX_TIPI
   //Preencher de acordo com o código EX da TIPI.
   //Em caso de serviço, não incluir a TAG.
   Produto.Prod.EXTIPI := qVENDA_ITEM.FieldByName('EX_IPI').AsString;

   {107-I08}
   //(CFOP)
   //Código Fiscal de Operações                                 e Prestações
   //Utilizar Tabela de CFOP.
   Produto.Prod.CFOP := qVENDA_ITEM.FieldByName('VI_CFOP_CSOSN').AsString;

   {108-I09}
   //(uCom)
   //Unidade Comercial
   //Informar a unidade de comercialização do produto
   //Informar a sigla (o símbolo) da unidade de medida
   Produto.Prod.uCom := CompletarComPontos(fproduto_unidade_SIGLA(qVENDA_ITEM.FieldByName('PROD_CDUNIDADE').AsString),3);

   {109-I10}
   //(qCom)
   //Quantidade Comercial
   //Informar a quantidade de comercialização do produto (v2.0).
   Produto.Prod.qCom := qVENDA_ITEM.FieldByName('QUANTIDADE').AsFloat;

   {109a-I10a}
   //(vUnCom)
   //Valor Unitário de Comercialização
   //Informar o valor unitário de comercialização do produto,
   //campo meramente informativo, o contribuinte pode utilizar a precisão desejada
   //(0-10 decimais). Para efeitos de cálculo, o valor unitário será obtido pela
   //divisão do valor do produto pela quantidade comercial. (v2.0)
   Produto.Prod.vUnCom := qVENDA_ITEM.FieldByName('PRECO').AsFloat;

   {110-I11}
   //vProd
   //Valor Total Bruto dos Produtos ou Serviços
   //O valor do ICMS faz parte do Valor Total Bruto
   Produto.Prod.vProd := Produto.Prod.qCom
                       * Produto.Prod.vUnCom;

   {111-I12}
   //(cEANTrib)
   //GTIN (Global Trade Item Number) da unidade tributável,
   //antigo código EAN ou código de barras
   //Preencher com o código GTIN8, GTIN-12, GTIN-13 ou GTIN14
   //(antigos códigos EAN, UPC e DUN-14) da unidade tributável do produto,
   //
   //===========================================================================
   //                       >> ANTES <<
   //===========================================================================
   //não informar o conteúdo da TAG em caso de o produto não possuir este código
   //===========================================================================
   //                       >> AGORA <<
   //===========================================================================
   //O GTIN da unidade tributável deve corresponder àquele da menor unidade
   //comercializável identificada por código GTIN.
   //
   //Para produtos que não possuem código de barras com GTIN, deve ser informado
   //o literal "SEM GTIN”;
   //                                                   (Atualizado NT 2017/001)   //===========================================================================    //Produto.Prod.cEANTrib := sEAN;
    //if Produto.Prod.cEANTrib = '' then
    //   Produto.Prod.cEANTrib :='SEM GTIN';

   {112-I13}
   //(uTrib)
   //Unidade Tributável
   //Exibe a sigla (o símbolo) da unidade de medida, ou limpa o campo
   Produto.Prod.uTrib := CompletarComPontos(fproduto_unidade_SIGLA(qVENDA_ITEM.FieldByName('PROD_CDUNIDADE').AsString),03);

   {113-I14}
   //(qTrib)
   //Quantidade Tributável
   //Informar a quantidade de tributação do produto (v2.0).
   Produto.Prod.qTrib := Produto.Prod.qCom;

   {113a-I14a}
   //(vUnTrib)
   //Valor Unitário de tributação
   //Informar o valor unitário de tributação do produto,
   //campo meramente informativo, o contribuinte pode utilizar
   //a precisão desejada (0-10 decimais).
   //Para efeitos de cálculo, o valor unitário será obtido pela divisão
   //do valor do produto pela quantidade tributável.
   Produto.Prod.vUnTrib := qVENDA_ITEM.FieldByName('PRECO').AsFloat;

   {114-I15}
   //(vFrete)
   //Valor Total do Frete
   //*** NA VENDA É PRECISO UM CAMPO PARA INFORMAR O VALOR TOTAL DO FRETE
   //*** QUE DEVERÁ SER "RATEADO" PROPORCIONALMENTE (FORMA PONDERADA) ENTRE
   //*** TODOS OS PRODUTOS...
   Produto.Prod.vFrete := 0;

   {115-I16}
   //(vSeg)
   //Valor Total do Seguro
   //*** NA VENDA É PRECISO UM CAMPO PARA INFORMAR O VALOR TOTAL DO SEGURO
   //*** QUE DEVERÁ SER "RATEADO" PROPORCIONALMENTE (FORMA PONDERADA) ENTRE
   //*** TODOS OS PRODUTOS...
   Produto.Prod.vSeg := 0;

   {116-I17}
   //(vDesc)
   //Valor do Desconto
   Produto.Prod.vDesc := qVENDA_ITEM.FieldByName('rateio_desconto').AsFloat;

   {116a-I17a}
   //(vOutro)
   //Outras despesas acessórias
   //*** NA VENDA É PRECISO UM CAMPO PARA INFORMAR O VALOR TOTAL DE OUTRAS DESPESAS
   //*** QUE DEVERÁ SER "RATEADO" PROPORCIONALMENTE (FORMA PONDERADA) ENTRE
   //*** TODOS OS PRODUTOS...
   Produto.Prod.vOutro := 0;

   {116b-I17b}
   //(indTot)
   //Indica se valor do Item (vProd) entra no valor total da NF-e (vProd)
   //Este campo deverá ser preenchido com:
   //     0 – o valor do item (vProd) não compõe o valor total da NF-e (vProd)
   //     1 – o valor do item (vProd) compõe o valor total da NF-e (vProd) (v2.0)
   Case qVENDA_ITEM.FieldByName('NFe_indTot').AsInteger of
      0 : Produto.Prod.IndTot:= itSomaTotalNFe;
      1 : Produto.Prod.IndTot:= itNaoSomaTotalNFe;
   End;

   Tratar_Grupo_I80_Rastreabilidade_de_produto;
   Tratar_SubGrupo_DI_Declaracao_de_Importacao;
   Tratar_Grupo_J_Detalhamento_Especifico_de_Veiculos_Novos;
   Tratar_Grupo_K_Detalhamento_Especifico_de_Medicamento;
   Tratar_Grupo_L_Detalhamento_Especifico_de_Armamentos;
   Tratar_Grupo_LB_Detalhamento_Especifico_para_Operacao_com_Papel_Imune;
   Tratar_Grupo_L1_Detalhamento_Especifico_de_Combustiveis;
   Tratar_Grupo_M_Tributos_Incidentes_no_Produto_ou_Serviço;
end;

procedure TfrmEmissaoDeNFe.Tratar_Grupo_I80_Rastreabilidade_de_produto;
begin
   //Grupo criado para permitir a rastreabilidade de qualquer produto sujeito a
   //regulações sanitárias, casos de:
   //    - recolhimento/recall
   //    - defensivos agrícolas,
   //    - produtos veterinários,
   //    - odontológicos,
   //    - medicamentos,
   //    - bebidas,
   //    - águas envasadas,
   //    - embalagens,
   //    - etc.,
   //a partir da indicação de informações de número de lote,
   //data de fabricação/produção, data de validade, etc.
   //
   //Informar apenas quando se tratar de produto a ser rastreado
   //posteriormente
   //                                              (Grupo criado na NT/2016/002)

   //Somente se o produto estiver parametrizado como rastreável
   if qVENDA_ITEM.FieldByName('PROD_RASTREAVEL').AsInteger = 0 then
      exit;

   {128q-I80}
   //rastro
   //Detalhamento de produto sujeito a rastreabilidade
   //Informar apenas quando se tratar de produto a ser rastreado posteriormente
   //(Grupo criado na NT/2016/002)

   Carregar_RASTRO_RAS(g_Numero_do_Movimento,Produto.Prod.cProd);

   With Rastro do
   begin
      {128r-I81}
      //nLote
      //Número do Lote do produto
      nLote := qRASTRO_RAS.FieldByName('RAS_NLOTE').AsString;

      {128s-I82}
      //qLote
      //Quantidade de produto no Lote
      qLote := qRASTRO_RAS.FieldByName('RAS_QLOTE').AsFloat;

      {128t-I83}
      //dFab
      //Data de fabricação/ Produção
      //Formato: “AAAA-MM-DD”
      dFab := qRASTRO_RAS.FieldByName('RAS_DFAB').AsDateTime;

      {128u-I84}
      //dVal
      //Data de validade
      //Formato: “AAAA-MM-DD”
      //Informar o último dia do mês caso a validade não especifique o dia.
      dVal := qRASTRO_RAS.FieldByName('RAS_DVAL').AsDateTime;

      {128v-I85}
      //cAgreg
      //Código de Agregação
      cAgreg := qRASTRO_RAS.FieldByName('RAS_CAGREG').AsString;

   end;
end;

procedure TfrmEmissaoDeNFe.Tratar_Grupo_J_Detalhamento_Especifico_de_Veiculos_Novos;
begin
   //Somente se o tipo de movimento está configurado para tratar o grupo J
   //---------------------------------------------------------------------------
   if qTPMOV.FieldByName('TPMOV_NFE_TRATAR_GRUPO_J_VEICULOS_NOVOS').AsInteger = 0 then
      exit;

   //---------------------------------------------------------------------------
   // LAYOUT FEDERAL
   //---------------------------------------------------------------------------
   // TRATAMENTO DO SUBGRUPO DI - Declaração de Importação
   //---------------------------------------------------------------------------

   // Somente para veículos novos
   if qVENDA_ITEM.FieldByName('NFe_VeiculoNovo').AsInteger = 0 then
      exit;

   {129-J01}
   //(veicProd)
   //Grupo do detalhamento de Veículos novos
   //Informar apenas quando se tratar de veículos novos

   With Produto.Prod.veicProd do
   begin
     {130-J02}
     //(tpOp)
     //Tipo da operação:
     //   1 – Venda concessionária
     //   2 – Faturamento direto para consumidor final
     //   3 – Venda direta para grandes consumidores (frotista, governo, ...)
     //   0 – Outros
     case qVENDA_ITEM.FieldByName('NFe_Veiculo_tpOp').AsInteger of
        0 : tpOP := toOutros;
        1 : tpOP := toVendaConcessionaria;
        2 : tpOP := toFaturamentoDireto;
        3 : tpOP := toVendaDireta;
     end;

     {131-J03}
     //(chassi)
     //Chassi do veículo VIN (código-identificação-Veículo)
     chassi := qVENDA_ITEM.FieldByName('NFe_Veiculo_Chassi').AsString;

     {132-J04}
     //(cCor)
     //(Cor)
     //Código de cada montadora
     cCor := qVENDA_ITEM.FieldByName('NFe_Veiculo_Cor_Codigo').AsString;

     {133-J05}
     //(xCor)
     //Descrição da Cor
     xCor := qVENDA_ITEM.FieldByName('NFe_Veiculo_Cor_Descricao').AsString;

     {134-J06}
     //(pot)
     //Potência Motor (CV)
     //Potência máxima do motor do veículo em cavalo vapor (CV).
     //(potência-veículo)
     pot := qVENDA_ITEM.FieldByName('NFe_Veiculo_Pot').AsString;

     {135-J07}
     //(cilin)
     //Cilindradas
     //Capacidade voluntária do motor expressa em centímetros cúbicos (CC).
     //(cilindradas) (v2.0)
     Cilin := qVENDA_ITEM.FieldByName('NFe_Veiculo_Cilin').AsString;

     {136-J08}
     //(pesoL)
     //Peso Líquido
     //Em toneladas - 4 casas decimais

     {137-J09}
     //(pesoB)
     //Peso Bruto
     //Peso Bruto Total - em tonelada - 4 casas decimais

     {138-J10}
     //(nSerie)
     //Serial (série)

     {139-J11}
     //(tpComb)
     //Tipo de combustível
     //Utilizar Tabela RENAVAM (v2.0)
     //      01-Álcool
     //      02-Gasolina
     //      03-Diesel (...)
     //      16-Álcool/Gasolina
     //      17-Gasolina/Álcool/GNV
     //      18-Gasolina/Elétrico

     {140-J12}
     //(nMotor)
     //Número de Motor

     {141-J13}
     //(CMT)
     //Capacidade Máxima de Tração
     //Em Toneladas 4 casas decimais (v2.0)

     {142-J14}
     //(dist)
     //Distância entre eixos
     //em metros - 4 casas decimais

     {144-J16}
     //(anoMod)
     //Ano Modelo de Fabricação

     {145-J17}
     //(anoFab)
     //Ano de Fabricação

     {146-J18}
     //(tpPint)
     //Tipo de Pintura

     {147-I19}
     //(tpVeic)
     //Tipo de Veículo
     //Utilizar Tabela RENAVAM
     //      06-AUTOMÓVEL
     //      14-CAMINHÃO
     //      13-CAMINHONETA
     //      24-CARGA / CAM
     //      02-CICLOMOTO
     //      22-ESP / ÔNIBUS
     //      07-MICROÔNIBUS
     //      23-MISTO / CAM
     //      04-MOTOCICLO
     //      03-MOTONETA
     //      08-ÔNIBUS
     //      10-REBOQUE
     //      05-TRICICLO
     //      17-C. TRATOR
     //      *Lista exemplificativa.

     {148-J20}
     //(espVeic)
     //Espécie de Veículo
     //Utilizar Tabela RENAVAM
     //       1-PASSAGEIRO
     //       2-CARGA
     //       3-MISTO
     //       4-CORRIDA
     //       5-TRAÇÃO
     //       6-ESPECIAL

     {149-J21}
     //VIN
     //Condição do VIN
     //Informa-se o veículo tem VIN (chassi) remarcado.
     //         R-Remarcado
     //         N-Normal

     {150-J22}
     //condVeic
     //Condição do Veículo
     //       1-Acabado
     //       2-Inacabado
     //       3-Semi-acabado

     {151-J23}
     //cMod
     //Código Marca Modelo
     //Utilizar Tabela RENAVAM

     {151a-J24}
     //cCorDENATRAN
     //Código da Cor
     //Segundo as regras de précadastro do DENATRAN (v2.0)
     //     01-AMARELO
     //     02-AZUL
     //     03-BEGE
     //     04-BRANCA
     //     05-CINZA
     //     06-DOURADA
     //     07-GRENA
     //     08-LARANJA
     //     09-MARROM
     //     10-PRATA
     //     11-PRETA
     //     12-ROSA
     //     13-ROXA
     //     14-VERDE
     //     15-VERMELHA
     //     16-FANTASIA

     {151b-J25}
     //lota
     //Capacidade máxima de lotação
     //Quantidade máxima permitida de passageiros sentados, inclusive motorista. (v2.0)

     {151c-J26}
     //tpRest
     //Restrição
     //    0 - Não há
     //    1 - Alienação Fiduciária
     //    2 - Arrendamento Mercantil
     //    3 - Reserva de Domínio
     //    4 - Penhor de Veículos
     //    9 - outras. (v2.0)

   end; // With Produto.Prod.veicProd do
end;

procedure TfrmEmissaoDeNFe.Tratar_Grupo_K_Detalhamento_Especifico_de_Medicamento;
begin
   //Somente se o tipo de movimento está configurado para tratar o grupo K
   //---------------------------------------------------------------------------
   if qTPMOV.FieldByName('TPMOV_NFE_TRATAR_GRUPO_K_MEDICAMENTOS').AsInteger = 0 then
      exit;

   //---------------------------------------------------------------------------
   // LAYOUT FEDERAL
   //---------------------------------------------------------------------------
   // TRATAMENTO DO GRUPO K - Detalhamento Específico de Medicamento
   //---------------------------------------------------------------------------

   {152-K01}
   //med
   //Grupo do detalhamento de Medicamentos e de matérias-primas farmacêuticas
   //Informar apenas quando se tratar de medicamentos ou de matérias-primas
   //farmacêuticas, permite múltiplas ocorrências (ilimitado)

   {152a-K01a}
   //cProdANVISA
   //Código de Produto da ANVISA
   //Utilizar o número do registro ANVISA ou preencher com o literal “ISENTO”,
   //no caso de medicamento isento de registro na ANVISA.
   //                                                  (Incluído na NT 2016/002.   //                                                 Atualizado na NT 2018.005)   //cProdANVISA := '';

   {152b-K01b}
   //xMotivoIsencao
   //Motivo da isenção da ANVISA
   //Obs.: Para medicamento isento de registro na ANVISA, informar o número da
   //decisão que o isenta, como por exemplo o número da Resolução da Diretoria
   //Colegiada da ANVISA (RDC).
   //                                                    (Criado na NT 2018.005)
   //xMotivoIsencao := '';

   {153-K02} //XXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXX
   //Lote
   //Número do Lote de medicamentos ou de matérias-primas farmacêuticas
   //                                    (Excluído no leiaute 4.0 - NT 2016/002)

   {154-K03} //XXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXX
   //qLote
   //Quantidade de produto no Lote de medicamentos ou de matérias-primas farmacêuticas
   //                                    (Excluído no leiaute 4.0 - NT 2016/002)

   {155-K04} //XXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXX
   //dFab
   //Data de fabricação
   //Formato “AAAA-MM-DD”
   //                                    (Excluído no leiaute 4.0 - NT 2016/002)

   {156-K05} //XXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXX
   //dVal
   //Data de validade
   //Formato “AAAA-MM-DD”
   //                                    (Excluído no leiaute 4.0 - NT 2016/002)

   {157-K06}
   //vPMC
   //Preço máximo consumidor
   //vPMC := 0;
end;

procedure TfrmEmissaoDeNFe.Tratar_Grupo_L_Detalhamento_Especifico_de_Armamentos;
begin
   //Somente se o tipo de movimento está configurado para tratar o grupo L
   //---------------------------------------------------------------------------
   if qTPMOV.FieldByName('TPMOV_NFE_TRATAR_GRUPO_L_ARMAMENTOS').AsInteger = 0 then
      exit;

   //---------------------------------------------------------------------------
   // LAYOUT FEDERAL
   //---------------------------------------------------------------------------
   // TRATAMENTO DO GRUPO L - Detalhamento Específico de Armamentos
   //---------------------------------------------------------------------------

   // Somente para Armamentos
   if qVENDA_ITEM.FieldByName('NFe_Armamento').AsInteger = 0 then
      exit;

   {158-L01}
   //arma
   //Grupo do detalhamento de Armamento
   //Informar apenas quando se tratar de armamento,
   //permite múltiplas ocorrências (ilimitado)

   {159-L02}
   //tpArma
   //Indicador do tipo de arma de fogo
   //       0 - Uso permitido
   //       1 - Uso restrito;

   {160-L03}
   //nSerie
   //Número de série da arma

   {161-L04}
   //nCano
   //Número de série do cano

   {162-L05}
   //descr
   //Descrição completa da arma, compreendendo:
   //          calibre, marca, capacidade, tipo de funcionamento, comprimento
   //          e demais elementos que permitam a sua perfeita identificação

end;

procedure TfrmEmissaoDeNFe.Tratar_Grupo_L1_Detalhamento_Especifico_de_Combustiveis;
begin
   //Somente se o tipo de movimento está configurado para tratar o grupo L
   //---------------------------------------------------------------------------
   if qTPMOV.FieldByName('TPMOV_NFE_TRATAR_GRUPO_L1_COMBUSTIVEIS').AsInteger = 0 then
      exit;

   //---------------------------------------------------------------------------
   // LAYOUT FEDERAL
   //---------------------------------------------------------------------------
   // TRATAMENTO DO GRUPO L1 - Detalhamento Específico de Combustíveis
   //---------------------------------------------------------------------------

   {162a-L101}
   //comb
   //Grupo de informações específicas para combustíveis líquidos e lubrificantes
   //Informar apenas para operações com combustíveis líquidos e lubrificantes.

   {162b-L102}
   //cProdANP
   //Código de produto da ANP
   //Utilizar a codificação de produtos do Sistema de Informações de
   //Movimentação de produtos - SIMP (http://www.anp.gov.br/simp/ind ex.htm).
   //Informar 999999999 se o produto não possuir código de produto ANP.

   {162b1-LA03} //XXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXX
   //pMixGN
   //Percentual de Gás Natural para o produto GLP (cProdANP=210203001)
   //                                    (Excluído no leiaute 4.0 - NT 2016/002)

   {162b1-LA03}
   //descANP
   //Descrição do produto conforme ANP
   //Utilizar a descrição de produtos do Sistema de Informações de Movimentação
   //de Produtos - SIMP (http://www.anp.gov.br/simp/).
   //                                                  (Incluído na NT 2016/002)

   {162b2-LA03a}
   //pGLP
   //Percentual do GLP derivado do petróleo no produto GLP (cProdANP=210203001)
   //Informar em número decimal o percentual do GLP derivado de petróleo no
   //produto GLP.
   //Valores de 0 a 100.
   //                                                  (Incluído na NT 2016/002)

   {162b3-LA03b}
   //pGNn
   //Percentual de Gás Natural Nacional – GLGNn
   //para o produto GLP (cProdANP=210203001)
   //Informar em número decimal o percentual do Gás Natural Nacional – GLGNn
   //para o produto GLP.
   //Valores de 0 a 100.
   //                                                  (Incluído na NT 2016/002)

   {162b4-LA03c}
   //pGNi
   //Percentual de Gás Natural Importado – GLGNi
   //para o produto GLP (cProdANP=210203001)
   //Informar em número decimal o percentual do Gás Natural Importado – GLGNi
   //para o produto GLP.
   //Valores de 0 a 100.
   //                                                  (Incluído na NT 2016/002)

   {162b5-LA03d}
   //vPart Valor de partida (cProdANP=210203001)
   //Deve ser informado neste campo o valor por quilograma sem ICMS.
   //                                                  (Incluído na NT 2016/002)

   {162c-L103}
   //CODIF
   //Código de autorização / registro do CODIF
   //Informar apenas quando a UF utilizar o CODIF
   //(Sistema de Controle do Diferimento do Imposto nas Operações com AEAC
   //AEAC - Álcool Etílico Anidro Combustível).

   {162d-L104}
   //qTemp
   //Quantidade de combustível faturada à temperatura ambiente.
   //Informar quando a quantidade faturada informada no campo qCom (I10) tiver
   //sido ajustada para uma temperatura diferente da ambiente.

   {162e-L120}
   //UFCons
   //Sigla da UF de consumo
   //Informar a UF de consumo. Informar "EX" para Exterior.

   {162f-L105}
   //CIDE
   //Grupo da CIDE
   //Grupo de informações da CIDE

   {162g-L106}
   //qBCprod
   //BC da CIDE
   //Informar a BC da CIDE em quantidade

   {162h-L107}
   //vAliqProd
   //Valor da alíquota da CIDE
   //Informar o valor da alíquota em reais da CIDE

   {162i-L108}
   //vCIDE
   //Valor da CIDE
   //Informar o valor da CIDE

   {162j-LA11}
   //encerrante
   //Informações do grupo de “encerrante”
   //Informações do grupo de “encerrante” disponibilizado por hardware específico
   //acoplado à bomba de Combustível, definido no controle da venda do Posto
   //Revendedor de Combustível.
   //                                            (Grupo incluído na NT 2015/002)

   {162k-LA12}
   //nBico
   //Número de identificação do bico utilizado no abastecimento
   //Informar o número do bico utilizado no abastecimento.

   {162l-LA13}
   //nBomba
   //Número de identificação da bomba ao qual o bico está interligado
   //Caso exista, informar o número da bomba utilizada.

   {162m-LA14}
   //nTanque
   //Número de identificação do tanque ao qual o bico está interligado
   //Informar o número do tanque utilizado.

   {162n-LA15}
   //vEncIni
   //Valor do Encerrante no início do abastecimento
   //Informar o valor da leitura do contador (Encerrante) no início do
   //abastecimento

   {162o-LA16}
   //vEncFin
   //Valor do Encerrante no final do abastecimento
   //Informar o valor da leitura do contador (Encerrante) no término do
   //abastecimento

end;

procedure TfrmEmissaoDeNFe.Tratar_Grupo_LB_Detalhamento_Especifico_para_Operacao_com_Papel_Imune;
begin
    //Grupo LB. Detalhamento Específico para Operação com Papel Imune
    //--------------------------------------------------------------------------

    {162j-LB01}
    //nRECOPI
    //Número do RECOPI
    //Vide: Anexo X.02 - Identificador RECOPI
end;

procedure TfrmEmissaoDeNFe.Tratar_Grupo_M_Tributos_Incidentes_no_Produto_ou_Serviço;
begin
   //---------------------------------------------------------------------------
   // LAYOUT FEDERAL
   //---------------------------------------------------------------------------
   // TRATAMENTO DO GRUPO M - Tributos incidentes no Produto ou Serviço
   //---------------------------------------------------------------------------

   // Para todos os produtos da NFe

   // Recuperar relacionamento entre CFOP x CST para este TPMOV
   Carregar_RELACAO_CFOP_x_PRODUTO_xCST_PISCOFINS_RPC(
                                     qVENDA.FieldByName('VENDA_TPMOV').AsString,
                                                              Produto.Prod.CFOP,
                                                            Produto.Prod.cProd);

   {163-M01}
   //imposto
   //Grupo de Tributos incidentes no Produto ou Serviço
   //O grupo ISSQN é mutuamente exclusivo com os grupos ICMS, IPI e II,
   //isto é se ISSQN for informado os grupos ICMS, IPI e II não serão informados
   //163 M01 imposto Grupo de Tributos incidentes no Produto ou Serviço
   //e vice-versa (V2.0)

   //Define se trata produto ou serviço
   Case StrToInt(qVENDA_ITEM.FieldByName('TIPO_ITEM').AsString) of
     00 : Tratar_impostos_de_Produtos;
     09 : Tratar_impostos_de_Servicos;
   end;
end;

procedure TfrmEmissaoDeNFe.Tratar_impostos_de_Produtos;
begin
   // Calcula os impostos incidentes sobre produtos
   //---------------------------------------------------------------------------

   if Venda_Possui_Produtos_e_Servicos then
   begin
       // Venda Possui Produtos e serviços
      Tratar_Grupo_U_ISSQN;
   end
   else
   begin
       // Venda Possui Somente Produtos
       // Venda não possui serviços
       //------------------------------
       Case qEMITENTE.FieldByName('CODIGO_REGIME_TRIBUTARIO').AsInteger of
          1 // Simples Nacional
            :Tratar_CSOSN;
          2, // Simples Excesso Receita;
          3  // Regime Normal
            :Tratar_ICMS;
       End;

       Tratar_Grupo_O_Imposto_sobre_Produtos_Industrializados_IPI;
       Tratar_Grupo_P_Imposto_de_Importacao;
   end;

   //Impostos que permitem notas conjugadas (produtos e serviços)
   //                   ou notas apenas de produtos
   //                   ou notas apenas de serviços
   //---------------------------------------------------------------------------
   Tratar_Grupo_Q_PIS;
   Tratar_Grupo_R_PIS_ST;
   Tratar_Grupo_S_COFINS;
   Tratar_Grupo_T_COFINS_ST;
   Tratar_Fundo_de_Combate_A_Pobreza;
   Tratar_Grupo_V_Informacoes_Adicionais_do_Produto;
end;

procedure TfrmEmissaoDeNFe.Tratar_ICMS;
begin
   // Calcular ICMS e ST
   //---------------------------------------------------------------------------
   Tratar_Grupo_N_ICMS_Normal_e_ST;
   Tratar_Grupo_NA_ICMS_para_a_UF_de_Destino;
end;

procedure TfrmEmissaoDeNFe.Tratar_impostos_de_Servicos;
begin
   // Calcula os impostos incidentes sobre serviços
   //---------------------------------------------------------------------------
end;

procedure TfrmEmissaoDeNFe.Tratar_N11_Produto_Imposto_ICMS_orig;
begin
    {N11}
    //orig
    //Origem da mercadoria:
    //     0 – Nacional
    //     1 – Estrangeira – Importação direta
    //     2 – Estrangeira – Adquirida no mercado interno
    //---------------------------------------------------
    with Produto.Imposto.ICMS do
    begin
      Case qVENDA_ITEM.FieldByName('CODIGO_ORIGEM_MERCADORIA').AsInteger of
         0 : orig := oeNacional;
         1 : orig := oeEstrangeiraImportacaoDireta;
         2 : orig := oeEstrangeiraAdquiridaBrasil;
         3 : orig := oeNacionalConteudoImportacaoSuperior40;
         4 : orig := oeNacionalProcessosBasicos;
         5 : orig := oeNacionalConteudoImportacaoInferiorIgual40;
         6 : orig := oeEstrangeiraImportacaoDiretaSemSimilar;
         7 : orig := oeEstrangeiraAdquiridaBrasilSemSimilar;
         8 : orig := oeNacionalConteudoImportacaoSuperior70;
     end;
   end;
end;

procedure TfrmEmissaoDeNFe.Tratar_N12_Produto_Imposto_ICMS_CSOSN(
  pCSOSN: TpcnCSOSNIcms);
begin
   {N12a}
   //CSOSN
   // Código de Situação da Operação – Simples Nacional
   //        102 = Tributada pelo Simples Nacional sem permissão de crédito.
   //        103 = Isenção do ICMS no Simples Nacional para faixa de receita bruta.
   //        300 = Imune.
   //        400 = Não tributada pelo Simples Nacional (v2.0) (v2.0)
   //---------------------------------------------------------------------------
   Produto.Imposto.ICMS.CSOSN := pCSOSN;
end;

procedure TfrmEmissaoDeNFe.Tratar_N12_Produto_Imposto_ICMS_CST;
begin
   {N12}
   //CST
   //Tributação do ICMS
   //---------------------------------------------------------------------------
   Produto.Imposto.ICMS.CST := ConverteCSTICMS(qVENDA_ITEM.FieldByName('ICMS_CST').AsString);
end;

procedure TfrmEmissaoDeNFe.Tratar_N13_Produto_Imposto_ICMS_modBC;
begin
   {N13}
   //modBC
   // Modalidade de determinação da BC do ICMS
   //        0 - Margem Valor Agregado (%)
   //        1 - Pauta (Valor)
   //        2 - Preço Tabelado Máx. (valor)
   //        3 - valor da operação
   //------------------------------------------------------------------------
   //A pauta fiscal informa o valor de mercado de um determinado produto,
   //auxiliando na definição da base de cálculo do ICMS.
   //Esse valor referencial é definido pela Secretaria da Fazenda mediante
   //pesquisa periódica de preços, para ser utilizado como base de cálculo
   //nas situações previstas na legislação tributária.
   //Tem por fundamento o princípio da praticidade e, por objetivo,
   //orientação e controle fiscal, visando adequar o valor sobre o qual são
   //calculados os impostos aos preços efetivamente praticados no mercado
   //local.
   //
   //Fonte: http://intra.totall.com.br:8080/wiki/index.php/Pauta_Fiscal
   //------------------------------------------------------------------------
   with Produto.Imposto.ICMS do
   begin
      case qVENDA_ITEM.FieldByName('NFe_modBC').AsInteger of
         0 : modBC := dbiMargemValorAgregado;
         1 : modBC := dbiPauta;
         2 : modBC := dbiPrecoTabelado;
         3 : modBC := dbiValorOperacao;
         4 : modBC := dbiNenhum;
      end;
   end;
end;

procedure TfrmEmissaoDeNFe.Tratar_N14_Produto_Imposto_ICMS_pRedBC;
begin
   {N14}
   //pRedBC
   //Percentual da Redução de BC
   Produto.Imposto.ICMS.pRedBC := qVENDA_ITEM.FieldByName('PROD_NFe_N14_pRedBC').AsFloat;
end;

procedure TfrmEmissaoDeNFe.Tratar_N15_Produto_Imposto_ICMS_vBC;
begin
   {N15}
   //vBC
   //Valor da BC do ICMS
   {
   ***                                                               ***
   *** SE FOR MVA, PRECISARÀ USAR O MVA do prod na UF de destino     ***
   ***             Relacao:                                          ***
   ***                                                               ***
   ***             UFxPRODUTO_UFPROD:                                ***
   ***             -----------------------------------------------   ***
   ***             UFPROD_UF  UFPROD_CODIGO UFPROD_NFe_N15_pMVA      ***
   ***             -----------------------------------------------   ***
   ***                  SP       01231           18.5                ***
   ***                  SP       01234           19.8                ***
   ***                  MG       01231            8.5                ***
   ***                  MG       01234            9.5                ***
   ***                                                               ***
   ***             fNFe_15_pMVA('SP','01231') retorna 18.5           ***
   ***                                                               ***
   *** e saber o valor do custo do produto                           ***
   ***    CALCULAR O VALOR DA VENDA = MVA*VALORCUSTO/100+ VALORVUSTO ***
   ***                                                               ***
   }
   With Produto.Imposto.ICMS do
   begin
     if modBC = dbiPauta then
     begin
        //Usar o valor de pauta
        vBC := qVENDA_ITEM.FieldByName('VALOR_PAUTA_BC').AsFloat *
               Produto.Prod.qCom;
     end
     else
     begin
        //Usar o valor do movimento
        vBC := Produto.Prod.vProd;
     end;
   end;
end;

procedure TfrmEmissaoDeNFe.Tratar_N16_Produto_Imposto_ICMS_pICMS;
begin
   {N16}
   //pICMS
   //Alíquota do imposto
   Produto.Imposto.ICMS.pICMS := qVENDA_ITEM.FieldByName('PROD_NFe_N16_pICMS').AsFloat;
end;

procedure TfrmEmissaoDeNFe.Tratar_N16a_vICMSOp;
begin
   {N16a}
   //Valor do ICMS da Operação
   //Valor sem o diferimento
   //---------------------------------------------------------------------------
   Produto.Imposto.ICMS.vICMSOp := 0;
end;

procedure TfrmEmissaoDeNFe.Tratar_N16b_pDif;
begin
   {N16b}
   //Percentual do diferimento
   //No caso de diferimento total, informar o percentual de diferimento "100"
   //---------------------------------------------------------------------------
   Produto.Imposto.ICMS.pDif:=0;
end;

procedure TfrmEmissaoDeNFe.Tratar_N16c_vICMSDif;
begin
   {N16c}
   //Valor do ICMS diferido
   //---------------------------------------------------------------------------
   Produto.Imposto.ICMS.vICMSDif := 0;
end;

procedure TfrmEmissaoDeNFe.Tratar_N17_Produto_Imposto_ICMS_vICMS;
begin
   {N17}
   //vICMS
   //Valor do ICMS

   //vICMS
   //Valor do ICMS
   //O valor do ICMS será informado apenas nas operações com veículos
   //beneficiados com a desoneração condicional do ICMS. (v2.0)
   if qVENDA_ITEM.FieldByName('NFe_motDesICMS').AsInteger = 99 then
      exit;

   with Produto.Imposto.ICMS do
   begin
      vICMS := pICMS / 100 * vBC;
   end;
end;

procedure TfrmEmissaoDeNFe.Tratar_N17a_Produto_Imposto_ICMS_vBCFCP;
begin
   {N17a}
   //Base de Cálculo do Fundo de Combate a Pobreza
   //---------------------------------------------------------------------------
   Produto.Imposto.ICMS.vBCFCP := Produto.Prod.vProd;
end;

procedure TfrmEmissaoDeNFe.Tratar_N17b_Produto_Imposto_ICMS_pFCP;
begin
   {N17b}
   //Percentual do Fundo de Combate a Pobreza
   //Depende da UF - tem que vir do cadastro da empresa emitente
   //---------------------------------------------------------------------------
   Produto.Imposto.ICMS.pFCP := 0;
end;

procedure TfrmEmissaoDeNFe.Tratar_N17c_Produto_Imposto_ICMS_vFCP;
begin
   {N17c}
   //Valor do Fundo de Combate a Pobreza
   //Aplicado sobre a BC do ICMS qdo CST = 00
   //---------------------------------------------------------------------------
   With Produto.Imposto.ICMS do
   begin
      vFCP := pFCP / 100 * vBC;
   end;
end;

procedure TfrmEmissaoDeNFe.Tratar_N18_Produto_Imposto_ICMS_modBCST;
begin
   {N18}
   //modBCST
   //Modalidade de determinação da BC do ICMS ST
   //       0 – Preço tabelado ou máximo sugerido
   //       1 - Lista Negativa (valor)
   //       2 - Lista Positiva (valor)
   //       3 - Lista Neutra (valor)
   //       4 - Margem Valor Agregado (%)
   //       5 - Pauta (valor)
   With Produto.Imposto.ICMS do
   begin
     case qVENDA_ITEM.FieldByName('NFe_modBCST').AsInteger of
        0 : modBCST := dbisPrecoTabelado;
        1 : modBCST := dbisListaNegativa;
        2 : modBCST := dbisListaPositiva;
        3 : modBCST := dbisListaNeutra;
        4 : modBCST := dbisMargemValorAgregado;
        5 : modBCST := dbisPauta;
        6 : modBCST := dbisValordaOperacao;
     end;
   end;
end;

procedure TfrmEmissaoDeNFe.Tratar_N19_Produto_Imposto_ICMS_pMVAST;
begin
   {N19}
   //pMVAST
   //Percentual da margem de valor Adicionado do ICMS ST
   Produto.Imposto.ICMS.pMVAST := qVENDA_ITEM.FieldByName('NFe_pMVAST').AsFloat;
end;

procedure TfrmEmissaoDeNFe.Tratar_N20_Produto_Imposto_ICMS_pRedBCST;
begin
   {N20}
   //pRedBCST
   //Percentual da Redução de BC do ICMS ST
   Produto.Imposto.ICMS.pRedBCST := qVENDA_ITEM.FieldByName('PROD_NFe_N20_pRedBCST').AsFloat;
end;

procedure TfrmEmissaoDeNFe.Tratar_N21_Produto_Imposto_ICMS_vBCST;
begin
   {N21}
   //vBCST
   //Valor da BC do ICMS ST
   With Produto.Imposto.ICMS do
   begin
     if modBCST = dbisPauta then
        vBCST := (pMVAST/100) * (qVENDA_ITEM.FieldByName('PROD_NFe_N21_vBCST_PAUTA').AsFloat * Produto.Prod.qCom)
               * ((100-pRedBCST)/100)
     else
        vBCST := (pMVAST/100 * Produto.Prod.vProd)
               * ((100-pRedBCST)/100);
   end;
end;

procedure TfrmEmissaoDeNFe.Tratar_N22_Produto_Imposto_ICMS_pICMSST;
begin
   {N22}
   //pICMSST
   //Alíquota do imposto do ICMS ST
   Produto.Imposto.ICMS.pICMSST := qVENDA_ITEM.FieldByName('PROD_NFe_N16_pICMS_SUBST').AsFloat;
end;

procedure TfrmEmissaoDeNFe.Tratar_N23a_Produto_Imposto_ICMS_vBCFCPST;
begin
   {N17a}
   //Base de Cálculo do Fundo de Combate a Pobreza
   //Retido por Substituição Tributária
   Produto.Imposto.ICMS.vBCFCPST:=Produto.Prod.vProd;
end;

procedure TfrmEmissaoDeNFe.Tratar_N23b_Produto_Imposto_ICMS_pFCPST;
begin
   {N23b}
   //O Percental do Fundo de Combate a Pobreza depende da UF de destino
   //Depende da UF - tem que vir do cadastro do destinatário
   // PRODUTO X UF X UF
   With Produto.Imposto.ICMS do
   begin
       if fCP_PFCPST(qVENDA_ITEM.FieldByName('PROD_CODIGOCALCULOICMS').AsString,
                     qEMITENTE.FieldByName('FILI_UF').AsString,
                     qDESTINATARIO.FieldByName('ESTADO').AsString) then
       begin
           {N23b}
           //Percentual do FCP retido por Substituição Tributária
           //pFCPST := qCFOPPROD_CP.FieldByName('CP_PFCPST').AsFloat;
       end
       else
       begin
           {N23b}
           //Percentual do FCP retido por Substituição Tributária
           pFCPST := 0;
       end;
   end;
end;

procedure TfrmEmissaoDeNFe.Tratar_N23d_Produto_Imposto_ICMS_vFCPST;
begin
   {N23d}
   //Valor do Fundo de Combate a Pobreza
   //retido por Substituição Tributária
   //Aplicado sobre a BC do FB qdo CST <> 00
   With Produto.Imposto.ICMS do
   begin
     vFCPST := pFCPST / 100 * vBCFCPST;
   end;
end;

procedure TfrmEmissaoDeNFe.Tratar_N23_Produto_Imposto_ICMS_vICMSST;
begin
   {N23}
   //vICMSST
   //Valor do ICMS ST
   //Valor do ICMS ST retido
   With Produto.Imposto.ICMS do
   begin
      vICMSST := pICMSST / 100 * vBCST;
   end;
end;

procedure TfrmEmissaoDeNFe.Tratar_N24_Produto_Imposto_ICMS_UFST;
begin
   {N24}
   //UFST
   //UF para qual é devido o ICMS ST
   //Sigla da UF para qual é devido o ICMS ST da operação. (v2.0)
   Produto.Imposto.ICMS.UFST := qDESTINATARIO.FieldByName('ESTADO').AsString;
end;

procedure TfrmEmissaoDeNFe.Tratar_N25_Produto_Imposto_ICMS_pBCOp;
begin
   {N25}
   //pBCOp
   //Percentual da BC operação própria
   //Percentual para determinação do valor da Base de Cálculo da operação própria. (v2.0)
   Produto.Imposto.ICMS.pBCOp := 0;
end;

procedure TfrmEmissaoDeNFe.Tratar_N26_Produto_Imposto_ICMS_vBCSTRet;
begin
   {N26}
   //vBCSTRet
   //Valor da BC do ICMS ST retido
   //Valor da BC do ICMS ST cobrado anteriormente por ST (v2.0)
   Produto.Imposto.ICMS.vBCSTRet := Produto.Prod.vProd;
end;

procedure TfrmEmissaoDeNFe.Tratar_N27a_Produto_Imposto_ICMS_vBCFCPSTRet;
begin
   {N27a}
   //Valor da Base de Cálculo do FCP retido anteriormente por ST
   Produto.Imposto.ICMS.vBCFCPSTRet := Produto.Prod.vProd;
end;

procedure TfrmEmissaoDeNFe.Tratar_N27b_Produto_Imposto_ICMS_pFCPSTRet;
begin
   {N27b}
   //Percentual do Fundo de Combate à Pobreza (FCP) Retido por ST
   Produto.Imposto.ICMS.pFCPSTRet := 0;
end;

procedure TfrmEmissaoDeNFe.Tratar_N27d_Produto_Imposto_ICMS_vFCPSTRet;
begin
   {N27d}
   //Valor do Fundo de Combate à Pobreza (FCP) Retido por ST
   With Produto.Imposto.ICMS do
   begin
      vFCPSTRet:= pFCPSTRet /100 * vBCFCPSTRet;
   end;
end;

procedure TfrmEmissaoDeNFe.Tratar_N27_Produto_Imposto_ICMS_vICMSSTRet;
begin
   {N27}
   //vICMSSTRet
   //Valor do ICMS ST retido
   //Valor do ICMS ST cobrado anteriormente por ST (v2.0)
   With Produto.Imposto.ICMS do
   begin
     if vBCSTRet > 0 then
        vICMSSTRet := pST / 100 * vBCSTRet;
   end;
end;

procedure TfrmEmissaoDeNFe.Tratar_Grupo_NA_ICMS_para_a_UF_de_Destino;
begin
   //---------------------------------------------------------------------------
   // LAYOUT FEDERAL
   //---------------------------------------------------------------------------
   // TRATAMENTO DO GRUPO NA - ICMS para a UF de Destino
   //---------------------------------------------------------------------------

   {245a.01-NA01}
   //ICMSUFDest
   //Informação do ICMS Interestadual
   //Grupo a ser informado nas vendas interestaduais para
   //consumidor final, não contribuinte do ICMS.
   //Observação: Este grupo não deve ser utilizado nas operações com veículos
   //automotores novos efetuadas por meio de faturamento direto para o consumidor
   //(Convênio ICMS 51/00), as quais possuem grupo de campos próprio (ICMSPart)
   //                                              (Grupo criado na NT 2015/003)
   {245a.03}
   //NA03
   //vBCUFDest
   //Valor da BC do ICMS na UF de destino
   //Valor da Base de Cálculo do ICMS na UF de destino.

   {245a.04-NA04}
   //vBCFCPUFDest
   //Valor da BC FCP na UF de destino
   //Valor da Base de Cálculo do FCP na UF de destino.
   //                                                  (Incluído na NT 2016/002)

   {245a.05-NA05}
   //pFCPUFDest
   //Percentual do ICMS relativo ao Fundo de Combate à Pobreza (FCP)
   //na UF de destino
   //Percentual adicional inserido na alíquota interna da UF de destino,
   //relativo ao Fundo de Combate à Pobreza (FCP) naquela UF.
   //Nota: Percentual máximo de 2%, conforme a legislação.

   {245a.07-NA07}
   //pICMSUFDest
   //Alíquota interna da UF de destino
   //Alíquota adotada nas operações internas na UF de destino para o produto/mercadoria.
   //A alíquota do Fundo de Combate a Pobreza, se existente para o produto/mercadoria,
   //deve ser informada no campo próprio (pFCPUFDest) não devendo ser somada à essa
   //alíquota interna.

   {245a.09-NA09}
   //pICMSInter
   //Alíquota interestadual das UF envolvidas
   //Alíquota interestadual das UF envolvidas:
   //       - 4% alíquota interestadual para produtos importados;
   //       - 7% para os Estados de origem do Sul e Sudeste (exceto ES),
   //            destinado para os Estados do Norte, Nordeste, Centro- Oeste e
   //            Espírito Santo;
   //       - 12% para os demais casos.

   {245a.11-NA11}
   //pICMSInterPart
   //Percentual provisório de partilha do ICMS Interestadual
   //Percentual de ICMS Interestadual para a UF de destino:
   //         -  40% em 2016;
   //         -  60% em 2017;
   //         -  80% em 2018;
   //         - 100% a partir de 2019.

   //245a.13-NA13}
   //vFCPUFDest
   //Valor do ICMS relativo ao Fundo de Combate à Pobreza (FCP) da UF de destino
   //Valor do ICMS relativo ao Fundo de Combate à Pobreza (FCP) da UF de destino.
   //                                                (Atualizado na NT 2016/002)

   {245a.15-NA15}
   //vICMSUFDest
   //Valor do ICMS Interestadual para a UF de destino
   //Valor do ICMS Interestadual para a UF de destino, já considerando o valor
   //do ICMS relativo ao Fundo de Combate à Pobreza naquela UF.

   {245a.17-NA17}
   //vICMSUFRemet
   //Valor do ICMS Interestadual para a UF do remetente
   //Valor do ICMS Interestadual para a UF do remetente.
   //Nota: A partir de 2019, este valor será zero.
end;

procedure TfrmEmissaoDeNFe.Tratar_Grupo_N_ICMS_Normal_e_ST;
var vICMS_CST : Integer;
begin
   //---------------------------------------------------------------------------
   // LAYOUT FEDERAL
   //---------------------------------------------------------------------------
   // TRATAMENTO DO GRUPO N - Tributos incidentes no Produto ou Serviço
   //---------------------------------------------------------------------------

   {164-N01}
   //ICMS
   //Grupo do ICMS da Operação própria e ST
   //Informar apenas um dos grupos N02, N03, N04, N05, N06, N07, N08, N09, N10,
   //N10a, N10b ou N10c com base no conteúdo informado na TAG Tributação do ICMS.
   //(v2.0)

   vICMS_CST := StrToInt(qVENDA_ITEM.FieldByName('ICMS_CST').AsString);
   Case vICMS_CST of
     00 : Tratar_ICMS00;
          // 00 - Produto Tributado integralmente
     10 : begin
            // 10 - Tributada e com cobrança do ICMS por substituição tributária
            Tratar_ICMS10;
            Tratar_Partilha_do_ICMS;
         end;
     20 : Tratar_ICMS20;
          // 20 - Com redução de base de cálculo
     30 : Tratar_ICMS30;
          // 30 - Isenta ou não tributada e com cobrança do ICMS por substituição tributária
     40,
     41,
     50 : Tratar_ICMS40_41_50;
          // 40 - Isenta
          // 41 - Não tributada
          // 50 - Suspensão
     51 : Tratar_ICMS51;
          // 51 - Diferimento
          // A exigência do preenchimento das informações do ICMS diferido fica
          // a critério de cada UF
     60 : Tratar_ICMS60;
          // 60 - ICMS cobrado anteriormente por substituição tributária
     70 : Tratar_ICMS70;
          // 70 - Com redução de base de cálculo e cobrança do ICMS por substituição tributária
     90 : begin
          // 90 - Outros
             Tratar_ICMS90;
             Tratar_Partilha_do_ICMS;
          end;
   End;

   Somar_Totais_Parciais;

end;

procedure TfrmEmissaoDeNFe.Somar_Totais_Parciais;
begin
   // Somar os valores parciais do produto no total da NFe

   // Trata Produtos
   if qVENDA_ITEM.FieldByName('Produto_ou_Servico').AsString = 'P' then
   begin
       vNota_Total_ICMSTot_vBC       := vNota_Total_ICMSTot_vBC     + Produto.Imposto.ICMS.vBC;
       vNota_Total_ICMSTot_vICMS     := vNota_Total_ICMSTot_vICMS   + Produto.Imposto.ICMS.vICMS;
       vNota_Total_ICMSTot_vBCST     := vNota_Total_ICMSTot_vBCST   + Produto.Imposto.ICMS.vBCST;
       vNota_Total_ICMSTot_vST       := vNota_Total_ICMSTot_vST     + Produto.Imposto.ICMS.vICMSST;
       vNota_Total_ICMSTot_vProd     := vNota_Total_ICMSTot_vProd   + Produto.Prod.vProd;
       vNota_Total_ICMSTot_vFrete    := vNota_Total_ICMSTot_vFrete  + Produto.Prod.vFrete;
       vNota_Total_ICMSTot_vSeg      := vNota_Total_ICMSTot_vSeg    + Produto.Prod.vSeg;
       vNota_Total_ICMSTot_vDesc     := vNota_Total_ICMSTot_vDesc   + Produto.Prod.vDesc;
       vNota_Total_ICMSTot_vII       := vNota_Total_ICMSTot_vII     + Produto.Imposto.II.vII;
       vNota_Total_ICMSTot_vIPI      := vNota_Total_ICMSTot_vIPI    + Produto.Imposto.IPI.vIPI;
       vNota_Total_ICMSTot_vOutro    := vNota_Total_ICMSTot_vOutro  + Produto.Prod.vOutro;
       vNota_Total_ICMSTot_vNF       := vNota_Total_ICMSTot_vProd
                                      + vNota_Total_ICMSTot_vFrete
                                      + vNota_Total_ICMSTot_vSeg
                                      + vNota_Total_ICMSTot_vOutro
                                      - vNota_Total_ICMSTot_vDesc
                                      + vNota_Total_ICMSTot_vICMS
                                      + vNota_Total_ICMSTot_vII
                                      + vNota_Total_ICMSTot_vIPI
                                      + vNota_Total_ICMSTot_vPIS
                                      + vNota_Total_ICMSTot_vCOFINS;
   end;

   // Trata Serviços
   if qVENDA_ITEM.FieldByName('Produto_ou_Servico').AsString = 'S' then
   begin
      vNota_Total_ISSQNtot_vServ    := vNota_Total_ISSQNtot_vServ   + Produto.Prod.vProd;
      vNota_Total_ISSQNtot_vBC      := vNota_Total_ISSQNtot_vBC     + Produto.Imposto.ISSQN.vBC;
      vNota_Total_ISSQNtot_vISS     := vNota_Total_ISSQNtot_vISS    + Produto.Imposto.ISSQN.vISSQN;
      vNota_Total_ISSQNtot_vPIS     := vNota_Total_ISSQNtot_vPIS    + Produto.Imposto.PIS.vPIS;
      vNota_Total_ISSQNtot_vCOFINS  := vNota_Total_ISSQNtot_vCOFINS + Produto.Imposto.COFINS.vCOFINS;
   end;

   //Comum a Produtos e Serviços
   vNota_Total_ICMSTot_vPIS      := vNota_Total_ICMSTot_vPIS        + Produto.Imposto.PIS.vPIS;
   vNota_Total_ICMSTot_vCOFINS   := vNota_Total_ICMSTot_vCOFINS     + Produto.Imposto.COFINS.vCOFINS;

   // Tratar impostos retidos em função de parâmetros do cadastro da empresa
   vNota_Total_retTrib_vRetPIS   := vNota_Total_retTrib_vRetPIS     + 0;
   vNota_Total_retTrib_vRetCOFINS:= vNota_Total_retTrib_vRetCOFINS  + 0;
   vNota_Total_retTrib_vRetCSLL  := vNota_Total_retTrib_vRetCSLL    + 0;
   vNota_Total_retTrib_vBCIRRF   := vNota_Total_retTrib_vBCIRRF     + 0;
   vNota_Total_retTrib_vIRRF     := vNota_Total_retTrib_vIRRF       + 0;
   vNota_Total_retTrib_vBCRetPrev:= vNota_Total_retTrib_vBCRetPrev  + 0;
   vNota_Total_retTrib_vRetPrev  := vNota_Total_retTrib_vRetPrev    + 0;
end;

procedure TfrmEmissaoDeNFe.Tratar_Grupo_O_Imposto_sobre_Produtos_Industrializados_IPI;
begin
   //Somente se o tipo de movimento está configurado para tratar o grupo O
   //---------------------------------------------------------------------------
   if qTPMOV.FieldByName('TPMOV_NFE_TRATAR_GRUPO_O_IPI').AsInteger = 0 then
      exit;

   //---------------------------------------------------------------------------
   // LAYOUT FEDERAL
   //---------------------------------------------------------------------------
   // TRATAMENTO DO GRUPO O -  Imposto sobre Produtos Industrializados (IPI)
   //---------------------------------------------------------------------------

   {
    ****************************************************************************
    20/04/20: Combinado com Rodrigo que não trataremos IPI porque seus clientes
              atuais não usam. (Wander)
   }

   {246-O01}
   //IPI
   //Grupo do IPI
   //Informar apenas quando o item for sujeito ao IPI

   {247-O02} //XXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXX
   //clEnq
   //Classe de enquadramento do IPI para Cigarros e Bebidas
   //Preenchimento conforme Atos Normativos editados pela Receita Federal
   //(Observação 2)
   //                                    (Excluído no leiaute 4.0 - NT 2016/002)

   {248-O03}
   //CNPJProd
   //CNPJ do produtor da mercadoria, quando diferente do emitente.
   //Somente para os casos de exportação direta ou indireta.
   //Informar os zeros não significativos

   {249-O04}
   //cSelo
   //Código do selo de controle IPI
   //Preenchimento conforme Atos Normativos editados pela Receita Federal
   //(Observação 3)
   //Preenchimento conforme Anexo II-A da Instrução Normativa RFB Nº 770/2007
   //======================================================================================
   //TIPO DE SELO                                |CÓDIGO |COR DO SELO
   //--------------------------------------------|-------|---------------------------------
   //Produto Nacional                            |9710-01|Verde combinado com marrom
   //Produto Nacional para Exportação - Tipo "1" |9710-10|Verde Escuro combinado com marrom
   //Produto Nacional para Exportação - Tipo "2" |9710-11|Verde Escuro combinado com marrom
   //Produto Nacional para Exportação - Tipo "3" |9710-12|Verde Escuro combinado com marrom
   //Produto Estrangeiro                         |8610-09|Vermelho combinado com azul
   //======================================================================================
   //                                                (Atualizado na NT 2016/002)
   {250-O05}
   //qSelo
   //Quantidade de selo de controle

   {251-O06}
   //cEnq
   //Código de Enquadramento Legal do IPI
   //Preenchimento conforme “Anexo XIII - Código de Enquadramento Legal do IPI”
   //do MOC – Visão Geral

   {252-O07}
   //IPITrib
   //Grupo do CST 00, 49, 50 e 99
   //Informar apenas um dos grupos O07 ou O08
   //com base valor atribuído ao campo O09 – CST do IPI

   {253-O09}
   //CST
   // Código da situação tributária do IPI
   //     00-Entrada com recuperação de crédito
   //     49-Outras entradas
   //     50-Saída tributada
   //     99-Outras saídas

   {254-O10}
   //vBC
   //Valor da BC do IPI
   //Informar os campos O10 e O13
   //caso o cálculo do IPI seja por alíquota
   //ou
   //os campos O11 e O12 caso o cálculo do IPI seja valor por unidade.

   {257-O13}
   //pIPI
   //Alíquota do IPI
   //PROD_NFe_O13_pIPI
   {255-O11}
   //qUnid
   //Quantidade total na unidade padrão para tributação
   //(somente para os produtos tributados por unidade)

   {256-O12}
   //vUnid
   //Valor por Unidade Tributável

   {259-O14}
   //vIPI
   //Valor do IPI

   {260-O08}
   //IPINT
   //Grupo do CST 01, 02, 03, 04, 51, 52, 53, 54 e 55
   //-------------------------------------------------
   //          01=Entrada tributada com alíquota zero
   //          02=Entrada isenta
   //          03=Entrada não-tributada
   //          04=Entrada imune
   //          05=Entrada com suspensão
   //          51=Saída tributada com alíquota zero
   //          52=Saída isenta
   //          53=Saída não-tributada Observação
   //          54=Saída imune
   //          55=Saída com suspensão
   //-------------------------------------------------
   {261-O09}
   //CST
   //Código da situação tributária do IPI
   //    01-Entrada tributada com alíquota zero
   //    02-Entrada isenta
   //    03-Entrada não-tributada
   //    04-Entrada imune
   //    05-Entrada com suspensão
   //    51-Saída tributada com alíquota zero
   //    52-Saída isenta
   //    53-Saída não-tributada
   //    54-Saída imune
   //    55-Saída com suspensão
end;

procedure TfrmEmissaoDeNFe.Tratar_Grupo_P_Imposto_de_Importacao;
begin
   //Somente se o tipo de movimento está configurado para tratar o grupo P
   //---------------------------------------------------------------------------
   if qTPMOV.FieldByName('TPMOV_NFE_TRATAR_GRUPO_P_II').AsInteger = 0 then
      exit;

   //---------------------------------------------------------------------------
   // LAYOUT FEDERAL
   //---------------------------------------------------------------------------
   // TRATAMENTO DO GRUPO P -  Imposto de Importação (II)
   //---------------------------------------------------------------------------

   {
    ****************************************************************************
    20/04/20: Combinado com Rodrigo que não trataremos II porque seus clientes
              atuais não usam. (Wander)
              Nenhum cliente importa mas alguns exportam produtos
   }

   {262-P01}
   //II
   //Grupo do Imposto de Importação
   //Informar apenas quando o item for sujeito ao II

   {263-P02}
   //vBC
   //Valor da BC do Imposto de Importação

   {264-P03}
   //vDespAdu
   //Valor das despesas aduaneiras

   {265-P04}
   //vII
   //Valor do Imposto de Importação

   {266-P05}
   //vIOF
   //Valor do Imposto sobre Operações Financeiras

end;

procedure TfrmEmissaoDeNFe.Tratar_Grupo_Q_PIS;
var vRPC_PIS: String;
    nRPC_PIS: Integer;
begin
   //Somente se o tipo de movimento está configurado para tratar o grupo O
   // Programa de Integração Social
   //---------------------------------------------------------------------------
   if qTPMOV.FieldByName('TPMOV_NFE_TRATAR_GRUPO_Q_PIS').AsInteger = 0 then
      exit;

   //---------------------------------------------------------------------------
   // LAYOUT FEDERAL
   //---------------------------------------------------------------------------
   // TRATAMENTO DO GRUPO Q - PIS
   //---------------------------------------------------------------------------
   {267-Q01}
   //PIS
   //Grupo do PIS
   //Informar apenas um dos grupos Q02, Q03, Q04 ou Q05
   //com base valor atribuído ao campo Q06 – CST do PIS

   //Apenas produtos com PIS_CST definido em seu cadastro
   //edRPC_PIS.Text    := qRELACAO_CFOP_x_PRODUTO_xCST_PISCOFINS_RPC.FieldByName('RPC_PIS'   ).AsString;
   //edRPC_COFINS.Text := qRELACAO_CFOP_x_PRODUTO_xCST_PISCOFINS_RPC.FieldByName('RPC_COFINS').AsString;

   if qRELACAO_CFOP_x_PRODUTO_xCST_PISCOFINS_RPC.FieldByName('RPC_PIS').AsString = '' then
   //if qVENDA_ITEM.FieldByName('PIS_CST').AsString = '' then
      exit;

   vRPC_PIS := qRELACAO_CFOP_x_PRODUTO_xCST_PISCOFINS_RPC.FieldByName('RPC_PIS').AsString;
   nRPC_PIS := StrToInt(vRPC_PIS);

   with Produto.Imposto.PIS do
   begin
   {269-Q06}
   //CST
   //Código de Situação Tributária do PIS
   //    01–Operação Tributável
   //       base de cálculo = valor da operação alíquota normal
   //       (cumulativo/não cumulativo)
   //    02-Operação Tributável
   //      (base de cálculo = valor da operação
   //       (alíquota diferenciada)
   Case nRPC_PIS of
     01 : CST := pis01;
     02 : CST := pis02;
     03 : CST := pis03;
     04 : CST := pis04;
     05 : CST := pis05;
     06 : CST := pis06;
     07 : CST := pis07;
     08 : CST := pis08;
     09 : CST := pis09;
     49 : CST := pis49;
     50 : CST := pis50;
     51 : CST := pis51;
     52 : CST := pis52;
     53 : CST := pis53;
     54 : CST := pis54;
     55 : CST := pis55;
     56 : CST := pis56;
     60 : CST := pis60;
     61 : CST := pis61;
     62 : CST := pis62;
     63 : CST := pis63;
     64 : CST := pis64;
     65 : CST := pis65;
     66 : CST := pis66;
     67 : CST := pis67;
     70 : CST := pis70;
     71 : CST := pis71;
     72 : CST := pis72;
     73 : CST := pis73;
     74 : CST := pis74;
     75 : CST := pis75;
     98 : CST := pis98;
     99 : CST := pis99;
   End;

   if (vRPC_PIS = '01') or
      (vRPC_PIS = '02') then
   begin
      {268-Q02}
      //PISAliq
      //Grupo de PIS tributado pela alíquota ( CST = 01 e 02 )

      {269-Q06}

      //CST
      //Código de Situação Tributária do PIS
      //    01–Operação Tributável
      //       base de cálculo = valor da operação alíquota normal
      //       (cumulativo/não cumulativo)
      //    02-Operação Tributável
      //      (base de cálculo = valor da operação
      //       (alíquota diferenciada)
      //Definido anteriormente ***

      {270-Q07}
      //vBC
      //Valor da Base de Cálculo do PIS
      vBC := Produto.Prod.vProd;

      {271-Q08}
      //pPIS
      //Alíquota do PIS (em percentual)
      if qEMITENTE.FieldByName('CODIGO_REGIME_TRIBUTARIO').AsInteger = 2 then
         // Simples Nacional
         pPIS := 0.0
      else
      begin
         // Lucro Real ou Presumido
         //------------------------
         //Lucro Real ou Presumido Cumulativo: 0,65%
         //Lucro Real Não Cumulativo: 1,65%
         //Fonte: https://www.jornalcontabil.com.br/aprenda-a-fazer-o-calculo-de-pis-e-cofins-na-nfe-e-nfce/
         //
         //*** O correto é que este percentual esteja no cadastro da empresa ***
         //
         if qEMITENTE.FieldByName('TRIBUTACAO_PIS_COFINS').AsString = 'CUMULATIVO' then
            pPIS := qEMITENTE.FieldByName('pPIS_CUMULATIVO').AsFloat // 0.65
         else
            pPIS := qEMITENTE.FieldByName('pPIS_NAOCUMULATIVO').AsFloat; // 1.65;
      end;

      {272-Q09}
      //vPIS
      //Valor do PIS
      vPIS := vBC * pPIS / 100;
   end;

   if (vRPC_PIS = '03') then
   begin
      {273-Q03}
      //PISQtde
      //Grupo de PIS tributado por Qtde (CST = 03)

      {274-Q06}
      //CST
      //Código de Situação Tributária do PIS
      //   03 - Operação Tributável
      //        base de cálculo = quantidade vendida x
      //                          alíquota por unidade de produto
      //Definido anteriormente ***

      {275-Q10}
      //qBCProd
      //Quantidade Vendida
      qBCProd := Produto.Prod.qCom;

      {276-Q11}
      //vAliqProd
      //Alíquota do PIS (em reais)
      if qEMITENTE.FieldByName('CODIGO_REGIME_TRIBUTARIO').AsInteger = 2 then
         // Simples Nacional
         vAliqProd := 0.0
      else
      begin
         // Lucro Real ou Presumido
         //------------------------
         //Lucro Real ou Presumido Cumulativo: 0,65%
         //Lucro Real Não Cumulativo: 1,65%
         //Fonte: https://www.jornalcontabil.com.br/aprenda-a-fazer-o-calculo-de-pis-e-cofins-na-nfe-e-nfce/
         //
         //*** O correto é que este percentual esteja no cadastro da empresa ***
         //
         if qVENDA_ITEM.FieldByName('TRIBUTACAO_PIS_COFINS').AsString = 'CUMULATIVO' then
            vAliqProd := 0.65 / 100 * Produto.Prod.vUnCom
         else
            vAliqProd := 1.65 /100 * Produto.Prod.vUnCom;
      end;

      {277-Q09}
      //vPIS
      //Valor do PIS
      vPIS := vAliqProd * qBCProd;
   end;

     if (vRPC_PIS = '04') or
        (vRPC_PIS = '06') or
        (vRPC_PIS = '07') or
        (vRPC_PIS = '08') or
        (vRPC_PIS = '09') then
     begin
        {278-Q04}
        //PISNT
        //Grupo de PIS não tributado
        //CST = 04, 06, 07, 08 ou 09

        {279-Q02}
        //CST
        //Código de Situação Tributária do PIS
        //    04-Operação Tributável
        //       tributação monofásica (alíquota zero)
        //    06-Operação Tributável (alíquota zero)
        //    07-Operação Isenta da Contribuição
        //    08-Operação Sem Incidência da Contribuição
        //    09-Operação com Suspensão da Contribuição
        //Definido anteriormente ***
     end;

     if vRPC_PIS = '99' then
     begin
        {280-Q05}
        //PISOutr
        //Grupo de PIS Outras Operações CST = 99

        {281-Q06}
        //CST
        //Código de Situação Tributária do PIS
        //99 - Outras Operações;
        //Definido anteriormente ***

        {282-Q07}
        //vBC
        //Valor da Base de Cálculo do PIS
        //Informar campos para cálculo do PIS em percentual (P07 e P08)
        //ou campos para PIS em valor (P10 e P11)

        {283-Q08}
        //pPIS
        //Alíquota do PIS (em percentual)

        {284-Q10}
        //qBCProd
        //Quantidade Vendida

        {285-Q11}
        //vAliqProd
        //Alíquota do PIS (em reais)

        {286-Q09}
        //vPIS
        //Valor do PIS
     end;
   end;
end;

procedure TfrmEmissaoDeNFe.Tratar_Grupo_R_PIS_ST;
begin
   //Somente se o tipo de movimento está configurado para tratar o grupo R
   //Programa de Integração Social - ST
   //---------------------------------------------------------------------------
   if qTPMOV.FieldByName('TPMOV_NFE_TRATAR_GRUPO_R_PIS_ST').AsInteger = 0 then
      exit;

   //---------------------------------------------------------------------------
   // LAYOUT FEDERAL
   //---------------------------------------------------------------------------
   // TRATAMENTO DO GRUPO R - PIS_ST
   //---------------------------------------------------------------------------
   {287-R01}
   //PISST
   //Grupo de PIS Substituição Tributária

   {288-R02}
   //vBC
   //Valor da Base de Cálculo do PIS
   //Informar campos para cálculo do PIS em percentual (R02 e R03)
   //ou campos para PIS em valor (R04 e R05).

   {289-R03}
   //pPIS
   //Alíquota do PIS (em percentual)

   {290-R04}
   //qBCProd
   //Quantidade Vendida

   {291-R05}
   //vAliqProd
   //Alíquota do PIS (em reais)

   {292-R06}
   //vPIS
   //Valor do PIS

end;

procedure TfrmEmissaoDeNFe.Tratar_Grupo_S_COFINS;
begin
   //Somente se o tipo de movimento está configurado para tratar o grupo S
   //contribuicao para o financiamento da seguridade social
   //---------------------------------------------------------------------------
   if qTPMOV.FieldByName('TPMOV_NFE_TRATAR_GRUPO_S_COFINS').AsInteger = 0 then
      exit;

   //---------------------------------------------------------------------------
   // LAYOUT FEDERAL
   //---------------------------------------------------------------------------
   // TRATAMENTO DO GRUPO S - COFINS
   //---------------------------------------------------------------------------

   {============================================================================
   O COFINS é um tributo do tipo federal que deve ser pago por contribuintes
   jurídicos (ou seja, pessoas jurídicas).
   A única exceção se dá quando em relação às micro e pequenas empresas,
   tributadas pelo Simples Nacional.
   Sendo assim, os microempreendedores brasileiros estão isentos do pagamento do
   COFINS.
   ============================================================================}

   //Não tratar COFINS se o emissor for optante do Simples Nacional
   if qEMITENTE.FieldByName('CODIGO_REGIME_TRIBUTARIO').AsInteger = 1 then
      exit;

   {293-S01}
   //COFINS
   //Grupo do COFINS
   //Informar apenas um dos grupos S02, S03, S04 ou S04 com base no valor
   //atribuído ao campo S06 – CST do COFINS

   // Ignorar produtos sem cst do cofins em seu cadastro
   if qRELACAO_CFOP_x_PRODUTO_xCST_PISCOFINS_RPC.FieldByName('RPC_COFINS').AsString = '' then
      exit;

{
  if qRELACAO_CFOP_x_PRODUTO_xCST_PISCOFINS_RPC.FieldByName('RPC_COFINS').AsString = '01' then CST := cof01;
  if qRELACAO_CFOP_x_PRODUTO_xCST_PISCOFINS_RPC.FieldByName('RPC_COFINS').AsString = '02' then CST := cof02;
  if qRELACAO_CFOP_x_PRODUTO_xCST_PISCOFINS_RPC.FieldByName('RPC_COFINS').AsString = '03' then CST := cof03;
  if qRELACAO_CFOP_x_PRODUTO_xCST_PISCOFINS_RPC.FieldByName('RPC_COFINS').AsString = '04' then CST := cof04;
  if qRELACAO_CFOP_x_PRODUTO_xCST_PISCOFINS_RPC.FieldByName('RPC_COFINS').AsString = '05' then CST := cof05;
  if qRELACAO_CFOP_x_PRODUTO_xCST_PISCOFINS_RPC.FieldByName('RPC_COFINS').AsString = '06' then CST := cof06;
  if qRELACAO_CFOP_x_PRODUTO_xCST_PISCOFINS_RPC.FieldByName('RPC_COFINS').AsString = '07' then CST := cof07;
  if qRELACAO_CFOP_x_PRODUTO_xCST_PISCOFINS_RPC.FieldByName('RPC_COFINS').AsString = '08' then CST := cof08;
  if qRELACAO_CFOP_x_PRODUTO_xCST_PISCOFINS_RPC.FieldByName('RPC_COFINS').AsString = '09' then CST := cof09;
  if qRELACAO_CFOP_x_PRODUTO_xCST_PISCOFINS_RPC.FieldByName('RPC_COFINS').AsString = '49' then CST := cof49;
  if qRELACAO_CFOP_x_PRODUTO_xCST_PISCOFINS_RPC.FieldByName('RPC_COFINS').AsString = '50' then CST := cof50;
  if qRELACAO_CFOP_x_PRODUTO_xCST_PISCOFINS_RPC.FieldByName('RPC_COFINS').AsString = '51' then CST := cof51;
  if qRELACAO_CFOP_x_PRODUTO_xCST_PISCOFINS_RPC.FieldByName('RPC_COFINS').AsString = '52' then CST := cof52;
  if qRELACAO_CFOP_x_PRODUTO_xCST_PISCOFINS_RPC.FieldByName('RPC_COFINS').AsString = '53' then CST := cof53;
  if qRELACAO_CFOP_x_PRODUTO_xCST_PISCOFINS_RPC.FieldByName('RPC_COFINS').AsString = '54' then CST := cof54;
  if qRELACAO_CFOP_x_PRODUTO_xCST_PISCOFINS_RPC.FieldByName('RPC_COFINS').AsString = '55' then CST := cof55;
  if qRELACAO_CFOP_x_PRODUTO_xCST_PISCOFINS_RPC.FieldByName('RPC_COFINS').AsString = '56' then CST := cof56;
  if qRELACAO_CFOP_x_PRODUTO_xCST_PISCOFINS_RPC.FieldByName('RPC_COFINS').AsString = '60' then CST := cof60;
  if qRELACAO_CFOP_x_PRODUTO_xCST_PISCOFINS_RPC.FieldByName('RPC_COFINS').AsString = '61' then CST := cof61;
  if qRELACAO_CFOP_x_PRODUTO_xCST_PISCOFINS_RPC.FieldByName('RPC_COFINS').AsString = '62' then CST := cof62;
  if qRELACAO_CFOP_x_PRODUTO_xCST_PISCOFINS_RPC.FieldByName('RPC_COFINS').AsString = '63' then CST := cof63;
  if qRELACAO_CFOP_x_PRODUTO_xCST_PISCOFINS_RPC.FieldByName('RPC_COFINS').AsString = '64' then CST := cof64;
  if qRELACAO_CFOP_x_PRODUTO_xCST_PISCOFINS_RPC.FieldByName('RPC_COFINS').AsString = '65' then CST := cof65;
  if qRELACAO_CFOP_x_PRODUTO_xCST_PISCOFINS_RPC.FieldByName('RPC_COFINS').AsString = '66' then CST := cof66;
  if qRELACAO_CFOP_x_PRODUTO_xCST_PISCOFINS_RPC.FieldByName('RPC_COFINS').AsString = '67' then CST := cof67;
  if qRELACAO_CFOP_x_PRODUTO_xCST_PISCOFINS_RPC.FieldByName('RPC_COFINS').AsString = '70' then CST := cof70;
  if qRELACAO_CFOP_x_PRODUTO_xCST_PISCOFINS_RPC.FieldByName('RPC_COFINS').AsString = '71' then CST := cof71;
  if qRELACAO_CFOP_x_PRODUTO_xCST_PISCOFINS_RPC.FieldByName('RPC_COFINS').AsString = '72' then CST := cof72;
  if qRELACAO_CFOP_x_PRODUTO_xCST_PISCOFINS_RPC.FieldByName('RPC_COFINS').AsString = '73' then CST := cof73;
  if qRELACAO_CFOP_x_PRODUTO_xCST_PISCOFINS_RPC.FieldByName('RPC_COFINS').AsString = '74' then CST := cof74;
  if qRELACAO_CFOP_x_PRODUTO_xCST_PISCOFINS_RPC.FieldByName('RPC_COFINS').AsString = '75' then CST := cof75;
  if qRELACAO_CFOP_x_PRODUTO_xCST_PISCOFINS_RPC.FieldByName('RPC_COFINS').AsString = '98' then CST := cof98;
  if qRELACAO_CFOP_x_PRODUTO_xCST_PISCOFINS_RPC.FieldByName('RPC_COFINS').AsString = '99' then CST := cof99;
}
   with produto.Imposto.COFINS do
   begin
       if (qRELACAO_CFOP_x_PRODUTO_xCST_PISCOFINS_RPC.FieldByName('RPC_COFINS').AsString = '01') or
          (qRELACAO_CFOP_x_PRODUTO_xCST_PISCOFINS_RPC.FieldByName('RPC_COFINS').AsString = '02') then
       begin
           {294-S02}
           //COFINSAliq
           //Grupo de COFINS tributado pela alíquota
           //  CST = 01 ou 02

           {295-S06}
           //CST
           //Código de Situação Tributária da COFINS
           //    01 – Operação Tributável
           //         base de cálculo = valor da operação alíquota normal
           //         (cumulativo/não cumulativo)
           //    02 - Operação Tributável
           //         base de cálculo = valor da operação
           //         (alíquota diferenciada)
           if qRELACAO_CFOP_x_PRODUTO_xCST_PISCOFINS_RPC.FieldByName('RPC_COFINS').AsString = '01' then CST := cof01;
           if qRELACAO_CFOP_x_PRODUTO_xCST_PISCOFINS_RPC.FieldByName('RPC_COFINS').AsString = '02' then CST := cof02;

           {296-S07}
           //vBC
           //Valor da Base de Cálculo da COFINS
           vBC := Produto.Prod.vProd;

           {297-S08}
           //pCOFINS
           //Alíquota da COFINS (em percentual)
           //*** Não encontrei o percentual de COFINS no cad da empresa
           // Foi criado no banco. Sò havia na tela do cad empresa
           pCOFINS := qEMITENTE.fieldbyname('pCOFINS').AsFloat;

           {298-S11}
           //vCOFINS
           //Valor da COFINS
           vCOFINS := pCOFINS / 100 * vBC;
       end;

       if qRELACAO_CFOP_x_PRODUTO_xCST_PISCOFINS_RPC.FieldByName('RPC_COFINS').AsString = '03' then
       begin
         {299-S03}
         //COFINSQtde
         //Grupo de COFINS tributado por Qtde
         // CST = 03

         {300-S06}
         //CST
         //Código de Situação Tributária da COFINS
         //    03 - Operação Tributável
         //         base de cálculo = quantidade vendida x alíquota por unidade
         //                                                          de produto
         CST := cof03;

         {301-S09}
         //qBCProd
         //Quantidade Vendida
         qBCProd := Produto.Prod.qCom;

         {302-S10}
         //vAliqProd
         //Alíquota da COFINS (em reais)
         vAliqProd := pCOFINS / 100 * Produto.Prod.vUnCom;

         {303-S11}
         //vCOFINS
         //Valor do COFINS
         vCOFINS := (pCOFINS / 100) * qBCProd;
       end;

       if (qRELACAO_CFOP_x_PRODUTO_xCST_PISCOFINS_RPC.FieldByName('RPC_COFINS').AsString = '04') or
          (qRELACAO_CFOP_x_PRODUTO_xCST_PISCOFINS_RPC.FieldByName('RPC_COFINS').AsString = '06') or
          (qRELACAO_CFOP_x_PRODUTO_xCST_PISCOFINS_RPC.FieldByName('RPC_COFINS').AsString = '07') or
          (qRELACAO_CFOP_x_PRODUTO_xCST_PISCOFINS_RPC.FieldByName('RPC_COFINS').AsString = '08') or
          (qRELACAO_CFOP_x_PRODUTO_xCST_PISCOFINS_RPC.FieldByName('RPC_COFINS').AsString = '09') then
       begin
          {304-S04}
          //COFINSNT
          //Grupo de COFINS não tributado
          //CST = 04, 06, 07, 08 ou 09

          {305-S06}
          //CST
          //Código de Situação Tributária da COFINS
          //   04 - Operação Tributável
          //        tributação monofásica (alíquota zero)
          //   06 - Operação Tributável (alíquota zero)
          //   07 - Operação Isenta da Contribuição
          //   08 - Operação Sem Incidência da Contribuição
          //   09 - Operação com Suspensão da Contribuição
          if qRELACAO_CFOP_x_PRODUTO_xCST_PISCOFINS_RPC.FieldByName('RPC_COFINS').AsString = '04' then CST := cof04;
          if qRELACAO_CFOP_x_PRODUTO_xCST_PISCOFINS_RPC.FieldByName('RPC_COFINS').AsString = '06' then CST := cof06;
          if qRELACAO_CFOP_x_PRODUTO_xCST_PISCOFINS_RPC.FieldByName('RPC_COFINS').AsString = '07' then CST := cof07;
          if qRELACAO_CFOP_x_PRODUTO_xCST_PISCOFINS_RPC.FieldByName('RPC_COFINS').AsString = '08' then CST := cof08;
          if qRELACAO_CFOP_x_PRODUTO_xCST_PISCOFINS_RPC.FieldByName('RPC_COFINS').AsString = '09' then CST := cof09;
       end;

       if qRELACAO_CFOP_x_PRODUTO_xCST_PISCOFINS_RPC.FieldByName('RPC_COFINS').AsString = '99' then
       begin
          {306-S05}
          //COFINSOutr
          //Grupo de COFINS Outras Operações
          //CST = 99

          {307-S06}
          //CST
          //Código de Situação Tributária da COFINS
          //   99 - Outras Operações;
          CST := cof99;

          {308-S07}
          //vBC
          //Valor da Base de Cálculo da COFINS
          //Informar campos para cálculo da COFINS em percentual (S07 e S08)
          //ou campos para COFINS em valor (S09 e S10).
          vBC := Produto.Prod.vProd;

          {309-S08}
          //pCOFINS
          //Alíquota da COFINS (em percentual)
          pCOFINS := qEMITENTE.fieldbyname('pCOFINS').AsFloat;

          {310-S09}
          //qBCProd
          //Quantidade Vendida
          qBCProd := Produto.Prod.qCom;

          {311-S10}
          //vAliqProd
          //Alíquota da COFINS (em reais)
          vAliqProd := pCOFINS / 100 * Produto.Prod.vUnCom;

          {312-S11}
          //vCOFINS
          //Valor da COFINS
          vCOFINS := pCOFINS / 100 * qBCProd * Produto.Prod.vUnCom;
       end;
   end;
end;

procedure TfrmEmissaoDeNFe.Tratar_Grupo_T_COFINS_ST;
begin
   //Somente se o tipo de movimento está configurado para tratar o grupo T
   //---------------------------------------------------------------------------
   if qTPMOV.FieldByName('TPMOV_NFE_TRATAR_GRUPO_T_COFINS_ST').AsInteger = 0 then
      exit;

   //---------------------------------------------------------------------------
   // LAYOUT FEDERAL
   //---------------------------------------------------------------------------
   // TRATAMENTO DO GRUPO T - COFINS ST
   //---------------------------------------------------------------------------

   {313-T01}
   //COFINSST
   //Grupo de COFINS Substituição Tributária

   //-----------------------------------------------------------------------------------------------------------------------
   //Somente empresas do Regime Normal (CRT=3) utilizarão CST´s de PIS e COFINS diferente de 99;
   //Fonte: https://sites.google.com/a/mestresistemas.com.br/portal/home/cadastros/gerais/tabelas-de-apoio/cst---pis-cofins
   //-----------------------------------------------------------------------------------------------------------------------
   if Nota.Emit.CRT <> crtRegimeNormal then
      exit;

   // Operação tributável por substituição tributária (CST 05)
   if (qRELACAO_CFOP_x_PRODUTO_xCST_PISCOFINS_RPC.FieldByName('RPC_COFINS').AsString <> '05') then
      exit;

   {
   PIS E COFINS - SUBSTITUIÇÃO TRIBUTÁRIA
   --------------------------------------
   Cigarros: Os fabricantes e os importadores de cigarros estão sujeitos ao
             recolhimento dessas contribuições, na condição de contribuintes e
             substitutos dos comerciantes varejistas e atacadistas desse produto.

             As bases de cálculos do PIS e da Cofins são os valores obtidos pela
             multiplicação do preço fixado para a venda do cigarro no varejo,
             multiplicado por 3,42 e 2,9169, respectivamente, conforme determinam
             o artigo 29, da Lei 10.865/2004 e o artigo 62 da Lei 11.196/2005.

             Nota: de 01.03.2006 a 30.06.2009 vigoraram os coeficientes de 1,98 (PIS) e
             1,69 (Cofins).

   Veículos: Os fabricantes e os importadores de veículos autopropulsados
             descritos nos códigos 8432.30 e 87.11 da TIPI estão obrigados a
             cobrar e a recolher a Contribuição para o PIS/Pasep e a Cofins, na
             condição de contribuintes substitutos, em relação às vendas feitas
             a comerciantes varejistas dos mencionados produtos.

             A base de cálculo será calculada sobre o preço de venda da pessoa
             jurídica fabricante.

   Álcool Carburante: no caso de venda de álcool para fins carburantes efetuadas
                      por distribuidor estabelecido fora da Zona Franca de
                      Manaus -ZFM destinado ao consumo ou à industrialização na
                      ZFM aplica-se a substituição tributária na forma do artigo
                      64 da Lei 11.196/2005.

                      A substituição tributária nas vendas de álcool carburante
                      também se aplicam às vendas destinadas ao consumo ou à
                      industrialização nas Áreas de Livre Comércio.

   Fonte: http://www.portaltributario.com.br/tributario/pis-cofins-substituicao-tributaria.htm
   }

   with produto.Imposto.COFINSST do
   begin
       {314-T02}
       //vBC
       //Valor da Base de Cálculo da COFINS
       //Informar campos para cálculo do COFINS Substituição Tributária
       //em percentual (T02 e T03) ou
       //campos para COFINS em valor (T04 e T05).
       //A critério da SEFAZ da UF do emissor...
       vBC := Produto.Prod.vProd;

       {315-T03}
       //pCOFINS
       //Alíquota da COFINS (em percentual)
       pCOFINS := qEMITENTE.fieldbyname('pCOFINS').AsFloat;

       {316-T04}
       //qBCProd
       //Quantidade Vendida
       qBCProd := Produto.Prod.qTrib;

       {317-T05}
       //vAliqProd
       //Alíquota da COFINS (em reais)
       vAliqProd := pCOFINS / 100 * Produto.Prod.vUnCom;

       {318-T06}
       //vCOFINS
       //Valor da COFINS
       vCOFINS := pCOFINS / 100 * qBCProd * Produto.Prod.vUnCom;
   end;

end;

procedure TfrmEmissaoDeNFe.Tratar_Grupo_U_ISSQN;
begin
   //Somente se o tipo de movimento está configurado para tratar o grupo U
   //Imposto Sobre Serviços de Qualquer Natureza
   //---------------------------------------------------------------------------
   if qTPMOV.FieldByName('TPMOV_NFE_TRATAR_GRUPO_U_ISSQN').AsInteger = 0 then
      exit;

   //---------------------------------------------------------------------------
   // LAYOUT FEDERAL
   //---------------------------------------------------------------------------
   // TRATAMENTO DO GRUPO U - ISSQN
   //---------------------------------------------------------------------------

   {319-U01}
   //ISSQN
   //Grupo do ISSQN
   //Informar os campos para cálculo do ISSQN nas NFe conjugadas,
   //onde há a prestação de serviços sujeitos ao ISSQN e fornecimento de peças
   //sujeitas ao ICMS.

   //O grupo de ISSQN é mutuamente exclusivo com os grupos ICMS, IPI e II,
   //isto é se ISSQN for informado os grupos ICMS, IPI e II não serão informados
   //e vice-versa (v2.0).

   {320-U02}
   //vBC
   //Valor da Base de Cálculo do ISSQN

   {321-U03}
   //vAliq
   //Alíquota do ISSQN

   {322-U04}
   //vISSQN
   //Valor do ISSQN

   {323-U05}
   //cMunFG
   //Código do município de ocorrência do fato gerador do ISSQN
   //Informar o município de ocorrência do fato gerador do ISSQN.
   //Utilizar a Tabela do IBGE (Anexo VII - Tabela de UF, Município e País).
   // “Atenção, não vincular com os campos B12, C10 ou E10” v2.0

   {324-U06}
   //cListServ
   //Item da Lista de Serviços
   //Informar o Item da lista de serviços da LC 116/03 (LC = Lei Complementar)
   //em que se classifica o serviço.

   {324a U07}
   //cSitTrib
   //Código de Tributação do ISSQN
   //Informar o código da tributação do ISSQN:
   //       N – NORMAL
   //       R – RETIDA
   //       S –SUBSTITUTA
   //       I – ISENTA. (v.2.0)

end;

procedure TfrmEmissaoDeNFe.Tratar_Grupo_V_Informacoes_Adicionais_do_Produto;
begin
   //---------------------------------------------------------------------------
   // LAYOUT FEDERAL
   //---------------------------------------------------------------------------
   // TRATAMENTO DO GRUPO V - Informações Adicionais do Produto
   //---------------------------------------------------------------------------

   {325-V01}
   //infAdProd
   //Informações Adicionais do Produto
   //Norma referenciada, informações complementares, etc.
   produto.infAdProd := qVENDA_ITEM.FieldByName('PROD_DETALHES').AsString;
end;

procedure TfrmEmissaoDeNFe.Tratar_Grupo_W_Valores_Totais_da_NFe;
begin
   //---------------------------------------------------------------------------
   // LAYOUT FEDERAL
   //---------------------------------------------------------------------------
   // TRATAMENTO DO GRUPO W - Valores Totais da NF-e
   //---------------------------------------------------------------------------

   {326-W01}
   //total
   //Grupo de Valores Totais da NF-e
   With Nota.Total do
   begin
      {327-W02}
      //ICMSTot
      //Grupo de Valores Totais referentes ao ICMS
      With ICMSTot do
      begin
         {328-W03}
         //vBC
         //Base de Cálculo do ICMS
         vBC := vNota_Total_ICMSTot_vBC;

         {329-W04}
         //vICMS
         //Valor Total do ICMS
         vICMS := vNota_Total_ICMSTot_vICMS;

         {329.01-W04a}
         //vICMSDeson
         //Valor Total do ICMS desonerado

         {329.03-W04c}
         //vFCPUFDest
         //Valor total do ICMS relativo Fundo de Combate à Pobreza (FCP) da UF
         //de destino
         //Valor total do ICMS relativo ao Fundo de Combate à Pobreza (FCP) para
         //a UF de destino.
         //                                            (Incluído na NT 2015/003)

         {329.05-W04e}
         //vICMSUFDest
         //Valor total do ICMS Interestadual para a UF de destino
         //Valor total do ICMS Interestadual para a UF de destino, já considerando
         //o valor do ICMS relativo ao Fundo de Combate à Pobreza naquela UF.
         //                                            (Incluído na NT 2015/003)

         {329.07-W04g}
         //vICMSUFRemet
         //Valor total do ICMS Interestadual para a UF do remetente
         //Valor total do ICMS Interestadual para a UF do remetente.
         //Nota: A partir de 2019, este valor será zero.
         //                                            (Incluído na NT 2015/003)

         {329.08-W04h}
         //vFCP
         //Valor Total do FCP (Fundo de Combate à Pobreza)
         //Corresponde ao total da soma dos campos [N17c]
         //                                            (Incluído na NT 2016/002)

         {330-W05}
         //vBCST
         //Base de Cálculo do ICMS ST
         vBCST := vNota_Total_ICMSTot_vBCST;

         {331-W06}
         //vST
         //Valor Total do ICMS
         vST := vNota_Total_ICMSTot_vST;

         {331.01-W06a}
         //vFCPST
         //Valor Total do FCP (Fundo de Combate à Pobreza) retido por
         //substituição tributária
         //Corresponde ao total da soma dos campos [N23d]
         //                                            (Incluído na NT 2016/002)

         {331.02-W06b}
         //vFCPSTRet
         //Valor Total do FCP retido anteriormente por Substituição Tributária
         //Corresponde ao total da soma dos campos [N27d]
         //                                            (Incluído na NT 2016/002)
         {332-W07}
         //vProd
         //Valor Total dos produtos e serviços
         vProd := vNota_Total_ICMSTot_vProd;

         {333-W08}
         //vFrete
         //Valor Total do Frete
         vFrete := vNota_Total_ICMSTot_vFrete;

         {334-W09}
         //vSeg
         //Valor Total do Seguro
         vSeg := vNota_Total_ICMSTot_vSeg;

         {335-W10}
         //vDesc
         //Valor Total do Desconto
         vDesc := vNota_Total_ICMSTot_vDesc;

         {336-W11}
         //vII
         //Valor Total do II
         vII := vNota_Total_ICMSTot_vII;

         {337-W12}
         //vIPI
         //Valor Total do IPI
         vIPI := vNota_Total_ICMSTot_vIPI;

         {337.01-W12a}
         //vIPIDevol
         //Valor Total do IPI devolvido
         //Deve ser informado quando preenchido o Grupo Tributos Devolvidos na
         //emissão de nota finNFe=4 (devolução) nas operações com não-contribuintes
         //do IPI.
         //Corresponde ao total da soma dos campos [UA04]
         //                                            (Incluído na NT 2016/002)
         {338-W13}
         //vPIS
         //Valor do PIS
         vPIS := vNota_Total_ICMSTot_vPIS;

         {339-W14}
         //vCOFINS
         //Valor do COFINS
         vCOFINS := vNota_Total_ICMSTot_vCOFINS;

         {340-W15}
         //vOutro
         //Outras Despesas acessórias
         vOutro := vNota_Total_ICMSTot_vOutro;

         {341-W16}
         //vNF
         //Valor Total da NF-e
         vNF := vNota_Total_ICMSTot_vNF;

         {341a-W16a}
         //vTotTrib
         //Valor aproximado total de tributos federais, estaduais e municipais.
         //                                                        (NT 2013/003)      end;
   end;
end;
end;

procedure TfrmEmissaoDeNFe.Tratar_Grupo_W01_Totalda_NFe_ISSQN;
begin
   //---------------------------------------------------------------------------
   // LAYOUT FEDERAL
   //---------------------------------------------------------------------------
   // TRATAMENTO DO GRUPO W - Valores Totais da NF-e
   //---------------------------------------------------------------------------

   With Nota.Total do
   begin

      {342-W17}
      //ISSQNtot
      //Grupo de Valores Totais referentes ao ISSQN
      With ISSQNtot do
      begin
        {343-W18}
        //vServ
        //Valor Total dos Serviços sob não-incidência ou não tributados pelo ICMS
        vServ := vNota_Total_ISSQNtot_vServ;

        {344-W19}
        //vBC
        //Base de Cálculo do ISS
        vBC := vNota_Total_ISSQNtot_vBC;

        {345-W20}
        //vISS
        //Valor Total do ISS
        vISS := vNota_Total_ISSQNtot_vISS;

        {346-W21}
        //vPIS
        //Valor do PIS sobre serviços
        vPIS := vNota_Total_ISSQNtot_vPIS;

        {347-W22}
        //vCOFINS
        //Valor do COFINS sobre serviços
        vCOFINS := vNota_Total_ISSQNtot_vCOFINS;

        {347a-W22a}
        //dCompet
        //Data da prestação do serviço
        //Formato: “AAAA-MM-DD”

        {347b-W22b}
        //vDeducao
        //Valor total dedução para redução da Base de Cálculo

        {347c-W22c}
        //vOutro
        //Valor total outras retenções
        //Valor declaratório

        {347d-W22d}
        //vDescIncond
        //Valor total desconto

        {347e-W22e}
        //vDescCond
        //Valor total desconto condicionado

        {347f-W22f}
        //vISSRet
        //Valor total retenção ISS

        {347g-W22g}
        //cRegTrib
        //Código do Regime Especial de Tributação
        //     1 = Microempresa Municipal;
        //     2 = Estimativa;
        //     3 = Sociedade de Profissionais;
        //     4 = Cooperativa;
        //     5 = Microempresário Individual (MEI);
        //     6 = Microempresário e Empresa de Pequeno Porte
      end;
   end;
end;

procedure TfrmEmissaoDeNFe.Tratar_Grupo_W02_Totalda_NFe_Retencao_de_Tributos;
begin
   //---------------------------------------------------------------------------
   // LAYOUT FEDERAL
   //---------------------------------------------------------------------------
   // TRATAMENTO DO GRUPO W02- Total da NF-e / Retenção de Tributos
   //---------------------------------------------------------------------------

   With Nota.Total do
   begin

      {348-W23}
      //retTrib
      //Grupo de Retenções de Tributos
      With retTrib do
      begin
         { Exemplos de atos normativos que definem obrigatoriedade da retenção
           de contribuições:
              a) IRPJ/CSLL/PIS/COFINS
                 Fonte: Recebimentos de Órgãos Públicos Federais
                        Lei nº 9.430, de 27 de dezembro de 1996, art. 64
                        Lei nº 10.833/2003, art. 34
                        como normas infralegais, temos como exemplo:
                        Instrução Normativa SRF nº 480/2004 e
                        Instrução Normativa nº 539, de 25/04/2005.
              b) Retenção do Imposto de Renda pelas Fontes Pagadoras
                 REMUNERAÇÃO DE SERVIÇOS PROFISSIONAIS PRESTADOS POR
                 PESSOA JURÍDICA  LEI Nº 7.450/85, ART. 52  350
              c) IRPJ, CSLL, COFINS e PIS - Serviços Prestados por
                 Pessoas Jurídicas
                 Retenção na Fonte
                 Lei nº 10.833 de 29.12.2003, arts. 30, 31, 32, 35 e 36
         }

         {349-W24}
         //vRetPIS
         //Valor Retido de PIS E W23
         vRetPIS := vNota_Total_retTrib_vRetPIS;

         {350-W25}
         //vRetCOFINS
         //Valor Retido de COFINS
         vRetCOFINS := vNota_Total_retTrib_vRetCOFINS;

         {351-W26}
         //vRetCSLL
         //Valor Retido de CSLL
         vRetCSLL := vNota_Total_retTrib_vRetCSLL;

         {352-W27}
         //vBCIRRF
         //Base de Cálculo do IRRF
         vBCIRRF := vNota_Total_retTrib_vBCIRRF;

         {353-W28}
         //vIRRF
         //Valor Retido do IRRF
         vIRRF := vNota_Total_retTrib_vIRRF;

         {354-W29}
         //vBCRetPrev
         //Base de Cálculo da Retenção da Previdência Social
         vBCRetPrev := vNota_Total_retTrib_vBCRetPrev;

         {355-W30}
         //vRetPrev
         //Valor da Retenção da Previdência Social
         vRetPrev := vNota_Total_retTrib_vRetPrev;
      end;
   end;
end;

procedure TfrmEmissaoDeNFe.Tratar_Grupo_X_Informacoes_do_Transporte_da_NFe;
begin
   //---------------------------------------------------------------------------
   // LAYOUT FEDERAL
   //---------------------------------------------------------------------------
   // TRATAMENTO DO GRUPO X - Informações do Transporte da NFe
   //---------------------------------------------------------------------------

   //Somente se houver transportador associado ao pedido...
   if qVENDA.FieldByName('Transportador').AsInteger = -1 then
     exit;

   {356-X01}
   //transp
   //Grupo de Informações do Transporte da NF-e
   with Nota.Transp do
   begin
     {357-X02}
     //modFrete
     //Modalidade do frete
     //  0 = Contratação do Frete por conta do Remetente (CIF);
     //  1 = Contratação do Frete por conta do Destinatário (FOB);
     //  2 = Contratação do Frete por conta de Terceiros;
     //  3 = Transporte Próprio por conta do Remetente;
     //  4 = Transporte Próprio por conta do Destinatário;
     //  9 = Sem Ocorrência de Transporte.
     //                                              (Atualizado na NT 2016/002)     //modFrete :=

     {358-X03}
     //transporta
     //Grupo Transportador
     With Transporta do
     begin
       {359-X04}
       //CNPJ
       //CNPJ do Transportador
       //Informar o CNPJ ou o CPF do Transportador,
       //preenchendo os zeros não significativos.
       if Sql_Transportador.FieldByName('CNPJ').AsString <> '' then
          CNPJCPF := Sql_Transportador.FieldByName('CNPJ').AsString;

       {360-X05}
       //CPF
       //CPF do Transportador
       if Sql_Transportador.FieldByName('CPF').AsString <> '' Then
          CNPJCPF := Sql_Transportador.FieldByName('CPF').AsString;

       {361-X06}
       //xNome
       //Razão Social ou nome
       xNome := Sql_Transportador.FieldByName('RAZAO_SOCIAL').AsString;

       {362-X07}
       //IE
       //Inscrição Estadual do Transportador
       //Informar a IE quando o transportador for contribuinte do ICMS.
       //
       //Informar:
       //  - Inscrição Estadual do transportador contribuinte do ICMS,
       //    sem caracteres de formatação (ponto, barra, hífen, etc.);
       //  - Literal “ISENTO” para transportador isento de inscrição no cadastro
       //    de contribuintes ICMS;
       //  - Não informar a tag para não contribuinte do ICMS.
       //
       //A UF deve ser informada se informado uma IE. (v2.0)
       if Sql_Transportador.FieldByName('Contribuinte_do_ICMS').AsString = 'S' then
       begin
          IE := Sql_Transportador.FieldByName('IE').AsString;
       end;

       {363-X08}
       //xEnder
       //Endereço Completo
       xEnder := Sql_Transportador.FieldByName('RUA').AsString;
       {364-X09}
       //xMun
       //Nome do município
       xMun := Sql_Transportador.FieldByName('MUNICIPIO').AsString;

       {365-X10}
       //UF
       //Sigla da UF
       //A UF deve ser informada se informado uma IE. (v2.0)
       UF := Sql_Transportador.FieldByName('UF').AsString;
     end;

     {366-X11}
     //retTransp
     //Grupo de Retenção do ICMS do transporte
     //Informar o valor do ICMS do serviço de transporte retido.
     With retTransp do
     begin
        {367-X12}
        //vServ
        //Valor do Serviço

        {368-X13}
        //vBCRet
        //BC da Retenção do ICMS

        {369-X14}
        //pICMSRet
        //Alíquota da Retenção

        {370-X15}
        //vICMSRet
        //Valor do ICMS Retido

        {371-X16}
        //CFOP
        //CFOP
        //Utilizar Tabela de CFOP.
        //CFOP := qVENDA_ITEM.FieldByName('VI_CFOP_CSOSN').AsString;

        {372-X17}
        //cMunFG
        //Código do município de ocorrência do fato gerador do
        //ICMS do transporte
        //Informar o município de ocorrência do fato gerador do ICMS do
        //transporte. Utilizar a Tabela do IBGE (Anexo VII - Tabela de UF,
        //Município e País)
     end;

     //Somente se houver transportador_Veiculo associado ao pedido...
     if qVENDA.FieldByName('transportador_Veiculo').AsInteger = -1 then
        exit;

    {
    //Recuperar dados do veículo usado para o transporte da mercadoria
    //----------------------------------------------------------------
    qVEICULO_VEI.Close;
    qVEICULO_VEI.Sql.Clear;
    qVEICULO_VEI.Sql.Add('SELECT * FROM VEICULO_VEI     ');
    qVEICULO_VEI.Sql.Add(' WHERE VEI_PLACA = :VEI_PLACA ');
    qVEICULO_VEI.ParamByName('VEI_PLACA').AsString  :=
                                       qVENDA.FieldbyName('PED_PLACA').AsString;
    qVEICULO_VEI.Open;
    if qVEICULO_VEI.FieldbyName('VEI_PROPRIETARIO' ).AsString <> '' then
    begin
        //Recuperar dados do proprietário do veículo
        //----------------------------------------------------------------------
        qTRANSPORTADOR.Close;
        qTRANSPORTADOR.sql.Clear;
        qTRANSPORTADOR.Sql.Add('SELECT * FROM FORNECEDOR_FOR    ');
        qTRANSPORTADOR.Sql.Add(' WHERE FOR_CODIGO = :FOR_CODIGO ');
        qTRANSPORTADOR.ParamByName('FOR_CODIGO').AsString  :=
                        qVEICULO_VEI.FieldbyName('VEI_PROPRIETARIO' ).AsString;
        qTRANSPORTADOR.Open;
        if not qTRANSPORTADOR.eof then
        begin
           Nota.Transp.Transporta.xNome
                     := qTRANSPORTADOR.FieldbyName('FOR_RAZAO_SOCIAL').AsString;
           etc...
        end;
    end;
    }

     {373-X18}
     //veicTransp
     //Grupo Veículo
     //Informar o veículo trator (v2.0)
     With veicTransp do
     begin
         {374-X19}
         //placa
         //Placa do Veículo
         //placa := SemEspacos(qVEICULO_VEI.FieldbyName('VEI_PLACA').AsString);

         {375-X20}
         //UF
         //Sigla da UF
         //UF := qVEICULO_VEI.FieldbyName('VEI_UF'   ).AsString;

         {376-X21}
         //RNTC
         //Registro Nacional de Transportador de Carga (ANTT)
         //RNTT := qVEICULO_VEI.FieldbyName('VEI_ANTT' ).AsString;
     end;

     {377-X22}
     //reboque Grupo Reboque
     //Informar os reboques/Dolly  (v2.0)
     with Reboque do
     begin
        {378-X23}
        //placa
        //Placa do Veículo
        {379-X24}
        //UF
        //Sigla da UF

        {380-X25}
        //RNTC
        //Registro Nacional de Transportador de Carga (ANTT)

        {380a-X25a}
        //vagao
        //Identificação do vagão (v2.0)

        {380b-X25b}
        //balsa
        //Identificação da balsa (v2.0)

     end;

     {381-X26}
     //vol
     //Grupo Volumes
     Vol.New;
     with Vol do
     begin
        {382-X27}
        //qVol
        //Quantidade de volumes transportados
        items[0].qVol := qVENDA.FieldByName('NFe_QVOL').AsInteger;

        {383-X28}
        //esp
        //Espécie dos volumes transportados
        items[0].esp := qVENDA.FieldByName('NFe_ESP').AsString;

        {384-X29}
        //marca
        //Marca dos volumes transportados
        items[0].marca := qVENDA.FieldByName('NFe_MARCA').AsString;

        {385-X30}
        //nVol
        //Numeração dos volumes transportados
        items[0].nVol := qVENDA.FieldByName('NFe_NVOL').AsString;

        {386-X31}
        //pesoL
        //Peso Líquido (em kg)
        items[0].pesoL := qVENDA.FieldByName('NFe_PESOL').AsFloat;

        {387-X32}
        //pesoB
        //Peso Bruto (em kg)
        items[0].pesoB := qVENDA.FieldByName('NFe_PESOB').AsFloat;
     end;

     {387a-X33}
     //lacres
     //Grupo de Lacres
     With Lacre do
     begin
        SQL_venda_lacre_vlac.First;
        while not SQL_venda_lacre_vlac.Eof do
        begin
           {388-X34}
           //nLacre
           //Número dos Lacres
           nLacre := SQL_venda_lacre_vlac.FieldByName('VLAC_NLACRE').AsString;
           SQL_venda_lacre_vlac.Next;
        end;
     end;
   end;
end;

procedure TfrmEmissaoDeNFe.Tratar_Grupo_Y_Dados_da_Cobranca;
begin
   //---------------------------------------------------------------------------
   // LAYOUT FEDERAL
   //---------------------------------------------------------------------------
   // TRATAMENTO DO GRUPO Y - Dados da Cobrança
   //---------------------------------------------------------------------------

   //Somente se houver dados de cobrança
   //if qVENDA.FieldByName('Transportador').AsInteger = -1 then
   //  exit;

   {389-Y01}
   //cobr
   //Grupo de Cobrança
   with Nota.cobr do
   begin

      {390-Y02}
      //fat
      // Grupo da Fatura
      with Fat do
      begin

         {391-Y03}
         //nFat
         //Número da Fatura
         nFat := '0';

         {392-Y04}
         //vOrig
         //Valor Original da Fatura

         {393-Y05}
         //vDesc
         //Valor do desconto

         {394-Y06}
         //vLiq
         //Valor Líquido da Fatura

      end;

     {395-Y07}
     //dup
     //Grupo da Duplicata *** loop ***
     with Dup.New do
     begin
         {396-Y08}
         //nDup
         //Número da Duplicata

         {397-Y09}
         //dVenc
         //Data de vencimento
         //Formato “AAAA-MM-DD”

         {398-Y10}
         //vDup
         //Valor da duplicata
     end;
   end;
end;

procedure TfrmEmissaoDeNFe.Tratar_Grupo_YA_Informacoes_de_Pagamento;
begin
   //---------------------------------------------------------------------------
   // LAYOUT FEDERAL
   //---------------------------------------------------------------------------
   // TRATAMENTO DO GRUPO YA - Informações de Pagamento
   //---------------------------------------------------------------------------

   {398a-YA01}
   //pag
   //Grupo de Informações de Pagamento
   //Obrigatório o preenchimento do Grupo Informações de Pagamento para NF-e e
   //NFC-e.
   //Para as notas com finalidade de Ajuste ou Devolução o campo Meio de Pagamento
   //deve ser preenchido com 90=Sem Pagamento.

   {398a1-YA01a}
   //detPag
   //Grupo Detalhamento do Pagamento

   //Pagamento:= Nota.pag.add;
   with Nota.Pag.new do
   begin
       {398a2-YA01b}
       //indPag
       //Indicador da Forma de Pagamento
       //    0= Pagamento à Vista
       //    1= Pagamento à Prazo
       //                                                  (Incluído na NT 2016/002)

       {398b-YA02}
       //tPag
       //Meio de pagamento
       //  01=Dinheiro
       //  02=Cheque
       //  03=Cartão de Crédito
       //  04=Cartão de Débito
       //  05=Crédito Loja
       //  10=Vale Alimentação
       //  11=Vale Refeição
       //  12=Vale Presente
       //  13=Vale Combustível
       //  15=Boleto Bancário
       //  90= Sem pagamento
       //  99=Outros
       //                                                (Atualizado na NT 2016/002)
       {
       Case qContaCorrente.FieldByName('CC_TPAG').AsInteger of
         00 : tPag := fpDinheiro;
         01 : tPag := fpCheque;
         02 : tPag := fpCartaoCredito;
         03 : tPag := fpCartaoDebito;
         04 : tPag := fpCreditoLoja,
         05 : tPag := fpValeAlimentacao;
         06 : tPag := fpValeRefeicao;
         07 : tPag := fpValePresente;
         08 : tPag := fpValeCombustivel;
         09 : tPag := fpDuplicataMercantil;
         10 : tPag := fpBoletoBancario;
         11 : tPag := fpSemPagamento;
         13 : tPag := fpOutro;
       End;
       }
       //Pagamento:= Nota.pag.add;
       tPag:= fpDinheiro;

       {398c-YA03}
       //vPag
       //Valor do Pagamento
       vPag := Nota.Total.ICMSTot.vNF;

     {398d-YA04}
     //card
     //Grupo de Cartões

     {398d.1-YA04a}
     //tpIntegra
     //Tipo de Integração para pagamento
     //Tipo de Integração do processo de pagamento com o sistema de automação
     //da empresa:
     //   1 = Pagamento integrado com o sistema de automação da empresa
     //     (Ex.: equipamento TEF, Comércio Eletrônico);
     //   2= Pagamento não integrado com o sistema de automação da empresa
     //      (Ex.: equipamento POS);

     {398e-YA05}
     //CNPJ
     //CNPJ da Credenciadora de cartão de crédito e/ou débito
     //Informar o CNPJ da Credenciadora de cartão de crédito/débito

     {398f-YA06}
     //tBand
     //Bandeira da operadora de cartão de crédito e/ou débito
     //         01=Visa
     //         02=Mastercard
     //         03=American Express
     //         04=Sorocred
     //         05=Diners Club
     //         06=Elo
     //         07=Hipercard
     //         08=Aura
     //         09=Cabal
     //         99=Outros
     //                                              (Atualizado na NT 2016/002)

     {398g-YA07}
     //cAut
     //Número de autorização da operação cartão de crédito e/ou débito
     //Identifica o número da autorização da transação da operação com cartão
     //de crédito e/ou débito

     {398i-YA09}
     //vTroco
     //Valor do troco
     //Valor do troco
     //                                                (Incluído na NT 2016/002)
  end;

end;

procedure TfrmEmissaoDeNFe.Tratar_Grupo_Z_Informacoes_Adicionais_da_NFe;
begin
   //---------------------------------------------------------------------------
   // LAYOUT FEDERAL
   //---------------------------------------------------------------------------
   // TRATAMENTO DO GRUPO Z - Informações Adicionais da NF-e
   //---------------------------------------------------------------------------

   {399-Z01}
   //infAdic
   //Grupo de Informações Adicionais

   {400-Z02}
   //infAdFisco
   //Informações Adicionais de Interesse do Fisco (v2.0)

   {401-Z03}
   //infCpl
   //Informações Complementares de interesse do Contribuinte

   {401a-Z04}
   //obsCont
   //Grupo do campo de uso livre do contribuinte
   //Campo de uso livre do contribuinte,
   //informar o nome do campo no atributo xCampo
   //e o conteúdo do campo no xTexto

   {401b-Z05}
   //xCampo
   //Identificação do campo
   //Identificação do campo

   {401c-Z06}
   //xTexto
   //Conteúdo do campo
   //Conteúdo do campo

   {401d-Z07}
   //obsFisco
   //Grupo do campo de uso livre do Fisco
   //Campo de uso livre do Fisco
   //Informar o nome do campo no atributo xCampo
   //e o conteúdo do campo no xTexto

   {401e-Z08}
   //xCampo
   //Identificação do campo
   //Identificação do campo

   {401f-Z09}
   //xTexto
   //Conteúdo do campo
   //Conteúdo do campo

   {401g-Z10}
   //procRef
   //Grupo do processo referenciado

   {401h-Z11}
   //nProc
   //Indentificador do processo ou ato concessório
   //Identificador do processo ou ato concessório

   {401i-Z12}
   //indProc
   //Indicador da origem do processo
   //Origem do processo, informar com:
   //    0 - SEFAZ
   //    1 - Justiça Federal
   //    2 - Justiça Estadual
   //    3 - Secex/RFB
   //    9 - Outros
end;

procedure TfrmEmissaoDeNFe.Tratar_Grupo_ZA_Informacoes_de_Comercio_Exterior;
begin
   //---------------------------------------------------------------------------
   // LAYOUT FEDERAL
   //---------------------------------------------------------------------------
   // TRATAMENTO DO GRUPO ZA - Informações de Comércio Exterior
   //---------------------------------------------------------------------------

   {402-ZA01}
   //exporta
   //Grupo de Exportação
   //Informar apenas na exportação.

   {403-ZA02}
   //UFEmbarq
   //Sigla da UF onde ocorrerá o Embarque dos produtos

   {404-ZA03}
   //xLocEmbarq
   //Local onde ocorrerá o Embarque dos produtos
end;

procedure TfrmEmissaoDeNFe.Tratar_Grupo_ZB_Informacoes_de_Compras;
begin
   //---------------------------------------------------------------------------
   // LAYOUT FEDERAL
   //---------------------------------------------------------------------------
   // TRATAMENTO DO GRUPO ZB - Informações de Compras
   //---------------------------------------------------------------------------

   {405-ZB01}
   //compra
   //Grupo de Compra
   //Informação adicional de compra

   {406-ZB02}
   //xNEmp
   //Nota de Empenho
   //Informar a identificação da Nota de Empenho,
   //quando se tratar de compras públicas

   {407-ZB03}
   //xPed
   //Pedido
   //Informar o pedido.

   {408-ZB04}
   //xCont
   //Contrato
   //Informar o contrato de compra

end;

procedure TfrmEmissaoDeNFe.Tratar_Grupo_ZC_Informacoes_do_Registro_de_Aquisicao_de_Cana;
begin
   //---------------------------------------------------------------------------
   // LAYOUT FEDERAL
   //---------------------------------------------------------------------------
   // TRATAMENTO DO GRUPO ZC - Informações do Registro de Aquisição de Cana
   //---------------------------------------------------------------------------

   {409-ZC01}
   //cana
   //Grupo de cana
   //Informações de registro aquisições de cana v2.0

   {410-ZC02}
   //safra
   //Identificação da safra
   //Informar a safra, AAAA ou AAAA/AAAA. v2.0

   {411-ZC03}
   //ref
   //Mês e ano de referência
   //Informar o mês e ano de referência, MM/AAAA. v2.0

   {412-ZC04}
   //forDia
   //Grupo de Fornecimento diário de cana
   //Informar os fornecimentos diários de cana v2.0

   {427-ZC05}
   //dia
   //Dia v2.0

   {414-ZC06}
   //qtde
   //Quantidade
   //Quantidade em KG v2.0

   {415-ZC07}
   //qTotMes
   //Quantidade Total do Mês
   //v2.0

   {416-ZC08}
   //qTotAnt
   //Quantidade Total Anterior
   //v2.0

   {417-ZC09}
   //qTotGer
   //Quantidade Total Geral
   //v2.0

   {418_ZC10}
   //deduc
   //Grupo de Deduções – Taxas e Contribuições
   //Informar  as Deduções – Taxas e Contribuições v2.0

   {419-ZC11}
   //xDed
   //Descrição da Dedução
   //Informar a Descrição da Dedução e v2.0

   {420-ZC12}
   //vDed
   //Valor da Dedução
   //v2.0

   {421-ZC13}
   //vFor
   //Valor dos Fornecimentos
   //Valor dos Fornecimentos v2.0

   {422-ZC14}
   //vTotDed
   //Valor Total da Dedução
   //Valor das deduções v2.0

   {423-ZC15}
   //vLiqFor
   //Valor Líquido dos Fornecimentos
   //Valor Líquido dos Fornecimentos v2.0

end;

procedure TfrmEmissaoDeNFe.Tratar_Grupo_ZD_Informacoes_do_Responsavel_Tecnico;
begin
   //---------------------------------------------------------------------------
   // LAYOUT FEDERAL
   //---------------------------------------------------------------------------
   // TRATAMENTO DO GRUPO ZD - Informações do Responsável Técnico
   //---------------------------------------------------------------------------
   //                                           Novo grupo criado na NT 2018.005

   {423a-ZD01}
   //infRespTec
   //Informações do Responsável Técnico pela emissão do DF-e
   //Grupo para informações do responsável técnico pelo sistema de emissão do DF-e

   {423b-ZD02}
   //CNPJ
   //CNPJ da pessoa jurídica responsável pelo sistema utilizado na emissão do
   //documento fiscal eletrônico
   // Informar o CNPJ da pessoa jurídica responsável pelo sistema utilizado na
   //emissão do documento fiscal eletrônico.

   {423c-ZD04}
   //xContato
   //Nome da pessoa a ser contatada
   //Informar o nome da pessoa a ser contatada na empresa desenvolvedora
   //do sistema utilizado na emissão do documento fiscal eletrônico.

   {423d-ZD05}
   //email
   //E-mail da pessoa jurídica a ser contatada
   //Informar o e-mail da pessoa a ser contatada na empresa desenvolvedora
   //do sistema.

   {423e-ZD06}
   //fone
   //Telefone da pessoa jurídica/física a ser contatada
   //Informar o telefone da pessoa a ser contatada na empresa desenvolvedora do
   //sistema. Preencher com o Código DDD + número do telefone.

   {423f-ZD07}
   //-x- Sequência XML G ZD0
   //Grupo de informações do Código de Segurança do Responsável Técnico - CSTR

   {423g-ZD08}
   //idCSRT
   //Identificador do CSRT
   //Identificador do CSRT utilizado para montar o hash do CSRT

   {423h-ZD09}
   //hashCSRT
   //Hash do CSRT
   //O hashCSRT é o resultado da função hash (SHA-1 – Base64) do CSRT
   //fornecido pelo fisco mais a Chave de Acesso da NFe.

end;

procedure TfrmEmissaoDeNFe.Tratar_Grupo_ZX_Informacoes_Suplementares_da_Nota_Fiscal;
begin
   //---------------------------------------------------------------------------
   // LAYOUT FEDERAL
   //---------------------------------------------------------------------------
   // TRATAMENTO DO GRUPO ZX - Informações Suplementares da Nota Fiscal
   //---------------------------------------------------------------------------

   {424-ZX01}
   //infNFeSupl
   //Informações suplementares da Nota Fiscal
   //Informações suplementares da Nota Fiscal, não afetando a assinatura digital.
   //                                                              (NT 2015.002)

   {425-ZX02}
   //qrCode
   //Texto com o QR-Code impresso no DANFE NFC-e.
   //Obs.: URLs, por UF, utilizadas para consulta QR Code acesse:
   //      http://nfce.encat.org/desenvolvedor/qrcode/
   //Ver orientações de preenchimento na seção 2.3 deste documento.

   {426-ZX03}
   //urlChave
   //Texto com a URL de consulta por chave de acesso a ser impressa no DANFE
   //NFC-e.
   //Obs.: URLs, por UF, utilizadas para consulta por chave de acesso acesse:
   //http://nfce.encat.org/consumidor/consultenota/
   //Informar a URL da “Consulta por chave de acesso da NFC-e”.
   //A mesma URL que deve estar informada no DANFE NFC-e para consulta por chave
   //de acesso.

end;

procedure TfrmEmissaoDeNFe.Tratar_Grupo_ZZ_Informacoes_da_Assinatura_Digital;
begin
   //---------------------------------------------------------------------------
   // LAYOUT FEDERAL
   //---------------------------------------------------------------------------
   // TRATAMENTO DO GRUPO ZZ - Informações da Assinatura Digital
   //---------------------------------------------------------------------------

   {999-ZZ01}
   //Signature
   //Assinatura XML da NF-e Segundo o Padrão XML Digital Signature

end;

procedure TfrmEmissaoDeNFe.Tratar_ICMS00;
begin
   //Somente se o Produto apresentar
   //(Código da Situação Tributária) STICMS = 00
   //---------------------------------------------------------------------------
   if qVENDA_ITEM.FieldByName('ICMS_CST').AsString <> '00' then
      exit;

   // Trata impostos de produtos
   // com ST do ICMS = '00':
   //---------------------------------------------------------------------------
   // Tributados integralmente
   //---------------------------------------------------------------------------

   {165-N02}
   //ICMS00
   //Grupo de Tributação do ICMS= 00
   //Tributação do ICMS – 00
   //Tributada integralmente

   {166-N11   } Tratar_N11_Produto_Imposto_ICMS_orig;
   {167-N12   } Tratar_N12_Produto_Imposto_ICMS_CST;
   {168-N13   } Tratar_N13_Produto_Imposto_ICMS_modBC;
   {169-N15   } Tratar_N15_Produto_Imposto_ICMS_vBC;
   {170-N16   } Tratar_N16_Produto_Imposto_ICMS_pICMS;
   {171-N17   } Tratar_N17_Produto_Imposto_ICMS_vICMS;
   {171.1-N17b} Tratar_N17b_Produto_Imposto_ICMS_pFCP;
   {171.2-N17c} Tratar_N17c_Produto_Imposto_ICMS_vFCP;
end;

procedure TfrmEmissaoDeNFe.Tratar_ICMS10;
begin
   //Somente se o Produto apresentar
   //(Código da Situação Tributária) STICMS = 10
   //---------------------------------------------------------------------------
   if qVENDA_ITEM.FieldByName('ICMS_CST').AsString <> '10' then
      exit;

   // Trata impostos de produtos
   // com CST (Código da Situação Tributária) do ICMS = '10':
   //---------------------------------------------------------------------------
   // Tributada e com cobrança do ICMS por substituição tributária
   //---------------------------------------------------------------------------

   {172-N03}
   //ICMS10
   //Grupo de Tributação do ICMS = 10
   //Tributada e com cobrança do ICMS por substituição tributária

   {163-N11   } Tratar_N11_Produto_Imposto_ICMS_orig;
   {174-N12   } Tratar_N12_Produto_Imposto_ICMS_CST;
   {175-N13   } Tratar_N13_Produto_Imposto_ICMS_modBC;
   {176-N15   } Tratar_N15_Produto_Imposto_ICMS_vBC;
   {177-N16   } Tratar_N16_Produto_Imposto_ICMS_pICMS;
   {178-N17   } Tratar_N17_Produto_Imposto_ICMS_vICMS;
   {178.1-N17a} Tratar_N23a_Produto_Imposto_ICMS_vBCFCPST;
   {179-N18   } Tratar_N18_Produto_Imposto_ICMS_modBCST;
   {180-N19   } Tratar_N19_Produto_Imposto_ICMS_pMVAST;
   {181-N20   } Tratar_N20_Produto_Imposto_ICMS_pRedBCST;
   {182-N21   } Tratar_N21_Produto_Imposto_ICMS_vBCST;
   {183-N22   } Tratar_N22_Produto_Imposto_ICMS_pICMSST;
   {184-N23   } Tratar_N23_Produto_Imposto_ICMS_vICMSST;
   {184.1-N23a} Tratar_N23a_Produto_Imposto_ICMS_vBCFCPST;
   {184.2-N23b} Tratar_N23b_Produto_Imposto_ICMS_pFCPST;
   {184.3-N23d} Tratar_N23d_Produto_Imposto_ICMS_vFCPST;
end;

procedure TfrmEmissaoDeNFe.Tratar_ICMS20;
begin
   //Somente se o Produto apresentar
   //(Código da Situação Tributária) STICMS = 20
   //---------------------------------------------------------------------------
   if qVENDA_ITEM.FieldByName('ICMS_CST').AsString <> '20' then
      exit;

   // Trata impostos de produtos
   // com ST do ICMS = '20':
   //---------------------------------------------------------------------------
   // Com redução de base de cálculo
   //---------------------------------------------------------------------------

   {185-N04}
   //ICMS20
   //Grupo de Tributação do ICMS = 20
   //Com redução de base de cálculo

   {186-N11   } Tratar_N11_Produto_Imposto_ICMS_orig;
   {187-N12   } Tratar_N12_Produto_Imposto_ICMS_CST;
   {188-N13   } Tratar_N13_Produto_Imposto_ICMS_modBC;
   {189-N14   } Tratar_N14_Produto_Imposto_ICMS_pRedBC;
   {190-N15   } Tratar_N15_Produto_Imposto_ICMS_vBC;
   {191-N16   } Tratar_N16_Produto_Imposto_ICMS_pICMS;
   {192-N17   } Tratar_N17_Produto_Imposto_ICMS_vICMS;
   {192.w-N17a} Tratar_N17a_Produto_Imposto_ICMS_vBCFCP;
   {192.x-N17b} Tratar_N17b_Produto_Imposto_ICMS_pFCP;
   {192.y-N17c} Tratar_N17c_Produto_Imposto_ICMS_vFCP;
   {192.2-N28a} Tratar_N28a_Produto_Imposto_ICMS_vICMSDeson;
   {192.3-N28 } Tratar_N28_Produto_Imposto_ICMS_motDesICMS;
end;

procedure TfrmEmissaoDeNFe.Tratar_ICMS30;
begin
   //Somente se o Produto apresentar
   //(Código da Situação Tributária) STICMS = 30
   //---------------------------------------------------------------------------
   if qVENDA_ITEM.FieldByName('ICMS_CST').AsString <> '30' then
      exit;

   // Trata impostos de produtos
   // com ST do ICMS = '30':
   //---------------------------------------------------------------------------
   // Isenta ou não tributada e com cobrança do ICMS por substituição tributária
   //---------------------------------------------------------------------------

   {193-N05}
   //ICMS30
   //Grupo de Tributação do ICMS = 30
   //Isenta ou não tributada e com cobrança do ICMS por substituição tributária

   {194-N11   } Tratar_N11_Produto_Imposto_ICMS_orig;
   {195-N12   } Tratar_N12_Produto_Imposto_ICMS_CST;
   {196-N18   } Tratar_N18_Produto_Imposto_ICMS_modBCST;
   {197-N19   } Tratar_N19_Produto_Imposto_ICMS_pMVAST;
   {198-N20   } Tratar_N20_Produto_Imposto_ICMS_pRedBCST;
   {199-N21   } Tratar_N21_Produto_Imposto_ICMS_vBCST;
   {200-N22   } Tratar_N22_Produto_Imposto_ICMS_pICMSST;
   {201-N23   } Tratar_N23_Produto_Imposto_ICMS_vICMSST;
   {201.w-N23a} Tratar_N23a_Produto_Imposto_ICMS_vBCFCPST;
   {201.x-N23b} Tratar_N23b_Produto_Imposto_ICMS_pFCPST;
   {201.y-N23d} Tratar_N23d_Produto_Imposto_ICMS_vFCPST;
   {201.2-N28a} Tratar_N28a_Produto_Imposto_ICMS_vICMSDeson;
   {201.3-N28 } Tratar_N28_Produto_Imposto_ICMS_motDesICMS;
end;

procedure TfrmEmissaoDeNFe.Tratar_ICMS40_41_50;
begin
   //Somente se o Produto apresentar
   //(Código da Situação Tributária) STICMS = 40, 41 ou 50
   //---------------------------------------------------------------------------
   if (qVENDA_ITEM.FieldByName('ICMS_CST').AsString <> '40') and
      (qVENDA_ITEM.FieldByName('ICMS_CST').AsString <> '41') and
      (qVENDA_ITEM.FieldByName('ICMS_CST').AsString <> '50') then
      exit;

   // Trata impostos de produtos
   // com ST do ICMS = '40', '41' e '50':
   //---------------------------------------------------------------------------
   // 40-Isenta, 41-Não tributada, 50-Suspensão
   //---------------------------------------------------------------------------

   {202-N05}
   //ICMS40
   //Grupo de Tributação do ICMS = 40, 41 e 50
   //40-Isenta, 41-Não tributada, 50-Suspensão

   {203-N11    } Tratar_N11_Produto_Imposto_ICMS_orig;
   {204-N12    } Tratar_N12_Produto_Imposto_ICMS_CST;
   {204.01-N28a} Tratar_N28a_Produto_Imposto_ICMS_vICMSDeson;
   {204.02-N28 } Tratar_N28_Produto_Imposto_ICMS_motDesICMS;
end;

procedure TfrmEmissaoDeNFe.Tratar_ICMS51;
begin
   //Somente se o Produto apresentar
   //(Código da Situação Tributária) STICMS = 51
   //---------------------------------------------------------------------------
   if qVENDA_ITEM.FieldByName('ICMS_CST').AsString <> '51' then
      exit;

   // Trata impostos de produtos
   // com ST do ICMS = '51'
   //---------------------------------------------------------------------------
   // Diferimento
   // A exigência do preenchimento das informações do ICMS diferido
   // fica a critério de cada UF
   //---------------------------------------------------------------------------

   if qEMITENTE.FieldByName('Tratar_ICMS51').AsInteger = 0 then
      exit;

   {205-N05}
   //ICMS51
   //Grupo de Tributação do ICMS = 51
   //Diferimento

   {206-N11    } Tratar_N11_Produto_Imposto_ICMS_orig;
   {207-N12    } Tratar_N12_Produto_Imposto_ICMS_CST;
   {208-N13    } Tratar_N13_Produto_Imposto_ICMS_modBC;
   {209-N14    } Tratar_N14_Produto_Imposto_ICMS_pRedBC;
   {210-N15    } Tratar_N15_Produto_Imposto_ICMS_vBC;
   {211-N16    } Tratar_N16_Produto_Imposto_ICMS_pICMS;
   {211.01-N16a} Tratar_N16a_vICMSOp;
   {211.02-N16b} Tratar_N16b_pDif;
   {211.03-N16c} Tratar_N16c_vICMSDif;
   {212-N17    } Tratar_N17_Produto_Imposto_ICMS_vICMS;
   {212.w-N17a } Tratar_N17a_Produto_Imposto_ICMS_vBCFCP;
   {212.x-N17b } Tratar_N17b_Produto_Imposto_ICMS_pFCP;
   {212.y-N17c } Tratar_N17c_Produto_Imposto_ICMS_vFCP;
end;

procedure TfrmEmissaoDeNFe.Tratar_ICMS60;
begin
   //Somente se o Produto apresentar
   //(Código da Situação Tributária) STICMS = 60
   //                                                     (Incluído NT 2016/002)
   //---------------------------------------------------------------------------   if qVENDA_ITEM.FieldByName('ICMS_CST').AsString <> '60' then
      exit;

   // Trata impostos de produtos
   // com ST do ICMS = '60':
   //---------------------------------------------------------------------------
   // ICMS cobrado anteriormente por substituição tributária
   //---------------------------------------------------------------------------

   {193-N05}
   //ICMS60
   //Grupo de Tributação do ICMS = 60
   //ICMS cobrado anteriormente por substituição tributária

   {214-N11   } Tratar_N11_Produto_Imposto_ICMS_orig;
   {215-N12   } Tratar_N12_Produto_Imposto_ICMS_CST;
   {216-N26   } Tratar_N26_Produto_Imposto_ICMS_vBCSTRet;
   {216.1-N26a} Tratar_N26a_Produto_Imposto_ICMS_pST;
   {216.2-N26b} Tratar_N26b_Produto_Imposto_ICMS_vICMSSubstituto;
   {217-N27   } Tratar_N27_Produto_Imposto_ICMS_vICMSSTRet;
   {217.w-N27a} Tratar_N27a_Produto_Imposto_ICMS_vBCFCPSTRet;
   {217.x-N27b} Tratar_N27b_Produto_Imposto_ICMS_pFCPSTRet;
   {217.y-N27d} Tratar_N27d_Produto_Imposto_ICMS_vFCPSTRet;
   {217.2-N34 } Tratar_N34_Produto_Imposto_ICMS_pRedBCEfet;
   {217.3-N35 } Tratar_N35_Produto_Imposto_ICMS_vBCEfet;
   {217.4-N36 } Tratar_N36_Produto_Imposto_ICMS_pICMSEfet;
   {217.5-N37 } Tratar_N37_Produto_Imposto_ICMS_vICMSEfet;
end;

procedure TfrmEmissaoDeNFe.Tratar_ICMS70;
begin
   //Somente se o Produto apresentar
   //(Código da Situação Tributária) STICMS = 70
   //---------------------------------------------------------------------------
   if qVENDA_ITEM.FieldByName('ICMS_CST').AsString <> '70' then
      exit;

   // Trata impostos de produtos
   // com ST do ICMS = '70':
   //---------------------------------------------------------------------------
   // Com redução de base de cálculo
   // e cobrança do ICMS por substituição tributária
   //---------------------------------------------------------------------------

   {185-N04}
   //ICMS70
   //Grupo de Tributação do ICMS = 70
   //Com redução de base de cálculo
   //e cobrança do ICMS por substituição tributária

   {219-N11   } Tratar_N11_Produto_Imposto_ICMS_orig;
   {220-N12   } Tratar_N12_Produto_Imposto_ICMS_CST;
   {221-N13   } Tratar_N13_Produto_Imposto_ICMS_modBC;
   {222-N14   } Tratar_N14_Produto_Imposto_ICMS_pRedBC;
   {223-N15   } Tratar_N15_Produto_Imposto_ICMS_vBC;
   {224-N16   } Tratar_N16_Produto_Imposto_ICMS_pICMS;
   {225-N17   } Tratar_N17_Produto_Imposto_ICMS_vICMS;
   {225.1-N17a} Tratar_N17a_Produto_Imposto_ICMS_vBCFCP;
   {225.2-N17b} Tratar_N17b_Produto_Imposto_ICMS_pFCP;
   {225.3-N17c} Tratar_N17c_Produto_Imposto_ICMS_vFCP;
   {226-N18   } Tratar_N18_Produto_Imposto_ICMS_modBCST;
   {227-N19   } Tratar_N19_Produto_Imposto_ICMS_pMVAST;
   {228-N20   } Tratar_N20_Produto_Imposto_ICMS_pRedBCST;
   {229-N21   } Tratar_N21_Produto_Imposto_ICMS_vBCST;
   {230-N22   } Tratar_N22_Produto_Imposto_ICMS_pICMSST;
   {231-N23   } Tratar_N23_Produto_Imposto_ICMS_vICMSST;
   {231.w-N23a} Tratar_N23a_Produto_Imposto_ICMS_vBCFCPST;
   {231.x-N23b} Tratar_N23b_Produto_Imposto_ICMS_pFCPST;
   {231.y-N23d} Tratar_N23d_Produto_Imposto_ICMS_vFCPST;
   {231.2-N28a} Tratar_N28a_Produto_Imposto_ICMS_vICMSDeson;
   {231.3-N28 } Tratar_N28_Produto_Imposto_ICMS_motDesICMS;
end;

procedure TfrmEmissaoDeNFe.Tratar_ICMS90;
begin
   //Somente se o Produto apresentar
   //(Código da Situação Tributária) STICMS = 90
   //---------------------------------------------------------------------------
   if qVENDA_ITEM.FieldByName('ICMS_CST').AsString <> '90' then
      exit;

   // Trata impostos de produtos
   // com ST do ICMS = '90':
   //---------------------------------------------------------------------------
   // Outros
   //---------------------------------------------------------------------------

   {232-N10}
   //ICMS90
   //Grupo de Tributação do ICMS = 90
   //Outros

   {233-N11   } Tratar_N11_Produto_Imposto_ICMS_orig;
   {234-N12   } Tratar_N12_Produto_Imposto_ICMS_CST;
   {235-N13   } Tratar_N13_Produto_Imposto_ICMS_modBC;
   {236-N15   } Tratar_N15_Produto_Imposto_ICMS_vBC;
   {237-N14   } Tratar_N14_Produto_Imposto_ICMS_pRedBC;
   {238-N16   } Tratar_N16_Produto_Imposto_ICMS_pICMS;
   {239-N17   } Tratar_N17_Produto_Imposto_ICMS_vICMS;
   {239.w-N17a} Tratar_N17a_Produto_Imposto_ICMS_vBCFCP;
   {239.x-N17b} Tratar_N17b_Produto_Imposto_ICMS_pFCP;
   {239.y-N17c} Tratar_N17c_Produto_Imposto_ICMS_vFCP;
   {240-N18   } Tratar_N18_Produto_Imposto_ICMS_modBCST;
   {241-N19   } Tratar_N19_Produto_Imposto_ICMS_pMVAST;
   {242-N20   } Tratar_N20_Produto_Imposto_ICMS_pRedBCST;
   {243-N21   } Tratar_N21_Produto_Imposto_ICMS_vBCST;
   {244-N22   } Tratar_N22_Produto_Imposto_ICMS_pICMSST;
   {245-N23   } Tratar_N23_Produto_Imposto_ICMS_vICMSST;
   {245.w-N23a} Tratar_N23a_Produto_Imposto_ICMS_vBCFCPST;
   {245.x-N23b} Tratar_N23b_Produto_Imposto_ICMS_pFCPST;
   {245.y-N23d} Tratar_N23d_Produto_Imposto_ICMS_vFCPST;
   {245.2-N28a} Tratar_N28a_Produto_Imposto_ICMS_vICMSDeson;
   {245.3-N28 } Tratar_N28_Produto_Imposto_ICMS_motDesICMS;
end;

procedure TfrmEmissaoDeNFe.Tratar_Partilha_do_ICMS;
begin
   // Somente CST ICMS = '10' e '90'
   //        10-Tributada e com cobrança do ICMS por substituição tributária
   //        90–Outros
   //---------------------------------------------------------------------------
   if (qVENDA_ITEM.FieldByName('ICMS_CST').AsString <> '10') and
      (qVENDA_ITEM.FieldByName('ICMS_CST').AsString <> '90') Then
      exit;

   //CST
   //Tributação do ICMS
   //Tributação pelo ICMS
   //        10-Tributada e com cobrança do ICMS por substituição tributária
   //        90–Outros

   {245.01-N10a}
   //ICMSPart
   //Partilha do ICMS entre a UF de origem e UF de destino ou
   //a UF definida na legislação.
   //Operação interestadual para consumidor final com partilha do ICMS
   //devido na operação entre a UF de origem e a UF do destinatário ou a
   //UF definida na legislação.
   //(Ex. UF da concessionária de entrega do  veículos) (v2.0)
   //ICMSPart := 0;

   {245.02-N11} Tratar_N11_Produto_Imposto_ICMS_orig;
   {245.03-N12} Tratar_N12_Produto_Imposto_ICMS_CST;
   {245.04-N13} Tratar_N13_Produto_Imposto_ICMS_modBC;
   {245.05-N15} Tratar_N15_Produto_Imposto_ICMS_vBC;
   {245.06-N14} Tratar_N14_Produto_Imposto_ICMS_pRedBC;
   {245.07-N16} Tratar_N16_Produto_Imposto_ICMS_pICMS;
   {245.08-N17} Tratar_N17_Produto_Imposto_ICMS_vICMS;
   {245.09-N18} Tratar_N18_Produto_Imposto_ICMS_modBCST;
   {245.10-N19} Tratar_N19_Produto_Imposto_ICMS_pMVAST;
   {245.11-N20} Tratar_N20_Produto_Imposto_ICMS_pRedBCST;
   {245.12-N21} Tratar_N21_Produto_Imposto_ICMS_vBCST;
   {245.13-N22} Tratar_N22_Produto_Imposto_ICMS_pICMSST;
   {245.14-N23} Tratar_N23_Produto_Imposto_ICMS_vICMSST;
   {245.15-N25} Tratar_N25_Produto_Imposto_ICMS_pBCOp;
   {245.16-N24} Tratar_N24_Produto_Imposto_ICMS_UFST;
end;

procedure TfrmEmissaoDeNFe.Tratar_Repasse_do_ICMS_ST;
begin
   //Grupo de informação do ICMS ST devido para a UF de destino,
   //nas operações interestaduais
   //de produtos que tiveram retenção antecipada de ICMS por ST
   //na UF do remetente.
   //Repasse via Substituto Tributário. (v2.0)
   //---------------------------------------------------------------------------

   // Apenas para operações interestaduais
   if Nota.Ide.idDest <> doInterestadual then exit;

   // Apenas para produtos com ICMS ST retido
   if (qVENDA_ITEM.FieldByName('ICMS_CST').AsString <> '41') then
      exit;

   {245.18-N11  } Tratar_N11_Produto_Imposto_ICMS_orig;
   {245.19-N12  } Tratar_N12_Produto_Imposto_ICMS_CST;
   {245.20-N26  } Tratar_N26_Produto_Imposto_ICMS_vBCSTRet;
   {245.20a-N26a} Tratar_N26a_Produto_Imposto_ICMS_pST;
   {245.20b-N26b} Tratar_N26b_Produto_Imposto_ICMS_vICMSSubstituto;
   {245.21-N27  } Tratar_N27_Produto_Imposto_ICMS_vICMSSTRet;
   {      N27a  } Tratar_N27a_Produto_Imposto_ICMS_vBCFCPSTRet;
   {      N27b  } Tratar_N27b_Produto_Imposto_ICMS_pFCPSTRet;
   {      N27d  } Tratar_N27d_Produto_Imposto_ICMS_vFCPSTRet;
   {245.22-N31  } Tratar_N31_Produto_Imposto_ICMS_vBCSTDest;
   {245.23-N32  } Tratar_N32_Produto_Imposto_ICMS_vICMSSTDes;
   {245.23b-N34 } Tratar_N34_Produto_Imposto_ICMS_pRedBCEfet;
   {245.23c-N35 } Tratar_N35_Produto_Imposto_ICMS_vBCEfet;
   {245.23d-N36 } Tratar_N36_Produto_Imposto_ICMS_pICMSEfet;
   {245.23e-N37 } Tratar_N37_Produto_Imposto_ICMS_vICMSEfet;
end;

procedure TfrmEmissaoDeNFe.Tratar_SubGrupo_DI_Declaracao_de_Importacao;
var vnSeqAdi:Integer;
begin
   //Somente se o tipo de movimento está configurado para tratar o grupo DI
   //---------------------------------------------------------------------------
   if qTPMOV.FieldByName('TPMOV_NFE_TRATAR_GRUPO_DI_DECLARACAO_DE_IMPORTACAO').AsInteger = 0 then
      exit;

   //---------------------------------------------------------------------------
   // LAYOUT FEDERAL
   //---------------------------------------------------------------------------
   // TRATAMENTO DO SUBGRUPO DI - Declaração de Importação
   //---------------------------------------------------------------------------

   // Somente para produtos importados
   Case qVENDA_ITEM.FieldByName('CODIGO_ORIGEM_MERCADORIA').AsInteger of
      0, //Nacional;
      3, //Nacional Conteudo Importacao Superior a 40
      4, //Nacional Processos Basicos
      5, //Nacional Conteudo Importacao Inferior Igual 40
      8  //Nacional Conteudo Importacao Superior a 70
      : exit;
   End;

   {117-I18}
   //(DI)
   //Tag da Declaração de Importação
   //Informar dados da importação
   with Produto.Prod.DI.New do
   begin
      {118-I19}
      //(nDI)
      //Número do Documento de Importação DI/DSI/DA
      nDi := qVENDA_ITEM.FieldByName('NFe_nDI').AsString;

      {119-I20}
      //(dDI)
      //Data de Registro da DI/DSI/DA
      //Formato “AAAA-MM-DD”
      dDi := qVENDA_ITEM.FieldByName('NFe_dDI').AsDateTime;

      {120-I21}
      //(xLocDesemb)
      //Local de desembaraço
      xLocDesemb := qVENDA_ITEM.FieldByName('NFe_xLocDesemb').AsString;

      {121-I22}
      //(UFDesemb)
      //Sigla da UF onde ocorreu o Desembaraço Aduaneiro
      UFDesemb := qVENDA_ITEM.FieldByName('NFe_UFDesemb').AsString;

      {122-I23}
      //(dDesemb)
      //Data do Desembaraço Aduaneiro
      //Formato “AAAA-MM-DD”
      dDesemb := qVENDA_ITEM.FieldByName('NFe_dDesemb').AsDateTime;

      {123-I24}
      //(cExportador)
      //Código do exportador
      //Usado nos sistemas internos de informação do emitente da NF-e
      cExportador := qVENDA_ITEM.FieldByName('NFe_cExportador').AsString;

      {124-I25}
      //(adi)
      //Adições
      vnSeqAdi:=0;
      With adi.New do
      begin
        inc(vnSeqAdi);
        {125-I26}
        //(nAdicao)
        //Numero da adição
        nAdicao := qVENDA_ITEM.FieldByName('NFe_nAdicao').AsInteger;

        {126-I27}
        //(nSeqAdic)
        //Numero seqüencial do item dentro da adição
        nSeqAdi := vnSeqAdi;

        {127-I28}
        //(cFabricante)
        //Código do fabricante estrangeiro
        //usado nos sistemas internos de informação do emitente da NF-e
        cFabricante := qVENDA_ITEM.FieldByName('NFe_cFabricante').AsString;

        {128-I29}
        //(vDescDI)
        //Valor do desconto do item da  DI – adição
        vDescDI := qVENDA_ITEM.FieldByName('NFe_vDescDI').AsFloat;

        {128a-I30}
        //(xPed)
        //Número do Pedido de Compra
        //Informação de interesse do emissor para controle do B2B. (v2.0)
        //*** Não implementado no ACBr

        {128b-I31}
        //(nItemPed)
        //Item do Pedido de Compra
        //Informação de interesse do emissor para controle do B2B. (v2.0)
        //*** Não implementado no ACBr

      end; // (adi)

   end; // (DI)

end;

procedure TfrmEmissaoDeNFe.Tratar_CSOSN;
var vNFe_CSOSN : Integer;
begin
   if qEmitente.FieldByName('CODIGO_REGIME_TRIBUTARIO').AsString <> '1' then
      exit;

   if qEmitente.FieldByName('NFe_CSOSN').AsString = '' then
      vNFe_CSOSN := 000
   else
   begin
      try
        vNFe_CSOSN := StrToInt(qEmitente.FieldByName('NFe_CSOSN').AsString);
      except
      end;
   end;

   case vNFe_CSOSN of
    000 : Tratar_CSOSN_000; // Não informado
    101 : Tratar_CSOSN_101; // Tributada pelo Simples Nacional com permissão de crédito.
    102 : Tratar_CSOSN_102; // Tributada pelo Simples Nacional sem permissão de crédito.
    103 : Tratar_CSOSN_103; // Isenção do ICMS  no Simples Nacional para faixa de receita bruta.
    201 : Tratar_CSOSN_201; // Tributada pelo Simples Nacional com permissão de crédito e com cobrança do ICMS por Substituição Tributária
    202 : Tratar_CSOSN_202; // Tributada pelo Simples Nacional sem permissão de crédito e com cobrança do ICMS por Substituição Tributária
    203 : Tratar_CSOSN_203; // Isenção do ICMS nos Simples Nacional para faixa de receita bruta e com cobrança do ICMS por Substituição Tributária (v.2.0)
    300 : Tratar_CSOSN_300; // Imune
    400 : Tratar_CSOSN_400; // Não tributada pelo Simples Nacional (v.2.0) (v.2.0)
    500 : Tratar_CSOSN_500; // ICMS cobrado anteriormente por substituição tributária (substituído) ou por antecipação
    900 : Tratar_CSOSN_900; // Outros
   end;

   Somar_Totais_Parciais;

end;

procedure TfrmEmissaoDeNFe.Tratar_CSOSN_000;
begin
   //CRT   = 1 – Simples Nacional
   //CSOSN = não informado
   //---------------------------------------------------------------------------

   {245.26-N12a} Tratar_N12_Produto_Imposto_ICMS_CSOSN(csosnVazio);
   {245.27-N29 } Tratar_N29_Produto_Imposto_ICMS_pCredSN;
   {245.28-N30 } Tratar_N30_Produto_Imposto_ICMS_vCredICMSSN;
end;

procedure TfrmEmissaoDeNFe.Tratar_CSOSN_101;
begin
   //CRT   = 1  –Simples Nacional
   //CSOSN = 101-Tributada pelo Simples Nacional com permissão de crédito.
   //---------------------------------------------------------------------------

   {245.24-N10c}
   //ICMSSN101
   //Grupo CRT=1 – Simples Nacional e CSOSN=101
   //Tributação do ICMS pelo SIMPLES NACIONAL e CSOSN=101 (v.2.0)

   {245.25-N11 } Tratar_N11_Produto_Imposto_ICMS_orig;
   {245.26-N12a} Tratar_N12_Produto_Imposto_ICMS_CSOSN(csosn101);
   {245.27-N29 } Tratar_N29_Produto_Imposto_ICMS_pCredSN;
   {245.28-N30 } Tratar_N30_Produto_Imposto_ICMS_vCredICMSSN;
end;

procedure TfrmEmissaoDeNFe.Tratar_CSOSN_102;
begin
   //CRT  =  1 – Simples Nacional
   //CSOSN=102 - Tributada pelo Simples Nacional sem permissão de crédito.
   //---------------------------------------------------------------------------
   Tratar_CSOSN_102_103_300_400(csosn102);
end;

procedure TfrmEmissaoDeNFe.Tratar_CSOSN_102_103_300_400(pCSOSN: TpcnCSOSNIcms);
begin
   //CRT  =   1-Simples Nacional
   //CSOSN= 102-Tributada pelo Simples Nacional sem permissão de crédito
   //       103–Isenção do ICMS  no Simples Nacional para faixa de receita bruta
   //       300–Imune
   //       400–Não tributada pelo Simples Nacional (v.2.0) (v.2.0)
   //---------------------------------------------------------------------------
   {245.25-N11 } Tratar_N11_Produto_Imposto_ICMS_orig;
   {245.26-N12a} Tratar_N12_Produto_Imposto_ICMS_CSOSN(pCSOSN);
end;

procedure TfrmEmissaoDeNFe.Tratar_CSOSN_103;
begin
   //CRT  =  1–Simples Nacional
   //CSOSN=103-Isenção do ICMS  no Simples Nacional para faixa de receita bruta
   //---------------------------------------------------------------------------
   Tratar_CSOSN_102_103_300_400(csosn103);
end;

procedure TfrmEmissaoDeNFe.Tratar_CSOSN_201;
begin
   //CRT   =   1 – Simples Nacional
   //CSOSN = 201 - Tributada pelo Simples Nacional com permissão de crédito e
   //              com cobrança do ICMS por Substituição Tributária
   //---------------------------------------------------------------------------

   {245.27-N10e}
   //ICMSSN201
   //Grupo CRT=1 – Simples Nacional e CSOSN=201
   //Tributação do ICMS pelo SIMPLES NACIONAL e CSOSN=201 (v.2.0)

   {245.28-N11 } Tratar_N11_Produto_Imposto_ICMS_orig;
   {245.29-N12a} Tratar_N12_Produto_Imposto_ICMS_CSOSN(csosn201);
   {245.30-N18 } Tratar_N18_Produto_Imposto_ICMS_modBCST;
   {245.31-N19 } Tratar_N19_Produto_Imposto_ICMS_pMVAST;
   {224.32-N20 } Tratar_N20_Produto_Imposto_ICMS_pRedBCST;
   {245.33-N21 } Tratar_N21_Produto_Imposto_ICMS_vBCST;
   {245.34-N22 } Tratar_N22_Produto_Imposto_ICMS_pICMSST;
   {245.35-N23 } Tratar_N23_Produto_Imposto_ICMS_vICMSST;
   {      N23a } Tratar_N23a_Produto_Imposto_ICMS_vBCFCPST;
   {      N23b } Tratar_N23b_Produto_Imposto_ICMS_pFCPST;
   {      N23d } Tratar_N23d_Produto_Imposto_ICMS_vFCPST;
   {245.36-N29 } Tratar_N29_Produto_Imposto_ICMS_pCredSN;
   {245.37-N30 } Tratar_N30_Produto_Imposto_ICMS_vCredICMSSN;
end;

procedure TfrmEmissaoDeNFe.Tratar_CSOSN_202;
begin
   //CRT   =   1 – Simples Nacional
   //CSOSN = 202
   //---------------------------------------------------------------------------
   Tratar_CSOSN_202_203(csosn202);
end;

procedure TfrmEmissaoDeNFe.Tratar_CSOSN_203;
begin
   //CRT   =   1 – Simples Nacional
   //CSOSN = 203
   //---------------------------------------------------------------------------
   Tratar_CSOSN_202_203(csosn203);
end;

procedure TfrmEmissaoDeNFe.Tratar_CSOSN_202_203(pCSOSN: TpcnCSOSNIcms);
begin
   //CRT   =   1 – Simples Nacional
   //CSOSN = 202 - Tributada pelo Simples Nacional sem permissão de crédito e
   //              com cobrança do ICMS por Substituição Tributária
   //        203 - Isenção do ICMS nos Simples Nacional para faixa de receita
   //              bruta e com cobrança do ICMS por Substituição Tributária
   //---------------------------------------------------------------------------

   {245.38-N10f}
   //ICMSSN202
   //Grupo CRT=1 – Simples Nacional e CSOSN=202 ou 203
   //Tributação do ICMS pelo SIMPLES NACIONAL e CSOSN=202 ou 203 (v.2.0) 245
   //   202-Tributada pelo Simples Nacional sem permissão de crédito e com cobrança do ICMS por Substituição Tributária
   //   203-Isenção do ICMS nos Simples Nacional para faixa de receita bruta e com cobrança do ICMS por Substituição Tributária (v.2.0)

   {245.39-N11  } Tratar_N11_Produto_Imposto_ICMS_orig;
   {245.40 N12a } Tratar_N12_Produto_Imposto_ICMS_CSOSN(pCSOSN);
   {245.41-N18  } Tratar_N18_Produto_Imposto_ICMS_modBCST;
   {245.42-N19  } Tratar_N19_Produto_Imposto_ICMS_pMVAST;
   {224.43-N20  } Tratar_N20_Produto_Imposto_ICMS_pRedBCST;
   {245.44-N21  } Tratar_N21_Produto_Imposto_ICMS_vBCST;
   {245.45-N22  } Tratar_N22_Produto_Imposto_ICMS_pICMSST;
   {245.46-N23  } Tratar_N23_Produto_Imposto_ICMS_vICMSST;
   {245.46w-N23a} Tratar_N23a_Produto_Imposto_ICMS_vBCFCPST;
   {245.46x-N23b} Tratar_N23b_Produto_Imposto_ICMS_pFCPST;
   {245.46y-N23d} Tratar_N23d_Produto_Imposto_ICMS_vFCPST;
end;

procedure TfrmEmissaoDeNFe.Tratar_CSOSN_300;
begin
   //CRT  =  1 – Simples Nacional
   //CSOSN=300 - Imune
   //---------------------------------------------------------------------------
   Tratar_CSOSN_102_103_300_400(csosn300);
end;

procedure TfrmEmissaoDeNFe.Tratar_CSOSN_400;
begin
   //CRT  =  1 – Simples Nacional
   //CSOSN=400 - Não tributada pelo Simples Nacional (v.2.0) (v.2.0)
   //---------------------------------------------------------------------------
   Tratar_CSOSN_102_103_300_400(csosn400);
end;

procedure TfrmEmissaoDeNFe.Tratar_CSOSN_500;
begin
   //CRT   = 1 – Simples Nacional
   //CSOSN = 500 – ICMS cobrado anteriormente por substituição tributária
   //(substituído) ou por antecipação
   //---------------------------------------------------------------------------

   {245.47-N10g}
   //ICMSSN500
   //Grupo CRT=1 – Simples Nacional e CSOSN = 500
   //Tributação do ICMS pelo SIMPLES NACIONAL e  CSOSN=500 (v.2.0)

   {245.48-N11   } Tratar_N11_Produto_Imposto_ICMS_orig;
   {245.49 N12a  } Tratar_N12_Produto_Imposto_ICMS_CSOSN(csosn500);
   {245.50-N26   } Tratar_N26_Produto_Imposto_ICMS_vBCSTRet;
   {245.50.0-N26a} Tratar_N26a_Produto_Imposto_ICMS_pST;
   {245.50.1-N26b} Tratar_N26b_Produto_Imposto_ICMS_vICMSSubstituto;
   {245.51-N27   } Tratar_N27_Produto_Imposto_ICMS_vICMSSTRet;
   {245.51w-N27a } Tratar_N27a_Produto_Imposto_ICMS_vBCFCPSTRet;
   {245.51x-N27b } Tratar_N27b_Produto_Imposto_ICMS_pFCPSTRet;
   {245.51y-N27d } Tratar_N27d_Produto_Imposto_ICMS_vFCPSTRet;
   {245.51.2-N34 } Tratar_N34_Produto_Imposto_ICMS_pRedBCEfet;
   {245.51.3-N35 } Tratar_N35_Produto_Imposto_ICMS_vBCEfet;
   {245.51.4-N36 } Tratar_N36_Produto_Imposto_ICMS_pICMSEfet;
   {245.51.5-N37 } Tratar_N37_Produto_Imposto_ICMS_vICMSEfet;
end;

procedure TfrmEmissaoDeNFe.Tratar_CSOSN_900;
begin
   //CRT   =   1 – Simples Nacional
   //CSOSN = 900 - Outros
   //---------------------------------------------------------------------------

   {245.52-N10h}
   //ICMSSN900
   //TAG de Grupo CRT=1 – Simples Nacional e CSOSN=900
   //Tributação do ICMS pelo SIMPLES NACIONAL e CSOSN=900 (v2.0)

   {245.53-N11 } Tratar_N11_Produto_Imposto_ICMS_orig;
   {245.54-N12a} Tratar_N12_Produto_Imposto_ICMS_CSOSN(csosn900);
   {245.55-N13 } Tratar_N13_Produto_Imposto_ICMS_modBC;
   {245.56-N15 } Tratar_N15_Produto_Imposto_ICMS_vBC;
   {245.57-N14 } Tratar_N14_Produto_Imposto_ICMS_pRedBC;
   {245.58-N16 } Tratar_N16_Produto_Imposto_ICMS_pICMS;
   {245.59-N17 } Tratar_N17_Produto_Imposto_ICMS_vICMS;
   {245.60-N18 } Tratar_N18_Produto_Imposto_ICMS_modBCST;
   {245.61-N19 } Tratar_N19_Produto_Imposto_ICMS_pMVAST;
   {245.62-N20 } Tratar_N20_Produto_Imposto_ICMS_pRedBCST;
   {245.63-N21 } Tratar_N21_Produto_Imposto_ICMS_vBCST;
   {245.64-N22 } Tratar_N22_Produto_Imposto_ICMS_pICMSST;
   {245.65-N23 } Tratar_N23_Produto_Imposto_ICMS_vICMSST;
   {       N23a} Tratar_N23a_Produto_Imposto_ICMS_vBCFCPST;
   {       N23b} Tratar_N23b_Produto_Imposto_ICMS_pFCPST;
   {       N23d} Tratar_N23d_Produto_Imposto_ICMS_vFCPST;
   {245.52-N29 } Tratar_N29_Produto_Imposto_ICMS_pCredSN;
   {245.53-N30 } Tratar_N30_Produto_Imposto_ICMS_vCredICMSSN;
end;

procedure TfrmEmissaoDeNFe.Tratar_N28a_Produto_Imposto_ICMS_vICMSDeson;
begin
   {N28a}
   //Valor da Desoneração do ICMS
   //---------------------------------------------------------------------------
   Produto.Imposto.ICMS.vICMSDeson := 0;
end;

procedure TfrmEmissaoDeNFe.Tratar_N28_Produto_Imposto_ICMS_motDesICMS;
begin
   {N28}
   //Motivo da desoneração do ICMS
   //Este campo será preenchido quando o campo anterior estiver preenchido.
   //Informar o motivo da desoneração:
   //       1–Táxi
   //       2–Deficiente Físico
   //       3–Produtor Agropecuário
   //       4–Frotista/Locadora
   //       5–Diplomático/Consular
   //       6–Utilitários e Motocicletas da Amazônia Ocidental
   //         e Áreas de Livre Comércio (Resolução 714/88 e 790/94 – CONTRAN
   //         e suas alterações)
   //       7–SUFRAMA
   //       9–outros. (v2.0)
   //---------------------------------------------------------------------------
   with Produto.Imposto.ICMS do
   begin
      case qVENDA_ITEM.FieldByName('NFe_motDesICMS').AsInteger of
         0 : motDesICMS := mdiTaxi;
         1 : motDesICMS := mdiDeficienteFisico;
         2 : motDesICMS := mdiProdutorAgropecuario;
         3 : motDesICMS := mdiFrotistaLocadora;
         4 : motDesICMS := mdiDiplomaticoConsular;
         5 : motDesICMS := mdiAmazoniaLivreComercio;
         6 : motDesICMS := mdiSuframa;
         7 : motDesICMS := mdiVendaOrgaosPublicos;
         8 : motDesICMS := mdiOutros;
         9 : motDesICMS := mdiDeficienteCondutor;
        10 : motDesICMS := mdiDeficienteNaoCondutor;
        11 : motDesICMS := mdiOrgaoFomento;
        12 : motDesICMS := mdiOlimpiadaRio2016;
        13 : motDesICMS := mdiSolicitadoFisco;
      end;
   end;
end;

procedure TfrmEmissaoDeNFe.Tratar_N29_Produto_Imposto_ICMS_pCredSN;
begin
   {N29}
   //pCredSN
   //Alíquota aplicável de cálculo do crédito (Simples Nacional
   //---------------------------------------------------------------------------
   Produto.Imposto.ICMS.pCredSN := qEMITENTE.FieldByName('NFe_ALIQ_CREDITO_ICMS').AsFloat;
end;

procedure TfrmEmissaoDeNFe.Tratar_N30_Produto_Imposto_ICMS_vCredICMSSN;
begin
   {N30}
   //vCredICMSSN
   //Valor crédito do ICMS que pode ser aproveitado
   //nos termos do art. 23 da LC 123 (Simples Nacional)
   //---------------------------------------------------------------------------
   with Produto.Imposto.ICMS do
   begin
      vCredICMSSN := pCredSN / 100 * vBC;
   end;
end;

procedure TfrmEmissaoDeNFe.Tratar_N31_Produto_Imposto_ICMS_vBCSTDest;
begin
   {N31}
   //vBCSTDest
   //Valor da BC do ICMS ST da UF destino
   //Informar o valor da BC do ICMS ST da UF destino (v2.0)
   //---------------------------------------------------------------------------
   Produto.Imposto.ICMS.vBCSTDest := Produto.Prod.vProd;
end;

procedure TfrmEmissaoDeNFe.Tratar_N32_Produto_Imposto_ICMS_vICMSSTDes;
begin
   {N32}
   //vICMSSTDes
   //Valor do ICMS ST da UF destino
   //Informar o valor da BC do ICMS ST da UF destino (v2.0)
   //---------------------------------------------------------------------------
   Produto.Imposto.ICMS.vICMSSTDest := 0;
end;

procedure TfrmEmissaoDeNFe.Tratar_N36_Produto_Imposto_ICMS_pICMSEfet;
begin
   {N36}
   //Alíquota do ICMS na operação a consumidor final, caso esteja submetido ao
   //regime comum de tributação.
   //Obs.: opcional a critério da UF
   //                                             (Criado na NT 2018.005 v1.10).
   //---------------------------------------------------------------------------
   Produto.Imposto.ICMS.pICMSEfet := 0;
end;

procedure TfrmEmissaoDeNFe.Tratar_N34_Produto_Imposto_ICMS_pRedBCEfet;
begin
   {N34}
   //Percentual de redução, caso esteja submetido ao regime comum de
   //tributação, para obtenção da base de cálculo efetiva (vBCEfet).
   //Obs.: opcional a critério da UF.
   //---------------------------------------------------------------------------
   Produto.Imposto.ICMS.pRedBCEfet := 0;
end;

procedure TfrmEmissaoDeNFe.Tratar_N26a_Produto_Imposto_ICMS_pST;
begin
   {N26a}
   //Alíquota suportada pelo Consumidor Final
   //Deve ser informada a alíquota do cálculo do ICMS-ST, já incluso o FCP caso
   //incida sobre a mercadoria.
   //Exemplo:
   //    alíquota da mercadoria na venda ao consumidor final = 18%
   //    FCP = 2%
   //    A alíquota a ser informada no campo pST deve ser 20%.
   //                                                   (Atualizado NT 2016/002)
   //---------------------------------------------------------------------------
   Produto.Imposto.ICMS.pST := 0;
end;

procedure TfrmEmissaoDeNFe.Tratar_N35_Produto_Imposto_ICMS_vBCEfet;
begin
   {N35}
   //Valor da base de cálculo que seria atribuída à operação própria do
   //contribuinte substituído, caso esteja submetido ao regime comum de
   //tributação, obtida pelo produto do Vprod por (1-pRedBCEfet).
   //Obs.: opcional a critério da UF.   //---------------------------------------------------------------------------   //With Produto.Imposto.ICMS do   //begin
   //  vBCEfet := (100-pRedBCEfet)/100 * Produto.Prod.vProd;
   //end;
end;

procedure TfrmEmissaoDeNFe.Tratar_N37_Produto_Imposto_ICMS_vICMSEfet;
begin
  {N37}
  //Obtido pelo produto do valor do campo pICMSEfet pelo valor do campo vBCEfet,
  //caso esteja submetida ao regime comum de tributação.
  //Obs.: opcional a critério da UF.
  //                                               (Criado na NT 2018.005 v1.10)
  //----------------------------------------------------------------------------
  With Produto.Imposto.ICMS do
  begin
     vICMSEfet:= pICMSEfet / 100 * vBCEfet;
  end;
end;

procedure TfrmEmissaoDeNFe.Tratar_N26b_Produto_Imposto_ICMS_vICMSSubstituto;
begin
   {N26b}
   //Valor do ICMS Próprio do Substituto cobrado em operação anterior.
   //                                                      Criado na NT 2018.005
   //                                                  Atualizado na NT 2018.005   //v1.20   //---------------------------------------------------------------------------
   With Produto.Imposto.ICMS do
   begin
      vICMSSubstituto:= pST / 100 * vBCSTRet;
   end;
end;

procedure TfrmEmissaoDeNFe.Trata_NFe;
begin
   //Processa todos os passos da emissão da Nota Fiscal Eletrônica modelo 55
   //e emite a NFe
   //---------------------------------------------------------------------------

   //Inicializar variáveis somadoras que alimentarão os totalizadores da NFe
   Zerar_Somadores_NFe;

   //g_NFE_ou_NFCe
   if not LerConfiguracao then exit;

  // Carrega todas as configuracoes de emissão de doc fiscal
  if not LerConfiguracao then exit;

  // Carrega o pedido para emissão da NFe
  if not Carregar_Venda(g_Numero_do_Movimento) then exit;

  // Carrega itens do pedido para emissão da NFe
  if not Carregar_Venda_Itens(g_Numero_do_Movimento) then exit;

  //Carrega dados do Transportador
  Carregar_Transportador(qVENDA.FieldByName('Transportador').AsInteger);

  //Carrega dados do Transportador_Veiculo
  Carregar_Transportador_Veiculo(qVENDA.FieldByName('Transportador_Veiculo').AsInteger);

  //Carregar dados dos Lacres usados no transporte do movimento
  Carregar_Venda_Lacre(g_Numero_do_Movimento);
  //Criticar se há alguim produto sem ICMS_CST
  if AlgumProdutoSem_ICMS_ST then exit;

  // Criticar se há alguim produto sem a origem da mercadoria
  if AlgumProdutoSem_CODIGO_ORIGEM_MERCADORIA then exit;

  if Algum_Nao_eh_Produto_nem_Servico then exit;

  // Carregar configurações do tipo de movimento associado ao pedido
  if not Carregar_TipoDeMovimento(qVENDA.FieldByName('VENDA_TPMOV').AsString) then exit;

  // Carregar natureza de operação
  if not Carregar_NaturezaDeOperacao(qVENDA.FieldByName('VENDA_NATUREZA_OPERACAO').AsInteger) then exit;

  // Carrega dados do cliente/fornecedor (destinatário) do doc fiscal
  if not Carregar_Destinatario(qVENDA.FieldByName('CODIGO_CLIENTE').AsString) then exit;

  // Criticar os dados carregados
  if not Dados_Corretos then exit;

  // Calcular os impostos do documento fiscal a ser emitido
  if not CalcularImpostos_NFe(g_Numero_do_Movimento) then
     exit;

  // Enviar a NFe (XML) para a SEFAZ
  iF TransmitirNFe Then
  begin
     // Muda o status do pedido para NFe emitida
     MarcaVendaComoNotaEmitidaOK(g_Numero_do_Movimento, xNumNota);
  end;
end;

function TfrmEmissaoDeNFe.Venda_Possui_Produtos_e_Servicos: Boolean;
begin
  // Percorrer qVENDA_ITEM a procura de serviços e produtos
  // Se a venda possui produtos e serviços, retorna true
  // Se a venda só possui produtos, e não possui serviços, retorna false
  //----------------------------------------------------------------------------
  result := false;
end;

procedure TfrmEmissaoDeNFe.Zerar_Somadores_NFe;
begin
   //Inicializar variáveis somadoras que alimentarão os totalizadores da NFe
   //---------------------------------------------------------------------------
   vNota_Total_ICMSTot_vBC       := 0;
   vNota_Total_ICMSTot_vICMS     := 0;
   vNota_Total_ICMSTot_vBCST     := 0;
   vNota_Total_ICMSTot_vST       := 0;
   vNota_Total_ICMSTot_vProd     := 0;
   vNota_Total_ICMSTot_vFrete    := 0;
   vNota_Total_ICMSTot_vSeg      := 0;
   vNota_Total_ICMSTot_vDesc     := 0;
   vNota_Total_ICMSTot_vII       := 0;
   vNota_Total_ICMSTot_vIPI      := 0;
   vNota_Total_ICMSTot_vPIS      := 0;
   vNota_Total_ICMSTot_vCOFINS   := 0;
   vNota_Total_ICMSTot_vOutro    := 0;
   vNota_Total_ICMSTot_vNF       := 0;

   vNota_Total_ISSQNtot_vServ    := 0;
   vNota_Total_ISSQNtot_vBC      := 0;
   vNota_Total_ISSQNtot_vISS     := 0;
   vNota_Total_ISSQNtot_vPIS     := 0;
   vNota_Total_ISSQNtot_vCOFINS  := 0;

   vNota_Total_retTrib_vRetPIS   := 0;
   vNota_Total_retTrib_vRetCOFINS:= 0;
   vNota_Total_retTrib_vRetCSLL  := 0;
   vNota_Total_retTrib_vBCIRRF   := 0;
   vNota_Total_retTrib_vIRRF     := 0;
   vNota_Total_retTrib_vBCRetPrev:= 0;
   vNota_Total_retTrib_vRetPrev  := 0;
end;

end.

{
-<ICMSTot>

<vBC>0.00</vBC>

<vICMS>0.00</vICMS>

<vICMSDeson>0.00</vICMSDeson>

<vFCP>0.00</vFCP>

<vBCST>0.00</vBCST>

<vST>0.00</vST>

<vFCPST>0.00</vFCPST>

<vFCPSTRet>0.00</vFCPSTRet>

<vProd>0.00</vProd>

<vFrete>0.00</vFrete>

<vSeg>0.00</vSeg>

<vDesc>0.00</vDesc>

<vII>0.00</vII>

<vIPI>0.00</vIPI>

<vIPIDevol>0.00</vIPIDevol>

<vPIS>0.00</vPIS>

<vCOFINS>0.00</vCOFINS>

<vOutro>0.00</vOutro>

<vNF>0.00</vNF>

Quando for emitida uma NF-e (modelo 55) ou NFC-e (modelo 65)
e o Total da Base de Cálculo do ICMS (Campo: total / ICMSTot / vBC - ID: W03)
informado no Grupo de Totais da NF-e, for diferente do somatório da
Base de Cálculo dos itens (Campo: vBC - ID: N15) que fazem parte do cálculo,
será retornado a rejeição "531 - Total da BC ICMS difere do somatório dos itens".


================================================================================
UF	         Sigla	 Percentual do FCP	         Legislação Interna
--------------------------------------------------------------------------------
Alagoas	         FECOEP	 Percentuais fixos em 1% e 2%	 Art. 2º do Decreto nº 2.845/2005
Amazonas         FPS	 Percentuais fixos em 1.90% e 2% Art. 1° da Lei n° 4.454/2017
Bahia	         FECP	 Percentual único fixo em 2%	 Art. 16-A da Lei nº 7.014/96
Ceará	         FECOP	 Percentual único fixo em 2%	 Lei Complementar n° 37/2007
Distrito Federal FCEP	 Percentual único fixo em 2%	 Art. 46-A do RICMS/DF
Espírito Santo	 FUNCOP	 Percentual único fixo em 2%	 Art. 71-A do RICMS/ES
Goiás	         PROTEGE Percentual máximo de 2%	 Art. 20, §6º, do RCTE/GO e/c com o Anexo XIV, do RCTE/GO
Maranhão	 FUMACOP Percentual único fixo em 2%	 Art. 5º da Lei nº 8.205/2004
Mato Grosso	 FECEP   Percentual único fixo em 2%	 Art. 95, § 7º, do RICMS/MT e/c Lei Complementar 144/2003
MS       	 FECOMP	 Percentual único fixo em 2%	 Art. 41-A da Lei nº 1.810/97
Minas Gerais	 FEM	 Percentual único fixo em 2%	 Art. 2°, inciso II, do Decreto n° 46.927/2015
Paraíba	         FUNCEP	 Percentual único fixo em 2%     Art. 2º do Decreto nº 25.618/2004
Paraná	         FECOP	 Percentual único fixo em 2%	 Art. 14-A da Lei n° 11.580/96 e/c Anexo XII do RICMS/PR
Pernambuco	 FECEP	 Percentual único fixo em 2%	 Lei n° 12.523/2003
Piauí	         FECOP	 Percentuais fixos em 1% e 2%	 Art. 23-D da Lei n° 4.257/89
Rio de Janeiro	 FECP	 Percentuais fixos de 2% e 4%	 Lei n° 4.056/2002
RN	         FECOP	 Percentual único fixo em 2%	 Art. 104-A do RICMS/RN
RS	         AMPARA	 Percentual único fixo em 2%	 Art. 27, § único, do RICMS/RS e/c Art. 28, § único, do RICMS/RS
Rondônia	 FECOEP	 Percentual máximo de 2%	 Art. 13 do RICMS/RO
São Paulo	 FECOEP	 Percentual único fixo em 2%	 Art. 56-C do RICMS/SP
Sergipe	         FECP	 Percentual único fixo em 2%	 Art. 40-A do RICMS/SE
Tocantins	 FECOEP	 Percentual único fixo em 2%	 Art. 513-I do RICMS/TO
** As UFs AC, AP, PA, RR e SC não possuem o adicional do FCP.
================================================================================

{
A|versao|Id|
B|cUF|cNF|NatOp|mod|serie|nNF|dhEmi|dhSaiEnt|tpNF|idDest|cMunFG|TpImp|TpEmis|cDV|TpAmb|FinNFe|indFinal|indPres|ProcEmi|VerProc|dhCont|xJust|
B13|refNFe|
BA02|refNFe|
BA03|cUF|AAMM|CNPJ|mod|serie|nNF|
BA10|cUF|AAMM|IE|mod|serie|nNF|refCTe|
BA13|CNPJ|
BA14|CPF|
BA20|mod|nECF|nCOO|
C|xNome|xFant|IE|IEST|IM|CNAE|CRT|
C02|CNPJ|
C02a|CPF|
C05|xLgr|nro|xCpl|xBairro|cMun|xMun|UF|CEP|cPais|xPais|fone|
D|CNPJ|xOrgao|matr|xAgente|fone|UF|nDAR|dEmi|vDAR|repEmi|dPag|
E|xNome|indIEDest|IE|ISUF|IM|email|
E02|CNPJ|
E03|CPF|
E03a|idEstrangeiro|
E05|xLgr|nro|xCpl|xBairro|cMun|xMun|UF|CEP|cPais|xPais|fone|
F|xLgr|nro|xCpl|xBairro|cMun|xMun|UF|CEP|cPais|xPais|fone|email|IE|
F02|CNPJ|
F02a|CPF|
F02b|xNome|
G|xLgr|nro|xCpl|xBairro|cMun|xMun|UF|CEP|cPais|xPais|fone|email|IE|
G02|CNPJ|
G02a|CPF|
G02b|xNome|
GA02|CNPJ|
GA03|CPF|
H|nItem|infAdProd|
I|cProd|cEAN|XProd|NCM|EXTIPI|CFOP|UCom|QCom|VUnCom|VProd|CEANTrib|UTrib|QTrib|VUnTrib|VFrete|VSeg|VDesc|vOutro|indTot|xPed|nItemPed|nFCI|indEscala|CNPJFab|cBenef
I05a|NVE|
I05c|CEST|
I18|nDI|dDI|xLocDesemb|UFDesemb|dDesemb|tpViaTransp|vAFRMM|tpIntermedio|CNPJ|UFTerceiro|cExportador|
I25|NAdicao|NSeqAdic|CFabricante|VDescDI|nDraw|
I50|nDraw|
I52|nRE|chNFe|qExport|
I80|nLote|qLote|dFab|dVal|cAgreg|
J|tpOp|Chassi|CCor|XCor|Pot|cilin|pesoL|pesoB|NSerie|TpComb|NMotor|CMT|Dist|anoMod|anoFab|tpPint|tpVeic|espVeic|VIN|condVeic|cMod|cCorDENATRAN|lota|tpRest|
K|cProdANVISA|xMotivoIsencao|vPMC|
L|tpArma|nSerie|nCano|descr|
LA|cProdANP|descANP|pGLP|pGNn|pGNi|vPart|CODIF|qTemp|UFCons|
LA11|nBico|nBomba|nTanque|vEncIni|vEncFin|
LA07|qBCProd|vAliqProd|vCIDE|
LB|nRECOPI|
L109|nRECOPI|
M|vTotTrib|


CST=00
N02|Orig|CST|modBC|vBC|pICMS|vICMS|pFCP|vFCP|

CST=10
N03|Orig|CST|modBC|vBC|pICMS|vICMS|vBCFCP|pFCP|vFCP|modBCST|pMVAST|pRedBCST|vBCST|pICMSST|vICMSST|vBCFCPST|pFCPST|vFCPST|

CST=20
N04|orig|CST|modBC|pRedBC|vBC|pICMS|vICMS|vBCFCP|pFCP|vFCP|vICMSDeson|motDesICMS|

CST=30
N05|orig|CST|modBCST|pMVAST|pRedBCST|vBCST|pICMSST|vICMSST|vBCFCPST|pFCPST|vFCPST|vICMSDeson|motDesICMS|

CST = 40_41_50
N06|orig|CST|vICMSDeson|motDesICMS|

CST = 51
N07|orig|CST|modBC|pRedBC|vBC|pICMS|vICMSOp|pDif|vICMSDif|vICMS|vBCFCP|pFCP|vFCP|

CST = 60
N08|Orig|CST|vBCSTRet|pST|vICMSSubstituto|vICMSSTRet|vBCFCPSTRet|pFCPSTRet|vFCPSTRet|pRedBCEfet|vBCEfet|pICMSEfet|vICMSEfet

CST = 70
N09|orig|CST|modBC|pRedBC|vBC|pICMS|vICMS|vBCFCP|pFCP|vFCP|modBCST|pMVAST|pRedBCST|vBCST|pICMSST|vICMSST|vBCFCPST|pFCPST|vFCPST|vICMSDeson|motDesICMS|

CST = 90
N10|orig|CST|modBC|vBC|pRedBC|pICMS|vICMS|vBCFCP|pFCP|vFCP|modBCST|pMVAST|pRedBCST|vBCST|pICMSST|vICMSST|vBCFCPST|pFCPST|vFCPST|vICMSDeson|motDesICMS|

CST <> 10
CST <> 90
N10a|orig|CST|modBC|vBC|pRedBC|pICMS|vICMS|modBCST|pMVAST|pRedBCST|vBCST|pICMSST|vICMSST|pBCOp|UFST|

CST <> '10'
CST <> '30'
CST <> '70'
N10b|orig|CST|vBCSTRet|pST|vICMSSubstituto|vICMSSTRet|vBCFCPSTRet|pFCPSTRet|vFCPSTRet|vBCSTDest|vICMSSTDest|pRedBCEfet|vBCEfet|pICMSEfet|vICMSEfet

ICMSSN101
N10c|orig|CSOSN|pCredSN|vCredICMSSN|

ICMSSN000
ICMSSN102_103_300_400
N10d|orig|CSOSN|

csosn 201
N10e|orig|CSOSN|modBCST|pMVAST|pRedBCST|vBCST|pICMSST|vICMSST|vBCFCPST|pFCPST|vFCPST|pCredSN|vCredICMSSN|

csosn 202_203
N10f|orig|CSOSN|modBCST|pMVAST|pRedBCST|vBCST|pICMSST|vICMSST|vBCFCPST|pFCPST|vFCPST|

csosn 500
N10g|orig|CSOSN|vBCSTRet|pST|vICMSSubstituto|vICMSSTRet|vBCFCPSTRet|pFCPSTRet|vFCPSTRet|pRedBCEfet|vBCEfet|pICMSEfet|vICMSEfet

csosn 900
N10h|orig|CSOSN|modBC|vBC|pRedBC|pICMS|vICMS|modBCST|pMVAST|pRedBCST|vBCST|pICMSST|vICMSST|vBCFCPST|pFCPST|vFCPST|pCredSN|vCredICMSSN|

NA|vBCUFDest|vBCFCPUFDest|pFCPUFDest|pICMSUFDest|pICMSInter|pICMSInterPart|vFCPUFDest|vICMSUFDest|vICMSUFRemet|
O|CNPJProd|cSelo|qSelo|cEnq|
O07|CST|vIPI|
O08|CST|
O10|vBC|pIPI|vIPI
O11|qUnid|vUnid|vIPI|
P|vBC|vDespAdu|vII|vIOF|
Q02|CST|VBC|PPIS|VPIS|
Q03|CST|QBCProd|VAliqProd|VPIS|
Q04|CST|
Q05|CST|vPIS|
Q07|vBC|pPIS|vPIS|
Q10|qBCProd|vAliqProd|
R|vPIS|
R02|vBC|pPIS|vPIS|
R04|qBCProd|vAliqProd|vPIS|
S02|CST|vBC|pCOFINS|vCOFINS|
S03|CST|QBCProd|VAliqProd|VCOFINS|
S04|CST|
S05|CST|VCOFINS|
S07|VBC|PCOFINS|
S09|QBCProd|VAliqProd|
T|VCOFINS|
T02|VBC|PCOFINS|
T04|QBCProd|VAliqProd|
U|VBC|VAliq|VISSQN|CMunFG|CListServ|vDeducao|vOutro|vDescIncond|vDescCond|vISSRet|indISS|cServico|cMun|cPais|nProcesso|indIncentivo|
UA|pDevol|
UA03|vIPIDevol|
W02|vBC|vICMS|vICMSDeson|vFCP|vBCST|vST|vFCPST|vFCPSTRet|vProd|vFrete|vSeg|vDesc|vII|vIPI|vIPIDevol|vPIS|vCOFINS|vOutro|vNF|vTotTrib|
W04c|vFCPUFDest|
W04e|vICMSUFDest|
W04g|vICMSUFRemet|
W17|VServ|VBC|VISS|VPIS|VCOFINS|dCompet|vDeducao|vOutro|vDescIncond|vDescCond|vISSRet|cRegTrib|
W23|VRetPIS|VRetCOFINS|VRetCSLL|VBCIRRF|VIRRF|VBCRetPrev|VRetPrev|
X|modFrete|
X03|xNome|IE|xEnder|xMun|UF|
X04|CNPJ|
X05|CPF|
X11|VServ|VBCRet|PICMSRet|VICMSRet|CFOP|CMunFG|
X18|Placa|UF|RNTC|
X22|Placa|UF|RNTC|
X25a|vagao|
X25b|balsa|
X26|QVol|Esp|Marca|NVol|PesoL|PesoB|
X33|NLacre|
Y02|NFat|VOrig|VDesc|VLiq|
Y07|NDup|DVenc|VDup|
YA01|indPag|tPag|vPag|
YA04|CNPJ|tBand|cAut|
YA09|vTroco|
Z|InfAdFisco|InfCpl|
Z04|XCampo|XTexto|
Z07|XCampo|XTexto|
Z10|NProc|IndProc|
ZA|UFSaidaPais|XLocExporta|XLocDespacho
ZB|XNEmp|XPed|XCont
ZB|Safra|Ref|QTotMes|QTotAnt|QTotGer|VFor|VTotDed|VLiqFor
ZC04|Dia|Qtde
ZC10|XDed|VDed
ZD01|CNPJ|xContato|email|fone|
ZD07|idCSRT|hashCSRT|
}
{
===========================================================================================
   |           |                                          |Tributação do ICMS
ID |Campo      |Descrição                                 |00 10 20 30 40 41 50 51 60 70 90
---|-----------|------------------------------------------|--------------------------------
N11|Orig       |Origem da mercadoria                      | S  S  S  S  S  S  S  S  S  S  ?
N12|CST        |Tributação do ICMS                        | S  S  S  S  S  S  S  S  S  S  ?
N13|modBC      |Modalidade de determinação da BC do ICMS  | S  S  S  N  N  N  N  ?  N  S  ?
N14|pRedBC     |Percentual da Redução de BC               | N  N  S  N  N  N  N  ?  N  S  ?
N15|vBC        |Valor da BC do ICMS                       | S  S  S  N  N  N  N  ?  N  S  ?
N16|pICMS      |Alíquota do imposto                       | S  S  S  N  N  N  N  ?  N  S  ?
N17|vICMS      |Valor do ICMS                             | S  S  S  N  N  N  N  ?  N  S  ?
N18|modBCST    |Modalidade de determinação da BC do ICMSST| N  S  N  S  N  N  N  N  N  S  ?
N19|pMVAST     |% da margem de valor Adicionado do ICMS ST| N  S  N  S  N  N  N  N  N  S  ?
N20|pRedBCST   |Percentual da Redução de BC do ICMS ST    | N  ?  N  ?  N  N  N  N  N  ?  ?
N21|vBCST      |Valor da BC do ICMS ST                    | N  S  N  S  N  N  N  N  S  S  ?
N22|pICMSST    |Alíquota do imposto do ICMS ST            | N  S  N  S  N  N  N  N  N  S  ?
N23|vICMSST    |Valor do ICMS ST                          | N  S  N  S  N  N  N  N  S  S  ?
N24|UFST       |UF para qual é devido o ICMS ST           | N  N  N  N  N  N  N  N  N  N  ?
N25|pBCop      |Percentual da BC operação própria         | N  N  N  N  N  N  N  N  N  N  ?
N26|vBCSTRet   |Valor da BC do ICMS Retido Anteriormente  | N  N  N  N  N  S  N  N  S  N  ?
N27|vICMSSTRet |Valor do ICMS Retido Anteriormente        | N  N  N  N  N  S  N  N  S  N  ?
N28|motDesICMS |Motivo da desoneração do ICMS             | N  N  N  N  N  N  N  N  N  N  ?
N31|vBCSTDest  |Valor da BC do ICMS ST da UF destino      | N  N  N  N  N  S  N  N  N  N  N
N32|vICMSSTDest|Valor do ICMS ST da UF destino            | N  N  N  N  N  S  N  N  N  N  N
===========================================================================================
 “S” – o campo deve ser informado,
 “N” – o campo não deve ser informado e
 “?” – a exigência do campo depende da situação fática.


Trocou UNIDADE_MEDIDA por PROD_UNIDADE : automaticamente em 16/06/2020 11:02
Trocou INFO_ADICIONAIS por PROD_DETALHES : automaticamente em 16/06/2020 12:06
Trocou PROD_UNIDADE por PROD_CDUNIDADE : automaticamente em 16/06/2020 17:06
Trocou SALDO por @_@_@_@_@_@ : automaticamente em 17/06/2020 21:30
Trocou @_@_@_@_@_@ por PROD_SALDO : automaticamente em 17/06/2020 21:32
Trocou ALIQ_ICMS por PROD_NFe_N16_pICMS : automaticamente em 18/06/2020 07:49
Trocou REDUCAO_ICMS por PROD_NFe_N14_pRedBC : automaticamente em 18/06/2020 07:53
Trocou PROD_NFe_N14_pRedBC_ST por PROD_NFe_N20_pRedBCST : automaticamente em 18/06/2020 09:43
Trocou VALOR_PAUTA_BC_ST por PROD_NFe_N21_vBCST_PAUTA : automaticamente em 18/06/2020 10:02
Trocou ALIQ_IPI por PROD_NFe_O13_pIPI : automaticamente em 18/06/2020 10:50
