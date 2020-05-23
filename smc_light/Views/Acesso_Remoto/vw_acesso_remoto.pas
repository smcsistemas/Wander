unit vw_acesso_remoto;

interface

uses
  Winapi.Windows, System.Classes,
  Vcl.Controls, Vcl.Forms,











  cxButtons, h_Files, v_Dir, Vcl.ExtCtrls, cxGraphics, cxLookAndFeels, cxLookAndFeelPainters, Vcl.Menus, dxSkinsCore, dxSkinBlack, dxSkinBlue, dxSkinBlueprint, dxSkinCaramel, dxSkinCoffee,
  dxSkinDarkRoom, dxSkinDarkSide, dxSkinDevExpressDarkStyle, dxSkinDevExpressStyle, dxSkinFoggy, dxSkinGlassOceans, dxSkinHighContrast, dxSkiniMaginary, dxSkinLilian, dxSkinLiquidSky,
  dxSkinLondonLiquidSky, dxSkinMcSkin, dxSkinMetropolis, dxSkinMetropolisDark, dxSkinMoneyTwins, dxSkinOffice2007Black, dxSkinOffice2007Blue, dxSkinOffice2007Green, dxSkinOffice2007Pink,
  dxSkinOffice2007Silver, dxSkinOffice2010Black, dxSkinOffice2010Blue, dxSkinOffice2010Silver, dxSkinOffice2013DarkGray, dxSkinOffice2013LightGray, dxSkinOffice2013White, dxSkinOffice2016Colorful,
  dxSkinOffice2016Dark, dxSkinPumpkin, dxSkinSeven, dxSkinSevenClassic, dxSkinSharp, dxSkinSharpPlus, dxSkinSilver, dxSkinSpringTime, dxSkinStardust, dxSkinSummer2008, dxSkinTheAsphaltWorld,
  dxSkinsDefaultPainters, dxSkinValentine, dxSkinVisualStudio2013Blue, dxSkinVisualStudio2013Dark, dxSkinVisualStudio2013Light, dxSkinVS2010, dxSkinWhiteprint, dxSkinXmas2008Blue, Vcl.StdCtrls,
  dxGDIPlusClasses;

type
  Tfrm_acesso_remoto = class(TForm)
    cxButton1: TcxButton;
    cxButton2: TcxButton;
    cxButton3: TcxButton;
    Image1: TImage;
    procedure cxButton1Click(Sender: TObject);
    procedure cxButton2Click(Sender: TObject);
    procedure cxButton3Click(Sender: TObject);
    procedure FormKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frm_acesso_remoto: Tfrm_acesso_remoto;

implementation



{$R *.dfm}

procedure Tfrm_acesso_remoto.cxButton1Click(Sender: TObject);
begin
  TFile.Open(TDir.AcessoRemoto.TeamViewer);
end;

procedure Tfrm_acesso_remoto.cxButton2Click(Sender: TObject);
begin
  TFile.Open(TDir.AcessoRemoto.AnyDesk);
end;

procedure Tfrm_acesso_remoto.cxButton3Click(Sender: TObject);
begin
  TFile.Open(TDir.AcessoRemoto.Supremo);
end;

procedure Tfrm_acesso_remoto.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  Action := caFree;
  self := nil
end;

procedure Tfrm_acesso_remoto.FormKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
begin
  if Key = VK_ESCAPE then
    Close;
end;

end.
