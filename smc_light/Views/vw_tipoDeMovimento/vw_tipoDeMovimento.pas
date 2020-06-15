﻿{ v 22.03.20 06:34 }
unit vw_tipoDeMovimento;
{
========================================================================================================================================
ALT|   DATA |HORA |UNIT                        |Descrição                                                                              |
---|--------|-----|----------------------------|----------------------------------------------------------------------------------------
298|15/06/20|03:16|vw_tipoDeMovimento          |Utilizando recurso (PINTAR) para destacar objetos focados com amarelo e readonly com cinza
========================================================================================================================================

================================================================================
| ITEM|DATA  HR|UNIT                |HISTORICO                                 |
|-----|--------|--------------------|------------------------------------------|
|  145|21/05/20|wander              |Padronizados os botões de controle (INS/  |
|     |   07:36|vw_tipoDeMovimento  |ALT/CAN/GRAV) e uso proc HabilitarPanels  |
|-----|--------|--------------------|------------------------------------------|
|  141|18/05/20|wander              |Criada aba Parâmetros Fiscais que define  |
|     |   08:00|vw_tipoDeMovimento  |quais grupos da NFe devem ser tratados    |
|-----|--------|--------------------|------------------------------------------|
|  137|14/05/20|wander              |Acertando a mecânica da tela do cad tipo  |
|     |   08:47|vw_tipoDeMovimento  |de movimento                              |
|-----|--------|--------------------|------------------------------------------|
|  136|14/05/20|wander              |Recebeu parâmetro TPMOV_FINALIDADE        |
|     |   08:01|vw_tipoDeMovimento  |Indicador Finalidade do Doc Fiscal        |
|-----|--------|--------------------|------------------------------------------|
|  135|14/05/20|wander              |Recebeu parâmetro TPMOV_EMITENF           |
|     |   08:01|vw_tipoDeMovimento  |Indicador de emissão de Doc Fiscal        |
================================================================================


================================================================================
|   DATA   |DESENVOLVEDOR|HISTORICO DA ALTERACAO DO CODIGO                     |
|----------|-------------|-----------------------------------------------------|
|01/04/2020|WANDER       |Incluido tratamento da situacao (ativo/inativo) do   |
|        61|             |Tipo de Movimento                                    |
|----------|-------------|-----------------------------------------------------|
|31/03/2020|WANDER       |Passou a tratar o Indicador Presencial do Cliente    |
|        59|             |                                                     |
|----------|-------------|-----------------------------------------------------|
|22/03/2020|WANDER       |Incluido log completo com antes/depois               |
|        41|             |                                                     |
|----------|-------------|-----------------------------------------------------|
|22/03/2020|WANDER       |Incluido controles de acessos                        |
|        40|             |                                                     |
|----------|-------------|-----------------------------------------------------|
|22/03/2020|WANDER       |Criados logs para cadastro de tipo movimento         |
|        39|             |                                                     |
|----------|-------------|-----------------------------------------------------|
|22/03/2020|WANDER       |Criada esta unit/form p/ cadastrar tipos de movimento|
|        36|             |                                                     |
================================================================================
}

interface

uses
  Winapi.Messages,
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
  Tfrm_tipoDeMovimento = class(TForm)
    DS_TPMOV: TDataSource;
    SQL_TPMOV: TFDQuery;
    DS_C_TPMOV: TDataSource;
    SQL_C_TPMOV: TFDQuery;
    tab_consulta: TcxTabSheet;
    Label45: TLabel;
    gd: TcxGrid;
    tb: TcxGridDBTableView;
    lv: TcxGridLevel;
    edt_consulta: TEdit;
    btn_relatorios_cli: TcxButton;
    tab_cadastrar: TcxTabSheet;
    SQL_C_TPMOVtpmov_codigo: TStringField;
    SQL_C_TPMOVtpmov_descricao: TStringField;
    tbtpmov_codigo: TcxGridDBColumn;
    tbtpmov_descricao: TcxGridDBColumn;
    page_control: TcxPageControl;
    SQL_Auxiliar: TFDQuery;
    pcCadastrar: TPageControl;
    tbDadosGerais: TTabSheet;
    tbParametrosFiscais: TTabSheet;
    Panel1: TPanel;
    Label10: TLabel;
    lbl2: TLabel;
    Label13: TLabel;
    edTPMOV_CODIGO: TEdit;
    edTPMOV_DESCRICAO: TEdit;
    cxTPMOV_ATIVA: TcxComboBox;
    rgTPMOV_CLIFOR: TRadioGroup;
    Panel2: TPanel;
    rgTPMOV_EMITENF: TRadioGroup;
    rgTPMOV_INDPRES: TRadioGroup;
    rgTPMOV_FINALIDADE: TRadioGroup;
    rgTPMOV_ES: TRadioGroup;
    tbTratamentosFiscais: TTabSheet;
    Panel3: TPanel;
    Label1: TLabel;
    GroupBox1: TGroupBox;
    cbTPMOV_NFE_TRATAR_GRUPO_B12A_NOTA_REFERENCIADA        : TCheckBox;
    cbTPMOV_NFE_TRATAR_GRUPO_B20a_NOTA_REFER_PROD_RURAL    : TCheckBox;
    cbTPMOV_NFE_TRATAR_GRUPO_B20j_CUPOM_FISCAL_REFERENCIADO: TCheckBox;
    cbTPMOV_NFE_TRATAR_GRUPO_F_LOCAL_DE_RETIRADA           : TCheckBox;
    cbTPMOV_NFE_TRATAR_GRUPO_G_LOCAL_DE_ENTREGA            : TCheckBox;
    cbTPMOV_NFE_TRATAR_GRUPO_DI_DECLARACAO_DE_IMPORTACAO   : TCheckBox;
    cbTPMOV_NFE_TRATAR_GRUPO_J_VEICULOS_NOVOS              : TCheckBox;
    cbTPMOV_NFE_TRATAR_GRUPO_K_MEDICAMENTOS                : TCheckBox;
    cbTPMOV_NFE_TRATAR_GRUPO_L_ARMAMENTOS                  : TCheckBox;
    cbTPMOV_NFE_TRATAR_GRUPO_L1_COMBUSTIVEIS               : TCheckBox;
    cbTPMOV_NFE_TRATAR_GRUPO_O_IPI                         : TCheckBox;
    cbTPMOV_NFE_TRATAR_GRUPO_P_II                          : TCheckBox;
    cbTPMOV_NFE_TRATAR_GRUPO_Q_PIS                         : TCheckBox;
    cbTPMOV_NFE_TRATAR_GRUPO_R_PIS_ST                      : TCheckBox;
    cbTPMOV_NFE_TRATAR_GRUPO_S_COFINS                      : TCheckBox;
    cbTPMOV_NFE_TRATAR_GRUPO_T_COFINS_ST                   : TCheckBox;
    cbTPMOV_NFE_TRATAR_GRUPO_U_ISSQN                       : TCheckBox;
    pnContador: TPanel;
    pnControles: TPanel;
    bControleIncluir: TcxButton;
    bControleAlterar: TcxButton;
    bControleCancelar: TcxButton;
    bControleGravar: TcxButton;

    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure Button1Click(Sender: TObject);
    procedure BtnExcluirClick(Sender: TObject);
    procedure PadronizarLayout();
    procedure FormKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
    procedure Duplicar_CadastroExecute(Sender: TObject);
    procedure CarregarDados;
    procedure CarregarUltimoCadastro;
    procedure DSCertFiles1GetPEMFilePasskey(ASender: TObject; var APasskey: AnsiString);
    procedure tab_consultaShow(Sender: TObject);
    procedure edt_consultaKeyUp(Sender: TObject; var Key: Word; Shift: TShiftState);
    procedure tbKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
    procedure btn_relatorios_cliClick(Sender: TObject);
    procedure SQL_C_TPMOVAfterScroll(DataSet: TDataSet);
    procedure FormShow(Sender: TObject);
    procedure edTPMOV_CODIGOExit(Sender: TObject);
    procedure FormKeyPress(Sender: TObject; var Key: Char);
    procedure tbCellDblClick(Sender: TcxCustomGridTableView;
      ACellViewInfo: TcxGridTableDataCellViewInfo; AButton: TMouseButton;
      AShift: TShiftState; var AHandled: Boolean);
    procedure FormCreate(Sender: TObject);
    procedure bControleIncluirClick(Sender: TObject);
    procedure bControleAlterarClick(Sender: TObject);
    procedure bControleCancelarClick(Sender: TObject);
    procedure bControleGravarClick(Sender: TObject);
    procedure FormKeyUp(Sender: TObject; var Key: Word; Shift: TShiftState);
  private
    { Private declarations }
    procedure dlConsulta;
    procedure ConsultaParaCadastro;
    function DadosCorretos:Boolean;
    Procedure LimpaTela;
    function TPMOV_Existe(pCodigo:String): Boolean;
    Procedure MostraDados(pCodigo:String);
    procedure Habilita_Campos(pEnabled:Boolean);
    procedure ExcluirRegistro;
    procedure IncluirRegistro;

  public
    { Public declarations }
  end;

var
  frm_tipoDeMovimento: Tfrm_tipoDeMovimento;
  vfrm_tipoDeMovimentovConsultaExterna:Boolean; // Se é uma consulta feita por outro form
  vfrm_tipoDeMovimentoTPMOV_CODIGO,             // Retorna o código do movimento selecionado
  vOperacao : String;

implementation

{$R *.dfm}

uses u_funcoes, liberacao, relatorios,
     c_Globals, botoes_smc, h_Dialogs, S_Parametros_Venda, h_Checks;

function Tfrm_tipoDeMovimento.DadosCorretos:Boolean;
begin
   // Critica dados obrigatórios e inconsistências...
   //---------------------------------------------------------------------------
   Result := False;

   //Codigo-Proibido informar na inclusao
   if vOperacao ='Inclusão' then
   begin
      if edTPMOV_CODIGO.Text <> '' then
      begin
        wnAlerta('Cadastrar Produto','Código não dever ser informado '+#13+#13+
                    'na inclusão de um novo Tipo de Movimento'+#13+#13+
                    'pois o sistema atribuirá um código sequencial ao mesmo');
        edTPMOV_CODIGO.SetFocus;
        exit;
      end;
   end;

   //Codigo-Obrigatório informar na alteração
   if vOperacao ='Alteração' then
   begin
     if edTPMOV_CODIGO.Text = '' then
     begin
       wnAlerta('Cadastrar Produto','Informe o Código');
       edTPMOV_CODIGO.SetFocus;
       exit;
     end;
   end;

   //Descricao
   if edTPMOV_DESCRICAO.Text = '' then
   begin
     wnAlerta('Cadastrar Produto','Informe a Descrição');
     edTPMOV_DESCRICAO.SetFocus;
     exit;
   end;

   //Indicador Presencial do Cliente
   if rgTPMOV_INDPRES.ItemIndex = -1 then
   begin
     wnAlerta('Cadastrar Produto','Informe o Indicador Presencial do Cliente');
     rgTPMOV_INDPRES.SetFocus;
     exit;
   end;

   //Indicador de Relacionamento
   if rgTPMOV_CLIFOR.ItemIndex = -1 then
   begin
     wnAlerta('Cadastrar Produto','Informe o Indicador de Relacionamento (Cliente, Fornecedor, Nada).');
     rgTPMOV_CLIFOR.SetFocus;
     exit;
   end;

   if rgTPMOV_EMITENF.ItemIndex = -1 then
      rgTPMOV_EMITENF.ItemIndex := 0;

   //Indicador de Fluxo de Mercadoria
   if rgTPMOV_ES.ItemIndex = -1 then
   begin
     wnAlerta('Cadastrar Produto','Informe o Indicador Fluxo da Mercadoria. (Entrada ou Saída).');
     rgTPMOV_ES.SetFocus;
     exit;
   end;

   if rgTPMOV_FINALIDADE.ItemIndex = -1 then
      rgTPMOV_FINALIDADE.ItemIndex := 5; // Não se Aplica

   // Situação Ativa/Bloqueado
   if cxTPMOV_ATIVA.ItemIndex = -1 then
   begin
     wnAlerta('Cadastrar Produto','Informe a Situação (ativo, bloqueado, suspenso)');
     cxTPMOV_ATIVA.SetFocus;
     exit;
   end;

   // Tudo ok!
   Result := True;
end;

procedure Tfrm_tipoDeMovimento.Button1Click(Sender: TObject);
begin
  bControleIncluir.Enabled := true;
end;

procedure Tfrm_tipoDeMovimento.ConsultaParaCadastro;
begin
  CarregarDados;
  tab_cadastrar.Show;
  bControleAlterar.Click;
end;

procedure Tfrm_tipoDeMovimento.BtnExcluirClick(Sender: TObject);
begin
  if not TemAcesso(Global_Usuario_Logado,'DELTPMOV') then
     exit;

  if edTPMOV_CODIGO.Text = '' then
  begin
    wnAlerta('Cadastrar Produto','Informe o Tipo de Movimento');
    edTPMOV_CODIGO.SetFocus;
    exit;
  end;

  RegistraLog('Excluiu TPMOV '+edTPMOV_CODIGO.Text+'-'+edTPMOV_DESCRICAO.Text);
  ExcluirRegistro;
  LimpaTela;
  edTPMOV_CODIGO.SetFocus;
end;

//procedure Tfrm_tipoDeMovimento.GridClientesDblClick(Sender: TObject);
//begin
//  u_funcoes.ConsultarCadastros(SQL_TPMOV, quotedstr(SQL_C_TPMOVtpmov_codigo.Value + '%'), 'TIPODEMOVIMENTO_TPMOV', 'CODIGO', 'pcodigo', '', '',
//    '', 0, 0);
//  tab_cadastrar.Show;
//  CarregarDadosInternos;
//end;

procedure Tfrm_tipoDeMovimento.PadronizarLayout;
begin
  CarregarDados; //CarregarDadosInternos;
end;

procedure Tfrm_tipoDeMovimento.SQL_C_TPMOVAfterScroll(DataSet: TDataSet);
begin
   CarregarDados;
end;

procedure Tfrm_tipoDeMovimento.CarregarDados;
begin
  if SQL_C_TPMOV.eof then
     exit;
  MostraDados(SQL_C_TPMOV.fieldbyname('TPMOV_CODIGO').Value);
end;

procedure Tfrm_tipoDeMovimento.CarregarUltimoCadastro;
begin
{
  with SQL_TPMOV do
  begin
    Active := false;
    Close;
    Params.Add.Name := 'pcodigo';
    ParamByName('pcodigo').Value := (sql_incrementAUTO_INCREMENT.asInteger - 1);
    Open;
    Active := true;
  end;
  CarregarDados;
}
end;

procedure Tfrm_tipoDeMovimento.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  Action := cafree;
  self := nil;
end;

procedure Tfrm_tipoDeMovimento.FormCreate(Sender: TObject);
begin
   vfrm_tipoDeMovimentoTPMOV_CODIGO := '';
   vfrm_tipoDeMovimentovConsultaExterna:= False;
end;

procedure Tfrm_tipoDeMovimento.FormKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
begin
  u_funcoes.TeclasAtalho(Key, [VK_F1, VK_F2, VK_F3, VK_F4, VK_F6], [bControleIncluir, bControleGravar, bControleCancelar, bControleAlterar]);
end;

procedure Tfrm_tipoDeMovimento.FormKeyPress(Sender: TObject; var Key: Char);
begin
   if key = #27 Then
   begin
      key := #0;
      Exit;
   end;

   if key = #13 Then
   begin
      key := #0;
      Perform(Wm_NextDlgCtl,0,0); //unit Winapi.Messages;
   end;
end;

procedure Tfrm_tipoDeMovimento.FormKeyUp(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
   Pintar(frm_tipoDeMovimento);
end;

procedure Tfrm_tipoDeMovimento.FormShow(Sender: TObject);
begin
   pcCadastrar.ActivePageIndex := 0;
   tab_Consulta.Show;
   Habilita_Campos(False);
end;

procedure Tfrm_tipoDeMovimento.Habilita_Campos(pEnabled: Boolean);
var i : Integer;
begin
   // habilita/Desabilita todos os campos da tela
   //---------------------------------------------------------------------------

   //Habilita Panels e padroniza botões de controle (ins/alt/canc/grav)
   HabilitarPanels(frm_tipoDeMovimento,pEnabled);

   //Campo código sempre inacessível...
   edTPMOV_CODIGO.ReadOnly:=true;
end;

procedure Tfrm_tipoDeMovimento.IncluirRegistro;
var vTPMOV_CODIGO:String;
begin
  // Incluir Registro
  if vOperacao ='Inclusão' then
     vTPMOV_CODIGO := ProxTPMOV
  else
     vTPMOV_CODIGO := edTPMOV_CODIGO.Text;

  SQL_Auxiliar.Close;
  SQL_Auxiliar.SQL.Clear;
  SQL_Auxiliar.SQL.Add('INSERT INTO TIPOMOVIMENTO_TPMOV                             ');
  SQL_Auxiliar.SQL.Add('     (TPMOV_CODIGO,                                         ');
  SQL_Auxiliar.SQL.Add('      TPMOV_DESCRICAO,                                      ');
  SQL_Auxiliar.SQL.Add('      TPMOV_INDPRES,                                        ');
  SQL_Auxiliar.SQL.Add('      TPMOV_CLIFOR,                                         ');
  SQL_Auxiliar.SQL.Add('      TPMOV_EMITENF,                                        ');
  SQL_Auxiliar.SQL.Add('      TPMOV_FINALIDADE,                                     ');
  SQL_Auxiliar.SQL.Add('      TPMOV_ES,                                             ');
  SQL_Auxiliar.SQL.Add('      TPMOV_NFE_TRATAR_GRUPO_B12A_NOTA_REFERENCIADA,        ');
  SQL_Auxiliar.SQL.Add('      TPMOV_NFE_TRATAR_GRUPO_B20a_NOTA_REFER_PROD_RURAL,    ');
  SQL_Auxiliar.SQL.Add('      TPMOV_NFE_TRATAR_GRUPO_B20j_CUPOM_FISCAL_REFERENCIADO,');
  SQL_Auxiliar.SQL.Add('      TPMOV_NFE_TRATAR_GRUPO_F_LOCAL_DE_RETIRADA,           ');
  SQL_Auxiliar.SQL.Add('      TPMOV_NFE_TRATAR_GRUPO_G_LOCAL_DE_ENTREGA,            ');
  SQL_Auxiliar.SQL.Add('      TPMOV_NFE_TRATAR_GRUPO_DI_DECLARACAO_DE_IMPORTACAO,   ');
  SQL_Auxiliar.SQL.Add('      TPMOV_NFE_TRATAR_GRUPO_J_VEICULOS_NOVOS,              ');
  SQL_Auxiliar.SQL.Add('      TPMOV_NFE_TRATAR_GRUPO_K_MEDICAMENTOS,                ');
  SQL_Auxiliar.SQL.Add('      TPMOV_NFE_TRATAR_GRUPO_L_ARMAMENTOS,                  ');
  SQL_Auxiliar.SQL.Add('      TPMOV_NFE_TRATAR_GRUPO_L1_COMBUSTIVEIS,               ');
  SQL_Auxiliar.SQL.Add('      TPMOV_NFE_TRATAR_GRUPO_O_IPI,                         ');
  SQL_Auxiliar.SQL.Add('      TPMOV_NFE_TRATAR_GRUPO_P_II,                          ');
  SQL_Auxiliar.SQL.Add('      TPMOV_NFE_TRATAR_GRUPO_Q_PIS,                         ');
  SQL_Auxiliar.SQL.Add('      TPMOV_NFE_TRATAR_GRUPO_R_PIS_ST,                      ');
  SQL_Auxiliar.SQL.Add('      TPMOV_NFE_TRATAR_GRUPO_S_COFINS,                      ');
  SQL_Auxiliar.SQL.Add('      TPMOV_NFE_TRATAR_GRUPO_T_COFINS_ST,                   ');
  SQL_Auxiliar.SQL.Add('      TPMOV_NFE_TRATAR_GRUPO_U_ISSQN,                       ');
  SQL_Auxiliar.SQL.Add('      TPMOV_ATIVA)                                          ');
  SQL_Auxiliar.SQL.Add('VALUES                                                      ');
  SQL_Auxiliar.SQL.Add('    (:TPMOV_CODIGO,                                         ');
  SQL_Auxiliar.SQL.Add('     :TPMOV_DESCRICAO,                                      ');
  SQL_Auxiliar.SQL.Add('     :TPMOV_INDPRES,                                        ');
  SQL_Auxiliar.SQL.Add('     :TPMOV_CLIFOR,                                         ');
  SQL_Auxiliar.SQL.Add('     :TPMOV_EMITENF,                                        ');
  SQL_Auxiliar.SQL.Add('     :TPMOV_FINALIDADE,                                     ');
  SQL_Auxiliar.SQL.Add('     :TPMOV_ES,                                             ');
  SQL_Auxiliar.SQL.Add('     :TPMOV_NFE_TRATAR_GRUPO_B12A_NOTA_REFERENCIADA,        ');
  SQL_Auxiliar.SQL.Add('     :TPMOV_NFE_TRATAR_GRUPO_B20a_NOTA_REFER_PROD_RURAL,    ');
  SQL_Auxiliar.SQL.Add('     :TPMOV_NFE_TRATAR_GRUPO_B20j_CUPOM_FISCAL_REFERENCIADO,');
  SQL_Auxiliar.SQL.Add('     :TPMOV_NFE_TRATAR_GRUPO_F_LOCAL_DE_RETIRADA,           ');
  SQL_Auxiliar.SQL.Add('     :TPMOV_NFE_TRATAR_GRUPO_G_LOCAL_DE_ENTREGA,            ');
  SQL_Auxiliar.SQL.Add('     :TPMOV_NFE_TRATAR_GRUPO_DI_DECLARACAO_DE_IMPORTACAO,   ');
  SQL_Auxiliar.SQL.Add('     :TPMOV_NFE_TRATAR_GRUPO_J_VEICULOS_NOVOS,              ');
  SQL_Auxiliar.SQL.Add('     :TPMOV_NFE_TRATAR_GRUPO_K_MEDICAMENTOS,                ');
  SQL_Auxiliar.SQL.Add('     :TPMOV_NFE_TRATAR_GRUPO_L_ARMAMENTOS,                  ');
  SQL_Auxiliar.SQL.Add('     :TPMOV_NFE_TRATAR_GRUPO_L1_COMBUSTIVEIS,               ');
  SQL_Auxiliar.SQL.Add('     :TPMOV_NFE_TRATAR_GRUPO_O_IPI,                         ');
  SQL_Auxiliar.SQL.Add('     :TPMOV_NFE_TRATAR_GRUPO_P_II,                          ');
  SQL_Auxiliar.SQL.Add('     :TPMOV_NFE_TRATAR_GRUPO_Q_PIS,                         ');
  SQL_Auxiliar.SQL.Add('     :TPMOV_NFE_TRATAR_GRUPO_R_PIS_ST,                      ');
  SQL_Auxiliar.SQL.Add('     :TPMOV_NFE_TRATAR_GRUPO_S_COFINS,                      ');
  SQL_Auxiliar.SQL.Add('     :TPMOV_NFE_TRATAR_GRUPO_T_COFINS_ST,                   ');
  SQL_Auxiliar.SQL.Add('     :TPMOV_NFE_TRATAR_GRUPO_U_ISSQN,                       ');
  SQL_Auxiliar.SQL.Add('     :TPMOV_ATIVA)                                          ');
  SQL_Auxiliar.ParamByName('TPMOV_CODIGO'                                 ).AsString := vTPMOV_CODIGO;
  SQL_Auxiliar.ParamByName('TPMOV_DESCRICAO'                              ).AsString := edTPMOV_DESCRICAO.Text;
  SQL_Auxiliar.ParamByName('TPMOV_INDPRES'                                ).AsInteger:= rgTPMOV_INDPRES.ItemIndex;
  SQL_Auxiliar.ParamByName('TPMOV_EMITENF'                                ).AsInteger:= rgTPMOV_EMITENF.ItemIndex;
  SQL_Auxiliar.ParamByName('TPMOV_FINALIDADE'                             ).AsInteger:= rgTPMOV_FINALIDADE.ItemIndex;
  if cxTPMOV_ATIVA.ItemIndex = 0 then
     SQL_Auxiliar.ParamByName('TPMOV_ATIVA'    ).AsString := 'S'
  else
     SQL_Auxiliar.ParamByName('TPMOV_ATIVA'    ).AsString := 'N';

  case rgTPMOV_CLIFOR.ItemIndex of
     0 : SQL_Auxiliar.ParamByName('TPMOV_CLIFOR').AsString := 'C'; // Cliente
     1 : SQL_Auxiliar.ParamByName('TPMOV_CLIFOR').AsString := 'F'; // Fornecedor
     2 : SQL_Auxiliar.ParamByName('TPMOV_CLIFOR').AsString := 'N'; // Nada
  end;

  if rgTPMOV_ES.ItemIndex = 0 then
     SQL_Auxiliar.ParamByName('TPMOV_ES').AsString := 'E'
  else
     SQL_Auxiliar.ParamByName('TPMOV_ES').AsString := 'S';

  SQL_Auxiliar.ParamByName('TPMOV_NFE_TRATAR_GRUPO_B12A_NOTA_REFERENCIADA'        ).AsInteger := f0_1(cbTPMOV_NFE_TRATAR_GRUPO_B12A_NOTA_REFERENCIADA.Checked);
  SQL_Auxiliar.ParamByName('TPMOV_NFE_TRATAR_GRUPO_B20a_NOTA_REFER_PROD_RURAL'    ).AsInteger := f0_1(cbTPMOV_NFE_TRATAR_GRUPO_B20a_NOTA_REFER_PROD_RURAL.Checked);
  SQL_Auxiliar.ParamByName('TPMOV_NFE_TRATAR_GRUPO_B20j_CUPOM_FISCAL_REFERENCIADO').AsInteger := f0_1(cbTPMOV_NFE_TRATAR_GRUPO_B20j_CUPOM_FISCAL_REFERENCIADO.Checked);
  SQL_Auxiliar.ParamByName('TPMOV_NFE_TRATAR_GRUPO_F_LOCAL_DE_RETIRADA'           ).AsInteger := f0_1(cbTPMOV_NFE_TRATAR_GRUPO_F_LOCAL_DE_RETIRADA.Checked);
  SQL_Auxiliar.ParamByName('TPMOV_NFE_TRATAR_GRUPO_G_LOCAL_DE_ENTREGA'            ).AsInteger := f0_1(cbTPMOV_NFE_TRATAR_GRUPO_G_LOCAL_DE_ENTREGA.Checked);
  SQL_Auxiliar.ParamByName('TPMOV_NFE_TRATAR_GRUPO_DI_DECLARACAO_DE_IMPORTACAO'   ).AsInteger := f0_1(cbTPMOV_NFE_TRATAR_GRUPO_DI_DECLARACAO_DE_IMPORTACAO.Checked);
  SQL_Auxiliar.ParamByName('TPMOV_NFE_TRATAR_GRUPO_J_VEICULOS_NOVOS'              ).AsInteger := f0_1(cbTPMOV_NFE_TRATAR_GRUPO_J_VEICULOS_NOVOS.Checked);
  SQL_Auxiliar.ParamByName('TPMOV_NFE_TRATAR_GRUPO_K_MEDICAMENTOS'                ).AsInteger := f0_1(cbTPMOV_NFE_TRATAR_GRUPO_K_MEDICAMENTOS.Checked);
  SQL_Auxiliar.ParamByName('TPMOV_NFE_TRATAR_GRUPO_L_ARMAMENTOS'                  ).AsInteger := f0_1(cbTPMOV_NFE_TRATAR_GRUPO_L_ARMAMENTOS.Checked);
  SQL_Auxiliar.ParamByName('TPMOV_NFE_TRATAR_GRUPO_L1_COMBUSTIVEIS'               ).AsInteger := f0_1(cbTPMOV_NFE_TRATAR_GRUPO_L1_COMBUSTIVEIS.Checked);
  SQL_Auxiliar.ParamByName('TPMOV_NFE_TRATAR_GRUPO_O_IPI'                         ).AsInteger := f0_1(cbTPMOV_NFE_TRATAR_GRUPO_O_IPI.Checked);
  SQL_Auxiliar.ParamByName('TPMOV_NFE_TRATAR_GRUPO_P_II'                          ).AsInteger := f0_1(cbTPMOV_NFE_TRATAR_GRUPO_P_II.Checked);
  SQL_Auxiliar.ParamByName('TPMOV_NFE_TRATAR_GRUPO_Q_PIS'                         ).AsInteger := f0_1(cbTPMOV_NFE_TRATAR_GRUPO_Q_PIS.Checked);
  SQL_Auxiliar.ParamByName('TPMOV_NFE_TRATAR_GRUPO_R_PIS_ST'                      ).AsInteger := f0_1(cbTPMOV_NFE_TRATAR_GRUPO_R_PIS_ST.Checked);
  SQL_Auxiliar.ParamByName('TPMOV_NFE_TRATAR_GRUPO_S_COFINS'                      ).AsInteger := f0_1(cbTPMOV_NFE_TRATAR_GRUPO_S_COFINS.Checked);
  SQL_Auxiliar.ParamByName('TPMOV_NFE_TRATAR_GRUPO_T_COFINS_ST'                   ).AsInteger := f0_1(cbTPMOV_NFE_TRATAR_GRUPO_T_COFINS_ST.Checked);
  SQL_Auxiliar.ParamByName('TPMOV_NFE_TRATAR_GRUPO_U_ISSQN'                       ).AsInteger := f0_1(cbTPMOV_NFE_TRATAR_GRUPO_U_ISSQN.Checked);
  SQL_Auxiliar.ExecSql;
end;

procedure Tfrm_tipoDeMovimento.LimpaTela;
var i : Integer;
begin
    for i := 0 to frm_tipoDeMovimento.ComponentCount - 1 do
    begin
       //TEdit
       if frm_tipoDeMovimento.Components[i].classtype = TEdit Then
          if ((frm_tipoDeMovimento.Components[i] as TEdit).name <> 'edTPMOV_CODIGO') Then
              (frm_tipoDeMovimento.Components[i] as TEdit).Text := '';
       //TcxComboBox
       if frm_tipoDeMovimento.Components[i].classtype = TcxComboBox Then
          (frm_tipoDeMovimento.Components[i] as TcxComboBox).ItemIndex := -1;

       //TRadioGroup
       if frm_tipoDeMovimento.Components[i].classtype = TRadioGroup Then
          (frm_tipoDeMovimento.Components[i] as TRadioGroup).ItemIndex := -1;

       //TCheckBox
       if frm_tipoDeMovimento.Components[i].classtype = TCheckBox Then
          (frm_tipoDeMovimento.Components[i] as TCheckBox).Checked := False;

    end;

    //Mostra aba Dados Gerais
    tbDadosGerais.Show;

end;

procedure Tfrm_tipoDeMovimento.MostraDados(pCodigo:String);
begin
   if not TPMOV_Existe(pCodigo) then exit;
   edTPMOV_CODIGO.Text       := SQL_TPMOV.FieldByName('TPMOV_CODIGO'   ).AsString;
   edTPMOV_DESCRICAO.Text    := SQL_TPMOV.FieldByName('TPMOV_DESCRICAO').AsString;

   //Indicador Presencial
   rgTPMOV_INDPRES.ItemIndex := SQL_TPMOV.FieldByName('TPMOV_INDPRES'  ).AsInteger;

   //Se relaciona com Cliente, Fornecedor ou Nenhum
   if SQL_TPMOV.FieldByName('TPMOV_CLIFOR').AsString = 'C' Then
      rgTPMOV_CLIFOR.ItemIndex := 0 // Cliente
   else
   if SQL_TPMOV.FieldByName('TPMOV_CLIFOR').AsString = 'F' Then
      rgTPMOV_CLIFOR.ItemIndex := 1 // Fornecedor
   else
   if SQL_TPMOV.FieldByName('TPMOV_CLIFOR').AsString = 'N' Then
      rgTPMOV_CLIFOR.ItemIndex := 2 // Nada
   else
      rgTPMOV_CLIFOR.ItemIndex := -1; // Não definido

   // Ativo ou Inativo
   if SQL_TPMOV.FieldByName('TPMOV_ATIVA').AsString = 'S' then
      cxTPMOV_ATIVA.ItemIndex:= 1
   else
      cxTPMOV_ATIVA.ItemIndex:= 0;

   // Emissão de Documento Fiscal
   rgTPMOV_EMITENF.ItemIndex:= SQL_TPMOV.FieldByName('TPMOV_EMITENF').AsInteger;

   //Finalidade do Doc Fiscal
   rgTPMOV_FINALIDADE.ItemIndex:= SQL_TPMOV.FieldByName('TPMOV_FINALIDADE').AsInteger;

   //Fluxo de Mercadoria
   if SQL_TPMOV.FieldByName('TPMOV_ES').AsString = 'E' then
      rgTPMOV_ES.ItemIndex := 0
   else
      rgTPMOV_ES.ItemIndex := 1;

   cbTPMOV_NFE_TRATAR_GRUPO_B12A_NOTA_REFERENCIADA.Checked         := (SQL_TPMOV.FieldByName('TPMOV_NFE_TRATAR_GRUPO_B12A_NOTA_REFERENCIADA'        ).AsInteger = 1);
   cbTPMOV_NFE_TRATAR_GRUPO_B20a_NOTA_REFER_PROD_RURAL.Checked     := (SQL_TPMOV.FieldByName('TPMOV_NFE_TRATAR_GRUPO_B20a_NOTA_REFER_PROD_RURAL'    ).AsInteger = 1);
   cbTPMOV_NFE_TRATAR_GRUPO_B20j_CUPOM_FISCAL_REFERENCIADO.Checked := (SQL_TPMOV.FieldByName('TPMOV_NFE_TRATAR_GRUPO_B20j_CUPOM_FISCAL_REFERENCIADO').AsInteger = 1);
   cbTPMOV_NFE_TRATAR_GRUPO_F_LOCAL_DE_RETIRADA.Checked            := (SQL_TPMOV.FieldByName('TPMOV_NFE_TRATAR_GRUPO_F_LOCAL_DE_RETIRADA'           ).AsInteger = 1);
   cbTPMOV_NFE_TRATAR_GRUPO_G_LOCAL_DE_ENTREGA.Checked             := (SQL_TPMOV.FieldByName('TPMOV_NFE_TRATAR_GRUPO_G_LOCAL_DE_ENTREGA'            ).AsInteger = 1);
   cbTPMOV_NFE_TRATAR_GRUPO_DI_DECLARACAO_DE_IMPORTACAO.Checked    := (SQL_TPMOV.FieldByName('TPMOV_NFE_TRATAR_GRUPO_DI_DECLARACAO_DE_IMPORTACAO'   ).AsInteger = 1);
   cbTPMOV_NFE_TRATAR_GRUPO_J_VEICULOS_NOVOS.Checked               := (SQL_TPMOV.FieldByName('TPMOV_NFE_TRATAR_GRUPO_J_VEICULOS_NOVOS'              ).AsInteger = 1);
   cbTPMOV_NFE_TRATAR_GRUPO_K_MEDICAMENTOS.Checked                 := (SQL_TPMOV.FieldByName('TPMOV_NFE_TRATAR_GRUPO_K_MEDICAMENTOS'                ).AsInteger = 1);
   cbTPMOV_NFE_TRATAR_GRUPO_L_ARMAMENTOS.Checked                   := (SQL_TPMOV.FieldByName('TPMOV_NFE_TRATAR_GRUPO_L_ARMAMENTOS'                  ).AsInteger = 1);
   cbTPMOV_NFE_TRATAR_GRUPO_L1_COMBUSTIVEIS.Checked                := (SQL_TPMOV.FieldByName('TPMOV_NFE_TRATAR_GRUPO_L1_COMBUSTIVEIS'               ).AsInteger = 1);
   cbTPMOV_NFE_TRATAR_GRUPO_O_IPI.Checked                          := (SQL_TPMOV.FieldByName('TPMOV_NFE_TRATAR_GRUPO_O_IPI'                         ).AsInteger = 1);
   cbTPMOV_NFE_TRATAR_GRUPO_P_II.Checked                           := (SQL_TPMOV.FieldByName('TPMOV_NFE_TRATAR_GRUPO_P_II'                          ).AsInteger = 1);
   cbTPMOV_NFE_TRATAR_GRUPO_Q_PIS.Checked                          := (SQL_TPMOV.FieldByName('TPMOV_NFE_TRATAR_GRUPO_Q_PIS'                         ).AsInteger = 1);
   cbTPMOV_NFE_TRATAR_GRUPO_R_PIS_ST.Checked                       := (SQL_TPMOV.FieldByName('TPMOV_NFE_TRATAR_GRUPO_R_PIS_ST'                      ).AsInteger = 1);
   cbTPMOV_NFE_TRATAR_GRUPO_S_COFINS.Checked                       := (SQL_TPMOV.FieldByName('TPMOV_NFE_TRATAR_GRUPO_S_COFINS'                      ).AsInteger = 1);
   cbTPMOV_NFE_TRATAR_GRUPO_T_COFINS_ST.Checked                    := (SQL_TPMOV.FieldByName('TPMOV_NFE_TRATAR_GRUPO_T_COFINS_ST'                   ).AsInteger = 1);
   cbTPMOV_NFE_TRATAR_GRUPO_U_ISSQN.Checked                        := (SQL_TPMOV.FieldByName('TPMOV_NFE_TRATAR_GRUPO_U_ISSQN'                       ).AsInteger = 1);
end;

procedure Tfrm_tipoDeMovimento.btn_relatorios_cliClick(Sender: TObject);
begin
  //frm_rel_clientes := Tfrm_rel_clientes.CREATE(Application);
  //frm_rel_clientes.ShowModal;
end;

procedure Tfrm_tipoDeMovimento.bControleAlterarClick(Sender: TObject);
begin
   if edTPMOV_CODIGO.Text = '' then
   begin
     wnAlerta('Cadastrar Produto','Selecione um Tipo de Movimento a alterar');
     exit;
   end;

   if not TemAcesso(Global_Usuario_Logado,'ALTTPMOV') then
     exit;

  // Salva estes dados para serem comparados ao serem gravados
  // a fim de registrar no log de eventos todas as alerações feitas pelo usuário
  SalvaDadosDaTela(frm_tipoDeMovimento);

  vOperacao := 'Alteração';

  //Ajusta botões de controle
  pode_Cancelar_Gravar(frm_tipoDeMovimento);

  Habilita_Campos(True);

  Case pcCadastrar.ActivePageIndex of
     0 : edTPMOV_DESCRICAO.SetFocus;
     1 : rgTPMOV_EMITENF.SetFocus;
     2 : cbTPMOV_NFE_TRATAR_GRUPO_B12A_NOTA_REFERENCIADA.SetFocus;
  End;
end;

procedure Tfrm_tipoDeMovimento.bControleCancelarClick(Sender: TObject);
begin
   LimpaTela;

   //Ajusta botões de controle
   pode_Alterar_Incluir(frm_tipoDeMovimento);

   tbDadosGerais.Show;
end;

procedure Tfrm_tipoDeMovimento.bControleGravarClick(Sender: TObject);
var
  x: Integer;
begin
   if not DadosCorretos then exit;

   if vOperacao = 'Inclusão' then
   begin
      IncluirRegistro;
      RegistraLog('Cadastrou TPMOV '+edTPMOV_CODIGO.Text+'-'+edTPMOV_DESCRICAO.Text);
   end
   else
   begin
      ExcluirRegistro;
      IncluirRegistro;
      RegistraLog('Alterou TPMOV '+edTPMOV_CODIGO.Text+'-'+edTPMOV_DESCRICAO.Text);
   end;

   ComparaDadosDaTela('TPMOV',frm_tipoDeMovimento);

   LimpaTela;
   Habilita_Campos(False);

   //Ajusta botões de controle
   pode_Alterar_Incluir(frm_tipoDeMovimento);

   //Volta para a consulta
   tab_Consulta.Show;
   edt_Consulta.Setfocus
end;

procedure Tfrm_tipoDeMovimento.bControleIncluirClick(Sender: TObject);
begin
  if not TemAcesso(Global_Usuario_Logado,'ADDTPMOV') then
     exit;
  vOperacao:='Inclusão';
  edTPMOV_CODIGO.Text := '';

  //Ajusta botões de controle
  pode_Cancelar_Gravar(frm_tipoDeMovimento);

  LimpaTela;

  SalvaDadosDaTela(frm_tipoDeMovimento);
  Habilita_Campos(True);

  edTPMOV_DESCRICAO.SetFocus;

end;

procedure Tfrm_tipoDeMovimento.tab_consultaShow(Sender: TObject);
begin
  dlConsulta;
end;

procedure Tfrm_tipoDeMovimento.tbCellDblClick(Sender: TcxCustomGridTableView;
  ACellViewInfo: TcxGridTableDataCellViewInfo; AButton: TMouseButton;
  AShift: TShiftState; var AHandled: Boolean);
begin
  //Se for uma consulta externa (chamada por outro form)
  //Retorna o código do registro selecionado
  if vfrm_tipoDeMovimentovConsultaExterna then
  begin
     if SQL_TPMOV.eof then
       close;

     vfrm_tipoDeMovimentoTPMOV_CODIGO := SQL_TPMOV.FieldByName('TPMOV_CODIGO').AsString;
     Close;
  end;

  //Se não for uma consulta externa (chamada por outro form)
  //Mostra a aba 'Cadastrar'
  tab_Cadastrar.Show;
end;

procedure Tfrm_tipoDeMovimento.tbKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
begin
  if Key = VK_RETURN then
    ConsultaParaCadastro;
end;

function Tfrm_tipoDeMovimento.TPMOV_Existe(pCodigo:String): Boolean;
begin
  result := false;
  SQL_TPMOV.Close;
  SQL_TPMOV.SQL.Clear;
  SQL_TPMOV.SQL.Add('Select *                     ');
  SQL_TPMOV.SQL.Add('  from tipomovimento_tpmov   ');
  SQL_TPMOV.SQL.Add('where tpmov_codigo = :pcodigo');
  SQL_TPMOV.ParamByName('pcodigo').Value := pCodigo;
  SQL_TPMOV.Open;
  if SQL_TPMOV.Eof then
     exit;

  result := true;
end;

procedure Tfrm_tipoDeMovimento.dlConsulta;
begin
  SQL_C_TPMOV.Close;
  SQL_C_TPMOV.Sql.Clear;
  SQL_C_TPMOV.Sql.Add('SELECT TPMOV_CODIGO,      ');
  SQL_C_TPMOV.Sql.Add('       TPMOV_DESCRICAO    ');
  SQL_C_TPMOV.Sql.Add('  FROM TIPOMOVIMENTO_TPMOV');
  if edt_consulta.Text <> '' then
  begin
    SQL_C_TPMOV.Sql.Add('WHERE TPMOV_DESCRICAO LIKE :TPMOV_DESCRICAO');
    SQL_C_TPMOV.ParamByName('TPMOV_DESCRICAO').AsString := '%'+ edt_consulta.Text + '%';
  end;
  SQL_C_TPMOV.Sql.Add(' ORDER BY TPMOV_DESCRICAO ');
  SQL_C_TPMOV.Open;

  //Atualiza a quantidade de registros
  pnContador.Caption := FormatFloat('#,##0',SQL_C_TPMOV.RecordCount);


  //Se não há registros, não pode alterar
  if SQL_C_TPMOV.Eof then
     bControleAlterar.Enabled  := False
  else
     bControleAlterar.Enabled  := True;
end;

procedure Tfrm_tipoDeMovimento.DSCertFiles1GetPEMFilePasskey(ASender: TObject; var APasskey: AnsiString);
begin
  wnAlerta('Cadastrar Produto',APasskey);
end;

procedure Tfrm_tipoDeMovimento.Duplicar_CadastroExecute(Sender: TObject);
begin
//  DuplicarCadastro(SQL_TPMOV, 'TIPOMOVIMENTO_TPMOV', SQL_C_TPMOVtpmov_codigo.AsString);
//  CarregarDados;
  //AlterarEnabled([gpFisica, gpJuridica, gpData, gpBanco, gpContato, grpEndereco , gpJuridica, gpFisica, bControleCancelar,
  //   btn_ramo], true);
//  IniciarCadastro([bControleIncluir, bControleCancelar, bControleAlterar], true);
//  tab_cadastrar.Show;
end;

procedure Tfrm_tipoDeMovimento.edTPMOV_CODIGOExit(Sender: TObject);
begin
   if btn_relatorios_cli.Focused then exit;
   if bControleIncluir.Focused         then exit;
   if edTPMOV_CODIGO.Text = ''   then exit;

   MostraDados(edTPMOV_CODIGO.Text);

end;

procedure Tfrm_tipoDeMovimento.edt_consultaKeyUp(Sender: TObject; var Key: Word; Shift: TShiftState);
begin
  dlConsulta;
end;

procedure Tfrm_tipoDeMovimento.ExcluirRegistro;
begin
  // Excluir Registro
  SQL_Auxiliar.Close;
  SQL_Auxiliar.SQL.Clear;
  SQL_Auxiliar.SQL.Add('DELETE FROM TIPOMOVIMENTO_TPMOV    ');
  SQL_Auxiliar.SQL.Add(' WHERE TPMOV_CODIGO = :TPMOV_CODIGO');
  SQL_Auxiliar.ParamByName('TPMOV_CODIGO').AsString := edTPMOV_CODIGO.Text;
  SQL_Auxiliar.ExecSql;
end;

end.

