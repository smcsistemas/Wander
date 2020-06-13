unit venda_pedido;
{
========================================================================================================================================
ALT|   DATA |HORA |UNIT                        |Descrição                                                                              |
---|--------|-----|----------------------------|----------------------------------------------------------------------------------------
291|12/06/20|20:24|venda_pedido                |Gravando VENDA. Falta gravar VENDA_ITEM
289|11/06/20|13:58|venda_pedido                |Incluido campo para informar placa do veículo que transportará a mercadoria da nota
258|06/06/20|05:35|venda_pedido                |Passa a usar a nova chave RPC_TPMOV da tabela RELACAO_CFOP_x_PRODUTO_xCST_PISCOFINS_RPC
252|03/06/20|05:34|venda_pedido                |Se encontrar algum produto sem o CST do ICMS informado, abre o cadastro do produto para que o usuário corrija.
251|03/06/20|05:34|venda_pedido                |Passa a criticar e avisar ao usuário se encontrar algum produto sem o CST do ICMS informado
248|01/06/20|14:16|venda_pedido                |Tratando os novos campos fiscas do cadastro do produto.
========================================================================================================================================

================================================================================
| ITEM|DATA  HR|UNIT                |HISTORICO                                 |
|-----|--------|--------------------|------------------------------------------|
|  139|14/05/20|wander              |Criada Consulta de Tipo de Movimento.     |
|     |   10:53|venda_pedido        |Este campo passa a ser obrigatório para   |
|     |        |                    |gravar a venda e para emitir NFe.         |
|-----|--------|--------------------|------------------------------------------|
|  138|14/05/20|wander              |Venda_Tipo foi substituido por VENDA_TPMOV|
|     |   10:53|venda_pedido        |Venda_Tipo era muito restrito enquanto    |
|     |        |                    |VENDA_TPMOV permite mais flexibilidade,   |
|     |        |                    |pois o usuário pode escolher qualquer um  |
|     |        |                    |tipos de movimento cadastrados.           |
================================================================================

================================================================================
|   DATA   |DESENVOLVEDOR|HISTORICO DA ALTERACAO DO CODIGO                     |
|----------|-------------|-----------------------------------------------------|
|06/03/2020|WANDER       |Criado procedimento "BuscarVenda" para listar na tela|
|        22|             |todos os pedidos para emissão de NFe/NFCe            |
|----------|-------------|-----------------------------------------------------|
|06/03/2020|WANDER       |Duplo click no grid para abrir a venda               |
|        24|             |(Copiado da unit venda_mercadoria)                   |
|----------|-------------|-----------------------------------------------------|
|26/03/2020|WANDER       |Passou a gravar em venda.venda_natureza_operacao o   |
|        43|             |codigo da natureza de operacao definida pelo usuário |
|----------|-------------|-----------------------------------------------------|
|27/03/2020|WANDER       |Mostrando a natureza de operacao da venda a partir   |
|        45|             |do codigo gravado em venda.venda_natureza_operacao   |
|----------|-------------|-----------------------------------------------------|
|27/03/2020|WANDER       |Mostrando o CFOP da natureza de operacao da venda    |
|        46|             |                                                     |
|----------|-------------|-----------------------------------------------------|
|27/03/2020|WANDER       |Mostrando Vendedor da venda a partir do codigo       |
|        48|             |gravado em venda.cod_vendedor                        |
|----------|-------------|-----------------------------------------------------|
|27/03/2020|WANDER       |Mostrando Cliente a partir do codigo                 |
|        49|             |gravado em venda.codigo_cliente                      |
|----------|-------------|-----------------------------------------------------|
|28/03/2020|WANDER       |Implementada a pesquisa de cliente no padrão do SMC  |
|        50|             |                                                     |
|----------|-------------|-----------------------------------------------------|
|28/03/2020|WANDER       |Exibindo itens do movimento                          |
|        51|             |                                                     |
|----------|-------------|-----------------------------------------------------|
|30/03/2020|WANDER       |O tipo de venda passou a vir da tabela venda         |
|        53|             |coluna venda_tipo                                    |
================================================================================

}

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, cxGraphics, cxControls, cxLookAndFeels,
  cxLookAndFeelPainters, cxContainer, cxEdit, Vcl.ComCtrls, dxCore, cxDateUtils,
  dxSkinsCore, dxSkinOffice2013LightGray, cxStyles, dxSkinscxPCPainter,
  cxCustomData, cxFilter, cxData, cxDataStorage, cxNavigator, Data.DB, cxDBData,
  cxMaskEdit, cxLabel, cxCurrencyEdit, cxGridLevel, cxGridCustomTableView,
  cxGridTableView, cxGridDBTableView, cxClasses, cxGridCustomView, cxGrid,
  cxDropDownEdit, cxTextEdit, cxCalendar, Vcl.StdCtrls, Vcl.Mask, Vcl.DBCtrls,
  Vcl.ExtCtrls, Vcl.Menus, cxButtons, dxBarBuiltInMenu, cxPC, dxSkinBlack,
  dxSkinBlue, dxSkinBlueprint, dxSkinCaramel, dxSkinCoffee, dxSkinDarkRoom,
  dxSkinDarkSide, dxSkinDevExpressDarkStyle, dxSkinDevExpressStyle, dxSkinFoggy,
  dxSkinGlassOceans, dxSkinHighContrast, dxSkiniMaginary, dxSkinLilian,
  dxSkinLiquidSky, dxSkinLondonLiquidSky, dxSkinMcSkin, dxSkinMetropolis,
  dxSkinMetropolisDark, dxSkinMoneyTwins, dxSkinOffice2007Black,
  dxSkinOffice2007Blue, dxSkinOffice2007Green, dxSkinOffice2007Pink,
  dxSkinOffice2007Silver, dxSkinOffice2010Black, dxSkinOffice2010Blue,
  dxSkinOffice2010Silver, dxSkinOffice2013DarkGray, dxSkinOffice2013White,
  dxSkinOffice2016Colorful, dxSkinOffice2016Dark, dxSkinPumpkin, dxSkinSeven,
  dxSkinSevenClassic, dxSkinSharp, dxSkinSharpPlus, dxSkinSilver,
  dxSkinSpringTime, dxSkinStardust, dxSkinSummer2008, dxSkinTheAsphaltWorld,
  dxSkinsDefaultPainters, dxSkinValentine, dxSkinVisualStudio2013Blue,
  dxSkinVisualStudio2013Dark, dxSkinVisualStudio2013Light, dxSkinVS2010,
  dxSkinWhiteprint, dxSkinXmas2008Blue, cxCheckBox, Vcl.Grids, Vcl.DBGrids,
  cxRadioGroup, FireDAC.Stan.Intf, FireDAC.Stan.Option, FireDAC.Stan.Param,
  FireDAC.Stan.Error, FireDAC.DatS, FireDAC.Phys.Intf, FireDAC.DApt.Intf,
  FireDAC.Stan.Async, FireDAC.DApt, FireDAC.Comp.DataSet, FireDAC.Comp.Client,
  global_variables, m_Cliente, m_Produto;

type
  Tfrm_pedido_venda = class(TForm)
    cxPageControl1: TcxPageControl;
    cxTabSheet1: TcxTabSheet;
    cxTabSheet2: TcxTabSheet;
    Label23: TLabel;
    Label1: TLabel;
    Label2: TLabel;
    Label3: TLabel;
    Label8: TLabel;
    Label9: TLabel;
    Label10: TLabel;
    Label11: TLabel;
    Label12: TLabel;
    Label13: TLabel;
    Label14: TLabel;
    Label15: TLabel;
    Label18: TLabel;
    Shape1: TShape;
    Label24: TLabel;
    Shape2: TShape;
    Label25: TLabel;
    Label26: TLabel;
    Label28: TLabel;
    Label29: TLabel;
    Label6: TLabel;
    Label7: TLabel;
    Label16: TLabel;
    Label17: TLabel;
    Label19: TLabel;
    BtnGravar: TcxButton;
    BtnCancelar: TcxButton;
    BtnAlterar: TcxButton;
    cxButton2: TcxButton;
    cxVendedor: TcxComboBox;
    cxPesquisaCliente: TcxButton;
    cxTabelaDePreco: TcxComboBox;
    BtnIncluir: TcxButton;
    cxButton3: TcxButton;
    cxButton1: TcxButton;
    cxGrid1: TcxGrid;
    cxGridDBTableView1: TcxGridDBTableView;
    cxGridLevel1: TcxGridLevel;
    Label21: TLabel;
    cxNaturezaOperacao: TcxComboBox;
    Label22: TLabel;
    Label20: TLabel;
    Label4: TLabel;
    cxGridDBTableView1Column3: TcxGridDBColumn;
    cxGridDBTableView1Column1: TcxGridDBColumn;
    cxGridDBTableView1Column2: TcxGridDBColumn;
    cxGridDBTableView1Column4: TcxGridDBColumn;
    cxGridDBTableView1Column5: TcxGridDBColumn;
    cxGridDBTableView1Column6: TcxGridDBColumn;
    cxGridDBTableView1Column7: TcxGridDBColumn;
    cxGridDBTableView1Column8: TcxGridDBColumn;
    cxGridDBTableView1Column9: TcxGridDBColumn;
    cxGridDBTableView1Column10: TcxGridDBColumn;
    Label5: TLabel;
    lbTelefone: TLabel;
    lbEndereco: TLabel;
    lbBairro: TLabel;
    lbMunicipio: TLabel;
    lbRegiao: TLabel;
    lbZona: TLabel;
    lbEstado: TLabel;
    lbCEP: TLabel;
    lbNumero: TLabel;
    lbEmail: TLabel;
    Shape3: TShape;
    lbEmail_1: TLabel;
    Label40: TLabel;
    BtnNFE: TcxButton;
    BtnNFCE: TcxButton;
    cxButton4: TcxButton;
    cxButton5: TcxButton;
    cxButton6: TcxButton;
    GroupBox5: TGroupBox;
    cxRadioButton1: TcxRadioButton;
    cxRadioButton2: TcxRadioButton;
    GroupBox6: TGroupBox;
    Label41: TLabel;
    Label42: TLabel;
    edt_nfce_fim: TEdit;
    edt_nfce_inicio: TEdit;
    DBGrid1: TDBGrid;
    GroupBox1: TGroupBox;
    Label43: TLabel;
    Label44: TLabel;
    Label45: TLabel;
    edt_periodo_inicio: TcxDateEdit;
    edt_periodo_fim: TcxDateEdit;
    CB_MES: TcxComboBox;
    GroupBox4: TGroupBox;
    chk_normal: TcxCheckBox;
    chk_contingencia: TcxCheckBox;
    GroupBox7: TGroupBox;
    Label46: TLabel;
    Edit2: TEdit;
    RadioButton3: TRadioButton;
    RadioButton4: TRadioButton;
    RadioButton5: TRadioButton;
    RadioButton6: TRadioButton;
    GroupBox3: TGroupBox;
    chk_autorizadas: TcxCheckBox;
    chk_inutilizadas: TcxCheckBox;
    chk_canceladas: TcxCheckBox;
    chk_pendentes: TcxCheckBox;
    cxCheckBox1: TcxCheckBox;
    cxCheckBox2: TcxCheckBox;
    lbl_qtde: TLabel;
    Label47: TLabel;
    Label48: TLabel;
    lb_total_nfce: TLabel;
    edDATA: TEdit;
    edCodigo_Cliente: TEdit;
    edRazao_Social: TEdit;
    edCPF_CNPJ: TEdit;
    edContato_Nome: TEdit;
    edContato_Celular: TEdit;
    edQtdeItens: TEdit;
    edValorItens: TEdit;
    edDescontoGeral: TEdit;
    edValorLiquido: TEdit;
    edCFOP: TEdit;
    GroupBox2: TGroupBox;
    Label49: TLabel;
    Label50: TLabel;
    Label51: TLabel;
    lbl_venda_nfce: TLabel;
    GroupBox8: TGroupBox;
    Label52: TLabel;
    Label53: TLabel;
    edt_venda_inicio: TEdit;
    edt_venda_fim: TEdit;
    GroupBox9: TGroupBox;
    Label54: TLabel;
    Label55: TLabel;
    Label56: TLabel;
    cxDateEdit1: TcxDateEdit;
    cxDateEdit2: TcxDateEdit;
    cxComboBox5: TcxComboBox;
    GroupBox10: TGroupBox;
    Shape4: TShape;
    Shape5: TShape;
    Shape6: TShape;
    chk_fechadas: TcxCheckBox;
    cxCheckBox3: TcxCheckBox;
    chk_abertas: TcxCheckBox;
    GroupBox11: TGroupBox;
    Label57: TLabel;
    edt_consulta: TEdit;
    cb_filtro: TcxComboBox;
    DBGrid2: TDBGrid;
    GroupBox12: TGroupBox;
    chk_nfce: TcxCheckBox;
    cxCheckBox6: TcxCheckBox;
    GroupBox13: TGroupBox;
    chk_venda: TcxCheckBox;
    chk_data: TcxCheckBox;
    chk_status: TcxCheckBox;
    DS_C_VENDAS: TDataSource;
    SQL_C_VENDAS: TFDQuery;
    SQL_C_VENDASCODIGO_VENDA: TFDAutoIncField;
    SQL_C_VENDASDATA: TDateField;
    SQL_C_VENDASHORA: TTimeField;
    SQL_C_VENDASCAIXA: TStringField;
    SQL_C_VENDASOPERADOR: TStringField;
    SQL_C_VENDASVENDEDOR: TStringField;
    SQL_C_VENDASNOME_CLIENTE: TStringField;
    SQL_C_VENDASTOTAL_VENDA: TBCDField;
    SQL_C_VENDASVALOR_PAGO: TBCDField;
    SQL_C_VENDASSTATUS: TStringField;
    SQL_C_VENDASCOD_NFCE: TStringField;
    SQL_C_VENDASTROCO: TBCDField;
    SQL_C_VENDAScomanda: TIntegerField;
    SQL_Natureza_Operacao: TFDQuery;
    SQL_Auxiliar: TFDQuery;
    FDQuery1: TFDQuery;
    FDAutoIncField1: TFDAutoIncField;
    DateField1: TDateField;
    TimeField1: TTimeField;
    StringField1: TStringField;
    StringField2: TStringField;
    StringField3: TStringField;
    StringField4: TStringField;
    BCDField1: TBCDField;
    BCDField2: TBCDField;
    StringField5: TStringField;
    StringField6: TStringField;
    BCDField3: TBCDField;
    IntegerField1: TIntegerField;
    SQL_VENDA: TFDQuery;
    DS_VENDAS: TDataSource;
    SQL_VENDA_ITEM: TFDQuery;
    DS_VENDA_ITEM: TDataSource;
    SQL_CLIENTE: TFDQuery;
    Label27: TLabel;
    edPROD_CODIGO: TEdit;
    cxButton7: TcxButton;
    SQL_PRODUTO: TFDQuery;
    Label30: TLabel;
    edDESCRICAO_PRODUTO: TEdit;
    edPRECO: TEdit;
    Label31: TLabel;
    edQUANTIDADE: TEdit;
    Label32: TLabel;
    Label33: TLabel;
    edUNIDADE_MEDIDA: TEdit;
    bIncluirProduto: TcxButton;
    btAlterarProduto: TcxButton;
    bCancelarProduto: TcxButton;
    edCODIGO_VENDA: TEdit;
    Label34: TLabel;
    edCFOP_Produto: TEdit;
    cxGridDBTableView1Column11: TcxGridDBColumn;
    edTPMOV: TEdit;
    edTPMOV_DESCRICAO: TEdit;
    bPesquisaTPMOV: TcxButton;
    SQL_VENDA_ITEMCODIGO: TFDAutoIncField;
    SQL_VENDA_ITEMCODIGO_VENDA: TIntegerField;
    SQL_VENDA_ITEMCODIGO_ITEM_VENDA: TIntegerField;
    SQL_VENDA_ITEMCODIGO_PRODUTO: TIntegerField;
    SQL_VENDA_ITEMDESCRICAO: TStringField;
    SQL_VENDA_ITEMUNIDADE: TStringField;
    SQL_VENDA_ITEMQUANTIDADE: TSingleField;
    SQL_VENDA_ITEMPRECO: TBCDField;
    SQL_VENDA_ITEMACRESCIMO: TBCDField;
    SQL_VENDA_ITEMDESCONTO: TBCDField;
    SQL_VENDA_ITEMPRECO_TOTAL: TBCDField;
    SQL_VENDA_ITEMrateio_desconto: TBCDField;
    SQL_VENDA_ITEMrateio_acrescimo: TBCDField;
    SQL_VENDA_ITEMpreco_custo: TBCDField;
    SQL_VENDA_ITEMNFe_Veiculo_Chassi: TStringField;
    SQL_VENDA_ITEMVI_CFOP_CSOSN: TStringField;
    Label35: TLabel;
    Shape7: TShape;
    Label36: TLabel;
    edPlaca: TEdit;
    edPLACA_DESCRICAO: TEdit;
    edTRANSP_RAZAO_SOCIAL: TEdit;
    Label37: TLabel;
    btn_Tipo: TcxButton;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure cxButton4Click(Sender: TObject);
    procedure BtnNFEClick(Sender: TObject);
    procedure BtnIncluirClick(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure DBGrid1DblClick(Sender: TObject);
    procedure SQL_C_VENDASAfterScroll(DataSet: TDataSet);
    procedure cxButton6Click(Sender: TObject);
    procedure cxPesquisaClienteClick(Sender: TObject);
    procedure FormKeyPress(Sender: TObject; var Key: Char);
    procedure cxButton7Click(Sender: TObject);
    procedure edPROD_CODIGOExit(Sender: TObject);
    procedure edQUANTIDADEExit(Sender: TObject);
    procedure BtnCancelarClick(Sender: TObject);
    procedure bIncluirProdutoClick(Sender: TObject);
    procedure BtnAlterarClick(Sender: TObject);
    procedure BtnGravarClick(Sender: TObject);
    procedure cxGridDBTableView1DblClick(Sender: TObject);
    procedure cxNaturezaOperacaoExit(Sender: TObject);
    procedure btAlterarProdutoClick(Sender: TObject);
    procedure bCancelarProdutoClick(Sender: TObject);
    procedure edCFOP_ProdutoExit(Sender: TObject);
    procedure edCODIGO_VENDAExit(Sender: TObject);
    procedure edDescontoGeralExit(Sender: TObject);
    procedure bPesquisaTPMOVClick(Sender: TObject);
    procedure edTPMOVExit(Sender: TObject);
    procedure edTPMOVKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure SQL_VENDABeforePost(DataSet: TDataSet);
    procedure edPlacaExit(Sender: TObject);
    procedure edPlacaKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure btn_TipoClick(Sender: TObject);
  private
    { Private declarations }
    cliente: tcliente;

    procedure PesquisaTipoDeMovimento;

    function AtibuirNATOP_ao_Movimento(pPedido,pNaturezaDeOperacao:Integer):Boolean;

    procedure BuscarVenda;

    function Codigo_OK(pPreco:String):Boolean;
    function CFOP_Produto_OK(pCFOP:String):Boolean;

    function DadosCorretos:Boolean;
    function Dados_Produtos_Corretos:Boolean;

    procedure DetalhesVenda;

    function Ha_Produtos:Boolean;

    procedure Iniciar_Nova_Venda;

    procedure LimpaTela;
    procedure LimpaProduto;

    procedure MostraDados;
    procedure MostraDados_Venda;
    procedure SomaDados_Venda;
    function  SomaValorDosItens:Real;
    procedure Mostra_Cabecalho_Venda;
    procedure Mostra_VendaTipo;
    procedure Mostra_NatOperacao;
    procedure Mostra_CFOP;
    procedure Mostra_Vendedor;
    procedure Mostra_Cliente(pID:Integer);
    procedure Mostra_Produto;

    function Natureza_Operacao_ID(pDescricao:String):Integer;

    function  Pedido_Novo:Boolean;
    function  Pode_Alterar:Boolean;
    function  Preco_OK(pPreco:String):Boolean;
    procedure Preenche_Tela(pCODIGO_VENDA:Integer);
    function  Preenche_Natureza_de_Operacao:Boolean;
    function  Preenche_Vendedor:Boolean;
    function Produto_sem_CST_ICMS(pVenda:Integer):Boolean;

    function  Produto_Existe(pCodigo:String):Boolean;
    function  CFOP_Existe(pCFOP:String):Boolean;
    function  fTIPO_NF(pCFOP:String):String;

    function Quantidade_OK(pQtde:String):Boolean;

    function Recupera_Natureza_Operacao(pID:Integer):Boolean;
    function RecuperaCliente(pCodigo:Integer):Boolean;

    function  SomaTOTAL_VENDA:Real;

    function Inserir_Produto:Boolean;
    procedure Gravar;
    function Gravar_Tudo(pCODIGO_VENDA:Integer):Boolean;
    function Gravar_venda(pCODIGO_VENDA:Integer): Boolean;
    function Gravar_venda_item(pCODIGO_VENDA:Integer): Boolean;

    procedure Alterar;
    function Alterar_Tudo(pCODIGO_VENDA:Integer):Boolean;
    procedure Alterar_Produto;

    procedure CancelarProduto;

    procedure Habilita_Campos(pEnabled:Boolean);

    procedure Iniciar_Tela;

    procedure Prepara_Alteracao;

    procedure Abrir_Tabela_Auxiliar;
    Procedure Criar_Tabela_Auxiliar;

    function Trata_Transportadora:Boolean;

    function NomeTabelaAux:String;

    procedure Excluir_Da_Venda(pCODIGO_ITEM_VENDA:Integer);
    procedure Ratear_Desconto_Da_Venda_Entre_seus_Itens(pCODIGO_VENDA:Integer);
    procedure Atualiza_Itens;

    procedure ConsultarProduto_Veiculo;

    function ProxItemVenda:Integer;

    procedure Emitir_NFe;


  public
    { Public declarations }
  end;

var
  frm_pedido_venda: Tfrm_pedido_venda;
  vPreencherTela  : Boolean;
  vOperacao       : String;
  vCodigo_Venda_Tratada: Integer;
implementation

uses
  u_funcoes, totalizacao_pedido,  EmissaoDeNFe, visualizar_venda,
  h_Functions, vw_consulta_generica, c_Globals, S_Module,
  vw_tipoDeMovimento, cadastro_produto;

{$R *.dfm}

procedure Tfrm_pedido_venda.BtnAlterarClick(Sender: TObject);
begin
   Alterar;
end;

procedure Tfrm_pedido_venda.BtnCancelarClick(Sender: TObject);
begin
   SQL_VENDA_ITEM.Close;
   BtnIncluir.Enabled       := True;

   bIncluirProduto.Enabled  := False;
   btAlterarProduto.Enabled := bIncluirProduto.Enabled;
   bCancelarProduto.Enabled := bIncluirProduto.Enabled;

   BtnAlterar.Enabled       := True;
   BtnGravar.Enabled        := False;
   BtnCancelar.Enabled      := False;

   Habilita_Campos(False);
   LimpaTela;
end;

procedure Tfrm_pedido_venda.BtnGravarClick(Sender: TObject);
begin
   Gravar;
end;

procedure Tfrm_pedido_venda.Gravar;
var vCODIGO_VENDA: integer;
begin
   // Grava venda e seus itens
   //---------------------------------------------------------------------------

   // Verifica integridade e regras...
   if not DadosCorretos then exit;

   if edCODIGO_VENDA.Text = '' then
      vCODIGO_VENDA := ProximaVENDA
   else
      vCODIGO_VENDA := Strtoint(edCODIGO_VENDA.Text);

   //Elimina a venda antes de salvar
   Apagar_Venda(vCODIGO_VENDA);


   if vOperacao = 'Inclusão' then
   begin
      // Incluir nova venda
      while not Gravar_Tudo(vCODIGO_VENDA) do
      begin
         //Não conseguiu salvar completamente
         //Elimina a venda e tenta novamente
         Apagar_Venda(vCODIGO_VENDA);
      end;
   end
   else
   begin
      // Alterar venda existente
      while not Alterar_Tudo(vCODIGO_VENDA) do
      begin
         //Não conseguiu salvar completamente
         //Elimina a venda e tenta novamente
         Apagar_Venda(vCODIGO_VENDA);
      end;
   end;

   // Venda Gravada

   // Desfaz dados temporários
   Destruir_Tabela_Temporaria_de_Venda(NomeTabelaAux);

   // Aplica Desconto da Venda aos Itens do Pedido (Rateio)
   Ratear_Desconto_Da_Venda_Entre_seus_Itens(vCODIGO_VENDA);

   // Prepara botões
   BtnGravar.Enabled   := False;
   BtnCancelar.Enabled := False;
   BtnAlterar.Enabled  := True;

   // Limpa a tela
   LimpaTela;
end;

procedure Tfrm_pedido_venda.BtnIncluirClick(Sender: TObject);
begin
   // Incluir Venda
   vOperacao:='Inclusão';

   //Pode...
   BtnGravar.Enabled        := True;
   BtnCancelar.Enabled      := True;

   //Não Pode...
   BtnAlterar.Enabled       := False;
   BtnIncluir.Enabled       := False;


   bIncluirProduto.Enabled  := True;
   btAlterarProduto.Enabled := bIncluirProduto.Enabled;
   bCancelarProduto.Enabled := bIncluirProduto.Enabled;

   Habilita_Campos(True);

   edCODIGO_VENDA.Text     := '';
   edCODIGO_VENDA.ReadOnly := True;

   Criar_Tabela_Auxiliar;

   Abrir_Tabela_Auxiliar;

   edData.SetFocus;
end;

procedure Tfrm_pedido_venda.BtnNFEClick(Sender: TObject);
begin
   // Emtir Nota Fiscal Eletrônica
   if not DadosCorretos then
      exit;

   Emitir_NFe;
end;

procedure Tfrm_pedido_venda.btn_TipoClick(Sender: TObject);
begin
   ConsultarProduto_Veiculo;
end;

procedure Tfrm_pedido_venda.Emitir_NFe;
var vNATOP_ID: Integer;
begin
  // Chama a tela de documentos fiscais
  //----------------------------------------------------------------------------

  // Natureza da Operacao é obrigatória
  if cxNaturezaOperacao.ItemIndex = -1 Then
  begin
    WnAlerta('Informe a Natureza de Operação');
    cxNaturezaOperacao.Enabled:=true;
    cxNaturezaOperacao.SetFocus;
    exit;
  end;
  vNATOP_ID := Natureza_Operacao_ID(cxNaturezaOperacao.Text);

  // Atualiza a variável global g_Numero_do_Movimento
  // com o número do movimento para a qual será emitida NFe
  g_Numero_do_Movimento := SQL_C_VENDASCODIGO_VENDA.asinteger;

  //Atribui Natureza de Operacao ao movimento
  if not AtibuirNATOP_ao_Movimento(g_Numero_do_Movimento,vNATOP_ID) then
     exit;

  // Chama a unit responsável por todo o tratamento de documentos fiscais
  //----------------------------------------------------------------------------
  // Define na variável global que emitirá NFe
  g_NFE_ou_NFCe := 0; // NFCe

  // Verifica se o usuário tem acesso a esta função
  if not TemAcesso(Global_Usuario_Logado,'EMITIRNFE') then
     exit;

  // Chama a rotina de emissão de NFe
  try
    frmEmissaoDeNFe := tfrmEmissaoDeNFe.Create(nil);
  except
    frmEmissaoDeNFe.Free;
    frmEmissaoDeNFe := tfrmEmissaoDeNFe.Create(nil);
  end;
  frmEmissaoDeNFe.ShowModal;
  frmEmissaoDeNFe.Free;

  {
  frm_emissor_nfe2 := Tfrm_emissor_nfe2.Create(nil);
  frm_emissor_nfe2.ShowModal;
  frm_emissor_nfe2.Free;
  }
end;

procedure Tfrm_pedido_venda.cxPesquisaClienteClick(Sender: TObject);
var
  edt: TEdit;
begin
  edt := TEdit.create(nil);

  Frm_Consulta_Generica := tFrm_Consulta_Generica.create(nil, cgCliente, edt);
  Frm_Consulta_Generica.Height:= 701;
  Frm_Consulta_Generica.Width := 1287;
  Frm_Consulta_Generica.ShowModal;

  if edt.Text <> '' then
  begin
    cliente := tcliente.create(StrToInt(edt.Text));
    Mostra_Cliente(cliente.ID);
    edCodigo_Cliente.Text := cliente.RAZAO_SOCIAL;
  end;
end;

procedure Tfrm_pedido_venda.cxButton4Click(Sender: TObject);
begin
 frm_totalizacao_pedido := Tfrm_totalizacao_pedido.CREATE(Application);
 frm_totalizacao_pedido.ShowModal;
end;

procedure Tfrm_pedido_venda.cxButton6Click(Sender: TObject);
begin
 // mostra saldo devedor....
end;

procedure Tfrm_pedido_venda.cxButton7Click(Sender: TObject);
var
  edt: TEdit;
  produto: TProduto;
begin
  edt := TEdit.create(nil);

  Frm_Consulta_Generica := tFrm_Consulta_Generica.create(nil, cgproduto, edt);
  Frm_Consulta_Generica.ShowModal;

  if edt.Text <> '' then
  begin
    //produto := tproduto.create(StrToInt(edt.Text));
    if Not Produto_Existe(edt.Text) then
    begin
      edt.Free;
      edPROD_CODIGO.SetFocus;
      exit;
    end;
    Mostra_Produto;
    edCodigo_Cliente.Text := cliente.RAZAO_SOCIAL;
  end;
end;

procedure Tfrm_pedido_venda.bCancelarProdutoClick(Sender: TObject);
begin
   CancelarProduto;
end;

procedure Tfrm_pedido_venda.bIncluirProdutoClick(Sender: TObject);
begin
   // Incluir Produto
   //---------------------------------------------------------------------------
   if not Dados_Produtos_Corretos then exit;
   if not Inserir_Produto then exit;
   Atualiza_Itens;
   LimpaProduto;
   edPROD_CODIGO.Setfocus;
end;

procedure Tfrm_pedido_venda.bPesquisaTPMOVClick(Sender: TObject);
begin
   PesquisaTipoDeMovimento;
end;

procedure Tfrm_pedido_venda.PesquisaTipoDeMovimento;
begin
   //Pesquisa/Seleciona um tipo de movimento
   //--------------------------------------------------------------------------
   frm_tipoDeMovimento := Tfrm_tipoDeMovimento.Create(Self);
   vfrm_tipoDeMovimentovConsultaExterna:= True; // É uma consulta externa
   frm_tipoDeMovimento.ShowModal;
   edTPMOV.Text := vfrm_tipoDeMovimentoTPMOV_CODIGO;
   frm_tipoDeMovimento.Free;
end;

procedure Tfrm_pedido_venda.btAlterarProdutoClick(Sender: TObject);
begin
   Alterar_Produto;
end;

procedure Tfrm_pedido_venda.cxGridDBTableView1DblClick(Sender: TObject);
begin
   Alterar_Produto;
end;

procedure Tfrm_pedido_venda.Alterar;
begin
   // alterar venda
   //---------------------------------------------------------------------------
   if not Pode_Alterar then exit;

   Prepara_Alteracao;

end;

function Tfrm_pedido_venda.Pode_Alterar: Boolean;
begin
   // Verifica as condições que permitem alteração de uma nota
   // retorna true se pode alterar e false se nao pode
   //---------------------------------------------------------------------------
   result := false;

   if edCODIGO_VENDA.Text = '' then
   begin
     WnAlerta('Informe o número do pedido');
     edCODIGO_VENDA.SetFocus;
     exit;
   end;

   // Não pode alterar pedido com NFCe emitida
   if SQL_VENDA.FieldByName('COD_NFCE').AsString <> '' then
   begin
     WnAlerta('Pedido com NFCe emitida. Impossível alterar.');
     exit;
   end;

   // Não pode alterar pedido com NFe emitida
   if SQL_VENDA.FieldByName('NOTAFISCAL').AsString <> '' then
   begin
     WnAlerta('Pedido com NFe emitida. Impossível alterar.');
     exit;
   end;

   result := true;
end;

procedure Tfrm_pedido_venda.Alterar_Produto;
begin
   if not SQL_VENDA_ITEM.Active then exit;
   edPROD_CODIGO.Text       := SQL_VENDA_ITEM.FieldByName('CODIGO_PRODUTO').AsString;
   edDESCRICAO_produto.Text := SQL_VENDA_ITEM.FieldByName('DESCRICAO').AsString;
   edPRECO.Text             := Float_to_String(SQL_VENDA_ITEM.FieldByName('PRECO' ).AsFloat);
   edQUANTIDADE.Text        := Float_to_String(SQL_VENDA_ITEM.FieldByName('QUANTIDADE' ).AsFloat);
   edUNIDADE_MEDIDA.Text    := SQL_VENDA_ITEM.FieldByName('UNIDADE' ).AsString;
   edCFOP_Produto.Text      := SQL_VENDA_ITEM.FieldByName('VI_CFOP_CSOSN').AsString;
   Excluir_Da_Venda(SQL_VENDA_ITEM.FieldByName('CODIGO_ITEM_VENDA').AsInteger);
   Atualiza_Itens;
end;


procedure Tfrm_pedido_venda.CancelarProduto;
begin
   if Not SQL_VENDA_ITEM.Active then exit;
   Excluir_Da_Venda(SQL_VENDA_ITEM.FieldByName('CODIGO_ITEM_VENDA').AsInteger);
   Atualiza_Itens;
end;

function Tfrm_pedido_venda.CFOP_Existe(pCFOP: String): Boolean;
begin
     // Recebe o código de um CFOP e verifica se existe
     // retorna true se existe e false se não existe
     //-------------------------------------------------------------------------
     result := false;
     if pCFOP = '' then exit;

     // pesquisa o CFOP
     SQL_Auxiliar.Close;
     SQL_Auxiliar.sql.Clear;
     SQL_Auxiliar.sql.add('SELECT *                 ');
     SQL_Auxiliar.sql.add('  FROM Natureza_Operacao ');
     SQL_Auxiliar.sql.add(' WHERE CFOP_TI = :CFOP_TI');
     SQL_Auxiliar.ParamByName('CFOP_TI').AsInteger := StrToInt(pCFOP);
     SQL_Auxiliar.Open;
     if SQL_Auxiliar.Eof then
        exit;

     result := true;
end;

function Tfrm_pedido_venda.CFOP_Produto_OK(pCFOP: String): Boolean;
begin
   // Critica se o CFOP está correto
   //---------------------------------------------------------------------------
   result := false;

   // Verifica se existe natureza de operação com este CFOP
   if not CFOP_Existe(pCFOP) then
   begin
     WnAlerta('CFOP não existe');
     edCFOP_Produto.SetFocus;
     exit;
   end;

   // Verifica se o CFOP é compatível com o tipo de pedido
   if fTIPO_NF(edCFOP.Text) <> fTIPO_NF(pCFOP) then
   begin
      if fTIPO_NF(pCFOP) = 'ENTRADA' then
         WnAlerta('Natureza de operação do pedido é de ENTRADA,'+#13+#13+
                     'mas a do produto é de SAÌDA')
      else
         WnAlerta('Natureza de operação do pedido é de SAÌDA,'+#13+#13+
                     'mas a do produto é de ENTRADA');
      edCFOP_Produto.SetFocus;
      exit;
   end;

   result := true;
end;

procedure Tfrm_pedido_venda.cxNaturezaOperacaoExit(Sender: TObject);
var vNATOP_ID: Integer;
begin
  // Preencher o CFOP a partir da descrição da natureza de operação
  //----------------------------------------------------------------------------
  edCFOP.Text := '';
  if cxNaturezaOperacao.Text = '' then exit;
  // Recupera o codigo da NatOp pela descrição selecionada....
  vNATOP_ID := Natureza_Operacao_ID(cxNaturezaOperacao.Text);
  // Usa o código da NatOp para pegar o CFOP associado
  if not Recupera_Natureza_Operacao(vNATOP_ID) then exit;
  edCFOP.Text := SQL_Natureza_Operacao.FieldByName('CFOP_TI').AsString;
end;

procedure Tfrm_pedido_venda.Excluir_Da_Venda(pCODIGO_ITEM_VENDA:Integer);
begin
   // Exclui um item da venda (tabela temporária)
   //---------------------------------------------------------------------------
   SQL_Auxiliar.close;
   SQL_Auxiliar.Sql.Clear;
   SQL_Auxiliar.Sql.Add('DELETE FROM '+NomeTabelaAux);
   SQL_Auxiliar.Sql.Add(' WHERE CODIGO_ITEM_VENDA = :CODIGO_ITEM_VENDA');
   SQL_Auxiliar.ParamByName('CODIGO_ITEM_VENDA').AsInteger := pCODIGO_ITEM_VENDA;
   SQL_Auxiliar.ExecSql;
end;

function Tfrm_pedido_venda.DadosCorretos: Boolean;
var vdata: TdateTime;
begin
   // Critica Dados para da tela
   // retorna true se não há inconsistencias e se todos os
   // dados obrigatórios foram preenchidos
   // retorna false se algo precisa ser corrigido
   //---------------------------------------------------------------------------
   result := false;

   // Número do pedido - Obritatório se for alteracao
   if vOperacao = 'Alteração' then
   begin
      if edCODIGO_VENDA.Text = '' then
      begin
        WnAlerta('Alteração exige que se informe o número do pedido');
        edCODIGO_VENDA.SetFocus;
        exit;
      end;
   end;

   // Número do pedido - Proibido se for inclusão
   if vOperacao = 'Inclusão' then
   begin
      if edCODIGO_VENDA.Text <> '' then
      begin
        WnAlerta('Inclusão não permite que se informe o número do pedido'+#13+#13+
                    'pois será gerado pelo sistema');
        edCODIGO_VENDA.Text := '';
        exit;
      end;
   end;

   // Data - obrigatória
   if edData.Text = '' then
   begin
     WnAlerta('Informe a data do movimento');
     edData.SetFocus;
     exit;
   end;

   // Data válida
   try
     vdata := StrToDate(edData.Text);

     // Data no futuro
     if vData > Date then
     begin
       WnAlerta('Data no futuro não é permitido');
       edData.SetFocus;
       exit;
     end;

     // Data no passado - na inclusao nao pode
     // haverá um parametro
     if vOperacao ='Inclusão' then
     begin
       if vData > Date then
       begin
         WnAlerta('Data no passado não é permitido');
         edData.SetFocus;
         exit;
       end;
     end;

   except
     WnAlerta('Data inválida');
     edData.SetFocus;
     exit;
   end;

   // Tipo de Movimento - obrigatório
   if edTPMOV.Text = '' then
   begin
     WnAlerta('Tipo de Movimento não informado');
     edTPMOV.SetFocus;
     exit;
   end;

   // natureza de Operacao - obrigatório
   if cxNaturezaOperacao.ItemIndex = -1 then
   begin
      WnAlerta('Informe a Natureza da Operação');
      cxNaturezaOperacao.SetFocus;
      exit;
   end;

   // Vendedor - obrigatório
   if cxVendedor.ItemIndex = -1 then
   begin
      WnAlerta('Informe o Vendedor');
      cxVendedor.SetFocus;
      exit;
   end;

   // Cliente - obrigatório
   // Se for orçamento não precisa do cadastro completo - basta o cpf e nome
   if edCodigo_Cliente.Text = '' then
   begin
      WnAlerta('Informe o Cliente');
      edCodigo_Cliente.SetFocus;
      exit;
   end;

   // Pedido sem item - não permitido
   if not Ha_Produtos then exit;

   // Produto sem CST ICMS - não permitido
   if Produto_sem_CST_ICMS(SQL_C_VENDASCODIGO_VENDA.asinteger) then exit;

   if not Trata_Transportadora then
      exit;

   result := true;
end;

function Tfrm_pedido_venda.Dados_Produtos_Corretos: Boolean;
begin
   // Critica dados do produto selecionado para venda
   //---------------------------------------------------------------------------
   result := false;

   // codigo
   if not Codigo_OK(edPROD_CODIGO.Text) then exit;

   // Preco
   if not Preco_OK(edPRECO.text) then exit;

   // Quantidade
   if not Quantidade_OK(edQUANTIDADE.text) then exit;

   result := false;
end;


procedure Tfrm_pedido_venda.DBGrid1DblClick(Sender: TObject);
begin
   DetalhesVenda;
end;

procedure Tfrm_pedido_venda.DetalhesVenda;
begin
  if DBGrid1.SelectedIndex <> 0 then
  begin
    frm_visualizar_venda := Tfrm_visualizar_venda.Create(nil, SQL_C_VENDASCODIGO_VENDA.asinteger);
    frm_visualizar_venda.ShowModal;
    frm_visualizar_venda.free;
    //Wander, 06/03/2020:
    //Chamar BuscaVenda causa efeitos indesejáveis:
    //a) Desposiciona o registro corrente no grid
    //   Obs: É possível contornar isto usando ponteiros
    //b) Causa uma demora pois recarrega todos os registros novamente
    //
    //Para evitar estes efeitos, comentei a linha abaixo
    //que não está comentada na unit venda_mercadoria,
    //DBGrid1DbClick de onde copiei esta procedure "DetalhesVenda".
    //
    //BuscarVenda;
  end;
end;

procedure Tfrm_pedido_venda.edCFOP_ProdutoExit(Sender: TObject);
begin
   if edCFOP_Produto.Text = '' then exit;
   if not CFOP_Produto_OK(edCFOP_Produto.Text) then exit;
end;

procedure Tfrm_pedido_venda.edCODIGO_VENDAExit(Sender: TObject);
begin
   // Localiza o Pedido e preenche a tela com seus dados
   //---------------------------------------------------------------------------

   if edCODIGO_VENDA.Text = '' then exit;

   try
      vCodigo_Venda_Tratada := StrToInt(edCODIGO_VENDA.Text);
      if vCodigo_Venda_Tratada <= 0 then
      begin
        WnAlerta('Codigo inválido');
        edCODIGO_VENDA.SetFocus;
        exit;
      end;
   except
        WnAlerta('Codigo inválido');
        edCODIGO_VENDA.SetFocus;
        exit;
   end;

   // Buscar o pedido, se existir, preenche a tela com seus dados
   Preenche_Tela(vCodigo_Venda_Tratada);
end;

procedure Tfrm_pedido_venda.edDescontoGeralExit(Sender: TObject);
begin
   //Somar e mostrar dados dos itens
   //e valor liquido do pedido
   SomaDados_Venda;
end;

procedure Tfrm_pedido_venda.edPlacaExit(Sender: TObject);
begin
   Trata_Transportadora;
end;

procedure Tfrm_pedido_venda.edPlacaKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  if (Key = vk_F1) then
    ConsultarProduto_Veiculo;
end;

procedure Tfrm_pedido_venda.edPROD_CODIGOExit(Sender: TObject);
begin
     if edPROD_CODIGO.Text = '' then exit;

     if not Produto_Existe(edPROD_CODIGO.Text) then exit;

     Mostra_Produto;

     if not Preco_OK(edPRECO.text) then exit;
end;

procedure Tfrm_pedido_venda.edQUANTIDADEExit(Sender: TObject);
begin
   if edPROD_CODIGO.Focused  then exit;
   if edQUANTIDADE.text = '' then exit;
   if not Quantidade_OK(edQUANTIDADE.text) then exit;
end;

procedure Tfrm_pedido_venda.edTPMOVExit(Sender: TObject);
begin
   edTPMOV_DESCRICAO.Text := '';
   if edTPMOV.Text = '' then
      exit;
   edTPMOV_DESCRICAO.Text := fTPMOV_DESCRICAO(edTPMOV.Text);
   if edTPMOV_DESCRICAO.Text = '' then
   begin
     WnAlerta('Tipo de Movimento não cadastrado.');
     edTPMOV.SetFocus;
     exit;
   end;
end;

procedure Tfrm_pedido_venda.edTPMOVKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
   if Key = VK_F1 then
   begin
      //Key := '#0';
      PesquisaTipoDeMovimento;
   end;
end;

function Tfrm_pedido_venda.Codigo_OK(pPreco: String): Boolean;
begin
   // Critica o código do produto vendido
   //---------------------------------------------------------------------------
   result := false;
   if edPROD_CODIGO.Text = '' then
   begin
     WnAlerta('Informe o produto');
     edPROD_CODIGO.SetFocus;
     exit;
   end;
   result := true;
end;

procedure Tfrm_pedido_venda.ConsultarProduto_Veiculo;
begin
  Frm_Consulta_Generica := TFrm_Consulta_Generica.CREATE(nil, cgTransportadora_Veiculos, edPLACA);
  Frm_Consulta_Generica.ShowModal;
  Frm_Consulta_Generica.Free;
  Trata_Transportadora;
end;

function Tfrm_pedido_venda.Preco_OK(pPreco:String):Boolean;
var vValor, vQtde:Real;
begin
   // Critica o preço do produto
   //---------------------------------------------------------------------------
   result := false;
   if pPRECO = '' then
   begin
     WnAlerta('Produto sem preço.');
     edPRECO.SetFocus;
     exit;
   end;

   try
     vValor:= StrToFloat(MascToStr(pPRECO));
     if vValor <= 0 then
     begin
       WnAlerta('Preço inválido');
       edPROD_CODIGO.SetFocus;
       exit;
     end;
   except
       WnAlerta('Preço inválido');
       edPROD_CODIGO.SetFocus;
       exit;
   end;
   result := true;
end;

function Tfrm_pedido_venda.Quantidade_OK(pQtde:String):Boolean;
var vQtde:real;
begin
   // Critica a quantidade vendida do produto
   //---------------------------------------------------------------------------
   result := false;
   if pQtde = '' then
   begin
     WnAlerta('Informe a Quantidade.');
     edQUANTIDADE.SetFocus;
     exit;
   end;

   try
     vQtde := StrToFloat(edQUANTIDADE.Text);
     if vQtde <=0 then
     begin
       WnAlerta('Quantidade inválida');
       edQUANTIDADE.SetFocus;
       exit;
     end;
   except
     WnAlerta('Quantidade inválida');
     edQUANTIDADE.SetFocus;
     exit;
   end;
   result := true;
end;

procedure Tfrm_pedido_venda.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  Action := cafree;
  self := nil;
end;

procedure Tfrm_pedido_venda.FormKeyPress(Sender: TObject; var Key: Char);
begin
   if key = #27 Then
   begin
      key := #0;
      Exit;
   end;

   if key = #13 Then
   begin
      key := #0;
      Perform(Wm_NextDlgCtl,0,0);
   end;
end;

procedure Tfrm_pedido_venda.FormShow(Sender: TObject);
begin
   Iniciar_Tela;
end;

function Tfrm_pedido_venda.fTIPO_NF(pCFOP: String): String;
begin
     // Recebe o código de um CFOP e
     // retorna 0 se for de Entrada e 1 se for de Saída
     //-------------------------------------------------------------------------
     result := '';
     if pCFOP = '' then exit;

     // pesquisa o CFOP
     SQL_Auxiliar.Close;
     SQL_Auxiliar.sql.Clear;
     SQL_Auxiliar.sql.add('SELECT TIPO_NF           ');
     SQL_Auxiliar.sql.add('  FROM Natureza_Operacao ');
     SQL_Auxiliar.sql.add(' WHERE CFOP_TI = :CFOP_TI');
     SQL_Auxiliar.ParamByName('CFOP_TI').AsInteger := StrToInt(pCFOP);
     SQL_Auxiliar.Open;
     if SQL_Auxiliar.Eof then
        exit;

     result := SQL_Auxiliar.FieldByName('TIPO_NF').AsString;
end;

procedure Tfrm_pedido_venda.Iniciar_Tela;
begin
   bIncluirProduto.Enabled  := false;
   btAlterarProduto.Enabled := bIncluirProduto.Enabled;
   bCancelarProduto.Enabled := bIncluirProduto.Enabled;

   BtnCancelar.Enabled      := false;
   BtnGravar.Enabled        := false;
   BtnAlterar.Enabled       := true;
   BtnIncluir.Enabled       := true;

   if not Preenche_Natureza_de_Operacao then exit;

   if not Preenche_Vendedor then exit;

   Habilita_Campos(False);

   Executar('UPDATE VENDA set venda_natureza_operacao = -1 WHERE venda_natureza_operacao IS NULL');

   BuscarVenda;
end;

function Tfrm_pedido_venda.Gravar_Tudo(pCODIGO_VENDA:Integer): Boolean;
begin
   //Grava todos os dados do movimento
   //---------------------------------------------------------------------------
   result := false;

   if not Gravar_venda(pCODIGO_VENDA)      then exit;
   if not Gravar_venda_item(pCODIGO_VENDA) then exit;

   //Sucesso
   result := true;
end;

function Tfrm_pedido_venda.Gravar_venda(pCODIGO_VENDA:Integer): Boolean;
var qLocal : tFDQuery;
    vCODIGO_VENDA:Integer;
begin
  //Gravar o cabeçalho do movimento
  //----------------------------------------------------------------------------
  result := false;

   qLocal := TFDQuery.Create(nil);
   qLocal.Connection     := Module.connection;
   qLocal.ConnectionName := 'connection';

   qLocal.Close;
   qLocal.Sql.Clear;
   qLocal.SQL.Add('INSERT INTO VENDA          ');
   qLocal.SQL.Add('  ( CODIGO_VENDA,          ');
   qLocal.SQL.Add('    OPERADOR,              ');
   qLocal.SQL.Add('    CAIXA,                 ');
   qLocal.SQL.Add('    DATA,                  ');
   qLocal.SQL.Add('    CODIGO_CLIENTE,        ');
   qLocal.SQL.Add('    VALOR_VENDA,           ');
   qLocal.SQL.Add('    ACRESCIMO,             ');
   qLocal.SQL.Add('    DESCONTO,              ');
   qLocal.SQL.Add('    TOTAL_VENDA,           ');
   qLocal.SQL.Add('    VALOR_PAGO,            '); // ???
   qLocal.SQL.Add('    TROCO,                 ');
   qLocal.SQL.Add('    STATUS,                '); // ???
   qLocal.SQL.Add('    COD_NFCE,              '); // tem q estar no cad da nfce
   qLocal.SQL.Add('    COD_VENDEDOR,          ');
   qLocal.SQL.Add('    conveniado_id,         ');
   qLocal.SQL.Add('    comanda,               ');
   qLocal.SQL.Add('    agrupou_venda,         '); // ??
   qLocal.SQL.Add('    VENDA_TPMOV,           ');
   qLocal.SQL.Add('    venda_tipo,            ');
   qLocal.SQL.Add('    Transportador_Veiculo, ');
   qLocal.SQL.Add('    NFe_QVOL,              ');
   qLocal.SQL.Add('    NFe_ESP,               ');
   qLocal.SQL.Add('    NFe_MARCA,             ');
   qLocal.SQL.Add('    NFe_NVOL,              ');
   qLocal.SQL.Add('    NFe_PESOL,             ');
   qLocal.SQL.Add('    NFe_PESOB              ');
   qLocal.SQL.Add('              )            ');
   qLocal.SQL.Add('VALUES                     ');
   qLocal.SQL.Add('  (:CODIGO_VENDA,          ');
   qLocal.SQL.Add('   :OPERADOR,              ');
   qLocal.SQL.Add('   :CAIXA,                 ');
   qLocal.SQL.Add('   :DATA,                  ');
   qLocal.SQL.Add('   :HORA,                  ');
   qLocal.SQL.Add('   :CODIGO_CLIENTE,        ');
   qLocal.SQL.Add('   :VALOR_VENDA,           ');
   qLocal.SQL.Add('   :ACRESCIMO,             ');
   qLocal.SQL.Add('   :DESCONTO,              ');
   qLocal.SQL.Add('   :TOTAL_VENDA,           ');
   qLocal.SQL.Add('   :VALOR_PAGO,            '); // ???
   qLocal.SQL.Add('   :TROCO,                 ');
   qLocal.SQL.Add('   :STATUS,                '); // ???
   qLocal.SQL.Add('   :COD_NFCE,              '); // tem q estar no cad da nfce
   qLocal.SQL.Add('   :COD_VENDEDOR,          ');
   qLocal.SQL.Add('   :conveniado_id,         ');
   qLocal.SQL.Add('   :comanda,               ');
   qLocal.SQL.Add('   :agrupou_venda,         '); // ??
   qLocal.SQL.Add('   :VENDA_TPMOV,           ');
   qLocal.SQL.Add('   :venda_tipo,            ');
   qLocal.SQL.Add('   :Transportador_Veiculo, ');
   qLocal.SQL.Add('   :NFe_QVOL,              ');
   qLocal.SQL.Add('   :NFe_ESP,               ');
   qLocal.SQL.Add('   :NFe_MARCA,             ');
   qLocal.SQL.Add('   :NFe_NVOL,              ');
   qLocal.SQL.Add('   :NFe_PESOL,             ');
   qLocal.SQL.Add('   :NFe_PESOB              ');
   qLocal.SQL.Add('             )             ');
   qLocal.ParamByName('CODIGO_VENDA'         ).AsInteger := pCODIGO_VENDA;
   qLocal.ParamByName('OPERADOR'             ).AsString  := '';
   qLocal.ParamByName('CAIXA'                ).AsString  := '';
   qLocal.ParamByName('DATA'                 ).AsDateTime:= DataServidor;
   qLocal.ParamByName('HORA'                 ).AsDateTime:= DataServidor;
   qLocal.ParamByName('CODIGO_CLIENTE'       ).AsInteger := -1;
   qLocal.ParamByName('VALOR_VENDA'          ).AsFloat   := 0;
   qLocal.ParamByName('ACRESCIMO'            ).AsFloat   := 0;
   qLocal.ParamByName('DESCONTO'             ).AsFloat   := 0;
   qLocal.ParamByName('TOTAL_VENDA'          ).AsFloat   := 0;
   qLocal.ParamByName('VALOR_PAGO'           ).AsFloat   := 0;
   qLocal.ParamByName('TROCO'                ).AsFloat   := 0;
   qLocal.ParamByName('STATUS'               ).AsInteger := 1; //FECHADA
   qLocal.ParamByName('COD_NFCE'             ).AsString  := '';
   qLocal.ParamByName('COD_VENDEDOR'         ).AsInteger := 0;
   qLocal.ParamByName('conveniado_id'        ).AsInteger := 0;
   qLocal.ParamByName('comanda'              ).AsInteger := 0;
   qLocal.ParamByName('agrupou_venda'        ).AsInteger := 0; //NAO
   qLocal.ParamByName('VENDA_TPMOV'          ).AsString  := edTPMOV.Text;
   qLocal.ParamByName('venda_tipo'           ).AsInteger := 1; //??? ESTÁ TUDO ASSIM NA BASE DE DADOS. sERÁ NFCE?
   qLocal.ParamByName('Transportador_Veiculo').AsInteger := fVEICULOCodigo(edPlaca.Text);
   qLocal.ParamByName('NFe_QVOL'             ).AsInteger := 1;
   qLocal.ParamByName('NFe_ESP'              ).AsString  := 'DIVERSOS';
   qLocal.ParamByName('NFe_MARCA'            ).AsString  := 'DIVERSOS';
   qLocal.ParamByName('NFe_NVOL'             ).AsInteger := 1;
   qLocal.ParamByName('NFe_PESOL'            ).AsFloat   := 0;
   qLocal.ParamByName('NFe_PESOB'            ).AsFloat   := 0;

   qLocal.ExecSql;

   //Libera memória
   qLocal.Free;


  //Sucesso
  result := true;
end;

function Tfrm_pedido_venda.Gravar_venda_item(pCODIGO_VENDA:Integer): Boolean;
begin
  //Gravar os itens do movimento
  //----------------------------------------------------------------------------
  result := false;

  //Sucesso
  result := true;
end;


procedure Tfrm_pedido_venda.Habilita_Campos(pEnabled: Boolean);
var i : Integer;
begin
   // habilita/Desabilita todos os campos da tela
   for i := 0 to frm_pedido_venda.ComponentCount - 1 do
   begin
      if frm_pedido_venda.Components[i].classtype = TEdit Then
         (frm_pedido_venda.Components[i] as TEdit).ReadOnly := not pEnabled;
      if frm_pedido_venda.Components[i].classtype = TcxComboBox Then
         (frm_pedido_venda.Components[i] as TcxComboBox).Enabled := pEnabled;
   end;
   cxGrid1.Enabled           := pEnabled;
   cxPesquisaCliente.Enabled := pEnabled;

   // Campos sempre fechados para edição
   edQtdeItens.ReadOnly    := true;
   edValorItens.ReadOnly   := true;
   edValorLiquido.ReadOnly := true;

   // Campos sempre abertos para edição
   edCODIGO_VENDA.ReadOnly := false;
end;

function Tfrm_pedido_venda.Ha_Produtos: Boolean;
begin
   // Verifica se há itens na venda
   // retorna true se sim, e false se não
   //---------------------------------------------------------------------------
   result := false;
   if (not SQL_VENDA_ITEM.Active     ) or
      (SQL_VENDA_ITEM.RecordCount = 0) then
   begin
      WnAlerta('Informe o(s) item(s) do pedido');
      edPROD_CODIGO.SetFocus;
      exit;
   end;
   result := true;
end;

function Tfrm_pedido_venda.Alterar_Tudo(pCODIGO_VENDA:Integer): Boolean;
begin
   result := false;
end;

procedure Tfrm_pedido_venda.Iniciar_Nova_Venda;
begin
   // iniciar nova venda;
   LimpaTela;
   Pedido_Novo;
end;

function Tfrm_pedido_venda.Inserir_Produto: Boolean;
var vQtde, vPreco, vTotal:Real;
    Q : tFDQuery;
begin
   // Insere item na venda
   //---------------------------------------------------------------------------

   // Define Valor Total do Item
   vQtde  := StrToFloat(MascToStr(edQUANTIDADE.Text));
   vPreco := StrToFloat(MascToStr(edPRECO.Text));
   vTotal := vQtde * vPreco;

   // Insere registro
   q := TFDQuery.Create(nil);
   q.Connection     := Module.connection;
   q.ConnectionName := 'connection';

   q.Close;
   q.SQL.Clear;
   q.SQL.Add('INSERT INTO '+NomeTabelaAux);
   Q.SQL.Add('    (CODIGO,           ');
   Q.SQL.Add('     CODIGO_PRODUTO,   ');
   Q.SQL.Add('     UNIDADE,          ');
   Q.SQL.Add('     QUANTIDADE,       ');
   Q.SQL.Add('     PRECO,            ');
   Q.SQL.Add('     CODIGO_VENDA,     ');
   Q.SQL.Add('     CODIGO_ITEM_VENDA,');
   Q.SQL.Add('     DESCRICAO,        ');
   Q.SQL.Add('     ACRESCIMO,        ');
   Q.SQL.Add('     DESCONTO,         ');
   Q.SQL.Add('     PRECO_TOTAL,      ');
   Q.SQL.Add('     rateio_desconto,  ');
   Q.SQL.Add('     rateio_acrescimo, ');
   Q.SQL.Add('     preco_custo,      ');
   Q.SQL.Add('     VI_CFOP_CSOSN)    ');
   q.SQL.Add('VALUES                 ');
   Q.SQL.Add('   (:CODIGO,           ');
   Q.SQL.Add('    :CODIGO_PRODUTO,   ');
   Q.SQL.Add('    :UNIDADE,          ');
   Q.SQL.Add('    :QUANTIDADE,       ');
   Q.SQL.Add('    :PRECO,            ');
   Q.SQL.Add('    :CODIGO_VENDA,     ');
   Q.SQL.Add('    :CODIGO_ITEM_VENDA,');
   Q.SQL.Add('    :DESCRICAO,        ');
   Q.SQL.Add('    :ACRESCIMO,        ');
   Q.SQL.Add('    :DESCONTO,         ');
   Q.SQL.Add('    :PRECO_TOTAL,      ');
   Q.SQL.Add('    :rateio_desconto,  ');
   Q.SQL.Add('    :rateio_acrescimo, ');
   Q.SQL.Add('    :preco_custo,      ');
   Q.SQL.Add('    :VI_CFOP_CSOSN)    ');
   Q.ParamByName('CODIGO'           ).AsInteger := -1; // Não definido ainda
   Q.ParamByName('CODIGO_PRODUTO'   ).AsInteger := StrToInt(edPROD_CODIGO.Text);
   Q.ParamByName('UNIDADE'          ).AsString  := edUNIDADE_MEDIDA.Text;
   Q.ParamByName('QUANTIDADE'       ).AsFloat   := vQtde;
   Q.ParamByName('PRECO'            ).AsFloat   := vPreco;
   Q.ParamByName('CODIGO_VENDA'     ).AsInteger := -1; // Não definida ainda
   Q.ParamByName('CODIGO_ITEM_VENDA').AsInteger := ProxItemVenda;
   Q.ParamByName('DESCRICAO'        ).AsString  := edDESCRICAO_PRODUTO.Text;
   Q.ParamByName('ACRESCIMO'        ).AsFloat   := 0;
   Q.ParamByName('DESCONTO'         ).AsFloat   := 0;
   Q.ParamByName('PRECO_TOTAL'      ).AsFloat   := vTotal;
   Q.ParamByName('rateio_desconto'  ).AsFloat   := 0;
   Q.ParamByName('rateio_acrescimo' ).AsFloat   := 0;
   Q.ParamByName('preco_custo'      ).AsFloat   := 0;
   Q.ParamByName('VI_CFOP_CSOSN'    ).AsString  := edCFOP_PRODUTO.Text;
   Q.ExecSql;

   Q.Free;
end;

Procedure Tfrm_pedido_venda.Criar_Tabela_Auxiliar;
begin
   // Criar tabela auxiliar para a digitação da venda
   Criar_Tabela_Temporaria_de_Venda(NomeTabelaAux);

   // Apaga todos os registros da tabela auxiliar
   Executar('truncate TABLE '+NomeTabelaAux);
end;

function Tfrm_pedido_venda.NomeTabelaAux:String;
begin
   result := 'Venda_'+ApenasLetras(NomeComputador);
end;

procedure Tfrm_pedido_venda.LimpaProduto;
begin
   // Limpa os campos relacionados ao produto vendido
   //---------------------------------------------------------------------------
   edPROD_CODIGO.Text       := '';
   edDESCRICAO_PRODUTO.Text := '';
   edPRECO.Text             := '';
   edQUANTIDADE.Text        := '';
   edUNIDADE_MEDIDA.Text    := '';
   edCFOP_Produto.Text      := '';
end;

procedure Tfrm_pedido_venda.LimpaTela;
var i : Integer;
begin
   // Limpa todos os campos da tela
   for i := 0 to frm_pedido_venda.ComponentCount - 1 do
   begin
      if frm_pedido_venda.Components[i].classtype = TEdit Then
         (frm_pedido_venda.Components[i] as TEdit).Text := '';
      if frm_pedido_venda.Components[i].classtype = TcxComboBox Then
         (frm_pedido_venda.Components[i] as TcxComboBox).Text := 'Selecione...';
   end;
end;

procedure Tfrm_pedido_venda.MostraDados;
begin
   MostraDados_Venda;
   SomaDados_Venda;
end;

procedure Tfrm_pedido_venda.MostraDados_Venda;
begin
   // Preenche a tela com dados do movimento
   //---------------------------------------------------------------------------
   Mostra_Cabecalho_Venda;
end;

procedure Tfrm_pedido_venda.Mostra_Cabecalho_Venda;
begin
   // Preenche a tela com o cabeçalho da venda
   //---------------------------------------------------------------------------

   // Número do pedido
   edCODIGO_VENDA.Text := SQL_VENDA.FieldByName('CODIGO_VENDA').AsString;

   //Data
   edDATA.Text := SQL_VENDA.FieldByName('DATA').AsString;

   //Tipo de Moviment
   edTPMOV.Text := SQL_VENDA.FieldByName('VENDA_TPMOV').AsString;
   edTPMOV_DESCRICAO.Text := fTPMOV_DESCRICAO(edTPMOV.Text);

   Mostra_VendaTipo;
   Mostra_NatOperacao;
   Mostra_CFOP;
   Mostra_Vendedor;
   Mostra_Cliente(SQL_VENDA.FieldByName('Codigo_Cliente').AsInteger);
end;

procedure Tfrm_pedido_venda.Mostra_NatOperacao;
var i : Integer;
    vDescricaoNome:String;
begin
   // Natureza de Operacao
   cxNaturezaOperacao.ItemIndex := -1;
   //cxNaturezaOperacao.Text := 'Selecione...';
   if SQL_VENDA.FieldByName('venda_natureza_operacao').AsInteger <> -1  then
   begin
      vDescricaoNome := fnatureza_operacaoDESCRICAO(SQL_VENDA.FieldByName('venda_natureza_operacao').AsInteger);
      for i := 0 to cxNaturezaOperacao.Properties.Items.Count -1 do
      begin
         cxNaturezaOperacao.ItemIndex := i;
         if cxNaturezaOperacao.Text = vDescricaoNome then
            Break;
      end;
   end;
end;

procedure Tfrm_pedido_venda.Mostra_Produto;
var vPreco:Real;
begin
   // Mostra os dados do produto que o usuário selecionou para venda
   //---------------------------------------------------------------------------

   // Codigo do produto
   edPROD_CODIGO.Text       := SQL_PRODUTO.FieldByName('CODIGO'           ).AsString;

   // Descricao
   edDESCRICAO_PRODUTO.Text := SQL_PRODUTO.FieldByName('DESCRICAO_PRODUTO').AsString;

   // Preco
   case cxTabelaDePreco.ItemIndex of
      0 : vPreco := SQL_PRODUTO.FieldByName('PRECO_FINAL_ATACADO'     ).AsFloat;
      1 : vPreco := SQL_PRODUTO.FieldByName('PRECO_FINAL_VAREJO'      ).AsFloat;
      2 : vPreco := SQL_PRODUTO.FieldByName('PRECO_FINAL_DISTRIBUIDOR').AsFloat;
   end;
   edPRECO.Text := Float_to_String(vPreco);

   // Unidade de medida
   edUNIDADE_MEDIDA.Text := SQL_PRODUTO.FieldByName('UNIDADE_MEDIDA').AsString;

   // CFOP do produto
   // Vem da tabela RELACAO_CFOP_x_PRODUTO_xCST_PISCOFINS_RPC
   // A chave de pesquisa precisa incluir o tipo de movimento...
   edCFOP_Produto.Text := fRPC_CFOP(edPROD_CODIGO.Text,
                                    edTPMOV.Text);
end;

procedure Tfrm_pedido_venda.Mostra_CFOP;
begin
   // CFOP
   edCFOP.Text := '';
   if SQL_VENDA.FieldByName('venda_natureza_operacao').AsInteger <> -1  then
     if Recupera_Natureza_Operacao(SQL_VENDA.FieldByName('venda_natureza_operacao').AsInteger) then
       edCFOP.Text := SQL_Natureza_Operacao.FieldByName('CFOP_TI').AsString;
end;

procedure Tfrm_pedido_venda.Mostra_Cliente(pID:Integer);
begin
   // Cliente
   edCodigo_Cliente.Text := IntToStr(pID);
   if not RecuperaCliente(pID) then exit;

   edCodigo_Cliente.Text := SQL_CLIENTE.FieldByName('Codigo'         ).AsString;
   edRazao_Social.Text   := SQL_CLIENTE.FieldByName('Razao_Social'   ).AsString;
   edContato_Nome.Text   := SQL_CLIENTE.FieldByName('Contato_Nome'   ).AsString;
   edContato_Celular.Text:= SQL_CLIENTE.FieldByName('Contato_Celular').AsString;
   lbTelefone.Caption    := SQL_CLIENTE.FieldByName('Telefone'       ).AsString;
   lbEmail.Caption       := SQL_CLIENTE.FieldByName('Email'          ).AsString;
   lbEmail_1.Caption     := SQL_CLIENTE.FieldByName('Email_1'        ).AsString;
   lbEndereco.Caption    := SQL_CLIENTE.FieldByName('Endereco'       ).AsString;
   lbNumero.Caption      := SQL_CLIENTE.FieldByName('Numero'         ).AsString;
   lbCEP.Caption         := SQL_CLIENTE.FieldByName('CEP'            ).AsString;
   lbBairro.Caption      := SQL_CLIENTE.FieldByName('Bairro'         ).AsString;
   lbZona.Caption        := SQL_CLIENTE.FieldByName('Zona'           ).AsString;
   lbRegiao.Caption      := SQL_CLIENTE.FieldByName('Regiao'         ).AsString;
   lbMunicipio.Caption   := SQL_CLIENTE.FieldByName('Municipio'      ).AsString;
   lbEstado.Caption      := SQL_CLIENTE.FieldByName('Estado'         ).AsString;

   if SQL_CLIENTE.FieldByName('Pessoa_Tipo').AsString = 'FISICA' then
      edCPF_CNPJ.Text := Format_CPF_CNPJ(SQL_CLIENTE.FieldByName('CPF').AsString)
   else
      edCPF_CNPJ.Text := Format_CPF_CNPJ(SQL_CLIENTE.FieldByName('CNPJ').AsString);

end;

procedure Tfrm_pedido_venda.Mostra_VendaTipo;
begin
   // mostra o Tipo de venda
   //---------------------------------------------------------------------------
   edTPMOV.Text := SQL_VENDA.FieldByName('VENDA_TPMOV').AsString;
   edTPMOV_DESCRICAO.Text := fTPMOV_DESCRICAO(edTPMOV.Text);
end;

procedure Tfrm_pedido_venda.Mostra_Vendedor;
var i : Integer;
    vDescricaoNome:String;
begin
   // Vendedor
   cxVendedor.Text := 'Selecione...';
   if SQL_VENDA.FieldByName('COD_VENDEDOR').AsInteger <> 0  then
   begin
      vDescricaoNome := fColaboradorNOME(SQL_VENDA.FieldByName('COD_VENDEDOR').AsInteger);
      for i := 0 to cxVendedor.Properties.Items.Count -1 do
      begin
         cxVendedor.ItemIndex := i;
         if cxVendedor.Text = vDescricaoNome then
            Break;
      end;
   end;
end;

procedure Tfrm_pedido_venda.Ratear_Desconto_Da_Venda_Entre_seus_Itens(
  pCODIGO_VENDA: Integer);
var vVENDA_Desconto,
    vSomaVendaItem_PrecoTotal,
    vProporcao : Real;
begin
   // Ratear proporcionalmente o desconto total da nota entre os seus itens
   //---------------------------------------------------------------------------

   // Somente se foi informado o valor de desconto geral da venda
   if edDescontoGeral.Text = '' then
      exit;

   // O Valor do desconto deve ser válido
   try
      vVENDA_Desconto := StrToFloat(MasctoStr(edDescontoGeral.Text));
   except
      exit;
   end;

   // O Valor do desconto deve ser maior que zero
   if vVENDA_Desconto <= 0 then
      exit;

   // Somar a quantidade de valor total dos itens para aplicar o desconto
   vSomaVendaItem_PrecoTotal := 0;
   FDQuery1.Close;
   FDQuery1.SQL.Clear;
   FDQuery1.SQL.Add('SELECT SUM(QUANTIDADE * PRECO) AS TOTAL ');
   FDQuery1.SQL.Add('  FROM VENDA_ITEM                       ');
   FDQuery1.SQL.Add(' WHERE CODIGO_VENDA = :CODIGO_VENDA     ');
   FDQuery1.ParamByName('CODIGO_VENDA').AsInteger := pCODIGO_VENDA;
   FDQuery1.Open;
   vSomaVendaItem_PrecoTotal := FDQuery1.FieldByName('TOTAL').AsFloat;

   if vSomaVendaItem_PrecoTotal = 0 then
      exit;

   // Determinar o fator de multiplicacao (percentual de proporção do desconto)
   vProporcao := vVENDA_Desconto * 100 / vSomaVendaItem_PrecoTotal;

   // Aplicar o rateio
   FDQuery1.Close;
   FDQuery1.SQL.Clear;
   FDQuery1.SQL.Add('UPDATE VENDA_ITEM                             ');
   FDQuery1.SQL.Add('   SET rateio_desconto = PRECO * 100 * :RATEIO');
   FDQuery1.SQL.Add(' WHERE CODIGO_VENDA = :CODIGO_VENDA           ');
   FDQuery1.ParamByName('CODIGO_VENDA').AsInteger := pCODIGO_VENDA;
   FDQuery1.ParamByName('RATEIO'      ).AsFloat   := vProporcao;
   FDQuery1.ExecSql;
end;

function Tfrm_pedido_venda.RecuperaCliente(pCodigo: Integer): Boolean;
begin
  result := false;
  try
     SQL_CLIENTE.Close;
     SQL_CLIENTE.SQL.Clear;
     SQL_CLIENTE.SQL.Add('SELECT *                ');
     SQL_CLIENTE.SQL.Add('  FROM Cliente          ');
     SQL_CLIENTE.SQL.Add(' WHERE Codigo = :Codigo ');
     SQL_CLIENTE.ParamByName('Codigo').AsInteger := pCodigo;
     SQL_CLIENTE.Open;
     if SQL_CLIENTE.Eof Then
     begin
       WnAlerta('Não encontrado Cliente: '+ IntToStr(pCodigo));
       exit;
     end;
     result := true;
  except
    WnAlerta('Erro: Não conseguiu recuperar dados do Cliente');
  end;
end;

function Tfrm_pedido_venda.Recupera_Natureza_Operacao(pID:Integer):Boolean;
begin
   // Recupera o registro da tabela de Natureza de Operação
   //---------------------------------------------------------------------------
   result := false;
   try
    SQL_Natureza_Operacao.Close;
    SQL_Natureza_Operacao.sql.Clear;
    SQL_Natureza_Operacao.sql.Add('SELECT *                ');
    SQL_Natureza_Operacao.SQL.Add('  FROM Natureza_Operacao');
    SQL_Natureza_Operacao.SQL.Add(' WHERE ID = :ID         ');
    SQL_Natureza_Operacao.ParamByName('ID').AsInteger := pID;
    SQL_Natureza_Operacao.Open;
    if SQL_Natureza_Operacao.eof then
       exit;
    Result := True;
   except
      WnAlerta('Erro: Ao acessar Natureza_Operacao');
   end;
end;

function Tfrm_pedido_venda.Natureza_Operacao_ID(pDescricao: String): Integer;
begin
  // Recebe a descrição de uma natureza de operação
  // e retorna seu codigo
  //---------------------------------------------------------------------------
  result := -1;
  try
     SQL_Auxiliar.Close;
     SQL_Auxiliar.SQL.Clear;
     SQL_Auxiliar.SQL.Add('SELECT ID                     ');
     SQL_Auxiliar.SQL.Add('  FROM Natureza_Operacao      ');
     SQL_Auxiliar.SQL.Add(' WHERE DESCRICAO = :DESCRICAO ');
     SQL_Auxiliar.ParamByName('DESCRICAO').AsString := pDescricao;
     SQL_Auxiliar.Open;
     if SQL_Auxiliar.Eof Then
     begin
       WnAlerta('Não encontrada Nat Op: '+ pDescricao);
       exit;
     end;
     result := SQL_Auxiliar.FieldByName('ID').AsInteger;
  except
    WnAlerta('Erro: Não conseguiu editar Venda');
  end;
end;

function Tfrm_pedido_venda.AtibuirNATOP_ao_Movimento(pPedido,pNaturezaDeOperacao: Integer): Boolean;
begin
   // Atribui a Natureza de Operação ao movimento
   // Retorna true se conseguir e false se não conseguir
   //---------------------------------------------------------------------------
   result := false;
   try
      SQL_Auxiliar.Close;
      SQL_Auxiliar.SQL.Clear;
      SQL_Auxiliar.SQL.Add('UPDATE Venda                                             ');
      SQL_Auxiliar.SQL.Add('   SET venda_natureza_operacao = :venda_natureza_operacao');
      SQL_Auxiliar.SQL.Add(' WHERE CODIGO_VENDA            = :CODIGO_VENDA           ');
      SQL_Auxiliar.ParamByName('CODIGO_VENDA'           ).AsInteger := pPedido;
      SQL_Auxiliar.ParamByName('venda_natureza_operacao').AsInteger := pNaturezaDeOperacao;
      SQL_Auxiliar.ExecSql;
      result := True
   except
      WnAlerta('Erro: Não conseguiu editar Venda');
   end;
end;

procedure Tfrm_pedido_venda.Atualiza_Itens;
begin
   //Fecha a tabela venda_itens
   SQL_VENDA_ITEM.Close;

   //Abre a tabela auxiliar
   Abrir_Tabela_Auxiliar;

   //Somar e mostrar dados dos itens
   //e valor liquido do pedido
   SomaDados_Venda;
end;

function Tfrm_pedido_venda.Pedido_Novo: Boolean;
begin
   // Inicia um pedido novo
   edData.Text := sDataServidor;
   edData.SetFocus;
end;

function Tfrm_pedido_venda.Preenche_Natureza_de_Operacao: Boolean;
begin
  // Preenche combobox com as naturezas de operacao disponiveis (cadastradas)
  //----------------------------------------------------------------------------
  result := false;
  try
      cxNaturezaOperacao.Text := '';
      cxNaturezaOperacao.Properties.Items.Clear;
      SQL_Auxiliar.Close;
      SQL_Auxiliar.sql.Clear;
      SQL_Auxiliar.sql.Add('SELECT DESCRICAO        ');
      SQL_Auxiliar.SQL.Add('  FROM Natureza_Operacao');
      SQL_Auxiliar.SQL.Add(' ORDER BY DESCRICAO     ');
      SQL_Auxiliar.Open;
      while not SQL_Auxiliar.Eof do
      begin
        cxNaturezaOperacao.Properties.items.add(SQL_Auxiliar.FieldByName('DESCRICAO').AsString);
        SQL_Auxiliar.Next;
      end;
      result := true;
  except
      WnAlerta('Erro: Ao acessar Natureza_Operacao');
  end;
end;

function Tfrm_pedido_venda.Preenche_Vendedor: Boolean;
begin
  // Preenche combobox com os vendedores disponiveis (cadastradas)
  //----------------------------------------------------------------------------
  result := false;
  try
      cxVendedor.Text := '';
      cxVendedor.Properties.Items.Clear;
      SQL_Auxiliar.Close;
      SQL_Auxiliar.sql.Clear;
      SQL_Auxiliar.sql.Add('SELECT NOME                          ');
      SQL_Auxiliar.SQL.Add('  FROM Colaborador                   ');
      SQL_Auxiliar.SQL.Add(' WHERE Tipo_Colaborador = 8          '); // Vendedor
      SQL_Auxiliar.SQL.Add('   AND Status_Cadastral = ''ATIVO''  ');
      SQL_Auxiliar.SQL.Add(' ORDER BY NOME                       ');
      SQL_Auxiliar.Open;
      while not SQL_Auxiliar.Eof do
      begin
        cxVendedor.Properties.items.add(SQL_Auxiliar.FieldByName('NOME').AsString);
        SQL_Auxiliar.Next;
      end;
      result := true;
  except
      WnAlerta('Erro: Ao acessar Colaborador (Vendedor)');
  end;
end;

procedure Tfrm_pedido_venda.Prepara_Alteracao;
var Q : tFDQuery;
    vNomeTabelaAux:String;
begin
   // Prepara o ambiente da tela para a alteração
   //---------------------------------------------------------------------------

   // Cria a tabela auxiliar
   vNomeTabelaAux := NomeTabelaAux;
   Criar_Tabela_Auxiliar;

   // Copiar todos os registros desta venda (venda_item)
   // para a tabela auxiliar
   q := TFDQuery.Create(nil);
   q.Connection     := Module.connection;
   q.ConnectionName := 'connection';
   SQL_VENDA_ITEM.First;
   while not SQL_VENDA_ITEM.eof do
   begin
     q.Close;
     q.SQL.Clear;
     q.SQL.Add('INSERT INTO '+vNomeTabelaAux);
     Q.SQL.Add('    (CODIGO,           ');
     Q.SQL.Add('     CODIGO_PRODUTO,   ');
     Q.SQL.Add('     UNIDADE,          ');
     Q.SQL.Add('     QUANTIDADE,       ');
     Q.SQL.Add('     PRECO,            ');
     Q.SQL.Add('     CODIGO_VENDA,     ');
     Q.SQL.Add('     CODIGO_ITEM_VENDA,');
     Q.SQL.Add('     DESCRICAO,        ');
     Q.SQL.Add('     ACRESCIMO,        ');
     Q.SQL.Add('     DESCONTO,         ');
     Q.SQL.Add('     PRECO_TOTAL,      ');
     Q.SQL.Add('     rateio_desconto,  ');
     Q.SQL.Add('     rateio_acrescimo, ');
     Q.SQL.Add('     preco_custo,      ');
     Q.SQL.Add('     VI_CFOP_CSOSN)    ');
     q.SQL.Add('VALUES                 ');
     Q.SQL.Add('   (:CODIGO,           ');
     Q.SQL.Add('    :CODIGO_PRODUTO,   ');
     Q.SQL.Add('    :UNIDADE,          ');
     Q.SQL.Add('    :QUANTIDADE,       ');
     Q.SQL.Add('    :PRECO,            ');
     Q.SQL.Add('    :CODIGO_VENDA,     ');
     Q.SQL.Add('    :CODIGO_ITEM_VENDA,');
     Q.SQL.Add('    :DESCRICAO,        ');
     Q.SQL.Add('    :ACRESCIMO,        ');
     Q.SQL.Add('    :DESCONTO,         ');
     Q.SQL.Add('    :PRECO_TOTAL,      ');
     Q.SQL.Add('    :rateio_desconto,  ');
     Q.SQL.Add('    :rateio_acrescimo, ');
     Q.SQL.Add('    :preco_custo,      ');
     Q.SQL.Add('    :VI_CFOP_CSOSN)    ');

     Q.ParamByName('CODIGO'           ).AsInteger := SQL_VENDA_ITEM.FieldByName('CODIGO'           ).AsInteger;
     Q.ParamByName('CODIGO_PRODUTO'   ).AsInteger := SQL_VENDA_ITEM.FieldByName('CODIGO_PRODUTO'   ).AsInteger;
     Q.ParamByName('UNIDADE'          ).AsString  := SQL_VENDA_ITEM.FieldByName('UNIDADE'          ).AsString;
     Q.ParamByName('QUANTIDADE'       ).AsFloat   := SQL_VENDA_ITEM.FieldByName('QUANTIDADE'       ).AsFloat;
     Q.ParamByName('PRECO'            ).AsFloat   := SQL_VENDA_ITEM.FieldByName('PRECO'            ).AsFloat;
     Q.ParamByName('CODIGO_VENDA'     ).AsInteger := SQL_VENDA_ITEM.FieldByName('CODIGO_VENDA'     ).AsInteger;
     Q.ParamByName('CODIGO_ITEM_VENDA').AsInteger := SQL_VENDA_ITEM.FieldByName('CODIGO_ITEM_VENDA').AsInteger;
     Q.ParamByName('DESCRICAO'        ).AsString  := SQL_VENDA_ITEM.FieldByName('DESCRICAO'        ).AsString;
     Q.ParamByName('ACRESCIMO'        ).AsFloat   := SQL_VENDA_ITEM.FieldByName('ACRESCIMO'        ).AsFloat;
     Q.ParamByName('DESCONTO'         ).AsFloat   := SQL_VENDA_ITEM.FieldByName('DESCONTO'         ).AsFloat;
     Q.ParamByName('PRECO_TOTAL'      ).AsFloat   := SQL_VENDA_ITEM.FieldByName('PRECO_TOTAL'      ).AsFloat;
     Q.ParamByName('rateio_desconto'  ).AsFloat   := SQL_VENDA_ITEM.FieldByName('rateio_desconto'  ).AsFloat;
     Q.ParamByName('rateio_acrescimo' ).AsFloat   := SQL_VENDA_ITEM.FieldByName('rateio_acrescimo' ).AsFloat;
     Q.ParamByName('preco_custo'      ).AsFloat   := SQL_VENDA_ITEM.FieldByName('preco_custo'      ).AsFloat;
     Q.ParamByName('VI_CFOP_CSOSN'    ).AsString  := SQL_VENDA_ITEM.FieldByName('VI_CFOP_CSOSN'    ).AsString;
     Q.ExecSql;
     SQL_VENDA_ITEM.Next;
   end;
   Q.Free;

   // Atualiza os itens da venda na tela
   Atualiza_Itens;

   // Configura campos, botões e flags
   //---------------------------------------------------------------------------
   edCODIGO_VENDA.ReadOnly:=false;

   vOperacao:='Alteração';
   Habilita_Campos(True);
   BtnIncluir.Enabled       := False;
   BtnAlterar.Enabled       := False;

   bIncluirProduto.Enabled  := True;
   btAlterarProduto.Enabled := bIncluirProduto.Enabled;
   bCancelarProduto.Enabled := bIncluirProduto.Enabled;

   BtnGravar.Enabled        := True;
   BtnCancelar.Enabled      := True;

   // Posiciona o cursor no campo data
   edData.SetFocus;
end;

function Tfrm_pedido_venda.Produto_Existe(pCodigo: String): Boolean;
begin
   // Recebe um codigo de produto
   // e verifica se o produto existe
   // retorna true se existe, e false se não existe
   //-------------------------------------------------------------------------

   // Pesquisa pelo Codigo, Codigo_barras e Cod_barras_auxiliar

   result := false;
   if pCodigo = '' then exit;
   try
       SQL_PRODUTO.Close;
       SQL_PRODUTO.SQL.Clear;
       SQL_PRODUTO.SQL.Add('SELECT *                            ');
       SQL_PRODUTO.SQL.Add('  FROM PRODUTO                      ');
       SQL_PRODUTO.SQL.Add(' WHERE CODIGO              = :CODIGO');
       SQL_PRODUTO.SQL.Add('    OR CODIGO_BARRAS       = :CODIGO');
       SQL_PRODUTO.SQL.Add('    OR COD_BARRAS_AUXILIAR = :CODIGO');
       SQL_PRODUTO.ParamByName('CODIGO').AsString := pCodigo;
       SQL_PRODUTO.Open;
       if SQL_PRODUTO.Eof then
       begin
         WnAlerta('Produto não encontrado.');
         exit;
       end;
       result := True;
   except
      WnAlerta('Erro: Ao pesquisar Produto.');
   end;
end;

function Tfrm_pedido_venda.Produto_sem_CST_ICMS(pVenda: Integer): Boolean;
var Q : tFDQuery;
begin
   //03/06/2020-04:32-Verifica se há algum produto em VENDA_ITEM de determinado
   //                 pedido sem o CST do ICMS informado. Retorna true se sim.

   Result := false;
   q := TFDQuery.Create(nil);
   q.Connection     := Module.connection;
   q.ConnectionName := 'connection';

   //Procura por itens do pedido que não tenham o CST do ICMS informado
   //em seus cadastros
   Q.Close;
   Q.Sql.Clear;
   Q.SQL.Add('SELECT P.CODIGO,                     ');
   Q.SQL.Add('       P.DESCRICAO_PRODUTO           ');
   Q.SQL.Add('  FROM VENDA_ITEM V,                 ');
   Q.SQL.Add('       PRODUTO    P                  ');
   Q.SQL.Add(' WHERE V.CODIGO_PRODUTO = P.CODIGO   ');
   Q.SQL.Add('   AND V.CODIGO_VENDA   = :CODIGO    ');
   Q.SQL.Add('   AND (                             ');
   Q.SQL.Add('            (P.ICMS_CST IS NULL)     ');
   Q.SQL.Add('         OR (P.ICMS_CST =  ""  )     ');
   Q.SQL.Add('       )                             ');
   Q.ParamByName('CODIGO').AsInteger := pVenda;
   Q.Open;
   while not Q.EOF do
   begin
      //Seta estatus de existência de produto sem CST do ICMS
      Result := True;

      //Avisa ao usuário e o orienta a consertar o cadastro do produto
      WnAlerta('Erro em Produto',
               'Produto '
             + Q.FieldByName('CODIGO').AsString
             + '-'
             + Q.FieldByName('DESCRICAO_PRODUTO').AsString
             + slinebreak
             + 'sem CST do ICMS definido.'
             + slinebreak
             + slinebreak
             + 'Acerte o cadastro deste produto e tente novamente emitir a NFe.'
             );

      //Abre o cadastro do produto
      Frm_Produto := TFrm_Produto.Create(Self);
      vFrm_ProdutoPesquisarCodigoDoProduto:=True;
      Frm_Produto.edArgumentoDePesquisa.Text := Q.FieldByName('CODIGO').AsString;
      Frm_Produto.ShowModal;
      Frm_Produto.Free;

      //Próximo item do pedido
      Q.Next;
   end;

   //Destroi a Query para liberar memória
   Q.Free;

end;

procedure Tfrm_pedido_venda.Preenche_Tela(pCODIGO_VENDA:Integer);
begin
   // Preenche a tela com os dados do movimento
   //---------------------------------------------------------------------------
   if not SQL_C_VENDAS.Active then exit;
   if not vPreencherTela      then exit;

   // Preenche com dados do movimento (cabecalho)
   SQL_VENDA.Close;
   SQL_VENDA.Sql.Clear;
   SQL_VENDA.Sql.Add('SELECT *                           ');
   SQL_VENDA.Sql.Add('  FROM VENDA                       ');
   SQL_VENDA.Sql.Add(' WHERE CODIGO_VENDA = :CODIGO_VENDA');
   SQL_VENDA.ParamByName('CODIGO_VENDA').AsInteger := pCODIGO_VENDA;
   SQL_VENDA.Open;

   // Preenche com itens do movimento
   SQL_VENDA_ITEM.Close;
   SQL_VENDA_ITEM.Sql.Clear;
   SQL_VENDA_ITEM.Sql.Add('SELECT *                           ');
   SQL_VENDA_ITEM.Sql.Add('  FROM VENDA_ITEM                  ');
   SQL_VENDA_ITEM.Sql.Add(' WHERE CODIGO_VENDA = :CODIGO_VENDA');
   SQL_VENDA_ITEM.Sql.Add(' ORDER BY CODIGO                   ');
   SQL_VENDA_ITEM.ParamByName('CODIGO_VENDA').AsInteger :=
                                SQL_VENDA.FieldByName('CODIGO_VENDA').AsInteger;
   SQL_VENDA_ITEM.Open;

   MostraDados;
end;

procedure Tfrm_pedido_venda.BuscarVenda;
var
  StatusVenda,
  DataInicio,  DataFim,  DataFaixa,
  MesInicio,   MesFim,
  VendaInicio, VendaFim, FaixaVenda,
  ordem,
  PossuiNFCE,
  InfoManual:                        string;
begin
   // Recupera os pedidos para emissão de NFe/NFCe
  //if (chk_fechadas.checked) or (chk_canceladas.checked) or (chk_abertas.checked) then
  //if (chk_canceladas.checked) then
  begin
    //if chk_fechadas.checked then
    //  StatusVenda := '"FECHADA"';
    //if chk_abertas.checked then
    //  if StatusVenda.IsEmpty then
    //    StatusVenda := '"ABERTA"'
    //  else
    //    StatusVenda := StatusVenda + ',' + '"ABERTA"';
    if chk_canceladas.checked then
      if StatusVenda.IsEmpty then
        StatusVenda := '"CANCELADA"'
      else
        StatusVenda := StatusVenda + ',' + '"CANCELADA"';
    if CB_MES.Text = '' then
    begin
      if edt_periodo_inicio.date <> NullDate then
        DataInicio := FormatDateTime('yyyy-mm-dd', edt_periodo_inicio.date);
      if edt_periodo_fim.date <> NullDate then
        DataFim := FormatDateTime('yyyy-mm-dd', edt_periodo_fim.date);
    end
    else
    begin
      MesInicio := MonthToDbMonth('01', CB_MES.Text);
      MesFim := MonthToDbMonth('31', CB_MES.Text);
    end;
    //if edt_venda_inicio.Text <> '' then
    //begin
    //  VendaInicio := edt_venda_inicio.Text;
    //end;
    //if edt_venda_fim.Text <> '' then
    //begin
    //  VendaFim := edt_venda_fim.Text;
    //end;
    SQL_C_VENDAS.Close;
    SQL_C_VENDAS.SQL.Clear;
    SQL_C_VENDAS.SQL.Add('SELECT V.CODIGO_VENDA,                                   ');
    SQL_C_VENDAS.SQL.Add('       V.DATA,                                           ');
    SQL_C_VENDAS.SQL.Add('       V.HORA,                                           ');
    SQL_C_VENDAS.SQL.Add('       V.CAIXA,                                          ');
    SQL_C_VENDAS.SQL.Add('      (SELECT U.USUARIO                                  ');
    SQL_C_VENDAS.SQL.Add('         FROM USUARIO U                                  ');
    SQL_C_VENDAS.SQL.Add('        WHERE U.CODIGO = V.OPERADOR) AS OPERADOR,        ');
    SQL_C_VENDAS.SQL.Add('      (SELECT C.NOME                                     ');
    SQL_C_VENDAS.SQL.Add('         FROM COLABORADOR C                              ');
    SQL_C_VENDAS.SQL.Add('        WHERE C.CODIGO = V.COD_VENDEDOR) AS VENDEDOR,    ');
    SQL_C_VENDAS.SQL.Add('      (SELECT FANTASIA                                   ');
    SQL_C_VENDAS.SQL.Add('         FROM CLIENTE                                    ');
    SQL_C_VENDAS.SQL.Add('        WHERE CODIGO = V.CODIGO_CLIENTE) AS NOME_CLIENTE,');
    SQL_C_VENDAS.SQL.Add('      V.TOTAL_VENDA,                                     ');
    SQL_C_VENDAS.SQL.Add('      V.TROCO,                                           ');
    SQL_C_VENDAS.SQL.Add('      V.VALOR_PAGO,                                      ');
    SQL_C_VENDAS.SQL.Add('      V.STATUS,                                          ');
    SQL_C_VENDAS.SQL.Add('      V.COD_NFCE,                                        ');
    SQL_C_VENDAS.SQL.Add('      V.COMANDA                                          ');
    SQL_C_VENDAS.SQL.Add(' FROM VENDA V                                            ');
    SQL_C_VENDAS.SQL.Add('ORDER BY DATA DESC, HORA DESC                            ');

    {
    SQL_C_VENDAS.SQL.Add('WHERE V.STATUS in (' + StatusVenda + ')              ');

    if (DataInicio <> '') and (DataFim <> '') then
    Begin
      SQL_C_VENDAS.SQL.Add('AND V.DATA BETWEEN :DATA_INICIO AND :DATA_FIM      ');
      SQL_C_VENDAS.SQL.ParamByName('DATA_INICIO').AsDate := StrToDate(DataInicio);
      SQL_C_VENDAS.SQL.ParamByName('DATA_FIM'   ).AsDate := StrToDate(DataFim);
    End;

    if (MesInicio <> '') and (MesFim <> '') then
      DataFaixa := ' AND v.DATA BETWEEN ' + QuotedStr(MesInicio) + ' AND ' + QuotedStr(MesFim);
    if (VendaInicio <> '') then
      FaixaVenda := ' AND v.CODIGO_VENDA = ' + QuotedStr(VendaInicio);
    if (VendaFim <> '') then
      FaixaVenda := ' AND v.CODIGO_VENDA = ' + QuotedStr(VendaFim);
    if (VendaInicio <> '') AND (VendaFim <> '') then
      FaixaVenda := ' AND v.CODIGO_VENDA BETWEEN ' + QuotedStr(VendaInicio) + ' AND ' + QuotedStr(VendaFim);
    if chk_nfce.checked then
      lbl_venda_nfce.Caption := simplequery('SELECT COUNT(*) FROM VENDA v WHERE v.COD_NFCE <> "0"' + DataFaixa + FaixaVenda + InfoManual)
        .Fields[0].AsString
    else if not chk_nfce.checked then
    begin
      PossuiNFCE := ' AND v.COD_NFCE = "0"';
      lbl_venda_nfce.Caption := '0';
    end;
    if chk_venda.checked then
      ordem := ' ORDER BY v.CODIGO_VENDA';
    if chk_data.checked then
      ordem := ' ORDER BY v.DATA';
    if chk_status.checked then
      ordem := ' ORDER BY v.STATUS';

    if edt_consulta.Text <> emptystr then
      case cb_filtro.SelectedItem of
        0:
          InfoManual := ' AND v.NOME_CLIENTE like "' + edt_consulta.Text + '%"';
        1:
          InfoManual := ' AND v.CAIXA like "' + edt_consulta.Text + '%"';
        2:
          InfoManual := ' AND V.OPERADOR = (select u.codigo from usuario u where u.usuario like "' + edt_consulta.Text + '%")';
        3:
          InfoManual := ' AND v.COD_VENDEDOR = (select u.codigo from usuario u where u.usuario like "' + edt_consulta.Text + '%")';
        4:
          InfoManual := ' AND v.COMANDA like "' + edt_consulta.Text + '%"';
      end;

    Consulta := Consulta + DataFaixa + FaixaVenda + InfoManual + PossuiNFCE + ordem;
    }

    vPreencherTela := false;
    SQL_C_VENDAS.open;
    SQL_C_VENDAS.FetchAll;

    lbl_qtde.Caption      := IntToStr(SQL_C_VENDAS.RecordCount);
    lb_total_nfce.Caption := Float_to_String(SomaTOTAL_VENDA);

    SQL_C_VENDAS.First;
    vPreencherTela := True;
  end;
  //else
  //  wnalerta('Consultar Venda', slinebreak + 'Você deve selecionar um status!');
end;

procedure Tfrm_pedido_venda.SomaDados_Venda;
var vSomaValorDosItens,
    vDescontoGeral,
    vValorLiquido : Real;
begin
   // Soma todos os dados da venda
   //---------------------------------------------------------------------------
   edQtdeItens.Text    := '0';
   edValorItens.Text   := '0,00';
   edValorLiquido.Text := '0,00';

   if not SQL_VENDA_ITEM.active then exit;

   // Quantidade de itens
   edQtdeItens.Text := IntToStr(SQL_VENDA_ITEM.RecordCount);

   // Valor total dos itens
   vSomaValorDosItens := SomaValorDosItens;
   edValorItens.Text  := Float_to_String(vSomaValorDosItens);

   // Valor Líquido do Pedido
   vDescontoGeral := 0;
   if edDescontoGeral.Text <> '' then
   begin
      try
        vDescontoGeral := StrToFloat(edDescontoGeral.Text);
        if vDescontoGeral < 0 then
        begin
          WnAlerta('Valor do desconto inválido');
          edDescontoGeral.SetFocus;
          exit;
        end;
      except
      end;
   end;
   vValorLiquido := vSomaValorDosItens + vDescontoGeral;
   edValorLiquido.Text := Float_to_String(vValorLiquido);
end;

function Tfrm_pedido_venda.SomaTOTAL_VENDA: Real;
var vSomaTOTAL_VENDA:Real;
begin
   // Retorna o valor total das vendas constantes no grid
   vSomaTOTAL_VENDA := 0;
   SQL_C_VENDAS.First;
   while not SQL_C_VENDAS.Eof do
   begin
     vSomaTOTAL_VENDA := vSomaTOTAL_VENDA + SQL_C_VENDAS.FieldByName('TOTAL_VENDA').AsFloat;
     SQL_C_VENDAS.Next;
   end;
   SQL_C_VENDAS.First;
   Result := vSomaTOTAL_VENDA;
end;

function Tfrm_pedido_venda.SomaValorDosItens: Real;
var vSoma:Real;
begin
   // Soma os valores de todos os itens
   vSoma := 0;
   SQL_VENDA_ITEM.First;
   while not SQL_VENDA_ITEM.eof do
   begin
     vSoma := vSoma + SQL_VENDA_ITEM.FieldByName('PRECO_TOTAL').AsFloat;
     SQL_VENDA_ITEM.Next;
   end;
   result := vSoma;
end;

procedure Tfrm_pedido_venda.SQL_C_VENDASAfterScroll(DataSet: TDataSet);
begin
   // Preenche a tela com dados do pedido
   // que recebeu um click do usuário
   // ou pelo qual o usuário passou com as setas do teclado
   //---------------------------------------------------------------------------
   Preenche_Tela(SQL_C_VENDAS.FieldByName('CODIGO_VENDA').AsInteger);
end;

procedure Tfrm_pedido_venda.SQL_VENDABeforePost(DataSet: TDataSet);
begin
   SQL_VENDA.FieldByName('VENDA_TPMOV').AsString := edTPMOV.Text;
end;

function Tfrm_pedido_venda.Trata_Transportadora:Boolean;
begin
   //Recuperar dados da transportadora pela placa do veículo
   //Se informado, o Veículo precisa existir
   //---------------------------------------------------------------------------
   result := true;
   if edPlaca.text = '' then
     exit;

   if not fVEICULOExiste(edPlaca.text,edPLACA_DESCRICAO,edTRANSP_RAZAO_SOCIAL) then
   begin
      result := false;
      WnAlerta('Veículo não cadastrado');
      edPLACA.SetFocus;
   end;

end;

procedure Tfrm_pedido_venda.Abrir_Tabela_Auxiliar;
begin
   //Abre a tabela auxiliar
   // Preenche com itens do movimento
   SQL_VENDA_ITEM.Close;
   SQL_VENDA_ITEM.Sql.Clear;
   SQL_VENDA_ITEM.Sql.Add('SELECT *               ');
   SQL_VENDA_ITEM.Sql.Add('  FROM '+ NomeTabelaAux );
   SQL_VENDA_ITEM.Sql.Add('ORDER bY CODIGO        ');
   SQL_VENDA_ITEM.Open;
end;

function Tfrm_pedido_venda.ProxItemVenda:Integer;
var Q : tFDQuery;
begin
   // Retorna o próximo número sequencial de item de venda
   //-----------------------------------------------------
   q := TFDQuery.Create(nil);
   q.Connection     := Module.connection;
   q.ConnectionName := 'connection';

   q.Close;
   q.SQL.Clear;
   q.SQL.Add('INSERT MAX(CODIGO_ITEM_VENDA) AS PROXIMO');
   Q.SQL.Add('  FROM '+NomeTabelaAux);
   Q.Open;
   result := Q.FieldByName('PROXIMO').AsInteger + 1;

   Q.Free;
end;

end.


**   qLocal.SQL.Add('    CPF_CLIENTE,     ');
**   qLocal.SQL.Add('    NOME_CLIENTE,    ');
**   qLocal.SQL.Add('    IE_CLIENTE,      ');
**   qLocal.SQL.Add('    TELEFONE_CLIENTE,');
**   qLocal.SQL.Add('    RUA_CLIENTE` VARCHAR(100) NULL DEFAULT NULL,
**   qLocal.SQL.Add('    NUMERO_CLIENTE` VARCHAR(5) NULL DEFAULT NULL,
**   qLocal.SQL.Add('    BAIRRO_CLIENTE` VARCHAR(50) NULL DEFAULT NULL,
**   qLocal.SQL.Add('    IdCaixa,         ');
**   qLocal.SQL.Add('    STATUSNFe` INT(11) NULL DEFAULT '0',
**   qLocal.SQL.Add('    NOTAFISCAL` VARCHAR(10) NULL DEFAULT NULL,
**   qLocal.SQL.Add('    venda_natureza_operacao` INT(11) NULL DEFAULT NULL,
**   qLocal.SQL.Add('    NFe_Veiculo_tpOp,      ');
**   qLocal.SQL.Add('    VENDA_FATURADA` VARCHAR(50) NULL DEFAULT NULL,

