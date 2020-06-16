﻿//Verificado automaticamente em 16/06/2020 09:29
{ v 18.10.16 14:50 }
unit vw_cliente;
{
  ================================================================================
  |   DATA   |DESENVOLVEDOR|HISTORICO DA ALTERACAO DO CODIGO                     |
  |----------|-------------|-----------------------------------------------------|
  |21/02/2020|WANDER       |Passou a criticar se o usuário tem permissão para    |
  |        08|             |incluir clientes.                                    |
  |----------|-------------|-----------------------------------------------------|
  |21/02/2020|WANDER       |Passou a criticar se o usuário tem permissão para    |
  |        13|             |alterar dados de clientes.                                    |
  |----------|-------------|-----------------------------------------------------|
  |21/02/2020|WANDER       |Passou a criticar se o usuário tem permissão para    |
  |        14|             |excluir clientes.                                    |
  |----------|-------------|-----------------------------------------------------|
  |08/04/2020|WANDER       |Consultando dados do Cliente pelo CNPJ (Rec.Federal) |
  |        68|             |                                                     |
  |----------|-------------|-----------------------------------------------------|
  |09/04/2020|             |Tratando codigo UF e Municipio apos recuperar dados  |
  |        69|             |pelo CNPJ (rec.federal)                              |
  =========================================================================================
  |ITEM |DATA |Desenvolvedor       |Historico                                             |
  |-----|-----|--------------------|------------------------------------------------------|
  |   70|09/04|wander              |Não estava gravando o status_cadastral Ativo/inativo  |
  |-----|-----|--------------------|------------------------------------------------------|
  |   71|09/04|wander              |Não estava tratando SUFRAMA. Estava colocando o nome  |
  |     |     |                    |FANTASIA no campo SUFRAMA                             |
  |-----|-----|--------------------|------------------------------------------------------|
  |   72|09/04|wander              |Não permitia percorrer o grid da consulta de clientes.|
  |     |     |                    |Ao clicar no grid já selecionava e editava o cliente  |
  |-----|-----|--------------------|------------------------------------------------------|
  |   73|09/04|wander              |Passou a consultar cliente com duplo clique na lista  |
  |     |     |                    |de clientes                                           |
  |-----|-----|--------------------|------------------------------------------------------|
  |   74|09/04|wander              |Antes, ao selecionar um cliente já entrava em modo de |
  |     |     |                    |edicao (alteracao)                                    |
  |     |     |                    |Modificado para entrar em modo de consulta.           |
  |     |     |                    |Para alterar é preciso clicar no botao Alterar.       |
  |-----|-----|--------------------|------------------------------------------------------|
  |   75|09/04|wander              |Os campos edit/maskedit como o CNPJ/CPF não eram      |
  |     |     |                    |"limpos" ao clicar em INCLUIR                         |
  |     |     |                    |permanecendo os dados do último cliente na tela de um |
  |     |     |                    |novo cliente                                          |
  |-----|-----|--------------------|------------------------------------------------------|
  |   76|09/04|wander              |O nome fantasia não aparecia no grid de consulta      |
  |-----|-----|--------------------|------------------------------------------------------|
  |   77|09/04|wander              |O nome fantasia não aparecia na tela de cadastro para |
  |     |     |                    |alterar                                               |
  |-----|-----|--------------------|------------------------------------------------------|
  |   78|09/04|wander              |Não havia a tabela Cliente_Banco                      |
  |-----|-----|--------------------|------------------------------------------------------|
  |   79|09/04|wander              |Não havia a tabela Cliente_Endereco                   |
  |-----|-----|--------------------|------------------------------------------------------|
  |   80|09/04|wander              |Não estava tratando corretamente o codigo_UF-IBGE     |
  |-----|-----|--------------------|------------------------------------------------------|
  |   81|09/04|wander              |Não estava tratando corretamente o codigo_Cidade-IBGE |
  |-----|-----|--------------------|------------------------------------------------------|
  |   82|09/04|wander              |Estava tratando endereco da tabela de cliente e nao da|
  |     |     |                    |tabela de cliente_endereco                            |
  |-----|-----|--------------------|------------------------------------------------------|
  |   83|09/04|wander              |Grupo Pessoa Física que sobrepoe o Grupo Pessoa       |
  |     |     |                    |Jurídica na aba de cadastro passa a se posicionar     |
  |     |     |                    |corretamente onde deve ficar, em tempo de execucao,   |
  |     |     |                    |facilitando o manuseio do codigo durante sua edição / |
  |     |     |                    |programação.                                          |
  |-----|-----|--------------------|------------------------------------------------------|
  |   84|09/04|wander              |Tratando botões do cad de endereço. Quando clica em   |
  |     |     |                    |incluir ou alterar cliente,                           |
  |     |     |                    |estes botões são habilitados. Ao salvar ou cancelar,  |
  |     |     |                    |são desabilitados novamente.                          |
  =========================================================================================
  |ITEM |DATA |UNIT / FILE         |HISTORICO                                    |
  |-----|-----|--------------------|---------------------------------------------|
  |   86|16/04|wander              |Tratando endereços e contatos do cliente     |
  |     |09:40|                    |E situação cadastral do endereço             |
  |-----|-----|--------------------|---------------------------------------------|
  |   87|18/04|wander              |Tratando banco                               |
  |     |04:30|                    |                                             |
  |-----|-----|--------------------|---------------------------------------------|
  |   88|20/04|wander              |Eliminadas procedures não usadas.            |
  |     |07:30|                    |                                             |
  |-----|-----|--------------------|---------------------------------------------|
  |  115|20/04|wander              |Passou mostrar dados do bloqueio             |
  |     |07:30|                    |                                             |
  ================================================================================

1-so conslutar o CEP se ele foi alterado
2-reposicionado o campo CEP pois deve ser o primeiro campo do endereço,
  pois preenche os demais campos
3-reposicionados os botoes de cad/alt/canc/gravar do grupo banco para mander o
  padrao (superior)

29/04
09:56 Permitir informar endereço enquanto incliu cliente novo

}

interface

uses
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
  System.StrUtils, XMLIntf, v_env, h_Formats, h_functions, h_DB, cxControls,
  cxLookAndFeels, cxLookAndFeelPainters, dxSkinsCore,
  dxSkinBlack, dxSkinBlue, dxSkinBlueprint,
  dxSkinCaramel,
  dxSkinCoffee, dxSkinDarkRoom,
  dxSkinDarkSide, dxSkinDevExpressDarkStyle, dxSkinDevExpressStyle, dxSkinFoggy,
  dxSkinGlassOceans, dxSkinHighContrast, dxSkiniMaginary,
  dxSkinLilian, dxSkinLiquidSky,
  dxSkinLondonLiquidSky,
  dxSkinMcSkin, dxSkinMetropolis, dxSkinMetropolisDark, dxSkinMoneyTwins,
  dxSkinOffice2007Black, dxSkinOffice2007Blue,
  dxSkinOffice2007Green, dxSkinOffice2007Pink,
  dxSkinOffice2007Silver,
  dxSkinOffice2010Black, dxSkinOffice2010Blue, dxSkinOffice2010Silver,
  dxSkinOffice2013DarkGray, dxSkinOffice2013LightGray,
  dxSkinOffice2013White, dxSkinOffice2016Colorful,
  dxSkinOffice2016Dark,
  dxSkinPumpkin, dxSkinSeven, dxSkinSevenClassic, dxSkinSharp, dxSkinSharpPlus,
  dxSkinSilver, dxSkinSpringTime, dxSkinStardust,
  dxSkinSummer2008, dxSkinTheAsphaltWorld,
  dxSkinsDefaultPainters,
  dxSkinValentine, dxSkinVisualStudio2013Blue, dxSkinVisualStudio2013Dark,
  dxSkinVisualStudio2013Light, dxSkinVS2010, dxSkinWhiteprint,
  dxSkinXmas2008Blue, dxSkinscxPCPainter,
  dxBarBuiltInMenu,
  cxStyles, cxCustomData, cxFilter, cxData, cxDataStorage, cxEdit, cxNavigator,
  cxDBData, cxLabel, cxContainer, dxCore, cxDateUtils,
  FireDAC.Stan.Intf, FireDAC.Stan.Option,
  FireDAC.Stan.Error,
  FireDAC.DatS, FireDAC.Phys.Intf, FireDAC.DApt.Intf, FireDAC.Stan.Async,
  FireDAC.DApt, Vcl.ImgList, cxGridBandedTableView,
  dxGDIPlusClasses, cxClasses, cxGridCustomView,
  cxCurrencyEdit,
  Winapi.Messages;

type
  Tfrm_cliente = class(TForm)
    DS_Cliente: TDataSource;
    SQL_Cliente: TFDQuery;
    sql_increment: TFDQuery;
    sql_incrementAUTO_INCREMENT: TLargeintField;
    DS_C_Clientes: TDataSource;
    SQL_C_Clientes: TFDQuery;
    page_control: TcxPageControl;
    popmenugrid: TPopupMenu;
    Cadastrarcomofornecedor1: TMenuItem;
    SQL_DADOS_OTICA: TFDQuery;
    DS_DADOS_OTICA: TDataSource;
    grid_otica_pop: TPopupMenu;
    Alterar1: TMenuItem;
    Excluir1: TMenuItem;
    SQL_DADOS_OTICACODIGO: TFDAutoIncField;
    SQL_DADOS_OTICACODIGO_CLIENTE: TIntegerField;
    SQL_DADOS_OTICADATA_CADASTRO: TSQLTimeStampField;
    SQL_DADOS_OTICAL_OE_ESFERA: TStringField;
    SQL_DADOS_OTICAL_OE_CILINDRO: TStringField;
    SQL_DADOS_OTICAL_OE_EIXO: TStringField;
    SQL_DADOS_OTICAL_OE_DISTANCIA_PUPILAR: TStringField;
    SQL_DADOS_OTICAL_OD_ESFERA: TStringField;
    SQL_DADOS_OTICAL_OD_CILINDRO: TStringField;
    SQL_DADOS_OTICAL_OD_EIXO: TStringField;
    SQL_DADOS_OTICAL_OD_DISTANCIA_PUPILAR: TStringField;
    SQL_DADOS_OTICAP_OE_ESFERA: TStringField;
    SQL_DADOS_OTICAP_OE_CILINDRO: TStringField;
    SQL_DADOS_OTICAP_OE_EIXO: TStringField;
    SQL_DADOS_OTICAP_OE_DISTANCIA_PUPILAR: TStringField;
    SQL_DADOS_OTICAP_OD_ESFERA: TStringField;
    SQL_DADOS_OTICAP_OD_CILINDRO: TStringField;
    SQL_DADOS_OTICAP_OD_EIXO: TStringField;
    SQL_DADOS_OTICAP_OD_DISTANCIA_PUPILAR: TStringField;
    SQL_DADOS_OTICALENTE_GRAU: TStringField;
    SQL_DADOS_OTICAARMACAO_GRAU: TStringField;
    SQL_DADOS_OTICALENTE_SOLAR: TStringField;
    SQL_DADOS_OTICAARMACAO_SOLAR: TStringField;
    SQL_DADOS_OTICAADICAO: TStringField;
    imlist: TcxImageList;
    tab_consulta: TcxTabSheet;
    Label45: TLabel;
    Label47: TLabel;
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
    cxGroupBox1: TcxGroupBox;
    Image1: TImage;
    Image2: TImage;
    chkFisica: TcxCheckBox;
    chkJuridica: TcxCheckBox;
    cxGroupBox2: TcxGroupBox;
    chkAtivo: TcxCheckBox;
    chkInativo: TcxCheckBox;
    edt_consulta: TEdit;
    cbFiltro: TcxComboBox;
    Label49: TLabel;
    cbOrder: TcxComboBox;
    btn_relatorios_cli: TcxButton;
    tab_cadastrar: TcxTabSheet;
    Label10: TLabel;
    gpTipoPessoaFJ: TGroupBox;
    BtnFisica: TcxButton;
    BtnJuridica: TcxButton;
    bt_Cliente_Gravar: TcxButton;
    bt_Cliente_Cancelar: TcxButton;
    bt_Cliente_Incluir: TcxButton;
    bt_Cliente_Alterar: TcxButton;
    gpFisica: TGroupBox;
    Label25: TLabel;
    Label3: TLabel;
    lblRG: TLabel;
    Label1: TLabel;
    Label7: TLabel;
    Label6: TLabel;
    Label30: TLabel;
    Label2: TLabel;
    Label5: TLabel;
    Label4: TLabel;
    dbcbSexo: TDBComboBox;
    dbedtRG: TDBEdit;
    dbedtOE: TcxDBTextEdit;
    edt_ie: TDBEdit;
    dbedtNome: TDBEdit;
    edLimiteCredito: TcxDBTextEdit;
    edt_data: TcxDateEdit;
    edEmissao: TcxDateEdit;
    DBComboBox3: TDBComboBox;
    edCPF: TMaskEdit;
    cbATIVIDADE: TcxButton;
    btComplementoDeDados: TcxButton;
    gpJuridica: TGroupBox;
    lbl2: TLabel;
    lbl3: TLabel;
    lbl4: TLabel;
    lbl5: TLabel;
    lbl7: TLabel;
    lbl8: TLabel;
    dbedtINSCRICAO_ESTADUAL: TDBEdit;
    dbedtINSCRICAO_MUNICIPAL: TDBEdit;
    dbedt_razaosocial: TDBEdit;
    dbedt_fantasia: TDBEdit;
    btn_ramo: TcxButton;
    edCNPJ: TMaskEdit;
    gpEndereco: TGroupBox;
    Label8: TLabel;
    Label9: TLabel;
    Label11: TLabel;
    Label12: TLabel;
    btnMunicip: TcxButton;
    cxGrid4: TcxGrid;
    cxGridDBTableView3: TcxGridDBTableView;
    cxGridLevel3: TcxGridLevel;
    bt_Endereco_Gravar: TcxButton;
    bt_Endereco_Alterar: TcxButton;
    btn_zona: TcxButton;
    gpContato: TGroupBox;
    DB_TELEFONE: TDBEdit;
    DB_EMAIL: TDBEdit;
    DB_CONTATO_RESPONSAVEL: TDBEdit;
    DB_FUNCAO: TDBEdit;
    DB_WHATSAPP: TDBEdit;
    DB_RAMAL: TDBEdit;
    bt_Contato_Gravar: TcxButton;
    bt_Contato_Alterar: TcxButton;
    bt_Contato_Cancelar: TcxButton;
    DB_CELULAR_1: TDBEdit;
    DB_CELULAR_2: TDBEdit;

    cxGridDBTableView1: TcxGridDBTableView;
    cxGridDBColumn1: TcxGridDBColumn;
    cxGridDBColumn2: TcxGridDBColumn;
    cxGridDBColumn3: TcxGridDBColumn;
    cxGridDBColumn4: TcxGridDBColumn;
    cxGridDBTableView1Column2: TcxGridDBColumn;
    cxGridDBColumn5: TcxGridDBColumn;
    cxGridDBTableView1Column1: TcxGridDBColumn;
    cxGridDBTableView1Column3: TcxGridDBColumn;
    cxGridDBColumn7: TcxGridDBColumn;
    cxGridLevel1: TcxGridLevel;
    gpBanco: TGroupBox;
    DB_BANCO: TcxDBTextEdit;
    DB_CONTA: TDBEdit;
    DB_DIGITO: TDBEdit;
    DB_OPERACAO: TDBEdit;
    DB_AGENCIA: TDBEdit;
    DB_DIGITO_AG: TDBEdit;
    cxGrid2: TcxGrid;
    cxGridDBTableView2: TcxGridDBTableView;
    cxGridDBColumn9: TcxGridDBColumn;
    cxGridDBColumn10: TcxGridDBColumn;
    cxGridDBColumn11: TcxGridDBColumn;
    cxGridDBColumn13: TcxGridDBColumn;
    cxGridDBColumn15: TcxGridDBColumn;
    cxGridLevel2: TcxGridLevel;
    bt_Banco_Gravar: TcxButton;
    bt_Banco_Alterar: TcxButton;
    bt_Banco_Cancelar: TcxButton;
    gpData: TGroupBox;
    Label14: TLabel;
    lbInativo: TLabel;
    DB_DATA_CADASTRO: TDateTimePicker;
    edDTBLOQUEIO: TDateTimePicker;
    Label13: TLabel;
    Label16: TLabel;
    DBEdit17: TDBEdit;
    cbSituacaoCadastral: TcxComboBox;
    chk_rural: TcxCheckBox;
    bt_SMC: TcxButton;
    bt_Animais: TcxButton;
    bt_Otica: TcxButton;
    bt_Conveniados: TcxButton;
    bt_Dependentes: TcxButton;
    bt_Cobranca: TcxButton;
    bt_Financeiro: TcxButton;
    bt_Complemento_Financeiro: TcxButton;
    bt_Compra: TcxButton;
    btn_cep: TcxButton;
    DB_RUA: TDBEdit;
    DB_NUMERO: TDBEdit;
    DB_BAIRRO: TDBEdit;
    DB_COMPLEMENTO: TDBEdit;
    DB_CEP: TDBEdit;
    DB_ZONA: TDBEdit;
    DB_MUNICIPIO: TDBEdit;
    DB_CODIGO_MUNICIPIO: TDBEdit;
    DB_UF: TDBEdit;
    DB_CODIGO_PAIS: TDBEdit;
    DB_PAIS: TDBEdit;
    chk_concerssionaria: TcxCheckBox;
    cbSitTribICMS: TDBComboBox;
    DB_CODIGO_UF: TDBEdit;
    sql_CLIENTE_ENDERECO: TFDQuery;
    ds_CLIENTE_ENDERECO: TDataSource;
    sql_CLIENTE_ENDERECOCODIGO: TFDAutoIncField;
    sql_CLIENTE_ENDERECOCODIGO_CLIENTE: TIntegerField;
    sql_CLIENTE_ENDERECORUA: TStringField;
    sql_CLIENTE_ENDERECONUMERO: TStringField;
    sql_CLIENTE_ENDERECOBAIRRO: TStringField;
    sql_CLIENTE_ENDERECOCOMPLEMENTO: TStringField;
    sql_CLIENTE_ENDERECOCEP: TStringField;
    sql_CLIENTE_ENDERECOMUNICIPIO: TStringField;
    sql_CLIENTE_ENDERECOCODIGO_MUNICIPIO: TStringField;
    sql_CLIENTE_ENDERECOCODIGO_PAIS: TStringField;
    sql_CLIENTE_ENDERECOTIPO_ENDERECO: TStringField;
    sql_CLIENTE_ENDERECOZONA: TStringField;
    sql_CLIENTE_ENDERECOREGIAO: TStringField;
    sql_CLIENTE_ENDERECOUF: TStringField;
    sql_CLIENTE_ENDERECOPAIS: TStringField;
    sql_LISTA_ENDERECO: TFDQuery;
    sql_CLIENTE_ENDERECOSTATUS_CADASTRAL: TStringField;
    dt_LISTA_ENDERECO: TDataSource;
    bt_Endereco_Cancelar: TcxButton;
    sql_CLIENTE_CONTATO: TFDQuery;
    ds_CLIENTE_CONTATO: TDataSource;
    sql_CLIENTE_CONTATOCODIGO: TFDAutoIncField;
    sql_CLIENTE_CONTATOCODIGO_CLIENTE: TIntegerField;
    sql_CLIENTE_CONTATORESPONSAVEL: TStringField;
    sql_CLIENTE_CONTATOFUNCAO: TStringField;
    sql_CLIENTE_CONTATORAMAL: TStringField;
    sql_CLIENTE_CONTATOTELEFONE: TStringField;
    sql_CLIENTE_CONTATOCELULAR_1: TStringField;
    sql_CLIENTE_CONTATOCELULAR_2: TStringField;
    sql_CLIENTE_CONTATOWHATSAPP: TStringField;
    sql_CLIENTE_CONTATOEMAIL: TStringField;
    cxGridDBTableView1Column4: TcxGridDBColumn;
    sql_LISTA_BANCO: TFDQuery;
    sql_CLIENTE_BANCO: TFDQuery;
    ds_CLIENTE_BANCO: TDataSource;
    ds_LSTA_BANCO: TDataSource;
    cxGridDBTableView3CODIGO: TcxGridDBColumn;
    cxGridDBTableView3CODIGO_CLIENTE: TcxGridDBColumn;
    cxGridDBTableView3RUA: TcxGridDBColumn;
    cxGridDBTableView3NUMERO: TcxGridDBColumn;
    cxGridDBTableView3BAIRRO: TcxGridDBColumn;
    cxGridDBTableView3COMPLEMENTO: TcxGridDBColumn;
    cxGridDBTableView3CEP: TcxGridDBColumn;
    cxGridDBTableView3MUNICIPIO: TcxGridDBColumn;
    cxGridDBTableView3CODIGO_MUNICIPIO: TcxGridDBColumn;
    cxGridDBTableView3CODIGO_PAIS: TcxGridDBColumn;
    cxGridDBTableView3TIPO_ENDERECO: TcxGridDBColumn;
    cxGridDBTableView3ZONA: TcxGridDBColumn;
    cxGridDBTableView3REGIAO: TcxGridDBColumn;
    cxGridDBTableView3UF: TcxGridDBColumn;
    cxGridDBTableView3CODIGO_UF: TcxGridDBColumn;
    cxGridDBTableView3PAIS: TcxGridDBColumn;
    cxGridDBTableView3STATUS_CADASTRAL: TcxGridDBColumn;
    sql_LISTA_CONTATO1: TFDQuery;
    sql_LISTA_CONTATO1CODIGO: TFDAutoIncField;
    sql_LISTA_CONTATO1CODIGO_CLIENTE: TIntegerField;
    sql_LISTA_CONTATO1RESPONSAVEL: TStringField;
    sql_LISTA_CONTATO1FUNCAO: TStringField;
    sql_LISTA_CONTATO1RAMAL: TStringField;
    sql_LISTA_CONTATO1TELEFONE: TStringField;
    sql_LISTA_CONTATO1CELULAR_1: TStringField;
    sql_LISTA_CONTATO1CELULAR_2: TStringField;
    sql_LISTA_CONTATO1WHATSAPP: TStringField;
    sql_LISTA_CONTATO1EMAIL: TStringField;
    sql_LISTA_ENDERECOCODIGO: TFDAutoIncField;
    sql_LISTA_ENDERECOCODIGO_CLIENTE: TIntegerField;
    sql_LISTA_ENDERECOTIPO_ENDERECO: TStringField;
    sql_LISTA_ENDERECORUA: TStringField;
    sql_LISTA_ENDERECONUMERO: TStringField;
    sql_LISTA_ENDERECOBAIRRO: TStringField;
    sql_LISTA_ENDERECOCOMPLEMENTO: TStringField;
    sql_LISTA_ENDERECOCEP: TStringField;
    sql_LISTA_ENDERECOMUNICIPIO: TStringField;
    sql_LISTA_ENDERECOCODIGO_MUNICIPIO: TStringField;
    sql_LISTA_ENDERECOCODIGO_PAIS: TStringField;
    sql_LISTA_ENDERECOZONA: TStringField;
    sql_LISTA_ENDERECOREGIAO: TStringField;
    sql_LISTA_ENDERECOUF: TStringField;
    sql_LISTA_ENDERECOCODIGO_UF: TStringField;
    sql_LISTA_ENDERECOPAIS: TStringField;
    sql_LISTA_ENDERECOSTATUS_CADASTRAL: TStringField;
    dbTipoEndereco: TcxDBComboBox;
    dbatividadePF: TEdit;
    bt_Contato_Incluir: TcxButton;
    Label17: TLabel;
    dbSuframa: TDBEdit;
    btn_ConsultaCNPJ: TcxButton;
    Query1: TFDQuery;
    sql_CLIENTE_BANCOCODIGO: TFDAutoIncField;
    sql_CLIENTE_BANCOCODIGO_CLIENTE: TIntegerField;
    sql_CLIENTE_BANCOBANCO: TStringField;
    sql_CLIENTE_BANCOAGENCIA: TStringField;
    sql_CLIENTE_BANCODIGITO_AG: TStringField;
    sql_CLIENTE_BANCOOPERACAO: TStringField;
    sql_CLIENTE_BANCOCONTA: TStringField;
    sql_CLIENTE_BANCODIGITO: TStringField;
    bt_Banco_Incluir: TcxButton;
    sql_CLIENTE_ENDERECOCODIGO_UF: TStringField;
    dbedt_codigo: TDBEdit;
    Label18: TLabel;
    edID_CAD_RAMO_ATIVIDADE_PF: TDBEdit;
    SQL_ClienteCODIGO: TFDAutoIncField;
    SQL_ClienteDATA_CADASTRO: TDateField;
    SQL_ClienteSITUACAO_FINANCEIRA: TStringField;
    SQL_ClienteCONSUMIDOR_FINAL: TStringField;
    SQL_ClientePESSOA_TIPO: TStringField;
    SQL_ClienteCLIENTE_TIPO: TStringField;
    SQL_ClienteCONSUMIDOR_TIPO: TStringField;
    SQL_ClienteRAZAO_SOCIAL: TStringField;
    SQL_ClienteFANTASIA: TStringField;
    SQL_ClienteCPF: TStringField;
    SQL_ClienteCNPJ: TStringField;
    SQL_ClienteNATURALIDADE: TStringField;
    SQL_ClienteNACIONALIDADE: TStringField;
    SQL_ClienteRG: TStringField;
    SQL_ClienteORGAO_EMISSOR: TStringField;
    SQL_ClienteINSCRICAO_ESTADUAL: TStringField;
    SQL_ClienteINSCRICAO_MUNICIPAL: TStringField;
    SQL_ClienteSTATUS_CADASTRAL: TStringField;
    SQL_ClienteDATA_NASCIMENTO: TDateField;
    SQL_ClienteSEXO: TStringField;
    SQL_ClienteESTADO_CIVIL: TStringField;
    SQL_ClienteSUFRAMA: TStringField;
    SQL_ClienteRAMO_ATIVIDADE: TStringField;
    SQL_ClienteATIVIDADE: TStringField;
    SQL_ClienteDATA_EMISSAO: TDateField;
    SQL_ClienteNOME_PAI: TStringField;
    SQL_ClienteNOME_MAE: TStringField;
    SQL_ClienteLIMITE_CREDITO: TBCDField;
    SQL_ClienteENDERECO: TStringField;
    SQL_ClienteNUMERO: TStringField;
    SQL_ClienteBAIRRO: TStringField;
    SQL_ClienteCOMPLEMENTO: TStringField;
    SQL_ClienteCEP: TStringField;
    SQL_ClienteMUNICIPIO: TStringField;
    SQL_ClienteCODIGO_MUNICIPIO: TIntegerField;
    SQL_ClienteREGIAO: TStringField;
    SQL_ClienteZONA: TStringField;
    SQL_ClienteROTA: TStringField;
    SQL_ClienteESTADO: TStringField;
    SQL_ClientePAIS: TStringField;
    SQL_ClienteCODIGO_PAIS: TIntegerField;
    SQL_ClienteENTREGA_ENDERECO: TStringField;
    SQL_ClienteENTREGA_NUMERO: TStringField;
    SQL_ClienteENTREGA_BAIRRO: TStringField;
    SQL_ClienteENTREGA_COMPLEMENTO: TStringField;
    SQL_ClienteENTREGA_CEP: TStringField;
    SQL_ClienteENTREGA_MUNICIPIO: TStringField;
    SQL_ClienteENTREGA_CODIGO_MUNICIPIO: TIntegerField;
    SQL_ClienteENTREGA_REGIAO: TStringField;
    SQL_ClienteENTREGA_ZONA: TStringField;
    SQL_ClienteENTREGA_ESTADO: TStringField;
    SQL_ClienteENTREGA_PAIS: TStringField;
    SQL_ClienteENTREGA_CODIGO_PAIS: TIntegerField;
    SQL_ClienteCOBRANCA_ENDERECO: TStringField;
    SQL_ClienteCOBRANCA_NUMERO: TStringField;
    SQL_ClienteCOBRANCA_BAIRRO: TStringField;
    SQL_ClienteCOBRANCA_COMPLEMENTO: TStringField;
    SQL_ClienteCOBRANCA_CEP: TStringField;
    SQL_ClienteCOBRANCA_MUNICIPIO: TStringField;
    SQL_ClienteCOBRANCA_CODIGO_MUNICIPIO: TIntegerField;
    SQL_ClienteCOBRANCA_REGIAO: TStringField;
    SQL_ClienteCOBRANCA_ZONA: TStringField;
    SQL_ClienteCOBRANCA_ESTADO: TStringField;
    SQL_ClienteCOBRANCA_PAIS: TStringField;
    SQL_ClienteCOBRANCA_CODIGO_PAIS: TIntegerField;
    SQL_ClienteAVALISTA_NOME: TStringField;
    SQL_ClienteAVALISTA_DATA_NASCIMENTO: TDateField;
    SQL_ClienteAVALISTA_CPF: TStringField;
    SQL_ClienteAVALISTA_RG: TStringField;
    SQL_ClienteAVALISTA_ORGAO_EMISSOR: TStringField;
    SQL_ClienteAVALISTA_RG_DATA_EMISSAO: TStringField;
    SQL_ClienteAVALISTA_ESTADO_CIVIL: TStringField;
    SQL_ClienteAVALISTA_NACIONALIDADE: TStringField;
    SQL_ClienteAVALISTA_NATURALIDADE: TStringField;
    SQL_ClienteAVALISTA_NOME_PAI: TStringField;
    SQL_ClienteAVALISTA_NOME_MAE: TStringField;
    SQL_ClienteAVALISTA_ENDERECO: TStringField;
    SQL_ClienteAVALISTA_NUMERO: TStringField;
    SQL_ClienteAVALISTA_BAIRRO: TStringField;
    SQL_ClienteAVALISTA_COMPLEMENTO: TStringField;
    SQL_ClienteAVALISTA_CEP: TStringField;
    SQL_ClienteAVALISTA_MUNICIPIO: TStringField;
    SQL_ClienteAVALISTA_CODIGO_MUNICIPIO: TIntegerField;
    SQL_ClienteAVALISTA_REGIAO: TStringField;
    SQL_ClienteAVALISTA_ZONA: TStringField;
    SQL_ClienteAVALISTA_ESTADO: TStringField;
    SQL_ClienteAVALISTA_PAIS: TStringField;
    SQL_ClienteAVALISTA_CODIGO_PAIS: TIntegerField;
    SQL_ClienteALIQUOTA_FECOEP: TIntegerField;
    SQL_ClienteBANCO_1: TStringField;
    SQL_ClienteBANCO_OP_CONTA: TStringField;
    SQL_ClienteBANCO_OP2_CONTA: TStringField;
    SQL_ClienteBANCO_CONTA_1: TStringField;
    SQL_ClienteBANCO_AGENCIA_1: TStringField;
    SQL_ClienteBANCO_2: TStringField;
    SQL_ClienteBANCO_CONTA_2: TStringField;
    SQL_ClienteBANCO_CONTA_DIGITO: TStringField;
    SQL_ClienteBANCO_CONTA_DIGITO_2: TStringField;
    SQL_ClienteBANCO_ANGENCIA_DIGITO: TStringField;
    SQL_ClienteBANCO_ANGENCIA_DIGITO_2: TStringField;
    SQL_ClienteBANCO_AGENCIA_2: TStringField;
    SQL_ClienteCONTATO_NOME: TStringField;
    SQL_ClienteCONTATO_CELULAR: TStringField;
    SQL_ClienteTELEFONE: TStringField;
    SQL_ClienteTELEFONE_1: TStringField;
    SQL_ClienteCELULAR: TStringField;
    SQL_ClienteCONTATO: TStringField;
    SQL_ClienteCELULAR_1: TStringField;
    SQL_ClienteCONTATO_1: TStringField;
    SQL_ClienteEMAIL: TStringField;
    SQL_ClienteEMAIL_1: TStringField;
    SQL_ClienteSKYPE: TStringField;
    SQL_ClienteOBSERVACAO: TStringField;
    SQL_Clienteconvenio_inicio: TDateField;
    SQL_Clienteconvenio_fim: TDateField;
    SQL_ClienteINDICACAO_IE: TIntegerField;
    SQL_ClienteTRIBUTACAO_ICMS: TIntegerField;
    SQL_ClienteCONTRIBUINTE_ICMS: TIntegerField;
    SQL_ClienteID_CAD_RAMO_ATIVIDADE: TIntegerField;
    SQL_C_Clientescodigo: TFDAutoIncField;
    SQL_C_Clientesdata_cadastro: TDateField;
    SQL_C_Clientessituacao_financeira: TStringField;
    SQL_C_Clientespessoa_tipo: TStringField;
    SQL_C_Clientesrazao_social: TStringField;
    SQL_C_Clientesfantasia: TStringField;
    SQL_C_Clientescpf: TStringField;
    SQL_C_Clientescnpj: TStringField;
    SQL_C_Clientesinscricao_estadual: TStringField;
    SQL_C_Clientesstatus_cadastral: TStringField;
    SQL_C_Clientesmunicipio: TStringField;
    SQL_C_Clientesestado: TStringField;
    SQL_C_Clientestelefone: TStringField;
    SQL_C_Clientescelular: TStringField;
    SQL_C_Clientesrota: TStringField;
    Label19: TLabel;
    SQL_ClienteDTBLOQUEIO: TDateField;
    SQL_ClienteHRBLOQUEIO: TStringField;
    SQL_ClienteUSUBLOQUEIO: TStringField;
    SQL_ClienteMAQBLOQUEIO: TStringField;
    SQL_ClienteDTALTEROU: TDateField;
    SQL_ClienteHRALTEROU: TStringField;
    SQL_ClienteUSUALTEROU: TStringField;
    SQL_ClienteMAQALTEROU: TStringField;
    btDetalhesBloqueio: TcxButton;
    cbHistoricoBloqueios: TcxButton;
    edColaboradorNome: TMaskEdit;
    DB_STATUS_CADASTRAL_ENDERECO: TCheckBox;
    sql_LISTA_BANCOCODIGO: TFDAutoIncField;
    sql_LISTA_BANCOCODIGO_CLIENTE: TIntegerField;
    sql_LISTA_BANCOBANCO: TStringField;
    sql_LISTA_BANCOAGENCIA: TStringField;
    sql_LISTA_BANCODIGITO_AG: TStringField;
    sql_LISTA_BANCOOPERACAO: TStringField;
    sql_LISTA_BANCOCONTA: TStringField;
    sql_LISTA_BANCODIGITO: TStringField;
    cxGridDBColumn12: TcxGridDBColumn;
    cxGridDBTableView2Column1: TcxGridDBColumn;
    DB_ID_REGIAO: TDBEdit;
    edREG_DESCRICAO: TEdit;
    sql_LISTA_ENDERECOID_REGIAO: TIntegerField;
    btRegiao: TcxButton;
    bt_Endereco_Incluir: TcxButton;
    Label15: TLabel;
    edID_CAD_RAMO_ATIVIDADE_PJ: TDBEdit;
    dbatividadePJ: TEdit;
    Procedure FormClose(Sender: TObject; var Action: TCloseAction);
    Procedure Button1Click(Sender: TObject);
    Procedure bt_Cliente_IncluirClick(Sender: TObject);
    Procedure bt_Cliente_GravarClick(Sender: TObject);
    Procedure GridClientesDblClick(Sender: TObject);
    Procedure BtnJuridicaClick(Sender: TObject);
    Procedure BtnFisicaClick(Sender: TObject);
    Procedure btnSintegraClick(Sender: TObject);
    Procedure btnMunicipClick(Sender: TObject);
    Procedure bt_Cliente_CancelarClick(Sender: TObject);
    Procedure BtnExcluirClick(Sender: TObject);

    Procedure DBEdit30KeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    Procedure btnImprimirGridClick(Sender: TObject);
    Procedure dbedtNomeKeyPress(Sender: TObject; var Key: Char);
    Procedure dbedit1KeyPress(Sender: TObject; var Key: Char);
    Procedure edt_dataKeyPress(Sender: TObject; var Key: Char);
    Procedure dbedtRGKeyPress(Sender: TObject; var Key: Char);
    Procedure dbedtOEKeyPress(Sender: TObject; var Key: Char);
    Procedure edEmissaoKeyPress(Sender: TObject; var Key: Char);
    Procedure dbcbSexoKeyPress(Sender: TObject; var Key: Char);
    Procedure DBComboBox2KeyPress(Sender: TObject; var Key: Char);
    Procedure cxDBTextEdit6KeyPress(Sender: TObject; var Key: Char);
    Procedure cxDBTextEdit7KeyPress(Sender: TObject; var Key: Char);
    Procedure cxDBTextEdit5KeyPress(Sender: TObject; var Key: Char);
    Procedure cxDBTextEdit3KeyPress(Sender: TObject; var Key: Char);
    Procedure dbcbbSITUACAO_FINANCEIRAKeyPress(Sender: TObject; var Key: Char);
    Procedure edLimiteCreditoKeyPress(Sender: TObject; var Key: Char);
    Procedure DB_NUMEROKeyPress(Sender: TObject; var Key: Char);
    Procedure DBEdit74KeyPress(Sender: TObject; var Key: Char);
    Procedure DB_CEPKeyPress(Sender: TObject; var Key: Char);
    Procedure DBEdit8KeyPress(Sender: TObject; var Key: Char);
    Procedure cxDBTextEdit32KeyPress(Sender: TObject; var Key: Char);
    Procedure dbedtINSCRICAO_MUNICIPALKeyPress(Sender: TObject; var Key: Char);
    Procedure cxDBTextEdit56KeyPress(Sender: TObject; var Key: Char);
    Procedure cxDBTextEdit58KeyPress(Sender: TObject; var Key: Char);
    Procedure DBEdit87KeyPress(Sender: TObject; var Key: Char);
    Procedure DBEdit84KeyPress(Sender: TObject; var Key: Char);
    Procedure DBEdit2KeyPress(Sender: TObject; var Key: Char);
    Procedure cxDBTextEdit33KeyPress(Sender: TObject; var Key: Char);
    Procedure DBEdit4KeyPress(Sender: TObject; var Key: Char);
    Procedure dbedtTELEFONE_1KeyPress(Sender: TObject; var Key: Char);
    Procedure cxDBTextEdit59KeyPress(Sender: TObject; var Key: Char);
    Procedure dbedtCELULAR_1KeyPress(Sender: TObject; var Key: Char);
    Procedure DBEdit20KeyPress(Sender: TObject; var Key: Char);
    Procedure DBEdit23KeyPress(Sender: TObject; var Key: Char);
    Procedure DBEdit18KeyPress(Sender: TObject; var Key: Char);
    Procedure DBEdit10KeyPress(Sender: TObject; var Key: Char);
    Procedure DBEdit31KeyPress(Sender: TObject; var Key: Char);
    Procedure DBEdit21KeyPress(Sender: TObject; var Key: Char);
    Procedure DBEdit22KeyPress(Sender: TObject; var Key: Char);
    Procedure DBEdit19KeyPress(Sender: TObject; var Key: Char);
    Procedure DBEdit15KeyPress(Sender: TObject; var Key: Char);
    Procedure DBEdit30KeyPress(Sender: TObject; var Key: Char);
    Procedure cxDBTextEdit18KeyPress(Sender: TObject; var Key: Char);
    Procedure DBEdit94KeyPress(Sender: TObject; var Key: Char);
    Procedure DBEdit98KeyPress(Sender: TObject; var Key: Char);
    Procedure DBEdit106KeyPress(Sender: TObject; var Key: Char);
    Procedure cxDBTextEdit20KeyPress(Sender: TObject; var Key: Char);
    Procedure chk_ruralPropertiesChange(Sender: TObject);
    Procedure edt_ieKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
    Procedure PadronizarLayout();
    Procedure dbedtcontato1KeyPress(Sender: TObject; var Key: Char);
    Procedure bt_Cliente_AlterarClick(Sender: TObject);
    Procedure dbedt_razaosocialKeyPress(Sender: TObject; var Key: Char);
    Procedure dbedt_fantasiaKeyPress(Sender: TObject; var Key: Char);
    Procedure btnImprimirClick(Sender: TObject);
    Procedure CarregarDadosInternos;
    Procedure FormKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
    Procedure Duplicar_CadastroExecute(Sender: TObject);
    Procedure CarregarDados;
    Procedure CarregarUltimoCadastro;
    Procedure DBComboBox3KeyPress(Sender: TObject; var Key: Char);
    Procedure dbedtINSCRICAO_ESTADUALExit(Sender: TObject);
    Procedure DBEdit96KeyPress(Sender: TObject; var Key: Char);
    Procedure DSCertFiles1GetPEMFilePasskey(ASender: TObject;
      var APasskey: AnsiString);
    Procedure Alterar_Dados_De_Cliente(BooFocus: Boolean = true);
    Procedure Preparar_Pessoa_Fisica(BooFocus: Boolean = true);
    Procedure Preparar_Pessoa_Juridica(BooFocus: Boolean = true);
    Procedure edCPFExit(Sender: TObject);
    Procedure edCPFEnter(Sender: TObject);
    Procedure edCPFKeyPress(Sender: TObject; var Key: Char);
    Procedure edCNPJEnter(Sender: TObject);
    Procedure edCNPJExit(Sender: TObject);
    Procedure edCNPJKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
    Procedure edCNPJKeyPress(Sender: TObject; var Key: Char);
    Procedure edCNPJKeyUp(Sender: TObject; var Key: Word; Shift: TShiftState);
    Procedure btn_cepClick(Sender: TObject);
    Procedure tbcnpjGetDisplayText(Sender: TcxCustomGridTableItem;
      ARecord: TcxCustomGridRecord; var AText: string);
    Procedure tbcpfGetDisplayText(Sender: TcxCustomGridTableItem;
      ARecord: TcxCustomGridRecord; var AText: string);
    Procedure tbtelefoneGetDisplayText(Sender: TcxCustomGridTableItem;
      ARecord: TcxCustomGridRecord; var AText: string);
    Procedure tbCustomDrawCell(Sender: TcxCustomGridTableView;
      ACanvas: TcxCanvas; AViewInfo: TcxGridTableDataCellViewInfo;
      var ADone: Boolean);
    Procedure tab_consultaShow(Sender: TObject);
    Procedure tbpessoa_tipoCustomDrawCell(Sender: TcxCustomGridTableView;
      ACanvas: TcxCanvas; AViewInfo: TcxGridTableDataCellViewInfo;
      var ADone: Boolean);
    Procedure tbpessoa_tipoGetDisplayText(Sender: TcxCustomGridTableItem;
      ARecord: TcxCustomGridRecord; var AText: string);
    Procedure chkchange(Sender: TObject);
    Procedure edt_consultaKeyPress(Sender: TObject; var Key: Char);
    Procedure edt_consultaKeyUp(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    Procedure tbKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
    Procedure conveniadoMatriculaKeyPress(Sender: TObject; var Key: Char);
    Procedure conveniadoSenhaKeyPress(Sender: TObject; var Key: Char);
    Procedure btn_ramoClick(Sender: TObject);
    Procedure btn_relatorios_cliClick(Sender: TObject);
    Procedure bt_SMCClick(Sender: TObject);
    Procedure bt_AnimaisClick(Sender: TObject);
    Procedure bt_OticaClick(Sender: TObject);
    Procedure bt_ConveniadosClick(Sender: TObject);
    Procedure bt_DependentesClick(Sender: TObject);
    Procedure bt_Complemento_FinanceiroClick(Sender: TObject);
    Procedure btn_ConsultaCNPJClick(Sender: TObject);
    Procedure bt_Banco_IncluirClick(Sender: TObject);
    Procedure btn_zonaClick(Sender: TObject);
    Procedure bt_Endereco_GravarClick(Sender: TObject);
    Procedure bt_Endereco_AlterarClick(Sender: TObject);
    Procedure FormCreate(Sender: TObject);
    Procedure bt_Endereco_CancelarClick(Sender: TObject);
    Procedure bt_Contato_GravarClick(Sender: TObject);
    Procedure bt_Contato_AlterarClick(Sender: TObject);
    Procedure bt_Contato_CancelarClick(Sender: TObject);
    Procedure DB_CELULAR_1KeyPress(Sender: TObject; var Key: Char);
    Procedure DB_CELULAR_2KeyPress(Sender: TObject; var Key: Char);
    Procedure DB_TELEFONEKeyPress(Sender: TObject; var Key: Char);
    Procedure bt_Contato_IncluirClick(Sender: TObject);
    Procedure cbATIVIDADEClick(Sender: TObject);
    Procedure bt_Endereco_IncluirClick(Sender: TObject);
    Procedure bt_Banco_AlterarClick(Sender: TObject);
    Procedure bt_Banco_CancelarClick(Sender: TObject);
    Procedure DB_CONTAKeyPress(Sender: TObject; var Key: Char);
    Procedure DB_DIGITOKeyPress(Sender: TObject; var Key: Char);
    Procedure DB_OPERACAOKeyPress(Sender: TObject; var Key: Char);
    Procedure DB_AGENCIAKeyPress(Sender: TObject; var Key: Char);
    Procedure DB_DIGITO_AGKeyPress(Sender: TObject; var Key: Char);
    Procedure bt_Banco_GravarClick(Sender: TObject);
    Procedure Carrega_Enderecos;
    Procedure sql_LISTA_ENDERECOAfterScroll(DataSet: TDataSet);
    Procedure FormShow(Sender: TObject);
    Procedure tbCellDblClick(Sender: TcxCustomGridTableView;
      ACellViewInfo: TcxGridTableDataCellViewInfo; AButton: TMouseButton;
      AShift: TShiftState; var AHandled: Boolean);
    Procedure SQL_ClienteBeforePost(DataSet: TDataSet);
    Procedure sql_LISTA_ENDERECOBeforePost(DataSet: TDataSet);
    procedure DB_RAMALKeyPress(Sender: TObject; var Key: Char);
    procedure edID_CAD_RAMO_ATIVIDADE_PFChange(Sender: TObject);
    procedure FormKeyPress(Sender: TObject; var Key: Char);
    procedure btDetalhesBloqueioClick(Sender: TObject);
    procedure DBEdit17Change(Sender: TObject);
    procedure cbHistoricoBloqueiosClick(Sender: TObject);
    procedure DB_UFExit(Sender: TObject);
    procedure edLimiteCreditoExit(Sender: TObject);
    procedure edID_CAD_RAMO_ATIVIDADE_PFExit(Sender: TObject);
    procedure DB_CEPExit(Sender: TObject);
    procedure DB_CEPEnter(Sender: TObject);
    procedure DB_ID_REGIAOChange(Sender: TObject);
    procedure btRegiaoClick(Sender: TObject);
    procedure DB_ID_REGIAOExit(Sender: TObject);
    procedure edID_CAD_RAMO_ATIVIDADE_PJChange(Sender: TObject);
    procedure edID_CAD_RAMO_ATIVIDADE_PJExit(Sender: TObject);
    procedure DB_MUNICIPIOExit(Sender: TObject);
    // Procedure cxGridDBTableView3CellDblClick(Sender: TcxCustomGridTableView;
    // ACellViewInfo: TcxGridTableDataCellViewInfo; AButton: TMouseButton;
    // AShift: TShiftState; var AHandled: Boolean);

  private
    { Private declarations }
    // cad_block, updateAction: Boolean;
    conveniadosNullId: array of Integer;

    Procedure dlConsulta;
    Procedure ConsultaParaCadastro;
    Procedure padraofalse;
    Procedure Preencher_Tela_Com_Dados_da_Consulta_CNPJ;
    function EXISTE_sql_CLIENTE_ENDERECO: Boolean;
    Procedure Abrir_tabelas_relacionadas;
    Procedure Fechar_tabelas_relacionadas;
    Procedure Limpa_Tela;
    Procedure Destacar_Campos_Obrigatorios;

    Procedure Inicio;
    Procedure Posicionar_Objetos_na_Tela;
    Procedure Desabilitar_Objetos_da_Tela;
    Procedure Desabilitar_Campos_Não_Editáveis;
    Procedure Habilitar_Grupo_SubCadastros(pBooleano: Boolean);
    Procedure Habilitar_Grupo_Cliente(pBooleano: Boolean);
    Procedure Habilitar_Grupo_Endereco(pBooleano: Boolean);
    Procedure Habilitar_Grupo_Contato(pBooleano: Boolean);
    Procedure Habilitar_Grupo_Banco(pBooleano: Boolean);
    Function Salvar_Cliente:Boolean;
    Function Dados_PF_ok:Boolean;
    Function Dados_PJ_ok:Boolean;
    Procedure Impedir_Gravar_Editando(pLigar:Boolean);
    Procedure AssociaRamoAtividade;
    Procedure SalvarEnderecoCNPJ(pCODIGO:Integer);
    Procedure Procurar_CodigoIBGE_Municipio(pMUNICIPIO,pUF:String);
    Procedure Limpar_Dados_Temporarios;
  public
    { Public declarations }
  end;

var
  frm_cliente: Tfrm_cliente;
  Tipo_Empresa: String;

  // Tipo de operação que está sendo feita no cliente
  Cadastrando_ou_Alterando: String;
  vCEP_Anterior : String;
implementation

{$R *.dfm}

uses U_Municipio, u_funcoes, liberacao, relatorios,
  c_Globals, botoes_smc, convenio, dependentes, comple_financ, animais, otica,
  m_cliente_conveniado, h_Dialogs, m_Cliente, S_Parametros_Venda, h_Checks,
  vw_historico_conveniado,
  cad_atividade, cad_zona, cad_rota, cad_endereco, rel_clientes, cad_bairro,
  ConsultaCNPJ, funcoes_sistema,
  s_Module, CLIENTE_HISTORICO_BLOQUEIOS_CHB, cad_regiao;

Procedure Tfrm_cliente.bt_Cliente_GravarClick(Sender: TObject);
begin
    if not Salvar_Cliente then
       exit;

    CarregarUltimoCadastro;
    PadronizarLayout;

    // Desabilita todos os grupos
    Habilitar_Grupo_Cliente(false);
    Habilitar_Grupo_SubCadastros(false);

    // Atualizar a lista de clientes
    dlConsulta;

    // Após incluir ou alterar um cliente,
    // voltar para a lista de consulta
    tab_consulta.Show;
    // posicionando no campo de consulta
    edt_consulta.SetFocus;

end;

Procedure Tfrm_cliente.SalvarEnderecoCNPJ(pCODIGO:Integer);
var Q : tFDQuery;
begin
   q := TFDQuery.Create(nil);
   q.Connection     := Module.connection;
   q.ConnectionName := 'connection';

   Q.Close;
   Q.Sql.Clear;
   Q.SQL.Add('UPDATE cliente_endereco                ');
   Q.SQL.Add('   SET CODIGO_CLIENTE = :CODIGO_CLIENTE');
   Q.SQL.Add(' WHERE CODIGO_CLIENTE = -1             ');
   Q.ParamByName('CODIGO_CLIENTE').AsInteger := pCODIGO;
   Q.ExecSQL;

   Q.Free;
end;

Function Tfrm_cliente.Salvar_Cliente:Boolean;
var
  x: Integer;
begin
   result := false;

   //Tipo de Pessoa: PJ ou PF, obrigatório.
   if Tipo_Empresa = '' then
   begin
     wnAlerta('Campos Obrigatórios',
       'Por favor, identifique o tipo de Pessoa referente ao cadastro!');
     exit;
   end;

   //Situação Cadastral: Obrigatório
   if cbSituacaoCadastral.ItemIndex = -1 then
   begin
      wnAlerta('Campo Obrigatório',
        'Por favor, informe se o cliente está Ativo ou Inativo.');
   end;

   if Tipo_Empresa = 'FISICA' then
   begin
      // Valida dados PF
      if not Dados_PF_ok then
         exit;
   end
   else
   begin
      // Valida dados PJ
      if not Dados_PJ_ok then
         exit;
   end;

   if (SQL_Cliente.State = dsEdit  ) or
      (SQL_Cliente.State = dsInsert) then
   begin
      //Define o tipo de pessoa (Física ou Jurídica)
      SQL_ClientePESSOA_TIPO.Value := Tipo_Empresa;

      if edt_data.Text <> '' then
         SQL_ClienteDATA_NASCIMENTO.Value := strtodate(edt_data.Text);

      if edEmissao.Text <> '' then
         SQL_ClienteDATA_EMISSAO.Value    := strtodate(edEmissao.Text);

      SQL_ClienteDATA_CADASTRO.Value   := date;

      if Tipo_Empresa = 'FISICA' then
         SQL_ClienteCPF.AsString := removercaracteresespeciais(edCPF.Text)
      else
         SQL_ClienteCNPJ.AsString := removercaracteresespeciais(edCNPJ.Text);

      if chk_rural.Checked then
      begin
         SQL_ClienteCONSUMIDOR_FINAL.Value := 'NAO';
         SQL_ClienteCONSUMIDOR_TIPO.Value := 'PRODUTOR RURAL';
      end
      else
      begin
         if (Tipo_Empresa = 'JURIDICA') then
         begin
            if (dbedtINSCRICAO_ESTADUAL.Text <> '') then
            begin
               SQL_ClienteCONSUMIDOR_FINAL.Value := 'NAO';
               SQL_ClienteCONSUMIDOR_TIPO.Value := 'CONTRIBUINTE';
            end
            else
            begin
               SQL_ClienteCONSUMIDOR_FINAL.Value := 'NAO';
               SQL_ClienteCONSUMIDOR_TIPO.Value := 'NAO CONTRIBUINTE';
            end;
         end
         else
         begin
            SQL_ClienteCONSUMIDOR_FINAL.Value := 'SIM';
            SQL_ClienteCONSUMIDOR_TIPO.Value := 'CONSUMIDOR FINAL';
         end;
      end;

      //Salvar o registro
      SQL_Cliente.Post;
   end;

   SQL_Cliente.Active := false;

   SalvarEnderecoCNPJ(SQL_ClienteCODIGO.Value);

   CarregarUltimoCadastro;
   PadronizarLayout;

   //Exibe o código do cliente
   dbedt_codigo.font.Color := clBlack;

   result := True;
end;

Function Tfrm_cliente.Dados_PF_ok:Boolean;
begin
   //Valida dados obrigatórios de Pessoa Física (PF)
   //---------------------------------------------------------------------------
   Result := false;

   // Se produtor rural...
   if chk_rural.Checked then
   begin
      if simplequery('SELECT CPF_CAD_CLIENTE FROM PARAMETROS_SISTEMA').Fields[0].AsString = m_true then
      begin
         if CamposObrigatorios([dbedtNome, edt_ie],
            ['Nome', 'IE * ISENTO - Caso não possua'], [], [], [], [],
            [edCPF], ['CPF']) then
         begin
            exit { Pessoa fisica e produtor rural }
         end
      end
      else
      begin
         if CamposObrigatorios([dbedtNome, edt_ie],
            ['Nome', 'IE * ISENTO - Caso não possua'], [], [], [], [], [], []) then
         begin
            exit { Pessoa fisica e produtor rural }
         end
      end;
   end
   else
   begin
      //Não é Produtor Rural
      if simplequery('SELECT CPF_CAD_CLIENTE FROM PARAMETROS_SISTEMA').Fields[0].AsString = m_true then
      begin
         if u_funcoes.CamposObrigatorios([dbedtNome], ['Nome'], [], [], [], [], [edCPF], ['CPF']) then
         begin
            exit { Pessoa fisica normal }
         end;
      end
      else
      begin
         if u_funcoes.CamposObrigatorios([dbedtNome], ['Nome'], [], [], [], [], [], []) then
         begin
            exit { Pessoa fisica normal }
         end;
      end;
   end;
   result := True;
end;

Function Tfrm_cliente.Dados_PJ_ok:Boolean;
Begin
   //Valida dados obrigatórios de Pessoa Jurídica (PJ)
   //---------------------------------------------------------------------------
   result := false;
   if u_funcoes.CamposObrigatorios([dbedt_razaosocial, dbedt_fantasia,
           dbedtINSCRICAO_ESTADUAL], ['Razão Social', 'Nome Fantasia',
           'Inscrição Estadual * ISENTO - Caso não possua'], [], [], [], [],
           [edCNPJ], ['CNPJ']) then
      exit; { Caso existam campos obrigatórios em branco, o cadastro não prossegue }

   result := True;
End;

Procedure Tfrm_cliente.btnImprimirClick(Sender: TObject);
  begin
    if not u_funcoes.VerificaAberta(frm_relatorio) then
      frm_relatorio := Tfrm_relatorio.Create(Application);
    frm_relatorio.FRX_CLIENTE.LoadFromFile(frm_relatorio.PATH_CLIENTE, true);
    frm_relatorio.FRX_CLIENTE.showreport;
  end;

Procedure Tfrm_cliente.btnImprimirGridClick(Sender: TObject);
  var
    sql_anterior: string;
  begin
    if not u_funcoes.VerificaAberta(frm_relatorio) then
      frm_relatorio := Tfrm_relatorio.Create(Application);
    u_funcoes.ImprimirGridConsulta(frm_relatorio.SQL_Cliente, SQL_C_Clientes,
      frm_relatorio.FRX_CLIENTE, frm_relatorio.PATH_CLIENTE);
  end;

Procedure Tfrm_cliente.bt_Cliente_IncluirClick(Sender: TObject);
  begin
    if not TemAcesso(Global_Usuario_Logado, 'ADDCLI') then
      exit;

    // Define a operação - Cadastro
    Cadastrando_ou_Alterando := 'Cadastrando';
    dbedt_codigo.font.Color := clWhite;

    // Limpa Campos da Tela
    Limpa_Tela;

    //Limpar dados temporários
    Limpar_Dados_Temporarios;

    //Não exibir campo e label de data de bloqueio ao inserir
    lbInativo.visible := false;
    edDTBLOQUEIO.visible := false;
    btDetalhesBloqueio.visible := false;

    // Habilita grupos de dados
    Habilitar_Grupo_Cliente(True);
    Habilitar_Grupo_SubCadastros(true);

    // Fecha demais tabelas relacionadas ao cliente
    Fechar_tabelas_relacionadas;

    // Ativar tabela de cliente
    SQL_Cliente.Active := true;

    // Ativar tabela de incremento automático do código do cliente
    sql_increment.Active := true;

    // Criar novo registro na tabela Cliente
    SQL_Cliente.Insert;

    // valores padrão
    Tipo_Empresa := '';
    chk_rural.Checked := false;
    cbSituacaoCadastral.ItemIndex := 0; //Ativo

    // Habilitar opções
    BtnFisica.Enabled := true;
    BtnJuridica.Enabled := true;

    // Define código para o novo cliente
    // if sql_incrementAUTO_INCREMENT.Value = 0 then
    // dbedt_codigo.Text := '1'
    // else
    // dbedt_codigo.Text := inttostr(sql_incrementAUTO_INCREMENT.Value);

    // Desabilita botões Iniciar e Alterar
    // Habilita botão gravar

    //Pode...
    bt_Cliente_Cancelar.Enabled := True;
    bt_cliente_Gravar.Enabled   := True;

    //Não pode...
    bt_Cliente_Incluir.Visible := False;
    bt_Cliente_Incluir.Enabled := False;
    bt_Cliente_Alterar.Enabled := False;

    //IniciarCadastro([Bt_Cliente_Incluir, bt_Cliente_Cancelar,
    //  bt_Cliente_Alterar], true);

    // Posiciona cursor na 1a informação
    BtnFisica.SetFocus;
  end;

Procedure Tfrm_cliente.Button1Click(Sender: TObject);
  begin
    Bt_Cliente_Incluir.Enabled := true;
  end;

Procedure Tfrm_cliente.bt_Banco_CancelarClick(Sender: TObject);
  begin
    // Habilitar botão incluir Banco
    bt_Banco_Incluir.Visible := true;
    bt_Banco_Incluir.Enabled := true;

    // Habilitar botao alterar Banco
    bt_Banco_Alterar.Enabled := true;

    // Desabilitar botão cancelar edicao/alteracao de Banco
    bt_Banco_Cancelar.Enabled := false;

    // Cancelar Edição/inclusão de Registro de Banco de Cliente
    sql_LISTA_Banco.Cancel;

    //Desabilitar o grupo Banco
    Habilitar_Grupo_Banco(False);

    //Impede que grave cliente se está alterando banco
    Impedir_Gravar_Editando(False);

    //Atualizar listas de dados
    Abrir_tabelas_relacionadas;
  end;

Procedure Tfrm_cliente.chkchange(Sender: TObject);
  begin
    dlConsulta;
  end;

Procedure Tfrm_cliente.chk_ruralPropertiesChange(Sender: TObject);
  begin
    if chk_rural.Checked = true then
    begin
      edt_ie.Enabled := true;
      dbedtRG.Enabled := false;
      dbedtRG.Clear;
      // lblRG.Caption := 'IE:';
    end
    else
    begin
      // edt_ie.Visible := false;
      edt_ie.Enabled := false;
      dbedtRG.Enabled := true;
      edt_ie.Clear;
      // lblRG.Caption := 'RG:';
    end;
  end;

Procedure Tfrm_cliente.ConsultaParaCadastro;
  begin
    SQL_Cliente.Close;
    SQL_Cliente.ParamByName('pcodigo').Value := SQL_C_Clientes.fieldbyname('CODIGO').Value;
    SQL_Cliente.Open;

    //Atualizar listas de dados
    Abrir_tabelas_relacionadas;

    CarregarDados;
    tab_cadastrar.Show;
  end;

Procedure Tfrm_cliente.conveniadoMatriculaKeyPress(Sender: TObject;
  var Key: Char);
  begin
    inherited;
    Key := tfunctions.OnlyNumbers(Key);
  end;

Procedure Tfrm_cliente.conveniadoSenhaKeyPress(Sender: TObject; var Key: Char);
  begin
    inherited;
    Key := tfunctions.OnlyNumbers(Key);
  end;

Procedure Tfrm_cliente.btnMunicipClick(Sender: TObject);
  var
    Codigo_Municipio, Codigo_UF: Integer;
    qEndereco_Municipio_Estado: tFDQuery;
  begin
    // Pesquisar município
    // ----------------------------------------------------------------------------

    // Endereço - edição
    sql_LISTA_ENDERECO.Edit;

    // Criar a tela de Pesquisa Municípios
    Frm_Municipio := TFrm_Municipio.Create(Application);

    // Preencher os campos pela própria tela de pesquisa municípios.
    // Os dados da UF estavam vindo errados
    // by Paulo
    //Frm_Municipio.InformarDadosMunicipio1(DB_MUNICIPIO, DB_CODIGO_MUNICIPIO,
    //  DB_UF, DB_CODIGO_UF, DB_PAIS, DB_CODIGO_PAIS);

    // Abrir a tela de pesquisa de municípios
    Frm_Municipio.ShowModal;

    // Pegar o código do município
    Codigo_Municipio := Frm_Municipio.SQL_Municipio.FieldByName('CODIGO')
      .AsInteger;

    // Destruir a tela de pesquisa
    Frm_Municipio.Free;

    // Criar a Query que vai acessar os dados do município e preencher
    // os campos do endereço
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
      // Não encontou o município
      qEndereco_Municipio_Estado.Free;
      exit;
    end;

    // Preencher dados do município (UF / País)
    sql_LISTA_ENDERECOCODIGO_CLIENTE.AsInteger := SQL_ClienteCODIGO.AsInteger;
    sql_LISTA_ENDERECOPAIS.AsString := 'BRASIL';
    sql_LISTA_ENDERECOCODIGO_PAIS.AsString := '1058';

    // Pegar o código da UF
    Codigo_UF := qEndereco_Municipio_Estado.FieldByName('ESTADO').AsInteger;

    // Recupear os dados da UF
    qEndereco_Municipio_Estado.Close;
    qEndereco_Municipio_Estado.Sql.Clear;
    qEndereco_Municipio_Estado.SQL.Add('SELECT *               ');
    qEndereco_Municipio_Estado.SQL.Add('  from endereco_estado ');
    qEndereco_Municipio_Estado.SQL.Add(' where IBGE = :IBGE    ');
    qEndereco_Municipio_Estado.ParamByName('IBGE').AsInteger := Codigo_UF;
    qEndereco_Municipio_Estado.Open;
    if qEndereco_Municipio_Estado.Eof then
    begin
      // UF Não encontrada
      qEndereco_Municipio_Estado.Free;
      exit;
    end;

    // Preencher dados da UF
    sql_LISTA_ENDERECOUF.AsString := qEndereco_Municipio_Estado.FieldByName('UF').AsString;
    sql_LISTA_ENDERECOCODIGO_UF.AsString := IntToStr(qEndereco_Municipio_Estado.FieldByName('IBGE').AsInteger);

    // destruir a query local
    qEndereco_Municipio_Estado.Free;

    // Posiciona no próximo campo da tela - Zona
    btn_zona.SetFocus;
end;

Procedure Tfrm_cliente.Impedir_Gravar_Editando(pLigar:Boolean);
begin
    //bt_Cliente_Incluir.Visible := not pLigar;
    //bt_Cliente_Incluir.Enabled := not pLigar;
    //bt_Cliente_Gravar.Visible := true;
    bt_Cliente_Gravar.Enabled := not pLigar;
    bt_Cliente_Cancelar.Enabled := not pLigar;
end;

Procedure Tfrm_cliente.bt_Endereco_IncluirClick(Sender: TObject);
begin
    //Impede que grave cliente se está alterando endereço
    Impedir_Gravar_Editando(True);

    //Permitir informar endereço enquanto incliu cliente novo
    Salvar_Cliente;

    //Atualizar listas de dados
    Abrir_tabelas_relacionadas;

    // Desabilita inserir endereço
    bt_Endereco_Incluir.Enabled := false;
    bt_Endereco_Incluir.Visible := false;
    Habilitar_Grupo_Endereco(true);

    // desabilita botao alterar
    bt_Endereco_Alterar.Enabled := false;

    // habilita salvar endereço
    bt_Endereco_Gravar.Enabled := true;
    bt_Endereco_Gravar.Visible := true;

    // habilita cancelar inserção
    bt_Endereco_Cancelar.Enabled := true;

    sql_CLIENTE_ENDERECO.Active := True;
    sql_LISTA_ENDERECO.Active := True;
    sql_CLIENTE_ENDERECO.insert;
    sql_LISTA_ENDERECO.insert;
    DB_STATUS_CADASTRAL_ENDERECO.Checked := True;
    dbTipoEndereco.SetFocus;
end;

Procedure Tfrm_cliente.Abrir_tabelas_relacionadas;
  begin
    // Abrir demais tabelas relacionadas ao cliente
    // ----------------------------------------------------------------------------

    // Elimina endereços sem RUA informada
    LimpaEnderecos;

    // LimpaContatos;

    // Endereços
    sql_LISTA_ENDERECO.Close;
    sql_LISTA_ENDERECO.SQL.Clear;
    sql_LISTA_ENDERECO.SQL.Add('SELECT * FROM cliente_endereco         ');
    sql_LISTA_ENDERECO.SQL.Add(' WHERE CODIGO_CLIENTE = :CODIGO_CLIENTE');
    sql_LISTA_ENDERECO.ParamByName('CODIGO_CLIENTE').AsInteger := SQL_ClienteCODIGO.Value;
    sql_LISTA_ENDERECO.Open;
    if sql_LISTA_ENDERECO.eof then
    begin
      // Se não tem nenhum endereço...
      // desabilita botao alterar
      bt_Endereco_Alterar.Enabled := false;
    end;
    if sql_LISTA_ENDERECO.FieldByName('STATUS_CADASTRAL').AsString = 'ATIVO' then
      DB_STATUS_CADASTRAL_ENDERECO.Checked := True
    else
      DB_STATUS_CADASTRAL_ENDERECO.Checked := False;

    // Bancos
    with sql_LISTA_BANCO do
    begin
      Close;
      sql.Clear;
      sql.Add('SELECT *                               ');
      sql.Add('  FROM CLIENTE_BANCO                   ');
      sql.Add(' WHERE CODIGO_CLIENTE = :CODIGO_CLIENTE');
      sql.Add(' ORDER BY BANCO                        ');
      ParambyName('CODIGO_CLIENTE').AsInteger := SQL_ClienteCODIGO.Value;
      Open;
      if eof then
      begin
        // Se não tem nenhum banco...
        // desabilita botao alterar
        bt_Banco_Alterar.Enabled := false;
      end;
    end;

    // Contatos
    with sql_LISTA_CONTATO1 do
    begin
      Close;
      SQL.Clear;
      SQL.Add('SELECT * FROM cliente_contato          ');
      SQL.Add(' WHERE CODIGO_CLIENTE = :CODIGO_CLIENTE');
      ParamByName('CODIGO_CLIENTE').AsInteger := SQL_ClienteCODIGO.Value;
      Open;
      if eof then
      begin
        // Se não tem nenhum contato...
        // desabilita botao alterar
        bt_Contato_Alterar.Enabled := false;
      end;
    end;

    // Endereços
    with sql_LISTA_ENDERECO do
    begin
      Close;
      SQL.Clear;
      SQL.Add('SELECT * FROM cliente_endereco         ');
      SQL.Add(' WHERE CODIGO_CLIENTE = :CODIGO_CLIENTE');
      ParamByName('CODIGO_CLIENTE').AsInteger :=  SQL_ClienteCODIGO.Value;
      Open;
      if eof then
      begin
        // Se não tem nenhum endereço...
        // desabilita botao alterar
        bt_Endereco_Alterar.Enabled := false;
      end;

    end;

    // Otica
    //SQL_DADOS_OTICA.Open;

end;

Procedure Tfrm_cliente.bt_Banco_AlterarClick(Sender: TObject);
  begin
    //Impede que grave cliente se está alterando dados bancários
    Impedir_Gravar_Editando(True);

    // Desabilitar botão incluir Banco
    bt_Banco_Incluir.Visible := False;
    bt_Banco_Incluir.Enabled := False;

    // Desabilitar botao alterar Banco
    bt_Banco_Alterar.Enabled := false;

    // Habilitar botão cancelar edicao/alteracao de Banco
    bt_Banco_Cancelar.Enabled := true;

    //Habilitar o grupo Banco
    Habilitar_Grupo_Banco(True);

    // Editar Registro de Banco de Cliente
    sql_LISTA_Banco.Active := True;
    sql_LISTA_Banco.edit;

    // Posiciona o cursor no campo BANCO
    DB_BANCO.SetFocus;
end;

Procedure Tfrm_cliente.Alterar_Dados_De_Cliente(BooFocus: Boolean = true);
  begin
    if dbedt_codigo.Text = '' then
    begin
      Application.MessageBox('Nenhum cliente foi selecionado.', 'Alterar',
        MB_ICONWARNING + MB_OK);
      exit;
    end;

    Habilitar_Grupo_Cliente(true);
    Habilitar_Grupo_SubCadastros(true);

    Preparar_Pessoa_Fisica(BooFocus);
    Preparar_Pessoa_Juridica(BooFocus);

    // Desabilita os botoes incluir e alterar
    // Habilita os botoes cancelar e gravar

    //Não pode
    Bt_Cliente_Incluir.Visible := false;
    Bt_Cliente_Alterar.Enabled := false;

    //Pode
    bt_Cliente_Cancelar.Enabled := True;
    bt_Cliente_Gravar.Visible := True;
    bt_Cliente_Gravar.Enabled := True;

    // Edição do registro de Cliente
    DS_Cliente.Edit;
  end;

Procedure Tfrm_cliente.Preparar_Pessoa_Fisica(BooFocus: Boolean = true);
  begin
    if Tipo_Empresa = 'FISICA' then
    begin
      gpFisica.Visible := true;
      gpFisica.Enabled := true;
      gpJuridica.Enabled := false;
      gpJuridica.Visible := false;
      if BooFocus then
      begin
        dbedtNome.SetFocus;
        dbedtNome.selectall;
      end;
      BtnFisica.Enabled := true;
      gpJuridica.Visible := false;
      gpFisica.Visible := true;
    end;
  end;

Procedure Tfrm_cliente.Preparar_Pessoa_Juridica(BooFocus: Boolean = true);
  begin
    if Tipo_Empresa = 'JURIDICA' then
    begin
      gpJuridica.Visible := true;
      gpJuridica.Enabled := true;
      gpFisica.Enabled := false;
      gpFisica.Visible := false;
      if BooFocus then
      begin
        dbedt_razaosocial.SetFocus;
        dbedt_razaosocial.selectall;
      end;
      BtnJuridica.Enabled := true;
      gpFisica.Visible := false;
      gpJuridica.Visible := true;
    end;
  end;

procedure Tfrm_cliente.Procurar_CodigoIBGE_Municipio(pMUNICIPIO,pUF: String);
var Q : tFDQuery;
    vIBGE_UF, vIBGE_PAIS:Integer;
begin
   //Localiza um municipio por seu nome e uf
   //Se econtrar preenche com codigo da uf, do municipio e pais
   // e nome do pais
   //---------------------------------------------------------------------------
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
   sql_LISTA_ENDERECOCODIGO_UF.Value   := Q.FieldByName('IBGE').AsString;
   sql_LISTA_ENDERECOCODIGO_PAIS.Value := Q.FieldByName('PAIS').AsString;

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
      sql_LISTA_ENDERECOPAIS.Value := Q.FieldByName('NOME').AsString;
   end;

   //Recupera dados do município
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
      sql_LISTA_ENDERECOCODIGO_MUNICIPIO.Value := Q.FieldByName('IBGE').AsString;
   end;
   Q.Free;
end;

Procedure Tfrm_cliente.bt_Cliente_AlterarClick(Sender: TObject);
begin
    // Só pode alterar se tiver permissão para isto
    if not TemAcesso(Global_Usuario_Logado, 'ALTCLI') then
      exit;

    // Define a operação - Alteração
    Cadastrando_ou_Alterando := 'Alterando';

    Alterar_Dados_De_Cliente;
end;

Procedure Tfrm_cliente.bt_Cliente_CancelarClick(Sender: TObject);
  var
    I: Integer;
  begin
    conveniadosNullId := nil;
    SQL_Cliente.Cancel;
    SQL_Cliente.Close;
    //IniciarCadastro([Bt_Cliente_Incluir, bt_Cliente_Cancelar,
    //  bt_Cliente_Alterar], false);

    //Pode...
    Bt_Cliente_Incluir.Visible := True;
    Bt_Cliente_Incluir.Enabled := True;
    bt_Cliente_Alterar.Enabled := True;

    //Nao pode...
    bt_Cliente_Cancelar.Enabled := False;
    bt_Cliente_Gravar.Enabled := False;

    CarregarUltimoCadastro;

    PadronizarLayout;

    // Desabilitar todos os grupos
    Habilitar_Grupo_Cliente(false);
    Habilitar_Grupo_SubCadastros(false);
    Habilitar_Grupo_Endereco(false);
    Habilitar_Grupo_Contato(false);
    Habilitar_Grupo_Banco(false);

    //Limpa Dados Temporários
    Limpar_Dados_Temporarios;

  end;

Procedure Tfrm_cliente.Limpar_Dados_Temporarios;
begin
    //Limpa Dados Temporários
    Executar('DELETE FROM cliente_contato  WHERE CODIGO_CLIENTE = -1');
    Executar('DELETE FROM cliente_banco    WHERE CODIGO_CLIENTE = -1');
    Executar('DELETE FROM cliente_endereco WHERE CODIGO_CLIENTE = -1');
end;
Procedure Tfrm_cliente.BtnExcluirClick(Sender: TObject);
  begin
    if not TemAcesso(Global_Usuario_Logado, 'DELCLI') then
      exit;

    if dbedt_codigo.Text = '' then
    begin
      Application.MessageBox('Nenhum cliente foi selecionado.', 'Excluir',
        MB_ICONWARNING + MB_OK);
    end
    else
    begin
      if not TEnv.Tuser.IsAdmin then
      begin
        if TFrm_liberacao.Execute then
        begin
          ExcluirCadastro(SQL_Cliente);
        end;
      end
      else
      begin
        ExcluirCadastro(SQL_Cliente);
      end;
      CarregarUltimoCadastro;
      PadronizarLayout;
    end;

  end;

Procedure Tfrm_cliente.BtnFisicaClick(Sender: TObject);
  begin
    gpJuridica.Visible := false;
    gpFisica.Visible := true;

    chk_rural.Enabled := true;

    if gpFisica.Enabled = true then
      dbedtNome.SetFocus;
    Tipo_Empresa := 'FISICA';
    Preparar_Pessoa_Fisica;

  end;

Procedure Tfrm_cliente.BtnJuridicaClick(Sender: TObject);
  begin
    chk_rural.Enabled := false;

    gpFisica.Visible   := False;
    gpJuridica.Visible := True;

    if gpJuridica.Enabled = true then
      dbedt_razaosocial.SetFocus;
    Tipo_Empresa := 'JURIDICA';
    Preparar_Pessoa_Juridica;
  end;

Procedure Tfrm_cliente.GridClientesDblClick(Sender: TObject);
  begin
    u_funcoes.ConsultarCadastros(SQL_Cliente,
      quotedstr(inttostr(SQL_C_Clientescodigo.Value) + '%'), 'CLIENTE',
      'CODIGO', 'pcodigo', '', '', '', 0, 0);
    tab_cadastrar.Show;
    CarregarDadosInternos;
  end;

procedure Tfrm_cliente.Habilitar_Grupo_Banco(pBooleano: Boolean);
  begin
    // Habilita/desabilita campos de Banco
    // ---------------------------------------------------------------------------
    DB_BANCO.Enabled     := pBooleano;
    DB_CONTA.Enabled     := pBooleano;
    DB_DIGITO.Enabled    := pBooleano;
    DB_OPERACAO.Enabled  := pBooleano;
    DB_AGENCIA.Enabled   := pBooleano;
    DB_DIGITO_AG.Enabled := pBooleano;
  end;

Procedure Tfrm_cliente.Habilitar_Grupo_Cliente(pBooleano: Boolean);
  begin
    // Habilita/desabilita campos do cliente
    // ---------------------------------------------------------------------------
    dbedt_codigo.Enabled        := pBooleano;
    gpTipoPessoaFJ.Enabled      := pBooleano;
    gpData.Enabled              := pBooleano;
    cbSituacaoCadastral.Enabled := pBooleano;
    DBEdit17.Enabled            := pBooleano;
    gpFisica.Enabled            := pBooleano;
    gpJuridica.Enabled          := pBooleano;
    cbATIVIDADE.Enabled         := pBooleano;
  end;

Procedure Tfrm_cliente.Habilitar_Grupo_Contato(pBooleano: Boolean);
  begin
    // Habilita/desabilita campos de Contato
    // ---------------------------------------------------------------------------
    DB_CONTATO_RESPONSAVEL.Enabled := pBooleano;
    DB_FUNCAO.Enabled              := pBooleano;
    DB_TELEFONE.Enabled            := pBooleano;
    DB_RAMAL.Enabled               := pBooleano;
    DB_CELULAR_1.Enabled           := pBooleano;
    DB_CELULAR_2.Enabled           := pBooleano;
    DB_WHATSAPP.Enabled            := pBooleano;
    DB_EMAIL.Enabled               := pBooleano;
  end;

Procedure Tfrm_cliente.Habilitar_Grupo_Endereco(pBooleano: Boolean);
  begin
    // Habilita/desabilita campos de endereço
    // ---------------------------------------------------------------------------
    DB_STATUS_CADASTRAL_ENDERECO.Enabled := pBooleano;
    dbTipoEndereco.Enabled               := pBooleano;
    DB_RUA.Enabled                       := pBooleano;
    DB_NUMERO.Enabled                    := pBooleano;
    DB_BAIRRO.Enabled                    := pBooleano;
    DB_COMPLEMENTO.Enabled               := pBooleano;
    DB_CEP.Enabled                       := pBooleano;
    DB_MUNICIPIO.Enabled                 := pBooleano;
    DB_CODIGO_MUNICIPIO.Enabled          := pBooleano;
    DB_ZONA.Enabled                      := pBooleano;
    DB_ID_REGIAO.Enabled                 := pBooleano;
    edREG_DESCRICAO.Enabled              := pBooleano;
    DB_UF.Enabled                        := pBooleano;
    DB_CODIGO_UF.Enabled                 := pBooleano;
    DB_PAIS.Enabled                      := pBooleano;
    DB_CODIGO_PAIS.Enabled               := pBooleano;
    btn_cep.Enabled                      := pBooleano;
    btnMunicip.Enabled                   := pBooleano;
    btn_zona.Enabled                     := pBooleano;
    btRegiao.Enabled                     := pBooleano;
end;

Procedure Tfrm_cliente.Habilitar_Grupo_SubCadastros(pBooleano: Boolean);
begin
    // Habilita/desabilita botões de cadastro de Subcadastros
    // ---------------------------------------------------------------------------

    // Endereço
    // -----------------------------------------
    //Habilitar_Grupo_Endereco(pBooleano);
    bt_Endereco_Incluir.Visible := True; // pBooleano;
    bt_Endereco_Incluir.Enabled := pBooleano;
    if sql_LISTA_ENDERECO.eof then
    begin
      // Se não tem nenhum endereço...
      // desabilita botao alterar
      bt_Endereco_Alterar.Enabled := false;
    end
    else
      bt_Endereco_Alterar.Enabled := pBooleano;
    bt_Endereco_Cancelar.Enabled := false;

    // Bancos
    // -----------------------------------------
    //Habilitar_Grupo_Banco(pBooleano);
    bt_Banco_Incluir.Visible := True; // pBooleano;
    bt_Banco_Incluir.Enabled := pBooleano;
    if sql_LISTA_BANCO.Eof then
    begin
      // Se não tem nenhum banco...
      // desabilita botao alterar
      bt_Banco_Alterar.Enabled := false;
    end
    else
      bt_Banco_Alterar.Enabled := pBooleano;
    bt_Banco_Cancelar.Enabled := false;

    // Contatos
    // -----------------------------------------
    //Habilitar_Grupo_Contato(pBooleano);
    bt_Contato_Incluir.Visible := True; // pBooleano;
    bt_Contato_Incluir.Enabled := pBooleano;
    if sql_LISTA_CONTATO1.eof then
    begin
      // Se não tem nenhum contato...
      // desabilita botao alterar
      bt_Contato_Alterar.Enabled := false;
    end
    else
      bt_Contato_Alterar.Enabled := pBooleano;
    bt_Contato_Cancelar.Enabled := false;

    // etc...
    // -----------------------------------------

  end;

Procedure Tfrm_cliente.Limpa_Tela;
  var
    i: integer;
  begin
    // Limpa os campos da tela que não estão linkados
    // diretamente a um registro/tabela no banco de dados
    // ---------------------------------------------------
    for i := 0 to frm_cliente.ComponentCount - 1 do
    begin
      // Limpa Edits
      if frm_cliente.Components[i] is TEdit then
        (frm_cliente.Components[i] as TEdit).Text := '';
      // Limpa MaskEdits
      if frm_cliente.Components[i] is TMaskEdit then
        (frm_cliente.Components[i] as TMaskEdit).Text := '';
    end;

    // Situação cadastral = não definida
    cbSituacaoCadastral.ItemIndex := -1

  end;

Procedure Tfrm_cliente.edCPFEnter(Sender: TObject);
  begin
    // edCPF.EditMask := '';
  end;

Procedure Tfrm_cliente.edCPFExit(Sender: TObject);
  var
    resultado, nome_cli: string;
    qry: TFDQuery;
  begin
    if bt_Cliente_Cancelar.focused then
      exit;

    if edCPF.Text = '' then
      exit;
    if not CHEK_CPF(edCPF.Text) then
    begin
      ShowMessage('CPF inválido');
      edCPF.SetFocus;
      exit;
    end;

    resultado := removercaracteresespeciais(edCPF.Text);
    if length(resultado) = 11 then
    begin
      qry := simplequery('select codigo, razao_social, fantasia ' +
        '  from cliente ' + ' where cpf="' + resultado + '" ' +
        '   and codigo <> "' + dbedt_codigo.Text + '"');
      if qry <> nil then
      begin
        with qry do
        begin
          if Fields[1].Text <> emptystr then
            nome_cli := Fields[1].Text;
          if nome_cli = emptystr then
            if Fields[2].Text <> emptystr then
              nome_cli := Fields[2].Text;
          wnAlerta('Cadastro Cliente', sLineBreak + sLineBreak + 'CPF ' +
            resultado + ' já está cadastrado no Cliente: ' + sLineBreak +
            'Código: ' + Fields[0].Text + sLineBreak + 'Nome: ' + nome_cli);
          edCPF.selectall;
          edCPF.SetFocus;
        end;
      end;
      cnpjcpf(edCPF);
    end;

    cnpjcpf(edCPF);
  end;

Procedure Tfrm_cliente.edCPFKeyPress(Sender: TObject; var Key: Char);
  begin
    inherited;
    Key := apenasnumeros(Key);
  end;

Procedure Tfrm_cliente.edCNPJEnter(Sender: TObject);
  begin
    edCNPJ.EditMask := '';
  end;

Procedure Tfrm_cliente.edCNPJExit(Sender: TObject);
  begin
    if edCNPJ.Text = '' then
      exit;
    if not CHEK_CGC(edCNPJ.Text) then
    begin
      ShowMessage('CNPJ inválido');
      edCNPJ.SetFocus;
      exit;
    end;
    cnpjcpf(edCNPJ);
  end;

Procedure Tfrm_cliente.edCNPJKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
  begin
    if Key in [VK_RETURN, VK_TAB] then
      cbSitTribICMS.SetFocus;
  end;

Procedure Tfrm_cliente.edCNPJKeyPress(Sender: TObject; var Key: Char);
  begin
    inherited;
    Key := apenasnumeros(Key);
  end;

Procedure Tfrm_cliente.edCNPJKeyUp(Sender: TObject; var Key: Word;
  Shift: TShiftState);
  var
    resultado, nome_cli: string;
    qry: TFDQuery;
  begin
    resultado := removercaracteresespeciais(edCNPJ.Text);
    if length(resultado) = 14 then
    begin
      qry := simplequery('select codigo, razao_social, fantasia ' +
        '  from cliente ' + ' where cnpj="' + resultado + '"' +
        '   and codigo <> "' + dbedt_codigo.Text + '"');
      if qry <> nil then
      begin
        with qry do
        begin
          if Fields[1].Text <> emptystr then
            nome_cli := Fields[1].Text;
          if nome_cli = emptystr then
            if Fields[2].Text <> emptystr then
              nome_cli := Fields[2].Text;
          wnAlerta('Cadastro Cliente', sLineBreak + sLineBreak + 'CNPJ ' +
            resultado + ' já está cadastrado no Cliente: ' + sLineBreak +
            'Campo: ' + Fields[0].Text + sLineBreak + 'Nome: ' + nome_cli);
          edCNPJ.selectall;
          edCNPJ.SetFocus;
        end;
      end;
      cnpjcpf(edCNPJ);
    end;
  end;

Procedure Tfrm_cliente.PadronizarLayout;
  begin
    // lblRG.Caption := 'RG:';
    // wander//edt_ie.Visible := false;
    edt_ie.Enabled := false;
    dbedtRG.Enabled := true;

    Tipo_Empresa := '';
    chk_rural.Enabled := false;
    chk_rural.Checked := false;
    edt_data.Clear;
    edEmissao.Clear;
    btn_ramo.Enabled := False;
    CarregarDadosInternos;
  end;

Procedure Tfrm_cliente.Posicionar_Objetos_na_Tela;
  begin
    // Posiciona objetos na tela em tempo de execução
    // e define valores-padrão.
    // ---------------------------------------------------------------------------

    // Posicionar o grupo Pessoa Física
    with gpFisica do
    begin
      Caption := '  P. Física  ';
      Color := clBtnFace;
      Font.Color := clWindowText;
      Left := 17;
      Top := 92;
    end;

    // Posicionar o botão de Incluir cliente
    with bt_Cliente_Incluir do
    begin
      Enabled := True;
      Caption := 'Incluir';
      Colors.DefaultText := clDefault;
      Font.Color := clWindowText;
      Left := 1121;
      Top  :=   15;
    end;

    // Posicionar o botão de Incluir endereço
    with bt_Endereco_Incluir do
    begin
      Enabled := False;
      Visible := True;
      Caption := 'Incluir';
      Colors.DefaultText := clDefault;
      Font.Color := clWindowText;
      Left := 265;
      Top  :=  20;
    end;

    // Posicionar o botão de Incluir contato
    with bt_Contato_Incluir do
    begin
      Enabled := False;
      Caption := 'Incluir';
      Colors.DefaultText := clDefault;
      Font.Color := clWindowText;
      Left := 251;
      Top  :=  20;
    end;

    // Posicionar o botão de Incluir banco
    with bt_Banco_Incluir do
    begin
      Enabled := False;
      Caption := 'Incluir';
      Colors.DefaultText := clDefault;
      Font.Color := clWindowText;
      Left := 236;
      Top  :=  26;
    end;
  end;

Procedure Tfrm_cliente.bt_Banco_GravarClick(Sender: TObject);
  begin
    if sql_LISTA_Banco.FieldByName('BANCO').AsString = '' then
    begin
      ShowMessage('Informe o Banco');
      DB_BANCO.SetFocus;
      exit;
    end;
    if sql_LISTA_Banco.FieldByName('AGENCIA').AsString = '' then
    begin
      ShowMessage('Informe a Agência');
      DB_AGENCIA.SetFocus;
      exit;
    end;
    if sql_LISTA_Banco.FieldByName('CONTA').AsString = '' then
    begin
      ShowMessage('Informe a Conta');
      DB_CONTA.SetFocus;
      exit;
    end;

    sql_LISTA_Banco.FieldByName('CODIGO_CLIENTE').AsString := dbedt_codigo.Text;
    sql_LISTA_Banco.Post;

    // Habilitar botão incluir Banco
    bt_Banco_Incluir.Visible := True;
    bt_Banco_Incluir.Enabled := True;

    // Habilitar botao alterar Banco
    bt_Banco_Alterar.Enabled := True;

    // Desabilitar botão cancelar edicao/alteracao de Banco
    bt_Banco_Cancelar.Enabled := False;

    //Desabilitar o grupo Banco
    Habilitar_Grupo_Banco(False);

    //Impede que grave cliente se está alterando banco
    Impedir_Gravar_Editando(False);

    //Atualizar lista de dados
    Abrir_tabelas_relacionadas;

    // MessageDLG('ATENÇÃO: Operação concluída com sucesso', mtInformation, [mbOk], 0);
  end;

Procedure Tfrm_cliente.SQL_ClienteBeforePost(DataSet: TDataSet);
  begin
    // Ajustes antes de salvar o registro do cliente
    // ---------------------------------------------------------------------------

    // Se o cliente está ativo mas será bloqueado:
    // a) Gravar a data do bloqueio
    // b) Registrar no log de auditoria do sistema
    if SQL_ClienteSTATUS_CADASTRAL.Value = 'ATIVO' then
    begin
      // O cliente estava ativo
      if cbSituacaoCadastral.ItemIndex = 1 then
      begin
        // O cliente será bloqueado
        // Registrar detalhes do bloqueio
        SQL_ClienteDTBLOQUEIO.Value := DataServidor;
        SQL_ClienteHRBLOQUEIO.Value := HoraServidor;
        SQL_ClienteUSUBLOQUEIO.Value := Global_Usuario_Logado;
        SQL_ClienteMAQBLOQUEIO.Value := NomeComputador;
      end;
    end;

    // Registrar detalhes de alteração/inclusão cadastral
    SQL_ClienteDTALTEROU.Value := DataServidor;
    SQL_ClienteHRALTEROU.Value := HoraServidor;
    SQL_ClienteUSUALTEROU.Value := Global_Usuario_Logado;
    SQL_ClienteMAQALTEROU.Value := NomeComputador;

    // Registrar o histórico de bloqueio/ativação
    // Somente se mudou o status cadastral...

    // Se bloqueou...
    if SQL_ClienteSTATUS_CADASTRAL.Value = 'ATIVO' then
    begin
      // Estava ativo...
      if cbSituacaoCadastral.ItemIndex = 1 then
      begin
        // E foi bloqueado...
        // Registrar alteração de status cadastral...
        Registrar_Historico_Bloqueios(SQL_ClienteCODIGO.Value, 'BLOQUEADO');
        RegistraLog('Bloqueou Cliente [' + SQL_ClienteCODIGO.AsString + '-' +
          SQL_ClienteRAZAO_SOCIAL.AsString + ' ]');
      end;
    end;

    // Se desbloqueou...
    if SQL_ClienteSTATUS_CADASTRAL.Value = 'INATIVO' then
    begin
      // Estava inativo...
      if cbSituacaoCadastral.ItemIndex = 0 then
      begin
        // E foi ativado...
        // Registrar alteração de status cadastral...
        Registrar_Historico_Bloqueios(SQL_ClienteCODIGO.Value, 'DESBLOQUEADO');
        RegistraLog('Desbloqueou Cliente [ ' + SQL_ClienteCODIGO.AsString + '-'
          + SQL_ClienteRAZAO_SOCIAL.AsString + ' ]');
      end;
    end;

    // Aplicar o status cadastral do/ao cliente
    // Ativo/Inativo
    Case cbSituacaoCadastral.ItemIndex of
      0:
        SQL_ClienteSTATUS_CADASTRAL.Value := 'ATIVO';
      1:
        SQL_ClienteSTATUS_CADASTRAL.Value := 'INATIVO';
    End;

  end;

Procedure Tfrm_cliente.sql_LISTA_ENDERECOAfterScroll(DataSet: TDataSet);
begin
  // Flag Ativo/Inativo
  if sql_LISTA_ENDERECO.FieldByName('STATUS_CADASTRAL').AsString = 'ATIVO' then
    DB_STATUS_CADASTRAL_ENDERECO.Checked := True
  else
    DB_STATUS_CADASTRAL_ENDERECO.Checked := False;
end;

Procedure Tfrm_cliente.sql_LISTA_ENDERECOBeforePost(DataSet: TDataSet);
  begin
    // Tratar o status cadastral do Endereço do Cliente
    // Ativo/Inativo
    if DB_STATUS_CADASTRAL_ENDERECO.Checked then
      sql_LISTA_ENDERECOSTATUS_CADASTRAL.Value := 'ATIVO'
    else
      sql_LISTA_ENDERECOSTATUS_CADASTRAL.Value := 'INATIVO';
  end;

Procedure Tfrm_cliente.Carrega_Enderecos;
  begin
    // sql_LISTA_ENDERECO.Close;
    // sql_LISTA_ENDERECO.SQL.Clear;
    // sql_LISTA_ENDERECO.SQL.Add('SELECT * FROM cliente_endereco         ');
    // sql_LISTA_ENDERECO.SQL.Add(' WHERE CODIGO_CLIENTE = :CODIGO_CLIENTE');
    // sql_LISTA_ENDERECO.ParamByName('CODIGO_CLIENTE').AsInteger:= SQL_ClienteCODIGO.Value;
    // sql_LISTA_ENDERECO.Open;
  end;

Procedure Tfrm_cliente.CarregarDados;
  begin
    if SQL_ClienteCODIGO.Text <> '' then
    begin
      edLimiteCredito.Text := Float_to_String(SQL_ClienteLIMITE_CREDITO.Value);
      Carrega_Enderecos;
      edt_data.Text := datetostr(SQL_ClienteDATA_NASCIMENTO.Value);
      if SQL_ClienteDATA_NASCIMENTO.Value < StrToDate('01/01/1900') then
         edt_data.clear;

      edEmissao.Text := datetostr(SQL_ClienteDATA_EMISSAO.Value);
      if SQL_ClienteDATA_EMISSAO.Value < StrToDate('01/01/1900') then
         edEmissao.clear;

      // Tratar data de bloqueio
      // --------------------------------------------------------------------------
      lbInativo.Visible := false;
      edDTBLOQUEIO.visible := false;
      btDetalhesBloqueio.visible := false;
      // Se o cliente está bloqueado....
      if SQL_ClienteSTATUS_CADASTRAL.Value = 'INATIVO' then
      begin
        // Se há a informação do usuário que bloqueou...
        if SQL_ClienteUSUBLOQUEIO.AsString <> '' Then
        begin
          // Exibir data do bloqueio
          lbInativo.Visible := true;
          edDTBLOQUEIO.visible := true;
          edDTBLOQUEIO.DateTime := SQL_ClienteDTBLOQUEIO.AsDateTime;
          btDetalhesBloqueio.visible := true;
        end;
      end;
    end;

    BtnFisica.Enabled := true;
    BtnJuridica.Enabled := true;
    if SQL_ClientePESSOA_TIPO.Value = 'FISICA' then
    begin
      gpFisica.Visible := true;
      gpJuridica.Visible := false;
      BtnFisica.Enabled := true;
      // BtnJuridica.Enabled := false;
      chk_rural.Enabled := true;
      Tipo_Empresa := 'FISICA';
      edCPF.EditMask := '';
      edCPF.Text := removercaracteresespeciais(SQL_ClienteCPF.AsString);
      cnpjcpf(edCPF);
    end
    else if SQL_ClientePESSOA_TIPO.Value = 'JURIDICA' then
    begin
      DB_DATA_CADASTRO.DateTime := SQL_Cliente.FieldByName('DATA_CADASTRO')
        .AsDateTime;
      gpJuridica.Visible := true;
      gpFisica.Visible := false;
      chk_rural.Enabled := false;
      // BtnFisica.Enabled := false;
      BtnJuridica.Enabled := true;
      Tipo_Empresa := 'JURIDICA';
      edCNPJ.EditMask := '';
      edCNPJ.Text := removercaracteresespeciais(SQL_ClienteCNPJ.AsString);
      cnpjcpf(edCNPJ);
    end
    else
    begin
      gpFisica.Visible := true;
      gpJuridica.Visible := false;
      BtnFisica.Enabled := true;
      // BtnJuridica.Enabled := false;
      chk_rural.Enabled := true;
      edCPF.Text := '';
      edCNPJ.Text := '';
      Tipo_Empresa := 'FISICA';
    end;

    if SQL_ClienteSTATUS_CADASTRAL.Value = 'ATIVO' then
      cbSituacaoCadastral.ItemIndex := 0
    else
      cbSituacaoCadastral.ItemIndex := 1;

    if SQL_ClienteCONSUMIDOR_TIPO.Value = 'PRODUTOR RURAL' then
    begin
      // edt_ie.Visible := true;
      // lblRG.Caption := 'IE:';
      edt_ie.Enabled := true;
      dbedtRG.Enabled := false;

      chk_rural.Enabled := true;
      chk_rural.Checked := true;
    end;

    if not tchecks.dateIsNull(SQL_Clienteconvenio_inicio.Value) then
      // convenioInicio.date := SQL_Clienteconvenio_inicio.Value
    else
      // convenioInicio.Clear;

      if not tchecks.dateIsNull(SQL_Clienteconvenio_fim.Value) then
        // convenioFim.date := SQL_Clienteconvenio_fim.Value
      else
        // convenioFim.Clear;
end;

Procedure Tfrm_cliente.CarregarDadosInternos;
  begin
    CarregarDados;

    padraofalse;

    CamposObrigatorios_CorPadrao([dbedtNome, dbedtRG, DB_RUA, DB_NUMERO,
      DB_BAIRRO, DB_MUNICIPIO, DB_CEP, dbedt_razaosocial, dbedt_fantasia,
      dbedtINSCRICAO_ESTADUAL], [], []);

    edCPF.Color := clWhite;
    edCNPJ.Color := clWhite;
//    IniciarCadastro([Bt_Cliente_Incluir, bt_Cliente_Cancelar,
//      bt_Cliente_Alterar], false);
  end;

Procedure Tfrm_cliente.padraofalse;
  begin
    { AlterarEnabled([gpData, gpEndereco, gpContato, gpBanco,
      chk_concerssionaria, chk_rural, btn_bairro, btn_cep, btnMunicip, btn_zona,
      DBComboBox1, cxComboBox4, bt_Endereco_Gravar, bt_Endereco_Alterar, bt_Endereco_Cancelar,
      cxButton19, cxButton20, bt_Contato_Cancelar, bt_Banco_Alterar, bt_Ba, bt_Banco_Cancelar,
      DBComboBox3, cbSitTribICMS, gpTipoPessoaFJ, gpFisica, gpJuridica, bt_Endereco_Incluir], false);
      gpEndereco.Enabled:= True;
    }
  end;

Procedure Tfrm_cliente.CarregarUltimoCadastro;
  begin
    sql_increment.Active := false;
    sql_increment.Active := true;
    with SQL_Cliente do
    begin
      Active := false;
      Close;
      Params.Add.Name := 'pcodigo';
      ParamByName('pcodigo').Value :=
        (sql_incrementAUTO_INCREMENT.asInteger - 1);
      Open;
      Active := true;
    end;
    with sql_CLIENTE_ENDERECO do
    begin
      Active := false;
      Close;
      Params.Add.Name := 'pcodigo';
      ParamByName('pcodigo').Value :=
        (sql_incrementAUTO_INCREMENT.asInteger - 1);
      Open;
      Active := true;
    end;
    with sql_CLIENTE_CONTATO do
    begin
      Active := false;
      Close;
      Params.Add.Name := 'pcodigo';
      ParamByName('pcodigo').Value :=
        (sql_incrementAUTO_INCREMENT.asInteger - 1);
      Open;
      Active := true;
    end;
    CarregarDados;
  end;

Procedure Tfrm_cliente.Fechar_tabelas_relacionadas;
  begin
    // Fecha demais tabelas relacionadas ao cliente
    // ----------------------------------------------------------------------------

    // Endereços
    sql_LISTA_ENDERECO.Close;
    sql_CLIENTE_ENDERECO.Close;
    // Habilita inserir endereço
    bt_Endereco_Incluir.Enabled := true;
    bt_Endereco_Incluir.Visible := true;

    // desabilita botao alterar
    bt_Endereco_Alterar.Enabled := false;

    // Desabilita cancelar inserção
    bt_Endereco_Cancelar.Enabled := false;

    // Bancos
    sql_LISTA_BANCO.Close;
    sql_CLIENTE_BANCO.Close;
    // Habilita inserir banco
    bt_Banco_Incluir.Enabled := true;
    bt_Banco_Incluir.Visible := true;

    // desabilita botao alterar
    bt_Banco_Alterar.Enabled := false;

    // Desabilita cancelar inserção
    bt_Banco_Cancelar.Enabled := false;

    // Contatos
    sql_CLIENTE_CONTATO.Close;
    sql_LISTA_CONTATO1.Close;
    // Habilitar botão incluir contato
    bt_Contato_Incluir.Visible := true;
    bt_Contato_Incluir.Enabled := true;

    // Desabilitar botao alterar contato
    bt_Contato_Alterar.Enabled := false;

    // Desabilitar botão cancelar edicao/alteracao de contato
    bt_Contato_Cancelar.Enabled := false;

    // Otica
    SQL_DADOS_OTICA.Close;
  end;

Procedure Tfrm_cliente.FormClose(Sender: TObject; var Action: TCloseAction);
  begin
    Action := cafree;
    self := nil;
  end;

Procedure Tfrm_cliente.FormCreate(Sender: TObject);
  begin
    sql_LISTA_ENDERECO.Open;
    sql_LISTA_CONTATO1.Open;

    sql_LISTA_CONTATO1.Active := true;
    sql_LISTA_ENDERECO.Active := true;

    padraofalse;
  end;

Procedure Tfrm_cliente.FormKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
    u_funcoes.TeclasAtalho(Key, [VK_F1, VK_F2, VK_F3, VK_F4, VK_F6],
      [bt_Cliente_Incluir, bt_Cliente_Gravar, bt_Cliente_Cancelar,
      bt_Cliente_Alterar]);
end;

procedure Tfrm_cliente.FormKeyPress(Sender: TObject; var Key: Char);
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

Procedure Tfrm_cliente.FormShow(Sender: TObject);
begin
  Inicio;
end;

Procedure Tfrm_cliente.Inicio;
begin
    //Garantir que todas as tabelas relacionadas a cliente estejam fechadas
    SQL_Cliente.Close;
    Fechar_tabelas_relacionadas;

    // Acertar o Layout da Tela
    Posicionar_Objetos_na_Tela;

    // Desabilitar Campos e Objetos da Tela
    Desabilitar_Campos_Não_Editáveis;
    Desabilitar_Objetos_da_Tela;

    // Desabilitar Grupos da Tela
    Habilitar_Grupo_Cliente(false);
    Habilitar_Grupo_Endereco(false);
    Habilitar_Grupo_Contato(false);
    Habilitar_Grupo_Banco(false);

    // Habilitar a rolagem das listas dos subcadastros
    gpEndereco.Enabled := True;
    gpContato.Enabled := True;
    gpBanco.Enabled := True;

    // Atualizar a lista de clientes
    edt_consulta.Text := '';
    dlConsulta;

    //Destar Campos Obrigatórios
    Destacar_Campos_Obrigatorios;

    // Ao abrir a tela, ir para a lista de consulta
    tab_consulta.Show;

    // posicionando no campo de consulta
    edt_consulta.SetFocus;
end;

Procedure Tfrm_cliente.btnSintegraClick(Sender: TObject);
  begin
    ShellExecute(GetDesktopWindow, 'open',
      pchar('https://portalcontribuinte.sefin.ro.gov.br/Publico/parametropublica.jsp'),
      nil, nil, sw_ShowNormal);
  end;

// AQUI A CONSULTA CEP POR IBGE

Procedure Tfrm_cliente.btn_cepClick(Sender: TObject);
  var
    UF, RUA, BAIRRO, CIDADE: STRING;
    qry: TFDQuery;
  begin
    if RemoverEspacoEmBranco(removercaracteresespeciais(DB_CEP.Text)) <> emptystr
    then
    begin
      ConsultarCep(RemoverEspacoEmBranco(removercaracteresespeciais(DB_CEP.Text)
        ), UF, CIDADE, RUA, BAIRRO);
      DB_UF.Text := UF;
      DB_MUNICIPIO.Text := CIDADE;
      DB_RUA.Text := RUA;
      DB_BAIRRO.Text := BAIRRO;

      DB_UF.field.Text := UF;
      DB_MUNICIPIO.field.Text := CIDADE;
      DB_RUA.field.Text := RUA;
      DB_BAIRRO.field.Text := BAIRRO;

      qry := simplequery
        ('SELECT IBGE, ESTADO FROM ENDERECO_MUNICIPIO WHERE NOME = ?',
        [CIDADE]);
      if qry <> nil then
      begin
        DB_CODIGO_MUNICIPIO.Text := qry.fieldbyname('IBGE').AsString;
        DB_CODIGO_MUNICIPIO.field.Text := qry.fieldbyname('IBGE').AsString;
        DB_CODIGO_PAIS.Text :=
          simplequery('SELECT PAIS FROM ENDERECO_ESTADO WHERE IBGE = ?',
          [qry.fieldbyname('ESTADO').AsString]).Fields[0].AsString;
        DB_CODIGO_PAIS.field.Text := DB_CODIGO_PAIS.Text;
        DB_PAIS.Text :=
          simplequery('SELECT NOME FROM ENDERECO_PAIS WHERE CODIGO = ?',
          [DB_CODIGO_PAIS.Text]).Fields[0].AsString;
        DB_PAIS.field.Text := DB_PAIS.Text;
      end;
    end
    else
      wnAlerta('Consultar CEP', sLineBreak + 'Informe um cep!');

  end;

Procedure Tfrm_cliente.btn_ramoClick(Sender: TObject);
begin
   AssociaRamoAtividade;
end;

Procedure Tfrm_cliente.btn_relatorios_cliClick(Sender: TObject);
  begin
    frm_rel_clientes := Tfrm_rel_clientes.CREATE(Application);
    frm_rel_clientes.ShowModal;
  end;

{ Procedure Tfrm_cliente.btn_zonaClick(Sender: TObject);
  begin
  FRM_cad_zona := TFRM_cad_zona.CREATE(Application);
  FRM_cad_zona.ShowModal;
  //edtZona.Text := FRM_cad_zona.SQL_LISTADESCRICAO.value;
  end;

  Procedure Tfrm_cliente.btn_enderecoClick(Sender: TObject);
  begin
  FRM_cad_endereco := TFRM_cad_endereco.CREATE(Application);
  FRM_cad_endereco.ShowModal;
  // edRua.Text := FRM_cad_endereco.SQL_LISTADESCRICAO.value;
  end; }

Procedure Tfrm_cliente.bt_DependentesClick(Sender: TObject);
  begin
    fmr_dependentes := Tfmr_dependentes.Create(nil);
    fmr_dependentes.ShowModal;
  end;

Procedure Tfrm_cliente.bt_Endereco_GravarClick(Sender: TObject);
  begin
    // Gravar dados do endereço do cliente
    // -------------------------------------------------------------------------

    //NO ENDEREÇO DADOS COMO:
    //RUA, Nº, BAIRRO, CIDADE, CÓDIGO DO MUNICIPIO, SÃO OBRIGATÓRIOS,
    //NÃO DEIXAR GRAVAR O CADASTRO SEM ESSES DADOS.
    //Rodrigo em 29/04/20
    //--------------------------------------------------------------------------

    // Critica dados obrigatórios do endereço:
    //-Rua
    if DB_RUA.Text = '' then
    begin
      ShowMessage('Informe a Rua do Endereço');
      DB_RUA.SetFocus;
      exit;
    end;
    //-Número
    if DB_NUMERO.Text = '' then
    begin
      ShowMessage('Informe o Número do endereço');
      DB_NUMERO.SetFocus;
      exit;
    end;
    //-Bairro
    if DB_BAIRRO.Text = '' then
    begin
      ShowMessage('Informe o Bairro do endereço');
      DB_BAIRRO.SetFocus;
      exit;
    end;
    //-Cidade
    if DB_MUNICIPIO.Text = '' then
    begin
      ShowMessage('Informe o Município do endereço');
      DB_MUNICIPIO.SetFocus;
      exit;
    end;
    //-Código do Município
    if DB_CODIGO_MUNICIPIO.Text = '' then
    begin
      ShowMessage('Informe o Código do Município do endereço');
      DB_CODIGO_MUNICIPIO.SetFocus;
      exit;
    end;
    //-CEP
    if DB_CEP.Text = '' then
    begin
      ShowMessage('Informe o CEP do endereço');
      DB_CEP.SetFocus;
      exit;
    end;
    //-UF
    if DB_UF.Text = '' then
    begin
      ShowMessage('Informe a UF do endereço');
      DB_UF.SetFocus;
      exit;
    end;
    //-Código da UF
    if DB_CODIGO_UF.Text = '' then
    begin
      ShowMessage('Informe o código da UF do endereço');
      DB_CODIGO_UF.SetFocus;
      exit;
    end;
    //-País
    if DB_PAIS.Text = '' then
    begin
      ShowMessage('Informe o País do endereço');
      DB_PAIS.SetFocus;
      exit;
    end;
    //-Código do País
    if DB_CODIGO_PAIS.Text = '' then
    begin
      ShowMessage('Informe o Código do País do endereço');
      DB_CODIGO_PAIS.SetFocus;
      exit;
    end;

    // Critica dados obrigatórios do endereço:
    // Município e rua
    //if u_funcoes.CamposObrigatorios([DB_MUNICIPIO, DB_RUA],
    //  ['Município', 'Rua | Avenida'], [], [], [], []) then
    //  Exit;

    // Salva o registro de endereço do cliente
    sql_LISTA_ENDERECOCODIGO_CLIENTE.Value := SQL_ClienteCODIGO.Value;
    sql_LISTA_ENDERECO.Post;

    // Desabilita grupo de endereço
    Habilitar_Grupo_Endereco(false);

    // Habilita inserir endereço
    bt_Endereco_Incluir.Enabled := True;
    bt_Endereco_Incluir.Visible := True;

    // Habilita botao alterar
    bt_Endereco_Alterar.Enabled := True;

    // Desabilita salvar endereço
    bt_Endereco_Gravar.Enabled := false;
    bt_Endereco_Gravar.Visible := false;

    // Desabilita cancelar inserção
    bt_Endereco_Cancelar.Enabled := false;

    // MessageDLG('ATENÇÃO: Operação concluída com sucesso', mtInformation, [mbOk], 0);

    //Impede que grave cliente se está alterando endereço
    Impedir_Gravar_Editando(False);

    sql_LISTA_ENDERECO.Active := True;
end;

Procedure Tfrm_cliente.bt_Endereco_AlterarClick(Sender: TObject);
begin
    // Alterar endereço do cliente
    // ----------------------------------------------------------------------------

    //Impede que grave cliente se está alterando endereço
    Impedir_Gravar_Editando(True);

    // Habilitar grupo endereço
    Habilitar_Grupo_Endereco(true);

    // habilita botao salvar
    bt_Endereco_Gravar.Enabled := true;
    bt_Endereco_Gravar.Visible := true;

    // desabilita botao incluir
    bt_Endereco_Incluir.Enabled := false;
    bt_Endereco_Incluir.Visible := false;

    // desabilita botao alterar
    bt_Endereco_Alterar.Enabled := false;

    // habilita cancelar inserção
    bt_Endereco_Cancelar.Enabled := true;

    // Coloca o registro do endereço em modo de edição
    sql_LISTA_ENDERECO.Edit;

    //Posiciona no tipo de endereço
    dbTipoEndereco.SetFocus;
  end;

procedure Tfrm_cliente.btDetalhesBloqueioClick(Sender: TObject);
  begin
    // Mostra detalhes do bloqueio...
    // Data, hora, usuário e estação onde ocorreu o bloqueio do cliente
    // ----------------------------------------------------------------------------
    ShowMessage('Cliente bloqueado em ' + SQL_ClienteDTBLOQUEIO.AsString + ' - '
      + SQL_ClienteHRBLOQUEIO.Value + #13 + 'pelo usuário [ ' +
      SQL_ClienteUSUBLOQUEIO.Value + ' ] ' + #13 + 'na estação [ ' +
      SQL_ClienteMAQBLOQUEIO.Value + ' ].');
  end;

Procedure Tfrm_cliente.bt_Endereco_CancelarClick(Sender: TObject);
begin
    // Desabilitar grupo endereço
    Habilitar_Grupo_Endereco(false);

    // Cancelar a edição ou inserção
    sql_LISTA_ENDERECO.Cancel;
    sql_LISTA_ENDERECO.Close;
    sql_CLIENTE_ENDERECO.Cancel;
    sql_CLIENTE_ENDERECO.Close;

    // Desabilita Salvar Endereço
    bt_Endereco_Gravar.Enabled := false;
    bt_Endereco_Gravar.Visible := true;

    // Habilita Inserir Endereço
    bt_Endereco_Incluir.Enabled := true;
    bt_Endereco_Incluir.Visible := true;

    // Habilita Alterar Endereço
    bt_Endereco_Alterar.Enabled := true;

    // Desabilita cancelar edição de Endereço
    bt_Endereco_Cancelar.Enabled := true;

    //Impede que grave cliente se está alterando endereço
    Impedir_Gravar_Editando(False);

    // Atualizar listas de subcadastros
    Abrir_tabelas_relacionadas;
end;

Procedure Tfrm_cliente.bt_ConveniadosClick(Sender: TObject);
begin
   fmr_convenio := Tfmr_convenio.Create(nil);
   fmr_convenio.showmodal;
   fmr_convenio.Free;
end;

Procedure Tfrm_cliente.bt_Contato_GravarClick(Sender: TObject);
  begin
    if u_funcoes.CamposObrigatorios([DB_CONTATO_RESPONSAVEL], ['Responsável'],
      [], [], [], []) then
      Exit;

    sql_LISTA_CONTATO1.Active := True;
    sql_LISTA_CONTATO1.FieldByName('CODIGO_CLIENTE').AsString :=
                                                              dbedt_codigo.Text;
    sql_LISTA_CONTATO1.Post;
    sql_LISTA_CONTATO1.Active := False;

    // Habilitar botão incluir contato
    bt_Contato_Incluir.Visible := True;
    bt_Contato_Incluir.Enabled := True;

    // Habilitar botao alterar contato
    bt_Contato_Alterar.Enabled := True;

    // Desabilitar botão cancelar edicao/alteracao de contato
    bt_Contato_Cancelar.Enabled := False;

    //Desabilitar o grupo Contato
    Habilitar_Grupo_Contato(False);

    //Impede que grave cliente se está alterando contato
    Impedir_Gravar_Editando(False);

    //Atualizar listas de dados
    Abrir_tabelas_relacionadas;

    // MessageDLG('ATENÇÃO: Operação concluída com sucesso', mtInformation, [mbOk], 0);
  end;

Procedure Tfrm_cliente.bt_Contato_AlterarClick(Sender: TObject);
begin
    //Impede que grave cliente se está alterando contatos
    Impedir_Gravar_Editando(True);

    // Desabilitar botão incluir contato
    bt_Contato_Incluir.Visible := False;
    bt_Contato_Incluir.Enabled := False;

    // Desabilitar botao alterar contato
    bt_Contato_Alterar.Enabled := false;

    // Habilitar botão cancelar edicao/alteracao de contato
    bt_Contato_Cancelar.Enabled := true;

    //Habilitar o grupo Contato
    Habilitar_Grupo_Contato(True);

    // Editar Registro de Contato de Cliente
    sql_LISTA_CONTATO1.Active := True;
    sql_LISTA_CONTATO1.edit;
  end;

Procedure Tfrm_cliente.bt_Contato_CancelarClick(Sender: TObject);
  begin
    // Habilitar botão incluir contato
    bt_Contato_Incluir.Visible := true;
    bt_Contato_Incluir.Enabled := true;

    // Habilitar botao alterar contato
    bt_Contato_Alterar.Enabled := true;

    // Desabilitar botão cancelar edicao/alteracao de contato
    bt_Contato_Cancelar.Enabled := false;

    // Cancelar Edição/inclusão de Registro de Contato de Cliente
    sql_LISTA_CONTATO1.Cancel;
    // sql_LISTA_CONTATO1.Close;

    //Desabilitar o grupo Contato
    Habilitar_Grupo_Contato(False);

    //Impede que grave cliente se está alterando contato
    Impedir_Gravar_Editando(False);

    //Atualizar listas de dados
    Abrir_tabelas_relacionadas;
  end;

Procedure Tfrm_cliente.bt_Complemento_FinanceiroClick(Sender: TObject);
  begin
    fmr_comp_financ := Tfmr_comp_financ.Create(nil);
    fmr_comp_financ.ShowModal;
  end;

Procedure Tfrm_cliente.btn_ConsultaCNPJClick(Sender: TObject);
begin
    {
      FRM_cad_endereco := TFRM_cad_endereco.CREATE(Application);
      FRM_cad_endereco.ShowModal;
      DB_RUA.Text := FRM_cad_endereco.SQL_LISTADESCRICAO.value;
      DB_NUMERO.SetFocus;
    }

    frmConsultaCNPJ := TfrmConsultaCNPJ.CREATE(Application);
    frmConsultaCNPJ.EditCNPJ.Text := edCNPJ.Text;
    frmConsultaCNPJ.ShowModal;

    Preencher_Tela_Com_Dados_da_Consulta_CNPJ;

    frmConsultaCNPJ.Free;

    //Atualizar listas de dados
    Abrir_tabelas_relacionadas;
end;

Procedure Tfrm_cliente.Preencher_Tela_Com_Dados_da_Consulta_CNPJ;
  begin
    // Preenche a tela com dados vindos da Consulta do CNPJ
    edCNPJ.Text := frmConsultaCNPJ.EditCNPJ.Text;
    SQL_ClienteRAZAO_SOCIAL.Value := SemAsteriscos(frmConsultaCNPJ.EditRazaoSocial.Text);
    SQL_ClienteFANTASIA.Value     := SemAsteriscos(frmConsultaCNPJ.EditFantasia.Text);

    // endereco é em tabela diferente: "cliente_endereco"
    // Se o endereço do cliente não está cadastrado...
    if not EXISTE_sql_CLIENTE_ENDERECO then
    begin
      // Cadastra o endereço do cliente
      sql_CLIENTE_ENDERECO.Active := True;
      sql_CLIENTE_ENDERECO.Insert;
      sql_CLIENTE_ENDERECOCODIGO_CLIENTE.Value   := SQL_ClienteCODIGO.Value;
      sql_CLIENTE_ENDERECORUA.Value              := SemAsteriscos(frmConsultaCNPJ.EditEndereco.Text);
      sql_CLIENTE_ENDERECONUMERO.Value           := SemAsteriscos(frmConsultaCNPJ.EditNumero.Text);
      sql_CLIENTE_ENDERECOBAIRRO.Value           := SemAsteriscos(frmConsultaCNPJ.EditBairro.Text);
      sql_CLIENTE_ENDERECOCOMPLEMENTO.Value      := SemAsteriscos(frmConsultaCNPJ.EditComplemento.Text);
      sql_CLIENTE_ENDERECOCEP.Value              := SemAsteriscos(frmConsultaCNPJ.EditCEP.Text);
      sql_CLIENTE_ENDERECOMUNICIPIO.Value        := SemAsteriscos(frmConsultaCNPJ.EditCidade.Text);
      sql_CLIENTE_ENDERECOCODIGO_MUNICIPIO.Value := CodigoMunicipio(frmConsultaCNPJ.EditCidade.Text,frmConsultaCNPJ.EditUF.Text);
      sql_CLIENTE_ENDERECOUF.Value               := SemAsteriscos(frmConsultaCNPJ.EditUF.Text);
      sql_CLIENTE_ENDERECOCODIGO_UF.Value        := CodigoUF(frmConsultaCNPJ.EditUF.Text);
      sql_CLIENTE_ENDERECOPAIS.AsString          := 'BRASIL';
      sql_CLIENTE_ENDERECOCODIGO_PAIS.Value      := '1058';
      sql_CLIENTE_ENDERECO.Post;
      Carrega_Enderecos;
    end;
  end;

function Tfrm_cliente.EXISTE_sql_CLIENTE_ENDERECO: Boolean;
  begin
    // verifica se um endereço do cliente existe
    // retorna true se existe e false se não existe
    // ---------------------------------------------------------------------------
    result := false;
    Query1.Close;
    Query1.SQL.Clear;
    Query1.SQL.Add('SELECT * FROM cliente_endereco         ');
    Query1.SQL.Add(' WHERE CODIGO_CLIENTE = :CODIGO_CLIENTE');
    Query1.SQL.Add('   AND RUA            = :RUA           ');
    Query1.SQL.Add('   AND MUNICIPIO      = :MUNICIPIO     ');
    Query1.ParamByName('CODIGO_CLIENTE').AsInteger := SQL_ClienteCODIGO.Value;
    Query1.ParamByName('RUA').AsString := frmConsultaCNPJ.EditEndereco.Text;
    Query1.ParamByName('MUNICIPIO').AsString := frmConsultaCNPJ.EditCidade.Text;
    Query1.Open;
    if Query1.eof then
      exit;

    result := true;
  end;

Procedure Tfrm_cliente.bt_Banco_IncluirClick(Sender: TObject);
begin
    //Impede que grave cliente se está alterando dados bancários
    Impedir_Gravar_Editando(True);

    //Permitir informar dados bancários enquanto incliu cliente novo
    Salvar_Cliente;

    //Atualizar listas de dados
    Abrir_tabelas_relacionadas;

    // Desabilitar botão incluir banco
    bt_Banco_Incluir.Enabled := false;
    bt_Banco_Incluir.Visible := false;

    // Desabilitar botao alterar banco
    bt_banco_Alterar.Enabled := false;

    // Habilitar botão cancelar edicao/alteracao de banco
    bt_banco_Cancelar.Enabled := true;

    //Habilitar o grupo Banco
    Habilitar_Grupo_Banco(True);

    // Inserir Registro de banco de Cliente
    sql_LISTA_banco.Active := True;
    sql_LISTA_banco.insert;

    // Posiciona o cursor no campo BANCO
    DB_BANCO.SetFocus;
  end;

Procedure Tfrm_cliente.cbATIVIDADEClick(Sender: TObject);
begin
   AssociaRamoAtividade;
end;

procedure Tfrm_cliente.AssociaRamoAtividade;
begin
    FRM_cad_atividade := TFRM_cad_atividade.CREATE(Application);
    FRM_cad_atividade.dbgrd2.Visible := True;
    vFRM_cad_atividade_Consultando:=True;
    FRM_cad_atividade.ShowModal;
    // 25/04/20
    // Wander-trazer para o cad cli o código e descrição do ramo de atividade
    if vRAMOcodigo <> -1 then
    begin
       SQL_ClienteID_CAD_RAMO_ATIVIDADE.Value :=  FRM_cad_atividade.SQL_LISTACODIGO.Value;
       SQL_ClienteID_CAD_RAMO_ATIVIDADE.Value :=  vRAMOcodigo;
    end;
    FRM_cad_atividade.Free;
end;

procedure Tfrm_cliente.cbHistoricoBloqueiosClick(Sender: TObject);
  begin
    // Mostra detalhes do bloqueio...
    // Data, hora, usuário e estação onde ocorreu o bloqueio do cliente
    // ----------------------------------------------------------------------------
    frmCLIENTE_HISTORICO_BLOQUEIOS_CHB :=
      TfrmCLIENTE_HISTORICO_BLOQUEIOS_CHB.Create(Self);
    with frmCLIENTE_HISTORICO_BLOQUEIOS_CHB.
      sql_CLIENTE_HISTORICO_BLOQUEIOS_CHB do
    begin
      Close;
      Sql.Clear;
      Sql.Add('SELECT *                               ');
      Sql.Add('  FROM CLIENTE_HISTORICO_BLOQUEIOS_CHB ');
      Sql.Add(' WHERE CHB_CLIENTE = :CHB_CLIENTE      ');
      Sql.Add(' ORDER BY  CHB_DTEVENTO DESC, CHB_HREVENTO DESC ');
      ParamByName('CHB_CLIENTE').AsInteger := SQL_ClienteCODIGO.Value;
      Open;
    end;
    frmCLIENTE_HISTORICO_BLOQUEIOS_CHB.ShowModal;
    frmCLIENTE_HISTORICO_BLOQUEIOS_CHB.Free;
  end;

Procedure Tfrm_cliente.bt_SMCClick(Sender: TObject);
  begin
    fmr_smc_btn := Tfmr_smc_btn.Create(nil);
    fmr_smc_btn.ShowModal;
  end;

Procedure Tfrm_cliente.bt_AnimaisClick(Sender: TObject);
  begin
    frm_cad_animais := Tfrm_cad_animais.Create(nil);
    frm_cad_animais.ShowModal;
  end;

Procedure Tfrm_cliente.btn_zonaClick(Sender: TObject);
begin
  FRM_cad_zona := TFRM_cad_zona.CREATE(Application);
  FRM_cad_zona.ShowModal;
  DB_ZONA.Text := FRM_cad_zona.SQL_LISTADESCRICAO.value;
  FRM_cad_zona.Free;
end;

Procedure Tfrm_cliente.bt_OticaClick(Sender: TObject);
  begin
    frm_otica := Tfrm_otica.Create(nil);
    frm_otica.showmodal;
  end;

procedure Tfrm_cliente.edLimiteCreditoExit(Sender: TObject);
var vValor:Real;
begin
   if edLimiteCredito.text = '' then
      exit;

   try
     vValor := StrToFloat(MascToStr(edLimiteCredito.text));
     if vValor < 0 then
     begin
       ShowMessage('Valor inválido');
       edLimiteCredito.SetFocus;
       exit;
     end;
   except
     ShowMessage('Valor inválido');
     edLimiteCredito.SetFocus;
     exit;
   end;
end;

procedure Tfrm_cliente.edLimiteCreditoKeyPress(Sender: TObject; var Key: Char);
begin
  inherited;
  Key := apenasnumeros(Key);
end;

// Procedure Tfrm_cliente.cxGridDBTableView3CellDblClick(
// Sender: TcxCustomGridTableView; ACellViewInfo: TcxGridTableDataCellViewInfo;
// AButton: TMouseButton; AShift: TShiftState; var AHandled: Boolean);
// begin
// with sql_LISTA_CONTATO1 do
// begin
// Close;
// ParamByName('pcodigo').Value := inttostr(sql_LISTA_CONTATO1codigo.Value);
// Open;
// end;
// CarregarDadosInternos;
// end;

Procedure Tfrm_cliente.tab_consultaShow(Sender: TObject);
  begin
    dlConsulta;
  end;

Procedure Tfrm_cliente.tbCellDblClick(Sender: TcxCustomGridTableView;
  ACellViewInfo: TcxGridTableDataCellViewInfo; AButton: TMouseButton;
  AShift: TShiftState; var AHandled: Boolean);
  begin
    // Duplo click em um item da lista de clientes...
    // Abrir os dados do cliente
    ConsultaParaCadastro;
  end;

Procedure Tfrm_cliente.tbcnpjGetDisplayText(Sender: TcxCustomGridTableItem;
  ARecord: TcxCustomGridRecord; var AText: string);
  begin
    AText := TFormats.cnpj(AText);
  end;

Procedure Tfrm_cliente.tbcpfGetDisplayText(Sender: TcxCustomGridTableItem;
  ARecord: TcxCustomGridRecord; var AText: string);
  begin
    AText := TFormats.CPF(AText);
  end;

Procedure Tfrm_cliente.tbCustomDrawCell(Sender: TcxCustomGridTableView;
  ACanvas: TcxCanvas; AViewInfo: TcxGridTableDataCellViewInfo;
var ADone: Boolean);
var
   __value: variant;
begin
    __value := tb.ViewData.Records[AViewInfo.GridRecord.Index].Values
      [tbstatus_cadastral.Index];
    ACanvas.font.Color := tfunctions.ColorByStatus(__value,
      ['ATIVO', 'INATIVO'], [clWebDarkgreen, clWebCrimson]);

    tfunctions.StripedGrid(ACanvas, AViewInfo);
end;

Procedure Tfrm_cliente.bt_Contato_IncluirClick(Sender: TObject);
begin
    //Impede que grave cliente se está alterando contato
    Impedir_Gravar_Editando(True);

    //Permitir informar contatos enquanto incliu cliente novo
    Salvar_Cliente;

    //Atualizar listas de dados
    Abrir_tabelas_relacionadas;

    // AlterarEnabled([gpContato, bt_Contato_Cancelar, bt_Contato_Alterar], true);

    // Desabilitar botão incluir contato
    bt_Contato_Incluir.Visible := False;
    bt_Contato_Incluir.Enabled := False;

    // Desabilitar botao alterar contato
    bt_Contato_Alterar.Enabled := false;

    // Habilitar botão cancelar edicao/alteracao de contato
    bt_Contato_Cancelar.Enabled := true;

    //Habilitar o grupo Contato
    Habilitar_Grupo_Contato(True);

    // Inserir Registro de Contato de Cliente
    sql_LISTA_CONTATO1.Active := True;
    sql_LISTA_CONTATO1.insert;

    // Posiciona o cursor no campo RESPONSAVEL
    DB_CONTATO_RESPONSAVEL.SetFocus;
  end;

Procedure Tfrm_cliente.tbKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
  begin
    if Key = VK_RETURN then
      ConsultaParaCadastro;
  end;

Procedure Tfrm_cliente.tbpessoa_tipoCustomDrawCell
  (Sender: TcxCustomGridTableView; ACanvas: TcxCanvas;
  AViewInfo: TcxGridTableDataCellViewInfo; var ADone: Boolean);
  begin
    tfunctions.setImageByStatus(['FISICA', 'JURIDICA'], [1, 0], ACanvas,
      tbpessoa_tipo.Index, imlist, AViewInfo);
    ADone := true;
  end;

Procedure Tfrm_cliente.tbpessoa_tipoGetDisplayText
  (Sender: TcxCustomGridTableItem; ARecord: TcxCustomGridRecord;
  var AText: string);
  begin
    AText := '';
  end;

Procedure Tfrm_cliente.tbtelefoneGetDisplayText(Sender: TcxCustomGridTableItem;
  ARecord: TcxCustomGridRecord; var AText: string);
  begin
    AText := TFormats.Phone(AText);
  end;

Procedure Tfrm_cliente.cxDBTextEdit20KeyPress(Sender: TObject; var Key: Char);
  begin
    inherited;
    Key := ApenasLetras(Key);
  end;

procedure Tfrm_cliente.btRegiaoClick(Sender: TObject);
begin
  Frm_regiao := TFrm_regiao.CREATE(Application);
  Frm_regiao.ShowModal;
  DB_ID_REGIAO.Text := vFrm_regiao_REG_CODIGO; //Frm_regiao.SQL_REGIOES.FieldByName('REG_CODIGO').AsString;
  Frm_regiao.Free;
end;

Procedure Tfrm_cliente.cxDBTextEdit18KeyPress(Sender: TObject; var Key: Char);
  begin
    inherited;
    Key := ApenasLetras(Key);
  end;

Procedure Tfrm_cliente.dbedtcontato1KeyPress(Sender: TObject; var Key: Char);
  begin
    inherited;
    Key := u_funcoes.ApenasLetras(Key);
  end;

Procedure Tfrm_cliente.dbedtNomeKeyPress(Sender: TObject; var Key: Char);
  begin
    inherited;
    Key := u_funcoes.ApenasLetras(Key);
    Key := u_funcoes.ContarQuantidadeCaracteres(dbedtNome, Key, 'Nome', 100);
  end;

Procedure Tfrm_cliente.cxDBTextEdit32KeyPress(Sender: TObject; var Key: Char);
  begin
    inherited;
    Key := u_funcoes.apenasnumeros(Key);
  end;

Procedure Tfrm_cliente.cxDBTextEdit33KeyPress(Sender: TObject; var Key: Char);
  begin
    inherited;
    Key := u_funcoes.ApenasLetras(Key);
  end;

Procedure Tfrm_cliente.cxDBTextEdit3KeyPress(Sender: TObject; var Key: Char);
  begin
    inherited;
    Key := u_funcoes.ApenasLetras(Key);
  end;

Procedure Tfrm_cliente.dbedtOEKeyPress(Sender: TObject; var Key: Char);
  begin
    inherited;
    Key := u_funcoes.ApenasLetras(Key);
  end;

Procedure Tfrm_cliente.dbedtRGKeyPress(Sender: TObject; var Key: Char);
begin
   //inherited;
   //Key := u_funcoes.apenasnumeros(Key);
end;

Procedure Tfrm_cliente.dbedt_fantasiaKeyPress(Sender: TObject; var Key: Char);
  begin
    Key := u_funcoes.ContarQuantidadeCaracteres(dbedt_fantasia, Key,
      'Nome Fantasia', 50);
  end;

Procedure Tfrm_cliente.dbedt_razaosocialKeyPress(Sender: TObject;
  var Key: Char);
  begin
    Key := u_funcoes.ContarQuantidadeCaracteres(dbedt_razaosocial, Key,
      'Razão Social', 100);
  end;

Procedure Tfrm_cliente.DB_OPERACAOKeyPress(Sender: TObject; var Key: Char);
  begin
    inherited;
    Key := apenasnumeros(Key);
  end;

Procedure Tfrm_cliente.dlConsulta;
  const
    BASE = 'Select codigo, data_cadastro, situacao_financeira, pessoa_tipo, razao_social, fantasia, cpf, cnpj, inscricao_estadual, status_cadastral,'
      + 'municipio, estado, telefone, celular, rota from cliente ';
  var
    _field, _TIPO, _STATUS, _order, _value: string;
  begin

    if edt_consulta.Text <> '' then
    begin
      _value := tdb.removeSqlInjection(edt_consulta.Text);
      _field := tfunctions.IfThen(cbFiltro.SelectedItem,
        [0, 1, 2, 3, 4, 5, 6, 7, 8, 9], ['CODIGO LIKE "' + _value + '%"',
        'RAZAO_SOCIAL LIKE "%' + _value + '%"', 'FANTASIA LIKE "%' + _value +
        '%"', 'CNPJ LIKE "' + _value + '%"', 'CPF LIKE "' + _value + '%"',
        'TELEFONE LIKE "' + _value + '%"', 'CELULAR LIKE "' + _value + '%"',
        'INSCRICAO_ESTADUAL LIKE "' + _value + '%"',
        'MUNICIPIO LIKE "%' + _value + '%"', 'ESTADO LIKE "%' + _value + '%"']);

    end;
    {
    _order := ' order by ' + tfunctions.IfThen(cbOrder.SelectedItem,
      [0, 1, 2, 3, 4, 5, 6], ['CODIGO', 'RAZAO_SOCIAL', 'FANTASIA',
      'PESSOA_TIPO', 'STATUS_CADASTRAL', 'MUNICIPIO', 'ESTADO']);
    }
    _order := ' order by RAZAO_SOCIAL';

    _TIPO := format(' pessoa_tipo in %s ',
      [tdb.genin([chkFisica.Checked, chkJuridica.Checked],
      ['FISICA', 'JURIDICA'])]);

    _STATUS := format(' status_cadastral in %s ',
      [tdb.genin([chkAtivo.Checked, chkInativo.Checked],
      ['ATIVO', 'INATIVO'])]);

    with SQL_C_Clientes do
    begin
      Active := false;
      Close;
      sql.Clear;
      if _field = '' then
        sql.Add(BASE + ' WHERE ' + _TIPO + ' AND ' + _STATUS + _order)
      else
        sql.Add(BASE + ' WHERE ' + _field + ' AND ' + _TIPO + ' AND ' + _STATUS
          + _order);
      Open;
      Active := true;
    end;
end;

Procedure Tfrm_cliente.DSCertFiles1GetPEMFilePasskey(ASender: TObject;
  var APasskey: AnsiString);
  begin
    showmessage(APasskey);
  end;

Procedure Tfrm_cliente.Duplicar_CadastroExecute(Sender: TObject);
  begin
    DuplicarCadastro(SQL_Cliente, 'CLIENTE', SQL_C_Clientescodigo.AsString);
    CarregarDados;
    IniciarCadastro([bt_Cliente_Incluir, bt_Cliente_Cancelar,
      bt_Cliente_Alterar], true);
    tab_cadastrar.Show;
  end;

Procedure Tfrm_cliente.cxDBTextEdit58KeyPress(Sender: TObject; var Key: Char);
  begin
    inherited;
    Key := u_funcoes.apenasnumeros(Key);
  end;

Procedure Tfrm_cliente.cxDBTextEdit59KeyPress(Sender: TObject; var Key: Char);
  begin
    inherited;
    Key := u_funcoes.ApenasLetras(Key);
  end;

Procedure Tfrm_cliente.cxDBTextEdit5KeyPress(Sender: TObject; var Key: Char);
  begin
    inherited;
    Key := u_funcoes.ApenasLetras(Key);
  end;

Procedure Tfrm_cliente.cxDBTextEdit56KeyPress(Sender: TObject; var Key: Char);
  begin
    inherited;
    Key := u_funcoes.apenasnumeros(Key);
  end;

Procedure Tfrm_cliente.cxDBTextEdit6KeyPress(Sender: TObject; var Key: Char);
  begin
    inherited;
    Key := u_funcoes.ApenasLetras(Key);
  end;

Procedure Tfrm_cliente.cxDBTextEdit7KeyPress(Sender: TObject; var Key: Char);
  begin
    inherited;
    Key := u_funcoes.ApenasLetras(Key);
  end;

Procedure Tfrm_cliente.dbcbSexoKeyPress(Sender: TObject; var Key: Char);
  begin
    inherited;
    Key := u_funcoes.ApenasLetras(Key);
  end;

Procedure Tfrm_cliente.DBComboBox2KeyPress(Sender: TObject; var Key: Char);
  begin
    inherited;
    Key := u_funcoes.ApenasLetras(Key);
  end;

Procedure Tfrm_cliente.DBComboBox3KeyPress(Sender: TObject; var Key: Char);
  begin
    inherited;
    Key := u_funcoes.ApenasLetras(Key);
  end;

Procedure Tfrm_cliente.DB_CONTAKeyPress(Sender: TObject; var Key: Char);
  begin
    inherited;
    Key := apenasnumeros(Key);
  end;

Procedure Tfrm_cliente.DB_DIGITO_AGKeyPress(Sender: TObject; var Key: Char);
  begin
    inherited;
    Key := apenasnumeros(Key);
  end;

Procedure Tfrm_cliente.DB_DIGITOKeyPress(Sender: TObject; var Key: Char);
  begin
    inherited;
    Key := apenasnumeros(Key);
  end;

Procedure Tfrm_cliente.DB_AGENCIAKeyPress(Sender: TObject; var Key: Char);
  begin
    inherited;
    Key := apenasnumeros(Key);
  end;

Procedure Tfrm_cliente.dbcbbSITUACAO_FINANCEIRAKeyPress(Sender: TObject;
  var Key: Char);
  begin
    inherited;
    Key := u_funcoes.ApenasLetras(Key);
  end;

Procedure Tfrm_cliente.DBEdit106KeyPress(Sender: TObject; var Key: Char);
  begin
    inherited;
    Key := u_funcoes.ApenasLetras(Key);
  end;

Procedure Tfrm_cliente.DBEdit10KeyPress(Sender: TObject; var Key: Char);
  begin
    inherited;
    Key := u_funcoes.apenasnumeros(Key);
  end;

Procedure Tfrm_cliente.DBEdit15KeyPress(Sender: TObject; var Key: Char);
  begin
    inherited;
    Key := u_funcoes.apenasnumeros(Key);
  end;

procedure Tfrm_cliente.DBEdit17Change(Sender: TObject);
  begin
    edColaboradorNome.Text := '';
    if DBEdit17.Text = '' then
      exit;
    if SQL_Cliente.FieldByName('USUBLOQUEIO').AsString = 'MASTER' then
    begin
      edColaboradorNome.Text := 'MASTER';
      exit;
    end;
    //edColaboradorNome.Text :=
    //  NomeColaborador(SQL_Cliente.FieldByName('USUBLOQUEIO').AsInteger);
  end;

Procedure Tfrm_cliente.DB_CELULAR_2KeyPress(Sender: TObject; var Key: Char);
  begin
    inherited;
    Key := apenasnumeros(Key);
  end;

Procedure Tfrm_cliente.DBEdit18KeyPress(Sender: TObject; var Key: Char);
  begin
    inherited;
    Key := u_funcoes.apenasnumeros(Key);
  end;

Procedure Tfrm_cliente.DBEdit19KeyPress(Sender: TObject; var Key: Char);
  begin
    inherited;
    Key := u_funcoes.apenasnumeros(Key);
  end;

procedure Tfrm_cliente.edID_CAD_RAMO_ATIVIDADE_PJChange(Sender: TObject);
begin
//    dbatividadePJ.Text := DescricaoCAD_RAMO_ATIVIDADE
//      (SQL_ClienteID_CAD_RAMO_ATIVIDADE.Value);
end;

procedure Tfrm_cliente.edID_CAD_RAMO_ATIVIDADE_PJExit(Sender: TObject);
begin
   if edID_CAD_RAMO_ATIVIDADE_PJ.Text = '' then
      exit;

//   dbatividadePJ.Text := DescricaoCAD_RAMO_ATIVIDADE
//                         (SQL_ClienteID_CAD_RAMO_ATIVIDADE.Value);
   if dbatividadePJ.Text = '' Then
   begin
     ShowMessage('Ramo de Atividade não existe.');
     edID_CAD_RAMO_ATIVIDADE_PJ.SetFocus;
     exit;
   end;
end;

procedure Tfrm_cliente.DB_ID_REGIAOChange(Sender: TObject);
begin
   edREG_DESCRICAO.Text := '';
   if DB_ID_REGIAO.Text = '' then
      exit;
   //edREG_DESCRICAO.Text := DescricaoREGIAO(StrToInt(DB_ID_REGIAO.Text));
end;

procedure Tfrm_cliente.DB_ID_REGIAOExit(Sender: TObject);
begin
   edREG_DESCRICAO.Text := '';
   if DB_ID_REGIAO.Text = '' then
      exit;
   //edREG_DESCRICAO.Text := DescricaoREGIAO(StrToInt(DB_ID_REGIAO.Text));
   if edREG_DESCRICAO.Text = '' then
   begin
      ShowMessage('Região não cadastrada');
      DB_ID_REGIAO.SetFocus;
      exit;
   end;
end;

procedure Tfrm_cliente.DB_MUNICIPIOExit(Sender: TObject);
begin
   Procurar_CodigoIBGE_Municipio(DB_MUNICIPIO.Text,DB_UF.Text);
end;

procedure Tfrm_cliente.edID_CAD_RAMO_ATIVIDADE_PFChange(Sender: TObject);
begin
//   dbatividadePF.Text := DescricaoCAD_RAMO_ATIVIDADE(SQL_ClienteID_CAD_RAMO_ATIVIDADE.Value);
end;

procedure Tfrm_cliente.edID_CAD_RAMO_ATIVIDADE_PFExit(Sender: TObject);
begin
   if edID_CAD_RAMO_ATIVIDADE_PF.Text = '' then
      exit;

//   dbatividadePF.Text := DescricaoCAD_RAMO_ATIVIDADE
//                       (SQL_ClienteID_CAD_RAMO_ATIVIDADE.Value);
   if dbatividadePF.Text = '' Then
   begin
     ShowMessage('Ramo de Atividade não existe.');
     edID_CAD_RAMO_ATIVIDADE_PF.SetFocus;
     exit;
   end;
end;

Procedure Tfrm_cliente.dbedit1KeyPress(Sender: TObject; var Key: Char);
  begin
    inherited;
    Key := apenasnumeros(Key);
  end;

Procedure Tfrm_cliente.DBEdit20KeyPress(Sender: TObject; var Key: Char);
  begin
    inherited;
    Key := apenasnumeros(Key);
  end;

Procedure Tfrm_cliente.DBEdit21KeyPress(Sender: TObject; var Key: Char);
  begin
    inherited;
    Key := u_funcoes.apenasnumeros(Key);
  end;

Procedure Tfrm_cliente.DBEdit22KeyPress(Sender: TObject; var Key: Char);
  begin
    inherited;
    Key := u_funcoes.apenasnumeros(Key);
  end;

Procedure Tfrm_cliente.DBEdit23KeyPress(Sender: TObject; var Key: Char);
  begin
    inherited;
    Key := u_funcoes.apenasnumeros(Key);
  end;

Procedure Tfrm_cliente.DBEdit2KeyPress(Sender: TObject; var Key: Char);
  begin
    inherited;
    Key := u_funcoes.apenasnumeros(Key);
  end;

Procedure Tfrm_cliente.DBEdit30KeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
  begin
    if (Key = VK_RETURN) or (Key = VK_TAB) then
      bt_Cliente_Gravar.SetFocus;
  end;

Procedure Tfrm_cliente.DBEdit30KeyPress(Sender: TObject; var Key: Char);
  begin
    inherited;
    Key := u_funcoes.apenasnumeros(Key);
  end;

Procedure Tfrm_cliente.DBEdit31KeyPress(Sender: TObject; var Key: Char);
  begin
    inherited;
    Key := u_funcoes.apenasnumeros(Key);
  end;

Procedure Tfrm_cliente.edt_consultaKeyPress(Sender: TObject; var Key: Char);
  begin
    inherited;
    if cbFiltro.SelectedItem in [0, 3, 4, 5, 6, 7] then
      Key := tfunctions.OnlyNumbers(Key)
    else if cbFiltro.SelectedItem in [1, 2, 8, 9] then
      Key := tfunctions.onlyLetters(Key);

  end;

Procedure Tfrm_cliente.edt_consultaKeyUp(Sender: TObject; var Key: Word;
  Shift: TShiftState);
  begin
    dlConsulta;
  end;

Procedure Tfrm_cliente.edt_dataKeyPress(Sender: TObject; var Key: Char);
  begin
    inherited;
    Key := u_funcoes.apenasnumeros(Key);
  end;

Procedure Tfrm_cliente.edt_ieKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
  begin
    if (Key = VK_RETURN) or (Key = VK_TAB) then
    begin
      edt_ie.Text := u_funcoes.removercaracteresespeciais(edt_ie.Text);
    end;
  end;

Procedure Tfrm_cliente.dbedtTELEFONE_1KeyPress(Sender: TObject; var Key: Char);
  begin
    inherited;
    Key := u_funcoes.apenasnumeros(Key);
  end;

Procedure Tfrm_cliente.DBEdit4KeyPress(Sender: TObject; var Key: Char);
  begin
    inherited;
    Key := u_funcoes.apenasnumeros(Key);
  end;

Procedure Tfrm_cliente.dbedtCELULAR_1KeyPress(Sender: TObject; var Key: Char);
  begin
    inherited;
    Key := u_funcoes.apenasnumeros(Key);
  end;

Procedure Tfrm_cliente.DB_TELEFONEKeyPress(Sender: TObject; var Key: Char);
  begin
    inherited;
    Key := apenasnumeros(Key);
  end;

procedure Tfrm_cliente.DB_UFExit(Sender: TObject);
  begin
    if DB_UF.Text = '' then
      exit;

    if UfInvalida(DB_UF.Text) then
    begin
      DB_UF.SetFocus;
      exit;
    end;
  end;

Procedure Tfrm_cliente.edEmissaoKeyPress(Sender: TObject; var Key: Char);
  begin
    inherited;
    Key := u_funcoes.apenasnumeros(Key);
  end;

Procedure Tfrm_cliente.DBEdit74KeyPress(Sender: TObject; var Key: Char);
  begin
    inherited;
    Key := u_funcoes.ApenasLetras(Key);
  end;

Procedure Tfrm_cliente.DB_NUMEROKeyPress(Sender: TObject; var Key: Char);
  begin
    inherited;
    Key := u_funcoes.apenasnumeros(Key);
  end;

procedure Tfrm_cliente.DB_RAMALKeyPress(Sender: TObject; var Key: Char);
  begin
    inherited;
    Key := u_funcoes.apenasnumeros(Key);
  end;

Procedure Tfrm_cliente.Desabilitar_Campos_Não_Editáveis;
  begin
    // Desabilitar Campos não editáveis
    // ---------------------------------------------------------------------------

    // Data de cadastro do Cliente
    DB_DATA_CADASTRO.Enabled := false;

    // Somente para Pessoa Fìsica - Produtor Rural
    edt_ie.Enabled := false;
  end;

Procedure Tfrm_cliente.Desabilitar_Objetos_da_Tela;
begin
   // Desabilitar campos que não existem na tabela de clientes
   // ---------------------------------------------------------------------------
   btComplementoDeDados.Visible := false;
end;

procedure Tfrm_cliente.Destacar_Campos_Obrigatorios;
var i : Integer;
begin
   for i := 0 to frm_cliente.ComponentCount-1 do
   begin
       if (frm_cliente.Components[i] is TDBEdit) then
          if (frm_cliente.Components[i] as TDBEdit).Tag = 1 then
             (frm_cliente.Components[i] as TDBEdit).Color := clSilver;
       if (frm_cliente.Components[i] is TEdit) then
          if (frm_cliente.Components[i] as TEdit).Tag = 1 then
             (frm_cliente.Components[i] as TEdit).Color := clSilver;
       if (frm_cliente.Components[i] is TMaskEdit) then
          if (frm_cliente.Components[i] as TMaskEdit).Tag = 1 then
             (frm_cliente.Components[i] as TMaskEdit).Color := clSilver;
   end;
end;

procedure Tfrm_cliente.DB_CEPEnter(Sender: TObject);
begin
   //Armazena o CEP ao entrar no campo para evitar consulta
   //de CEP quando o CEP não é alterado
   //---------------------------------------------------------------------------
   vCEP_Anterior := DB_CEP.Text;
end;

procedure Tfrm_cliente.DB_CEPExit(Sender: TObject);
var
  UF, RUA, BAIRRO, CIDADE: STRING;
begin
   if DB_CEP.Text = '' then
      exit;

   //Se o CEP não foi alterado, não pesquisar...
   //if vCEP_Anterior = DB_CEP.Text then
   //   exit;

   ConsultarCep(RemoverEspacoEmBranco(removercaracteresespeciais(DB_CEP.Text)), UF, CIDADE, RUA, BAIRRO);
   sql_LISTA_ENDERECORUA.Value       := RUA;
   sql_LISTA_ENDERECOBAIRRO.Value    := BAIRRO;
   sql_LISTA_ENDERECOMUNICIPIO.Value := CIDADE;
   sql_LISTA_ENDERECOUF.Value        := UF;
   Procurar_CodigoIBGE_Municipio(CIDADE,UF);
end;

Procedure Tfrm_cliente.DB_CEPKeyPress(Sender: TObject; var Key: Char);
  begin
    inherited;
    Key := u_funcoes.apenasnumeros(Key);
  end;

Procedure Tfrm_cliente.DB_CELULAR_1KeyPress(Sender: TObject; var Key: Char);
  begin
    inherited;
    Key := apenasnumeros(Key);
  end;

Procedure Tfrm_cliente.dbedtINSCRICAO_ESTADUALExit(Sender: TObject);
  begin
    dbedtINSCRICAO_ESTADUAL.field.Text := u_funcoes.removercaracteresespeciais
      (dbedtINSCRICAO_ESTADUAL.Text);
    ValidarIE(dbedtINSCRICAO_ESTADUAL);
  end;

Procedure Tfrm_cliente.DBEdit84KeyPress(Sender: TObject; var Key: Char);
  begin
    inherited;
    Key := u_funcoes.apenasnumeros(Key);
  end;

Procedure Tfrm_cliente.DBEdit87KeyPress(Sender: TObject; var Key: Char);
  begin
    inherited;
    Key := u_funcoes.apenasnumeros(Key);
  end;

Procedure Tfrm_cliente.DBEdit8KeyPress(Sender: TObject; var Key: Char);
  begin
    inherited;
    Key := apenasnumeros(Key);
  end;

Procedure Tfrm_cliente.DBEdit94KeyPress(Sender: TObject; var Key: Char);
  begin
    inherited;
    Key := u_funcoes.ApenasLetras(Key);
  end;

Procedure Tfrm_cliente.DBEdit96KeyPress(Sender: TObject; var Key: Char);
  begin
    Key := apenasnumeros(Key);
  end;

Procedure Tfrm_cliente.DBEdit98KeyPress(Sender: TObject; var Key: Char);
  begin
    inherited;
    Key := u_funcoes.apenasnumeros(Key);
  end;

Procedure Tfrm_cliente.dbedtINSCRICAO_MUNICIPALKeyPress(Sender: TObject;
  var Key: Char);
  begin
    inherited;
    Key := u_funcoes.apenasnumeros(Key);
  end;

end.

{
  if (Key = VK_RETURN) or (Key = VK_TAB) then
  begin
  cxDBTextEdit9.SetFocus;
  end;
}


