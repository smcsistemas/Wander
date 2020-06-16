//Verificado automaticamente em 16/06/2020 09:28
unit vw_rel_vendas_simples;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.ComCtrls, cxGraphics, cxControls, cxLookAndFeels, cxLookAndFeelPainters, cxContainer, cxEdit, dxCore, cxDateUtils, dxSkinsCore,
  dxSkinBlack, dxSkinBlue, dxSkinBlueprint, dxSkinCaramel, dxSkinCoffee, dxSkinDarkRoom, dxSkinDarkSide, dxSkinDevExpressDarkStyle, dxSkinDevExpressStyle, dxSkinFoggy,
  dxSkinGlassOceans, dxSkinHighContrast, dxSkiniMaginary, dxSkinLilian, dxSkinLiquidSky, dxSkinLondonLiquidSky, dxSkinMcSkin, dxSkinMetropolis, dxSkinMetropolisDark,
  dxSkinMoneyTwins, dxSkinOffice2007Black, dxSkinOffice2007Blue, dxSkinOffice2007Green, dxSkinOffice2007Pink, dxSkinOffice2007Silver, dxSkinOffice2010Black, dxSkinOffice2010Blue,
  dxSkinOffice2010Silver, dxSkinOffice2013DarkGray, dxSkinOffice2013LightGray, dxSkinOffice2013White, dxSkinOffice2016Colorful, dxSkinOffice2016Dark, dxSkinPumpkin, dxSkinSeven,
  dxSkinSevenClassic, dxSkinSharp, dxSkinSharpPlus, dxSkinSilver, dxSkinSpringTime, dxSkinStardust, dxSkinSummer2008, dxSkinTheAsphaltWorld, dxSkinsDefaultPainters,
  dxSkinValentine, dxSkinVisualStudio2013Blue, dxSkinVisualStudio2013Dark, dxSkinVisualStudio2013Light, dxSkinVS2010, dxSkinWhiteprint, dxSkinXmas2008Blue, cxTextEdit, cxMaskEdit,
  cxDropDownEdit, cxCalendar, cxGroupBox, Vcl.StdCtrls, cxCheckBox, Vcl.Menus, cxButtons, m_Cliente, cxMemo;

type
  Tfrm_vw_rel_vendas_simples = class(TForm)
    cxGroupBox1: TcxGroupBox;
    dt_inicio: TcxDateEdit;
    dt_fim: TcxDateEdit;
    lbl1: TLabel;
    lbl2: TLabel;
    cxGroupBox2: TcxGroupBox;
    chk_fechadas: TcxCheckBox;
    chk_canceladas: TcxCheckBox;
    btnGerar: TcxButton;
    cxGroupBox3: TcxGroupBox;
    mmCliente: TcxMemo;
    btnSearch: TcxButton;
    cxButton1: TcxButton;
    procedure FormShow(Sender: TObject);
    procedure btnGerarClick(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure btnSearchClick(Sender: TObject);
    procedure cxButton1Click(Sender: TObject);
  private
    { Private declarations }
    cliente: tcliente;
  public
    { Public declarations }
  end;

var
  frm_vw_rel_vendas_simples: Tfrm_vw_rel_vendas_simples;

implementation

uses
  v_Env, relatorios, h_DB, h_Dialogs, vw_consulta_generica, c_Globals;

{$R *.dfm}

procedure Tfrm_vw_rel_vendas_simples.btnGerarClick(Sender: TObject);
begin
  if (chk_fechadas.checked = False) and (chk_canceladas.checked = False) then
    tdialogs.wnalerta('Vendas Simples', 'Ao menos um status deve ser selecionado!')
  else
  begin
    dt_inicio.ValidateEdit;
    dt_fim.ValidateEdit;
    if cliente = nil then
      TFrm_Relatorio.create(nil).venda_simples(dt_inicio.Date, dt_fim.Date, chk_fechadas.checked, chk_canceladas.checked).Close
    else
      TFrm_Relatorio.create(nil).venda_simples(dt_inicio.Date, dt_fim.Date, chk_fechadas.checked, chk_canceladas.checked, cliente.RAZAO_SOCIAL).Close
  end;
end;

procedure Tfrm_vw_rel_vendas_simples.btnSearchClick(Sender: TObject);
var
  edt: TEdit;
begin
  edt := TEdit.create(nil);

  Frm_Consulta_Generica := tFrm_Consulta_Generica.create(nil, cgCliente, edt);
  Frm_Consulta_Generica.ShowModal;

  if edt.Text <> '' then
  begin

    cliente := tcliente.create(StrToInt(edt.Text));
    mmCliente.Text := cliente.RAZAO_SOCIAL;

  end;

end;

procedure Tfrm_vw_rel_vendas_simples.cxButton1Click(Sender: TObject);
begin
  if cliente = nil then
    tdialogs.wnalerta('Vendas Simples', 'Nenhum cliente foi selecionado!')
  else
  begin
    cliente := nil;
    mmCliente.Clear;
  end;

end;

procedure Tfrm_vw_rel_vendas_simples.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  Action := cafree;
  self := nil;
end;

procedure Tfrm_vw_rel_vendas_simples.FormShow(Sender: TObject);
begin
  dt_inicio.Date := TEnv.Date.FirstDayOfMonth;
  dt_fim.Date := now;
  chk_fechadas.checked := True;
  chk_canceladas.checked := True;
  mmCliente.Clear;
end;

end.
