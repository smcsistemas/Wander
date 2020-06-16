//Verificado automaticamente em 16/06/2020 09:29
{ v 05.05.20 18:28 }
unit cad_cliente_2;
{
================================================================================
| ITEM|DATA  HR|UNIT                |HISTORICO                                 |
|-----|--------|--------------------|------------------------------------------|
|  157|22/05/20|wander              |Aplicadas as proced pode_Alterar_Incluir e|
|     |   01:48|cad_cliente_2       |pode_Cancelar_Gravar                      |
|-----|--------|--------------------|------------------------------------------|
|  147|21/05/20|wander              |Padronizados os bot�es de controle (INS/  |
|     |   07:36|cad_cliente_2       |ALT/CAN/GRAV) e uso proc HabilitarPanels  |
|-----|--------|--------------------|------------------------------------------|
|  121|05/05/20|Wander              |Inicio da Implementa��o do c�digo de cad  |                                          |
|     |   18:28|                    |cliente no novo layout                    |
|-----|--------|--------------------|------------------------------------------|
|  122|05/05/20|Wander              |Os dois bot�es (Pessoa F�sica) e (Pessoa  |
|     |   19:22|                    |Jur�dica) foram substitu�dos por um TRadio|
|     |        |                    |group com as op��es F�sica e Jur�dica     |
|-----|--------|--------------------|------------------------------------------|
|  123|05/05/20|Wander              |Eliminadas as sobreposi��es dos grupos    |
|     |   19:22|                    |Pessoa F�sica e Pessoa Jur�dica. Substi-  |
|     |        |                    |dos por um TPageControl com duas Table-   |
|     |        |                    |Sheets: Pessoa F�sica e Pessoa Jur�dica   |
|-----|--------|--------------------|------------------------------------------|
|  124|05/05/20|Wander              |Ao selecionar o tipo de pessoa (fisica ou |
|     |   19:22|                    |jur�dica) clicando no tRadioGroup criado  |
|     |        |                    |pelo item 122, as TableSheets do          |
|     |        |                    |TPageControl (f�sica/jur�dica) se excluem |
|     |        |                    |mutuamente.                               |
|-----|--------|--------------------|------------------------------------------|
|  125|05/05/20|Wander              |A consulta passa a procurar nome, razao   |
|     |   21:24|                    |social, nome fantasia, cpf, cnpj, rg, ie, |
|     |        |                    |telefone, sem a necessidade do usu�rio    |
|     |        |                    |selecionar o filtro correspondente        |
|-----|--------|--------------------|------------------------------------------|
|  126|05/05/20|Wander              |Pintar as linhas do grid de consulta      |
|     |   22:10|                    |Clientes ativos aparecer�o em verde       |
|     |        |                    |Clientes inativos aparecer�o em vermelho  |
|-----|--------|--------------------|------------------------------------------|
|  129|11/05/20|wander              |Passou a gravar na tabela Cliente e a exi-|
|     |   18:12|cad_cliente_2       |bir na tela a empresa/filial que cadastrou|
|     |        |                    |e que fez a �ltima altera��o no cad cli   |
================================================================================
}
interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, cxGraphics, cxControls, cxLookAndFeels,
  cxLookAndFeelPainters, dxSkinsCore, dxSkinOffice2013LightGray,
  dxSkinscxPCPainter, dxBarBuiltInMenu, cxStyles, cxCustomData, cxFilter,
  cxData, cxDataStorage, cxEdit, cxNavigator, Data.DB, cxDBData, cxLabel,
  cxTextEdit, cxContainer, Vcl.Menus, Vcl.ComCtrls, dxCore, cxDateUtils,
  Vcl.Mask, cxDropDownEdit, cxCalendar, cxDBEdit, Vcl.DBCtrls, Vcl.StdCtrls,
  cxButtons, cxMaskEdit, cxCheckBox, dxGDIPlusClasses, Vcl.ExtCtrls, cxGroupBox,
  cxGridLevel, cxGridCustomTableView, cxGridTableView, cxGridDBTableView,
  cxClasses, cxGridCustomView, cxGrid, cxPC, dxSkinBlack, dxSkinBlue,
  dxSkinBlueprint, dxSkinCaramel, dxSkinCoffee, dxSkinDarkRoom, dxSkinDarkSide,
  dxSkinDevExpressDarkStyle, dxSkinDevExpressStyle, dxSkinFoggy,
  dxSkinGlassOceans, dxSkinHighContrast, dxSkiniMaginary, dxSkinLilian,
  dxSkinLiquidSky, dxSkinLondonLiquidSky, dxSkinMcSkin, dxSkinMetropolis,
  dxSkinMetropolisDark, dxSkinMoneyTwins, dxSkinOffice2007Black,
  dxSkinOffice2007Blue, dxSkinOffice2007Green, dxSkinOffice2007Pink,
  dxSkinOffice2007Silver, dxSkinOffice2010Black, dxSkinOffice2010Blue,
  dxSkinOffice2010Silver, dxSkinOffice2013DarkGray, dxSkinOffice2013White,
  dxSkinOffice2016Colorful, dxSkinOffice2016Dark, dxSkinPumpkin, dxSkinSeven,
  dxSkinSevenClassic, dxSkinSharp, dxSkinSharpPlus, dxSkinSilver,
  dxSkinSpringTime, dxSkinStardust, dxSkinSummer2008, dxSkinTheAsphaltWorld,
  dxSkinsDefaultPainters, dxSkinValentine, dxSkinVisualStudio2013Blue,
  dxSkinVisualStudio2013Dark, dxSkinVisualStudio2013Light, dxSkinVS2010,
  dxSkinWhiteprint, dxSkinXmas2008Blue, FireDAC.Stan.Intf, FireDAC.Stan.Option,
  FireDAC.Stan.Param, FireDAC.Stan.Error, FireDAC.DatS, FireDAC.Phys.Intf,
  FireDAC.DApt.Intf, FireDAC.Stan.Async, FireDAC.DApt, FireDAC.Comp.DataSet,
  FireDAC.Comp.Client;


type
  Tfrm_cadastro_cliente = class(TForm)
    page_control: TcxPageControl;
    tab_consulta: TcxTabSheet;
    tab_cadastrar: TcxTabSheet;
    Label10: TLabel;
    edCODIGO: TEdit;
    gpData: TGroupBox;
    Label13: TLabel;
    cbSituacaoCadastral: TcxComboBox;
    cbHistoricoBloqueios: TcxButton;
    chk_rural: TcxCheckBox;
    chk_concerssionaria: TcxCheckBox;
    bt_Compra: TcxButton;
    bt_Complemento_Financeiro: TcxButton;
    bt_Financeiro: TcxButton;
    bt_Cobranca: TcxButton;
    bt_Dependentes: TcxButton;
    bt_Conveniados: TcxButton;
    bt_Otica: TcxButton;
    bt_Animais: TcxButton;
    bt_SMC: TcxButton;
    pcEnderecos: TcxPageControl;
    cxTabSheet1: TcxTabSheet;
    cxTabSheet2: TcxTabSheet;
    Label45: TLabel;
    edArgumentoDePesquisa: TEdit;
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
    cbFiltro: TcxComboBox;
    Label47: TLabel;
    cbOrder: TcxComboBox;
    Label49: TLabel;
    btn_relatorios_cli: TcxButton;
    cxTabSheet3: TcxTabSheet;
    gpContato: TGroupBox;
    pcContatos: TcxPageControl;
    cxTabSheet5: TcxTabSheet;
    edPROPRIETARIO_NOME: TEdit;
    edPROPRIETARIO_EMAIL1: TEdit;
    edPROPRIETARIO_FONE: TEdit;
    edPROPRIETARIO_WHATSAPP: TEdit;
    cxTabSheet6: TcxTabSheet;
    edPROPRIETARIO_CELULAR1: TEdit;
    edPROPRIETARIO_CELULAR2: TEdit;
    edPROPRIETARIO_EMAIL2: TEdit;
    edPROPRIETARIO_RAMAL: TEdit;
    cxTabSheet4: TcxTabSheet;
    edCONTATO_EMAIL1: TEdit;
    edCONTATO_CELULAR: TEdit;
    edCONTATO_NOME: TEdit;
    edCONTATO_CELULAR2: TEdit;
    edCONTATO_FONE: TEdit;
    edCONTATO_EMAIL2: TEdit;
    edCONTATO_WHATSAPP: TEdit;
    edCONTATO_RAMAL: TEdit;
    edEMAIL: TEdit;
    edCELULAR: TEdit;
    edTELEFONE: TEdit;
    edCELULAR_1: TEdit;
    edTELEFONE_1: TEdit;
    edEMAIL_1: TEdit;
    edWhatsApp: TEdit;
    edEMAIL_2: TEdit;
    edSite_HomePage: TEdit;
    edTELEFONE_2: TEdit;
    btDetalhesBloqueio: TcxButton;
    PageControl1: TPageControl;
    tsPessoaFisica: TTabSheet;
    tsPessoaJuridica: TTabSheet;
    lbl2: TLabel;
    lbl3: TLabel;
    lbl4: TLabel;
    lbl5: TLabel;
    lbl7: TLabel;
    lbl8: TLabel;
    Label17: TLabel;
    edINSCRICAO_ESTADUAL_PJ: TEdit;
    edINSCRICAO_MUNICIPAL: TEdit;
    edFANTASIA: TEdit;
    edCNPJ: TMaskEdit;
    cbTRIBUTACAO_ICMS: TDBComboBox;
    edSUFRAMA: TEdit;
    btn_ConsultaCNPJ: TcxButton;
    Label25: TLabel;
    Label3: TLabel;
    lblRG: TLabel;
    Label4: TLabel;
    Label6: TLabel;
    Label30: TLabel;
    Label5: TLabel;
    Label19: TLabel;
    edRG: TEdit;
    edORGAO_EMISSOR: TEdit;
    edINSCRICAO_ESTADUAL_PF: TEdit;
    edDATA_EMISSAO: TcxDateEdit;
    edCPF: TMaskEdit;
    rgPessoa: TRadioGroup;
    qConsulta: TFDQuery;
    qConsultacodigo: TFDAutoIncField;
    qConsultadata_cadastro: TDateField;
    qConsultasituacao_financeira: TStringField;
    qConsultapessoa_tipo: TStringField;
    qConsultarazao_social: TStringField;
    qConsultafantasia: TStringField;
    qConsultacpf: TStringField;
    qConsultacnpj: TStringField;
    qConsultainscricao_estadual: TStringField;
    qConsultastatus_cadastral: TStringField;
    qConsultamunicipio: TStringField;
    qConsultaestado: TStringField;
    qConsultatelefone: TStringField;
    qConsultacelular: TStringField;
    qConsultarota: TStringField;
    dsConsulta: TDataSource;
    Label24: TLabel;
    rgSTATUS_CADASTRAL: TRadioGroup;
    rgPESSOA_TIPO: TRadioGroup;
    pnContador: TPanel;
    Label14: TLabel;
    edDATA_CADASTRO: TMaskEdit;
    lbInativo: TLabel;
    edDTBLOQUEIO: TMaskEdit;
    Label26: TLabel;
    qConsultaCONSUMIDOR_FINAL: TStringField;
    qConsultaCLIENTE_TIPO: TStringField;
    qConsultaCONSUMIDOR_TIPO: TStringField;
    qConsultaNATURALIDADE: TStringField;
    qConsultaNACIONALIDADE: TStringField;
    qConsultaRG: TStringField;
    qConsultaORGAO_EMISSOR: TStringField;
    qConsultaINSCRICAO_MUNICIPAL: TStringField;
    qConsultaDATA_NASCIMENTO: TDateField;
    qConsultaSEXO: TStringField;
    qConsultaESTADO_CIVIL: TStringField;
    qConsultaSUFRAMA: TStringField;
    qConsultaRAMO_ATIVIDADE: TStringField;
    qConsultaATIVIDADE: TStringField;
    qConsultaDATA_EMISSAO: TDateField;
    qConsultaNOME_PAI: TStringField;
    qConsultaNOME_MAE: TStringField;
    qConsultaLIMITE_CREDITO: TBCDField;
    qConsultaENDERECO: TStringField;
    qConsultaNUMERO: TStringField;
    qConsultaBAIRRO: TStringField;
    qConsultaCOMPLEMENTO: TStringField;
    qConsultaCEP: TStringField;
    qConsultaCODIGO_MUNICIPIO: TIntegerField;
    qConsultaREGIAO: TStringField;
    qConsultaZONA: TStringField;
    qConsultaPAIS: TStringField;
    qConsultaCODIGO_PAIS: TIntegerField;
    qConsultaENTREGA_ENDERECO: TStringField;
    qConsultaENTREGA_NUMERO: TStringField;
    qConsultaENTREGA_BAIRRO: TStringField;
    qConsultaENTREGA_COMPLEMENTO: TStringField;
    qConsultaENTREGA_CEP: TStringField;
    qConsultaENTREGA_MUNICIPIO: TStringField;
    qConsultaENTREGA_CODIGO_MUNICIPIO: TIntegerField;
    qConsultaENTREGA_REGIAO: TStringField;
    qConsultaENTREGA_ZONA: TStringField;
    qConsultaENTREGA_ESTADO: TStringField;
    qConsultaENTREGA_PAIS: TStringField;
    qConsultaENTREGA_CODIGO_PAIS: TIntegerField;
    qConsultaCOBRANCA_ENDERECO: TStringField;
    qConsultaCOBRANCA_NUMERO: TStringField;
    qConsultaCOBRANCA_BAIRRO: TStringField;
    qConsultaCOBRANCA_COMPLEMENTO: TStringField;
    qConsultaCOBRANCA_CEP: TStringField;
    qConsultaCOBRANCA_MUNICIPIO: TStringField;
    qConsultaCOBRANCA_CODIGO_MUNICIPIO: TIntegerField;
    qConsultaCOBRANCA_REGIAO: TStringField;
    qConsultaCOBRANCA_ZONA: TStringField;
    qConsultaCOBRANCA_ESTADO: TStringField;
    qConsultaCOBRANCA_PAIS: TStringField;
    qConsultaCOBRANCA_CODIGO_PAIS: TIntegerField;
    qConsultaAVALISTA_NOME: TStringField;
    qConsultaAVALISTA_DATA_NASCIMENTO: TDateField;
    qConsultaAVALISTA_CPF: TStringField;
    qConsultaAVALISTA_RG: TStringField;
    qConsultaAVALISTA_ORGAO_EMISSOR: TStringField;
    qConsultaAVALISTA_RG_DATA_EMISSAO: TStringField;
    qConsultaAVALISTA_ESTADO_CIVIL: TStringField;
    qConsultaAVALISTA_NACIONALIDADE: TStringField;
    qConsultaAVALISTA_NATURALIDADE: TStringField;
    qConsultaAVALISTA_NOME_PAI: TStringField;
    qConsultaAVALISTA_NOME_MAE: TStringField;
    qConsultaAVALISTA_ENDERECO: TStringField;
    qConsultaAVALISTA_NUMERO: TStringField;
    qConsultaAVALISTA_BAIRRO: TStringField;
    qConsultaAVALISTA_COMPLEMENTO: TStringField;
    qConsultaAVALISTA_CEP: TStringField;
    qConsultaAVALISTA_MUNICIPIO: TStringField;
    qConsultaAVALISTA_CODIGO_MUNICIPIO: TIntegerField;
    qConsultaAVALISTA_REGIAO: TStringField;
    qConsultaAVALISTA_ZONA: TStringField;
    qConsultaAVALISTA_ESTADO: TStringField;
    qConsultaAVALISTA_PAIS: TStringField;
    qConsultaAVALISTA_CODIGO_PAIS: TIntegerField;
    qConsultaALIQUOTA_FECOEP: TIntegerField;
    qConsultaBANCO_1: TStringField;
    qConsultaBANCO_OP_CONTA: TStringField;
    qConsultaBANCO_OP2_CONTA: TStringField;
    qConsultaBANCO_CONTA_1: TStringField;
    qConsultaBANCO_AGENCIA_1: TStringField;
    qConsultaBANCO_2: TStringField;
    qConsultaBANCO_CONTA_2: TStringField;
    qConsultaBANCO_CONTA_DIGITO: TStringField;
    qConsultaBANCO_CONTA_DIGITO_2: TStringField;
    qConsultaBANCO_ANGENCIA_DIGITO: TStringField;
    qConsultaBANCO_ANGENCIA_DIGITO_2: TStringField;
    qConsultaBANCO_AGENCIA_2: TStringField;
    qConsultaCONTATO_NOME: TStringField;
    qConsultaCONTATO_CELULAR: TStringField;
    qConsultaTELEFONE_1: TStringField;
    qConsultaCONTATO: TStringField;
    qConsultaCELULAR_1: TStringField;
    qConsultaCONTATO_1: TStringField;
    qConsultaEMAIL: TStringField;
    qConsultaEMAIL_1: TStringField;
    qConsultaSKYPE: TStringField;
    qConsultaOBSERVACAO: TStringField;
    qConsultaconvenio_inicio: TDateField;
    qConsultaconvenio_fim: TDateField;
    qConsultaINDICACAO_IE: TIntegerField;
    qConsultaTRIBUTACAO_ICMS: TIntegerField;
    qConsultaCONTRIBUINTE_ICMS: TIntegerField;
    qConsultaID_CAD_RAMO_ATIVIDADE: TIntegerField;
    qConsultaDTBLOQUEIO: TDateField;
    qConsultaHRBLOQUEIO: TStringField;
    qConsultaUSUBLOQUEIO: TStringField;
    qConsultaMAQBLOQUEIO: TStringField;
    qConsultaDTALTEROU: TDateField;
    qConsultaHRALTEROU: TStringField;
    qConsultaUSUALTEROU: TStringField;
    qConsultaMAQALTEROU: TStringField;
    qConsultaID_REGIAO: TIntegerField;
    qConsultaBLOQUEADO: TStringField;
    Label27: TLabel;
    Label28: TLabel;
    Label7: TLabel;
    cbSITUACAO_FINANCEIRA: TDBComboBox;
    Label8: TLabel;
    edLIMITE_CREDITO: TEdit;
    Label11: TLabel;
    edID_CAD_RAMO_ATIVIDADE: TEdit;
    edRAMO_ATIVIDADE_DESCRICAO: TEdit;
    cbATIVIDADE: TcxButton;
    btComplementoDeDados: TcxButton;
    edDATA_NASCIMENTO: TMaskEdit;
    cbSexo: TComboBox;
    edNOME: TEdit;
    edRAZAO_SOCIAL: TEdit;
    qConsultaTELEFONE_2: TStringField;
    qConsultaWhatsApp: TStringField;
    qConsultaEMAIL_2: TStringField;
    qConsultaSite_HomePage: TStringField;
    lbDetalhesBloqueio: TLabel;
    Panel1: TPanel;
    Label2: TLabel;
    Label9: TLabel;
    Label1: TLabel;
    btRegiao: TcxButton;
    edREG_DESCRICAO: TEdit;
    edID_REGIAO: TEdit;
    edBAIRRO: TEdit;
    edCEP: TEdit;
    edENDERECO: TEdit;
    edNUMERO: TEdit;
    edCOMPLEMENTO: TEdit;
    edMUNICIPIO: TEdit;
    edZONA: TEdit;
    edESTADO: TEdit;
    edCODIGO_UF: TEdit;
    edPAIS: TEdit;
    edCODIGO_PAIS: TEdit;
    edCODIGO_MUNICIPIO: TEdit;
    bPesqCidade: TcxButton;
    btn_zona: TcxButton;
    Panel2: TPanel;
    Label12: TLabel;
    Label18: TLabel;
    Label20: TLabel;
    cxButton1: TcxButton;
    edREG_DESCRICAO_ENTREGA: TEdit;
    edENTREGA_ID_REGIAO: TEdit;
    edENTREGA_BAIRRO: TEdit;
    edENTREGA_CEP: TEdit;
    edENTREGA_ENDERECO: TEdit;
    edENTREGA_NUMERO: TEdit;
    edENTREGA_COMPLEMENTO: TEdit;
    edENTREGA_MUNICIPIO: TEdit;
    edENTREGA_ZONA: TEdit;
    edENTREGA_ESTADO: TEdit;
    edENTREGA_CODIGO_UF: TEdit;
    edENTREGA_PAIS: TEdit;
    edENTREGA_CODIGO_PAIS: TEdit;
    edENTREGA_CODIGO_MUNICIPIO: TEdit;
    bPesqCidadeEntrega: TcxButton;
    cxButton4: TcxButton;
    Panel3: TPanel;
    Label21: TLabel;
    Label22: TLabel;
    Label23: TLabel;
    cxButton5: TcxButton;
    edREG_DESCRICAO_COBRANCA: TEdit;
    edCOBRANCA_ID_REGIAO: TEdit;
    edCOBRANCA_BAIRRO: TEdit;
    edCOBRANCA_CEP: TEdit;
    edCOBRANCA_ENDERECO: TEdit;
    edCOBRANCA_NUMERO: TEdit;
    edCOBRANCA_COMPLEMENTO: TEdit;
    edCOBRANCA_MUNICIPIO: TEdit;
    edCOBRANCA_ZONA: TEdit;
    edCOBRANCA_ESTADO: TEdit;
    edCOBRANCA_CODIGO_UF: TEdit;
    edCOBRANCA_PAIS: TEdit;
    edCOBRANCA_CODIGO_PAIS: TEdit;
    edCOBRANCA_CODIGO_MUNICIPIO: TEdit;
    bPesqCidadeCobranca: TcxButton;
    cxButton8: TcxButton;
    qConsultaPROPRIETARIO_NOME: TStringField;
    qConsultaPROPRIETARIO_FONE: TStringField;
    qConsultaPROPRIETARIO_RAMAL: TStringField;
    qConsultaPROPRIETARIO_CELULAR1: TStringField;
    qConsultaPROPRIETARIO_CELULAR2: TStringField;
    qConsultaPROPRIETARIO_EMAIL1: TStringField;
    qConsultaPROPRIETARIO_EMAIL2: TStringField;
    qConsultaPROPRIETARIO_WHATSAPP: TStringField;
    qConsultaCONTATO_FONE: TStringField;
    qConsultaCONTATO_RAMAL: TStringField;
    qConsultaCONTATO_CELULAR2: TStringField;
    qConsultaCONTATO_WHATSAPP: TStringField;
    qConsultaCONTATO_EMAIL1: TStringField;
    qConsultaCONTATO_EMAIL2: TStringField;
    qConsultaCODIGO_UF: TStringField;
    qConsultaENTREGA_CODIGO_UF: TStringField;
    qConsultaCOBRANCA_CODIGO_UF: TStringField;
    qConsultaENTREGA_ID_REGIAO: TIntegerField;
    qConsultaCOBRANCA_ID_REGIAO: TIntegerField;
    GroupBox1: TGroupBox;
    edUSUALTEROU: TEdit;
    edDTALTEROU: TMaskEdit;
    edHRALTEROU: TEdit;
    edMAQALTEROU: TMaskEdit;
    bHistoricoAlteracoes: TcxButton;
    edEMP_ALTEROU: TMaskEdit;
    Label29: TLabel;
    edCLI_EMP_CODIGO: TMaskEdit;
    Label16: TLabel;
    qConsultaCLI_EMP_CODIGO: TStringField;
    qConsultaEMP_ALTEROU: TStringField;
    qConsultaCRT_CODIGO_REGIME_TRIBUTARIO: TIntegerField;
    pnControles: TPanel;
    bControleIncluir: TcxButton;
    bControleAlterar: TcxButton;
    bControleCancelar: TcxButton;
    bControleGravar: TcxButton;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure bt_Complemento_FinanceiroClick(Sender: TObject);
    procedure bt_DependentesClick(Sender: TObject);
    procedure bt_ConveniadosClick(Sender: TObject);
    procedure bt_OticaClick(Sender: TObject);
    procedure bt_AnimaisClick(Sender: TObject);
    procedure bt_SMCClick(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure rgPessoaClick(Sender: TObject);
    procedure edArgumentoDePesquisaChange(Sender: TObject);
    procedure tbCustomDrawCell(Sender: TcxCustomGridTableView;
      ACanvas: TcxCanvas; AViewInfo: TcxGridTableDataCellViewInfo;
      var ADone: Boolean);
    procedure rgSTATUS_CADASTRALClick(Sender: TObject);
    procedure cbOrderClick(Sender: TObject);
    procedure tbCellDblClick(Sender: TcxCustomGridTableView;
      ACellViewInfo: TcxGridTableDataCellViewInfo; AButton: TMouseButton;
      AShift: TShiftState; var AHandled: Boolean);
    procedure bControleIncluirClick(Sender: TObject);
    procedure bControleAlterarClick(Sender: TObject);
    procedure bControleCancelarClick(Sender: TObject);
    procedure btDetalhesBloqueioClick(Sender: TObject);
    procedure FormKeyPress(Sender: TObject; var Key: Char);
    procedure cbHistoricoBloqueiosClick(Sender: TObject);
    procedure edID_CAD_RAMO_ATIVIDADEExit(Sender: TObject);
    procedure cbATIVIDADEClick(Sender: TObject);
    procedure bHistoricoAlteracoesClick(Sender: TObject);
    procedure edCEPEnter(Sender: TObject);
    procedure edENTREGA_CEPEnter(Sender: TObject);
    procedure edCOBRANCA_CEPEnter(Sender: TObject);
    procedure edCEPExit(Sender: TObject);
    procedure edENTREGA_CEPExit(Sender: TObject);
    procedure edCOBRANCA_CEPExit(Sender: TObject);
    procedure bPesqCidadeClick(Sender: TObject);
    procedure bPesqCidadeEntregaClick(Sender: TObject);
    procedure bPesqCidadeCobrancaClick(Sender: TObject);
    procedure edID_REGIAOChange(Sender: TObject);
    procedure edENTREGA_ID_REGIAOChange(Sender: TObject);
    procedure edCOBRANCA_ID_REGIAOChange(Sender: TObject);
    procedure bControleGravarClick(Sender: TObject);
    procedure edCPFExit(Sender: TObject);
    procedure edCNPJExit(Sender: TObject);
    procedure btn_ConsultaCNPJClick(Sender: TObject);
    procedure edLIMITE_CREDITOExit(Sender: TObject);
  private
    { Private declarations }
    procedure Inicio;
    procedure Pesquisar;
    procedure Pode_Alterar;
    procedure So_Pode_Incluir;
    procedure Limpa_Tela;
    procedure Ir_Para_Consulta;
    procedure Destacar_Campos_ReadOnly(pCor:TColor);
    procedure Destacar_Campos_Obrigatorios(pCor:TColor);
    procedure Mostrar_Cliente;
    procedure Mostrar_Contatos;
    procedure Mostrar_Contatos_Empresa;
    procedure Mostrar_Contatos_Propriet�rio;
    procedure Mostrar_Contatos_Responsavel;
    procedure Mostrar_Enderecos;
    procedure Mostrar_Enderecos_Cliente;
    procedure Mostrar_Enderecos_Entrega;
    procedure Mostrar_Enderecos_Cobranca;
    Procedure ProcuraRamoAtividade(pCodigo:String);
    procedure Procurar_CodigoIBGE_Municipio(pMUNICIPIO,pUF: String);
    procedure LocalizarMunicipio(const MUNICIPIO:String; var CIDADE, PAIS, CODIGO_PAIS, ESTADO, CODIGO_UF:String);
    procedure HabilitarCampos(pBoolean:Boolean);
    function DadosCorretos:boolean;
    procedure ApagarRegistro;
    procedure InserirRegistro;
    function JaExisteCPF(pCPF,pCODIGO:String):Boolean;
    function JaExisteCNPJ(pCNPJ,pCODIGO:String):Boolean;
    procedure Preencher_Tela_Com_Dados_da_Consulta_CNPJ;

  public
    { Public declarations }
  end;

var
  frm_cadastro_cliente: Tfrm_cadastro_cliente;
  vCEP_Anterior,
  xIBGE_UF,
  xIBGE_PAIS,
  xPAIS,
  xCODIGO_MUNICIPIO : String;

implementation

uses
  vw_main,     animais, comple_financ, convenio, dependentes, otica, botoes_smc,
  u_funcoes,   CLIENTE_HISTORICO_BLOQUEIOS_CHB,  cad_atividade,      U_Municipio,
  ConsultaCNPJ,
  h_Functions, auditoria, S_Module; // Pintar as linhas do grid de consulta

{$R *.dfm}

var NaoPesquisar: Boolean; // Impede que haja pesquisas enquanto a tela est�
                           // sendo configurada pela procedure INICIO ao aplicar
                           // os padr�es iniciais.

procedure Tfrm_cadastro_cliente.ApagarRegistro;
var qAUX: tFDQuery;
begin
   if edCODIGO.Text = '' then
      exit;

   qAUX := TFDQuery.Create(nil);
   qAUX.Connection := Module.connection;
   qAUX.ConnectionName := 'connection';

   qAUX.close;
   qAUX.sql.clear;
   qAUX.sql.add('DELETE FROM CLIENTE    ');
   qAUX.sql.add(' WHERE CODIGO = :CODIGO');
   qAUX.ParamByName('CODIGO').AsString := edCODIGO.Text;
   qAUX.ExecSql;

   qAUX.Free;
end;

procedure Tfrm_cadastro_cliente.bHistoricoAlteracoesClick(Sender: TObject);
begin
 frm_auditoria := Tfrm_auditoria.Create(nil);
 with frm_auditoria.FDQuery1 do
 begin
   Close;
   SQL.Clear;
   SQL.Add('select * from log_log                  ');
   SQL.Add(' where (log_historico like :Alterou  ) ');
   SQL.Add('    or (log_historico like :Cadastrou) ');
   SQL.Add('    or (log_historico like :Excluiu  ) ');
   ParamByName('Alterou'  ).AsString := '%Alterou cliente '  + edCODIGO.Text + '%';
   ParamByName('Cadastrou').AsString := '%Cadastrou cliente '+ edCODIGO.Text + '%';
   ParamByName('Excluiu'  ).AsString := '%Excluiu cliente '  + edCODIGO.Text + '%';
   SQL.Add('ORDER BY LOG_DATA DESC, LOG_HORA DESC  ');
   Open;
 end;
 vPesquisaExterna := True; // Informa a frm_autitoria que ela n�o est� sendo
                           // pelo menu e sim por um rotina interna do sistema
 frm_auditoria.showmodal;
 frm_auditoria.Free;
end;

procedure Tfrm_cadastro_cliente.btDetalhesBloqueioClick(Sender: TObject);
begin
    // Mostra detalhes do bloqueio...
    // Data, hora, usu�rio e esta��o onde ocorreu o bloqueio do cliente
    // ----------------------------------------------------------------------------
    if edCODIGO.Text = '' then
       exit;

    wnAlerta('Cadastrar Cliente','Cliente bloqueado em '
            + qConsultaDTBLOQUEIO.AsString
            + ' - '
            + qConsultaHRBLOQUEIO.Value
            + slinebreak
            + slinebreak
            + 'pelo usu�rio [ '
            + qConsultaUSUBLOQUEIO.Value
            + ' ] '
            + slinebreak
            + slinebreak
            + 'na esta��o [ '
            + qConsultaMAQBLOQUEIO.Value
            + ' ].',
            taLeftJustify, 12);
end;

procedure Tfrm_cadastro_cliente.btn_ConsultaCNPJClick(Sender: TObject);
begin
    frmConsultaCNPJ := TfrmConsultaCNPJ.CREATE(Application);
    frmConsultaCNPJ.EditCNPJ.Text := edCNPJ.Text;
    frmConsultaCNPJ.ShowModal;

    Preencher_Tela_Com_Dados_da_Consulta_CNPJ;

    frmConsultaCNPJ.Free;
end;

procedure Tfrm_cadastro_cliente.bPesqCidadeClick(Sender: TObject);
var
  CIDADE, PAIS, CODIGO_PAIS, ESTADO, CODIGO_UF: STRING;
begin
  LocalizarMunicipio(edMUNICIPIO.Text, CIDADE, PAIS, CODIGO_PAIS, ESTADO, CODIGO_UF);

  edMUNICIPIO.Text   := CIDADE;
  edPAIS.Text        := PAIS;
  edCODIGO_PAIS.Text := CODIGO_PAIS;
  edESTADO.Text      := ESTADO;
  edCODIGO_UF.Text   := CODIGO_UF;
end;

procedure Tfrm_cadastro_cliente.bPesqCidadeCobrancaClick(Sender: TObject);
var
  CIDADE, PAIS, CODIGO_PAIS, ESTADO, CODIGO_UF: STRING;
begin
  LocalizarMunicipio(edCOBRANCA_MUNICIPIO.Text, CIDADE, PAIS, CODIGO_PAIS, ESTADO, CODIGO_UF);

  edCOBRANCA_MUNICIPIO.Text   := CIDADE;
  edCOBRANCA_PAIS.Text        := PAIS;
  edCOBRANCA_CODIGO_PAIS.Text := CODIGO_PAIS;
  edCOBRANCA_ESTADO.Text      := ESTADO;
  edCOBRANCA_CODIGO_UF.Text   := CODIGO_UF;
end;

procedure Tfrm_cadastro_cliente.bPesqCidadeEntregaClick(Sender: TObject);
var
  CIDADE, PAIS, CODIGO_PAIS, ESTADO, CODIGO_UF: STRING;
begin
  LocalizarMunicipio(edENTREGA_MUNICIPIO.Text, CIDADE, PAIS, CODIGO_PAIS, ESTADO, CODIGO_UF);

  edENTREGA_MUNICIPIO.Text   := CIDADE;
  edENTREGA_PAIS.Text        := PAIS;
  edENTREGA_CODIGO_PAIS.Text := CODIGO_PAIS;
  edENTREGA_ESTADO.Text      := ESTADO;
  edENTREGA_CODIGO_UF.Text   := CODIGO_UF;
end;

procedure Tfrm_cadastro_cliente.LocalizarMunicipio(const MUNICIPIO:String; var CIDADE, PAIS, CODIGO_PAIS, ESTADO, CODIGO_UF:String);
var
  Codigo_Municipio, vCodigo_UF: Integer;
  qEndereco_Municipio_Estado: tFDQuery;
begin
    // Pesquisar munic�pio
    // ----------------------------------------------------------------------------

    // Abrir a tela de Pesquisa Munic�pios
    Frm_Municipio := TFrm_Municipio.Create(Application);
    // Pesquisar pela pr�pria cidade
    Frm_Municipio.Edit1.Text := MUNICIPIO;
    Frm_Municipio.ShowModal;

    // Pegar o nome do munic�pio
    CIDADE := Frm_Municipio.SQL_Municipio.FieldByName('NOME').AsString;
    // Pegar o c�digo do munic�pio
    Codigo_Municipio := Frm_Municipio.SQL_Municipio.FieldByName('CODIGO').AsInteger;

    // Destruir a tela de pesquisa
    Frm_Municipio.Free;

    // Criar a Query que vai acessar os dados do munic�pio e preencher
    // os campos do endere�o
    // Os dados da UF vindo corretos
    // by Wander
    qEndereco_Municipio_Estado := TFDQuery.Create(nil);
    qEndereco_Municipio_Estado.Connection := Module.connection;
    qEndereco_Municipio_Estado.ConnectionName := 'connection';

    // Recuperar dados do Minucipio
    qEndereco_Municipio_Estado.Close;
    qEndereco_Municipio_Estado.Sql.Clear;
    qEndereco_Municipio_Estado.SQL.Add('SELECT *                 ');
    qEndereco_Municipio_Estado.SQL.Add('  from endereco_municipio');
    qEndereco_Municipio_Estado.SQL.Add(' where CODIGO = :CODIGO  ');
    qEndereco_Municipio_Estado.ParamByName('CODIGO').AsInteger :=  Codigo_Municipio;
    qEndereco_Municipio_Estado.Open;
    if qEndereco_Municipio_Estado.Eof then
    begin
      // N�o encontou o munic�pio
      qEndereco_Municipio_Estado.Free;
      exit;
    end;

    // Preencher dados do munic�pio (UF / Pa�s)
    PAIS        := 'BRASIL';
    CODIGO_PAIS := '1058';

    // Pegar o c�digo da UF
    vCodigo_UF := qEndereco_Municipio_Estado.FieldByName('ESTADO').AsInteger;

    // Recupear os dados da UF
    qEndereco_Municipio_Estado.Close;
    qEndereco_Municipio_Estado.Sql.Clear;
    qEndereco_Municipio_Estado.SQL.Add('SELECT *               ');
    qEndereco_Municipio_Estado.SQL.Add('  from endereco_estado ');
    qEndereco_Municipio_Estado.SQL.Add(' where IBGE = :IBGE    ');
    qEndereco_Municipio_Estado.ParamByName('IBGE').AsInteger := vCodigo_UF;
    qEndereco_Municipio_Estado.Open;
    if qEndereco_Municipio_Estado.Eof then
    begin
      // UF N�o encontrada
      qEndereco_Municipio_Estado.Free;
      exit;
    end;

    // Preencher dados da UF
    ESTADO    := qEndereco_Municipio_Estado.FieldByName('UF').AsString;
    CODIGO_UF := IntToStr(qEndereco_Municipio_Estado.FieldByName('IBGE').AsInteger);

    // destruir a query local
    qEndereco_Municipio_Estado.Free;

    // Posiciona no pr�ximo campo da tela - Zona
    //btn_zona.SetFocus;
end;

procedure Tfrm_cadastro_cliente.bt_AnimaisClick(Sender: TObject);
begin
    frm_cad_animais := Tfrm_cad_animais.Create(nil);
    frm_cad_animais.ShowModal;
end;

procedure Tfrm_cadastro_cliente.bControleAlterarClick(Sender: TObject);
begin
   if not TemAcesso(Global_Usuario_Logado, 'ALTCLI') then
     exit;

   //Permitir edi��o dos campos da tela
   HabilitarCampos(True);

  //Ajusta bot�es de controle
  pode_Cancelar_Gravar(frm_cadastro_cliente);

   //Posiciona no 1o campo da tela
   rgPessoa.SetFocus;
end;

procedure Tfrm_cadastro_cliente.bControleCancelarClick(Sender: TObject);
begin
   //limpar todos os campos da tela
   Limpa_Tela;

   //Impedir edi��o dos campos da tela
   HabilitarCampos(False);

  //Ajusta bot�es de controle
  pode_Alterar_Incluir(frm_cadastro_cliente);

  //Posicionar na aba de consulta
  Ir_Para_Consulta;
end;

procedure Tfrm_cadastro_cliente.bControleGravarClick(Sender: TObject);
begin
   if not DadosCorretos then
      exit;

   ApagarRegistro;
   InserirRegistro;

   //limpar todos os campos da tela
   Limpa_Tela;

   //Impedir edi��o dos campos da tela
   HabilitarCampos(False);

  //Ajusta bot�es de controle
  pode_Alterar_Incluir(frm_cadastro_cliente);

   //Atualizar a pesquisa
   Pesquisar;

   //Posicionar na aba de consulta
   Ir_Para_Consulta;
end;

procedure Tfrm_cadastro_cliente.bControleIncluirClick(Sender: TObject);
begin
   if not TemAcesso(Global_Usuario_Logado, 'ADDCLI') then
     exit;

   //Limpar todos os campos
   Limpa_Tela;

   //Permitir edi��o dos campos da tela
   HabilitarCampos(True);

  //Ajusta bot�es de controle
  pode_Cancelar_Gravar(frm_cadastro_cliente);

   //Posiciona no 1o campo da tela
   rgPessoa.SetFocus;

end;

procedure Tfrm_cadastro_cliente.bt_Complemento_FinanceiroClick(Sender: TObject);
begin
 fmr_comp_financ := Tfmr_comp_financ.Create(nil);
    fmr_comp_financ.ShowModal;
end;

procedure Tfrm_cadastro_cliente.bt_ConveniadosClick(Sender: TObject);
begin
   fmr_convenio := Tfmr_convenio.Create(nil);
   fmr_convenio.showmodal;
   fmr_convenio.Free;
end;

procedure Tfrm_cadastro_cliente.bt_DependentesClick(Sender: TObject);
begin
    fmr_dependentes := Tfmr_dependentes.Create(nil);
    fmr_dependentes.ShowModal;
end;

procedure Tfrm_cadastro_cliente.bt_OticaClick(Sender: TObject);
begin
    frm_otica := Tfrm_otica.Create(nil);
    frm_otica.showmodal;
end;

procedure Tfrm_cadastro_cliente.bt_SMCClick(Sender: TObject);
begin
    fmr_smc_btn := Tfmr_smc_btn.Create(nil);
    fmr_smc_btn.ShowModal;
end;

procedure Tfrm_cadastro_cliente.cbATIVIDADEClick(Sender: TObject);
begin
    FRM_cad_atividade := TFRM_cad_atividade.CREATE(Application);
    FRM_cad_atividade.dbgrd2.Visible := True;
    vFRM_cad_atividade_Consultando:=True;
    FRM_cad_atividade.ShowModal;
    if vRAMOcodigo <> -1 then
    begin
       edID_CAD_RAMO_ATIVIDADE.Text := IntToStr(vRAMOcodigo);
       ProcuraRamoAtividade(edID_CAD_RAMO_ATIVIDADE.Text);
    end;
    FRM_cad_atividade.Free;
end;

procedure Tfrm_cadastro_cliente.cbHistoricoBloqueiosClick(Sender: TObject);
begin
    // Mostra detalhes do bloqueio...
    // Data, hora, usu�rio e esta��o onde ocorreu o bloqueio do cliente
    // ----------------------------------------------------------------------------
    frmCLIENTE_HISTORICO_BLOQUEIOS_CHB :=  TfrmCLIENTE_HISTORICO_BLOQUEIOS_CHB.Create(Self);
    with frmCLIENTE_HISTORICO_BLOQUEIOS_CHB.sql_CLIENTE_HISTORICO_BLOQUEIOS_CHB do
    begin
      Close;
      Sql.Clear;
      Sql.Add('SELECT *                               ');
      Sql.Add('  FROM CLIENTE_HISTORICO_BLOQUEIOS_CHB ');
      Sql.Add(' WHERE CHB_CLIENTE = :CHB_CLIENTE      ');
      Sql.Add(' ORDER BY  CHB_DTEVENTO DESC, CHB_HREVENTO DESC ');
      ParamByName('CHB_CLIENTE').AsInteger := qConsulta.FieldByName('CODIGO').AsInteger;
      Open;
    end;
    frmCLIENTE_HISTORICO_BLOQUEIOS_CHB.ShowModal;
    frmCLIENTE_HISTORICO_BLOQUEIOS_CHB.Free;
end;

procedure Tfrm_cadastro_cliente.cbOrderClick(Sender: TObject);
begin
     Pesquisar;
end;

procedure Tfrm_cadastro_cliente.Destacar_Campos_ReadOnly(pCor:TColor);
var i : integer;
begin
   // Destacar os campos ReadOnly com a cor clSilver e fonte em negrito
   //---------------------------------------------------------------------------
   with frm_cadastro_cliente do
   begin
       for i := 0 to ComponentCount - 1 do
       begin
         // TDBEdit
         if ( (Components[i] is TDBEdit)         ) and
            ( (Components[i] as TDBEdit).ReadOnly) then
         begin
            (Components[i] as TDBEdit).Color      := pCor;
            (Components[i] as TDBEdit).Font.Style := [fsBold];
         end;

         //TDateTimePicker
         if (Components[i] is TDateTimePicker) then
         begin
            (Components[i] as TDateTimePicker).Color      := pCor;
            (Components[i] as TDateTimePicker).Font.Style := [fsBold];
         end;
       end;
   end;
end;

procedure Tfrm_cadastro_cliente.edCEPEnter(Sender: TObject);
begin
   //Armazena o CEP ao entrar no campo para evitar consulta
   //de CEP quando o CEP n�o � alterado
   //---------------------------------------------------------------------------
   vCEP_Anterior := edCEP.Text;

end;

procedure Tfrm_cadastro_cliente.edCEPExit(Sender: TObject);
var
  UF, RUA, BAIRRO, CIDADE: STRING;
begin
   if edCEP.Text = '' then
      exit;

   //Se o CEP n�o foi alterado, n�o pesquisar...
   if vCEP_Anterior = edCEP.Text then
      exit;

   ConsultarCep(RemoverEspacoEmBranco(removercaracteresespeciais(edCEP.Text)), UF, CIDADE, RUA, BAIRRO);
   edENDERECO.Text  := RUA;
   edBAIRRO.Text    := BAIRRO;
   edMUNICIPIO.Text := CIDADE;
   edESTADO.Text    := UF;

   Procurar_CodigoIBGE_Municipio(CIDADE,UF);
   edCODIGO_UF.Text        := xIBGE_UF;
   edCODIGO_PAIS.Text      := xIBGE_PAIS;
   edPAIS.Text             := xPAIS;
   edCODIGO_MUNICIPIO.Text := xCODIGO_MUNICIPIO;

end;

procedure Tfrm_cadastro_cliente.edCNPJExit(Sender: TObject);
begin
    if bControleCancelar.focused then exit;
    if edCNPJ.Text = ''            then exit;

    if not CHEK_CGC(edCNPJ.Text) then
    begin
      wnAlerta('Cadastrar Cliente','CNPJ inv�lido', taLeftJustify, 12);
      edCNPJ.SetFocus;
      exit;
    end;

   if JaExisteCNPJ(edCNPJ.Text,edCODIGO.Text) then
   begin
      edCNPJ.SetFocus;
      exit;
   end;

   cnpjcpf(edCNPJ);
end;

procedure Tfrm_cadastro_cliente.edCOBRANCA_CEPEnter(Sender: TObject);
begin
   //Armazena o CEP ao entrar no campo para evitar consulta
   //de CEP quando o CEP n�o � alterado
   //---------------------------------------------------------------------------
   vCEP_Anterior := edCOBRANCA_CEP.Text;

end;

procedure Tfrm_cadastro_cliente.edCOBRANCA_CEPExit(Sender: TObject);
var
  UF, RUA, BAIRRO, CIDADE: STRING;
begin
   if edCOBRANCA_CEP.Text = '' then
      exit;

   //Se o CEP n�o foi alterado, n�o pesquisar...
   if vCEP_Anterior = edCOBRANCA_CEP.Text then
      exit;

   ConsultarCep(RemoverEspacoEmBranco(removercaracteresespeciais(edCOBRANCA_CEP.Text)), UF, CIDADE, RUA, BAIRRO);
   edCOBRANCA_ENDERECO.Text  := RUA;
   edCOBRANCA_BAIRRO.Text    := BAIRRO;
   edCOBRANCA_MUNICIPIO.Text := CIDADE;
   edCOBRANCA_ESTADO.Text    := UF;

   Procurar_CodigoIBGE_Municipio(CIDADE,UF);
   edCOBRANCA_CODIGO_UF.Text        := xIBGE_UF;
   edCOBRANCA_CODIGO_PAIS.Text      := xIBGE_PAIS;
   edCOBRANCA_PAIS.Text             := xPAIS;
   edCOBRANCA_CODIGO_MUNICIPIO.Text := xCODIGO_MUNICIPIO;
end;

procedure Tfrm_cadastro_cliente.edCOBRANCA_ID_REGIAOChange(Sender: TObject);
begin
   edREG_DESCRICAO_COBRANCA.Text := '';
   if edCOBRANCA_ID_REGIAO.Text = '' then
      exit;
   edREG_DESCRICAO_COBRANCA.Text := DescricaoREGIAO(edCOBRANCA_ID_REGIAO.Text);

end;

procedure Tfrm_cadastro_cliente.edCPFExit(Sender: TObject);
begin
    if bControleCancelar.focused then exit;
    if edCPF.Text = ''             then exit;

    if not CHEK_CPF(edCPF.Text) then
    begin
      wnAlerta('Cadastrar Cliente','CPF inv�lido', taLeftJustify, 12);
      edCPF.SetFocus;
      exit;
    end;

   if JaExisteCPF(edCPF.Text,edCODIGO.Text) then
   begin
      edCPF.SetFocus;
      exit;
   end;

   cnpjcpf(edCPF);

end;

procedure Tfrm_cadastro_cliente.edENTREGA_CEPEnter(Sender: TObject);
begin
   //Armazena o CEP ao entrar no campo para evitar consulta
   //de CEP quando o CEP n�o � alterado
   //---------------------------------------------------------------------------
   vCEP_Anterior := edENTREGA_CEP.Text;

end;

procedure Tfrm_cadastro_cliente.edENTREGA_CEPExit(Sender: TObject);
var
  UF, RUA, BAIRRO, CIDADE: STRING;
begin
   if edENTREGA_CEP.Text = '' then
      exit;

   //Se o CEP n�o foi alterado, n�o pesquisar...
   if vCEP_Anterior = edENTREGA_CEP.Text then
      exit;

   ConsultarCep(RemoverEspacoEmBranco(removercaracteresespeciais(edENTREGA_CEP.Text)), UF, CIDADE, RUA, BAIRRO);
   edENTREGA_ENDERECO.Text  := RUA;
   edENTREGA_BAIRRO.Text    := BAIRRO;
   edENTREGA_MUNICIPIO.Text := CIDADE;
   edENTREGA_ESTADO.Text    := UF;

   Procurar_CodigoIBGE_Municipio(CIDADE,UF);
   edENTREGA_CODIGO_UF.Text        := xIBGE_UF;
   edENTREGA_CODIGO_PAIS.Text      := xIBGE_PAIS;
   edENTREGA_PAIS.Text             := xPAIS;
   edENTREGA_CODIGO_MUNICIPIO.Text := xCODIGO_MUNICIPIO;
end;

procedure Tfrm_cadastro_cliente.edENTREGA_ID_REGIAOChange(Sender: TObject);
begin
   edREG_DESCRICAO_ENTREGA.Text := '';
   if edENTREGA_ID_REGIAO.Text = '' then
      exit;
   edREG_DESCRICAO_ENTREGA.Text := DescricaoREGIAO(edENTREGA_ID_REGIAO.Text);
end;

procedure Tfrm_cadastro_cliente.edID_CAD_RAMO_ATIVIDADEExit(Sender: TObject);
begin
   ProcuraRamoAtividade(edID_CAD_RAMO_ATIVIDADE.Text);
end;

procedure Tfrm_cadastro_cliente.edID_REGIAOChange(Sender: TObject);
begin
   edREG_DESCRICAO.Text := '';
   if edID_REGIAO.Text = '' then
      exit;
   edREG_DESCRICAO.Text := DescricaoREGIAO(edID_REGIAO.Text);
end;

procedure Tfrm_cadastro_cliente.edLIMITE_CREDITOExit(Sender: TObject);
var vValor:Real;
begin
   if edLIMITE_CREDITO.text = '' then exit;

   try
     vValor := StrToFloat(MascToStr(edLIMITE_CREDITO.text));
     if vValor < 0 then
     begin
       wnAlerta('Cadastrar Cliente','Valor inv�lido', taLeftJustify, 12);
       edLIMITE_CREDITO.SetFocus;
       exit;
     end;
   except
     wnAlerta('Cadastrar Cliente','Valor inv�lido', taLeftJustify, 12);
     edLIMITE_CREDITO.SetFocus;
     exit;
   end;
   edLIMITE_CREDITO.text := formatFloat('#,##0.00',vValor);
end;

procedure Tfrm_cadastro_cliente.Preencher_Tela_Com_Dados_da_Consulta_CNPJ;
begin
    // Preenche a tela com dados vindos da Consulta do CNPJ
    edCNPJ.Text             := frmConsultaCNPJ.EditCNPJ.Text;
    edRAZAO_SOCIAL.Text     := SemAsteriscos(frmConsultaCNPJ.EditRazaoSocial.Text);
    edFANTASIA.Text         := SemAsteriscos(frmConsultaCNPJ.EditFantasia.Text);
    edENDERECO.Text         := SemAsteriscos(frmConsultaCNPJ.EditEndereco.Text);
    edNUMERO.Text           := SemAsteriscos(frmConsultaCNPJ.EditNumero.Text);
    edBAIRRO.Text           := SemAsteriscos(frmConsultaCNPJ.EditBairro.Text);
    edCOMPLEMENTO.Text      := SemAsteriscos(frmConsultaCNPJ.EditComplemento.Text);
    edCEP.Text              := SemAsteriscos(frmConsultaCNPJ.EditCEP.Text);
    edMUNICIPIO.Text        := SemAsteriscos(frmConsultaCNPJ.EditCidade.Text);
    edCODIGO_MUNICIPIO.Text := CodigoMunicipio(frmConsultaCNPJ.EditCidade.Text,frmConsultaCNPJ.EditUF.Text);
    edESTADO.Text           := SemAsteriscos(frmConsultaCNPJ.EditUF.Text);
    edCODIGO_UF.Text        := CodigoUF(frmConsultaCNPJ.EditUF.Text);
    edPAIS.Text             := 'BRASIL';
    edCODIGO_PAIS.Text      := '1058';
end;

Procedure Tfrm_cadastro_cliente.ProcuraRamoAtividade(pCodigo:String);
begin
   edRAMO_ATIVIDADE_DESCRICAO.Text := '';
   if pCodigo = '' then
      exit;
   edRAMO_ATIVIDADE_DESCRICAO.Text := DescricaoCAD_RAMO_ATIVIDADE(pCodigo);
   if edRAMO_ATIVIDADE_DESCRICAO.Text = '' then
   begin
     wnAlerta('Cadastrar Cliente','Ramo de Atividade n�o encontrado', taLeftJustify, 12);
     edID_CAD_RAMO_ATIVIDADE.SetFocus;
     exit;
   end;
end;

procedure Tfrm_cadastro_cliente.edArgumentoDePesquisaChange(Sender: TObject);
begin
   //Pesquisar Clientes
   Pesquisar;
end;

procedure Tfrm_cadastro_cliente.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  Action := cafree;
  self := nil;
end;

procedure Tfrm_cadastro_cliente.FormKeyPress(Sender: TObject; var Key: Char);
begin
    if key = #27 Then
    begin
      key := #0;
      Exit;
    end;

    if key = #13 Then
    begin
      key := #0;
      Perform(Wm_NextDlgCtl, 0, 0); // unit Winapi.Messages;
    end;
end;

procedure Tfrm_cadastro_cliente.FormShow(Sender: TObject);
begin
   Inicio;
end;

procedure Tfrm_cadastro_cliente.HabilitarCampos(pBoolean: Boolean);
var i : integer;
begin
   // Habilitar/Desabiitar campos do cadastro de clientes
   //---------------------------------------------------------------------------

   //Habilita Panels e padroniza bot�es de controle (ins/alt/canc/grav)
   HabilitarPanels(frm_cadastro_cliente,pBoolean);

   for i := 0 to frm_cadastro_cliente.ComponentCount - 1 do
   begin
     // TDBEdit
     if (frm_cadastro_cliente.Components[i] is TDBEdit) then
        (frm_cadastro_cliente.Components[i] as TDBEdit).ReadOnly := not pBoolean;

     // TEdit
     if (frm_cadastro_cliente.Components[i] is TEdit) then
        (frm_cadastro_cliente.Components[i] as TEdit).ReadOnly := not pBoolean;

     // TMaskEdit
     if (frm_cadastro_cliente.Components[i] is TMaskEdit) then
        (frm_cadastro_cliente.Components[i] as TMaskEdit).ReadOnly := not pBoolean;

     //TcxDateEdit
     if (frm_cadastro_cliente.Components[i] is TcxDateEdit) then
        (frm_cadastro_cliente.Components[i] as TcxDateEdit).Enabled := pBoolean;

     //TDateTimePicker
     if (frm_cadastro_cliente.Components[i] is TDateTimePicker) then
        (frm_cadastro_cliente.Components[i] as TDateTimePicker).Enabled := pBoolean;

     //TComboBox
     if (frm_cadastro_cliente.Components[i] is TComboBox) then
        (frm_cadastro_cliente.Components[i] as TComboBox).enabled := pBoolean;

     //TcxComboBox
     if (frm_cadastro_cliente.Components[i] is TcxComboBox) then
        (frm_cadastro_cliente.Components[i] as TcxComboBox).enabled := pBoolean;

     //TcxButton
     if (frm_cadastro_cliente.Components[i] is TcxButton) then
     begin
       if (frm_cadastro_cliente.Components[i] as TcxButton).tag = 3 then
          (frm_cadastro_cliente.Components[i] as TcxButton).enabled := True
       else
          (frm_cadastro_cliente.Components[i] as TcxButton).enabled := pBoolean;
     end;

     //TRadioGroup
     if (frm_cadastro_cliente.Components[i] is TRadioGroup) then
        (frm_cadastro_cliente.Components[i] as TRadioGroup).enabled := pBoolean;

     //TDBComboBox
     if (frm_cadastro_cliente.Components[i] is TDBComboBox) then
        (frm_cadastro_cliente.Components[i] as TDBComboBox).enabled := pBoolean;

   end;

   //Objetos sempre habilitados
   edArgumentoDePesquisa.Enabled:= True;
   edArgumentoDePesquisa.ReadOnly:=false;
   cbOrder.enabled              := True;
   rgPESSOA_TIPO.enabled        := True;
   rgSTATUS_CADASTRAL.enabled   := True;
   bHistoricoAlteracoes.enabled := True;
   cbHistoricoBloqueios.enabled := True;
   bt_SMC.enabled               := True;
   gpData.enabled               := True;
   btDetalhesBloqueio.enabled   := True;
   pnControles.enabled          := True;

   //Objetos sempre desabilitados
   edCODIGO.ReadOnly        := True;
   edDATA_CADASTRO.ReadOnly := True;
   edDTBLOQUEIO.ReadOnly    := True;
end;

procedure Tfrm_cadastro_cliente.Inicio;
begin
   // Ajustes iniciais ao abrir a tela
   //---------------------------------------------------------------------------

   // Impedir que haja pesquisas ao aplicar os padr�es da tela
   NaoPesquisar := true;

   // Destacar com cor prata e negrito os campos readonly
   Destacar_Campos_ReadOnly(_Cor_ReadOnly);

   // Destacar com cor cinza claro campos obrigat�rios
   Destacar_Campos_Obrigatorios(_Cor_CampoObrigatorio);

   // Pessoa F�sica
   rgPessoa.ItemIndex := 0;

   //Preencher op��es de ordenamento dos registros da consulta
   with cbOrder.Properties.Items do
   begin
      clear;
      Add('C�digo');
      Add('Raz�o Social');
      Add('Nome Fantasia');
      Add('Tipo Pessoa');
      Add('Status');
      Add('Cidade');
      Add('UF');
      // padr�o ordenar por nome fantasia
      cbOrder.ItemIndex := 2;
   end;

   //N�o escolher filtro
   Label47.Visible  := false;
   cbFiltro.Visible := false;

   // Padr�o filtrar apenas os clientes ativos
   rgSTATUS_CADASTRAL.ItemIndex := 0;

   // Padr�o filtrar Ativos
   rgSTATUS_CADASTRAL.ItemIndex := 0;

   // Padr�o filtrar todos
   rgPESSOA_TIPO.ItemIndex := 2;

   // Permitir que haja pesquisas com argumentos filtrados pelo usu�rio
   NaoPesquisar := false;

   //Impedir edi��o dos campos da tela
   HabilitarCampos(False);

   //Habilita/Desabilita bot�es
   So_Pode_Incluir;

   //Posicionar na aba de consulta
   Ir_Para_Consulta;
end;

procedure Tfrm_cadastro_cliente.InserirRegistro;
var qAUX   : tFDQuery;
    vCodigo: Integer;
begin
   qAUX := TFDQuery.Create(nil);
   qAUX.Connection := Module.connection;
   qAUX.ConnectionName := 'connection';

   qAUX.close;
   qAUX.sql.clear;
   qAUX.sql.add('INSERT INTO CLIENTE              ');
   qAUX.sql.add('     ( CODIGO,                   ');
   qAUX.sql.add('       CLI_EMP_CODIGO,           ');
   qAUX.sql.add('       PESSOA_TIPO,              ');
   qAUX.sql.add('       DATA_CADASTRO,            ');
   qAUX.sql.add('       STATUS_CADASTRAL,         ');
   qAUX.sql.add('       BLOQUEADO,                ');
   qAUX.sql.add('       RAZAO_SOCIAL,             ');
   qAUX.sql.add('       FANTASIA,                 ');
   qAUX.sql.add('       CNPJ,                     ');
   qAUX.sql.add('       CPF,                      ');
   qAUX.sql.add('       RG,                       ');
   qAUX.sql.add('       ORGAO_EMISSOR,            ');
   qAUX.sql.add('       INSCRICAO_ESTADUAL,       ');
   qAUX.sql.add('       INSCRICAO_MUNICIPAL,      ');
   qAUX.sql.add('       TRIBUTACAO_ICMS,          ');
   //qAUX.sql.add('       CRT_CODIGO_REGIME_TRIBUTARIO,');
   qAUX.sql.add('       SUFRAMA,                  ');
   qAUX.sql.add('       SEXO,                     ');
   qAUX.sql.add('       SITUACAO_FINANCEIRA,      ');
   qAUX.sql.add('       LIMITE_CREDITO,           ');
   qAUX.sql.add('       DATA_EMISSAO,             ');
   qAUX.sql.add('       DATA_NASCIMENTO,          ');
   qAUX.sql.add('       ID_CAD_RAMO_ATIVIDADE,    ');
   qAUX.sql.add('       EMP_ALTEROU,              ');
   qAUX.sql.add('       USUALTEROU,               ');
   qAUX.sql.add('       DTALTEROU,                ');
   qAUX.sql.add('       HRALTEROU,                ');
   qAUX.sql.add('       MAQALTEROU,               ');
   qAUX.sql.add('       TELEFONE,                 ');
   qAUX.sql.add('       TELEFONE_1,               ');
   qAUX.sql.add('       TELEFONE_2,               ');
   qAUX.sql.add('       CELULAR,                  ');
   qAUX.sql.add('       CELULAR_1,                ');
   qAUX.sql.add('       WhatsApp,                 ');
   qAUX.sql.add('       EMAIL,                    ');
   qAUX.sql.add('       EMAIL_1,                  ');
   qAUX.sql.add('       EMAIL_2,                  ');
   qAUX.sql.add('       Site_HomePage,            ');

   qAUX.sql.add('       PROPRIETARIO_NOME,        ');
   qAUX.sql.add('       PROPRIETARIO_FONE,        ');
   qAUX.sql.add('       PROPRIETARIO_RAMAL,       ');
   qAUX.sql.add('       PROPRIETARIO_CELULAR1,    ');
   qAUX.sql.add('       PROPRIETARIO_CELULAR2,    ');
   qAUX.sql.add('       PROPRIETARIO_WHATSAPP,    ');
   qAUX.sql.add('       PROPRIETARIO_EMAIL1,      ');
   qAUX.sql.add('       PROPRIETARIO_EMAIL2,      ');

   qAUX.sql.add('       CONTATO_NOME,             ');
   qAUX.sql.add('       CONTATO_FONE,             ');
   qAUX.sql.add('       CONTATO_RAMAL,            ');
   qAUX.sql.add('       CONTATO_CELULAR,          ');
   qAUX.sql.add('       CONTATO_CELULAR2,         ');
   qAUX.sql.add('       CONTATO_WHATSAPP,         ');
   qAUX.sql.add('       CONTATO_EMAIL1,           ');
   qAUX.sql.add('       CONTATO_EMAIL2,           ');

   qAUX.sql.add('       CEP,                      ');
   qAUX.sql.add('       ENDERECO,                 ');
   qAUX.sql.add('       NUMERO,                   ');
   qAUX.sql.add('       BAIRRO,                   ');
   qAUX.sql.add('       COMPLEMENTO,              ');
   qAUX.sql.add('       MUNICIPIO,                ');
   if edCODIGO_MUNICIPIO.Text <> '' then
      qAUX.sql.add('       CODIGO_MUNICIPIO,      ');
   qAUX.sql.add('       ZONA,                     ');
   if edID_REGIAO.Text <> '' Then
      qAUX.sql.add('       ID_REGIAO,             ');
   qAUX.sql.add('       ESTADO,                   ');
   if edCODIGO_UF.Text <> '' Then
      qAUX.sql.add('       CODIGO_UF,             ');
   qAUX.sql.add('       PAIS,                     ');
   if edCODIGO_PAIS.Text <> '' Then
      qAUX.sql.add('       CODIGO_PAIS,           ');

   qAUX.sql.add('       COBRANCA_CEP,             ');
   qAUX.sql.add('       COBRANCA_ENDERECO,        ');
   qAUX.sql.add('       COBRANCA_NUMERO,          ');
   qAUX.sql.add('       COBRANCA_BAIRRO,          ');
   qAUX.sql.add('       COBRANCA_COMPLEMENTO,     ');
   qAUX.sql.add('       COBRANCA_MUNICIPIO,       ');
   if edCOBRANCA_CODIGO_MUNICIPIO.Text <> '' then
      qAUX.sql.add('       COBRANCA_CODIGO_MUNICIPIO,');
   qAUX.sql.add('       COBRANCA_ZONA,            ');
   if edCOBRANCA_ID_REGIAO.Text <> '' then
      qAUX.sql.add('       COBRANCA_ID_REGIAO,    ');
   qAUX.sql.add('       COBRANCA_ESTADO,          ');
   if edCOBRANCA_CODIGO_UF.Text <> '' then
      qAUX.sql.add('       COBRANCA_CODIGO_UF,    ');
   qAUX.sql.add('       COBRANCA_PAIS,            ');
   if edCOBRANCA_CODIGO_PAIS.Text <> '' then
      qAUX.sql.add('       COBRANCA_CODIGO_PAIS,  ');

   qAUX.sql.add('       ENTREGA_CEP,              ');
   qAUX.sql.add('       ENTREGA_ENDERECO,         ');
   qAUX.sql.add('       ENTREGA_NUMERO,           ');
   qAUX.sql.add('       ENTREGA_BAIRRO,           ');
   qAUX.sql.add('       ENTREGA_COMPLEMENTO,      ');
   qAUX.sql.add('       ENTREGA_MUNICIPIO,        ');
   if edENTREGA_CODIGO_MUNICIPIO.Text <> '' then
      qAUX.sql.add('       ENTREGA_CODIGO_MUNICIPIO,');
   qAUX.sql.add('       ENTREGA_ZONA,             ');
   if edENTREGA_ID_REGIAO.Text <> '' then
      qAUX.sql.add('       ENTREGA_ID_REGIAO,     ');
   qAUX.sql.add('       ENTREGA_ESTADO,           ');
   if edENTREGA_CODIGO_UF.Text <> '' Then
      qAUX.sql.add('       ENTREGA_CODIGO_UF,     ');
   qAUX.sql.add('       ENTREGA_PAIS             ');
   if edENTREGA_CODIGO_PAIS.Text <> '' then
      qAUX.sql.add(',   ENTREGA_CODIGO_PAIS    ');

   qAUX.sql.add('     )                           ');
   qAUX.sql.add('VALUES                           ');
   qAUX.sql.add('     (:CODIGO,                   ');
   qAUX.sql.add('      :CLI_EMP_CODIGO,           ');
   qAUX.sql.add('      :PESSOA_TIPO,              ');
   qAUX.sql.add('      :DATA_CADASTRO,            ');
   qAUX.sql.add('      :STATUS_CADASTRAL,         ');
   qAUX.sql.add('      :BLOQUEADO,                ');
   qAUX.sql.add('      :RAZAO_SOCIAL,             ');
   qAUX.sql.add('      :FANTASIA,                 ');
   qAUX.sql.add('      :CNPJ,                     ');
   qAUX.sql.add('      :CPF,                      ');
   qAUX.sql.add('      :RG,                       ');
   qAUX.sql.add('      :ORGAO_EMISSOR,            ');
   qAUX.sql.add('      :INSCRICAO_ESTADUAL,       ');
   qAUX.sql.add('      :INSCRICAO_MUNICIPAL,      ');
   qAUX.sql.add('      :TRIBUTACAO_ICMS,          ');
   //qAUX.sql.add('      :CRT_CODIGO_REGIME_TRIBUTARIO,');
   qAUX.sql.add('      :SUFRAMA,                  ');
   qAUX.sql.add('      :SEXO,                     ');
   qAUX.sql.add('      :SITUACAO_FINANCEIRA,      ');
   qAUX.sql.add('      :LIMITE_CREDITO,           ');
   qAUX.sql.add('      :DATA_EMISSAO,             ');
   qAUX.sql.add('      :DATA_NASCIMENTO,          ');
   qAUX.sql.add('      :ID_CAD_RAMO_ATIVIDADE,    ');
   qAUX.sql.add('      :EMP_ALTEROU,              ');
   qAUX.sql.add('      :USUALTEROU,               ');
   qAUX.sql.add('      :DTALTEROU,                ');
   qAUX.sql.add('      :HRALTEROU,                ');
   qAUX.sql.add('      :MAQALTEROU,               ');
   qAUX.sql.add('      :TELEFONE,                 ');
   qAUX.sql.add('      :TELEFONE_1,               ');
   qAUX.sql.add('      :TELEFONE_2,               ');
   qAUX.sql.add('      :CELULAR,                  ');
   qAUX.sql.add('      :CELULAR_1,                ');
   qAUX.sql.add('      :WhatsApp,                 ');
   qAUX.sql.add('      :EMAIL,                    ');
   qAUX.sql.add('      :EMAIL_1,                  ');
   qAUX.sql.add('      :EMAIL_2,                  ');
   qAUX.sql.add('      :Site_HomePage,            ');

   qAUX.sql.add('      :PROPRIETARIO_NOME,        ');
   qAUX.sql.add('      :PROPRIETARIO_FONE,        ');
   qAUX.sql.add('      :PROPRIETARIO_RAMAL,       ');
   qAUX.sql.add('      :PROPRIETARIO_CELULAR1,    ');
   qAUX.sql.add('      :PROPRIETARIO_CELULAR2,    ');
   qAUX.sql.add('      :PROPRIETARIO_WHATSAPP,    ');
   qAUX.sql.add('      :PROPRIETARIO_EMAIL1,      ');
   qAUX.sql.add('      :PROPRIETARIO_EMAIL2,      ');

   qAUX.sql.add('      :CONTATO_NOME,             ');
   qAUX.sql.add('      :CONTATO_FONE,             ');
   qAUX.sql.add('      :CONTATO_RAMAL,            ');
   qAUX.sql.add('      :CONTATO_CELULAR,          ');
   qAUX.sql.add('      :CONTATO_CELULAR2,         ');
   qAUX.sql.add('      :CONTATO_WHATSAPP,         ');
   qAUX.sql.add('      :CONTATO_EMAIL1,           ');
   qAUX.sql.add('      :CONTATO_EMAIL2,           ');

   qAUX.sql.add('      :CEP,                      ');
   qAUX.sql.add('      :ENDERECO,                 ');
   qAUX.sql.add('      :NUMERO,                   ');
   qAUX.sql.add('      :BAIRRO,                   ');
   qAUX.sql.add('      :COMPLEMENTO,              ');
   qAUX.sql.add('      :MUNICIPIO,                ');
   if edCODIGO_MUNICIPIO.Text <> '' then
      qAUX.sql.add('      :CODIGO_MUNICIPIO,      ');
   qAUX.sql.add('      :ZONA,                     ');
   if edID_REGIAO.Text <> '' Then
      qAUX.sql.add('      :ID_REGIAO,             ');
   qAUX.sql.add('      :ESTADO,                   ');
   if edCODIGO_UF.Text <> '' Then
      qAUX.sql.add('      :CODIGO_UF,             ');
   qAUX.sql.add('      :PAIS,                     ');
   if edCODIGO_PAIS.Text <> '' Then
      qAUX.sql.add('      :CODIGO_PAIS,           ');

   qAUX.sql.add('      :COBRANCA_CEP,             ');
   qAUX.sql.add('      :COBRANCA_ENDERECO,        ');
   qAUX.sql.add('      :COBRANCA_NUMERO,          ');
   qAUX.sql.add('      :COBRANCA_BAIRRO,          ');
   qAUX.sql.add('      :COBRANCA_COMPLEMENTO,     ');
   qAUX.sql.add('      :COBRANCA_MUNICIPIO,       ');
   if edCOBRANCA_CODIGO_MUNICIPIO.Text <> '' then
      qAUX.sql.add('      :COBRANCA_CODIGO_MUNICIPIO,');
   qAUX.sql.add('      :COBRANCA_ZONA,            ');
   if edCOBRANCA_ID_REGIAO.Text <> '' then
      qAUX.sql.add('      :COBRANCA_ID_REGIAO,    ');
   qAUX.sql.add('      :COBRANCA_ESTADO,          ');
   if edCOBRANCA_CODIGO_UF.Text <> '' then
      qAUX.sql.add('      :COBRANCA_CODIGO_UF,    ');
   qAUX.sql.add('      :COBRANCA_PAIS,            ');
   if edCOBRANCA_CODIGO_PAIS.Text <> '' then
      qAUX.sql.add('      :COBRANCA_CODIGO_PAIS,  ');

   qAUX.sql.add('      :ENTREGA_CEP,              ');
   qAUX.sql.add('      :ENTREGA_ENDERECO,         ');
   qAUX.sql.add('      :ENTREGA_NUMERO,           ');
   qAUX.sql.add('      :ENTREGA_BAIRRO,           ');
   qAUX.sql.add('      :ENTREGA_COMPLEMENTO,      ');
   qAUX.sql.add('      :ENTREGA_MUNICIPIO,        ');
   if edENTREGA_CODIGO_MUNICIPIO.Text <> '' then
     qAUX.sql.add('      :ENTREGA_CODIGO_MUNICIPIO,');
   qAUX.sql.add('      :ENTREGA_ZONA,             ');
   if edENTREGA_ID_REGIAO.Text <> '' then
      qAUX.sql.add('      :ENTREGA_ID_REGIAO,     ');
   qAUX.sql.add('      :ENTREGA_ESTADO,           ');
   if edENTREGA_CODIGO_UF.Text <> '' Then
      qAUX.sql.add('      :ENTREGA_CODIGO_UF,     ');
   qAUX.sql.add('      :ENTREGA_PAIS             ');
   if edENTREGA_CODIGO_PAIS.Text <> '' then
      qAUX.sql.add(',  :ENTREGA_CODIGO_PAIS    ');
   qAUX.sql.add('     )                           ');

   //Codigo
   if edCodigo.Text = '' then
   begin
      vCodigo := ProximoClienteCODIGO;
      if edNOME.Text <> '' then
         RegistraLog('Cadastrou Cliente '+IntToStr(vCodigo)+'-'+edNOME.Text)
      else
         RegistraLog('Cadastrou Cliente '+IntToStr(vCodigo)+'-'+edRAZAO_SOCIAL.Text);
   end
   else
   begin
      vCodigo := StrToInt(edCodigo.Text);
      if edNOME.Text <> '' then
         RegistraLog('Alterou Cliente '+IntToStr(vCodigo)+'-'+edNOME.Text)
      else
         RegistraLog('Alterou Cliente '+IntToStr(vCodigo)+'-'+edRAZAO_SOCIAL.Text);
   end;

   qAUX.ParamByName('CODIGO'                    ).AsInteger := vCodigo;

   //Empresa que cadastrou
   if edCLI_EMP_CODIGO.text = '' then
      edCLI_EMP_CODIGO.text := '0';
   qAUX.ParamByName('CLI_EMP_CODIGO'            ).AsString  := edCLI_EMP_CODIGO.text;

   //Tipo Pessoa (F/J)
   if rgPESSOA.ItemIndex = 0  then
      qAUX.ParamByName('PESSOA_TIPO'            ).AsString := 'FISICA'
   else
      qAUX.ParamByName('PESSOA_TIPO'            ).AsString := 'JURIDICA';

   //Data Cadastro
   if edCodigo.Text = '' then
      qAUX.ParamByName('DATA_CADASTRO'          ).AsDateTime := DataServidor
   else
   if edDATA_CADASTRO.Text = '  /  /  ' then
      qAUX.ParamByName('DATA_CADASTRO'          ).AsDateTime := DataServidor
   else
      qAUX.ParamByName('DATA_CADASTRO'          ).AsDateTime := StrToDate(edDATA_CADASTRO.Text);

   //Situa��o Cadastral
   Case cbSituacaoCadastral.ItemIndex of
      0 : begin
            qAUX.ParamByName('STATUS_CADASTRAL').AsString := 'ATIVO';
            qAUX.ParamByName('BLOQUEADO'       ).AsString := 'NAO';
          end;
      1 : begin
            qAUX.ParamByName('STATUS_CADASTRAL').AsString := 'INATIVO';
            qAUX.ParamByName('BLOQUEADO'       ).AsString := 'NAO';
          end;
      2 : begin
            qAUX.ParamByName('STATUS_CADASTRAL').AsString := 'ATIVO';
            qAUX.ParamByName('BLOQUEADO'       ).AsString := 'SIM';
          end;
   end;

   if rgPESSOA.ItemIndex = 0  then
   begin
      // Pessoa F�sica
      qAUX.ParamByName('RAZAO_SOCIAL'      ).AsString := edNOME.Text;
      qAUX.ParamByName('FANTASIA'          ).AsString := '';
      qAUX.ParamByName('CNPJ'              ).AsString := '';
      qAUX.ParamByName('CPF'               ).AsString := removercaracteresespeciais(edCPF.Text);
      qAUX.ParamByName('RG'                ).AsString := edRG.Text;
      qAUX.ParamByName('ORGAO_EMISSOR'     ).AsString := edORGAO_EMISSOR.Text;
      qAUX.ParamByName('INSCRICAO_ESTADUAL').AsString := edINSCRICAO_ESTADUAL_PF.Text;
   end
   else
   begin
      // Pessoa Jur�dica
      qAUX.ParamByName('RAZAO_SOCIAL'      ).AsString := edRAZAO_SOCIAL.Text;
      qAUX.ParamByName('FANTASIA'          ).AsString := edFANTASIA.Text;
      qAUX.ParamByName('CNPJ'              ).AsString := removercaracteresespeciais(edCPF.Text);
      qAUX.ParamByName('CPF'               ).AsString := '';
      qAUX.ParamByName('RG'                ).AsString := '';
      qAUX.ParamByName('ORGAO_EMISSOR'     ).AsString := '';
      qAUX.ParamByName('INSCRICAO_ESTADUAL').AsString := edINSCRICAO_ESTADUAL_PJ.Text;
   end;

   qAUX.ParamByName('INSCRICAO_MUNICIPAL'       ).AsString  := edINSCRICAO_MUNICIPAL.Text;
   qAUX.ParamByName('TRIBUTACAO_ICMS'           ).AsInteger := cbTRIBUTACAO_ICMS.ItemIndex;
   //if rgCRT_CODIGO_REGIME_TRIBUTARIO.ItemIndex = -1 then
   //   rgCRT_CODIGO_REGIME_TRIBUTARIO.ItemIndex := 0;
   //qAUX.ParamByName('CRT_CODIGO_REGIME_TRIBUTARIO'  ).AsInteger := rgCRT_CODIGO_REGIME_TRIBUTARIO.ItemIndex;
   qAUX.ParamByName('SUFRAMA'                   ).AsString  := edSUFRAMA.Text;

   //Sexo
   if cbSexo.ItemIndex = 1 then
      qAUX.ParamByName('SEXO').AsString := 'MASCULINO'
   else
      qAUX.ParamByName('SEXO').AsString := 'FEMININO';

   //Situa��o Financeira
   Case cbSITUACAO_FINANCEIRA.ItemIndex of
      0 : qAUX.ParamByName('SITUACAO_FINANCEIRA').AsString   := 'ATIVO';
      1 : qAUX.ParamByName('SITUACAO_FINANCEIRA').AsString   := 'BLOQUEADO PARCIAL';
      2 : qAUX.ParamByName('SITUACAO_FINANCEIRA').AsString   := 'BLOQUEADO';
     -1 : qAUX.ParamByName('SITUACAO_FINANCEIRA').AsString   := '';
   End;

   //Limite de Cr�dito
   if edLIMITE_CREDITO.Text = '' then
      edLIMITE_CREDITO.Text := '0';
   qAUX.ParamByName('LIMITE_CREDITO'            ).AsFloat    := StrToFloat(mascToStr(edLIMITE_CREDITO.Text));

   //Emiss�o RG
   if edDATA_EMISSAO.Text = '' then
      qAUX.ParamByName('DATA_EMISSAO'           ).AsDateTime := 0
   else
      qAUX.ParamByName('DATA_EMISSAO'           ).AsDateTime := StrToDate(edDATA_EMISSAO.Text);

   // Data de Nascimento
   if edDATA_NASCIMENTO.Text = '  /  /  ' then
      qAUX.ParamByName('DATA_NASCIMENTO'        ).AsDateTime := 0
   else
      qAUX.ParamByName('DATA_NASCIMENTO'        ).AsDateTime := StrToDate(edDATA_NASCIMENTO.Text);

   // Ramo de Atividade
   if edID_CAD_RAMO_ATIVIDADE.Text = '' then
      edID_CAD_RAMO_ATIVIDADE.Text := '0';
   qAUX.ParamByName('ID_CAD_RAMO_ATIVIDADE'     ).AsInteger := StrToInt(edID_CAD_RAMO_ATIVIDADE.Text);

   //Dados da �ltima altera��o
   qAUX.ParamByName('EMP_ALTEROU'               ).AsString  := Global_Filial_Em_Uso;
   qAUX.ParamByName('USUALTEROU'                ).AsString  := Global_Usuario_Logado;
   qAUX.ParamByName('DTALTEROU'                 ).AsDateTime:= DataServidor;
   qAUX.ParamByName('HRALTEROU'                 ).AsString  := HoraServidor;
   qAUX.ParamByName('MAQALTEROU'                ).AsString  := NomeComputador;

   qAUX.ParamByName('TELEFONE'                  ).AsString  := edTELEFONE.Text;
   qAUX.ParamByName('TELEFONE_1'                ).AsString  := edTELEFONE_1.Text;
   qAUX.ParamByName('TELEFONE_2'                ).AsString  := edTELEFONE_2.Text;
   qAUX.ParamByName('CELULAR'                   ).AsString  := edCELULAR.Text;
   qAUX.ParamByName('CELULAR_1'                 ).AsString  := edCELULAR_1.Text;
   qAUX.ParamByName('WhatsApp'                  ).AsString  := edWhatsApp.Text;
   qAUX.ParamByName('EMAIL'                     ).AsString  := edEMAIL.Text;
   qAUX.ParamByName('EMAIL_1'                   ).AsString  := edEMAIL_1.Text;
   qAUX.ParamByName('EMAIL_2'                   ).AsString  := edEMAIL_2.Text;
   qAUX.ParamByName('Site_HomePage'             ).AsString  := edSite_HomePage.Text;

   qAUX.ParamByName('PROPRIETARIO_NOME'         ).AsString  := edPROPRIETARIO_NOME.Text;
   qAUX.ParamByName('PROPRIETARIO_FONE'         ).AsString  := edPROPRIETARIO_FONE.Text;
   qAUX.ParamByName('PROPRIETARIO_RAMAL'        ).AsString  := edPROPRIETARIO_RAMAL.Text;
   qAUX.ParamByName('PROPRIETARIO_CELULAR1'     ).AsString  := edPROPRIETARIO_CELULAR1.Text;
   qAUX.ParamByName('PROPRIETARIO_CELULAR2'     ).AsString  := edPROPRIETARIO_CELULAR2.Text;
   qAUX.ParamByName('PROPRIETARIO_WHATSAPP'     ).AsString  := edPROPRIETARIO_WHATSAPP.Text;
   qAUX.ParamByName('PROPRIETARIO_EMAIL1'       ).AsString  := edPROPRIETARIO_EMAIL1.Text;
   qAUX.ParamByName('PROPRIETARIO_EMAIL2'       ).AsString  := edPROPRIETARIO_EMAIL2.Text;

   qAUX.ParamByName('CONTATO_NOME'              ).AsString  := edCONTATO_NOME.Text;
   qAUX.ParamByName('CONTATO_FONE'              ).AsString  := edCONTATO_FONE.Text;
   qAUX.ParamByName('CONTATO_RAMAL'             ).AsString  := edCONTATO_RAMAL.Text;
   qAUX.ParamByName('CONTATO_CELULAR'           ).AsString  := edCONTATO_CELULAR.Text;
   qAUX.ParamByName('CONTATO_CELULAR2'          ).AsString  := edCONTATO_CELULAR2.Text;
   qAUX.ParamByName('CONTATO_WHATSAPP'          ).AsString  := edCONTATO_WHATSAPP.Text;
   qAUX.ParamByName('CONTATO_EMAIL1'            ).AsString  := edCONTATO_EMAIL1.Text;
   qAUX.ParamByName('CONTATO_EMAIL2'            ).AsString  := edCONTATO_EMAIL2.Text;

   qAUX.ParamByName('CEP'                       ).AsString  := edCEP.Text;
   qAUX.ParamByName('ENDERECO'                  ).AsString  := edENDERECO.Text;
   qAUX.ParamByName('NUMERO'                    ).AsString  := edNUMERO.Text;
   qAUX.ParamByName('BAIRRO'                    ).AsString  := edBAIRRO.Text;
   qAUX.ParamByName('COMPLEMENTO'               ).AsString  := edCOMPLEMENTO.Text;
   qAUX.ParamByName('MUNICIPIO'                 ).AsString  := edMUNICIPIO.Text;
   if edCODIGO_MUNICIPIO.Text <> '' then
      qAUX.ParamByName('CODIGO_MUNICIPIO'       ).AsInteger := StrToInt(edCODIGO_MUNICIPIO.Text);
   qAUX.ParamByName('ZONA'                      ).AsString  := edZONA.Text;

   if edID_REGIAO.Text <> '' Then
      qAUX.ParamByName('ID_REGIAO'              ).AsInteger := StrToInt(edID_REGIAO.Text);
   qAUX.ParamByName('ESTADO'                    ).AsString  := edESTADO.Text;

   if edCODIGO_UF.Text <> '' Then
      qAUX.ParamByName('CODIGO_UF'              ).AsInteger := StrToInt(edCODIGO_UF.Text);

   qAUX.ParamByName('PAIS'                      ).AsString  := edPAIS.Text;

   if edCODIGO_PAIS.Text <> '' Then
      qAUX.ParamByName('CODIGO_PAIS'            ).AsInteger := StrToInt(edCODIGO_PAIS.Text);

   qAUX.ParamByName('COBRANCA_CEP'              ).AsString  := edCOBRANCA_CEP.Text;
   qAUX.ParamByName('COBRANCA_ENDERECO'         ).AsString  := edCOBRANCA_ENDERECO.Text;
   qAUX.ParamByName('COBRANCA_NUMERO'           ).AsString  := edCOBRANCA_NUMERO.Text;
   qAUX.ParamByName('COBRANCA_BAIRRO'           ).AsString  := edCOBRANCA_BAIRRO.Text;
   qAUX.ParamByName('COBRANCA_COMPLEMENTO'      ).AsString  := edCOBRANCA_COMPLEMENTO.Text;
   qAUX.ParamByName('COBRANCA_MUNICIPIO'        ).AsString  := edCOBRANCA_MUNICIPIO.Text;

   if edCOBRANCA_CODIGO_MUNICIPIO.Text <> '' then
      qAUX.ParamByName('COBRANCA_CODIGO_MUNICIPIO' ).AsInteger := StrToInt(edCOBRANCA_CODIGO_MUNICIPIO.Text);

   qAUX.ParamByName('COBRANCA_ZONA'             ).AsString  := edCOBRANCA_ZONA.Text;

   if edCOBRANCA_ID_REGIAO.Text <> '' then
      qAUX.ParamByName('COBRANCA_ID_REGIAO'     ).AsInteger := StrToInt(edCOBRANCA_ID_REGIAO.Text);

   qAUX.ParamByName('COBRANCA_ESTADO'           ).AsString  := edCOBRANCA_ESTADO.Text;

   if edCOBRANCA_CODIGO_UF.Text <> '' then
      qAUX.ParamByName('COBRANCA_CODIGO_UF'     ).AsInteger := StrToInt(edCOBRANCA_CODIGO_UF.Text);

   qAUX.ParamByName('COBRANCA_PAIS'             ).AsString  := edCOBRANCA_PAIS.Text;

   if edCOBRANCA_CODIGO_PAIS.Text <> '' then
      qAUX.ParamByName('COBRANCA_CODIGO_PAIS'   ).AsInteger := StrToInt(edCOBRANCA_CODIGO_PAIS.Text);

   qAUX.ParamByName('ENTREGA_CEP'               ).AsString  := edENTREGA_CEP.Text;
   qAUX.ParamByName('ENTREGA_ENDERECO'          ).AsString  := edENTREGA_ENDERECO.Text;
   qAUX.ParamByName('ENTREGA_NUMERO'            ).AsString  := edENTREGA_NUMERO.Text;
   qAUX.ParamByName('ENTREGA_BAIRRO'            ).AsString  := edENTREGA_BAIRRO.Text;
   qAUX.ParamByName('ENTREGA_COMPLEMENTO'       ).AsString  := edENTREGA_COMPLEMENTO.Text;
   qAUX.ParamByName('ENTREGA_MUNICIPIO'         ).AsString  := edENTREGA_MUNICIPIO.Text;

   if edENTREGA_CODIGO_MUNICIPIO.Text <> '' then
      qAUX.ParamByName('ENTREGA_CODIGO_MUNICIPIO').AsInteger  := StrToInt(edENTREGA_CODIGO_MUNICIPIO.Text);

   qAUX.ParamByName('ENTREGA_ZONA'              ).AsString  := edENTREGA_ZONA.Text;

   if edENTREGA_ID_REGIAO.Text <> '' then
      qAUX.ParamByName('ENTREGA_ID_REGIAO'      ).AsInteger := StrToInt(edENTREGA_ID_REGIAO.Text);

   qAUX.ParamByName('ENTREGA_ESTADO'            ).AsString  := edENTREGA_ESTADO.Text;

   if edENTREGA_CODIGO_UF.Text <> '' Then
      qAUX.ParamByName('ENTREGA_CODIGO_UF'      ).AsInteger := StrToInt(edENTREGA_CODIGO_UF.Text);

   qAUX.ParamByName('ENTREGA_PAIS'              ).AsString  := edENTREGA_PAIS.Text;

   if edENTREGA_CODIGO_PAIS.Text <> '' then
      qAUX.ParamByName('ENTREGA_CODIGO_PAIS'    ).AsInteger := StrToInt(edENTREGA_CODIGO_PAIS.Text);

   qAUX.ExecSQL;

   qAUX.Free;
end;

procedure Tfrm_cadastro_cliente.Ir_Para_Consulta;
begin
   //limpar todos os campos da tela
   Limpa_Tela;

   //Posicionar na aba de consulta
   //e no campo consulta
   page_Control.ActivePageIndex := 0;
   edArgumentoDePesquisa.SetFocus;
end;

function Tfrm_cadastro_cliente.JaExisteCPF(pCPF, pCODIGO: String): Boolean;
var qAUX: tFDQuery;
begin
   //Verifica se j� existe outro cliente com este CPF...
   //---------------------------------------------------------------------------
   result := false;
   if pCPF    = '' then exit;

   qAUX := TFDQuery.Create(nil);
   qAUX.Connection := Module.connection;
   qAUX.ConnectionName := 'connection';

   qAUX.close;
   qAUX.sql.clear;
   qAUX.sql.add('SELECT RAZAO_SOCIAL     ');
   qAUX.sql.add('  FROM CLIENTE          ');
   qAUX.sql.add(' WHERE CODIGO <> :CODIGO');
   qAUX.sql.add('   AND CPF    =  :CPF   ');
   qAUX.ParamByName('CODIGO').AsString := pCODIGO;
   qAUX.ParamByName('CPF'   ).AsString := removercaracteresespeciais(pCPF);
   qAUX.Open;
   if not qAUX.Eof then
   begin
      wnAlerta('Cadastrar Cliente','Este CPF pertence ao cliente '
              + slinebreak
              + slinebreak
              + qAUX.FieldByName('RAZAO_SOCIAL').AsString,
              taLeftJustify, 12);
      result := True;
   end;
   qAUX.Free;
end;

function Tfrm_cadastro_cliente.JaExisteCNPJ(pCNPJ, pCODIGO: String): Boolean;
var qAUX: tFDQuery;
begin
   //Verifica se j� existe outro cliente com este CNPJ...
   //---------------------------------------------------------------------------
   result := false;
   if pCNPJ   = '' then exit;

   qAUX := TFDQuery.Create(nil);
   qAUX.Connection := Module.connection;
   qAUX.ConnectionName := 'connection';

   qAUX.close;
   qAUX.sql.clear;
   qAUX.sql.add('SELECT RAZAO_SOCIAL     ');
   qAUX.sql.add('  FROM CLIENTE          ');
   qAUX.sql.add(' WHERE CODIGO <> :CODIGO');
   qAUX.sql.add('   AND CNPJ   =  :CNPJ  ');
   qAUX.ParamByName('CODIGO').AsString := pCODIGO;
   qAUX.ParamByName('CNPJ'  ).AsString := removercaracteresespeciais(pCNPJ);
   qAUX.Open;
   if not qAUX.Eof then
   begin
      wnAlerta('Cadastrar Cliente','Este CNPJ pertence ao cliente '
              + slinebreak
              + slinebreak
              + qAUX.FieldByName('RAZAO_SOCIAL').AsString,
              taLeftJustify, 12);
      result := True;
   end;
   qAUX.Free;
end;

procedure Tfrm_cadastro_cliente.Limpa_Tela;
var i : integer;
begin
   // Limpar todos os campos da tela
   //---------------------------------------------------------------------------
   for i := 0 to frm_cadastro_cliente.ComponentCount - 1 do
   begin
     // TDBEdit
     if (frm_cadastro_cliente.Components[i] is TDBEdit) then
        (frm_cadastro_cliente.Components[i] as TDBEdit).Text := '';

     // TEdit
     if (frm_cadastro_cliente.Components[i] is TEdit) then
        (frm_cadastro_cliente.Components[i] as TEdit).Text := '';

     // TMaskEdit
     if (frm_cadastro_cliente.Components[i] is TMaskEdit) then
        (frm_cadastro_cliente.Components[i] as TMaskEdit).Text := '';

     //TDateTimePicker
     if (frm_cadastro_cliente.Components[i] is TDateTimePicker) then
        (frm_cadastro_cliente.Components[i] as TDateTimePicker).DateTime := Date;

     //TComboBox
     if (frm_cadastro_cliente.Components[i] is TComboBox) then
        (frm_cadastro_cliente.Components[i] as TComboBox).ItemIndex := -1;

     //TRadioGroup
     if (frm_cadastro_cliente.Components[i] is TRadioGroup) then
     begin
        if ((frm_cadastro_cliente.Components[i] as TRadioGroup).Name <>'rgPESSOA_TIPO'     ) and
           ((frm_cadastro_cliente.Components[i] as TRadioGroup).Name <>'rgSTATUS_CADASTRAL') then
           (frm_cadastro_cliente.Components[i] as TRadioGroup).ItemIndex := -1;
     end;
     //TcxComboBox
     if (frm_cadastro_cliente.Components[i] is TcxComboBox) then
     begin
        if ((frm_cadastro_cliente.Components[i] as TcxComboBox).Name <>'cbOrder' ) and
           ((frm_cadastro_cliente.Components[i] as TcxComboBox).Name <>'cbFiltro') then
           (frm_cadastro_cliente.Components[i] as TcxComboBox).ItemIndex := -1;
     end;
   end;
   pcContatos.ActivePageIndex  := 0;
   pcEnderecos.ActivePageIndex := 0;
end;

procedure Tfrm_cadastro_cliente.Mostrar_Cliente;
begin
   // Carregar Campos do cadastro do cliente
   //---------------------------------------------------------------------------
   pcContatos.ActivePageIndex  := 0;
   pcEnderecos.ActivePageIndex := 0;
edCODIGO.Text := qConsulta.FieldByName('CODIGO').AsString;

   if qConsulta.FieldByName('PESSOA_TIPO').AsString = 'FISICA' then
      rgPESSOA.ItemIndex := 0
   else
      rgPESSOA.ItemIndex := 1;

   edDATA_CADASTRO.Text := qConsulta.FieldByName('DATA_CADASTRO').AsString;

   cbSituacaoCadastral.ItemIndex := -1;
   if qConsulta.FieldByName('STATUS_CADASTRAL').AsString = 'ATIVO' then
   begin
     //Cliente ativo: N�o mostrar quando foi inativado
     edDTBLOQUEIO.Visible      := False;
     lbInativo.Visible         := False;
     lbDetalhesBloqueio.Visible:= False;
     btDetalhesBloqueio.Visible:= False;
     cbSituacaoCadastral.ItemIndex := 0;
     //Exibir nome em verde
     edRAZAO_SOCIAL.Font.Color := clGreen;
     edFANTASIA.Font.Color     := clGreen;
     edNOME.Font.Color         := clGreen;
   end
   else
   begin
     //Cliente inativo: Mostrar quando foi inativado
     edDTBLOQUEIO.Visible      := True;
     lbInativo.Visible         := True;
     lbDetalhesBloqueio.Visible:= True;
     btDetalhesBloqueio.Visible:= True;
     cbSituacaoCadastral.ItemIndex := 1;
     //Exibir nome em vermelho
     edRAZAO_SOCIAL.Font.Color := clRed;
     edFANTASIA.Font.Color     := clRed;
     edNOME.Font.Color         := clRed;
   end;

   if qConsulta.FieldByName('BLOQUEADO').AsString = 'SIM' then
      cbSituacaoCadastral.ItemIndex := 2;

   edNOME.Text                := qConsulta.FieldByName('RAZAO_SOCIAL'      ).AsString;
   edRAZAO_SOCIAL.Text        := qConsulta.FieldByName('RAZAO_SOCIAL'      ).AsString;
   edFANTASIA.Text            := qConsulta.FieldByName('FANTASIA'          ).AsString;
   edCNPJ.Text                := qConsulta.FieldByName('CNPJ'              ).AsString;
   CNPJCPF(edCNPJ);
   edCPF.Text                 := qConsulta.FieldByName('CPF'               ).AsString;
   CNPJCPF(edCPF);
   edRG.Text                  := qConsulta.FieldByName('RG'                ).AsString;
   edORGAO_EMISSOR.Text       := qConsulta.FieldByName('ORGAO_EMISSOR'     ).AsString;

   case rgPESSOA.ItemIndex of
     0 : edINSCRICAO_ESTADUAL_PF.Text:= qConsulta.FieldByName('INSCRICAO_ESTADUAL').AsString;
     1 : edINSCRICAO_ESTADUAL_PJ.Text:= qConsulta.FieldByName('INSCRICAO_ESTADUAL').AsString;
   end;

   edINSCRICAO_MUNICIPAL.Text               := qConsulta.FieldByName('INSCRICAO_MUNICIPAL'     ).AsString;
   cbTRIBUTACAO_ICMS.ItemIndex              := qConsulta.FieldByName('TRIBUTACAO_ICMS'         ).AsInteger;
   //rgCRT_CODIGO_REGIME_TRIBUTARIO.ItemIndex := qConsulta.FieldByName('CRT_CODIGO_REGIME_TRIBUTARIO').AsInteger;
   edSUFRAMA.Text                           := qConsulta.FieldByName('SUFRAMA'                 ).AsString;

   cbSexo.ItemIndex := -1;
   if qConsulta.FieldByName('SEXO').AsString = 'MASCULINO' then
      cbSexo.ItemIndex := 0 else
   if qConsulta.FieldByName('SEXO').AsString = 'FEMININO' then
      cbSexo.ItemIndex := 1;

   cbSITUACAO_FINANCEIRA.ItemIndex := -1;
   if qConsulta.FieldByName('SITUACAO_FINANCEIRA').AsString = 'ATIVO' then
      cbSITUACAO_FINANCEIRA.ItemIndex := 0 else
   if qConsulta.FieldByName('SITUACAO_FINANCEIRA').AsString = 'BLOQUEADO PARCIAL' then
      cbSITUACAO_FINANCEIRA.ItemIndex := 1 else
   if qConsulta.FieldByName('SITUACAO_FINANCEIRA').AsString = 'BLOQUEADO' then
      cbSITUACAO_FINANCEIRA.ItemIndex := 2;


   edLIMITE_CREDITO.Text := Float_to_String(qConsulta.FieldByName('LIMITE_CREDITO').AsFloat);

   edDATA_EMISSAO.Text       := DataValida(qConsulta.FieldByName('DATA_EMISSAO'   ).AsDateTime);
   edDATA_NASCIMENTO.Text    := DataValida(qConsulta.FieldByName('DATA_NASCIMENTO').AsDateTime);

   if qConsulta.FieldByName('ID_CAD_RAMO_ATIVIDADE').AsString = '0' then
      edID_CAD_RAMO_ATIVIDADE.Text := ''
   else
      edID_CAD_RAMO_ATIVIDADE.Text := qConsulta.FieldByName('ID_CAD_RAMO_ATIVIDADE').AsString;

   edRAMO_ATIVIDADE_DESCRICAO.Text := DescricaoCAD_RAMO_ATIVIDADE(edID_CAD_RAMO_ATIVIDADE.Text);

   edUSUALTEROU.Text               := qConsulta.FieldByName('USUALTEROU').AsString
                                    + '-'
                                    + NomeColaborador(qConsulta.FieldByName('USUALTEROU').AsString);
   edDTALTEROU.Text                := DataValida(qConsulta.FieldByName('DTALTEROU').AsDateTime);
   edHRALTEROU.Text                := qConsulta.FieldByName('HRALTEROU').AsString;
   edMAQALTEROU.Text               := qConsulta.FieldByName('MAQALTEROU').AsString;
   edEMP_ALTEROU.Text              := qConsulta.FieldByName('EMP_ALTEROU').AsString
                                    + '-'
                                    + DescricaoEmpresa(qConsulta.FieldByName('EMP_ALTEROU').AsString);
   edCLI_EMP_CODIGO.Text            := qConsulta.FieldByName('CLI_EMP_CODIGO').AsString
                                    + '-'
                                    + DescricaoEmpresa(qConsulta.FieldByName('CLI_EMP_CODIGO').AsString);
   // Exibir a aba Cadastro
   tab_cadastrar.Show;
end;

procedure Tfrm_cadastro_cliente.Mostrar_Contatos;
begin
   // Carregar Campos dos contatos do cliente
   //---------------------------------------------------------------------------
   pcContatos.ActivePageIndex:=0;
   Mostrar_Contatos_Empresa;
   Mostrar_Contatos_Propriet�rio;
   Mostrar_Contatos_Responsavel;
end;

procedure Tfrm_cadastro_cliente.Mostrar_Contatos_Empresa;
begin
   edTELEFONE.Text          := qConsulta.FieldByName('TELEFONE'     ).AsString;
   edTELEFONE_1.Text        := qConsulta.FieldByName('TELEFONE_1'   ).AsString;
   edTELEFONE_2.Text        := qConsulta.FieldByName('TELEFONE_2'   ).AsString;
   edCELULAR.Text           := qConsulta.FieldByName('CELULAR'      ).AsString;
   edCELULAR_1.Text         := qConsulta.FieldByName('CELULAR_1'    ).AsString;
   edWhatsApp.Text          := qConsulta.FieldByName('WhatsApp'     ).AsString;
   edEMAIL.Text             := qConsulta.FieldByName('EMAIL'        ).AsString;
   edEMAIL_1.Text           := qConsulta.FieldByName('EMAIL_1'      ).AsString;
   edEMAIL_2.Text           := qConsulta.FieldByName('EMAIL_2'      ).AsString;
   edSite_HomePage.Text     := qConsulta.FieldByName('Site_HomePage').AsString;
end;

procedure Tfrm_cadastro_cliente.Mostrar_Contatos_Propriet�rio;
begin
   edPROPRIETARIO_NOME.Text     := qConsulta.FieldByName('PROPRIETARIO_NOME'    ).AsString;
   edPROPRIETARIO_FONE.Text     := qConsulta.FieldByName('PROPRIETARIO_FONE'    ).AsString;
   edPROPRIETARIO_RAMAL.Text    := qConsulta.FieldByName('PROPRIETARIO_RAMAL'   ).AsString;
   edPROPRIETARIO_CELULAR1.Text := qConsulta.FieldByName('PROPRIETARIO_CELULAR1').AsString;
   edPROPRIETARIO_CELULAR2.Text := qConsulta.FieldByName('PROPRIETARIO_CELULAR2').AsString;
   edPROPRIETARIO_WHATSAPP.Text := qConsulta.FieldByName('PROPRIETARIO_WHATSAPP').AsString;
   edPROPRIETARIO_EMAIL1.Text   := qConsulta.FieldByName('PROPRIETARIO_EMAIL1'  ).AsString;
   edPROPRIETARIO_EMAIL2.Text   := qConsulta.FieldByName('PROPRIETARIO_EMAIL2'  ).AsString;
end;

procedure Tfrm_cadastro_cliente.Mostrar_Contatos_Responsavel;
begin
   edCONTATO_NOME.Text          := qConsulta.FieldByName('CONTATO_NOME'    ).AsString;
   edCONTATO_FONE.Text          := qConsulta.FieldByName('CONTATO_FONE'    ).AsString;
   edCONTATO_RAMAL.Text         := qConsulta.FieldByName('CONTATO_RAMAL'   ).AsString;
   edCONTATO_CELULAR.Text       := qConsulta.FieldByName('CONTATO_CELULAR' ).AsString;
   edCONTATO_CELULAR2.Text      := qConsulta.FieldByName('CONTATO_CELULAR2').AsString;
   edCONTATO_WHATSAPP.Text      := qConsulta.FieldByName('CONTATO_WHATSAPP').AsString;
   edCONTATO_EMAIL1.Text        := qConsulta.FieldByName('CONTATO_EMAIL1'  ).AsString;
   edCONTATO_EMAIL2.Text        := qConsulta.FieldByName('CONTATO_EMAIL2'  ).AsString;
end;

procedure Tfrm_cadastro_cliente.Mostrar_Enderecos;
begin
   // Carregar Campos dos endrede�os do cliente
   //---------------------------------------------------------------------------
   pcEnderecos.ActivePageIndex:=0;
   Mostrar_Enderecos_Cliente;
   Mostrar_Enderecos_Entrega;
   Mostrar_Enderecos_Cobranca;
end;

procedure Tfrm_cadastro_cliente.Mostrar_Enderecos_Cliente;
begin
   edCEP.Text              := qConsulta.FieldByName('CEP'             ).AsString;
   edENDERECO.Text         := qConsulta.FieldByName('ENDERECO'        ).AsString;
   edNUMERO.Text           := qConsulta.FieldByName('NUMERO'          ).AsString;
   edBAIRRO.Text           := qConsulta.FieldByName('BAIRRO'          ).AsString;
   edCOMPLEMENTO.Text      := qConsulta.FieldByName('COMPLEMENTO'     ).AsString;
   edMUNICIPIO.Text        := qConsulta.FieldByName('MUNICIPIO'       ).AsString;
   edCODIGO_MUNICIPIO.Text := qConsulta.FieldByName('CODIGO_MUNICIPIO').AsString;
   edZONA.Text             := qConsulta.FieldByName('ZONA'            ).AsString;
   edID_REGIAO.Text        := qConsulta.FieldByName('ID_REGIAO'       ).AsString;
   edREG_DESCRICAO.Text    := DescricaoREGIAO(edID_REGIAO.Text);
   edESTADO.Text           := qConsulta.FieldByName('ESTADO'          ).AsString;
   edCODIGO_UF.Text        := qConsulta.FieldByName('CODIGO_UF'       ).AsString;
   edPAIS.Text             := qConsulta.FieldByName('PAIS'            ).AsString;
   edCODIGO_PAIS.Text      := qConsulta.FieldByName('CODIGO_PAIS'     ).AsString;
end;

procedure Tfrm_cadastro_cliente.Mostrar_Enderecos_Cobranca;
begin
   edCOBRANCA_CEP.Text              := qConsulta.FieldByName('COBRANCA_CEP'             ).AsString;
   edCOBRANCA_ENDERECO.Text         := qConsulta.FieldByName('COBRANCA_ENDERECO'        ).AsString;
   edCOBRANCA_NUMERO.Text           := qConsulta.FieldByName('COBRANCA_NUMERO'          ).AsString;
   edCOBRANCA_BAIRRO.Text           := qConsulta.FieldByName('COBRANCA_BAIRRO'          ).AsString;
   edCOBRANCA_COMPLEMENTO.Text      := qConsulta.FieldByName('COBRANCA_COMPLEMENTO'     ).AsString;
   edCOBRANCA_MUNICIPIO.Text        := qConsulta.FieldByName('COBRANCA_MUNICIPIO'       ).AsString;
   edCOBRANCA_CODIGO_MUNICIPIO.Text := qConsulta.FieldByName('COBRANCA_CODIGO_MUNICIPIO').AsString;
   edCOBRANCA_ZONA.Text             := qConsulta.FieldByName('COBRANCA_ZONA'            ).AsString;
   edCOBRANCA_ID_REGIAO.Text        := qConsulta.FieldByName('COBRANCA_ID_REGIAO'       ).AsString;
   edREG_DESCRICAO_COBRANCA.Text    := DescricaoREGIAO(edID_REGIAO.Text);
   edCOBRANCA_ESTADO.Text           := qConsulta.FieldByName('COBRANCA_ESTADO'          ).AsString;
   edCOBRANCA_CODIGO_UF.Text        := qConsulta.FieldByName('COBRANCA_CODIGO_UF'       ).AsString;
   edCOBRANCA_PAIS.Text             := qConsulta.FieldByName('COBRANCA_PAIS'            ).AsString;
   edCOBRANCA_CODIGO_PAIS.Text      := qConsulta.FieldByName('COBRANCA_CODIGO_PAIS'     ).AsString;
end;

procedure Tfrm_cadastro_cliente.Mostrar_Enderecos_Entrega;
begin
   edENTREGA_CEP.Text              := qConsulta.FieldByName('ENTREGA_CEP'             ).AsString;
   edENTREGA_ENDERECO.Text         := qConsulta.FieldByName('ENTREGA_ENDERECO'        ).AsString;
   edENTREGA_NUMERO.Text           := qConsulta.FieldByName('ENTREGA_NUMERO'          ).AsString;
   edENTREGA_BAIRRO.Text           := qConsulta.FieldByName('ENTREGA_BAIRRO'          ).AsString;
   edENTREGA_COMPLEMENTO.Text      := qConsulta.FieldByName('ENTREGA_COMPLEMENTO'     ).AsString;
   edENTREGA_MUNICIPIO.Text        := qConsulta.FieldByName('ENTREGA_MUNICIPIO'       ).AsString;
   edENTREGA_CODIGO_MUNICIPIO.Text := qConsulta.FieldByName('ENTREGA_CODIGO_MUNICIPIO').AsString;
   edENTREGA_ZONA.Text             := qConsulta.FieldByName('ENTREGA_ZONA'            ).AsString;
   edENTREGA_ID_REGIAO.Text        := qConsulta.FieldByName('ENTREGA_ID_REGIAO'       ).AsString;
   edREG_DESCRICAO_ENTREGA.Text    := DescricaoREGIAO(edID_REGIAO.Text);
   edENTREGA_ESTADO.Text           := qConsulta.FieldByName('ENTREGA_ESTADO'          ).AsString;
   edENTREGA_CODIGO_UF.Text        := qConsulta.FieldByName('ENTREGA_CODIGO_UF'       ).AsString;
   edENTREGA_PAIS.Text             := qConsulta.FieldByName('ENTREGA_PAIS'            ).AsString;
   edENTREGA_CODIGO_PAIS.Text      := qConsulta.FieldByName('ENTREGA_CODIGO_PAIS'     ).AsString;
end;

procedure Tfrm_cadastro_cliente.Pode_Alterar;
begin
   //Habilita o bot�o [Alterar]
   //---------------------------------------------------------------------------
   bControlealterar.Enabled := True;
end;

procedure Tfrm_cadastro_cliente.Pesquisar;
begin
   // Pesquisa Cliente
   //---------------------------------------------------------------------------
   if NaoPesquisar then
      exit;

   qConsulta.close;
   qConsulta.sql.clear;
   qConsulta.sql.add('SELECT * FROM CLIENTE                         ');
   qConsulta.sql.add(' WHERE CODIGO = CODIGO                        ');
   if edArgumentoDePesquisa.Text <> '' then
   begin
      qConsulta.sql.add(' AND (                                     ');
      qConsulta.sql.add('          (RAZAO_SOCIAL       LIKE :TEXTO) ');
      qConsulta.sql.add('       OR (FANTASIA           LIKE :TEXTO) ');
      qConsulta.sql.add('       OR (CODIGO             LIKE :TEXTO) ');
      qConsulta.sql.add('       OR (CPF                LIKE :TEXTO) ');
      qConsulta.sql.add('       OR (CNPJ               LIKE :TEXTO) ');
      qConsulta.sql.add('       OR (RG                 LIKE :TEXTO) ');
      qConsulta.sql.add('       OR (INSCRICAO_ESTADUAL LIKE :TEXTO) ');
      qConsulta.sql.add('       OR (TELEFONE           LIKE :TEXTO) ');
      qConsulta.sql.add('       OR (TELEFONE_1         LIKE :TEXTO) ');
      qConsulta.sql.add('       OR (TELEFONE_2         LIKE :TEXTO) ');
      qConsulta.sql.add('       OR (CELULAR            LIKE :TEXTO) ');
      qConsulta.sql.add('       OR (CELULAR_1          LIKE :TEXTO) ');
      qConsulta.sql.add('       OR (WhatsApp           LIKE :TEXTO) ');
      qConsulta.sql.add('       OR (EMAIL              LIKE :TEXTO) ');
      qConsulta.sql.add('       OR (EMAIL_1            LIKE :TEXTO) ');
      qConsulta.sql.add('      )                                    ');
      qConsulta.ParamByName('TEXTO').AsString := '%'+edArgumentoDePesquisa.Text+'%';
   end;
   case rgSTATUS_CADASTRAL.ItemIndex of
      0 : qConsulta.sql.add(' AND STATUS_CADASTRAL = "ATIVO"    ');
      1 : qConsulta.sql.add(' AND STATUS_CADASTRAL = "INATIVO"  ');
      2 : qConsulta.sql.add(' AND BLOQUEADO        = "SIM"      ');
   end;
   case rgPESSOA_TIPO.ItemIndex of
      0 : qConsulta.sql.add(' AND PESSOA_TIPO = "FISICA"        ');
      1 : qConsulta.sql.add(' AND PESSOA_TIPO = "JURIDICA"      ');
   end;

   case cbOrder.ItemIndex of
      0 : qConsulta.sql.add(' ORDER BY CODIGO                   ');
      1 : qConsulta.sql.add(' ORDER BY RAZAO_SOCIAL             ');
      2 : qConsulta.sql.add(' ORDER BY FANTASIA                 ');
      3 : qConsulta.sql.add(' ORDER BY PESSOA_TIPO,     FANTASIA');
      4 : qConsulta.sql.add(' ORDER BY STATUS_CADASTRAL,FANTASIA');
      5 : qConsulta.sql.add(' ORDER BY MUNICIPIO,       FANTASIA');
      6 : qConsulta.sql.add(' ORDER BY ESTADO,          FANTASIA');
   end;
   qConsulta.Open;

   //Atualiza a quantidade de registros
   pnContador.Caption := FormatFloat('#,##0',qConsulta.RecordCount);
end;

procedure Tfrm_cadastro_cliente.So_Pode_Incluir;
begin
   // Controle de bot�es que tratam o cadastro do cliente
   //---------------------------------------------------------------------------

   //Habilita   [Incluir]
   bControleIncluir.Enabled := true;

   //Desabilita [Alterar] / [Cancelar] / [Gravar]
   bControleAlterar.Enabled  := false;
   bControleCancelar.Enabled := false;
   bControleGravar.Enabled   := false;
end;

procedure Tfrm_cadastro_cliente.rgPessoaClick(Sender: TObject);
begin
   // Define o tipo de pessoa: F�sica ou Jur�dica
   //---------------------------------------------------------------------------
   Case rgPessoa.ItemIndex of
      0 : begin
            // Pessoa F�sica
            tsPessoaFisica.TabVisible   := true;
            tsPessoaJuridica.TabVisible := false;
            edCNPJ.tag                  := 0;
            edRAZAO_SOCIAL.tag          := 0;
            edFANTASIA.tag              := 0;
            edNOME.tag                  := 1;
            edCPF.tag                   := 1;
          end;
      1 : begin
            // Pessoa Jur�dica
            tsPessoaFisica.TabVisible   := false;
            tsPessoaJuridica.TabVisible := true;
            edCNPJ.tag                  := 1;
            edRAZAO_SOCIAL.tag          := 1;
            edFANTASIA.tag              := 1;
            edNOME.tag                  := 0;
            edCPF.tag                   := 0;
         end;
   end;
end;

procedure Tfrm_cadastro_cliente.rgSTATUS_CADASTRALClick(Sender: TObject);
begin
     Pesquisar;
end;

procedure Tfrm_cadastro_cliente.tbCellDblClick(Sender: TcxCustomGridTableView;
  ACellViewInfo: TcxGridTableDataCellViewInfo; AButton: TMouseButton;
  AShift: TShiftState; var AHandled: Boolean);
begin
   Pode_Alterar;
   Mostrar_Cliente;
   Mostrar_Contatos;
   Mostrar_Enderecos;
end;

procedure Tfrm_cadastro_cliente.tbCustomDrawCell(Sender: TcxCustomGridTableView;
  ACanvas: TcxCanvas; AViewInfo: TcxGridTableDataCellViewInfo;
  var ADone: Boolean);
var
   __value: variant;
begin
   // Pintar as linhas do grid de consulta
   //---------------------------------------------------------------------------
   // Clientes ativos aparecer�o em verde
   // Clientes inativos aparecer�o em vermelho
   //---------------------------------------------------------------------------
    __value := tb.ViewData.Records[AViewInfo.GridRecord.Index].Values[tbstatus_cadastral.Index];
    ACanvas.font.Color := tfunctions.ColorByStatus(__value,
                                                   ['ATIVO'       , 'INATIVO'],
                                                   [clWebDarkgreen, clWebCrimson]);
    tfunctions.StripedGrid(ACanvas, AViewInfo);
end;

function Tfrm_cadastro_cliente.DadosCorretos: boolean;
var SL: TStringList;
    i, vCodigo: integer;
begin
   // Critica os dados antes de gravar
   //---------------------------------------------------------------------------
   result := false;

   //Codigo Num�rico
   if edCodigo.Text <> '' then
   begin
      try
         vCodigo := StrToInt(edCodigo.Text);
         if vCodigo < 1 then
         begin
           wnAlerta('Cadastrar Cliente','C�digo inv�lido', taLeftJustify, 12);
           exit;
         end;
      except
           wnAlerta('Cadastrar Cliente','C�digo inv�lido', taLeftJustify, 12);
           exit;
      end;
   end;

   SL := TStringList.Create;
   SL.Clear;
   for i := 0 to frm_cadastro_cliente.ComponentCount - 1 do
   begin
     // TDBEdit
     if (frm_cadastro_cliente.Components[i] is TDBEdit) and
        ((Components[i] as TDBEdit).Tag = 1)            and
        ((Components[i] as TDBEdit).Text = '')          Then
        SL.Add(Copy((Components[i] as TDBEdit).Name,3,20));

     // TEdit
     if (frm_cadastro_cliente.Components[i] is TEdit) and
        ((Components[i] as TEdit).Tag = 1)            and
        ((Components[i] as TEdit).Text = '')          Then
        SL.Add(Copy((Components[i] as TEdit).Name,3,20));

     // TMaskEdit
     if (frm_cadastro_cliente.Components[i] is TMaskEdit) and
        ((Components[i] as TMaskEdit).Tag = 1)            and
        ((Components[i] as TMaskEdit).Text = '')          Then
        SL.Add(Copy((Components[i] as TMaskEdit).Name,3,20));

     // TComboBox
     if (frm_cadastro_cliente.Components[i] is TComboBox) and
        ((Components[i] as TComboBox).Tag = 1)            and
        ((Components[i] as TComboBox).ItemIndex = -1)     Then
        SL.Add(Copy((Components[i] as TComboBox).Name,3,20));

     // TRadioGroup
     if (frm_cadastro_cliente.Components[i] is TRadioGroup) and
        ((Components[i] as TRadioGroup).Tag = 1)            and
        ((Components[i] as TRadioGroup).ItemIndex = -1)     Then
        SL.Add(Copy((Components[i] as TRadioGroup).Name,3,20));

     // TcxComboBox
     if (frm_cadastro_cliente.Components[i] is TcxComboBox) and
        ((Components[i] as TcxComboBox).Tag = 1)            and
        ((Components[i] as TcxComboBox).ItemIndex = -1)     Then
        SL.Add(Copy((Components[i] as TcxComboBox).Name,3,20));
   end;

   if SL.Count > 0 then
      wnAlerta('Cadastrar Cliente','Informe o campos obrigat�rios: '
              + slinebreak
              + slinebreak
              + SL.Text,
              taLeftJustify, 12)
   else
      result := true;
   SL.Free;
end;

procedure Tfrm_cadastro_cliente.Destacar_Campos_Obrigatorios(pCor:TColor);
var i : Integer;
begin
   with frm_cadastro_cliente do
   begin
       for i := 0 to ComponentCount-1 do
       begin
           if ( (Components[i]  is TDBEdit) and
                ((Components[i] as TDBEdit).Tag = 1  )) then
                (Components[i]  as TDBEdit).Color := pCor;

           if ( (Components[i]  is TEdit) and
                ((Components[i] as TEdit).Tag = 1    )) then
                (Components[i]  as TEdit).Color := pCor;

           if ( (Components[i]  is TMaskEdit) and
                ((Components[i] as TMaskEdit).Tag = 1)) then
                (Components[i]  as TMaskEdit).Color := pCor;
       end;
   end;
end;

procedure Tfrm_cadastro_cliente.Procurar_CodigoIBGE_Municipio(pMUNICIPIO,pUF: String);
var Q : tFDQuery;
    vIBGE_UF, vIBGE_PAIS:Integer;
begin
   //Localiza um municipio por seu nome e uf
   //Se econtrar preenche com codigo da uf, do municipio e pais
   // e nome do pais
   //---------------------------------------------------------------------------
   xIBGE_UF   := '';
   xIBGE_PAIS := '';
   xPAIS      := '';
   xCODIGO_MUNICIPIO := '';
   if pUF        = '' then exit;
   if pMUNICIPIO = '' then exit;

   q := TFDQuery.Create(nil);
   q.Connection     := Module.connection;
   q.ConnectionName := 'connection';

   // Recuperar o codigo IBGE da UF
   Q.Close;
   Q.Sql.Clear;
   Q.SQL.Add('SELECT *             ');
   Q.SQL.Add(' FROM endereco_estado');
   Q.SQL.Add('WHERE UF = :UF       ');
   Q.ParamByName('UF').AsString := pUF;
   Q.Open;
   if Q.Eof Then
   begin
     Q.Free;
     exit;
   end;
   vIBGE_UF   := Q.FieldByName('IBGE').AsInteger;
   vIBGE_PAIS := Q.FieldByName('PAIS').AsInteger;
   xIBGE_UF   := Q.FieldByName('IBGE').AsString;
   xIBGE_PAIS := Q.FieldByName('PAIS').AsString;

   //Recuperar nome do pais...
   Q.Close;
   Q.Sql.Clear;
   Q.SQL.Add('SELECT *              ');
   Q.SQL.Add(' FROM endereco_pais   ');
   Q.SQL.Add('WHERE CODIGO = :CODIGO');
   Q.ParamByName('CODIGO').AsInteger := vIBGE_PAIS;
   Q.Open;
   if not Q.eof Then
   begin
      xPAIS := Q.FieldByName('NOME').AsString;
   end;

   //Recupera dados do munic�pio
   Q.Close;
   Q.Sql.Clear;
   Q.SQL.Add('SELECT *                ');
   Q.SQL.Add(' FROM endereco_municipio');
   Q.SQL.Add('WHERE NOME   = :NOME    ');
   Q.SQL.Add('  AND ESTADO = :ESTADO  ');
   Q.ParamByName('NOME'  ).AsString  := pMUNICIPIO;
   Q.ParamByName('ESTADO').AsInteger := vIBGE_UF;
   Q.Open;
   if not Q.Eof Then
   begin
      xCODIGO_MUNICIPIO := Q.FieldByName('IBGE').AsString;
   end;
   Q.Free;
end;

end.
    // 12/05/20
    if fNaoAtualizado('Cliente->Empresa que o cadastrou...') then
       Executar('ALTER TABLE CLIENTE ADD CLI_EMP_CODIGO VARCHAR(020) NOT NULL DEFAULT "0" COMMENT "Codigo da empresa/filial que o cadastrou" ');

    // 12/05/20
    if fNaoAtualizado('Hist�rico de bloqueios->Empresa que bloqueou/desbloqueou ...') then
       Executar('ALTER TABLE CLIENTE_HISTORICO_BLOQUEIOS_CHB ADD CHB_EMP_CODIGO VARCHAR(020) NOT NULL DEFAULT "0" COMMENT "Codigo da empresa/filial que bloqueou/desbloqueou" ');

