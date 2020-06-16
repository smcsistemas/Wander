//Verificado automaticamente em 16/06/2020 09:28
unit finan_os;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls, Vcl.ComCtrls, cxGraphics,
  cxLookAndFeels, cxLookAndFeelPainters, Vcl.Menus, cxControls, cxContainer,
  cxEdit, cxGroupBox, Vcl.Mask, Vcl.DBCtrls, cxButtons, Data.DB, Vcl.Grids,
  Vcl.DBGrids, cxTextEdit, cxMaskEdit, cxDropDownEdit, dxSkinsCore;

type
  TFrm_finan_os = class(TForm)
    Label1: TLabel;
    Edit1: TEdit;
    Label2: TLabel;
    Edit2: TEdit;
    Label3: TLabel;
    Edit3: TEdit;
    GroupBox1: TGroupBox;
    RadioButton1: TRadioButton;
    RadioButton2: TRadioButton;
    Label6: TLabel;
    ComboBoxEx1: TComboBoxEx;
    ComboBoxEx2: TComboBoxEx;
    Label7: TLabel;
    Label4: TLabel;
    cxButton2: TcxButton;
    DBEdit1: TDBEdit;
    Label5: TLabel;
    cxGroupBox7: TcxGroupBox;
    Label8: TLabel;
    cxButton1: TcxButton;
    DBEdit2: TDBEdit;
    Label9: TLabel;
    cxGroupBox1: TcxGroupBox;
    Label10: TLabel;
    Edit4: TEdit;
    Label11: TLabel;
    Edit5: TEdit;
    GroupBox2: TGroupBox;
    DBGrid1: TDBGrid;
    cxButton4: TcxButton;
    GroupBox3: TGroupBox;
    Label12: TLabel;
    Label13: TLabel;
    Label14: TLabel;
    Label15: TLabel;
    Label16: TLabel;
    Label17: TLabel;
    Label18: TLabel;
    Edit6: TEdit;
    Edit7: TEdit;
    Edit8: TEdit;
    Edit9: TEdit;
    Edit10: TEdit;
    cxGroupBox2: TcxGroupBox;
    DBGrid2: TDBGrid;
    cxButton8: TcxButton;
    cxButton9: TcxButton;
    cxComboBox2: TcxComboBox;
    cxButton3: TcxButton;
    procedure cxButton3Click(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Frm_finan_os: TFrm_finan_os;

implementation

{$R *.dfm}

uses confirm_fechamento;

procedure TFrm_finan_os.cxButton3Click(Sender: TObject);
begin
Frm_conf_fechamento:= TFrm_conf_fechamento.create(nil);
Frm_conf_fechamento.showmodal;
end;


procedure TFrm_finan_os.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  Action := cafree;
  self := nil;
end;

end.
