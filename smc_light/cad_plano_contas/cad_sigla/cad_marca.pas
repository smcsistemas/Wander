unit cad_marca;

interface

uses
  Winapi.Windows, System.SysUtils, System.Variants,
  System.Classes,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs,

  Vcl.StdCtrls, cxButtons, Vcl.Grids,
  Vcl.DBGrids, cxDBEdit,

  FireDAC.Stan.Param,
  Data.DB,
  FireDAC.Comp.DataSet, FireDAC.Comp.Client,












  v_env, cxGraphics, cxControls, cxLookAndFeels, cxLookAndFeelPainters, cxContainer, cxEdit, dxSkinsCore, dxSkinBlack, dxSkinBlue, dxSkinBlueprint, dxSkinCaramel, dxSkinCoffee, dxSkinDarkRoom,
  dxSkinDarkSide, dxSkinDevExpressDarkStyle, dxSkinDevExpressStyle, dxSkinFoggy, dxSkinGlassOceans, dxSkinHighContrast, dxSkiniMaginary, dxSkinLilian, dxSkinLiquidSky, dxSkinLondonLiquidSky,
  dxSkinMcSkin, dxSkinMetropolis, dxSkinMetropolisDark, dxSkinMoneyTwins, dxSkinOffice2007Black, dxSkinOffice2007Blue, dxSkinOffice2007Green, dxSkinOffice2007Pink, dxSkinOffice2007Silver,
  dxSkinOffice2010Black, dxSkinOffice2010Blue, dxSkinOffice2010Silver, dxSkinOffice2013DarkGray, dxSkinOffice2013LightGray, dxSkinOffice2013White, dxSkinOffice2016Colorful, dxSkinOffice2016Dark,
  dxSkinPumpkin, dxSkinSeven, dxSkinSevenClassic, dxSkinSharp, dxSkinSharpPlus, dxSkinSilver, dxSkinSpringTime, dxSkinStardust, dxSkinSummer2008, dxSkinTheAsphaltWorld, dxSkinsDefaultPainters,
  dxSkinValentine, dxSkinVisualStudio2013Blue, dxSkinVisualStudio2013Dark, dxSkinVisualStudio2013Light, dxSkinVS2010, dxSkinWhiteprint, dxSkinXmas2008Blue, Vcl.Menus, FireDAC.Stan.Intf,
  FireDAC.Stan.Option, FireDAC.Stan.Error, FireDAC.DatS, FireDAC.Phys.Intf, FireDAC.DApt.Intf, FireDAC.Stan.Async, FireDAC.DApt, cxTextEdit;

type
  TFrm_Marca = class(TForm)
    Código: TLabel;
    Descrição: TLabel;
    cxDBTextEdit1: TcxDBTextEdit;
    cxDBTextEdit2: TcxDBTextEdit;
    DBGrid1: TDBGrid;
    DS_Marca: TDataSource;
    SQL_Marca: TFDQuery;
    sql_increment: TFDQuery;
    sql_incrementAUTO_INCREMENT: TLargeintField;
    SQL_MarcaCODIGO: TFDAutoIncField;
    SQL_MarcaNOME: TStringField;
    SQL_MarcaDATA_CADASTRO: TDateField;
    SQL_LISTA: TFDQuery;
    SQL_LISTACODIGO: TFDAutoIncField;
    SQL_LISTANOME: TStringField;
    SQL_LISTADATA_CADASTRO: TDateField;
    ds_lista: TDataSource;
    cxButton1: TcxButton;
    BtnGravar: TcxButton;
    BtnCancelar: TcxButton;
    BtnIncluir: TcxButton;
    BtnAlterar: TcxButton;
    BtnExcluir: TcxButton;
    procedure cxDBTextEdit1KeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
    procedure BtnIncluirClick(Sender: TObject);
    procedure BtnGravarClick(Sender: TObject);
    procedure BtnCancelarClick(Sender: TObject);
    procedure DBGrid1DblClick(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure cxButton1Click(Sender: TObject);
    procedure FormKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
    procedure BtnAlterarClick(Sender: TObject);
    procedure BtnExcluirClick(Sender: TObject);
    procedure DBGrid1DrawColumnCell(Sender: TObject; const Rect: TRect; DataCol: Integer; Column: TColumn;
      State: TGridDrawState);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Frm_Marca: TFrm_Marca;

implementation

{$R *.dfm}

uses u_funcoes, liberacao;

procedure TFrm_Marca.BtnAlterarClick(Sender: TObject);
begin
  with SQL_Marca do
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
  cxDBTextEdit2.SetFocus;
  cxDBTextEdit2.SelectAll;
end;

procedure TFrm_Marca.BtnCancelarClick(Sender: TObject);
begin
  SQL_Marca.Cancel;
  SQL_Marca.Close;

  BtnIncluir.visible := True;
  BtnCancelar.Enabled := False;
  BtnGravar.visible := False;
  BtnExcluir.Enabled := True;
  BtnAlterar.Enabled := True;
  BtnIncluir.SetFocus;
  SQL_LISTA.Active := False;
  SQL_LISTA.Active := True;

end;

procedure TFrm_Marca.BtnExcluirClick(Sender: TObject);
begin
  if not  TEnv.Tuser.IsAdmin then
  begin
    if TFrm_liberacao.Execute then
    begin
      with SQL_Marca do
      begin
        Close;
        ParamByName('pcodigo').Value := SQL_LISTACODIGO.Value;
        Open;
        Delete;
      end;
      Application.MessageBox('Cadastro foi excluído com sucesso.', 'Excluir', MB_ICONASTERISK + MB_OK);
      SQL_Marca.Active := False;
      SQL_LISTA.Active := False;
      SQL_LISTA.Active := True;
    end;
  end
  else
  begin
    with SQL_Marca do
    begin
      Close;
      ParamByName('pcodigo').Value := SQL_LISTACODIGO.Value;
      Open;
      Delete;
    end;
    Application.MessageBox('Cadastro foi excluído com sucesso.', 'Excluir', MB_ICONASTERISK + MB_OK);
    SQL_Marca.Active := False;
    SQL_LISTA.Active := False;
    SQL_LISTA.Active := True;
  end;
end;

procedure TFrm_Marca.BtnGravarClick(Sender: TObject);
begin
  SQL_Marca.Post;
  SQL_Marca.Active := False;

  MessageDLG('ATENÇÃO: Operação concluída com sucesso', mtInformation, [mbOk], 0);

  u_funcoes.IniciarCadastro([BtnIncluir, BtnCancelar, BtnAlterar, BtnExcluir], False);
  SQL_LISTA.Active := False;
  SQL_LISTA.Active := True;

end;

procedure TFrm_Marca.BtnIncluirClick(Sender: TObject);
begin

  SQL_Marca.Active := True;
  SQL_Marca.Insert;
  SQL_MarcaDATA_CADASTRO.Value := Date;
  BtnIncluir.visible := False;
  BtnCancelar.Enabled := True;
  BtnGravar.visible := True;
  cxDBTextEdit2.SetFocus;
  sql_increment.Active := True;
  cxDBTextEdit1.Text := inttostr(sql_incrementAUTO_INCREMENT.Value);
  SQL_LISTA.Active := True;

end;

procedure TFrm_Marca.cxButton1Click(Sender: TObject);
begin
  Close;
end;

procedure TFrm_Marca.cxDBTextEdit1KeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
begin
  if Key = vk_Return then
  begin
    cxDBTextEdit2.SetFocus;
  end;
end;

procedure TFrm_Marca.DBGrid1DblClick(Sender: TObject);
begin
  BtnIncluir.visible := False;
  BtnCancelar.Enabled := True;
  BtnGravar.visible := True;
  Close;
end;

procedure TFrm_Marca.DBGrid1DrawColumnCell(Sender: TObject; const Rect: TRect; DataCol: Integer; Column: TColumn;
  State: TGridDrawState);
begin
  GridZebrado(DBGrid1, Rect, DataCol, Column, State);
end;

procedure TFrm_Marca.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  Action := cafree;
  Self := nil;
end;

procedure TFrm_Marca.FormKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
begin
  u_funcoes.TeclasAtalho(Key, [VK_F1, VK_F2, VK_F3, VK_F4, VK_F5], [BtnIncluir, BtnGravar, BtnCancelar, BtnAlterar,
    BtnExcluir]);
end;

procedure TFrm_Marca.FormShow(Sender: TObject);
begin
  SQL_LISTA.Active := True;
  BtnIncluir.SetFocus;
end;

end.
