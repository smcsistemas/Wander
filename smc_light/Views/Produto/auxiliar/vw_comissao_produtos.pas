//Verificado automaticamente em 16/06/2020 09:29
unit vw_comissao_produtos;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls, Vcl.Mask, Vcl.DBCtrls,
  cxGraphics, cxLookAndFeels, cxLookAndFeelPainters, Vcl.Menus, dxSkinsCore,
  cxButtons;

type
  Tfrm_comissoes = class(TForm)
    GroupBox26: TGroupBox;
    Label10: TLabel;
    Label38: TLabel;
    Label41: TLabel;
    EXTERNA_COMISSAO_VAREJO: TDBEdit;
    EXTERNA_COMISSAO_DISTRIBUIDOR: TDBEdit;
    EXTERNA_COMISSAO_ATACADO: TDBEdit;
    GroupBox25: TGroupBox;
    Label42: TLabel;
    Label85: TLabel;
    Label87: TLabel;
    BALCAO_COMISSAO_ATACADO: TDBEdit;
    BALCAO_COMISSAO_DISTRIBUIDOR: TDBEdit;
    BALCAO_COMISSAO_VAREJO: TDBEdit;
    GroupBox1: TGroupBox;
    Label1: TLabel;
    DBEdit3: TDBEdit;
    cxButton7: TcxButton;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure cxButton7Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frm_comissoes: Tfrm_comissoes;

implementation

{$R *.dfm}

procedure Tfrm_comissoes.cxButton7Click(Sender: TObject);
begin
Close;
end;

procedure Tfrm_comissoes.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  Action := cafree;
  self := nil;
end;

end.
