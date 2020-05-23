unit cad_historico;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, cxGraphics, cxControls, cxLookAndFeels,
  cxLookAndFeelPainters, cxContainer, cxEdit, dxSkinsCore,
  dxSkinOffice2013White, Vcl.Menus, FireDAC.Stan.Intf, FireDAC.Stan.Option,
  FireDAC.Stan.Param, FireDAC.Stan.Error, FireDAC.DatS,
  FireDAC.Stan.Async, FireDAC.DApt, cxCheckBox, cxClasses,
  dxSkinsForm, Data.DB, FireDAC.Comp.Client, Vcl.StdCtrls,
  cxButtons, cxMemo, cxTextEdit, Vcl.Grids, Vcl.DBGrids, dxSkinBlack,
  dxSkinBlue, dxSkinBlueprint, dxSkinCaramel, dxSkinCoffee, dxSkinDarkRoom,
  dxSkinDarkSide, dxSkinDevExpressDarkStyle, dxSkinDevExpressStyle, dxSkinFoggy,
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
  dxSkinWhiteprint, dxSkinXmas2008Blue, Vcl.ExtCtrls, cxMaskEdit, cxButtonEdit, fs_synmemo, u_funcoes,
  c_Globals, liberacao, FireDAC.Phys.Intf, FireDAC.DApt.Intf, FireDAC.Comp.DataSet,
  cxRadioGroup, cxDBEdit, Vcl.Mask;

type
  TFRM_cad_historico = class(TForm)
    SQL_C_HIST: TFDQuery;
    SQL_C_HISTCodigo: TFDAutoIncField;
    SQL_C_HISTDescricao: TStringField;
    DS_C_HIST: TDataSource;
    lblCódigo: TLabel;
    lbl3: TLabel;
    lbl1: TLabel;
    dbedt_codigo: TcxDBTextEdit;
    cxDBTextEdit2: TcxDBTextEdit;
    rbCodigo: TcxRadioButton;
    rbDesc: TcxRadioButton;
    edtConsulta: TMaskEdit;
    dbgrd1: TDBGrid;
    BtnIncluir: TcxButton;
    BtnCancelar: TcxButton;
    BtnAlterar: TcxButton;
    BtnExcluir: TcxButton;
    BtnGravar: TcxButton;
    procedure BtnIncluirClick(Sender: TObject);
    procedure BtnCancelarClick(Sender: TObject);
    procedure BtnAlterarClick(Sender: TObject);
    procedure BtnExcluirClick(Sender: TObject);
    procedure FormKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormShow(Sender: TObject);
    procedure edtConsultaChange(Sender: TObject);
    procedure dbgrd1DrawColumnCell(Sender: TObject; const Rect: TRect;
      DataCol: Integer; Column: TColumn; State: TGridDrawState);
    procedure BtnGravarClick(Sender: TObject);



  private

    { Private declarations }

  public
    { Public declarations }


  end;

var
  FRM_cad_historico: TFRM_cad_historico;

implementation

uses v_env;
{$R *.dfm}


procedure TFRM_cad_historico.BtnAlterarClick(Sender: TObject);
begin
     if dbedt_codigo.Text = '' then
     begin
          wnAlerta('Alterar', 'Nenhum histórico foi selecionado.');
     end
     else
     begin
          SQL_C_HIST.Edit;
          u_funcoes.AlterarEnabled([cxDBTextEdit2], true);
          u_funcoes.AlterarEnabled([dbgrd1, edtConsulta, rbDesc, rbCodigo], False);
          u_funcoes.IniciarCadastro([BtnIncluir, BtnCancelar, BtnAlterar, BtnExcluir], true);
          cxDBTextEdit2.SetFocus;
     end;
end;

procedure TFRM_cad_historico.BtnCancelarClick(Sender: TObject);
begin
     SQL_C_HIST.Cancel;
     u_funcoes.AlterarEnabled([cxDBTextEdit2], False);
     u_funcoes.AlterarEnabled([dbgrd1, edtConsulta, rbDesc, rbCodigo], True);
     u_funcoes.IniciarCadastro([BtnIncluir, BtnCancelar, BtnAlterar, BtnExcluir], false);
     edtConsulta.SetFocus;
end;

procedure TFRM_cad_historico.BtnExcluirClick(Sender: TObject);
begin
     if (dbedt_codigo.Text = '') or (dbedt_codigo.Text = '0') then
     begin
          wnAlerta('Excluir', 'Nenhum histórico foi selecionado.');
     end
     else
     begin
          if not TEnv.Tuser.IsAdmin then
          begin
               if TFrm_liberacao.Execute then
                  u_funcoes.ExcluirCadastro(SQL_C_HIST, False);
          end
          else
              u_funcoes.ExcluirCadastro(SQL_C_HIST, False);
     end;
end;

procedure TFRM_cad_historico.BtnGravarClick(Sender: TObject);
begin
     if (dbedt_codigo.Text <> '') or (dbedt_codigo.Text <> '0') then
     begin
          if u_funcoes.CamposObrigatorios([cxDBTextEdit2], ['DESCRIÇÃO'], [], []) then
          begin
               Exit
          end;
          try
             try
                SQL_C_HIST.Post;
             except
               on E: Exception do
               begin
                    wnErro('Erro de Cadastro', E.Message + sLineBreak + 'Erro ao cadastrar Histórico.');
               end;
             end;
          finally
             u_funcoes.AlterarEnabled([cxDBTextEdit2], False);
             u_funcoes.AlterarEnabled([dbgrd1,edtConsulta,rbDesc, rbCodigo], True);
             u_funcoes.IniciarCadastro([BtnIncluir, BtnCancelar, BtnAlterar, BtnExcluir], false);
          end;
     end;
end;

procedure TFRM_cad_historico.BtnIncluirClick(Sender: TObject);
begin
     SQL_C_HIST.Insert;
     u_funcoes.IniciarCadastro([BtnIncluir, BtnCancelar, BtnAlterar, BtnExcluir], true);
     u_funcoes.AlterarEnabled([cxDBTextEdit2], true);
     u_funcoes.AlterarEnabled([edtConsulta, rbDesc, rbCodigo, dbgrd1], false);
     cxDBTextEdit2.SetFocus;
end;

procedure TFRM_cad_historico.dbgrd1DrawColumnCell(Sender: TObject;
  const Rect: TRect; DataCol: Integer; Column: TColumn;
  State: TGridDrawState);
begin
     GridZebrado(dbgrd1, Rect, DataCol, Column, State);
end;

procedure TFRM_cad_historico.edtConsultaChange(Sender: TObject);
var i : Integer;
begin
     if rbDesc.Checked then
     begin
          SQL_C_HIST.IndexFieldNames := 'Descricao';
          SQL_C_HIST.Locate('Descricao',edtConsulta.Text,[loCaseInsensitive,loPartialKey]);
     end
     else
     begin
          if TryStrToInt(edtConsulta.Text, i) then
          begin
               SQL_C_HIST.IndexFieldNames := 'Codigo';
               SQL_C_HIST.Locate('Codigo',edtConsulta.Text,[loCaseInsensitive,loPartialKey]);
          end;
     end;
end;

procedure TFRM_cad_historico.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
     Action := cafree;
     self := nil;
end;

procedure TFRM_cad_historico.FormKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
     u_funcoes.TeclasAtalho(Key, [VK_F1, VK_F2, VK_F3, VK_F4, VK_F5], [BtnIncluir, BtnGravar, BtnCancelar, BtnAlterar, BtnExcluir]);
end;

procedure TFRM_cad_historico.FormShow(Sender: TObject);
begin
     SQL_C_HIST.Open;
     u_funcoes.AlterarEnabled([dbedt_codigo, cxDBTextEdit2], false);
     u_funcoes.IniciarCadastro([BtnIncluir, BtnCancelar, BtnAlterar, BtnExcluir], false);
     edtConsulta.SetFocus;
end;

end.
