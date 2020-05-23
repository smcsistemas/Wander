unit vw_balanca;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls, Vcl.Mask, Vcl.DBCtrls,
  cxGraphics, cxLookAndFeels, cxLookAndFeelPainters, Vcl.Menus, dxSkinsCore,
  cxButtons;

type
  Tfrm_balanca = class(TForm)
    GroupBox15: TGroupBox;
    Label55: TLabel;
    Label70: TLabel;
    Label78: TLabel;
    DBEdit14: TDBEdit;
    DBEdit15: TDBEdit;
    DBEdit12: TDBEdit;
    cxButton7: TcxButton;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure cxButton7Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frm_balanca: Tfrm_balanca;

implementation

{$R *.dfm}

procedure Tfrm_balanca.cxButton7Click(Sender: TObject);
begin
Close;
end;

procedure Tfrm_balanca.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  Action := cafree;
  self := nil;
end;

end.
