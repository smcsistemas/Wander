{ v 19.10.16 17:21 }
unit cadastro_colaborador;
{
|===============================================================================
|   DATA   |DESENVOLVEDOR|HISTORICO DA ALTERACAO DO CODIGO                     |
|----------|-------------|-----------------------------------------------------|
|21/02/2020|WANDER       |Passou a criticar se o usuário tem permissão para    |
|        16|             |incluir/Alterar/Excluir colaboradores.               |
|===============================================================================
}
interface

uses
  Winapi.Windows, System.SysUtils, System.Variants,
  System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls, Vcl.DBCtrls,
  Vcl.Mask, cxGraphics, Vcl.Menus,
  cxButtons, cxEdit,
  cxDropDownEdit, cxDBEdit, cxCalendar,
  Data.DB, cxPC,
  cxCheckBox, FireDAC.Stan.Param,

  FireDAC.Comp.DataSet, FireDAC.Comp.Client,
  Vcl.ExtDlgs, Vcl.ExtCtrls, Vcl.DBGrids,

  cxDBLookupComboBox,

  cxTL,
  vw_consulta_generica, c_Globals, dateutils, strutils, math,
  cxGridLevel, cxGridCustomTableView, cxGridDBTableView, cxGrid,
  h_functions, v_env, cxControls, cxLookAndFeels, cxLookAndFeelPainters, dxSkinsCore, dxSkinBlack, dxSkinBlue, dxSkinBlueprint, dxSkinCaramel, dxSkinCoffee, dxSkinDarkRoom, dxSkinDarkSide,
  dxSkinDevExpressDarkStyle, dxSkinDevExpressStyle, dxSkinFoggy, dxSkinGlassOceans, dxSkinHighContrast, dxSkiniMaginary, dxSkinLilian, dxSkinLiquidSky, dxSkinLondonLiquidSky, dxSkinMcSkin,
  dxSkinMetropolis, dxSkinMetropolisDark, dxSkinMoneyTwins, dxSkinOffice2007Black, dxSkinOffice2007Blue, dxSkinOffice2007Green, dxSkinOffice2007Pink, dxSkinOffice2007Silver, dxSkinOffice2010Black,
  dxSkinOffice2010Blue, dxSkinOffice2010Silver, dxSkinOffice2013DarkGray, dxSkinOffice2013LightGray, dxSkinOffice2013White, dxSkinOffice2016Colorful, dxSkinOffice2016Dark, dxSkinPumpkin, dxSkinSeven,
  dxSkinSevenClassic, dxSkinSharp, dxSkinSharpPlus, dxSkinSilver, dxSkinSpringTime, dxSkinStardust, dxSkinSummer2008, dxSkinTheAsphaltWorld, dxSkinsDefaultPainters, dxSkinValentine,
  dxSkinVisualStudio2013Blue, dxSkinVisualStudio2013Dark, dxSkinVisualStudio2013Light, dxSkinVS2010, dxSkinWhiteprint, dxSkinXmas2008Blue, dxSkinscxPCPainter, dxBarBuiltInMenu, cxContainer, cxStyles,
  cxCustomData, cxFilter, cxData, cxDataStorage, cxNavigator, cxDBData, cxLabel, cxMaskEdit, cxCurrencyEdit, Vcl.ComCtrls, dxCore, cxDateUtils, cxTextEdit, cxTLdxBarBuiltInMenu, FireDAC.Stan.Intf,
  FireDAC.Stan.Option, FireDAC.Stan.Error, FireDAC.DatS, FireDAC.Phys.Intf, FireDAC.DApt.Intf, FireDAC.Stan.Async, FireDAC.DApt, cxInplaceContainer, cxLookupEdit, cxDBLookupEdit, cxMemo,
  dxGDIPlusClasses, cxGridTableView, cxClasses, cxGridCustomView, cad_zona;

type
  Tfrm_colaborador = class(TForm)
    cxPageControl1: TcxPageControl;
    SQL_COLABORADOR: TFDQuery;
    DS_Colaborador: TDataSource;
    OpenPictureDialog1: TOpenPictureDialog;
    SQL_COLABORADORCODIGO: TFDAutoIncField;
    SQL_COLABORADORNOME: TStringField;
    SQL_COLABORADORDATA_CADASTRO: TDateField;
    SQL_COLABORADORDATA_NASCIMENTO: TDateField;
    SQL_COLABORADORSEXO: TStringField;
    SQL_COLABORADORESTADO_CIVIL: TStringField;
    SQL_COLABORADORFUNCAO: TStringField;
    SQL_COLABORADORNATURALIDADE: TStringField;
    SQL_COLABORADORNACIONALIDADE: TStringField;
    SQL_COLABORADORNOME_PAI: TStringField;
    SQL_COLABORADORNOME_MAE: TStringField;
    SQL_COLABORADORTELEFONE_PAI: TStringField;
    SQL_COLABORADORTELEFONE_MAE: TStringField;
    SQL_COLABORADORCPF: TStringField;
    SQL_COLABORADORRG: TStringField;
    SQL_COLABORADORORGAO_EMISSOR: TStringField;
    SQL_COLABORADORDATA_EMISSAO: TDateField;
    SQL_COLABORADORTITULO_ELEITOR: TStringField;
    SQL_COLABORADORSECAO: TStringField;
    SQL_COLABORADORZONA: TStringField;
    SQL_COLABORADORPIS: TStringField;
    SQL_COLABORADORNUMERO_CNH: TStringField;
    SQL_COLABORADORVALIDADE_CNH: TDateField;
    SQL_COLABORADORNUMERO_CARTEIRA_TRABALHO: TStringField;
    SQL_COLABORADORSERIE_CARTEIRA_TRABALHO: TStringField;
    SQL_COLABORADORDATA_ADMISSAO: TDateField;
    SQL_COLABORADORDATA_DEMISSAO: TDateField;
    SQL_COLABORADORCODIGO_GERENTE: TIntegerField;
    SQL_COLABORADORTELEFONE_1: TStringField;
    SQL_COLABORADORTELEFONE_2: TStringField;
    SQL_COLABORADORCELULAR_1: TStringField;
    SQL_COLABORADORCELULAR_2: TStringField;
    SQL_COLABORADOREMAIL_1: TStringField;
    SQL_COLABORADOREMAIL_2: TStringField;
    SQL_COLABORADOROBS: TStringField;
    SQL_COLABORADORSALARIO: TSingleField;
    SQL_COLABORADORENDERECO: TStringField;
    SQL_COLABORADORNUMERO: TStringField;
    SQL_COLABORADORBAIRRO: TStringField;
    SQL_COLABORADORCEP: TStringField;
    SQL_COLABORADORMUNICIPIO: TStringField;
    SQL_COLABORADORESTADO: TStringField;
    SQL_COLABORADORPAIS: TStringField;
    SQL_COLABORADORCOMPLEMENTO: TStringField;
    SQL_COLABORADORCODIGO_MUNICIPIO: TIntegerField;
    SQL_COLABORADORLIMITE_CREDITO: TSingleField;
    SQL_COLABORADORFOTO: TStringField;
    SQL_COLABORADORBANCO: TStringField;
    SQL_COLABORADORCELULAR_PAI: TStringField;
    SQL_COLABORADORCELULAR_MAE: TStringField;
    SQL_COLABORADORTELEFONE_BANCO: TStringField;
    SQL_COLABORADORRAMAL_BANCO: TStringField;
    SQL_COLABORADORBANCO_2: TStringField;
    SQL_COLABORADORTELEFONE_BANCO_2: TStringField;
    SQL_COLABORADORRAMAL_BANCO_2: TStringField;
    SQL_COLABORADORGERENTE_BANCO: TStringField;
    SQL_COLABORADORGERENTE_BANCO_1: TStringField;
    SQL_COLABORADORCODIGO_BANCO_1: TIntegerField;
    SQL_COLABORADORCODIGO_BANCO_2: TIntegerField;
    SQL_ConsultarBanco: TFDQuery;
    SQL_ConsultarBancoCODIGO: TFDAutoIncField;
    SQL_ConsultarBancoNOME: TStringField;
    SQL_ConsultarBancoCODIGO_1: TIntegerField;
    SQL_ConsultarBancoNUMERO_AGENCIA: TStringField;
    SQL_ConsultarBancoNOME_AGENCIA: TStringField;
    DS_ConsultarBanco: TDataSource;
    SQL_COLABORADORCODIGO_PAIS: TIntegerField;
    SQL_COLABORADORBANCO_AGENCIA_DIGITO: TStringField;
    SQL_COLABORADORBANCO_CONTA_DIGITO: TStringField;
    SQL_COLABORADORBANCO_AGENCIA_DIGITO_2: TStringField;
    SQL_COLABORADORBANCO_CONTA_DIGITO_2: TStringField;
    SQL_COLABORADORUSA_FAIXA: TStringField;
    SQL_COLABORADORBANCO_AGENCIA: TStringField;
    SQL_COLABORADORBANCO_CONTA: TStringField;
    SQL_COLABORADORBANCO_AGENCIA_2: TStringField;
    SQL_COLABORADORBANCO_CONTA_2: TStringField;
    SQL_COLABORADORCREDITO_DISPONIVEL: TSingleField;
    SQL_COLABORADORBANCO_OP: TStringField;
    SQL_COLABORADORBANCO_OP2: TStringField;
    cxTabSheet2: TcxTabSheet;
    cxTabSheet4: TcxTabSheet;
    DS_C_COLABORADOR: TDataSource;
    SQL_C_COLABORADOR: TFDQuery;
    Label42: TLabel;
    Label25: TLabel;
    Label7: TLabel;
    Label1: TLabel;
    Label2: TLabel;
    Label38: TLabel;
    Label39: TLabel;
    DBEdit18: TDBEdit;
    Label8: TLabel;
    DBEdit17: TDBEdit;
    DBEdit19: TDBEdit;
    DBEdit11: TDBEdit;
    NOME: TDBEdit;
    NOME_PAI: TDBEdit;
    FUNCAO: TDBEdit;
    NOME_MAE: TDBEdit;
    gpcadastro: TGroupBox;
    GroupBox5: TGroupBox;
    Panel1: TPanel;
    BtnGravar: TcxButton;
    BtnIncluir: TcxButton;
    BtnCancelar: TcxButton;
    BtnAlterar: TcxButton;
    Label11: TLabel;
    SQL_COLABORADORSTATUS_CADASTRAL: TStringField;
    SQL_COLABORADORCODIGO_EMPRESA: TIntegerField;
    SQL_COLABORADOR_TIPO: TFDQuery;
    DS_COLABORADOR_TIPO: TDataSource;
    SQL_COLABORADORTIPO_COLABORADOR: TStringField;
    SQL_INCREMENT: TFDQuery;
    SQL_INCREMENTauto_increment: TLargeintField;
    cb_tipo_colab: TcxLookupComboBox;
    GroupBox10: TGroupBox;
    Image1: TImage;
    TL_colab1: TLabel;
    cxButton3: TcxButton;
    cxButton7: TcxButton;
    permissoes: TcxTabSheet;
    SQL_COMISSAO_COLAB: TFDQuery;
    DS_COMISSAO_COLAB: TDataSource;
    edt_dt_nascimento: TcxDateEdit;
    edt_codigo: TcxDBTextEdit;
    Label14: TLabel;
    pop_comissao: TPopupMenu;
    DeletarComisso1: TMenuItem;
    SQL_COMISSAO_COLABUSUARIO: TStringField;
    SQL_COMISSAO_COLABDATA_CADASTRO: TSQLTimeStampField;
    SQL_COMISSAO_COLABVALOR_MIN: TBCDField;
    SQL_COMISSAO_COLABVALOR_MAX: TBCDField;
    SQL_COMISSAO_COLABPERCENTUAL_COMISSAO: TBCDField;
    SQL_COMISSAO_COLABID: TFDAutoIncField;
    Label17: TLabel;
    cb_filtro: TcxComboBox;
    cxGrid1: TcxGrid;
    cxGrid1DBTableView1: TcxGridDBTableView;
    cxGrid1Level1: TcxGridLevel;
    cxGrid1DBTableView1CODIGO: TcxGridDBColumn;
    cxGrid1DBTableView1NOME: TcxGridDBColumn;
    cxGrid1DBTableView1TIPO_COLABORADOR: TcxGridDBColumn;
    cxGrid1DBTableView1FUNCAO: TcxGridDBColumn;
    cxGrid1DBTableView1CPF: TcxGridDBColumn;
    cxGrid1DBTableView1STATUS_CADASTRAL: TcxGridDBColumn;
    cxGrid1DBTableView1Column1: TcxGridDBColumn;
    cxGrid1DBTableView1Column2: TcxGridDBColumn;
    SQL_C_COLABORADORcodigo: TFDAutoIncField;
    SQL_C_COLABORADORcpf: TStringField;
    SQL_C_COLABORADORdata_nascimento: TDateField;
    SQL_C_COLABORADORnome: TStringField;
    SQL_C_COLABORADORtelefone_1: TStringField;
    SQL_C_COLABORADORtipo_colaborador: TStringField;
    cb_tipo_colab_consulta: TcxComboBox;
    SQL_C_COLABORADORusuario: TStringField;
    SQL_COLABORADORcod_usuario: TIntegerField;
    SQL_C_COLABORADORstatus_cadastral: TStringField;
    edt_consulta: TEdit;
    cb_sexo: TcxComboBox;
    cb_estado_civil: TcxComboBox;
    cxCheckBox2: TcxCheckBox;
    CPF: TDBEdit;
    Label64: TLabel;
    SQL_VINCULO_GERENTE: TFDQuery;
    SQL_VINCULO_GERENTECOMISSAO: TBCDField;
    DS_VINCULO_GERENTE: TDataSource;
    pop_vinculo_ger: TPopupMenu;
    MenuItem1: TMenuItem;
    SQL_VINCULO_GERENTEvendedor: TStringField;
    SQL_VINCULO_GERENTEid: TIntegerField;
    SQL_COLABORADORCOMISSAO_VENDA: TBCDField;
    SQL_COLABORADORCOMISSAO_ORDEM_SERVICO: TBCDField;
    SQL_COLABORADORCOMISSAO_HORA_TECNICA: TBCDField;
    SQL_COLABORADORCOMISSAO_GERENTE: TBCDField;
    SQL_COLABORADORCOMISSAO_VENDA_EXTERNA: TBCDField;
    SQL_VINCULO_GERENTEdata_cadastro: TDateField;
    cxButton1: TcxButton;
    grpEndereco: TGroupBox;
    Label22: TLabel;
    Label3: TLabel;
    Label26: TLabel;
    btnMunicip: TcxButton;
    cxButton19: TcxButton;
    btn_cep: TcxButton;
    DBEdit76: TDBEdit;
    DBEdit75: TDBEdit;
    DBEdit77: TDBEdit;
    DBEdit81: TDBEdit;
    DBEdit1: TDBEdit;
    DBEdit82: TDBEdit;
    DBEdit83: TDBEdit;
    DBEdit80: TDBEdit;
    DBEdit78: TDBEdit;
    DBEdit104: TDBEdit;
    DBEdit79: TDBEdit;
    cxButton2: TcxButton;
    DBComboBox1: TDBComboBox;
    DBEdit2: TDBEdit;
    SQL_COLABORADORREGIAO: TStringField;
    SQL_COLABORADORCODIGO_UF: TStringField;
    procedure BtnIncluirClick(Sender: TObject);
    procedure BtnGravarClick(Sender: TObject);
    procedure BtnCancelarClick(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure cxButton5Click(Sender: TObject);
    procedure cxDBTextEdit27KeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
    procedure DBEdit11KeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
    procedure DBEdit17KeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
    procedure cxDBTextEdit28KeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
    procedure DBEdit18KeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
    procedure DBEdit19KeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
    procedure DBEdit31KeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);

    procedure cxDBTextEdit29KeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
    procedure cxButton3Click(Sender: TObject);
    procedure cxButton7Click(Sender: TObject);
    procedure cxDBTextEdit26KeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
    procedure cxDBTextEdit11KeyPress(Sender: TObject; var Key: Char);
    procedure cxDBTextEdit30KeyPress(Sender: TObject; var Key: Char);
    procedure cxDBTextEdit31KeyPress(Sender: TObject; var Key: Char);
    procedure cxDBTextEdit32KeyPress(Sender: TObject; var Key: Char);
    procedure cxTabSheet2Show(Sender: TObject);
    procedure DBEdit41KeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
    procedure FormShow(Sender: TObject);
    procedure cxDBTextEdit1KeyPress(Sender: TObject; var Key: Char);
    procedure DBEdit6KeyPress(Sender: TObject; var Key: Char);
    procedure cxDBTextEdit26KeyPress(Sender: TObject; var Key: Char);
    procedure cxDBTextEdit5KeyPress(Sender: TObject; var Key: Char);
    procedure cxDBTextEdit27KeyPress(Sender: TObject; var Key: Char);
    procedure DBEdit11KeyPress(Sender: TObject; var Key: Char);
    procedure DBEdit17KeyPress(Sender: TObject; var Key: Char);
    procedure cxDBTextEdit28KeyPress(Sender: TObject; var Key: Char);
    procedure DBEdit18KeyPress(Sender: TObject; var Key: Char);
    procedure DBEdit19KeyPress(Sender: TObject; var Key: Char);
    procedure DBEdit41KeyPress(Sender: TObject; var Key: Char);
    procedure DBEdit5KeyPress(Sender: TObject; var Key: Char);
    procedure cxDBTextEdit22KeyPress(Sender: TObject; var Key: Char);
    procedure DBEdit7KeyPress(Sender: TObject; var Key: Char);
    procedure DBEdit8KeyPress(Sender: TObject; var Key: Char);
    procedure cxDBTextEdit17KeyPress(Sender: TObject; var Key: Char);
    procedure DBEdit42KeyPress(Sender: TObject; var Key: Char);
    procedure cxDBTextEdit39KeyPress(Sender: TObject; var Key: Char);
    procedure cxDBTextEdit41KeyPress(Sender: TObject; var Key: Char);
    procedure cxDBTextEdit15KeyPress(Sender: TObject; var Key: Char);
    procedure DBEdit10KeyPress(Sender: TObject; var Key: Char);
    procedure DBEdit32KeyPress(Sender: TObject; var Key: Char);
    procedure DBEdit33KeyPress(Sender: TObject; var Key: Char);
    procedure DBEdit34KeyPress(Sender: TObject; var Key: Char);
    procedure DBEdit35KeyPress(Sender: TObject; var Key: Char);
    procedure DBEdit39KeyPress(Sender: TObject; var Key: Char);
    procedure DBEdit38KeyPress(Sender: TObject; var Key: Char);
    procedure DBEdit40KeyPress(Sender: TObject; var Key: Char);
    procedure DBEdit37KeyPress(Sender: TObject; var Key: Char);
    procedure DBEdit36KeyPress(Sender: TObject; var Key: Char);
    procedure DBEdit1KeyPress(Sender: TObject; var Key: Char);
    procedure DBEdit2KeyPress(Sender: TObject; var Key: Char);
    procedure DBEdit3KeyPress(Sender: TObject; var Key: Char);
    procedure DBEdit4KeyPress(Sender: TObject; var Key: Char);
    procedure DBEdit20KeyPress(Sender: TObject; var Key: Char);
    procedure DBEdit21KeyPress(Sender: TObject; var Key: Char);
    procedure DBEdit22KeyPress(Sender: TObject; var Key: Char);
    procedure DBEdit23KeyPress(Sender: TObject; var Key: Char);
    procedure DBEdit24KeyPress(Sender: TObject; var Key: Char);
    procedure DBEdit25KeyPress(Sender: TObject; var Key: Char);
    procedure DBEdit26KeyPress(Sender: TObject; var Key: Char);
    procedure DBEdit27KeyPress(Sender: TObject; var Key: Char);
    procedure DBEdit28KeyPress(Sender: TObject; var Key: Char);
    procedure DBEdit29KeyPress(Sender: TObject; var Key: Char);
    procedure DBEdit30KeyPress(Sender: TObject; var Key: Char);
    procedure DBEdit31KeyPress(Sender: TObject; var Key: Char);
    procedure DBEdit12KeyPress(Sender: TObject; var Key: Char);
    procedure CELULAR_2KeyPress(Sender: TObject; var Key: Char);
    procedure DBEdit15KeyPress(Sender: TObject; var Key: Char);
    procedure DBEdit14KeyPress(Sender: TObject; var Key: Char);
    procedure DBEdit13KeyPress(Sender: TObject; var Key: Char);
    procedure cxDBTextEdit18KeyPress(Sender: TObject; var Key: Char);
    procedure cxDBTextEdit19KeyPress(Sender: TObject; var Key: Char);
    procedure cxDBTextEdit20KeyPress(Sender: TObject; var Key: Char);
    procedure cxDBTextEdit21KeyPress(Sender: TObject; var Key: Char);
    procedure BtnExcluirClick(Sender: TObject);
    procedure NOMEKeyPress(Sender: TObject; var Key: Char);
    procedure NACIONALIDADEKeyPress(Sender: TObject; var Key: Char);
    procedure NOME_PAIKeyPress(Sender: TObject; var Key: Char);
    procedure NOME_MAEKeyPress(Sender: TObject; var Key: Char);
    procedure BANCOKeyPress(Sender: TObject; var Key: Char);
    procedure BANCO_2KeyPress(Sender: TObject; var Key: Char);
    procedure CEPKeyPress(Sender: TObject; var Key: Char);
    procedure NUMEROKeyPress(Sender: TObject; var Key: Char);
    procedure CODIGO_PAISKeyPress(Sender: TObject; var Key: Char);
    procedure CPFKeyPress(Sender: TObject; var Key: Char);
    procedure RGKeyPress(Sender: TObject; var Key: Char);
    procedure PISKeyPress(Sender: TObject; var Key: Char);
    procedure ZONAKeyPress(Sender: TObject; var Key: Char);
    procedure SECAOKeyPress(Sender: TObject; var Key: Char);
    procedure LIMITE_CREDITOKeyPress(Sender: TObject; var Key: Char);
    procedure CREDITO_DISPONIVELKeyPress(Sender: TObject; var Key: Char);
    procedure cb_sexoKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
    procedure cb_estado_civilKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
    procedure FUNCAOKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
    procedure NOME_PAIKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
    procedure NOME_MAEKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
    procedure DBEdit9KeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
    procedure NUMEROKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
    procedure BAIRROKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
    procedure COMPLEMENTOKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
    procedure CEPKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
    procedure CPFKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
    procedure cxDBComboBox9KeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
    procedure BtnAlterarClick(Sender: TObject);
    procedure btnimprimirClick(Sender: TObject);
    procedure FormKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
    procedure cxTabSheet4Show(Sender: TObject);
    procedure cxTabSheet5Show(Sender: TObject);
    procedure NUMERO_CARTEIRA_TRABALHOKeyPress(Sender: TObject; var Key: Char);
    procedure SERIE_CARTEIRA_TRABALHOKeyPress(Sender: TObject; var Key: Char);
    procedure NUMERO_CNHKeyPress(Sender: TObject; var Key: Char);
    procedure CarregarUltimoCadastro;
    procedure CarregarDadosInternos;
    procedure ORGAO_EMISSORKeyPress(Sender: TObject; var Key: Char);
    procedure TITULO_ELEITORKeyPress(Sender: TObject; var Key: Char);
    procedure permissoesShow(Sender: TObject);
    procedure NOMEKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
    procedure edt_dt_nascimentoKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
    procedure edt_usuarioKeyPress(Sender: TObject; var Key: Char);
    procedure edt_senhaKeyPress(Sender: TObject; var Key: Char);
    procedure FormCreate(Sender: TObject);
    procedure edt_v_minKeyPress(Sender: TObject; var Key: Char);
    procedure edt_v_maxKeyPress(Sender: TObject; var Key: Char);
    procedure edt_comissaoKeyPress(Sender: TObject; var Key: Char);
    procedure carregar_comissoes;
    procedure grid_cDBTableView1CustomDrawCell(Sender: TcxCustomGridTableView; ACanvas: TcxCanvas; AViewInfo: TcxGridTableDataCellViewInfo; var ADone: Boolean);
    procedure cxGrid1DBTableView1CellDblClick(Sender: TcxCustomGridTableView; ACellViewInfo: TcxGridTableDataCellViewInfo; AButton: TMouseButton; AShift: TShiftState;
      var AHandled: Boolean);
    procedure cxGrid1DBTableView1CustomDrawCell(Sender: TcxCustomGridTableView; ACanvas: TcxCanvas; AViewInfo: TcxGridTableDataCellViewInfo; var ADone: Boolean);
    procedure edt_consultaKeyUp(Sender: TObject; var Key: Word; Shift: TShiftState);
    procedure cb_filtroPropertiesEditValueChanged(Sender: TObject);
    procedure cb_tipo_colab_consultaPropertiesEditValueChanged(Sender: TObject);
    procedure cxGridDBTableView2CustomDrawCell(Sender: TcxCustomGridTableView; ACanvas: TcxCanvas; AViewInfo: TcxGridTableDataCellViewInfo; var ADone: Boolean);
    procedure cxButton1Click(Sender: TObject);
    procedure btnMunicipClick(Sender: TObject);
    procedure btn_cepClick(Sender: TObject);
    procedure cxButton19Click(Sender: TObject);

  private
    { Private declarations }

    cadastrar_user: Boolean;
    procedure consultar_colaborador(check_edit: Boolean = true);
  public
    { Public declarations }
  end;

var
  frm_colaborador: Tfrm_colaborador;

implementation

{$R *.dfm}

uses U_Municipio,
  jpeg, u_funcoes, liberacao, dados_adc;

procedure Tfrm_colaborador.BAIRROKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
begin
  if (Key = VK_RETURN) or (Key = VK_TAB) then
    //COMPLEMENTO.SetFocus;
end;

procedure Tfrm_colaborador.BANCOKeyPress(Sender: TObject; var Key: Char);
begin
  inherited;
  Key := u_funcoes.ApenasLetras(Key);
end;


procedure Tfrm_colaborador.BANCO_2KeyPress(Sender: TObject; var Key: Char);
begin
  inherited;
  Key := u_funcoes.ApenasLetras(Key);
end;

procedure Tfrm_colaborador.BtnAlterarClick(Sender: TObject);
begin
  if not TemAcesso(Global_Usuario_Logado,'ALTCOLAB') then
     exit;

  if NOME.Text = '' then
  begin
    wnAlerta('Alterar', 'Nenhum colaborador foi selecionado.');
  end
  else
  begin
    cxTabSheet4.show;
    SQL_COLABORADOR_TIPO.Active := False;
    SQL_COLABORADOR_TIPO.Active := true;
    SQL_COLABORADOR.Edit;
    CPF.field.Text := Format_CPF_CNPJ(SQL_COLABORADORCPF.AsString);
    u_funcoes.IniciarCadastro([BtnIncluir, BtnCancelar, BtnAlterar], true);
    u_funcoes.AlterarEnabled([gpcadastro, grpEndereco, GroupBox10, GroupBox5,
     cxButton7, cxButton3], true);
    NOME.SelectAll;
    NOME.SetFocus;
  end;
end;

procedure Tfrm_colaborador.BtnExcluirClick(Sender: TObject);
begin
  if not TemAcesso(Global_Usuario_Logado,'DELCOLAB') then
     exit;

  if ((edt_codigo.Text = '') or (edt_codigo.Text = '0')) and (NOME.Text = '') then
  begin
    wnAlerta('Excluir', 'Nenhum colaborador foi selecionado.');
  end
  else
  begin
    if not TEnv.Tuser.IsAdmin then
    begin
      if TFrm_liberacao.Execute then
      begin
        u_funcoes.ExcluirCadastro(SQL_COLABORADOR);
      end;
    end
    else
    begin
      u_funcoes.ExcluirCadastro(SQL_COLABORADOR);
    end;
    CarregarUltimoCadastro;
    CarregarDadosInternos;
  end;
end;

procedure Tfrm_colaborador.BtnCancelarClick(Sender: TObject);
begin
  SQL_COLABORADOR.Cancel;
  SQL_COLABORADOR.Close;
  CarregarUltimoCadastro;
  CarregarDadosInternos;
end;

procedure Tfrm_colaborador.BtnGravarClick(Sender: TObject);
var
  qry: TFDQuery;
begin
  if BtnIncluir.Visible = False then
  begin
    try

        qry := simplequery('SELECT CODIGO, NOME FROM COLABORADOR WHERE CPF="' + REMOVERCARACTERESESPECIAIS(CPF.Text) + '" and codigo <> "' + edt_codigo.Text + '"');
        if qry <> nil then
        begin
          wnAlerta('Cadastrar Colaborador', slinebreak + 'CPF já está cadastrado no colaborador "' + qry.Fields[0].AsString + ' - ' + qry.Fields[1].AsString + '"!');
          CPF.SelectAll;
          CPF.SetFocus;
        end
    else
  begin
//          if (simplequery('SELECT USUARIO FROM USUARIO WHERE USUARIO="' + edt_usuario.Text + '" and TIPO_USUARIO = "CLIENTE" and codigo <> ' + ifthen(codigo_user = emptystr, '0',
//            codigo_user)) <> nil) then
//          begin
//            wnAlerta('Cadastrar Colaborador', slinebreak + 'Usuário "' + edt_usuario.Text + '" já está cadastrado!');
//            edt_usuario.SelectAll;
//            edt_usuario.SetFocus;
//          end
//          else
//          begin
//            if edt_senha.Text <> edt_confirma_senha.Text then
//            begin
//              wnAlerta('Cadastrar Colaborador', slinebreak + 'Senhas informadas são diferentes!');
//              edt_senha.SelectAll;
//              edt_senha.SetFocus;
//            end
//            else
//            begin
//              if cadastrar_user then
//              begin
//                execquery('insert into usuario(usuario, senha, senha_confirma, administrador,tipo_usuario, data_cadastro) values(:p1, :p2, :p3, :p4, :p5, :p6)',
//                  [edt_usuario.Text, edt_senha.Text, edt_confirma_senha.Text, ifthen(chk_admin.Checked, 'SIM', 'NAO'), 'CLIENTE', date]);
//
//                codigo_user := simplequery('SELECT CODIGO FROM USUARIO WHERE USUARIO="' + edt_usuario.Text + '" AND TIPO_USUARIO ="CLIENTE"').Fields[0].AsString;
//              end
//              else
//                execquery('UPDATE USUARIO SET USUARIO=:p1,SENHA=:p2,SENHA_CONFIRMA=:p3,ADMINISTRADOR=:p4 WHERE CODIGO = :p6',
//                  [edt_usuario.Text, edt_senha.Text, edt_confirma_senha.Text, (ifthen(chk_admin.Checked, 'SIM', 'NAO')), codigo_user]);






              SQL_COLABORADORSTATUS_CADASTRAL.AsString := ifthen(cxCheckBox2.Checked, 'ATIVO', 'INATIVO');

              SQL_COLABORADORTIPO_COLABORADOR.AsString := ifthen(cb_tipo_colab.SelectedItem = -1, SQL_COLABORADORTIPO_COLABORADOR.AsString,
                inttostr(cb_tipo_colab.SelectedItem + 1));

              SQL_COLABORADORSEXO.AsString := TFunctions.ifthen([((cb_sexo.SelectedItem = 0) or (cb_sexo.SelectedItem = -1)), cb_sexo.SelectedItem > 0], ['MASCULINO', 'FEMININO']);

              SQL_COLABORADORESTADO_CIVIL.AsString := TFunctions.ifthen([((cb_estado_civil.SelectedItem = 0) or (cb_estado_civil.SelectedItem = -1)),
                cb_estado_civil.SelectedItem > 0], ['SOLTEIRO(A)', uppercase(cb_estado_civil.Text)]);

              SQL_COLABORADORDATA_CADASTRO.asDatetime := date;

              SQL_COLABORADOR.Post;
              SQL_COLABORADOR.Active := False;
              Image1.Picture := nil;
              MessageDLG('Operação concluída com sucesso', mtInformation, [mbOk], 0);
              CarregarUltimoCadastro;
              CarregarDadosInternos;
            end;


    except
      on e: exception do
        wnerro('Cadastrar Colaborador', e.Message + slinebreak + 'Erro ao cadastrar colaborador!');
    end;
  end;
end;


procedure Tfrm_colaborador.BtnIncluirClick(Sender: TObject);
begin
//  if not TemAcesso(Global_Usuario_Logado,'CADCOLAB') then
//     exit;

  if BtnIncluir.Visible = true then
  begin
    u_funcoes.AlterarEnabled([gpcadastro, grpEndereco, GroupBox10,  GroupBox5, cxButton3, cxButton7], true);
    u_funcoes.IniciarCadastro([BtnIncluir, BtnCancelar, BtnAlterar], true);
    SQL_COLABORADOR_TIPO.Active := true;
    SQL_COLABORADOR.Active := true;
    SQL_COLABORADOR.Insert;
    SQL_COLABORADORDATA_CADASTRO.Value := date;
    cxTabSheet4.show;
    cxCheckBox2.Checked := true;
    cb_sexo.ItemIndex := 0;
    cb_estado_civil.ItemIndex := 0;
    cb_tipo_colab.ItemIndex := 0;
    LimparCampos([TEdit(edt_dt_nascimento)]);
    Image1.Picture := nil;
    if SQL_INCREMENTauto_increment.Value = 0 then
      edt_codigo.Text := '1'
    else
      edt_codigo.Text := inttostr(SQL_INCREMENTauto_increment.Value);
    NOME.SetFocus;
  end;
end;

procedure Tfrm_colaborador.btnMunicipClick(Sender: TObject);
begin
  Frm_Municipio := TFrm_Municipio.Create(Application);
  Frm_Municipio.InformarDadosMunicipio1(DBEdit81, DBEdit80, DBEdit82, DBEdit2, DBEdit83, DBEdit104);
  Frm_Municipio.ShowModal;
  Frm_Municipio.Free;

end;

procedure Tfrm_colaborador.btn_cepClick(Sender: TObject);
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

procedure Tfrm_colaborador.btnimprimirClick(Sender: TObject);
begin
  manworking;
end;

procedure Tfrm_colaborador.CODIGO_PAISKeyPress(Sender: TObject; var Key: Char);
begin
  inherited;
  Key := u_funcoes.ApenasNumeros(Key);
end;

procedure Tfrm_colaborador.COMPLEMENTOKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
begin
  if (Key = VK_RETURN) or (Key = VK_TAB) then
  begin
    DBEdit78.SetFocus;
  end;
end;

procedure Tfrm_colaborador.consultar_colaborador(check_edit: Boolean = true);
const
  qry_base = 'SELECT c.codigo,'+
             'c.status_cadastral, c.cpf,c.data_nascimento,c.nome,c.telefone_1,' +
    '(select ct.tipo_colaborador from colaborador_tipo ct where ct.codigo = c.tipo_colaborador) as tipo_colaborador,' +
    '(select u.usuario from usuario u where u.codigo = c.cod_usuario) as usuario FROM COLABORADOR c';
var
  filtro_tipo, condicao: string;
begin
  SQL_C_COLABORADOR.Close;
  cb_tipo_colab_consulta.ValidateEdit(False);
  cb_filtro.ValidateEdit(False);
  if check_edit then
  begin
    if edt_consulta.Text <> emptystr then
    begin
      if (cb_tipo_colab_consulta.SelectedItem <> 0) and (uppercase(cb_tipo_colab_consulta.Text) <> 'OUTROS') then
        filtro_tipo := ' and c.tipo_colaborador = "' + inttostr(cb_tipo_colab_consulta.SelectedItem) + '"';
      case cb_filtro.SelectedItem of
        0:
          condicao := ' where  c.codigo like "' + edt_consulta.Text + '%"';
        1:
          condicao := ' where  c.nome like "' + edt_consulta.Text + '%"';
        2:
          condicao := ' where  c.cpf like "' + edt_consulta.Text + '%"';
        3:
          condicao := ' where  c.cod_usuario = (select u.codigo from usuario u where u.tipo_usuario = "cliente" and u.usuario like "' + edt_consulta.Text + '%")';
      end;
    end;
  end
  else
  begin
    if edt_consulta.Text <> emptystr then
    begin
      if (cb_tipo_colab_consulta.SelectedItem <> 0) and (uppercase(cb_tipo_colab_consulta.Text) <> 'OUTROS') then
        filtro_tipo := ' and c.tipo_colaborador = "' + inttostr(cb_tipo_colab_consulta.SelectedItem) + '"';
      case cb_filtro.SelectedItem of
        0:
          condicao := ' where  c.codigo like "' + edt_consulta.Text + '%"';
        1:
          condicao := ' where  c.nome like "' + edt_consulta.Text + '%"';
        2:
          condicao := ' where  c.cpf like "' + edt_consulta.Text + '%"';
        3:
          condicao := ' where  c.cod_usuario = (select u.codigo from usuario u where u.tipo_usuario = "cliente" and u.usuario like "' + edt_consulta.Text + '%")';
      end;
    end
    else
    begin
      if (cb_tipo_colab_consulta.SelectedItem <> 0) and (uppercase(cb_tipo_colab_consulta.Text) <> 'OUTROS') then
        filtro_tipo := ' where c.tipo_colaborador = "' + inttostr(cb_tipo_colab_consulta.SelectedItem) + '"';
      condicao := '';
    end;
  end;
  SQL_C_COLABORADOR.Open(qry_base + condicao + filtro_tipo);
end;

procedure Tfrm_colaborador.CPFKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
begin
  if (Key = VK_RETURN) or (Key = VK_TAB) then
  begin
    cb_sexo.SetFocus;
  end;
end;

procedure Tfrm_colaborador.CPFKeyPress(Sender: TObject; var Key: Char);
begin
  inherited;
  Key := u_funcoes.ApenasNumeros(Key);
end;


procedure Tfrm_colaborador.CREDITO_DISPONIVELKeyPress(Sender: TObject; var Key: Char);
begin

  inherited;
  Key := u_funcoes.ApenasNumeros(Key);
end;

procedure Tfrm_colaborador.cxButton19Click(Sender: TObject);
begin
  FRM_cad_zona := TFRM_cad_zona.CREATE(Application);
  FRM_cad_zona.ShowModal;
  DBEdit1.Text := FRM_cad_zona.SQL_LISTADESCRICAO.value;
  DBComboBox1.SetFocus;
end;

procedure Tfrm_colaborador.cxButton1Click(Sender: TObject);
begin
  frm_colab_dados_adc := Tfrm_colab_dados_adc.Create(nil);
  frm_colab_dados_adc.ShowModal;
  frm_colab_dados_adc := nil;
end;

procedure Tfrm_colaborador.cxButton3Click(Sender: TObject);
var
  Diretorio: String;
begin
  if OpenPictureDialog1.Execute then
  begin
    TL_colab1.HIDE;
    Image1.Picture.LoadFromFile(OpenPictureDialog1.FileName);
    Diretorio := ExtractFilePath(Application.ExeName) + 'Fotos' + ExtractFileName(OpenPictureDialog1.FileName);
    Image1.Picture.SaveToFile(Diretorio);
    SQL_COLABORADORFOTO.AsString := Diretorio;
  end;

end;

procedure Tfrm_colaborador.cxButton5Click(Sender: TObject);
begin
  Frm_Municipio := TFrm_Municipio.Create(Application);
  Frm_Municipio.InformarDadosMunicipio1(DBEdit81, DBEdit80, DBEdit82, DBEdit2, DBEdit83, DBEdit104);
  Frm_Municipio.ShowModal;
  Frm_Municipio.Free;
  cb_tipo_colab.SetFocus;
end;

procedure Tfrm_colaborador.cxButton7Click(Sender: TObject);
begin
  DeleteFile(SQL_COLABORADORFOTO.AsString);
  SQL_COLABORADORFOTO.Clear;
  Image1.Picture := nil;
  TL_colab1.show;
end;

procedure Tfrm_colaborador.DBEdit6KeyPress(Sender: TObject; var Key: Char);
begin
  inherited;
  Key := u_funcoes.ApenasNumeros(Key);
end;

procedure Tfrm_colaborador.DBEdit7KeyPress(Sender: TObject; var Key: Char);
begin
  inherited;
  Key := u_funcoes.ApenasNumeros(Key);
end;

procedure Tfrm_colaborador.DBEdit8KeyPress(Sender: TObject; var Key: Char);
begin
  inherited;
  Key := u_funcoes.ApenasNumeros(Key);
end;

procedure Tfrm_colaborador.DBEdit9KeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
begin
  if (Key = VK_RETURN) or (Key = VK_TAB) then
  begin
    DBEdit75.SetFocus;
  end;
end;



procedure Tfrm_colaborador.carregar_comissoes;
begin
  if not ansimatchstr(edt_codigo.Text, [emptystr, '0']) then
  begin
    SQL_COMISSAO_COLAB.Close;
    SQL_COMISSAO_COLAB.ParamByName('pid_colab').Value := edt_codigo.Text;
    SQL_COMISSAO_COLAB.Open;
  end;

end;

procedure Tfrm_colaborador.cb_estado_civilKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
begin
  if (Key = VK_RETURN) or (Key = VK_TAB) then
  begin
    FUNCAO.SetFocus;
  end;
end;

procedure Tfrm_colaborador.cb_filtroPropertiesEditValueChanged(Sender: TObject);
begin
  consultar_colaborador;
end;

procedure Tfrm_colaborador.cb_sexoKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
begin
  if (Key = VK_RETURN) or (Key = VK_TAB) then
    cb_estado_civil.SetFocus;
end;

procedure Tfrm_colaborador.cb_tipo_colab_consultaPropertiesEditValueChanged(Sender: TObject);
begin
  consultar_colaborador(False);
end;

procedure Tfrm_colaborador.cxDBComboBox9KeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
begin
  if (Key = VK_RETURN) or (Key = VK_TAB) then
  begin
    NOME.SetFocus;
  end;
end;

procedure Tfrm_colaborador.cxDBTextEdit11KeyPress(Sender: TObject; var Key: Char);
begin
  case Key of
    '0' .. '9', #8:
      ;
  else
    Key := #0;
  end;
end;

procedure Tfrm_colaborador.cxDBTextEdit15KeyPress(Sender: TObject; var Key: Char);
begin
  inherited;
  Key := u_funcoes.ApenasNumeros(Key);
end;

procedure Tfrm_colaborador.cxGrid1DBTableView1CellDblClick(Sender: TcxCustomGridTableView; ACellViewInfo: TcxGridTableDataCellViewInfo; AButton: TMouseButton; AShift: TShiftState;
  var AHandled: Boolean);
begin
  with SQL_COLABORADOR do
  begin
    Close;
    ParamByName('pcodigo').Value := inttostr(SQL_C_COLABORADORcodigo.Value);
    Open;
  end;
  CarregarDadosInternos;
end;

procedure Tfrm_colaborador.cxGrid1DBTableView1CustomDrawCell(Sender: TcxCustomGridTableView; ACanvas: TcxCanvas; AViewInfo: TcxGridTableDataCellViewInfo; var ADone: Boolean);
begin
  GridZebrado(ACanvas, AViewInfo);

end;

procedure Tfrm_colaborador.cxGridDBTableView2CustomDrawCell(Sender: TcxCustomGridTableView; ACanvas: TcxCanvas; AViewInfo: TcxGridTableDataCellViewInfo; var ADone: Boolean);
begin
  GridZebrado(ACanvas, AViewInfo);
end;

procedure Tfrm_colaborador.grid_cDBTableView1CustomDrawCell(Sender: TcxCustomGridTableView; ACanvas: TcxCanvas; AViewInfo: TcxGridTableDataCellViewInfo; var ADone: Boolean);
begin
  GridZebrado(ACanvas, AViewInfo);
end;

procedure Tfrm_colaborador.cxTabSheet2Show(Sender: TObject);
begin
  SQL_C_COLABORADOR.Active := False;
  SQL_C_COLABORADOR.Active := true;
  SQL_COLABORADOR.Active := true;
  edt_consulta.SetFocus;
  Panel1.HIDE;
end;

procedure Tfrm_colaborador.cxTabSheet4Show(Sender: TObject);
begin
  SQL_COLABORADOR.Active := true;
  Panel1.show;
end;

procedure Tfrm_colaborador.cxTabSheet5Show(Sender: TObject);
var
  tipo_colab: string;
begin
  tipo_colab := SQL_COLABORADORTIPO_COLABORADOR.AsString;
  tipo_colab := TFunctions.ifthen(tipo_colab, ['0', ''], [inttostr(cb_tipo_colab.SelectedItem + 1), inttostr(cb_tipo_colab.SelectedItem + 1)]);
  Panel1.show;
end;

procedure Tfrm_colaborador.cxDBTextEdit17KeyPress(Sender: TObject; var Key: Char);
begin
  inherited;
  Key := u_funcoes.ApenasNumeros(Key);
end;

procedure Tfrm_colaborador.cxDBTextEdit18KeyPress(Sender: TObject; var Key: Char);
begin
  inherited;
  Key := u_funcoes.ApenasNumeros(Key);
end;

procedure Tfrm_colaborador.cxDBTextEdit19KeyPress(Sender: TObject; var Key: Char);
begin
  inherited;
  Key := u_funcoes.ApenasNumeros(Key);
end;

procedure Tfrm_colaborador.cxDBTextEdit1KeyPress(Sender: TObject; var Key: Char);
begin
  inherited;
  Key := u_funcoes.ApenasLetras(Key);
end;

procedure Tfrm_colaborador.cxDBTextEdit20KeyPress(Sender: TObject; var Key: Char);
begin
  inherited;
  Key := u_funcoes.ApenasNumeros(Key);
end;

procedure Tfrm_colaborador.DBEdit20KeyPress(Sender: TObject; var Key: Char);
begin
  inherited;
  Key := u_funcoes.ApenasNumeros(Key);
end;

procedure Tfrm_colaborador.DBEdit21KeyPress(Sender: TObject; var Key: Char);
begin
  inherited;
  Key := u_funcoes.ApenasNumeros(Key);
end;

procedure Tfrm_colaborador.DBEdit23KeyPress(Sender: TObject; var Key: Char);
begin
  inherited;
  Key := u_funcoes.ApenasNumeros(Key);
end;

procedure Tfrm_colaborador.DBEdit24KeyPress(Sender: TObject; var Key: Char);
begin
  inherited;
  Key := u_funcoes.ApenasNumeros(Key);
end;

procedure Tfrm_colaborador.DBEdit25KeyPress(Sender: TObject; var Key: Char);
begin
  inherited;
  Key := u_funcoes.ApenasNumeros(Key);
end;

procedure Tfrm_colaborador.DBEdit26KeyPress(Sender: TObject; var Key: Char);
begin
  inherited;
  Key := u_funcoes.ApenasNumeros(Key);
end;

procedure Tfrm_colaborador.DBEdit27KeyPress(Sender: TObject; var Key: Char);
begin
  inherited;
  Key := u_funcoes.ApenasNumeros(Key);
end;

procedure Tfrm_colaborador.DBEdit28KeyPress(Sender: TObject; var Key: Char);
begin
  inherited;
  Key := u_funcoes.ApenasNumeros(Key);
end;

procedure Tfrm_colaborador.DBEdit22KeyPress(Sender: TObject; var Key: Char);
begin
  inherited;
  Key := u_funcoes.ApenasNumeros(Key);
end;

procedure Tfrm_colaborador.DBEdit29KeyPress(Sender: TObject; var Key: Char);
begin
  inherited;
  Key := u_funcoes.ApenasNumeros(Key);
end;

procedure Tfrm_colaborador.DBEdit30KeyPress(Sender: TObject; var Key: Char);
begin
  inherited;
  Key := u_funcoes.ApenasNumeros(Key);
end;

procedure Tfrm_colaborador.DBEdit31KeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
begin
  if (Key = VK_RETURN) or (Key = VK_TAB) then
  begin
    BtnGravar.Click;
  end;
end;

procedure Tfrm_colaborador.DBEdit31KeyPress(Sender: TObject; var Key: Char);
begin
  inherited;
  Key := u_funcoes.ApenasNumeros(Key);
end;

procedure Tfrm_colaborador.DBEdit32KeyPress(Sender: TObject; var Key: Char);
begin
  inherited;
  Key := u_funcoes.ApenasNumeros(Key);
end;

procedure Tfrm_colaborador.DBEdit33KeyPress(Sender: TObject; var Key: Char);
begin
  inherited;
  Key := u_funcoes.ApenasNumeros(Key);
end;

procedure Tfrm_colaborador.DBEdit34KeyPress(Sender: TObject; var Key: Char);
begin
  inherited;
  Key := u_funcoes.ApenasNumeros(Key);
end;

procedure Tfrm_colaborador.DBEdit35KeyPress(Sender: TObject; var Key: Char);
begin
  inherited;
  Key := u_funcoes.ApenasNumeros(Key);
end;

procedure Tfrm_colaborador.DBEdit36KeyPress(Sender: TObject; var Key: Char);
begin
  inherited;
  Key := u_funcoes.ApenasNumeros(Key);
end;

procedure Tfrm_colaborador.DBEdit37KeyPress(Sender: TObject; var Key: Char);
begin
  inherited;
  Key := u_funcoes.ApenasNumeros(Key);
end;

procedure Tfrm_colaborador.DBEdit38KeyPress(Sender: TObject; var Key: Char);
begin
  inherited;
  Key := u_funcoes.ApenasNumeros(Key);
end;

procedure Tfrm_colaborador.DBEdit39KeyPress(Sender: TObject; var Key: Char);
begin
  inherited;
  Key := u_funcoes.ApenasNumeros(Key);
end;

procedure Tfrm_colaborador.cxDBTextEdit21KeyPress(Sender: TObject; var Key: Char);
begin
  inherited;
  Key := u_funcoes.ApenasNumeros(Key);
end;


procedure Tfrm_colaborador.cxDBTextEdit22KeyPress(Sender: TObject; var Key: Char);
begin
  inherited;
  Key := u_funcoes.ApenasLetras(Key);
end;

procedure Tfrm_colaborador.cxDBTextEdit26KeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
begin
  if (Key = VK_RETURN) or (Key = VK_TAB) then
    cb_estado_civil.SetFocus;
end;

procedure Tfrm_colaborador.cxDBTextEdit26KeyPress(Sender: TObject; var Key: Char);
begin
  inherited;
  Key := u_funcoes.ApenasLetras(Key);
end;

procedure Tfrm_colaborador.cxDBTextEdit27KeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
begin
  if (Key = VK_RETURN) or (Key = VK_TAB) then
  begin
    DBEdit11.SetFocus;
  end;
end;

procedure Tfrm_colaborador.cxDBTextEdit27KeyPress(Sender: TObject; var Key: Char);
begin
  inherited;
  Key := u_funcoes.ApenasLetras(Key);
end;

procedure Tfrm_colaborador.cxDBTextEdit28KeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
begin
  if (Key = VK_RETURN) or (Key = VK_TAB) then
  begin
    DBEdit18.SetFocus;
  end;
end;

procedure Tfrm_colaborador.cxDBTextEdit28KeyPress(Sender: TObject; var Key: Char);
begin
  inherited;
  Key := u_funcoes.ApenasLetras(Key);
end;

procedure Tfrm_colaborador.cxDBTextEdit29KeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
begin
  if (Key = VK_RETURN) or (Key = VK_TAB) then
  begin

  end;
end;

procedure Tfrm_colaborador.cxDBTextEdit30KeyPress(Sender: TObject; var Key: Char);
begin
  case Key of
    '0' .. '9', #8:
      ;
  else
    Key := #0;
  end;
end;

procedure Tfrm_colaborador.cxDBTextEdit31KeyPress(Sender: TObject; var Key: Char);
begin

  case Key of
    '0' .. '9', #8:
      ;
  else
    Key := #0;
  end;
end;

procedure Tfrm_colaborador.cxDBTextEdit32KeyPress(Sender: TObject; var Key: Char);
begin
  case Key of
    '0' .. '9', #8:
      ;
  else
    Key := #0;
  end;
end;

procedure Tfrm_colaborador.cxDBTextEdit39KeyPress(Sender: TObject; var Key: Char);
begin
  inherited;
  Key := u_funcoes.ApenasNumeros(Key);
end;

procedure Tfrm_colaborador.cxDBTextEdit41KeyPress(Sender: TObject; var Key: Char);
begin
  inherited;
  Key := u_funcoes.ApenasNumeros(Key);
end;

procedure Tfrm_colaborador.cxDBTextEdit5KeyPress(Sender: TObject; var Key: Char);
begin
  inherited;
  Key := u_funcoes.ApenasLetras(Key);
end;

procedure Tfrm_colaborador.DBEdit10KeyPress(Sender: TObject; var Key: Char);
begin
  inherited;
  Key := u_funcoes.ApenasNumeros(Key);
end;

procedure Tfrm_colaborador.DBEdit11KeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
begin
  if (Key = VK_RETURN) or (Key = VK_TAB) then
  begin
    DBEdit17.SetFocus;
  end;
end;

procedure Tfrm_colaborador.DBEdit11KeyPress(Sender: TObject; var Key: Char);
begin
  inherited;
  Key := u_funcoes.ApenasNumeros(Key);
end;

procedure Tfrm_colaborador.DBEdit12KeyPress(Sender: TObject; var Key: Char);
begin
  inherited;
  Key := u_funcoes.ApenasNumeros(Key);
end;

procedure Tfrm_colaborador.DBEdit13KeyPress(Sender: TObject; var Key: Char);
begin
  inherited;
  Key := u_funcoes.ApenasNumeros(Key);
end;

procedure Tfrm_colaborador.DBEdit14KeyPress(Sender: TObject; var Key: Char);
begin
  inherited;
  Key := u_funcoes.ApenasNumeros(Key);
end;

procedure Tfrm_colaborador.DBEdit15KeyPress(Sender: TObject; var Key: Char);
begin
  inherited;
  Key := u_funcoes.ApenasNumeros(Key);
end;

procedure Tfrm_colaborador.CarregarDadosInternos;
begin
  with SQL_ConsultarBanco do
  begin
    Close;
    Params[0].Value := SQL_COLABORADORCODIGO_BANCO_1.Value;
    Open;
  end;
  with SQL_ConsultarBanco do
  begin
    Close;
    Params[0].Value := SQL_COLABORADORCODIGO_BANCO_2.Value;
    Open;
  end;
  SQL_COLABORADOR_TIPO.Active := False;
  SQL_COLABORADOR_TIPO.Active := true;

  CPF.Text := Format_CPF_CNPJ(SQL_COLABORADORCPF.AsString);

  if not ansimatchstr(datetostr(SQL_COLABORADORDATA_NASCIMENTO.asDatetime), ['00/00/0000', '30/12/1899']) then
    edt_dt_nascimento.date := SQL_COLABORADORDATA_NASCIMENTO.asDatetime
  else
    edt_dt_nascimento.Clear;

  cxCheckBox2.Checked := (SQL_COLABORADORSTATUS_CADASTRAL.Value = 'ATIVO');

  cb_tipo_colab.ItemIndex := STRTOINT(ifthen(SQL_COLABORADORTIPO_COLABORADOR.AsString = '', '1', SQL_COLABORADORTIPO_COLABORADOR.AsString)) - 1;
  cb_sexo.ItemIndex := cb_sexo.Properties.Items.IndexOf(camelcase(ifthen(SQL_COLABORADORSEXO.AsString = '', 'MASCULINO', SQL_COLABORADORSEXO.AsString)));
  cb_estado_civil.ItemIndex := cb_estado_civil.Properties.Items.IndexOf(camelcase(ifthen(SQL_COLABORADORESTADO_CIVIL.AsString = '', 'SOLTEIRO(A)',
    SQL_COLABORADORESTADO_CIVIL.AsString)));

  if SQL_COLABORADORFOTO.AsString <> '' then
  begin
    try
      Image1.Picture.LoadFromFile(SQL_COLABORADORFOTO.AsString);
      TL_colab1.HIDE;
    except
    end;
  end
  else
  begin
    Image1.Picture := nil;
    TL_colab1.show;
  end;

//  preencher_usuario(SQL_COLABORADORcod_usuario.AsString);

  carregar_comissoes;


  u_funcoes.AlterarEnabled([gpcadastro, grpEndereco, GroupBox10, GroupBox5, cxButton3, cxButton7], False);

  u_funcoes.IniciarCadastro([BtnIncluir, BtnCancelar, BtnAlterar], False);

end;

procedure Tfrm_colaborador.CarregarUltimoCadastro;
begin
  SQL_INCREMENT.Close;
  SQL_INCREMENT.Open;
  with SQL_COLABORADOR do
  begin
    Close;
    ParamByName('pcodigo').Value := inttostr(SQL_INCREMENTauto_increment.Value - 1);
    Open;
  end;
end;

procedure Tfrm_colaborador.CELULAR_2KeyPress(Sender: TObject; var Key: Char);
begin
  inherited;
  Key := u_funcoes.ApenasNumeros(Key);
end;

procedure Tfrm_colaborador.CEPKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
begin
  if (Key = VK_RETURN) or (Key = VK_TAB) then
  begin
    cxButton2.Click;
  end;
end;

procedure Tfrm_colaborador.CEPKeyPress(Sender: TObject; var Key: Char);
begin

  inherited;
  Key := u_funcoes.ApenasNumeros(Key);
end;

procedure Tfrm_colaborador.DBEdit17KeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
begin
  if (Key = VK_RETURN) or (Key = VK_TAB) then
    NOME_MAE.SetFocus;
end;

procedure Tfrm_colaborador.DBEdit17KeyPress(Sender: TObject; var Key: Char);
begin
  inherited;
  Key := u_funcoes.ApenasNumeros(Key);
end;

procedure Tfrm_colaborador.DBEdit18KeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
begin
  if (Key = VK_RETURN) or (Key = VK_TAB) then
  begin
    DBEdit19.SetFocus;
  end;
end;

procedure Tfrm_colaborador.DBEdit18KeyPress(Sender: TObject; var Key: Char);
begin
  inherited;
  Key := u_funcoes.ApenasNumeros(Key);
end;

procedure Tfrm_colaborador.DBEdit19KeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
begin
  if (Key = VK_RETURN) or (Key = VK_TAB) then
  begin
    DBEdit76.SetFocus;
  end;
end;

procedure Tfrm_colaborador.DBEdit19KeyPress(Sender: TObject; var Key: Char);
begin
  inherited;
  Key := u_funcoes.ApenasNumeros(Key);
end;

procedure Tfrm_colaborador.DBEdit1KeyPress(Sender: TObject; var Key: Char);
begin
  inherited;
  Key := u_funcoes.ApenasNumeros(Key);
end;

procedure Tfrm_colaborador.DBEdit2KeyPress(Sender: TObject; var Key: Char);
begin
  inherited;
  Key := u_funcoes.ApenasNumeros(Key);
end;

procedure Tfrm_colaborador.DBEdit3KeyPress(Sender: TObject; var Key: Char);
begin
  inherited;
  Key := u_funcoes.ApenasNumeros(Key);
end;

procedure Tfrm_colaborador.DBEdit40KeyPress(Sender: TObject; var Key: Char);
begin
  inherited;
  Key := u_funcoes.ApenasNumeros(Key);
end;

procedure Tfrm_colaborador.DBEdit41KeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
begin
  if (Key = VK_RETURN) or (Key = VK_TAB) then
  begin

  end;
end;

procedure Tfrm_colaborador.DBEdit41KeyPress(Sender: TObject; var Key: Char);
begin
  inherited;
  Key := u_funcoes.ApenasNumeros(Key);
end;

procedure Tfrm_colaborador.DBEdit42KeyPress(Sender: TObject; var Key: Char);
begin
  inherited;
  Key := u_funcoes.ApenasNumeros(Key);
end;

procedure Tfrm_colaborador.DBEdit4KeyPress(Sender: TObject; var Key: Char);
begin
  inherited;
  Key := u_funcoes.ApenasNumeros(Key);
end;

procedure Tfrm_colaborador.DBEdit5KeyPress(Sender: TObject; var Key: Char);
begin
  inherited;
  Key := u_funcoes.ApenasNumeros(Key);
end;

procedure Tfrm_colaborador.edt_comissaoKeyPress(Sender: TObject; var Key: Char);
begin
  inherited;
  Key := ApenasNumeros(Key);
end;

procedure Tfrm_colaborador.edt_consultaKeyUp(Sender: TObject; var Key: Word; Shift: TShiftState);
begin
  consultar_colaborador;
end;

procedure Tfrm_colaborador.edt_dt_nascimentoKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
begin
  if (Key in [VK_TAB, VK_RETURN]) then
  begin
    edt_dt_nascimento.ValidateEdit(False);
    if (edt_dt_nascimento.EditValue <> Null) then
      CPF.SetFocus;
  end;
end;

procedure Tfrm_colaborador.edt_senhaKeyPress(Sender: TObject; var Key: Char);
begin
  inherited;
  Key := numletter(Key);
end;

procedure Tfrm_colaborador.edt_usuarioKeyPress(Sender: TObject; var Key: Char);
begin
  inherited;
  Key := numletter(Key, [Char(vk_space)]);
end;

procedure Tfrm_colaborador.edt_v_maxKeyPress(Sender: TObject; var Key: Char);
begin
  inherited;
  Key := ApenasNumeros(Key);
end;

procedure Tfrm_colaborador.edt_v_minKeyPress(Sender: TObject; var Key: Char);
begin
  inherited;
  Key := ApenasNumeros(Key);
end;

procedure Tfrm_colaborador.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  Action := caFree;
  self := nil;
end;

procedure Tfrm_colaborador.FormCreate(Sender: TObject);
begin
  cadastrar_user := False;
end;

procedure Tfrm_colaborador.FormKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
begin
  u_funcoes.TeclasAtalho(Key, [VK_F1, VK_F2, VK_F3, VK_F4], [BtnIncluir, BtnGravar, BtnCancelar, BtnAlterar]);
end;

procedure Tfrm_colaborador.FormShow(Sender: TObject);
begin
  with SQL_COLABORADOR_TIPO do
  begin
    Close;
    Open;
    first;
    cb_tipo_colab_consulta.Properties.Items.Clear;
    cb_tipo_colab_consulta.Properties.Items.Add('Todos');
    while not eof do
    BEGIN
      cb_tipo_colab_consulta.Properties.Items.Add(camelcase(RemoverUTF8(Fieldbyname('TIPO_COLABORADOR').AsString)));
      NEXT;
    END;
    cb_tipo_colab_consulta.ItemIndex := 0;
  end;
  cb_filtro.ItemIndex := 1;
  CarregarUltimoCadastro;
  CarregarDadosInternos;
end;

procedure Tfrm_colaborador.FUNCAOKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
begin
  if (Key = VK_RETURN) or (Key = VK_TAB) then
  begin
    NOME_PAI.SetFocus;
  end;
end;

procedure Tfrm_colaborador.LIMITE_CREDITOKeyPress(Sender: TObject; var Key: Char);
begin

  inherited;
  Key := u_funcoes.ApenasNumeros(Key);
end;

procedure Tfrm_colaborador.NACIONALIDADEKeyPress(Sender: TObject; var Key: Char);
begin
  inherited;
  Key := u_funcoes.ApenasLetras(Key);
end;

procedure Tfrm_colaborador.NOMEKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
begin
  if Key in [VK_TAB, VK_RETURN] then
    edt_dt_nascimento.SetFocus;
end;

procedure Tfrm_colaborador.NOMEKeyPress(Sender: TObject; var Key: Char);
begin
  inherited;
  Key := u_funcoes.ApenasLetras(Key);
end;

procedure Tfrm_colaborador.NOME_MAEKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
begin
  if (Key = VK_RETURN) or (Key = VK_TAB) then
  begin
    DBEdit18.SetFocus;
  end;
end;

procedure Tfrm_colaborador.NOME_MAEKeyPress(Sender: TObject; var Key: Char);
begin
  inherited;
  Key := u_funcoes.ApenasLetras(Key);
end;

procedure Tfrm_colaborador.NOME_PAIKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
begin
  if (Key = VK_RETURN) or (Key = VK_TAB) then
  begin
    DBEdit11.SetFocus;
  end;
end;

procedure Tfrm_colaborador.NOME_PAIKeyPress(Sender: TObject; var Key: Char);
begin
  inherited;
  Key := u_funcoes.ApenasLetras(Key);
end;

procedure Tfrm_colaborador.NUMEROKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
begin
  if (Key = VK_RETURN) or (Key = VK_TAB) then
  begin
    DBEdit79.SetFocus;
  end;
end;

procedure Tfrm_colaborador.NUMEROKeyPress(Sender: TObject; var Key: Char);
begin
  inherited;
  Key := u_funcoes.ApenasNumeros(Key);
end;

procedure Tfrm_colaborador.NUMERO_CARTEIRA_TRABALHOKeyPress(Sender: TObject; var Key: Char);
begin
  inherited;
  Key := u_funcoes.ApenasNumeros(Key);
end;

procedure Tfrm_colaborador.NUMERO_CNHKeyPress(Sender: TObject; var Key: Char);
begin
  inherited;
  Key := u_funcoes.ApenasNumeros(Key);
end;

procedure Tfrm_colaborador.ORGAO_EMISSORKeyPress(Sender: TObject; var Key: Char);
begin
  inherited;
  Key := u_funcoes.ApenasLetras(Key);
end;

procedure Tfrm_colaborador.permissoesShow(Sender: TObject);
begin
  Panel1.HIDE;
end;

procedure Tfrm_colaborador.PISKeyPress(Sender: TObject; var Key: Char);
begin
  inherited;
  Key := u_funcoes.ApenasNumeros(Key);
end;

procedure Tfrm_colaborador.RGKeyPress(Sender: TObject; var Key: Char);
begin

  inherited;
  Key := u_funcoes.ApenasNumeros(Key);
end;

procedure Tfrm_colaborador.SECAOKeyPress(Sender: TObject; var Key: Char);
begin

  inherited;
  Key := u_funcoes.ApenasNumeros(Key);
end;

procedure Tfrm_colaborador.SERIE_CARTEIRA_TRABALHOKeyPress(Sender: TObject; var Key: Char);
begin
  inherited;
  Key := u_funcoes.ApenasNumeros(Key);
end;

procedure Tfrm_colaborador.TITULO_ELEITORKeyPress(Sender: TObject; var Key: Char);
begin
  inherited;
  Key := u_funcoes.ApenasNumeros(Key);
end;

procedure Tfrm_colaborador.ZONAKeyPress(Sender: TObject; var Key: Char);
begin

  inherited;
  Key := u_funcoes.ApenasNumeros(Key);
end;

end.
