unit cad_servico;
{
================================================================================
|ITEM |DATA |DESENVOLVEDOR       |HISTORICO                                    |
|-----|-----|--------------------|---------------------------------------------|
|  100|22/04|Wander              |Implemtação desta tela                       |
|     |12:08|                    |                                             |
|-----|-----|--------------------|---------------------------------------------|
|  101|23/04|Wander              |Tratamento da STATUS_CADASTRAL Ativo/Inaivo  |
|     |05:30|                    |                                             |
|-----|-----|--------------------|---------------------------------------------|
|  102|23/04|Wander              |Aplicados controles de acesso para cadastro  |
|     |06:05|                    |de serviços                                  |
|-----|-----|--------------------|---------------------------------------------|
|  103|23/04|Wander              |Aplicada auditoria no cadastro de serviços   |
|     |06:40|                    |                                             |
|-----|-----|--------------------|---------------------------------------------|
|  104|23/04|Wander              |Criados LOGS para cadastro de serviços       |
|     |06:50|                    |                                             |
================================================================================
1.Listar Serviços
2.Tratamento de unidades de medidas
3.Consultar Plano de Contas

}

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, cxGraphics, cxLookAndFeels,
  cxLookAndFeelPainters, Vcl.Menus, dxSkinsCore, cxControls, cxContainer,
  cxEdit, Data.DB, Vcl.Grids, Vcl.DBGrids, Vcl.StdCtrls, cxGroupBox, cxTextEdit,
  cxMaskEdit, cxDropDownEdit, cxButtons, dxSkinOffice2013LightGray, dxSkinBlack,
  dxSkinBlue, dxSkinBlueprint, dxSkinCaramel, dxSkinCoffee, dxSkinDarkRoom,
  dxSkinDarkSide, dxSkinDevExpressDarkStyle, dxSkinDevExpressStyle, dxSkinFoggy,
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
  dxSkinWhiteprint, dxSkinXmas2008Blue, Vcl.ExtCtrls, FireDAC.Stan.Intf,
  FireDAC.Stan.Option, FireDAC.Stan.Param, FireDAC.Stan.Error, FireDAC.DatS,
  FireDAC.Phys.Intf, FireDAC.DApt.Intf, FireDAC.Stan.Async, FireDAC.DApt,
  FireDAC.Comp.DataSet, FireDAC.Comp.Client, cxRadioGroup, cxDBEdit, Vcl.Mask,
  Vcl.DBCtrls;

type
  TFrm_cad_servico = class(TForm)
    btncontas: TcxButton;
    btncusto: TcxButton;
    btnund: TcxButton;
    cxGroupBox1: TcxGroupBox;
    Label11: TLabel;
    edPESQUISA: TEdit;
    DBGrid1: TDBGrid;
    BtnGravar: TcxButton;
    BtnCancelar: TcxButton;
    BtnIncluir: TcxButton;
    BtnAlterar: TcxButton;
    BtnExcluir: TcxButton;
    pnCadastro: TPanel;
    cxComboBox3: TcxComboBox;
    Label1: TLabel;
    Label10: TLabel;
    Label2: TLabel;
    Label3: TLabel;
    Label4: TLabel;
    Label5: TLabel;
    Label9: TLabel;
    btPesquisaContaContabil: TcxButton;
    btPesquisaCentroDeCusto_Descricao: TcxButton;
    cxButton8: TcxButton;
    cxPagaComissaoSN: TcxComboBox;
    cxUNIDADE_MEDIDA: TcxComboBox;
    edCODIGO: TEdit;
    edDESCRICAO_PRODUTO: TEdit;
    edPRECO_FINAL_VAREJO: TEdit;
    edCentroDeCusto: TEdit;
    edContaContabil: TEdit;
    DS_C_Servico: TDataSource;
    SQL_C_ServicoCODIGO: TFDAutoIncField;
    SQL_C_ServicoDESCRICAO_PRODUTO: TStringField;
    SQL_C_Servico: TFDQuery;
    SQL_C_ServicoCODIGO_BARRAS: TStringField;
    SQL_C_ServicoCOD_BARRAS_AUXILIAR: TStringField;
    SQL_C_ServicoINFO_ADICIONAIS: TStringField;
    SQL_C_ServicoREFERENCIA_FABRICANTE: TStringField;
    SQL_C_ServicoMARCA: TStringField;
    SQL_C_ServicoFAMILIA: TStringField;
    SQL_C_ServicoGRUPO: TStringField;
    SQL_C_ServicoSUBGRUPO: TStringField;
    SQL_C_ServicoUNIDADE_MEDIDA: TStringField;
    SQL_C_ServicoDATA_CADASTRO: TDateField;
    SQL_C_ServicoTIPO_ITEM: TStringField;
    SQL_C_ServicoESTOQUE_MINIMO: TStringField;
    SQL_C_ServicoPRECO_CUSTO: TBCDField;
    SQL_C_ServicoFRETE: TBCDField;
    SQL_C_ServicoIMPOSTO: TBCDField;
    SQL_C_ServicoDESP_OPERACIONAIS: TBCDField;
    SQL_C_ServicoCUSTO_MEDIO: TBCDField;
    SQL_C_ServicoMARGEM_LUCRO: TBCDField;
    SQL_C_ServicoMARGEM_L_VAREJO: TBCDField;
    SQL_C_ServicoMARGEM_L_ATACADO: TBCDField;
    SQL_C_ServicoMARGEM_L_DISTRIBUIDOR: TBCDField;
    SQL_C_ServicoDESCONTO_MAXIMO: TBCDField;
    SQL_C_ServicoDESCONTO_M_VAREJO: TBCDField;
    SQL_C_ServicoDESCONTO_M_ATACADO: TBCDField;
    SQL_C_ServicoDESCONTO_M_DISTRIBUIDOR: TBCDField;
    SQL_C_ServicoDESCONTO_L_VAREJO: TBCDField;
    SQL_C_ServicoDESCONTO_L_ATACADO: TBCDField;
    SQL_C_ServicoDESCONTO_L_DISTRIBUIDOR: TBCDField;
    SQL_C_ServicoPAGAR_COMISSAO: TBCDField;
    SQL_C_ServicoCOMISSAO_BALCAO: TBCDField;
    SQL_C_ServicoBALCAO_COMISSAO_VAREJO: TBCDField;
    SQL_C_ServicoBALCAO_COMISSAO_ATACADO: TBCDField;
    SQL_C_ServicoBALCAO_COMISSAO_DISTRIBUIDOR: TBCDField;
    SQL_C_ServicoCOMISSAO_EXTERNA: TBCDField;
    SQL_C_ServicoEXTERNA_COMISSAO_VAREJO: TBCDField;
    SQL_C_ServicoEXTERNA_COMISSAO_ATACADO: TBCDField;
    SQL_C_ServicoEXTERNA_COMISSAO_DISTRIBUIDOR: TBCDField;
    SQL_C_ServicoPRECO_FINAL_ATACADO: TBCDField;
    SQL_C_ServicoPRECO_FINAL_DISTRIBUIDOR: TBCDField;
    SQL_C_ServicoPRECO_FINAL_VAREJO: TBCDField;
    SQL_C_ServicoPROMO_VAREJO: TBCDField;
    SQL_C_ServicoPROMO_ATACADO: TBCDField;
    SQL_C_ServicoPROMO_DISTRIBUIDOR: TBCDField;
    SQL_C_ServicoPROMOCAO_INICIO: TDateField;
    SQL_C_ServicoPROMOCAO_TERMINO: TDateField;
    SQL_C_ServicoVALOR_PROMOCIONAL_ATACADO: TBCDField;
    SQL_C_ServicoVALOR_PROMOCIONAL_DISTRIBUIDOR: TBCDField;
    SQL_C_ServicoVALOR_PROMOCIONAL_VAREJO: TBCDField;
    SQL_C_ServicoSALDO: TBCDField;
    SQL_C_ServicoALIQ_ICMS: TBCDField;
    SQL_C_ServicoREDUCAO_ICMS: TBCDField;
    SQL_C_ServicoALIQ_ICMS_SUBST: TStringField;
    SQL_C_ServicoREDUCAO_ICMS_ST: TBCDField;
    SQL_C_ServicoLUCRO_SUBST_TRIBUTARIA: TBCDField;
    SQL_C_ServicoVALOR_PAUTA_BC_ST: TBCDField;
    SQL_C_ServicoLEIS: TStringField;
    SQL_C_ServicoGENERO: TStringField;
    SQL_C_ServicoFORNECEDOR_NOME: TStringField;
    SQL_C_ServicoCOD_COMB: TStringField;
    SQL_C_ServicoALIQ_IPI: TStringField;
    SQL_C_ServicoENQUADRAMENTO_IPI: TIntegerField;
    SQL_C_ServicoCODIGO_LOCALIZACAO: TIntegerField;
    SQL_C_ServicoICMS_CST: TStringField;
    SQL_C_ServicoICMS_IPI: TStringField;
    SQL_C_ServicoPIS_CST: TStringField;
    SQL_C_ServicoCOFINS_CST: TStringField;
    SQL_C_ServicoCODIGO_ORIGEM_MERCADORIA: TIntegerField;
    SQL_C_ServicoCSOSN: TStringField;
    SQL_C_ServicoNCM: TStringField;
    SQL_C_ServicoCEST: TStringField;
    SQL_C_ServicoANP: TStringField;
    SQL_C_ServicoEX_IPI: TSingleField;
    SQL_C_ServicoSTATUS_CADASTRAL: TStringField;
    SQL_C_ServicoPESAVEL: TStringField;
    SQL_C_ServicoUTILIZA_ETIQUETA_BALANCA: TStringField;
    SQL_C_ServicoUSA_LOTE: TStringField;
    SQL_C_ServicoCONTROLADO: TStringField;
    SQL_C_ServicoCODIGO_FORNECEDOR: TIntegerField;
    SQL_C_ServicoQUANT_MINI_VAREJO_P: TBCDField;
    SQL_C_ServicoQUANT_MINI_ATACADO_P: TBCDField;
    SQL_C_ServicoQUANT_MINI_DISTRIBUIDOR_P: TBCDField;
    SQL_C_ServicoQUANT_MINI_VAREJO_Q: TBCDField;
    SQL_C_ServicoQUANT_MINI_ATACADO_Q: TBCDField;
    SQL_C_ServicoQUANT_MINI_DISTRIBUIDOR_Q: TBCDField;
    SQL_C_ServicoQUANT_MINI_VAREJO_D: TBCDField;
    SQL_C_ServicoQUANT_MINI_DISTRIBUIDOR_D: TBCDField;
    SQL_C_ServicoQUANT_MINI_ATACADO_D: TBCDField;
    SQL_C_ServicoCST_IPI: TStringField;
    SQL_C_ServicoCOD_BALANCA_1: TStringField;
    SQL_C_ServicoCOD_BALANCA_2: TStringField;
    SQL_C_ServicoCOD_BALANCA_3: TStringField;
    SQL_C_Servicoponto_impressao_id: TIntegerField;
    SQL_C_ServicoProduto_ou_Servico: TStringField;
    SQL_C_ServicoPagaComissaoSN: TStringField;
    SQL_C_ServicoContaContabil: TIntegerField;
    edContaContabil_Descricao: TEdit;
    edCentroDeCusto_Descricao: TEdit;
    SQL_C_ServicoCentroDeCustos: TIntegerField;
    cbSTATUS_CADASTRAL: TCheckBox;
    rgSTATUS_CADASTRAL: TRadioGroup;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure edCODIGOExit(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure edPESQUISAChange(Sender: TObject);
    procedure SQL_C_ServicoAfterScroll(DataSet: TDataSet);
    procedure btPesquisaContaContabilClick(Sender: TObject);
    procedure BtnAlterarClick(Sender: TObject);
    procedure edContaContabilExit(Sender: TObject);
    procedure FormKeyPress(Sender: TObject; var Key: Char);
    procedure edCentroDeCustoExit(Sender: TObject);
    procedure btPesquisaCentroDeCusto_DescricaoClick(Sender: TObject);
    procedure BtnIncluirClick(Sender: TObject);
    procedure BtnGravarClick(Sender: TObject);
    procedure BtnExcluirClick(Sender: TObject);
    procedure rgSTATUS_CADASTRALClick(Sender: TObject);
    procedure BtnCancelarClick(Sender: TObject);
    procedure edPRECO_FINAL_VAREJOExit(Sender: TObject);

  private
    { Private declarations }
    procedure Ajustes_Iniciais;
    procedure Carrega_Unidades_De_Medida;
    //procedure Carrega_Plano_De_Contas;
    procedure Limpar_Tela;
    procedure Listar_Servicos;
    procedure Mostrar_Dados;
    function IndiceUND(pSigla:String):Integer;
    procedure Incluir_Registro;
    procedure Excluir_Registro;
    function PodeExcluir:Boolean;
    function DadosCorretos:Boolean;
    procedure IniciarBotoes;

  public
    { Public declarations }
  end;

var
  Frm_cad_servico: TFrm_cad_servico;

implementation

uses
 S_Module, u_funcoes, cad_plano_contas, cad_centro_custo;

{$R *.dfm}




procedure TFrm_cad_servico.Ajustes_Iniciais;
begin
   // Bloquear campos de edição
   pnCadastro.Enabled := false;

   //Ajustar layout
   BtnIncluir.Top := 456;
   BtnIncluir.Left:=  56;

   //Carregar comboboxes
   Carrega_Unidades_De_Medida;
   //Carrega_Plano_De_Contas;

   // Limpar todos os campos da tela
   Limpar_Tela;

   //Mostrar todos os serviços cadastrados
   Listar_Servicos;
end;

{procedure TFrm_cad_servico.Carrega_Plano_De_Contas;
var Q : tFDQuery;
begin
   // Preenche o combo box de plano de contas
   cxPlano_Contas.Properties.Items.Clear;

   q := TFDQuery.Create(nil);
   q.Connection     := Module.connection;
   q.ConnectionName := 'connection';

   Q.Close;
   Q.Sql.Clear;
   Q.SQL.Add('SELECT *             ');
   Q.SQL.Add('  from plano_contas  ');
   Q.SQL.Add(' ORDER BY DESCRICAO  ');
   Q.Open;

   while not Q.Eof do
   begin
     cxPlano_Contas.Properties.Items.Add(Q.FieldByName('CLASSIFICACAO').AsString+'-'+
                                         Q.FieldByName('DESCRICAO'    ).AsString);
     Q.Next;
   end;
   Q.Free;
end;
}

procedure TFrm_cad_servico.BtnAlterarClick(Sender: TObject);
begin
   if not TemAcesso(Global_Usuario_Logado,'ALTSERV') then
   exit;

  // Salva estes dados para serem comparados ao serem gravados
  // a fim de registrar no log de eventos todas as alerações feitas pelo usuário
  SalvaDadosDaTela(Frm_cad_servico);

   pnCadastro.Enabled := True;

   // Nao pode...
   BtnIncluir.Visible := False;
   BtnAlterar.Enabled:= False;
   BtnExcluir.Enabled:= False;

   // Pode...
   BtnGravar.Visible  := True;
   BtnGravar.Enabled  := True;
   BtnCancelar.Enabled:= True;

   edCODIGO.ReadOnly := True;
   edDESCRICAO_PRODUTO.SetFocus;
end;

procedure TFrm_cad_servico.BtnCancelarClick(Sender: TObject);
begin
     IniciarBotoes;
end;

procedure TFrm_cad_servico.IniciarBotoes;
begin
   Limpar_Tela;
   pnCadastro.Enabled := False;

   // Nao pode...
   BtnGravar.Visible  := False;
   BtnGravar.Enabled  := False;
   BtnCancelar.Enabled:= False;

   // Pode...
   BtnIncluir.Visible := true;
   BtnAlterar.Enabled := true;
   BtnExcluir.Enabled := True;

   // Atualiza a lista de serviços
   Listar_Servicos;

   edPesquisa.SetFocus;
end;

procedure TFrm_cad_servico.BtnExcluirClick(Sender: TObject);
begin
   if not TemAcesso(Global_Usuario_Logado,'DELSERV') then
   begin
     RegistraLog('Acesso negado para excluir SERVICO: '+edCODIGO.Text+'-'+edDESCRICAO_PRODUTO.Text);
     exit;
   end;
   if not PodeExcluir then
      exit;

   if not wnconfirmacao('EXCLUIR', slinebreak + 'Deseja deletar serviço ?') then
      exit;

   Excluir_Registro;

   RegistraLog('Excluiu SERVICO: '+edCODIGO.Text+'-'+edDESCRICAO_PRODUTO.Text);

   Limpar_Tela;
   Listar_Servicos;
   edPESQUISA.setfocus;
end;

procedure TFrm_cad_servico.BtnGravarClick(Sender: TObject);
begin
   if not DadosCorretos then
      exit;

   ComparaDadosDaTela('SERVICO',Frm_cad_servico);
   Excluir_Registro;
   Incluir_Registro;

   IniciarBotoes;
end;

procedure TFrm_cad_servico.BtnIncluirClick(Sender: TObject);
begin
  if not TemAcesso(Global_Usuario_Logado,'ADDSERV') then
     exit;

  // Salva estes dados para serem comparados ao serem gravados
  // a fim de registrar no log de eventos todas as alerações feitas pelo usuário
  SalvaDadosDaTela(Frm_cad_servico);

   pnCadastro.Enabled := True;

   // Nao pode...
   BtnIncluir.Visible := False;
   BtnAlterar.Enabled := False;
   BtnExcluir.Enabled := False;

   // Pode...
   BtnGravar.Visible  := True;
   BtnGravar.Enabled  := True;
   BtnCancelar.Enabled:= True;

   Limpar_Tela;
   edCODIGO.Text     := '';
   edCODIGO.ReadOnly := True;
   edDESCRICAO_PRODUTO.SetFocus;
end;

procedure TFrm_cad_servico.Carrega_Unidades_De_Medida;
var Q : tFDQuery;
begin
   // Preenche o combo box de unidades de medida castradas
   cxUNIDADE_MEDIDA.Properties.Items.Clear;

   q := TFDQuery.Create(nil);
   q.Connection     := Module.connection;
   q.ConnectionName := 'connection';

   Q.Close;
   Q.Sql.Clear;
   Q.SQL.Add('SELECT SIGLA           ');
   Q.SQL.Add('  from produto_unidade ');
   Q.SQL.Add(' ORDER BY SIGLA        ');
   Q.Open;
   while not Q.Eof do
   begin
     cxUNIDADE_MEDIDA.Properties.Items.Add(Q.FieldByName('SIGLA').AsString);
     Q.Next;
   end;
   Q.Free;
end;

function TFrm_cad_servico.DadosCorretos: Boolean;
begin
   // Critica os dados da tela.
   // Retorna true se tudo ok
   // Retorna false em caso de erro ou não preenchimento de algo obrigatório
   //---------------------------------------------------------------------------
   result := false;

   if edDESCRICAO_PRODUTO.Text = '' then
   begin
     ShowMessage('Informe a descrição do serviço');
     edDESCRICAO_PRODUTO.SetFocus;
     exit;
   end;

   if cxUNIDADE_MEDIDA.Text = '' then
   begin
     ShowMessage('Informe a unidade de medida');
     cxUNIDADE_MEDIDA.SetFocus;
     exit;
   end;

   try
       if StrToFloat(masctostr(edPRECO_FINAL_VAREJO.Text)) < 0 Then
       begin
         ShowMessage('Preço inválido');
         edPRECO_FINAL_VAREJO.SetFocus;
         exit;
       end;
   except
      ShowMessage('Preço inválido');
      edPRECO_FINAL_VAREJO.SetFocus;
      exit;
   end;

   if cxPagaComissaoSN.Text = '' then
   begin
     ShowMessage('Informe se paga ou não comissão');
     cxPagaComissaoSN.SetFocus;
     exit;
   end;

   if edContaContabil.Text = '' then
   begin
     ShowMessage('Informe a Conta Contábil');
     edContaContabil.SetFocus;
     exit;
   end;

   if edCentroDeCusto.Text = '' then
   begin
     ShowMessage('Informe o Centro de Custos');
     edCentroDeCusto.SetFocus;
     exit;
   end;

   // Tudo ok
   result := True;
end;

procedure TFrm_cad_servico.btPesquisaCentroDeCusto_DescricaoClick(
  Sender: TObject);
begin
  FRM_cad_centro_custo := TFRM_cad_centro_custo.Create(Self);
  vFRM_cad_centro_custoConsultando := True;
  FRM_cad_centro_custo.ShowModal;
  edCentroDeCusto.Text           := FRM_cad_centro_custo.SQL_C_CENTRO.FieldByName('Codigo').AsString;
  edCentroDeCusto_Descricao.Text := FRM_cad_centro_custo.SQL_C_CENTRO.FieldByName('Classificacao').AsString + '-'+
                                    FRM_cad_centro_custo.SQL_C_CENTRO.FieldByName('Descricao').AsString;
  FRM_cad_centro_custo.Free;
end;

procedure TFrm_cad_servico.btPesquisaContaContabilClick(Sender: TObject);
begin
  FRM_cad_plano_contas := TFRM_cad_plano_contas.Create(Self);
  vFRM_cad_plano_contasConsultando := True;
  FRM_cad_plano_contas.ShowModal;
  edContaContabil.Text           := FRM_cad_plano_contas.SQL_C_PLANO.FieldByName('Codigo').AsString;
  edContaContabil_Descricao.Text := FRM_cad_plano_contas.SQL_C_PLANO.FieldByName('Classificacao').AsString + '-'+
                                    FRM_cad_plano_contas.SQL_C_PLANO.FieldByName('Descricao').AsString;
  FRM_cad_plano_contas.Free;
end;

procedure TFrm_cad_servico.edCODIGOExit(Sender: TObject);
begin
   Limpar_Tela;
   if edCODIGO.text = '' then
      exit;
   Listar_Servicos;
end;

procedure TFrm_cad_servico.edContaContabilExit(Sender: TObject);
begin
   edContaContabil_Descricao.Text := '';
   if edContaContabil.Text = '' then
      exit;

   try
      edContaContabil_Descricao.Text := DescricaoPlanoDeContas(StrToInt(edContaContabil.Text));
      if edContaContabil_Descricao.Text = '' then
      begin
         ShowMessage('Conta Contábil inexistente');
         edContaContabil.SetFocus;
         exit;
      end;
   except
      ShowMessage('Código de Conta Contábil inválido');
      edContaContabil.SetFocus;
      exit;
   end;
end;

procedure TFrm_cad_servico.edCentroDeCustoExit(Sender: TObject);
begin
   edCentroDeCusto_Descricao.Text := '';
   if edCentroDeCusto.Text = '' then
      exit;

   try
      edCentroDeCusto_Descricao.Text := DescricaoCentroDeCustos(StrToInt(edCentroDeCusto.Text));
      if edCentroDeCusto_Descricao.Text = '' then
      begin
         ShowMessage('Centro de Custo inexistente');
         edCentroDeCusto.SetFocus;
         exit;
      end;
   except
      ShowMessage('Código de Centro de Custo inválido');
      edCentroDeCusto.SetFocus;
      exit;
   end;
end;

procedure TFrm_cad_servico.edPESQUISAChange(Sender: TObject);
begin
   Listar_Servicos;
end;

procedure TFrm_cad_servico.edPRECO_FINAL_VAREJOExit(Sender: TObject);
var vPRECO_FINAL_VAREJO:Real;
begin
   if BtnCancelar.Focused then
      exit;

   try
       vPRECO_FINAL_VAREJO := StrToFloat(masctostr(edPRECO_FINAL_VAREJO.Text));
       if vPRECO_FINAL_VAREJO < 0 Then
       begin
         ShowMessage('Preço inválido');
         edPRECO_FINAL_VAREJO.SetFocus;
         exit;
       end;
       edPRECO_FINAL_VAREJO.Text := Float_to_String(vPRECO_FINAL_VAREJO);
   except
      ShowMessage('Preço inválido');
      edPRECO_FINAL_VAREJO.SetFocus;
      exit;
   end;

end;

procedure TFrm_cad_servico.Excluir_Registro;
var Q : tFDQuery;
begin
   if edCODIGO.Text = '' then
      exit;

   q := TFDQuery.Create(nil);
   q.Connection     := Module.connection;
   q.ConnectionName := 'connection';

   Q.Close;
   Q.Sql.Clear;
   Q.SQL.Add('DELETE FROM PRODUTO    ');
   Q.SQL.Add(' WHERE CODIGO = :CODIGO');
   Q.ParamByName('CODIGO').AsInteger := StrToInt(edCODIGO.Text);
   Q.ExecSql;

   Q.Free;
end;

procedure TFrm_cad_servico.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  Action := cafree;
  Self := nil;
end;

procedure TFrm_cad_servico.FormKeyPress(Sender: TObject; var Key: Char);
begin
   // ESC - sair
   if key = #27 Then
   begin
      key := #0;
      Exit;
   end;

   // ENTER = TAB
   if key = #13 Then
   begin
      key := #0;
      Perform(Wm_NextDlgCtl,0,0);
   end;
end;

procedure TFrm_cad_servico.FormShow(Sender: TObject);
begin
   Ajustes_Iniciais;
end;

procedure TFrm_cad_servico.Limpar_Tela;
var i : integer;
begin
   for i := 0 to Frm_cad_servico.ComponentCount - 1 do
   begin
     if (Frm_cad_servico.Components[i] is TEdit) then
        if (Frm_cad_servico.Components[i] as TEdit).Name <> 'edCODIGO' then
           (Frm_cad_servico.Components[i] as TEdit).Text := '';
     if (Frm_cad_servico.Components[i] is TcxComboBox) then
        (Frm_cad_servico.Components[i] as TcxComboBox).ItemIndex := -1;
     if (Frm_cad_servico.Components[i] is TCheckBox) then
        (Frm_cad_servico.Components[i] as TCheckBox).Checked := False;
   end;
end;


procedure TFrm_cad_servico.Listar_Servicos;
begin
   SQL_C_Servico.Close;
   SQL_C_Servico.sql.Clear;
   SQL_C_Servico.sql.Add('SELECT *                          ');
   SQL_C_Servico.sql.Add('  FROM PRODUTO                    ');
   SQL_C_Servico.sql.Add(' WHERE Produto_ou_Servico = ''S'' ');
   if edPESQUISA.Text <> '' then
   begin
      SQL_C_Servico.sql.Add('AND (   (DESCRICAO_PRODUTO LIKE :DESCRICAO_PRODUTO) ');
      SQL_C_Servico.sql.Add('     OR (CODIGO            LIKE :DESCRICAO_PRODUTO) ');
      SQL_C_Servico.sql.Add('    )                                               ');
      SQL_C_Servico.ParamByName('DESCRICAO_PRODUTO').AsString := '%'+edPESQUISA.Text+'%';
   end;
   case rgSTATUS_CADASTRAL.ItemIndex of
      0 : SQL_C_Servico.sql.Add('AND STATUS_CADASTRAL = ''ATIVO''   ');
      1 : SQL_C_Servico.sql.Add('AND STATUS_CADASTRAL = ''INATIVO'' ');
   end;
   SQL_C_Servico.Open;
   if SQL_C_Servico.Eof then
   begin
      BtnAlterar.Enabled := False;
      BtnExcluir.Enabled := False;
   end
   else
   begin
      BtnAlterar.Enabled := True;
      BtnExcluir.Enabled := True;
   end;
end;

procedure TFrm_cad_servico.Incluir_Registro;
var Q : tFDQuery;
    vCODIGO:Integer;
begin
   if edCODIGO.Text = '' then
   begin
      vCODIGO := ProximoProdutoCODIGO;
      RegistraLog('Cadastrou SERVICO: '+IntToStr(vCODIGO)+'-'+edDESCRICAO_PRODUTO.Text);
   end
   else
   begin
      vCODIGO := StrToInt(edCODIGO.Text);
      RegistraLog('Alterou SERVICO: '+IntToStr(vCODIGO)+'-'+edDESCRICAO_PRODUTO.Text);
   end;

   q := TFDQuery.Create(nil);
   q.Connection     := Module.connection;
   q.ConnectionName := 'connection';

   Q.Close;
   Q.Sql.Clear;
   Q.SQL.Add('INSERT INTO PRODUTO      ');
   Q.SQL.Add('     (                   ');
   Q.SQL.Add('      CODIGO,            ');
   Q.SQL.Add('      DESCRICAO_PRODUTO, ');
   Q.SQL.Add('      UNIDADE_MEDIDA,    ');
   Q.SQL.Add('      DATA_CADASTRO,     ');
   Q.SQL.Add('      PRECO_FINAL_VAREJO,');
   Q.SQL.Add('      STATUS_CADASTRAL,  ');
   Q.SQL.Add('      Produto_ou_Servico,');
   Q.SQL.Add('      PagaComissaoSN,    ');
   Q.SQL.Add('      ContaContabil,     ');
   Q.SQL.Add('      CentroDeCustos     ');
   Q.SQL.Add('     )                   ');
   Q.SQL.Add('VALUES                   ');
   Q.SQL.Add('     (                   ');
   Q.SQL.Add('     :CODIGO,            ');
   Q.SQL.Add('     :DESCRICAO_PRODUTO, ');
   Q.SQL.Add('     :UNIDADE_MEDIDA,    ');
   Q.SQL.Add('     :DATA_CADASTRO,     ');
   Q.SQL.Add('     :PRECO_FINAL_VAREJO,');
   Q.SQL.Add('     :STATUS_CADASTRAL,  ');
   Q.SQL.Add('     :Produto_ou_Servico,');
   Q.SQL.Add('     :PagaComissaoSN,    ');
   Q.SQL.Add('     :ContaContabil,     ');
   Q.SQL.Add('     :CentroDeCustos     ');
   Q.SQL.Add('     )                   ');
   Q.ParamByName('CODIGO'            ).AsInteger := vCODIGO;
   Q.ParamByName('DESCRICAO_PRODUTO' ).AsString  := edDESCRICAO_PRODUTO.Text;
   Q.ParamByName('UNIDADE_MEDIDA'    ).AsString  := cxUNIDADE_MEDIDA.Text;
   Q.ParamByName('DATA_CADASTRO'     ).AsDateTime:= Date;
   Q.ParamByName('PRECO_FINAL_VAREJO').AsFloat   := StrToFloat(masctostr(edPRECO_FINAL_VAREJO.Text));
   if cbSTATUS_CADASTRAL.Checked Then
      Q.ParamByName('STATUS_CADASTRAL'  ).AsString  := 'ATIVO'
   else
      Q.ParamByName('STATUS_CADASTRAL'  ).AsString  := 'INATIVO';
   Q.ParamByName('Produto_ou_Servico').AsString  := 'S';
   Q.ParamByName('PagaComissaoSN'    ).AsString  := Copy(cxPagaComissaoSN.Text,1,1);
   Q.ParamByName('ContaContabil'     ).AsInteger := StrToInt(edContaContabil.Text);
   Q.ParamByName('CentroDeCustos'    ).AsInteger := StrToInt(edCentroDeCusto.Text);
   Q.ExecSql;
   Q.Free;
end;

function TFrm_cad_servico.IndiceUND(pSigla:String):Integer;
var i : Integer;
begin
   // retorna o índice do combo que possui a sigla recebida
   result := -1;
   for i := 0 to cxUNIDADE_MEDIDA.Properties.Items.Count -1 do
   begin
      if cxUNIDADE_MEDIDA.Properties.Items[i] = pSigla then
      begin
        result := i;
        break;
      end;
   end;
end;

procedure TFrm_cad_servico.Mostrar_Dados;
begin
   // Preenche os campos da tela com os dados do registro da tabela
   //---------------------------------------------------------------------------
   edCODIGO.Text              := SQL_C_Servico.FieldByName('CODIGO'           ).AsString;
   edDESCRICAO_PRODUTO.Text   := SQL_C_Servico.FieldByName('DESCRICAO_PRODUTO').AsString;
   //cxUNIDADE_MEDIDA.ItemIndex := IndiceUND(NomeUND(SQL_C_Servico.FieldByName('UNIDADE_MEDIDA').AsInteger));
   cxUNIDADE_MEDIDA.ItemIndex := IndiceUND(SQL_C_Servico.FieldByName('UNIDADE_MEDIDA').AsString);

   if SQL_C_Servico.FieldByName('PagaComissaoSN').AsString = 'S' then
      cxPagaComissaoSN.ItemIndex := 0
   else
      cxPagaComissaoSN.ItemIndex := 1;

   edContaContabil.Text           := SQL_C_Servico.FieldByName('ContaContabil').AsString;
   edContaContabil_Descricao.Text := DescricaoPlanoDeContas(SQL_C_Servico.FieldByName('ContaContabil').AsInteger);

   edCentroDeCusto.Text           := SQL_C_Servico.FieldByName('CentroDeCustos').AsString;
   edCentroDeCusto_Descricao.Text := DescricaoCentroDeCustos(SQL_C_Servico.FieldByName('CentroDeCustos').AsInteger);

   edPRECO_FINAL_VAREJO.Text      := Float_to_String(SQL_C_Servico.FieldByName('PRECO_FINAL_VAREJO').AsFloat);

   if SQL_C_Servico.FieldByName('STATUS_CADASTRAL').AsString = 'ATIVO' Then
      cbSTATUS_CADASTRAL.Checked := True
   else
      cbSTATUS_CADASTRAL.Checked := False;

end;

function TFrm_cad_servico.PodeExcluir: Boolean;
var Q : tFDQuery;
begin
   //Critica integridade - se o serviço está sendo usado em alguma tabela
   //---------------------------------------------------------------------------

   Result := False;

   q := TFDQuery.Create(nil);
   q.Connection     := Module.connection;
   q.ConnectionName := 'connection';

   //Venda_Item
   Q.Close;
   Q.Sql.Clear;
   Q.SQL.Add('SELECT COUNT(*) as QTDE');
   Q.SQL.Add('  from venda_item ');
   Q.SQL.Add(' Where CODIGO_PRODUTO = :CODIGO_PRODUTO');
   Q.ParamByName('CODIGO_PRODUTO').AsInteger := StrToInt(edCODIGO.Text);
   Q.Open;
   if Q.FieldByName('QTDE').AsInteger > 0 then
   begin
      RegistraLog('Sist impediu excluir SERVICO já vendido: '+edCODIGO.Text+'-'+edDESCRICAO_PRODUTO.Text);
      ShowMessage('Há '+IntToStr(Q.FieldByName('QTDE').AsInteger)+
                  'Itens de venda para este serviço!'+#13+#13+
                  'Impossível exclui-lo');
      Q.Free;
      exit;
   end;

   // Pode excluir...
   Result := true;
   Q.Free;
end;

procedure TFrm_cad_servico.rgSTATUS_CADASTRALClick(Sender: TObject);
begin
   Listar_Servicos;
end;

procedure TFrm_cad_servico.SQL_C_ServicoAfterScroll(DataSet: TDataSet);
begin
   Mostrar_Dados;
end;

end.
