//Verificado automaticamente em 16/06/2020 09:27
unit carregando_dados;

interface

uses
  System.Classes,
  Vcl.Controls, Vcl.Forms, Vcl.ComCtrls, Vcl.ExtCtrls,

  cxLabel, cxGraphics, cxControls, cxLookAndFeels, cxLookAndFeelPainters, cxContainer, cxEdit, dxSkinsCore, dxSkinBlack, dxSkinBlue, dxSkinBlueprint, dxSkinCaramel, dxSkinCoffee, dxSkinDarkRoom,
  dxSkinDarkSide, dxSkinDevExpressDarkStyle, dxSkinDevExpressStyle, dxSkinFoggy, dxSkinGlassOceans, dxSkinHighContrast, dxSkiniMaginary, dxSkinLilian, dxSkinLiquidSky, dxSkinLondonLiquidSky,
  dxSkinMcSkin, dxSkinMetropolis, dxSkinMetropolisDark, dxSkinMoneyTwins, dxSkinOffice2007Black, dxSkinOffice2007Blue, dxSkinOffice2007Green, dxSkinOffice2007Pink, dxSkinOffice2007Silver,
  dxSkinOffice2010Black, dxSkinOffice2010Blue, dxSkinOffice2010Silver, dxSkinOffice2013DarkGray, dxSkinOffice2013LightGray, dxSkinOffice2013White, dxSkinOffice2016Colorful, dxSkinOffice2016Dark,
  dxSkinPumpkin, dxSkinSeven, dxSkinSevenClassic, dxSkinSharp, dxSkinSharpPlus, dxSkinSilver, dxSkinSpringTime, dxSkinStardust, dxSkinSummer2008, dxSkinTheAsphaltWorld, dxSkinsDefaultPainters,
  dxSkinValentine, dxSkinVisualStudio2013Blue, dxSkinVisualStudio2013Dark, dxSkinVisualStudio2013Light, dxSkinVS2010, dxSkinWhiteprint, dxSkinXmas2008Blue, dxGDIPlusClasses;

type
  TFrm_Carregando_Dados = class(TForm)
    Image1: TImage;
    pb_barra_progresso: TProgressBar;
    lbl_msg: TcxLabel;
    lbl_titulo: TcxLabel;
    Image2: TImage;
    procedure PreencherBarra(Contador: Integer);
    procedure MudarLabel(Mensagem: String);
    Procedure Titulo(tittle: string);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Frm_Carregando_Dados: TFrm_Carregando_Dados;

implementation

{$R *.dfm}
{ TFrm_Carregando_Dados }

procedure TFrm_Carregando_Dados.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  Action := caFree;
  self := Nil;
end;

procedure TFrm_Carregando_Dados.MudarLabel(Mensagem: String);
begin
  lbl_msg.Caption := Mensagem;
end;

procedure TFrm_Carregando_Dados.PreencherBarra(Contador: Integer);
begin
  pb_barra_progresso.Position := Contador;
  Update;
end;

procedure TFrm_Carregando_Dados.Titulo(tittle: string);
begin
  lbl_titulo.Caption := tittle;
end;

end.
