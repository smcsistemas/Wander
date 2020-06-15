unit vw_etiquetas;
{
========================================================================================================================================
ALT|   DATA |HORA |UNIT                        |Descrição                                                                              |
---|--------|-----|----------------------------|----------------------------------------------------------------------------------------
309|15/06/20|10:14|vw_etiquetas                |Passa a tratar PRODUTO_PROD(PROD_CODIGO) ao invés de PRODUTO(CODIGO)
========================================================================================================================================
}

interface

uses
  System.SysUtils, System.Variants,
  System.Classes,
  Vcl.Controls, Vcl.Forms, cxGraphics,

  cxPC,
  cxEdit, Data.DB,
  cxGridLevel,
  cxGridCustomTableView, cxGridDBTableView, cxGrid,
  Vcl.StdCtrls, frxClass, frxPreview, cxButtons,
  cxTextEdit, cxLabel, cxDropDownEdit,

  FireDAC.Comp.DataSet, FireDAC.Comp.Client,
  cxCurrencyEdit, m_Produto, frxBarcode, cxCheckBox, frxExportPDF, m_Etiqueta, v_Env, m_Usuario, h_DB, cxControls, cxLookAndFeels, cxLookAndFeelPainters, dxSkinsCore, dxSkinBlack,
  dxSkinBlue,
  dxSkinBlueprint, dxSkinCaramel, dxSkinCoffee, dxSkinDarkRoom, dxSkinDarkSide, dxSkinDevExpressDarkStyle, dxSkinDevExpressStyle, dxSkinFoggy, dxSkinGlassOceans,
  dxSkinHighContrast, dxSkiniMaginary,
  dxSkinLilian, dxSkinLiquidSky, dxSkinLondonLiquidSky, dxSkinMcSkin, dxSkinMetropolis, dxSkinMetropolisDark, dxSkinMoneyTwins, dxSkinOffice2007Black, dxSkinOffice2007Blue,
  dxSkinOffice2007Green,
  dxSkinOffice2007Pink, dxSkinOffice2007Silver, dxSkinOffice2010Black, dxSkinOffice2010Blue, dxSkinOffice2010Silver, dxSkinOffice2013DarkGray, dxSkinOffice2013LightGray,
  dxSkinOffice2013White,
  dxSkinOffice2016Colorful, dxSkinOffice2016Dark, dxSkinPumpkin, dxSkinSeven, dxSkinSevenClassic, dxSkinSharp, dxSkinSharpPlus, dxSkinSilver, dxSkinSpringTime, dxSkinStardust,
  dxSkinSummer2008,
  dxSkinTheAsphaltWorld, dxSkinsDefaultPainters, dxSkinValentine, dxSkinVisualStudio2013Blue, dxSkinVisualStudio2013Dark, dxSkinVisualStudio2013Light, dxSkinVS2010,
  dxSkinWhiteprint,
  dxSkinXmas2008Blue, dxSkinscxPCPainter, dxBarBuiltInMenu, cxStyles, cxCustomData, cxFilter, cxData, cxDataStorage, cxNavigator, cxDBData, cxContainer, Vcl.Menus,
  FireDAC.Stan.Intf,
  FireDAC.Stan.Option, FireDAC.Stan.Param, FireDAC.Stan.Error, FireDAC.DatS, FireDAC.Phys.Intf, FireDAC.DApt.Intf, FireDAC.Stan.Async, FireDAC.DApt, cxMaskEdit, cxGridTableView,
  cxClasses,
  cxGridCustomView, h_Checks, frxGradient;

type
  Tfrm_etiquetas = class(TForm)
    cxTabSheet2: TcxTabSheet;
    pgMaster: TcxPageControl;
    tabGerar: TcxTabSheet;
    btnSearch: TcxButton;
    edtProduto: TcxTextEdit;
    cxLabel1: TcxLabel;
    pvwEtiqueta: TfrxPreview;
    Preco: TcxLabel;
    gridEtiquetas: TcxGrid;
    tbvwEtiquetas: TcxGridDBTableView;
    gridEtiquetasLevel1: TcxGridLevel;
    edtConsulta: TcxTextEdit;
    cbFiltro: TcxComboBox;
    btnGenerate: TcxButton;
    sql_etiquetas: TFDQuery;
    ds_etiquetas: TDataSource;
    btnPreview: TcxButton;
    frPreview: TfrxReport;
    frxBarcode: TfrxBarCodeObject;
    edtRefFabr: TcxTextEdit;
    chkRef: TcxCheckBox;
    edtQtde: TcxTextEdit;
    cxLabel2: TcxLabel;
    edtPreco: TcxCurrencyEdit;
    sql_etiquetasid: TFDAutoIncField;
    sql_etiquetasdescricao: TStringField;
    sql_etiquetaspreco_final_varejo: TBCDField;
    sql_etiquetasreferencia_fabricante: TStringField;
    tbvwEtiquetasid: TcxGridDBColumn;
    tbvwEtiquetasdescricao: TcxGridDBColumn;
    tbvwEtiquetaspreco_final_varejo: TcxGridDBColumn;
    tbvwEtiquetasreferencia_fabricante: TcxGridDBColumn;
    frxGradient: TfrxGradientObject;
    procedure btnSearchClick(Sender: TObject);
    procedure btnPreviewClick(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure btnGenerateClick(Sender: TObject);
    procedure edtQtdeKeyPress(Sender: TObject; var Key: Char);
    procedure FormShow(Sender: TObject);
    procedure tbvwEtiquetasCustomDrawCell(Sender: TcxCustomGridTableView; ACanvas: TcxCanvas; AViewInfo: TcxGridTableDataCellViewInfo; var ADone: Boolean);
    procedure edtConsultaKeyUp(Sender: TObject; var Key: Word; Shift: TShiftState);
    procedure cbFiltroPropertiesEditValueChanged(Sender: TObject);
    procedure tbvwEtiquetasCellDblClick(Sender: TcxCustomGridTableView; ACellViewInfo: TcxGridTableDataCellViewInfo; AButton: TMouseButton; AShift: TShiftState;
      var AHandled: Boolean);
  private
    { Private declarations }

    procedure reloadFilter;
    procedure preencher_dados_produto;
    procedure configure_report;

  public
    { Public declarations }
    procedure preencher_dados_produto2;

  var
    produto: tproduto;
  end;

var
  frm_etiquetas: Tfrm_etiquetas;

implementation

{$R *.dfm}

uses vw_consulta_generica, h_Functions, c_Globals, v_Dir, h_Formats, h_Dialogs;

procedure Tfrm_etiquetas.btnGenerateClick(Sender: TObject);
var
  etiqueta: tetiqueta;
  len: integer;
  cod: string;
begin
  try

    etiqueta := tetiqueta.get(['id_produto'], [produto.PROD_CODIGO]);

    if etiqueta = nil then
      etiqueta := tetiqueta.create;

    etiqueta.produto := produto;
    etiqueta.descricao := edtProduto.Text;
    etiqueta.usuario := TUsuario.create(tenv.tuser.id);

    if not TChecks.equals(edtPreco.Value, produto.PRECO_FINAL_VAREJO) then
      if tdialogs.wnConfirmacao('Etiquetas', Format('Deseja atualizar o preço informado na etiqueta (%s) no cadastro do produto "%s" ?', [edtPreco.Text, produto.descricao])) then
      begin
        produto.PRECO_FINAL_VAREJO := edtPreco.Value;
        produto.save;
      end;

    etiqueta.save;

    frPreview.Preview := nil;
    frPreview.LoadFromFile(tdir.Relatorio.etiqueta);
    configure_report;
    frPreview.Print;
    frPreview.Preview := pvwEtiqueta;
    btnPreview.Click;

    reloadFilter;

  except
    on e: exception do
      tdialogs.wnErro('Etiquetas', 'Erro ao gerar etiquetas:' + slinebreak + e.Message);
  end;
end;

procedure Tfrm_etiquetas.btnPreviewClick(Sender: TObject);
begin
  if produto <> nil then
  begin

    frPreview.LoadFromFile(tdir.Relatorio.etiqueta_preview);
    configure_report;
    pvwEtiqueta.Show;

  end
  else
    tdialogs.wnalerta('Etiquetas', slinebreak + slinebreak + 'Nenhum produto selecionado!');

end;

procedure Tfrm_etiquetas.btnSearchClick(Sender: TObject);
var
  edt: tedit;
begin

  try
    edt := tedit.create(nil);
    if not tfunctions.checkopen(frm_consulta_generica) then
      frm_consulta_generica := tfrm_consulta_generica.create(nil, cgproduto, edt);
    frm_consulta_generica.ShowModal;

    if edt.Text <> '' then
    begin

      produto := tproduto.create(edt.Text);
      preencher_dados_produto;

    end;
  except
    on e: exception do
      tdialogs.wnErro('Etiquetas', 'Erro ao gerar etiquetas:' + slinebreak + e.Message);
  end;

end;

procedure Tfrm_etiquetas.cbFiltroPropertiesEditValueChanged(Sender: TObject);
begin
  cbFiltro.ValidateEdit(true);
  reloadFilter;
end;

procedure Tfrm_etiquetas.configure_report;
var
  len: integer;
  cod: string;
begin
  TfrxMemoView(frPreview.FindObject('mmProduto')).Text := edtProduto.Text;
  TfrxMemoView(frPreview.FindObject('mmPreco')).Text := TFormats.Money(edtPreco.editvalue);
  cod := produto.PROD_CODIGO;
  len := 7 - length(cod);
  TfrxBarCodeview(frPreview.FindObject('barcode')).Expression := prefix_etiqueta + StringOfChar('0', len) + cod;
  TfrxMemoView(frPreview.FindObject('mmRef')).Text := tfunctions.ifthen(chkRef.Checked, produto.REFERENCIA_FABRICANTE, '');
  TfrxReportPage(frPreview.FindObject('page')).PageCount := strtoint(edtQtde.Text);
  frPreview.PrepareReport(true);
end;

procedure Tfrm_etiquetas.edtConsultaKeyUp(Sender: TObject; var Key: Word; Shift: TShiftState);
begin
  if tfunctions.isKeyNumLetter(Key) then
    reloadFilter;
end;

procedure Tfrm_etiquetas.edtQtdeKeyPress(Sender: TObject; var Key: Char);
begin
  inherited;
  Key := tfunctions.OnlyNumbers(Key);
end;

procedure Tfrm_etiquetas.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  Action := cafree;
  self := nil;
end;

procedure Tfrm_etiquetas.FormShow(Sender: TObject);
begin
  reloadFilter;
  if pgMaster.ActivePage = tabGerar then
     edtProduto.SetFocus;
end;

procedure Tfrm_etiquetas.preencher_dados_produto;
begin
  edtProduto.Text := produto.PROD_CODIGO + ' - ' + produto.descricao;
  edtPreco.editvalue := produto.PRECO_FINAL_VAREJO;
  edtRefFabr.Text := produto.REFERENCIA_FABRICANTE;
  tabGerar.Show;
  edtPreco.SETFOCUS;
  edtPreco.SelectAll;
  btnPreview.Click;
end;

procedure Tfrm_etiquetas.preencher_dados_produto2;
begin
  edtProduto.Text := produto.PROD_CODIGO + ' - ' + produto.descricao;
  edtPreco.editvalue := produto.PRECO_FINAL_VAREJO;
  edtRefFabr.Text := produto.REFERENCIA_FABRICANTE;
  btnPreview.Click;
end;

procedure Tfrm_etiquetas.reloadFilter;
const
  _sql = 'select e.id, e.descricao, p.preco_final_varejo, p.referencia_fabricante from etiqueta e join produto p on p.codigo = e.id_produto ';
  _order = ' order by created_at desc ';
var
  _filter: string;
begin
  if edtConsulta.Text <> emptystr then
  begin

    _filter := tdb.removeSqlInjection(edtConsulta.Text);
    _filter := ' where ' + tfunctions.getIndex(cbFiltro.SelectedItem, ['e.descricao LIKE "%' + _filter + '%"', 'p.preco_final_varejo LIKE "' + _filter + '%"',
      'p.referencia_fabricante LIKE "' + _filter + '%"']);

  end;

  with sql_etiquetas do
  begin
    Close;
    sql.Clear;
    sql.Add(_sql + _filter + _order);
    open;
  end;
end;

procedure Tfrm_etiquetas.tbvwEtiquetasCellDblClick(Sender: TcxCustomGridTableView; ACellViewInfo: TcxGridTableDataCellViewInfo; AButton: TMouseButton; AShift: TShiftState;
  var AHandled: Boolean);
var
  etiqueta: tetiqueta;
begin

  try

    etiqueta := tetiqueta.create(sql_etiquetasid.AsInteger);
    produto := etiqueta.produto;
    preencher_dados_produto;

  except
    on e: exception do
      tdialogs.wnErro('Etiquetas', 'Erro ao carregar etiqueta:' + slinebreak + e.Message);
  end;

end;

procedure Tfrm_etiquetas.tbvwEtiquetasCustomDrawCell(Sender: TcxCustomGridTableView; ACanvas: TcxCanvas; AViewInfo: TcxGridTableDataCellViewInfo; var ADone: Boolean);
begin
  tfunctions.StripedGrid(ACanvas, AViewInfo);
end;

end.
