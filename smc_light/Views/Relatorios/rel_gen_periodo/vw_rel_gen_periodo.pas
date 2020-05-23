unit vw_rel_gen_periodo;

interface

uses
  Winapi.Windows, System.SysUtils, System.Variants, System.Classes,
  Vcl.Controls, Vcl.Forms, cxEdit,







  cxCalendar, Vcl.StdCtrls, cxButtons, cxGraphics, cxControls, cxLookAndFeels, cxLookAndFeelPainters, cxContainer, Vcl.ComCtrls, dxCore, cxDateUtils, dxSkinsCore, dxSkinBlack, dxSkinBlue,
  dxSkinBlueprint, dxSkinCaramel, dxSkinCoffee, dxSkinDarkRoom, dxSkinDarkSide, dxSkinDevExpressDarkStyle, dxSkinDevExpressStyle, dxSkinFoggy, dxSkinGlassOceans, dxSkinHighContrast, dxSkiniMaginary,
  dxSkinLilian, dxSkinLiquidSky, dxSkinLondonLiquidSky, dxSkinMcSkin, dxSkinMetropolis, dxSkinMetropolisDark, dxSkinMoneyTwins, dxSkinOffice2007Black, dxSkinOffice2007Blue, dxSkinOffice2007Green,
  dxSkinOffice2007Pink, dxSkinOffice2007Silver, dxSkinOffice2010Black, dxSkinOffice2010Blue, dxSkinOffice2010Silver, dxSkinOffice2013DarkGray, dxSkinOffice2013LightGray, dxSkinOffice2013White,
  dxSkinOffice2016Colorful, dxSkinOffice2016Dark, dxSkinPumpkin, dxSkinSeven, dxSkinSevenClassic, dxSkinSharp, dxSkinSharpPlus, dxSkinSilver, dxSkinSpringTime, dxSkinStardust, dxSkinSummer2008,
  dxSkinTheAsphaltWorld, dxSkinsDefaultPainters, dxSkinValentine, dxSkinVisualStudio2013Blue, dxSkinVisualStudio2013Dark, dxSkinVisualStudio2013Light, dxSkinVS2010, dxSkinWhiteprint,
  dxSkinXmas2008Blue, Vcl.Menus, cxTextEdit, cxMaskEdit, cxDropDownEdit;

type
  Tfrm_rel_gen_periodo = class(TForm)
    grp: TGroupBox;
    edt_dt_inicio: TcxDateEdit;
    edt_dt_fim: TcxDateEdit;
    btn_imprimir: TcxButton;
    Label1: TLabel;
    Label2: TLabel;
    procedure btn_imprimirClick(Sender: TObject);
    procedure edt_dt_inicioKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
    procedure edt_dt_fimKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
    procedure FormShow(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
  private
    { Private declarations }
  public
    { Public declarations }
    m_sr: boolean;
    constructor Create(xcaption: string); overload;

  end;

var
  frm_rel_gen_periodo: Tfrm_rel_gen_periodo;

implementation

{$R *.dfm}

constructor Tfrm_rel_gen_periodo.Create(xcaption: string);
begin
  inherited Create(nil);
  self.caption := xcaption;
  m_sr := false;
end;

procedure Tfrm_rel_gen_periodo.edt_dt_fimKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
begin
  if (Key in [VK_TAB, VK_RETURN]) then
  begin
    edt_dt_fim.ValidateEdit(false);
    if (edt_dt_fim.EditValue <> Null) then
      btn_imprimir.click;
  end;
end;

procedure Tfrm_rel_gen_periodo.edt_dt_inicioKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
begin
  if (Key in [VK_TAB, VK_RETURN]) then
  begin
    edt_dt_inicio.ValidateEdit(false);
    if (edt_dt_inicio.EditValue <> Null) then
      edt_dt_fim.SetFocus;
  end;
end;

procedure Tfrm_rel_gen_periodo.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  Action := cafree;
  self := nil;
end;

procedure Tfrm_rel_gen_periodo.FormShow(Sender: TObject);
begin
  edt_dt_inicio.Date := strtodate('01/' + FormatDateTime('mm', Date) + '/' + FormatDateTime('yyyy', Date));

  edt_dt_fim.Date := Now;
end;

procedure Tfrm_rel_gen_periodo.btn_imprimirClick(Sender: TObject);
begin
  edt_dt_inicio.ValidateEdit(false);
  edt_dt_fim.ValidateEdit(false);
  m_sr := true;
  close;
end;

end.
