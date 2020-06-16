//Verificado automaticamente em 16/06/2020 09:28
{ v 18.10.16 10:09 }
unit cad_regiao;
{
================================================================================
|ITEM |DATA |DESENVOLVEDOR       |HISTORICO                                    |
|-----|-----|--------------------|---------------------------------------------|
|  117|26/04|Wander              |Implemento o c�digo desta tela               |
|     |20:45|                    |                                             |
================================================================================
}
interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants,
  System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls, Vcl.DBGrids,
  Vcl.DBCtrls, Vcl.ComCtrls, cxGraphics, cxControls, cxLookAndFeels,
  cxLookAndFeelPainters, cxContainer, cxEdit,
  dxSkinXmas2008Blue, Vcl.Menus, cxMaskEdit, cxDropDownEdit, cxDBEdit,
  cxButtons, cxTextEdit, FireDAC.Stan.Intf, FireDAC.Stan.Option,
  FireDAC.Stan.Param, FireDAC.Stan.Error, FireDAC.DatS,
  FireDAC.Stan.Async, FireDAC.DApt, Data.DB,
  FireDAC.Comp.Client, cxClasses, dxSkinsForm,
  dxSkinsCore, dxSkinOffice2013White, dxSkinBlack, dxSkinBlue, dxSkinBlueprint,
  dxSkinCaramel, dxSkinCoffee, dxSkinDarkRoom, dxSkinDarkSide,
  dxSkinDevExpressDarkStyle, dxSkinDevExpressStyle, dxSkinFoggy,
  dxSkinGlassOceans, dxSkinHighContrast, dxSkiniMaginary, dxSkinLilian,
  dxSkinLiquidSky, dxSkinLondonLiquidSky, dxSkinMcSkin, dxSkinMetropolis,
  dxSkinMetropolisDark, dxSkinMoneyTwins, dxSkinOffice2007Black,
  dxSkinOffice2007Blue, dxSkinOffice2007Green, dxSkinOffice2007Pink,
  dxSkinOffice2007Silver, dxSkinOffice2010Black, dxSkinOffice2010Blue,
  dxSkinOffice2010Silver, dxSkinOffice2013DarkGray, dxSkinOffice2013LightGray,
  dxSkinOffice2016Colorful, dxSkinOffice2016Dark, dxSkinPumpkin, dxSkinSeven,
  dxSkinSevenClassic, dxSkinSharp, dxSkinSharpPlus, dxSkinSilver,
  dxSkinSpringTime, dxSkinStardust, dxSkinSummer2008, dxSkinTheAsphaltWorld,
  dxSkinsDefaultPainters, dxSkinValentine, dxSkinVisualStudio2013Blue,
  dxSkinVisualStudio2013Dark, dxSkinVisualStudio2013Light, dxSkinVS2010,
  dxSkinWhiteprint, Vcl.Grids, FireDAC.Phys.Intf, FireDAC.DApt.Intf,
  FireDAC.Comp.DataSet;

type
  TFrm_regiao = class(TForm)
    C�digo: TLabel;
    Descri��o: TLabel;
    DBGrid1: TDBGrid;
    BtnGravar: TcxButton;
    BtnCancelar: TcxButton;
    BtnIncluir: TcxButton;
    BtnAlterar: TcxButton;
    edREG_DESCRICAO: TEdit;
    edREG_CODIGO: TEdit;
    DS_REGIOES: TDataSource;
    SQL_REGIOES: TFDQuery;
    SQL_REGIOESREG_CODIGO: TIntegerField;
    SQL_REGIOESREG_DESCRICAO: TStringField;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormShow(Sender: TObject);
    procedure BtnIncluirClick(Sender: TObject);
    procedure BtnGravarClick(Sender: TObject);
    procedure BtnCancelarClick(Sender: TObject);
    procedure BtnAlterarClick(Sender: TObject);
    procedure SQL_REGIOESAfterScroll(DataSet: TDataSet);
    procedure DBGrid1DblClick(Sender: TObject);
    procedure edREG_CODIGOExit(Sender: TObject);
    procedure edREG_DESCRICAOExit(Sender: TObject);
    procedure FormKeyPress(Sender: TObject; var Key: Char);

  private
    { Private declarations }
    Procedure Inicio;
    Procedure Limpar_Tela;
    Procedure Listar_Regioes;
    Procedure ExcluirRegistro;
    Procedure InserirRegistro;
    function Existe_REG_DESCRICAO(pREG_DESCRICAO:String):Boolean;
  public
    { Public declarations }
  end;

var
  Frm_regiao: TFrm_regiao;
  m_unidade: TDBEDIT;
  vFrm_regiao_REG_CODIGO:String;

implementation

{$R *.dfm}

uses u_funcoes, S_Module;

procedure TFrm_regiao.BtnAlterarClick(Sender: TObject);
begin
   // Prepara para alterar Regi�o
   //---------------------------------------------------------------------------

   //N�o pode...
   BtnIncluir.Enabled := False;
   BtnIncluir.Visible := False;
   BtnAlterar.Enabled := False;

   //Pode...
   BtnCancelar.Enabled:= True;
   BtnGravar.Enabled:= True;

   //Desabilita o c�digo, que ser� atribu�do sequecial e automaticamente
   edREG_CODIGO.Enabled := False;

   //Posiciona no campo para edi��o
   edREG_DESCRICAO.Enabled := True;
   edREG_DESCRICAO.SetFocus;

end;

procedure TFrm_regiao.BtnCancelarClick(Sender: TObject);
begin
   Limpar_tela;

   //Pode...
   BtnIncluir.Visible := True;
   BtnIncluir.Enabled := True;
   BtnAlterar.Enabled := True;

   //N�o pode...
   BtnCancelar.Enabled:= False;
   BtnGravar.Enabled  := False;

   //Desabilita os campos da tela
   edREG_CODIGO.Enabled    := false;
   edREG_DESCRICAO.Enabled := false;

   //Lista todas as regi�es cadastradas
   Listar_Regioes;

end;

procedure TFrm_regiao.BtnGravarClick(Sender: TObject);
begin
   // Gravar os dados
   //---------------------------------------------------------------------------

   // Descri��o obrigat�ria
   if edREG_DESCRICAO.Text = '' then
   begin
     ShowMessage('Informe o nome da Regi�o.');
     edREG_DESCRICAO.SetFocus;
     exit;
   end;

   // Cadastrar
   ExcluirRegistro;
   InserirRegistro;

   Limpar_tela;

   //Pode...
   BtnIncluir.Visible := True;
   BtnIncluir.Enabled := True;
   BtnAlterar.Enabled := True;

   //N�o pode...
   BtnCancelar.Enabled:= False;
   BtnGravar.Enabled  := False;

   //Desabilita os campos da tela
   edREG_CODIGO.Enabled    := false;
   edREG_DESCRICAO.Enabled := false;

   //Lista todas as regi�es cadastradas
   Listar_Regioes;

end;

procedure TFrm_regiao.BtnIncluirClick(Sender: TObject);
begin
   // Prepara para incluir Regi�o
   //---------------------------------------------------------------------------

   //Limpa os campos da tela
   Limpar_tela;

   //N�o pode...
   BtnIncluir.Visible := False;
   BtnIncluir.Enabled := False;
   BtnAlterar.Enabled := False;

   //Pode...
   BtnCancelar.Enabled:= True;
   BtnGravar.Enabled:= True;

   //Desabilita o c�digo, que ser� atribu�do sequecial e automaticamente
   edREG_CODIGO.Enabled := False;

   //Posiciona no campo para edi��o
   edREG_DESCRICAO.Enabled := True;
   edREG_DESCRICAO.SetFocus;
end;

procedure TFrm_regiao.DBGrid1DblClick(Sender: TObject);
begin
   vFrm_regiao_REG_CODIGO:= edREG_CODIGO.Text;
   Close;
end;

procedure TFrm_regiao.edREG_CODIGOExit(Sender: TObject);
var vREG_CODIGO:Integer;
begin
   // Recuperar Regi�o pelo C�digo
   //---------------------------------------------------------------------------
   if edREG_CODIGO.Text = '' Then
      exit;

   try
     vREG_CODIGO:= StrToInt(edREG_CODIGO.Text);
   except
     ShowMessage('C�digo inv�lido.');
     edREG_CODIGO.SetFocus;
     exit;
   end;

   edREG_DESCRICAO.Text := DescricaoREGIAO(edREG_CODIGO.Text);

   if edREG_DESCRICAO.Text = '' then
   begin
     ShowMessage('Regi�o n�o cadastrada');
     edREG_CODIGO.SetFocus;
     exit;
   end;
end;

procedure TFrm_regiao.edREG_DESCRICAOExit(Sender: TObject);
begin
   if edREG_DESCRICAO.Text = '' then
      exit;

   if BtnCancelar.Focused then
      exit;

   // Impede o cadastro de duas regi�es com o mesmo nome
   if Existe_REG_DESCRICAO(edREG_DESCRICAO.Text) then
   begin
     ShowMessage('J� existe uma Regi�o com este nome.');
     edREG_DESCRICAO.SetFocus;
     exit;
   end;
end;

procedure TFrm_regiao.ExcluirRegistro;
var Q : tFDQuery;
begin
   if edREG_CODIGO.Text = '' then
      Exit;

   q := TFDQuery.Create(nil);
   q.Connection     := Module.connection;
   q.ConnectionName := 'connection';

   Q.Close;
   Q.Sql.Clear;
   Q.SQL.Add('DELETE FROM REGIAO_REG         ');
   Q.SQL.Add(' WHERE REG_CODIGO = :REG_CODIGO');
   Q.ParamByName('REG_CODIGO').AsInteger := StrToInt(edREG_CODIGO.Text);
   Q.ExecSql;

   Q.Free;
end;

function TFrm_regiao.Existe_REG_DESCRICAO(pREG_DESCRICAO: String): Boolean;
var Q : tFDQuery;
begin
   // Recebe uma descri��o e verifica se existe alguma regi�o cadastrada com
   // esta descri��o
   // Retorna true se existir e false se n�o existir
   //---------------------------------------------------------------------------
   result := True;

   // Descri��o obrigat�ria
   if pREG_DESCRICAO = '' then
      Exit;

   q := TFDQuery.Create(nil);
   q.Connection     := Module.connection;
   q.ConnectionName := 'connection';

   Q.Close;
   Q.Sql.Clear;
   Q.SQL.Add('SELECT * FROM REGIAO_REG       ');
   Q.SQL.Add(' WHERE REG_DESCRICAO = :REG_DESCRICAO');

   if edREG_CODIGO.Text <> '' then
   begin
      // Com c�digo diferente do atual.. (outro registro)
      Q.SQL.Add(' AND REG_CODIGO <> :REG_CODIGO');
      Q.ParamByName('REG_CODIGO').AsInteger := StrToInt(edREG_CODIGO.Text);
   end;
   Q.ParamByName('REG_DESCRICAO').AsString := pREG_DESCRICAO;
   Q.Open;
   if Q.Eof then
      result := false;

   Q.Free;
end;

procedure TFrm_regiao.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  Action := cafree;
  Self := nil;
end;

procedure TFrm_regiao.FormKeyPress(Sender: TObject; var Key: Char);
begin
    if key = #27 Then
    begin
      key := #0;
      Close;
    end;

    if key = #13 Then
    begin
      key := #0;
      Perform(Wm_NextDlgCtl, 0, 0); // unit Winapi.Messages;
    end;
end;

procedure TFrm_regiao.FormShow(Sender: TObject);
begin
   Inicio;
end;

procedure TFrm_regiao.Inicio;
begin
   // AJustes iniciais...
   //---------------------------------------------------------------------------
   vFrm_regiao_REG_CODIGO:='';

   //Posiciona o bot�o de incluir
   with BtnIncluir do
   begin
      Caption    := 'Incluir';
      Left       := 487;
      Top        :=  18;
      Font.Color := clWindowText;
   end;

   //Pode...
   BtnIncluir.Visible := True;
   BtnIncluir.Enabled := True;
   BtnAlterar.Enabled := True;

   //N�o pode...
   BtnCancelar.Enabled:= False;
   BtnGravar.Enabled  := False;

   //Desabilita os campos da tela
   edREG_CODIGO.Enabled    := false;
   edREG_DESCRICAO.Enabled := false;

   //Lista todas as regi�es cadastradas
   Listar_Regioes;
end;

procedure TFrm_regiao.InserirRegistro;
var Q : tFDQuery;
    vREG_CODIGO:Integer;
begin
   if edREG_CODIGO.Text = '' then
      vREG_CODIGO := ProximoREG_CODIGO
   else
      vREG_CODIGO := StrToInt(edREG_CODIGO.Text);

   q := TFDQuery.Create(nil);
   q.Connection     := Module.connection;
   q.ConnectionName := 'connection';

   Q.Close;
   Q.Sql.Clear;
   Q.SQL.Add('INSERT INTO REGIAO_REG ');
   Q.SQL.Add('     ( REG_CODIGO,     ');
   Q.SQL.Add('       REG_DESCRICAO)  ');
   Q.SQL.Add('VALUES                 ');
   Q.SQL.Add('     (:REG_CODIGO,     ');
   Q.SQL.Add('      :REG_DESCRICAO)  ');
   Q.ParamByName('REG_CODIGO'   ).AsInteger := vREG_CODIGO;
   Q.ParamByName('REG_DESCRICAO').AsString  := edREG_DESCRICAO.Text;
   Q.ExecSql;

   Q.Free;

end;

procedure TFrm_regiao.Limpar_Tela;
begin
   // Limpa os campos da tela
   edREG_CODIGO.Text    := '';
   edREG_DESCRICAO.Text := '';
end;

procedure TFrm_regiao.Listar_Regioes;
begin
   // Lista todas as regi�es cadastradas
   //---------------------------------------------------------------------------
   SQL_REGIOES.Close;
   SQL_REGIOES.Sql.Clear;
   SQL_REGIOES.sql.Add('SELECT *                ');
   SQL_REGIOES.sql.Add('  FROM REGIAO_REG       ');
   SQL_REGIOES.sql.Add(' ORDER BY REG_DESCRICAO ');
   SQL_REGIOES.Open;

   if SQL_REGIOES.Eof then
      BtnAlterar.Enabled := False;
end;

procedure TFrm_regiao.SQL_REGIOESAfterScroll(DataSet: TDataSet);
begin
   // Atualiza os campos da tela
   //---------------------------------------------------------------------------
   edREG_CODIGO.Text    := SQL_REGIOES.FieldByName('REG_CODIGO'   ).AsString;
   edREG_DESCRICAO.Text := SQL_REGIOES.FieldByName('REG_DESCRICAO').AsString;
end;

end.
