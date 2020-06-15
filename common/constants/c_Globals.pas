unit c_Globals;
{
========================================================================================================================================
ALT|   DATA |HORA |UNIT                        |Descri��o                                                                              |
---|--------|-----|----------------------------|----------------------------------------------------------------------------------------
314|15/06/20|10:14|vw_consulta_generica        |Passa a tratar PRODUTO_PROD(PROD_CODIGO) ao inv�s de PRODUTO(CODIGO)
========================================================================================================================================
}
interface

uses sysutils;

var
   ID_CAIXA : integer = 0;


const
  // [th] Constantes para Tipo de Hist�ricos
  thEstoque    = (1);
  thFinanceiro = (2);
  // [cs] Constantes para identificar os estados de uma query, seguindo modelo CRUD de consulta (Create, Read, Update, Delete)
  csCreate = (1);
  csRead   = (2);
  csUpdate = (3);
  csDelete = (4);

  // [rl] Constantes para relat�rios
  // [Cs] Comiss�o
  rlCsVenda   = (1);
  rlCsProduto = (2);
  rlCsFaixa   = (1);
  rlCsFixa    = (2);

  // [nf] Constantes para notas fiscais

  __ERROR__       = 'ERRO:';
  USUARIO_ADMIN   = 'ADMIN';
  SENHA_ADMIN     = 'D#F$G%';
  m_True          = '1';
  m_False         = '0';
  DB_NULL: string = 'NULL';
  prefix_etiqueta:
           string = '99999';

  // [cg] Constantes para identificar a tabela a qual a tela de consulta gen�rica ir� trazer
type
  TConsultaGenericaKind = (cgNull,
                           cgProduto,
                           cgFornecedor,
                           cgUsuario,
                           cgCliente,
                           cgMunicipio,
                           cgNCM,
                           cgVendedor,
                           cgGerente,
                           cgFormasPagamento,
                           cgCFOP,
                           cgCSOSN,
                           cgANP,
                           cgSocio,
                           cgMarca,
                           cgICMS,
                           cgPIS,
                           cgCOFINS,
                           cgORIGEM,
                           cgOperadorCaixa,
                           cgCST_ICMS,
                           cgTIPO_ITEM,
                           cgTransportadora_Veiculos);

type
  TDBConn = (dbLocal, dbOnline);

  {
    Tipo de conex�o utilizada

    dbLocal = Conex�o local (localhost, 127.0.0.1 etc)
    dbOnline = Conex�o remota

  }

type
  TSQLType = (TSqlReadData, TSqlManipulateData);

  {

    Tipo de comando SQL a executar

    TSqlReadData = SELECT --
    TSqlManipulateData = ALTER, CREATE, UPDATE, DELETE, INSERT ---

  }

type

  TUpdateKind = (ukSoft, ukHard);
  {
    Define qual tipo de update ser� utilizado na fun��o 'Salvar' nas models
    ukSoft = Atualiza apenas os dados que estiverem em branco, mantendo os dados cadastrados anteriormente
    ukHard = Atualiza todos os dados da tabela
  }

type
  TOrderByMethod = (obmNone, obmData, obmVendedor);

  {
    Tipo de ordena��o utilizado em consultas
    obmNone = Ordena pela chave primaria da table
    obmData = Por data ao qual o evento se refere
    obmVendedor = Pelo vendedor (se presente na consulta)

  }

type
  TReportKind = (rkScreen, rkPDF, rkPrint);


function NullDate: Tdate;

implementation

function NullDate: Tdate;
begin
  result := encodedate(1899, 12, 30);
end;

end.
