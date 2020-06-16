//Verificado automaticamente em 16/06/2020 09:28
unit vw_Db_Config;

interface

uses
  Winapi.Windows, System.SysUtils, System.Classes,
  Vcl.Controls, Vcl.Forms,











  Vcl.StdCtrls, cxButtons, v_env,
  Vcl.ExtCtrls, h_Dialogs, h_db, cxGraphics, cxLookAndFeels, cxLookAndFeelPainters, Vcl.Menus, dxSkinsCore, dxSkinBlack, dxSkinBlue, dxSkinBlueprint, dxSkinCaramel, dxSkinCoffee, dxSkinDarkRoom,
  dxSkinDarkSide, dxSkinDevExpressDarkStyle, dxSkinDevExpressStyle, dxSkinFoggy, dxSkinGlassOceans, dxSkinHighContrast, dxSkiniMaginary, dxSkinLilian, dxSkinLiquidSky, dxSkinLondonLiquidSky,
  dxSkinMcSkin, dxSkinMetropolis, dxSkinMetropolisDark, dxSkinMoneyTwins, dxSkinOffice2007Black, dxSkinOffice2007Blue, dxSkinOffice2007Green, dxSkinOffice2007Pink, dxSkinOffice2007Silver,
  dxSkinOffice2010Black, dxSkinOffice2010Blue, dxSkinOffice2010Silver, dxSkinOffice2013DarkGray, dxSkinOffice2013LightGray, dxSkinOffice2013White, dxSkinOffice2016Colorful, dxSkinOffice2016Dark,
  dxSkinPumpkin, dxSkinSeven, dxSkinSevenClassic, dxSkinSharp, dxSkinSharpPlus, dxSkinSilver, dxSkinSpringTime, dxSkinStardust, dxSkinSummer2008, dxSkinTheAsphaltWorld, dxSkinsDefaultPainters,
  dxSkinValentine, dxSkinVisualStudio2013Blue, dxSkinVisualStudio2013Dark, dxSkinVisualStudio2013Light, dxSkinVS2010, dxSkinWhiteprint, dxSkinXmas2008Blue, dxGDIPlusClasses;

type
  Tfrm_db_config = class(TForm)
    btnCancelar: TcxButton;
    btnConectar: TcxButton;
    Label1: TLabel;
    edt_pc: TEdit;
    Image1: TImage;
    Label2: TLabel;
    edt_db: TEdit;
    Image2: TImage;
    procedure btnCancelarClick(Sender: TObject);
    procedure btnConectarClick(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure edt_pcKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
    procedure edt_dbKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
    procedure FormShow(Sender: TObject);
    procedure edt_pcClick(Sender: TObject);
    procedure edt_dbClick(Sender: TObject);
  private
    { Private declarations }
    computerSelected: Integer;
    list: TStringlist;
  public
    { Public declarations }
    class function execute: boolean;
  end;

var
  frm_db_config: Tfrm_db_config;

implementation

{$R *.dfm}

procedure Tfrm_db_config.btnCancelarClick(Sender: TObject);
begin
  modalresult := mrcancel;
end;

procedure Tfrm_db_config.btnConectarClick(Sender: TObject);
begin
  // tentar conectar
  try

    TDb.TryConnect(edt_pc.text, edt_db.text);
    tenv.Database.Local.Server := edt_pc.text;
    tenv.Database.Local.Database := edt_db.text;
    modalresult := mrok;

  except
    on e: exception do
      tdialogs.wnerro('Configurar DB', e.Message);
  end;

end;

procedure Tfrm_db_config.edt_dbClick(Sender: TObject);
begin
  edt_db.SelectAll;
end;

procedure Tfrm_db_config.edt_dbKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
begin
  if Key = vk_return then
    btnConectar.Click;
end;

procedure Tfrm_db_config.edt_pcClick(Sender: TObject);
begin
  edt_pc.SelectAll;
end;

procedure Tfrm_db_config.edt_pcKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
begin
  if Key = vk_return then
    edt_db.setfocus;
end;

class function Tfrm_db_config.execute: boolean;
begin
  with self.Create(nil) do
    try
      result := showmodal = mrok;
    finally
      free;
    end;
end;

procedure Tfrm_db_config.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  Action := cafree;
  self := nil;
end;

procedure Tfrm_db_config.FormShow(Sender: TObject);
begin
  edt_pc.text := tenv.Database.Local.Server;
  edt_db.text := tenv.Database.Local.Database;
  edt_pc.SelectAll;
  edt_pc.setfocus;
end;

end.
