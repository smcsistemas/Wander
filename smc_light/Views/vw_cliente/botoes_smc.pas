//Verificado automaticamente em 16/06/2020 09:29
unit botoes_smc;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, cxGraphics, cxLookAndFeels,
  cxLookAndFeelPainters, Vcl.Menus, dxSkinsCore, dxSkinOffice2013White,
  Vcl.StdCtrls, cxButtons, dxSkinBlack, dxSkinBlue, dxSkinBlueprint,
  dxSkinCaramel, dxSkinCoffee, dxSkinDarkRoom, dxSkinDarkSide,
  dxSkinDevExpressDarkStyle, dxSkinDevExpressStyle, dxSkinFoggy,
  dxSkinGlassOceans, dxSkinHighContrast, dxSkiniMaginary, dxSkinLilian,
  dxSkinLiquidSky, dxSkinLondonLiquidSky, dxSkinMcSkin, dxSkinMetropolis,
  dxSkinMetropolisDark, dxSkinMoneyTwins, dxSkinOffice2007Black,
  dxSkinOffice2007Blue, dxSkinOffice2007Green, dxSkinOffice2007Pink,
  dxSkinOffice2007Silver, dxSkinOffice2010Black, dxSkinOffice2010Blue,
  dxSkinOffice2010Silver, dxSkinOffice2013DarkGray, dxSkinOffice2013LightGray,
  dxSkinOffice2016Colorful, dxSkinOffice2016Dark, dxSkinPumpkin, dxSkinSeven,
  dxSkinSevenClassic, dxSkinSharp, dxSkinSharpPlus, dxSkinSilver,
  dxSkinSpringTime, dxSkinStardust, dxSkinSummer2008, dxSkinTheAsphaltWorld,
  dxSkinsDefaultPainters, dxSkinValentine, dxSkinVisualStudio2013Blue,
  dxSkinVisualStudio2013Dark, dxSkinVisualStudio2013Light, dxSkinVS2010,
  dxSkinWhiteprint, dxSkinXmas2008Blue;

type
  Tfmr_smc_btn = class(TForm)
    ScrollBox1: TScrollBox;
    cxButton1: TcxButton;
    cxButton2: TcxButton;
    cxButton3: TcxButton;
    cxButton5: TcxButton;
    cxButton7: TcxButton;
    cxButton8: TcxButton;
    cxButton9: TcxButton;
    cxButton10: TcxButton;
    procedure cxButton5Click(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure cxButton9Click(Sender: TObject);
    procedure cxButton10Click(Sender: TObject);
    procedure cxButton7Click(Sender: TObject);
    procedure cxButton1Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  fmr_smc_btn: Tfmr_smc_btn;

implementation

{$R *.dfm}

uses {ad_contador,} cad_consultor, cad_contador, cancelamento_contrato, treinamento;

procedure Tfmr_smc_btn.cxButton10Click(Sender: TObject);
begin
frm_cancelamento_contrato := Tfrm_cancelamento_contrato.Create(nil);
frm_cancelamento_contrato.ShowModal;
end;

procedure Tfmr_smc_btn.cxButton1Click(Sender: TObject);
begin
  frm_cad_contador := Tfrm_cad_contador.Create(nil);
  frm_cad_contador.ShowModal;
end;

procedure Tfmr_smc_btn.cxButton5Click(Sender: TObject);
begin
close;
end;

procedure Tfmr_smc_btn.cxButton7Click(Sender: TObject);
begin
frm_controle_treinamento := Tfrm_controle_treinamento.Create(nil);
frm_controle_treinamento.ShowModal;
end;

procedure Tfmr_smc_btn.cxButton9Click(Sender: TObject);
begin
frm_cad_consultor := Tfrm_cad_consultor.Create(nil);
frm_cad_consultor.ShowModal;
end;

procedure Tfmr_smc_btn.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  Action := cafree;
  self := nil;
end;

end.
