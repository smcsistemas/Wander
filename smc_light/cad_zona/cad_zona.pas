//Verificado automaticamente em 16/06/2020 09:27
unit cad_zona;

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
  TFRM_cad_zona = class(TForm)
    lblCódigo: TLabel;
    lblDescrição: TLabel;
    db_codigo: TcxDBTextEdit;
    dbgrd1: TDBGrid;
    BtnGravar: TcxButton;
    BtnCancelar: TcxButton;
    BtnIncluir: TcxButton;
    BtnAlterar: TcxButton;
    BtnExcluir: TcxButton;
    sql_increment: TFDQuery;
    sql_incrementAUTO_INCREMENT: TLargeintField;
    SQL_Zona: TFDQuery;
    SQL_ZonaCODIGO: TFDAutoIncField;
    dsDS_Zona: TDataSource;
    SQL_LISTA: TFDQuery;
    SQL_LISTACODIGO: TFDAutoIncField;
    ds_lista: TDataSource;
    SQL_ZonaDESCRICAO: TStringField;
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
    procedure InformarDadosZona(ZONA: TDBEdit);
  private
    { Private declarations }
    procedure PreencherDadosInternos;
  public
    { Public declarations }
  end;

var
  FRM_cad_zona: TFRM_cad_zona;
  m_zona: TDBEdit;

implementation

{$R *.dfm}



procedure TFRM_cad_zona.BtnAlterarClick(Sender: TObject);
begin
  with SQL_Zona do
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

procedure TFRM_cad_zona.BtnCancelarClick(Sender: TObject);
begin
  SQL_Zona.Cancel;
  SQL_Zona.Close;
  IniciarCadastro([BtnIncluir, BtnCancelar, BtnAlterar], false);
  SQL_LISTA.Active := False;
  SQL_LISTA.Active := True;
end;

procedure TFRM_cad_zona.BtnExcluirClick(Sender: TObject);
begin
 if not  TEnv.Tuser.IsAdmin then
  begin
    if TFrm_liberacao.Execute then
    begin
      with SQL_Zona do
      begin
        Close;
        ParamByName('pcodigo').Value := SQL_LISTACODIGO.Value;
        Open;
        Delete;
      end;
      Application.MessageBox('Cadastro foi excluído com sucesso.', 'Excluir', MB_ICONASTERISK + MB_OK);
      SQL_Zona.Active := False;
      SQL_LISTA.Active := False;
      SQL_LISTA.Active := True;
    end;
  end
  else
  begin
    with SQL_Zona do
    begin
      Close;
      ParamByName('pcodigo').Value := SQL_LISTACODIGO.Value;
      Open;
      Delete;
    end;
    Application.MessageBox('Cadastro foi excluído com sucesso.', 'Excluir', MB_ICONASTERISK + MB_OK);
    SQL_Zona.Active := False;
    SQL_LISTA.Active := False;
    SQL_LISTA.Active := True;
  end;
end;

procedure TFRM_cad_zona.BtnGravarClick(Sender: TObject);
begin
    if u_funcoes.CamposObrigatorios([DBEdit1], ['Descrição'], [], [], [], []) then
  begin
    Exit;
  end
  else
  begin
    SQL_Zona.Post;
    SQL_Zona.Active := False;

    MessageDLG('ATENÇÃO: Operação concluída com sucesso', mtInformation, [mbOk], 0);

    u_funcoes.IniciarCadastro([BtnIncluir, BtnCancelar, BtnAlterar, BtnExcluir], False);
    SQL_LISTA.Active := False;
    SQL_LISTA.Active := True;
  end;
end;

procedure TFRM_cad_zona.BtnIncluirClick(Sender: TObject);
begin
  SQL_Zona.Active := True;
  SQL_Zona.Insert;
  IniciarCadastro([BtnIncluir, BtnCancelar, BtnAlterar], true);
  sql_increment.Active := True;
  db_codigo.Text := inttostr(sql_incrementAUTO_INCREMENT.Value);
  DBEdit1.SetFocus;
end;

procedure TFRM_cad_zona.dbgrd1DblClick(Sender: TObject);
begin
  BtnIncluir.visible := False;
  BtnCancelar.Enabled := True;
  BtnGravar.visible := True;
  Close;
end;

procedure TFRM_cad_zona.dbgrd1DrawColumnCell(Sender: TObject;
  const Rect: TRect; DataCol: Integer; Column: TColumn;
  State: TGridDrawState);
begin
  GridZebrado(dbgrd1, Rect, DataCol, Column, State);
end;

procedure TFRM_cad_zona.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  Action := cafree;
  self := nil;
end;

procedure TFRM_cad_zona.FormShow(Sender: TObject);
begin
  SQL_LISTA.Active := True;
end;

procedure TFRM_cad_zona.InformarDadosZona(ZONA: TDBEdit);
begin
  m_zona := ZONA;
end;

procedure TFRM_cad_zona.PreencherDadosInternos;
begin
  m_zona.Field.Text := SQL_ZonaDescricao.Value;
  Close;
end;

end.

