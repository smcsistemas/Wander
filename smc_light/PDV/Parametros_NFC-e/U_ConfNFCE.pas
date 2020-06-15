{ 21.11.16 16:59 }
unit U_ConfNFCE;
{
{
========================================================================================================================================
ALT|   DATA |HORA |UNIT                        |Descrição                                                                              |
---|--------|-----|----------------------------|----------------------------------------------------------------------------------------
330|15/06/20|13:35|U_ConfNFCE                  |Passa a tratar PRODUTO_PROD(PROD_EAN)    ao invés de PRODUTO(CODIGO_BARRAS)
========================================================================================================================================

================================================================================
| ITEM|DATA  HR|UNIT                |HISTORICO                                 |
|-----|--------|--------------------|------------------------------------------|
|  206|25/05/20|wander              |Retirada a coluna OPTANTE_SIMPLES_NACIONAL|
|     |   22:52|U_ConfNFCE          |do TFDQuery SQL_Empresa                   |
================================================================================
}

interface

uses
  Winapi.Windows, System.SysUtils, System.Variants,
  System.Classes,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs,
  spdNFCeDataSets, spdNFCe,
  FireDAC.Stan.Param,

  Data.DB, FireDAC.Comp.DataSet, FireDAC.Comp.Client, spdNFCeType,
  spdGovX7_TLB,
  frxClass, XMLDoc,
  XMLIntf, DateUtils, StrUtils, System.Math, h_Dialogs,
  c_Globals, S_Parametros_Venda, S_Module, h_Functions, FireDAC.Stan.Intf, FireDAC.Stan.Option, FireDAC.Stan.Error, FireDAC.DatS,
  FireDAC.Phys.Intf, FireDAC.DApt.Intf,
  FireDAC.Stan.Async,
  FireDAC.DApt, System.Contnrs, System.IniFiles, h_DB, liberacao;

type
  TFrm_ConfNFCE = class(TForm)
    dlgTx2: TOpenDialog;
    SQL_Empresa: TFDQuery;
    Sql_Conf: TFDQuery;
    SQL_PARAMETROS_NFCE: TFDQuery;
    Sql_ConfCODIGO: TFDAutoIncField;
    Sql_ConfCERTIFICADO: TMemoField;
    Sql_ConfID_TOKEN: TStringField;
    Sql_ConfCODIGO_CSC: TStringField;
    Sql_ConfEMAIL_SMTP: TStringField;
    Sql_ConfAMBIENTE: TStringField;
    Sql_ConfSMT_SEGURO: TStringField;
    Sql_ConfPORTA: TStringField;
    Sql_ConfEMAIL: TStringField;
    Sql_ConfSENHA: TStringField;
    Sql_ConfNUMERO_SERIE_CERTIFICADO: TStringField;
    Sql_ConfTIPO_NOTA: TStringField;
    SQL_PARAMETROS_NFCEUTILIZA_NFCE: TStringField;
    SQL_PARAMETROS_NFCEIMPRIMIR_DANFE_DIRETO: TStringField;
    SQL_PARAMETROS_NFCEVISUALIZAR_DANFE: TStringField;
    SQL_PARAMETROS_NFCEVENDA_GERA_NFCE: TStringField;
    SQL_PARAMETROS_NFCECARTAO_GERA_NFCE: TStringField;
    SQL_PARAMETROS_NFCENFCE_COMPROVANTE: TStringField;
    SQL_PARAMETROS_NFCEIMPRESSORA_DANFE: TStringField;
    SQL_PARAMETROS_NFCELOTE: TStringField;
    SQL_PARAMETROS_NFCEIMPRIMIR_COMPROVANTE: TStringField;
    SQL_PARAMETROS_NFCEVENDA_SEM_ESTOQUE: TStringField;
    SQL_PARAMETROS_NFCEHABILITAR_FIADO: TStringField;
    SQL_PARAMETROS_NFCEFIADO_COMPROVANTE: TStringField;
    SQL_PARAMETROS_NFCEESTOQUE_PDV: TStringField;
    SQL_PARAMETROS_NFCEALTERA_PRECO_PDV: TStringField;
    SQL_PARAMETROS_NFCEABRIR_GAVETA: TStringField;
    SQL_Empresaid: TFDAutoIncField;
    SQL_Empresaaliq_imcs: TBCDField;
    SQL_Empresaaliq_pis_cumulativo: TBCDField;
    SQL_Empresaaliq_pis_nao_cumulativo: TBCDField;
    SQL_Empresaaliq_cofins_cumulativo: TBCDField;
    SQL_Empresaaliq_cofins_nao_cumulativo: TBCDField;
    SQL_Empresaaliq_iss: TBCDField;
    SQL_Empresacaminho_backup: TStringField;
    SQL_Empresahost_name: TStringField;
    SQL_EmpresaPASTA_FTP: TStringField;
    SQL_EmpresaCODIGO: TFDAutoIncField;
    SQL_EmpresaRAZAO_SOCIAL: TStringField;
    SQL_EmpresaNOME_FANTASIA: TStringField;
    SQL_EmpresaDATA_CADASTRO: TDateField;
    SQL_EmpresaCNPJ: TStringField;
    SQL_EmpresaINSCRICAO_ESTADUAL: TStringField;
    SQL_EmpresaINSCRICAO_MUNICIPAL: TStringField;
    SQL_EmpresaEMPRESA_TELEFONE_01: TStringField;
    SQL_EmpresaEMPRESA_TELEFONE_02: TStringField;
    SQL_EmpresaEMPRESA_TELEFONE_03: TStringField;
    SQL_EmpresaEMPRESA_FAX: TStringField;
    SQL_EmpresaEMPRESA_CELULAR_01: TStringField;
    SQL_EmpresaEMPRESA_CELULAR_02: TStringField;
    SQL_EmpresaEMPRESA_SKYPE: TStringField;
    SQL_EmpresaEMPRESA_SITE: TStringField;
    SQL_EmpresaEMPRESA_EMAIL_01: TStringField;
    SQL_EmpresaEMPRESA_EMAIL_02: TStringField;
    SQL_EmpresaSUFRAMA: TStringField;
    SQL_EmpresaENDERECO: TStringField;
    SQL_EmpresaNUMERO: TStringField;
    SQL_EmpresaBAIRRO: TStringField;
    SQL_EmpresaCEP: TStringField;
    SQL_EmpresaMUNICIPIO: TStringField;
    SQL_EmpresaCODIGO_MUNICIPIO: TIntegerField;
    SQL_EmpresaESTADO: TStringField;
    SQL_EmpresaCOD_UF: TStringField;
    SQL_EmpresaPAIS: TStringField;
    SQL_EmpresaCOMPLEMENTO: TStringField;
    SQL_EmpresaINICIO_ATIVIDADE: TDateField;
    SQL_EmpresaIE_SUBSTITUTO_TRIBUTARIO: TStringField;
    SQL_EmpresaCODIGO_REGIME_TRIBUTARIO: TStringField;
    SQL_EmpresaTRIBUTACAO_PIS_COFINS: TStringField;
    SQL_EmpresaAPURACAO_MENSAL_IPI: TStringField;
    SQL_EmpresaAPURACAO_IPI: TStringField;
    SQL_EmpresaAPURACAO_DECENDIAL_IPI: TStringField;
    SQL_EmpresaTRIBUTADO_ALIQUOTA_FIXA_ICMS: TStringField;
    SQL_EmpresaCONTRIBUINTE_IPI: TStringField;
    SQL_EmpresaORGANIZACAO_CONTABIL_RAZAO_SOCIAL: TStringField;
    SQL_EmpresaORGANIZACAO_CONTABIL_FANTASIA: TStringField;
    SQL_EmpresaORGANIZACAO_CONTABIL_CNPJ_CPF: TStringField;
    SQL_EmpresaORGANIZACAO_CONTABIL_INSCRICAO: TStringField;
    SQL_EmpresaORGANIZACAO_CONTABIL_ENDERECO: TStringField;
    SQL_EmpresaORGANIZACAO_CONTABIL_BAIRRO: TStringField;
    SQL_EmpresaORGANIZACAO_CONTABIL_NUMERO: TStringField;
    SQL_EmpresaORGANIZACAO_CONTABIL_MUNICIPIO: TStringField;
    SQL_EmpresaORGANIZACAO_CONTABIL_CODIGO_MUNICIPIO: TIntegerField;
    SQL_EmpresaORGANIZACAO_CONTABIL_ESTADO: TStringField;
    SQL_EmpresaORGANIZACAO_CONTABIL_PAIS: TStringField;
    SQL_EmpresaORGANIZACAO_CONTABIL_CEP: TStringField;
    SQL_EmpresaORGANIZACAO_CONTABIL_COMPLEMENTO: TStringField;
    SQL_EmpresaORGANIZACAO_CONTABIL_TELEFONE_01: TStringField;
    SQL_EmpresaORGANIZACAO_CONTABIL_TELEFONE_02: TStringField;
    SQL_EmpresaORGANIZACAO_CONTABIL_CELULAR_01: TStringField;
    SQL_EmpresaORGANIZACAO_CONTABIL_CELULAR_02: TStringField;
    SQL_EmpresaORGANIZACAO_CONTABIL_EMAIL_01: TStringField;
    SQL_EmpresaORGANIZACAO_CONTABIL_EMAIL_02: TStringField;
    SQL_EmpresaORGANIZACAO_CONTABIL_SITE: TStringField;
    SQL_EmpresaORGANIZACAO_CONTABIL_SKYPE: TStringField;
    SQL_EmpresaCONTADOR_NOME: TStringField;
    SQL_EmpresaCONTADOR_CPF: TStringField;
    SQL_EmpresaCONTADOR_CRC: TStringField;
    SQL_EmpresaNIRE: TStringField;
    SQL_EmpresaCNAE: TStringField;
    SQL_EmpresaBANCO_01: TStringField;
    SQL_EmpresaBANCO_OP: TStringField;
    SQL_EmpresaBANCO_OP2: TStringField;
    SQL_EmpresaBANCO_OP_1: TStringField;
    SQL_EmpresaBANCO_OP_1_2: TStringField;
    SQL_EmpresaBANCO_AGENCIA_01: TStringField;
    SQL_EmpresaBANCO_CONTA_01: TStringField;
    SQL_EmpresaBANCO_02: TStringField;
    SQL_EmpresaBANCO_AGENCIA_01_DIGITO: TStringField;
    SQL_EmpresaBANCO_CONTA_01_DIGITO: TStringField;
    SQL_EmpresaBANCO_AGENCIA_02_DIGITO: TStringField;
    SQL_EmpresaBANCO_CONTA_02_DIGITO: TStringField;
    SQL_EmpresaBANCO_AGENCIA_02: TStringField;
    SQL_EmpresaBANCO_CONTA_02: TStringField;
    SQL_EmpresaBANCO_03: TIntegerField;
    SQL_EmpresaBANCO_AGENCIA_03: TStringField;
    SQL_EmpresaBANCO_CONTA_03: TStringField;
    SQL_EmpresaBANCO_GERENTE_01: TStringField;
    SQL_EmpresaBANCO_TELEFONE_01: TStringField;
    SQL_EmpresaBANCO_RAMAL_01: TStringField;
    SQL_EmpresaBANCO_GERENTE_02: TStringField;
    SQL_EmpresaBANCO_TELEFONE_02: TStringField;
    SQL_EmpresaBANCO_RAMAL_02: TStringField;
    SQL_EmpresaSOCIO_01: TIntegerField;
    SQL_EmpresaSOCIO_02: TIntegerField;
    SQL_EmpresaRODAPE: TStringField;
    SQL_EmpresaLOGOTIPO: TStringField;
    SQL_EmpresaSELECAO_EMPRESA: TStringField;
    SQL_EmpresaCODIGO_IDENTIFICACAO: TStringField;
    SQL_EmpresaCHAVE_ATIVACAO: TStringField;
    SQL_EmpresaCODIGO_PAIS: TIntegerField;
    SQL_EmpresaORGANIZACAO_CONTABIL_CODPAIS: TIntegerField;
    SQL_EmpresaORGANIZACAO_CONTABIL_CPF: TStringField;
    SQL_EmpresaDIA_VENCIMENTO: TStringField;
    SQL_EmpresaARQUIVOS_FISCAIS_EMAIL_01: TStringField;
    SQL_EmpresaARQUIVOS_FISCAIS_EMAIL_02: TStringField;
    SQL_EmpresaORGANIZACAO_CONTABIL_NOME: TStringField;
    SQL_NFCE: TFDQuery;
    SQL_NFCECODIGO: TFDAutoIncField;
    SQL_NFCEDATA_EMISSAO: TDateField;
    SQL_NFCEHORA_EMISSAO: TTimeField;
    SQL_NFCEDATA_TRANSMISSAO: TDateField;
    SQL_NFCEHORA_TRANSMISSAO: TTimeField;
    SQL_NFCECODIGO_VENDA: TStringField;
    SQL_NFCEVALOR_NFCE: TBCDField;
    SQL_NFCEACRESCIMOS_NFCE: TBCDField;
    SQL_NFCEDESCONTOS_NFCE: TBCDField;
    SQL_NFCETOTAL_NFCE: TBCDField;
    SQL_NFCEVALOR_PAGO: TBCDField;
    SQL_NFCETROCO: TBCDField;
    SQL_NFCELOTE: TStringField;
    SQL_NFCESERIE: TStringField;
    SQL_NFCECHAVE: TStringField;
    SQL_NFCECAMINHO_XML: TStringField;
    SQL_NFCETIPO_EMISSAO: TStringField;
    SQL_NFCESTATUS_NFCE: TStringField;
    SQL_NFCERETORNO_NFCE: TStringField;
    SQL_NFCEERRO_ROTINA: TStringField;
    SQL_VENDA_ITEM: TFDQuery;
    SQL_VENDA: TFDQuery;
    SQL_VENDA_PAGAMENTO: TFDQuery;
    SQL_VENDA_ITEMCODIGO_PRODUTO: TIntegerField;
    SQL_VENDA_ITEMCODIGO_VENDA: TIntegerField;
    SQL_VENDA_ITEMQUANTIDADE: TSingleField;
    SQL_VENDA_ITEMPRECO: TBCDField;
    SQL_VENDA_ITEMPRECO_TOTAL: TBCDField;
    SQL_VENDA_ITEMACRESCIMO: TBCDField;
    SQL_VENDA_ITEMDESCONTO: TBCDField;
    SQL_VENDA_ITEMCODIGO_ITEM_VENDA: TIntegerField;
    SQL_VENDA_ITEMCODIGO: TIntegerField;
    SQL_VENDA_ITEMDESCRICAO_PRODUTO: TStringField;
    SQL_VENDA_ITEMNCM: TStringField;
    SQL_VENDA_ITEMFRETE: TBCDField;
    SQL_VENDA_ITEMICMS_CST: TStringField;
    SQL_VENDA_ITEMUNIDADE_MEDIDA: TStringField;
    SQL_VENDA_ITEMCODIGO_ORIGEM_MERCADORIA: TIntegerField;
    SQL_VENDA_ITEMALIQ_ICMS: TBCDField;
    SQL_VENDA_ITEMCSOSN: TStringField;
    SQL_VENDA_ITEMCEST: TStringField;
    SQL_VENDA_ITEMPIS_CST: TStringField;
    SQL_VENDA_ITEMCOFINS_CST: TStringField;
    SQL_VENDACODIGO_VENDA: TFDAutoIncField;
    SQL_VENDAOPERADOR: TStringField;
    SQL_VENDACAIXA: TStringField;
    SQL_VENDADATA: TDateField;
    SQL_VENDAHORA: TTimeField;
    SQL_VENDACPF_CLIENTE: TStringField;
    SQL_VENDANOME_CLIENTE: TStringField;
    SQL_VENDAIE_CLIENTE: TStringField;
    SQL_VENDATELEFONE_CLIENTE: TStringField;
    SQL_VENDACODIGO_CLIENTE: TIntegerField;
    SQL_VENDARUA_CLIENTE: TStringField;
    SQL_VENDANUMERO_CLIENTE: TStringField;
    SQL_VENDABAIRRO_CLIENTE: TStringField;
    SQL_VENDAVENDA_FATURADA: TStringField;
    SQL_VENDAVALOR_VENDA: TBCDField;
    SQL_VENDAACRESCIMO: TBCDField;
    SQL_VENDADESCONTO: TBCDField;
    SQL_VENDATOTAL_VENDA: TBCDField;
    SQL_VENDAVALOR_PAGO: TBCDField;
    SQL_VENDATROCO: TBCDField;
    SQL_VENDASTATUS: TStringField;
    SQL_VENDACOD_NFCE: TStringField;
    SQL_VENDA_PAGAMENTOCODIGO: TFDAutoIncField;
    SQL_VENDA_PAGAMENTOCODIGO_VENDA: TIntegerField;
    SQL_VENDA_PAGAMENTOCOD_TIPO_PAGAMENTO: TStringField;
    SQL_VENDA_PAGAMENTOTIPO_PAGAMENTO: TStringField;
    SQL_VENDA_PAGAMENTOTOTAL_PAGO: TBCDField;
    SQL_VENDA_PAGAMENTOVALOR_DEBITADO: TBCDField;
    SQL_PARAMETROS_NFCESERIE_NORMAL: TStringField;
    SQL_PARAMETROS_NFCEVIAS_COMPROVANTE: TStringField;
    SQL_PARAMETROS_NFCEUSA_PAG_PADRAO: TStringField;
    SQL_PARAMETROS_NFCEPAG_PADRAO: TStringField;
    SQL_PARAMETROS_NFCEPAG_LISTA: TStringField;
    SQL_PARAMETROS_NFCEPAG_CODIGO: TStringField;
    SQL_EmpresaNOME_CONTATO_AD: TMemoField;
    spdNFCe: TspdNFCe;
    spdNFCeDataSets: TspdNFCeDataSets;
    function configurarcomponente(const Certficado: string = ''): boolean;
    procedure PagamentoTroco(Pagamento, Troco: string);
    function EnviarNFCe(NumeroLote, Chave, Caminho, ErroRotina: String; data_op: tdatetime = 0): String;
    procedure ImprimirDanfce(Caminho, ErroRotina: String; const Tot_Pagamentos: string = '0'; const Tot_Troco: string = '0');
    procedure VisualizarDanfce(Chave, xmlNFCE, NumLote, ErroRotina: String);
    function JanelaRetornaStatus(RetornoXML: String; MostraJanela: boolean): String;
    function DadosIBPT(TribFederais, TribEstaduais, TribMunicipais: Extended): boolean;
    function ProtocoloNFCE(CaminhoXML: String): string;
    procedure InutilizarUnicaNFCE(Consulta: TFDQuery; RetornaMensagem: boolean; CancelarVenda: boolean);
    procedure InutilizarFaixaNFCE(DataAnterior, DataAtual: TDate);
    function StatusServico: TFrm_ConfNFCE;
    procedure ImprimirComprovante(Venda: String; verrParams: boolean; porSelecao: boolean = false; vias: integer = 1);
    procedure AlterarInfoVenda(Status, CodigoVenda: String);
    procedure CancelarNFCe(ConsultaNFCE: TFDQuery; ConfirmacaoCanc: boolean);
    procedure VerificarParametros;
    procedure InformarDadosInternos(Cod_Venda, Arg_ValorPago, Arg_Troco, Arg_Total_Venda: String);
    procedure FinalizarNFCE(porSelectParam: boolean = false; ChaveNFCE: string = ''; ParametrosImpressao: boolean = true; DataEmiss: tdatetime = 0;
      TpEmissao: string = ''; PermiteEnvioContingencia: boolean = false; verificar_venda: boolean = true; mostrar_mensagem: boolean = true; cNF: integer = 0);
    Procedure FinalizarVenda(CodNFCe: String; StatusVenda: String; MostraMensagem: boolean);
    Procedure FinalizarVenda2(StatusVenda: String; MostraMensagem: boolean);
    function GeraComprovante: boolean;
    procedure FormCreate(Sender: TObject);
    function ConsultarNF(ChaveNFCE: string; mostrarmsg: boolean; const CaminhoXML: string = ''; status_nfce: string = ''; data_ref: tdatetime = 0): string;
    procedure FormKeyPress(Sender: TObject; var Key: Char);
  private
    { Private declarations }

  protected
    CSTN12, CRTC21, tpAmbB24, nItemH02, nNFB08, IDA03, NCMI05, tpEmisB22, cDVB23, cNFB03, cNFB03_2, cUFB02, modB06, serieB07, aUF, CST_PIS, CST_COFINS, xCampoPag,
      xTextoPag, CSOSNN12a: string;
    vDescW10, vProdI11, vNFW16, vOutroW15, vProdW07, qComI10, vUNCOMI10a, qTribI14, vUNCOMI14a, vBCW03, vICMSW04, vICMSDesonW04a, vBCSTW05, vSTW06, vIPIW12,
      vPISW13, vCOFINSW14, vTotTribW16a, vICMSN17, vBCN15, pICMSN16, vTotTribM02, vBCSTN21, pICMSSTN22, vICMSSTN23, vUnTribI14a, vICMSDesonN27a, vPagYA03,
      TributosMunicipais, TributosEstaduais, TributosFederais, vPISQ09, vCOFINSS11, DescontosGerais, AcrescimosGerais, desconto_excedente, acrescimo_excedente,
      vBCS07, vBCQ07, pPISQ08, pCOFINSS08, IBPT_MUNICIPAIS, IBPT_ESTADUAIS, IBPT_FEDERAIS: Extended;
    erro_rotina_nfce, status_nfce, Caminho_XML, NFCExml, retorno_nfce: string;
    Qtde_Itens: integer;
    ArrAcrescimos: array of Extended;

  public
    { Public declarations }
    boolnfce, boolvenda, VendaFechadaAnteriormente, ratear_diff_desconto, ratear_diff_acrescimos: boolean;

    m_codigo_venda, m_cliente_nome, m_cliente_cpfcnpj, m_cliente_ie, m_cliente_telefone, m_operador, m_caixa, ValorPago, Troco, TotalVenda: string;
    function obterNroResultado(const aXML: String; aTag: string; aEndTag: string): string;
    function LoadXmlDestinatarioCont(CaminhoXML: String): WideString;
    procedure CaminhoXML(filepath: String);

  end;

var
  Frm_ConfNFCE: TFrm_ConfNFCE;
  GovUtils: TspdGovUtils;
  _NumeroLote, _Dir, Serie: String;
  m_CaminhoXML: string;
  desc_base, acres_base: Extended;

implementation

{$R *.dfm}

uses u_funcoes, u_diretorios, relatorios, carregando_dados,
  impresssao_comprovante_venda,
  vw_op_nf, c_nf, m_Natureza_Op, v_Env, m_XML;

function TFrm_ConfNFCE.obterNroResultado(const aXML: String; aTag, aEndTag: string): string;
var
  _Posini, _Posfim: integer;
Begin
  Result := '';
  _Posini := Pos(aTag, aXML);
  _Posfim := Pos(aEndTag, aXML);
  if (_Posini > 0) then
  begin
    inc(_Posini, Length(aTag));
    Result := Copy(aXML, _Posini + 1, (_Posfim - _Posini) - 1);
  end;
end;

procedure TFrm_ConfNFCE.PagamentoTroco(Pagamento, Troco: string);
begin
  spdNFCe.DanfceSettings.ParamsAvancados := 'ValorTroco=' + Troco + ';ValorRecebido=' + Pagamento;
end;

function TFrm_ConfNFCE.ProtocoloNFCE(CaminhoXML: String): string;
var
  Xml: String;
begin
  Xml := LoadXmlDestinatarioCont(CaminhoXML);
  Xml := obterNroResultado(Xml, '<protNFe', '</protNFe');
  Xml := obterNroResultado(Xml, '<infProt', '</infProt');
  Result := obterNroResultado(Xml, '<nProt', '</nProt');
end;

function TFrm_ConfNFCE.StatusServico: TFrm_ConfNFCE;
var
  RetornoXML: String;
begin
  TDIALOGS.wnOpNF.show('CONSULTANDO SERVIÇO...', 65);
  configurarcomponente;
  RetornoXML := spdNFCe.StatusDoServico;
  TDIALOGS.wnOpNF.free;
  JanelaRetornaStatus(RetornoXML, true);
  Result := self;
end;

procedure TFrm_ConfNFCE.VerificarParametros;

  function VendaGeraNfce: boolean;
  begin
    if SQL_PARAMETROS_NFCEVENDA_GERA_NFCE.Value = m_True then { Chave de libera玢o permite utilizar NFC-e }
      Result := true
    else if SQL_PARAMETROS_NFCEVENDA_GERA_NFCE.Value = m_False then
      Result := false;
  end;

  function LiberadoParaNFCE: boolean;
  begin
    if SQL_PARAMETROS_NFCEUTILIZA_NFCE.Value = m_True then { Chave de libera玢o permite utilizar NFC-e }
      Result := true
    else if SQL_PARAMETROS_NFCEUTILIZA_NFCE.Value = m_False then
      Result := false;
  end;

  function FiadoGeraComprovante: boolean;
  begin
    if SQL_PARAMETROS_NFCEFIADO_COMPROVANTE.Value = m_True then { Fiado Gera Comprovante }
      Result := true
    else if SQL_PARAMETROS_NFCEFIADO_COMPROVANTE.Value = m_False then
      Result := false;
  end;

  function VendaTemFiado: boolean;
  var
    qry_tmp: TFDQuery;
  begin
    qry_tmp := TFDQuery.Create(nil);
    with qry_tmp do
    begin
      connection := module.connection;
      Close;
      sql.Clear;
      sql.Add('SELECT * FROM VENDA_PAGAMENTO WHERE COD_TIPO_PAGAMENTO = ' + quotedstr('100') + ' AND TIPO_PAGAMENTO = ' + quotedstr('Fiado'));
      open;
      if RecordCount <> 0 then
        Result := true
      else
        Result := false;
    end;
  end;

  function CartaoEmiteNFCE: boolean;
  var
    qry_temp: TFDQuery;
  begin
    if SQL_PARAMETROS_NFCECARTAO_GERA_NFCE.Value = m_True then { Emite NFC-e para vendas no cart鉶 }
    begin
      qry_temp := TFDQuery.Create(nil);
      with qry_temp do
      begin
        connection := module.connection;
        Close;
        sql.Clear;
        sql.Add('SELECT * FROM venda_pagamento WHERE codigo_venda = :pcodigo_venda');
        ParamByName('pcodigo_venda').Value := m_codigo_venda;
        open;
        First;
        while not Eof do
        begin
          with FieldByName('COD_TIPO_PAGAMENTO') do
          begin
            if (Value = '03') or (Value = '04') then { Pagamento com cart鉶 de cr閐ito e d閎ito }
            begin
              Result := true;
              break;
            end
            else
              Result := false;
          end;
          Next;
        end;
        destroy;
      end;
    end
    else if SQL_PARAMETROS_NFCECARTAO_GERA_NFCE.Value = m_False then
    begin
      Result := false;
    end;
  end;

  procedure RotinaFechamentoVenda(imprimir_direto: boolean; porSelecao: boolean = false);
  begin
    FinalizarVenda('0', 'FECHADA', true);
    if porSelecao then
    begin
      ImprimirComprovante(m_codigo_venda, true, porSelecao)
    end
    else
    begin
      if imprimir_direto then
        ImprimirComprovante(m_codigo_venda, true)
      else
      begin
        if GeraComprovante then
          ImprimirComprovante(m_codigo_venda, true)
        else if FiadoGeraComprovante then
          if VendaTemFiado then
            ImprimirComprovante(m_codigo_venda, true);
      end;
    end;
  end;

  function seleciona_comprovante_nfce: boolean;
  begin
    Result := (simplequery('SELECT NFCE_COMPROVANTE FROM PARAMETROS_NFCE').Fields[0].asString = m_True)
  end;

var
  ImprimiuComprovante: boolean;
  TpEmiss : string;
begin
  SQL_PARAMETROS_NFCE.Active := false;
  SQL_PARAMETROS_NFCE.Active := true;

  TpEmiss := Sql_ConfTIPO_NOTA.Value;
  if not ExistsNetwork then
     TpEmiss := 'CONTINGENCIA';

  if LiberadoParaNFCE then { Verifica se o cliente deseja Utilizar NFC-e }
  begin
    if seleciona_comprovante_nfce and (not CartaoEmiteNFCE) then
    begin
      frm_impress := tfrm_impress.Create(nil);
      frm_impress.ShowModal;
      if (boolnfce) and (not boolvenda) then
        FinalizarNFCE(true, '',True, 0, TpEmiss, False, False, True);
      if (boolvenda) and (not boolnfce) then
        RotinaFechamentoVenda(true, true);
      if boolvenda and boolnfce then
        FinalizarNFCE(true, '',True, 0, TpEmiss, False, False, True);
    end
    else
    begin
      if VendaGeraNfce then
        FinalizarNFCE
      else if CartaoEmiteNFCE then
        FinalizarNFCE
      else
      begin
        RotinaFechamentoVenda(true);
      end
    end;
  end
  else
    RotinaFechamentoVenda(true);
end;

procedure TFrm_ConfNFCE.VisualizarDanfce(Chave, xmlNFCE, NumLote, ErroRotina: String);
Var
  NotaAssinada: String;
begin
  try
    spdNFCe.VisualizarDanfce(NumLote, xmlNFCE, spdNFCe.DanfceSettings.ModeloDanfce);
  except
    on E: Exception do
    begin
      wnErro('NFC-e', E.message + slinebreak + 'Erro ao visualizar DANFE.');
      ErroRotina := 'DANFE';
      exit;
    end;
  end;

end;

procedure TFrm_ConfNFCE.CaminhoXML(filepath: String);
begin
  m_CaminhoXML := filepath;
end;

procedure TFrm_ConfNFCE.CancelarNFCe(ConsultaNFCE: TFDQuery; ConfirmacaoCanc: boolean);
  procedure CancelarRotina(ConsultaNFCE: TFDQuery);
  var
    codvenda, Protocolo, DataHoraEnvio, RetornoXML, Status: String;
    qry_tmp: TFDQuery;
  begin
    try
      frm_carregando_dados := tfrm_carregando_dados.Create(nil);
      frm_carregando_dados.MudarLabel('Cancelando NFC-e ' + inttostr(ConsultaNFCE.FieldByName('CODIGO').Value) + ' ...');
      frm_carregando_dados.pb_barra_progresso.Min := 0;
      frm_carregando_dados.pb_barra_progresso.max := 2;
      frm_carregando_dados.Update;
      frm_carregando_dados.show;
      frm_carregando_dados.Update;
      configurarcomponente;
      Protocolo := ProtocoloNFCE(ConsultaNFCE.FieldByName('CAMINHO_XML').Value);
      DataHoraEnvio := FormatDateTime('YYYY-mm-dd"T"HH:mm:ss', now);
      spdNFCe.DiretorioXmlDestinatario := u_diretorios.xml_canceladas(ConsultaNFCE.FieldByName('DATA_EMISSAO').asDateTime);
      frm_carregando_dados.PreencherBarra(1);
      frm_carregando_dados.Update;
      RetornoXML := spdNFCe.CancelarNF(ConsultaNFCE.FieldByName('CHAVE').Value, Protocolo, NF_INUTILIZACAO_CANCELAR, DataHoraEnvio, 1, '-04:00',
        ConsultaNFCE.FieldByName('LOTE').Value);
      Status := JanelaRetornaStatus(RetornoXML, true);
      ConsultaNFCE.Edit;
      if (Copy(Status, 0, 3) = '101') or (Copy(Status, 0, 3) = '218') or (Copy(Status, 0, 3) = '420') or (Copy(Status, 0, 3) = '135') or
        (Copy(Status, 0, 3) = '573') then
      begin
        Moverxml(ConsultaNFCE.FieldByName('CAMINHO_XML').Value, xml_canceladas(ConsultaNFCE.FieldByName('DATA_EMISSAO').asDateTime) +
          ConsultaNFCE.FieldByName('CHAVE').Value + '-cancnfce.xml');
        ConsultaNFCE.FieldByName('CAMINHO_XML').Value := xml_canceladas(ConsultaNFCE.FieldByName('DATA_EMISSAO').asDateTime) + ConsultaNFCE.FieldByName('CHAVE')
          .Value + '-cancnfce.xml';
        ConsultaNFCE.FieldByName('STATUS_NFCE').Value := 'CANCELADA';
        qry_tmp := TFDQuery.Create(nil);
        codvenda := inttostr(ConsultaNFCE.FieldByName('CODIGO_VENDA').Value);
        with qry_tmp do
        begin
          connection := module.connection;
          Close;
          sql.Clear;
          sql.Add('SELECT * FROM VENDA WHERE CODIGO_VENDA = ' + codvenda);
          open;
          Edit;
          FieldByName('STATUS').Value := 'CANCELADA';
          POST;
          destroy;
        end;
        MovimentarEstoque(false, codvenda);
        MovimentarCaixa;
      end;
      ConsultaNFCE.FieldByName('DATA_TRANSMISSAO').Value := date;
      ConsultaNFCE.FieldByName('HORA_TRANSMISSAO').Value := time;
      ConsultaNFCE.FieldByName('RETORNO_NFCE').Value := Status;
      ConsultaNFCE.POST;
      frm_carregando_dados.Close;
    except
      on E: Exception do
      begin
        TDIALOGS.wnErro('Cancelar NFC-e', 'Erro ao cancelar NFC-e ' + ConsultaNFCE.FieldByName('CHAVE').Value + ' : ' + slinebreak + E.message);
        tfunctions.write_log('Erro ao cancelar NFC-e ' + ConsultaNFCE.FieldByName('CHAVE').Value + ' : ' + slinebreak + E.message);
        frm_carregando_dados.Close;
      end;

    end;
  end;

begin
  if ConsultaNFCE.FieldByName('STATUS_NFCE').asString = 'AUTORIZADA' then
  BEGIN
       if TFrm_liberacao.Execute then
       begin
         if ConfirmacaoCanc then
         begin
           if wnConfirmacao('NFC-e', slinebreak + slinebreak + 'Deseja Cancelar NFC-e ' + ConsultaNFCE.FieldByName('CODIGO').asString + '  ?') then
           begin
             CancelarRotina(ConsultaNFCE);
           end
         end
         else
           CancelarRotina(ConsultaNFCE);
      end;
  end
  ELSE
    wnalerta('Cancelar NFC-e', slinebreak + slinebreak + 'NFC-e ' + ConsultaNFCE.FieldByName('CODIGO').asString + ' não foi transmitida');
end;

function TFrm_ConfNFCE.configurarcomponente(const Certficado: string = ''): boolean;
begin
  try
    tfunctions.configureSSLTTL;
    setModeloNF('65'); { classe de diret髍ios | para organiza玢o das pastas }
    Sql_Conf.Active := false;
    Sql_Conf.Active := true;
    SQL_PARAMETROS_NFCE.Active := false;
    SQL_PARAMETROS_NFCE.Active := true;
    SQL_Empresa.Active := false;
    SQL_Empresa.Active := true;
    if Sql_ConfAMBIENTE.Value = 'HOMOLOGACAO' then
      spdNFCe.Ambiente := akHomologacao
    else if Sql_ConfAMBIENTE.Value = 'PRODUCAO' then
      spdNFCe.Ambiente := akProducao;
    aUF := SQL_EmpresaESTADO.Value;
    spdNFCe.UF := aUF;
    spdNFCe.cnpj := SQL_EmpresaCNPJ.Value;
    spdNFCe.DanfceSettings.IdTokenNFCe := Sql_ConfID_TOKEN.Value;
    spdNFCe.DanfceSettings.TokenNFCe := Sql_ConfCODIGO_CSC.Value;
    spdNFCe.ArquivoServidoresHom := u_diretorios.confignfce + 'nfceservidoreshom.ini';
    spdNFCe.ArquivoServidoresProd := u_diretorios.confignfce + 'nfceservidoresprod.ini';
    spdNFCe.DiretorioEsquemas := u_diretorios.confignfce + 'Esquemas\';
    spdNFCe.DiretorioTemplates := u_diretorios.confignfce + 'Templates\';
    spdNFCe.DiretorioLog := u_diretorios.confignfce + 'Log\';
    spdNFCe.DiretorioLogErro := u_diretorios.confignfce + 'LogErro\';
    spdNFCe.DiretorioTemporario := u_diretorios.confignfce + 'Temporario\';
    spdNFCe.DiretorioXmlDestinatario := u_diretorios.Xml_Autorizadas;
    spdNFCe.TipoCertificado := ckFile;
    if Certficado = emptystr then
      spdNFCe.NomeCertificado.Text := Sql_ConfCERTIFICADO.Value
    else
      spdNFCe.NomeCertificado.Text := Certficado;
    spdNFCe.ConexaoSegura := true;
    spdNFCe.ValidarEsquemaAntesEnvio := true;
    spdNFCe.MaxSizeLoteEnvio := 500;
    spdNFCe.EmailSettings.AnexarDanfcePDF := true;
    spdNFCe.CaracteresRemoverAcentos := 'ÁÂÃÀÉÊÈÍÎÌÓÔÕÒÚÛÙáâãàéêèíîìóôõòúûùÇç';
    spdNFCeDataSets.VersaoEsquema := pl_009;
    // Pacote de libera玢o dos campos da SEFAZ (Com CEST)

    // MFCe 3.1
    // spdNFCe.VersaoManual := vm50b;

    // Nfce 4.0
    spdNFCe.VersaoManual := vm60;

    spdNFCeDataSets.DiretorioLogErro := u_diretorios.confignfce + 'LogErroDS\';

    { danfe }
    if FileExists(SQL_EmpresaLOGOTIPO.Value) then
      spdNFCe.DanfceSettings.LogotipoEmitente := SQL_EmpresaLOGOTIPO.Value
    else
      spdNFCe.DanfceSettings.LogotipoEmitente := '';

    spdNFCe.DanfceSettings.InfCplMaxCol := 68;
    spdNFCe.DanfceSettings.InfCplMaxRow := 7;
    spdNFCe.DanfceSettings.FraseContingencia := 'Danfe em contingêcia - Impresso em decorrêcia de problemas técnicos.';
    spdNFCe.DanfceSettings.FraseHomologacao := 'NOTA FISCAL EMITIDA EM AMBIENTE DE HOMOLOGACAO - SEM VALOR FISCAL';
    spdNFCe.DanfceSettings.ModeloDanfce := Danfce;
    spdNFCe.DanfceSettings.ModeloDanfceMensagemEletronica := 'DOCUMENTO AUXILIAR DA NOTA FISCAL DO CONSUMIDOR ELETRÉTICA';
    spdNFCe.DanfceSettings.QtdeCopias := 1;
    spdNFCe.DanfceSettings.ExibirDetalhamento := true;
    spdNFCe.TimeOut := 10000;

    { email }
    spdNFCe.EmailSettings.ServidorSmtp := Sql_ConfEMAIL_SMTP.Value;
    spdNFCe.EmailSettings.EmailRemetente := Sql_ConfEMAIL.Value;
    spdNFCe.EmailSettings.EmailDestinatario := 'SMC.PROG@gmail.com';
    spdNFCe.EmailSettings.Assunto := 'Envio de DANFE por email';
    spdNFCe.EmailSettings.Mensagem := 'O arquivo está anexo.';
    spdNFCe.EmailSettings.Usuario := Sql_ConfEMAIL.Value;
    spdNFCe.EmailSettings.Senha := Sql_ConfSENHA.Value;
    spdNFCe.EmailSettings.Autenticacao := true;
    if Sql_ConfPORTA.Value <> '' then
      spdNFCe.EmailSettings.Porta := StrToInt(Sql_ConfPORTA.Value); // 587

    { nfce }
    _Dir := u_diretorios.confignfce + 'Templates\vm60\Conversor\NFCeDataSets.xml';
    spdNFCeDataSets.XMLDicionario := _Dir;
    spdNFCeDataSets.LoteNFCE.Clear;
    spdNFCeDataSets.ValidaRegrasNegocio := false;
    Result := true;
  except
    on E: Exception do
    begin
      wnErro('NFC-e', E.message + slinebreak + 'Erro na configuração do componente!', taLeftJustify, 10);
      Result := false;
      if frm_op_nf <> nil then
        frm_op_nf.Close;
    end;
  end;
end;

function TFrm_ConfNFCE.ConsultarNF(ChaveNFCE: string; mostrarmsg: boolean; const CaminhoXML: string = ''; status_nfce: string = '';
  data_ref: tdatetime = 0): string;
var
  __status, file_xml, cod_nota, __retorno, __novo_caminho, __result_retorno: string;
  procedure gerar_autorizacao;
  begin
    if obterNroResultado(file_xml, '<protNFe', '</protNFe') = '' then
    begin
      __result_retorno := obterNroResultado(__status, '<protNFe', '</protNFe');
      file_xml := nfHeader + file_xml + '<protNFe ' + __result_retorno + '</protNFe></nfeProc>';
      file_xml := RemoverQuebraLinhas(file_xml);
      Moverxml(CaminhoXML, CaminhoXML + '.old');
      SaveToFile(CaminhoXML, file_xml);
    end;
  end;

begin
  if mostrarmsg then
    TDIALOGS.wnOpNF.show('CONSULTANDO' + slinebreak + 'NFC-e ...', 65);
  configurarcomponente;
  __status := spdNFCe.ConsultarNF(ChaveNFCE);

  if CaminhoXML <> '' then
  begin
    if FileExists(CaminhoXML) then
    begin
      file_xml := LoadContent(CaminhoXML);
      __retorno := JanelaRetornaStatus(__status, false);
      if ansimatchstr(Copy(__retorno, 0, 3), ['100', '150']) and (status_nfce = 'PENDENTE') then
      begin
        if data_ref = 0 then
          data_ref := now;
        cod_nota := Copy(ChaveNFCE, 26, 9);
        gerar_autorizacao;
        __novo_caminho := Xml_Autorizadas(data_ref) + ChaveNFCE + '-nfce.xml';
        execquery('update nfce set caminho_xml = "' + DoublePathBar(__novo_caminho) + '", STATUS_NFCE ="AUTORIZADA", RETORNO_NFCE="' + __retorno +
          '" WHERE CODIGO =' + cod_nota + ' AND CHAVE="' + ChaveNFCE + '"');
        DeletarXMLPendente(__novo_caminho);
        Moverxml(CaminhoXML, __novo_caminho);
      end;
    end;
  end;
  if mostrarmsg then
    TDIALOGS.wnOpNF.free;
  Result := JanelaRetornaStatus(__status, mostrarmsg);
end;

function TFrm_ConfNFCE.DadosIBPT(TribFederais, TribEstaduais, TribMunicipais: Extended): boolean;
var
  Federais, Estaduais, Municipais, infCPLZ03: string;
begin
  try
    Federais := FormatFloat('0.00', TribFederais);
    Estaduais := FormatFloat('0.00', TribEstaduais);
    Municipais := FormatFloat('0.00', TribMunicipais);
    infCPLZ03 := 'Lei da Transparêcia (Lei Federal 12.741/12)|Total dos Tributos Incidentes (Fonte - Tabela IBPT)|Federais: R$ ' + Federais + ' Estaduais: R$ '
      + Estaduais + ' Municipais: R$ ' + Municipais;
    spdNFCeDataSets.IncluirPart('Z');
    spdNFCeDataSets.campo('infCPL_Z03').Value := infCPLZ03;
    if (xCampoPag <> '') then
    begin
      spdNFCeDataSets.IncluirPart('OBSCONT');
      spdNFCeDataSets.campo('xCampo_Z05').Value := xCampoPag;
      spdNFCeDataSets.campo('xtexto_Z06').Value := 'promissoria';
      spdNFCeDataSets.SalvarPart('OBSCONT');
    end;
    spdNFCeDataSets.SalvarPart('Z');
    Result := true;
  except
    on E: Exception do
    begin
      wnErro('Venda | NFC-e', E.message + slinebreak + 'Erro ao informar dados do IBPT na venda', taLeftJustify, 10);
      Result := false;
    end;
  end;
end;

procedure TFrm_ConfNFCE.AlterarInfoVenda(Status, CodigoVenda: String);
begin
  execquery('UPDATE VENDA SET STATUS = "' + Status + '" WHERE CODIGO_VENDA = "' + CodigoVenda + '"');
  if Status = 'ABERTA' then
    MovimentarEstoque(true, CodigoVenda);
  if Status = 'CANCELADA' then
    MovimentarEstoque(false, CodigoVenda);
end;

function TFrm_ConfNFCE.EnviarNFCe(NumeroLote, Chave, Caminho, ErroRotina: String; data_op: tdatetime = 0): String;
var
  NotaAssinada: string;
  xmlNFCE, RetornoXML: string;
begin
  try
    if data_op = 0 then
      data_op := now;
    if Caminho.IsEmpty then
    begin
      NotaAssinada := u_diretorios.Xml_Pendentes(data_op) + Chave + '.xml';
    end
    else
      NotaAssinada := Caminho;
    xmlNFCE := LoadXmlDestinatarioCont(NotaAssinada);
    xmlNFCE := TRIM(u_funcoes.RemoverQuebraLinhas(xmlNFCE));
    spdNFCe.DiretorioXmlDestinatario := u_diretorios.Xml_Autorizadas(data_op);
    ExecuteCommand('reg add "HKCU\Software\Microsoft\Windows\CurrentVersion\Internet Settings" /f /v "SecureProtocols" /t REG_DWORD /d "160"');
    RetornoXML := spdNFCe.EnviarNFSincrono(NumeroLote, xmlNFCE, false);
    DeletarXMLPendente(u_diretorios.Xml_Pendentes + Chave);
    Result := RetornoXML;
  except
    on E: Exception do
    begin
      wnErro('Venda | NFC-e', E.message + slinebreak + 'Erro ao enviar NFCE.');
      ErroRotina := 'TRANSMISSAO';
      Result := __ERROR__ + E.message;
    end;
  end;
end;

procedure TFrm_ConfNFCE.FinalizarNFCE(porSelectParam: boolean = false; ChaveNFCE: string = ''; ParametrosImpressao: boolean = true; DataEmiss: tdatetime = 0;
  TpEmissao: string = ''; PermiteEnvioContingencia: boolean = false; verificar_venda: boolean = true; mostrar_mensagem: boolean = true; cNF: integer = 0);
  function GerarCodigoNFCE: string;
  var
    sql_anterior: string;
  begin
    with SQL_NFCE do
    begin
      sql_anterior := sql.Text;
      Close;
      sql.Clear;
      sql.Add('INSERT INTO NFCE ');
      sql.Add('(CODIGO,CODIGO_VENDA, DATA_EMISSAO, HORA_EMISSAO)');
      sql.Add(' VALUES (default,:pcodigo_venda, :pdata_emissao, :phora_emissao)');
      ParamByName('pdata_emissao').Value := date;
      ParamByName('phora_emissao').Value := time;
      ParamByName('pcodigo_venda').Value := m_codigo_venda;
      execsql;
      Close;
      sql.Clear;
      sql.Add('SELECT * FROM NFCE WHERE CODIGO = @codigo_nfce');
      open;
      Result := inttostr(SQL_NFCECODIGO.Value);
      Active := false;
      sql.Clear;
      sql.Add(sql_anterior);
    end;
  end;

  procedure PreencherDadosNFCE;
  var
    sql_anterior: string;
  begin
    with SQL_NFCE do
    begin
      sql_anterior := sql.Text;
      Close;
      sql.Clear;
      sql.Add('UPDATE NFCE SET');
      sql.Add('DATA_TRANSMISSAO = :pdata_transmissao,');
      sql.Add('HORA_TRANSMISSAO = :phora_transmissao,');
      sql.Add('VALOR_NFCE = :pvalor_nfce,');
      sql.Add('ACRESCIMOS_NFCE = :pacrescimos_nfce, DESCONTOS_NFCE = :pdescontos_nfce,');
      sql.Add('TOTAL_NFCE = :ptotal_nfce, VALOR_PAGO = :pvalor_pago, TROCO = :ptroco,');
      sql.Add('CHAVE = :pchave, LOTE = :plote, SERIE = :pserie, CAMINHO_XML = :pcaminho_xml,');
      sql.Add('TIPO_EMISSAO = :ptipo_emissao, STATUS_NFCE = :pstatus_nfce, RETORNO_NFCE = :pretorno_nfce , ERRO_ROTINA = :perro_rotina_nfce, CNF = :cnf');
      sql.Add('WHERE CODIGO = :pcodigo_nfce and CODIGO_VENDA = :pcodigo_venda');
      ParamByName('pdata_transmissao').Value := date;
      ParamByName('phora_transmissao').Value := time;
      ParamByName('pvalor_nfce').Value := vProdW07;
      ParamByName('pacrescimos_nfce').Value := vOutroW15;
      ParamByName('pdescontos_nfce').Value := vDescW10;
      ParamByName('ptotal_nfce').Value := vNFW16;
      ParamByName('pvalor_pago').Value := StrToFloat(ValorPago);
      ParamByName('ptroco').Value := StrToFloat(Troco);
      ParamByName('pchave').Value := IDA03;
      ParamByName('plote').Value := _NumeroLote;
      ParamByName('pserie').Value := serieB07;
      ParamByName('pcaminho_xml').Value := Caminho_XML;
      ParamByName('ptipo_emissao').Value := TpEmissao;
      if status_nfce.IsEmpty then
        status_nfce := 'PENDENTE';
      ParamByName('pstatus_nfce').Value := status_nfce;
      ParamByName('pretorno_nfce').Value := retorno_nfce;
      if erro_rotina_nfce.IsEmpty then
        erro_rotina_nfce := 'TRANSMISSAO';
      ParamByName('perro_rotina_nfce').Value := erro_rotina_nfce;
      ParamByName('pcodigo_nfce').Value := nNFB08;
      ParamByName('pcodigo_venda').Value := m_codigo_venda;
      ParamByName('cnf').Value := cNFB03_2;
      execsql;
      Close;
      sql.Clear;
      sql.Add(sql_anterior);
    end;
  end;

  function ValidarCodigoDFe(AcDF, AnDF: Integer): Boolean;
  const
    CCodigosDFeInvalidos: array[0..19] of Integer =  (0, 11111111, 22222222,
       33333333, 44444444, 55555555, 66666666, 77777777, 88888888, 99999999,
       12345678, 23456789, 34567890, 45678901, 56789012, 67890123, 78901234,
       89012345, 90123456, 01234567);
  var
    i: Integer;
  begin
    Result := (AcDF <> AnDF);
    i := 0;
    while Result and (i < 20) do
    begin
      Result := (AcDF <> CCodigosDFeInvalidos[i]);
      Inc(i);
    end;
  end;

  function GerarCodigoDFe(AnDF: Integer): integer;
  var
   ACodigo: Integer;
  begin
    Repeat
      ACodigo := Random(99999999);
    Until ValidarCodigoDFe(ACodigo, AnDF);

    Result := ACodigo;
  end;

  procedure AtualizacNF(numero, serie, cNF: string);
  var qry_temp: TFDQuery;
  begin
       with qry_temp do
       begin
            qry_temp := TFDQuery.Create(nil);
            connection := module.connection;
            Close;
            sql.Clear;
            sql.Add('UPDATE nfce SET');
            sql.Add('CNF = '+cNF);
            sql.Add('where codigo =:codigo and serie = :serie');
            ParamByName('codigo').Value := numero;
            ParamByName('serie').Value := serie;
            //ParamByName('pcNF').Value := cNF;
            execsql;
            destroy;
       end;
  end;

  function DadosDoNFCe(const pChaveNFCe: string = ''; pcNF: integer = 0): boolean;
  begin
    try
      begin
        spdNFCeDataSets.campo('id_A03').Value := '0';
        // Chave da nota, se passar vazio ou "0" o componente calcula sozinho
        // spdNFCeDataSets.campo('versao_A02').Value := '3.10';

        spdNFCeDataSets.campo('versao_A02').Value := '4.00';
        // Versão do layout
        cUFB02 := SQL_EmpresaCOD_UF.Value;
        spdNFCeDataSets.campo('cUF_B02').Value := cUFB02;
        // C骴igo da UF do emitente do Documento Fiscal
        spdNFCeDataSets.campo('natOp_B04').Value := TNatureza_Op.Create(1).Descricao;
        // Descri玢o da Natureza da Opera玢o
        // spdNFCeDataSets.campo('indPag_B05').Value := '0'; *CAMPO REMOVIDO NA VERSAO 4.0 DA NFCE*
        // Indicador da forma de pagamento: 0 � pagamento � vista; 1 � pagamento � prazo; 2 - outros.
        modB06 := '65';
        spdNFCeDataSets.campo('mod_B06').Value := modB06; { NFCE }
        // Modelo do Documento Fiscal
        if pChaveNFCe = emptystr then { Nova NFCe }
          nNFB08 := GerarCodigoNFCE
        else
          nNFB08 := pChaveNFCe;
        spdNFCeDataSets.campo('nNF_B08').Value := nNFB08;
        // N鷐ero do Documento Fiscal
        cNFB03 := nNFB08;
        cNFB03_2 := IntToStr(pcNF);
        if pcNF = 0 then
        begin
             cNFB03_2 := IntToStr(GerarCodigoDFe(StrToInt(nNFB08)));
             spdNFCeDataSets.campo('cNF_B03').Value := cNFB03_2;
             AtualizacNF(nNFB08, SQL_PARAMETROS_NFCESERIE_NORMAL.AsString, cNFB03_2);
        end
        else
           spdNFCeDataSets.campo('cNF_B03').Value := IntToStr(pcNF);
        // C骴igo Num閞ico que comp鮡 a Chave de Acesso
        if DataEmiss = 0 then
          DataEmiss := now;
        spdNFCeDataSets.campo('dhEmi_B09').Value := FormatDateTime('YYYY-mm-dd"T"HH:mm:ss', DataEmiss) + '-04:00';
        // Data e Hora de emiss鉶 do Documento Fiscal
        spdNFCeDataSets.campo('tpNF_B11').Value := '1';
        // Tipo de Opera玢o: 0-entrada / 1-sa韉a.
        spdNFCeDataSets.campo('idDest_B11a').Value := '1';
        // Identificador de local de destino da opera玢o: 1- Opera玢o interna; 2- Opera玢o interestadual; 3- Opera玢o com exterior.
        spdNFCeDataSets.campo('cMunFG_B12').Value := inttostr(SQL_EmpresaCODIGO_MUNICIPIO.Value);
        // C骴igo do Munic韕io de Ocorr阯cia do Fato Gerador
        spdNFCeDataSets.campo('tpImp_B21').Value := '4';
        { Formato do DANFE: 0-Sem gera玢o de DANFE; 1-DANFE normal , Retrato; 2-DANFE normal, Paisagem; 3-DANFE Simplificado;
          4-DANFE NFC-e; 5-DANFE NFC-e em mensagem eletr鬾ica. Nota: O envio de mensagem eletr鬾ica pode ser feita de forma simult鈔ea
          com a impress鉶 do DANFE. Usar o tpImp=5 quando esta for a 鷑ica. }
        serieB07 := SQL_PARAMETROS_NFCESERIE_NORMAL.Value;
        if TpEmissao = emptystr then
          TpEmissao := Sql_ConfTIPO_NOTA.Value;
        if TpEmissao = 'NORMAL' Then
          tpEmisB22 := '1'
        else if TpEmissao = 'CONTINGENCIA' then
        begin
          tpEmisB22 := '9';
          spdNFCeDataSets.campo('dhCont_B28').Value := FormatDateTime('YYYY-mm-dd"T"HH:mm:ss', DataEmiss) + '-04:00';
          spdNFCeDataSets.campo('xJust_B29').Value := NF_CONTINGENCIA;
        end;
        spdNFCeDataSets.campo('serie_B07').Value := serieB07;
        // S閞ie do Documento Fiscal
        spdNFCeDataSets.campo('tpEmis_B22').Value := tpEmisB22;
        { 1- Emiss鉶 normal (n鉶 em conting阯cia); 2- Conting阯cia FS-IA, com impress鉶 do DANFE em formul醨io de seguran鏰; 3- Conting阯cia SCAN (Sistema de
          Conting阯cia do Ambiente Nacional); 4- Conting阯cia DPEC (Declara玢o Pr関ia da Emiss鉶 em Conting阯cia); 5- Conting阯cia FS-DA, com impress鉶
          do DANFE em formul醨io de seguran鏰; 6- Conting阯cia SVC-AN (SEFAZ Virtual de Conting阯cia do AN); 7- Conting阯cia SVC-RS (SEFAZ Virtual
          de Conting阯cia do RS); 9 - Conting阯cia off-line da NFC-e (as demais op珲es de conting阯cia s鉶 v醠idas tamb閙 para a NFC-e); Nota: As op珲es de
          conting阯cia 3, 4, 6 e 7 (SCAN, DPEC e SVC) n鉶 est鉶 dispon韛eis no momento atual. }
        cDVB23 := '0';
        spdNFCeDataSets.campo('cDV_B23').Value := cDVB23;
        // D韌ito Verificador da Chave de Acesso
        if spdNFCe.Ambiente = akProducao then
          tpAmbB24 := '1' // Produ玢o
        else if spdNFCe.Ambiente = akHomologacao then
          tpAmbB24 := '2'; // Homologa玢o
        spdNFCeDataSets.campo('tpAmb_B24').Value := tpAmbB24;
        // Identifica玢o do Ambiente: 1-Produ玢o/ 2-Homologa玢o
        spdNFCeDataSets.campo('finNFe_B25').Value := '1';
        // Finalidade de emiss鉶 da NF-e: 1- NF-e normal/ 2-NF-e complementar / 3 � NF-e de ajuste.
        spdNFCeDataSets.campo('indFinal_B25a').Value := TNatureza_Op.Create(1).Finalidade;
        // Indica opera玢o com Consumidor final: 0- N鉶; 1- Consumidor final;
        spdNFCeDataSets.campo('indPres_B25b').Value := '1';
        { Indicador de presen鏰 do comprador no estabelecimento comercial no momento da opera玢o:
          0- N鉶 se aplica (por exemplo, Nota Fiscal complementar ou de ajuste); 1- Opera玢o presencial; 2- Opera玢o n鉶 presencial, pela Internet;
          3- Opera玢o n鉶 presencial, Teleatendimento; 9- Opera玢o n鉶 presencial, outros. }
        spdNFCeDataSets.campo('procEmi_B26').Value := '0';
        { Processo de emiss鉶: Identificador do processo de emiss鉶 da NF-e: 0 - emiss鉶 de NF-e com aplicativo do contribuinte; 1 - emiss鉶 de NF-e avulsa pelo
          Fisco; 2 - emiss鉶 de NF-e avulsa, pelo contribuinte com seu certificado digital, atrav閟 do site do Fisco; 3- emiss鉶 NF-e pelo contribuinte com
          aplicativo fornecido pelo Fisco. }
        spdNFCeDataSets.campo('verProc_B27').Value := RemoverEspacoEmBranco(RemoverCaracteresEspeciais(tenv.core.caption));
        // Vers鉶 do aplicativo
        // Vers鉶 do Processo de emiss鉶 da NF-e
        Result := true;
      end;
    except
      on E: Exception do
      begin
        TDIALOGS.wnOpNF.free;
        wnErro('Venda | NFC-e', 'Erro ao informar dados de configuração da NFCE.', taLeftJustify, 10);
        erro_rotina_nfce := 'INFORMACOES';
        Result := false;
      end;
    end;
  end;

  function DadosDoEmitente: boolean;
  begin

    try
      begin
        spdNFCeDataSets.campo('CNPJ_C02').Value := RemoverCaracteresEspeciais(SQL_EmpresaCNPJ.Value);
        // CNPJ do emitente
        spdNFCeDataSets.campo('IE_C17').Value := RemoverCaracteresEspeciais(SQL_EmpresaINSCRICAO_ESTADUAL.Value);
        // CNPJ do emitente
        spdNFCeDataSets.campo('xNome_C03').Value := FormatarTagDescricao(SQL_EmpresaRAZAO_SOCIAL.Value);
        // Raz鉶 Social ou Nome do emitente
        spdNFCeDataSets.campo('xFant_C04').Value := FormatarTagDescricao(SQL_EmpresaNOME_FANTASIA.Value);
        // Nome fantasia
        spdNFCeDataSets.campo('xLgr_C06').Value := FormatarTagDescricao(SQL_EmpresaENDERECO.Value);
        // Logradouro
        spdNFCeDataSets.campo('nro_C07').Value := FormatarTagDescricao(SQL_EmpresaNUMERO.Value);
        // N鷐ero
        spdNFCeDataSets.campo('xBairro_C09').Value := FormatarTagDescricao(SQL_EmpresaBAIRRO.Value);
        // Complemento
        spdNFCeDataSets.campo('cMun_C10').Value := FormatarTagDescricao(SQL_EmpresaCODIGO_MUNICIPIO.asString);
        // Código do munic韕io
        spdNFCeDataSets.campo('xMun_C11').Value := FormatarTagDescricao(SQL_EmpresaMUNICIPIO.Value);
        // Nome do munic韕io
        spdNFCeDataSets.campo('UF_C12').Value := FormatarTagDescricao(SQL_EmpresaESTADO.Value);
        // Sigla da UF
        spdNFCeDataSets.campo('CEP_C13').Value := FormatarTagDescricao(SQL_EmpresaCEP.Value);
        // C骴igo do CEP
        spdNFCeDataSets.campo('cPais_C14').Value := FormatarTagDescricao(SQL_EmpresaCODIGO_PAIS.asString);
        // C骴igo do Pa韘
        spdNFCeDataSets.campo('xPais_C15').Value := FormatarTagDescricao(SQL_EmpresaPAIS.Value);
        // Nome do Pa韘
        spdNFCeDataSets.campo('fone_C16').Value := FormatarTagDescricao(SQL_EmpresaEMPRESA_TELEFONE_01.Value);
        // Telefone
        spdNFCeDataSets.campo('IE_C17').Value := FormatarTagDescricao(SQL_EmpresaINSCRICAO_ESTADUAL.Value);
        // Inscri玢o Estadual
        CRTC21 := SQL_EmpresaCODIGO_REGIME_TRIBUTARIO.Value;
        spdNFCeDataSets.campo('CRT_C21').Value := CRTC21;
        { C骴igo de Regime Tribut醨io:
          1 � Simples Nacional;
          2 � Simples Nacional � excesso de sublimite de receita bruta;
          3 � Regime Normal. }
        Result := true;
      end;
    except
      on E: Exception do
      begin
        TDIALOGS.wnOpNF.free;
        wnErro('Venda | NFC-e', 'Erro ao informar dados do emissor na NFCE.', taLeftJustify, 10);
        erro_rotina_nfce := 'INFORMACOES';
        Result := false;
      end;
    end;
  end;

  function DadosDoDestinatario: boolean;
  var
    CPF_CNPJ, CPF, cnpj: string;
  begin
    try
      begin
        CPF_CNPJ := RemoverCaracteresEspeciais(m_cliente_cpfcnpj);
        if CPF_CNPJ <> emptystr then
        begin

          if (tpAmbB24 = '2') and (m_cliente_nome <> '') then
            spdNFCeDataSets.campo('xNome_E04').Value := NF_DESTINO_HOMOLOGACAO
          else
            spdNFCeDataSets.campo('xNome_E04').Value := FormatarTagDescricao(m_cliente_nome);

          // Raz鉶 Social ou nome do destinat醨io
          if Length(CPF_CNPJ) = 14 then
            cnpj := CPF_CNPJ
          else if Length(CPF_CNPJ) = 11 then
            CPF := CPF_CNPJ;

        end;
        spdNFCeDataSets.campo('CNPJ_E02').Value := cnpj;
        // CNPJ do destinat醨io
        spdNFCeDataSets.campo('CPF_E03').Value := CPF;
        // CPF do destinat醨io
        spdNFCeDataSets.campo('IE_E17').Value := '';
        // IE
        spdNFCeDataSets.campo('xLgr_E06').Value := '';
        // Logradouro
        spdNFCeDataSets.campo('nro_E07').Value := '';
        // N鷐ero
        spdNFCeDataSets.campo('xCpl_E08').Value := '';
        // Complemento
        spdNFCeDataSets.campo('xBairro_E09').Value := '';
        // Bairro
        spdNFCeDataSets.campo('cMun_E10').Value := '';
        // C骴igo do munic韕io
        spdNFCeDataSets.campo('xMun_E11').Value := '';
        // Nome do munic韕io
        spdNFCeDataSets.campo('UF_E12').Value := '';
        // Sigla da UF
        spdNFCeDataSets.campo('CEP_E13').Value := '';
        // C骴igo do CEP
        spdNFCeDataSets.campo('cPais_E14').Value := '';
        // C骴igo do Pa韘
        spdNFCeDataSets.campo('xPais_E15').Value := '';
        // Nome do Pa韘
        spdNFCeDataSets.campo('fone_E16').Value := '';
        // Telefone
        spdNFCeDataSets.campo('indIEDest_E16a').Value := '9';
        Result := true;
      end;
    except
      on E: Exception do
      begin
        TDIALOGS.wnOpNF.free;
        wnErro('Venda | NFC-e', 'Erro ao informar dados do destinatário na NFCE.', taLeftJustify, 10);
        erro_rotina_nfce := 'INFORMACOES';
        Result := false;
      end;
    end;
  end;

  function EanValido(codigobarras: string): string;
  begin
       if Length(codigobarras) = 0 then
          Result := 'SEM GTIN'
       else
          Result := codigobarras;
  end;

  function DadosDoItem: boolean;
  var
    vDescI17, vOutroI17a, AliquotaICMS, AliqPis, AliqCofins: Extended;
    qry_temp, qry_pis_cofins: TFDQuery;
  begin
    try
      with SQL_VENDA_ITEM do
      begin
        DisableControls;
        Close;
        ParamByName('pcodigo').Value := StrToInt(m_codigo_venda);
        open;
        Last;
        Qtde_Itens := FieldByName('CODIGO_ITEM_VENDA').Value;
        First;
        desc_base := SQL_VENDADESCONTO.AsExtended;
        acres_base := SQL_VENDAACRESCIMO.AsExtended;
        ratear_diff_acrescimos := true;
        ratear_diff_desconto := true;
        vProdW07 := 0;
        while not Eof do
        begin
          vDescI17 := 0;
          vOutroI17a := 0;
          spdNFCeDataSets.IncluirItem;
          // Iniciar a inclus鉶 de itens

          AliquotaICMS := SQL_VENDA_ITEMALIQ_ICMS.AsExtended / 100;
          // Calculando Porcentagem de Aliquota cadastrada no produto

          nItemH02 := inttostr(FieldByName('CODIGO_ITEM_VENDA').AsInteger);
          // Item da venda

          spdNFCeDataSets.campo('nItem_H02').Value := nItemH02;
          // N鷐ero do item

          spdNFCeDataSets.campo('cProd_I02').Value := inttostr(SQL_VENDA_ITEMCODIGO_PRODUTO.Value);
          // C骴igo do produto ou servi鏾

          spdNFCeDataSets.campo('cEAN_I03').Value := EanValido(SQL_VENDA_ITEMPROD_EAN.Value);
          // GTIN (Global Trade Item Number) do produto, antigo c骴igo EAN ou c骴igo de barras

          spdNFCeDataSets.campo('cEANTrib_I12').Value := EanValido(SQL_VENDA_ITEMPROD_EAN.Value);
          // GTIN (Global Trade Item Number) da unidade tribut醰el, antigo c骴igo EAN ou c骴igo de barra

          if (tpAmbB24 = '2') and (nItemH02 = '1') then
            // Ambiente = 2 e Item = 1
            spdNFCeDataSets.campo('xProd_I04').Value := NF_PRODUTO_HOMOLOGACAO
            // MSG PRODUTO EM HOMOLOGACAO
          else
            spdNFCeDataSets.campo('xProd_I04').Value := FormatarTagDescricao(SQL_VENDA_ITEMDESCRICAO_PRODUTO.asString);
          // Descri玢o do produto ou servi鏾

          NCMI05 := SQL_VENDA_ITEMNCM.Text;
          spdNFCeDataSets.campo('NCM_I05').Value := FormatarTagDescricao(NCMI05);
          // C骴igo NCM com 8 d韌itos ou 2 d韌itos (g阯ero)

          spdNFCeDataSets.campo('CEST_I05c').Value := FormatarTagDescricao(SQL_VENDA_ITEMCEST.asString);
          // C骴igo CEST

          spdNFCeDataSets.campo('uCom_I09').Value := SQL_VENDA_ITEMUNIDADE_MEDIDA.asString;
          // Unidade Comercial

          qComI10 := SQL_VENDA_ITEMQUANTIDADE.Value;
          spdNFCeDataSets.campo('qCom_I10').Value := formatarqtde(qComI10);
          // Quantidade Comercial

          (*
          if comparevalue(SQL_VENDA_ITEMPRECO.AsExtended + SQL_VENDA_ITEMACRESCIMO.AsExtended - SQL_VENDA_ITEMDESCONTO.AsExtended, 0) = -1 then
          begin
            vUNCOMI10a := SQL_VENDA_ITEMPRECO.AsExtended + SQL_VENDA_ITEMACRESCIMO.AsExtended;
            vDescI17 := SQL_VENDA_ITEMDESCONTO.AsExtended;
          end
          else
            vUNCOMI10a := SQL_VENDA_ITEMPRECO.AsExtended + SQL_VENDA_ITEMACRESCIMO.AsExtended - SQL_VENDA_ITEMDESCONTO.AsExtended;
          *)
          vUNCOMI10a := SQL_VENDA_ITEMPRECO.AsFloat;
          vDescI17 := SQL_VENDA_ITEMDESCONTO.AsExtended;

          spdNFCeDataSets.campo('vUnCom_I10a').Value := FormatarTag(vUNCOMI10a);

          // Valor Unit醨io de Comercializa玢o

          spdNFCeDataSets.campo('uTrib_I13').Value := SQL_VENDA_ITEMUNIDADE_MEDIDA.Value;
          // Unidade Tribut醰el

          qTribI14 := SQL_VENDA_ITEMQUANTIDADE.Value;
          spdNFCeDataSets.campo('qTrib_I14').Value := formatarqtde(qTribI14);
          // Quantidade Tribut醰el

          vUnTribI14a := vUNCOMI10a;
          spdNFCeDataSets.campo('vUnTrib_I14a').Value := FormatarTag(vUnTribI14a);
          // Valor Unit醨io de tributa玢o

          //vProdI11 := SQL_VENDA_ITEMPRECO_TOTAL.AsExtended;
          vProdI11 := Arredonda(qTribI14 * vUnTribI14a,2);
          spdNFCeDataSets.campo('vProd_I11').Value := FormatarTag(vProdI11);

          // Valor Total Bruto dos Produtos ou Servi鏾s

          vProdW07 := vProdW07 + vProdI11;
          // Totalizador do Valor dos Produtos

          spdNFCeDataSets.campo('indTot_I17b').Value := '1';
          // Indica se valor do Item (vProd) entra no valor total da NF-e (vProd)
          // 0 � o valor do item (vProd) n鉶 comp鮡 o valor total da NF-e (vProd)
          // 1 � o valor do item (vProd) comp鮡 o valor total da NF-e (vProd)

          spdNFCeDataSets.campo('orig_N11').Value := inttostr(SQL_VENDA_ITEMCODIGO_ORIGEM_MERCADORIA.Value);
          // Origem da mercadoria

          vOutroI17a := SQL_VENDA_ITEMACRESCIMO.AsExtended;
          vOutroI17a := vOutroI17a + CalcularAcrescimos(m_codigo_venda, nItemH02, acres_base, ratear_diff_acrescimos);

          vDescI17 := vDescI17 + CalcularDescontos(m_codigo_venda, nItemH02, desc_base, ratear_diff_desconto);

          if comparevalue(vDescI17, vProdI11) = 1 then
          begin
            desc_base := desc_base + (vDescI17 - vProdI11);
            vDescI17 := vProdI11;
          end;
          if comparevalue(vDescI17, 0) = 1 then
            spdNFCeDataSets.campo('vDesc_I17').Value := FormatarTag(vDescI17);

          if comparevalue(vOutroI17a, 0) = 1 then
            spdNFCeDataSets.campo('vOutro_I17a').Value := FormatarTag(vOutroI17a);

          vDescW10 := vDescW10 + vDescI17; // Totalizadores Descontos
          vOutroW15 := vOutroW15 + vOutroI17a; // Totalizadores Acr閟cimos

          {$REGION 'Regras de tributa玢o 24.10.16 [Manual de Orienta玢o v 6.0 Setembro de 2015]'}
          if CRTC21 = '1' then // Se CRT = 1, informar apenas CSOSN e n鉶 CST
          begin

            CSOSNN12a := FormatarTagDescricao(SQL_VENDA_ITEMCSOSN.Value);

            if CSOSNN12a <> '' then
              if CSOSNN12a = '500' then
                spdNFCeDataSets.campo('CFOP_I08').AsInteger := TNatureza_Op.Create(1).CFOP_ST
              else
                spdNFCeDataSets.campo('CFOP_I08').AsInteger := TNatureza_Op.Create(1).CFOP_TI
            else
              spdNFCeDataSets.campo('CFOP_I08').AsInteger := TNatureza_Op.Create(1).CFOP_TI;

            spdNFCeDataSets.campo('CSOSN_N12a').Value := CSOSNN12a;
          end
          else
          begin

            CSTN12 := SQL_VENDA_ITEMICMS_CST.Value;

            if CSTN12 <> '' then
              if CSTN12 = '60' then
                spdNFCeDataSets.campo('CFOP_I08').AsInteger := TNatureza_Op.Create(1).CFOP_ST
              else
                spdNFCeDataSets.campo('CFOP_I08').AsInteger := TNatureza_Op.Create(1).CFOP_TI
            else
              spdNFCeDataSets.campo('CFOP_I08').AsInteger := TNatureza_Op.Create(1).CFOP_TI;

            spdNFCeDataSets.campo('CST_N12').Value := CSTN12;
          end;
          if (CSTN12 = '00') or (CSTN12 = '000') then
          begin
            spdNFCeDataSets.campo('modBC_N13').Value := '1';
            vBCN15 := vProdI11 - vDescI17 + vOutroW15;
            spdNFCeDataSets.campo('vBC_N15').Value := FormatarTag(vBCN15);
            pICMSN16 := SQL_VENDA_ITEMALIQ_ICMS.AsExtended;
            spdNFCeDataSets.campo('pICMS_N16').Value := FormatarTag(pICMSN16);
            vICMSN17 := FormatarTag(vBCN15 * AliquotaICMS, vardouble);
            spdNFCeDataSets.campo('vICMS_N17').Value := FormatarTag(vICMSN17);
            // Totalizadores
            vBCW03 := vBCW03 + vBCN15;
            vICMSW04 := vICMSW04 + vICMSN17;
          end
          else if (CSTN12 = '10') or (CSTN12 = '010') then
          begin

            spdNFCeDataSets.campo('modBC_N13').Value := '1';
            vBCN15 := vProdI11 - vDescI17 + vOutroW15;
            spdNFCeDataSets.campo('vBC_N15').Value := FormatarTag(vBCN15);
            pICMSN16 := SQL_VENDA_ITEMALIQ_ICMS.Value;
            spdNFCeDataSets.campo('pICMS_N16').Value := FormatarTag(pICMSN16);
            vICMSN17 := vBCN15 * AliquotaICMS;
            spdNFCeDataSets.campo('vICMS_N17').Value := FormatarTag(vICMSN17);
            spdNFCeDataSets.campo('modBCST_N18').Value := '5';
            vBCSTN21 := vProdI11 - vDescI17 + vOutroW15;
            spdNFCeDataSets.campo('vBCST_N21').Value := FormatarTag(vBCSTN21);
            pICMSSTN22 := pICMSN16;
            spdNFCeDataSets.campo('pICMSST_N22').Value := FormatarTag(pICMSSTN22);
            vICMSSTN23 := vBCSTN21 * AliquotaICMS;
            spdNFCeDataSets.campo('vICMSST_N23').Value := FormatarTag(vICMSSTN23);

            // Totalizadores
            vBCW03 := vBCW03 + vBCN15;
            vICMSW04 := vICMSW04 + vICMSN17;
            vBCSTW05 := vBCSTW05 + vBCSTN21;
            vSTW06 := vSTW06 + vICMSSTN23;
          end
          //else if (CSTN12 = '40') or (CSTN12 = '41') or (CSTN12 = '50') or (CSTN12 = '040') or (CSTN12 = '041') or (CSTN12 = '050') then
          else if (CSTN12 = '41') or (CSTN12 = '50') or (CSTN12 = '041') or (CSTN12 = '050') then
          begin
            vBCN15 := vProdI11 - vDescI17 + vOutroW15;
            AliquotaICMS := TDB.simplequery('select aliq_imcs from parametros_sistema').Fields[0].Value / 100;
            pICMSN16 := AliquotaICMS; // ICMS PADRÃO
            vICMSDesonN27a := FormatarTag(vBCN15 * pICMSN16, vardouble);
            spdNFCeDataSets.campo('vICMSDeson_N28a').Value := FormatarTag(vICMSDesonN27a);
            // ICMS Desonerado | ICMS que iria ser cobrado caso a opera玢o n鉶 fosse isenta de tributa玢o
            spdNFCeDataSets.campo('motDesICMS_N28').Value := '9';
            // Tag Motivo da Desonera玢o
            // 9 - Outros
            vICMSDesonW04a := vICMSDesonW04a + vICMSDesonN27a;
          end;
          {$ENDREGION}
          {$REGION 'C醠culo dos impostos - Tabela IBPT' }
          vTotTribM02 := 0; // Totais de impostos incidentes sobre o produtos
          with qry_temp do
          begin
            qry_temp := simplequery('SELECT aliq_municipal, aliq_estadual, aliq_federal from ibpt where ncm =' + quotedstr(NCMI05));
            if qry_temp <> nil then
            begin
              IBPT_MUNICIPAIS := (FieldByName('aliq_municipal').Value * (vProdI11 - vDescI17 + vOutroW15) / 100);
              IBPT_ESTADUAIS := (FieldByName('aliq_estadual').Value * (vProdI11 - vDescI17 + vOutroW15) / 100);
              IBPT_FEDERAIS := (FieldByName('aliq_federal').Value * (vProdI11 - vDescI17 + vOutroW15) / 100);
              TributosMunicipais := FormatarTag(TributosMunicipais, vardouble) + FormatarTag(IBPT_MUNICIPAIS, vardouble);
              TributosEstaduais := FormatarTag(TributosEstaduais, vardouble) + FormatarTag(IBPT_ESTADUAIS, vardouble);
              TributosFederais := FormatarTag(TributosFederais, vardouble) + FormatarTag(IBPT_FEDERAIS, vardouble);
              destroy;
              vTotTribM02 := FormatarTag(IBPT_MUNICIPAIS, vardouble) + FormatarTag(IBPT_FEDERAIS, vardouble) + FormatarTag(IBPT_ESTADUAIS, vardouble);
              vTotTribW16a := FormatarTag(vTotTribM02, vardouble) + FormatarTag(vTotTribW16a, vardouble);
              // Valor Total dos Tributos no Item
            end;
          end;
          {$ENDREGION}
          {$REGION 'Tributa玢o Pis Cofins'}
          { Se enquadra para 08 e 99 (isentos de contribui玢o) }
          vPISQ09 := 0;
          vBCQ07 := 0;
          pPISQ08 := 0;
          vCOFINSS11 := 0;
          vBCS07 := 0;
          pCOFINSS08 := 0;
          if CRTC21 = '3' then { Regime normal }
          begin
            CST_PIS := SQL_VENDA_ITEMPIS_CST.asString;
            CST_COFINS := SQL_VENDA_ITEMCOFINS_CST.asString;
            spdNFCeDataSets.campo('CST_Q06').Value := CST_PIS;
            // CST PIS
            spdNFCeDataSets.campo('CST_S06').Value := CST_COFINS;
            // CST COFINS
            if (CST_PIS <> '04') and (CST_COFINS <> '04') then { monof醩ico }
            begin
              if (CST_PIS = '01') and (CST_COFINS = '01') then
              begin
                vBCQ07 := vProdI11 - vDescI17 + vOutroW15;
                vBCS07 := vProdI11 - vDescI17 + vOutroW15;
                qry_pis_cofins := simplequery('select tributacao_pis_cofins from empresa');
                if qry_pis_cofins <> nil then
                begin
                  if qry_pis_cofins.Fields[0].asString = 'CUMULATIVO' then
                    qry_pis_cofins := simplequery('select aliq_pis_cumulativo, aliq_cofins_cumulativo from parametros_sistema')
                  else
                    qry_pis_cofins := simplequery('select aliq_pis_nao_cumulativo, aliq_cofins_nao_cumulativo from parametros_sistema');
                  pPISQ08 := qry_pis_cofins.Fields[0].AsExtended;
                  pCOFINSS08 := qry_pis_cofins.Fields[1].AsExtended;
                end;
                vPISQ09 := FormatarTag(vBCQ07 * (pPISQ08 / 100), vardouble);
                vCOFINSS11 := FormatarTag(vBCS07 * (pCOFINSS08 / 100), vardouble);
              end;
              spdNFCeDataSets.campo('vBC_Q07').Value := FormatarTag(vBCQ07);
              // Base de c醠culo PIS
              spdNFCeDataSets.campo('vBC_S07').Value := FormatarTag(vBCS07);
              // Base de c醠culo COFINS
              spdNFCeDataSets.campo('pPIS_Q08').Value := FormatarTag(pPISQ08);
              // Al韖uota PIS
              spdNFCeDataSets.campo('vPIS_Q09').Value := FormatarTag(vPISQ09);
              // Valor PIS
              spdNFCeDataSets.campo('pCOFINS_S08').Value := FormatarTag(pCOFINSS08);
              // Al韖uota COFINS
              spdNFCeDataSets.campo('vCOFINS_S11').Value := FormatarTag(vCOFINSS11);
            end;
          end;
          vPISW13 := FormatarTag(vPISW13, vardouble) + FormatarTag(vPISQ09, vardouble);
          vCOFINSW14 := FormatarTag(vCOFINSS11, vardouble) + FormatarTag(vCOFINSW14, vardouble);
          // Totalizadores Pis Cofins
          {$ENDREGION }
          spdNFCeDataSets.campo('vTotTrib_M02').Value := FormatarTag(vTotTribM02);
          spdNFCeDataSets.SalvarItem;
          Next;
        end;
      end;
      Result := true;
    except
      on E: Exception do
      begin
        TDIALOGS.wnOpNF.free;
        wnErro('Venda | NFC-e', E.message + slinebreak + 'Erro ao informar dados do item na NFCE.', taLeftJustify, 10);
        erro_rotina_nfce := 'INFORMACOES';
        Result := false;
      end;
    end;
  end;

  function DadosTotalizadores: boolean;
  begin
    try
      vNFW16 := vProdW07 + vOutroW15 - vDescW10;

      // fundo de combate a pobreza * NFC-e 4.0 *

      spdNFCeDataSets.campo('vFCP_W04h').Value := '0.00';
      spdNFCeDataSets.campo('vFCPUFDest_W04c').Value := '0.00';
      spdNFCeDataSets.campo('vICMSUFDest_W04e').Value := '0.00';
      spdNFCeDataSets.campo('vICMSUFRemet_W04g').Value := '0.00';
      spdNFCeDataSets.campo('vBCST_W05').Value := '0.00';
      spdNFCeDataSets.campo('vST_W06').Value := '0.00';
      spdNFCeDataSets.campo('vFCPST_W06a').Value := '0.00';
      spdNFCeDataSets.campo('vFCPSTRet_W06b').Value := '0.00';

      spdNFCeDataSets.campo('vBC_W03').Value := FormatarTag(vBCW03);
      // Base de C醠culo do ICMS
      spdNFCeDataSets.campo('vICMS_W04').Value := FormatarTag(vICMSW04);
      // Valor Total do ICMS
      spdNFCeDataSets.campo('vICMSDeson_W04a').Value := FormatarTag(vICMSDesonW04a);
      // Valor ICMS de Desonera玢o
      spdNFCeDataSets.campo('vBCST_W05').Value := FormatarTag(vBCSTW05);
      // Base de C醠culo do ICMS ST
      spdNFCeDataSets.campo('vST_W06').Value := FormatarTag(vSTW06);
      // Valor Total do ICMS ST
      spdNFCeDataSets.campo('vProd_W07').Value := FormatarTag(vProdW07);
      // Valor Total dos produtos e servi鏾s
      spdNFCeDataSets.campo('vFrete_W08').Value := '0.00';
      // Valor Total do Frete
      spdNFCeDataSets.campo('vSeg_W09').Value := '0.00';
      // Valor Total do Seguro
      spdNFCeDataSets.campo('vII_W11').Value := '0.00';
      // Valor Total do II
      spdNFCeDataSets.campo('vIPI_W12').Value := '0.00';
      // Valor do IPI
      spdNFCeDataSets.campo('vIPIDevol_W12a').Value := '0.00';
      // Valor Total do IPI
      spdNFCeDataSets.campo('vPIS_W13').Value := FormatarTag(vPISW13);
      // Valor do PIS
      spdNFCeDataSets.campo('vCOFINS_W14').Value := FormatarTag(vCOFINSW14);
      // Valor do COFINS
      spdNFCeDataSets.campo('vOutro_W15').Value := FormatarTag(vOutroW15);
      // Valor dos Acr閟cimos
      spdNFCeDataSets.campo('vDesc_W10').Value := FormatarTag(vDescW10);
      // Valor dos Descontos
      spdNFCeDataSets.campo('vNF_W16').Value := FormatarTag(vNFW16);
      // Valor Total da NF-e
      spdNFCeDataSets.campo('vTotTrib_W16a').Value := FormatarTag(vTotTribW16a);
      // Valor Total dos Tributos
      spdNFCeDataSets.campo('modFrete_X02').Value := '9';
      // Modalidade do frete: 0- Por conta do emitente; 1- Por conta do destinat醨io/remetente; 2- Por conta de terceiros; 9- Sem frete.
      Result := true;
    except
      on E: Exception do
      begin
        TDIALOGS.wnOpNF.free;
        wnErro('Venda | NFC-e', E.message + slinebreak + 'Erro ao informar dados totalizadores da NFCE.', taLeftJustify, 10);
        erro_rotina_nfce := 'INFORMACOES';
        Result := false;
      end;
    end;
  end;

  function DadosPagamento: boolean;
  var
    valorPago_ext: Extended;
  begin
    try

      spdNFCeDataSets.IncluirPart('YA01');
      spdNFCeDataSets.campo('vTroco_YA09').Value := FormatarTag(StrToFloat(Troco));
      spdNFCeDataSets.SalvarPart('YA01');

      with SQL_VENDA_PAGAMENTO do
      begin
        Close;
        ParamByName('pcodigo').asString := m_codigo_venda;
        open;
        First;
        while not Eof do
        begin
          vPagYA03 := SQL_VENDA_PAGAMENTOVALOR_DEBITADO.Value;
          spdNFCeDataSets.IncluirPart('YA');
          if SQL_VENDA_PAGAMENTOCOD_TIPO_PAGAMENTO.asString = '06' then
          // promiss髍ia
          begin
            spdNFCeDataSets.campo('tPag_YA02').Value := '05'; // cr閐ito loja
            xCampoPag := 'obspag';
          end
          else
            spdNFCeDataSets.campo('tPag_YA02').Value := SQL_VENDA_PAGAMENTOCOD_TIPO_PAGAMENTO.asString;
          spdNFCeDataSets.campo('vPag_YA03').Value := FormatarTag(vPagYA03);
          spdNFCeDataSets.SalvarPart('YA');
          Next;
        end;
      end;

      PagamentoTroco(ValorPago, Troco);
      Result := true;
    except
      on E: Exception do
      begin
        TDIALOGS.wnOpNF.free;
        wnErro('Venda | NFC-e', E.message + slinebreak + 'Erro ao informar dados do pagamento da NFCE.', taLeftJustify, 10);
        erro_rotina_nfce := 'INFORMACOES';
        Result := false;
      end;
    end;
  end;

  function SalvarLoteEnvioXML: boolean;
  Var
    Xml: TStringList;
    NFCElote: String;
  begin
    try
      Xml := TStringList.Create;
      NFCElote := spdNFCeDataSets.LoteNFCE.GetText; // Informa珲es do Lote
      NFCExml := spdNFCe.AssinarNota(NFCElote);
      Xml.Text := NFCExml; // XML ASSINADA
      Caminho_XML := u_diretorios.Xml_Pendentes(DataEmiss) + IDA03 + '.xml';
      Xml.SaveToFile(Caminho_XML);
      Result := true;
    except
      on E: Exception do
      begin
        wnErro('Venda | NFC-e', E.message + 'Erro ao salvar arquivo XML', taLeftJustify, 10);
        erro_rotina_nfce := 'SALVAR_XML';
        Result := false;
      end;
    end;
  end;

  procedure ParametrosImpressaoDanfce(pCaminho_XML, erro_rotina_nfce: string; booConfirmacao: boolean);
  begin
    if booConfirmacao then
    begin
      if simplequery('SELECT CONFIRMA_IMPRESSAO_DANFE FROM PARAMETROS_NFCE').Fields[0].asString = m_True then
      begin
        if wnConfirmacao('Imprimir Danfe', slinebreak + 'Deseja Imprimir Nota Fiscal ?', 15) then
          ImprimirDanfce(pCaminho_XML, erro_rotina_nfce);
      end
      else
        ImprimirDanfce(pCaminho_XML, erro_rotina_nfce);
    end
    else
      ImprimirDanfce(pCaminho_XML, erro_rotina_nfce);
  end;

  procedure RotinaEnvioNFCE(data_op: tdatetime = 0);
  var
    RetornoXML: string;
    codigo_retorno: string;
  begin
    if data_op = 0 then
      data_op := now;
    RetornoXML := EnviarNFCe(_NumeroLote, IDA03, '', erro_rotina_nfce, data_op);
    if Copy(RetornoXML, 1, 5) = __ERROR__ then
    begin
      TDIALOGS.wnOpNF.free;
      retorno_nfce := stringreplace(RetornoXML, __ERROR__, '', [rfreplaceall]);
      PreencherDadosNFCE;
      exit;
    end;
    if mostrar_mensagem then
      TDIALOGS.wnOpNF.free;
    retorno_nfce := JanelaRetornaStatus(RetornoXML, mostrar_mensagem);
    codigo_retorno := Copy(retorno_nfce, 0, 3);
    if ansimatchstr(codigo_retorno, ['100', '150']) then // Status Autorizado
    begin
      FinalizarVenda(cNFB03, 'FECHADA', false); { Finaliza os dados da venda }
      // Deletar xml anteriormente salva na pasta de pendentes, mantendo apenas na pasta de autorizadas
      DeletarXMLPendente(u_diretorios.Xml_Pendentes(data_op) + IDA03 + '.xml');
      Caminho_XML := u_diretorios.Xml_Autorizadas(data_op) + IDA03 + '-nfce.xml';
      // XML Autorizada
      status_nfce := 'AUTORIZADA';
      erro_rotina_nfce := 'NENHUM';
      if tparametros_venda.Comanda.Enabled then
        ImprimirDanfce(Caminho_XML, erro_rotina_nfce)
      else
      begin
        if porSelectParam then
        begin
          execquery('UPDATE PARAMETROS_NFCE SET CONFIRMA_IMPRESSAO_DANFE = "1"');
          ParametrosImpressaoDanfce(Caminho_XML, erro_rotina_nfce, true);
          execquery('UPDATE PARAMETROS_NFCE SET CONFIRMA_IMPRESSAO_DANFE = "0"');
        end
        else
        begin
          if ParametrosImpressao then
          begin
            if SQL_PARAMETROS_NFCEVISUALIZAR_DANFE.Value = m_True then
              VisualizarDanfce(IDA03, NFCExml, _NumeroLote, erro_rotina_nfce);
            if SQL_PARAMETROS_NFCEIMPRIMIR_DANFE_DIRETO.Value = m_True then
              ParametrosImpressaoDanfce(Caminho_XML, erro_rotina_nfce, true)
            else
            begin
              if SQL_PARAMETROS_NFCENFCE_COMPROVANTE.Value = m_True then
              begin
                if boolnfce then
                  ParametrosImpressaoDanfce(Caminho_XML, erro_rotina_nfce, false);
              end;
              if SQL_PARAMETROS_NFCENFCE_COMPROVANTE.Value = m_False then
              begin
                if GeraComprovante then
                  ImprimirComprovante(m_codigo_venda, true);
              end
            end;
          end;
        end;
      end;
    end
    else
    // NFCE NÃO AUTORIZADA
    begin
      status_nfce := 'PENDENTE';
      erro_rotina_nfce := 'NENHUM';
      if verificar_venda then
        FinalizarVenda(cNFB03, 'ABERTA', false)
      else
        FinalizarVenda(cNFB03, 'FECHADA', false);
      { Finaliza os dados da venda }
      DeletarXMLPendente(u_diretorios.Xml_Autorizadas + IDA03 + '.xml');
    end;
  end;

var
  qry: TFDQuery;

begin
  try
    try
      if mostrar_mensagem then
        TDIALOGS.wnOpNF.show('TRANSMITINDO ' + slinebreak + 'NFC-e ...', 65);
      if not configurarcomponente then
        exit;
      spdNFCeDataSets.Incluir;
      if not DadosDoNFCe(ChaveNFCE, cNF) then
        exit;
      if not DadosDoEmitente then
        exit;
      if not DadosDoDestinatario then
        exit;
      if not DadosDoItem then
        exit;
      if not DadosTotalizadores then
        exit;
      if not DadosPagamento then
        exit;
      if not DadosIBPT(TributosFederais, TributosEstaduais, TributosMunicipais) then
        exit;

      if tparametros_venda.Comanda.Enabled then
      begin
        spdNFCeDataSets.IncluirPart('OBSCONT');
        spdNFCeDataSets.campo('xCampo_Z05').Value := 'comanda';
        qry := TDB.simplequery('SELECT COMANDA FROM VENDA WHERE CODIGO_VENDA = ?', [m_codigo_venda]);
        if qry <> nil then
          spdNFCeDataSets.campo('xtexto_Z06').Value := qry.Fields[0].asString
        else
          spdNFCeDataSets.campo('xtexto_Z06').Value := inttostr(tparametros_venda.Comanda.numero);
        spdNFCeDataSets.SalvarPart('OBSCONT');
      end;

      spdNFCeDataSets.Salvar;
      IDA03 := Copy(spdNFCeDataSets.campo('Id_A03').asString, 4, 44);
      // Retornar chave da nota
      _NumeroLote := SQL_PARAMETROS_NFCELOTE.Value; // Lote da nota fiscal
      SalvarLoteEnvioXML;
      if TpEmissao = 'NORMAL' then
      begin
        RotinaEnvioNFCE(DataEmiss);
      end
      else if TpEmissao = 'CONTINGENCIA' then
      begin
        if PermiteEnvioContingencia then
        begin
          RotinaEnvioNFCE(DataEmiss);
        end
        else
        begin
          FinalizarVenda(cNFB03, 'FECHADA', false);
          Moverxml(u_diretorios.Xml_Pendentes(DataEmiss) + IDA03 + '.xml', u_diretorios.Xml_Contingencia(DataEmiss) + IDA03 + '-contnfce.xml');
          Caminho_XML := u_diretorios.Xml_Contingencia(DataEmiss) + IDA03 + '-contnfce.xml';
          status_nfce := 'PENDENTE';
          erro_rotina_nfce := 'NENHUM';
          TDIALOGS.wnOpNF.free;
          wnalerta('Emissão em contingência', 'NFC-e emitida em Contingência.' + slinebreak +
            'Fique atento ao prazo de reenvio (24h após a emissão) da NFC-e assim que os problemas de transmissão forem sanados!');
          ImprimirDanfce(Caminho_XML, erro_rotina_nfce);
        end
      end;
    except
      on E: Exception do
      begin
        TDIALOGS.wnOpNF.free;
        wnErro('Venda | NFC-e', E.message + slinebreak + 'Erro ao fechar venda.', taLeftJustify, 10);
        erro_rotina_nfce := 'TRANSMISSAO';
      end;
    end;
  finally
    FinalizarVenda2('FECHADA', False);
    PreencherDadosNFCE;
  end;
end;

procedure TFrm_ConfNFCE.FinalizarVenda(CodNFCe: String; StatusVenda: String; MostraMensagem: boolean);
var
  qry_temp: TFDQuery;
const
  Fechada = 'FECHADA';
begin
  with qry_temp do
  begin
    qry_temp := TFDQuery.Create(nil);
    connection := module.connection;
    Close;
    sql.Clear;
    sql.Add('UPDATE venda SET');
    sql.Add('COD_NFCE = :pcod_nfce,');
    sql.Add('STATUS = :pstatus,');
    sql.Add('TOTAL_VENDA = :ptotal_venda,');
    sql.Add('VALOR_PAGO = :pvalor_pago,');
    sql.Add('TROCO = :ptroco');
    sql.Add('WHERE CODIGO_VENDA = :pcodigo_venda');
    if IsNumber(CodNFCe) then
      ParamByName('pcod_nfce').Value := CodNFCe
    else
      ParamByName('pcod_nfce').Value := emptystr;
    if (StatusVenda = Fechada) and (not VendaFechadaAnteriormente) then
      MovimentarEstoque(true, m_codigo_venda);
    ParamByName('pstatus').Value := StatusVenda;
    ParamByName('ptotal_venda').Value := StrToFloat(TotalVenda);
    ParamByName('pvalor_pago').Value := StrToFloat(ValorPago);
    ParamByName('ptroco').Value := StrToFloat(Troco);
    ParamByName('pcodigo_venda').Value := m_codigo_venda;
    execsql;
    destroy;
    if MostraMensagem then
      wnInfo('Finalização da Venda', slinebreak + 'Venda Finalizada com Sucesso!', tacenter, 16);
  end;
end;

procedure TFrm_ConfNFCE.FinalizarVenda2(StatusVenda: String; MostraMensagem: boolean);
var qry_temp: TFDQuery;
const
  Fechada = 'FECHADA';
begin
     with qry_temp do
     begin
          qry_temp := TFDQuery.Create(nil);
          connection := module.connection;
          Close;
          sql.Clear;
          sql.Add('UPDATE venda SET ');
          sql.Add('STATUS = :pstatus, ');
          sql.Add('TOTAL_VENDA = :ptotal_venda, ');
          sql.Add('VALOR_PAGO = :pvalor_pago,');
          sql.Add('TROCO = :ptroco');
          sql.Add('WHERE CODIGO_VENDA = :pcodigo_venda');

          if (StatusVenda = Fechada) and (not VendaFechadaAnteriormente) then
             MovimentarEstoque(true, m_codigo_venda);
          ParamByName('pstatus').Value := StatusVenda;
          ParamByName('ptotal_venda').Value := StrToFloat(TotalVenda);
          ParamByName('pvalor_pago').Value := StrToFloat(ValorPago);
          ParamByName('ptroco').Value := StrToFloat(Troco);
          ParamByName('pcodigo_venda').Value := m_codigo_venda;
          execsql;
          destroy;
          if MostraMensagem then
             wnInfo('Finalização da Venda', slinebreak + 'Venda Finalizada com Sucesso!', tacenter, 16);
     end;
end;

procedure TFrm_ConfNFCE.FormCreate(Sender: TObject);
begin
  VendaFechadaAnteriormente := false;
  desconto_excedente := 0;
end;

procedure TFrm_ConfNFCE.FormKeyPress(Sender: TObject; var Key: Char);
begin
  inherited;
  Key := #0;
end;

function TFrm_ConfNFCE.GeraComprovante: boolean;
begin
  if SQL_PARAMETROS_NFCEIMPRIMIR_COMPROVANTE.Value = m_True then
    Result := true
  else if SQL_PARAMETROS_NFCEIMPRIMIR_COMPROVANTE.Value = m_False then
    Result := false;
end;

procedure TFrm_ConfNFCE.ImprimirComprovante(Venda: String; verrParams: boolean; porSelecao: boolean = false; vias: integer = 1);
var
  I, viasnum: integer;
begin
  try

    TRY
      viasnum := simplequery('SELECT VIAS_COMPROVANTE FROM PARAMETROS_VENDA').Fields[0].AsInteger;

      tfunctions.releaseForm(frm_relatorio);
      frm_relatorio := Tfrm_relatorio.Create(nil);

      SQL_PARAMETROS_NFCE.Active := false;
      SQL_PARAMETROS_NFCE.Active := true;
      with frm_relatorio do
      begin
        SQL_C_VENDA.Close;
        SQL_C_VENDA.ParamByName('pcodigo_venda').Value := Venda;
        SQL_C_VENDA.open;
        SQL_C_ITENS.Close;
        SQL_C_ITENS.ParamByName('pcodigo_venda').Value := Venda;
        SQL_C_ITENS.open;
        SQL_C_PAGAMENTOS.Close;
        SQL_C_PAGAMENTOS.ParamByName('pcodigo_venda').Value := Venda;
        SQL_C_PAGAMENTOS.open;
        FR_COMPROVANTE_VENDA.LoadFromFile(PATH_COMPROVANTE, true);
        FR_COMPROVANTE_VENDA.PrintOptions.Printer := tfunctions.validatePrinter(tenv.Printers.COMPROVANTE_VENDA);
        FR_COMPROVANTE_VENDA.PrintOptions.PrintMode := pmSplit;
        FR_COMPROVANTE_VENDA.Preparereport(true);
        FR_COMPROVANTE_VENDA.PrintOptions.ShowDialog := false;

        if tparametros_venda.Comanda.Enabled then
          FR_COMPROVANTE_VENDA.print
        else
        begin
          if porSelecao then
          begin
            if TDIALOGS.wnConfirmacao('Finalização venda', slinebreak + 'Deseja imprimir comprovante de venda?', 14) then
              FR_COMPROVANTE_VENDA.print;
          end
          else
          begin
            if verrParams then
            begin
              if (viasnum = 0) and boolvenda then
                FR_COMPROVANTE_VENDA.print
              else if viasnum <> 0 then
              begin
                for I := 1 to viasnum do
                  FR_COMPROVANTE_VENDA.print;
              end;
            end
            else
              for I := 1 to vias do
                FR_COMPROVANTE_VENDA.print;

          end;
        end;

      end;

    except
      on E: Exception do
      begin
        TDIALOGS.wnErro('Imprimir Comprovante', E.message);
      end;
    END;

  finally
    frm_relatorio.Close;
  end;

end;

procedure TFrm_ConfNFCE.ImprimirDanfce(Caminho, ErroRotina: String; const Tot_Pagamentos: string = '0'; const Tot_Troco: string = '0');
var
  aImpressora, xmlNFCE: String;
  qry: TFDQuery;
begin
  try
    qry := simplequery('SELECT ESTADO FROM EMPRESA');
    if qry <> nil then
    begin
      if aUF = '' then
        aUF := qry.Fields[0].asString;

      if (Tot_Pagamentos <> '0') and (Tot_Troco <> '0') then
        PagamentoTroco(Tot_Pagamentos, Tot_Troco);

      spdNFCe.ArquivoServidoresHom := u_diretorios.confignfce + 'nfceservidoreshom.ini';
      spdNFCe.ArquivoServidoresProd := u_diretorios.confignfce + 'nfceservidoresprod.ini';
      spdNFCe.UF := aUF;
      xmlNFCE := TRIM(LoadXmlDestinatarioCont(Caminho));
      SQL_PARAMETROS_NFCE.Active := false;
      SQL_PARAMETROS_NFCE.Active := true;
      aImpressora := tfunctions.validatePrinter(tenv.Printers.nfce);
      spdNFCe.ImprimirDanfce(_NumeroLote, xmlNFCE, '', aImpressora);

    end
    else
      wnalerta('Imprimir Danfe', slinebreak + 'UF não informado no cadastro da Empresa!');
  except
    on E: Exception do
    begin
      Application.MessageBox(StringToOleStr(E.message + slinebreak + 'Erro ao imprimir NFCE.'), 'Mensagem do Sistema', MB_ICONERROR + MB_OK);
      ErroRotina := 'IMPRESSAO';
      exit;
    end;
  end;
end;

procedure TFrm_ConfNFCE.InformarDadosInternos(Cod_Venda, Arg_ValorPago, Arg_Troco, Arg_Total_Venda: String);
begin

  SQL_VENDA.Active := false;
  SQL_VENDA_ITEM.Active := false;
  SQL_VENDA_PAGAMENTO.Active := false;
  SQL_VENDA.ParamByName('pcodigo').Value := Cod_Venda;
  SQL_VENDA_ITEM.ParamByName('pcodigo').Value := Cod_Venda;
  SQL_VENDA_PAGAMENTO.ParamByName('pcodigo').Value := Cod_Venda;
  SQL_VENDA.Active := true;
  SQL_VENDA_ITEM.Active := true;
  SQL_VENDA_PAGAMENTO.Active := true;

  m_codigo_venda := SQL_VENDACODIGO_VENDA.asString;
  m_cliente_nome := SQL_VENDANOME_CLIENTE.asString;
  m_cliente_cpfcnpj := SQL_VENDACPF_CLIENTE.asString;
  m_cliente_telefone := SQL_VENDATELEFONE_CLIENTE.asString;
  m_operador := SQL_VENDAOPERADOR.asString;
  m_caixa := SQL_VENDACAIXA.asString;
  ValorPago := Arg_ValorPago;
  Troco := Arg_Troco;
  TotalVenda := Arg_Total_Venda;

end;

procedure TFrm_ConfNFCE.InutilizarFaixaNFCE(DataAnterior, DataAtual: TDate);
var
  m_DataAnterior, m_DataAtual, StrAux, STR_QUERY: string;
  arrcodigos: Array of integer;
  I, x, qtderegistros: integer;
begin
  try
    m_DataAnterior := FormatDateTime('yyyy-mm-dd', DataAnterior);
    m_DataAtual := FormatDateTime('yyyy-mm-dd', DataAtual);
    if DataAnterior <> DataAtual then
    begin
      StrAux := 'O sistema irá tentar inutilizar todas as notas pendentes' + slinebreak + ' do dia ' + FormatDateTime('dd/mm/yyyy', DataAnterior) +
        ' até o dia ' + FormatDateTime('dd/mm/yyyy', DataAtual) + slinebreak + 'Deseja continuar com a operação ?';;
    end
    else
    begin
      StrAux := 'O sistema irÁ tentar inutilizar todas as notas pendentes' + slinebreak + 'do dia ' + FormatDateTime('dd/mm/yyyy', DataAnterior) + '.' +
        slinebreak + 'Deseja continuar com a operação ?';
    end;
    if wnConfirmacao('NFC-e', StrAux) then
    begin
      frm_relatorio := Tfrm_relatorio.Create(nil);
      with frm_relatorio.SQL_OP_NFCE do
      begin
        Close;
        sql.Clear;
        STR_QUERY := 'SELECT *, (select sum(total_nfce) from nfce where status_nfce = "AUTORIZADA") as TOTAL_AUT FROM NFCE ' +
          ' WHERE (STATUS_NFCE IS NULL OR STATUS_NFCE = "PENDENTE") AND ((TIPO_EMISSAO IS NULL) OR (TIPO_EMISSAO <> "CONTINGENCIA")) AND (((DATA_TRANSMISSAO BETWEEN "'
          + m_DataAnterior + '" AND "' + m_DataAtual + '") ' + ' OR (DATA_TRANSMISSAO = "0000-00-00")) AND (DATA_EMISSAO BETWEEN "' + m_DataAnterior + '" AND "'
          + m_DataAtual + '"))';
        sql.Add(STR_QUERY);
        open;
        First;
        I := 0; // Index do vetor
        x := 1; // salto da barra
        if RecordCount > 0 then
        begin
          qtderegistros := RecordCount;
          frm_carregando_dados := tfrm_carregando_dados.Create(nil);
          frm_carregando_dados.Visible := true;
          frm_carregando_dados.show;
          frm_carregando_dados.Update;
          frm_carregando_dados.pb_barra_progresso.Min := 0;
          frm_carregando_dados.pb_barra_progresso.max := qtderegistros;
          SetLength(arrcodigos, qtderegistros);
          while not Eof do
          begin
            frm_carregando_dados.PreencherBarra(x);
            frm_carregando_dados.Update;
            frm_carregando_dados.MudarLabel('Inutilizando NFC-e ' + FieldByName('CODIGO').asString + ' ...');
            arrcodigos[I] := FieldByName('CODIGO').Value;
            if FieldByName('CHAVE').asString <> emptystr then
              ConsultarNF(FieldByName('CHAVE').asString, false, FieldByName('CAMINHO_XML').asString, FieldByName('STATUS_NFCE').asString,
                FieldByName('DATA_EMISSAO').asDateTime);
            InutilizarUnicaNFCE(frm_relatorio.SQL_OP_NFCE, false, true);
            Next;
            inc(I);
            inc(x);
          end;
          frm_carregando_dados.Close;
          frm_carregando_dados.destroy;
          StrAux := '';
          for I := Low(arrcodigos) to High(arrcodigos) do
            if not StrAux.IsEmpty then
              StrAux := StrAux + quotedstr(inttostr(arrcodigos[I])) + ','
            else
              StrAux := quotedstr(inttostr(arrcodigos[I])) + ',';
          with frm_relatorio.SQL_OP_NFCE do
          begin
            Close;
            sql.Clear;
            sql.Add('SELECT *,(select sum(total_nfce) from nfce where status_nfce = "AUTORIZADA") as TOTAL_AUT from NFCE WHERE CODIGO IN (' + Copy(StrAux, 0,
              Length(StrAux) - 1) + ')');
            open;
          end;

          frm_relatorio.FRX_OP_NFCE.LoadFromFile(frm_relatorio.path_op_nfce, true);
          frm_relatorio.FRX_OP_NFCE.ShowReport;
          frm_relatorio.Close;
          frm_relatorio.destroy;
        end
        else
        begin
          wnInfo(' NFC-e ', 'Não existem notas pendentes');
          frm_relatorio.Close;
          frm_relatorio.destroy;
          exit;
        end;
      end;
    end;
  except
    on E: Exception do
    begin
      wnErro('NFC-e', 'Erro na Inutilização das Notas Fiscais!');
      frm_carregando_dados.Close;
      frm_carregando_dados.free;
      frm_relatorio.Close;
      frm_relatorio.free;
      Frm_ConfNFCE.free;
      exit;
    end;
  end;
end;

procedure TFrm_ConfNFCE.InutilizarUnicaNFCE(Consulta: TFDQuery; RetornaMensagem: boolean; CancelarVenda: boolean);
var
  Ano, RetornoXML, Status, Caminho_XML: String;
begin
  try
    with Consulta do
    begin
      if RetornaMensagem then
      begin
        frm_carregando_dados := tfrm_carregando_dados.Create(nil);
        frm_carregando_dados.MudarLabel('Inutilizando NFC-e ' + inttostr(Consulta.FieldByName('CODIGO').Value) + ' ...');
        frm_carregando_dados.pb_barra_progresso.Min := 0;
        frm_carregando_dados.pb_barra_progresso.max := 2;
        frm_carregando_dados.Update;
        frm_carregando_dados.show;
        frm_carregando_dados.Update;
      end;
      Ano := FormatDateTime('yy', date);
      configurarcomponente;
      if RetornaMensagem then
      begin
        frm_carregando_dados.PreencherBarra(1);
        frm_carregando_dados.Update;
      end;
      if FieldByName('SERIE').asString = emptystr then
      begin
        Edit;
        FieldByName('SERIE').asString := simplequery('select serie_normal from parametros_nfce').Fields[0].Text;
        POST;
      end;
      RetornoXML := spdNFCe.InutilizarNF('', Ano, SQL_EmpresaCNPJ.asString, '65', FieldByName('SERIE').asString, FieldByName('CODIGO').asString,
        FieldByName('CODIGO').asString, NF_INUTILIZACAO_CANCELAR);
      Status := JanelaRetornaStatus(RetornoXML, RetornaMensagem);
      if RetornaMensagem then
        frm_carregando_dados.Close;
      if ansimatchstr(Copy(Status, 0, 3), ['102', '206', '256', '563']) then
      begin
        if FieldByName('CAMINHO_XML').asString <> emptystr then
        begin
          if FileExists(FieldByName('CAMINHO_XML').asString) then
          begin
            AppendFile(FieldByName('CAMINHO_XML').asString, RetornoXML + '</nfeProc>');
            AppendFile(FieldByName('CAMINHO_XML').asString, nfHeader, 1);
            Caminho_XML := u_diretorios.Xml_Inutilizadas(FieldByName('DATA_EMISSAO').asDateTime) + FieldByName('CHAVE').asString + '-inu.xml';
            Moverxml(FieldByName('CAMINHO_XML').asString, Caminho_XML);
          end;
        end
        else
        begin
          Caminho_XML := u_diretorios.Xml_Inutilizadas(FieldByName('DATA_EMISSAO').asDateTime) + FieldByName('CODIGO').asString + '-inu.xml';
          u_funcoes.SaveToFile(Caminho_XML, RetornoXML);
        end;
        Edit;
        FieldByName('CAMINHO_XML').asString := Caminho_XML;
        FieldByName('STATUS_NFCE').asString := 'INUTILIZADA';
        if FieldByName('TIPO_EMISSAO').asString = emptystr then
          FieldByName('TIPO_EMISSAO').asString := 'NORMAL';
        FieldByName('DATA_TRANSMISSAO').asDateTime := date;
        FieldByName('HORA_TRANSMISSAO').asDateTime := time;
        FieldByName('RETORNO_NFCE').asString := Status;
        if FieldByName('LOTE').asString = emptystr then
          FieldByName('LOTE').asString := simplequery('SELECT LOTE FROM PARAMETROS_NFCE').Fields[0].Text;
        POST;
        if CancelarVenda then
          AlterarInfoVenda('CANCELADA', Consulta.FieldByName('CODIGO_VENDA').asString);
      end;
    end;
  except
    on E: Exception do
    begin
      wnErro('NFC-e', E.message + slinebreak + 'Erro ao Inutilizar NFC-e!', taLeftJustify, 10);
      frm_carregando_dados.Close;
    end;
  end;
end;

function TFrm_ConfNFCE.JanelaRetornaStatus(RetornoXML: String; MostraJanela: boolean): String;

var
  Xml, XMLaux: IXMLDocument;
  TagPai, NodeAux: IXMLNode;
  cStatus, RetornoNFCE, DataHora, dia, mes, Ano, hhmmss: string;

begin
  if not RetornoXML.IsEmpty then
  begin
    Xml := TXMLDocument.Create(nil);
    Xml.LoadFromXML(RetornoXML);

    XMLaux := Xml;

    NodeAux := XMLaux.ChildNodes.FindNode('nfeResultMsg', '');
    if Assigned(NodeAux) then
      NodeAux := NodeAux.ChildNodes.FindNode('retEnviNFe', ''); // Eviar
    if Assigned(NodeAux) then
    begin
      TagPai := NodeAux;
      TagPai := TagPai.ChildNodes.FindNode('protNFe'); // Cabe鏰lho do Protocolo
      TagPai := TagPai.ChildNodes.FindNode('infProt'); // Dados do Protocolo
      DataHora := TagPai.ChildValues['dhRecbto']; // Data\Hora Recebimetno
    end;
    XMLaux := Xml;
    NodeAux := XMLaux.ChildNodes.FindNode('nfeResultMsg', '');
    if Assigned(NodeAux) then
      NodeAux := NodeAux.ChildNodes.FindNode('nfeAutorizacaoLoteResult', ''); // Eviar AM
    // Eviar AM
    if Assigned(NodeAux) then
    begin
      NodeAux := NodeAux.ChildNodes.FindNode('retConsReciNFe', ''); // Eviar AM
      TagPai := NodeAux;
      TagPai := TagPai.ChildNodes.FindNode('protNFe'); // Cabe鏰lho do Protocolo
      TagPai := TagPai.ChildNodes.FindNode('infProt'); // Dados do Protocolo
      DataHora := TagPai.ChildValues['dhRecbto']; // Data\Hora Recebimetno
    end;
  end;

  XMLaux := Xml;
  NodeAux := XMLaux.ChildNodes.FindNode('nfeResultMsg', '');
  if Assigned(NodeAux) then
    NodeAux := NodeAux.ChildNodes.FindNode('retEnvEvento', ''); // Cancelar
  if Assigned(NodeAux) then
  begin
    TagPai := NodeAux;
    TagPai := TagPai.ChildNodes.FindNode('retEvento');
    // Cabe鏰lho do Evento
    TagPai := TagPai.ChildNodes.FindNode('infEvento'); // Dados do Evento
    DataHora := TagPai.ChildValues['dhRegEvento'];
    // Data\Hora do Registro do Evento
  end;

  XMLaux := Xml;

  NodeAux := XMLaux.ChildNodes.FindNode('nfeResultMsg', '');
  if Assigned(NodeAux) then
    NodeAux := NodeAux.ChildNodes.FindNode('retConsSitNFe', ''); // Consulta

  if Assigned(NodeAux) then
  begin

    TagPai := NodeAux;
    if TagPai.ChildValues['cStat'] = '100' then
    // para autoriza玢o, verificar se existe autoriza玢o fora do prazo
    begin
      TagPai := TagPai.ChildNodes.FindNode('protNFe'); // Cabe鏰lho do Protocolo
      TagPai := TagPai.ChildNodes.FindNode('infProt'); // Dados do Protocolo
    end;
    DataHora := TagPai.ChildValues['dhRecbto'];
    // Data\Hora Recebimetno
  end;
  XMLaux := Xml;
  NodeAux := XMLaux.ChildNodes.FindNode('retInutNFe', ''); // Inutilizar
  if Assigned(NodeAux) then
  begin
    TagPai := NodeAux;
    TagPai := TagPai.ChildNodes.FindNode('infInut');
    // Cabe鏰lho do Evento
    DataHora := TagPai.ChildValues['dhRecbto']; // Data\Hora Recebimetno
  end;
  XMLaux := Xml;
  NodeAux := XMLaux.ChildNodes.FindNode('nfeResultMsg', '');
  if Assigned(NodeAux) then
    NodeAux := NodeAux.ChildNodes.FindNode('retConsStatServ', ''); // Status Servi鏾
  if Assigned(NodeAux) then
  begin
    TagPai := NodeAux;
    DataHora := TagPai.ChildValues['dhRecbto'];
    // Data\Hora Recebimetno
  end;
  if TagPai.ChildValues['tpAmb'] = '1' then
    RetornoNFCE := 'Ambiente: Produção' + slinebreak
  else if TagPai.ChildValues['tpAmb'] = '2' then
    RetornoNFCE := 'Ambiente: Homologação' + slinebreak;
  // RetornoNFCE := RetornoNFCE + 'Vers鉶 do Aplicativo: ' + TagPai.ChildValues['verAplic'] + slinebreak;
  NodeAux := TagPai;
  NodeAux := NodeAux.ChildNodes.FindNode('chNFe');
  if Assigned(NodeAux) then
    // Para Inutiliza玢o - Informar Faixa de NF e outras opera珲es, informar Chave
    RetornoNFCE := RetornoNFCE + 'Chave NFC-e: ' + TagPai.ChildValues['chNFe'] + slinebreak
  else
  begin
    NodeAux := TagPai;
    NodeAux := NodeAux.ChildNodes.FindNode('nNFIni');
    if Assigned(NodeAux) then
      RetornoNFCE := RetornoNFCE + 'Faixa NFC-e: Inicio: ' + TagPai.ChildValues['nNFIni'] + ' Fim: ' + TagPai.ChildValues['nNFFin'] + slinebreak;
  end;
  dia := Copy(DataHora, 9, 2) + '/';
  mes := Copy(DataHora, 6, 2) + '/';
  Ano := Copy(DataHora, 0, 4) + ' ';
  hhmmss := Copy(DataHora, 12, 8);
  DataHora := dia + mes + Ano + hhmmss;
  RetornoNFCE := RetornoNFCE + 'Data e Hora do Recebimento: ' + DataHora + slinebreak;
  // NodeAux := TagPai;
  // NodeAux := NodeAux.ChildNodes.FindNode('nProt');
  // if assigned(NodeAux) then // Para envio de evento. Em consulta n鉶 se aplica
  // RetornoNFCE := RetornoNFCE + 'N� Protoloco: ' + TagPai.ChildValues['nProt'] + slinebreak;
  NodeAux := TagPai;
  // NodeAux := NodeAux.ChildNodes.FindNode('digVal');
  // if assigned(NodeAux) then // Para envio de evento. Em consulta n鉶 se aplica
  // RetornoNFCE := RetornoNFCE + 'Digest Value: ' + TagPai.ChildValues['digVal'] + slinebreak;
  RetornoNFCE := RetornoNFCE + 'Status: ' + TagPai.ChildValues['cStat'] + ' - ' + TagPai.ChildValues['xMotivo'];
  cStatus := TagPai.ChildValues['cStat'];
  cStatus := cStatus + #32 + TagPai.ChildValues['xMotivo'];
  if (cStatus <> '') and MostraJanela then
  begin
    if ansimatchstr(Copy(cStatus, 1, 3), ['100', '101', '102', '107', '135', '150']) then
      wnInfo('Retorno NFC-e', RetornoNFCE, taLeftJustify, 10)
    else
      wnalerta('Retorno NFC-e', RetornoNFCE, taLeftJustify, 10)
  end;
  Result := cStatus;
  Xml := nil;
  TagPai := nil;
  NodeAux := nil;
end;

function TFrm_ConfNFCE.LoadXmlDestinatarioCont(CaminhoXML: String): WideString;
var
  _file: TStringList;
  _fileName: string;
begin
  _file := TStringList.Create;
  try
    _fileName := CaminhoXML;
    if not FileExists(_fileName) then
      raise Exception.CreateFmt('Nao foi possivel encontrar o arquivo XML %s .Verifique se NFe esta autorizada.', [_fileName]);
    _file.LoadFromFile(_fileName);
    Result := _file.Text;
  finally
    _file.free;
  end;
end;

end.
