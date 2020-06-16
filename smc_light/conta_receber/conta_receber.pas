//Verificado automaticamente em 16/06/2020 09:27
unit conta_receber;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants,
  System.Classes, Vcl.Graphics,
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
  dxSkinXmas2008Blue, Vcl.Menus, Vcl.StdCtrls, cxButtons, cxCheckBox,
  Vcl.DBCtrls, cxTextEdit, cxDBEdit, Vcl.DBGrids, dxSkinscxPCPainter,
  dxBarBuiltInMenu, cxPC, Vcl.Mask, Vcl.Grids;

type
  Tfrm_contas_receber = class(TForm)
    cxPageControl1: TcxPageControl;
    cxTabSheet1: TcxTabSheet;
    cxTabSheet2: TcxTabSheet;
    cxTabSheet3: TcxTabSheet;
    grp_lance_manual_caixa: TGroupBox;
    lbl9: TLabel;
    lbl10: TLabel;
    lbl12: TLabel;
    lbl13: TLabel;
    lbl14: TLabel;
    lbl15: TLabel;
    lbl17: TLabel;
    lbl21: TLabel;
    edt11: TEdit;
    edt13: TEdit;
    edt16: TEdit;
    edt17: TEdit;
    edt18: TEdit;
    edt19: TEdit;
    edt20: TEdit;
    edt21: TEdit;
    BtnCancelar: TcxButton;
    BtnAlterar: TcxButton;
    BtnExcluir: TcxButton;
    BtnGravar: TcxButton;
    BtnIncluir: TcxButton;
    dbcbb1: TDBComboBox;
    edt12: TEdit;
    cxButton1: TcxButton;
    cxButton2: TcxButton;
    edt2: TEdit;
    edt3: TEdit;
    cxButton5: TcxButton;
    grp1: TGroupBox;
    lbl7: TLabel;
    lbl6: TLabel;
    lbl3: TLabel;
    lbl1: TLabel;
    lbl22: TLabel;
    lbl24: TLabel;
    lbl25: TLabel;
    lbl20: TLabel;
    cxDBTextEdit39: TcxDBTextEdit;
    cxButton7: TcxButton;
    cxDBTextEdit2: TcxDBTextEdit;
    grp2: TGroupBox;
    dbgrd2: TDBGrid;
    cxButton3: TcxButton;
    grp3: TGroupBox;
    lbl2: TLabel;
    grp7: TGroupBox;
    cxDBTextEdit10: TcxDBTextEdit;
    lbl28: TLabel;
    lbl29: TLabel;
    cxDBTextEdit11: TcxDBTextEdit;
    lbl30: TLabel;
    cxDBTextEdit12: TcxDBTextEdit;
    lbl31: TLabel;
    cxDBTextEdit13: TcxDBTextEdit;
    cxButton6: TcxButton;
    grp6: TGroupBox;
    lbl19: TLabel;
    lbl23: TLabel;
    lbl26: TLabel;
    lbl27: TLabel;
    cxDBTextEdit8: TcxDBTextEdit;
    cxDBTextEdit9: TcxDBTextEdit;
    dbcbb2: TDBComboBox;
    dbcbb3: TDBComboBox;
    grp5: TGroupBox;
    lbl4: TLabel;
    lbl5: TLabel;
    lbl8: TLabel;
    lbl11: TLabel;
    lbl16: TLabel;
    lbl18: TLabel;
    cxDBTextEdit1: TcxDBTextEdit;
    cxDBTextEdit3: TcxDBTextEdit;
    cxDBTextEdit4: TcxDBTextEdit;
    cxDBTextEdit5: TcxDBTextEdit;
    cxDBTextEdit6: TcxDBTextEdit;
    cxDBTextEdit7: TcxDBTextEdit;
    grp12: TGroupBox;
    grp11: TGroupBox;
    DBLookupComboBox3: TDBLookupComboBox;
    lbl44: TLabel;
    DBEdit4: TDBEdit;
    DBEdit3: TDBEdit;
    lbl43: TLabel;
    lbl42: TLabel;
    DBEdit2: TDBEdit;
    DBEdit6: TDBEdit;
    lbl46: TLabel;
    lbl45: TLabel;
    DBEdit7: TDBEdit;
    lbl47: TLabel;
    DBEdit5: TDBEdit;
    lbl48: TLabel;
    DBEdit8: TDBEdit;
    lbl49: TLabel;
    DBEdit9: TDBEdit;
    grp13: TGroupBox;
    grp8: TGroupBox;
    cxCheckBox2: TcxCheckBox;
    cxCheckBox1: TcxCheckBox;
    lbl32: TLabel;
    dbedt1: TDBEdit;
    lbl33: TLabel;
    grp9: TGroupBox;
    DBLookupComboBox1: TDBLookupComboBox;
    dbedt2: TDBEdit;
    cxButton16: TcxButton;
    cxButton9: TcxButton;
    baixar_s_caixa: TcxCheckBox;
    lbl50: TLabel;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frm_contas_receber: Tfrm_contas_receber;

implementation

uses
   vw_main;

{$R *.dfm}



procedure Tfrm_contas_receber.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  Action := cafree;


end;

end.
