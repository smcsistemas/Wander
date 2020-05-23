unit vw_fechar_caixa;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, cxGraphics, cxLookAndFeels,
  cxLookAndFeelPainters, Vcl.Menus, dxSkinsCore, dxSkinBlack, dxSkinBlue,
  dxSkinBlueprint, dxSkinCaramel, dxSkinCoffee, dxSkinDarkRoom, dxSkinDarkSide,
  dxSkinDevExpressDarkStyle, dxSkinDevExpressStyle, dxSkinFoggy,
  dxSkinGlassOceans, dxSkinHighContrast, dxSkiniMaginary, dxSkinLilian,
  dxSkinLiquidSky, dxSkinLondonLiquidSky, dxSkinMcSkin, dxSkinMetropolis,
  dxSkinMetropolisDark, dxSkinMoneyTwins, dxSkinOffice2007Black,
  dxSkinOffice2007Blue, dxSkinOffice2007Green, dxSkinOffice2007Pink,
  dxSkinOffice2007Silver, dxSkinOffice2010Black, dxSkinOffice2010Blue,
  dxSkinOffice2010Silver, dxSkinOffice2013DarkGray, dxSkinOffice2013LightGray,
  dxSkinOffice2013White, dxSkinOffice2016Colorful, dxSkinOffice2016Dark,
  dxSkinPumpkin, dxSkinSeven, dxSkinSevenClassic, dxSkinSharp, dxSkinSharpPlus,
  dxSkinSilver, dxSkinSpringTime, dxSkinStardust, dxSkinSummer2008,
  dxSkinTheAsphaltWorld, dxSkinsDefaultPainters, dxSkinValentine,
  dxSkinVisualStudio2013Blue, dxSkinVisualStudio2013Dark,
  dxSkinVisualStudio2013Light, dxSkinVS2010, dxSkinWhiteprint,
  dxSkinXmas2008Blue, cxControls, cxStyles, cxEdit, cxClasses, cxVGrid,
  cxInplaceContainer, cxScrollBox, Vcl.StdCtrls, cxButtons, Vcl.ExtCtrls,
  dxGDIPlusClasses, cxContainer, cxGroupBox, Vcl.Mask, Vcl.DBCtrls,
  c_Globals, FireDAC.Stan.Intf, FireDAC.Stan.Option, FireDAC.Stan.Param,
  FireDAC.Stan.Error, FireDAC.DatS, FireDAC.Phys.Intf, FireDAC.DApt.Intf,
  FireDAC.Stan.Async, FireDAC.DApt, Data.DB, FireDAC.Comp.DataSet,
  FireDAC.Comp.Client, u_funcoes;

type
  TFrm_fechar_caixa = class(TForm)
    Image5: TImage;
    Image7: TImage;
    Image8: TImage;
    Image9: TImage;
    Image11: TImage;
    Image10: TImage;
    Image6: TImage;
    Image3: TImage;
    Image1: TImage;
    Image2: TImage;
    Image12: TImage;
    Label6: TLabel;
    Label7: TLabel;
    Label8: TLabel;
    Label9: TLabel;
    Label10: TLabel;
    Label11: TLabel;
    Label12: TLabel;
    Label13: TLabel;
    Label14: TLabel;
    Label15: TLabel;
    Label16: TLabel;
    Label17: TLabel;
    Label18: TLabel;
    Label19: TLabel;
    Label20: TLabel;
    Label21: TLabel;
    Label22: TLabel;
    Label23: TLabel;
    Label24: TLabel;
    Label25: TLabel;
    Label26: TLabel;
    Label27: TLabel;
    Label28: TLabel;
    Label29: TLabel;
    Label30: TLabel;
    Label31: TLabel;
    Label32: TLabel;
    Label33: TLabel;
    Label34: TLabel;
    Label35: TLabel;
    Label36: TLabel;
    Label37: TLabel;
    Label38: TLabel;
    Label39: TLabel;
    Label40: TLabel;
    Label41: TLabel;
    Label42: TLabel;
    Label43: TLabel;
    Label44: TLabel;
    Label45: TLabel;
    Label46: TLabel;
    Label47: TLabel;
    Label48: TLabel;
    Label49: TLabel;
    Shape1: TShape;
    lblTotMoeda: TLabel;
    lblTotReal: TLabel;
    Shape3: TShape;
    Shape5: TShape;
    Label1: TLabel;
    lblCaixa: TLabel;
    Label58: TLabel;
    Label60: TLabel;
    Label64: TLabel;
    Label66: TLabel;
    lblTot5c: TLabel;
    lblTot10c: TLabel;
    lblTot25c: TLabel;
    lblTot50c: TLabel;
    lblTot1r: TLabel;
    lblTot2r: TLabel;
    lblTot5r: TLabel;
    lblTot10r: TLabel;
    lblTot20r: TLabel;
    lblTot50r: TLabel;
    lblTot100r: TLabel;
    Label53: TLabel;
    Label54: TLabel;
    Label55: TLabel;
    Label56: TLabel;
    Label57: TLabel;
    Label59: TLabel;
    Label61: TLabel;
    Label62: TLabel;
    Label63: TLabel;
    Label65: TLabel;
    Label67: TLabel;
    lblTotFis: TLabel;
    Label70: TLabel;
    Shape2: TShape;
    btn_confirmar: TcxButton;
    edtQtd5c: TEdit;
    edtQtd10c: TEdit;
    edtQtd25c: TEdit;
    edtQtd50c: TEdit;
    edtQtd1r: TEdit;
    edtQtd2r: TEdit;
    edtQtd5r: TEdit;
    edtQtd10r: TEdit;
    edtQtd20r: TEdit;
    edtQtd50r: TEdit;
    edtQtd100r: TEdit;
    btn_cancelar: TcxButton;
    scrollPn: TcxScrollBox;
    cxStyleRepository3: TcxStyleRepository;
    CLR: TcxStyle;
    ESCURO: TcxStyle;
    cxStyle6: TcxStyle;
    LETRA: TcxStyle;
    LETRAS_NORAML: TcxStyle;
    Shape4: TShape;
    cxGroupBox1: TcxGroupBox;
    Label2: TLabel;
    Label4: TLabel;
    Label50: TLabel;
    Label51: TLabel;
    cxGroupBox4: TcxGroupBox;
    Label52: TLabel;
    Label68: TLabel;
    Label69: TLabel;
    Label71: TLabel;
    cxStyle1: TcxStyle;
    Label72: TLabel;
    DBEdit2: TDBEdit;
    Label73: TLabel;
    DBEdit3: TDBEdit;
    Label74: TLabel;
    DBEdit4: TDBEdit;
    Label75: TLabel;
    DBEdit5: TDBEdit;
    Label76: TLabel;
    DBEdit6: TDBEdit;
    Label77: TLabel;
    DBEdit7: TDBEdit;
    DBEdit8: TDBEdit;
    DBEdit9: TDBEdit;
    DBEdit10: TDBEdit;
    DBEdit11: TDBEdit;
    DBEdit12: TDBEdit;
    DBEdit13: TDBEdit;
    DBEdit14: TDBEdit;
    DBEdit15: TDBEdit;
    DBEdit16: TDBEdit;
    DBEdit17: TDBEdit;
    DBEdit18: TDBEdit;
    Label78: TLabel;
    DBEdit19: TDBEdit;
    DBEdit20: TDBEdit;
    DBEdit21: TDBEdit;
    Label81: TLabel;
    Label82: TLabel;
    Label83: TLabel;
    DBEdit28: TDBEdit;
    DBEdit29: TDBEdit;
    DBEdit30: TDBEdit;
    DBEdit33: TDBEdit;
    DBEdit34: TDBEdit;
    Label79: TLabel;
    Label80: TLabel;
    Label84: TLabel;
    cxGroupBox2: TcxGroupBox;
    cxGroupBox3: TcxGroupBox;
    DBEdit31: TDBEdit;
    DBEdit36: TDBEdit;
    DBEdit22: TDBEdit;
    DBEdit23: TDBEdit;
    RA_1000000: TDBEdit;
    cxGroupBox5: TcxGroupBox;
    qCaixaDet: TFDQuery;
    qCaixaDetId: TFDAutoIncField;
    qCaixaDetDescricao: TStringField;
    qCaixaDetOperacao: TStringField;
    qCaixaDetDescricaoOperacao: TStringField;
    qCaixaDetIdCaixa: TIntegerField;
    qCaixaDetTotal: TBCDField;
    qCaixaDetOperador: TStringField;
    qCaixaDetLancamento: TDateTimeField;
    qCaixaDetCodigoUsuario: TIntegerField;
    qCaixa: TFDQuery;
    qCaixaId: TFDAutoIncField;
    qCaixaData: TDateTimeField;
    qCaixaCodigoTurno: TIntegerField;
    qCaixaCodigoUsuario: TIntegerField;
    qCaixaSituacao: TStringField;
    qCaixaPDV: TStringField;
    qCaixaVendaDinheiro: TBCDField;
    qCaixaVendaCheque: TBCDField;
    qCaixaVendaCartaoCredito: TBCDField;
    qCaixaVendaCartaoDebito: TBCDField;
    qCaixaVendaConvenio: TBCDField;
    qCaixaVendaCrediario: TBCDField;
    qCaixaVendaOutros: TBCDField;
    qCaixaTotalRecebimento: TBCDField;
    qCaixaTotalSuprimento: TBCDField;
    qCaixaTotalSangria: TBCDField;
    qCaixaTotalVendas: TBCDField;
    qCaixaTotalCaixa: TBCDField;
    qCaixaTotalAbertura: TBCDField;
    qCaixaFechamento: TDateTimeField;
    dsCaixa: TDataSource;
    qCaixaConferenciaDinheiro: TBCDField;
    qCaixaConferenciaCheque: TBCDField;
    qCaixaConferenciaCartaoCredito: TBCDField;
    qCaixaConferenciaCartaoDebito: TBCDField;
    qCaixaConferenciaConvenio: TBCDField;
    qCaixaConferenciaCrediario: TBCDField;
    qCaixaConferenciaOutros: TBCDField;
    DBText1: TDBText;
    qCaixaTotalDiferenca: TBCDField;
    DBText2: TDBText;
    qCaixaQuebraDinheiro: TBCDField;
    qCaixaQuebraCartaoDebito: TBCDField;
    qCaixaQuebraCartaoCredito: TBCDField;
    qCaixaQuebraCheque: TBCDField;
    Label3: TLabel;
    Label5: TLabel;
    Label85: TLabel;
    DBText3: TDBText;
    DBText4: TDBText;
    DBText5: TDBText;
    Label86: TLabel;
    DBText6: TDBText;
    DBText7: TDBText;
    DBText8: TDBText;
    Label87: TLabel;
    Label88: TLabel;
    qCaixaQuebraConvenio: TBCDField;
    Label89: TLabel;
    DBText9: TDBText;
    Label90: TLabel;
    DBText10: TDBText;

    procedure CalculaTotal;
    procedure cxButton3Click(Sender: TObject);
    procedure btn_confirmarClick(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure edtQtd5cChange(Sender: TObject);
    procedure edtQtd10cChange(Sender: TObject);
    procedure edtQtd25cChange(Sender: TObject);
    procedure edtQtd50cChange(Sender: TObject);
    procedure edtQtd1rChange(Sender: TObject);
    procedure edtQtd2rChange(Sender: TObject);
    procedure edtQtd5rChange(Sender: TObject);
    procedure edtQtd10rChange(Sender: TObject);
    procedure edtQtd20rChange(Sender: TObject);
    procedure edtQtd50rChange(Sender: TObject);
    procedure edtQtd100rChange(Sender: TObject);
    procedure edtQtd5cExit(Sender: TObject);
    procedure edtQtd5cEnter(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure btn_cancelarClick(Sender: TObject);
    procedure DBEdit7Change(Sender: TObject);
    procedure qCaixaConferenciaChequeValidate(Sender: TField);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Frm_fechar_caixa: TFrm_fechar_caixa;

implementation

{$R *.dfm}

uses rel_vw_movimentacao_caixa, confirm_fechamento;

procedure TFrm_fechar_caixa.btn_cancelarClick(Sender: TObject);
begin
     Close;
end;

procedure TFrm_fechar_caixa.btn_confirmarClick(Sender: TObject);
begin
     Frm_conf_fechamento:= TFrm_conf_fechamento.create(Self);
     Frm_conf_fechamento.caixa := SELF;
     Frm_conf_fechamento.showmodal;
end;

procedure TFrm_fechar_caixa.CalculaTotal;
var totalMoeda, totalPapel: Double;
begin
     try
        totalMoeda := StrToFloatDef(StringReplace(lblTot5c.Caption, '.','',[rfReplaceAll,rfIgnoreCase]), 0) +
                      StrToFloatDef(StringReplace(lblTot10c.Caption, '.','',[rfReplaceAll,rfIgnoreCase]), 0) +
                      StrToFloatDef(StringReplace(lblTot25c.Caption, '.','',[rfReplaceAll,rfIgnoreCase]), 0) +
                      StrToFloatDef(StringReplace(lblTot50c.Caption, '.','',[rfReplaceAll,rfIgnoreCase]), 0) +
                      StrToFloatDef(StringReplace(lblTot1r.Caption, '.','',[rfReplaceAll,rfIgnoreCase]), 0);

        totalPapel := StrToFloatDef(StringReplace(lblTot2r.Caption, '.','',[rfReplaceAll,rfIgnoreCase]), 0) +
                      StrToFloatDef(StringReplace(lblTot5r.Caption, '.','',[rfReplaceAll,rfIgnoreCase]), 0) +
                      StrToFloatDef(StringReplace(lblTot10r.Caption, '.','',[rfReplaceAll,rfIgnoreCase]), 0) +
                      StrToFloatDef(StringReplace(lblTot20r.Caption, '.','',[rfReplaceAll,rfIgnoreCase]), 0) +
                      StrToFloatDef(StringReplace(lblTot50r.Caption, '.','',[rfReplaceAll,rfIgnoreCase]), 0) +
                      StrToFloatDef(StringReplace(lblTot100r.Caption, '.','',[rfReplaceAll,rfIgnoreCase]), 0);

        lblTotMoeda.Caption   := FormatFloat('#,###,##0.00', totalMoeda);
        lblTotReal.Caption    := FormatFloat('#,###,##0.00', totalPapel);
        lblTotFis.Caption     := FormatFloat('#,###,##0.00', totalMoeda + totalPapel);

        qCaixaConferenciaDinheiro.AsFloat  := totalMoeda + totalPapel;
        qCaixaQuebraDinheiro.AsFloat       := qCaixaConferenciaDinheiro.AsFloat - (qCaixaVendaDinheiro.AsFloat + qCaixaTotalSuprimento.AsFloat - qCaixaTotalSangria.AsFloat);
        qCaixaQuebraCartaoDebito.AsFloat   := qCaixaConferenciaCartaoDebito.AsFloat - qCaixaVendaCartaoDebito.AsFloat;
        qCaixaQuebraCartaoCredito.AsFloat  := qCaixaConferenciaCartaoCredito.AsFloat - qCaixaVendaCartaoCredito.AsFloat;
        qCaixaQuebraCheque.AsFloat         := qCaixaConferenciaCheque.AsFloat - qCaixaVendaCheque.AsFloat;
        qCaixaQuebraConvenio.AsFloat       := qCaixaConferenciaConvenio.AsFloat - qCaixaVendaConvenio.AsFloat;

        qCaixaTotalCaixa.AsFloat := qCaixaConferenciaDinheiro.AsFloat +
                                    qCaixaConferenciaCheque.AsFloat +
                                    qCaixaConferenciaCartaoCredito.AsFloat +
                                    qCaixaConferenciaCartaoDebito.AsFloat +
                                    qCaixaConferenciaConvenio.AsFloat +
                                    qCaixaConferenciaCrediario.AsFloat +
                                    qCaixaConferenciaOutros.AsFloat;(* +
                                    qCaixaTotalSuprimento.AsFloat -
                                    qCaixaTotalSangria.AsFloat;*)

        qCaixaTotalDiferenca.AsFloat := qCaixaQuebraDinheiro.AsFloat +
                                        qCaixaQuebraCartaoDebito.AsFloat +
                                        qCaixaQuebraCartaoCredito.AsFloat +
                                        qCaixaQuebraCheque.AsFloat;
     except

     end;
end;

procedure TFrm_fechar_caixa.cxButton3Click(Sender: TObject);
begin
     frm_movimentacao_caixa:= Tfrm_movimentacao_caixa.Create(nil);
     frm_movimentacao_caixa.showmodal;
end;

procedure TFrm_fechar_caixa.DBEdit7Change(Sender: TObject);
begin
     //if TDBEdit(Sender).Focused then
     //   CalculaTotal;
end;

procedure TFrm_fechar_caixa.edtQtd100rChange(Sender: TObject);
begin
     try
        lblTot100r.Caption := FormatFloat('#,##0.00', StrToInt64Def(edtQtd100r.Text,0) * 100);
     except
        lblTot100r.Caption := '0,00';
     end;
     CalculaTotal;
end;

procedure TFrm_fechar_caixa.edtQtd10cChange(Sender: TObject);
begin
     try
        lblTot10c.Caption := FormatFloat('#,##0.00', StrToInt64Def(edtQtd10c.Text,0) * 0.10);
     except
        lblTot10c.Caption := '0,00';
     end;
     CalculaTotal;
end;

procedure TFrm_fechar_caixa.edtQtd10rChange(Sender: TObject);
begin
     try
        lblTot10r.Caption := FormatFloat('#,##0.00', StrToInt64Def(edtQtd10r.Text,0) * 10);
     except
        lblTot10r.Caption := '0,00';
     end;
     CalculaTotal;
end;

procedure TFrm_fechar_caixa.edtQtd1rChange(Sender: TObject);
begin
     try
        lblTot1r.Caption := FormatFloat('#,##0.00', StrToInt64Def(edtQtd1r.Text,0) * 1);
     except
        lblTot1r.Caption := '0,00';
     end;
     CalculaTotal;
end;

procedure TFrm_fechar_caixa.edtQtd20rChange(Sender: TObject);
begin
     try
        lblTot20r.Caption := FormatFloat('#,##0.00', StrToInt64Def(edtQtd20r.Text,0) * 20);
     except
        lblTot20r.Caption := '0,00';
     end;
     CalculaTotal;
end;

procedure TFrm_fechar_caixa.edtQtd25cChange(Sender: TObject);
begin
     try
        lblTot25c.Caption := FormatFloat('#,##0.00', StrToInt64Def(edtQtd25c.Text,0) * 0.25);
     except
        lblTot25c.Caption := '0,00';
     end;
     CalculaTotal;
end;

procedure TFrm_fechar_caixa.edtQtd2rChange(Sender: TObject);
begin
     try
        lblTot2r.Caption := FormatFloat('#,##0.00', StrToInt64Def(edtQtd2r.Text,0) * 2);
     except
        lblTot2r.Caption := '0,00';
     end;
     CalculaTotal;
end;

procedure TFrm_fechar_caixa.edtQtd50cChange(Sender: TObject);
begin
     try
        lblTot50c.Caption := FormatFloat('#,##0.00', StrToInt64Def(edtQtd50c.Text,0) * 0.50);
     except
        lblTot50c.Caption := '0,00';
     end;
     CalculaTotal;
end;

procedure TFrm_fechar_caixa.edtQtd50rChange(Sender: TObject);
begin
     try
        lblTot50r.Caption := FormatFloat('#,##0.00', StrToInt64Def(edtQtd50r.Text,0) * 50);
     except
        lblTot50r.Caption := '0,00';
     end;
     CalculaTotal;
end;

procedure TFrm_fechar_caixa.edtQtd5cChange(Sender: TObject);
begin
     try
        lblTot5c.Caption := FormatFloat('#,##0.00', StrToInt64Def(edtQtd5c.Text,0) * 0.05);
     except
        lblTot5c.Caption := '0,00';
     end;
     CalculaTotal;
end;

procedure TFrm_fechar_caixa.edtQtd5cEnter(Sender: TObject);
begin
     TEdit(Sender).SelectAll;
end;

procedure TFrm_fechar_caixa.edtQtd5cExit(Sender: TObject);
begin
     try
        TEdit(Sender).Text := IntToStr( StrToInt64Def(TEdit(Sender).Text,0));
     except
        TEdit(Sender).Text := '0';
     end;
end;

procedure TFrm_fechar_caixa.edtQtd5rChange(Sender: TObject);
begin
     try
        lblTot5r.Caption := FormatFloat('#,##0.00', StrToInt64Def(edtQtd5r.Text,0) * 5);
     except
        lblTot5r.Caption := '0,00';
     end;
     CalculaTotal;
end;

procedure TFrm_fechar_caixa.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  Action := cafree;
  self := nil;
end;

procedure TFrm_fechar_caixa.FormShow(Sender: TObject);
var qry_tmp: TFDQuery;
begin
     lblCaixa.Caption := IntToStr(ID_CAIXA);

     qCaixa.Open('SELECT * FROM CAIXA WHERE id = '+IntToStr(ID_CAIXA));
     qCaixa.Edit;

     qry_tmp := simplequery(' SELECT '+
                            '    VP.COD_TIPO_PAGAMENTO AS TIPO, VP.TIPO_PAGAMENTO, SUM(VP.VALOR_DEBITADO) AS TOTAL '+
                            ' FROM '+
                            '    Venda_pagamento vp '+
                            ' INNER JOIN venda v ON v.CODIGO_VENDA = vp.CODIGO_VENDA '+
                            ' WHERE '+
                            '     V.IDCAIXA = '+IntToStr(ID_CAIXA)+' AND V.STATUS = '+QuotedStr('FECHADA')+
                            ' GROUP BY VP.COD_TIPO_PAGAMENTO, VP.TIPO_PAGAMENTO');
     if qry_tmp <> nil then
     begin
          while not qry_tmp.Eof do
          begin
               if qry_tmp.FieldByName('TIPO').AsString = '01' then
                  qCaixaVendaDinheiro.AsFloat  := qry_tmp.FieldByName('TOTAL').AsFloat;

               if qry_tmp.FieldByName('TIPO').AsString = '02' then
                  qCaixaVendaCheque.AsFloat  := qry_tmp.FieldByName('TOTAL').AsFloat;

               if qry_tmp.FieldByName('TIPO').AsString = '03' then
                  qCaixaVendaCartaoCredito.AsFloat  := qry_tmp.FieldByName('TOTAL').AsFloat;

               if qry_tmp.FieldByName('TIPO').AsString = '04' then
                  qCaixaVendaCartaoDebito.AsFloat  := qry_tmp.FieldByName('TOTAL').AsFloat;

               if qry_tmp.FieldByName('TIPO').AsString = '101' then
                  qCaixaVendaConvenio.AsFloat  := qry_tmp.FieldByName('TOTAL').AsFloat;

               if qry_tmp.FieldByName('TIPO').AsString = '100' then
                  qCaixaVendaCrediario.AsFloat  := qry_tmp.FieldByName('TOTAL').AsFloat;

               if qry_tmp.FieldByName('TIPO').AsString = '99' then
                  qCaixaVendaOutros.AsFloat  := qry_tmp.FieldByName('TOTAL').AsFloat;

               qCaixaTotalVendas.AsFloat := qry_tmp.FieldByName('TOTAL').AsFloat;
               qry_tmp.Next;
          end;
     end;

     qry_tmp := simplequery(' SELECT SUM(total) AS TOTAL, Operacao FROM caixadetalhe '+
                            ' WHERE IDCAIXA = '+IntToStr(ID_CAIXA)+
                            ' GROUP BY Operacao');
     if qry_tmp <> nil then
     begin
          while not qry_tmp.Eof do
          begin
               if (qry_tmp.FieldByName('Operacao').AsString = '01') OR (qry_tmp.FieldByName('Operacao').AsString = '03') then
               begin
                    qCaixaTotalSuprimento.AsFloat := qCaixaTotalSuprimento.AsFloat + qry_tmp.FieldByName('TOTAL').AsFloat;
               end;

               if qry_tmp.FieldByName('Operacao').AsString = '02' then
               begin
                    qCaixaTotalSangria.AsFloat := qry_tmp.FieldByName('TOTAL').AsFloat;
               end;

               qry_tmp.Next;
          end;
     end;

     CalculaTotal;
end;

procedure TFrm_fechar_caixa.qCaixaConferenciaChequeValidate(
  Sender: TField);
begin
     CalculaTotal;
end;

end.
