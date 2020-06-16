//Verificado automaticamente em 16/06/2020 09:28
unit m_Usuario;
{
|===============================================================================
|   DATA   |DESENVOLVEDOR|HISTORICO DA ALTERACAO DO CODIGO                     |
|----------|-------------|-----------------------------------------------------|
|21/02/2020|WANDER       |function TUsuario.Login:                             |
|        02|             |Criado usu�rio MASTER e senha PIPOCA                 |
|----------|-------------|-----------------------------------------------------|
|21/02/2020|WANDER       |Passou a tratar usu�rio e senha de forma             |
|        12|             |criptografada                                        |
|----------|-------------|-----------------------------------------------------|
|21/02/2020|WANDER       |Passou a registrar log de "acesso ao sistema" e de   |
|        17|             |senha inv�lida.                                      |
|===============================================================================
}
interface

uses SYSUTILS, firedac.comp.client, h_db, i_crud, c_Globals, h_functions;

Type
  TUsuario = class(TInterfacedObject, ICRUD)

  private
    Usuario_ID: integer;
    Usuario_nome: string;
    Usuario_senha: string;
    Usuario_administrador: boolean;

    procedure setUsuario_Nome(value: string);
    procedure setUsuario_Senha(value: string);
    procedure setUsuario_administrador(value: boolean);

    function getUsuario_ID: integer;
    function getUsuario_Nome: string;
    function getUsuario_Senha: String;
    function getUsuario_administrador: boolean;

    procedure Insert;
    procedure Delete(const pID: integer);
    function Select(FieldNames: array of String; const Values: array of Variant): tfdquery; overload;
    function Select(const pID: integer): tfdquery; overload;
    procedure Update(pUk: TUpdateKind = ukHard);

    procedure clearData;

  public
    property ID: integer read getUsuario_ID;
    property NOME: string read getUsuario_Nome write setUsuario_Nome;
    property SENHA: string read getUsuario_Senha write setUsuario_Senha;
    property ADMIN: boolean read getUsuario_administrador write setUsuario_administrador;

    constructor Create(pk: integer = 0); overload;

    function Login: boolean;

  end;

implementation

{ TUsuario }

uses u_funcoes;

procedure TUsuario.clearData;
begin
  Usuario_ID := 0;
  Usuario_nome := '';
  Usuario_senha := '';
  Usuario_administrador := false;
end;

constructor TUsuario.Create(pk: integer = 0);
var
  qry: tfdquery;
begin

  inherited Create;
  clearData;

  if pk <> 0 then
  begin
    qry := self.Select(['CODIGO'], [pk]);
    if qry = nil then
      raise Exception.Create('Usu�rio n�o cadastrado!')
    else
    begin

      self.Usuario_ID := qry.Fieldbyname('CODIGO').AsInteger;
      self.Usuario_nome := qry.Fieldbyname('USUARIO').asString;
      self.Usuario_senha := qry.Fieldbyname('SENHA').asString;
      self.Usuario_administrador := qry.Fieldbyname('ADMINISTRADOR').asString = 'SIM';

    end;
  end;

end;

procedure TUsuario.Delete(const pID: integer);
begin
  Tdb.ExecQuery('delete from usuario where codigo = ?', [pID]);
end;

function TUsuario.getUsuario_administrador: boolean;
begin
  result := self.Usuario_administrador;
end;

function TUsuario.getUsuario_ID: integer;
begin
  result := self.Usuario_ID;
end;

function TUsuario.getUsuario_Nome: string;
begin
  result := self.Usuario_nome
end;

function TUsuario.getUsuario_Senha: String;
begin
  result := self.Usuario_senha;
end;

procedure TUsuario.Insert;
begin
  Tdb.SimpleQuery('insert into usuario(data_cadastro, usuario, senha, senha_confirma, administrador, tipo_usuario) values (current_date(), ?,?,?,?, "CLIENTE")',
    [self.Usuario_nome, self.Usuario_senha, self.Usuario_senha, tfunctions.ifthen(self.Usuario_administrador, 'SIM', 'NAO')]);

  self.Usuario_ID := Tdb.SimpleQuery('select codigo from usuario where usuario = ?, senha =?, tipo_usuario="CLIENTE"').Fields[0].AsInteger;
end;

function TUsuario.Login: boolean;
var
  qry: tfdquery;
  correct_password: boolean;
begin
  // Wander
  // Cria��o do usuario MASTER com senha PIPOCA
  //----------------------------------------------------------------------------
  {
  if UpperCase(self.Usuario_nome) = 'MASTER' then
  begin
     if UpperCase(self.Usuario_senha) = 'PIPOCA' then
     begin
        RegistraLog('Acessou o Sistema');
        result := true;
        exit;
     end;
     RegistraLog('Senha incorreta!');
     raise Exception.Create('Senha incorreta!');
  end;
  }
  if UsuarioMASTER_SenhaCorreta(self.Usuario_nome,self.Usuario_senha) then
  begin
     RegistraLog('Acessou Configura��es Administrativas');
     RegistraLog('Acessou o Sistema');
     result := true;
     exit;
  end;
  if self.Usuario_nome = 'MASTER' then
  begin
    //wnAlerta('Permiss�es', slinebreak + slinebreak + 'Senha incorreta! Tente novamente.');
    RegistraLog('Senha incorreta!');
    raise Exception.Create('Senha incorreta!');
    exit;
  end;

  // Fim Cria��o do usuario MASTER com senha PIPOCA
  //----------------------------------------------------------------------------

  //Wander
  // Tratar usuario e senha de frma criptografada
  qry := self.Select(['USUARIO'], [Cripto(self.Usuario_nome)]);
  if qry = nil then
    raise Exception.Create(Format('Usu�rio "%s" inexitente', [self.Usuario_nome]))
  else
  begin
    while NOT qry.EOF do
    begin
      correct_password := qry.Fieldbyname('SENHA').asString = Cripto(self.Usuario_senha);
      if correct_password then
        break;
      qry.Next;
    end;

    if not correct_password then
    begin
      RegistraLog('Senha incorreta!');
      raise Exception.Create('Senha incorreta!');
    end;
  end;
  RegistraLog('Acessou o Sistema');
  self.Usuario_ID := qry.Fieldbyname('CODIGO').AsInteger;
  result := true;


{  qry := self.Select(['USUARIO'], [self.Usuario_nome]);
  if qry = nil then
    raise Exception.Create(Format('Usu�rio "%s" inexitente', [self.Usuario_nome]))
  else
  begin
    while NOT qry.EOF do
    begin
      correct_password := qry.Fieldbyname('SENHA').asString = self.Usuario_senha;
      if correct_password then
        break;
      qry.Next;
    end;

    if not correct_password then
      raise Exception.Create('Senha incorreta!');
  end;
  self.Usuario_ID := qry.Fieldbyname('CODIGO').AsInteger;
  result := true;
}
end;

function TUsuario.Select(FieldNames: array of String; const Values: array of Variant): tfdquery;
begin

  result := Tdb.SimpleQuery('select * from usuario ' + Tdb.GenWhere(FieldNames), Values)
end;

function TUsuario.Select(const pID: integer): tfdquery;
begin
  result := self.Select(['CODIGO'], [pID]);
end;

procedure TUsuario.setUsuario_administrador(value: boolean);
begin
  self.Usuario_administrador := value;
end;

procedure TUsuario.setUsuario_Nome(value: string);
begin
  if value = '' then
    raise Exception.Create('Login do usu�rio deve ser informado.');

  self.Usuario_nome := value;
end;

procedure TUsuario.setUsuario_Senha(value: string);
begin
  if value = '' then
    raise Exception.Create('Senha do usu�rio deve ser informada');
  self.Usuario_senha := value;
end;

procedure TUsuario.Update(pUk: TUpdateKind);
begin

  case pUk of
    ukSoft:
      Tdb.ExecQuery('update usuario set senha=?, senha_confirma=?, administrador=? where codigo=?',
        [self.Usuario_senha, self.Usuario_senha, tfunctions.ifthen(self.Usuario_administrador, 'SIM', 'NAO')]);
    ukHard:
      Tdb.ExecQuery('update usuario set usuario=?, senha=?, senha_confirma=?, administrador=? where codigo=?', [self.Usuario_nome, self.Usuario_senha, self.Usuario_senha,
        tfunctions.ifthen(self.Usuario_administrador, 'SIM', 'NAO')]);
  end;

end;

end.
