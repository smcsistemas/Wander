unit rel_comissao;

interface

uses
  Winapi.Windows, System.SysUtils, System.Variants,
  System.Classes,
  Vcl.Controls, Vcl.Forms,
  cxEdit,














  cxCheckBox, Vcl.StdCtrls, cxButtons,
  cxGroupBox,
  cxCalendar,

  Data.DB,
  c_globals, h_functions, cxGraphics, cxControls, cxLookAndFeels, cxLookAndFeelPainters, cxContainer, dxSkinsCore, dxSkinBlack, dxSkinBlue, dxSkinBlueprint, dxSkinCaramel, dxSkinCoffee,
  dxSkinDarkRoom, dxSkinDarkSide, dxSkinDevExpressDarkStyle, dxSkinDevExpressStyle, dxSkinFoggy, dxSkinGlassOceans, dxSkinHighContrast, dxSkiniMaginary, dxSkinLilian, dxSkinLiquidSky,
  dxSkinLondonLiquidSky, dxSkinMcSkin, dxSkinMetropolis, dxSkinMetropolisDark, dxSkinMoneyTwins, dxSkinOffice2007Black, dxSkinOffice2007Blue, dxSkinOffice2007Green, dxSkinOffice2007Pink,
  dxSkinOffice2007Silver, dxSkinOffice2010Black, dxSkinOffice2010Blue, dxSkinOffice2010Silver, dxSkinOffice2013DarkGray, dxSkinOffice2013LightGray, dxSkinOffice2013White, dxSkinOffice2016Colorful,
  dxSkinOffice2016Dark, dxSkinPumpkin, dxSkinSeven, dxSkinSevenClassic, dxSkinSharp, dxSkinSharpPlus, dxSkinSilver, dxSkinSpringTime, dxSkinStardust, dxSkinSummer2008, dxSkinTheAsphaltWorld,
  dxSkinsDefaultPainters, dxSkinValentine, dxSkinVisualStudio2013Blue, dxSkinVisualStudio2013Dark, dxSkinVisualStudio2013Light, dxSkinVS2010, dxSkinWhiteprint, dxSkinXmas2008Blue, Vcl.Menus,
  Vcl.ComCtrls, dxCore, cxDateUtils, cxTextEdit, cxMaskEdit, cxDropDownEdit;

type
  Tfrm_rel_comissao = class(TForm)
    cxGroupBox1: TcxGroupBox;
    Imprimir: TcxButton;
    cxGroupBox3: TcxGroupBox;
    chk_venda: TcxCheckBox;
    chk_produto: TcxCheckBox;
    cxGroupBox5: TcxGroupBox;
    Label2: TLabel;
    edt_dt_inicio: TcxDateEdit;
    edt_dt_fim: TcxDateEdit;
    cxGroupBox6: TcxGroupBox;
    edt_consulta: TEdit;
    btn_consul: TcxButton;
    cxGroupBox2: TcxGroupBox;
    chk_data: TcxCheckBox;
    chk_vendedor: TcxCheckBox;
    cxGroupBox4: TcxGroupBox;
    chk_faixa: TcxCheckBox;
    chk_fixa: TcxCheckBox;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
    procedure btn_consulClick(Sender: TObject);
    procedure ImprimirClick(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure edt_dt_inicioKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
    procedure edt_dt_fimKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
    procedure chk_dataPropertiesChange(Sender: TObject);
    procedure chk_vendedorPropertiesChange(Sender: TObject);
    procedure edt_consultaKeyUp(Sender: TObject; var Key: Word; Shift: TShiftState);
    procedure def_checks;
    procedure chk_vendaPropertiesChange(Sender: TObject);
    procedure chk_produtoPropertiesChange(Sender: TObject);
    procedure chk_faixaPropertiesChange(Sender: TObject);
    procedure chk_fixaPropertiesChange(Sender: TObject);
  private
    { Private declarations }

    cod_colab: string;
  public
    { Public declarations }

  end;

var
  frm_rel_comissao: Tfrm_rel_comissao;

implementation

uses
  u_funcoes, relatorios, vw_consulta_generica;

{$R *.dfm}

procedure Tfrm_rel_comissao.btn_consulClick(Sender: TObject);
begin
  frm_consulta_generica := tfrm_consulta_generica.Create(nil, cgVendedor, edt_consulta);
  frm_consulta_generica.ShowModal;
  frm_consulta_generica.free;
  cod_colab := TFunctions.replace(copy(edt_consulta.Text, 0, pos(';', edt_consulta.Text)), ';');
  edt_consulta.Text := TFunctions.replace(edt_consulta.Text, cod_colab + ';');
  def_checks;
end;

procedure Tfrm_rel_comissao.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  Action := caFree;
  Self := nil;
end;

procedure Tfrm_rel_comissao.FormKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
begin
  if Key = VK_ESCAPE then
    Close;
end;

procedure Tfrm_rel_comissao.FormShow(Sender: TObject);
begin
  edt_dt_inicio.Date := strtodate('01/' + FormatDateTime('mm', Date) + '/' + FormatDateTime('yyyy', Date));

  edt_dt_fim.Date := Now;

  chk_venda.Checked := true;
  chk_fixa.Checked := true;
  chk_data.Checked := true;
end;

procedure Tfrm_rel_comissao.ImprimirClick(Sender: TObject);
begin
  cod_colab := TFunctions.ifthen(cod_colab = emptystr, '0', cod_colab);
  edt_dt_inicio.ValidateEdit(false);
  edt_dt_fim.ValidateEdit(false);
  if (chk_venda.Checked = false) and (chk_produto.Checked = false) then
    chk_venda.Checked := true;
  if (chk_data.Checked = false) and (chk_vendedor.Checked = false) then
    chk_data.Checked := true;
  if (chk_fixa.Checked = false) and (chk_faixa.Checked = false) then
    chk_fixa.Checked := true;
  TFrm_Relatorio.Create(nil).Comissoes(edt_dt_inicio.Date, edt_dt_fim.Date, TFunctions.ifthen([chk_venda.Checked, chk_produto.Checked], [rlCsVenda, rlCsProduto]),
    TFunctions.ifthen([(chk_data.Checked = false) and (chk_vendedor.Checked = false), chk_data.Checked, chk_vendedor.Checked], [TOrderByMethod.obmnone, TOrderByMethod.obmData,
    TOrderByMethod.obmVendedor]), TFunctions.ifthen([chk_faixa.Checked, chk_fixa.Checked], [rlCsFaixa, rlCsFixa]), cod_colab).Close;
end;

procedure Tfrm_rel_comissao.edt_consultaKeyUp(Sender: TObject; var Key: Word; Shift: TShiftState);
begin
  if edt_consulta.Text = emptystr then
  begin
    cod_colab := emptystr;
    def_checks;
  end;
end;

procedure Tfrm_rel_comissao.edt_dt_fimKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
begin
  if (Key in [VK_TAB, VK_RETURN]) then
  begin
    edt_dt_fim.ValidateEdit(false);
    if (edt_dt_fim.EditValue <> Null) then
      btn_consul.SetFocus;
  end;
end;

procedure Tfrm_rel_comissao.edt_dt_inicioKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
begin
  if (Key in [VK_TAB, VK_RETURN]) then
  begin
    edt_dt_inicio.ValidateEdit(false);
    if (edt_dt_inicio.EditValue <> Null) then
      edt_dt_fim.SetFocus;
  end;
end;

procedure Tfrm_rel_comissao.chk_dataPropertiesChange(Sender: TObject);
begin
  Alterachecks(chk_data, [chk_vendedor]);
end;

procedure Tfrm_rel_comissao.chk_faixaPropertiesChange(Sender: TObject);
begin
  Alterachecks(chk_faixa, [chk_fixa]);
end;

procedure Tfrm_rel_comissao.chk_fixaPropertiesChange(Sender: TObject);
begin
  Alterachecks(chk_fixa, [chk_faixa]);
end;

procedure Tfrm_rel_comissao.chk_produtoPropertiesChange(Sender: TObject);
begin
  Alterachecks(chk_produto, [chk_venda]);
end;

procedure Tfrm_rel_comissao.chk_vendaPropertiesChange(Sender: TObject);
begin
  Alterachecks(chk_venda, [chk_produto]);
end;

procedure Tfrm_rel_comissao.chk_vendedorPropertiesChange(Sender: TObject);
begin
  Alterachecks(chk_vendedor, [chk_data]);
end;

procedure Tfrm_rel_comissao.def_checks;
  procedure df(value: boolean);
  begin
    chk_data.Checked := value;
    alterarenabled([chk_data, chk_vendedor], value);
  end;

begin
  if (cod_colab = emptystr) then
    df(true)
  else if simplequery('select tipo_colaborador from colaborador where codigo = ' + cod_colab).Fields[0].AsString = '6' then
    df(true)
  else
    df(false)

end;

end.
