//Verificado automaticamente em 16/06/2020 09:28
unit rel_fornecedor;

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
  dxSkinXmas2008Blue, Vcl.StdCtrls, cxButtons, cxRadioGroup, cxControls,
  cxContainer, cxEdit, Vcl.DBCtrls, cxGroupBox, cxTextEdit, cxMaskEdit,
  cxDropDownEdit;

type
  Tfrm_rel_fornecedor = class(TForm)
    GroupBox1: TGroupBox;
    cxButton14: TcxButton;
    cxButton11: TcxButton;
    GroupBox6: TGroupBox;
    Edit6: TEdit;
    cxButton2: TcxButton;
    Label7: TLabel;
    cxRadioButton11: TcxRadioButton;
    cxRadioButton10: TcxRadioButton;
    GroupBox2: TGroupBox;
    cxComboBox3: TcxComboBox;
    cxGroupBox2: TcxGroupBox;
    rd_juri: TcxRadioButton;
    rd_fisic: TcxRadioButton;
    rd_todos: TcxRadioButton;
    GroupBox4: TGroupBox;
    cdb_ordem: TDBComboBox;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure rd_juriClick(Sender: TObject);
    procedure rd_fisicClick(Sender: TObject);
    procedure rd_todosClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frm_rel_fornecedor: Tfrm_rel_fornecedor;

implementation

{$R *.dfm}

procedure Tfrm_rel_fornecedor.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  Action := cafree;
  self := nil;
end;

procedure Tfrm_rel_fornecedor.rd_fisicClick(Sender: TObject);
begin
cdb_ordem.Clear;
cdb_ordem.AddItem('Código', nil);
cdb_ordem.AddItem('Nome', nil);
end;

procedure Tfrm_rel_fornecedor.rd_juriClick(Sender: TObject);
begin
cdb_ordem.Clear;
cdb_ordem.AddItem('Razão Social', nil);
cdb_ordem.AddItem('Nome Fantasia', nil);
end;

procedure Tfrm_rel_fornecedor.rd_todosClick(Sender: TObject);
begin
cdb_ordem.Clear;
cdb_ordem.AddItem('Código', nil);
cdb_ordem.AddItem('Nome', nil);
cdb_ordem.AddItem('Razão Social', nil);
cdb_ordem.AddItem('Nome Fantasia', nil);
end;

end.
