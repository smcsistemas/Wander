{ v 18.10.16 14:50 }
unit vw_cliente;

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
  cxCurrencyEdit, m_cliente_conveniado, h_Dialogs, m_Cliente, S_Parametros_Venda, h_Checks, vw_historico_conveniado,
  cad_atividade, cad_zona, cad_rota, cad_endereco, rel_clientes;

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
    SQL_ClienteSUFRAMA: TStringField;
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
    SQL_ClienteENTREGA_ENDERECO: TStringField;
    SQL_ClienteENTREGA_NUMERO: TStringField;
    SQL_ClienteENTREGA_BAIRRO: TStringField;
    SQL_ClienteENTREGA_COMPLEMENTO: TStringField;
    SQL_ClienteENTREGA_CEP: TStringField;
    SQL_ClienteENTREGA_MUNICIPIO: TStringField;
    SQL_ClienteENTREGA_CODIGO_MUNICIPIO: TIntegerField;
    SQL_ClienteENTREGA_REGIAO: TStringField;
    SQL_ClienteENTREGA_ZONA: TStringField;
    SQL_ClienteENTREGA_ESTADO: TStringField;
    SQL_ClienteENTREGA_PAIS: TStringField;
    SQL_ClienteENTREGA_CODIGO_PAIS: TIntegerField;
    SQL_ClienteCOBRANCA_ENDERECO: TStringField;
    SQL_ClienteCOBRANCA_NUMERO: TStringField;
    SQL_ClienteCOBRANCA_BAIRRO: TStringField;
    SQL_ClienteCOBRANCA_COMPLEMENTO: TStringField;
    SQL_ClienteCOBRANCA_CEP: TStringField;
    SQL_ClienteCOBRANCA_MUNICIPIO: TStringField;
    SQL_ClienteCOBRANCA_CODIGO_MUNICIPIO: TIntegerField;
    SQL_ClienteCOBRANCA_REGIAO: TStringField;
    SQL_ClienteCOBRANCA_ZONA: TStringField;
    SQL_ClienteCOBRANCA_ESTADO: TStringField;
    SQL_ClienteCOBRANCA_PAIS: TStringField;
    SQL_ClienteCOBRANCA_CODIGO_PAIS: TIntegerField;
    SQL_ClienteAVALISTA_NOME: TStringField;
    SQL_ClienteAVALISTA_DATA_NASCIMENTO: TDateField;
    SQL_ClienteAVALISTA_CPF: TStringField;
    SQL_ClienteAVALISTA_RG: TStringField;
    SQL_ClienteAVALISTA_ORGAO_EMISSOR: TStringField;
    SQL_ClienteAVALISTA_RG_DATA_EMISSAO: TStringField;
    SQL_ClienteAVALISTA_ESTADO_CIVIL: TStringField;
    SQL_ClienteAVALISTA_NACIONALIDADE: TStringField;
    SQL_ClienteAVALISTA_NATURALIDADE: TStringField;
    SQL_ClienteAVALISTA_NOME_PAI: TStringField;
    SQL_ClienteAVALISTA_NOME_MAE: TStringField;
    SQL_ClienteAVALISTA_ENDERECO: TStringField;
    SQL_ClienteAVALISTA_NUMERO: TStringField;
    SQL_ClienteAVALISTA_BAIRRO: TStringField;
    SQL_ClienteAVALISTA_COMPLEMENTO: TStringField;
    SQL_ClienteAVALISTA_CEP: TStringField;
    SQL_ClienteAVALISTA_MUNICIPIO: TStringField;
    SQL_ClienteAVALISTA_CODIGO_MUNICIPIO: TIntegerField;
    SQL_ClienteAVALISTA_REGIAO: TStringField;
    SQL_ClienteAVALISTA_ZONA: TStringField;
    SQL_ClienteAVALISTA_ESTADO: TStringField;
    SQL_ClienteAVALISTA_PAIS: TStringField;
    SQL_ClienteAVALISTA_CODIGO_PAIS: TIntegerField;
    SQL_ClienteALIQUOTA_FECOEP: TIntegerField;
    SQL_ClienteBANCO_1: TStringField;
    SQL_ClienteBANCO_CONTA_1: TStringField;
    SQL_ClienteBANCO_AGENCIA_1: TStringField;
    SQL_ClienteBANCO_2: TStringField;
    SQL_ClienteBANCO_CONTA_2: TStringField;
    SQL_ClienteBANCO_CONTA_DIGITO: TStringField;
    SQL_ClienteBANCO_CONTA_DIGITO_2: TStringField;
    SQL_ClienteBANCO_ANGENCIA_DIGITO: TStringField;
    SQL_ClienteBANCO_ANGENCIA_DIGITO_2: TStringField;
    SQL_ClienteBANCO_AGENCIA_2: TStringField;
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
    SQL_ClienteBANCO_OP2_CONTA: TStringField;
    SQL_ClienteCLIENTE_TIPO: TStringField;
    sql_increment: TFDQuery;
    sql_incrementAUTO_INCREMENT: TLargeintField;
    DS_C_Clientes: TDataSource;
    SQL_C_Clientes: TFDQuery;
    page_control: TcxPageControl;
    tab_cadastrar: TcxTabSheet;
    chk_ativo_cadastro: TcxCheckBox;
    chk_rural: TcxCheckBox;
    GroupBox8: TGroupBox;
    BtnFisica: TcxButton;
    BtnJuridica: TcxButton;
    PageControl3: TPageControl;
    TabSheet7: TTabSheet;
    Label14: TLabel;
    Label19: TLabel;
    Label48: TLabel;
    DBEdit78: TDBEdit;
    DBEdit77: TDBEdit;
    DBEdit75: TDBEdit;
    DBEdit76: TDBEdit;
    DBEdit79: TDBEdit;
    DBEdit83: TDBEdit;
    DBEdit80: TDBEdit;
    DBEdit82: TDBEdit;
    DBEdit104: TDBEdit;
    DBEdit81: TDBEdit;
    btnMunicipE1: TcxButton;
    TabSheet8: TTabSheet;
    Label60: TLabel;
    Label29: TLabel;
    Label31: TLabel;
    DBEdit84: TDBEdit;
    DBEdit85: TDBEdit;
    dbedit86: TDBEdit;
    DBEdit87: TDBEdit;
    DBEdit88: TDBEdit;
    DBEdit89: TDBEdit;
    DBEdit90: TDBEdit;
    DBEdit91: TDBEdit;
    DBEdit92: TDBEdit;
    DBEdit93: TDBEdit;
    DBEdit94: TDBEdit;
    btnMunicipE2: TcxButton;
    TabSheet9: TTabSheet;
    Label33: TLabel;
    Label34: TLabel;
    Label44: TLabel;
    DBEdit95: TDBEdit;
    DBEdit96: TDBEdit;
    DBEdit97: TDBEdit;
    DBEdit98: TDBEdit;
    DBEdit99: TDBEdit;
    DBEdit100: TDBEdit;
    DBEdit101: TDBEdit;
    DBEdit102: TDBEdit;
    DBEdit103: TDBEdit;
    DBEdit105: TDBEdit;
    DBEdit106: TDBEdit;
    btnMunicipE3: TcxButton;
    BtnGravar: TcxButton;
    BtnCancelar: TcxButton;
    BtnIncluir: TcxButton;
    BtnAlterar: TcxButton;
    BtnConsultarCnpj: TcxButton;
    gpFisica: TGroupBox;
    Label25: TLabel;
    Label3: TLabel;
    lblRG: TLabel;
    Label1: TLabel;
    Label20: TLabel;
    Label7: TLabel;
    Label6: TLabel;
    Label30: TLabel;
    Label2: TLabel;
    Label32: TLabel;
    Label9: TLabel;
    Label5: TLabel;
    DBComboBox2: TDBComboBox;
    dbcbSexo: TDBComboBox;
    dbedtRG: TDBEdit;
    dbedtOE: TcxDBTextEdit;
    cxDBTextEdit6: TcxDBTextEdit;
    cxDBTextEdit7: TcxDBTextEdit;
    GroupBox12: TGroupBox;
    DBEdit2: TDBEdit;
    DBEdit4: TDBEdit;
    GroupBox4: TGroupBox;
    cxDBTextEdit20: TcxDBTextEdit;
    DBEdit21: TDBEdit;
    DBEdit22: TDBEdit;
    DBEdit19: TDBEdit;
    DBEdit15: TDBEdit;
    DBEdit30: TDBEdit;
    GroupBox1: TGroupBox;
    cxDBTextEdit18: TcxDBTextEdit;
    DBEdit20: TDBEdit;
    DBEdit18: TDBEdit;
    DBEdit10: TDBEdit;
    DBEdit23: TDBEdit;
    DBEdit31: TDBEdit;
    edt_ie: TDBEdit;
    SQL_ClienteCONSUMIDOR_TIPO: TStringField;
    dbedtcontato1: TDBEdit;
    dbedtemail: TDBEdit;
    dbedtNome: TDBEdit;
    grp1: TGroupBox;
    cxDBTextEdit24: TcxDBTextEdit;
    dbedtCELULAR_1: TDBEdit;
    cxDBTextEdit59: TcxDBTextEdit;
    dbedtTELEFONE_1: TDBEdit;
    popmenugrid: TPopupMenu;
    Cadastrarcomofornecedor1: TMenuItem;
    dbedt_codigo: TDBEdit;
    SQL_ClienteDATA_NASCIMENTO: TDateField;
    SQL_ClienteDATA_EMISSAO: TDateField;
    cxDBTextEdit9: TcxDBTextEdit;
    edt_data: TcxDateEdit;
    DBEdit73: TcxDateEdit;
    DBComboBox3: TDBComboBox;
    Label10: TLabel;
    tb_otica: TcxTabSheet;
    SQL_DADOS_OTICA: TFDQuery;
    DS_DADOS_OTICA: TDataSource;
    GroupBox3: TGroupBox;
    Label13: TLabel;
    Label15: TLabel;
    Label16: TLabel;
    Label18: TLabel;
    Label22: TLabel;
    Label23: TLabel;
    Shape1: TShape;
    Label28: TLabel;
    Label36: TLabel;
    Label41: TLabel;
    Label42: TLabel;
    Label43: TLabel;
    L_OE_ES: TcxTextEdit;
    L_OE_C: TcxTextEdit;
    L_OE_EX: TcxTextEdit;
    L_OE_DP: TcxTextEdit;
    LENTE_GRAU: TcxTextEdit;
    ARMACAO_GRAU: TcxTextEdit;
    LENTE_SOLAR: TcxTextEdit;
    ARMACAO_SOLAR: TcxTextEdit;
    L_OD_ES: TcxTextEdit;
    L_OD_C: TcxTextEdit;
    L_OD_EX: TcxTextEdit;
    L_OD_DP: TcxTextEdit;
    grid_otica: TcxGrid;
    grid_oticaLevel1: TcxGridLevel;
    grid_oticaDBBandedTableView1: TcxGridDBBandedTableView;
    grid_oticaDBBandedTableView1DATA_CADASTRO: TcxGridDBBandedColumn;
    grid_oticaDBBandedTableView1L_OE_ESFERA: TcxGridDBBandedColumn;
    grid_oticaDBBandedTableView1L_OE_CILINDRO: TcxGridDBBandedColumn;
    grid_oticaDBBandedTableView1L_OE_EIXO: TcxGridDBBandedColumn;
    grid_oticaDBBandedTableView1L_OE_DISTANCIA_PUPILAR: TcxGridDBBandedColumn;
    grid_oticaDBBandedTableView1L_OD_ESFERA: TcxGridDBBandedColumn;
    grid_oticaDBBandedTableView1L_OD_CILINDRO: TcxGridDBBandedColumn;
    grid_oticaDBBandedTableView1L_OD_EIXO: TcxGridDBBandedColumn;
    grid_oticaDBBandedTableView1L_OD_DISTANCIA_PUPILAR: TcxGridDBBandedColumn;
    grid_oticaDBBandedTableView1P_OE_ESFERA: TcxGridDBBandedColumn;
    grid_oticaDBBandedTableView1P_OE_CILINDRO: TcxGridDBBandedColumn;
    grid_oticaDBBandedTableView1P_OE_EIXO: TcxGridDBBandedColumn;
    grid_oticaDBBandedTableView1P_OE_DISTANCIA_PUPILAR: TcxGridDBBandedColumn;
    grid_oticaDBBandedTableView1P_OD_ESFERA: TcxGridDBBandedColumn;
    grid_oticaDBBandedTableView1P_OD_CILINDRO: TcxGridDBBandedColumn;
    grid_oticaDBBandedTableView1P_OD_EIXO: TcxGridDBBandedColumn;
    grid_oticaDBBandedTableView1P_OD_DISTANCIA_PUPILAR: TcxGridDBBandedColumn;
    btn_cad: TcxButton;
    grid_oticaDBBandedTableView1LENTE_GRAU: TcxGridDBBandedColumn;
    grid_oticaDBBandedTableView1ARMACAO_GRAU: TcxGridDBBandedColumn;
    grid_oticaDBBandedTableView1LENTE_SOLAR: TcxGridDBBandedColumn;
    grid_oticaDBBandedTableView1ARMACAO_SOLAR: TcxGridDBBandedColumn;
    grid_otica_pop: TPopupMenu;
    Alterar1: TMenuItem;
    Excluir1: TMenuItem;
    ADICAO: TcxTextEdit;
    Label52: TLabel;
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
    P_OE_DP: TcxTextEdit;
    P_OD_DP: TcxTextEdit;
    P_OD_EX: TcxTextEdit;
    P_OE_EX: TcxTextEdit;
    P_OE_C: TcxTextEdit;
    P_OD_C: TcxTextEdit;
    P_OD_ES: TcxTextEdit;
    P_OE_ES: TcxTextEdit;
    Label26: TLabel;
    Label24: TLabel;
    Shape2: TShape;
    Label35: TLabel;
    SQL_DADOS_OTICAADICAO: TStringField;
    grid_oticaDBBandedTableView1ADICAO: TcxGridDBBandedColumn;
    MaskEdit1: TMaskEdit;
    btn_cep_1: TcxButton;
    btn_cep_2: TcxButton;
    btn_cep_3: TcxButton;
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
    gpJuridica: TGroupBox;
    lbl2: TLabel;
    lbl3: TLabel;
    lbl4: TLabel;
    lbl5: TLabel;
    lbl6: TLabel;
    lbl7: TLabel;
    lbl8: TLabel;
    dbedtINSCRICAO_ESTADUAL: TDBEdit;
    cxDBTextEdit32: TcxDBTextEdit;
    dbedtINSCRICAO_MUNICIPAL: TDBEdit;
    dbedt_atividade: TDBEdit;
    dbedt_fantasia: TDBEdit;
    dbedt_razaosocial: TDBEdit;
    btn_ramo: TcxButton;
    medt1: TMaskEdit;
    GroupBox9: TGroupBox;
    DBMemo1: TDBMemo;
    btnSintegra: TImage;
    sql_conveniados: TFDQuery;
    sql_conveniadosperiodo: TStringField;
    sql_conveniadosnome: TStringField;
    sql_conveniadosmatricula: TStringField;
    sql_conveniadoscpf: TStringField;
    sql_conveniadoscredito: TBCDField;
    sql_conveniadosid: TFDAutoIncField;
    ds_conveniado: TDataSource;
    grpConveniados: TGroupBox;
    conveniadoNome: TcxTextEdit;
    conveniadoCpf: TcxMaskEdit;
    conveniadoSenha: TcxMaskEdit;
    conveniadoMatricula: TcxTextEdit;
    conveniadoCredito: TcxCurrencyEdit;
    btn_confirmar: TcxButton;
    cxGroupBox3: TcxGroupBox;
    conveniadoConsulta: TcxTextEdit;
    conveniadoFiltro: TcxComboBox;
    conveniadoQryPeriodoInicio: TcxDateEdit;
    conveniadoQryPeriodoFim: TcxDateEdit;
    gdConveniados: TcxGrid;
    gdConveniadosTbVw: TcxGridDBTableView;
    clid: TcxGridDBColumn;
    clPeriodo: TcxGridDBColumn;
    clNome: TcxGridDBColumn;
    clCPF: TcxGridDBColumn;
    clMatricula: TcxGridDBColumn;
    clCredito: TcxGridDBColumn;
    gdConveniadosLv: TcxGridLevel;
    popConveniados: TPopupMenu;
    ZerarConvenio1: TMenuItem;
    Editar1: TMenuItem;
    lblQTDEConveniados: TLabel;
    btnRenovarConveniados: TcxButton;
    convenioInicio: TcxDateEdit;
    convenioFim: TcxDateEdit;
    SQL_Clienteconvenio_inicio: TDateField;
    SQL_Clienteconvenio_fim: TDateField;
    clStatus: TcxGridDBColumn;
    sql_conveniadosstatus: TBooleanField;
    HistricodeVendas1: TMenuItem;
    DBEdit1: TDBEdit;
    DBEdit3: TDBEdit;
    btn_zona: TcxButton;
    bnt_rota: TcxButton;
    btn_endereco: TcxButton;
    SQL_ClienteROTA: TStringField;
    DBComboBox1: TDBComboBox;
    btn_relatorios_cli: TcxButton;
    lbl9: TLabel;
    dbcbbSITUACAO_FINANCEIRA: TDBComboBox;
    lbl10: TLabel;
    cxDBTextEdit58: TcxDBTextEdit;
    procedure cxDBTextEdit3KeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
    procedure cxComboBox2KeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
    procedure cxDBTextEdit6KeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);

    procedure cxDBTextEdit18KeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
    procedure cxDBTextEdit20KeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
    procedure cxDBTextEdit24KeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
    procedure cxDBTextEdit25KeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
    procedure cxDateEdit2KeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
    procedure cxDBTextEdit33KeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
    procedure cxDBTextEdit56KeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
    procedure cxDateEdit5KeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
    procedure cxComboBox1KeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
//    procedure dbcbbSITUACAO_FINANCEIRAKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
    procedure cxComboBox3KeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
//    procedure cxDBTextEdit7KeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure Button1Click(Sender: TObject);
    procedure BtnIncluirClick(Sender: TObject);
    procedure BtnGravarClick(Sender: TObject);
    procedure GridClientesDblClick(Sender: TObject);
    procedure BtnJuridicaClick(Sender: TObject);
    procedure BtnFisicaClick(Sender: TObject);
    procedure btnSintegraClick(Sender: TObject);
//    procedure dbedtINSCRICAO_ESTADUALKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
    procedure cxDBTextEdit32KeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
    procedure DBEdit8KeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
    procedure dbedtINSCRICAO_MUNICIPALKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
    procedure DBEdit10KeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
    procedure DBEdit18KeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
    procedure DBEdit19KeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
    procedure DBEdit22KeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
    procedure DBEdit21KeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
    procedure DBEdit23KeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
    procedure DBEdit20KeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
    procedure DBEdit35KeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
    procedure dbedit1KeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
    procedure dbedtNomeKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
    procedure cxDateEdit1KeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
    procedure dbedtOEKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
    procedure dbcbSexoKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
    procedure DBComboBox2KeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
//    procedure cxDBTextEdit5KeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
    procedure DBComboBox3KeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
//    procedure cxDBTextEdit58KeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
    procedure DBEdit60KeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
    procedure dbedtTELEFONE_1KeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
    procedure DBEdit4KeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
    procedure cxDBTextEdit59KeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
    procedure dbedtCELULAR_1KeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);

    procedure cxDBTextEdit66KeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
    procedure cxDBTextEdit40KeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
    procedure DBEdit2KeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
    procedure btnMunicipE2Click(Sender: TObject);
    procedure btnMunicipE3Click(Sender: TObject);
    procedure DBEdit15KeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
    procedure DBEdit31KeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
    procedure DBEdit79KeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
    procedure DBEdit88KeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
    procedure DBEdit87KeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
    procedure DBEdit89KeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
    procedure dbedit86KeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
    procedure DBEdit84KeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
    procedure DBEdit94KeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
    procedure DBEdit106KeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
    procedure DBEdit99KeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
    procedure DBEdit98KeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
    procedure DBEdit100KeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
    procedure DBEdit97KeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
    procedure BtnCancelarClick(Sender: TObject);
    procedure BtnExcluirClick(Sender: TObject);
    procedure edt_dataKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
    procedure dbedtRGKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
    procedure DBEdit73KeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
    procedure DBEdit76KeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
    procedure DBEdit75KeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
    procedure DBEdit77KeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
    procedure DBEdit74KeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
    procedure DBEdit80KeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
    procedure DBEdit81KeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
    procedure DBEdit82KeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
    procedure DBEdit78KeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
    procedure DBEdit83KeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
    procedure DBEdit104KeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
    procedure DBEdit85KeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
    procedure btnMunicipE1Click(Sender: TObject);
    procedure DBEdit30KeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
    procedure DBEdit71KeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
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
    procedure dbedt_atividadeKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
    procedure dbedt_razaosocialKeyPress(Sender: TObject; var Key: Char);
    procedure dbedt_fantasiaKeyPress(Sender: TObject; var Key: Char);
    procedure btnImprimirClick(Sender: TObject);
    procedure CarregarDadosInternos;
    procedure FormKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
    procedure Duplicar_CadastroExecute(Sender: TObject);
    procedure CarregarDados;
    procedure FormShow(Sender: TObject);
    procedure CarregarUltimoCadastro;
    procedure DBComboBox3KeyPress(Sender: TObject; var Key: Char);
    procedure DBEdit103KeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
    procedure FormCreate(Sender: TObject);
    procedure dbedtINSCRICAO_ESTADUALExit(Sender: TObject);
    procedure DBEdit96KeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
    procedure DBEdit96KeyPress(Sender: TObject; var Key: Char);
    procedure DSCertFiles1GetPEMFilePasskey(ASender: TObject; var APasskey: AnsiString);
    procedure salvar_dados_otica;
    procedure atualizar_dados_otica;
    procedure btn_cadClick(Sender: TObject);
    procedure grid_oticaDBBandedTableView1CustomDrawCell(Sender: TcxCustomGridTableView; ACanvas: TcxCanvas;
      AViewInfo: TcxGridTableDataCellViewInfo; var ADone: Boolean);
    procedure grid_oticaDBBandedTableView1CellDblClick(Sender: TcxCustomGridTableView; ACellViewInfo: TcxGridTableDataCellViewInfo;
      AButton: TMouseButton; AShift: TShiftState; var AHandled: Boolean);
    procedure preencher_campos_otica;
    procedure L_OD_ESKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
    procedure L_OD_CKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
    procedure L_OD_EXKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
    procedure L_OD_DPKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
    procedure L_OE_ESKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
    procedure L_OE_CKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
    procedure L_OE_EXKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
    procedure L_OE_DPKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
    procedure P_OD_ESKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
    procedure P_OD_CKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
    procedure P_OD_EXKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
    procedure P_OD_DPKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
    procedure P_OE_ESKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
    procedure P_OE_CKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
    procedure P_OE_EXKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
    procedure P_OE_DPKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
    procedure LENTE_GRAUKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
    procedure ARMACAO_GRAUKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
    procedure LENTE_SOLARKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
    procedure ARMACAO_SOLARKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
//    procedure Alterar1Click(Sender: TObject);
//    procedure Excluir1Click(Sender: TObject);
//    procedure consultar_dados_otica;
//    procedure tb_oticaShow(Sender: TObject);
    procedure alterar_cli(BooFocus: Boolean = true);
    procedure ADICAOKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
    procedure L_OE_ADKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
    procedure P_OD_ADKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
    procedure P_OE_ADKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
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
    procedure L_OD_ESKeyPress(Sender: TObject; var Key: Char);
    procedure L_OD_CKeyPress(Sender: TObject; var Key: Char);
    procedure L_OD_EXKeyPress(Sender: TObject; var Key: Char);
    procedure L_OD_DPKeyPress(Sender: TObject; var Key: Char);
    procedure L_OE_ESKeyPress(Sender: TObject; var Key: Char);
    procedure L_OE_CKeyPress(Sender: TObject; var Key: Char);
    procedure L_OE_EXKeyPress(Sender: TObject; var Key: Char);
    procedure L_OE_DPKeyPress(Sender: TObject; var Key: Char);
    procedure P_OD_ESKeyPress(Sender: TObject; var Key: Char);
    procedure P_OD_CKeyPress(Sender: TObject; var Key: Char);
    procedure P_OD_EXKeyPress(Sender: TObject; var Key: Char);
    procedure P_OD_DPKeyPress(Sender: TObject; var Key: Char);
    procedure P_OE_ESKeyPress(Sender: TObject; var Key: Char);
    procedure P_OE_CKeyPress(Sender: TObject; var Key: Char);
    procedure P_OE_EXKeyPress(Sender: TObject; var Key: Char);
    procedure P_OE_DPKeyPress(Sender: TObject; var Key: Char);
    procedure btn_cep_1Click(Sender: TObject);
    procedure btn_cep_2Click(Sender: TObject);
    procedure btn_cep_3Click(Sender: TObject);
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
    procedure tbCellDblClick(Sender: TcxCustomGridTableView; ACellViewInfo: TcxGridTableDataCellViewInfo; AButton: TMouseButton;
      AShift: TShiftState; var AHandled: Boolean);
    procedure tbKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
    procedure btn_confirmarClick(Sender: TObject);
    procedure conveniadoMatriculaKeyPress(Sender: TObject; var Key: Char);
    procedure conveniadoConsultaKeyUp(Sender: TObject; var Key: Word; Shift: TShiftState);
    procedure gdConveniadosTbVwCustomDrawCell(Sender: TcxCustomGridTableView; ACanvas: TcxCanvas; AViewInfo: TcxGridTableDataCellViewInfo;
      var ADone: Boolean);
    procedure change(Sender: TObject);
    procedure gdConveniadosTbVwCellDblClick(Sender: TcxCustomGridTableView; ACellViewInfo: TcxGridTableDataCellViewInfo;
      AButton: TMouseButton; AShift: TShiftState; var AHandled: Boolean);
    procedure conveniadoSenhaKeyPress(Sender: TObject; var Key: Char);
    procedure Editar1Click(Sender: TObject);
    procedure btnRenovarConveniadosClick(Sender: TObject);
    procedure conveniadoCreditoEnter(Sender: TObject);
    procedure ZerarConvenio1Click(Sender: TObject);
    procedure convenioInicioPropertiesEditValueChanged(Sender: TObject);
    procedure convenioFimPropertiesEditValueChanged(Sender: TObject);
    procedure HistricodeVendas1Click(Sender: TObject);
    procedure btn_ramoClick(Sender: TObject);
    procedure btn_zonaClick(Sender: TObject);
    procedure bnt_rotaClick(Sender: TObject);
    procedure btn_enderecoClick(Sender: TObject);
    procedure btn_relatorios_cliClick(Sender: TObject);
  private
    { Private declarations }
    dados_otica_sts: Integer;
    cad_block, updateAction: Boolean;
    conveniadosNullId: array of Integer;
    clienteConveniado: TClienteConveniado;

    procedure dlConsulta;
    procedure ConsultaParaCadastro;
    procedure reloadConveniados;
    procedure clearConveniado;
    procedure editConveniado;
  public
    { Public declarations }
  end;

var
  frm_cliente: Tfrm_cliente;
  Tipo_Empresa: String;

implementation

{$R *.dfm}

uses U_Municipio, u_funcoes, liberacao, relatorios,
  c_Globals;

procedure Tfrm_cliente.BtnGravarClick(Sender: TObject);
var
  x: Integer;
  cc: TClienteConveniado;
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
        if TParametros_Venda.USA_CONVENIO then
        begin
          if tchecks.dateIsNull(convenioInicio.date) then
          begin
            tdialogs.wnAlerta('Convenio', 'Início do período do convenio deve ser informado.');
            convenioInicio.Brush.Color := clMoneyGreen;
            exit;
          end
          else
            convenioInicio.Brush.Color := clWhite;
          if tchecks.dateIsNull(convenioFim.date) then
          begin
            tdialogs.wnAlerta('Convenio', 'Fim do período do convenio deve ser informado.');
            convenioFim.Brush.Color := clMoneyGreen;
            exit;
          end
          else
            convenioFim.Brush.Color := clWhite;

          SQL_Clienteconvenio_inicio.Value := convenioInicio.date;
          SQL_Clienteconvenio_fim.Value := convenioFim.date;
        end;

        if Tipo_Empresa = 'FISICA' then
        begin
          if chk_rural.Checked = true then
          begin
            if simplequery('SELECT CPF_CAD_CLIENTE FROM PARAMETROS_SISTEMA').Fields[0].AsString = m_true then
            begin
              if CamposObrigatorios([dbedtNome, edt_ie, DBEdit75, DBEdit79, DBEdit81, DBEdit78],
                ['Nome', 'IE * ISENTO - Caso não possua', 'Rua | Avenida', 'Número', 'Bairro', 'Município', 'CEP'], [], [], [], [],
                [MaskEdit1], ['CPF']) then
              begin
                exit { Pessoa fisica e produtor rural }
              end
            end
            else if simplequery('SELECT CPF_CAD_CLIENTE FROM PARAMETROS_SISTEMA').Fields[0].AsString = m_false then
            begin
              if CamposObrigatorios([dbedtNome, edt_ie, DBEdit76, DBEdit75, DBEdit79, DBEdit81, DBEdit78],
                ['Nome', 'IE * ISENTO - Caso não possua', 'Rua | Avenida', 'Número', 'Bairro', 'Município', 'CEP'], [], [], [], [], [], [])
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

        if chk_ativo_cadastro.Checked = true then
          SQL_ClienteSTATUS_CADASTRAL.Value := 'ATIVO'
        else if chk_ativo_cadastro.Checked = false then
          SQL_ClienteSTATUS_CADASTRAL.Value := 'INATIVO';
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
        u_funcoes.CamposOpcionais([DBEdit2, dbedtcontato1, dbedtemail],
          ['Telefone * No mínimo um', 'Contato * No mínimo um', 'Email']);

        SQL_Cliente.Post;
        updateAction := false;
        for x in conveniadosNullId do
        begin
          cc := TClienteConveniado.Create(x);
          cc.CLIENTE := TCliente.Create(strtoInt(dbedt_codigo.Text));
          cc.save;
        end;
        conveniadosNullId := nil;
        clienteConveniado := nil;
        reloadConveniados;
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
begin
  updateAction := false;
  SQL_Cliente.Active := true;
  sql_increment.Active := false;
  sql_increment.Active := true;
  SQL_Cliente.Insert;
  Tipo_Empresa := '';
  gpFisica.Visible := true;
  gpFisica.Enabled := true;
  gpJuridica.Enabled := true;
  gpJuridica.Visible := false;
  chk_rural.Enabled := false;
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
  AlterarEnabled([GroupBox12, grp1, GroupBox1, GroupBox4, gpJuridica, gpFisica, GroupBox3, TabSheet7, TabSheet8, TabSheet9, BtnCancelar,
    btnMunicipE1, btnMunicipE2, btnMunicipE3, bnt_rota, btn_zona, btn_ramo, btn_endereco, btn_cad, btn_cep_1, btn_cep_2, btn_cep_3], true);
  IniciarCadastro([BtnIncluir, BtnCancelar, BtnAlterar], true);

  reloadConveniados;
  convenioInicio.Clear;
  convenioFim.Clear;
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

procedure Tfrm_cliente.clearConveniado;
begin
  conveniadoNome.Text := '';
  conveniadoMatricula.Text := '';
  conveniadoCpf.Text := '';
  conveniadoSenha.Text := '';
  conveniadoCredito.Value := 0;
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

//procedure Tfrm_cliente.consultar_dados_otica;
//begin
//  SQL_DADOS_OTICA.Close;
//  SQL_DADOS_OTICA.Params[0].Text := dbedt_codigo.Text;
//  SQL_DADOS_OTICA.Open;
//  //grid_oticaDBBandedTableView1.DataController.Groups.FullExpand;
//end;

procedure Tfrm_cliente.conveniadoConsultaKeyUp(Sender: TObject; var Key: Word; Shift: TShiftState);
begin
  reloadConveniados;
end;

procedure Tfrm_cliente.conveniadoCreditoEnter(Sender: TObject);
begin
  conveniadoCredito.selectall;
end;

procedure Tfrm_cliente.change(Sender: TObject);
begin
  reloadConveniados;
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

procedure Tfrm_cliente.convenioFimPropertiesEditValueChanged(Sender: TObject);
begin
  convenioFim.ValidateEdit(false);
  conveniadoQryPeriodoFim.date := convenioFim.date;
end;

procedure Tfrm_cliente.convenioInicioPropertiesEditValueChanged(Sender: TObject);
begin
  convenioInicio.ValidateEdit(false);
  conveniadoQryPeriodoInicio.date := convenioInicio.date;
end;

procedure Tfrm_cliente.btnMunicipE2Click(Sender: TObject);
begin
  Frm_Municipio := TFrm_Municipio.Create(Application);
  Frm_Municipio.InformarDadosMunicipio(DBEdit85, DBEdit91, DBEdit93, DBEdit90, DBEdit92);
  Frm_Municipio.ShowModal;
  Frm_Municipio.Free;
  DBEdit84.SetFocus;
end;

procedure Tfrm_cliente.btnMunicipE3Click(Sender: TObject);
begin
  Frm_Municipio := TFrm_Municipio.Create(Application);
  Frm_Municipio.InformarDadosMunicipio(DBEdit95, DBEdit101, DBEdit105, DBEdit102, DBEdit103);
  Frm_Municipio.ShowModal;
  Frm_Municipio.Free;
  DBEdit96.SetFocus;
end;

procedure Tfrm_cliente.btnRenovarConveniadosClick(Sender: TObject);
var
  conveniado: TClienteConveniado;
begin
  if tdialogs.wnConfirmacao('Conveniados', 'Deseja renover o período para todos os conveniados cadastrados ?') then
  begin
    for conveniado in TClienteConveniado.find(['cliente_id'], [strtoInt(dbedt_codigo.Text)]) do
    begin
      conveniado.PERIODO_INICIO := convenioInicio.date;
      conveniado.PERIODO_FIM := convenioFim.date;
      conveniado.save;
      conveniadoQryPeriodoInicio.date := convenioInicio.date;
      conveniadoQryPeriodoFim.date := convenioFim.date;
    end;
    tdialogs.wnInfo('Conveniado', 'Crédito dos conveniados foi renovado com sucesso!');
  end;
  reloadConveniados;
end;

procedure Tfrm_cliente.btnMunicipE1Click(Sender: TObject);
begin
  Frm_Municipio := TFrm_Municipio.Create(nil);
  Frm_Municipio.InformarDadosMunicipio(DBEdit81, DBEdit80, DBEdit82, DBEdit83, DBEdit104);
  Frm_Municipio.ShowModal;
  Frm_Municipio.Free;

end;

//procedure Tfrm_cliente.Alterar1Click(Sender: TObject);
//begin
//  if (grid_otica.IsFocused) and (SQL_DADOS_OTICA.RecordCount <> 0) then
//    preencher_campos_otica;
//end;

procedure Tfrm_cliente.alterar_cli(BooFocus: Boolean = true);
begin
  if dbedt_codigo.Text = '' then
  begin
    Application.MessageBox('Nenhum cliente foi selecionado.', 'Alterar', MB_ICONWARNING + MB_OK);
  end
  else
  begin
    BtnIncluir.Visible := false;
    btn_confirmar.Enabled := true;
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
      BtnConsultarCnpj.Visible := true;
      btnSintegra.Visible := true;
    end;
    DS_Cliente.Edit;
    AlterarEnabled([GroupBox12, grp1, GroupBox1, GroupBox4, GroupBox3, TabSheet7, TabSheet8, TabSheet9, btnMunicipE1, btnMunicipE2,
      btnMunicipE3, btn_cad, btn_cep_1, btn_cep_2, btn_cep_3], true);
    IniciarCadastro([BtnIncluir, BtnCancelar, BtnAlterar], true);
  end
end;

procedure Tfrm_cliente.ARMACAO_GRAUKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
begin
  if Key in [VK_TAB, VK_RETURN] then
    LENTE_SOLAR.SetFocus;
end;

procedure Tfrm_cliente.ARMACAO_SOLARKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
begin
  if Key in [VK_TAB, VK_RETURN] then
    btn_cad.Click;
end;

procedure Tfrm_cliente.atualizar_dados_otica;
var
  STR_UPDATE: string;
begin
  STR_UPDATE := 'UPDATE CLIENTE_DADOS_OTICA SET ';
  STR_UPDATE := STR_UPDATE + 'L_OD_ESFERA="' + L_OD_ES.Text + '",';
  STR_UPDATE := STR_UPDATE + 'L_OD_CILINDRO="' + L_OD_C.Text + '",';
  STR_UPDATE := STR_UPDATE + 'L_OD_EIXO="' + L_OD_EX.Text + '",';
  STR_UPDATE := STR_UPDATE + 'L_OD_DISTANCIA_PUPILAR="' + L_OD_DP.Text + '",';
  STR_UPDATE := STR_UPDATE + 'L_OE_ESFERA="' + L_OE_ES.Text + '",';
  STR_UPDATE := STR_UPDATE + 'L_OE_CILINDRO="' + L_OE_C.Text + '",';
  STR_UPDATE := STR_UPDATE + 'L_OE_EIXO="' + L_OE_EX.Text + '",';
  STR_UPDATE := STR_UPDATE + 'L_OE_DISTANCIA_PUPILAR="' + L_OE_DP.Text + '",';
  STR_UPDATE := STR_UPDATE + 'P_OD_ESFERA="' + P_OD_ES.Text + '",';
  STR_UPDATE := STR_UPDATE + 'P_OD_CILINDRO="' + P_OD_C.Text + '",';
  STR_UPDATE := STR_UPDATE + 'P_OD_EIXO="' + P_OD_EX.Text + '",';
  STR_UPDATE := STR_UPDATE + 'P_OD_DISTANCIA_PUPILAR="' + P_OD_DP.Text + '",';
  STR_UPDATE := STR_UPDATE + 'P_OE_ESFERA="' + P_OE_ES.Text + '",';
  STR_UPDATE := STR_UPDATE + 'P_OE_CILINDRO="' + P_OE_C.Text + '",';
  STR_UPDATE := STR_UPDATE + 'P_OE_EIXO="' + P_OE_EX.Text + '",';
  STR_UPDATE := STR_UPDATE + 'P_OE_DISTANCIA_PUPILAR="' + P_OE_DP.Text + '",';
  STR_UPDATE := STR_UPDATE + 'ADICAO="' + ADICAO.Text + '",';
  STR_UPDATE := STR_UPDATE + 'LENTE_GRAU="' + LENTE_GRAU.Text + '",';
  STR_UPDATE := STR_UPDATE + 'ARMACAO_GRAU="' + ARMACAO_GRAU.Text + '",';
  STR_UPDATE := STR_UPDATE + 'LENTE_SOLAR="' + LENTE_SOLAR.Text + '",';
  STR_UPDATE := STR_UPDATE + 'ARMACAO_SOLAR="' + ARMACAO_SOLAR.Text + '" WHERE CODIGO="' + SQL_DADOS_OTICACODIGO.Text + '"';
  execquery(STR_UPDATE);
  SQL_DADOS_OTICA.Refresh;
  LimparCampos([TEdit(L_OD_ES), TEdit(L_OD_C), TEdit(L_OD_EX), TEdit(L_OD_DP), TEdit(L_OE_ES), TEdit(L_OE_C), TEdit(L_OE_EX),
    TEdit(L_OE_DP), TEdit(ADICAO), TEdit(P_OD_ES), TEdit(P_OD_C), TEdit(P_OD_EX), TEdit(P_OD_DP), TEdit(P_OE_ES), TEdit(P_OE_C),
    TEdit(P_OE_EX), TEdit(P_OE_DP), TEdit(LENTE_GRAU), TEdit(ARMACAO_GRAU), TEdit(LENTE_SOLAR), TEdit(ARMACAO_SOLAR)]);
  dados_otica_sts := csCreate;
  grid_oticaDBBandedTableView1.DataController.Groups.FullExpand;
end;

procedure Tfrm_cliente.bnt_rotaClick(Sender: TObject);
begin
  FRM_cad_rota := TFRM_cad_rota.CREATE(Application);
  FRM_cad_rota.ShowModal;
  DBEdit3.Text := FRM_cad_rota.SQL_LISTADESCRICAO.value;
end;

procedure Tfrm_cliente.BtnAlterarClick(Sender: TObject);
begin
  alterar_cli;
  updateAction := true;
end;

procedure Tfrm_cliente.BtnCancelarClick(Sender: TObject);
var
  I: Integer;
begin
  for I in conveniadosNullId do
    TClienteConveniado.Create(I).delete();

  clearConveniado;

  conveniadosNullId := nil;
  SQL_Cliente.Cancel;
  SQL_Cliente.Close;
  IniciarCadastro([BtnIncluir, BtnCancelar, BtnAlterar], false);
  btn_cad.Enabled := false;
  CarregarUltimoCadastro;
  PadronizarLayout;
  updateAction := false;
  clienteConveniado := nil;
  convenioInicio.Brush.Color := clWhite;
  convenioFim.Brush.Color := clWhite;
end;

procedure Tfrm_cliente.BtnExcluirClick(Sender: TObject);
begin
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
  BtnConsultarCnpj.Visible := false;
  btnSintegra.Visible := false;
  gpJuridica.Visible := false;
  gpFisica.Visible := true;
  chk_rural.Enabled := true;
  if gpFisica.Enabled = true then
    dbedtNome.SetFocus;
  Tipo_Empresa := 'FISICA';
end;

procedure Tfrm_cliente.BtnJuridicaClick(Sender: TObject);
begin
  BtnConsultarCnpj.Visible := true;
  chk_rural.Enabled := false;
  gpFisica.Visible := false;
  gpJuridica.Visible := true;
  btnSintegra.Visible := true;
  if gpJuridica.Enabled = true then
    dbedt_razaosocial.SetFocus;
  Tipo_Empresa := 'JURIDICA';
end;

procedure Tfrm_cliente.GridClientesDblClick(Sender: TObject);
begin
  u_funcoes.ConsultarCadastros(SQL_Cliente, quotedstr(inttostr(SQL_C_Clientescodigo.Value) + '%'), 'CLIENTE', 'CODIGO', 'pcodigo', '', '',
    '', 0, 0);
  tab_cadastrar.Show;
  CarregarDadosInternos;
end;

procedure Tfrm_cliente.grid_oticaDBBandedTableView1CellDblClick(Sender: TcxCustomGridTableView; ACellViewInfo: TcxGridTableDataCellViewInfo;
  AButton: TMouseButton; AShift: TShiftState; var AHandled: Boolean);
begin
  preencher_campos_otica;
end;

procedure Tfrm_cliente.grid_oticaDBBandedTableView1CustomDrawCell(Sender: TcxCustomGridTableView; ACanvas: TcxCanvas;
  AViewInfo: TcxGridTableDataCellViewInfo; var ADone: Boolean);
begin
  GridZebrado(ACanvas, AViewInfo);
end;

procedure Tfrm_cliente.HistricodeVendas1Click(Sender: TObject);
begin
  if not tfunctions.CheckOpen(frm_historico_conveniado) then
  begin
    frm_historico_conveniado := TFrm_historico_conveniado.Create(clid.EditValue);
    frm_historico_conveniado.ShowModal;
  end;
end;

procedure Tfrm_cliente.LENTE_GRAUKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
begin
  if Key in [VK_TAB, VK_RETURN] then
    ARMACAO_GRAU.SetFocus;
end;

procedure Tfrm_cliente.LENTE_SOLARKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
begin
  if Key in [VK_TAB, VK_RETURN] then
    ARMACAO_SOLAR.SetFocus;
end;

procedure Tfrm_cliente.ADICAOKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
begin
  if Key in [VK_TAB, VK_RETURN] then
    LENTE_GRAU.SetFocus;
end;

procedure Tfrm_cliente.L_OD_CKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
begin
  if Key in [VK_TAB, VK_RETURN] then
    L_OD_EX.SetFocus;
end;

procedure Tfrm_cliente.L_OD_CKeyPress(Sender: TObject; var Key: Char);
begin
  inherited;
  if Key in [Char(45), Char(43)] then
  begin
    if FindCharInStr(L_OD_C.Text, Char(45)) <> 0 then
      Key := #0;
    if FindCharInStr(L_OD_C.Text, Char(43)) <> 0 then
      Key := #0;
  end;
  Key := apenasnumeros(Key, [Char(45), Char(43)]);
end;

procedure Tfrm_cliente.L_OD_DPKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
begin
  if Key in [VK_TAB, VK_RETURN] then
    L_OE_ES.SetFocus;
end;

procedure Tfrm_cliente.L_OD_DPKeyPress(Sender: TObject; var Key: Char);
begin
  inherited;
  if Key in [Char(45), Char(43)] then
  begin
    if FindCharInStr(L_OD_DP.Text, Char(45)) <> 0 then
      Key := #0;
    if FindCharInStr(L_OD_DP.Text, Char(43)) <> 0 then
      Key := #0;
  end;
  Key := apenasnumeros(Key, [Char(45), Char(43)]);
end;

procedure Tfrm_cliente.L_OD_ESKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
begin
  if Key in [VK_TAB, VK_RETURN] then
    L_OD_C.SetFocus;
end;

procedure Tfrm_cliente.L_OD_ESKeyPress(Sender: TObject; var Key: Char);
begin
  inherited;
  if Key in [Char(45), Char(43)] then
  begin
    if FindCharInStr(L_OD_ES.Text, Char(45)) <> 0 then
      Key := #0;
    if FindCharInStr(L_OD_ES.Text, Char(43)) <> 0 then
      Key := #0;
  end;
  Key := apenasnumeros(Key, [Char(45), Char(43)]);
end;

procedure Tfrm_cliente.L_OD_EXKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
begin
  if Key in [VK_TAB, VK_RETURN] then
    L_OD_DP.SetFocus;
end;

procedure Tfrm_cliente.L_OD_EXKeyPress(Sender: TObject; var Key: Char);
begin
  inherited;
  if Key in [Char(45), Char(43)] then
  begin
    if FindCharInStr(L_OD_EX.Text, Char(45)) <> 0 then
      Key := #0;
    if FindCharInStr(L_OD_EX.Text, Char(43)) <> 0 then
      Key := #0;
  end;
  Key := apenasnumeros(Key, [Char(45), Char(43)]);
end;

procedure Tfrm_cliente.L_OE_ADKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
begin
  if Key in [VK_TAB, VK_RETURN] then
    P_OD_ES.SetFocus;
end;

procedure Tfrm_cliente.L_OE_CKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
begin
  if Key in [VK_TAB, VK_RETURN] then
    L_OE_EX.SetFocus;
end;

procedure Tfrm_cliente.L_OE_CKeyPress(Sender: TObject; var Key: Char);
begin
  inherited;
  if Key in [Char(45), Char(43)] then
  begin
    if FindCharInStr(L_OE_C.Text, Char(45)) <> 0 then
      Key := #0;
    if FindCharInStr(L_OE_C.Text, Char(43)) <> 0 then
      Key := #0;
  end;
  Key := apenasnumeros(Key, [Char(45), Char(43)]);
end;

procedure Tfrm_cliente.L_OE_DPKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
begin
  if Key in [VK_TAB, VK_RETURN] then
    P_OD_ES.SetFocus;
end;

procedure Tfrm_cliente.L_OE_DPKeyPress(Sender: TObject; var Key: Char);
begin
  inherited;
  if Key in [Char(45), Char(43)] then
  begin
    if FindCharInStr(L_OE_DP.Text, Char(45)) <> 0 then
      Key := #0;
    if FindCharInStr(L_OE_DP.Text, Char(43)) <> 0 then
      Key := #0;
  end;
  Key := apenasnumeros(Key, [Char(45), Char(43)]);
end;

procedure Tfrm_cliente.L_OE_ESKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
begin
  if Key in [VK_TAB, VK_RETURN] then
    L_OE_C.SetFocus;
end;

procedure Tfrm_cliente.L_OE_ESKeyPress(Sender: TObject; var Key: Char);
begin
  inherited;
  if Key in [Char(45), Char(43)] then
  begin
    if FindCharInStr(L_OE_ES.Text, Char(45)) <> 0 then
      Key := #0;
    if FindCharInStr(L_OE_ES.Text, Char(43)) <> 0 then
      Key := #0;
  end;
  Key := apenasnumeros(Key, [Char(45), Char(43)]);
end;

procedure Tfrm_cliente.L_OE_EXKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
begin
  if Key in [VK_TAB, VK_RETURN] then
    L_OE_DP.SetFocus;
end;

procedure Tfrm_cliente.L_OE_EXKeyPress(Sender: TObject; var Key: Char);
begin
  inherited;
  if Key in [Char(45), Char(43)] then
  begin
    if FindCharInStr(L_OE_EX.Text, Char(45)) <> 0 then
      Key := #0;
    if FindCharInStr(L_OE_EX.Text, Char(43)) <> 0 then
      Key := #0;
  end;
  Key := apenasnumeros(Key, [Char(45), Char(43)]);
end;

procedure Tfrm_cliente.MaskEdit1Enter(Sender: TObject);
begin
  MaskEdit1.EditMask := '';
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
        wnAlerta('Cadastro Cliente', sLineBreak + sLineBreak + 'CPF ' + resultado + ' já está cadastrado no Cliente: ' + sLineBreak + 'C骴: '
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
    cxDBTextEdit32.SetFocus;
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
  BtnConsultarCnpj.Visible := false;
  btn_confirmar.Enabled := false;
  BtnFisica.Enabled := false;
  BtnJuridica.Enabled := false;
  chk_rural.Enabled := false;
  chk_rural.Checked := false;
  btnSintegra.Visible := false;
  edt_data.Clear;
  DBEdit73.Clear;
  CarregarDadosInternos;
end;

procedure Tfrm_cliente.preencher_campos_otica;
var
  qry: TFDQuery;
begin
  btn_cad.Enabled := true;
  if BtnAlterar.Enabled then
  begin
    cad_block := true;
    alterar_cli(false);
  end;
  qry := simplequery('SELECT *  FROM CLIENTE_DADOS_OTICA WHERE CODIGO="' + SQL_DADOS_OTICACODIGO.Text + '"');
  if qry <> NIL then
  begin
    L_OD_ES.Text := qry.fieldbyname('L_OD_ESFERA').Text;
    L_OD_C.Text := qry.fieldbyname('L_OD_CILINDRO').Text;
    L_OD_EX.Text := qry.fieldbyname('L_OD_EIXO').Text;
    L_OD_DP.Text := qry.fieldbyname('L_OD_DISTANCIA_PUPILAR').Text;

    L_OE_ES.Text := qry.fieldbyname('L_OE_ESFERA').Text;
    L_OE_C.Text := qry.fieldbyname('L_OE_CILINDRO').Text;
    L_OE_EX.Text := qry.fieldbyname('L_OE_EIXO').Text;
    L_OE_DP.Text := qry.fieldbyname('L_OE_DISTANCIA_PUPILAR').Text;

    P_OD_ES.Text := qry.fieldbyname('P_OD_ESFERA').Text;
    P_OD_C.Text := qry.fieldbyname('P_OD_CILINDRO').Text;
    P_OD_EX.Text := qry.fieldbyname('P_OD_EIXO').Text;
    P_OD_DP.Text := qry.fieldbyname('P_OD_DISTANCIA_PUPILAR').Text;

    P_OE_ES.Text := qry.fieldbyname('P_OE_ESFERA').Text;
    P_OE_C.Text := qry.fieldbyname('P_OE_CILINDRO').Text;
    P_OE_EX.Text := qry.fieldbyname('P_OE_EIXO').Text;
    P_OE_DP.Text := qry.fieldbyname('P_OE_DISTANCIA_PUPILAR').Text;

    ADICAO.Text := qry.fieldbyname('ADICAO').Text;
    LENTE_GRAU.Text := qry.fieldbyname('LENTE_GRAU').Text;
    ARMACAO_GRAU.Text := qry.fieldbyname('ARMACAO_GRAU').Text;
    LENTE_SOLAR.Text := qry.fieldbyname('LENTE_SOLAR').Text;
    ARMACAO_SOLAR.Text := qry.fieldbyname('ARMACAO_SOLAR').Text;
    dados_otica_sts := csUpdate;
  end;
end;

procedure Tfrm_cliente.P_OD_ADKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
begin
  if Key in [VK_TAB, VK_RETURN] then
    P_OE_ES.SetFocus;
end;

procedure Tfrm_cliente.P_OD_CKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
begin
  if Key in [VK_TAB, VK_RETURN] then
    P_OD_EX.SetFocus;
end;

procedure Tfrm_cliente.P_OD_CKeyPress(Sender: TObject; var Key: Char);
begin
  inherited;
  if Key in [Char(45), Char(43)] then
  begin
    if FindCharInStr(P_OD_C.Text, Char(45)) <> 0 then
      Key := #0;
    if FindCharInStr(P_OD_C.Text, Char(43)) <> 0 then
      Key := #0;
  end;
  Key := apenasnumeros(Key, [Char(45), Char(43)]);
end;

procedure Tfrm_cliente.P_OD_DPKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
begin
  if Key in [VK_TAB, VK_RETURN] then
    P_OE_ES.SetFocus;
end;

procedure Tfrm_cliente.P_OD_DPKeyPress(Sender: TObject; var Key: Char);
begin
  inherited;
  if Key in [Char(45), Char(43)] then
  begin
    if FindCharInStr(P_OD_DP.Text, Char(45)) <> 0 then
      Key := #0;
    if FindCharInStr(P_OD_DP.Text, Char(43)) <> 0 then
      Key := #0;
  end;
  Key := apenasnumeros(Key, [Char(45), Char(43)]);
end;

procedure Tfrm_cliente.P_OD_ESKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
begin
  if Key in [VK_TAB, VK_RETURN] then
    P_OD_C.SetFocus;
end;

procedure Tfrm_cliente.P_OD_ESKeyPress(Sender: TObject; var Key: Char);
begin
  inherited;
  if Key in [Char(45), Char(43)] then
  begin
    if FindCharInStr(P_OD_ES.Text, Char(45)) <> 0 then
      Key := #0;
    if FindCharInStr(P_OD_ES.Text, Char(43)) <> 0 then
      Key := #0;
  end;
  Key := apenasnumeros(Key, [Char(45), Char(43)]);
end;

procedure Tfrm_cliente.P_OD_EXKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
begin
  if Key in [VK_TAB, VK_RETURN] then
    P_OD_DP.SetFocus;
end;

procedure Tfrm_cliente.P_OD_EXKeyPress(Sender: TObject; var Key: Char);
begin
  inherited;
  if Key in [Char(45), Char(43)] then
  begin
    if FindCharInStr(P_OD_EX.Text, Char(45)) <> 0 then
      Key := #0;
    if FindCharInStr(P_OD_EX.Text, Char(43)) <> 0 then
      Key := #0;
  end;
  Key := apenasnumeros(Key, [Char(45), Char(43)]);
end;

procedure Tfrm_cliente.P_OE_ADKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
begin
  if Key in [VK_TAB, VK_RETURN] then
    LENTE_GRAU.SetFocus;
end;

procedure Tfrm_cliente.P_OE_CKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
begin
  if Key in [VK_TAB, VK_RETURN] then
    P_OE_EX.SetFocus;
end;

procedure Tfrm_cliente.P_OE_CKeyPress(Sender: TObject; var Key: Char);
begin
  inherited;
  if Key in [Char(45), Char(43)] then
  begin
    if FindCharInStr(P_OE_C.Text, Char(45)) <> 0 then
      Key := #0;
    if FindCharInStr(P_OE_C.Text, Char(43)) <> 0 then
      Key := #0;
  end;
  Key := apenasnumeros(Key, [Char(45), Char(43)]);
end;

procedure Tfrm_cliente.P_OE_DPKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
begin
  if Key in [VK_TAB, VK_RETURN] then
    ADICAO.SetFocus;
end;

procedure Tfrm_cliente.P_OE_DPKeyPress(Sender: TObject; var Key: Char);
begin
  inherited;
  if Key in [Char(45), Char(43)] then
  begin
    if FindCharInStr(P_OE_DP.Text, Char(45)) <> 0 then
      Key := #0;
    if FindCharInStr(P_OE_DP.Text, Char(43)) <> 0 then
      Key := #0;
  end;
  Key := apenasnumeros(Key, [Char(45), Char(43)]);
end;

procedure Tfrm_cliente.P_OE_ESKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
begin
  if Key in [VK_TAB, VK_RETURN] then
    P_OE_C.SetFocus;
end;

procedure Tfrm_cliente.P_OE_ESKeyPress(Sender: TObject; var Key: Char);
begin
  inherited;
  if Key in [Char(45), Char(43)] then
  begin
    if FindCharInStr(P_OE_ES.Text, Char(45)) <> 0 then
      Key := #0;
    if FindCharInStr(P_OE_ES.Text, Char(43)) <> 0 then
      Key := #0;
  end;
  Key := apenasnumeros(Key, [Char(45), Char(43)]);
end;

procedure Tfrm_cliente.P_OE_EXKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
begin
  if Key in [VK_TAB, VK_RETURN] then
    P_OE_DP.SetFocus;
end;

procedure Tfrm_cliente.P_OE_EXKeyPress(Sender: TObject; var Key: Char);
begin
  inherited;
  if Key in [Char(45), Char(43)] then
  begin
    if FindCharInStr(P_OE_EX.Text, Char(45)) <> 0 then
      Key := #0;
    if FindCharInStr(P_OE_EX.Text, Char(43)) <> 0 then
      Key := #0;
  end;
  Key := apenasnumeros(Key, [Char(45), Char(43)]);
end;

procedure Tfrm_cliente.reloadConveniados;
const
  _base_select =
    ' select cc.id, concat(DATE_FORMAT(cc.periodo_inicio,"%d/%m")," - ",DATE_FORMAT(cc.periodo_fim,"%d/%m")) as periodo, cc.nome, cc.matricula, cc.cpf, cc.credito, cc.status from cliente_conveniado cc';
var
  _value, _field, _date, _s2, _select: string;
begin

  if not ansimatchstr(dbedt_codigo.Text, ['', '0']) then
  begin

    conveniadoQryPeriodoInicio.ValidateEdit(false);
    conveniadoQryPeriodoFim.ValidateEdit(false);

    cbFiltro.ValidateEdit(false);

    if conveniadoConsulta.Text <> '' then
    begin

      _value := tdb.removeSqlInjection(conveniadoConsulta.Text);
      {
        Nome
        CPF
        Matrícula
        Crédito
      }
      _field := tfunctions.getIndex(conveniadoFiltro.SelectedItem, ['cc.nome LIKE "%' + _value + '%"', 'cc.cpf LIKE "' + _value + '%"',
        'cc.matricula LIKE "' + _value + '%"', 'cc.credito LIKE "' + _value + '%"']);

    end;

    _date := ' (cc.periodo_inicio >= "' + formatdatetime('yyyy-mm-dd', conveniadoQryPeriodoInicio.date) + '" ';
    _date := _date + ' and cc.periodo_fim <= "' + formatdatetime('yyyy-mm-dd', conveniadoQryPeriodoFim.date) + '") ';

    if conveniadosNullId <> nil then
      _s2 := ' union all ' + _base_select + ' where cc.id in (' + tfunctions.arrToStr(conveniadosNullId) + ') ';

    if _field = '' then
      _select := _base_select + ' where cc.cliente_id = ? and ' + _date + _s2
    else
      _select := _base_select + ' where cc.cliente_id = ? and ' + _field + ' and ' + _date + _s2;

    with sql_conveniados do
    begin
      Active := false;
      Close;
      sql.Clear;
      Open(_select, [strtoInt(dbedt_codigo.Text)]);
      Active := true;
    end;

    sql_conveniados.Fetchall;
    lblQTDEConveniados.Caption := inttostr(sql_conveniados.RecordCount);

    btnRenovarConveniados.Enabled := TClienteConveniado.hasAny(['cliente_id'], [strtoInt(dbedt_codigo.Text)]);

  end
  else
    lblQTDEConveniados.Caption := '0';
end;

procedure Tfrm_cliente.salvar_dados_otica;
var
  str_insert: string;
begin
  str_insert := 'INSERT INTO CLIENTE_DADOS_OTICA(CODIGO_CLIENTE,';
  str_insert := str_insert +
    'L_OD_ESFERA, L_OD_CILINDRO, L_OD_EIXO, L_OD_DISTANCIA_PUPILAR, L_OE_ESFERA, L_OE_CILINDRO, L_OE_EIXO, L_OE_DISTANCIA_PUPILAR,';
  str_insert := str_insert +
    'P_OD_ESFERA, P_OD_CILINDRO, P_OD_EIXO, P_OD_DISTANCIA_PUPILAR, P_OE_ESFERA, P_OE_CILINDRO, P_OE_EIXO, P_OE_DISTANCIA_PUPILAR,';
  str_insert := str_insert + 'ADICAO, LENTE_GRAU, ARMACAO_GRAU, LENTE_SOLAR, ARMACAO_SOLAR) VALUES(';
  str_insert := str_insert + quotedstr(dbedt_codigo.Text) + ',';
  str_insert := str_insert + quotedstr(L_OD_ES.Text) + ',';
  str_insert := str_insert + quotedstr(L_OD_C.Text) + ',';
  str_insert := str_insert + quotedstr(L_OD_EX.Text) + ',';
  str_insert := str_insert + quotedstr(L_OD_DP.Text) + ',';

  str_insert := str_insert + quotedstr(L_OE_ES.Text) + ',';
  str_insert := str_insert + quotedstr(L_OE_C.Text) + ',';
  str_insert := str_insert + quotedstr(L_OE_EX.Text) + ',';
  str_insert := str_insert + quotedstr(L_OE_DP.Text) + ',';

  str_insert := str_insert + quotedstr(P_OD_ES.Text) + ',';
  str_insert := str_insert + quotedstr(P_OD_C.Text) + ',';
  str_insert := str_insert + quotedstr(P_OD_EX.Text) + ',';
  str_insert := str_insert + quotedstr(P_OD_DP.Text) + ',';

  str_insert := str_insert + quotedstr(P_OE_ES.Text) + ',';
  str_insert := str_insert + quotedstr(P_OE_C.Text) + ',';
  str_insert := str_insert + quotedstr(P_OE_EX.Text) + ',';
  str_insert := str_insert + quotedstr(P_OE_DP.Text) + ',';

  str_insert := str_insert + quotedstr(ADICAO.Text) + ',';
  str_insert := str_insert + quotedstr(LENTE_GRAU.Text) + ',';
  str_insert := str_insert + quotedstr(ARMACAO_GRAU.Text) + ',';
  str_insert := str_insert + quotedstr(LENTE_SOLAR.Text) + ',';
  str_insert := str_insert + quotedstr(ARMACAO_SOLAR.Text) + ')';
  execquery(str_insert);
  SQL_DADOS_OTICA.Refresh;
  LimparCampos([TEdit(L_OD_ES), TEdit(L_OD_C), TEdit(L_OD_EX), TEdit(L_OD_DP), TEdit(L_OE_ES), TEdit(L_OE_C), TEdit(L_OE_EX),
    TEdit(L_OE_DP), TEdit(P_OD_ES), TEdit(P_OD_C), TEdit(P_OD_EX), TEdit(P_OD_DP), TEdit(ADICAO), TEdit(P_OE_ES), TEdit(P_OE_C),
    TEdit(P_OE_EX), TEdit(P_OE_DP), TEdit(LENTE_GRAU), TEdit(ARMACAO_GRAU), TEdit(LENTE_SOLAR), TEdit(ARMACAO_SOLAR)]);
  grid_oticaDBBandedTableView1.DataController.Groups.FullExpand;
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
    BtnConsultarCnpj.Visible := false;
    btnSintegra.Visible := false;
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
    BtnConsultarCnpj.Visible := true;
    btnSintegra.Visible := true;
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
    BtnConsultarCnpj.Visible := false;
    btnSintegra.Visible := false;
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
    chk_ativo_cadastro.Checked := true;
  end
  else if SQL_ClienteSTATUS_CADASTRAL.Value = 'INATIVO' then
  begin
    chk_ativo_cadastro.Checked := false;
  end;
  if SQL_ClienteCONSUMIDOR_TIPO.Value = 'PRODUTOR RURAL' then
  begin
    edt_ie.Visible := true;
    lblRG.Caption := 'IE:';
    chk_rural.Enabled := true;
    chk_rural.Checked := true;
  end;

  if not tchecks.dateIsNull(SQL_Clienteconvenio_inicio.Value) then
    convenioInicio.date := SQL_Clienteconvenio_inicio.Value
  else
    convenioInicio.Clear;

  if not tchecks.dateIsNull(SQL_Clienteconvenio_fim.Value) then
    convenioFim.date := SQL_Clienteconvenio_fim.Value
  else
    convenioFim.Clear;
end;

procedure Tfrm_cliente.CarregarDadosInternos;
begin
  CarregarDados;
  AlterarEnabled([GroupBox12, grp1, GroupBox1, GroupBox4, gpFisica, gpJuridica, GroupBox3, TabSheet7, TabSheet8, TabSheet9, btnMunicipE1,
    btnMunicipE2, btnMunicipE3, btn_cad, btn_zona, bnt_rota, btn_endereco, btn_cep_1, btn_cep_2, btn_cep_3], false);
  CamposObrigatorios_CorPadrao([dbedtNome, dbedtRG, DBEdit76, DBEdit75, DBEdit79, DBEdit81, DBEdit78, dbedt_razaosocial, dbedt_fantasia,
    dbedtINSCRICAO_ESTADUAL], [], []);
  MaskEdit1.Color := clWhite;
  medt1.Color := clWhite;
  IniciarCadastro([BtnIncluir, BtnCancelar, BtnAlterar], false);
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
  end;
  CarregarDados;
end;

procedure Tfrm_cliente.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  Action := cafree;
  self := nil;
end;

procedure Tfrm_cliente.FormCreate(Sender: TObject);
begin
  TabSheet7.Show;
  dados_otica_sts := csCreate;
  tb_otica.Enabled := (simplequery('SELECT DADOS_OTICA_CLIENTE FROM PARAMETROS_SISTEMA').Fields[0].AsString = m_true);
end;

procedure Tfrm_cliente.FormKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
begin
  u_funcoes.TeclasAtalho(Key, [VK_F1, VK_F2, VK_F3, VK_F4, VK_F6], [BtnIncluir, BtnGravar, BtnCancelar, BtnAlterar, BtnConsultarCnpj]);
end;

procedure Tfrm_cliente.FormShow(Sender: TObject);
begin
// dbcbbSITUACAO_FINANCEIRA.ItemIndex := 0;
  DBComboBox3.ItemIndex := 0;

  conveniadoQryPeriodoInicio.date := TEnv.date.FirstDayOfYear;
  conveniadoQryPeriodoFim.date := TEnv.date.LastDayOfYear;

  conveniadosNullId := nil;
  reloadConveniados;
  CarregarUltimoCadastro;
  PadronizarLayout;
  tab_consulta.Show;
  updateAction := false;
end;

procedure Tfrm_cliente.gdConveniadosTbVwCellDblClick(Sender: TcxCustomGridTableView; ACellViewInfo: TcxGridTableDataCellViewInfo;
  AButton: TMouseButton; AShift: TShiftState; var AHandled: Boolean);
begin
  editConveniado;
end;

procedure Tfrm_cliente.gdConveniadosTbVwCustomDrawCell(Sender: TcxCustomGridTableView; ACanvas: TcxCanvas;
  AViewInfo: TcxGridTableDataCellViewInfo; var ADone: Boolean);
begin
  ACanvas.font.Color := tfunctions.IfThen(gdConveniadosTbVw.ViewData.Records[AViewInfo.GridRecord.Index].Values[clStatus.Index],
    clWebDarkgreen, clWebCrimson);
  tfunctions.StripedGrid(ACanvas, AViewInfo);
end;

procedure Tfrm_cliente.btnSintegraClick(Sender: TObject);
begin
  ShellExecute(GetDesktopWindow, 'open', pchar('https://portalcontribuinte.sefin.ro.gov.br/Publico/parametropublica.jsp'), nil, nil,
    sw_ShowNormal);
end;

procedure Tfrm_cliente.btn_cadClick(Sender: TObject);
begin
  if dbedt_codigo.Text <> emptystr then
  begin
    if dados_otica_sts = csCreate then
      salvar_dados_otica;
    if dados_otica_sts = csUpdate then
      atualizar_dados_otica;
    if cad_block then
      BtnGravar.Click;
  end
  else
    wnAlerta('Dados ótica', sLineBreak + sLineBreak + 'Nenhum cliente selecionado!');
end;

procedure Tfrm_cliente.btn_cep_1Click(Sender: TObject);
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

procedure Tfrm_cliente.btn_cep_2Click(Sender: TObject);
var
  UF, RUA, BAIRRO, CIDADE: STRING;
  qry: TFDQuery;
begin
  if RemoverEspacoEmBranco(removercaracteresespeciais(DBEdit84.Text)) <> emptystr then
  begin
    ConsultarCep(RemoverEspacoEmBranco(removercaracteresespeciais(DBEdit84.Text)), UF, CIDADE, RUA, BAIRRO);
    DBEdit93.Text := UF;
    DBEdit85.Text := CIDADE;
    DBEdit88.Text := RUA;
    DBEdit89.Text := BAIRRO;

    DBEdit93.field.Text := UF;
    DBEdit85.field.Text := CIDADE;
    DBEdit88.field.Text := RUA;
    DBEdit89.field.Text := BAIRRO;

    qry := simplequery('SELECT IBGE, ESTADO FROM ENDERECO_MUNICIPIO WHERE NOME = ?', [CIDADE]);
    if qry <> nil then
    begin
      DBEdit91.Text := qry.fieldbyname('IBGE').AsString;
      DBEdit91.field.Text := qry.fieldbyname('IBGE').AsString;
      DBEdit92.Text := simplequery('SELECT PAIS FROM ENDERECO_ESTADO WHERE IBGE = ?', [qry.fieldbyname('ESTADO').AsString])
        .Fields[0].AsString;
      DBEdit92.field.Text := DBEdit92.Text;
      DBEdit90.Text := simplequery('SELECT NOME FROM ENDERECO_PAIS WHERE CODIGO = ?', [DBEdit92.Text]).Fields[0].AsString;
      DBEdit90.field.Text := DBEdit90.Text;
    end;
  end
  else
    wnAlerta('Consultar CEP', sLineBreak + 'Informe um cep!');
end;

procedure Tfrm_cliente.btn_cep_3Click(Sender: TObject);
var
  UF, RUA, BAIRRO, CIDADE: STRING;
  qry: TFDQuery;
begin
  if RemoverEspacoEmBranco(removercaracteresespeciais(DBEdit96.Text)) <> emptystr then
  begin
    ConsultarCep(RemoverEspacoEmBranco(removercaracteresespeciais(DBEdit96.Text)), UF, CIDADE, RUA, BAIRRO);
    DBEdit105.Text := UF;
    DBEdit95.Text := CIDADE;
    DBEdit99.Text := RUA;
    DBEdit100.Text := BAIRRO;

    DBEdit105.field.Text := UF;
    DBEdit95.field.Text := CIDADE;
    DBEdit99.field.Text := RUA;
    DBEdit100.field.Text := BAIRRO;
    qry := simplequery('SELECT IBGE, ESTADO FROM ENDERECO_MUNICIPIO WHERE NOME = ?', [CIDADE]);
    if qry <> nil then
    begin
      DBEdit101.Text := qry.fieldbyname('IBGE').AsString;
      DBEdit101.field.Text := qry.fieldbyname('IBGE').AsString;
      DBEdit103.Text := simplequery('SELECT PAIS FROM ENDERECO_ESTADO WHERE IBGE = ?', [qry.fieldbyname('ESTADO').AsString])
        .Fields[0].AsString;
      DBEdit103.field.Text := DBEdit103.Text;
      DBEdit102.Text := simplequery('SELECT NOME FROM ENDERECO_PAIS WHERE CODIGO = ?', [DBEdit103.Text]).Fields[0].AsString;
      DBEdit102.field.Text := DBEdit102.Text;
    end;
  end
  else
    wnAlerta('Consultar CEP', sLineBreak + 'Informe um cep!');

end;

procedure Tfrm_cliente.btn_confirmarClick(Sender: TObject);

begin
  try
    if clienteConveniado = nil then
      clienteConveniado := TClienteConveniado.Create();

    convenioInicio.ValidateEdit(false);
    clienteConveniado.PERIODO_INICIO := convenioInicio.date;

    convenioFim.ValidateEdit(false);
    clienteConveniado.PERIODO_FIM := convenioFim.date;

    clienteConveniado.NOME := conveniadoNome.Text;

    clienteConveniado.CPF := tunformats.CPF(conveniadoCpf.Text);

    clienteConveniado.Matricula := conveniadoMatricula.Text;

    clienteConveniado.CREDITO := conveniadoCredito.Value;

    clienteConveniado.SENHA := conveniadoSenha.Text;

    if updateAction then
      clienteConveniado.CLIENTE := TCliente.Create(strtoInt(dbedt_codigo.Text));

    clienteConveniado.status := true;

    clienteConveniado.save;

    if clienteConveniado.CLIENTE = nil then
    begin
      setlength(conveniadosNullId, length(conveniadosNullId) + 1);
      conveniadosNullId[length(conveniadosNullId) - 1] := clienteConveniado.ID;
    end;

    clienteConveniado := nil;

    clearConveniado;

    reloadConveniados;

  except
    on E: Exception do
      tdialogs.wnAlerta('Conveniado', 'Não foi possível salvar conveniado!' + sLineBreak + E.Message);
  end;
end;

procedure Tfrm_cliente.btn_ramoClick(Sender: TObject);
begin
  FRM_cad_atividade := TFRM_cad_atividade.CREATE(Application);
  FRM_cad_atividade.ShowModal;
  dbedt_atividade.Text := FRM_cad_atividade.SQL_LISTADESCRICAO.value;
 // cxDBTextEdit58.SetFocus;
  end;

procedure Tfrm_cliente.btn_relatorios_cliClick(Sender: TObject);
begin
  frm_rel_clientes := Tfrm_rel_clientes.CREATE(Application);
  frm_rel_clientes.ShowModal;
end;

procedure Tfrm_cliente.btn_zonaClick(Sender: TObject);
begin
  FRM_cad_zona := TFRM_cad_zona.CREATE(Application);
  FRM_cad_zona.ShowModal;
  DBEdit1.Text := FRM_cad_zona.SQL_LISTADESCRICAO.value;
end;

procedure Tfrm_cliente.btn_enderecoClick(Sender: TObject);
begin
  FRM_cad_endereco := TFRM_cad_endereco.CREATE(Application);
  FRM_cad_endereco.ShowModal;
  DBEdit76.Text := FRM_cad_endereco.SQL_LISTADESCRICAO.value;
end;

procedure Tfrm_cliente.cxComboBox1KeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
begin
  if (Key = VK_RETURN) or (Key = VK_TAB) then
    cxDBTextEdit9.SetFocus;
end;

procedure Tfrm_cliente.cxComboBox2KeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
begin
  if (Key = VK_RETURN) or (Key = VK_TAB) then
    cxDBTextEdit7.SetFocus;
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

procedure Tfrm_cliente.tab_consultaShow(Sender: TObject);
begin
  dlConsulta;
end;

procedure Tfrm_cliente.tbCellDblClick(Sender: TcxCustomGridTableView; ACellViewInfo: TcxGridTableDataCellViewInfo; AButton: TMouseButton;
  AShift: TShiftState; var AHandled: Boolean);
begin
  ConsultaParaCadastro;
  reloadConveniados;
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

//procedure Tfrm_cliente.tb_oticaShow(Sender: TObject);
//begin
//  consultar_dados_otica;
//end;

procedure Tfrm_cliente.ZerarConvenio1Click(Sender: TObject);
var
  cc: TClienteConveniado;
begin
  cc := TClienteConveniado.Create(clid.EditValue);
  if tdialogs.wnConfirmacao('Conveniado', format('Deseja bloquear o crédito de R$ %f atribuído para o conveniado %s ?',
    [cc.CREDITO, cc.NOME])) then
  begin
    cc.status := false;
    cc.save;
    tdialogs.wnInfo('Conveniado', 'Conveniado foi bloqueado com sucesso!');
  end;
  reloadConveniados;
end;

procedure Tfrm_cliente.cxDBTextEdit20KeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
begin
  if (Key = VK_RETURN) or (Key = VK_TAB) then
  begin
    DBEdit21.SetFocus;
  end;
end;

procedure Tfrm_cliente.cxDBTextEdit20KeyPress(Sender: TObject; var Key: Char);
begin
  inherited;
  Key := ApenasLetras(Key);
end;

procedure Tfrm_cliente.cxDBTextEdit18KeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
begin
  if (Key = VK_RETURN) or (Key = VK_TAB) then
  begin
    DBEdit20.SetFocus;
  end;
end;

procedure Tfrm_cliente.cxDBTextEdit18KeyPress(Sender: TObject; var Key: Char);
begin
  inherited;
  Key := ApenasLetras(Key);
end;

procedure Tfrm_cliente.cxDBTextEdit24KeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
begin
  if (Key = VK_RETURN) or (Key = VK_TAB) then
  begin
    cxDBTextEdit18.SetFocus;
  end;
end;

procedure Tfrm_cliente.cxDBTextEdit25KeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
begin
  if (Key = VK_RETURN) or (Key = VK_TAB) then
  begin
    dbedtTELEFONE_1.SetFocus;
  end;
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

procedure Tfrm_cliente.cxDBTextEdit40KeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
begin
  cxDBTextEdit20.SetFocus;
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

procedure Tfrm_cliente.dbedt_atividadeKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
begin
  if (Key = VK_RETURN) or (Key = VK_TAB) then
    dbcbbSITUACAO_FINANCEIRA.SetFocus;
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
  AlterarEnabled([gpFisica, gpJuridica, GroupBox12, grp1, GroupBox1, GroupBox4, GroupBox3, TabSheet7, TabSheet8, TabSheet9, btnMunicipE1,
    btnMunicipE2, btnMunicipE3, btn_cad], true);
  IniciarCadastro([BtnIncluir, BtnCancelar, BtnAlterar], true);
  tab_cadastrar.Show;
end;

procedure Tfrm_cliente.Editar1Click(Sender: TObject);
begin
  editConveniado;
  reloadConveniados;
end;

procedure Tfrm_cliente.cxDBTextEdit58KeyPress(Sender: TObject; var Key: Char);
begin
  inherited;
  Key := u_funcoes.apenasnumeros(Key);
end;

procedure Tfrm_cliente.cxDBTextEdit59KeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
begin
  if (Key = VK_RETURN) or (Key = VK_TAB) then
  begin
    dbedtCELULAR_1.SetFocus;
  end;
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

procedure Tfrm_cliente.cxDBTextEdit56KeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
begin
  if (Key = VK_RETURN) or (Key = VK_TAB) then
    dbcbbSITUACAO_FINANCEIRA.SetFocus;
end;

procedure Tfrm_cliente.cxDBTextEdit56KeyPress(Sender: TObject; var Key: Char);
begin
  inherited;
  Key := u_funcoes.apenasnumeros(Key);
end;

procedure Tfrm_cliente.cxDBTextEdit66KeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
begin
  if (Key = VK_RETURN) or (Key = VK_TAB) then
  begin
    DBEdit18.SetFocus;
  end;
end;

procedure Tfrm_cliente.cxDBTextEdit6KeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
begin
  if (Key = VK_RETURN) or (Key = VK_TAB) then
  begin
    cxDBTextEdit7.SetFocus;
  end;
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

procedure Tfrm_cliente.dbcbSexoKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
begin
  if (Key = VK_RETURN) or (Key = VK_TAB) then
  begin
    DBComboBox2.SetFocus;
  end;
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

procedure Tfrm_cliente.DBEdit100KeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
begin
  if (Key = VK_RETURN) or (Key = VK_TAB) then
  begin
    DBEdit97.SetFocus;
  end;
end;

procedure Tfrm_cliente.DBEdit103KeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
begin
  if (Key = VK_RETURN) or (Key = VK_TAB) then
  begin
    DBEdit2.SetFocus;
  end;
end;

procedure Tfrm_cliente.DBEdit104KeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
begin
  if (Key = VK_RETURN) or (Key = VK_TAB) then
  begin
    TabSheet8.SetFocus;
    DBEdit88.SetFocus;
  end;
end;

procedure Tfrm_cliente.DBEdit106KeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
begin
  if (Key = VK_RETURN) or (Key = VK_TAB) then
  begin
    btnMunicipE3.Click;
  end;
end;

procedure Tfrm_cliente.DBEdit106KeyPress(Sender: TObject; var Key: Char);
begin
  inherited;
  Key := u_funcoes.ApenasLetras(Key);
end;

procedure Tfrm_cliente.DBEdit10KeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
begin
  if (Key = VK_RETURN) or (Key = VK_TAB) then
  begin
    DBEdit23.SetFocus;
  end;
end;

procedure Tfrm_cliente.DBEdit10KeyPress(Sender: TObject; var Key: Char);
begin
  inherited;
  Key := u_funcoes.apenasnumeros(Key);
end;

procedure Tfrm_cliente.DBEdit15KeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
begin
  if (Key = VK_RETURN) or (Key = VK_TAB) then
  begin
    DBEdit22.SetFocus;
  end;
end;

procedure Tfrm_cliente.DBEdit15KeyPress(Sender: TObject; var Key: Char);
begin
  inherited;
  Key := u_funcoes.apenasnumeros(Key);
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

procedure Tfrm_cliente.DBEdit20KeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
begin
  if (Key = VK_RETURN) or (Key = VK_TAB) then
  begin
    DBEdit18.SetFocus;
  end;
end;

procedure Tfrm_cliente.DBEdit20KeyPress(Sender: TObject; var Key: Char);
begin
  inherited;
  Key := apenasnumeros(Key);
end;

procedure Tfrm_cliente.DBEdit21KeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
begin

  if (Key = VK_RETURN) or (Key = VK_TAB) then
  begin
    DBEdit19.SetFocus;
  end;
end;

procedure Tfrm_cliente.DBEdit21KeyPress(Sender: TObject; var Key: Char);
begin
  inherited;
  Key := u_funcoes.apenasnumeros(Key);
end;

procedure Tfrm_cliente.DBEdit22KeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
begin
  if (Key = VK_RETURN) or (Key = VK_TAB) then
  begin
    DBEdit30.SetFocus;
  end;
end;

procedure Tfrm_cliente.DBEdit22KeyPress(Sender: TObject; var Key: Char);
begin
  inherited;
  Key := u_funcoes.apenasnumeros(Key);
end;

procedure Tfrm_cliente.DBEdit23KeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
begin
  if (Key = VK_RETURN) or (Key = VK_TAB) then
  begin
    DBEdit31.SetFocus;
  end;
end;

procedure Tfrm_cliente.DBEdit23KeyPress(Sender: TObject; var Key: Char);
begin
  inherited;
  Key := u_funcoes.apenasnumeros(Key);
end;

procedure Tfrm_cliente.DBEdit2KeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
begin
  if (Key = VK_RETURN) or (Key = VK_TAB) then
  begin
    dbedtcontato1.SetFocus;
  end;
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

procedure Tfrm_cliente.DBEdit31KeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
begin
  if (Key = VK_RETURN) or (Key = VK_TAB) then
  begin
    cxDBTextEdit20.SetFocus;
  end;
end;

procedure Tfrm_cliente.DBEdit31KeyPress(Sender: TObject; var Key: Char);
begin
  inherited;
  Key := u_funcoes.apenasnumeros(Key);
end;

procedure Tfrm_cliente.DBEdit35KeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
begin
  if (Key = VK_RETURN) or (Key = VK_TAB) then
    btnMunicipE2.Click;
end;

procedure Tfrm_cliente.editConveniado;
begin
  clearConveniado;

  clienteConveniado := TClienteConveniado.Create(clid.EditValue);

  conveniadoNome.Text := clienteConveniado.NOME;
  conveniadoMatricula.Text := clienteConveniado.Matricula;
  conveniadoCpf.Text := clienteConveniado.CPF;
  conveniadoSenha.Text := clienteConveniado.SENHA;
  conveniadoCredito.Value := clienteConveniado.CREDITO;

  conveniadoNome.SetFocus;
  conveniadoNome.selectall;
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

//procedure Tfrm_cliente.Excluir1Click(Sender: TObject);
//begin
//  if (grid_otica.IsFocused) and (SQL_DADOS_OTICA.RecordCount <> 0) then
//  begin
//    if not TEnv.Tuser.IsAdmin then
//    begin
//      if TFrm_liberacao.Execute then
//      begin
//        ExcluirCadastro(SQL_DADOS_OTICA);
//      end;
//    end
//    else
//    begin
//      ExcluirCadastro(SQL_DADOS_OTICA);
//    end;
//  end;
//  consultar_dados_otica;
//end;

procedure Tfrm_cliente.dbedtTELEFONE_1KeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
begin
  if (Key = VK_RETURN) or (Key = VK_TAB) then
    cxDBTextEdit59.SetFocus;
end;

procedure Tfrm_cliente.dbedtTELEFONE_1KeyPress(Sender: TObject; var Key: Char);
begin
  inherited;
  Key := u_funcoes.apenasnumeros(Key);
end;

procedure Tfrm_cliente.DBEdit4KeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
begin
  if (Key = VK_RETURN) or (Key = VK_TAB) then
    dbedtemail.SetFocus;
end;

procedure Tfrm_cliente.DBEdit4KeyPress(Sender: TObject; var Key: Char);
begin
  inherited;
  Key := u_funcoes.apenasnumeros(Key);
end;

procedure Tfrm_cliente.dbedtCELULAR_1KeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
begin
  if (Key = VK_RETURN) or (Key = VK_TAB) then
  begin
    cxDBTextEdit24.SetFocus;
  end;
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

procedure Tfrm_cliente.DBEdit71KeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
begin
  btnMunicipE3.SetFocus;
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

procedure Tfrm_cliente.DBEdit74KeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
begin
  if (Key = VK_RETURN) or (Key = VK_TAB) then
  begin
    btnMunicipE1.Click;
  end;
end;

procedure Tfrm_cliente.DBEdit74KeyPress(Sender: TObject; var Key: Char);
begin
  inherited;
  Key := u_funcoes.ApenasLetras(Key);
end;

procedure Tfrm_cliente.DBEdit75KeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
begin
  if (Key = VK_RETURN) or (Key = VK_TAB) then
  begin
    DBEdit79.SetFocus;
  end;
end;

procedure Tfrm_cliente.DBEdit75KeyPress(Sender: TObject; var Key: Char);
begin
  inherited;
  Key := u_funcoes.apenasnumeros(Key);
end;

procedure Tfrm_cliente.DBEdit76KeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
begin
  if (Key = VK_RETURN) or (Key = VK_TAB) then
  begin
    DBEdit75.SetFocus;
  end;
end;

procedure Tfrm_cliente.DBEdit77KeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
begin
  if (Key = VK_RETURN) or (Key = VK_TAB) then
  begin
    DBEdit78.SetFocus;
  end;
end;

procedure Tfrm_cliente.DBEdit78KeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
begin
  if (Key = VK_RETURN) or (Key = VK_TAB) then
  begin
    if RemoverEspacoEmBranco(removercaracteresespeciais(DBEdit78.Text)) <> emptystr then
      btn_cep_1.Click;
    DBEdit2.SetFocus;
  end;
end;

procedure Tfrm_cliente.DBEdit78KeyPress(Sender: TObject; var Key: Char);
begin
  inherited;
  Key := u_funcoes.apenasnumeros(Key);
end;

procedure Tfrm_cliente.DBEdit79KeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
begin
  if (Key = VK_RETURN) or (Key = VK_TAB) then
  begin
    DBEdit77.SetFocus;
  end;
end;

procedure Tfrm_cliente.dbedtINSCRICAO_ESTADUALExit(Sender: TObject);
begin
  dbedtINSCRICAO_ESTADUAL.field.Text := u_funcoes.removercaracteresespeciais(dbedtINSCRICAO_ESTADUAL.Text);
  ValidarIE(dbedtINSCRICAO_ESTADUAL);
end;

procedure Tfrm_cliente.DBEdit80KeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
begin
  if (Key = VK_RETURN) or (Key = VK_TAB) then
    DBEdit82.SetFocus;
end;

procedure Tfrm_cliente.DBEdit81KeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
begin
  if (Key = VK_RETURN) or (Key = VK_TAB) then
    btnMunicipE1.Click;
end;

procedure Tfrm_cliente.DBEdit82KeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
begin
  if (Key = VK_RETURN) or (Key = VK_TAB) then
    DBEdit78.SetFocus;
end;

procedure Tfrm_cliente.DBEdit83KeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
begin
  if (Key = VK_RETURN) or (Key = VK_TAB) then
    DBEdit104.SetFocus;
end;

procedure Tfrm_cliente.DBEdit84KeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
begin
  if (Key = VK_RETURN) or (Key = VK_TAB) then
  begin
    if RemoverEspacoEmBranco(removercaracteresespeciais(DBEdit84.Text)) <> emptystr then
      btn_cep_2.Click;
    TabSheet9.Show;
    DBEdit99.SetFocus;
  end;
end;

procedure Tfrm_cliente.DBEdit84KeyPress(Sender: TObject; var Key: Char);
begin
  inherited;
  Key := u_funcoes.apenasnumeros(Key);
end;

procedure Tfrm_cliente.DBEdit85KeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
begin
  if (Key = VK_RETURN) or (Key = VK_TAB) then
  begin
    DBEdit84.SetFocus;
  end;
end;

procedure Tfrm_cliente.dbedit86KeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
begin
  if (Key = VK_RETURN) or (Key = VK_TAB) then
  begin
    DBEdit94.SetFocus;
  end;
end;

procedure Tfrm_cliente.DBEdit87KeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
begin
  if (Key = VK_RETURN) or (Key = VK_TAB) then
  begin
    DBEdit89.SetFocus;
  end;
end;

procedure Tfrm_cliente.DBEdit87KeyPress(Sender: TObject; var Key: Char);
begin
  inherited;
  Key := u_funcoes.apenasnumeros(Key);
end;

procedure Tfrm_cliente.DBEdit88KeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
begin
  if (Key = VK_RETURN) or (Key = VK_TAB) then
    DBEdit87.SetFocus;
end;

procedure Tfrm_cliente.DBEdit89KeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
begin
  if (Key = VK_RETURN) or (Key = VK_TAB) then
    dbedit86.SetFocus;
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

procedure Tfrm_cliente.DBEdit94KeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
begin
  if (Key = VK_RETURN) or (Key = VK_TAB) then

    btnMunicipE2.Click;
end;

procedure Tfrm_cliente.DBEdit94KeyPress(Sender: TObject; var Key: Char);
begin
  inherited;
  Key := u_funcoes.ApenasLetras(Key);
end;

procedure Tfrm_cliente.DBEdit96KeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
begin
  if (Key = VK_RETURN) or (Key = VK_TAB) then
  begin
    if RemoverEspacoEmBranco(removercaracteresespeciais(DBEdit96.Text)) <> emptystr then
      btn_cep_3.Click;
    DBEdit2.SetFocus;
  end;
end;

procedure Tfrm_cliente.DBEdit96KeyPress(Sender: TObject; var Key: Char);
begin
  Key := apenasnumeros(Key);
end;

procedure Tfrm_cliente.DBEdit97KeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
begin
  if (Key = VK_RETURN) or (Key = VK_TAB) then

    DBEdit106.SetFocus;
end;

procedure Tfrm_cliente.DBEdit98KeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
begin
  if (Key = VK_RETURN) or (Key = VK_TAB) then

    DBEdit100.SetFocus;
end;

procedure Tfrm_cliente.DBEdit98KeyPress(Sender: TObject; var Key: Char);
begin
  inherited;
  Key := u_funcoes.apenasnumeros(Key);
end;

procedure Tfrm_cliente.DBEdit99KeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
begin
  if (Key = VK_RETURN) or (Key = VK_TAB) then
    DBEdit98.SetFocus;
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
