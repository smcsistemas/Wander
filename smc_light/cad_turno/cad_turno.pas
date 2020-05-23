unit cad_turno;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, cxGraphics, cxLookAndFeels,
  cxLookAndFeelPainters, Vcl.Menus, dxSkinsCore, cxControls, cxContainer,
  cxEdit, cxGroupBox, Vcl.StdCtrls, cxButtons, Vcl.Mask, Vcl.DBCtrls, Vcl.Grids,
  Vcl.DBGrids, Data.DB, dxSkinOffice2013LightGray, dxSkinBlack, dxSkinBlue,
  dxSkinBlueprint, dxSkinCaramel, dxSkinCoffee, dxSkinDarkRoom, dxSkinDarkSide,
  dxSkinDevExpressDarkStyle, dxSkinDevExpressStyle, dxSkinFoggy,
  dxSkinGlassOceans, dxSkinHighContrast, dxSkiniMaginary, dxSkinLilian,
  dxSkinLiquidSky, dxSkinLondonLiquidSky, dxSkinMcSkin, dxSkinMetropolis,
  dxSkinMetropolisDark, dxSkinMoneyTwins, dxSkinOffice2007Black,
  dxSkinOffice2007Blue, dxSkinOffice2007Green, dxSkinOffice2007Pink,
  dxSkinOffice2007Silver, dxSkinOffice2010Black, dxSkinOffice2010Blue,
  dxSkinOffice2010Silver, dxSkinOffice2013DarkGray, dxSkinOffice2013White,
  dxSkinOffice2016Colorful, dxSkinOffice2016Dark, dxSkinPumpkin, dxSkinSeven,
  dxSkinSevenClassic, dxSkinSharp, dxSkinSharpPlus, dxSkinSilver,
  dxSkinSpringTime, dxSkinStardust, dxSkinSummer2008, dxSkinTheAsphaltWorld,
  dxSkinsDefaultPainters, dxSkinValentine, dxSkinVisualStudio2013Blue,
  dxSkinVisualStudio2013Dark, dxSkinVisualStudio2013Light, dxSkinVS2010,
  dxSkinWhiteprint, dxSkinXmas2008Blue, FireDAC.Stan.Intf, FireDAC.Stan.Option,
  FireDAC.Stan.Param, FireDAC.Stan.Error, FireDAC.DatS, FireDAC.Phys.Intf,
  FireDAC.DApt.Intf, FireDAC.Stan.Async, FireDAC.DApt, FireDAC.Comp.DataSet,
  FireDAC.Comp.Client;

type
  TFrm_cad_turno = class(TForm)
    lbl2: TLabel;
    dbedt2: TDBEdit;
    lbl1: TLabel;
    dbedt_codigo: TDBEdit;
    lbl3: TLabel;
    dbedt3: TDBEdit;
    dbedt4: TDBEdit;
    lbl4: TLabel;
    BtnExcluir: TcxButton;
    DbGrid: TDBGrid;
    SQL_C_TURNO: TFDQuery;
    SQL_C_TURNOCodigo: TFDAutoIncField;
    SQL_C_TURNODescricao: TStringField;
    SQL_C_TURNOInicio: TTimeField;
    SQL_C_TURNOFim: TTimeField;
    DS_C_TURNO: TDataSource;
    BtnGravar: TcxButton;
    BtnIncluir: TcxButton;
    BtnCancelar: TcxButton;
    BtnAlterar: TcxButton;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
    procedure FormShow(Sender: TObject);
    procedure DbGridDrawColumnCell(Sender: TObject; const Rect: TRect;
      DataCol: Integer; Column: TColumn; State: TGridDrawState);
    procedure BtnIncluirClick(Sender: TObject);
    procedure BtnExcluirClick(Sender: TObject);
    procedure BtnAlterarClick(Sender: TObject);
    procedure BtnCancelarClick(Sender: TObject);
    procedure BtnGravarClick(Sender: TObject);
    procedure dbedt_codigoKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Frm_cad_turno: TFrm_cad_turno;

implementation

{$R *.dfm}

uses S_Module, u_funcoes, v_Env, liberacao;

procedure TFrm_cad_turno.BtnAlterarClick(Sender: TObject);
begin
     if dbedt_codigo.Text = '' then
     begin
          wnAlerta('Alterar', 'Nenhum turno foi selecionado.');
     end
     else
     begin
          SQL_C_TURNO.Edit;
          u_funcoes.AlterarEnabled([dbedt2, dbedt3, dbedt4], true);
          u_funcoes.AlterarEnabled([DbGrid], False);
          u_funcoes.IniciarCadastro([BtnIncluir, BtnCancelar, BtnAlterar, BtnExcluir], true);
          dbedt2.SetFocus;
     end;
end;

procedure TFrm_cad_turno.BtnCancelarClick(Sender: TObject);
begin
     SQL_C_TURNO.Cancel;
     u_funcoes.AlterarEnabled([dbedt2, dbedt3, dbedt4], False);
     u_funcoes.AlterarEnabled([DbGrid], True);
     u_funcoes.IniciarCadastro([BtnIncluir, BtnCancelar, BtnAlterar, BtnExcluir], false);
     DbGrid.SetFocus;
end;

procedure TFrm_cad_turno.BtnExcluirClick(Sender: TObject);
begin
     if (dbedt_codigo.Text = '') or (dbedt_codigo.Text = '0') then
     begin
          wnAlerta('Excluir', 'Nenhum turno foi selecionado.');
     end
     else
     begin
          if not TEnv.Tuser.IsAdmin then
          begin
               if TFrm_liberacao.Execute then
                  u_funcoes.ExcluirCadastro(SQL_C_TURNO, False);
          end
          else
              u_funcoes.ExcluirCadastro(SQL_C_TURNO, False);
     end;
end;

procedure TFrm_cad_turno.BtnGravarClick(Sender: TObject);
begin
     if (dbedt_codigo.Text <> '') or (dbedt_codigo.Text <> '0') then
     begin
          if u_funcoes.CamposObrigatorios([dbedt2, dbedt3, dbedt4], ['DESCRIÇÃO', 'INICIO', 'FIM'], [], [], [], []) then
          begin
               Exit
          end;
          try
             try
                SQL_C_TURNO.Post;
             except
               on E: Exception do
               begin
                    wnErro('Erro de Cadastro', E.Message + sLineBreak + 'Erro ao cadastrar Turno.');
               end;
             end;
          finally
             u_funcoes.AlterarEnabled([dbedt2, dbedt3, dbedt4], False);
             u_funcoes.AlterarEnabled([DbGrid], True);
             u_funcoes.IniciarCadastro([BtnIncluir, BtnCancelar, BtnAlterar, BtnExcluir], false);
          end;
     end;
end;

procedure TFrm_cad_turno.BtnIncluirClick(Sender: TObject);
begin
    SQL_C_TURNO.Insert;
     u_funcoes.IniciarCadastro([BtnIncluir, BtnCancelar, BtnAlterar, BtnExcluir], true);
     u_funcoes.AlterarEnabled([dbedt2, dbedt3, dbedt4], true);
     u_funcoes.AlterarEnabled([DbGrid], false);
     dbedt2.SetFocus;
end;

procedure TFrm_cad_turno.dbedt_codigoKeyDown(Sender: TObject;
  var Key: Word; Shift: TShiftState);
begin
     case key of
          VK_RETURN : Perform(WM_NEXTDLGCTL,0,0);
     end;
end;

procedure TFrm_cad_turno.DbGridDrawColumnCell(Sender: TObject; const Rect: TRect; DataCol: Integer; Column: TColumn; State: TGridDrawState);
begin
  GridZebrado(DbGrid, Rect, DataCol, Column, State);
end;

procedure TFrm_cad_turno.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  Action := cafree;
  self := nil;
end;

procedure TFrm_cad_turno.FormKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  u_funcoes.TeclasAtalho(Key, [VK_F1, VK_F2, VK_F3, VK_F4, VK_F5], [BtnIncluir, BtnGravar, BtnCancelar, BtnAlterar, BtnExcluir]);
end;

procedure TFrm_cad_turno.FormShow(Sender: TObject);
begin
     SQL_C_TURNO.Open;
     u_funcoes.AlterarEnabled([dbedt_codigo, dbedt2, dbedt3, dbedt4], false);
     u_funcoes.IniciarCadastro([BtnIncluir, BtnCancelar, BtnAlterar, BtnExcluir], false);
     DbGrid.SetFocus;
end;

end.
