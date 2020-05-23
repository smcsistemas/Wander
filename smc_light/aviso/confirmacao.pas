unit confirmacao;

interface

uses
  Winapi.Windows, System.SysUtils, System.Classes,
  Vcl.Controls, Vcl.Forms, Vcl.ExtCtrls,















  cxTextEdit, cxMemo, Vcl.StdCtrls, cxButtons, cxGraphics, cxLookAndFeels, cxLookAndFeelPainters, Vcl.Menus, dxSkinsCore, dxSkinBlack, dxSkinBlue, dxSkinBlueprint, dxSkinCaramel, dxSkinCoffee,
  dxSkinDarkRoom, dxSkinDarkSide, dxSkinDevExpressDarkStyle, dxSkinDevExpressStyle, dxSkinFoggy, dxSkinGlassOceans, dxSkinHighContrast, dxSkiniMaginary, dxSkinLilian, dxSkinLiquidSky,
  dxSkinLondonLiquidSky, dxSkinMcSkin, dxSkinMetropolis, dxSkinMetropolisDark, dxSkinMoneyTwins, dxSkinOffice2007Black, dxSkinOffice2007Blue, dxSkinOffice2007Green, dxSkinOffice2007Pink,
  dxSkinOffice2007Silver, dxSkinOffice2010Black, dxSkinOffice2010Blue, dxSkinOffice2010Silver, dxSkinOffice2013DarkGray, dxSkinOffice2013LightGray, dxSkinOffice2013White, dxSkinOffice2016Colorful,
  dxSkinOffice2016Dark, dxSkinPumpkin, dxSkinSeven, dxSkinSevenClassic, dxSkinSharp, dxSkinSharpPlus, dxSkinSilver, dxSkinSpringTime, dxSkinStardust, dxSkinSummer2008, dxSkinTheAsphaltWorld,
  dxSkinsDefaultPainters, dxSkinValentine, dxSkinVisualStudio2013Blue, dxSkinVisualStudio2013Dark, dxSkinVisualStudio2013Light, dxSkinVS2010, dxSkinWhiteprint, dxSkinXmas2008Blue, cxControls,
  cxContainer, cxEdit, dxGDIPlusClasses;

type
  Tfrm_confirmacao = class(TForm)
    btn_ok: TcxButton;
    lbl_titulo: TLabel;
    Image1: TImage;
    cxButton1: TcxButton;
    memo_texto: TcxMemo;
    procedure titulo(texto: string);
    procedure btn_okClick(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormShow(Sender: TObject);
    procedure mensagem(texto: string);
    procedure cxButton1Click(Sender: TObject);
    procedure limpar;
    procedure FormKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frm_confirmacao: Tfrm_confirmacao;
  modalvalue: integer;

implementation

{$R *.dfm}
{ Tfrm_aviso }

procedure Tfrm_confirmacao.btn_okClick(Sender: TObject);
begin
  modalvalue := mrok;
  Close;
end;

procedure Tfrm_confirmacao.cxButton1Click(Sender: TObject);
begin
  modalvalue := mrCancel;
  Close;
end;

procedure Tfrm_confirmacao.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  Action := caFree;
  modalresult := modalvalue;
end;

procedure Tfrm_confirmacao.FormKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
begin
  if Key = vk_escape then
    cxButton1.Click;
end;

procedure Tfrm_confirmacao.FormShow(Sender: TObject);
begin
  btn_ok.SetFocus;
end;

procedure Tfrm_confirmacao.limpar;
begin
  memo_texto.Clear;
end;

procedure Tfrm_confirmacao.mensagem(texto: string);
begin
  memo_texto.lines.Add(texto);
  memo_texto.SelLength := 0;
  memo_texto.SelStart := 0;
end;

procedure Tfrm_confirmacao.titulo(texto: string);
begin
  lbl_titulo.Caption := texto;
  lbl_titulo.Alignment := taCenter;
end;

end.
