unit v_Env;

interface

uses System.sysutils, classes, IdStack, inifiles, variants, dateutils, h_db, firedac.comp.client;

type
  TEnv = class(TObject)
  public
    class function UserName: string;

    class function MachineName: string;

    class function getIp: string; overload; // ip local
    class function getIp(pMachineName: string): string; overload; // ip de host específico
    class procedure LastAccess;

  type
    Date = class
    public
      class function FirstDayOfMonth: tdatetime;
      class function LastDayOfMonth: tdatetime;
      class function FirstDayOfYear: tdate;
      class function LastDayOfYear: tdate;
      class function FirstDayOfLastMonth: tdatetime;
      class function LastDayOfLastMonth: tdatetime;
      class function sumDays(i: integer): tdatetime;
    private
      class function f(pattern: string; date_base: tdatetime = 0): integer;

    end;

  type
    TUser = class(TObject)

    public
    class var
      NAME: string;
      ID: integer;

      class function isAdmin: boolean;
      class function isClient: boolean;
      class function isGerente: boolean;
    end;

  type
    TServerFTP = class
    public const
      User = 'u796938653.cliente';
      password = '7JGCa7Ss6iu1o8tH';

      // Old Host      31.170.166.122
      host = 'ftp.smcsistemas.com.br';

    end;

  type
    Database = class

    public type
      Local = Class
      private
        class function getServer: string; static;
        class procedure setServer(value: string); static;
        class function getDatabase: string; static;
        class procedure SetDatabase(const value: string); static;
      public
        class property Server: string read getServer write setServer;
        class function User: string;
        class function password: string;
        class property Database: string read getDatabase write SetDatabase;
      End;
    public type
      Online = Class
      const
        // Old Server: sql125.main-hosting.eu
        // New Server: sql1218.main-hosting.eu
        // Old Server IP: 31.170.166.103
        // New IP: 31.220.50.194   * USE THIS
        // This configuration have to be made in TModule `connHostinger` component
        Server = '31.220.50.194';
        User = 'u796938653_cli';
        password = 'SGyHKA6yIVSCtL';
        Database = 'u796938653_mngr';
      End;
    end;

  type
    Version = class
    private
      class function getSys: variant; static;
      class procedure SetSys(value: variant); static;
    public
      class function Version: string;
      class property SYS: variant read getSys write SetSys;
    end;

  type
    Configurations = class
    private
      class function getLocalKey: TStringList; static; // dias sem verificar em inteiro
      class procedure setLocalKey(value: TStringList); static; // insere data de verificação em tdate
    public
      class property LOCAL_KEY: TStringList read getLocalKey write setLocalKey;
    end;

  Type
    Core = class
    const
      Caption = 'SMC LIGHT - v2.4.4012.47';
    public
      class function isDebug: boolean;
      class function pdvOnly: boolean;
    end;

  type
    Printers = class
    public

      class function getNfce: string; static;
      class function getComprovanteVenda: string; static;

      class procedure setNFCe(value: string); static;
      class procedure setComprovanteVenda(value: string); static;

      class property NFCE: string read getNfce write setNFCe;
      class property COMPROVANTE_VENDA: string read getComprovanteVenda write setComprovanteVenda;
    end;
  end;

implementation

uses v_Dir, h_Functions;

class function TEnv.UserName: string;
begin
  result := GetEnvironmentVariable('USERNAME');
end;

class function TEnv.MachineName: string;
begin
  result := GetEnvironmentVariable('COMPUTERNAME');
end;

class function TEnv.getIp: string;
begin
  result := getIp(MachineName);
end;

class function TEnv.getIp(pMachineName: string): string;
begin
  TIdStack.IncUsage;
  if GStack.IsIP(pMachineName) then
    result := pMachineName
  else
    result := GStack.ResolveHost(pMachineName);
  TIdStack.DecUsage;
end;

class procedure TEnv.LastAccess;
  procedure writeAccess;
  begin
    tdb.ExecQuery('insert into acesso(data, usuario) values(?,?)', [System.sysutils.Date, TEnv.UserName]);
  end;

var
  qry: tfdquery;
  i: integer;
begin
  qry := tdb.SimpleQuery('SELECT data from ACESSO order by data desc limit 1');
  if qry <> nil then
  begin
    if comparedate(qry.Fields[0].AsDateTime, System.sysutils.Date) = 1 then
      raise Exception.Create('Verifique a data do seu computador!')
    else
      writeAccess;
  end
  else
    writeAccess
end;

{ TEnv.Database }

class function TEnv.Database.Local.getDatabase: string;
begin
  result := TIniFile.Create(TDir.ConfigIni).readString('dados_conexao', 'Database', 'smc_automacao');
end;

class function TEnv.Database.Local.password: string;
begin
  result := TIniFile.Create(TDir.ConfigIni).readString('dados_conexao', 'password', '1234');
end;

class procedure TEnv.Database.Local.SetDatabase(const value: string);
begin
  TIniFile.Create(TDir.ConfigIni).writestring('dados_conexao', 'Database', value);
end;

class procedure TEnv.Database.Local.setServer(value: string);
begin
  TIniFile.Create(TDir.ConfigIni).writestring('dados_conexao', 'Server', value);
end;

class function TEnv.Database.Local.getServer: string;
begin
  result := TIniFile.Create(TDir.ConfigIni).readString('dados_conexao', 'Server', 'localhost');
end;

class function TEnv.Database.Local.User: string;
begin
  result := 'root';
end;

class function TEnv.Version.getSys: variant;
begin
  result := TIniFile.Create(TDir.ConfigIni).readString('atualizacao', 'versao', '');
  result := TFunctions.replace(result, '.');
  if result = '' then
    result := 0;
end;

class procedure TEnv.Version.SetSys(value: variant);
begin
  TIniFile.Create(TDir.ConfigIni).writestring('atualizacao', 'versao', value);
end;

class function TEnv.Version.Version: string;
begin
  result := TIniFile.Create(TDir.ConfigIni).readString('atualizacao', 'versao', '');
end;

class function TEnv.TUser.isAdmin: boolean;
begin
  result := name = 'ADMIN';
end;

{ TEnv.Date }

class function TEnv.Date.f(pattern: string; date_base: tdatetime = 0): integer;
begin
  if date_base = 0 then
    date_base := now;
  result := strtoint(formatdatetime(pattern, date_base));
end;

class function TEnv.Date.FirstDayOfLastMonth: tdatetime;
var
  dt: tdatetime;
begin
  dt := IncMonth(now, -1);
  ReplaceDate(dt, EncodeDate(f('YYYY', dt), f('MM', dt), 1));
  result := dt;
end;

class function TEnv.Date.LastDayOfLastMonth: tdatetime;
var
  dt: tdatetime;
begin
  dt := IncMonth(now, -1);
  ReplaceDate(dt, EndOfAMonth(f('YYYY', dt), f('MM', dt)));
  result := dt;
end;

class function TEnv.Date.FirstDayOfMonth: tdatetime;

var
  dt: tdatetime;
begin
  dt := now;
  ReplaceDate(dt, EncodeDate(f('YYYY'), f('MM'), 1));
  result := dt;
end;

class function TEnv.Date.FirstDayOfYear: tdate;
var
  dt: tdatetime;
begin
  dt := now;
  ReplaceDate(dt, EncodeDate(f('YYYY'), 1, 1));
  result := dt;
end;

class function TEnv.Date.LastDayOfMonth: tdatetime;
var
  dt: tdatetime;
begin
  dt := now;
  ReplaceDate(dt, EndOfAMonth(f('YYYY'), f('MM')));
  result := dt;
end;

class function TEnv.Date.LastDayOfYear: tdate;
var
  dt: tdatetime;
begin
  dt := now;
  ReplaceDate(dt, EndOfAMonth(f('YYYY'), 12));
  result := dt;
end;

class function TEnv.Date.sumDays(i: integer): tdatetime;
begin
  result := incday(now, i);
end;

class function TEnv.TUser.isClient: boolean;
var
  qry: tfdquery;
begin
  result := False;
  qry := tdb.SimpleQuery('select u.tipo_usuario, c.tipo_colaborador from usuario u join colaborador c on c.cod_usario = u.codigo where u.codigo = ?',
    [SELF.ID]);
  if qry <> nil then
    result := (qry.Fields[0].asString = 'CLIENTE') and (qry.Fields[1].asString = '6');
end;

class function TEnv.TUser.isGerente: boolean;
var
  qry: tfdquery;
begin
  result := False;
  qry := tdb.SimpleQuery('select c.tipo_colaborador, u.tipo_usuario from usuario u left join colaborador c on c.cod_usuario = u.codigo where u.codigo = ?',
    [TEnv.TUser.ID]);
  if qry <> nil then
    result := (qry.FieldByName('tipo_colaborador').value = '6') or (qry.FieldByName('tipo_usuario').value = 'SISTEMA');
end;

class function TEnv.Configurations.getLocalKey: TStringList;
var
  qry: tfdquery;
  key, cnpj, data, situacao: string;
begin
  result := nil;
  qry := tdb.SimpleQuery('select local_key from empresa');
  if qry <> nil then
  begin
    key := TFunctions.CodeDecode(qry.Fields[0].asString, False);
    result := TStringList.Create;
    data := copy(key, 0, 10);
    key := TFunctions.replace(key, data);
    situacao := copy(key, length(key), 1);
    key := copy(key, 0, length(key) - 1);
    cnpj := key;
    result.Add(data);
    result.Add(cnpj);
    result.Add(situacao);
    result.Text;
  end;
end;

class procedure TEnv.Configurations.setLocalKey(value: TStringList);
var
  str: string;
begin
  if value <> nil then
  begin
    str := value.Strings[0];
    str := str + value.Strings[1];
    str := str + value.Strings[2];
    str := TFunctions.CodeDecode(str, True);
    tdb.ExecQuery('update empresa set local_key = ? where cnpj = ?', [str, value.Strings[1]])
  end;
end;

{ TEnv.Core }

class function TEnv.Core.isDebug: boolean;
begin
  result := {$IFDEF DEBUG}True{$ELSE}False{$ENDIF};
end;

class function TEnv.Core.pdvOnly: boolean;
begin
  TIniFile.Create(TDir.PreferencesIni).writebool('system', 'pdv_only', TIniFile.Create(TDir.PreferencesIni).readBool('system', 'pdv_only', False));
  result := TIniFile.Create(TDir.PreferencesIni).readBool('system', 'pdv_only', False);
end;

{ TEnv.Printer }

class function TEnv.Printers.getComprovanteVenda: string;
begin
  TEnv.Printers.COMPROVANTE_VENDA := TIniFile.Create(TDir.PreferencesIni).readString('printers', 'comprovante_venda', '');
  result := TIniFile.Create(TDir.PreferencesIni).readString('printers', 'comprovante_venda', '');
end;

class function TEnv.Printers.getNfce: string;
begin
  TEnv.Printers.NFCE := TIniFile.Create(TDir.PreferencesIni).readString('printers', 'nfce', '');
  result := TIniFile.Create(TDir.PreferencesIni).readString('printers', 'nfce', '');
end;

class procedure TEnv.Printers.setComprovanteVenda(value: string);
begin
  TIniFile.Create(TDir.PreferencesIni).writestring('printers', 'comprovante_venda', value);
end;

class procedure TEnv.Printers.setNFCe(value: string);
begin
  TIniFile.Create(TDir.PreferencesIni).writestring('printers', 'nfce', value);
end;

end.
