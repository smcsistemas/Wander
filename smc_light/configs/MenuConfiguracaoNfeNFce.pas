//Verificado automaticamente em 16/06/2020 09:27
unit MenuConfiguracaoNfeNFce;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls;

type
  TfrmMenuConfiguracaoNfeNFce = class(TForm)
    Button1: TButton;
    Button2: TButton;
    procedure Button2Click(Sender: TObject);
    procedure Button1Click(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmMenuConfiguracaoNfeNFce: TfrmMenuConfiguracaoNfeNFce;

implementation

{$R *.dfm}

uses u_funcoes, config_nfe, config_nfce;

procedure TfrmMenuConfiguracaoNfeNFce.Button1Click(Sender: TObject);
begin
  if not verificaaberta(Frmconfig_NFe) then
  begin
    Frmconfig_NFe := TFrmconfig_nfe.Create(nil);
    Frmconfig_NFe.showmodal;
  end;
  close;
end;

procedure TfrmMenuConfiguracaoNfeNFce.Button2Click(Sender: TObject);
begin
  if not u_funcoes.verificaaberta(Frm_Conf_Nfce) then
  begin
    Frm_Conf_Nfce := TFrm_Conf_Nfce.Create(nil);
    Frm_Conf_Nfce.showmodal;
  end;
  close;
end;

procedure TfrmMenuConfiguracaoNfeNFce.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  Action := cafree;
  self := nil;
end;

end.
