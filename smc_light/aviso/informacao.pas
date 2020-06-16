//Verificado automaticamente em 16/06/2020 09:26
unit informacao;

interface

uses
  System.SysUtils,
  System.Classes,
  Vcl.Controls, Vcl.Forms, Vcl.ExtCtrls,

  Vcl.StdCtrls, cxButtons, cxTextEdit, cxMemo, cxGraphics, cxLookAndFeels, cxLookAndFeelPainters, Vcl.Menus, dxSkinsCore, dxSkinBlack, dxSkinBlue, dxSkinBlueprint, dxSkinCaramel, dxSkinCoffee,
  dxSkinDarkRoom, dxSkinDarkSide, dxSkinDevExpressDarkStyle, dxSkinDevExpressStyle, dxSkinFoggy, dxSkinGlassOceans, dxSkinHighContrast, dxSkiniMaginary, dxSkinLilian, dxSkinLiquidSky,
  dxSkinLondonLiquidSky, dxSkinMcSkin, dxSkinMetropolis, dxSkinMetropolisDark, dxSkinMoneyTwins, dxSkinOffice2007Black, dxSkinOffice2007Blue, dxSkinOffice2007Green, dxSkinOffice2007Pink,
  dxSkinOffice2007Silver, dxSkinOffice2010Black, dxSkinOffice2010Blue, dxSkinOffice2010Silver, dxSkinOffice2013DarkGray, dxSkinOffice2013LightGray, dxSkinOffice2013White, dxSkinOffice2016Colorful,
  dxSkinOffice2016Dark, dxSkinPumpkin, dxSkinSeven, dxSkinSevenClassic, dxSkinSharp, dxSkinSharpPlus, dxSkinSilver, dxSkinSpringTime, dxSkinStardust, dxSkinSummer2008, dxSkinTheAsphaltWorld,
  dxSkinsDefaultPainters, dxSkinValentine, dxSkinVisualStudio2013Blue, dxSkinVisualStudio2013Dark, dxSkinVisualStudio2013Light, dxSkinVS2010, dxSkinWhiteprint, dxSkinXmas2008Blue, cxControls,
  cxContainer, cxEdit, dxGDIPlusClasses;

type
  Tfrm_informacao = class(TForm)
    Image1: TImage;
    btn_ok: TcxButton;
    lbl_titulo: TLabel;
    memo_texto: TcxMemo;
    procedure titulo(texto: string);
    procedure mensagem(mensagemx: string);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure btn_okClick(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure closeform(Sender: TObject);
    procedure FormCreate(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
    Timer: cardinal;
    tmr: TTimer;
  end;

var
  frm_informacao: Tfrm_informacao;

implementation

{$R *.dfm}

procedure Tfrm_informacao.btn_okClick(Sender: TObject);
begin
  close;
end;

procedure Tfrm_informacao.closeform(Sender: TObject);
begin
  btn_ok.Click;
end;

procedure Tfrm_informacao.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  Action := caFree;
  Self := nil;
end;

procedure Tfrm_informacao.FormCreate(Sender: TObject);
begin
  Timer := 0;
end;

procedure Tfrm_informacao.FormShow(Sender: TObject);
begin
  if Timer <> 0 then
  begin
    tmr := TTimer.Create(nil);
    tmr.Enabled := false;
    tmr.Interval := Timer;
    tmr.OnTimer := closeform;
    Enabled := true;
  end;
  btn_ok.SetFocus;
end;

procedure Tfrm_informacao.mensagem(mensagemx: string);
begin
  memo_texto.Lines.Add(mensagemx);
  memo_texto.SelStart := 0;
  memo_texto.SelLength := 0;
end;

procedure Tfrm_informacao.titulo(texto: string);
begin
  lbl_titulo.Caption := texto;
  lbl_titulo.Alignment := taCenter;
end;

end.
