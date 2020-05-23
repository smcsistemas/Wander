unit Acessos;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  StdCtrls, ExtCtrls, Buttons, Db, Mask, CheckLst,
  ComCtrls, MPlayer, jpeg;

type
  TfrmAcessos = class(TForm)
    Label1: TLabel;
    edt_colaborador: TEdit;
    Panel1: TPanel;
    bConfirma: TBitBtn;
    bImprime: TBitBtn;
    Edit2: TEdit;
    CheckListBox1: TCheckListBox;
    CheckListBox2: TCheckListBox;
    Button1: TButton;
    Button2: TButton;
    ProgressBar1: TProgressBar;
    rgOrdem: TRadioGroup;
    rgFuncoes: TRadioGroup;
    Label2: TLabel;
    CheckListBox3: TCheckListBox;
    procedure FormKeyPress(Sender: TObject; var Key: Char);
    procedure FormShow(Sender: TObject);
    procedure edt_colaboradorExit(Sender: TObject);
    procedure bConfirmaClick(Sender: TObject);
    procedure Button1Click(Sender: TObject);
    procedure Button2Click(Sender: TObject);
    procedure CheckListBox1Click(Sender: TObject);
  private
    { Private declarations }
    procedure LimpaTela;
    procedure habilita;
    procedure desabilita;
  public
    { Public declarations }
  end;

var
  frmAcessos: TfrmAcessos;

implementation

uses S_Module, u_funcoes;


{$R *.DFM}

procedure TfrmAcessos.FormKeyPress(Sender: TObject; var Key: Char);
begin
  if key = #27 Then
  begin
     key := #0;
     if edt_colaborador.Text <> '' Then
     begin
        LimpaTela;
        Exit;
     end
     else
        Close;
  end;

  if key = #13 then
  begin
     key := #0;
     Perform(Wm_NextDlgCtl,0,0);
  End;
end;

procedure TfrmAcessos.FormShow(Sender: TObject);
var vContador : integer;
begin
   CheckListBox1.enabled := false;
   try
       module.Query.close;
       module.Query.sql.clear;
       module.Query.sql.add('DELETE FROM ACESSOS_ACC');
       module.Query.sql.add(' WHERE ACC_USUARIO NOT IN (SELECT DISTINCT CODIGO FROM USUARIO) ');
       module.Query.execsql;
   except
   end;
   if rgFuncoes.ItemIndex > 0 then
   begin
       if edt_colaborador.Text = '' then
       begin
          showMessage('Informe o Colaborador.');
          edt_colaborador.SetFocus;
          exit;
       end;
   end;

   module.Query.Close;
   module.Query.Sql.Clear;
   module.Query.Sql.Add('SELECT * FROM FUNCOES_FUN');
   if rgFuncoes.ItemIndex = 1 then
   begin
      module.Query.Sql.Add('WHERE FUN_CODIGO IN (SELECT ACC_FUNCAO FROM ACESSOS_ACC ');
      module.Query.Sql.Add('                      WHERE ACC_USUARIO=:USUARIO)       ');
      module.Query.ParamByName('USUARIO').AsString := edt_colaborador.Text;
   end;
   if rgFuncoes.ItemIndex = 2 then
   begin
      module.Query.Sql.Add('WHERE FUN_CODIGO NOT IN (SELECT ACC_FUNCAO FROM ACESSOS_ACC ');
      module.Query.Sql.Add('                          WHERE ACC_USUARIO=:USUARIO)       ');
      module.Query.ParamByName('USUARIO').AsString := edt_colaborador.Text;
   end;

   case rgOrdem.ItemIndex of
      0 : module.Query.Sql.Add('ORDER BY FUN_NUMERO');
      1 : module.Query.Sql.Add('ORDER BY FUN_DESCRICAO');
   end;
   module.Query.Open;
   CheckListBox1.Items.Clear;
   CheckListBox2.Items.Clear;
   CheckListBox3.Items.Clear;
   vContador := 0;
   While Not module.Query.Eof Do
   Begin
      inc(vcontador);
      CheckListBox1.Items.Add(module.Query.FieldByName('FUN_NUMERO').AsString+'.'+module.Query.FieldByName('FUN_DESCRICAO').AsString);
      CheckListBox2.Items.Add(module.Query.FieldByName('FUN_CODIGO').AsString);
      CheckListBox3.Items.Add(module.Query.FieldByName('FUN_DESCRICAO').AsString);
      module.Query.Next;
   End;
   if edt_colaborador.text <> '' then
   begin
      edt_colaboradorExit(Self);
      edt_colaborador.enabled := false;
   end
   else
      edt_colaborador.SetFocus;
end;

procedure TfrmAcessos.edt_colaboradorExit(Sender: TObject);
Var i : Integer;
begin
   CheckListBox1.enabled := false;
   if rgOrdem.Focused then
     exit;
   if edt_colaborador.Text = '' then exit;

   edit2.text := '';
   module.Query.Close;
   module.Query.Sql.Clear;
   module.Query.Sql.Add('SELECT * FROM USUARIO');
   module.Query.Sql.Add(' WHERE CODIGO = :COD ');
   module.Query.ParamByName('COD').AsString := edt_colaborador.Text;
   module.Query.Open;
   if module.Query.Eof Then
   Begin
     showMessage('Colaborador não encontrado');
     LimpaTela;
     edt_colaborador.setfocus;
     Exit;
   End;
   Habilita;
   CheckListBox1.enabled := true;

   // Edit2.Text := module.Query.FieldByName('NOME').AsString;
   Edit2.Text := module.Query.FieldByName('CODIGO').AsString;

   if rgFuncoes.ItemIndex = 0 then
     bConfirma.Enabled := True
   else
     bConfirma.Enabled := False;

   // mostra seus acessos
   module.Query.Close;
   module.Query.Sql.Clear;
   module.Query.Sql.Add('SELECT * FROM ACESSOS_ACC ');
   module.Query.Sql.Add(' WHERE ACC_USUARIO = :USU ');
   module.Query.ParamByName('USU').AsString := edt_colaborador.Text;
   module.Query.Open;

   if Not CheckListBox1.Focused Then
   Begin
      For i := 0 to CheckListBox2.Items.Count - 1 do
      begin
         CheckListBox1.Checked[i] := False;
         CheckListBox2.Checked[i] := False;
         CheckListBox3.Checked[i] := False;
      End;

      While Not module.Query.Eof Do
      Begin
         For i := 0 to CheckListBox2.Items.Count - 1 do
            if CheckListBox2.items[i] = module.Query.FieldByName('ACC_FUNCAO').AsString Then
               CheckListBox1.Checked[i] := True;
         module.Query.Next;
      End;
   End;

   bConfirma.Enabled := True;
   bImprime.Enabled := True;
end;

procedure TfrmAcessos.LimpaTela;
Var i : integer;
begin
   for i := 0 to (frmAcessos.ComponentCount - 1) do
   BEGIN
      if frmAcessos.Components[i] is TEdit Then
         if ((frmAcessos.Components[i]) as TEdit).Name <> 'edt_colaborador' Then
              ((frmAcessos.Components[i]) As TEdit).Text := '';
      if frmAcessos.Components[i] is TMaskEdit Then
         ((frmAcessos.Components[i]) As TMaskEdit).Text := '';
   END;
   For i := 0 to CheckListBox2.Items.Count - 1 do
   begin
      CheckListBox1.Checked[i] := False;
      CheckListBox2.Checked[i] := False;
      CheckListBox3.Checked[i] := False;
   End;

   ProgressBar1.Position := 0;
   bConfirma.Enabled := True;
   bImprime.Enabled  := True;
end;

procedure TfrmAcessos.Habilita;
Var i : integer;
begin
   for i := 0 to (frmAcessos.ComponentCount - 1) do
      if frmAcessos.Components[i] is TEdit Then
        if ((frmAcessos.Components[i]) as TEdit).Name <> 'edt_colaborador' Then
           ((frmAcessos.Components[i]) As TEdit).Enabled := True;
  bConfirma.Enabled := True;
  bImprime.Enabled := True;
end;

procedure TfrmAcessos.Desabilita;
Var i : integer;
begin
   for i := 0 to (frmAcessos.ComponentCount - 1) do
     if frmAcessos.Components[i] is TEdit Then
       if ((frmAcessos.Components[i]) as TEdit).Name <> 'edt_colaborador' Then
          ((frmAcessos.Components[i]) As TEdit).Enabled := False;
   bConfirma.Enabled := False;
   bImprime.Enabled := False;
end;

procedure TfrmAcessos.bConfirmaClick(Sender: TObject);
Var i : integer;
begin
   if rgFuncoes.ItemIndex <> 0 then
   begin
      showMessage('Somente visualizando TODAS as funções poderá gravar...');
      rgFuncoes.SetFocus;
      exit;
   end;
   module.Query.Close;
   module.Query.Sql.Clear;
   module.Query.Sql.Add('DELETE FROM ACESSOS_ACC WHERE ACC_USUARIO = :USU');
   module.Query.ParamByName('USU').AsString := edt_colaborador.Text;
   module.Query.ExecSql;
   progressbar1.Max := CheckListBox1.Items.Count;
   For i := 0 to CheckListBox1.Items.Count - 1 do
   begin
      ProgressBar1.Position := (i+1);
      frmAcessos.Refresh; Application.ProcessMessages;
      if CheckListBox1.Checked[i] Then
      Begin
         module.Query.Close;
         module.Query.SQL.Clear;
         module.Query.SQL.Add('INSERT INTO ACESSOS_ACC ');
         module.Query.SQL.Add('  (ACC_USUARIO,         ');
         module.Query.SQL.Add('   ACC_FUNCAO,          ');
         module.Query.SQL.Add('   ACC_DESCRICAO)       ');
         module.Query.SQL.Add('VALUES                  ');
         module.Query.SQL.Add('  (:ACC_USUARIO,        ');
         module.Query.SQL.Add('   :ACC_FUNCAO,         ');
         module.Query.SQL.Add('   :ACC_DESCRICAO)      ');
         module.Query.ParamByName('ACC_USUARIO'  ).AsString := edt_colaborador.text;
         module.Query.ParamByName('ACC_FUNCAO'   ).AsString := CheckListBox2.Items[i];
         module.Query.ParamByName('ACC_DESCRICAO').AsString := CheckListBox3.Items[i];
         module.Query.ExecSql;
      End;
   End;
   ProgressBar1.Position := 0;

   RegistraLog('Atualizou as permissões de acesso do usuário '+Edit2.text);

   CheckListBox1.enabled := false;
   LimpaTela;
   if edt_colaborador.enabled then
   begin
     edt_colaborador.Text := '';
     edt_colaborador.SetFocus;
   end
   else
     Close;
end;

procedure TfrmAcessos.Button1Click(Sender: TObject);
Var i : Integer;
begin
     For i := 0 to CheckListBox1.Items.Count - 1 do
         CheckListBox1.Checked[i] := True;
end;

procedure TfrmAcessos.Button2Click(Sender: TObject);
Var i : Integer;
begin
     For i := 0 to CheckListBox1.Items.Count - 1 do
         CheckListBox1.Checked[i] := False;
end;

procedure TfrmAcessos.CheckListBox1Click(Sender: TObject);
begin
     if not CheckListBox1.enabled then
     begin
        ShowMessage('Escolha o Colaborador e dê ENTER em seu código');
        edt_colaborador.setfocus;
        exit;
     end;
end;

end.
