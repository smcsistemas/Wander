//Verificado automaticamente em 16/06/2020 09:27
unit cad_lei;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants,
  System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls, Vcl.DBCtrls,
  Vcl.Grids, Vcl.DBGrids, cxGraphics, cxControls, cxLookAndFeels,
  cxLookAndFeelPainters, cxContainer, cxEdit, Vcl.Menus, cxButtons, cxCheckBox,
  cxGroupBox, cxMemo,
  cxDBEdit, cxTextEdit, FireDAC.Stan.Intf, FireDAC.Stan.Option,
  FireDAC.Stan.Param, FireDAC.Stan.Error, FireDAC.DatS,
  FireDAC.Stan.Async, FireDAC.DApt, Data.DB,
  FireDAC.Comp.DataSet, FireDAC.Comp.Client, cxClasses, dxSkinsForm,
  dxSkinsCore,  FireDAC.Phys.Intf, FireDAC.DApt.Intf, Vcl.Mask, v_env,
  dxSkinBlack, dxSkinBlue, dxSkinBlueprint, dxSkinCaramel, dxSkinCoffee,
  dxSkinDarkRoom, dxSkinDarkSide, dxSkinDevExpressDarkStyle,
  dxSkinDevExpressStyle, dxSkinFoggy, dxSkinGlassOceans, dxSkinHighContrast,
  dxSkiniMaginary, dxSkinLilian, dxSkinLiquidSky, dxSkinLondonLiquidSky,
  dxSkinMcSkin, dxSkinMetropolis, dxSkinMetropolisDark, dxSkinMoneyTwins,
  dxSkinOffice2007Black, dxSkinOffice2007Blue, dxSkinOffice2007Green,
  dxSkinOffice2007Pink, dxSkinOffice2007Silver, dxSkinOffice2010Black,
  dxSkinOffice2010Blue, dxSkinOffice2010Silver, dxSkinOffice2013DarkGray,
  dxSkinOffice2013LightGray, dxSkinOffice2013White, dxSkinOffice2016Colorful,
  dxSkinOffice2016Dark, dxSkinPumpkin, dxSkinSeven, dxSkinSevenClassic,
  dxSkinSharp, dxSkinSharpPlus, dxSkinSilver, dxSkinSpringTime, dxSkinStardust,
  dxSkinSummer2008, dxSkinTheAsphaltWorld, dxSkinsDefaultPainters,
  dxSkinValentine, dxSkinVisualStudio2013Blue, dxSkinVisualStudio2013Dark,
  dxSkinVisualStudio2013Light, dxSkinVS2010, dxSkinWhiteprint,
  dxSkinXmas2008Blue;

type
  TFrm_Lei = class(TForm)
    Código: TLabel;
    Label1: TLabel;
    Label3: TLabel;
    Label2: TLabel;
    DBGrid2: TDBGrid;
    cxDBTextEdit1: TcxDBTextEdit;
    cxDBMemo1: TcxDBMemo;
    cxGroupBox1: TcxGroupBox;
    cxCheckBox4: TcxCheckBox;
    cxCheckBox1: TcxCheckBox;
    cxDBTextEdit3: TcxDBTextEdit;
    DS_Lei: TDataSource;
    SQL_Lei: TFDQuery;
    sql_increment: TFDQuery;
    sql_incrementAUTO_INCREMENT: TLargeintField;
    SQL_LeiCODIGO: TFDAutoIncField;
    SQL_LeiTITULO: TStringField;
    SQL_LeiDESCRICAO: TStringField;
    SQL_LeiDATA_CADASTRO: TDateField;
    ds_lista: TDataSource;
    SQL_LISTA: TFDQuery;
    SQL_LISTACODIGO: TFDAutoIncField;
    SQL_LISTATITULO: TStringField;
    SQL_LISTADESCRICAO: TStringField;
    SQL_LISTADATA_CADASTRO: TDateField;
    BtnGravar: TcxButton;
    BtnCancelar: TcxButton;
    BtnIncluir: TcxButton;
    BtnAlterar: TcxButton;
    BtnExcluir: TcxButton;
    DBEdit1: TDBEdit;
    procedure cxDBTextEdit1KeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
    procedure cxDBTextEdit2KeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure BtnIncluirClick(Sender: TObject);
    procedure BtnGravarClick(Sender: TObject);
    procedure BtnCancelarClick(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure DBGrid2DblClick(Sender: TObject);
    procedure cxButton1Click(Sender: TObject);
    procedure FormKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
    procedure DBGrid2DrawColumnCell(Sender: TObject; const Rect: TRect; DataCol: Integer; Column: TColumn; State: TGridDrawState);
    procedure BtnAlterarClick(Sender: TObject);
    procedure BtnExcluirClick(Sender: TObject);
    procedure DBEdit1KeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Frm_Lei: TFrm_Lei;

implementation

{$R *.dfm}

uses u_funcoes, liberacao;

procedure TFrm_Lei.BtnAlterarClick(Sender: TObject);
begin
  with SQL_Lei do
  begin
    Close;
    ParamByName('pcodigo').Value := SQL_LISTACODIGO.Value;
    Open;
    Edit;
  end;
  BtnIncluir.visible := False;
  BtnCancelar.Enabled := True;
  BtnGravar.visible := True;
  BtnExcluir.Enabled := False;
  BtnAlterar.Enabled := False;
  DBEdit1.SetFocus;
  DBEdit1.SelectAll;
end;

procedure TFrm_Lei.BtnCancelarClick(Sender: TObject);
begin
  SQL_Lei.Cancel;
  SQL_Lei.Close;

  BtnIncluir.visible := True;
  BtnCancelar.Enabled := False;
  BtnGravar.visible := False;
  BtnExcluir.Enabled := True;
  BtnAlterar.Enabled := True;
  BtnIncluir.SetFocus;
  SQL_LISTA.Active := False;
  SQL_LISTA.Active := True;

end;

procedure TFrm_Lei.BtnExcluirClick(Sender: TObject);
begin
  if not TEnv.Tuser.IsAdmin then
  begin
    if TFrm_liberacao.Execute then
    begin
      with SQL_Lei do
      begin
        Close;
        ParamByName('pcodigo').Value := SQL_LISTACODIGO.Value;
        Open;
        Delete;
      end;
      wnInfo('Excluir', 'Cadastro foi excluído com sucesso.');
      SQL_Lei.Active := False;
      SQL_LISTA.Active := False;
      SQL_LISTA.Active := True;
    end;
  end
  else
  begin
    with SQL_Lei do
    begin
      Close;
      ParamByName('pcodigo').Value := SQL_LISTACODIGO.Value;
      Open;
      Delete;
    end;
    wnInfo('Excluir', 'Cadastro foi excluído com sucesso.');
    SQL_Lei.Active := False;
    SQL_LISTA.Active := False;
    SQL_LISTA.Active := True;
  end;
end;

procedure TFrm_Lei.BtnGravarClick(Sender: TObject);
begin
  if u_funcoes.CamposObrigatorios([DBEdit1], ['Descrição'], [], [], [], []) then
  begin
    Exit;
  end
  else
    SQL_Lei.Post;
  SQL_Lei.Active := False;
  wnInfo('Cadastro Lei', 'Operação concluída csom sucesso!');
  u_funcoes.IniciarCadastro([BtnIncluir, BtnCancelar, BtnAlterar, BtnExcluir], False);
  SQL_LISTA.Active := False;
  SQL_LISTA.Active := True;

end;

procedure TFrm_Lei.BtnIncluirClick(Sender: TObject);
begin
  SQL_Lei.Active := True;
  SQL_Lei.Insert;
  SQL_LeiDATA_CADASTRO.Value := Date;
  BtnIncluir.visible := False;
  BtnCancelar.Enabled := True;
  BtnGravar.visible := True;
  DBEdit1.SetFocus;
  sql_increment.Active := True;
  cxDBTextEdit1.Text := inttostr(sql_incrementAUTO_INCREMENT.Value);

end;

procedure TFrm_Lei.cxButton1Click(Sender: TObject);
begin
  Close;
end;

procedure TFrm_Lei.cxDBTextEdit1KeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
begin
  if Key = vk_Return then
    DBEdit1.SetFocus;
end;

procedure TFrm_Lei.cxDBTextEdit2KeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
begin
  if Key = vk_Return then

    cxDBMemo1.SetFocus;
end;

procedure TFrm_Lei.DBEdit1KeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
begin
  if Key = vk_Return then
    BtnGravar.Click;
end;

procedure TFrm_Lei.DBGrid2DblClick(Sender: TObject);
begin
  BtnIncluir.Enabled := False;
  BtnCancelar.Enabled := True;
  BtnGravar.Enabled := True;
  Close;
end;

procedure TFrm_Lei.DBGrid2DrawColumnCell(Sender: TObject; const Rect: TRect; DataCol: Integer; Column: TColumn; State: TGridDrawState);
begin
  GridZebrado(DBGrid2, Rect, DataCol, Column, State);
end;

procedure TFrm_Lei.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  Action := cafree;
  Self := nil;
end;

procedure TFrm_Lei.FormKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
begin
  u_funcoes.TeclasAtalho(Key, [VK_F1, VK_F2, VK_F3, VK_F4, VK_F5], [BtnIncluir, BtnGravar, BtnCancelar, BtnAlterar, BtnExcluir]);
end;

procedure TFrm_Lei.FormShow(Sender: TObject);
begin
  SQL_LISTA.Active := True;
end;

end.
