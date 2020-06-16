//Verificado automaticamente em 16/06/2020 09:27
unit config_certificado;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, cxGraphics, cxControls, cxLookAndFeels,
  cxLookAndFeelPainters, cxContainer, cxEdit, dxSkinsCore,
  dxSkinOffice2013White, Vcl.Menus, Vcl.StdCtrls, cxButtons, Vcl.Mask,
  Vcl.DBCtrls, cxTextEdit, cxMaskEdit, cxDropDownEdit, dxSkinOffice2007Silver,
  dxSkinOffice2013LightGray;

type
  Tfrm_config_certificado = class(TForm)
    grp_certificado: TGroupBox;
    Label10: TLabel;
    Label2: TLabel;
    Label3: TLabel;
    cb_certificados: TcxComboBox;
    cxButton23: TcxButton;
    cxButton24: TcxButton;
    cxButton25: TcxButton;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frm_config_certificado: Tfrm_config_certificado;

implementation

{$R *.dfm}

procedure Tfrm_config_certificado.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  Action := cafree;
  self := nil;
end;

end.
