//Verificado automaticamente em 16/06/2020 09:28
  unit os_pet;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Data.DB, cxGraphics, cxControls,
  cxLookAndFeels, cxLookAndFeelPainters, cxContainer, cxEdit, Vcl.Menus,
  Vcl.StdCtrls, cxButtons, Vcl.Mask, Vcl.DBCtrls, cxGroupBox, Vcl.Grids,
  Vcl.DBGrids, Vcl.ComCtrls, cxCheckBox, Vcl.ExtCtrls, dxSkinsCore,
  dxSkinscxPCPainter, dxBarBuiltInMenu, cxPC, dxSkinOffice2013LightGray, dxCore,
  cxDateUtils, cxTextEdit, cxMaskEdit, cxDropDownEdit, cxCalendar, cxStyles,
  cxCustomData, cxFilter, cxData, cxDataStorage, cxNavigator, cxDBData,
  cxGridLevel, cxGridCustomTableView, cxGridTableView, cxGridDBTableView,
  cxClasses, cxGridCustomView, cxGrid, dxSkinBlack, dxSkinBlue, dxSkinBlueprint,
  dxSkinCaramel, dxSkinCoffee, dxSkinDarkRoom, dxSkinDarkSide,
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
  TFrm_os_pet = class(TForm)
    cxPageControl2: TcxPageControl;
    cxTabSheet10: TcxTabSheet;
    cxTabSheet11: TcxTabSheet;
    Label5: TLabel;
    Edit3: TEdit;
    Edit4: TEdit;
    Label6: TLabel;
    Label9: TLabel;
    ComboBox2: TComboBox;
    Label7: TLabel;
    ComboBox1: TComboBox;
    cxGroupBox4: TcxGroupBox;
    Label8: TLabel;
    Label10: TLabel;
    Label11: TLabel;
    Label12: TLabel;
    Label13: TLabel;
    Label14: TLabel;
    Label15: TLabel;
    Label17: TLabel;
    Label18: TLabel;
    Label19: TLabel;
    Código: TDBEdit;
    cxButton8: TcxButton;
    cxGroupBox5: TcxGroupBox;
    Label16: TLabel;
    Label20: TLabel;
    Label31: TLabel;
    DBEdit1: TDBEdit;
    cxButton10: TcxButton;
    cxPageControl1: TcxPageControl;
    cxTabSheet1: TcxTabSheet;
    DBGrid3: TDBGrid;
    cxTabSheet2: TcxTabSheet;
    DBGrid4: TDBGrid;
    cxTabSheet3: TcxTabSheet;
    DBGrid5: TDBGrid;
    cxTabSheet4: TcxTabSheet;
    Label21: TLabel;
    Label22: TLabel;
    Label23: TLabel;
    Edit6: TEdit;
    Edit7: TEdit;
    Edit13: TEdit;
    DBMemo2: TDBMemo;
    cxTabSheet5: TcxTabSheet;
    DBGrid7: TDBGrid;
    cxTabSheet6: TcxTabSheet;
    DBGrid8: TDBGrid;
    cxTabSheet7: TcxTabSheet;
    DBGrid9: TDBGrid;
    cxTabSheet8: TcxTabSheet;
    DBGrid10: TDBGrid;
    cxTabSheet9: TcxTabSheet;
    Descrição: TDBMemo;
    GroupBox5: TGroupBox;
    Label24: TLabel;
    Label25: TLabel;
    Label26: TLabel;
    Label27: TLabel;
    Label28: TLabel;
    Edit8: TEdit;
    Edit9: TEdit;
    Edit10: TEdit;
    Edit11: TEdit;
    Edit12: TEdit;
    cxButton9: TcxButton;
    cxButton12: TcxButton;
    cxButton2: TcxButton;
    cxButton14: TcxButton;
    cxButton7: TcxButton;
    cxButton6: TcxButton;
    cxButton5: TcxButton;
    Label3: TLabel;
    GroupBox3: TGroupBox;
    Label1: TLabel;
    Label2: TLabel;
    Edit1: TEdit;
    Edit2: TEdit;
    GroupBox2: TGroupBox;
    RadioButton6: TRadioButton;
    RadioButton7: TRadioButton;
    RadioButton8: TRadioButton;
    RadioButton9: TRadioButton;
    cxGroupBox3: TcxGroupBox;
    cxButton1: TcxButton;
    Edit5: TEdit;
    GroupBox1: TGroupBox;
    cxCheckBox1: TcxCheckBox;
    cxCheckBox2: TcxCheckBox;
    cxCheckBox3: TcxCheckBox;
    cxCheckBox4: TcxCheckBox;
    gdConveniados: TcxGrid;
    gdConveniadosTbVw: TcxGridDBTableView;
    clid: TcxGridDBColumn;
    clRua: TcxGridDBColumn;
    clNumero: TcxGridDBColumn;
    clBairro: TcxGridDBColumn;
    clComplemento: TcxGridDBColumn;
    clRegiao: TcxGridDBColumn;
    clMunicipio: TcxGridDBColumn;
    gdConveniadosLv: TcxGridLevel;
    Label4: TLabel;
    Label29: TLabel;
    Label30: TLabel;
    Label32: TLabel;
    Label33: TLabel;
    Label34: TLabel;
    Label35: TLabel;
    Label36: TLabel;
    Label37: TLabel;
    Label38: TLabel;
    Label39: TLabel;
    procedure cxButton5Click(Sender: TObject);
    procedure cxButton9Click(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Frm_os_pet: TFrm_os_pet;

implementation

{$R *.dfm}

uses finan_os, emissao_recibo, funcoes_sistema;





procedure TFrm_os_pet.cxButton5Click(Sender: TObject);
begin
Frm_finan_os:= TFrm_finan_os.Create(nil);
Frm_finan_os.ShowModal;
end;



procedure TFrm_os_pet.cxButton9Click(Sender: TObject);
begin
    frm_emissao_recibo := Tfrm_emissao_recibo.Create(nil);
    frm_emissao_recibo.showmodal;
    frm_emissao_recibo := nil;
end;


procedure TFrm_os_pet.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  Action := cafree;
  Self := nil;
end;

end.
