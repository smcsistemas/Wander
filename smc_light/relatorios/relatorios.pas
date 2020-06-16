{ v 17.10.16 09:43 }
unit relatorios;
{
========================================================================================================================================
ALT|   DATA |HORA |UNIT                        |Descrição                                                                              |
---|--------|-----|----------------------------|----------------------------------------------------------------------------------------
340|15/06/20|18:23|relatorios                  |Passa a tratar PRODUTO_PROD(PROD_CODIGO) ao invés de PRODUTO(CODIGO)
339|15/06/20|18:23|relatorios                  |Passa a tratar PRODUTO_PROD(PROD_UNIDADE)ao invés de PRODUTO(UNIDADE_MEDIDA)
329|15/06/20|13:35|relatorios                  |Passa a tratar PRODUTO_PROD(PROD_EAN)    ao invés de PRODUTO(CODIGO_BARRAS)
========================================================================================================================================

================================================================================
| ITEM|DATA  HR|UNIT                |HISTORICO                                 |
|-----|--------|--------------------|------------------------------------------|
|  207|25/05/20|wander              |Retirada a coluna OPTANTE_SIMPLES_NACIONAL|
|     |   22:52|relatorios          |do TFDQuery SQL_Empresa                   |
================================================================================
}

interface

uses
  System.SysUtils, System.Variants,
  System.Classes,
  Vcl.Controls, Vcl.Forms,
  FireDAC.Stan.Param,
  Data.DB, FireDAC.Comp.DataSet, FireDAC.Comp.Client,
  frxClass, frxDBSet, frxExportPDF, frxRich, Vcl.StdCtrls,
  DateUtils, System.Math,
  c_globals, h_functions, FireDAC.Stan.Intf, FireDAC.Stan.Option, FireDAC.Stan.Error, FireDAC.DatS, FireDAC.Phys.Intf, FireDAC.DApt.Intf,
  FireDAC.Stan.Async, FireDAC.DApt,
  frxExportXLSX, frxExportXLS, S_Parametros_Venda, Clipbrd;

type
  Tfrm_relatorio = class(TForm)
    GroupBox2: TGroupBox;
    GroupBox3: TGroupBox;
    FRXDB_CLIENTE: TfrxDBDataset;
    FRX_CLIENTE: TfrxReport;
    SQL_CLIENTE: TFDQuery;
    GroupBox4: TGroupBox;
    FRDB_SOCIO: TfrxDBDataset;
    SQL_SOCIO: TFDQuery;
    SQL_EMPRESA: TFDQuery;
    DS_EMPRESA: TfrxDBDataset;
    FRX_EMPRESA: TfrxReport;
    SQL_AUX: TFDQuery;
    DS_AUX: TfrxDBDataset;
    GroupBox6: TGroupBox;
    FRX_OP_NFCE: TfrxReport;
    FRDB_OP_NFCE: TfrxDBDataset;
    SQL_OP_NFCE: TFDQuery;
    GroupBox7: TGroupBox;
    GroupBox8: TGroupBox;
    SQL_C_VENDA: TFDQuery;
    FRDB_C_VENDA: TfrxDBDataset;
    FR_COMPROVANTE_VENDA: TfrxReport;
    SQL_C_ITENS: TFDQuery;
    FRDB_C_ITENS: TfrxDBDataset;
    SQL_C_ITENSCODIGO: TFDAutoIncField;
    SQL_C_ITENSCODIGO_VENDA: TIntegerField;
    SQL_C_ITENSCODIGO_ITEM_VENDA: TIntegerField;
    SQL_C_ITENSCODIGO_PRODUTO: TIntegerField;
    SQL_C_ITENSDESCRICAO: TStringField;
    SQL_C_ITENSUNIDADE: TStringField;
    SQL_C_ITENSQUANTIDADE: TSingleField;
    SQL_C_ITENSPRECO: TBCDField;
    SQL_C_ITENSACRESCIMO: TBCDField;
    SQL_C_ITENSDESCONTO: TBCDField;
    SQL_C_ITENSPRECO_TOTAL: TBCDField;
    SQL_C_PAGAMENTOS: TFDQuery;
    FRDB_C_PAGAMENTOS: TfrxDBDataset;
    SQL_C_PAGAMENTOSCODIGO: TFDAutoIncField;
    SQL_C_PAGAMENTOSCODIGO_VENDA: TIntegerField;
    SQL_C_PAGAMENTOSCOD_TIPO_PAGAMENTO: TStringField;
    SQL_C_PAGAMENTOSTIPO_PAGAMENTO: TStringField;
    SQL_C_PAGAMENTOSTOTAL_PAGO: TBCDField;
    SQL_C_PAGAMENTOSVALOR_DEBITADO: TBCDField;
    SQL_C_VENDACODIGO_VENDA: TIntegerField;
    SQL_C_VENDAOPERADOR: TStringField;
    SQL_C_VENDACAIXA: TStringField;
    SQL_C_VENDADATA: TDateField;
    SQL_C_VENDAHORA: TTimeField;
    SQL_C_VENDACPF_CLIENTE: TStringField;
    SQL_C_VENDANOME_CLIENTE: TStringField;
    SQL_C_VENDAIE_CLIENTE: TStringField;
    SQL_C_VENDATELEFONE_CLIENTE: TStringField;
    SQL_C_VENDACODIGO_CLIENTE: TIntegerField;
    SQL_C_VENDARUA_CLIENTE: TStringField;
    SQL_C_VENDANUMERO_CLIENTE: TStringField;
    SQL_C_VENDABAIRRO_CLIENTE: TStringField;
    SQL_C_VENDAVENDA_FATURADA: TStringField;
    SQL_C_VENDAVALOR_VENDA: TBCDField;
    SQL_C_VENDAACRESCIMO: TBCDField;
    SQL_C_VENDADESCONTO: TBCDField;
    SQL_C_VENDATOTAL_VENDA: TBCDField;
    SQL_C_VENDAVALOR_PAGO: TBCDField;
    SQL_C_VENDATROCO: TBCDField;
    SQL_C_VENDASTATUS: TStringField;
    SQL_C_VENDAQTDE_ITENS: TIntegerField;
    GroupBox9: TGroupBox;
    SQL_LS_AUTORIZADA: TFDQuery;
    DS_LS_AUTORIZADA: TfrxDBDataset;
    FR_LIVRO_SAIDA: TfrxReport;
    DS_LS_INUT_CANC: TfrxDBDataset;
    SQL_INUT_CANC: TFDQuery;
    DS_AN: TfrxDBDataset;
    SQL_AN: TFDQuery;
    DS_COUNT_STATUS: TfrxDBDataset;
    SQL_COUNT_STATUS: TFDQuery;
    SQL_COUNT_STATUSMODELO: TStringField;
    SQL_COUNT_STATUSTOTAL_EMITIDAS: TLargeintField;
    SQL_COUNT_STATUSSTATUS_NFCE: TStringField;
    SQL_AUXUSUARIO: TStringField;
    SQL_OP_NFCECODIGO: TFDAutoIncField;
    SQL_OP_NFCEDATA_EMISSAO: TDateField;
    SQL_OP_NFCEHORA_EMISSAO: TTimeField;
    SQL_OP_NFCEDATA_TRANSMISSAO: TDateField;
    SQL_OP_NFCEHORA_TRANSMISSAO: TTimeField;
    SQL_OP_NFCECODIGO_VENDA: TStringField;
    SQL_OP_NFCEVALOR_NFCE: TBCDField;
    SQL_OP_NFCEACRESCIMOS_NFCE: TBCDField;
    SQL_OP_NFCEDESCONTOS_NFCE: TBCDField;
    SQL_OP_NFCETOTAL_NFCE: TBCDField;
    SQL_OP_NFCEVALOR_PAGO: TBCDField;
    SQL_OP_NFCETROCO: TBCDField;
    SQL_OP_NFCELOTE: TStringField;
    SQL_OP_NFCESERIE: TStringField;
    SQL_OP_NFCECHAVE: TStringField;
    SQL_OP_NFCECAMINHO_XML: TStringField;
    SQL_OP_NFCETIPO_EMISSAO: TStringField;
    SQL_OP_NFCESTATUS_NFCE: TStringField;
    SQL_OP_NFCERETORNO_NFCE: TStringField;
    SQL_OP_NFCEERRO_ROTINA: TStringField;
    GroupBox1: TGroupBox;
    DS_COMISSAO_VENDA: TfrxDBDataset;
    SQL_COMISSAO_VENDA: TFDQuery;
    REL_COMISSAO: TfrxReport;
    SQL_COMISSAO_PRODUTO: TFDQuery;
    DS_COMISSAO_PRODUTO: TfrxDBDataset;
    SQL_COMISSAO_VENDEDOR: TFDQuery;
    DS_COMISSAO_VENDEDOR: TfrxDBDataset;
    SQL_LS_AUTORIZADADATA_EMISSAO: TDateField;
    SQL_LS_AUTORIZADAMODELO: TStringField;
    SQL_LS_AUTORIZADACODIGO: TIntegerField;
    SQL_LS_AUTORIZADASERIE: TStringField;
    SQL_LS_AUTORIZADATOTAL_NFCE: TBCDField;
    SQL_LS_AUTORIZADASTATUS_NFCE: TStringField;
    SQL_LS_AUTORIZADACPF_CLIENTE: TStringField;
    SQL_LS_AUTORIZADAIE_CLIENTE: TStringField;
    SQL_LS_AUTORIZADANOME_CLIENTE: TStringField;
    SQL_LS_AUTORIZADACFOP: TStringField;
    SQL_LS_AUTORIZADACSOSN: TStringField;
    SQL_LS_AUTORIZADAICMS_CST: TStringField;
    SQL_LS_AUTORIZADAPRECO_TOTAL: TFMTBCDField;
    SQL_LS_AUTORIZADAOUTROS: TFMTBCDField;
    SQL_LS_AUTORIZADAALIQ_ICMS: TBCDField;
    SQL_LS_AUTORIZADAVALOR_ICMS: TFMTBCDField;
    SQL_INUT_CANCDATA_EMISSAO: TDateField;
    SQL_INUT_CANCMODELO: TStringField;
    SQL_INUT_CANCCODIGO: TIntegerField;
    SQL_INUT_CANCSERIE: TStringField;
    SQL_INUT_CANCTOTAL_NFCE: TBCDField;
    SQL_INUT_CANCSTATUS_NFCE: TStringField;
    SQL_INUT_CANCNOME_CLIENTE: TStringField;
    SQL_INUT_CANCIE_CLIENTE: TStringField;
    SQL_INUT_CANCCPF_CLIENTE: TStringField;
    SQL_COMISSAO_VENDEDORDATA_INICIO: TStringField;
    SQL_COMISSAO_VENDEDORDATA_FIM: TStringField;
    SQL_COMISSAO_VENDEDORDATA: TDateField;
    SQL_COMISSAO_VENDEDORCODIGO: TIntegerField;
    SQL_COMISSAO_VENDEDORNOME: TStringField;
    SQL_COMISSAO_VENDEDORCPF: TStringField;
    SQL_COMISSAO_VENDEDORTIPO: TStringField;
    SQL_COMISSAO_VENDEDORCODIGO_VENDA: TFDAutoIncField;
    SQL_COMISSAO_VENDEDORNOME_CLIENTE: TStringField;
    SQL_COMISSAO_VENDEDORTOTAL_VENDA: TBCDField;
    SQL_COMISSAO_VENDEDORCOMISSAO_VENDA: TBCDField;
    SQL_COMISSAO_VENDEDORTOTAL_COMISSAO: TFMTBCDField;
    SQL_COMISSAO_VENDEDORTOTAL_EXTENSO: TStringField;
    SQL_COMISSAO_VENDADATA_INICIO: TStringField;
    SQL_COMISSAO_VENDADATA_FIM: TStringField;
    SQL_COMISSAO_VENDADATA: TDateField;
    SQL_COMISSAO_VENDACODIGO: TIntegerField;
    SQL_COMISSAO_VENDANOME: TStringField;
    SQL_COMISSAO_VENDACPF: TStringField;
    SQL_COMISSAO_VENDATIPO: TStringField;
    SQL_COMISSAO_VENDACODIGO_VENDA: TFDAutoIncField;
    SQL_COMISSAO_VENDANOME_CLIENTE: TStringField;
    SQL_COMISSAO_VENDATOTAL_VENDA: TBCDField;
    SQL_COMISSAO_VENDAcomissao_venda: TBCDField;
    SQL_COMISSAO_VENDATOTAL_COMISSAO: TFMTBCDField;
    SQL_COMISSAO_GERENTE_VENDEDOR: TFDQuery;
    DS_COMISSAO_GERENTE_VENDEDOR: TfrxDBDataset;
    SQL_COMISSAO_GERENTE_VENDEDORDATA_INICIO: TStringField;
    SQL_COMISSAO_GERENTE_VENDEDORDATA_FIM: TStringField;
    SQL_COMISSAO_GERENTE_VENDEDORID_GERENTE: TIntegerField;
    SQL_COMISSAO_GERENTE_VENDEDORID_VENDEDOR: TIntegerField;
    SQL_COMISSAO_GERENTE_VENDEDORNOME: TStringField;
    SQL_COMISSAO_GERENTE_VENDEDORCOMISSAO: TBCDField;
    SQL_COMISSAO_GERENTE_VENDEDORCODIGO_VENDA: TIntegerField;
    SQL_COMISSAO_GERENTE_VENDEDORDATA: TDateField;
    SQL_COMISSAO_GERENTE_VENDEDORTIPO: TStringField;
    SQL_COMISSAO_GERENTE_VENDEDORNOME_CLIENTE: TStringField;
    SQL_COMISSAO_GERENTE_VENDEDORTOTAL_VENDA: TBCDField;
    SQL_COMISSAO_GERENTE_VENDEDORTOTAL_COMISSAO: TFMTBCDField;
    SQL_C_VENDAOPERADOR_NOME: TStringField;
    frx_richobject: TfrxRichObject;
    SQL_EMPRESACODIGO: TFDAutoIncField;
    SQL_EMPRESARAZAO_SOCIAL: TStringField;
    SQL_EMPRESANOME_FANTASIA: TStringField;
    SQL_EMPRESADATA_CADASTRO: TDateField;
    SQL_EMPRESACNPJ: TStringField;
    SQL_EMPRESAINSCRICAO_ESTADUAL: TStringField;
    SQL_EMPRESAINSCRICAO_MUNICIPAL: TStringField;
    SQL_EMPRESAEMPRESA_TELEFONE_01: TStringField;
    SQL_EMPRESAEMPRESA_TELEFONE_02: TStringField;
    SQL_EMPRESAEMPRESA_TELEFONE_03: TStringField;
    SQL_EMPRESAEMPRESA_FAX: TStringField;
    SQL_EMPRESAEMPRESA_CELULAR_01: TStringField;
    SQL_EMPRESAEMPRESA_CELULAR_02: TStringField;
    SQL_EMPRESAEMPRESA_SKYPE: TStringField;
    SQL_EMPRESAEMPRESA_SITE: TStringField;
    SQL_EMPRESAEMPRESA_EMAIL_01: TStringField;
    SQL_EMPRESAEMPRESA_EMAIL_02: TStringField;
    SQL_EMPRESASUFRAMA: TStringField;
    SQL_EMPRESAENDERECO: TStringField;
    SQL_EMPRESANUMERO: TStringField;
    SQL_EMPRESABAIRRO: TStringField;
    SQL_EMPRESACEP: TStringField;
    SQL_EMPRESAMUNICIPIO: TStringField;
    SQL_EMPRESACODIGO_MUNICIPIO: TIntegerField;
    SQL_EMPRESAESTADO: TStringField;
    SQL_EMPRESACOD_UF: TStringField;
    SQL_EMPRESAPAIS: TStringField;
    SQL_EMPRESACOMPLEMENTO: TStringField;
    SQL_EMPRESAINICIO_ATIVIDADE: TDateField;
    SQL_EMPRESAIE_SUBSTITUTO_TRIBUTARIO: TStringField;
    SQL_EMPRESACODIGO_REGIME_TRIBUTARIO: TStringField;
    SQL_EMPRESATRIBUTACAO_PIS_COFINS: TStringField;
    SQL_EMPRESAAPURACAO_MENSAL_IPI: TStringField;
    SQL_EMPRESAAPURACAO_IPI: TStringField;
    SQL_EMPRESAAPURACAO_DECENDIAL_IPI: TStringField;
    SQL_EMPRESAOPTANTE_SIMPLES_NACIONAL: TStringField;
    SQL_EMPRESATRIBUTADO_ALIQUOTA_FIXA_ICMS: TStringField;
    SQL_EMPRESACONTRIBUINTE_IPI: TStringField;
    SQL_EMPRESAORGANIZACAO_CONTABIL_RAZAO_SOCIAL: TStringField;
    SQL_EMPRESAORGANIZACAO_CONTABIL_FANTASIA: TStringField;
    SQL_EMPRESAORGANIZACAO_CONTABIL_CNPJ_CPF: TStringField;
    SQL_EMPRESAORGANIZACAO_CONTABIL_INSCRICAO: TStringField;
    SQL_EMPRESAORGANIZACAO_CONTABIL_ENDERECO: TStringField;
    SQL_EMPRESAORGANIZACAO_CONTABIL_BAIRRO: TStringField;
    SQL_EMPRESAORGANIZACAO_CONTABIL_NUMERO: TStringField;
    SQL_EMPRESAORGANIZACAO_CONTABIL_MUNICIPIO: TStringField;
    SQL_EMPRESAORGANIZACAO_CONTABIL_CODIGO_MUNICIPIO: TIntegerField;
    SQL_EMPRESAORGANIZACAO_CONTABIL_ESTADO: TStringField;
    SQL_EMPRESAORGANIZACAO_CONTABIL_PAIS: TStringField;
    SQL_EMPRESAORGANIZACAO_CONTABIL_CEP: TStringField;
    SQL_EMPRESAORGANIZACAO_CONTABIL_COMPLEMENTO: TStringField;
    SQL_EMPRESAORGANIZACAO_CONTABIL_TELEFONE_01: TStringField;
    SQL_EMPRESAORGANIZACAO_CONTABIL_TELEFONE_02: TStringField;
    SQL_EMPRESAORGANIZACAO_CONTABIL_CELULAR_01: TStringField;
    SQL_EMPRESAORGANIZACAO_CONTABIL_CELULAR_02: TStringField;
    SQL_EMPRESAORGANIZACAO_CONTABIL_EMAIL_01: TStringField;
    SQL_EMPRESAORGANIZACAO_CONTABIL_EMAIL_02: TStringField;
    SQL_EMPRESAORGANIZACAO_CONTABIL_SITE: TStringField;
    SQL_EMPRESAORGANIZACAO_CONTABIL_SKYPE: TStringField;
    SQL_EMPRESACONTADOR_NOME: TStringField;
    SQL_EMPRESACONTADOR_CPF: TStringField;
    SQL_EMPRESACONTADOR_CRC: TStringField;
    SQL_EMPRESANIRE: TStringField;
    SQL_EMPRESACNAE: TStringField;
    SQL_EMPRESABANCO_01: TStringField;
    SQL_EMPRESABANCO_OP: TStringField;
    SQL_EMPRESABANCO_OP2: TStringField;
    SQL_EMPRESABANCO_OP_1: TStringField;
    SQL_EMPRESABANCO_OP_1_2: TStringField;
    SQL_EMPRESABANCO_AGENCIA_01: TStringField;
    SQL_EMPRESABANCO_CONTA_01: TStringField;
    SQL_EMPRESABANCO_02: TStringField;
    SQL_EMPRESABANCO_AGENCIA_01_DIGITO: TStringField;
    SQL_EMPRESABANCO_CONTA_01_DIGITO: TStringField;
    SQL_EMPRESABANCO_AGENCIA_02_DIGITO: TStringField;
    SQL_EMPRESABANCO_CONTA_02_DIGITO: TStringField;
    SQL_EMPRESABANCO_AGENCIA_02: TStringField;
    SQL_EMPRESABANCO_CONTA_02: TStringField;
    SQL_EMPRESABANCO_03: TIntegerField;
    SQL_EMPRESABANCO_AGENCIA_03: TStringField;
    SQL_EMPRESABANCO_CONTA_03: TStringField;
    SQL_EMPRESABANCO_GERENTE_01: TStringField;
    SQL_EMPRESABANCO_TELEFONE_01: TStringField;
    SQL_EMPRESABANCO_RAMAL_01: TStringField;
    SQL_EMPRESABANCO_GERENTE_02: TStringField;
    SQL_EMPRESABANCO_TELEFONE_02: TStringField;
    SQL_EMPRESABANCO_RAMAL_02: TStringField;
    SQL_EMPRESASOCIO_01: TIntegerField;
    SQL_EMPRESASOCIO_02: TIntegerField;
    SQL_EMPRESARODAPE: TStringField;
    SQL_EMPRESALOGOTIPO: TStringField;
    SQL_EMPRESASELECAO_EMPRESA: TStringField;
    SQL_EMPRESACODIGO_IDENTIFICACAO: TStringField;
    SQL_EMPRESACHAVE_ATIVACAO: TStringField;
    SQL_EMPRESACODIGO_PAIS: TIntegerField;
    SQL_EMPRESAORGANIZACAO_CONTABIL_CODPAIS: TIntegerField;
    SQL_EMPRESAORGANIZACAO_CONTABIL_CPF: TStringField;
    SQL_EMPRESADIA_VENCIMENTO: TStringField;
    SQL_EMPRESAARQUIVOS_FISCAIS_EMAIL_01: TStringField;
    SQL_EMPRESAARQUIVOS_FISCAIS_EMAIL_02: TStringField;
    SQL_EMPRESAORGANIZACAO_CONTABIL_NOME: TStringField;
    SQL_EMPRESANOME_S1: TStringField;
    SQL_EMPRESACPF_S1: TStringField;
    SQL_EMPRESARG_S1: TStringField;
    SQL_EMPRESAORGAO_EMISSOR_S1: TStringField;
    SQL_EMPRESATELEFONE_S1: TStringField;
    SQL_EMPRESACELULAR_S1: TStringField;
    SQL_EMPRESAENDERECO_S1: TStringField;
    SQL_EMPRESANUMERO_S1: TStringField;
    SQL_EMPRESABAIRRO_S1: TStringField;
    SQL_EMPRESACEP_S1: TStringField;
    SQL_EMPRESAMUNICIPIO_S1: TStringField;
    SQL_EMPRESAESTADO_S1: TStringField;
    SQL_EMPRESAPAIS_S1: TStringField;
    SQL_EMPRESACOMPLEMENTO_S1: TStringField;
    SQL_EMPRESANOME_S2: TStringField;
    SQL_EMPRESACPF_S2: TStringField;
    SQL_EMPRESARG_S2: TStringField;
    SQL_EMPRESAORGAO_EMISSOR_S2: TStringField;
    SQL_EMPRESATELEFONE_S2: TStringField;
    SQL_EMPRESACELULAR_S2: TStringField;
    SQL_EMPRESAENDERECO_S2: TStringField;
    SQL_EMPRESANUMERO_S2: TStringField;
    SQL_EMPRESABAIRRO_S2: TStringField;
    SQL_EMPRESACEP_S2: TStringField;
    SQL_EMPRESAMUNICIPIO_S2: TStringField;
    SQL_EMPRESAESTADO_S2: TStringField;
    SQL_EMPRESAPAIS_S2: TStringField;
    SQL_EMPRESACOMPLEMENTO_S2: TStringField;
    SQL_EMPRESANOME_CONTATO_AD: TMemoField;
    GroupBox5: TGroupBox;
    fr_v_lucrativ: TfrxReport;
    ds_v_lucrativ: TfrxDBDataset;
    sql_v_lucrativ: TFDQuery;
    sql_v_lucrativdata: TDateField;
    sql_v_lucrativcod_nfce: TStringField;
    sql_v_lucrativcodigo_venda: TFDAutoIncField;
    sql_v_lucrativstatus: TStringField;
    sql_v_lucrativnome_cliente: TStringField;
    sql_v_lucrativvendedor: TStringField;
    sql_v_lucrativcodigo_produto: TIntegerField;
    sql_v_lucrativdescricao: TStringField;
    sql_v_lucrativcodigo_item_venda: TIntegerField;
    sql_v_lucrativunidade: TStringField;
    sql_v_lucrativpreco_custo: TBCDField;
    sql_v_lucrativpreco: TBCDField;
    sql_v_lucrativquantidade: TSingleField;
    sql_v_lucrativacrescimos_item: TFMTBCDField;
    sql_v_lucrativdesconto_item: TFMTBCDField;
    sql_v_lucrativpreco_total: TFMTBCDField;
    sql_v_lucrativDATA_INICIO: TStringField;
    sql_v_lucrativDATA_FIM: TStringField;
    fr_conf_estq: TfrxReport;
    ds_produtos: TfrxDBDataset;
    sql_produtos: TFDQuery;
    ds_saldo: TfrxDBDataset;
    sql_saldo: TFDQuery;
    sql_saldoqtde_cadastrado: TLargeintField;
    sql_saldoqtde_negativo: TLargeintField;
    sql_saldoqtde_minimo: TLargeintField;
    sql_saldoqtde_zerado: TLargeintField;
    sql_saldoqtde_positivo: TLargeintField;
    sql_produtoscodigo: TFDAutoIncField;
    sql_produtosdescricao_produto: TStringField;
    sql_produtossaldo: TBCDField;
    sql_produtosmarca: TStringField;
    sql_produtosreferencia_fabricante: TStringField;
    SQL_OP_NFCETOTAL_AUT: TFMTBCDField;
    grp1: TGroupBox;
    fr_produtos: TfrxReport;
    //frx_PDF: TfrxPDFExport;
    fr_venda_simples: TfrxReport;
    ds_venda_simples: TfrxDBDataset;
    sql_venda_simples: TFDQuery;
    sql_venda_simplesdata_inicio: TStringField;
    sql_venda_simplesdata_fim: TStringField;
    sql_venda_simplesDATA: TDateField;
    sql_venda_simplesCODIGO_VENDA: TFDAutoIncField;
    sql_venda_simplesTIPO: TStringField;
    sql_venda_simplesCOD_NFCE: TStringField;
    sql_venda_simplesVALOR_PAGO: TBCDField;
    sql_venda_simplesTROCO: TBCDField;
    sql_venda_simplesNOME_CLIENTE: TStringField;
    sql_venda_simplesVALOR_VENDA: TBCDField;
    sql_venda_simplesDESCONTO: TBCDField;
    sql_venda_simplesACRESCIMO: TBCDField;
    sql_venda_simplesTOTAL_VENDA: TBCDField;
    sql_venda_simplesSTATUS: TStringField;
    sql_venda_simplesQTD_FECHADAS: TLargeintField;
    sql_venda_simplesQTD_CANCELADAS: TLargeintField;
    sql_venda_simplesVALOR_FECHADAS: TFMTBCDField;
    sql_venda_simplesACRESCIMO_FECHADAS: TFMTBCDField;
    sql_venda_simplesDESCONTO_FECHADAS: TFMTBCDField;
    sql_an_entrada: TFDQuery;
    ds_an_entrada: TfrxDBDataset;
    sql_livro_entrada: TFDQuery;
    ds_livro_entrada: TfrxDBDataset;
    fr_livro_entrada: TfrxReport;
    GroupBox10: TGroupBox;
    sql_livro_entradaNUMERO: TIntegerField;
    sql_livro_entradaSERIE: TIntegerField;
    sql_livro_entradaCHAVE: TStringField;
    sql_livro_entradaTOTAL_NFE: TBCDField;
    sql_livro_entradaCST_ICMS: TStringField;
    sql_livro_entradaCSOSN: TStringField;
    sql_livro_entradaCFOP: TStringField;
    sql_livro_entradaVALOR_ICMS: TBCDField;
    sql_livro_entradaVALOR_OUTROS: TBCDField;
    sql_livro_entradaRAZAO_SOCIAL: TStringField;
    sql_livro_entradaCNPJ_CPF: TStringField;
    sql_livro_entradaINSCRICAO_ESTADUAL: TStringField;
    sql_livro_entradaESTADO: TStringField;
    sql_livro_entradaMUNICIPIO: TStringField;
    sql_livro_entradaDATA_EMISSAO: TDateTimeField;
    sql_livro_entradaBASE_ICMS: TBCDField;
    sql_livro_entradaALIQ_ICMS: TBCDField;
    sql_an_entradaCST_ICMS: TStringField;
    sql_an_entradaCSOSN: TStringField;
    sql_an_entradaCFOP: TStringField;
    sql_an_entradaVALOR_ICMS: TFMTBCDField;
    sql_an_entradaVALOR_OUTROS: TFMTBCDField;
    sql_an_entradaTOTAL_NFE: TBCDField;
    sql_an_entradaBASE_ICMS: TBCDField;
    GroupBox11: TGroupBox;
    fr_movimentacao_caixa: TfrxReport;
    ds_mov_caixa_pagamentos: TfrxDBDataset;
    sql_mov_caixa_pagamentos: TFDQuery;
    sql_mov_caixa_pagamentosTIPO_PAGAMENTO: TStringField;
    sql_mov_caixa_pagamentosTOTAL: TFMTBCDField;
    ds_mov_caixa_produtos: TfrxDBDataset;
    sql_mov_caixa_produtos: TFDQuery;
    sql_mov_caixa_docs: TFDQuery;
    ds_mov_caixa_docs: TfrxDBDataset;
    sql_mov_caixa_docsQTDE_NFCE: TLargeintField;
    sql_mov_caixa_docsVALOR_NFCE: TFMTBCDField;
    sql_mov_caixa_docsQTDE_COMPROVANTE: TLargeintField;
    sql_mov_caixa_docsVALOR_COMPROVANTE: TFMTBCDField;
    FR_COMPROVANTE_VENDA_A4: TfrxReport;
    SQL_CLIENTECODIGO: TFDAutoIncField;
    SQL_CLIENTERAZAO_SOCIAL: TStringField;
    SQL_CLIENTEFANTASIA: TStringField;
    SQL_CLIENTEENDERECO: TStringField;
    SQL_CLIENTENUMERO: TStringField;
    SQL_CLIENTEBAIRRO: TStringField;
    SQL_CLIENTEMUNICIPIO: TStringField;
    SQL_CLIENTEESTADO: TStringField;
    SQL_CLIENTETELEFONE: TStringField;
    SQL_CLIENTECELULAR: TStringField;
    SQL_CLIENTEEMAIL: TStringField;
    SQL_CLIENTESTATUS_CADASTRAL: TStringField;
    SQL_CLIENTECPF: TStringField;
    SQL_CLIENTECNPJ: TStringField;
    SQL_CLIENTEQTD_ATIVOS: TLargeintField;
    SQL_CLIENTEQTD_INATIVOS: TLargeintField;
    ds_v_analitico: TfrxDBDataset;
    sql_v_analitico: TFDQuery;
    sql_cli_aniversario: TFDQuery;
    ds_cli_aniversario: TfrxDBDataset;
    fr_cliente_aniversario: TfrxReport;
    sql_produtosFAMILIA: TStringField;
    sql_produtosGRUPO: TStringField;
    sql_produtosSUBGRUPO: TStringField;
    sql_produtosPRECO_FINAL_ATACADO: TBCDField;
    sql_produtosPRECO_FINAL_DISTRIBUIDOR: TBCDField;
    sql_produtosPRECO_FINAL_VAREJO: TBCDField;
    sql_produtosCOD_BALANCA_1: TStringField;
    fr_pro_trib: TfrxReport;
    ds_pro_trib: TfrxDBDataset;
    sql_pro_trib: TFDQuery;
    sql_pro_tribqtde_cadastrado: TLargeintField;
    sql_pro_tribpro_substituicao: TLargeintField;
    sql_pro_tribpro_trib_integral: TLargeintField;
    sql_pro_tribpro_n_trib: TLargeintField;
    sql_pro_tribpro_isento: TLargeintField;
    sql_fecoep: TFDQuery;
    sql_fecoepCODIGO_PRODUTO: TIntegerField;
    sql_fecoepDESCRICAO: TStringField;
    sql_fecoepunidade: TStringField;
    sql_fecoeppreco: TBCDField;
    sql_fecoepSUMviQUANTIDADE: TFloatField;
    sql_fecoepSUMviPRECO_TOTAL: TFMTBCDField;
    sql_fecoepSUMviPRECO_TOTAL002: TFMTBCDField;
    ds_fecoep: TfrxDBDataset;
    fr_fecoep: TfrxReport;
    fr_pro_comp_preco: TfrxReport;
    sql_produtosPRECO_CUSTO: TBCDField;
    sql_produtosMARGEM_L_VAREJO: TBCDField;
    sql_produtosCUSTO_MEDIO: TBCDField;
    sql_produtosDESCONTO_M_VAREJO: TBCDField;
    sql_produtosEXTERNA_COMISSAO_VAREJO: TBCDField;
    sql_produtosBALCAO_COMISSAO_VAREJO: TBCDField;
    fr_pro_prom: TfrxReport;
    ds_pro_prom: TfrxDBDataset;
    sql_pro_prom: TFDQuery;
    sql_pro_promCODIGO: TFDAutoIncField;
    sql_pro_promDESCRICAO_PRODUTO: TStringField;
    sql_pro_promREFERENCIA_FABRICANTE: TStringField;
    sql_pro_promMARCA: TStringField;
    sql_pro_promUNIDADE_MEDIDA: TStringField;
    sql_pro_promPRECO_FINAL_VAREJO: TBCDField;
    sql_pro_promPROMO_VAREJO: TBCDField;
    sql_pro_promPROMOCAO_INICIO: TDateField;
    sql_pro_promPROMOCAO_TERMINO: TDateField;
    sql_pro_promVALOR_PROMOCIONAL_VAREJO: TBCDField;
    sql_pro_promSALDO: TBCDField;
    ds_pro_pesav: TfrxDBDataset;
    sql_pro_pesav: TFDQuery;
    sql_pro_pesavCODIGO: TFDAutoIncField;
    sql_pro_pesavDESCRICAO_PRODUTO: TStringField;
    sql_pro_pesavFAMILIA: TStringField;
    sql_pro_pesavGRUPO: TStringField;
    sql_pro_pesavSUBGRUPO: TStringField;
    sql_pro_pesavUNIDADE_MEDIDA: TStringField;
    sql_pro_pesavPRECO_FINAL_ATACADO: TBCDField;
    sql_pro_pesavPRECO_FINAL_DISTRIBUIDOR: TBCDField;
    sql_pro_pesavPRECO_FINAL_VAREJO: TBCDField;
    sql_pro_pesavSALDO: TBCDField;
    sql_pro_pesavCOD_BALANCA_1: TStringField;
    sql_pro_pesavCOD_BALANCA_2: TStringField;
    sql_pro_pesavCOD_BALANCA_3: TStringField;
    fr_pro_pesaveis: TfrxReport;
    sql_p_venda_itens: TFDQuery;
    ds_v_venda_itens: TfrxDBDataset;
    fr_venda_itens: TfrxReport;
    fr_estq_comp: TfrxReport;
    ds_estq_comp: TfrxDBDataset;
    sql_estq_comp: TFDQuery;
    sql_estq_compCODIGO: TFDAutoIncField;
    sql_estq_compDESCRICAO_PRODUTO: TStringField;
    sql_estq_compPRECO_CUSTO: TBCDField;
    sql_estq_compPRECO_FINAL_VAREJO: TBCDField;
    sql_estq_compSALDO: TBCDField;
    sql_estq_compREFERENCIA_FABRICANTE: TStringField;
    sql_estq_compMARGEM_L_VAREJO: TBCDField;
    sql_estq_compUNIDADE_MEDIDA: TStringField;
    sql_mov_caixa_periodo: TFDQuery;
    ds_mov_caixa_periodo: TfrxDBDataset;
    sql_mov_caixa_periodoabertura_inicio: TStringField;
    sql_mov_caixa_periodoabertura_fim: TStringField;
    sql_mov_caixa_docsQTDE_NFCE_C: TLargeintField;
    sql_mov_caixa_docsVALOR_NFCE_C: TFMTBCDField;
    sql_mov_caixa_docsQTDE_COMPROVANTE_C: TLargeintField;
    sql_mov_caixa_docsVALOR_COMPROVANTE_C: TFMTBCDField;
    sql_mov_caixa_produtosCODIGO_PRODUTO: TIntegerField;
    sql_mov_caixa_produtosDESCRICAO: TStringField;
    sql_mov_caixa_produtosUNIDADE: TStringField;
    sql_mov_caixa_produtosQTDE: TFloatField;
    sql_mov_caixa_produtosPRECO: TFMTBCDField;
    sql_mov_caixa_produtosPRECO_TOTAL: TFMTBCDField;
    sql_mov_caixa_docsQTDE_NFCE_P: TLargeintField;
    sql_mov_caixa_docsVALOR_NFCE_P: TFMTBCDField;
    SQL_ANCFOP: TStringField;
    SQL_ANCSOSN: TStringField;
    SQL_ANICMS_CST: TStringField;
    SQL_ANPRECO_BASE: TFMTBCDField;
    SQL_ANOUTROS: TFMTBCDField;
    SQL_ANALIQ_ICMS: TBCDField;
    SQL_ANVALOR_ICMS: TFMTBCDField;
    SQL_ANMODELO: TStringField;
    GroupBox12: TGroupBox;
    sql_v_lucrativlucro: TFloatField;
    sql_vd_conv_analitico: TFDQuery;
    ds_vd_conv_analitico: TfrxDBDataset;
    rel_conv_analitico: TfrxReport;
    ds_vd_conv_analitico_prods: TfrxDBDataset;
    sql_vd_conv_analitico_prods: TFDQuery;
    sql_vd_conv_analiticoDATA_INICIO: TStringField;
    sql_vd_conv_analiticoDATA_FIM: TStringField;
    sql_vd_conv_analiticorazao_social: TStringField;
    sql_vd_conv_analiticofantasia: TStringField;
    sql_vd_conv_analiticocnpj: TStringField;
    sql_vd_conv_analiticoperiodo_inicio: TDateField;
    sql_vd_conv_analiticoperiodo_fim: TDateField;
    sql_vd_conv_analiticoid: TFDAutoIncField;
    sql_vd_conv_analiticonome: TStringField;
    sql_vd_conv_analiticocpf: TStringField;
    sql_vd_conv_analiticomatricula: TStringField;
    sql_vd_conv_analiticocredito: TBCDField;
    sql_vd_conv_analiticostatus: TBooleanField;
    sql_vd_conv_analiticoDATA: TDateField;
    sql_vd_conv_analiticototal_venda: TBCDField;
    sql_vd_conv_analiticocodigo_venda: TIntegerField;
    sql_vd_conv_analiticoCODIGO_ITEM_VENDA: TIntegerField;
    sql_vd_conv_analiticoCODIGO_PRODUTO: TIntegerField;
    sql_vd_conv_analiticoDESCRICAO: TStringField;
    sql_vd_conv_analiticoQUANTIDADE: TSingleField;
    sql_vd_conv_analiticopreco: TFloatField;
    sql_vd_conv_analiticopreco_total: TFMTBCDField;
    sql_vd_conv_analitico_prodsCODIGO_PRODUTO: TIntegerField;
    sql_vd_conv_analitico_prodsDESCRICAO: TStringField;
    sql_vd_conv_analitico_prodsquantidade: TFloatField;
    sql_vd_conv_analitico_prodspreco: TFloatField;
    sql_vd_conv_analitico_prodspreco_total: TFMTBCDField;
    rel_conv_sintetico: TfrxReport;
    ds_vd_conv_sintetico: TfrxDBDataset;
    sql_vd_conv_sintetico: TFDQuery;
    sql_vd_conv_sinteticoDATA_INICIO: TStringField;
    sql_vd_conv_sinteticoDATA_FIM: TStringField;
    sql_vd_conv_sinteticorazao_social: TStringField;
    sql_vd_conv_sinteticofantasia: TStringField;
    sql_vd_conv_sinteticocnpj: TStringField;
    sql_vd_conv_sinteticoperiodo_inicio: TDateField;
    sql_vd_conv_sinteticoperiodo_fim: TDateField;
    sql_vd_conv_sinteticoid: TFDAutoIncField;
    sql_vd_conv_sinteticonome: TStringField;
    sql_vd_conv_sinteticocpf: TStringField;
    sql_vd_conv_sinteticomatricula: TStringField;
    sql_vd_conv_sinteticocredito: TBCDField;
    sql_vd_conv_sinteticototal: TFMTBCDField;
    SQL_C_VENDAcomanda: TIntegerField;
    GroupBox13: TGroupBox;
    rel_comanda: TfrxReport;
    ds_comanda: TfrxDBDataset;
    sql_comanda: TFDQuery;
    sql_comandanome: TStringField;
    sql_comandacomanda: TIntegerField;
    sql_comandacodigo_produto: TIntegerField;
    sql_comandadescricao: TStringField;
    sql_comandaquantidade: TSingleField;
    sql_comandaunidade: TStringField;
    rel_teste_impressao: TfrxReport;
    ds_imp_test65: TfrxDBDataset;
    sql_imp_test65: TFDQuery;
    sql_imp_test65nome: TStringField;
    sql_imp_test65impressora: TStringField;
    sql_caixa_detalhe: TFDQuery;
    sql_caixa_detalheLancamento: TDateTimeField;
    sql_caixa_detalheDescricaoOperacao: TStringField;
    sql_caixa_detalhetotal: TBCDField;
    sql_caixa_detalheDescricao: TStringField;
    sql_caixa_detalheUSUARIO: TStringField;
    ds_caixa_detalhe: TfrxDBDataset;
    fr_caixa_detalhe: TfrxReport;
    frFechaCaixa: TfrxReport;
    qFechaCaixa: TFDQuery;
    dsFechaCaixa: TfrxDBDataset;
    qFechaCaixaPDV: TStringField;
    qFechaCaixaUsuario: TStringField;
    qFechaCaixaAbertura: TDateTimeField;
    qFechaCaixaFechamento: TDateTimeField;
    qFechaCaixaSuprimentos: TFMTBCDField;
    qFechaCaixaSangria: TFMTBCDField;
    qFechaCaixaQTDE_NFCE: TLargeintField;
    qFechaCaixaVALOR_NFCE: TFMTBCDField;
    qFechaCaixaQTDE_COMPROVANTE: TLargeintField;
    qFechaCaixaVALOR_COMPROVANTE: TFMTBCDField;
    qFechaCaixaQTDE_COMPROVANTE_C: TLargeintField;
    qFechaCaixaVALOR_COMPROVANTE_C: TFMTBCDField;
    qFechaCaixaid: TIntegerField;
    qFechaCaixaToTalCaixa: TBCDField;
    qFechaCaixaQuebraDinheiro: TBCDField;
    qFechaCaixaQuebraCartaoDebito: TBCDField;
    qFechaCaixaQuebraCartaoCredito: TBCDField;
    qFechaCaixaQuebraConvenio: TBCDField;
    qFechaCaixaTotalDiferenca: TBCDField;
    sql_produtosCOD_BARRAS_AUXILIAR: TStringField;
    sql_produtosINFO_ADICIONAIS: TStringField;
    sql_produtosDATA_CADASTRO: TDateField;
    sql_produtosTIPO_ITEM: TStringField;
    sql_produtosESTOQUE_MINIMO: TStringField;
    sql_produtosFRETE: TBCDField;
    sql_produtosIMPOSTO: TBCDField;
    sql_produtosDESP_OPERACIONAIS: TBCDField;
    sql_produtosMARGEM_LUCRO: TBCDField;
    sql_produtosMARGEM_L_ATACADO: TBCDField;
    sql_produtosMARGEM_L_DISTRIBUIDOR: TBCDField;
    sql_produtosDESCONTO_MAXIMO: TBCDField;
    sql_produtosDESCONTO_M_ATACADO: TBCDField;
    sql_produtosDESCONTO_M_DISTRIBUIDOR: TBCDField;
    sql_produtosDESCONTO_L_VAREJO: TBCDField;
    sql_produtosDESCONTO_L_ATACADO: TBCDField;
    sql_produtosDESCONTO_L_DISTRIBUIDOR: TBCDField;
    sql_produtosPAGAR_COMISSAO: TBCDField;
    sql_produtosCOMISSAO_BALCAO: TBCDField;
    sql_produtosBALCAO_COMISSAO_ATACADO: TBCDField;
    sql_produtosBALCAO_COMISSAO_DISTRIBUIDOR: TBCDField;
    sql_produtosCOMISSAO_EXTERNA: TBCDField;
    sql_produtosEXTERNA_COMISSAO_ATACADO: TBCDField;
    sql_produtosEXTERNA_COMISSAO_DISTRIBUIDOR: TBCDField;
    sql_produtosPROMO_VAREJO: TBCDField;
    sql_produtosPROMO_ATACADO: TBCDField;
    sql_produtosPROMO_DISTRIBUIDOR: TBCDField;
    sql_produtosPROMOCAO_INICIO: TDateField;
    sql_produtosPROMOCAO_TERMINO: TDateField;
    sql_produtosVALOR_PROMOCIONAL_ATACADO: TBCDField;
    sql_produtosVALOR_PROMOCIONAL_DISTRIBUIDOR: TBCDField;
    sql_produtosVALOR_PROMOCIONAL_VAREJO: TBCDField;
    sql_produtosALIQ_ICMS: TBCDField;
    sql_produtosREDUCAO_ICMS: TBCDField;
    sql_produtosALIQ_ICMS_SUBST: TStringField;
    sql_produtosREDUCAO_ICMS_ST: TBCDField;
    sql_produtosLUCRO_SUBST_TRIBUTARIA: TBCDField;
    sql_produtosVALOR_PAUTA_BC_ST: TBCDField;
    sql_produtosLEIS: TStringField;
    sql_produtosGENERO: TStringField;
    sql_produtosFORNECEDOR_NOME: TStringField;
    sql_produtosCOD_COMB: TStringField;
    sql_produtosALIQ_IPI: TStringField;
    sql_produtosENQUADRAMENTO_IPI: TIntegerField;
    sql_produtosCODIGO_LOCALIZACAO: TIntegerField;
    sql_produtosICMS_CST: TStringField;
    sql_produtosICMS_IPI: TStringField;
    sql_produtosPIS_CST: TStringField;
    sql_produtosCOFINS_CST: TStringField;
    sql_produtosCODIGO_ORIGEM_MERCADORIA: TIntegerField;
    sql_produtosNCM: TStringField;
    sql_produtosCEST: TStringField;
    sql_produtosANP: TStringField;
    sql_produtosEX_IPI: TSingleField;
    sql_produtosSTATUS_CADASTRAL: TStringField;
    sql_produtosPESAVEL: TStringField;
    sql_produtosUTILIZA_ETIQUETA_BALANCA: TStringField;
    sql_produtosUSA_LOTE: TStringField;
    sql_produtosCONTROLADO: TStringField;
    sql_produtosCODIGO_FORNECEDOR: TIntegerField;
    sql_produtosQUANT_MINI_VAREJO_P: TBCDField;
    sql_produtosQUANT_MINI_ATACADO_P: TBCDField;
    sql_produtosQUANT_MINI_DISTRIBUIDOR_P: TBCDField;
    sql_produtosQUANT_MINI_VAREJO_Q: TBCDField;
    sql_produtosQUANT_MINI_ATACADO_Q: TBCDField;
    sql_produtosQUANT_MINI_DISTRIBUIDOR_Q: TBCDField;
    sql_produtosQUANT_MINI_VAREJO_D: TBCDField;
    sql_produtosQUANT_MINI_DISTRIBUIDOR_D: TBCDField;
    sql_produtosQUANT_MINI_ATACADO_D: TBCDField;
    sql_produtosCST_IPI: TStringField;
    sql_produtosCOD_BALANCA_2: TStringField;
    sql_produtosCOD_BALANCA_3: TStringField;
    sql_produtosponto_impressao_id: TIntegerField;
    sql_produtosNFe_nDI: TStringField;
    sql_produtosNFe_dDI: TDateTimeField;
    sql_produtosNFe_xLocDesemb: TStringField;
    sql_produtosNFe_UFDesemb: TStringField;
    sql_produtosNFe_dDesemb: TDateTimeField;
    sql_produtosNFe_cExportador: TStringField;
    sql_produtosNFe_nAdicao: TIntegerField;
    sql_produtosNFe_cFabricante: TStringField;
    sql_produtosNFe_vDescDI: TBCDField;
    sql_produtosNFe_VeiculoNovo: TIntegerField;
    sql_produtosNFe_Veiculo_Cor_Codigo: TStringField;
    sql_produtosNFe_Veiculo_Cor_Descricao: TStringField;
    sql_produtosNFe_Veiculo_Pot: TStringField;
    sql_produtosNFe_Veiculo_Cilin: TStringField;
    sql_produtosNFe_Armamento: TIntegerField;
    sql_produtosNFe_Combustivel: TIntegerField;
    sql_produtosNFe_modBC: TIntegerField;
    sql_produtosNFe_modBCST: TIntegerField;
    sql_produtosNFe_pMVAST: TBCDField;
    sql_produtosNFe_motDesICMS: TIntegerField;
    sql_produtosProduto_ou_Servico: TStringField;
    sql_produtosPagaComissaoSN: TStringField;
    sql_produtosContaContabil: TIntegerField;
    sql_produtosCentroDeCustos: TIntegerField;
    sql_produtosNFe_indTot: TIntegerField;
    sql_produtosNFe_Medicamento: TIntegerField;
    sql_produtosCODIGO_ALFANUMERICO: TStringField;
    sql_produtosVALOR_PAUTA_BC: TBCDField;
    sql_produtosNFe_pMVA: TBCDField;
    sql_produtosNFe_indEscala: TIntegerField;
    sql_produtosPROD_RASTREAVEL: TIntegerField;
    sql_produtosPROD_TRATALOTE: TIntegerField;
    sql_produtosPROD_TRATANUMEROSERIE: TIntegerField;
    sql_produtosPROD_UNIDADE: TStringField;
    procedure FormCreate(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
  private
    { Private declarations }
    desconto_excedente, acrescimo_excedente: extended;
    arrDescontos, arrAcrescimos: array of extended;
  public
    PATH_CLIENTE: string;
    PATH_FECHAMENTO_CAIXA: string;
    PATH_FORNECEDOR: string;
    PATH_EMPRESA: string;
    PATH_COLABORADOR: string;
    PATH_OP_NFCE: string;
    PATH_COMPROVANTE: string;
    PATH_LIVRO_SAIDA_AN_UNICA_LINHA: string;
    PATH_COMISSAO_GERENTE: string;
    PATH_COMISSAO_VENDEDOR: string;
    PATH_COMISSAO_VENDA: string;
    PATH_COMISSAO_PRODUTO_VENDIDO: string;
    PATH_VENDA_LUCRATIVIDADE: string;
    PATH_CONVENIO_ANALITICO: string;
    PATH_CONVENIO_SINTETICO: STRING;
    PATH_COMANDA: string;
    PATH_TESTE_IMPRESSAO: string;
    PATH_COMANDA_NAO_AGRUPADA: STRING;
    function Empresa: Tfrm_relatorio;
    function EstoqueConferencia: Tfrm_relatorio;
    function LivroSaida(pdata_inicio, pdata_fim: tdate): Tfrm_relatorio; overload;
    function LivroSaida(path_arquivo: string; var Erro_Emissao: BOOLEAN; pdata_inicio: tdate = 0; pdata_fim: tdate = 0): Tfrm_relatorio; overload;
    function Comissoes(data_inicio, data_fim: tdatetime; rlCsTipo: smallint; OrderByMethod: TOrderByMethod; rlCsFTipo: smallint; cod_colaborador: string = '0')
      : Tfrm_relatorio;
    function Venda_Lucratividade(data_inicio, data_fim: tdate): Tfrm_relatorio;
    function venda_simples(data_inicio, data_fim: tdate; st_fechadas, st_canceladas: BOOLEAN; nome_cliente: string = ''): Tfrm_relatorio;
    function LivroEntrada(pdata_inicio, pdata_fim: tdate; reportKind: TReportKind = rkScreen): string;
    function MovimentacaoCaixa(pdata_inicio, pdata_fim: tdatetime; arrPagamento: string; bProdutos: BOOLEAN): Tfrm_relatorio;
    function ImprimeCaixa(IdCaixa : Integer): Tfrm_relatorio;
    function ImprimeComprovante(IdDetalhe : Integer): Tfrm_relatorio;
    function Convenio(cliente_id: integer; periodo_inicio, periodo_fim: tdate; produtos: BOOLEAN; conveniado_id: integer = 0): Tfrm_relatorio;
    function Comanda(cod_venda: string): Tfrm_relatorio;
    function teste_ponto_impressao(id_ponto: integer): Tfrm_relatorio;
  end;

var
  frm_relatorio: Tfrm_relatorio;

implementation

{$R *.dfm}

uses u_diretorios, u_funcoes, v_env, h_Dialogs, h_DB, v_Dir, vw_nfce_pendentes, h_Checks;

procedure Tfrm_relatorio.FormCreate(Sender: TObject);
begin

  //frx_xlsx.ExportPageBreaks := False;
  //frx_xlsx.Wysiwyg := False;

  SQL_AUX.close;
  SQL_AUX.parambyname('pusuario').Value := tenv.tuser.name;
  SQL_AUX.open;
  PATH_CLIENTE := u_diretorios.relatorios + 'cliente.fr3';
  PATH_FORNECEDOR := u_diretorios.relatorios + 'fornecedor.fr3';
  PATH_EMPRESA := u_diretorios.relatorios + 'empresa.fr3';
  PATH_COLABORADOR := u_diretorios.relatorios + 'colaborador.fr3';
  PATH_OP_NFCE := u_diretorios.relatorios + 'op_nfce.fr3';
  PATH_COMPROVANTE := u_diretorios.relatorios + 'comprovante_venda.fr3';
  PATH_FECHAMENTO_CAIXA := u_diretorios.relatorios + 'fechamento_caixa.fr3';
  PATH_LIVRO_SAIDA_AN_UNICA_LINHA := u_diretorios.relatorios + 'livro_saida_an_unica_linha.fr3';
  PATH_COMISSAO_GERENTE := u_diretorios.relatorios + 'comissao_gerente.fr3';
  PATH_COMISSAO_VENDEDOR := u_diretorios.relatorios + 'comissao_vendedor.fr3';
  PATH_COMISSAO_VENDA := u_diretorios.relatorios + 'comissao_venda.fr3';
  PATH_COMISSAO_PRODUTO_VENDIDO := u_diretorios.relatorios + 'comissao_produto.fr3';
  PATH_CONVENIO_ANALITICO := u_diretorios.relatorios + 'convenio_analitico.fr3';
  PATH_CONVENIO_SINTETICO := u_diretorios.relatorios + 'convenio_sintetico.fr3';
  PATH_COMANDA := u_diretorios.relatorios + 'comanda.fr3';
  PATH_COMANDA_NAO_AGRUPADA := u_diretorios.relatorios + 'comanda_nao_agrupada.fr3';
  PATH_TESTE_IMPRESSAO := u_diretorios.relatorios + 'rel_teste_impressao.fr3';
end;

function Tfrm_relatorio.Comanda(cod_venda: string): Tfrm_relatorio;

const
  _sql_grouped = ' select pi.nome,v.comanda,vi.codigo_produto,vi.descricao,vi.unidade,vi.quantidade from venda_item vi ' +
    ' join venda v on v.codigo_venda = vi.codigo_venda join produto p on p.codigo = vi.codigo_produto ' +
    ' join ponto_impressao pi on pi.id = p.ponto_impressao_id and pi.id = :pponto_impressao_id where vi.codigo_venda = :pcodigo_venda ';

var
  qry, qry_aux: TFDQuery;
  sql_not_grouped: string;
  i: integer;

begin
  qry := tdb.SimpleQuery('select id, impressora from ponto_impressao');
  if qry <> nil then
    with qry do
    begin

      first;

      while not eof do
      begin
        if tdb.SimpleQuery
          ('select vi.codigo_produto from venda_item vi join produto p on p.codigo = vi.codigo_produto and p.ponto_impressao_id = ? and vi.codigo_venda = ?',
          [qry.FieldByName('id').asInteger, cod_venda]) <> nil then
        begin
          if TParametros_Venda.Comanda.separar_produtos then
          begin
            qry_aux := tdb.SimpleQuery(_sql_grouped, [qry.FieldByName('id').asInteger, cod_venda]);
            with qry_aux do
            begin
              first;
              sql_not_grouped := '';
              while not eof do
              begin
                if qry_aux.FieldByName('unidade').AsString = 'KG' then
                begin
                  sql_not_grouped := sql_not_grouped +
                    Format(' SELECT pi.nome, v.comanda, vi.codigo_produto, vi.descricao, vi.unidade, vi.quantidade FROM venda_item vi' +
                    ' JOIN venda v ON v.codigo_venda = vi.codigo_venda JOIN produto p ON p.codigo = vi.codigo_produto ' +
                    'JOIN ponto_impressao PI ON pi.id = p.ponto_impressao_id AND pi.id = %d WHERE vi.codigo_venda = %s and vi.codigo_produto = %d union all',
                    [qry.FieldByName('id').asInteger, cod_venda, qry_aux.FieldByName('codigo_produto').asInteger]);
                end
                else
                begin
                  for i := 1 to qry_aux.FieldByName('quantidade').asInteger do
                  begin
                    sql_not_grouped := sql_not_grouped +
                      Format(' SELECT pi.nome, v.comanda, vi.codigo_produto, vi.descricao, vi.unidade, vi.quantidade FROM venda_item vi' +
                      ' JOIN venda v ON v.codigo_venda = vi.codigo_venda JOIN produto p ON p.codigo = vi.codigo_produto ' +
                      'JOIN ponto_impressao PI ON pi.id = p.ponto_impressao_id AND pi.id = %d WHERE vi.codigo_venda = %s and vi.codigo_produto = %d union all',
                      [qry.FieldByName('id').asInteger, cod_venda, qry_aux.FieldByName('codigo_produto').asInteger]);
                  end;
                end;
                Next;
              end;
            end;

            sql_not_grouped := Copy(sql_not_grouped, 0, (Length(sql_not_grouped) - Length(' union all')));
            sql_comanda.close;
            sql_comanda.active := False;

            sql_comanda.SQL.Clear;

            sql_comanda.SQL.Add(sql_not_grouped);

            sql_comanda.active := true;
            sql_comanda.open;

            rel_comanda.LoadFromFile(PATH_COMANDA_NAO_AGRUPADA);
          end
          else
          begin
            sql_comanda.close;
            sql_comanda.active := False;

            sql_comanda.SQL.Clear;

            sql_comanda.SQL.Add(_sql_grouped);
            sql_comanda.parambyname('pponto_impressao_id').Value := qry.FieldByName('id').asInteger;
            sql_comanda.parambyname('pcodigo_venda').Value := cod_venda;

            sql_comanda.active := true;
            sql_comanda.open;

            rel_comanda.LoadFromFile(PATH_COMANDA);
          end;

          rel_comanda.PrepareReport(true);
          rel_comanda.PrintOptions.Printer := TFunctions.validatePrinter(qry.FieldByName('impressora').AsString);
          rel_comanda.PrintOptions.ShowDialog := False;
          rel_comanda.print;

        end;
        Next;
      end;
    end;
  result := self;
end;

function Tfrm_relatorio.Comissoes(data_inicio, data_fim: tdatetime; rlCsTipo: smallint; OrderByMethod: TOrderByMethod; rlCsFTipo: smallint;
  cod_colaborador: string = '0'): Tfrm_relatorio;
const
  qry_comissao_venda_fixa = 'SELECT date_format(:pdata_inicio , "%d/%m/%Y") AS DATA_INICIO, date_format(:pdata_fim , "%d/%m/%Y") AS DATA_FIM,' +
    'V.DATA, C.CODIGO, C.NOME,C.CPF, "VD" AS TIPO, V.CODIGO_VENDA,V.NOME_CLIENTE, V.TOTAL_VENDA, c.comissao_venda as comissao_venda, ' +
    '(V.TOTAL_VENDA * (C.COMISSAO_VENDA/100)) AS TOTAL_COMISSAO FROM VENDA V JOIN COLABORADOR C ON C.CODIGO = V.COD_VENDEDOR ' +
    'WHERE V.`STATUS` = "FECHADA" AND C.TIPO_COLABORADOR in ("2", "6") AND V.DATA BETWEEN :pdata_inicio AND :pdata_fim ';

  qry_comissao_venda_faixa = 'SELECT date_format(:pdata_inicio , "%d/%m/%Y") AS DATA_INICIO, date_format(:pdata_fim , "%d/%m/%Y") AS DATA_FIM,' +
    'V.DATA, C.CODIGO, C.NOME,C.CPF, "VD" AS TIPO, V.CODIGO_VENDA,V.NOME_CLIENTE, V.TOTAL_VENDA, (ifnull((select cc.percentual_comissao from ' +
    ' colaborador_comissao cc where cc.ID_COLABORADOR = c.codigo and v.total_venda between cc.VALOR_MIN and cc.valor_max order by cc.percentual_comissao desc limit 1), 0))'
    + ' as comissao_venda, (V.TOTAL_VENDA * ((ifnull((select cc.percentual_comissao from colaborador_comissao cc where cc.ID_COLABORADOR = c.codigo and v.total_venda '
    + ' between cc.VALOR_MIN and cc.valor_max order by cc.percentual_comissao desc limit 1), 0))/100)) AS TOTAL_COMISSAO FROM VENDA V JOIN COLABORADOR C ON C.CODIGO = V.COD_VENDEDOR '
    + 'WHERE V.`STATUS` = "FECHADA" AND C.TIPO_COLABORADOR in ("2", "6") AND V.DATA BETWEEN :pdata_inicio AND :pdata_fim ';

  qry_comissao_vendedor_fixa = 'SELECT date_format(:pdata_inicio , "%d/%m/%Y") AS DATA_INICIO, date_format(:pdata_fim , "%d/%m/%Y") AS DATA_FIM,' +
    'V.DATA, C.CODIGO, C.NOME,C.CPF, "VD" AS TIPO, V.CODIGO_VENDA,V.NOME_CLIENTE, V.TOTAL_VENDA, c.comissao_venda as comissao_venda,' +
    '(V.TOTAL_VENDA * (c.comissao_venda/100)) AS TOTAL_COMISSAO, :ptot_extenso as TOTAL_EXTENSO FROM VENDA V JOIN COLABORADOR C ON C.CODIGO = V.COD_VENDEDOR ' +
    'WHERE V.`STATUS` = "FECHADA" AND C.CODIGO = :pcod_colab AND V.DATA BETWEEN :pdata_inicio AND :pdata_fim ORDER BY V.DATA ';

  qry_comissao_vendedor_faixa = 'SELECT date_format(:pdata_inicio , "%d/%m/%Y") AS DATA_INICIO, date_format(:pdata_fim , "%d/%m/%Y") AS DATA_FIM,' +
    'V.DATA, C.CODIGO, C.NOME,C.CPF, "VD" AS TIPO, V.CODIGO_VENDA,V.NOME_CLIENTE, V.TOTAL_VENDA, (ifnull((select cc.percentual_comissao from ' +
    'colaborador_comissao cc where cc.ID_COLABORADOR = c.codigo and v.total_venda between cc.VALOR_MIN and cc.valor_max order by cc.percentual_comissao desc limit 1)'
    + ', 0)) as comissao_venda, (V.TOTAL_VENDA * (ifnull((select cc.percentual_comissao from colaborador_comissao cc ' +
    'where cc.ID_COLABORADOR = c.codigo and v.total_venda between cc.VALOR_MIN and cc.valor_max order by cc.percentual_comissao desc limit 1), 0))/100) AS TOTAL_COMISSAO,'
    + ':ptot_extenso as TOTAL_EXTENSO FROM VENDA V JOIN COLABORADOR C ON C.CODIGO = V.COD_VENDEDOR ' +
    'WHERE V.`STATUS` = "FECHADA" AND C.CODIGO = :pcod_colab AND V.DATA BETWEEN :pdata_inicio AND :pdata_fim ORDER BY V.DATA ';

  qry_comissao_vendedor_sum_fixa = 'SELECT cast(sum(V.TOTAL_VENDA * (c.comissao_venda/100)) as DECIMAL(10,2)) as tot_comissao FROM VENDA V, COLABORADOR C' +
    ' WHERE C.CODIGO = V.COD_VENDEDOR AND v.`STATUS` = "FECHADA" AND C.CODIGO = :p1 AND V.DATA BETWEEN :p2 AND :p3';

  qry_comissao_vendedor_sum_faixa =
    'SELECT cast(sum(V.TOTAL_VENDA * ((ifnull((select cc.percentual_comissao from colaborador_comissao cc where cc.ID_COLABORADOR = c.codigo and v.total_venda '
    + ' between cc.VALOR_MIN and cc.valor_max order by cc.percentual_comissao desc limit 1), 0))/100)) as DECIMAL(10,2)) as tot_comissao FROM VENDA V, COLABORADOR C'
    + ' WHERE C.CODIGO = V.COD_VENDEDOR AND v.`STATUS` = "FECHADA" AND C.CODIGO = :p1 AND V.DATA BETWEEN :p2 AND :p3';

  qry_comissao_gerente_vendedor = 'SELECT date_format(:PDATA_INICIO,"%d/%m/%Y") AS DATA_INICIO,date_format(:PDATA_FIM,"%d/%m/%Y") AS DATA_FIM,GV.ID_GERENTE, ' +
    'GV.ID_VENDEDOR, CV.NOME,GV.COMISSAO,V.CODIGO_VENDA,V.DATA,"VD" AS TIPO,V.NOME_CLIENTE,V.TOTAL_VENDA,(V.TOTAL_VENDA * (GV.COMISSAO/100)) AS TOTAL_COMISSAO '
    + ' FROM GERENTE_VENDEDORES GV JOIN VENDA V ON V.COD_VENDEDOR = GV.ID_VENDEDOR JOIN COLABORADOR CV ON CV.CODIGO = GV.ID_VENDEDOR WHERE GV.ID_GERENTE = :PCOD_GERENTE '
    + ' AND v.`STATUS` = "FECHADA" AND V.DATA BETWEEN :pdata_inicio AND :pdata_fim ';

  qry_comissao_gerente_vendedor_sum = 'SELECT cast(sum((V.TOTAL_VENDA * (GV.COMISSAO/100))) as decimal(10,4)) AS TOTAL_COMISSAO FROM GERENTE_VENDEDORES GV ' +
    'JOIN VENDA V ON V.COD_VENDEDOR = GV.ID_VENDEDOR WHERE GV.ID_GERENTE = :p1 AND v.`STATUS` = "FECHADA" AND V.DATA BETWEEN :p2 AND :p3';
begin
  try
    try
      if cod_colaborador = '0' then // todos os vendedores
        case rlCsTipo of
          rlcsvenda: // todos os vendedores por venda
            begin
              with SQL_COMISSAO_VENDA do
              begin
                close;
                SQL.Clear;
                case rlCsFTipo of
                  rlCsFaixa:
                    SQL.Add(qry_comissao_venda_faixa + TFunctions.ifthen(OrderByMethod, [TOrderByMethod.obmData, TOrderByMethod.obmVendedor],
                      ['ORDER BY V.DATA, C.CODIGO', ' ORDER BY C.CODIGO, V.DATA']));
                  rlCsFixa:
                    SQL.Add(qry_comissao_venda_fixa + TFunctions.ifthen(OrderByMethod, [TOrderByMethod.obmData, TOrderByMethod.obmVendedor],
                      ['ORDER BY V.DATA, C.CODIGO', ' ORDER BY C.CODIGO, V.DATA']));
                end;
                parambyname('pdata_inicio').asDate := data_inicio;
                parambyname('pdata_fim').asDate := data_fim;
                open;
                with REL_COMISSAO do
                begin
                  if RecordCount > 0 then
                  begin
                    if LoadFromFile(PATH_COMISSAO_VENDA) then
                    begin
                      PrepareReport(true);
                      case OrderByMethod of
                        obmData:
                          tfrxgroupheader(REL_COMISSAO.Report.FindObject('gpheader')).Condition := 'DS_COMISSAO_VENDA."DATA"';
                        obmVendedor:
                          tfrxgroupheader(REL_COMISSAO.Report.FindObject('gpheader')).Condition := 'DS_COMISSAO_VENDA."CODIGO"';
                      end;
                      showreport(true);
                    end
                    else
                      wnalerta('Relatório de Comissão', slinebreak + 'Layout "' + PATH_COMISSAO_VENDA + '" não encontrado!');
                  end
                  else
                    wnalerta('Relatório de Comissão', slinebreak + 'Não existe movimento para os dados selecionados!');
                end;
              end;
            end;
          rlcsproduto: // todos os vendedores por produto
            exit;
        end
      else // vendedor especifico
        case strtoint(SimpleQuery('select tipo_colaborador from colaborador where codigo ="' + cod_colaborador + '"').Fields[0].AsString) of
          // vendedor
          2:
            begin
              case rlCsTipo of
                rlcsvenda: // vendedor por venda
                  begin
                    with SQL_COMISSAO_VENDEDOR do
                    begin
                      close;
                      SQL.Clear;

                      case rlCsFTipo of
                        rlCsFaixa:
                          SQL.Add(qry_comissao_vendedor_faixa);
                        rlCsFixa:
                          SQL.Add(qry_comissao_vendedor_fixa);
                      end;
                      parambyname('pdata_inicio').asDate := data_inicio;
                      parambyname('pdata_fim').asDate := data_fim;
                      parambyname('pcod_colab').AsString := cod_colaborador;
                      parambyname('ptot_extenso').AsString :=
                        extenso(formatarmoeda(SimpleQuery(TFunctions.ifthen(rlCsFTipo, [rlCsFaixa, rlCsFixa], [qry_comissao_vendedor_sum_faixa,
                        qry_comissao_vendedor_sum_fixa]), [cod_colaborador, data_inicio, data_fim]).Fields[0].asExtended, vardouble));
                      open;
                      with REL_COMISSAO do
                      begin
                        if RecordCount > 0 then
                        begin
                          if LoadFromFile(PATH_COMISSAO_VENDEDOR) then
                            showreport(true)
                          else
                            wnalerta('Relatório de Comissão', slinebreak + 'Layout "' + PATH_COMISSAO_VENDEDOR + '" não encontrado!');
                        end
                        else
                          wnalerta('Relatório de Comissão', slinebreak + 'Não existe movimento para os dados selecionados!');
                      end;
                    end;
                  end;
                rlcsproduto: // Vendedor por Produto
                  ManWorking;
              end;
            end;
          6: // gerente
            begin
              case rlCsTipo of
                rlcsvenda: // Gerente por Venda
                  begin

                    with SQL_COMISSAO_VENDEDOR do
                    begin
                      close;
                      SQL.Clear;

                      case rlCsFTipo of
                        rlCsFaixa:
                          SQL.Add(qry_comissao_vendedor_faixa);
                        rlCsFixa:
                          SQL.Add(qry_comissao_vendedor_fixa);
                      end;
                      parambyname('pdata_inicio').asDate := data_inicio;
                      parambyname('pdata_fim').asDate := data_fim;
                      parambyname('pcod_colab').AsString := cod_colaborador;
                      parambyname('ptot_extenso').AsString :=
                        extenso((formatarmoeda(SimpleQuery(qry_comissao_gerente_vendedor_sum, [cod_colaborador, data_inicio, data_fim]).Fields[0].asExtended,
                        vardouble)) + (formatarmoeda(SimpleQuery(TFunctions.ifthen(rlCsFTipo, [rlCsFaixa, rlCsFixa], [qry_comissao_vendedor_sum_faixa,
                        qry_comissao_vendedor_sum_fixa]), [cod_colaborador, data_inicio, data_fim]).Fields[0].asExtended, vardouble)));
                      open;
                    end;

                    with SQL_COMISSAO_GERENTE_VENDEDOR do
                    begin
                      close;
                      SQL.Clear;
                      SQL.Add(qry_comissao_gerente_vendedor + TFunctions.ifthen(OrderByMethod, [TOrderByMethod.obmData, TOrderByMethod.obmVendedor],
                        [' ORDER BY V.DATA, GV.ID_VENDEDOR', ' ORDER BY GV.ID_VENDEDOR, V.DATA']));
                      parambyname('pdata_inicio').asDate := data_inicio;
                      parambyname('pdata_fim').asDate := data_fim;
                      parambyname('pcod_gerente').AsString := cod_colaborador;
                      open;
                      with REL_COMISSAO do
                      begin

                        if LoadFromFile(PATH_COMISSAO_GERENTE) then
                        begin
                          PrepareReport(true);
                          case OrderByMethod of
                            obmData:
                              tfrxgroupheader(REL_COMISSAO.Report.FindObject('gpheader')).Condition := 'DS_COMISSAO_GERENTE_VENDEDOR."DATA"';
                            obmVendedor:
                              tfrxgroupheader(REL_COMISSAO.Report.FindObject('gpheader')).Condition := 'DS_COMISSAO_GERENTE_VENDEDOR."ID_VENDEDOR"';
                          end;
                          showreport(true);
                        end
                        else
                          wnalerta('Relatório de Comissão', slinebreak + 'Layout "' + PATH_COMISSAO_GERENTE + '" não encontrado!');
                      end;
                    end;

                  end;
                rlcsproduto: // vendedor por produto
                  ManWorking;
              end;
            end;
        end;

    except
      on e: exception do
        wnerro('Relatório de Comissão', e.message + slinebreak + 'Erro ao gerar relatório de comissões!');
    end;
  finally
    result := self;
  end;
end;

function Tfrm_relatorio.Convenio(cliente_id: integer; periodo_inicio, periodo_fim: tdate; produtos: BOOLEAN; conveniado_id: integer = 0): Tfrm_relatorio;
const

  sql_analitico = ' SELECT date_format(:pperiodo_inicio , "%d/%m/%Y") AS DATA_INICIO, date_format(:pperiodo_fim , "%d/%m/%Y") AS DATA_FIM, ' +
    '	c.razao_social, c.fantasia, c.cnpj, cc.periodo_inicio, cc.periodo_fim, cc.id, cc.nome, cc.cpf, cc.matricula, cc.credito, cc.status, ' +
    '	v.`DATA`, v.total_venda, v.codigo_venda, vi.CODIGO_ITEM_VENDA, vi.CODIGO_PRODUTO, vi.DESCRICAO, vi.QUANTIDADE, ' +
    ' (((((v.total_venda*vi.preco_total)/v.valor_venda)*vp.valor_debitado)/v.total_venda)/vi.quantidade) as preco, ' +
    '	((((v.total_venda*vi.preco_total)/v.valor_venda)*vp.valor_debitado)/v.total_venda) as preco_total ' +
    ' FROM cliente_conveniado cc join cliente c on c.CODIGO = cc.cliente_id join venda v on v.conveniado_id = cc.id and v.status = "FECHADA"' +
    ' join venda_item vi on vi.CODIGO_VENDA = v.CODIGO_VENDA join venda_pagamento vp on vp.codigo_venda = v.codigo_venda and vp.cod_tipo_pagamento = "101" ' +
    ' where cc.cliente_id = :pcliente_id and v.data between :pperiodo_inicio and :pperiodo_fim ';

  sql_analitico_order = ' order by cc.id, vi.codigo, v.data ';

  where_conv = ' and cc.id = :pconveniado_id ';

  sql_prods = 'SELECT vi.CODIGO_PRODUTO, vi.DESCRICAO, sum(vi.QUANTIDADE) as quantidade, ' +
    '	sum(((((v.total_venda*vi.preco_total)/v.valor_venda)*vp.valor_debitado)/v.total_venda))/sum(vi.quantidade) as preco, ' +
    '	sum((((v.total_venda*vi.preco_total)/v.valor_venda)*vp.valor_debitado)/v.total_venda) as preco_total ' +
    ' FROM cliente_conveniado cc join venda v on v.conveniado_id = cc.id join venda_item vi on vi.CODIGO_VENDA = v.CODIGO_VENDA and v.status = "FECHADA"' +
    ' join venda_pagamento vp on vp.codigo_venda = v.codigo_venda and vp.cod_tipo_pagamento = "101" where cc.cliente_id = :pcliente_id and v.data between :pperiodo_inicio and :pperiodo_fim ';

  sql_group_prods = ' group by vi.codigo_produto ';

  sql_sintetico = ' SELECT date_format(:pperiodo_inicio , "%d/%m/%Y") AS DATA_INICIO, date_format(:pperiodo_fim , "%d/%m/%Y") AS DATA_FIM, ' +
    '	c.razao_social, c.fantasia, c.cnpj, cc.periodo_inicio, cc.periodo_fim, cc.id, cc.nome, cc.cpf, cc.matricula, cc.credito, sum(vp.valor_debitado) as total '
    + ' FROM cliente_conveniado cc join cliente c on c.CODIGO = cc.cliente_id join venda v on v.conveniado_id = cc.id and v.status = "FECHADA"' +
    ' join venda_pagamento vp on vp.codigo_venda = v.codigo_venda and vp.cod_tipo_pagamento = "101" ' +
    ' where cc.cliente_id = :pcliente_id and v.data between :pperiodo_inicio and :pperiodo_fim ';

  sql_group_sintetico = ' group by cc.id order by cc.nome ';
var
  _sql: string;
begin

  if produtos then
  begin

    with sql_vd_conv_analitico do
    begin

      close;
      SQL.Clear;

      if conveniado_id = 0 then
        SQL.Add(sql_analitico + sql_analitico_order)
      else
        SQL.Add(sql_analitico + where_conv + sql_analitico_order);

      parambyname('pperiodo_inicio').asDate := periodo_inicio;
      parambyname('pperiodo_fim').asDate := periodo_fim;
      parambyname('pcliente_id').asInteger := cliente_id;
      if conveniado_id <> 0 then
        parambyname('pconveniado_id').asInteger := conveniado_id;
      open;

      fetchall;
      if RecordCount = 0 then
        raise exception.Create('Não há dados para os parâmetros selecionados');

    end;

    with sql_vd_conv_analitico_prods do
    begin

      close;
      SQL.Clear;

      if conveniado_id = 0 then
        SQL.Add(sql_prods + sql_group_prods)
      else
        SQL.Add(sql_prods + where_conv + sql_group_prods);

      parambyname('pperiodo_inicio').asDate := periodo_inicio;
      parambyname('pperiodo_fim').asDate := periodo_fim;
      parambyname('pcliente_id').asInteger := cliente_id;
      if conveniado_id <> 0 then
        parambyname('pconveniado_id').asInteger := conveniado_id;
      open;
    end;

    rel_conv_analitico.LoadFromFile(PATH_CONVENIO_ANALITICO, true);
    rel_conv_analitico.showreport(true);
  end
  else
  begin
    with sql_vd_conv_sintetico do
    begin

      close;
      SQL.Clear;

      if conveniado_id = 0 then
        SQL.Add(sql_sintetico + sql_group_sintetico)
      else
        SQL.Add(sql_sintetico + where_conv + sql_group_sintetico);

      parambyname('pperiodo_inicio').asDate := periodo_inicio;
      parambyname('pperiodo_fim').asDate := periodo_fim;
      parambyname('pcliente_id').asInteger := cliente_id;
      if conveniado_id <> 0 then
        parambyname('pconveniado_id').asInteger := conveniado_id;
      open;

      fetchall;
      if RecordCount = 0 then
        raise exception.Create('Não há dados para os parâmetros selecionados');
    end;

    rel_conv_sintetico.LoadFromFile(PATH_CONVENIO_SINTETICO, true);
    rel_conv_sintetico.showreport(true);
  end;

  result := self;

end;

function Tfrm_relatorio.Empresa: Tfrm_relatorio;
begin
  try
    try
      SQL_EMPRESA.close;
      SQL_EMPRESA.open;
      FRX_EMPRESA.LoadFromFile(PATH_EMPRESA, true);
      FRX_EMPRESA.showreport(true);
    except
      on e: exception do
        Tdialogs.wnerro('Empresa', e.message + slinebreak + 'Erro ao gerar relatório da Empresa.');

    end;

  finally
    result := self;
  end;
end;

function Tfrm_relatorio.EstoqueConferencia: Tfrm_relatorio;
begin

end;

procedure Tfrm_relatorio.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  Action := caFree;
  self := Nil;
end;

function Tfrm_relatorio.LivroSaida(pdata_inicio, pdata_fim: tdate): Tfrm_relatorio;
var
  boo: BOOLEAN;
begin
  result := LivroSaida('', boo, pdata_inicio, pdata_fim);
end;

function Tfrm_relatorio.LivroEntrada(pdata_inicio, pdata_fim: tdate; reportKind: TReportKind): string;
begin
  result := '';
  with sql_livro_entrada do
  begin
    close;
    parambyname('pdata_inicio').Value := pdata_inicio;
    parambyname('pdata_fim').Value := pdata_fim;
    open;
  end;
  with sql_an_entrada do
  begin
    close;
    parambyname('pdata_inicio').Value := pdata_inicio;
    parambyname('pdata_fim').Value := pdata_fim;
    open;
  end;

  fr_livro_entrada.LoadFromFile(tdir.Relatorio.livro_entrada);

  TfrxMemoView(fr_livro_entrada.FindObject('mmDataInicio')).Text := FormatDateTime('dd/mm/YYYY', pdata_inicio);
  TfrxMemoView(fr_livro_entrada.FindObject('mmDataFim')).Text := FormatDateTime('dd/mm/YYYY', pdata_fim);

  fr_livro_entrada.PrepareReport(true);

  case reportKind of
    rkScreen:
      if sql_livro_entrada.RecordCount = 0 then
        raise exception.Create('Sem movimentação para os parêmetros selecionados no livro de entrada!')
      else
      begin
        fr_livro_entrada.showreport(true);
      end;
    rkPDF:
      begin
        //frx_PDF.ShowDialog := False;
        //frx_PDF.FileName := tdir.Temp.rel_livro_saida_pdf;
        //frx_PDF.ShowProgress := False;
        //frx_PDF.OverwritePrompt := False;
        //fr_livro_entrada.export(frx_PDF);
        //result := frx_PDF.FileName;
      end;
  end;

end;

function Tfrm_relatorio.LivroSaida(path_arquivo: string; var Erro_Emissao: BOOLEAN; pdata_inicio: tdate = 0; pdata_fim: tdate = 0): Tfrm_relatorio;
var
  qry_itens, qry_nfces: TFDQuery;
  mes_anterior: tdate;
  p_inicio, p_fim, m_cod_venda, data_ref: string;
  desconto, acrescimo, desc_base, acres_base: extended;
  qtde_itens, last_day: integer;
  rat_diff_desc, rat_diff_asc: BOOLEAN;
  i: integer;
begin
  try
    try
      desconto_excedente := 0;
      acrescimo_excedente := 0;

      if pdata_inicio = 0 then
      begin
        mes_anterior := IncMonth(Date, -1);
        p_inicio := FormatDateTime('yyyy-mm-dd', encodedate(YearOf(mes_anterior), monthof(mes_anterior), 01));
        data_ref := FormatDateTime('mm/yyyy', encodedate(YearOf(mes_anterior), monthof(mes_anterior), 01));
      end
      else
      begin
        p_inicio := FormatDateTime('yyyy-mm-dd', pdata_inicio);
        data_ref := FormatDateTime('mm/yyyy', pdata_inicio);
      end;

      if pdata_fim = 0 then
      begin
        last_day := dayof(endofamonth(YearOf(mes_anterior), monthof(mes_anterior)));
        p_fim := FormatDateTime('yyyy-mm-dd', encodedate(YearOf(mes_anterior), monthof(mes_anterior), last_day));
      end
      else
        p_fim := FormatDateTime('yyyy-mm-dd', pdata_fim);

      qry_nfces := SimpleQuery
        ('SELECT CODIGO, CODIGO_VENDA, ACRESCIMOS_NFCE, DESCONTOS_NFCE FROM NFCE WHERE STATUS_NFCE IS NOT NULL AND STATUS_NFCE <> "PENDENTE" AND DATA_EMISSAO BETWEEN "'
        + p_inicio + '" and "' + p_fim + '"');
      if qry_nfces <> nil then
      begin
        qry_nfces.fetchall;
        qry_nfces.first;
        while NOT qry_nfces.eof do
        begin
          i := qry_nfces.FieldByName('CODIGO').asInteger;
          if (not(comparevalue(qry_nfces.FieldByName('DESCONTOS_NFCE').asExtended, 0) = 0)) or
            (not(comparevalue(qry_nfces.FieldByName('ACRESCIMOS_NFCE').asExtended, 0) = 0)) then
          begin
            m_cod_venda := qry_nfces.FieldByName('CODIGO_VENDA').Text;
            qtde_itens := SimpleQuery('SELECT count(*) as qtde_itens FROM VENDA_ITEM WHERE CODIGO_VENDA = "' + m_cod_venda + '"').Fields[0].asInteger;
            qry_itens := SimpleQuery('SELECT * FROM VENDA_ITEM WHERE CODIGO_VENDA = "' + m_cod_venda + '"');
            if qry_itens <> nil then
            begin
              with qry_itens do
              begin
                fetchall;
                first;
                SetLength(arrAcrescimos, qtde_itens);
                desc_base := qry_nfces.FieldByName('DESCONTOS_NFCE').asExtended;
                acres_base := qry_nfces.FieldByName('ACRESCIMOS_NFCE').asExtended;
                rat_diff_desc := true;
                rat_diff_asc := true;
                while not eof do
                begin
                  desconto := calculardescontos(m_cod_venda, FieldByName('CODIGO_ITEM_VENDA').AsString, desc_base, rat_diff_desc);
                  acrescimo := calcularacrescimos(m_cod_venda, FieldByName('CODIGO_ITEM_VENDA').AsString, acres_base, rat_diff_asc);
                  desconto := desconto + FieldByName('DESCONTO').asExtended;
                  acrescimo := acrescimo + FieldByName('ACRESCIMO').asExtended;
                  edit;
                  FieldByName('RATEIO_DESCONTO').asExtended := desconto;
                  FieldByName('RATEIO_ACRESCIMO').asExtended := acrescimo;
                  Next;
                end;
              end;
            end;
          end;
          qry_nfces.Next;
        end;
      end;

      ExecQuery('UPDATE PRODUTO SET CSOSN="",ALIQ_ICMS=(SELECT ps.ALIQ_IMCS FROM PARAMETROS_SISTEMA ps), PIS_CST="01", COFINS_CST="01" WHERE icms_cst="00" ');
      ExecQuery('UPDATE PRODUTO SET CSOSN="103",ALIQ_ICMS = 0,PIS_CST="99", COFINS_CST="99" WHERE icms_cst="40" ');
      ExecQuery('UPDATE PRODUTO SET CSOSN="102",ALIQ_ICMS = 0,PIS_CST="99", COFINS_CST="99" WHERE icms_cst="41" ');
      ExecQuery('UPDATE PRODUTO SET CSOSN="500",ALIQ_ICMS = 0,PIS_CST="99", COFINS_CST="99" WHERE icms_cst="60" ');

      SQL_LS_AUTORIZADA.close;
      SQL_LS_AUTORIZADA.parambyname('pdata_emissao_1').Value := p_inicio;
      SQL_LS_AUTORIZADA.parambyname('pdata_emissao_2').Value := p_fim;
      SQL_LS_AUTORIZADA.open;

      SQL_AN.close;
      SQL_AN.parambyname('pdata_emissao_1').Value := p_inicio;
      SQL_AN.parambyname('pdata_emissao_2').Value := p_fim;
      SQL_AN.open;

      SQL_INUT_CANC.close;
      SQL_INUT_CANC.parambyname('pdata_emissao_1').Value := p_inicio;
      SQL_INUT_CANC.parambyname('pdata_emissao_2').Value := p_fim;
      SQL_INUT_CANC.open;

      SQL_COUNT_STATUS.close;
      SQL_COUNT_STATUS.parambyname('pdata_emissao_1').Value := p_inicio;
      SQL_COUNT_STATUS.parambyname('pdata_emissao_2').Value := p_fim;
      SQL_COUNT_STATUS.open;

      FR_LIVRO_SAIDA.LoadFromFile(PATH_LIVRO_SAIDA_AN_UNICA_LINHA, true);
      TfrxMemoView(FR_LIVRO_SAIDA.FindObject('mmDataRef')).Text := data_ref;
      FR_LIVRO_SAIDA.PrepareReport(true);
      if path_arquivo = '' then
        FR_LIVRO_SAIDA.showreport(true)
      else
      begin
        //frx_PDF.FileName := path_arquivo;
        //frx_PDF.ShowDialog := False;

        //frx_PDF.ShowProgress := False;
        //frx_PDF.OverwritePrompt := False;

        //FR_LIVRO_SAIDA.export(frx_PDF);

        Erro_Emissao := true;
      end;
    except
      on e: exception do
      begin
        wnerro('Livro de Saída', e.message + slinebreak + 'Erro ao gerar Livro de Saída!');
        self.close;
        Erro_Emissao := False;
      end;
    end;
  finally
    result := self;
  end;
end;

function Tfrm_relatorio.MovimentacaoCaixa(pdata_inicio, pdata_fim: tdatetime; arrPagamento: string; bProdutos: BOOLEAN): Tfrm_relatorio;
var
  _sql_cx_pagamentos, _sql_cx_produtos, _sql_cx_docs, _sql_cx_periodo, idata_inicio, idata_fim: string;

  procedure query_docs;
  begin
    with sql_mov_caixa_docs do
    begin
      close;
      SQL.Clear;
      SQL.Add(_sql_cx_docs);
      parambyname('pdata_inicio').Value := idata_inicio;
      parambyname('pdata_fim').Value := idata_fim;
      open;
    end;
  end;

begin

  idata_inicio := FormatDateTime('yyyy-mm-dd', pdata_inicio);
  idata_fim := FormatDateTime('yyyy-mm-dd', pdata_fim);

  result := self;
  _sql_cx_pagamentos :=
    'SELECT tp.TIPO_PAGAMENTO, IFNULL((SELECT SUM(vp.VALOR_DEBITADO) AS VD FROM venda_pagamento vp JOIN venda v ON v.CODIGO_VENDA = vp.CODIGO_VENDA ' +
    ' WHERE vp.COD_TIPO_PAGAMENTO = tp.COD_TIPO_PAGAMENTO AND v.status = "FECHADA" AND date(v.data) between :pdata_inicio and :pdata_fim GROUP BY vp.COD_TIPO_PAGAMENTO '
    + ' ),0) AS TOTAL FROM TIPO_PAGAMENTO tp where tp.cod_tipo_pagamento in ' + arrPagamento;

  _sql_cx_produtos :=
    'SELECT vi.CODIGO_PRODUTO, vi.DESCRICAO, vi.UNIDADE, sum(vi.quantidade) as QTDE, avg(vi.PRECO) as PRECO, sum(vi.PRECO_TOTAL) as PRECO_TOTAL ' +
    ' FROM venda_item vi join venda v on v.codigo_venda = vi.codigo_venda where date(v.data) between :pdata_inicio and :pdata_fim and v.status = "FECHADA" ' +
    ' group by vi.CODIGO_PRODUTO';

  _sql_cx_docs :=
  // Vendas Efetuadas
    ' select (select count(*) from venda v join venda_pagamento vp on vp.codigo_venda = v.codigo_venda where v.`STATUS` = "FECHADA" and date(v.data) between :pdata_inicio '
    + ' and :pdata_fim and v.cod_nfce <> "0" and vp.cod_tipo_pagamento in ' + arrPagamento + ' ) as QTDE_NFCE ,' +
    '(select sum(vp.VALOR_DEBITADO) from venda v join venda_pagamento vp on vp.codigo_venda = v.codigo_venda where v.`STATUS` = "FECHADA" and date(v.data) between :pdata_inicio '
    + ' and :pdata_fim and v.cod_nfce <> "0" and vp.cod_tipo_pagamento in ' + arrPagamento + ' ) as VALOR_NFCE ,' +
    '(select count(*) from venda v join venda_pagamento vp on vp.codigo_venda = v.codigo_venda where v.`STATUS` = "FECHADA" and date(v.data) between :pdata_inicio and :pdata_fim '
    + ' and (v.cod_nfce = "0" or v.cod_nfce is null or v.cod_nfce ="") and vp.cod_tipo_pagamento in ' + arrPagamento + ' ) as QTDE_COMPROVANTE , ' +
    '(select sum(vp.VALOR_DEBITADO) from venda v join venda_pagamento vp on vp.codigo_venda = v.codigo_venda where v.`STATUS` = "FECHADA" and date(v.data) between :pdata_inicio '
    + ' and :pdata_fim and (v.cod_nfce = "0" or v.cod_nfce is null or v.cod_nfce ="") and vp.cod_tipo_pagamento in ' + arrPagamento +
    ' ) as VALOR_COMPROVANTE, ' +

  // Vendas Canceladas
    ' (select count(*) from venda v join venda_pagamento vp on vp.codigo_venda = v.codigo_venda where v.`STATUS` = "CANCELADA" and date(v.data) between :pdata_inicio '
    + ' and :pdata_fim and v.cod_nfce <> "0" and vp.cod_tipo_pagamento in ' + arrPagamento + ' ) as QTDE_NFCE_C ,' +
    '(select sum((select sum(vi.PRECO_TOTAL) from venda_item vi where vi.codigo_venda = vp.CODIGO_VENDA)) from venda v join venda_pagamento vp on vp.codigo_venda = v.codigo_venda where v.`STATUS` = "CANCELADA" and date(v.data) between :pdata_inicio '
    + ' and :pdata_fim and v.cod_nfce <> "0" and vp.cod_tipo_pagamento in ' + arrPagamento + ' ) as VALOR_NFCE_C  ,' +
    '(select count(*) from venda v join venda_pagamento vp on vp.codigo_venda = v.codigo_venda where v.`STATUS` = "CANCELADA" and date(v.data) between :pdata_inicio and :pdata_fim '
    + ' and (v.cod_nfce = "0" or v.cod_nfce is null or v.cod_nfce ="") and vp.cod_tipo_pagamento in ' + arrPagamento + ' ) as QTDE_COMPROVANTE_C  , ' +
    '(select sum((select sum(vi.PRECO_TOTAL) from venda_item vi where vi.codigo_venda = vp.CODIGO_VENDA)) from venda v join venda_pagamento vp on vp.codigo_venda = v.codigo_venda where v.`STATUS` = "CANCELADA" and date(v.data) between :pdata_inicio '
    + ' and :pdata_fim and (v.cod_nfce = "0" or v.cod_nfce is null or v.cod_nfce ="") and vp.cod_tipo_pagamento in ' + arrPagamento +
    ' ) as VALOR_COMPROVANTE_C,  ' +

  // Vendas pendentes
    ' (select count(*) from nfce n join venda_pagamento vp on vp.codigo_venda = n.codigo_venda where n.`STATUS_NFCE` = "PENDENTE" and date(n.data_transmissao) between :pdata_inicio '
    + ' and :pdata_fim and vp.cod_tipo_pagamento in ' + arrPagamento + ' ) as QTDE_NFCE_P ,' +
    ' (select sum((select sum(vi.PRECO_TOTAL) from venda_item vi where vi.codigo_venda = vp.CODIGO_VENDA)) from nfce n join venda_pagamento vp on vp.codigo_venda = n.codigo_venda '
    + ' where n.STATUS_NFCE = "PENDENTE" and date(n.data_transmissao) between :pdata_inicio ' + ' and :pdata_fim and vp.cod_tipo_pagamento in ' + arrPagamento +
    ' ) as VALOR_NFCE_P';

  _sql_cx_periodo :=
    ' SELECT concat(date_format(v.data,"%d/%m/%Y")," - ",v.hora) as abertura_inicio, date_format(current_timestamp,"%d/%m/%Y - %H:%i:%s") as abertura_fim  FROM venda v JOIN venda_pagamento vp '
    + ' on vp.codigo_venda = v.codigo_venda WHERE v.status = "FECHADA" AND  date(v.data) between :pdata_inicio and :pdata_fim and vp.cod_tipo_pagamento in ' +
    arrPagamento + ' limit 1 ';

  with sql_mov_caixa_pagamentos do
  begin
    close;
    SQL.Clear;
    SQL.Add(_sql_cx_pagamentos);
    parambyname('pdata_inicio').Value := idata_inicio;
    parambyname('pdata_fim').Value := idata_fim;
    open;
  end;

  with sql_mov_caixa_produtos do
  begin
    close;
    SQL.Clear;
    SQL.Add(_sql_cx_produtos);
    if bProdutos then
    begin

      parambyname('pdata_inicio').Value := idata_inicio;
      parambyname('pdata_fim').Value := idata_fim;

    end
    else
    begin

      parambyname('pdata_inicio').Value := '1111-11-11';
      parambyname('pdata_fim').Value := '1111-11-11';

    end;
    open;
  end;

  query_docs;

  if sql_mov_caixa_docsQTDE_NFCE_P.asInteger <> 0 then
  begin
    if not TFunctions.CheckOpen(frm_nfce_pendentes) then
    begin
      frm_nfce_pendentes := tfrm_nfce_pendentes.Create(pdata_inicio, pdata_fim);
      frm_nfce_pendentes.ShowModal;
      query_docs;
    end;
  end;

  with sql_mov_caixa_periodo do
  begin
    close;
    SQL.Clear;
    SQL.Add(_sql_cx_periodo);
    parambyname('pdata_inicio').Value := idata_inicio;
    parambyname('pdata_fim').Value := idata_fim;
    open;
  end;

  fr_movimentacao_caixa.LoadFromFile(tdir.Relatorio.cx_movimentacao);
  fr_movimentacao_caixa.PrepareReport;
  fr_movimentacao_caixa.ShowPreparedReport;

end;

function Tfrm_relatorio.ImprimeCaixa(IdCaixa : Integer): Tfrm_relatorio;
var _sql_cx_pagamentos, _sql_cx_produtos, _sql_cx_docs, _sql_cx_periodo, idata_inicio, idata_fim: string;

  procedure query_docs;
  begin
    ///Clipboard.AsText := _sql_cx_docs;
    with qFechaCaixa do
    begin
      close;
      SQL.Clear;
      SQL.Add(_sql_cx_docs);
      parambyname('pidCaixa').Value := IdCaixa;
      open;
    end;
  end;

begin
  result := self;
  _sql_cx_pagamentos :=
    'SELECT tp.TIPO_PAGAMENTO, IFNULL((SELECT SUM(vp.VALOR_DEBITADO) AS VD FROM venda_pagamento vp JOIN venda v ON v.CODIGO_VENDA = vp.CODIGO_VENDA ' +
    ' WHERE vp.COD_TIPO_PAGAMENTO = tp.COD_TIPO_PAGAMENTO AND v.status = "FECHADA" AND v.idCaixa = :pidCaixa GROUP BY vp.COD_TIPO_PAGAMENTO '
    + ' ),0) AS TOTAL FROM TIPO_PAGAMENTO tp ';

  _sql_cx_docs :=
  // Vendas Efetuadas
    ' select '+
    '    (SELECT c.Id from caixa c where c.id = :pidCaixa ) as id, '+
    '    (SELECT c.PDV from caixa c where c.id = :pidCaixa ) as PDV, '+
    '    (SELECT c.QuebraDinheiro from caixa c where c.id = :pidCaixa) AS QuebraDinheiro, '+
    '    (SELECT c.QuebraCartaoDebito from caixa c where c.id = :pidCaixa) AS QuebraCartaoDebito, '+
    '    (SELECT c.QuebraCartaoCredito from caixa c where c.id = :pidCaixa) AS QuebraCartaoCredito, '+
    '    (SELECT c.QuebraConvenio from caixa c where c.id = :pidCaixa) AS QuebraConvenio, '+
    '    (SELECT c.TotalDiferenca from caixa c where c.id = :pidCaixa) AS TotalDiferenca, '+
    '    (SELECT u.USUARIO from caixa c JOIN usuario u ON u.CODIGO = c.CodigoUsuario where c.id = :pidCaixa ) as Usuario, '+
    '    (SELECT c.Data from caixa c where c.id = :pidCaixa ) as Abertura, '+
    '    (SELECT c.Fechamento from caixa c where c.id = :pidCaixa ) as Fechamento, '+
    '    (SELECT Coalesce(SUM(d.Total),0) from caixadetalhe d where d.idCaixa = :pidCaixa AND d.Operacao IN ('+QuotedStr('03')+','+QuotedStr('01')+')) as Suprimentos, '+
    '    (SELECT Coalesce(SUM(d.Total),0) from caixadetalhe d where d.idCaixa = :pidCaixa AND d.Operacao = '+QuotedStr('02')+') as Sangria, '+
    '    (SELECT c.TotalCaixa from caixa c where c.id = :pidCaixa ) as ToTalCaixa, '+

    '    (select count(*) from venda v join venda_pagamento vp on vp.codigo_venda = v.codigo_venda where v.`STATUS` = "FECHADA" and v.idCaixa = :pidCaixa ' + ' and v.cod_nfce <> "0" ) as QTDE_NFCE ,' +
    '    (select sum(vp.VALOR_DEBITADO) from venda v join venda_pagamento vp on vp.codigo_venda = v.codigo_venda where v.`STATUS` = "FECHADA" and v.idCaixa = :pidCaixa ' + ' and v.cod_nfce <> "0" ) as VALOR_NFCE ,' +
    '    (select count(*) from venda v join venda_pagamento vp on vp.codigo_venda = v.codigo_venda where v.`STATUS` = "FECHADA" and v.idCaixa = :pidCaixa ' + ' and (v.cod_nfce = "0" or v.cod_nfce is null or v.cod_nfce ="") ) as QTDE_COMPROVANTE , ' +
    '    (select sum(vp.VALOR_DEBITADO) from venda v join venda_pagamento vp on vp.codigo_venda = v.codigo_venda where v.`STATUS` = "FECHADA" and v.idCaixa = :pidCaixa ' + ' and (v.cod_nfce = "0" or v.cod_nfce is null or v.cod_nfce ="") '+ ' ) as VALOR_COMPROVANTE, ' +

  // Vendas Canceladas
  //'    (select count(*) from venda v join venda_pagamento vp on vp.codigo_venda = v.codigo_venda where v.`STATUS` = "CANCELADA" and v.idCaixa = :pidCaixa and v.cod_nfce <> "0" ) as QTDE_NFCE_C ,' +
  //'    (select sum((select sum(vi.PRECO_TOTAL) from venda_item vi where vi.codigo_venda = vp.CODIGO_VENDA)) from venda v join venda_pagamento vp on vp.codigo_venda = v.codigo_venda '+' where v.`STATUS` = "CANCELADA" and v.idCaixa = :pidCaixa and v.cod_nfce <> "0" ) as VALOR_NFCE_C  ,' +
    '    (select count(*) from venda v where v.`STATUS` = "CANCELADA" and v.idCaixa = :pidCaixa ' + ' and (v.cod_nfce = "0" or v.cod_nfce is null or v.cod_nfce ="") ) as QTDE_COMPROVANTE_C  , ' +
    '    (select sum((select sum(vi.PRECO_TOTAL) from venda_item vi where vi.codigo_venda = v.CODIGO_VENDA)) from venda v where v.`STATUS` = "CANCELADA" and v.idCaixa = :pidCaixa ' + ' and (v.cod_nfce = "0" or v.cod_nfce is null or v.cod_nfce ="") ) as VALOR_COMPROVANTE_C  ';

  // Vendas pendentes
  //'    (select count(*) from nfce n join venda_pagamento vp on vp.codigo_venda = n.codigo_venda join venda v on v.codigo_venda = n.codigo_venda '+ ' where n.`STATUS_NFCE` = "PENDENTE" and v.idCaixa = :pidCaixa ) as QTDE_NFCE_P ,' +
  //'    (select sum((select sum(vi.PRECO_TOTAL) from venda_item vi where vi.codigo_venda = vp.CODIGO_VENDA)) from nfce n join venda_pagamento vp on vp.codigo_venda = n.codigo_venda join venda v on v.codigo_venda = n.codigo_venda' + ' where n.STATUS_NFCE = "PENDENTE" and v.idCaixa = :pidCaixa '+' ) as VALOR_NFCE_P';

  //_sql_cx_periodo := ' SELECT concat(date_format(v.data,"%d/%m/%Y")," - ",v.hora) as abertura_inicio, date_format(current_timestamp,"%d/%m/%Y - %H:%i:%s") as abertura_fim  FROM venda v JOIN venda_pagamento vp '
  //                 + ' on vp.codigo_venda = v.codigo_venda WHERE v.status = "FECHADA" AND v.idCaixa = :pidCaixa limit 1 ';
  //_sql_cx_periodo := ' SELECT DATE_FORMAT(c.data,"%d/%m/%Y %H:%m:%s") as abertura_inicio, DATE_FORMAT(c.fechamento,"%d/%m/%Y %H:%m:%s") as abertura_fim  FROM caixa c where c.id = :pidCaixa limit 1 ';

  with sql_mov_caixa_pagamentos do
  begin
    close;
    SQL.Clear;
    SQL.Add(_sql_cx_pagamentos);
    parambyname('pidCaixa').Value := IdCaixa;
    open;
  end;

  query_docs;

  (*
  with sql_mov_caixa_periodo do
  begin
    close;
    SQL.Clear;
    SQL.Add(_sql_cx_periodo);
    parambyname('pidCaixa').Value := IdCaixa;
    open;
  end;
  *)

  ///frFechaCaixa.LoadFromFile(tdir.Relatorio.cx_movimentacao);
  frFechaCaixa.PrepareReport;
  frFechaCaixa.ShowPreparedReport;

end;

function Tfrm_relatorio.ImprimeComprovante(IdDetalhe : Integer): Tfrm_relatorio;
begin
  result := self;

  with sql_caixa_detalhe do
  begin
    close;
    SQL.Clear;
    SQL.Add(' SELECT '+
	       '     d.Lancamento, d.DescricaoOperacao, d.total, d.Descricao, u.USUARIO '+
            ' FROM caixadetalhe d '+
            ' left join usuario u ON u.CODIGO = d.CodigoUsuario '+
            ' WHERE D.ID = '+IntToStr(IdDetalhe));
    open;
  end;

  //fr_caixa_detalhe.LoadFromFile(tdir.Relatorio.cx_movimentacao);
  fr_caixa_detalhe.PrepareReport;
  fr_caixa_detalhe.ShowPreparedReport;

end;

function Tfrm_relatorio.teste_ponto_impressao(id_ponto: integer): Tfrm_relatorio;
begin
  with sql_imp_test65 do
  begin
    active := False;
    close;
    parambyname('pid').asInteger := id_ponto;
    open;
    active := true;
  end;

  with rel_teste_impressao do
  begin
    LoadFromFile(PATH_TESTE_IMPRESSAO, true);
    PrepareReport;
    PrintOptions.Printer := TFunctions.validatePrinter(sql_imp_test65impressora.AsString);
    PrintOptions.ShowDialog := False;
    print;
  end;

  result := self;
end;

function Tfrm_relatorio.Venda_Lucratividade(data_inicio, data_fim: tdate): Tfrm_relatorio;
begin
  try

    try

      with sql_v_lucrativ do
      begin
        close;
        parambyname('pdata_inicio').asDate := data_inicio;
        parambyname('pdata_fim').asDate := data_fim;
        open;
      end;
      with fr_v_lucrativ do
      begin
        LoadFromFile(tdir.Relatorio.rel_venda_lucratividade, true);
        PrepareReport(true);
        showreport(true);
      end;

    except
      on e: exception do
        Tdialogs.wnerro('Lucratividade', e.message + slinebreak + 'Erro ao gerar relatório de lucratividade.');
    end;

  finally
    result := self;
  end;

end;

function Tfrm_relatorio.venda_simples(data_inicio, data_fim: tdate; st_fechadas, st_canceladas: BOOLEAN; nome_cliente: string = ''): Tfrm_relatorio;
const
  _order = ' ORDER BY STATUS ASC ';

var
  _select, _where, _nome_cliente_where: string;
begin
  fr_venda_simples.LoadFromFile(tdir.Relatorio.rel_vendas_simples);
  with sql_venda_simples do
  begin
    active := False;
    close;
    SQL.Clear;
    _where := ' WHERE STATUS IN ' + tdb.GenIn([st_fechadas, st_canceladas], ['FECHADA', 'CANCELADA']) + ' AND DATA between :pdata_inicio and :pdata_fim ';

    if nome_cliente = '' then
    begin
      if st_canceladas and (st_fechadas = False) then // apenas canceladas
      begin
        _select := 'select DATE_FORMAT(:pdata_inicio,"%d/%m/%Y") as data_inicio, DATE_FORMAT(:pdata_fim, "%d/%m/%Y") as data_fim,' +
          'DATA, CODIGO_VENDA, "VD" as TIPO, COD_NFCE, VALOR_PAGO, TROCO, NOME_CLIENTE, VALOR_VENDA, DESCONTO,ACRESCIMO, TOTAL_VENDA, STATUS, (0) AS QTD_FECHADAS, '
          + '(SELECT COUNT(CODIGO_VENDA) FROM VENDA WHERE STATUS = "CANCELADA" and DATA between :pdata_inicio and :pdata_fim) AS QTD_CANCELADAS, ' +
          '(SELECT sum(VALOR_VENDA) FROM VENDA WHERE STATUS = "CANCELADA" and DATA between :pdata_inicio and :pdata_fim) AS VALOR_FECHADAS,' +
          '(SELECT sum(acrescimo) FROM VENDA WHERE STATUS = "CANCELADA" and DATA between :pdata_inicio and :pdata_fim) AS ACRESCIMO_FECHADAS,' +
          '(SELECT sum(desconto) FROM VENDA WHERE STATUS = "CANCELADA" and DATA between :pdata_inicio and :pdata_fim) AS DESCONTO_FECHADAS from venda v ';
        TfrxMemoView(fr_venda_simples.Report.FindObject('mmValor')).Text := 'VALOR DAS VENDAS CANCELADAS R$';
        TfrxMemoView(fr_venda_simples.Report.FindObject('mmTotal')).Text := 'TOTAL DAS VENDAS CANCELADAS R$';
      end
      else
      begin
        _select := 'select DATE_FORMAT(:pdata_inicio,"%d/%m/%Y") as data_inicio, DATE_FORMAT(:pdata_fim, "%d/%m/%Y") as data_fim,' +
          'DATA, CODIGO_VENDA, "VD" as TIPO, COD_NFCE, VALOR_PAGO, TROCO, NOME_CLIENTE, VALOR_VENDA, DESCONTO,ACRESCIMO, TOTAL_VENDA, STATUS, ' +
          '(SELECT COUNT(CODIGO_VENDA) FROM VENDA WHERE STATUS = "FECHADA" and DATA between :pdata_inicio and :pdata_fim) AS QTD_FECHADAS, ' +
          '(SELECT COUNT(CODIGO_VENDA) FROM VENDA WHERE STATUS = "CANCELADA" and DATA between :pdata_inicio and :pdata_fim) AS QTD_CANCELADAS, ' +
          '(SELECT sum(VALOR_VENDA) FROM VENDA WHERE STATUS = "FECHADA" and DATA between :pdata_inicio and :pdata_fim) AS VALOR_FECHADAS,' +
          '(SELECT sum(acrescimo) FROM VENDA WHERE STATUS = "FECHADA" and DATA between :pdata_inicio and :pdata_fim) AS ACRESCIMO_FECHADAS,' +
          '(SELECT sum(desconto) FROM VENDA WHERE STATUS = "FECHADA" and DATA between :pdata_inicio and :pdata_fim) AS DESCONTO_FECHADAS from venda v ';
        TfrxMemoView(fr_venda_simples.Report.FindObject('mmValor')).Text := 'VALOR DAS VENDAS FECHADAS R$';
        TfrxMemoView(fr_venda_simples.Report.FindObject('mmTotal')).Text := 'TOTAL DAS VENDAS FECHADAS R$';
      end;
    end
    else
    begin
      _nome_cliente_where := ' and nome_cliente like "%' + nome_cliente + '%" ';
      if st_canceladas and (st_fechadas = False) then // apenas canceladas
      begin
        _select := 'select DATE_FORMAT(:pdata_inicio,"%d/%m/%Y") as data_inicio, DATE_FORMAT(:pdata_fim, "%d/%m/%Y") as data_fim,' +
          'DATA, CODIGO_VENDA, "VD" as TIPO, COD_NFCE, VALOR_PAGO, TROCO, NOME_CLIENTE, VALOR_VENDA, DESCONTO,ACRESCIMO, TOTAL_VENDA, STATUS, (0) AS QTD_FECHADAS, '
          + '(SELECT COUNT(CODIGO_VENDA) FROM VENDA WHERE STATUS = "CANCELADA" and DATA between :pdata_inicio and :pdata_fim ' + _nome_cliente_where +
          ' ) AS QTD_CANCELADAS, ' + '(SELECT sum(VALOR_VENDA) FROM VENDA WHERE STATUS = "CANCELADA" and DATA between :pdata_inicio and :pdata_fim ' +
          _nome_cliente_where + ' ) AS VALOR_FECHADAS,' +
          '(SELECT sum(acrescimo) FROM VENDA WHERE STATUS = "CANCELADA" and DATA between :pdata_inicio and :pdata_fim ' + _nome_cliente_where +
          ' ) AS ACRESCIMO_FECHADAS,' + '(SELECT sum(desconto) FROM VENDA WHERE STATUS = "CANCELADA" and DATA between :pdata_inicio and :pdata_fim ' +
          _nome_cliente_where + ' ) AS DESCONTO_FECHADAS from venda v ';
        TfrxMemoView(fr_venda_simples.Report.FindObject('mmValor')).Text := 'VALOR DAS VENDAS CANCELADAS R$';
        TfrxMemoView(fr_venda_simples.Report.FindObject('mmTotal')).Text := 'TOTAL DAS VENDAS CANCELADAS R$';
      end
      else
      begin
        _select := 'select DATE_FORMAT(:pdata_inicio,"%d/%m/%Y") as data_inicio, DATE_FORMAT(:pdata_fim, "%d/%m/%Y") as data_fim,' +
          'DATA, CODIGO_VENDA, "VD" as TIPO, COD_NFCE, VALOR_PAGO, TROCO, NOME_CLIENTE, VALOR_VENDA, DESCONTO,ACRESCIMO, TOTAL_VENDA, STATUS, ' +
          '(SELECT COUNT(CODIGO_VENDA) FROM VENDA WHERE STATUS = "FECHADA" and DATA between :pdata_inicio and :pdata_fim ' + _nome_cliente_where +
          ' ) AS QTD_FECHADAS, ' + '(SELECT COUNT(CODIGO_VENDA) FROM VENDA WHERE STATUS = "CANCELADA" and DATA between :pdata_inicio and :pdata_fim ' +
          _nome_cliente_where + ' ) AS QTD_CANCELADAS, ' +
          '(SELECT sum(VALOR_VENDA) FROM VENDA WHERE STATUS = "FECHADA" and DATA between :pdata_inicio and :pdata_fim ' + _nome_cliente_where +
          ' ) AS VALOR_FECHADAS,' + '(SELECT sum(acrescimo) FROM VENDA WHERE STATUS = "FECHADA" and DATA between :pdata_inicio and :pdata_fim ' +
          _nome_cliente_where + ' ) AS ACRESCIMO_FECHADAS,' +
          '(SELECT sum(desconto) FROM VENDA WHERE STATUS = "FECHADA" and DATA between :pdata_inicio and :pdata_fim ' + _nome_cliente_where +
          ' ) AS DESCONTO_FECHADAS from venda v ';
        TfrxMemoView(fr_venda_simples.Report.FindObject('mmValor')).Text := 'VALOR DAS VENDAS FECHADAS R$';
        TfrxMemoView(fr_venda_simples.Report.FindObject('mmTotal')).Text := 'TOTAL DAS VENDAS FECHADAS R$';
      end;

      _where := _where + _nome_cliente_where;
    end;

    SQL.Add(_select + _where + _order);
    parambyname('pdata_inicio').Value := FormatDateTime('yyyy-mm-dd', data_inicio);
    parambyname('pdata_fim').Value := FormatDateTime('yyyy-mm-dd', data_fim);
    open;
    active := true;
  end;

  sql_venda_simples.fetchall;
  if sql_venda_simples.RecordCount = 0 then
    Tdialogs.wnalerta('Relatório Vendas Simples', 'Sem movimentação para os parâmetros selecionados!')
  else
  begin
    fr_venda_simples.PrepareReport(true);
    fr_venda_simples.showreport;
  end;

  result := self;
end;

end.
