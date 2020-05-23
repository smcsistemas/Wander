unit campo_obrigatorio;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls, dxGDIPlusClasses,
  Vcl.ExtCtrls;

type
  TFRM_campo_obriga = class(TForm)
    img1: TImage;
    lbl2: TLabel;
    lbl3: TLabel;
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FRM_campo_obriga: TFRM_campo_obriga;

implementation

{$R *.dfm}

end.
