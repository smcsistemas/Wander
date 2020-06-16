//Verificado automaticamente em 16/06/2020 09:29
unit suprimento;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, cxGraphics, cxControls, cxLookAndFeels,
  cxLookAndFeelPainters, cxContainer, cxEdit, dxSkinsCore, dxSkinBlack,
  dxSkinBlue, dxSkinBlueprint, dxSkinCaramel, dxSkinCoffee, dxSkinDarkRoom,
  dxSkinDarkSide, dxSkinDevExpressDarkStyle, dxSkinDevExpressStyle, dxSkinFoggy,
  dxSkinGlassOceans, dxSkinHighContrast, dxSkiniMaginary, dxSkinLilian,
  dxSkinLiquidSky, dxSkinLondonLiquidSky, dxSkinMcSkin, dxSkinMetropolis,
  dxSkinMetropolisDark, dxSkinMoneyTwins, dxSkinOffice2007Black,
  dxSkinOffice2007Blue, dxSkinOffice2007Green, dxSkinOffice2007Pink,
  dxSkinOffice2007Silver, dxSkinOffice2010Black, dxSkinOffice2010Blue,
  dxSkinOffice2010Silver, dxSkinOffice2013DarkGray, dxSkinOffice2013LightGray,
  dxSkinOffice2013White, dxSkinOffice2016Colorful, dxSkinOffice2016Dark,
  dxSkinPumpkin, dxSkinSeven, dxSkinSevenClassic, dxSkinSharp, dxSkinSharpPlus,
  dxSkinSilver, dxSkinSpringTime, dxSkinStardust, dxSkinSummer2008,
  dxSkinTheAsphaltWorld, dxSkinsDefaultPainters, dxSkinValentine,
  dxSkinVisualStudio2013Blue, dxSkinVisualStudio2013Dark,
  dxSkinVisualStudio2013Light, dxSkinVS2010, dxSkinWhiteprint,
  dxSkinXmas2008Blue, Vcl.Menus, Vcl.StdCtrls, cxButtons, Vcl.ExtCtrls,
  cxGroupBox, Vcl.ComCtrls, Vcl.DBCtrls, Vcl.Grids, Vcl.DBGrids,
  dxGDIPlusClasses, Data.DB;

type
  TFrm_suprimento = class(TForm)
    Label1: TLabel;
    Edit1: TEdit;
    DateTimePicker1: TDateTimePicker;
    Label3: TLabel;
    cxButton2: TcxButton;
    Label2: TLabel;
    Edit2: TEdit;
    cxButton4: TcxButton;
    Label10: TLabel;
    Edit4: TEdit;
    cxButton6: TcxButton;
    BtnIncluir: TcxButton;
    Label4: TLabel;
    Edit3: TEdit;
    Edit5: TEdit;
    Label5: TLabel;
    procedure btn_caixaClick(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure btn_fluxoClick(Sender: TObject);
    procedure BtnIncluirClick(Sender: TObject);

  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Frm_suprimento: TFrm_suprimento;

implementation

{$R *.dfm}

uses vw_pdv, funcoes_sistema, fluxo_caixa, vw_main;



procedure TFrm_suprimento.btn_caixaClick(Sender: TObject);
begin
 Frm_PDV := TFrm_PDV.Create(nil);
  Frm_PDV.showmodal;
end;

procedure TFrm_suprimento.btn_fluxoClick(Sender: TObject);
begin
Frm_fluxo_caixa:= TFrm_fluxo_caixa.create(nil);
Frm_fluxo_caixa.ShowModal;
end;

procedure TFrm_suprimento.BtnIncluirClick(Sender: TObject);
begin
Frm_fluxo_caixa:= TFrm_fluxo_caixa.create(nil);
Frm_fluxo_caixa.ShowModal;
end;



procedure TFrm_suprimento.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  Action := cafree;
  self := nil;

end;

end.
