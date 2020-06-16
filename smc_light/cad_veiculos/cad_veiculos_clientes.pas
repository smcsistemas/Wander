//Verificado automaticamente em 16/06/2020 09:27
unit cad_veiculos_clientes;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, cxGraphics, cxControls, cxLookAndFeels,
  cxLookAndFeelPainters, dxSkinsCore, dxSkinscxPCPainter, dxBarBuiltInMenu,
  cxStyles, cxCustomData, cxFilter, cxData, cxDataStorage, cxEdit, cxNavigator,
  Data.DB, cxDBData, Vcl.Menus, cxContainer, FireDAC.Stan.Intf,
  FireDAC.Stan.Option, FireDAC.Stan.Param, FireDAC.Stan.Error, FireDAC.DatS,
  FireDAC.Phys.Intf, FireDAC.DApt.Intf, FireDAC.Stan.Async, FireDAC.DApt,
  FireDAC.Comp.DataSet, FireDAC.Comp.Client, Vcl.StdCtrls, cxTextEdit,
  cxMaskEdit, cxDropDownEdit, cxButtons, cxGridLevel, cxGridCustomTableView,
  cxGridTableView, cxGridDBTableView, cxClasses, cxGridCustomView, cxGrid,
  Vcl.ExtCtrls, cxPC, cxDBEdit, Vcl.Mask, Vcl.DBCtrls, cxGroupBox, dxSkinBlack,
  dxSkinBlue, dxSkinBlueprint, dxSkinCaramel, dxSkinCoffee, dxSkinDarkRoom,
  dxSkinDarkSide, dxSkinDevExpressDarkStyle, dxSkinDevExpressStyle, dxSkinFoggy,
  dxSkinGlassOceans, dxSkinHighContrast, dxSkiniMaginary, dxSkinLilian,
  dxSkinLiquidSky, dxSkinLondonLiquidSky, dxSkinMcSkin, dxSkinMetropolis,
  dxSkinMetropolisDark, dxSkinMoneyTwins, dxSkinOffice2007Black,
  dxSkinOffice2007Blue, dxSkinOffice2007Green, dxSkinOffice2007Pink,
  dxSkinOffice2007Silver, dxSkinOffice2010Black, dxSkinOffice2010Blue,
  dxSkinOffice2010Silver, dxSkinOffice2013DarkGray, dxSkinOffice2013LightGray,
  dxSkinOffice2013White, dxSkinOffice2016Colorful, dxSkinOffice2016Dark,
  dxSkinPumpkin, dxSkinSeven, dxSkinSevenClassic, dxSkinSharp, dxSkinSharpPlus,
  dxSkinSilver, dxSkinSpringTime, dxSkinStardust, dxSkinSummer2008,
  dxSkinTheAsphaltWorld, dxSkinsDefaultPainters, dxSkinValentine,
  dxSkinVisualStudio2013Blue, dxSkinVisualStudio2013Dark,
  dxSkinVisualStudio2013Light, dxSkinVS2010, dxSkinWhiteprint,
  dxSkinXmas2008Blue;

type
  Tfrm_cad_viculo_clientes = class(TForm)
    Cadastro: TcxPageControl;
    cxTabSheet1: TcxTabSheet;
    Label7: TLabel;
    gdConveniados: TcxGrid;
    gdConveniadosTbVw: TcxGridDBTableView;
    clid: TcxGridDBColumn;
    clPlaca: TcxGridDBColumn;
    clChassi: TcxGridDBColumn;
    clModelo: TcxGridDBColumn;
    clCor: TcxGridDBColumn;
    clAnoFabri: TcxGridDBColumn;
    clAnoModelo: TcxGridDBColumn;
    clCombust: TcxGridDBColumn;
    gdConveniadosLv: TcxGridLevel;
    edt_consulta: TEdit;
    cxButton2: TcxButton;
    tabcadastro: TcxTabSheet;
    Label4: TLabel;
    BtnGravar: TcxButton;
    BtnIncluir: TcxButton;
    BtnCancelar: TcxButton;
    BtnAlterar: TcxButton;
    gp_cor: TGroupBox;
    Label2: TLabel;
    Label9: TLabel;
    SQL_veiculos: TFDQuery;
    DT_VEICULOS: TDataSource;
    SQL_LISTA: TFDQuery;
    DT_LISTA: TDataSource;
    sql_increment: TFDQuery;
    dt_increment: TDataSource;
    db_fabricante: TDBEdit;
    db_descricao: TDBEdit;
    sql_incrementAUTO_INCREMENT: TLargeintField;
    gp_inf: TcxGroupBox;
    Label1: TLabel;
    db_chassi: TDBEdit;
    lbl3: TLabel;
    db_plca: TDBEdit;
    codigo: TcxDBTextEdit;
    lbl2: TLabel;
    db_desc: TDBEdit;
    lbl4: TLabel;
    lbl1: TLabel;
    db_marca: TDBEdit;
    db_uf: TDBEdit;
    lbl5: TLabel;
    db_renavam: TDBEdit;
    gp_fabrica: TGroupBox;
    Label6: TLabel;
    db_ano: TDBEdit;
    Label5: TLabel;
    db_modelo: TDBEdit;
    SQL_veiculosCODIGO: TFDAutoIncField;
    SQL_veiculosCOD_CLIENTE: TIntegerField;
    SQL_veiculosCLIENTE_NOME: TStringField;
    SQL_veiculosDESCRICAO: TStringField;
    SQL_veiculosPLACA: TStringField;
    SQL_veiculosUF: TStringField;
    SQL_veiculosRENAVAM: TStringField;
    SQL_veiculosCHASSI: TStringField;
    SQL_veiculosMARCA: TStringField;
    SQL_veiculosVEICULO_NOVO: TStringField;
    SQL_veiculosCOR_FABRICA: TStringField;
    SQL_veiculosCOR_DESCRICAO: TStringField;
    SQL_veiculosANO: TStringField;
    SQL_veiculosCOMBUSTIVEL: TStringField;
    SQL_veiculosMODELO: TStringField;
    SQL_LISTACODIGO: TFDAutoIncField;
    SQL_LISTACOD_CLIENTE: TIntegerField;
    SQL_LISTACLIENTE_NOME: TStringField;
    SQL_LISTADESCRICAO: TStringField;
    SQL_LISTAPLACA: TStringField;
    SQL_LISTAUF: TStringField;
    SQL_LISTARENAVAM: TStringField;
    SQL_LISTACHASSI: TStringField;
    SQL_LISTAMARCA: TStringField;
    SQL_LISTAVEICULO_NOVO: TStringField;
    SQL_LISTACOR_FABRICA: TStringField;
    SQL_LISTACOR_DESCRICAO: TStringField;
    SQL_LISTAANO: TStringField;
    SQL_LISTAMODELO: TStringField;
    SQL_LISTACOMBUSTIVEL: TStringField;
    cbFiltro: TcxComboBox;
    CB_COMBUSTIVEL: TcxDBComboBox;
    procedure BtnIncluirClick(Sender: TObject);
    procedure BtnGravarClick(Sender: TObject);
    procedure BtnCancelarClick(Sender: TObject);
    procedure BtnAlterarClick(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormCreate(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure CarregarDadosInternos;
    procedure CarregarUltimoCadastro;
    procedure btn_clienteClick(Sender: TObject);
    procedure db_fabricanteKeyPress(Sender: TObject; var Key: Char);
    procedure db_anoKeyPress(Sender: TObject; var Key: Char);
    procedure db_ufKeyPress(Sender: TObject; var Key: Char);
    procedure db_descKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure db_plcaKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure db_ufKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
    procedure db_renavamKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure db_chassiKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure db_fabricanteKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure db_anoKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure db_descricaoKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure db_modeloKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure db_renavamKeyPress(Sender: TObject; var Key: Char);
    procedure gdConveniadosTbVwCellDblClick(Sender: TcxCustomGridTableView;
      ACellViewInfo: TcxGridTableDataCellViewInfo; AButton: TMouseButton;
      AShift: TShiftState; var AHandled: Boolean);
    procedure gdConveniadosTbVwCustomDrawCell(Sender: TcxCustomGridTableView;
      ACanvas: TcxCanvas; AViewInfo: TcxGridTableDataCellViewInfo;
      var ADone: Boolean);
    procedure gdConveniadosTbVwDblClick(Sender: TObject);
    procedure cxTabSheet1Show(Sender: TObject);
    procedure edt_consultaKeyUp(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure dlConsulta(check_edit: Boolean = true);

  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frm_cad_viculo_clientes: Tfrm_cad_viculo_clientes;

implementation

uses
  S_Module, u_funcoes, consulta_clientes, h_Functions;

{$R *.dfm}

procedure Tfrm_cad_viculo_clientes.BtnAlterarClick(Sender: TObject);
begin
begin
    if db_desc.Text = '' then
  begin
    wnAlerta('Alterar', 'Nenhum Ve�culo foi selecionado.');
  end
  else
  begin
    tabcadastro.show;
    SQL_veiculos.Active := False;
    SQL_veiculos.Active := true;
    SQL_veiculos.Edit;

  u_funcoes.AlterarEnabled([gp_inf, gp_cor, gp_fabrica, CB_COMBUSTIVEL], true);
  u_funcoes.IniciarCadastro([BtnIncluir, BtnCancelar, BtnAlterar], true);
    db_desc.SelectAll;
    db_desc.SetFocus;
  end;
end;
end;

procedure Tfrm_cad_viculo_clientes.BtnCancelarClick(Sender: TObject);
begin
  SQL_veiculos.Cancel;
  SQL_veiculos.Close;

  u_funcoes.AlterarEnabled([gp_inf, gp_cor, gp_fabrica, CB_COMBUSTIVEL], False);
  u_funcoes.IniciarCadastro([BtnIncluir, BtnCancelar, BtnAlterar, BtnGravar], False);
  BtnIncluir.SetFocus;
  SQL_LISTA.Active := False;
  SQL_LISTA.Active := True;
end;

procedure Tfrm_cad_viculo_clientes.BtnGravarClick(Sender: TObject);
begin
//  if u_funcoes.CamposObrigatorios([db_cliente], ['Descri��o'], [], [], [], []) then
//  begin
//    Exit;
//  end
//  else
  begin


     SQL_veiculos.Post;
    SQL_veiculos.Active := False;

    MessageDLG('ATEN��O: Opera��o conclu�da com sucesso', mtInformation, [mbOk], 0);
    u_funcoes.AlterarEnabled([gp_inf, gp_cor, gp_fabrica, CB_COMBUSTIVEL], False);
    u_funcoes.IniciarCadastro([BtnIncluir, BtnCancelar, BtnAlterar], False);
    SQL_LISTA.Active := False;
    SQL_LISTA.Active := True;
      CarregarUltimoCadastro;
  end;
end;

procedure Tfrm_cad_viculo_clientes.BtnIncluirClick(Sender: TObject);
begin

  SQL_veiculos.Active := True;
  SQL_veiculos.Insert;
  u_funcoes.AlterarEnabled([gp_inf, gp_cor, gp_fabrica, CB_COMBUSTIVEL], True);
  u_funcoes.IniciarCadastro([BtnIncluir, BtnCancelar, BtnAlterar], True);
  sql_increment.Active := True;
  if SQL_INCREMENTauto_increment.Value = 0 then
      CODIGO.Text := '1'
    else
      CODIGO.Text := inttostr(SQL_INCREMENTauto_increment.Value);
end;


procedure Tfrm_cad_viculo_clientes.btn_clienteClick(Sender: TObject);
begin
frm_cliente_geral:= Tfrm_cliente_geral.Create(nil);
frm_cliente_geral.ShowModal;
end;

procedure Tfrm_cad_viculo_clientes.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  Action := cafree;
  self := nil;
end;

procedure Tfrm_cad_viculo_clientes.FormCreate(Sender: TObject);
begin
 SQL_LISTA.Active := True;
end;

procedure Tfrm_cad_viculo_clientes.FormShow(Sender: TObject);
begin

  CarregarUltimoCadastro;
  CarregarDadosInternos;
end;

procedure Tfrm_cad_viculo_clientes.gdConveniadosTbVwCellDblClick(
  Sender: TcxCustomGridTableView; ACellViewInfo: TcxGridTableDataCellViewInfo;
  AButton: TMouseButton; AShift: TShiftState; var AHandled: Boolean);
begin

  with SQL_veiculos do
  begin
    Close;
    ParamByName('pcodigo').Value := inttostr(sql_LISTAcodigo.Value);
    Open;
  end;
  CarregarDadosInternos;
end;

procedure Tfrm_cad_viculo_clientes.gdConveniadosTbVwCustomDrawCell(
  Sender: TcxCustomGridTableView; ACanvas: TcxCanvas;
  AViewInfo: TcxGridTableDataCellViewInfo; var ADone: Boolean);
begin

  TFunctions.stripedGrid(ACanvas, AViewInfo);
end;

procedure Tfrm_cad_viculo_clientes.gdConveniadosTbVwDblClick(Sender: TObject);
begin
   tabcadastro.Show;
   BtnIncluir.Visible := false;
end;

procedure Tfrm_cad_viculo_clientes.CarregarDadosInternos;
begin

  u_funcoes.AlterarEnabled([gp_inf, gp_cor, gp_fabrica, CB_COMBUSTIVEL], False);

  u_funcoes.IniciarCadastro([BtnIncluir, BtnCancelar, BtnAlterar], False);
end;

procedure Tfrm_cad_viculo_clientes.CarregarUltimoCadastro;
begin
  SQL_INCREMENT.Close;
  SQL_INCREMENT.Open;
  with SQL_veiculos do
  begin
    Close;
     ParamByName('pcodigo').Value := inttostr(SQL_INCREMENTauto_increment.Value - 1);
    Open;
  end;
end;


procedure Tfrm_cad_viculo_clientes.cxTabSheet1Show(Sender: TObject);
begin
  sql_LISTA.Active := False;
  sql_LISTA.Active := true;
  SQL_veiculos.Active := true;
  edt_consulta.SetFocus;
end;

procedure Tfrm_cad_viculo_clientes.db_anoKeyDown(Sender: TObject;
  var Key: Word; Shift: TShiftState);
begin
if (Key = VK_RETURN) or (Key = VK_TAB) then
  begin
    db_modelo.SetFocus;
  end;
end;

procedure Tfrm_cad_viculo_clientes.db_anoKeyPress(Sender: TObject;
  var Key: Char);
begin
  Key := u_funcoes.ApenasNumeros(Key);
end;

procedure Tfrm_cad_viculo_clientes.db_chassiKeyDown(Sender: TObject;
  var Key: Word; Shift: TShiftState);
begin
if (Key = VK_RETURN) or (Key = VK_TAB) then
  begin
    db_marca.SetFocus;
  end;
end;

procedure Tfrm_cad_viculo_clientes.db_descKeyDown(Sender: TObject;
  var Key: Word; Shift: TShiftState);
begin
if (Key = VK_RETURN) or (Key = VK_TAB) then
  begin
    db_plca.SetFocus;
  end;
end;

procedure Tfrm_cad_viculo_clientes.db_descricaoKeyDown(Sender: TObject;
  var Key: Word; Shift: TShiftState);
begin
if (Key = VK_RETURN) or (Key = VK_TAB) then
  begin
    db_ano.SetFocus;
  end;
end;

procedure Tfrm_cad_viculo_clientes.db_fabricanteKeyDown(Sender: TObject;
  var Key: Word; Shift: TShiftState);
begin
if (Key = VK_RETURN) or (Key = VK_TAB) then
  begin
    db_descricao.SetFocus;
  end;
end;

procedure Tfrm_cad_viculo_clientes.db_fabricanteKeyPress(Sender: TObject;
  var Key: Char);
begin
  Key := u_funcoes.ApenasNumeros(Key);
end;


procedure Tfrm_cad_viculo_clientes.db_modeloKeyDown(Sender: TObject;
  var Key: Word; Shift: TShiftState);
begin
if (Key = VK_RETURN) or (Key = VK_TAB) then
  begin
    CB_COMBUSTIVEL.SetFocus;
  end;
end;

procedure Tfrm_cad_viculo_clientes.db_plcaKeyDown(Sender: TObject;
  var Key: Word; Shift: TShiftState);
begin
if (Key = VK_RETURN) or (Key = VK_TAB) then
  begin
    db_uf.SetFocus;
  end;
end;

procedure Tfrm_cad_viculo_clientes.db_renavamKeyDown(Sender: TObject;
  var Key: Word; Shift: TShiftState);
begin
if (Key = VK_RETURN) or (Key = VK_TAB) then
  begin
    db_chassi.SetFocus;
  end;
end;

procedure Tfrm_cad_viculo_clientes.db_renavamKeyPress(Sender: TObject;
  var Key: Char);
begin
  Key := u_funcoes.ApenasNumeros(Key);
end;

procedure Tfrm_cad_viculo_clientes.db_ufKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
if (Key = VK_RETURN) or (Key = VK_TAB) then
  begin
    db_renavam.SetFocus;
  end;
end;

procedure Tfrm_cad_viculo_clientes.db_ufKeyPress(Sender: TObject;
  var Key: Char);
begin
  Key := u_funcoes.ApenasLetras(Key);
end;

procedure Tfrm_cad_viculo_clientes.edt_consultaKeyUp(Sender: TObject;
  var Key: Word; Shift: TShiftState);
begin
  dlConsulta;
end;



procedure Tfrm_cad_viculo_clientes.dlConsulta(check_edit: Boolean = true);
const
  qry_base = 'select * from cliente_veiculo';
var
   condicao: string;
begin
  SQL_LISTA.Close;
  cbFiltro.ValidateEdit(False);
  if check_edit then
  begin
    if edt_consulta.Text <> emptystr then
    begin
      case cbFiltro.SelectedItem of
        0:
          condicao := ' where  CLIENTE_NOME like "' + edt_consulta.Text + '%"';
        1:
          condicao := ' where  DESCRICAO like "' + edt_consulta.Text + '%"';
        2:
          condicao := ' where  PLACA like "' + edt_consulta.Text + '%"';
        3:
          condicao := ' where  COR_DESCRICAO like "' + edt_consulta.Text + '%"';
        4:
          condicao := ' where  ANO like "' + edt_consulta.Text + '%"';
        5:
          condicao := ' where  MODELO like "' + edt_consulta.Text + '%"';
        6:
          condicao := ' where  CHASSI like "' + edt_consulta.Text + '%"';
      end;
    end;
  SQL_LISTA.Open(qry_base + condicao);
end;
end;


end.

