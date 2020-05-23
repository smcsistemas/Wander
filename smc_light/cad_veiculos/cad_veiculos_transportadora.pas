unit cad_veiculos_transportadora;

interface

uses
//  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
//  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, cxGraphics, cxControls, cxLookAndFeels,
//  cxLookAndFeelPainters, cxContainer, cxEdit, dxSkinsCore,
//  dxSkinOffice2013White, Vcl.Menus, FireDAC.Stan.Intf, FireDAC.Stan.Option,
//  FireDAC.Stan.Param, FireDAC.Stan.Error, FireDAC.DatS,
//  FireDAC.Stan.Async, FireDAC.DApt, cxCheckBox, cxClasses,
//  dxSkinsForm, Data.DB, FireDAC.Comp.Client, Vcl.StdCtrls,
//  cxButtons, cxMemo, cxDBEdit, cxTextEdit, Vcl.DBGrids, Vcl.DBCtrls,
//  dxSkinBlack, dxSkinBlue, dxSkinBlueprint, dxSkinCaramel, dxSkinCoffee,
//  dxSkinDarkRoom, dxSkinDarkSide, dxSkinDevExpressDarkStyle,
//  dxSkinDevExpressStyle, dxSkinFoggy, dxSkinGlassOceans, dxSkinHighContrast,
//  dxSkiniMaginary, dxSkinLilian, dxSkinLiquidSky, dxSkinLondonLiquidSky,
//  dxSkinMcSkin, dxSkinMetropolis, dxSkinMetropolisDark, dxSkinMoneyTwins,
//  dxSkinOffice2007Black, dxSkinOffice2007Blue, dxSkinOffice2007Green,
//  dxSkinOffice2007Pink, dxSkinOffice2007Silver, dxSkinOffice2010Black,
//  dxSkinOffice2010Blue, dxSkinOffice2010Silver, dxSkinOffice2013DarkGray,
//  dxSkinOffice2013LightGray, dxSkinOffice2016Colorful, dxSkinOffice2016Dark,
//  dxSkinPumpkin, dxSkinSeven, dxSkinSevenClassic, dxSkinSharp, dxSkinSharpPlus,
//  dxSkinSilver, dxSkinSpringTime, dxSkinStardust, dxSkinSummer2008,
//  dxSkinTheAsphaltWorld, dxSkinsDefaultPainters, dxSkinValentine,
//  dxSkinVisualStudio2013Blue, dxSkinVisualStudio2013Dark,
//  dxSkinVisualStudio2013Light, dxSkinVS2010, dxSkinWhiteprint,
//  dxSkinXmas2008Blue, FireDAC.Phys.Intf, FireDAC.DApt.Intf, FireDAC.Comp.DataSet, Vcl.Grids,
//  dxSkinscxPCPainter, dxBarBuiltInMenu, cxStyles, cxCustomData, cxFilter,
//  cxData, cxDataStorage, cxNavigator, cxDBData, cxGridLevel,
//  cxGridCustomTableView, cxGridTableView, cxGridDBTableView, cxGridCustomView,
//  cxGrid, cxMaskEdit, cxDropDownEdit, Vcl.ExtCtrls, cxPC, Vcl.Mask, cxGroupBox;
Winapi.Windows, System.SysUtils, System.Variants,
  System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls, Vcl.ComCtrls, Vcl.DBCtrls,
  Vcl.Mask, cxGraphics,

  cxTextEdit, cxDBEdit, cxPC, cxMaskEdit, cxDropDownEdit,
  cxCheckBox, cxGroupBox, cxCalendar,
  Vcl.Menus, cxButtons,
  FireDAC.Stan.Param,
  Data.DB,
  FireDAC.Comp.DataSet, FireDAC.Comp.Client,
  Vcl.ExtCtrls, ShellApi,

  cxGridCustomTableView, cxGridTableView, cxGridDBTableView, cxGridLevel,
  cxGrid,
  cxGridDBBandedTableView,
  System.StrUtils, XMLIntf, v_env, h_Formats, h_functions, h_DB, cxControls, cxLookAndFeels, cxLookAndFeelPainters, dxSkinsCore,
  dxSkinBlack, dxSkinBlue, dxSkinBlueprint,
  dxSkinCaramel,
  dxSkinCoffee, dxSkinDarkRoom,
  dxSkinDarkSide, dxSkinDevExpressDarkStyle, dxSkinDevExpressStyle, dxSkinFoggy, dxSkinGlassOceans, dxSkinHighContrast, dxSkiniMaginary,
  dxSkinLilian, dxSkinLiquidSky,
  dxSkinLondonLiquidSky,
  dxSkinMcSkin, dxSkinMetropolis, dxSkinMetropolisDark, dxSkinMoneyTwins, dxSkinOffice2007Black, dxSkinOffice2007Blue,
  dxSkinOffice2007Green, dxSkinOffice2007Pink,
  dxSkinOffice2007Silver,
  dxSkinOffice2010Black, dxSkinOffice2010Blue, dxSkinOffice2010Silver, dxSkinOffice2013DarkGray, dxSkinOffice2013LightGray,
  dxSkinOffice2013White, dxSkinOffice2016Colorful,
  dxSkinOffice2016Dark,
  dxSkinPumpkin, dxSkinSeven, dxSkinSevenClassic, dxSkinSharp, dxSkinSharpPlus, dxSkinSilver, dxSkinSpringTime, dxSkinStardust,
  dxSkinSummer2008, dxSkinTheAsphaltWorld,
  dxSkinsDefaultPainters,
  dxSkinValentine, dxSkinVisualStudio2013Blue, dxSkinVisualStudio2013Dark, dxSkinVisualStudio2013Light, dxSkinVS2010, dxSkinWhiteprint,
  dxSkinXmas2008Blue, dxSkinscxPCPainter,
  dxBarBuiltInMenu,
  cxStyles, cxCustomData, cxFilter, cxData, cxDataStorage, cxEdit, cxNavigator, cxDBData, cxLabel, cxContainer, dxCore, cxDateUtils,
  FireDAC.Stan.Intf, FireDAC.Stan.Option,
  FireDAC.Stan.Error,
  FireDAC.DatS, FireDAC.Phys.Intf, FireDAC.DApt.Intf, FireDAC.Stan.Async, FireDAC.DApt, Vcl.ImgList, cxGridBandedTableView,
  dxGDIPlusClasses, cxClasses, cxGridCustomView,
  cxCurrencyEdit, cad_contador, funcoes_sistema, h_nf_Functions, h_UIFunctions, System.UITypes;

type
  TFRM_cad_veiculos_transportadora = class(TForm)
    Cadastro: TcxPageControl;
    cxTabSheet1: TcxTabSheet;
    tabcadastro: TcxTabSheet;
    gdConveniados: TcxGrid;
    gdConveniadosTbVw: TcxGridDBTableView;
    clid: TcxGridDBColumn;
    clPlaca: TcxGridDBColumn;
    clModelo: TcxGridDBColumn;
    clCor: TcxGridDBColumn;
    clAnoFabri: TcxGridDBColumn;
    clAnoModelo: TcxGridDBColumn;
    clCombust: TcxGridDBColumn;
    gdConveniadosLv: TcxGridLevel;
    clChassi: TcxGridDBColumn;
    Label7: TLabel;
    edt_consulta: TEdit;
    cxButton2: TcxButton;
    clTransportadora: TcxGridDBColumn;
    gp_inf: TcxGroupBox;
    Label1: TLabel;
    lbl3: TLabel;
    lbl4: TLabel;
    lbl1: TLabel;
    lbl5: TLabel;
    lbl2: TLabel;
    db_chassi: TDBEdit;
    db_plca: TDBEdit;
    db_marca: TDBEdit;
    db_uf: TDBEdit;
    db_renavam: TDBEdit;
    codigo: TcxDBTextEdit;
    db_desc: TDBEdit;
    gp_cor: TGroupBox;
    Label2: TLabel;
    Label9: TLabel;
    db_fabricante: TDBEdit;
    db_descricao: TDBEdit;
    gp_fabrica: TGroupBox;
    Label6: TLabel;
    Label5: TLabel;
    db_ano: TDBEdit;
    db_modelo: TDBEdit;
    Label4: TLabel;
    CB_COMBUSTIVEL: TcxDBComboBox;
    cxButton1: TcxButton;
    Label3: TLabel;
    SQL_veiculos: TFDQuery;
    SQL_veiculosCODIGO: TFDAutoIncField;
    SQL_veiculosDESCRICAO: TStringField;
    SQL_veiculosPLACA: TStringField;
    SQL_veiculosUF: TStringField;
    SQL_veiculosRENAVAM: TStringField;
    SQL_veiculosCHASSI: TStringField;
    SQL_veiculosMARCA: TStringField;
    SQL_veiculosCOR_FABRICA: TStringField;
    SQL_veiculosCOR_DESCRICAO: TStringField;
    SQL_veiculosANO: TStringField;
    SQL_veiculosCOMBUSTIVEL: TStringField;
    SQL_veiculosMODELO: TStringField;
    DT_VEICULOS: TDataSource;
    DT_LISTA: TDataSource;
    SQL_LISTA: TFDQuery;
    SQL_LISTACODIGO: TFDAutoIncField;
    SQL_LISTADESCRICAO: TStringField;
    SQL_LISTAPLACA: TStringField;
    SQL_LISTAUF: TStringField;
    SQL_LISTARENAVAM: TStringField;
    SQL_LISTACHASSI: TStringField;
    SQL_LISTAMARCA: TStringField;
    SQL_LISTACOR_FABRICA: TStringField;
    SQL_LISTACOR_DESCRICAO: TStringField;
    SQL_LISTAANO: TStringField;
    SQL_LISTAMODELO: TStringField;
    SQL_LISTACOMBUSTIVEL: TStringField;
    sql_increment: TFDQuery;
    sql_incrementAUTO_INCREMENT: TLargeintField;
    dt_increment: TDataSource;
    gp_reboque: TGroupBox;
    DBEdit4: TDBEdit;
    Label14: TLabel;
    DBEdit3: TDBEdit;
    Label12: TLabel;
    DBEdit2: TDBEdit;
    Label11: TLabel;
    DBEdit1: TDBEdit;
    Label10: TLabel;
    SQL_veiculosREBOQUE1: TStringField;
    SQL_veiculosREBOQUE2: TStringField;
    SQL_veiculosREBOQUE3: TStringField;
    SQL_veiculosREBOQUE4: TStringField;
    SQL_LISTAREBOQUE1: TStringField;
    SQL_LISTAREBOQUE2: TStringField;
    SQL_LISTAREBOQUE3: TStringField;
    SQL_LISTAREBOQUE4: TStringField;
    db_transp_razao: TDBEdit;
    db_cod_transp: TcxDBTextEdit;
    gdConveniadosTbVwColumn2: TcxGridDBColumn;
    BtnIncluir: TcxButton;
    BtnCancelar: TcxButton;
    BtnAlterar: TcxButton;
    BtnGravar: TcxButton;
    cbFiltro: TcxComboBox;
    Label8: TLabel;
    DBEdit6: TDBEdit;
    SQL_veiculosTRANSP_CODIGO: TIntegerField;
    SQL_veiculosTRANSP_RAZAO_SOCIAL: TStringField;
    SQL_LISTATRANSP_CODIGO: TIntegerField;
    SQL_LISTATRANSP_RAZAO_SOCIAL: TStringField;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure BtnIncluirClick(Sender: TObject);
    procedure BtnGravarClick(Sender: TObject);
    procedure CarregarUltimoCadastro;
    procedure BtnCancelarClick(Sender: TObject);
    procedure BtnAlterarClick(Sender: TObject);
    procedure cxTabSheet1Show(Sender: TObject);
    procedure edt_consultaKeyUp(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure dlConsulta(check_edit: Boolean = true);
    procedure FormCreate(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure CarregarDadosInternos;
    procedure cxButton1Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FRM_cad_veiculos_transportadora: TFRM_cad_veiculos_transportadora;

implementation

uses
  u_funcoes, S_Module, cad_transportador;

{$R *.dfm}

procedure TFRM_cad_veiculos_transportadora.BtnAlterarClick(Sender: TObject);
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

procedure TFRM_cad_veiculos_transportadora.BtnCancelarClick(Sender: TObject);
begin
  SQL_veiculos.Cancel;
  SQL_veiculos.Close;

  u_funcoes.AlterarEnabled([gp_inf, gp_cor, gp_fabrica, CB_COMBUSTIVEL, gp_reboque], False);
  u_funcoes.IniciarCadastro([BtnIncluir, BtnCancelar, BtnAlterar, BtnGravar], False);
  BtnIncluir.SetFocus;
  SQL_LISTA.Active := False;
  SQL_LISTA.Active := True;
end;

procedure TFRM_cad_veiculos_transportadora.BtnIncluirClick(Sender: TObject);
begin

  SQL_veiculos.Active := True;
  SQL_veiculos.Insert;
  u_funcoes.AlterarEnabled([gp_inf, gp_cor, gp_fabrica, CB_COMBUSTIVEL, gp_reboque], True);
  u_funcoes.IniciarCadastro([BtnIncluir, BtnCancelar, BtnAlterar], True);
  sql_increment.Active := True;
  if SQL_INCREMENTauto_increment.Value = 0 then
      CODIGO.Text := '1'
    else
      CODIGO.Text := inttostr(SQL_INCREMENTauto_increment.Value);

end;

procedure TFRM_cad_veiculos_transportadora.BtnGravarClick(Sender: TObject);
begin
     SQL_veiculos.Post;
    SQL_veiculos.Active := False;

    MessageDLG('ATENÇÃO: Operação concluída com sucesso', mtInformation, [mbOk], 0);
    u_funcoes.AlterarEnabled([gp_inf, gp_cor, gp_fabrica, CB_COMBUSTIVEL,gp_reboque], False);
    u_funcoes.IniciarCadastro([BtnIncluir, BtnCancelar, BtnAlterar], False);
    SQL_LISTA.Active := False;
    SQL_LISTA.Active := True;
      CarregarUltimoCadastro;
end;

procedure TFRM_cad_veiculos_transportadora.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  Action := cafree;
  self := nil;
end;


procedure TFRM_cad_veiculos_transportadora.FormCreate(Sender: TObject);
begin
 SQL_LISTA.Active := True;
end;

procedure TFRM_cad_veiculos_transportadora.FormShow(Sender: TObject);
begin
  CarregarUltimoCadastro;
  CarregarDadosInternos;
end;

procedure TFRM_cad_veiculos_transportadora.CarregarUltimoCadastro;
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


procedure TFRM_cad_veiculos_transportadora.cxButton1Click(Sender: TObject);
begin
  frm_cad_transportadora := Tfrm_cad_transportadora.Create(Application);
  frm_cad_transportadora.DBGrid1.Visible := True;
 // frm_cad_transportadora.InformarDadosTransportadora();

  frm_cad_transportadora.ShowModal;
  frm_cad_transportadora.Free;
end;


procedure TFRM_cad_veiculos_transportadora.cxTabSheet1Show(Sender: TObject);
begin
  sql_LISTA.Active := False;
  sql_LISTA.Active := true;
  SQL_veiculos.Active := true;
  edt_consulta.SetFocus;
end;

procedure TFRM_cad_veiculos_transportadora.edt_consultaKeyUp(Sender: TObject;
  var Key: Word; Shift: TShiftState);
begin
  dlConsulta;
end;


procedure TFRM_cad_veiculos_transportadora.dlConsulta(check_edit: Boolean = true);
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
          condicao := ' where  TRANSP_RAZAO_SOCIAL like "' + edt_consulta.Text + '%"';
        1:
          condicao := ' where  DESCRICAO like "' + edt_consulta.Text + '%"';
        2:
          condicao := ' where  PLACA like "' + edt_consulta.Text + '%"';
        3:
          condicao := ' where  FROTA like "' + edt_consulta.Text + '%"';
      end;
    end;
  SQL_LISTA.Open(qry_base + condicao);
end;
end;


procedure TFRM_cad_veiculos_transportadora.CarregarDadosInternos;
begin

  u_funcoes.AlterarEnabled([gp_inf, gp_cor, gp_fabrica, CB_COMBUSTIVEL, gp_reboque], False);

  u_funcoes.IniciarCadastro([BtnIncluir, BtnCancelar, BtnAlterar], False);
end;



end.
