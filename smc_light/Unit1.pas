unit Unit1;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, cxGraphics, cxControls,
  cxLookAndFeels, cxLookAndFeelPainters, dxSkinsCore, dxSkinBlack,
  dxSkinBlue, dxSkinBlueprint, dxSkinCaramel, dxSkinCoffee, dxSkinDarkRoom,
  dxSkinDarkSide, dxSkinDevExpressDarkStyle, dxSkinDevExpressStyle,
  dxSkinFoggy, dxSkinGlassOceans, dxSkinHighContrast, dxSkiniMaginary,
  dxSkinLilian, dxSkinLiquidSky, dxSkinLondonLiquidSky, dxSkinMcSkin,
  dxSkinMetropolis, dxSkinMetropolisDark, dxSkinMoneyTwins,
  dxSkinOffice2007Black, dxSkinOffice2007Blue, dxSkinOffice2007Green,
  dxSkinOffice2007Pink, dxSkinOffice2007Silver, dxSkinOffice2010Black,
  dxSkinOffice2010Blue, dxSkinOffice2010Silver, dxSkinOffice2013DarkGray,
  dxSkinOffice2013LightGray, dxSkinOffice2013White,
  dxSkinOffice2016Colorful, dxSkinOffice2016Dark, dxSkinPumpkin,
  dxSkinSeven, dxSkinSevenClassic, dxSkinSharp, dxSkinSharpPlus,
  dxSkinSilver, dxSkinSpringTime, dxSkinStardust, dxSkinSummer2008,
  dxSkinTheAsphaltWorld, dxSkinsDefaultPainters, dxSkinValentine,
  dxSkinVisualStudio2013Blue, dxSkinVisualStudio2013Dark,
  dxSkinVisualStudio2013Light, dxSkinVS2010, dxSkinWhiteprint,
  dxSkinXmas2008Blue, dxSkinscxPCPainter, dxBarBuiltInMenu, cxStyles,
  cxCustomData, cxFilter, cxData, cxDataStorage, cxEdit, cxNavigator,
  Data.DB, cxDBData, cxContainer, Vcl.Menus, Vcl.StdCtrls, Vcl.ExtCtrls,
  cxTextEdit, cxMaskEdit, cxDropDownEdit, Vcl.ComCtrls, cxButtons,
  cxGroupBox, Vcl.Mask, Vcl.DBCtrls, cxGridLevel, cxGridCustomTableView,
  cxGridTableView, cxGridDBTableView, cxClasses, cxGridCustomView, cxGrid,
  cxPC;

type
  Tfrm_emissor_nfe = class(TForm)
    cxPageControl1: TcxPageControl;
    tb_consulta: TcxTabSheet;
    Label71: TLabel;
    cxGrid4: TcxGrid;
    cxGridDBTableView4: TcxGridDBTableView;
    cxGridDBColumn5: TcxGridDBColumn;
    cxGridDBTableView4Column1: TcxGridDBColumn;
    cxGridDBTableView4Column2: TcxGridDBColumn;
    cxGridDBTableView4Column3: TcxGridDBColumn;
    cxGridDBTableView4Column7: TcxGridDBColumn;
    cxGridDBTableView4Column4: TcxGridDBColumn;
    cxGridLevel4: TcxGridLevel;
    DBEdit69: TDBEdit;
    cxGroupBox18: TcxGroupBox;
    RadioButton7: TRadioButton;
    RadioButton8: TRadioButton;
    RadioButton11: TRadioButton;
    RadioButton12: TRadioButton;
    cxGroupBox19: TcxGroupBox;
    Label72: TLabel;
    Label73: TLabel;
    cxButton13: TcxButton;
    DateTimePicker3: TDateTimePicker;
    DateTimePicker4: TDateTimePicker;
    cxComboBox4: TcxComboBox;
    tb_pedido: TcxTabSheet;
    Label2: TLabel;
    Label9: TLabel;
    Label10: TLabel;
    Label11: TLabel;
    Label13: TLabel;
    Label14: TLabel;
    Label18: TLabel;
    Shape1: TShape;
    Label24: TLabel;
    Shape2: TShape;
    Label25: TLabel;
    Label26: TLabel;
    Label28: TLabel;
    Label29: TLabel;
    Label21: TLabel;
    Label22: TLabel;
    Label4: TLabel;
    Label5: TLabel;
    Label15: TLabel;
    DBEdit2: TDBEdit;
    DBEdit3: TDBEdit;
    DBEdit12: TDBEdit;
    DBEdit14: TDBEdit;
    DBEdit16: TDBEdit;
    DBEdit10: TDBEdit;
    DBEdit11: TDBEdit;
    DBEdit15: TDBEdit;
    DBEdit20: TDBEdit;
    DBEdit21: TDBEdit;
    DBEdit22: TDBEdit;
    DBEdit23: TDBEdit;
    BtnGravar: TcxButton;
    BtnCancelar: TcxButton;
    BtnAlterar: TcxButton;
    cxButton2: TcxButton;
    cxButton10: TcxButton;
    BtnIncluir: TcxButton;
    cxButton3: TcxButton;
    cxButton1: TcxButton;
    cxGrid1: TcxGrid;
    cxGridDBTableView1: TcxGridDBTableView;
    cxGridDBTableView1Column3: TcxGridDBColumn;
    cxGridDBTableView1Column1: TcxGridDBColumn;
    cxGridDBTableView1Column2: TcxGridDBColumn;
    cxGridDBTableView1Column4: TcxGridDBColumn;
    cxGridDBTableView1Column5: TcxGridDBColumn;
    cxGridDBTableView1Column6: TcxGridDBColumn;
    cxGridDBTableView1Column7: TcxGridDBColumn;
    cxGridDBTableView1Column8: TcxGridDBColumn;
    cxGridDBTableView1Column9: TcxGridDBColumn;
    cxGridDBTableView1Column10: TcxGridDBColumn;
    cxGridLevel1: TcxGridLevel;
    cxComboBox3: TcxComboBox;
    DBEdit19: TDBEdit;
    DBEdit5: TDBEdit;
    DBEdit8: TDBEdit;
    cxGroupBox1: TcxGroupBox;
    Label6: TLabel;
    Label3: TLabel;
    DBEdit1: TDBEdit;
    DBEdit4: TDBEdit;
    cxGroupBox2: TcxGroupBox;
    Label1: TLabel;
    Label7: TLabel;
    DBEdit6: TDBEdit;
    DBEdit7: TDBEdit;
    cxGroupBox3: TcxGroupBox;
    RadioButton1: TRadioButton;
    RadioButton2: TRadioButton;
    tb_total: TcxTabSheet;
    Label23: TLabel;
    Label8: TLabel;
    Label12: TLabel;
    Label16: TLabel;
    Label17: TLabel;
    Label19: TLabel;
    Label20: TLabel;
    Label27: TLabel;
    Label30: TLabel;
    Label31: TLabel;
    Label32: TLabel;
    Label33: TLabel;
    Label34: TLabel;
    Label35: TLabel;
    Label36: TLabel;
    Label37: TLabel;
    Label38: TLabel;
    Label39: TLabel;
    Label40: TLabel;
    Label41: TLabel;
    Label42: TLabel;
    Label43: TLabel;
    Label52: TLabel;
    DBEdit9: TDBEdit;
    DBEdit13: TDBEdit;
    DBEdit17: TDBEdit;
    DBEdit18: TDBEdit;
    DBEdit24: TDBEdit;
    DBEdit25: TDBEdit;
    DBEdit26: TDBEdit;
    DBEdit27: TDBEdit;
    DBEdit28: TDBEdit;
    DBEdit29: TDBEdit;
    DBEdit30: TDBEdit;
    DBEdit31: TDBEdit;
    cxComboBox1: TcxComboBox;
    cxGrid2: TcxGrid;
    cxGridDBTableView2: TcxGridDBTableView;
    tab_id: TcxGridDBColumn;
    tab_data: TcxGridDBColumn;
    cxGridDBTableView2Column1: TcxGridDBColumn;
    tb_valor: TcxGridDBColumn;
    cxGridLevel2: TcxGridLevel;
    DBEdit32: TDBEdit;
    cxButton4: TcxButton;
    DBEdit33: TDBEdit;
    DBEdit34: TDBEdit;
    cxButton5: TcxButton;
    DBEdit35: TDBEdit;
    DBEdit36: TDBEdit;
    DBEdit37: TDBEdit;
    DBEdit38: TDBEdit;
    DBEdit39: TDBEdit;
    DBEdit40: TDBEdit;
    DBEdit41: TDBEdit;
    DBEdit42: TDBEdit;
    cxButton16: TcxButton;
    cxButton6: TcxButton;
    cxGroupBox4: TcxGroupBox;
    cxGroupBox5: TcxGroupBox;
    Label44: TLabel;
    Label45: TLabel;
    DBEdit43: TDBEdit;
    DBEdit44: TDBEdit;
    cxGroupBox6: TcxGroupBox;
    Label46: TLabel;
    Label47: TLabel;
    DBEdit45: TDBEdit;
    DBEdit46: TDBEdit;
    cxGroupBox7: TcxGroupBox;
    Label48: TLabel;
    Label49: TLabel;
    DBEdit47: TDBEdit;
    DBEdit48: TDBEdit;
    cxGroupBox8: TcxGroupBox;
    Label50: TLabel;
    Label51: TLabel;
    DBEdit49: TDBEdit;
    DBEdit50: TDBEdit;
    cxGroupBox9: TcxGroupBox;
    RadioButton3: TRadioButton;
    RadioButton4: TRadioButton;
    RadioButton5: TRadioButton;
    RadioButton6: TRadioButton;
    RadioButton9: TRadioButton;
    RadioButton10: TRadioButton;
    Memo1: TMemo;
    tb_tribu: TcxTabSheet;
    cxGroupBox10: TcxGroupBox;
    Label53: TLabel;
    Label54: TLabel;
    Label55: TLabel;
    Label56: TLabel;
    Label57: TLabel;
    DBEdit51: TDBEdit;
    DBEdit52: TDBEdit;
    DBEdit53: TDBEdit;
    DBEdit54: TDBEdit;
    DBEdit55: TDBEdit;
    cxGroupBox11: TcxGroupBox;
    Label58: TLabel;
    Label59: TLabel;
    Label61: TLabel;
    DBEdit56: TDBEdit;
    DBEdit57: TDBEdit;
    DBEdit59: TDBEdit;
    cxGroupBox13: TcxGroupBox;
    Label63: TLabel;
    Label64: TLabel;
    DBEdit61: TDBEdit;
    DBEdit62: TDBEdit;
    cxGroupBox14: TcxGroupBox;
    Label65: TLabel;
    Label66: TLabel;
    DBEdit63: TDBEdit;
    DBEdit64: TDBEdit;
    cxGroupBox15: TcxGroupBox;
    Label67: TLabel;
    Label68: TLabel;
    DBEdit65: TDBEdit;
    DBEdit66: TDBEdit;
    cxGroupBox16: TcxGroupBox;
    Label69: TLabel;
    Label70: TLabel;
    DBEdit67: TDBEdit;
    DBEdit68: TDBEdit;
    cxGroupBox12: TcxGroupBox;
    Label60: TLabel;
    Label62: TLabel;
    DBEdit58: TDBEdit;
    DBEdit60: TDBEdit;
    tb_nota_ref: TcxTabSheet;
    cxGroupBox17: TcxGroupBox;
    cxGrid3: TcxGrid;
    cxGridDBTableView3: TcxGridDBTableView;
    cxGridDBColumn2: TcxGridDBColumn;
    cxGridLevel3: TcxGridLevel;
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frm_emissor_nfe: Tfrm_emissor_nfe;

implementation

{$R *.dfm}

end.
