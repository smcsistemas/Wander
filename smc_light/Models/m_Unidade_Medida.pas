unit m_Unidade_Medida;
{
========================================================================================================================================
ALT|   DATA |HORA |UNIT                        |Descrição                                                                              |
---|--------|-----|----------------------------|----------------------------------------------------------------------------------------
350|15/06/20|21:56|m_Unidade_Medida            |Tratando tabela UNIDADE_UNI ao invés de PRODUTO_UNIDADE
========================================================================================================================================
}
interface

uses I_Crud, SYSUTILS, FIREDAC.COMP.CLIENT, c_globals, h_db;

Type
  TUnidadeMedida = class(tinterfacedobject, ICRUD)
  private
    { private declarations }
    UnidadeMedida_UNI_CODIGO   : String;
    UnidadeMedida_UNI_DESCRICAO: String;
    UnidadeMedida_UNI_DECIMAIS : Integer;

    procedure setProdutoUnidadeUNI_CODIGO(value: String);
    procedure setProdutoUnidadeUNI_DESCRICAO(value: String);
    procedure setProdutoUnidadeUNI_DECIMAIS(value: Integer);

    function getProdutoUnidadeUNI_CODIGO   : String;
    function getProdutoUnidadeUNI_DESCRICAO: String;
    function getProdutoUnidadeUNI_DECIMAIS : Integer;

    procedure Insert;
    procedure Delete(const pID: integer);
    function Select(FieldNames: array of String; const Values: array of Variant): tfdquery; overload;
    function Select(const pID: integer): tfdquery; overload;
    procedure Update(pUk: TUpdateKind = ukHard);
    procedure clearData;
  protected
    { protected declarations }
  public
    property UNI_CODIGO   : string  read getProdutoUnidadeUNI_CODIGO    write setProdutoUnidadeUNI_CODIGO;
    property UNI_DESCRICAO: String  read getProdutoUnidadeUNI_DESCRICAO write setProdutoUnidadeUNI_DESCRICAO;
    property UNI_DECIMAIS : Integer read getProdutoUnidadeUNI_DECIMAIS  write setProdutoUnidadeUNI_DECIMAIS;

    class function getAll: tfdquery;
    constructor create; overload;
  end;

implementation

{ TUnidadeMedida }

procedure TUnidadeMedida.clearData;
begin
  UnidadeMedida_UNI_CODIGO    := '';
  UnidadeMedida_UNI_DESCRICAO := '';
  UnidadeMedida_UNI_DECIMAIS  :=  0;
end;

constructor TUnidadeMedida.create;
begin
  inherited create;

  clearData;
end;

procedure TUnidadeMedida.Delete(const pID: integer);
begin
  Tdb.ExecQuery('DELETE FROM UNIDADE_UNI WHERE UNI_CODIGO = ?', [pID]);
end;

class function TUnidadeMedida.getAll: tfdquery;
begin
  result := Tdb.SimpleQuery('SELECT * FROM UNIDADE_UNI ORDER BY UNI_DESCRICAO');
end;

function TUnidadeMedida.getProdutoUnidadeUNI_CODIGO: String;
begin
  result := self.UnidadeMedida_UNI_CODIGO;
end;

function TUnidadeMedida.getProdutoUnidadeUNI_DESCRICAO: String;
begin
  result := self.UnidadeMedida_UNI_DESCRICAO;
end;

function TUnidadeMedida.getProdutoUnidadeUNI_DECIMAIS: Integer;
begin
  result := self.UnidadeMedida_UNI_DECIMAIS;
end;

procedure TUnidadeMedida.Insert;
begin
  Tdb.ExecQuery('INSERT INTO UNIDADE_UNI VALUES(?,?,?)', [self.UnidadeMedida_UNI_CODIGO, self.UnidadeMedida_UNI_DESCRICAO, self.UnidadeMedida_UNI_DECIMAIS]);

  self.UnidadeMedida_UNI_codigo := self.Select(['DESCRICAO', 'DECIMAIS'], [self.UnidadeMedida_UNI_DESCRICAO, self.UnidadeMedida_UNI_DECIMAIS]).FieldByName('UNI_CODIGO').AsString;
end;

function TUnidadeMedida.Select(const pID: integer): tfdquery;
begin
  result := self.Select(['UNI_CODIGO'], [pID]);
end;

function TUnidadeMedida.Select(FieldNames: array of String; const Values: array of Variant): tfdquery;
begin
  result := Tdb.SimpleQuery('SELECT * FROM UNIDADE_UNI ' + Tdb.GenWhere(FieldNames), Values);
end;

procedure TUnidadeMedida.setProdutoUnidadeUNI_CODIGO(value: String);
begin
  self.UnidadeMedida_UNI_CODIGO := value;
end;

procedure TUnidadeMedida.setProdutoUnidadeUNI_DESCRICAO(value: String);
begin
  if value = '' then
    raise Exception.create('Descrição da unidade de medida deve ser informada.');

  self.UnidadeMedida_UNI_DESCRICAO := value;
end;

procedure TUnidadeMedida.setProdutoUnidadeUNI_DECIMAIS(value: integer);
begin
  if value = 0 then
    raise Exception.create('Nr de casas decimais da unidade de medida deve ser informada.');

  self.UnidadeMedida_UNI_DECIMAIS := value;
end;

procedure TUnidadeMedida.Update(pUk: TUpdateKind);
begin
  case pUk of
    ukSoft:
      ;
    ukHard:
      Tdb.ExecQuery('UPDATE UNIDADE_UNI SET UNI_DESCRICAO = ?, UNI_DECIMAIS = ? WHERE UNI_CODIGO = ?', [self.UnidadeMedida_UNI_DESCRICAO, self.UnidadeMedida_UNI_DECIMAIS, self.UnidadeMedida_UNI_CODIGO]);
  end;
end;

end.
