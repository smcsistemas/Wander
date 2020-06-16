//Verificado automaticamente em 16/06/2020 09:28
unit m_Csosn;

interface

uses firedac.comp.client, system.SysUtils, h_db, strutils;

type
  TCsosn = class
  private
    Csosn_Codigo: string;
    Csosn_Descricao: string;

    function getCsosn_Codigo: string;
    function getCsosn_Descricao: string;

    procedure clearData;

  public
    property CSOSN: string read getCsosn_Codigo;
    property DESCRICAO: string read getCsosn_Descricao;

  var
    CST_ICMS: string;

    constructor Create(pCSOSN: string = '');
    function getAll: tfdQuery;
  end;

implementation

procedure TCsosn.clearData;
begin
  Csosn_Codigo := '';
  Csosn_Descricao := '';
  CST_ICMS := '';
end;

constructor TCsosn.Create(pCSOSN: string = '');
var
  qry: tfdQuery;

begin
  inherited Create;
  clearData;
  if pCSOSN <> '' then
  begin
    qry := Tdb.SimpleQuery('select descricao from csosn where codigo=?', [pCSOSN]);
    if qry <> nil then
    begin
      self.Csosn_Codigo := pCSOSN;
      self.Csosn_Descricao := qry.fieldbyname('descricao').AsString;

      if self.Csosn_Codigo = '101' then
        CST_ICMS := '40';

      if self.Csosn_Codigo = '102' then
        CST_ICMS := '41';

      if self.Csosn_Codigo = '103' then
        CST_ICMS := '40';

      if self.Csosn_Codigo = '201' then
        CST_ICMS := '10';

      if self.Csosn_Codigo = '202' then
        CST_ICMS := '30';

      if self.Csosn_Codigo = '203' then
        CST_ICMS := '70';

      if self.Csosn_Codigo = '300' then
        CST_ICMS := '50';

      if self.Csosn_Codigo = '400' then
        CST_ICMS := '51';

      if self.Csosn_Codigo = '500' then
        CST_ICMS := '60';

      if self.Csosn_Codigo = '900' then
        CST_ICMS := '90';
    end
    else
    begin
      raise Exception.Create(format('CSOSN %d Inexistente.', [pCSOSN]));
      self.Destroy;
    end;
  end;

end;

function TCsosn.getAll: tfdQuery;
begin
  result := Tdb.SimpleQuery('SELECT * FROM csosn ORDER BY codigo');
end;

function TCsosn.getCsosn_Codigo: string;
begin
  result := self.Csosn_Codigo
end;

function TCsosn.getCsosn_Descricao: string;
begin
  result := self.Csosn_Descricao
end;

end.
