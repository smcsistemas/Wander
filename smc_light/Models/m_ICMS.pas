unit m_ICMS;

interface

uses SYSUTILS, firedac.comp.client, h_db;

Type
  TICMS = class

  private
    ICMS_codigo: String;
    ICMS_descricao: String;

    // getters
    function getICMSCodigo: String;
    function getICMSDescricao: String;

    procedure clearData;
  public
  var
    CSOSN: string;
    property CODIGO: String read getICMSCodigo;
    property DESCRICAO: String read getICMSDescricao;
    constructor create(pk: string = ''); overload;
    function getAll: tfdquery;
  end;

implementation

{ TICMS }

procedure TICMS.clearData;
begin
  ICMS_codigo := '';
  ICMS_descricao := '';
  CSOSN := '';
end;

constructor TICMS.create(pk: string = '');
var
  qry: tfdquery;
begin
  inherited create;
  clearData;
  if pk <> '' then
  begin
    qry := tdb.SimpleQuery('select * from cst_icms where codigo = ?', [pk]);
    if qry = nil then
      raise Exception.create(format('CST de ICMS %s não foi encontrado!', [pk]))
    else
    begin
      self.ICMS_codigo := qry.FieldByName('codigo').AsString;
      self.ICMS_descricao := qry.FieldByName('descricao').AsString;

      if self.ICMS_codigo = '00' then
        CSOSN := '103';

      if self.ICMS_codigo = '10' then
        self.CSOSN := '201';

      if self.ICMS_codigo = '20' then
        self.CSOSN := '101';

      if self.ICMS_codigo = '30' then
        self.CSOSN := '202';

      if self.ICMS_codigo = '40' then
        self.CSOSN := '103';

      if self.ICMS_codigo = '41' then
        self.CSOSN := '102';

      if self.ICMS_codigo = '50' then
        self.CSOSN := '300';

      if self.ICMS_codigo = '51' then
        self.CSOSN := '400';

      if self.ICMS_codigo = '60' then
        self.CSOSN := '500';

      if self.ICMS_codigo = '70' then
        self.CSOSN := '203';

      if self.ICMS_codigo = '90' then
        self.CSOSN := '900';
    end;
  end;
end;

function TICMS.getAll: tfdquery;
begin
  result := tdb.SimpleQuery('SELECT * FROM cst_icms ORDER BY codigo');
end;

function TICMS.getICMSCodigo: String;
begin
  result := self.ICMS_codigo;
end;

function TICMS.getICMSDescricao: String;
begin
  result := self.ICMS_descricao;
end;

end.
