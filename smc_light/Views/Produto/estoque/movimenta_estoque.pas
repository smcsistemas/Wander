//Verificado automaticamente em 16/06/2020 09:29
unit movimenta_estoque;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, cxGraphics, cxControls, cxLookAndFeels,
  cxLookAndFeelPainters, dxSkinsCore, dxSkinOffice2013White, dxSkinscxPCPainter,
  dxBarBuiltInMenu, Vcl.Menus, cxContainer, cxEdit, Vcl.ComCtrls, dxCore,
  cxDateUtils, Data.DB, cxGroupBox, Vcl.Grids, Vcl.DBGrids, cxDropDownEdit,
  cxCalendar, Vcl.StdCtrls, Vcl.DBCtrls, cxRadioGroup, cxTextEdit, cxMaskEdit,
  Vcl.Mask, cxCheckBox, cxButtons, cxPC, dxSkinOffice2007Silver,
  dxSkinOffice2013LightGray, cxStyles, cxCustomData, cxFilter, cxData,
  cxDataStorage, cxNavigator, cxDBData, cxLabel, cxCurrencyEdit, cxGridLevel,
  cxGridCustomTableView, cxGridTableView, cxGridDBTableView, cxClasses,
  cxGridCustomView, cxGrid, dxSkinBlack, dxSkinBlue, dxSkinBlueprint,
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
  Tfrm_Estoque = class(TForm)
    s: TcxPageControl;
    tsMovimentacao: TcxTabSheet;
    grp_mov: TGroupBox;
    btn_for: TcxButton;
    cxRadioButton3: TcxRadioButton;
    cxTabSheet2: TcxTabSheet;
    cxGroupBox1: TcxGroupBox;
    Label8: TLabel;
    Label26: TLabel;
    cxDateEdit3: TcxDateEdit;
    cxDateEdit5: TcxDateEdit;
    cxGroupBox4: TcxGroupBox;
    Label9: TLabel;
    Label29: TLabel;
    Label10: TLabel;
    Label1: TLabel;
    Edit8: TEdit;
    btnconprod: TcxButton;
    Edit11: TEdit;
    btnforne: TcxButton;
    Edit1: TEdit;
    cxButton1: TcxButton;
    cxButton6: TcxButton;
    Label12: TLabel;
    DBEdit9: TDBEdit;
    DBEdit2: TDBEdit;
    Label5: TLabel;
    Label24: TLabel;
    DBEdit10: TDBEdit;
    cxComboBox4: TcxComboBox;
    Label33: TLabel;
    cxComboBox3: TcxComboBox;
    Label32: TLabel;
    DateTimePicker1: TDateTimePicker;
    Label27: TLabel;
    DBEdit11: TDBEdit;
    Label25: TLabel;
    Label19: TLabel;
    edt_historico: TEdit;
    Label20: TLabel;
    COD_FORN: TDBEdit;
    Edit4: TEdit;
    Edit3: TEdit;
    COD_PROD: TDBEdit;
    Label11: TLabel;
    btn_prod: TcxButton;
    chk_entrada: TcxCheckBox;
    chk_saida: TcxCheckBox;
    Label6: TLabel;
    DBComboBox1: TDBComboBox;
    Label2: TLabel;
    cxComboBox1: TcxComboBox;
    Label23: TLabel;
    DBEdit1: TDBEdit;
    Label3: TLabel;
    grid_c: TcxGrid;
    grid_cDBTableView1: TcxGridDBTableView;
    grid_cDBTableView1TIPO: TcxGridDBColumn;
    grid_cDBTableView1QTDE_MIN: TcxGridDBColumn;
    grid_cDBTableView1PRECO: TcxGridDBColumn;
    grid_cDBTableView1Column2: TcxGridDBColumn;
    grid_cDBTableView1Column1: TcxGridDBColumn;
    grid_cDBTableView1Column3: TcxGridDBColumn;
    grid_cDBTableView1Column4: TcxGridDBColumn;
    grid_cDBTableView1Column5: TcxGridDBColumn;
    grid_cDBTableView1Column6: TcxGridDBColumn;
    grid_cDBTableView1Column7: TcxGridDBColumn;
    grid_cDBTableView1Column8: TcxGridDBColumn;
    grid_cDBTableView1Column9: TcxGridDBColumn;
    grid_cLevel1: TcxGridLevel;
    cxCheckBox3: TcxCheckBox;
    cxCheckBox4: TcxCheckBox;
    Label7: TLabel;
    BtnGravar: TcxButton;
    BtnCancelar: TcxButton;
    BtnAlterar: TcxButton;
    BtnIncluir: TcxButton;
    procedure btnlocalizacaoClick(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frm_Estoque: Tfrm_Estoque;

implementation

uses
  estoque_localizacao;

{$R *.dfm}

procedure Tfrm_Estoque.btnlocalizacaoClick(Sender: TObject);
begin
Frm_Localizacao:= TFrm_Localizacao.create(nil);
Frm_Localizacao.showmodal;
end;

procedure Tfrm_Estoque.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  Action := cafree;
  self := nil;
end;

end.
