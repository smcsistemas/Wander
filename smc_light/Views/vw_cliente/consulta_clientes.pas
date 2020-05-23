unit consulta_clientes;

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
  Tfrm_cliente_geral = class(TForm)
    gd_clientes_atendimentosDBTableView1: TcxGridDBTableView;
    gd_clientes_atendimentosLevel1: TcxGridLevel;
    gd_clientes_atendimentos: TcxGrid;
    sql_cliente_geral: TFDQuery;
    ds_cliente_geral: TDataSource;
    tfd_cliente_geral: TFDTable;
    sql_cliente_geralcodigo: TFDAutoIncField;
    sql_cliente_geralrazao_social: TStringField;
    sql_cliente_geralfantasia: TStringField;
    gd_clientes_atendimentosDBTableView1codigo: TcxGridDBColumn;
    gd_clientes_atendimentosDBTableView1razao_social: TcxGridDBColumn;
    edt_cliente_atendimentos: TEdit;
    rdg_cliente_atendimentos: TRadioGroup;
    Label1: TLabel;
    tfd_cliente_geralCODIGO: TFDAutoIncField;
    tfd_cliente_geralCODIGO_CONT: TStringField;
    tfd_cliente_geralDATA_CADASTRO: TDateField;
    tfd_cliente_geralSITUACAO_FINANCEIRA: TStringField;
    tfd_cliente_geralCONSUMIDOR_FINAL: TStringField;
    tfd_cliente_geralPESSOA_TIPO: TStringField;
    tfd_cliente_geralCLIENTE_TIPO: TStringField;
    tfd_cliente_geralCONSUMIDOR_TIPO: TStringField;
    tfd_cliente_geralRAZAO_SOCIAL: TStringField;
    tfd_cliente_geralFANTASIA: TStringField;
    tfd_cliente_geralCPF: TStringField;
    tfd_cliente_geralCNPJ: TStringField;
    tfd_cliente_geralNATURALIDADE: TStringField;
    tfd_cliente_geralNACIONALIDADE: TStringField;
    tfd_cliente_geralRG: TStringField;
    tfd_cliente_geralORGAO_EMISSOR: TStringField;
    tfd_cliente_geralINSCRICAO_ESTADUAL: TStringField;
    tfd_cliente_geralINSCRICAO_MUNICIPAL: TStringField;
    tfd_cliente_geralSTATUS_CADASTRAL: TStringField;
    tfd_cliente_geralDATA_NASCIMENTO: TDateField;
    tfd_cliente_geralSEXO: TStringField;
    tfd_cliente_geralESTADO_CIVIL: TStringField;
    tfd_cliente_geralSUFRAMA: TStringField;
    tfd_cliente_geralRAMO_ATIVIDADE: TStringField;
    tfd_cliente_geralATIVIDADE: TStringField;
    tfd_cliente_geralDATA_EMISSAO: TDateField;
    tfd_cliente_geralNOME_PAI: TStringField;
    tfd_cliente_geralNOME_MAE: TStringField;
    tfd_cliente_geralLIMITE_CREDITO: TBCDField;
    tfd_cliente_geralENDERECO: TStringField;
    tfd_cliente_geralNUMERO: TStringField;
    tfd_cliente_geralBAIRRO: TStringField;
    tfd_cliente_geralCOMPLEMENTO: TStringField;
    tfd_cliente_geralCEP: TStringField;
    tfd_cliente_geralMUNICIPIO: TStringField;
    tfd_cliente_geralCODIGO_MUNICIPIO: TIntegerField;
    tfd_cliente_geralREGIAO: TStringField;
    tfd_cliente_geralZONA: TStringField;
    tfd_cliente_geralESTADO: TStringField;
    tfd_cliente_geralPAIS: TStringField;
    tfd_cliente_geralCODIGO_PAIS: TIntegerField;
    tfd_cliente_geralALIQUOTA_FECOEP: TIntegerField;
    tfd_cliente_geralBANCO_1: TStringField;
    tfd_cliente_geralBANCO_OP_CONTA: TStringField;
    tfd_cliente_geralBANCO_OP2_CONTA: TStringField;
    tfd_cliente_geralBANCO_CONTA_1: TStringField;
    tfd_cliente_geralBANCO_AGENCIA_1: TStringField;
    tfd_cliente_geralCONTATO_NOME: TStringField;
    tfd_cliente_geralCONTATO_CELULAR: TStringField;
    tfd_cliente_geralTELEFONE: TStringField;
    tfd_cliente_geralTELEFONE_1: TStringField;
    tfd_cliente_geralCELULAR: TStringField;
    tfd_cliente_geralWHATS: TStringField;
    tfd_cliente_geralCONTATO: TStringField;
    tfd_cliente_geralCELULAR_1: TStringField;
    tfd_cliente_geralCONTATO_1: TStringField;
    tfd_cliente_geralEMAIL: TStringField;
    tfd_cliente_geralEMAIL_1: TStringField;
    tfd_cliente_geralSKYPE: TStringField;
    tfd_cliente_geralOBSERVACAO: TStringField;
    tfd_cliente_geralconvenio_inicio: TDateField;
    tfd_cliente_geralconvenio_fim: TDateField;
    tfd_cliente_geralROTA: TStringField;
    tfd_cliente_geralINDICACAO_IE: TIntegerField;
    tfd_cliente_geralTRIBUTACAO_ICMS: TIntegerField;
    tfd_cliente_geralCONTRIBUINTE_ICMS: TIntegerField;
    gd_clientes_atendimentosDBTableView1Column1: TcxGridDBColumn;
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
  frm_cliente_geral: Tfrm_cliente_geral;

implementation

uses
  smc_atendimentos, animais;

{$R *.dfm}

procedure Tfrm_cliente_geral.edt_cliente_atendimentosKeyPress(
  Sender: TObject; var Key: Char);
begin
if Key = #13 then
begin
  sql_cliente_geral.Close;
  sql_cliente_geral.Open;
  with sql_cliente_geral do
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

procedure Tfrm_cliente_geral.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  sql_cliente_geral.Close;
  Action := cafree;
  self := nil;
end;

procedure Tfrm_cliente_geral.FormShow(Sender: TObject);
begin
sql_cliente_geral.Open();
sql_cliente_geral.Active:=True;
end;

procedure Tfrm_cliente_geral.gd_clientes_atendimentosDBTableView1DblClick(
  Sender: TObject);
begin
  frm_cad_animais.db_cod_cliente.Text := sql_cliente_geral.FieldByName('CODIGO').AsString;
  frm_cad_animais.db_cliente.Text := sql_cliente_geral.FieldByName('RAZAO_SOCIAL').AsString;
  frm_cad_animais.dbNome.SetFocus;
  Close;
end;

end.
