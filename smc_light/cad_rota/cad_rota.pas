unit cad_rota;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants,
  System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls, Vcl.DBCtrls,
  Vcl.DBGrids, Vcl.ComCtrls, cxGraphics, cxControls, cxLookAndFeels,
  cxLookAndFeelPainters, cxContainer, cxEdit, Vcl.Menus, cxMaskEdit,
  cxDropDownEdit, cxDBEdit,
  cxButtons, cxTextEdit, dxGDIPlusClasses, Vcl.ExtCtrls, FireDAC.Stan.Intf,
  FireDAC.Stan.Option, FireDAC.Stan.Param, FireDAC.Stan.Error, FireDAC.DatS,
  FireDAC.Stan.Async, FireDAC.DApt,
  cxClasses, dxSkinsForm, Data.DB, FireDAC.Comp.DataSet, FireDAC.Comp.Client,
  dxSkinsCore, dxSkinOffice2013White, dxSkinBlack, dxSkinBlue, dxSkinBlueprint,
  dxSkinCaramel, dxSkinCoffee, dxSkinDarkRoom, dxSkinDarkSide,
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
  dxSkinWhiteprint, dxSkinXmas2008Blue, FireDAC.Phys.Intf, FireDAC.DApt.Intf, Vcl.Grids,
  u_funcoes, liberacao, v_Env, h_Functions, Vcl.Mask;

type
  TFRM_cad_rota = class(TForm)
    lblCódigo: TLabel;
    lblDescrição: TLabel;
    cxDBTextEdit1: TcxDBTextEdit;
    dbgrd1: TDBGrid;
    BtnGravar: TcxButton;
    BtnCancelar: TcxButton;
    BtnIncluir: TcxButton;
    BtnAlterar: TcxButton;
    BtnExcluir: TcxButton;
    sql_increment: TFDQuery;
    sql_incrementAUTO_INCREMENT: TLargeintField;
    SQL_Rota: TFDQuery;
    SQL_RotaCODIGO: TFDAutoIncField;
    dsDS_Rota: TDataSource;
    SQL_LISTA: TFDQuery;
    SQL_LISTACODIGO: TFDAutoIncField;
    ds_lista: TDataSource;
    SQL_RotaDESCRICAO: TStringField;
    SQL_LISTADESCRICAO: TStringField;
    DBEdit1: TDBEdit;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure BtnIncluirClick(Sender: TObject);
    procedure BtnGravarClick(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure BtnAlterarClick(Sender: TObject);
    procedure BtnCancelarClick(Sender: TObject);
    procedure BtnExcluirClick(Sender: TObject);
    procedure dbgrd1DblClick(Sender: TObject);
    procedure dbgrd1DrawColumnCell(Sender: TObject; const Rect: TRect;
      DataCol: Integer; Column: TColumn; State: TGridDrawState);
    procedure InformarDadosRota(ROTA: TDBEdit);
  private
    { Private declarations }
    procedure PreencherDadosInternos;
  public
    { Public declarations }
  end;

var
  FRM_cad_rota: TFRM_cad_rota;
  m_rota: TDBEdit;

implementation

{$R *.dfm}



procedure TFRM_cad_rota.BtnAlterarClick(Sender: TObject);
begin
  with SQL_Rota do
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

procedure TFRM_cad_rota.BtnCancelarClick(Sender: TObject);
begin
  SQL_Rota.Cancel;
  SQL_Rota.Close;
  IniciarCadastro([BtnIncluir, BtnCancelar, BtnAlterar], false);
  SQL_LISTA.Active := False;
  SQL_LISTA.Active := True;
end;

procedure TFRM_cad_rota.BtnExcluirClick(Sender: TObject);
begin
 if not  TEnv.Tuser.IsAdmin then
  begin
    if TFrm_liberacao.Execute then
    begin
      with SQL_Rota do
      begin
        Close;
        ParamByName('pcodigo').Value := SQL_LISTACODIGO.Value;
        Open;
        Delete;
      end;
      Application.MessageBox('Cadastro foi excluído com sucesso.', 'Excluir', MB_ICONASTERISK + MB_OK);
      SQL_Rota.Active := False;
      SQL_LISTA.Active := False;
      SQL_LISTA.Active := True;
    end;
  end
  else
  begin
    with SQL_Rota do
    begin
      Close;
      ParamByName('pcodigo').Value := SQL_LISTACODIGO.Value;
      Open;
      Delete;
    end;
    Application.MessageBox('Cadastro foi excluído com sucesso.', 'Excluir', MB_ICONASTERISK + MB_OK);
    SQL_Rota.Active := False;
    SQL_LISTA.Active := False;
    SQL_LISTA.Active := True;
  end;
end;

procedure TFRM_cad_rota.BtnGravarClick(Sender: TObject);
begin
    if u_funcoes.CamposObrigatorios([DBEdit1], ['Descrição'], [], [], [], []) then
  begin
    Exit;
  end
  else
  begin
    SQL_Rota.Post;
    SQL_Rota.Active := False;

    MessageDLG('ATENÇÃO: Operação concluída com sucesso', mtInformation, [mbOk], 0);

    u_funcoes.IniciarCadastro([BtnIncluir, BtnCancelar, BtnAlterar, BtnExcluir], False);
    SQL_LISTA.Active := False;
    SQL_LISTA.Active := True;
  end;
end;

procedure TFRM_cad_rota.BtnIncluirClick(Sender: TObject);
begin
  SQL_Rota.Active := True;
  SQL_Rota.Insert;
  IniciarCadastro([BtnIncluir, BtnCancelar, BtnAlterar], true);
  sql_increment.Active := True;
  cxDBTextEdit1.Text := inttostr(sql_incrementAUTO_INCREMENT.Value);
  DBEdit1.SetFocus;
end;

procedure TFRM_cad_rota.dbgrd1DblClick(Sender: TObject);
begin
  BtnIncluir.visible := False;
  BtnCancelar.Enabled := True;
  BtnGravar.visible := True;
  Close;
end;

procedure TFRM_cad_rota.dbgrd1DrawColumnCell(Sender: TObject;
  const Rect: TRect; DataCol: Integer; Column: TColumn;
  State: TGridDrawState);
begin
  GridZebrado(dbgrd1, Rect, DataCol, Column, State);
end;

procedure TFRM_cad_rota.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  Action := cafree;
  self := nil;
end;

procedure TFRM_cad_rota.FormShow(Sender: TObject);
begin
  SQL_LISTA.Active := True;
end;

procedure TFRM_cad_rota.InformarDadosRota(ROTA: TDBEdit);
begin
  m_rota := ROTA;
end;

procedure TFRM_cad_rota.PreencherDadosInternos;
begin
  m_rota.Field.Text := SQL_RotaDescricao.Value;
  Close;
end;

end.

