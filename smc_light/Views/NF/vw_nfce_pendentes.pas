//Verificado automaticamente em 16/06/2020 09:29
unit vw_nfce_pendentes;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, dxGDIPlusClasses, Vcl.ExtCtrls, Vcl.StdCtrls, cxGraphics, cxLookAndFeels, cxLookAndFeelPainters, Vcl.Menus, dxSkinsCore, dxSkinBlack,
  dxSkinBlue, dxSkinBlueprint, dxSkinCaramel, dxSkinCoffee, dxSkinDarkRoom, dxSkinDarkSide, dxSkinDevExpressDarkStyle, dxSkinDevExpressStyle, dxSkinFoggy, dxSkinGlassOceans,
  dxSkinHighContrast, dxSkiniMaginary, dxSkinLilian, dxSkinLiquidSky, dxSkinLondonLiquidSky, dxSkinMcSkin, dxSkinMetropolis, dxSkinMetropolisDark, dxSkinMoneyTwins,
  dxSkinOffice2007Black, dxSkinOffice2007Blue, dxSkinOffice2007Green, dxSkinOffice2007Pink, dxSkinOffice2007Silver, dxSkinOffice2010Black, dxSkinOffice2010Blue,
  dxSkinOffice2010Silver, dxSkinOffice2013DarkGray, dxSkinOffice2013LightGray, dxSkinOffice2013White, dxSkinOffice2016Colorful, dxSkinOffice2016Dark, dxSkinPumpkin, dxSkinSeven,
  dxSkinSevenClassic, dxSkinSharp, dxSkinSharpPlus, dxSkinSilver, dxSkinSpringTime, dxSkinStardust, dxSkinSummer2008, dxSkinTheAsphaltWorld, dxSkinsDefaultPainters,
  dxSkinValentine, dxSkinVisualStudio2013Blue, dxSkinVisualStudio2013Dark, dxSkinVisualStudio2013Light, dxSkinVS2010, dxSkinWhiteprint, dxSkinXmas2008Blue, cxButtons;

type
  Tfrm_nfce_pendentes = class(TForm)
    img1: TImage;
    lbl1: TLabel;
    lbl2: TLabel;
    shp1: TShape;
    lbl3: TLabel;
    lbl4: TLabel;
    lbl5: TLabel;
    cxButton2: TcxButton;
    cxButton1: TcxButton;
    procedure cxButton1Click(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure cxButton2Click(Sender: TObject);
  private
    { Private declarations }

    data_i, data_f: tdatetime;
  public
    { Public declarations }

    constructor Create(pdata_inicio, pdata_fim: tdatetime); overload;
  end;

var
  frm_nfce_pendentes: Tfrm_nfce_pendentes;

implementation

uses
  consul_nfce, h_Functions;

{$R *.dfm}

constructor Tfrm_nfce_pendentes.Create(pdata_inicio, pdata_fim: tdatetime);
begin
  inherited Create(nil);
  data_i := pdata_inicio;
  data_f := pdata_fim;
end;

procedure Tfrm_nfce_pendentes.cxButton1Click(Sender: TObject);
begin
  close;
end;

procedure Tfrm_nfce_pendentes.cxButton2Click(Sender: TObject);
begin
  if not tfunctions.CheckOpen(Frm_consul_nfce) then
  begin
    Frm_consul_nfce := TFrm_consul_nfce.Create(nil);

    with Frm_consul_nfce do
    begin
      edt_periodo_inicio.Date := data_i;
      edt_periodo_fim.Date := data_f;
      chk_autorizadas.Checked := False;
      chk_canceladas.Checked := False;
      chk_inutilizadas.Checked := False;
      chk_pendentes.Checked := true;
      ShowModal;
      close;
    end;
  end;
end;

procedure Tfrm_nfce_pendentes.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  Action := cafree;
  self := nil;
end;

end.
