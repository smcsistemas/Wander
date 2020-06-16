//Verificado automaticamente em 16/06/2020 09:29
unit consulta_caixa;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, cxCheckBox, cxGraphics, cxControls,
  cxLookAndFeels, cxLookAndFeelPainters, cxContainer, cxEdit, dxSkinsCore,
  cxTextEdit, cxMaskEdit, cxDropDownEdit, cxCheckComboBox, Vcl.StdCtrls,
  Vcl.Grids, Vcl.DBGrids, Vcl.Menus, cxGroupBox, cxButtons, Vcl.DBCtrls,
  cxRadioGroup, Data.DB, dxSkinOffice2013LightGray, dxSkinBlack, dxSkinBlue,
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
  TFrm_consulta_caixa = class(TForm)
    GroupBox6: TGroupBox;
    Label8: TLabel;
    edt_venda_inicio: TEdit;
    edt_venda_fim: TEdit;
    cxCheckComboBox1: TcxCheckComboBox;
    Label1: TLabel;
    Label2: TLabel;
    cxCheckComboBox2: TcxCheckComboBox;
    Label3: TLabel;
    GroupBox1: TGroupBox;
    cxRadioButton1: TcxRadioButton;
    cxRadioButton2: TcxRadioButton;
    cxRadioButton3: TcxRadioButton;
    cxRadioButton4: TcxRadioButton;
    Label4: TLabel;
    Label5: TLabel;
    DBComboBox1: TDBComboBox;
    cxRadioButton5: TcxRadioButton;
    Label6: TLabel;
    Edit1: TEdit;
    cxGroupBox3: TcxGroupBox;
    cxGroupBox1: TcxGroupBox;
    Label12: TLabel;
    Label13: TLabel;
    lbl_venda_nfce: TLabel;
    lbl_qtde: TLabel;
    cxGroupBox2: TcxGroupBox;
    Label15: TLabel;
    Label17: TLabel;
    cxButton1: TcxButton;
    cxComboBox1: TcxComboBox;
    DBGrid2: TDBGrid;
    Label7: TLabel;
    Edit2: TEdit;
    Label9: TLabel;
    cxButton5: TcxButton;
    cxComboBox2: TcxComboBox;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Frm_consulta_caixa: TFrm_consulta_caixa;

implementation

{$R *.dfm}

procedure TFrm_consulta_caixa.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  Action := cafree;
  self := nil;
end;

end.
