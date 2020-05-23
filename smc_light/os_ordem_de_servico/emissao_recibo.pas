unit emissao_recibo;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, cxGraphics, cxControls, cxLookAndFeels,
  cxLookAndFeelPainters, cxContainer, cxEdit, dxSkinsCore,
  dxSkinOffice2013LightGray, Vcl.Menus, Vcl.StdCtrls, cxButtons, cxRadioGroup,
  cxGroupBox, cxCheckBox, Vcl.ComCtrls, Vcl.DBCtrls;

type
  Tfrm_emissao_recibo = class(TForm)
    Label1: TLabel;
    Label2: TLabel;
    Edit2: TEdit;
    DateTimePicker1: TDateTimePicker;
    cxCheckBox1: TcxCheckBox;
    Label3: TLabel;
    Edit1: TEdit;
    Label4: TLabel;
    Edit3: TEdit;
    Label5: TLabel;
    Edit4: TEdit;
    Edit5: TEdit;
    Label6: TLabel;
    cxGroupBox1: TcxGroupBox;
    cxRadioButton1: TcxRadioButton;
    cxRadioButton2: TcxRadioButton;
    cxGroupBox2: TcxGroupBox;
    cxButton1: TcxButton;
    BtnIncluir: TcxButton;
    BtnAlterar: TcxButton;
    cxButton2: TcxButton;
    DBMemo1: TDBMemo;
    cxRadioButton3: TcxRadioButton;
    cxRadioButton4: TcxRadioButton;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frm_emissao_recibo: Tfrm_emissao_recibo;

implementation

{$R *.dfm}

procedure Tfrm_emissao_recibo.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  Action := cafree;
  Self := nil;
end;

end.
