unit rel_vw_movimentacao_caixa;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, cxGraphics, cxControls, cxLookAndFeels, cxLookAndFeelPainters, cxContainer, cxEdit, dxSkinsCore,
  dxSkinBlack, dxSkinBlue, dxSkinBlueprint,
  dxSkinCaramel, dxSkinCoffee, dxSkinDarkRoom, dxSkinDarkSide, dxSkinDevExpressDarkStyle, dxSkinDevExpressStyle, dxSkinFoggy,
  dxSkinGlassOceans, dxSkinHighContrast,
  dxSkiniMaginary, dxSkinLilian, dxSkinLiquidSky, dxSkinLondonLiquidSky, dxSkinMcSkin, dxSkinMetropolis, dxSkinMetropolisDark,
  dxSkinMoneyTwins, dxSkinOffice2007Black,
  dxSkinOffice2007Blue, dxSkinOffice2007Green, dxSkinOffice2007Pink, dxSkinOffice2007Silver, dxSkinOffice2010Black, dxSkinOffice2010Blue,
  dxSkinOffice2010Silver,
  dxSkinOffice2013DarkGray, dxSkinOffice2013LightGray, dxSkinOffice2013White, dxSkinOffice2016Colorful, dxSkinOffice2016Dark, dxSkinPumpkin,
  dxSkinSeven, dxSkinSevenClassic,
  dxSkinSharp, dxSkinSharpPlus, dxSkinSilver, dxSkinSpringTime, dxSkinStardust, dxSkinSummer2008, dxSkinTheAsphaltWorld,
  dxSkinsDefaultPainters, dxSkinValentine,
  dxSkinVisualStudio2013Blue, dxSkinVisualStudio2013Dark, dxSkinVisualStudio2013Light, dxSkinVS2010, dxSkinWhiteprint, dxSkinXmas2008Blue,
  Vcl.ComCtrls, dxCore, cxDateUtils,
  cxCheckBox, cxTextEdit, cxMaskEdit, cxDropDownEdit, cxCalendar, Vcl.StdCtrls, cxGroupBox, Vcl.Menus, cxButtons;

type
  Tfrm_movimentacao_caixa = class(TForm)
    cxGroupBox1: TcxGroupBox;
    lbl1: TLabel;
    lbl2: TLabel;
    dt_inicio: TcxDateEdit;
    dt_fim: TcxDateEdit;
    cxGroupBox2: TcxGroupBox;
    chk_dinheiro: TcxCheckBox;
    chk_cheque: TcxCheckBox;
    btnGerar: TcxButton;
    chk_credito: TcxCheckBox;
    chk_debito: TcxCheckBox;
    chk_presente: TcxCheckBox;
    chk_refeicao: TcxCheckBox;
    chk_vale: TcxCheckBox;
    chk_loja: TcxCheckBox;
    chk_outros: TcxCheckBox;
    chk_promissoria: TcxCheckBox;
    chk_fiado: TcxCheckBox;
    chk_combustivel: TcxCheckBox;
    cxGroupBox3: TcxGroupBox;
    chk_produtos: TcxCheckBox;
    chk_todos: TcxCheckBox;
    cbConvenio: TcxCheckBox;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure btnGerarClick(Sender: TObject);
    procedure chk_todosPropertiesEditValueChanged(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }

    constructor Create(data_inicio, data_fim: tdatetime); overload;
  end;

var
  frm_movimentacao_caixa: Tfrm_movimentacao_caixa;

implementation

uses
  relatorios, v_Env, h_Functions, h_DB;

{$R *.dfm}

procedure Tfrm_movimentacao_caixa.btnGerarClick(Sender: TObject);
begin
  tfrm_relatorio.Create(nil).MovimentacaoCaixa(dt_inicio.Date, dt_fim.Date,
    tdb.Genin([chk_dinheiro.Checked, chk_cheque.Checked, chk_credito.Checked, chk_debito.Checked, chk_loja.Checked, chk_vale.Checked,
    chk_refeicao.Checked, chk_presente.Checked, chk_combustivel.Checked, chk_outros.Checked, chk_fiado.Checked, chk_promissoria.Checked,
    cbConvenio.Checked], ['01', '02', '03', '04', '05', '10', '11', '12', '13', '99', '100', '06', '101']), chk_produtos.Checked).Close;

end;

procedure Tfrm_movimentacao_caixa.chk_todosPropertiesEditValueChanged(Sender: TObject);
begin
  TFunctions.ChangeChecked([chk_dinheiro, chk_cheque, chk_credito, chk_debito, chk_loja, chk_vale, chk_refeicao, chk_presente,
    chk_combustivel, chk_outros, chk_fiado, chk_promissoria], chk_todos.Checked);
end;

constructor Tfrm_movimentacao_caixa.Create(data_inicio, data_fim: tdatetime);
begin

  inherited Create(nil);
  dt_inicio.Date := data_inicio;
  dt_fim.Date := data_fim;

end;

procedure Tfrm_movimentacao_caixa.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  Action := cafree;
  Self := nil;
end;

end.
