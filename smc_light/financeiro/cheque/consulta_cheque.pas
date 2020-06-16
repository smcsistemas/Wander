//Verificado automaticamente em 16/06/2020 09:27
unit consulta_cheque;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Data.DB, cxGraphics, cxLookAndFeels,
  cxLookAndFeelPainters, Vcl.Menus, dxSkinsCore, dxSkinOffice2013White,
  Vcl.StdCtrls, Vcl.Mask, Vcl.DBCtrls, cxButtons, Vcl.Grids, Vcl.DBGrids,
  dxSkinOffice2007Silver, dxSkinOffice2013LightGray;

type
  TFRM_consult_cheque = class(TForm)
    grp1: TGroupBox;
    lbl1: TLabel;
    lbl3: TLabel;
    lbl2: TLabel;
    dbgrd1: TDBGrid;
    cxButton1: TcxButton;
    DBLookupComboBox1: TDBLookupComboBox;
    dbedt1: TDBEdit;
    dbedt2: TDBEdit;
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FRM_consult_cheque: TFRM_consult_cheque;

implementation

{$R *.dfm}

end.
