unit m_Marca;
{
========================================================================================================================================
ALT|   DATA |HORA |UNIT                        |Descrição                                                                              |
---|--------|-----|----------------------------|----------------------------------------------------------------------------------------
307|15/06/20|10:14|m_Marca                     |Passa a tratar PRODUTO_PROD(PROD_CODIGO) ao invés de PRODUTO(CODIGO)
========================================================================================================================================
}

interface

uses SYSUTILS, I_Crud, firedac.comp.client, c_globals, h_db;

Type
  TMarca = class(tinterfacedobject, ICRUD)

  private
    Marca_codigo: integer;
    Marca_nome: String;
    Marca_data_cadastro: TDate;

    // getter
    function getMarcaCodigo: integer;
    function getMarcaNome: String;
    function getMarcaDataCadastro: TDate;
    // setters
    procedure setMarcaCodigo(value: integer);
    procedure setMarcaNome(value: String);
    procedure setMarcaDataCadastro(value: TDate);

    // crud
    procedure Insert;
    procedure Delete(const pID: integer);
    function Select(FieldNames: array of String; const Values: array of Variant): tfdquery; overload;
    function Select(const pID: integer): tfdquery; overload;
    procedure Update(pUk: TUpdateKind = ukHard);
    procedure clearData;
  public
    property CODIGO: integer read getMarcaCodigo write setMarcaCodigo;
    property NOME: String read getMarcaNome write setMarcaNome;
    property DATACADASTRO: TDate read getMarcaDataCadastro write setMarcaDataCadastro;
    constructor create; overload;
    function getAll: tfdquery;
  end;

implementation

{ TMarca }

procedure TMarca.clearData;
begin
  Marca_codigo := 0;
  Marca_nome := '';
  Marca_data_cadastro := 0;
end;

constructor TMarca.create;
begin
  inherited create;

  clearData;
end;

procedure TMarca.Delete(const pID: integer);
begin
  Tdb.ExecQuery('DELETE FROM produto_marca WHERE CODIGO = ?', [pID]);
end;

function TMarca.getAll: tfdquery;
begin
  result := Tdb.SimpleQuery('SELECT * FROM produto_marca ORDER BY nome');
end;

function TMarca.getMarcaCodigo: integer;
begin
  result := self.Marca_codigo;
end;

function TMarca.getMarcaDataCadastro: TDate;
begin
  result := self.getMarcaDataCadastro;
end;

function TMarca.getMarcaNome: String;
begin
  result := self.getMarcaNome;
end;

procedure TMarca.Insert;
begin
  Tdb.ExecQuery('INSERT INTO produto_marca VALUES(default,?,?)', [self.Marca_nome, self.Marca_data_cadastro]);

  self.Marca_codigo := self.Select(['NOME', 'DATA_CADASTRO'], [self.Marca_nome, self.Marca_data_cadastro]).FieldByName('CODIGO').AsInteger;
end;

function TMarca.Select(FieldNames: array of String; const Values: array of Variant): tfdquery;
begin
  result := Tdb.SimpleQuery('SELECT * FROM produto_marca ' + Tdb.GenWhere(FieldNames), Values);
end;

function TMarca.Select(const pID: integer): tfdquery;
begin
  result := self.Select(['CODIGO'], [pID]);
end;

procedure TMarca.setMarcaCodigo(value: integer);
begin
  self.Marca_codigo := value;
end;

procedure TMarca.setMarcaDataCadastro(value: TDate);
begin
  if value = 0 then
    raise Exception.create('Data de cadastro deve ser informada.');

  self.Marca_data_cadastro := value;
end;

procedure TMarca.setMarcaNome(value: String);
begin
  if value = '' then
    raise Exception.create('Nome da marca deve ser informado.');

  self.Marca_nome := value;
end;

procedure TMarca.Update(pUk: TUpdateKind);
begin
  case pUk of
    ukSoft:
      ;
    ukHard:
      Tdb.ExecQuery('UPDATE produto_marca SET nome = ?, data_cadastro = ? WHERE codigo = ?', [self.Marca_nome, self.Marca_data_cadastro, self.Marca_codigo]);
  end;
end;

end.
