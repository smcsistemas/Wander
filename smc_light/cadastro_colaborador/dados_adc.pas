//Verificado automaticamente em 16/06/2020 09:26
unit dados_adc;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, cxGraphics, cxControls, cxLookAndFeels,
  cxLookAndFeelPainters, cxContainer, cxEdit, Vcl.ComCtrls, dxCore, cxDateUtils,
  dxSkinsCore, dxSkinOffice2007Silver, dxSkinOffice2013LightGray,
  dxSkinOffice2013White, Vcl.Menus, cxStyles, dxSkinscxPCPainter, cxCustomData,
  cxFilter, cxData, cxDataStorage, cxNavigator, Data.DB, cxDBData, cxCalendar,
  cxLabel, cxCurrencyEdit, cxCheckBox, cxGridLevel, cxGridCustomTableView,
  cxGridTableView, cxGridDBTableView, cxClasses, cxGridCustomView, cxGrid,
  Vcl.StdCtrls, cxButtons, cxTextEdit, cxMaskEdit, cxDropDownEdit, Vcl.Mask,
  Vcl.DBCtrls, Vcl.ExtCtrls, dxSkinBlack, dxSkinBlue, dxSkinBlueprint,
  dxSkinCaramel, dxSkinCoffee, dxSkinDarkRoom, dxSkinDarkSide,
  dxSkinDevExpressDarkStyle, dxSkinDevExpressStyle, dxSkinFoggy,
  dxSkinGlassOceans, dxSkinHighContrast, dxSkiniMaginary, dxSkinLilian,
  dxSkinLiquidSky, dxSkinLondonLiquidSky, dxSkinMcSkin, dxSkinMetropolis,
  dxSkinMetropolisDark, dxSkinMoneyTwins, dxSkinOffice2007Black,
  dxSkinOffice2007Blue, dxSkinOffice2007Green, dxSkinOffice2007Pink,
  dxSkinOffice2010Black, dxSkinOffice2010Blue, dxSkinOffice2010Silver,
  dxSkinOffice2013DarkGray, dxSkinOffice2016Colorful, dxSkinOffice2016Dark,
  dxSkinPumpkin, dxSkinSeven, dxSkinSevenClassic, dxSkinSharp, dxSkinSharpPlus,
  dxSkinSilver, dxSkinSpringTime, dxSkinStardust, dxSkinSummer2008,
  dxSkinTheAsphaltWorld, dxSkinsDefaultPainters, dxSkinValentine,
  dxSkinVisualStudio2013Blue, dxSkinVisualStudio2013Dark,
  dxSkinVisualStudio2013Light, dxSkinVS2010, dxSkinWhiteprint,
  dxSkinXmas2008Blue;

type
  Tfrm_colab_dados_adc = class(TForm)
    GroupBox11: TGroupBox;
    Label57: TLabel;
    Label56: TLabel;
    Label55: TLabel;
    Label60: TLabel;
    Label58: TLabel;
    Label70: TLabel;
    Label62: TLabel;
    Label63: TLabel;
    Label50: TLabel;
    Label54: TLabel;
    Label4: TLabel;
    Label79: TLabel;
    Label66: TLabel;
    Label53: TLabel;
    Label52: TLabel;
    Label12: TLabel;
    edt_dt_admissao: TcxDateEdit;
    edt_dt_demissao: TcxDateEdit;
    edt_dt_validade: TcxDateEdit;
    grp_gerente: TGroupBox;
    Label18: TLabel;
    Label19: TLabel;
    GroupBox8: TGroupBox;
    edt_vendedor: TEdit;
    btn_add_vend: TcxButton;
    cxGrid3: TcxGrid;
    cxGridDBTableView2: TcxGridDBTableView;
    cxGridDBTableView2ID: TcxGridDBColumn;
    cxGridDBTableView2Column1: TcxGridDBColumn;
    cxGridDBTableView2ID_VENDEDOR: TcxGridDBColumn;
    cxGridDBTableView2COMISSAO: TcxGridDBColumn;
    cxGridLevel2: TcxGridLevel;
    edt_comissao_gerente: TEdit;
    btn_con_vend: TcxButton;
    grp1: TGroupBox;
    grp_c_faixa: TGroupBox;
    Label13: TLabel;
    Label15: TLabel;
    Label16: TLabel;
    GroupBox17: TGroupBox;
    edt_comissao: TEdit;
    edt_v_min: TEdit;
    edt_v_max: TEdit;
    btn_cad_comiss: TcxButton;
    grid_c: TcxGrid;
    grid_cDBTableView1: TcxGridDBTableView;
    grid_cDBTableView1USUARIO: TcxGridDBColumn;
    grid_cDBTableView1DATA_CADASTRO: TcxGridDBColumn;
    grid_cDBTableView1VALOR_MIN: TcxGridDBColumn;
    grid_cDBTableView1VALOR_MAX: TcxGridDBColumn;
    grid_cDBTableView1PERCENTUAL_COMISSAO: TcxGridDBColumn;
    grid_cLevel1: TcxGridLevel;
    GroupBox12: TGroupBox;
    GroupBox20: TGroupBox;
    GroupBox7: TGroupBox;
    Label73: TLabel;
    Label74: TLabel;
    GroupBox13: TGroupBox;
    GroupBox14: TGroupBox;
    Label51: TLabel;
    Label68: TLabel;
    grp_vendedor: TGroupBox;
    Label20: TLabel;
    Label21: TLabel;
    GroupBox9: TGroupBox;
    edt_gerente: TEdit;
    edt_comiss_gerente: TEdit;
    GroupBox6: TGroupBox;
    lbl_ger_vend: TLabel;
    Edit1: TEdit;
    cxGrid2: TcxGrid;
    cxGridDBTableView1: TcxGridDBTableView;
    cxGridDBTableView1ID_VENDEDOR: TcxGridDBColumn;
    cxGridDBTableView1COMISSAO: TcxGridDBColumn;
    cxGridLevel1: TcxGridLevel;
    BtnAlterar: TcxButton;
    Edit3: TEdit;
    Edit2: TEdit;
    Edit4: TEdit;
    Edit5: TEdit;
    Edit7: TEdit;
    Edit8: TEdit;
    Edit9: TEdit;
    Edit10: TEdit;
    Edit11: TEdit;
    Edit12: TEdit;
    Edit13: TEdit;
    Edit14: TEdit;
    Edit6: TEdit;
    Edit15: TEdit;
    Edit16: TEdit;
    Edit17: TEdit;
    Edit18: TEdit;
    Edit19: TEdit;
    Edit20: TEdit;
    Edit21: TEdit;
    Edit22: TEdit;
    Edit23: TEdit;
    Edit24: TEdit;
    Edit25: TEdit;
    Edit26: TEdit;
    Shape1: TShape;
    Edit27: TEdit;
    Edit28: TEdit;
    Edit29: TEdit;
    Edit30: TEdit;
    chk_com_faixa: TcxCheckBox;
    cxButton1: TcxButton;
    cxButton2: TcxButton;
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frm_colab_dados_adc: Tfrm_colab_dados_adc;

implementation

{$R *.dfm}

end.
