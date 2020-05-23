unit alerta;

interface

uses
  System.Classes,
  Vcl.Controls, Vcl.Forms, Vcl.ExtCtrls,















  cxTextEdit, cxMemo, Vcl.StdCtrls, cxButtons, cxGraphics, cxControls, cxLookAndFeels, cxLookAndFeelPainters, cxContainer, cxEdit, dxSkinsCore, dxSkinBlack, dxSkinBlue, dxSkinBlueprint, dxSkinCaramel,
  dxSkinCoffee, dxSkinDarkRoom, dxSkinDarkSide, dxSkinDevExpressDarkStyle, dxSkinDevExpressStyle, dxSkinFoggy, dxSkinGlassOceans, dxSkinHighContrast, dxSkiniMaginary, dxSkinLilian, dxSkinLiquidSky,
  dxSkinLondonLiquidSky, dxSkinMcSkin, dxSkinMetropolis, dxSkinMetropolisDark, dxSkinMoneyTwins, dxSkinOffice2007Black, dxSkinOffice2007Blue, dxSkinOffice2007Green, dxSkinOffice2007Pink,
  dxSkinOffice2007Silver, dxSkinOffice2010Black, dxSkinOffice2010Blue, dxSkinOffice2010Silver, dxSkinOffice2013DarkGray, dxSkinOffice2013LightGray, dxSkinOffice2013White, dxSkinOffice2016Colorful,
  dxSkinOffice2016Dark, dxSkinPumpkin, dxSkinSeven, dxSkinSevenClassic, dxSkinSharp, dxSkinSharpPlus, dxSkinSilver, dxSkinSpringTime, dxSkinStardust, dxSkinSummer2008, dxSkinTheAsphaltWorld,
  dxSkinsDefaultPainters, dxSkinValentine, dxSkinVisualStudio2013Blue, dxSkinVisualStudio2013Dark, dxSkinVisualStudio2013Light, dxSkinVS2010, dxSkinWhiteprint, dxSkinXmas2008Blue, Vcl.Menus,
  dxGDIPlusClasses;

type
  Tfrm_alerta = class(TForm)
    Image1: TImage;
    memo_texto: TcxMemo;
    btn_ok: TcxButton;
    lbl_titulo: TLabel;
    procedure titulo(texto: string);
    procedure mensagem(mensagemx: string);
    procedure btn_okClick(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormShow(Sender: TObject);
    procedure limpartexto;
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frm_alerta: Tfrm_alerta;

implementation

{$R *.dfm}
{ Tfrm_aviso }

procedure Tfrm_alerta.btn_okClick(Sender: TObject);
begin
  Close;
end;

procedure Tfrm_alerta.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  Action := caFree;
  Self := nil;
end;

procedure Tfrm_alerta.FormShow(Sender: TObject);
begin
  btn_ok.SetFocus;
end;

procedure Tfrm_alerta.limpartexto;
begin
  memo_texto.Lines.Clear;
end;

procedure Tfrm_alerta.mensagem(mensagemx: string);
begin
  memo_texto.Lines.Add(mensagemx);
  memo_texto.SelStart := 0;
  memo_texto.SelLength := 0;
end;

procedure Tfrm_alerta.titulo(texto: string);
begin
  lbl_titulo.Caption := texto;
  lbl_titulo.Alignment := taCenter;
end;

end.
