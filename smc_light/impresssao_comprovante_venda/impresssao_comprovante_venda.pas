unit impresssao_comprovante_venda;

interface

uses
  Winapi.Windows, System.SysUtils, System.Classes,
  Vcl.Controls, Vcl.Forms,

  cxCheckBox,
  Vcl.StdCtrls, cxButtons,













  u_funcoes, cxGraphics, cxLookAndFeels, cxLookAndFeelPainters, Vcl.Menus, dxSkinsCore, dxSkinBlack, dxSkinBlue, dxSkinBlueprint, dxSkinCaramel, dxSkinCoffee, dxSkinDarkRoom, dxSkinDarkSide,
  dxSkinDevExpressDarkStyle, dxSkinDevExpressStyle, dxSkinFoggy, dxSkinGlassOceans, dxSkinHighContrast, dxSkiniMaginary, dxSkinLilian, dxSkinLiquidSky, dxSkinLondonLiquidSky, dxSkinMcSkin,
  dxSkinMetropolis, dxSkinMetropolisDark, dxSkinMoneyTwins, dxSkinOffice2007Black, dxSkinOffice2007Blue, dxSkinOffice2007Green, dxSkinOffice2007Pink, dxSkinOffice2007Silver, dxSkinOffice2010Black,
  dxSkinOffice2010Blue, dxSkinOffice2010Silver, dxSkinOffice2013DarkGray, dxSkinOffice2013LightGray, dxSkinOffice2013White, dxSkinOffice2016Colorful, dxSkinOffice2016Dark, dxSkinPumpkin, dxSkinSeven,
  dxSkinSevenClassic, dxSkinSharp, dxSkinSharpPlus, dxSkinSilver, dxSkinSpringTime, dxSkinStardust, dxSkinSummer2008, dxSkinTheAsphaltWorld, dxSkinsDefaultPainters, dxSkinValentine,
  dxSkinVisualStudio2013Blue, dxSkinVisualStudio2013Dark, dxSkinVisualStudio2013Light, dxSkinVS2010, dxSkinWhiteprint, dxSkinXmas2008Blue, cxControls, cxContainer, cxEdit;

type
  Tfrm_impress = class(TForm)
    cxButton1: TcxButton;
    Label1: TLabel;
    Label2: TLabel;
    chk_nfce: TcxCheckBox;
    chk_comprovante: TcxCheckBox;
    procedure FormKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure cxButton1Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frm_impress: Tfrm_impress;
  m_caminhoxml: string;
  m_errorotina: string;

implementation

{$R *.dfm}

uses U_ConfNFCE;

procedure Tfrm_impress.cxButton1Click(Sender: TObject);
begin
  if (not chk_nfce.Checked) and (not chk_comprovante.Checked) then
    wnalerta('Selecionar NFC-e Comprovante', slinebreak + slinebreak + 'Selecione um dos documentos para ser emitido!')
  else
  begin
    if chk_nfce.Checked then
    begin
      frm_confnfce.boolnfce := true;
    end;
    if chk_comprovante.Checked then
    begin
      frm_confnfce.boolvenda := true;
    end;
    close;
  end;
end;

procedure Tfrm_impress.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  Action := caFree;
  frm_impress := nil;
end;

procedure Tfrm_impress.FormKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
begin

  if Key = vk_f1 then
  begin
    if chk_nfce.Enabled then
      if not chk_nfce.Checked then
        chk_nfce.Checked := true
      else
        chk_nfce.Checked := false;
  end;

  if Key = vk_f2 then
  begin
    if chk_comprovante.Enabled then
      if not chk_comprovante.Checked then
        chk_comprovante.Checked := true
      else
        chk_comprovante.Checked := false;
  end;
  if (Key = vk_f3) or (Key = vk_escape) then
    cxButton1.Click;
end;

end.
