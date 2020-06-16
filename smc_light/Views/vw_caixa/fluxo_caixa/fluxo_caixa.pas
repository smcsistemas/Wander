//Verificado automaticamente em 16/06/2020 09:29
unit fluxo_caixa;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls, dxSkinsCore, cxGraphics,
  cxControls, cxLookAndFeels, cxLookAndFeelPainters, cxContainer, cxEdit,
  cxTextEdit, cxMaskEdit, cxDropDownEdit, Vcl.Mask, Vcl.DBCtrls, cxRadioGroup,
  Vcl.Menus, cxButtons, cxGroupBox, dxSkinOffice2013LightGray, dxSkinBlack,
  dxSkinBlue, dxSkinBlueprint, dxSkinCaramel, dxSkinCoffee, dxSkinDarkRoom,
  dxSkinDarkSide, dxSkinDevExpressDarkStyle, dxSkinDevExpressStyle, dxSkinFoggy,
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
  TFrm_fluxo_caixa = class(TForm)
    GroupBox2: TGroupBox;
    Label1: TLabel;
    DBEdit1: TDBEdit;
    Label4: TLabel;
    DBEdit4: TDBEdit;
    DBEdit5: TDBEdit;
    Label5: TLabel;
    Label6: TLabel;
    Label10: TLabel;
    DBEdit9: TDBEdit;
    btn_marca: TcxButton;
    DBEdit10: TDBEdit;
    GroupBox1: TGroupBox;
    BtnGravar: TcxButton;
    BtnCancelar: TcxButton;
    BtnIncluir: TcxButton;
    BtnAlterar: TcxButton;
    cxButton1: TcxButton;
    cxComboBox3: TcxComboBox;
    DBEdit12: TDBEdit;
    Label12: TLabel;
    Observação: TDBMemo;
    cxButton4: TcxButton;
    cxGroupBox1: TcxGroupBox;
    DBEdit2: TDBEdit;
    DBEdit6: TDBEdit;
    cxButton3: TcxButton;
    cxRadioButton1: TcxRadioButton;
    cxRadioButton2: TcxRadioButton;
    Label2: TLabel;
    cxGroupBox2: TcxGroupBox;
    DBEdit11: TDBEdit;
    DBEdit13: TDBEdit;
    cxButton2: TcxButton;
    cxButton5: TcxButton;
    cxButton6: TcxButton;
    Label3: TLabel;
    DBEdit14: TDBEdit;
    cxButton7: TcxButton;
    Label8: TLabel;
    DBEdit15: TDBEdit;
    Label11: TLabel;
    DBEdit16: TDBEdit;
    Label13: TLabel;
    cxComboBox1: TcxComboBox;
    Label14: TLabel;
    DBEdit17: TDBEdit;
    s: TLabel;
    DBEdit7: TDBEdit;
    Label7: TLabel;
    DBEdit8: TDBEdit;
    Label9: TLabel;
    DBEdit3: TDBEdit;
    procedure cxButton1Click(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);

  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Frm_fluxo_caixa: TFrm_fluxo_caixa;

implementation

{$R *.dfm}

uses consulta_caixa;

procedure TFrm_fluxo_caixa.cxButton1Click(Sender: TObject);
begin
Frm_consulta_caixa:= TFrm_consulta_caixa.create(nil);
Frm_consulta_caixa.showmodal;
end;



procedure TFrm_fluxo_caixa.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  Action := cafree;
  self := nil;
end;

end.
