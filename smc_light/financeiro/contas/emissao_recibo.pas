//Verificado automaticamente em 16/06/2020 09:27
unit emissao_recibo;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, cxGraphics, cxControls, cxLookAndFeels,
  cxLookAndFeelPainters, cxContainer, cxEdit, dxSkinsCore,
  dxSkinOffice2013White, Vcl.Menus, Vcl.StdCtrls, Vcl.DBCtrls, cxButtons,
  cxRadioGroup, cxGroupBox, cxCheckBox, Vcl.ComCtrls, dxSkinOffice2007Silver,
  dxSkinOffice2013LightGray;

type
  Tfrm_emissao_recibo = class(TForm)
    Label1: TLabel;
    Label2: TLabel;
    Label3: TLabel;
    Label4: TLabel;
    Label5: TLabel;
    Label6: TLabel;
    Edit2: TEdit;
    DateTimePicker1: TDateTimePicker;
    cxCheckBox1: TcxCheckBox;
    Edit1: TEdit;
    Edit3: TEdit;
    Edit4: TEdit;
    Edit5: TEdit;
    cxGroupBox1: TcxGroupBox;
    cxRadioButton1: TcxRadioButton;
    cxRadioButton2: TcxRadioButton;
    cxGroupBox2: TcxGroupBox;
    cxRadioButton3: TcxRadioButton;
    cxRadioButton4: TcxRadioButton;
    cxButton1: TcxButton;
    BtnIncluir: TcxButton;
    BtnAlterar: TcxButton;
    cxButton2: TcxButton;
    DBMemo1: TDBMemo;
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frm_emissao_recibo: Tfrm_emissao_recibo;

implementation

{$R *.dfm}

end.
