//Verificado automaticamente em 16/06/2020 09:29
unit vw_cliente_atendimentos;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, cxGraphics, cxControls, cxLookAndFeels,
  cxLookAndFeelPainters, cxStyles, dxSkinsCore, dxSkinBlack, dxSkinBlue,
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
  dxSkinXmas2008Blue, dxSkinscxPCPainter, cxCustomData, cxFilter, cxData,
  cxDataStorage, cxEdit, cxNavigator, Data.DB, cxDBData, cxGridLevel, cxClasses,
  cxGridCustomView, cxGridCustomTableView, cxGridTableView, cxGridDBTableView,
  cxGrid, FireDAC.Stan.Intf, FireDAC.Stan.Option, FireDAC.Stan.Param,
  FireDAC.Stan.Error, FireDAC.DatS, FireDAC.Phys.Intf, FireDAC.DApt.Intf,
  FireDAC.Stan.Async, FireDAC.DApt, FireDAC.Comp.Client, FireDAC.Comp.DataSet,
  Vcl.StdCtrls, Vcl.ExtCtrls;

type
  Tfrm_cliente_atendimentos = class(TForm)
    gd_clientes_atendimentosDBTableView1: TcxGridDBTableView;
    gd_clientes_atendimentosLevel1: TcxGridLevel;
    gd_clientes_atendimentos: TcxGrid;
    sql_cliente_atendimentos: TFDQuery;
    ds_cliente_atendimentos: TDataSource;
    tfd_cliente_atendimentos: TFDTable;
    sql_cliente_atendimentoscodigo: TFDAutoIncField;
    sql_cliente_atendimentosrazao_social: TStringField;
    sql_cliente_atendimentosfantasia: TStringField;
    tfd_cliente_atendimentosCODIGO: TFDAutoIncField;
    tfd_cliente_atendimentosCODIGO_CONT: TStringField;
    tfd_cliente_atendimentosDATA_CADASTRO: TDateField;
    tfd_cliente_atendimentosSITUACAO_FINANCEIRA: TStringField;
    tfd_cliente_atendimentosCONSUMIDOR_FINAL: TStringField;
    tfd_cliente_atendimentosPESSOA_TIPO: TStringField;
    tfd_cliente_atendimentosCLIENTE_TIPO: TStringField;
    tfd_cliente_atendimentosCONSUMIDOR_TIPO: TStringField;
    tfd_cliente_atendimentosRAZAO_SOCIAL: TStringField;
    tfd_cliente_atendimentosFANTASIA: TStringField;
    tfd_cliente_atendimentosCPF: TStringField;
    tfd_cliente_atendimentosCNPJ: TStringField;
    tfd_cliente_atendimentosNATURALIDADE: TStringField;
    tfd_cliente_atendimentosNACIONALIDADE: TStringField;
    tfd_cliente_atendimentosRG: TStringField;
    tfd_cliente_atendimentosORGAO_EMISSOR: TStringField;
    tfd_cliente_atendimentosINSCRICAO_ESTADUAL: TStringField;
    tfd_cliente_atendimentosINSCRICAO_MUNICIPAL: TStringField;
    tfd_cliente_atendimentosSTATUS_CADASTRAL: TStringField;
    tfd_cliente_atendimentosDATA_NASCIMENTO: TDateField;
    tfd_cliente_atendimentosSEXO: TStringField;
    tfd_cliente_atendimentosESTADO_CIVIL: TStringField;
    tfd_cliente_atendimentosSUFRAMA: TStringField;
    tfd_cliente_atendimentosRAMO_ATIVIDADE: TStringField;
    tfd_cliente_atendimentosATIVIDADE: TStringField;
    tfd_cliente_atendimentosALIQUOTA_FECOEP: TIntegerField;
    tfd_cliente_atendimentosOBSERVACAO: TStringField;
    tfd_cliente_atendimentosconvenio_inicio: TDateField;
    tfd_cliente_atendimentosconvenio_fim: TDateField;
    tfd_cliente_atendimentosROTA: TStringField;
    tfd_cliente_atendimentosINDICACAO_IE: TIntegerField;
    tfd_cliente_atendimentosTRIBUTACAO_ICMS: TIntegerField;
    tfd_cliente_atendimentosCONTRIBUINTE_ICMS: TIntegerField;
    gd_clientes_atendimentosDBTableView1codigo: TcxGridDBColumn;
    gd_clientes_atendimentosDBTableView1razao_social: TcxGridDBColumn;
    gd_clientes_atendimentosDBTableView1fantasia: TcxGridDBColumn;
    edt_cliente_atendimentos: TEdit;
    rdg_cliente_atendimentos: TRadioGroup;
    Label1: TLabel;
    tfd_cliente_atendimentosDATA_EMISSAO: TDateField;
    tfd_cliente_atendimentosNOME_PAI: TStringField;
    tfd_cliente_atendimentosNOME_MAE: TStringField;
    tfd_cliente_atendimentosLIMITE_CREDITO: TBCDField;
    tfd_cliente_atendimentosENDERECO: TStringField;
    tfd_cliente_atendimentosNUMERO: TStringField;
    tfd_cliente_atendimentosBAIRRO: TStringField;
    tfd_cliente_atendimentosCOMPLEMENTO: TStringField;
    tfd_cliente_atendimentosCEP: TStringField;
    tfd_cliente_atendimentosMUNICIPIO: TStringField;
    tfd_cliente_atendimentosCODIGO_MUNICIPIO: TIntegerField;
    tfd_cliente_atendimentosREGIAO: TStringField;
    tfd_cliente_atendimentosZONA: TStringField;
    tfd_cliente_atendimentosESTADO: TStringField;
    tfd_cliente_atendimentosPAIS: TStringField;
    tfd_cliente_atendimentosCODIGO_PAIS: TIntegerField;
    tfd_cliente_atendimentosBANCO_1: TStringField;
    tfd_cliente_atendimentosBANCO_OP_CONTA: TStringField;
    tfd_cliente_atendimentosBANCO_OP2_CONTA: TStringField;
    tfd_cliente_atendimentosBANCO_CONTA_1: TStringField;
    tfd_cliente_atendimentosBANCO_AGENCIA_1: TStringField;
    tfd_cliente_atendimentosCONTATO_NOME: TStringField;
    tfd_cliente_atendimentosCONTATO_CELULAR: TStringField;
    tfd_cliente_atendimentosTELEFONE: TStringField;
    tfd_cliente_atendimentosTELEFONE_1: TStringField;
    tfd_cliente_atendimentosCELULAR: TStringField;
    tfd_cliente_atendimentosWHATS: TStringField;
    tfd_cliente_atendimentosCONTATO: TStringField;
    tfd_cliente_atendimentosCELULAR_1: TStringField;
    tfd_cliente_atendimentosCONTATO_1: TStringField;
    tfd_cliente_atendimentosEMAIL: TStringField;
    tfd_cliente_atendimentosEMAIL_1: TStringField;
    tfd_cliente_atendimentosSKYPE: TStringField;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormShow(Sender: TObject);
    procedure gd_clientes_atendimentosDBTableView1DblClick(Sender: TObject);
    procedure edt_cliente_atendimentosKeyPress(Sender: TObject; var Key: Char);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frm_cliente_atendimentos: Tfrm_cliente_atendimentos;

implementation

uses
  smc_atendimentos;

{$R *.dfm}

procedure Tfrm_cliente_atendimentos.edt_cliente_atendimentosKeyPress(
  Sender: TObject; var Key: Char);
begin
if Key = #13 then
begin
  sql_cliente_atendimentos.Close;
  sql_cliente_atendimentos.Open;
  with sql_cliente_atendimentos do
  begin
    Close;
    SQL.Clear;
    SQL.Add('select * from CLIENTE');

    // buscar cliente de acordo com o que selecionar nos tipos de pesquisas Componente Radio Group
    case rdg_cliente_atendimentos.ItemIndex of
      0:
        SQL.Add('where CODIGO like :nome');
      1:
        SQL.Add('where RAZAO_SOCIAL like :nome');
      2:
        SQL.Add('where FANTASIA like :nome');

    end;

    ParamByName('nome').Value := '%' + edt_cliente_atendimentos.Text + '%';
    Open;
    if RecordCount = 0 then
      ShowMessage('Cliente não encontrado!');

end;
end;
end;

procedure Tfrm_cliente_atendimentos.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  sql_cliente_atendimentos.Close;
  Action := cafree;
  self := nil;
end;

procedure Tfrm_cliente_atendimentos.FormShow(Sender: TObject);
begin
sql_cliente_atendimentos.Open();
tfd_cliente_atendimentos.Active:=True;
end;

procedure Tfrm_cliente_atendimentos.gd_clientes_atendimentosDBTableView1DblClick(
  Sender: TObject);
begin
  frm_atendimentos.edt_nome_fantasia.Text := sql_cliente_atendimentos.FieldByName('FANTASIA').AsString;
  frm_atendimentos.edt_razao_social.Text := sql_cliente_atendimentos.FieldByName('RAZAO_SOCIAL').AsString;
  frm_atendimentos.edt_contato_1.SetFocus;
  Close;
end;

end.
