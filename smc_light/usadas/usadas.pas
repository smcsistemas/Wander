unit usadas;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, cxGraphics, cxLookAndFeels,
  cxLookAndFeelPainters, Vcl.Menus, dxSkinsCore, Vcl.StdCtrls, cxButtons,
  cxControls, cxContainer, cxEdit, Vcl.Grids, Vcl.DBGrids, cxTextEdit,
  cxMaskEdit, cxDropDownEdit, cxGroupBox, Vcl.Mask, Vcl.DBCtrls, cxCheckBox,
  cxCheckComboBox, Data.DB, cxRadioGroup, dxSkinOffice2013LightGray,
  Vcl.ComCtrls, dxCore, cxDateUtils, cxCalendar, cxStyles, dxSkinscxPCPainter,
  cxCustomData, cxFilter, cxData, cxDataStorage, cxNavigator, cxDBData, cxLabel,
  cxCurrencyEdit, cxGridLevel, cxGridCustomTableView, cxGridTableView,
  cxGridDBTableView, cxClasses, cxGridCustomView, cxGrid, dxSkinOffice2013White,
  cxDBEdit, dxSkinBlack, dxSkinBlue, dxSkinBlueprint, dxSkinCaramel,
  dxSkinCoffee, dxSkinDarkRoom, dxSkinDarkSide, dxSkinDevExpressDarkStyle,
  dxSkinDevExpressStyle, dxSkinFoggy, dxSkinGlassOceans,
  dxSkinHighContrast, dxSkiniMaginary, dxSkinLilian, dxSkinLiquidSky,
  dxSkinLondonLiquidSky, dxSkinMcSkin, dxSkinMetropolis,
  dxSkinMetropolisDark, dxSkinMoneyTwins, dxSkinOffice2007Black,
  dxSkinOffice2007Blue, dxSkinOffice2007Green, dxSkinOffice2007Pink,
  dxSkinOffice2007Silver, dxSkinOffice2010Black, dxSkinOffice2010Blue,
  dxSkinOffice2010Silver, dxSkinOffice2013DarkGray,
  dxSkinOffice2016Colorful, dxSkinOffice2016Dark, dxSkinPumpkin,
  dxSkinSeven, dxSkinSevenClassic, dxSkinSharp, dxSkinSharpPlus,
  dxSkinSilver, dxSkinSpringTime, dxSkinStardust, dxSkinSummer2008,
  dxSkinTheAsphaltWorld, dxSkinsDefaultPainters, dxSkinValentine,
  dxSkinVisualStudio2013Blue, dxSkinVisualStudio2013Dark,
  dxSkinVisualStudio2013Light, dxSkinVS2010, dxSkinWhiteprint,
  dxSkinXmas2008Blue;

type
  TForm2 = class(TForm)
    btn_marca: TcxButton;
    BtnGravar: TcxButton;
    BtnCancelar: TcxButton;
    BtnIncluir: TcxButton;
    BtnAlterar: TcxButton;
    BtnExcluir: TcxButton;
    GroupBox6: TGroupBox;
    Label7: TLabel;
    Label8: TLabel;
    edt_venda_inicio: TEdit;
    edt_venda_fim: TEdit;
    Label1: TLabel;
    DBEdit1: TDBEdit;
    cxGroupBox1: TcxGroupBox;
    cxComboBox1: TcxComboBox;
    Label2: TLabel;
    cxGroupBox3: TcxGroupBox;
    Label12: TLabel;
    DBEdit13: TDBEdit;
    DBEdit14: TDBEdit;
    DBGrid1: TDBGrid;
    cxButton3: TcxButton;
    Label4: TLabel;
    cxGroupBox2: TcxGroupBox;
    cxComboBox2: TcxComboBox;
    cxGroupBox4: TcxGroupBox;
    Label3: TLabel;
    Label10: TLabel;
    Label11: TLabel;
    Label5: TLabel;
    Label13: TLabel;
    Label14: TLabel;
    Label15: TLabel;
    Label17: TLabel;
    Label18: TLabel;
    Label19: TLabel;
    Código: TDBEdit;
    cxButton8: TcxButton;
    cxButton2: TcxButton;
    cxGroupBox5: TcxGroupBox;
    cxRadioButton1: TcxRadioButton;
    cxRadioButton2: TcxRadioButton;
    cxButton4: TcxButton;
    cxButton5: TcxButton;
    cxButton6: TcxButton;
    cxButton7: TcxButton;
    cxButton9: TcxButton;
    cxComboBox3: TcxComboBox;
    Label6: TLabel;
    Label23: TLabel;
    DBEdit2: TDBEdit;
    Label24: TLabel;
    DBEdit3: TDBEdit;
    DBEdit4: TDBEdit;
    cxButton10: TcxButton;
    DBEdit5: TDBEdit;
    cxButton11: TcxButton;
    cxDateEdit1: TcxDateEdit;
    cxButton1: TcxButton;
    cxGroupBox6: TcxGroupBox;
    Label20: TLabel;
    Label21: TLabel;
    cxButton13: TcxButton;
    DateTimePicker3: TDateTimePicker;
    DateTimePicker4: TDateTimePicker;
    cxComboBox4: TcxComboBox;
    GroupBox12: TGroupBox;
    DBEdit6: TDBEdit;
    DBEdit7: TDBEdit;
    dbedtemail: TDBEdit;
    cxGrid1: TcxGrid;
    cxGridDBTableView1: TcxGridDBTableView;
    cxGridDBColumn1: TcxGridDBColumn;
    cxGridDBColumn2: TcxGridDBColumn;
    cxGridDBColumn3: TcxGridDBColumn;
    cxGridDBColumn4: TcxGridDBColumn;
    cxGridDBColumn5: TcxGridDBColumn;
    cxGridDBColumn6: TcxGridDBColumn;
    cxGridLevel1: TcxGridLevel;
    DBEdit8: TDBEdit;
    DBEdit9: TDBEdit;
    DBEdit10: TDBEdit;
    DBEdit11: TDBEdit;
    cxButton16: TcxButton;
    cxButton17: TcxButton;
    cxButton18: TcxButton;
    cxGridDBColumn7: TcxGridDBColumn;
    cxGridDBColumn8: TcxGridDBColumn;
    cxButton23: TcxButton;
    cxButton24: TcxButton;
    cxButton25: TcxButton;
    dbcbbSITUACAO_FINANCEIRA: TDBComboBox;
    lbl9: TLabel;
    lbl10: TLabel;
    cxDBTextEdit58: TcxDBTextEdit;
    DBComboBox3: TDBComboBox;
    Label9: TLabel;
    Label32: TLabel;
    cxDBTextEdit7: TcxDBTextEdit;
    cxDBTextEdit6: TcxDBTextEdit;
    Label16: TLabel;
    grpEndereco: TGroupBox;
    Label22: TLabel;
    Label25: TLabel;
    Label26: TLabel;
    btnMunicip: TcxButton;
    cxComboBox5: TcxComboBox;
    cxGrid4: TcxGrid;
    cxGridDBTableView3: TcxGridDBTableView;
    cxGridDBTableView3Column11: TcxGridDBColumn;
    cxGridDBTableView3Column1: TcxGridDBColumn;
    cxGridDBTableView3Column2: TcxGridDBColumn;
    cxGridDBTableView3Column3: TcxGridDBColumn;
    cxGridDBTableView3Column4: TcxGridDBColumn;
    cxGridDBTableView3Column5: TcxGridDBColumn;
    cxGridDBTableView3Column6: TcxGridDBColumn;
    cxGridDBTableView3Column8: TcxGridDBColumn;
    cxGridDBTableView3Column9: TcxGridDBColumn;
    cxGridDBTableView3Column10: TcxGridDBColumn;
    cxGridDBTableView3Column7: TcxGridDBColumn;
    cxGridLevel3: TcxGridLevel;
    cxButton12: TcxButton;
    cxButton14: TcxButton;
    cxButton15: TcxButton;
    cxButton19: TcxButton;
    Edit2: TEdit;
    cxButton20: TcxButton;
    btn_cep: TcxButton;
    DBEdit76: TDBEdit;
    DBEdit75: TDBEdit;
    DBEdit79: TDBEdit;
    DBEdit77: TDBEdit;
    DBEdit78: TDBEdit;
    DBEdit12: TDBEdit;
    DBEdit81: TDBEdit;
    DBEdit80: TDBEdit;
    DBEdit82: TDBEdit;
    DBEdit104: TDBEdit;
    DBEdit83: TDBEdit;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form2: TForm2;

implementation

{$R *.dfm}

procedure TForm2.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  Action := cafree;
  Self := nil;
end;

end.
