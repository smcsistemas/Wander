//Verificado automaticamente em 16/06/2020 09:27
unit m_Cliente;

interface

uses I_Crud, Firedac.comp.client, c_globals, I_Cadastro, system.Variants;

Type
  TCliente = class(TInterfacedObject, ICrud, ICadastro)
  private
    Cliente_Id: integer;
    Cliente_Data_Cadastro: TDateTime;
    Cliente_Razao_Social: String;
    Cliente_Nome_Fantasia: String;
    Cliente_Tipo_Pessoa: string;
    Cliente_CNPJ: String;
    Cliente_CPF: String;
    Cliente_Inscricao_Estadual: String;
    Cliente_Inscricao_Municipal: String;
    Cliente_RG: string;
    Cliente_End_Logradouro: String;
    Cliente_End_Numero: string;
    Cliente_End_Bairro: String;
    Cliente_End_Cod_Municipio: string;
    Cliente_End_Municipio: string;
    Cliente_End_UF: string;
    Cliente_End_CEP: string;
    Cliente_End_Cod_Pais: string;
    Cliente_End_Pais: string;
    Cliente_Telefone: string;
    Cliente_Produtor_Rural: string;
    Cliente_Status: String;

    function getCliente_Id: integer;
    function getCliente_Razao_Social: String;
    function getCliente_Nome_Fantasia: String;
    function getCliente_Tipo_Pessoa: string;
    function getCliente_CNPJ: String;
    function getCliente_CPF: string;
    function getCliente_Inscricao_Estadual: String;
    function getCliente_Inscricao_Municipal: String;
    function getCliente_RG: string;
    function getCliente_End_Logradouro: String;
    function getCliente_End_Numero: string;
    function getCliente_End_Bairro: string;
    function getCliente_End_Cod_Municipio: string;
    function getCliente_End_Municipio: string;
    function getCliente_End_UF: string;
    function getCliente_End_CEP: string;
    function getCliente_End_Cod_Pais: string;
    function getCliente_End_Pais: string;
    function getCliente_Telefone: string;
    function getCliente_Produtor_Rural: string;
    function getCliente_Status: String;

    procedure setCliente_Id(const value: integer);
    procedure setCliente_Razao_Social(const value: String);
    procedure setCliente_Nome_Fantasia(const value: String);
    procedure setCliente_Tipo_Pessoa(const value: string);
    procedure setCliente_CNPJ(const value: String);
    procedure setCliente_CPF(const value: string);
    procedure setCliente_Inscricao_Estadual(const value: String);
    procedure setCliente_Inscricao_Municipal(const value: String);
    procedure setCliente_RG(const value: string);
    procedure setCliente_End_Logradouro(const value: String);
    procedure setCliente_End_Numero(const value: String);
    procedure setCliente_End_Cod_Municipio(const value: String);
    procedure setCliente_End_Municipio(const value: String);
    procedure setCliente_End_UF(const value: String);
    procedure setCliente_End_CEP(const value: String);
    procedure setCliente_End_Cod_Pais(const value: String);
    procedure setCliente_End_Pais(const value: String);
    procedure setCliente_Telefone(const value: String);
    procedure setCliente_End_Bairro(const value: String);
    procedure setCliente_Produtor_Rural(const value: string);
    procedure setCliente_Status(const value: String);

    procedure cleardata;
    procedure Insert;
    procedure Delete(const pID: integer);
    function Select(FieldNames: array of String; const Values: array of Variant): tfdquery; overload;
    function Select(const pID: integer): tfdquery; overload;
    procedure Update(pUk: TUpdateKind = ukHard);

  public
    property ID: integer read getCliente_Id write setCliente_Id;
    property RAZAO_SOCIAL: String read getCliente_Razao_Social write setCliente_Razao_Social;
    property NOME_FANTASIA: String read getCliente_Nome_Fantasia write setCliente_Nome_Fantasia;
    property TIPO_PESSOA: STRING read getCliente_Tipo_Pessoa write setCliente_Tipo_Pessoa;
    property CNPJ: String read getCliente_CNPJ write setCliente_CNPJ;
    property CPF: String read getCliente_CPF write setCliente_CPF;
    property IE: String read getCliente_Inscricao_Estadual write setCliente_Inscricao_Estadual;
    property IM: String read getCliente_Inscricao_Municipal write setCliente_Inscricao_Municipal;
    property RG: String read getCliente_RG write setCliente_RG;
    property LOGRADOURO: String read getCliente_End_Logradouro write setCliente_End_Logradouro;
    property NUMERO: String read getCliente_End_Numero write setCliente_End_Numero;
    property BAIRRO: String read getCliente_End_Bairro write setCliente_End_Bairro;
    property COD_MUNICIPIO: String read getCliente_End_Cod_Municipio write setCliente_End_Cod_Municipio;
    property MUNICIPIO: String read getCliente_End_Municipio write setCliente_End_Municipio;
    property UF: String read getCliente_End_UF write setCliente_End_UF;
    property CEP: String read getCliente_End_CEP write setCliente_End_CEP;
    property COD_PAIS: String read getCliente_End_Cod_Pais write setCliente_End_Cod_Pais;
    property PAIS: String read getCliente_End_Pais write setCliente_End_Pais;
    property TELEFONE: String read getCliente_Telefone write setCliente_Telefone;
    property PRODUTOR_RURAL: STRING read getCliente_Produtor_Rural write setCliente_Produtor_Rural;
    property STATUS: STRING read getCliente_Status write setCliente_Status;

    constructor create(idCliente: integer); overload;
    procedure Salvar(UK: TUpdateKind = ukHard);
    function isRegistered: boolean;

  end;

implementation

uses h_Formats, h_db, h_Functions;

{ TCliente }

procedure TCliente.cleardata;
begin
  Cliente_Id := 0;
  Cliente_Data_Cadastro := 0;
  Cliente_Razao_Social := '';
  Cliente_Nome_Fantasia := '';
  Cliente_Tipo_Pessoa := '';
  Cliente_CNPJ := '';
  Cliente_CPF := '';
  Cliente_Inscricao_Estadual := '';
  Cliente_Inscricao_Municipal := '';
  Cliente_RG := '';
  Cliente_End_Logradouro := '';
  Cliente_End_Numero := '';
  Cliente_End_Bairro := '';
  Cliente_End_Cod_Municipio := '';
  Cliente_End_Municipio := '';
  Cliente_End_UF := '';
  Cliente_End_CEP := '';
  Cliente_End_Cod_Pais := '';
  Cliente_End_Pais := '';
  Cliente_Telefone := '';
  Cliente_Produtor_Rural := '';
  Cliente_Status := '';
  Cliente_Produtor_Rural := '';
  Cliente_Status := '';
end;

constructor TCliente.create(idCliente: integer);
var
  qry: tfdquery;
begin
  inherited create;
  self.cleardata;

  qry := self.Select(idCliente);

  if qry <> nil then
  begin
    WITH qry DO
    BEGIN

      self.Cliente_Id := idCliente;

      if FIELDBYNAME('RAZAO_SOCIAL').value <> null then

        self.Cliente_Razao_Social := FIELDBYNAME('RAZAO_SOCIAL').value;

      if FIELDBYNAME('FANTASIA').value <> null then

        self.Cliente_Nome_Fantasia := FIELDBYNAME('FANTASIA').value;

    END;
  end;
end;

procedure TCliente.Delete(const pID: integer);
begin
  Tdb.ExecQuery('DELETE FROM CLIENTE WHERE CODIGO = ?', [pID]);
end;

function TCliente.getCliente_CNPJ: String;
begin
  result := TFormats.CNPJ(self.Cliente_CNPJ)
end;

function TCliente.getCliente_CPF: string;
begin
  result := TFormats.CPF(self.Cliente_CPF);
end;

function TCliente.getCliente_End_Bairro: string;
begin
  result := self.Cliente_End_Bairro
end;

function TCliente.getCliente_End_CEP: string;
begin
  result := TFormats.CEP(self.Cliente_End_CEP)
end;

function TCliente.getCliente_End_Cod_Municipio: string;
begin
  result := self.Cliente_End_Cod_Municipio
end;

function TCliente.getCliente_End_Cod_Pais: string;
begin
  result := self.Cliente_End_Cod_Pais
end;

function TCliente.getCliente_End_Logradouro: String;
begin
  result := self.Cliente_End_Logradouro
end;

function TCliente.getCliente_End_Municipio: string;
begin
  result := self.Cliente_End_Municipio
end;

function TCliente.getCliente_End_Numero: string;
begin
  result := self.Cliente_End_Numero
end;

function TCliente.getCliente_End_Pais: string;
begin
  result := self.Cliente_End_Pais
end;

function TCliente.getCliente_Telefone: string;
begin
  result := TFormats.phone(self.Cliente_Telefone)
end;

function TCliente.getCliente_Tipo_Pessoa: string;
begin
  result := self.Cliente_Tipo_Pessoa;
end;

function TCliente.getCliente_End_UF: string;
begin
  result := self.Cliente_End_UF
end;

function TCliente.getCliente_Id: integer;
begin
  result := self.Cliente_Id
end;

function TCliente.getCliente_Inscricao_Estadual: String;
begin
  result := self.Cliente_Inscricao_Estadual
end;

function TCliente.getCliente_Inscricao_Municipal: String;
begin
  result := self.Cliente_Inscricao_Municipal
end;

function TCliente.getCliente_Nome_Fantasia: String;
begin
  result := self.Cliente_Nome_Fantasia
end;

function TCliente.getCliente_Produtor_Rural: string;
begin
  result := self.Cliente_Produtor_Rural;
end;

function TCliente.getCliente_Razao_Social: String;
begin
  result := self.Cliente_Razao_Social
end;

function TCliente.getCliente_RG: string;
begin
  result := self.Cliente_RG;
end;

function TCliente.getCliente_Status: String;
begin
  result := self.Cliente_Status;
end;

procedure TCliente.Insert;
begin
  if self.TIPO_PESSOA = 'FISICA' then
  begin

    Tdb.ExecQuery('INSERT INTO CLIENTE(PRODUTOR_RURAL, STATUS_CADASTRAL, DATA_CADASTRO, RAZAO_SOCIAL, CPF, RG,' +
      'ENDERECO, BAIRRO, NUMERO, CODIGO_MUNICIPIO, MUNICIPIO, ESTADO, CEP, PAIS, CODIGO_PAIS, TELEFONE, PESSOA_TIPO)' + ' VALUES (?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?)',
      [self.Cliente_Produtor_Rural, self.Cliente_Status, self.Cliente_Data_Cadastro, self.Cliente_Razao_Social, self.Cliente_CPF, self.Cliente_RG, self.Cliente_End_Logradouro,
      self.Cliente_End_Bairro, self.Cliente_End_Numero, self.Cliente_End_Cod_Municipio, self.Cliente_End_Municipio, self.Cliente_End_UF, self.Cliente_End_CEP,
      self.Cliente_End_Pais, self.Cliente_End_Cod_Pais, self.Cliente_Telefone, self.Cliente_Tipo_Pessoa]);

    self.Cliente_Id := self.Select(['CPF'], [self.Cliente_CPF]).FIELDBYNAME('CODIGO').AsInteger;

  end
  else if self.TIPO_PESSOA = 'JURIDICA' then
  BEGIN

    Tdb.ExecQuery('INSERT INTO CLIENTE(PRODUTOR_RURAL, STATUS_CADASTRAL, DATA_CADASTRO, RAZAO_SOCIAL, FANTASIA, CNPJ, INSCRICAO_ESTADUAL, INSCRICAO_MUNICIPAL,' +
      'ENDERECO, BAIRRO, NUMERO, CODIGO_MUNICIPIO, MUNICIPIO, ESTADO, CEP, PAIS, CODIGO_PAIS, TELEFONE, PESSOA_TIPO)' + ' VALUES (?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?)',
      [self.Cliente_Produtor_Rural, self.Cliente_Status, self.Cliente_Data_Cadastro, self.Cliente_Razao_Social, self.Cliente_CNPJ, self.Cliente_Inscricao_Estadual,
      self.Cliente_Inscricao_Municipal, self.Cliente_End_Logradouro, self.Cliente_End_Bairro, self.Cliente_End_Numero, self.Cliente_End_Cod_Municipio, self.Cliente_End_Municipio,
      self.Cliente_End_UF, self.Cliente_End_CEP, self.Cliente_End_Pais, self.Cliente_End_Cod_Pais, self.Cliente_Telefone, self.Cliente_Tipo_Pessoa]);

    self.Cliente_Id := self.Select(['CNPJ'], [self.Cliente_CNPJ]).FIELDBYNAME('CODIGO').AsInteger;

  END;
end;

function TCliente.Select(FieldNames: array of String; const Values: array of Variant): tfdquery;
begin
  result := Tdb.SimpleQuery('SELECT * FROM CLIENTE' + Tdb.GenWhere(FieldNames), Values);
end;

procedure TCliente.Salvar(UK: TUpdateKind = ukHard);
begin
  if self.isRegistered then
    self.Update(UK)
  else
    self.Insert
end;

function TCliente.isRegistered: boolean;
var
  qry: tfdquery;
begin
  qry := nil;
  result := false;

  if self.TIPO_PESSOA = 'FISICA' then
    qry := self.Select(['CPF'], [self.Cliente_CPF])
  else if self.TIPO_PESSOA = 'JURIDICA' then
    qry := self.Select(['CNPJ'], [self.Cliente_CNPJ]);

  if qry <> nil then
  begin
    self.Cliente_Id := qry.FIELDBYNAME('CODIGO').AsInteger;
    result := true;
  end;
end;

function TCliente.Select(const pID: integer): tfdquery;
begin
  result := self.Select(['CODIGO'], [pID]);
end;

procedure TCliente.setCliente_CNPJ(const value: String);
begin
  self.Cliente_CNPJ := TFunctions.replace(value, ['-', '.', '/'])
end;

procedure TCliente.setCliente_CPF(const value: string);
begin
  self.Cliente_CPF := TFunctions.replace(value, ['-', '.'])
end;

procedure TCliente.setCliente_End_Bairro(const value: String);
begin
  self.Cliente_End_Bairro := TFormats.uc(value)
end;

procedure TCliente.setCliente_End_CEP(const value: String);
begin
  self.Cliente_End_CEP := TFunctions.replace(value, '-')
end;

procedure TCliente.setCliente_End_Cod_Municipio(const value: String);
begin
  self.Cliente_End_Cod_Municipio := value
end;

procedure TCliente.setCliente_End_Cod_Pais(const value: String);
begin
  self.Cliente_End_Cod_Pais := value
end;

procedure TCliente.setCliente_End_Logradouro(const value: String);
begin
  self.Cliente_End_Logradouro := TFormats.uc(value)
end;

procedure TCliente.setCliente_End_Municipio(const value: String);
begin
  self.Cliente_End_Municipio := TFormats.uc(value)
end;

procedure TCliente.setCliente_End_Numero(const value: String);
begin
  self.Cliente_End_Numero := value
end;

procedure TCliente.setCliente_End_Pais(const value: String);
begin
  self.Cliente_End_Pais := TFormats.uc(TFunctions.ifthen(value = '', 'BRASIL', value))
end;

procedure TCliente.setCliente_Telefone(const value: String);
begin
  self.Cliente_Telefone := TFunctions.replace(value, ['-', '(', ')'])
end;

procedure TCliente.setCliente_Tipo_Pessoa(const value: string);
begin
  self.Cliente_Tipo_Pessoa := value;
end;

procedure TCliente.setCliente_End_UF(const value: String);
begin
  self.Cliente_End_UF := TFormats.uc(value)
end;

procedure TCliente.setCliente_Id(const value: integer);
begin
  self.Cliente_Id := value
end;

procedure TCliente.setCliente_Inscricao_Estadual(const value: String);
begin
  self.Cliente_Inscricao_Estadual := TFunctions.ifthen(value = '', 'ISENTO', value)
end;

procedure TCliente.setCliente_Inscricao_Municipal(const value: String);
begin
  self.Cliente_Inscricao_Municipal := TFunctions.ifthen(value = '', 'ISENTO', value)
end;

procedure TCliente.setCliente_Nome_Fantasia(const value: String);
begin
  self.Cliente_Nome_Fantasia := TFormats.uc(value)
end;

procedure TCliente.setCliente_Produtor_Rural(const value: string);
begin
  self.Cliente_Produtor_Rural := value;
end;

procedure TCliente.setCliente_Razao_Social(const value: String);
begin
  self.Cliente_Razao_Social := TFormats.uc(value)
end;

procedure TCliente.setCliente_RG(const value: string);
begin
  self.Cliente_RG := value;
end;

procedure TCliente.setCliente_Status(const value: String);
begin
  self.Cliente_Status := value;
end;

procedure TCliente.Update(pUk: TUpdateKind = ukHard);
begin

  case pUk of

    ukSoft:
      begin

      end;

    ukHard:
      begin

      end;

  end;

  if self.TIPO_PESSOA = 'FISICA' then
  begin

    Tdb.ExecQuery('UDPATE CLIENTE SET PRODUTOR_RURAL=?, STATUS_CADASTRAL=?, DATA_CADASTRO=?, RAZAO_SOCIAL=?, CPF=?, RG=?,' +
      'ENDERECO=?, BAIRRO=?, NUMERO=?, CODIGO_MUNICIPIO=?, MUNICIPIO=?, ESTADO=?, CEP=?, PAIS=?, CODIGO_PAIS=?, TELEFONE=?, PESSOA_TIPO=?' + ' WHERE CODIGO = ?',
      [self.Cliente_Produtor_Rural, self.Cliente_Status, self.Cliente_Data_Cadastro, self.Cliente_Razao_Social, self.Cliente_CPF, self.Cliente_RG, self.Cliente_End_Logradouro,
      self.Cliente_End_Bairro, self.Cliente_End_Numero, self.Cliente_End_Cod_Municipio, self.Cliente_End_Municipio, self.Cliente_End_UF, self.Cliente_End_CEP,
      self.Cliente_End_Pais, self.Cliente_End_Cod_Pais, self.Cliente_Telefone, self.Cliente_Tipo_Pessoa, self.ID]);

  end
  else if self.TIPO_PESSOA = 'JURIDICA' then
  BEGIN

    Tdb.ExecQuery('UDPATE CLIENTE SET PRODUTOR_RURAL=?, STATUS_CADASTRAL=?, DATA_CADASTRO=?, RAZAO_SOCIAL=?, FANTASIA=?, CNPJ=?, INSCRICAO_ESTADUAL=?, INSCRICAO_MUNICIPAL=?,' +
      'ENDERECO=?, BAIRRO=?, NUMERO=?, CODIGO_MUNICIPIO=?, MUNICIPIO=?, ESTADO=?, CEP=?, PAIS=?, CODIGO_PAIS=?, TELEFONE=?, PESSOA_TIPO=?' + ' WHERE CODIGO = ?',
      [self.Cliente_Produtor_Rural, self.Cliente_Status, self.Cliente_Data_Cadastro, self.Cliente_Razao_Social, self.Cliente_CNPJ, self.Cliente_Inscricao_Estadual,
      self.Cliente_Inscricao_Municipal, self.Cliente_End_Logradouro, self.Cliente_End_Bairro, self.Cliente_End_Numero, self.Cliente_End_Cod_Municipio, self.Cliente_End_Municipio,
      self.Cliente_End_UF, self.Cliente_End_CEP, self.Cliente_End_Pais, self.Cliente_End_Cod_Pais, self.Cliente_Telefone, self.Cliente_Tipo_Pessoa, self.Cliente_Id]);

  END;
end;

end.
