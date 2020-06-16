//Verificado automaticamente em 16/06/2020 09:28
unit m_Cofins;

interface

uses SYSUTILS, firedac.comp.client, h_db;

Type
  TCofins = class
  private
    COFINS_codigo: string;
    COFINS_descricao: string;

    function getCofinsCodigo: string;
    function getCofinsDescricao: string;

  public
    constructor create(pk: string = ''); overload;

    procedure clearData;
    function getAll: TFDQUERY;

    property CODIGO: string read getCofinsCodigo;
    property DESCRICAO: string read getCofinsDescricao;

  end;

implementation

{ TCofins }

procedure TCofins.clearData;
begin
  COFINS_codigo := '';
  COFINS_descricao := '';
end;

constructor TCofins.create(pk: string = '');
var
  qry: TFDQUERY;
begin
  inherited create;
  clearData;
  if pk <> '' then
  begin
    qry := tdb.SimpleQuery('select * from cst_cofins where codigo = ?', [pk]);
    if qry = nil then
      raise Exception.create(format('CST da COFINS %s não foi encontrado!', [pk]))
    else
    begin
      self.COFINS_codigo := qry.FieldByName('codigo').AsString;
      self.COFINS_descricao := qry.FieldByName('descricao').AsString;
    end;
  end;
end;

function TCofins.getAll: TFDQUERY;
begin
  result := tdb.SimpleQuery('SELECT * FROM cst_cofins ORDER BY codigo');
end;

function TCofins.getCofinsCodigo: string;
begin
  result := self.COFINS_codigo;
end;

function TCofins.getCofinsDescricao: string;
begin

  result := self.COFINS_descricao;
end;

end.
