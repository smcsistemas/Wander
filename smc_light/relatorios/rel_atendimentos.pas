//Verificado automaticamente em 16/06/2020 09:28
unit rel_atendimentos;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, cxGraphics, cxControls, cxLookAndFeels,
  cxLookAndFeelPainters, cxContainer, cxEdit, Vcl.ComCtrls, dxCore, cxDateUtils,
  dxSkinsCore, dxSkinBlack, dxSkinBlue, dxSkinBlueprint, dxSkinCaramel,
  dxSkinCoffee, dxSkinDarkRoom, dxSkinDarkSide, dxSkinDevExpressDarkStyle,
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
  dxSkinXmas2008Blue, Vcl.StdCtrls, cxTextEdit, cxMaskEdit, cxDropDownEdit,
  cxCalendar, Vcl.Menus, cxButtons, FireDAC.Stan.Intf, FireDAC.Stan.Option,
  FireDAC.Stan.Param, FireDAC.Stan.Error, FireDAC.DatS, FireDAC.Phys.Intf,
  FireDAC.DApt.Intf, FireDAC.Stan.Async, FireDAC.DApt, Data.DB,
  FireDAC.Comp.DataSet, FireDAC.Comp.Client, Vcl.DBCtrls, cxLookupEdit,
  cxDBLookupEdit, cxDBLookupComboBox, v_Env, frxClass, frxDBSet;

type
  Tfrm_rel_atendimentos = class(TForm)
    gp_date: TGroupBox;
    edt_data_inicio: TcxDateEdit;
    edt_data_fim: TcxDateEdit;
    gp_atendente: TGroupBox;
    gp_cliente: TGroupBox;
    edt_atendente: TEdit;
    Label1: TLabel;
    Label2: TLabel;
    gp_check: TGroupBox;
    chk_geral: TCheckBox;
    chk_usuario_logado: TCheckBox;
    chk_por_cliente: TCheckBox;
    btn_Gerar_relatorio: TcxButton;
    sql_clientes: TFDQuery;
    ds_clientes: TDataSource;
    edt_cliente: TcxLookupComboBox;
    sql_rel_geral: TFDQuery;
    dse_rel_geral: TfrxDBDataset;
    frx_rel_usuario: TfrxReport;
    sql_rel_usuario: TFDQuery;
    dse_rel_usuario: TfrxDBDataset;
    sql_rel_por_cliente: TFDQuery;
    frx_rel_por_cliente: TfrxReport;
    dse_rel_por_cliente: TfrxDBDataset;
    frx_rel_geral: TfrxReport;
    sql_rel_geralTECNICO: TStringField;
    sql_rel_geralSISTEMA: TStringField;
    sql_rel_geralNOME_FANTASIA: TStringField;
    sql_rel_geralCONTATO_1: TStringField;
    sql_rel_geralPROBLEMA: TStringField;
    sql_rel_geralSOLUCAO: TStringField;
    sql_rel_geralSTATUS: TStringField;
    sql_rel_usuarioTECNICO: TStringField;
    sql_rel_usuarioSISTEMA: TStringField;
    sql_rel_usuarioNOME_FANTASIA: TStringField;
    sql_rel_usuarioCONTATO_1: TStringField;
    sql_rel_usuarioPROBLEMA: TStringField;
    sql_rel_usuarioSOLUCAO: TStringField;
    sql_rel_usuarioSTATUS: TStringField;
    sql_rel_por_clienteTECNICO: TStringField;
    sql_rel_por_clienteSISTEMA: TStringField;
    sql_rel_por_clienteNOME_FANTASIA: TStringField;
    sql_rel_por_clienteCONTATO_1: TStringField;
    sql_rel_por_clientePROBLEMA: TStringField;
    sql_rel_por_clienteSOLUCAO: TStringField;
    sql_rel_por_clienteSTATUS: TStringField;
    procedure chk_geralClick(Sender: TObject);
    procedure chk_usuario_logadoClick(Sender: TObject);
    procedure chk_por_clienteClick(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormShow(Sender: TObject);
    procedure btn_Gerar_relatorioClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frm_rel_atendimentos: Tfrm_rel_atendimentos;

implementation

{$R *.dfm}

procedure Tfrm_rel_atendimentos.btn_Gerar_relatorioClick(Sender: TObject);
begin
if chk_usuario_logado.Checked=True then
    with sql_rel_usuario do
  begin
    Close;
    paramByName('pdata_inicio').Value := edt_data_inicio.Date;
    ParamByName('pdata_fim').Value := edt_data_fim.Date;
    ParamByName('patendente').Value:= edt_atendente.Text;
    open;
    frx_rel_usuario.Variables['edt_data_1']:=quotedstr(edt_data_inicio.text);
    frx_rel_usuario.Variables['edt_data_2']:=quotedstr(edt_data_fim.Text);
    frx_rel_usuario.ShowReport();
  end

 else
if chk_por_cliente.Checked=True then
with sql_rel_por_cliente do
begin
   Close;
   ParamByName('pdata_inicio').Value:= edt_data_inicio.Date;
   ParamByName('pdata_fim').Value:=edt_data_fim.Date;
   ParamByName('pcliente').Value:=edt_cliente.Text;
   Open;
   frx_rel_por_cliente.Variables['edt_data_1']:=quotedstr(edt_data_inicio.text);
   frx_rel_por_cliente.Variables['edt_data_2']:=quotedstr(edt_data_fim.Text);
   frx_rel_por_cliente.ShowReport();
end



  else
     with sql_rel_geral do
  begin
    Close;
    paramByName('pdata_inicio').Value := edt_data_inicio.Date;
    ParamByName('pdata_fim').Value := edt_data_fim.Date;
    open;
    frx_rel_geral.Variables['edt_data_1']:=quotedstr(edt_data_inicio.text);
    frx_rel_geral.Variables['edt_data_2']:=quotedstr(edt_data_fim.Text);
    frx_rel_geral.ShowReport();
  end;
end;

procedure Tfrm_rel_atendimentos.chk_geralClick(Sender: TObject);
begin
if chk_geral.Checked=True then
begin
chk_usuario_logado.Checked:=False;
chk_por_cliente.Checked:=False;
gp_cliente.Visible:=False;
gp_atendente.Visible:=False;
btn_Gerar_relatorio.Left:=139;
btn_Gerar_relatorio.Top:=196;
end;
end;

procedure Tfrm_rel_atendimentos.chk_por_clienteClick(Sender: TObject);
begin
 if chk_por_cliente.Checked=true then
begin
chk_geral.Checked:=False;
chk_usuario_logado.Checked:=False;
gp_cliente.Visible:=True;
gp_atendente.Visible:=False;
btn_Gerar_relatorio.Left:=264;
btn_Gerar_relatorio.Top:=196;
gp_cliente.Left:=8;
gp_cliente.Top:=177;
end;
end;

procedure Tfrm_rel_atendimentos.chk_usuario_logadoClick(Sender: TObject);
begin
if chk_usuario_logado.Checked=true then
begin
chk_geral.Checked:=False;
chk_por_cliente.Checked:=False;
gp_atendente.Visible:=True;
gp_cliente.Visible:=False;
gp_atendente.Left:=8;
gp_atendente.Top:=177;
btn_Gerar_relatorio.Left:=232;
btn_Gerar_relatorio.Top:=196;
edt_atendente.text:=v_Env.TEnv.TUser.NAME;
end;
end;

procedure Tfrm_rel_atendimentos.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  sql_clientes.Close;
  Action := cafree;
  self := nil;
end;

procedure Tfrm_rel_atendimentos.FormShow(Sender: TObject);
begin
edt_data_inicio.Date:=Date;
edt_data_fim.Date:=Date;
sql_clientes.Close;
sql_clientes.Open;
end;

end.
