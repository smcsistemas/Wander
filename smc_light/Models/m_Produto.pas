//Verificado automaticamente em 16/06/2020 09:28
unit m_Produto;

{
========================================================================================================================================
ALT|   DATA |HORA |UNIT                        |Descrição                                                                              |
---|--------|-----|----------------------------|----------------------------------------------------------------------------------------
336|15/06/20|18:23|m_Produto                   |Passa a tratar PRODUTO_PROD(PROD_CDUNIDADE)ao invés de PRODUTO(PROD_CDUNIDADE)
328|15/06/20|13:35|m_Produto                   |Passa a tratar PRODUTO_PROD(PROD_EAN)    ao invés de PRODUTO(CODIGO_BARRAS)
306|15/06/20|10:14|m_Produto                   |Passa a tratar PRODUTO_PROD(PROD_CODIGO) ao invés de PRODUTO(CODIGO)
========================================================================================================================================
}

interface

uses h_Checks, sysutils, I_Crud,
  firedac.comp.client, c_Globals, h_Formats,
  h_db, h_Functions, dialogs;

type
  TProduto = class(TInterfacedObject, Icrud)
  private

    Produto_PROD_CODIGO: String;
    Produto_descricao: string;
    Produto_PROD_EAN: string;
    Produto_PROD_DETALHES: string;
    Produto_PROD_REFERENCIASFABRICA: string;
    Produto_marca: string;
    Produto_familia: string;
    Produto_grupo: string;
    Produto_sub_grupo: string;
    Produto_und: string;
    Produto_tipo_item: string;
    Produto_preco_custo: extended;
    Produto_frete: extended;
    Produto_imposto: extended;
    Produto_desp_operacionais: extended;
    Produto_custo_medio: extended;
    Produto_margem_l_varejo: extended;
    Produto_margem_l_distribuidor: extended;
    Produto_margem_l_atacado: extended;
    Produto_PROD_PRECO_VAR: extended;
    Produto_PROD_PRECO_DIST: extended;
    Produto_PROD_PRECO_ATAC: extended;
    Produto_PROD_COMISSAO_LOJA_varejo: extended;
    Produto_PROD_COMISSAO_LOJA_distribuidor: extended;
    Produto_PROD_COMISSAO_LOJA_atacado: extended;
    Produto_PROD_COMISSAO_EXT_VAR: extended;
    Produto_PROD_COMISSAO_EXT_DIST: extended;
    Produto_PROD_COMISSAO_EXT_ATAC: extended;
    Produto_estoque: extended;
    Produto_PROD_ESTOQMIN: extended;
    Produto_PROD_MAXDESC_VAR: extended;
    Produto_PROD_MAXDESC_DIST: extended;
    Produto_PROD_MAXDESC_ATAC: extended;
    Produto_status_cadastral: boolean;
    Produto_cod_balanca_1: string;
    Produto_cod_balanca_2: string;
    Produto_cod_balanca_3: string;
    Produto_usa_lote: boolean;
    Produto_controlado: boolean;
    Produto_icms_cst: string;
    Produto_codigo_origem_mercadoria: integer;
    Produto_aliq_icms: extended;
    Produto_reducao_icms_st: extended;
    Produto_cod_comb: string;
    Produto_valor_pauta_bc_st: extended;
    Produto_genero: string;
    Produto_lucro_subst_tributaria: extended;
    Produto_leis: string;
    Produto_csosn: string;
    Produto_ncm: string;
    Produto_cest: string;
    Produto_anp: string;
    Produto_pis_cst: string;
    Produto_cofins_cst: string;

    function getProduto_PROD_CODIGO: String;
    function getProduto_descricao: string;
    function getProduto_PROD_EAN: string;
    function getProduto_PROD_DETALHES: string;
    function getProduto_PROD_REFERENCIASFABRICA: string;
    function getProduto_marca: string;
    function getProduto_familia: string;
    function getProduto_grupo: string;
    function getProduto_sub_grupo: string;
    function getProduto_und: string;
    function getProduto_tipo_item: string;
    function getProduto_preco_custo: extended;
    function getProduto_frete: extended;
    function getProduto_imposto: extended;
    function getProduto_desp_operacionais: extended;
    function getProduto_custo_medio: extended;
    function getProduto_margem_l_varejo: extended;
    function getProduto_margem_l_distribuidor: extended;
    function getProduto_margem_l_atacado: extended;
    function getProduto_PROD_PRECO_VAR: extended;
    function getProduto_PROD_PRECO_DIST: extended;
    function getProduto_PROD_PRECO_ATAC: extended;
    function getProduto_PROD_COMISSAO_LOJA_varejo: extended;
    function getProduto_PROD_COMISSAO_LOJA_distribuidor: extended;
    function getProduto_PROD_COMISSAO_LOJA_atacado: extended;
    function getProduto_PROD_COMISSAO_EXT_VAR: extended;
    function getProduto_PROD_COMISSAO_EXT_DIST: extended;
    function getProduto_PROD_COMISSAO_EXT_ATAC: extended;
    function getProduto_estoque: extended;
    function getProduto_PROD_ESTOQMIN: extended;
    function getProduto_PROD_MAXDESC_VAR: extended;
    function getProduto_PROD_MAXDESC_DIST: extended;
    function getProduto_PROD_MAXDESC_ATAC: extended;
    function getProduto_status_cadastral: boolean;
    function getProduto_cod_balanca_1: string;
    function getProduto_cod_balanca_2: string;
    function getProduto_cod_balanca_3: string;
    function getProduto_usa_lote: boolean;
    function getProduto_controlado: boolean;
    function getProduto_icms_cst: string;
    function getProduto_codigo_origem_mercadoria: integer;
    function getProduto_aliq_icms: extended;
    function getProduto_reducao_icms_st: extended;
    function getProduto_cod_comb: string;
    function getProduto_valor_pauta_bc_st: extended;
    function getProduto_genero: string;
    function getProduto_lucro_subst_tributaria: extended;
    function getProduto_leis: string;
    function getProduto_csosn: string;
    function getProduto_ncm: string;
    function getProduto_cest: string;
    function getProduto_anp: string;
    function getProduto_pis_cst: string;
    function getProduto_cofins_cst: string;

    procedure setProduto_PROD_CODIGO(value: String);
    procedure setProduto_Descricao(value: string);
    Procedure setProduto_PROD_EAN(value: string);
    Procedure setProduto_PROD_DETALHES(value: string);
    Procedure setProduto_PROD_REFERENCIASFABRICA(value: string);
    Procedure setProduto_marca(value: string);
    Procedure setProduto_familia(value: string);
    Procedure setProduto_grupo(value: string);
    Procedure setProduto_sub_grupo(value: string);
    Procedure setProduto_und(value: string);
    Procedure setProduto_tipo_item(value: string);
    Procedure setProduto_preco_custo(value: extended);
    Procedure setProduto_frete(value: extended);
    Procedure setProduto_imposto(value: extended);
    Procedure setProduto_desp_operacionais(value: extended);
    Procedure setProduto_custo_medio(value: extended);
    Procedure setProduto_margem_l_varejo(value: extended);
    Procedure setProduto_margem_l_distribuidor(value: extended);
    Procedure setProduto_margem_l_atacado(value: extended);
    Procedure setProduto_PROD_PRECO_VAR(value: extended);
    Procedure setProduto_PROD_PRECO_DIST(value: extended);
    Procedure setProduto_PROD_PRECO_ATAC(value: extended);
    Procedure setProduto_PROD_COMISSAO_LOJA_varejo(value: extended);
    Procedure setProduto_PROD_COMISSAO_LOJA_distribuidor(value: extended);
    Procedure setProduto_PROD_COMISSAO_LOJA_atacado(value: extended);
    Procedure setProduto_PROD_COMISSAO_EXT_VAR(value: extended);
    Procedure setProduto_PROD_COMISSAO_EXT_DIST(value: extended);
    Procedure setProduto_PROD_COMISSAO_EXT_ATAC(value: extended);
    Procedure setProduto_estoque(value: extended);
    Procedure setProduto_PROD_ESTOQMIN(value: extended);
    Procedure setProduto_PROD_MAXDESC_VAR(value: extended);
    Procedure setProduto_PROD_MAXDESC_DIST(value: extended);
    Procedure setProduto_PROD_MAXDESC_ATAC(value: extended);
    Procedure setProduto_status_cadastral(value: boolean);
    Procedure setProduto_cod_balanca_1(value: string);
    Procedure setProduto_cod_balanca_2(value: string);
    Procedure setProduto_cod_balanca_3(value: string);
    Procedure setProduto_usa_lote(value: boolean);
    Procedure setProduto_controlado(value: boolean);
    Procedure setProduto_icms_cst(value: string);
    Procedure setProduto_codigo_origem_mercadoria(value: integer);
    Procedure setProduto_aliq_icms(value: extended);
    Procedure setProduto_reducao_icms_st(value: extended);
    Procedure setProduto_cod_comb(value: string);
    Procedure setProduto_valor_pauta_bc_st(value: extended);
    Procedure setProduto_genero(value: string);
    Procedure setProduto_lucro_subst_tributaria(value: extended);
    Procedure setProduto_leis(value: string);
    Procedure setProduto_csosn(value: string);
    Procedure setProduto_ncm(value: string);
    Procedure setProduto_cest(value: string);
    Procedure setProduto_anp(value: string);
    Procedure setProduto_pis_cst(value: string);
    Procedure setProduto_cofins_cst(value: string);

    Procedure ClearData;

    procedure Insert;
    procedure Delete(const pID: integer);
    function Select(FieldNames: array of String; const Values: array of variant): tfdquery; overload;
    function Select(const pID: integer): tfdquery; overload;
    procedure Update(pUk: TUpdateKind = ukHard);

  public

    property PROD_CODIGO: String read getProduto_PROD_CODIGO write setProduto_PROD_CODIGO;
    property DESCRICAO: string read getProduto_descricao write setProduto_Descricao;
    property PROD_EAN: string read getProduto_PROD_EAN write setProduto_PROD_EAN;
    property PROD_DETALHES: string read getProduto_PROD_DETALHES write setProduto_PROD_DETALHES;
    property PROD_REFERENCIASFABRICA: string read getProduto_PROD_REFERENCIASFABRICA write setProduto_PROD_REFERENCIASFABRICA;
    property MARCA: string read getProduto_marca write setProduto_marca;
    property FAMILIA: string read getProduto_familia write setProduto_familia;
    property GRUPO: string read getProduto_grupo write setProduto_grupo;
    property SUB_GRUPO: string read getProduto_sub_grupo write setProduto_sub_grupo;
    property UNIDADE: string read getProduto_und write setProduto_und;
    property TIPO_ITEM: string read getProduto_tipo_item write setProduto_tipo_item;
    property PRECO_CUSTO: extended read getProduto_preco_custo write setProduto_preco_custo;
    property FRETE: extended read getProduto_frete write setProduto_frete;
    property IMPOSTO: extended read getProduto_imposto write setProduto_imposto;
    property DESP_OPERARCIONAIS: extended read getProduto_desp_operacionais write setProduto_desp_operacionais;
    property CUSTO_MEDIO: extended read getProduto_custo_medio write setProduto_custo_medio;
    property MARGEM_LUCRO_VAREJO: extended read getProduto_margem_l_varejo write setProduto_margem_l_varejo;
    property MARGEM_LUCRO_DISTRIBUIDOR: extended read getProduto_margem_l_distribuidor write setProduto_margem_l_distribuidor;
    property MARGEM_LUCRO_ATACADO: extended read getProduto_margem_l_atacado write setProduto_margem_l_atacado;
    property PROD_PRECO_VAR: extended read getProduto_PROD_PRECO_VAR write setProduto_PROD_PRECO_VAR;
    property PROD_PRECO_DIST: extended read getProduto_PROD_PRECO_DIST write setProduto_PROD_PRECO_DIST;
    property PROD_PRECO_ATAC: extended read getProduto_PROD_PRECO_ATAC write setProduto_PROD_PRECO_ATAC;
    property PROD_COMISSAO_LOJA_VAREJO: extended read getProduto_PROD_COMISSAO_LOJA_varejo write setProduto_PROD_COMISSAO_LOJA_varejo;
    property PROD_COMISSAO_LOJA_DISTRIBUIDOR: extended read getProduto_PROD_COMISSAO_LOJA_distribuidor write setProduto_PROD_COMISSAO_LOJA_distribuidor;
    property PROD_COMISSAO_LOJA_ATACADO: extended read getProduto_PROD_COMISSAO_LOJA_atacado write setProduto_PROD_COMISSAO_LOJA_atacado;
    property PROD_COMISSAO_EXT_VAR: extended read getProduto_PROD_COMISSAO_EXT_VAR write setProduto_PROD_COMISSAO_EXT_VAR;
    property PROD_COMISSAO_EXT_DIST: extended read getProduto_PROD_COMISSAO_EXT_DIST write setProduto_PROD_COMISSAO_EXT_DIST;
    property PROD_COMISSAO_EXT_ATAC: extended read getProduto_PROD_COMISSAO_EXT_ATAC write setProduto_PROD_COMISSAO_EXT_ATAC;
    property ESTOQUE: extended read getProduto_estoque write setProduto_estoque;
    property PROD_ESTOQMIN: extended read getProduto_PROD_ESTOQMIN write setProduto_PROD_ESTOQMIN;
    property PROD_MAXDESC_VAR: extended read getProduto_PROD_MAXDESC_VAR write setProduto_PROD_MAXDESC_VAR;
    property PROD_MAXDESC_DIST: extended read getProduto_PROD_MAXDESC_DIST write setProduto_PROD_MAXDESC_DIST;
    property PROD_MAXDESC_ATAC: extended read getProduto_PROD_MAXDESC_ATAC write setProduto_PROD_MAXDESC_ATAC;
    property STATUS_CADASTRAL: boolean read getProduto_status_cadastral write setProduto_status_cadastral;
    property COD_BALANCA_1: string read getProduto_cod_balanca_1 write setProduto_cod_balanca_1;
    property COD_BALANCA_2: string read getProduto_cod_balanca_2 write setProduto_cod_balanca_2;
    property COD_BALANCA_3: string read getProduto_cod_balanca_3 write setProduto_cod_balanca_3;
    property USA_LOTE: boolean read getProduto_usa_lote write setProduto_usa_lote;
    property CONTROLADO: boolean read getProduto_controlado write setProduto_controlado;
    property ICMS_CST: string read getProduto_icms_cst write setProduto_icms_cst;
    property CODIGO_ORIGEM_MERCADORIA: integer read getProduto_codigo_origem_mercadoria write setProduto_codigo_origem_mercadoria;
    property ALIQ_ICMS: extended read getProduto_aliq_icms write setProduto_aliq_icms;
    property REDUCAO_ICMS_ST: extended read getProduto_reducao_icms_st write setProduto_reducao_icms_st;
    property COD_COMB: string read getProduto_cod_comb write setProduto_cod_comb;
    property VALOR_PAUTA_BC_ST: extended read getProduto_valor_pauta_bc_st write setProduto_valor_pauta_bc_st;
    property GENERO: string read getProduto_genero write setProduto_genero;
    property LUCRO_SUBST_TRIBUTARIA: extended read getProduto_lucro_subst_tributaria write setProduto_lucro_subst_tributaria;
    property LEIS: string read getProduto_leis write setProduto_leis;
    property CSOSN: string read getProduto_csosn write setProduto_csosn;
    property NCM: string read getProduto_ncm write setProduto_ncm;
    property CEST: string read getProduto_cest write setProduto_cest;
    property ANP: string read getProduto_anp write setProduto_anp;
    property PIS_CST: string read getProduto_pis_cst write setProduto_pis_cst;
    property COFINS_CST: string read getProduto_cofins_cst write setProduto_cofins_cst;

    constructor Create(pCodigo: String = ''); overload;
    class function countAll: variant;
    class function find(Fields: array of String; Values: array of variant): tArray<TProduto>;
    class function get(Fields: array of String; Values: array of variant): TProduto;

    procedure save;
  end;

implementation

{ TProduto }

procedure TProduto.ClearData;
begin
  Produto_PROD_CODIGO := '';
  Produto_descricao   := '';
  Produto_PROD_EAN    := '';
  Produto_PROD_DETALHES := '';
  Produto_PROD_REFERENCIASFABRICA := '';
  Produto_marca := '';
  Produto_familia := '';
  Produto_grupo := '';
  Produto_sub_grupo := '';
  Produto_und := '';
  Produto_tipo_item := '';
  Produto_preco_custo := 0;
  Produto_frete := 0;
  Produto_imposto := 0;
  Produto_desp_operacionais := 0;
  Produto_custo_medio := 0;
  Produto_margem_l_varejo := 0;
  Produto_margem_l_distribuidor := 0;
  Produto_margem_l_atacado := 0;
  Produto_PROD_PRECO_VAR := 0;
  Produto_PROD_PRECO_DIST := 0;
  Produto_PROD_PRECO_ATAC := 0;
  Produto_PROD_COMISSAO_LOJA_varejo := 0;
  Produto_PROD_COMISSAO_LOJA_distribuidor := 0;
  Produto_PROD_COMISSAO_LOJA_atacado := 0;
  Produto_PROD_COMISSAO_EXT_VAR := 0;
  Produto_PROD_COMISSAO_EXT_DIST := 0;
  Produto_PROD_COMISSAO_EXT_ATAC := 0;
  Produto_estoque := 0;
  Produto_PROD_ESTOQMIN := 0;
  Produto_PROD_MAXDESC_VAR := 0;
  Produto_PROD_MAXDESC_DIST := 0;
  Produto_PROD_MAXDESC_ATAC := 0;
  Produto_status_cadastral := true;
  Produto_cod_balanca_1 := '';
  Produto_cod_balanca_2 := '';
  Produto_cod_balanca_3 := '';
  Produto_usa_lote := false;
  Produto_controlado := false;
  Produto_icms_cst := '';
  Produto_codigo_origem_mercadoria := 0;
  Produto_aliq_icms := 0;
  Produto_reducao_icms_st := 0;
  Produto_cod_comb := '';
  Produto_valor_pauta_bc_st := 0;
  Produto_genero := '';
  Produto_lucro_subst_tributaria := 0;
  Produto_leis := '';
  Produto_csosn := '';
  Produto_ncm := '';
  Produto_cest := '';
  Produto_anp := '';
  Produto_pis_cst := '';
  Produto_cofins_cst := '';
end;

class function TProduto.countAll: variant;
begin
  result := Tdb.SimpleQuery('select count(*) as countAll from produto_prod').Fields[0].value;
end;

constructor TProduto.Create(pCodigo: String = '');
var
  qry: tfdquery;
begin

  inherited Create;
  ClearData;

  if pCodigo <> '' then
  begin
    qry := Tdb.SimpleQuery('SELECT * FROM PRODUTO_PROD WHERE PROD_CODIGO = ?', [pCodigo]);
    if qry = nil then
      raise Exception.Create(Format('Produto %d não encontrado.', [pCodigo]))
    else
    begin
      Self.Produto_PROD_CODIGO := qry.fieldbyname('PROD_CODIGO'      ).AsString;
      Self.Produto_descricao   := qry.fieldbyname('descricao_produto').asString;
      Self.Produto_PROD_EAN    := qry.fieldbyname('PROD_EAN'         ).asString;
      //------------------------------------------------------------------------
      Self.Produto_PROD_DETALHES := qry.fieldbyname('PROD_DETALHES').asString;
      Self.Produto_PROD_REFERENCIASFABRICA := qry.fieldbyname('PROD_REFERENCIASFABRICA').asString;
      Self.Produto_marca := qry.fieldbyname('PROD_MARCA').asString;
      Self.Produto_familia := qry.fieldbyname('PROD_CDFAMILIA').asString;
      Self.Produto_grupo := qry.fieldbyname('grupo').asString;
      Self.Produto_sub_grupo := qry.fieldbyname('subgrupo').asString;
      Self.Produto_und := qry.fieldbyname('PROD_CDUNIDADE').asString;
      Self.Produto_tipo_item := qry.fieldbyname('tipo_item').asString;
      Self.Produto_preco_custo := qry.fieldbyname('preco_custo').asExtended;
      Self.Produto_frete := qry.fieldbyname('frete').asExtended;
      Self.Produto_imposto := qry.fieldbyname('imposto').asExtended;
      Self.Produto_desp_operacionais := qry.fieldbyname('desp_operacionais').asExtended;
      Self.Produto_custo_medio := qry.fieldbyname('custo_medio').asExtended;
      Self.Produto_margem_l_varejo := qry.fieldbyname('margem_l_varejo').asExtended;
      Self.Produto_margem_l_distribuidor := qry.fieldbyname('margem_l_distribuidor').asExtended;
      Self.Produto_margem_l_atacado := qry.fieldbyname('margem_l_atacado').asExtended;
      Self.Produto_PROD_PRECO_VAR := qry.fieldbyname('PROD_PRECO_VAR').asExtended;
      Self.Produto_PROD_PRECO_DIST := qry.fieldbyname('PROD_PRECO_DIST').asExtended;
      Self.Produto_PROD_PRECO_ATAC := qry.fieldbyname('PROD_PRECO_ATAC').asExtended;
      Self.Produto_PROD_COMISSAO_LOJA_varejo := qry.fieldbyname('PROD_COMISSAO_VAR').asExtended;
      Self.Produto_PROD_COMISSAO_LOJA_distribuidor := qry.fieldbyname('PROD_COMISSAO_DIST').asExtended;
      Self.Produto_PROD_COMISSAO_LOJA_atacado := qry.fieldbyname('PROD_COMISSAO_ATAC').asExtended;
      Self.Produto_PROD_COMISSAO_EXT_VAR := qry.fieldbyname('PROD_COMISSAO_EXT_VAR').asExtended;
      Self.Produto_PROD_COMISSAO_EXT_DIST := qry.fieldbyname('PROD_COMISSAO_EXT_DIST').asExtended;
      Self.Produto_PROD_COMISSAO_EXT_ATAC := qry.fieldbyname('PROD_COMISSAO_EXT_ATAC').asExtended;
      Self.Produto_estoque := qry.fieldbyname('PROD_SALDO').asExtended;
      Self.Produto_PROD_ESTOQMIN := strtofloat(TFunctions.ifthen(qry.fieldbyname('PROD_ESTOQMIN').asString = '', '0', qry.fieldbyname('PROD_ESTOQMIN').asString));
      Self.Produto_PROD_MAXDESC_VAR := qry.fieldbyname('PROD_MAXDESC_VAR').asExtended;
      Self.Produto_PROD_MAXDESC_DIST := qry.fieldbyname('PROD_MAXDESC_DIST').asExtended;
      Self.Produto_PROD_MAXDESC_ATAC := qry.fieldbyname('PROD_MAXDESC_ATAC').asExtended;
      Self.Produto_status_cadastral := (qry.fieldbyname('status_cadastral').asString = 'ATIVO');
      Self.Produto_cod_balanca_1 := qry.fieldbyname('cod_balanca_1').asString;
      Self.Produto_cod_balanca_2 := qry.fieldbyname('cod_balanca_2').asString;
      Self.Produto_cod_balanca_3 := qry.fieldbyname('cod_balanca_3').asString;
      Self.Produto_usa_lote := (qry.fieldbyname('usa_lote').asString = 'SIM');
      Self.Produto_controlado := (qry.fieldbyname('controlado').asString = 'SIM');
      Self.Produto_icms_cst := qry.fieldbyname('icms_cst').asString;
      Self.Produto_codigo_origem_mercadoria := qry.fieldbyname('codigo_origem_mercadoria').AsInteger;
      Self.Produto_aliq_icms := qry.fieldbyname('aliq_icms').asExtended;
      Self.Produto_reducao_icms_st := qry.fieldbyname('reducao_icms_st').asExtended;
      Self.Produto_cod_comb := qry.fieldbyname('cod_comb').asString;
      Self.Produto_valor_pauta_bc_st := qry.fieldbyname('valor_pauta_bc_st').asExtended;
      Self.Produto_genero := qry.fieldbyname('genero').asString;
      Self.Produto_lucro_subst_tributaria := qry.fieldbyname('lucro_subst_tributaria').asExtended;
      Self.Produto_leis := qry.fieldbyname('leis').asString;
      Self.Produto_csosn := qry.fieldbyname('csosn').asString;
      Self.Produto_ncm := qry.fieldbyname('ncm').asString;
      Self.Produto_cest := qry.fieldbyname('cest').asString;
      Self.Produto_anp := qry.fieldbyname('anp').asString;
      Self.Produto_pis_cst := qry.fieldbyname('pis_cst').asString;
      Self.Produto_cofins_cst := qry.fieldbyname('cofins_cst').asString;
    end;
  end;

end;

procedure TProduto.Delete(const pID: integer);
begin
  Tdb.ExecQuery('DELETE FROM PRODUTO_PROD WHERE PROD_CODIGO=?', [pID]);
end;

class function TProduto.find(Fields: array of String; Values: array of variant): tArray<TProduto>;
var
  qry: tfdquery;
  arrProdutos: tArray<TProduto>;
begin
  result := nil;
  qry := TProduto.Create.Select(Fields, Values);
  if qry <> nil then
  begin
    qry.first;
    setLength(arrProdutos, qry.RecordCount);
    while not qry.eof do
    begin
      arrProdutos[qry.RecNo - 1] := TProduto.Create(qry.fieldbyname('PROD_CODIGO').AsString);
      qry.next;
    end;
    result := arrProdutos;
  end;
end;

procedure TProduto.Insert;
begin
  Tdb.ExecQuery('INSERT INTO PRODUTO_PROD (PROD_CODIGO,PROD_DESCRICAO, PROD_EAN, PROD_DETALHES,' +
    'PROD_REFERENCIASFABRICA, MARCA, FAMILIA, GRUPO, SUBGRUPO, PROD_CDUNIDADE, TIPO_ITEM, PRECO_CUSTO, FRETE, IMPOSTO, DESP_OPERACIONAIS, CUSTO_MEDIO, MARGEM_L_VAREJO,' +
    'MARGEM_L_DISTRIBUIDOR, MARGEM_L_ATACADO, PROD_PRECO_VAR, PROD_PRECO_DIST, PROD_PRECO_ATAC, PROD_COMISSAO_VAR,' +
    'PROD_COMISSAO_DIST, PROD_COMISSAO_ATAC, PROD_COMISSAO_EXT_VAR, PROD_COMISSAO_EXT_DIST, PROD_COMISSAO_EXT_ATAC,' +
    'PROD_SALDO, PROD_ESTOQMIN, PROD_MAXDESC_VAR, PROD_MAXDESC_DIST, PROD_MAXDESC_ATAC, STATUS_CADASTRAL, COD_BALANCA_1, COD_BALANCA_2,' +
    'COD_BALANCA_3, USA_LOTE, CONTROLADO, ICMS_CST, CODIGO_ORIGEM_MERCADORIA, ALIQ_ICMS, REDUCAO_ICMS_ST, COD_COMB, VALOR_PAUTA_BC_ST, GENERO, ' +
    'LUCRO_SUBST_TRIBUTARIA, LEIS, CSOSN, NCM, CEST, ANP, PIS_CST, COFINS_CST)' +
    'VALUES (?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?)',
    [Self.Produto_PROD_CODIGO,Self.Produto_descricao, Self.Produto_PROD_EAN, Self.Produto_PROD_DETALHES, Self.Produto_PROD_REFERENCIASFABRICA, Self.Produto_marca, Self.Produto_familia,
    Self.Produto_grupo, Self.Produto_sub_grupo, Self.Produto_und, Self.Produto_tipo_item, Self.Produto_preco_custo, Self.Produto_frete, Self.Produto_imposto,
    Self.Produto_desp_operacionais, Self.Produto_custo_medio, Self.Produto_margem_l_varejo, Self.Produto_margem_l_distribuidor, Self.Produto_margem_l_atacado,
    Self.Produto_PROD_PRECO_VAR, Self.Produto_PROD_PRECO_DIST, Self.Produto_PROD_PRECO_ATAC, Self.Produto_PROD_COMISSAO_LOJA_varejo,
    Self.Produto_PROD_COMISSAO_LOJA_distribuidor, Self.Produto_PROD_COMISSAO_LOJA_atacado, Self.Produto_PROD_COMISSAO_EXT_VAR, Self.Produto_PROD_COMISSAO_EXT_DIST,
    Self.Produto_PROD_COMISSAO_EXT_ATAC, Self.Produto_estoque, Self.Produto_PROD_ESTOQMIN, Self.Produto_PROD_MAXDESC_VAR, Self.Produto_PROD_MAXDESC_DIST,
    Self.Produto_PROD_MAXDESC_ATAC, TFunctions.ifthen(Self.Produto_status_cadastral, 'ATIVO', 'INATIVO'), Self.Produto_cod_balanca_1, Self.Produto_cod_balanca_2,
    Self.Produto_cod_balanca_3, TFunctions.ifthen(Self.Produto_usa_lote, 'SIM', 'NAO'), TFunctions.ifthen(Self.Produto_controlado, 'SIM', 'NAO'), Self.Produto_icms_cst,
    Self.Produto_codigo_origem_mercadoria, Self.Produto_aliq_icms, Self.Produto_reducao_icms_st, Self.Produto_cod_comb, Self.Produto_valor_pauta_bc_st, Self.Produto_genero,
    Self.Produto_lucro_subst_tributaria, Self.Produto_leis, Self.Produto_csosn, Self.Produto_ncm, Self.Produto_cest, Self.Produto_anp, Self.Produto_pis_cst,
    Self.Produto_cofins_cst]);

  Self.Produto_PROD_CODIGO := Tdb.SimpleQuery('select PROD_CODIGO from PRODUTO_PROD order by PROD_CODIGO desc limit 1').Fields[0].AsString;
end;

function TProduto.Select(FieldNames: array of String; const Values: array of variant): tfdquery;
begin
  result := Tdb.SimpleQuery('select * from produto_prod ' + Tdb.GenWhere(FieldNames), Values);
end;

procedure TProduto.save;
begin

  if Self.Produto_PROD_CODIGO = '' then
    Self.Insert
  else
    Self.Update(TUpdateKind.ukHard);

end;

function TProduto.Select(const pID: integer): tfdquery;
begin
  result := Self.Select(['PROD_CODIGO'], [pID]);
end;

procedure TProduto.Update(pUk: TUpdateKind);
begin

  Tdb.ExecQuery('UPDATE produto SET PROD_CODIGO=?, PROD_DESCRICAO=?, PROD_EAN=?, PROD_DETALHES=?,' +
    'PROD_REFERENCIASFABRICA=?, MARCA=?, FAMILIA=?, GRUPO=?, SUBGRUPO=?, PROD_CDUNIDADE=?, TIPO_ITEM=?,' +
    'PRECO_CUSTO=?, FRETE=?, IMPOSTO=?, DESP_OPERACIONAIS=?, CUSTO_MEDIO=?, MARGEM_L_VAREJO=?,' +
    'MARGEM_L_DISTRIBUIDOR=?, MARGEM_L_ATACADO=?, PROD_PRECO_VAR=?, PROD_PRECO_DIST=?,' +
    'PROD_PRECO_ATAC=?, PROD_COMISSAO_VAR=?, PROD_COMISSAO_DIST=?, PROD_COMISSAO_ATAC=?,' +
    'PROD_COMISSAO_EXT_VAR=?, PROD_COMISSAO_EXT_DIST=?, PROD_COMISSAO_EXT_ATAC=?, PROD_SALDO=?,' +
    'PROD_ESTOQMIN=?, PROD_MAXDESC_VAR=?, PROD_MAXDESC_DIST=?, PROD_MAXDESC_ATAC=?, STATUS_CADASTRAL=?, COD_BALANCA_1=?,' +
    'COD_BALANCA_2=?, COD_BALANCA_3=?, USA_LOTE=?, CONTROLADO=?, ICMS_CST=?, CODIGO_ORIGEM_MERCADORIA=?, ALIQ_ICMS=?, REDUCAO_ICMS_ST=?,' +
    'COD_COMB=?, VALOR_PAUTA_BC_ST=?, GENERO=?, LUCRO_SUBST_TRIBUTARIA=?, LEIS=?, CSOSN=?, NCM=?, CEST=?, ANP=?, PIS_CST=?, COFINS_CST=?' + 'WHERE codigo=?',
    [Self.PROD_CODIGO, Self.Produto_descricao, Self.Produto_PROD_EAN, Self.Produto_PROD_DETALHES, Self.Produto_PROD_REFERENCIASFABRICA, Self.Produto_marca, Self.Produto_familia,
    Self.Produto_grupo, Self.Produto_sub_grupo, Self.Produto_und, Self.Produto_tipo_item, Self.Produto_preco_custo, Self.Produto_frete, Self.Produto_imposto,
    Self.Produto_desp_operacionais, Self.Produto_custo_medio, Self.Produto_margem_l_varejo, Self.Produto_margem_l_distribuidor, Self.Produto_margem_l_atacado,
    Self.Produto_PROD_PRECO_VAR, Self.Produto_PROD_PRECO_DIST, Self.Produto_PROD_PRECO_ATAC, Self.Produto_PROD_COMISSAO_LOJA_varejo,
    Self.Produto_PROD_COMISSAO_LOJA_distribuidor, Self.Produto_PROD_COMISSAO_LOJA_atacado, Self.Produto_PROD_COMISSAO_EXT_VAR, Self.Produto_PROD_COMISSAO_EXT_DIST,
    Self.Produto_PROD_COMISSAO_EXT_ATAC, Self.Produto_estoque, Self.Produto_PROD_ESTOQMIN, Self.Produto_PROD_MAXDESC_VAR, Self.Produto_PROD_MAXDESC_DIST,
    Self.Produto_PROD_MAXDESC_ATAC, TFunctions.ifthen(Self.Produto_status_cadastral, 'ATIVO', 'INATIVO'), Self.Produto_cod_balanca_1, Self.Produto_cod_balanca_2,
    Self.Produto_cod_balanca_3, TFunctions.ifthen(Self.Produto_usa_lote, 'SIM', 'NAO'), TFunctions.ifthen(Self.Produto_controlado, 'SIM', 'NAO'), Self.Produto_icms_cst,
    Self.Produto_codigo_origem_mercadoria, Self.Produto_aliq_icms, Self.Produto_reducao_icms_st, Self.Produto_cod_comb, Self.Produto_valor_pauta_bc_st, Self.Produto_genero,
    Self.Produto_lucro_subst_tributaria, Self.Produto_leis, Self.Produto_csosn, Self.Produto_ncm, Self.Produto_cest, Self.Produto_anp, Self.Produto_pis_cst,
    Self.Produto_cofins_cst, Self.Produto_PROD_CODIGO]);

end;

class function TProduto.get(Fields: array of String; Values: array of variant): TProduto;
var
  arrProduto: tArray<TProduto>;
begin
  result := nil;
  arrProduto := Self.find(Fields, Values);
  if length(arrProduto) > 0 then
    result := arrProduto[0];
end;

function TProduto.getProduto_aliq_icms: extended;
begin
  result := tformats.coin(Self.Produto_aliq_icms);
end;

function TProduto.getProduto_anp: string;
begin
  result := Self.Produto_anp;
end;

function TProduto.getProduto_cest: string;
begin
  result := Self.Produto_cest;
end;

function TProduto.getProduto_PROD_CODIGO: String;
begin
  result := Self.Produto_PROD_CODIGO;
end;

function TProduto.getProduto_PROD_EAN: string;
begin
  result := Self.Produto_PROD_EAN;
end;

function TProduto.getProduto_codigo_origem_mercadoria: integer;
begin
  result := Self.Produto_codigo_origem_mercadoria;
end;

function TProduto.getProduto_cod_balanca_1: string;
begin
  result := Self.Produto_cod_balanca_1;
end;

function TProduto.getProduto_cod_balanca_2: string;
begin
  result := Self.Produto_cod_balanca_2;
end;

function TProduto.getProduto_cod_balanca_3: string;
begin
  result := Self.Produto_cod_balanca_3;
end;

function TProduto.getProduto_cod_comb: string;
begin
  result := Self.Produto_cod_comb;
end;

function TProduto.getProduto_cofins_cst: string;
begin
  result := Self.Produto_cofins_cst;
end;

function TProduto.getProduto_PROD_COMISSAO_LOJA_atacado: extended;
begin
  result := tformats.coin(Self.Produto_PROD_COMISSAO_LOJA_atacado);
end;

function TProduto.getProduto_PROD_COMISSAO_LOJA_distribuidor: extended;
begin
  result := tformats.coin(Self.Produto_PROD_COMISSAO_LOJA_distribuidor);
end;

function TProduto.getProduto_PROD_COMISSAO_LOJA_varejo: extended;
begin
  result := tformats.coin(Self.Produto_PROD_COMISSAO_LOJA_varejo);
end;

function TProduto.getProduto_controlado: boolean;
begin
  result := Self.Produto_controlado;
end;

function TProduto.getProduto_csosn: string;
begin
  result := Self.Produto_csosn;
end;

function TProduto.getProduto_custo_medio: extended;
begin
  result := tformats.coin(Self.Produto_custo_medio, 4);
end;

function TProduto.getProduto_PROD_MAXDESC_ATAC: extended;
begin
  result := tformats.coin(Self.Produto_PROD_MAXDESC_ATAC);
end;

function TProduto.getProduto_PROD_MAXDESC_DIST: extended;
begin
  result := tformats.coin(Self.Produto_PROD_MAXDESC_DIST);
end;

function TProduto.getProduto_PROD_MAXDESC_VAR: extended;
begin
  result := tformats.coin(Self.Produto_PROD_MAXDESC_VAR);
end;

function TProduto.getProduto_descricao: string;
begin
  result := Self.Produto_descricao;
end;

function TProduto.getProduto_desp_operacionais: extended;
begin
  result := tformats.coin(Self.Produto_desp_operacionais);
end;

function TProduto.getProduto_PROD_ESTOQMIN: extended;
begin
  result := Self.Produto_PROD_ESTOQMIN;
end;

function TProduto.getProduto_PROD_COMISSAO_EXT_ATAC: extended;
begin
  result := tformats.coin(Self.Produto_PROD_COMISSAO_EXT_ATAC);
end;

function TProduto.getProduto_PROD_COMISSAO_EXT_DIST: extended;
begin
  result := tformats.coin(Self.Produto_PROD_COMISSAO_EXT_DIST);
end;

function TProduto.getProduto_PROD_COMISSAO_EXT_VAR: extended;
begin
  result := tformats.coin(Self.Produto_PROD_COMISSAO_EXT_VAR);
end;

function TProduto.getProduto_familia: string;
begin
  result := Self.Produto_familia;
end;

function TProduto.getProduto_frete: extended;
begin
  result := tformats.coin(Self.Produto_frete);
end;

function TProduto.getProduto_genero: string;
begin
  result := Self.Produto_genero;
end;

function TProduto.getProduto_grupo: string;
begin
  result := Self.Produto_grupo;
end;

function TProduto.getProduto_icms_cst: string;
begin
  result := Self.Produto_icms_cst;
end;

function TProduto.getProduto_imposto: extended;
begin
  result := tformats.coin(Self.Produto_imposto);
end;

function TProduto.getProduto_PROD_DETALHES: string;
begin
  result := Self.Produto_PROD_DETALHES;
end;

function TProduto.getProduto_leis: string;
begin
  result := Self.Produto_leis;
end;

function TProduto.getProduto_lucro_subst_tributaria: extended;
begin
  result := tformats.coin(Self.Produto_lucro_subst_tributaria);
end;

function TProduto.getProduto_marca: string;
begin
  result := Self.Produto_marca;
end;

function TProduto.getProduto_margem_l_atacado: extended;
begin
  result := tformats.coin(Self.Produto_margem_l_atacado);
end;

function TProduto.getProduto_margem_l_distribuidor: extended;
begin
  result := tformats.coin(Self.Produto_margem_l_distribuidor);
end;

function TProduto.getProduto_margem_l_varejo: extended;
begin
  result := tformats.coin(Self.Produto_margem_l_varejo);
end;

function TProduto.getProduto_ncm: string;
begin
  result := Self.Produto_ncm;
end;

function TProduto.getProduto_pis_cst: string;
begin
  result := Self.Produto_pis_cst;
end;

function TProduto.getProduto_preco_custo: extended;
begin
  result := tformats.coin(Self.Produto_preco_custo, 4);
end;

function TProduto.getProduto_PROD_PRECO_ATAC: extended;
begin
  result := tformats.coin(Self.Produto_PROD_PRECO_ATAC, 4);
end;

function TProduto.getProduto_PROD_PRECO_DIST: extended;
begin
  result := tformats.coin(Self.Produto_PROD_PRECO_DIST);
end;

function TProduto.getProduto_PROD_PRECO_VAR: extended;
begin
  result := tformats.coin(Self.Produto_PROD_PRECO_VAR, 2);
end;

function TProduto.getProduto_reducao_icms_st: extended;
begin
  result := tformats.coin(Self.Produto_reducao_icms_st);
end;

function TProduto.getProduto_PROD_REFERENCIASFABRICA: string;
begin
  result := Self.Produto_PROD_REFERENCIASFABRICA;
end;

function TProduto.getProduto_estoque: extended;
begin
  result := Self.Produto_estoque;
end;

function TProduto.getProduto_status_cadastral: boolean;
begin
  result := Self.Produto_status_cadastral;
end;

function TProduto.getProduto_sub_grupo: string;
begin
  result := Self.Produto_sub_grupo;
end;

function TProduto.getProduto_tipo_item: string;
begin
  result := Self.Produto_tipo_item;
end;

function TProduto.getProduto_und: string;
begin
  result := Self.Produto_und;
end;

function TProduto.getProduto_usa_lote: boolean;
begin
  result := Self.Produto_usa_lote;
end;

function TProduto.getProduto_valor_pauta_bc_st: extended;
begin
  result := tformats.coin(Self.Produto_valor_pauta_bc_st);
end;

procedure TProduto.setProduto_aliq_icms(value: extended);
begin
  Self.Produto_aliq_icms := tformats.coin(value, 4);
end;

procedure TProduto.setProduto_anp(value: string);
begin
  Self.Produto_anp := value;
end;

procedure TProduto.setProduto_cest(value: string);
begin
  Self.Produto_cest := value;
end;

procedure TProduto.setProduto_PROD_CODIGO(value: String);
begin
  if value = '' then
    raise Exception.Create('O Código do produto deve ser informado!');

  Self.Produto_PROD_CODIGO := value;
end;

procedure TProduto.setProduto_PROD_EAN(value: string);
begin
  if (value <> '') AND (length(value) < 6) then
    raise Exception.Create('O código de barras deve ter mais de 6 dígitos!');

  Self.Produto_PROD_EAN := value;
end;

procedure TProduto.setProduto_codigo_origem_mercadoria(value: integer);
begin
  Self.Produto_codigo_origem_mercadoria := value;
end;

procedure TProduto.setProduto_cod_balanca_1(value: string);
begin
  Self.Produto_cod_balanca_1 := value;
end;

procedure TProduto.setProduto_cod_balanca_2(value: string);
begin
  Self.Produto_cod_balanca_2 := value;
end;

procedure TProduto.setProduto_cod_balanca_3(value: string);
begin
  Self.Produto_cod_balanca_3 := value;
end;

procedure TProduto.setProduto_cod_comb(value: string);
begin
  Self.Produto_cod_comb := value;
end;

procedure TProduto.setProduto_cofins_cst(value: string);
begin
  Self.Produto_cofins_cst := value;
end;

procedure TProduto.setProduto_PROD_COMISSAO_LOJA_atacado(value: extended);
begin
  Self.Produto_PROD_COMISSAO_LOJA_atacado := tformats.coin(value);
end;

procedure TProduto.setProduto_PROD_COMISSAO_LOJA_distribuidor(value: extended);
begin
  Self.Produto_PROD_COMISSAO_LOJA_distribuidor := tformats.coin(value);
end;

procedure TProduto.setProduto_PROD_COMISSAO_LOJA_varejo(value: extended);
begin
  Self.Produto_PROD_COMISSAO_LOJA_varejo := tformats.coin(value);
end;

procedure TProduto.setProduto_controlado(value: boolean);
begin
  Self.Produto_controlado := value;
end;

procedure TProduto.setProduto_csosn(value: string);
begin
  Self.Produto_csosn := value;
end;

procedure TProduto.setProduto_custo_medio(value: extended);
begin
  if tChecks.negative(value) then
    raise Exception.Create('O Custo médio do produto não pode ser um valor negativo!');

  Self.Produto_custo_medio := tformats.coin(value);
end;

procedure TProduto.setProduto_PROD_MAXDESC_ATAC(value: extended);
begin
  Self.Produto_PROD_MAXDESC_ATAC := tformats.coin(value);
end;

procedure TProduto.setProduto_PROD_MAXDESC_DIST(value: extended);
begin
  Self.Produto_PROD_MAXDESC_DIST := tformats.coin(value);
end;

procedure TProduto.setProduto_PROD_MAXDESC_VAR(value: extended);
begin
  Self.Produto_PROD_MAXDESC_VAR := tformats.coin(value);
end;

procedure TProduto.setProduto_Descricao(value: string);
begin
  if value = '' then
    raise Exception.Create('A descrição do produto deve ser informada!');

  Self.Produto_descricao := value;
end;

procedure TProduto.setProduto_desp_operacionais(value: extended);
begin
  Self.Produto_desp_operacionais := tformats.coin(value);
end;

procedure TProduto.setProduto_PROD_ESTOQMIN(value: extended);
begin
  Self.Produto_PROD_ESTOQMIN := value;
end;

procedure TProduto.setProduto_PROD_COMISSAO_EXT_ATAC(value: extended);
begin
  Self.Produto_PROD_COMISSAO_EXT_ATAC := tformats.coin(value);
end;

procedure TProduto.setProduto_PROD_COMISSAO_EXT_DIST(value: extended);
begin
  Self.Produto_PROD_COMISSAO_EXT_DIST := tformats.coin(value);
end;

procedure TProduto.setProduto_PROD_COMISSAO_EXT_VAR(value: extended);
begin
  Self.Produto_PROD_COMISSAO_EXT_VAR := tformats.coin(value);
end;

procedure TProduto.setProduto_familia(value: string);
begin
  Self.Produto_familia := value;
end;

procedure TProduto.setProduto_frete(value: extended);
begin
  Self.Produto_frete := tformats.coin(value);
end;

procedure TProduto.setProduto_genero(value: string);
begin
  Self.Produto_genero := value;
end;

procedure TProduto.setProduto_grupo(value: string);
begin
  Self.Produto_grupo := value;
end;

procedure TProduto.setProduto_icms_cst(value: string);
begin
  Self.Produto_icms_cst := value;
end;

procedure TProduto.setProduto_imposto(value: extended);
begin
  Self.Produto_imposto := value;
end;

procedure TProduto.setProduto_PROD_DETALHES(value: string);
begin
  Self.Produto_PROD_DETALHES := value;
end;

procedure TProduto.setProduto_leis(value: string);
begin
  Self.Produto_leis := value;
end;

procedure TProduto.setProduto_lucro_subst_tributaria(value: extended);
begin
  Self.Produto_lucro_subst_tributaria := tformats.coin(value);
end;

procedure TProduto.setProduto_marca(value: string);
begin
  Self.Produto_marca := value;
end;

procedure TProduto.setProduto_margem_l_atacado(value: extended);
begin
  Self.Produto_margem_l_atacado := tformats.coin(value);
end;

procedure TProduto.setProduto_margem_l_distribuidor(value: extended);
begin
  Self.Produto_margem_l_distribuidor := tformats.coin(value);
end;

procedure TProduto.setProduto_margem_l_varejo(value: extended);
begin
  Self.Produto_margem_l_varejo := tformats.coin(value);
end;

procedure TProduto.setProduto_ncm(value: string);
begin
  if value = '' then
    raise Exception.Create('Código NCM do produto deve ser preenchido.');

  Self.Produto_ncm := value;
end;

procedure TProduto.setProduto_pis_cst(value: string);
begin
  Self.Produto_pis_cst := value;
end;

procedure TProduto.setProduto_preco_custo(value: extended);
begin
  if tChecks.negative(value) then
    raise Exception.Create('O preço de custo do produto, não pode ser negativo!');

  Self.Produto_preco_custo := tformats.coin(value);
end;

procedure TProduto.setProduto_PROD_PRECO_ATAC(value: extended);
begin
  if tChecks.negative(value) then
    raise Exception.Create('O preço de atacado do produto, não pode ser negativo!');

  Self.Produto_PROD_PRECO_ATAC := tformats.coin(value);
end;

procedure TProduto.setProduto_PROD_PRECO_DIST(value: extended);
begin
  if tChecks.negative(value) then
    raise Exception.Create('O preço do distribuidor produto, não pode ser negativo!');

  Self.Produto_PROD_PRECO_DIST := tformats.coin(value);
end;

procedure TProduto.setProduto_PROD_PRECO_VAR(value: extended);
begin
  if tChecks.negative(value) then
    raise Exception.Create('O preço de varejo do produto, não pode ser negativo!');

  Self.Produto_PROD_PRECO_VAR := tformats.coin(value);
end;

procedure TProduto.setProduto_reducao_icms_st(value: extended);
begin
  Self.Produto_reducao_icms_st := tformats.coin(value);
end;

procedure TProduto.setProduto_PROD_REFERENCIASFABRICA(value: string);
begin
  Self.Produto_PROD_REFERENCIASFABRICA := value;
end;

procedure TProduto.setProduto_estoque(value: extended);
begin
  Self.Produto_estoque := value;
end;

procedure TProduto.setProduto_status_cadastral(value: boolean);
begin
  Self.Produto_status_cadastral := value;
end;

procedure TProduto.setProduto_sub_grupo(value: string);
begin
  Self.Produto_sub_grupo := value;
end;

procedure TProduto.setProduto_tipo_item(value: string);
begin
  Self.Produto_tipo_item := value;
end;

procedure TProduto.setProduto_und(value: string);
begin
  if value = '' then
  begin
    raise Exception.Create('A unidade do produto deve ser informada!');
  end;
  Self.Produto_und := value;
end;

procedure TProduto.setProduto_usa_lote(value: boolean);
begin
  Self.Produto_usa_lote := value;
end;

procedure TProduto.setProduto_valor_pauta_bc_st(value: extended);
begin
  Self.Produto_valor_pauta_bc_st := tformats.coin(value);
end;

end.
//Trocou PROD_UNIDADE por PROD_UNIDADE : automaticamente em 16/06/2020 10:11
Trocou PROD_UNIDADE por PROD_UNIDADE : automaticamente em 16/06/2020 10:22
Trocou UNIDADE_MEDIDA por PROD_UNIDADE : automaticamente em 16/06/2020 11:03
Trocou INFO_ADICIONAIS por PROD_DETALHES : automaticamente em 16/06/2020 12:07
Trocou PROD_REFERENCIASFABRICA por PROD_REFERENCIASFABRICA : automaticamente em 16/06/2020 12:38
Trocou REFERENCIA_FABRICANTE por PROD_REFERENCIASFABRICA : automaticamente em 16/06/2020 14:07
Trocou ('MARCA por ('PROD_MARCA : automaticamente em 16/06/2020 16:08
Trocou ('PROD_MARCA por ('MARCA : automaticamente em 16/06/2020 16:08
Trocou ('MARCA' por ('PROD_MARCA' : automaticamente em 16/06/2020 16:09
Trocou PROD_UNIDADE por PROD_CDUNIDADE : automaticamente em 16/06/2020 17:06
Trocou ('FAMILIA por ('PROD_CDFAMILIA : automaticamente em 16/06/2020 17:28
Trocou DESCONTO_M_VAREJO por PROD_MAXDESC_VAR : automaticamente em 16/06/2020 22:27
Trocou DESCONTO_M_ATACADO por PROD_MAXDESC_ATAC : automaticamente em 16/06/2020 22:31
Trocou DESCONTO_M_DISTRIBUIDOR por PROD_MAXDESC_DIST : automaticamente em 16/06/2020 22:34
Trocou COMISSAO_BALCAO por PROD_COMISSAO_LOJA : automaticamente em 16/06/2020 22:41
Trocou BALCAO_COMISSAO_VAREJO por PROD_COMISSAO_VAR : automaticamente em 16/06/2020 22:44
Trocou BALCAO_COMISSAO_ATACADO por PROD_COMISSAO_ATAC : automaticamente em 16/06/2020 22:46
Trocou BALCAO_COMISSAO_DISTRIBUIDOR por PROD_COMISSAO_DIST : automaticamente em 16/06/2020 22:49
Trocou ESTOQUE_MINIMO por PROD_ESTOQMIN : automaticamente em 16/06/2020 22:53
Trocou EXTERNA_COMISSAO_VAREJO por PROD_COMISSAO_EXT_VAR : automaticamente em 17/06/2020 05:52
Trocou EXTERNA_COMISSAO_ATACADO por PROD_COMISSAO_EXT_ATAC : automaticamente em 17/06/2020 05:55
Trocou EXTERNA_COMISSAO_DISTRIBUIDOR por PROD_COMISSAO_EXT_DIST : automaticamente em 17/06/2020 06:30
Trocou PRECO_FINAL_VAREJO por PROD_PRECO_VAR : automaticamente em 17/06/2020 06:55
Trocou PRECO_FINAL_ATACADO por PROD_PRECO_ATAC : automaticamente em 17/06/2020 06:59
Trocou PRECO_FINAL_DISTRIBUIDOR por PROD_PRECO_DIST : automaticamente em 17/06/2020 07:02
Trocou SALDO por @_@_@_@_@_@ : automaticamente em 17/06/2020 21:30
Trocou @_@_@_@_@_@ por PROD_SALDO : automaticamente em 17/06/2020 21:32
