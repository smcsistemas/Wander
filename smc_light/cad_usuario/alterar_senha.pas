unit alterar_senha;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, cxGraphics, cxLookAndFeels,
  cxLookAndFeelPainters, Vcl.Menus, dxSkinsCore, Vcl.StdCtrls, cxButtons;

type
  Tfrm_alterar_senha = class(TForm)
    Label22: TLabel;
    Label3: TLabel;
    Label10: TLabel;
    cxButton23: TcxButton;
    cxButton25: TcxButton;
    edt_confirma_senha: TEdit;
    edt_senha: TEdit;
    edt_usuario: TEdit;
    Edit1: TEdit;
    Label1: TLabel;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frm_alterar_senha: Tfrm_alterar_senha;

implementation

{$R *.dfm}

procedure Tfrm_alterar_senha.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  Action := cafree;
  self := nil;
end;

end.
