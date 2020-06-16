//Verificado automaticamente em 16/06/2020 09:28
unit m_Importacao;
{
========================================================================================================================================
ALT|   DATA |HORA |UNIT                        |Descrição                                                                              |
---|--------|-----|----------------------------|----------------------------------------------------------------------------------------
325|15/06/20|13:35|m_Importacao                |Passa a tratar PRODUTO_PROD(PROD_EAN)    ao invés de PRODUTO(CODIGO_BARRAS)
305|15/06/20|10:14|m_Importacao                |Passa a tratar PRODUTO_PROD(PROD_CODIGO) ao invés de PRODUTO(CODIGO)
========================================================================================================================================
}

interface

uses system.sysutils, system.strutils, system.variants, h_db,
  Firedac.comp.client, dialogs, h_Checks, I_Crud, h_Functions, h_Formats, c_Globals, m_Natureza_Op, v_env, m_Usuario, m_NFe, m_ICMS, m_pis, m_Cofins, m_Csosn, m_Cfop;

type
  TImportacao = class(TInterfacedObject, ICrud)
  private
    Im_Id: integer;
    Im_Data_Inicio: TDateTime;
    Im_Data_Fim: TDateTime;
    Im_Natureza_Op: String;
    Im_Status: String;
    Im_NFe: TNFe;

    function getId: integer;
    function getDataInicio: Variant;
    function getDataFim: Variant;
    function getNatureza_Op: String;
    function getStatus_Importacao: String;
    function getNfe: TNFe;

    procedure setNfe(const Value: TNFe);
    procedure setNatureza_Op(const Value: String);

    // Inner Model Methods
    procedure ClearData;

    // Crud Base Operations

    procedure Insert;
    procedure Delete(const pID: integer);
    procedure Update(pUk: TUpdateKind = ukHard);
    function Select(FieldNames: array of String; const Values: array of Variant): tfdquery; overload;
    function Select(const pID: integer): tfdquery; overload;

  PUBLIC
    // Read Properties
    property ID: integer read getId;
    property STATUS_IMPORTACAO: String read getStatus_Importacao;
    property DATA_FIM: Variant read getDataFim;
    property DATA_INICIO: Variant read getDataInicio;

    // Read and Write
    property NATUREZA_OP: string read getNatureza_Op write setNatureza_Op;
    property NFe: TNFe read getNfe write setNfe;

    // Methods
    constructor create(idImportacao: integer); overload;
    procedure Iniciar;
    procedure Finalizar;
    procedure Cancelar;
    procedure Pausar;
    procedure Remover;
    procedure Retomar;
    procedure DesfazerAlteracoesItens;
    procedure ItemEditado(codItem: integer);
    procedure VincularItem(codProduto, codItem: integer);
    procedure AtualizarCFOPItens(pk_item: integer = 0);

  Type
    TItem = class(TInterfacedObject, ICrud)
    private
      Im_It_Id: integer;
      Im_It_Id_Importacao: integer;
      Im_It_Id_nfe: integer;
      Im_It_Codigo: string;
      Im_It_Descricao: string;
      Im_It_Item: integer;
      Im_It_Destino: String;
      Im_It_Cod_Barras: String;
      Im_It_Marca: String;
      Im_It_UM: String;
      Im_It_Qtde: extended;
      Im_It_Preco_Uni: extended;
      Im_It_Desconto: extended;
      Im_It_Acrescimos: extended;
      Im_It_Valor_Total: Variant;
      Im_It_cst_icms: string;
      Im_It_aliq_icms: Variant;
      Im_It_base_icms: Variant;
      Im_It_total_icms: Variant;
      Im_It_cst_pis: string;
      Im_It_base_pis: Variant;
      Im_It_Aliq_pis: Variant;
      Im_It_total_pis: Variant;
      Im_It_cst_cofins: string;
      Im_It_base_cofins: Variant;
      Im_It_Aliq_Cofins: Variant;
      Im_It_total_cofins: Variant;
      Im_It_cst_ipi: string;
      Im_It_enquadramento_ipi: string;
      Im_It_base_ipi: Variant;
      Im_It_Aliq_ipi: Variant;
      Im_It_total_ipi: Variant;
      Im_It_ncm: string;
      Im_It_cest: string;
      Im_It_cfop: string;
      Im_It_csosn: string;
      Im_It_origem: string;
      Im_It_margem_lucro: extended;
      Im_It_despesas_operacionais: Variant;
      Im_It_preco_venda: extended;
      Im_It_desc_maximo: Variant;
      Im_It_comissao: extended;
      Im_It_tipo: String;
      Im_It_Editado: String;

      function getIm_It_Id: integer;
      function getIm_It_Id_Importacao: integer;
      function getIm_It_Id_nfe: integer;
      function getIm_It_Codigo: string;
      function getIm_It_Descricao: string;
      function getIm_It_Item: integer;
      function getIm_It_Destino: String;
      function getIm_It_Cod_Barras: String;
      function getIm_It_Marca: String;
      function getIm_It_UM: String;
      function getIm_It_Qtde: extended;
      function getIm_It_Preco_Uni: extended;
      function getIm_It_Desconto: extended;
      function getIm_It_Acrescimos: extended;
      function getIm_It_Valor_Total: Variant;
      function getIm_It_cst_icms: String;
      function getIm_It_aliq_icms: Variant;
      function getIm_It_base_icms: Variant;
      function getIm_It_total_icms: Variant;
      function getIm_It_cst_pis: String;
      function getIm_It_base_pis: Variant;
      function getIm_It_Aliq_pis: Variant;
      function getIm_It_total_pis: Variant;
      function getIm_It_cst_cofins: String;
      function getIm_It_base_cofins: Variant;
      function getIm_It_Aliq_cofins: Variant;
      function getIm_It_total_cofins: Variant;
      function getIm_It_cst_ipi: string;
      function getIm_It_enquadramento_ipi: string;
      function getIm_It_base_ipi: Variant;
      function getIm_It_Aliq_ipi: Variant;
      function getIm_It_total_ipi: Variant;
      function getIm_It_ncm: String;
      function getIm_It_cest: String;
      function getIm_It_cfop: String;
      function getIm_It_csosn: String;
      function getIm_It_origem: String;
      function getIm_It_margem_lucro: extended;
      function getIm_It_despesas_operacionais: Variant;
      function getIm_It_preco_venda: extended;
      function getIm_It_desc_maximo: Variant;
      function getIm_It_comissao: extended;
      function getIm_It_tipo: String;
      function getIm_It_Editado: String;

      procedure setIm_It_Codigo(const Value: string);
      procedure setIm_It_Item(const Value: integer);
      procedure setIm_It_Id_Nfe(const Value: integer);
      procedure setIm_It_Id_Importacao(const Value: integer);
      procedure setIm_It_Destino(const Value: string);
      procedure setIm_Im_Descricao(const Value: String);
      procedure setIm_It_Cod_Barras(const Value: String);
      procedure setIm_It_Marca(const Value: String);
      procedure setIm_It_UM(const Value: String);
      procedure setIm_It_Qtde(const Value: extended);
      procedure setIm_It_Preco_Uni(const Value: extended);
      procedure setIm_It_Desconto(const Value: extended);
      procedure setIm_It_Acrescimos(const Value: extended);
      procedure setIm_It_Valor_Total(const Value: Variant);
      procedure setIm_It_cst_icms(const Value: String);
      procedure setIm_It_aliq_icms(const Value: Variant);
      procedure setIm_It_base_icms(const Value: Variant);
      procedure setIm_It_total_icms(const Value: Variant);
      procedure setIm_It_cst_pis(const Value: String);
      procedure setIm_It_base_pis(const Value: Variant);
      procedure setIm_It_Aliq_pis(const Value: Variant);
      procedure setIm_It_total_pis(const Value: Variant);
      procedure setIm_It_cst_cofins(const Value: String);
      procedure setIm_It_base_cofins(const Value: Variant);
      procedure setIm_It_Aliq_cofins(const Value: Variant);
      procedure setIm_It_total_cofins(const Value: Variant);
      procedure setIm_It_cst_ipi(Value: string);
      procedure setIm_It_enquadramento_ipi(Value: string);
      procedure setIm_It_base_ipi(Value: Variant);
      procedure setIm_It_Aliq_ipi(Value: Variant);
      procedure setIm_It_total_ipi(Value: Variant);
      procedure setIm_It_ncm(const Value: String);
      procedure setIm_It_cest(const Value: String);
      procedure setIm_It_cfop(const Value: String);
      procedure setIm_It_csosn(const Value: String);
      procedure setIm_It_origem(const Value: String);
      procedure setIm_It_margem_lucro(const Value: extended);
      procedure setIm_It_despesas_operacionais(const Value: Variant);
      procedure setIm_It_preco_venda(const Value: extended);
      procedure setIm_It_desc_maximo(const Value: Variant);
      procedure setIm_It_comissao(const Value: extended);
      procedure setIm_It_tipo(const Value: String);
      procedure setIm_It_Editado(const Value: String);

      procedure ClearData;

    public
      PROPERTY ID: integer read getIm_It_Id;
      PROPERTY ID_IMPORTACAO: integer read getIm_It_Id_Importacao write setIm_It_Id_Importacao;
      PROPERTY ID_NFe: integer read getIm_It_Id_nfe write setIm_It_Id_Nfe;
      PROPERTY CODIGO: string READ getIm_It_Codigo WRITE setIm_It_Codigo;
      PROPERTY COD_ITEM: integer READ getIm_It_Item WRITE setIm_It_Item;
      PROPERTY DESTINO: String READ getIm_It_Destino WRITE setIm_It_Destino;
      PROPERTY DESCRICAO: STRING READ getIm_It_Descricao WRITE setIm_Im_Descricao;
      PROPERTY COD_BARRAS: STRING READ getIm_It_Cod_Barras WRITE setIm_It_Cod_Barras;
      PROPERTY MARCA: STRING READ getIm_It_Marca WRITE setIm_It_Marca;
      PROPERTY UM: STRING READ getIm_It_UM WRITE setIm_It_UM;
      PROPERTY QTDE: extended READ getIm_It_Qtde WRITE setIm_It_Qtde;
      PROPERTY PRECO_UNI: extended READ getIm_It_Preco_Uni WRITE setIm_It_Preco_Uni;
      PROPERTY DESCONTO: extended READ getIm_It_Desconto WRITE setIm_It_Desconto;
      PROPERTY ACRESCIMOS: extended READ getIm_It_Acrescimos WRITE setIm_It_Acrescimos;
      PROPERTY VALOR_TOTAL: Variant READ getIm_It_Valor_Total WRITE setIm_It_Valor_Total;
      PROPERTY CST_ICMS: String READ getIm_It_cst_icms WRITE setIm_It_cst_icms;
      PROPERTY ALIQ_ICMS: Variant READ getIm_It_aliq_icms WRITE setIm_It_aliq_icms;
      PROPERTY BASE_ICMS: Variant READ getIm_It_base_icms WRITE setIm_It_base_icms;
      PROPERTY TOTAL_ICMS: Variant READ getIm_It_total_icms WRITE setIm_It_total_icms;
      PROPERTY CST_PIS: String READ getIm_It_cst_pis WRITE setIm_It_cst_pis;
      PROPERTY BASE_PIS: Variant READ getIm_It_base_pis WRITE setIm_It_base_pis;
      PROPERTY ALIQ_PIS: Variant READ getIm_It_Aliq_pis WRITE setIm_It_Aliq_pis;
      PROPERTY TOTAL_PIS: Variant READ getIm_It_total_pis WRITE setIm_It_total_pis;
      PROPERTY CST_COFINS: String READ getIm_It_cst_cofins WRITE setIm_It_cst_cofins;
      PROPERTY BASE_COFINS: Variant READ getIm_It_base_cofins WRITE setIm_It_base_cofins;
      PROPERTY ALIQ_COFINS: Variant READ getIm_It_Aliq_cofins WRITE setIm_It_Aliq_cofins;
      PROPERTY TOTAL_COFINS: Variant READ getIm_It_total_cofins WRITE setIm_It_total_cofins;
      PROPERTY CST_IPI: string READ getIm_It_cst_ipi WRITE setIm_It_cst_ipi;
      PROPERTY ENQUADRAMENTO_IPI: string READ getIm_It_enquadramento_ipi WRITE setIm_It_enquadramento_ipi;
      PROPERTY BASE_IPI: Variant READ getIm_It_base_ipi WRITE setIm_It_base_ipi;
      PROPERTY ALIQ_IPI: Variant READ getIm_It_Aliq_ipi WRITE setIm_It_Aliq_ipi;
      PROPERTY TOTAL_IPI: Variant READ getIm_It_total_ipi WRITE setIm_It_total_ipi;

      PROPERTY NCM: String READ getIm_It_ncm WRITE setIm_It_ncm;
      PROPERTY CEST: String READ getIm_It_cest WRITE setIm_It_cest;
      PROPERTY CFOP: String READ getIm_It_cfop WRITE setIm_It_cfop;
      PROPERTY CSOSN: String READ getIm_It_csosn WRITE setIm_It_csosn;
      PROPERTY ORIGEM: String READ getIm_It_origem WRITE setIm_It_origem;
      PROPERTY MARGEM_LUCRO: extended READ getIm_It_margem_lucro WRITE setIm_It_margem_lucro;
      PROPERTY DESPESAS_OPERACIONAIS: Variant READ getIm_It_despesas_operacionais WRITE setIm_It_despesas_operacionais;
      PROPERTY PRECO_VENDA: extended READ getIm_It_preco_venda WRITE setIm_It_preco_venda;
      PROPERTY DESC_MAXIMO: Variant READ getIm_It_desc_maximo WRITE setIm_It_desc_maximo;
      PROPERTY COMISSAO: extended READ getIm_It_comissao WRITE setIm_It_comissao;
      PROPERTY TIPO: String READ getIm_It_tipo WRITE setIm_It_tipo;
      PROPERTY EDITADO: string READ getIm_It_Editado WRITE setIm_It_Editado;

    const
      table_name = 'importacao_produtos';

      constructor create(pk: integer = 0); overload;
      class function find(Fields: array of String; Values: array of Variant): tArray<TItem>;
      class function get(Fields: array of String; Values: array of Variant): TImportacao.TItem;
      procedure Insert;
      procedure Delete(const pID: integer);
      function Select(FieldNames: array of String; const Values: array of Variant): tfdquery; overload;
      function Select(const pID: integer): tfdquery; overload;
      procedure Update(pUk: TUpdateKind = ukHard);
    end;

  var
    Item: TItem;
    Usuario: Tusuario;
  end;

implementation

{ TImportacao }

uses m_Produto;

procedure TImportacao.ClearData;
begin
  Im_Id := 0;
  Im_Data_Inicio := 0;
  Im_Data_Fim := 0;
  Im_Natureza_Op := '';
  Im_Status := '';
  Usuario := nil;
end;

constructor TImportacao.create(idImportacao: integer);
var
  qry: tfdquery;
begin
  inherited create;

  qry := self.Select(idImportacao);

  if qry = nil then
    raise Exception.create(format('Importação ID = %d não localizada!', [idImportacao]));

  with qry do
  begin

    self.Im_Id := idImportacao;
    self.Im_Data_Inicio := fieldbyname('DATA_INICIO').AsDateTime;
    self.Im_Data_Fim := fieldbyname('DATA_FIM').AsDateTime;;
    self.Usuario := Tusuario.create(fieldbyname('ID_USUARIO').asInteger);
    self.NFe := TNFe.create(fieldbyname('ID_NFE').asInteger);
    self.Im_Natureza_Op := fieldbyname('NAT_OPERACAO').asString;
    self.Im_Status := fieldbyname('STATUS_IMPORTACAO').asString;

  end;
end;

procedure TImportacao.TItem.ClearData;
begin
  Im_It_Id := 0;
  Im_It_Id_Importacao := 0;
  Im_It_Id_nfe := 0;
  Im_It_Codigo := '';
  Im_It_Item := 0;
  Im_It_Destino := '';
  Im_It_Cod_Barras := '';
  Im_It_Marca := '';
  Im_It_UM := '';
  Im_It_Qtde := 0;
  Im_It_Preco_Uni := 0;
  Im_It_Desconto := 0;
  Im_It_Acrescimos := 0;
  Im_It_Valor_Total := 0;
  Im_It_cst_icms := '';
  Im_It_aliq_icms := 0;
  Im_It_base_icms := 0;
  Im_It_total_icms := 0;
  Im_It_cst_pis := '';
  Im_It_base_pis := 0;
  Im_It_total_pis := 0;
  Im_It_cst_cofins := '';
  Im_It_base_cofins := 0;
  Im_It_total_cofins := 0;
  Im_It_ncm := '';
  Im_It_cest := '';
  Im_It_cfop := '';
  Im_It_csosn := '';
  Im_It_origem := '';
  Im_It_margem_lucro := 0;
  Im_It_despesas_operacionais := 0;
  Im_It_preco_venda := 0;
  Im_It_desc_maximo := 0;
  Im_It_comissao := 0;
  Im_It_tipo := '';
  Im_It_Editado := '0';
end;

function TImportacao.Select(FieldNames: array of String; const Values: array of Variant): tfdquery;
BEGIN
  result := Tdb.SimpleQuery('SELECT * FROM IMPORTACAO' + Tdb.GenWhere(FieldNames), Values);
end;

procedure TImportacao.Iniciar;
begin

  self.ClearData;
  self.Im_Data_Inicio := now;
  self.Usuario := Tusuario.create(Tenv.Tuser.ID);
  self.Im_Status := 'ABERTA';
  self.Insert;

end;

procedure TImportacao.Insert;
begin
  self.Im_Data_Fim := now;

  if self.Im_NFe = nil then
  begin
    Tdb.execquery('INSERT INTO IMPORTACAO(ID, DATA_INICIO, DATA_FIM, ID_USUARIO, NAT_OPERACAO, STATUS_IMPORTACAO) VALUES (default, ?, ?, ?, ?, ?)',
      [self.Im_Data_Inicio, self.Im_Data_Fim, self.Usuario.ID, self.Im_Natureza_Op, self.Im_Status]);

    self.Im_Id := Tdb.SimpleQuery('SELECT ID FROM IMPORTACAO ORDER BY ID DESC LIMIT 1').Fields[0].asInteger;
  end
  else
  begin
    Tdb.execquery('INSERT INTO IMPORTACAO(ID, DATA_INICIO, DATA_FIM, ID_USUARIO, ID_NFE, NAT_OPERACAO, STATUS_IMPORTACAO) VALUES (default, ?, ?, ?, ?, ?, ?)',
      [self.Im_Data_Inicio, self.Im_Data_Fim, self.Usuario.ID, self.NFe.ID, self.Im_Natureza_Op, self.Im_Status]);

    self.Im_Id := Tdb.SimpleQuery('SELECT ID FROM IMPORTACAO WHERE ID_NFE = ? ORDER BY ID DESC LIMIT 1', [self.NFe.ID]).Fields[0].asInteger;
  end;

end;

procedure TImportacao.ItemEditado(codItem: integer);
begin
  Tdb.execquery('UPDATE IMPORTACAO_PRODUTOS SET EDITADO = 1 WHERE ITEM = ? AND ID_IMPORTACAO = ?', [codItem, self.ID]);
end;

procedure TImportacao.Update(pUk: TUpdateKind = ukHard);
begin
  self.Im_Data_Fim := now;

  if pUk = ukHard then
    Tdb.execquery('UPDATE IMPORTACAO SET DATA_INICIO = ?, DATA_FIM = ?, ID_USUARIO = ?, ID_NFE = ?, NAT_OPERACAO = ?, STATUS_IMPORTACAO = ? ' + ' WHERE ID = ?',
      [self.Im_Data_Inicio, self.Im_Data_Fim, self.Usuario.ID, self.Im_NFe.ID, self.Im_Natureza_Op, self.Im_Status, self.Im_Id])
  else if pUk = uksoft then
    Tdb.execquery('UPDATE IMPORTACAO SET DATA_FIM = ?, ID_NFE = ?, NAT_OPERACAO = ?, STATUS_IMPORTACAO = ? ' + ' WHERE ID = ?',
      [self.Im_Data_Fim, self.Im_NFe.ID, self.Im_Natureza_Op, self.Im_Status, self.Im_Id]);
end;

procedure TImportacao.VincularItem(codProduto, codItem: integer);
begin
  Tdb.execquery('UPDATE IMPORTACAO_PRODUTOS SET CODIGO = ?, COD_BARRAS, = ?, DESCRICAO = ?, MARCA = ?');
end;

function TImportacao.Select(const pID: integer): tfdquery;
begin
  result := Tdb.SimpleQuery('SELECT I.*, IP.* FROM IMPORTACAO_PRODUTOS IP JOIN IMPORTACAO i ON i.ID = IP.ID_IMPORTACAO WHERE i.ID = ? ', [pID]);
end;

procedure TImportacao.Delete(const pID: integer);
begin
  Tdb.execquery('DELETE FROM IMPORTACAO_PRODUTOS WHERE ID_IMPORTACAO = ?', [pID]);
  Tdb.execquery('DELETE FROM IMPORTACAO WHERE ID = ?', [pID]);
  self.ClearData;
end;

procedure TImportacao.Finalizar;
var
  qry: tfdquery;
  produto: Tproduto;
begin

  if self.NFe.NATUREZA_OP = nil then
    raise Exception.create('Uma natureza de operação deve ser selecionada para categorizar a nota fiscal dentro do sistema!');

  qry := Tdb.SimpleQuery('select * from importacao_produtos where id_importacao = ? and destino = "1"', [self.Im_Id]);

  if qry = nil then
    raise Exception.create(format('Erro ao finalizar importação "%d": Itens não foram encontrados!', [self.Im_Id]));

  with qry do
  begin

    fetchall;
    first;

    while not eof do
    begin

      (*
        Buscar item da importacao pelo código de produto
      *)

      // Produto vinculado
      if tchecks.CanStrToNumber(fieldbyname('PROD_CODIGO').asString) then
        produto := Tproduto.create(fieldbyname('PROD_CODIGO').asString)
      else
      begin
        if not(fieldbyname('cod_barras').asString = '') then
          produto := Tproduto.get(['PROD_EAN'], [fieldbyname('cod_barras').asString]);

        if produto = nil then // Produto não Cadastrado
          produto := Tproduto.create;
      end;

      produto.DESCRICAO := TFormats.uc(fieldbyname('descricao').asString);
      produto.PROD_EAN := fieldbyname('cod_barras').asString;
      produto.MARCA := TFormats.uc(fieldbyname('marca').asString);
      produto.UNIDADE := TFormats.uc(fieldbyname('um').asString);
      produto.ESTOQUE := produto.ESTOQUE + fieldbyname('qtde').asExtended;
      produto.PRECO_FINAL_VAREJO := fieldbyname('preco_venda').asExtended;
      produto.PRECO_CUSTO := fieldbyname('preco_uni').asExtended;
      produto.CUSTO_MEDIO := fieldbyname('preco_uni').asExtended;
      produto.MARGEM_LUCRO_VAREJO := fieldbyname('margem_lucro').asExtended;
      produto.DESP_OPERARCIONAIS := fieldbyname('despesas_operacionais').asExtended;
      produto.DESCONTO_M_VAREJO := fieldbyname('desc_maximo').asExtended;
      produto.COMISSAO_BALCAO_VAREJO := fieldbyname('comissao').asExtended;

      if fieldbyname('tipo').asString = '' then
        raise Exception.create(format('O campo "TIPO" no item %d deve ser preenchido', [fieldbyname('item').asInteger]));
      produto.TIPO_ITEM := fieldbyname('tipo').asString;

      try
        TICMS.create(fieldbyname('cst_icms').asString);
        produto.ICMS_CST := fieldbyname('cst_icms').asString;
        produto.ALIQ_ICMS := fieldbyname('aliq_icms').asExtended;
      except
        raise Exception.create(format('Valor inválido para o campo "CST_ICMS" no item %d', [fieldbyname('item').asInteger]));
      end;

      try
        tpis.create(fieldbyname('cst_pis').asString);
        produto.PIS_CST := fieldbyname('cst_pis').asString;
      except
        raise Exception.create(format('Valor inválido para o campo "CST_PIS" no item %d', [fieldbyname('item').asInteger]));
      end;

      try
        tcofins.create(fieldbyname('cst_cofins').asString);
        produto.COFINS_CST := fieldbyname('cst_cofins').asString;
      except
        raise Exception.create(format('Valor inválido para o campo "CST_COFINS" no item %d', [fieldbyname('item').asInteger]));
      end;

      try
        if ansimatchstr(fieldbyname('cfop').asString, ['', '0']) then
          raise Exception.create(format('Valor inválido para o campo "CFOP" no item %d', [fieldbyname('item').asInteger]));
        TCFOP.create(fieldbyname('cfop').asInteger);
      except
        raise Exception.create(format('Valor inválido para o campo "CFOP" no item %d', [fieldbyname('item').asInteger]));
      end;

      try
        TCSOSN.create(fieldbyname('csosn').asString);
        produto.CSOSN := fieldbyname('csosn').asString;
      except
        raise Exception.create(format('Valor inválido para o campo "CSOSN" no item %d', [fieldbyname('item').asInteger]));
      end;

      if fieldbyname('ncm').asString = '' then
        raise Exception.create(format('O campo "NCM" no item %d deve ser preenchido', [fieldbyname('item').asInteger]));
      produto.NCM := fieldbyname('ncm').asString;

      if fieldbyname('cest').asString = '' then
        raise Exception.create(format('O campo "CEST" no item %d deve ser preenchido', [fieldbyname('item').asInteger]));
      produto.CEST := fieldbyname('cest').asString;

      produto.CODIGO_ORIGEM_MERCADORIA := fieldbyname('origem').asInteger;

      produto.save;

      // Atualizando o código do item na table importacao_produtos
      Edit;
      fieldbyname('codigo').asString := produto.PROD_CODIGO;
      Post;

      produto := nil;

      next;
    end;

  end;

  self.Im_Status := 'FINALIZADA';
  self.Im_Data_Fim := now;

  self.Update;
end;

procedure TImportacao.AtualizarCFOPItens(pk_item: integer = 0);
var
  qry: tfdquery;
begin
  if self.Im_Id <> 0 then
  begin
    if pk_item = 0 then
      qry := Tdb.SimpleQuery('SELECT * FROM IMPORTACAO_PRODUTOS WHERE ID_IMPORTACAO = ? and DESTINO = "1"', [self.Im_Id])
    else
      qry := Tdb.SimpleQuery('SELECT * FROM IMPORTACAO_PRODUTOS WHERE ID_IMPORTACAO = ? and ID = ?', [self.Im_Id, pk_item]);

    if qry <> nil then
    begin
      qry.first;

      while not qry.eof do
      begin
        if ansimatchstr(IfThen(qry.fieldbyname('CST_ICMS').asString = '', qry.fieldbyname('CSOSN').asString, qry.fieldbyname('CST_ICMS').asString),
          ['10', '30', '60', '70', '500', '201', '202', '203']) then // Substituição Tributária
          Tdb.execquery('UPDATE IMPORTACAO_PRODUTOS SET CFOP = ? WHERE ID = ?', [self.NFe.NATUREZA_OP.CFOP_ST, qry.fieldbyname('ID').asInteger])
        else
          Tdb.execquery('UPDATE IMPORTACAO_PRODUTOS SET CFOP = ? WHERE ID = ?', [self.NFe.NATUREZA_OP.CFOP_TI, qry.fieldbyname('ID').asInteger]);

        qry.next;
      end;
    end;
  end;
end;

procedure TImportacao.Cancelar;
begin
  self.Im_Status := 'CANCELADA';
  self.Update;
  self := nil;
end;

function TImportacao.getDataFim: Variant;
begin
  result := TFormats.datetime(self.Im_Data_Fim);
end;

function TImportacao.getDataInicio: Variant;
begin
  result := TFormats.datetime(self.Im_Data_Inicio);
end;

function TImportacao.getId: integer;
begin
  result := self.Im_Id;
end;

function TImportacao.getNatureza_Op: String;
begin
  result := self.Im_Natureza_Op;
end;

function TImportacao.getNfe: TNFe;
begin
  result := self.Im_NFe;
end;

function TImportacao.getStatus_Importacao: String;
begin
  result := self.Im_Status;
end;

procedure TImportacao.Pausar;
begin
  self.Im_Status := 'PAUSADA';
  self.Update;
  self := nil;
end;

procedure TImportacao.DesfazerAlteracoesItens;
const
  arrFields: array [1 .. 18] of string = ('CODIGO', 'DESCRICAO', 'COD_BARRAS', 'MARCA', 'UM', 'CST_ICMS', 'ALIQ_ICMS', 'CST_PIS', 'CST_COFINS', 'NCM', 'CFOP', 'CSOSN', 'ORIGEM',
    'MARGEM_LUCRO', 'DESPESAS_OPERACIONAIS', 'DESC_MAXIMO', 'COMISSAO', 'TIPO');
var
  qry, qry_up: tfdquery;
  i: integer;
begin
  Tdb.execquery('UPDATE IMPORTACAO_PRODUTOS SET EDITADO = 0 WHERE ID_IMPORTACAO = ?', [self.ID]);
  qry := Tdb.SimpleQuery('SELECT ID,' + tfunctions.arrtostr(arrFields) + ' FROM IMPORTACAO_PRODUTOS WHERE ID_IMPORTACAO = ? AND DESTINO = "0"', [self.ID]);
  if qry <> nil then
  begin
    qry_up := Tdb.SimpleQuery('SELECT ID,' + tfunctions.arrtostr(arrFields) + ' FROM IMPORTACAO_PRODUTOS WHERE ID_IMPORTACAO = ? AND DESTINO = "1"', [self.ID]);
    qry.first;
    qry_up.first;

    while not qry_up.eof do
    begin
      qry_up.Edit;
      for i := Low(arrFields) to High(arrFields) do
        qry_up.Fields[i].Value := qry.Fields[i].Value;
      qry_up.fieldbyname('CODIGO').asString := ' - - - ';
      qry_up.Post;
      qry_up.next;
      qry.next;
      self.AtualizarCFOPItens;
    end;
  end;
end;

procedure TImportacao.Remover;
begin
  self.Delete(self.ID);
  self.Destroy;
  self := nil;
end;

procedure TImportacao.Retomar;
begin
  self.Im_Status := 'ABERTA';
  self.Update;
end;

procedure TImportacao.setNatureza_Op(const Value: String);
begin
  if Value.IsEmpty then
    raise Exception.create('Natureza da Operação deve ser informada na importação');
  self.Im_Natureza_Op := Value;

  Tdb.execquery('UPDATE IMPORTACAO SET NAT_OPERACAO = ? where ID = ?', [self.Im_Natureza_Op, self.Im_Id]);
end;

procedure TImportacao.setNfe(const Value: TNFe);
begin
  if Value = nil then
    raise Exception.create('NF-e inválida para importação!');

  self.Im_NFe := Value;
  Tdb.execquery('update importacao set id_nfe = ? where id = ?', [self.Im_NFe.ID, self.Im_Id]);
end;

constructor TImportacao.TItem.create(pk: integer);
var
  qry: tfdquery;
begin
  inherited create;
  self.ClearData;
  if pk <> 0 then
  begin
    qry := self.Select(pk);
    if qry <> nil then
    begin
      self.Im_It_Id := qry.fieldbyname('Id').asInteger;
      self.ID_IMPORTACAO := qry.fieldbyname('Id_Importacao').asInteger;
      self.ID_NFe := qry.fieldbyname('Id_nfe').asInteger;
      self.CODIGO := qry.fieldbyname('Codigo').asString;
      self.DESCRICAO := qry.fieldbyname('Descricao').asString;
      self.COD_ITEM := qry.fieldbyname('Item').asInteger;
      self.DESTINO := qry.fieldbyname('Destino').asString;
      self.COD_BARRAS := qry.fieldbyname('Cod_Barras').asString;
      self.MARCA := qry.fieldbyname('Marca').asString;
      self.UM := qry.fieldbyname('UM').asString;
      self.QTDE := qry.fieldbyname('Qtde').asExtended;
      self.PRECO_UNI := qry.fieldbyname('Preco_Uni').asExtended;
      self.DESCONTO := qry.fieldbyname('Desconto').asExtended;
      self.ACRESCIMOS := qry.fieldbyname('Acrescimos').asExtended;
      self.VALOR_TOTAL := qry.fieldbyname('Valor_Total').asExtended;
      self.CST_ICMS := qry.fieldbyname('cst_icms').asString;
      self.ALIQ_ICMS := qry.fieldbyname('aliq_icms').asExtended;
      self.BASE_ICMS := qry.fieldbyname('base_icms').asExtended;
      self.TOTAL_ICMS := qry.fieldbyname('total_icms').asExtended;
      self.CST_PIS := qry.fieldbyname('cst_pis').asString;
      self.BASE_PIS := qry.fieldbyname('base_pis').asExtended;
      self.ALIQ_PIS := qry.fieldbyname('Aliq_pis').asExtended;
      self.TOTAL_PIS := qry.fieldbyname('total_pis').asExtended;
      self.CST_COFINS := qry.fieldbyname('cst_cofins').asString;
      self.BASE_COFINS := qry.fieldbyname('base_cofins').asExtended;
      self.ALIQ_COFINS := qry.fieldbyname('Aliq_Cofins').asExtended;
      self.TOTAL_COFINS := qry.fieldbyname('total_cofins').asExtended;
      self.CST_IPI := qry.fieldbyname('cst_ipi').asString;
      self.ENQUADRAMENTO_IPI := qry.fieldbyname('enquadramento_ipi').asString;
      self.BASE_IPI := qry.fieldbyname('base_ipi').asExtended;
      self.ALIQ_IPI := qry.fieldbyname('Aliq_ipi').asExtended;
      self.TOTAL_IPI := qry.fieldbyname('total_ipi').asExtended;
      self.NCM := qry.fieldbyname('ncm').asString;
      self.CEST := qry.fieldbyname('cest').asString;
      self.CFOP := qry.fieldbyname('cfop').asString;
      self.CSOSN := qry.fieldbyname('csosn').asString;
      self.ORIGEM := qry.fieldbyname('origem').asString;
      self.MARGEM_LUCRO := qry.fieldbyname('margem_lucro').asExtended;
      self.DESPESAS_OPERACIONAIS := qry.fieldbyname('despesas_operacionais').asExtended;
      self.PRECO_VENDA := qry.fieldbyname('preco_venda').asExtended;
      self.DESC_MAXIMO := qry.fieldbyname('desc_maximo').asExtended;
      self.COMISSAO := qry.fieldbyname('comissao').asExtended;
      self.TIPO := qry.fieldbyname('tipo').asString
    end;
  end;
end;

procedure TImportacao.TItem.Delete(const pID: integer);
begin
  Tdb.execquery('DELETE FROM IMPORTACAO_PRODUTOS WHERE ID = ?', [pID]);
end;

class function TImportacao.TItem.find(Fields: array of String; Values: array of Variant): tArray<TItem>;
var
  qry: tfdquery;
  arrObjects: tArray<TImportacao.TItem>;
begin
  result := nil;
  qry := TImportacao.TItem.create.Select(Fields, Values);
  if qry <> nil then
  begin
    qry.first;
    setLength(arrObjects, qry.RecordCount);
    while not qry.eof do
    begin
      arrObjects[qry.RecNo - 1] := TImportacao.TItem.create(qry.fieldbyname('id').asInteger);
      qry.next;
    end;
    result := arrObjects;
  end;

end;

class function TImportacao.TItem.get(Fields: array of String; Values: array of Variant): TImportacao.TItem;
var
  arrObjects: tArray<TImportacao.TItem>;
begin
  result := nil;
  arrObjects := self.find(Fields, Values);
  if length(arrObjects) > 0 then
    result := arrObjects[0];
end;

function TImportacao.TItem.getIm_It_Acrescimos: extended;
begin
  result := TFormats.coin(self.Im_It_Acrescimos);
end;

function TImportacao.TItem.getIm_It_Aliq_cofins: Variant;
begin
  result := TFormats.percent(self.getIm_It_Aliq_cofins);
end;

function TImportacao.TItem.getIm_It_aliq_icms: Variant;
begin
  result := self.Im_It_aliq_icms;
end;

function TImportacao.TItem.getIm_It_Aliq_ipi: Variant;
begin
  result := TFormats.percent(self.Im_It_Aliq_pis);
end;

function TImportacao.TItem.getIm_It_Aliq_pis: Variant;
begin
  result := TFormats.percent(self.Im_It_Aliq_pis);
end;

function TImportacao.TItem.getIm_It_base_cofins: Variant;
begin
  result := TFormats.money(self.Im_It_base_cofins);
end;

function TImportacao.TItem.getIm_It_base_icms: Variant;
begin
  result := TFormats.money(self.Im_It_base_icms);
end;

function TImportacao.TItem.getIm_It_base_ipi: Variant;
begin
  result := TFormats.money(self.Im_It_base_ipi);
end;

function TImportacao.TItem.getIm_It_base_pis: Variant;
begin
  result := TFormats.money(self.Im_It_base_pis);
end;

function TImportacao.TItem.getIm_It_cest: string;
begin
  result := self.Im_It_cest;
end;

function TImportacao.TItem.getIm_It_cfop: string;
begin
  result := self.Im_It_cfop;
end;

function TImportacao.TItem.getIm_It_Codigo: string;
begin
  result := self.Im_It_Codigo;
end;

function TImportacao.TItem.getIm_It_Cod_Barras: String;
begin
  result := self.Im_It_Cod_Barras;
end;

function TImportacao.TItem.getIm_It_comissao: extended;
begin
  result := TFormats.coin(self.Im_It_comissao);
end;

function TImportacao.TItem.getIm_It_csosn: String;
begin
  result := self.Im_It_csosn;
end;

function TImportacao.TItem.getIm_It_cst_cofins: String;
begin
  result := self.Im_It_cst_cofins;
end;

function TImportacao.TItem.getIm_It_cst_icms: String;
begin
  result := self.Im_It_cst_icms;
end;

function TImportacao.TItem.getIm_It_cst_ipi: string;
begin
  result := self.Im_It_cst_ipi;
end;

function TImportacao.TItem.getIm_It_cst_pis: String;
begin
  result := self.Im_It_cst_pis;
end;

function TImportacao.TItem.getIm_It_Desconto: extended;
begin
  result := TFormats.coin(self.Im_It_Desconto);
end;

function TImportacao.TItem.getIm_It_Descricao: string;
begin
  result := self.Im_It_Descricao;
end;

function TImportacao.TItem.getIm_It_desc_maximo: Variant;
begin
  result := TFormats.money(self.Im_It_desc_maximo);
end;

function TImportacao.TItem.getIm_It_despesas_operacionais: Variant;
begin
  result := TFormats.money(self.Im_It_despesas_operacionais);
end;

function TImportacao.TItem.getIm_It_Destino: String;
begin
  result := self.Im_It_Destino;
end;

function TImportacao.TItem.getIm_It_Editado: String;
begin
  result := self.Im_It_Editado;
end;

function TImportacao.TItem.getIm_It_enquadramento_ipi: string;
begin
  result := self.Im_It_enquadramento_ipi;
end;

function TImportacao.TItem.getIm_It_Id: integer;
begin
  result := self.Im_It_Id;
end;

function TImportacao.TItem.getIm_It_Id_Importacao: integer;
begin
  result := self.Im_It_Id_Importacao;
end;

function TImportacao.TItem.getIm_It_Id_nfe: integer;
begin
  result := self.Im_It_Id_nfe;
end;

function TImportacao.TItem.getIm_It_Item: integer;
begin
  result := self.Im_It_Item;
end;

function TImportacao.TItem.getIm_It_Marca: String;
begin
  result := self.Im_It_Marca;
end;

function TImportacao.TItem.getIm_It_margem_lucro: extended;
begin
  result := TFormats.coin(self.Im_It_margem_lucro);
end;

function TImportacao.TItem.getIm_It_ncm: String;
begin
  result := self.Im_It_ncm;
end;

function TImportacao.TItem.getIm_It_origem: String;
begin
  result := self.Im_It_origem;
end;

function TImportacao.TItem.getIm_It_Preco_Uni: extended;
begin
  result := TFormats.coin(self.Im_It_Preco_Uni);
end;

function TImportacao.TItem.getIm_It_preco_venda: extended;
begin
  result := TFormats.coin(self.Im_It_preco_venda);
end;

function TImportacao.TItem.getIm_It_Qtde: extended;
begin
  result := TFormats.coin(self.Im_It_Qtde);
end;

function TImportacao.TItem.getIm_It_tipo: String;
begin
  result := self.Im_It_tipo;
end;

function TImportacao.TItem.getIm_It_total_cofins: Variant;
begin
  result := TFormats.money(self.Im_It_total_cofins);
end;

function TImportacao.TItem.getIm_It_total_icms: Variant;
begin
  result := TFormats.money(self.Im_It_total_icms);
end;

function TImportacao.TItem.getIm_It_total_ipi: Variant;
begin
  result := TFormats.money(self.Im_It_total_ipi);
end;

function TImportacao.TItem.getIm_It_total_pis: Variant;
begin
  result := TFormats.money(self.Im_It_total_pis);
end;

function TImportacao.TItem.getIm_It_UM: String;
begin
  result := self.Im_It_UM;
end;

function TImportacao.TItem.getIm_It_Valor_Total: Variant;
begin
  result := TFormats.money(self.Im_It_Valor_Total);
end;

procedure TImportacao.TItem.Insert;
begin
  Tdb.execquery('INSERT INTO IMPORTACAO_PRODUTOS (ID_NFE, ID_IMPORTACAO,CODIGO, ITEM, DESTINO, DESCRICAO, COD_BARRAS, UM, QTDE, PRECO_UNI, DESCONTO, ACRESCIMOS, VALOR_TOTAL,' +
    'CST_ICMS, ALIQ_ICMS, BASE_ICMS, TOTAL_ICMS, CST_PIS, BASE_PIS, ALIQ_PIS, TOTAL_PIS,' +
    'CST_COFINS, BASE_COFINS, ALIQ_COFINS, TOTAL_COFINS, CST_IPI, ENQUADRAMENTO_IPI, BASE_IPI, ALIQ_IPI,' +
    'TOTAL_IPI, NCM, CEST, CFOP, CSOSN, ORIGEM, TIPO, PRECO_VENDA, MARGEM_LUCRO, DESPESAS_OPERACIONAIS, COMISSAO, EDITADO) VALUES(?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?)',
    [self.Im_It_Id_nfe, self.Im_It_Id_Importacao, self.Im_It_Codigo, self.Im_It_Item, self.Im_It_Destino, self.Im_It_Descricao, self.Im_It_Cod_Barras, self.Im_It_UM,
    self.Im_It_Qtde, self.Im_It_Preco_Uni, self.Im_It_Desconto, self.Im_It_Acrescimos, self.Im_It_Valor_Total, self.Im_It_cst_icms, self.Im_It_aliq_icms, self.Im_It_base_icms,
    self.Im_It_total_icms, self.Im_It_cst_pis, self.Im_It_base_pis, self.Im_It_Aliq_pis, self.Im_It_total_pis, self.Im_It_cst_cofins, self.Im_It_base_cofins,
    self.Im_It_Aliq_Cofins, self.Im_It_total_cofins, self.Im_It_cst_ipi, self.Im_It_enquadramento_ipi, self.Im_It_base_ipi, self.Im_It_Aliq_ipi, self.Im_It_total_ipi,
    self.Im_It_ncm, self.Im_It_cest, self.Im_It_cfop, self.Im_It_csosn, self.Im_It_origem, self.Im_It_tipo, self.Im_It_preco_venda, self.Im_It_margem_lucro,
    self.Im_It_despesas_operacionais, self.Im_It_comissao, self.Im_It_Editado]);
end;

function TImportacao.TItem.Select(FieldNames: array of String; const Values: array of Variant): tfdquery;
begin
  result := Tdb.SimpleQuery('SELECT * FROM IMPORTACAO_PRODUTOS' + Tdb.GenWhere(FieldNames), Values);
end;

function TImportacao.TItem.Select(const pID: integer): tfdquery;
begin
  result := self.Select(['ID'], [pID]);
end;

procedure TImportacao.TItem.Update(pUk: TUpdateKind = ukHard);
begin
  case pUk of
    uksoft:
      Tdb.execquery('UPDATE IMPORTACAO_PRODUTO SET CEST=?, CST_COFINS=?, CST_ICMS=?, CST_PIS=?, DESCONTO=?,' +
        'DESPESAS_OPERACIONAIS =?, MARGEM_LUCRO=?, COMISSAO=?, NCM=?, ORIGEM=?, MARCA=?, EDITADO=? WHERE ID_IMPORTACAO=? AND DESTINO="1" AND ITEM=?',
        [self.Im_It_cest, self.Im_It_cst_cofins, self.Im_It_cst_icms, self.Im_It_cst_pis, self.Im_It_Desconto, self.Im_It_despesas_operacionais, self.Im_It_margem_lucro,
        self.Im_It_comissao, self.Im_It_ncm, self.Im_It_origem, self.Im_It_Marca, self.Im_It_Editado, self.Im_It_Id, self.Im_It_Item]);
    ukHard:
      Tdb.execquery('UPDATE IMPORTACAO_PRODUTO SET CODIGO=?, ITEM=?, DESTINO=?, DESCRICAO=?, COD_BARRAS=?, UM=?, QTDE=?, PRECO_UNI=?, DESCONTO=?, ACRESCIMOS=?, VALOR_TOTAL=?,' +
        'CST_ICMS=?, ALIQ_ICMS=?, BASE_ICMS=?, TOTAL_ICMS=?, CST_PIS=?, BASE_PIS=?, ALIQ_PIS=?, TOTAL_PIS=?,' +
        'CST_COFINS=?, BASE_COFINS=?, ALIQ_COFINS=?, TOTAL_COFINS=?,CST_IPI=?, ENQUADRAMENTO_IPI=?, BASE_IPI=?, ALIQ_IPI=?,' +
        'TOTAL_IPI=?, NCM=?, CEST=?, CFOP=?, CSOSN=?, ORIGEM=?, TIPO=?,EDITADO=? WHERE ID=?', [self.Im_It_Id_nfe, self.Im_It_Id_Importacao, self.Im_It_Codigo, self.Im_It_Item,
        self.Im_It_Destino, self.Im_It_Descricao, self.Im_It_Cod_Barras, self.Im_It_UM, self.Im_It_Qtde, self.Im_It_Preco_Uni, self.Im_It_Desconto, self.Im_It_Acrescimos,
        self.Im_It_Valor_Total, self.Im_It_cst_icms, self.Im_It_aliq_icms, self.Im_It_base_icms, self.Im_It_total_icms, self.Im_It_cst_pis, self.Im_It_base_pis,
        self.Im_It_Aliq_pis, self.Im_It_total_pis, self.Im_It_cst_cofins, self.Im_It_base_cofins, self.Im_It_Aliq_Cofins, self.Im_It_total_cofins, self.Im_It_cst_ipi,
        self.Im_It_enquadramento_ipi, self.Im_It_base_ipi, self.Im_It_Aliq_ipi, self.Im_It_total_ipi, self.Im_It_ncm, self.Im_It_cest, self.Im_It_cfop, self.Im_It_csosn,
        self.Im_It_origem, self.Im_It_tipo, self.Im_It_Editado, self.Im_It_Id]);
  end;

end;

procedure TImportacao.TItem.setIm_Im_Descricao(const Value: String);
begin
  if Value = emptystr then
    raise Exception.create(format('Descrição do item [%d] não pode estar em branco!', [self.COD_ITEM]));

  self.Im_It_Descricao := Value;
end;

procedure TImportacao.TItem.setIm_It_Acrescimos(const Value: extended);
begin
  if tchecks.negative(Value) then
    raise Exception.create(format('Valor dos acréscimos do item [%d] não pode ser negativo!', [self.COD_ITEM]));

  self.Im_It_Acrescimos := Value;
end;

procedure TImportacao.TItem.setIm_It_Aliq_cofins(const Value: Variant);
begin
  if tchecks.negative(Value) then
    raise Exception.create(format('Alíquota da COFINS de Entrada do item [%d] não pode ser negativo!', [self.COD_ITEM]));

  self.Im_It_Aliq_Cofins := Value;
end;

procedure TImportacao.TItem.setIm_It_aliq_icms(const Value: Variant);
begin
  if tchecks.negative(Value) then
    raise Exception.create(format('Alíquota de ICMS do item [%d] não pode ser negativo!', [self.COD_ITEM]));

  self.Im_It_aliq_icms := Value;
end;

procedure TImportacao.TItem.setIm_It_Aliq_ipi(Value: Variant);
begin
  self.Im_It_Aliq_ipi := Value;
end;

procedure TImportacao.TItem.setIm_It_Aliq_pis(const Value: Variant);
begin
  if tchecks.negative(Value) then
    raise Exception.create(format('Alíquota do PIS de Entrada do item [%d] não pode ser negativo!', [self.COD_ITEM]));

  self.Im_It_Aliq_pis := Value;
end;

procedure TImportacao.TItem.setIm_It_base_cofins(const Value: Variant);
begin
  if tchecks.negative(Value) then
    raise Exception.create(format('Base de cálculo para COFINS do item [%d] não pode ser negativo!', [self.COD_ITEM]));

  self.Im_It_base_cofins := Value;
end;

procedure TImportacao.TItem.setIm_It_base_icms(const Value: Variant);
begin
  if tchecks.negative(Value) then
    raise Exception.create(format('Base de cálculo para ICMS do item [%d] não pode ser negativo!', [self.COD_ITEM]));

  self.Im_It_base_icms := Value;
end;

procedure TImportacao.TItem.setIm_It_base_ipi(Value: Variant);
begin
  self.Im_It_base_ipi := Value;
end;

procedure TImportacao.TItem.setIm_It_base_pis(const Value: Variant);
begin
  if tchecks.negative(Value) then
    raise Exception.create(format('Base de cálculo para PIS do item [%d] não pode ser negativo!', [self.COD_ITEM]));

  self.Im_It_base_pis := Value;
end;

procedure TImportacao.TItem.setIm_It_cest(const Value: String);
begin
  if Value <> '' then
    if length(Value) < 7 then
      raise Exception.create(format('Código CEST do item [%d] deve ter mais de 7 dígitos!', [self.COD_ITEM]));

  self.Im_It_cest := Value;
end;

procedure TImportacao.TItem.setIm_It_cfop(const Value: String);
begin
  if Value.IsEmpty then
    raise Exception.create(format('Código CFOP do item [%d] deve ser informado', [self.COD_ITEM]));
  if (length(Value) <> 4) then
    raise Exception.create(format('Código CFOP do item [%d]  deve ter apenas 4 dígitos!', [self.COD_ITEM]));

  self.Im_It_cfop := Value;
end;

procedure TImportacao.TItem.setIm_It_Codigo(const Value: string);
begin
  if (Value = '') then
    raise Exception.create(format('Código do item [%d] não pode estar em branco!', [self.COD_ITEM]));

  self.Im_It_Codigo := Value;
end;

procedure TImportacao.TItem.setIm_It_Cod_Barras(const Value: String);
begin
  self.Im_It_Cod_Barras := Value;
end;

procedure TImportacao.TItem.setIm_It_comissao(const Value: extended);
begin
  if tchecks.negative(Value) then
    raise Exception.create(format('Comissão aplicada ao item [%d] não pode ser negativa!', [self.COD_ITEM]));

  self.Im_It_comissao := Value;
end;

procedure TImportacao.TItem.setIm_It_csosn(const Value: string);
begin
  if Value <> '' then
    if length(Value) <> 3 then
      raise Exception.create(format('Código CSOSN do item [%d] deve ter 3 dígitos!', [self.COD_ITEM]));

  self.Im_It_csosn := Value;
end;

procedure TImportacao.TItem.setIm_It_cst_cofins(const Value: String);
begin
  self.Im_It_cst_cofins := Value;
end;

procedure TImportacao.TItem.setIm_It_cst_icms(const Value: String);
begin
  self.Im_It_cst_icms := Value;
end;

procedure TImportacao.TItem.setIm_It_cst_ipi(Value: string);
begin
  self.Im_It_cst_ipi := Value;
end;

procedure TImportacao.TItem.setIm_It_cst_pis(const Value: String);
begin
  self.Im_It_cst_pis := Value;
end;

procedure TImportacao.TItem.setIm_It_Desconto(const Value: extended);
begin
  if tchecks.negative(Value) then
    raise Exception.create(format('Valor de Desconto do item [%d] não pode ser negativo!', [self.COD_ITEM]));

  self.Im_It_Desconto := Value;
end;

procedure TImportacao.TItem.setIm_It_desc_maximo(const Value: Variant);
begin
  if tchecks.negative(Value) then
    raise Exception.create(format('Valor de Desconto Máximo do item [%d] não pode ser negativo!', [self.COD_ITEM]));

  self.Im_It_desc_maximo := Value;
end;

procedure TImportacao.TItem.setIm_It_despesas_operacionais(const Value: Variant);
begin
  if tchecks.negative(Value) then
    raise Exception.create(format('Valor de Despesas Operacionais do item [%d] não pode ser negativo!', [self.COD_ITEM]));

  self.Im_It_despesas_operacionais := Value;
end;

procedure TImportacao.TItem.setIm_It_Destino(const Value: String);
begin
  self.Im_It_Destino := Value;
end;

procedure TImportacao.TItem.setIm_It_Editado(const Value: String);
begin
  if not ansimatchstr(Value, ['0', '1']) then
    raise Exception.create(format('Campo EDITADO para o item [%d] deve ser 0 ou 1', [self.COD_ITEM]));

  self.Im_It_Editado := Value;
end;

procedure TImportacao.TItem.setIm_It_enquadramento_ipi(Value: string);
begin
  self.Im_It_enquadramento_ipi := Value;
end;

procedure TImportacao.TItem.setIm_It_Id_Importacao(const Value: integer);
begin
  self.Im_It_Id_Importacao := Value;
end;

procedure TImportacao.TItem.setIm_It_Id_Nfe(const Value: integer);
begin
  self.Im_It_Id_nfe := Value;
end;

procedure TImportacao.TItem.setIm_It_Item(const Value: integer);
begin
  if tchecks.zero(Value) then
    raise Exception.create(format('Item [%d] deve ser identificado por algum número de sequência diferente de zero!', [self.COD_ITEM]));

  self.Im_It_Item := Value;
end;

procedure TImportacao.TItem.setIm_It_Marca(const Value: String);
begin
  self.Im_It_Marca := Value;
end;

procedure TImportacao.TItem.setIm_It_margem_lucro(const Value: extended);
begin
  if tchecks.negative(Value) then
    raise Exception.create(format('Margem de Lucro do item [%d] não pode ser negativo!', [self.COD_ITEM]));

  self.Im_It_margem_lucro := Value;
end;

procedure TImportacao.TItem.setIm_It_ncm(const Value: String);
begin
  if Value.IsEmpty then
    raise Exception.create(format('NCM do item [%d] não pode ser estar em branco!', [self.COD_ITEM]));

  self.Im_It_ncm := Value;
end;

procedure TImportacao.TItem.setIm_It_origem(const Value: String);
begin
  if Value.IsEmpty then
    self.Im_It_origem := '0'
  else
    self.Im_It_origem := Value;
end;

procedure TImportacao.TItem.setIm_It_Preco_Uni(const Value: extended);
begin
  if tchecks.negative(Value) then
    raise Exception.create(format('Preço Unitário do item [%d] não pode ser negativo!', [self.COD_ITEM]));

  self.Im_It_Preco_Uni := TFormats.coin(Value, 4);
end;

procedure TImportacao.TItem.setIm_It_preco_venda(const Value: extended);
begin
  if tchecks.negative(Value) then
    raise Exception.create(format('Preço de Venda do item [%d] não pode ser negativo!', [self.COD_ITEM]));

  self.Im_It_preco_venda := TFormats.coin(Value, 4);
end;

procedure TImportacao.TItem.setIm_It_Qtde(const Value: extended);
begin
  if tchecks.negative(Value) then
    raise Exception.create(format('Quantidade do item [%d] não pode ser negativo!', [self.COD_ITEM]));

  self.Im_It_Qtde := Value;
end;

procedure TImportacao.TItem.setIm_It_tipo(const Value: String);
begin
  self.Im_It_tipo := Value;
end;

procedure TImportacao.TItem.setIm_It_total_cofins(const Value: Variant);
begin
  if tchecks.negative(Value) then
    raise Exception.create(format('Total de COFINS do item [%d] não pode ser negativo!', [self.COD_ITEM]));

  self.Im_It_total_cofins := TFormats.coin(Value);
end;

procedure TImportacao.TItem.setIm_It_total_icms(const Value: Variant);
begin
  if tchecks.negative(Value) then
    raise Exception.create(format('Total de ICMS do item [%d] não pode ser negativo!', [self.COD_ITEM]));

  self.Im_It_total_icms := Value;
end;

procedure TImportacao.TItem.setIm_It_total_ipi(Value: Variant);
begin
  self.Im_It_total_ipi := Value;
end;

procedure TImportacao.TItem.setIm_It_total_pis(const Value: Variant);
begin
  if tchecks.negative(Value) then
    raise Exception.create(format('Total de PIS do item [%d] não pode ser negativo!', [self.COD_ITEM]));

  self.Im_It_total_pis := Value
end;

procedure TImportacao.TItem.setIm_It_UM(const Value: String);
begin
  if Value.IsEmpty then
    self.Im_It_UM := 'UN'
  else
    self.Im_It_UM := Value;
end;

procedure TImportacao.TItem.setIm_It_Valor_Total(const Value: Variant);
begin
  if tchecks.negative(Value) then
    raise Exception.create(format('Valor Total do item [%d] não pode ser negativo!', [self.COD_ITEM]));

  self.Im_It_Valor_Total := Value;
end;

end.
