unit Principal;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls, Data.DBXMySQL,
  Data.DBXPool, Data.DB, Data.SqlExpr, Data.Win.ADODB, cxClasses,
  dxServerModeData, dxServerModeADODataSource, FireDAC.Stan.Intf,
  FireDAC.Stan.Option, FireDAC.Stan.Error, FireDAC.UI.Intf, FireDAC.Phys.Intf,
  FireDAC.Stan.Def, FireDAC.Stan.Pool, FireDAC.Stan.Async, FireDAC.Phys,
  FireDAC.Phys.MySQL, FireDAC.Phys.MySQLDef, FireDAC.VCLUI.Wait,
  FireDAC.Comp.UI, FireDAC.Comp.Client, FireDAC.Stan.Param, FireDAC.DatS,
  FireDAC.DApt.Intf, FireDAC.DApt, FireDAC.Comp.DataSet;

type
  TfrmPrincipal = class(TForm)
    bAtualizar: TButton;
    MySQLDriver: TFDPhysMySQLDriverLink;
    FDGUIxWaitCursor1: TFDGUIxWaitCursor;
    FdBaseDados: TFDConnection;
    Query1: TFDQuery;
    procedure bAtualizarClick(Sender: TObject);
  private
    { Private declarations }
   function AcessarBancoDeDados(pSGBD, pNomeDoBancoDeDados,pUsuario,pSenha:String):Boolean;
   procedure AtualizarBancoDeDados;
   procedure Atualizacao01;
   procedure DesconectarBancoDeDados;
   procedure Executar(pTexto:String);
   function NaoAtualizado(pInformacao:String) : Boolean;
   function DataServidor:tDatetime;
   procedure CriaATUALIZADO_ATU;
  public
    { Public declarations }
  end;

var
  frmPrincipal: TfrmPrincipal;

implementation

uses
  S_Module;

{$R *.dfm}

procedure TfrmPrincipal.bAtualizarClick(Sender: TObject);
var vSGBD,
    vNomeDoBancoDeDados,
    vUsuario,
    vSenha: String;
begin
   // Acessa o banco de dados e aplica atualizações
   //---------------------------------------------------------------------------

   // Definir o nome do Banco de Dados
//   vSGBD               := 'MySql';
//   vNomeDoBancoDeDados := 'rf_2020';
//   vUsuario            := 'root';
//   vSenha              := '#P3dr0_2@13#';
//
//   // Acessar o banco de dados
//   if not AcessarBancoDeDados(vSGBD,
//                              vNomeDoBancoDeDados,
//                              vUsuario,
//                              vSenha) then
//   begin
//      ShowMessage('Não foi possível conectar ao banco de dados: '+vNomeDoBancoDeDados);
//      exit;
//   end;

   // Atualizar o banco de dados
   AtualizarBancoDeDados;

   // Desconectar do Banco
   DesconectarBancoDeDados;

   // Fim
   ShowMessage('Base de Dados Atualizada!');

end;

function TfrmPrincipal.AcessarBancoDeDados(pSGBD,pNomeDoBancoDeDados,pUsuario,pSenha:String):Boolean;
begin
  // Tentar acessar o banco de dados
  // Retornos:
  //   True: Se conseguir acessar
  //   False: Se não conseguir acessar
  //----------------------------------------------------------------------------
//
//  result := false;

  // Verificar Dados obrigatórios
//  if (pSGBD               = '') or
//     (pNomeDoBancoDeDados = '') or
//     (pUsuario            = '') or
//     (pSenha              = '') then
//     exit;

  // Apontar para a dll de conexão do MySql
  {
  FDPhysMySQLDriverLink1.VendorLib := 'C:\Windows\SysWOW64\libmysql.dll';
  }
  // Parametrizar a conexão
  //FdBaseDados.DriverName      := 'MySql';
  //FdBaseDados.Params.DriverID := pSGBD;
  //FdBaseDados.Params.Database := pNomeDoBancoDeDados;
  //FdBaseDados.Params.UserName := pUsuario;
  //FdBaseDados.Params.Password := pSenha;

  {FdBaseDados.Open;}


  FdBaseDados.Open();

  //  FdBaseDados.Open('');

  // Tentar conectar ao banco
  try
     //FdBaseDados.Open();
     Result := true;
     // Sucesso!
  except
     Result := False;
     // Falha!
  end;

end;

procedure TfrmPrincipal.AtualizarBancoDeDados;
begin
  // Atualiza o banco de dados
  //----------------------------------------------------------------------------
  CriaATUALIZADO_ATU;
  Atualizacao01;

end;

function TfrmPrincipal.DataServidor: tDatetime;
begin
  // retorna a data constante no servidor
  result := date;
end;

procedure TfrmPrincipal.DesconectarBancoDeDados;
begin
  // Desconecta do Banco de Dados;
  //----------------------------------------------------------------------------
end;

procedure TfrmPrincipal.Executar(pTexto:String);
begin
  // Executa o script contido no parãmetro pTexto
  //----------------------------------------------------------------------------
  TRY
     Query1.close;
     Query1.sql.clear;
     Query1.sql.add(pTexto);
     Query1.ExecSql;
  FINALLY
  END;
end;

function TfrmPrincipal.NaoAtualizado(pInformacao: String): Boolean;
begin
   result := False;
   Query1.close;
   Query1.sql.clear;
   Query1.sql.add('SELECT ATU_FUNCAO FROM ATUALIZADO_ATU ');
   Query1.sql.add(' WHERE ATU_FUNCAO = :ATU_FUNCAO       ');
   //Query1.ParamByName('ATU_FUNCAO').AsString := pInformacao;
   Query1.Open;
   try
         //if Query1.eof Then
         begin
             // nao atualizou
             result := true;
             Query1.Close;
             Query1.SQL.clear;
             Query1.sql.add('INSERT INTO ATUALIZADO_ATU ');
             Query1.sql.add('     ( ATU_FUNCAO,         ');
             Query1.sql.add('       ATU_DATA)           ');
             Query1.sql.add('VALUES                     ');
             Query1.sql.add('     (:ATU_FUNCAO,         ');
             Query1.sql.add('      :ATU_DATA)           ');
             //Query1.ParamByName('ATU_FUNCAO').AsString   := pInformacao;
             //Query1.ParamByName('ATU_DATA'  ).AsDateTime := DataServidor; // Now;
             Query1.ExecSQL;
         end;
   finally
   end;
end;

procedure TfrmPrincipal.Atualizacao01;
begin
  // parte 01 das atualizações
  //----------------------------------------------------------------------------

  // Criar tabela de Funções do sistema
  // para o controlde de acesso dos usuários
  if NaoAtualizado('Criar FUNCOES_FUN') then
  begin
      Query1.Close;
      Query1.SQL.Clear;
      Query1.SQL.Add('CREATE TABLE FUNCOES_FUN(              ');
      Query1.SQL.Add('   FUN_CODIGO    VARCHAR(10) NOT NULL, '); // (ID) CODIGO DA FUNÇÃO
      Query1.SQL.Add('   FUN_DESCRICAO VARCHAR(40) NOT NULL, '); // DESCRIÇÃO DA FUNÇÃO
      Query1.SQL.Add('   FUN_NUMERO    integer     NOT NULL  '); // NÚMERO DE ORDEM DA FUNÇÃO
      Query1.SQL.Add('   )                                   ');
      Query1.ExecSQL;
  end;
end;

procedure TfrmPrincipal.CriaATUALIZADO_ATU;
begin
   // cria a tabela de retistro do histórico de atualizacoes da base de dados
   // quais scropts foram executados no banco de dados
   try
       query1.close;
       query1.sql.clear;
       query1.sql.add('CREATE TABLE ATUALIZADO_ATU          ');
       query1.sql.add('     ( ATU_FUNCAO VARCHAR(100) NULL, ');
       query1.sql.add('       ATU_DATA   DATETIME     NULL  ');
       query1.sql.add('     )                               ');
       query1.ExecSQL;
    except
    end;
end;


end.

