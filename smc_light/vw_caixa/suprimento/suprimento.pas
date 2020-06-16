//Verificado automaticamente em 16/06/2020 09:30
unit suprimento;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, cxGraphics, cxControls, cxLookAndFeels,
  cxLookAndFeelPainters, cxContainer, cxEdit, dxSkinsCore, dxSkinBlack,
  dxSkinBlue, dxSkinBlueprint, dxSkinCaramel, dxSkinCoffee, dxSkinDarkRoom,
  dxSkinDarkSide, dxSkinDevExpressDarkStyle, dxSkinDevExpressStyle, dxSkinFoggy,
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
  dxSkinXmas2008Blue, Vcl.Menus, Vcl.StdCtrls, cxButtons, Vcl.ExtCtrls,
  cxGroupBox, Vcl.ComCtrls, Vcl.DBCtrls, Vcl.Grids, Vcl.DBGrids,
  dxGDIPlusClasses, Data.DB, Vcl.Mask, cxTextEdit, cxCurrencyEdit, dxCore,
  cxDateUtils, cxMaskEdit, cxDropDownEdit, cxCalendar, FireDAC.Stan.Intf,
  FireDAC.Stan.Option, FireDAC.Stan.Param, FireDAC.Stan.Error,
  FireDAC.DatS, FireDAC.Phys.Intf, FireDAC.DApt.Intf, FireDAC.Stan.Async,
  FireDAC.DApt, Datasnap.DBClient, FireDAC.Comp.DataSet,
  FireDAC.Comp.Client, u_funcoes, c_Globals, relatorios;

type
  TFrm_suprimento = class(TForm)
    Label1: TLabel;
    Label3: TLabel;
    Label2: TLabel;
    Label10: TLabel;
    Label4: TLabel;
    Label5: TLabel;
    cxButton2: TcxButton;
    cxButton1: TcxButton;
    edtSuprimento: TcxCurrencyEdit;
    edtData: TcxDateEdit;
    dsTurno: TDataSource;
    qTurno: TFDQuery;
    qTurnoCodigo: TFDAutoIncField;
    qTurnoDescricao: TStringField;
    qTurnoInicio: TTimeField;
    qTurnoFim: TTimeField;
    qOperador: TFDQuery;
    dsOperador: TDataSource;
    dsCds: TDataSource;
    cds: TClientDataSet;
    cdsCodigoTurno: TIntegerField;
    cdsCodigoColaborador: TIntegerField;
    DBLookupComboBox1: TDBLookupComboBox;
    DBLookupComboBox2: TDBLookupComboBox;
    edtHist: TMaskEdit;
    edtPDV: TMaskEdit;
    cxButton3: TcxButton;
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
    qOperadorcodigo: TFDAutoIncField;
    qOperadorusuario: TStringField;
    procedure btn_caixaClick(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure btn_fluxoClick(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure cxButton1Click(Sender: TObject);
    procedure cxButton2Click(Sender: TObject);
    procedure cxButton3Click(Sender: TObject);
    procedure edtSuprimentoKeyPress(Sender: TObject; var Key: Char);
    procedure edtHistKeyPress(Sender: TObject; var Key: Char);

  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Frm_suprimento: TFrm_suprimento;

implementation

{$R *.dfm}

uses vw_pdv, funcoes_sistema, fluxo_caixa, vw_main;



procedure TFrm_suprimento.btn_caixaClick(Sender: TObject);
begin
 Frm_PDV := TFrm_PDV.Create(nil);
  Frm_PDV.showmodal;
end;

procedure TFrm_suprimento.btn_fluxoClick(Sender: TObject);
begin
Frm_fluxo_caixa:= TFrm_fluxo_caixa.create(nil);
Frm_fluxo_caixa.ShowModal;
end;

procedure TFrm_suprimento.cxButton1Click(Sender: TObject);
begin
     if cdsCodigoTurno.IsNull or (cdsCodigoTurno.AsInteger = 0) then
     begin
          Application.MessageBox('Informe o turno do caixa!','Suprimento do caixa',MB_OK);
          DBLookupComboBox1.SetFocus;
          Exit;
     end;

     if cdsCodigoColaborador.IsNull or (cdsCodigoColaborador.AsInteger = 0) then
     begin
          Application.MessageBox('Informe o operador do caixa!','Suprimento do caixa',MB_OK);
          DBLookupComboBox2.SetFocus;
          Exit;
     end;

     if edtSuprimento.Value = 0 then
     begin
          Application.MessageBox('Informe o valor da retirada do caixa!','Suprimento do caixa',MB_OK);
          edtSuprimento.SetFocus;
          Exit;
     end;

     if Trim(edtHist.Text) = '' then
     begin
          Application.MessageBox('Informe o histórico do caixa!','Suprimento do caixa',MB_OK);
          edtHist.SetFocus;
          Exit;
     end;

     qCaixaDet.Close;
     qCaixaDet.Open('SELECT * FROM CaixaDetalhe where id is null');
     qCaixaDet.Append;
     qCaixaDetDescricao.AsString := edtHist.Text;
     qcaixaDetOperacao.AsString := '03';
     qCaixaDetDescricaoOperacao.AsString := 'SUPRIMENTO DO CAIXA';
     qCaixaDetIdCaixa.AsInteger := ID_CAIXA;
     qCaixaDetTotal.AsFloat := edtSuprimento.Value;
     qCaixaDetOperador.AsString  := qOperadorusuario.AsString;
     qCaixaDetLancamento.AsDateTime := now;
     qCaixaDetCodigoUsuario.AsInteger := cdsCodigoColaborador.AsInteger;
     qCaixaDet.Post;

     edtHist.Clear;
     edtSuprimento.Clear;

     tfrm_relatorio.Create(nil).ImprimeComprovante(qCaixaDetId.AsInteger).Close;

     Application.MessageBox('Lançamento efetuado com sucesso!','Suprimento do caixa',MB_OK);
     edtHist.SetFocus;
end;

procedure TFrm_suprimento.cxButton2Click(Sender: TObject);
begin
     Close;
end;

procedure TFrm_suprimento.cxButton3Click(Sender: TObject);
begin
     if qCaixaDet.Active and (qCaixaDetId.AsInteger > 0) then
        tfrm_relatorio.Create(nil).ImprimeComprovante(qCaixaDetId.AsInteger).Close;
end;

procedure TFrm_suprimento.edtHistKeyPress(Sender: TObject; var Key: Char);
begin
    if Key = #13 then
  begin
  cxButton1.SetFocus;
  end
end;

procedure TFrm_suprimento.edtSuprimentoKeyPress(Sender: TObject;
  var Key: Char);
begin
  if Key = #13 then
  begin
  edthist.SetFocus;
  end
end;

procedure TFrm_suprimento.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  Action := cafree;
  self := nil;
end;

procedure TFrm_suprimento.FormCreate(Sender: TObject);
begin
     edtData.Date := now;
     edtPDV.Text := FormatFloat('000', NumeroTerminal);

     cds.CreateDataSet;
     cds.Append;

     qTurno.Open;
     qOperador.Open;
     edtData.Date := Date;

     cdsCodigoTurno.AsInteger := simplequery('SELECT CodigoTurno FROM Caixa where Id = '+IntToStr(ID_CAIXA)).Fields[0].AsInteger;
     cdsCodigoColaborador.AsInteger := simplequery('SELECT CodigoUsuario FROM Caixa where Id = '+IntToStr(ID_CAIXA)).Fields[0].AsInteger;
end;

end.
