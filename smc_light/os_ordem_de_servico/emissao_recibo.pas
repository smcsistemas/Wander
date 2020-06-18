//Verificado automaticamente em 16/06/2020 09:28
unit emissao_recibo;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, cxGraphics, cxControls, cxLookAndFeels,
  cxLookAndFeelPainters, cxContainer, cxEdit, dxSkinsCore,
  dxSkinOffice2013LightGray, Vcl.Menus, Vcl.StdCtrls, cxButtons, cxRadioGroup,
  cxGroupBox, cxCheckBox, Vcl.ComCtrls, Vcl.DBCtrls, dxSkinBlack, dxSkinBlue,
  dxSkinBlueprint, dxSkinCaramel, dxSkinCoffee, dxSkinDarkRoom, dxSkinDarkSide,
  dxSkinDevExpressDarkStyle, dxSkinDevExpressStyle, dxSkinFoggy,
  dxSkinGlassOceans, dxSkinHighContrast, dxSkiniMaginary, dxSkinLilian,
  dxSkinLiquidSky, dxSkinLondonLiquidSky, dxSkinMcSkin, dxSkinMetropolis,
  dxSkinMetropolisDark, dxSkinMoneyTwins, dxSkinOffice2007Black,
  dxSkinOffice2007Blue, dxSkinOffice2007Green, dxSkinOffice2007Pink,
  dxSkinOffice2007Silver, dxSkinOffice2010Black, dxSkinOffice2010Blue,
  dxSkinOffice2010Silver, dxSkinOffice2013DarkGray, dxSkinOffice2013White,
  dxSkinOffice2016Colorful, dxSkinOffice2016Dark, dxSkinPumpkin, dxSkinSeven,
  dxSkinSevenClassic, dxSkinSharp, dxSkinSharpPlus, dxSkinSilver,
  dxSkinSpringTime, dxSkinStardust, dxSkinSummer2008, dxSkinTheAsphaltWorld,
  dxSkinsDefaultPainters, dxSkinValentine, dxSkinVisualStudio2013Blue,
  dxSkinVisualStudio2013Dark, dxSkinVisualStudio2013Light, dxSkinVS2010,
  dxSkinWhiteprint, dxSkinXmas2008Blue;

type
  Tfrm_emissao_recibo = class(TForm)
    Label1: TLabel;
    Label2: TLabel;
    Edit2: TEdit;
    DateTimePicker1: TDateTimePicker;
    cxCheckBox1: TcxCheckBox;
    Label3: TLabel;
    Edit1: TEdit;
    Label4: TLabel;
    Edit3: TEdit;
    Label5: TLabel;
    Edit4: TEdit;
    Edit5: TEdit;
    Label6: TLabel;
    cxGroupBox1: TcxGroupBox;
    cxRadioButton1: TcxRadioButton;
    cxRadioButton2: TcxRadioButton;
    cxGroupBox2: TcxGroupBox;
    cxButton1: TcxButton;
    BtnIncluir: TcxButton;
    BtnAlterar: TcxButton;
    cxButton2: TcxButton;
    DBMemo1: TDBMemo;
    cxRadioButton3: TcxRadioButton;
    cxRadioButton4: TcxRadioButton;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frm_emissao_recibo: Tfrm_emissao_recibo;

implementation

{$R *.dfm}

procedure Tfrm_emissao_recibo.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  Action := cafree;
  Self := nil;
end;

end.
