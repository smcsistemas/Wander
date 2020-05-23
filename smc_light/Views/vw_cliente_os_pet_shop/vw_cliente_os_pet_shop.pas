unit vw_cliente_os_pet_shop;

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
  Tfrm_cliente_os_pet_shop = class(TForm)
    gd_clientes_os_petDBTableView1: TcxGridDBTableView;
    gd_clientes_os_petLevel1: TcxGridLevel;
    gd_clientes_os_pet: TcxGrid;
    sql_cliente_os_pet: TFDQuery;
    ds_cliente_os_pet: TDataSource;
    tfd_cliente_os_pet: TFDTable;
    gd_clientes_os_petDBTableView1codigo: TcxGridDBColumn;
    gd_clientes_os_petDBTableView1razao_social: TcxGridDBColumn;
    gd_clientes_os_petDBTableView1fantasia: TcxGridDBColumn;
    edt_cliente_atendimentos: TEdit;
    rdg_cliente_atendimentos: TRadioGroup;
    Label1: TLabel;
    sql_cliente_os_petcodigo: TFDAutoIncField;
    sql_cliente_os_petrazao_social: TStringField;
    sql_cliente_os_petfantasia: TStringField;
    sql_cliente_os_petcpf: TStringField;
    sql_cliente_os_petcnpj: TStringField;
    sql_cliente_os_petcelular_1: TStringField;
    sql_cliente_os_petendereco: TStringField;
    sql_cliente_os_petnumero: TStringField;
    sql_cliente_os_petbairro: TStringField;
    sql_cliente_os_petcomplemento: TStringField;
    sql_cliente_os_petmunicipio: TStringField;
    sql_cliente_os_petestado: TStringField;
    sql_cliente_os_petcep: TStringField;
    tfd_cliente_os_petCODIGO: TFDAutoIncField;
    tfd_cliente_os_petCODIGO_CONT: TStringField;
    tfd_cliente_os_petDATA_CADASTRO: TDateField;
    tfd_cliente_os_petSITUACAO_FINANCEIRA: TStringField;
    tfd_cliente_os_petCONSUMIDOR_FINAL: TStringField;
    tfd_cliente_os_petPESSOA_TIPO: TStringField;
    tfd_cliente_os_petCLIENTE_TIPO: TStringField;
    tfd_cliente_os_petCONSUMIDOR_TIPO: TStringField;
    tfd_cliente_os_petRAZAO_SOCIAL: TStringField;
    tfd_cliente_os_petFANTASIA: TStringField;
    tfd_cliente_os_petCPF: TStringField;
    tfd_cliente_os_petCNPJ: TStringField;
    tfd_cliente_os_petNATURALIDADE: TStringField;
    tfd_cliente_os_petNACIONALIDADE: TStringField;
    tfd_cliente_os_petRG: TStringField;
    tfd_cliente_os_petORGAO_EMISSOR: TStringField;
    tfd_cliente_os_petINSCRICAO_ESTADUAL: TStringField;
    tfd_cliente_os_petINSCRICAO_MUNICIPAL: TStringField;
    tfd_cliente_os_petSTATUS_CADASTRAL: TStringField;
    tfd_cliente_os_petDATA_NASCIMENTO: TDateField;
    tfd_cliente_os_petSEXO: TStringField;
    tfd_cliente_os_petESTADO_CIVIL: TStringField;
    tfd_cliente_os_petSUFRAMA: TStringField;
    tfd_cliente_os_petRAMO_ATIVIDADE: TStringField;
    tfd_cliente_os_petATIVIDADE: TStringField;
    tfd_cliente_os_petDATA_EMISSAO: TDateField;
    tfd_cliente_os_petNOME_PAI: TStringField;
    tfd_cliente_os_petNOME_MAE: TStringField;
    tfd_cliente_os_petLIMITE_CREDITO: TBCDField;
    tfd_cliente_os_petENDERECO: TStringField;
    tfd_cliente_os_petNUMERO: TStringField;
    tfd_cliente_os_petBAIRRO: TStringField;
    tfd_cliente_os_petCOMPLEMENTO: TStringField;
    tfd_cliente_os_petCEP: TStringField;
    tfd_cliente_os_petMUNICIPIO: TStringField;
    tfd_cliente_os_petCODIGO_MUNICIPIO: TIntegerField;
    tfd_cliente_os_petREGIAO: TStringField;
    tfd_cliente_os_petZONA: TStringField;
    tfd_cliente_os_petESTADO: TStringField;
    tfd_cliente_os_petPAIS: TStringField;
    tfd_cliente_os_petCODIGO_PAIS: TIntegerField;
    tfd_cliente_os_petALIQUOTA_FECOEP: TIntegerField;
    tfd_cliente_os_petBANCO_1: TStringField;
    tfd_cliente_os_petBANCO_OP_CONTA: TStringField;
    tfd_cliente_os_petBANCO_OP2_CONTA: TStringField;
    tfd_cliente_os_petBANCO_CONTA_1: TStringField;
    tfd_cliente_os_petBANCO_AGENCIA_1: TStringField;
    tfd_cliente_os_petCONTATO_NOME: TStringField;
    tfd_cliente_os_petCONTATO_CELULAR: TStringField;
    tfd_cliente_os_petTELEFONE: TStringField;
    tfd_cliente_os_petTELEFONE_1: TStringField;
    tfd_cliente_os_petCELULAR: TStringField;
    tfd_cliente_os_petWHATS: TStringField;
    tfd_cliente_os_petCONTATO: TStringField;
    tfd_cliente_os_petCELULAR_1: TStringField;
    tfd_cliente_os_petCONTATO_1: TStringField;
    tfd_cliente_os_petEMAIL: TStringField;
    tfd_cliente_os_petEMAIL_1: TStringField;
    tfd_cliente_os_petSKYPE: TStringField;
    tfd_cliente_os_petOBSERVACAO: TStringField;
    tfd_cliente_os_petconvenio_inicio: TDateField;
    tfd_cliente_os_petconvenio_fim: TDateField;
    tfd_cliente_os_petROTA: TStringField;
    tfd_cliente_os_petINDICACAO_IE: TIntegerField;
    tfd_cliente_os_petTRIBUTACAO_ICMS: TIntegerField;
    tfd_cliente_os_petCONTRIBUINTE_ICMS: TIntegerField;
    gd_clientes_os_petDBTableView1Column1: TcxGridDBColumn;
    gd_clientes_os_petDBTableView1Column2: TcxGridDBColumn;
    gd_clientes_os_petDBTableView1Column3: TcxGridDBColumn;
    gd_clientes_os_petDBTableView1Column4: TcxGridDBColumn;
    gd_clientes_os_petDBTableView1Column5: TcxGridDBColumn;
    gd_clientes_os_petDBTableView1Column6: TcxGridDBColumn;
    gd_clientes_os_petDBTableView1Column7: TcxGridDBColumn;
    gd_clientes_os_petDBTableView1Column8: TcxGridDBColumn;
    gd_clientes_os_petDBTableView1Column9: TcxGridDBColumn;
    gd_clientes_os_petDBTableView1Column10: TcxGridDBColumn;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormShow(Sender: TObject);
    procedure gd_clientes_os_petDBTableView1DblClick(Sender: TObject);
    procedure edt_cliente_atendimentosKeyPress(Sender: TObject; var Key: Char);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frm_cliente_os_pet_shop: Tfrm_cliente_os_pet_shop;

implementation

uses
  smc_atendimentos, os_pet;

{$R *.dfm}

procedure Tfrm_cliente_os_pet_shop.edt_cliente_atendimentosKeyPress(
  Sender: TObject; var Key: Char);
begin
if Key = #13 then
begin
  sql_cliente_os_pet.Close;
  sql_cliente_os_pet.Open;
  with sql_cliente_os_pet do
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

procedure Tfrm_cliente_os_pet_shop.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  sql_cliente_os_pet.Close;
  Action := cafree;
  self := nil;
end;

procedure Tfrm_cliente_os_pet_shop.FormShow(Sender: TObject);
begin
sql_cliente_os_pet.Open();
sql_cliente_os_pet.Active:=True;
end;

procedure Tfrm_cliente_os_pet_shop.gd_clientes_os_petDBTableView1DblClick(
  Sender: TObject);
begin
  Frm_os_pet.edt_cod_cliente.Text := sql_cliente_os_pet.FieldByName('CODIGO').AsString;
  Frm_os_pet.lbl_cliente_nome.Caption := sql_cliente_os_pet.FieldByName('RAZAO_SOCIAL').AsString;

  //Frm_os_pet.lbl_cliente_.Caption := sql_cliente_os_pet.FieldByName('CPF').AsString;
  Frm_os_pet.lbl_cliente_cnpj.Caption := sql_cliente_os_pet.FieldByName('CNPJ').AsString;
  Frm_os_pet.lbl_cliente_telefone.Caption := sql_cliente_os_pet.FieldByName('CELULAR_1').AsString;
  Frm_os_pet.lbl_cliente_endereco_rua.Caption := sql_cliente_os_pet.FieldByName('ENDERECO').AsString;
  Frm_os_pet.lbl_cliente_endereco_numero.Caption := sql_cliente_os_pet.FieldByName('NUMERO').AsString;
  Frm_os_pet.lbl_cliente_endereco_bairro.Caption := sql_cliente_os_pet.FieldByName('BAIRRO').AsString;
  Frm_os_pet.lbl_cliente_endereco_complemento.Caption := sql_cliente_os_pet.FieldByName('COMPLEMENTO').AsString;
  Frm_os_pet.lbl_cliente_endereco_cidade.Caption := sql_cliente_os_pet.FieldByName('MUNICIPIO').AsString;
  Frm_os_pet.lbl_cliente_endereco_uf.Caption := sql_cliente_os_pet.FieldByName('ESTADO').AsString;
  Frm_os_pet.lbl_cliente_endereco_cep.Caption := sql_cliente_os_pet.FieldByName('CEP').AsString;
  //frm_atendimentos.edt_contato_1.SetFocus;
  Close;
end;

end.
