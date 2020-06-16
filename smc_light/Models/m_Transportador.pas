//Verificado automaticamente em 16/06/2020 09:28
unit m_Transportador;

interface

uses I_Crud, Firedac.comp.client, c_globals, I_Cadastro;

type
  TTransportador = class(TInterfacedObject, ICrud, ICadastro)
  private
    Transportador_ID: integer;
    Transportador_CPF: String;
    Transportador_CNPJ: String;
    Transportador_IE: String;
    Transportador_Razao: String;
    Transportador_Endereco: String;
    Transportador_Municipio: String;
    Transportador_UF: String;

    function getTransportador_ID: integer;
    function getTransportador_CPF: String;
    function getTransportador_CNPJ: String;
    function getTransportador_IE: String;
    function getTransportador_Razao: String;
    function getTransportador_Endereco: String;
    function getTransportador_Municipio: String;
    function getTransportador_UF: String;

    procedure setTransportador_ID(const value: integer);
    procedure setTransportador_CPF(const value: String);
    procedure setTransportador_CNPJ(const value: String);
    procedure setTransportador_IE(const value: String);
    procedure setTransportador_Razao(const value: String);
    procedure setTransportador_Endereco(const value: String);
    procedure setTransportador_Municipio(const value: String);
    procedure setTransportador_UF(const value: String);

    procedure cleardata;
    procedure Insert;
    procedure Delete(const pID: integer);
    function Select(FieldNames: array of String; const Values: array of Variant): tfdquery; overload;
    function Select(const pID: integer): tfdquery; overload;
    procedure Update(puk: tupdatekind = ukHard);

  public
    property ID: integer read getTransportador_ID write setTransportador_ID;
    property CPF: String read getTransportador_CPF write setTransportador_CPF;
    property CNPJ: String read getTransportador_CNPJ write setTransportador_CNPJ;
    property IE: String read getTransportador_IE write setTransportador_IE;
    property RAZAO: String read getTransportador_Razao write setTransportador_Razao;
    property ENDERECO: String read getTransportador_Endereco write setTransportador_Endereco;
    property MUNICIPIO: String read getTransportador_Municipio write setTransportador_Municipio;
    property UF: String read getTransportador_UF write setTransportador_UF;

    constructor create(idTransportador: integer); overload;
    procedure Salvar(puk: tupdatekind = ukHard);
    function isRegistered: Boolean;

  end;

implementation

uses h_Formats, h_db, h_Functions;

procedure TTransportador.cleardata;
begin
  Transportador_ID := 0;
  Transportador_CPF := '';
  Transportador_CNPJ := '';
  Transportador_IE := '';
  Transportador_Razao := '';
  Transportador_Endereco := '';
  Transportador_Municipio := '';
  Transportador_UF := '';
end;

constructor TTransportador.create(idTransportador: integer);
var
  qry: tfdquery;
begin
  inherited create;
  self.cleardata;

  qry := self.Select(idTransportador);

  if qry <> nil then
  begin
    WITH qry DO
    BEGIN
      Transportador_ID := idTransportador;
      Transportador_CPF := FIELDBYNAME('CPF').value;
      Transportador_CNPJ := FIELDBYNAME('CNPJ').value;
      Transportador_IE := FIELDBYNAME('IE').value;
      Transportador_Razao := FIELDBYNAME('RAZAO_SOCIAL').value;
      Transportador_Endereco := FIELDBYNAME('rua').value;
      Transportador_Municipio := FIELDBYNAME('MUNICIPIO').value;
      Transportador_UF := FIELDBYNAME('UF').value;
    END;
  end;
end;

procedure TTransportador.Delete(const pID: integer);
begin
  Tdb.ExecQuery('DELETE * FROM FORNECEDOR WHERE ID = ?', [pID]);
end;

function TTransportador.getTransportador_CNPJ: String;
begin
  result := TFormats.CNPJ(self.Transportador_CNPJ)
end;

function TTransportador.getTransportador_CPF: String;
begin
  result := TFormats.CPF(self.Transportador_CPF)
end;

function TTransportador.getTransportador_Endereco: String;
begin
  result := self.Transportador_Endereco
end;

function TTransportador.getTransportador_ID: integer;
begin
  result := self.Transportador_ID
end;

function TTransportador.getTransportador_IE: String;
begin
  result := self.Transportador_IE
end;

function TTransportador.getTransportador_Municipio: String;
begin
  result := self.Transportador_Municipio
end;

function TTransportador.getTransportador_Razao: String;
begin
  result := self.Transportador_Razao
end;

function TTransportador.getTransportador_UF: String;
begin
  result := self.Transportador_UF
end;

procedure TTransportador.Insert;
begin
  if not TFunctions.arrayof('', [self.Transportador_Razao, self.Transportador_CPF, self.Transportador_CNPJ, self.Transportador_Endereco, self.Transportador_Municipio,
    self.Transportador_UF]) then
  begin
    Tdb.ExecQuery('INSERT INTO TRANSPORTADOR (RAZAO_SOCIAL, CPF, CNPJ, IE, RUA, MUNICIPIO, UF) VALUES (?, ?, ?, ?, ?, ?, ?)',
      [self.Transportador_Razao, self.Transportador_CPF, self.Transportador_CNPJ, self.Transportador_IE, self.Transportador_Endereco, self.Transportador_Municipio,
      self.Transportador_UF]);

    self.Transportador_ID := self.Select(['RAZAO_SOCIAL', 'CPF', 'CNPJ', 'IE', 'RUA', 'MUNICIPIO', 'UF'],
      [self.Transportador_Razao, self.Transportador_CPF, self.Transportador_CNPJ, self.Transportador_IE, self.Transportador_Endereco, self.Transportador_Municipio,
      self.Transportador_UF]).FIELDBYNAME('ID').AsInteger;
  end;
end;

function TTransportador.isRegistered: Boolean;
var
  qry: tfdquery;
begin
  qry := nil;
  result := false;
  if self.Transportador_CNPJ <> '' then
    qry := self.Select(['CNPJ'], [self.Transportador_CNPJ]);

  if self.Transportador_CPF <> '' then
    qry := self.Select(['CPF'], [self.Transportador_CPF]);

  if qry = nil then
    result := false
  else
  begin
    self.Transportador_ID := qry.FIELDBYNAME('ID').AsInteger;
    result := true;
    qry.destroy;
  end;
end;

function TTransportador.Select(FieldNames: array of String; const Values: array of Variant): tfdquery;
begin
  result := Tdb.simplequery('SELECT * FROM TRANSPORTADOR' + Tdb.GenWhere(FieldNames), Values);
end;

procedure TTransportador.Salvar(puk: tupdatekind = ukHard);
begin
  if self.isRegistered then
    self.Update(puk)
  else
    self.Insert;
end;

function TTransportador.Select(const pID: integer): tfdquery;
begin
  result := self.Select(['ID'], [self.ID]);
end;

procedure TTransportador.setTransportador_CNPJ(const value: String);
begin
  self.Transportador_CNPJ := TFunctions.replace(value, ['-', '.', '/'])
end;

procedure TTransportador.setTransportador_CPF(const value: String);
begin
  self.Transportador_CPF := TFunctions.replace(value, ['-', '.'])
end;

procedure TTransportador.setTransportador_Endereco(const value: String);
begin
  self.Transportador_Endereco := TFormats.uc(value)
end;

procedure TTransportador.setTransportador_ID(const value: integer);
begin
  self.Transportador_ID := value
end;

procedure TTransportador.setTransportador_IE(const value: String);
begin
  self.Transportador_IE := TFunctions.ifthen(value = '', 'ISENTO', value)
end;

procedure TTransportador.setTransportador_Municipio(const value: String);
begin
  self.Transportador_Municipio := TFormats.uc(value)
end;

procedure TTransportador.setTransportador_Razao(const value: String);
begin
  self.Transportador_Razao := TFormats.uc(value)
end;

procedure TTransportador.setTransportador_UF(const value: String);
begin
  self.Transportador_UF := TFormats.uc(value)
end;

procedure TTransportador.Update(puk: tupdatekind = ukHard);
var
  qry: tfdquery;
begin
  case puk of
    uksoft:
      begin
        begin
          qry := self.Select(self.ID);
          with qry do
          begin
            Edit;

            FIELDBYNAME('RAZAO_SOCIAL').asString := TFunctions.ifthen(FIELDBYNAME('RAZAO_SOCIAL').asString = '', self.Transportador_Razao, FIELDBYNAME('RAZAO_SOCIAL').asString);

            FIELDBYNAME('CNPJ').asString := TFunctions.ifthen(FIELDBYNAME('CNPJ').asString = '', self.Transportador_CNPJ, FIELDBYNAME('CNPJ').asString);

            FIELDBYNAME('CPF').asString := TFunctions.ifthen(FIELDBYNAME('CPF').asString = '', self.Transportador_CPF, FIELDBYNAME('CPF').asString);

            FIELDBYNAME('IE').asString := TFunctions.ifthen(FIELDBYNAME('IE').asString = '', self.Transportador_IE, FIELDBYNAME('IE').asString);

            FIELDBYNAME('RUA').asString := TFunctions.ifthen(FIELDBYNAME('RUA').asString = '', self.Transportador_Endereco, FIELDBYNAME('RUA').asString);

            FIELDBYNAME('MUNICIPIO').asString := TFunctions.ifthen(FIELDBYNAME('MUNICIPIO').asString = '', self.Transportador_Municipio, FIELDBYNAME('MUNICIPIO').asString);

            FIELDBYNAME('UF').asString := TFunctions.ifthen(FIELDBYNAME('UF').asString = '', self.Transportador_UF, FIELDBYNAME('UF').asString);

            post;
            Refresh;

            self.RAZAO := FIELDBYNAME('RAZAO_SOCIAL').asString;
            self.CPF := FIELDBYNAME('CPF').asString;
            self.CNPJ := FIELDBYNAME('CNPJ').asString;
            self.IE := FIELDBYNAME('IE').asString;
            self.ENDERECO := FIELDBYNAME('RUA').asString;
            self.MUNICIPIO := FIELDBYNAME('MUNICIPIO').asString;
            self.UF := FIELDBYNAME('UF').asString;
          end;
        end;

        qry.destroy;
      end;

    ukHard:
      begin
        Tdb.ExecQuery('UPDATE TRANSPORTADOR SET RAZAO_SOCIAL = ?, CNPJ = ?, CPF = ?, IE = ?, RUA = ?, MUNICIPIO = ?, UF = ? WHERE ID = ?',
          [self.Transportador_Razao, self.Transportador_CNPJ, self.Transportador_CPF, self.Transportador_IE, self.Transportador_Endereco, self.Transportador_Municipio,
          self.Transportador_UF, self.ID]);
      end;
  end;
end;

end.
