unit U_Proxy;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls;

type
  TF_Proxy = class(TForm)
    Label1: TLabel;
    EditHost: TEdit;
    EditPorta: TEdit;
    Label2: TLabel;
    EditUsuario: TEdit;
    Label3: TLabel;
    EditSenha: TEdit;
    Label4: TLabel;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  F_Proxy: TF_Proxy;

implementation

uses U_Principal, U_CNPJ;

{$R *.dfm}

procedure TF_Proxy.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  Frm_CNPJ.FSistConsultaCNPJ.Proxy(EditHost.Text, EditPorta.Text, EditUsuario.Text, EditSenha.Text);
end;

end.
