unit rel_convenio;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, cxGraphics, cxLookAndFeels, cxLookAndFeelPainters, Vcl.Menus, dxSkinsCore, dxSkinBlack, dxSkinBlue, dxSkinBlueprint, dxSkinCaramel,
  dxSkinCoffee, dxSkinDarkRoom, dxSkinDarkSide, dxSkinDevExpressDarkStyle, dxSkinDevExpressStyle, dxSkinFoggy, dxSkinGlassOceans, dxSkinHighContrast, dxSkiniMaginary, dxSkinLilian,
  dxSkinLiquidSky, dxSkinLondonLiquidSky, dxSkinMcSkin, dxSkinMetropolis, dxSkinMetropolisDark, dxSkinMoneyTwins, dxSkinOffice2007Black, dxSkinOffice2007Blue,
  dxSkinOffice2007Green, dxSkinOffice2007Pink, dxSkinOffice2007Silver, dxSkinOffice2010Black, dxSkinOffice2010Blue, dxSkinOffice2010Silver, dxSkinOffice2013DarkGray,
  dxSkinOffice2013LightGray, dxSkinOffice2013White, dxSkinOffice2016Colorful, dxSkinOffice2016Dark, dxSkinPumpkin, dxSkinSeven, dxSkinSevenClassic, dxSkinSharp, dxSkinSharpPlus,
  dxSkinSilver, dxSkinSpringTime, dxSkinStardust, dxSkinSummer2008, dxSkinTheAsphaltWorld, dxSkinsDefaultPainters, dxSkinValentine, dxSkinVisualStudio2013Blue,
  dxSkinVisualStudio2013Dark, dxSkinVisualStudio2013Light, dxSkinVS2010, dxSkinWhiteprint, dxSkinXmas2008Blue, Vcl.StdCtrls, cxButtons, Vcl.ExtCtrls, cxControls, cxContainer,
  cxEdit, FireDAC.Stan.Intf, FireDAC.Stan.Option, FireDAC.Stan.Param, FireDAC.Stan.Error, FireDAC.DatS, FireDAC.Phys.Intf, FireDAC.DApt.Intf, FireDAC.Stan.Async, FireDAC.DApt,
  Data.DB, FireDAC.Comp.DataSet, FireDAC.Comp.Client, cxTextEdit, cxMaskEdit, cxDropDownEdit, cxLookupEdit, cxDBLookupEdit, cxDBLookupComboBox, Vcl.ComCtrls, dxCore, cxDateUtils,
  cxCalendar, cxCheckBox, m_Cliente, m_cliente_conveniado, v_Env, h_Dialogs, h_Functions, vw_consulta_generica, c_Globals, h_Checks, relatorios;

type
  Tfrm_rel_convenio = class(TForm)
    btnGerar: TcxButton;
    Label1: TLabel;
    Shape1: TShape;
    lblCliente: TLabel;
    btnSearch: TcxButton;
    Label3: TLabel;
    Shape2: TShape;
    cbConveniado: TcxLookupComboBox;
    sql_conveniados: TFDQuery;
    ds_conveniados: TDataSource;
    periodo_inicio: TcxDateEdit;
    periodo_fim: TcxDateEdit;
    Label2: TLabel;
    Shape3: TShape;
    Label4: TLabel;
    chkProdutos: TcxCheckBox;
    sql_conveniadosid: TLargeintField;
    sql_conveniadosconveniado: TStringField;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormShow(Sender: TObject);
    procedure btnGerarClick(Sender: TObject);
    procedure btnSearchClick(Sender: TObject);
  private
    { Private declarations }
    cliente: tcliente;
    convenioado: TClienteConveniado;
  public
    { Public declarations }
  end;

var
  frm_rel_convenio: Tfrm_rel_convenio;

implementation

{$R *.dfm}

procedure Tfrm_rel_convenio.btnGerarClick(Sender: TObject);
begin

  try
    periodo_inicio.ValidateEdit(false);
    periodo_fim.ValidateEdit(false);
    cbConveniado.ValidateEdit(false);

    if cliente = nil then
      raise Exception.Create('Cliente deve ser informado.');

    if tchecks.dateIsNull(periodo_inicio.date) then
      raise Exception.Create('Início do período deve ser informado.');

    if tchecks.dateIsNull(periodo_fim.date) then
      raise Exception.Create('Fim do período deve ser informado.');

    Tfrm_relatorio.Create(nil).Convenio(cliente.ID, periodo_inicio.date, periodo_fim.date, chkProdutos.Checked, cbConveniado.EditValue).Close;

  except
    on e: Exception do
      tdialogs.wnAlerta('Relatório Convênio', 'Não foi possível gerar relatório:' + slinebreak + e.Message);

  end;

end;

procedure Tfrm_rel_convenio.btnSearchClick(Sender: TObject);
var
  edt: TEdit;
begin
  if not TFunctions.CheckOpen(Frm_Consulta_Generica) then
  begin
    edt := TEdit.Create(nil);
    Frm_Consulta_Generica := tfrm_consulta_generica.Create(nil, cgcliente, edt);
    Frm_Consulta_Generica.showmodal;
    if edt.Text <> '' then
    begin
      cliente := tcliente.Create(strtoint(edt.Text));
      lblCliente.caption := cliente.razao_social;
      with sql_conveniados do
      begin
        Close;
        parambyname('pcliente_id').asInteger := cliente.ID;
        open;
      end;
      cbConveniado.ItemIndex := 0;
      cbConveniado.setfocus;
    end;
  end;
end;

procedure Tfrm_rel_convenio.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  Action := cafree;
  self := nil;
end;

procedure Tfrm_rel_convenio.FormShow(Sender: TObject);
begin
  periodo_inicio.date := TEnv.date.FirstDayOfMonth;
  periodo_fim.date := date;
end;

end.
