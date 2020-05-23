unit vw_atualizacao;

interface

uses
  System.SysUtils, System.Variants, System.Classes,
  Vcl.Controls, Vcl.Forms, SHDocVw,

  cxProgressBar, Vcl.StdCtrls, cxGraphics, cxControls, cxLookAndFeels, cxLookAndFeelPainters, cxContainer, cxEdit, dxSkinsCore, dxSkinBlack, dxSkinBlue, dxSkinBlueprint,
  dxSkinCaramel, dxSkinCoffee,
  dxSkinDarkRoom, dxSkinDarkSide, dxSkinDevExpressDarkStyle, dxSkinDevExpressStyle, dxSkinFoggy, dxSkinGlassOceans, dxSkinHighContrast, dxSkiniMaginary, dxSkinLilian,
  dxSkinLiquidSky,
  dxSkinLondonLiquidSky, dxSkinMcSkin, dxSkinMetropolis, dxSkinMetropolisDark, dxSkinMoneyTwins, dxSkinOffice2007Black, dxSkinOffice2007Blue, dxSkinOffice2007Green,
  dxSkinOffice2007Pink,
  dxSkinOffice2007Silver, dxSkinOffice2010Black, dxSkinOffice2010Blue, dxSkinOffice2010Silver, dxSkinOffice2013DarkGray, dxSkinOffice2013LightGray, dxSkinOffice2013White,
  dxSkinOffice2016Colorful,
  dxSkinOffice2016Dark, dxSkinPumpkin, dxSkinSeven, dxSkinSevenClassic, dxSkinSharp, dxSkinSharpPlus, dxSkinSilver, dxSkinSpringTime, dxSkinStardust, dxSkinSummer2008,
  dxSkinTheAsphaltWorld,
  dxSkinsDefaultPainters, dxSkinValentine, dxSkinVisualStudio2013Blue, dxSkinVisualStudio2013Dark, dxSkinVisualStudio2013Light, dxSkinVS2010, dxSkinWhiteprint, dxSkinXmas2008Blue,
  Vcl.OleCtrls;

type
  Tfrm_atualizacao = class(TForm)
    wbInfo: TWebBrowser;
    lblUpdateFooter: TLabel;
    pbUpdate: TcxProgressBar;
    lblPercent: TLabel;
    lblTransfer: TLabel;
    procedure FormClick(Sender: TObject);
  private
    { Private declarations }
  var
    alreadyProcessed: boolean;
  public
    { Public declarations }
    procedure updateProgress(i: integer);
    procedure config(aversion, htmlcontent: string);
  end;

var
  frm_atualizacao: Tfrm_atualizacao;

implementation

{$R *.dfm}

uses h_Files, v_Dir, h_Functions;

procedure Tfrm_atualizacao.config(aversion, htmlcontent: string);
const
  html = '<html lang="pt-BR"><head><meta charset="UTF-8"><link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/milligram/1.3.0/milligram.min.css"/>' +
    '</head>#csscontent#<body><h1 style="font-weight:bold">Atualizacao SMC LIGHT - v%s</h1><hr/>%s</body></html>';
  css = '<style>body {color:white; background: rgba(14,116,184,1); background: -moz-linear-gradient(top, rgba(14,116,184,1) 7%, rgba(14,116,184,1) 17%, rgba(134,174,204,1) 63%, rgba(134,174,204,1) 68%);'
    + 'background: -webkit-gradient(left top, left bottom, color-stop(7%, rgba(14,116,184,1)), color-stop(17%, rgba(14,116,184,1)), color-stop(63%, rgba(134,174,204,1)), color-stop(68%, rgba(134,174,204,1)));'
    + 'background: -webkit-linear-gradient(top, rgba(14,116,184,1) 7%, rgba(14,116,184,1) 17%, rgba(134,174,204,1) 63%, rgba(134,174,204,1) 68%);' +
    'background: -o-linear-gradient(top, rgba(14,116,184,1) 7%, rgba(14,116,184,1) 17%, rgba(134,174,204,1) 63%, rgba(134,174,204,1) 68%);' +
    'background: -ms-linear-gradient(top, rgba(14,116,184,1) 7%, rgba(14,116,184,1) 17%, rgba(134,174,204,1) 63%, rgba(134,174,204,1) 68%);' +
    'background: linear-gradient(to bottom, rgba(14,116,184,1) 7%, rgba(14,116,184,1) 17%, rgba(134,174,204,1) 63%, rgba(134,174,204,1) 68%);' +
    'filter: progid:DXImageTransform.Microsoft.gradient( startColorstr="#0e74b8", endColorstr="#86aecc", GradientType=0 );}</style>';
begin

  tfile.Delete(tdir.Temp.HTMLUpdate);
  tfile.Append(tdir.Temp.HTMLUpdate, tfunctions.replace(format(html, [aversion, htmlcontent]), '#csscontent#', css));
  wbInfo.Navigate(tdir.Temp.HTMLUpdate);
  pbUpdate.Properties.Min := 0;
  pbUpdate.Properties.Max := 100;
  pbUpdate.Position := 0;
  pbUpdate.show;
  lblPercent.Caption := '0%';
  lblTransfer.Caption := '( 0 MB de 0 MB )';
  wbInfo.Update;
  application.ProcessMessages;
  alreadyProcessed := false;

end;

procedure Tfrm_atualizacao.FormClick(Sender: TObject);
begin
  frm_atualizacao.show;
end;

procedure Tfrm_atualizacao.updateProgress(i: integer);
var
  r, tt, tr: real;
begin
  tt := (i / 1024) / 1024;
  tr := ((pbUpdate.Properties.Max * 1024) / 1024) / 1024;
  pbUpdate.Position := i div 1024;
  r := (((pbUpdate.Position) * 100) / pbUpdate.Properties.Max);
  lblPercent.Caption := format('%s%%', [FormatFloat('##0', r)]);
  lblTransfer.Caption := '( ' + FormatFloat('###,##0.00 MB', tt) + ' de ' + FormatFloat('###,##0.00 MB', tr) + ' )';
  frm_atualizacao.Update;
  frm_atualizacao.show;
end;

end.
