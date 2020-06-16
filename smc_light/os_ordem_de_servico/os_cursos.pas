//Verificado automaticamente em 16/06/2020 09:28
  unit os_cursos;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Data.DB, cxGraphics, cxControls,
  cxLookAndFeels, cxLookAndFeelPainters, cxContainer, cxEdit, Vcl.Menus,
  Vcl.StdCtrls, cxButtons, Vcl.Mask, Vcl.DBCtrls, cxGroupBox, Vcl.Grids,
  Vcl.DBGrids, Vcl.ComCtrls, cxCheckBox, Vcl.ExtCtrls, dxSkinsCore,
  dxSkinscxPCPainter, dxBarBuiltInMenu, cxPC;

type
  TFrm_os_cursos = class(TForm)
    PageControl1: TPageControl;
    TabSheet1: TTabSheet;
    TabSheet2: TTabSheet;
    Label4: TLabel;
    cxGroupBox3: TcxGroupBox;
    DBEdit14: TDBEdit;
    cxButton1: TcxButton;
    cxGroupBox1: TcxGroupBox;
    cxGroupBox2: TcxGroupBox;
    GroupBox3: TGroupBox;
    Label1: TLabel;
    Label2: TLabel;
    GroupBox2: TGroupBox;
    RadioButton6: TRadioButton;
    RadioButton7: TRadioButton;
    RadioButton8: TRadioButton;
    RadioButton9: TRadioButton;
    RadioButton10: TRadioButton;
    RadioButton11: TRadioButton;
    Label3: TLabel;
    GroupBox4: TGroupBox;
    RadioButton12: TRadioButton;
    RadioButton13: TRadioButton;
    cxButton3: TcxButton;
    GroupBox1: TGroupBox;
    DBGrid1: TDBGrid;
    DBGrid2: TDBGrid;
    cxButton2: TcxButton;
    cxButton12: TcxButton;
    cxButton5: TcxButton;
    cxButton6: TcxButton;
    cxButton14: TcxButton;
    cxButton7: TcxButton;
    Label5: TLabel;
    Edit3: TEdit;
    Edit4: TEdit;
    Label6: TLabel;
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
    GroupBox5: TGroupBox;
    Label24: TLabel;
    Edit8: TEdit;
    Label25: TLabel;
    Edit9: TEdit;
    Label26: TLabel;
    Edit10: TEdit;
    Edit11: TEdit;
    Label27: TLabel;
    Label28: TLabel;
    Edit12: TEdit;
    cxButton9: TcxButton;
    cxCheckBox1: TcxCheckBox;
    cxCheckBox2: TcxCheckBox;
    cxCheckBox3: TcxCheckBox;
    cxCheckBox4: TcxCheckBox;
    DateTimePicker1: TDateTimePicker;
    DateTimePicker2: TDateTimePicker;
    Label9: TLabel;
    ComboBox2: TComboBox;
    cxPageControl1: TcxPageControl;
    cxTabSheet1: TcxTabSheet;
    cxTabSheet2: TcxTabSheet;
    cxTabSheet9: TcxTabSheet;
    DBGrid3: TDBGrid;
    DBGrid4: TDBGrid;
    cxTabSheet3: TcxTabSheet;
    Descrição: TDBMemo;
    DBGrid5: TDBGrid;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure cxButton5Click(Sender: TObject);
    procedure cxButton9Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Frm_os_cursos: TFrm_os_cursos;

implementation

{$R *.dfm}

uses vw_main, emissao_recibo, finan_os;


procedure TFrm_os_cursos.cxButton5Click(Sender: TObject);
begin
Frm_finan_os:= TFrm_finan_os.Create(nil);
Frm_finan_os.ShowModal;
end;

procedure TFrm_os_cursos.cxButton9Click(Sender: TObject);
begin
    frm_emissao_recibo := Tfrm_emissao_recibo.Create(nil);
    frm_emissao_recibo.showmodal;
    frm_emissao_recibo := nil;
end;

procedure TFrm_os_cursos.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  Action := cafree;
  Self := nil;
end;

end.
