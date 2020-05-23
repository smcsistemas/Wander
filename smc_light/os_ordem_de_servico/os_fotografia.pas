unit os_fotografia;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, cxGraphics, cxControls, cxLookAndFeels,
  cxLookAndFeelPainters, cxContainer, cxEdit, dxSkinsCore,
  dxSkinOffice2013White, Vcl.Menus, Vcl.StdCtrls, Vcl.DBCtrls,
  Vcl.DBGrids, cxMaskEdit, cxDropDownEdit, cxDBEdit, cxButtons, cxTextEdit,
  dxSkinscxPCPainter, dxBarBuiltInMenu, cxPC, cxClasses, dxSkinsForm, cxCheckBox,
  Vcl.ExtCtrls, Vcl.Grids, dxSkinBlack, dxSkinBlue, dxSkinBlueprint,
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
  TFRM_os_fotografia = class(TForm)
    cxPageControl1: TcxPageControl;
    cxTabSheet2: TcxTabSheet;
    cxTabSheet3: TcxTabSheet;
    grp2: TGroupBox;
    lbl1: TLabel;
    lbl15: TLabel;
    lbl16: TLabel;
    lbl20: TLabel;
    lbl21: TLabel;
    cxDBComboBox1: TcxDBComboBox;
    cxDBTextEdit2: TcxDBTextEdit;
    cxDBTextEdit8: TcxDBTextEdit;
    cxDBTextEdit7: TcxDBTextEdit;
    cxDBTextEdit1: TcxDBTextEdit;
    grp1: TGroupBox;
    lbl2: TLabel;
    lbl5: TLabel;
    lbl6: TLabel;
    lbl8: TLabel;
    lbl9: TLabel;
    lbl12: TLabel;
    lbl4: TLabel;
    lbl7: TLabel;
    cxDBTextEdit3: TcxDBTextEdit;
    cxButton1: TcxButton;
    cxDBTextEdit4: TcxDBTextEdit;
    cxDBTextEdit9: TcxDBTextEdit;
    cxDBTextEdit10: TcxDBTextEdit;
    grp5: TGroupBox;
    grp10: TGroupBox;
    lbl32: TLabel;
    lbl33: TLabel;
    lbl34: TLabel;
    lbl35: TLabel;
    cxDBTextEdit26: TcxDBTextEdit;
    cxDBTextEdit27: TcxDBTextEdit;
    cxDBTextEdit28: TcxDBTextEdit;
    cxDBTextEdit29: TcxDBTextEdit;
    grp6: TGroupBox;
    cxCheckBox2: TcxCheckBox;
    cxCheckBox3: TcxCheckBox;
    cxCheckBox4: TcxCheckBox;
    lbl36: TLabel;
    cbb1: TComboBox;
    grp14: TGroupBox;
    lbl37: TLabel;
    cxDBTextEdit32: TcxDBTextEdit;
    lbl38: TLabel;
    cxDBTextEdit33: TcxDBTextEdit;
    lbl39: TLabel;
    cxDBTextEdit34: TcxDBTextEdit;
    lbl40: TLabel;
    dbmmo2: TDBMemo;
    grp13: TGroupBox;
    cxDBTextEdit19: TcxDBTextEdit;
    lbl27: TLabel;
    lbl25: TLabel;
    cxDBTextEdit17: TcxDBTextEdit;
    cxDBTextEdit16: TcxDBTextEdit;
    lbl26: TLabel;
    grp15: TGroupBox;
    dbgrd1: TDBGrid;
    grp3: TGroupBox;
    dbgrd4: TDBGrid;
    lbl13: TLabel;
    lbl19: TLabel;
    lbl22: TLabel;
    grp18: TGroupBox;
    cxDBTextEdit15: TcxDBTextEdit;
    lbl23: TLabel;
    cxDBTextEdit14: TcxDBTextEdit;
    lbl17: TLabel;
    cxDBTextEdit13: TcxDBTextEdit;
    lbl14: TLabel;
    grp19: TGroupBox;
    lbl3: TLabel;
    lbl10: TLabel;
    lbl11: TLabel;
    cxDBTextEdit5: TcxDBTextEdit;
    cxDBTextEdit11: TcxDBTextEdit;
    cxDBTextEdit12: TcxDBTextEdit;
    grp7: TGroupBox;
    lbl28: TLabel;
    lbl29: TLabel;
    lbl30: TLabel;
    lbl31: TLabel;
    cxDBTextEdit20: TcxDBTextEdit;
    cxDBTextEdit21: TcxDBTextEdit;
    cxDBTextEdit22: TcxDBTextEdit;
    cxDBTextEdit23: TcxDBTextEdit;
    grp8: TGroupBox;
    cxDBTextEdit24: TcxDBTextEdit;
    cxButton2: TcxButton;
    grp9: TGroupBox;
    cxDBTextEdit25: TcxDBTextEdit;
    cxButton5: TcxButton;
    cbb2: TComboBox;
    lbl24: TLabel;
    pnl1: TPanel;
    BtnGravar: TcxButton;
    BtnIncluir: TcxButton;
    BtnCancelar: TcxButton;
    BtnAlterar: TcxButton;
    BtnExcluir: TcxButton;
    grp11: TGroupBox;
    cxDBTextEdit18: TcxDBTextEdit;
    cxButton3: TcxButton;
    grp12: TGroupBox;
    cxDBTextEdit30: TcxDBTextEdit;
    cxButton4: TcxButton;
    lbl45: TLabel;
    lbl46: TLabel;
    grp20: TGroupBox;
    cxDBTextEdit6: TcxDBTextEdit;
    lbl18: TLabel;
    cxButton6: TcxButton;
    cxTabSheet1: TcxTabSheet;
    lbl41: TLabel;
    lbl42: TLabel;
    lbl43: TLabel;
    lbl44: TLabel;
    cxDBTextEdit35: TcxDBTextEdit;
    grp16: TGroupBox;
    dbcbb1: TDBComboBox;
    grp17: TGroupBox;
    cxCheckBox5: TcxCheckBox;
    cxCheckBox6: TcxCheckBox;
    cxCheckBox7: TcxCheckBox;
    cxMaskEdit1: TcxMaskEdit;
    dbgrd3: TDBGrid;
    cxMaskEdit2: TcxMaskEdit;
    grp4: TGroupBox;
    cxCheckBox8: TcxCheckBox;
    cxCheckBox9: TcxCheckBox;
    cxCheckBox10: TcxCheckBox;
    grp21: TGroupBox;
    lbl48: TLabel;
    lbl47: TLabel;
    lbl49: TLabel;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FRM_os_fotografia: TFRM_os_fotografia;

implementation

{$R *.dfm}

procedure TFRM_os_fotografia.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  Action := cafree;
  Self := nil;
end;

end.
