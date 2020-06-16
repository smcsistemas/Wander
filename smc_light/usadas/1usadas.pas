//Verificado automaticamente em 16/06/2020 09:28
unit usadas;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, cxGraphics, cxLookAndFeels,
  cxLookAndFeelPainters, Vcl.Menus, dxSkinsCore, Vcl.StdCtrls, cxButtons,
  cxControls, cxContainer, cxEdit, Vcl.Grids, Vcl.DBGrids, cxTextEdit,
  cxMaskEdit, cxDropDownEdit, cxGroupBox, Vcl.Mask, Vcl.DBCtrls, cxCheckBox,
  cxCheckComboBox, Data.DB, cxRadioGroup, dxSkinOffice2013LightGray,
  Vcl.ComCtrls, dxCore, cxDateUtils, cxCalendar;

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
