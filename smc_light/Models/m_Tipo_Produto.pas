//Verificado automaticamente em 16/06/2020 09:28
unit m_Tipo_Produto;

interface

uses I_Crud, SYSUTILS, FIREDAC.COMP.CLIENT, c_globals, h_db;

TYPE
  TTipo_Produto = class(tinterfacedobject, ICRUD)

  private
    TipoProduto_codigo: integer;
    TipoProduto_descricao: String;

    procedure setTipoProdutoCodigo(value: integer);
    procedure setTipoProdutoDescricao(value: String);

    function getTipoProdutoCodigo: integer;
    function getTipoProdutoDescricao: String;

    procedure Insert;
    procedure Delete(const pID: integer);
    function Select(FieldNames: array of String; const Values: array of Variant): tfdquery; overload;
    function Select(const pID: integer): tfdquery; overload;
    procedure Update(pUk: TUpdateKind = ukHard);
    procedure clearData;

  public
    property CODIGO: integer read getTipoProdutoCodigo write setTipoProdutoCodigo;
    property DESCRICAO: String read getTipoProdutoDescricao write setTipoProdutoDescricao;

    constructor crate; overload;
    function getAll: tfdquery;
  end;

implementation

{ TTipo_Produto }

procedure TTipo_Produto.clearData;
begin
  TipoProduto_codigo := 0;
  TipoProduto_descricao := '';
end;

constructor TTipo_Produto.crate;
begin
  inherited create;

  clearData;
end;

procedure TTipo_Produto.Delete(const pID: integer);
begin
  Tdb.ExecQuery('DELETE FROM produto_tipo_item WHERE codigo = ?', [pID]);
end;

function TTipo_Produto.getAll: tfdquery;
begin
  result := Tdb.SimpleQuery('SELECT * FROM produto_tipo_item ORDER BY CODIGO');
end;

function TTipo_Produto.getTipoProdutoCodigo: integer;
begin
  result := self.TipoProduto_codigo;
end;

function TTipo_Produto.getTipoProdutoDescricao: String;
begin
  result := self.TipoProduto_descricao;
end;

procedure TTipo_Produto.Insert;
begin
  Tdb.ExecQuery('INSERT INTO produto_tipo_item VALUES(default,?)', [self.TipoProduto_descricao]);

  self.TipoProduto_codigo := self.Select(['DESCRICAO'], [self.TipoProduto_descricao]).FieldByName('CODIGO').AsInteger;
end;

function TTipo_Produto.Select(FieldNames: array of String; const Values: array of Variant): tfdquery;
begin
  result := Tdb.SimpleQuery('SELECT * FROM produto_tipo_item ' + Tdb.GenWhere(FieldNames), Values);
end;

function TTipo_Produto.Select(const pID: integer): tfdquery;
begin
  result := self.Select(['CODIGO'], [pID]);
end;

procedure TTipo_Produto.setTipoProdutoCodigo(value: integer);
begin
  self.TipoProduto_codigo := value;
end;

procedure TTipo_Produto.setTipoProdutoDescricao(value: String);
begin
  if value = '' then
    raise Exception.create('Descricao deo tipo de item deve ser informada.');

  self.TipoProduto_descricao := value;
end;

procedure TTipo_Produto.Update(pUk: TUpdateKind);
begin
  case pUk of
    ukSoft:
      ;
    ukHard:
      Tdb.ExecQuery('UPDATE produto_tipo_item SET descricao = ? WHERE codigo = ?', [self.TipoProduto_descricao, self.TipoProduto_codigo]);
  end;
end;

end.
