//Verificado automaticamente em 16/06/2020 09:29
unit controla_serial;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, cxGraphics, cxControls, cxLookAndFeels,
  cxLookAndFeelPainters, cxStyles, dxSkinsCore, dxSkinOffice2013LightGray,
  dxSkinscxPCPainter, cxCustomData, cxFilter, cxData, cxDataStorage, cxEdit,
  cxNavigator, Data.DB, cxDBData, Vcl.StdCtrls, Vcl.Mask, Vcl.DBCtrls,
  cxGridCustomTableView, cxGridTableView, cxGridDBTableView, cxGridLevel,
  cxClasses, cxGridCustomView, cxGrid, Vcl.Menus, cxButtons;

type
  Tfrm_cad_serial = class(TForm)
    gdConveniados: TcxGrid;
    gdConveniadosTbVw: TcxGridDBTableView;
    gdConveniadosLv: TcxGridLevel;
    Serial: TcxGridDBColumn;
    Código: TcxGridDBColumn;
    Descrição: TcxGridDBColumn;
    dtCompra: TcxGridDBColumn;
    Nfcompra: TcxGridDBColumn;
    Data_Venda: TcxGridDBColumn;
    NF_Venda: TcxGridDBColumn;
    TipoDoc: TcxGridDBColumn;
    Label23: TLabel;
    DBEdit5: TDBEdit;
    Label1: TLabel;
    DBEdit1: TDBEdit;
    Label2: TLabel;
    DBEdit2: TDBEdit;
    Label3: TLabel;
    DBEdit3: TDBEdit;
    BtnGravar: TcxButton;
    BtnCancelar: TcxButton;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frm_cad_serial: Tfrm_cad_serial;

implementation

{$R *.dfm}

procedure Tfrm_cad_serial.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  Action := cafree;
  self := nil;
end;

end.
