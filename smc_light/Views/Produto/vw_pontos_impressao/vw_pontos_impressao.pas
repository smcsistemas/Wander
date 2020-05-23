unit vw_pontos_impressao;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, cxGraphics, cxControls, cxLookAndFeels, cxLookAndFeelPainters, cxContainer, cxEdit, dxSkinsCore, dxSkinBlack, dxSkinBlue, dxSkinBlueprint,
  dxSkinCaramel, dxSkinCoffee, dxSkinDarkRoom, dxSkinDarkSide, dxSkinDevExpressDarkStyle, dxSkinDevExpressStyle, dxSkinFoggy, dxSkinGlassOceans, dxSkinHighContrast,
  dxSkiniMaginary, dxSkinLilian, dxSkinLiquidSky, dxSkinLondonLiquidSky, dxSkinMcSkin, dxSkinMetropolis, dxSkinMetropolisDark, dxSkinMoneyTwins, dxSkinOffice2007Black,
  dxSkinOffice2007Blue, dxSkinOffice2007Green, dxSkinOffice2007Pink, dxSkinOffice2007Silver, dxSkinOffice2010Black, dxSkinOffice2010Blue, dxSkinOffice2010Silver,
  dxSkinOffice2013DarkGray, dxSkinOffice2013LightGray, dxSkinOffice2013White, dxSkinOffice2016Colorful, dxSkinOffice2016Dark, dxSkinPumpkin, dxSkinSeven, dxSkinSevenClassic,
  dxSkinSharp, dxSkinSharpPlus, dxSkinSilver, dxSkinSpringTime, dxSkinStardust, dxSkinSummer2008, dxSkinTheAsphaltWorld, dxSkinsDefaultPainters, dxSkinValentine,
  dxSkinVisualStudio2013Blue, dxSkinVisualStudio2013Dark, dxSkinVisualStudio2013Light, dxSkinVS2010, dxSkinWhiteprint, dxSkinXmas2008Blue, cxMaskEdit, cxDropDownEdit, cxTextEdit,
  cxStyles, dxSkinscxPCPainter, cxCustomData, cxFilter, cxData, cxDataStorage, cxNavigator, Data.DB, cxDBData, cxGridLevel, cxClasses, cxGridCustomView, cxGridCustomTableView,
  cxGridTableView, cxGridDBTableView, cxGrid, Vcl.StdCtrls, Vcl.Menus, cxButtons, FireDAC.Stan.Intf, FireDAC.Stan.Option, FireDAC.Stan.Param, FireDAC.Stan.Error, FireDAC.DatS,
  FireDAC.Phys.Intf, FireDAC.DApt.Intf, FireDAC.Stan.Async, FireDAC.DApt, FireDAC.Comp.DataSet, FireDAC.Comp.Client, cxLabel, m_Ponto_Impressao, relatorios;

type
  Tfrm_pontos_impressao = class(TForm)
    edt_name: TcxTextEdit;
    cb_printer: TcxComboBox;
    lbl1: TLabel;
    lbl2: TLabel;
    lbl3: TLabel;
    btn_save: TcxButton;
    sql_ponto_impressao: TFDQuery;
    sql_ponto_impressaoid: TFDAutoIncField;
    sql_ponto_impressaonome: TStringField;
    sql_ponto_impressaoimpressora: TStringField;
    gd_pontosDBTableView1: TcxGridDBTableView;
    gd_pontosLevel1: TcxGridLevel;
    gd_pontos: TcxGrid;
    ds_pontos_impressao: TDataSource;
    gd_pontosDBTableView1id: TcxGridDBColumn;
    gd_pontosDBTableView1nome: TcxGridDBColumn;
    gd_pontosDBTableView1impressora: TcxGridDBColumn;
    popKorn: TPopupMenu;
    estarImpressora1: TMenuItem;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormShow(Sender: TObject);
    procedure btn_saveClick(Sender: TObject);
    procedure listAll;
    procedure gd_pontosDBTableView1CellDblClick(Sender: TcxCustomGridTableView; ACellViewInfo: TcxGridTableDataCellViewInfo; AButton: TMouseButton; AShift: TShiftState;
      var AHandled: Boolean);
    procedure FormKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
    procedure estarImpressora1Click(Sender: TObject);
  private
    { Private declarations }
    PontoImpressao: TProdutoImpressao;
  public
    { Public declarations }
  end;

var
  frm_pontos_impressao: Tfrm_pontos_impressao;

implementation

uses
  h_Functions, S_Module, h_Dialogs;

{$R *.dfm}

procedure Tfrm_pontos_impressao.btn_saveClick(Sender: TObject);
begin
  try
    PontoImpressao.NOME := edt_name.text;
    PontoImpressao.IMPRESSORA := cb_printer.text;
    PontoImpressao.save;
    tdialogs.wnInfo('Ponto de Impressão', 'Ponto de Impressão salvo com sucesso!');
    PontoImpressao := TProdutoImpressao.Create;
    listAll;
    edt_name.Clear;
    cb_printer.Clear;
  except
    on e: Exception do
      tdialogs.wnAlerta('Ponto de Impressão', 'Não possível salvar o ponto de impressão:' + slinebreak + e.Message);
  end;
end;

procedure Tfrm_pontos_impressao.estarImpressora1Click(Sender: TObject);
begin
  tfrm_relatorio.Create(nil).teste_ponto_impressao(gd_pontosDBTableView1id.EditValue).Close;
end;

procedure Tfrm_pontos_impressao.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  Action := cafree;
  self := nil;
end;

procedure Tfrm_pontos_impressao.FormKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
begin
  if Key = VK_ESCAPE then
    Close;
end;

procedure Tfrm_pontos_impressao.FormShow(Sender: TObject);
begin
  cb_printer.Properties.Items := TFunctions.getPrinters;
  PontoImpressao := TProdutoImpressao.Create;
  listAll
end;

procedure Tfrm_pontos_impressao.gd_pontosDBTableView1CellDblClick(Sender: TcxCustomGridTableView; ACellViewInfo: TcxGridTableDataCellViewInfo; AButton: TMouseButton;
  AShift: TShiftState; var AHandled: Boolean);
begin
  PontoImpressao := TProdutoImpressao.Create(gd_pontosDBTableView1id.EditValue);
  edt_name.text := PontoImpressao.NOME;
  cb_printer.text := PontoImpressao.IMPRESSORA;
end;

procedure Tfrm_pontos_impressao.listAll;
const
  _sql = 'select * from ponto_impressao';
begin
  with sql_ponto_impressao do
  begin
    active := false;
    Close;
    sql.Clear;
    sql.add(_sql);
    open;
    active := True;
  end;
end;

end.
