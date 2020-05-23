unit vw_convenio;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls, Vcl.ExtCtrls, cxGraphics, cxLookAndFeels, cxLookAndFeelPainters, Vcl.Menus,
  dxSkinsCore, dxSkinBlack, dxSkinBlue,
  dxSkinBlueprint, dxSkinCaramel, dxSkinCoffee, dxSkinDarkRoom, dxSkinDarkSide, dxSkinDevExpressDarkStyle, dxSkinDevExpressStyle,
  dxSkinFoggy, dxSkinGlassOceans,
  dxSkinHighContrast, dxSkiniMaginary, dxSkinLilian, dxSkinLiquidSky, dxSkinLondonLiquidSky, dxSkinMcSkin, dxSkinMetropolis,
  dxSkinMetropolisDark, dxSkinMoneyTwins,
  dxSkinOffice2007Black, dxSkinOffice2007Blue, dxSkinOffice2007Green, dxSkinOffice2007Pink, dxSkinOffice2007Silver, dxSkinOffice2010Black,
  dxSkinOffice2010Blue,
  dxSkinOffice2010Silver, dxSkinOffice2013DarkGray, dxSkinOffice2013LightGray, dxSkinOffice2013White, dxSkinOffice2016Colorful,
  dxSkinOffice2016Dark, dxSkinPumpkin, dxSkinSeven,
  dxSkinSevenClassic, dxSkinSharp, dxSkinSharpPlus, dxSkinSilver, dxSkinSpringTime, dxSkinStardust, dxSkinSummer2008, dxSkinTheAsphaltWorld,
  dxSkinsDefaultPainters,
  dxSkinValentine, dxSkinVisualStudio2013Blue, dxSkinVisualStudio2013Dark, dxSkinVisualStudio2013Light, dxSkinVS2010, dxSkinWhiteprint,
  dxSkinXmas2008Blue, cxButtons, cxControls,
  cxContainer, cxEdit, cxTextEdit, cxMaskEdit, cxDropDownEdit, cxLookupEdit, cxDBLookupEdit, cxDBLookupComboBox, h_Functions,
  vw_consulta_generica, c_Globals, m_Cliente,
  FireDAC.Stan.Intf, FireDAC.Stan.Option, FireDAC.Stan.Param, FireDAC.Stan.Error, FireDAC.DatS, FireDAC.Phys.Intf, FireDAC.DApt.Intf,
  FireDAC.Stan.Async, FireDAC.DApt, Data.DB,
  FireDAC.Comp.DataSet, FireDAC.Comp.Client, s_module, m_cliente_conveniado, h_Formats, h_Dialogs, h_DB, h_Checks;

type
  Tfrm_convenio = class(TForm)
    Label1: TLabel;
    Shape1: TShape;
    lblCliente: TLabel;
    btnSearch: TcxButton;
    Label3: TLabel;
    Shape2: TShape;
    Shape3: TShape;
    Label4: TLabel;
    GridPanel1: TGridPanel;
    lblCredito: TLabel;
    lblSaldo: TLabel;
    lblVenda: TLabel;
    Label5: TLabel;
    Label8: TLabel;
    Label10: TLabel;
    btn_confirmar: TcxButton;
    btn_cancelar: TcxButton;
    lblSenha: TLabel;
    edtSenha: TcxTextEdit;
    edtConfirmacao: TcxTextEdit;
    lblConfirmacao: TLabel;
    lblObs: TLabel;
    sql_conveniados: TFDQuery;
    ds_conveniados: TDataSource;
    sql_conveniadosid: TFDAutoIncField;
    sql_conveniadosconveniado: TStringField;
    cbConveniado: TcxLookupComboBox;
    procedure btn_cancelarClick(Sender: TObject);
    procedure btn_confirmarClick(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormShow(Sender: TObject);
    procedure btnSearchClick(Sender: TObject);
    procedure cbConveniadoPropertiesEditValueChanged(Sender: TObject);
    procedure edtSenhaKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
    procedure edtConfirmacaoKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
    procedure edtSenhaKeyPress(Sender: TObject; var Key: Char);
    procedure cbConveniadoKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);

  private
    { Private declarations }
    procedure showConfirmacao(showIt: boolean);
    procedure defaultLayout(def: boolean);
    procedure loadConveniados;
    procedure setUpCliente(value: integer);

  var
    cliente: TCliente;
    conveniado: TClienteConveniado;
    m_venda_id: integer;
  public
    { Public declarations }
    class function Execute(venda_id: integer): boolean;
    constructor Create(venda_id: integer); overload;
  end;

var
  frm_convenio: Tfrm_convenio;

implementation

{$R *.dfm}
{ Tfrm_convenio }

procedure Tfrm_convenio.btnSearchClick(Sender: TObject);
var
  edt: TEdit;
begin
  if not tfunctions.CheckOpen(Frm_Consulta_Generica) then
  begin
    edt := TEdit.Create(nil);
    Frm_Consulta_Generica := tfrm_consulta_generica.Create(nil, cgcliente, edt);
    Frm_Consulta_Generica.Showmodal;
    if edt.Text <> '' then
      setUpCliente(strtoint(edt.Text));
  end;
end;

procedure Tfrm_convenio.btn_cancelarClick(Sender: TObject);
begin
  modalresult := mrcancel;
  close;
end;

procedure Tfrm_convenio.btn_confirmarClick(Sender: TObject);
var
  qry: TFDQuery;
begin
  try

    if cliente = nil then
      raise exception.Create('Cliente deve ser informado.');

    if conveniado = nil then
      raise exception.Create('Conveniado deve ser informado.');

    if edtSenha.Text = '' then
      raise exception.Create('Senha deve ser informada.');

    if tchecks.Less(conveniado.saldoDisponivel,
      tdb.simplequery('select sum(valor_debitado) from venda_pagamento where codigo_venda = ? and cod_tipo_pagamento = "101"', [m_venda_id])
      .Fields[0].asExtended) then
      raise exception.Create(format('Saldo insuficiente.' + slinebreak + 'Saldo disponível é de "R$ %f".', [conveniado.saldoDisponivel]));

    if edtConfirmacao.Visible then
    begin
      if edtConfirmacao.Text <> edtSenha.Text then
        raise exception.Create('Senha e Confirmação de senha devem ser idênticas.')
      else
        conveniado.senha := edtSenha.Text;
      conveniado.save;
    end
    else if conveniado.senha <> edtSenha.Text then
      raise exception.Create('Senha incorreta.');

    tdb.ExecQuery('update venda set conveniado_id = ?, nome_cliente = ?, codigo_cliente = ? where codigo_venda = ?',
      [conveniado.ID, TFunctions.IfThen(cliente.NOME_FANTASIA = '', cliente.razao_social, cliente.NOME_FANTASIA), cliente.ID, m_venda_id]);

    modalresult := mrok;
  except
    on e: exception do
      tdialogs.wnAlerta('Convênio', 'Não foi possível finalizar venda com convênio:' + slinebreak + e.Message);

  end;
end;

procedure Tfrm_convenio.cbConveniadoKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
begin
  if Key in [VK_RETURN, VK_TAB] then
    edtSenha.setfocus;
end;

procedure Tfrm_convenio.cbConveniadoPropertiesEditValueChanged(Sender: TObject);
begin
  cbConveniado.validateEdit(false);
  conveniado := nil;
  if cbConveniado.EditValue <> null then
  begin
    conveniado := TClienteConveniado.Create(cbConveniado.EditValue);
    lblCredito.caption := TFormats.Money(conveniado.CREDITO);
    showConfirmacao(conveniado.senha = '');
    lblSaldo.caption := TFormats.Money(conveniado.saldoDisponivel());
  end;
end;

constructor Tfrm_convenio.Create(venda_id: integer);
begin
  inherited Create(nil);
  m_venda_id := venda_id;
  lblVenda.caption := TFormats.Money
    (tdb.simplequery('select sum(valor_debitado) from venda_pagamento where codigo_venda = ? and cod_tipo_pagamento = "101"', [m_venda_id])
    .Fields[0].asExtended);
  cliente := nil;
end;

procedure Tfrm_convenio.defaultLayout(def: boolean);
begin
  if def then
  begin
    lblCredito.caption := 'R$ 0,00';
    lblSaldo.caption := 'R$ 0,00';
    showConfirmacao(false);
  end;
end;

procedure Tfrm_convenio.edtConfirmacaoKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
begin
  if Key = VK_RETURN then
    btn_confirmar.click;
end;

procedure Tfrm_convenio.edtSenhaKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
begin
  if Key = VK_RETURN then
    if edtConfirmacao.Visible then
      edtConfirmacao.setfocus
    else
      btn_confirmar.click;
end;

procedure Tfrm_convenio.edtSenhaKeyPress(Sender: TObject; var Key: Char);
begin
  inherited;
  Key := tfunctions.OnlyNumbers(Key);
end;

class function Tfrm_convenio.Execute(venda_id: integer): boolean;
begin
  with self.Create(venda_id) do
    try
      result := Showmodal = mrok;
    finally
      free;
    end;
end;

procedure Tfrm_convenio.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  Action := cafree;
  self := nil;
end;

procedure Tfrm_convenio.FormShow(Sender: TObject);
var
  qry: TFDQuery;
begin
  defaultLayout(True);
  qry := tdb.simplequery('select codigo_cliente from venda where conveniado_id is not null order by codigo_venda desc limit 1');
  if qry <> nil then
    if (qry.Fields[0].value <> 0) then
      setUpCliente(qry.Fields[0].asInteger);
end;

procedure Tfrm_convenio.loadConveniados;
begin
  sql_conveniados.Active := false;
  sql_conveniados.Parambyname('pcliente_id').asInteger := cliente.ID;
  sql_conveniados.Active := True;
end;

procedure Tfrm_convenio.setUpCliente(value: integer);
begin
  cliente := TCliente.Create(value);
  lblCliente.caption := cliente.razao_social;
  loadConveniados;
  cbConveniado.setfocus();
end;

procedure Tfrm_convenio.showConfirmacao(showIt: boolean);
begin
  lblConfirmacao.Visible := showIt;
  edtConfirmacao.Visible := showIt;
  lblObs.Visible := showIt;
end;

end.
