//Verificado automaticamente em 16/06/2020 09:27
unit m_Cfop;

interface

uses firedac.comp.client, system.SysUtils;

type
  TCfop = class
  private
    Cfop_Cfop: integer;
    Cfop_Descricao: string;

    function getCfop_Cfop: integer;
    function getCfop_Descricao: string;

    procedure ClearData;

  public
    property CFOP: integer read getCfop_Cfop;
    property DESCRICAO: string read getCfop_Descricao;

    function getAll: tfdquery;

    constructor Create(pCFOP: integer = 0);
  end;

implementation

{ TTabela_Cfop }

uses h_db;

procedure TCfop.ClearData;
begin
  Cfop_Cfop := 0;
  Cfop_Descricao := '';
end;

constructor TCfop.Create(pCFOP: integer);
var
  qry: tfdquery;

begin
  inherited Create;
  ClearData;
  if pCFOP <> 0 then
  begin
    qry := Tdb.SimpleQuery('select descricao from cfop where codigo=?', [pCFOP]);
    if qry <> nil then
    begin
      self.Cfop_Cfop := pCFOP;
      self.Cfop_Descricao := qry.fieldbyname('descricao').AsString;
    end
    else
    begin
      raise Exception.Create(format('CFOP %d não cadastrado!', [pCFOP]));
      self.Destroy;
    end;
  end;
end;

function TCfop.getAll: tfdquery;
begin
  result := Tdb.SimpleQuery('SELECT * FROM cfop ORDER BY codigo');
end;

function TCfop.getCfop_Cfop: integer;
begin
  result := self.Cfop_Cfop;
end;

function TCfop.getCfop_Descricao: string;
begin
  result := self.Cfop_Descricao;
end;

end.
