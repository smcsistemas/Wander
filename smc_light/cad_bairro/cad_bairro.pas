//Verificado automaticamente em 16/06/2020 09:27
unit cad_bairro;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, cxGraphics, cxControls, cxLookAndFeels,
  cxLookAndFeelPainters, cxContainer, cxEdit, dxSkinsCore, Vcl.Menus,
  FireDAC.Stan.Intf, FireDAC.Stan.Option, FireDAC.Stan.Param,
  FireDAC.Stan.Error, FireDAC.DatS, FireDAC.Phys.Intf, FireDAC.DApt.Intf,
  FireDAC.Stan.Async, FireDAC.DApt, Data.DB, FireDAC.Comp.DataSet,
  FireDAC.Comp.Client, Vcl.StdCtrls, Vcl.Mask, Vcl.DBCtrls, cxButtons,
  Vcl.Grids, Vcl.DBGrids, cxTextEdit, cxDBEdit, cxMaskEdit, cxDropDownEdit,
  cxCheckBox;

type
  Tfrm_cad_bairro = class(TForm)
    Código: TLabel;
    Descrição: TLabel;
    Label1: TLabel;
    cxDBTextEdit1: TcxDBTextEdit;
    DBGrid1: TDBGrid;
    BtnGravar: TcxButton;
    BtnCancelar: TcxButton;
    BtnIncluir: TcxButton;
    BtnAlterar: TcxButton;
    DBEdit1: TDBEdit;
    DBEdit2: TDBEdit;
    sql_increment: TFDQuery;
    sql_incrementAUTO_INCREMENT: TLargeintField;
    SQL_Bairro: TFDQuery;
    DS_Bairro: TDataSource;
    SQL_LISTA: TFDQuery;
    ds_lista: TDataSource;
    SQL_BairroCODIGO: TFDAutoIncField;
    SQL_BairroDESCRICAO: TStringField;
    SQL_BairroUF: TStringField;
    SQL_LISTACODIGO: TFDAutoIncField;
    SQL_LISTADESCRICAO: TStringField;
    SQL_LISTAUF: TStringField;
    Label2: TLabel;
    DBEdit3: TDBEdit;
    Label3: TLabel;
    DBEdit4: TDBEdit;
    SQL_LISTASETOR: TStringField;
    SQL_BairroSETOR: TStringField;
    btnmun: TcxButton;
    SQL_BairroMUNICIPIO: TStringField;
    SQL_LISTAMUNICIPIO: TStringField;
    SQL_BairroSTATUS_CADASTRAL: TStringField;
    SQL_LISTASTATUS_CADASTRAL: TStringField;
    Label4: TLabel;
    cbFiltro: TcxComboBox;
    edtBuscar: TEdit;
    chk_ativo_cadastro: TcxCheckBox;
    procedure BtnAlterarClick(Sender: TObject);
    procedure InformarDadosBairro(BAIRRO: TDBEdit);
    procedure BtnCancelarClick(Sender: TObject);
    procedure BtnIncluirClick(Sender: TObject);
    procedure BtnGravarClick(Sender: TObject);
    procedure DBGrid1DblClick(Sender: TObject);
    procedure DBGrid1DrawColumnCell(Sender: TObject; const Rect: TRect;
      DataCol: Integer; Column: TColumn; State: TGridDrawState);
    procedure FormShow(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure btnmunClick(Sender: TObject);
    procedure edtBuscarKeyUp(Sender: TObject; var Key: Word; Shift: TShiftState);
    procedure ConsultarBairros(check_edit: Boolean = true);
    procedure DBEdit1KeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frm_cad_bairro: Tfrm_cad_bairro;
   m_bairro: TDBEdit;

implementation

{$R *.dfm}

uses funcoes_sistema, h_Functions, u_funcoes, U_Municipio;

procedure Tfrm_cad_bairro.BtnAlterarClick(Sender: TObject);
begin
  with SQL_Bairro do
  begin
    Close;
    ParamByName('pcodigo').Value := SQL_LISTACODIGO.Value;
    Open;
    Edit;
  end;
  u_funcoes.AlterarEnabled([dbedit1, dbedit2, dbedit3, dbedit4, btnmun], True);
  u_funcoes.IniciarCadastro([BtnIncluir, BtnCancelar, BtnAlterar], True);
  DBEdit1.SetFocus;
  DBEdit1.SelectAll;
end;

procedure Tfrm_cad_bairro.BtnCancelarClick(Sender: TObject);
begin
  SQL_Bairro.Cancel;
  SQL_Bairro.Close;

  u_funcoes.CamposObrigatorios_CorPadrao([DBEdit1, DBEdit2], [], []);
  u_funcoes.AlterarEnabled([dbedit1, dbedit2, dbedit3, dbedit4, btnmun], False);
  u_funcoes.IniciarCadastro([BtnIncluir, BtnCancelar, BtnAlterar, BtnGravar], False);

  BtnIncluir.SetFocus;
  SQL_LISTA.Active := False;
  SQL_LISTA.Active := True;
end;

procedure Tfrm_cad_bairro.BtnGravarClick(Sender: TObject);
begin
  if u_funcoes.CamposObrigatorios([DBEdit1, DBEdit2], ['Descrição', 'Cidade'], [], [], [], []) then
  begin
    Exit;
  end
 else
  begin

      if chk_ativo_cadastro.Checked = false then
        SQL_BAIRROSTATUS_CADASTRAL.Value := 'ATIVO'
      else if chk_ativo_cadastro.Checked = true then
        SQL_BAIRROSTATUS_CADASTRAL.Value := 'INATIVO';

    SQL_Bairro.Post;
    SQL_Bairro.Active := False;
    MessageDLG('ATENÇÃO: Operação concluída com sucesso', mtInformation, [mbOk], 0);
    u_funcoes.AlterarEnabled([dbedit1, dbedit2, dbedit3, dbedit4, btnmun], False);
    u_funcoes.IniciarCadastro([BtnIncluir, BtnCancelar, BtnAlterar], False);
    SQL_LISTA.Active := False;
    SQL_LISTA.Active := True;
  end;
end;

procedure Tfrm_cad_bairro.BtnIncluirClick(Sender: TObject);
begin
  SQL_Bairro.Active := True;
  SQL_Bairro.Insert;
  u_funcoes.AlterarEnabled([dbedit1, dbedit4, btnmun], True);
  u_funcoes.IniciarCadastro([BtnIncluir, BtnCancelar, BtnAlterar], True);
  sql_increment.Active := True;
  cxDBTextEdit1.Text := inttostr(sql_incrementAUTO_INCREMENT.Value);
  DBEdit1.SetFocus;
end;

procedure Tfrm_cad_bairro.edtBuscarKeyUp(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
ConsultarBairros;
end;




procedure Tfrm_cad_bairro.ConsultarBairros;
const
  qry_base = 'select * from cad_bairro';
var
  filtro_tipo, condicao: string;
begin
  SQL_LISTA.Close;
  cbFiltro.ValidateEdit(False);
  if check_edit then
  begin
    if edtBuscar.Text <> emptystr then
    begin
      case cbFiltro.SelectedItem of
        0:
          condicao := ' where  CODIGO like "' + edtBuscar.Text + '%"';
        1:
          condicao := ' where  DESCRICAO like "' + edtBuscar.Text + '%"';
        2:
          condicao := ' where  MUNICIPIO like "' + edtBuscar.Text + '%"';
        3:
          condicao := ' where  UF like "' + edtBuscar.Text + '%"';
      end;
    end;
  SQL_LISTA.Open(qry_base + condicao + filtro_tipo);
end;
end;


procedure Tfrm_cad_bairro.DBEdit1KeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
if (Key = VK_RETURN) or (Key = VK_TAB) then
  begin
    btnmun.SetFocus;
  end;
end;

procedure Tfrm_cad_bairro.DBGrid1DblClick(Sender: TObject);
begin
  BtnIncluir.visible := False;
  BtnCancelar.Enabled := True;
  BtnGravar.visible := True;
  Close;
end;

procedure Tfrm_cad_bairro.DBGrid1DrawColumnCell(Sender: TObject; const Rect: TRect;
  DataCol: Integer; Column: TColumn; State: TGridDrawState);
begin
  GridZebrado(DBGrid1, Rect, DataCol, Column, State);
end;

procedure Tfrm_cad_bairro.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  Action := cafree;
  Self := nil;
end;

procedure Tfrm_cad_bairro.FormShow(Sender: TObject);
begin
  SQL_LISTA.Active := True;

  SQL_BAIRRO.active := true;
  if SQL_BAIRROSTATUS_CADASTRAL.Value = 'INATIVO' then
    chk_ativo_cadastro.Checked := true
  else if SQL_BAIRROSTATUS_CADASTRAL.Value = 'ATIVO' then
    chk_ativo_cadastro.Checked := false;

 u_funcoes.AlterarEnabled([dbedit1, dbedit2, dbedit3, dbedit4, btnmun], False);

  u_funcoes.IniciarCadastro([BtnIncluir, BtnCancelar, BtnAlterar], False);

end;


procedure Tfrm_cad_bairro.InformarDadosBairro(BAIRRO: TDBEdit);
begin
  m_bairro := BAIRRO;
end;


procedure Tfrm_cad_bairro.btnmunClick(Sender: TObject);
begin
  Frm_Municipio := TFrm_Municipio.Create(Application);
  Frm_Municipio.InformarDadosMunicipio3(DBEdit2, DBEdit3);
  Frm_Municipio.ShowModal;
  Frm_Municipio.Free;
end;

end.
