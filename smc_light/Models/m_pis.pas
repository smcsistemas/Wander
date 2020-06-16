//Verificado automaticamente em 16/06/2020 09:28
unit m_Pis;

interface

uses SYSUTILS, firedac.comp.client, h_db;

Type
  TPIS = class(tinterfacedobject)

  private
    PIS_cocigo: string;
    PIS_descricao: String;

    function getPisCodigo: String;
    function getPisDescricao: String;

  public

    property CODIGO: String read getPisCodigo;
    property DESCRICAO: String read getPisDescricao;

    constructor create(pk: string = ''); overload;
    procedure clearData;
    function getAll: TFDQUERY;

  end;

implementation

{ TPIS }

procedure TPIS.clearData;
begin
  PIS_cocigo := '';
  PIS_descricao := '';
end;

constructor TPIS.create(pk: string = '');
var
  qry: TFDQUERY;
begin
  inherited create;
  clearData;
  if pk <> '' then
  begin
    qry := tdb.SimpleQuery('select * from cst_pis where codigo = ?', [pk]);
    if qry = nil then
      raise Exception.create(format('CST do PIS %s não foi encontrado!', [pk]))
    else
    begin
      self.PIS_cocigo := qry.FieldByName('codigo').AsString;
      self.PIS_descricao := qry.FieldByName('descricao').AsString;
    end;
  end;
end;

function TPIS.getAll: TFDQUERY;
begin
  result := tdb.SimpleQuery('SELECT * FROM cst_pis ORDER BY CODIGO');
end;

function TPIS.getPisCodigo: String;
begin
  result := self.PIS_cocigo;
end;

function TPIS.getPisDescricao: String;
begin
  result := self.PIS_descricao;
end;

end.
