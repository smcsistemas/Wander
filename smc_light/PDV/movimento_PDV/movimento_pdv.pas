//Verificado automaticamente em 16/06/2020 09:28
unit movimento_pdv;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, cxGraphics, cxControls,
  cxLookAndFeels, cxLookAndFeelPainters, cxStyles, dxSkinsCore,
  dxSkinBlack, dxSkinBlue, dxSkinBlueprint, dxSkinCaramel, dxSkinCoffee,
  dxSkinDarkRoom, dxSkinDarkSide, dxSkinDevExpressDarkStyle,
  dxSkinDevExpressStyle, dxSkinFoggy, dxSkinGlassOceans,
  dxSkinHighContrast, dxSkiniMaginary, dxSkinLilian, dxSkinLiquidSky,
  dxSkinLondonLiquidSky, dxSkinMcSkin, dxSkinMetropolis,
  dxSkinMetropolisDark, dxSkinMoneyTwins, dxSkinOffice2007Black,
  dxSkinOffice2007Blue, dxSkinOffice2007Green, dxSkinOffice2007Pink,
  dxSkinOffice2007Silver, dxSkinOffice2010Black, dxSkinOffice2010Blue,
  dxSkinOffice2010Silver, dxSkinOffice2013DarkGray,
  dxSkinOffice2013LightGray, dxSkinOffice2013White,
  dxSkinOffice2016Colorful, dxSkinOffice2016Dark, dxSkinPumpkin,
  dxSkinSeven, dxSkinSevenClassic, dxSkinSharp, dxSkinSharpPlus,
  dxSkinSilver, dxSkinSpringTime, dxSkinStardust, dxSkinSummer2008,
  dxSkinTheAsphaltWorld, dxSkinsDefaultPainters, dxSkinValentine,
  dxSkinVisualStudio2013Blue, dxSkinVisualStudio2013Dark,
  dxSkinVisualStudio2013Light, dxSkinVS2010, dxSkinWhiteprint,
  dxSkinXmas2008Blue, dxSkinscxPCPainter, cxCustomData, cxFilter, cxData,
  cxDataStorage, cxEdit, cxNavigator, Data.DB, cxDBData, cxLabel,
  cxMaskEdit, cxContainer, Vcl.Menus, Vcl.ExtCtrls, Vcl.StdCtrls, Vcl.Mask,
  Vcl.DBCtrls, cxTextEdit, cxDropDownEdit, Vcl.ComCtrls, cxButtons,
  cxGroupBox, cxGridLevel, cxGridCustomTableView, cxGridTableView,
  cxGridDBTableView, cxClasses, cxGridCustomView, cxGrid,
  FireDAC.Stan.Intf, FireDAC.Stan.Option, FireDAC.Stan.Param,
  FireDAC.Stan.Error, FireDAC.DatS, FireDAC.Phys.Intf, FireDAC.DApt.Intf,
  FireDAC.Stan.Async, FireDAC.DApt, FireDAC.Comp.DataSet,
  FireDAC.Comp.Client, Datasnap.DBClient, u_funcoes, Vcl.Grids, Vcl.DBGrids;

type
  Tfrm_movimento_pdv = class(TForm)
    cxGroupBox6: TcxGroupBox;
    Label20: TLabel;
    cxButton13: TcxButton;
    dtInicial: TDateTimePicker;
    dtFinal: TDateTimePicker;
    Label23: TLabel;
    cxButton1: TcxButton;
    Label1: TLabel;
    cxButton2: TcxButton;
    Label2: TLabel;
    Label3: TLabel;
    cxComboBox2: TcxComboBox;
    Label4: TLabel;
    Shape1: TShape;
    Label5: TLabel;
    lbTotal: TLabel;
    cxButton3: TcxButton;
    cxButton4: TcxButton;
    cds: TClientDataSet;
    cdsCodigoTurno: TIntegerField;
    cdsCodigoColaborador: TIntegerField;
    qCaixa: TFDQuery;
    dsCds: TDataSource;
    dsOperador: TDataSource;
    qOperador: TFDQuery;
    DBLookupComboBox2: TDBLookupComboBox;
    txtPDV: TMaskEdit;
    dsCaixa: TDataSource;
    cxGrid2: TcxGrid;
    cxGridDBTableView1: TcxGridDBTableView;
    cxGridLevel1: TcxGridLevel;
    qCaixaLANCAMENTO: TDateTimeField;
    qCaixaPDV: TStringField;
    qCaixanome: TStringField;
    qCaixaOperacao: TStringField;
    qCaixadescricao: TStringField;
    qCaixaTipo: TStringField;
    cxGridDBTableView1LANCAMENTO: TcxGridDBColumn;
    cxGridDBTableView1PDV: TcxGridDBColumn;
    cxGridDBTableView1nome: TcxGridDBColumn;
    cxGridDBTableView1Operacao: TcxGridDBColumn;
    cxGridDBTableView1Total: TcxGridDBColumn;
    cxGridDBTableView1descricao: TcxGridDBColumn;
    cxGridDBTableView1Tipo: TcxGridDBColumn;
    qCaixaCodigoOperacao: TStringField;
    qCaixatotal: TBCDField;
    cxStyleRepository1: TcxStyleRepository;
    cxStyle1: TcxStyle;
    cxStyle2: TcxStyle;
    qOperadorcodigo: TFDAutoIncField;
    qOperadorusuario: TStringField;
    qTurno: TFDQuery;
    qTurnoCodigo: TFDAutoIncField;
    qTurnoDescricao: TStringField;
    qTurnoInicio: TTimeField;
    qTurnoFim: TTimeField;
    dsTurno: TDataSource;
    DBLookupComboBox1: TDBLookupComboBox;

    procedure ConsultaMovimento;
    procedure TotalCaixa;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure cxButton3Click(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure cxButton13Click(Sender: TObject);
    procedure cxGridDBTableView1TotalStylesGetContentStyle(
      Sender: TcxCustomGridTableView; ARecord: TcxCustomGridRecord;
      AItem: TcxCustomGridTableItem; var AStyle: TcxStyle);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frm_movimento_pdv: Tfrm_movimento_pdv;

implementation

{$R *.dfm}

procedure Tfrm_movimento_pdv.ConsultaMovimento;
var SQL : string;
begin
     SQL := 'SELECT '+
            '	 CD.LANCAMENTO, c.PDV, o.usuario as nome, cd.descricaooperacao AS Operacao, '+
            ' 	 COALESCE(vp.VALOR_DEBITADO, cd.Total) AS total, cd.descricao, COALESCE(vp.TIPO_PAGAMENTO,'+QuotedStr('Dinheiro')+' ) AS Tipo, cd.operacao AS CodigoOperacao '+
            ' FROM CAIXADETALHE CD '+
            ' INNER JOIN CAIXA C ON C.Id = cd.IdCaixa '+
            ' LEFT JOIN usuario o ON o.codigo = cd.codigousuario '+
            ' LEFT JOIN Venda v ON v.codigo_venda = cd.codigovenda '+
            ' LEFT JOIN venda_pagamento vp ON vp.CODIGO_VENDA = v.codigo_venda '+
            ' WHERE C.ID IS NOT NULL AND (CD.CODIGOVENDA IS NULL OR (CD.CODIGOVENDA IS NOT NULL AND V.STATUS = '+QuotedStr('FECHADA')+')) ';

     SQL := SQL + ' AND CD.LANCAMENTO BETWEEN '+QuotedStr(FormatDateTime('yyyy-MM-dd', dtInicial.Date)+' 00:00:00')+' AND '+QuotedStr(FormatDateTime('yyyy-MM-dd', dtFinal.Date)+' 23:59:59');

     if StrToIntDef(txtPDV.Text,0) > 0 then
        SQL := SQL + ' AND C.PDV = '+QuotedStr(FormatFloat('000', StrToIntDef(txtPDV.Text,0)));

     if cdsCodigoColaborador.AsInteger > 0 then
        SQL := SQL + ' AND CD.CodigoUsuario = '+cdsCodigoColaborador.AsString;

     if cdsCodigoTurno.AsInteger > 0 then
        SQL := SQL + ' AND C.CodigoTurno = '+cdsCodigoTurno.AsString;

     qCaixa.Close;
     qCaixa.Open(SQL);

     TotalCaixa;
end;

procedure Tfrm_movimento_pdv.cxButton13Click(Sender: TObject);
begin
     ConsultaMovimento;
end;

procedure Tfrm_movimento_pdv.cxButton3Click(Sender: TObject);
begin
     Close;
end;

procedure Tfrm_movimento_pdv.cxGridDBTableView1TotalStylesGetContentStyle(
  Sender: TcxCustomGridTableView; ARecord: TcxCustomGridRecord;
  AItem: TcxCustomGridTableItem; var AStyle: TcxStyle);
begin
     (*
     if qCaixa.Active and (qCaixa.RecordCount > 0) then
     begin
          if qCaixaCodigoOperacao.AsString = '02' then
             ACanvas.Font.Color := clRed
          else
             ACanvas.Font.Color := clGreen;
     end;
     *)
     if Pos('RETIRADA', ARecord.Values[cxGridDBTableView1Operacao.Index]) > 0 then
        AStyle := cxStyle1
     else
        AStyle := cxStyle2;
end;

procedure Tfrm_movimento_pdv.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  Action := cafree;
  self := nil;

end;

procedure Tfrm_movimento_pdv.FormShow(Sender: TObject);
begin
     cds.CreateDataSet;
     cds.Append;
     lbTotal.Caption := 'R$ 0,00';
     qOperador.Open;
     qTurno.Open;
     dtInicial.Date := now;
     dtFinal.Date := now;
     txtPDV.Text := FormatFloat('000',NumeroTerminal);
end;

procedure Tfrm_movimento_pdv.TotalCaixa;
var liquido : Double;
begin
     liquido := 0;

     qCaixa.First;
     while not qCaixa.Eof do
     begin
          if qCaixaCodigoOperacao.AsString = '02' then
             liquido := liquido - qCaixaTotal.AsFloat
          else
             liquido := liquido + qCaixaTotal.AsFloat;

          qCaixa.Next;
     end;
     qCaixa.First;

     lbTotal.Caption := 'R$ '+FormatFloat('#,###,##0.00', liquido);
end;

end.
