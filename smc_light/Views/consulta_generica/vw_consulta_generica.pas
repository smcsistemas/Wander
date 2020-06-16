//Verificado automaticamente em 16/06/2020 09:28
unit vw_consulta_generica;
{

========================================================================================================================================
ALT|   DATA |HORA |UNIT                        |Descrição                                                                              |
---|--------|-----|----------------------------|----------------------------------------------------------------------------------------
333|15/06/20|14:28|vw_consulta_generica        |Passa a tratar PRODUTO_PROD(PROD_EAN)    ao invés de PRODUTO(CODIGO_BARRAS)
314|15/06/20|10:14|vw_consulta_generica        |Passa a tratar PRODUTO_PROD(PROD_CODIGO) ao invés de PRODUTO(CODIGO)
288|11/06/20|12:10|vw_consulta_generica        |Criada a consulta genérica para a tabela Transportadora_Veiculo
========================================================================================================================================

================================================================================
| ITEM|DATA  HR|UNIT                |HISTORICO                                 |
|-----|--------|--------------------|------------------------------------------|
|  189|24/05/20|wander              |Criada a consulta genérica para a tabela  |
|     |   18:42|vw_consulta_generica|produto_tipo_item                         |
================================================================================
}
interface

uses
  Winapi.Windows, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Grids, Vcl.DBGrids, Vcl.StdCtrls, Vcl.ExtCtrls,
  cxContainer, cxEdit,Dialogs,

  cxTextEdit,
  cxDropDownEdit, u_funcoes,

  Data.DB, FireDAC.Comp.Client, c_Globals, h_db, cxGraphics, cxControls, cxLookAndFeels, cxLookAndFeelPainters, dxSkinsCore, dxSkinBlack,
  dxSkinBlue, dxSkinBlueprint,
  dxSkinCaramel, dxSkinCoffee,
  dxSkinDarkRoom, dxSkinDarkSide, dxSkinDevExpressDarkStyle, dxSkinDevExpressStyle, dxSkinFoggy, dxSkinGlassOceans, dxSkinHighContrast,
  dxSkiniMaginary, dxSkinLilian,
  dxSkinLiquidSky,
  dxSkinLondonLiquidSky, dxSkinMcSkin, dxSkinMetropolis, dxSkinMetropolisDark, dxSkinMoneyTwins, dxSkinOffice2007Black,
  dxSkinOffice2007Blue, dxSkinOffice2007Green,
  dxSkinOffice2007Pink,
  dxSkinOffice2007Silver, dxSkinOffice2010Black, dxSkinOffice2010Blue, dxSkinOffice2010Silver, dxSkinOffice2013DarkGray,
  dxSkinOffice2013LightGray, dxSkinOffice2013White,
  dxSkinOffice2016Colorful,
  dxSkinOffice2016Dark, dxSkinPumpkin, dxSkinSeven, dxSkinSevenClassic, dxSkinSharp, dxSkinSharpPlus, dxSkinSilver, dxSkinSpringTime,
  dxSkinStardust, dxSkinSummer2008,
  dxSkinTheAsphaltWorld,
  dxSkinsDefaultPainters, dxSkinValentine, dxSkinVisualStudio2013Blue, dxSkinVisualStudio2013Dark, dxSkinVisualStudio2013Light,
  dxSkinVS2010, dxSkinWhiteprint, dxSkinXmas2008Blue,
  FireDAC.Stan.Intf,
  FireDAC.Stan.Option, FireDAC.Stan.Param, FireDAC.Stan.Error, FireDAC.DatS, FireDAC.Phys.Intf, FireDAC.DApt.Intf, FireDAC.Stan.Async,
  FireDAC.DApt, FireDAC.Comp.DataSet,
  cxMaskEdit;

type
  TFrm_Consulta_Generica = class(TForm)
    GridPanel2: TGridPanel;
    SQL_DATA: TFDQuery;
    DS_DATA: TDataSource;
    db_grid: TDBGrid;
    GridPanel1: TGridPanel;
    edt_consulta: TcxTextEdit;
    cb_tipo_consulta: TcxComboBox;
    procedure edt_consultaKeyUp(Sender: TObject; var Key: Word; Shift: TShiftState);
    procedure db_gridDrawColumnCell(Sender: TObject; const Rect: TRect; DataCol: Integer; Column: TColumn; State: TGridDrawState);
    procedure db_gridKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
    procedure FormKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
    procedure FormShow(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure db_gridDblClick(Sender: TObject);
    procedure cb_tipo_consultaPropertiesEditValueChanged(Sender: TObject);
    procedure edt_consultaKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
    procedure cb_tipo_consultaKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
    procedure FormCreate(Sender: TObject);
    procedure db_gridTitleClick(Column: TColumn);
  private
    function eventnone: TObject;
    procedure FiledData;

    procedure FillDefaultData;
    procedure FillProduto(const QueryString: String);
    procedure FillFornecedor(const QueryString: String);
    procedure FillUsuario(const QueryString: String);
    procedure FillCliente(const QueryString: String);
    procedure Fill_NCM_CEST(const QueryString: String);
    procedure FillVendedor(const QueryString: string);
    procedure FillFormasPagamento(const QueryString: string);
    procedure FillCFOP(const QueryString: string);
    procedure FillANP(const QueryString: string);
    procedure FillSocio(const QueryString: string);
    procedure FillCSOSN(const QueryString: string);
    procedure FillMARCA(const QueryString: string);
    procedure FillICMS(const QueryString: string);
    procedure FillPIS(const QueryString: string);
    procedure FillCOFINS(const QueryString: string);
    procedure FillORIGEM(const QueryString: string);
    procedure FillOperadorCaixa(const QueryString: string);
    procedure FillTIPO_ITEM(const QueryString: string);
    procedure FillTransportadora_Veiculos(const QueryString: string);


    procedure SetQuery(const QueryString: string);
    procedure CustomizeGrid(const FontSize: Integer);
    procedure CustomizeCombo;
    procedure SetGridStyle(Index: Integer; Caption: string; xWidth: Integer); overload;
    procedure SetGridStyle(Index: Integer; Caption: string; xWidth: Integer; Alingment: TAlignment); overload;
    function GetFilter: string;
    function GetOrderBy: string;
    procedure FillEditWithData;
    procedure SetFormSize;
    procedure consultar_dados;

  var
    m_Field_Edit: TEdit;
    m_Field_Label: TLabel;
    query_filled, paint_grid_differ, onOpen: boolean;
    data_differ_search, Ordenacao: string;

  const
    DEFAULT_LIMIT = ' LIMIT 1000';
    PRODUTO_QUERY_BASE =
      'SELECT PROD_CODIGO, PROD_EAN, PROD_DESCRICAO, PROD_UNIDADE, SALDO, PROD_REFERENCIASFABRICA, MARCA, PRECO_FINAL_VAREJO FROM PRODUTO_PROD WHERE STATUS_CADASTRAL <> "INATIVO"';
    FORNECEDOR_QUERY_BASE = 'SELECT CODIGO, RAZAO_SOCIAL, NOME_FANTASIA, CNPJ_CPF FROM FORNECEDOR';
    USUARIO_QUERY_BASE = 'SELECT CODIGO, USUARIO FROM USUARIO WHERE TIPO_USUARIO <> "SISTEMA"';
    CLIENTE_QUERY_BASE = 'SELECT CODIGO, RAZAO_SOCIAL, FANTASIA, CPF, CNPJ, PESSOA_TIPO FROM CLIENTE WHERE STATUS_CADASTRAL = "ATIVO"';
    NCM_CEST_QUERY_BASE = 'SELECT NCM, CEST, DESCRICAO FROM TAB_CEST';
    VENDEDOR_QUERY_BASE =
      'SELECT c.CODIGO, c.NOME, ct.TIPO_COLABORADOR FROM COLABORADOR c JOIN COLABORADOR_TIPO ct on ct.CODIGO = c.TIPO_COLABORADOR WHERE c.TIPO_COLABORADOR in ("2","6")';
    SOCIO_QUERY_BASE =
      'SELECT c.CODIGO, c.NOME, ct.TIPO_COLABORADOR FROM COLABORADOR c JOIN COLABORADOR_TIPO ct on ct.CODIGO = c.TIPO_COLABORADOR WHERE c.TIPO_COLABORADOR in ("4")';
    FORMA_PAGAMENTO_QUERY_BASE = 'SELECT COD_TIPO_PAGAMENTO, TIPO_PAGAMENTO FROM TIPO_PAGAMENTO';
    CFOP_QUERY_BASE            = 'SELECT CODIGO, DESCRICAO FROM CFOP';
    ANP_QUERY_BASE = 'SELECT CODIGO, DESCRICAO FROM ANP';
    CSOSN_QUERY_BASE = 'SELECT CODIGO, DESCRICAO FROM CSOSN';
    MARCA_QUERY_BASE = 'SELECT CODIGO, NOME      FROM PRODUTO_MARCA';
    ICMS_QUERY_BASE  = 'SELECT CODIGO, DESCRICAO FROM CST_ICMS';
    PIS_QUERY_BASE = 'SELECT CODIGO, DESCRICAO FROM CST_PIS';
    COFINS_QUERY_BASE = 'SELECT CODIGO, DESCRICAO FROM CST_COFINS';
    ORIGEM_QUERY_BASE    = 'SELECT CODIGO, DESCRICAO FROM ORIGEM_MERCADORIA';
    OPERADOR_QUERY_BASE  = 'SELECT c.CODIGO, c.NOME, u.USUARIO FROM COLABORADOR c JOIN USUARIO U ON U.CODIGO = C.COD_USUARIO WHERE c.TIPO_COLABORADOR = "8"';
    TIPO_ITEM_QUERY_BASE = 'SELECT CODIGO, DESCRICAO FROM produto_tipo_item';
    Transportadora_Veiculos_QUERY_BASE = 'SELECT a.PLACA, '
                                        +      ' LEFT(a.DESCRICAO,   20) as DESCRICAO, '
                                        +      ' LEFT(b.RAZAO_SOCIAL,20) as RAZAO_SOCIAL '
                                        +  'FROM Transportadora_Veiculos a, '
                                        +       'Transportador b '
                                        + 'WHERE a.TRANSP_COD = b.ID';

  const

    msk_CPF = '999.999.999-99;0';
    msk_CNPJ = '99.999.999\\9999-99;0';

  var
    ArrFieldsTitle: array of string;
    cgTable: TConsultaGenericaKind;

  public
    constructor Create(AOwner: TComponent; xTable: TConsultaGenericaKind; const EditToFill: TEdit); overload;
    constructor Create(AOwner: TComponent; xTable: TConsultaGenericaKind; const LabelToFill: TLabel); overload;

    constructor Create; overload;
    procedure SetCustomQuery(xQuerySet: String; xData: string = '');
    function GetQueryObject: TFDQuery;

    function consultaNCM(campo: TEdit): TFrm_Consulta_Generica;

    function consultaCFOP(campo: TEdit): TFrm_Consulta_Generica;

    function consultaMarca(campo: TEdit): TFrm_Consulta_Generica;
    function consultaCSOSN(campo: TEdit): TFrm_Consulta_Generica;
    function consultaTIPO_ITEM(campo: TEdit): TFrm_Consulta_Generica;
    function consultaTransportadora_Veiculos(campo: TEdit): TFrm_Consulta_Generica;

  end;

var
  Frm_Consulta_Generica: TFrm_Consulta_Generica;

implementation

uses
  h_Functions;

{$R *.dfm}
{ Tfrm_consulta_generica }

procedure TFrm_Consulta_Generica.cb_tipo_consultaKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
begin

  if Key = vk_left then
  begin
    edt_consulta.SelectAll;
    edt_consulta.SetFocus;
  end;

end;

procedure TFrm_Consulta_Generica.cb_tipo_consultaPropertiesEditValueChanged(Sender: TObject);
begin
  consultar_dados;
  edt_consulta.SelectAll;
  edt_consulta.SetFocus;
end;

constructor TFrm_Consulta_Generica.Create(AOwner: TComponent; xTable: TConsultaGenericaKind; const EditToFill: TEdit);
begin
  inherited Create(AOwner);
  cgTable := xTable;
  SetFormSize;
  m_Field_Edit := EditToFill;
  query_filled := false;
end;

function TFrm_Consulta_Generica.consultaCFOP(campo: TEdit): TFrm_Consulta_Generica;
begin
  self.m_Field_Edit := campo;
  self.cgTable := cgCFOP;

  self.SetFormSize;
  self.query_filled := false;

  result := self;
end;

function TFrm_Consulta_Generica.consultaCSOSN(campo: TEdit): TFrm_Consulta_Generica;
begin
  self.m_Field_Edit := campo;
  self.cgTable := cgCSOSN;

  self.SetFormSize;
  self.query_filled := false;

  result := self;
end;

function TFrm_Consulta_Generica.consultaTIPO_ITEM(campo: TEdit): TFrm_Consulta_Generica;
begin
  self.m_Field_Edit := campo;
  self.cgTable := cgTIPO_ITEM;

  self.SetFormSize;
  self.query_filled := false;

  result := self;
end;

function TFrm_Consulta_Generica.consultaTransportadora_Veiculos(
  campo: TEdit): TFrm_Consulta_Generica;
begin
  self.m_Field_Edit := campo;
  self.cgTable := cgTransportadora_Veiculos;

  self.SetFormSize;
  self.query_filled := false;

  result := self;
end;

function TFrm_Consulta_Generica.consultaMarca(campo: TEdit): TFrm_Consulta_Generica;
begin
  self.m_Field_Edit := campo;
  self.cgTable := cgMarca;

  self.SetFormSize;
  self.query_filled := false;

  result := self;
end;

function TFrm_Consulta_Generica.consultaNCM(campo: TEdit): TFrm_Consulta_Generica;

begin
  self.m_Field_Edit := campo;
  self.cgTable := cgNCM;

  self.SetFormSize;
  self.query_filled := false;

  result := self;
end;

procedure TFrm_Consulta_Generica.consultar_dados;
var
  QRY_WHERE_FULL_LIKE, QRY_AND_PART_LIKE, fieldValue: STRING;
begin
  if (edt_consulta.Text <> emptystr) or (not onOpen) then
  begin

    fieldValue := TDB.removeSqlInjection(edt_consulta.Text) + '%"';
    QRY_WHERE_FULL_LIKE := ' WHERE (' + GetFilter + ' LIKE "' + fieldValue + ' OR ' + GetFilter + ' LIKE "%' + fieldValue + ') ';
    QRY_AND_PART_LIKE := ' AND (' + GetFilter + ' LIKE "' + fieldValue + ' OR ' + GetFilter + ' LIKE "%' + fieldValue + ') ';

    case cgTable of
      cgProduto:
        FillProduto(PRODUTO_QUERY_BASE + QRY_AND_PART_LIKE);
      cgFornecedor:
        FillFornecedor(FORNECEDOR_QUERY_BASE + QRY_WHERE_FULL_LIKE);
      cgUsuario:
        FillUsuario(USUARIO_QUERY_BASE + QRY_AND_PART_LIKE);
      cgCliente:
        begin
          QRY_AND_PART_LIKE := ' AND (RAZAO_SOCIAL LIKE "%' + fieldValue + ') OR (FANTASIA LIKE "%' + fieldValue + ')';
          FillCliente(CLIENTE_QUERY_BASE + QRY_AND_PART_LIKE);
        end;
      cgNCM:
        Fill_NCM_CEST(NCM_CEST_QUERY_BASE + QRY_WHERE_FULL_LIKE);
      cgVendedor:
        FillVendedor(VENDEDOR_QUERY_BASE + QRY_AND_PART_LIKE);
      cgSocio:
        FillSocio(SOCIO_QUERY_BASE + QRY_AND_PART_LIKE);
      cgFormasPagamento:
        FillFormasPagamento(FORMA_PAGAMENTO_QUERY_BASE + QRY_WHERE_FULL_LIKE);
      cgCFOP:
        if cb_tipo_consulta.SelectedItem = 1 then
          FillCFOP(CFOP_QUERY_BASE + QRY_WHERE_FULL_LIKE);
      cgANP:
        if cb_tipo_consulta.SelectedItem = 1 then
          FillANP(ANP_QUERY_BASE + QRY_WHERE_FULL_LIKE);
      cgCSOSN:
        if cb_tipo_consulta.SelectedItem = 1 then
          FillCSOSN(CSOSN_QUERY_BASE + QRY_WHERE_FULL_LIKE);
      cgMarca:
        if cb_tipo_consulta.SelectedItem = 1 then
          FillMARCA(MARCA_QUERY_BASE + QRY_WHERE_FULL_LIKE);
      cgICMS:
        if cb_tipo_consulta.SelectedItem = 1 then
          FillICMS(ICMS_QUERY_BASE + QRY_WHERE_FULL_LIKE);
      cgPIS:
        if cb_tipo_consulta.SelectedItem = 1 then
          FillPIS(PIS_QUERY_BASE + QRY_WHERE_FULL_LIKE);
      cgCOFINS:
        if cb_tipo_consulta.SelectedItem = 1 then
          FillCOFINS(COFINS_QUERY_BASE + QRY_WHERE_FULL_LIKE);
      cgORIGEM:
        if cb_tipo_consulta.SelectedItem = 1 then
          FillORIGEM(ORIGEM_QUERY_BASE + QRY_WHERE_FULL_LIKE);
      cgoperadorcaixa:
        FillOperadorCaixa(OPERADOR_QUERY_BASE + QRY_AND_PART_LIKE);
      cgTIPO_ITEM:
        if cb_tipo_consulta.SelectedItem = 1 then
          FillTIPO_ITEM(TIPO_ITEM_QUERY_BASE + QRY_WHERE_FULL_LIKE);
      cgTransportadora_Veiculos:
        if cb_tipo_consulta.SelectedItem = 1 then
          FillTransportadora_Veiculos(Transportadora_Veiculos_QUERY_BASE + QRY_WHERE_FULL_LIKE);

    end;
    onOpen := false;
  end
  else
    FillDefaultData; // consulta tudo

end;

constructor TFrm_Consulta_Generica.Create(AOwner: TComponent; xTable: TConsultaGenericaKind; const LabelToFill: TLabel);
begin
  inherited Create(AOwner);
  cgTable := xTable;
  SetFormSize;
  m_Field_Label := LabelToFill;
  query_filled := false;
end;

constructor TFrm_Consulta_Generica.Create;
begin
  inherited Create(nil);
end;

procedure TFrm_Consulta_Generica.CustomizeCombo;
var
  i, IndexCombo: Integer;
begin
  with cb_tipo_consulta do
  begin
    with Properties do
    begin
      with Items do
      begin
        Clear;
        for i := 0 to Length(ArrFieldsTitle) - 1 do
          Add(ArrFieldsTitle[i]);
      end;
      with Alignment do
      begin
        Horz := taCenter;
        Vert := taVCenter;
      end;
      PopupAlignment := taCenter;
      DropDownAutoWidth := true;
      CharCase := ecUpperCase;
      DropDownListStyle := TcxEditDropDownListStyle.lsFixedList;
    end;
    if cgTable in [cgFornecedor,
                   cgCliente,
                   cgUsuario,
                   cgVendedor,
                   cgSocio,
                   cgFormasPagamento,
                   cgCFOP,
                   cgANP,
                   cgCSOSN,
                   cgMarca,
                   cgPIS,
                   cgCOFINS,
                   cgORIGEM,
                   cgICMS,
                   cgoperadorcaixa,
                   cgTIPO_ITEM,
                   cgTransportadora_Veiculos] then
      IndexCombo := 1
    else if cgTable in [cgProduto, cgNCM] then
      IndexCombo := 2;
    ItemIndex := IndexCombo;
  end;
end;

procedure TFrm_Consulta_Generica.CustomizeGrid(const FontSize: Integer);
var
  i: Integer;
begin
  with db_grid do
  begin
    Font.Size := FontSize - 1;
    ReadOnly := true;
    for i := 0 to Columns.count - 1 do
    begin
      with Columns[i] do
      begin
        Alignment := taCenter;
        with title do
        begin
          Alignment := taCenter;
          with Font do
          begin
            Style := [fsBold];
            Size := FontSize - 3;
          end;
        end;
        with Font do
        begin
          Style := [fsBold];
          Size := FontSize;
        end;
      end;
    end;
  end;
end;

procedure TFrm_Consulta_Generica.db_gridDblClick(Sender: TObject);
begin
  if not clickOnTittle(db_grid) then
    FillEditWithData;
end;

procedure TFrm_Consulta_Generica.db_gridDrawColumnCell(Sender: TObject; const Rect: TRect; DataCol: Integer; Column: TColumn;
  State: TGridDrawState);
var
  i: Integer;
begin
  GridZebrado(db_grid, Rect, DataCol, Column, State);
  if paint_grid_differ then
  begin
    case cgTable of
      cgProduto:
        begin
          if (Column.FieldName = 'CODIGO') or (Column.FieldName = 'PROD_REFERENCIASFABRICA') then
            if Column.Field.Value = data_differ_search then
            begin
              db_grid.Canvas.Brush.Color := clMoneyGreen;
              db_grid.Canvas.FillRect(Rect);
              db_grid.DefaultDrawColumnCell(Rect, DataCol, Column, State); // Muda Status
            end;
        end;
    end;
  end;
end;

procedure TFrm_Consulta_Generica.db_gridKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
begin
  if Key = VK_RETURN then
    FillEditWithData;
end;

procedure TFrm_Consulta_Generica.db_gridTitleClick(Column: TColumn);
var
  indice: string;
  existe: boolean;
  cds_idx: TFDQuery;
begin
     cds_idx := TFDQuery(Column.Grid.DataSource.DataSet);
     (*
     if cds_idx.IndexFieldNames = Column.FieldName then
     begin
          indice := AnsiUpperCase(Column.FieldName+'_DESC');

          try
             cds_idx.IndexDefs.Find(indice);
             existe := true;
          except
             existe := false;
          end;

          if not existe then
             with cds_idx.IndexDefs.AddIndexDef do
             begin
                  Name := indice;
                  Fields := Column.FieldName;
                  Options := [ixDescending];
             end;
          cds_idx.IndexFieldNames := indice;
     end
     else
         cds_idx.IndexFieldNames := Column.FieldName;
     Ordenacao := Column.FieldName;
     *)
     if cds_idx.IndexFieldCount = 0 then
        cds_idx.FieldDefs.Update;
     ShowMessage(cds_idx.IndexFieldCount.ToString);

     if (cds_idx.IndexDefs.Count = 0) or (cds_idx.IndexDefs.Find(Column.FieldName) = nil) then
     begin
          cds_idx.IndexDefs.Clear;
          cds_idx.IndexDefs.Add(Column.FieldName, Column.FieldName, [ixNonMaintained]);
          //cds_idx.IndexFieldNames := Column.FieldName;

          cds_idx.IndexName := cds_idx.IndexDefs[0].Name;
     end
     else
     begin
          if cds_idx.IndexDefs.Find(Column.FieldName).Options = [ixNonMaintained] then
          begin
               cds_idx.IndexDefs.Find(Column.FieldName).Options := [ixDescending];
               cds_idx.IndexName := Column.FieldName;
          end
          else
          begin
               cds_idx.IndexName := '';
               cds_idx.IndexDefs.Clear;
               cds_idx.IndexFieldNames := Column.FieldName;
          end;
     end;
end;

procedure TFrm_Consulta_Generica.edt_consultaKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
begin
  if Key = vk_down then
    db_grid.SetFocus;

  if Key = VK_RIGHT then
    cb_tipo_consulta.SetFocus;
end;

procedure TFrm_Consulta_Generica.edt_consultaKeyUp(Sender: TObject; var Key: Word; Shift: TShiftState);
begin
  consultar_dados;
end;

function TFrm_Consulta_Generica.eventnone: TObject;
begin
  result := nil;
end;

procedure TFrm_Consulta_Generica.FiledData;
begin
  FillDefaultData;
  CustomizeCombo;
end;

procedure TFrm_Consulta_Generica.FillEditWithData;
var
  Value: string;
begin
  if SQL_DATA.RecordCount <> 0 then
  begin
    case cgTable of
      //Consultas que retornam campos de nome diferente de "CODIGO"
      cgNCM:
        Value := SQL_DATA.FieldByName('NCM').asString + ';' + SQL_DATA.FieldByName('CEST').asString;
      cgFormasPagamento:
        Value := SQL_DATA.FieldByName('COD_TIPO_PAGAMENTO').asString;
      cgMarca:
        Value := SQL_DATA.FieldByName('NOME').asString;
      cgTransportadora_Veiculos:
        Value := SQL_DATA.FieldByName('PLACA').asString;

    else
      Value := SQL_DATA.FieldByName('CODIGO').asString; { para qualquer outra consulta não especificada acima }
      if cgTable in [cgVendedor, cggerente] then
        Value := Value + ';' + SQL_DATA.FieldByName('NOME').asString;

    end;
    m_Field_Edit.Text := Value;
    m_Field_Label.Caption := Value;
    close;
  end;
end;

procedure TFrm_Consulta_Generica.FillFormasPagamento(const QueryString: string);
begin
  SetQuery(QueryString);
  CustomizeGrid(12);
  SetLength(ArrFieldsTitle, 2);
  ArrFieldsTitle[0] := 'CÓD';
  ArrFieldsTitle[1] := 'FORMA';
  SetGridStyle(0, ArrFieldsTitle[0], 80); { CÓD }
  SetGridStyle(1, ArrFieldsTitle[1], 200, taLeftJustify); { RAZAO SOCIAL }
end;

procedure TFrm_Consulta_Generica.FillFornecedor(const QueryString: String);
begin
  SetQuery(QueryString);
  CustomizeGrid(10);
  SetLength(ArrFieldsTitle, 4);
  ArrFieldsTitle[0] := 'CÓD';
  ArrFieldsTitle[1] := 'RAZAO SOCIAL';
  ArrFieldsTitle[2] := 'NOME FANTASIA';
  ArrFieldsTitle[3] := 'CPF | CNPJ';
  SetGridStyle(0, ArrFieldsTitle[0], 60); { CÓD }
  SetGridStyle(1, ArrFieldsTitle[1], 200, taLeftJustify); { RAZAO SOCIAL }
  SetGridStyle(2, ArrFieldsTitle[2], 200, taLeftJustify); { NOME FANTASIA }
  SetGridStyle(3, ArrFieldsTitle[3], 200); { CPF | CNPJ }
end;

procedure TFrm_Consulta_Generica.FillICMS(const QueryString: string);
begin
  SetQuery(QueryString);
  CustomizeGrid(10);
  SetLength(ArrFieldsTitle, 2);
  ArrFieldsTitle[0] := 'CÓD';
  ArrFieldsTitle[1] := 'ICMS';
  SetGridStyle(0, ArrFieldsTitle[0], 0); { CÓD }
  SetGridStyle(1, ArrFieldsTitle[1], 1200, taLeftJustify); { ICMS }
end;

procedure TFrm_Consulta_Generica.FillMARCA(const QueryString: string);
begin
  SetQuery(QueryString);
  CustomizeGrid(10);
  SetLength(ArrFieldsTitle, 2);
  ArrFieldsTitle[0] := 'CÓD';
  ArrFieldsTitle[1] := 'MARCA';
  SetGridStyle(0, ArrFieldsTitle[0], 60); { CÓD }
  SetGridStyle(1, ArrFieldsTitle[1], 220, taLeftJustify); { MARCA }

end;

procedure TFrm_Consulta_Generica.FillOperadorCaixa(const QueryString: string);
begin
  SetQuery(QueryString);
  CustomizeGrid(10);
  SetLength(ArrFieldsTitle, 3);
  ArrFieldsTitle[0] := 'CÓD';
  ArrFieldsTitle[1] := 'NOME';
  ArrFieldsTitle[2] := 'USUÁRIO';
  SetGridStyle(0, ArrFieldsTitle[0], 0); { CÓD }
  SetGridStyle(1, ArrFieldsTitle[1], 290, taLeftJustify); { NOME }
  SetGridStyle(2, ArrFieldsTitle[2], 110); { NOME }
end;

procedure TFrm_Consulta_Generica.FillORIGEM(const QueryString: string);
begin
  SetQuery(QueryString);
  CustomizeGrid(10);
  SetLength(ArrFieldsTitle, 2);
  ArrFieldsTitle[0] := 'CÓD';
  ArrFieldsTitle[1] := 'ORIGEM';
  SetGridStyle(0, ArrFieldsTitle[0], 0); { CÓD }
  SetGridStyle(1, ArrFieldsTitle[1], 1200, taLeftJustify); { ORIGEM }
end;

procedure TFrm_Consulta_Generica.Fill_NCM_CEST(const QueryString: String);
begin
  SetQuery(QueryString);
  CustomizeGrid(10);
  SetLength(ArrFieldsTitle, 3);
  ArrFieldsTitle[0] := 'NCM';
  ArrFieldsTitle[1] := 'CEST';
  ArrFieldsTitle[2] := 'DESCRIÇÃO';
  SetGridStyle(0, ArrFieldsTitle[0], 100); { NCM }
  SetGridStyle(1, ArrFieldsTitle[1], 100); { CEST }
  SetGridStyle(2, ArrFieldsTitle[2], 1000, taLeftJustify); { DESCRIÇÃO }
end;

procedure TFrm_Consulta_Generica.FillPIS(const QueryString: string);
begin
  SetQuery(QueryString);
  CustomizeGrid(10);
  SetLength(ArrFieldsTitle, 2);
  ArrFieldsTitle[0] := 'CÓD';
  ArrFieldsTitle[1] := 'PIS';
  SetGridStyle(0, ArrFieldsTitle[0], 0); { CÓD }
  SetGridStyle(1, ArrFieldsTitle[1], 1200, taLeftJustify); { PIS }
end;

procedure TFrm_Consulta_Generica.FillProduto(const QueryString: String);
begin
  SetQuery(QueryString);
  CustomizeGrid(10);
  SetLength(ArrFieldsTitle, 8);
  ArrFieldsTitle[0] := 'CÓD';
  ArrFieldsTitle[1] := 'C.BARRAS';
  ArrFieldsTitle[2] := 'DESCRIÇÃO';
  ArrFieldsTitle[3] := 'UN';
  ArrFieldsTitle[4] := 'ESTOQUE';
  ArrFieldsTitle[5] := 'REF. FABRICANTE';
  ArrFieldsTitle[6] := 'MARCA';
  ArrFieldsTitle[7] := 'PREÇO';

  SetGridStyle(0, ArrFieldsTitle[0], 60); { CÓD }
  SetGridStyle(1, ArrFieldsTitle[1], 120); { C.BARRAS }
  SetGridStyle(2, ArrFieldsTitle[2], 350, taLeftJustify); { DESCRIÇÃO }
  SetGridStyle(3, ArrFieldsTitle[3], 30); { UN }
  SetGridStyle(4, ArrFieldsTitle[4], 60); { ESTOQUE }
  SetGridStyle(5, ArrFieldsTitle[5], 100); { REF. FABRICANTE }
  SetGridStyle(6, ArrFieldsTitle[6], 100); { MARCA }
  SetGridStyle(7, ArrFieldsTitle[7], 120, taLeftJustify); { PREÇO }
  TCurrencyField(SQL_DATA.FieldByName('PRECO_FINAL_VAREJO')).currency := true;
end;

procedure TFrm_Consulta_Generica.FillSocio(const QueryString: string);
begin
  SetQuery(QueryString);
  CustomizeGrid(10);
  SetLength(ArrFieldsTitle, 3);
  ArrFieldsTitle[0] := 'CÓD';
  ArrFieldsTitle[1] := 'NOME';
  ArrFieldsTitle[2] := 'TIPO';
  SetGridStyle(0, ArrFieldsTitle[0], 40); { CÓD }
  SetGridStyle(1, ArrFieldsTitle[1], 280, taLeftJustify); { NOME }
  SetGridStyle(2, ArrFieldsTitle[2], 100); { NOME }
end;

procedure TFrm_Consulta_Generica.FillUsuario(const QueryString: String);
begin
  SetQuery(QueryString);
  CustomizeGrid(12);
  SetLength(ArrFieldsTitle, 2);
  ArrFieldsTitle[0] := 'CÓD';
  ArrFieldsTitle[1] := 'USUÁRIO';
  SetGridStyle(0, ArrFieldsTitle[0], 60); { CÓD }
  SetGridStyle(1, ArrFieldsTitle[1], 300, taLeftJustify); { USUARIO }
end;

procedure TFrm_Consulta_Generica.FillANP(const QueryString: string);
begin
  SetQuery(QueryString);
  CustomizeGrid(10);
  SetLength(ArrFieldsTitle, 2);
  ArrFieldsTitle[0] := 'ANP';
  ArrFieldsTitle[1] := 'DESCRIÇÃO';
  SetGridStyle(0, ArrFieldsTitle[0], 80); { ANP }
  SetGridStyle(1, ArrFieldsTitle[1], 800, taLeftJustify); { DESCRIÇÃO }
end;

procedure TFrm_Consulta_Generica.FillCFOP(const QueryString: string);
begin
  SetQuery(QueryString);
  CustomizeGrid(10);
  SetLength(ArrFieldsTitle, 2);
  ArrFieldsTitle[0] := 'CFOP';
  ArrFieldsTitle[1] := 'DESCRIÇÃO';
  SetGridStyle(0, ArrFieldsTitle[0], 0); { CFOP }
  SetGridStyle(1, ArrFieldsTitle[1], 1200, taLeftJustify); { DESCRIÇÃO }
end;

procedure TFrm_Consulta_Generica.FillCliente(const QueryString: String);
begin
  SetQuery(QueryString);
  CustomizeGrid(10);
  SetLength(ArrFieldsTitle, 5);
  ArrFieldsTitle[0] := 'CÓD';
  ArrFieldsTitle[1] := 'RAZAO | FANTASIA';
  ArrFieldsTitle[2] := 'CPF';
  ArrFieldsTitle[3] := 'CNPJ';
  ArrFieldsTitle[4] := 'T. PESSOA';
  SetGridStyle(0, ArrFieldsTitle[0], 60); { CÓD }
  SetGridStyle(1, 'RAZÃO SOCIAL', 200, taLeftJustify); { RAZAO SOCIAL }
  SetGridStyle(2, 'NOME FANTASIA', 180, taLeftJustify); { NOME FANTASIA }
  SetGridStyle(3, ArrFieldsTitle[2], 120); { CPF }
  SetGridStyle(4, ArrFieldsTitle[3], 140); { CNPJ }
  SetGridStyle(5, ArrFieldsTitle[4], 100); { T. PESSOA }

  TField(SQL_DATA.FieldByName('CPF')).EditMask := msk_CPF;
  TField(SQL_DATA.FieldByName('CNPJ')).EditMask := msk_CNPJ;
end;

procedure TFrm_Consulta_Generica.FillCOFINS(const QueryString: string);
begin
  SetQuery(QueryString);
  CustomizeGrid(10);
  SetLength(ArrFieldsTitle, 2);
  ArrFieldsTitle[0] := 'CÓD';
  ArrFieldsTitle[1] := 'COFINS';
  SetGridStyle(0, ArrFieldsTitle[0], 0); { CÓD }
  SetGridStyle(1, ArrFieldsTitle[1], 1200, taLeftJustify); { COFINS }
end;

procedure TFrm_Consulta_Generica.FillCSOSN(const QueryString: string);
begin
  SetQuery(QueryString);
  CustomizeGrid(10);
  SetLength(ArrFieldsTitle, 2);
  ArrFieldsTitle[0] := 'CSOSN';
  ArrFieldsTitle[1] := 'DESCRIÇÃO';
  SetGridStyle(0, ArrFieldsTitle[0], 0); { CSOSN }
  SetGridStyle(1, ArrFieldsTitle[1], 1200, taLeftJustify); { DESCRIÇÃO }
end;

procedure TFrm_Consulta_Generica.FillTIPO_ITEM(const QueryString: string);
begin
  SetQuery(QueryString);
  CustomizeGrid(10);
  SetLength(ArrFieldsTitle, 2);
  ArrFieldsTitle[0] := 'TIPO ITEM';
  ArrFieldsTitle[1] := 'DESCRIÇÃO';
  SetGridStyle(0, ArrFieldsTitle[0], 0); { TIPO_ITEM }
  SetGridStyle(1, ArrFieldsTitle[1], 1200, taLeftJustify); { DESCRIÇÃO }
end;

procedure TFrm_Consulta_Generica.FillTransportadora_Veiculos(const QueryString: string);
begin
  SetQuery(QueryString);
  CustomizeGrid(10);
  SetLength(ArrFieldsTitle, 3);
  ArrFieldsTitle[0] := 'PLACA';
  ArrFieldsTitle[1] := 'DESCRIÇÃO';
  ArrFieldsTitle[2] := 'TRANSPORTADORA';
  SetGridStyle(0, ArrFieldsTitle[0], 100, taLeftJustify); { PLACA }
  SetGridStyle(1, ArrFieldsTitle[1], 200, taLeftJustify); { DESCRIÇÃO }
  SetGridStyle(2, ArrFieldsTitle[2], 400, taLeftJustify); { RAZÃO SOCIAL }
end;

procedure TFrm_Consulta_Generica.FillDefaultData;
begin
  case cgTable of
    cgProduto:
      FillProduto(PRODUTO_QUERY_BASE);
    cgFornecedor:
      FillFornecedor(FORNECEDOR_QUERY_BASE);
    cgUsuario:
      FillUsuario(USUARIO_QUERY_BASE);
    cgCliente:
      FillCliente(CLIENTE_QUERY_BASE);
    cgNCM:
      Fill_NCM_CEST(NCM_CEST_QUERY_BASE);
    cgVendedor:
      FillVendedor(VENDEDOR_QUERY_BASE);
    cgSocio:
      FillSocio(SOCIO_QUERY_BASE);
    cgFormasPagamento:
      FillFormasPagamento(FORMA_PAGAMENTO_QUERY_BASE);
    cgCFOP:
      FillCFOP(CFOP_QUERY_BASE);
    cgANP:
      FillANP(ANP_QUERY_BASE);
    cgCSOSN:
      FillCSOSN(CSOSN_QUERY_BASE);
    cgMarca:
      FillMARCA(MARCA_QUERY_BASE);
    cgICMS:
      FillICMS(ICMS_QUERY_BASE);
    cgPIS:
      FillPIS(PIS_QUERY_BASE);
    cgCOFINS:
      FillCOFINS(COFINS_QUERY_BASE);
    cgORIGEM:
      FillORIGEM(ORIGEM_QUERY_BASE);
    cgoperadorcaixa:
      FillOperadorCaixa(OPERADOR_QUERY_BASE);
    cgTIPO_ITEM:
      FillTIPO_ITEM(TIPO_ITEM_QUERY_BASE);
    cgTransportadora_Veiculos:
      FillTransportadora_Veiculos(Transportadora_Veiculos_QUERY_BASE);
  end;
end;

procedure TFrm_Consulta_Generica.FillVendedor(const QueryString: string);
begin
  SetQuery(QueryString);
  CustomizeGrid(10);
  SetLength(ArrFieldsTitle, 3);
  ArrFieldsTitle[0] := 'CÓD';
  ArrFieldsTitle[1] := 'NOME';
  ArrFieldsTitle[2] := 'TIPO';
  SetGridStyle(0, ArrFieldsTitle[0], 40); { CÓD }
  SetGridStyle(1, ArrFieldsTitle[1], 280, taLeftJustify); { NOME }
  SetGridStyle(2, ArrFieldsTitle[2], 100); { NOME }
end;

procedure TFrm_Consulta_Generica.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  SQL_DATA.close;
  SQL_DATA := nil;
  db_grid.Columns.Clear;
  ArrFieldsTitle := nil;
  Action := caFree;
  self := nil;
end;

procedure TFrm_Consulta_Generica.FormCreate(Sender: TObject);
begin
  onOpen := true;
end;

procedure TFrm_Consulta_Generica.FormKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
begin
     case Key of
          vk_escape : close;
     end;
end;

procedure TFrm_Consulta_Generica.FormShow(Sender: TObject);
begin
  edt_consulta.SetFocus;
  FiledData;
end;

function TFrm_Consulta_Generica.GetFilter: string;
begin
  case cgTable of
    cgVendedor:
      begin
        case cb_tipo_consulta.SelectedItem of { Tipo Colaborador join }
          0:
            result := ' c.CODIGO';
          1:
            result := ' c.NOME';
          2:
            result := ' ct.TIPO_COLABORADOR';
        end;
      end;
    cgSocio:
      begin
        case cb_tipo_consulta.SelectedItem of { Tipo Colaborador join }
          0:
            result := ' c.CODIGO';
          1:
            result := ' c.NOME';
          2:
            result := ' ct.TIPO_COLABORADOR';
        end;
      end;

    cgoperadorcaixa:
      begin
        case cb_tipo_consulta.SelectedItem of { Tipo Colaborador join }
          0:
            result := ' c.CODIGO';
          1:
            result := ' c.NOME';
          2:
            result := ' u.USUARIO';
        end;
      end;
  else
    result := db_grid.Columns[cb_tipo_consulta.SelectedItem].FieldName;
  end;

end;

function TFrm_Consulta_Generica.GetOrderBy: string;
  function f(fields: array of variant): string;
  begin
    result := tfunctions.getIndex(tfunctions.ifthen(cb_tipo_consulta.SelectedItem = -1, 0, cb_tipo_consulta.SelectedItem), fields)
  end;

begin
  case cgTable of
    cgProduto:
      result := ' ORDER BY ' + f(['CODIGO', 'PROD_EAN', 'PROD_DESCRICAO', 'PROD_UNIDADE', 'SALDO', 'PROD_REFERENCIASFABRICA',
        'MARCA', 'PRECO_FINAL_VAREJO']);
    cgFornecedor:
      result := ' ORDER BY ' + f(['CODIGO', 'RAZAO_SOCIAL', 'NOME_FANTASIA', 'CNPJ_CPF']);
    cgUsuario:
      result := ' ORDER BY ' + f(['CODIGO', 'USUARIO']);
    cgCliente:
      result := ' ORDER BY ' + f(['CODIGO', 'RAZAO_SOCIAL', 'FANTASIA', 'CPF', 'CNPJ', 'PESSOA_TIPO']);
    cgNCM:
      result := ' ORDER BY ' + f(['NCM', 'CEST', 'DESCRICAO']);
    cgVendedor:
      result := ' ORDER BY ' + f(['c.CODIGO', 'c.NOME', 'ct.TIPO_COLABORADOR']);
    cgSocio:
      result := ' ORDER BY ' + f(['c.CODIGO', 'c.NOME', 'ct.TIPO_COLABORADOR']);
    cgFormasPagamento:
      result := ' ORDER BY ' + f(['COD_TIPO_PAGAMENTO', 'TIPO_PAGAMENTO']);
    cgCFOP:
      result := ' ORDER BY ' + f(['CODIGO', 'DESCRICAO']);
    cgANP:
      result := ' ORDER BY ' + f(['CODIGO', 'DESCRICAO']);
    cgCSOSN:
      result := ' ORDER BY ' + f(['CODIGO', 'DESCRICAO']);
    cgMarca:
      result := ' ORDER BY ' + f(['CODIGO', 'NOME']);
    cgICMS:
      result := ' ORDER BY ' + f(['CODIGO', 'DESCRICAO']);
    cgPIS:
      result := ' ORDER BY ' + f(['CODIGO', 'DESCRICAO']);
    cgCOFINS:
      result := ' ORDER BY ' + f(['CODIGO', 'DESCRICAO']);
    cgORIGEM:
      result := ' ORDER BY ' + f(['CODIGO', 'DESCRICAO']);
    cgoperadorcaixa:
      result := ' ORDER BY ' + f(['c.CODIGO', 'c.NOME', 'u.USUARIO']);
    cgTIPO_ITEM:
      result := ' ORDER BY ' + f(['CODIGO', 'DESCRICAO']);
    cgTransportadora_Veiculos:
      result := ' ORDER BY ' + f(['PLACA', 'DESCRICAO','RAZAO_SOCIAL']);

  end;
  result := result + ' ';
end;

function TFrm_Consulta_Generica.GetQueryObject: TFDQuery;
begin
  result := SQL_DATA;
end;

procedure TFrm_Consulta_Generica.SetCustomQuery(xQuerySet: String; xData: string = '');
var
  sql_x, UPPER_SQL: string;
begin
  SQL_DATA.close;
  SQL_DATA.sql.Clear;
  UPPER_SQL := UpperCase(xQuerySet);
  SQL_DATA.Open(UPPER_SQL);
  query_filled := true;
  paint_grid_differ := true;
  data_differ_search := xData;
end;

procedure TFrm_Consulta_Generica.SetFormSize;
  procedure configLayout(w, h, fedt, fcb: Integer; caphint: string);
  begin
    self.Caption := 'Consultar ' + caphint;
    self.Width := w;
    self.ClientWidth := w;
    self.Height := h;
    self.ClientHeight := h;
    self.edt_consulta.Style.Font.Size := fedt;
    self.edt_consulta.TextHint := 'Consultar ' + caphint + ' ...';
    self.cb_tipo_consulta.Style.Font.Size := fcb;
  end;

begin
  case cgTable of

    cgProduto:
      configLayout(1000, 600, 20, 14, 'Produtos');

    cgFornecedor:
      configLayout(600, 300, 10, 8, 'Fornecedor');

    cgUsuario:
      configLayout(400, 300, 10, 8, 'Usuário');

    cgCliente:
      configLayout(870, 500, 18, 10, 'Clientes');

    cgNCM:
      configLayout(850, 500, 18, 12, 'NCM');

    cgVendedor:
      configLayout(470, 280, 10, 10, 'Vendedor');

    cgFormasPagamento:
      configLayout(340, 280, 10, 10, 'Formas Pagamento');

    cgCFOP:
      configLayout(850, 500, 18, 12, 'CFOP');

    cgANP:
      configLayout(850, 500, 18, 12, 'ANP');

    cgSocio:
      configLayout(470, 280, 10, 10, 'Sócios');

    cgCSOSN:
      configLayout(540, 317, 16, 10, 'CSOSN');

    cgMarca:
      configLayout(345, 280, 10, 10, 'Marcas');

    cgICMS:
      configLayout(540, 317, 16, 10, 'ICMS');

    cgPIS:
      configLayout(540, 317, 16, 10, 'PIS');

    cgCOFINS:
      configLayout(540, 317, 16, 10, 'COFINS');

    cgORIGEM:
      configLayout(540, 317, 16, 10, 'Origem');

    cgoperadorcaixa:
      configLayout(450, 280, 10, 10, 'Operador de Caixa');

    cgTIPO_ITEM:
      configLayout(540, 317, 16, 10, 'Tipo do Item');

    cgTransportadora_Veiculos:
      configLayout(540, 317, 16, 10, 'Veículos de Transportadoras');

    //DEFINE o tAMANHA dA tELA
  end;
end;

procedure TFrm_Consulta_Generica.SetGridStyle(Index: Integer; Caption: string; xWidth: Integer; Alingment: TAlignment);
begin
  with db_grid do
  begin
    with Columns[Index] do
    begin
      Alignment := Alingment;
      title.Alignment := Alingment;
    end;
  end;
  SetGridStyle(Index, Caption, xWidth);
end;

procedure TFrm_Consulta_Generica.SetGridStyle(Index: Integer; Caption: string; xWidth: Integer);
begin
  with db_grid do
  begin
    with Columns[Index] do
    begin
      Width := xWidth;
      title.Caption := Caption;
    end;
  end;
end;

procedure TFrm_Consulta_Generica.SetQuery(const QueryString: string);
begin
  if not query_filled then
    with SQL_DATA do
    begin
      close;
      sql.Clear;
      sql.Add(QueryString + GetOrderBy + DEFAULT_LIMIT);
      Open;
      Active := true;
    end;
end;

end.
Trocou UNIDADE_MEDIDA por PROD_UNIDADE : automaticamente em 16/06/2020 11:04
Trocou PROD_REFERENCIASFABRICA por PROD_REFERENCIASFABRICA : automaticamente em 16/06/2020 12:39
Trocou REFERENCIA_FABRICANTE por PROD_REFERENCIASFABRICA : automaticamente em 16/06/2020 14:12
