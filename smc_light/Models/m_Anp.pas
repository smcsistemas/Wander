//Verificado automaticamente em 16/06/2020 09:27
unit m_Anp;

interface

uses firedac.comp.client, system.SysUtils;

type
  TAnp = class
  private
    Anp_Codigo: integer;
    Anp_Descricao: string;

    function getAnp_Codigo: integer;
    function getAnp_Descricao: string;

    procedure clearData;

  public
    property ANP: integer read getAnp_Codigo;
    property DESCRICAO: string read getAnp_Descricao;

    constructor create(pAnp: integer);
  end;

implementation

{ TAnp }

uses h_db;

procedure TAnp.clearData;
begin
  Anp_Codigo := 0;
  Anp_Descricao := '';
end;

constructor TAnp.create(pAnp: integer);
var
  qry: tfdquery;

begin
  inherited create;
  clearData;
  qry := Tdb.SimpleQuery('select descricao from anp where codigo=?', [pAnp]);
  if qry <> nil then
  begin
    self.Anp_Codigo := pAnp;
    self.Anp_Descricao := qry.fieldbyname('descricao').AsString;
  end
end;

function TAnp.getAnp_Codigo: integer;
begin
  result := self.Anp_Codigo
end;

function TAnp.getAnp_Descricao: string;
begin
  result := self.Anp_Descricao
end;

end.
