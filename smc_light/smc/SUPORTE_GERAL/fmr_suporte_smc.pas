//Verificado automaticamente em 16/06/2020 09:28
unit fmr_suporte_smc;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, cxGraphics, cxLookAndFeels,
  cxLookAndFeelPainters, Vcl.Menus, dxSkinsCore, Vcl.StdCtrls, cxButtons,
  dxSkinBlack, dxSkinBlue, dxSkinBlueprint, dxSkinCaramel, dxSkinCoffee,
  dxSkinDarkRoom, dxSkinDarkSide, dxSkinDevExpressDarkStyle,
  dxSkinDevExpressStyle, dxSkinFoggy, dxSkinGlassOceans, dxSkinHighContrast,
  dxSkiniMaginary, dxSkinLilian, dxSkinLiquidSky, dxSkinLondonLiquidSky,
  dxSkinMcSkin, dxSkinMetropolis, dxSkinMetropolisDark, dxSkinMoneyTwins,
  dxSkinOffice2007Black, dxSkinOffice2007Blue, dxSkinOffice2007Green,
  dxSkinOffice2007Pink, dxSkinOffice2007Silver, dxSkinOffice2010Black,
  dxSkinOffice2010Blue, dxSkinOffice2010Silver, dxSkinOffice2013DarkGray,
  dxSkinOffice2013LightGray, dxSkinOffice2013White, dxSkinOffice2016Colorful,
  dxSkinOffice2016Dark, dxSkinPumpkin, dxSkinSeven, dxSkinSevenClassic,
  dxSkinSharp, dxSkinSharpPlus, dxSkinSilver, dxSkinSpringTime, dxSkinStardust,
  dxSkinSummer2008, dxSkinTheAsphaltWorld, dxSkinsDefaultPainters,
  dxSkinValentine, dxSkinVisualStudio2013Blue, dxSkinVisualStudio2013Dark,
  dxSkinVisualStudio2013Light, dxSkinVS2010, dxSkinWhiteprint,
  dxSkinXmas2008Blue;

type
  Tfrm_suporte_smc = class(TForm)
    cxButton4: TcxButton;
    cxButton3: TcxButton;
    cxButton1: TcxButton;
    cxButton2: TcxButton;
    cxButton5: TcxButton;
    procedure cxButton3Click(Sender: TObject);
    procedure cxButton4Click(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure cxButton1Click(Sender: TObject);
    procedure cxButton2Click(Sender: TObject);
    procedure cxButton5Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frm_suporte_smc: Tfrm_suporte_smc;

implementation

{$R *.dfm}

uses smc_atendimentos, treinamento, smc_tarefas, smc_controle_visitas,
  smc_arquivos_fiscais;

procedure Tfrm_suporte_smc.cxButton1Click(Sender: TObject);
begin
fmr_smc_adicionar_tarefas := Tfmr_smc_adicionar_tarefas.Create(nil);
fmr_smc_adicionar_tarefas.ShowModal;
end;

procedure Tfrm_suporte_smc.cxButton2Click(Sender: TObject);
begin
frm_smc_controle_vistias := Tfrm_smc_controle_vistias.Create(nil);
frm_smc_controle_vistias.ShowModal;
end;

procedure Tfrm_suporte_smc.cxButton3Click(Sender: TObject);
begin
frm_atendimentos := Tfrm_atendimentos.Create(nil);
frm_atendimentos.ShowModal;
end;

procedure Tfrm_suporte_smc.cxButton4Click(Sender: TObject);
begin
frm_controle_treinamento := Tfrm_controle_treinamento.Create(nil);
frm_controle_treinamento.ShowModal;
end;

procedure Tfrm_suporte_smc.cxButton5Click(Sender: TObject);
begin
fmr_arquivos_fiscais := Tfmr_arquivos_fiscais.Create(nil);
fmr_arquivos_fiscais.ShowModal;
end;

procedure Tfrm_suporte_smc.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  Action := cafree;
  self := nil;
end;

end.
