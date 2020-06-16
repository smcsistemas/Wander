//Verificado automaticamente em 16/06/2020 09:29
unit vw_op_nf;

interface

uses
  System.Classes,
  Vcl.Controls, Vcl.Forms, Vcl.StdCtrls,
  Vcl.ExtCtrls, dxGDIPlusClasses;

type
  TFrm_op_nf = class(TForm)
    Label1: TLabel;
    img_nfce: TImage;
    img_nfe: TImage;
    edt_resolve: TEdit;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
    procedure FormKeyPress(Sender: TObject; var Key: Char);
    procedure FormShow(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
    constructor create(AOwner: TComponent; const xMessage: String; const KindOf: integer);
  end;

var
  Frm_op_nf: TFrm_op_nf;

implementation

uses
  vw_importacao_nfe;

{$R *.dfm}

constructor TFrm_op_nf.create(AOwner: TComponent; const xMessage: String; const KindOf: integer);
begin
  inherited create(AOwner);
  if KindOf = 55 then
  begin
    img_nfce.Hide;
    img_nfe.show;
  end
  else if KindOf = 65 then
  begin
    img_nfce.show;
    img_nfe.Hide;
  end;
  Label1.Caption := xMessage;
end;

procedure TFrm_op_nf.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  if edt_resolve.Text='1' then
  FRM_IMPORTACAO_NFE.SQL_EXCLUIR_SEM_GTIN.Execute();

  Action := cafree;
  self := nil;
end;

procedure TFrm_op_nf.FormKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
begin
  inherited;
  Key := 0;
end;

procedure TFrm_op_nf.FormKeyPress(Sender: TObject; var Key: Char);
begin
  inherited;
  Key := #0;
end;

procedure TFrm_op_nf.FormShow(Sender: TObject);
begin

if img_nfe.Visible=True then
edt_resolve.Text:='1'
else
edt_resolve.Text:='2';

end;

end.
