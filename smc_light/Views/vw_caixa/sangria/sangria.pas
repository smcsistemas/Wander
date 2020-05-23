unit sangria;

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
  dxSkinXmas2008Blue, Vcl.Menus, Vcl.StdCtrls, cxButtons, cxTextEdit, cxDBEdit,
  dxGDIPlusClasses, Vcl.ExtCtrls, cxSpinEdit, cxTimeEdit, cxMaskEdit,
  cxDropDownEdit, cxCalendar, FireDAC.Stan.Intf, FireDAC.Stan.Option,
  FireDAC.Stan.Param, FireDAC.Stan.Error, FireDAC.DatS,
  FireDAC.Stan.Async, FireDAC.DApt, Data.DB,
  FireDAC.Comp.DataSet, FireDAC.Comp.Client, cxCurrencyEdit, FireDAC.Phys.Intf, FireDAC.DApt.Intf,
  Vcl.DBCtrls, Vcl.ComCtrls, dxCore, cxDateUtils, Datasnap.DBClient,
  Vcl.Mask, c_Globals, relatorios;

type
  TFrm_sangria = class(TForm)
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
    Label3: TLabel;
    Label2: TLabel;
    Label10: TLabel;
    Label4: TLabel;
    cxButton2: TcxButton;
    cxButton1: TcxButton;
    edtSangria: TcxCurrencyEdit;
    edtData: TcxDateEdit;
    DBLookupComboBox1: TDBLookupComboBox;
    DBLookupComboBox2: TDBLookupComboBox;
    edtHist: TMaskEdit;
    edtPDV: TMaskEdit;
    Label1: TLabel;
    Label5: TLabel;
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
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormCreate(Sender: TObject);
    procedure cxButton1Click(Sender: TObject);
    procedure cxButton2Click(Sender: TObject);
    procedure cxButton3Click(Sender: TObject);
    procedure edtSangriaKeyPress(Sender: TObject; var Key: Char);
    procedure edtHistKeyPress(Sender: TObject; var Key: Char);


  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Frm_sangria: TFrm_sangria;
  onOpen: boolean;

implementation

uses
  s_module, u_funcoes;

{$R *.dfm}



procedure TFrm_sangria.cxButton1Click(Sender: TObject);
begin
     if cdsCodigoTurno.IsNull or (cdsCodigoTurno.AsInteger = 0) then
     begin
          Application.MessageBox('Informe o turno do caixa!','Sangria do caixa',MB_OK);
          DBLookupComboBox1.SetFocus;
          Exit;
     end;

     if cdsCodigoColaborador.IsNull or (cdsCodigoColaborador.AsInteger = 0) then
     begin
          Application.MessageBox('Informe o operador do caixa!','Sangria do caixa',MB_OK);
          DBLookupComboBox2.SetFocus;
          Exit;
     end;

     if edtSangria.Value = 0 then
     begin
          Application.MessageBox('Informe o valor da retirada do caixa!','Sangria do caixa',MB_OK);
          edtSangria.SetFocus;
          Exit;
     end;

     if Trim(edtHist.Text) = '' then
     begin
          Application.MessageBox('Informe o histórico do caixa!','Sangria do caixa',MB_OK);
          edtHist.SetFocus;
          Exit;
     end;

     qCaixaDet.Close;
     qCaixaDet.Open('SELECT * FROM CaixaDetalhe where id is null');
     qCaixaDet.Append;
     qCaixaDetDescricao.AsString := edtHist.Text;
     qcaixaDetOperacao.AsString := '02';
     qCaixaDetDescricaoOperacao.AsString := 'RETIRADA DO CAIXA';
     qCaixaDetIdCaixa.AsInteger := ID_CAIXA;
     qCaixaDetTotal.AsFloat := edtSangria.Value;
     qCaixaDetOperador.AsString  := qOperadorusuario.AsString;
     qCaixaDetLancamento.AsDateTime := now;
     qCaixaDetCodigoUsuario.AsInteger := cdsCodigoColaborador.AsInteger;
     qCaixaDet.Post;

     edtHist.Clear;
     edtSangria.Clear;

     tfrm_relatorio.Create(nil).ImprimeComprovante(qCaixaDetId.AsInteger).Close;
     Application.MessageBox('Lançamento efetuado com sucesso!','Sangria do caixa',MB_OK);
     edtHist.SetFocus;
end;

procedure TFrm_sangria.cxButton2Click(Sender: TObject);
begin
     Close;
end;

procedure TFrm_sangria.cxButton3Click(Sender: TObject);
begin
     if qCaixaDet.Active and (qCaixaDetId.AsInteger > 0) then
        tfrm_relatorio.Create(nil).ImprimeComprovante(qCaixaDetId.AsInteger).Close;
end;

procedure TFrm_sangria.edtHistKeyPress(Sender: TObject; var Key: Char);
begin
  if Key = #13 then
  begin
  cxButton1.SetFocus;
  end
end;

procedure TFrm_sangria.edtSangriaKeyPress(Sender: TObject; var Key: Char);
begin
 if Key = #13 then
  begin
  edtHist.SetFocus;
  end
end;

procedure TFrm_sangria.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  Action := caFree;
  Self := nil;
end;


procedure TFrm_sangria.FormCreate(Sender: TObject);
begin
     edtData.Date := now;
     edtPDV.Text := FormatFloat('000', NumeroTerminal);

     onOpen := true;

     cds.CreateDataSet;
     cds.Append;

     qTurno.Open;
     qOperador.Open;
     edtData.Date := Date;

     cdsCodigoTurno.AsInteger := simplequery('SELECT CodigoTurno FROM Caixa where Id = '+IntToStr(ID_CAIXA)).Fields[0].AsInteger;
     cdsCodigoColaborador.AsInteger := simplequery('SELECT CodigoUsuario FROM Caixa where Id = '+IntToStr(ID_CAIXA)).Fields[0].AsInteger;
end;

end.
