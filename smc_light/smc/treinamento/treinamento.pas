//Verificado automaticamente em 16/06/2020 09:28
unit treinamento;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.ExtCtrls, Vcl.StdCtrls, cxGraphics,
  cxControls, cxLookAndFeels, cxLookAndFeelPainters, cxContainer, cxEdit,
  dxSkinsCore, cxGroupBox, dxGDIPlusClasses, Vcl.Menus, cxButtons;

type
  Tfrm_controle_treinamento = class(TForm)
    GroupBox1: TGroupBox;
    Label1: TLabel;
    Label2: TLabel;
    Label3: TLabel;
    Label4: TLabel;
    Label5: TLabel;
    Label6: TLabel;
    Label7: TLabel;
    Label8: TLabel;
    Label9: TLabel;
    Label10: TLabel;
    Label11: TLabel;
    Label12: TLabel;
    Label13: TLabel;
    Label14: TLabel;
    Label15: TLabel;
    Label16: TLabel;
    Label17: TLabel;
    Label18: TLabel;
    Label19: TLabel;
    Label20: TLabel;
    GroupBox2: TGroupBox;
    Label22: TLabel;
    Label23: TLabel;
    Label25: TLabel;
    Label27: TLabel;
    Label28: TLabel;
    Label24: TLabel;
    Label26: TLabel;
    Label31: TLabel;
    RadioButton1: TRadioButton;
    RadioButton2: TRadioButton;
    Edit1: TEdit;
    Edit2: TEdit;
    Edit3: TEdit;
    Edit4: TEdit;
    Edit5: TEdit;
    Edit6: TEdit;
    Edit7: TEdit;
    Edit8: TEdit;
    cxGroupBox1: TcxGroupBox;
    Label41: TLabel;
    Label43: TLabel;
    Label47: TLabel;
    Label48: TLabel;
    Label53: TLabel;
    Label54: TLabel;
    Label55: TLabel;
    Label56: TLabel;
    Label63: TLabel;
    Label52: TLabel;
    Label57: TLabel;
    Label59: TLabel;
    Label60: TLabel;
    Label61: TLabel;
    cxGroupBox2: TcxGroupBox;
    Label36: TLabel;
    Label39: TLabel;
    Label40: TLabel;
    Label44: TLabel;
    Label45: TLabel;
    Label46: TLabel;
    Label50: TLabel;
    Label51: TLabel;
    Image1: TImage;
    Label21: TLabel;
    Label29: TLabel;
    Label30: TLabel;
    Label32: TLabel;
    Label33: TLabel;
    Label34: TLabel;
    Label35: TLabel;
    Label37: TLabel;
    Label38: TLabel;
    Label42: TLabel;
    Label49: TLabel;
    Label58: TLabel;
    Label62: TLabel;
    Label64: TLabel;
    Label65: TLabel;
    cxButton3: TcxButton;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frm_controle_treinamento: Tfrm_controle_treinamento;

implementation

{$R *.dfm}

procedure Tfrm_controle_treinamento.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  Action := cafree;
  self := nil;
end;

end.
