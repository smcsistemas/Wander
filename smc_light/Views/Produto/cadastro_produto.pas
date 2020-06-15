{ v 21.10.16 17:18 }
unit cadastro_produto;
{ Feito por Wander

========================================================================================================================================
ALT|   DATA |HORA |UNIT                        |Descrição                                                                              |
---|--------|-----|----------------------------|----------------------------------------------------------------------------------------
338|15/06/20|18:23|cadastro_produto            |Passa a tratar PRODUTO_PROD(PROD_UNIDADE)ao invés de PRODUTO(UNIDADE_MEDIDA)
327|15/06/20|13:35|cadastro_produto            |Passa a tratar PRODUTO_PROD(PROD_EAN)    ao invés de PRODUTO(CODIGO_BARRAS)
313|15/06/20|10:14|cadastro_produto            |Passa a tratar PRODUTO_PROD(PROD_CODIGO) ao invés de PRODUTO(CODIGO)
299|15/06/20|03:16|cadastro_produto            |Utilizando recurso (PINTAR) para destacar objetos focados com amarelo e readonly com cinza
281|09/06/20|14:25|cadastro_produto            |Passa a tratar a coluna PROD_TRATANUMEROSERIE (Parâmetro de Tratamento de Número de Série)
280|09/06/20|14:25|cadastro_produto            |Passa a tratar a coluna PROD_TRATALOTE (Parâmetro de Tratamento de Lote)
269|08/06/20|08:35|cadastro_produto            |Passa a tratar a coluna PROD_RASTREAVEL (indicador de rastreabilidade) da tabela PRODUTO
264|06/06/20|17:49|cadastro_produto            |Tratando % de Redução Base de Cálculo ICMS ST
256|06/06/20|05:35|cadastro_produto            |Passa a usar a nova chave RPC_TPMOV da tabela RELACAO_CFOP_x_PRODUTO_xCST_PISCOFINS_RPC
250|03/06/20|05:34|cadastro_produto            |Preparada para ser chamada por telas do movimento para acertar o cadastro de algum produto
247|01/06/20|09:33|cadastro_produto            |Tratando o "Indicador de Escala Relevante" do Produto.
246|01/06/20|09:33|cadastro_produto            |Criada coluna NFe_IndEscala para armazenar o "Indicador de Escala Relevante" do Produto.
========================================================================================================================================

================================================================================
| ITEM|DATA  HR|UNIT                |HISTORICO                                 |
|-----|--------|--------------------|------------------------------------------|
|  245|01/06/20|wander              |Tratando MVA (Percentual de Margem d Valor|
|     |   08:14|cadastro_produto    |Agregado) da base de cálculo (BC) do ICMS.|
|-----|--------|--------------------|------------------------------------------|
|  244|31/05/20|wander              |Tratando campo LEIS, cuja definição       |
|     |   19:53|cadastro_produto    |precisa Rodrigo ficou de passar amanhã.   |
|-----|--------|--------------------|------------------------------------------|
|  243|31/05/20|wander              |Acertada a rotina que encontra o CEST e a |
|     |   08:15|cadastro_produto    |descrição pelo código NCM do produto      |
|-----|--------|--------------------|------------------------------------------|
|  242|30/05/20|wander              |Tratando CST-COFINS no novo padrão:       |
|     |   05:15|cadastro_produto    |[COD][F1-Pesquisa][Nome][Lupa-Pesquisa]   |
|-----|--------|--------------------|------------------------------------------|
|  241|30/05/20|wander              |Tratando CST-PIS no novo padrão:          |
|     |   05:15|cadastro_produto    |[COD][F1-Pesquisa][Nome][Lupa-Pesquisa]   |
|-----|--------|--------------------|------------------------------------------|
|  240|30/05/20|wander              |Tratando CFOP do CST-PIS/COFINS no novo   |
|     |   05:15|cadastro_produto    |padrão:                                   |
|     |        |                    |[COD][F1-Pesquisa][Nome][Lupa-Pesquisa]   |
|-----|--------|--------------------|------------------------------------------|
|  237|29/05/20|wander              |Passa a permitir que o usuário consulte,  |
|     |   22:46|cadastro_produto    |altere, exclua e inclua relacionamentos   |
|     |        |                    |entre o PRODUTO, o CFOP, a CST do PIS e o |
|     |        |                    |CST do COFINS                             |
|-----|--------|--------------------|------------------------------------------|
|  231|29/05/20|wander              |CST do PIS pode ser diferente do CST da   |
|     |   13:11|cadastro_produto    |COFINS se a natureza da PJ for igual a    |
|     |        |                    |“02 – Entidade sujeita ao PIS/Pasep       |
|     |        |                    |exclusivamente com base na Folha de       |
|     |        |                    |Salários”.                                |
|     |        |                    |Fora isso, para poder emitir um documento |
|     |        |                    |fiscal com CST´s diferentes é preciso     |
|     |        |                    |vincular um “processo judicial ou um      |
|     |        |                    |processo administrativo” (1010/1020).     |
|     |        |                    |                                          ---------------
|Fonte: https://www.contabeis.com.br/noticias/40929/simples-nacional-x-cst-de-pis-e-cofins/  |
|-----|--------|--------------------|---------------------------------------------------------
|  230|29/05/20|wander              |Deixa de tratar o CST do COFINS, pelo     |
|     |   06:40|cadastro_produto    |mesmo motivo do CST do PIS descrito abaixo|
|-----|--------|--------------------|------------------------------------------|
|  229|29/05/20|wander              |Deixa de tratar o CST do PIS, pois, assim |
|     |   06:16|cadastro_produto    |como o CSOSN e o CFOP, o CST do PIS não é |
|     |        |                    |um atributo intrínsico do produto, mas sim|
|     |        |                    |do produto na operação, não fazendo,      |
|     |        |                    |portanto, nenhumo sentido estar no        |
|     |        |                    |cadastro do produto, mas sim numa tabela  |
|     |        |                    |que relacione o TIPO DE MOVIMENTO (venda, |
|     |        |                    |compra, bonficação, devolução, descarte,  |
|     |        |                    |doação, remessa a conserto, exposição,etc)|
|     |        |                    |com o PRODUTO. Pois este código vai mudar |
|     |        |                    |para o mesmo produto em diferentes        |
|     |        |                    |operações.                                |
|     |        |                    |Consequentemente, foi eliminado o CST do  |
|     |        |                    |PIS do cadastro do produto e uma tela     |
|     |        |                    |e tabela deverão ser criados em que onde o|
|     |        |                    |usuário/contador/suporte possam definir o |
|     |        |                    |CST correto para cada operação.           |
|-----|--------|--------------------|------------------------------------------|
|  228|29/05/20|wander              |Deixa de tratar a flag "PIS MONOFÀSICO"   |
|     |   05:18|cadastro_produto    |Pois ao escolher o CST já está implicito  |
|     |        |                    |se é (04) ou não (demais) monofásico.     |
|-----|--------|--------------------|------------------------------------------|
|  227|28/05/20|wander              |Deixa de tratar ANP - Código do produto na|
|     |   20:39|cadastro_produto    |Agência Nacional de Petróleo              |
|-----|--------|--------------------|------------------------------------------|
|  225|28/05/20|wander              |Tratando CEST                             |
|     |   20:21|cadastro_produto    |                                          |
|-----|--------|--------------------|------------------------------------------|
|  224|28/05/20|wander              |Tratando NCM / SH                         |
|     |   20:21|cadastro_produto    |                                          |
|-----|--------|--------------------|------------------------------------------|
|  221|28/05/20|wander              |Tratando GENERO. Só aceitava números mas o|
|     |   18:57|cadastro_produto    |campo na tebela produtos é alfanumérico,  |
|     |        |                    |portanto o código foi alterado p/ aceitar |
|     |        |                    |letras, números e caracteres especiais.   |
|-----|--------|--------------------|------------------------------------------|
|  220|28/05/20|wander              |Não foi identificada a função da Coluna   |
|     |   18:57|cadastro_produto    |COD_COMB da tabela "Produtos". Rodrigo e  |
|     |        |                    |desconhecem sua utilidade. Pesquisei e não|
|     |        |                    |há referênca a esta coluna em todo o siste|
|     |        |                    |ma. Rodrigo pediu para não trata-la.      |
|-----|--------|--------------------|------------------------------------------|
|  219|28/05/20|wander              |Tratando Margem de Valor Agregado (% MVA) |
|     |   13:23|cadastro_produto    |da ST                                     |
|-----|--------|--------------------|------------------------------------------|
|  218|26/05/20|wander              |Criada aba Tributação para tratar apenas  |
|     |   21:54|cadastro_produto    |parâmetros fiscais                        |
|-----|--------|--------------------|------------------------------------------|
|  217|26/05/20|wander              |Tratando Valor de Pauta para cálculo da   |
|     |   21:54|cadastro_produto    |Base de Cálculo do ICMS ST                |
|-----|--------|--------------------|------------------------------------------|
|  216|26/05/20|wander              |Tratando Modalidade de Determinação da    |
|     |   21:54|cadastro_produto    |Base de Cálculo do ICMS ST                |
|-----|--------|--------------------|------------------------------------------|
|  215|26/05/20|wander              |Tratando Valor de Pauta para cálculo da   |
|     |   18:04|cadastro_produto    |Base de Cálculo do ICMS                   |
|-----|--------|--------------------|------------------------------------------|
|  214|26/05/20|wander              |Tratando Modalidade de Determinação da    |
|     |   18:04|cadastro_produto    |Base de Cálculo do ICMS                   |
|-----|--------|--------------------|------------------------------------------|
|  213|26/05/20|wander              |Tratando Redução da Alíquota de ICMS      |
|     |   07:17|cadastro_produto    |                                          |
|-----|--------|--------------------|------------------------------------------|
|  197|25/05/20|wander              |Eliminado tratamento de CSOSN pois não é  |
|     |   14:37|cadastro_produto    |de produto mas sim de operação(movimento) |
|-----|--------|--------------------|------------------------------------------|
|  196|25/05/20|wander              |Eliminado tratamento de CFOP pois não é de|
|     |   14:37|cadastro_produto    |produto mas sim de operação(movimento)    |
|-----|--------|--------------------|------------------------------------------|
|  192|24/05/20|wander              |Tratando Alíquota de ICMS                 |
|     |   22:06|cadastro_produto    |                                          |
|-----|--------|--------------------|------------------------------------------|
|  191|24/05/20|wander              |Tratando Origem do Produto no novo padrão:|
|     |   19:56|cadastro_produto    |[COD][F1-Pesquisa][Nome][Lupa-Pesquisa]   |
|-----|--------|--------------------|------------------------------------------|
|  190|24/05/20|wander              |Tratando TIPO ITEM no novo padrão:        |
|     |   19:19|cadastro_produto    |[COD][F1-Pesquisa][Nome][Lupa-Pesquisa]   |
|-----|--------|--------------------|------------------------------------------|
|  188|24/05/20|wander              |Tratando unidade de medida. Antes armaze- |
|     |   15:25|cadastro_produto    |va a sigla na tab prod agora grav o codigo|
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
|  178|23/05/20|wander              |Alterando produto (exceto a parte fiscal  |
|     |   19:35|cadastro_produto    |que verei com o Vitor                     |
|-----|--------|--------------------|------------------------------------------|
|  175|23/05/20|wander              |Eliminada a crítica de Referência do Fabri|
|     |   15:31|cadastro_produto    |cante repetida, pois é possível que haja. |
|     |        |                    |Avisa mas não impede.                     |
|-----|--------|--------------------|------------------------------------------|
|  173|23/05/20|wander              |Criado temporizador para pesqusar produto |
|     |   06:17|cadastro_produto    |para pesquisar qdo usuário termina digitar|
|-----|--------|--------------------|------------------------------------------|
|  156|22/05/20|wander              |Aplicadas as proced pode_Alterar_Incluir e|
|     |   01:48|cadastro_produto    |pode_Cancelar_Gravar                      |
|-----|--------|--------------------|------------------------------------------|
|  146|21/05/20|wander              |Padronizados os botões de controle (INS/  |
|     |   07:36|cadastro_produto    |ALT/CAN/GRAV) e uso proc HabilitarPanels  |
|-----|--------|--------------------|------------------------------------------|
|  143|20/05/20|wander              |Aplicado novo conceito de campos de       |
|     |   06:44|cadastro_produto    |canpos de pesquisa que passam a mostrar o |
|     |        |                    |código na tela  permitindo que o usuário  |
|     |        |                    |digite o código sem precisar consultar.   |
|-----|--------|--------------------|------------------------------------------|
|  142|20/05/20|wander              |Objetos TDBEdit substituídos por TEdit    |
|     |   06:13|cadastro_produto    |para que a tela não fique linkada em tempo|
|     |        |                    |real com o banco de dados.                |
================================================================================
}
interface

uses
  Winapi.Messages, Winapi.Windows, System.SysUtils, System.Variants,
  System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.DBCtrls, Vcl.StdCtrls,
  Vcl.Mask, cxGraphics,
  cxPC,
  cxEdit, cxDropDownEdit, cxDBEdit, Vcl.Menus,
  cxCheckBox, cxButtons, cxMemo,

  cxGroupBox,
  Vcl.DBGrids, FireDAC.Stan.Param,

  Data.DB, FireDAC.Comp.DataSet,
  FireDAC.Comp.Client, cxDBLookupComboBox,
  Vcl.ExtCtrls,
  dialogs,
  vw_consulta_generica, c_Globals,
  cxGridLevel, cxGridCustomTableView, cxGridTableView, cxGridDBTableView,
  cxGrid, System.math, strutils,
  h_Dialogs, h_Functions, m_Ncm, m_Anp, m_Produto, v_env, cxControls,
  cxLookAndFeels, cxLookAndFeelPainters, dxSkinsCore, dxSkinBlack, dxSkinBlue,
  dxSkinBlueprint,
  dxSkinCaramel,
  dxSkinCoffee, dxSkinDarkRoom, dxSkinDarkSide, dxSkinDevExpressDarkStyle,
  dxSkinDevExpressStyle, dxSkinFoggy, dxSkinGlassOceans, dxSkinHighContrast,
  dxSkiniMaginary, dxSkinLilian,
  dxSkinLiquidSky,
  dxSkinLondonLiquidSky, dxSkinMcSkin, dxSkinMetropolis, dxSkinMetropolisDark,
  dxSkinMoneyTwins, dxSkinOffice2007Black, dxSkinOffice2007Blue,
  dxSkinOffice2007Green,
  dxSkinOffice2007Pink,
  dxSkinOffice2007Silver, dxSkinOffice2010Black, dxSkinOffice2010Blue,
  dxSkinOffice2010Silver, dxSkinOffice2013DarkGray, dxSkinOffice2013LightGray,
  dxSkinOffice2013White,
  dxSkinOffice2016Colorful,
  dxSkinOffice2016Dark, dxSkinPumpkin, dxSkinSeven, dxSkinSevenClassic,
  dxSkinSharp, dxSkinSharpPlus, dxSkinSilver, dxSkinSpringTime, dxSkinStardust,
  dxSkinSummer2008,
  dxSkinTheAsphaltWorld,
  dxSkinsDefaultPainters, dxSkinValentine, dxSkinVisualStudio2013Blue,
  dxSkinVisualStudio2013Dark, dxSkinVisualStudio2013Light, dxSkinVS2010,
  dxSkinWhiteprint, dxSkinXmas2008Blue,
  dxSkinscxPCPainter,
  dxBarBuiltInMenu, cxContainer, cxStyles, cxCustomData, cxFilter, cxData,
  cxDataStorage, cxNavigator, cxDBData, cxLabel, cxCurrencyEdit,
  FireDAC.Stan.Intf, FireDAC.Stan.Option,
  FireDAC.Stan.Error,
  FireDAC.DatS, FireDAC.Phys.Intf, FireDAC.DApt.Intf, FireDAC.Stan.Async,
  FireDAC.DApt, Vcl.Grids, cxButtonEdit, cxCalendar, dxGDIPlusClasses,
  cxLookupEdit, cxDBLookupEdit,
  cxTextEdit, cxMaskEdit,
  cxClasses, cxGridCustomView, cxCheckComboBox;

type
  TFrm_Produto = class(TForm)
    sql_increment: TFDQuery;
    sql_incrementAUTO_INCREMENT: TLargeintField;
    DS_Lista: TDataSource;
    DS_CSTIPI: TDataSource;
    cxPageControl1: TcxPageControl;
    cxTabSheet1: TcxTabSheet;
    edArgumentoDePesquisa: TEdit;
    edPROD_EAN: TEdit;
    tab_Cadastrar: TcxTabSheet;
    SQL_CSTIPI: TFDQuery;
    qRELACAO_CFOP_x_PRODUTO_xCST_PISCOFINS_RPC: TFDQuery;
    dsRELACAO_CFOP_x_PRODUTO_xCST_PISCOFINS_RPC: TDataSource;
    SQL_DADOS_ROTINAS: TFDQuery;
    DS_DADOS_ROTINAS: TDataSource;
    popmenu: TPopupMenu;
    duplicar_cadastro: TMenuItem;
    SQL_DADOS_ROTINAScodigo_regime_tributario: TStringField;
    SQL_DADOS_ROTINASid: TIntegerField;
    SQL_DADOS_ROTINASaliq_imcs: TBCDField;
    SQL_DADOS_ROTINASaliq_pis_cumulativo: TBCDField;
    SQL_DADOS_ROTINASaliq_pis_nao_cumulativo: TBCDField;
    SQL_DADOS_ROTINASaliq_cofins_cumulativo: TBCDField;
    SQL_DADOS_ROTINASaliq_cofins_nao_cumulativo: TBCDField;
    SQL_DADOS_ROTINASaliq_iss: TBCDField;
    Label58: TLabel;
    Label63: TLabel;
    Label68: TLabel;
    SQL_DADOS_ROTINASPASTA_FTP: TStringField;
    SQL_DADOS_ROTINAScaminho_backup: TStringField;
    SQL_DADOS_ROTINAShost_name: TStringField;
    SQL_PRECO_FAIXA: TFDQuery;
    DS_PRECO_FAIXA: TDataSource;
    SQL_PRECO_FAIXAID: TFDAutoIncField;
    SQL_PRECO_FAIXATIPO: TStringField;
    SQL_PRECO_FAIXAPRECO: TBCDField;
    pop_faixa: TPopupMenu;
    RemoverFaixa1: TMenuItem;
    SQL_PRECO_FAIXAID_PRODUTO: TIntegerField;
    SQL_PRECO_FAIXAQTDE: TBCDField;
    chk_diff_estoque: TcxCheckBox;
    tbView: TcxGridDBTableView;
    gdProdsLevel1: TcxGridLevel;
    gdProds: TcxGrid;
    Label28: TLabel;
    tbViewPROD_CODIGO: TcxGridDBColumn;
    tbViewDESCRICAO_PRODUTO: TcxGridDBColumn;
    tbViewREFERENCIA_FABRICANTE: TcxGridDBColumn;
    tbViewMARCA: TcxGridDBColumn;
    tbViewGRUPO: TcxGridDBColumn;
    tbViewUNIDADE_MEDIDA: TcxGridDBColumn;
    tbViewTIPO_ITEM: TcxGridDBColumn;
    tbViewSALDO: TcxGridDBColumn;
    tbViewALIQ_ICMS: TcxGridDBColumn;
    tbViewICMS_CST: TcxGridDBColumn;
    tbViewPIS_CST: TcxGridDBColumn;
    tbViewCOFINS_CST: TcxGridDBColumn;
    tbViewNCM: TcxGridDBColumn;
    tbViewCEST: TcxGridDBColumn;
    tbViewPRECO: TcxGridDBColumn;
    cbTipoItemConsulta: TcxLookupComboBox;
    tbViewESTOQUE_MINIMO: TcxGridDBColumn;
    QtdeItens: TLabel;
    Label51: TLabel;
    Label35: TLabel;
    lblprodcads: TLabel;
    tbViewPRECO_PROMO: TcxGridDBColumn;
    sql_ponto_impressao: TFDQuery;
    ds_ponto_impressao: TDataSource;
    sql_ponto_impressaoid: TFDAutoIncField;
    sql_ponto_impressaonome: TStringField;
    N1: TMenuItem;
    ImprimirEtiqueta1: TMenuItem;
    Panel3: TPanel;
    cxButton3: TcxButton;
    cxButton11: TcxButton;
    cxButton12: TcxButton;
    cxButton9: TcxButton;
    cxButton14: TcxButton;
    cxButton1: TcxButton;
    cxButton17: TcxButton;
    cxButton4: TcxButton;
    cxButton2: TcxButton;
    cxButton18: TcxButton;
    pnControles: TPanel;
    bControleIncluir: TcxButton;
    bControleAlterar: TcxButton;
    bControleCancelar: TcxButton;
    bControleGravar: TcxButton;
    pnContador: TPanel;
    qConsulta: TFDQuery;
    qConsultadescricao_produto: TStringField;
    qConsultaunidade_medida: TStringField;
    qConsultapreco_final_varejo: TBCDField;
    qConsultavalor_promocional_varejo: TBCDField;
    qConsultagrupo: TStringField;
    qConsultamarca: TStringField;
    qConsultaicms_cst: TStringField;
    qConsultancm: TStringField;
    qConsultareferencia_fabricante: TStringField;
    Label45: TLabel;
    qConsultaCOD_BARRAS_AUXILIAR: TStringField;
    qConsultaINFO_ADICIONAIS: TStringField;
    qConsultaFAMILIA: TStringField;
    qConsultaSUBGRUPO: TStringField;
    qConsultaDATA_CADASTRO: TDateField;
    qConsultaTIPO_ITEM: TStringField;
    qConsultaESTOQUE_MINIMO: TStringField;
    qConsultaPRECO_CUSTO: TBCDField;
    qConsultaFRETE: TBCDField;
    qConsultaIMPOSTO: TBCDField;
    qConsultaDESP_OPERACIONAIS: TBCDField;
    qConsultaCUSTO_MEDIO: TBCDField;
    qConsultaMARGEM_LUCRO: TBCDField;
    qConsultaMARGEM_L_VAREJO: TBCDField;
    qConsultaMARGEM_L_ATACADO: TBCDField;
    qConsultaMARGEM_L_DISTRIBUIDOR: TBCDField;
    qConsultaDESCONTO_MAXIMO: TBCDField;
    qConsultaDESCONTO_M_VAREJO: TBCDField;
    qConsultaDESCONTO_M_ATACADO: TBCDField;
    qConsultaDESCONTO_M_DISTRIBUIDOR: TBCDField;
    qConsultaDESCONTO_L_VAREJO: TBCDField;
    qConsultaDESCONTO_L_ATACADO: TBCDField;
    qConsultaDESCONTO_L_DISTRIBUIDOR: TBCDField;
    qConsultaPAGAR_COMISSAO: TBCDField;
    qConsultaCOMISSAO_BALCAO: TBCDField;
    qConsultaBALCAO_COMISSAO_VAREJO: TBCDField;
    qConsultaBALCAO_COMISSAO_ATACADO: TBCDField;
    qConsultaBALCAO_COMISSAO_DISTRIBUIDOR: TBCDField;
    qConsultaCOMISSAO_EXTERNA: TBCDField;
    qConsultaEXTERNA_COMISSAO_VAREJO: TBCDField;
    qConsultaEXTERNA_COMISSAO_ATACADO: TBCDField;
    qConsultaEXTERNA_COMISSAO_DISTRIBUIDOR: TBCDField;
    qConsultaPRECO_FINAL_ATACADO: TBCDField;
    qConsultaPRECO_FINAL_DISTRIBUIDOR: TBCDField;
    qConsultaPROMO_VAREJO: TBCDField;
    qConsultaPROMO_ATACADO: TBCDField;
    qConsultaPROMO_DISTRIBUIDOR: TBCDField;
    qConsultaPROMOCAO_INICIO: TDateField;
    qConsultaPROMOCAO_TERMINO: TDateField;
    qConsultaVALOR_PROMOCIONAL_ATACADO: TBCDField;
    qConsultaVALOR_PROMOCIONAL_DISTRIBUIDOR: TBCDField;
    qConsultaSALDO: TBCDField;
    qConsultaALIQ_ICMS: TBCDField;
    qConsultaREDUCAO_ICMS: TBCDField;
    qConsultaALIQ_ICMS_SUBST: TStringField;
    qConsultaREDUCAO_ICMS_ST: TBCDField;
    qConsultaLUCRO_SUBST_TRIBUTARIA: TBCDField;
    qConsultaVALOR_PAUTA_BC_ST: TBCDField;
    qConsultaLEIS: TStringField;
    qConsultaGENERO: TStringField;
    qConsultaFORNECEDOR_NOME: TStringField;
    qConsultaCOD_COMB: TStringField;
    qConsultaALIQ_IPI: TStringField;
    qConsultaENQUADRAMENTO_IPI: TIntegerField;
    qConsultaCODIGO_LOCALIZACAO: TIntegerField;
    qConsultaICMS_IPI: TStringField;
    qConsultaPIS_CST: TStringField;
    qConsultaCOFINS_CST: TStringField;
    qConsultaCODIGO_ORIGEM_MERCADORIA: TIntegerField;
    qConsultaCEST: TStringField;
    qConsultaANP: TStringField;
    qConsultaEX_IPI: TSingleField;
    qConsultaSTATUS_CADASTRAL: TStringField;
    qConsultaPESAVEL: TStringField;
    qConsultaUTILIZA_ETIQUETA_BALANCA: TStringField;
    qConsultaUSA_LOTE: TStringField;
    qConsultaCONTROLADO: TStringField;
    qConsultaCODIGO_FORNECEDOR: TIntegerField;
    qConsultaQUANT_MINI_VAREJO_P: TBCDField;
    qConsultaQUANT_MINI_ATACADO_P: TBCDField;
    qConsultaQUANT_MINI_DISTRIBUIDOR_P: TBCDField;
    qConsultaQUANT_MINI_VAREJO_Q: TBCDField;
    qConsultaQUANT_MINI_ATACADO_Q: TBCDField;
    qConsultaQUANT_MINI_DISTRIBUIDOR_Q: TBCDField;
    qConsultaQUANT_MINI_VAREJO_D: TBCDField;
    qConsultaQUANT_MINI_DISTRIBUIDOR_D: TBCDField;
    qConsultaQUANT_MINI_ATACADO_D: TBCDField;
    qConsultaCST_IPI: TStringField;
    qConsultaCOD_BALANCA_1: TStringField;
    qConsultaCOD_BALANCA_2: TStringField;
    qConsultaCOD_BALANCA_3: TStringField;
    qConsultaponto_impressao_id: TIntegerField;
    qConsultaProduto_ou_Servico: TStringField;
    qConsultaPagaComissaoSN: TStringField;
    qConsultaContaContabil: TIntegerField;
    qConsultaCentroDeCustos: TIntegerField;
    qConsultaNFe_indTot: TIntegerField;
    qConsultaNFe_VeiculoNovo: TIntegerField;
    qConsultaNFe_nDI: TStringField;
    qConsultaNFe_dDI: TDateTimeField;
    qConsultaNFe_xLocDesemb: TStringField;
    qConsultaNFe_UFDesemb: TStringField;
    qConsultaNFe_dDesemb: TDateTimeField;
    qConsultaNFe_cExportador: TStringField;
    qConsultaNFe_nAdicao: TIntegerField;
    qConsultaNFe_cFabricante: TStringField;
    qConsultaNFe_vDescDI: TBCDField;
    qConsultaNFe_Veiculo_Cor_Codigo: TStringField;
    qConsultaNFe_Veiculo_Cor_Descricao: TStringField;
    qConsultaNFe_Veiculo_Pot: TStringField;
    qConsultaNFe_Veiculo_Cilin: TStringField;
    qConsultaNFe_Medicamento: TIntegerField;
    qConsultaNFe_Armamento: TIntegerField;
    qConsultaNFe_Combustivel: TIntegerField;
    qConsultaNFe_modBC: TIntegerField;
    qConsultaNFe_modBCST: TIntegerField;
    qConsultaNFe_pMVAST: TBCDField;
    qConsultaNFe_motDesICMS: TIntegerField;
    qConsultaCODIGO_ALFANUMERICO: TStringField;
    tConsulta: TTimer;
    tabTributacao: TcxTabSheet;
    Panel4: TPanel;
    GroupBox22: TGroupBox;
    Label16: TLabel;
    Label17: TLabel;
    edNCM: TEdit;
    edCEST: TEdit;
    btn_ncm: TcxButton;
    mmNCM: TcxMemo;
    GroupBox23: TGroupBox;
    Label22: TLabel;
    Label2: TLabel;
    Label52: TLabel;
    Label53: TLabel;
    Label60: TLabel;
    Label57: TLabel;
    edALIQ_ICMS: TEdit;
    edREDUCAO_ICMS: TEdit;
    edGENERO: TEdit;
    edICMS_CST: TEdit;
    edICMS_CST_NOME: TEdit;
    cxButton5: TcxButton;
    edCODIGO_ORIGEM_MERCADORIA: TEdit;
    edCODIGO_ORIGEM_MERCADORIA_NOME: TEdit;
    cxButton7: TcxButton;
    Panel5: TPanel;
    rgNFe_modBC: TRadioGroup;
    pnValorPautaBC_ICMS: TPanel;
    Label56: TLabel;
    edVALOR_PAUTA_BC: TEdit;
    qConsultaVALOR_PAUTA_BC: TBCDField;
    pnControles2: TPanel;
    bControleCancelar2: TcxButton;
    bControleGravar2: TcxButton;
    rgNFe_modBCST: TRadioGroup;
    pnValorPautaBC_ICMS_ST: TPanel;
    Label12: TLabel;
    edVALOR_PAUTA_BC_ST: TEdit;
    bControleAlterar2: TcxButton;
    bControleIncluir2: TcxButton;
    Panel6: TPanel;
    GroupBox4: TGroupBox;
    Label3: TLabel;
    Label1: TLabel;
    Label4: TLabel;
    A: TLabel;
    Label5: TLabel;
    Label7: TLabel;
    Label37: TLabel;
    Label15: TLabel;
    Label6: TLabel;
    Label8: TLabel;
    Label36: TLabel;
    lbl2: TLabel;
    Label18: TLabel;
    Label11: TLabel;
    btn_familia: TcxButton;
    btn_sub: TcxButton;
    btn_grupo: TcxButton;
    btn_und: TcxButton;
    btn_marca: TcxButton;
    edDESCRICAO_PRODUTO: TEdit;
    edREFERENCIA_FABRICANTE: TEdit;
    edFAMILIA: TEdit;
    edSUBGRUPO: TEdit;
    edUNIDADE_MEDIDA: TEdit;
    edGRUPO: TEdit;
    edMARCA: TEdit;
    mmINFO_ADICIONAIS: TMemo;
    edCODIGO_ALFANUMERICO: TEdit;
    edCODIGO: TEdit;
    cb_ponto_impressao: TcxDBLookupComboBox;
    edNFe_nDI: TEdit;
    cxGroupBox1: TcxGroupBox;
    Label9: TLabel;
    Label10: TLabel;
    Label13: TLabel;
    edPRECO_FINAL_VAREJO: TEdit;
    edPRECO_FINAL_DISTRIBUIDOR: TEdit;
    edPRECO_FINAL_ATACADO: TEdit;
    edGRUPO_NOME: TEdit;
    edSUBGRUPO_NOME: TEdit;
    edMARCA_NOME: TEdit;
    edUNIDADE_MEDIDA_NOME: TEdit;
    edFAMILIA_NOME: TEdit;
    cbSTATUS_CADASTRAL: TcxCheckBox;
    edTIPO_ITEM: TEdit;
    edTIPO_ITEM_NOME: TEdit;
    btn_Tipo: TcxButton;
    Label61: TLabel;
    edNFe_pMVAST: TEdit;
    edLEIS: TEdit;
    Label21: TLabel;
    edNFe_pMVA: TEdit;
    qConsultaNFe_pMVA: TBCDField;
    rgNFe_indEscala: TRadioGroup;
    qConsultaNFe_indEscala: TIntegerField;
    Panel2: TPanel;
    Label14: TLabel;
    Label19: TLabel;
    Label20: TLabel;
    Label23: TLabel;
    Panel1: TPanel;
    bRPC_Delete: TcxButton;
    bRPC_Insert: TcxButton;
    edRPC_CFOP: TEdit;
    edRPC_CFOP_NOME: TEdit;
    edRPC_PIS_NOME: TEdit;
    edRPC_PIS: TEdit;
    edRPC_COFINS: TEdit;
    edRPC_COFINS_NOME: TEdit;
    cxButton6: TcxButton;
    cxButton8: TcxButton;
    cxButton10: TcxButton;
    edRPC_TPMOV: TEdit;
    edRPC_TPMOV_Nome: TEdit;
    cxButton13: TcxButton;
    DBGrid1: TDBGrid;
    Label24: TLabel;
    edREDUCAO_ICMS_ST: TEdit;
    qConsultaPROD_RASTREAVEL: TIntegerField;
    qConsultaPROD_TRATALOTE: TIntegerField;
    qConsultaPROD_TRATANUMEROSERIE: TIntegerField;
    Panel7: TPanel;
    cbPROD_RASTREAVEL: TCheckBox;
    cbPROD_TRATANUMEROSERIE: TCheckBox;
    rgPROD_TRATALOTE: TRadioGroup;
    qConsultaPROD_CODIGO: TStringField;
    qConsultaPROD_EAN: TStringField;
    procedure BtnGravarClick(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure btn_familiaClick(Sender: TObject);
    procedure btn_subClick(Sender: TObject);
    procedure btn_marcaClick(Sender: TObject);
    procedure btn_grupoClick(Sender: TObject);
    procedure btn_undClick(Sender: TObject);
    procedure cxTabSheet1Show(Sender: TObject);
    procedure Edit1KeyPress(Sender: TObject; var Key: Char);
    procedure cxDBTextEdit3KeyPress(Sender: TObject; var Key: Char);
    procedure cxDBTextEdit29KeyPress(Sender: TObject; var Key: Char);
    procedure cxDBTextEdit36KeyPress(Sender: TObject; var Key: Char);
    procedure cxDBTextEdit38KeyPress(Sender: TObject; var Key: Char);
    procedure cxDBTextEdit39KeyPress(Sender: TObject; var Key: Char);
    procedure cxDBTextEdit37KeyPress(Sender: TObject; var Key: Char);
    procedure cxDBTextEdit1KeyPress(Sender: TObject; var Key: Char);
    procedure cxDBTextEdit30KeyPress(Sender: TObject; var Key: Char);
    procedure cxDBTextEdit13KeyPress(Sender: TObject; var Key: Char);
    procedure cxDBTextEdit25KeyPress(Sender: TObject; var Key: Char);
    procedure cxDBTextEdit31KeyPress(Sender: TObject; var Key: Char);
    procedure cxDBTextEdit16KeyPress(Sender: TObject; var Key: Char);
    procedure cxDBTextEdit33KeyPress(Sender: TObject; var Key: Char);
    procedure cxDBTextEdit35KeyPress(Sender: TObject; var Key: Char);
    procedure cxDBTextEdit8KeyPress(Sender: TObject; var Key: Char);
    procedure cxDBTextEdit10KeyPress(Sender: TObject; var Key: Char);
    procedure cxDBTextEdit40KeyPress(Sender: TObject; var Key: Char);
    procedure cxDBTextEdit41KeyPress(Sender: TObject; var Key: Char);
    procedure cxDBTextEdit42KeyPress(Sender: TObject; var Key: Char);
    procedure cxDBTextEdit43KeyPress(Sender: TObject; var Key: Char);
    procedure cxDBTextEdit44KeyPress(Sender: TObject; var Key: Char);
    procedure cxDBTextEdit45KeyPress(Sender: TObject; var Key: Char);
    procedure cxDBTextEdit46KeyPress(Sender: TObject; var Key: Char);
    procedure cxDBTextEdit47KeyPress(Sender: TObject; var Key: Char);
    procedure cxDBTextEdit52KeyPress(Sender: TObject; var Key: Char);
    procedure cxDateEdit2KeyPress(Sender: TObject; var Key: Char);
    procedure cxDateEdit1KeyPress(Sender: TObject; var Key: Char);
    procedure cxDBTextEdit56KeyPress(Sender: TObject; var Key: Char);
    procedure DBEdit2KeyPress(Sender: TObject; var Key: Char);
    procedure cxDBTextEdit28KeyPress(Sender: TObject; var Key: Char);
    procedure cxDBTextEdit26KeyPress(Sender: TObject; var Key: Char);
    procedure DBEdit1KeyPress(Sender: TObject; var Key: Char);
    procedure edALIQ_ICMSKeyPress(Sender: TObject; var Key: Char);
    procedure edREDUCAO_ICMSKeyPress(Sender: TObject; var Key: Char);
    procedure edVALOR_PAUTA_BCKeyPress(Sender: TObject; var Key: Char);
    procedure edNFe_pMVASTKeyPress(Sender: TObject; var Key: Char);
    procedure cod_combKeyPress(Sender: TObject; var Key: Char);
    procedure ex_ipiKeyPress(Sender: TObject; var Key: Char);
    procedure aliq_ipiKeyPress(Sender: TObject; var Key: Char);
    procedure aliq_pisKeyPress(Sender: TObject; var Key: Char);
    procedure aliq_cofinsKeyPress(Sender: TObject; var Key: Char);
    procedure edCESTKeyPress(Sender: TObject; var Key: Char);
    procedure cxDBTextEdit48KeyPress(Sender: TObject; var Key: Char);
    procedure cxDBTextEdit49KeyPress(Sender: TObject; var Key: Char);
    procedure cxDBTextEdit55KeyPress(Sender: TObject; var Key: Char);
    procedure cxDBTextEdit57KeyPress(Sender: TObject; var Key: Char);
    procedure cxDBTextEdit59KeyPress(Sender: TObject; var Key: Char);
    procedure cxDBTextEdit60KeyPress(Sender: TObject; var Key: Char);
    procedure cxDBTextEdit61KeyPress(Sender: TObject; var Key: Char);
    procedure edMARCAKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
    procedure edFAMILIAKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
    procedure edGRUPOKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
    procedure edSUBGRUPOKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
    procedure EXTERNA_COMISSAO_ATACADOKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
    procedure edCODIGO_ALFANUMERICOKeyPress(Sender: TObject; var Key: Char);
    procedure ESTOQUE_MINIMOKeyPress(Sender: TObject; var Key: Char);
    procedure BALCAO_COMISSAO_VAREJOKeyPress(Sender: TObject; var Key: Char);
    procedure BALCAO_COMISSAO_DISTRIBUIDORKeyPress(Sender: TObject; var Key: Char);
    procedure BALCAO_COMISSAO_ATACADOKeyPress(Sender: TObject; var Key: Char);
    procedure EXTERNA_COMISSAO_VAREJOKeyPress(Sender: TObject; var Key: Char);
    procedure EXTERNA_COMISSAO_DISTRIBUIDORKeyPress(Sender: TObject; var Key: Char);
    procedure EXTERNA_COMISSAO_ATACADOKeyPress(Sender: TObject; var Key: Char);
    procedure CarregarDadosInternos;
    procedure FormShow(Sender: TObject);
    procedure btn_ncmClick(Sender: TObject);
    procedure RegraTributacao;
    procedure duplicar_cadastroClick(Sender: TObject);
    function RemoveEspaco(const str: String): string;
    procedure edDESCRICAO_PRODUTOExit(Sender: TObject);
    procedure chk_ativoClick(Sender: TObject);
    procedure chk_inativoClick(Sender: TObject);
    procedure chk_todosClick(Sender: TObject);
    procedure Pesquisar;
    procedure Pesquisar_NCM;
    procedure Preencher_CEST;
    procedure DBEdit14KeyPress(Sender: TObject; var Key: Char);
    procedure DBEdit15KeyPress(Sender: TObject; var Key: Char);
    procedure DBEdit12KeyPress(Sender: TObject; var Key: Char);
    procedure CodBalancaCheck(campo: TDBEdit);
    procedure cxButton7Click(Sender: TObject);
    procedure edCODIGO_ALFANUMERICOKeyUp(Sender: TObject; var Key: Word; Shift: TShiftState);
    function JaExiste_PROD_EAN: Boolean;
    function JaExiste_CODIGO_ALFANUMERICO: Boolean;
    function JaExiste_DESCRICAO_PRODUTO: Boolean;
    function RefFabricanteRepetido(foco: Boolean = true): Boolean;
    procedure edCESTKeyUp(Sender: TObject; var Key: Word; Shift: TShiftState);
    procedure edNCMKeyUp(Sender: TObject; var Key: Word; Shift: TShiftState);
    procedure calcular_preco_produtos(Sender: TObject; var Key: Word; Shift: TShiftState);
    procedure DBEdit13KeyPress(Sender: TObject; var Key: Char);
    procedure dbcsticmsClick(Sender: TObject);
    procedure DESP_OPERACIONAISClick(Sender: TObject);
    procedure BALCAO_COMISSAO_VAREJOClick(Sender: TObject);
    procedure BALCAO_COMISSAO_DISTRIBUIDORClick(Sender: TObject);
    procedure BALCAO_COMISSAO_ATACADOClick(Sender: TObject);
    procedure EXTERNA_COMISSAO_DISTRIBUIDORClick(Sender: TObject);
    procedure EXTERNA_COMISSAO_ATACADOClick(Sender: TObject);
    procedure sClick(Sender: TObject);
    procedure DESCONTO_M_DISTRIBUIDORClick(Sender: TObject);
    procedure DESCONTO_M_ATACADOClick(Sender: TObject);
    procedure calc_margem(Sender: TObject; var Key: Word; Shift: TShiftState);
    procedure edNCMExit(Sender: TObject);
    procedure edt_qtde_minKeyPress(Sender: TObject; var Key: Char);
    procedure cb_tipoKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
    procedure btn_cad_faixaClick(Sender: TObject);
    procedure carregar_faixa;
    procedure PRECO_FINAL_ATACADOKeyPress(Sender: TObject; var Key: Char);
    procedure chk_diff_estoquePropertiesChange(Sender: TObject);
    procedure PreencherNCM(value: string);
    //procedure preencherANP(value: string);
    procedure btn_anpClick(Sender: TObject);
    procedure tbViewCustomDrawCell(Sender: TcxCustomGridTableView; ACanvas: TcxCanvas; AViewInfo: TcxGridTableDataCellViewInfo;
      var ADone: Boolean);
    procedure tbViewCellDblClick(Sender: TcxCustomGridTableView; ACellViewInfo: TcxGridTableDataCellViewInfo; AButton: TMouseButton;
      AShift: TShiftState; var AHandled: Boolean);
    procedure cbFiltroPropertiesEditValueChanged(Sender: TObject);
    procedure cbTipoItemConsultaPropertiesEditValueChanged(Sender: TObject);

    procedure updateEstoque;
    procedure edREFERENCIA_FABRICANTEKeyUp(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure ImprimirEtiqueta1Click(Sender: TObject);
    procedure cxButton11Click(Sender: TObject);
    procedure cxButton9Click(Sender: TObject);
    procedure cxButton16Click(Sender: TObject);
    procedure cxButton17Click(Sender: TObject);
    procedure cxButton19Click(Sender: TObject);
    procedure cxButton3Click(Sender: TObject);
    procedure cxButton12Click(Sender: TObject);
    procedure bControleIncluirClick(Sender: TObject);
    procedure bControleAlterarClick(Sender: TObject);
    procedure bControleCancelarClick(Sender: TObject);
    procedure bControleGravarClick(Sender: TObject);
    procedure edCODIGO_ALFANUMERICOExit(Sender: TObject);
    procedure edMARCAExit(Sender: TObject);
    procedure edFAMILIAExit(Sender: TObject);
    procedure edGRUPOExit(Sender: TObject);
    procedure edSUBGRUPOExit(Sender: TObject);
    procedure tConsultaTimer(Sender: TObject);
    procedure edArgumentoDePesquisaKeyUp(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure cxButton5Click(Sender: TObject);
    procedure edICMS_CSTKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure edICMS_CSTExit(Sender: TObject);
    procedure edUNIDADE_MEDIDAKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure edUNIDADE_MEDIDAExit(Sender: TObject);
    procedure btn_TipoClick(Sender: TObject);
    procedure edTIPO_ITEMKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure edTIPO_ITEMExit(Sender: TObject);
    procedure edREFERENCIA_FABRICANTEExit(Sender: TObject);
    procedure FormKeyPress(Sender: TObject; var Key: Char);
    procedure edCODIGO_ORIGEM_MERCADORIAKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure edCODIGO_ORIGEM_MERCADORIAExit(Sender: TObject);
    procedure edALIQ_ICMSExit(Sender: TObject);
    procedure edREDUCAO_ICMSExit(Sender: TObject);
    procedure rgNFe_modBCClick(Sender: TObject);
    procedure edVALOR_PAUTA_BC_STKeyPress(Sender: TObject; var Key: Char);
    procedure rgNFe_modBCSTClick(Sender: TObject);
    procedure edArgumentoDePesquisaKeyPress(Sender: TObject; var Key: Char);
    procedure tbViewKeyPress(Sender: TObject; var Key: Char);
    procedure edNCMKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
    procedure qRELACAO_CFOP_x_PRODUTO_xCST_PISCOFINS_RPCAfterScroll(
      DataSet: TDataSet);
    procedure bRPC_DeleteClick(Sender: TObject);
    procedure bRPC_InsertClick(Sender: TObject);
    procedure edRPC_CFOPChange(Sender: TObject);
    procedure edRPC_PISChange(Sender: TObject);
    procedure edRPC_COFINSChange(Sender: TObject);
    procedure cxButton6Click(Sender: TObject);
    procedure edRPC_CFOPKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure cxButton8Click(Sender: TObject);
    procedure edRPC_PISKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure edRPC_COFINSKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure cxButton10Click(Sender: TObject);
    procedure edNFe_pMVAKeyPress(Sender: TObject; var Key: Char);
    procedure FormCreate(Sender: TObject);
    procedure cxButton13Click(Sender: TObject);
    procedure edRPC_TPMOVKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure edRPC_TPMOVChange(Sender: TObject);
    procedure edREDUCAO_ICMS_STKeyPress(Sender: TObject; var Key: Char);
    procedure FormKeyUp(Sender: TObject; var Key: Word; Shift: TShiftState);

  private
    { Private declarations }
    procedure Inicio;
    procedure HabilitarCampos(pBoolean:Boolean);
    procedure Pode_Alterar;
    procedure Mostrar_Produto;
    procedure Clicou_no_Grid_de_Produto;
    procedure Clicou_Botao_Alterar;
    procedure ConsultarMarcas;
    procedure ConsultarFamilias;
    procedure ConsultarGrupos;
    procedure ConsultarProduto_tipo_item;
    procedure ConsultarCODIGO_ORIGEM_MERCADORIA;
    procedure ConsultarSubGrupos;
    procedure ConsultarCST_ICMS;
    procedure ConsultarCST_PIS;
    procedure ConsultarCST_COFINS;
    procedure ConsultarUnidades;
    procedure ConsultarCFOP;
    procedure ConsultarTPMOV;
    function DadosCorretos:Boolean;
    function Dados_da_Aba_Cadastro_OK  :Boolean;
    function Dados_da_Aba_Tributacao_OK:Boolean;
    procedure AplicarPadroes;
    procedure ApagarRegistro;
    procedure InserirRegistro;
    procedure Ir_Para_Cadastro;
    procedure Ir_Para_Consulta;
    procedure Atualizar_RELACAO_CFOP_x_PRODUTO_xCST_PISCOFINS_RPC;
  public
    { Public declarations }
    deletar_prod_preco_faixa, consultarultimo: Boolean;
  protected
    { Protected declarations }

  end;

var
  Frm_Produto: TFrm_Produto;

  NaoPesquisar: Boolean; // Impede que haja pesquisas enquanto a tela está
                         // sendo configurada pela procedure INICIO ao aplicar
                         // os padrões iniciais.

  vFrm_ProdutoPesquisarCodigoDoProduto: Boolean; //Quando esta tela for aberta
                         // pela tela de venda, ou alguma outra tela que use
                         // o cadastro do produto, deverá pesquisar apenas pelo
                         // código do produto, que será preenchido por aquela
                         // tela que chamou esta aqui.
                         // Se vFrm_ProdutoPesquisarCodigoDoProduto = true
                         // pesquisará apenas pelo código do produto, e se for
                         // false, pesquisará pelos demais atributos definidos
                         // na função PESQUISAR.

implementation

{$R *.dfm}

uses cadastro_familia, cadastro_sub_grupo, cad_marca, S_Module,
  cadastro_grupo, cadastro_unidade, u_funcoes, m_Etiqueta, vw_etiquetas,
  dados_adicionais, vw_produto_precos, vw_preco_promocional, vw_preco_faixa,
  vw_composicao_preco, vw_estoque_opcoes, rel_comissao, vw_comissao_produtos,
  vw_balanca, cadastro_fornecedor, vw_tipoDeMovimento;

function TFrm_Produto.RemoveEspaco(const str: String): string;
const
  cDouble = '  ';
  cOne = ' ';
begin
  result := str;
  while pos(cDouble, result) > 0 do
    result := StringReplace(result, cDouble, cOne, [rfReplaceAll]);
end;

procedure TFrm_Produto.rgNFe_modBCClick(Sender: TObject);
begin
   pnValorPautaBC_ICMS.Enabled := (rgNFe_modBC.ItemIndex = 1);
end;

procedure TFrm_Produto.rgNFe_modBCSTClick(Sender: TObject);
begin
   pnValorPautaBC_ICMS_ST.Enabled := (rgNFe_modBCST.ItemIndex = 5);
end;

//procedure TFrm_Produto.RemoverFaixa1Click(Sender: TObject);
//begin
//  if not clickonTittle(TDBGrid(grid_c)) then
//  begin
//    if wnconfirmacao('Preço Faixa', slinebreak + 'Deseja deletar faixa de preço ?') then
//      execquery('delete from produto_preco_faixa where id = ' + SQL_PRECO_FAIXAID.AsString);
//    carregar_faixa;
//  end;
//end;

procedure TFrm_Produto.sClick(Sender: TObject);
begin
//  s.SelectAll;
end;
{
procedure ConsultarCODBARRAS(Consulta: TFDQuery; Texto: TDBEdit; Tabela, Coluna, Parametro: String);
var
  QueryTemp: TFDQuery;
begin
  QueryTemp := TFDQuery.CREATE(nil);
  QueryTemp.Connection := Consulta.Connection;
  with QueryTemp do
  begin
    Close;
    sql.Clear;
    sql.Add('SELECT * FROM ' + Tabela);
    sql.Add(' WHERE ' + Coluna + ' LIKE :' + Parametro + ' AND CODIGO <> ' + QuotedStr(Consulta.FieldByName('PROD_CODIGO').value));
    Params[0].value := '%' + Texto.Text + '%';
    Open;
    if RecordCount <> 0 then
    begin
      Application.MessageBox('Código de Barras Cadastrado em outro Produto!!! ', 'Mensagem do Sistema.', MB_ICONWARNING + MB_OK);
      Texto.SelectAll;
      Texto.SetFocus;
    end;
  end;
  QueryTemp.Destroy;
end;
}
procedure TFrm_Produto.btn_cad_faixaClick(Sender: TObject);
var
  qtde, preco: extended;
  qry: TFDQuery;
begin
//  qtde := strtofloat(TFunctions.ifthen(edt_qtde_min.Text = '', 0, edt_qtde_min.Text));
//  preco := strtofloat(TFunctions.ifthen(edt_preco.Text = '', 0, TFunctions.replace(edt_preco.Text, 'R$')));
//  cb_tipo.ValidateEdit(false);

//  if not CamposObrigatorios([edt_qtde_min, edt_preco, TEdit(cb_tipo)], ['Quantidade Mínima', 'Preço', 'Tipo']) then
//  begin
//    if comparevalue(preco, 0) <> 1 then
//    begin
//      wnAlerta('Preço por faixa', slinebreak + 'Preço deve ser diferente de 0');
//      edt_preco.SelectAll;
//      edt_preco.SetFocus;
//    end
//    else
//    begin
      //qry := simplequery('SELECT ID from produto_preco_faixa where tipo = ? and id_produto = ?', [cb_tipo.Text, dbedt_codigo.Text]);
      //qry := simplequery('SELECT ID from produto_preco_faixa where tipo = ? and id_produto = ? and qtde = ?', [//cb_tipo.Text,
    //  dbedt_codigo.Text, FloatToStr(qtde)]);
//      if qry = nil then
//      begin
//        execquery('insert into produto_preco_faixa(id_usuario, id_produto, tipo, qtde, preco) values(:p1,:p2,:p3,:p4,:p5)',
//          [TEnv.Tuser.id, dbedt_codigo.Text, cb_tipo.Text, qtde, preco]);
//        deletar_prod_preco_faixa := true;
//
//      end
//      else
//        execquery('UPDATE PRODUTO_PRECO_FAIXA SET QTDE = ?, PRECO = ? where ID = ?', [qtde, preco, qry.Fields[0].value]);
//
//      carregar_faixa;
//      u_funcoes.LimparCampos([edt_qtde_min, edt_preco]);
//
//    end;
//  end;
end;

procedure TFrm_Produto.calcular_preco_produtos(Sender: TObject;

  var Key: Word; Shift: TShiftState);
var
  _PRECO_CUSTO, _FRETE, _DESP_OPERACIONAIS, _MARGEM_LUCRO, _CUSTO_MEDIO, _PRECO_FINAL_VAREJO, _MARGEM_L_DISTRIBUIDOR,
    _PRECO_FINAL_DISTRIBUIDOR, _MARGEM_L_ATACADO, _PRECO_FINAL_ATACADO, _IMPOSTO: extended;
begin
//  if PRECO_CUSTO.Text <> emptystr then
//    _PRECO_CUSTO := TFunctions.replace(PRECO_CUSTO.Text, 'R$', VARDOUBLE);
//
//  if FRETE.Text <> emptystr then
//    _FRETE := TFunctions.replace(FRETE.Text, '%', VARDOUBLE);
//
//  if DESP_OPERACIONAIS.Text <> emptystr then
//    _DESP_OPERACIONAIS := TFunctions.replace(DESP_OPERACIONAIS.Text, '%', VARDOUBLE);
//
//  if MARGEM_LUCRO.Text <> emptystr then
//    _MARGEM_LUCRO := TFunctions.replace(MARGEM_LUCRO.Text, '%', VARDOUBLE);
//
//  if CUSTO_MEDIO.Text <> emptystr then
//    _CUSTO_MEDIO := TFunctions.replace(CUSTO_MEDIO.Text, 'R$', VARDOUBLE);
//
//  if PRECO_FINAL_VAREJO.Text <> emptystr then
//    _PRECO_FINAL_VAREJO := TFunctions.replace(PRECO_FINAL_VAREJO.Text, 'R$', VARDOUBLE);
//
//  if MARGEM_L_DISTRIBUIDOR.Text <> emptystr then
//    _MARGEM_L_DISTRIBUIDOR := TFunctions.replace(MARGEM_L_DISTRIBUIDOR.Text, '%', VARDOUBLE);
//
//  if PRECO_FINAL_DISTRIBUIDOR.Text <> emptystr then
//    _PRECO_FINAL_DISTRIBUIDOR := TFunctions.replace(PRECO_FINAL_DISTRIBUIDOR.Text, 'R$', VARDOUBLE);
//
//  if MARGEM_L_ATACADO.Text <> emptystr then
//    _MARGEM_L_ATACADO := TFunctions.replace(MARGEM_L_ATACADO.Text, '%', VARDOUBLE);
//
//  if PRECO_FINAL_ATACADO.Text <> emptystr then
//    _PRECO_FINAL_ATACADO := TFunctions.replace(PRECO_FINAL_ATACADO.Text, 'R$', VARDOUBLE);
//
//  if IMPOSTO.Text <> emptystr then
//    _IMPOSTO := TFunctions.replace(IMPOSTO.Text, '%', VARDOUBLE);

  if _PRECO_CUSTO <> 0 then
    if (_FRETE = 0) and (_DESP_OPERACIONAIS = 0) and (_MARGEM_LUCRO = 0) then
    begin
      _CUSTO_MEDIO := _PRECO_CUSTO;
      _PRECO_FINAL_DISTRIBUIDOR := _CUSTO_MEDIO;
    end
    else
      _CUSTO_MEDIO := _PRECO_CUSTO + ((_PRECO_CUSTO * _FRETE) / 100) + ((_PRECO_CUSTO * _IMPOSTO) / 100) +
        ((_PRECO_CUSTO * _DESP_OPERACIONAIS) / 100);

  if _MARGEM_LUCRO = 0 then
    _PRECO_FINAL_VAREJO := _CUSTO_MEDIO
  else
    _PRECO_FINAL_VAREJO := _CUSTO_MEDIO + ((_CUSTO_MEDIO * _MARGEM_LUCRO) / 100);

  if _MARGEM_L_DISTRIBUIDOR = 0 then
    _PRECO_FINAL_DISTRIBUIDOR := _CUSTO_MEDIO
  else
    _PRECO_FINAL_DISTRIBUIDOR := _CUSTO_MEDIO + ((_CUSTO_MEDIO * _MARGEM_L_DISTRIBUIDOR) / 100);

  if _MARGEM_L_ATACADO = 0 then
    _PRECO_FINAL_ATACADO := _CUSTO_MEDIO
  else
    _PRECO_FINAL_ATACADO := _CUSTO_MEDIO + ((_CUSTO_MEDIO * _MARGEM_L_ATACADO) / 100);
//
//  if TDBEdit(Sender) <> PRECO_CUSTO then
//    PRECO_CUSTO.Field.asExtended := _PRECO_CUSTO;
//
//  if TDBEdit(Sender) <> FRETE then
//    FRETE.Field.asExtended := _FRETE;
//
//  if TDBEdit(Sender) <> DESP_OPERACIONAIS then
//    DESP_OPERACIONAIS.Field.asExtended := _DESP_OPERACIONAIS;
//
//  if TDBEdit(Sender) <> MARGEM_LUCRO then
//    MARGEM_LUCRO.Field.asExtended := _MARGEM_LUCRO;
//
//  if TDBEdit(Sender) <> CUSTO_MEDIO then
//    CUSTO_MEDIO.Field.asExtended := _CUSTO_MEDIO;
//
//  if TDBEdit(Sender) <> PRECO_FINAL_VAREJO then
//    PRECO_FINAL_VAREJO.Field.asExtended := _PRECO_FINAL_VAREJO;
//
//  if TDBEdit(Sender) <> MARGEM_L_DISTRIBUIDOR then
//    MARGEM_L_DISTRIBUIDOR.Field.asExtended := _MARGEM_L_DISTRIBUIDOR;
//
//  if TDBEdit(Sender) <> PRECO_FINAL_DISTRIBUIDOR then
//    PRECO_FINAL_DISTRIBUIDOR.Field.asExtended := _PRECO_FINAL_DISTRIBUIDOR;
//
//  if TDBEdit(Sender) <> MARGEM_L_ATACADO then
//    MARGEM_L_ATACADO.Field.asExtended := _MARGEM_L_ATACADO;
//
//  if TDBEdit(Sender) <> PRECO_FINAL_ATACADO then
//    PRECO_FINAL_ATACADO.Field.asExtended := _PRECO_FINAL_ATACADO;
//
//  if TDBEdit(Sender) <> IMPOSTO then
//    IMPOSTO.Field.asExtended := _IMPOSTO;
end;

procedure TFrm_Produto.calc_margem(Sender: TObject;

  var Key: Word; Shift: TShiftState);
var
  __MARGEM_LUCRO, __CUSTO_MEDIO, __PRECO_FINAL_VAREJO, __MARGEM_L_DISTRIBUIDOR, __PRECO_FINAL_DISTRIBUIDOR, __MARGEM_L_ATACADO,
    __PRECO_FINAL_ATACADO: extended;
begin
//  if MARGEM_LUCRO.Text <> emptystr then
//    __MARGEM_LUCRO := TFunctions.replace(MARGEM_LUCRO.Text, '%', VARDOUBLE);
//
//  if CUSTO_MEDIO.Text <> emptystr then
//    __CUSTO_MEDIO := TFunctions.replace(CUSTO_MEDIO.Text, 'R$', VARDOUBLE);
//
//  if PRECO_FINAL_VAREJO.Text <> emptystr then
//    __PRECO_FINAL_VAREJO := TFunctions.replace(PRECO_FINAL_VAREJO.Text, 'R$', VARDOUBLE);
//
//  if MARGEM_L_DISTRIBUIDOR.Text <> emptystr then
//    __MARGEM_L_DISTRIBUIDOR := TFunctions.replace(MARGEM_L_DISTRIBUIDOR.Text, '%', VARDOUBLE);
//
//  if PRECO_FINAL_DISTRIBUIDOR.Text <> emptystr then
//    __PRECO_FINAL_DISTRIBUIDOR := TFunctions.replace(PRECO_FINAL_DISTRIBUIDOR.Text, 'R$', VARDOUBLE);
//
//  if MARGEM_L_ATACADO.Text <> emptystr then
//    __MARGEM_L_ATACADO := TFunctions.replace(MARGEM_L_ATACADO.Text, '%', VARDOUBLE);
//
//  if PRECO_FINAL_ATACADO.Text <> emptystr then
//    __PRECO_FINAL_ATACADO := TFunctions.replace(PRECO_FINAL_ATACADO.Text, 'R$', VARDOUBLE);

  if not(comparevalue(__CUSTO_MEDIO, 0) = 0) then
  begin
    if not(comparevalue(__PRECO_FINAL_VAREJO, 0) = 0) then
      __MARGEM_LUCRO := ((__PRECO_FINAL_VAREJO - __CUSTO_MEDIO) * 100) / __CUSTO_MEDIO;
    if not(comparevalue(__PRECO_FINAL_DISTRIBUIDOR, 0) = 0) then
      __MARGEM_L_DISTRIBUIDOR := ((__PRECO_FINAL_DISTRIBUIDOR - __CUSTO_MEDIO) * 100) / __CUSTO_MEDIO;
    if not(comparevalue(__PRECO_FINAL_ATACADO, 0) = 0) then
      __MARGEM_L_ATACADO := ((__PRECO_FINAL_ATACADO - __CUSTO_MEDIO) * 100) / __CUSTO_MEDIO;
  end
  else
    __CUSTO_MEDIO := __PRECO_FINAL_VAREJO;

//  if TDBEdit(Sender) <> PRECO_FINAL_VAREJO then
//    PRECO_FINAL_VAREJO.Field.asExtended := __PRECO_FINAL_VAREJO;
//
//  if TDBEdit(Sender) <> PRECO_FINAL_DISTRIBUIDOR then
//    PRECO_FINAL_DISTRIBUIDOR.Field.asExtended := __PRECO_FINAL_DISTRIBUIDOR;
//
//  if TDBEdit(Sender) <> PRECO_FINAL_ATACADO then
//    PRECO_FINAL_ATACADO.Field.asExtended := __PRECO_FINAL_ATACADO;
//
//  if (comparevalue(__MARGEM_LUCRO, 0) = 1) then
//    MARGEM_LUCRO.Text := TFunctions.replace(formatarmoeda(__MARGEM_LUCRO), 'R$', VARDOUBLE)
//  else
//    MARGEM_LUCRO.Field.asExtended := 0;
//
//  if (comparevalue(__MARGEM_L_DISTRIBUIDOR, 0) = 1) then
//    MARGEM_L_DISTRIBUIDOR.Field.asExtended := TFunctions.replace(formatarmoeda(__MARGEM_L_DISTRIBUIDOR), 'R$', VARDOUBLE)
//  else
//    MARGEM_L_DISTRIBUIDOR.Field.asExtended := 0;
//
//  if (comparevalue(__MARGEM_L_ATACADO, 0) = 1) then
//    MARGEM_L_ATACADO.Field.asExtended := TFunctions.replace(formatarmoeda(__MARGEM_L_ATACADO), 'R$', VARDOUBLE)
//  else
//    MARGEM_L_ATACADO.Field.asExtended := 0;
end;

procedure TFrm_Produto.CarregarDadosInternos;
  procedure PreencherInfo(Edit: TEdit; ReferTo, table: string);
  var
    qry: TFDQuery;
  begin
    if ReferTo <> emptystr then
    begin
      qry := simplequery('SELECT DESCRICAO FROM ' + table + ' WHERE DESCRICAO LIKE ' + QuotedStr(ReferTo + '%'));
      if qry <> nil then
        Edit.Text := qry.Fields[0].Text;
    end;

  end;

begin

  sql_ponto_impressao.Active := false;
  sql_ponto_impressao.Active := true;

  //edCODIGO.Text := inttostr(SQL_PRODUTOCODIGO.value);
  //u_funcoes.CamposObrigatorios_CorPadrao([DESCRICAO_PRODUTO, UNIDADE_MEDIDA, {PRECO_FINAL_VAREJO,} NCM], [], [TcxComboBox(dbcsticms)]);
//  u_funcoes.CamposObrigatorios_CorPadrao([{edt_qtde_min, edt_preco, TEdit(cb_tipo}], []);
  carregar_faixa;

   //AlterarEnabled([GroupBox4,{GroupBox18, GroupBox2, GroupBox15, GroupBox16, GroupBox24, GroupBox1, }GroupBox19, GroupBox22,
   // GroupBox23,{roupBox25, GroupBox26,} btn_familia, btn_sub, btn_grupo, btn_marca, btn_und, btn_ncm, btn_anp{, grp_faixa_preco,
   // btn_cad_faixa}], false);


  //PreencherNCM(SQL_PRODUTONCM.AsString);

  //preencherANP(SQL_PRODUTOANP.AsString);


//  cb_tipo.itemindex := 0;
//  btnlocalizacao.Enabled := false;
//  btnestoque.Enabled := false;
//    IniciarCadastro([bControleIncluir, bControleCancelar, bControleAlterar], false);
end;

procedure TFrm_Produto.aliq_cofinsKeyPress(Sender: TObject;

  var Key: Char);
begin
  inherited;
  Key := u_funcoes.ApenasNumeros(Key);
end;

procedure TFrm_Produto.edALIQ_ICMSExit(Sender: TObject);
begin
   if not PercentualCorreto(edALIQ_ICMS.Text,'Alíquota de ICMS') then
   begin
      edALIQ_ICMS.SetFocus;
      exit;
  end;
end;

procedure TFrm_Produto.edALIQ_ICMSKeyPress(Sender: TObject;
  var Key: Char);
begin
  inherited;
  Key := u_funcoes.ApenasNumeros(Key);
end;

procedure TFrm_Produto.aliq_ipiKeyPress(Sender: TObject;

  var Key: Char);
begin
  inherited;
  Key := u_funcoes.ApenasNumeros(Key);
end;

procedure TFrm_Produto.edNFe_pMVAKeyPress(Sender: TObject; var Key: Char);
begin
  Key := u_funcoes.ApenasNumeros(Key);
end;

procedure TFrm_Produto.edNFe_pMVASTKeyPress(Sender: TObject;

  var Key: Char);
begin
  inherited;
  Key := u_funcoes.ApenasNumeros(Key);
end;

procedure TFrm_Produto.aliq_pisKeyPress(Sender: TObject;

  var Key: Char);
begin
  inherited;
  Key := u_funcoes.ApenasNumeros(Key);
end;

procedure TFrm_Produto.ApagarRegistro;
var qAUX: tFDQuery;
begin
   if edCODIGO.Text = '' then
      exit;

   qAUX := TFDQuery.Create(nil);
   qAUX.Connection := Module.connection;
   qAUX.ConnectionName := 'connection';

   qAUX.close;
   qAUX.sql.clear;
   qAUX.sql.add('DELETE FROM PRODUTO_PROD');
   qAUX.sql.add(' WHERE PROD_CODIGO = :CODIGO');
   qAUX.ParamByName('CODIGO').AsString := edCODIGO.Text;
   qAUX.ExecSql;

   qAUX.Free;
end;

procedure TFrm_Produto.AplicarPadroes;
begin
   //Quando o usuário não definir, aplicar o padrão de alguns parâmetros
   //---------------------------------------------------------------------------

   //Modalidade de determinação da BC do ICMS
   //Padrão = 3-Valor da Operação
   if rgNFe_modBC.ItemIndex = -1 then
      rgNFe_modBC.ItemIndex := 3;

   if edVALOR_PAUTA_BC.Text = '' then
      edVALOR_PAUTA_BC.Text := '0';

   //Modalidade de determinação da BC do ICMS ST (Substituição Tributária)
   //Padrão = 6-Valor da Operação
   if rgNFe_modBCST.ItemIndex = -1 then
      rgNFe_modBCST.ItemIndex := 6;

   if edVALOR_PAUTA_BC_ST.Text = '' then
      edVALOR_PAUTA_BC_ST.Text := '0';

   if edNFe_pMVA.Text = '' then
      edNFe_pMVA.Text := '0';

   if edNFe_pMVAST.Text = '' then
      edNFe_pMVAST.Text := '0';

   if edREDUCAO_ICMS_ST.Text = '' then
      edREDUCAO_ICMS_ST.Text := '0';

   //Indicador de Escala Relevante
   //Padrão = 2-Nenhum
   if rgNFe_indEscala.ItemIndex = -1 then
      rgNFe_indEscala.ItemIndex := 2;

   //Indicador de Tratamento de Lote
   //Padrão = 0-Não tratar
   if rgPROD_TRATALOTE.ItemIndex = -1 then
      rgPROD_TRATALOTE.ItemIndex := 0;

end;

procedure TFrm_Produto.edREDUCAO_ICMSExit(Sender: TObject);
begin
   if not PercentualCorreto(edREDUCAO_ICMS.Text,'Redução do ICMS') then
   begin
      edREDUCAO_ICMS.SetFocus;
      exit;
   end;
end;

procedure TFrm_Produto.edREDUCAO_ICMSKeyPress(Sender: TObject;

  var Key: Char);
begin
  inherited;
  Key := u_funcoes.ApenasNumeros(Key);
end;

procedure TFrm_Produto.edREDUCAO_ICMS_STKeyPress(Sender: TObject;
  var Key: Char);
begin
  Key := u_funcoes.ApenasNumeros(Key);
end;

procedure TFrm_Produto.BALCAO_COMISSAO_ATACADOClick(Sender: TObject);
begin
  //BALCAO_COMISSAO_ATACADO.SelectAll;
end;

procedure TFrm_Produto.BALCAO_COMISSAO_ATACADOKeyPress(Sender: TObject;

  var Key: Char);
begin
  inherited;
  Key := u_funcoes.ApenasNumeros(Key);
end;

procedure TFrm_Produto.BALCAO_COMISSAO_DISTRIBUIDORClick(Sender: TObject);
begin
//  BALCAO_COMISSAO_DISTRIBUIDOR.SelectAll;
end;

procedure TFrm_Produto.BALCAO_COMISSAO_DISTRIBUIDORKeyPress(Sender: TObject;

  var Key: Char);
begin
  inherited;
  Key := ApenasNumeros(Key);
end;

procedure TFrm_Produto.BALCAO_COMISSAO_VAREJOClick(Sender: TObject);
begin
 // BALCAO_COMISSAO_VAREJO.SelectAll;
end;

procedure TFrm_Produto.BALCAO_COMISSAO_VAREJOKeyPress(Sender: TObject;

  var Key: Char);
begin
  inherited;
  Key := ApenasNumeros(Key);
end;

procedure TFrm_Produto.BtnGravarClick(Sender: TObject);
begin
  end;


//procedure TFrm_Produto.btnestoqueClick(Sender: TObject);
//begin
////frm_estoque_opcoes;
//end;

procedure TFrm_Produto.cxButton10Click(Sender: TObject);
begin
   ConsultarCST_COFINS;
end;

procedure TFrm_Produto.cxButton11Click(Sender: TObject);
begin
  frm_estoque_opcoes := tfrm_estoque_opcoes.CREATE(Application);
  frm_estoque_opcoes.ShowModal;
end;

procedure TFrm_Produto.cxButton12Click(Sender: TObject);
begin
  frm_dados_produtos := Tfrm_dados_produtos.CREATE(Application);
  frm_dados_produtos.ShowModal;
end;

procedure TFrm_Produto.cxButton13Click(Sender: TObject);
begin
   ConsultarTPMOV;
end;

procedure TFrm_Produto.cxButton16Click(Sender: TObject);
begin
  frm_balanca := Tfrm_balanca.CREATE(Application);
  frm_balanca.ShowModal;
end;

procedure TFrm_Produto.cxButton17Click(Sender: TObject);
begin
  frm_etiquetas := Tfrm_etiquetas.CREATE(Application);
  frm_etiquetas.ShowModal;
end;

procedure TFrm_Produto.cxButton19Click(Sender: TObject);
begin
  Frm_fornecedor := TFrm_fornecedor.CREATE(Application);
  Frm_fornecedor.ShowModal;
end;

procedure TFrm_Produto.cxButton3Click(Sender: TObject);
begin
  frm_produto_precos := tfrm_produto_precos.CREATE(Application);
  frm_produto_precos.ShowModal;
end;

procedure TFrm_Produto.cxButton5Click(Sender: TObject);
begin
   ConsultarCST_ICMS;
end;

procedure TFrm_Produto.cxButton6Click(Sender: TObject);
begin
   ConsultarCFOP;
end;

procedure TFrm_Produto.bRPC_DeleteClick(Sender: TObject);
begin
   if edRPC_TPMOV.Text  = '' then exit;
   if edRPC_CFOP.Text   = '' then exit;

   ExcluiRELACAO_CFOP_x_PRODUTO_xCST_PISCOFINS_RPC(edCodigo.Text,
                                                   edRPC_TPMOV.Text,
                                                   edRPC_CFOP.Text);

   Atualizar_RELACAO_CFOP_x_PRODUTO_xCST_PISCOFINS_RPC;
end;

procedure TFrm_Produto.ConsultarCFOP;
begin
  Frm_Consulta_Generica := TFrm_Consulta_Generica.CREATE(nil, cgCFOP, edRPC_CFOP);
  Frm_Consulta_Generica.ShowModal;
end;

procedure TFrm_Produto.ConsultarCODIGO_ORIGEM_MERCADORIA;
begin
  Frm_Consulta_Generica := TFrm_Consulta_Generica.CREATE(nil, cgORIGEM, edCODIGO_ORIGEM_MERCADORIA);
  Frm_Consulta_Generica.ShowModal;
  edCODIGO_ORIGEM_MERCADORIA_NOME.Text := fORIGEM_MERCADORIA_DESCRICAO(edCODIGO_ORIGEM_MERCADORIA.Text);
end;

procedure TFrm_Produto.ConsultarCST_COFINS;
begin
  Frm_Consulta_Generica := TFrm_Consulta_Generica.CREATE(nil, cgCOFINS, edRPC_COFINS);
  Frm_Consulta_Generica.ShowModal;
end;

procedure TFrm_Produto.ConsultarCST_ICMS;
begin
  Frm_Consulta_Generica := TFrm_Consulta_Generica.CREATE(nil, cgICMS, edICMS_CST);
  Frm_Consulta_Generica.ShowModal;
  edICMS_CST_NOME.Text := fCST_ICMS_DESCRICAO(edICMS_CST.Text);
end;

procedure TFrm_Produto.ConsultarCST_PIS;
begin
  Frm_Consulta_Generica := TFrm_Consulta_Generica.CREATE(nil, cgPIS, edRPC_PIS);
  Frm_Consulta_Generica.ShowModal;
end;

procedure TFrm_Produto.cxButton7Click(Sender: TObject);
begin
   ConsultarCODIGO_ORIGEM_MERCADORIA;
end;

procedure TFrm_Produto.cxButton8Click(Sender: TObject);
begin
   ConsultarCST_PIS;
end;

procedure TFrm_Produto.bRPC_InsertClick(Sender: TObject);
begin
   if edRPC_TPMOV.Text  = '' then exit;
   if edRPC_CFOP.Text   = '' then exit;
   if edRPC_PIS.Text    = '' then exit;
   if edRPC_COFINS.Text = '' then exit;

   ExcluiRELACAO_CFOP_x_PRODUTO_xCST_PISCOFINS_RPC(edCodigo.Text,
                                                   edRPC_TPMOV.Text,
                                                   edRPC_CFOP.Text);


   Associar_CFOP_PROD_CST_PISCOFINS(edRPC_TPMOV.Text,
                                    edRPC_CFOP.Text,
                                    StrToInt(edCodigo.Text),
                                    edRPC_PIS.Text,
                                    edRPC_COFINS.Text);

   Atualizar_RELACAO_CFOP_x_PRODUTO_xCST_PISCOFINS_RPC;
end;

procedure TFrm_Produto.cxButton9Click(Sender: TObject);
begin
  frm_comissoes := Tfrm_comissoes.CREATE(Application);
  frm_comissoes.ShowModal;
end;

procedure TFrm_Produto.btn_anpClick(Sender: TObject);
begin
  //Frm_Consulta_Generica := TFrm_Consulta_Generica.CREATE(nil, cgANP, TEdit(edt_anp));
  //Frm_Consulta_Generica.ShowModal;
  //preencherANP(edt_anp.Text);
end;

procedure TFrm_Produto.btn_undClick(Sender: TObject);
begin
  ConsultarUnidades;
end;

procedure TFrm_Produto.ConsultarUnidades;
begin
  //Consultar as marcas
  //----------------------------------------------------------------------------

  //Constroi tela de consulta de marcas
  Frm_unidade := TFrm_unidade.CREATE(Application);

  //Exibe a tela de consulta de marcas
  Frm_unidade.ShowModal;

  //Selecionou uma marca ou não
  edUNIDADE_MEDIDA.Text := Frm_unidade_CODIGO;

  //Destroi tela de consulta de marcas
  Frm_unidade.Free;

  //Exibe a sigla (o símbolo) da unidade de medida, ou limpa o campo
  edUNIDADE_MEDIDA_NOME.Text := fproduto_unidade_SIGLA(edUNIDADE_MEDIDA.Text);
end;

procedure TFrm_Produto.bControleGravarClick(Sender: TObject);
begin
  if not DadosCorretos then
     exit;

  ApagarRegistro;
  InserirRegistro;

  //Se esta tela foi chamada por outra tela,
  //Fecha a tela ao salvar o produto
  if vFrm_ProdutoPesquisarCodigoDoProduto then
  begin
    Close;
  end;

  //Ajusta botões de controle
  pode_Alterar_Incluir(Frm_Produto);

  //Relação CFOPxProdutoxCSTPIS/COFINS
  bRPC_Insert.Enabled := false;
  bRPC_Delete.Enabled := false;

  //Impedir Edição
  HabilitarCampos(False);

  //Posicionar na aba de consulta
  Ir_Para_Consulta;

  //Atualizar a pesquisa para constar o produto cadastrado ou alterado
  Pesquisar;

end;

procedure TFrm_Produto.bControleCancelarClick(Sender: TObject);
begin
  //Se esta tela foi chamada por outra tela,
  //Fecha a tela ao cancelar edição do produto
  if vFrm_ProdutoPesquisarCodigoDoProduto then
  begin
    Close;
  end;

  //Ajusta botões de controle
  pode_Alterar_Incluir(Frm_Produto);

  //Relação CFOPxProdutoxCSTPIS/COFINS
  bRPC_Insert.Enabled := false;
  bRPC_Delete.Enabled := false;

  //Impedir Edição
  HabilitarCampos(False);

  //Posicionar na aba de consulta
  Ir_Para_Consulta;

end;

procedure TFrm_Produto.Ir_Para_Cadastro;
begin
   //Posicionar na aba de Cadastro
   cxpageControl1.ActivePageIndex := 1;

  //Permitir edição
  HabilitarCampos(True);

  //Colocar o cursor no 1o campo editável.
  edCODIGO_ALFANUMERICO.setfocus;

  //Destacar campos
  Pintar(Frm_Produto);

end;

procedure TFrm_Produto.Ir_Para_Consulta;
begin
   //limpar todos os campos da tela
   LimpaTela(Frm_Produto);
   qRELACAO_CFOP_x_PRODUTO_xCST_PISCOFINS_RPC.Close;

   //Posicionar na aba de consulta
   cxpageControl1.ActivePageIndex := 0;

   //Posicionar o cursor no campo de argumento de pesquisa
   edArgumentoDePesquisa.SetFocus;

   //Destacar campos
   Pintar(Frm_Produto);

end;

procedure TFrm_Produto.bControleAlterarClick(Sender: TObject);
begin
  Clicou_Botao_Alterar;
end;

procedure TFrm_Produto.Clicou_Botao_Alterar;
begin
  if ((edCODIGO.Text = '' )  or
      (edCODIGO.Text = '0')) and
     (edDESCRICAO_PRODUTO.Text = '') then
  begin
    Application.MessageBox('Nenhum produto foi selecionado.', 'Alterar', MB_ICONWARNING + MB_OK);
    exit;
  end;

  //AlterarEnabled([GroupBox4, GroupBox19, grupocfop, GroupBox22, GroupBox23,btn_familia, btn_sub, btn_grupo, btn_marca, btn_und, btn_csosn, btn_ncm, btn_anp], true);

  //Ajusta botões de controle
  pode_Cancelar_Gravar(Frm_Produto);

  //Relação CFOPxProdutoxCSTPIS/COFINS
  bRPC_Insert.Enabled := true;
  bRPC_Delete.Enabled := true;

  //Posicionar na aba Cadastro
  Ir_Para_Cadastro;

end;

procedure TFrm_Produto.bControleIncluirClick(Sender: TObject);
begin
  //Ajusta botões de controle
  pode_Cancelar_Gravar(Frm_Produto);

  //Relação CFOPxProdutoxCSTPIS/COFINS
  bRPC_Insert.Enabled := false;
  bRPC_Delete.Enabled := false;

  //limpar todos os campos da tela
  LimpaTela(Frm_Produto);

  //Posicionar na aba Cadastro
  Ir_Para_Cadastro;

  {
    AlterarEnabled([GroupBox4, // GroupBox18, GroupBox2, GroupBox15, GroupBox16, GroupBox24, GroupBox1, GroupBox19,
    grupocfop, GroupBox22,
     // GroupBox23, GroupBox25, GroupBox26,
       btn_familia, btn_sub, btn_grupo, btn_marca, btn_und, btn_csosn, btn_ncm, btn_anp
       //grp_faixa_preco,
    //  btn_cad_faixa
      ], true);
    SQL_CSTIPI.Active := true;
    SQL_CSTPIS.Active := true;
    SQL_CSTCOFINS.Active := true;
    SQL_ORIGEM_ICMS.Active := false;
    SQL_ORIGEM_ICMS.Active := true;
    SQL_PRODUTO.Active := true;
    SQL_CSTICMS.Active := true;
    SQL_NAT_OP.Active := false;
    SQL_NAT_OP.Active := true;
    SQL_TIPO_ITEM.Active := true;
    sql_increment.Active := false;
    sql_increment.Active := true;
    carregar_nat_op;
    SQL_PRODUTO.Insert;
    if sql_incrementAUTO_INCREMENT.value = 0 then
      edCODIGO.Text := '1'
    else
      edCODIGO.Text := inttostr(sql_incrementAUTO_INCREMENT.value);
    cbTipoItem.itemindex := 0;
    cb_origem.itemindex := 0;
    IniciarCadastro([bControleIncluir, bControleCancelar, bControleAlterar], true);
    edDESCRICAO_PRODUTO.SetFocus;
    chk_ativocadastro.Checked := true;
//    DBEdit13.Text := '0';
//    ESTOQUE_MINIMO.Text := '0';
  end;
  }
end;

procedure TFrm_Produto.btn_marcaClick(Sender: TObject);
begin
   ConsultarMarcas;
end;

procedure TFrm_Produto.ConsultarMarcas;
begin
  //Consultar as marcas
  //----------------------------------------------------------------------------

  //Constroi tela de consulta de marcas
  Frm_Marca := TFrm_Marca.CREATE(Application);

  //Exibe a tela de consulta de marcas
  Frm_Marca.ShowModal;

  //Selecionou uma marca ou não
  edMARCA.Text := Frm_Marca_CODIGO;

  //Destroi tela de consulta de marcas
  Frm_Marca.Free;

  //Exibe o nome da marca, ou limpa o campo
  edMARCA_NOME.Text := fProdutoMarca_NOME(edMARCA.Text);
end;

procedure TFrm_Produto.ConsultarProduto_tipo_item;
begin
  Frm_Consulta_Generica := TFrm_Consulta_Generica.CREATE(nil, cgTIPO_ITEM, edTIPO_ITEM);
  Frm_Consulta_Generica.ShowModal;
  Frm_Consulta_Generica.Free;
  edTIPO_ITEM_NOME.Text := fProduto_tipo_item_NOME(edTIPO_ITEM.Text);
end;

procedure TFrm_Produto.ConsultarSubGrupos;
begin
  Frm_SubGrupo := TFrm_SubGrupo.CREATE(Application);
  Frm_SubGrupo.ShowModal;
  edSUBGRUPO.Text := Frm_SubGrupo_CODIGO;
  Frm_SubGrupo.Free;
  edSUBGRUPO_NOME.Text := fProdutoSUBGRUPO_NOME(edSUBGRUPO.Text);
end;

procedure TFrm_Produto.ConsultarTPMOV;
begin
   //Pesquisa/Seleciona um tipo de movimento
   //--------------------------------------------------------------------------
   frm_tipoDeMovimento := Tfrm_tipoDeMovimento.Create(Self);
   vfrm_tipoDeMovimentovConsultaExterna:= True; // É uma consulta externa
   frm_tipoDeMovimento.ShowModal;
   edRPC_TPMOV.Text := vfrm_tipoDeMovimentoTPMOV_CODIGO;
   frm_tipoDeMovimento.Free;
end;

procedure TFrm_Produto.btn_ncmClick(Sender: TObject);
begin
  Pesquisar_NCM;
end;

procedure TFrm_Produto.Pesquisar_NCM;
begin
  Frm_Consulta_Generica := TFrm_Consulta_Generica.CREATE(nil, cgNCM, edNCM);
  Frm_Consulta_Generica.ShowModal;
  Preencher_CEST;
end;

procedure TFrm_Produto.Preencher_CEST;
var
  int: Integer;
  str_cest: string;
  qry: TFDQuery;
begin
  //Inicia CEST e descrição do NCM
  mmNCM.Text  := '';
  edCEST.Text := '';

  if edNCM.Text = '' then
  begin
    // Não informou NCM...
    mmNCM.Text  := '';
    edCEST.Text := '';
    exit;
  end;

  // Informou NCM...
  str_cest := edNCM.Text;

  {
  int := pos(';', str_cest);
  if int <> 0 then
     edNCM.Text := copy(str_cest, 0, int - 1);
  }


  //Procura CEST na relação NCM x CEST
  qry := simplequery('SELECT CEST, DESCRICAO FROM TAB_CEST WHERE NCM = "'
                    + edNCM.Text+'"');

  if qry = nil then
  begin
    //Não encontrou NCM
    wnAlerta('Cadastrar Produto',
             'NCM não encontrado');
    edNCM.SetFocus;
    exit;
  end;

  //Encontrou CEST...
  edCEST.Text := qry.FieldByName('CEST'     ).AsString;
  mmNCM.Text  := qry.FieldByName('DESCRICAO').AsString;

end;

procedure TFrm_Produto.btn_familiaClick(Sender: TObject);
begin
   ConsultarFamilias;
end;

procedure TFrm_Produto.ConsultarFamilias;
begin
  Frm_Familia := TFrm_Familia.CREATE(Application);
  Frm_Familia.ShowModal;
  edFAMILIA.Text := Frm_Familia_CODIGO;
  Frm_Familia.Free;
  edFAMILIA_NOME.Text := fProdutoFAMILIA_NOME(edFAMILIA.Text);
end;

procedure TFrm_Produto.ConsultarGrupos;
begin
  Frm_Grupo := TFrm_Grupo.CREATE(Application);
  Frm_Grupo.ShowModal;
  edGRUPO.Text := Frm_Grupo_CODIGO;
  Frm_Grupo.Free;
  edGRUPO_NOME.Text := fProdutoGRUPO_NOME(edGRUPO.Text);
end;

procedure TFrm_Produto.btn_grupoClick(Sender: TObject);
begin
   ConsultarGrupos;
end;

procedure TFrm_Produto.btn_subClick(Sender: TObject);
begin
  ConsultarSubGrupos;
end;

procedure TFrm_Produto.btn_TipoClick(Sender: TObject);
begin
   ConsultarProduto_tipo_item;
end;

procedure TFrm_Produto.cxDateEdit1KeyPress(Sender: TObject;
  var Key: Char);
begin
  inherited;
  Key := u_funcoes.ApenasNumeros(Key);
end;

procedure TFrm_Produto.cxDateEdit2KeyPress(Sender: TObject;

  var Key: Char);
begin
  inherited;
  Key := u_funcoes.ApenasNumeros(Key);
end;

procedure TFrm_Produto.cxDBTextEdit10KeyPress(Sender: TObject;

  var Key: Char);
begin
  inherited;
  Key := u_funcoes.ApenasNumeros(Key);
end;

procedure TFrm_Produto.cxDBTextEdit13KeyPress(Sender: TObject;

  var Key: Char);
begin
  inherited;
  Key := u_funcoes.ApenasNumeros(Key);
end;

procedure TFrm_Produto.cxDBTextEdit16KeyPress(Sender: TObject;

  var Key: Char);
begin
  inherited;
  Key := u_funcoes.ApenasNumeros(Key);
end;

procedure TFrm_Produto.cxDBTextEdit1KeyPress(Sender: TObject;

  var Key: Char);
begin
  inherited;
  Key := u_funcoes.ApenasNumeros(Key);
end;

procedure TFrm_Produto.cxDBTextEdit25KeyPress(Sender: TObject;

  var Key: Char);
begin
  inherited;
  Key := u_funcoes.ApenasNumeros(Key);
end;

//procedure TFrm_Produto.cxDBTextEdit26Exit(Sender: TObject);
//begin
//  if FRETE.Text = '' then
//  begin
//    FRETE.Text := '0';
//  end;
//end;

procedure TFrm_Produto.cxDBTextEdit26KeyPress(Sender: TObject;

  var Key: Char);
begin
  inherited;
  Key := u_funcoes.ApenasNumeros(Key);
end;

procedure TFrm_Produto.cxDBTextEdit28KeyPress(Sender: TObject;
var Key: Char);
begin
  inherited;
  Key := u_funcoes.ApenasNumeros(Key);
end;

procedure TFrm_Produto.cxDBTextEdit29KeyPress(Sender: TObject;
var Key: Char);
begin
  inherited;
  Key := u_funcoes.ApenasNumeros(Key);
end;

procedure TFrm_Produto.cxDBTextEdit30KeyPress(Sender: TObject;

  var Key: Char);
begin
  inherited;
  Key := u_funcoes.ApenasNumeros(Key);
end;

procedure TFrm_Produto.cxDBTextEdit31KeyPress(Sender: TObject;

  var Key: Char);
begin
  inherited;
  Key := u_funcoes.ApenasNumeros(Key);
end;

procedure TFrm_Produto.cxDBTextEdit33KeyPress(Sender: TObject;

  var Key: Char);
begin
  inherited;
  Key := u_funcoes.ApenasNumeros(Key);
end;

procedure TFrm_Produto.cxDBTextEdit35KeyPress(Sender: TObject;
  var Key: Char);
begin
  inherited;
  Key := u_funcoes.ApenasNumeros(Key);
end;

procedure TFrm_Produto.cxDBTextEdit36KeyPress(Sender: TObject;

  var Key: Char);
begin
  inherited;
  Key := u_funcoes.ApenasNumeros(Key);
end;

procedure TFrm_Produto.cxDBTextEdit37KeyPress(Sender: TObject;

  var Key: Char);
begin
  inherited;
  Key := u_funcoes.ApenasNumeros(Key);
end;

procedure TFrm_Produto.cxDBTextEdit38KeyPress(Sender: TObject;

  var Key: Char);
begin
  inherited;
  Key := u_funcoes.ApenasNumeros(Key);
end;

procedure TFrm_Produto.cxDBTextEdit39KeyPress(Sender: TObject;

  var Key: Char);
begin
  inherited;
  Key := u_funcoes.ApenasNumeros(Key);
end;

procedure TFrm_Produto.cxDBTextEdit3KeyPress(Sender: TObject;

  var Key: Char);
begin
  inherited;
  Key := u_funcoes.ApenasNumeros(Key);
end;

procedure TFrm_Produto.cxDBTextEdit40KeyPress(Sender: TObject;

  var Key: Char);
begin
  inherited;
  Key := u_funcoes.ApenasNumeros(Key);
end;

procedure TFrm_Produto.cxDBTextEdit41KeyPress(Sender: TObject;

  var Key: Char);
begin
  inherited;
  Key := u_funcoes.ApenasNumeros(Key);
end;

procedure TFrm_Produto.cxDBTextEdit42KeyPress(Sender: TObject;

  var Key: Char);
begin
  inherited;
  Key := u_funcoes.ApenasNumeros(Key);
end;

procedure TFrm_Produto.cxDBTextEdit43KeyPress(Sender: TObject;

  var Key: Char);
begin
  inherited;
  Key := u_funcoes.ApenasNumeros(Key);
end;

procedure TFrm_Produto.cxDBTextEdit44KeyPress(Sender: TObject;

  var Key: Char);
begin
  inherited;
  Key := u_funcoes.ApenasNumeros(Key);
end;

procedure TFrm_Produto.cxDBTextEdit45KeyPress(Sender: TObject;

  var Key: Char);
begin
  inherited;
  Key := u_funcoes.ApenasNumeros(Key);
end;

procedure TFrm_Produto.cxDBTextEdit46KeyPress(Sender: TObject;

  var Key: Char);
begin
  inherited;
  Key := u_funcoes.ApenasNumeros(Key);
end;

procedure TFrm_Produto.cxDBTextEdit47KeyPress(Sender: TObject;

  var Key: Char);
begin
  inherited;
  Key := u_funcoes.ApenasNumeros(Key);
end;

procedure TFrm_Produto.cxDBTextEdit48KeyPress(Sender: TObject;

  var Key: Char);
begin
  inherited;
  Key := u_funcoes.ApenasNumeros(Key);
end;

procedure TFrm_Produto.cxDBTextEdit49KeyPress(Sender: TObject;

  var Key: Char);
begin
  inherited;
  Key := u_funcoes.ApenasNumeros(Key);
end;

procedure TFrm_Produto.cxDBTextEdit52KeyPress(Sender: TObject;

  var Key: Char);
begin
  inherited;
  Key := u_funcoes.ApenasNumeros(Key);
end;

procedure TFrm_Produto.cxDBTextEdit55KeyPress(Sender: TObject;

  var Key: Char);
begin
  inherited;
  Key := u_funcoes.ApenasNumeros(Key);
end;

procedure TFrm_Produto.cxDBTextEdit56KeyPress(Sender: TObject;

  var Key: Char);
begin
  inherited;
  Key := u_funcoes.ApenasNumeros(Key);
end;

procedure TFrm_Produto.cxDBTextEdit57KeyPress(Sender: TObject;

  var Key: Char);
begin
  inherited;
  Key := u_funcoes.ApenasNumeros(Key);
end;

procedure TFrm_Produto.cxDBTextEdit59KeyPress(Sender: TObject;

  var Key: Char);
begin
  inherited;
  Key := u_funcoes.ApenasNumeros(Key);
end;

procedure TFrm_Produto.cxDBTextEdit8KeyPress(Sender: TObject;

  var Key: Char);
begin
  inherited;
  Key := u_funcoes.ApenasNumeros(Key);
end;

procedure TFrm_Produto.cxTabSheet1Show(Sender: TObject);
begin
  //Panel1.hide;
  cbTipoItemConsulta.EditValue := '00';
  //Pesquisar;
  //cbFiltro.itemindex := 2;
  edArgumentoDePesquisa.SetFocus;
  lblprodcads.Caption := TProduto.CREATE.countAll;
end;

function TFrm_Produto.DadosCorretos: Boolean;
begin
   //Valida todos os dados
   //       Retorna true se tudo ok
   //       Retorna false se algo errado
   //---------------------------------------------------------------------------

   result := false;

   //Validar dados por abas...
   if not Dados_da_Aba_Cadastro_OK   then exit;
   if not Dados_da_Aba_Tributacao_OK then exit;

   // Aplicar valores-padrão
   AplicarPadroes;

   //Tudo ok!
   Result := True;
end;


function TFrm_Produto.Dados_da_Aba_Cadastro_OK: Boolean;
begin
   //Valida Dados da Aba Cadastro
   //       Retorna true se tudo ok
   //       Retorna false se algo errado
   //---------------------------------------------------------------------------

   //Posiciona na Aba de Cadastros
   //evitando que o comando "setfocus" de erro por focar objeto não disponível
   cxPageControl1.ActivePageIndex := 1;

   result := false;

   if JaExiste_CODIGO_ALFANUMERICO then exit;
   if JaExiste_PROD_EAN            then exit;

   if edDESCRICAO_PRODUTO.Text = '' then
   begin
      wnAlerta('Cadastrar Produto',
               'Informe a descrição/nome do Produto');
      edDESCRICAO_PRODUTO.SetFocus;
      exit;
   end;
   if JaExiste_DESCRICAO_PRODUTO then exit;


   if edPRECO_FINAL_ATACADO.Text <> '' then
      if not NumeroPositivoValido(edPRECO_FINAL_ATACADO.Text) then
      begin
         wnAlerta('Cadastrar Produto',
                  'Preço de Atacado inválido');
         edPRECO_FINAL_ATACADO.SetFocus;
         exit;
      end;

   if edPRECO_FINAL_VAREJO.Text <> '' then
      if not NumeroPositivoValido(edPRECO_FINAL_VAREJO.Text) then
      begin
         wnAlerta('Cadastrar Produto','Preço de Varejo inválido', taLeftJustify, 12);
         edPRECO_FINAL_VAREJO.SetFocus;
         exit;
      end;

   if edPRECO_FINAL_DISTRIBUIDOR.Text <> '' then
      if not NumeroPositivoValido(edPRECO_FINAL_DISTRIBUIDOR.Text) then
      begin
         wnAlerta('Cadastrar Produto','Preço de Distribuidor inválido', taLeftJustify, 12);
         edPRECO_FINAL_DISTRIBUIDOR.SetFocus;
         exit;
      end;

   //Aba Cadastro ok!
   Result := True;

end;

function TFrm_Produto.Dados_da_Aba_Tributacao_OK: Boolean;
begin
   //Valida Dados da Aba Tributação
   //       Retorna true se tudo ok
   //       Retorna false se algo errado
   //---------------------------------------------------------------------------

   //Posiciona na Aba de Tributação
   //evitando que o comando "setfocus" de erro por focar objeto não disponível
   cxPageControl1.ActivePageIndex := 2;


   result := false;

   if not PercentualCorreto(edALIQ_ICMS.Text,'Alíquota de ICMS') then
   begin
      edALIQ_ICMS.SetFocus;
      exit;
   end;

   if not PercentualCorreto(edREDUCAO_ICMS.Text,'Redução do ICMS') then
   begin
      edREDUCAO_ICMS.SetFocus;
      exit;
   end;

   // Modalidade BC ICMS = Valor de Pauta
   if rgNFe_modBC.ItemIndex = 1 then
   begin
      if Vazio_ou_Zero(edVALOR_PAUTA_BC.Text) then
      begin
         wnAlerta('Cadastrar Produto','Modalidade de BC ICMS Pauta exige que se informe o Valor de Pauta', taLeftJustify, 12);
         rgNFe_modBC.SetFocus;
         exit;
      end
   end
   else
   begin
      if not Vazio_ou_Zero(edVALOR_PAUTA_BC.Text) then
      begin
         wnAlerta('Cadastrar Produto','Modalidade de BC ICMS diferente de Pauta impede que se informe o Valor de Pauta', taLeftJustify, 12);
         rgNFe_modBC.SetFocus;
         exit;
      end
   end;

   // Modalidade BC ICMS ST = Valor de Pauta
   if rgNFe_modBCST.ItemIndex = 5 then
   begin
      if Vazio_ou_Zero(edVALOR_PAUTA_BC_ST.Text) then
      begin
         wnAlerta('Cadastrar Produto','Modalidade de BC ICMS ST Pauta exige que se informe o Valor de Pauta', taLeftJustify, 12);
         rgNFe_modBCST.SetFocus;
         exit;
      end
   end
   else
   begin
      if not Vazio_ou_Zero(edVALOR_PAUTA_BC_ST.Text) then
      begin
         wnAlerta('Cadastrar Produto','Modalidade de BC ST diferente de Pauta impede que se informe o Valor de Pauta', taLeftJustify, 12);
         rgNFe_modBCST.SetFocus;
         exit;
      end
   end;

   // Modalidade BC ICMS = Margem do Valor Agregado
   if rgNFe_modBC.ItemIndex = 0 then
   begin
      if Vazio_ou_Zero(edNFe_pMVA.Text) then
      begin
         wnAlerta('Cadastrar Produto','Modalidade de BC ICMS Margem do Valor Agregado (MVA) exige que se informe o % de MVA', taLeftJustify, 12);
         rgNFe_modBC.SetFocus;
         exit;
      end
   end
   else
   begin
      if not Vazio_ou_Zero(edNFe_pMVA.Text) then
      begin
         wnAlerta('Cadastrar Produto','Modalidade de BC diferente de Margem de Valor Agregado (MVA) impede que se informe o % de MVA', taLeftJustify, 12);
         rgNFe_modBC.SetFocus;
         exit;
      end
   end;

   // Modalidade BC ICMS ST = Margem do Valor Agregado
   if rgNFe_modBCST.ItemIndex = 4 then
   begin
      if Vazio_ou_Zero(edNFe_pMVAST.Text) then
      begin
         wnAlerta('Cadastrar Produto','Modalidade de BC ICMS ST Margem do Valor Agregado (MVA) exige que se informe o % de MVA', taLeftJustify, 12);
         rgNFe_modBCST.SetFocus;
         exit;
      end
   end
   else
   begin
      if not Vazio_ou_Zero(edNFe_pMVAST.Text) then
      begin
         wnAlerta('Cadastrar Produto','Modalidade de BC ST diferente de Margem de Valor Agregado (MVA) impede que se informe o % de MVA', taLeftJustify, 12);
         rgNFe_modBCST.SetFocus;
         exit;
      end
   end;

   //Aba Tributação ok!
   Result := True;
end;

procedure TFrm_Produto.ESTOQUE_MINIMOKeyPress(Sender: TObject;
var Key: Char);
begin
  inherited;
  Key := u_funcoes.ApenasNumeros(Key);
end;

procedure TFrm_Produto.dbcsticmsClick(Sender: TObject);
begin
  RegraTributacao;
end;

procedure TFrm_Produto.DBEdit12KeyPress(Sender: TObject;
var Key: Char);
begin
  inherited;
  Key := ApenasNumeros(Key);
end;

procedure TFrm_Produto.DBEdit13KeyPress(Sender: TObject;
var Key: Char);
begin
  if not TEnv.Tuser.isGerente then
  begin
    tdialogs.wnAlerta('Estoque', 'Você não tem permissão para movimentar estoque.');
    Key := #0;
  end
  else
  begin
    inherited;
    Key := ApenasNumeros(Key);
  end;
end;

procedure TFrm_Produto.DBEdit14KeyPress(Sender: TObject;
var Key: Char);
begin
  inherited;
  Key := ApenasNumeros(Key);
end;

procedure TFrm_Produto.DBEdit15KeyPress(Sender: TObject;
var Key: Char);
begin
  inherited;
  Key := ApenasNumeros(Key);
end;

procedure TFrm_Produto.DBEdit1KeyPress(Sender: TObject;
var Key: Char);
begin
  inherited;
  Key := u_funcoes.ApenasNumeros(Key);
end;

procedure TFrm_Produto.DBEdit2KeyPress(Sender: TObject;
var Key: Char);
begin
  inherited;
  Key := u_funcoes.ApenasNumeros(Key);
end;

procedure TFrm_Produto.chk_ativoClick(Sender: TObject);
begin
  edArgumentoDePesquisa.SetFocus;
end;

procedure TFrm_Produto.chk_diff_estoquePropertiesChange(Sender: TObject);
begin
  updateEstoque;
end;

procedure TFrm_Produto.chk_inativoClick(Sender: TObject);
begin
  edArgumentoDePesquisa.SetFocus;
end;

procedure TFrm_Produto.chk_todosClick(Sender: TObject);
begin
  edArgumentoDePesquisa.SetFocus;
end;

procedure TFrm_Produto.CodBalancaCheck(campo: TDBEdit);
var
  qry: TFDQuery;
begin
  if campo.Text <> '' then
  begin
    qry := simplequery('SELECT * FROM PRODUTO_PROD WHERE (COD_BALANCA_1 = ' + QuotedStr(campo.Text) + ' OR COD_BALANCA_2 = ' +
      QuotedStr(campo.Text) + ' OR COD_BALANCA_3 = ' + QuotedStr(campo.Text) + ') AND PROD_CODIGO <> ' + QuotedStr(edCODIGO.Text));
    if qry <> nil then
    begin
      wnAlerta('Código Balança', 'Código da balança ' + campo.Text + ' já está cadastrado no produto ' + slinebreak + 'Cód: ' +
        qry.FieldByName('PROD_CODIGO').AsString + ' - Descrição: ' + qry.FieldByName('DESCRICAO_PRODUTO').AsString);
      campo.SelectAll;
      campo.SetFocus;
      qry.Destroy;
    end;
  end;
end;

function TFrm_Produto.JaExiste_PROD_EAN: Boolean;
var
  qry: TFDQuery;
  x: string;
begin
  result := false;
  if edPROD_EAN.Text = ''         then exit;
  if edPROD_EAN.Text = 'SEM GTIN' then exit;

  x := 'SELECT PROD_CODIGO,      '+
       '       DESCRICAO_PRODUTO '+
       '  FROM PRODUTO_PROD      '+
       ' WHERE PROD_EAN     =' + QuotedStr(edPROD_EAN.Text) +
       '   AND PROD_CODIGO  <> ' + edCODIGO.Text;
    qry := simplequery(x);
    if qry <> nil then
    begin
      result := true;
      wnAlerta('Cadastrar Produto',
               'Código de Barras já cadastrado no produto: ' + slinebreak
             + 'Cód: ' + qry.Fields[0].AsString              + slinebreak
             + 'Descrição: ' + qry.Fields[1].AsString,
             taLeftJustify, 12);
      edPROD_EAN.SelectAll;
      edPROD_EAN.SetFocus;
    end;
end;

function TFrm_Produto.JaExiste_DESCRICAO_PRODUTO: Boolean;
var
  qry: TFDQuery;
  x: string;
begin
  result := False;
  if edDESCRICAO_PRODUTO.Text = '' then
     exit;

  x := 'SELECT PROD_CODIGO, '
     +        'DESCRICAO_PRODUTO '
     +   'FROM PRODUTO_PROD '
     +  'WHERE DESCRICAO_PRODUTO = ' + QuotedStr(edDESCRICAO_PRODUTO.Text);
  if edCODIGO.Text <> '' then
     x := x + ' AND PROD_CODIGO  <> ' + QuotedStr(edCODIGO.Text);

  qry := simplequery(x);
  if qry <> nil then
  begin
      wnAlerta('Cadastrar Produto',
               'Já existe outro produto com esta descrição: ' + slinebreak
             + 'Cód: ' + qry.Fields[0].AsString              + slinebreak
             + 'Descrição: ' + qry.Fields[1].AsString);
      edDESCRICAO_PRODUTO.SelectAll;
      edDESCRICAO_PRODUTO.SetFocus;
      result := True;
      exit;
  end;
end;

procedure TFrm_Produto.edArgumentoDePesquisaKeyPress(Sender: TObject;
  var Key: Char);
begin
   //Quando o usuário pressiona uma tecla, o tempo para de ser contado
   //Pesquisar Produtos após parar de digitar
   tConsulta.Enabled := true;

   //Se o usuário pressionar [ENTER] ou [RETURN]
   //no campo de argumento de pesquisa...
   //O foco do cursor deve ir para o grid de produtos para que o usuário possa
   //pecorrer os itens que vieram com a pesquisa.
   //
   //Um novo [ENTER} sobre um item o abrirá para consultas.
   if (Key = #13) then
   begin
     Key := #0;
     gdProds.SetFocus;
     exit;
   end;

end;

procedure TFrm_Produto.edArgumentoDePesquisaKeyUp(Sender: TObject;
  var Key: Word; Shift: TShiftState);
begin
   //Quando o usuário retira o dedo da tecla, o tempo começa a ser contado
   //Pesquisar Produtos após parar de digitar
   tConsulta.Enabled := true;
end;

procedure TFrm_Produto.edCODIGO_ALFANUMERICOExit(Sender: TObject);
begin
  if bControleCancelar.focused then
     exit;

  if JaExiste_CODIGO_ALFANUMERICO then
     exit;
end;

function TFrm_Produto.JaExiste_CODIGO_ALFANUMERICO:Boolean;
var
  qry: TFDQuery;
  x: string;
begin
  result := False;
  if edCODIGO_ALFANUMERICO.Text = '' then
     exit;

  x := 'SELECT PROD_CODIGO, '
     +        'DESCRICAO_PRODUTO '
     +   'FROM PRODUTO_PROD '
     +  'WHERE CODIGO_ALFANUMERICO = ' + QuotedStr(edCODIGO_ALFANUMERICO.Text);
  if edCODIGO.Text <> '' then
     x := x + ' AND PROD_CODIGO  <> ' + QuotedStr(edCODIGO.Text);

  qry := simplequery(x);
  if qry <> nil then
  begin
      wnAlerta('Cadastrar Produto',
               'Código Alfanumérico Alternativo já cadastrado no produto: ' + slinebreak
             + 'Cód: ' + qry.Fields[0].AsString              + slinebreak
             + 'Descrição: ' + qry.Fields[1].AsString,
             taLeftJustify, 12);
      edCODIGO_ALFANUMERICO.SelectAll;
      edCODIGO_ALFANUMERICO.SetFocus;
      result := True;
      exit;
  end;
end;

procedure TFrm_Produto.edCODIGO_ALFANUMERICOKeyPress(Sender: TObject;

  var Key: Char);
begin
  inherited;
  Key := u_funcoes.ApenasNumeros(Key);
end;

procedure TFrm_Produto.edCODIGO_ALFANUMERICOKeyUp(Sender: TObject;

  var Key: Word; Shift: TShiftState);
begin
  if isKeyNumLetter(Key) and (length(edPROD_EAN.Text) > 6) then
    JaExiste_PROD_EAN;
end;

procedure TFrm_Produto.edCODIGO_ORIGEM_MERCADORIAExit(Sender: TObject);
begin
  edCODIGO_ORIGEM_MERCADORIA_NOME.Text := '';
  if edCODIGO_ORIGEM_MERCADORIA.Text = '' then
     exit;

  //Exibe o nome da Origem da Mercadoria, ou limpa o campo
  edCODIGO_ORIGEM_MERCADORIA_NOME.Text := fORIGEM_MERCADORIA_DESCRICAO(edCODIGO_ORIGEM_MERCADORIA.Text);
  if edCODIGO_ORIGEM_MERCADORIA_NOME.Text = '' then
  begin
    wnAlerta('Cadastrar Produto','Origem não cadastrada');
    edCODIGO_ORIGEM_MERCADORIA.SetFocus;
    exit;
  end;

end;

procedure TFrm_Produto.edCODIGO_ORIGEM_MERCADORIAKeyDown(Sender: TObject;
  var Key: Word; Shift: TShiftState);
begin
  if (Key = vk_F1) then
   ConsultarCODIGO_ORIGEM_MERCADORIA;
end;

procedure TFrm_Produto.cod_combKeyPress(Sender: TObject;

  var Key: Char);
begin
  inherited;
  Key := u_funcoes.ApenasNumeros(Key);
end;

procedure TFrm_Produto.DESCONTO_M_ATACADOClick(Sender: TObject);
begin
//  DESCONTO_M_ATACADO.SelectAll;
end;



procedure TFrm_Produto.DESCONTO_M_DISTRIBUIDORClick(Sender: TObject);
begin
//  DESCONTO_M_DISTRIBUIDOR.SelectAll;
end;

procedure TFrm_Produto.Pesquisar;
begin
   // Pesquisa Produto
   //---------------------------------------------------------------------------

   //Posiciona na aba Consulta
   cxPageControl1.ActivePageIndex := 0;

   if NaoPesquisar then
      exit;

   qConsulta.Close;
   qConsulta.Sql.Clear;
   qConsulta.Sql.Add('SELECT *            ');
   qConsulta.Sql.Add('  FROM PRODUTO_PROD ');

   if vFrm_ProdutoPesquisarCodigoDoProduto then
   begin
     //Esta tela foi chamada por algma outra que usa o cadastro de produto.
     //Localizar o produto e, se encontrar, abrir para edição.
     //Informar o usuário caso não encontre o produto e deixar que o usuário
     //proceda como desejar.
     qConsulta.Sql.Add(' WHERE PROD_CODIGO = :Codigo');
     qConsulta.ParamByName('Codigo').AsString := edArgumentoDePesquisa.Text;
   end
   else
   begin
     //Esta tela foi aberta pelo usuário.
     //Localizar o produto por qualquer dos atributos previstos abaixo
     //qConsulta.Sql.Add(' WHERE PROD_CODIGO = PROD_CODIGO');
     if edArgumentoDePesquisa.Text <> '' then
     begin
        //qConsulta.sql.add(' AND (                                        ');
        qConsulta.Sql.Add(' WHERE ');
        qConsulta.sql.add('          (PROD_CODIGO           LIKE :TEXTO) ');
        qConsulta.sql.add('       OR (CODIGO_ALFANUMERICO   LIKE :TEXTO) ');
        qConsulta.sql.add('       OR (PROD_EAN              LIKE :TEXTO) ');
        qConsulta.sql.add('       OR (descricao_produto     LIKE :TEXTO) ');
        qConsulta.sql.add('       OR (ncm                   LIKE :TEXTO) ');
        qConsulta.sql.add('       OR (referencia_fabricante LIKE :TEXTO) ');
        //qConsulta.sql.add('     )                                        ');
        qConsulta.ParamByName('TEXTO').AsString := '%'+edArgumentoDePesquisa.Text+'%';
     end;
   end;
   qConsulta.sql.add('ORDER BY DESCRICAO_PRODUTO ');
   //Trazer o/os produtos que atendam ao Argumento de Pesquisa
   qConsulta.Open;

   pnContador.Caption := inttostr(qConsulta.RecordCount);

   //Se esta tela foi chamada por outra tela,
   //Se encontrou o produto (um único produto)
   //Mostrar o produto
   //Entra em modo de edição
   if vFrm_ProdutoPesquisarCodigoDoProduto then
   begin
      if qConsulta.RecordCount = 1 then
      begin
         Clicou_no_Grid_de_Produto;
         Clicou_Botao_Alterar;
      end;
   end;

end;

procedure TFrm_Produto.carregar_faixa;
begin
  if not ansimatchstr(edCODIGO.Text, [emptystr, '0']) then
  begin
    SQL_PRECO_FAIXA.Close;
    SQL_PRECO_FAIXA.ParamByName('pid_prod').value := edCODIGO.Text;
    SQL_PRECO_FAIXA.Open;
  end
  else
    SQL_PRECO_FAIXA.Close;
end;

procedure TFrm_Produto.cbFiltroPropertiesEditValueChanged(Sender: TObject);
begin
  //Pesquisar;
end;

procedure TFrm_Produto.cbTipoItemConsultaPropertiesEditValueChanged(Sender: TObject);
begin
  //Pesquisar;
end;

procedure TFrm_Produto.cb_tipoKeyDown(Sender: TObject;

  var Key: Word; Shift: TShiftState);
begin
  if Key in [vk_return, vk_tab] then
  begin
//    cb_tipo.ValidateEdit(false);
//    if cb_tipo.EditingValue <> null then
//      btn_cad_faixa.Click;
  end;
end;

procedure TFrm_Produto.edDESCRICAO_PRODUTOExit(Sender: TObject);
begin
  edDESCRICAO_PRODUTO.Text := RemoveEspaco(edDESCRICAO_PRODUTO.Text);
end;

procedure TFrm_Produto.DESP_OPERACIONAISClick(Sender: TObject);
begin
//  DESP_OPERACIONAIS.SelStart := 0;
//  DESP_OPERACIONAIS.SelectAll;
end;

procedure TFrm_Produto.duplicar_cadastroClick(Sender: TObject);
begin
  {
  SQL_PRODUTO.Active := false;
  SQL_PRODUTO.Active := true;
  bControleCancelar.Click;
  bControleIncluir.Click;
  Duplicarcadastro(SQL_PRODUTO, 'PRODUTO', SQL_LISTACODIGO.Text);
  PROD_EAN.Text := '';
  tab_Cadastrar.show;
  }
end;

procedure TFrm_Produto.Edit1KeyPress(Sender: TObject;
  var Key: Char);
begin
  inherited;
  Key := u_funcoes.ApenasNumeros(Key);
end;

procedure TFrm_Produto.edCESTKeyPress(Sender: TObject;
  var Key: Char);
begin
  inherited;
  Key := ApenasNumeros(Key);
end;

procedure TFrm_Produto.edCESTKeyUp(Sender: TObject;

  var Key: Word; Shift: TShiftState);
begin
  edCEST.Text := RemoverEspacoEmBranco(RemoverCaracteresEspeciais(edCEST.Text));
end;

procedure TFrm_Produto.edt_qtde_minKeyPress(Sender: TObject;

  var Key: Char);
begin
  inherited;
  Key := ApenasNumeros(Key);
end;

procedure TFrm_Produto.edUNIDADE_MEDIDAExit(Sender: TObject);
begin
  edUNIDADE_MEDIDA_NOME.Text := '';
  if edUNIDADE_MEDIDA.Text = '' then
     exit;

  //Exibe o nome da UNIDADE_MEDIDA, ou limpa o campo
  edUNIDADE_MEDIDA_NOME.Text := fproduto_unidade_SIGLA(edUNIDADE_MEDIDA.Text);
  if edUNIDADE_MEDIDA_NOME.Text = '' then
  begin
    wnAlerta('Cadastrar Produto','Unidade de Medida não cadastrada');
    edUNIDADE_MEDIDA.SetFocus;
    exit;
  end;
end;

procedure TFrm_Produto.edUNIDADE_MEDIDAKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  if (Key = vk_F1) then
     ConsultarUnidades;
end;

procedure TFrm_Produto.EXTERNA_COMISSAO_ATACADOClick(Sender: TObject);
begin
//  EXTERNA_COMISSAO_ATACADO.SelectAll;
end;

procedure TFrm_Produto.EXTERNA_COMISSAO_ATACADOKeyDown(Sender: TObject;

  var Key: Word; Shift: TShiftState);
begin
  if Key in [vk_return, vk_tab] then
//    DBEdit13.SetFocus;
end;

procedure TFrm_Produto.EXTERNA_COMISSAO_ATACADOKeyPress(Sender: TObject;

  var Key: Char);
begin

  inherited;
  Key := u_funcoes.ApenasNumeros(Key);

end;

procedure TFrm_Produto.EXTERNA_COMISSAO_DISTRIBUIDORClick(Sender: TObject);
begin
//  EXTERNA_COMISSAO_DISTRIBUIDOR.SelectAll;
end;

procedure TFrm_Produto.EXTERNA_COMISSAO_DISTRIBUIDORKeyPress(Sender: TObject; var Key: Char);
begin

  inherited;
  Key := u_funcoes.ApenasNumeros(Key);

end;

procedure TFrm_Produto.EXTERNA_COMISSAO_VAREJOKeyPress(Sender: TObject; var Key: Char);
begin
  inherited;
  Key := u_funcoes.ApenasNumeros(Key);
end;

procedure TFrm_Produto.ex_ipiKeyPress(Sender: TObject; var Key: Char);
begin
  inherited;
  Key := u_funcoes.ApenasNumeros(Key);
end;

procedure TFrm_Produto.edFAMILIAExit(Sender: TObject);
begin
  edFAMILIA_NOME.Text := '';
  if edFAMILIA.Text = '' then
     exit;

  //Exibe o nome da FAMILIA, ou limpa o campo
  edFAMILIA_NOME.Text := fProdutoFAMILIA_NOME(edFAMILIA.Text);
  if edFAMILIA_NOME.Text = '' then
  begin
    wnAlerta('Cadastrar Produto','FAMILIA não cadastrada');
    edFAMILIA.SetFocus;
    exit;
  end;
end;

procedure TFrm_Produto.edFAMILIAKeyDown(Sender: TObject;

  var Key: Word; Shift: TShiftState);
begin
  if (Key = vk_F1) then
    ConsultarFamilias;
end;

procedure TFrm_Produto.FormClose(Sender: TObject;

  var Action: TCloseAction);
begin
  execquery('update parametros_sistema set prod_difer_estoque = ?',
    [TFunctions.ifthen(chk_diff_estoque.Checked, [true, false], ['1', '0'])]);
  Action := cafree;
  self := nil;
end;



procedure TFrm_Produto.FormCreate(Sender: TObject);
begin
     vFrm_ProdutoPesquisarCodigoDoProduto := false;
end;

procedure TFrm_Produto.FormKeyPress(Sender: TObject; var Key: Char);
begin
    if key = #27 Then
    begin
      key := #0;
      Exit;
    end;

    {
    if key = #13 Then
    begin
      key := #0;
      // ENTER no grid de produtos...
      if (Sender is TcxGridDBTableView) then
         if (Sender as TcxGridDBTableView).Name = 'tbView' then
         begin
            //Se o usuário pressionar [ENTER] ou [RETURN]
            //no campo de argumento de pesquisa...
            //O foco do cursor deve ir para o grid de produtos para que o usuário possa
            //pecorrer os itens que vieram com a pesquisa.
            //
            //Um novo [ENTER] sobre um item o abrirá para consultas.
            Clicou_no_Grid_de_Produto;
            exit;
         end;
    end;
    }
    if key = #13 Then
    begin
      key := #0;
      Perform(Wm_NextDlgCtl, 0, 0); // unit Winapi.Messages;
    end;
end;

procedure TFrm_Produto.FormKeyUp(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
   Pintar(Frm_Produto);
end;

procedure TFrm_Produto.FormShow(Sender: TObject);
begin
  Inicio;
  if vFrm_ProdutoPesquisarCodigoDoProduto then
     Pesquisar;

  //chk_diff_estoque.Checked := (simplequery('select prod_difer_estoque from parametros_sistema').Fields[0].AsString = m_true);
  //deletar_prod_preco_faixa := false;
  //if consultarultimo then
  //  LimparCampos;
  //CarregarDadosInternos;
end;

procedure TFrm_Produto.edGRUPOExit(Sender: TObject);
begin
  edGRUPO_NOME.Text := '';
  if edGRUPO.Text = '' then
     exit;

  //Exibe o nome dO GRUPO, ou limpa o campo
  edGRUPO_NOME.Text := fProdutoGRUPO_NOME(edGRUPO.Text);
  if edGRUPO_NOME.Text = '' then
  begin
    wnAlerta('Cadastrar Produto','GRUPO não cadastrado');
    edGRUPO.SetFocus;
    exit;
  end;
end;

procedure TFrm_Produto.edGRUPOKeyDown(Sender: TObject;
var Key: Word; Shift: TShiftState);
begin
  if (Key = vk_F1) then
    ConsultarGrupos;
end;

procedure TFrm_Produto.edICMS_CSTExit(Sender: TObject);
begin
  edICMS_CST_NOME.Text := '';
  if edICMS_CST.Text = '' then
     exit;

  //Exibe o nome dO ICMS_CST, ou limpa o campo
  edICMS_CST_NOME.Text := fCST_ICMS_DESCRICAO(edICMS_CST.Text);
  if edICMS_CST_NOME.Text = '' then
  begin
    wnAlerta('Cadastrar Produto','ST do ICMS não cadastrado');
    edICMS_CST.SetFocus;
    exit;
  end;
end;

procedure TFrm_Produto.edICMS_CSTKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  if (Key = vk_F1) then
     ConsultarCST_ICMS;
end;

procedure TFrm_Produto.HabilitarCampos(pBoolean: Boolean);
var i : integer;
begin
   // Habilitar/Desabiitar campos do cadastro de clientes (W)
   //---------------------------------------------------------------------------

   //Bastam os Tpanels....
   //Desde que todos os objetos editáveis estejam dentro de algum tPanel...
   //---------------------------------------------------------------------------
   //É melhor desabilitar panels do que ojetos editáveis, pois quando estes são
   //desabilitados, ficam opacos dificultando a leitura, enquanto que, quando
   //estes objetos editáveis estão dentro de tPanels, quando desabilitamos o
   //tPanel, eles ficam inacessíveis (read-only) porém mantém seus conteúdos
   //visíveis, não opacos. Quando o TPanel é habilitado, estes objetos voltam a
   //estar disponíveis para edição.
   HabilitarPanels(Frm_Produto,pBoolean);
   //---------------------------------------------------------------------------

   //Objetos sempre habilitados
   edArgumentoDePesquisa.Enabled  := True;
   edArgumentoDePesquisa.ReadOnly :=false;

   //Este panel é habilitado/desabilitado pelas opções do rgNFe_modBC
   pnValorPautaBC_ICMS.Enabled    := True;

   //Este panel é habilitado/desabilitado pelas opções do rgNFe_modBCST
   pnValorPautaBC_ICMS_ST.Enabled := True;

   //Objetos sempre desabilitados
   edCODIGO.ReadOnly        := True;

end;

procedure TFrm_Produto.ImprimirEtiqueta1Click(Sender: TObject);
begin
     if not TFunctions.CheckOpen(frm_etiquetas) then
        frm_etiquetas := tfrm_etiquetas.Create(nil);
     frm_etiquetas.pgMaster.ActivePage := frm_etiquetas.tabGerar;
     //frm_etiquetas.cxTabSheet2.TabVisible := False;
     //frm_etiquetas.btnSearch.Enabled := False;

     if edCODIGO.Text = '' then
        exit;

     frm_etiquetas.produto := tproduto.create(edCODIGO.Text);
     frm_etiquetas.preencher_dados_produto2;
     frm_etiquetas.showmodal;
end;

procedure TFrm_Produto.Inicio;
begin
   //parar de contar o tempo para pesquisar peodutos
   tConsulta.Enabled := false;
   // Pesquisar a cada meio milésimo de segundo
   tConsulta.Interval:= 500;

   //Impedir Edição
   HabilitarCampos(False);

   // Impedir que haja pesquisas ao aplicar os padrões da tela
   NaoPesquisar := true;

   // Permitir que haja pesquisas com argumentos filtrados pelo usuário
   NaoPesquisar := false;

   //Posicionar na Consulta...
   cxPageControl1.ActivePageIndex := 0;
   edArgumentoDePesquisa.SetFocus;
end;

procedure TFrm_Produto.InserirRegistro;
var qAUX   : tFDQuery;
    vCodigo: String;
begin
   qAUX := TFDQuery.Create(nil);
   qAUX.Connection := Module.connection;
   qAUX.ConnectionName := 'connection';

   qAUX.close;
   qAUX.sql.clear;
   qAUX.sql.add('INSERT INTO PRODUTO_PROD         ');
   qAUX.sql.add('     ( PROD_CODIGO,              ');
   qAUX.sql.add('       CODIGO_ALFANUMERICO,      ');
   qAUX.sql.add('       NFe_nDI,                  ');
   qAUX.sql.add('       DESCRICAO_PRODUTO,        ');
   qAUX.sql.add('       INFO_ADICIONAIS,          ');
   qAUX.sql.add('       PROD_EAN,                 ');
   qAUX.sql.add('       REFERENCIA_FABRICANTE,    ');
   qAUX.sql.add('       UNIDADE_MEDIDA,           ');
   qAUX.sql.add('       MARCA,                    ');
   qAUX.sql.add('       FAMILIA,                  ');
   qAUX.sql.add('       GRUPO,                    ');
   qAUX.sql.add('       SUBGRUPO,                 ');
   qAUX.sql.add('       GENERO,                   ');
   qAUX.sql.add('       LEIS,                     ');
   qAUX.sql.add('       NCM,                      ');
   qAUX.sql.add('       CEST,                     ');
   qAUX.sql.add('       PRECO_FINAL_ATACADO,      ');
   qAUX.sql.add('       PRECO_FINAL_VAREJO,       ');
   qAUX.sql.add('       PRECO_FINAL_DISTRIBUIDOR, ');
   qAUX.sql.add('       STATUS_CADASTRAL,         ');
   qAUX.sql.add('       ICMS_CST,                 ');
   qAUX.sql.add('       TIPO_ITEM,                ');
   qAUX.sql.add('       CODIGO_ORIGEM_MERCADORIA, ');
   qAUX.sql.add('       ALIQ_ICMS,                ');
   qAUX.sql.add('       REDUCAO_ICMS,             ');
   qAUX.sql.add('       NFe_modBC,                ');
   qAUX.sql.add('       NFe_modBCST,              ');
   qAUX.sql.add('       NFe_indEscala,            ');
   qAUX.sql.add('       PROD_RASTREAVEL,          ');
   qAUX.sql.add('       PROD_TRATALOTE,           ');
   qAUX.sql.add('       PROD_TRATANUMEROSERIE,    ');
   qAUX.sql.add('       VALOR_PAUTA_BC,           ');
   qAUX.sql.add('       VALOR_PAUTA_BC_ST,        ');
   qAUX.sql.add('       NFe_pMVA,                 ');
   qAUX.sql.add('       NFe_pMVAST,               ');
   qAUX.sql.add('       REDUCAO_ICMS_ST           ');
   qAUX.sql.add('     )                           ');
   qAUX.sql.add('VALUES                           ');
   qAUX.sql.add('     (:PROD_CODIGO,              ');
   qAUX.sql.add('      :CODIGO_ALFANUMERICO,      ');
   qAUX.sql.add('      :NFe_nDI,                  ');
   qAUX.sql.add('      :DESCRICAO_PRODUTO,        ');
   qAUX.sql.add('      :INFO_ADICIONAIS,          ');
   qAUX.sql.add('      :PROD_EAN,                 ');
   qAUX.sql.add('      :REFERENCIA_FABRICANTE,    ');
   qAUX.sql.add('      :UNIDADE_MEDIDA,           ');
   qAUX.sql.add('      :MARCA,                    ');
   qAUX.sql.add('      :FAMILIA,                  ');
   qAUX.sql.add('      :GRUPO,                    ');
   qAUX.sql.add('      :SUBGRUPO,                 ');
   qAUX.sql.add('      :GENERO,                   ');
   qAUX.sql.add('      :LEIS,                     ');
   qAUX.sql.add('      :NCM,                      ');
   qAUX.sql.add('      :CEST,                     ');
   qAUX.sql.add('      :PRECO_FINAL_ATACADO,      ');
   qAUX.sql.add('      :PRECO_FINAL_VAREJO,       ');
   qAUX.sql.add('      :PRECO_FINAL_DISTRIBUIDOR, ');
   qAUX.sql.add('      :STATUS_CADASTRAL,         ');
   qAUX.sql.add('      :ICMS_CST,                 ');
   qAUX.sql.add('      :TIPO_ITEM,                ');
   qAUX.sql.add('      :CODIGO_ORIGEM_MERCADORIA, ');
   qAUX.sql.add('      :ALIQ_ICMS,                ');
   qAUX.sql.add('      :REDUCAO_ICMS,             ');
   qAUX.sql.add('      :NFe_modBC,                ');
   qAUX.sql.add('      :NFe_modBCST,              ');
   qAUX.sql.add('      :NFe_indEscala,            ');
   qAUX.sql.add('      :PROD_RASTREAVEL,          ');
   qAUX.sql.add('      :PROD_TRATALOTE,           ');
   qAUX.sql.add('      :PROD_TRATANUMEROSERIE,    ');
   qAUX.sql.add('      :VALOR_PAUTA_BC,           ');
   qAUX.sql.add('      :VALOR_PAUTA_BC_ST,        ');
   qAUX.sql.add('      :NFe_pMVA,                 ');
   qAUX.sql.add('      :NFe_pMVAST,               ');
   qAUX.sql.add('      :REDUCAO_ICMS_ST           ');
   qAUX.sql.add('     )                           ');

   //Codigo
   if edCodigo.Text = '' then
   begin
      vCodigo := fProximoCodigo('PRODUTO_PROD','PROD_CODIGO');
      RegistraLog('Cadastrou Produto '+vCodigo+'-'+edDESCRICAO_PRODUTO.Text);
   end
   else
   begin
      vCodigo := edCodigo.Text;
      RegistraLog('Alterou Produto '+vCodigo+'-'+edDESCRICAO_PRODUTO.Text);
   end;

   qAUX.ParamByName('PROD_CODIGO'             ).AsString := vCodigo;
   qAUX.ParamByName('CODIGO_ALFANUMERICO'     ).AsString  := edCODIGO_ALFANUMERICO.Text;
   qAUX.ParamByName('NFe_nDI'                 ).AsString  := edNFe_nDI.Text;
   qAUX.ParamByName('DESCRICAO_PRODUTO'       ).AsString  := edDESCRICAO_PRODUTO.Text;
   qAUX.ParamByName('INFO_ADICIONAIS'         ).AsString  := mmINFO_ADICIONAIS.Text;
   qAUX.ParamByName('PROD_EAN'                ).AsString  := edPROD_EAN.Text;
   qAUX.ParamByName('REFERENCIA_FABRICANTE'   ).AsString  := edREFERENCIA_FABRICANTE.Text;
   qAUX.ParamByName('UNIDADE_MEDIDA'          ).AsString  := edUNIDADE_MEDIDA.Text;
   qAUX.ParamByName('MARCA'                   ).AsString  := edMARCA.Text;
   qAUX.ParamByName('FAMILIA'                 ).AsString  := edFAMILIA.Text;
   qAUX.ParamByName('GRUPO'                   ).AsString  := edGRUPO.Text;
   qAUX.ParamByName('SUBGRUPO'                ).AsString  := edSUBGRUPO.Text;
   qAUX.ParamByName('GENERO'                  ).AsString  := edGENERO.Text;
   qAUX.ParamByName('LEIS'                    ).AsString  := edLEIS.Text;
   qAUX.ParamByName('NCM'                     ).AsString  := edNCM.Text;
   qAUX.ParamByName('CEST'                    ).AsString  := edCEST.Text;
   qAUX.ParamByName('PRECO_FINAL_ATACADO'     ).AsFloat   := ValorValido(edPRECO_FINAL_ATACADO.Text);
   qAUX.ParamByName('PRECO_FINAL_VAREJO'      ).AsFloat   := ValorValido(edPRECO_FINAL_VAREJO.Text);
   qAUX.ParamByName('PRECO_FINAL_DISTRIBUIDOR').AsFloat   := ValorValido(edPRECO_FINAL_DISTRIBUIDOR.Text);
   qAUX.ParamByName('STATUS_CADASTRAL'        ).AsString  := Ativo_ou_Inativo(cbSTATUS_CADASTRAL.Checked);
   qAUX.ParamByName('ICMS_CST'                ).AsString  := edICMS_CST.Text;
   qAUX.ParamByName('TIPO_ITEM'               ).AsString  := edTIPO_ITEM.Text;
   qAUX.ParamByName('CODIGO_ORIGEM_MERCADORIA').AsInteger := InteiroMenos1_se_Vazio(edCODIGO_ORIGEM_MERCADORIA.Text);
   qAUX.ParamByName('ALIQ_ICMS'               ).AsFloat   := ValorValido(edALIQ_ICMS.Text);
   qAUX.ParamByName('REDUCAO_ICMS'            ).AsFloat   := ValorValido(edREDUCAO_ICMS.Text);
   qAUX.ParamByName('NFe_modBC'               ).AsInteger := rgNFe_modBC.ItemIndex;
   qAUX.ParamByName('NFe_modBCST'             ).AsInteger := rgNFe_modBCST.ItemIndex;
   qAUX.ParamByName('NFe_indEscala'           ).AsInteger := rgNFe_indEscala.ItemIndex;
   qAUX.ParamByName('PROD_RASTREAVEL'         ).AsInteger := Zero_ou_Um(cbPROD_RASTREAVEL.checked);
   qAUX.ParamByName('PROD_TRATALOTE'          ).AsInteger := rgPROD_TRATALOTE.ItemIndex;
   qAUX.ParamByName('PROD_TRATANUMEROSERIE'   ).AsInteger := Zero_ou_Um(cbPROD_RASTREAVEL.checked);
   qAUX.ParamByName('VALOR_PAUTA_BC'          ).AsFloat   := ValorValido(edVALOR_PAUTA_BC.Text);
   qAUX.ParamByName('VALOR_PAUTA_BC_ST'       ).AsFloat   := ValorValido(edVALOR_PAUTA_BC_ST.Text);
   qAUX.ParamByName('NFe_pMVA'                ).AsFloat   := ValorValido(edNFe_pMVA.Text);
   qAUX.ParamByName('NFe_pMVAST'              ).AsFloat   := ValorValido(edNFe_pMVAST.Text);
   qAUX.ParamByName('REDUCAO_ICMS_ST'         ).AsFloat   := ValorValido(edREDUCAO_ICMS_ST.Text);
   qAUX.ExecSQL;

   qAUX.Free;
end;

procedure TFrm_Produto.edMARCAExit(Sender: TObject);
begin
  edMARCA_NOME.Text := '';
  if edMARCA.Text = '' then
     exit;

  //Exibe o nome da marca, ou limpa o campo
  edMARCA_NOME.Text := fProdutoMarca_NOME(edMARCA.Text);
  if edMARCA_NOME.Text = '' then
  begin
    wnAlerta('Cadastrar Produto','Marca não cadastrada');
    edMARCA.SetFocus;
  end;
end;

procedure TFrm_Produto.edMARCAKeyDown(Sender: TObject;
var Key: Word; Shift: TShiftState);
begin
  if (Key = vk_F1) then
    ConsultarMarcas;
end;

procedure TFrm_Produto.Mostrar_Produto;
begin
   // Carregar Campos do cadastro do produto
   //---------------------------------------------------------------------------

   //Limpar todos os campos da tela
   LimpaTela(Frm_Produto);

   //Preencher a tela com dados do produto
   edCODIGO.Text                   := qConsulta.FieldByName('PROD_CODIGO'          ).AsString;
   edCODIGO_ALFANUMERICO.Text      := qConsulta.FieldByName('CODIGO_ALFANUMERICO'  ).AsString;
   edNFe_nDI.Text                  := qConsulta.FieldByName('NFe_nDI'              ).AsString;
   edDESCRICAO_PRODUTO.Text        := qConsulta.FieldByName('DESCRICAO_PRODUTO'    ).AsString;
   mmINFO_ADICIONAIS.Text          := qConsulta.FieldByName('INFO_ADICIONAIS'      ).AsString;
   edPROD_EAN.Text                 := qConsulta.FieldByName('PROD_EAN'             ).AsString;
   edREFERENCIA_FABRICANTE.Text    := qConsulta.FieldByName('REFERENCIA_FABRICANTE').AsString;

   //Unidade de Medida
   edUNIDADE_MEDIDA.Text           := qConsulta.FieldByName('UNIDADE_MEDIDA'       ).AsString;
   edUNIDADE_MEDIDA_NOME.Text      := fproduto_unidade_SIGLA(qConsulta.FieldByName('UNIDADE_MEDIDA').AsString);

   //Tipo
   edTIPO_ITEM.Text                := qConsulta.FieldByName('TIPO_ITEM').AsString;
   edTIPO_ITEM_NOME.Text           := fProduto_tipo_item_NOME(edTIPO_ITEM.Text);

   //Marca
   edMARCA.Text                    := qConsulta.FieldByName('MARCA').AsString;
   edMARCA_NOME.Text               := fProdutoMarca_NOME(edMARCA.Text);

   //Família
   edFAMILIA.Text                  := qConsulta.FieldByName('FAMILIA').AsString;
   edFAMILIA_NOME.Text             := fProdutoFAMILIA_NOME(edFAMILIA.Text);

   //Grupo
   edGRUPO.Text                    := qConsulta.FieldByName('GRUPO').AsString;
   edGRUPO_NOME.Text               := fProdutoGRUPO_NOME(edGRUPO.Text);

   //SubGrupo
   edSUBGRUPO.Text                 := qConsulta.FieldByName('SUBGRUPO').AsString;
   edSUBGRUPO_NOME.Text            := fProdutoSUBGRUPO_NOME(edGRUPO.Text);

   //Gênero
   edGENERO.Text                   := qConsulta.FieldByName('GENERO').AsString;

   //Leis
   edLEIS.Text                     := qConsulta.FieldByName('LEIS').AsString;

   //NCM/SH
   edNCM.Text                      := qConsulta.FieldByName('NCM').AsString;

   //CEST
   //Código Especificador da Substituição Tributária
   //O CEST é composto por sete dígitos numerais,
   //onde: 1º e 2º dígitos: representam o segmento da mercadoria
   //      3º, 4º e 5º dígitos: correspondem ao item de um segmento de mercadoria
   //      6º e 7º dígitos: relacionam-se à especificação do item
   edCEST.Text                     := qConsulta.FieldByName('CEST').AsString;

   //Preços de Venda
   edPRECO_FINAL_ATACADO.Text      := Float_to_String(qConsulta.FieldByName('PRECO_FINAL_ATACADO'     ).AsFloat);
   edPRECO_FINAL_VAREJO.Text       := Float_to_String(qConsulta.FieldByName('PRECO_FINAL_VAREJO'      ).AsFloat);
   edPRECO_FINAL_DISTRIBUIDOR.Text := Float_to_String(qConsulta.FieldByName('PRECO_FINAL_DISTRIBUIDOR').AsFloat);

   //Ativo/Inativo
   cbSTATUS_CADASTRAL.Checked      := (qConsulta.FieldByName('STATUS_CADASTRAL').AsString = 'ATIVO');

   //Dados Fiscais
   //---------------------------------------------------------------------------

   //Código da Situação Tributária do ICMS
   edICMS_CST.Text                 := qConsulta.FieldByName('ICMS_CST').AsString;
   edICMS_CST_NOME.Text            := fCST_ICMS_DESCRICAO(edICMS_CST.Text);

   //Origem da Mercadoria
   edCODIGO_ORIGEM_MERCADORIA.Text := VazioSeInteiroMenos1(qConsulta.FieldByName('CODIGO_ORIGEM_MERCADORIA').AsInteger);
   edCODIGO_ORIGEM_MERCADORIA_NOME.Text := fORIGEM_MERCADORIA_DESCRICAO(edCODIGO_ORIGEM_MERCADORIA.Text);

   //Alíquota do ICMS
   edALIQ_ICMS.Text                     := Float_to_String(qConsulta.FieldByName('ALIQ_ICMS').AsFloat);

   //Percentual de redução da Alíquota do ICMS
   edREDUCAO_ICMS.Text                  := Float_to_String(qConsulta.FieldByName('REDUCAO_ICMS').AsFloat);

   //Modalidade de determinação da BC do ICMS
   rgNFe_modBC.ItemIndex                := qConsulta.FieldByName('NFe_modBC').AsInteger;

   //Valor da Pauta da BC do ICMS
   edVALOR_PAUTA_BC.Text                := Float_to_String(qConsulta.FieldByName('VALOR_PAUTA_BC').AsFloat);

   //Modalidade de determinação da BC do ICMS ST
   rgNFe_modBCST.ItemIndex              := qConsulta.FieldByName('NFe_modBCST').AsInteger;

   //Valor da Pauta da BC do ICMS ST
   edVALOR_PAUTA_BC_ST.Text             := Float_to_String(qConsulta.FieldByName('VALOR_PAUTA_BC_ST').AsFloat);

   //Percentual de Margem de Valor Agregado (MVA) (ICMS)
   edNFe_pMVA.Text                      := Float_to_String(qConsulta.FieldByName('NFe_pMVA').AsFloat);

   //Percentual de Margem de Valor Agregado (MVA) (ICMS ST)
   edNFe_pMVAST.Text                    := Float_to_String(qConsulta.FieldByName('NFe_pMVAST').AsFloat);

   //Percentual de Redução da Base de Cálculo do ICMS ST
   edREDUCAO_ICMS_ST.Text               := Float_to_String(qConsulta.FieldByName('REDUCAO_ICMS_ST').AsFloat);

   //Indicador de Escala Relevante
   rgNFe_indEscala.ItemIndex            := qConsulta.FieldByName('NFe_indEscala').AsInteger;

   //Indicador de Rastreabilidade
   cbPROD_RASTREAVEL.Checked            := True_ou_False(qConsulta.FieldByName('PROD_RASTREAVEL').AsInteger);

   //Tratamento de Lote
   rgPROD_TRATALOTE.ItemIndex           := qConsulta.FieldByName('PROD_TRATALOTE').AsInteger;

   //Tramento de Número Serial
   cbPROD_TRATANUMEROSERIE.Checked      := True_ou_False(qConsulta.FieldByName('PROD_TRATANUMEROSERIE').AsInteger);

   Atualizar_RELACAO_CFOP_x_PRODUTO_xCST_PISCOFINS_RPC;

   // Exibir a aba Cadastro
   cxPageControl1.ActivePAgeIndex  := 1;
end;

procedure TFrm_Produto.Atualizar_RELACAO_CFOP_x_PRODUTO_xCST_PISCOFINS_RPC;
var vRegistro : Tbookmark;
begin
   //Para que a seleção de um registro
   //permaneça apontando para ele
   //após ser alterado...
   //A posição atual do registro é armazenada no ponteiro vRegistro:
   //try
   //  vRegistro:= qRELACAO_CFOP_x_PRODUTO_xCST_PISCOFINS_RPC.GetBookmark;
   //except
   //end;
   //
   //Não foi possível usar o recurso de DataSet BookMarks porque a query
   //recebe novo select...
   //
   //Uma alternativa seria armazenar a chave do registro (TPMOV,PROD,CFOP)
   //antes da alteração, exclusão, e usar a chave após o select abaixo para
   //posicionar no registro alterado, se possível... (se não foi excluído)

   qRELACAO_CFOP_x_PRODUTO_xCST_PISCOFINS_RPC.Close;
   qRELACAO_CFOP_x_PRODUTO_xCST_PISCOFINS_RPC.Sql.Clear;
   qRELACAO_CFOP_x_PRODUTO_xCST_PISCOFINS_RPC.Sql.Add('SELECT *                                          ');
   qRELACAO_CFOP_x_PRODUTO_xCST_PISCOFINS_RPC.Sql.Add('  FROM RELACAO_CFOP_x_PRODUTO_xCST_PISCOFINS_RPC, ');
   qRELACAO_CFOP_x_PRODUTO_xCST_PISCOFINS_RPC.Sql.Add('       CFOP,                                      ');
   qRELACAO_CFOP_x_PRODUTO_xCST_PISCOFINS_RPC.Sql.Add('       TIPOMOVIMENTO_TPMOV                        ');
   qRELACAO_CFOP_x_PRODUTO_xCST_PISCOFINS_RPC.Sql.Add(' WHERE RPC_TPMOV   = TPMOV_CODIGO                 ');
   qRELACAO_CFOP_x_PRODUTO_xCST_PISCOFINS_RPC.Sql.Add('   AND RPC_CFOP    = CODIGO                       ');
   qRELACAO_CFOP_x_PRODUTO_xCST_PISCOFINS_RPC.Sql.Add('   AND RPC_PRODUTO = :RPC_PRODUTO                 ');
   qRELACAO_CFOP_x_PRODUTO_xCST_PISCOFINS_RPC.Sql.Add(' ORDER BY TPMOV_DESCRICAO, RPC_CFOP                                ');
   qRELACAO_CFOP_x_PRODUTO_xCST_PISCOFINS_RPC.ParamByName('RPC_PRODUTO').AsString := qConsulta.FieldByName('PROD_CODIGO').AsString;
   qRELACAO_CFOP_x_PRODUTO_xCST_PISCOFINS_RPC.Open;

   //Após a alteração, usamos o ponteiro vRegistro para voltar ao registro alterado
   //Se o registro foi excluído, irá para o primeiro registro da tabela
   //try
   //   qRELACAO_CFOP_x_PRODUTO_xCST_PISCOFINS_RPC.GotoBookmark(vRegistro);
   //except
   //end;
   //
   //O recuto acima não é viável pois o SELECT atualiza os bookmarks da query
   //a solucao está proposta no bloco de comentários acima do SELECT anterior....
end;

procedure TFrm_Produto.edNCMExit(Sender: TObject);
begin
  Preencher_CEST;
end;

procedure TFrm_Produto.edNCMKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  if (Key = vk_F1) then
     Pesquisar_NCM;
end;

procedure TFrm_Produto.edNCMKeyUp(Sender: TObject;
  var Key: Word; Shift: TShiftState);
begin
  edNCM.Text := RemoverEspacoEmBranco(RemoverCaracteresEspeciais(edNCM.Text));
end;

procedure TFrm_Produto.edVALOR_PAUTA_BCKeyPress(Sender: TObject;
  var Key: Char);
begin
  inherited;
  Key := u_funcoes.ApenasNumeros(Key);
end;

procedure TFrm_Produto.edVALOR_PAUTA_BC_STKeyPress(Sender: TObject;
  var Key: Char);
begin
  inherited;
  Key := u_funcoes.ApenasNumeros(Key);
end;

procedure TFrm_Produto.Pode_Alterar;
begin
   //Habilita o botão [Alterar]
   //---------------------------------------------------------------------------
   bControlealterar.Enabled := True;
end;

procedure TFrm_Produto.PRECO_FINAL_ATACADOKeyPress(Sender: TObject;

  var Key: Char);
begin
  inherited;
  Key := ApenasNumeros(Key);
end;

{
procedure TFrm_Produto.preencherANP(value: string);
var
  xANP: TANP;
begin
  if value = emptystr then
    LimparANP
  else
  begin
    try
      xANP := TANP.CREATE(strtoint(value));
      //edt_anp.Text := value;
      //if SQL_PRODUTO.State in [dsEdit, dsInsert] then
      //  edt_anp.Text := value;
      //lbl_anp.Caption := xANP.descricao;
    except
      on e: exception do
        tdialogs.wnAlerta('Consultar ANP', slinebreak + e.Message, 15);
    end;
  end;
end;
}
procedure TFrm_Produto.PreencherNCM(value: string);
var
  xNCM: tNCM;
begin
  if value = '' then
  begin
    edNCM.Text  := '';
    mmNCM.Lines.Clear;
    edCEST.Text := '';
    exit;
  end;

    try
      xNCM := tNCM.CREATE(value);
      if xNCM <> nil then
      begin
        mmNCM.Text := xNCM.descricao;
        edCEST.Text := xNCM.CEST;
        //if SQL_PRODUTO.State in [dsEdit, dsInsert] then
        //  edCEST.Text := xNCM.CEST;
        if edCEST.Text = '0' then
        begin
          mmNCM.Clear;
          edCEST.Clear;
        end;
        xNCM.Destroy;
      end;
    except
      on e: exception do
        tdialogs.wnAlerta('Consultar NCM', slinebreak + e.Message, 15);
    end;
end;

procedure TFrm_Produto.qRELACAO_CFOP_x_PRODUTO_xCST_PISCOFINS_RPCAfterScroll(
  DataSet: TDataSet);
begin
   edRPC_TPMOV.Text  := qRELACAO_CFOP_x_PRODUTO_xCST_PISCOFINS_RPC.FieldByName('RPC_TPMOV' ).AsString;
   edRPC_CFOP.Text   := qRELACAO_CFOP_x_PRODUTO_xCST_PISCOFINS_RPC.FieldByName('RPC_CFOP'  ).AsString;
   edRPC_PIS.Text    := qRELACAO_CFOP_x_PRODUTO_xCST_PISCOFINS_RPC.FieldByName('RPC_PIS'   ).AsString;
   edRPC_COFINS.Text := qRELACAO_CFOP_x_PRODUTO_xCST_PISCOFINS_RPC.FieldByName('RPC_COFINS').AsString;
end;

procedure TFrm_Produto.edREFERENCIA_FABRICANTEExit(Sender: TObject);
begin
   RefFabricanteRepetido;
end;

procedure TFrm_Produto.edREFERENCIA_FABRICANTEKeyUp(Sender: TObject;
  var Key: Word; Shift: TShiftState);
begin
  if key <> VK_RETURN then
    if length(edREFERENCIA_FABRICANTE.Text) > 0 then
       RefFabricanteRepetido;
end;

procedure TFrm_Produto.edRPC_CFOPChange(Sender: TObject);
begin
   edRPC_CFOP_Nome.Text := '';
   if edRPC_CFOP.Text = '' then
      exit;
   edRPC_CFOP_Nome.Text := fCFOP_DESCRICAO(edRPC_CFOP.Text);
end;

procedure TFrm_Produto.edRPC_CFOPKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  if (Key = vk_F1) then
   ConsultarCFOP;
end;

procedure TFrm_Produto.edRPC_COFINSChange(Sender: TObject);
begin
   edRPC_COFINS_Nome.Text := '';
   if edRPC_COFINS.Text = '' then
      exit;
   edRPC_COFINS_Nome.Text := fCST_COFINS_DESCRICAO(edRPC_COFINS.Text);
end;

procedure TFrm_Produto.edRPC_COFINSKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  if (Key = vk_F1) then
   ConsultarCST_COFINS;
end;

procedure TFrm_Produto.edRPC_PISChange(Sender: TObject);
begin
   edRPC_PIS_Nome.Text := '';
   if edRPC_PIS.Text = '' then
      exit;
   edRPC_PIS_Nome.Text := fCST_PIS_DESCRICAO(edRPC_PIS.Text);
end;

procedure TFrm_Produto.edRPC_PISKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  if (Key = vk_F1) then
   ConsultarCST_PIS;
end;

procedure TFrm_Produto.edRPC_TPMOVChange(Sender: TObject);
begin
   edRPC_TPMOV_Nome.Text := '';
   if edRPC_TPMOV.Text = '' then
      exit;
   edRPC_TPMOV_Nome.Text := fTPMOV_DESCRICAO(edRPC_TPMOV.Text);
end;

procedure TFrm_Produto.edRPC_TPMOVKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  if (Key = vk_F1) then
     ConsultarTPMOV;
end;

function TFrm_Produto.RefFabricanteRepetido(foco: Boolean = true): Boolean;
var
  qry: TFDQuery;
  x: string;
begin
  //23/05/2020 (Wander)
  //Atualmente o cad prod está impedindo que se cadastre mais de um produto com
  //a mesma referencia do fabricante.
  //Mas isto é perfeitamente possível.
  //Na prática um farol da marca CIBIE pode ter referencia do fabricante "F001"
  //e um fusivel da marca "GENERERAL ELETRIC" também pode ter a mesma referencia
  //"F001" neste outro fabricante.
  //
  //E mesmo que fossem do mesmo fabricante, poderia ter mesma referencia F001
  //para um fusivel e para um determinado "fio"... nada impede.
  //
  //Referencia nao é o código do produto no fabricante.
  //
  //Resumo: esta crítica deve ser retirada pois impede que o logista cadastre
  //fatos reais.
  //
  //Vai avisar mas não vai impedir

  if edREFERENCIA_FABRICANTE.Text <> '' then
  begin
    x := 'SELECT PROD_CODIGO, DESCRICAO_PRODUTO FROM PRODUTO_PROD WHERE (REFERENCIA_FABRICANTE IS NOT NULL AND REFERENCIA_FABRICANTE <> ' + QuotedStr(emptystr) +
      ') AND REFERENCIA_FABRICANTE =' + QuotedStr(edREFERENCIA_FABRICANTE.Text) + ' AND PROD_CODIGO  <>' + edCODIGO.Text;
    qry := simplequery(x);
    if qry <> nil then
    begin
      result := true;
      //Avisar
      wnAlerta('Cadastrar Produto', 'Referencia do fabricante já cadastrado no produto: ' + slinebreak + 'Cód: ' + qry.Fields[0].AsString +
        slinebreak + 'Descrição: ' + qry.Fields[1].AsString, taLeftJustify, 12);
      {Não impedir
      if foco then
      begin
         edREFERENCIA_FABRICANTE.SelectAll;
         edREFERENCIA_FABRICANTE.SetFocus;
      end;
      }
    end;
  end;
end;

procedure TFrm_Produto.RegraTributacao;
var
  qry_tmp: TFDQuery;
  CFOP_PADRAO, CFOP_PADRAO_60: string;
  CRT, CST_ICMS: Integer;
  ALIQ_ICMS_PARAMETROS: extended;
begin
  SQL_DADOS_ROTINAS.Active := false;
  SQL_DADOS_ROTINAS.Active := true;

  qry_tmp := simplequery('SELECT CODIGO_REGIME_TRIBUTARIO from empresa');
  if qry_tmp <> nil then
    if (qry_tmp.FieldByName('CODIGO_REGIME_TRIBUTARIO').AsString = emptystr) then
    begin
      wnAlerta('Cadastro de Produto',
        'Nenhuma empresa foi identificada. Por favor, cadastre uma empresa para prosseguir com o cadastro de produtos.');
      exit;
    end
    else
      CRT := strtoint(qry_tmp.FieldByName('CODIGO_REGIME_TRIBUTARIO').AsString);

  if (SQL_DADOS_ROTINASaliq_imcs.Text = '') then
  begin
    wnAlerta('Cadastro de Produto',
      'Nenhuma alíquota padrão de ICMS foi identificada. Por favor, cadastre uma alíquota padrão na tela de parâmetros.');
    exit;
  end
  else
    ALIQ_ICMS_PARAMETROS := SQL_DADOS_ROTINASaliq_imcs.value;
  //edCST_ICMS := strtoint(dbcsticms.EditValue);
{
  CRT  CST_ICMS   CSOSN
    1  40         103
    1  41         102
    1  60         500
    2  00         102
    2  40         103
    2  60         500
    3  00         102
    3  40         103
    3  60         500
}


end;

procedure TFrm_Produto.edSUBGRUPOExit(Sender: TObject);
begin
  edSUBGRUPO_NOME.Text := '';
  if edSUBGRUPO.Text = '' then
     exit;

  //Exibe o nome dO SUBGRUPO, ou limpa o campo
  edSUBGRUPO_NOME.Text := fProdutoSUBGRUPO_NOME(edSUBGRUPO.Text);
  if edSUBGRUPO_NOME.Text = '' then
  begin
    wnAlerta('Cadastrar Produto','SUBGRUPO não cadastrado');
    edSUBGRUPO.SetFocus;
    exit;
  end;
end;

procedure TFrm_Produto.edSUBGRUPOKeyDown(Sender: TObject;

  var Key: Word; Shift: TShiftState);
begin
  if (Key = vk_F1) then
    ConsultarSubGrupos;
end;

procedure TFrm_Produto.edTIPO_ITEMExit(Sender: TObject);
begin
  edTIPO_ITEM_NOME.Text := '';
  if edTIPO_ITEM.Text = '' then
     exit;

  //Exibe o nome dO TIPO_ITEM, ou limpa o campo
  edTIPO_ITEM_NOME.Text := fProduto_tipo_item_NOME(edTIPO_ITEM.Text);
  if edTIPO_ITEM_NOME.Text = '' then
  begin
    wnAlerta('Cadastrar Produto','Tipo de Item não cadastrado');
    edTIPO_ITEM.SetFocus;
    exit;
  end;
end;

procedure TFrm_Produto.edTIPO_ITEMKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  if (Key = vk_F1) then
    ConsultarProduto_tipo_item;
end;

procedure TFrm_Produto.tbViewCellDblClick(Sender: TcxCustomGridTableView; ACellViewInfo: TcxGridTableDataCellViewInfo;
  AButton: TMouseButton; AShift: TShiftState; var AHandled: Boolean);
begin
   Clicou_no_Grid_de_Produto;
end;

procedure TFrm_Produto.Clicou_no_Grid_de_Produto;
begin
   //20/05/2020-Wander
   Mostrar_Produto;

   //Ajusta botões de controle
   pode_Alterar_Incluir(Frm_Produto);
end;

procedure TFrm_Produto.tbViewCustomDrawCell(Sender: TcxCustomGridTableView; ACanvas: TcxCanvas; AViewInfo: TcxGridTableDataCellViewInfo;
  var ADone: Boolean);
var
  value, est_min: variant;
begin
  if chk_diff_estoque.Checked then
  begin
    est_min := tbView.ViewData.Records[AViewInfo.GridRecord.Index].Values[tbViewESTOQUE_MINIMO.Index];
    est_min := varastype(TFunctions.ifthen(est_min = System.Variants.null, '10', est_min), VARDOUBLE);

    value := tbView.ViewData.Records[AViewInfo.GridRecord.Index].Values[tbViewSALDO.Index];
    value := varastype(TFunctions.ifthen(value = System.Variants.null, '0', value), varstring);

    ACanvas.Font.Color := colorirestoque(value, est_min);
  end;

  TFunctions.stripedGrid(ACanvas, AViewInfo);
end;

procedure TFrm_Produto.tbViewKeyPress(Sender: TObject; var Key: Char);
begin
    if key = #13 Then
    begin
      key := #0;
      // ENTER no grid de produtos...
      if tbView.Focused then
      begin
         //Se o usuário pressionar [ENTER] ou [RETURN]
         //no campo de argumento de pesquisa...
         //O foco do cursor deve ir para o grid de produtos para que o usuário possa
         //pecorrer os itens que vieram com a pesquisa.
         //
         //Um novo [ENTER} sobre um item o abrirá para consultas.
         Clicou_no_Grid_de_Produto;
         exit;
      end;
    end;
end;

procedure TFrm_Produto.tConsultaTimer(Sender: TObject);
begin
   //Pesquisar Produtos após parar de digitar
   Pesquisar;
   //Parar o tempo
   tConsulta.Enabled := false;
end;

procedure TFrm_Produto.updateEstoque;
begin
{
  gdProds.Repaint;

  if not(SQL_LISTA.State in [dsInactive]) then
  begin
    tbView.DataController.RefreshExternalData;
    tbView.DataController.Refresh;
  end;
}
end;

procedure TFrm_Produto.cxDBTextEdit60KeyPress(Sender: TObject;
  var Key: Char);
begin
  inherited;
  Key := u_funcoes.ApenasNumeros(Key);
end;

procedure TFrm_Produto.cxDBTextEdit61KeyPress(Sender: TObject;
  var Key: Char);
begin
  inherited;
  Key := u_funcoes.ApenasNumeros(Key);
end;

end.

{Considerações:

(1)
Esta tela não era pra estar sem código? -----------------------------------> SIM
Não era pra eu escrever todo o código?  -----------------------------------> SIM

(2)
CFOP é uma característica da OPERAÇÂO e não do produto. -------> VER COM RODRIGO
Na vdd é do produto, na operação

Fonte:
https://facil123.com.br/blog/natureza-da-operacao-nao-e-cfop/

Natureza da Operação não é CFOP
Você sabia que Natureza da Operação não é CFOP? Saiba como preencher corretamente esses campos para emitir corretamente a sua nota fiscal.

Ao emitir sua nota fiscal você passa pelo preenchimento de alguns campos. Uns são simples, outros nos fazem ficar com algumas dúvidas.

Dois desses campos que nos trazem algumas incertezas são a natureza da operação e CFOP – Código Fiscal de Operações e Prestações.

Há quem afirme com toda convicção que natureza da operação é a mesma coisa que CFOP. É preciso tomar cuidado: natureza da operação não é CFOP.

O que é natureza da operação?
A natureza da operação é o campo que você deve descrever o que está fazendo com o produto.

Por exemplo: se você está vendendo, a sua natureza da operação deve ser venda. Se é produto em consignação, a natureza da operação deve ser remessa em consignação.

Esse campo serve para descrever todas as operações que envolvem o seu produto: compra, amostra grátis, conserto, transferência, devolução, etc.

Mas só é permitido ter uma natureza da operação por nota fiscal.

O que é CFOP?
CFOP ou Código Fiscal de Operações e Prestações é o código que identifica as entradas e saídas de produto. Mostra também se o produto vai circular dentro do mesmo estado ou em estados diferentes entre origem e destino.

O CFOP define também a arrecadação de impostos.

Esse código é formado por quatro números. O primeiro define o tipo de operação: entrada ou saída. Os outros se referem ao tipo e finalidade do produto: se o produto foi produzido pelo seu estabelecimento, se é matéria prima, se vai ser consumido, vendido ou até mesmo se é uma venda simples.

As possibilidades são muitas, é possível ver a lista de todos os CFOPs no site da SEFAZ.

Alguns softwares de emissão de NF, como o da ASSEINFO, buscam o CFOP automaticamente, permitindo a emissão da sua nota fiscal mais simples e descomplicada.

Pode ter mais de um CFOP na mesma nota?
Pode. Para cada item de NF-e é possível ter um CFOP próprio desde que os CFOPs sejam de natureza igual ou semelhante. Como assim?

Se você fosse emitir uma nota fiscal para venda, a natureza da operação seria venda. E se fosse emitir para brinde, a natureza da operação seria bonificação. São duas naturezas da operação diferentes mas que não se contradizem. São semelhantes.

Então, é possível você fazer uma nota fiscal com a natureza da operação venda e alguns itens serem bonificados.

Nesse caso você terá CFOPs de venda e de bonificação. Desde que a principal operação da nota seja realmente venda.

Essa forma é válida também para venda e consignação e quaisquer outras operações semelhantes.

Um outro exemplo é quando você faz uma venda com produtos com características diferentes. É possível emitir na mesma nota CFOPs da mesma natureza da operação: 5101, 5102, 5401 e 5405.

Nesse caso você estaria emitindo uma nota com natureza da operação semelhante: venda, mas os CFOPs diferentes.
CFOP 5101 – venda de produção do estabelecimento
CFOP 5102 – venda de mercadoria adquirida ou recebida de terceiros
CFOP 5401 – venda de produção do estabelecimento em operação com produto sujeito ao regime de substituição tributária, na condição de contribuinte substituto
CFOP 5405 – venda de mercadoria adquirida ou recebida de terceiros em operação com mercadoria sujeita ao regime de substituição tributária, na condição de contribuinte substituído.

O que não é permitido é você emitir uma nota com a natureza da operação venda e ter CFOPs de devolução ou remessa para conserto, por exemplo. Essas naturezas da operação não são semelhantes e portanto devem estar em notas fiscais distintas.

Uma forma de ver se as naturezas da operação são distintas é analisar se elas se contradizem. Usar o bom senso é fundamental! Venda e devolução são parecidas? Não, portanto não podem ficar na mesma nota fiscal.

Viu? Definitivamente natureza da operação não é CFOP. Ficou com alguma dúvida? Envie nos comentários, queremos ajudar!

(3)
CSOSN é da empresa e nao do produto




==========================
O Código de Situação Tributária (CST) e
o Código de Situação da Operação no Simples Nacional (CSOSN)
são códigos que identificam a situação tributária das mercadorias.

CST é utilizado pelos contribuintes que optam pelo regime normal de tributação,
enquanto o
CSOSN é utilizado pelos contribuintes optantes pelo regime do Simples Nacional.
}
{
CREATE TABLE `produto` (
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
	`NCM` VARCHAR(50) NULL DEFAULT NULL,
	`CEST` VARCHAR(50) NULL DEFAULT NULL,
	`ANP` VARCHAR(50) NULL DEFAULT NULL,
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
	`Produto_ou_Servico` ENUM('P','S') NULL DEFAULT 'P' COMMENT 'P=Produto e S=Serviço',
	`PagaComissaoSN` ENUM('S','N') NULL DEFAULT 'S' COMMENT 'S=Paga Comissão e N=Não paga',
	`ContaContabil` INT(11) NULL DEFAULT NULL COMMENT 'Código da Conta Contábil no Plano de Contas',
	`CentroDeCustos` INT(11) NULL DEFAULT NULL COMMENT 'Código do Centro de Custos',
	`NFe_indTot` INT(11) NULL DEFAULT '1' COMMENT 'Indicador de participacao do Total da NFe',
	`NFe_VeiculoNovo` INT(11) NULL DEFAULT NULL COMMENT 'Nfe: Indicador de Veículo Novo (0-Não)(1-Sim)',
	`NFe_nDI` VARCHAR(10) NULL DEFAULT NULL COMMENT 'Nfe: Número do Documento de Importação DI/DSI/DA',
	`NFe_dDI` DATETIME NULL DEFAULT NULL COMMENT 'Nfe: Data de registro do Documento de Importação DI/DSI/DA',
	`NFe_xLocDesemb` VARCHAR(60) NULL DEFAULT NULL COMMENT 'Nfe: Local de Desembaraço',
	`NFe_UFDesemb` VARCHAR(2) NULL DEFAULT NULL COMMENT 'Nfe: UF onde ocorreu o Desembaraço Aduaneiro',
	`NFe_dDesemb` DATETIME NULL DEFAULT NULL COMMENT 'Nfe: Data do Desembaraço Aduaneiro',
	`NFe_cExportador` VARCHAR(60) NULL DEFAULT NULL COMMENT 'Nfe: Código do exportador',
	`NFe_nAdicao` INT(3) NULL DEFAULT NULL COMMENT 'Nfe: Numero da adição',
	`NFe_cFabricante` VARCHAR(60) NULL DEFAULT NULL COMMENT 'Nfe: Código do fabricante estrangeiro',
	`NFe_vDescDI` DECIMAL(10,4) NULL DEFAULT NULL COMMENT 'Nfe: Valor do desconto do item da  DI – adição',
	`NFe_Veiculo_Cor_Codigo` VARCHAR(4) NULL DEFAULT NULL COMMENT 'Nfe: (Veículo) Cor - código na montadora',
	`NFe_Veiculo_Cor_Descricao` VARCHAR(40) NULL DEFAULT NULL COMMENT 'Nfe: (Veículo) Cor - descrição',
	`NFe_Veiculo_Pot` VARCHAR(4) NULL DEFAULT NULL COMMENT 'Nfe: (Veículo) Potência motor em cavalo vapor (CV).',
	`NFe_Veiculo_Cilin` VARCHAR(4) NULL DEFAULT NULL COMMENT 'Nfe: (Veículo) Cilindradas.',
	`NFe_Medicamento` INT(11) NULL DEFAULT NULL COMMENT 'Nfe: Indicador Medicamento (0-Não)(1-Sim)',
	`NFe_Armamento` INT(11) NULL DEFAULT NULL COMMENT 'Nfe: Indicador Armamento (0-Não)(1-Sim)',
	`NFe_Combustivel` INT(11) NULL DEFAULT NULL COMMENT 'Nfe: Indicador Combustivel (0-Não)(1-Sim)',
	`NFe_modBC` INT(11) NULL DEFAULT NULL COMMENT 'Nfe: Indicador modalidade de base de cálculo',
	`NFe_modBCST` INT(11) NULL DEFAULT NULL COMMENT 'Nfe: Indicador modalidade de base de cálculo da ST',
	`NFe_pMVAST` DECIMAL(6,2) NULL DEFAULT NULL COMMENT '% da MV Adicionado do ICMS ST',
	`NFe_motDesICMS` INT(11) NULL DEFAULT NULL COMMENT 'Indicador Motivo da desoneração do ICMS',
	`CODIGO_ALFANUMERICO` VARCHAR(20) NULL DEFAULT NULL COMMENT 'Codigo Alfanumerico Alternativo',
	`VALOR_PAUTA_BC` DECIMAL(10,4) NULL DEFAULT '0.0000' COMMENT 'Valor de Pauta do produto',
	PRIMARY KEY (`CODIGO`),
	INDEX `ponto_impressao_id` (`ponto_impressao_id`),
	INDEX `idx_CODIGO_ALFANUMERICO` (`CODIGO_ALFANUMERICO`),
	INDEX `idx_descricao_produto` (`DESCRICAO_PRODUTO`),
	INDEX `idx_NCM` (`NCM`),
	INDEX `idx_referencia_fabricante` (`REFERENCIA_FABRICANTE`),
	CONSTRAINT `produto_ibfk_1` FOREIGN KEY (`ponto_impressao_id`) REFERENCES `ponto_impressao` (`id`)
)
COMMENT='onde encontram-se os produtos cadastrados\r\n'
COLLATE='latin1_swedish_ci'
ENGINE=InnoDB
AUTO_INCREMENT=34052
;
}


