unit cad_vacina;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, cxGraphics, cxLookAndFeels,
  cxLookAndFeelPainters, Vcl.Menus, dxSkinsCore, dxSkinOffice2013White, Data.DB,
  cxControls, cxContainer, cxEdit, Vcl.ComCtrls, dxCore, cxDateUtils,
  cxTextEdit, cxMaskEdit, cxDropDownEdit, cxCalendar, Vcl.StdCtrls, Vcl.Grids,
  Vcl.DBGrids, cxButtons, cxDBEdit, Vcl.Mask, Vcl.DBCtrls, FireDAC.Stan.Intf,
  FireDAC.Stan.Option, FireDAC.Stan.Param, FireDAC.Stan.Error, FireDAC.DatS,
  FireDAC.Phys.Intf, FireDAC.DApt.Intf, FireDAC.Stan.Async, FireDAC.DApt,
  FireDAC.Comp.DataSet, FireDAC.Comp.Client, cxCheckBox;

type
  TFrm_cad_vacinas = class(TForm)
    Label3: TLabel;
    Label4: TLabel;
    Label5: TLabel;
    Label1: TLabel;
    btnAlterar: TcxButton;
    btnGravar: TcxButton;
    gridEdit: TDBGrid;
    dbDescricao: TDBEdit;
    dbDoses: TDBEdit;
    dbdias: TDBEdit;
    codigo: TcxDBTextEdit;
    DS_VACINAS: TDataSource;
    SQL_INCREMENT: TFDQuery;
    SQL_INCREMENTauto_increment: TLargeintField;
    SQL_LISTA: TFDQuery;
    ds_lista: TDataSource;
    SQL_LISTACODIGO: TFDAutoIncField;
    SQL_LISTACOD_ANIMAL: TStringField;
    SQL_LISTACOD_CLIENTE: TStringField;
    SQL_LISTAVACINA: TStringField;
    SQL_LISTAN_DOSES: TStringField;
    SQL_LISTAStringField1_DOSE: TStringField;
    SQL_LISTAINTERVALOS_DIAS: TStringField;
    gridConsulta: TDBGrid;
    BtnCancelar: TcxButton;
    chk_ativo_cadastro: TcxCheckBox;
    SQL_LISTASTATUS: TStringField;
    btnIncluir: TcxButton;
    SQL_VACINA: TFDQuery;
    SQL_VACINACODIGO: TFDAutoIncField;
    SQL_VACINACOD_ANIMAL: TStringField;
    SQL_VACINACOD_CLIENTE: TStringField;
    SQL_VACINAVACINA: TStringField;
    SQL_VACINAN_DOSES: TStringField;
    SQL_VACINAStringField1_DOSE: TStringField;
    SQL_VACINAINTERVALOS_DIAS: TStringField;
    SQL_VACINASTATUS: TStringField;
    cbdata: TcxDBDateEdit;
    procedure dbDescricaoKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormShow(Sender: TObject);
    procedure gridEditCellClick(Column: TColumn);
   procedure CarregarUltimoCadastro;
    procedure gridEditDblClick(Sender: TObject);
    procedure gridEditDrawColumnCell(Sender: TObject; const Rect: TRect;
      DataCol: Integer; Column: TColumn; State: TGridDrawState);
    procedure gridConsultaDrawColumnCell(Sender: TObject; const Rect: TRect;
      DataCol: Integer; Column: TColumn; State: TGridDrawState);
    procedure gridConsultaDblClick(Sender: TObject);
    procedure gridConsultaCellClick(Column: TColumn);
    procedure FormCreate(Sender: TObject);
    procedure btnGravarClick(Sender: TObject);
    procedure btnAlterarClick(Sender: TObject);
    procedure btnIncluirClick(Sender: TObject);
    procedure BtnCancelarClick(Sender: TObject);
    procedure dbDosesKeyPress(Sender: TObject; var Key: Char);
    procedure dbdiasKeyPress(Sender: TObject; var Key: Char);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Frm_cad_vacinas: TFrm_cad_vacinas;

implementation

uses
  S_Module, u_funcoes;

{$R *.dfm}

procedure TFrm_cad_vacinas.dbDescricaoKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
if (Key = VK_RETURN) or (Key = VK_TAB) then
  begin
    btnGravar.SetFocus;
  end;
end;

procedure TFrm_cad_vacinas.dbdiasKeyPress(Sender: TObject; var Key: Char);
begin
  inherited;
  Key := u_funcoes.ApenasNumeros(Key);
end;

procedure TFrm_cad_vacinas.dbDosesKeyPress(Sender: TObject; var Key: Char);
begin
  inherited;
  Key := u_funcoes.ApenasNumeros(Key);
end;

procedure TFrm_cad_vacinas.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  Action := cafree;
  Self := nil;
end;

procedure TFrm_cad_vacinas.FormCreate(Sender: TObject);
begin
 SQL_LISTA.Active := True;
end;

procedure TFrm_cad_vacinas.FormShow(Sender: TObject);
begin
  SQL_LISTA.Active := True;

  SQL_VACINA.active := true;
  if SQL_VACINASTATUS.Value = 'INATIVO' then
    chk_ativo_cadastro.Checked := true
  else if SQL_VACINASTATUS.Value = 'ATIVO' then
    chk_ativo_cadastro.Checked := false;

  u_funcoes.AlterarEnabled([dbDescricao, dbDoses, cbdata, dbdias], false);
  u_funcoes.IniciarCadastro([BtnIncluir, BtnCancelar, BtnAlterar], False);

end;

procedure TFrm_cad_vacinas.gridConsultaCellClick(Column: TColumn);
begin
  with SQL_VACINA do
  begin
    Close;
    ParamByName('pcodigo').Value := inttostr(SQL_VACINAcodigo.Value);
    Open;
  end;
 CarregarUltimoCadastro;
 BtnAlterar.Click;
end;

procedure TFrm_cad_vacinas.gridConsultaDblClick(Sender: TObject);
begin
  BtnCancelar.Enabled := True;
  BtnGravar.visible := True;
  Close;
end;

procedure TFrm_cad_vacinas.gridConsultaDrawColumnCell(Sender: TObject;
  const Rect: TRect; DataCol: Integer; Column: TColumn; State: TGridDrawState);
begin
  GridZebrado(gridConsulta, Rect, DataCol, Column, State);
end;

procedure TFrm_cad_vacinas.gridEditCellClick(Column: TColumn);
begin
  with SQL_VACINA do
  begin
    Close;
    ParamByName('pcodigo').Value := inttostr(SQL_VACINAcodigo.Value);
    Open;
  end;
 CarregarUltimoCadastro;
 BtnAlterar.Click;
end;


procedure TFrm_cad_vacinas.gridEditDblClick(Sender: TObject);
begin
     SQL_VACINA.Active := true;
end;

procedure TFrm_cad_vacinas.gridEditDrawColumnCell(Sender: TObject;
  const Rect: TRect; DataCol: Integer; Column: TColumn; State: TGridDrawState);
begin
  GridZebrado(gridedit, Rect, DataCol, Column, State);
end;

procedure TFrm_cad_vacinas.btnAlterarClick(Sender: TObject);
begin
  with SQL_VACINA do
  begin
    Close;
    ParamByName('pcodigo').Value := SQL_LISTACODIGO.Value;
    Open;
    Edit;
  end;
  u_funcoes.AlterarEnabled([dbDescricao, dbDoses, cbdata, dbdias], True);
  u_funcoes.IniciarCadastro([BtnIncluir, BtnCancelar, BtnAlterar], True);
  dbDescricao.SetFocus;
  dbDescricao.SelectAll;
end;

procedure TFrm_cad_vacinas.BtnCancelarClick(Sender: TObject);
begin
  SQL_VACINA.Cancel;
  SQL_VACINA.Close;

  u_funcoes.CamposObrigatorios_CorPadrao([dbDescricao], [], []);
  u_funcoes.AlterarEnabled([dbDescricao, dbDoses, cbdata, dbdias, btnGravar], False);
  u_funcoes.IniciarCadastro([BtnIncluir, BtnCancelar, BtnAlterar, BtnGravar], False);

  BtnIncluir.SetFocus;
  SQL_LISTA.Active := False;
  SQL_LISTA.Active := True;
end;

procedure TFrm_cad_vacinas.btnGravarClick(Sender: TObject);
begin
  if u_funcoes.CamposObrigatorios([dbDescricao], ['Descrição'], [], [], [], []) then
  begin
    Exit;
  end
  else
  begin

      if chk_ativo_cadastro.Checked = false then
        SQL_VACINASTATUS.Value := 'ATIVO'
      else if chk_ativo_cadastro.Checked = true then
        SQL_VACINASTATUS.Value := 'INATIVO';

   // SQL_VACINAStringField1_DOSE.Value := strtodate(cbdata.Date);

     SQL_VACINA.Post;
    SQL_VACINA.Active := False;

    MessageDLG('ATENÇÃO: Operação concluída com sucesso', mtInformation, [mbOk], 0);

  u_funcoes.AlterarEnabled([dbDescricao, dbDoses, cbdata, dbdias], True);
  u_funcoes.IniciarCadastro([BtnIncluir, BtnCancelar, BtnAlterar], False);

    SQL_LISTA.Active := False;
    SQL_LISTA.Active := True;

  SQL_VACINA.Active := True;
  SQL_VACINA.Insert;
  end;
end;

procedure TFrm_cad_vacinas.btnIncluirClick(Sender: TObject);
begin
  SQL_VACINA.Active := True;
  SQL_VACINA.Insert;
  u_funcoes.AlterarEnabled([dbDescricao, dbDoses, cbdata, dbdias], True);
  u_funcoes.IniciarCadastro([BtnIncluir, BtnCancelar, BtnAlterar], True);
  btnIncluir.Visible := False;
  sql_increment.Active := True;
  codigo.Text := inttostr(sql_incrementAUTO_INCREMENT.Value);
  dbDescricao.SetFocus;
end;

procedure TFrm_cad_vacinas.CarregarUltimoCadastro;
begin
  SQL_INCREMENT.Close;
  SQL_INCREMENT.Open; with SQL_VACINA do
  begin
    Close;
     ParamByName('pcodigo').Value := inttostr(SQL_INCREMENTauto_increment.Value - 1);
    Open;
  end;
end;


end.
