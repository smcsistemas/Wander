unit paramentros_clientes;
{
================================================================================
| ITEM|DATA  HR|UNIT                |HISTORICO                                 |
|-----|--------|--------------------|------------------------------------------|
|  208|25/05/20|wander              |Retirada a coluna OPTANTE_SIMPLES_NACIONAL|
|     |   22:52|paramentros_clientes|do TFDQuery SQL_Empresa                   |
================================================================================
}

interface

uses
//  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
//  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, h_Dialogs, u_diretorios, v_Dir, S_Module,
//  h_Functions, u_funcoes, cxGraphics, cxControls, cxLookAndFeels,
//  cxLookAndFeelPainters, cxContainer, cxEdit, dxSkinsCore, FireDAC.Stan.Intf,
//  FireDAC.Stan.Option, FireDAC.Stan.Param, FireDAC.Stan.Error, FireDAC.DatS,
//  FireDAC.Phys.Intf, FireDAC.DApt.Intf, FireDAC.Stan.Async, FireDAC.DApt,
//  Vcl.Menus, Vcl.StdCtrls, cxButtons, Data.DB, FireDAC.Comp.DataSet,
//  FireDAC.Comp.Client, cxCheckBox, cxDBEdit;
 Winapi.Windows, System.SysUtils,
  System.Classes,
  Vcl.Controls, Vcl.Forms, Vcl.StdCtrls, Vcl.DBCtrls,

  cxButtons,
  cxPC,
  cxDropDownEdit,

  Data.DB,
  FireDAC.Comp.DataSet, FileCtrl, FireDAC.Comp.Client, cxCheckBox,
  Vcl.ExtCtrls, cxDBEdit,
  cxDBLookupComboBox,

  IdFTP,
  IniFiles, u_diretorios,
  h_functions, S_Parametros_Venda, cxGraphics, cxLookAndFeels, cxLookAndFeelPainters, Vcl.Menus, dxSkinsCore, dxSkinBlack, dxSkinBlue,
  dxSkinBlueprint, dxSkinCaramel, dxSkinCoffee,
  dxSkinDarkRoom,
  dxSkinDarkSide, dxSkinDevExpressDarkStyle, dxSkinDevExpressStyle, dxSkinFoggy, dxSkinGlassOceans, dxSkinHighContrast, dxSkiniMaginary,
  dxSkinLilian, dxSkinLiquidSky,
  dxSkinLondonLiquidSky,
  dxSkinMcSkin, dxSkinMetropolis, dxSkinMetropolisDark, dxSkinMoneyTwins, dxSkinOffice2007Black, dxSkinOffice2007Blue,
  dxSkinOffice2007Green, dxSkinOffice2007Pink,
  dxSkinOffice2007Silver,
  dxSkinOffice2010Black, dxSkinOffice2010Blue, dxSkinOffice2010Silver, dxSkinOffice2013DarkGray, dxSkinOffice2013LightGray,
  dxSkinOffice2013White, dxSkinOffice2016Colorful,
  dxSkinOffice2016Dark,
  dxSkinPumpkin, dxSkinSeven, dxSkinSevenClassic, dxSkinSharp, dxSkinSharpPlus, dxSkinSilver, dxSkinSpringTime, dxSkinStardust,
  dxSkinSummer2008, dxSkinTheAsphaltWorld,
  dxSkinsDefaultPainters,
  dxSkinValentine, dxSkinVisualStudio2013Blue, dxSkinVisualStudio2013Dark, dxSkinVisualStudio2013Light, dxSkinVS2010, dxSkinWhiteprint,
  dxSkinXmas2008Blue, cxControls,
  dxSkinscxPCPainter,
  dxBarBuiltInMenu, cxContainer, cxEdit, FireDAC.Stan.Intf, FireDAC.Stan.Option, FireDAC.Stan.Param, FireDAC.Stan.Error, FireDAC.DatS,
  FireDAC.Phys.Intf, FireDAC.DApt.Intf,
  FireDAC.Stan.Async,
  FireDAC.DApt, cxLookupEdit, cxDBLookupEdit, cxTextEdit, cxMaskEdit, Vcl.Mask, dxGDIPlusClasses, v_Env, h_DB, System.Generics.Collections,
  cxCheckComboBox, registry, u_funcoes, v_Dir, S_Module, h_Dialogs;

type
  Tfrm_paramentros_clientes = class(TForm)
    grp_empresa: TGroupBox;
    cxDBCheckBox2: TcxDBCheckBox;
    cxDBCheckBox7: TcxDBCheckBox;
    SQL_Empresa: TFDQuery;
    SQL_EmpresaCODIGO: TFDAutoIncField;
    SQL_EmpresaRAZAO_SOCIAL: TStringField;
    SQL_EmpresaNOME_FANTASIA: TStringField;
    SQL_EmpresaDATA_CADASTRO: TDateField;
    SQL_EmpresaCNPJ: TStringField;
    SQL_EmpresaINSCRICAO_ESTADUAL: TStringField;
    SQL_EmpresaINSCRICAO_MUNICIPAL: TStringField;
    SQL_EmpresaEMPRESA_TELEFONE_01: TStringField;
    SQL_EmpresaEMPRESA_TELEFONE_03: TStringField;
    SQL_EmpresaEMPRESA_FAX: TStringField;
    SQL_EmpresaEMPRESA_CELULAR_01: TStringField;
    SQL_EmpresaEMPRESA_CELULAR_02: TStringField;
    SQL_EmpresaEMPRESA_SITE: TStringField;
    SQL_EmpresaEMPRESA_EMAIL_01: TStringField;
    SQL_EmpresaEMPRESA_SKYPE: TStringField;
    SQL_EmpresaEMPRESA_EMAIL_02: TStringField;
    SQL_EmpresaENDERECO: TStringField;
    SQL_EmpresaNUMERO: TStringField;
    SQL_EmpresaSUFRAMA: TStringField;
    SQL_EmpresaCEP: TStringField;
    SQL_EmpresaBAIRRO: TStringField;
    SQL_EmpresaMUNICIPIO: TStringField;
    SQL_EmpresaESTADO: TStringField;
    SQL_EmpresaCODIGO_MUNICIPIO: TIntegerField;
    SQL_EmpresaPAIS: TStringField;
    SQL_EmpresaCOMPLEMENTO: TStringField;
    SQL_EmpresaIE_SUBSTITUTO_TRIBUTARIO: TStringField;
    SQL_EmpresaCODIGO_REGIME_TRIBUTARIO: TStringField;
    SQL_EmpresaAPURACAO_MENSAL_IPI: TStringField;
    SQL_EmpresaAPURACAO_DECENDIAL_IPI: TStringField;
    SQL_EmpresaTRIBUTADO_ALIQUOTA_FIXA_ICMS: TStringField;
    SQL_EmpresaCONTRIBUINTE_IPI: TStringField;
    SQL_EmpresaORGANIZACAO_CONTABIL_RAZAO_SOCIAL: TStringField;
    SQL_EmpresaORGANIZACAO_CONTABIL_FANTASIA: TStringField;
    SQL_EmpresaORGANIZACAO_CONTABIL_CNPJ_CPF: TStringField;
    SQL_EmpresaORGANIZACAO_CONTABIL_INSCRICAO: TStringField;
    SQL_EmpresaORGANIZACAO_CONTABIL_ENDERECO: TStringField;
    SQL_EmpresaORGANIZACAO_CONTABIL_BAIRRO: TStringField;
    SQL_EmpresaORGANIZACAO_CONTABIL_NUMERO: TStringField;
    SQL_EmpresaORGANIZACAO_CONTABIL_MUNICIPIO: TStringField;
    SQL_EmpresaORGANIZACAO_CONTABIL_CODIGO_MUNICIPIO: TIntegerField;
    SQL_EmpresaORGANIZACAO_CONTABIL_ESTADO: TStringField;
    SQL_EmpresaORGANIZACAO_CONTABIL_PAIS: TStringField;
    SQL_EmpresaORGANIZACAO_CONTABIL_CEP: TStringField;
    SQL_EmpresaORGANIZACAO_CONTABIL_COMPLEMENTO: TStringField;
    SQL_EmpresaORGANIZACAO_CONTABIL_TELEFONE_01: TStringField;
    SQL_EmpresaORGANIZACAO_CONTABIL_TELEFONE_02: TStringField;
    SQL_EmpresaORGANIZACAO_CONTABIL_CELULAR_01: TStringField;
    SQL_EmpresaORGANIZACAO_CONTABIL_CELULAR_02: TStringField;
    SQL_EmpresaORGANIZACAO_CONTABIL_EMAIL_01: TStringField;
    SQL_EmpresaORGANIZACAO_CONTABIL_EMAIL_02: TStringField;
    SQL_EmpresaORGANIZACAO_CONTABIL_SITE: TStringField;
    SQL_EmpresaORGANIZACAO_CONTABIL_SKYPE: TStringField;
    SQL_EmpresaCONTADOR_NOME: TStringField;
    SQL_EmpresaCONTADOR_CPF: TStringField;
    SQL_EmpresaCONTADOR_CRC: TStringField;
    SQL_EmpresaNIRE: TStringField;
    SQL_EmpresaCNAE: TStringField;
    SQL_EmpresaBANCO_01: TStringField;
    SQL_EmpresaBANCO_OP: TStringField;
    SQL_EmpresaBANCO_OP2: TStringField;
    SQL_EmpresaBANCO_OP_1: TStringField;
    SQL_EmpresaBANCO_OP_1_2: TStringField;
    SQL_EmpresaBANCO_AGENCIA_01: TStringField;
    SQL_EmpresaBANCO_CONTA_01: TStringField;
    SQL_EmpresaBANCO_02: TStringField;
    SQL_EmpresaBANCO_AGENCIA_01_DIGITO: TStringField;
    SQL_EmpresaBANCO_CONTA_01_DIGITO: TStringField;
    SQL_EmpresaBANCO_AGENCIA_02_DIGITO: TStringField;
    SQL_EmpresaBANCO_CONTA_02_DIGITO: TStringField;
    SQL_EmpresaBANCO_AGENCIA_02: TStringField;
    SQL_EmpresaBANCO_CONTA_02: TStringField;
    SQL_EmpresaBANCO_03: TIntegerField;
    SQL_EmpresaBANCO_AGENCIA_03: TStringField;
    SQL_EmpresaBANCO_CONTA_03: TStringField;
    SQL_EmpresaBANCO_GERENTE_01: TStringField;
    SQL_EmpresaBANCO_TELEFONE_01: TStringField;
    SQL_EmpresaBANCO_GERENTE_02: TStringField;
    SQL_EmpresaBANCO_TELEFONE_02: TStringField;
    SQL_EmpresaBANCO_RAMAL_02: TStringField;
    SQL_EmpresaBANCO_RAMAL_01: TStringField;
    SQL_EmpresaSOCIO_01: TIntegerField;
    SQL_EmpresaSOCIO_02: TIntegerField;
    SQL_EmpresaRODAPE: TStringField;
    SQL_EmpresaSELECAO_EMPRESA: TStringField;
    SQL_EmpresaCODIGO_IDENTIFICACAO: TStringField;
    SQL_EmpresaCHAVE_ATIVACAO: TStringField;
    SQL_EmpresaCODIGO_PAIS: TIntegerField;
    SQL_EmpresaORGANIZACAO_CONTABIL_CODPAIS: TIntegerField;
    SQL_EmpresaORGANIZACAO_CONTABIL_CPF: TStringField;
    SQL_EmpresaDIA_VENCIMENTO: TStringField;
    SQL_EmpresaARQUIVOS_FISCAIS_EMAIL_01: TStringField;
    SQL_EmpresaARQUIVOS_FISCAIS_EMAIL_02: TStringField;
    SQL_EmpresaINICIO_ATIVIDADE: TDateField;
    SQL_EmpresaAPURACAO_IPI: TStringField;
    SQL_EmpresaEMPRESA_TELEFONE_02: TStringField;
    SQL_EmpresaORGANIZACAO_CONTABIL_NOME: TStringField;
    SQL_EmpresaCOD_UF: TStringField;
    SQL_EmpresaTRIBUTACAO_PIS_COFINS: TStringField;
    SQL_EmpresaLOGOTIPO: TStringField;
    SQL_EmpresaNOME_CONTATO_AD: TMemoField;
    SQL_PARAMETROS_SISTEMA: TFDQuery;
    SQL_PARAMETROS_SISTEMAid: TFDAutoIncField;
    SQL_PARAMETROS_SISTEMAaliq_imcs: TBCDField;
    SQL_PARAMETROS_SISTEMAaliq_pis_cumulativo: TBCDField;
    SQL_PARAMETROS_SISTEMAaliq_pis_nao_cumulativo: TBCDField;
    SQL_PARAMETROS_SISTEMAaliq_cofins_cumulativo: TBCDField;
    SQL_PARAMETROS_SISTEMAaliq_cofins_nao_cumulativo: TBCDField;
    SQL_PARAMETROS_SISTEMAaliq_iss: TBCDField;
    SQL_PARAMETROS_SISTEMAcaminho_backup: TStringField;
    SQL_PARAMETROS_SISTEMAhost_name: TStringField;
    SQL_PARAMETROS_SISTEMAPASTA_FTP: TStringField;
    SQL_PARAMETROS_SISTEMAPathInstalacaoWINRAR: TStringField;
    SQL_PARAMETROS_SISTEMAPASTA_XML: TStringField;
    SQL_PARAMETROS_SISTEMAdados_otica_cliente: TStringField;
    SQL_PARAMETROS_SISTEMAproduto_preco_faixa: TStringField;
    SQL_PARAMETROS_SISTEMAcpf_cad_cliente: TStringField;
    SQL_PARAMETROS_SISTEMAprod_difer_estoque: TStringField;
    SQL_PARAMETROS_SISTEMApasta_notas: TMemoField;
    SQL_PARAMETROS_SISTEMAcomanda_num: TIntegerField;
    SQL_PARAMETROS_SISTEMAagrupar_tipos_pagamentos: TStringField;
    DS_PARAMETROS_SISTEMA: TDataSource;
    btnGravar: TcxButton;
    btnAlterar: TcxButton;
    btnCancelar: TcxButton;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure btnAlterarClick(Sender: TObject);
    procedure btnGravarClick(Sender: TObject);
    procedure PadronizarLayout;
    procedure FormShow(Sender: TObject);
    procedure btnCancelarClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frm_paramentros_clientes: Tfrm_paramentros_clientes;

implementation

{$R *.dfm}

procedure Tfrm_paramentros_clientes.btnAlterarClick(Sender: TObject);
var
  cnpj, razao, nomepasta: string;
begin
  btnAlterar.Visible := False;
  btnCancelar.Enabled := True;
  SQL_PARAMETROS_SISTEMA.Edit;
  with SQL_Empresa do
  begin
    close;
    open;
  end;
  cnpj := SQL_EmpresaCNPJ.Value;
  razao := SQL_EmpresaRAZAO_SOCIAL.Value;
  nomepasta := cnpj + '_' + razao;

  u_funcoes.AlterarEnabled([grp_empresa], True);
end;

procedure Tfrm_paramentros_clientes.btnCancelarClick(Sender: TObject);
begin
  SQL_PARAMETROS_SISTEMA.Cancel;
  PadronizarLayout;
end;

procedure Tfrm_paramentros_clientes.btnGravarClick(Sender: TObject);
var
  i: integer;
  _in_pag: string;
  reg: TRegIniFile;
begin
try
   SQL_PARAMETROS_SISTEMA.Post;
    try
    reg:= TRegIniFile.Create('SMC');
  finally
    reg.Free;
  end;

    PadronizarLayout;
    Application.MessageBox('Operação Concluída com Sucesso!', 'Mensagem do Sistema', mb_ok + mb_iconinformation);
  except
    on e: exception do
      tdialogs.wnerro('Parâmetros de Clientes', e.message);
  end;
end;


procedure Tfrm_paramentros_clientes.PadronizarLayout;
var reg: TRegIniFile;
begin
  SQL_PARAMETROS_SISTEMA.Active := False;
  SQL_PARAMETROS_SISTEMA.Active := True;
  SQL_PARAMETROS_SISTEMA.Last;

  btnAlterar.Visible := True;
  btnCancelar.Enabled := False;

    u_funcoes.AlterarEnabled([grp_empresa], False);
    try
    reg:= TRegIniFile.Create('SMC');
  finally
    reg.Free;
  end;
end;

procedure Tfrm_paramentros_clientes.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  Action := cafree;
  self := nil;
end;

procedure Tfrm_paramentros_clientes.FormShow(Sender: TObject);
begin
PadronizarLayout;
end;

end.
