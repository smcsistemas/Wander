//Verificado automaticamente em 16/06/2020 09:28
unit recebimento;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, cxGraphics, cxControls, cxLookAndFeels,
  cxLookAndFeelPainters, cxContainer, cxEdit, dxSkinsCore,
  dxSkinOffice2013LightGray, cxCheckBox, Vcl.StdCtrls, Vcl.Mask, Vcl.DBCtrls,
  Data.DB, Vcl.Menus, cxTextEdit, cxMaskEdit, cxDropDownEdit, cxLookupEdit,
  cxDBLookupEdit, cxDBLookupComboBox, cxButtons, Vcl.Grids, Vcl.DBGrids,
  FireDAC.Stan.Intf, FireDAC.Stan.Option, FireDAC.Stan.Param,
  FireDAC.Stan.Error, FireDAC.DatS, FireDAC.Phys.Intf, FireDAC.DApt.Intf,
  FireDAC.Stan.Async, FireDAC.DApt, FireDAC.Comp.DataSet, FireDAC.Comp.Client,
  cxGroupBox, Vcl.ExtCtrls;

type
  Tfrm_recebimentos = class(TForm)
    GroupBox1: TGroupBox;
    Label3: TLabel;
    DBEdit1: TDBEdit;
    Label4: TLabel;
    Label5: TLabel;
    DBEdit4: TDBEdit;
    Label6: TLabel;
    DBEdit5: TDBEdit;
    DBEdit6: TDBEdit;
    Label7: TLabel;
    Label8: TLabel;
    DBEdit9: TDBEdit;
    Label10: TLabel;
    DBEdit10: TDBEdit;
    DBEdit11: TDBEdit;
    cxCheckBox1: TcxCheckBox;
    cxCheckBox2: TcxCheckBox;
    Label1: TLabel;
    Label14: TLabel;
    DBEdit13: TDBEdit;
    Label15: TLabel;
    GroupBox3: TGroupBox;
    Label12: TLabel;
    Label13: TLabel;
    edt_valor: TEdit;
    DBGrid1: TDBGrid;
    btnSair: TcxButton;
    btn_finalizar: TcxButton;
    Label9: TLabel;
    cxCheckBox3: TcxCheckBox;
    cxCheckBox4: TcxCheckBox;
    Label11: TLabel;
    Label16: TLabel;
    Label17: TLabel;
    Edit1: TEdit;
    Edit2: TEdit;
    edt_total: TEdit;
    edt_pago: TEdit;
    edt_devido: TEdit;
    edt_troco: TEdit;
    DS_TIPO_PAGAMENTO: TDataSource;
    DS_venda_pagamento: TDataSource;
    popGrid: TPopupMenu;
    DeletarPagamento1: TMenuItem;
    SQL_TIPO_PAGAMENTO: TFDQuery;
    SQL_TIPO_PAGAMENTOCODIGO: TFDAutoIncField;
    SQL_TIPO_PAGAMENTOCOD_TIPO_PAGAMENTO: TStringField;
    SQL_TIPO_PAGAMENTOTIPO_PAGAMENTO: TStringField;
    SQL_venda_pagamento: TFDQuery;
    SQL_venda_pagamentoCODIGO: TFDAutoIncField;
    SQL_venda_pagamentoCODIGO_VENDA: TIntegerField;
    SQL_venda_pagamentoCOD_TIPO_PAGAMENTO: TStringField;
    SQL_venda_pagamentoTIPO_PAGAMENTO: TStringField;
    SQL_venda_pagamentoTOTAL_PAGO: TBCDField;
    SQL_venda_pagamentoVALOR_DEBITADO: TBCDField;
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
    SQL_VENDADATA: TDateField;
    SQL_VENDAHORA: TTimeField;
    SQL_VENDAIE_CLIENTE: TStringField;
    SQL_VENDACOD_NFCE: TStringField;
    SQL_NFCE: TFDQuery;
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
    SQL_NFCERETORNO_NFCE: TStringField;
    SQL_NFCEDATA_EMISSAO: TDateField;
    SQL_NFCEHORA_EMISSAO: TTimeField;
    SQL_NFCEDATA_TRANSMISSAO: TDateField;
    SQL_NFCEHORA_TRANSMISSAO: TTimeField;
    SQL_NFCECLIENTE_IE: TStringField;
    SQL_NFCECLIENTE_TELEFONE: TStringField;
    GroupBox4: TGroupBox;
    Label18: TLabel;
    Label19: TLabel;
    Label20: TLabel;
    Label21: TLabel;
    lbl_venda: TLabel;
    lbl_operador: TLabel;
    lbl_cliente_cpf: TLabel;
    lbl_cliente_nome: TLabel;
    Label22: TLabel;
    lbl_caixa: TLabel;
    Label23: TLabel;
    lbl_vendedor: TLabel;
    Label24: TLabel;
    lbl_telefone: TLabel;
//    edtCodPag: TEdit;
//    edtPagDesc: TEdit;
    dbTipoPagamento: TcxLookupComboBox;
    cxGroupBox1: TcxGroupBox;
    Label25: TLabel;
    Edit3: TEdit;
    Edit4: TEdit;
    Label26: TLabel;
    Label27: TLabel;
    Edit5: TEdit;
    Edit6: TEdit;
    Label28: TLabel;
    RadioButton2: TRadioButton;
    RadioButton3: TRadioButton;
    cxComboBox1: TcxComboBox;
    Label2: TLabel;
    Label29: TLabel;
    DBGrid2: TDBGrid;
    Shape1: TShape;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure btn_finalizarClick(Sender: TObject);
//    procedure btn_finalizarClick(Sender: TObject);
//    procedure Finalizacao;
//    procedure FecharForm;
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frm_recebimentos: Tfrm_recebimentos;
  Qtde_Itens: Integer;

implementation

uses
  funcoes_sistema, c_Globals, U_ConfNFCE, u_funcoes, S_Parametros_Venda, vw_convenio, h_DB, vw_pdv, relatorios, impresssao_comprovante_venda;

{$R *.dfm}

//procedure Tfrm_recebimentos.btn_finalizarClick(Sender: TObject);
//begin
//  if btn_finalizar.enabled then
//    Finalizacao;
//end;

//
//
//procedure Tfrm_recebimentos.Finalizacao;
//var
//  qry: TFDQuery;
//begin
//  with Frm_ConfNFCE do
//  begin
//    if TParametros_Venda.USA_CONVENIO then
//    begin
//      qry := tdb.simplequery('select * from venda_pagamento where cod_tipo_pagamento = "101" and codigo_venda = ?', [strtoint(lbl_venda.Caption)]);
//      if qry <> nil then { Tem Convenio }
//        if Tfrm_convenio.Execute(strtoint(lbl_venda.Caption)) then
//        begin
//          btn_finalizar.enabled := false;
//          btnSair.enabled := false;
//          Frm_ConfNFCE := nil;
//          Frm_ConfNFCE := tfrm_confnfce.Create(nil);
//          InformarDadosInternos(lbl_venda.Caption, edt_pago.Text, edt_troco.Text, edt_total.Text);
//          FinalizarVenda('0', 'FECHADA', True);
//          ImprimirComprovante(lbl_venda.Caption, false, false, 1);
//          ImprimirComprovante(lbl_venda.Caption, false, false, 1);
//          close;
////          FecharForm;
//        end
//        else
//        begin
//          edtCodPag.enabled := True;
//          dbTipoPagamento.enabled := True;
//          edt_valor.enabled := True;
//          edt_valor.setFocus;
//          edt_valor.SelectAll;
//        end
//      else { Ñ tem convenio }
//      begin
//        btn_finalizar.enabled := false;
//        btnSair.enabled := false;
//        Frm_ConfNFCE := nil;
//        Frm_ConfNFCE := tfrm_confnfce.Create(nil);
//        InformarDadosInternos(lbl_venda.Caption, edt_pago.Text, edt_troco.Text, edt_total.Text);
//        VerificarParametros;
//        close;
//        FecharForm;
//      end;
//    end
//    else
//    begin
//      btn_finalizar.enabled := false;
//      btnSair.enabled := false;
//      Frm_ConfNFCE := nil;
//      Frm_ConfNFCE := tfrm_confnfce.Create(nil);
//      InformarDadosInternos(lbl_venda.Caption, edt_pago.Text, edt_troco.Text, edt_total.Text);
//      VerificarParametros;
//      close;
//      FecharForm;
//    end;
//  end;
//end;
//
//
//procedure TFrm_Recebimentos.FecharForm;
//var
//  qry: TFDQuery;
//begin
//  frm_pdv.FORM_PDV.sql_increment_venda.Active := false;
//  frm_pdv.FORM_PDV.insertpdv;
//
//  if TParametros_Venda.Comanda.enabled then
//    if tdb.simplequery('select status from venda where codigo_venda = ? and status = "FECHADA"', [strtoint(lbl_venda.Caption)]) <> nil then
//      tfrm_relatorio.Create(nil).Comanda(lbl_venda.Caption).close;
//
//  Frm_Recebimentos.edt_total.Clear;
//  Frm_Recebimentos.close;
//end;


procedure Tfrm_recebimentos.btn_finalizarClick(Sender: TObject);
begin
 frm_impress := Tfrm_impress.CREATE(Application);
 frm_impress.ShowModal;
end;

procedure Tfrm_recebimentos.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  Action := cafree;
  self := nil;
end;

end.
