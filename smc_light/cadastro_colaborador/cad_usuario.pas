//Verificado automaticamente em 16/06/2020 09:26
unit cad_usuario;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, cxGraphics, cxControls, cxLookAndFeels,
  cxLookAndFeelPainters, cxContainer, cxEdit, dxSkinsCore,
  dxSkinOffice2007Silver, dxSkinOffice2013LightGray, dxSkinOffice2013White,
  Vcl.Menus, Vcl.StdCtrls, cxButtons, cxCheckBox;

type
  Tfrm_cad_usuario = class(TForm)
    cxButton23: TcxButton;
    cxButton25: TcxButton;
    Label22: TLabel;
    Label3: TLabel;
    Label10: TLabel;
    edt_confirma_senha: TEdit;
    edt_senha: TEdit;
    edt_usuario: TEdit;
    btn_cons_usuario: TcxButton;
    chk_admin: TcxCheckBox;
    procedure cxButton25Click(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frm_cad_usuario: Tfrm_cad_usuario;

implementation

{$R *.dfm}

procedure Tfrm_cad_usuario.cxButton25Click(Sender: TObject);
begin
Close;
end;

procedure Tfrm_cad_usuario.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  Action := cafree;
  self := nil;
end;

end.

