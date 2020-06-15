unit m_Etiqueta;
{
========================================================================================================================================
ALT|   DATA |HORA |UNIT                        |Descrição                                                                              |
---|--------|-----|----------------------------|----------------------------------------------------------------------------------------
302|15/06/20|10:14|m_Etiqueta                  |Passa a tratar PRODUTO_PROD(PROD_CODIGO) ao invés de PRODUTO(CODIGO)
========================================================================================================================================
}
interface

uses m_Produto, firedac.comp.client, system.SysUtils, I_Crud, c_Globals, h_Checks, m_Usuario;

type
  TEtiqueta = class(tinterfacedobject, icrud)
  private
    m_id: integer;
    m_descricao_produto: string;

  const
    table_name = ' etiqueta ';
    procedure setm_descricao_produto(value: string);
    function getm_descricao_produto: string;

    procedure ClearData;

    procedure Insert;
    procedure Delete(const pID: integer);
    function Select(FieldNames: array of String; const Values: array of Variant): tfdquery; overload;
    function Select(const pID: integer): tfdquery; overload;
    procedure Update(pUk: TUpdateKind = ukHard);

  public

    property DESCRICAO: string read getm_descricao_produto write setm_descricao_produto;

    constructor create(pk: integer = 0); overload;

    class function Find(Fields: array of String; Values: array of Variant): tArray<TEtiqueta>;
    class function Get(Fields: array of String; Values: array of Variant): TEtiqueta;

    procedure Save;

  var
    produto: TProduto;
    usuario: TUsuario;

  end;

implementation

{ TEtiqueta }

uses h_DB;

procedure TEtiqueta.ClearData;
begin
  self.m_id := 0;
  self.m_descricao_produto := '';
  self.produto := nil;
  self.usuario := nil;
end;

constructor TEtiqueta.create(pk: integer);
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

      self.m_id := qry.FieldByName('ID').AsInteger;
      self.m_descricao_produto := qry.FieldByName('DESCRICAO').AsString;
      self.produto := TProduto.create(qry.FieldByName('ID_PRODUTO').AsString);
      self.usuario := TUsuario.create(qry.FieldByName('ID_USUARIO').AsInteger);

    end
    else
      raise Exception.create('Etiqueta não encontrada!');
  end;

end;

procedure TEtiqueta.Delete(const pID: integer);
begin

end;

class function TEtiqueta.Find(Fields: array of String; Values: array of Variant): tArray<TEtiqueta>;
var
  qry: tfdquery;
  arrEtiquetas: tArray<TEtiqueta>;
begin
  result := nil;
  qry := TDB.SimpleQuery('select * from ' + table_name + ' ' + TDB.GenWhere(Fields), Values);
  if qry <> nil then
  begin
    qry.first;
    setLength(arrEtiquetas, qry.RecordCount);
    while not qry.eof do
    begin
      arrEtiquetas[qry.RecNo - 1] := TEtiqueta.create(qry.FieldByName('ID').AsInteger);
      qry.next;
    end;
    result := arrEtiquetas;
  end;
end;

class function TEtiqueta.Get(Fields: array of String; Values: array of Variant): TEtiqueta;
var
  arrEtiqueta: tArray<TEtiqueta>;
begin
  result := nil;
  arrEtiqueta := self.Find(Fields, Values);
  if length(arrEtiqueta) > 0 then
    result := arrEtiqueta[0];
end;

function TEtiqueta.getm_descricao_produto: string;
begin
  result := self.m_descricao_produto;
end;

procedure TEtiqueta.Insert;
begin
  TDB.ExecQuery('INSERT INTO ' + table_name + '(DESCRICAO,ID_PRODUTO,ID_USUARIO) values(?,?,?)', [self.m_descricao_produto, produto.PROD_CODIGO, usuario.id]);

  self.m_id := TDB.SimpleQuery('select id from ' + table_name + ' where DESCRICAO=? and ID_PRODUTO=? and ID_USUARIO=?', [self.m_descricao_produto, produto.PROD_CODIGO, usuario.id])
    .FieldByName('ID').AsInteger;

end;

procedure TEtiqueta.Save;
begin

  if self.m_id = 0 then
    self.Insert
  else
    self.Update;

end;

function TEtiqueta.Select(FieldNames: array of String; const Values: array of Variant): tfdquery;
begin
  result := TDB.SimpleQuery('SELECT * FROM ' + table_name + ' ' + TDB.GenWhere(FieldNames), Values);
end;

function TEtiqueta.Select(const pID: integer): tfdquery;
begin
  result := self.Select(['ID'], [pID]);
end;

procedure TEtiqueta.setm_descricao_produto(value: string);
begin
  if value.IsEmpty then
    raise Exception.create('Descrição do produto para etiqueta deve ser preenchida!');

  self.m_descricao_produto := value;
end;

procedure TEtiqueta.Update(pUk: TUpdateKind);
begin
  TDB.ExecQuery('UPDATE ' + table_name + ' SET DESCRICAO=?, ID_PRODUTO=?, ID_USUARIO=? WHERE ID=?', [self.m_descricao_produto, self.produto.PROD_CODIGO, self.usuario.id, self.m_id])
end;

end.
