unit nfe_financeiro;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, cxGraphics, cxControls, cxLookAndFeels,
  cxLookAndFeelPainters, cxContainer, cxEdit, dxSkinsCore, Vcl.Menus, cxStyles,
  dxSkinscxPCPainter, cxCustomData, cxFilter, cxData, cxDataStorage,
  cxNavigator, Data.DB, cxDBData, cxGridLevel, cxGridCustomTableView,
  cxGridTableView, cxGridDBTableView, cxClasses, cxGridCustomView, cxGrid,
  Vcl.StdCtrls, cxGroupBox, cxButtons, Vcl.Mask, Vcl.DBCtrls, cxTextEdit,
  cxMaskEdit, cxDropDownEdit, Vcl.ExtCtrls;

type
  Tfrm_nfe_financeiro = class(TForm)
    cxComboBox1: TcxComboBox;
    Label34: TLabel;
    Memo1: TMemo;
    Label52: TLabel;
    cxGrid2: TcxGrid;
    cxGridDBTableView2: TcxGridDBTableView;
    tab_id: TcxGridDBColumn;
    tab_data: TcxGridDBColumn;
    cxGridDBTableView2Column1: TcxGridDBColumn;
    tb_valor: TcxGridDBColumn;
    cxGridLevel2: TcxGridLevel;
    BtnGravar: TcxButton;
    Shape1: TShape;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frm_nfe_financeiro: Tfrm_nfe_financeiro;

implementation

{$R *.dfm}

procedure Tfrm_nfe_financeiro.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  Action := cafree;
  self := nil;
end;

end.
