unit m_NFe;
{
========================================================================================================================================
ALT|   DATA |HORA |UNIT                        |Descrição                                                                              |
---|--------|-----|----------------------------|----------------------------------------------------------------------------------------
326|15/06/20|13:35|m_NFe                       |Passa a tratar PRODUTO_PROD(PROD_EAN)    ao invés de PRODUTO(CODIGO_BARRAS)
304|15/06/20|10:14|m_NFe                       |Passa a tratar PRODUTO_PROD(PROD_CODIGO) ao invés de PRODUTO(CODIGO)
========================================================================================================================================
}

interface

uses
  spdNFe, spdNFeType, sysutils, classes, FireDAC.comp.client, System.Math,
  spdNFeDataSets, System.StrUtils, h_Checks, h_Net, h_Formats,
  h_nf_Formats, I_Crud, m_Fornecedor, m_Cliente, m_Transportador, c_globals, c_NF, m_Produto, h_Files, v_Dir, S_Parametros_NF, m_XML,
  m_Manifesto, System.Variants, m_Natureza_Op, m_Ncm, m_ICMS, m_Csosn;

type
  TNFe = class(TInterfacedObject, ICrud)
  private
    CP_NFe: TspdNFe;
    DS_NFe: tspdNFeDataSets;
    NFe_ID: integer;
    NFe_Chave: String;
    NFe_Chave_Referenciada: String;
    NFe_Numero: string;
    NFe_Caminho_Xml: string;
    NFe_Cod_Venda: integer;
    NFe_Lote: String;
    NFe_Serie: String;
    NFe_Status_nfe: string;
    NFe_Tipo_Emissao: string; // normal - contingencia
    NFe_Finalidade: integer;
    NFe_Tipo_Nfe: string; // entrada - saida
    NFe_Indicacao_Pagamento: string; // a vista - a prazo
    NFe_Data_emissao: TDateTime;
    NFe_Data_transmissao: TDateTime;
    NFe_Base_icms: Extended;
    NFe_Valor_icms: Extended;
    NFe_Valor_Icms_desonerado: Extended;
    NFe_Base_icms_st: Extended;
    NFe_Valor_icms_st: Extended;
    NFe_Valor_nfe: Extended;
    NFe_Valor_frete: Extended;
    NFe_Valor_seguro: Extended;
    NFe_Valor_despesas: Extended;
    NFe_Valor_desconto: Extended;
    NFe_Valor_ii: Extended;
    NFe_Valor_ipi: Extended;
    NFe_Valor_pis: Extended;
    NFe_Valor_cofins: Extended;
    NFe_Total_nfe: Extended;
    NFe_Valor_pago: Extended;
    NFe_Troco: Extended;
    NFe_Tipo_frete: string;
    NFe_Observacoes: string;
    NFe_Retorno_nfe: string;
    NFe_Erro_rotina: string;

    // Getters and Setters
    function getNFe_ID: integer;
    function getNFe_Chave: string;
    function getNFe_Chave_Referenciada: string;
    function getNFe_Numero: string;
    function getNfe_Caminho_Xml: string;
    function getNFe_Cod_Venda: integer;
    function getNFe_Lote: String;
    function getNFe_Serie: String;
    function getNFe_Status_nfe: string;
    function getNFe_Tipo_Emissao: string;
    function getNFe_Finalidade: integer;
    function getNFe_Tipo_Nfe: string;
    function getNFe_Indicacao_Pagamento: string;
    function getNFe_Data_emissao: Variant;
    function getNFe_Data_transmissao: Variant;
    function getNFe_Base_icms: Variant;
    function getNFe_Valor_icms: Variant;
    function getNFe_valor_icms_desonerado: Variant;
    function getNFe_Base_icms_st: Variant;
    function getNFe_Valor_icms_st: Variant;
    function getNFe_Valor_nfe: Variant;
    function getNFe_Valor_frete: Variant;
    function getNFe_Valor_seguro: Variant;
    function getNFe_Valor_despesas: Variant;
    function getNFe_Valor_desconto: Variant;
    function getNFe_Valor_ii: Variant;
    function getNFe_Valor_ipi: Variant;
    function getNFe_Valor_pis: Variant;
    function getNFe_Valor_cofins: Variant;
    function getNFe_Total_nfe: Variant;
    function getNFe_Valor_pago: Variant;
    function getNFe_Troco: Variant;
    function getNFe_Tipo_frete: string;
    function getNFe_Observacoes: string;
    function getNFe_Retorno_nfe: string;
    function getNFe_Erro_rotina: string;

    procedure setNFe_Chave(const value: string);
    procedure setNFe_Chave_Referenciada(const value: string);
    procedure setNFe_Numero(const value: string);
    procedure setNfe_Caminho_Xml(const value: string);
    procedure setNFe_Cod_Venda(const value: integer);
    procedure setNFe_Lote(const value: String);
    procedure setNFe_Serie(const value: String);
    procedure setNFe_Status_nfe(const value: string);
    procedure setNFe_tipo_emissao(const value: string);
    procedure setNFe_Finalidade(const value: integer);
    procedure setNFe_tipo_nfe(const value: string);
    procedure setNFe_indicacao_pagamento(const value: string);
    procedure setNFe_data_emissao(const value: Variant);
    procedure setNFe_data_transmissao(const value: Variant);
    procedure setNFe_base_icms(const value: Variant);
    procedure setNFe_valor_icms(const value: Variant);
    procedure setNFe_valor_icms_desonerado(const value: Variant);
    procedure setNFe_base_icms_st(const value: Variant);
    procedure setNFe_valor_icms_st(const value: Variant);
    procedure setNFe_valor_nfe(const value: Variant);
    procedure setNFe_valor_frete(const value: Variant);
    procedure setNFe_valor_seguro(const value: Variant);
    procedure setNFe_valor_despesas(const value: Variant);
    procedure setNFe_valor_desconto(const value: Variant);
    procedure setNFe_valor_ii(const value: Variant);
    procedure setNFe_valor_ipi(const value: Variant);
    procedure setNFe_valor_pis(const value: Variant);
    procedure setNFe_valor_cofins(const value: Variant);
    procedure setNFe_total_nfe(const value: Variant);
    procedure setNFe_valor_pago(const value: Variant);
    procedure setNFe_troco(const value: Variant);
    procedure setNFe_tipo_frete(const value: string);
    procedure setNFe_observacoes(const value: string);
    procedure setNFe_retorno_nfe(const value: string);
    procedure setNFe_erro_rotina(const value: string);

    function ConfigurarComponente(const pCertficado: string = ''): boolean;
    procedure ClearData;
    procedure LoadDataToNF(const pDataSet: tspdNFeDataSets; path_xml: string; PImportacao: Tobject); overload;
    procedure LoadDataToNF(const pQRY_NFe, pQRY_NFe_Itens, pQRY_NFe_Pagamentos: tfdquery); overload;

    procedure Insert;
    procedure Delete(const pID: integer);
    function Select(FieldNames: array of String; const Values: array of Variant): tfdquery; overload;
    function Select(const pID: integer): tfdquery; overload;
    procedure Update(pUk: c_globals.tupdatekind = ukHard);

  public
    // Propriedades
    property ID: integer read getNFe_ID;
    property CHAVE: String read getNFe_Chave write setNFe_Chave;
    property CHAVE_REFERENCIADA: String read getNFe_Chave_Referenciada write setNFe_Chave_Referenciada;
    property NUMERO: String read getNFe_Numero write setNFe_Numero;
    property CAMINHO_XML: String read getNfe_Caminho_Xml write setNfe_Caminho_Xml;
    property CODIGO_VENDA: integer read getNFe_Cod_Venda write setNFe_Cod_Venda;
    property LOTE: String read getNFe_Lote write setNFe_Lote;
    property SERIE: String read getNFe_Serie write setNFe_Serie;
    property STATUS_NFE: String read getNFe_Status_nfe write setNFe_Status_nfe;
    property TIPO_EMISSAO: String read getNFe_Tipo_Emissao write setNFe_tipo_emissao;
    property TIPO_NFE: String read getNFe_Tipo_Nfe write setNFe_tipo_nfe;
    property INDICACAO_PAGAMENTO: String read getNFe_Indicacao_Pagamento write setNFe_indicacao_pagamento;
    property DATA_EMISSAO: Variant read getNFe_Data_emissao write setNFe_data_emissao;
    property DATA_TRANSMISSAO: Variant read getNFe_Data_transmissao write setNFe_data_transmissao;
    property FINALIDADE: integer read getNFe_Finalidade write setNFe_Finalidade;
    property BASE_ICMS: Variant read getNFe_Base_icms write setNFe_base_icms;
    property VALOR_ICMS: Variant read getNFe_Valor_icms write setNFe_valor_icms;
    property VALOR_ICMS_DESONERADO: Variant read getNFe_valor_icms_desonerado write setNFe_valor_icms_desonerado;
    property BASE_ICMS_ST: Variant read getNFe_Base_icms_st write setNFe_base_icms_st;
    property VALOR_ICMS_ST: Variant read getNFe_Valor_icms_st write setNFe_valor_icms_st;
    property VALOR_NFE: Variant read getNFe_Valor_nfe write setNFe_valor_nfe;
    property VALOR_FRETE: Variant read getNFe_Valor_frete write setNFe_valor_frete;
    property VALOR_SEGURO: Variant read getNFe_Valor_seguro write setNFe_valor_seguro;
    property VALOR_DESPESAS: Variant read getNFe_Valor_despesas write setNFe_valor_despesas;
    property VALOR_DESCONTO: Variant read getNFe_Valor_desconto write setNFe_valor_desconto;
    property VALOR_II: Variant read getNFe_Valor_ii write setNFe_valor_ii;
    property VALOR_IPI: Variant read getNFe_Valor_ipi write setNFe_valor_ipi;
    property VALOR_PIS: Variant read getNFe_Valor_pis write setNFe_valor_pis;
    property VALOR_COFINS: Variant read getNFe_Valor_cofins write setNFe_valor_cofins;
    property TOTAL_NFE: Variant read getNFe_Total_nfe write setNFe_total_nfe;
    property VALOR_PAGO: Variant read getNFe_Valor_pago write setNFe_valor_pago;
    property TROCO: Variant read getNFe_Troco write setNFe_troco;
    property TIPO_FRETE: string read getNFe_Tipo_frete write setNFe_tipo_frete;
    property OBSERVACOES: String read getNFe_Observacoes write setNFe_observacoes;
    property RETORNO_NFE: String read getNFe_Retorno_nfe write setNFe_retorno_nfe;
    property ERRO_ROTINA: String read getNFe_Erro_rotina write setNFe_erro_rotina;

    constructor Create(const pCertificado: string = ''); overload;
    constructor Create(idNFe: integer; const pCertificado: string = ''); overload;
    procedure ImportarNF(const path_xml: string; PImportacao: Tobject);
    function BaixarNF(const pChave: string): boolean;
    procedure SalvarNF;
    procedure RecarregarNatOp;
    class procedure VisualizarDanfe(pCaminho_xml: string);
    function manifestarNFe(codEvento: integer; chave_nfe, obs: string): string;
    function consultarNFe(pChave: string): string;
    function DistribuicaoDFe(pChave: string): string;

  type
    TCarga = class(Tobject)
    private
      NFe_Carga_Quantidade: Extended;
      NFe_Carga_Especie: string;
      NFe_Carga_Marca: string;
      Nfe_Carga_Num_Volume: string;
      NFe_Carga_Peso_liquido: Extended;
      NFe_Carga_Peso_bruto: Extended;

      function getNFe_Carga_Quantidade: Extended;
      function getNFe_Carga_Especie: string;
      function getNFe_Carga_Marca: string;
      function getNfe_Carga_Num_Volume: string;
      function getNFe_Carga_Peso_liquido: Extended;
      function getNFe_Carga_Peso_bruto: Extended;

      procedure setNFe_Carga_Quantidade(const value: Extended);
      procedure setNFe_Carga_Especie(const value: string);
      procedure setNFe_Carga_Marca(const value: string);
      procedure setNfe_Carga_Num_Volume(const value: string);
      procedure setNFe_Carga_Peso_liquido(const value: Extended);
      procedure setNFe_Carga_Peso_bruto(const value: Extended);

      procedure ClearData;

    public
      property QUANTIDADE: Extended read getNFe_Carga_Quantidade write setNFe_Carga_Quantidade;
      property ESPECIE: String read getNFe_Carga_Especie write setNFe_Carga_Especie;
      property MARCA: String read getNFe_Carga_Marca write setNFe_Carga_Marca;
      property NUMERO_VOLUME: string read getNfe_Carga_Num_Volume write setNfe_Carga_Num_Volume;
      property PESO_LIQUIDO: Extended read getNFe_Carga_Peso_liquido write setNFe_Carga_Peso_liquido;
      property PESO_BRUTO: Extended read getNFe_Carga_Peso_bruto write setNFe_Carga_Peso_bruto;

    end;

  type
    TNFe_Destinada = class
    private
      DFe_id: integer;
      DFe_Fornecedor: string;
      DFe_Cnpj: string;
      DFe_Data_Emissao: TDateTime;
      DFe_previsao_entrega: tdate;
      DFe_valor: Extended;
      DFe_chave: string;
      DFe_Observacoes: string;
      DFe_Nfe_Importada: boolean;

      function getDFe_id: integer;
      function getDFe_Fornecedor: string;
      function getDFe_Cnpj: string;
      function getDFe_Data_Emissao: TDateTime;
      function getDFe_previsao_entrega: tdate;
      function getDFe_valor: Extended;
      function getDFe_chave: string;
      function getDFe_Observacoes: string;
      function getDFe_Nfe_Importada: boolean;

      procedure setDFe_Fornecedor(value: string);
      procedure setDFe_Cnpj(value: string);
      procedure setDFe_Data_Emissao(value: TDateTime);
      procedure setDFe_previsao_entrega(value: tdate);
      procedure setDFe_valor(value: Extended);
      procedure setDFe_chave(value: string);
      procedure setDFe_Observacoes(value: string);
      procedure setDFe_Nfe_Importada(value: boolean);

      procedure ClearData;

    public
      property ID: integer read getDFe_id;
      property FORNECEDOR: String read getDFe_Fornecedor write setDFe_Fornecedor;
      property CNPJ: String read getDFe_Cnpj write setDFe_Cnpj;
      property DATA_EMISSAO: TDateTime read getDFe_Data_Emissao write setDFe_Data_Emissao;
      property PREVISAO_ENTREGA: tdate read getDFe_previsao_entrega write setDFe_previsao_entrega;
      property VALOR: Extended read getDFe_valor write setDFe_valor;
      property CHAVE: string read getDFe_chave write setDFe_chave;
      property OBSERVACOES: string read getDFe_Observacoes write setDFe_Observacoes;
      property NFE_IMPORTADA: boolean read getDFe_Nfe_Importada write setDFe_Nfe_Importada;

    var
      Manifesto: TManifesto;

    end;

  var
    Emitente: TFornecedor;
    Destinatario: TCliente;
    Carga: TCarga;
    Transportador: TTransportador;
    Natureza_Op: tnatureza_op;

  end;

implementation

uses h_Dialogs, h_Functions, h_nf_Functions, m_Empresa, h_DB, m_Importacao;

{ m_NFe }

constructor TNFe.Create(const pCertificado: string = '');
begin
  inherited Create;
  Emitente := TFornecedor.Create;
  Destinatario := TCliente.Create;
  Carga := TCarga.Create;
  Transportador := TTransportador.Create;
  Natureza_Op := nil;
  CP_NFe := TspdNFe.Create(nil);
  DS_NFe := tspdNFeDataSets.Create(nil);
  ConfigurarComponente(pCertificado);
end;

procedure TNFe.Delete(const pID: integer);
begin
  tdb.ExecQuery('DELETE FROM NFE WHERE ID = ?', [pID]);
end;

function TNFe.DistribuicaoDFe(pChave: string): string;
begin
  result := CP_NFe.ConsultarDistribuicaoDFeChave(TEmpresa.Create.COD_UF, TEmpresa.Create.CNPJ, pChave);
end;

function TNFe.BaixarNF(const pChave: string): boolean;
var
  XMLNf: txml;
  path_xml_down, xml_ret: string;
begin
  if TNet.ConnStatus then
  begin
    TDialogs.wnOpNf.Show('Baixando' + slinebreak + 'NF-e ...', 55);
    XMLNf := txml.Create(CP_NFe.ConsultarDistribuicaoDFeChave(TEmpresa.Create.COD_UF, TEmpresa.Create.CNPJ, pChave));
    if TNF_Func.EvtDownload(XMLNf.XML) then
    begin
      XMLNf := XMLNf.Tag('loteDistDFeInt').Tag('docZip');
      XMLNf := txml.Create(CP_NFe.DescompactarXMLZip(XMLNf.value));
      XMLNf := txml.Create(CP_NFe.EnviarManifestacaoDestinatario(1, XMLNf.Tag('chNFe').value, TEmpresa.Create.CNPJ, NF_DOWNLOAD, tnf_unformats.Date(now, false),
        1, '-04:00', '91'));
      if TNF_Func.EvtManifesto(XMLNf.XML) then
      begin
        path_xml_down := TNF_Func.getPathEntrada(pChave);
        TFile.Create(path_xml_down).Append(path_xml_down, XMLNf.XML);
        self.CAMINHO_XML := path_xml_down;
        result := True;
      end
      else
      begin
        TDialogs.wnOpNf.Free;
        TNF_Func.StatusRetornoNF(XMLNf.XML, 55);
        result := false;
      end;
    end
    else
    begin
      TDialogs.wnOpNf.Free;
      TNF_Func.StatusRetornoNF(XMLNf.XML, 55);
      result := false;
    end;
    TDialogs.wnOpNf.Free;
  end
  else
  begin
    raise Exception.Create('Uma falha de conexão com a internet impediu a consulta da Nota Fiscal solicitada!' + slinebreak +
      'Verifique as configurações da sua conexão e tente novamente.');
    result := false;
  end;
end;

procedure TNFe.ImportarNF(const path_xml: string; PImportacao: Tobject);
var
  xml_content, versao_nfe: string;
  versao_esquema: TVersaoEsquema;
  tagPag: txml;
  modFrete: integer;
begin
  try
    if path_xml = emptystr then
    begin
      TDialogs.wnOpNf.Free;
      raise Exception.Create('Caminho da xml da NFe não pode estar em branco!');
    end;

    if not FileExists(path_xml) then
    begin
      TDialogs.wnOpNf.Free;
      raise Exception.Create(Format('Não foi possível localizar o caminho específicado [%s]', [path_xml]));
    end;

    xml_content := TFunctions.LoadContent(path_xml);

    // Aplicando string replace para mudar a tag do frete
    for modFrete := 0 to 9 do
      xml_content := TFunctions.replace(xml_content, '<modFrete>' + inttostr(modFrete) + '</modFrete>', '<modFrete>9</modFrete>');

    DS_NFe := CP_NFe.ConverteXmlparaDataSet(xml_content, TVersaoEsquema.pl_009);

    self.LoadDataToNF(DS_NFe, path_xml, PImportacao);
  except
    on e: Exception do
    begin
      raise Exception.Create('Erro ao importar dados da xml:' + e.message);
    end;
  end;
end;

procedure TNFe.ClearData;
begin
  NFe_ID := 0;
  NFe_Chave := '';
  NFe_Numero := '';
  NFe_Caminho_Xml := '';
  NFe_Cod_Venda := 0;
  NFe_Lote := '';
  NFe_Serie := '';
  NFe_Status_nfe := '';
  NFe_Tipo_Emissao := '';
  NFe_Tipo_Nfe := '';
  NFe_Indicacao_Pagamento := '';
  NFe_Data_emissao := 0;
  NFe_Data_transmissao := 0;
  NFe_Base_icms := 0;
  NFe_Valor_icms := 0;
  NFe_Valor_Icms_desonerado := 0;
  NFe_Base_icms_st := 0;
  NFe_Valor_icms_st := 0;
  NFe_Valor_nfe := 0;
  NFe_Valor_frete := 0;
  NFe_Valor_seguro := 0;
  NFe_Valor_despesas := 0;
  NFe_Valor_desconto := 0;
  NFe_Valor_ii := 0;
  NFe_Valor_ipi := 0;
  NFe_Valor_pis := 0;
  NFe_Valor_cofins := 0;
  NFe_Total_nfe := 0;
  NFe_Valor_pago := 0;
  NFe_Troco := 0;
  NFe_Tipo_frete := '';
  NFe_Observacoes := '';
  NFe_Retorno_nfe := '';
  NFe_Erro_rotina := '';
  self.Natureza_Op := nil;
end;

function TNFe.ConfigurarComponente(const pCertficado: string): boolean;
var
  empresa: TEmpresa;
begin
  try
    empresa := TEmpresa.Create;
    if empresa.isregistered then
    begin
      // [COMPONENTE]
      CP_NFe.Ambiente := TFunctions.IfThen(Tparametros_nf.Ambiente, ['PRODUCAO', 'HOMOLOGACAO'], [akProducao, akHomologacao]);
      CP_NFe.UF := empresa.estado;
      CP_NFe.CNPJ := empresa.CNPJ;
      CP_NFe.ArquivoServidoresHom := TDir.NFe.nfeservidoreshom;
      CP_NFe.ArquivoServidoresProd := TDir.NFe.nfeservidoresprod;
      CP_NFe.DiretorioEsquemas := TDir.NFe.Esquemas;
      CP_NFe.DiretorioTemplates := TDir.NFe.Templates;
      CP_NFe.DiretorioLog := TDir.NFe.Log;
      CP_NFe.DiretorioLogErro := TDir.NFe.LogErro;
      CP_NFe.DiretorioTemporario := TDir.NFe.Temporario;
      CP_NFe.DiretorioXmlDestinatario := TDir.NFe.Pendentes;
      CP_NFe.DiretorioDownloads := TDir.NFe.Destinadas;
      CP_NFe.TipoCertificado := ckFile;
      if pCertficado.IsEmpty then
        CP_NFe.NomeCertificado.Text := Tparametros_nf.certificado
      else
        CP_NFe.NomeCertificado.Text := pCertficado;
      //CP_NFe.VersaoManual := TVersaoManual.vm50a;
      CP_NFe.VersaoManual := TVersaoManual.vm60;

      DS_NFe.VersaoEsquema := TVersaoEsquema.pl_009;
      CP_NFe.ConexaoSegura := True;
      CP_NFe.ValidarEsquemaAntesEnvio := True;
      CP_NFe.MaxSizeLoteEnvio := 500;
      CP_NFe.AnexarDanfePDF := True;
      CP_NFe.CaracteresRemoverAcentos := 'áéíóúàèìòùâêîôûäëïöüãõñÁÉÍÓÚÀÈÌÒÙÂÊÎÔÛÄËÏÖÜÃÕÑ';

      // [DANFE]
      CP_NFe.DanfeSettings.InfCplMaxCol := 68;
      CP_NFe.DanfeSettings.InfCplMaxRow := 7;
      CP_NFe.DanfeSettings.FraseContingencia := NF_CONTINGENCIA;
      CP_NFe.DanfeSettings.FraseHomologacao := NF_PRODUTO_HOMOLOGACAO;
      CP_NFe.DanfeSettings.ModeloRetrato := TDir.NFe.Danfe.Retrato;
      CP_NFe.DanfeSettings.ModeloPaisagem := TDir.NFe.Danfe.Paisagem;
      CP_NFe.DanfeSettings.QtdeCopias := 1;
      result := True;
    end
    else
    begin
      result := false;
      raise Exception.Create('Não foram encontrados dados cadatrais da empresa e das configurações da NFe modelo 55');
    end;
  except
    on e: Exception do
    begin
      result := false;
      raise Exception.Create(e.message + slinebreak + 'Erro ao configurar componente da NFe!');
    end;
  end;
end;

function TNFe.consultarNFe(pChave: string): string;
begin
  result := CP_NFe.ConsultarNF(pChave);
end;

constructor TNFe.Create(idNFe: integer; const pCertificado: string);
var
  qry: tfdquery;
  str: string;
begin
  inherited Create;
  self.ClearData;

  qry := tdb.simplequery('select * from nfe where id = ?', [idNFe]);

  if qry <> nil then
  begin
    with qry do
    begin
      self.NFe_ID := idNFe;
      self.NFe_Chave := Fieldbyname('CHAVE').asString;
      self.NFe_Numero := Fieldbyname('NUMERO').asString;

      self.Natureza_Op := tnatureza_op.Create(Fieldbyname('ID_NAT_OP').asInteger);

      self.NFe_Caminho_Xml := Fieldbyname('CAMINHO_XML').asString;
      self.NFe_Cod_Venda := Fieldbyname('CODIGO_VENDA').asInteger;
      self.NFe_Lote := Fieldbyname('LOTE').asString;
      self.NFe_Serie := Fieldbyname('SERIE').asString;
      self.NFe_Status_nfe := Fieldbyname('STATUS_NFE').asString;
      self.NFe_Tipo_Emissao := Fieldbyname('TIPO_EMISSAO').asString;
      self.NFe_Tipo_Nfe := Fieldbyname('TIPO_NFE').asString;
      self.NFe_Indicacao_Pagamento := Fieldbyname('INDICACAO_PAGAMENTO').asString;
      self.NFe_Data_emissao := Fieldbyname('DATA_EMISSAO').asExtended;
      self.NFe_Data_transmissao := Fieldbyname('DATA_TRANSMISSAO').asExtended;
      self.NFe_Base_icms := Fieldbyname('BASE_ICMS').asExtended;
      self.NFe_Valor_icms := Fieldbyname('VALOR_ICMS').asExtended;
      self.NFe_Valor_Icms_desonerado := Fieldbyname('ICMS_DESONERADO').asExtended;
      self.NFe_Base_icms_st := Fieldbyname('BASE_ICMS_ST').asExtended;
      self.NFe_Valor_icms_st := Fieldbyname('VALOR_ICMS_ST').asExtended;
      self.NFe_Valor_nfe := Fieldbyname('VALOR_NFE').asExtended;
      self.NFe_Valor_frete := Fieldbyname('VALOR_FRETE').asExtended;
      self.NFe_Valor_seguro := Fieldbyname('VALOR_SEGURO').asExtended;
      self.NFe_Valor_despesas := Fieldbyname('VALOR_DESPESAS').asExtended;
      self.NFe_Valor_desconto := Fieldbyname('VALOR_DESCONTO').asExtended;
      self.NFe_Valor_ii := Fieldbyname('VALOR_II').asExtended;
      self.NFe_Valor_ipi := Fieldbyname('VALOR_IPI').asExtended;
      self.NFe_Valor_pis := Fieldbyname('VALOR_PIS').asExtended;
      self.NFe_Valor_cofins := Fieldbyname('VALOR_COFINS').asExtended;
      self.NFe_Total_nfe := Fieldbyname('TOTAL_NFE').asExtended;
      self.NFe_Valor_pago := Fieldbyname('VALOR_PAGO').asExtended;
      self.NFe_Troco := Fieldbyname('TROCO').asExtended;
      self.NFe_Tipo_frete := Fieldbyname('TIPO_FRETE').asString;
      self.NFe_Observacoes := Fieldbyname('OBSERVACOES').asString;
      self.NFe_Retorno_nfe := Fieldbyname('RETORNO_NFE').asString;
      self.NFe_Erro_rotina := Fieldbyname('ERRO_ROTINA').asString;

      self.Carga := TCarga.Create;

      self.Carga.QUANTIDADE := Fieldbyname('QUANTIDADE_CARGA').asExtended;
      self.Carga.NUMERO_VOLUME := Fieldbyname('NUMERO_VOLUME').asString;
      self.Carga.ESPECIE := Fieldbyname('ESPECIE_CARGA').asString;
      self.Carga.MARCA := Fieldbyname('MARCA_CARGA').asString;
      self.Carga.PESO_BRUTO := Fieldbyname('PESO_BRUTO').asExtended;
      self.Carga.PESO_BRUTO := Fieldbyname('PESO_LIQUIDO').asExtended;

      self.Emitente := TFornecedor.Create(Fieldbyname('ID_EMITENTE').asInteger);
      self.Destinatario := TCliente.Create(Fieldbyname('ID_CLIENTE').asInteger);
      self.Transportador := TTransportador.Create(Fieldbyname('ID_TRANSPORTADOR').asInteger);

      self.CP_NFe := TspdNFe.Create(nil);
      self.DS_NFe := tspdNFeDataSets.Create(nil);

      ConfigurarComponente(pCertificado);
    end;
  end;
  qry := nil;
end;

function TNFe.getNFe_Base_icms: Variant;
begin
  result := TFormats.Money(self.NFe_Base_icms);
end;

function TNFe.getNFe_Base_icms_st: Variant;
begin
  result := TFormats.Money(self.NFe_Base_icms_st);
end;

function TNFe.getNfe_Caminho_Xml: string;
begin
  result := self.NFe_Caminho_Xml;
end;

function TNFe.getNFe_Chave: string;
begin
  result := self.NFe_Chave;
end;

function TNFe.getNFe_Chave_Referenciada: string;
begin
  result := self.NFe_Chave_Referenciada;
end;

function TNFe.getNFe_Cod_Venda: integer;
begin
  result := self.NFe_Cod_Venda;
end;

function TNFe.getNFe_Data_emissao: Variant;
begin
  result := TFormats.datetime(self.NFe_Data_emissao);
end;

function TNFe.getNFe_Data_transmissao: Variant;
begin
  result := TFormats.datetime(self.NFe_Data_transmissao);
end;

function TNFe.getNFe_Erro_rotina: string;
begin
  result := self.NFe_Erro_rotina;
end;

function TNFe.getNFe_Finalidade: integer;
begin
  result := self.NFe_Finalidade;
end;

function TNFe.getNFe_ID: integer;
begin
  result := self.NFe_ID;
end;

function TNFe.getNFe_Indicacao_Pagamento: string;
begin
  result := self.NFe_Indicacao_Pagamento;
end;

function TNFe.getNFe_Lote: String;
begin
  result := self.NFe_Lote;
end;

procedure TNFe.setNFe_base_icms(const value: Variant);
begin
  if tchecks.negative(value) then
    raise Exception.Create(Format('Base do ICMS da NFe [%d] não pode ser negativo!', [self.ID]));

  self.NFe_Base_icms := TFormats.Coin(value);
end;

procedure TNFe.setNFe_base_icms_st(const value: Variant);
begin
  self.NFe_Base_icms_st := TFormats.Coin(value);
end;

procedure TNFe.setNfe_Caminho_Xml(const value: string);
begin
  if value = emptystr then
    raise Exception.Create('Caminho da Xml não pode estar em branco!');

  if not FileExists(value) then
    raise Exception.Create(Format('Não foi possível localizar o caminho específicado [%s]', [value]));

  self.NFe_Caminho_Xml := value;
end;

procedure TNFe.setNFe_Chave(const value: string);
begin
  if value = emptystr then
    raise Exception.Create('Chave da NFe não pode estar em branco!');

  if not tchecks.canstrtonumber(value) then
    raise Exception.Create('Chave da NFe deve conter apenas numéros.');

  if length(value) <> 44 then
    raise Exception.Create('Chave da NFe deve ter 44 dígitos!');

  self.NFe_Chave := value;
end;

procedure TNFe.setNFe_Chave_Referenciada(const value: String);
begin
  if self.NFe_Finalidade <> 1 then
  begin
    if value = emptystr then
      raise Exception.Create('Chave Referênciada da NFe não pode estar em branco!');

    if not tchecks.canstrtonumber(value) then
      raise Exception.Create('Chave Referênciada da NFe deve conter apenas numéros.');

    if length(value) <> 44 then
      raise Exception.Create('Chave Referênciada da NFe deve ter 44 dígitos!');
  end;

  self.NFe_Chave_Referenciada := value;
end;

procedure TNFe.setNFe_Cod_Venda(const value: integer);
begin
  NFe_Cod_Venda := value;
end;

procedure TNFe.setNFe_data_emissao(const value: Variant);
begin
  self.NFe_Data_emissao := value;
end;

procedure TNFe.setNFe_data_transmissao(const value: Variant);
begin
  self.NFe_Data_transmissao := value;
end;

procedure TNFe.setNFe_erro_rotina(const value: string);
begin
  self.NFe_Erro_rotina := value;
end;

procedure TNFe.setNFe_Finalidade(const value: integer);
begin
  if not value in [1, 2, 3, 4] then
    raise Exception.Create(Format('Finalidade [%d] não se aplica para NF. Apenas 1 - Normal, 2 - Complementar, 3 - Ajuste ou 4 - Devolução, são permitidas',
      [value]));

  self.NFe_Finalidade := value;
end;

procedure TNFe.setNFe_indicacao_pagamento(const value: string);
begin
  self.NFe_Indicacao_Pagamento := value;
end;

procedure TNFe.setNFe_Lote(const value: String);
begin
  self.NFe_Lote := value;
end;

function TNFe.getNFe_Numero: string;
begin
  result := self.NFe_Numero;
end;

function TNFe.getNFe_Observacoes: string;
begin
  result := self.NFe_Observacoes;
end;

function TNFe.getNFe_Retorno_nfe: string;
begin
  result := self.NFe_Retorno_nfe
end;

function TNFe.getNFe_Serie: String;
begin
  result := self.NFe_Serie
end;

function TNFe.getNFe_Status_nfe: string;
begin
  result := self.NFe_Status_nfe
end;

function TNFe.getNFe_Tipo_Emissao: string;
begin
  result := self.NFe_Tipo_Emissao
end;

function TNFe.getNFe_Tipo_frete: string;
begin
  result := self.NFe_Tipo_frete;
end;

function TNFe.getNFe_Tipo_Nfe: string;
begin
  result := self.NFe_Tipo_Nfe
end;

function TNFe.getNFe_Total_nfe: Variant;
begin
  result := TFormats.Money(self.NFe_Total_nfe)
end;

function TNFe.getNFe_Troco: Variant;
begin
  result := TFormats.Money(self.NFe_Troco)
end;

function TNFe.getNFe_Valor_cofins: Variant;
begin
  result := TFormats.Money(self.NFe_Valor_cofins)
end;

function TNFe.getNFe_Valor_desconto: Variant;
begin
  result := TFormats.Money(self.NFe_Valor_desconto)
end;

function TNFe.getNFe_Valor_despesas: Variant;
begin
  result := TFormats.Money(self.NFe_Valor_despesas)
end;

function TNFe.getNFe_Valor_frete: Variant;
begin
  result := TFormats.Money(self.NFe_Valor_frete)
end;

function TNFe.getNFe_Valor_icms: Variant;
begin
  result := TFormats.Money(self.NFe_Valor_icms)
end;

function TNFe.getNFe_valor_icms_desonerado: Variant;
begin
  result := TFormats.Money(self.NFe_Valor_Icms_desonerado)
end;

function TNFe.getNFe_Valor_icms_st: Variant;
begin
  result := TFormats.Money(self.NFe_Valor_icms_st)
end;

function TNFe.getNFe_Valor_ii: Variant;
begin
  result := TFormats.Money(self.NFe_Valor_ii)
end;

function TNFe.getNFe_Valor_ipi: Variant;
begin
  result := TFormats.Money(self.NFe_Valor_ipi)
end;

function TNFe.getNFe_Valor_nfe: Variant;
begin
  result := TFormats.Money(self.NFe_Valor_nfe)
end;

function TNFe.getNFe_Valor_pago: Variant;
begin
  result := TFormats.Money(self.NFe_Valor_pago)
end;

function TNFe.getNFe_Valor_pis: Variant;
begin
  result := TFormats.Money(self.NFe_Valor_pis)
end;

function TNFe.getNFe_Valor_seguro: Variant;
begin
  result := TFormats.Money(self.NFe_Valor_seguro)
end;

procedure TNFe.Insert;
var
  id_transportador, id_natureza: string;
begin

  id_natureza := c_globals.DB_NULL;
  if self.Natureza_Op <> nil then
    id_natureza := inttostr(self.Natureza_Op.ID);

  id_transportador := vartostr(TFunctions.IfThen(self.Transportador.ID = 0, c_globals.DB_NULL, self.Transportador.ID));

  tdb.ExecQuery('INSERT INTO NFE' +
    '(NUMERO, CODIGO_VENDA, LOTE, SERIE, CAMINHO_XML, CHAVE, ID_NAT_OP, STATUS_NFE, TIPO_EMISSAO, TIPO_NFE, ID_EMITENTE, ID_CLIENTE,' +
    'DATA_EMISSAO, DATA_TRANSMISSAO, BASE_ICMS, VALOR_ICMS, ICMS_DESONERADO, BASE_ICMS_ST, VALOR_ICMS_ST, VALOR_NFE, VALOR_FRETE, VALOR_SEGURO,' +
    'VALOR_DESPESAS, VALOR_DESCONTO, VALOR_II, VALOR_IPI, VALOR_PIS, VALOR_COFINS, TOTAL_NFE, VALOR_PAGO, TROCO, TIPO_FRETE,' +
    'ID_TRANSPORTADOR, QUANTIDADE_CARGA, NUMERO_VOLUME, ESPECIE_CARGA, MARCA_CARGA, PESO_LIQUIDO, PESO_BRUTO, OBSERVACOES, RETORNO_NFE, ERRO_ROTINA, CHAVE_REFERENCIADA)'
    + ' Values(?, ?, ?, ?, ?, ?, ' + id_natureza + ', ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ' + id_transportador +
    ', ?, ?, ?, ?, ?, ?, ?, ?, ?, ?)', [self.NFe_Numero, self.NFe_Cod_Venda, self.NFe_Lote, self.NFe_Serie, self.NFe_Caminho_Xml, self.NFe_Chave,
    self.NFe_Status_nfe, self.NFe_Tipo_Emissao, self.NFe_Tipo_Nfe, self.Emitente.ID, self.Destinatario.ID, self.NFe_Data_emissao,
    self.NFe_Data_transmissao, self.NFe_Base_icms, self.NFe_Valor_icms, self.NFe_Valor_Icms_desonerado, self.NFe_Base_icms_st, self.NFe_Valor_icms_st,
    self.NFe_Valor_nfe, self.NFe_Valor_frete, self.NFe_Valor_seguro, self.NFe_Valor_despesas, self.NFe_Valor_desconto, self.NFe_Valor_ii, self.NFe_Valor_ipi,
    self.NFe_Valor_pis, self.NFe_Valor_cofins, self.NFe_Total_nfe, self.NFe_Valor_pago, self.NFe_Troco, self.NFe_Tipo_frete, self.Carga.NFe_Carga_Quantidade,
    self.Carga.Nfe_Carga_Num_Volume, self.Carga.NFe_Carga_Especie, self.Carga.NFe_Carga_Marca, self.Carga.NFe_Carga_Peso_liquido,
    self.Carga.NFe_Carga_Peso_bruto, self.NFe_Observacoes, self.NFe_Retorno_nfe, self.NFe_Erro_rotina, self.NFe_Chave_Referenciada]);

  self.NFe_ID := self.Select(['NUMERO', 'CODIGO_VENDA', 'SERIE', 'CHAVE', 'STATUS_NFE', 'TIPO_EMISSAO', 'TIPO_NFE', 'ID_EMITENTE', 'ID_CLIENTE', 'DATA_EMISSAO',
    'DATA_TRANSMISSAO', 'CHAVE_REFERENCIADA'], [self.NFe_Numero, self.NFe_Cod_Venda, self.NFe_Serie, self.NFe_Chave, self.NFe_Status_nfe, self.NFe_Tipo_Emissao,
    self.NFe_Tipo_Nfe, self.Emitente.ID, self.Destinatario.ID, self.NFe_Data_emissao, self.NFe_Data_transmissao, self.NFe_Chave_Referenciada]).Fieldbyname('ID')
    .asInteger;
end;

procedure TNFe.setNFe_Numero(

  const value: string);
begin
  if value = emptystr then
    raise Exception.Create('Número da NFe não pode estar em branco.');

  if not tchecks.canstrtonumber(value) then
    raise Exception.Create('Número da NFe deve conter apenas numéros.');

  if strtofloat(value) = 0 then
    raise Exception.Create('Número da NFe não pode ser 0.');

  if (comparevalue(strtofloat(value), 999999999) = 1) or (comparevalue(strtofloat(value), 1) = -1) then
    raise Exception.Create('Número da NFe deve estar entre 1 e 999.999.999.');

  self.NFe_Numero := value;
end;

procedure TNFe.setNFe_observacoes(const value: string);
begin
  self.NFe_Observacoes := value;
end;

procedure TNFe.setNFe_retorno_nfe(const value: string);
begin
  self.NFe_Retorno_nfe := value;
end;

procedure TNFe.setNFe_Serie(const value: String);
begin
  if not tchecks.canstrtonumber(value) then
    raise Exception.Create(Format('Série [%s] da NFe [%d] é inválido.', [value, self.ID]));

  self.NFe_Serie := value;
end;

procedure TNFe.setNFe_Status_nfe(const value: string);
begin
  if not ansimatchstr(value, ['AUTORIZADA', 'CANCELADA', 'INUTILIZADA', 'PENDENTE']) then
    raise Exception.Create(Format('Status [%s] Não é Permitido Para Nota Fiscal.', [value]));
  self.NFe_Status_nfe := value;
end;

procedure TNFe.setNFe_tipo_emissao(const value: string);
begin
  if not ansimatchstr(value, ['1', '2', '3', '4', '5', '6', '7', '9']) then
    raise Exception.Create(Format('O tipo de emissão [%s] da NFe [%d] é inválido.', [value, self.ID]));
  self.NFe_Tipo_Emissao := TFunctions.IfThen(value = '1', 'NORMAL', 'CONTINGENCIA');
end;

procedure TNFe.setNFe_tipo_frete(const value: string);
begin
  self.NFe_Tipo_frete := value;
end;

procedure TNFe.setNFe_tipo_nfe(const value: string);
begin
  if not ansimatchstr(value, ['0', '1']) then
    raise Exception.Create(Format('O tipo [%s] da NFe [%d] é inválido.', [value, self.ID]));
  self.NFe_Tipo_Nfe := TFunctions.IfThen(value = '0', 'ENTRADA', 'SAIDA');
end;

procedure TNFe.setNFe_total_nfe(const value: Variant);
begin
  if tchecks.negative(value) then
    raise Exception.Create(Format('Total da NFe [%d] não pode ser negativo!', [self.ID]));
  self.NFe_Total_nfe := TFormats.Coin(value);
end;

procedure TNFe.setNFe_troco(const value: Variant);
begin
  if tchecks.negative(value) then
    raise Exception.Create(Format('Troco da NFe [%d] não pode ser negativo!', [self.ID]));
  self.NFe_Troco := TFormats.Coin(value);
end;

procedure TNFe.setNFe_valor_cofins(const value: Variant);
begin
  if tchecks.negative(value) then
    raise Exception.Create(Format('Valor da COFINS da NFe [%d] não pode ser negativo!', [self.ID]));
  self.NFe_Valor_cofins := TFormats.Coin(value);
end;

procedure TNFe.setNFe_valor_desconto(const value: Variant);
begin
  if tchecks.negative(value) then
    raise Exception.Create(Format('Valor do desconto da NFe [%d] não pode ser negativo!', [self.ID]));
  self.NFe_Valor_desconto := TFormats.Coin(value);
end;

procedure TNFe.setNFe_valor_despesas(const value: Variant);
begin
  if tchecks.negative(value) then
    raise Exception.Create(Format('Valor das depesas da NFe [%d] não pode ser negativo!', [self.ID]));
  self.NFe_Valor_despesas := TFormats.Coin(value);
end;

procedure TNFe.setNFe_valor_frete(const value: Variant);
begin
  if tchecks.negative(value) then
    raise Exception.Create(Format('Valor do frete da NFe [%d] não pode ser negativo!', [self.ID]));
  self.NFe_Valor_frete := TFormats.Coin(value);
end;

procedure TNFe.setNFe_valor_icms(const value: Variant);
begin
  if tchecks.negative(value) then
    raise Exception.Create(Format('Valor do ICMS da NFe [%d] não pode ser negativo!', [self.ID]));
  self.NFe_Valor_icms := TFormats.Coin(value);
end;

procedure TNFe.setNFe_valor_icms_desonerado(const value: Variant);
begin
  if tchecks.negative(value) then
    raise Exception.Create(Format('Valor do ICMS Desonerado da NFe [%d] não pode ser negativo!', [self.ID]));
  self.NFe_Valor_Icms_desonerado := TFormats.Coin(value);
end;

procedure TNFe.setNFe_valor_icms_st(const value: Variant);
begin
  if tchecks.negative(value) then
    raise Exception.Create(Format('Valor do ICMS ST da NFe [%d] não pode ser negativo!', [self.ID]));
  self.NFe_Valor_icms_st := TFormats.Coin(value);
end;

procedure TNFe.setNFe_valor_ii(const value: Variant);
begin
  if tchecks.negative(value) then
    raise Exception.Create(Format('Valor do II da NFe [%d] não pode ser negativo!', [self.ID]));
  self.NFe_Valor_ii := TFormats.Coin(value);
end;

procedure TNFe.setNFe_valor_ipi(const value: Variant);
begin
  if tchecks.negative(value) then
    raise Exception.Create(Format('Valor do IPI da NFe [%d] não pode ser negativo!', [self.ID]));
  self.NFe_Valor_ipi := TFormats.Coin(value);
end;

procedure TNFe.setNFe_valor_nfe(const value: Variant);
begin
  if tchecks.negative(value) then
    raise Exception.Create(Format('Valor da NFe [%d] não pode ser negativo!', [self.ID]));
  self.NFe_Valor_nfe := TFormats.Coin(value);
end;

procedure TNFe.setNFe_valor_pago(const value: Variant);
begin
  if tchecks.negative(value) then
    raise Exception.Create(Format('valor pago da NFe [%d] não pode ser negativo!', [self.ID]));
  self.NFe_Valor_pago := TFormats.Coin(value);
end;

procedure TNFe.setNFe_valor_pis(const value: Variant);
begin
  if tchecks.negative(value) then
    raise Exception.Create(Format('Valor do PIS da NFe [%d] não pode ser negativo!', [self.ID]));
  self.NFe_Valor_pis := TFormats.Coin(value);
end;

procedure TNFe.setNFe_valor_seguro(const value: Variant);
begin
  if tchecks.negative(value) then
    raise Exception.Create(Format('Valor do seguro da NFe [%d] não pode ser negativo!', [self.ID]));
  self.NFe_Valor_seguro := TFormats.Coin(value);
end;

procedure TNFe.Update(pUk: c_globals.tupdatekind = ukHard);
begin

  case pUk of

    uksoft:
      begin
        //
      end;

    ukHard:
      begin
        tdb.ExecQuery('UPDATE NFE SET NUMERO=?, CODIGO_VENDA=?, LOTE=?, SERIE=?, CAMINHO_XML=?, CHAVE=?, ID_NAT_OP=?, STATUS_NFE=?, TIPO_EMISSAO=?,' +
          'TIPO_NFE=?, INDICACAO_PAGAMENTO=?, ID_EMITENTE=?, ID_CLIENTE=?, DATA_EMISSAO=?, DATA_TRANSMISSAO=?, BASE_ICMS=?, VALOR_ICMS=?, ICMS_DESONERADO=?,' +
          'BASE_ICMS_ST=?, VALOR_ICMS_ST=?, VALOR_NFE=?, VALOR_FRETE=?, VALOR_SEGURO=?, VALOR_DESPESAS=?, VALOR_DESCONTO=?, VALOR_II=?, VALOR_IPI=?,' +
          'VALOR_PIS=?, VALOR_COFINS=?, TOTAL_NFE=?, VALOR_PAGO=?, TROCO=?, TIPO_FRETE=?, ID_TRANSPORTADOR=?, QUANTIDADE_CARGA=?, ESPECIE_CARGA=?,' +
          'NUMERO_VOLUME=?, PESO_LIQUIDO=?,  PESO_BRUTO=?, OBSERVACOES=?, RETORNO_NFE=?, ERRO_ROTINA = ? where ID = ?',
          [self.NFe_Numero, self.NFe_Cod_Venda, self.NFe_Lote, self.NFe_Serie, self.NFe_Caminho_Xml, self.NFe_Chave, self.Natureza_Op.ID, self.NFe_Status_nfe,
          self.NFe_Tipo_Emissao, self.NFe_Tipo_Nfe, self.NFe_Indicacao_Pagamento, self.Emitente.ID, self.Destinatario.ID, self.NFe_Data_emissao,
          self.NFe_Data_transmissao, self.NFe_Base_icms, self.NFe_Valor_icms, self.NFe_Valor_Icms_desonerado, self.NFe_Base_icms_st, self.NFe_Valor_icms_st,
          self.NFe_Valor_nfe, self.NFe_Valor_frete, self.NFe_Valor_seguro, self.NFe_Valor_despesas, self.NFe_Valor_desconto, self.NFe_Valor_ii,
          self.NFe_Valor_ipi, self.NFe_Valor_pis, self.NFe_Valor_cofins, self.NFe_Total_nfe, self.NFe_Valor_pago, self.NFe_Troco, self.NFe_Tipo_frete,
          self.Transportador.ID, self.Carga.NFe_Carga_Quantidade, self.Carga.Nfe_Carga_Num_Volume, self.Carga.NFe_Carga_Especie,
          self.Carga.NFe_Carga_Peso_liquido, self.Carga.NFe_Carga_Peso_bruto, self.NFe_Observacoes, self.NFe_Retorno_nfe, self.NFe_Erro_rotina, self.ID]);
      end;
  end;
end;

class procedure TNFe.VisualizarDanfe(pCaminho_xml: string);
begin
  (TNFe.Create).CP_NFe.VisualizarDanfe('0', TFunctions.LoadContent(pCaminho_xml));
end;

procedure TNFe.LoadDataToNF(const pDataSet: tspdNFeDataSets; path_xml: string; PImportacao: Tobject);
var
  xItem: TImportacao.TItem;
  mod_aliq, new_path_xml: string;
  produto: tproduto;
  qry: tfdquery;
  NCM_CEST: TNcm;
begin
  TFunctions.configureSSLTTL;
  with pDataSet do
  begin
    self.NUMERO := campo('nNF_B08').asString;
    self.CHAVE := TFunctions.replace(campo('Id_A03').asString, 'NFe');

    qry := tdb.simplequery
      ('select * from importacao where status_importacao <> "CANCELADA" and id_nfe = (select id from nfe where chave = ? order by id desc limit 1) order by id desc limit 1',
      [self.CHAVE]);

    if qry <> nil then
      raise Exception.Create('Uma importação para a chave ' + self.CHAVE + ' foi iniciada no dia ' + formatdatetime('dd/mm/yy',
        qry.Fieldbyname('data_inicio').AsDateTime) + ' e está com status de "' + qry.Fieldbyname('status_importacao').asString + '" no sistema!');

    new_path_xml := TFile.rename(path_xml, extractfilepath(path_xml) + self.CHAVE + extXMLAutorizada);
    self.SERIE := campo('serie_B07').asString;
    self.DATA_EMISSAO := TNF_Formats.Date(campo('dhEmi_B09').asString);
    self.DATA_TRANSMISSAO := TNF_Formats.Date(campo('dhSaiEnt_B10').asString);
    self.TIPO_EMISSAO := campo('tpEmis_B22').asString;
    self.FINALIDADE := campo('finNFe_B25').asInteger;
    self.TIPO_NFE := '0'; // entrada;
    self.TIPO_FRETE := campo('modFrete_X02').asString;
    self.CHAVE_REFERENCIADA := campo('refNFe_BA02').asString;

    self.BASE_ICMS := TNF_Formats.Decimal(campo('vBC_W03').asString);
    self.VALOR_ICMS := TNF_Formats.Decimal(campo('vICMS_W04').asString);
    self.VALOR_ICMS_DESONERADO := TNF_Formats.Decimal(campo('vICMSDeson_W04a').asString);
    self.BASE_ICMS_ST := TNF_Formats.Decimal(campo('vBCST_W05').asString);
    self.VALOR_ICMS_ST := TNF_Formats.Decimal(campo('vST_W06').asString);
    self.VALOR_NFE := TNF_Formats.Decimal(campo('vProd_W07').asString);
    self.VALOR_FRETE := TNF_Formats.Decimal(campo('vFrete_W08').asString);
    self.VALOR_SEGURO := TNF_Formats.Decimal(campo('vSeg_W09').asString);
    self.VALOR_DESCONTO := TNF_Formats.Decimal(campo('vDesc_W10').asString);
    self.VALOR_II := TNF_Formats.Decimal(campo('vII_W11').asString);
    self.VALOR_IPI := TNF_Formats.Decimal(campo('vIPI_W12').asString);
    self.VALOR_PIS := TNF_Formats.Decimal(campo('vPis_W13').asString);
    self.VALOR_COFINS := TNF_Formats.Decimal(campo('vCofins_W14').asString);
    self.VALOR_DESPESAS := TNF_Formats.Decimal(campo('vOutro_W15').asString);
    self.TOTAL_NFE := TNF_Formats.Decimal(campo('vNF_W16').asString);

    self.VALOR_PAGO := 0;

    self.TROCO := 0;
    self.OBSERVACOES := campo('infAdFisco_Z02').asString + '|' + campo('infCpl_Z03').asString;
    self.RETORNO_NFE := 'NF de entrada autorizada';
    self.ERRO_ROTINA := 'NENHUM';
    self.CAMINHO_XML := TFunctions.IfThen(new_path_xml = '', TNF_Func.getPathEntrada(CHAVE), new_path_xml);
    self.STATUS_NFE := 'AUTORIZADA';

    self.Emitente.CNPJ := campo('CNPJ_C02').asString;
    self.Emitente.RAZAO_SOCIAL := campo('xNome_C03').asString;
    self.Emitente.NOME_FANTASIA := campo('xFant_C04').asString;
    self.Emitente.LOGRADOURO := campo('xLgr_C06').asString;
    self.Emitente.NUMERO := campo('nro_C07').asString;
    self.Emitente.BAIRRO := campo('xBairro_C09').asString;
    self.Emitente.COD_MUNICIPIO := campo('cMun_C10').asString;
    self.Emitente.MUNICIPIO := campo('xMun_C11').asString;
    self.Emitente.UF := campo('UF_C12').asString;
    self.Emitente.CEP := campo('CEP_C13').asString;
    self.Emitente.COD_PAIS := campo('cPais_C14').asString;
    self.Emitente.PAIS := campo('xPais_C15').asString;
    self.Emitente.TELEFONE := campo('fone_C16').asString;
    self.Emitente.IE := campo('IE_C17').asString;
    self.Emitente.IM := campo('IM_C19').asString;
    self.Emitente.CNAE := campo('CNAE_C20').asString;
    self.Emitente.CRT := campo('CRT_C21').asString;
    self.Emitente.Salvar(uksoft);

    self.Destinatario.CNPJ := campo('CNPJ_E02').asString;
    self.Destinatario.CPF := campo('CPF_E03').asString;
    self.Destinatario.IE := campo('IE_E17').asString;
    self.Destinatario.RAZAO_SOCIAL := campo('xNome_E04').asString;
    self.Destinatario.LOGRADOURO := campo('xLgr_E06').asString;
    self.Destinatario.NUMERO := campo('nro_E07').asString;
    self.Destinatario.BAIRRO := campo('xBairro_E09').asString;
    self.Destinatario.COD_MUNICIPIO := campo('cMUN_E10').asString;
    self.Destinatario.MUNICIPIO := campo('xMun_E11').asString;
    self.Destinatario.UF := campo('UF_E12').asString;
    self.Destinatario.CEP := campo('CEP_E13').asString;
    self.Destinatario.PAIS := campo('xPais_E15').asString;
    self.Destinatario.TELEFONE := campo('fone_E16').asString;

    self.Transportador.CNPJ := campo('CNPJ_X04').asString;
    self.Transportador.CPF := campo('CPF_X05').asString;
    self.Transportador.RAZAO := campo('XNome_X06').asString;
    self.Transportador.IE := campo('IE_X07').asString;
    self.Transportador.ENDERECO := campo('xEnder_X08').asString;
    self.Transportador.MUNICIPIO := campo('xMun_X09').asString;
    self.Transportador.UF := campo('UF_X10').asString;
    self.Transportador.Salvar;

    self.Carga.QUANTIDADE := TNF_Formats.Decimal(campo('qVol_X27').asString);
    self.Carga.ESPECIE := campo('esp_X28').asString;
    self.Carga.MARCA := campo('marca_X29').asString;
    self.Carga.NUMERO_VOLUME := campo('nVol_X30').asString;
    self.Carga.PESO_BRUTO := TNF_Formats.Decimal(campo('pesoB_X32').asString);
    self.Carga.PESO_LIQUIDO := TNF_Formats.Decimal(campo('pesoL_X31').asString);

    self.SalvarNF;

    (PImportacao as TImportacao).NFe := self;
    (PImportacao as TImportacao).Natureza_Op := campo('natOp_B04').asString;
    h.First;
    while not h.Eof do
    begin

      xItem := TImportacao.TItem.Create;

      xItem.ID_NFE := self.ID;
      xItem.ID_IMPORTACAO := (PImportacao as TImportacao).ID;

      xItem.COD_ITEM := h.Fieldbyname('nItem_H02').value;
      xItem.CODIGO := I.Fieldbyname('cProd_I02').asString;
      xItem.DESCRICAO := I.Fieldbyname('xProd_I04').asString;
      xItem.CFOP := I.Fieldbyname('CFOP_I08').asString;
      xItem.UM := I.Fieldbyname('uCom_I09').asString;
      xItem.COD_BARRAS := I.Fieldbyname('cEAN_I03').asString;
      xItem.QTDE := TNF_Formats.Decimal(I.Fieldbyname('qCom_I10').asString);
      xItem.PRECO_UNI := TNF_Formats.Decimal(I.Fieldbyname('vUnCom_I10a').asString);

      xItem.DESCONTO := TNF_Formats.Decimal(I.Fieldbyname('vDesc_I17').asString);
      xItem.ACRESCIMOS := TNF_Formats.Decimal(I.Fieldbyname('vOutro_I17a').asString);

      xItem.VALOR_TOTAL := TNF_Formats.Decimal(I.Fieldbyname('vProd_I11').asString) - TNF_Formats.Decimal(I.Fieldbyname('vDesc_I17').asString) +
        TNF_Formats.Decimal(I.Fieldbyname('vOutro_I17a').asString);

      xItem.ORIGEM := N.Fieldbyname('orig_N11').asString;
      xItem.NCM := I.Fieldbyname('NCM_I05').asString;
      xItem.CEST := I.Fieldbyname('CEST_I05c').asString;

      if xItem.CEST = '' then
      begin

        NCM_CEST := TNcm.get(['ncm'], [xItem.NCM]);
        if NCM_CEST <> nil then
          if NCM_CEST.CEST <> '' then
            xItem.CEST := NCM_CEST.CEST;

      end;

      xItem.CSOSN := N.Fieldbyname('CSOSN_N12a').asString;
      xItem.CST_ICMS := N.Fieldbyname('CST_N12').asString;

      if (xItem.CSOSN = '') and (xItem.CST_ICMS <> '') then
        xItem.CSOSN := ticms.Create(xItem.CST_ICMS).CSOSN
      else if (xItem.CST_ICMS = '') and (xItem.CSOSN <> '') then
        xItem.CST_ICMS := TCsosn.Create(xItem.CSOSN).CST_ICMS;

      xItem.BASE_ICMS := TNF_Formats.Decimal(N.Fieldbyname('vBC_N15').asString);
      xItem.ALIQ_ICMS := TNF_Formats.Decimal(N.Fieldbyname('pICMS_N16').asString);
      xItem.TOTAL_ICMS := TNF_Formats.Decimal(N.Fieldbyname('vICMS_N17').asString);

      xItem.CST_PIS := q.Fieldbyname('CST_Q06').asString;
      xItem.BASE_PIS := TNF_Formats.Decimal(q.Fieldbyname('vBC_Q07').asString);
      xItem.ALIQ_PIS := TNF_Formats.Decimal(q.Fieldbyname('pPis_Q08').asString);
      xItem.TOTAL_PIS := TNF_Formats.Decimal(q.Fieldbyname('vPis_Q09').asString);

      xItem.CST_COFINS := s.Fieldbyname('CST_S06').asString;
      xItem.BASE_COFINS := TNF_Formats.Decimal(s.Fieldbyname('vBC_S07').asString);
      xItem.ALIQ_COFINS := TNF_Formats.Decimal(s.Fieldbyname('pCOFINS_S08').asString);
      xItem.TOTAL_COFINS := TNF_Formats.Decimal(s.Fieldbyname('vCOFINS_S11').asString);

      xItem.CST_IPI := o.Fieldbyname('CST_O09').asString;
      xItem.ENQUADRAMENTO_IPI := o.Fieldbyname('cEnq_O06').asString;
      xItem.BASE_IPI := TNF_Formats.Decimal(o.Fieldbyname('vBC_O10').asString);
      xItem.ALIQ_IPI := TNF_Formats.Decimal(o.Fieldbyname('pIPI_O13').asString);
      xItem.TOTAL_IPI := TNF_Formats.Decimal(o.Fieldbyname('vIPI_O14').asString);

      xItem.DESTINO := '0';
      xItem.Insert;

      xItem.DESTINO := '1';
      xItem.CODIGO := ' - - - ';
      xItem.PRECO_VENDA := xItem.PRECO_UNI;
      xItem.TIPO := '00';

      if xItem.COD_BARRAS <> '' then
      begin
        produto := tproduto.get(['PROD_EAN'], [xItem.COD_BARRAS]);
        if produto <> nil then
        begin

          xItem.CODIGO := produto.PROD_CODIGO;
          xItem.DESCRICAO := produto.DESCRICAO;
          xItem.MARCA := produto.MARCA;
          xItem.TIPO := produto.TIPO_ITEM;
          xItem.UM := produto.UNIDADE;

          xItem.DESPESAS_OPERACIONAIS := produto.DESP_OPERARCIONAIS;
          xItem.COMISSAO := produto.COMISSAO_BALCAO_VAREJO;
          xItem.MARGEM_LUCRO := produto.MARGEM_LUCRO_VAREJO;
          xItem.DESC_MAXIMO := produto.DESCONTO_M_VAREJO;
          xItem.PRECO_VENDA := produto.PRECO_FINAL_VAREJO;

          xItem.CST_ICMS := produto.ICMS_CST;
          xItem.CST_PIS := produto.PIS_CST;
          xItem.CST_COFINS := produto.COFINS_CST;
          xItem.CSOSN := '';//produto.CSOSN;
          xItem.EDITADO := '1';

        end;
      end;

      xItem.Insert;

      xItem := nil;

      h.Next;
    end;
  end;
end;

procedure TNFe.LoadDataToNF(const pQRY_NFe, pQRY_NFe_Itens, pQRY_NFe_Pagamentos: tfdquery);
begin
end;

function TNFe.manifestarNFe(codEvento: integer; chave_nfe, obs: string): string;
begin
  try

    if chave_nfe.IsEmpty then
      raise Exception.Create('Chave da Nota Fiscal deve ser informada para realizar um Manifesto ao Destinatário!');

    if obs.IsEmpty then
      obs := getManifestoPadrao(codEvento);

    if not(codEvento in [1, 2, 3, 4]) then
      raise Exception.Create('Código "' + inttostr(codEvento) + '" inválido para o Manifesto do Destinatário. Códigos válidos [1,2,3,4]!');

    result := CP_NFe.EnviarManifestacaoDestinatario(codEvento, chave_nfe, TEmpresa.Create.CNPJ, obs, tnf_unformats.Date(now, false), 1, '-04:00', '91');

  except
    on e: Exception do
      raise Exception.Create(e.message);

  end;

end;

procedure TNFe.RecarregarNatOp;
begin
  self.Natureza_Op := tnatureza_op.Create(Select(self.ID).Fieldbyname('id_nat_op').asInteger);
end;

procedure TNFe.SalvarNF;
begin
  if (self.ID = 0) then
    self.Insert
  else
    self.Update;
end;

function TNFe.Select(FieldNames: array of String; const Values: array of Variant): tfdquery;
begin
  result := tdb.simplequery('SELECT * FROM NFE' + tdb.GenWhere(FieldNames), Values);
end;

function TNFe.Select(const pID: integer): tfdquery;
begin
  result := self.Select(['ID'], [pID]);
end;

{ TNFe.TCarga }

function TNFe.TCarga.getNFe_Carga_Marca: string;
begin
  result := self.NFe_Carga_Marca
end;

function TNFe.TCarga.getNFe_Carga_Peso_bruto: Extended;
begin
  result := self.NFe_Carga_Peso_bruto
end;

function TNFe.TCarga.getNFe_Carga_Peso_liquido: Extended;
begin
  result := self.NFe_Carga_Peso_liquido
end;

function TNFe.TCarga.getNFe_Carga_Quantidade: Extended;
begin
  result := self.NFe_Carga_Quantidade
end;

function TNFe.TCarga.getNfe_Carga_Num_Volume: string;
begin
  result := self.Nfe_Carga_Num_Volume;
end;

procedure TNFe.TCarga.ClearData;
begin
  self.NFe_Carga_Quantidade := 0;
  self.NFe_Carga_Especie := '';
  self.NFe_Carga_Marca := '';
  self.Nfe_Carga_Num_Volume := '';
  self.NFe_Carga_Peso_liquido := 0;
  self.NFe_Carga_Peso_bruto := 0;
end;

function TNFe.TCarga.getNFe_Carga_Especie: string;
begin
  result := self.NFe_Carga_Especie
end;

procedure TNFe.TCarga.setNFe_Carga_Marca(const value: string);
begin
  self.NFe_Carga_Marca := TFormats.uc(value)
end;

procedure TNFe.TCarga.setNfe_Carga_Num_Volume(const value: string);
begin
  self.Nfe_Carga_Num_Volume := value;
end;

procedure TNFe.TCarga.setNFe_Carga_Peso_bruto(const value: Extended);
begin
  if tchecks.negative(value) then
    raise Exception.Create(Format('Peso bruto da carga [%s] não pode ser negativo!', [self.NFe_Carga_Marca]));

  self.NFe_Carga_Peso_bruto := TFormats.Coin(value, 4)
end;

procedure TNFe.TCarga.setNFe_Carga_Peso_liquido(const value: Extended);
begin
  if tchecks.negative(value) then
    raise Exception.Create(Format('Peso liquido [%s] não pode ser negativo!', [self.NFe_Carga_Marca]));
  self.NFe_Carga_Peso_liquido := TFormats.Coin(value, 4)
end;

procedure TNFe.TCarga.setNFe_Carga_Quantidade(const value: Extended);
begin
  if tchecks.negative(value) then
    raise Exception.Create(Format('Quantidade da carga [%s] não pode ser negativo!', [self.NFe_Carga_Marca]));
  self.NFe_Carga_Quantidade := TFormats.Coin(value, 4)
end;

procedure TNFe.TCarga.setNFe_Carga_Especie(const value: string);
begin
  self.NFe_Carga_Especie := TFormats.uc(value)
end;

{ TNFe.TNFe_Destinada }

procedure TNFe.TNFe_Destinada.ClearData;
begin
  DFe_id := 0;
  DFe_Fornecedor := '';
  DFe_Cnpj := '';
  DFe_Data_Emissao := 0;
  DFe_previsao_entrega := 0;
  DFe_valor := 0;
  DFe_chave := '';
  DFe_Observacoes := '';
  DFe_Nfe_Importada := false;
end;

function TNFe.TNFe_Destinada.getDFe_chave: string;
begin
  result := self.DFe_chave;
end;

function TNFe.TNFe_Destinada.getDFe_Cnpj: string;
begin
  result := self.DFe_Cnpj;
end;

function TNFe.TNFe_Destinada.getDFe_Data_Emissao: TDateTime;
begin
  result := self.DFe_Data_Emissao;
end;

function TNFe.TNFe_Destinada.getDFe_Fornecedor: string;
begin
  result := self.DFe_Fornecedor;
end;

function TNFe.TNFe_Destinada.getDFe_id: integer;
begin
  result := self.DFe_id;
end;

function TNFe.TNFe_Destinada.getDFe_Observacoes: string;
begin
  result := self.DFe_Observacoes;
end;

function TNFe.TNFe_Destinada.getDFe_previsao_entrega: tdate;
begin
  result := self.DFe_previsao_entrega;
end;

function TNFe.TNFe_Destinada.getDFe_Nfe_Importada: boolean;
begin
  result := self.DFe_Nfe_Importada;
end;

function TNFe.TNFe_Destinada.getDFe_valor: Extended;
begin
  result := self.DFe_valor;
end;

procedure TNFe.TNFe_Destinada.setDFe_chave(value: string);
begin
  if value = '' then
    raise Exception.Create('Chave da nota destinada, deve ser informada!');

  self.DFe_chave := value
end;

procedure TNFe.TNFe_Destinada.setDFe_Cnpj(value: string);
begin
  if value = '' then
    raise Exception.Create('CNPJ da nota destinada, deve ser informado!');

  self.DFe_Cnpj := value
end;

procedure TNFe.TNFe_Destinada.setDFe_Data_Emissao(value: TDateTime);
begin
  if value = nulldate then
    raise Exception.Create('Data de Emissão da nota destinada, Chave deve ser informada!');

  self.DFe_Data_Emissao := value
end;

procedure TNFe.TNFe_Destinada.setDFe_Fornecedor(value: string);
begin
  if value = '' then
    raise Exception.Create('Fornecedor da nota destinada, deve ser informada!');

  self.DFe_Fornecedor := value
end;

procedure TNFe.TNFe_Destinada.setDFe_Observacoes(value: string);
begin
  self.DFe_Observacoes := value
end;

procedure TNFe.TNFe_Destinada.setDFe_previsao_entrega(value: tdate);
begin
  self.DFe_previsao_entrega := value
end;

procedure TNFe.TNFe_Destinada.setDFe_Nfe_Importada(value: boolean);
begin
  self.DFe_Nfe_Importada := value
end;

procedure TNFe.TNFe_Destinada.setDFe_valor(value: Extended);
begin
  if tchecks.lessequals(value, 0) then
    raise Exception.Create('Valor da nota destinada, deve ser informado!');

  self.DFe_valor := value
end;

end.
