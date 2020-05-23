unit cad_tipo_pagamento;

interface

uses

  System.Classes,
  Vcl.Controls, Vcl.Forms, Vcl.DBGrids, Vcl.StdCtrls,

  cxButtons,
  cxDBEdit, cxGraphics, cxControls, cxLookAndFeels, cxLookAndFeelPainters, cxContainer, cxEdit, dxSkinsCore, dxSkinBlack, dxSkinBlue, dxSkinBlueprint, dxSkinCaramel, dxSkinCoffee, dxSkinDarkRoom,
  dxSkinDarkSide, dxSkinDevExpressDarkStyle, dxSkinDevExpressStyle, dxSkinFoggy, dxSkinGlassOceans, dxSkinHighContrast, dxSkiniMaginary, dxSkinLilian, dxSkinLiquidSky, dxSkinLondonLiquidSky,
  dxSkinMcSkin, dxSkinMetropolis, dxSkinMetropolisDark, dxSkinMoneyTwins, dxSkinOffice2007Black, dxSkinOffice2007Blue, dxSkinOffice2007Green, dxSkinOffice2007Pink, dxSkinOffice2007Silver,
  dxSkinOffice2010Black, dxSkinOffice2010Blue, dxSkinOffice2010Silver, dxSkinOffice2013DarkGray, dxSkinOffice2013LightGray, dxSkinOffice2013White, dxSkinOffice2016Colorful, dxSkinOffice2016Dark,
  dxSkinPumpkin, dxSkinSeven, dxSkinSevenClassic, dxSkinSharp, dxSkinSharpPlus, dxSkinSilver, dxSkinSpringTime, dxSkinStardust, dxSkinSummer2008, dxSkinTheAsphaltWorld, dxSkinsDefaultPainters,
  dxSkinValentine, dxSkinVisualStudio2013Blue, dxSkinVisualStudio2013Dark, dxSkinVisualStudio2013Light, dxSkinVS2010, dxSkinWhiteprint, dxSkinXmas2008Blue, Vcl.Menus, Vcl.Grids, cxTextEdit,
  cxMaskEdit, cxDropDownEdit, cxRadioGroup,
  Data.DB, Vcl.ExtCtrls, Vcl.DBCtrls, FireDAC.Stan.Intf,
  FireDAC.Stan.Option, FireDAC.Stan.Param, FireDAC.Stan.Error,
  FireDAC.DatS, FireDAC.Phys.Intf, FireDAC.DApt.Intf, FireDAC.Stan.Async,
  FireDAC.DApt, FireDAC.Comp.DataSet, FireDAC.Comp.Client, winapi.messages, winapi.windows, System.sysutils;

type
  TFMR_tipo_pagamento = class(TForm)
    lblCódigo: TLabel;
    lblDescrição: TLabel;
    cxDBTextEdit2: TcxDBTextEdit;
    dbgrd1: TDBGrid;
    BtnGravar: TcxButton;
    BtnCancelar: TcxButton;
    BtnIncluir: TcxButton;
    BtnAlterar: TcxButton;
    BtnExcluir: TcxButton;
    Label1: TLabel;
    SQL_C_PAGTO: TFDQuery;
    DS_C_PAGTO: TDataSource;
    SQL_C_PAGTOCODIGO: TFDAutoIncField;
    SQL_C_PAGTOCOD_TIPO_PAGAMENTO: TStringField;
    SQL_C_PAGTOTIPO_PAGAMENTO: TStringField;
    SQL_C_PAGTOCodigoBanco: TIntegerField;
    SQL_C_PAGTOTipo: TIntegerField;
    dbedt_codigo: TcxDBTextEdit;
    DBLookupComboBox1: TDBLookupComboBox;
    SQL_C_BANCO: TFDQuery;
    DS_C_BANCO: TDataSource;
    SQL_C_BANCOcodigo: TIntegerField;
    SQL_C_BANCOnome: TStringField;
    cxRadioButton1: TcxRadioButton;
    cxRadioButton2: TcxRadioButton;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure BtnIncluirClick(Sender: TObject);
    procedure BtnCancelarClick(Sender: TObject);
    procedure BtnAlterarClick(Sender: TObject);
    procedure BtnExcluirClick(Sender: TObject);
    procedure FormKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure FormShow(Sender: TObject);
    procedure dbgrd1DrawColumnCell(Sender: TObject; const Rect: TRect;
      DataCol: Integer; Column: TColumn; State: TGridDrawState);
    procedure dbedt_codigoKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure BtnGravarClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FMR_tipo_pagamento: TFMR_tipo_pagamento;

implementation

{$R *.dfm}

uses S_Module, u_funcoes, v_Env, liberacao;



procedure TFMR_tipo_pagamento.BtnAlterarClick(Sender: TObject);
begin
     if dbedt_codigo.Text = '' then
     begin
          wnAlerta('Alterar', 'Nenhum tipo de pagamento foi selecionado.');
     end
     else
     begin
          SQL_C_PAGTO.Edit;
          u_funcoes.AlterarEnabled([cxDBTextEdit2, DBLookupComboBox1], true);
          u_funcoes.AlterarEnabled([dbgrd1], False);
          u_funcoes.IniciarCadastro([BtnIncluir, BtnCancelar, BtnAlterar, BtnExcluir], true);
          cxDBTextEdit2.SetFocus;
     end;
end;

procedure TFMR_tipo_pagamento.BtnCancelarClick(Sender: TObject);
begin
     SQL_C_PAGTO.Cancel;
     u_funcoes.AlterarEnabled([cxDBTextEdit2, DBLookupComboBox1], False);
     u_funcoes.AlterarEnabled([dbgrd1], True);
     u_funcoes.IniciarCadastro([BtnIncluir, BtnCancelar, BtnAlterar, BtnExcluir], false);
     dbgrd1.SetFocus;
end;

procedure TFMR_tipo_pagamento.BtnExcluirClick(Sender: TObject);
begin
     if (dbedt_codigo.Text = '') or (dbedt_codigo.Text = '0') then
     begin
          wnAlerta('Excluir', 'Nenhum tipo de pagamento foi selecionado.');
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

procedure TFMR_tipo_pagamento.BtnGravarClick(Sender: TObject);
begin
     if (dbedt_codigo.Text <> '') or (dbedt_codigo.Text <> '0') then
     begin
          if u_funcoes.CamposObrigatorios([cxDBTextEdit2], ['DESCRIÇÃO'], [], []) then
          begin
               Exit
          end;
          try
             try
                SQL_C_PAGTO.Post;

                if SQL_C_PAGTOCOD_TIPO_PAGAMENTO.IsNull then
                begin
                     SQL_C_PAGTO.Edit;
                     SQL_C_PAGTOCOD_TIPO_PAGAMENTO.AsString := FormatFloat('00',SQL_C_PAGTOCODIGO.AsInteger);
                     SQL_C_PAGTO.Post;
                end;
             except
               on E: Exception do
               begin
                    wnErro('Erro de Cadastro', E.Message + sLineBreak + 'Erro ao cadastrar tipo de pagamento.');
               end;
             end;
          finally
             u_funcoes.AlterarEnabled([cxDBTextEdit2, DBLookupComboBox1], False);
             u_funcoes.AlterarEnabled([dbgrd1], True);
             u_funcoes.IniciarCadastro([BtnIncluir, BtnCancelar, BtnAlterar, BtnExcluir], false);
          end;
     end;
end;

procedure TFMR_tipo_pagamento.BtnIncluirClick(Sender: TObject);
begin
     SQL_C_PAGTO.Insert;
     u_funcoes.IniciarCadastro([BtnIncluir, BtnCancelar, BtnAlterar, BtnExcluir], true);
     u_funcoes.AlterarEnabled([cxDBTextEdit2, DBLookupComboBox1], true);
     u_funcoes.AlterarEnabled([dbgrd1], false);
     cxDBTextEdit2.SetFocus;
end;

procedure TFMR_tipo_pagamento.dbedt_codigoKeyDown(Sender: TObject;
  var Key: Word; Shift: TShiftState);
begin
     case key of
          VK_RETURN : Perform(WM_NEXTDLGCTL,0,0);
     end;
end;

procedure TFMR_tipo_pagamento.dbgrd1DrawColumnCell(Sender: TObject;
  const Rect: TRect; DataCol: Integer; Column: TColumn;
  State: TGridDrawState);
begin
     GridZebrado(dbgrd1, Rect, DataCol, Column, State);
end;

procedure TFMR_tipo_pagamento.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  Action := cafree;
  Self := nil;
end;

procedure TFMR_tipo_pagamento.FormKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
     u_funcoes.TeclasAtalho(Key, [VK_F1, VK_F2, VK_F3, VK_F4, VK_F5], [BtnIncluir, BtnGravar, BtnCancelar, BtnAlterar, BtnExcluir]);
end;

procedure TFMR_tipo_pagamento.FormShow(Sender: TObject);
begin
     SQL_C_PAGTO.Open;
     SQL_C_BANCO.Open;
     u_funcoes.AlterarEnabled([dbedt_codigo, cxDBTextEdit2, DBLookupComboBox1], false);
     u_funcoes.IniciarCadastro([BtnIncluir, BtnCancelar, BtnAlterar, BtnExcluir], false);
     dbgrd1.SetFocus;
end;

end.
