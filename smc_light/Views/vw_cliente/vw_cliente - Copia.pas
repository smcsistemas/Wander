//Verificado automaticamente em 16/06/2020 09:29
﻿{ v 18.10.16 14:50 }
unit vw_cliente;
{
================================================================================
|   DATA   |DESENVOLVEDOR|HISTORICO DA ALTERACAO DO CODIGO                     |
|----------|-------------|-----------------------------------------------------|
|21/02/2020|WANDER       |Passou a criticar se o usuário tem permissão para    |
|        08|             |incluir clientes.                                    |
|----------|-------------|-----------------------------------------------------|
|21/02/2020|WANDER       |Passou a criticar se o usuário tem permissão para    |
|        13|             |alterar dados de clientes.                                    |
|----------|-------------|-----------------------------------------------------|
|21/02/2020|WANDER       |Passou a criticar se o usuário tem permissão para    |
|        14|             |excluir clientes.                                    |
================================================================================
Obs:
08, 13... são números das alterações do Wander (AlteracoesFeitasPor_Wander.pas)

}

interface

uses
  Winapi.Windows, System.SysUtils, System.Variants,
  System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls, Vcl.ComCtrls, Vcl.DBCtrls,
  Vcl.Mask, cxGraphics,

  cxTextEdit, cxDBEdit, cxPC, cxMaskEdit, cxDropDownEdit,
  cxCheckBox, cxGroupBox, cxCalendar,
  Vcl.Menus, cxButtons,
  FireDAC.Stan.Param,
  Data.DB,
  FireDAC.Comp.DataSet, FireDAC.Comp.Client,
  Vcl.ExtCtrls, ShellApi,

  cxGridCustomTableView, cxGridTableView, cxGridDBTableView, cxGridLevel,
  cxGrid,
  cxGridDBBandedTableView,
  System.StrUtils, XMLIntf, v_env, h_Formats, h_functions, h_DB, cxControls, cxLookAndFeels, cxLookAndFeelPainters, dxSkinsCore,
  dxSkinBlack, dxSkinBlue, dxSkinBlueprint,
  dxSkinCaramel,
  dxSkinCoffee, dxSkinDarkRoom,
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
  dxSkinXmas2008Blue, dxSkinscxPCPainter,
  dxBarBuiltInMenu,
  cxStyles, cxCustomData, cxFilter, cxData, cxDataStorage, cxEdit, cxNavigator, cxDBData, cxLabel, cxContainer, dxCore, cxDateUtils,
  FireDAC.Stan.Intf, FireDAC.Stan.Option,
  FireDAC.Stan.Error,
  FireDAC.DatS, FireDAC.Phys.Intf, FireDAC.DApt.Intf, FireDAC.Stan.Async, FireDAC.DApt, Vcl.ImgList, cxGridBandedTableView,
  dxGDIPlusClasses, cxClasses, cxGridCustomView,
  cxCurrencyEdit;

type
  Tfrm_cliente = class(TForm)
    DS_Cliente: TDataSource;
    SQL_Cliente: TFDQuery;
    SQL_ClienteCODIGO: TFDAutoIncField;
    SQL_ClienteDATA_CADASTRO: TDateField;
    SQL_ClienteSITUACAO_FINANCEIRA: TStringField;
    SQL_ClienteCONSUMIDOR_FINAL: TStringField;
    SQL_ClientePESSOA_TIPO: TStringField;
    SQL_ClienteRAZAO_SOCIAL: TStringField;
    SQL_ClienteFANTASIA: TStringField;
    SQL_ClienteCPF: TStringField;
    SQL_ClienteCNPJ: TStringField;
    SQL_ClienteNATURALIDADE: TStringField;
    SQL_ClienteNACIONALIDADE: TStringField;
    SQL_ClienteRG: TStringField;
    SQL_ClienteORGAO_EMISSOR: TStringField;
    SQL_ClienteINSCRICAO_ESTADUAL: TStringField;
    SQL_ClienteINSCRICAO_MUNICIPAL: TStringField;
    SQL_ClienteSTATUS_CADASTRAL: TStringField;
    SQL_ClienteSEXO: TStringField;
    SQL_ClienteESTADO_CIVIL: TStringField;
    SQL_ClienteRAMO_ATIVIDADE: TStringField;
    SQL_ClienteATIVIDADE: TStringField;
    SQL_ClienteNOME_PAI: TStringField;
    SQL_ClienteNOME_MAE: TStringField;
    SQL_ClienteLIMITE_CREDITO: TBCDField;
    SQL_ClienteENDERECO: TStringField;
    SQL_ClienteNUMERO: TStringField;
    SQL_ClienteBAIRRO: TStringField;
    SQL_ClienteCOMPLEMENTO: TStringField;
    SQL_ClienteMUNICIPIO: TStringField;
    SQL_ClienteCODIGO_MUNICIPIO: TIntegerField;
    SQL_ClienteREGIAO: TStringField;
    SQL_ClienteZONA: TStringField;
    SQL_ClienteESTADO: TStringField;
    SQL_ClientePAIS: TStringField;
    SQL_ClienteCODIGO_PAIS: TIntegerField;
    SQL_ClienteALIQUOTA_FECOEP: TIntegerField;
    SQL_ClienteCONTATO_NOME: TStringField;
    SQL_ClienteCONTATO_CELULAR: TStringField;
    SQL_ClienteTELEFONE: TStringField;
    SQL_ClienteTELEFONE_1: TStringField;
    SQL_ClienteCELULAR: TStringField;
    SQL_ClienteCONTATO: TStringField;
    SQL_ClienteCELULAR_1: TStringField;
    SQL_ClienteCONTATO_1: TStringField;
    SQL_ClienteEMAIL: TStringField;
    SQL_ClienteEMAIL_1: TStringField;
    SQL_ClienteSKYPE: TStringField;
    SQL_ClienteOBSERVACAO: TStringField;
    SQL_ClienteBANCO_OP_CONTA: TStringField;
    SQL_ClienteCLIENTE_TIPO: TStringField;
    sql_increment: TFDQuery;
    sql_incrementAUTO_INCREMENT: TLargeintField;
    DS_C_Clientes: TDataSource;
    SQL_C_Clientes: TFDQuery;
    page_control: TcxPageControl;
    SQL_ClienteCONSUMIDOR_TIPO: TStringField;
    popmenugrid: TPopupMenu;
    Cadastrarcomofornecedor1: TMenuItem;
    SQL_ClienteDATA_NASCIMENTO: TDateField;
    SQL_ClienteDATA_EMISSAO: TDateField;
    SQL_DADOS_OTICA: TFDQuery;
    DS_DADOS_OTICA: TDataSource;
    grid_otica_pop: TPopupMenu;
    Alterar1: TMenuItem;
    Excluir1: TMenuItem;
    SQL_DADOS_OTICACODIGO: TFDAutoIncField;
    SQL_DADOS_OTICACODIGO_CLIENTE: TIntegerField;
    SQL_DADOS_OTICADATA_CADASTRO: TSQLTimeStampField;
    SQL_DADOS_OTICAL_OE_ESFERA: TStringField;
    SQL_DADOS_OTICAL_OE_CILINDRO: TStringField;
    SQL_DADOS_OTICAL_OE_EIXO: TStringField;
    SQL_DADOS_OTICAL_OE_DISTANCIA_PUPILAR: TStringField;
    SQL_DADOS_OTICAL_OD_ESFERA: TStringField;
    SQL_DADOS_OTICAL_OD_CILINDRO: TStringField;
    SQL_DADOS_OTICAL_OD_EIXO: TStringField;
    SQL_DADOS_OTICAL_OD_DISTANCIA_PUPILAR: TStringField;
    SQL_DADOS_OTICAP_OE_ESFERA: TStringField;
    SQL_DADOS_OTICAP_OE_CILINDRO: TStringField;
    SQL_DADOS_OTICAP_OE_EIXO: TStringField;
    SQL_DADOS_OTICAP_OE_DISTANCIA_PUPILAR: TStringField;
    SQL_DADOS_OTICAP_OD_ESFERA: TStringField;
    SQL_DADOS_OTICAP_OD_CILINDRO: TStringField;
    SQL_DADOS_OTICAP_OD_EIXO: TStringField;
    SQL_DADOS_OTICAP_OD_DISTANCIA_PUPILAR: TStringField;
    SQL_DADOS_OTICALENTE_GRAU: TStringField;
    SQL_DADOS_OTICAARMACAO_GRAU: TStringField;
    SQL_DADOS_OTICALENTE_SOLAR: TStringField;
    SQL_DADOS_OTICAARMACAO_SOLAR: TStringField;
    SQL_DADOS_OTICAADICAO: TStringField;
    SQL_C_Clientescodigo: TFDAutoIncField;
    SQL_C_Clientesdata_cadastro: TDateField;
    SQL_C_Clientespessoa_tipo: TStringField;
    SQL_C_Clientesrazao_social: TStringField;
    SQL_C_Clientesfantasia: TStringField;
    SQL_C_Clientescpf: TStringField;
    SQL_C_Clientescnpj: TStringField;
    SQL_C_Clientesinscricao_estadual: TStringField;
    SQL_C_Clientesstatus_cadastral: TStringField;
    SQL_C_Clientesmunicipio: TStringField;
    SQL_C_Clientesestado: TStringField;
    SQL_C_Clientestelefone: TStringField;
    SQL_C_Clientescelular: TStringField;
    imlist: TcxImageList;
    tab_consulta: TcxTabSheet;
    Label45: TLabel;
    Label47: TLabel;
    gd: TcxGrid;
    tb: TcxGridDBTableView;
    tbstatus_cadastral: TcxGridDBColumn;
    tbpessoa_tipo: TcxGridDBColumn;
    tbcodigo: TcxGridDBColumn;
    tbdata_cadastro: TcxGridDBColumn;
    tbrazao_social: TcxGridDBColumn;
    tbfantasia: TcxGridDBColumn;
    tbcnpj: TcxGridDBColumn;
    tbcpf: TcxGridDBColumn;
    tbtelefone: TcxGridDBColumn;
    tbcelular: TcxGridDBColumn;
    tbinscricao_estadual: TcxGridDBColumn;
    tbmunicipio: TcxGridDBColumn;
    tbestado: TcxGridDBColumn;
    lv: TcxGridLevel;
    cxGroupBox1: TcxGroupBox;
    Image1: TImage;
    Image2: TImage;
    chkFisica: TcxCheckBox;
    chkJuridica: TcxCheckBox;
    cxGroupBox2: TcxGroupBox;
    chkAtivo: TcxCheckBox;
    chkInativo: TcxCheckBox;
    edt_consulta: TEdit;
    cbFiltro: TcxComboBox;
    Label49: TLabel;
    cbOrder: TcxComboBox;
    SQL_Clienteconvenio_inicio: TDateField;
    SQL_Clienteconvenio_fim: TDateField;
    SQL_ClienteROTA: TStringField;
    btn_relatorios_cli: TcxButton;
    tab_cadastrar: TcxTabSheet;
    Label10: TLabel;
    GroupBox8: TGroupBox;
    BtnFisica: TcxButton;
    BtnJuridica: TcxButton;
    BtnGravar: TcxButton;
    BtnCancelar: TcxButton;
    BtnIncluir: TcxButton;
    BtnAlterar: TcxButton;
    gpFisica: TGroupBox;
    Label25: TLabel;
    Label3: TLabel;
    lblRG: TLabel;
    Label1: TLabel;
    Label7: TLabel;
    Label6: TLabel;
    Label30: TLabel;
    Label2: TLabel;
    Label5: TLabel;
    Label4: TLabel;
    dbcbSexo: TDBComboBox;
    dbedtRG: TDBEdit;
    dbedtOE: TcxDBTextEdit;
    edt_ie: TDBEdit;
    dbedtNome: TDBEdit;
    cxDBTextEdit9: TcxDBTextEdit;
    edt_data: TcxDateEdit;
    DBEdit73: TcxDateEdit;
    DBComboBox3: TDBComboBox;
    MaskEdit1: TMaskEdit;
    cxButton20: TcxButton;
    cxButton19: TcxButton;
    dbedt_codigo: TDBEdit;
    gpJuridica: TGroupBox;
    lbl2: TLabel;
    lbl3: TLabel;
    lbl4: TLabel;
    lbl5: TLabel;
    lbl6: TLabel;
    lbl7: TLabel;
    lbl8: TLabel;
    dbedtINSCRICAO_ESTADUAL: TDBEdit;
    dbedtINSCRICAO_MUNICIPAL: TDBEdit;
    dbedt_atividade: TDBEdit;
    dbedt_fantasia: TDBEdit;
    dbedt_razaosocial: TDBEdit;
    btn_ramo: TcxButton;
    medt1: TMaskEdit;
    grpEndereco: TGroupBox;
    Label8: TLabel;
    Label9: TLabel;
    Label11: TLabel;
    Label12: TLabel;
    btnMunicip: TcxButton;
    cxComboBox3: TcxComboBox;
    cxGrid4: TcxGrid;
    cxGridDBTableView3: TcxGridDBTableView;
    cxGridLevel3: TcxGridLevel;
    btn_end_sv: TcxButton;
    bt_end_alt: TcxButton;
    btn_zona: TcxButton;
    gpContato: TGroupBox;
    DBEdit6: TDBEdit;
    DBEdit2: TDBEdit;
    DBEdit8: TDBEdit;
    DBEdit11: TDBEdit;
    DBEdit5: TDBEdit;
    DBEdit4: TDBEdit;
    cxButton15: TcxButton;
    cxButton16: TcxButton;
    cxButton17: TcxButton;
    DBEdit7: TDBEdit;
    DBEdit16: TDBEdit;

    cxGridDBTableView1: TcxGridDBTableView;
    cxGridDBColumn1: TcxGridDBColumn;
    cxGridDBColumn2: TcxGridDBColumn;
    cxGridDBColumn3: TcxGridDBColumn;
    cxGridDBColumn4: TcxGridDBColumn;
    cxGridDBTableView1Column2: TcxGridDBColumn;
    cxGridDBColumn5: TcxGridDBColumn;
    cxGridDBTableView1Column1: TcxGridDBColumn;
    cxGridDBTableView1Column3: TcxGridDBColumn;
    cxGridDBColumn7: TcxGridDBColumn;
    cxGridLevel1: TcxGridLevel;
    gpBanco: TGroupBox;
    cxDBTextEdit1: TcxDBTextEdit;
    DBEdit9: TDBEdit;
    DBEdit10: TDBEdit;
    DBEdit12: TDBEdit;
    DBEdit13: TDBEdit;
    DBEdit15: TDBEdit;
    cxGrid2: TcxGrid;
    cxGridDBTableView2: TcxGridDBTableView;
    cxGridDBColumn9: TcxGridDBColumn;
    cxGridDBColumn10: TcxGridDBColumn;
    cxGridDBColumn11: TcxGridDBColumn;
    cxGridDBColumn12: TcxGridDBColumn;
    cxGridDBColumn13: TcxGridDBColumn;
    cxGridDBColumn14: TcxGridDBColumn;
    cxGridDBColumn15: TcxGridDBColumn;
    cxGridLevel2: TcxGridLevel;
    cxButton2: TcxButton;
    cxButton3: TcxButton;
    cxButton4: TcxButton;
    gpData: TGroupBox;
    Label14: TLabel;
    Label15: TLabel;
    DateTimePicker3: TDateTimePicker;
    DateTimePicker4: TDateTimePicker;
    Label13: TLabel;
    Label16: TLabel;
    DBEdit17: TDBEdit;
    cxComboBox4: TcxComboBox;
    chk_rural: TcxCheckBox;
    cxButton21: TcxButton;
    cxButton22: TcxButton;
    cxButton9: TcxButton;
    cxButton14: TcxButton;
    cxButton10: TcxButton;
    cxButton7: TcxButton;
    cxButton8: TcxButton;
    cxButton18: TcxButton;
    cxButton6: TcxButton;
    btn_cep: TcxButton;
    DBEdit76: TDBEdit;
    DBEdit75: TDBEdit;
    DBEdit79: TDBEdit;
    DBEdit77: TDBEdit;
    DBEdit78: TDBEdit;
    DBEdit1: TDBEdit;
    DBEdit81: TDBEdit;
    DBEdit80: TDBEdit;
    DBEdit82: TDBEdit;
    DBEdit104: TDBEdit;
    DBEdit83: TDBEdit;
    chk_concerssionaria: TcxCheckBox;
    btn_bairro: TcxButton;
    cbSitTribICMS: TDBComboBox;
    DBComboBox1: TDBComboBox;
    DBEdit3: TDBEdit;
    sql_CLIENTE_ENDERECO: TFDQuery;
    ds_CLIENTE_ENDERECO: TDataSource;
    sql_CLIENTE_ENDERECOCODIGO: TFDAutoIncField;
    sql_CLIENTE_ENDERECOCODIGO_CLIENTE: TIntegerField;
    sql_CLIENTE_ENDERECORUA: TStringField;
    sql_CLIENTE_ENDERECONUMERO: TStringField;
    sql_CLIENTE_ENDERECOBAIRRO: TStringField;
    sql_CLIENTE_ENDERECOCOMPLEMENTO: TStringField;
    sql_CLIENTE_ENDERECOCEP: TStringField;
    sql_CLIENTE_ENDERECOMUNICIPIO: TStringField;
    sql_CLIENTE_ENDERECOCODIGO_MUNICIPIO: TStringField;
    sql_CLIENTE_ENDERECOCODIGO_PAIS: TStringField;
    sql_CLIENTE_ENDERECOTIPO_ENDERECO: TStringField;
    sql_CLIENTE_ENDERECOZONA: TStringField;
    sql_CLIENTE_ENDERECOREGIAO: TStringField;
    sql_CLIENTE_ENDERECOUF: TStringField;
    sql_CLIENTE_ENDERECOCODIGO_UF: TStringField;
    sql_CLIENTE_ENDERECOPAIS: TStringField;
    sql_LISTA_ENDERECO: TFDQuery;
    DBCk_Inativo: TDBCheckBox;
    sql_CLIENTE_ENDERECOSTATUS_CADASTRAL: TStringField;
    dt_LISTA_ENDERECO: TDataSource;
    btn_end_cancel: TcxButton;
    sql_CLIENTE_CONTATO: TFDQuery;
    ds_CLIENTE_CONTATO: TDataSource;
    sql_CLIENTE_CONTATOCODIGO: TFDAutoIncField;
    sql_CLIENTE_CONTATOCODIGO_CLIENTE: TIntegerField;
    sql_CLIENTE_CONTATORESPONSAVEL: TStringField;
    sql_CLIENTE_CONTATOFUNCAO: TStringField;
    sql_CLIENTE_CONTATORAMAL: TStringField;
    sql_CLIENTE_CONTATOTELEFONE: TStringField;
    sql_CLIENTE_CONTATOCELULAR_1: TStringField;
    sql_CLIENTE_CONTATOCELULAR_2: TStringField;
    sql_CLIENTE_CONTATOWHATSAPP: TStringField;
    sql_CLIENTE_CONTATOEMAIL: TStringField;
    cxGridDBTableView1Column4: TcxGridDBColumn;
    sql_LISTA_BANCO: TFDQuery;
    FDAutoIncField2: TFDAutoIncField;
    IntegerField2: TIntegerField;
    StringField15: TStringField;
    StringField16: TStringField;
    StringField17: TStringField;
    StringField18: TStringField;
    StringField19: TStringField;
    StringField20: TStringField;
    StringField21: TStringField;
    StringField22: TStringField;
    sql_CLIENTE_BANCO: TFDQuery;
    FDAutoIncField3: TFDAutoIncField;
    IntegerField3: TIntegerField;
    StringField23: TStringField;
    StringField24: TStringField;
    StringField25: TStringField;
    StringField26: TStringField;
    StringField27: TStringField;
    StringField28: TStringField;
    StringField29: TStringField;
    StringField30: TStringField;
    ds_CLIENTE_BANCO: TDataSource;
    ds_LSTA_BANCO: TDataSource;
    cxGridDBTableView3CODIGO: TcxGridDBColumn;
    cxGridDBTableView3CODIGO_CLIENTE: TcxGridDBColumn;
    cxGridDBTableView3RUA: TcxGridDBColumn;
    cxGridDBTableView3NUMERO: TcxGridDBColumn;
    cxGridDBTableView3BAIRRO: TcxGridDBColumn;
    cxGridDBTableView3COMPLEMENTO: TcxGridDBColumn;
    cxGridDBTableView3CEP: TcxGridDBColumn;
    cxGridDBTableView3MUNICIPIO: TcxGridDBColumn;
    cxGridDBTableView3CODIGO_MUNICIPIO: TcxGridDBColumn;
    cxGridDBTableView3CODIGO_PAIS: TcxGridDBColumn;
    cxGridDBTableView3TIPO_ENDERECO: TcxGridDBColumn;
    cxGridDBTableView3ZONA: TcxGridDBColumn;
    cxGridDBTableView3REGIAO: TcxGridDBColumn;
    cxGridDBTableView3UF: TcxGridDBColumn;
    cxGridDBTableView3CODIGO_UF: TcxGridDBColumn;
    cxGridDBTableView3PAIS: TcxGridDBColumn;
    cxGridDBTableView3STATUS_CADASTRAL: TcxGridDBColumn;
    ds_LISTA_CONTATO: TDataSource;
    sql_LISTA_CONTATO1: TFDQuery;
    btnnendereco: TcxButton;
    sql_LISTA_CONTATO1CODIGO: TFDAutoIncField;
    sql_LISTA_CONTATO1CODIGO_CLIENTE: TIntegerField;
    sql_LISTA_CONTATO1RESPONSAVEL: TStringField;
    sql_LISTA_CONTATO1FUNCAO: TStringField;
    sql_LISTA_CONTATO1RAMAL: TStringField;
    sql_LISTA_CONTATO1TELEFONE: TStringField;
    sql_LISTA_CONTATO1CELULAR_1: TStringField;
    sql_LISTA_CONTATO1CELULAR_2: TStringField;
    sql_LISTA_CONTATO1WHATSAPP: TStringField;
    sql_LISTA_CONTATO1EMAIL: TStringField;
    tbinculircontato: TcxButton;
    sql_LISTA_ENDERECOCODIGO: TFDAutoIncField;
    sql_LISTA_ENDERECOCODIGO_CLIENTE: TIntegerField;
    sql_LISTA_ENDERECOTIPO_ENDERECO: TStringField;
    sql_LISTA_ENDERECORUA: TStringField;
    sql_LISTA_ENDERECONUMERO: TStringField;
    sql_LISTA_ENDERECOBAIRRO: TStringField;
    sql_LISTA_ENDERECOCOMPLEMENTO: TStringField;
    sql_LISTA_ENDERECOCEP: TStringField;
    sql_LISTA_ENDERECOMUNICIPIO: TStringField;
    sql_LISTA_ENDERECOCODIGO_MUNICIPIO: TStringField;
    sql_LISTA_ENDERECOCODIGO_PAIS: TStringField;
    sql_LISTA_ENDERECOZONA: TStringField;
    sql_LISTA_ENDERECOREGIAO: TStringField;
    sql_LISTA_ENDERECOUF: TStringField;
    sql_LISTA_ENDERECOCODIGO_UF: TStringField;
    sql_LISTA_ENDERECOPAIS: TStringField;
    sql_LISTA_ENDERECOSTATUS_CADASTRAL: TStringField;
    procedure cxDBTextEdit3KeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
    procedure cxDateEdit2KeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
    procedure cxDBTextEdit33KeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
    procedure cxDateEdit5KeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
    procedure cxComboBox1KeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
    procedure cxComboBox3KeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure Button1Click(Sender: TObject);
    procedure BtnIncluirClick(Sender: TObject);
    procedure BtnGravarClick(Sender: TObject);
    procedure GridClientesDblClick(Sender: TObject);
    procedure BtnJuridicaClick(Sender: TObject);
    procedure BtnFisicaClick(Sender: TObject);
    procedure btnSintegraClick(Sender: TObject);
    procedure dbedtINSCRICAO_ESTADUALKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
    procedure cxDBTextEdit32KeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
    procedure DBEdit8KeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
    procedure dbedtINSCRICAO_MUNICIPALKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
    procedure DBEdit18KeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
    procedure DBEdit19KeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
    procedure dbedit1KeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
    procedure dbedtNomeKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
    procedure cxDateEdit1KeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
    procedure dbedtOEKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
    procedure DBComboBox2KeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
    procedure DBComboBox3KeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
    procedure DBEdit60KeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
    procedure btnMunicipClick(Sender: TObject);
    procedure BtnCancelarClick(Sender: TObject);
    procedure BtnExcluirClick(Sender: TObject);
    procedure edt_dataKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
    procedure dbedtRGKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
    procedure DBEdit73KeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);

    procedure DBEdit30KeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
    procedure btnImprimirGridClick(Sender: TObject);
    procedure dbedtNomeKeyPress(Sender: TObject; var Key: Char);
    procedure dbedit1KeyPress(Sender: TObject; var Key: Char);
    procedure edt_dataKeyPress(Sender: TObject; var Key: Char);
    procedure dbedtRGKeyPress(Sender: TObject; var Key: Char);
    procedure dbedtOEKeyPress(Sender: TObject; var Key: Char);
    procedure DBEdit73KeyPress(Sender: TObject; var Key: Char);
    procedure dbcbSexoKeyPress(Sender: TObject; var Key: Char);
    procedure DBComboBox2KeyPress(Sender: TObject; var Key: Char);
    procedure cxDBTextEdit6KeyPress(Sender: TObject; var Key: Char);
    procedure cxDBTextEdit7KeyPress(Sender: TObject; var Key: Char);
    procedure cxDBTextEdit5KeyPress(Sender: TObject; var Key: Char);
    procedure cxDBTextEdit3KeyPress(Sender: TObject; var Key: Char);
    procedure dbcbbSITUACAO_FINANCEIRAKeyPress(Sender: TObject; var Key: Char);
    procedure cxDBTextEdit9KeyPress(Sender: TObject; var Key: Char);
    procedure DBEdit75KeyPress(Sender: TObject; var Key: Char);
    procedure DBEdit74KeyPress(Sender: TObject; var Key: Char);
    procedure DBEdit78KeyPress(Sender: TObject; var Key: Char);
    procedure DBEdit8KeyPress(Sender: TObject; var Key: Char);
    procedure cxDBTextEdit32KeyPress(Sender: TObject; var Key: Char);
    procedure dbedtINSCRICAO_MUNICIPALKeyPress(Sender: TObject; var Key: Char);
    procedure cxDBTextEdit56KeyPress(Sender: TObject; var Key: Char);
    procedure cxDBTextEdit58KeyPress(Sender: TObject; var Key: Char);
    procedure DBEdit87KeyPress(Sender: TObject; var Key: Char);
    procedure DBEdit84KeyPress(Sender: TObject; var Key: Char);
    procedure DBEdit2KeyPress(Sender: TObject; var Key: Char);
    procedure cxDBTextEdit33KeyPress(Sender: TObject; var Key: Char);
    procedure DBEdit4KeyPress(Sender: TObject; var Key: Char);
    procedure dbedtTELEFONE_1KeyPress(Sender: TObject; var Key: Char);
    procedure cxDBTextEdit59KeyPress(Sender: TObject; var Key: Char);
    procedure dbedtCELULAR_1KeyPress(Sender: TObject; var Key: Char);
    procedure DBEdit20KeyPress(Sender: TObject; var Key: Char);
    procedure DBEdit23KeyPress(Sender: TObject; var Key: Char);
    procedure DBEdit18KeyPress(Sender: TObject; var Key: Char);
    procedure DBEdit10KeyPress(Sender: TObject; var Key: Char);
    procedure DBEdit31KeyPress(Sender: TObject; var Key: Char);
    procedure DBEdit21KeyPress(Sender: TObject; var Key: Char);
    procedure DBEdit22KeyPress(Sender: TObject; var Key: Char);
    procedure DBEdit19KeyPress(Sender: TObject; var Key: Char);
    procedure DBEdit15KeyPress(Sender: TObject; var Key: Char);
    procedure DBEdit30KeyPress(Sender: TObject; var Key: Char);
    procedure cxDBTextEdit18KeyPress(Sender: TObject; var Key: Char);
    procedure DBEdit94KeyPress(Sender: TObject; var Key: Char);
    procedure DBEdit98KeyPress(Sender: TObject; var Key: Char);
    procedure DBEdit106KeyPress(Sender: TObject; var Key: Char);
    procedure cxDBTextEdit20KeyPress(Sender: TObject; var Key: Char);
    procedure chk_ruralPropertiesChange(Sender: TObject);
    procedure edt_ieKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
    procedure PadronizarLayout();
    procedure dbedtcontato1KeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
    procedure dbedtcontato1KeyPress(Sender: TObject; var Key: Char);
    procedure BtnAlterarClick(Sender: TObject);
    procedure dbedt_razaosocialKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
    procedure dbedt_fantasiaKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
    procedure dbedt_razaosocialKeyPress(Sender: TObject; var Key: Char);
    procedure dbedt_fantasiaKeyPress(Sender: TObject; var Key: Char);
    procedure btnImprimirClick(Sender: TObject);
    procedure CarregarDadosInternos;
    procedure FormKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
    procedure Duplicar_CadastroExecute(Sender: TObject);
    procedure CarregarDados;
    procedure CarregarUltimoCadastro;
    procedure DBComboBox3KeyPress(Sender: TObject; var Key: Char);
    procedure DBEdit103KeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
    procedure dbedtINSCRICAO_ESTADUALExit(Sender: TObject);
    procedure DBEdit96KeyPress(Sender: TObject; var Key: Char);
    procedure DSCertFiles1GetPEMFilePasskey(ASender: TObject; var APasskey: AnsiString);
    procedure alterar_cli(BooFocus: Boolean = true);
    procedure MaskEdit1Exit(Sender: TObject);
    procedure MaskEdit1Enter(Sender: TObject);
    procedure MaskEdit1KeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
    procedure MaskEdit1KeyPress(Sender: TObject; var Key: Char);
    procedure MaskEdit1KeyUp(Sender: TObject; var Key: Word; Shift: TShiftState);
    procedure medt1Enter(Sender: TObject);
    procedure medt1Exit(Sender: TObject);
    procedure medt1KeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
    procedure medt1KeyPress(Sender: TObject; var Key: Char);
    procedure medt1KeyUp(Sender: TObject; var Key: Word; Shift: TShiftState);
    procedure btn_cepClick(Sender: TObject);
    procedure tbcnpjGetDisplayText(Sender: TcxCustomGridTableItem; ARecord: TcxCustomGridRecord; var AText: string);
    procedure tbcpfGetDisplayText(Sender: TcxCustomGridTableItem; ARecord: TcxCustomGridRecord; var AText: string);
    procedure tbtelefoneGetDisplayText(Sender: TcxCustomGridTableItem; ARecord: TcxCustomGridRecord; var AText: string);
    procedure tbCustomDrawCell(Sender: TcxCustomGridTableView; ACanvas: TcxCanvas; AViewInfo: TcxGridTableDataCellViewInfo;
      var ADone: Boolean);
    procedure tab_consultaShow(Sender: TObject);
    procedure tbpessoa_tipoCustomDrawCell(Sender: TcxCustomGridTableView; ACanvas: TcxCanvas; AViewInfo: TcxGridTableDataCellViewInfo;
      var ADone: Boolean);
    procedure tbpessoa_tipoGetDisplayText(Sender: TcxCustomGridTableItem; ARecord: TcxCustomGridRecord; var AText: string);
    procedure chkchange(Sender: TObject);
    procedure edt_consultaKeyPress(Sender: TObject; var Key: Char);
    procedure edt_consultaKeyUp(Sender: TObject; var Key: Word; Shift: TShiftState);
    procedure tbKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
    procedure conveniadoMatriculaKeyPress(Sender: TObject; var Key: Char);
    procedure conveniadoSenhaKeyPress(Sender: TObject; var Key: Char);
    procedure btn_ramoClick(Sender: TObject);
    procedure btn_relatorios_cliClick(Sender: TObject);
    procedure cxButton21Click(Sender: TObject);
    procedure cxButton22Click(Sender: TObject);
    procedure cxButton9Click(Sender: TObject);
    procedure cxButton14Click(Sender: TObject);
    procedure cxButton10Click(Sender: TObject);
    procedure cxButton18Click(Sender: TObject);
    procedure cxButton1Click(Sender: TObject);
    procedure tbCellClick(Sender: TcxCustomGridTableView;
      ACellViewInfo: TcxGridTableDataCellViewInfo; AButton: TMouseButton;
      AShift: TShiftState; var AHandled: Boolean);
    procedure btn_zonaClick(Sender: TObject);
    procedure btn_bairroClick(Sender: TObject);
    procedure btn_end_svClick(Sender: TObject);
    procedure bt_end_altClick(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure dlConsultabanco(check_edit: Boolean = true);
    procedure dlConsultaendereco(check_edit: Boolean = true);
    procedure dlConsultacontato(check_edit: Boolean = true);
    procedure dbedt_codigoEnter(Sender: TObject);
    procedure dbedt_codigoChange(Sender: TObject);
    procedure btn_end_cancelClick(Sender: TObject);
    procedure cxButton15Click(Sender: TObject);
    procedure cxButton16Click(Sender: TObject);
    procedure cxButton17Click(Sender: TObject);
    procedure btnnenderecoClick(Sender: TObject);
    procedure DBEdit7KeyPress(Sender: TObject; var Key: Char);
    procedure DBEdit16KeyPress(Sender: TObject; var Key: Char);
    procedure DBEdit6KeyPress(Sender: TObject; var Key: Char);
    procedure tbinculircontatoClick(Sender: TObject);
//    procedure cxGridDBTableView3CellDblClick(Sender: TcxCustomGridTableView;
//      ACellViewInfo: TcxGridTableDataCellViewInfo; AButton: TMouseButton;
//      AShift: TShiftState; var AHandled: Boolean);

  private
    { Private declarations }
    dados_otica_sts: Integer;
    cad_block, updateAction: Boolean;
    conveniadosNullId: array of Integer;

    procedure dlConsulta;
    procedure ConsultaParaCadastro;
    procedure padraotrue;
    procedure padraofalse;
  public
    { Public declarations }
  end;

var
  frm_cliente: Tfrm_cliente;
  Tipo_Empresa: String;

implementation

{$R *.dfm}

uses U_Municipio, u_funcoes, liberacao, relatorios,
  c_Globals, botoes_smc, convenio, dependentes, comple_financ, animais, otica, m_cliente_conveniado, h_Dialogs, m_Cliente, S_Parametros_Venda, h_Checks, vw_historico_conveniado,
  cad_atividade, cad_zona, cad_rota, cad_endereco, rel_clientes, cad_bairro;

procedure Tfrm_cliente.BtnGravarClick(Sender: TObject);
var
  x: Integer;
begin
  if BtnIncluir.Visible = false then
  begin
    if Tipo_Empresa = '' then
    begin
      wnAlerta('Campos Obrigatórios', 'Por favor, identifique o tipo de Pessoa referente ao cadastro!');
      BtnFisica.SetFocus;
      exit;
    end
    else
    begin
      TRY { Inicia cadastro }


   if Tipo_Empresa = 'FISICA' then
        begin
          if chk_rural.Checked = true then
          begin
            if simplequery('SELECT CPF_CAD_CLIENTE FROM PARAMETROS_SISTEMA').Fields[0].AsString = m_true then
            begin
              if CamposObrigatorios([dbedtNome, edt_ie],
                ['Nome', 'IE * ISENTO - Caso não possua'],
                [], [], [], [],[MaskEdit1], ['CPF']) then
              begin
                exit { Pessoa fisica e produtor rural }
              end
            end
            else if simplequery('SELECT CPF_CAD_CLIENTE FROM PARAMETROS_SISTEMA').Fields[0].AsString = m_false then
            begin
              if CamposObrigatorios([dbedtNome, edt_ie],
                ['Nome', 'IE * ISENTO - Caso não possua'], [], [], [], [], [], [])
              then
              begin
                exit { Pessoa fisica e produtor rural }
              end
            end;

          end
          else if chk_rural.Checked = false then
          begin
            if simplequery('SELECT CPF_CAD_CLIENTE FROM PARAMETROS_SISTEMA').Fields[0].AsString = m_true then
            begin
              if u_funcoes.CamposObrigatorios([dbedtNome, DBEdit76, DBEdit75, DBEdit79, DBEdit81, DBEdit78],
                ['Nome', 'Rua | Avenida', 'Número', 'Bairro', 'Município', 'CEP'], [], [], [], [], [MaskEdit1], ['CPF']) then
              begin
                exit { Pessoa fisica normal }
              end;
            end
            else if simplequery('SELECT CPF_CAD_CLIENTE FROM PARAMETROS_SISTEMA').Fields[0].AsString = m_false then
            begin
              if u_funcoes.CamposObrigatorios([dbedtNome, DBEdit76, DBEdit75, DBEdit79, DBEdit81, DBEdit78],
                ['Nome', 'Rua | Avenida', 'Número', 'Bairro', 'Município', 'CEP'], [], [], [], [], [], []) then
              begin
                exit { Pessoa fisica normal }
              end;
            end;
          end
        end
        else if Tipo_Empresa = 'JURIDICA' then
        begin
          if u_funcoes.CamposObrigatorios([dbedt_razaosocial, dbedt_fantasia, dbedtINSCRICAO_ESTADUAL, DBEdit76, DBEdit75, DBEdit79,
            DBEdit81, DBEdit78], ['Razão Social', 'Nome Fantasia', 'Inscrição Estadual * ISENTO - Caso não possua', 'Rua | Avenida',
            'Número', 'Bairro', 'Município', 'CEP'], [], [], [], [], [medt1], ['CNPJ']) then
          begin
            exit { Caso existam campos obrigat髍ios em branco, o cadastro n鉶 prossegue }
          end
        end;

        SQL_ClientePESSOA_TIPO.Value := Tipo_Empresa;
        SQL_ClienteDATA_NASCIMENTO.Value := strtodate(edt_data.Text);
        SQL_ClienteDATA_EMISSAO.Value := strtodate(DBEdit73.Text);
        SQL_ClienteDATA_CADASTRO.Value := date;
        if Tipo_Empresa = 'FISICA' then
          SQL_ClienteCPF.AsString := removercaracteresespeciais(MaskEdit1.Text);

        if Tipo_Empresa = 'JURIDICA' then
          SQL_ClienteCNPJ.AsString := removercaracteresespeciais(medt1.Text);
        if chk_rural.Checked = true then
        begin
          SQL_ClienteCONSUMIDOR_FINAL.Value := 'NAO';
          SQL_ClienteCONSUMIDOR_TIPO.Value := 'PRODUTOR RURAL';
        end
        else
        begin
          if (Tipo_Empresa = 'JURIDICA') then
          begin
            if (dbedtINSCRICAO_ESTADUAL.Text <> '') then
            begin
              SQL_ClienteCONSUMIDOR_FINAL.Value := 'NAO';
              SQL_ClienteCONSUMIDOR_TIPO.Value := 'CONTRIBUINTE';
            end
            else
            begin
              SQL_ClienteCONSUMIDOR_FINAL.Value := 'NAO';
              SQL_ClienteCONSUMIDOR_TIPO.Value := 'NAO CONTRIBUINTE';
            end;
          end
          else if (Tipo_Empresa = 'FISICA') then
          begin
            SQL_ClienteCONSUMIDOR_FINAL.Value := 'SIM';
            SQL_ClienteCONSUMIDOR_TIPO.Value := 'CONSUMIDOR FINAL';
          end;
        end;

        SQL_Cliente.Post;
        updateAction := false;
        for x in conveniadosNullId do
//        begin
//
//        end;
        SQL_Cliente.Active := false;
        CarregarUltimoCadastro;
        PadronizarLayout;
      except
        On E: Exception do
        begin
          Application.MessageBox(StringToOleStr(E.Message + sLineBreak + 'Erro ao cadastrar Cliente. '), 'Erro de Cadastro.',
            MB_ICONINFORMATION + MB_OK);
        end;
      end;
    end;
  end;
end;

procedure Tfrm_cliente.btnImprimirClick(Sender: TObject);
begin
  if not u_funcoes.VerificaAberta(frm_relatorio) then
    frm_relatorio := Tfrm_relatorio.Create(Application);
  frm_relatorio.FRX_CLIENTE.LoadFromFile(frm_relatorio.PATH_CLIENTE, true);
  frm_relatorio.FRX_CLIENTE.showreport;
end;

procedure Tfrm_cliente.btnImprimirGridClick(Sender: TObject);
var
  sql_anterior: string;
begin
  if not u_funcoes.VerificaAberta(frm_relatorio) then
    frm_relatorio := Tfrm_relatorio.Create(Application);
  u_funcoes.ImprimirGridConsulta(frm_relatorio.SQL_Cliente, SQL_C_Clientes, frm_relatorio.FRX_CLIENTE, frm_relatorio.PATH_CLIENTE);
end;

procedure Tfrm_cliente.BtnIncluirClick(Sender: TObject);
//begin
////  if not TemAcesso(Global_Usuario_Logado,'ADDCLI') then
////     exit;
//if BtnIncluir.Visible = true then
//  begin
//
//  updateAction := false;
//  GroupBox8.Enabled := true;
//  SQL_Cliente.Active := true;
//
//
//  sql_increment.Active := false;
//  sql_increment.Active := true;
//
//  SQL_Cliente.Insert;
//
//
//  Tipo_Empresa := '';
//
//  chk_rural.Checked := false;
//
//  BtnFisica.Enabled := true;
//  BtnJuridica.Enabled := true;
//
////  conveniadosNullId := nil;
//
//  BtnFisica.SetFocus;
//
//  edt_data.EditText := '01/01/0001';
//  DBEdit73.EditText := '01/01/0001';
//
//  MaskEdit1.Text := '';
//
//  MaskEdit1.EditMask := '';
//
//  medt1.Text := '';
//
//  medt1.EditMask := '';
////
//  if sql_incrementAUTO_INCREMENT.Value = 0 then
//    dbedt_codigo.Text := '1'
//  else
//    dbedt_codigo.Text := inttostr(sql_incrementAUTO_INCREMENT.Value);
//
//
//  dbedt_codigo.Text := inttostr(sql_incrementAUTO_INCREMENT.Value);
//
//
//  IniciarCadastro([BtnIncluir, BtnCancelar, BtnAlterar], true);
//
//
//  end;
 begin
//  if not TemAcesso(Global_Usuario_Logado,'ADDCLI') then
//     exit;
if BtnIncluir.Visible = true then
  begin

  updateAction := false;

  SQL_Cliente.Active := true;
  sql_CLIENTE_ENDERECO.Active := True;
  sql_CLIENTE_CONTATO.Active := True;

  sql_increment.Active := false;
  sql_increment.Active := true;

  SQL_Cliente.Insert;
  sql_CLIENTE_ENDERECO.insert;
  sql_CLIENTE_CONTATO.insert;
  Tipo_Empresa := '';

  chk_rural.Checked := false;

  BtnFisica.Enabled := true;
  BtnJuridica.Enabled := true;

  conveniadosNullId := nil;

  BtnFisica.SetFocus;

  edt_data.EditText := '01/01/0001';
  DBEdit73.EditText := '01/01/0001';

  MaskEdit1.Text := '';

  MaskEdit1.EditMask := '';

  medt1.Text := '';

  medt1.EditMask := '';

  if sql_incrementAUTO_INCREMENT.Value = 0 then
    dbedt_codigo.Text := '1'
  else
    dbedt_codigo.Text := inttostr(sql_incrementAUTO_INCREMENT.Value);

  IniciarCadastro([BtnIncluir, BtnCancelar, BtnAlterar], true);


  end;
end;


procedure Tfrm_cliente.Button1Click(Sender: TObject);
begin
  BtnIncluir.Enabled := true;
end;

procedure Tfrm_cliente.chkchange(Sender: TObject);
begin
  dlConsulta;
end;

procedure Tfrm_cliente.chk_ruralPropertiesChange(Sender: TObject);
begin
  if chk_rural.Checked = true then
  begin
    edt_ie.Visible := true;
    dbedtRG.Clear;
    lblRG.Caption := 'IE:';
  end
  else
  begin
    edt_ie.Visible := false;
    edt_ie.Clear;
    lblRG.Caption := 'RG:';
  end;
end;


procedure Tfrm_cliente.ConsultaParaCadastro;
begin
  SQL_Cliente.Close;
  SQL_Cliente.ParamByName('pcodigo').Value := SQL_C_Clientes.fieldbyname('CODIGO').Value;
  SQL_Cliente.Open;
  CarregarDados;
  tab_cadastrar.Show;
  BtnAlterar.Click;
end;

procedure Tfrm_cliente.conveniadoMatriculaKeyPress(Sender: TObject; var Key: Char);
begin
  inherited;
  Key := tfunctions.OnlyNumbers(Key);
end;

procedure Tfrm_cliente.conveniadoSenhaKeyPress(Sender: TObject; var Key: Char);
begin
  inherited;
  Key := tfunctions.OnlyNumbers(Key);
end;

procedure Tfrm_cliente.btnMunicipClick(Sender: TObject);
begin
  Frm_Municipio := TFrm_Municipio.Create(Application);
  Frm_Municipio.InformarDadosMunicipio1(DBEdit81, DBEdit80, DBEdit82, DBEdit3, DBEdit83, DBEdit104);
  Frm_Municipio.ShowModal;
  Frm_Municipio.Free;
  DBEdit8.SetFocus;
end;

procedure Tfrm_cliente.btnnenderecoClick(Sender: TObject);
begin
   AlterarEnabled([grpEndereco, btn_cep, btnMunicip, btn_zona,
   DBComboBox1, DBComboBox3, bt_end_alt, btn_end_cancel, btn_bairro], true);


  btnnendereco.Enabled := false;
  btnnendereco.Visible := false;

  btn_end_sv.Enabled := true;
  btn_end_sv.Visible := true;

  sql_CLIENTE_ENDERECO.Active := True;
  sql_CLIENTE_ENDERECO.insert;
end;



procedure Tfrm_cliente.alterar_cli(BooFocus: Boolean = true);
begin
  if dbedt_codigo.Text = '' then
  begin
    Application.MessageBox('Nenhum cliente foi selecionado.', 'Alterar', MB_ICONWARNING + MB_OK);
  end
  else
  begin
    BtnIncluir.Visible := false;
    if Tipo_Empresa = 'FISICA' then
    begin
      gpFisica.Visible := true;
      gpFisica.Enabled := true;
      gpJuridica.Enabled := false;
      gpJuridica.Visible := false;
      if BooFocus then
      begin
        dbedtNome.SetFocus;
        dbedtNome.selectall;
      end;
      BtnFisica.Enabled := true;
      BtnJuridica.Enabled := false;
      gpJuridica.Visible := false;
      gpFisica.Visible := true;
    end
    else if Tipo_Empresa = 'JURIDICA' then
    begin
      gpJuridica.Visible := true;
      gpJuridica.Enabled := true;
      gpFisica.Enabled := false;
      gpFisica.Visible := false;
      if BooFocus then
      begin
        dbedt_razaosocial.SetFocus;
        dbedt_razaosocial.selectall;
      end;
      BtnJuridica.Enabled := true;
      BtnFisica.Enabled := false;
      gpFisica.Visible := false;
      gpJuridica.Visible := true;
    end;
    DS_Cliente.Edit;
    ds_CLIENTE_ENDERECO.Edit;
//    AlterarEnabled([GroupBox12, grp1, GroupBox1, GroupBox4, GroupBox3, TabSheet7, TabSheet8, TabSheet9, btnMunicipE1, btnMunicipE2,
//      btnMunicipE3, btn_cad, btn_cep_1, btn_cep_2, btn_cep_3], true);
    padraotrue;
    IniciarCadastro([BtnIncluir, BtnCancelar, BtnAlterar], true);
  end
end;



procedure Tfrm_cliente.BtnAlterarClick(Sender: TObject);
begin
  if not TemAcesso(Global_Usuario_Logado,'ALTCLI') then
     exit;

  alterar_cli;
  updateAction := true;
end;

procedure Tfrm_cliente.BtnCancelarClick(Sender: TObject);
var
  I: Integer;
begin
  conveniadosNullId := nil;
  SQL_Cliente.Cancel;
  SQL_Cliente.Close;
  IniciarCadastro([BtnIncluir, BtnCancelar, BtnAlterar], false);
  CarregarUltimoCadastro;
  PadronizarLayout;
  updateAction := false;

end;

procedure Tfrm_cliente.BtnExcluirClick(Sender: TObject);
begin
  if not TemAcesso(Global_Usuario_Logado,'DELCLI') then
     exit;

  if dbedt_codigo.Text = '' then
  begin
    Application.MessageBox('Nenhum cliente foi selecionado.', 'Excluir', MB_ICONWARNING + MB_OK);
  end
  else
  begin
    if not TEnv.Tuser.IsAdmin then
    begin
      if TFrm_liberacao.Execute then
      begin
        ExcluirCadastro(SQL_Cliente);
      end;
    end
    else
    begin
      ExcluirCadastro(SQL_Cliente);
    end;
    CarregarUltimoCadastro;
    PadronizarLayout;
  end;

end;

procedure Tfrm_cliente.BtnFisicaClick(Sender: TObject);
begin

  gpJuridica.Visible := false;
  gpFisica.Visible := true;

  chk_rural.Enabled := true;

  if gpFisica.Enabled = true then
     dbedtNome.SetFocus;
  padraotrue;
  Tipo_Empresa := 'FISICA';
  btnnendereco.Enabled := true;
 dlConsultaendereco;
// // dlConsultabanco;
dlConsultacontato;
end;

procedure Tfrm_cliente.BtnJuridicaClick(Sender: TObject);
begin
  chk_rural.Enabled := false;

  gpFisica.Visible := False;
  gpJuridica.Visible := True;

  padraotrue;
  btnnendereco.Enabled := true;

  if gpJuridica.Enabled = true then
    dbedt_razaosocial.SetFocus;
  Tipo_Empresa := 'JURIDICA';
  dlConsultaendereco;
  dlConsultacontato;
end;

procedure Tfrm_cliente.GridClientesDblClick(Sender: TObject);
begin
  u_funcoes.ConsultarCadastros(SQL_Cliente, quotedstr(inttostr(SQL_C_Clientescodigo.Value) + '%'), 'CLIENTE', 'CODIGO', 'pcodigo', '', '',
    '', 0, 0);
  tab_cadastrar.Show;
  CarregarDadosInternos;
end;

procedure Tfrm_cliente.MaskEdit1Enter(Sender: TObject);
begin
//  MaskEdit1.EditMask := '';
end;

procedure Tfrm_cliente.MaskEdit1Exit(Sender: TObject);
begin
  cnpjcpf(MaskEdit1);
end;

procedure Tfrm_cliente.MaskEdit1KeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
begin
  if Key in [VK_RETURN, VK_TAB] then
    edt_ie.SetFocus;
end;

procedure Tfrm_cliente.MaskEdit1KeyPress(Sender: TObject; var Key: Char);
begin
  inherited;
  Key := apenasnumeros(Key);
end;

procedure Tfrm_cliente.MaskEdit1KeyUp(Sender: TObject; var Key: Word; Shift: TShiftState);
var
  resultado, nome_cli: string;
  qry: TFDQuery;
begin
  resultado := removercaracteresespeciais(MaskEdit1.Text);
  if length(resultado) = 11 then
  begin
    qry := simplequery('select codigo, razao_social, fantasia from cliente where cpf="' + resultado + '"');
    if qry <> nil then
    begin
      with qry do
      begin
        if Fields[1].Text <> emptystr then
          nome_cli := Fields[1].Text;
        if nome_cli = emptystr then
          if Fields[2].Text <> emptystr then
            nome_cli := Fields[2].Text;
        wnAlerta('Cadastro Cliente', sLineBreak + sLineBreak + 'CPF ' + resultado + ' já está cadastrado no Cliente: ' + sLineBreak + 'Código: '
          + Fields[0].Text + sLineBreak + 'Nome: ' + nome_cli);
        MaskEdit1.selectall;
        MaskEdit1.SetFocus;
      end;
    end;
    cnpjcpf(MaskEdit1);
  end;
end;

procedure Tfrm_cliente.medt1Enter(Sender: TObject);
begin
  medt1.EditMask := '';
end;

procedure Tfrm_cliente.medt1Exit(Sender: TObject);
begin
  cnpjcpf(medt1);
end;

procedure Tfrm_cliente.medt1KeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
begin
  if Key in [VK_RETURN, VK_TAB] then
    cbSitTribICMS.SetFocus;
end;

procedure Tfrm_cliente.medt1KeyPress(Sender: TObject; var Key: Char);
begin
  inherited;
  Key := apenasnumeros(Key);
end;

procedure Tfrm_cliente.medt1KeyUp(Sender: TObject; var Key: Word; Shift: TShiftState);
var
  resultado, nome_cli: string;
  qry: TFDQuery;
begin
  resultado := removercaracteresespeciais(medt1.Text);
  if length(resultado) = 14 then
  begin
    qry := simplequery('select codigo, razao_social, fantasia from cliente where cnpj="' + resultado + '"');
    if qry <> nil then
    begin
      with qry do
      begin
        if Fields[1].Text <> emptystr then
          nome_cli := Fields[1].Text;
        if nome_cli = emptystr then
          if Fields[2].Text <> emptystr then
            nome_cli := Fields[2].Text;
        wnAlerta('Cadastro Cliente', sLineBreak + sLineBreak + 'CNPJ ' + resultado + ' já está cadastrado no Cliente: ' + sLineBreak +
          'C骴: ' + Fields[0].Text + sLineBreak + 'Nome: ' + nome_cli);
        medt1.selectall;
        medt1.SetFocus;
      end;
    end;
    cnpjcpf(medt1);
  end;
end;

procedure Tfrm_cliente.PadronizarLayout;
begin
  lblRG.Caption := 'RG:';
  edt_ie.Visible := false;
  Tipo_Empresa := '';
  BtnFisica.Enabled := false;
  BtnJuridica.Enabled := false;
  chk_rural.Enabled := false;
  chk_rural.Checked := false;
  edt_data.Clear;
  DBEdit73.Clear;
//  cxButton1.Enabled := False;
  btn_ramo.Enabled := False;
  CarregarDadosInternos;
end;

procedure Tfrm_cliente.CarregarDados;
begin

if SQL_ClienteCODIGO.Text <> '' then
  begin
    edt_data.Text := datetostr(SQL_ClienteDATA_NASCIMENTO.Value);
    DBEdit73.Text := datetostr(SQL_ClienteDATA_EMISSAO.Value);
  end;
  BtnFisica.Enabled := true;
  BtnJuridica.Enabled := true;
  if SQL_ClientePESSOA_TIPO.Value = 'FISICA' then
  begin
    gpFisica.Visible := true;
    gpJuridica.Visible := false;
    BtnFisica.Enabled := true;
    BtnJuridica.Enabled := false;
    chk_rural.Enabled := true;
    Tipo_Empresa := 'FISICA';
    MaskEdit1.EditMask := '';
    MaskEdit1.Text := removercaracteresespeciais(SQL_ClienteCPF.AsString);
    cnpjcpf(MaskEdit1);
  end
  else if SQL_ClientePESSOA_TIPO.Value = 'JURIDICA' then
  begin
    gpJuridica.Visible := true;
    gpFisica.Visible := false;
    chk_rural.Enabled := false;
    BtnFisica.Enabled := false;
    BtnJuridica.Enabled := true;
    Tipo_Empresa := 'JURIDICA';
    medt1.EditMask := '';
    medt1.Text := removercaracteresespeciais(SQL_ClienteCNPJ.AsString);
    cnpjcpf(medt1);
  end
  else
  begin
    gpFisica.Visible := true;
    gpJuridica.Visible := false;
    BtnFisica.Enabled := true;
    BtnJuridica.Enabled := false;
    chk_rural.Enabled := true;
    MaskEdit1.Text := '';
    medt1.Text := '';
    Tipo_Empresa := 'FISICA';
  end;
  if SQL_ClienteSTATUS_CADASTRAL.Value = 'ATIVO' then
  begin
//    chk_ativo_cadastro.Checked := true;
  end
  else if SQL_ClienteSTATUS_CADASTRAL.Value = 'INATIVO' then
  begin
//    chk_ativo_cadastro.Checked := false;
  end;
  if SQL_ClienteCONSUMIDOR_TIPO.Value = 'PRODUTOR RURAL' then
  begin
    edt_ie.Visible := true;
    lblRG.Caption := 'IE:';
    chk_rural.Enabled := true;
    chk_rural.Checked := true;
  end;

  if not tchecks.dateIsNull(SQL_Clienteconvenio_inicio.Value) then
//    convenioInicio.date := SQL_Clienteconvenio_inicio.Value
  else
//    convenioInicio.Clear;

  if not tchecks.dateIsNull(SQL_Clienteconvenio_fim.Value) then
//    convenioFim.date := SQL_Clienteconvenio_fim.Value
  else
//    convenioFim.Clear;
end;

procedure Tfrm_cliente.CarregarDadosInternos;
begin
  CarregarDados;

//  AlterarEnabled([gpData, gpBanco, gpContato, grpEndereco , gpJuridica, gpFisica, BtnCancelar,
//     btn_ramo], false);

  padraofalse;

  CamposObrigatorios_CorPadrao([dbedtNome, dbedtRG, DBEdit76, DBEdit75, DBEdit79,
  DBEdit81, DBEdit78, dbedt_razaosocial, dbedt_fantasia,
    dbedtINSCRICAO_ESTADUAL], [], []);

  MaskEdit1.Color := clWhite;
  medt1.Color := clWhite;
  IniciarCadastro([BtnIncluir, BtnCancelar, BtnAlterar], false);
end;


procedure Tfrm_cliente.padraotrue;
begin
  AlterarEnabled([gpData, gpContato, gpBanco, chk_concerssionaria,
  chk_rural, cxButton19, cxButton20,
  cxButton15, cxButton16, cxButton17, cxButton2,
   cxButton3, cxButton4, cbSitTribICMS, GroupBox8, cxComboBox4,
   gpFisica, gpJuridica, tbinculircontato], true);

end;

procedure Tfrm_cliente.padraofalse;
begin
  AlterarEnabled([gpData, grpEndereco, gpContato, gpBanco,
   chk_concerssionaria, chk_rural, btn_bairro, btn_cep, btnMunicip, btn_zona,
   DBComboBox1, cxComboBox4, btn_end_sv, bt_end_alt, btn_end_cancel,
   cxButton19, cxButton20, cxButton15, cxButton16, cxButton17, cxButton2,
   cxButton3, cxButton4, DBComboBox3, cbSitTribICMS, GroupBox8, gpFisica, gpJuridica, btnnendereco, tbinculircontato], false);
end;


procedure Tfrm_cliente.CarregarUltimoCadastro;
begin
  sql_increment.Active := false;
  sql_increment.Active := true;
  with SQL_Cliente do
  begin
    Active := false;
    Close;
    Params.Add.Name := 'pcodigo';
    ParamByName('pcodigo').Value := (sql_incrementAUTO_INCREMENT.asInteger - 1);
    Open;
    Active := true;
  begin;
   with sql_CLIENTE_ENDERECO do
  begin
      Active := false;
    Close;
    Params.Add.Name := 'pcodigo';
    ParamByName('pcodigo').Value := (sql_incrementAUTO_INCREMENT.asInteger - 1);
    Open;
    Active := true;
  end;
   begin;
   with sql_CLIENTE_CONTATO do
  begin
      Active := false;
    Close;
    Params.Add.Name := 'pcodigo';
    ParamByName('pcodigo').Value := (sql_incrementAUTO_INCREMENT.asInteger - 1);
    Open;
    Active := true;
  end;
  end;
  CarregarDados;
  end;
  end;
end;

procedure Tfrm_cliente.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  Action := cafree;
  self := nil;
end;

procedure Tfrm_cliente.FormCreate(Sender: TObject);
begin
  sql_LISTA_ENDERECO.Open;
  sql_LISTA_CONTATO1.Open;

  sql_LISTA_CONTATO1.Active := true;
  sql_LISTA_ENDERECO.Active := true;

  padraofalse;
end;

procedure Tfrm_cliente.FormKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
begin
  u_funcoes.TeclasAtalho(Key, [VK_F1, VK_F2, VK_F3, VK_F4, VK_F6], [BtnIncluir, BtnGravar, BtnCancelar, BtnAlterar]);
end;

procedure Tfrm_cliente.btnSintegraClick(Sender: TObject);
begin
  ShellExecute(GetDesktopWindow, 'open', pchar('https://portalcontribuinte.sefin.ro.gov.br/Publico/parametropublica.jsp'), nil, nil,
    sw_ShowNormal);
end;

//AQUI A COSNULTA CEP POR IBGE

procedure Tfrm_cliente.btn_cepClick(Sender: TObject);
var
  UF, RUA, BAIRRO, CIDADE: STRING;
  qry: TFDQuery;
begin
  if RemoverEspacoEmBranco(removercaracteresespeciais(DBEdit78.Text)) <> emptystr then
  begin
    ConsultarCep(RemoverEspacoEmBranco(removercaracteresespeciais(DBEdit78.Text)), UF, CIDADE, RUA, BAIRRO);
    DBEdit82.Text := UF;
    DBEdit81.Text := CIDADE;
    DBEdit76.Text := RUA;
    DBEdit79.Text := BAIRRO;

    DBEdit82.field.Text := UF;
    DBEdit81.field.Text := CIDADE;
    DBEdit76.field.Text := RUA;
    DBEdit79.field.Text := BAIRRO;

    qry := simplequery('SELECT IBGE, ESTADO FROM ENDERECO_MUNICIPIO WHERE NOME = ?', [CIDADE]);
    if qry <> nil then
    begin
      DBEdit80.Text := qry.fieldbyname('IBGE').AsString;
      DBEdit80.field.Text := qry.fieldbyname('IBGE').AsString;
      DBEdit104.Text := simplequery('SELECT PAIS FROM ENDERECO_ESTADO WHERE IBGE = ?', [qry.fieldbyname('ESTADO').AsString])
        .Fields[0].AsString;
      DBEdit104.field.Text := DBEdit104.Text;
      DBEdit83.Text := simplequery('SELECT NOME FROM ENDERECO_PAIS WHERE CODIGO = ?', [DBEdit104.Text]).Fields[0].AsString;
      DBEdit83.field.Text := DBEdit83.Text;
    end;
  end
  else
    wnAlerta('Consultar CEP', sLineBreak + 'Informe um cep!');

end;

procedure Tfrm_cliente.btn_ramoClick(Sender: TObject);
begin
  FRM_cad_atividade := TFRM_cad_atividade.CREATE(Application);
  FRM_cad_atividade.ShowModal;
  dbedt_atividade.Text := FRM_cad_atividade.SQL_LISTADESCRICAO.value;
  cxComboBox3.SetFocus;
 end;

procedure Tfrm_cliente.btn_relatorios_cliClick(Sender: TObject);
begin
  frm_rel_clientes := Tfrm_rel_clientes.CREATE(Application);
  frm_rel_clientes.ShowModal;
end;

{procedure Tfrm_cliente.btn_zonaClick(Sender: TObject);
begin
  FRM_cad_zona := TFRM_cad_zona.CREATE(Application);
  FRM_cad_zona.ShowModal;
  //edtZona.Text := FRM_cad_zona.SQL_LISTADESCRICAO.value;
end;

procedure Tfrm_cliente.btn_enderecoClick(Sender: TObject);
begin
  FRM_cad_endereco := TFRM_cad_endereco.CREATE(Application);
  FRM_cad_endereco.ShowModal;
 // edRua.Text := FRM_cad_endereco.SQL_LISTADESCRICAO.value;
end;}

procedure Tfrm_cliente.cxButton10Click(Sender: TObject);
begin
fmr_dependentes := Tfmr_dependentes.Create(nil);
fmr_dependentes.ShowModal;
end;

procedure Tfrm_cliente.btn_end_svClick(Sender: TObject);
begin
   if u_funcoes.CamposObrigatorios([DBEdit81, DBEdit76], ['Município', 'Rua | Avenida'], [], [], [cxComboBox3], ['Tipo de Enedereço']) then
  begin
    Exit;
  end
  else
  begin
//  FDCONTA_BANCARIA.FieldByName('CODIGO_CONSULTOR').AsString := EDIT1;
      sql_CLIENTE_ENDERECO.Active := True;
    sql_CLIENTE_ENDERECO.FieldByName('CODIGO_CLIENTE').AsString := dbedt_codigo.Text;

    sql_CLIENTE_ENDERECO.Post;
    sql_CLIENTE_ENDERECO.Active := False;

    MessageDLG('ATENÇÃO: Operação concluída com sucesso', mtInformation, [mbOk], 0);



//    u_funcoes.IniciarCadastro([BtnIncluir, BtnCancelar, BtnAlterar], False);
    sql_LISTA_ENDERECO.Active := False;
    sql_LISTA_ENDERECO.Active := True;
  //  edtBuscar.text := CODIGO.text;
    sql_CLIENTE_ENDERECO.Active := True;
    sql_CLIENTE_ENDERECO.insert;
   //  CarregarUltimoCadastro;

    dlConsultaendereco;
end;
end;


procedure Tfrm_cliente.dlConsultabanco(check_edit: Boolean = true);
const
  qry_base = 'select * from CLIENTE_BANCO';
var
  condicao: string;
begin
  sql_LISTA_BANCO.Close;
  begin
    if dbedt_codigo.Text <> emptystr then
    begin
          condicao := ' where  CODIGO_BANCO like ' + dbedt_codigo.Text;
      end;
    end;
  sql_LISTA_BANCO.Open(qry_base + condicao);
end;



procedure Tfrm_cliente.dlConsultaendereco(check_edit: Boolean = true);
const
  qry_base = 'select * from CLIENTE_ENDERECO';
var
  condicao: string;
begin
  sql_LISTA_ENDERECO.Close;
  begin
    if dbedt_codigo.Text <> emptystr then
    begin
          condicao := ' where  CODIGO_CLIENTE like ' + dbedt_codigo.Text;
      end;
    end;
  sql_LISTA_ENDERECO.Open(qry_base + condicao);
end;



procedure Tfrm_cliente.bt_end_altClick(Sender: TObject);
begin
  with sql_CLIENTE_ENDERECO do
  begin
    Close;
    ParamByName('pcodigo').Value := sql_CLIENTE_ENDERECOCODIGO.Value;
    Open;
    Edit;
  end;
  btn_end_sv.Enabled := true;
  btn_end_sv.Visible := true;

  btn_end_sv.Enabled := false;
  btn_end_sv.Visible := false;
end;

procedure Tfrm_cliente.btn_end_cancelClick(Sender: TObject);
begin
  sql_CLIENTE_ENDERECO.Cancel;
  sql_CLIENTE_ENDERECO.Close;

  btn_end_sv.Enabled := false;
  btn_end_sv.Visible := false;

  btnnendereco.Enabled := true;
  btnnendereco.Visible := true;
end;

procedure Tfrm_cliente.cxButton14Click(Sender: TObject);
begin
fmr_convenio := Tfmr_convenio.Create(nil);
fmr_convenio.showmodal;
end;

procedure Tfrm_cliente.cxButton15Click(Sender: TObject);
begin
   if u_funcoes.CamposObrigatorios([DBEdit8], ['Responsável'], [], [], [], []) then
  begin
    Exit;
  end
  else
begin
//  FDCONTA_BANCARIA.FieldByName('CODIGO_CONSULTOR').AsString := EDIT1;
      sql_CLIENTE_CONTATO.Active := True;
    sql_CLIENTE_CONTATO.FieldByName('CODIGO_CLIENTE').AsString := dbedt_codigo.Text;

    sql_CLIENTE_CONTATO.Post;
    sql_CLIENTE_CONTATO.Active := False;

    MessageDLG('ATENÇÃO: Operação concluída com sucesso', mtInformation, [mbOk], 0);


//    u_funcoes.IniciarCadastro([BtnIncluir, BtnCancelar, BtnAlterar], False);
    sql_LISTA_CONTATO1.Active := False;
    sql_LISTA_CONTATO1.Active := True;
  //  edtBuscar.text := CODIGO.text;
    sql_LISTA_CONTATO1.Active := True;
    sql_LISTA_CONTATO1.insert;
   //  CarregarUltimoCadastro;

   dlConsultacontato;
end;
end;



procedure Tfrm_cliente.cxButton16Click(Sender: TObject);
begin
  with sql_CLIENTE_CONTATO do
  begin
    Close;
    ParamByName('pcodigo').Value := sql_CLIENTE_CONTATOCODIGO.Value;
    Open;
    Edit;
  end;

  tbinculircontato.Enabled := true;
  tbinculircontato.Visible := true;

  cxButton15.Enabled := false;
  cxButton15.Visible := false;
end;

procedure Tfrm_cliente.cxButton17Click(Sender: TObject);
begin
  sql_LISTA_CONTATO1.Cancel;
  sql_LISTA_CONTATO1.Close;

  tbinculircontato.Enabled := true;
  tbinculircontato.Visible := true;

  cxButton15.Enabled := false;
  cxButton15.Visible := false;
end;

procedure Tfrm_cliente.dlConsultacontato(check_edit: Boolean = true);
const
  qry_base = 'select * from cliente_contato';
var
  condicao: string;
begin
  SQL_LISTA_CONTATO1.Close;
  begin
    if Edt_Consulta.Text <> emptystr then
    begin
          condicao := ' where  CODIGO_CLIENTE like' + Edt_Consulta.Text;
      end;
    end;
  SQL_LISTA_CONTATO1.Open(qry_base + condicao);
end;


procedure Tfrm_cliente.cxButton18Click(Sender: TObject);
begin
fmr_comp_financ := Tfmr_comp_financ.Create(nil);
fmr_comp_financ.ShowModal;
end;

procedure Tfrm_cliente.cxButton1Click(Sender: TObject);
begin
  FRM_cad_endereco := TFRM_cad_endereco.CREATE(Application);
  FRM_cad_endereco.ShowModal;
  DBEdit76.Text := FRM_cad_endereco.SQL_LISTADESCRICAO.value;
  DBEdit75.SetFocus;
end;

procedure Tfrm_cliente.cxButton21Click(Sender: TObject);
begin
fmr_smc_btn := Tfmr_smc_btn.Create(nil);
fmr_smc_btn.ShowModal;
end;

procedure Tfrm_cliente.cxButton22Click(Sender: TObject);
begin
frm_cad_animais := Tfrm_cad_animais.Create(nil);
frm_cad_animais.ShowModal;
end;

procedure Tfrm_cliente.btn_zonaClick(Sender: TObject);
begin
  FRM_cad_zona := TFRM_cad_zona.CREATE(Application);
  FRM_cad_zona.ShowModal;
  DBEdit1.Text := FRM_cad_zona.SQL_LISTADESCRICAO.value;
  DBComboBox1.SetFocus;
end;

procedure Tfrm_cliente.btn_bairroClick(Sender: TObject);
begin
  frm_cad_bairro := Tfrm_cad_bairro.CREATE(Application);
  frm_cad_bairro.ShowModal;
  DBEdit79.Text := frm_cad_bairro.SQL_LISTADESCRICAO.value;
  DBEdit77.SetFocus;
end;

procedure Tfrm_cliente.cxButton9Click(Sender: TObject);
begin
frm_otica := Tfrm_otica.Create(nil);
frm_otica.showmodal;
end;

procedure Tfrm_cliente.cxComboBox1KeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
begin
  if (Key = VK_RETURN) or (Key = VK_TAB) then
    cxDBTextEdit9.SetFocus;
end;

procedure Tfrm_cliente.cxComboBox3KeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
begin
  if (Key = VK_RETURN) or (Key = VK_TAB) then
    cxDBTextEdit9.SetFocus;
end;

procedure Tfrm_cliente.cxDateEdit1KeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
begin
  if (Key = VK_RETURN) or (Key = VK_TAB) then
    dbedtRG.SetFocus;
end;

procedure Tfrm_cliente.cxDateEdit2KeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
begin
  if (Key = VK_RETURN) or (Key = VK_TAB) then
    dbcbSexo.SetFocus;

end;

procedure Tfrm_cliente.cxDateEdit5KeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
begin
  if (Key = VK_RETURN) or (Key = VK_TAB) then
    dbedtNome.SetFocus;
end;

procedure Tfrm_cliente.cxDBTextEdit9KeyPress(Sender: TObject; var Key: Char);
begin
  inherited;
  Key := apenasnumeros(Key);
end;

//procedure Tfrm_cliente.cxGridDBTableView3CellDblClick(
//  Sender: TcxCustomGridTableView; ACellViewInfo: TcxGridTableDataCellViewInfo;
//  AButton: TMouseButton; AShift: TShiftState; var AHandled: Boolean);
//begin
//  with sql_LISTA_CONTATO1 do
//  begin
//    Close;
//    ParamByName('pcodigo').Value := inttostr(sql_LISTA_CONTATO1codigo.Value);
//    Open;
//  end;
//  CarregarDadosInternos;
//end;

procedure Tfrm_cliente.tab_consultaShow(Sender: TObject);
begin
  dlConsulta;
end;

procedure Tfrm_cliente.tbCellClick(Sender: TcxCustomGridTableView;
  ACellViewInfo: TcxGridTableDataCellViewInfo; AButton: TMouseButton;
  AShift: TShiftState; var AHandled: Boolean);
begin
  ConsultaParaCadastro;
end;

procedure Tfrm_cliente.tbcnpjGetDisplayText(Sender: TcxCustomGridTableItem; ARecord: TcxCustomGridRecord; var AText: string);
begin
  AText := TFormats.cnpj(AText);
end;

procedure Tfrm_cliente.tbcpfGetDisplayText(Sender: TcxCustomGridTableItem; ARecord: TcxCustomGridRecord; var AText: string);
begin
  AText := TFormats.CPF(AText);
end;

procedure Tfrm_cliente.tbCustomDrawCell(Sender: TcxCustomGridTableView; ACanvas: TcxCanvas; AViewInfo: TcxGridTableDataCellViewInfo;
  var ADone: Boolean);
var
  __value: variant;
begin

  __value := tb.ViewData.Records[AViewInfo.GridRecord.Index].Values[tbstatus_cadastral.Index];
  ACanvas.font.Color := tfunctions.ColorByStatus(__value, ['ATIVO', 'INATIVO'], [clWebDarkgreen, clWebCrimson]);

  tfunctions.StripedGrid(ACanvas, AViewInfo);

end;

procedure Tfrm_cliente.tbinculircontatoClick(Sender: TObject);
begin
   AlterarEnabled([gpContato, cxButton17, cxButton16], true);


  tbinculircontato.Enabled := false;
  tbinculircontato.Visible := false;

  cxButton15.Enabled := true;
  cxButton15.Visible := true;

  sql_CLIENTE_CONTATO.Active := True;
  sql_CLIENTE_CONTATO.insert;

end;

procedure Tfrm_cliente.tbKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
begin
  if Key = VK_RETURN then
    ConsultaParaCadastro;
end;

procedure Tfrm_cliente.tbpessoa_tipoCustomDrawCell(Sender: TcxCustomGridTableView; ACanvas: TcxCanvas;
  AViewInfo: TcxGridTableDataCellViewInfo; var ADone: Boolean);
begin
  tfunctions.setImageByStatus(['FISICA', 'JURIDICA'], [1, 0], ACanvas, tbpessoa_tipo.Index, imlist, AViewInfo);
  ADone := true;
end;

procedure Tfrm_cliente.tbpessoa_tipoGetDisplayText(Sender: TcxCustomGridTableItem; ARecord: TcxCustomGridRecord; var AText: string);
begin
  AText := '';
end;

procedure Tfrm_cliente.tbtelefoneGetDisplayText(Sender: TcxCustomGridTableItem; ARecord: TcxCustomGridRecord; var AText: string);
begin
  AText := TFormats.Phone(AText);
end;

procedure Tfrm_cliente.cxDBTextEdit20KeyPress(Sender: TObject; var Key: Char);
begin
  inherited;
  Key := ApenasLetras(Key);
end;

procedure Tfrm_cliente.cxDBTextEdit18KeyPress(Sender: TObject; var Key: Char);
begin
  inherited;
  Key := ApenasLetras(Key);
end;

procedure Tfrm_cliente.dbedtcontato1KeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
begin
  if (Key = VK_RETURN) or (Key = VK_TAB) then
  begin
    DBEdit4.SetFocus;
  end;
end;

procedure Tfrm_cliente.dbedtcontato1KeyPress(Sender: TObject; var Key: Char);
begin
  inherited;
  Key := u_funcoes.ApenasLetras(Key);
end;

procedure Tfrm_cliente.dbedtNomeKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
begin
  if (Key = VK_RETURN) or (Key = VK_TAB) then
    MaskEdit1.SetFocus;
end;

procedure Tfrm_cliente.dbedtNomeKeyPress(Sender: TObject; var Key: Char);
begin
  inherited;
  Key := u_funcoes.ApenasLetras(Key);
  Key := u_funcoes.ContarQuantidadeCaracteres(dbedtNome, Key, 'Nome', 100);
end;

procedure Tfrm_cliente.cxDBTextEdit32KeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
begin
  if (Key = VK_RETURN) or (Key = VK_TAB) then
    dbedtINSCRICAO_ESTADUAL.SetFocus;

end;

procedure Tfrm_cliente.cxDBTextEdit32KeyPress(Sender: TObject; var Key: Char);
begin
  inherited;
  Key := u_funcoes.apenasnumeros(Key);
end;

procedure Tfrm_cliente.cxDBTextEdit33KeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
begin
  if (Key = VK_RETURN) or (Key = VK_TAB) then
  begin
    DBEdit4.SetFocus;
  end;
end;

procedure Tfrm_cliente.cxDBTextEdit33KeyPress(Sender: TObject; var Key: Char);
begin
  inherited;
  Key := u_funcoes.ApenasLetras(Key);
end;

procedure Tfrm_cliente.cxDBTextEdit3KeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
begin
  if (Key = VK_RETURN) or (Key = VK_TAB) then
  begin
    DBComboBox3.SetFocus;
  end;
end;

procedure Tfrm_cliente.cxDBTextEdit3KeyPress(Sender: TObject; var Key: Char);
begin
  inherited;
  Key := u_funcoes.ApenasLetras(Key);
end;

procedure Tfrm_cliente.dbedtOEKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
begin
  if (Key = VK_RETURN) or (Key = VK_TAB) then
  begin
    DBEdit73.SetFocus;
  end;
end;

procedure Tfrm_cliente.dbedtOEKeyPress(Sender: TObject; var Key: Char);
begin
  inherited;
  Key := u_funcoes.ApenasLetras(Key);
end;

procedure Tfrm_cliente.dbedtRGKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
begin
  if (Key = VK_RETURN) or (Key = VK_TAB) then
    dbedtOE.SetFocus;
end;

procedure Tfrm_cliente.dbedtRGKeyPress(Sender: TObject; var Key: Char);
begin
  inherited;
  Key := u_funcoes.apenasnumeros(Key);
end;

procedure Tfrm_cliente.dbedt_codigoChange(Sender: TObject);
begin
//  dlConsultaendereco;
// // dlConsultabanco;
//  dlConsultacontato;
end;

procedure Tfrm_cliente.dbedt_codigoEnter(Sender: TObject);
begin
//  dlConsultaendereco;
////  dlConsultabanco;
//  dlConsultacontato;
end;

procedure Tfrm_cliente.dbedt_fantasiaKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
begin
  if (Key = VK_RETURN) or (Key = VK_TAB) then
    medt1.SetFocus;

end;

procedure Tfrm_cliente.dbedt_fantasiaKeyPress(Sender: TObject; var Key: Char);
begin
  Key := u_funcoes.ContarQuantidadeCaracteres(dbedt_fantasia, Key, 'Nome Fantasia', 50);
end;

procedure Tfrm_cliente.dbedt_razaosocialKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
begin
  if (Key = VK_RETURN) or (Key = VK_TAB) then
    dbedt_fantasia.SetFocus;
end;

procedure Tfrm_cliente.dbedt_razaosocialKeyPress(Sender: TObject; var Key: Char);
begin
  Key := u_funcoes.ContarQuantidadeCaracteres(dbedt_razaosocial, Key, 'Razão Social', 100);
end;

procedure Tfrm_cliente.dlConsulta;
const
  BASE = 'Select codigo, data_cadastro, situacao_financeira, pessoa_tipo, razao_social, fantasia, cpf, cnpj, inscricao_estadual, status_cadastral,'
    + 'municipio, estado, telefone, celular from cliente ';
var
  _field, _TIPO, _STATUS, _order, _value: string;
begin

  if edt_consulta.Text <> '' then
  begin
    _value := tdb.removeSqlInjection(edt_consulta.Text);
    _field := tfunctions.IfThen(cbFiltro.SelectedItem, [0, 1, 2, 3, 4, 5, 6, 7, 8, 9],
      ['CODIGO LIKE "' + _value + '%"', 'RAZAO_SOCIAL LIKE "%' + _value + '%"', 'FANTASIA LIKE "%' + _value + '%"',
      'CNPJ LIKE "' + _value + '%"', 'CPF LIKE "' + _value + '%"', 'TELEFONE LIKE "' + _value + '%"', 'CELULAR LIKE "' + _value + '%"',
      'INSCRICAO_ESTADUAL LIKE "' + _value + '%"', 'MUNICIPIO LIKE "%' + _value + '%"', 'ESTADO LIKE "%' + _value + '%"']);

  end;

  _order := ' order by ' + tfunctions.IfThen(cbOrder.SelectedItem, [0, 1, 2, 3, 4, 5, 6],
    ['CODIGO', 'RAZAO_SOCIAL', 'FANTASIA', 'PESSOA_TIPO', 'STATUS_CADASTRAL', 'MUNICIPIO', 'ESTADO']);

  _TIPO := format(' pessoa_tipo in %s ', [tdb.genin([chkFisica.Checked, chkJuridica.Checked], ['FISICA', 'JURIDICA'])]);

  _STATUS := format(' status_cadastral in %s ', [tdb.genin([chkAtivo.Checked, chkInativo.Checked], ['ATIVO', 'INATIVO'])]);

  with SQL_C_Clientes do
  begin
    Active := false;
    Close;
    sql.Clear;
    if _field = '' then
      sql.Add(BASE + ' WHERE ' + _TIPO + ' AND ' + _STATUS + _order)
    else
      sql.Add(BASE + ' WHERE ' + _field + ' AND ' + _TIPO + ' AND ' + _STATUS + _order);
    Open;
    Active := true;
  end;

end;

procedure Tfrm_cliente.DSCertFiles1GetPEMFilePasskey(ASender: TObject; var APasskey: AnsiString);
begin
  showmessage(APasskey);
end;

procedure Tfrm_cliente.Duplicar_CadastroExecute(Sender: TObject);
begin
  DuplicarCadastro(SQL_Cliente, 'CLIENTE', SQL_C_Clientescodigo.AsString);
  CarregarDados;
  padraotrue;
  IniciarCadastro([BtnIncluir, BtnCancelar, BtnAlterar], true);
  tab_cadastrar.Show;
end;

procedure Tfrm_cliente.cxDBTextEdit58KeyPress(Sender: TObject; var Key: Char);
begin
  inherited;
  Key := u_funcoes.apenasnumeros(Key);
end;


procedure Tfrm_cliente.cxDBTextEdit59KeyPress(Sender: TObject; var Key: Char);
begin
  inherited;
  Key := u_funcoes.ApenasLetras(Key);
end;

procedure Tfrm_cliente.cxDBTextEdit5KeyPress(Sender: TObject; var Key: Char);
begin
  inherited;
  Key := u_funcoes.ApenasLetras(Key);
end;

procedure Tfrm_cliente.cxDBTextEdit56KeyPress(Sender: TObject; var Key: Char);
begin
  inherited;
  Key := u_funcoes.apenasnumeros(Key);
end;

procedure Tfrm_cliente.cxDBTextEdit6KeyPress(Sender: TObject; var Key: Char);
begin
  inherited;
  Key := u_funcoes.ApenasLetras(Key);
end;


procedure Tfrm_cliente.cxDBTextEdit7KeyPress(Sender: TObject; var Key: Char);
begin
  inherited;
  Key := u_funcoes.ApenasLetras(Key);
end;

procedure Tfrm_cliente.dbcbSexoKeyPress(Sender: TObject; var Key: Char);
begin
  inherited;
  Key := u_funcoes.ApenasLetras(Key);
end;

procedure Tfrm_cliente.DBComboBox2KeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
begin
  if (Key = VK_RETURN) or (Key = VK_TAB) then
  begin
    cxDBTextEdit9.SetFocus;
  end;
end;

procedure Tfrm_cliente.DBComboBox2KeyPress(Sender: TObject; var Key: Char);
begin
  inherited;
  Key := u_funcoes.ApenasLetras(Key);
end;

procedure Tfrm_cliente.DBComboBox3KeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
begin
  if (Key = VK_RETURN) or (Key = VK_TAB) then
  begin
    cxDBTextEdit9.SetFocus;
  end;
end;

procedure Tfrm_cliente.DBComboBox3KeyPress(Sender: TObject; var Key: Char);
begin
  inherited;
  Key := u_funcoes.ApenasLetras(Key);
end;

procedure Tfrm_cliente.dbcbbSITUACAO_FINANCEIRAKeyPress(Sender: TObject; var Key: Char);
begin
  inherited;
  Key := u_funcoes.ApenasLetras(Key);
end;

procedure Tfrm_cliente.DBEdit103KeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
begin
  if (Key = VK_RETURN) or (Key = VK_TAB) then
  begin
    DBEdit2.SetFocus;
  end;
end;

procedure Tfrm_cliente.DBEdit106KeyPress(Sender: TObject; var Key: Char);
begin
  inherited;
  Key := u_funcoes.ApenasLetras(Key);
end;

procedure Tfrm_cliente.DBEdit10KeyPress(Sender: TObject; var Key: Char);
begin
  inherited;
  Key := u_funcoes.apenasnumeros(Key);
end;

procedure Tfrm_cliente.DBEdit15KeyPress(Sender: TObject; var Key: Char);
begin
  inherited;
  Key := u_funcoes.apenasnumeros(Key);
end;

procedure Tfrm_cliente.DBEdit16KeyPress(Sender: TObject; var Key: Char);
begin
  inherited;
  Key := apenasnumeros(Key);
end;

procedure Tfrm_cliente.DBEdit18KeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
begin
  if (Key = VK_RETURN) or (Key = VK_TAB) then
  begin
    DBEdit10.SetFocus;
  end;
end;

procedure Tfrm_cliente.DBEdit18KeyPress(Sender: TObject; var Key: Char);
begin
  inherited;
  Key := u_funcoes.apenasnumeros(Key);
end;

procedure Tfrm_cliente.DBEdit19KeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
begin
  if (Key = VK_RETURN) or (Key = VK_TAB) then
  begin
    DBEdit15.SetFocus;
  end;
end;

procedure Tfrm_cliente.DBEdit19KeyPress(Sender: TObject; var Key: Char);
begin
  inherited;
  Key := u_funcoes.apenasnumeros(Key);
end;

procedure Tfrm_cliente.dbedit1KeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
begin
  if (Key = VK_RETURN) or (Key = VK_TAB) then
    edt_data.SetFocus;
end;

procedure Tfrm_cliente.dbedit1KeyPress(Sender: TObject; var Key: Char);
begin
  inherited;
  Key := apenasnumeros(Key);
end;

procedure Tfrm_cliente.DBEdit20KeyPress(Sender: TObject; var Key: Char);
begin
  inherited;
  Key := apenasnumeros(Key);
end;

procedure Tfrm_cliente.DBEdit21KeyPress(Sender: TObject; var Key: Char);
begin
  inherited;
  Key := u_funcoes.apenasnumeros(Key);
end;


procedure Tfrm_cliente.DBEdit22KeyPress(Sender: TObject; var Key: Char);
begin
  inherited;
  Key := u_funcoes.apenasnumeros(Key);
end;

procedure Tfrm_cliente.DBEdit23KeyPress(Sender: TObject; var Key: Char);
begin
  inherited;
  Key := u_funcoes.apenasnumeros(Key);
end;

procedure Tfrm_cliente.DBEdit2KeyPress(Sender: TObject; var Key: Char);
begin
  inherited;
  Key := u_funcoes.apenasnumeros(Key);
end;

procedure Tfrm_cliente.DBEdit30KeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
begin
  if (Key = VK_RETURN) or (Key = VK_TAB) then
    BtnGravar.SetFocus;
end;

procedure Tfrm_cliente.DBEdit30KeyPress(Sender: TObject; var Key: Char);
begin
  inherited;
  Key := u_funcoes.apenasnumeros(Key);
end;

procedure Tfrm_cliente.DBEdit31KeyPress(Sender: TObject; var Key: Char);
begin
  inherited;
  Key := u_funcoes.apenasnumeros(Key);
end;


procedure Tfrm_cliente.edt_consultaKeyPress(Sender: TObject; var Key: Char);
begin
  inherited;
  if cbFiltro.SelectedItem in [0, 3, 4, 5, 6, 7] then
    Key := tfunctions.OnlyNumbers(Key)
  else if cbFiltro.SelectedItem in [1, 2, 8, 9] then
    Key := tfunctions.onlyLetters(Key);

end;

procedure Tfrm_cliente.edt_consultaKeyUp(Sender: TObject; var Key: Word; Shift: TShiftState);
begin
  dlConsulta;
end;

procedure Tfrm_cliente.edt_dataKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
begin
  if (Key = VK_RETURN) or (Key = VK_TAB) then
    if chk_rural.Checked = true then
      edt_ie.SetFocus
    else
      dbedtRG.SetFocus;
end;

procedure Tfrm_cliente.edt_dataKeyPress(Sender: TObject; var Key: Char);
begin
  inherited;
  Key := u_funcoes.apenasnumeros(Key);
end;

procedure Tfrm_cliente.edt_ieKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
begin
  if (Key = VK_RETURN) or (Key = VK_TAB) then
  begin
    edt_ie.Text := u_funcoes.removercaracteresespeciais(edt_ie.Text);
    dbedtOE.SetFocus;
  end;

end;

procedure Tfrm_cliente.dbedtTELEFONE_1KeyPress(Sender: TObject; var Key: Char);
begin
  inherited;
  Key := u_funcoes.apenasnumeros(Key);
end;

procedure Tfrm_cliente.DBEdit4KeyPress(Sender: TObject; var Key: Char);
begin
  inherited;
  Key := u_funcoes.apenasnumeros(Key);
end;


procedure Tfrm_cliente.dbedtCELULAR_1KeyPress(Sender: TObject; var Key: Char);
begin
  inherited;
  Key := u_funcoes.apenasnumeros(Key);
end;

procedure Tfrm_cliente.DBEdit60KeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
begin
  if (Key = VK_RETURN) or (Key = VK_TAB) then
  begin
    DBEdit2.SetFocus;
  end;
end;

procedure Tfrm_cliente.DBEdit6KeyPress(Sender: TObject; var Key: Char);
begin
  inherited;
  Key := apenasnumeros(Key);
end;

procedure Tfrm_cliente.DBEdit73KeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
begin
  if (Key = VK_RETURN) or (Key = VK_TAB) then
    dbcbSexo.SetFocus
end;

procedure Tfrm_cliente.DBEdit73KeyPress(Sender: TObject; var Key: Char);
begin
  inherited;
  Key := u_funcoes.apenasnumeros(Key);
end;

procedure Tfrm_cliente.DBEdit74KeyPress(Sender: TObject; var Key: Char);
begin
  inherited;
  Key := u_funcoes.ApenasLetras(Key);
end;

procedure Tfrm_cliente.DBEdit75KeyPress(Sender: TObject; var Key: Char);
begin
  inherited;
  Key := u_funcoes.apenasnumeros(Key);
end;


procedure Tfrm_cliente.DBEdit78KeyPress(Sender: TObject; var Key: Char);
begin
  inherited;
  Key := u_funcoes.apenasnumeros(Key);
end;

procedure Tfrm_cliente.DBEdit7KeyPress(Sender: TObject; var Key: Char);
begin
  inherited;
  Key := apenasnumeros(Key);
end;

procedure Tfrm_cliente.dbedtINSCRICAO_ESTADUALExit(Sender: TObject);
begin
  dbedtINSCRICAO_ESTADUAL.field.Text := u_funcoes.removercaracteresespeciais(dbedtINSCRICAO_ESTADUAL.Text);
  ValidarIE(dbedtINSCRICAO_ESTADUAL);
end;

procedure Tfrm_cliente.dbedtINSCRICAO_ESTADUALKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
begin
  if (Key = VK_RETURN) or (Key = VK_TAB) then
    cbSitTribICMS.SetFocus;
end;

procedure Tfrm_cliente.DBEdit84KeyPress(Sender: TObject; var Key: Char);
begin
  inherited;
  Key := u_funcoes.apenasnumeros(Key);
end;

procedure Tfrm_cliente.DBEdit87KeyPress(Sender: TObject; var Key: Char);
begin
  inherited;
  Key := u_funcoes.apenasnumeros(Key);
end;

procedure Tfrm_cliente.DBEdit8KeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
begin
  if (Key = VK_RETURN) or (Key = VK_TAB) then
    dbedtINSCRICAO_MUNICIPAL.SetFocus;
end;

procedure Tfrm_cliente.DBEdit8KeyPress(Sender: TObject; var Key: Char);
begin
  inherited;
  Key := apenasnumeros(Key);
end;

procedure Tfrm_cliente.DBEdit94KeyPress(Sender: TObject; var Key: Char);
begin
  inherited;
  Key := u_funcoes.ApenasLetras(Key);
end;

procedure Tfrm_cliente.DBEdit96KeyPress(Sender: TObject; var Key: Char);
begin
  Key := apenasnumeros(Key);
end;


procedure Tfrm_cliente.DBEdit98KeyPress(Sender: TObject; var Key: Char);
begin
  inherited;
  Key := u_funcoes.apenasnumeros(Key);
end;

procedure Tfrm_cliente.dbedtINSCRICAO_MUNICIPALKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
begin
  if (Key = VK_RETURN) or (Key = VK_TAB) then
    btn_ramo.SetFocus;
end;

procedure Tfrm_cliente.dbedtINSCRICAO_MUNICIPALKeyPress(Sender: TObject; var Key: Char);
begin
  inherited;
  Key := u_funcoes.apenasnumeros(Key);
end;

end.
