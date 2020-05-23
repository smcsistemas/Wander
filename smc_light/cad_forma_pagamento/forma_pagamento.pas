unit forma_pagamento;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants,
  System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, cxGraphics, cxControls, cxLookAndFeels,
  cxLookAndFeelPainters, cxContainer, cxEdit, dxSkinsCore,
  dxSkinOffice2013White, Vcl.Menus, Vcl.StdCtrls, cxButtons,
  Vcl.DBGrids, cxCheckBox, cxTextEdit, cxDBEdit, dxSkinBlack, dxSkinBlue,
  dxSkinBlueprint, dxSkinCaramel, dxSkinCoffee, dxSkinDarkRoom, dxSkinDarkSide,
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
  dxSkinWhiteprint, dxSkinXmas2008Blue, Vcl.Grids, Data.DB,
  FireDAC.Stan.Intf, FireDAC.Stan.Option, FireDAC.Stan.Param,
  FireDAC.Stan.Error, FireDAC.DatS, FireDAC.Phys.Intf, FireDAC.DApt.Intf,
  FireDAC.Stan.Async, FireDAC.DApt, FireDAC.Comp.DataSet,
  FireDAC.Comp.Client;

type
  TFRM_forma_pagamento = class(TForm)
    lbl28: TLabel;
    dbedt_codigo: TcxDBTextEdit;
    lbl1: TLabel;
    cxDBTextEdit1: TcxDBTextEdit;
    lbl2: TLabel;
    cxDBTextEdit2: TcxDBTextEdit;
    dbgrd1: TDBGrid;
    Label1: TLabel;
    cxDBTextEdit3: TcxDBTextEdit;
    BtnGravar: TcxButton;
    BtnCancelar: TcxButton;
    BtnIncluir: TcxButton;
    BtnAlterar: TcxButton;
    BtnExcluir: TcxButton;
    SQL_C_PAGTO: TFDQuery;
    DS_C_PAGTO: TDataSource;
    SQL_C_PAGTOCodigo: TFDAutoIncField;
    SQL_C_PAGTODescricao: TStringField;
    SQL_C_PAGTOIntervalo: TIntegerField;
    SQL_C_PAGTOJuros: TSingleField;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure FormShow(Sender: TObject);
    procedure BtnIncluirClick(Sender: TObject);
    procedure BtnCancelarClick(Sender: TObject);
    procedure BtnAlterarClick(Sender: TObject);
    procedure BtnExcluirClick(Sender: TObject);
    procedure dbedt_codigoKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure BtnGravarClick(Sender: TObject);
    procedure dbgrd1DrawColumnCell(Sender: TObject; const Rect: TRect;
      DataCol: Integer; Column: TColumn; State: TGridDrawState);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FRM_forma_pagamento: TFRM_forma_pagamento;

implementation

{$R *.dfm}

uses S_Module, u_funcoes, v_Env, liberacao;

procedure TFRM_forma_pagamento.BtnAlterarClick(Sender: TObject);
begin
     if dbedt_codigo.Text = '' then
     begin
          wnAlerta('Alterar', 'Nenhuma forma de pagamento foi selecionado.');
     end
     else
     begin
          SQL_C_PAGTO.Edit;
          u_funcoes.AlterarEnabled([cxDBTextEdit1, cxDBTextEdit2, cxDBTextEdit3], true);
          u_funcoes.AlterarEnabled([dbgrd1], False);
          u_funcoes.IniciarCadastro([BtnIncluir, BtnCancelar, BtnAlterar, BtnExcluir], true);
          cxDBTextEdit1.SetFocus;
     end;
end;

procedure TFRM_forma_pagamento.BtnCancelarClick(Sender: TObject);
begin
     SQL_C_PAGTO.Cancel;
     u_funcoes.AlterarEnabled([cxDBTextEdit1, cxDBTextEdit2, cxDBTextEdit3], False);
     u_funcoes.AlterarEnabled([dbgrd1], True);
     u_funcoes.IniciarCadastro([BtnIncluir, BtnCancelar, BtnAlterar, BtnExcluir], false);
     dbgrd1.SetFocus;
end;

procedure TFRM_forma_pagamento.BtnExcluirClick(Sender: TObject);
begin
     if (dbedt_codigo.Text = '') or (dbedt_codigo.Text = '0') then
     begin
          wnAlerta('Excluir', 'Nenhuma forma de pagamento foi selecionado.');
     end
     else
     begin
          if not TEnv.Tuser.IsAdmin then
          begin
               if TFrm_liberacao.Execute then
                  u_funcoes.ExcluirCadastro(SQL_C_PAGTO, False);
          end
          else
              u_funcoes.ExcluirCadastro(SQL_C_PAGTO, False);
     end;
end;

procedure TFRM_forma_pagamento.BtnGravarClick(Sender: TObject);
begin
     if (dbedt_codigo.Text <> '') or (dbedt_codigo.Text <> '0') then
     begin
          if u_funcoes.CamposObrigatorios([cxDBTextEdit1], ['DESCRIÇÃO'], [], []) then
          begin
               Exit
          end;
          try
             try
                SQL_C_PAGTO.Post;
             except
               on E: Exception do
               begin
                    wnErro('Erro de Cadastro', E.Message + sLineBreak + 'Erro ao cadastrar forma de pagamento.');
               end;
             end;
          finally
             u_funcoes.AlterarEnabled([cxDBTextEdit1, cxDBTextEdit2, cxDBTextEdit3], False);
             u_funcoes.AlterarEnabled([dbgrd1], True);
             u_funcoes.IniciarCadastro([BtnIncluir, BtnCancelar, BtnAlterar, BtnExcluir], false);
          end;
     end;
end;

procedure TFRM_forma_pagamento.BtnIncluirClick(Sender: TObject);
begin
     SQL_C_PAGTO.Insert;
     u_funcoes.IniciarCadastro([BtnIncluir, BtnCancelar, BtnAlterar, BtnExcluir], true);
     u_funcoes.AlterarEnabled([cxDBTextEdit1, cxDBTextEdit2, cxDBTextEdit3], true);
     u_funcoes.AlterarEnabled([dbgrd1], false);
     cxDBTextEdit1.SetFocus;
end;

procedure TFRM_forma_pagamento.dbedt_codigoKeyDown(Sender: TObject;
  var Key: Word; Shift: TShiftState);
begin
     case key of
          VK_RETURN : Perform(WM_NEXTDLGCTL,0,0);
     end;
end;

procedure TFRM_forma_pagamento.dbgrd1DrawColumnCell(Sender: TObject;
  const Rect: TRect; DataCol: Integer; Column: TColumn;
  State: TGridDrawState);
begin
     GridZebrado(dbgrd1, Rect, DataCol, Column, State);
end;

procedure TFRM_forma_pagamento.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  Action := cafree;
  Self := nil;
end;

procedure TFRM_forma_pagamento.FormKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
     u_funcoes.TeclasAtalho(Key, [VK_F1, VK_F2, VK_F3, VK_F4, VK_F5], [BtnIncluir, BtnGravar, BtnCancelar, BtnAlterar, BtnExcluir]);
end;

procedure TFRM_forma_pagamento.FormShow(Sender: TObject);
begin
     SQL_C_PAGTO.Open;
     u_funcoes.AlterarEnabled([dbedt_codigo, cxDBTextEdit1, cxDBTextEdit2, cxDBTextEdit3], false);
     u_funcoes.IniciarCadastro([BtnIncluir, BtnCancelar, BtnAlterar, BtnExcluir], false);
     dbgrd1.SetFocus;
end;

end.
