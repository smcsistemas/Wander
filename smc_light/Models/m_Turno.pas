unit m_turno;

interface

uses SYSUTILS, firedac.comp.client, h_db, i_crud, c_Globals;

type
  TTurno = class(TInterfacedObject, iCrud)
  private
    turno_ID: integer;
    turno_Nome: string;

    procedure clearData;

    procedure Insert;
    procedure Delete(const pID: integer);
    function Select(FieldNames: array of String; const Values: array of Variant): tfdquery; overload;
    function Select(const pID: integer): tfdquery; overload;
    procedure Update(pUk: TUpdateKind = ukHard);

    function getturno_ID: integer;
    function getturno_Nome: string;

    procedure setturno_Nome(value: string);

  public

    property ID: integer read getturno_ID;
    property NOME: string read getturno_Nome write setturno_Nome;

    constructor Create(pk: integer = 0); overload;

    procedure Salvar;
    function getAll: tfdquery;

  end;

implementation

{ Tturno }

procedure TTurno.clearData;
begin
  turno_ID := 0;
  turno_Nome := '';
end;

constructor TTurno.Create(pk: integer = 0);
var
  qry: tfdquery;
begin

  inherited Create;
  clearData;

  if pk <> 0 then
  begin
    qry := self.Select(['ID'], [pk]);
    if qry = nil then
      raise Exception.Create('Turno não cadastrado!')
    else
    begin

      self.turno_ID := qry.Fieldbyname('ID').AsInteger;
      self.turno_Nome := qry.Fieldbyname('NOME').asString;

    end;
  end;

end;

procedure TTurno.Delete(const pID: integer);
begin
  Tdb.ExecQuery('DELETE FROM turno WHERE ID =?', [pID]);
end;

function TTurno.getAll: tfdquery;
begin
  result := Tdb.SimpleQuery('SELECT * FROM turno');
end;

function TTurno.getturno_ID: integer;
begin
  result := self.turno_ID;
end;

function TTurno.getturno_Nome: string;
begin
  result := self.turno_Nome;
end;

procedure TTurno.Insert;
begin

  Tdb.ExecQuery('INSERT INTO turno (nome) VALUES(?)', [self.turno_Nome]);

  self.turno_ID := self.Select(['NOME'], [self.turno_Nome]).Fields[0].AsInteger;

end;

function TTurno.Select(FieldNames: array of String; const Values: array of Variant): tfdquery;
begin
  result := Tdb.SimpleQuery('SELECT * FROM turno' + Tdb.GenWhere(FieldNames), Values);
end;

procedure TTurno.Salvar;
begin
  if self.turno_ID = 0 then
    self.Insert
  ELSE
    self.Update(ukHard);
end;

function TTurno.Select(const pID: integer): tfdquery;
begin
  result := self.Select(['ID'], [pID]);
end;

procedure TTurno.setturno_Nome(value: string);
begin
  if value.IsEmpty then
    raise Exception.Create('Nome do turno não pode estar em branco!');
  self.turno_Nome := value;
end;

procedure TTurno.Update(pUk: TUpdateKind);
begin
  Tdb.ExecQuery('UPDATE turno SET NOME = ? where id =?', [self.turno_Nome, self.turno_ID])
end;

end.
