//Verificado automaticamente em 16/06/2020 09:28
unit cad_servico;
{
========================================================================================================================================
ALT|   DATA |HORA |UNIT                        |Descrição                                                                              |
---|--------|-----|----------------------------|----------------------------------------------------------------------------------------
342|15/06/20|18:23|cad_servico                 |Passa a tratar PRODUTO_PROD(PROD_CDUNIDADE)ao invés de PRODUTO(PROD_CDUNIDADE)
341|15/06/20|18:23|cad_servico                 |Passa a tratar PRODUTO_PROD(PROD_CODIGO) ao invés de PRODUTO(CODIGO)
323|15/06/20|13:35|cad_servico                 |Passa a tratar PRODUTO_PROD(PROD_EAN)    ao invés de PRODUTO(CODIGO_BARRAS)
========================================================================================================================================

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
  FireDAC.Comp.DataSet, FireDAC.Comp.Client;

type
  TFrm_cad_servico = class(TForm)
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
    cxPROD_CDUNIDADE: TcxComboBox;
    edCODIGO: TEdit;
    edPROD_DESCRICAO: TEdit;
    edPROD_PRECO_VAR: TEdit;
    edCentroDeCusto: TEdit;
    edContaContabil: TEdit;
    DS_C_Servico: TDataSource;
    SQL_C_ServicoCODIGO: TFDAutoIncField;
    SQL_C_ServicoPROD_DESCRICAO: TStringField;
    SQL_C_Servico: TFDQuery;
    SQL_C_ServicoCODIGO_BARRAS: TStringField;
    SQL_C_ServicoCOD_BARRAS_AUXILIAR: TStringField;
    SQL_C_ServicoPROD_DETALHES: TStringField;
    SQL_C_ServicoPROD_REFERENCIASFABRICA: TStringField;
    SQL_C_ServicoMARCA: TStringField;
    SQL_C_ServicoFAMILIA: TStringField;
    SQL_C_ServicoGRUPO: TStringField;
    SQL_C_ServicoSUBGRUPO: TStringField;
    SQL_C_ServicoPROD_CDUNIDADE: TStringField;
    SQL_C_ServicoDATA_CADASTRO: TDateField;
    SQL_C_ServicoTIPO_ITEM: TStringField;
    SQL_C_ServicoPROD_ESTOQMIN: TStringField;
    SQL_C_ServicoPRECO_CUSTO: TBCDField;
    SQL_C_ServicoFRETE: TBCDField;
    SQL_C_ServicoIMPOSTO: TBCDField;
    SQL_C_ServicoDESP_OPERACIONAIS: TBCDField;
    SQL_C_ServicoCUSTO_MEDIO: TBCDField;
    SQL_C_ServicoMARGEM_LUCRO: TBCDField;
    SQL_C_ServicoMARGEM_L_VAREJO: TBCDField;
    SQL_C_ServicoMARGEM_L_ATACADO: TBCDField;
    SQL_C_ServicoMARGEM_L_DISTRIBUIDOR: TBCDField;
    SQL_C_ServicoPROD_MAXDESC: TBCDField;
    SQL_C_ServicoPROD_MAXDESC_VAR: TBCDField;
    SQL_C_ServicoPROD_MAXDESC_ATAC: TBCDField;
    SQL_C_ServicoPROD_MAXDESC_DIST: TBCDField;
    SQL_C_ServicoDESCONTO_L_VAREJO: TBCDField;
    SQL_C_ServicoDESCONTO_L_ATACADO: TBCDField;
    SQL_C_ServicoDESCONTO_L_DISTRIBUIDOR: TBCDField;
    SQL_C_ServicoPROD_COMISSAO: TBCDField;
    SQL_C_ServicoPROD_COMISSAO_LOJA: TBCDField;
    SQL_C_ServicoPROD_COMISSAO_VAR: TBCDField;
    SQL_C_ServicoPROD_COMISSAO_ATAC: TBCDField;
    SQL_C_ServicoPROD_COMISSAO_DIST: TBCDField;
    SQL_C_ServicoPROD_COMISSAO_EXT: TBCDField;
    SQL_C_ServicoPROD_COMISSAO_EXT_VAR: TBCDField;
    SQL_C_ServicoPROD_COMISSAO_EXT_ATAC: TBCDField;
    SQL_C_ServicoPROD_COMISSAO_EXT_DIST: TBCDField;
    SQL_C_ServicoPROD_PRECO_ATAC: TBCDField;
    SQL_C_ServicoPROD_PRECO_DIST: TBCDField;
    SQL_C_ServicoPROD_PRECO_VAR: TBCDField;
    SQL_C_ServicoPROD_PROMOCAO_VAR: TBCDField;
    SQL_C_ServicoPROD_PROMOCAO_ATAC: TBCDField;
    SQL_C_ServicoPROD_PROMOCAO_DIST: TBCDField;
    SQL_C_ServicoPROMOCAO_INICIO: TDateField;
    SQL_C_ServicoPROMOCAO_TERMINO: TDateField;
    SQL_C_ServicoVALOR_PROMOCIONAL_ATACADO: TBCDField;
    SQL_C_ServicoVALOR_PROMOCIONAL_DISTRIBUIDOR: TBCDField;
    SQL_C_ServicoVALOR_PROMOCIONAL_VAREJO: TBCDField;
    SQL_C_ServicoPROD_SALDO: TBCDField;
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
    procedure edPROD_PRECO_VARExit(Sender: TObject);
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

{$R *.dfm}

uses S_Module, u_funcoes, cad_plano_contas, cad_centro_custo, u_funformatartexto;

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
   edPROD_DESCRICAO.SetFocus;
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
     RegistraLog('Acesso negado para excluir SERVICO: '+edCODIGO.Text+'-'+edPROD_DESCRICAO.Text);
     exit;
   end;
   if not PodeExcluir then
      exit;

   if not wnconfirmacao('EXCLUIR', slinebreak + 'Deseja deletar serviço ?') then
      exit;

   Excluir_Registro;

   RegistraLog('Excluiu SERVICO: '+edCODIGO.Text+'-'+edPROD_DESCRICAO.Text);

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
   edPROD_DESCRICAO.SetFocus;
end;

procedure TFrm_cad_servico.Carrega_Unidades_De_Medida;
var Q : tFDQuery;
begin
   // Preenche o combo box de unidades de medida castradas
   cxPROD_CDUNIDADE.Properties.Items.Clear;

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
     cxPROD_CDUNIDADE.Properties.Items.Add(Q.FieldByName('SIGLA').AsString);
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

   if edPROD_DESCRICAO.Text = '' then
   begin
     ShowMessage('Informe a descrição do serviço');
     edPROD_DESCRICAO.SetFocus;
     exit;
   end;

   if cxPROD_CDUNIDADE.Text = '' then
   begin
     ShowMessage('Informe a unidade de medida');
     cxPROD_CDUNIDADE.SetFocus;
     exit;
   end;

   try
       if StrToFloat(masctostr(edPROD_PRECO_VAR.Text)) < 0 Then
       begin
         ShowMessage('Preço inválido');
         edPROD_PRECO_VAR.SetFocus;
         exit;
       end;
   except
      ShowMessage('Preço inválido');
      edPROD_PRECO_VAR.SetFocus;
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

procedure TFrm_cad_servico.edPROD_PRECO_VARExit(Sender: TObject);
var vPROD_PRECO_VAR:Real;
begin
   if BtnCancelar.Focused then
      exit;

   try
       vPROD_PRECO_VAR := StrToFloat(masctostr(edPROD_PRECO_VAR.Text));
       if vPROD_PRECO_VAR < 0 Then
       begin
         ShowMessage('Preço inválido');
         edPROD_PRECO_VAR.SetFocus;
         exit;
       end;
       edPROD_PRECO_VAR.Text := Float_to_String(vPROD_PRECO_VAR);
   except
      ShowMessage('Preço inválido');
      edPROD_PRECO_VAR.SetFocus;
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
   Q.SQL.Add('DELETE FROM PRODUTO_PROD         ');
   Q.SQL.Add(' WHERE PROD_CODIGO = :PROD_CODIGO');
   Q.ParamByName('PROD_CODIGO').AsString := edCODIGO.Text;
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
   SQL_C_Servico.sql.Add('  FROM PRODUTO_PROD               ');
   SQL_C_Servico.sql.Add(' WHERE Produto_ou_Servico = ''S'' ');
   if edPESQUISA.Text <> '' then
   begin
      SQL_C_Servico.sql.Add('AND (   (PROD_DESCRICAO LIKE :PROD_DESCRICAO) ');
      SQL_C_Servico.sql.Add('     OR (PROD_CODIGO       LIKE :PROD_DESCRICAO) ');
      SQL_C_Servico.sql.Add('    )                                               ');
      SQL_C_Servico.ParamByName('PROD_DESCRICAO').AsString := '%'+edPESQUISA.Text+'%';
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
    vCODIGO:String;
begin
   if edCODIGO.Text = '' then
   begin
      vCODIGO := fProximoCodigo('PRODUTO_PROD','PROD_CODIGO');
      RegistraLog('Cadastrou SERVICO: '+vCODIGO+'-'+edPROD_DESCRICAO.Text);
   end
   else
   begin
      vCODIGO := edCODIGO.Text;
      RegistraLog('Alterou SERVICO: '+vCODIGO+'-'+edPROD_DESCRICAO.Text);
   end;

   q := TFDQuery.Create(nil);
   q.Connection     := Module.connection;
   q.ConnectionName := 'connection';

   Q.Close;
   Q.Sql.Clear;
   Q.SQL.Add('INSERT INTO PRODUTO_PROD ');
   Q.SQL.Add('     (                   ');
   Q.SQL.Add('      PROD_CODIGO,       ');
   Q.SQL.Add('      PROD_DESCRICAO, ');
   Q.SQL.Add('      PROD_CDUNIDADE,    ');
   Q.SQL.Add('      DATA_CADASTRO,     ');
   Q.SQL.Add('      PROD_PRECO_VAR,');
   Q.SQL.Add('      STATUS_CADASTRAL,  ');
   Q.SQL.Add('      Produto_ou_Servico,');
   Q.SQL.Add('      PagaComissaoSN,    ');
   Q.SQL.Add('      ContaContabil,     ');
   Q.SQL.Add('      CentroDeCustos     ');
   Q.SQL.Add('     )                   ');
   Q.SQL.Add('VALUES                   ');
   Q.SQL.Add('     (                   ');
   Q.SQL.Add('     :PROD_CODIGO,       ');
   Q.SQL.Add('     :PROD_DESCRICAO, ');
   Q.SQL.Add('     :PROD_CDUNIDADE,    ');
   Q.SQL.Add('     :DATA_CADASTRO,     ');
   Q.SQL.Add('     :PROD_PRECO_VAR,');
   Q.SQL.Add('     :STATUS_CADASTRAL,  ');
   Q.SQL.Add('     :Produto_ou_Servico,');
   Q.SQL.Add('     :PagaComissaoSN,    ');
   Q.SQL.Add('     :ContaContabil,     ');
   Q.SQL.Add('     :CentroDeCustos     ');
   Q.SQL.Add('     )                   ');
   Q.ParamByName('PROD_CODIGO'       ).AsString  := vCODIGO;
   Q.ParamByName('PROD_DESCRICAO' ).AsString  := edPROD_DESCRICAO.Text;
   Q.ParamByName('PROD_CDUNIDADE'    ).AsString  := cxPROD_CDUNIDADE.Text;
   Q.ParamByName('DATA_CADASTRO'     ).AsDateTime:= Date;
   Q.ParamByName('PROD_PRECO_VAR').AsFloat   := StrToFloat(masctostr(edPROD_PRECO_VAR.Text));
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
   for i := 0 to cxPROD_CDUNIDADE.Properties.Items.Count -1 do
   begin
      if cxPROD_CDUNIDADE.Properties.Items[i] = pSigla then
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
   edPROD_DESCRICAO.Text   := SQL_C_Servico.FieldByName('PROD_DESCRICAO').AsString;
   //cxPROD_CDUNIDADE.ItemIndex := IndiceUND(NomeUND(SQL_C_Servico.FieldByName('PROD_CDUNIDADE').AsInteger));
   cxPROD_CDUNIDADE.ItemIndex := IndiceUND(SQL_C_Servico.FieldByName('PROD_CDUNIDADE').AsString);

   if SQL_C_Servico.FieldByName('PagaComissaoSN').AsString = 'S' then
      cxPagaComissaoSN.ItemIndex := 0
   else
      cxPagaComissaoSN.ItemIndex := 1;

   edContaContabil.Text           := SQL_C_Servico.FieldByName('ContaContabil').AsString;
   edContaContabil_Descricao.Text := DescricaoPlanoDeContas(SQL_C_Servico.FieldByName('ContaContabil').AsInteger);

   edCentroDeCusto.Text           := SQL_C_Servico.FieldByName('CentroDeCustos').AsString;
   edCentroDeCusto_Descricao.Text := DescricaoCentroDeCustos(SQL_C_Servico.FieldByName('CentroDeCustos').AsInteger);

   edPROD_PRECO_VAR.Text      := Float_to_String(SQL_C_Servico.FieldByName('PROD_PRECO_VAR').AsFloat);

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
      RegistraLog('Sist impediu excluir SERVICO já vendido: '+edCODIGO.Text+'-'+edPROD_DESCRICAO.Text);
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
Trocou UNIDADE_MEDIDA por PROD_UNIDADE : automaticamente em 16/06/2020 11:03
Trocou INFO_ADICIONAIS por PROD_DETALHES : automaticamente em 16/06/2020 12:07
Trocou PROD_REFERENCIASFABRICA por PROD_REFERENCIASFABRICA : automaticamente em 16/06/2020 12:38
Trocou REFERENCIA_FABRICANTE por PROD_REFERENCIASFABRICA : automaticamente em 16/06/2020 14:07
Trocou PROD_UNIDADE por PROD_CDUNIDADE : automaticamente em 16/06/2020 17:06
Trocou DESCONTO_MAXIMO por PROD_MAXDESC : automaticamente em 16/06/2020 22:23
Trocou DESCONTO_M_VAREJO por PROD_MAXDESC_VAR : automaticamente em 16/06/2020 22:27
Trocou DESCONTO_M_ATACADO por PROD_MAXDESC_ATAC : automaticamente em 16/06/2020 22:31
Trocou DESCONTO_M_DISTRIBUIDOR por PROD_MAXDESC_DIST : automaticamente em 16/06/2020 22:34
Trocou PAGAR_COMISSAO por PROD_COMISSAO : automaticamente em 16/06/2020 22:37
Trocou COMISSAO_BALCAO por PROD_COMISSAO_LOJA : automaticamente em 16/06/2020 22:41
Trocou BALCAO_COMISSAO_VAREJO por PROD_COMISSAO_VAR : automaticamente em 16/06/2020 22:44
Trocou BALCAO_COMISSAO_ATACADO por PROD_COMISSAO_ATAC : automaticamente em 16/06/2020 22:46
Trocou BALCAO_COMISSAO_DISTRIBUIDOR por PROD_COMISSAO_DIST : automaticamente em 16/06/2020 22:49
Trocou ESTOQUE_MINIMO por PROD_ESTOQMIN : automaticamente em 16/06/2020 22:53
Trocou COMISSAO_EXTERNA por PROD_COMISSAO_EXT : automaticamente em 17/06/2020 05:46
Trocou EXTERNA_COMISSAO_VAREJO por PROD_COMISSAO_EXT_VAR : automaticamente em 17/06/2020 05:52
Trocou EXTERNA_COMISSAO_ATACADO por PROD_COMISSAO_EXT_ATAC : automaticamente em 17/06/2020 05:55
Trocou EXTERNA_COMISSAO_DISTRIBUIDOR por PROD_COMISSAO_EXT_DIST : automaticamente em 17/06/2020 06:30
Trocou PRECO_FINAL_VAREJO por PROD_PRECO_VAR : automaticamente em 17/06/2020 06:55
Trocou PRECO_FINAL_ATACADO por PROD_PRECO_ATAC : automaticamente em 17/06/2020 06:59
Trocou PRECO_FINAL_DISTRIBUIDOR por PROD_PRECO_DIST : automaticamente em 17/06/2020 07:02
Trocou PROMO_VAREJO por PROD_PROMOCAO_VAR : automaticamente em 17/06/2020 08:40
Trocou PROMO_ATACADO por PROD_PROMOCAO_ATAC : automaticamente em 17/06/2020 08:44
Trocou PROMO_DISTRIBUIDOR por PROD_PROMOCAO_DIST : automaticamente em 17/06/2020 08:53
Trocou SALDO por @_@_@_@_@_@ : automaticamente em 17/06/2020 21:30
Trocou @_@_@_@_@_@ por PROD_SALDO : automaticamente em 17/06/2020 21:32
