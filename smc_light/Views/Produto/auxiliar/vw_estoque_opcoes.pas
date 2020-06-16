//Verificado automaticamente em 16/06/2020 09:29
unit vw_estoque_opcoes;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, cxGraphics, cxLookAndFeels,
  cxLookAndFeelPainters, Vcl.Menus, dxSkinsCore, Vcl.StdCtrls, cxButtons,
  cxControls, cxContainer, cxEdit, cxCheckBox, Vcl.Mask, Vcl.DBCtrls,
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
  Tfrm_estoque_opcoes = class(TForm)
    cxButton2: TcxButton;
    cxButton7: TcxButton;
    cxButton6: TcxButton;
    cxButton9: TcxButton;
    GroupBox24: TGroupBox;
    chk_usa_lote: TcxCheckBox;
    cxCheckBox2: TcxCheckBox;
    cxButton1: TcxButton;
    procedure cxButton2Click(Sender: TObject);
    procedure cxButton9Click(Sender: TObject);
    procedure cxButton6Click(Sender: TObject);
    procedure cxButton7Click(Sender: TObject);
    procedure cxButton1Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frm_estoque_opcoes: Tfrm_estoque_opcoes;

implementation

uses
  controla_serial, movimenta_estoque, estoque_localizacao, lote;

{$R *.dfm}

procedure Tfrm_estoque_opcoes.cxButton1Click(Sender: TObject);
begin
Close;
end;

procedure Tfrm_estoque_opcoes.cxButton2Click(Sender: TObject);
begin
  frm_Estoque := Tfrm_Estoque.CREATE(Application);
  frm_Estoque.ShowModal;
end;

procedure Tfrm_estoque_opcoes.cxButton6Click(Sender: TObject);
begin
  frm_controla_lote := Tfrm_controla_lote.CREATE(Application);
  frm_controla_lote.ShowModal;
end;

procedure Tfrm_estoque_opcoes.cxButton7Click(Sender: TObject);
begin
  frm_cad_serial := Tfrm_cad_serial.CREATE(Application);
  frm_cad_serial.ShowModal;
end;

procedure Tfrm_estoque_opcoes.cxButton9Click(Sender: TObject);
begin
  frm_Localizacao := TFrm_Localizacao.CREATE(Application);
  Frm_Localizacao.ShowModal;
end;

end.
