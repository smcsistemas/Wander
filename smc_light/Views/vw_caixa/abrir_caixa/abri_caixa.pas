//Verificado automaticamente em 16/06/2020 09:29
unit abri_caixa;

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
  dxGDIPlusClasses, Data.DB, h_Functions, u_funcoes, h_nf_Functions,
  h_UIFunctions, c_Globals, FireDAC.Stan.Intf, FireDAC.Stan.Option,
  FireDAC.Stan.Param, FireDAC.Stan.Error, FireDAC.DatS, FireDAC.Phys.Intf,
  FireDAC.DApt.Intf, FireDAC.Stan.Async, FireDAC.DApt,
  FireDAC.Comp.DataSet, FireDAC.Comp.Client, Datasnap.DBClient, cxTextEdit,
  cxCurrencyEdit, registry, v_Env, u_diretorios, v_Dir;

type
  TFrm_abrir_caixa = class(TForm)
    Label1: TLabel;
    Label3: TLabel;
    Label2: TLabel;
    Label10: TLabel;
    dtCaixa: TDateTimePicker;
    cxButton2: TcxButton;
    BtnIncluir: TcxButton;
    qTurno: TFDQuery;
    qOperador: TFDQuery;
    qTurnoCodigo: TFDAutoIncField;
    qTurnoDescricao: TStringField;
    qTurnoInicio: TTimeField;
    qTurnoFim: TTimeField;
    DBLookupComboBox1: TDBLookupComboBox;
    DBLookupComboBox2: TDBLookupComboBox;
    cds: TClientDataSet;
    cdsCodigoTurno: TIntegerField;
    cdsCodigoColaborador: TIntegerField;
    dsTurno: TDataSource;
    dsOperador: TDataSource;
    dsCds: TDataSource;
    qCaixa: TFDQuery;
    dsCaixa: TDataSource;
    qCaixaId: TFDAutoIncField;
    qCaixaData: TDateTimeField;
    qCaixaCodigoTurno: TIntegerField;
    qCaixaCodigoUsuario: TIntegerField;
    qCaixaSituacao: TStringField;
    qCaixaPDV: TStringField;
    edtSuprimento: TcxCurrencyEdit;
    qCaixaDet: TFDQuery;
    qCaixaDetId: TFDAutoIncField;
    qCaixaDetDescricao: TStringField;
    qCaixaDetOperacao: TStringField;
    qCaixaDetDescricaoOperacao: TStringField;
    qCaixaDetIdCaixa: TIntegerField;
    qCaixaDetTotal: TBCDField;
    qCaixaDetOperador: TStringField;
    qCaixaDetLancamento: TDateTimeField;
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
    qCaixaDetCodigoUsuario: TIntegerField;
    qCaixaConferenciaDinheiro: TBCDField;
    qCaixaConferenciaCheque: TBCDField;
    qCaixaConferenciaCartaoCredito: TBCDField;
    qCaixaConferenciaCartaoDebito: TBCDField;
    qCaixaConferenciaConvenio: TBCDField;
    qCaixaConferenciaCrediario: TBCDField;
    qCaixaConferenciaOutros: TBCDField;
    qCaixaTotalDiferenca: TBCDField;
    qCaixaQuebraDinheiro: TBCDField;
    qCaixaQuebraCartaoDebito: TBCDField;
    qCaixaQuebraCartaoCredito: TBCDField;
    qCaixaQuebraCheque: TBCDField;
    qOperadorcodigo: TFDAutoIncField;
    qOperadorusuario: TStringField;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure cxButton2Click(Sender: TObject);
    procedure BtnIncluirClick(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure edtSuprimentoKeyPress(Sender: TObject; var Key: Char);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Frm_abrir_caixa: TFrm_abrir_caixa;

implementation

{$R *.dfm}

uses vw_pdv, funcoes_sistema, fluxo_caixa, vw_main;

procedure TFrm_abrir_caixa.BtnIncluirClick(Sender: TObject);
begin
     if cdsCodigoTurno.IsNull or (cdsCodigoTurno.AsInteger = 0) then
     begin
          Application.MessageBox('Informe o turno do caixa!','Abertura do caixa',MB_OK);
          DBLookupComboBox1.SetFocus;
          Exit;
     end;

     if cdsCodigoColaborador.IsNull or (cdsCodigoColaborador.AsInteger = 0) then
     begin
          Application.MessageBox('Informe o operador do caixa!','Abertura do caixa',MB_OK);
          DBLookupComboBox2.SetFocus;
          Exit;
     end;

     qCaixa.Open('SELECT * FROM CAIXA WHERE ID IS NULL');
     qCaixaDet.Open('Select * from CaixaDetalhe WHERE ID IS NULL');

     qCaixa.Append;
     qCaixaData.AsDateTime := now;
     qCaixaCodigoTurno.AsInteger := cdsCodigoTurno.AsInteger;
     qCaixaCodigoUsuario.AsInteger := cdsCodigoColaborador.AsInteger;
     qCaixaSituacao.AsString := 'A';
     qCaixaPDV.AsString := FormatFloat('000', NumeroTerminal);
     qCaixaTotalAbertura.AsFloat  := edtSuprimento.Value;
     qCaixaVendaDinheiro.AsFloat := 0;
     qCaixaVendaCheque.AsFloat := 0;
     qCaixaVendaCartaoCredito.AsFloat := 0;
     qCaixaVendaCartaoDebito.AsFloat := 0;
     qCaixaVendaConvenio.AsFloat := 0;
     qCaixaVendaCrediario.AsFloat := 0;
     qCaixaVendaOutros.AsFloat := 0;
     qCaixaTotalRecebimento.AsFloat := 0;
     qCaixaTotalSuprimento.AsFloat := 0;
     qCaixaTotalSangria.AsFloat := 0;
     qCaixaTotalVendas.AsFloat := 0;
     qCaixaTotalCaixa.AsFloat := 0;
     qCaixaConferenciaDinheiro.AsFloat := 0;
     qCaixaConferenciaCheque.AsFloat := 0;
     qCaixaConferenciaCartaoCredito.AsFloat := 0;
     qCaixaConferenciaCartaoDebito.AsFloat := 0;
     qCaixaConferenciaConvenio.AsFloat := 0;
     qCaixaConferenciaCrediario.AsFloat := 0;
     qCaixaConferenciaOutros.AsFloat := 0;
     qCaixaTotalDiferenca.AsFloat := 0;
     qCaixaQuebraDinheiro.AsFloat := 0;
     qCaixaQuebraCartaoDebito.AsFloat := 0;
     qCaixaQuebraCartaoCredito.AsFloat := 0;
     qCaixaQuebraCheque.AsFloat := 0;
     qCaixa.Post;

     qCaixaDet.Append;
     qCaixaDetDescricao.AsString  := 'ABERTURA DE CAIXA';
     qCaixaDetOperacao.AsString := '01';
     qCaixaDetDescricaoOperacao.AsString := 'ABERTURA DE CAIXA';
     qCaixaDetIdCaixa.AsInteger := qCaixaId.AsInteger;
     qCaixaDetTotal.AsFloat := edtSuprimento.Value;
     qCaixaDetCodigoUsuario.AsInteger := cdsCodigoColaborador.AsInteger;
     qCaixaDetOperador.AsString := qOperadorusuario.AsString;
     qCaixaDetLancamento.AsDateTime := now;
     qCaixaDet.Post;

     ID_CAIXA := qCaixaId.AsInteger;

     Close;
     (*
     if not TFunctions.CheckOpen(Frm_PDV) then
     begin
          Frm_PDV := TFrm_PDV.Create(nil);
          Frm_PDV.showmodal;
          Close;
     end;
     *)
end;


procedure TFrm_abrir_caixa.cxButton2Click(Sender: TObject);
begin
     if TEnv.Core.pdvOnly then
     begin
          TFunctions.write_Log('Sistema Finalizado!');

          if TFunctions.isRunning(extractfilename(tdir.SMC_SERVICOS.exe_old)) then
             TFunctions.KillProcess(extractfilename(tdir.SMC_SERVICOS.exe_old));

          Application.Terminate;
     end
     else
         Close;
end;

procedure TFrm_abrir_caixa.edtSuprimentoKeyPress(Sender: TObject;
  var Key: Char);
begin
  if Key = #13 then
  begin
  BtnIncluir.SetFocus;
  end

end;

procedure TFrm_abrir_caixa.FormClose(Sender: TObject; var Action: TCloseAction);
begin
     Action := cafree;
     self := nil;
end;

procedure TFrm_abrir_caixa.FormShow(Sender: TObject);
begin
     dtCaixa.DateTime := now;

     cds.CreateDataSet;
     cds.Append;

     qTurno.Open;
     qOperador.Open;
     qCaixa.Open;

     cdsCodigoColaborador.AsInteger := TEnv.Tuser.id;
end;

end.
