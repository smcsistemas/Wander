unit m_Fornecedor;

interface

uses I_Crud, FireDac.Comp.Client, c_globals, I_Cadastro;

Type
  TFornecedor = class(TInterfacedObject, ICrud, ICadastro)
  private
    Fornecedor_Id: integer;
    // se 0 (propria empresa) - diferente de 0, fornecedor (nf de entrada)
    Fornecedor_Data_Cadastro: TDateTime;
    Fornecedor_Razao_Social: String;
    Fornecedor_Nome_Fantasia: String;
    Fornecedor_CNPJ: String;
    Fornecedor_Inscricao_Estadual: String;
    Fornecedor_Inscricao_Municipal: String;
    Fornecedor_CNAE: String;
    Fornecedor_CRT: String;
    Fornecedor_End_Logradouro: String;
    Fornecedor_End_Bairro: string;
    Fornecedor_End_Numero: string;
    Fornecedor_End_Cod_Municipio: string;
    Fornecedor_End_Municipio: string;
    Fornecedor_End_UF: string;
    Fornecedor_End_CEP: string;
    Fornecedor_End_Cod_Pais: string;
    Fornecedor_End_Pais: string;
    Fornecedor_Telefone: string;

    function getFornecedor_Id: integer;
    function getFornecedor_Razao_Social: String;
    function getFornecedor_Nome_Fantasia: String;
    function getFornecedor_CNPJ: String;
    function getFornecedor_Inscricao_Estadual: String;
    function getFornecedor_Inscricao_Municipal: String;
    function getFornecedor_CNAE: String;
    function getFornecedor_CRT: String;
    function getFornecedor_End_Logradouro: String;
    function getFornecedor_End_Numero: string;
    function getFornecedor_End_Bairro: string;
    function getFornecedor_End_Cod_Municipio: string;
    function getFornecedor_End_Municipio: string;
    function getFornecedor_End_UF: string;
    function getFornecedor_End_CEP: string;
    function getFornecedor_End_Cod_Pais: string;
    function getFornecedor_End_Pais: string;
    function getFornecedor_Telefone: string;

    procedure setFornecedor_Id(const value: integer);
    procedure setFornecedor_Razao_Social(const value: String);
    procedure setFornecedor_Nome_Fantasia(const value: String);
    procedure setFornecedor_CNPJ(const value: String);
    procedure setFornecedor_Inscricao_Estadual(const value: String);
    procedure setFornecedor_Inscricao_Municipal(const value: String);
    procedure setFornecedor_CNAE(const value: String);
    procedure setFornecedor_CRT(const value: String);
    procedure setFornecedor_End_Logradouro(const value: String);
    procedure setFornecedor_End_Numero(const value: String);
    procedure setFornecedor_End_Bairro(const value: string);
    procedure setFornecedor_End_Cod_Municipio(const value: String);
    procedure setFornecedor_End_Municipio(const value: String);
    procedure setFornecedor_End_UF(const value: String);
    procedure setFornecedor_End_CEP(const value: String);
    procedure setFornecedor_End_Cod_Pais(const value: String);
    procedure setFornecedor_End_Pais(const value: String);
    procedure setFornecedor_Telefone(const value: String);

    procedure ClearData;
    procedure Insert;
    procedure Delete(const pID: integer);
    procedure Update(puk: tupdatekind = ukhard);

    function Select(FieldNames: array of String; const Values: array of Variant): tfdquery; overload;
    function Select(const pID: integer): tfdquery; overload;

  public
    property ID: integer read getFornecedor_Id write setFornecedor_Id;
    property RAZAO_SOCIAL: String read getFornecedor_Razao_Social write setFornecedor_Razao_Social;
    property NOME_FANTASIA: String read getFornecedor_Nome_Fantasia write setFornecedor_Nome_Fantasia;
    property CNPJ: String read getFornecedor_CNPJ write setFornecedor_CNPJ;
    property IE: String read getFornecedor_Inscricao_Estadual write setFornecedor_Inscricao_Estadual;
    property IM: String read getFornecedor_Inscricao_Municipal write setFornecedor_Inscricao_Municipal;
    property CNAE: String read getFornecedor_CNAE write setFornecedor_CNAE;
    property CRT: String read getFornecedor_CRT write setFornecedor_CRT;
    property LOGRADOURO: String read getFornecedor_End_Logradouro write setFornecedor_End_Logradouro;
    property NUMERO: String read getFornecedor_End_Numero write setFornecedor_End_Numero;
    property BAIRRO: String read getFornecedor_End_Bairro write setFornecedor_End_Bairro;
    property COD_MUNICIPIO: String read getFornecedor_End_Cod_Municipio write setFornecedor_End_Cod_Municipio;
    property MUNICIPIO: String read getFornecedor_End_Municipio write setFornecedor_End_Municipio;
    property UF: String read getFornecedor_End_UF write setFornecedor_End_UF;
    property CEP: String read getFornecedor_End_CEP write setFornecedor_End_CEP;
    property COD_PAIS: String read getFornecedor_End_Cod_Pais write setFornecedor_End_Cod_Pais;
    property PAIS: String read getFornecedor_End_Pais write setFornecedor_End_Pais;
    property TELEFONE: String read getFornecedor_Telefone write setFornecedor_Telefone;

    constructor Create(idFornecedor: integer); overload;
    constructor Create; overload;
    procedure Salvar(UK: tupdatekind = ukhard);
    function isRegistered: boolean;

  end;

implementation

uses h_Formats, h_db, h_Functions, SysUtils, strutils;

procedure TFornecedor.ClearData;
begin
  self.Fornecedor_Id := 0;
  self.Fornecedor_Data_Cadastro := 0;
  self.Fornecedor_Razao_Social := '';
  self.Fornecedor_Nome_Fantasia := '';
  self.Fornecedor_CNPJ := '';
  self.Fornecedor_Inscricao_Estadual := '';
  self.Fornecedor_Inscricao_Municipal := '';
  self.Fornecedor_CNAE := '';
  self.Fornecedor_CRT := '';
  self.Fornecedor_End_Logradouro := '';
  self.Fornecedor_End_Bairro := '';
  self.Fornecedor_End_Numero := '';
  self.Fornecedor_End_Cod_Municipio := '';
  self.Fornecedor_End_Municipio := '';
  self.Fornecedor_End_UF := '';
  self.Fornecedor_End_CEP := '';
  self.Fornecedor_End_Cod_Pais := '';
  self.Fornecedor_End_Pais := '';
  self.Fornecedor_Telefone := '';
end;

constructor TFornecedor.Create;
begin
  inherited Create;
  self.ClearData;
end;

constructor TFornecedor.Create(idFornecedor: integer);
var
  qry: tfdquery;
begin
  inherited Create;
  self.ClearData;

  qry := self.Select(idFornecedor);

  if qry <> nil then
  begin
    WITH qry DO
    BEGIN

      self.Fornecedor_Id := idFornecedor;
      self.Fornecedor_Data_Cadastro := FIELDBYNAME('DATA_CADASTRO').value;
      self.Fornecedor_Razao_Social := FIELDBYNAME('RAZAO_SOCIAL').value;
      self.Fornecedor_Nome_Fantasia := FIELDBYNAME('NOME_FANTASIA').value;
      self.Fornecedor_CNPJ := FIELDBYNAME('CNPJ_CPF').value;
      self.Fornecedor_Inscricao_Estadual := FIELDBYNAME('INSCRICAO_ESTADUAL').value;
      self.Fornecedor_Inscricao_Municipal := FIELDBYNAME('INSCRICAO_MUNICIPAL').value;
      self.Fornecedor_CNAE := '0';
      self.Fornecedor_CRT := '0';
      self.Fornecedor_End_Logradouro := FIELDBYNAME('ENDERECO').value;
      self.Fornecedor_End_Bairro := FIELDBYNAME('bairro').value;
      self.Fornecedor_End_Numero := FIELDBYNAME('numero').value;
      self.Fornecedor_End_Cod_Municipio := FIELDBYNAME('codigo_municipio').value;
      self.Fornecedor_End_Municipio := FIELDBYNAME('municipio').value;
      self.Fornecedor_End_UF := FIELDBYNAME('estado').value;
      self.Fornecedor_End_CEP := FIELDBYNAME('cep').value;
      self.Fornecedor_End_Cod_Pais := FIELDBYNAME('codigo_pais').value;
      self.Fornecedor_End_Pais := FIELDBYNAME('pais').value;
      self.Fornecedor_Telefone := FIELDBYNAME('telefone').value;
    END;
  end;

  qry := nil;

end;

procedure TFornecedor.Delete(const pID: integer);
begin
  Tdb.ExecQuery('DELETE FROM FORNECEDOR WHERE CODIGO = ?', [pID])
end;

function TFornecedor.getFornecedor_CNAE: String;
begin
  result := self.Fornecedor_CNAE
end;

function TFornecedor.getFornecedor_CNPJ: String;
begin
  result := TFormats.CNPJ(self.Fornecedor_CNPJ)
end;

function TFornecedor.getFornecedor_CRT: String;
begin
  result := self.Fornecedor_CRT
end;

function TFornecedor.getFornecedor_End_Bairro: string;
begin
  result := self.Fornecedor_End_Bairro
end;

function TFornecedor.getFornecedor_End_CEP: string;
begin
  result := self.Fornecedor_End_CEP
end;

function TFornecedor.getFornecedor_End_Cod_Municipio: string;
begin
  result := self.Fornecedor_End_Cod_Municipio
end;

function TFornecedor.getFornecedor_End_Cod_Pais: string;
begin
  result := self.Fornecedor_End_Cod_Pais
end;

function TFornecedor.getFornecedor_End_Logradouro: String;
begin
  result := self.Fornecedor_End_Logradouro
end;

function TFornecedor.getFornecedor_End_Municipio: string;
begin
  result := self.Fornecedor_End_Municipio
end;

function TFornecedor.getFornecedor_End_Numero: string;
begin
  result := self.Fornecedor_End_Numero
end;

function TFornecedor.getFornecedor_End_Pais: string;
begin
  result := self.Fornecedor_End_Pais
end;

function TFornecedor.getFornecedor_Telefone: string;
begin
  result := self.Fornecedor_Telefone
end;

function TFornecedor.getFornecedor_End_UF: string;
begin
  result := self.Fornecedor_End_UF
end;

function TFornecedor.getFornecedor_Id: integer;
begin
  result := self.Fornecedor_Id
end;

function TFornecedor.getFornecedor_Inscricao_Estadual: String;
begin
  result := self.Fornecedor_Inscricao_Estadual
end;

function TFornecedor.getFornecedor_Inscricao_Municipal: String;
begin
  result := self.Fornecedor_Inscricao_Municipal
end;

function TFornecedor.getFornecedor_Nome_Fantasia: String;
begin
  result := self.Fornecedor_Nome_Fantasia
end;

function TFornecedor.getFornecedor_Razao_Social: String;
begin
  result := self.Fornecedor_Razao_Social
end;

procedure TFornecedor.Insert;
begin
  Tdb.ExecQuery('INSERT INTO FORNECEDOR(CODIGO, PRODUTOR_RURAL,STATUS_CADASTRAL, CONSUMIDOR_FINAL, DATA_CADASTRO, RAZAO_SOCIAL, NOME_FANTASIA, CNPJ_CPF,' +
    'INSCRICAO_ESTADUAL, INSCRICAO_MUNICIPAL, ENDERECO, BAIRRO, NUMERO, CODIGO_MUNICIPIO, MUNICIPIO, ESTADO, CEP, PAIS, CODIGO_PAIS, TELEFONE)' +
    ' VALUES (DEFAULT,"NAO", "ATIVO", "N", ?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?)', [self.Fornecedor_Data_Cadastro, self.Fornecedor_Razao_Social, self.Fornecedor_Nome_Fantasia,
    self.Fornecedor_CNPJ, self.Fornecedor_Inscricao_Estadual, self.Fornecedor_Inscricao_Municipal, self.Fornecedor_End_Logradouro, self.Fornecedor_End_Bairro,
    self.Fornecedor_End_Numero, self.Fornecedor_End_Cod_Municipio, self.Fornecedor_End_Municipio, self.Fornecedor_End_UF, self.Fornecedor_End_CEP, self.Fornecedor_End_Pais,
    self.Fornecedor_End_Cod_Pais, self.Fornecedor_Telefone]);

  self.Fornecedor_Id := self.Select(['CNPJ_CPF'], [self.Fornecedor_CNPJ]).FIELDBYNAME('CODIGO').AsInteger;

end;

function TFornecedor.isRegistered: boolean;
var
  qry: tfdquery;
begin
  qry := nil;
  result := false;

  qry := self.Select(['CNPJ_CPF'], [self.Fornecedor_CNPJ]);

  if qry = nil then
    result := false
  else
  begin
    self.Fornecedor_Id := qry.FIELDBYNAME('CODIGO').AsInteger;
    result := true;
  end;

end;

procedure TFornecedor.Salvar(UK: tupdatekind = ukhard);
begin
  self.Fornecedor_Data_Cadastro := now;

  if self.isRegistered then // Fornecedor cadastrado
    self.Update(UK)
  else
    self.Insert;
end;

function TFornecedor.Select(FieldNames: array of String; const Values: array of Variant): tfdquery;
begin
  result := Tdb.simplequery('select * from fornecedor' + Tdb.GenWhere(FieldNames), Values);
end;

function TFornecedor.Select(const pID: integer): tfdquery;
begin
  result := self.Select(['CODIGO'], [pID]);
end;

procedure TFornecedor.setFornecedor_CNAE(const value: String);
begin
  self.Fornecedor_CNAE := value
end;

procedure TFornecedor.setFornecedor_CNPJ(const value: String);
begin
  if value = '' then
    raise exception.Create(Format('CNPJ do Fornecedor [%s] não pode esta em branco.', [self.RAZAO_SOCIAL]));
  self.Fornecedor_CNPJ := TFunctions.replace(value, ['.', '-', '/']);
end;

procedure TFornecedor.setFornecedor_CRT(const value: String);
begin
  if not ansimatchstr(value, ['1', '2', '3']) then
    raise exception.Create(Format('CRT [%s] do Fornecedor [%s] deve ser 1 - Simples Nacional, 2 - Simples Nacional com Excesso de Sublimite ou 3 - Regime Normal.',
      [value, self.RAZAO_SOCIAL]));
  self.Fornecedor_CRT := value
end;

procedure TFornecedor.setFornecedor_End_Bairro(const value: string);
begin
  self.Fornecedor_End_Bairro := TFormats.uc(value)
end;

procedure TFornecedor.setFornecedor_End_CEP(const value: String);
begin
  self.Fornecedor_End_CEP := TFunctions.replace(value, '-')
end;

procedure TFornecedor.setFornecedor_End_Cod_Municipio(const value: String);
begin
  self.Fornecedor_End_Cod_Municipio := value
end;

procedure TFornecedor.setFornecedor_End_Cod_Pais(const value: String);
begin
  self.Fornecedor_End_Cod_Pais := ifthen(value = '', '1058', value)
end;

procedure TFornecedor.setFornecedor_End_Logradouro(const value: String);
begin
  self.Fornecedor_End_Logradouro := TFormats.uc(value)
end;

procedure TFornecedor.setFornecedor_End_Municipio(const value: String);
begin
  self.Fornecedor_End_Municipio := TFormats.uc(value)
end;

procedure TFornecedor.setFornecedor_End_Numero(const value: String);
begin
  self.Fornecedor_End_Numero := value
end;

procedure TFornecedor.setFornecedor_End_Pais(const value: String);
begin
  self.Fornecedor_End_Pais := TFormats.uc(ifthen(value = '', 'BRASIL', value))
end;

procedure TFornecedor.setFornecedor_Telefone(const value: String);
begin
  self.Fornecedor_Telefone := TFunctions.replace(value, ['-', '(', ')'])
end;

procedure TFornecedor.setFornecedor_End_UF(const value: String);
begin
  self.Fornecedor_End_UF := TFormats.uc(value)
end;

procedure TFornecedor.setFornecedor_Id(const value: integer);
begin
  self.Fornecedor_Id := value
end;

procedure TFornecedor.setFornecedor_Inscricao_Estadual(const value: String);
begin
  self.Fornecedor_Inscricao_Estadual := ifthen(value = '', 'ISENTO', value)
end;

procedure TFornecedor.setFornecedor_Inscricao_Municipal(const value: String);
begin
  self.Fornecedor_Inscricao_Municipal := ifthen(value = '', 'ISENTO', value)
end;

procedure TFornecedor.setFornecedor_Nome_Fantasia(const value: String);
begin
  self.Fornecedor_Nome_Fantasia := TFormats.uc(value)
end;

procedure TFornecedor.setFornecedor_Razao_Social(const value: String);
begin
  self.Fornecedor_Razao_Social := TFormats.uc(value)
end;

procedure TFornecedor.Update(puk: tupdatekind = ukhard);
var
  qry: tfdquery;
begin
  case puk of

    ukhard:
      begin
        Tdb.ExecQuery('UPDATE FORNECEDOR SET RAZAO_SOCIAL=?, NOME_FANTASIA=?, CNPJ_CPF=?, INSCRICAO_ESTADUAL=?, INSCRICAO_MUNICIPAL=?, ENDERECO=?, NUMERO=?, BAIRRO=?, MUNICIPIO=?,'
          + 'CODIGO_MUNICIPIO=?, ESTADO=?, CEP=?, CODIGO_PAIS=?, PAIS=?, TELEFONE=? where CODIGO = ?', [self.Fornecedor_Razao_Social, self.Fornecedor_Nome_Fantasia,
          self.Fornecedor_CNPJ, self.Fornecedor_Inscricao_Estadual, self.Fornecedor_Inscricao_Municipal, self.Fornecedor_End_Logradouro, self.Fornecedor_End_Numero,
          self.Fornecedor_End_Bairro, self.Fornecedor_End_Municipio, self.Fornecedor_End_Cod_Municipio, self.Fornecedor_End_UF, self.Fornecedor_End_CEP,
          self.Fornecedor_End_Cod_Pais, self.Fornecedor_End_Pais, self.Fornecedor_Telefone, self.ID])
      end;

    uksoft:
      begin
        qry := self.Select(self.Fornecedor_Id);
        with qry do
        begin
          Edit;

          FIELDBYNAME('DATA_CADASTRO').AsDateTime := TFunctions.ifthen(FIELDBYNAME('DATA_CADASTRO').AsDateTime = 0, self.Fornecedor_Data_Cadastro,
            FIELDBYNAME('DATA_CADASTRO').AsDateTime);

          FIELDBYNAME('RAZAO_SOCIAL').asString := TFunctions.ifthen(FIELDBYNAME('RAZAO_SOCIAL').asString = '', self.Fornecedor_Razao_Social, FIELDBYNAME('RAZAO_SOCIAL').asString);

          FIELDBYNAME('NOME_FANTASIA').asString := TFunctions.ifthen(FIELDBYNAME('NOME_FANTASIA').asString = '', self.Fornecedor_Nome_Fantasia,
            FIELDBYNAME('NOME_FANTASIA').asString);

          FIELDBYNAME('CNPJ_CPF').asString := TFunctions.ifthen(FIELDBYNAME('CNPJ_CPF').asString = '', self.Fornecedor_CNPJ, FIELDBYNAME('CNPJ_CPF').asString);

          FIELDBYNAME('INSCRICAO_ESTADUAL').asString := TFunctions.ifthen(FIELDBYNAME('INSCRICAO_ESTADUAL').asString = '', self.Fornecedor_Inscricao_Estadual,
            FIELDBYNAME('INSCRICAO_ESTADUAL').asString);

          FIELDBYNAME('INSCRICAO_MUNICIPAL').asString := TFunctions.ifthen(FIELDBYNAME('INSCRICAO_ESTADUAL').asString = '', self.Fornecedor_Inscricao_Municipal,
            FIELDBYNAME('INSCRICAO_ESTADUAL').asString);

          FIELDBYNAME('ENDERECO').asString := TFunctions.ifthen(FIELDBYNAME('ENDERECO').asString = '', self.Fornecedor_End_Logradouro, FIELDBYNAME('ENDERECO').asString);

          FIELDBYNAME('NUMERO').asString := TFunctions.ifthen(FIELDBYNAME('NUMERO').asString = '', self.Fornecedor_End_Numero, FIELDBYNAME('NUMERO').asString);

          FIELDBYNAME('BAIRRO').asString := TFunctions.ifthen(FIELDBYNAME('BAIRRO').asString = '', self.Fornecedor_End_Bairro, FIELDBYNAME('BAIRRO').asString);

          FIELDBYNAME('MUNICIPIO').asString := TFunctions.ifthen(FIELDBYNAME('MUNICIPIO').asString = '', self.Fornecedor_End_Municipio, FIELDBYNAME('MUNICIPIO').asString);

          FIELDBYNAME('CODIGO_MUNICIPIO').AsInteger := TFunctions.ifthen(FIELDBYNAME('CODIGO_MUNICIPIO').AsInteger = 0, StrToInt(self.Fornecedor_End_Cod_Municipio),
            FIELDBYNAME('CODIGO_MUNICIPIO').AsInteger);

          FIELDBYNAME('ESTADO').asString := TFunctions.ifthen(FIELDBYNAME('ESTADO').asString = '', self.Fornecedor_End_UF, FIELDBYNAME('ESTADO').asString);

          FIELDBYNAME('CEP').asString := TFunctions.ifthen(FIELDBYNAME('CEP').asString = '', self.Fornecedor_End_CEP, FIELDBYNAME('CEP').asString);

          FIELDBYNAME('CODIGO_PAIS').AsInteger := TFunctions.ifthen(FIELDBYNAME('CODIGO_PAIS').AsInteger = 0, StrToInt(self.Fornecedor_End_Cod_Pais),
            FIELDBYNAME('CODIGO_PAIS').AsInteger);

          FIELDBYNAME('PAIS').asString := TFunctions.ifthen(FIELDBYNAME('PAIS').asString = '', self.Fornecedor_End_Pais, FIELDBYNAME('PAIS').asString);

          FIELDBYNAME('TELEFONE').asString := TFunctions.ifthen(FIELDBYNAME('TELEFONE').asString = '', self.Fornecedor_Telefone, FIELDBYNAME('TELEFONE').asString);

          post;
          Refresh;

          self.RAZAO_SOCIAL := FIELDBYNAME('RAZAO_SOCIAL').asString;
          self.NOME_FANTASIA := FIELDBYNAME('NOME_FANTASIA').asString;
          self.CNPJ := FIELDBYNAME('CNPJ_CPF').asString;
          self.IE := FIELDBYNAME('INSCRICAO_ESTADUAL').asString;
          self.IM := FIELDBYNAME('INSCRICAO_MUNICIPAL').asString;
          self.LOGRADOURO := FIELDBYNAME('ENDERECO').asString;
          self.NUMERO := FIELDBYNAME('NUMERO').asString;
          self.BAIRRO := FIELDBYNAME('BAIRRO').asString;
          self.MUNICIPIO := FIELDBYNAME('MUNICIPIO').asString;
          self.COD_MUNICIPIO := FIELDBYNAME('CODIGO_MUNICIPIO').asString;
          self.UF := FIELDBYNAME('ESTADO').asString;
          self.CEP := FIELDBYNAME('CEP').asString;
          self.COD_PAIS := FIELDBYNAME('CODIGO_PAIS').asString;
          self.PAIS := FIELDBYNAME('PAIS').asString;
          self.TELEFONE := FIELDBYNAME('TELEFONE').asString;
        end;
      end;
  end;
end;

end.
