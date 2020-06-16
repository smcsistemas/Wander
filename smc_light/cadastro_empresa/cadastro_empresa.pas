//Verificado automaticamente em 16/06/2020 09:26
{ v 15.10.16 11:18 }
unit cadastro_empresa;
{
========================================================================================================================================
ALT|   DATA |HORA |UNIT                        |Descri��o                                                                              |
---|--------|-----|----------------------------|----------------------------------------------------------------------------------------
261|06/06/20|15:22|cadastro_empresa            |Passa a tratar as novas colunas pPIS_CUMULATIVO e pPIS_NAOCUMULATIVO da tabela EMPRESA
========================================================================================================================================

================================================================================
| ITEM|DATA  HR|UNIT                |HISTORICO                                 |
|-----|--------|--------------------|------------------------------------------|
|  204|25/05/20|wander              |Substituidos os 3 checkboxs (chk_3, 4 e 5)|
|     |   20:15|cadastro_empresa    |mutuamente excludentes por um RadioGroup  |
|     |        |                    |rgCONTRIBUINTE_IPI com as op��es          |
|     |        |                    | - Apura��o Mensal                        |
|     |        |                    | - Apura��o Decendial                     |
|     |        |                    | - N�o Contribuinte                       |
|-----|--------|--------------------|------------------------------------------|
|  203|25/05/20|wander              |Deixa de tratar a coluna                  |
|     |   20:15|cadastro_empresa    |OPTANTE_SIMPLES_NACIONAL da tabela Empresa|
|     |        |                    |e passa a tratar a coluna                 |
|     |        |                    |CODIGO_REGIME_TRIBUTARIO para esta fun��o |
|-----|--------|--------------------|------------------------------------------|
|  199|25/05/20|wander              |Incluida informa��o                       |
|     |   14:55|cadastro_empresa    |CRT - C�digo de Regime Tribut�rio:        |                      |
|     |        |                    |0-N�o se Aplica                           |
|     |        |                    |1-S�mples Nacional                        |
|     |        |                    |2-S�mples Nacional com Excesso de Receita |
|     |        |                    |3-Regime Normal (Lucro real ou presumido) |
|-----|--------|--------------------|------------------------------------------|
|   93|20/04/20|Wander              |Passou a tratar a nova coluna pCOFINS     |
|     |   17:30|cadastro_empresa    |(aliquota de COFINS)                      |
================================================================================

================================================================================
|   DATA   |DESENVOLVEDOR|HISTORICO DA ALTERACAO DO CODIGO                     |
|----------|-------------|-----------------------------------------------------|
|25/02/2020|WANDER       |Obriga razao social <= 60 caracteres                 |
|        62|             |(Limite imposto pela SEFAZ para a emiss�o de NFe)    |
|----------|-------------|-----------------------------------------------------|
|02/04/2020|WANDER       |Incluido par�metro "Contribuinte do ICMS" (S/N)      |
|        63|             |                                                     |
================================================================================

}

interface

uses
  Winapi.Windows, System.SysUtils, System.Variants,
  System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls, Vcl.DBCtrls,
  Vcl.Mask,

  cxCheckBox,
  cxCalendar, cxButtons,
  cxPC,
  FireDAC.Stan.Param,

  Data.DB, FireDAC.Comp.DataSet, FireDAC.Comp.Client, Vcl.ExtCtrls, Vcl.ExtDlgs,

  ShellApi,
  ClipBRD, vw_consulta_generica, c_Globals, v_env, S_Module, cxGraphics, cxControls, cxLookAndFeels, cxLookAndFeelPainters, dxSkinsCore, dxSkinBlack, dxSkinBlue, dxSkinBlueprint,
  dxSkinCaramel,
  dxSkinCoffee, dxSkinDarkRoom, dxSkinDarkSide, dxSkinDevExpressDarkStyle, dxSkinDevExpressStyle, dxSkinFoggy, dxSkinGlassOceans, dxSkinHighContrast, dxSkiniMaginary, dxSkinLilian,
  dxSkinLiquidSky,
  dxSkinLondonLiquidSky, dxSkinMcSkin, dxSkinMetropolis, dxSkinMetropolisDark, dxSkinMoneyTwins, dxSkinOffice2007Black, dxSkinOffice2007Blue, dxSkinOffice2007Green,
  dxSkinOffice2007Pink,
  dxSkinOffice2007Silver, dxSkinOffice2010Black, dxSkinOffice2010Blue, dxSkinOffice2010Silver, dxSkinOffice2013DarkGray, dxSkinOffice2013LightGray, dxSkinOffice2013White,
  dxSkinOffice2016Colorful,
  dxSkinOffice2016Dark, dxSkinPumpkin, dxSkinSeven, dxSkinSevenClassic, dxSkinSharp, dxSkinSharpPlus, dxSkinSilver, dxSkinSpringTime, dxSkinStardust, dxSkinSummer2008,
  dxSkinTheAsphaltWorld,
  dxSkinsDefaultPainters, dxSkinValentine, dxSkinVisualStudio2013Blue, dxSkinVisualStudio2013Dark, dxSkinVisualStudio2013Light, dxSkinVS2010, dxSkinWhiteprint, dxSkinXmas2008Blue,
  dxSkinscxPCPainter,
  dxBarBuiltInMenu, cxContainer, cxEdit, Vcl.ComCtrls, dxCore, cxDateUtils, Vcl.Menus, FireDAC.Stan.Intf, FireDAC.Stan.Option, FireDAC.Stan.Error, FireDAC.DatS, FireDAC.Phys.Intf,
  FireDAC.DApt.Intf,
  FireDAC.Stan.Async, FireDAC.DApt, cxTextEdit, cxMaskEdit, cxDropDownEdit, dxGDIPlusClasses,
  ACBrIBPTax;

type
  TForm_Empresa = class(TForm)
    SQL_Empresa: TFDQuery;
    DS_Empresa: TDataSource;
    OpenPictureDialog1: TOpenPictureDialog;
    DS_Colaborador: TDataSource;
    SQL_COLABORADOR: TFDQuery;
    SQL_ConsultarBanco: TFDQuery;
    SQL_ConsultarBancoCODIGO: TFDAutoIncField;
    SQL_ConsultarBancoNOME: TStringField;
    SQL_ConsultarBancoCODIGO_1: TIntegerField;
    SQL_ConsultarBancoNUMERO_AGENCIA: TStringField;
    SQL_ConsultarBancoNOME_AGENCIA: TStringField;
    DS_ConsultarBanco: TDataSource;
    SQL_COLABORADORcodsocio1: TFDAutoIncField;
    SQL_COLABORADORnome1: TStringField;
    SQL_COLABORADORrg1: TStringField;
    SQL_COLABORADORcpf1: TStringField;
    SQL_COLABORADORtelefone1: TStringField;
    SQL_COLABORADORcelular1: TStringField;
    SQL_COLABORADORcodsocio2: TFDAutoIncField;
    SQL_COLABORADORnome2: TStringField;
    SQL_COLABORADORrg2: TStringField;
    SQL_COLABORADORcpf2: TStringField;
    SQL_COLABORADORtelefone2: TStringField;
    SQL_COLABORADORcelular2: TStringField;
    SQL_EmpresaCODIGO: TFDAutoIncField;
    SQL_EmpresaRAZAO_SOCIAL: TStringField;
    SQL_EmpresaNOME_FANTASIA: TStringField;
    SQL_EmpresaDATA_CADASTRO: TDateField;
    SQL_EmpresaCNPJ: TStringField;
    SQL_EmpresaINSCRICAO_ESTADUAL: TStringField;
    SQL_EmpresaINSCRICAO_MUNICIPAL: TStringField;
    SQL_EmpresaEMPRESA_TELEFONE_01: TStringField;
    SQL_EmpresaEMPRESA_TELEFONE_02: TStringField;
    SQL_EmpresaEMPRESA_TELEFONE_03: TStringField;
    SQL_EmpresaEMPRESA_FAX: TStringField;
    SQL_EmpresaEMPRESA_CELULAR_01: TStringField;
    SQL_EmpresaEMPRESA_CELULAR_02: TStringField;
    SQL_EmpresaEMPRESA_SKYPE: TStringField;
    SQL_EmpresaEMPRESA_SITE: TStringField;
    SQL_EmpresaEMPRESA_EMAIL_01: TStringField;
    SQL_EmpresaEMPRESA_EMAIL_02: TStringField;
    SQL_EmpresaSUFRAMA: TStringField;
    SQL_EmpresaENDERECO: TStringField;
    SQL_EmpresaNUMERO: TStringField;
    SQL_EmpresaBAIRRO: TStringField;
    SQL_EmpresaCEP: TStringField;
    SQL_EmpresaMUNICIPIO: TStringField;
    SQL_EmpresaCODIGO_MUNICIPIO: TIntegerField;
    SQL_EmpresaESTADO: TStringField;
    SQL_EmpresaPAIS: TStringField;
    SQL_EmpresaCOMPLEMENTO: TStringField;
    SQL_EmpresaIE_SUBSTITUTO_TRIBUTARIO: TStringField;
    SQL_EmpresaCODIGO_REGIME_TRIBUTARIO: TIntegerField;
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
    SQL_EmpresaBANCO_RAMAL_01: TStringField;
    SQL_EmpresaBANCO_GERENTE_02: TStringField;
    SQL_EmpresaBANCO_TELEFONE_02: TStringField;
    SQL_EmpresaBANCO_RAMAL_02: TStringField;
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
    BtnGravar: TcxButton;
    BtnCancelar: TcxButton;
    BtnIncluir: TcxButton;
    BtnAlterar: TcxButton;
    SQL_EmpresaAPURACAO_IPI: TStringField;
    SQL_EmpresaORGANIZACAO_CONTABIL_NOME: TStringField;
    SQL_EmpresaCOD_UF: TStringField;
    SQL_EmpresaTRIBUTACAO_PIS_COFINS: TStringField;
    SQL_EmpresaLOGOTIPO: TStringField;
    SQL_EmpresaNOME_CONTATO_AD: TMemoField;
    cxButton3: TcxButton;
    GroupBox1: TGroupBox;
    GroupBox2: TGroupBox;
    Label2: TLabel;
    Label9: TLabel;
    Edit1: TEdit;
    Edit2: TEdit;
    grpConfig: TGroupBox;
    BtnCertificado: TcxButton;
    BtnEmail: TcxButton;
    BtnNFE: TcxButton;
    BtnNFCE: TcxButton;
    BtnNFSE: TcxButton;
    BtnMDE: TcxButton;
    cxButton4: TcxButton;
    grpOutras: TGroupBox;
    Label13: TLabel;
    Label16: TLabel;
    DATA_CADASTRO: TDateTimePicker;
    Edit8: TEdit;
    Edit9: TEdit;
    grpContatoCont: TGroupBox;
    ORGANIZACAO_CONTABIL_EMAIL_01: TDBEdit;
    ORGANIZACAO_CONTABIL_CELULAR_01: TDBEdit;
    ORGANIZACAO_CONTABIL_TELEFONE_02: TDBEdit;
    ORGANIZACAO_CONTABIL_NOME: TDBEdit;
    grpEscritorioCont: TGroupBox;
    Label32: TLabel;
    Label34: TLabel;
    Label35: TLabel;
    Label22: TLabel;
    Label36: TLabel;
    CONTADOR_NOME: TDBEdit;
    ORGANIZACAO_CONTABIL_FANTASIA: TDBEdit;
    ORGANIZACAO_CONTABIL_CNPJ_CPF: TDBEdit;
    CONTADOR_CRC: TDBEdit;
    ORGANIZACAO_CONTABIL_CPF: TDBEdit;
    grpLogo: TGroupBox;
    Image1: TImage;
    TL_colab: TLabel;
    cxButton1: TcxButton;
    cxButton2: TcxButton;
    grpContatosAd: TGroupBox;
    EMPRESA_TELEFONE_02: TDBEdit;
    EMPRESA_TELEFONE_03: TDBEdit;
    EMPRESA_EMAIL_02: TDBEdit;
    edt_nome_contato: TEdit;
    grpContatos: TGroupBox;
    EMPRESA_EMAIL_01: TDBEdit;
    EMPRESA_SKYPE: TDBEdit;
    EMPRESA_SITE: TDBEdit;
    EMPRESA_TELEFONE_01: TDBEdit;
    grpEndereco: TGroupBox;
    Label20: TLabel;
    Label21: TLabel;
    Label19: TLabel;
    CODIGO_PAIS: TDBEdit;
    CODIGO_MUNICIPIO: TDBEdit;
    CEP: TDBEdit;
    BAIRRO: TDBEdit;
    COMPLEMENTO: TDBEdit;
    NUMERO: TDBEdit;
    DBEdit3: TDBEdit;
    MUNICIPIO: TDBEdit;
    ESTADO: TDBEdit;
    PAIS: TDBEdit;
    cxButton5: TcxButton;
    COD_UF: TDBEdit;
    grpDadosEmpresa: TGroupBox;
    Label14: TLabel;
    Label8: TLabel;
    Label15: TLabel;
    Label6: TLabel;
    Label3: TLabel;
    Label7: TLabel;
    Label5: TLabel;
    Label10: TLabel;
    Label4: TLabel;
    Label1: TLabel;
    IE_SUBSTITUTO_TRIBUTARIO: TDBEdit;
    NIRE: TDBEdit;
    INSCRICAO_MUNICIPAL: TDBEdit;
    CNPJ: TDBEdit;
    dbedtNOME_FANTASIA: TDBEdit;
    RAZAO_SOCIAL: TDBEdit;
    INSCRICAO_ESTADUAL: TDBEdit;
    CNAE: TDBEdit;
    SUFRAMA: TDBEdit;
    INICIO_ATIVIDADE: TcxDateEdit;
    grpCRT: TGroupBox;
    cxCONTRIBUINTE_ICMS: TcxCheckBox;
    grpPisCofins: TGroupBox;
    edpPIS_CUMULATIVO: TEdit;
    edpPIS_NAOCUMULATIVO: TEdit;
    ed_EMPRESA_pCOFINS: TEdit;
    Edit7: TEdit;
    cxCheckBox1: TcxCheckBox;
    GroupBox3: TGroupBox;
    Label11: TLabel;
    Edit3: TEdit;
    SQL_Empresalocal_key: TMemoField;
    SQL_EmpresaCONTRIBUINTE_ICMS: TStringField;
    SQL_EmpresapCOFINS: TBCDField;
    rgCODIGO_REGIME_TRIBUTARIO: TRadioGroup;
    rgCONTRIBUINTE_IPI: TRadioGroup;
    chk_9: TcxCheckBox;
    SQL_EmpresaNOME_CONTATO_AD_02: TStringField;
    SQL_EmpresaULTIMO_NSU: TStringField;
    SQL_EmpresaTratar_ICMS51: TIntegerField;
    SQL_EmpresaNFe_CSOSN: TStringField;
    SQL_EmpresaNFe_ALIQ_CREDITO_ICMS: TBCDField;
    SQL_EmpresapPIS_CUMULATIVO: TBCDField;
    SQL_EmpresapPIS_NAOCUMULATIVO: TBCDField;
    rgTRIBUTACAO_PIS_COFINS: TRadioGroup;
    procedure BtnIncluirClick(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure BtnGravarClick(Sender: TObject);
    procedure BtnCancelarClick(Sender: TObject);
    procedure Edit4KeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
    procedure cxDBTextEdit52KeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
    procedure cxButton2Click(Sender: TObject);
    procedure cxButton1Click(Sender: TObject);
    procedure cxButton5Click(Sender: TObject);
    procedure cxDBTextEdit6KeyPress(Sender: TObject; var Key: Char);
    procedure cxDBTextEdit5KeyPress(Sender: TObject; var Key: Char);
    procedure cxDBTextEdit4KeyPress(Sender: TObject; var Key: Char);
    procedure cxDBTextEdit7KeyPress(Sender: TObject; var Key: Char);
    procedure cxDBTextEdit8KeyPress(Sender: TObject; var Key: Char);
    procedure DBEdit9KeyPress(Sender: TObject; var Key: Char);
    procedure DBEdit10KeyPress(Sender: TObject; var Key: Char);
    procedure DBEdit7KeyPress(Sender: TObject; var Key: Char);
    procedure EMPRESA_TELEFONE_01KeyPress(Sender: TObject; var Key: Char);
    procedure DBEdit5KeyPress(Sender: TObject; var Key: Char);
    procedure DBEdit6KeyPress(Sender: TObject; var Key: Char);

    procedure Edit8KeyPress(Sender: TObject; var Key: Char);
    procedure Edit9KeyPress(Sender: TObject; var Key: Char);
    procedure Edit2KeyPress(Sender: TObject; var Key: Char);
    procedure Edit3KeyPress(Sender: TObject; var Key: Char);
    procedure Edit6KeyPress(Sender: TObject; var Key: Char);
    procedure Edit5KeyPress(Sender: TObject; var Key: Char);
    procedure DBEdit18KeyPress(Sender: TObject; var Key: Char);
    procedure DBEdit19KeyPress(Sender: TObject; var Key: Char);
    procedure DBEdit11KeyPress(Sender: TObject; var Key: Char);
    procedure DBEdit8KeyPress(Sender: TObject; var Key: Char);
    procedure DBEdit24KeyPress(Sender: TObject; var Key: Char);
    procedure DBEdit25KeyPress(Sender: TObject; var Key: Char);
    procedure DBEdit26KeyPress(Sender: TObject; var Key: Char);
    procedure DBEdit17KeyPress(Sender: TObject; var Key: Char);
    procedure DBEdit32KeyPress(Sender: TObject; var Key: Char);

    procedure cxDBTextEdit50KeyPress(Sender: TObject; var Key: Char);

    procedure cxDBTextEdit58KeyPress(Sender: TObject; var Key: Char);
    procedure cxDBTextEdit59KeyPress(Sender: TObject; var Key: Char);

    procedure DBEdit12KeyPress(Sender: TObject; var Key: Char);
    procedure DBEdit13KeyPress(Sender: TObject; var Key: Char);
    procedure DBEdit14KeyPress(Sender: TObject; var Key: Char);
    procedure DBEdit15KeyPress(Sender: TObject; var Key: Char);
    procedure DBEdit16KeyPress(Sender: TObject; var Key: Char);

    procedure Edit10KeyPress(Sender: TObject; var Key: Char);
    procedure Edit11KeyPress(Sender: TObject; var Key: Char);
    procedure BtnExcluirClick(Sender: TObject);
    procedure BtnRelatoriosClick(Sender: TObject);

    procedure RAZAO_SOCIALKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
    procedure RAZAO_SOCIALKeyPress(Sender: TObject; var Key: Char);
    procedure dbedtNOME_FANTASIAKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
    procedure dbedtNOME_FANTASIAKeyPress(Sender: TObject; var Key: Char);
    procedure INICIO_ATIVIDADEKeyPress(Sender: TObject; var Key: Char);
    procedure INICIO_ATIVIDADEKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
    procedure CNPJKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
    procedure INSCRICAO_ESTADUALKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
    procedure INSCRICAO_MUNICIPALKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
    procedure SUFRAMAKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
    procedure NIREKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
    procedure CNAEKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
    procedure IE_SUBSTITUTO_TRIBUTARIOKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
    procedure NUMEROKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
    procedure DBEdit3KeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
    procedure BAIRROKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
    procedure COMPLEMENTOKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
    procedure CEPKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
    procedure EMPRESA_TELEFONE_01KeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
    procedure EMPRESA_EMAIL_01KeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
    procedure EMPRESA_SKYPEKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
    procedure EMPRESA_SITEKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
    procedure FormShow(Sender: TObject);
    procedure BtnAlterarClick(Sender: TObject);
    procedure CarregarDadosInternos();
    procedure BuscarSocios();
    procedure CNPJKeyPress(Sender: TObject; var Key: Char);
    procedure SUFRAMAKeyPress(Sender: TObject; var Key: Char);
    procedure NIREKeyPress(Sender: TObject; var Key: Char);
    procedure CNAEKeyPress(Sender: TObject; var Key: Char);
    procedure EMPRESA_TELEFONE_02KeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
    procedure NUMEROKeyPress(Sender: TObject; var Key: Char);
    procedure CEPKeyPress(Sender: TObject; var Key: Char);
    procedure MUNICIPIOKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
    procedure MUNICIPIOKeyPress(Sender: TObject; var Key: Char);
    procedure EMPRESA_TELEFONE_02KeyPress(Sender: TObject; var Key: Char);
    procedure EMPRESA_TELEFONE_03KeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
    procedure EMPRESA_TELEFONE_03KeyPress(Sender: TObject; var Key: Char);
    procedure ORGANIZACAO_CONTABIL_CNPJ_CPFKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
    procedure ORGANIZACAO_CONTABIL_CNPJ_CPFKeyPress(Sender: TObject; var Key: Char);
    procedure ORGANIZACAO_CONTABIL_CPFKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
    procedure ORGANIZACAO_CONTABIL_CPFKeyPress(Sender: TObject; var Key: Char);
    procedure CONTADOR_NOMEKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
    procedure CONTADOR_CRCKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
    procedure ORGANIZACAO_CONTABIL_NUMEROKeyPress(Sender: TObject; var Key: Char);
    procedure ORGANIZACAO_CONTABIL_TELEFONE_01KeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
    procedure ORGANIZACAO_CONTABIL_TELEFONE_01KeyPress(Sender: TObject; var Key: Char);
    procedure ORGANIZACAO_CONTABIL_CELULAR_01KeyPress(Sender: TObject; var Key: Char);
    procedure ORGANIZACAO_CONTABIL_TELEFONE_02KeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
    procedure ORGANIZACAO_CONTABIL_TELEFONE_02KeyPress(Sender: TObject; var Key: Char);
    procedure ORGANIZACAO_CONTABIL_TELEFONE_03KeyPress(Sender: TObject; var Key: Char);
    procedure ORGANIZACAO_CONTABIL_CELULAR_02KeyPress(Sender: TObject; var Key: Char);
    procedure BANCO_TELEFONE_01KeyPress(Sender: TObject; var Key: Char);
    procedure BANCO_TELEFONE_02KeyPress(Sender: TObject; var Key: Char);
    procedure BANCO_GERENTE_02KeyPress(Sender: TObject; var Key: Char);
    procedure BANCO_GERENTE_01KeyPress(Sender: TObject; var Key: Char);
    procedure DBEdit1KeyPress(Sender: TObject; var Key: Char);
    procedure DBEdit2KeyPress(Sender: TObject; var Key: Char);
    procedure BANCO_TELEFONE_02KeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
    procedure INSCRICAO_ESTADUALExit(Sender: TObject);
    procedure INSCRICAO_MUNICIPALExit(Sender: TObject);
    procedure ORGANIZACAO_CONTABIL_CEPKeyPress(Sender: TObject; var Key: Char);
    procedure IE_SUBSTITUTO_TRIBUTARIOExit(Sender: TObject);
    procedure dbedtNOME_CONTATO_ADKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
    procedure dbedtNOME_CONTATO_ADKeyPress(Sender: TObject; var Key: Char);
    procedure ORGANIZACAO_CONTABIL_EMAIL_02KeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
    procedure ORGANIZACAO_CONTABIL_NOMEKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
    procedure ORGANIZACAO_CONTABIL_NOMEKeyPress(Sender: TObject; var Key: Char);
    procedure CONTADOR_NOMEKeyPress(Sender: TObject; var Key: Char);
    procedure dbedt_datavencimentoKeyPress(Sender: TObject; var Key: Char);
    procedure dbedt_datavencimentoKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
    procedure INSCRICAO_MUNICIPALKeyPress(Sender: TObject; var Key: Char);
    procedure IE_SUBSTITUTO_TRIBUTARIOKeyPress(Sender: TObject; var Key: Char);
    procedure FormKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
    procedure dbedt_aliq_fixaKeyPress(Sender: TObject; var Key: Char);
    procedure dbedt_aliq_fixaKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
    procedure INSCRICAO_ESTADUALKeyPress(Sender: TObject; var Key: Char);
    procedure BtnCertificadoClick(Sender: TObject);
    procedure BtnEmailClick(Sender: TObject);
    procedure BtnNFEClick(Sender: TObject);
    procedure BtnNFCEClick(Sender: TObject);
    procedure BtnNFSEClick(Sender: TObject);
    procedure BtnMDEClick(Sender: TObject);
    procedure RAZAO_SOCIALExit(Sender: TObject);
    procedure cxCONTRIBUINTE_ICMSPropertiesChange(Sender: TObject);

  private
    { Private declarations }
    function RazaoSocialMaiorQue(pTamanhaMaximo:Integer):Boolean;
    procedure TrataDadosParaNFe;
  public
    { Public declarations }
  end;

var
  Form_Empresa: TForm_Empresa;

implementation

{$R *.dfm}

uses U_Municipio, relatorios,
  u_funcoes, liberacao, config_certificado, config_email,
   config_nfe, config_mde, config_nfs, config_nfce_;



procedure TForm_Empresa.BAIRROKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
begin
  if (Key = VK_RETURN) or (Key = VK_TAB) then
  begin
    COMPLEMENTO.SetFocus;
  end;
end;

procedure TForm_Empresa.BANCO_GERENTE_01KeyPress(Sender: TObject; var Key: Char);
begin
  inherited;
  Key := u_funcoes.ApenasLetras(Key);
end;

procedure TForm_Empresa.BANCO_GERENTE_02KeyPress(Sender: TObject; var Key: Char);
begin
  inherited;
  Key := u_funcoes.ApenasLetras(Key);
end;

procedure TForm_Empresa.BANCO_TELEFONE_01KeyPress(Sender: TObject; var Key: Char);
begin
  inherited;
  Key := u_funcoes.ApenasNumeros(Key);
end;

procedure TForm_Empresa.BANCO_TELEFONE_02KeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
begin
  if (Key = VK_RETURN) or (Key = VK_TAB) then
    BtnGravar.SetFocus;
end;

procedure TForm_Empresa.BANCO_TELEFONE_02KeyPress(Sender: TObject; var Key: Char);
begin
  inherited;
  Key := u_funcoes.ApenasNumeros(Key);
end;

procedure TForm_Empresa.BtnAlterarClick(Sender: TObject);
begin
  if RAZAO_SOCIAL.Text = '' then
  begin
    wnAlerta('Alterar', 'Nenhuma empresa foi cadastrada.');
    exit
  end
  else
  begin
    u_funcoes.IniciarCadastro([BtnIncluir, BtnCancelar, BtnAlterar], True);
    BuscarSocios();
    DS_Empresa.Edit;
    u_funcoes.AlterarEnabled([grpDadosEmpresa, grpOutras, grpLogo, grpContatosAd, grpEndereco, grpEscritorioCont, grpContatos,  grpContatosAd,
      grpContatoCont, grpPisCofins, GroupBox1, grpCRT,  cxButton5, cxButton1, cxButton2], True);
    RAZAO_SOCIAL.SetFocus;
    RAZAO_SOCIAL.selectall;
  end;

end;

function TForm_Empresa.RazaoSocialMaiorQue(pTamanhaMaximo:Integer):Boolean;
begin
    if Length(RAZAO_SOCIAL.Text) > pTamanhaMaximo then
    begin
      wnAlerta('Alterar', 'Sefaz obriga Raz�o Social com no m�ximo '+IntToStr(pTamanhaMaximo)+ ' caracteres.');
      RAZAO_SOCIAL.SetFocus;
      result := true;
      exit;
    end;
    result := false;
end;

procedure TForm_Empresa.BtnEmailClick(Sender: TObject);
begin
    frm_config_email := Tfrm_config_email.Create(nil);
    frm_config_email.showmodal;
end;

procedure TForm_Empresa.BtnExcluirClick(Sender: TObject);
begin
  if RAZAO_SOCIAL.Text = '' then
  begin
    wnAlerta('Excluir', 'Nenhuma empresa foi cadastrada.');
  end
  else
  begin
    if not TEnv.Tuser.IsAdmin then
    begin
      if TFrm_liberacao.Execute then
      begin
        u_funcoes.ExcluirCadastro(SQL_Empresa);
      end;
    end
    else
    begin
      u_funcoes.ExcluirCadastro(SQL_Empresa);
    end;
    CarregarDadosInternos();
  end;
end;

procedure TForm_Empresa.BtnCancelarClick(Sender: TObject);
begin
  SQL_Empresa.Cancel;
  SQL_Empresa.Close;
  u_funcoes.IniciarCadastro([BtnIncluir, BtnCancelar, BtnAlterar], false);
  Image1.Picture := nil;
  CarregarDadosInternos();
  u_funcoes.CamposObrigatorios_corpadrao([RAZAO_SOCIAL, dbedtNOME_FANTASIA, CNPJ, INSCRICAO_ESTADUAL, CNAE, DBEdit3, NUMERO, BAIRRO, CEP, MUNICIPIO, EMPRESA_TELEFONE_01,
    ORGANIZACAO_CONTABIL_FANTASIA, ORGANIZACAO_CONTABIL_CPF, CONTADOR_NOME, CONTADOR_CRC], [], []);

end;

procedure TForm_Empresa.BtnCertificadoClick(Sender: TObject);
begin
    frm_config_certificado := Tfrm_config_certificado.Create(nil);
    frm_config_certificado.showmodal;
end;

procedure TForm_Empresa.BtnGravarClick(Sender: TObject);
var vFloat:Real;
begin
    if RazaoSocialMaiorQue(60) then
       exit;

  if BtnIncluir.visible = false then
  begin
    if u_funcoes.CamposObrigatorios([RAZAO_SOCIAL, dbedtNOME_FANTASIA, CNPJ, INSCRICAO_ESTADUAL, CNAE, DBEdit3, NUMERO, BAIRRO, CEP, MUNICIPIO, EMPRESA_TELEFONE_01,
      ORGANIZACAO_CONTABIL_FANTASIA, ORGANIZACAO_CONTABIL_CPF, CONTADOR_NOME, CONTADOR_CRC, ORGANIZACAO_CONTABIL_EMAIL_01],
      ['Raz�o Social', 'Nome Fantasia', 'CNPJ', 'Inscri��o Estadual * ISENTO Caso n�o possua', 'CNAE ', 'Endere�o', 'N�mero', 'BAIRRO', 'CEP', 'Munic�pio',
      'Telefone * No m�nimo um', 'Organiza��o Contabil', 'CPF do Contador', 'Nome do Contador', 'CRC do Contador', 'Email do Contador * No m�nimo um'], [], [],
      [], []) then
      exit;

    if rgCODIGO_REGIME_TRIBUTARIO.ItemIndex = -1 then
    begin
      wnAlerta('Cadastro Empresa', 'Por favor, selecione um CRT para a empresa.');
      exit;
    end;

    //Wander 06/06/20
    if rgTRIBUTACAO_PIS_COFINS.ItemIndex = -1 then
    begin
      wnAlerta('Cadastro Empresa', 'Por favor, selecione um tipo de trib. PIS/COFINS para a empresa.');
      rgTRIBUTACAO_PIS_COFINS.SetFocus;
      exit;
    end;

    if u_funcoes.RemoverEspacoEmBranco(RemoverCaracteresEspeciais(INICIO_ATIVIDADE.Text)) = '' then
       SQL_EmpresaINICIO_ATIVIDADE.Text := '01/01/0001';

    //Wander 06/06/20
    Case rgTRIBUTACAO_PIS_COFINS.ItemIndex of
       0 : SQL_EmpresaTRIBUTACAO_PIS_COFINS.Value := 'CUMULATIVO';
       1 : SQL_EmpresaTRIBUTACAO_PIS_COFINS.Value := 'NAO_CUMULATIVO';
    End;

    SQL_Empresa.FieldByName('CODIGO_REGIME_TRIBUTARIO').AsInteger := rgCODIGO_REGIME_TRIBUTARIO.ItemIndex;

    //Wander 25/05/2020
    SQL_EmpresaCONTRIBUINTE_IPI.AsString       := 'N';
    SQL_EmpresaAPURACAO_MENSAL_IPI.AsString    := 'N';
    SQL_EmpresaAPURACAO_DECENDIAL_IPI.AsString := 'N';

    Case rgCONTRIBUINTE_IPI.ItemIndex of
       0 : SQL_EmpresaCONTRIBUINTE_IPI.AsString       := 'X';
       1 : SQL_EmpresaAPURACAO_MENSAL_IPI.AsString    := 'X';
       2 : SQL_EmpresaAPURACAO_DECENDIAL_IPI.AsString := 'X';
    End;

    //Wander 02/04/2020
    if cxCONTRIBUINTE_ICMS.Checked then
       SQL_Empresa.FieldByName('CONTRIBUINTE_ICMS').AsString := 'S'
    else
       SQL_Empresa.FieldByName('CONTRIBUINTE_ICMS').AsString := 'N';

    //Wander 20/04/2020
    if ed_EMPRESA_pCOFINS.Text = '' then
       ed_EMPRESA_pCOFINS.Text := '0.00';
    try
       vFloat := StrToFloat(ed_EMPRESA_pCOFINS.Text);
       if vFloat < 0 then
       begin
         ShowMessage('Valor Al�quota COFINS inv�lido');
         ed_EMPRESA_pCOFINS.SetFocus;
         exit;
       end;
       SQL_Empresa.FieldByName('pCOFINS').AsFloat := vFloat;
    except
       ShowMessage('Valor Al�quota COFINS inv�lido');
       ed_EMPRESA_pCOFINS.SetFocus;
       exit;
    end;

    if u_funcoes.RemoverCaracteresEspeciais(INICIO_ATIVIDADE.Text) <> '' then
      SQL_EmpresaINICIO_ATIVIDADE.Value := strtodate(INICIO_ATIVIDADE.Text)
    else
      SQL_EmpresaINICIO_ATIVIDADE.Value := 0;

    //Wander 06/06/20
    if edpPIS_CUMULATIVO.Text    = '' then edpPIS_CUMULATIVO.Text    := '0.00';
    if edpPIS_NAOCUMULATIVO.Text = '' then edpPIS_NAOCUMULATIVO.Text := '0.00';

    if not PercentualCorreto(edpPIS_CUMULATIVO.Text,'Percentual PIS Cumulativo') then
       exit;
    SQL_EmpresapPIS_CUMULATIVO.AsFloat    := ValorValido(edpPIS_CUMULATIVO.Text);

    if not PercentualCorreto(edpPIS_NAOCUMULATIVO.Text,'Percentual PIS N�o Cumulativo') then
       exit;
    SQL_EmpresapPIS_NAOCUMULATIVO.AsFloat := ValorValido(edpPIS_NAOCUMULATIVO.Text);

    SQL_Empresa.Post;

    MessageDLG('Opera��o conclu�da com sucesso', mtInformation, [mbOk], 0);
    u_funcoes.IniciarCadastro([BtnIncluir, BtnCancelar, BtnAlterar], false);

    //Wander 25/05/2020
    rgCONTRIBUINTE_IPI.ItemIndex:= -1;
    rgCODIGO_REGIME_TRIBUTARIO.ItemIndex := -1;

    //Wander 02/04/2020
    cxCONTRIBUINTE_ICMS.Checked := false;
    ed_EMPRESA_pCOFINS.Text              := '0,00';

    cxButton1.Enabled := false;
    cxButton2.Enabled := false;

    Image1.Picture := nil;

    CarregarDadosInternos();

    u_funcoes.CamposObrigatorios_corpadrao([RAZAO_SOCIAL, dbedtNOME_FANTASIA, CNPJ, INSCRICAO_ESTADUAL, CNAE, DBEdit3, NUMERO, BAIRRO, CEP, MUNICIPIO, EMPRESA_TELEFONE_01,
              ORGANIZACAO_CONTABIL_FANTASIA, ORGANIZACAO_CONTABIL_CPF, CONTADOR_NOME, CONTADOR_CRC], [], []);

  end;
end;

procedure TForm_Empresa.BtnIncluirClick(Sender: TObject);
begin
  u_funcoes.AlterarEnabled([grpDadosEmpresa, grpOutras, grpLogo, grpContatosAd, grpEndereco, grpEscritorioCont, grpContatos, grpContatosAd,
  grpContatoCont, grpPisCofins, GroupBox1, grpCRT, cxButton5, cxButton1, cxButton2], True);

  //Wander 25/05/2020
  rgCONTRIBUINTE_IPI.ItemIndex:= -1;
  rgCODIGO_REGIME_TRIBUTARIO.ItemIndex := -1;

  //Wander 02/04/2020
  cxCONTRIBUINTE_ICMS.Checked := false;
  ed_EMPRESA_pCOFINS.Text     := '0,00';

  SQL_Empresa.Active := True;
  SQL_Empresa.Insert; // vai amarrar o banco ate o usuario gravar ou desistir....
  SQL_EmpresaDATA_CADASTRO.Value := date;
  RAZAO_SOCIAL.SetFocus;
  u_funcoes.IniciarCadastro([BtnIncluir, BtnCancelar, BtnAlterar], True);
end;

procedure TForm_Empresa.BtnMDEClick(Sender: TObject);
begin
    Frm_Conf_mde := TFrm_Conf_mde.Create(nil);
    Frm_Conf_mde.showmodal;
end;

procedure TForm_Empresa.BtnNFCEClick(Sender: TObject);
begin
    frm_conf_nfce_ := Tfrm_conf_nfce_.Create(nil);
    frm_conf_nfce_.showmodal;
//    Frm_Conf_Nfce := TFrm_Conf_Nfce.Create(nil);
//    Frm_Conf_Nfce.showmodal;
end;

procedure TForm_Empresa.BtnNFEClick(Sender: TObject);
begin
    Frmconfig_NFe := TFrmconfig_NFe.Create(nil);
    Frmconfig_NFe.showmodal;
end;

procedure TForm_Empresa.BtnNFSEClick(Sender: TObject);
begin
    frm_confi_nfs := Tfrm_confi_nfs.Create(nil);
    frm_confi_nfs.showmodal;
end;

procedure TForm_Empresa.BuscarSocios;
begin
  SQL_Empresa.Active := True;
  with SQL_COLABORADOR do
  begin
    Close;
    parambyname('pcodigo').Value := SQL_EmpresaSOCIO_01.Value;
    parambyname('pcodigo2').Value := SQL_EmpresaSOCIO_02.Value;
    open;
    Active := True;
  end;
end;

procedure TForm_Empresa.CarregarDadosInternos;
var
  I: Integer;
begin
  BuscarSocios();
  u_funcoes.AlterarEnabled([grpDadosEmpresa, grpOutras, grpLogo, grpContatosAd, grpEndereco, grpEscritorioCont, grpContatos, grpContatosAd,
    grpContatoCont, grpPisCofins, GroupBox1, grpCRT, cxButton5, cxButton1, cxButton2], false);

  //Wander 06/06/20
  rgTRIBUTACAO_PIS_COFINS.ItemIndex := -1;
  if SQL_EmpresaTRIBUTACAO_PIS_COFINS.Value = 'CUMULATIVO' then
     rgTRIBUTACAO_PIS_COFINS.ItemIndex := 0
  else
  if SQL_EmpresaTRIBUTACAO_PIS_COFINS.Value = 'NAO_CUMULATIVO' then
     rgTRIBUTACAO_PIS_COFINS.ItemIndex := 1;

  //Wander 25/05/2020
  rgCONTRIBUINTE_IPI.ItemIndex:= 2; // N�o contribuinte
  if SQL_EmpresaAPURACAO_DECENDIAL_IPI.AsString = 'X' then
     rgCONTRIBUINTE_IPI.ItemIndex:= 1; // DECENDIAL
  if SQL_EmpresaAPURACAO_MENSAL_IPI.AsString = 'X' then
     rgCONTRIBUINTE_IPI.ItemIndex:= 0; // MENSAL
  rgCODIGO_REGIME_TRIBUTARIO.ItemIndex := SQL_Empresa.FieldByName('CODIGO_REGIME_TRIBUTARIO').AsInteger;

  //Wander 02/04/2020
  if SQL_Empresa.FieldByName('CONTRIBUINTE_ICMS').AsString = 'S' then
     cxCONTRIBUINTE_ICMS.Checked := True
  else
     cxCONTRIBUINTE_ICMS.Checked := False;

  //Wander 20/04/2020
  ed_EMPRESA_pCOFINS.Text := Float_to_String(SQL_Empresa.FieldByName('pCOFINS').AsFloat);

  if SQL_EmpresaLOGOTIPO.Value <> '' then
    if FileExists(SQL_EmpresaLOGOTIPO.Value, True) then
    begin
      Image1.Picture.LoadFromFile(SQL_EmpresaLOGOTIPO.Value);
      TL_colab.Hide;
    end;

  if SQL_EmpresaINICIO_ATIVIDADE.Text <> '' then
    INICIO_ATIVIDADE.Text := SQL_EmpresaINICIO_ATIVIDADE.Text;

  if SQL_EmpresaNOME_CONTATO_AD.Text <> '' then
    edt_nome_contato.Text := SQL_EmpresaNOME_CONTATO_AD.Text;

  edpPIS_CUMULATIVO.Text    := Float_to_String(SQL_EmpresapPIS_CUMULATIVO.AsFloat);
  edpPIS_NAOCUMULATIVO.Text := Float_to_String(SQL_EmpresapPIS_NAOCUMULATIVO.AsFloat);

  if SQL_EmpresaCODIGO.Text = '' then
  begin
    BtnIncluir.Enabled := True
  end
  else
  begin
    BtnIncluir.Enabled := false;
  end;

end;

procedure TForm_Empresa.CEPKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
begin
  if (Key = VK_RETURN) or (Key = VK_TAB) then
  begin
    cxButton5.Click;
  end;
end;

procedure TForm_Empresa.CEPKeyPress(Sender: TObject; var Key: Char);
begin
  inherited;
  Key := u_funcoes.ApenasNumeros(Key);
end;

//procedure TForm_Empresa.CHAVE_ATIVACAOKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
//begin
//  if (Key = VK_RETURN) or (Key = VK_TAB) then
//    dbedt_datavencimento.SetFocus;
//end;

procedure TForm_Empresa.CNAEKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
begin
  if (Key = VK_RETURN) or (Key = VK_TAB) then
    IE_SUBSTITUTO_TRIBUTARIO.SetFocus;
end;

procedure TForm_Empresa.CNAEKeyPress(Sender: TObject; var Key: Char);
begin
  inherited;
  Key := u_funcoes.ApenasNumeros(Key);
end;

procedure TForm_Empresa.CNPJKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
begin
  if (Key = VK_RETURN) or (Key = VK_TAB) then
    INSCRICAO_ESTADUAL.SetFocus;
end;

procedure TForm_Empresa.CNPJKeyPress(Sender: TObject; var Key: Char);
begin
  inherited;
  Key := u_funcoes.ApenasNumeros(Key);
end;

procedure TForm_Empresa.COMPLEMENTOKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
begin
  if (Key = VK_RETURN) or (Key = VK_TAB) then
    CEP.SetFocus;
end;

procedure TForm_Empresa.CONTADOR_CRCKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
begin
  if (Key = VK_RETURN) or (Key = VK_TAB) then
  begin
    CONTADOR_CRC.Field.Text := u_funcoes.RemoverCaracteresEspeciais(CONTADOR_CRC.Text);
    ORGANIZACAO_CONTABIL_NOME.SetFocus;
  end;

end;

procedure TForm_Empresa.CONTADOR_NOMEKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
begin
  if (Key = VK_RETURN) or (Key = VK_TAB) then
    CONTADOR_CRC.SetFocus;
end;

procedure TForm_Empresa.CONTADOR_NOMEKeyPress(Sender: TObject; var Key: Char);
begin
  inherited;
  Key := u_funcoes.ApenasLetras(Key);
end;

procedure TForm_Empresa.BtnRelatoriosClick(Sender: TObject);
begin

  frm_relatorio := Tfrm_relatorio.Create(Application);
  frm_relatorio.FRX_EMPRESA.LoadFromFile(frm_relatorio.PATH_EMPRESA, True);
  frm_relatorio.FRX_EMPRESA.showreport;
end;



procedure TForm_Empresa.cxButton1Click(Sender: TObject);
var
  Diretorio: String;
begin
  if OpenPictureDialog1.Execute then
  begin
    TL_colab.visible := false;
    Image1.Picture.LoadFromFile(OpenPictureDialog1.FileName);
    if not DirectoryExists(ExtractFilePath(Application.ExeName) + 'Fotos\') then
      forceDirectories(StringToOleStr(ExtractFilePath(Application.ExeName) + 'Fotos\'));
    Diretorio := ExtractFilePath(Application.ExeName) + 'Fotos\' + ExtractFileName(OpenPictureDialog1.FileName);
    Image1.Picture.SaveToFile(Diretorio);
    SQL_EmpresaLOGOTIPO.Value := Diretorio;
  end;
end;

procedure TForm_Empresa.cxButton2Click(Sender: TObject);
begin
  DeleteFile(SQL_EmpresaLOGOTIPO.AsString);
  SQL_EmpresaLOGOTIPO.Clear;
  Image1.Picture := nil;
  TL_colab.Show;
end;

procedure TForm_Empresa.cxButton5Click(Sender: TObject);
var
  query_tmp: TFDQuery;
begin
  Frm_Municipio := TFrm_Municipio.Create(Application);
  Frm_Municipio.InformarDadosMunicipio(MUNICIPIO, CODIGO_MUNICIPIO, ESTADO, PAIS, CODIGO_PAIS);
  Frm_Municipio.ShowModal;
  Frm_Municipio.Free;
  query_tmp := TFDQuery.Create(nil);
  with query_tmp do
  begin
    Connection := Module.Connection;
    Close;
    SQL.Clear;
    SQL.add('SELECT IBGE FROM ENDERECO_ESTADO WHERE UF = :puf');
    parambyname('puf').Value := ESTADO.Text;
    open;
    COD_UF.Text := FieldByName('IBGE').Value;
    Destroy;
  end;

end;

procedure TForm_Empresa.cxCONTRIBUINTE_ICMSPropertiesChange(Sender: TObject);
begin
  //Wander 02/04/2020
  //Se � contribuinte do ICMS, permite informar al�quotas de ICMS
  //Se n�o � contribuinte do ICMS, n�o permite informar al�quotas de ICMS
  //----------------------------------------------------------------------------

  edit1.Enabled := cxCONTRIBUINTE_ICMS.Checked;
  edit2.Enabled := cxCONTRIBUINTE_ICMS.Checked;
  if not cxCONTRIBUINTE_ICMS.Checked then
  begin
     edit1.Text := '';
     edit2.Text := '';
  end;

end;

procedure TForm_Empresa.cxDBTextEdit4KeyPress(Sender: TObject; var Key: Char);
begin

  inherited;
  Key := u_funcoes.ApenasNumeros(Key);
end;

procedure TForm_Empresa.cxDBTextEdit50KeyPress(Sender: TObject; var Key: Char);
begin
  inherited;
  Key := u_funcoes.ApenasNumeros(Key);
end;

procedure TForm_Empresa.cxDBTextEdit52KeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
begin
  if (Key = VK_RETURN) or (Key = VK_TAB) then
  begin

  end;
end;

procedure TForm_Empresa.cxDBTextEdit58KeyPress(Sender: TObject; var Key: Char);
begin
  inherited;
  Key := u_funcoes.ApenasNumeros(Key);
end;

procedure TForm_Empresa.cxDBTextEdit59KeyPress(Sender: TObject; var Key: Char);
begin
  inherited;
  Key := u_funcoes.ApenasNumeros(Key);
end;

procedure TForm_Empresa.cxDBTextEdit5KeyPress(Sender: TObject; var Key: Char);
begin

  inherited;
  Key := u_funcoes.ApenasNumeros(Key);
end;

procedure TForm_Empresa.cxDBTextEdit6KeyPress(Sender: TObject; var Key: Char);
begin

  inherited;
  Key := u_funcoes.ApenasNumeros(Key);
end;

procedure TForm_Empresa.cxDBTextEdit7KeyPress(Sender: TObject; var Key: Char);
begin

  inherited;
  Key := u_funcoes.ApenasNumeros(Key);
end;

procedure TForm_Empresa.cxDBTextEdit8KeyPress(Sender: TObject; var Key: Char);
begin
  inherited;
  Key := u_funcoes.ApenasNumeros(Key);
end;


procedure TForm_Empresa.DBEdit10KeyPress(Sender: TObject; var Key: Char);
begin
  inherited;
  Key := u_funcoes.ApenasNumeros(Key);
end;

procedure TForm_Empresa.DBEdit11KeyPress(Sender: TObject; var Key: Char);
begin
  inherited;
  Key := u_funcoes.ApenasNumeros(Key);
end;



procedure TForm_Empresa.DBEdit12KeyPress(Sender: TObject; var Key: Char);
begin
  inherited;
  Key := u_funcoes.ApenasNumeros(Key);
end;



procedure TForm_Empresa.DBEdit13KeyPress(Sender: TObject; var Key: Char);
begin
  inherited;
  Key := u_funcoes.ApenasNumeros(Key);
end;


procedure TForm_Empresa.DBEdit14KeyPress(Sender: TObject; var Key: Char);
begin
  inherited;
  Key := u_funcoes.ApenasNumeros(Key);
end;

procedure TForm_Empresa.DBEdit15KeyPress(Sender: TObject; var Key: Char);
begin
  inherited;
  Key := u_funcoes.ApenasNumeros(Key);
end;

procedure TForm_Empresa.DBEdit16KeyPress(Sender: TObject; var Key: Char);
begin
  inherited;
  Key := u_funcoes.ApenasNumeros(Key);
end;


procedure TForm_Empresa.DBEdit17KeyPress(Sender: TObject; var Key: Char);
begin
  inherited;
  Key := u_funcoes.ApenasNumeros(Key);
end;

procedure TForm_Empresa.DBEdit18KeyPress(Sender: TObject; var Key: Char);
begin
  inherited;
  Key := u_funcoes.ApenasNumeros(Key);
end;

procedure TForm_Empresa.DBEdit19KeyPress(Sender: TObject; var Key: Char);
begin
  inherited;
  Key := u_funcoes.ApenasNumeros(Key);
end;

procedure TForm_Empresa.DBEdit1KeyPress(Sender: TObject; var Key: Char);
begin
  inherited;
  Key := u_funcoes.ApenasLetras(Key);
end;

procedure TForm_Empresa.DBEdit24KeyPress(Sender: TObject; var Key: Char);
begin
  inherited;
  Key := u_funcoes.ApenasNumeros(Key);
end;

procedure TForm_Empresa.DBEdit25KeyPress(Sender: TObject; var Key: Char);
begin
  inherited;
  Key := u_funcoes.ApenasNumeros(Key);
end;

procedure TForm_Empresa.DBEdit26KeyPress(Sender: TObject; var Key: Char);
begin
  inherited;
  Key := u_funcoes.ApenasNumeros(Key);
end;


procedure TForm_Empresa.DBEdit2KeyPress(Sender: TObject; var Key: Char);
begin
  inherited;
  Key := u_funcoes.ApenasLetras(Key);
end;

procedure TForm_Empresa.DBEdit32KeyPress(Sender: TObject; var Key: Char);
begin
  inherited;
  Key := u_funcoes.ApenasNumeros(Key);
end;

procedure TForm_Empresa.DBEdit3KeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
begin
  if (Key = VK_RETURN) or (Key = VK_TAB) then
  begin
    DBEdit3.Field.Text := u_funcoes.RemoverCaracteresEspeciais(DBEdit3.Text);
    NUMERO.SetFocus;
  end;

end;

procedure TForm_Empresa.EMPRESA_EMAIL_01KeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
begin
  if (Key = VK_RETURN) or (Key = VK_TAB) then
  begin
    EMPRESA_SKYPE.SetFocus;
  end;
end;

procedure TForm_Empresa.EMPRESA_SITEKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
begin
  if (Key = VK_RETURN) or (Key = VK_TAB) then
    edt_nome_contato.SetFocus;
end;

procedure TForm_Empresa.EMPRESA_SKYPEKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
begin
  if (Key = VK_RETURN) or (Key = VK_TAB) then
  begin
    EMPRESA_SITE.SetFocus;
  end;
end;

procedure TForm_Empresa.EMPRESA_TELEFONE_01KeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
begin
  if (Key = VK_RETURN) or (Key = VK_TAB) then
  begin
    EMPRESA_EMAIL_01.SetFocus;
  end;
end;

procedure TForm_Empresa.EMPRESA_TELEFONE_01KeyPress(Sender: TObject; var Key: Char);
begin
  inherited;
  Key := u_funcoes.ApenasNumeros(Key);
end;

procedure TForm_Empresa.EMPRESA_TELEFONE_02KeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
begin
  if (Key = VK_RETURN) or (Key = VK_TAB) then
  begin
    EMPRESA_TELEFONE_03.SetFocus;
  end;
end;

procedure TForm_Empresa.EMPRESA_TELEFONE_02KeyPress(Sender: TObject; var Key: Char);
begin
  inherited;
  Key := u_funcoes.ApenasNumeros(Key);
end;

procedure TForm_Empresa.EMPRESA_TELEFONE_03KeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
begin
  if (Key = VK_RETURN) or (Key = VK_TAB) then
  begin
    EMPRESA_EMAIL_02.SetFocus;
  end;
end;

procedure TForm_Empresa.EMPRESA_TELEFONE_03KeyPress(Sender: TObject; var Key: Char);
begin
  inherited;
  Key := u_funcoes.ApenasNumeros(Key);
end;

procedure TForm_Empresa.DBEdit5KeyPress(Sender: TObject; var Key: Char);
begin
  inherited;
  Key := u_funcoes.ApenasNumeros(Key);
end;

procedure TForm_Empresa.DBEdit6KeyPress(Sender: TObject; var Key: Char);
begin
  inherited;
  Key := u_funcoes.ApenasNumeros(Key);
end;

procedure TForm_Empresa.DBEdit7KeyPress(Sender: TObject; var Key: Char);
begin
  inherited;
  Key := u_funcoes.ApenasNumeros(Key);
end;

procedure TForm_Empresa.DBEdit8KeyPress(Sender: TObject; var Key: Char);
begin
  inherited;
  Key := u_funcoes.ApenasNumeros(Key);
end;

procedure TForm_Empresa.DBEdit9KeyPress(Sender: TObject; var Key: Char);
begin
  inherited;
  Key := u_funcoes.ApenasNumeros(Key);
end;

procedure TForm_Empresa.dbedtNOME_FANTASIAKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
begin
  if (Key = VK_RETURN) or (Key = VK_TAB) then
    INICIO_ATIVIDADE.SetFocus;
end;

procedure TForm_Empresa.dbedtNOME_FANTASIAKeyPress(Sender: TObject; var Key: Char);
begin
  Key := u_funcoes.ContarQuantidadeCaracteres(dbedtNOME_FANTASIA, Key, 'Nome Fantasia', 50);
end;

procedure TForm_Empresa.dbedt_aliq_fixaKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
begin
  if (Key = VK_RETURN) or (Key = VK_TAB) then
    DBEdit3.SetFocus;
end;

procedure TForm_Empresa.dbedt_aliq_fixaKeyPress(Sender: TObject; var Key: Char);
begin
  inherited;
  Key := u_funcoes.ApenasNumeros(Key);
end;


procedure TForm_Empresa.dbedt_datavencimentoKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
begin
  if (Key = VK_RETURN) or (Key = VK_TAB) then
    EMPRESA_TELEFONE_01.SetFocus;
end;

procedure TForm_Empresa.dbedt_datavencimentoKeyPress(Sender: TObject; var Key: Char);
begin
  inherited;
  Key := u_funcoes.ApenasNumeros(Key);
end;

procedure TForm_Empresa.Edit10KeyPress(Sender: TObject; var Key: Char);
begin
  inherited;
  Key := u_funcoes.ApenasNumeros(Key);
end;

procedure TForm_Empresa.Edit11KeyPress(Sender: TObject; var Key: Char);
begin
  inherited;
  Key := u_funcoes.ApenasNumeros(Key);
end;

procedure TForm_Empresa.Edit2KeyPress(Sender: TObject; var Key: Char);
begin
  inherited;
  Key := u_funcoes.ApenasNumeros(Key);
end;

procedure TForm_Empresa.Edit3KeyPress(Sender: TObject; var Key: Char);
begin
  inherited;
  Key := u_funcoes.ApenasNumeros(Key);
end;

procedure TForm_Empresa.Edit4KeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
begin
  if (Key = VK_RETURN) or (Key = VK_TAB) then
  begin
    with SQL_Empresa do
    begin
      Close;
      Params[0].Value := SQL_EmpresaCODIGO.Value;
      open;
      Edit;
    end;

    //Wander 02/04/2020
    if SQL_Empresa.FieldByName('CONTRIBUINTE_ICMS').AsString = 'S' then
       cxCONTRIBUINTE_ICMS.Checked := True
    else
       cxCONTRIBUINTE_ICMS.Checked := False;

    //Wander 20/04/20
    ed_EMPRESA_pCOFINS.Text := Float_to_String(SQL_Empresa.FieldByName('pCOFINS').AsFloat);

    //Wander 25/05/2020
    rgCONTRIBUINTE_IPI.ItemIndex:= 2; // N�o contribuinte do IPI
    if SQL_EmpresaAPURACAO_MENSAL_IPI.AsString = 'X' then
       rgCONTRIBUINTE_IPI.ItemIndex:= 0; // MENSAL
    if SQL_EmpresaAPURACAO_DECENDIAL_IPI.Value = 'X' then
       rgCONTRIBUINTE_IPI.ItemIndex:= 1; // DECENDIAL

    with SQL_COLABORADOR do
    begin
      Close;
      Params[0].Value := SQL_EmpresaSOCIO_01.Value;
      open;
    end;
    with SQL_COLABORADOR do
    begin
      Close;
      Params[0].Value := SQL_EmpresaSOCIO_02.Value;
      open;
      Close;
    end;

    Image1.Picture := nil;
    BtnIncluir.Enabled := false;
    BtnCancelar.Enabled := True;
    BtnGravar.Enabled := True;
    cxButton1.Enabled := True;
    cxButton2.Enabled := True;
    if SQL_EmpresaLOGOTIPO.AsString <> '' then
    begin
      Image1.Picture.LoadFromFile(SQL_EmpresaLOGOTIPO.AsString);
      // buscar foto na pasta
    end;

  end;

end;

procedure TForm_Empresa.Edit5KeyPress(Sender: TObject; var Key: Char);
begin
  inherited;
  Key := u_funcoes.ApenasNumeros(Key);
end;

procedure TForm_Empresa.Edit6KeyPress(Sender: TObject; var Key: Char);
begin
  inherited;
  Key := u_funcoes.ApenasNumeros(Key);
end;

procedure TForm_Empresa.Edit8KeyPress(Sender: TObject; var Key: Char);
begin
  inherited;
  Key := u_funcoes.ApenasNumeros(Key);
end;

procedure TForm_Empresa.Edit9KeyPress(Sender: TObject; var Key: Char);
begin
  inherited;
  Key := u_funcoes.ApenasNumeros(Key);
end;

procedure TForm_Empresa.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  Action := cafree;
  Self := nil;
end;

procedure TForm_Empresa.FormKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
begin
  u_funcoes.TeclasAtalho(Key, [VK_F1, VK_F2, VK_F3, VK_F4], [BtnIncluir, BtnGravar, BtnCancelar, BtnAlterar]);
end;

procedure TForm_Empresa.FormShow(Sender: TObject);
begin
  TrataDadosParaNFe;
  CarregarDadosInternos();
end;

procedure TForm_Empresa.IE_SUBSTITUTO_TRIBUTARIOExit(Sender: TObject);
begin
  IE_SUBSTITUTO_TRIBUTARIO.Field.Text := u_funcoes.RemoverCaracteresEspeciais(IE_SUBSTITUTO_TRIBUTARIO.Text);
end;

procedure TForm_Empresa.IE_SUBSTITUTO_TRIBUTARIOKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
begin
  if (Key = VK_RETURN) or (Key = VK_TAB) then
  begin
    DBEdit3.SetFocus;
  end;
end;

procedure TForm_Empresa.IE_SUBSTITUTO_TRIBUTARIOKeyPress(Sender: TObject; var Key: Char);
begin
  inherited;
  Key := u_funcoes.ApenasNumeros(Key);
end;

procedure TForm_Empresa.INICIO_ATIVIDADEKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
begin
  if (Key = VK_RETURN) or (Key = VK_TAB) then
    CNPJ.SetFocus;
end;

procedure TForm_Empresa.INICIO_ATIVIDADEKeyPress(Sender: TObject; var Key: Char);
begin
  inherited;
  Key := u_funcoes.ApenasNumeros(Key);
end;

procedure TForm_Empresa.INSCRICAO_ESTADUALExit(Sender: TObject);
begin
  INSCRICAO_ESTADUAL.Field.Text := u_funcoes.RemoverCaracteresEspeciais(INSCRICAO_ESTADUAL.Text);
  u_funcoes.ValidarIE(INSCRICAO_ESTADUAL);
end;

procedure TForm_Empresa.INSCRICAO_ESTADUALKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
begin
  if (Key = VK_RETURN) or (Key = VK_TAB) then
  begin

    INSCRICAO_MUNICIPAL.SetFocus;
  end;
end;

procedure TForm_Empresa.INSCRICAO_ESTADUALKeyPress(Sender: TObject; var Key: Char);
begin
  inherited;
  Key := u_funcoes.ApenasNumeros(Key);
end;

procedure TForm_Empresa.INSCRICAO_MUNICIPALExit(Sender: TObject);
begin
  INSCRICAO_MUNICIPAL.Text := u_funcoes.RemoverCaracteresEspeciais(INSCRICAO_MUNICIPAL.Text);
end;

procedure TForm_Empresa.INSCRICAO_MUNICIPALKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
begin
  if (Key = VK_RETURN) or (Key = VK_TAB) then
  begin
    INSCRICAO_ESTADUAL.Text := u_funcoes.RemoverCaracteresEspeciais(INSCRICAO_ESTADUAL.Text);
    SUFRAMA.SetFocus;
  end;
end;

procedure TForm_Empresa.INSCRICAO_MUNICIPALKeyPress(Sender: TObject; var Key: Char);
begin
  inherited;
  Key := u_funcoes.ApenasNumeros(Key);
end;

procedure TForm_Empresa.MUNICIPIOKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
begin
  if (Key = VK_RETURN) then
    cxButton5.Click;
end;

procedure TForm_Empresa.MUNICIPIOKeyPress(Sender: TObject; var Key: Char);
begin
  inherited;
  Key := u_funcoes.ApenasLetras(Key);
end;

procedure TForm_Empresa.NIREKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
begin
  if (Key = VK_RETURN) or (Key = VK_TAB) then
    CNAE.SetFocus;
end;

procedure TForm_Empresa.NIREKeyPress(Sender: TObject; var Key: Char);
begin
  inherited;
  Key := u_funcoes.ApenasNumeros(Key);
end;

procedure TForm_Empresa.dbedtNOME_CONTATO_ADKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
begin
  if (Key = VK_RETURN) or (Key = VK_TAB) then
    EMPRESA_TELEFONE_02.SetFocus
end;

procedure TForm_Empresa.dbedtNOME_CONTATO_ADKeyPress(Sender: TObject; var Key: Char);
begin
  inherited;
  Key := u_funcoes.ApenasLetras(Key);
end;

procedure TForm_Empresa.NUMEROKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
begin
  if (Key = VK_RETURN) or (Key = VK_TAB) then
    BAIRRO.SetFocus;
end;

procedure TForm_Empresa.NUMEROKeyPress(Sender: TObject; var Key: Char);
begin
  inherited;
  Key := u_funcoes.ApenasNumeros(Key);
end;


procedure TForm_Empresa.ORGANIZACAO_CONTABIL_CELULAR_01KeyPress(Sender: TObject; var Key: Char);
begin
  inherited;
  Key := u_funcoes.ApenasNumeros(Key);
end;

procedure TForm_Empresa.ORGANIZACAO_CONTABIL_CELULAR_02KeyPress(Sender: TObject; var Key: Char);
begin
  inherited;
  Key := u_funcoes.ApenasNumeros(Key);
end;

procedure TForm_Empresa.ORGANIZACAO_CONTABIL_CEPKeyPress(Sender: TObject; var Key: Char);
begin
  Key := u_funcoes.ApenasNumeros(Key);
end;

procedure TForm_Empresa.ORGANIZACAO_CONTABIL_CNPJ_CPFKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
begin
  if (Key = VK_RETURN) or (Key = VK_TAB) then
    ORGANIZACAO_CONTABIL_CPF.SetFocus;
end;

procedure TForm_Empresa.ORGANIZACAO_CONTABIL_CNPJ_CPFKeyPress(Sender: TObject; var Key: Char);
begin
  inherited;
  Key := u_funcoes.ApenasNumeros(Key);
end;

procedure TForm_Empresa.ORGANIZACAO_CONTABIL_CPFKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
begin
  if (Key = VK_RETURN) or (Key = VK_TAB) then
    CONTADOR_NOME.SetFocus;
end;

procedure TForm_Empresa.ORGANIZACAO_CONTABIL_CPFKeyPress(Sender: TObject; var Key: Char);
begin
  inherited;
  Key := u_funcoes.ApenasNumeros(Key);
end;


procedure TForm_Empresa.ORGANIZACAO_CONTABIL_EMAIL_02KeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
begin
  if (Key = VK_RETURN) or (Key = VK_TAB) then
    ORGANIZACAO_CONTABIL_NOME.SetFocus;
end;




procedure TForm_Empresa.ORGANIZACAO_CONTABIL_NOMEKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
begin
  if (Key = VK_RETURN) or (Key = VK_TAB) then
    ORGANIZACAO_CONTABIL_CELULAR_01.SetFocus;
end;

procedure TForm_Empresa.ORGANIZACAO_CONTABIL_NOMEKeyPress(Sender: TObject; var Key: Char);
begin
  inherited;
  Key := u_funcoes.ApenasLetras(Key);
end;


procedure TForm_Empresa.ORGANIZACAO_CONTABIL_NUMEROKeyPress(Sender: TObject; var Key: Char);
begin
  inherited;
  Key := u_funcoes.ApenasNumeros(Key);
end;

procedure TForm_Empresa.ORGANIZACAO_CONTABIL_TELEFONE_01KeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
begin
  if (Key = VK_RETURN) or (Key = VK_TAB) then
    ORGANIZACAO_CONTABIL_TELEFONE_02.SetFocus;
end;

procedure TForm_Empresa.ORGANIZACAO_CONTABIL_TELEFONE_01KeyPress(Sender: TObject; var Key: Char);
begin
  inherited;
  Key := u_funcoes.ApenasNumeros(Key);
end;

procedure TForm_Empresa.ORGANIZACAO_CONTABIL_TELEFONE_02KeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
begin
  if (Key = VK_RETURN) or (Key = VK_TAB) then
    ORGANIZACAO_CONTABIL_EMAIL_01.SetFocus;
end;

procedure TForm_Empresa.ORGANIZACAO_CONTABIL_TELEFONE_02KeyPress(Sender: TObject; var Key: Char);
begin
  inherited;
  Key := u_funcoes.ApenasNumeros(Key);
end;

procedure TForm_Empresa.ORGANIZACAO_CONTABIL_TELEFONE_03KeyPress(Sender: TObject; var Key: Char);
begin
  inherited;
  Key := u_funcoes.ApenasNumeros(Key);
end;

procedure TForm_Empresa.RAZAO_SOCIALExit(Sender: TObject);
begin
    if BtnCancelar.Focused  then
       exit;

    if RazaoSocialMaiorQue(60) then
       exit;

end;

procedure TForm_Empresa.RAZAO_SOCIALKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
begin
  if (Key = VK_RETURN) or (Key = VK_TAB) then
    dbedtNOME_FANTASIA.SetFocus;
end;

procedure TForm_Empresa.RAZAO_SOCIALKeyPress(Sender: TObject; var Key: Char);
begin
  Key := u_funcoes.ContarQuantidadeCaracteres(RAZAO_SOCIAL, Key, 'Raz�o Social', 100);
end;

procedure TForm_Empresa.SUFRAMAKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
begin
  if (Key = VK_RETURN) or (Key = VK_TAB) then
    NIRE.SetFocus;
end;

procedure TForm_Empresa.SUFRAMAKeyPress(Sender: TObject; var Key: Char);
begin
  inherited;
  Key := u_funcoes.ApenasNumeros(Key);
end;


procedure TForm_Empresa.TrataDadosParaNFe;
begin
  // obriga razao social <= 60 caracteres (Limite imposto pela NFe)
  RAZAO_SOCIAL.MaxLength := 60;
end;

end.


