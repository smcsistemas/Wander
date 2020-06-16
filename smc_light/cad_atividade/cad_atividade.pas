//Verificado automaticamente em 16/06/2020 09:27
unit cad_atividade;

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
  u_funcoes, liberacao, v_Env, h_Functions, Vcl.Mask, dxSkinscxPCPainter,
  dxBarBuiltInMenu, cxStyles, cxCustomData, cxFilter, cxData, cxDataStorage,
  cxNavigator, cxDBData, cxGridLevel, cxGridCustomTableView, cxGridTableView,
  cxGridDBTableView, cxGridCustomView, cxGrid, cxPC, cxCheckBox;

type
  TFRM_cad_atividade = class(TForm)
    sql_increment: TFDQuery;
    SQL_Ramo: TFDQuery;
    dsDS_Ramo: TDataSource;
    SQL_LISTA: TFDQuery;
    ds_lista: TDataSource;
    BtnAlterar: TcxButton;
    BtnCancelar: TcxButton;
    DESCRICAO: TDBEdit;
    lblDescri��o: TLabel;
    lblC�digo: TLabel;
    Label1: TLabel;
    edt_consulta: TEdit;
    dbgrd1: TDBGrid;
    BtnGravar: TcxButton;
    cxGrid4: TcxGrid;
    cxGridDBTableView3: TcxGridDBTableView;
    cxGridDBTableView3Column11: TcxGridDBColumn;
    cxGridDBTableView3Column1: TcxGridDBColumn;
    cxGridDBTableView3Column2: TcxGridDBColumn;
    cxGridLevel3: TcxGridLevel;
    codigo: TcxDBTextEdit;
    BtnIncluir: TcxButton;
    SQL_RamoCODIGO: TFDAutoIncField;
    SQL_RamoDESCRICAO: TStringField;
    SQL_LISTACODIGO: TFDAutoIncField;
    SQL_LISTADESCRICAO: TStringField;
    sql_incrementAUTO_INCREMENT: TLargeintField;
    SQL_RamoSTATUS: TStringField;
    chk_ativo_cadastro: TcxCheckBox;
    dbgrd2: TDBGrid;
    SQL_LISTASTATUS: TStringField;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure BtnIncluirClick(Sender: TObject);
    procedure CarregarDadosInternos;
    procedure BtnGravarClick(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure BtnAlterarClick(Sender: TObject);
    procedure BtnCancelarClick(Sender: TObject);
    procedure BtnExcluirClick(Sender: TObject);
    procedure dbgrd1DblClick(Sender: TObject);
    procedure dbgrd1DrawColumnCell(Sender: TObject; const Rect: TRect;
      DataCol: Integer; Column: TColumn; State: TGridDrawState);
    procedure InformarDadosAtividade(ATIVIDADE: TDBEdit);
    procedure cxGridDBTableView1CellDblClick(Sender: TcxCustomGridTableView;
      ACellViewInfo: TcxGridTableDataCellViewInfo; AButton: TMouseButton;
      AShift: TShiftState; var AHandled: Boolean);
    procedure cxGridDBTableView1CustomDrawCell(Sender: TcxCustomGridTableView;
      ACanvas: TcxCanvas; AViewInfo: TcxGridTableDataCellViewInfo;
      var ADone: Boolean);
    procedure cxGridDBTableView1DblClick(Sender: TObject);
    procedure tabConsultaShow(Sender: TObject);
    procedure tabCadastroShow(Sender: TObject);
    procedure dlConsulta(check_edit: Boolean = true);
    procedure FormCreate(Sender: TObject);
    procedure Edt_ConsultaKeyUp(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure dbgrd1CellClick(Column: TColumn);
   procedure CarregarUltimoCadastro;
    procedure cxGridDBTableView3CellDblClick(Sender: TcxCustomGridTableView;
      ACellViewInfo: TcxGridTableDataCellViewInfo; AButton: TMouseButton;
      AShift: TShiftState; var AHandled: Boolean);
    procedure cxGridDBTableView3CustomDrawCell(Sender: TcxCustomGridTableView;
      ACanvas: TcxCanvas; AViewInfo: TcxGridTableDataCellViewInfo;
      var ADone: Boolean);
    procedure cxGridDBTableView3DblClick(Sender: TObject);
    procedure DESCRICAOKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure dbgrd2DrawColumnCell(Sender: TObject; const Rect: TRect;
      DataCol: Integer; Column: TColumn; State: TGridDrawState);
    procedure dbgrd2DblClick(Sender: TObject);
  private
    { Private declarations }
    procedure PreencherDadosInternos;
  public
    { Public declarations }
  end;

var
  FRM_cad_atividade: TFRM_cad_atividade;
  m_atividade: TDBEdit;
  vFRM_cad_atividade_Consultando:Boolean;
  vRAMOcodigo:Integer;
implementation

{$R *.dfm}



procedure TFRM_cad_atividade.BtnAlterarClick(Sender: TObject);
begin
  with SQL_Ramo do
  begin
    Close;
    ParamByName('pcodigo').Value := SQL_LISTACODIGO.Value;
    Open;
    Edit;
  end;
  u_funcoes.AlterarEnabled([DESCRICAO], True);
  u_funcoes.IniciarCadastro([BtnIncluir, BtnCancelar, BtnAlterar], True);
  DESCRICAO.Enabled := True;
  end;

procedure TFRM_cad_atividade.BtnCancelarClick(Sender: TObject);
begin
  SQL_Ramo.Cancel;
  SQL_Ramo.Close;

  u_funcoes.CamposObrigatorios_CorPadrao([DESCRICAO], [], []);
  u_funcoes.AlterarEnabled([DESCRICAO], False);
  u_funcoes.IniciarCadastro([BtnIncluir, BtnCancelar, BtnAlterar, BtnGravar], False);


  BtnIncluir.SetFocus;
  DESCRICAO.Enabled := False;
  SQL_LISTA.Active := False;
  SQL_LISTA.Active := True;
end;

procedure TFRM_cad_atividade.BtnExcluirClick(Sender: TObject);
begin
 if not  TEnv.Tuser.IsAdmin then
  begin
    if TFrm_liberacao.Execute then
    begin
      with SQL_Ramo do
      begin
        Close;
        ParamByName('pcodigo').Value := SQL_LISTACODIGO.Value;
        Open;
        Delete;
      end;
      Application.MessageBox('Cadastro foi exclu�do com sucesso.', 'Excluir', MB_ICONASTERISK + MB_OK);
      SQL_Ramo.Active := False;
      SQL_LISTA.Active := False;
      SQL_LISTA.Active := True;
    end;
  end
  else
  begin
    with SQL_Ramo do
    begin
      Close;
      ParamByName('pcodigo').Value := SQL_LISTACODIGO.Value;
      Open;
      Delete;
    end;
    Application.MessageBox('Cadastro foi exclu�do com sucesso.', 'Excluir', MB_ICONASTERISK + MB_OK);
    SQL_Ramo.Active := False;
    SQL_LISTA.Active := False;
    SQL_LISTA.Active := True;
  end;
end;

procedure TFRM_cad_atividade.BtnGravarClick(Sender: TObject);
begin
  if u_funcoes.CamposObrigatorios([DESCRICAO], ['Descri��o'], [], [], [], []) then
  begin
    Exit;
  end
  else
  begin

      if chk_ativo_cadastro.Checked = false then
        SQL_RAMOSTATUS.Value := 'ATIVO'
      else if chk_ativo_cadastro.Checked = true then
        SQL_RAMOSTATUS.Value := 'INATIVO';


     SQL_Ramo.Post;
    SQL_Ramo.Active := False;

    MessageDLG('ATEN��O: Opera��o conclu�da com sucesso', mtInformation, [mbOk], 0);

    u_funcoes.IniciarCadastro([BtnIncluir, BtnCancelar, BtnAlterar], False);
    DESCRICAO.Enabled := False;
    SQL_LISTA.Active := False;
    SQL_LISTA.Active := True;
  end;
end;

procedure TFRM_cad_atividade.BtnIncluirClick(Sender: TObject);
begin
//  SQL_Ramo.Active := True;
//  SQL_Ramo.Insert;
//  u_funcoes.IniciarCadastro([BtnIncluir, BtnCancelar, BtnAlterar], True);
//  DESCRICAO.Enabled := True;
//  sql_increment.Active := True;
//
//   if BtnIncluir.Visible = true then
//  begin
//  u_funcoes.AlterarEnabled([DESCRICAO], true);
//  u_funcoes.IniciarCadastro([BtnIncluir, BtnCancelar, BtnAlterar], True);
//  SQL_Ramo.Active := True;
//  SQL_Ramo.Insert;
//  if SQL_INCREMENTauto_increment.Value = 0 then
//      codigo.Text := '1'
//    else
//      codigo.Text := inttostr(SQL_INCREMENTauto_increment.Value);
//  DESCRICAO.SetFocus;

  SQL_RAMO.Active := True;
  SQL_RAMO.Insert;
  u_funcoes.AlterarEnabled([descricao], True);
  u_funcoes.IniciarCadastro([BtnIncluir, BtnCancelar, BtnAlterar], True);
  sql_increment.Active := True;
  codigo.Text := inttostr(sql_incrementAUTO_INCREMENT.Value);
  descricao.SetFocus;
end;

procedure TFRM_cad_atividade.cxGridDBTableView1CellDblClick(
  Sender: TcxCustomGridTableView; ACellViewInfo: TcxGridTableDataCellViewInfo;
  AButton: TMouseButton; AShift: TShiftState; var AHandled: Boolean);
begin
  with SQL_Ramo do
  begin
    Close;
    ParamByName('pcodigo').Value := inttostr(sql_LISTAcodigo.Value);
    Open;
  end;
  CarregarDadosInternos;
end;


  procedure TFRM_cad_atividade.cxGridDBTableView1CustomDrawCell(
  Sender: TcxCustomGridTableView; ACanvas: TcxCanvas;
  AViewInfo: TcxGridTableDataCellViewInfo; var ADone: Boolean);
begin

  TFunctions.stripedGrid(ACanvas, AViewInfo);
end;

procedure TFRM_cad_atividade.cxGridDBTableView1DblClick(Sender: TObject);
begin
//   tabCadastro.Show;
//   BtnIncluir.Visible := false;
end;

procedure TFRM_cad_atividade.cxGridDBTableView3CellDblClick(
  Sender: TcxCustomGridTableView; ACellViewInfo: TcxGridTableDataCellViewInfo;
  AButton: TMouseButton; AShift: TShiftState; var AHandled: Boolean);
begin

  with SQL_RAMO do
  begin
    Close;
    ParamByName('pcodigo').Value := inttostr(SQL_RAMOcodigo.Value);
    Open;
  end;
  CarregarDadosInternos;

end;

procedure TFRM_cad_atividade.cxGridDBTableView3CustomDrawCell(
  Sender: TcxCustomGridTableView; ACanvas: TcxCanvas;
  AViewInfo: TcxGridTableDataCellViewInfo; var ADone: Boolean);
begin

  TFunctions.stripedGrid(ACanvas, AViewInfo);
end;

procedure TFRM_cad_atividade.cxGridDBTableView3DblClick(Sender: TObject);
begin

   BtnIncluir.Visible := false;
end;

procedure TFRM_cad_atividade.CarregarDadosInternos;
begin

 //   DBCk_Inativo.Checked := (SQL_RAMOSTATUS.Value = 'INATIVO');
   SQL_RAMO.active := true;
  if SQL_RAMOSTATUS.Value = 'INATIVO' then
    chk_ativo_cadastro.Checked := true
  else if SQL_RAMOSTATUS.Value = 'ATIVO' then
    chk_ativo_cadastro.Checked := false;


    u_funcoes.CamposObrigatorios_CorPadrao([DESCRICAO], []);

  u_funcoes.AlterarEnabled([DESCRICAO], False);

  u_funcoes.IniciarCadastro([BtnIncluir, BtnCancelar, BtnAlterar], False);
end;



procedure TFRM_cad_atividade.dbgrd1CellClick(Column: TColumn);
begin
//  BtnIncluir.visible := False;
//  BtnCancelar.Enabled := True;
//  BtnGravar.visible := True;
//  Close;
  if vFRM_cad_atividade_Consultando then
  begin
     vRAMOcodigo := SQL_LISTACODIGO.Value;
     Close;
  end;

  with SQL_RAMO do
  begin
    Close;
    ParamByName('pcodigo').Value := inttostr(SQL_RAMOcodigo.Value);
    Open;
  end;
 CarregarUltimoCadastro;
 BtnAlterar.Click;
end;

procedure TFRM_cad_atividade.dbgrd1DblClick(Sender: TObject);
begin
     BtnIncluir.Visible := false;
     SQL_RAMO.Active := true;
end;

procedure TFRM_cad_atividade.dbgrd1DrawColumnCell(Sender: TObject;
  const Rect: TRect; DataCol: Integer; Column: TColumn;
  State: TGridDrawState);
begin
  GridZebrado(dbgrd1, Rect, DataCol, Column, State);
end;

procedure TFRM_cad_atividade.dbgrd2DblClick(Sender: TObject);
begin
  BtnIncluir.visible := False;
  BtnCancelar.Enabled := True;
  BtnGravar.visible := True;
  Close;
end;

procedure TFRM_cad_atividade.dbgrd2DrawColumnCell(Sender: TObject;
  const Rect: TRect; DataCol: Integer; Column: TColumn; State: TGridDrawState);
begin
  GridZebrado(dbgrd1, Rect, DataCol, Column, State);
end;

procedure TFRM_cad_atividade.DESCRICAOKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
if (Key = VK_RETURN) or (Key = VK_TAB) then
  begin
    btnGravar.SetFocus;
  end;
end;

procedure TFRM_cad_atividade.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  Action := cafree;
  self := nil;
end;

procedure TFRM_cad_atividade.FormCreate(Sender: TObject);
begin
   vFRM_cad_atividade_Consultando:=False;
   vRAMOcodigo := -1;
   SQL_LISTA.Active := True;
end;

procedure TFRM_cad_atividade.FormShow(Sender: TObject);
begin

  CarregarUltimoCadastro;
  CarregarDadosInternos;

//  SQL_LISTA.Active := True;
//  u_funcoes.AlterarEnabled([descricao,  DBCk_Inativo], False);
//
//  u_funcoes.IniciarCadastro([BtnIncluir, BtnCancelar, BtnAlterar], False);
end;

procedure TFRM_cad_atividade.CarregarUltimoCadastro;
begin
  SQL_INCREMENT.Close;
  SQL_INCREMENT.Open;
  with SQL_RAMO do
  begin
    Close;
     ParamByName('pcodigo').Value := inttostr(SQL_INCREMENTauto_increment.Value - 1);
    Open;
  end;
end;


procedure TFRM_cad_atividade.InformarDadosAtividade(ATIVIDADE: TDBEdit);
begin
  m_atividade := ATIVIDADE;
end;

procedure TFRM_cad_atividade.PreencherDadosInternos;
begin
  m_atividade.Field.Text := SQL_RamoDescricao.Value;
  Close;
end;

procedure TFRM_cad_atividade.tabCadastroShow(Sender: TObject);
begin
  SQL_RAMO.Active := true;
end;

procedure TFRM_cad_atividade.tabConsultaShow(Sender: TObject);
begin
  SQL_LISTA.Active := False;
  SQL_LISTA.Active := true;
  SQL_RAMO.Active := true;
  edt_consulta.SetFocus;
end;

procedure TFRM_cad_atividade.dlConsulta(check_edit: Boolean = true);
const
  qry_base = 'select * from ramo_atividade';
var
  condicao: string;
begin
  SQL_LISTA.Close;
  begin
    if Edt_Consulta.Text <> emptystr then
    begin
          condicao := ' where  DESCRICAO like "' + Edt_Consulta.Text + '%"';
      end;
    end;
  SQL_LISTA.Open(qry_base + condicao);
end;


procedure TFRM_cad_atividade.Edt_ConsultaKeyUp(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
dlConsulta
end;

end.



