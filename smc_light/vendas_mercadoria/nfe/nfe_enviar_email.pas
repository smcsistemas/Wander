//Verificado automaticamente em 16/06/2020 09:28
unit nfe_enviar_email;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, cxGraphics, cxLookAndFeels,
  cxLookAndFeelPainters, Vcl.Menus, dxSkinsCore, Vcl.Samples.Gauges,
  Vcl.StdCtrls, cxButtons;

type
  Tfrm_enviar_email = class(TForm)
    Edit1: TEdit;
    Label1: TLabel;
    Edit2: TEdit;
    Label2: TLabel;
    Edit3: TEdit;
    Label3: TLabel;
    Label5: TLabel;
    Memo1: TMemo;
    cxButton6: TcxButton;
    Gauge1: TGauge;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frm_enviar_email: Tfrm_enviar_email;

implementation

{$R *.dfm}

procedure Tfrm_enviar_email.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  Action := cafree;
  self := nil;
end;

end.
