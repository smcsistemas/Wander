//Verificado automaticamente em 16/06/2020 09:27
unit cad_plano_contas;
{
================================================================================
|ITEM |DATA |DESENVOLVEDOR       |HISTORICO                                    |
|-----|-----|--------------------|---------------------------------------------|
|   98|22/04|Wander              |Criada consulta do plano de contas           |
|     |14:08|                    |                                             |
================================================================================
}
interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, cxGraphics, cxControls, cxLookAndFeels,
  cxLookAndFeelPainters, cxContainer, cxEdit, dxSkinsCore,
  dxSkinOffice2013White, Vcl.Menus, FireDAC.Stan.Intf, FireDAC.Stan.Option,
  FireDAC.Stan.Param, FireDAC.Stan.Error, FireDAC.DatS,
  FireDAC.Stan.Async, FireDAC.DApt, cxCheckBox, cxClasses,
  dxSkinsForm, Data.DB, FireDAC.Comp.DataSet, FireDAC.Comp.Client, Vcl.StdCtrls,
  cxButtons, cxMemo, cxDBEdit, cxTextEdit, Vcl.DBGrids, dxSkinBlack,
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
  dxSkinWhiteprint, dxSkinXmas2008Blue, FireDAC.Phys.Intf, FireDAC.DApt.Intf, Vcl.Grids,
  cxRadioGroup, cxMaskEdit, cxDropDownEdit, cxCheckComboBox, cxDBCheckComboBox,
  Vcl.Mask;

type
  TFRM_cad_plano_contas = class(TForm)
    lblC�digo: TLabel;
    dbgrd1: TDBGrid;
    dbedt_codigo: TcxDBTextEdit;
    cxDBTextEdit2: TcxDBTextEdit;
    BtnExcluir: TcxButton;
    dsDS_Lei: TDataSource;
    SQL_Lei: TFDQuery;
    SQL_LeiCODIGO: TFDAutoIncField;
    SQL_LeiTITULO: TStringField;
    SQL_LeiDESCRICAO: TStringField;
    SQL_LeiDATA_CADASTRO: TDateField;
    sql_increment: TFDQuery;
    sql_incrementAUTO_INCREMENT: TLargeintField;
    ds_lista: TDataSource;
    SQL_LISTA: TFDQuery;
    SQL_LISTACODIGO: TFDAutoIncField;
    SQL_LISTATITULO: TStringField;
    SQL_LISTADESCRICAO: TStringField;
    SQL_LISTADATA_CADASTRO: TDateField;
    lbl3: TLabel;
    lbl1: TLabel;
    rbClassif: TcxRadioButton;
    rbDesc: TcxRadioButton;
    Label3: TLabel;
    cxDBTextEdit4: TcxDBTextEdit;
    edtConsulta: TMaskEdit;
    SQL_C_PLANO: TFDQuery;
    DS_C_PLANO: TDataSource;
    SQL_C_PLANOCodigo: TFDAutoIncField;
    SQL_C_PLANODescricao: TStringField;
    SQL_C_PLANOClassificacao: TStringField;
    BtnGravar: TcxButton;
    BtnIncluir: TcxButton;
    BtnCancelar: TcxButton;
    BtnAlterar: TcxButton;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure BtnIncluirClick(Sender: TObject);
    procedure BtnCancelarClick(Sender: TObject);
    procedure BtnAlterarClick(Sender: TObject);
    procedure BtnExcluirClick(Sender: TObject);
    procedure BtnGravarClick(Sender: TObject);
    procedure dbgrd1DrawColumnCell(Sender: TObject; const Rect: TRect;
      DataCol: Integer; Column: TColumn; State: TGridDrawState);
    procedure FormKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure FormShow(Sender: TObject);
    procedure dbedt_codigoKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure edtConsultaChange(Sender: TObject);
    procedure FormCreate(Sender: TObject);
  private
    procedure ListarContas;
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FRM_cad_plano_contas: TFRM_cad_plano_contas;

  //Wander 22/04/20
  // Flag para saber se est� no cadastro ou na consulta
  // do plano de contas
  vFRM_cad_plano_contasConsultando:Boolean;
implementation

{$R *.dfm}

uses u_funcoes, v_Env, liberacao, S_Module;

procedure TFRM_cad_plano_contas.BtnAlterarClick(Sender: TObject);
begin
     if vFRM_cad_plano_contasConsultando then
     begin
       // Se tiver apenas consultando, fecha a tela
       close;
       exit;
     end;

     if dbedt_codigo.Text = '' then
     begin
          wnAlerta('Alterar', 'Nenhum plano de conta foi selecionado.');
     end
     else
     begin
          SQL_C_PLANO.Edit;
          u_funcoes.AlterarEnabled([cxDBTextEdit2, cxDBTextEdit4], true);
          u_funcoes.AlterarEnabled([dbgrd1, edtConsulta, rbDesc, rbClassif], False);
          u_funcoes.IniciarCadastro([BtnIncluir, BtnCancelar, BtnAlterar, BtnExcluir], true);
          cxDBTextEdit2.SetFocus;
     end;
end;

procedure TFRM_cad_plano_contas.BtnCancelarClick(Sender: TObject);
begin
   if vFRM_cad_plano_contasConsultando then
   begin
     // Se tiver apenas consultando, fecha a tela
     close;
     exit;
   end;
   SQL_C_PLANO.Cancel;
   u_funcoes.AlterarEnabled([cxDBTextEdit2, cxDBTextEdit4], False);
   u_funcoes.AlterarEnabled([dbgrd1, edtConsulta, rbDesc, rbClassif], True);
   u_funcoes.IniciarCadastro([BtnIncluir, BtnCancelar, BtnAlterar, BtnExcluir], false);
   edtConsulta.SetFocus;
end;

procedure TFRM_cad_plano_contas.BtnExcluirClick(Sender: TObject);
begin
     if (dbedt_codigo.Text = '') or (dbedt_codigo.Text = '0') then
     begin
          wnAlerta('Excluir', 'Nenhum plano de conta foi selecionado.');
     end
     else
     begin
          if not TEnv.Tuser.IsAdmin then
          begin
               if TFrm_liberacao.Execute then
                  u_funcoes.ExcluirCadastro(SQL_C_PLANO, False);
          end
          else
              u_funcoes.ExcluirCadastro(SQL_C_PLANO, False);
     end;
end;

procedure TFRM_cad_plano_contas.BtnGravarClick(Sender: TObject);
begin
     if (dbedt_codigo.Text <> '') or (dbedt_codigo.Text <> '0') then
     begin
          if u_funcoes.CamposObrigatorios([cxDBTextEdit2], ['DESCRI��O'], [], []) then
          begin
               Exit
          end;
          try
             try
                SQL_C_PLANO.Post;
             except
               on E: Exception do
               begin
                    wnErro('Erro de Cadastro', E.Message + sLineBreak + 'Erro ao cadastrar Plano de conta.');
               end;
             end;
          finally
             u_funcoes.AlterarEnabled([cxDBTextEdit2, cxDBTextEdit4], False);
             u_funcoes.AlterarEnabled([dbgrd1,edtConsulta,rbDesc, rbClassif], True);
             u_funcoes.IniciarCadastro([BtnIncluir, BtnCancelar, BtnAlterar, BtnExcluir], false);
          end;
     end;
end;

procedure TFRM_cad_plano_contas.BtnIncluirClick(Sender: TObject);
begin
   SQL_C_PLANO.Insert;
   u_funcoes.IniciarCadastro([BtnIncluir, BtnCancelar, BtnAlterar, BtnExcluir], true);
   u_funcoes.AlterarEnabled([cxDBTextEdit2, cxDBTextEdit4], true);
   u_funcoes.AlterarEnabled([edtConsulta, rbDesc, rbClassif, dbgrd1], false);
   cxDBTextEdit2.SetFocus;
end;

procedure TFRM_cad_plano_contas.dbedt_codigoKeyDown(Sender: TObject;
  var Key: Word; Shift: TShiftState);
begin
   case key of
        VK_RETURN : Perform(WM_NEXTDLGCTL,0,0);
   end;
end;

procedure TFRM_cad_plano_contas.dbgrd1DrawColumnCell(Sender: TObject;
  const Rect: TRect; DataCol: Integer; Column: TColumn;
  State: TGridDrawState);
begin
   GridZebrado(dbgrd1, Rect, DataCol, Column, State);
end;

procedure TFRM_cad_plano_contas.edtConsultaChange(Sender: TObject);
begin
   ListarContas;
end;

procedure TFRM_cad_plano_contas.ListarContas;
begin
   if vFRM_cad_plano_contasConsultando then
   begin
      // Foi chamado por algum cadastro que usa o plano de contas
      // S� pode consultar...

      // Esconde todos os bot�es
      BtnIncluir.Visible := false;
      BtnExcluir.Visible := false;
      BtnGravar.Visible := false;
      BtnAlterar.Visible := false;

      // Transforma o bot�o cancelar em "OK"
      BtnCancelar.Visible := true;
      BtnCancelar.Enabled := true;
      BtnCancelar.Caption := 'OK';
   end;

   SQL_C_PLANO.Close;
   SQL_C_PLANO.Sql.Clear;
   SQL_C_PLANO.Sql.Add('Select *           ');
   SQL_C_PLANO.Sql.Add('  from Plano_contas');
   if edtConsulta.Text <> '' then
   begin
      SQL_C_PLANO.Sql.Add('WHERE descricao LIKE :descricao');
      SQL_C_PLANO.ParamByName('descricao').AsString := '%'+edtConsulta.Text+'%';
   end;
   SQL_C_PLANO.Sql.Add('order by descricao ');
   SQL_C_PLANO.Open;

   if rbDesc.Checked then
   begin
      SQL_C_PLANO.IndexFieldNames := 'Descricao';
      SQL_C_PLANO.Locate('Descricao',edtConsulta.Text,[loCaseInsensitive,loPartialKey]);
   end
   else
   begin
      SQL_C_PLANO.IndexFieldNames := 'Classificacao';
      SQL_C_PLANO.Locate('Classificacao',edtConsulta.Text,[loCaseInsensitive,loPartialKey]);
   end;
end;

procedure TFRM_cad_plano_contas.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  Action := cafree;
  self := nil;
end;

procedure TFRM_cad_plano_contas.FormCreate(Sender: TObject);
begin
   vFRM_cad_plano_contasConsultando := False;
end;

procedure TFRM_cad_plano_contas.FormKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
   u_funcoes.TeclasAtalho(Key, [VK_F1, VK_F2, VK_F3, VK_F4, VK_F5], [BtnIncluir, BtnGravar, BtnCancelar, BtnAlterar, BtnExcluir]);
end;

procedure TFRM_cad_plano_contas.FormShow(Sender: TObject);
begin
   ListarContas;
   if not vFRM_cad_plano_contasConsultando then
   begin
      u_funcoes.AlterarEnabled([dbedt_codigo, cxDBTextEdit2, cxDBTextEdit4], false);
      u_funcoes.IniciarCadastro([BtnIncluir, BtnCancelar, BtnAlterar, BtnExcluir], false);
   end;
   edtConsulta.SetFocus;
end;

end.
