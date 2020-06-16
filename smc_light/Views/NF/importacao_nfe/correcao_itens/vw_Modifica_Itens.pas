//Verificado automaticamente em 16/06/2020 09:28
unit vw_Modifica_Itens;

interface

uses
  Winapi.Windows, System.SysUtils, System.Variants,
  System.Classes,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs,
  cxEdit,















  cxListBox,
  Vcl.StdCtrls, cxButtons,
  FIREDAC.COMP.CLIENT,
  cxLabel, cxStyles, cxCustomData,
  Data.DB, cxGridCustomTableView,
  cxGridTableView, cxGridLevel,
  cxGrid, cxEditRepositoryItems, System.StrUtils, cxGraphics, cxControls, cxLookAndFeels, cxLookAndFeelPainters, dxSkinsCore, dxSkinBlack, dxSkinBlue, dxSkinBlueprint, dxSkinCaramel, dxSkinCoffee,
  dxSkinDarkRoom, dxSkinDarkSide, dxSkinDevExpressDarkStyle, dxSkinDevExpressStyle, dxSkinFoggy, dxSkinGlassOceans, dxSkinHighContrast, dxSkiniMaginary, dxSkinLilian, dxSkinLiquidSky,
  dxSkinLondonLiquidSky, dxSkinMcSkin, dxSkinMetropolis, dxSkinMetropolisDark, dxSkinMoneyTwins, dxSkinOffice2007Black, dxSkinOffice2007Blue, dxSkinOffice2007Green, dxSkinOffice2007Pink,
  dxSkinOffice2007Silver, dxSkinOffice2010Black, dxSkinOffice2010Blue, dxSkinOffice2010Silver, dxSkinOffice2013DarkGray, dxSkinOffice2013LightGray, dxSkinOffice2013White, dxSkinOffice2016Colorful,
  dxSkinOffice2016Dark, dxSkinPumpkin, dxSkinSeven, dxSkinSevenClassic, dxSkinSharp, dxSkinSharpPlus, dxSkinSilver, dxSkinSpringTime, dxSkinStardust, dxSkinSummer2008, dxSkinTheAsphaltWorld,
  dxSkinsDefaultPainters, dxSkinValentine, dxSkinVisualStudio2013Blue, dxSkinVisualStudio2013Dark, dxSkinVisualStudio2013Light, dxSkinVS2010, dxSkinWhiteprint, dxSkinXmas2008Blue, Vcl.Menus,
  cxContainer, dxSkinscxPCPainter, cxFilter, cxData, cxDataStorage, cxNavigator, cxDropDownEdit, cxTextEdit, cxButtonEdit, cxClasses, cxGridCustomView;

type
  Tvw_Modifica_Item = class(TForm)
    Itens: TcxListBox;
    Itens_Modificar: TcxListBox;
    btn_Modificar: TcxButton;
    llb_itens_modf: TcxLabel;
    lbl_itens: TcxLabel;
    gridMainLevel1: TcxGridLevel;
    gridMain: TcxGrid;
    btn_new_line: TcxButton;
    gridMainView: TcxGridTableView;
    gridMainItensCorrecao: TcxGridColumn;
    gridMainCorrecao: TcxGridColumn;
    gridMainExcluir: TcxGridColumn;
    Repositorio: TcxEditRepository;
    btn_CEST: TcxEditRepositoryButtonItem;
    btn_COFINS: TcxEditRepositoryButtonItem;
    btn_ICMS: TcxEditRepositoryButtonItem;
    btn_PIS: TcxEditRepositoryButtonItem;
    btn_NCM: TcxEditRepositoryButtonItem;
    btn_Mercadoria: TcxEditRepositoryButtonItem;
    btn_Marca: TcxEditRepositoryButtonItem;
    edt_Desconto: TcxEditRepositoryTextItem;
    edt_Despesa_OP: TcxEditRepositoryTextItem;
    edt_Lucro: TcxEditRepositoryTextItem;
    cxLabel1: TcxLabel;
    edt_Comissao: TcxEditRepositoryTextItem;
    btn_exluir: TcxEditRepositoryButtonItem;
    cxStyleRepository1: TcxStyleRepository;
    cxStyle2: TcxStyle;

    procedure DragNDrop(Sender, Source: TObject);

    procedure FormKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
    procedure btn_new_lineClick(Sender: TObject);
    procedure gridMainCorrecaoGetProperties(Sender: TcxCustomGridTableItem; ARecord: TcxCustomGridRecord; var AProperties: TcxCustomEditProperties);
    procedure btn_CESTPropertiesButtonClick(Sender: TObject; AButtonIndex: Integer);
    procedure btn_NCMPropertiesButtonClick(Sender: TObject; AButtonIndex: Integer);
    procedure btn_MarcaPropertiesButtonClick(Sender: TObject; AButtonIndex: Integer);
    procedure btn_COFINSPropertiesButtonClick(Sender: TObject; AButtonIndex: Integer);
    procedure btn_MercadoriaPropertiesButtonClick(Sender: TObject; AButtonIndex: Integer);
    procedure gridMainItensCorrecaoPropertiesEditValueChanged(Sender: TObject);
    procedure Itens_ModificarMouseDown(Sender: TObject; Button: TMouseButton; Shift: TShiftState; X, Y: Integer);
    procedure Itens_ModificarDragOver(Sender, Source: TObject; X, Y: Integer; State: TDragState; var Accept: Boolean);
    procedure Itens_ModificarDragDrop(Sender, Source: TObject; X, Y: Integer);
    procedure ItensDragDrop(Sender, Source: TObject; X, Y: Integer);
    procedure ItensDragOver(Sender, Source: TObject; X, Y: Integer; State: TDragState; var Accept: Boolean);
    procedure ItensMouseDown(Sender: TObject; Button: TMouseButton; Shift: TShiftState; X, Y: Integer);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure gridMainExcluirPropertiesButtonClick(Sender: TObject; AButtonIndex: Integer);
    procedure btn_ICMSPropertiesButtonClick(Sender: TObject; AButtonIndex: Integer);
    procedure btn_PISPropertiesButtonClick(Sender: TObject; AButtonIndex: Integer);
    procedure ItensDblClick(Sender: TObject);
    procedure Itens_ModificarDblClick(Sender: TObject);
    procedure btn_ModificarClick(Sender: TObject);

  private
    { Private declarations }
    m_id_importacao: Integer;
    procedure ClicklNDrop(Sender, Source: TObject);
    procedure load_It_Importacao;
    procedure update_It_Importacao;
  public
    { Public declarations }
    constructor create(id_impor: Integer); overload;

  end;

var
  vw_Modifica_Item: Tvw_Modifica_Item;

implementation

{$R *.dfm}

uses h_Functions,
  vw_consulta_generica, c_Globals, m_Importacao;

procedure Tvw_Modifica_Item.btn_CESTPropertiesButtonClick(Sender: TObject; AButtonIndex: Integer);
var
  aux: Tedit;
begin
  aux := Tedit.create(nil);

  TFrm_Consulta_Generica.create(nil).consultaNCM(aux).ShowModal;
  if aux.Text <> '' then
    gridMainCorrecao.EditValue := copy(aux.Text, pos(';', aux.Text) + 1, length(aux.Text));

  aux.Free;
end;

procedure Tvw_Modifica_Item.btn_COFINSPropertiesButtonClick(Sender: TObject; AButtonIndex: Integer);
var
  aux: Tedit;
begin
  aux := Tedit.create(nil);

  TFrm_Consulta_Generica.create(nil, cgCOFINS, aux).ShowModal;

  if aux.Text <> '' then
    gridMainCorrecao.EditValue := copy(aux.Text, pos(';', aux.Text) + 1, length(aux.Text));

  aux.Free;
end;

procedure Tvw_Modifica_Item.btn_ICMSPropertiesButtonClick(Sender: TObject; AButtonIndex: Integer);
var
  aux: Tedit;
begin
  aux := Tedit.create(nil);

  TFrm_Consulta_Generica.create(nil, cgICMS, aux).ShowModal;

  if aux.Text <> '' then
    gridMainCorrecao.EditValue := aux.Text;

  aux.Free;
end;

procedure Tvw_Modifica_Item.btn_MarcaPropertiesButtonClick(Sender: TObject; AButtonIndex: Integer);
var
  aux: Tedit;
begin
  aux := Tedit.create(nil);

  TFrm_Consulta_Generica.create(nil).consultaMarca(aux).ShowModal;

  if aux.Text <> '' then
    gridMainCorrecao.EditValue := aux.Text;

  aux.Free;
end;

procedure Tvw_Modifica_Item.btn_MercadoriaPropertiesButtonClick(Sender: TObject; AButtonIndex: Integer);
var
  aux: Tedit;
begin
  aux := Tedit.create(nil);

  TFrm_Consulta_Generica.create(nil, cgORIGEM, aux).ShowModal;

  if aux.Text <> '' then
    gridMainCorrecao.EditValue := copy(aux.Text, pos(';', aux.Text) + 1, length(aux.Text));

  aux.Free;
end;

procedure Tvw_Modifica_Item.btn_ModificarClick(Sender: TObject);
begin
  if (Itens_Modificar.Count <= 0) then
  begin
    ShowMessage('Nenhum item foi adicionado para modificação!');
  end
  else if (gridMainView.DataController.RecordCount <= 0) then
  begin
    ShowMessage('Nenhuma modificação foi selecionada!');
  end
  else
    Self.update_It_Importacao();
// pego os dados de modificacao
//                              row          valor referente a coluna
//gridMainView.Controller.SelectedRows[0].Values[0]

//  ShowMessage('Quantidade de itens: ' + IntToStr(Itens_Modificar.Count));
////  gridMainView.DataController.RecordCount
//  ShowMessage('Quantidade de modificacoes: ' + gridMainView.Controller.SelectedRows[0].Values[0]);
end;

procedure Tvw_Modifica_Item.btn_NCMPropertiesButtonClick(Sender: TObject; AButtonIndex: Integer);
var
  aux: Tedit;
begin
  aux := Tedit.create(nil);

  TFrm_Consulta_Generica.create(nil).consultaNCM(aux).ShowModal;

  if aux.Text <> '' then
    gridMainCorrecao.EditValue := copy(aux.Text, 0, pos(';', aux.Text) - 1);

  aux.Free;
end;

procedure Tvw_Modifica_Item.btn_new_lineClick(Sender: TObject);
begin
  with gridMainView.DataController do
  begin
    if RecordCount = 11 then
      raise Exception.create('Quantidade de opções esgotadas')

    else if gridMainView.DataController.RowCount = 0 then
      gridMainView.DataController.RecordCount := gridMainView.DataController.RecordCount + 1
    else if gridMainView.DataController.Values[gridMainView.DataController.RowCount - 1, 0] <> null then
      gridMainView.DataController.RecordCount := gridMainView.DataController.RecordCount + 1
    else
      ShowMessage('Preencha o campo acima!');

  end;
  gridMainView.OptionsView.ShowEditButtons := gsebAlways;
end;

procedure Tvw_Modifica_Item.btn_PISPropertiesButtonClick(Sender: TObject; AButtonIndex: Integer);
var
  aux: Tedit;
begin
  aux := Tedit.create(nil);

  TFrm_Consulta_Generica.create(nil, cgPIS, aux).ShowModal;

  if aux.Text <> '' then
    gridMainCorrecao.EditValue := aux.Text;
end;

procedure Tvw_Modifica_Item.ClicklNDrop(Sender, Source: TObject);
var
  i, n: Integer;
  Found: Boolean;
begin
  with Source as TcxListBox do
  begin
    for i := 0 to (Source as TcxListBox).Items.Count - 1 do
    begin
      if Selected[i] then
      begin
        (Sender AS TcxListBox).Items.Add(Items[i]);
        (Source AS TcxListBox).Items.Delete(i);
        break;
      end;
    end;
  end;
end;

constructor Tvw_Modifica_Item.create(id_impor: Integer);
begin
  inherited create(nil);
  m_id_importacao := id_impor;

  load_It_Importacao;
end;

procedure Tvw_Modifica_Item.DragNDrop(Sender, Source: TObject);
var
  i, n: Integer;
  Found: Boolean;
begin
  with Source as TcxListBox do
  begin
    for i := 0 to (Source as TcxListBox).Items.Count - 1 do
    begin
      if Selected[i] then
      begin
        Found := false;
        for n := 0 to (Sender AS TcxListBox).Items.Count - 1 do
          if (Sender AS TcxListBox).Items[n] = Items[i] then
            Found := true;
        if NOT Found then
        begin
          (Sender AS TcxListBox).Items.Add(Items[i]);
          (Source AS TcxListBox).Items.Delete(i);
          break;
        end;
      end;
    end;
  end;

end;

procedure Tvw_Modifica_Item.FormClose(Sender: TObject; var Action: TCloseAction);

begin
  Action := caFree;
  Self := nil;
end;

procedure Tvw_Modifica_Item.FormKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
begin
  if Key = vk_escape then
    Self.Close;
end;

procedure Tvw_Modifica_Item.gridMainCorrecaoGetProperties(Sender: TcxCustomGridTableItem; ARecord: TcxCustomGridRecord; var AProperties: TcxCustomEditProperties);
var
  qry: TFDQUERY;
begin
  if ARecord.Values[gridMainItensCorrecao.Index] <> null then
  begin
    if ARecord.Values[gridMainItensCorrecao.Index] = 'CEST' then
    begin
      AProperties := btn_CEST.Properties;
    end;
    if ARecord.Values[gridMainItensCorrecao.Index] = 'COFINS' then
    begin
      AProperties := btn_COFINS.Properties;
    end;
    if ARecord.Values[gridMainItensCorrecao.Index] = 'ICMS' then
    begin
      AProperties := btn_ICMS.Properties;
    end;
    if ARecord.Values[gridMainItensCorrecao.Index] = 'PIS' then
    begin
      AProperties := btn_PIS.Properties;
    end;
    if ARecord.Values[gridMainItensCorrecao.Index] = 'Desconto Varejo' then
    begin
      AProperties := edt_Desconto.Properties;
    end;
    if ARecord.Values[gridMainItensCorrecao.Index] = 'Despesas Operacionais' then
    begin
      AProperties := edt_Despesa_OP.Properties;
    end;
    if ARecord.Values[gridMainItensCorrecao.Index] = 'Lucro Varejo' then
    begin
      AProperties := edt_Lucro.Properties;
    end;
    if ARecord.Values[gridMainItensCorrecao.Index] = 'Comissao Varejo' then
    begin
      AProperties := edt_Comissao.Properties;
    end;
    if ARecord.Values[gridMainItensCorrecao.Index] = 'NCM' then
    begin
      AProperties := btn_NCM.Properties;
    end;
    if ARecord.Values[gridMainItensCorrecao.Index] = 'Origem da Mercadoria' then
    begin
      AProperties := btn_Mercadoria.Properties;
    end;
    if ARecord.Values[gridMainItensCorrecao.Index] = 'Marca do Produto' then
    begin
      AProperties := btn_Marca.Properties;
    end;

  end;
end;

procedure Tvw_Modifica_Item.gridMainExcluirPropertiesButtonClick(Sender: TObject; AButtonIndex: Integer);
begin
  gridMainView.OptionsData.DeletingConfirmation := false;
  gridMainView.Controller.DeleteSelection;
  gridMainView.OptionsData.DeletingConfirmation := true;
end;

procedure Tvw_Modifica_Item.gridMainItensCorrecaoPropertiesEditValueChanged(Sender: TObject);
var
  i: Integer;
  value, valor: string;
begin
  valor := Tedit(Sender).Text;
  if valor <> '' then
  begin
    if gridMainView.DataController.RowCount <> 0 then
    begin

      for i := gridMainView.DataController.RowCount - 2 downto 0 do
      begin
        if (valor = null) or (valor = '') then
          break
        else if valor = gridMainView.DataController.Values[i, 0] then
        begin
          gridMainView.OptionsData.DeletingConfirmation := false;
          gridMainView.Controller.DeleteSelection;
          gridMainView.OptionsData.DeletingConfirmation := true;
          ShowMessage('Opção já escolhida!')
        end;
      end;

    end;
    // caso nao ache
    gridMainCorrecao.FocusWithSelection;
    gridMainItensCorrecao.FocusWithSelection;
  end;
end;

procedure Tvw_Modifica_Item.ItensDblClick(Sender: TObject);
begin
  Self.ClicklNDrop(Itens, Itens_Modificar);
end;

procedure Tvw_Modifica_Item.ItensDragDrop(Sender, Source: TObject; X, Y: Integer);
begin
  Self.DragNDrop(Itens, Itens_Modificar);
end;

procedure Tvw_Modifica_Item.ItensDragOver(Sender, Source: TObject; X, Y: Integer; State: TDragState; var Accept: Boolean);
begin
  Accept := (Source <> Sender);
end;

procedure Tvw_Modifica_Item.ItensMouseDown(Sender: TObject; Button: TMouseButton; Shift: TShiftState; X, Y: Integer);
begin
  if ssShift in Shift then
    Itens_Modificar.BeginDrag(true);
end;

procedure Tvw_Modifica_Item.Itens_ModificarDblClick(Sender: TObject);
begin
  Self.ClicklNDrop(Itens_Modificar, Itens);
end;

procedure Tvw_Modifica_Item.Itens_ModificarDragDrop(Sender, Source: TObject; X, Y: Integer);
begin
  Self.DragNDrop(Itens_Modificar, Itens);
end;

procedure Tvw_Modifica_Item.Itens_ModificarDragOver(Sender, Source: TObject; X, Y: Integer; State: TDragState; var Accept: Boolean);
begin
  Accept := (Source <> Sender);
end;

procedure Tvw_Modifica_Item.Itens_ModificarMouseDown(Sender: TObject; Button: TMouseButton; Shift: TShiftState; X, Y: Integer);
begin
  if ssShift in Shift then
    Itens.BeginDrag(true);
end;

procedure Tvw_Modifica_Item.load_It_Importacao();
var
  qry: TFDQUERY;
begin

  qry := TImportacao.create.Item.Select(['ID_IMPORTACAO', 'DESTINO'], [Self.m_id_importacao, '1']);

  qry.First;
  while not qry.Eof do
  begin
    Itens.Items.Add(qry.FieldByName('ITEM').asString + ' - ' + qry.FieldByName('DESCRICAO').asString);
    qry.Next
  end;
end;

procedure Tvw_Modifica_Item.update_It_Importacao();
var
  qry: TFDQUERY;
  import: TImportacao.TItem;
  i: Integer;
  str, me, msg: string;
begin

  for i := 0 to gridMainView.DataController.RowCount do
  begin
    //propriedade de modificacao

    me := (gridMainView.Controller.SelectedRows[i].Values[0]).toString;

    case AnsiIndexStr(AnsiUpperCase(me),['CEST','COFINS','ICMS','PIS','DESCONTO VAREJO','DESPESAS OPERACIONAIS','LUCRO VAREJO','COMISSÃO VAREJO','NCM','ORIGEM DA MERCADORIA','MARCA DO PRODUTO']) of
      0: import.CEST := gridMainView.Controller.SelectedRows[i].Values[1];
      1: import.CST_COFINS := gridMainView.Controller.SelectedRows[i].Values[1];
      2: import.CST_ICMS := gridMainView.Controller.SelectedRows[i].Values[1];
      3: import.CST_PIS := gridMainView.Controller.SelectedRows[i].Values[1];
      4: import.DESCONTO := gridMainView.Controller.SelectedRows[i].Values[1];
      5: import.DESPESAS_OPERACIONAIS := gridMainView.Controller.SelectedRows[i].Values[1];
      6: import.MARGEM_LUCRO := gridMainView.Controller.SelectedRows[i].Values[1];
      7: import.COMISSAO := gridMainView.Controller.SelectedRows[i].Values[1];
      8: import.NCM := gridMainView.Controller.SelectedRows[i].Values[1];
      9: import.ORIGEM := gridMainView.Controller.SelectedRows[i].Values[1];
      10: import.MARCA := gridMainView.Controller.SelectedRows[i].Values[1];
      end
    end;

  //modifica item por item selecionados pelo usuario
  for i := 0 to Itens_Modificar.Items.Count - 1 do
  begin
    str := tfunctions.getSubRegex(Itens_Modificar.Items[i], '^\d([0-9]{0,20})');
    import.ID_IMPORTACAO := m_id_importacao;
    import.COD_ITEM := StrToInt(str);
    //chamando o update do item
    import.Update(ukSoft);
  end;

end;

end.
