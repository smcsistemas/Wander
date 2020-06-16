unit Atualizador;
{
========================================================================================================================================
ALT|   DATA |HORA |UNIT                        |Descrição                                                                              |
---|--------|-----|----------------------------|----------------------------------------------------------------------------------------
346|15/06/20|18:23|Atualizador                 |Tabela PRODUTO_UNIDADE substituída por UNIDADE_UNI
319|15/06/20|13:35|atualizador                 |CODIGO_BARRAS tamanho 50 Substituído PROD_EAN tamanho 20
301|15/06/20|08:48|atualizador                 |CODiGO numérico 11 do produto substituído por PROD_CODIGO alfanumérico 20
300|15/06/20|08:48|atualizador                 |Tabela PRODUTO substituída por PRODUTO_PROD
294|15/06/20|00:59|Atualizador                 |Criada tabela CONTROLE_CTRL: Tabela de Controles diversos do sistema
293|15/06/20|00:59|Atualizador                 |Criada tabela SEQUENCIAIS_SEQ para armazenas os sequenciais de códigos das demais tabelas do sistema
292|15/06/20|00:59|Atualizador                 |Criada tabela PASSOS_PAS para registrar passos internos do sistema em busca de motivos de bugs
277|09/06/20|13:45|Atualizador                 |Criada coluna PROD_TRATANUMEROSERIE (Parâmetro de Tratamento de Número de Série) na tabela PRODUTO
276|09/06/20|13:45|Atualizador                 |Criada coluna PROD_TRATALOTE (Parâmetro de Tratamento de Lote) na tabela PRODUTO
268|08/06/20|08:35|Atualizador                 |Criada coluna PROD_RASTREAVEL (indicador de rastreabilidade) na tabela PRODUTO
267|08/06/20|06:49|Atualizador                 |Criada tabela de característica de UFs (UF_UF)
266|08/06/20|05:51|Atualizador                 |Criada tabela de rastreabilidade do produto (RASTRO_RAS)
260|06/06/20|15:22|Atualizador                 |Incluida coluna pPIS_CUMULATIVO (% PIS Cumulativo) na tabela EMPRESA
259|06/06/20|15:22|Atualizador                 |Incluida coluna pPIS_NAOCUMULATIVO (% PIS Não Cumulativo) na tabela EMPRESA
254|05/06/20|14:09|Atualizador                 |Incluida chave RPC_TPMOV na tabela RELACAO_CFOP_x_PRODUTO_xCST_PISCOFINS_RPC
========================================================================================================================================

================================================================================
| ITEM|DATA  HR|UNIT                |HISTORICO                                 |
|-----|--------|--------------------|------------------------------------------|
|  239|30/05/20|wander              |Chama a rotina que preenche tabela        |
|     |   01:07|Atualizador         |CST_COFINS                                |
|-----|--------|--------------------|------------------------------------------|
|  236|30/05/20|wander              |Chama rotina que preenche tabela CST_PIS  |
|     |   00:41|Atualizador         |                                          |
|-----|--------|--------------------|------------------------------------------|
|  234|29/05/20|wander              |Criada rotina que preenche a nova tabela  |
|     |   13:19|Atualizador         |RELACAO_CFOP_x_PRODUTO_xCST_PISCOFINS_RPC |
|     |        |                    |com os dados do cadastro dos produtos     |
|     |        |                    |Associando ao tipo de movimento 1 (venda  |
|     |        |                    |padrão do CMS_LIGHT                       |
|-----|--------|--------------------|------------------------------------------|
|  233|29/05/20|wander              |Criada Tabela                             |
|     |   13:19|Atualizador         |RELACAO_CFOP_x_PRODUTO_xCST_PISCOFINS_RPC |
|     |        |                    |que relaciona CFOP com o PRODUTO e seus   |
|     |        |                    |CSTs de PIS e de COFINS                   |
|     |        |                    |que geralmente são iguais, exceto como    |
|     |        |                    |explicado no item 231 do cad produto      |
|-----|--------|--------------------|------------------------------------------|
|  232|29/05/20|wander              |Tabela TIPOMOVIMENTO_TPMOV recebe coluna  |
|     |   13:19|Atualizador         |TPMOV_CFOP para armazenar o seu CFOP      |
|     |        |                    |
|-----|--------|--------------------|------------------------------------------|
|  226|28/05/20|wander              |Coluna ANP da tabela PRODUTO passou de 50 |
|     |   20:37|Atualizador         |para 9 caracteres.                        |
|-----|--------|--------------------|------------------------------------------|
|  223|28/05/20|wander              |Coluna CEST da tabela PRODUTO passou de 50|
|     |   20:20|Atualizador         |para 7 caracteres.                        |
|-----|--------|--------------------|------------------------------------------|
|  222|28/05/20|wander              |Coluna NCM da tabela PRODUTO passou de 50 |
|     |   19:55|Atualizador         |para 8 caracteres.                        |
|-----|--------|--------------------|------------------------------------------|
|  202|25/05/20|wander              |Eliminada coluna OPTANTE_SIMPLES_NACIONAL |
|     |   20:15|Atualizador         |da tabela Empresa pois já havia a coluna  |
|     |        |                    |CODIGO_REGIME_TRIBUTARIO para esta função |
|-----|--------|--------------------|------------------------------------------|
|  201|25/05/20|wander              |Criada padrão para dados da tabela        |
|     |   17:30|Atualizador         |RELACAO_CRT_CST_CSOSN_CFOP_RCCCC          |
|     |        |                    |para o tipo de movimento TPMOV = 1 (Venda)|
|     |        |                    |como segue (CRT da empresa = 1            |
|     |        |                    |                                          |
|     |        |                    |       TPMOV CRT CST  CSOSN               |
|     |        |                    |         1    1   00   101                |
|     |        |                    |         1    1   41   102                |
|     |        |                    |         1    1   40   103                |
|     |        |                    |         1    1   60   500                |
|     |        |                    |         1    1   90   900                |
|     |        |                    |                                          |
|-----|--------|--------------------|------------------------------------------|
|  195|25/05/20|wander              |Incluida coluna VI_CFOP_CSOSN na tabela   |
|     |   14:22|Atualizador         |Venda_Item, para armazenar o CFOP caso o  |
|     |        |                    |seja optante do regime Normal ou CSOSN se |
|     |        |                    |optante do regime Simples Nacional.       |
|-----|--------|--------------------|------------------------------------------|
|  194|25/05/20|wander              |Eliminada coluna CFOP da tabela Venda_Item|
|     |   14:22|Atualizador         |                                          |
|-----|--------|--------------------|------------------------------------------|
|  193|25/05/20|wander              |Eliminada coluna CSOSN da tabela produto  |
|     |   14:22|Atualizador         |                                          |
|-----|--------|--------------------|------------------------------------------|
|  159|22/05/20|wander              |Tabela FAMILIA apagada do banco de dados e|
|     |   09:39|Atualizador         |substituida p/PRODUTO_FAMILIA já existente|
|-----|--------|--------------------|------------------------------------------|
|  150|21/05/20|wander              |Criado Código Alfanumérico Alternativo na |
|     |   20:21|Atualizador         |tabela PRODUTO (CODIGO_ALFANUMERICO) com  |
|     |        |                    |20 caracteres para permitir cod alfa.     |
|-----|--------|--------------------|------------------------------------------|
|  141|18/05/20|wander              |Passa a pedir usuário e senha de adm para |
|     |   13:37|Atualizador         |executar o Atualizador da Base de Dados   |
|     |        |                    |caso o usuário logado n seja adm ou MASTER|
================================================================================

================================================================================
|   DATA   |DESENVOLVEDOR|HISTORICO DA ALTERACAO DO CODIGO                     |
|----------|-------------|-----------------------------------------------------|
|21/02/2020|WANDER       |Passou a verificar a existência da tabela de controle|
|        09|             | ATUALIZADO_ATU.                                     |
|----------|-------------|-----------------------------------------------------|
|21/03/2020|WANDER       |Criada tabela tipo de movimento TIPOMOVIMENTO_TPMOV  |
|        30|             |                                                     |
|----------|-------------|-----------------------------------------------------|
|21/03/2020|WANDER       |Criada coluna VENDA_TPMOV na tabela VENDA            |
|        31|             |                                                     |
|----------|-------------|-----------------------------------------------------|
|21/03/2020|WANDER       |Criado tipo de movimento V=Venda                     |
|        32|             |                                                     |
|----------|-------------|-----------------------------------------------------|
|23/03/2020|WANDER       |Criado controle de acessos para cadastrar tipo de    |
|        38|             |de Movimento                                         |
|----------|-------------|-----------------------------------------------------|
|25/03/2020|WANDER       |Criada coluna venda_natureza_operacao na tabela venda|
|        42|             |para ser usado na emissão de docs fiscais            |
|----------|-------------|-----------------------------------------------------|
|30/03/2020|WANDER       |Criada coluna venda_tipo na tabela venda identificar |
|        52|             |orçamentos, vendas NFe, vendas NFCe, Consignadas, etc|
|----------|-------------|-----------------------------------------------------|
|30/03/2020|WANDER       |Criada coluna CFOP na tabela venda_item              |
|        54|             |                                                     |
|----------|-------------|-----------------------------------------------------|
|31/03/2020|WANDER       |Alterada a coluna ESTADO da tabela Natureza_Operacao |
|        55|             |para aceitar EXTERIOR                                |
|----------|-------------|-----------------------------------------------------|
|02/04/2020|WANDER       |Incluido parâmetro "Contribuinte do ICMS" (S/N)      |
|        65|             |na tabela empresa                                    |
|----------|-------------|-----------------------------------------------------|
|02/04/2020|WANDER       |Incluidos várias colunas na tabela venda para tratar |
|        66|             |notas fiscais e cupons fiscais referenciados         |
================================================================================
================================================================================
|ITEM |DATA |DESENVOLVEDOR       |HISTORICO                                    |
|-----|-----|--------------------|---------------------------------------------|
|   91|20/04|Wander              |Incluida coluna pCOFINS (aliquota de COFINS) |
|     |16:50|                    |na tabela Empresa                            |
|-----|-----|--------------------|---------------------------------------------|
|   96|22/04|Wander              |Incluida coluna Produto_ou_Servico           |
|     |07:40|                    |na tabela Produto, indicando se o mesmo é um |
|     |     |                    | Produto (P) ou Serviço (S)                  |
|-----|-----|--------------------|---------------------------------------------|
|   97|22/04|Wander              |Incluida coluna ContaContabil                |
|     |14:17|                    |na tabela Produto                            |
|-----|-----|--------------------|---------------------------------------------|
|   97|22/04|Wander              |Incluida coluna CentroDeCustos               |
|     |18:05|                    |na tabela Produto                            |
|-----|-----|--------------------|---------------------------------------------|
|  101|23/04|Wander              |Criados controles de acesso para cadastro de |
|     |06:05|                    |serviços                                     |
|-----|-----|--------------------|---------------------------------------------|
|  105|23/04|Wander              |Incluída col Contribuinte_do_ICMS na tabela  |
|     |19:57|                    |Transportador (S=Sim, N=Não)                 |
|-----|-----|--------------------|---------------------------------------------|
|  106|24/04|Wander              |Incluida coluna Transportador na tabela Venda|
|     |00:00|                    |                                             |
|-----|-----|--------------------|---------------------------------------------|
|  107|24/04|Wander              |Incluida coluna Transportador_Veiculo na     |
|     |05:40|                    |tabela Venda                                 |
|-----|-----|--------------------|---------------------------------------------|
|  108|24/04|Wander              |Criada tabela VENDA_LACRE_VLAC para armazenar|
|     |06:00|                    |dados dos lacres associados a um movimento   |
|-----|-----|--------------------|---------------------------------------------|
|  110|25/04|Wander              |Criada coluna ID_CAD_RAMO_ATIVIDADE para     |
|     |07:00|                    |armazenar o código do Ramo de Atividade do   |
|     |     |                    |cliente                                      |
|-----|-----|--------------------|---------------------------------------------|
|  111|26/04|Wander              |Criadas colunas para registrar dados do      |
|     |03:00|                    |bloqueio do cliente.                         |
|-----|-----|--------------------|---------------------------------------------|
|  112|26/04|Wander              |Criada tabela para registrar o histórico de  |
|     |03:00|                    |bloqueios e desbloqueios do cliente.         |
|-----|-----|--------------------|---------------------------------------------|
|  113|26/04|Wander              |Criadas colunas para registrar dados da      |
|     |03:30|                    |alteração cadastral do cliente.              |
|-----|-----|--------------------|---------------------------------------------|
|  116|26/04|Wander              |Criada tabela REGIAO_REG                     |
|     |18:00|                    |                                             |
|-----|-----|--------------------|---------------------------------------------|
|  118|27/04|Wander              |Criada coluna ID_REGIAO na tabela            |
|     |00:10|                    |Cliente_Endereco                             |
|-----|-----|--------------------|---------------------------------------------|
|  119|27/04|Wander              |Criadas colunas p/ detalhes de volumes da NFe|
|     |06:25|                    |                                             |
|-----|-----|--------------------|---------------------------------------------|
|  120|27/04|Wander              |Criada tabela VENDA_INFORM_COMPL_VIC para    |
|     |09:18|                    |armazenar texto de Informações Complementares|
|     |     |                    |da NFe                                       |
================================================================================
================================================================================
| ITEM|DATA  HR|UNIT                |HISTORICO                                 |
|-----|--------|--------------------|------------------------------------------|
|  134|14/05/20|wander              |Alterando o tipos de dados de algumas colu|
|     |   07:54|Atualizador         |nas: TPMOV_EMITENF                        |
================================================================================

}

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls, Data.DBXMySQL,
  Data.DBXPool, Data.DB, Data.SqlExpr, Data.Win.ADODB, cxClasses,
  dxServerModeData, dxServerModeADODataSource, liberacao, v_Env,
  FireDAC.Comp.Client, Vcl.ComCtrls;

type
  TfrmAtualizador = class(TForm)
    bAtualizar: TButton;
    mmExecutado: TMemo;
    Button1: TButton;
    ProgressBar1: TProgressBar;
    procedure bAtualizarClick(Sender: TObject);
    procedure Button1Click(Sender: TObject);
  private
    { Private declarations }
   procedure Avisa(pFrase:String);
   procedure AtualizarBancoDeDados;
   procedure Atualizacao01;
   procedure DesconectarBancoDeDados;
   procedure CriaATUALIZADO_ATU;
   procedure CriarFuncoes;
   Procedure CriaF(pFuncao,pDescricao:String);
   function fNaoAtualizado(pScript:String):Boolean;
   procedure Preencher_RELACAO_TPMOV_CRT_CST_ICMS_CSOSN_CFOP(pRCC_TPMOV     :String;
                                                             pRCC_CRT       :Integer;
                                                             pRCC_CST_ICMS,
                                                             pRCC_CSOSN,
                                                             pRCC_CFOP      :String);
   procedure Converte_PROD_CST_PISCOFINS_em_RELACAO_RPC_Para_TPMOV_igual_a_1;
   procedure Converte_PRODUTO_em_PRODUTO_PROD;
   procedure Converte_PRODUTO_CODIGO_em_PROD_CODIGO;

  public
    { Public declarations }
  end;

var
  frmAtualizador          : TfrmAtualizador;
  vGlobal_Qtde_de_Funcoes : Integer;  // Gera i ID da função
  Q1, Q2                  : TFDQuery; // Queries Locais

implementation

uses
  S_Module, u_funcoes, u_IBGE;

{$R *.dfm}

procedure TfrmAtualizador.bAtualizarClick(Sender: TObject);
var vSGBD,
    vNomeDoBancoDeDados,
    vUsuario,
    vSenha: String;
begin

  if not UsuarioMASTER then
  begin
    if not TEnv.tuser.isadmin then
    begin
      if not TFrm_liberacao.systemUsersOnly then
      begin
        ShowMessage('Somente usuário Master pode executar esta operação');
        TFrm_liberacao.Close;
        exit;
      end;
    end;
  end;

  //Cria Q1-Query Local 1
  Q1 := TFDQuery.Create(nil);
  Q1.Connection     := Module.connection;
  Q1.ConnectionName := 'connection';

  //Cria Q1-Query Local 2
  Q2 := TFDQuery.Create(nil);
  Q2.Connection     := Module.connection;
  Q2.ConnectionName := 'connection';

  //----------------------------------------------------------------------------

  AtualizarBancoDeDados;

  //----------------------------------------------------------------------------

  //Libera memória - Destrói as Queries
  Q1.Free;
  Q2.Free;

  RegistraLog('Atualizou o Banco de Dados');

  // Fim
  ShowMessage('Base de Dados Atualizada!');

end;

procedure TfrmAtualizador.Button1Click(Sender: TObject);
begin
   Close;
end;

procedure TfrmAtualizador.Avisa(pFrase:String);
begin
  mmExecutado.Lines.Add(pFrase);
end;

procedure TfrmAtualizador.AtualizarBancoDeDados;
begin
  // Atualiza o banco de dados
  //----------------------------------------------------------------------------

  mmExecutado.Lines.Clear;

  // Criar controle de atualizacos para evitar aplicar o mesmo script mais de uma vez
  CriaATUALIZADO_ATU;

    // Aplicar scripts
  Atualizacao01;

  // Definir as funcionalidades do sistema que possuem controle de acesso
  CriarFuncoes;
end;


procedure TfrmAtualizador.Preencher_RELACAO_TPMOV_CRT_CST_ICMS_CSOSN_CFOP(pRCC_TPMOV     :String;
                                                                          pRCC_CRT       :Integer;
                                                                          pRCC_CST_ICMS,
                                                                          pRCC_CSOSN,
                                                                          pRCC_CFOP      :String);
begin
   Module.Query.Close;
   Module.Query.Sql.Clear;
   Module.Query.Sql.Add('INSERT INTO RELACAO_CRT_CST_CSOSN_CFOP_RCC ');
   Module.Query.Sql.Add('     ( RCC_TPMOV,                          ');
   Module.Query.Sql.Add('       RCC_CRT,                            ');
   Module.Query.Sql.Add('       RCC_CST_ICMS,                       ');
   Module.Query.Sql.Add('       RCC_CSOSN,                          ');
   Module.Query.Sql.Add('       RCC_CFOP                            ');
   Module.Query.Sql.Add('     )                                     ');
   Module.Query.Sql.Add('VALUES                                     ');
   Module.Query.Sql.Add('     (:RCC_TPMOV,                          ');
   Module.Query.Sql.Add('      :RCC_CRT,                            ');
   Module.Query.Sql.Add('      :RCC_CST_ICMS,                       ');
   Module.Query.Sql.Add('      :RCC_CSOSN,                          ');
   Module.Query.Sql.Add('      :RCC_CFOP                            ');
   Module.Query.Sql.Add('     )                                                                                             ');
   Module.Query.ParamByName('RCC_TPMOV'   ).AsString  := pRCC_TPMOV;
   Module.Query.ParamByName('RCC_CRT'     ).AsInteger := pRCC_CRT;
   Module.Query.ParamByName('RCC_CST_ICMS').AsString  := pRCC_CST_ICMS;
   Module.Query.ParamByName('RCC_CSOSN'   ).AsString  := pRCC_CSOSN;
   Module.Query.ParamByName('RCC_CFOP'    ).AsString  := pRCC_CFOP;
   Module.Query.ExecSql;
end;

procedure TfrmAtualizador.DesconectarBancoDeDados;
begin
  // Desconecta do Banco de Dados;
  //----------------------------------------------------------------------------
end;

function TfrmAtualizador.fNaoAtualizado(pScript: String): Boolean;
begin
   // Verifica se o pScript ja foi executado no banco de dados
   // para que não seja executado duas vezes
   // Se não foi executado, Informa no Memo e retorna true, caso contrário, retorna false
   if NaoAtualizado(pScript) then
   begin
      Avisa(pScript);
      Result := True;
   end
   else
      Result := False;
end;

procedure TfrmAtualizador.Converte_PROD_CST_PISCOFINS_em_RELACAO_RPC_Para_TPMOV_igual_a_1;
var qPRODUTO,
    qRPC     : tFDQuery;
    vCFOP    : String;
begin
   // TPMOV = 1 é o padrão do SMC para o TIPO de MOVIMENTO vendas dentro da UF
   // --------------------------------------------------------------------------
   //
   //Esta rotina preenche a tabela de relacionamentos entre CFOP x Produto x CST-PIS/COFINS
   //Pegando:
   //        CFOP          do cadastro do TIPO_DE_MOVIMENTO = 1
   //        CODPRODUTO    do cadastro do PRODUTO
   //        CST_PISCOFINS do cadastro do PRODUTO
   //---------------------------------------------------------------------------
   // Isto é neessário para aproveitar o atual cadastro de PRODUTOS nos cliente
   // que usam a versão anterior do SMC_LIGHT
   //---------------------------------------------------------------------------

   //Recuperar o CFOP do tipo de movimento 1 (venda padrão)
   vCFOP := fTPMOV_CFOP('1');

   // Se não informado ou se não existe, abortar
   if vCFOP = '' then
      exit;

   //Criar Query para tratar produtos
   qPRODUTO := TFDQuery.Create(nil);
   qPRODUTO.Connection     := Module.connection;
   qPRODUTO.ConnectionName := 'connection';

   //Criar Query para tratar Relacionamento CFOP x PRODUTO x CST_PISCOFINS
   qRPC := TFDQuery.Create(nil);
   qRPC.Connection     := Module.connection;
   qRPC.ConnectionName := 'connection';

   //Recuperar todos os produtos cadastrados...
   qPRODUTO.Close;
   qPRODUTO.Sql.Clear;
   qPRODUTO.SQL.Add('SELECT CODIGO,             ');
   qPRODUTO.SQL.Add('       DESCRICAO_PRODUTO,  ');
   qPRODUTO.SQL.Add('       PIS_CST,            ');
   qPRODUTO.SQL.Add('       COFINS_CST,         ');

   // Não precisa, mas fica como modelo:
   qPRODUTO.SQL.Add('       ICMS_CST,           ');
   qPRODUTO.SQL.Add('       ICMS_IPI,           ');
   qPRODUTO.SQL.Add('       CST_IPI             ');
   //
   qPRODUTO.SQL.Add('  FROM PRODUTO             ');
   qPRODUTO.SQL.Add(' ORDER BY DESCRICAO_PRODUTO');
   qPRODUTO.Open;
   mmExecutado.Lines.Clear;
   while not qPRODUTO.eof do
   begin
     //Mostra o nome do produto que irá associar
     Avisa('CST/CSOSN/TPMOV: '+qPRODUTO.FieldByName('DESCRICAO_PRODUTO').AsString);
     frmAtualizador.Refresh;
     Application.ProcessMessages;

     //Associar
     Associar_CFOP_PROD_CST_PISCOFINS('1',
                                      vCFOP,
                                      qPRODUTO.FieldByName('CODIGO'    ).AsInteger,
                                      qPRODUTO.FieldByName('PIS_CST'   ).AsString,
                                      qPRODUTO.FieldByName('COFINS_CST').AsString);
     //Próximo Produto
     qPRODUTO.Next;
   end;

   //Destroi as Queries para liberar espaço em memória
   qPRODUTO.Free;
   qRPC.Free;
end;

procedure TfrmAtualizador.CriaATUALIZADO_ATU;
begin
   // cria a tabela de retistro do histórico de atualizacoes da base de dados
   // quais scropts foram executados no banco de dados
   try
       //Verifica se existe
       Module.Query.close;
       Module.Query.sql.clear;
       Module.Query.sql.add('SELECT 1 FROM ATUALIZADO_ATU ');
       Module.Query.Open;
   except
       // Nao existe - criar
       Module.Query.close;
       Module.Query.sql.clear;
       Module.Query.sql.add('CREATE TABLE ATUALIZADO_ATU              ');
       Module.Query.sql.add('     ( ATU_FUNCAO VARCHAR(100) NOT NULL, ');
       Module.Query.sql.add('       ATU_DATA   DATETIME     NOT NULL  ');
       Module.Query.sql.add('     )                                   ');
       Module.Query.ExecSQL;
    end;
end;

procedure TfrmAtualizador.Converte_PRODUTO_CODIGO_em_PROD_CODIGO;
var qCODIGO,     // Trata estrutura antiga
    qPROD_CODIGO // Trata nova estrutura
                : tFDQuery;
    vContador:Integer;
begin
   //Torna o código do produto alfanumérico e sequencial... (se usuário desejar)
   // --------------------------------------------------------------------------

   mmExecutado.Lines.Clear;
   //Cria coluna PROD_CODIGO (nova chave da tabela)
   Executar('ALTER TABLE PRODUTO_PROD ADD PROD_CODIGO VARCHAR(20) NULL COMMENT "Codigo alfanumérico do produto"');

   //Criar Query para tratar produtos
   qCODIGO := TFDQuery.Create(nil);
   qCODIGO.Connection     := Module.connection;
   qCODIGO.ConnectionName := 'connection';

   //Criar Query para tratar Relacionamento CFOP x PRODUTO x CST_PISCOFINS
   qPROD_CODIGO := TFDQuery.Create(nil);
   qPROD_CODIGO.Connection     := Module.connection;
   qPROD_CODIGO.ConnectionName := 'connection';

   //Recuperar todos os produtos cadastrados...
   qCODIGO.Close;
   qCODIGO.Sql.Clear;
   qCODIGO.SQL.Add('SELECT *                   ');
   qCODIGO.SQL.Add('  FROM PRODUTO_PROD        ');
   qCODIGO.SQL.Add(' ORDER BY DESCRICAO_PRODUTO');
   qCODIGO.Open;
   vContador:=0;
   ProgressBar1.Max := qCODIGO.RecordCount;
   mmExecutado.Lines.Clear;
   while not qCODIGO.eof do
   begin
     inc(vContador);
     ProgressBar1.Position := vContador;
     //Mostra o nome do produto que irá associar
     Avisa('PROD_CODIGO: '+qCODIGO.FieldByName('DESCRICAO_PRODUTO').AsString);
     frmAtualizador.Refresh;
     Application.ProcessMessages;

     //Converter o codigo do produto numerico para alganumérico
     qPROD_CODIGO.Close;
     qPROD_CODIGO.sql.clear;
     qPROD_CODIGO.sql.add('UPDATE PRODUTO_PROD        ');
     qPROD_CODIGO.sql.add('   SET PROD_CODIGO = :NOVO ');
     qPROD_CODIGO.sql.add(' WHERE CODIGO      = :ATUAL');
     qPROD_CODIGO.ParamByname('NOVO' ).AsString  := IntToStr(qCODIGO.FieldByName('CODIGO').AsInteger);
     qPROD_CODIGO.ParamByname('ATUAL').AsInteger := qCODIGO.FieldByName('CODIGO').AsInteger;
     qPROD_CODIGO.ExecSql;

     //Próximo Produto
     qCODIGO.Next;
   end;

   //Destroi as Queries para liberar espaço em memória
   qCODIGO.Free;
   qPROD_CODIGO.Free;
end;

procedure TfrmAtualizador.Converte_PRODUTO_em_PRODUTO_PROD;
begin
   // Substitui a tabela PRODUTO por PRODUTO_PROD
   //---------------------------------------------------------------------------

   //Criar a tabela PRODUTO_PROD com a estrutura da antiga PRODUTO
   //E com todos os seus itens
   Avisa('Criando tabela PRODUTO_PROD');
   Executar('CREATE TABLE PRODUTO_PROD SELECT * FROM PRODUTO WHERE 1=1');
end;

{
CREATE TABLE `produto` (
	`CODIGO` INT(11) NOT NULL AUTO_INCREMENT COMMENT 'código gerado pelo sistema',
	`COD_BARRAS_AUXILIAR` VARCHAR(50) NULL DEFAULT NULL COMMENT 'informa o código de barras do produto',
	`DESCRICAO_PRODUTO` VARCHAR(200) NULL DEFAULT NULL COMMENT 'informa o código de barras do produto',
	`INFO_ADICIONAIS` VARCHAR(200) NULL DEFAULT NULL COMMENT 'informa o código de barras do produto',
	`REFERENCIA_FABRICANTE` VARCHAR(50) NULL DEFAULT NULL COMMENT 'informa a referência do fabricante do produto',
	`MARCA` VARCHAR(50) NULL DEFAULT NULL COMMENT 'faz relacionamento com a tabela de marcas',
	`FAMILIA` VARCHAR(50) NULL DEFAULT NULL COMMENT 'faz relacionamento com a tabela de familia',
	`GRUPO` VARCHAR(50) NULL DEFAULT NULL COMMENT 'faz relacionamento com a tabela de grupos',
	`SUBGRUPO` VARCHAR(50) NULL DEFAULT NULL COMMENT 'faz relacionamento com a tabela de subgrupo',
	`UNIDADE_MEDIDA` VARCHAR(50) NULL DEFAULT NULL COMMENT 'faz relacionamento com a tabela de medidas',
	`DATA_CADASTRO` DATE NULL DEFAULT '0000-00-00' COMMENT 'informa a data e hora do cadastramento do produto',
	`TIPO_ITEM` VARCHAR(100) NULL DEFAULT NULL COMMENT 'determina a finalidade do produto',
	`ESTOQUE_MINIMO` VARCHAR(50) NULL DEFAULT NULL,
	`PRECO_CUSTO` DECIMAL(10,4) NULL DEFAULT NULL,
	`FRETE` DECIMAL(10,4) NULL DEFAULT NULL,
	`IMPOSTO` DECIMAL(10,4) NULL DEFAULT NULL,
	`DESP_OPERACIONAIS` DECIMAL(10,4) NULL DEFAULT NULL,
	`CUSTO_MEDIO` DECIMAL(10,4) NULL DEFAULT NULL,
	`MARGEM_LUCRO` DECIMAL(10,4) NULL DEFAULT NULL,
	`MARGEM_L_VAREJO` DECIMAL(10,4) NULL DEFAULT NULL,
	`MARGEM_L_ATACADO` DECIMAL(10,4) NULL DEFAULT NULL,
	`MARGEM_L_DISTRIBUIDOR` DECIMAL(10,4) NULL DEFAULT NULL,
	`DESCONTO_MAXIMO` DECIMAL(10,4) NULL DEFAULT NULL,
	`DESCONTO_M_VAREJO` DECIMAL(10,4) NULL DEFAULT NULL,
	`DESCONTO_M_ATACADO` DECIMAL(10,4) NULL DEFAULT NULL,
	`DESCONTO_M_DISTRIBUIDOR` DECIMAL(10,4) NULL DEFAULT NULL,
	`DESCONTO_L_VAREJO` DECIMAL(10,4) NULL DEFAULT NULL,
	`DESCONTO_L_ATACADO` DECIMAL(10,4) NULL DEFAULT NULL,
	`DESCONTO_L_DISTRIBUIDOR` DECIMAL(10,4) NULL DEFAULT NULL,
	`PAGAR_COMISSAO` DECIMAL(10,4) NULL DEFAULT NULL,
	`COMISSAO_BALCAO` DECIMAL(10,4) NULL DEFAULT NULL,
	`BALCAO_COMISSAO_VAREJO` DECIMAL(10,4) NULL DEFAULT '0.0000',
	`BALCAO_COMISSAO_ATACADO` DECIMAL(10,4) NULL DEFAULT '0.0000',
	`BALCAO_COMISSAO_DISTRIBUIDOR` DECIMAL(10,4) NULL DEFAULT '0.0000',
	`COMISSAO_EXTERNA` DECIMAL(10,4) NULL DEFAULT NULL,
	`EXTERNA_COMISSAO_VAREJO` DECIMAL(10,4) NULL DEFAULT '0.0000',
	`EXTERNA_COMISSAO_ATACADO` DECIMAL(10,4) NULL DEFAULT '0.0000',
	`EXTERNA_COMISSAO_DISTRIBUIDOR` DECIMAL(10,4) NULL DEFAULT '0.0000',
	`PRECO_FINAL_ATACADO` DECIMAL(10,4) NULL DEFAULT NULL,
	`PRECO_FINAL_DISTRIBUIDOR` DECIMAL(10,4) NULL DEFAULT NULL,
	`PRECO_FINAL_VAREJO` DECIMAL(10,4) NULL DEFAULT NULL,
	`PROMO_VAREJO` DECIMAL(10,4) NULL DEFAULT NULL,
	`PROMO_ATACADO` DECIMAL(10,4) NULL DEFAULT NULL,
	`PROMO_DISTRIBUIDOR` DECIMAL(10,4) NULL DEFAULT NULL,
	`PROMOCAO_INICIO` DATE NULL DEFAULT NULL,
	`PROMOCAO_TERMINO` DATE NULL DEFAULT NULL,
	`VALOR_PROMOCIONAL_ATACADO` DECIMAL(10,4) NULL DEFAULT NULL,
	`VALOR_PROMOCIONAL_DISTRIBUIDOR` DECIMAL(10,4) NULL DEFAULT NULL,
	`VALOR_PROMOCIONAL_VAREJO` DECIMAL(10,4) NULL DEFAULT NULL,
	`SALDO` DECIMAL(10,4) NULL DEFAULT NULL,
	`ALIQ_ICMS` DECIMAL(10,4) NULL DEFAULT NULL,
	`REDUCAO_ICMS` DECIMAL(10,4) NULL DEFAULT NULL,
	`ALIQ_ICMS_SUBST` VARCHAR(20) NULL DEFAULT NULL,
	`REDUCAO_ICMS_ST` DECIMAL(10,4) NULL DEFAULT NULL,
	`LUCRO_SUBST_TRIBUTARIA` DECIMAL(10,4) NULL DEFAULT NULL,
	`VALOR_PAUTA_BC_ST` DECIMAL(10,4) NULL DEFAULT NULL,
	`LEIS` VARCHAR(20) NULL DEFAULT NULL,
	`GENERO` VARCHAR(20) NULL DEFAULT NULL,
	`FORNECEDOR_NOME` VARCHAR(100) NULL DEFAULT NULL,
	`COD_COMB` VARCHAR(20) NULL DEFAULT NULL,
	`ALIQ_IPI` VARCHAR(20) NULL DEFAULT NULL,
	`ENQUADRAMENTO_IPI` INT(11) NULL DEFAULT NULL,
	`CODIGO_LOCALIZACAO` INT(11) NULL DEFAULT NULL,
	`ICMS_CST` VARCHAR(3) NULL DEFAULT NULL,
	`ICMS_IPI` VARCHAR(2) NULL DEFAULT NULL,
	`PIS_CST` VARCHAR(5) NULL DEFAULT NULL,
	`COFINS_CST` VARCHAR(5) NULL DEFAULT NULL,
	`CODIGO_ORIGEM_MERCADORIA` INT(11) NULL DEFAULT NULL,
	`NCM` VARCHAR(8) NULL DEFAULT NULL COMMENT 'código do NCM_SH',
	`CEST` VARCHAR(50) NULL DEFAULT NULL,
	`ANP` VARCHAR(9) NULL DEFAULT NULL COMMENT 'Código Agencia Nacional de Petróleo',
	`EX_IPI` FLOAT NULL DEFAULT NULL,
	`STATUS_CADASTRAL` ENUM('ATIVO','INATIVO') NULL DEFAULT 'ATIVO',
	`PESAVEL` ENUM('SIM','NAO') NULL DEFAULT NULL,
	`UTILIZA_ETIQUETA_BALANCA` ENUM('SIM','NAO') NULL DEFAULT NULL,
	`USA_LOTE` ENUM('SIM','NAO') NULL DEFAULT NULL,
	`CONTROLADO` ENUM('SIM','NAO') NULL DEFAULT NULL,
	`CODIGO_FORNECEDOR` INT(11) NULL DEFAULT NULL,
	`QUANT_MINI_VAREJO_P` DECIMAL(10,4) NULL DEFAULT NULL,
	`QUANT_MINI_ATACADO_P` DECIMAL(10,4) NULL DEFAULT NULL,
	`QUANT_MINI_DISTRIBUIDOR_P` DECIMAL(10,4) NULL DEFAULT NULL,
	`QUANT_MINI_VAREJO_Q` DECIMAL(10,4) NULL DEFAULT NULL,
	`QUANT_MINI_ATACADO_Q` DECIMAL(10,4) NULL DEFAULT NULL,
	`QUANT_MINI_DISTRIBUIDOR_Q` DECIMAL(10,4) NULL DEFAULT NULL,
	`QUANT_MINI_VAREJO_D` DECIMAL(10,4) NULL DEFAULT NULL,
	`QUANT_MINI_DISTRIBUIDOR_D` DECIMAL(10,4) NULL DEFAULT NULL,
	`QUANT_MINI_ATACADO_D` DECIMAL(10,4) NULL DEFAULT NULL,
	`CST_IPI` VARCHAR(3) NULL DEFAULT NULL,
	`COD_BALANCA_1` VARCHAR(8) NULL DEFAULT NULL,
	`COD_BALANCA_2` VARCHAR(8) NULL DEFAULT NULL,
	`COD_BALANCA_3` VARCHAR(8) NULL DEFAULT NULL,
	`ponto_impressao_id` INT(11) NULL DEFAULT NULL,
	`NFe_Veiculo_Cor_Codigo` VARCHAR(4) NULL DEFAULT NULL COMMENT 'Nfe: (Veículo) Cor - código na montadora',
	`NFe_Veiculo_Cor_Descricao` VARCHAR(40) NULL DEFAULT NULL COMMENT 'Nfe: (Veículo) Cor - descrição',
	`NFe_Veiculo_Pot` VARCHAR(4) NULL DEFAULT NULL COMMENT 'Nfe: (Veículo) Potência motor em cavalo vapor (CV).',
	`NFe_Veiculo_Cilin` VARCHAR(4) NULL DEFAULT NULL COMMENT 'Nfe: (Veículo) Cilindradas.',
	`NFe_Armamento` INT(11) NULL DEFAULT NULL COMMENT 'Nfe: Indicador Armamento (0-Não)(1-Sim)',
	`NFe_Combustivel` INT(11) NULL DEFAULT NULL COMMENT 'Nfe: Indicador Combustivel (0-Não)(1-Sim)',
	`NFe_modBC` INT(11) NULL DEFAULT NULL COMMENT 'Nfe: Indicador modalidade de base de cálculo',
	`NFe_modBCST` INT(11) NULL DEFAULT NULL COMMENT 'Nfe: Indicador modalidade de base de cálculo da ST',
	`NFe_pMVAST` DECIMAL(6,2) NULL DEFAULT NULL COMMENT '% da MV Adicionado do ICMS ST',
	`NFe_motDesICMS` INT(11) NULL DEFAULT NULL COMMENT 'Indicador Motivo da desoneração do ICMS',
	`Produto_ou_Servico` ENUM('P','S') NULL DEFAULT 'P' COMMENT 'P=Produto e S=Serviço',
	`PagaComissaoSN` ENUM('S','N') NULL DEFAULT 'S' COMMENT 'S=Paga Comissão e N=Não paga',
	`ContaContabil` INT(11) NULL DEFAULT NULL COMMENT 'Código da Conta Contábil no Plano de Contas',
	`CentroDeCustos` INT(11) NULL DEFAULT NULL COMMENT 'Código do Centro de Custos',
	`NFe_indTot` INT(11) NULL DEFAULT '1' COMMENT 'Indicador de participacao do Total da NFe',
	`NFe_Medicamento` INT(11) NULL DEFAULT NULL COMMENT 'Nfe: Indicador Medicamento (0-Não)(1-Sim)',
	`CODIGO_ALFANUMERICO` VARCHAR(20) NULL DEFAULT NULL COMMENT 'Codigo Alfanumerico Alternativo',
	`VALOR_PAUTA_BC` DECIMAL(10,4) NULL DEFAULT '0.0000' COMMENT 'Valor de Pauta do produto',
	`NFe_pMVA` DECIMAL(6,4) NULL DEFAULT '0.0000' COMMENT 'Margem de Valor Agregado ICMS (MVA)',
	`NFe_indEscala` INT(11) NULL DEFAULT '2' COMMENT 'Indicador de Escala Relevante',
	`PROD_RASTREAVEL` INT(11) NULL DEFAULT '0' COMMENT 'Flag de Rastreabilidade (0=Não)(1=Sim)',
	`PROD_TRATALOTE` INT(11) NULL DEFAULT '0' COMMENT 'Flag de Tratamento de Lote (0=Não)(1=Manual)(2-Automático)',
	`PROD_TRATANUMEROSERIE` INT(11) NULL DEFAULT '0' COMMENT 'Flag de Tratamento de Número de Série (0=Não)(1=Sim)',
	`NFe_VeiculoNovo` INT(11) NULL DEFAULT NULL COMMENT 'Nf ndicador de Veículo Novo (0-Não)(1-Sim)',
	`NFe_nDI` VARCHAR(10) NULL DEFAULT NULL COMMENT 'Nfe: Número do Documento de Importação DI/DSI/DA',
	`NFe_dDI` DATETIME NULL DEFAULT NULL COMMENT 'Nfe: Data de registro do Documento de Importação DI/DSI/DA',
	`NFe_xLocDesemb` VARCHAR(60) NULL DEFAULT NULL COMMENT 'Nfe: Local de Desembaraço',
	`NFe_UFDesemb` VARCHAR(2) NULL DEFAULT NULL COMMENT 'Nfe: UF onde ocorreu o Desembaraço Aduaneiro',
	`NFe_dDesemb` DATETIME NULL DEFAULT NULL COMMENT 'Nfe: Data do Desembaraço Aduaneiro',
	`NFe_cExportador` VARCHAR(60) NULL DEFAULT NULL COMMENT 'Nfe: Código do exportador',
	`NFe_nAdicao` INT(3) NULL DEFAULT NULL COMMENT 'Nfe: Numero da adição',
	`NFe_cFabricante` VARCHAR(60) NULL DEFAULT NULL COMMENT 'Nfe: Código do fabricante estrangeiro',
	`NFe_vDescDI` DECIMAL(10,4) NULL DEFAULT NULL COMMENT 'Nfe: Valor do desconto do item da  DI – adição',
	PRIMARY KEY (`CODIGO`),
	INDEX `ponto_impressao_id` (`ponto_impressao_id`),
	INDEX `idx_CODIGO_ALFANUMERICO` (`CODIGO_ALFANUMERICO`),
	INDEX `idx_codigo_barras` (`CODIGO_BARRAS`),
	INDEX `idx_descricao_produto` (`DESCRICAO_PRODUTO`),
	INDEX `idx_NCM` (`NCM`),
	INDEX `idx_referencia_fabricante` (`REFERENCIA_FABRICANTE`),
	CONSTRAINT `produto_ibfk_1` FOREIGN KEY (`ponto_impressao_id`) REFERENCES `ponto_impressao` (`id`)
)
COMMENT='onde encontram-se os produtos cadastrados\r\n'
COLLATE='latin1_swedish_ci'
ENGINE=InnoDB
AUTO_INCREMENT=44157
;
}

   //Destroi as Queries para liberar espaço em memória
//   qPRODUTO.Free;
//   qRPC.Free;
//end;


procedure TfrmAtualizador.CriaF(pFuncao, pDescricao: String);
begin
     inc(vGlobal_Qtde_de_Funcoes);

     Module.Query.Close;
     Module.Query.SQL.Clear;
     Module.Query.Sql.Add('INSERT INTO FUNCOES_FUN ');
     Module.Query.Sql.Add('  (FUN_NUMERO,          ');
     Module.Query.Sql.Add('   FUN_CODIGO,          ');
     Module.Query.Sql.Add('   FUN_DESCRICAO)       ');
     Module.Query.Sql.Add('VALUES                  ');
     Module.Query.Sql.Add('  (:FUN_NUMERO,         ');
     Module.Query.Sql.Add('   :FUN_CODIGO,         ');
     Module.Query.Sql.Add('   :FUN_DESCRICAO)      ');
     Module.Query.ParamByName('FUN_NUMERO'   ).AsInteger := vGlobal_Qtde_de_Funcoes;
     Module.Query.ParamByName('FUN_CODIGO'   ).AsString  := UpperCase(Copy(pFuncao,1,10));
     Module.Query.ParamByName('FUN_DESCRICAO').AsString  := UpperCase(Copy(pDescricao,1,40));
     Module.Query.ExecSql;
end;

procedure TfrmAtualizador.CriarFuncoes;
begin
   // DEFINE AS FUNCOES DO SISTEMA A TREREM O ACESSO CONTROLADO
   Executar('TRUNCATE TABLE FUNCOES_FUN');

   vGlobal_Qtde_de_Funcoes := 0;

   // CLIENTE
   CriaF('ADDCLI','Cliente-Cadastrar'); // ok - apliquei nas telas
   CriaF('ALTCLI','Cliente-Editar'); // ok
   CriaF('DELCLI','Cliente-Excluir'); // ok

   // COLABORADORES
   CriaF('CADCOLAB','Colaboradores-Cadastrar'); // ok
   CriaF('ALTCOLAB','Colaboradores-Alterar'); // ok
   CriaF('DELCOLAB','Colaboradores-Excluir'); // ok
   CriaF('COLACE'  ,'Colaboradores-Definir permissões');

   // AUDITORIA
   CriaF('AUDITORIA'  ,'Auditoria');

   // Emissão de NFe
   CriaF('EMITIRNFE'  ,'Emitir NFe');

   // Tipo de Movimento
   CriaF('ADDTPMOV','Tipo Movimento-Cadastrar'); // ok - apliquei nas telas
   CriaF('ALTTPMOV','Tipo Movimento-Editar');
   CriaF('DELTPMOV','Tipo Movimento-Excluir');

   // SERVIÇOS
   CriaF('ADDSERV','Servico-Cadastrar');
   CriaF('ALTSERV','Servico-Editar');
   CriaF('DELSERV','Servico-Excluir');

end;


procedure TfrmAtualizador.Atualizacao01;
begin
  // parte 01 das atualizações
  //----------------------------------------------------------------------------

  // Criar tabela de Funções do sistema
  // para o controle de acesso dos usuários
  if fNaoAtualizado('Criar FUNCOES_FUN') then
  begin
      Module.Query.Close;
      Module.Query.SQL.Clear;
      Module.Query.SQL.Add('CREATE TABLE FUNCOES_FUN(              ');
      Module.Query.SQL.Add('   FUN_CODIGO    VARCHAR(10) NOT NULL, '); // (ID) CODIGO DA FUNÇÃO
      Module.Query.SQL.Add('   FUN_DESCRICAO VARCHAR(40) NOT NULL, '); // DESCRIÇÃO DA FUNÇÃO
      Module.Query.SQL.Add('   FUN_NUMERO    INTEGER     NOT NULL  '); // NÚMERO DE ORDEM DA FUNÇÃO
      Module.Query.SQL.Add('   )                                   ');
      Module.Query.ExecSQL;
  end;

  // Criar tabela de Acessos às funções do sistema
  // para o controlde de acesso dos usuários
  if fNaoAtualizado('Criar ACESSOS_ACC2') then
  begin
      Module.Query.Close;
      Module.Query.SQL.Clear;
      Module.Query.SQL.Add('CREATE TABLE ACESSOS_ACC(              ');
      Module.Query.SQL.Add('   ACC_USUARIO   VARCHAR(10) NOT NULL, '); // (ID) USER NAME DO USUARIO
      Module.Query.SQL.Add('   ACC_FUNCAO    VARCHAR(10) NOT NULL  '); // (ID) CODIGO DA FUNÇÃO
      Module.Query.SQL.Add('   )                                   ');
      Module.Query.ExecSQL;
  end;

  // Criar tabela de log do sistema
  if fNaoAtualizado('Criar LOG_lOG') then
  begin
      Module.Query.Close;
      Module.Query.Sql.Clear;
      Module.Query.Sql.Add('CREATE TABLE LOG_LOG                       '); // REGISTRO DE TODAS AS OPERACOES DOS USUARIOS NO SISTEMA
      Module.Query.Sql.Add('    ( LOG_DATA          DATETIME     NULL, '); // DATA DA OPERACAO
      Module.Query.Sql.Add('      LOG_USUARIO       VARCHAR(10)  NULL, '); // USUARIO
      Module.Query.Sql.Add('      LOG_ESTACAO       VARCHAR(10)  NULL, '); // Nome da máquina
      Module.Query.Sql.Add('      LOG_HORA          VARCHAR(05)  NULL, '); // HORARIO
      Module.Query.Sql.Add('      LOG_HISTORICO     VARCHAR(100) NULL, '); // DESCRICAO DO QUE FOI FEITO
      Module.Query.Sql.Add('      LOG_vERSAO        VARCHAR(10)  NULL) '); // VERSAO DO SISTEMA
      Module.Query.ExecSql;
  end;

  // Incluir coluna de controle de status de criptografia
  if fNaoAtualizado('CRIPTOGRAFADO') then
  begin
      Module.Query.Close;
      Module.Query.Sql.Clear;
      Module.Query.Sql.Add('ALTER TABLE USUARIO');
      Module.Query.Sql.Add('  ADD CRIPTOGRAFADO INTEGER NULL DEFAULT 0');
      Module.Query.ExecSql;
      Executar('UPDATE USUARIO SET CRIPTOGRAFADO = 0 wHERE CRIPTOGRAFADO IS NULL');
  end;

  // Criptografar a senha e o user name dos usuários
  if fNaoAtualizado('CRIPTOGRAFAR') then
  begin
      Module.Query.Close;
      Module.Query.Sql.Clear;
      Module.Query.Sql.Add('SELECT * FROM USUARIO');
      Module.Query.OPen;
      while not Module.Query.eof do
      begin
        Module.Q2.Close;
        Module.Q2.Sql.Clear;
        Module.Q2.Sql.Add('UPDATE USUARIO                          ');
        Module.Q2.Sql.Add('   SET USUARIO        = :USUARIO,       ');
        Module.Q2.Sql.Add('       SENHA          = :SENHA,         ');
        Module.Q2.Sql.Add('       SENHA_CONFIRMA = :SENHA_CONFIRMA ');
        Module.Q2.Sql.Add(' WHERE USUARIO        = :ANTES          ');
        Module.Q2.PaRAmByName('USUARIO'       ).AsString := Cripto(Module.Query.FieldByName('USUARIO'       ).AsString);
        Module.Q2.PaRAmByName('SENHA'         ).AsString := Cripto(Module.Query.FieldByName('SENHA'         ).AsString);
        Module.Q2.PaRAmByName('SENHA_CONFIRMA').AsString := Cripto(Module.Query.FieldByName('SENHA_CONFIRMA').AsString);
        Module.Q2.PaRAmByName('ANTES'         ).AsString :=        Module.Query.FieldByName('USUARIO'       ).AsString;
        Module.Q2.ExecSql;
        // Proximo...
        Module.Query.Next;
      end;
  end;

  // 13/02/20
  // Aumenta o tamanho da coluna LOG_ESTACAO de 10 para 50 caracteres
  if fNaoAtualizado('LOG_ESTACAO(50)**') then
  begin
      Module.Query.Close;
      Module.Query.Sql.Clear;
      Module.Query.Sql.Add('ALTER TABLE LOG_LOG       ');
      Module.Query.Sql.Add('  DROP COLUMN LOG_ESTACAO ');
      Module.Query.ExecSql;

      Module.Query.Close;
      Module.Query.Sql.Clear;
      Module.Query.Sql.Add('ALTER TABLE LOG_LOG               ');
      Module.Query.Sql.Add('  ADD LOG_ESTACAO VARCHAR(50) NULL');
      Module.Query.ExecSql;
  end;

  // 14/02/20
  // Controla usuários logados
  if fNaoAtualizado('LOGADO') then
  begin
     // COLUNA "LOGADO" = STATUS DO LOG
     // 0 = DESLOGADO
     // 1 = LOGADO
     Executar('ALTER TABLE USUARIO ADD LOGADO INTEGER NULL DEFAULT 0');
     Executar('UPDATE USUARIO SET LOGADO = 0 WHERE LOGADO iS NULL');
  end;

  // Criar tabela de Configuracao de NFe
  if fNaoAtualizado('NFe_Configuracao') then
  begin
      Module.Query.Close;
      Module.Query.Sql.Clear;
      Module.Query.Sql.Add('CREATE TABLE NFe_Configuracao      ');
      Module.Query.Sql.Add('    ( NFeC_SERIE INTEGER NOT NULL, '); // Número de Série da NFe (tamanho 3)
      Module.Query.Sql.Add('      NFeC_nNF   INTEGER NOT NULL) '); // Número Sequencial da NFe
      Module.Query.ExecSql;

      Module.Query.Close;
      Module.Query.Sql.Clear;
      Module.Query.Sql.Add('INSERT INTO NFE_Configuracao');
      Module.Query.Sql.Add('    ( NFeC_SERIE,           ');
      Module.Query.Sql.Add('      NFeC_nNF)             ');
      Module.Query.Sql.Add('VALUES                      ');
      Module.Query.Sql.Add('    (:NFeC_SERIE,           ');
      Module.Query.Sql.Add('     :NFeC_nNF)             ');
      Module.Query.ParamByName('NFeC_SERIE').AsInteger := 0;
      Module.Query.ParamByName('NFeC_nNF'  ).AsInteger := 0;
      Module.Query.ExecSql;
  end;

  // Incluir parâmetro de Ambiente na tabela de Configuracao de NFe
  if fNaoAtualizado('NFeC_Ambiente') then
  begin
     // Ambiente de emissão da NFe:
     //   0 = Produção
     //   1 = Homogação
     Executar('ALTER TABLE NFe_Configuracao ADD NFeC_Ambiente INTEGER NULL');
     // Setar como 1-Homologação, por padrão
     Executar('UPDATE NFe_Configuracao SET NFeC_Ambiente = 1 WHERE NFeC_Ambiente IS NULL');
  end;

  // Incluir parâmetro de Forma de Emissao da NFe na tabela de Configuracao de NFe:
  if fNaoAtualizado('NFeC_FormaEmissao') then
  begin
     // Define a Forma de Emissão da NFe
     // 0 = Normal
     // 1 = Contingência
     // 2 = SCAN
     // 3 = DPEC
     // 4 = FSDA
     //----------------------------------------------------------------------------
     Executar('ALTER TABLE NFe_Configuracao ADD NFeC_FormaEmissao INTEGER NULL');
     // Setar como 0-Normal, por padrão
     Executar('UPDATE NFe_Configuracao SET NFeC_FormaEmissao = 0 WHERE NFeC_FormaEmissao IS NULL');
  end;

  if fNaoAtualizado('DADOSTELA_DT') then
  begin
     // Salva os dados da tela para verificar o que foi alterado
     //----------------------------------------------------------------------------
      Module.Query.Close;
      Module.Query.Sql.Clear;
      Module.Query.Sql.Add('CREATE TABLE DADOSTELA_DT          ');
      Module.Query.Sql.Add('    ( DT_USUARIO VARCHAR(020) NULL,');
      Module.Query.Sql.Add('      DT_ESTACAO VARCHAR(050) NULL,');
      Module.Query.Sql.Add('      DT_NOME    VARCHAR(255) NULL,');
      Module.Query.Sql.Add('      DT_VALOR   VARCHAR(255) NULL)');
      Module.Query.ExecSql;
  end;

  // Incluir coluna DT_TELA (nome da tela) na tabela DADOSTELA_DT (de dados da tela)
  if fNaoAtualizado('DT_TELA') then
     Executar('ALTER TABLE DADOSTELA_DT ADD DT_TELA VARCHAR(255) NULL');

  // Incluir coluna-flag que define se o usuário deseja visualizar mensagens
  // do webservice ao emitir NFe
  if fNaoAtualizado('Criada coluna NFeC_VerMsgWS') then
  begin
     // Deseja visualizar msg do WS
     //   0 = Não
     //   1 = Sim
     Executar('ALTER TABLE NFe_Configuracao ADD NFeC_VerMsgWS INTEGER NULL');
     // Setar como 1-Sim, por padrão
     Executar('UPDATE NFe_Configuracao SET NFeC_VerMsgWS = 1 WHERE NFeC_VerMsgWS IS NULL');
  end;

  // Incluir colunas de Layout do Danfe
  if fNaoAtualizado('Criada coluna NFeC_LayoutDanfe') then
  begin
     // Layout do DANFE
     //   0 = Retrato
     //   1 = paisagem
     Executar('ALTER TABLE NFe_Configuracao ADD NFeC_LayoutDanfe INTEGER NULL');
     // Setar como 0-Retrato, por padrão
     Executar('UPDATE NFe_Configuracao SET NFeC_LayoutDanfe = 0 WHERE NFeC_LayoutDanfe IS NULL');
  end;

  // Incluir colunas de PAth do arquivo da Logomarca no DANFE
  if fNaoAtualizado('Criada coluna NFeC_PathLogoMarca') then
     Executar('ALTER TABLE NFe_Configuracao ADD NFeC_PathLogoMarca vARCHAR(255) NULL');

  //Cria Tabela de NFe Emitida pelo Sistema
  if fNaoAtualizado('Criada Tabela NOTAFISCAL_NF..') then
  begin
      Module.Query.Close;
      Module.Query.Sql.Clear;
      Module.Query.Sql.Add('CREATE TABLE NOTAFISCAL_NF (                            ');
      Module.Query.Sql.Add('       NF_NUMERO                   VARCHAR(8)     NULL, ');
      Module.Query.Sql.Add('       NF_SERIE                    VARCHAR(5)     NULL, ');
      Module.Query.Sql.Add('       NF_NUMEROINT                INTEGER        NULL, ');
      Module.Query.Sql.Add('       NF_PEDIDO                   VARCHAR(8)     NULL, ');
      Module.Query.Sql.Add('       NF_CDCLIENTE                VARCHAR(10)    NULL, ');
      Module.Query.Sql.Add('       NF_CORRIGECLI               VARCHAR(1)     NULL, ');
      Module.Query.Sql.Add('       NF_CDVENDEDOR               VARCHAR(8)     NULL, ');
      Module.Query.Sql.Add('       NF_PESOBR                   NUMERIC(12, 2) NULL, ');
      Module.Query.Sql.Add('       NF_PESOLIQ                  NUMERIC(12, 2) NULL, ');
      Module.Query.Sql.Add('       NF_QTDVOL                   NUMERIC(12, 2) NULL, ');
      Module.Query.Sql.Add('       NF_VALTOTNF                 NUMERIC(12, 2) NULL, ');
      Module.Query.Sql.Add('       NF_VALTOTDES                NUMERIC(12, 2) NULL, ');
      Module.Query.Sql.Add('       NF_DTEMISSAO                DATETIME       NULL, ');
      Module.Query.Sql.Add('       NF_DTENTREGA                DATETIME       NULL, ');
      Module.Query.Sql.Add('       NF_STATUSDUP                VARCHAR(1)     NULL, ');
      Module.Query.Sql.Add('       NF_BASEICMS                 NUMERIC(12, 2) NULL, ');
      Module.Query.Sql.Add('       NF_VALICMS                  NUMERIC(12, 2) NULL, ');
      Module.Query.Sql.Add('       NF_DTCANCELA                DATETIME       NULL, ');
      Module.Query.Sql.Add('       NF_MEIOTRANSP               VARCHAR(3)     NULL, ');
      Module.Query.Sql.Add('       NF_CORRIGEENDC              VARCHAR(1)     NULL, ');
      Module.Query.Sql.Add('       NF_CORRIGECGC               VARCHAR(1)     NULL, ');
      Module.Query.Sql.Add('       NF_CORRIGEIE                VARCHAR(1)     NULL, ');
      Module.Query.Sql.Add('       NF_CORRIGETRANS             VARCHAR(1)     NULL, ');
      Module.Query.Sql.Add('       NF_CORRIGEENDT              VARCHAR(1)     NULL, ');
      Module.Query.Sql.Add('       NF_CORRIGEDAD               VARCHAR(1)     NULL, ');
      Module.Query.Sql.Add('       NF_ABATIMENTO               NUMERIC(12, 2) NULL, ');
      Module.Query.Sql.Add('       NF_ACRESCIMO                NUMERIC(12, 2) NULL, ');
      Module.Query.Sql.Add('       NF_OBS                      VARCHAR(200)   NULL, ');
      Module.Query.Sql.Add('       NF_STACOMISSAO              VARCHAR(1)     NULL, ');
      Module.Query.Sql.Add('       NF_DTCOMISSAO               DATETIME       NULL, ');
      Module.Query.Sql.Add('       NF_DTATUALIZA               DATETIME       NULL, ');
      Module.Query.Sql.Add('       NF_DTEXPORTACAO             DATETIME       NULL, ');
      Module.Query.Sql.Add('       NF_HREXPORTACAO             VARCHAR(5)     NULL, ');
      Module.Query.Sql.Add('       NF_USUEXPORTACAO            VARCHAR(10)    NULL, ');
      Module.Query.Sql.Add('       NF_USUCANCELA               VARCHAR(10)    NULL, ');
      Module.Query.Sql.Add('       NF_HRCANCELA                VARCHAR(5)     NULL, ');
      Module.Query.Sql.Add('       NF_CANCELADA                VARCHAR(3)     NULL, ');
      Module.Query.Sql.Add('       NF_EXPORTADA                VARCHAR(3)     NULL, ');
      Module.Query.Sql.Add('       NF_STATUS                   VARCHAR(10)    NULL, ');
      Module.Query.Sql.Add('       NF_BASEIPI                  NUMERIC(12, 2) NULL, ');
      Module.Query.Sql.Add('       NF_VALIPI                   NUMERIC(12, 2) NULL, ');
      Module.Query.Sql.Add('       NF_CARTACORRECAO            VARCHAR(1)     NULL, ');
      Module.Query.Sql.Add('       NF_USUCARTA                 VARCHAR(10)    NULL, ');
      Module.Query.Sql.Add('       NF_DTCARTA                  DATETIME       NULL, ');
      Module.Query.Sql.Add('       NF_HRCARTA                  VARCHAR(5)     NULL, ');
      Module.Query.Sql.Add('       NF_MOTIVOCANCELA            VARCHAR(10)    NULL, ');
      Module.Query.Sql.Add('       NF_CODFISCAL                VARCHAR(4)     NULL, ');
      Module.Query.Sql.Add('       NF_VALLIQNF                 NUMERIC(12, 2) NULL, ');
      Module.Query.Sql.Add('       NF_VALDESCONTORESOLUCAOICMS NUMERIC(12, 2) NULL, ');
      Module.Query.Sql.Add('       NF_VALORORIGINAL            NUMERIC(12, 2) NULL, ');
      Module.Query.Sql.Add('       NF_NATOPE                   VARCHAR(4)     NULL, ');
      Module.Query.Sql.Add('       NF_TRANSP_ENDERECO          VARCHAR(50)    NULL, ');
      Module.Query.Sql.Add('       NF_CLI_UF                   VARCHAR(2)     NULL, ');
      Module.Query.Sql.Add('       NF_CLI_IE                   VARCHAR(20)    NULL, ');
      Module.Query.Sql.Add('       NF_CLI_CIDADE               VARCHAR(20)    NULL, ');
      Module.Query.Sql.Add('       NF_TRANSP_NOME              VARCHAR(50)    NULL, ');
      Module.Query.Sql.Add('       NF_TRANSP_CODIGO            VARCHAR(20)    NULL, ');
      Module.Query.Sql.Add('       NF_BASE_ICMS_SUBST_TRIBUT   NUMERIC(12, 2) NULL, ');
      Module.Query.Sql.Add('       NF_LOTE                     VARCHAR(20)    NULL, ');
      Module.Query.Sql.Add('       NF_VALTOTPROD               NUMERIC(12, 6) NULL, ');
      Module.Query.Sql.Add('       NF_VALICMSSUBST             NUMERIC(12, 6) NULL, ');
      Module.Query.Sql.Add('       NF_ANTT                     VARCHAR(20)    NULL, ');
      Module.Query.Sql.Add('       NF_PROTOCOLO                VARCHAR(50)    NULL, ');
      Module.Query.Sql.Add('       NF_RECIBO                   VARCHAR(50)    NULL, ');
      Module.Query.Sql.Add('       NF_CHAVENFE                 VARCHAR(50)    NULL, ');
      Module.Query.Sql.Add('       NF_SERIE5                   VARCHAR(5)     NULL, ');
      Module.Query.Sql.Add('       NF_ARQUIVOXML               VARCHAR(255)   NULL, ');
      Module.Query.Sql.Add('       NF_LOTENF                   INTEGER        NULL, ');
      Module.Query.Sql.Add('       NF_TOTALNFAUX               NUMERIC(12, 2) NULL, ');
      Module.Query.Sql.Add('       NFE_INFRESPTEC_IDCSRT       INTEGER        NULL, ');
      Module.Query.Sql.Add('       NFE_INFRESPTEC_CNPJ         VARCHAR(20)    NULL, ');
      Module.Query.Sql.Add('       NFE_INFRESPTEC_XCONTATO     VARCHAR(40)    NULL, ');
      Module.Query.Sql.Add('       NFE_INFRESPTEC_EMAIL        VARCHAR(40)    NULL) ');
      Module.Query.ExecSql;
  end;
  //Cria coluna para armazenar o Status da emissão de NFe de um pedido
  if fNaoAtualizado('Criada Coluna Venda.STATUSNFe..') then
  begin
     // STATUSNFe
     // 0 = NAO EMITIDA
     // 1 = EMITIDA
     // 2 = CANCELADA
     //-------------------------------------------------------------------------
     Executar('ALTER TABLE VENDA ADD STATUSNFe INTEGER NULL DEFAULT 0');
     Executar('UPDATE VENDA SET STATUSNFe = 0 WHERE STATUSNFe IS NULL');
  end;

  //Criar colunaS para NFe
    if fNaoAtualizado('Criada Coluna Cliente.INDICACAO_IE.') then
        Executar('ALTER TABLE CLIENTE ADD INDICACAO_IE INTEGER NULL');

    if fNaoAtualizado('Criada Coluna Cliente.TRIBUTACAO_ICMS.') then
       Executar('ALTER TABLE CLIENTE ADD TRIBUTACAO_ICMS INTEGER NULL');

    if fNaoAtualizado('Criada Coluna Cliente.CONTRIBUINTE_ICMS.') then
       Executar('ALTER TABLE CLIENTE ADD CONTRIBUINTE_ICMS INTEGER NULL');

    if fNaoAtualizado('Criada Coluna Venda.NOTAFISCAL.') then
       Executar('ALTER TABLE VENDA ADD NOTAFISCAL VARCHAR(10) NULL');

    if fNaoAtualizado('Criada Coluna config_notas.SENHA_CERTIFICADO...') then
       Executar('ALTER TABLE config_notas ADD SENHA_CERTIFICADO VARCHAR(255) NULL');

    if fNaoAtualizado('Excluir Coluna config_notas.SERIE_CERTIFICADO...') then
       Executar('ALTER TABLE config_notas drop column SERIE_CERTIFICADO');

    if fNaoAtualizado('Criada Coluna config_notas.CryptLib...') then
    begin
       Executar('ALTER TABLE config_notas ADD CryptLib integer NULL');
       Executar('UPDATE config_notas SET CryptLib = -1 Where CryptLib is NULL');
    end;

    if fNaoAtualizado('Criada Coluna config_notas.HttpLib...') then
    begin
       Executar('ALTER TABLE config_notas ADD HttpLib integer NULL');
       Executar('UPDATE config_notas SET HttpLib = -1 Where HttpLib is NULL');
    end;
    if fNaoAtualizado('Criada Coluna config_notas.SSLLib...') then
    begin
       Executar('ALTER TABLE config_notas ADD SSLLib integer NULL');
       Executar('UPDATE config_notas SET SSLLib = -1 Where SSLLib is NULL');
    end;
    if fNaoAtualizado('Criada Coluna config_notas.XmlSignLib...') then
    begin
       Executar('ALTER TABLE config_notas ADD XmlSignLib integer NULL');
       Executar('UPDATE config_notas SET XmlSignLib = -1 Where XmlSignLib is NULL');
    end;
    if fNaoAtualizado('Criada Coluna config_notas.ArquivoPFX...') then
       Executar('ALTER TABLE config_notas ADD ArquivoPFX VARCHAR(255) NULL');

    // 26/02/20 22:57
    if fNaoAtualizado('Criada Coluna config_notas.PosPrinterModelo...') then
    begin
       Executar('ALTER TABLE config_notas ADD PosPrinterModelo Integer null');
       Executar('UPDATE config_notas set PosPrinterModelo = -1 where PosPrinterModelo is null');
    end;
    if fNaoAtualizado('Criada Coluna config_notas.PaginaDeCodigo...') then
    begin
       Executar('ALTER TABLE config_notas ADD PaginaDeCodigo Integer null');
       Executar('UPDATE config_notas set PaginaDeCodigo = -1 where PaginaDeCodigo is null');
    end;
    if fNaoAtualizado('Criada Coluna config_notas.Porta...') then
       Executar('ALTER TABLE config_notas ADD Porta varchar(255) null');

    if fNaoAtualizado('Criada Coluna config_notas.ModeloPosPrinter...') then
    begin
       Executar('ALTER TABLE config_notas ADD ModeloPosPrinter Integer null');
       Executar('UPDATE config_notas set ModeloPosPrinter = -1 where ModeloPosPrinter is null');
    end;
    if fNaoAtualizado('Criada Tabela SERIENFe_SNFe...') then
    begin
       // Controle da numerãção sequencial de séries de NFe
       Module.Query.Close;
       Module.Query.Sql.Clear;
       Module.Query.SQL.Add('CREATE TABLE SERIENFe_SNFe         ');
       Module.Query.SQL.Add('     ( SNFe_CODIGO    INTEGER NULL,');
       Module.Query.SQL.Add('       SNFe_SEQUENCIA INTEGER NULL)');
       Module.Query.ExecSql;
    end;
    // Pasta onde os xml de NFe deverão ser salvos
    if fNaoAtualizado('Criada Coluna NFe_Configuracao.NFeC_PastaNotas...') then
       Executar('ALTER TABLE NFe_Configuracao ADD NFeC_PastaNotas varchar(255) null');

    // Tipo do Nivel de Seguranca do Certificado Digital para emissão de NFe
    if fNaoAtualizado('Criada Coluna config_notas.SSLType...') then
    begin
       Executar('ALTER TABLE config_notas ADD SSLType integer NULL');
       Executar('UPDATE config_notas SET SSLType = -1 Where SSLType is NULL');
    end;
    // Mostrar ou não preview da NFe
    if fNaoAtualizado('Criada Coluna NFe_Configuracao.MostraPreview...') then
    begin
       Executar('ALTER TABLE NFe_Configuracao ADD NFe_MostraPreview integer NULL');
       Executar('UPDATE NFe_Configuracao SET NFe_MostraPreview = 1 Where NFe_MostraPreview is NULL');
    end;
    // Criar tabela de Tipo de Movimento
    if fNaoAtualizado('Criada tabela de Tipo de Movimento......') then
    begin
      // Esta tabela descreve como cada tipo de movimento se comporta:
      // Se emite ou não doc fiscal. Que tipo de doc fiscal emite...
      // Se é uma operação de entrada ou saída do estoque
      // Se movimenta ou não o estoque
      // Se movimenta ou não o financeiro
      // Se o movimento se relaciona com cliente, fornecedor, ou nenhum dos dois
      // etc...
      //Executar('DROP TABLE TIPOMOVIMENTO_TPMOV');

      Module.Query.Close;
      Module.Query.Sql.Clear;
      Module.Query.Sql.Add('CREATE TABLE TIPOMOVIMENTO_TPMOV (                          ');
      Module.Query.Sql.Add('       TPMOV_CODIGO                   VARCHAR(10) NOT NULL, ');
      Module.Query.Sql.Add('       TPMOV_DESCRICAO                VARCHAR(40)     NULL, ');
      Module.Query.Sql.Add('       TPMOV_ES                       VARCHAR(1)      NULL, ');
      Module.Query.Sql.Add('       TPMOV_CLIFOR                   VARCHAR(1)      NULL, ');
      Module.Query.Sql.Add('       TPMOV_EMITENF                  INTEGER         NULL DEFAULT 0 COMMENT "Indicador Emissão Doc Fiscal (0-Não emite, 1-NFe, 2-NFCe)", ');
      Module.Query.Sql.Add('       TPMOV_SERIENF                  VARCHAR(5)      NULL, ');
      Module.Query.Sql.Add('       TPMOV_CONTAS                   VARCHAR(1)      NULL, ');
      Module.Query.Sql.Add('       TPMOV_MOVIMENTO                VARCHAR(1)      NULL, ');
      Module.Query.Sql.Add('       TPMOV_COMISSAO                 VARCHAR(1)      NULL, ');
      Module.Query.Sql.Add('       TPMOV_LANCAMENTO               VARCHAR(1)      NULL, ');
      Module.Query.Sql.Add('       TPMOV_EXPORTA                  VARCHAR(1)      NULL, ');
      Module.Query.Sql.Add('       TPMOV_COMPROMETE               VARCHAR(1)      NULL, ');
      Module.Query.Sql.Add('       TPMOV_CUSTOMEDIO               VARCHAR(1)      NULL, ');
      Module.Query.Sql.Add('       TPMOV_TABPRECOS                VARCHAR(1)      NULL, ');
      Module.Query.Sql.Add('       TPMOV_SEMESTOQUE               VARCHAR(1)      NULL, ');
      Module.Query.Sql.Add('       TPMOV_EXPEDICAO                VARCHAR(1)      NULL, ');
      Module.Query.Sql.Add('       TPMOV_INVENTARIO               VARCHAR(1)      NULL, ');
      Module.Query.Sql.Add('       TPMOV_CUSTOREPOSICAO           VARCHAR(1)      NULL, ');
      Module.Query.Sql.Add('       TPMOV_SEPARACAO                VARCHAR(1)      NULL, ');
      Module.Query.Sql.Add('       TPMOV_CREDITO                  VARCHAR(1)      NULL, ');
      Module.Query.Sql.Add('       TPMOV_FICHAFIN                 VARCHAR(1)      NULL, ');
      Module.Query.Sql.Add('       TPMOV_VINCULANF                VARCHAR(1)      NULL, ');
      Module.Query.Sql.Add('       TPMOV_ATIVA                    VARCHAR(1)      NULL, ');
      Module.Query.Sql.Add('       TPMOV_TRANSFERENCIA            VARCHAR(1)      NULL, ');
      Module.Query.Sql.Add('       TPMOV_NATUREZAOP               VARCHAR(5)      NULL, ');
      Module.Query.Sql.Add('       TPMOV_COMOAPLICARICMS          VARCHAR(1)      NULL, ');
      Module.Query.Sql.Add('       TPMOV_SUBSTITUIITENS           VARCHAR(1)      NULL, ');
      Module.Query.Sql.Add('       TPMOV_MOVESTOQUE               VARCHAR(1)      NULL, ');
      Module.Query.Sql.Add('       TPMOV_CONFERIR                 VARCHAR(1)      NULL, ');
      Module.Query.Sql.Add('       TPMOV_MODELONF                 VARCHAR(10)     NULL, ');
      Module.Query.Sql.Add('       TPMOV_LIBERAR                  VARCHAR(1)      NULL, ');
      Module.Query.Sql.Add('       TPMOV_CDPRODUTO                VARCHAR(1)      NULL, ');
      Module.Query.Sql.Add('       TPMOV_DIGVENDEDOR              VARCHAR(1)      NULL, ');
      Module.Query.Sql.Add('       TPMOV_POSFINANCEIRA            VARCHAR(1)      NULL, ');
      Module.Query.Sql.Add('       TPMOV_CHEQUEPRE                VARCHAR(1)      NULL, ');
      Module.Query.Sql.Add('       TPMOV_DIGPRECOS                VARCHAR(1)      NULL, ');
      Module.Query.Sql.Add('       TPMOV_DIGUNIDADE               VARCHAR(1)      NULL, ');
      Module.Query.Sql.Add('       TPMOV_ACIMALIMITE              VARCHAR(1)      NULL, ');
      Module.Query.Sql.Add('       TPMOV_SENHALIMITE              VARCHAR(10)     NULL, ');
      Module.Query.Sql.Add('       TPMOV_DOCFISCAL                VARCHAR(1)      NULL, ');
      Module.Query.Sql.Add('       TPMOV_TPPRODUTO                VARCHAR(10)     NULL, ');
      Module.Query.Sql.Add('       TPMOV_ALMOXARIFADO             VARCHAR(10)     NULL, ');
      Module.Query.Sql.Add('       TPMOV_DIGDATA_ES               VARCHAR(1)      NULL, ');
      Module.Query.Sql.Add('       TPMOV_DIGOBS_NF                VARCHAR(1)      NULL, ');
      Module.Query.Sql.Add('       TPMOV_DIG_PEDCLIFOR            VARCHAR(1)      NULL, ');
      Module.Query.Sql.Add('       TPMOV_DIG_DTVENCE              VARCHAR(1)      NULL, ');
      Module.Query.Sql.Add('       TPMOV_DIG_FORMAPG              VARCHAR(1)      NULL, ');
      Module.Query.Sql.Add('       TPMOV_DIG_ESPECIE              VARCHAR(1)      NULL, ');
      Module.Query.Sql.Add('       TPMOV_DIG_QTDEITENS            VARCHAR(1)      NULL, ');
      Module.Query.Sql.Add('       TPMOV_CDINTERFACE              VARCHAR(1)      NULL, ');
      Module.Query.Sql.Add('       TPMOV_NOMEFANTASIA             VARCHAR(1)      NULL, ');
      Module.Query.Sql.Add('       TPMOV_ITEMDUPLICADO            VARCHAR(1)      NULL, ');
      Module.Query.Sql.Add('       TPMOV_TPMOVDESTINO             VARCHAR(10)     NULL, ');
      Module.Query.Sql.Add('       TPMOV_CDMENSAGEM               VARCHAR(10)     NULL, ');
      Module.Query.Sql.Add('       TPMOV_NMINTERFACE              VARCHAR(30)     NULL, ');
      Module.Query.Sql.Add('       TPMOV_CUBAR                    VARCHAR(1)      NULL, ');
      Module.Query.Sql.Add('       TPMOV_DEVOLUCAO                VARCHAR(3)      NULL, ');
      Module.Query.Sql.Add('       TPMOV_DEVOLUCAOSN              VARCHAR(3)      NULL, ');
      Module.Query.Sql.Add('       TPMOV_CONSTA_REL_VENDA         VARCHAR(3)      NULL, ');
      Module.Query.Sql.Add('       TPMOV_CONSTAEMROTEIRO          VARCHAR(3)      NULL, ');
      Module.Query.Sql.Add('       TPMOV_PRECOZERO                VARCHAR(3)      NULL, ');
      Module.Query.Sql.Add('       TPMOV_EXIGECLASSIFICACAOPROD   VARCHAR(1)      NULL, ');
      Module.Query.Sql.Add('       TPMOV_PRECOMINIMO              VARCHAR(1)      NULL, ');
      Module.Query.Sql.Add('       TPMOV_MOSTRAFPGCLIENTE         VARCHAR(1)      NULL, ');
      Module.Query.Sql.Add('       TPMOV_MOSTRAPEDIDOREPETIDO     VARCHAR(1)      NULL, ');
      Module.Query.Sql.Add('       TPMOV_EXIGEEMPENHO             VARCHAR(1)      NULL, ');
      Module.Query.Sql.Add('       TPMOV_FRETE                    VARCHAR(1)      NULL, ');
      Module.Query.Sql.Add('       TPMOV_BAIXAQUANTITATIVO        VARCHAR(1)      NULL, ');
      Module.Query.Sql.Add('       TPMOV_SUGEREDATACORRENTE       VARCHAR(1)      NULL, ');
      Module.Query.Sql.Add('       TPMOV_CLIENTEFATURA            VARCHAR(1)      NULL, ');
      Module.Query.Sql.Add('       TPMOV_CLIENTEENTREGA           VARCHAR(1)      NULL, ');
      Module.Query.Sql.Add('       TPMOV_FORMAPGTO                VARCHAR(10)     NULL, ');
      Module.Query.Sql.Add('       TPMOV_SALDOCONTRATUAL          VARCHAR(1)      NULL, ');
      Module.Query.Sql.Add('       TPMOV_COMPROVANTETESTEARQUIVO  VARCHAR(1)      NULL, ');
      Module.Query.Sql.Add('       TPMOV_CONDICAOPGTO             VARCHAR(10)     NULL, ');
      Module.Query.Sql.Add('       TPMOV_LINHASAPOSCOMPROVANTE    INTEGER         NULL, ');
      Module.Query.Sql.Add('       TPMOV_NUMEROLINHASCUPOM        INTEGER         NULL, ');
      Module.Query.Sql.Add('       TPMOV_TRATARTROCO              VARCHAR(1)      NULL, ');
      Module.Query.Sql.Add('       TPMOV_CLIENTEDEFAULT           VARCHAR(10)     NULL, ');
      Module.Query.Sql.Add('       TPMOV_PEDIRCLIENTE             VARCHAR(1)      NULL, ');
      Module.Query.Sql.Add('       TPMOV_PEDIDOPENDENTEPRECO      VARCHAR(1)      NULL, ');
      Module.Query.Sql.Add('       TPMOV_ENTREGA                  VARCHAR(20)     NULL, ');
      Module.Query.Sql.Add('       TPMOV_DESCONTO                 NUMERIC(6,2)    NULL, ');
      Module.Query.Sql.Add('       TPMOV_TABPRECOTPMOVFPG         VARCHAR(1)      NULL, ');
      Module.Query.Sql.Add('       TPMOV_IMPRIMERECEBIDOEM        VARCHAR(1)      NULL, ');
      Module.Query.Sql.Add('       TPMOV_PERGUNTASEIMPRIMENOTA    VARCHAR(1)      NULL, ');
      Module.Query.Sql.Add('       TPMOV_GRAVACOMF10              VARCHAR(1)      NULL, ');
      Module.Query.Sql.Add('       TPMOV_SUGEREQTDE1              VARCHAR(1)      NULL, ');
      Module.Query.Sql.Add('       TPMOV_DADOSDOTRANSPORTADOR     VARCHAR(1)      NULL, ');
      Module.Query.Sql.Add('       TPMOV_SUGEREULTIMOVENDEDOR     VARCHAR(1)      NULL, ');
      Module.Query.Sql.Add('       TPMOV_ASSOCIAVENDEDORAOCLIENTE VARCHAR(1)      NULL, ');
      Module.Query.Sql.Add('       TPMOV_VALORDOCUSTOMEDIO        VARCHAR(1)      NULL, ');
      Module.Query.Sql.Add('       TPMOV_SENHAALTERARPRECO        VARCHAR(10)     NULL, ');
      Module.Query.Sql.Add('       TPMOV_IMPRIMIRCONDICAOPAGAMENT VARCHAR(1)      NULL, ');
      Module.Query.Sql.Add('       TPMOV_MODELOBOLETO             VARCHAR(10)     NULL, ');
      Module.Query.Sql.Add('       TPMOV_NATUREZAFINANCEIRA       VARCHAR(10)     NULL, ');
      Module.Query.Sql.Add('       TPMOV_COMPROVANTE              INTEGER         NULL, ');
      Module.Query.Sql.Add('       TPMOV_IMPRIMEBOLETOAPOSPEDIDO  INTEGER         NULL, ');
      Module.Query.Sql.Add('       TPMOV_PEDESEQUENCIALBOLETO     VARCHAR(1)      NULL, ');
      Module.Query.Sql.Add('       TPMOV_TABELAPRECOS             VARCHAR(10)     NULL, ');
      Module.Query.Sql.Add('       TPMOV_PRECOPRODUTO             INTEGER         NULL, ');
      Module.Query.Sql.Add('       TPMOV_HORARIO                  VARCHAR(1)      NULL, ');
      Module.Query.Sql.Add('       TPMOV_MARGEMESQUERDA           INTEGER         NULL, ');
      Module.Query.Sql.Add('       TPMOV_ALIQ_SUBST_TRIBUTARIA    NUMERIC(12, 6)  NULL, ');
      Module.Query.Sql.Add('       TPMOV_ALIQ_ICMS1               NUMERIC(12, 6)  NULL, ');
      Module.Query.Sql.Add('       TPMOV_ALIQ_ICMS2               NUMERIC(12, 6)  NULL, ');
      Module.Query.Sql.Add('       TPMOV_ALIQ_FOMEZERO            NUMERIC(12, 6)  NULL, ');
      Module.Query.Sql.Add('       TPMOV_CLI_CDROTA               VARCHAR(1)      NULL, ');
      Module.Query.Sql.Add('       TPMOV_COFINS                   INTEGER         NULL, ');
      Module.Query.Sql.Add('       TPMOV_PIS                      INTEGER         NULL, ');
      Module.Query.Sql.Add('       TPMOV_IPI                      INTEGER         NULL, ');
      Module.Query.Sql.Add('       TPMOV_SUBSTRIB                 INTEGER         NULL, ');
      Module.Query.Sql.Add('       TPMOV_SENHAEXCLUIRITEM         VARCHAR(1)      NULL, ');
      Module.Query.Sql.Add('       TPMOV_VAREJOPARAATACADO        INTEGER         NULL, ');
      Module.Query.Sql.Add('       TPMOV_SOMENTEPRECOESPECIAL     VARCHAR(1)      NULL, ');
      Module.Query.Sql.Add('       TPMOV_1_CLI_DEV_BLOQUEIA_TODOS VARCHAR(1)      NULL, ');
      Module.Query.Sql.Add('       TPMOV_MARGEMCOMISSAO           NUMERIC(12, 4)  NULL, ');
      Module.Query.Sql.Add('       TPMOV_DIGTALAO                 INTEGER         NULL, ');
      Module.Query.Sql.Add('       TPMOV_CONSIDERARFRETE          VARCHAR(20)     NULL, ');
      Module.Query.Sql.Add('       TPMOV_FRETEPORCONTA            INTEGER         NULL, ');
      Module.Query.Sql.Add('       TPMOV_EXIGE_PROD_TPPRODUTO     VARCHAR(1)      NULL, ');
      Module.Query.Sql.Add('       TPMOV_SAIRCOMITENSNATELA       VARCHAR(1)      NULL, ');
      Module.Query.Sql.Add('       TPMOV_INFORMARNOMECLIENTE      VARCHAR(1)      NULL, ');
      Module.Query.Sql.Add('       TPMOV_PRECOMPRA                VARCHAR(1)      NULL, ');
      Module.Query.Sql.Add('       TPMOV_ORDEMITENSPEDIDO         INTEGER         NULL, ');
      Module.Query.Sql.Add('       TPMOV_IMPRIMEDTVENCE           VARCHAR(1)      NULL, ');
      Module.Query.Sql.Add('       TPMOV_GERALUCRO                VARCHAR(1)      NULL, ');
      Module.Query.Sql.Add('       TPMOV_TPMOVFISCAL              VARCHAR(10)     NULL, ');
      Module.Query.Sql.Add('       TPMOV_PERGUNTASEIMPRIMEPEDIDO  VARCHAR(1)      NULL, ');
      Module.Query.Sql.Add('       TPMOV_IMPRIMEPEDIDONVIAS       INTEGER         NULL, ');
      Module.Query.Sql.Add('       TPMOV_ALTERARNOTAPAGA          INTEGER         NULL, ');
      Module.Query.Sql.Add('       TPMOV_NAOVENDERABAIXODOCUSTO   INTEGER         NULL, ');
      Module.Query.Sql.Add('       TPMOV_SENHAALTERARPRECOUSUARIO VARCHAR(1)      NULL, ');
      Module.Query.Sql.Add('       TPMOV_NFAPOSPEDIDO             VARCHAR(1)      NULL, ');
      Module.Query.Sql.Add('       TPMOV_EFETIVARPREPEDIDO        VARCHAR(20)     NULL, ');
      Module.Query.Sql.Add('       TPMOV_IMPEDIRVENDAPORATRASO    VARCHAR(1)      NULL, ');
      Module.Query.Sql.Add('       TPMOV_NATUREZAOPSUBTRIB        VARCHAR(10)     NULL, ');
      Module.Query.Sql.Add('       TPMOV_MODELODOCFISCAL          INTEGER         NULL, ');
      Module.Query.Sql.Add('       TPMOV_EMITENTEDOCFISCAL        INTEGER         NULL, ');
      Module.Query.Sql.Add('       TPMOV_GERACREDITODEBITOICMS    INTEGER         NULL, ');
      Module.Query.Sql.Add('       TPMOV_TIPOANTECIPACAOTRIBUTARI INTEGER         NULL, ');
      Module.Query.Sql.Add('       TPMOV_FINALIDADE               INTEGER         NULL DEFAULT 5 COMMENT "Finalidade Doc Fiscal", ');
      Module.Query.Sql.Add('       TPMOV_SOMARICMSAOTOTALDANOTA   VARCHAR(1)      NULL, ');
      Module.Query.Sql.Add('       TPMOV_SOMARIPIAOTOTALDANOTA    VARCHAR(1)      NULL, ');
      Module.Query.Sql.Add('       TPMOV_MANTEROCAIXAAOALTERAR    VARCHAR(1)      NULL, ');
      Module.Query.Sql.Add('       TPMOV_VENDA                    INTEGER         NULL, ');
      Module.Query.Sql.Add('       TPMOV_SELECIONARIMPRESSORA     INTEGER         NULL, ');
      Module.Query.Sql.Add('       TPMOV_MOMENTOIMPBOLETO         INTEGER         NULL, ');
      Module.Query.Sql.Add('       TPMOV_MOSTRARFATURAS           INTEGER         NULL, ');
      Module.Query.Sql.Add('       TPMOV_DESTACARICMS             INTEGER         NULL, ');
      Module.Query.Sql.Add('       TPMOV_USARENDERECO             INTEGER         NULL, ');
      Module.Query.Sql.Add('       TPMOV_GERADAV                  VARCHAR(1)      NULL, ');
      Module.Query.Sql.Add('       TPMOV_NATUREZADAOPERACAO       VARCHAR(40)     NULL, ');
      Module.Query.Sql.Add('       TPMOV_CSTPRODPED               INTEGER         NULL, ');
      Module.Query.Sql.Add('       TPMOV_NFE_IDDEST               INTEGER         NULL, ');
      Module.Query.Sql.Add('       TPMOV_NFE_TPIMP                INTEGER         NULL, ');
      Module.Query.Sql.Add('       TPMOV_NFE_B06_10_MOD           INTEGER         NULL, ');
      Module.Query.Sql.Add('       TPMOV_PORTAIMPRESSSORA         VARCHAR(20)     NULL, ');
      Module.Query.Sql.Add('       TPMOV_INDPRES                  INTEGER         NULL, ');
      Module.Query.Sql.Add('       TPMOV_BA07_MOD                 INTEGER         NULL, ');
      Module.Query.Sql.Add('       TPMOV_FUNDOCOMBATEPOBREZA      INTEGER         NULL, ');
      Module.Query.Sql.Add('       TPMOV_DESC_PROD_PROMO          INTEGER         NULL, ');
      Module.Query.Sql.Add('       TPMOV_PRECOFIXO                INTEGER         NULL, ');
      Module.Query.Sql.Add('       TPMOV_2PRECOS                  INTEGER         NULL, ');
      Module.Query.Sql.Add('       TPMOV_IMPRIMEPREVIEW           INTEGER         NULL, ');
      Module.Query.Sql.Add('       TPMOV_NFCE_VEICTRANSP          INTEGER         NULL, ');
      Module.Query.Sql.Add('       TPMOV_FINANCEIROCLIFOR         INTEGER         NULL, ');
      Module.Query.Sql.Add('       TPMOV_USARBRENANFE             INTEGER         NULL, ');
      Module.Query.Sql.Add('       TPMOV_PRODSERV                 INTEGER         NULL )');
      Module.Query.ExecSql;
    end;
    // Incluir o tipo de movimento na tabela de vendas
    if fNaoAtualizado('Incluido o tipo de movimento na tabela de vendas...') then
       Executar('ALTER TABLE VENDA ADD VENDA_TPMOV VARCHAR(10) NULL');

    // Incluir o tipo de movimento "V=Venda"
    if fNaoAtualizado('Incluido o tipo de movimento V=Venda..') then
    begin
      Module.Query.Close;
      Module.Query.Sql.Clear;
      Module.Query.Sql.Add('INSERT INTO TIPOMOVIMENTO_TPMOV       ');
      Module.Query.Sql.Add('      (TPMOV_DESCRICAO,               ');
      Module.Query.Sql.Add('       TPMOV_ES,                      ');
      Module.Query.Sql.Add('       TPMOV_CLIFOR,                  ');
      Module.Query.Sql.Add('       TPMOV_EMITENF,                 ');
      Module.Query.Sql.Add('       TPMOV_SERIENF,                 ');
      Module.Query.Sql.Add('       TPMOV_CONTAS,                  ');
      Module.Query.Sql.Add('       TPMOV_MOVIMENTO,               ');
      Module.Query.Sql.Add('       TPMOV_COMISSAO,                ');
      Module.Query.Sql.Add('       TPMOV_LANCAMENTO,              ');
      Module.Query.Sql.Add('       TPMOV_EXPORTA,                 ');
      Module.Query.Sql.Add('       TPMOV_COMPROMETE,              ');
      Module.Query.Sql.Add('       TPMOV_CUSTOMEDIO,              ');
      Module.Query.Sql.Add('       TPMOV_TABPRECOS,               ');
      Module.Query.Sql.Add('       TPMOV_SEMESTOQUE,              ');
      Module.Query.Sql.Add('       TPMOV_EXPEDICAO,               ');
      Module.Query.Sql.Add('       TPMOV_INVENTARIO,              ');
      Module.Query.Sql.Add('       TPMOV_CUSTOREPOSICAO,          ');
      Module.Query.Sql.Add('       TPMOV_SEPARACAO,               ');
      Module.Query.Sql.Add('       TPMOV_CREDITO,                 ');
      Module.Query.Sql.Add('       TPMOV_FICHAFIN,                ');
      Module.Query.Sql.Add('       TPMOV_VINCULANF,               ');
      Module.Query.Sql.Add('       TPMOV_ATIVA,                   ');
      Module.Query.Sql.Add('       TPMOV_TRANSFERENCIA,           ');
      Module.Query.Sql.Add('       TPMOV_NATUREZAOP,              ');
      Module.Query.Sql.Add('       TPMOV_COMOAPLICARICMS,         ');
      Module.Query.Sql.Add('       TPMOV_SUBSTITUIITENS,          ');
      Module.Query.Sql.Add('       TPMOV_MOVESTOQUE,              ');
      Module.Query.Sql.Add('       TPMOV_CONFERIR,                ');
      Module.Query.Sql.Add('       TPMOV_MODELONF,                ');
      Module.Query.Sql.Add('       TPMOV_LIBERAR,                 ');
      Module.Query.Sql.Add('       TPMOV_CDPRODUTO,               ');
      Module.Query.Sql.Add('       TPMOV_DIGVENDEDOR,             ');
      Module.Query.Sql.Add('       TPMOV_POSFINANCEIRA,           ');
      Module.Query.Sql.Add('       TPMOV_CHEQUEPRE,               ');
      Module.Query.Sql.Add('       TPMOV_DIGPRECOS,               ');
      Module.Query.Sql.Add('       TPMOV_DIGUNIDADE,              ');
      Module.Query.Sql.Add('       TPMOV_ACIMALIMITE,             ');
      Module.Query.Sql.Add('       TPMOV_SENHALIMITE,             ');
      Module.Query.Sql.Add('       TPMOV_DOCFISCAL,               ');
      Module.Query.Sql.Add('       TPMOV_TPPRODUTO,               ');
      Module.Query.Sql.Add('       TPMOV_ALMOXARIFADO,            ');
      Module.Query.Sql.Add('       TPMOV_DIGDATA_ES,              ');
      Module.Query.Sql.Add('       TPMOV_DIGOBS_NF,               ');
      Module.Query.Sql.Add('       TPMOV_DIG_PEDCLIFOR,           ');
      Module.Query.Sql.Add('       TPMOV_DIG_DTVENCE,             ');
      Module.Query.Sql.Add('       TPMOV_DIG_FORMAPG,             ');
      Module.Query.Sql.Add('       TPMOV_DIG_ESPECIE,             ');
      Module.Query.Sql.Add('       TPMOV_DIG_QTDEITENS,           ');
      Module.Query.Sql.Add('       TPMOV_CDINTERFACE,             ');
      Module.Query.Sql.Add('       TPMOV_NOMEFANTASIA,            ');
      Module.Query.Sql.Add('       TPMOV_ITEMDUPLICADO,           ');
      Module.Query.Sql.Add('       TPMOV_TPMOVDESTINO,            ');
      Module.Query.Sql.Add('       TPMOV_CDMENSAGEM,              ');
      Module.Query.Sql.Add('       TPMOV_NMINTERFACE,             ');
      Module.Query.Sql.Add('       TPMOV_CUBAR,                   ');
      Module.Query.Sql.Add('       TPMOV_DEVOLUCAO,               ');
      Module.Query.Sql.Add('       TPMOV_DEVOLUCAOSN,             ');
      Module.Query.Sql.Add('       TPMOV_CONSTA_REL_VENDA,        ');
      Module.Query.Sql.Add('       TPMOV_CODIGO,                  ');
      Module.Query.Sql.Add('       TPMOV_CONSTAEMROTEIRO,         ');
      Module.Query.Sql.Add('       TPMOV_PRECOZERO,               ');
      Module.Query.Sql.Add('       TPMOV_EXIGECLASSIFICACAOPROD,  ');
      Module.Query.Sql.Add('       TPMOV_PRECOMINIMO,             ');
      Module.Query.Sql.Add('       TPMOV_MOSTRAFPGCLIENTE,        ');
      Module.Query.Sql.Add('       TPMOV_MOSTRAPEDIDOREPETIDO,    ');
      Module.Query.Sql.Add('       TPMOV_EXIGEEMPENHO,            ');
      Module.Query.Sql.Add('       TPMOV_FRETE,                   ');
      Module.Query.Sql.Add('       TPMOV_BAIXAQUANTITATIVO,       ');
      Module.Query.Sql.Add('       TPMOV_SUGEREDATACORRENTE,      ');
      Module.Query.Sql.Add('       TPMOV_CLIENTEFATURA,           ');
      Module.Query.Sql.Add('       TPMOV_CLIENTEENTREGA,          ');
      Module.Query.Sql.Add('       TPMOV_FORMAPGTO,               ');
      Module.Query.Sql.Add('       TPMOV_SALDOCONTRATUAL,         ');
      Module.Query.Sql.Add('       TPMOV_COMPROVANTETESTEARQUIVO, ');
      Module.Query.Sql.Add('       TPMOV_CONDICAOPGTO,            ');
      Module.Query.Sql.Add('       TPMOV_LINHASAPOSCOMPROVANTE,   ');
      Module.Query.Sql.Add('       TPMOV_NUMEROLINHASCUPOM,       ');
      Module.Query.Sql.Add('       TPMOV_TRATARTROCO,             ');
      Module.Query.Sql.Add('       TPMOV_CLIENTEDEFAULT,          ');
      Module.Query.Sql.Add('       TPMOV_PEDIRCLIENTE,            ');
      Module.Query.Sql.Add('       TPMOV_PEDIDOPENDENTEPRECO,     ');
      Module.Query.Sql.Add('       TPMOV_ENTREGA,                 ');
      Module.Query.Sql.Add('       TPMOV_DESCONTO,                ');
      Module.Query.Sql.Add('       TPMOV_TABPRECOTPMOVFPG,        ');
      Module.Query.Sql.Add('       TPMOV_IMPRIMERECEBIDOEM,       ');
      Module.Query.Sql.Add('       TPMOV_PERGUNTASEIMPRIMENOTA,   ');
      Module.Query.Sql.Add('       TPMOV_GRAVACOMF10,             ');
      Module.Query.Sql.Add('       TPMOV_SUGEREQTDE1,             ');
      Module.Query.Sql.Add('       TPMOV_DADOSDOTRANSPORTADOR,    ');
      Module.Query.Sql.Add('       TPMOV_SUGEREULTIMOVENDEDOR,    ');
      Module.Query.Sql.Add('       TPMOV_ASSOCIAVENDEDORAOCLIENTE,');
      Module.Query.Sql.Add('       TPMOV_VALORDOCUSTOMEDIO,       ');
      Module.Query.Sql.Add('       TPMOV_SENHAALTERARPRECO,       ');
      Module.Query.Sql.Add('       TPMOV_IMPRIMIRCONDICAOPAGAMENT,');
      Module.Query.Sql.Add('       TPMOV_MODELOBOLETO,            ');
      Module.Query.Sql.Add('       TPMOV_NATUREZAFINANCEIRA,      ');
      Module.Query.Sql.Add('       TPMOV_COMPROVANTE,             ');
      Module.Query.Sql.Add('       TPMOV_IMPRIMEBOLETOAPOSPEDIDO, ');
      Module.Query.Sql.Add('       TPMOV_PEDESEQUENCIALBOLETO,    ');
      Module.Query.Sql.Add('       TPMOV_TABELAPRECOS,            ');
      Module.Query.Sql.Add('       TPMOV_PRECOPRODUTO,            ');
      Module.Query.Sql.Add('       TPMOV_HORARIO,                 ');
      Module.Query.Sql.Add('       TPMOV_MARGEMESQUERDA,          ');
      Module.Query.Sql.Add('       TPMOV_ALIQ_SUBST_TRIBUTARIA,   ');
      Module.Query.Sql.Add('       TPMOV_ALIQ_ICMS1,              ');
      Module.Query.Sql.Add('       TPMOV_ALIQ_ICMS2,              ');
      Module.Query.Sql.Add('       TPMOV_ALIQ_FOMEZERO,           ');
      Module.Query.Sql.Add('       TPMOV_CLI_CDROTA,              ');
      Module.Query.Sql.Add('       TPMOV_COFINS,                  ');
      Module.Query.Sql.Add('       TPMOV_PIS,                     ');
      Module.Query.Sql.Add('       TPMOV_IPI,                     ');
      Module.Query.Sql.Add('       TPMOV_SUBSTRIB,                ');
      Module.Query.Sql.Add('       TPMOV_SENHAEXCLUIRITEM,        ');
      Module.Query.Sql.Add('       TPMOV_VAREJOPARAATACADO,       ');
      Module.Query.Sql.Add('       TPMOV_SOMENTEPRECOESPECIAL,    ');
      Module.Query.Sql.Add('       TPMOV_1_CLI_DEV_BLOQUEIA_TODOS,');
      Module.Query.Sql.Add('       TPMOV_MARGEMCOMISSAO,          ');
      Module.Query.Sql.Add('       TPMOV_DIGTALAO,                ');
      Module.Query.Sql.Add('       TPMOV_CONSIDERARFRETE,         ');
      Module.Query.Sql.Add('       TPMOV_FRETEPORCONTA,           ');
      Module.Query.Sql.Add('       TPMOV_EXIGE_PROD_TPPRODUTO,    ');
      Module.Query.Sql.Add('       TPMOV_SAIRCOMITENSNATELA,      ');
      Module.Query.Sql.Add('       TPMOV_INFORMARNOMECLIENTE,     ');
      Module.Query.Sql.Add('       TPMOV_PRECOMPRA,               ');
      Module.Query.Sql.Add('       TPMOV_ORDEMITENSPEDIDO,        ');
      Module.Query.Sql.Add('       TPMOV_IMPRIMEDTVENCE,          ');
      Module.Query.Sql.Add('       TPMOV_GERALUCRO,               ');
      Module.Query.Sql.Add('       TPMOV_TPMOVFISCAL,             ');
      Module.Query.Sql.Add('       TPMOV_PERGUNTASEIMPRIMEPEDIDO, ');
      Module.Query.Sql.Add('       TPMOV_IMPRIMEPEDIDONVIAS,      ');
      Module.Query.Sql.Add('       TPMOV_ALTERARNOTAPAGA,         ');
      Module.Query.Sql.Add('       TPMOV_NAOVENDERABAIXODOCUSTO,  ');
      Module.Query.Sql.Add('       TPMOV_SENHAALTERARPRECOUSUARIO,');
      Module.Query.Sql.Add('       TPMOV_NFAPOSPEDIDO,            ');
      Module.Query.Sql.Add('       TPMOV_EFETIVARPREPEDIDO,       ');
      Module.Query.Sql.Add('       TPMOV_IMPEDIRVENDAPORATRASO,   ');
      Module.Query.Sql.Add('       TPMOV_NATUREZAOPSUBTRIB,       ');
      Module.Query.Sql.Add('       TPMOV_MODELODOCFISCAL,         ');
      Module.Query.Sql.Add('       TPMOV_EMITENTEDOCFISCAL,       ');
      Module.Query.Sql.Add('       TPMOV_GERACREDITODEBITOICMS,   ');
      Module.Query.Sql.Add('       TPMOV_TIPOANTECIPACAOTRIBUTARI,');
      Module.Query.Sql.Add('       TPMOV_FINALIDADE,              ');
      Module.Query.Sql.Add('       TPMOV_SOMARICMSAOTOTALDANOTA,  ');
      Module.Query.Sql.Add('       TPMOV_SOMARIPIAOTOTALDANOTA,   ');
      Module.Query.Sql.Add('       TPMOV_MANTEROCAIXAAOALTERAR,   ');
      Module.Query.Sql.Add('       TPMOV_VENDA,                   ');
      Module.Query.Sql.Add('       TPMOV_SELECIONARIMPRESSORA,    ');
      Module.Query.Sql.Add('       TPMOV_MOMENTOIMPBOLETO,        ');
      Module.Query.Sql.Add('       TPMOV_MOSTRARFATURAS,          ');
      Module.Query.Sql.Add('       TPMOV_DESTACARICMS,            ');
      Module.Query.Sql.Add('       TPMOV_USARENDERECO,            ');
      Module.Query.Sql.Add('       TPMOV_GERADAV,                 ');
      Module.Query.Sql.Add('       TPMOV_NATUREZADAOPERACAO,      ');
      Module.Query.Sql.Add('       TPMOV_CSTPRODPED,              ');
      Module.Query.Sql.Add('       TPMOV_NFE_IDDEST,              ');
      Module.Query.Sql.Add('       TPMOV_NFE_TPIMP,               ');
      Module.Query.Sql.Add('       TPMOV_NFE_B06_10_MOD,          ');
      Module.Query.Sql.Add('       TPMOV_PORTAIMPRESSSORA,        ');
      Module.Query.Sql.Add('       TPMOV_INDPRES,                 ');
      Module.Query.Sql.Add('       TPMOV_BA07_MOD,                ');
      Module.Query.Sql.Add('       TPMOV_FUNDOCOMBATEPOBREZA,     ');
      Module.Query.Sql.Add('       TPMOV_DESC_PROD_PROMO,         ');
      Module.Query.Sql.Add('       TPMOV_PRECOFIXO,               ');
      Module.Query.Sql.Add('       TPMOV_2PRECOS,                 ');
      Module.Query.Sql.Add('       TPMOV_IMPRIMEPREVIEW,          ');
      Module.Query.Sql.Add('       TPMOV_NFCE_VEICTRANSP,         ');
      Module.Query.Sql.Add('       TPMOV_FINANCEIROCLIFOR,        ');
      Module.Query.Sql.Add('       TPMOV_USARBRENANFE,            ');
      Module.Query.Sql.Add('       TPMOV_PRODSERV)                ');
      Module.Query.Sql.Add(' VALUES                               ');
      Module.Query.Sql.Add('     (:TPMOV_DESCRICAO,               ');
      Module.Query.Sql.Add('      :TPMOV_ES,                      ');
      Module.Query.Sql.Add('      :TPMOV_CLIFOR,                  ');
      Module.Query.Sql.Add('      :TPMOV_EMITENF,                 ');
      Module.Query.Sql.Add('      :TPMOV_SERIENF,                 ');
      Module.Query.Sql.Add('      :TPMOV_CONTAS,                  ');
      Module.Query.Sql.Add('      :TPMOV_MOVIMENTO,               ');
      Module.Query.Sql.Add('      :TPMOV_COMISSAO,                ');
      Module.Query.Sql.Add('      :TPMOV_LANCAMENTO,              ');
      Module.Query.Sql.Add('      :TPMOV_EXPORTA,                 ');
      Module.Query.Sql.Add('      :TPMOV_COMPROMETE,              ');
      Module.Query.Sql.Add('      :TPMOV_CUSTOMEDIO,              ');
      Module.Query.Sql.Add('      :TPMOV_TABPRECOS,               ');
      Module.Query.Sql.Add('      :TPMOV_SEMESTOQUE,              ');
      Module.Query.Sql.Add('      :TPMOV_EXPEDICAO,               ');
      Module.Query.Sql.Add('      :TPMOV_INVENTARIO,              ');
      Module.Query.Sql.Add('      :TPMOV_CUSTOREPOSICAO,          ');
      Module.Query.Sql.Add('      :TPMOV_SEPARACAO,               ');
      Module.Query.Sql.Add('      :TPMOV_CREDITO,                 ');
      Module.Query.Sql.Add('      :TPMOV_FICHAFIN,                ');
      Module.Query.Sql.Add('      :TPMOV_VINCULANF,               ');
      Module.Query.Sql.Add('      :TPMOV_ATIVA,                   ');
      Module.Query.Sql.Add('      :TPMOV_TRANSFERENCIA,           ');
      Module.Query.Sql.Add('      :TPMOV_NATUREZAOP,              ');
      Module.Query.Sql.Add('      :TPMOV_COMOAPLICARICMS,         ');
      Module.Query.Sql.Add('      :TPMOV_SUBSTITUIITENS,          ');
      Module.Query.Sql.Add('      :TPMOV_MOVESTOQUE,              ');
      Module.Query.Sql.Add('      :TPMOV_CONFERIR,                ');
      Module.Query.Sql.Add('      :TPMOV_MODELONF,                ');
      Module.Query.Sql.Add('      :TPMOV_LIBERAR,                 ');
      Module.Query.Sql.Add('      :TPMOV_CDPRODUTO,               ');
      Module.Query.Sql.Add('      :TPMOV_DIGVENDEDOR,             ');
      Module.Query.Sql.Add('      :TPMOV_POSFINANCEIRA,           ');
      Module.Query.Sql.Add('      :TPMOV_CHEQUEPRE,               ');
      Module.Query.Sql.Add('      :TPMOV_DIGPRECOS,               ');
      Module.Query.Sql.Add('      :TPMOV_DIGUNIDADE,              ');
      Module.Query.Sql.Add('      :TPMOV_ACIMALIMITE,             ');
      Module.Query.Sql.Add('      :TPMOV_SENHALIMITE,             ');
      Module.Query.Sql.Add('      :TPMOV_DOCFISCAL,               ');
      Module.Query.Sql.Add('      :TPMOV_TPPRODUTO,               ');
      Module.Query.Sql.Add('      :TPMOV_ALMOXARIFADO,            ');
      Module.Query.Sql.Add('      :TPMOV_DIGDATA_ES,              ');
      Module.Query.Sql.Add('      :TPMOV_DIGOBS_NF,               ');
      Module.Query.Sql.Add('      :TPMOV_DIG_PEDCLIFOR,           ');
      Module.Query.Sql.Add('      :TPMOV_DIG_DTVENCE,             ');
      Module.Query.Sql.Add('      :TPMOV_DIG_FORMAPG,             ');
      Module.Query.Sql.Add('      :TPMOV_DIG_ESPECIE,             ');
      Module.Query.Sql.Add('      :TPMOV_DIG_QTDEITENS,           ');
      Module.Query.Sql.Add('      :TPMOV_CDINTERFACE,             ');
      Module.Query.Sql.Add('      :TPMOV_NOMEFANTASIA,            ');
      Module.Query.Sql.Add('      :TPMOV_ITEMDUPLICADO,           ');
      Module.Query.Sql.Add('      :TPMOV_TPMOVDESTINO,            ');
      Module.Query.Sql.Add('      :TPMOV_CDMENSAGEM,              ');
      Module.Query.Sql.Add('      :TPMOV_NMINTERFACE,             ');
      Module.Query.Sql.Add('      :TPMOV_CUBAR,                   ');
      Module.Query.Sql.Add('      :TPMOV_DEVOLUCAO,               ');
      Module.Query.Sql.Add('      :TPMOV_DEVOLUCAOSN,             ');
      Module.Query.Sql.Add('      :TPMOV_CONSTA_REL_VENDA,        ');
      Module.Query.Sql.Add('      :TPMOV_CODIGO,                  ');
      Module.Query.Sql.Add('      :TPMOV_CONSTAEMROTEIRO,         ');
      Module.Query.Sql.Add('      :TPMOV_PRECOZERO,               ');
      Module.Query.Sql.Add('      :TPMOV_EXIGECLASSIFICACAOPROD,  ');
      Module.Query.Sql.Add('      :TPMOV_PRECOMINIMO,             ');
      Module.Query.Sql.Add('      :TPMOV_MOSTRAFPGCLIENTE,        ');
      Module.Query.Sql.Add('      :TPMOV_MOSTRAPEDIDOREPETIDO,    ');
      Module.Query.Sql.Add('      :TPMOV_EXIGEEMPENHO,            ');
      Module.Query.Sql.Add('      :TPMOV_FRETE,                   ');
      Module.Query.Sql.Add('      :TPMOV_BAIXAQUANTITATIVO,       ');
      Module.Query.Sql.Add('      :TPMOV_SUGEREDATACORRENTE,      ');
      Module.Query.Sql.Add('      :TPMOV_CLIENTEFATURA,           ');
      Module.Query.Sql.Add('      :TPMOV_CLIENTEENTREGA,          ');
      Module.Query.Sql.Add('      :TPMOV_FORMAPGTO,               ');
      Module.Query.Sql.Add('      :TPMOV_SALDOCONTRATUAL,         ');
      Module.Query.Sql.Add('      :TPMOV_COMPROVANTETESTEARQUIVO, ');
      Module.Query.Sql.Add('      :TPMOV_CONDICAOPGTO,            ');
      Module.Query.Sql.Add('      :TPMOV_LINHASAPOSCOMPROVANTE,   ');
      Module.Query.Sql.Add('      :TPMOV_NUMEROLINHASCUPOM,       ');
      Module.Query.Sql.Add('      :TPMOV_TRATARTROCO,             ');
      Module.Query.Sql.Add('      :TPMOV_CLIENTEDEFAULT,          ');
      Module.Query.Sql.Add('      :TPMOV_PEDIRCLIENTE,            ');
      Module.Query.Sql.Add('      :TPMOV_PEDIDOPENDENTEPRECO,     ');
      Module.Query.Sql.Add('      :TPMOV_ENTREGA,                 ');
      Module.Query.Sql.Add('      :TPMOV_DESCONTO,                ');
      Module.Query.Sql.Add('      :TPMOV_TABPRECOTPMOVFPG,        ');
      Module.Query.Sql.Add('      :TPMOV_IMPRIMERECEBIDOEM,       ');
      Module.Query.Sql.Add('      :TPMOV_PERGUNTASEIMPRIMENOTA,   ');
      Module.Query.Sql.Add('      :TPMOV_GRAVACOMF10,             ');
      Module.Query.Sql.Add('      :TPMOV_SUGEREQTDE1,             ');
      Module.Query.Sql.Add('      :TPMOV_DADOSDOTRANSPORTADOR,    ');
      Module.Query.Sql.Add('      :TPMOV_SUGEREULTIMOVENDEDOR,    ');
      Module.Query.Sql.Add('      :TPMOV_ASSOCIAVENDEDORAOCLIENTE,');
      Module.Query.Sql.Add('      :TPMOV_VALORDOCUSTOMEDIO,       ');
      Module.Query.Sql.Add('      :TPMOV_SENHAALTERARPRECO,       ');
      Module.Query.Sql.Add('      :TPMOV_IMPRIMIRCONDICAOPAGAMENT,');
      Module.Query.Sql.Add('      :TPMOV_MODELOBOLETO,            ');
      Module.Query.Sql.Add('      :TPMOV_NATUREZAFINANCEIRA,      ');
      Module.Query.Sql.Add('      :TPMOV_COMPROVANTE,             ');
      Module.Query.Sql.Add('      :TPMOV_IMPRIMEBOLETOAPOSPEDIDO, ');
      Module.Query.Sql.Add('      :TPMOV_PEDESEQUENCIALBOLETO,    ');
      Module.Query.Sql.Add('      :TPMOV_TABELAPRECOS,            ');
      Module.Query.Sql.Add('      :TPMOV_PRECOPRODUTO,            ');
      Module.Query.Sql.Add('      :TPMOV_HORARIO,                 ');
      Module.Query.Sql.Add('      :TPMOV_MARGEMESQUERDA,          ');
      Module.Query.Sql.Add('      :TPMOV_ALIQ_SUBST_TRIBUTARIA,   ');
      Module.Query.Sql.Add('      :TPMOV_ALIQ_ICMS1,              ');
      Module.Query.Sql.Add('      :TPMOV_ALIQ_ICMS2,              ');
      Module.Query.Sql.Add('      :TPMOV_ALIQ_FOMEZERO,           ');
      Module.Query.Sql.Add('      :TPMOV_CLI_CDROTA,              ');
      Module.Query.Sql.Add('      :TPMOV_COFINS,                  ');
      Module.Query.Sql.Add('      :TPMOV_PIS,                     ');
      Module.Query.Sql.Add('      :TPMOV_IPI,                     ');
      Module.Query.Sql.Add('      :TPMOV_SUBSTRIB,                ');
      Module.Query.Sql.Add('      :TPMOV_SENHAEXCLUIRITEM,        ');
      Module.Query.Sql.Add('      :TPMOV_VAREJOPARAATACADO,       ');
      Module.Query.Sql.Add('      :TPMOV_SOMENTEPRECOESPECIAL,    ');
      Module.Query.Sql.Add('      :TPMOV_1_CLI_DEV_BLOQUEIA_TODOS,');
      Module.Query.Sql.Add('      :TPMOV_MARGEMCOMISSAO,          ');
      Module.Query.Sql.Add('      :TPMOV_DIGTALAO,                ');
      Module.Query.Sql.Add('      :TPMOV_CONSIDERARFRETE,         ');
      Module.Query.Sql.Add('      :TPMOV_FRETEPORCONTA,           ');
      Module.Query.Sql.Add('      :TPMOV_EXIGE_PROD_TPPRODUTO,    ');
      Module.Query.Sql.Add('      :TPMOV_SAIRCOMITENSNATELA,      ');
      Module.Query.Sql.Add('      :TPMOV_INFORMARNOMECLIENTE,     ');
      Module.Query.Sql.Add('      :TPMOV_PRECOMPRA,               ');
      Module.Query.Sql.Add('      :TPMOV_ORDEMITENSPEDIDO,        ');
      Module.Query.Sql.Add('      :TPMOV_IMPRIMEDTVENCE,          ');
      Module.Query.Sql.Add('      :TPMOV_GERALUCRO,               ');
      Module.Query.Sql.Add('      :TPMOV_TPMOVFISCAL,             ');
      Module.Query.Sql.Add('      :TPMOV_PERGUNTASEIMPRIMEPEDIDO, ');
      Module.Query.Sql.Add('      :TPMOV_IMPRIMEPEDIDONVIAS,      ');
      Module.Query.Sql.Add('      :TPMOV_ALTERARNOTAPAGA,         ');
      Module.Query.Sql.Add('      :TPMOV_NAOVENDERABAIXODOCUSTO,  ');
      Module.Query.Sql.Add('      :TPMOV_SENHAALTERARPRECOUSUARIO,');
      Module.Query.Sql.Add('      :TPMOV_NFAPOSPEDIDO,            ');
      Module.Query.Sql.Add('      :TPMOV_EFETIVARPREPEDIDO,       ');
      Module.Query.Sql.Add('      :TPMOV_IMPEDIRVENDAPORATRASO,   ');
      Module.Query.Sql.Add('      :TPMOV_NATUREZAOPSUBTRIB,       ');
      Module.Query.Sql.Add('      :TPMOV_MODELODOCFISCAL,         ');
      Module.Query.Sql.Add('      :TPMOV_EMITENTEDOCFISCAL,       ');
      Module.Query.Sql.Add('      :TPMOV_GERACREDITODEBITOICMS,   ');
      Module.Query.Sql.Add('      :TPMOV_TIPOANTECIPACAOTRIBUTARI,');
      Module.Query.Sql.Add('      :TPMOV_FINALIDADE,              ');
      Module.Query.Sql.Add('      :TPMOV_SOMARICMSAOTOTALDANOTA,  ');
      Module.Query.Sql.Add('      :TPMOV_SOMARIPIAOTOTALDANOTA,   ');
      Module.Query.Sql.Add('      :TPMOV_MANTEROCAIXAAOALTERAR,   ');
      Module.Query.Sql.Add('      :TPMOV_VENDA,                   ');
      Module.Query.Sql.Add('      :TPMOV_SELECIONARIMPRESSORA,    ');
      Module.Query.Sql.Add('      :TPMOV_MOMENTOIMPBOLETO,        ');
      Module.Query.Sql.Add('      :TPMOV_MOSTRARFATURAS,          ');
      Module.Query.Sql.Add('      :TPMOV_DESTACARICMS,            ');
      Module.Query.Sql.Add('      :TPMOV_USARENDERECO,            ');
      Module.Query.Sql.Add('      :TPMOV_GERADAV,                 ');
      Module.Query.Sql.Add('      :TPMOV_NATUREZADAOPERACAO,      ');
      Module.Query.Sql.Add('      :TPMOV_CSTPRODPED,              ');
      Module.Query.Sql.Add('      :TPMOV_NFE_IDDEST,              ');
      Module.Query.Sql.Add('      :TPMOV_NFE_TPIMP,               ');
      Module.Query.Sql.Add('      :TPMOV_NFE_B06_10_MOD,          ');
      Module.Query.Sql.Add('      :TPMOV_PORTAIMPRESSSORA,        ');
      Module.Query.Sql.Add('      :TPMOV_INDPRES,                 ');
      Module.Query.Sql.Add('      :TPMOV_BA07_MOD,                ');
      Module.Query.Sql.Add('      :TPMOV_FUNDOCOMBATEPOBREZA,     ');
      Module.Query.Sql.Add('      :TPMOV_DESC_PROD_PROMO,         ');
      Module.Query.Sql.Add('      :TPMOV_PRECOFIXO,               ');
      Module.Query.Sql.Add('      :TPMOV_2PRECOS,                 ');
      Module.Query.Sql.Add('      :TPMOV_IMPRIMEPREVIEW,          ');
      Module.Query.Sql.Add('      :TPMOV_NFCE_VEICTRANSP,         ');
      Module.Query.Sql.Add('      :TPMOV_FINANCEIROCLIFOR,        ');
      Module.Query.Sql.Add('      :TPMOV_USARBRENANFE,            ');
      Module.Query.Sql.Add('      :TPMOV_PRODSERV)                ');
      Module.Query.ParamByName('TPMOV_DESCRICAO' ).AsString := 'Venda NFe';
      Module.Query.ParamByName('TPMOV_ES'        ).AsString := 'S';
      Module.Query.ParamByName('TPMOV_CLIFOR'    ).AsString := 'C';
      Module.Query.ParamByName('TPMOV_EMITENF'   ).AsString := 'S';
      Module.Query.ParamByName('TPMOV_SERIENF'   ).AsString := '1';
      Module.Query.ParamByName('TPMOV_CONTAS'    ).AsString := 'R';
      Module.Query.ParamByName('TPMOV_MOVIMENTO' ).AsString := 'S';
      Module.Query.ParamByName('TPMOV_COMISSAO'  ).AsString := 'N';
      Module.Query.ParamByName('TPMOV_LANCAMENTO').AsString := 'S';
      Module.Query.ParamByName('TPMOV_EXPORTA'   ).AsString := 'N';
      Module.Query.ParamByName('TPMOV_COMPROMETE').AsString := 'S';
      Module.Query.ParamByName('TPMOV_CUSTOMEDIO').AsString := 'N';
      Module.Query.ParamByName('TPMOV_TABPRECOS' ).AsString := 'N';
      Module.Query.ParamByName('TPMOV_SEMESTOQUE').AsString := 'N';
      Module.Query.ParamByName('TPMOV_EXPEDICAO' ).AsString := 'N';
      Module.Query.ParamByName('TPMOV_INVENTARIO').AsString := 'N';
      Module.Query.ParamByName('TPMOV_CUSTOREPOSICAO' ).AsString := 'N';
      Module.Query.ParamByName('TPMOV_SEPARACAO'      ).AsString := 'N';
      Module.Query.ParamByName('TPMOV_CREDITO'        ).AsString := 'N';
      Module.Query.ParamByName('TPMOV_FICHAFIN'       ).AsString := 'N';
      Module.Query.ParamByName('TPMOV_VINCULANF'      ).AsString := 'N';
      Module.Query.ParamByName('TPMOV_ATIVA'          ).AsString := 'S';
      Module.Query.ParamByName('TPMOV_TRANSFERENCIA'  ).AsString := 'N';
      Module.Query.ParamByName('TPMOV_NATUREZAOP'     ).AsString := 'VENDA DE MERCADORIA';
      Module.Query.ParamByName('TPMOV_COMOAPLICARICMS').AsString := 'P';
      Module.Query.ParamByName('TPMOV_SUBSTITUIITENS' ).AsString := 'N';
      Module.Query.ParamByName('TPMOV_MOVESTOQUE'     ).AsString := 'S';
      Module.Query.ParamByName('TPMOV_CONFERIR'       ).AsString := 'N';
      Module.Query.ParamByName('TPMOV_MODELONF'       ).AsString := '1';
      Module.Query.ParamByName('TPMOV_LIBERAR'        ).AsString := 'N';
      Module.Query.ParamByName('TPMOV_CDPRODUTO'      ).AsString := 'S';
      Module.Query.ParamByName('TPMOV_DIGVENDEDOR'    ).AsString := 'N';
      Module.Query.ParamByName('TPMOV_POSFINANCEIRA'  ).AsString := 'N';
      Module.Query.ParamByName('TPMOV_CHEQUEPRE'      ).AsString := 'N';
      Module.Query.ParamByName('TPMOV_DIGPRECOS'      ).AsString := 'N';
      Module.Query.ParamByName('TPMOV_DIGUNIDADE'     ).AsString := 'N';
      Module.Query.ParamByName('TPMOV_ACIMALIMITE'    ).AsString := 'N';
      Module.Query.ParamByName('TPMOV_SENHALIMITE'    ).AsString := 'N';
      Module.Query.ParamByName('TPMOV_DOCFISCAL'      ).AsString := 'N';
      Module.Query.ParamByName('TPMOV_TPPRODUTO'      ).AsString := 'N';
      Module.Query.ParamByName('TPMOV_ALMOXARIFADO'   ).AsString := '';
      Module.Query.ParamByName('TPMOV_DIGDATA_ES'     ).AsString := 'N';
      Module.Query.ParamByName('TPMOV_DIGOBS_NF'      ).AsString := 'N';
      Module.Query.ParamByName('TPMOV_DIG_PEDCLIFOR'  ).AsString := 'N';
      Module.Query.ParamByName('TPMOV_DIG_DTVENCE'    ).AsString := 'N';
      Module.Query.ParamByName('TPMOV_DIG_FORMAPG'    ).AsString := 'N';
      Module.Query.ParamByName('TPMOV_DIG_ESPECIE'    ).AsString := '';
      Module.Query.ParamByName('TPMOV_DIG_QTDEITENS'  ).AsString := 'N';
      Module.Query.ParamByName('TPMOV_CDINTERFACE'    ).AsString := '';
      Module.Query.ParamByName('TPMOV_NOMEFANTASIA'   ).AsString := 'N';
      Module.Query.ParamByName('TPMOV_ITEMDUPLICADO'  ).AsString := 'S';
      Module.Query.ParamByName('TPMOV_TPMOVDESTINO'   ).AsString := '';
      Module.Query.ParamByName('TPMOV_CDMENSAGEM'     ).AsString := '';
      Module.Query.ParamByName('TPMOV_NMINTERFACE'    ).AsString := '';
      Module.Query.ParamByName('TPMOV_CUBAR'          ).AsString := 'N';
      Module.Query.ParamByName('TPMOV_DEVOLUCAO'      ).AsString := 'N';
      Module.Query.ParamByName('TPMOV_DEVOLUCAOSN'    ).AsString := 'N';
      Module.Query.ParamByName('TPMOV_CONSTA_REL_VENDA').AsString := 'S';
      Module.Query.ParamByName('TPMOV_CODIGO'          ).AsString := 'V';
      Module.Query.ParamByName('TPMOV_CONSTAEMROTEIRO' ).AsString := 'N';
      Module.Query.ParamByName('TPMOV_PRECOZERO'       ).AsString := 'N';
      Module.Query.ParamByName('TPMOV_EXIGECLASSIFICACAOPROD').AsString := 'N';
      Module.Query.ParamByName('TPMOV_PRECOMINIMO'           ).AsString := 'N';
      Module.Query.ParamByName('TPMOV_MOSTRAFPGCLIENTE'      ).AsString := 'N';
      Module.Query.ParamByName('TPMOV_MOSTRAPEDIDOREPETIDO'  ).AsString := 'N';
      Module.Query.ParamByName('TPMOV_EXIGEEMPENHO'          ).AsString := 'N';
      Module.Query.ParamByName('TPMOV_FRETE'                 ).AsString := 'D';
      Module.Query.ParamByName('TPMOV_BAIXAQUANTITATIVO'     ).AsString := 'N';
      Module.Query.ParamByName('TPMOV_SUGEREDATACORRENTE'    ).AsString := 'S';
      Module.Query.ParamByName('TPMOV_CLIENTEFATURA'         ).AsString := 'N';
      Module.Query.ParamByName('TPMOV_CLIENTEENTREGA'        ).AsString := 'N';
      Module.Query.ParamByName('TPMOV_FORMAPGTO'             ).AsString := 'S';
      Module.Query.ParamByName('TPMOV_SALDOCONTRATUAL'       ).AsString := 'N';
      Module.Query.ParamByName('TPMOV_COMPROVANTETESTEARQUIVO').AsString := 'N';
      Module.Query.ParamByName('TPMOV_CONDICAOPGTO'           ).AsString := 'N';
      Module.Query.ParamByName('TPMOV_LINHASAPOSCOMPROVANTE'  ).AsInteger:=0;
      Module.Query.ParamByName('TPMOV_NUMEROLINHASCUPOM'      ).AsInteger:=0;
      Module.Query.ParamByName('TPMOV_TRATARTROCO'            ).AsString := 'N';
      Module.Query.ParamByName('TPMOV_CLIENTEDEFAULT'         ).AsString := '';
      Module.Query.ParamByName('TPMOV_PEDIRCLIENTE'           ).AsString := 'S';
      Module.Query.ParamByName('TPMOV_PEDIDOPENDENTEPRECO'    ).AsString := 'N';
      Module.Query.ParamByName('TPMOV_ENTREGA'                ).AsString := 'N';
      Module.Query.ParamByName('TPMOV_DESCONTO'               ).AsFloat  := 0;
      Module.Query.ParamByName('TPMOV_TABPRECOTPMOVFPG'       ).AsString := '';
      Module.Query.ParamByName('TPMOV_IMPRIMERECEBIDOEM'      ).AsString := 'N';
      Module.Query.ParamByName('TPMOV_PERGUNTASEIMPRIMENOTA'  ).AsString := 'N';
      Module.Query.ParamByName('TPMOV_GRAVACOMF10'            ).AsString := 'N';
      Module.Query.ParamByName('TPMOV_SUGEREQTDE1'            ).AsString := 'N';
      Module.Query.ParamByName('TPMOV_DADOSDOTRANSPORTADOR'   ).AsString := 'N';
      Module.Query.ParamByName('TPMOV_SUGEREULTIMOVENDEDOR'   ).AsString := 'N';
      Module.Query.ParamByName('TPMOV_ASSOCIAVENDEDORAOCLIENTE').AsString := 'N';
      Module.Query.ParamByName('TPMOV_VALORDOCUSTOMEDIO'       ).AsString := 'N';
      Module.Query.ParamByName('TPMOV_SENHAALTERARPRECO'       ).AsString := '';
      Module.Query.ParamByName('TPMOV_IMPRIMIRCONDICAOPAGAMENT').AsString := 'N';
      Module.Query.ParamByName('TPMOV_MODELOBOLETO'            ).AsString := '';
      Module.Query.ParamByName('TPMOV_NATUREZAFINANCEIRA'      ).AsString := '';
      Module.Query.ParamByName('TPMOV_COMPROVANTE'             ).AsInteger:= 0;
      Module.Query.ParamByName('TPMOV_IMPRIMEBOLETOAPOSPEDIDO' ).AsInteger:= 0;
      Module.Query.ParamByName('TPMOV_PEDESEQUENCIALBOLETO'    ).AsString := 'N';
      Module.Query.ParamByName('TPMOV_TABELAPRECOS'            ).AsString := '';
      Module.Query.ParamByName('TPMOV_PRECOPRODUTO'            ).AsInteger:= 0;
      Module.Query.ParamByName('TPMOV_HORARIO'                 ).AsString := 'N';
      Module.Query.ParamByName('TPMOV_MARGEMESQUERDA'          ).AsInteger:= 0;
      Module.Query.ParamByName('TPMOV_ALIQ_SUBST_TRIBUTARIA'   ).AsFloat  := 0;
      Module.Query.ParamByName('TPMOV_ALIQ_ICMS1'              ).AsFloat  := 0;
      Module.Query.ParamByName('TPMOV_ALIQ_ICMS2'              ).AsFloat  := 0;
      Module.Query.ParamByName('TPMOV_ALIQ_FOMEZERO'           ).AsFloat  := 0;
      Module.Query.ParamByName('TPMOV_CLI_CDROTA'              ).AsString := 'N';
      Module.Query.ParamByName('TPMOV_COFINS'                  ).AsInteger:= 0;
      Module.Query.ParamByName('TPMOV_PIS'                     ).AsInteger:= 0;
      Module.Query.ParamByName('TPMOV_IPI'                     ).AsInteger:= 0;
      Module.Query.ParamByName('TPMOV_SUBSTRIB'                ).AsInteger:= 0;
      Module.Query.ParamByName('TPMOV_SENHAEXCLUIRITEM'        ).AsString := '';
      Module.Query.ParamByName('TPMOV_VAREJOPARAATACADO'       ).AsInteger:= 0;
      Module.Query.ParamByName('TPMOV_SOMENTEPRECOESPECIAL'    ).AsString := 'N';
      Module.Query.ParamByName('TPMOV_1_CLI_DEV_BLOQUEIA_TODOS').AsString := 'N';
      Module.Query.ParamByName('TPMOV_MARGEMCOMISSAO'          ).AsFloat  := 0;
      Module.Query.ParamByName('TPMOV_DIGTALAO'                ).AsInteger:= 0;
      Module.Query.ParamByName('TPMOV_CONSIDERARFRETE'         ).AsString := '';
      Module.Query.ParamByName('TPMOV_FRETEPORCONTA'           ).AsInteger:= 0;
      Module.Query.ParamByName('TPMOV_EXIGE_PROD_TPPRODUTO'    ).AsString := 'N';
      Module.Query.ParamByName('TPMOV_SAIRCOMITENSNATELA'      ).AsString := 'N';
      Module.Query.ParamByName('TPMOV_INFORMARNOMECLIENTE'     ).AsString := 'N';
      Module.Query.ParamByName('TPMOV_PRECOMPRA'               ).AsString := 'N';
      Module.Query.ParamByName('TPMOV_ORDEMITENSPEDIDO'        ).AsInteger:= 0;
      Module.Query.ParamByName('TPMOV_IMPRIMEDTVENCE'          ).AsString := 'N';
      Module.Query.ParamByName('TPMOV_GERALUCRO'               ).AsString := 'S';
      Module.Query.ParamByName('TPMOV_TPMOVFISCAL'             ).AsString := '';
      Module.Query.ParamByName('TPMOV_PERGUNTASEIMPRIMEPEDIDO' ).AsString := 'N';
      Module.Query.ParamByName('TPMOV_IMPRIMEPEDIDONVIAS'      ).AsInteger:= 0;
      Module.Query.ParamByName('TPMOV_ALTERARNOTAPAGA'         ).AsInteger:= 0;
      Module.Query.ParamByName('TPMOV_NAOVENDERABAIXODOCUSTO'  ).AsInteger:= 0;
      Module.Query.ParamByName('TPMOV_SENHAALTERARPRECOUSUARIO').AsString := '';
      Module.Query.ParamByName('TPMOV_NFAPOSPEDIDO'            ).AsString := 'N';
      Module.Query.ParamByName('TPMOV_EFETIVARPREPEDIDO'       ).AsString := '';
      Module.Query.ParamByName('TPMOV_IMPEDIRVENDAPORATRASO'   ).AsString := 'N';
      Module.Query.ParamByName('TPMOV_NATUREZAOPSUBTRIB'       ).AsString := '';
      Module.Query.ParamByName('TPMOV_MODELODOCFISCAL'         ).AsInteger:= 0;
      Module.Query.ParamByName('TPMOV_EMITENTEDOCFISCAL'       ).AsInteger:= 0;
      Module.Query.ParamByName('TPMOV_GERACREDITODEBITOICMS'   ).AsInteger:= 0;
      Module.Query.ParamByName('TPMOV_TIPOANTECIPACAOTRIBUTARI').AsInteger:= 0;
      Module.Query.ParamByName('TPMOV_FINALIDADE'              ).AsInteger:= 0;
      Module.Query.ParamByName('TPMOV_SOMARICMSAOTOTALDANOTA'  ).AsString := 'N';
      Module.Query.ParamByName('TPMOV_SOMARIPIAOTOTALDANOTA'   ).AsString := 'N';
      Module.Query.ParamByName('TPMOV_MANTEROCAIXAAOALTERAR'   ).AsString := 'N';
      Module.Query.ParamByName('TPMOV_VENDA'                   ).AsInteger:= 0;
      Module.Query.ParamByName('TPMOV_SELECIONARIMPRESSORA'    ).AsInteger:= 0;
      Module.Query.ParamByName('TPMOV_MOMENTOIMPBOLETO'        ).AsInteger:= 0;
      Module.Query.ParamByName('TPMOV_MOSTRARFATURAS'          ).AsInteger:= 0;
      Module.Query.ParamByName('TPMOV_DESTACARICMS'            ).AsInteger:= 0;
      Module.Query.ParamByName('TPMOV_USARENDERECO'            ).AsInteger:= 0;
      Module.Query.ParamByName('TPMOV_GERADAV'                 ).AsString := 'N';
      Module.Query.ParamByName('TPMOV_NATUREZADAOPERACAO'      ).AsString := 'VENDA DE MERCADORIA';
      Module.Query.ParamByName('TPMOV_CSTPRODPED'              ).AsInteger:= 0;
      Module.Query.ParamByName('TPMOV_NFE_IDDEST'              ).AsInteger:= 0;
      Module.Query.ParamByName('TPMOV_NFE_TPIMP'               ).AsInteger:= 0;
      Module.Query.ParamByName('TPMOV_NFE_B06_10_MOD'          ).AsInteger:= 0;
      Module.Query.ParamByName('TPMOV_PORTAIMPRESSSORA'        ).AsString := '';
      Module.Query.ParamByName('TPMOV_INDPRES'                 ).AsInteger:= 0;
      Module.Query.ParamByName('TPMOV_BA07_MOD'                ).AsInteger:= 0;
      Module.Query.ParamByName('TPMOV_FUNDOCOMBATEPOBREZA'     ).AsInteger:= 0;
      Module.Query.ParamByName('TPMOV_DESC_PROD_PROMO'         ).AsInteger:= 0;
      Module.Query.ParamByName('TPMOV_PRECOFIXO'               ).AsInteger:= 0;
      Module.Query.ParamByName('TPMOV_2PRECOS'                 ).AsInteger:= 0;
      Module.Query.ParamByName('TPMOV_IMPRIMEPREVIEW'          ).AsInteger:= 0;
      Module.Query.ParamByName('TPMOV_NFCE_VEICTRANSP'         ).AsInteger:= 0;
      Module.Query.ParamByName('TPMOV_FINANCEIROCLIFOR'        ).AsInteger:= 0;
      Module.Query.ParamByName('TPMOV_USARBRENANFE'            ).AsInteger:= 0;
      Module.Query.ParamByName('TPMOV_PRODSERV'                ).AsInteger:= 0;
      Module.Query.ExecSql;
    end;
    Executar('UPDATE TIPOMOVIMENTO_TPMOV SET TPMOV_NATUREZADAOPERACAO = ''VENDA DE MERCADORIA'' WHERE TPMOV_CODIGO=''V'' ');
    // Incluir coluna venda_natureza_operacao na tabela de vendas
    if fNaoAtualizado('Incluida natureza_operacao na tabela de vendas...') then
       Executar('ALTER TABLE VENDA ADD venda_natureza_operacao INTEGER NULL');
    // incluir coluna para tipo de venda
    if fNaoAtualizado('Incluido venda_tipo na tabela de vendas...') then
    begin
       Executar('ALTER TABLE VENDA ADD venda_tipo INTEGER NULL');
       Executar('UPDATE VENDA set venda_tipo = 1 where venda_tipo is NULL');
    end;
    // incluir coluna CFOP na tabela venda_item
    if fNaoAtualizado('Incluido CFOP na tabela venda_item...') then
    begin
       Executar('ALTER TABLE VENDA_ITEM ADD CFOP INTEGER NULL');
       Executar('UPDATE VENDA_ITEM set CFOP = 5102 where CFOP is NULL');
    end;
    // Alterada a coluna ESTADO da tabela Natureza_Operacao |
    // para aceitar EXTERIOR                                |
    if fNaoAtualizado('Incluida opção EXTERIOR na Natureza de Operacao...') then
    begin
       Executar('ALTER TABLE natureza_operacao ADD ESTADO_AUX ENUM(''DENTRO'',''FORA'') NULL');
       Executar('UPDATE natureza_operacao SET ESTADO_AUX = ESTADO');
       Executar('ALTER TABLE natureza_operacao DROP COLUMN ESTADO');
       Executar('ALTER TABLE natureza_operacao ADD ESTADO ENUM(''DENTRO'',''FORA'',''EXTERIOR'') NULL');
       Executar('UPDATE natureza_operacao SET ESTADO = ESTADO_AUX');
       Executar('ALTER TABLE natureza_operacao DROP COLUMN ESTADO_AUX');
    end;
    // 02/04/2020
    if fNaoAtualizado('Incluido tratamento de Produtor Rural...') then
    begin
       Executar('ALTER TABLE VENDA ADD PED_NFREFERENCIA_PRODUTOR_RURAL INTEGER NULL DEFAULT 0');
       Executar('UPDATE VENDA SET PED_NFREFERENCIA_PRODUTOR_RURAL = 0 WHERE PED_NFREFERENCIA_PRODUTOR_RURAL IS NULL');
    end;
    if fNaoAtualizado('Incluido tratamento de NFe Referenciada...') then
    begin
    //VENDA
       // Venda: NRO DA NFE REF
       Executar('ALTER TABLE VENDA ADD PED_NFREFERENCIA_UF INTEGER NULL DEFAULT 0');
       Executar('UPDATE VENDA SET PED_NFREFERENCIA_UF = 0 WHERE PED_NFREFERENCIA_UF IS NULL');
       // Venda: DT EMISSAO
       Executar('ALTER TABLE VENDA ADD PED_NFREFERENCIA_DTEMISSAO DATETIME NULL');
       // Venda: CNPJ/CPF DO EMISSOR
       Executar('ALTER TABLE VENDA ADD PED_NFREFERENCIA_CNPJ VARCHAR(14) NULL');
       Executar('ALTER TABLE VENDA ADD PED_NFREFERENCIA_CPF  VARCHAR(11) NULL');
       // Venda: IE do EMISSOR
       Executar('ALTER TABLE VENDA ADD PED_NFREFERENCIA_IE VARCHAR(14) NULL');
       // Venda: Modelo da NFe Ref
       Executar('ALTER TABLE VENDA ADD PED_NFREFERENCIA_MODELO INTEGER NULL');
       // Venda: Serie
       Executar('ALTER TABLE VENDA ADD PED_NFREFERENCIA_SERIE INTEGER NULL');
       Executar('UPDATE VENDA SET PED_NFREFERENCIA_SERIE = 0 WHERE PED_NFREFERENCIA_SERIE IS NULL');
       // Venda: Chave Cte
       Executar('ALTER TABLE VENDA ADD PED_NFREFERENCIA_REFCTE VARCHAR(40) NULL');
       // Venda: Cupom fiscal (CF) Referenciado
       Executar('ALTER TABLE VENDA ADD PED_NFREFERENCIA_ECF_NECF VARCHAR(03) NULL DEFAULT ''000'' ');
       Executar('UPDATE VENDA SET PED_NFREFERENCIA_ECF_NECF = ''000'' WHERE PED_NFREFERENCIA_ECF_NECF IS NULL');
       // Venda: (CF) modelo
       Executar('ALTER TABLE VENDA ADD PED_NFREFERENCIA_ECF_Modelo INTEGER NULL');
       Executar('UPDATE VENDA SET PED_NFREFERENCIA_ECF_Modelo = 0 WHERE PED_NFREFERENCIA_ECF_Modelo IS NULL');
       // Venda: COO - Contador de Ordem de Operacao do (CF)
       Executar('ALTER TABLE VENDA ADD PED_NFREFERENCIA_ECF_NCOO VARCHAR(06) NULL');

    // EMPRESA
       // Empresa: Se a Empresa é contribuinte do ICMS
       Executar('ALTER TABLE empresa ADD CONTRIBUINTE_ICMS ENUM(''N'',''S'') NULL DEFAULT NULL COMMENT ''se é contribuinte do ICMS'' ');

       // Empresa : Se deve tratar ICMS de Diferimento (51)
       Executar('ALTER TABLE empresa ADD Tratar_ICMS51 INTEGER NULL DEFAULT 0 COMMENT ''Se deve tratar ICMS de Diferimento (CST 51)'' ');
       Executar('UPDATE empresa SET Tratar_ICMS51 = 0 WHERE Tratar_ICMS51 IS NULL');

    // CLIENTE
       // Cliente : Inscricao SUFRAMA
       Executar('ALTER TABLE CLIENTE ADD SUFRAMA VARCHAR(10) NULL COMMENT ''Nro da Inscricao no SUFRAMA'' ');
       // Cliente : email
       Executar('ALTER TABLE CLIENTE ADD EMAIL VARCHAR(60) NULL COMMENT ''E-mail do cliente'' ');

       //   // Produto: Se o produto é importado
       //   Executar('ALTER TABLE produto ADD NFe_importado INTEGER NULL DEFAULT 0 COMMENT ''Se o produto é importado (0) ou nacional (1)''');
       //   Executar('UPDATE produto SET NFe_importado = 0 WHERE NFe_importado IS NULL');

       // Produto: Número do Documento de Importação DI/DSI/DA
       Executar('ALTER TABLE produto ADD NFe_nDI VARCHAR(10) COMMENT ''Nfe: Número do Documento de Importação DI/DSI/DA''');

     end;
     if fNaoAtualizado('Produto: Data de registro do Documento de Importação dDI') then
       Executar('ALTER TABLE produto ADD NFe_dDI DATETIME COMMENT ''Nfe: Data de registro do Documento de Importação DI/DSI/DA''');

     if fNaoAtualizado('Produto: Local de Desembaraço') then
       Executar('ALTER TABLE produto ADD NFe_xLocDesemb VARCHAR(60) COMMENT ''Nfe: Local de Desembaraço''');

     if fNaoAtualizado('Produto: Sigla da UF onde ocorreu o Desembaraço Aduaneiro') then
       Executar('ALTER TABLE produto ADD NFe_UFDesemb VARCHAR(2) COMMENT ''Nfe: UF onde ocorreu o Desembaraço Aduaneiro''');

     if fNaoAtualizado('Produto: Data do Desembaraço Aduaneiro') then
       Executar('ALTER TABLE produto ADD NFe_dDesemb DATETIME COMMENT ''Nfe: Data do Desembaraço Aduaneiro''');

     if fNaoAtualizado('Produto: Código do exportador') then
       Executar('ALTER TABLE produto ADD NFe_cExportador VARCHAR(60) COMMENT ''Nfe: Código do exportador''');

     if fNaoAtualizado('Produto: Numero da adição') then
       Executar('ALTER TABLE produto ADD NFe_nAdicao INT(3) COMMENT ''Nfe: Numero da adição''');

     if fNaoAtualizado('Produto: Código do fabricante estrangeiro') then
       Executar('ALTER TABLE produto ADD NFe_cFabricante VARCHAR(60) COMMENT ''Nfe: Código do fabricante estrangeiro''');

     if fNaoAtualizado('Produto: Valor do desconto do item da  DI – adição') then
       Executar('ALTER TABLE produto ADD NFe_vDescDI DECIMAL(10,4) COMMENT ''Nfe: Valor do desconto do item da  DI – adição''');

     if fNaoAtualizado('Produto: Indicador de Veículo Novo') then
     begin
       Executar('ALTER TABLE produto ADD NFe_VeiculoNovo INTEGER COMMENT ''Nf ndicador de Veículo Novo (0-Não)(1-Sim)''');
        Executar('UPDATE produto SET NFe_VeiculoNovo = 0 WHERE NFe_VeiculoNovo IS NULL');
    end;
    if fNaoAtualizado('+Campos NFe...') then
    begin
       // Venda-Item: Veículo - Chassi
       Executar('ALTER TABLE VENDA_ITEM ADD NFe_Veiculo_Chassi VARCHAR(17) NULL COMMENT ''Nfe: (Veículo) Número do Chassi''');

       // Produto: Veículo - Cor - Código
       Executar('ALTER TABLE Produto ADD NFe_Veiculo_Cor_Codigo VARCHAR(4) NULL COMMENT ''Nfe: (Veículo) Cor - código na montadora''');

       // Produto: Veículo - Cor - Descrição
       Executar('ALTER TABLE Produto ADD NFe_Veiculo_Cor_Descricao VARCHAR(40) NULL COMMENT ''Nfe: (Veículo) Cor - descrição''');
       // Produto: Veículo - Potência máxima do motor do veículo em cavalo vapor (CV).
       Executar('ALTER TABLE Produto ADD NFe_Veiculo_Pot VARCHAR(4) NULL COMMENT ''Nfe: (Veículo) Potência motor em cavalo vapor (CV).''');
       // Venda: Veículo - Tipo de Operacao
       Executar('ALTER TABLE VENDA ADD NFe_Veiculo_tpOp INT(1) NULL COMMENT ''Nfe: (Veículo) Tipo de Operacao (1-Concessionária, 2-Fat Direto, 3-Venda Direta, 0-Outros)''');
       // Produto: Veículo - Cilindradas
       Executar('ALTER TABLE Produto ADD NFe_Veiculo_Cilin VARCHAR(4) NULL COMMENT ''Nfe: (Veículo) Cilindradas.''');

    end;
    if fNaoAtualizado('+Campos NFe....') then
    begin
       // Produto: Armamento
       Executar('ALTER TABLE produto ADD NFe_Armamento INTEGER COMMENT ''Nfe: Indicador Armamento (0-Não)(1-Sim)''');
       Executar('UPDATE produto SET NFe_Armamento = 0 WHERE NFe_Armamento IS NULL');
       // Produto: Combustivel
       Executar('ALTER TABLE produto ADD NFe_Combustivel INTEGER COMMENT ''Nfe: Indicador Combustivel (0-Não)(1-Sim)''');
       Executar('UPDATE produto SET NFe_Combustivel = 0 WHERE NFe_Combustivel IS NULL');

       // Produto: ProdutoServico
       //Executar('ALTER TABLE produto ADD NFe_ProdutoServico ENUM(''PRODUTO'',''SERVICO'') DEFAULT (''PRODUTO'') COMMENT ''Nfe: Indicador de Produto ou Servico''');
       //Executar('UPDATE produto SET NFe_ProdutoServico = ''PRODUTO'' WHERE NFe_ProdutoServico IS NULL');
       //**** está em TIPO_ITEM (00-produto e 09-serviço)

       // Produto: modalidade da Base de Cálculo de ICMS
       //          0 : Margem Valor Agregado
       //          1 : Pauta
       //          2 : Preco Tabelado
       //          3 : Valor Operacao
       //          4 : Nenhum
       Executar('ALTER TABLE produto ADD NFe_modBC INTEGER COMMENT ''Nfe: Indicador modalidade de base de cálculo''');
       Executar('UPDATE produto SET NFe_modBC = 0 WHERE NFe_modBC IS NULL');

       // Produto: Modalidade de determinação da BC do ICMS ST
       //       0 – Preço tabelado ou máximo sugerido
       //       1 - Lista Negativa (valor)
       //       2 - Lista Positiva (valor)
       //       3 - Lista Neutra (valor)
       //       4 - Margem Valor Agregado (%)
       //       5 - Pauta (valor)
       Executar('ALTER TABLE produto ADD NFe_modBCST INTEGER COMMENT ''Nfe: Indicador modalidade de base de cálculo da ST''');
       Executar('UPDATE produto SET NFe_modBCST = 0 WHERE NFe_modBCST IS NULL');

       // Produto: Percentual da margem de valor Adicionado do ICMS ST
       Executar('ALTER TABLE produto ADD NFe_pMVAST DECIMAL(6,2) COMMENT ''% da MV Adicionado do ICMS ST''');
       Executar('UPDATE produto SET NFe_pMVAST = 0 WHERE NFe_pMVAST IS NULL');

       { Produto: Motivo da desoneração do ICMS
         0 - Táxi
         1 - Deficiente Físico
         2 - Produtor Agropecuário
         3 - Frotista Locadora
         4 - Diplomático Consular
         5 - Amazônia Livre Comércio (SUFRAMA)
         6 - Suframa
         7 - Venda Órgãos Públicos
         8 - Outros
         9 - Deficiente Condutor
        10 - Deficiente Não Condutor
        11 - Órgão Fomento
        12 - Olimpiada Rio 2016
        13 - Solicitado pelo Fisco
        99 - Não se Aplica
       }
       Executar('ALTER TABLE produto ADD NFe_motDesICMS INTEGER COMMENT ''Indicador Motivo da desoneração do ICMS''');
       Executar('UPDATE produto SET NFe_motDesICMS = 0 WHERE NFe_motDesICMS IS NULL');

       // Produto
       // Ver as opcoes de CODIGO_ORIGEM_MERCADORIA

       //Empresa: CSOSN
       //         000 - Não se Aplica
       //         101 - Tributada pelo Simples Nacional com permissão de crédito.
       //         102 - Tributada pelo Simples Nacional sem permissão de crédito.
       //         103 - Isenção do ICMS  no Simples Nacional para faixa de receita bruta.
       //         201 - Tributada pelo Simples Nacional com permissão de crédito e com cobrança do ICMS por Substituição Tributária
       //         202 - Tributada pelo Simples Nacional sem permissão de crédito e com cobrança do ICMS por Substituição Tributária
       //         203 - Isenção do ICMS nos Simples Nacional para faixa de receita bruta e com cobrança do ICMS por Substituição Tributária (v.2.0)
       //         300 - Imune
       //         400 - Não tributada pelo Simples Nacional (v.2.0) (v.2.0)
       //         500 - ICMS cobrado anteriormente por substituição tributária (substituído) ou por antecipação
       //         900 - Outros
       Executar('ALTER TABLE Empresa ADD NFe_CSOSN varchar(03) COMMENT ''NFe:CSOSN-Codigo do Regime Tributário'' ');

       //Empresa: Alíquota aplicável de cálculo do crédito (Simples Nacional)
       Executar('ALTER TABLE Empresa ADD NFe_ALIQ_CREDITO_ICMS DECIMAL(6,2) COMMENT ''NFe:Alíquota aplicável de cálculo do crédito (Simples Nacional)'' ');
    end;

    // 14/04/2020
    if fNaoAtualizado('Códigos IBGE') then
    begin
       //Executar('DROP TABLE endereco_municipio');
       Module.Query.Close;
       Module.Query.Sql.Clear;
       Module.Query.Sql.Add('CREATE TABLE endereco_municipio');
       Module.Query.Sql.Add(' (CODIGO INT(11)      NOT NULL AUTO_INCREMENT COMMENT ''código do município gerado pelo sistema'', ');
       Module.Query.Sql.Add('  IBGE   INT(11)      NOT NULL                COMMENT ''código de ibge do município'',             ');
       Module.Query.Sql.Add('  NOME   VARCHAR(200) NOT NULL                COMMENT ''nome do município'',                       ');
       Module.Query.Sql.Add('  ESTADO INT(11)      NULL DEFAULT NULL       COMMENT ''estado do município'',                     ');
       Module.Query.Sql.Add('  PRIMARY KEY (CODIGO) )                                                                           ');
       Module.Query.ExecSql;
       Tratar_Codigos_IBGE;
    end;

    // 20/04/2020
    if fNaoAtualizado('Empresa->pCOFINS...') then
       Executar('ALTER TABLE Empresa ADD pCOFINS DECIMAL(6,2) DEFAULT 0 COMMENT ''NFe:Alíquota de COFINS'' ');

    // 22/04/2020
    if fNaoAtualizado('Produto->Produto_ou_Servico...') then
       Executar('ALTER TABLE Produto ADD Produto_ou_Servico ENUM(''P'',''S'') NULL DEFAULT ''P'' COMMENT ''P=Produto e S=Serviço'' ');

    // 22/04/2020
    if fNaoAtualizado('Produto->PagaComissaoSN...') then
       Executar('ALTER TABLE Produto ADD PagaComissaoSN ENUM(''S'',''N'') NULL DEFAULT ''S'' COMMENT ''S=Paga Comissão e N=Não paga'' ');

    // 22/04/2020
    if fNaoAtualizado('Produto->ContaContabil...') then
       Executar('ALTER TABLE Produto ADD ContaContabil int(11) NULL COMMENT ''Código da Conta Contábil no Plano de Contas'' ');

    // 22/04/2020
    if fNaoAtualizado('Produto->CentroDeCustos...') then
       Executar('ALTER TABLE Produto ADD CentroDeCustos int(11) NULL COMMENT ''Código do Centro de Custos'' ');

    // 23/04/2020
    if fNaoAtualizado('Transportador->Contribuinte_do_ICMS...') then
       Executar('ALTER TABLE Transportador ADD Contribuinte_do_ICMS ENUM(''S'',''N'') NULL DEFAULT ''S'' COMMENT ''Se o Transportador é (S) ou não (N) Contribuinte do ICMS'' ');

    // 24/04/2020
    if fNaoAtualizado('Venda->Transportador...') then
       Executar('ALTER TABLE Venda ADD Transportador INT(11) NULL DEFAULT -1 COMMENT ''Código do Transportador (-1 se nenhum)'' ');
    if fNaoAtualizado('Venda->Transportador_Veiculo...') then
       Executar('ALTER TABLE Venda ADD Transportador_Veiculo INT(11) NULL DEFAULT -1 COMMENT ''Código do Transportador_Veiculo (-1 se nenhum)'' ');

    if fNaoAtualizado('Lacres..') then
    begin
       // Tabela de Lacres usados no transporte de mercadorias (NFe)
       Module.Query.Close;
       Module.Query.Sql.Clear;
       Module.Query.Sql.Add('CREATE TABLE VENDA_LACRE_VLAC');
       Module.Query.Sql.Add(' ( VLAC_ID_VENDA INT(11)     NOT NULL COMMENT ''Código do Movimento associado ao LACRE'', ');
       Module.Query.Sql.Add('   VLAC_NLACRE   VARCHAR(60) NOT NULL COMMENT ''Número do LACRE''                         ');
       Module.Query.Sql.Add('  )                                                                                        ');
       Module.Query.ExecSql;
    end;
    // 25/04/2020
    if fNaoAtualizado('Cliente->ID_CAD_RAMO_ATIVIDADE...') then
       Executar('ALTER TABLE Cliente ADD ID_CAD_RAMO_ATIVIDADE INT(11) NULL COMMENT ''Código do Ramo de Atividade'' ');

    // 26/04/2020
    if fNaoAtualizado('Cliente->Detalhes do bloqueio...') then
    begin
       //Dados do bloqueio do cliente
       Executar('ALTER TABLE Cliente ADD DTBLOQUEIO  DATE        NULL COMMENT ''Data do Bloqueio'' ');
       Executar('ALTER TABLE Cliente ADD HRBLOQUEIO  VARCHAR(05) NULL COMMENT ''Hora do Bloqueio'' ');
       Executar('ALTER TABLE Cliente ADD USUBLOQUEIO VARCHAR(20) NULL COMMENT ''Usuário que Bloqueou'' ');
       Executar('ALTER TABLE Cliente ADD MAQBLOQUEIO VARCHAR(50) NULL COMMENT ''Estação em foi Bloqueado'' ');
    end;

    // 26/04/2020
    if fNaoAtualizado('Histórico de bloqueios ...') then
    begin
       //Histórico de bloqueios e desbloqueios do cliente
       Module.Query.Close;
       Module.Query.Sql.Clear;
       Module.Query.Sql.Add('CREATE TABLE CLIENTE_HISTORICO_BLOQUEIOS_CHB                                                                   ');
       Module.Query.Sql.Add('     ( CHB_CLIENTE   INTEGER                              NOT NULL COMMENT ''Codigo do Cliente'',              ');
       Module.Query.Sql.Add('       CHB_EVENTO    ENUM(''BLOQUEADO'',''DESBLOQUEADO'') NOT NULL COMMENT ''Evento'',                         ');
       Module.Query.Sql.Add('       CHB_DTEVENTO  DATE                                 NOT NULL COMMENT ''Data do Evento'',                 ');
       Module.Query.Sql.Add('       CHB_HREVENTO  VARCHAR(05)                          NOT NULL COMMENT ''Hora do Evento'',                 ');
       Module.Query.Sql.Add('       CHB_USUEVENTO VARCHAR(20)                          NOT NULL COMMENT ''Usuário'',                        ');
       Module.Query.Sql.Add('       CHB_MAQEVENTO VARCHAR(50)                          NOT NULL COMMENT ''Estação em que o Evento ocorreu'' ');
       Module.Query.Sql.Add('     )                                                                                                           ');
       Module.Query.ExecSql;
    end;
    // 26/04/2020
    if fNaoAtualizado('Cliente->Detalhes de alterações...') then
    begin
       //Dados do bloqueio do cliente
       Executar('ALTER TABLE Cliente ADD DTALTEROU  DATE        NULL COMMENT ''Data da alteração'' ');
       Executar('ALTER TABLE Cliente ADD HRALTEROU  VARCHAR(05) NULL COMMENT ''Hora da alteração'' ');
       Executar('ALTER TABLE Cliente ADD USUALTEROU VARCHAR(20) NULL COMMENT ''Usuário que alterou'' ');
       Executar('ALTER TABLE Cliente ADD MAQALTEROU VARCHAR(50) NULL COMMENT ''Estação em foi alterado'' ');
    end;
    if fNaoAtualizado('Tabela de Regiões...') then
    begin
       Module.Query.Close;
       Module.Query.Sql.Clear;
       Module.Query.Sql.Add('CREATE TABLE REGIAO_REG                                                 ');
       Module.Query.Sql.Add('     ( REG_CODIGO    INT(11)     NOT NULL COMMENT ''Código da Região'', ');
       Module.Query.Sql.Add('       REG_DESCRICAO VARCHAR(50) NOT NULL COMMENT ''Nome da Região''    ');
       Module.Query.Sql.Add('     )                                                                  ');
       Module.Query.Sql.Add('COMMENT="Regiões Geográficas"                                           ');
       Module.Query.ExecSql;
    end;
    if fNaoAtualizado('Cliente_Endereco->ID_REGIAO...') then
       Executar('ALTER TABLE Cliente_Endereco ADD ID_REGIAO INT(11) NULL COMMENT ''Código da Região'' ');

    //27/04/2020
    //Detalhes de volumes da NFe
    if fNaoAtualizado('Detalhes de volumes da NFe...') then
    begin
       Executar('ALTER TABLE VENDA ADD NFe_QVOL  INT(11)       NULL DEFAULT 0          COMMENT "NFe: Quantidade de Volumes Transportados" ');
       Executar('ALTER TABLE VENDA ADD NFe_ESP   VARCHAR(60)   NULL DEFAULT NULL       COMMENT "NFe: Espécie dos Volumes Transportados" ');
       Executar('ALTER TABLE VENDA ADD NFe_MARCA VARCHAR(60)   NULL DEFAULT "DIVERSAS" COMMENT "NFe: Marca dos Volumes Transportados" ');
       Executar('ALTER TABLE VENDA ADD NFe_NVOL  VARCHAR(60)   NULL DEFAULT NULL       COMMENT "NFe: Numeração dos Volumes Transportados" ');
       Executar('ALTER TABLE VENDA ADD NFe_PESOL decimal(10,4) NULL DEFAULT 0          COMMENT "NFe: Peso Líquido Total (KG)" ');
       Executar('ALTER TABLE VENDA ADD NFe_PESOB decimal(10,4) NULL DEFAULT 0          COMMENT "NFe: Peso Bruto Total (KG)"');
    end;
    //Detalhes de volumes da NFe
    if fNaoAtualizado('Informações Complementares da NFe....') then
    begin
       Module.Query.Close;
       Module.Query.Sql.Clear;
       Module.Query.Sql.Add('CREATE TABLE VENDA_INFORM_COMPL_VIC                                               ');
       Module.Query.Sql.Add('     ( VIC_CODIGO_VENDA  INT(11)      NOT NULL COMMENT "Código da Venda",         ');
       Module.Query.Sql.Add('       VIC_LINHA         INT(11)      NOT NULL COMMENT "Número da linha de texto",');
       Module.Query.Sql.Add('       VIC_TEXTO         VARCHAR(250)     NULL COMMENT "Linha de texto"           ');
       Module.Query.Sql.Add('     )                                                                            ');
       Module.Query.Sql.Add('COMMENT="Texto de Informações Complementares para NFe"                            ');
       Module.Query.ExecSql;
    end;
    //Tabela de Conta Corrente
    // - caixa
    // - contas a pagar
    // - contas a receber
    // - conta bancária
    if fNaoAtualizado('Tabela de Conta Corrente...') then
    begin
{       Module.Query.Close;
       Module.Query.Sql.Clear;
       Module.Query.Sql.Add('CREATE TABLE CONTACORRENTE_CC                                                                                      ');
       Module.Query.Sql.Add('     (                                                                                                             ');
       Module.Query.Sql.Add('       CC_SEQUENCIAL             INT(11)               NULL COMMENT "ID da transação",                             ');
       Module.Query.Sql.Add('       CC_ID_CLIENTE             INT(11)               NULL COMMENT "Código do Cliente",                           ');
       Module.Query.Sql.Add('       CC_ID_FORNECEDOR          INT(11)               NULL COMMENT "Código do Fornecedor",                        ');
       Module.Query.Sql.Add('       CC_DATA                   DATE              NOT NULL COMMENT "Data do Movimento",                           ');
       Module.Query.Sql.Add('       CC_DOC                    VARCHAR(20)           NULL COMMENT "Número do Documento",                         ');
       Module.Query.Sql.Add('       CC_VALOR                  DECIMAL(10,4)     NOT NULL COMMENT "Valor da transação",                          ');
       Module.Query.Sql.Add('       CC_DC                     ENUM("D","C")     NOT NULL COMMENT "Tipo de transação (D)=Débito, (C)=Crédito",   ');
       Module.Query.Sql.Add('       CC_HISTORICO              VARCHAR(100)          NULL COMMENT "Descrição da transação",                      ');
       Module.Query.Sql.Add('       CC_ID_NATUREZA            INT(11)               NULL COMMENT "ID da Natureza Financeira",                   ');
       Module.Query.Sql.Add('       CC_PG                     ENUM("S","N")         NULL COMMENT "Status de Pagamento (S)=Pago, (N)=Em aberto", ');
       Module.Query.Sql.Add('       CC_DTPG                   DATE                  NULL COMMENT "Data do pagamento/recebimento",               ');
       Module.Query.Sql.Add('       CC_CTACONTAB              INT(11)               NULL COMMENT "ID da Conta Contábil",                        ');
       Module.Query.Sql.Add('       CC_ID_CHEQUE              INT(11)               NULL COMMENT "ID do Cheque associado",                      ');
       Module.Query.Sql.Add('       CC_ID_CONTABANCO          INT(11)               NULL COMMENT "ID da Conta Bancária (se conta corrente)",    ');
       Module.Query.Sql.Add('       CC_DTVENCE                DATE                  NULL COMMENT "Data de Vencimento do título receber/pagar",  ');
       Module.Query.Sql.Add('       CC_VALORAPAGAR            DECIMAL(10,4)         NULL COMMENT "Saldo em aberto (devedor/credor)",            ');
       Module.Query.Sql.Add('       CC_USU                    VARCHAR(20)           NULL COMMENT "Usário que registrou a transação",            ');
       Module.Query.Sql.Add('       CC_DT                     DATE                  NULL COMMENT "Data do registro no banco de dados",          ');
       Module.Query.Sql.Add('       CC_HR                     VARCHAR(5)            NULL COMMENT "Hora do registro no banco de dados",          ');
       Module.Query.Sql.Add('       CC_STATUS                 ENUM("X","C")NULL,
       Module.Query.Sql.Add('       CC_EMPRESA VARCHAR(10) NULL,
       Module.Query.Sql.Add('       CC_FILIAL VARCHAR(10) NULL,
       Module.Query.Sql.Add('       CC_CC VARCHAR(10) NULL,
       Module.Query.Sql.Add('       CC_GC VARCHAR(10) NULL,
       Module.Query.Sql.Add('       CC_VALORPAGO DECIMAL(12, 2) NULL,
       Module.Query.Sql.Add('       CC_NRPEDIDO int NULL,
       Module.Query.Sql.Add('       CC_DTDIARIA datetime NULL,
       Module.Query.Sql.Add('       CC_OBS VARCHAR(40) NULL,
       Module.Query.Sql.Add('       CC_CONTROLE VARCHAR(10) NULL,
       Module.Query.Sql.Add('       CC_TIPO VARCHAR(20) NULL,
       Module.Query.Sql.Add('       CC_CHEQUE3 VARCHAR(20) NULL,
       Module.Query.Sql.Add('       CC_BANCO3 VARCHAR(3) NULL,
       Module.Query.Sql.Add('       CC_AGENCIA3 VARCHAR(10) NULL,
       Module.Query.Sql.Add('       CC_CONTA3 VARCHAR(10) NULL,
       Module.Query.Sql.Add('       CC_ABERTURA VARCHAR(1) NULL,
       Module.Query.Sql.Add('       CC_TRANSF int NULL,
       Module.Query.Sql.Add('       CC_BOLETO_SEUNUMERO int NULL,
       Module.Query.Sql.Add('       CC_BOLETO_NOSSONUMERO VARCHAR(10) NULL,
       Module.Query.Sql.Add('       CC_BOLETO_CODCEDENTE int NULL,
       Module.Query.Sql.Add('       CC_BOLETO_VALORDOCUMENTO DECIMAL(12, 2) NULL,
       Module.Query.Sql.Add('       CC_BOLETO_VALORDESCONTO DECIMAL(12, 2) NULL,
       Module.Query.Sql.Add('       CC_BOLETO_VALORABATIMENTO DECIMAL(12, 2) NULL,
       Module.Query.Sql.Add('       CC_BOLETO_VALORMORA DECIMAL(12, 2) NULL,
       Module.Query.Sql.Add('       CC_BOLETO_DESPESACOBRANCA DECIMAL(12, 2) NULL,
       Module.Query.Sql.Add('       CC_BOLETO_DTVENCE datetime NULL,
       Module.Query.Sql.Add('       CC_BOLETO_DTDOCUMENTO datetime NULL,
       Module.Query.Sql.Add('       CC_BOLETO_DTRECEBIMENTO datetime NULL,
       Module.Query.Sql.Add('       CC_BOLETO_DTCREDITO datetime NULL,
       Module.Query.Sql.Add('       CC_BOLETO_OBS VARCHAR(40) NULL,
       Module.Query.Sql.Add('       CC_BOLETO_CARTEIRA VARCHAR(20) NULL,
       Module.Query.Sql.Add('       CC_ESTORNO int NULL,
       Module.Query.Sql.Add('       CC_DESCONTO DECIMAL(12, 2) NULL,
       Module.Query.Sql.Add('       CC_USUDESCONTO VARCHAR(10) NULL,
       Module.Query.Sql.Add('       CC_DTDESCONTO datetime NULL,
       Module.Query.Sql.Add('       CC_HRDESCONTO VARCHAR(5) NULL,
       Module.Query.Sql.Add('       CC_BRUTO DECIMAL(12, 2) NULL,
       Module.Query.Sql.Add('       CC_PPAR int NULL,
       Module.Query.Sql.Add('       CC_DOCORIGINAL VARCHAR(10) NULL,
       Module.Query.Sql.Add('       CC_SEQCREDITO int NULL,
       Module.Query.Sql.Add('       CC_SEQDEBITO int NULL,
       Module.Query.Sql.Add('       CC_ESTORNOSN VARCHAR(1) NULL,
       Module.Query.Sql.Add('       CC_ORDEMREPASSE int NULL,
       Module.Query.Sql.Add('       CC_VEICULO VARCHAR(10) NULL,
       Module.Query.Sql.Add('       CC_VIAGEM int NULL,
       Module.Query.Sql.Add('       CC_ROTINA VARCHAR(20) NULL,
       Module.Query.Sql.Add('       CC_USUCADASTRO VARCHAR(10) NULL,
       Module.Query.Sql.Add('       CC_ASSOCIADO int NULL,
       Module.Query.Sql.Add('       CC_EVENTO VARCHAR(10) NULL,
       Module.Query.Sql.Add('       CC_EVENTOATENDIDO VARCHAR(1) NULL,
       Module.Query.Sql.Add('       CC_ODOMETRO int NULL,
       Module.Query.Sql.Add('       CC_PROXODOMETRO int NULL,
       Module.Query.Sql.Add('       CC_PROXDATA datetime NULL,
       Module.Query.Sql.Add('       CC_CANCELADO VARCHAR(1) NULL,
       Module.Query.Sql.Add('       CC_MOTIVOCANCELAMENTO VARCHAR(10) NULL,
       Module.Query.Sql.Add('       CC_USUCANCELAMENTO VARCHAR(10) NULL,
       Module.Query.Sql.Add('       CC_DTCANCELAMENTO datetime NULL,
       Module.Query.Sql.Add('       CC_HRCANCELAMENTO VARCHAR(5) NULL,
       Module.Query.Sql.Add('       CC_DESCANCELADO VARCHAR(1) NULL,
       Module.Query.Sql.Add('       CC_USUDESCANCELAMENTO VARCHAR(10) NULL,
       Module.Query.Sql.Add('       CC_DTDESCANCELAMENTO datetime NULL,
       Module.Query.Sql.Add('       CC_HRDESCANCELAMENTO VARCHAR(5) NULL,
       Module.Query.Sql.Add('       CC_EXPORTADO VARCHAR(1) NULL,
       Module.Query.Sql.Add('       CC_DTEXPORTADO datetime NULL,
       Module.Query.Sql.Add('       CC_IMPORTADO VARCHAR(1) NULL,
       Module.Query.Sql.Add('       CC_DTIMPORTADO datetime NULL,
       Module.Query.Sql.Add('       CC_STATUSCOBRANCA VARCHAR(1) NULL,
       Module.Query.Sql.Add('       CC_OBSCOBRANCA VARCHAR(50) NULL,
       Module.Query.Sql.Add('       CC_EFETIVADO VARCHAR(1) NULL,
       Module.Query.Sql.Add('       CC_CODIGODEBARRAS VARCHAR(50) NULL,
       Module.Query.Sql.Add('       CC_TDOC VARCHAR(10) NULL,
       Module.Query.Sql.Add('       CC_AUXSEQ int NULL,
       Module.Query.Sql.Add('       CC_FIXVARFININV VARCHAR(1) NULL,
       Module.Query.Sql.Add('       CC_ESTACAO VARCHAR(20) NULL,
       Module.Query.Sql.Add('       CC_ESTACAOCANCELOU VARCHAR(20) NULL,
       Module.Query.Sql.Add('       CC_ESTACAODESCANCELOU VARCHAR(20) NULL,
       Module.Query.Sql.Add('       CC_CAIXA VARCHAR(10) NULL,
       Module.Query.Sql.Add('       CC_VALORSEG DECIMAL(12, 2) NULL,
       Module.Query.Sql.Add('       CC_VALORAPAGARSEG DECIMAL(12, 2) NULL,
       Module.Query.Sql.Add('       CC_VALORPAGOSEG DECIMAL(12, 2) NULL,
       Module.Query.Sql.Add('       CC_ROTINACANCELOU int NULL,
       Module.Query.Sql.Add('       CC_CONFERIDO VARCHAR(1) NULL,
       Module.Query.Sql.Add('       CC_DTCONFERIDO datetime NULL,
       Module.Query.Sql.Add('       CC_HRCONFERIDO VARCHAR(5) NULL,
       Module.Query.Sql.Add('       CC_USUCONFERIDO VARCHAR(5) NULL,
       Module.Query.Sql.Add('       CC_VALORANTES DECIMAL(12, 2) NULL,
       Module.Query.Sql.Add('       CC_OBSCANCELAMENTO VARCHAR(100) NULL,
       Module.Query.Sql.Add('       CC_EXPORTADOBANCO VARCHAR(1) NULL,
       Module.Query.Sql.Add('       CC_GEROUBOLETO VARCHAR(1) NULL,
       Module.Query.Sql.Add('       CC_CONTRATO VARCHAR(20) NULL,
       Module.Query.Sql.Add('       CC_PAF_NUMFABECF VARCHAR(20) NULL,
       Module.Query.Sql.Add('       CC_PAF_NUM_CONT VARCHAR(6) NULL,
       Module.Query.Sql.Add('       CC_PAF_COO VARCHAR(6) NULL,
       Module.Query.Sql.Add('       CC_OBSPAGAMENTO VARCHAR(255) NULL,
       Module.Query.Sql.Add('       CC_EVITAVEL VARCHAR(1) NULL,
       Module.Query.Sql.Add('       CC_PREVISTA VARCHAR(1) NULL,
       Module.Query.Sql.Add('       CC_COMOEVITAR VARCHAR(10) NULL,
       Module.Query.Sql.Add('       CC_MOTIVO VARCHAR(10) NULL,
       Module.Query.Sql.Add('       CC_SUSPENSO VARCHAR(1) NULL,
       Module.Query.Sql.Add('       CC_ACRESCIMO DECIMAL(12, 2) NULL,
       Module.Query.Sql.Add('       CC_MOTIVOACRESCIMO VARCHAR(20) NULL,
       Module.Query.Sql.Add('       CC_DTRECUPERADO datetime NULL,
       Module.Query.Sql.Add('       CC_MAN_ID int NULL,
       Module.Query.Sql.Add('       CC_SELECIONADO int NULL,
       Module.Query.Sql.Add('       CC_AGRUPADOPOR int NULL,
       Module.Query.Sql.Add('       CC_AGRUPADOR int NULL,
       Module.Query.Sql.Add('       CC_AGRUPADOPORUSU VARCHAR(10) NULL,
       Module.Query.Sql.Add('       CC_QUITACAO int NULL,
       Module.Query.Sql.Add('       CC_ASSOCIADOANTES int NULL,
       Module.Query.Sql.Add('       CC_SALDO DECIMAL(12, 2) NULL,
       Module.Query.Sql.Add('       SOMADO int NULL,
       Module.Query.Sql.Add('       CC_FIXO int NULL,
       Module.Query.Sql.Add('       CC_VALORPAGOOLD DECIMAL(12, 2) NULL,
       Module.Query.Sql.Add('       CC_VALORAPAGAROLD DECIMAL(12, 2) NULL,
       Module.Query.Sql.Add('       CC_SALDOCREDITO DECIMAL(12, 2) NULL,
       Module.Query.Sql.Add('       CC_OLD int NULL,
       Module.Query.Sql.Add('       CC_IMPORTADO180919SN int NULL,
       Module.Query.Sql.Add('       CC_IMPORTADO180919DT datetime NULL
       Module.Query.Sql.Add('COMMENT="Registro de transações financeiras do sistema"                           ');
       Module.Query.ExecSql;
       }
    end;
    //06/05/2020
    //Status de bloqueio
    if fNaoAtualizado('Cliente->Status de bloqueio...') then
       Executar('ALTER TABLE CLIENTE ADD BLOQUEADO ENUM(''SIM'',''NAO'') NOT NULL DEFAULT "NAO" COMMENT "Status de bloqueio (SIM/NAO)" ');
    //08/05/2020
    // 3o telefone do cliente
    if fNaoAtualizado('Cliente->3o telefone...') then
       Executar('ALTER TABLE CLIENTE ADD TELEFONE_2 VARCHAR(50) NULL COMMENT "3o telefone" ');
    // WhatsApp do cliente
    if fNaoAtualizado('Cliente->WhatsApp...') then
       Executar('ALTER TABLE CLIENTE ADD WhatsApp VARCHAR(50) NULL COMMENT "WhatsApp" ');
    // 3o email do cliente
    if fNaoAtualizado('Cliente->3o email...') then
       Executar('ALTER TABLE CLIENTE ADD EMAIL_2 VARCHAR(100) NULL COMMENT "3o email" ');
    // Site-HomePage
    if fNaoAtualizado('Cliente->Site-HomePage...') then
       Executar('ALTER TABLE CLIENTE ADD Site_HomePage VARCHAR(100) NULL COMMENT "Site-HomePage" ');

    // 09/05/2020
    // Dados do Proprietário da empresa cliente.
    if fNaoAtualizado('Cliente->Proprietário...') then
    begin
      Executar('ALTER TABLE CLIENTE ADD PROPRIETARIO_NOME     VARCHAR(50)  NULL DEFAULT NULL COMMENT "Nome do Proprietario" ');
      Executar('ALTER TABLE CLIENTE ADD PROPRIETARIO_FONE     VARCHAR(50)  NULL DEFAULT NULL COMMENT "Telefone do Proprietario" ');
      Executar('ALTER TABLE CLIENTE ADD PROPRIETARIO_RAMAL    VARCHAR(10)  NULL DEFAULT NULL COMMENT "Ramal do telefone do Proprietario" ');
      Executar('ALTER TABLE CLIENTE ADD PROPRIETARIO_CELULAR1 VARCHAR(50)  NULL DEFAULT NULL COMMENT "1o Celular do Proprietario" ');
      Executar('ALTER TABLE CLIENTE ADD PROPRIETARIO_CELULAR2 VARCHAR(50)  NULL DEFAULT NULL COMMENT "2o Celular do Proprietario" ');
      Executar('ALTER TABLE CLIENTE ADD PROPRIETARIO_EMAIL1   VARCHAR(100) NULL DEFAULT NULL COMMENT "1o Email do Proprietario" ');
      Executar('ALTER TABLE CLIENTE ADD PROPRIETARIO_EMAIL2   VARCHAR(100) NULL DEFAULT NULL COMMENT "2o Email do Proprietario" ');
    end;
    if fNaoAtualizado('Cliente->Proprietário_WhatsApp...') then
      Executar('ALTER TABLE CLIENTE ADD PROPRIETARIO_WHATSAPP VARCHAR(50)  NULL DEFAULT NULL COMMENT "Whats App do Proprietario" ');

    if fNaoAtualizado('Cliente->CONTATO_TELEFONE...') then
    begin
      Executar('ALTER TABLE CLIENTE ADD CONTATO_FONE         VARCHAR(50)  NULL DEFAULT NULL COMMENT "Telefone do Contato (Responsavel)" ');
      Executar('ALTER TABLE CLIENTE ADD CONTATO_RAMAL        VARCHAR(10)  NULL DEFAULT NULL COMMENT "Ramal do Telefone do Contato (Responsavel)" ');
      Executar('ALTER TABLE CLIENTE ADD CONTATO_CELULAR2     VARCHAR(10)  NULL DEFAULT NULL COMMENT "2o Celular do Contato (Responsavel)" ');
      Executar('ALTER TABLE CLIENTE ADD CONTATO_WHATSAPP     VARCHAR(50)  NULL DEFAULT NULL COMMENT "Whats App do Contato (Responsavel)" ');
      Executar('ALTER TABLE CLIENTE ADD CONTATO_EMAIL1       VARCHAR(100) NULL DEFAULT NULL COMMENT "1o Email do Contato (Responsavel)" ');
      Executar('ALTER TABLE CLIENTE ADD CONTATO_EMAIL2       VARCHAR(100) NULL DEFAULT NULL COMMENT "2o Email do Contato (Responsavel)" ');
    end;
    if fNaoAtualizado('Cliente->CODIGO_UF...') then
       Executar('ALTER TABLE CLIENTE ADD CODIGO_UF             VARCHAR(02)  NULL DEFAULT NULL COMMENT "Código IBGE da UF do endereço do cliente" ');

    if fNaoAtualizado('Cliente_Endereco->Regiões de entrega e cobrança...') then
    begin
       Executar('ALTER TABLE CLIENTE ADD ENTREGA_ID_REGIAO  INT(11) NULL COMMENT ''Código da Região do endereco de entrega'' ');
       Executar('ALTER TABLE CLIENTE ADD COBRANCA_ID_REGIAO INT(11) NULL COMMENT ''Código da Região do endereco de cobranca'' ');
       Executar('ALTER TABLE CLIENTE ADD ENTREGA_CODIGO_UF           VARCHAR(02)  NULL DEFAULT NULL COMMENT "Código IBGE da UF do endereço de entrega" ');
       Executar('ALTER TABLE CLIENTE ADD COBRANCA_CODIGO_UF          VARCHAR(02)  NULL DEFAULT NULL COMMENT "Código IBGE da UF do endereço de cobranca" ');
    end;

    // 12/05/20
    if fNaoAtualizado('Cliente->Empresa que o cadastrou...') then
       Executar('ALTER TABLE CLIENTE ADD CLI_EMP_CODIGO VARCHAR(020) NOT NULL DEFAULT "0" COMMENT "Codigo da empresa/filial que o cadastrou" ');

    if fNaoAtualizado('Histórico de bloqueios->Empresa que bloqueou/desbloqueou ...') then
       Executar('ALTER TABLE CLIENTE_HISTORICO_BLOQUEIOS_CHB ADD CHB_EMP_CODIGO VARCHAR(020) NOT NULL DEFAULT "0" COMMENT "Codigo da empresa/filial que bloqueou/desbloqueou" ');

    if fNaoAtualizado('Cliente->Empresa que o alterou...') then
       Executar('ALTER TABLE CLIENTE ADD EMP_ALTEROU VARCHAR(020) NOT NULL DEFAULT "0" COMMENT "Codigo da empresa/filial que o alterou" ');

    if fNaoAtualizado('Produto: Indicador de participação na soma total da NFe...') then
    begin
       Executar('ALTER TABLE produto ADD NFe_indTot INTEGER NULL DEFAULT 1 COMMENT ''Indicador de participacao do Total da NFe''');
       Executar('UPDATE produto SET NFe_indTot = 1 WHERE NFe_indTot IS NULL');
    end;

    //13/05/20
    // Produto: Medicamento
   if fNaoAtualizado('Produto: Indicador de Medicamento...') then
    begin
      Executar('ALTER TABLE produto ADD NFe_Medicamento INTEGER COMMENT ''Nfe: Indicador Medicamento (0-Não)(1-Sim)'' ');
      Executar('UPDATE produto SET NFe_Medicamento = 0 WHERE NFe_Medicamento IS NULL');
    end;
    if fNaoAtualizado('Cliente: CRT_CODIGO_REGIME_TRIBUTARIO...') then
    begin
      // 0 : Não se aplica
      // 1 : Símples Nacional
      // 2 : Símples Nacional com Excesso de Receita
      // 3 : Regime Normal
      Executar('ALTER TABLE CLIENTE ADD CRT_CODIGO_REGIME_TRIBUTARIO INTEGER NOT NULL DEFAULT 0 COMMENT ''Nfe: CRT - Codigo do Regime Tributario'' ');
    end;
    //18/05/2020
    if fNaoAtualizado('Tipo de Movimento: Flags de Tratamentos para NFe....')           then
       Executar('ALTER TABLE TIPOMOVIMENTO_TPMOV ADD TPMOV_NFE_TRATAR_GRUPO_B12A_NOTA_REFERENCIADA         INTEGER NOT NULL DEFAULT 0 COMMENT "Flag Tratar GRP 12a-Nota Referenciada (0-Não, 1-Sim)" ');
    if fNaoAtualizado('Tipo de Movimento: Flags de Tratamentos Grupo B20a da NFe ....') then
       Executar('ALTER TABLE TIPOMOVIMENTO_TPMOV ADD TPMOV_NFE_TRATAR_GRUPO_B20a_NOTA_REFER_PROD_RURAL     INTEGER NOT NULL DEFAULT 0 COMMENT "Flag Tratar GRP 20a-Nota Refer.Produtor Rural (0-Não, 1-Sim)" ');
    if fNaoAtualizado('Tipo de Movimento: Flags de Tratamentos Grupo B20j da NFe ....') then
       Executar('ALTER TABLE TIPOMOVIMENTO_TPMOV ADD TPMOV_NFE_TRATAR_GRUPO_B20j_CUPOM_FISCAL_REFERENCIADO INTEGER NOT NULL DEFAULT 0 COMMENT "Flag Tratar GRP 20j-Cupom Fiscal Referenciado (0-Não, 1-Sim)" ');
    if fNaoAtualizado('Tipo de Movimento: Flags de Tratamentos Grupo F da NFe ....')    then
       Executar('ALTER TABLE TIPOMOVIMENTO_TPMOV ADD TPMOV_NFE_TRATAR_GRUPO_F_LOCAL_DE_RETIRADA            INTEGER NOT NULL DEFAULT 0 COMMENT "Flag Tratar GRP F-Local de Retirada (0-Não, 1-Sim)" ');
    if fNaoAtualizado('Tipo de Movimento: Flags de Tratamentos Grupo G da NFe ....')    then
       Executar('ALTER TABLE TIPOMOVIMENTO_TPMOV ADD TPMOV_NFE_TRATAR_GRUPO_G_LOCAL_DE_ENTREGA             INTEGER NOT NULL DEFAULT 0 COMMENT "Flag Tratar GRP G-Local de Entrega (0-Não, 1-Sim)" ');
    if fNaoAtualizado('Tipo de Movimento: Flags de Tratamentos Grupo DI da NFe ....')   then
       Executar('ALTER TABLE TIPOMOVIMENTO_TPMOV ADD TPMOV_NFE_TRATAR_GRUPO_DI_DECLARACAO_DE_IMPORTACAO    INTEGER NOT NULL DEFAULT 0 COMMENT "Flag Tratar GRP DI-Declaracao de Importacao (0-Não, 1-Sim)" ');
    //19/05/2020
    if fNaoAtualizado('Tipo de Movimento: Flags de Tratamentos Grupo J da NFe ....')    then
       Executar('ALTER TABLE TIPOMOVIMENTO_TPMOV ADD TPMOV_NFE_TRATAR_GRUPO_J_VEICULOS_NOVOS               INTEGER NOT NULL DEFAULT 0 COMMENT "Flag Tratar GRP J-Veiculos Novos (0-Não, 1-Sim)" ');
    if fNaoAtualizado('Tipo de Movimento: Flags de Tratamentos Grupo K da NFe ....')    then
       Executar('ALTER TABLE TIPOMOVIMENTO_TPMOV ADD TPMOV_NFE_TRATAR_GRUPO_K_MEDICAMENTOS                 INTEGER NOT NULL DEFAULT 0 COMMENT "Flag Tratar GRP K-Medicamentos (0-Não, 1-Sim)" ');
    if fNaoAtualizado('Tipo de Movimento: Flags de Tratamentos Grupo L da NFe ....')    then
       Executar('ALTER TABLE TIPOMOVIMENTO_TPMOV ADD TPMOV_NFE_TRATAR_GRUPO_L_ARMAMENTOS                   INTEGER NOT NULL DEFAULT 0 COMMENT "Flag Tratar GRP L-Armamentos (0-Não, 1-Sim)" ');
    if fNaoAtualizado('Tipo de Movimento: Flags de Tratamentos Grupo L1 da NFe ....')   then
       Executar('ALTER TABLE TIPOMOVIMENTO_TPMOV ADD TPMOV_NFE_TRATAR_GRUPO_L1_COMBUSTIVEIS                INTEGER NOT NULL DEFAULT 0 COMMENT "Flag Tratar GRP L1-Combustíveis (0-Não, 1-Sim)" ');

    if fNaoAtualizado('Tipo de Movimento: Flags de Tratamentos Grupo O da NFe ....')    then
       Executar('ALTER TABLE TIPOMOVIMENTO_TPMOV ADD TPMOV_NFE_TRATAR_GRUPO_O_IPI                          INTEGER NOT NULL DEFAULT 0 COMMENT "Flag Tratar GRP O-IPI (0-Não, 1-Sim)" ');
    if fNaoAtualizado('Tipo de Movimento: Flags de Tratamentos Grupo P da NFe ....')    then
       Executar('ALTER TABLE TIPOMOVIMENTO_TPMOV ADD TPMOV_NFE_TRATAR_GRUPO_P_II                           INTEGER NOT NULL DEFAULT 0 COMMENT "Flag Tratar GRP P-II (Importacao) (0-Não, 1-Sim)" ');
    if fNaoAtualizado('Tipo de Movimento: Flags de Tratamentos Grupo Q da NFe ....')    then
       Executar('ALTER TABLE TIPOMOVIMENTO_TPMOV ADD TPMOV_NFE_TRATAR_GRUPO_Q_PIS                          INTEGER NOT NULL DEFAULT 0 COMMENT "Flag Tratar GRP Q-PIS (0-Não, 1-Sim)" ');
    if fNaoAtualizado('Tipo de Movimento: Flags de Tratamentos Grupo R da NFe ....')    then
       Executar('ALTER TABLE TIPOMOVIMENTO_TPMOV ADD TPMOV_NFE_TRATAR_GRUPO_R_PIS_ST                       INTEGER NOT NULL DEFAULT 0 COMMENT "Flag Tratar GRP R-PIS_ST (0-Não, 1-Sim)" ');
    if fNaoAtualizado('Tipo de Movimento: Flags de Tratamentos Grupo S da NFe ....')    then
       Executar('ALTER TABLE TIPOMOVIMENTO_TPMOV ADD TPMOV_NFE_TRATAR_GRUPO_S_COFINS                       INTEGER NOT NULL DEFAULT 0 COMMENT "Flag Tratar GRP S-COFINS (0-Não, 1-Sim)" ');
    if fNaoAtualizado('Tipo de Movimento: Flags de Tratamentos Grupo T da NFe ....')    then
       Executar('ALTER TABLE TIPOMOVIMENTO_TPMOV ADD TPMOV_NFE_TRATAR_GRUPO_T_COFINS_ST                    INTEGER NOT NULL DEFAULT 0 COMMENT "Flag Tratar GRP S-COFINS-ST (0-Não, 1-Sim)" ');
    if fNaoAtualizado('Tipo de Movimento: Flags de Tratamentos Grupo U da NFe ....')    then
       Executar('ALTER TABLE TIPOMOVIMENTO_TPMOV ADD TPMOV_NFE_TRATAR_GRUPO_U_ISSQN                        INTEGER NOT NULL DEFAULT 0 COMMENT "Flag Tratar GRP U-ISSQN (0-Não, 1-Sim)" ');

    //21/05/20
    if fNaoAtualizado('Produto: Código Alfanumérico Alternativo') Then
    begin
       Executar('ALTER TABLE PRODUTO ADD CODIGO_ALFANUMERICO VARCHAR(20) NULL COMMENT "Codigo Alfanumerico Alternativo" ');
       Executar('UPDATE PRODUTO SET CODIGO_ALFANUMERICO  = CODIGO WHERE CODIGO_ALFANUMERICO IS NULL');
    end;

    //22/05/20
    if fNaoAtualizado('Tabela FAMILIA substituida por PRODUTO_FAMILIA') Then
    begin
       Executar('DROP TABLE FAMILIA');
       Executar('ALTER TABLE PRODUTO_FAMILIA ADD DATA_CADASTRO DATE NULL COMMENT "Data do cadastro" ');
    end;


    if fNaoAtualizado('Tabela RELACAO_CRT_CST_CSOSN_CFOP_RCCCC') Then
    begin
       Module.Query.Close;
       Module.Query.Sql.Clear;
       Module.Query.Sql.Add('CREATE TABLE RELACAO_CRT_CST_CSOSN_CFOP_RCC                                                        ');
       Module.Query.Sql.Add('     ( RCC_TPMOV    VARCHAR(10) NOT NULL COMMENT "Cod do Tipo de Movimento",                       ');
       Module.Query.Sql.Add('       RCC_CRT      INTEGER     NOT NULL COMMENT "Cod do Regime Tributário do Emissor de NFe",     ');
       Module.Query.Sql.Add('       RCC_CST_ICMS VARCHAR(03) NOT NULL COMMENT "Cod da Situacao Tributaria do Produto",          ');
       Module.Query.Sql.Add('       RCC_CSOSN    VARCHAR(04)     NULL COMMENT "Cod da Situacao da Operação no Símples Nacional",');
       Module.Query.Sql.Add('       RCC_CFOP     VARCHAR(04)     NULL COMMENT "Cod Fiscal da Operação"                          ');
       Module.Query.Sql.Add('     )                                                                                             ');
       Module.Query.Sql.Add('COMMENT="Relacionamento entre Natureza de Operacao (Tipo de Movimento), CRT, CST, CSOSN e CFOP"    ');
       Module.Query.ExecSql;
    end;
    if fNaoAtualizado('Preencher Tabela RELACAO_CRT_CST_CSOSN_CFOP_RCCCC') Then
    begin
       Preencher_RELACAO_TPMOV_CRT_CST_ICMS_CSOSN_CFOP('1',1,'00','101','');
       Preencher_RELACAO_TPMOV_CRT_CST_ICMS_CSOSN_CFOP('1',1,'41','102','');
       Preencher_RELACAO_TPMOV_CRT_CST_ICMS_CSOSN_CFOP('1',1,'40','103','');
       Preencher_RELACAO_TPMOV_CRT_CST_ICMS_CSOSN_CFOP('1',1,'60','500','');
       Preencher_RELACAO_TPMOV_CRT_CST_ICMS_CSOSN_CFOP('1',1,'90','900','');
    end;
    if fNaoAtualizado('Acertar Tabela RELACAO_CRT_CST_CSOSN_CFOP_RCCCC') Then
       Executar('DELETE FROM RELACAO_CRT_CST_CSOSN_CFOP_RCC WHERE RCC_CRT <> 1');

    {
    if fNaoAtualizado('Mais (1) Tabela RELACAO_CRT_CST_CSOSN_CFOP_RCCCC') Then
    begin
       Preencher_RELACAO_CRT_CST_CSOSN_CFOP_RCC('1',2,'00','101','');
       Preencher_RELACAO_CRT_CST_CSOSN_CFOP_RCC('1',2,'40','103','');
       Preencher_RELACAO_CRT_CST_CSOSN_CFOP_RCC('1',2,'60','500','');

       Preencher_RELACAO_CRT_CST_CSOSN_CFOP_RCC('1',3,'00','102','');
       Preencher_RELACAO_CRT_CST_CSOSN_CFOP_RCC('1',3,'40','103','');
       Preencher_RELACAO_CRT_CST_CSOSN_CFOP_RCC('1',3,'60','500','');
    end;
    }
    if fNaoAtualizado('Produto: Eliminada coluna CSOSN') Then
       //Eliminada coluna CSOSN da tabela produto
       Executar('ALTER TABLE PRODUTO DROP COLUMN CSOSN');

    if fNaoAtualizado('Venda Item: Incluida coluna VI_CFOP_CSOSN...') Then
       //Eliminada coluna CFOP da tabela Venda_Item
       Executar('ALTER TABLE VENDA_ITEM DROP COLUMN CFOP');
    if fNaoAtualizado('Venda Item: Incluida coluna VI_CFOP_CSOSN....') Then
       //Incluida coluna VI_CFOP_CSOSN na tabela Venda_Item
       Executar('ALTER TABLE VENDA_ITEM ADD VI_CFOP_CSOSN VARCHAR(04) NULL COMMENT "Cod do CFOP ou do CSOSN do produto na operacao"');

    if fNaoAtualizado('Empresa: CRT 0/1/2/3...') Then
       Executar('ALTER TABLE EMPRESA MODIFY CODIGO_REGIME_TRIBUTARIO INTEGER NOT NULL DEFAULT 0 COMMENT "código do regime tributário da Empresa" ');

    if fNaoAtualizado('Empresa: Eliminada coluna OPTANTE_SIMPLES_NACIONAL') Then
       Executar('ALTER TABLE EMPRESA DROP COLUMN OPTANTE_SIMPLES_NACIONAL');

    //26/05/2020
    if fNaoAtualizado('Produto:Valor de Pauta BC ICMS') Then
       Executar('ALTER TABLE PRODUTO ADD VALOR_PAUTA_BC DECIMAL(10,4) NULL DEFAULT 0 COMMENT "Valor de Pauta do produto" ');

    //28/05/2020
    if fNaoAtualizado('Produto: NCM passa de 50 para 8 caracteres...') Then
       Executar('ALTER TABLE PRODUTO MODIFY NCM VARCHAR(8) NULL DEFAULT NULL COMMENT "código do NCM_SH" ');
    if fNaoAtualizado('Produto: CEST passa de 50 para 7 caracteres...') Then
       Executar('ALTER TABLE PRODUTO MODIFY CEST VARCHAR(7) NULL DEFAULT NULL COMMENT "Código Especificador da Substituição Tributária" ');
    if fNaoAtualizado('Produto: ANP passa de 50 para 9 caracteres...') Then
       Executar('ALTER TABLE PRODUTO MODIFY ANP VARCHAR(9) NULL DEFAULT NULL COMMENT "Código Agencia Nacional de Petróleo" ');

    //29/05/2020
    {if fNaoAtualizado('CST_PIS: Preenchido com códigos válidos...') Then
    begin
       Executar('DELETE FROM CST_PIS WHERE CODIGO not in ("04", "05", "07", "08", "09")');
       Executar('UPDATE CST_PIS SET DESCRICAO = "Operação Tributável (tributação monofásica (alíquota zero)" WHERE CODIGO = "04"');
       Executar('UPDATE CST_PIS SET DESCRICAO = "Operação Tributável (alíquota zero)"                        WHERE CODIGO = "06"');
       Executar('UPDATE CST_PIS SET DESCRICAO = "Operação Isenta da Contribuição"                            WHERE CODIGO = "07"');
       Executar('UPDATE CST_PIS SET DESCRICAO = "Operação Sem Incidência da Contribuição"                    WHERE CODIGO = "08"');
       Executar('UPDATE CST_PIS SET DESCRICAO = "Operação com Suspensão da Contribuição"                     WHERE CODIGO = "09"');
    end;
    }
    //29/05/2020
    if fNaoAtualizado('Tipo de Movimento: Criada coluna TPMOV_CFOP') then
    begin
       Executar('ALTER TABLE TIPOMOVIMENTO_TPMOV ADD TPMOV_CFOP VARCHAR(04) NULL COMMENT "Codigo CFOP" ');
       Executar('UPDATE TIPOMOVIMENTO_TPMOV SET TPMOV_CFOP = "5102" WHERE TPMOV_CODIGO = 1 ');
    end;

    if fNaoAtualizado('Tabela RELACAO_CFOP_x_PRODUTO_xCST_PISCOFINS_RPC...') Then
    begin
       Module.Query.Close;
       Module.Query.Sql.Clear;
       Module.Query.Sql.Add('CREATE TABLE RELACAO_CFOP_x_PRODUTO_xCST_PISCOFINS_RPC                                                      ');
       Module.Query.Sql.Add('     ( RPC_CFOP      VARCHAR(04) NOT NULL COMMENT "Cod Fiscal da Operação",           ');
       Module.Query.Sql.Add('       RPC_PRODUTO   INTEGER     NOT NULL COMMENT "Cod do Produto",                   ');
       Module.Query.Sql.Add('       RPC_PIS       VARCHAR(02) NOT NULL COMMENT "Cod da Situacao Tributaria PIS",   ');
       Module.Query.Sql.Add('       RPC_COFINS    VARCHAR(02) NOT NULL COMMENT "Cod da Situacao Tributaria COFINS" ');
       Module.Query.Sql.Add('     )                                                                                ');
       Module.Query.Sql.Add('COMMENT="Relacionamento entre CFOP, PRODUTO e CST PIS/COFINS"');
       Module.Query.ExecSql;
    end;
    if fNaoAtualizado('Preenche Tabela RELACAO_CFOP_x_PRODUTO_xCST_PISCOFINS_RPC..') Then
       Converte_PROD_CST_PISCOFINS_em_RELACAO_RPC_Para_TPMOV_igual_a_1;

    if fNaoAtualizado('Cadastrar CST_PIS') Then
       Cadastrar_CST_PIS;

    if fNaoAtualizado('Cadastrar CST_COFINS') Then
       Cadastrar_CST_COFINS;

    //01/06/2020
    if fNaoAtualizado('Produto:Margem de Valor Agregado ICMS (MVA)') Then
       Executar('ALTER TABLE PRODUTO ADD NFe_pMVA DECIMAL(6,4) NULL DEFAULT 0 COMMENT "Margem de Valor Agregado ICMS (MVA)" ');

    //01/06/2020
    if fNaoAtualizado('Produto:Indicador de Escala Relevante') Then
       Executar('ALTER TABLE PRODUTO ADD NFe_indEscala INTEGER NULL DEFAULT 2 COMMENT "Indicador de Escala Relevante" ');

    //02/06/2020
    if fNaoAtualizado('Produto:Calcular ST ICMS') Then
       Executar('ALTER TABLE PRODUTO ADD NFe_indEscala INTEGER NULL DEFAULT 2 COMMENT "Indicador de Escala Relevante" ');

    //05/06/2020
    if fNaoAtualizado('RELACAO_CFOP_x_PRODUTO_xCST_PISCOFINS_RPC->TPMOV...') Then
    begin
       Executar('ALTER TABLE RELACAO_CFOP_x_PRODUTO_xCST_PISCOFINS_RPC ADD RPC_TPMOV VARCHAR(20) NOT NULL COMMENT "Cod do Tipo de Movimento" ');
       Executar('update RELACAO_CFOP_x_PRODUTO_xCST_PISCOFINS_RPC set RPC_TPMOV= "1" ');
    end;

    //06/06/2020
    if fNaoAtualizado('EMPRESA: % PIS Cumulativo...') Then
       Executar('ALTER TABLE EMPRESA ADD pPIS_CUMULATIVO DECIMAL(6,4) NULL DEFAULT 0.65 COMMENT "% PIS Cumulativo" ');
    if fNaoAtualizado('EMPRESA: % PIS Não Cumulativo...') Then
       Executar('ALTER TABLE EMPRESA ADD pPIS_NAOCUMULATIVO DECIMAL(6,4) NULL DEFAULT 1.65 COMMENT "% PIS Não Cumulativo" ');

    //08/06/2020
    if fNaoAtualizado('Tabela Rastro do Produto...') Then
    begin
       With Module.Query do
       begin
          Close;
          Sql.Clear;
          Sql.Add('CREATE TABLE RASTRO_RAS ( ');
          Sql.Add('	  RAS_NRPEDIDO  INTEGER      NOT  NULL COMMENT "Nro do movimento (pedido)",           ');
          Sql.Add('	  RAS_CDPRODUTO varchar(20)  NOT  NULL COMMENT "Cod do Produto rastreado",            ');
          Sql.Add('	  RAS_NLOTE     varchar(20)  NULL      COMMENT "Nro do lote do produto",              ');
          Sql.Add('	  RAS_QLOTE     DECIMAL(8,3) NULL      COMMENT "Qtde do produto no lote",             ');
          Sql.Add('	  RAS_DFAB      datetime     NULL      COMMENT "Data de Fabricação do produto/lote",  ');
          Sql.Add('	  RAS_DVAL      datetime     NULL      COMMENT "Data de Validade do produto/lote",    ');
          Sql.Add('	  RAS_CAGREG    varchar(20)  NULL      COMMENT "Código de Agregação"                  ');
          Sql.Add('     )                                                                                     ');
          Sql.Add('COMMENT="Registro de Rastreabilidade de produtos"');
          ExecSql;
       end;
    end;

    //08/06/2020
    if fNaoAtualizado('Tabela de UF...') Then
    begin
       With Module.Query do
       begin
          Close;
          Sql.Clear;
          Sql.Add('CREATE TABLE UF_UF ( ');
          Sql.Add('	  UF_CODIGO     VARCHAR(02)  NOT  NULL COMMENT "Cod / Sigla da UF (Unidade da Federação)(Estado)",');
          Sql.Add('	  UF_ICMS       DECIMAL(4,2) NULL      COMMENT "% Alíquota ICMS",                                 ');
          Sql.Add('	  UF_ICMSST     DECIMAL(4,2) NULL      COMMENT "% Alíquota ICMS ST",                              ');
          Sql.Add('	  UF_PFCP       DECIMAL(4,2) NULL      COMMENT "% Fundo de Combate a Pobreza (FCP)",              ');
          Sql.Add('	  UF_IBGE       VARCHAR(02)  NULL      COMMENT "Cod IBGE da UF% Fundo de Combate a Pobreza (FCP)" ');
          Sql.Add('     )                                                                                                 ');
          Sql.Add('COMMENT="Tabela de UFs e suas características fiscais"');
          ExecSql;
       end;
    end;

    if fNaoAtualizado('PRODUTO: Parâmetro de Rastreabilidade...') Then
       Executar('ALTER TABLE PRODUTO ADD PROD_RASTREAVEL INTEGER NULL DEFAULT 0 COMMENT "Flag de Rastreabilidade (0=Não)(1=Sim)" ');

    //09/06/2020
    if fNaoAtualizado('PRODUTO: Parâmetro de Tratamento de Lote...') Then
       Executar('ALTER TABLE PRODUTO ADD PROD_TRATALOTE INTEGER NULL DEFAULT 0 COMMENT "Flag de Tratamento de Lote (0=Não)(1=Manual)(2-Automático)" ');

    if fNaoAtualizado('PRODUTO: Parâmetro de Tratamento de Número de Série...') Then
       Executar('ALTER TABLE PRODUTO ADD PROD_TRATANUMEROSERIE INTEGER NULL DEFAULT 0 COMMENT "Flag de Tratamento de Número de Série (0=Não)(1=Sim)" ');

    //15/06/2020
    if fNaoAtualizado('Tabela CONTROLE_CTRL') Then
    begin
       With Module.Query do
       begin
          Close;
          Sql.Clear;
          Sql.Add('CREATE TABLE CONTROLE_CTRL (                                                                                                        ');
          Sql.Add('	  CTRL_SEQUENCIAIS_EM_USO INTEGER NOT NULL DEFAULT 0 COMMENT "Status de uso da tabela de SEQUENCIAL_SEQ (0-liberada, 1-em uso)"');
          Sql.Add('     )                                                                                                                              ');
          Sql.Add('COMMENT="Tabela de Controles diversos do sistema"');
          ExecSql;
       end;
    end;

    if fNaoAtualizado('Tabela CTRL_SEQUENCIAIS_EM_USO') Then
    begin
       With Module.Query do
       begin
          Close;
          Sql.Clear;
          Sql.Add('INSERT INTO CONTROLE_CTRL (   ');
          Sql.Add('	  CTRL_SEQUENCIAIS_EM_USO');
          Sql.Add('     )                        ');
          Sql.Add('VALUES (                      ');
          Sql.Add('	  0                      ');
          Sql.Add('     )                        ');
          ExecSql;
       end;
    end;

    if fNaoAtualizado('Tabela SEQUENCIAIS_SEQ') Then
    begin
       With Module.Query do
       begin
          Close;
          Sql.Clear;
          Sql.Add('CREATE TABLE SEQUENCIAIS_SEQ (                                                                   ');
          Sql.Add('	  SEQ_PEDIDO_PED     INTEGER NOT NULL DEFAULT 0 COMMENT "Sequencial da tabela PEDIDO_PED",  ');
          Sql.Add('	  SEQ_PRODUTO_PROD   INTEGER NOT NULL DEFAULT 0 COMMENT "Sequencial da tabela PRODUTO_PROD",');
          Sql.Add('	  SEQ_CLIENTE_CLI    INTEGER NOT NULL DEFAULT 0 COMMENT "Sequencial da tabela CLIENTE_CLI", ');
          Sql.Add('	  SEQ_FORNECEDOR_FOR INTEGER NOT NULL DEFAULT 0 COMMENT "Sequencial da tabela CLIENTE_CLI"  ');
          Sql.Add('     )                                                                                           ');
          Sql.Add('COMMENT="Tabela de Codigos Sequenciais das tabelas do sistema"');
          ExecSql;

          Close;
          Sql.Clear;
          Sql.Add('INSERT INTO SEQUENCIAIS_SEQ ( ');
          Sql.Add('	  SEQ_PEDIDO_PED,        ');
          Sql.Add('	  SEQ_PRODUTO_PROD,      ');
          Sql.Add('	  SEQ_CLIENTE_CLI,       ');
          Sql.Add('	  SEQ_FORNECEDOR_FOR     ');
          Sql.Add('     )                        ');
          Sql.Add('VALUES (                      ');
          Sql.Add('	  0,                     ');
          Sql.Add('	  0,                     ');
          Sql.Add('	  0,                     ');
          Sql.Add('	  0                      ');
          Sql.Add('     )                                                                                           ');
          ExecSql;

       end;
    end;

    if fNaoAtualizado('Tabela PASSOS_PAS') Then
    begin
       With Module.Query do
       begin
          Close;
          Sql.Clear;
          SQL.Add('CREATE TABLE PASSOS_PAS (            ');
          SQL.Add('       PAS_PEDIDO  INTEGER     NULL, ');
          SQL.Add('       PAS_DATA    DATETIME    NULL, ');
          SQL.Add('       PAS_HORA    VARCHAR(05) NULL, ');
          SQL.Add('       PAS_TELA    VARCHAR(30) NULL, ');
          SQL.Add('       PAS_ESTACAO VARCHAR(20) NULL, ');
          SQL.Add('       PAS_USUARIO VARCHAR(10) NULL, ');
          SQL.Add('       PAS_PASSO   VARCHAR(99) NULL) ');
          EXECSQL;
       end;
    end;
    if fNaoAtualizado('Produto: Indicador de Veículo Novo') Then
    begin
       Executar('ALTER TABLE produto ADD NFe_VeiculoNovo INTEGER COMMENT ''Nf ndicador de Veículo Novo (0-Não)(1-Sim)''');
       Executar('UPDATE produto SET NFe_VeiculoNovo = 0 WHERE NFe_VeiculoNovo IS NULL');
    end;

    if fNaoAtualizado('Produto: Converter PRODUTO em PRODUTO_PROD.') then
       Converte_PRODUTO_em_PRODUTO_PROD;

    if fNaoAtualizado('Produto: Converter CODIGO em PROD_CODIGO.') then
       Converte_PRODUTO_CODIGO_em_PROD_CODIGO;

    if fNaoAtualizado('Produto: abandonar CODIGO exclusivamente numérico.') then
       Executar('ALTER TABLE PRODUTO_PROD DROP COLUMN CODIGO');

    Executar('SET FOREIGN_KEY_CHECKS = 0');

    if fNaoAtualizado('Produto: tabela antiga de produtos...') then
       Executar('DROP TABLE PRODUTO');

    if fNaoAtualizado('Produto: CODIGO_BARRAS -> PROD_EAN.........') then
    begin
       Executar('ALTER TABLE PRODUTO_PROD ADD PROD_EAN VARCHAR(20) NULL COMMENT "CODIGO GTIN/EAN Antigo cod barras"');
       Executar('UPDATE PRODUTO_PROD SET PROD_EAN = CODIGO_BARRAS');
       Executar('ALTER TABLE PRODUTO_PROD DROP COLUMN CODIGO_BARRAS');
    end;

    if fNaoAtualizado('Tabela PRODUTO_PROD - unidade_medida -> PROD_UNIDADE') Then
    begin
       Executar('UPDATE produto_prod SET unidade_medida  = "UN" where unidade_medida  = "1"');
       Executar('ALTER TABLE PRODUTO_PROD ADD PROD_UNIDADE VARCHAR(03) NULL COMMENT "Unidade de Medida"');
       Executar('UPDATE PRODUTO_PROD SET PROD_UNIDADE = unidade_medida');
       Executar('ALTER TABLE PRODUTO_PROD DROP COLUMN unidade_medida');
    end;

    //Criar índices...
    if fNaoAtualizado('Tabela PRODUTO_PROD - Índices.') Then
    begin
       Executar('CREATE INDEX idx_PROD_CODIGO   ON PRODUTO_PROD(PROD_CODIGO)   ');
       Executar('CREATE INDEX idx_PROD_EAN      ON PRODUTO_PROD(PROD_EAN)      ');
       //Executar('CREATE INDEX idx_descricao_produto     ON PRODUTO(descricao_produto)     ');
       //Executar('CREATE INDEX idx_NCM                   ON PRODUTO(NCM)                   ');
       //Executar('CREATE INDEX idx_referencia_fabricante ON PRODUTO(referencia_fabricante) ');
    end;

    //Criar índices...
    if fNaoAtualizado('Tabela PRODUTO_UNIDADE -> UNIDADE_UNI') Then
    begin
       Avisa('Criando tabela UNIDADE_UNI');

       //Cria a nova tabela de unidade de medidas
       Q1.close;
       Q1.sql.clear;
       Q1.sql.add('CREATE TABLE UNIDADE_UNI                                                                       ');
       Q1.sql.add('     (                                                                                         ');
       Q1.sql.add('       UNI_CODIGO    VARCHAR(03) NOT NULL UNIQUE     COMMENT "Cod/Sigla da Unidade de medida", ');
       Q1.sql.add('       UNI_DESCRICAO VARCHAR(20) NOT NULL UNIQUE     COMMENT "Descrição da Unidade de medida", ');
       Q1.sql.add('       UNI_DECIMAIS  INTEGER     NOT NULL DEFAULT 0  COMMENT "Nro de casas decimais"           ');
       Q1.sql.add('     )                                                                                         ');
       Q1.sql.add('COMMENT="Tabela de Unidades de Medida"                                                         ');
       Q1.ExecSql;

       // Copia para a nova tabela, sem repetições, as unidades de medida cadastradas
       Q1.close;
       Q1.sql.clear;
       Q1.sql.add('SELECT * FROM PRODUTO_UNIDADE');
       Q1.Open;
       while not Q1.eof do
       begin
          if fUNI_DESCRICAO(Q1.FieldByName('SIGLA').AsString) = '' then
             //unidade não cadastrada - cadastrar
             INSERT_UNIDADE_UNI(Q1.FieldByName('SIGLA').AsString,
                                Q1.FieldByName('NOME' ).AsString,
                                0);
          Q1.Next;
       end;

       //Exclui a tabela antiga
       Executar('DROP TABLE PRODUTO_UNIDADE');
    end;
    if fNaoAtualizado('Tabela UNIDADE_UNI(UNI_DECIMAIS)...') Then
       Executar('UPDATE UNIDADE_UNI SET UNI_DECIMAIS = 3 WHERE UNI_CODIGO = "KG"');

    if fNaoAtualizado('Tabela UNIDADE_UNI(UNI_DESCRICAO)...') Then
    begin
       Executar('UPDATE UNIDADE_UNI SET UNI_DESCRICAO = "QUILOGRAMA" WHERE UNI_CODIGO = "KG"');
       Executar('UPDATE UNIDADE_UNI SET UNI_DESCRICAO = "UNIDADE"    WHERE UNI_CODIGO = "UN"');
    end;

    Executar('SET FOREIGN_KEY_CHECKS = 1');

end;


end.


