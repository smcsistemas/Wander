//Verificado automaticamente em 16/06/2020 09:29
unit vw_produto_precos;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, cxGraphics, cxLookAndFeels,
  cxLookAndFeelPainters, Vcl.Menus, dxSkinsCore, Vcl.StdCtrls, cxButtons;

type
  Tfrm_produto_precos = class(TForm)
    cxButton2: TcxButton;
    cxButton12: TcxButton;
    cxButton8: TcxButton;
    cxButton1: TcxButton;
    procedure cxButton2Click(Sender: TObject);
    procedure cxButton12Click(Sender: TObject);
    procedure cxButton8Click(Sender: TObject);
    procedure cxButton1Click(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frm_produto_precos: Tfrm_produto_precos;

implementation

uses
  vw_preco_promocional, vw_preco_faixa, vw_composicao_preco;

{$R *.dfm}

procedure Tfrm_produto_precos.cxButton12Click(Sender: TObject);
begin
  frm_preco_promocional := Tfrm_preco_promocional.CREATE(Application);
  frm_preco_promocional.ShowModal;
end;

procedure Tfrm_produto_precos.cxButton1Click(Sender: TObject);
begin
close;
end;

procedure Tfrm_produto_precos.cxButton2Click(Sender: TObject);
begin
  frm_composicao_preco_produto := Tfrm_composicao_preco_produto.CREATE(Application);
  frm_composicao_preco_produto.ShowModal;
end;

procedure Tfrm_produto_precos.cxButton8Click(Sender: TObject);
begin
  frm_preco_p_faixa := Tfrm_preco_p_faixa.CREATE(Application);
  frm_preco_p_faixa.ShowModal;
end;

procedure Tfrm_produto_precos.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  Action := cafree;
  self := nil;
end;

end.
