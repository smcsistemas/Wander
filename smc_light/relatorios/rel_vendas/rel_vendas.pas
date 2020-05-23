{ v 21.10.16 16:47 }
unit relatorio_vendas;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, cxGraphics, cxControls, cxLookAndFeels,
  cxLookAndFeelPainters, cxContainer, cxEdit, dxSkinsCore,
  dxSkinOffice2013White, Vcl.Menus, Vcl.StdCtrls, cxButtons, cxTextEdit,
  cxMaskEdit, cxDropDownEdit, cxCalendar, cxDBEdit, cxClasses, dxSkinsForm,
  dxGDIPlusClasses, Vcl.ExtCtrls, dxSkinBlack, dxSkinBlue, dxSkinBlueprint,
  dxSkinCaramel, dxSkinCoffee, dxSkinDarkRoom, dxSkinDarkSide,
  dxSkinDevExpressDarkStyle, dxSkinDevExpressStyle, dxSkinFoggy,
  dxSkinGlassOceans, dxSkinHighContrast, dxSkiniMaginary, dxSkinLilian,
  dxSkinLiquidSky, dxSkinLondonLiquidSky, dxSkinMcSkin, dxSkinMetropolis,
  dxSkinMetropolisDark, dxSkinMoneyTwins, dxSkinOffice2007Black,
  dxSkinOffice2007Blue, dxSkinOffice2007Green, dxSkinOffice2007Pink,
  dxSkinOffice2007Silver, dxSkinOffice2010Black, dxSkinOffice2010Blue,
  dxSkinOffice2010Silver, dxSkinOffice2013DarkGray, dxSkinOffice2013LightGray,
  dxSkinOffice2016Colorful, dxSkinOffice2016Dark, dxSkinPumpkin, dxSkinSeven,
  dxSkinSevenClassic, dxSkinSharp, dxSkinSharpPlus, dxSkinSilver,
  dxSkinSpringTime, dxSkinStardust, dxSkinSummer2008, dxSkinTheAsphaltWorld,
  dxSkinsDefaultPainters, dxSkinValentine, dxSkinVisualStudio2013Blue,
  dxSkinVisualStudio2013Dark, dxSkinVisualStudio2013Light, dxSkinVS2010,
  dxSkinWhiteprint, dxSkinXmas2008Blue;

type
  TFRM_RL_VENDAS = class(TForm)
    GroupBox1: TGroupBox;
    GroupBox2: TGroupBox;
    Label1: TLabel;
    cxDBDateEdit2: TcxDBDateEdit;
    cxDBDateEdit1: TcxDBDateEdit;
    Edit1: TEdit;
    cxButton1: TcxButton;
    Edit2: TEdit;
    cxButton2: TcxButton;
    GroupBox3: TGroupBox;
    CheckBox1: TCheckBox;
    CheckBox2: TCheckBox;
    CheckBox3: TCheckBox;
    CheckBox4: TCheckBox;
    GroupBox4: TGroupBox;
    CheckBox5: TCheckBox;
    CheckBox6: TCheckBox;
    CheckBox7: TCheckBox;
    CheckBox8: TCheckBox;
    GroupBox5: TGroupBox;
    CheckBox9: TCheckBox;
    CheckBox10: TCheckBox;
    GroupBox6: TGroupBox;
    CheckBox11: TCheckBox;
    CheckBox12: TCheckBox;
    GroupBox7: TGroupBox;
    CheckBox13: TCheckBox;
    CheckBox14: TCheckBox;
    cxButton11: TcxButton;
    cxButton14: TcxButton;
    GroupBox8: TGroupBox;
    Edit3: TEdit;
    Edit4: TEdit;
    Edit5: TEdit;
    Edit6: TEdit;
    Edit7: TEdit;
    Label7: TLabel;
    Label6: TLabel;
    Label5: TLabel;
    Label4: TLabel;
    Label3: TLabel;
    cxButton3: TcxButton;
    cxButton4: TcxButton;
    cxButton5: TcxButton;
    cxButton6: TcxButton;
    cxButton7: TcxButton;
    GroupBox9: TGroupBox;
    Edit11: TEdit;
    Edit12: TEdit;
    Edit13: TEdit;
    cxButton12: TcxButton;
    cxButton13: TcxButton;
    cxButton15: TcxButton;
    Label11: TLabel;
    Label12: TLabel;
    Label13: TLabel;
    GroupBox11: TGroupBox;
    CheckBox15: TCheckBox;
    CheckBox16: TCheckBox;
    Label8: TLabel;
    Edit8: TEdit;
    img1: TImage;
    lbl1: TLabel;
    lbl2: TLabel;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FRM_RL_VENDAS: TFRM_RL_VENDAS;

implementation

uses
  U_Principal;

{$R *.dfm}

procedure TFRM_RL_VENDAS.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  Action := cafree;
  Frm_Principal.dxRibbon1.ShowTabGroups := true;
end;

end.
