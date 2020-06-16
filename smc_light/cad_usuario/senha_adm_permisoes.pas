//Verificado automaticamente em 16/06/2020 09:27
unit senha_adm_permisoes;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, cxGraphics, cxControls, cxLookAndFeels,
  cxLookAndFeelPainters, cxContainer, cxEdit, dxSkinsCore,
  dxSkinOffice2013White, Vcl.Menus, Vcl.StdCtrls, cxButtons, cxTextEdit,
  cxDBEdit;

type
  TForm49 = class(TForm)
    Código: TLabel;
    cxDBTextEdit1: TcxDBTextEdit;
    cxButton1: TcxButton;
    cxButton4: TcxButton;
    procedure cxButton4Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form49: TForm49;

implementation

{$R *.dfm}

uses permissoes;

procedure TForm49.cxButton4Click(Sender: TObject);
begin
form50.show
end;

end.
