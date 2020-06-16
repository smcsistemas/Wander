//Verificado automaticamente em 16/06/2020 09:26
unit nfe_carta_correcao;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls, Vcl.ExtCtrls, cxGraphics,
  cxLookAndFeels, cxLookAndFeelPainters, Vcl.Menus, dxSkinsCore, cxButtons;

type
  Tfrm_carta_correcao = class(TForm)
    Label1: TLabel;
    Edit1: TEdit;
    Label3: TLabel;
    Shape2: TShape;
    ScrollBox1: TScrollBox;
    ScrollBox2: TScrollBox;
    Label21: TLabel;
    Edit20: TEdit;
    Label22: TLabel;
    Edit21: TEdit;
    Label23: TLabel;
    Edit22: TEdit;
    Label24: TLabel;
    Edit23: TEdit;
    Label25: TLabel;
    Edit24: TEdit;
    Label26: TLabel;
    Edit25: TEdit;
    Label27: TLabel;
    Edit26: TEdit;
    Label28: TLabel;
    Edit27: TEdit;
    Label29: TLabel;
    Edit28: TEdit;
    Label30: TLabel;
    Edit29: TEdit;
    Label31: TLabel;
    Edit30: TEdit;
    Label32: TLabel;
    Edit31: TEdit;
    Label33: TLabel;
    Edit32: TEdit;
    Label34: TLabel;
    Edit33: TEdit;
    Label35: TLabel;
    Edit34: TEdit;
    Label36: TLabel;
    Edit35: TEdit;
    Label37: TLabel;
    Edit36: TEdit;
    Label38: TLabel;
    Edit37: TEdit;
    Label2: TLabel;
    Shape1: TShape;
    Memo1: TMemo;
    cxButton6: TcxButton;
    cxButton1: TcxButton;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frm_carta_correcao: Tfrm_carta_correcao;

implementation

{$R *.dfm}

procedure Tfrm_carta_correcao.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  Action := cafree;
  self := nil;
end;

end.
