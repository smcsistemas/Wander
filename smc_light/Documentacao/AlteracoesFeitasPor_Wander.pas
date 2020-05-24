unit AlteracoesFeitasPor_Wander;

interface

implementation

{Alteracoes feitas por Wander Mendes Martins

Ano 2020
ordem decrescente de data....

================================================================================
| ITEM|DATA  HR|UNIT                |HISTORICO                                 |
|-----|--------|--------------------|------------------------------------------|
|  183|24/05/20|wander              |Tratando ST do ICMS no novo padrão:       |
|     |   10:44|cadastro_produto    |[COD][F1-Pesquisa][Nome][Lupa-Pesquisa]   |
|-----|--------|--------------------|------------------------------------------|
|  182|23/05/20|wander              |CFOP é uma característica do produto na   |
|     |   21:37|cadastro_produto    |operação eo não do produto                |
|     |        |                    |Verificar com o Vitor                     |
|-----|--------|--------------------|------------------------------------------|
|  181|23/05/20|wander              |CSOSN é da empresa e nao do produto       |
|     |   21:37|cadastro_produto    |Verificar com o Vitor                     |
|-----|--------|--------------------|------------------------------------------|
|  180|23/05/20|wander              |Aba Configurações recebeu um botão SAIR   |
|     |   20:51|vw_main             |                                          |
|-----|--------|--------------------|------------------------------------------|
|  179|23/05/20|wander              |Aplicados os botões de Controle padrão    |
|     |   20:12|config_nfe          |                                          |
|-----|--------|--------------------|------------------------------------------|
|  178|23/05/20|wander              |Alterando produto (exceto a parte fiscal  |
|     |   19:35|cadastro_produto    |que será discutida com o Vitor            |
|-----|--------|--------------------|------------------------------------------|
|  177|23/05/20|wander              |Incluido após "end." no rodapé desta unit |
|     |   18:30|AlteracoesFeitasPor_|os comandos do Arquivo backup automático  |
|     |        |Wander              |que faz backup e trata Git e GitHub       |
|-----|--------|--------------------|------------------------------------------|
|  176|23/05/20|wander              |Criada a unit "GIT_Comandos" contendo o   |
|     |   17:15|GIT_Comandos        |manual passo a passo para versionamento   |
|     |        |                    |com Git e GitHub                          |
|-----|--------|--------------------|------------------------------------------|
|  175|23/05/20|wander              |Eliminada a crítica de Referência do Fabri|
|     |   15:31|cadastro_produto    |cante repetida, pois é possível que haja. |
|     |        |                    |Avisa mas não impede.                     |
|-----|--------|--------------------|------------------------------------------|
|  174|23/05/20|wander              |Máquina DEV_PC não mostra mais a msg de   |
|     |   14:02|u_funcoes           |"Certificado Não Encontrado"              |
|-----|--------|--------------------|------------------------------------------|
|  173|23/05/20|wander              |Criado temporizador para pesqusar produto |
|     |   06:17|cadastro_produto    |para pesquisar qdo usuário termina digitar|
|-----|--------|--------------------|------------------------------------------|
|  172|23/05/20|wander              |Percebi que permite gravar subgrupo sem o |
|     |   02:25|cadastro_sub_grupo  |grupo e família associados e que no banco |
|     |        |                    |de dados o autoincremento se aplica apenas|
|     |        |                    |ao código sem associar grupo e família.   |
|     |        |                    |Ou seja, o 1o subgrupo da familia 1 e grup|
|     |        |                    |1 é 1. Mas o 1o subgrupo da familia 1 e   |
|     |        |                    |grupo 2 nao é 1 e sim 2 como abaixo:      |
|     |        |                    |                                          |
|     |        |                    |Se familia e grupo se relacionassem com o |
|     |        |                    |subgrupo, teríamos a situação abaixo:     |
|     |        |                    |-----------------------                   |
|     |        |                    |familia|grupo|subgrupo|  familia, grupo e |
|     |        |                    |   1   |  1  |   1    |  subgrupo sao     |
|     |        |                    |   1   |  2  |   1    |  chaves da tabela |
|     |        |                    |   2   |  1  |   1    |  produtos_subgrupo|
|     |        |                    |-----------------------                   |
|     |        |                    |Observe que o cod do subgrupo se repete   |
|     |        |                    |para familia e/ou grupos diferentes.      |
|     |        |                    |                                          |
|     |        |                    |Entretanto, como família e grupo não se   |
|     |        |                    |relacionam, com subgrupo, temos a seguinte|
|     |        |                    |situação real:                            |
|     |        |                    |------------------------                  |
|     |        |                    |familia|grupo|subgrupo|  apenas o subgrupo|
|     |        |                    |   1   |  1  |   1    |  é chave da tabela|
|     |        |                    |   1   |  2  |   2    |  produtos_subgrupo|
|     |        |                    |   2   |  1  |   3    |                   |
|     |        |                    |------------------------                  |
|     |        |                    |Observe que o cod do subgrupo nunca se    |
|     |        |                    |repete mesmo para familia e/ou grupos     |
|     |        |                    |diferentes.                               |
|     |        |                    |                                          |
|     |        |                    |O fato de familia, grupo e subgrupos serem|
|     |        |                    |desassociados torna muito mais flexível   |
|     |        |                    |tanto o cadastro que evita repeticoes     |
|     |        |                    |desnecessárias quanto da codificacao.     |
|     |        |                    |                                          |
|     |        |                    |Supondo que haja 5 familias, com 5 grupos |
|     |        |                    |cada e cada grupo com 5 subgrupos cada,   |
|     |        |                    |seriam necessários 155 cadastros se estes |
|     |        |                    |campos se relacionassem. Como não se rela-|
|     |        |                    |nam, basta apenas 15 cadastros!!!         |
|     |        |                    |Pois um subgrupo serve a todos os grupos e|
|     |        |                    |famílias que se desejar.                  |
|-----|--------|--------------------|------------------------------------------|
|  171|23/05/20|wander              |Tabela FAMILIA apagada do banco de dados e|
|     |   02:25|cadastro_sub_grupo  |substituida p/PRODUTO_FAMILIA já existente|
|-----|--------|--------------------|------------------------------------------|
|  170|23/05/20|wander              |Tabela FAMILIA apagada do banco de dados e|
|     |   02:25|cadastro_grupo      |substituida p/PRODUTO_FAMILIA já existente|
|-----|--------|--------------------|------------------------------------------|
|  169|23/05/20|wander              |Passa a retornar código da subgrupo se foi|
|     |   02:01|cadastro_sub_grupo  |selecionado subgrupomarca ou vazio se não |
|-----|--------|--------------------|------------------------------------------|
|  168|23/05/20|wander              |Aplicados os botões de Controle padrão    |
|     |   02:01|cadastro_sub_grupo  |                                          |
|-----|--------|--------------------|------------------------------------------|
|  167|23/05/20|wander              |Padronizado tamanho do form               |
|     |   02:01|cadastro_sub_grupo  |Width 501 Heigth 350 e pnControles.Top=273|
|-----|--------|--------------------|------------------------------------------|
|  166|23/05/20|wander              |Padronizado tamanho do form               |
|     |   02:01|cadastro_grupo      |Width 501 Heigth 350 e pnControles.Top=273|
|-----|--------|--------------------|------------------------------------------|
|  165|23/05/20|wander              |Padronizado tamanho do form               |
|     |   02:01|cadastro_familia    |Width 501 Heigth 350 e pnControles.Top=273|
|-----|--------|--------------------|------------------------------------------|
|  164|23/05/20|wander              |Padronizado tamanho do form               |
|     |   02:01|cad_marca           |Width 501 Heigth 350 e pnControles.Top=273|
|-----|--------|--------------------|------------------------------------------|
|  163|22/05/20|wander              |Passa a retornar o código da grupo se foi |
|     |   17:10|cadastro_grupo      |selecionada uma marca ou vazio se não     |
|-----|--------|--------------------|------------------------------------------|
|  162|22/05/20|wander              |Aplicados os botões de Controle padrão    |
|     |   16:54|cadastro_grupo      |                                          |
|-----|--------|--------------------|------------------------------------------|
|  161|22/05/20|wander              |Aplicados os botões de Controle padrão    |
|     |   09:59|cadastro_familia    |                                          |
|-----|--------|--------------------|------------------------------------------|
|  160|22/05/20|wander              |Deixou de tratar tabela FAMILIA e passou a|
|     |   09:42|cadastro_familia    |tratar a tab PRODUTO_FAMILIA já existente |
|-----|--------|--------------------|------------------------------------------|
|  159|22/05/20|wander              |Tabela FAMILIA apagada do banco de dados e|
|     |   09:39|Atualizador         |substituida p/PRODUTO_FAMILIA já existente|
|-----|--------|--------------------|------------------------------------------|
|  158|22/05/20|wander              |Passa a retornar o código da família se   |
|     |   05:53|cadastro_familia    |selecionada uma marca ou vazio se não     |
|-----|--------|--------------------|------------------------------------------|
|  157|22/05/20|wander              |Aplicadas as proced pode_Alterar_Incluir e|
|     |   01:48|cad_cliente_2       |pode_Cancelar_Gravar                      |
|-----|--------|--------------------|------------------------------------------|
|  156|22/05/20|wander              |Aplicadas as proced pode_Alterar_Incluir e|
|     |   01:48|cadastro_produto    |pode_Cancelar_Gravar                      |
|-----|--------|--------------------|------------------------------------------|
|  155|22/05/20|wander              |Aplicadas as proced pode_Alterar_Incluir e|
|     |   01:40|cad_marca           |pode_Cancelar_Gravar                      |
|-----|--------|--------------------|------------------------------------------|
|  154|22/05/20|wander              |Criadas procedures pode_Alterar_Incluir e |
|     |   01:37|u_funcoes           |pode_Cancelar_Gravar para habilitar e desa|
|     |        |                    |bilitar os botoes de controle padrão      |
|-----|--------|--------------------|------------------------------------------|
|  153|22/05/20|wander              |Aplicados os botões de Controle padrão    |
|     |   01:21|cad_marca           |                                          |
|-----|--------|--------------------|------------------------------------------|
|  152|22/05/20|wander              |Passa a retornar o código da marca se foi |
|     |   01:02|cad_marca           |selecionada uma marca ou vazio se não     |
|-----|--------|--------------------|------------------------------------------|
|  151|22/05/20|wander              |Criada procedure HabilitaBotoes que habili|
|     |   00:40|u_funcoes           |ta/Desabilia botões de controle (INS/ALT/ |
|     |        |                    |CANC/GRAVAR) das telas de cadastro        |
|-----|--------|--------------------|------------------------------------------|
|  150|21/05/20|wander              |Criado Código Alfanumérico Alternativo na |
|     |   20:21|Atualizador         |tabela PRODUTO (CODIGO_ALFANUMERICO) com  |
|     |        |                    |20 caracteres para permitir cod alfa.     |
|-----|--------|--------------------|------------------------------------------|
|  149|21/05/20|wander              |Criada procedure LimpaTela que recebe um  |
|     |   19:11|u_funcoes           |Tform e limpa todos os seus campos e      |
|     |        |                    |objetos                                   |
|-----|--------|--------------------|------------------------------------------|
|  148|21/05/20|wander              |Cadastros->Produtos>Cadastrar Produtos    |
|     |   18:22|vw_main             |mudou pra Cadastros->Estoque->Produtos    |
|-----|--------|--------------------|------------------------------------------|
|  147|21/05/20|wander              |Padronizados os botões de controle (INS/  |
|     |   07:36|cad_cliente_2       |ALT/CAN/GRAV) e uso proc HabilitarPanels  |
|-----|--------|--------------------|------------------------------------------|
|  146|21/05/20|wander              |Padronizados os botões de controle (INS/  |
|     |   07:36|cadastro_produto    |ALT/CAN/GRAV) e uso proc HabilitarPanels  |
|-----|--------|--------------------|------------------------------------------|
|  145|21/05/20|wander              |Padronizados os botões de controle (INS/  |
|     |   07:36|vw_tipoDeMovimento  |ALT/CAN/GRAV) e uso proc HabilitarPanels  |
|-----|--------|--------------------|------------------------------------------|
|  144|21/05/20|wander              |Criado procedure HabilitarPanels q recebe |
|     |   07:32|u_funcoes           |um Tform e torna todos os TPanels enabled |
|     |        |                    |ou Disabled em função de um parâmetro     |
|     |        |                    |booleano passado como parâmetro. Esta pro-|
|     |        |                    |cedure também padroniza o panel e botões  |
|     |        |                    |de controle (INS/ALT/CAN/GRAV) do form.   |
|-----|--------|--------------------|------------------------------------------|
|  143|20/05/20|wander              |Aplicado novo conceito de campos de       |
|     |   06:44|cadastro_produto    |campos de pesquisa que passam a mostrar o |
|     |        |                    |código na tela  permitindo que o usuário  |
|     |        |                    |digite o código sem precisar consultar.   |
|-----|--------|--------------------|------------------------------------------|
|  142|20/05/20|wander              |Objetos TDBEdit substituídos por TEdit    |
|     |   06:13|cadastro_produto    |para que a tela não fique linkada em tempo|
|     |        |                    |real com o banco de dados.                |
|-----|--------|--------------------|------------------------------------------|
|  141|18/05/20|wander              |Passa a pedir usuário e senha de adm para |
|     |   13:37|Atualizador         |executar o Atualizador da Base de Dados   |
|     |        |                    |caso o usuário logado n seja adm ou MASTER|
|-----|--------|--------------------|------------------------------------------|
|  140|18/05/20|wander              |Criada aba Parâmetros Fiscais que define  |
|     |   08:00|vw_tipoDeMovimento  |quais grupos da NFe devem ser tratados    |
|-----|--------|--------------------|------------------------------------------|
|  139|14/05/20|wander              |Criada Consulta de Tipo de Movimento.     |
|     |   10:53|venda_pedido        |Este campo passa a ser obrigatório para   |
|     |        |                    |gravar a venda e para emitir NFe.         |
|-----|--------|--------------------|------------------------------------------|
|  138|14/05/20|wander              |Venda_Tipo foi substituido por VENDA_TPMOV|
|     |   10:53|venda_pedido        |Venda_Tipo era muito restrito enquanto    |
|     |        |                    |VENDA_TPMOV permite mais flexibilidade,   |
|     |        |                    |pois o usuário pode escolher qualquer um  |
|     |        |                    |tipos de movimento cadastrados.           |
|-----|--------|--------------------|------------------------------------------|
|  137|14/05/20|wander              |Acertando a mecânica da tela do cad tipo  |
|     |   08:47|vw_tipoDeMovimento  |de movimento                              |
|-----|--------|--------------------|------------------------------------------|
|  136|14/05/20|wander              |Recebeu parâmetro TPMOV_FINALIDADE        |
|     |   08:01|vw_tipoDeMovimento  |Indicador Finalidade do Doc Fiscal        |
|-----|--------|--------------------|------------------------------------------|
|  135|14/05/20|wander              |Recebeu parâmetro TPMOV_EMITENF           |
|     |   08:01|vw_tipoDeMovimento  |Indicador de emissão de Doc Fiscal        |
|-----|--------|--------------------|------------------------------------------|
|  134|14/05/20|wander              |Alterando o tipos de dados de algumas colu|
|     |   07:54|Atualizador         |nas: TPMOV_EMITENF                        |
|-----|--------|--------------------|------------------------------------------|
|  133|13/05/20|wander              |Só exibe e exige que o usuário preencha o |
|     |   10:44|vw_Login            |campo EMPRESA se existir filiais cadastra-|
|     |        |                    |das.                                      |
|-----|--------|--------------------|------------------------------------------|
|  132|13/05/20|wander              |Criada a função PossuiFiliais que retorna |
|     |   10:28|u_funcoes           |TRUE se há mais de uma empresa cadastrada |
|     |        |                    |no SMC, e FALSE se não                    |
|-----|--------|--------------------|------------------------------------------|
|  131|11/05/20|wander              |A função RegistraLog passoua salvar o cód.|
|     |   19:22|u_funcoes           |da empresa associada ao evento (log)      |
|     |        |                    |Coluna LOG_EMPRESA                        |
|-----|--------|--------------------|------------------------------------------|
|  130|11/05/20|wander              |A função RegistraLog passou a criar a     |
|     |   19:12|u_funcoes           |coluna LOG_EMPRESA na taleba LOG_LOG      |
|     |        |                    |caso não exista. Esta coluna armazenará o |
|     |        |                    |luna O CÓDIGO                             |
|-----|--------|--------------------|------------------------------------------|
|  129|11/05/20|wander              |Passou a gravar na tabela Cliente e a exi-|
|     |   18:12|cad_cliente_2       |bir na tela a empresa/filial que cadastrou|
|     |        |                    |e que fez a última alteração no cad cli   |
|-----|--------|--------------------|------------------------------------------|
|  128|11/05/20|vw_Login            |Passou a pedir a Filial e a atualizar a   |
|     |   15:12|                    |variável Global_Filial_Em_Uso             |
|     |        |                    |para controlar a Filial ativa (em uso)    |
|-----|--------|--------------------|------------------------------------------|
|  127|11/05/20|u_funcoes           |Criada variável Global_Filial_Em_Uso      |
|     |   15:09|                    |para controlar a Filial ativa (em uso)    |
|-----|--------|--------------------|------------------------------------------|
|  126|05/05/20|cad_cliente_2       |Pintar as linhas do grid de consulta      |
|     |   22:10|                    |Clientes ativos aparecerão em verde       |
|     |        |                    |Clientes inativos aparecerão em vermelho  |
|-----|--------|--------------------|------------------------------------------|
|  125|05/05/20|cad_cliente_2       |A consulta passa a procurar nome, razao   |
|     |   21:24|                    |social, nome fantasia, cpf, cnpj, rg, ie, |
|     |        |                    |telefone, sem a necessidade do usuário    |
|     |        |                    |selecionar o filtro correspondente        |
|-----|--------|--------------------|------------------------------------------|
|  124|05/05/20|cad_cliente_2       |Ao selecionar o tipo de pessoa (fisica ou |
|     |   19:22|                    |jurídica) clicando no tRadioGroup criado  |
|     |        |                    |pelo item 122, as TableSheets do          |
|     |        |                    |TPageControl (física/jurídica) se excluem |
|     |        |                    |mutuamente.                               |
|-----|--------|--------------------|------------------------------------------|
|  123|05/05/20|cad_cliente_2       |Eliminadas as sobreposições dos grupos    |
|     |   19:22|                    |Pessoa Física e Pessoa Jurídica. Substi-  |
|     |        |                    |dos por um TPageControl com duas Table-   |
|     |        |                    |Sheets: Pessoa Física e Pessoa Jurídica   |
|-----|--------|--------------------|------------------------------------------|
|  122|05/05/20|cad_cliente_2       |Os dois botões (Pessoa Física) e (Pessoa  |
|     |   19:22|                    |Jurídica) foram substituídos por um TRadio|
|     |        |                    |group com as opções Física e Jurídica     |
|-----|--------|--------------------|------------------------------------------|
|  121|05/05/20|cad_cliente_2       |Inicio da Implementação do código de cad  |                                          |
|     |   18:28|                    |cliente no novo layout                    |
=========================================================================================

=========================================================================================
|ITEM |DATA |UNIT / FILE         |HISTORICO                                             |
|-----|-----|--------------------|---------------------------------------------|
|  120|27/04|Atualizador         |Criada tabela VENDA_INFORM_COMPL_VIC para    |
|     |09:18|                    |armazenar texto de Informações Complementares|
|     |     |                    |da NFe                                       |
|-----|-----|--------------------|---------------------------------------------|
|  119|27/04|Atualizador         |Criadas colunas p/ detalhes de volumes da NFe|
|     |06:25|                    |                                             |
|-----|-----|--------------------|---------------------------------------------|
|  118|27/04|vw_cliente          |Criada coluna ID_REGIAO na tabela            |
|     |00:10|                    |Cliente_Endereco                             |
|-----|-----|--------------------|---------------------------------------------|
|  117|26/04|cad_regiao          |Implemento o código de cadastro de regiões   |
|     |20:45|                    |                                             |
|-----|-----|--------------------|---------------------------------------------|
|  116|26/04|Atualizador         |Implemento o código de Cadasttela            |
|     |18:00|                    |                                             |
|-----|-----|--------------------|---------------------------------------------|
|  115|20/04|vw_cliente          |Passou mostrar dados do bloqueio             |
|     |07:30|                    |                                             |
|-----|-----|--------------------|---------------------------------------------|
|  114|26/04|u_funcoes           |Criada unit/form para listar o histórico     |
|     |05:21|CLIENTE_HISTORICO   |de bloqueios/desbloqueios do cadastro de um  |
|     |     |      _BLOQUEIOS_CHB|Cliente                                      |
|-----|-----|--------------------|---------------------------------------------|
|  113|26/04|Atualizador         |Criadas colunas para registrar dados da      |
|     |03:30|                    |alteração cadastral do cliente.              |
|-----|-----|--------------------|---------------------------------------------|
|  112|26/04|Atualizador         |Criada tabela para registrar o histórico de  |
|     |03:00|                    |bloqueios e desbloqueios do cliente.         |
|-----|-----|--------------------|---------------------------------------------|
|  111|26/04|Atualizador         |Criadas colunas para registrar dados do      |
|     |03:00|                    |bloqueio do cliente.                         |
|-----|-----|--------------------|---------------------------------------------|
|  110|25/04|Atualizador         |Criada coluna ID_CAD_RAMO_ATIVIDADE para     |
|     |07:00|                    |armazenar o código do Ramo de Atividade do   |
|     |     |                    |cliente                                      |
|-----|-----|--------------------|---------------------------------------------|
|  109|25/04|cad_atividade       |Eliminado bug na coluna STATUS que impedia   |
|     |06:50|                    |consultas, inserção e edição                 |
|-----|-----|--------------------|---------------------------------------------|
|  108|24/04|Wander              |Criada tabela VENDA_LACRE_VLAC para armazenar|
|     |06:00|                    |dados dos lacres associados a um movimento   |
|-----|-----|--------------------|---------------------------------------------|
|  107|24/04|Wander              |Tratamento Transportador                     |
|     |00:30|                    |                                             |
|-----|-----|--------------------|---------------------------------------------|
|  106|24/04|Atualizador         |Incluida coluna Transportador na tabela Venda|
|     |00:00|                    |                                             |
|-----|-----|--------------------|---------------------------------------------|
|  105|23/04|Atualizador         |Incluída col Contribuinte_do_ICMS na tabela  |
|     |19:57|                    |Transportador (S=Sim, N=Não)                 |
|-----|-----|--------------------|---------------------------------------------|
|  104|23/04|cad_servico         |Criados LOGS para cadastro de serviços       |
|     |06:50|                    |                                             |
|-----|-----|--------------------|---------------------------------------------|
|  103|23/04|cad_servico         |Aplicada auditoria no cadastro de serviços   |
|     |06:40|                    |                                             |
|-----|-----|--------------------|---------------------------------------------|
|  102|23/04|cad_servico         |Aplicados controles de acesso para cadastro  |
|     |06:05|                    |de serviços                                  |
|-----|-----|--------------------|---------------------------------------------|
|  101|23/04|Atualizador         |Criados controles de acesso para cadastro de |
|     |06:05|                    |serviços                                     |
|-----|-----|--------------------|---------------------------------------------|
|**101|23/04|cad_servico         |Tratamento da STATUS_CADASTRAL Ativo/Inaivo  |
|     |05:30|                    |                                             |
|-----|-----|--------------------|---------------------------------------------|
|  100|22/04|cad_servico         |Implemtação do cadastro de serviços          |
|     |22:20|                    |                                             |
|-----|-----|--------------------|---------------------------------------------|
|   99|22/04|Atualizador         |Incluida coluna CentroDeCustos               |
|     |18:05|                    |na tabela Produto                            |
|-----|-----|--------------------|---------------------------------------------|
|   98|22/04|cad_plano_contas    |Criada consulta do plano de contas           |
|     |14:08|                    |                                             |
|-----|-----|--------------------|---------------------------------------------|
|   97|22/04|Atualizador         |Incluida coluna ContaContabil                |
|     |14:17|                    |na tabela Produto                            |
|-----|-----|--------------------|---------------------------------------------|
|   96|22/04|Atualizador         |Incluida coluna Produto_ou_Servico           |
|     |07:40|                    |na tabela Produto, indicando se o mesmo é um |
|     |     |                    | Produto (P) ou Serviço (S)                  |
|-----|-----|--------------------|---------------------------------------------|
|   95|22/04|EmissaoDeNFe        |Tratamento de Totais da NFe                  |
|     |07:00|                    |                                             |
|-----|-----|--------------------|---------------------------------------------|
|   94|21/04|EmissaoDeNFe        |Tratamento de COFINS_ST                      |
|     |17:00|                    |                                             |
|-----|-----|--------------------|---------------------------------------------|
|   93|20/04|cadastro_empresa    |Passou a tratar a nova coluna pCOFINS        |
|     |17:30|                    |(aliquota de COFINS)                         |
|-----|-----|--------------------|---------------------------------------------|
|   92|20/04|EmissaoDeNFe        |Tratamento de COFINS                         |
|     |17:00|                    |                                             |
|-----|-----|--------------------|---------------------------------------------|
|   91|20/04|Atualizador         |Incluida coluna pCOFINS (aliquota de COFINS) |
|     |16:50|                    |na tabela Empresa                            |
|-----|-----|--------------------|---------------------------------------------|
|   90|20/04|EmissaoDeNFe        |Tratamento de Importação                     |
|     |09:30|                    |                                             |
|-----|-----|--------------------|---------------------------------------------|
|   89|20/04|EmissaoDeNFe        |Tratamento de IPI (indicação)                |
|     |07:30|                    |                                             |
|-----|-----|--------------------|---------------------------------------------|
|   88|20/04|vw_cliente          |Eliminadas procedures não usadas.            |
|     |07:30|                    |                                             |
|-----|-----|--------------------|---------------------------------------------|
|   87|18/04|vw_cliente          |Tratando banco                               |
|     |04:30|                    |                                             |
|-----|-----|--------------------|---------------------------------------------|
|   86|16/04|vw_cliente          |Tratando endereços e contatos do cliente     |
|     |09:40|                    |                                             |
|-----|-----|--------------------|------------------------------------------------------|
|   85|16/04|U_Municipio         |Não estava encontrando a cidade de Itajubá/MG|
|     |06:35|                    |Alterado script de consulta da SQL_MUNICIPIO |
|     |     |                    |para tratar corretamente as tabelas          |
|     |     |                    |endereco_estado e endereco_municipio para    |
|     |     |                    |localizar qualquer cidade cadastrada         |
|-----|-----|--------------------|------------------------------------------------------|
|   84|09/04|vw_cliente          |Tratando botões do cad de endereço. Quando clica em   |
|     |     |                    |incluir ou alterar cliente,                           |
|     |     |                    |estes botões são habilitados. Ao salvar ou cancelar,  |
|     |     |                    |são desabilitados novamente.                          |
|-----|-----|--------------------|------------------------------------------------------|
|   83|09/04|vw_cliente          |Grupo Pessoa Física que sobrepoe o Grupo Pessoa       |
|     |     |                    |Jurídica na aba de cadastro passa a se posicionar     |
|     |     |                    |corretamente onde deve ficar, em tempo de execucao,   |
|     |     |                    |facilitando o manuseio do codigo durante sua edição / |
|     |     |                    |programação.                                          |
|-----|-----|--------------------|------------------------------------------------------|
|   82|09/04|vw_cliente          |Estava tratando endereco da tabela de cliente e nao da|
|     |     |                    |tabela de cliente_endereco                            |
|-----|-----|--------------------|------------------------------------------------------|
|   81|09/04|vw_cliente          |Não estava tratando corretamente o codigo_Cidade-IBGE |
|-----|-----|--------------------|------------------------------------------------------|
|   80|09/04|vw_cliente          |Não estava tratando corretamente o codigo_UF-IBGE     |
|-----|-----|--------------------|------------------------------------------------------|
|   79|09/04|vw_cliente          |Não havia a tabela Cliente_Endereco                   |
|-----|-----|--------------------|------------------------------------------------------|
|   78|09/04|vw_cliente          |Não havia a tabela Cliente_Banco                      |
|-----|-----|--------------------|------------------------------------------------------|
|   77|09/04|vw_cliente          |O nome fantasia não aparecia na tela de cadastro para |
|     |     |                    |alterar                                               |
|-----|-----|--------------------|------------------------------------------------------|
|   76|09/04|vw_cliente          |O nome fantasia não aparecia no grid de consulta      |
|-----|-----|--------------------|------------------------------------------------------|
|   75|09/04|vw_cliente          |Os campos edit/maskedit como o CNPJ/CPF não eram      |
|     |     |                    |"limpos" ao clicar em INCLUIR                         |
|     |     |                    |permanecendo os dados do último cliente na tela de um |
|     |     |                    |novo cliente                                          |
|-----|-----|--------------------|------------------------------------------------------|
|   74|09/04|vw_cliente          |Antes, ao selecionar um cliente já entrava em modo de |
|     |     |                    |edicao (alteracao)                                    |
|     |     |                    |Modificado para entrar em modo de consulta.           |
|     |     |                    |Para alterar é preciso clicar no botao Alterar.       |
|-----|-----|--------------------|------------------------------------------------------|
|   73|09/04|vw_cliente          |Passou a consultar cliente com duplo clique na lista  |
|     |     |                    |de clientes                                           |
|-----|-----|--------------------|------------------------------------------------------|
|   72|09/04|vw_cliente          |Não permitia percorrer o grid da consulta de clientes.|
|     |     |                    |Ao clicar no grid já selecionava e editava o cliente  |
|-----|-----|--------------------|------------------------------------------------------|
|   71|09/04|vw_cliente          |Não estava tratando SUFRAMA. Estava colocando o nome  |
|     |     |                    |FANTASIA no campo SUFRAMA                             |
|-----|-----|--------------------|------------------------------------------------------|
|   70|09/04|vw_cliente          |Não estava gravando o status_cadastral Ativo/inativo  |
|-----|-----|--------------------|------------------------------------------------------|
|   69|09/04|vw_cliente          |Tratando codigo UF e Municipio apos recuperar dados   |
|     |     |                    |pelo CNPJ (rec.federal)                               |
|-----|-----|--------------------|------------------------------------------------------|
|   68|08/04|vw_cliente          |Consultando dados do Cliente pelo CNPJ (Rec.Federal)  |
|-----|-----|--------------------|------------------------------------------------------|
|   67|02/04|EmissaoDeNFe        |Implementado todo o tratamento de ICMS                |
|     |08/04|                    |                                                      |
|-----|-----|--------------------|------------------------------------------------------|
|   66|02/04|Atualizador         |Incluidos várias colunas na tabela venda para tratar  |
|     |     |                    |notas fiscais e cupons fiscais referenciados          |
|-----|-----|--------------------|------------------------------------------------------|
|   65|02/04|Atualizador         |Incluido parâmetro "Contribuinte do ICMS" (S/N)       |
|     |     |                    |na tabela empresa                                     |
|-----|-----|--------------------|------------------------------------------------------|
|   64|02/04|m_empresa           |Incluido parâmetro "Contribuinte do ICMS" (S/N)       |
|-----|-----|--------------------|------------------------------------------------------|
|   63|02/04|cadastro_empresa    |Incluido parâmetro "Contribuinte do ICMS" (S/N)       |
|-----|-----|--------------------|------------------------------------------------------|
|   62|02/04|cadastro_empresa    |Obriga razao social <= 60 caracteres                  |
|     |     |                    |(Limite imposto pela SEFAZ para a emissão de NFe)     |
|-----|-----|--------------------|------------------------------------------------------|
|   61|01/04|vw_tipoDeMovimento  |Incluido tratamento da situacao (ativo/inativo) do    |
|     |     |                    |Tipo de Movimento                                     |
|-----|-----|--------------------|------------------------------------------------------|
|   60|31/03|vw_main             |Incluida chamada para o cadastro de tipo de movimento |
|     |     |                    |pois havia desaparecido nas ações do git              |
|-----|-----|--------------------|------------------------------------------------------|
|   59|31/03|vw_tipoDeMovimento  |Passou a tratar o Indicador Presencial do Cliente     |
|     |     |                    |                                                      |
|-----|-----|--------------------|------------------------------------------------------|
|   58|31/03|EmissaoDeNFe        |Passou a configurar idDest (interna, interestadual,   |
|     |     |                    |exterior) a partir da tabela Natureza_Operacao e não  |
|     |     |                    |mais da tabela TipoMovimento_TpMov                    |
|-----|-----|--------------------|------------------------------------------------------|
|   57|31/03|vw_natureza_op      |Passou a tratar ESTADO = 'EXTERIOR'                   |
|-----|-----|--------------------|------------------------------------------------------|
|   56|31/03|m_Natureza_Op       |Passou a tratar ESTADO = 'EXTERIOR'                   |
|-----|-----|--------------------|------------------------------------------------------|
|   55|31/03|Atualizador         |Alterada a coluna ESTADO da tabela Natureza_Operacao  |
|     |     |                    |para aceitar EXTERIOR                                 |
|-----|-----|--------------------|------------------------------------------------------|
|   54|30/03|Atualizador         |Criada coluna CFOP na tabela venda_item               |
|-----|-----|--------------------|------------------------------------------------------|
|   53|30/03|venda_pedido        |O tipo de venda passou a vir da tabela venda          |
|     |     |                    |coluna venda_tipo                                     |
|-----|-----|--------------------|------------------------------------------------------|
|   52|30/03|Atualizador         |Criada coluna venda_tipo na tabela venda identificar  |
|     |     |                    |orçamentos, vendas NFe, vendas NFCe, Consignadas, etc |
|-----|-----|--------------------|------------------------------------------------------|
|   51|28/03|venda_pedido        |Exibindo itens do movimento                           |
=========================================================================================

ordem crescente de data....
=========================================================================================
|ITEM |DATA |UNIT / FILE         |HISTORICO                                             |
|-----|-----|--------------------|------------------------------------------------------|
|   01|20/02|u_funcoes           |Transportadas p/esta unit todas as funções que haviam |
|     |     |                    |sido desenvolvidas para o projeto que iria substitui  |
|     |     |                    |este. Encontram-se reunidas em um mesmo local no corpo|
|     |     |                    |da unit.                                              |
|-----|-----|--------------------|------------------------------------------------------|
|   02|21/02|M_Usuario	         |function TUsuario.Login:                              |
|     |     |                    |Criado usuário MASTER e senha PIPOCA                  |
|-----|-----|--------------------|------------------------------------------------------|
|   03|21/02|ZIP_BACKUP.BAT      |Alterado o arquivo de lote (.bat) de backup para      |
|     |     |                    |incluir versionamento git                             |
|-----|-----|--------------------|------------------------------------------------------|
|   04|21/02|u_funcoes           |Criada a function UsuarioMASTER que retorna true se o |
|     |     |                    |usuário logado é o MASTER e false em caso contrário   |
|-----|-----|--------------------|------------------------------------------------------|
|   05|21/02|u_funcoes           |A variável "public_Usuario_Logado" passou a se chamar |
|     |     |                    |Global_Usuario_Logado seguindo o padrão já existente. |
|-----|-----|--------------------|------------------------------------------------------|
|   06|21/02|vw_Login            |Passou a atualizar a variável Global_Usuario_Logado.  |
|-----|-----|--------------------|------------------------------------------------------|
|   07|21/02|vw_main             |Botão “Atualização” passa a permitir que apenas o     |
|     |     |                    |usuário Master o execute.                             |
|-----|-----|--------------------|------------------------------------------------------|
|   08|21/02|vw_cliente          |Passou a criticar se o usuário tem permissão para     |
|     |     |                    |incluir clientes.                                     |
|-----|-----|--------------------|------------------------------------------------------|
|   09|21/02|Atualizador         |Passou a verificar a existência da tabela de controle |
|     |     |                    | ATUALIZADO_ATU.                                      |
|-----|-----|--------------------|------------------------------------------------------|
|   10|21/02|AlteracoesFeitasPor_|Criada a unit "AlteracoesFeitasPor_Wander" (esta) para|
|     |     |Wander              |registrar todas as alterações no sistema realizadas   |
|     |     |                    |pelo desenvolvedor Wander Mendes Martins.             |
|-----|-----|--------------------|------------------------------------------------------|
|   11|21/02|Banco Dados         |Usuário e senha foram criptografados.                 |
|-----|-----|--------------------|------------------------------------------------------|
|   12|21/02|M_Usuario           |Passou a tratar usuário e senha de forma criptografada|
|-----|-----|--------------------|------------------------------------------------------|
|   13|21/02|vw_cliente          |Passou a criticar se o usuário tem permissão para     |
|     |     |                    |alterar dados de clientes.                            |
|-----|-----|--------------------|------------------------------------------------------|
|   14|21/02|vw_cliente          |Passou a criticar se o usuário tem permissão para     |
|     |     |                    |excluir clientes.                                     |
|-----|-----|--------------------|------------------------------------------------------|
|   15|21/02|liberacao           |Passou a tratar dados criptografados do usuário.      |
|-----|-----|--------------------|------------------------------------------------------|
|   16|21/02|cadastro_colaborador|Passou a criticar se o usuário tem permissão para     |
|     |     |                    |incluir/alterar/cancelar colaboradores.               |
|-----|-----|--------------------|------------------------------------------------------|
|   17|21/02|M_usuario           |Passou a registrar log de "acesso ao sistema" e de    |
|     |     |                    |senha inválida.                                       |
|-----|-----|--------------------|------------------------------------------------------|
|   18|21/02|vw_main             |Passou a registrar log de usuário "saiu do sistema"   |
|-----|-----|--------------------|------------------------------------------------------|
|   19|21/02|ZIP_BACKUP.BAT      |Acertado o versionamento automático e incluido hh:mm  |
|     |     |                    |no nome do arquivo 7z. de backup                      |
|-----|-----|--------------------|------------------------------------------------------|
|   20|22/02|Auditoria           |Criado Timer para não registrar as consultas parciais |
|     |     |                    |no nome do arquivo 7z. de backup                      |
|     |     |                    |Ex: PRODUTO, registrava P, PR, PRO, PROD, PRODU...    |
|     |     |                    |Agora há uma espera de 3 segundos para avaliar se o   |
|     |     |                    |texto argumento de pesquisa mudou, dando tempo para o |
|     |     |                    |usuário escrever a palavra toda (PRODUTO) e somente   |
|     |     |                    |entao regisrar o log                                  |
|-----|-----|--------------------|------------------------------------------------------|
|   21|05/03|Atualizador         |Criada coluna ACC_DESCRICAO na tabela ACESSOS_ACC     |
|-----|-----|--------------------|------------------------------------------------------|
|   22|06/03|venda_pedido        |Criado procedimento "BuscarVenda" para listar na tela |
|     |     |                    |todos os pedidos para emissão de NFe/NFCe             |
|-----|-----|--------------------|------------------------------------------------------|
|   23|06/03|u_funcoes           |Criada a função Float_to_String para padronizar a     |
|     |     |                    |do tipo real para string formatada 9.999,99           |
|-----|-----|--------------------|------------------------------------------------------|
|   24|06/03|venda_pedido        |Duplo click no grid para abrir a venda                |
|     |     |                    |(Copiado da unit venda_mercadoria)                    |
|-----|-----|--------------------|------------------------------------------------------|
|   25|14/03|EmissaoDeNFe        |Criada esta unit/form para concentrar todo o processo |
|     |     |                    |de emissão de documentos fiscais e poder atender a    |
|     |     |                    |qualquer parte do sistema que precise emitir doc fisc |
|-----|-----|--------------------|------------------------------------------------------|
|   26|16/03|EmissaoDeNFe        |Passou a tratar a variavel global g_Numero_do_Pedido  |
|     |     |                    |c/o nro do movimento p/o qual será emitido doc fiscal |
|-----|-----|--------------------|------------------------------------------------------|
|   27|16/03|Emissor_nfe         |Passou a chamar a rotina de tratamento de documentos  |
|     |     |                    |fiscais usando a variavel global g_Numero_do_Movimento|
|     |     |                    |c/ o nro do movimento p/o qual será emitido doc fiscal|
|-----|-----|--------------------|------------------------------------------------------|
|   28|16/03|global_variables    |Criada esta unit para concentrar todas as variáveis   |
|     |     |                    |globais do sistema                                    |
|-----|-----|--------------------|------------------------------------------------------|
|   29|19/03|EmissaoDeNFe        |Emitiu a primeira NFe pelo SMC                        |
|-----|-----|--------------------|------------------------------------------------------|
|   30|21/03|Atualizador         |Criada tabela tipo de movimento TIPOMOVIMENTO_TPMOV   |
|-----|-----|--------------------|------------------------------------------------------|
|   31|21/03|Atualizador         |Criada coluna VENDA_TPMOV na tabela VENDA             |
|-----|-----|--------------------|------------------------------------------------------|
|   32|21/03|Atualizador         |Criado tipo de movimento V=Venda                      |
|-----|-----|--------------------|------------------------------------------------------|
|   33|21/03|EmissaoDeNFe        |Passou a ler dados do Cliente ou do Fornecedor como   |
|     |     |                    |Destinatário em função de parâmetros do tipo de movim |
|-----|-----|--------------------|------------------------------------------------------|
|   34|21/03|EmissaoDeNFe        |Passou a aplicar a natureza da operacao na NFe em     |
|     |     |                    |função de parâmetros do tipo de movimento             |
|-----|-----|--------------------|------------------------------------------------------|
|   35|21/03|EmissaoDeNFe        |Passou a aplicar a tipo de NFe (entrada ou saída) em  |
|     |     |                    |função de parâmetros do tipo de movimento             |
|-----|-----|--------------------|------------------------------------------------------|
|   36|22/03|vw_tipoDeMovimento  |Criada esta unit/form p/ cadastrar tipos de movimento |
|-----|-----|--------------------|------------------------------------------------------|
|   37|22/03|vw_main             |Incluida chamada para o cadastro de tipo de movimento |
|-----|-----|--------------------|------------------------------------------------------|
|   38|23/03|Atualizador         |Criado controle de acesso p/cadastrar tipo d movimento|
|-----|-----|--------------------|------------------------------------------------------|
|   39|23/03|vw_tipoDeMovimento  |Criados logs para cadastro de tipo movimento          |
|-----|-----|--------------------|------------------------------------------------------|
|   40|23/03|vw_tipoDeMovimento  |Incluido controles de acessos                         |
|-----|-----|--------------------|------------------------------------------------------|
|   41|23/03|vw_tipoDeMovimento  |Incluido log completo com antes/depois                |
|-----|-----|--------------------|------------------------------------------------------|
|   42|23/03|Atualizador         |Criada coluna venda_natureza_operacao na tabela venda |
|     |     |                    |para ser usado na emissão de docs fiscais             |
|-----|-----|--------------------|------------------------------------------------------|
|   43|26/03|venda_pedido        |Passou a gravar em venda.venda_natureza_operacao o cod|
|     |     |                    |da natureza de operacao definida pelo usuário         |
|-----|-----|--------------------|------------------------------------------------------|
|   44|27/03|u_funcoes           |Criada a função fnatureza_operacaoDESCRICAO que recebe|
|     |     |                    |o ID de uma Natureza de Operação e retorna sua descri-|
|     |     |                    |ção, se houver, e vazio se não houver.                |
|-----|-----|--------------------|------------------------------------------------------|
|   45|27/03|venda_pedido        |Mostrando a natureza de operacao da venda a partir da |
|     |     |                    |do codigo gravado em venda.venda_natureza_operacao    |
|-----|-----|--------------------|------------------------------------------------------|
|   46|27/03|venda_pedido        |Mostrando o CFOP da natureza de operacao da venda     |
|-----|-----|--------------------|------------------------------------------------------|
|   47|27/03|u_funcoes           |Criada a função fColaboradorNOME que recebe o codigo  |
|     |     |                    |de um Colaborador e retorna seu nome, se houver, e    |
|     |     |                    |vazio se não houver.                                  |
|-----|-----|--------------------|------------------------------------------------------|
|   48|27/03|venda_pedido        |Mostrando Vendedor da venda a partir do codigo        |
|     |     |                    |gravado em venda.cod_vendedor                         |
|-----|-----|--------------------|------------------------------------------------------|
|   49|27/03|venda_pedido        |Mostrando Cliente da venda a partir do codigo         |
|     |     |                    |gravado em venda.codigo_cliente                       |
|-----|-----|--------------------|------------------------------------------------------|
|   50|28/03|venda_pedido        |Implementada a pesquisa de cliente no padrão do SMC   |
================================================================================

================
|    Resumo    |
|--------------|
|MES/ANO|Desenv|
|-------|------|
|02/2020|  20  |
|-------|------|
|03/2020|  40  |
|-------|------|
|04/2020|  60  |
|-------|------|
|05/2020|  06  |
|-------|------|
|  TOTAL| 126  |
================

Observações:
01: Quando dá erro de compilação na unit “m_Caixa” sem que nada tenha sido alterado na mesma, basta fechar a unit e recompilar.


È PRECISO fazer:

function fUltimaNFe(pNFe_SeRIE:String):integer;

}
end.

{ Arquivo backup automático - Wander
@echo off
ECHO ----------------------------------
REM ECHO WANDER MENDES MARTINS - 08/01/2020 versao 1
ECHO WANDER MENDES MARTINS - 15/05/2020 versao 2
ECHO ----------------------------------
:Variaveis
rem %time:~3,2%
set DATA=%date:~0,2%-%date:~3,2%-%date:~6,10%_
SET /P obsarquivo=[ENTRE COM UMA OBS PARA COMPOR O NOME DO ARQUIVO:]
c:
cd\
ECHO Procurando por alteracoes...
del c:\SMC_WANDER\src\*.*.*~* /s
XCOPY c:\SMC_WANDER\src  D:\SMC_WANDER\src /s /y /d /i
ECHO D:\SMC_WANDER atualizado...
XCOPY c:\SMC_WANDER\src  C:\SMC_GIT\src /s /y /d /i
ECHO C:\SMC_GIT atualizado...
rem XCOPY c:\SMC_WANDER  C:\SMC_GIT /s /y
ECHO .
ECHO Compactando...
ECHO
ECHO ON
copy C:\SMC_WANDER\Win32\Debug\SMC_LIGHT.exe "C:\Users\DEV_SMC\Desktop\RODRIGO TESTAR\"
d:
cd\BACKUP_DEV
set PASTA0=Mes-%date:~3,2%-%date:~6,10%
cd %PASTA0%
set PASTA=%date:~0,2%-%date:~3,2%-%date:~6,10%
md %PASTA%
cd %PASTA%
rem pause
c:
cd\
cd "Program Files\7-Zip\"
7z a -t7z -r D:\BACKUP_DEV\%PASTA0%\%PASTA%\SMC_%DATA%_%obsarquivo%.7z "C:\SMC_WANDER\*"
del  D:\wander_Backup\*.7z
copy D:\BACKUP_DEV\%PASTA0%\%PASTA%\SMC_%DATA%_%obsarquivo%.7z D:\wander_Backup
echo versionando no git branch wander
rem *****************************************
rem *** funcoes do ususario do git/github ***
rem *****************************************
c:
cd\
cd SMC_GIT
cd src
git checkout wander
git status
git add .
git commit -m %obsarquivo%
git status
rem pause
git push
git pull
rem ************************************
rem *** funcoes do adm do git/github ***
rem ************************************
git checkout master
git merge wander
git merge thailor
git push
git pull
echo versionando no git WANDER
rem C:\Wander\ZIP_BACKUP_Wander.bat %obsarquivo%
pause
exit

}
