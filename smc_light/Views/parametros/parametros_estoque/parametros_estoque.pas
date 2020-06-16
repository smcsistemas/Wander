//Verificado automaticamente em 16/06/2020 09:29
unit parametros_estoque;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, cxGraphics, cxLookAndFeels,
  cxLookAndFeelPainters, Vcl.Menus, dxSkinsCore, cxControls, cxContainer,
  cxEdit, cxCheckBox, cxDBEdit, cxGroupBox, Vcl.StdCtrls, cxButtons;

type
  Tfrm_paramentros_estoque = class(TForm)
    btnGravar: TcxButton;
    btnAlterar: TcxButton;
    btnCancelar: TcxButton;
    cxGroupBox1: TcxGroupBox;
    cxDBCheckBox8: TcxDBCheckBox;
    cxDBCheckBox4: TcxDBCheckBox;
    cxDBCheckBox11: TcxDBCheckBox;
    cxDBCheckBox14: TcxDBCheckBox;
    cxGroupBox2: TcxGroupBox;
    cxDBCheckBox1: TcxDBCheckBox;
    cxDBCheckBox2: TcxDBCheckBox;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frm_paramentros_estoque: Tfrm_paramentros_estoque;

implementation

{$R *.dfm}

procedure Tfrm_paramentros_estoque.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  Action := cafree;
  self := nil;
end;

end.
