//Verificado automaticamente em 16/06/2020 09:26
unit cancelamento_contrato;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, cxGraphics, cxLookAndFeels,
  cxLookAndFeelPainters, Vcl.Menus, dxSkinsCore, Vcl.StdCtrls, cxButtons;

type
  Tfrm_cancelamento_contrato = class(TForm)
    Edit1: TEdit;
    Label1: TLabel;
    Edit2: TEdit;
    Label2: TLabel;
    Memo1: TMemo;
    Label4: TLabel;
    Edit4: TEdit;
    Label5: TLabel;
    Edit3: TEdit;
    Label3: TLabel;
    RadioButton1: TRadioButton;
    RadioButton2: TRadioButton;
    Label6: TLabel;
    cxButton6: TcxButton;
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frm_cancelamento_contrato: Tfrm_cancelamento_contrato;

implementation

{$R *.dfm}

end.
