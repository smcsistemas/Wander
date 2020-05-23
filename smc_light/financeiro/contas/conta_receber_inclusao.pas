unit conta_receber_inclusao;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, cxGraphics, cxLookAndFeels,
  cxLookAndFeelPainters, Vcl.Menus, dxSkinsCore, dxSkinOffice2013White,
  Vcl.StdCtrls, Vcl.DBCtrls, Vcl.Mask, Vcl.ComCtrls, cxButtons;

type
  TFrm_contas_reb_incluir = class(TForm)
    Label1: TLabel;
    Label2: TLabel;
    Label3: TLabel;
    Label4: TLabel;
    Label24: TLabel;
    Label23: TLabel;
    Label5: TLabel;
    Edit1: TEdit;
    Edit2: TEdit;
    cxButton1: TcxButton;
    DateTimePicker1: TDateTimePicker;
    Edit3: TEdit;
    Edit4: TEdit;
    DBEdit5: TDBEdit;
    cxButton11: TcxButton;
    cxButton10: TcxButton;
    DBEdit4: TDBEdit;
    DBEdit3: TDBEdit;
    DBEdit2: TDBEdit;
    DBMemo1: TDBMemo;
    cxButton4: TcxButton;
    cxButton5: TcxButton;
    cxButton6: TcxButton;
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Frm_contas_reb_incluir: TFrm_contas_reb_incluir;

implementation

{$R *.dfm}

end.
