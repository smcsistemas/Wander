//Verificado automaticamente em 16/06/2020 09:28
unit m_Empresa;
{
================================================================================
|   DATA   |DESENVOLVEDOR|HISTORICO DA ALTERACAO DO CODIGO                     |
|----------|-------------|-----------------------------------------------------|
|02/04/2020|WANDER       |Incluido par�metro "Contribuinte do ICMS" (S/N)      |
|        64|             |                                                     |
================================================================================
}

interface

uses
  sysutils, i_crud, c_globals, firedac.comp.client, h_DB, I_Cadastro;

type
  TEmpresa = class(Tinterfacedobject, Icrud, Icadastro)
  private
    Empresa_Codigo: integer;
    Empresa_Razao_Social: string;
    Empresa_Nome_Fantasia: string;
    Empresa_Data_Cadastro: TdateTime;
    Empresa_Cnpj: string;
    Empresa_Inscricao_Estadual: string;
    Empresa_Inscricao_Municipal: string;
    Empresa_Telefone_01: string;
    Empresa_Telefone_02: string;
    Empresa_Telefone_03: string;
    Empresa_Fax: string;
    Empresa_Celular_01: string;
    Empresa_celular_02: string;
    Empresa_Skype: string;
    Empresa_Site: string;
    Empresa_Email_01: string;
    Empresa_Email_02: string;
    Empresa_Suframa: string;
    Empresa_Endereco: string;
    Empresa_Numero: string;
    Empresa_Bairro: string;
    Empresa_Cep: string;
    Empresa_Municipio: string;
    Empresa_Codigo_Municipio: integer;
    Empresa_Estado: string;
    Empresa_Cod_Uf: string;
    Empresa_Pais: string;
    Empresa_Complemento: string;
    Empresa_Inicio_Atividade: TdateTime;
    Empresa_Ie_Substituto_Tributario: string;
    Empresa_Codigo_Regime_Tributario: string;
    Empresa_Tributacao_Pis_Cofins: string;
    Empresa_Apuracao_Mensal_Ipi: string;
    Empresa_Apuracao_Ipi: string;
    Empresa_Apuracao_Decendial_Ipi: string;
    Empresa_Optante_Pelo_Simples: string;
    Empresa_Tributado_Aliquota_Fixa_Icms: string;
    Empresa_Contribuinte_Ipi: string;

    //Wander 02/04/2020
    Empresa_Contribuinte_ICMS: string;

    Empresa_Organizacao_Contabil_Razao_Social: string;
    Empresa_Organizacao_Contabil_Nome_Fantasia: string;
    Empresa_Organizacao_Contabil_Cnpj_Cpf: string;
    Empresa_Organizacao_Contabil_Inscricao: string;
    Empresa_Organizacao_Contabil_Endereco: string;
    Empresa_Organizacao_Contabil_Bairro: string;
    Empresa_Organizacao_Contabil_Numero: string;
    Empresa_Organizacao_Contabil_Municipio: string;
    Empresa_Organizacao_Contabil_Codigo_Municipio: integer;
    Empresa_Organizacao_Contabil_Estado: string;
    Empresa_Organizacao_Contabil_Pais: string;
    Empresa_Organizacao_Contabil_Cep: string;
    Empresa_Organizacao_Contabil_Complemento: string;
    Empresa_Organizacao_Contabil_Telefone_01: string;
    Empresa_Organizacao_Contabil_Telefone_02: string;
    Empresa_Organizacao_Contabil_Celular_01: string;
    Empresa_Organizacao_Contabil_Celular_02: string;
    Empresa_Organizacao_Contabil_Email_01: string;
    Empresa_Organizacao_Contabil_Email_02: string;
    Empresa_Organizacao_Contabil_Site: string;
    Empresa_Organizacao_Contabil_Skype: string;
    Empresa_Contador_Nome: string;
    Empresa_Contador_Cpf: string;
    Empresa_Contador_Crc: string;
    Empresa_Nire: string;
    Empresa_Cnae: string;
    Empresa_Banco_01: string;
    Empresa_Banco_Op: string;
    Empresa_Banco_Op2: string;
    Empresa_Banco_Op_1: string;
    Empresa_Banco_Op_1_2: string;
    Empresa_Banco_Agencia_01: string;
    Empresa_Banco_Conta_01: string;
    Empresa_Banco_02: string;
    Empresa_Banco_Agencia_01_Digito: string;
    Empresa_Banco_Conta_01_Digito: string;
    Empresa_Banco_Agencia_02_Digito: string;
    Empresa_Banco_Conta_02_Digito: string;
    Empresa_Banco_Agencia_02: string;
    Empresa_Banco_Conta_02: string;
    Empresa_Banco_03: integer;
    Empresa_Banco_Agencia_03: string;
    Empresa_Banco_Conta_03: string;
    Empresa_Banco_Gerente_01: string;
    Empresa_Banco_Telefone_01: string;
    Empresa_Banco_Ramal_01: string;
    Empresa_Banco_Gerente_02: string;
    Empresa_Banco_Telefone_02: string;
    Empresa_Banco_Ramal_02: string;
    Empresa_Socio_01: integer;
    Empresa_Socio_02: integer;
    Empresa_Rodape: string;
    Empresa_Logotipo: string;
    Empresa_Selecao_Empresa: string;
    Empresa_Codigo_Identificacao: string;
    Empresa_Chave_Ativacao: string;
    Empresa_Codigo_Pais: integer;
    Empresa_Organizacao_Contabil_Codpais: integer;
    Empresa_Organizacao_Contabil_Cpf: string;
    Empresa_Nome_Contato_Ad: string;
    Empresa_Dia_Vencimento: string;
    Empresa_Arquivos_Fiscais_Email_01: string;
    Empresa_Arquivos_Fiscais_Email_02: string;
    Empresa_Organizacao_Contabil_Nome: string;

    function getEmpresa_Codigo: integer;
    function getEmpresa_Razao_Social: string;
    function getEmpresa_Nome_Fantasia: string;
    function getEmpresa_Data_Cadastro: TdateTime;
    function getEmpresa_Cnpj: string;
    function getEmpresa_Inscricao_Estadual: string;
    function getEmpresa_Inscricao_Municipal: string;
    function getEmpresa_Telefone_01: string;
    function getEmpresa_Telefone_02: string;
    function getEmpresa_Telefone_03: string;
    function getEmpresa_Fax: string;
    function getEmpresa_Celular_01: string;
    function getEmpresa_celular_02: string;
    function getEmpresa_Skype: string;
    function getEmpresa_Site: string;
    function getEmpresa_Email_01: string;
    function getEmpresa_Email_02: string;
    function getEmpresa_Suframa: string;
    function getEmpresa_Endereco: string;
    function getEmpresa_Numero: string;
    function getEmpresa_Bairro: string;
    function getEmpresa_Cep: string;
    function getEmpresa_Municipio: string;
    function getEmpresa_Codigo_Municipio: integer;
    function getEmpresa_Estado: string;
    function getEmpresa_Cod_Uf: string;
    function getEmpresa_Pais: string;
    function getEmpresa_Complemento: string;
    function getEmpresa_Inicio_Atividade: TdateTime;
    function getEmpresa_Ie_Substituto_Tributario: string;
    function getEmpresa_Codigo_Regime_Tributario: string;
    function getEmpresa_Tributacao_Pis_Cofins: string;
    function getEmpresa_Apuracao_Mensal_Ipi: string;
    function getEmpresa_Apuracao_Ipi: string;
    function getEmpresa_Apuracao_Decendial_Ipi: string;
    function getEmpresa_Optante_Pelo_Simples: string;
    function getEmpresa_Tributado_Aliquota_Fixa_Icms: string;
    function getEmpresa_Contribuinte_Ipi: string;

    //Wander 02/04/2020
    function getEmpresa_Contribuinte_ICMS: string;

    function getEmpresa_Organizacao_Contabil_Razao_Social: string;
    function getEmpresa_Organizacao_Contabil_Nome_Fantasia: string;
    function getEmpresa_Organizacao_Contabil_Cnpj_Cpf: string;
    function getEmpresa_Organizacao_Contabil_Inscricao: string;
    function getEmpresa_Organizacao_Contabil_Endereco: string;
    function getEmpresa_Organizacao_Contabil_Bairro: string;
    function getEmpresa_Organizacao_Contabil_Numero: string;
    function getEmpresa_Organizacao_Contabil_Municipio: string;
    function getEmpresa_Organizacao_Contabil_Codigo_Municipio: integer;
    function getEmpresa_Organizacao_Contabil_Estado: string;
    function getEmpresa_Organizacao_Contabil_Pais: string;
    function getEmpresa_Organizacao_Contabil_Cep: string;
    function getEmpresa_Organizacao_Contabil_Complemento: string;
    function getEmpresa_Organizacao_Contabil_Telefone_01: string;
    function getEmpresa_Organizacao_Contabil_Telefone_02: string;
    function getEmpresa_Organizacao_Contabil_Celular_01: string;
    function getEmpresa_Organizacao_Contabil_Celular_02: string;
    function getEmpresa_Organizacao_Contabil_Email_01: string;
    function getEmpresa_Organizacao_Contabil_Email_02: string;
    function getEmpresa_Organizacao_Contabil_Site: string;
    function getEmpresa_Organizacao_Contabil_Skype: string;
    function getEmpresa_Contador_Nome: string;
    function getEmpresa_Contador_Cpf: string;
    function getEmpresa_Contador_Crc: string;
    function getEmpresa_Nire: string;
    function getEmpresa_Cnae: string;
    function getEmpresa_Banco_01: string;
    function getEmpresa_Banco_Op: string;
    function getEmpresa_Banco_Op2: string;
    function getEmpresa_Banco_Op_1: string;
    function getEmpresa_Banco_Op_1_2: string;
    function getEmpresa_Banco_Agencia_01: string;
    function getEmpresa_Banco_Conta_01: string;
    function getEmpresa_Banco_02: string;
    function getEmpresa_Banco_Agencia_01_Digito: string;
    function getEmpresa_Banco_Conta_01_Digito: string;
    function getEmpresa_Banco_Agencia_02_Digito: string;
    function getEmpresa_Banco_Conta_02_Digito: string;
    function getEmpresa_Banco_Agencia_02: string;
    function getEmpresa_Banco_Conta_02: string;
    function getEmpresa_Banco_03: integer;
    function getEmpresa_Banco_Agencia_03: string;
    function getEmpresa_Banco_Conta_03: string;
    function getEmpresa_Banco_Gerente_01: string;
    function getEmpresa_Banco_Telefone_01: string;
    function getEmpresa_Banco_Ramal_01: string;
    function getEmpresa_Banco_Gerente_02: string;
    function getEmpresa_Banco_Telefone_02: string;
    function getEmpresa_Banco_Ramal_02: string;
    function getEmpresa_Socio_01: integer;
    function getEmpresa_Socio_02: integer;
    function getEmpresa_Rodape: string;
    function getEmpresa_Logotipo: string;
    function getEmpresa_Selecao_Empresa: string;
    function getEmpresa_Codigo_Identificacao: string;
    function getEmpresa_Chave_Ativacao: string;
    function getEmpresa_Codigo_Pais: integer;
    function getEmpresa_Organizacao_Contabil_Codpais: integer;
    function getEmpresa_Organizacao_Contabil_Cpf: string;
    function getEmpresa_Nome_Contato_Ad: string;
    function getEmpresa_Dia_Vencimento: string;
    function getEmpresa_Arquivos_Fiscais_Email_01: string;
    function getEmpresa_Arquivos_Fiscais_Email_02: string;
    function getEmpresa_Organizacao_Contabil_Nome: string;

    procedure setEmpresa_Codigo(value: integer);
    procedure setEmpresa_Razao_Social(value: string);
    procedure setEmpresa_Nome_Fantasia(value: string);
    procedure setEmpresa_Data_Cadastro(value: TdateTime);
    procedure setEmpresa_Cnpj(value: string);
    procedure setEmpresa_Inscricao_Estadual(value: string);
    procedure setEmpresa_Inscricao_Municipal(value: string);
    procedure setEmpresa_Telefone_01(value: string);
    procedure setEmpresa_Telefone_02(value: string);
    procedure setEmpresa_Telefone_03(value: string);
    procedure setEmpresa_Fax(value: string);
    procedure setEmpresa_Celular_01(value: string);
    procedure setEmpresa_celular_02(value: string);
    procedure setEmpresa_Skype(value: string);
    procedure setEmpresa_Site(value: string);
    procedure setEmpresa_Email_01(value: string);
    procedure setEmpresa_Email_02(value: string);
    procedure setEmpresa_Suframa(value: string);
    procedure setEmpresa_Endereco(value: string);
    procedure setEmpresa_Numero(value: string);
    procedure setEmpresa_Bairro(value: string);
    procedure setEmpresa_Cep(value: string);
    procedure setEmpresa_Municipio(value: string);
    procedure setEmpresa_Codigo_Municipio(value: integer);
    procedure setEmpresa_Estado(value: string);
    procedure setEmpresa_Cod_Uf(value: string);
    procedure setEmpresa_Pais(value: string);
    procedure setEmpresa_Complemento(value: string);
    procedure setEmpresa_Inicio_Atividade(value: TdateTime);
    procedure setEmpresa_Ie_Substituto_Tributario(value: string);
    procedure setEmpresa_Codigo_Regime_Tributario(value: string);
    procedure setEmpresa_Tributacao_Pis_Cofins(value: string);
    procedure setEmpresa_Apuracao_Mensal_Ipi(value: string);
    procedure setEmpresa_Apuracao_Ipi(value: string);
    procedure setEmpresa_Apuracao_Decendial_Ipi(value: string);
    procedure setEmpresa_Optante_Pelo_Simples(value: string);
    procedure setEmpresa_Tributado_Aliquota_Fixa_Icms(value: string);
    procedure setEmpresa_Contribuinte_Ipi(value: string);

    //Wander 02/04/2020
    procedure setEmpresa_Contribuinte_ICMS(value: string);

    procedure setEmpresa_Organizacao_Contabil_Razao_Social(value: string);
    procedure setEmpresa_Organizacao_Contabil_Nome_Fantasia(value: string);
    procedure setEmpresa_Organizacao_Contabil_Cnpj_Cpf(value: string);
    procedure setEmpresa_Organizacao_Contabil_Inscricao(value: string);
    procedure setEmpresa_Organizacao_Contabil_Endereco(value: string);
    procedure setEmpresa_Organizacao_Contabil_Bairro(value: string);
    procedure setEmpresa_Organizacao_Contabil_Numero(value: string);
    procedure setEmpresa_Organizacao_Contabil_Municipio(value: string);
    procedure setEmpresa_Organizacao_Contabil_Codigo_Municipio(value: integer);
    procedure setEmpresa_Organizacao_Contabil_Estado(value: string);
    procedure setEmpresa_Organizacao_Contabil_Pais(value: string);
    procedure setEmpresa_Organizacao_Contabil_Cep(value: string);
    procedure setEmpresa_Organizacao_Contabil_Complemento(value: string);
    procedure setEmpresa_Organizacao_Contabil_Telefone_01(value: string);
    procedure setEmpresa_Organizacao_Contabil_Telefone_02(value: string);
    procedure setEmpresa_Organizacao_Contabil_Celular_01(value: string);
    procedure setEmpresa_Organizacao_Contabil_Celular_02(value: string);
    procedure setEmpresa_Organizacao_Contabil_Email_01(value: string);
    procedure setEmpresa_Organizacao_Contabil_Email_02(value: string);
    procedure setEmpresa_Organizacao_Contabil_Site(value: string);
    procedure setEmpresa_Organizacao_Contabil_Skype(value: string);
    procedure setEmpresa_Contador_Nome(value: string);
    procedure setEmpresa_Contador_Cpf(value: string);
    procedure setEmpresa_Contador_Crc(value: string);
    procedure setEmpresa_Nire(value: string);
    procedure setEmpresa_Cnae(value: string);
    procedure setEmpresa_Banco_01(value: string);
    procedure setEmpresa_Banco_Op(value: string);
    procedure setEmpresa_Banco_Op2(value: string);
    procedure setEmpresa_Banco_Op_1(value: string);
    procedure setEmpresa_Banco_Op_1_2(value: string);
    procedure setEmpresa_Banco_Agencia_01(value: string);
    procedure setEmpresa_Banco_Conta_01(value: string);
    procedure setEmpresa_Banco_02(value: string);
    procedure setEmpresa_Banco_Agencia_01_Digito(value: string);
    procedure setEmpresa_Banco_Conta_01_Digito(value: string);
    procedure setEmpresa_Banco_Agencia_02_Digito(value: string);
    procedure setEmpresa_Banco_Conta_02_Digito(value: string);
    procedure setEmpresa_Banco_Agencia_02(value: string);
    procedure setEmpresa_Banco_Conta_02(value: string);
    procedure setEmpresa_Banco_03(value: integer);
    procedure setEmpresa_Banco_Agencia_03(value: string);
    procedure setEmpresa_Banco_Conta_03(value: string);
    procedure setEmpresa_Banco_Gerente_01(value: string);
    procedure setEmpresa_Banco_Telefone_01(value: string);
    procedure setEmpresa_Banco_Ramal_01(value: string);
    procedure setEmpresa_Banco_Gerente_02(value: string);
    procedure setEmpresa_Banco_Telefone_02(value: string);
    procedure setEmpresa_Banco_Ramal_02(value: string);
    procedure setEmpresa_Socio_01(value: integer);
    procedure setEmpresa_Socio_02(value: integer);
    procedure setEmpresa_Rodape(value: string);
    procedure setEmpresa_Logotipo(value: string);
    procedure setEmpresa_Selecao_Empresa(value: string);
    procedure setEmpresa_Codigo_Identificacao(value: string);
    procedure setEmpresa_Chave_Ativacao(value: string);
    procedure setEmpresa_Codigo_Pais(value: integer);
    procedure setEmpresa_Organizacao_Contabil_Codpais(value: integer);
    procedure setEmpresa_Organizacao_Contabil_Cpf(value: string);
    procedure setEmpresa_Nome_Contato_Ad(value: string);
    procedure setEmpresa_Dia_Vencimento(value: string);
    procedure setEmpresa_Arquivos_Fiscais_Email_01(value: string);
    procedure setEmpresa_Arquivos_Fiscais_Email_02(value: string);
    procedure setEmpresa_Organizacao_Contabil_Nome(value: string);

    procedure ClearData;

    procedure Insert;
    procedure Delete(const pID: integer);
    function Select(FieldNames: array of String; const Values: array of Variant): tfdquery; overload;
    function Select(const pID: integer): tfdquery; overload;
    procedure Update(pUk: TUpdateKind = ukHard);

  public
    property CODIGO: integer read getEmpresa_Codigo write setEmpresa_Codigo;
    property RAZAO_SOCIAL: string read getEmpresa_Razao_Social write setEmpresa_Razao_Social;
    property NOME_FANTASIA: string read getEmpresa_Nome_Fantasia write setEmpresa_Nome_Fantasia;
    property DATA_CADASTRO: TdateTime read getEmpresa_Data_Cadastro write setEmpresa_Data_Cadastro;
    property CNPJ: string read getEmpresa_Cnpj write setEmpresa_Cnpj;
    property INSCRICAO_ESTADUAL: string read getEmpresa_Inscricao_Estadual write setEmpresa_Inscricao_Estadual;
    property INSCRICAO_MUNICIPAL: string read getEmpresa_Inscricao_Municipal write setEmpresa_Inscricao_Municipal;
    property TELEFONE_01: string read getEmpresa_Telefone_01 write setEmpresa_Telefone_01;
    property TELEFONE_02: string read getEmpresa_Telefone_02 write setEmpresa_Telefone_02;
    property TELEFONE_03: string read getEmpresa_Telefone_03 write setEmpresa_Telefone_03;
    property FAX: string read getEmpresa_Fax write setEmpresa_Fax;
    property CELULAR_01: string read getEmpresa_Celular_01 write setEmpresa_Celular_01;
    property CELULAR_02: string read getEmpresa_celular_02 write setEmpresa_celular_02;
    property SKYPE: string read getEmpresa_Skype write setEmpresa_Skype;
    property SITE: string read getEmpresa_Site write setEmpresa_Site;
    property EMAIL_01: string read getEmpresa_Email_01 write setEmpresa_Email_01;
    property EMAIL_02: string read getEmpresa_Email_02 write setEmpresa_Email_02;
    property SUFRAMA: string read getEmpresa_Suframa write setEmpresa_Suframa;
    property ENDERECO: string read getEmpresa_Endereco write setEmpresa_Endereco;
    property NUMERO: string read getEmpresa_Numero write setEmpresa_Numero;
    property BAIRRO: string read getEmpresa_Bairro write setEmpresa_Bairro;
    property CEP: string read getEmpresa_Cep write setEmpresa_Cep;
    property MUNICIPIO: string read getEmpresa_Municipio write setEmpresa_Municipio;
    property COD_MUNICIPIO: integer read getEmpresa_Codigo_Municipio write setEmpresa_Codigo_Municipio;
    property ESTADO: string read getEmpresa_Estado write setEmpresa_Estado;
    property COD_UF: string read getEmpresa_Cod_Uf write setEmpresa_Cod_Uf;
    property PAIS: string read getEmpresa_Pais write setEmpresa_Pais;
    property COMPLEMENTO: string read getEmpresa_Complemento write setEmpresa_Complemento;
    property INICIO_ATIVIDADE: TdateTime read getEmpresa_Inicio_Atividade write setEmpresa_Inicio_Atividade;
    property IE_SUBSTITUTO_TRIBUTARIO: string read getEmpresa_Ie_Substituto_Tributario write setEmpresa_Ie_Substituto_Tributario;
    property CODIGO_REGIME_TRIBUTARIO: string read getEmpresa_Codigo_Regime_Tributario write setEmpresa_Codigo_Regime_Tributario;
    property TRIBUTACAO_PIS_COFINS: string read getEmpresa_Tributacao_Pis_Cofins write setEmpresa_Tributacao_Pis_Cofins;
    property APURACAO_MENSAL_IPI: string read getEmpresa_Apuracao_Mensal_Ipi write setEmpresa_Apuracao_Mensal_Ipi;
    property APURACAO_IPI: string read getEmpresa_Apuracao_Ipi write setEmpresa_Apuracao_Ipi;
    property APURACAO_DECIMAL_IPI: string read getEmpresa_Apuracao_Decendial_Ipi write setEmpresa_Apuracao_Decendial_Ipi;
    //property OPTANTE_SIMPLES_NACIONAL: string read getEmpresa_Optante_Pelo_Simples write setEmpresa_Optante_Pelo_Simples;
    property TRIBUTADO_ALIQUOTA_FIXA_ICMS: string read getEmpresa_Tributado_Aliquota_Fixa_Icms write setEmpresa_Tributado_Aliquota_Fixa_Icms;
    property CONTRIBUINTE_IPI: string read getEmpresa_Contribuinte_Ipi write setEmpresa_Contribuinte_Ipi;

    //Wander 02/04/2020
    property CONTRIBUINTE_ICMS: string read getEmpresa_Contribuinte_ICMS write setEmpresa_Contribuinte_ICMS;

    property ORGANIZACAO_CONTABIL_RAZAO_SOCIAL: string read getEmpresa_Organizacao_Contabil_Razao_Social write setEmpresa_Organizacao_Contabil_Razao_Social;
    property ORGANIZACAO_CONTABIL_NOME_FANTASIA: string read getEmpresa_Organizacao_Contabil_Nome_Fantasia write setEmpresa_Organizacao_Contabil_Nome_Fantasia;
    property ORGANIZACAO_CONTABIL_CNPJ_CPF: string read getEmpresa_Organizacao_Contabil_Cnpj_Cpf write setEmpresa_Organizacao_Contabil_Cnpj_Cpf;
    property ORGANIZACAO_CONTABIL_INSCRICAO: string read getEmpresa_Organizacao_Contabil_Inscricao write setEmpresa_Organizacao_Contabil_Inscricao;
    property ORGANIZACAO_CONTABIL_ENDERECO: string read getEmpresa_Organizacao_Contabil_Endereco write setEmpresa_Organizacao_Contabil_Endereco;
    property ORGANIZACAO_CONTABIL_BAIRRO: string read getEmpresa_Organizacao_Contabil_Bairro write setEmpresa_Organizacao_Contabil_Bairro;
    property ORGANIZACAO_CONTABIL_NUMERO: string read getEmpresa_Organizacao_Contabil_Numero write setEmpresa_Organizacao_Contabil_Numero;
    property ORGANIZACAO_CONTABIL_MUNICIPIO: string read getEmpresa_Organizacao_Contabil_Municipio write setEmpresa_Organizacao_Contabil_Municipio;
    property ORGANIZACAO_CONTABIL_CODIGO_MUNICIPIO: integer read getEmpresa_Organizacao_Contabil_Codigo_Municipio write setEmpresa_Organizacao_Contabil_Codigo_Municipio;
    property ORGANIZACAO_CONTABIL_ESTADO: string read getEmpresa_Organizacao_Contabil_Estado write setEmpresa_Organizacao_Contabil_Estado;
    property ORGANIZACAO_CONTABIL_PAIS: string read getEmpresa_Organizacao_Contabil_Pais write setEmpresa_Organizacao_Contabil_Pais;
    property ORGANIZACAO_CONTABIL_CEP: string read getEmpresa_Organizacao_Contabil_Cep write setEmpresa_Organizacao_Contabil_Cep;
    property ORGANIZACAO_CONTABIL_COMPLEMENTO: string read getEmpresa_Organizacao_Contabil_Complemento write setEmpresa_Organizacao_Contabil_Complemento;
    property ORGANIZACAO_CONTABIL_TELEFONE_01: string read getEmpresa_Organizacao_Contabil_Telefone_01 write setEmpresa_Organizacao_Contabil_Telefone_01;
    property ORGANIZACAO_CONTABIL_TELEFONE_02: string read getEmpresa_Organizacao_Contabil_Telefone_02 write setEmpresa_Organizacao_Contabil_Telefone_02;
    property ORGANIZACAO_CONTABIL_CELULAR_01: string read getEmpresa_Organizacao_Contabil_Celular_01 write setEmpresa_Organizacao_Contabil_Celular_01;
    property ORGANIZACAO_CONTABIL_CELULAR_02: string read getEmpresa_Organizacao_Contabil_Celular_02 write setEmpresa_Organizacao_Contabil_Celular_02;
    property ORGANIZACAO_CONTABIL_EMAIL_01: string read getEmpresa_Organizacao_Contabil_Email_01 write setEmpresa_Organizacao_Contabil_Email_01;
    property ORGANIZACAO_CONTABIL_EMAIL_02: string read getEmpresa_Organizacao_Contabil_Email_02 write setEmpresa_Organizacao_Contabil_Email_02;
    property ORGANIZACAO_CONTABIL_SITE: string read getEmpresa_Organizacao_Contabil_Site write setEmpresa_Organizacao_Contabil_Site;
    property ORGANIZACAO_CONTABIL_SKYPE: string read getEmpresa_Organizacao_Contabil_Skype write setEmpresa_Organizacao_Contabil_Skype;
    property CONTADOR_NOME: string read getEmpresa_Contador_Nome write setEmpresa_Contador_Nome;
    property CONTADOR_CPF: string read getEmpresa_Contador_Cpf write setEmpresa_Contador_Cpf;
    property CONTADOR_CRC: string read getEmpresa_Contador_Crc write setEmpresa_Contador_Crc;
    property NIRE: string read getEmpresa_Nire write setEmpresa_Nire;
    property CNAE: string read getEmpresa_Cnae write setEmpresa_Cnae;
    property BANCO_01: string read getEmpresa_Banco_01 write setEmpresa_Banco_01;
    property BANCO_OP: string read getEmpresa_Banco_Op write setEmpresa_Banco_Op;
    property BANCO_OP2: string read getEmpresa_Banco_Op2 write setEmpresa_Banco_Op2;
    property BANCO_OP_1: string read getEmpresa_Banco_Op_1 write setEmpresa_Banco_Op_1;
    property BANCO_OP_1_2: string read getEmpresa_Banco_Op_1_2 write setEmpresa_Banco_Op_1_2;
    property BANCO_AGENCIA_01: string read getEmpresa_Banco_Agencia_01 write setEmpresa_Banco_Agencia_01;
    property BANCO_CONTA_01: string read getEmpresa_Banco_Conta_01 write setEmpresa_Banco_Conta_01;
    property BANCO_02: string read getEmpresa_Banco_02 write setEmpresa_Banco_02;
    property BANCO_AGENCIA_01_DIGITO: string read getEmpresa_Banco_Agencia_01_Digito write setEmpresa_Banco_Agencia_01_Digito;
    property BANCO_CONTA_01_DIGITO: string read getEmpresa_Banco_Conta_01_Digito write setEmpresa_Banco_Conta_01_Digito;
    property BANCO_AGENCIA_02_DIGITO: string read getEmpresa_Banco_Agencia_02_Digito write setEmpresa_Banco_Agencia_02_Digito;
    property BANCO_CONTA_02_DIGITO: string read getEmpresa_Banco_Conta_02_Digito write setEmpresa_Banco_Conta_02_Digito;
    property BANCO_AGENCIA_02: string read getEmpresa_Banco_Agencia_02 write setEmpresa_Banco_Agencia_02;
    property BANCO_CONTA_02: string read getEmpresa_Banco_Conta_02 write setEmpresa_Banco_Conta_02;
    property BANCO_03: integer read getEmpresa_Banco_03 write setEmpresa_Banco_03;
    property BANCO_AGENCIA_03: string read getEmpresa_Banco_Agencia_03 write setEmpresa_Banco_Agencia_03;
    property BANCO_CONTA_03: string read getEmpresa_Banco_Conta_03 write setEmpresa_Banco_Conta_03;
    property BANCO_GERENTE_01: string read getEmpresa_Banco_Gerente_01 write setEmpresa_Banco_Gerente_01;
    property BANCO_TELEFONE_01: string read getEmpresa_Banco_Telefone_01 write setEmpresa_Banco_Telefone_01;
    property BANCO_RAMAL_01: string read getEmpresa_Banco_Ramal_01 write setEmpresa_Banco_Ramal_01;
    property BANCO_GERENTE_02: string read getEmpresa_Banco_Gerente_02 write setEmpresa_Banco_Gerente_02;
    property BANCO_TELEFONE_02: string read getEmpresa_Banco_Telefone_02 write setEmpresa_Banco_Telefone_02;
    property BANCO_RAMAL_02: string read getEmpresa_Banco_Ramal_02 write setEmpresa_Banco_Ramal_02;
    property SOCIO_01: integer read getEmpresa_Socio_01 write setEmpresa_Socio_01;
    property SOCIO_02: integer read getEmpresa_Socio_02 write setEmpresa_Socio_02;
    property RODAPE: string read getEmpresa_Rodape write setEmpresa_Rodape;
    property LOGOTIPO: string read getEmpresa_Logotipo write setEmpresa_Logotipo;
    property SELECAO_EMPRESA: string read getEmpresa_Selecao_Empresa write setEmpresa_Selecao_Empresa;
    property CODIGO_IDENTIFICACAO: string read getEmpresa_Codigo_Identificacao write setEmpresa_Codigo_Identificacao;
    property CHAVE_ATIVACAO: string read getEmpresa_Chave_Ativacao write setEmpresa_Chave_Ativacao;
    property CODIGO_PAIS: integer read getEmpresa_Codigo_Pais write setEmpresa_Codigo_Pais;
    property ORGANIZACAO_CONTABIL_CODPAIS: integer read getEmpresa_Organizacao_Contabil_Codpais write setEmpresa_Organizacao_Contabil_Codpais;
    property ORGANIZACAO_CONTABIL_CPF: string read getEmpresa_Organizacao_Contabil_Cpf write setEmpresa_Organizacao_Contabil_Cpf;
    property NOME_CONTATO_AD: string read getEmpresa_Nome_Contato_Ad write setEmpresa_Nome_Contato_Ad;
    property DIA_VENCIMENTO: string read getEmpresa_Dia_Vencimento write setEmpresa_Dia_Vencimento;
    property ARQUIVOS_FISCAIS_EMAIL_01: string read getEmpresa_Arquivos_Fiscais_Email_01 write setEmpresa_Arquivos_Fiscais_Email_01;
    property ARQUIVOS_FISCAIS_EMAIL_02: string read getEmpresa_Arquivos_Fiscais_Email_02 write setEmpresa_Arquivos_Fiscais_Email_02;
    property ORGANIZACAO_CONTABIL_NOME: string read getEmpresa_Organizacao_Contabil_Nome write setEmpresa_Organizacao_Contabil_Nome;

    constructor Create; overload;
    procedure Salvar(pUk: TUpdateKind = ukHard);
    function isRegistered: boolean;
    function All: tfdquery;

  end;

implementation

{ TEmpresa }

uses h_Checks;

function TEmpresa.All: tfdquery;
begin
  result := tdb.SimpleQuery('select * from empresa');
end;

procedure TEmpresa.ClearData;
begin

  Empresa_Codigo := 0;
  Empresa_Razao_Social := '';
  Empresa_Nome_Fantasia := '';
  Empresa_Data_Cadastro := 0;
  Empresa_Cnpj := '';
  Empresa_Inscricao_Estadual := '';
  Empresa_Inscricao_Municipal := '';
  Empresa_Telefone_01 := '';
  Empresa_Telefone_02 := '';
  Empresa_Telefone_03 := '';
  Empresa_Fax := '';
  Empresa_Celular_01 := '';
  Empresa_celular_02 := '';
  Empresa_Skype := '';
  Empresa_Site := '';
  Empresa_Email_01 := '';
  Empresa_Email_02 := '';
  Empresa_Suframa := '';
  Empresa_Endereco := '';
  Empresa_Numero := '';
  Empresa_Bairro := '';
  Empresa_Cep := '';
  Empresa_Municipio := '';
  Empresa_Codigo_Municipio := 0;
  Empresa_Estado := '';
  Empresa_Cod_Uf := '';
  Empresa_Pais := '';
  Empresa_Complemento := '';
  Empresa_Inicio_Atividade := 0;
  Empresa_Ie_Substituto_Tributario := '';
  Empresa_Codigo_Regime_Tributario := '';
  Empresa_Tributacao_Pis_Cofins := '';
  Empresa_Apuracao_Mensal_Ipi := '';
  Empresa_Apuracao_Ipi := '';
  Empresa_Apuracao_Decendial_Ipi := '';
  Empresa_Optante_Pelo_Simples := '';
  Empresa_Tributado_Aliquota_Fixa_Icms := '';
  Empresa_Contribuinte_Ipi := '';

  //Wander 02/04/2020
  Empresa_Contribuinte_ICMS := '';

  Empresa_Organizacao_Contabil_Razao_Social := '';
  Empresa_Organizacao_Contabil_Nome_Fantasia := '';
  Empresa_Organizacao_Contabil_Cnpj_Cpf := '';
  Empresa_Organizacao_Contabil_Inscricao := '';
  Empresa_Organizacao_Contabil_Endereco := '';
  Empresa_Organizacao_Contabil_Bairro := '';
  Empresa_Organizacao_Contabil_Numero := '';
  Empresa_Organizacao_Contabil_Municipio := '';
  Empresa_Organizacao_Contabil_Codigo_Municipio := 0;
  Empresa_Organizacao_Contabil_Estado := '';
  Empresa_Organizacao_Contabil_Pais := '';
  Empresa_Organizacao_Contabil_Cep := '';
  Empresa_Organizacao_Contabil_Complemento := '';
  Empresa_Organizacao_Contabil_Telefone_01 := '';
  Empresa_Organizacao_Contabil_Telefone_02 := '';
  Empresa_Organizacao_Contabil_Celular_01 := '';
  Empresa_Organizacao_Contabil_Celular_02 := '';
  Empresa_Organizacao_Contabil_Email_01 := '';
  Empresa_Organizacao_Contabil_Email_02 := '';
  Empresa_Organizacao_Contabil_Site := '';
  Empresa_Organizacao_Contabil_Skype := '';
  Empresa_Contador_Nome := '';
  Empresa_Contador_Cpf := '';
  Empresa_Contador_Crc := '';
  Empresa_Nire := '';
  Empresa_Cnae := '';
  Empresa_Banco_01 := '';
  Empresa_Banco_Op := '';
  Empresa_Banco_Op2 := '';
  Empresa_Banco_Op_1 := '';
  Empresa_Banco_Op_1_2 := '';
  Empresa_Banco_Agencia_01 := '';
  Empresa_Banco_Conta_01 := '';
  Empresa_Banco_02 := '';
  Empresa_Banco_Agencia_01_Digito := '';
  Empresa_Banco_Conta_01_Digito := '';
  Empresa_Banco_Agencia_02_Digito := '';
  Empresa_Banco_Conta_02_Digito := '';
  Empresa_Banco_Agencia_02 := '';
  Empresa_Banco_Conta_02 := '';
  Empresa_Banco_03 := 0;
  Empresa_Banco_Agencia_03 := '';
  Empresa_Banco_Conta_03 := '';
  Empresa_Banco_Gerente_01 := '';
  Empresa_Banco_Telefone_01 := '';
  Empresa_Banco_Ramal_01 := '';
  Empresa_Banco_Gerente_02 := '';
  Empresa_Banco_Telefone_02 := '';
  Empresa_Banco_Ramal_02 := '';
  Empresa_Socio_01 := 0;
  Empresa_Socio_02 := 0;
  Empresa_Rodape := '';
  Empresa_Logotipo := '';
  Empresa_Selecao_Empresa := '';
  Empresa_Codigo_Identificacao := '';
  Empresa_Chave_Ativacao := '';
  Empresa_Codigo_Pais := 0;
  Empresa_Organizacao_Contabil_Codpais := 0;
  Empresa_Organizacao_Contabil_Cpf := '';
  Empresa_Nome_Contato_Ad := '';
  Empresa_Dia_Vencimento := '';
  Empresa_Arquivos_Fiscais_Email_01 := '';
  Empresa_Arquivos_Fiscais_Email_02 := '';
  Empresa_Organizacao_Contabil_Nome := '';
end;

constructor TEmpresa.Create;
var
  qry: tfdquery;
begin
  inherited Create;
  self.ClearData;
  qry := self.All;

  if qry <> nil then
  begin

    self.Empresa_Razao_Social := qry.fieldbyname('RAZAO_SOCIAL').asString;
    self.Empresa_Nome_Fantasia := qry.fieldbyname('NOME_FANTASIA').asString;
    self.Empresa_Cnpj := qry.fieldbyname('CNPJ').asString;
    self.Empresa_Estado := qry.fieldbyname('ESTADO').asString;
    self.Empresa_Cod_Uf := qry.fieldbyname('COD_UF').asString;
    self.Empresa_Codigo_Regime_Tributario := qry.fieldbyname('CODIGO_REGIME_TRIBUTARIO').asString;

    qry := nil;
  end;
end;

procedure TEmpresa.Delete(const pID: integer);
begin
  tdb.ExecQuery('DELETE FROM EMPRESA WHERE CODIGO = ?', [pID]);
end;

function TEmpresa.getEmpresa_Apuracao_Decendial_Ipi: string;
begin
  result := self.Empresa_Apuracao_Decendial_Ipi;
end;

function TEmpresa.getEmpresa_Apuracao_Ipi: string;
begin
  result := self.Empresa_Apuracao_Ipi;
end;

function TEmpresa.getEmpresa_Apuracao_Mensal_Ipi: string;
begin
  result := self.Empresa_Apuracao_Mensal_Ipi;
end;

function TEmpresa.getEmpresa_Arquivos_Fiscais_Email_01: string;
begin
  result := self.Empresa_Arquivos_Fiscais_Email_01;
end;

function TEmpresa.getEmpresa_Arquivos_Fiscais_Email_02: string;
begin
  result := self.Empresa_Arquivos_Fiscais_Email_02;
end;

function TEmpresa.getEmpresa_Bairro: string;
begin
  result := self.Empresa_Bairro;
end;

function TEmpresa.getEmpresa_Banco_01: string;
begin
  result := self.Empresa_Banco_01;
end;

function TEmpresa.getEmpresa_Banco_02: string;
begin
  result := self.Empresa_Banco_02;
end;

function TEmpresa.getEmpresa_Banco_03: integer;
begin
  result := self.Empresa_Banco_03;
end;

function TEmpresa.getEmpresa_Banco_Agencia_01: string;
begin
  result := self.Empresa_Banco_Agencia_01;
end;

function TEmpresa.getEmpresa_Banco_Agencia_01_Digito: string;
begin
  result := self.Empresa_Banco_Agencia_01_Digito;
end;

function TEmpresa.getEmpresa_Banco_Agencia_02: string;
begin
  result := self.Empresa_Banco_Agencia_02;
end;

function TEmpresa.getEmpresa_Banco_Agencia_02_Digito: string;
begin
  result := self.Empresa_Banco_Agencia_02_Digito;
end;

function TEmpresa.getEmpresa_Banco_Agencia_03: string;
begin
  result := self.Empresa_Banco_Agencia_03
end;

function TEmpresa.getEmpresa_Banco_Conta_01: string;
begin
  result := self.Empresa_Banco_Conta_01;
end;

function TEmpresa.getEmpresa_Banco_Conta_01_Digito: string;
begin
  result := self.Empresa_Banco_Conta_01_Digito;
end;

function TEmpresa.getEmpresa_Banco_Conta_02: string;
begin
  result := self.Empresa_Banco_Conta_02;
end;

function TEmpresa.getEmpresa_Banco_Conta_02_Digito: string;
begin
  result := self.Empresa_Banco_Conta_02_Digito;
end;

function TEmpresa.getEmpresa_Banco_Conta_03: string;
begin
  result := self.Empresa_Banco_Conta_03;
end;

function TEmpresa.getEmpresa_Banco_Gerente_01: string;
begin
  result := self.Empresa_Banco_Gerente_01;
end;

function TEmpresa.getEmpresa_Banco_Gerente_02: string;
begin
  result := self.Empresa_Banco_Gerente_02;
end;

function TEmpresa.getEmpresa_Banco_Op: string;
begin
  result := self.Empresa_Banco_Op;
end;

function TEmpresa.getEmpresa_Banco_Op2: string;
begin
  result := self.Empresa_Banco_Op2;
end;

function TEmpresa.getEmpresa_Banco_Op_1: string;
begin
  result := self.Empresa_Banco_Op_1;
end;

function TEmpresa.getEmpresa_Banco_Op_1_2: string;
begin
  result := self.Empresa_Banco_Op_1_2;
end;

function TEmpresa.getEmpresa_Banco_Ramal_01: string;
begin
  result := self.Empresa_Banco_Ramal_01;
end;

function TEmpresa.getEmpresa_Banco_Ramal_02: string;
begin
  result := self.Empresa_Banco_Ramal_02;
end;

function TEmpresa.getEmpresa_Banco_Telefone_01: string;
begin
  result := self.Empresa_Banco_Telefone_01;
end;

function TEmpresa.getEmpresa_Banco_Telefone_02: string;
begin
  result := self.Empresa_Banco_Telefone_02;
end;

function TEmpresa.getEmpresa_Celular_01: string;
begin
  result := self.Empresa_Celular_01;
end;

function TEmpresa.getEmpresa_celular_02: string;
begin
  result := self.Empresa_celular_02;
end;

function TEmpresa.getEmpresa_Cep: string;
begin
  result := self.Empresa_Cep;
end;

function TEmpresa.getEmpresa_Chave_Ativacao: string;
begin
  result := self.Empresa_Chave_Ativacao;
end;

function TEmpresa.getEmpresa_Cnae: string;
begin
  result := self.Empresa_Cnae;
end;

function TEmpresa.getEmpresa_Cnpj: string;
begin
  result := self.Empresa_Cnpj;
end;

function TEmpresa.getEmpresa_Codigo: integer;
begin
  result := self.Empresa_Codigo;
end;

function TEmpresa.getEmpresa_Codigo_Identificacao: string;
begin
  result := self.Empresa_Codigo_Identificacao;
end;

function TEmpresa.getEmpresa_Codigo_Municipio: integer;
begin
  result := self.Empresa_Codigo_Municipio;
end;

function TEmpresa.getEmpresa_Codigo_Pais: integer;
begin
  result := self.Empresa_Codigo_Pais;
end;

function TEmpresa.getEmpresa_Codigo_Regime_Tributario: string;
begin
  result := self.Empresa_Codigo_Regime_Tributario;
end;

function TEmpresa.getEmpresa_Cod_Uf: string;
begin
  result := self.Empresa_Cod_Uf;
end;

function TEmpresa.getEmpresa_Complemento: string;
begin
  result := self.Empresa_Complemento;
end;

function TEmpresa.getEmpresa_Contador_Cpf: string;
begin
  result := self.Empresa_Contador_Cpf;
end;

function TEmpresa.getEmpresa_Contador_Crc: string;
begin
  result := self.Empresa_Contador_Crc;
end;

function TEmpresa.getEmpresa_Contador_Nome: string;
begin
  result := self.Empresa_Contador_Nome;
end;

function TEmpresa.getEmpresa_Contribuinte_Ipi: string;
begin
  result := self.Empresa_Contribuinte_Ipi;
end;

//Wander 02/04/2020
function TEmpresa.getEmpresa_Contribuinte_ICMS: string;
begin
  result := self.Empresa_Contribuinte_ICMS;
end;

function TEmpresa.getEmpresa_Data_Cadastro: TdateTime;
begin
  result := self.Empresa_Data_Cadastro;
end;

function TEmpresa.getEmpresa_Dia_Vencimento: string;
begin
  result := self.Empresa_Dia_Vencimento;
end;

function TEmpresa.getEmpresa_Email_01: string;
begin
  result := self.Empresa_Email_01;
end;

function TEmpresa.getEmpresa_Email_02: string;
begin
  result := self.Empresa_Email_02;
end;

function TEmpresa.getEmpresa_Endereco: string;
begin
  result := self.Empresa_Endereco;
end;

function TEmpresa.getEmpresa_Estado: string;
begin
  result := self.Empresa_Estado;
end;

function TEmpresa.getEmpresa_Fax: string;
begin
  result := self.Empresa_Fax;
end;

function TEmpresa.getEmpresa_Ie_Substituto_Tributario: string;
begin
  result := self.Empresa_Ie_Substituto_Tributario;
end;

function TEmpresa.getEmpresa_Inicio_Atividade: TdateTime;
begin
  result := self.Empresa_Inicio_Atividade;
end;

function TEmpresa.getEmpresa_Inscricao_Estadual: string;
begin
  result := self.Empresa_Inscricao_Estadual;
end;

function TEmpresa.getEmpresa_Inscricao_Municipal: string;
begin
  result := self.Empresa_Inscricao_Municipal;
end;

function TEmpresa.getEmpresa_Logotipo: string;
begin
  result := self.Empresa_Logotipo;
end;

function TEmpresa.getEmpresa_Municipio: string;
begin
  result := self.Empresa_Municipio;
end;

function TEmpresa.getEmpresa_Nire: string;
begin
  result := self.Empresa_Nire;
end;

function TEmpresa.getEmpresa_Nome_Contato_Ad: string;
begin
  result := self.Empresa_Nome_Contato_Ad;
end;

function TEmpresa.getEmpresa_Nome_Fantasia: string;
begin
  result := self.Empresa_Nome_Fantasia;
end;

function TEmpresa.getEmpresa_Numero: string;
begin
  result := self.Empresa_Numero;
end;

function TEmpresa.getEmpresa_Optante_Pelo_Simples: string;
begin
  result := self.Empresa_Optante_Pelo_Simples;
end;

function TEmpresa.getEmpresa_Organizacao_Contabil_Bairro: string;
begin
  result := self.Empresa_Organizacao_Contabil_Bairro
end;

function TEmpresa.getEmpresa_Organizacao_Contabil_Celular_01: string;
begin
  result := self.Empresa_Organizacao_Contabil_Celular_01;
end;

function TEmpresa.getEmpresa_Organizacao_Contabil_Celular_02: string;
begin
  result := self.Empresa_Organizacao_Contabil_Celular_02;
end;

function TEmpresa.getEmpresa_Organizacao_Contabil_Cep: string;
begin
  result := self.Empresa_Organizacao_Contabil_Cep;
end;

function TEmpresa.getEmpresa_Organizacao_Contabil_Cnpj_Cpf: string;
begin
  result := self.Empresa_Organizacao_Contabil_Cnpj_Cpf;
end;

function TEmpresa.getEmpresa_Organizacao_Contabil_Codigo_Municipio: integer;
begin
  result := self.Empresa_Organizacao_Contabil_Codigo_Municipio;
end;

function TEmpresa.getEmpresa_Organizacao_Contabil_Codpais: integer;
begin
  result := self.Empresa_Organizacao_Contabil_Codpais;
end;

function TEmpresa.getEmpresa_Organizacao_Contabil_Complemento: string;
begin
  result := self.Empresa_Organizacao_Contabil_Complemento;
end;

function TEmpresa.getEmpresa_Organizacao_Contabil_Cpf: string;
begin
  result := self.Empresa_Organizacao_Contabil_Cpf;
end;

function TEmpresa.getEmpresa_Organizacao_Contabil_Email_01: string;
begin
  result := self.Empresa_Organizacao_Contabil_Email_01;
end;

function TEmpresa.getEmpresa_Organizacao_Contabil_Email_02: string;
begin
  result := self.Empresa_Organizacao_Contabil_Email_02;
end;

function TEmpresa.getEmpresa_Organizacao_Contabil_Endereco: string;
begin
  result := self.Empresa_Organizacao_Contabil_Endereco;
end;

function TEmpresa.getEmpresa_Organizacao_Contabil_Estado: string;
begin
  result := self.Empresa_Organizacao_Contabil_Estado;
end;

function TEmpresa.getEmpresa_Organizacao_Contabil_Inscricao: string;
begin
  result := self.Empresa_Organizacao_Contabil_Inscricao;
end;

function TEmpresa.getEmpresa_Organizacao_Contabil_Municipio: string;
begin
  result := self.Empresa_Organizacao_Contabil_Municipio;
end;

function TEmpresa.getEmpresa_Organizacao_Contabil_Nome: string;
begin
  result := self.Empresa_Organizacao_Contabil_Nome;
end;

function TEmpresa.getEmpresa_Organizacao_Contabil_Numero: string;
begin
  result := self.Empresa_Organizacao_Contabil_Numero;
end;

function TEmpresa.getEmpresa_Organizacao_Contabil_Pais: string;
begin
  result := self.Empresa_Organizacao_Contabil_Pais;
end;

function TEmpresa.getEmpresa_Organizacao_Contabil_Nome_Fantasia: string;
begin
  result := self.Empresa_Organizacao_Contabil_Nome_Fantasia;
end;

function TEmpresa.getEmpresa_Organizacao_Contabil_Razao_Social: string;
begin
  result := self.Empresa_Organizacao_Contabil_Razao_Social;
end;

function TEmpresa.getEmpresa_Organizacao_Contabil_Site: string;
begin
  result := self.Empresa_Organizacao_Contabil_Site;
end;

function TEmpresa.getEmpresa_Organizacao_Contabil_Skype: string;
begin
  result := self.Empresa_Organizacao_Contabil_Skype;
end;

function TEmpresa.getEmpresa_Organizacao_Contabil_Telefone_01: string;
begin
  result := self.Empresa_Organizacao_Contabil_Telefone_01;
end;

function TEmpresa.getEmpresa_Organizacao_Contabil_Telefone_02: string;
begin
  result := self.Empresa_Organizacao_Contabil_Telefone_02;
end;

function TEmpresa.getEmpresa_Pais: string;
begin
  result := self.Empresa_Pais;
end;

function TEmpresa.getEmpresa_Razao_Social: string;
begin
  result := self.Empresa_Razao_Social;
end;

function TEmpresa.getEmpresa_Rodape: string;
begin
  result := self.Empresa_Rodape;
end;

function TEmpresa.getEmpresa_Selecao_Empresa: string;
begin
  result := self.Empresa_Selecao_Empresa;
end;

function TEmpresa.getEmpresa_Site: string;
begin
  result := self.Empresa_Site;
end;

function TEmpresa.getEmpresa_Skype: string;
begin
  result := self.Empresa_Skype;
end;

function TEmpresa.getEmpresa_Socio_01: integer;
begin
  result := self.Empresa_Socio_01;
end;

function TEmpresa.getEmpresa_Socio_02: integer;
begin
  result := self.Empresa_Socio_02;
end;

function TEmpresa.getEmpresa_Suframa: string;
begin
  result := self.Empresa_Suframa;
end;

function TEmpresa.getEmpresa_Telefone_01: string;
begin
  result := self.Empresa_Telefone_01;
end;

function TEmpresa.getEmpresa_Telefone_02: string;
begin
  result := self.Empresa_Telefone_02;
end;

function TEmpresa.getEmpresa_Telefone_03: string;
begin
  result := self.Empresa_Telefone_03;
end;

function TEmpresa.getEmpresa_Tributacao_Pis_Cofins: string;
begin
  result := self.Empresa_Tributacao_Pis_Cofins;
end;

function TEmpresa.getEmpresa_Tributado_Aliquota_Fixa_Icms: string;
begin
  result := self.Empresa_Tributado_Aliquota_Fixa_Icms;
end;

procedure TEmpresa.Insert;
begin

end;

function TEmpresa.isRegistered: boolean;
begin
  result := self.Empresa_Cnpj <> '';
end;

function TEmpresa.Select(FieldNames: array of String; const Values: array of Variant): tfdquery;
begin
  result := tdb.SimpleQuery('SELECT * FROM EMPRESA' + tdb.GenWhere(FieldNames), Values);
end;

procedure TEmpresa.Salvar(pUk: TUpdateKind);
begin

end;

function TEmpresa.Select(const pID: integer): tfdquery;
begin
  result := self.Select(['CODIGO'], [pID]);
end;

procedure TEmpresa.setEmpresa_Apuracao_Decendial_Ipi(value: string);
begin
  self.Empresa_Apuracao_Decendial_Ipi := value;
end;

procedure TEmpresa.setEmpresa_Apuracao_Ipi(value: string);
begin
  self.Empresa_Apuracao_Ipi := value;
end;

procedure TEmpresa.setEmpresa_Apuracao_Mensal_Ipi(value: string);
begin
  self.Empresa_Apuracao_Mensal_Ipi := value;
end;

procedure TEmpresa.setEmpresa_Arquivos_Fiscais_Email_01(value: string);
begin
  if value = '' then
    raise Exception.Create('Email de arquivos fiscais deve ser preenchido!');

  self.Empresa_Arquivos_Fiscais_Email_01 := value;
end;

procedure TEmpresa.setEmpresa_Arquivos_Fiscais_Email_02(value: string);
begin
  self.Empresa_Arquivos_Fiscais_Email_02 := value;
end;

procedure TEmpresa.setEmpresa_Bairro(value: string);
begin
  if value = '' then
    raise Exception.Create('Bairro deve ser informado!');

  self.Empresa_Bairro := value;
end;

procedure TEmpresa.setEmpresa_Banco_01(value: string);
begin
  self.Empresa_Banco_01 := value;
end;

procedure TEmpresa.setEmpresa_Banco_02(value: string);
begin
  self.Empresa_Banco_02 := value;
end;

procedure TEmpresa.setEmpresa_Banco_03(value: integer);
begin
  self.Empresa_Banco_03 := value;
end;

procedure TEmpresa.setEmpresa_Banco_Agencia_01(value: string);
begin
  self.Empresa_Banco_Agencia_01 := value;
end;

procedure TEmpresa.setEmpresa_Banco_Agencia_01_Digito(value: string);
begin
  self.Empresa_Banco_Agencia_01_Digito := value;
end;

procedure TEmpresa.setEmpresa_Banco_Agencia_02(value: string);
begin
  self.Empresa_Banco_Agencia_02 := value;
end;

procedure TEmpresa.setEmpresa_Banco_Agencia_02_Digito(value: string);
begin
  self.Empresa_Banco_Agencia_02_Digito := value;
end;

procedure TEmpresa.setEmpresa_Banco_Agencia_03(value: string);
begin
  self.Empresa_Banco_Agencia_03 := value;
end;

procedure TEmpresa.setEmpresa_Banco_Conta_01(value: string);
begin
  self.Empresa_Banco_Conta_01 := value;
end;

procedure TEmpresa.setEmpresa_Banco_Conta_01_Digito(value: string);
begin
  self.Empresa_Banco_Conta_01_Digito := value;
end;

procedure TEmpresa.setEmpresa_Banco_Conta_02(value: string);
begin
  self.Empresa_Banco_Conta_02 := value;
end;

procedure TEmpresa.setEmpresa_Banco_Conta_02_Digito(value: string);
begin
  self.Empresa_Banco_Conta_02_Digito := value;
end;

procedure TEmpresa.setEmpresa_Banco_Conta_03(value: string);
begin
  self.Empresa_Banco_Conta_03 := value;
end;

procedure TEmpresa.setEmpresa_Banco_Gerente_01(value: string);
begin
  self.Empresa_Banco_Gerente_01 := value
end;

procedure TEmpresa.setEmpresa_Banco_Gerente_02(value: string);
begin
  self.Empresa_Banco_Gerente_02 := value;
end;

procedure TEmpresa.setEmpresa_Banco_Op(value: string);
begin
  self.Empresa_Banco_Op := value;
end;

procedure TEmpresa.setEmpresa_Banco_Op2(value: string);
begin
  self.Empresa_Banco_Op2 := value;
end;

procedure TEmpresa.setEmpresa_Banco_Op_1(value: string);
begin
  self.Empresa_Banco_Op_1 := value;
end;

procedure TEmpresa.setEmpresa_Banco_Op_1_2(value: string);
begin
  self.Empresa_Banco_Op_1_2 := value;
end;

procedure TEmpresa.setEmpresa_Banco_Ramal_01(value: string);
begin
  self.Empresa_Banco_Ramal_01 := value;
end;

procedure TEmpresa.setEmpresa_Banco_Ramal_02(value: string);
begin
  self.Empresa_Banco_Ramal_02 := value;
end;

procedure TEmpresa.setEmpresa_Banco_Telefone_01(value: string);
begin
  self.Empresa_Banco_Telefone_01 := value;
end;

procedure TEmpresa.setEmpresa_Banco_Telefone_02(value: string);
begin
  self.Empresa_Banco_Telefone_02 := value;
end;

procedure TEmpresa.setEmpresa_Celular_01(value: string);
begin
  self.Empresa_Celular_01 := value;
end;

procedure TEmpresa.setEmpresa_celular_02(value: string);
begin
  self.Empresa_celular_02 := value;
end;

procedure TEmpresa.setEmpresa_Cep(value: string);
begin
  if value = '' then
    raise Exception.Create('Cep deve ser informado!');

  self.Empresa_Cep := value;
end;

procedure TEmpresa.setEmpresa_Chave_Ativacao(value: string);
begin
  self.Empresa_Chave_Ativacao := value;
end;

procedure TEmpresa.setEmpresa_Cnae(value: string);
begin
  if value = '' then
    raise Exception.Create('Cnae deve ser informado!');

  self.Empresa_Cnae := value;
end;

procedure TEmpresa.setEmpresa_Cnpj(value: string);
begin
  value := tchecks.CNPJ(value);
  if value = '' then
    raise Exception.Create('CNPJ deve ser informado.');

  self.Empresa_Cnpj := value;
end;

procedure TEmpresa.setEmpresa_Codigo(value: integer);
begin
  self.Empresa_Codigo := value;
end;

procedure TEmpresa.setEmpresa_Codigo_Identificacao(value: string);
begin
  self.Empresa_Codigo_Identificacao := value;
end;

procedure TEmpresa.setEmpresa_Codigo_Municipio(value: integer);
begin
  if value = 0 then
    raise Exception.Create('Codigo do municipio deve ser informado!');

  self.Empresa_Codigo_Municipio := value;
end;

procedure TEmpresa.setEmpresa_Codigo_Pais(value: integer);
begin
  self.Empresa_Codigo_Pais := value;
end;

procedure TEmpresa.setEmpresa_Codigo_Regime_Tributario(value: string);
begin
  if value = '' then
    raise Exception.Create('Regime Tribut�rio deve ser informado!');
  self.Empresa_Codigo_Regime_Tributario := value;
end;

procedure TEmpresa.setEmpresa_Cod_Uf(value: string);
begin
  if value = '' then
    raise Exception.Create('Codigo da UF deve ser informado!');

  self.Empresa_Cod_Uf := value;
end;

procedure TEmpresa.setEmpresa_Complemento(value: string);
begin
  self.Empresa_Complemento := value;
end;

procedure TEmpresa.setEmpresa_Contador_Cpf(value: string);
begin
  self.Empresa_Contador_Cpf := value;
end;

procedure TEmpresa.setEmpresa_Contador_Crc(value: string);
begin
  if value = '' then
    raise Exception.Create('Registro CRC do Contabilista deve ser informado!');
  self.Empresa_Contador_Crc := value;
end;

procedure TEmpresa.setEmpresa_Contador_Nome(value: string);
begin
  if value = '' then
    raise Exception.Create('Nome do Contabilista deve ser informado!');

  self.Empresa_Contador_Nome := value;
end;

procedure TEmpresa.setEmpresa_Contribuinte_Ipi(value: string);
begin
  self.Empresa_Contribuinte_Ipi := value;
end;

//Wander 02/04/2020
procedure TEmpresa.setEmpresa_Contribuinte_ICMS(value: string);
begin
  self.Empresa_Contribuinte_ICMS := value;
end;

procedure TEmpresa.setEmpresa_Data_Cadastro(value: TdateTime);
begin
  self.Empresa_Data_Cadastro := value;
end;

procedure TEmpresa.setEmpresa_Dia_Vencimento(value: string);
begin
  if value = '' then
    raise Exception.Create('Dia do vencimento deve ser informado!');
  self.Empresa_Dia_Vencimento := value;
end;

procedure TEmpresa.setEmpresa_Email_01(value: string);
begin
  self.Empresa_Email_01 := value;
end;

procedure TEmpresa.setEmpresa_Email_02(value: string);
begin
  self.Empresa_Email_02 := value;
end;

procedure TEmpresa.setEmpresa_Endereco(value: string);
begin
  if value = '' then
    raise Exception.Create('Endere�o da Empresa deve ser informado!');

  self.Empresa_Endereco := value;
end;

procedure TEmpresa.setEmpresa_Estado(value: string);
begin
  if value = '' then
    raise Exception.Create('Estado deve ser informado!');
  self.Empresa_Estado := value;
end;

procedure TEmpresa.setEmpresa_Fax(value: string);
begin
  self.Empresa_Fax := value;
end;

procedure TEmpresa.setEmpresa_Ie_Substituto_Tributario(value: string);
begin
  self.Empresa_Ie_Substituto_Tributario := value;
end;

procedure TEmpresa.setEmpresa_Inicio_Atividade(value: TdateTime);
begin
  if value = 0 then
    raise Exception.Create('Data Inicio da atividade deve ser informado!');

  self.Empresa_Inicio_Atividade := value;
end;

procedure TEmpresa.setEmpresa_Inscricao_Estadual(value: string);
begin
  if value = '' then
    raise Exception.Create('Inscri��o Estadual deve ser informada!');
  self.Empresa_Inscricao_Estadual := value;
end;

procedure TEmpresa.setEmpresa_Inscricao_Municipal(value: string);
begin
  self.Empresa_Inscricao_Municipal := value;
end;

procedure TEmpresa.setEmpresa_Logotipo(value: string);
begin
  self.Empresa_Logotipo := value;
end;

procedure TEmpresa.setEmpresa_Municipio(value: string);
begin
  if value = '' then
    raise Exception.Create('Municipio deve ser informado!');

  self.Empresa_Municipio := value;
end;

procedure TEmpresa.setEmpresa_Nire(value: string);
begin
  self.Empresa_Nire := value;
end;

procedure TEmpresa.setEmpresa_Nome_Contato_Ad(value: string);
begin
  self.Empresa_Nome_Contato_Ad := value;
end;

procedure TEmpresa.setEmpresa_Nome_Fantasia(value: string);
begin
  if value = '' then
    raise Exception.Create('Nome Fantasia deve ser informado!');

  self.Empresa_Nome_Fantasia := value;
end;

procedure TEmpresa.setEmpresa_Numero(value: string);
begin
  if value = '' then
    raise Exception.Create('N�mero da Empresa deve ser informado!');
  self.Empresa_Numero := value;
end;

procedure TEmpresa.setEmpresa_Optante_Pelo_Simples(value: string);
begin
  self.Empresa_Optante_Pelo_Simples := value;
end;

procedure TEmpresa.setEmpresa_Organizacao_Contabil_Bairro(value: string);
begin
  self.Empresa_Organizacao_Contabil_Bairro := value;
end;

procedure TEmpresa.setEmpresa_Organizacao_Contabil_Celular_01(value: string);
begin
  self.Empresa_Organizacao_Contabil_Celular_01 := value;
end;

procedure TEmpresa.setEmpresa_Organizacao_Contabil_Celular_02(value: string);
begin
  self.Empresa_Organizacao_Contabil_Celular_02 := value;
end;

procedure TEmpresa.setEmpresa_Organizacao_Contabil_Cep(value: string);
begin
  self.Empresa_Organizacao_Contabil_Cep := value;
end;

procedure TEmpresa.setEmpresa_Organizacao_Contabil_Cnpj_Cpf(value: string);
begin
  self.Empresa_Organizacao_Contabil_Cnpj_Cpf := value;
end;

procedure TEmpresa.setEmpresa_Organizacao_Contabil_Codigo_Municipio(value: integer);
begin
  self.Empresa_Organizacao_Contabil_Codigo_Municipio := value;
end;

procedure TEmpresa.setEmpresa_Organizacao_Contabil_Codpais(value: integer);
begin
  self.Empresa_Organizacao_Contabil_Codpais := value;
end;

procedure TEmpresa.setEmpresa_Organizacao_Contabil_Complemento(value: string);
begin
  self.Empresa_Organizacao_Contabil_Complemento := value;
end;

procedure TEmpresa.setEmpresa_Organizacao_Contabil_Cpf(value: string);
begin
  self.Empresa_Organizacao_Contabil_Cpf := value;
end;

procedure TEmpresa.setEmpresa_Organizacao_Contabil_Email_01(value: string);
begin
  self.Empresa_Organizacao_Contabil_Email_01 := value;
end;

procedure TEmpresa.setEmpresa_Organizacao_Contabil_Email_02(value: string);
begin
  self.Empresa_Organizacao_Contabil_Email_02 := value;
end;

procedure TEmpresa.setEmpresa_Organizacao_Contabil_Endereco(value: string);
begin
  self.Empresa_Organizacao_Contabil_Endereco := value;
end;

procedure TEmpresa.setEmpresa_Organizacao_Contabil_Estado(value: string);
begin
  self.Empresa_Organizacao_Contabil_Estado := value;
end;

procedure TEmpresa.setEmpresa_Organizacao_Contabil_Inscricao(value: string);
begin
  self.Empresa_Organizacao_Contabil_Inscricao := value;
end;

procedure TEmpresa.setEmpresa_Organizacao_Contabil_Municipio(value: string);
begin
  self.Empresa_Organizacao_Contabil_Municipio := value;
end;

procedure TEmpresa.setEmpresa_Organizacao_Contabil_Nome(value: string);
begin
  self.Empresa_Organizacao_Contabil_Nome := value;
end;

procedure TEmpresa.setEmpresa_Organizacao_Contabil_Numero(value: string);
begin
  self.Empresa_Organizacao_Contabil_Numero := value;
end;

procedure TEmpresa.setEmpresa_Organizacao_Contabil_Pais(value: string);
begin
  self.Empresa_Organizacao_Contabil_Pais := value;
end;

procedure TEmpresa.setEmpresa_Organizacao_Contabil_Nome_Fantasia(value: string);
begin
  self.Empresa_Organizacao_Contabil_Nome_Fantasia := value;
end;

procedure TEmpresa.setEmpresa_Organizacao_Contabil_Razao_Social(value: string);
begin
  self.Empresa_Organizacao_Contabil_Razao_Social := value;
end;

procedure TEmpresa.setEmpresa_Organizacao_Contabil_Site(value: string);
begin
  self.Empresa_Organizacao_Contabil_Site := value;
end;

procedure TEmpresa.setEmpresa_Organizacao_Contabil_Skype(value: string);
begin
  self.Empresa_Organizacao_Contabil_Skype := value;
end;

procedure TEmpresa.setEmpresa_Organizacao_Contabil_Telefone_01(value: string);
begin
  self.Empresa_Organizacao_Contabil_Telefone_01 := value;
end;

procedure TEmpresa.setEmpresa_Organizacao_Contabil_Telefone_02(value: string);
begin
  self.Empresa_Organizacao_Contabil_Telefone_02 := value;
end;

procedure TEmpresa.setEmpresa_Pais(value: string);
begin
  if value = '' then
    raise Exception.Create('Pais de ve ser informado!');
  self.Empresa_Pais := value;
end;

procedure TEmpresa.setEmpresa_Razao_Social(value: string);
begin
  if value = '' then
    raise Exception.Create('Raz�o social deve ser infomada!');

  self.Empresa_Razao_Social := value;
end;

procedure TEmpresa.setEmpresa_Rodape(value: string);
begin
  self.Empresa_Rodape := value;
end;

procedure TEmpresa.setEmpresa_Selecao_Empresa(value: string);
begin
  self.Empresa_Selecao_Empresa := value;
end;

procedure TEmpresa.setEmpresa_Site(value: string);
begin
  self.Empresa_Site := value;
end;

procedure TEmpresa.setEmpresa_Skype(value: string);
begin
  self.Empresa_Skype := value;
end;

procedure TEmpresa.setEmpresa_Socio_01(value: integer);
begin
  self.Empresa_Socio_01 := value;
end;

procedure TEmpresa.setEmpresa_Socio_02(value: integer);
begin
  self.Empresa_Socio_02 := value;
end;

procedure TEmpresa.setEmpresa_Suframa(value: string);
begin
  self.Empresa_Suframa := value;
end;

procedure TEmpresa.setEmpresa_Telefone_01(value: string);
begin
  self.Empresa_Telefone_01 := value;
end;

procedure TEmpresa.setEmpresa_Telefone_02(value: string);
begin
  self.Empresa_Telefone_02 := value;
end;

procedure TEmpresa.setEmpresa_Telefone_03(value: string);
begin
  self.Empresa_Telefone_03 := value;
end;

procedure TEmpresa.setEmpresa_Tributacao_Pis_Cofins(value: string);
begin
  self.Empresa_Tributacao_Pis_Cofins := value;
end;

procedure TEmpresa.setEmpresa_Tributado_Aliquota_Fixa_Icms(value: string);
begin
  self.Empresa_Tributado_Aliquota_Fixa_Icms := value;
end;

procedure TEmpresa.Update(pUk: TUpdateKind);
begin

end;

end.
