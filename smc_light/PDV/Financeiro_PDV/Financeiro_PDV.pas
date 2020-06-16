//Verificado automaticamente em 16/06/2020 09:28
{ v 21.11.16 15:53 }
unit Financeiro_PDV;

interface

uses
  Winapi.Windows, System.SysUtils, System.Variants,
  System.Classes,
  Vcl.Controls, Vcl.Forms,

  cxGroupBox, Vcl.StdCtrls,
  Vcl.Menus, cxCheckBox, cxButtons, Vcl.Grids, Vcl.DBGrids,

  FireDAC.Stan.Param,
  Data.DB,
  FireDAC.Comp.DataSet, FireDAC.Comp.Client,

  cxDBLookupComboBox, Math, vw_consulta_generica,
  S_Module, cxGraphics, cxControls, cxLookAndFeels, cxLookAndFeelPainters, cxContainer, cxEdit, dxSkinsCore, dxSkinBlack, dxSkinBlue,
  dxSkinBlueprint, dxSkinCaramel, dxSkinCoffee,
  dxSkinDarkRoom,
  dxSkinDarkSide, dxSkinDevExpressDarkStyle, dxSkinDevExpressStyle, dxSkinFoggy, dxSkinGlassOceans, dxSkinHighContrast, dxSkiniMaginary,
  dxSkinLilian, dxSkinLiquidSky,
  dxSkinLondonLiquidSky,
  dxSkinMcSkin, dxSkinMetropolis, dxSkinMetropolisDark, dxSkinMoneyTwins, dxSkinOffice2007Black, dxSkinOffice2007Blue,
  dxSkinOffice2007Green, dxSkinOffice2007Pink,
  dxSkinOffice2007Silver,
  dxSkinOffice2010Black, dxSkinOffice2010Blue, dxSkinOffice2010Silver, dxSkinOffice2013DarkGray, dxSkinOffice2013LightGray,
  dxSkinOffice2013White, dxSkinOffice2016Colorful,
  dxSkinOffice2016Dark,
  dxSkinPumpkin, dxSkinSeven, dxSkinSevenClassic, dxSkinSharp, dxSkinSharpPlus, dxSkinSilver, dxSkinSpringTime, dxSkinStardust,
  dxSkinSummer2008, dxSkinTheAsphaltWorld,
  dxSkinsDefaultPainters,
  dxSkinValentine, dxSkinVisualStudio2013Blue, dxSkinVisualStudio2013Dark, dxSkinVisualStudio2013Light, dxSkinVS2010, dxSkinWhiteprint,
  dxSkinXmas2008Blue, FireDAC.Stan.Intf,
  FireDAC.Stan.Option,
  FireDAC.Stan.Error, FireDAC.DatS, FireDAC.Phys.Intf, FireDAC.DApt.Intf, FireDAC.Stan.Async, FireDAC.DApt, cxTextEdit, cxMaskEdit,
  cxDropDownEdit, cxLookupEdit, cxDBLookupEdit,
  S_Parametros_Venda, h_DB, vw_convenio, relatorios;

type
  TFrm_Recebimento = class(TForm)
    DS_venda_pagamento: TDataSource;
    SQL_venda_pagamento: TFDQuery;
    SQL_Venda_Item: TFDQuery;
    SQL_venda_pagamentoCODIGO: TFDAutoIncField;
    SQL_venda_pagamentoCODIGO_VENDA: TIntegerField;
    SQL_venda_pagamentoCOD_TIPO_PAGAMENTO: TStringField;
    SQL_NFCE: TFDQuery;
    SQL_TIPO_PAGAMENTO: TFDQuery;
    DS_TIPO_PAGAMENTO: TDataSource;
    SQL_TIPO_PAGAMENTOCODIGO: TFDAutoIncField;
    SQL_TIPO_PAGAMENTOCOD_TIPO_PAGAMENTO: TStringField;
    SQL_TIPO_PAGAMENTOTIPO_PAGAMENTO: TStringField;
    popGrid: TPopupMenu;
    DeletarPagamento1: TMenuItem;
    SQL_venda_pagamentoTIPO_PAGAMENTO: TStringField;
    SQL_venda_pagamentoTOTAL_PAGO: TBCDField;
    SQL_venda_pagamentoVALOR_DEBITADO: TBCDField;
    SQL_NFCECODIGO: TFDAutoIncField;
    SQL_NFCECAIXA: TStringField;
    SQL_NFCEOPERADOR: TStringField;
    SQL_NFCECLIENTE_NOME: TStringField;
    SQL_NFCECLIENTE_CPF: TStringField;
    SQL_NFCECODIGO_VENDA: TStringField;
    SQL_NFCEVALOR_NFCE: TBCDField;
    SQL_NFCEACRESCIMOS_NFCE: TBCDField;
    SQL_NFCEDESCONTOS_NFCE: TBCDField;
    SQL_NFCETOTAL_NFCE: TBCDField;
    SQL_NFCEVALOR_PAGO: TBCDField;
    SQL_NFCETROCO: TBCDField;
    SQL_NFCELOTE: TStringField;
    SQL_NFCESERIE: TStringField;
    SQL_NFCECHAVE: TStringField;
    SQL_NFCECAMINHO_XML: TStringField;
    SQL_NFCETIPO_EMISSAO: TStringField;
    SQL_NFCESTATUS_NFCE: TStringField;
    SQL_NFCEERRO_ROTINA: TStringField;
    GroupBox2: TGroupBox;
    Label17: TLabel;
    Label7: TLabel;
    GroupBox1: TGroupBox;
    Label1: TLabel;
    Label3: TLabel;
    edt_valor: TEdit;
    DBGrid1: TDBGrid;
    GroupBox4: TGroupBox;
    Label4: TLabel;
    Label14: TLabel;
    Label9: TLabel;
    Label5: TLabel;
    lbl_venda: TLabel;
    lbl_operador: TLabel;
    lbl_cliente_cpf: TLabel;
    lbl_cliente_nome: TLabel;
    Label22: TLabel;
    lbl_caixa: TLabel;
    GroupBox3: TGroupBox;
    Label16: TLabel;
    Label15: TLabel;
    Label12: TLabel;
    edt_pago: TEdit;
    cxGroupBox2: TcxGroupBox;
    cxGroupBox4: TcxGroupBox;
    edt_devido: TEdit;
    cxGroupBox1: TcxGroupBox;
    edt_troco: TEdit;
    GroupBox5: TGroupBox;
    Label13: TLabel;
    Label2: TLabel;
    Label11: TLabel;
    Label18: TLabel;
    cxGroupBox6: TcxGroupBox;
    edt_valor_venda: TEdit;
    edt_desconto: TEdit;
    D_Dinheiro: TcxCheckBox;
    D_Porcentagem: TcxCheckBox;
    A_dinheiro: TcxCheckBox;
    A_porcentagem: TcxCheckBox;
    edt_acrescimo: TEdit;
    edt_total: TEdit;
    cxGroupBox7: TcxGroupBox;
    cxGroupBox8: TcxGroupBox;
    cxGroupBox3: TcxGroupBox;
    cxGroupBox5: TcxGroupBox;
    btn_finalizar: TcxButton;
    btnSair: TcxButton;
    SQL_VENDA: TFDQuery;
    SQL_VENDACODIGO_VENDA: TIntegerField;
    SQL_VENDAOPERADOR: TStringField;
    SQL_VENDACAIXA: TStringField;
    SQL_VENDACPF_CLIENTE: TStringField;
    SQL_VENDANOME_CLIENTE: TStringField;
    SQL_VENDACODIGO_CLIENTE: TIntegerField;
    SQL_VENDAVENDA_FATURADA: TStringField;
    SQL_VENDAVALOR_VENDA: TBCDField;
    SQL_VENDAACRESCIMO: TBCDField;
    SQL_VENDADESCONTO: TBCDField;
    SQL_VENDATOTAL_VENDA: TBCDField;
    SQL_VENDATROCO: TBCDField;
    SQL_VENDASTATUS: TStringField;
    SQL_VENDAVALOR_PAGO: TBCDField;
    SQL_NFCERETORNO_NFCE: TStringField;
    SQL_NFCEDATA_EMISSAO: TDateField;
    SQL_NFCEHORA_EMISSAO: TTimeField;
    SQL_NFCEDATA_TRANSMISSAO: TDateField;
    SQL_NFCEHORA_TRANSMISSAO: TTimeField;
    SQL_VENDADATA: TDateField;
    SQL_VENDAHORA: TTimeField;
    SQL_VENDAIE_CLIENTE: TStringField;
    Label6: TLabel;
    lbl_vendedor: TLabel;
    Label10: TLabel;
    lbl_telefone: TLabel;
    SQL_NFCECLIENTE_IE: TStringField;
    SQL_NFCECLIENTE_TELEFONE: TStringField;
    SQL_VENDACOD_NFCE: TStringField;
    dbTipoPagamento: TcxLookupComboBox;
    edtCodPag: TEdit;
    edtPagDesc: TEdit;
    SQL_VENDATELEFONE_CLIENTE: TStringField;
    SQL_VENDARUA_CLIENTE: TStringField;
    SQL_VENDANUMERO_CLIENTE: TStringField;
    SQL_VENDABAIRRO_CLIENTE: TStringField;
    SQL_VENDACOD_VENDEDOR: TIntegerField;
    SQL_VENDAconveniado_id: TIntegerField;
    SQL_VENDAcomanda: TIntegerField;
    SQL_VENDAagrupou_venda: TBooleanField;
    SQL_VENDAIdCaixa: TIntegerField;
    SQL_VENDASTATUSNFe: TIntegerField;
    SQL_VENDANOTAFISCAL: TStringField;
    SQL_VENDAVENDA_TPMOV: TStringField;
    SQL_VENDAvenda_natureza_operacao: TIntegerField;
    SQL_VENDAvenda_tipo: TIntegerField;
    SQL_VENDAPED_NFREFERENCIA_PRODUTOR_RURAL: TIntegerField;
    SQL_VENDAPED_NFREFERENCIA_UF: TIntegerField;
    SQL_VENDAPED_NFREFERENCIA_DTEMISSAO: TDateTimeField;
    SQL_VENDAPED_NFREFERENCIA_CNPJ: TStringField;
    SQL_VENDAPED_NFREFERENCIA_CPF: TStringField;
    SQL_VENDAPED_NFREFERENCIA_IE: TStringField;
    SQL_VENDAPED_NFREFERENCIA_MODELO: TIntegerField;
    SQL_VENDAPED_NFREFERENCIA_SERIE: TIntegerField;
    SQL_VENDAPED_NFREFERENCIA_REFCTE: TStringField;
    SQL_VENDAPED_NFREFERENCIA_ECF_NECF: TStringField;
    SQL_VENDAPED_NFREFERENCIA_ECF_Modelo: TIntegerField;
    SQL_VENDAPED_NFREFERENCIA_ECF_NCOO: TStringField;
    SQL_VENDANFe_Veiculo_tpOp: TIntegerField;
    SQL_VENDATransportador: TIntegerField;
    SQL_VENDATransportador_Veiculo: TIntegerField;
    SQL_VENDANFe_QVOL: TIntegerField;
    SQL_VENDANFe_ESP: TStringField;
    SQL_VENDANFe_MARCA: TStringField;
    SQL_VENDANFe_NVOL: TStringField;
    SQL_VENDANFe_PESOL: TBCDField;
    SQL_VENDANFe_PESOB: TBCDField;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure cxDBTextEdit2Exit(Sender: TObject);
    procedure FormKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
    procedure btnSairClick(Sender: TObject);
    procedure edt_acrescimoKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
    procedure edt_descontoKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
    procedure A_dinheiroPropertiesChange(Sender: TObject);
    procedure A_porcentagemPropertiesChange(Sender: TObject);
    procedure edt_descontoEnter(Sender: TObject);
    procedure edt_acrescimoEnter(Sender: TObject);
    Procedure CalcularDescontoAcrescimo;
    procedure btn_finalizarClick(Sender: TObject);
    procedure dbTipoPagamentoKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
    procedure D_DinheiroPropertiesChange(Sender: TObject);
    procedure D_PorcentagemPropertiesChange(Sender: TObject);
    procedure DBGrid1DrawColumnCell(Sender: TObject; const Rect: TRect; DataCol: Integer; Column: TColumn; State: TGridDrawState);
    procedure DBGrid1KeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
    procedure DeletarPagamento;
    procedure DeletarPagamento1Click(Sender: TObject);
    procedure DeletarPagamentos;
    procedure edt_valorExit(Sender: TObject);
    procedure edt_descontoExit(Sender: TObject);
    procedure edt_acrescimoExit(Sender: TObject);
    procedure edt_descontoKeyPress(Sender: TObject; var Key: Char);
    procedure edt_acrescimoKeyPress(Sender: TObject; var Key: Char);
    procedure edt_valorKeyPress(Sender: TObject; var Key: Char);
    procedure ListarPagamentos;
    procedure PadronizarLayout;
    procedure Finalizacao;
    procedure InserirPagamento;
    procedure FecharForm;
    procedure edt_valorKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
    procedure edt_valorMouseEnter(Sender: TObject);
    procedure edt_valorClick(Sender: TObject);
    procedure edtCodPagKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
    procedure ConsultarPagamento;
    procedure edtCodPagKeyPress(Sender: TObject; var Key: Char);
    procedure edtCodPagEnter(Sender: TObject);
    procedure edtCodPagClick(Sender: TObject);
    procedure FormKeyPress(Sender: TObject; var Key: Char);
    procedure FormShow(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure PreventClick(Sender: TObject);

  private

  public
    { Public declarations }
  end;

var
  Frm_Recebimento: TFrm_Recebimento;
  Qtde_Itens: Integer;

implementation

{$R *.dfm}

uses vw_pdv, U_ConfNFCE, u_funcoes, c_Globals;

procedure TFrm_Recebimento.A_dinheiroPropertiesChange(Sender: TObject);
begin
  u_funcoes.AlteraChecks(A_dinheiro, [A_porcentagem]);
end;

procedure TFrm_Recebimento.A_porcentagemPropertiesChange(Sender: TObject);
begin
  u_funcoes.AlteraChecks(A_porcentagem, [A_dinheiro]);
end;

procedure TFrm_Recebimento.CalcularDescontoAcrescimo;
var
  Desconto, Acrescimo, Total, Troco, ValorPagoTotal, ValorPagoLast, Devido, DebitadoTotal, DebitadoLast, DevidoLast: Extended;
begin
  try
    Total := StrToFloat(edt_valor_venda.Text);
    if D_Dinheiro.Checked = True then
      Desconto := StrToFloat(edt_desconto.Text);
    if D_Porcentagem.Checked = True then
      Desconto := (StrToFloat(edt_desconto.Text) / 100) * StrToFloat(edt_valor_venda.Text);
    if Desconto >= Total then
    begin
      WnAlerta('Desconto Venda', 'O valor do desconto não pode ser maior ou igual ao valor da venda');
      exit;
    end
    else
    begin
      if A_dinheiro.Checked = True then
        Acrescimo := StrToFloat(edt_acrescimo.Text);
      if A_porcentagem.Checked = True then
        Acrescimo := (StrToFloat(edt_acrescimo.Text) / 100) * StrToFloat(edt_valor_venda.Text);
      edt_acrescimo.Text := FormatFloat('0.00', StrToFloat(edt_acrescimo.Text));
      edt_desconto.Text := FormatFloat('0.00', StrToFloat(edt_desconto.Text));
      Total := Total + Acrescimo - Desconto;
      ValorPagoTotal := StrToFloat(edt_pago.Text);
      with SQL_venda_pagamento do
      begin
        close;
        ParamByName('pcodigo').Value := lbl_venda.Caption;
        open;
        First;
        while not Eof do
        begin
          DebitadoTotal := DebitadoTotal + FieldByName('VALOR_DEBITADO').Value;
          Next;
        end;
        DebitadoLast := SQL_venda_pagamentoVALOR_DEBITADO.Value;
        ValorPagoLast := SQL_venda_pagamentoTOTAL_PAGO.Value;
      end;
      DevidoLast := Total - (ValorPagoTotal - ValorPagoLast);
      if ValorPagoLast > DevidoLast then
        if DevidoLast < 0 then
          DebitadoLast := 0
        else
          DebitadoLast := DevidoLast
      else
        DebitadoLast := ValorPagoLast;
      if (DebitadoTotal <> 0) and (ValorPagoTotal <> 0) then
      begin
        with SQL_venda_pagamento do
        begin
          close;
          ParamByName('pcodigo').Value := lbl_venda.Caption;
          open;
          Last;
          Edit;
          FieldByName('VALOR_DEBITADO').Value := DebitadoLast;
          post;
        end;
      end;
      Devido := Total - ValorPagoTotal;
      Troco := ValorPagoTotal - Total;
      if Troco > 0 then
        edt_troco.Text := FormatFloat('0.00', Troco) // Edit troco
      else
        edt_troco.Text := '0,00'; // Edit troco
      if Devido > 0 then
      begin
        edt_devido.Text := FormatFloat('0.00', Devido); // Edit Devido
        if dbTipoPagamento.Visible then
        begin
          if not dbTipoPagamento.enabled then
            dbTipoPagamento.enabled := True;
          dbTipoPagamento.setFocus;
        end;
        if edtCodPag.Visible then
        begin
          if not edtCodPag.enabled then
            edtCodPag.enabled := True;
          edtCodPag.setFocus;
        end;
        if not edt_valor.enabled then
          edt_valor.enabled := True;
        btn_finalizar.enabled := false;
      end
      else
        edt_devido.Text := '0,00'; // Edit Devido
      edt_total.Text := FormatFloat('0.00', Total);
      if ValorPagoTotal < Total then
      begin
        edt_valor.Text := FormatFloat('0.00', Devido);
        if not edt_valor.enabled then
          edt_valor.enabled := false;
        if not btn_finalizar.enabled then
          btn_finalizar.enabled := false;
      end;
      with SQL_VENDA do
      begin
        close;
        ParamByName('pcodigo').Value := lbl_venda.Caption;
        open;
        Edit;
        FieldByName('DESCONTO').Value := Desconto;
        FieldByName('ACRESCIMO').Value := Acrescimo;
        FieldByName('TOTAL_VENDA').Value := Total;
        FieldByName('VALOR_PAGO').Value := ValorPagoTotal;
        FieldByName('TROCO').Value := Troco;
        post;
        close;
      end;
    end;
  except
    on E: Exception do
    begin
      wnErro('Erro Venda', 'Erro ao inserir Acrésimo/Desconto na venda!');
      SQL_VENDA.Cancel;
    end;
  end;
end;

procedure TFrm_Recebimento.ConsultarPagamento;
var
  qry_tmp: TFDQuery;
begin
  if edtCodPag.Text = emptystr then
  begin
    WnAlerta('Pagamentos', slinebreak + 'Informe o código do Tipo de Pagamento!');
    edtCodPag.setFocus;
    exit;
  end
  else
  begin
    if length(edtCodPag.Text) = 1 then
      edtCodPag.Text := '0' + edtCodPag.Text;
    qry_tmp := simplequery('SELECT TIPO_PAGAMENTO FROM TIPO_PAGAMENTO WHERE COD_TIPO_PAGAMENTO = ? ', [edtCodPag.Text]);
    if qry_tmp <> nil then
    begin
      edtPagDesc.Text := qry_tmp.FieldByName('TIPO_PAGAMENTO').asString;
      edt_valor.SelectAll;
      edt_valor.setFocus;
    end
    else
    begin
      WnAlerta('Pagamentos', slinebreak + 'Pagamento não encontrado!');
      edtPagDesc.Text := '';
      edtCodPag.SelectAll;
      edtCodPag.setFocus;
    end;
  end;
end;

procedure TFrm_Recebimento.btnSairClick(Sender: TObject);
begin
  if btnSair.enabled then
    if wnConfirmacao('Cancelar Venda', slinebreak + 'Deseja cancelar a finalização da venda?', 16) then
    begin
      DeletarPagamentos;
      frm_pdv.FORM_PDV.Sql_consulta_itens.Active := True;
      frm_pdv.FORM_PDV.sql_totalVenda.Active := True;
      frm_pdv.FORM_PDV.SQL_VENDA.ParamByName('pcodigo').Value := lbl_venda.Caption;
      frm_pdv.FORM_PDV.SQL_VENDA.Active := True;
      frm_pdv.FORM_PDV.SQL_VENDA.Edit;
      close;
    end;
end;

procedure TFrm_Recebimento.btn_finalizarClick(Sender: TObject);
begin
  if btn_finalizar.enabled then
    Finalizacao;
end;

procedure TFrm_Recebimento.cxDBTextEdit2Exit(Sender: TObject);
begin
  edt_valor.Text := FormatFloat('0.00', StrToFloat(edt_valor.Text));
end;

procedure TFrm_Recebimento.DBGrid1DrawColumnCell(Sender: TObject; const Rect: TRect; DataCol: Integer; Column: TColumn; State: TGridDrawState);
begin
  GridZebrado(DBGrid1, Rect, DataCol, Column, State);
end;

procedure TFrm_Recebimento.DBGrid1KeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
begin
  if Key = vk_delete then
  begin
    DeletarPagamento;
  end;
end;

procedure TFrm_Recebimento.dbTipoPagamentoKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
begin
  if (Key = vk_return) or (Key = vk_tab) then
    edt_valor.setFocus;
end;

procedure TFrm_Recebimento.DeletarPagamento;
var
  Total_Pago, Valor_Debitado: Extended;
  qrytmp: TFDQuery;
begin
  Total_Pago := SQL_venda_pagamentoTOTAL_PAGO.asExtended;
  Valor_Debitado := SQL_venda_pagamentoVALOR_DEBITADO.asExtended;
  execquery('delete from venda_pagamento where codigo = ? and codigo_venda = ?', [SQL_venda_pagamentoCODIGO.AsInteger, SQL_venda_pagamentoCODIGO_VENDA.Value]);
  ListarPagamentos;
  edt_pago.Text := FormatFloat('0.00', StrToFloat(edt_pago.Text) - Total_Pago);
  if (StrToFloat(edt_troco.Text) - Total_Pago) <= 0 then
    edt_troco.Text := '0,00'
  else
    edt_troco.Text := FormatFloat('0.00', StrToFloat(edt_troco.Text) - Total_Pago);
  edt_devido.Text := FormatFloat('0.00', StrToFloat(edt_devido.Text) + Valor_Debitado);
  edt_valor.Text := edt_devido.Text;
  btn_finalizar.enabled := false;
  edt_valor.enabled := True;

  if dbTipoPagamento.Visible then
  begin
    dbTipoPagamento.enabled := True;
    dbTipoPagamento.setFocus;
  end;

  if edtCodPag.Visible then
  begin
    edtPagDesc.enabled := True;
    edtCodPag.enabled := True;
    edtCodPag.setFocus;
  end;

end;

procedure TFrm_Recebimento.DeletarPagamento1Click(Sender: TObject);
begin
  DeletarPagamento;
end;

procedure TFrm_Recebimento.DeletarPagamentos;
var
  qrytemp: TFDQuery;
begin
  qrytemp := TFDQuery.Create(nil);
  qrytemp.connection := module.connection;
  with qrytemp do
  begin
    close;
    sql.Clear;
    sql.Add('delete from venda_pagamento');
    sql.Add('where CODIGO_VENDA = :pcodigo');
    Params.ParamByName('pcodigo').Value := strtoint(lbl_venda.Caption);
    ExecSQL;
    destroy;
  end;
end;

procedure TFrm_Recebimento.D_DinheiroPropertiesChange(Sender: TObject);
begin
  u_funcoes.AlteraChecks(D_Dinheiro, [D_Porcentagem]);
end;

procedure TFrm_Recebimento.D_PorcentagemPropertiesChange(Sender: TObject);
begin
  u_funcoes.AlteraChecks(D_Porcentagem, [D_Dinheiro]);
end;

procedure TFrm_Recebimento.edt_valorClick(Sender: TObject);
begin
  edt_valor.SelectAll;
end;

procedure TFrm_Recebimento.edt_valorExit(Sender: TObject);
begin
  edt_valor.Text := FormatFloat('0.00', StrToFloat(edt_valor.Text));
end;

procedure TFrm_Recebimento.edt_valorKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
begin
  if (Key = vk_tab) or (Key = vk_return) then
    InserirPagamento;
end;

procedure TFrm_Recebimento.edt_valorKeyPress(Sender: TObject; var Key: Char);
begin
  inherited;
  Key := u_funcoes.ApenasNumeros(Key);
end;

procedure TFrm_Recebimento.edt_valorMouseEnter(Sender: TObject);
begin
  edt_valor.SelectAll;
end;

procedure TFrm_Recebimento.edtCodPagClick(Sender: TObject);
begin
  edtCodPag.SelectAll;
end;

procedure TFrm_Recebimento.edtCodPagEnter(Sender: TObject);
begin
  edtCodPag.SelectAll;
end;

procedure TFrm_Recebimento.edtCodPagKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
begin
  if Key in [vk_return, vk_tab] then
  begin
    if edtCodPag.Text = '' then
    begin
      frm_consulta_generica := tfrm_consulta_generica.Create(nil, cgFormasPagamento, edtCodPag);
      frm_consulta_generica.ShowModal;
    end;
    ConsultarPagamento;
  end;
end;

procedure TFrm_Recebimento.edtCodPagKeyPress(Sender: TObject; var Key: Char);
begin
  inherited;
  Key := ApenasNumeros(Key);
end;

procedure TFrm_Recebimento.edt_acrescimoEnter(Sender: TObject);
begin
  edt_acrescimo.Text := '';
end;

procedure TFrm_Recebimento.edt_acrescimoExit(Sender: TObject);
begin
  if (edt_acrescimo.Text = '') then
    edt_acrescimo.Text := '0,00'
  else if (StrToFloat(edt_acrescimo.Text) = 0) then
    edt_acrescimo.Text := '0,00';
end;

procedure TFrm_Recebimento.edt_acrescimoKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
var
  Acrescimo, Total, Devido, ValorPago, Troco: Extended;
begin
  if Key = vk_return then
  begin
    if edt_acrescimo.Text <> '0,00' then
    begin
      CalcularDescontoAcrescimo;
    end;
  end;
  if Key = vk_tab then
    edt_desconto.setFocus;
end;

procedure TFrm_Recebimento.edt_acrescimoKeyPress(Sender: TObject; var Key: Char);
begin
  inherited;
  Key := u_funcoes.ApenasNumeros(Key);
end;

procedure TFrm_Recebimento.edt_descontoEnter(Sender: TObject);
begin
  edt_desconto.Text := '';
end;

procedure TFrm_Recebimento.edt_descontoExit(Sender: TObject);
begin
  if (edt_desconto.Text = '') then
    edt_desconto.Text := '0,00'
  else if (StrToFloat(edt_desconto.Text) = 0) then
    edt_desconto.Text := '0,00';
end;

procedure TFrm_Recebimento.edt_descontoKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
begin
  if Key = vk_return then
  begin
    if edt_desconto.Text <> '0,00' then
    begin
      CalcularDescontoAcrescimo;
    end;
  end;
  if Key = vk_tab then
    edt_acrescimo.setFocus;
end;

procedure TFrm_Recebimento.edt_descontoKeyPress(Sender: TObject; var Key: Char);
begin
  inherited;
  Key := u_funcoes.ApenasNumeros(Key);
end;

procedure TFrm_Recebimento.FecharForm;
var
  qry: TFDQuery;
begin
  frm_pdv.FORM_PDV.sql_increment_venda.Active := false;
  frm_pdv.FORM_PDV.insertpdv;

  if TParametros_Venda.Comanda.enabled then
    if tdb.simplequery('select status from venda where codigo_venda = ? and status = "FECHADA"', [strtoint(lbl_venda.Caption)]) <> nil then
      tfrm_relatorio.Create(nil).Comanda(lbl_venda.Caption).close;

  Frm_Recebimento.edt_total.Clear;
  Frm_Recebimento.close;
end;

procedure TFrm_Recebimento.Finalizacao;
var
  qry: TFDQuery;
begin
  with Frm_ConfNFCE do
  begin
    if TParametros_Venda.USA_CONVENIO then
    begin
      qry := tdb.simplequery('select * from venda_pagamento where cod_tipo_pagamento = "101" and codigo_venda = ?', [strtoint(lbl_venda.Caption)]);
      if qry <> nil then { Tem Convenio }
        if Tfrm_convenio.Execute(strtoint(lbl_venda.Caption)) then
        begin
          btn_finalizar.enabled := false;
          btnSair.enabled := false;
          Frm_ConfNFCE := nil;
          Frm_ConfNFCE := tfrm_confnfce.Create(nil);
          InformarDadosInternos(lbl_venda.Caption, edt_pago.Text, edt_troco.Text, edt_total.Text);
          FinalizarVenda('0', 'FECHADA', True);
          ImprimirComprovante(lbl_venda.Caption, false, false, 1);
          ImprimirComprovante(lbl_venda.Caption, false, false, 1);
          close;
          FecharForm;
        end
        else
        begin
          edtCodPag.enabled := True;
          dbTipoPagamento.enabled := True;
          edt_valor.enabled := True;
          edt_valor.setFocus;
          edt_valor.SelectAll;
        end
      else { Ñ tem convenio }
      begin
        btn_finalizar.enabled := false;
        btnSair.enabled := false;
        Frm_ConfNFCE := nil;
        Frm_ConfNFCE := tfrm_confnfce.Create(nil);
        InformarDadosInternos(lbl_venda.Caption, edt_pago.Text, edt_troco.Text, edt_total.Text);
        VerificarParametros;
        close;
        FecharForm;
      end;
    end
    else
    begin
      btn_finalizar.enabled := false;
      btnSair.enabled := false;
      Frm_ConfNFCE := nil;
      Frm_ConfNFCE := tfrm_confnfce.Create(nil);
      InformarDadosInternos(lbl_venda.Caption, edt_pago.Text, edt_troco.Text, edt_total.Text);
      VerificarParametros;
      close;
      FecharForm;
    end;
  end;
end;

procedure TFrm_Recebimento.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  frm_pdv.FORM_PDV.pnbotoes.enabled := True;
  Action := caFree;
  self := nil;
end;

procedure TFrm_Recebimento.FormCreate(Sender: TObject);
begin
  frm_pdv.FORM_PDV.pnbotoes.enabled := false;
end;

procedure TFrm_Recebimento.FormKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
begin
  if Key = vk_escape then
    btnSair.click;
  u_funcoes.TeclasAtalho(Key, [VK_F1, vk_f2], [btn_finalizar, btnSair]);
end;

procedure TFrm_Recebimento.FormKeyPress(Sender: TObject; var Key: Char);
begin
  inherited;
  if Key = Char(vk_escape) then
    Key := #0;
end;

procedure TFrm_Recebimento.FormShow(Sender: TObject);
begin
  PadronizarLayout;
end;

procedure TFrm_Recebimento.InserirPagamento;
var
  ValorInformado, Venda, Troco, Devido, ValorPago, ValorDebitado: Extended;
  insert, qry_pag: TFDQuery;
  cod_pagamento, tipo_pagamento: string;
begin
  edt_valor.Text := FormatFloat('0.00', StrToFloat(edt_valor.Text));
  Venda := StrToFloat(edt_total.Text);
  Troco := 0;
  Devido := 0;
  ValorDebitado := 0;
  ValorPago := StrToFloat(edt_pago.Text);
  ValorInformado := StrToFloat(edt_valor.Text);
  // Verifica se o valor pago e igual ao total da venda.
  if comparevalue(ValorInformado, Venda) = 0 then
  begin
    Devido := 0;
    if ValorPago = 0 then // Não Pagou valores anteriormente
    begin
      Troco := 0;
      ValorDebitado := ValorInformado;
    end
    else // Já Pagou Valores Anteriormente
    begin
      Troco := ValorPago + ValorInformado - Venda;
      ValorDebitado := ValorInformado - ValorPago;
    end;
    ValorPago := ValorPago + ValorInformado;
  end
  // verifica se o valor pago é maior que o total da venda.
  else if comparevalue(ValorInformado, Venda) = 1 then
  begin
    if comparevalue(ValorPago, 0) = 0 then // Não Pagou valores anteriormente
    begin
      Troco := ValorInformado - Venda;
      ValorDebitado := Venda;
    end
    else // Já Pagou Valores Anteriormente
    begin
      Troco := ValorInformado + ValorPago - Venda;
      ValorDebitado := Venda - ValorPago;
    end;
    ValorPago := ValorPago + ValorInformado;
  end
  // verifica se o valor é menor.
  else if comparevalue(ValorInformado, Venda) = -1 then
  begin
    Devido := Venda - (ValorPago + ValorInformado);
    if (comparevalue(Devido, 0) = -1) or (comparevalue(Devido, 0) = 0) then
    begin
      edt_valor.Text := '0,00';
      Troco := Devido * -1;
      Devido := 0;
    end
    else
    begin
      edt_valor.Text := FormatFloat('0.00', Devido);
      Troco := 0;
    end;
    ValorPago := ValorPago + ValorInformado;
    if comparevalue(ValorPago, Venda) = 1 then
      ValorDebitado := ValorInformado - Troco
    else
      ValorDebitado := ValorInformado;
    if (not dbTipoPagamento.Visible) and (edtCodPag.Visible and edtPagDesc.Visible) then
      edtCodPag.setFocus
    else if (dbTipoPagamento.Visible) and (not(edtCodPag.Visible and edtPagDesc.Visible)) then
      dbTipoPagamento.setFocus;
  end;
  edt_pago.Text := FormatFloat('0.00', ValorPago);
  edt_devido.Text := FormatFloat('0.00', Devido);
  edt_troco.Text := FormatFloat('0.00', Troco);
  insert := TFDQuery.Create(nil);
  with insert do
  begin
    connection := module.connection;
    close;
    sql.Clear;
    sql.Add('update venda set TROCO = :ptroco WHERE CODIGO_VENDA = :pcodigo_venda');
    Params.ParamByName('pcodigo_venda').Value := strtoint(lbl_venda.Caption); { Código da Venda }
    Params.ParamByName('ptroco').Value := Troco; { Troco }
    ExecSQL;
    close;
    sql.Clear;

    qry_pag := simplequery('SELECT PAG_LISTA, PAG_CODIGO FROM PARAMETROS_VENDA');

    if (qry_pag.Fields[0].asString = m_true) and (qry_pag.Fields[1].asString = m_false) then { Pagamento em Lista ( combobox ) }
    begin
      cod_pagamento := dbTipoPagamento.editvalue; { Código do tipo de pagamento }
      tipo_pagamento := dbTipoPagamento.Text; { Descrição do tipo de pagamento }
    end;
    if (qry_pag.Fields[0].asString = m_false) and (qry_pag.Fields[1].asString = m_true) then { Pagamento por Código ( edits ) }
    begin
      cod_pagamento := edtCodPag.Text; { Código do tipo de pagamento }
      tipo_pagamento := edtPagDesc.Text; { Descrição do tipo de pagamento }
    end;
    qry_pag := nil;
    qry_pag := simplequery('SELECT TOTAL_PAGO, VALOR_DEBITADO FROM VENDA_PAGAMENTO WHERE COD_TIPO_PAGAMENTO = "' + cod_pagamento + '" AND CODIGO_VENDA = ' +
      lbl_venda.Caption);
    if qry_pag = NIL then { Se não encontrar mesmo tipo de pagamento já informado na venda }
    begin
      sql.Add('insert into venda_pagamento');
      sql.Add('(CODIGO_VENDA, COD_TIPO_PAGAMENTO, TIPO_PAGAMENTO, TOTAL_PAGO, VALOR_DEBITADO)');
      sql.Add(' values (:pcodigo_venda, :cod_tipo_pagamento, :tipo_pagamento, :total_pago, :valor_debitado)');
    end
    else
    begin
      sql.Add('UPDATE VENDA_PAGAMENTO ');
      sql.Add(' SET COD_TIPO_PAGAMENTO = :cod_tipo_pagamento,TIPO_PAGAMENTO = :tipo_pagamento,' +
        ' TOTAL_PAGO = :total_pago, VALOR_DEBITADO = :valor_debitado WHERE CODIGO_VENDA = :pcodigo_venda AND COD_TIPO_PAGAMENTO = :cod_tipo_pagamento');
      ValorInformado := ValorInformado + qry_pag.Fields[0].asExtended;
      ValorDebitado := ValorDebitado + qry_pag.Fields[1].asExtended;
    end;
    Params.ParamByName('pcodigo_venda').AsInteger := strtoint(lbl_venda.Caption); { CODIGO_VENDA }
    Params.ParamByName('cod_tipo_pagamento').Value := cod_pagamento; { Código do tipo de pagamento }
    Params.ParamByName('tipo_pagamento').Value := tipo_pagamento; { Descrição do tipo de pagamento }
    Params.ParamByName('total_pago').Value := ValorInformado; { Total da quantia paga }
    Params.ParamByName('valor_debitado').Value := ValorDebitado; { Valor debitado da quantia paga }
    ExecSQL;
  end;
  ListarPagamentos;
  if (comparevalue(ValorPago, Venda) = 0) or (comparevalue(ValorPago, Venda) = 1) then
  begin
    btn_finalizar.enabled := True;
    btn_finalizar.setFocus;
    edtCodPag.enabled := false;
    edtPagDesc.enabled := false;
    dbTipoPagamento.enabled := false;
    edt_valor.enabled := false;
    edt_valor.Text := '0,00';
  end;
end;

procedure TFrm_Recebimento.ListarPagamentos;
begin
  with SQL_venda_pagamento do
  begin
    close;
    ParamByName('pcodigo').Value := lbl_venda.Caption;
    open;
  end;
end;

procedure TFrm_Recebimento.PadronizarLayout;
  procedure AjustarPagamentos;
  begin
    Frm_ConfNFCE := tfrm_confnfce.Create(nil);
    Frm_ConfNFCE.SQL_PARAMETROS_NFCE.Active := false;
    Frm_ConfNFCE.SQL_PARAMETROS_NFCE.Active := True;
    Frm_ConfNFCE.SQL_PARAMETROS_NFCE.Last;
    if Frm_ConfNFCE.SQL_PARAMETROS_NFCEPAG_LISTA.Value = m_true then
    begin
      edtCodPag.Visible := false;
      edtPagDesc.Visible := false;
      if not TParametros_Venda.USA_CONVENIO then
        with SQL_TIPO_PAGAMENTO do
        begin
          close;
          sql.Clear;
          sql.Add('SELECT * FROM TIPO_PAGAMENTO WHERE COD_TIPO_PAGAMENTO <> "101"'); { Removendo convenio }
          open;
        end;
      if Frm_ConfNFCE.SQL_PARAMETROS_NFCEUSA_PAG_PADRAO.Value = m_true then
      begin
        dbTipoPagamento.editvalue := Frm_ConfNFCE.SQL_PARAMETROS_NFCEPAG_PADRAO.Value;
        edt_valor.SelectAll;
        edt_valor.setFocus;
      end
      else if Frm_ConfNFCE.SQL_PARAMETROS_NFCEUSA_PAG_PADRAO.Value = m_false then
      begin
        if Frm_ConfNFCE.SQL_PARAMETROS_NFCEHABILITAR_FIADO.Value = m_false then { Habilitar pagamento fiado }
        begin
          with SQL_TIPO_PAGAMENTO do
          begin
            close;
            sql.Clear;
            sql.Add('SELECT * FROM TIPO_PAGAMENTO WHERE COD_TIPO_PAGAMENTO <> ' + quotedstr('100') + ' AND TIPO_PAGAMENTO <> ' + quotedstr('Fiado'));
            open;
          end;
        end;
      end;
    end;
    if Frm_ConfNFCE.SQL_PARAMETROS_NFCEPAG_CODIGO.Value = m_true then
    begin
      dbTipoPagamento.Visible := false;
      edtCodPag.setFocus;
      if Frm_ConfNFCE.SQL_PARAMETROS_NFCEUSA_PAG_PADRAO.Value = m_true then
      begin
        with SQL_TIPO_PAGAMENTO do
        begin
          close;
          sql.Clear;
          sql.Add('SELECT * FROM TIPO_PAGAMENTO WHERE COD_TIPO_PAGAMENTO = ' + quotedstr(Frm_ConfNFCE.SQL_PARAMETROS_NFCEPAG_PADRAO.Value));
          open;
        end;
        edtCodPag.Text := SQL_TIPO_PAGAMENTOCOD_TIPO_PAGAMENTO.Value;
        edtPagDesc.Text := SQL_TIPO_PAGAMENTOTIPO_PAGAMENTO.Value;
        edt_valor.SelectAll;
        edt_valor.setFocus;
      end
    end;
    Frm_ConfNFCE.free;
  end;

  procedure CarregarItens;
  begin
    with SQL_Venda_Item do
    begin
      DisableControls;
      close;
      ParamByName('pcodigo').Value := strtoint(lbl_venda.Caption);
      open;
      Last;
      Qtde_Itens := FieldByName('CODIGO_ITEM_VENDA').Value;
      close;
    end;
  end;

var
  qry_tmp: TFDQuery;
begin
  SQL_TIPO_PAGAMENTO.Active := True;
  dbTipoPagamento.setFocus;
  dbTipoPagamento.editvalue := '01';
  edt_valor_venda.Text := frm_pdv.FORM_PDV.lbl_subtotal.Caption;
  edt_total.Text := edt_valor_venda.Text;
  edt_valor.Text := edt_valor_venda.Text;
  edt_pago.Text := '0,00';
  edt_desconto.Text := '0,00';
  edt_acrescimo.Text := '0,00';
  edt_devido.Text := '0,00';
  edt_troco.Text := '0,00';
  btn_finalizar.enabled := false;
  lbl_operador.Caption := frm_pdv.FORM_PDV.lbl_operador.Caption;;
  lbl_cliente_cpf.Caption := frm_pdv.FORM_PDV.lbl_cnpj.Caption;
  lbl_cliente_nome.Caption := frm_pdv.FORM_PDV.lbl_cliente.Caption;
  lbl_telefone.Caption := frm_pdv.FORM_PDV.lbl_tel.Caption;
  lbl_venda.Caption := frm_pdv.FORM_PDV.lbl_cod_venda.Caption;
  lbl_caixa.Caption := frm_pdv.FORM_PDV.lbl_caixa.Caption;
  lbl_vendedor.Caption := frm_pdv.FORM_PDV.lbl_vendedor.Caption;
  CarregarItens;
  AjustarPagamentos;
end;

procedure TFrm_Recebimento.PreventClick(Sender: TObject);
begin
  Frm_Recebimento.setFocus;
end;

end.
