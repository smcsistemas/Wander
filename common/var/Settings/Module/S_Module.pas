unit S_Module;

interface

uses
  System.SysUtils, System.Classes, FireDAC.Stan.Option,
  v_env, FireDAC.Comp.Client, FireDAC.Phys.MySQL,
  FireDAC.Comp.UI, FireDAC.Stan.Intf, FireDAC.Stan.Error, FireDAC.UI.Intf, FireDAC.Phys.Intf, FireDAC.Stan.Def, FireDAC.Stan.Pool, FireDAC.Stan.Async, FireDAC.Phys,
  FireDAC.VCLUI.Wait, Data.DB, Vcl.Controls, Vcl.StdCtrls, FireDAC.Stan.Param,
  FireDAC.DatS, FireDAC.DApt.Intf, FireDAC.DApt, FireDAC.Comp.DataSet;

type
  TModule = class(TDataModule)
  var
    connection: TFDConnection;
    Link: TFDPhysMySQLDriverLink;
    Wait: TFDGUIxWaitCursor;
    connHostinger: TFDConnection;
    query: TFDQuery;
    Q2: TFDQuery;
  private
    { Private declarations }
    runapp: boolean;

  public
    { Public declarations }

    procedure connectionConfigure;
  end;

var
  Module: TModule;

implementation

{ %CLASSGROUP 'Vcl.Controls.TControl' }

{$R *.dfm}

procedure TModule.connectionConfigure;
begin
  try

    connection.Connected := false;
    connection.Params.BeginUpdate;
    connection.Params.Clear;
    connection.Params.endUpdate;

    connection.ResourceOptions.AutoReconnect := false;
    connection.Params.BeginUpdate;

    connection.LoginPrompt := false;
    connection.Params.Values['Server'] := tEnv.database.local.server;
    connection.Params.Values['Port'] := '3306';
    connection.Params.Values['Database'] := tEnv.database.local.database;
    connection.Params.Values['User_name'] := tEnv.database.local.user;
    connection.Params.Values['Password'] := tEnv.database.local.password;

    connection.Params.Values['DriverID'] := 'MySQL';
    connection.Params.Values['LoginTimeout'] := '5000';

    connection.Params.endUpdate;
    connection.Connected := true;
    connection.ResourceOptions.AutoReconnect := true;
    connHostinger.ResourceOptions.AutoReconnect := true;
    runapp := true;

  except
    on e: EXCEPTION do
      raise EXCEPTION.create(e.message + slinebreak + 'Erro ao conectar com a base de dados!');
  end;
end;

end.
