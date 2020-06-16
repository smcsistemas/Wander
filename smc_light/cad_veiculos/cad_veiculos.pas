//Verificado automaticamente em 16/06/2020 09:27
unit cad_veiculos;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, cxGraphics, cxControls, cxLookAndFeels,
  cxLookAndFeelPainters, cxContainer, cxEdit, dxSkinsCore,
  dxSkinOffice2013White, Vcl.Menus, FireDAC.Stan.Intf, FireDAC.Stan.Option,
  FireDAC.Stan.Param, FireDAC.Stan.Error, FireDAC.DatS,
  FireDAC.Stan.Async, FireDAC.DApt, cxCheckBox, cxClasses,
  dxSkinsForm, Data.DB, FireDAC.Comp.Client, Vcl.StdCtrls,
  cxButtons, cxMemo, cxDBEdit, cxTextEdit, Vcl.DBGrids, Vcl.DBCtrls,
  dxSkinBlack, dxSkinBlue, dxSkinBlueprint, dxSkinCaramel, dxSkinCoffee,
  dxSkinDarkRoom, dxSkinDarkSide, dxSkinDevExpressDarkStyle,
  dxSkinDevExpressStyle, dxSkinFoggy, dxSkinGlassOceans, dxSkinHighContrast,
  dxSkiniMaginary, dxSkinLilian, dxSkinLiquidSky, dxSkinLondonLiquidSky,
  dxSkinMcSkin, dxSkinMetropolis, dxSkinMetropolisDark, dxSkinMoneyTwins,
  dxSkinOffice2007Black, dxSkinOffice2007Blue, dxSkinOffice2007Green,
  dxSkinOffice2007Pink, dxSkinOffice2007Silver, dxSkinOffice2010Black,
  dxSkinOffice2010Blue, dxSkinOffice2010Silver, dxSkinOffice2013DarkGray,
  dxSkinOffice2013LightGray, dxSkinOffice2016Colorful, dxSkinOffice2016Dark,
  dxSkinPumpkin, dxSkinSeven, dxSkinSevenClassic, dxSkinSharp, dxSkinSharpPlus,
  dxSkinSilver, dxSkinSpringTime, dxSkinStardust, dxSkinSummer2008,
  dxSkinTheAsphaltWorld, dxSkinsDefaultPainters, dxSkinValentine,
  dxSkinVisualStudio2013Blue, dxSkinVisualStudio2013Dark,
  dxSkinVisualStudio2013Light, dxSkinVS2010, dxSkinWhiteprint,
  dxSkinXmas2008Blue, FireDAC.Phys.Intf, FireDAC.DApt.Intf, FireDAC.Comp.DataSet, Vcl.Grids,
  dxSkinscxPCPainter, dxBarBuiltInMenu, cxStyles, cxCustomData, cxFilter,
  cxData, cxDataStorage, cxNavigator, cxDBData, cxGridLevel,
  cxGridCustomTableView, cxGridTableView, cxGridDBTableView, cxGridCustomView,
  cxGrid, cxMaskEdit, cxDropDownEdit, Vcl.ExtCtrls, cxPC, cxGroupBox, Vcl.Mask;

type
  TFRM_cad_veiculos = class(TForm)
    BtnExcluir: TcxButton;
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
    cbFiltro: TcxComboBox;
    tabcadastro: TcxTabSheet;
    Label4: TLabel;
    BtnGravar: TcxButton;
    BtnIncluir: TcxButton;
    BtnCancelar: TcxButton;
    BtnAlterar: TcxButton;
    gp_cor: TGroupBox;
    Label2: TLabel;
    Label9: TLabel;
    db_fabricante: TDBEdit;
    db_descricao: TDBEdit;
    gp_inf: TcxGroupBox;
    Label1: TLabel;
    lbl3: TLabel;
    lbl4: TLabel;
    lbl1: TLabel;
    lbl5: TLabel;
    db_chassi: TDBEdit;
    db_plca: TDBEdit;
    db_marca: TDBEdit;
    db_uf: TDBEdit;
    db_renavam: TDBEdit;
    gp_fabrica: TGroupBox;
    Label6: TLabel;
    Label5: TLabel;
    db_ano: TDBEdit;
    db_modelo: TDBEdit;
    CB_COMBUSTIVEL: TcxDBComboBox;
    SQL_veiculos: TFDQuery;
    SQL_veiculosCODIGO: TFDAutoIncField;
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
    DT_VEICULOS: TDataSource;
    DT_LISTA: TDataSource;
    sql_increment: TFDQuery;
    sql_incrementAUTO_INCREMENT: TLargeintField;
    dt_increment: TDataSource;
    SQL_LISTA: TFDQuery;
    lbl2: TLabel;
    codigo: TcxDBTextEdit;
    db_desc: TDBEdit;
    SQL_LISTACODIGO: TFDAutoIncField;
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
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure BtnIncluirClick(Sender: TObject);
    procedure BtnGravarClick(Sender: TObject);
    procedure CarregarDadosInternos;
    procedure CarregarUltimoCadastro;
    procedure BtnCancelarClick(Sender: TObject);
    procedure BtnAlterarClick(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure edt_consultaKeyUp(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure dlConsulta(check_edit: Boolean = true);
    procedure cxTabSheet1Show(Sender: TObject);
    procedure db_descKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure db_plcaKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure db_ufKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
    procedure db_ufKeyPress(Sender: TObject; var Key: Char);
    procedure db_renavamKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure db_renavamKeyPress(Sender: TObject; var Key: Char);
    procedure db_chassiKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure db_marcaKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure db_fabricanteKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure db_fabricanteKeyPress(Sender: TObject; var Key: Char);
    procedure db_descricaoKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure db_anoKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
    procedure db_anoKeyPress(Sender: TObject; var Key: Char);
    procedure db_modeloKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure gdConveniadosTbVwCustomDrawCell(Sender: TcxCustomGridTableView;
      ACanvas: TcxCanvas; AViewInfo: TcxGridTableDataCellViewInfo;
      var ADone: Boolean);
    procedure gdConveniadosTbVwDblClick(Sender: TObject);
    procedure gdConveniadosTbVwCellDblClick(Sender: TcxCustomGridTableView;
      ACellViewInfo: TcxGridTableDataCellViewInfo; AButton: TMouseButton;
      AShift: TShiftState; var AHandled: Boolean);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FRM_cad_veiculos: TFRM_cad_veiculos;

implementation

uses
  u_funcoes, h_Functions, S_Module;

{$R *.dfm}

procedure TFRM_cad_veiculos.BtnAlterarClick(Sender: TObject);
begin
begin
    if db_desc.Text = '' then
  begin
    wnAlerta('Alterar', 'Nenhum Veículo foi selecionado.');
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

procedure TFRM_cad_veiculos.BtnCancelarClick(Sender: TObject);
begin
  SQL_veiculos.Cancel;
  SQL_veiculos.Close;

  u_funcoes.AlterarEnabled([gp_inf, gp_cor, gp_fabrica, CB_COMBUSTIVEL], False);
  u_funcoes.IniciarCadastro([BtnIncluir, BtnCancelar, BtnAlterar, BtnGravar], False);
  BtnIncluir.SetFocus;
  SQL_LISTA.Active := False;
  SQL_LISTA.Active := True;
end;

procedure TFRM_cad_veiculos.BtnGravarClick(Sender: TObject);
begin
begin


     SQL_veiculos.Post;
    SQL_veiculos.Active := False;

    MessageDLG('ATENÇÃO: Operação concluída com sucesso', mtInformation, [mbOk], 0);
    u_funcoes.AlterarEnabled([gp_inf, gp_cor, gp_fabrica, CB_COMBUSTIVEL], False);
    u_funcoes.IniciarCadastro([BtnIncluir, BtnCancelar, BtnAlterar], False);
    SQL_LISTA.Active := False;
    SQL_LISTA.Active := True;
      CarregarUltimoCadastro;
  end;
end;

procedure TFRM_cad_veiculos.BtnIncluirClick(Sender: TObject);
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

procedure TFRM_cad_veiculos.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  Action := cafree;
  self := nil;
end;

procedure TFRM_cad_veiculos.FormCreate(Sender: TObject);
begin
 SQL_LISTA.Active := True;
end;

procedure TFRM_cad_veiculos.FormShow(Sender: TObject);
begin
  CarregarUltimoCadastro;
  CarregarDadosInternos;
end;

procedure TFRM_cad_veiculos.gdConveniadosTbVwCellDblClick(
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

procedure TFRM_cad_veiculos.gdConveniadosTbVwCustomDrawCell(
  Sender: TcxCustomGridTableView; ACanvas: TcxCanvas;
  AViewInfo: TcxGridTableDataCellViewInfo; var ADone: Boolean);
begin

  TFunctions.stripedGrid(ACanvas, AViewInfo);
end;

procedure TFRM_cad_veiculos.gdConveniadosTbVwDblClick(Sender: TObject);
begin
   tabcadastro.Show;
   BtnIncluir.Visible := false;
end;

procedure TFRM_cad_veiculos.CarregarDadosInternos;
begin

  u_funcoes.AlterarEnabled([gp_inf, gp_cor, gp_fabrica, CB_COMBUSTIVEL], False);

  u_funcoes.IniciarCadastro([BtnIncluir, BtnCancelar, BtnAlterar], False);
end;

procedure TFRM_cad_veiculos.CarregarUltimoCadastro;
begin
  sql_increment.Active := false;
  sql_increment.Active := true;
  with SQL_VEICULOS do
  begin
     Active := false;
    Close;
    Params.Add.Name := 'pcodigo';
    ParamByName('pcodigo').Value := (sql_incrementAUTO_INCREMENT.asInteger - 1);
    Open;
    Active := true;

  end;
end;

procedure TFRM_cad_veiculos.cxTabSheet1Show(Sender: TObject);
begin
  sql_LISTA.Active := False;
  sql_LISTA.Active := true;
  SQL_veiculos.Active := true;
  edt_consulta.SetFocus;
end;

procedure TFRM_cad_veiculos.edt_consultaKeyUp(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  dlConsulta;
end;


procedure TFRM_cad_veiculos.db_anoKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
if (Key = VK_RETURN) or (Key = VK_TAB) then
  begin
    db_modelo.SetFocus;
  end;
end;

procedure TFRM_cad_veiculos.db_anoKeyPress(Sender: TObject; var Key: Char);
begin
  Key := u_funcoes.ApenasNumeros(Key);
end;

procedure TFRM_cad_veiculos.db_chassiKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
if (Key = VK_RETURN) or (Key = VK_TAB) then
  begin
    db_marca.SetFocus;
  end;
end;

procedure TFRM_cad_veiculos.db_descKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
if (Key = VK_RETURN) or (Key = VK_TAB) then
  begin
    db_plca.SetFocus;
  end;
end;

procedure TFRM_cad_veiculos.db_descricaoKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
if (Key = VK_RETURN) or (Key = VK_TAB) then
  begin
    db_ano.SetFocus;
  end;
end;

procedure TFRM_cad_veiculos.db_fabricanteKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
if (Key = VK_RETURN) or (Key = VK_TAB) then
  begin
    db_descricao.SetFocus;
  end;
end;

procedure TFRM_cad_veiculos.db_fabricanteKeyPress(Sender: TObject;
  var Key: Char);
begin
  Key := u_funcoes.ApenasNumeros(Key);
end;

procedure TFRM_cad_veiculos.db_marcaKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
if (Key = VK_RETURN) or (Key = VK_TAB) then
  begin
    db_fabricante.SetFocus;
  end;
end;

procedure TFRM_cad_veiculos.db_modeloKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
if (Key = VK_RETURN) or (Key = VK_TAB) then
  begin
    CB_COMBUSTIVEL.DroppedDown;
  end;
end;

procedure TFRM_cad_veiculos.db_plcaKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
if (Key = VK_RETURN) or (Key = VK_TAB) then
  begin
    db_uf.SetFocus;
  end;
end;

procedure TFRM_cad_veiculos.db_renavamKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
if (Key = VK_RETURN) or (Key = VK_TAB) then
  begin
    db_chassi.SetFocus;
  end;
end;

procedure TFRM_cad_veiculos.db_renavamKeyPress(Sender: TObject; var Key: Char);
begin
  Key := u_funcoes.ApenasNumeros(Key);
end;

procedure TFRM_cad_veiculos.db_ufKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
if (Key = VK_RETURN) or (Key = VK_TAB) then
  begin
    db_renavam.SetFocus;
  end;
end;

procedure TFRM_cad_veiculos.db_ufKeyPress(Sender: TObject; var Key: Char);
begin
  Key := u_funcoes.ApenasLetras(Key);
end;

procedure TFRM_cad_veiculos.dlConsulta(check_edit: Boolean = true);
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
          condicao := ' where  DESCRICAO like "' + edt_consulta.Text + '%"';
        1:
          condicao := ' where  PLACA like "' + edt_consulta.Text + '%"';
        2:
          condicao := ' where  COR_DESCRICAO like "' + edt_consulta.Text + '%"';
        3:
          condicao := ' where  ANO like "' + edt_consulta.Text + '%"';
        4:
          condicao := ' where  MODELO like "' + edt_consulta.Text + '%"';
        5:
          condicao := ' where  CHASSI like "' + edt_consulta.Text + '%"';
      end;
    end;
  SQL_LISTA.Open(qry_base + condicao);
end;
end;
end.
