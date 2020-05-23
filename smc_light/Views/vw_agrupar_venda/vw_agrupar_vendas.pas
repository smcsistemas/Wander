unit vw_agrupar_vendas;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, cxGraphics, cxControls, cxLookAndFeels, cxLookAndFeelPainters, cxStyles, dxSkinsCore, dxSkinBlack,
  dxSkinBlue, dxSkinBlueprint, dxSkinCaramel, dxSkinCoffee, dxSkinDarkRoom, dxSkinDarkSide, dxSkinDevExpressDarkStyle,
  dxSkinDevExpressStyle, dxSkinFoggy, dxSkinGlassOceans, dxSkinHighContrast, dxSkiniMaginary, dxSkinLilian, dxSkinLiquidSky,
  dxSkinLondonLiquidSky, dxSkinMcSkin, dxSkinMetropolis, dxSkinMetropolisDark, dxSkinMoneyTwins, dxSkinOffice2007Black,
  dxSkinOffice2007Blue, dxSkinOffice2007Green, dxSkinOffice2007Pink, dxSkinOffice2007Silver, dxSkinOffice2010Black, dxSkinOffice2010Blue,
  dxSkinOffice2010Silver, dxSkinOffice2013DarkGray, dxSkinOffice2013LightGray, dxSkinOffice2013White, dxSkinOffice2016Colorful,
  dxSkinOffice2016Dark, dxSkinPumpkin, dxSkinSeven, dxSkinSevenClassic, dxSkinSharp, dxSkinSharpPlus, dxSkinSilver, dxSkinSpringTime,
  dxSkinStardust, dxSkinSummer2008, dxSkinTheAsphaltWorld, dxSkinsDefaultPainters, dxSkinValentine, dxSkinVisualStudio2013Blue,
  dxSkinVisualStudio2013Dark, dxSkinVisualStudio2013Light, dxSkinVS2010, dxSkinWhiteprint, dxSkinXmas2008Blue, dxSkinscxPCPainter,
  cxCustomData, cxFilter, cxData, cxDataStorage, cxEdit, cxNavigator, Data.DB, cxDBData, cxGridLevel, cxClasses, cxGridCustomView,
  cxGridCustomTableView, cxGridTableView, cxGridDBTableView, cxGrid, FireDAC.Stan.Intf, FireDAC.Stan.Option, FireDAC.Stan.Param,
  FireDAC.Stan.Error, FireDAC.DatS, FireDAC.Phys.Intf, FireDAC.DApt.Intf, FireDAC.Stan.Async, FireDAC.DApt, FireDAC.Comp.DataSet,
  FireDAC.Comp.Client, S_Module, cxCheckBox, cxLabel, cxGridBandedTableView, cxGridDBBandedTableView, Vcl.Menus, Vcl.StdCtrls, cxButtons,
  cxContainer, cxTextEdit, cxMaskEdit, cxDropDownEdit, Vcl.ComCtrls, dxCore, cxDateUtils, cxCalendar, h_Functions, h_Formats, Vcl.ImgList,
  cxCurrencyEdit, v_Env, Vcl.ExtCtrls, dxGDIPlusClasses, visualizar_venda, h_DB, System.Generics.Collections, h_Dialogs, U_ConfNFCE,
  h_Files, cxCheckComboBox, cxDBCheckComboBox, vw_agrupar_venda_fiado;

type
  Tfrm_agrupar_vendas = class(TForm)
    gd: TcxGrid;
    lv: TcxGridLevel;
    cxButton1: TcxButton;
    cbFilter: TcxComboBox;
    dpFrom: TcxDateEdit;
    dpTo: TcxDateEdit;
    edtSearch: TcxTextEdit;
    tbvw: TcxGridTableView;
    colCheck: TcxGridColumn;
    colCod: TcxGridColumn;
    colData: TcxGridColumn;
    colCliente: TcxGridColumn;
    colTotal: TcxGridColumn;
    chkCheckUncheck: TcxCheckBox;
    lblTotal: TLabel;
    ds_vendas: TDataSource;
    sql_vendas: TFDQuery;
    sql_vendasdata: TDateField;
    sql_vendascodigo_venda: TFDAutoIncField;
    sql_vendasnome_cliente: TStringField;
    sql_vendastotal_venda: TBCDField;
    Label1: TLabel;
    Label2: TLabel;
    Label3: TLabel;
    Label4: TLabel;
    Label5: TLabel;
    lblSelecionadas: TLabel;
    cbPagamentos: TcxCheckComboBox;
    colPagamento: TcxGridColumn;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure cxButton1Click(Sender: TObject);
    procedure tbVwCustomDrawCell(Sender: TcxCustomGridTableView; ACanvas: TcxCanvas; AViewInfo: TcxGridTableDataCellViewInfo;
      var ADone: Boolean);
    procedure chkCheckUncheckPropertiesEditValueChanged(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure tbvwColumn1PropertiesEditValueChanged(Sender: TObject);
    procedure tbvwCellDblClick(Sender: TcxCustomGridTableView; ACellViewInfo: TcxGridTableDataCellViewInfo; AButton: TMouseButton;
      AShift: TShiftState; var AHandled: Boolean);
    procedure edtSearchKeyUp(Sender: TObject; var Key: Word; Shift: TShiftState);
    procedure changed(Sender: TObject);
    procedure tbvwCellClick(Sender: TcxCustomGridTableView; ACellViewInfo: TcxGridTableDataCellViewInfo; AButton: TMouseButton;
      AShift: TShiftState; var AHandled: Boolean);
    procedure cbPagamentosPropertiesEditValueChanged(Sender: TObject);
  private
    { Private declarations }
    procedure reloadVendas;
    procedure singleCheck(bCheck: Boolean);
    procedure changeCheckedValueLabel(value: extended);

  var
    _pagamentosList: TList<string>;
  public
    { Public declarations }
  end;

var
  frm_agrupar_vendas: Tfrm_agrupar_vendas;

implementation

{$R *.dfm}

procedure Tfrm_agrupar_vendas.cbPagamentosPropertiesEditValueChanged(Sender: TObject);
begin
  reloadVendas;
end;

procedure Tfrm_agrupar_vendas.changeCheckedValueLabel(value: extended);
begin
  lblSelecionadas.Caption := 'Total de Vendas selecionadas: ' + tformats.Money(value);
end;

procedure Tfrm_agrupar_vendas.changed(Sender: TObject);
begin
  reloadVendas;
end;

procedure Tfrm_agrupar_vendas.chkCheckUncheckPropertiesEditValueChanged(Sender: TObject);
  procedure changeGridCheck(bCheck: Boolean);
  var
    i: integer;
    _selecionadas: extended;
  begin
    _selecionadas := 0;

    with tbvw.DataController do
      for i := 0 to recordcount - 1 do
      begin
        values[i, colCheck.Index] := bCheck;
        if bCheck then
          _selecionadas := _selecionadas + values[i, colTotal.Index];
      end;

    chkCheckUncheck.Caption := tfunctions.IfThen(bCheck, 'Desmarcar todos', 'Marcar todos');

    changeCheckedValueLabel(_selecionadas);

  end;

begin
  changeGridCheck(chkCheckUncheck.Checked);
end;

procedure Tfrm_agrupar_vendas.cxButton1Click(Sender: TObject);

var
  i, codNewVenda: integer;
  vendasSelecionadas: TList<variant>;
  qry: TFDQuery;
  _selectedPagamento, _codV: string;

  procedure insertPagamento(cod_tipo_pagamento, tipo_pagamento: string; total_pago, valor_debitado: extended);
  begin
    TDB.ExecQuery
      ('insert into venda_pagamento(codigo_venda, cod_tipo_pagamento, tipo_pagamento, total_pago, valor_debitado) values(?, ?, ?, ?, ?)',
      [codNewVenda, cod_tipo_pagamento, tipo_pagamento, total_pago, valor_debitado]);
  end;

begin

  try
    vendasSelecionadas := TList<variant>.Create();
    vendasSelecionadas.Clear;

    with tbvw.DataController do
      for i := 0 to recordcount - 1 do
        if values[i, colCheck.Index] then
        begin
          vendasSelecionadas.Add(values[i, colCod.Index]);
        end;

    if vendasSelecionadas.Count = 0 then
      raise Exception.Create('Nenhuma venda selecionada.');

    for _codV in vendasSelecionadas.ToArray do
      TDB.ExecQuery('update venda set agrupou_venda = 1 where codigo_venda = ?', [_codV]);

    if tdialogs.wnConfirmacao('Agrupar Venda',
      slinebreak + 'Deseja emitir uma Nota Fiscal das vendas selecionadas, agrupando todos os produtos ?') then
    begin

      { criar nova venda e agrupar itens por código }

      qry := TDB.SimpleQuery('select codigo_venda from venda order by codigo_venda desc limit 1');

      if qry = nil then
        codNewVenda := 1
      else
        codNewVenda := qry.Fields[0].AsInteger + 1;

      qry := nil;

      qry := TDB.SimpleQuery
        ('select sum(valor_venda) as valor_venda, sum(acrescimo) as acrescimo, sum(desconto) as desconto, sum(total_venda) as total_venda, sum(valor_pago) as valor_pago, sum(troco) as troco from venda '
        + ' where codigo_venda in ' + TDB.GenIn(vendasSelecionadas.ToArray()));

      with qry do
      begin
        TDB.ExecQuery
          ('insert into venda(codigo_venda, data, hora, valor_venda, acrescimo, desconto, total_venda, valor_pago, troco, caixa, operador, status, agrupou_venda) '
          + 'values(?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?)', [codNewVenda, date, time, FieldByName('valor_venda').AsExtended,
          FieldByName('acrescimo').AsExtended, FieldByName('desconto').AsExtended, FieldByName('total_venda').AsExtended,
          FieldByName('valor_pago').AsExtended, FieldByName('troco').AsExtended, 1, TEnv.TUser.ID, 'ABERTA', True]);
      end;

      // Insert venda_item

      qry := TDB.SimpleQuery
        ('select vi.codigo_produto, vi.descricao, vi.unidade, sum(vi.quantidade) as QTDE, avg(vi.PRECO) as PRECO, avg(PRECO_CUSTO) as PRECO_CUSTO, sum(vi.desconto) as desconto, sum(vi.acrescimo) as acrescimo, sum(vi.PRECO_TOTAL) as PRECO_TOTAL'
        + ' from venda_item vi where vi.codigo_venda in ' + TDB.GenIn(vendasSelecionadas.ToArray()) + ' group by vi.codigo_produto');

      with qry do
      begin

        First;

        while not Eof do
        begin
          TDB.ExecQuery
            ('insert into venda_item(codigo_venda, codigo_item_venda, codigo_produto, descricao, unidade, quantidade, preco_custo, preco, acrescimo, desconto, preco_total) '
            + ' values(?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?)', [codNewVenda, RecNo, FieldByName('codigo_produto').AsInteger,
            FieldByName('descricao').asString, FieldByName('unidade').asString, FieldByName('QTDE').AsExtended,
            FieldByName('PRECO_CUSTO').AsExtended, FieldByName('PRECO').AsExtended, FieldByName('acrescimo').AsExtended,
            FieldByName('desconto').AsExtended, FieldByName('PRECO_TOTAL').AsExtended]);
          Next;
        end;

      end;

      qry := nil;



      // Insert venda_pagamento

      { Fiado }

      qry := TDB.SimpleQuery('select * from venda_pagamento vp where vp.codigo_venda in ' + TDB.GenIn(vendasSelecionadas.ToArray()) +
        ' and vp.cod_tipo_pagamento in ("100") group by vp.cod_tipo_pagamento');

      if qry <> nil then { tem fiado }
      begin

        _selectedPagamento := Tfrm_agrupar_venda_fiado.Show;

        qry := TDB.SimpleQuery
          ('select sum(vp.total_pago) as total_pago, sum(vp.valor_debitado) as valor_debitado from venda_pagamento vp where vp.codigo_venda in '
          + TDB.GenIn(vendasSelecionadas.ToArray()));

        with qry do
        begin
          insertPagamento(_selectedPagamento, TDB.SimpleQuery('select tipo_pagamento from tipo_pagamento where cod_tipo_pagamento = ?',
            [_selectedPagamento]).Fields[0].asString, FieldByName('total_pago').AsExtended, FieldByName('valor_debitado').AsExtended);
        end;
      end
      else { não tem fiado }
      begin
        qry := TDB.SimpleQuery
          ('select vp.cod_tipo_pagamento, vp.tipo_pagamento, sum(vp.total_pago) as total_pago, sum(vp.valor_debitado) as valor_debitado from venda_pagamento vp where vp.codigo_venda in '
          + TDB.GenIn(vendasSelecionadas.ToArray()) + ' group by vp.cod_tipo_pagamento');

        with qry do
        begin

          First;

          while not Eof do
          begin
            insertPagamento(FieldByName('cod_tipo_pagamento').asString, FieldByName('tipo_pagamento').asString,
              FieldByName('total_pago').AsExtended, FieldByName('valor_debitado').AsExtended);
            Next;
          end;

        end;
      end;

      qry := TDB.SimpleQuery('select valor_pago, troco, total_venda from venda where codigo_venda = ?', [codNewVenda]);

      TDB.ExecQuery('update venda set agrupou_venda = 1 where codigo_venda = ?', [codNewVenda]);

      Frm_ConfNfce := TFrm_ConfNfce.Create(nil);
      Frm_ConfNfce.InformarDadosInternos(IntToStr(codNewVenda), qry.FieldByName('valor_pago').asString, qry.FieldByName('troco').asString,
        qry.FieldByName('total_venda').asString);
      Frm_ConfNfce.FinalizarNFCE(false, '', false, 0, '', false, false);

      qry := TDB.SimpleQuery
        ('select CODIGO, caminho_xml, chave from nfce where codigo_venda = ? and status_nfce = "AUTORIZADA" order by codigo desc limit 1',
        [codNewVenda]);

      if qry <> nil then
        Frm_ConfNfce.VisualizarDanfce(qry.FieldByName('chave').asString, TFile.readAll(qry.FieldByName('caminho_xml').asString), '001', '');

      Frm_ConfNfce.free;
    end;

  except
    on e: Exception do
      tdialogs.wnalerta('Agrupar Vendas', 'Não foi possível emitir nota das vendas selecionadas:' + slinebreak + e.Message);
  end;
  reloadVendas;
end;

procedure Tfrm_agrupar_vendas.edtSearchKeyUp(Sender: TObject; var Key: Word; Shift: TShiftState);
begin
  reloadVendas;
end;

procedure Tfrm_agrupar_vendas.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  Action := cafree;
  self := nil;
end;

procedure Tfrm_agrupar_vendas.FormShow(Sender: TObject);
var
  qry, qry_aux: TFDQuery;
begin

  qry_aux := TDB.SimpleQuery('select agrupar_tipos_pagamentos from parametros_sistema');
  qry := TDB.SimpleQuery('select cod_tipo_pagamento, tipo_pagamento from tipo_pagamento');

  if qry_aux <> nil then
    if qry_aux.Fields[0].asString <> '' then
      qry := TDB.SimpleQuery('select cod_tipo_pagamento, tipo_pagamento from tipo_pagamento where cod_tipo_pagamento in ' +
        qry_aux.Fields[0].asString);

  if qry <> nil then
  begin
    _pagamentosList := TList<string>.Create;
    _pagamentosList.Clear;

    cbPagamentos.Clear;

    with qry do
    begin
      First;
      while not Eof do
      begin

        _pagamentosList.Add(FieldByName('cod_tipo_pagamento').asString);
        cbPagamentos.Properties.Items.AddCheckItem(FieldByName('cod_tipo_pagamento').asString + '-' + FieldByName('tipo_pagamento')
          .asString, FieldByName('cod_tipo_pagamento').asString);

        cbPagamentos.States[_pagamentosList.Count - 1] := cbsChecked;

        Next;
      end;
    end;
  end;

  dpFrom.date := TEnv.date.FirstDayOfMonth;
  dpTo.date := now;
  reloadVendas;

end;

procedure Tfrm_agrupar_vendas.reloadVendas;
const
  _sql = 'select v.data, v.codigo_venda, v.nome_cliente, v.total_venda from venda v ' +
    ' join venda_pagamento vp on vp.codigo_venda = v.codigo_venda ' +
    ' where v.cod_nfce = 0 and v.status = "FECHADA" and data between :pdata_inicio and :pdata_fim and v.agrupou_venda = 0 ';

  _group = ' group by v.codigo_venda';
var
  _where, _value, _in_pag, _tp_pag: string;
  i: integer;
  qry: TFDQuery;

begin

  if edtSearch.Text <> '' then
  begin
    _value := TDB.removeSqlInjection(edtSearch.Text);

    {
      0 - Cliente
      1 - Cod Venda
      2 - Total
    }

    _value := tfunctions.getIndex(cbFilter.SelectedItem, ['v.nome_cliente LIKE "%' + _value + '%"', 'v.codigo_venda like "' + _value + '%"',
      'v.total_venda like "' + _value + '%"']);

    _where := ' AND ' + _value;
  end;

  if _pagamentosList <> nil then
  begin
    for i := 0 to _pagamentosList.Count - 1 do
    begin

      if cbPagamentos.States[i] = cbsChecked then
        _in_pag := tfunctions.IfThen(_in_pag = '', '"' + _pagamentosList.Items[i] + '"', _in_pag + ',"' + _pagamentosList.Items[i] + '"');

    end;

    if _in_pag <> '' then
    begin
      _in_pag := '(' + _in_pag + ')';
      _where := ' and vp.cod_tipo_pagamento in ' + _in_pag;
    end
    else
      _where := ' and vp.cod_tipo_pagamento = "##"';

  end;

  dpFrom.ValidateEdit(false);
  dpTo.ValidateEdit(false);

  with sql_vendas do
  begin
    Close;
    sql.Clear;
    sql.Add(_sql + _where + _group);
    ParamByName('pdata_inicio').value := dpFrom.EditValue;
    ParamByName('pdata_fim').value := dpTo.EditValue;
    open;
    fetchall;
    First;
  end;

  tbvw.DataController.BeginFullUpdate;
  tbvw.DataController.recordcount := 0;

  while not sql_vendas.Eof do
  begin

    with tbvw.DataController do
    begin

      recordcount := recordcount + 1;
      values[recordcount - 1, colCheck.Index] := false; { Checkbox }
      values[recordcount - 1, colCod.Index] := sql_vendas.FieldByName('codigo_venda').AsInteger; { código da venda }
      values[recordcount - 1, colData.Index] := sql_vendas.FieldByName('data').AsDateTime; { data da venda }
      values[recordcount - 1, colCliente.Index] := sql_vendas.FieldByName('nome_cliente').asString; { Nome do cliente }

      qry := TDB.SimpleQuery('select tipo_pagamento from venda_pagamento where codigo_venda = ?',
        [sql_vendas.FieldByName('codigo_venda').AsInteger]);

      if qry <> nil then
      begin

        qry.First;
        while not qry.Eof do
        begin
          _tp_pag := VarToStr(values[recordcount - 1, colPagamento.Index]);

          _tp_pag := tfunctions.IfThen(_tp_pag = '', qry.FieldByName('tipo_pagamento').asString,
            _tp_pag + ' / ' + qry.FieldByName('tipo_pagamento').asString);

          values[recordcount - 1, colPagamento.Index] := _tp_pag;
          qry.Next;

        end;

      end;

      values[recordcount - 1, colTotal.Index] := sql_vendas.FieldByName('total_venda').AsExtended; { total da venda }

      sql_vendas.Next;
    end;

  end;

  tbvw.DataController.EndFullUpdate;
  tbvw.OptionsView.ScrollBars := ssVertical;

  lblTotal.Caption := 'Total de Vendas: ' + tformats.Money(tfunctions.sumField(sql_vendas, 'total_venda'));
  changeCheckedValueLabel(0);

end;

procedure Tfrm_agrupar_vendas.singleCheck(bCheck: Boolean);
var
  i: integer;
  _selecionadas: extended;
begin

  _selecionadas := 0;

  with tbvw.DataController do
    for i := 0 to recordcount - 1 do
    begin
      if values[i, colCod.Index] = colCod.EditValue then
        values[i, colCheck.Index] := not bCheck;

      if values[i, colCheck.Index] then
        _selecionadas := _selecionadas + values[i, colTotal.Index];

    end;

  changeCheckedValueLabel(_selecionadas);

end;

procedure Tfrm_agrupar_vendas.tbvwCellClick(Sender: TcxCustomGridTableView; ACellViewInfo: TcxGridTableDataCellViewInfo;
  AButton: TMouseButton; AShift: TShiftState; var AHandled: Boolean);
begin

  singleCheck(tbvw.DataController.values[tbvw.DataController.FocusedRecordIndex, colCheck.Index]);

  abort;

end;

procedure Tfrm_agrupar_vendas.tbvwCellDblClick(Sender: TcxCustomGridTableView; ACellViewInfo: TcxGridTableDataCellViewInfo;
  AButton: TMouseButton; AShift: TShiftState; var AHandled: Boolean);
begin
  if colCod.EditValue <> 0 then
  begin
    frm_visualizar_venda := Tfrm_visualizar_venda.Create(nil, colCod.EditValue);
    frm_visualizar_venda.ShowModal;
    frm_visualizar_venda.free;
    reloadVendas;
  end;
end;

procedure Tfrm_agrupar_vendas.tbvwColumn1PropertiesEditValueChanged(Sender: TObject);
begin

  singleCheck(StrToBool(colCheck.EditValue));

  abort;

end;

procedure Tfrm_agrupar_vendas.tbVwCustomDrawCell(Sender: TcxCustomGridTableView; ACanvas: TcxCanvas;
  AViewInfo: TcxGridTableDataCellViewInfo; var ADone: Boolean);
begin
  tfunctions.StripedGrid(ACanvas, AViewInfo);
end;

end.
