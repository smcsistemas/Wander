unit cad_complementos;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, cxGraphics, cxControls, cxLookAndFeels,
  cxLookAndFeelPainters, cxContainer, cxEdit, dxSkinsCore,
  dxSkinOffice2013White, Vcl.Menus, FireDAC.Stan.Intf, FireDAC.Stan.Option,
  FireDAC.Stan.Param, FireDAC.Stan.Error, FireDAC.DatS,
  FireDAC.Stan.Async, FireDAC.DApt, cxCheckBox, cxClasses,
  dxSkinsForm, Data.DB, FireDAC.Comp.Client, Vcl.StdCtrls,
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
  dxSkinWhiteprint, dxSkinXmas2008Blue, Vcl.Grids, FireDAC.Phys.Intf,
  FireDAC.DApt.Intf, cxRadioGroup, FireDAC.Comp.DataSet, Vcl.Mask;

type
  TFRM_cad_complementos = class(TForm)
    lblCódigo: TLabel;
    lbl3: TLabel;
    lbl1: TLabel;
    dbgrd1: TDBGrid;
    dbedt_codigo: TcxDBTextEdit;
    cxDBTextEdit2: TcxDBTextEdit;
    BtnGravar: TcxButton;
    BtnCancelar: TcxButton;
    BtnIncluir: TcxButton;
    BtnAlterar: TcxButton;
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
    rbCodigo: TcxRadioButton;
    rbDesc: TcxRadioButton;
    SQL_C_COMPLEMENTO: TFDQuery;
    DS_C_COMPLEMENTO: TDataSource;
    SQL_C_COMPLEMENTOCodigo: TFDAutoIncField;
    SQL_C_COMPLEMENTODescricao: TStringField;
    edtConsulta: TMaskEdit;
    procedure edtConsultaChange(Sender: TObject);
    procedure FormKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure FormShow(Sender: TObject);
    procedure BtnExcluirClick(Sender: TObject);
    procedure BtnAlterarClick(Sender: TObject);
    procedure BtnCancelarClick(Sender: TObject);
    procedure BtnIncluirClick(Sender: TObject);
    procedure BtnGravarClick(Sender: TObject);
    procedure dbgrd1DrawColumnCell(Sender: TObject; const Rect: TRect;
      DataCol: Integer; Column: TColumn; State: TGridDrawState);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FRM_cad_complementos: TFRM_cad_complementos;

implementation

{$R *.dfm}

uses u_funcoes, v_Env, liberacao;

procedure TFRM_cad_complementos.BtnAlterarClick(Sender: TObject);
begin
     if dbedt_codigo.Text = '' then
     begin
          wnAlerta('Alterar', 'Nenhum complemento foi selecionado.');
     end
     else
     begin
          SQL_C_COMPLEMENTO.Edit;
          u_funcoes.AlterarEnabled([cxDBTextEdit2], true);
          u_funcoes.AlterarEnabled([dbgrd1, edtConsulta, rbDesc, rbCodigo], False);
          u_funcoes.IniciarCadastro([BtnIncluir, BtnCancelar, BtnAlterar, BtnExcluir], true);
          cxDBTextEdit2.SetFocus;
     end;
end;

procedure TFRM_cad_complementos.BtnCancelarClick(Sender: TObject);
begin
     SQL_C_COMPLEMENTO.Cancel;
     u_funcoes.AlterarEnabled([cxDBTextEdit2], False);
     u_funcoes.AlterarEnabled([dbgrd1, edtConsulta, rbDesc, rbCodigo], True);
     u_funcoes.IniciarCadastro([BtnIncluir, BtnCancelar, BtnAlterar, BtnExcluir], false);
     edtConsulta.SetFocus;
end;

procedure TFRM_cad_complementos.BtnExcluirClick(Sender: TObject);
begin
     if (dbedt_codigo.Text = '') or (dbedt_codigo.Text = '0') then
     begin
          wnAlerta('Excluir', 'Nenhum complemento foi selecionado.');
     end
     else
     begin
          if not TEnv.Tuser.IsAdmin then
          begin
               if TFrm_liberacao.Execute then
                  u_funcoes.ExcluirCadastro(SQL_C_COMPLEMENTO, False);
          end
          else
              u_funcoes.ExcluirCadastro(SQL_C_COMPLEMENTO, False);
     end;
end;

procedure TFRM_cad_complementos.BtnGravarClick(Sender: TObject);
begin
     if (dbedt_codigo.Text <> '') or (dbedt_codigo.Text <> '0') then
     begin
          if u_funcoes.CamposObrigatorios([cxDBTextEdit2], ['DESCRIÇÃO'], [], []) then
          begin
               Exit
          end;
          try
             try
                SQL_C_COMPLEMENTO.Post;
             except
               on E: Exception do
               begin
                    wnErro('Erro de Cadastro', E.Message + sLineBreak + 'Erro ao cadastrar Complemento.');
               end;
             end;
          finally
             u_funcoes.AlterarEnabled([cxDBTextEdit2], False);
             u_funcoes.AlterarEnabled([dbgrd1,edtConsulta,rbDesc, rbCodigo], True);
             u_funcoes.IniciarCadastro([BtnIncluir, BtnCancelar, BtnAlterar, BtnExcluir], false);
          end;
     end;
end;

procedure TFRM_cad_complementos.BtnIncluirClick(Sender: TObject);
begin
     SQL_C_COMPLEMENTO.Insert;
     u_funcoes.IniciarCadastro([BtnIncluir, BtnCancelar, BtnAlterar, BtnExcluir], true);
     u_funcoes.AlterarEnabled([cxDBTextEdit2], true);
     u_funcoes.AlterarEnabled([edtConsulta, rbDesc, rbCodigo, dbgrd1], false);
     cxDBTextEdit2.SetFocus;
end;

procedure TFRM_cad_complementos.dbgrd1DrawColumnCell(Sender: TObject;
  const Rect: TRect; DataCol: Integer; Column: TColumn;
  State: TGridDrawState);
begin
     GridZebrado(dbgrd1, Rect, DataCol, Column, State);
end;

procedure TFRM_cad_complementos.edtConsultaChange(Sender: TObject);
var i : Integer;
begin
     if rbDesc.Checked then
     begin
          SQL_C_COMPLEMENTO.IndexFieldNames := 'Descricao';
          SQL_C_COMPLEMENTO.Locate('Descricao',edtConsulta.Text,[loCaseInsensitive,loPartialKey]);
     end
     else
     begin
          if TryStrToInt(edtConsulta.Text, i) then
          begin
               SQL_C_COMPLEMENTO.IndexFieldNames := 'Codigo';
               SQL_C_COMPLEMENTO.Locate('Codigo',edtConsulta.Text,[loCaseInsensitive,loPartialKey]);
          end;
     end;
end;

procedure TFRM_cad_complementos.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  Action := cafree;
  self := nil;
end;

procedure TFRM_cad_complementos.FormKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
     u_funcoes.TeclasAtalho(Key, [VK_F1, VK_F2, VK_F3, VK_F4, VK_F5], [BtnIncluir, BtnGravar, BtnCancelar, BtnAlterar, BtnExcluir]);
end;

procedure TFRM_cad_complementos.FormShow(Sender: TObject);
begin
     SQL_C_COMPLEMENTO.Open;
     u_funcoes.AlterarEnabled([dbedt_codigo, cxDBTextEdit2], false);
     u_funcoes.IniciarCadastro([BtnIncluir, BtnCancelar, BtnAlterar, BtnExcluir], false);
     edtConsulta.SetFocus;
end;

end.
