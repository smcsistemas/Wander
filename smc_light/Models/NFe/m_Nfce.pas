//Verificado automaticamente em 16/06/2020 09:28
unit m_Nfce;

interface

uses sysutils, h_Formats;

type
  TNfce = class

  private
    Nfce_Codigo: integer;
    Nfce_Data_Emissao: tdate;
    Nfce_Hora_Emissao: ttime;
    Nfce_Data_Transmissao: tdate;
    Nfce_Hora_Transmissao: ttime;
    Nfce_Codigo_Venda: integer;
    Nfce_Valor_Nfce: extended;
    Nfce_Acrescimos_Nfce: extended;
    Nfce_Descontos_Nfce: extended;
    Nfce_Total_Nfce: extended;
    Nfce_Valor_Pago: extended;
    Nfce_Troco: extended;
    Nfce_Lote: string;
    Nfce_Serie: integer;
    Nfce_Chave: integer;
    Nfce_Caminho_Xml: string;
    Nfce_Tipo_Emissao: string;
    Nfce_Status_Nfce: string;
    Nfce_Retorno_Nfce: string;
    Nfce_Erro_Rotina: string;

    function getNfce_Codigo: integer;
    function getNfce_Data_Emissao: tdate;
    function getNfce_Hora_Emissao: ttime;
    function getNfce_Data_Transmissao: tdate;
    function getNfce_Hora_Transmissao: ttime;
    function getNfce_Codigo_Venda: integer;
    function getNfce_Valor_Nfce: extended;
    function getNfce_Acrescimos_Nfce: extended;
    function getNfce_Descontos_Nfce: extended;
    function getNfce_Total_Nfce: extended;
    function getNfce_Valor_Pago: extended;
    function getNfce_Troco: extended;
    function getNfce_Lote: string;
    function getNfce_Serie: integer;
    function getNfce_Chave: integer;
    function getNfce_Caminho_Xml: string;
    function getNfce_Tipo_Emissao: string;
    function getNfce_Status_Nfce: string;
    function getNfce_Retorno_Nfce: string;
    function getNfce_Erro_Rotina: string;

    procedure setNfce_Codigo(value: integer);
    procedure setNfce_Data_Emissao(value: tdate);
    procedure setNfce_Hora_Emissao(value: ttime);
    procedure setNfce_Data_Transmissao(value: tdate);
    procedure setNfce_Hora_Transmissao(value: ttime);
    procedure setNfce_Codigo_Venda(value: integer);
    procedure setNfce_Valor_Nfce(value: extended);
    procedure setNfce_Acrescimos_Nfce(value: extended);
    procedure setNfce_Descontos_Nfce(value: extended);
    procedure setNfce_Total_Nfce(value: extended);
    procedure setNfce_Valor_Pago(value: extended);
    procedure setNfce_Troco(value: extended);
    procedure setNfce_Lote(value: string);
    procedure setNfce_Serie(value: integer);
    procedure setNfce_Chave(value: integer);
    procedure setNfce_Caminho_Xml(value: string);
    procedure setNfce_Tipo_Emissao(value: string);
    procedure setNfce_Status_Nfce(value: string);
    procedure setNfce_Retorno_Nfce(value: string);
    procedure setNfce_Erro_Rotina(value: string);

    procedure ClearData;

  public
    property CODIGO: integer read getNfce_Codigo write setNfce_Codigo;
    property DATA_EMISSAO: tdate read getNfce_Data_Emissao write setNfce_Data_Emissao;
    property HORA_EMISSAO: ttime read getNfce_Hora_Emissao write setNfce_Hora_Emissao;
    property DATA_TRANSMISSAO: tdate read getNfce_Data_Transmissao write setNfce_Data_Transmissao;
    property HORA_TRANSMISSAO: ttime read getNfce_Hora_Transmissao write setNfce_Hora_Transmissao;
    property CODIGO_VENDA: integer read getNfce_Codigo_Venda write setNfce_Codigo_Venda;
    property VALOR_NFCE: extended read getNfce_Valor_Nfce write setNfce_Valor_Nfce;
    property ACRESCIMOS_NFCE: extended read getNfce_Acrescimos_Nfce write setNfce_Acrescimos_Nfce;
    property DESCONTOS_NFCE: extended read getNfce_Descontos_Nfce write setNfce_Descontos_Nfce;
    property TOTAL_NFCE: extended read getNfce_Total_Nfce write setNfce_Total_Nfce;
    property VALOR_PAGO: extended read getNfce_Valor_Pago write setNfce_Valor_Pago;
    property TROCO: extended read getNfce_Troco write setNfce_Troco;
    property LOTE: STRING read getNfce_Lote write setNfce_Lote;
    property SERIE: integer read getNfce_Serie write setNfce_Serie;
    property CHAVE: integer read getNfce_Chave write setNfce_Chave;
    property CAMINHO_XML: STRING read getNfce_Caminho_Xml write setNfce_Caminho_Xml;
    property TIPO_EMISSAO: STRING read getNfce_Tipo_Emissao write setNfce_Tipo_Emissao;
    property STATUS_NFCE: STRING read getNfce_Status_Nfce write setNfce_Status_Nfce;
    property RETORNO_NFCE: STRING read getNfce_Retorno_Nfce write setNfce_Retorno_Nfce;
    property ERRO_ROTINA: STRING read getNfce_Erro_Rotina write setNfce_Erro_Rotina;

    procedure RecuperarDadosXml;

  end;

implementation

uses h_Checks;

procedure TNfce.ClearData;
begin
  Nfce_Codigo := 0;
  Nfce_Data_Emissao := 0;
  Nfce_Hora_Emissao := 0;
  Nfce_Data_Transmissao := 0;
  Nfce_Hora_Transmissao := 0;
  Nfce_Codigo_Venda := 0;
  Nfce_Valor_Nfce := 0;
  Nfce_Acrescimos_Nfce := 0;
  Nfce_Descontos_Nfce := 0;
  Nfce_Total_Nfce := 0;
  Nfce_Valor_Pago := 0;
  Nfce_Troco := 0;
  Nfce_Lote := '';
  Nfce_Serie := 0;
  Nfce_Chave := 0;
  Nfce_Caminho_Xml := '';
  Nfce_Tipo_Emissao := '';
  Nfce_Status_Nfce := '';
  Nfce_Retorno_Nfce := '';
  Nfce_Erro_Rotina := '';
end;

function TNfce.getNfce_Acrescimos_Nfce: extended;
begin
  result := self.Nfce_Acrescimos_Nfce
end;

function TNfce.getNfce_Caminho_Xml: string;
begin
  result := self.Nfce_Caminho_Xml
end;

function TNfce.getNfce_Chave: integer;
begin
  result := self.Nfce_Chave
end;

function TNfce.getNfce_Codigo: integer;
begin
  result := self.Nfce_Codigo
end;

function TNfce.getNfce_Codigo_Venda: integer;
begin
  result := self.Nfce_Codigo_Venda
end;

function TNfce.getNfce_Data_Emissao: tdate;
begin
  result := self.Nfce_Data_Emissao
end;

function TNfce.getNfce_Data_Transmissao: tdate;
begin
  result := self.Nfce_Data_Transmissao
end;

function TNfce.getNfce_Descontos_Nfce: extended;
begin
  result := self.Nfce_Descontos_Nfce
end;

function TNfce.getNfce_Erro_Rotina: string;
begin
  result := self.Nfce_Erro_Rotina
end;

function TNfce.getNfce_Hora_Emissao: ttime;
begin
  result := self.Nfce_Hora_Emissao
end;

function TNfce.getNfce_Hora_Transmissao: ttime;
begin
  result := self.Nfce_Hora_Transmissao
end;

function TNfce.getNfce_Lote: string;
begin
  result := self.Nfce_Lote
end;

function TNfce.getNfce_Retorno_Nfce: string;
begin
  result := self.Nfce_Retorno_Nfce
end;

function TNfce.getNfce_Serie: integer;
begin
  result := self.Nfce_Serie
end;

function TNfce.getNfce_Status_Nfce: string;
begin
  result := self.Nfce_Status_Nfce
end;

function TNfce.getNfce_Tipo_Emissao: string;
begin
  result := self.Nfce_Tipo_Emissao
end;

function TNfce.getNfce_Total_Nfce: extended;
begin
  result := self.Nfce_Total_Nfce
end;

function TNfce.getNfce_Troco: extended;
begin
  result := self.Nfce_Troco
end;

function TNfce.getNfce_Valor_Nfce: extended;
begin
  result := self.Nfce_Valor_Nfce
end;

function TNfce.getNfce_Valor_Pago: extended;
begin
  result := self.Nfce_Valor_Pago
end;

procedure TNfce.RecuperarDadosXml;
// var
// arr: TArray<string>;
// xmlit: string;
// qry: tfdquery;
// codvenda: integer;
// dh: tdatetime;
begin
  // arr := SearchFiles(edt_notas.text + '\', '*.xml');
  // if length(arr) > 0 then
  // begin
  // Frm_ConfNFCE := tFrm_ConfNFCE.Create(nil);
  // if Frm_ConfNFCE.configurarcomponente then
  // begin
  // btn2.Caption := 'corrigindo ... ';
  // for xmlit in arr do
  // begin
  // if xmlit <> '' then
  // begin
  // try
  // Frm_ConfNFCE.spdNFCeDataSets := Frm_ConfNFCE.spdNFCe.ConverteXmlparaDataSet(edt_notas.text + '\' + xmlit);
  // with Frm_ConfNFCE.spdNFCeDataSets do
  // begin
  // dh := TNF_Formats.Date(campo('dhEmi_B09').asString);
  // tdb.execquery('insert into venda(data, valor_venda, acrescimo, desconto, total_venda, status) values (?,?, ?, ?, ?, ?)',
  // [dh, TNF_Formats.Decimal(campo('vProd_W07').asString), TNF_Formats.Decimal(campo('vDesc_W10').asString), TNF_Formats.Decimal(campo('vOutro_W15').asString),
  // TNF_Formats.Decimal(campo('vNF_W16').asString), 'FECHADA']);
  //
  // qry := tdb.simplequery('select codigo_venda from venda order by codigo_venda desc limit 1');
  //
  // if qry <> nil then
  // begin
  // codvenda := qry.Fields[0].AsInteger;
  //
  // h.First;
  //
  // while not h.Eof do
  // begin
  //
  // tdb.execquery('insert into venda_item(codigo_venda, codigo_item_venda, codigo_produto, descricao, unidade, quantidade, preco, acrescimo, desconto, preco_total) '
  // + ' values (?,?,?,?,?,?,?,?,?,?)', [codvenda, h.Fieldbyname('nItem_H02').AsInteger, I.Fieldbyname('cProd_I02').AsInteger, I.Fieldbyname('xProd_I04').asString,
  // I.Fieldbyname('uCom_I09').asString, TNF_Formats.Decimal(I.Fieldbyname('qCom_I10').asString), TNF_Formats.Decimal(I.Fieldbyname('vUnCom_I10a').asString),
  // TNF_Formats.Decimal(I.Fieldbyname('vOutro_I17a').asString), TNF_Formats.Decimal(I.Fieldbyname('vDesc_I17').asString),
  // TNF_Formats.Decimal(I.Fieldbyname('vProd_I11').asString) - TNF_Formats.Decimal(I.Fieldbyname('vDesc_I17').asString) +
  // TNF_Formats.Decimal(I.Fieldbyname('vOutro_I17a').asString)]);
  //
  // h.Next;
  //
  // end;
  //
  // FindDataSet('YA').First;
  //
  // while not FindDataSet('YA').Eof do
  // begin
  //
  // tdb.execquery('insert into venda_pagamento(codigo_venda,cod_tipo_pagamento, tipo_pagamento, total_pago, valor_debitado) values (?,?,?,?,?)',
  // [codvenda, FindDataSet('YA').Fieldbyname('tPag_YA02').asString, TFunctions.ifthen(FindDataSet('YA').Fieldbyname('tPag_YA02').asString,
  // ['01', '02', '03', '04', '05', '10', '11', '12', '99', '100', '06'], ['Dinheiro', 'Cheque', 'Cartão de Crédito', 'Cartão de Débito', 'Crédito Loja',
  // 'Vale Alimentação', 'Vale Refeição', 'Vale Presente', 'Vale Combustível', 'Outros', 'Fiado', 'Promissória']),
  // TNF_Formats.Decimal(FindDataSet('YA').Fieldbyname('vPag_YA03').asString), TNF_Formats.Decimal(FindDataSet('YA').Fieldbyname('vPag_YA03').asString)]);
  //
  // FindDataSet('YA').Next;
  //
  // end;
  //
  // tdb.execquery
  // ('insert into nfce(data_emissao, hora_emissao, data_transmissao, hora_transmissao, codigo_venda, valor_nfce, acrescimos_nfce, descontos_nfce, total_nfce, valor_pago, lote, serie, chave, caminho_xml, tipo_emissao, status_nfce)'
  // + ' values (?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?)', [dh, dh, dh, dh, codvenda, TNF_Formats.Decimal(campo('vProd_W07').asString),
  // TNF_Formats.Decimal(campo('vOutro_W15').asString), TNF_Formats.Decimal(campo('vDesc_W10').asString), TNF_Formats.Decimal(campo('vNF_W16').asString),
  // TNF_Formats.Decimal(campo('vNF_W16').asString), '001', '1', TFunctions.replace(campo('Id_A03').asString, 'NFe'),
  // 'D:\\SMC_LIGHT\\Notas_Fiscais\\NFCe\\072017\\Autorizadas\\' + TFunctions.replace(campo('Id_A03').asString, 'NFe') + '-nfce.xml', 'NORMAL', 'AUTORIZADA']);
  //
  // end;
  //
  // end;
  // except
  // on e: exception do
  // begin
  // wnerro('', e.message + slinebreak + 'arquivo:' + xmlit)
  // end;
  // end;
  // end;
  // end;
  // btn2.Caption := 'ok';
  // end;
  //
  // end;
end;

procedure TNfce.setNfce_Acrescimos_Nfce(value: extended);
begin
  if Tchecks.negative(value) then
    raise exception.Create('Valor do acréscimo não pode ser negativo.');
  self.Nfce_Acrescimos_Nfce := value
end;

procedure TNfce.setNfce_Caminho_Xml(value: string);
begin
  if value = '' then
    raise exception.Create('Caminho da Nfce não pode está em branco.');
  self.Nfce_Caminho_Xml := value
end;

procedure TNfce.setNfce_Chave(value: integer);
begin
  if length(inttostr(value)) <> 44 then
    raise exception.Create('Chave da Nfce não contém 44 dígitos.');

  self.Nfce_Chave := value
end;

procedure TNfce.setNfce_Codigo(value: integer);
begin
  if Tchecks.negative(value) then
    raise exception.Create('Codigo da Nfce não pode ser negativo.');
  self.Nfce_Codigo := value
end;

procedure TNfce.setNfce_Codigo_Venda(value: integer);
begin
  if Tchecks.LessEquals(value, 0) then
    raise exception.Create('Codigo da Venda deve ser maior ou igual a 1.');
  self.Nfce_Codigo_Venda := value
end;

procedure TNfce.setNfce_Data_Emissao(value: tdate);
begin
  if Tchecks.zero(value) then
    raise exception.Create('Data de emissão não pode está zerada.');
  self.Nfce_Data_Emissao := value
end;

procedure TNfce.setNfce_Data_Transmissao(value: tdate);
begin
  if Tchecks.zero(value) then
    raise exception.Create('Data de transmissão não pode está zerada.');
  self.Nfce_Data_Transmissao := value
end;

procedure TNfce.setNfce_Descontos_Nfce(value: extended);
begin
  if Tchecks.negative(value) then
    raise exception.Create('Desconto da Nfce não pode ser negativo.');
  self.Nfce_Descontos_Nfce := value
end;

procedure TNfce.setNfce_Erro_Rotina(value: string);
begin
  self.Nfce_Erro_Rotina := value
end;

procedure TNfce.setNfce_Hora_Emissao(value: ttime);
begin
  self.Nfce_Hora_Emissao := value
end;

procedure TNfce.setNfce_Hora_Transmissao(value: ttime);
begin
  self.Nfce_Hora_Transmissao := value
end;

procedure TNfce.setNfce_Lote(value: string);
begin
  self.Nfce_Lote := value
end;

procedure TNfce.setNfce_Retorno_Nfce(value: string);
begin
  self.Nfce_Retorno_Nfce := value
end;

procedure TNfce.setNfce_Serie(value: integer);
begin
  if Tchecks.zero(value) then
    raise exception.Create('Error Message');

  self.Nfce_Serie := value
end;

procedure TNfce.setNfce_Status_Nfce(value: string);
begin
  self.Nfce_Status_Nfce := value
end;

procedure TNfce.setNfce_Tipo_Emissao(value: string);
begin
  self.Nfce_Tipo_Emissao := value
end;

procedure TNfce.setNfce_Total_Nfce(value: extended);
begin
  if Tchecks.negative(value) then
    raise exception.Create(Format('Valor total da NFC-e %d não pode ser negativo.', [self.CODIGO]));

  self.Nfce_Total_Nfce := TFormats.coin(value)
end;

procedure TNfce.setNfce_Troco(value: extended);
begin
  if Tchecks.negative(value) then
    self.Nfce_Troco := value
end;

procedure TNfce.setNfce_Valor_Nfce(value: extended);
begin
  if Tchecks.negative(value) then
    self.Nfce_Valor_Nfce := value
end;

procedure TNfce.setNfce_Valor_Pago(value: extended);
begin
  if Tchecks.negative(value) then
    self.Nfce_Valor_Pago := value
end;

end.
