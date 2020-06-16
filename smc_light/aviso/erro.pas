//Verificado automaticamente em 16/06/2020 09:26
unit erro;

interface

uses

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
  Tfrm_erro = class(TForm)
    Image1: TImage;
    btn_ok: TcxButton;
    lbl_titulo: TLabel;
    memo_texto: TcxMemo;
    procedure titulo(texto: string);
    procedure mensagem(mensagemx: string);
    procedure cxButton1Click(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormShow(Sender: TObject);
    procedure btn_okClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frm_erro: Tfrm_erro;

implementation

{$R *.dfm}

procedure Tfrm_erro.btn_okClick(Sender: TObject);
begin
  Close;
end;

procedure Tfrm_erro.cxButton1Click(Sender: TObject);
begin
  Close;
end;

procedure Tfrm_erro.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  Action := caFree;
  Self := nil;
end;

procedure Tfrm_erro.FormShow(Sender: TObject);
begin
  btn_ok.setfocus;
end;

procedure Tfrm_erro.mensagem(mensagemx: string);
begin
  memo_texto.Lines.Add(mensagemx);
  memo_texto.SelStart := 0;
  memo_texto.SelLength := 0;
end;

procedure Tfrm_erro.titulo(texto: string);
begin
  lbl_titulo.Caption := texto;
  lbl_titulo.Alignment := taCenter;

end;

end.
