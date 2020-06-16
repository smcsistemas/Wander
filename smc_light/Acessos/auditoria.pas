//Verificado automaticamente em 16/06/2020 09:26
unit auditoria;
{
================================================================================
|   DATA   |DESENVOLVEDOR|HISTORICO DA ALTERACAO DO CODIGO                     |
|----------|-------------|-----------------------------------------------------|
|22/02/2020|WANDER       |Criado Timer para n�o registrar as consultas parciais|
|        20|             |Ex: PRODUTO, registrava P, PR, PRO, PROD, PRODU...   |
|          |             |Agora h� uma espera de 3 segundos para avaliar se o  |
|          |             |texto argumento de pesquisa mudou, dando tempo para o|
|          |             |usu�rio escrever a palavra toda (PRODUTO) e somente  |
|          |             |entao regisrar o log                                 |
================================================================================
}
interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, cxGraphics, cxControls, cxLookAndFeels,
  cxLookAndFeelPainters, cxContainer, cxEdit, dxSkinsCore,
  dxSkinOffice2007Silver, dxSkinOffice2013LightGray, dxSkinOffice2013White,
  Vcl.Menus, cxStyles, dxSkinscxPCPainter, cxCustomData, cxFilter, cxData,
  cxDataStorage, cxNavigator, Data.DB, cxDBData, cxGridLevel,
  cxGridCustomTableView, cxGridTableView, cxGridDBTableView, cxClasses,
  cxGridCustomView, cxGrid, cxTextEdit, cxMaskEdit, cxDropDownEdit,
  Vcl.ComCtrls, Vcl.StdCtrls, cxButtons, cxGroupBox, FireDAC.Stan.Intf,
  FireDAC.Stan.Option, FireDAC.Stan.Param, FireDAC.Stan.Error, FireDAC.DatS,
  FireDAC.Phys.Intf, FireDAC.DApt.Intf, FireDAC.Stan.Async, FireDAC.DApt,
  FireDAC.Comp.DataSet, FireDAC.Comp.Client, dxSkinBlack, dxSkinBlue,
  dxSkinBlueprint, dxSkinCaramel, dxSkinCoffee, dxSkinDarkRoom, dxSkinDarkSide,
  dxSkinDevExpressDarkStyle, dxSkinDevExpressStyle, dxSkinFoggy,
  dxSkinGlassOceans, dxSkinHighContrast, dxSkiniMaginary, dxSkinLilian,
  dxSkinLiquidSky, dxSkinLondonLiquidSky, dxSkinMcSkin, dxSkinMetropolis,
  dxSkinMetropolisDark, dxSkinMoneyTwins, dxSkinOffice2007Black,
  dxSkinOffice2007Blue, dxSkinOffice2007Green, dxSkinOffice2007Pink,
  dxSkinOffice2010Black, dxSkinOffice2010Blue, dxSkinOffice2010Silver,
  dxSkinOffice2013DarkGray, dxSkinOffice2016Colorful, dxSkinOffice2016Dark,
  dxSkinPumpkin, dxSkinSeven, dxSkinSevenClassic, dxSkinSharp, dxSkinSharpPlus,
  dxSkinSilver, dxSkinSpringTime, dxSkinStardust, dxSkinSummer2008,
  dxSkinTheAsphaltWorld, dxSkinsDefaultPainters, dxSkinValentine,
  dxSkinVisualStudio2013Blue, dxSkinVisualStudio2013Dark,
  dxSkinVisualStudio2013Light, dxSkinVS2010, dxSkinWhiteprint,
  dxSkinXmas2008Blue, Vcl.ExtCtrls, cxLabel;

type
  Tfrm_auditoria = class(TForm)
    Label3: TLabel;
    edUsuario: TEdit;
    cxGroupBox6: TcxGroupBox;
    Label20: TLabel;
    bPesquisar: TcxButton;
    edDe: TDateTimePicker;
    edAte: TDateTimePicker;
    Label1: TLabel;
    edTerminal: TEdit;
    btn_marca: TcxButton;
    cxButton1: TcxButton;
    gdConveniados: TcxGrid;
    gdConveniadosTbVw: TcxGridDBTableView;
    gdConveniadosLv: TcxGridLevel;
    Label4: TLabel;
    edArgumento: TEdit;
    cxButton25: TcxButton;
    cxButton3: TcxButton;
    DataSource1: TDataSource;
    FDQuery1: TFDQuery;
    FDQuery1LOG_DATA: TDateTimeField;
    FDQuery1LOG_USUARIO: TStringField;
    FDQuery1LOG_HORA: TStringField;
    FDQuery1LOG_HISTORICO: TStringField;
    FDQuery1LOG_vERSAO: TStringField;
    FDQuery1LOG_ESTACAO: TStringField;
    gdConveniadosTbVwLOG_DATA: TcxGridDBColumn;
    gdConveniadosTbVwLOG_USUARIO: TcxGridDBColumn;
    gdConveniadosTbVwLOG_HORA: TcxGridDBColumn;
    gdConveniadosTbVwLOG_HISTORICO: TcxGridDBColumn;
    gdConveniadosTbVwLOG_vERSAO: TcxGridDBColumn;
    gdConveniadosTbVwLOG_ESTACAO: TcxGridDBColumn;
    Timer1: TTimer;
    FDQuery1LOG_EMPRESA: TStringField;
    gdConveniadosTbVwColumn1: TcxGridDBColumn;
    procedure edArgumentoChange(Sender: TObject);
    procedure cxButton25Click(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure bPesquisarClick(Sender: TObject);
    procedure btn_marcaClick(Sender: TObject);
    procedure cxButton1Click(Sender: TObject);
    procedure Timer1Timer(Sender: TObject);
    procedure FormCreate(Sender: TObject);
  private
    { Private declarations }
    procedure Pesquisar;
  public
    { Public declarations }
  end;

var
  frm_auditoria: Tfrm_auditoria;
  vFraseLogOld,
  vFraseLog :String;

  vPesquisaExterna:Boolean; // Usado para controlar a pesquisa de logs.
                            // true = esta tela foi chamada externamente
                            //        para realizar uma consulta espec�fica
                            // false = esta tela foi aberta pelo usu�rio
                            //         para fazer qualquer pesquisa

implementation

{$R *.dfm}

uses S_Module, u_funcoes;

procedure Tfrm_auditoria.btn_marcaClick(Sender: TObject);
begin
   Pesquisar;
end;

procedure Tfrm_auditoria.bPesquisarClick(Sender: TObject);
begin
   Pesquisar;
end;

procedure Tfrm_auditoria.cxButton1Click(Sender: TObject);
begin
   Pesquisar;
end;

procedure Tfrm_auditoria.cxButton25Click(Sender: TObject);
begin
   Close;
end;

procedure Tfrm_auditoria.edArgumentoChange(Sender: TObject);
begin
   Pesquisar;
end;

procedure Tfrm_auditoria.FormCreate(Sender: TObject);
begin
   vPesquisaExterna:=False;
end;

procedure Tfrm_auditoria.FormShow(Sender: TObject);
begin
   if vPesquisaExterna then
   begin
      edDe.enabled       := false;
      edAte.enabled      := false;
      bPesquisar.enabled := false;
      edUsuario.enabled  := false;
      edTerminal.enabled := false;
      edArgumento.enabled:= false;
   end;
   vFraseLogOld := '';
   vFraseLog    := '';
   Timer1.Enabled:=true;
   //edDe.Date := 0;
   //edAte.Date := 0;
end;

procedure Tfrm_auditoria.Pesquisar;
begin
   // Recuperar registros de log no banco de dados
   //---------------------------------------------
   //Timer1.Enabled:=false; // AGUARDA O USUARIO TERMINAR DE DIGITAR
   vFraseLog := 'Auditou ';

   FDQuery1.Close;
   FDQuery1.SQL.Clear;
   FDQuery1.SQL.Add('SELECT * FROM LOG_LOG     ');
   FDQuery1.SQL.Add(' WHERE LOG_DATA = LOG_DATA');

   // Filtrar usu�rio
   if edUsuario.Text <> '' then
   begin
      FDQuery1.SQL.Add('AND LOG_USUARIO = :LOG_USUARIO');
      FDQuery1.ParamByname('LOG_USUARIO').AsString := edUsuario.Text;
      vFraseLog := vFraseLog + 'USU= '+edUsuario.Text+' ';
   end;

   // Filtrar Per�odo De...
   {
   //if edDe.Date <> 0 then
   begin
      FDQuery1.SQL.Add('AND LOG_DATA >= :LOG_DATA1');
      FDQuery1.ParamByname('LOG_DATA1').AsDatetime := edDe.Date;
      vFraseLog := vFraseLog + 'DE '+DateToStr(edDe.Date)+' ';
   end;

   // Filtrar Per�odo Ate...
   //if edAte.Date <> 0 then
   begin
      FDQuery1.SQL.Add('AND LOG_DATA <= :LOG_DATA2');
      FDQuery1.ParamByname('LOG_DATA2').AsDatetime := edAte.Date;
      vFraseLog := vFraseLog + 'ATE '+DateToStr(edAte.Date)+' ';
   end;
   }
   // Filtrar Esta��o
   if edTerminal.Text <> '' then
   begin
      FDQuery1.SQL.Add('AND LOG_ESTACAO = :LOG_ESTACAO');
      FDQuery1.ParamByname('LOG_ESTACAO').AsString := edTerminal.Text;
      vFraseLog := vFraseLog + 'ESTAC= '+edTerminal.Text+' ';
   end;

   // Filtrar texto
   if edArgumento.Text <> '' then
   begin
      vFraseLog := vFraseLog + 'TXT= "'+edArgumento.Text+'" ';
      FDQuery1.SQL.Add('AND LOG_HISTORICO LIKE :LOG_HISTORICO');
      FDQuery1.ParamByname('LOG_HISTORICO').AsString := '%'+edArgumento.Text+'%';
   end;

   FDQuery1.SQL.Add('ORDER BY LOG_DATA DESC, LOG_HORA DESC');
   FDQuery1.Open;
   //Timer1.Enabled:=true;
end;

procedure Tfrm_auditoria.Timer1Timer(Sender: TObject);
var vRegistro : Pointer;
begin
   if vPesquisaExterna then
      exit;

   vRegistro := nil;

   if vFraseLog <> vFraseLogOld then
   begin
       RegistraLog(vFraseLog);
       vFraseLogOld:= vFraseLog;
   end;

   // reposiciona no registro que estava
//   if not FDQuery1.Eof then
//      vRegistro := FDQuery1.GetBookmark;

   Pesquisar;

   if FDQuery1.RecordCount>0 then
   begin
      try
//         if vRegistro <> nil then
//            FDQuery1.GotoBookmark(vRegistro);
      finally
      end;
   end;

end;

end.

aa
