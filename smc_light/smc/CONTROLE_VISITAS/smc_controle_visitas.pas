//Verificado automaticamente em 16/06/2020 09:28
unit smc_controle_visitas;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, cxGraphics, cxControls, cxLookAndFeels,
  cxLookAndFeelPainters, cxContainer, cxEdit, dxSkinsCore, Vcl.Menus,
  Vcl.StdCtrls, cxButtons, cxTextEdit, cxMaskEdit, cxDropDownEdit, cxGroupBox,
  cxCheckBox, cxCheckComboBox;

type
  Tfrm_smc_controle_vistias = class(TForm)
    cxGroupBox1: TcxGroupBox;
    Label1: TLabel;
    Edit1: TEdit;
    Label2: TLabel;
    Edit2: TEdit;
    cxComboBox1: TcxComboBox;
    Label3: TLabel;
    Label4: TLabel;
    Edit3: TEdit;
    Label5: TLabel;
    Edit4: TEdit;
    Label6: TLabel;
    Edit5: TEdit;
    Label7: TLabel;
    Edit6: TEdit;
    Label8: TLabel;
    Edit7: TEdit;
    Label9: TLabel;
    Label10: TLabel;
    Edit9: TEdit;
    cxComboBox2: TcxComboBox;
    btnMunicip: TcxButton;
    cxGroupBox2: TcxGroupBox;
    Label11: TLabel;
    Edit8: TEdit;
    Label12: TLabel;
    Edit10: TEdit;
    Label13: TLabel;
    Edit11: TEdit;
    Label14: TLabel;
    Edit12: TEdit;
    cxGroupBox3: TcxGroupBox;
    Label15: TLabel;
    Label16: TLabel;
    Edit13: TEdit;
    Label17: TLabel;
    cxComboBox4: TcxComboBox;
    cxCheckComboBox1: TcxCheckComboBox;
    cxGroupBox4: TcxGroupBox;
    Label18: TLabel;
    Edit14: TEdit;
    Label19: TLabel;
    Edit15: TEdit;
    Label20: TLabel;
    Edit16: TEdit;
    Edit17: TEdit;
    Label21: TLabel;
    cxButton4: TcxButton;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frm_smc_controle_vistias: Tfrm_smc_controle_vistias;

implementation

{$R *.dfm}

procedure Tfrm_smc_controle_vistias.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  Action := cafree;
  self := nil;
end;

end.
