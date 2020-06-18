//Verificado automaticamente em 16/06/2020 09:29
unit vw_historico_conveniado;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls, Vcl.ExtCtrls, cxGraphics, cxControls, cxLookAndFeels, cxLookAndFeelPainters, cxStyles, dxSkinsCore, dxSkinBlack, dxSkinBlue,
  dxSkinBlueprint, dxSkinCaramel, dxSkinCoffee, dxSkinDarkRoom, dxSkinDarkSide, dxSkinDevExpressDarkStyle, dxSkinDevExpressStyle, dxSkinFoggy, dxSkinGlassOceans,
  dxSkinHighContrast, dxSkiniMaginary, dxSkinLilian, dxSkinLiquidSky, dxSkinLondonLiquidSky, dxSkinMcSkin, dxSkinMetropolis, dxSkinMetropolisDark, dxSkinMoneyTwins,
  dxSkinOffice2007Black, dxSkinOffice2007Blue, dxSkinOffice2007Green, dxSkinOffice2007Pink, dxSkinOffice2007Silver, dxSkinOffice2010Black, dxSkinOffice2010Blue,
  dxSkinOffice2010Silver, dxSkinOffice2013DarkGray, dxSkinOffice2013LightGray, dxSkinOffice2013White, dxSkinOffice2016Colorful, dxSkinOffice2016Dark, dxSkinPumpkin, dxSkinSeven,
  dxSkinSevenClassic, dxSkinSharp, dxSkinSharpPlus, dxSkinSilver, dxSkinSpringTime, dxSkinStardust, dxSkinSummer2008, dxSkinTheAsphaltWorld, dxSkinsDefaultPainters,
  dxSkinValentine, dxSkinVisualStudio2013Blue, dxSkinVisualStudio2013Dark, dxSkinVisualStudio2013Light, dxSkinVS2010, dxSkinWhiteprint, dxSkinXmas2008Blue, dxSkinscxPCPainter,
  cxCustomData, cxFilter, cxData, cxDataStorage, cxEdit, cxNavigator, Data.DB, cxDBData, cxGridLevel, cxClasses, cxGridCustomView, cxGridCustomTableView, cxGridTableView,
  cxGridDBTableView, cxGrid, h_Functions, m_cliente_conveniado, h_Formats, S_Module, FireDAC.Stan.Intf, FireDAC.Stan.Option, FireDAC.Stan.Param, FireDAC.Stan.Error, FireDAC.DatS,
  FireDAC.Phys.Intf, FireDAC.DApt.Intf, FireDAC.Stan.Async, FireDAC.DApt, FireDAC.Comp.DataSet, FireDAC.Comp.Client, cxCalendar, cxCurrencyEdit, dxBarBuiltInMenu, cxPC, cxLabel;

type
  Tfrm_historico_conveniado = class(TForm)
    sql_vendas_periodo: TFDQuery;
    ds_vendas_periodo: TDataSource;
    sql_vendas_periodocodigo_venda: TFDAutoIncField;
    sql_vendas_periododata: TDateField;
    sql_vendas_periodototal_venda: TBCDField;
    cxPageControl1: TcxPageControl;
    cxTabSheet1: TcxTabSheet;
    cxTabSheet2: TcxTabSheet;
    Label1: TLabel;
    lblPeriodo: TLabel;
    Label2: TLabel;
    GridPanel1: TGridPanel;
    lblCredito: TLabel;
    lblUtilizado: TLabel;
    lblPROD_SALDO: TLabel;
    Label5: TLabel;
    Label8: TLabel;
    Label10: TLabel;
    Shape3: TShape;
    Label3: TLabel;
    grid: TcxGrid;
    gridTbVw: TcxGridDBTableView;
    clId: TcxGridDBColumn;
    clData: TcxGridDBColumn;
    clValor: TcxGridDBColumn;
    gridLv: TcxGridLevel;
    Shape1: TShape;
    Shape2: TShape;
    cxGrid1: TcxGrid;
    cxGridDBTableView1: TcxGridDBTableView;
    cxGridDBColumn1: TcxGridDBColumn;
    cxGridDBColumn2: TcxGridDBColumn;
    cxGridDBColumn3: TcxGridDBColumn;
    cxGridLevel1: TcxGridLevel;
    Label4: TLabel;
    Shape4: TShape;
    sql_vendas_geral: TFDQuery;
    FDAutoIncField1: TFDAutoIncField;
    DateField1: TDateField;
    BCDField1: TBCDField;
    ds_vendas_geral: TDataSource;
    Label6: TLabel;
    lblTotVendasPeriodo: TLabel;
    lblVendasPeriodo: TLabel;
    Label7: TLabel;
    lblVendasGeral: TLabel;
    lblTotVendasGeral: TLabel;
    procedure gridTbVwCustomDrawCell(Sender: TcxCustomGridTableView; ACanvas: TcxCanvas; AViewInfo: TcxGridTableDataCellViewInfo; var ADone: Boolean);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
  private
    { Private declarations }
  public
    { Public declarations }
    constructor Create(conveniado_id: integer); overload;
  end;

var
  frm_historico_conveniado: Tfrm_historico_conveniado;

implementation

{$R *.dfm}

constructor Tfrm_historico_conveniado.Create(conveniado_id: integer);
var
  conveniado: TClienteConveniado;
begin

  inherited Create(nil);
  conveniado := TClienteConveniado.Create(conveniado_id);
  lblCredito.Caption := tformats.Money(conveniado.CREDITO);
  lblPROD_SALDO.Caption := tformats.Money(conveniado.PROD_SALDODisponivel);
  lblUtilizado.Caption := tformats.Money(conveniado.creditoUtilizado);
  lblPeriodo.Caption := ' de ' + formatdatetime('dd/mm/yyyy', conveniado.PERIODO_INICIO) + ' até ' + formatdatetime('dd/mm/yyyy', conveniado.periodo_FIM);

  with sql_vendas_periodo do
  begin
    active := false;
    close;
    ParamByName('pconveniado_id').AsInteger := conveniado.ID;
    ParamByName('pperiodo_inicio').AsDate := conveniado.PERIODO_INICIO;
    ParamByName('pperiodo_fim').AsDate := conveniado.periodo_FIM;
    open;
    active := true;
    fetchall;
    lblVendasPeriodo.Caption := inttostr(recordcount);
  end;
  lblTotVendasPeriodo.Caption := tformats.Money(tfunctions.sumField(sql_vendas_periodo, 'total_venda'));

  with sql_vendas_geral do
  begin
    active := false;
    close;
    ParamByName('pconveniado_id').AsInteger := conveniado.ID;
    open;
    active := true;
    fetchall;
    lblVendasGeral.Caption := inttostr(recordcount);
  end;
  lblTotVendasGeral.Caption := tformats.Money(tfunctions.sumField(sql_vendas_geral, 'total_venda'));

end;

procedure Tfrm_historico_conveniado.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  Action := cafree;
  self := nil;
end;

procedure Tfrm_historico_conveniado.gridTbVwCustomDrawCell(Sender: TcxCustomGridTableView; ACanvas: TcxCanvas; AViewInfo: TcxGridTableDataCellViewInfo; var ADone: Boolean);
begin
  tfunctions.StripedGrid(ACanvas, AViewInfo);
end;

end.
Trocou SALDO por @_@_@_@_@_@ : automaticamente em 17/06/2020 21:31
Trocou @_@_@_@_@_@ por PROD_SALDO : automaticamente em 17/06/2020 21:33
