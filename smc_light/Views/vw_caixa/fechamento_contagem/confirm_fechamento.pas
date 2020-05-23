unit confirm_fechamento;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, cxGraphics, cxLookAndFeels,
  cxLookAndFeelPainters, Vcl.Menus, dxSkinsCore, cxControls, cxContainer,
  cxEdit, Vcl.StdCtrls, cxTextEdit, cxMaskEdit, cxSpinEdit, cxTimeEdit,
  cxDBEdit, Vcl.ComCtrls, cxGroupBox, cxButtons, dxSkinBlack, dxSkinBlue,
  dxSkinBlueprint, dxSkinCaramel, dxSkinCoffee, dxSkinDarkRoom,
  dxSkinDarkSide, dxSkinDevExpressDarkStyle, dxSkinDevExpressStyle,
  dxSkinFoggy, dxSkinGlassOceans, dxSkinHighContrast, dxSkiniMaginary,
  dxSkinLilian, dxSkinLiquidSky, dxSkinLondonLiquidSky, dxSkinMcSkin,
  dxSkinMetropolis, dxSkinMetropolisDark, dxSkinMoneyTwins,
  dxSkinOffice2007Black, dxSkinOffice2007Blue, dxSkinOffice2007Green,
  dxSkinOffice2007Pink, dxSkinOffice2007Silver, dxSkinOffice2010Black,
  dxSkinOffice2010Blue, dxSkinOffice2010Silver, dxSkinOffice2013DarkGray,
  dxSkinOffice2013LightGray, dxSkinOffice2013White,
  dxSkinOffice2016Colorful, dxSkinOffice2016Dark, dxSkinPumpkin,
  dxSkinSeven, dxSkinSevenClassic, dxSkinSharp, dxSkinSharpPlus,
  dxSkinSilver, dxSkinSpringTime, dxSkinStardust, dxSkinSummer2008,
  dxSkinTheAsphaltWorld, dxSkinsDefaultPainters, dxSkinValentine,
  dxSkinVisualStudio2013Blue, dxSkinVisualStudio2013Dark,
  dxSkinVisualStudio2013Light, dxSkinVS2010, dxSkinWhiteprint,
  dxSkinXmas2008Blue, vw_fechar_caixa, c_Globals, u_funcoes, relatorios,
  v_Env, h_Functions, v_Dir, FireDAC.Stan.Intf, FireDAC.Stan.Option,
  FireDAC.Stan.Param, FireDAC.Stan.Error, FireDAC.DatS, FireDAC.Phys.Intf,
  FireDAC.DApt.Intf, FireDAC.Stan.Async, FireDAC.DApt, Data.DB,
  FireDAC.Comp.DataSet, FireDAC.Comp.Client;

type
  TFrm_conf_fechamento = class(TForm)
    cxButton8: TcxButton;
    cxGroupBox1: TcxGroupBox;
    DateTimePicker1: TDateTimePicker;
    cxGroupBox2: TcxGroupBox;
    Label2: TLabel;
    Label4: TLabel;
    Label10: TLabel;
    edtOperador: TEdit;
    edtPDV: TEdit;
    edtTurno: TEdit;
    cxTimeEdit1: TcxTimeEdit;
    qCaixa: TFDQuery;
    qCaixaId: TFDAutoIncField;
    qCaixaData: TDateTimeField;
    qCaixaCodigoTurno: TIntegerField;
    qCaixaCodigoUsuario: TIntegerField;
    qCaixaSituacao: TStringField;
    qCaixaPDV: TStringField;
    qCaixaVendaDinheiro: TBCDField;
    qCaixaVendaCheque: TBCDField;
    qCaixaVendaCartaoCredito: TBCDField;
    qCaixaVendaCartaoDebito: TBCDField;
    qCaixaVendaConvenio: TBCDField;
    qCaixaVendaCrediario: TBCDField;
    qCaixaVendaOutros: TBCDField;
    qCaixaTotalRecebimento: TBCDField;
    qCaixaTotalSuprimento: TBCDField;
    qCaixaTotalSangria: TBCDField;
    qCaixaTotalVendas: TBCDField;
    qCaixaTotalCaixa: TBCDField;
    qCaixaTotalAbertura: TBCDField;
    qCaixaFechamento: TDateTimeField;
    qCaixaConferenciaDinheiro: TBCDField;
    qCaixaConferenciaCheque: TBCDField;
    qCaixaConferenciaCartaoCredito: TBCDField;
    qCaixaConferenciaCartaoDebito: TBCDField;
    qCaixaConferenciaConvenio: TBCDField;
    qCaixaConferenciaCrediario: TBCDField;
    qCaixaConferenciaOutros: TBCDField;
    qCaixaTotalDiferenca: TBCDField;
    qCaixaQuebraDinheiro: TBCDField;
    qCaixaQuebraCartaoDebito: TBCDField;
    qCaixaQuebraCartaoCredito: TBCDField;
    qCaixaQuebraCheque: TBCDField;
    qCaixaQuebraConvenio: TBCDField;
    qCaixaDet: TFDQuery;
    qCaixaDetId: TFDAutoIncField;
    qCaixaDetDescricao: TStringField;
    qCaixaDetOperacao: TStringField;
    qCaixaDetDescricaoOperacao: TStringField;
    qCaixaDetIdCaixa: TIntegerField;
    qCaixaDetTotal: TBCDField;
    qCaixaDetOperador: TStringField;
    qCaixaDetLancamento: TDateTimeField;
    qCaixaDetCodigoUsuario: TIntegerField;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);

   // procedure FormShow(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
    caixa: TFrm_fechar_caixa;
  end;

var
  Frm_conf_fechamento: TFrm_conf_fechamento;

implementation

{$R *.dfm}



procedure TFrm_conf_fechamento.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  Action := cafree;
  self := nil;
end;

end.
