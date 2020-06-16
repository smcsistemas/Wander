//Verificado automaticamente em 16/06/2020 09:28
unit rel_clientes;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, cxGraphics, cxLookAndFeels,
  cxLookAndFeelPainters, Vcl.Menus, dxSkinsCore, dxSkinBlack, dxSkinBlue,
  dxSkinBlueprint, dxSkinCaramel, dxSkinCoffee, dxSkinDarkRoom,
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
  dxSkinXmas2008Blue, cxControls, cxContainer, cxEdit, Vcl.StdCtrls,
  cxGroupBox, cxTextEdit, cxMaskEdit, cxDropDownEdit, cxRadioGroup,
  Vcl.ComCtrls, cxButtons, Vcl.DBCtrls;

type
  Tfrm_rel_clientes = class(TForm)
    GroupBox1: TGroupBox;
    GroupBox3: TGroupBox;
    cxButton14: TcxButton;
    cxButton11: TcxButton;
    GroupBox6: TGroupBox;
    GroupBox8: TGroupBox;
    Label20: TLabel;
    DateTimePicker3: TDateTimePicker;
    DateTimePicker4: TDateTimePicker;
    cxButton13: TcxButton;
    cxRadioButton10: TcxRadioButton;
    cxRadioButton11: TcxRadioButton;
    GroupBox4: TGroupBox;
    GroupBox2: TGroupBox;
    cxComboBox3: TcxComboBox;
    cxGroupBox1: TcxGroupBox;
    Label1: TLabel;
    Label4: TLabel;
    Label2: TLabel;
    Label8: TLabel;
    Label3: TLabel;
    Bairro: TComboBox;
    ComboBox4: TComboBox;
    ComboBox3: TComboBox;
    ComboBox2: TComboBox;
    ComboBox1: TComboBox;
    cxComboBox4: TcxComboBox;
    Label5: TLabel;
    cdb_ordem: TDBComboBox;
    cxGroupBox2: TcxGroupBox;
    rd_juri: TcxRadioButton;
    rd_fisic: TcxRadioButton;
    rd_todos: TcxRadioButton;
    ComboBox6: TComboBox;
    Label9: TLabel;
    Label6: TLabel;
    GroupBox5: TGroupBox;
    Edit6: TEdit;
    cxButton2: TcxButton;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure btn_juriClick(Sender: TObject);
    procedure btn_fisicaClick(Sender: TObject);
    procedure cxButton4Click(Sender: TObject);
    procedure rd_juriClick(Sender: TObject);
    procedure rd_fisicClick(Sender: TObject);
    procedure rd_todosClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frm_rel_clientes: Tfrm_rel_clientes;

implementation

{$R *.dfm}


procedure Tfrm_rel_clientes.btn_juriClick(Sender: TObject);
begin
cdb_ordem.Clear;
cdb_ordem.AddItem('Razão Social', nil);
cdb_ordem.AddItem('Nome Fantasia', nil);
end;

procedure Tfrm_rel_clientes.btn_fisicaClick(Sender: TObject);
begin
cdb_ordem.Clear;
cdb_ordem.AddItem('Código', nil);
cdb_ordem.AddItem('Nome', nil);
end;

procedure Tfrm_rel_clientes.cxButton4Click(Sender: TObject);
begin
cdb_ordem.Clear;
cdb_ordem.AddItem('Código', nil);
cdb_ordem.AddItem('Nome', nil);
cdb_ordem.AddItem('Razão Social', nil);
cdb_ordem.AddItem('Nome Fantasia', nil);
end;

procedure Tfrm_rel_clientes.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  Action := cafree;
  self := nil;
end;

procedure Tfrm_rel_clientes.rd_fisicClick(Sender: TObject);
begin
cdb_ordem.Clear;
cdb_ordem.AddItem('Código', nil);
cdb_ordem.AddItem('Nome', nil);
end;

procedure Tfrm_rel_clientes.rd_juriClick(Sender: TObject);
begin
cdb_ordem.Clear;
cdb_ordem.AddItem('Razão Social', nil);
cdb_ordem.AddItem('Nome Fantasia', nil);
end;

procedure Tfrm_rel_clientes.rd_todosClick(Sender: TObject);
begin
cdb_ordem.Clear;
cdb_ordem.AddItem('Código', nil);
cdb_ordem.AddItem('Nome', nil);
cdb_ordem.AddItem('Razão Social', nil);
cdb_ordem.AddItem('Nome Fantasia', nil);
end;

end.
