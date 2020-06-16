//Verificado automaticamente em 16/06/2020 09:27
unit cad_centro_custo;

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
  cxRadioGroup, cxMaskEdit, cxDropDownEdit, cxStyles, cxVGrid, cxDBVGrid,
  cxInplaceContainer, cxGroupBox, Vcl.Mask;

type
  TFRM_cad_centro_custo = class(TForm)
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
    DBGrid1: TDBGrid;
    lblC�digo: TLabel;
    lbl3: TLabel;
    lbl1: TLabel;
    Label3: TLabel;
    dbedt_codigo: TcxDBTextEdit;
    cxDBTextEdit2: TcxDBTextEdit;
    rbClassif: TcxRadioButton;
    rbDesc: TcxRadioButton;
    cxDBTextEdit4: TcxDBTextEdit;
    edtConsulta: TMaskEdit;
    DS_C_CENTRO: TDataSource;
    SQL_C_CENTRO: TFDQuery;
    SQL_C_CENTROCodigo: TFDAutoIncField;
    SQL_C_CENTRODescricao: TStringField;
    SQL_C_CENTROClassificacao: TStringField;
    Label1: TLabel;
    cxComboBox1: TcxComboBox;
    BtnGravar: TcxButton;
    BtnIncluir: TcxButton;
    BtnCancelar: TcxButton;
    BtnAlterar: TcxButton;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure BtnExcluirClick(Sender: TObject);
    procedure BtnAlterarClick(Sender: TObject);
    procedure BtnCancelarClick(Sender: TObject);
    procedure BtnIncluirClick(Sender: TObject);
    procedure dbedt_codigoKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure DBGrid1DrawColumnCell(Sender: TObject; const Rect: TRect;
      DataCol: Integer; Column: TColumn; State: TGridDrawState);
    procedure FormShow(Sender: TObject);
    procedure edtConsultaChange(Sender: TObject);
    procedure BtnGravarClick(Sender: TObject);
    procedure FormCreate(Sender: TObject);
  private
    { Private declarations }
    procedure ListarCentrosDeCustos;
  public
    { Public declarations }
  end;

var
  FRM_cad_centro_custo: TFRM_cad_centro_custo;

  //Wander 22/04/20
  // Flag para saber se est� no cadastro ou na consulta
  // do plano de contas
  vFRM_cad_centro_custoConsultando:Boolean;
implementation

{$R *.dfm}

uses u_funcoes, v_Env, liberacao;

procedure TFRM_cad_centro_custo.BtnAlterarClick(Sender: TObject);
begin
     if vFRM_cad_centro_custoConsultando then
     begin
       // Se tiver apenas consultando, fecha a tela
       close;
       exit;
     end;

     if dbedt_codigo.Text = '' then
     begin
          wnAlerta('Alterar', 'Nenhum centro de custo foi selecionado.');
     end
     else
     begin
          SQL_C_CENTRO.Edit;
          u_funcoes.AlterarEnabled([cxDBTextEdit2, cxDBTextEdit4], true);
          u_funcoes.AlterarEnabled([DBGrid1, edtConsulta, rbDesc, rbClassif], False);
          u_funcoes.IniciarCadastro([BtnIncluir, BtnCancelar, BtnAlterar, BtnExcluir], true);
          cxDBTextEdit2.SetFocus;
     end;
end;

procedure TFRM_cad_centro_custo.BtnCancelarClick(Sender: TObject);
begin
     if vFRM_cad_centro_custoConsultando then
     begin
       // Se tiver apenas consultando, fecha a tela
       close;
       exit;
     end;

     SQL_C_CENTRO.Cancel;
     u_funcoes.AlterarEnabled([cxDBTextEdit2, cxDBTextEdit4], False);
     u_funcoes.AlterarEnabled([DBGrid1, edtConsulta, rbDesc, rbClassif], True);
     u_funcoes.IniciarCadastro([BtnIncluir, BtnCancelar, BtnAlterar, BtnExcluir], false);
     edtConsulta.SetFocus;
end;

procedure TFRM_cad_centro_custo.BtnExcluirClick(Sender: TObject);
begin
     if (dbedt_codigo.Text = '') or (dbedt_codigo.Text = '0') then
     begin
          wnAlerta('Excluir', 'Nenhum centro de custo foi selecionado.');
     end
     else
     begin
          if not TEnv.Tuser.IsAdmin then
          begin
               if TFrm_liberacao.Execute then
                  u_funcoes.ExcluirCadastro(SQL_C_CENTRO, False);
          end
          else
              u_funcoes.ExcluirCadastro(SQL_C_CENTRO, False);
     end;
end;

procedure TFRM_cad_centro_custo.BtnGravarClick(Sender: TObject);
begin
     if (dbedt_codigo.Text <> '') or (dbedt_codigo.Text <> '0') then
     begin
          if u_funcoes.CamposObrigatorios([cxDBTextEdit2], ['DESCRI��O'], [], []) then
          begin
               Exit
          end;
          try
             try
                SQL_C_CENTRO.Post;
             except
               on E: Exception do
               begin
                    wnErro('Erro de Cadastro', E.Message + sLineBreak + 'Erro ao cadastrar Centro de Custo.');
               end;
             end;
          finally
             u_funcoes.AlterarEnabled([cxDBTextEdit2, cxDBTextEdit4], False);
             u_funcoes.AlterarEnabled([DBGrid1,edtConsulta,rbDesc, rbClassif], True);
             u_funcoes.IniciarCadastro([BtnIncluir, BtnCancelar, BtnAlterar, BtnExcluir], false);
          end;
     end;
end;

procedure TFRM_cad_centro_custo.BtnIncluirClick(Sender: TObject);
begin
     SQL_C_CENTRO.Insert;
     u_funcoes.IniciarCadastro([BtnIncluir, BtnCancelar, BtnAlterar, BtnExcluir], true);
     u_funcoes.AlterarEnabled([cxDBTextEdit2, cxDBTextEdit4], true);
     u_funcoes.AlterarEnabled([DBGrid1, edtConsulta, rbDesc, rbClassif], false);
     cxDBTextEdit2.SetFocus;
end;

procedure TFRM_cad_centro_custo.dbedt_codigoKeyDown(Sender: TObject;
  var Key: Word; Shift: TShiftState);
begin
     case KEY of
          VK_RETURN : Perform(WM_NEXTDLGCTL,0,0);
     end;
end;

procedure TFRM_cad_centro_custo.DBGrid1DrawColumnCell(Sender: TObject;
  const Rect: TRect; DataCol: Integer; Column: TColumn;
  State: TGridDrawState);
begin
  GridZebrado(DBGrid1, Rect, DataCol, Column, State);
end;

procedure TFRM_cad_centro_custo.edtConsultaChange(Sender: TObject);
begin
   ListarCentrosDeCustos;
end;

procedure TFRM_cad_centro_custo.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  Action := cafree;
  self := nil;
end;

procedure TFRM_cad_centro_custo.FormCreate(Sender: TObject);
begin
   vFRM_cad_centro_custoConsultando := false;
end;

procedure TFRM_cad_centro_custo.FormShow(Sender: TObject);
begin
   //SQL_C_CENTRO.Open;
   ListarCentrosDeCustos;
   if not vFRM_cad_centro_custoConsultando then
   begin
     u_funcoes.AlterarEnabled([dbedt_codigo, cxDBTextEdit2, cxDBTextEdit4], false);
     u_funcoes.IniciarCadastro([BtnIncluir, BtnCancelar, BtnAlterar, BtnExcluir], false);
   end;
     DBGrid1.SetFocus;
end;

procedure TFRM_cad_centro_custo.ListarCentrosDeCustos;
begin
   if vFRM_cad_centro_custoConsultando then
   begin
      // Foi chamado por algum cadastro que usa o centro de custos
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

   SQL_C_CENTRO.Close;
   SQL_C_CENTRO.Sql.Clear;
   SQL_C_CENTRO.Sql.Add('Select *           ');
   SQL_C_CENTRO.Sql.Add('  from centro_custo');
   if edtConsulta.Text <> '' then
   begin
      SQL_C_CENTRO.Sql.Add('WHERE descricao LIKE :descricao');
      SQL_C_CENTRO.ParamByName('descricao').AsString := '%'+edtConsulta.Text+'%';
   end;
   SQL_C_CENTRO.Sql.Add('order by descricao ');
   SQL_C_CENTRO.Open;

     if rbDesc.Checked then
     begin
          SQL_C_CENTRO.IndexFieldNames := 'Descricao';
          SQL_C_CENTRO.Locate('Descricao',edtConsulta.Text,[loCaseInsensitive,loPartialKey]);
     end
     else
     begin
          SQL_C_CENTRO.IndexFieldNames := 'Classificacao';
          SQL_C_CENTRO.Locate('Classificacao',edtConsulta.Text,[loCaseInsensitive,loPartialKey]);
     end;

end;

end.
