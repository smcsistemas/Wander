unit m_Unidade_Medida;

interface

uses I_Crud, SYSUTILS, FIREDAC.COMP.CLIENT, c_globals, h_db;

Type
  TUnidadeMedida = class(tinterfacedobject, ICRUD)
  private
    { private declarations }
    UnidadeMedida_codigo: integer;
    UnidadeMedida_nome: String;
    UnidadeMedida_sigla: String;

    procedure setProdutoUnidadeCodigo(value: integer);
    procedure setProdutoUnidadeNome(value: String);
    procedure setProdutoUnidadeSigla(value: String);

    function getProdutoUnidadeCodigo: integer;
    function getProdutoUnidadeNome: String;
    function getProdutoUnidadeSigla: String;

    procedure Insert;
    procedure Delete(const pID: integer);
    function Select(FieldNames: array of String; const Values: array of Variant): tfdquery; overload;
    function Select(const pID: integer): tfdquery; overload;
    procedure Update(pUk: TUpdateKind = ukHard);
    procedure clearData;
  protected
    { protected declarations }
  public
    property CODIGO: integer read getProdutoUnidadeCodigo write setProdutoUnidadeCodigo;
    property NOME: String read getProdutoUnidadeNome write setProdutoUnidadeNome;
    property SIGLA: String read getProdutoUnidadeSigla write setProdutoUnidadeSigla;

    class function getAll: tfdquery;
    constructor create; overload;
  end;

implementation

{ TUnidadeMedida }

procedure TUnidadeMedida.clearData;
begin
  UnidadeMedida_codigo := 0;
  UnidadeMedida_nome := '';
  UnidadeMedida_sigla := '';
end;

constructor TUnidadeMedida.create;
begin
  inherited create;

  clearData;
end;

procedure TUnidadeMedida.Delete(const pID: integer);
begin
  Tdb.ExecQuery('DELETE FROM produto_unidade WHERE codigo = ?', [pID]);
end;

class function TUnidadeMedida.getAll: tfdquery;
begin
  result := Tdb.SimpleQuery('SELECT * FROM produto_unidade ORDER BY nome');
end;

function TUnidadeMedida.getProdutoUnidadeCodigo: integer;
begin
  result := self.UnidadeMedida_codigo;
end;

function TUnidadeMedida.getProdutoUnidadeNome: String;
begin
  result := self.UnidadeMedida_nome;
end;

function TUnidadeMedida.getProdutoUnidadeSigla: String;
begin
  result := self.UnidadeMedida_sigla;
end;

procedure TUnidadeMedida.Insert;
begin
  Tdb.ExecQuery('INSERT INTO produto_unidade VALUES(default,?,?)', [self.UnidadeMedida_nome, self.UnidadeMedida_sigla]);

  self.UnidadeMedida_codigo := self.Select(['NOME', 'SIGLA'], [self.UnidadeMedida_nome, self.UnidadeMedida_sigla]).FieldByName('CODIGO').AsInteger;
end;

function TUnidadeMedida.Select(const pID: integer): tfdquery;
begin
  result := self.Select(['CODIGO'], [pID]);
end;

function TUnidadeMedida.Select(FieldNames: array of String; const Values: array of Variant): tfdquery;
begin
  result := Tdb.SimpleQuery('SELECT * FROM produto_unidade ' + Tdb.GenWhere(FieldNames), Values);
end;

procedure TUnidadeMedida.setProdutoUnidadeCodigo(value: integer);
begin
  self.UnidadeMedida_codigo := value;
end;

procedure TUnidadeMedida.setProdutoUnidadeNome(value: String);
begin
  if value = '' then
    raise Exception.create('Nome da unidade de medida deve ser informada.');

  self.UnidadeMedida_nome := value;
end;

procedure TUnidadeMedida.setProdutoUnidadeSigla(value: String);
begin
  if value = '' then
    raise Exception.create('Sigla da unidade de medida deve ser informada.');

  self.UnidadeMedida_sigla := value;
end;

procedure TUnidadeMedida.Update(pUk: TUpdateKind);
begin
  case pUk of
    ukSoft:
      ;
    ukHard:
      Tdb.ExecQuery('UPDATE produto_unidade SET nome = ?, sigla = ? WHERE codigo = ?', [self.UnidadeMedida_nome, self.UnidadeMedida_sigla, self.UnidadeMedida_codigo]);
  end;
end;

end.
