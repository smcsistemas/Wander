unit m_Ncm;

interface

uses firedac.comp.client, system.SysUtils;

type
  TNcm = class

  private
    Ncm_Ncm: string;
    Ncm_Cest: string;
    Ncm_Descricao: string;

    function getNcm_Ncm: string;
    function getNcm_Cest: string;
    function getNcm_Descricao: string;

    procedure ClearData;

  public
    property NCM: string read getNcm_Ncm;
    property CEST: string read getNcm_Cest;
    property DESCRICAO: string read getNcm_Descricao;

    constructor Create(pNCM: string);
    class function get(Fields: array of string; values: array of variant): TNcm;
    class function find(Fields: array of string; values: array of variant): TArray<TNcm>;
  end;

implementation

{ TNcm }

uses h_db;

procedure TNcm.ClearData;
begin
  Ncm_Ncm := '';
  Ncm_Cest := '';
  Ncm_Descricao := '';
end;

constructor TNcm.Create(pNCM: string);
var
  qry: tfdquery;

begin
  inherited Create;
  ClearData;
  qry := Tdb.SimpleQuery('select cest, descricao from tab_cest where ncm=?', [pNCM]);
  if qry <> nil then
  begin
    self.Ncm_Ncm := pNCM;
    self.Ncm_Cest := qry.fieldbyname('cest').asString;
    self.Ncm_Descricao := qry.fieldbyname('descricao').asString;
  end;
end;

class function TNcm.find(Fields: array of string; values: array of variant): TArray<TNcm>;
var
  qry: tfdquery;
  arrNCMs: TArray<TNcm>;
begin
  result := nil;
  qry := Tdb.SimpleQuery('select * from tab_cest ' + Tdb.GenWhere(Fields), values);
  if qry <> nil then
  begin
    qry.first;
    setLength(arrNCMs, qry.RecordCount);
    while not qry.eof do
    begin
      arrNCMs[qry.RecNo - 1] := TNcm.Create(qry.fieldbyname('NCM').asString);
      qry.next;
    end;
    result := arrNCMs;
  end;
end;

class function TNcm.get(Fields: array of string; values: array of variant): TNcm;
var
  arrNCM: TArray<TNcm>;
begin
  result := nil;
  arrNCM := self.find(Fields, values);
  if length(arrNCM) > 0 then
    result := arrNCM[0];
end;

function TNcm.getNcm_Cest: string;
begin
  result := self.Ncm_Cest
end;

function TNcm.getNcm_Descricao: string;
begin
  result := self.Ncm_Descricao
end;

function TNcm.getNcm_Ncm: string;
begin
  result := self.Ncm_Ncm
end;

end.
