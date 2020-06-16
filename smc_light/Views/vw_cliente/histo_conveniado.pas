//Verificado automaticamente em 16/06/2020 09:29
unit histo_conveniado;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, cxGraphics, cxControls, cxLookAndFeels,
  cxLookAndFeelPainters, dxSkinsCore, dxSkinscxPCPainter, dxBarBuiltInMenu,
  cxStyles, cxCustomData, cxFilter, cxData, cxDataStorage, cxEdit, cxNavigator,
  Data.DB, cxDBData, cxLabel, cxCalendar, cxCurrencyEdit, cxGridLevel,
  cxGridCustomTableView, cxGridTableView, cxGridDBTableView, cxClasses,
  cxGridCustomView, cxGrid, Vcl.ExtCtrls, Vcl.StdCtrls, cxPC,
  dxSkinOffice2013White, dxSkinOffice2007Silver, dxSkinOffice2013LightGray;

type
  Tfmr_conveniado = class(TForm)
    cxPageControl1: TcxPageControl;
    cxTabSheet1: TcxTabSheet;
    Label1: TLabel;
    lblPeriodo: TLabel;
    Label2: TLabel;
    Shape3: TShape;
    Label3: TLabel;
    Shape1: TShape;
    Shape2: TShape;
    Label6: TLabel;
    lblTotVendasPeriodo: TLabel;
    lblVendasPeriodo: TLabel;
    GridPanel1: TGridPanel;
    lblCredito: TLabel;
    lblUtilizado: TLabel;
    lblSaldo: TLabel;
    Label5: TLabel;
    Label8: TLabel;
    Label10: TLabel;
    grid: TcxGrid;
    gridTbVw: TcxGridDBTableView;
    clId: TcxGridDBColumn;
    clData: TcxGridDBColumn;
    clValor: TcxGridDBColumn;
    gridLv: TcxGridLevel;
    cxTabSheet2: TcxTabSheet;
    Label4: TLabel;
    Shape4: TShape;
    Label7: TLabel;
    lblVendasGeral: TLabel;
    lblTotVendasGeral: TLabel;
    cxGrid1: TcxGrid;
    cxGridDBTableView1: TcxGridDBTableView;
    cxGridDBColumn1: TcxGridDBColumn;
    cxGridDBColumn2: TcxGridDBColumn;
    cxGridDBColumn3: TcxGridDBColumn;
    cxGridLevel1: TcxGridLevel;
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  fmr_conveniado: Tfmr_conveniado;

implementation

{$R *.dfm}

end.
