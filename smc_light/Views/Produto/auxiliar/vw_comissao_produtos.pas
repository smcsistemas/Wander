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
    PROD_COMISSAO_EXT_VAR: TDBEdit;
    PROD_COMISSAO_EXT_DIST: TDBEdit;
    PROD_COMISSAO_EXT_ATAC: TDBEdit;
    GroupBox25: TGroupBox;
    Label42: TLabel;
    Label85: TLabel;
    Label87: TLabel;
    PROD_COMISSAO_ATAC: TDBEdit;
    PROD_COMISSAO_DIST: TDBEdit;
    PROD_COMISSAO_VAR: TDBEdit;
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
Trocou BALCAO_COMISSAO_VAREJO por PROD_COMISSAO_VAR : automaticamente em 16/06/2020 22:44
Trocou BALCAO_COMISSAO_ATACADO por PROD_COMISSAO_ATAC : automaticamente em 16/06/2020 22:47
Trocou BALCAO_COMISSAO_DISTRIBUIDOR por PROD_COMISSAO_DIST : automaticamente em 16/06/2020 22:49
Trocou EXTERNA_COMISSAO_VAREJO por PROD_COMISSAO_EXT_VAR : automaticamente em 17/06/2020 05:53
Trocou EXTERNA_COMISSAO_ATACADO por PROD_COMISSAO_EXT_ATAC : automaticamente em 17/06/2020 05:56
Trocou EXTERNA_COMISSAO_DISTRIBUIDOR por PROD_COMISSAO_EXT_DIST : automaticamente em 17/06/2020 06:30
