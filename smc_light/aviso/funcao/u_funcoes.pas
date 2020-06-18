//Verificado automaticamente em 16/06/2020 09:26
{ v 15.10.16 11:18 }
unit u_funcoes;
{
================================================================================
|   DATA   |DESENVOLVEDOR|HISTORICO DA ALTERACAO DO CODIGO                     |
|----------|-------------|-----------------------------------------------------|
|20/02/2020|WANDER       |Transportadas para esta unit todas as funções que    |
|          |             |haviam sido desenvolvidas para o projeto que iria    |
|          |             |substituir este. Encontram-se reunidas em um mesmo   |
|        01|             |local no corpo desta unit.                           |
|----------|-------------|-----------------------------------------------------|
|21/02/2020|WANDER       |Criada a function UsuarioMASTER que retorna true se o|
|        04|             |usuário logado é o MASTER e false em caso contrário. |
|----------|-------------|-----------------------------------------------------|
|21/02/2020|WANDER       |A variável "public_Usuario_Logado" passou a se chamar|
|        05|             |Global_Usuario_Logado seguindo o padrão já existente.|
|----------|-------------|-----------------------------------------------------|
|22/02/2020|WANDER       |Criada a função Float_to_String para padronizar a    |
|        23|             |formatação e o tratamento de conversões de valores   |
|          |             |do tipo real para string formatada 9.999,99          |
================================================================================
}
interface

uses
  VCL.Forms, VCL.Dialogs, VCL.StdCtrls, cxCheckBox,
  FireDAC.Comp.Client, frxClass, Winapi.Windows, System.SysUtils,
  VCL.DBCtrls, VCL.Graphics, VCL.ComCtrls, cxButtons, dxBar,
  VCL.DBGrids, VCL.Grids, System.Classes, Data.DB,
  cxDropDownEdit, VCL.mask, IdGlobal,
  IdText, IdAttachmentFile, DateUtils,
  IdMessage, IniFiles,
  WinInet,

  IdSSLOpenSSL, IdSMTP, IdBaseComponent,
  IdExplicitTLSClientServerBase, Winapi.ShellAPI, System.IOUtils, cxmemo,
  cxcalendar, System.Variants,
  StrUtils, TlHelp32, extCtrls, cxDBEdit,
  cxGridCustomTableView, cxGraphics, VCL.controls, System.math,
  U_ConfNFCE, spdNFCeType, erro, System.Types,
  IdTCPConnection, IdRawBase,
  IdIcmpClient, Winsock, relatorios, xmlintf,
  IdHTTP, xmldoc, h_Files, h_functions, S_Module, h_net, registry;

//##############################################################################
//                    FUNCOES DESENVOLVIDAS PELO WANDER
//##############################################################################
procedure ApagaRegistroDeDadosDaTela(pTela:String);
// Apaga os registros de controle contendo os dados da tela
procedure ComparaDadosDaTela(pFrase:String;pTela:Tobject);
// Compara os dados da tela atual com o salvo antes (anterior)
procedure VerificaSeMudouDadoDaTela(pFrase,pTela,pNome,pValor:String);
// Compara os dados da tela atual com o salvo antes (anterior)
procedure SalvaDadosDaTela(Tela:TObject);
// Salva todos os campos da tela
procedure Salvar_DadosDaTela(pTela,pNome,pValor:String);
// salva um registro de campo da tela
function UsuarioMASTER_SenhaCorreta(pUsuario,pSenha:String):Boolean;
// retorna true se a senah do usuário está correta e retorna false se incorreta
function UsuarioMASTER:Boolean;
// retorna true se o usuário logado é o MASTER e false em caso contrário
function TemAcesso(pUsuario,pFuncao:string):Boolean;
// verificar se o usuário tem acesso a determinado recurso/funcionalidade do sistema
procedure RegistraLog(pEvento:String);
// Registra um evento do sistema
function DataServidor:tDatetime;
//  retorna a data do servidor para nao usar a data da estação
function HoraServidor:String;
//  retorna a Hora do servidor para nao usar a data da estação
procedure Executar(pTexto:String);
// executa scripts no banco de dados
function Cripto(Texto: String): String;
// Criptografa Texto
function DesCripto(Texto: String): String;
// Descriptografa Texto
function ValorAsc(Letra: String): Byte;
// retorna o valor ASC de Letra
function NaoAtualizado(pInformacao:String) : Boolean;
// Verifica se determinado script (pInformacao) ja foi aplicado ao banco de dados
Function NomeComputador : String;
// retorna o nome da estacao
procedure UsuarioLogou;
// Seta o usuario como "logado"
procedure UsuarioDeslogou;
// Seta o usuario como "deslogado"
procedure AcessoExclusivoMaster;
// Exibe mensagem padrão : "Acesso exclusivo do suporte..."
function fUltimaNFe(pNFe_SeRIE:String):integer;
// Retorna o último número de NFe emitida nesta série
function Float_to_String(pValor:real):String;
// Recebe um valor numérico ponto flutuante e devolve em string formatada 9.999,99
//##############################################################################
//                FIM DAS FUNCOES DESENVOLVIDAS PELO WANDER
//##############################################################################


procedure AlteraChecks(CheckMarcado: TcxCheckBox; ChecksDesmarcar: array of TcxCheckBox);
{ Procedimento para desmarcar checks quando apenas um estiver selecionado nas consultas. }

procedure MarcaChecks(CheckMarcado: TcxCheckBox; ChecksDesmarcar: array of TcxCheckBox);
{ Procedimento para desmarcar checks quando apenas um estiver selecionado nas consultas. }

function ConsultarCadastros(Consulta: TFDQuery; Texto, Tabela, Coluna, Parametro, Status, TipoItem, CampoTipoItem: String; dataInicio, dataFim: TDate): String;
{ Procedimento para consultar dado informado pelo usuário nas telas de cadastro. }

procedure ConsultarNCM_CFOP_CSOSN(Consulta: TFDQuery; Texto, Tabela, Coluna, Parametro: String);
{ Procedimento para consultar CSOSN, CEST E NCM. }

function VerificaAberta(Referencia: TForm): boolean;
{ Função para verificar se a janela requisitada já está aberta. }

function ListarTodosCadastros(Consulta: TFDQuery; Tabela: String): String;
{ Procedimento para consultar todos os cadastros e preencher no grid das telas de consulta. }

procedure ImprimirGridConsulta(ConsultaRelatorio, ConsultaGrid: TFDQuery; Relatorio: TfrxReport; CaminhoRelatorio: String);
{ Procedimento para imprimir um relatório apenas com os dados do grid da consultas. }

function colorirestoque(value: String; PROD_ESTOQMIN: extended): Integer;

function ApenasLetras(Tecla: Char): Char;
{ Função para permitir preenchimento de um campo apenas com letras. }

function ApenasNumeros(Tecla: Char): Char; overload;
function ApenasNumeros(Tecla: Char; arr_keys: array of Char): Char; overload;
{ Função para permitir preenchimento de um campo apenas com números. }

function isKeyNumLetter(Tecla: Word): boolean;
function NumLetter(Tecla: Char): Char; overload;
function NumLetter(Tecla: Char; remove_chars: array of Char): Char; overload;
{ Função para permitir preenchimento de um campo apenas com números. }

function isKeyControl(Tecla: Word): boolean;
{ Função para verificar se tecla digitada é uma tecla de controle }

function ContarQuantidadeCaracteres(Edit: TDBEdit; Key: Char; NomeCampo: String; QtdCaracteres: Integer): Char;
{ Procedimento para contar a quantidade de caracteres em um campo e limitar os mesmos. }

function CamposObrigatorios(ArrayDbEdit: array of TDBEdit; NomeCamposDBEdit: array of String; ArrayDbLookup: array of TDBLookupComboBox;
  NomeCamposDBLookup: array of String; ArraycxComboBox: array of TcxComboBox; NomeComboBox: array of String): boolean; overload;

function CamposObrigatorios(ArrayEdit: array of TEdit; NomeCamposEdit: array of String): boolean; overload;

function CamposObrigatorios(ArrayDbEdit: array of TDBEdit; NomeCamposDBEdit: array of String; ArraycxDateEdit: array of TCxDateEdit;
  NomeCamposcxDateEdit: array of String): boolean; overload;

function CamposObrigatorios(ArrayDbEdit: array of TDBEdit; NomeCamposDBEdit: array of String; ArrayEdit: array of TEdit; NomeCamposEdit: array of String)
  : boolean; overload;

function CamposObrigatorios(ArraycxDBTextEdit: array of TcxDBTextEdit; NomeCamposcxDBTextEdit: array of string;
  ArraycxDBCurrencyedit: array of TcxDBCurrencyEdit; NomeCamposcxDBCurrencyEdit: Array of string): boolean; overload;

function CamposObrigatorios(ArrayDbEdit: array of TDBEdit; NomeCamposDBEdit: array of String; ArrayDbLookup: array of TDBLookupComboBox;
  NomeCamposDBLookup: array of String; ArraycxComboBox: array of TcxComboBox; NomeComboBox: array of String; ArrayMaskEdit: array of TMaskEdit;
  NomeCamposTMaskEdit: array of String): boolean; overload;

procedure CamposObrigatorios_CorPadrao(ArrayDbEdit: array of TDBEdit; ArrayDbLookup: array of TDBLookupComboBox;
  ArraycxComboBox: array of TcxComboBox); overload;
{ Procedimento para voltar a cor padrão dos campos. }

procedure CamposObrigatorios_CorPadrao(ArrayEdit: array of TEdit; ArrayDbEdit: array of TDBEdit); overload;

procedure CamposObrigatorios_CorPadrao(ArrayDbEdit: array of TDBEdit; ArrayDbLookup: array of TDBLookupComboBox; ArraycxComboBox: array of TcxComboBox;
  ArrayMaskEdit: array of TMaskEdit); overload;

procedure CamposObrigatorios_CorPadrao(ArrayDbEdit: array of TDBEdit; ArraycxDateEdit: array of TCxDateEdit); overload;
{ Procedimento para voltar a cor padrão dos campos. }

function RemoverCaracteresEspeciais(Texto: String; const substituir: string = ''): String;
{ Procedimento para retirar caracteres especiais. }

function RemoverQuebraLinhas(Texto: String): String;
{ Procedimento para retirar caracteres breaklines. }

function RemoverUTF8(Texto: String): String;
{ Procedimento para retirar caracteres breaklines. }

procedure CamposOpcionais(ArrayDbEdit: array of TDBEdit; ArrayNomeCampos: array of string);
{ Procedimento para informar mensagem de finalização do cadastro e preenchimento dos campos opcionais caso necessário. }

procedure AlterarEnabled(xObject: array of tcontrol; Enabled: boolean);
{ Procedimento para habilitar ou não a edição dos campos quando preenchidos após consulta no grid. }

procedure AlterarVisible(xObject: array of tcontrol; Visible: boolean);

procedure AlterarReadOnly(xObject: array of TEdit; Read: boolean);
{ Procedimento para habilitar ou não a visibilidade dos campos quando preenchidos após consulta no grid. }

procedure LimparCampos(ArrayEdit: array of TEdit);
{ Procedimento para limpar um rol de edits. }

function VerificaEstadoCheck(ArrayCheckBox: array of TcxCheckBox; EstadoDesejado: boolean): boolean;
{ Procedimento para verificar os estados de checks. }

procedure AlteraDBChecks(ChecksDesmarcar:  TDBCheckBox; CheckMarcado: array of TDBCheckBox
);
{ Procedimento para desmarcar checks quando apenas um estiver selecionado em um cadastro }

procedure TeclasAtalho(Key: Word; ArrayKey: array of Integer; ArrayBotoes: array of TcxButton);
{ Procedimento para criar teclas de atalho }

procedure Principal_TeclasAtalho(Key: Word; ArrayKey: array of Integer; ArrayBotoes: array of tdxbarlargebutton);
{ Procedimento para criar teclas de atalho no form principal }

procedure IniciarCadastro(ArrayBotoes: array of TcxButton; IniciaCadastro: boolean);
{ Prodecure para alterar comportamento dos botoes no momento do cadastro }

procedure ValidarIE(IE: TDBEdit);
{ Prodecure para validar entrada de dados nos campos de Inscrição }

function IsNumber(Texto: String): boolean;
{ Função para verificar se um dado é do tipo numérico }

procedure ExcluirCadastro(Consulta: TFDQuery; DesativarQuery: boolean = true);
{ Procedimento para excluir um cadastro }

function RemoverEspacoEmBranco(Texto: String; const substituir: string = ''): String;
{ Procedimento para remover espaço em branco }

function DuplicarCadastro(CADASTRO: TFDQuery; Tabela, Codigo: String): Integer;
{ Procedimento para duplicar cadastros com popmenu nos grids }

function ValidarCpf(CPF_Text: string): boolean;
{ Função para validar CPF nos cadastros }

function ValidarCnpj(xCNPJ: String): boolean;
{ Função para validar CNPJ nos cadastros }

procedure ConsultarCPF(Consulta: TFDQuery; Texto: TDBEdit; Tabela, Coluna, Parametro: String);
{ Função para verificar se CPF já está cadastrado no sistema }

procedure ConsultarCNPJ(Consulta: TFDQuery; Texto: TDBEdit; Tabela, Coluna, Parametro: String);
{ Função para verificar se CNPJ já está cadastrado no sistema }

function TrocaVirgPPto(Valor: string): String;
{ Função para trocar virgula por ponto em string }

function FormatarQuantidadeKG(edt_quantidade: TEdit; Key: Char): Char;
{ Função para formatar o campo de quantidade com 0,000 para unidade em KG }

procedure ZerarValorDigitado;
{ Procedure para zerar valor da variavel interna }

procedure GridZebrado(GRID: TDBGRID; Rect: TRect; DataCol: Integer; Column: TColumn; State: TGridDrawState); overload;
procedure GridZebrado(ACanvas: TcxCanvas; AViewInfo: TcxGridTableDataCellViewInfo); overload;
{ Procedure zebrar as cores do grid }

function obterNroResultado(const aXML, aTag, aEndTag: string): string;
{ Função obter resultado da tag da xml }

procedure MoverXML(CaminhoOrigem, CaminhoDestino: String);
{ Procedure para mover os arquivos xmls para suas pastas }

procedure AppendFile(Caminho, Texto: String; Position: Integer = 0);
{ Procedure para escrever no final de um arquivo }

procedure DeletarXMLPendente(CaminhoOrigem: string);
{ Procedure para mover os arquivos xmls para suas pastas }

procedure ColorirStatusGrid(GRID: TDBGRID; Rect: TRect; DataCol: Integer; Column: TColumn; State: TGridDrawState; Cor: Array of Integer;
  ValorPreencher: array of String; ValorBanco: TStringField); overload;
procedure ColorirStatusGrid(GRID: TDBGRID; Rect: TRect; DataCol: Integer; Column: TColumn; State: TGridDrawState; Colors: array of Integer;
  value_to_fill: array of variant; value_to_compare: extended); overload;
{ Função para colorir os valores dos dados no preenchimento do grid }

procedure MostrarBarraLateralGrid(GRID: TDBGRID; VERTICAL, HORIZONTAL: boolean);
{ Sempre mostrar barra lateral Grid }

function MonthToDBMonth(Dia, Mes: String): string;
{ Formatar mes para mes do banco }

procedure CamposEditaveis(ArrayEdit: array of TEdit; IniciaEdicao: boolean);
{ Procedure para destacar os campos editaveis na tela de nfe }

function ColorByStatus(value: variant; ArrValues: array of variant; ArrColors: array of Integer): Integer;
{ Function para destacar os campos pelo status }

function FormatarTag(Tag: extended; const ReturnMethod: Word = varString): variant;
{ Função para formatar tag antes de passar para o dataset da NFCE - Formato: 9999,00 }
function FormatarTagDescricao(xDesc: string): string;

function DoublePathBar(pathdir: String): String;
{ function that return path with double bar sliced separated }

procedure CNPJCPF(Field: TMaskEdit); overload;
procedure CNPJCPF(Field: TDBEdit); overload;
function Format_CPF_CNPJ(value: string): string;
{ Procedure to assign a maks value to a field according to his kind, if cnpj or cpf }

procedure WnAlerta(Titulo, Mensagem: String); overload;
procedure WnAlerta(Titulo, Mensagem: String; Font: Integer); overload;
procedure WnAlerta(Titulo, Mensagem: String; Align: TAlignment; Font: Integer); overload;
{ Janela de Alerta }
procedure WnErro(Titulo, Mensagem: String); overload;
procedure WnErro(Titulo, Mensagem: String; Align: TAlignment; Font: Integer); overload;
{ Janela de Erro }
procedure WnInfo(Titulo, Mensagem: String); overload;
procedure WnInfo(Titulo, Mensagem: String; Align: TAlignment; Font: Integer); overload;
procedure WnInfo(Titulo, Mensagem: String; Align: TAlignment; Font, Timer: Integer); overload;

{ Janela de Informação }
function WnConfirmacao(Titulo, Mensagem: String): boolean; overload;
function WnConfirmacao(Titulo, Mensagem: String; Font: Integer): boolean; overload;
{ Janela de Confirmação }

function EnDecryptString(StrValue: String; Chave: Word): String; overload;

function hexaToInt(s: string): Int64;

procedure EnviarArquivosFiscais;
{ Enviar arquivos fiscais }

function Calcdata(Partner: String): string;

function SimpleQuery(query: String; Conn: TfdConnection = nil): TFDQuery; overload;
function SimpleQuery(query: String; arr_params: array of variant; Conn: TfdConnection = nil): TFDQuery; overload;

function ExecQuery(query: String; Conn: TfdConnection = nil): TFDQuery; overload;
function ExecQuery(query: String; arr_params: array of variant; Conn: TfdConnection = nil): TFDQuery; overload;

function ZeroLeft(strx: string; qtde: Integer): string;

function AutoComplete(Edit: TEdit; MiniQuery: string; FieldIndex: Integer): TFDQuery;

function LimitOccurences(const StringValue: string; const CharToFind: Char; CountOcurr: Integer; Key: Char): Char;

function Arredondar(const value: extended): extended;
function Arredonda(Value: Extended; Decimals: Integer): Extended;

function FindCharInStr(const Str: string; const Char: string): Integer;

function MachineName: string;

procedure RestartAPP;

function getAllowUpdate: boolean;

procedure ExecuteCommand(xComand: String; const SW_STATE: Integer = SW_HIDE);

function UserName: string;

procedure ManWorking;

procedure MovimentarEstoque(Remover: boolean; CodigoVenda: String);

procedure MovimentarCaixa;

procedure SaveToFile(const FileName, Content: string);

function FormatarMoeda(const value: extended; const ResultType: Integer = 256): variant;

procedure FormatTelefone(const Edt: TMaskEdit);

function SearchFiles(Dir, Pattern: string): TArray<string>;

function getSerialKey: string;

function getNomeFantasia(const NotFoundDef: string = 'EMPRESA NÃO CADASTRADA'): string;

function formataData(s: TDateTime): string;

function LoadContent(FromFile: string): string;

function SelectFile(CurrentDir: string = 'C:\'; Filters: string = ''): string;

function CalcularDescontos(Cod_Venda: string; cod_item: string; var desconto_base: extended; var reatear_diff_desconto: boolean): extended;

function CalcularAcrescimos(Cod_Venda: string; cod_item: string; var acrescimo_base: extended; var reatear_diff_acrescimo: boolean): extended;

function formatarqtde(qtde: extended): string;

procedure VencimentoCertificado;

function clickOnTittle(GRID: TDBGRID): boolean;
{ Verificar se no duplo click do grid o cursor está no cabeçalho das colunas }

function ping(const _Host: string): boolean;

function camelCase(const Word: string): string;

function Extenso(Valor: extended): string;

procedure DragAndDrop(var Sender, Source: tObject);

procedure ConsultarCep(const CEP: string; var edt_uf, edt_cidade, edt_rua, edt_bairro: string);

function ExistsNetwork: Boolean;

function NumeroTerminal: integer;

{$R+}

var
  Global_Usuario_Logado:String; // Wander : User Name do usuário logado

implementation

uses carregando_dados, alerta, confirmacao, informacao, u_diretorios,
  desenvolvimento, v_Env, v_Dir, h_DB, c_Globals;

const
   _constante_VersaoDoSistema = '1.00';

var
  ValorDigitado: String;
  GlobalTimerSet: Cardinal;


procedure ZerarValorDigitado;
begin
  ValorDigitado := '';
end;

function TrocaVirgPPto(Valor: string): String;
begin
  if Valor <> '' then
  begin
    Valor := StringReplace(Valor, ',', '.', [RFREPLACEALL]);
  end;
  result := Valor;
end;

procedure WnAlerta(Titulo, Mensagem: String);
begin
  TFunctions.write_log(Titulo + ':' + Mensagem);
  frm_alerta := tfrm_alerta.Create(nil);
  frm_alerta.Titulo(Titulo);
  frm_alerta.Mensagem(Mensagem);
  frm_alerta.ShowModal;
  frm_alerta.Free;
end;

function UserName: string;
begin
  result := GetEnvironmentVariable('USERNAME');
end;

procedure ManWorking;
begin
  if not VerificaAberta(FMR_desenvolvimento) then
  begin
    FMR_desenvolvimento := TFMR_desenvolvimento.Create(Application);
    FMR_desenvolvimento.ShowModal;
  end;
end;

procedure MovimentarEstoque(Remover: boolean; CodigoVenda: String);
{ Se o argumento "Remover" for true, retira a quantidade dos itens vendidos para o estoque, caso contrário, retorna as quantidades para o estoque }
var
  qry_temp, qry_temp_aux: TFDQuery;
  I, qtderecords: Integer;
begin
  with qry_temp_aux do
  begin
    qry_temp_aux := TFDQuery.Create(nil);
    connection := module.connection;
    Close;
    sql.Clear;
  end;
  with qry_temp do
  begin
    qry_temp := TFDQuery.Create(nil);
    connection := module.connection;
    sql.Add('SELECT * FROM VENDA_ITEM WHERE CODIGO_VENDA = ' + quotedstr(CodigoVenda));
    open;
    FetchAll;
    qtderecords := RecordCount;
    for I := 1 to qtderecords do
    begin
      qry_temp_aux.Close;
      qry_temp_aux.sql.Clear;
      qry_temp_aux.sql.Add('SELECT CODIGO,PROD_SALDO FROM PRODUTO WHERE CODIGO = ' + quotedstr(FieldByName('CODIGO_PRODUTO').value));
      qry_temp_aux.open;
      qry_temp_aux.Edit;
      if Remover then
      begin
        qry_temp_aux.FieldByName('PROD_SALDO').value := qry_temp_aux.FieldByName('PROD_SALDO').value - FieldByName('QUANTIDADE').value { Retirar do estoque }
      end
      else
        qry_temp_aux.FieldByName('PROD_SALDO').value := qry_temp_aux.FieldByName('PROD_SALDO').value + FieldByName('QUANTIDADE').value;
      { Retornar estoque }
      qry_temp_aux.POST;
      Next;
    end;
  end;
  qry_temp_aux.destroy;
  qry_temp.destroy;
end;

procedure MovimentarCaixa;
begin
  { TODO -oPaulo Barros -cFinanceiro : Definir Estrutura da movimentanção, centro de custos, tipos de movimentos e etc }

end;

procedure SaveToFile(const FileName, Content: string);
var
  xxFile: tstringList;
begin
  xxFile := tstringList.Create;
  xxFile.Text := Content;
  xxFile.SaveToFile(FileName);
  xxFile.Free;
end;

procedure FormatTelefone(const Edt: TMaskEdit);
var
  tel: string;
  tamanho: Integer;
begin
  tel := RemoverEspacoEmBranco(RemoverCaracteresEspeciais(Edt.Text));
  tamanho := length(tel);
  if (tamanho = 8) then { 8 digitos sem 69 }
    Edt.EditMask := '!\(\6\9\) 9999-9999;1'
  else if (tamanho = 9) then { 9 digitos sem 69 }
    Edt.EditMask := '!\(\6\9\) 99999-9999;1';
  if (tamanho = 10) then { 8 digitos }
    Edt.EditMask := '!\(99\) 9999-9999;1'
  else if (tamanho = 11) then { 9 digitos }
    Edt.EditMask := '!\(99\) 99999-9999;1';
end;

function FormatarMoeda(const value: extended; const ResultType: Integer = 256): variant;
begin
  if FloatToStr(value) = '0' then
    result := TFunctions.IfThen(ResultType, [varString, vardouble], ['R$ 0,00', 0])
  else
    result := TFunctions.IfThen(ResultType, [varString, vardouble], ['R$ ' + FORMATFLOAT('###,##0.00', value),
      TFunctions.replace(FORMATFLOAT('###,##0.00', value), '.', vardouble)]);
end;

procedure WnAlerta(Titulo, Mensagem: String; Align: TAlignment; Font: Integer);
begin
  TFunctions.write_log(Titulo + ':' + Mensagem);
  frm_alerta := tfrm_alerta.Create(nil);
  frm_alerta.Titulo(Titulo);
  frm_alerta.memo_texto.Properties.Alignment := Align;
  frm_alerta.memo_texto.Style.Font.Size := Font;
  frm_alerta.Mensagem(Mensagem);
  frm_alerta.ShowModal;
  frm_alerta.Free;
end;

procedure WnAlerta(Titulo, Mensagem: String; Font: Integer); overload;
begin
  TFunctions.write_log(Titulo + ':' + Mensagem);
  frm_alerta := tfrm_alerta.Create(nil);
  frm_alerta.Titulo(Titulo);
  frm_alerta.memo_texto.Style.Font.Size := Font;
  frm_alerta.Mensagem(Mensagem);
  frm_alerta.ShowModal;
  frm_alerta.Free;
end;

function MachineName: string;
begin
  result := GetEnvironmentVariable('COMPUTERNAME');
end;

procedure RestartAPP;
var
  comand: String;
begin
  ExecuteCommand('schtasks /delete /tn "SMC_LIGHT" /F', SW_HIDE);
  ExecuteCommand('schtasks /delete /tn "DELETE_SMC_LIGHT" /F', SW_HIDE);
  ExecuteCommand('schtasks /create /tn "SMC_LIGHT" /tr ' + pathexe + 'SMC_LIGHT.exe /sc once /sd ' + formatdatetime('dd/mm/yyyy', date) + ' /st ' +
    formatdatetime('HH:mm:ss', incsecond(now, 40)) + ' /F', SW_HIDE);
  ExecuteCommand('schtasks /create /tn "DELETE_SMC_LIGHT" /tr "schtasks /delete /tn "SMC_LIGHT" /F" /sc once /sd ' + formatdatetime('dd/mm/yyyy ', date) +
    ' /st ' + formatdatetime('HH:mm:ss ', incminute(now, 01)) + ' /F', SW_HIDE);
  Application.Terminate;
end;

procedure ExecuteCommand(xComand: String; const SW_STATE: Integer = SW_HIDE);
var
  SHE: SHELLEXECUTEINFO;
begin
  FillChar(SHE, SizeOf(SHE), 0);
  SHE.cbSize := SizeOf(SHE);
  SHE.fMask := See_Mask_NoCloseProcess;
  SHE.Wnd := 0;
  SHE.lpVerb := pChar('open');
  SHE.lpFile := pChar('cmd');
  SHE.lpParameters := pChar('/C ' + xComand);
  SHE.nShow := SW_STATE;
  ShellExecuteEx(@SHE);
  WaitForSingleObject(SHE.hProcess, Infinite);
end;

function getAllowUpdate: boolean;
var
  ini: TIniFile;
begin
  try
    if FileExists(confini) then
    begin
      ini := TIniFile.Create(confini);
      result := ('s' = ini.readString('atualizacao', 'atualiza', 'n')) or ('S' = ini.readString('atualizacao', 'atualiza', 'n'));
    end;
  finally
    ini.Free;
  end;
end;

function WnConfirmacao(Titulo, Mensagem: String): boolean;
var
  int: Integer;
begin
  frm_confirmacao := tfrm_confirmacao.Create(nil);
  frm_confirmacao.limpar;
  frm_confirmacao.Titulo(Titulo);
  frm_confirmacao.Mensagem(Mensagem);
  int := frm_confirmacao.ShowModal;
  frm_confirmacao.Free;
  if int = 1 then { sim }
    result := true
  else if int = 2 then { não }
    result := false
  else
    result := false;
end;

function WnConfirmacao(Titulo, Mensagem: String; Font: Integer): boolean;
var
  int: Integer;
begin
  frm_confirmacao := tfrm_confirmacao.Create(nil);
  frm_confirmacao.limpar;
  frm_confirmacao.Titulo(Titulo);
  frm_confirmacao.memo_texto.Style.Font.Size := Font;
  frm_confirmacao.Mensagem(Mensagem);
  int := frm_confirmacao.ShowModal;
  frm_confirmacao.Free;
  if int = 1 then { sim }
    result := true
  else if int = 2 then { não }
    result := false;
end;

function EnDecryptString(StrValue: String; Chave: Word): String;
var
  I: Integer;
  OutValue: String;
begin
  OutValue := '';
  for I := 1 to length(StrValue) do
    OutValue := OutValue + Char(Not(ord(StrValue[I]) - Chave));
  result := OutValue;
end;

function hexaToInt(s: string): Int64;
begin
  if (s <> '') and (s[1] <> '$') then
    result := strToInt64('$' + s)
  else
    result := strToInt64(s);
end;

procedure WnInfo(Titulo, Mensagem: String);
begin
  frm_informacao := tfrm_informacao.Create(nil);
  frm_informacao.Titulo(Titulo);
  frm_informacao.Mensagem(Mensagem);
  frm_informacao.ShowModal;
  frm_informacao.Free;
end;

procedure WnInfo(Titulo, Mensagem: String; Align: TAlignment; Font: Integer);
begin
  frm_informacao := tfrm_informacao.Create(nil);
  frm_informacao.Titulo(Titulo);
  frm_informacao.Mensagem(Mensagem);
  frm_informacao.memo_texto.Properties.Alignment := Align;
  frm_informacao.memo_texto.Style.Font.Size := Font;
  frm_informacao.ShowModal;
  frm_informacao.Free;
end;

procedure WnInfo(Titulo, Mensagem: String; Align: TAlignment; Font, Timer: Integer);
begin
  frm_informacao := tfrm_informacao.Create(nil);
  frm_informacao.Titulo(Titulo);
  frm_informacao.Mensagem(Mensagem);
  frm_informacao.memo_texto.Properties.Alignment := Align;
  frm_informacao.memo_texto.Style.Font.Size := Font;
  frm_informacao.Timer := Timer;
  frm_informacao.ShowModal;
  frm_informacao.Free;
end;

procedure WnErro(Titulo, Mensagem: String);
begin
  TFunctions.write_log(Titulo + ':' + Mensagem);
  frm_erro := tfrm_erro.Create(nil);
  frm_erro.Titulo(Titulo);
  frm_erro.Mensagem(Mensagem);
  frm_erro.ShowModal;
  frm_erro.Free;
end;

procedure WnErro(Titulo, Mensagem: String; Align: TAlignment; Font: Integer);
begin
  TFunctions.write_log(Titulo + ':' + Mensagem);
  frm_erro := tfrm_erro.Create(nil);
  frm_erro.Titulo(Titulo);
  frm_erro.memo_texto.Properties.Alignment := Align;
  frm_erro.memo_texto.Style.Font.Size := Font;
  frm_erro.Mensagem(Mensagem);
  frm_erro.ShowModal;
  frm_erro.Free;
end;

function DoublePathBar(pathdir: String): String;
begin
  result := StringReplace(pathdir, '\', '\\', [RFREPLACEALL]);
end;

procedure AlteraChecks(CheckMarcado: TcxCheckBox; ChecksDesmarcar: array of TcxCheckBox);

var
  I: Integer;
begin
  for I := Low(ChecksDesmarcar) to High(ChecksDesmarcar) do
    if CheckMarcado.Checked then
      ChecksDesmarcar[I].Checked := false;
end;


procedure MarcaChecks(CheckMarcado: TcxCheckBox; ChecksDesmarcar: array of TcxCheckBox);

var
  I: Integer;
begin
  for I := Low(ChecksDesmarcar) to High(ChecksDesmarcar) do
    if CheckMarcado.Checked then
      ChecksDesmarcar[I].Checked := true;
end;


procedure AlteraDBChecks(ChecksDesmarcar:  TDBCheckBox; CheckMarcado: array of TDBCheckBox);

var
  I: Integer;
begin
  for I := Low(CheckMarcado) to High(CheckMarcado) do
    if ChecksDesmarcar.Checked then
      CheckMarcado[I].Checked := true;
end;

function ConsultarCadastros(Consulta: TFDQuery; Texto, Tabela, Coluna, Parametro, Status, TipoItem, CampoTipoItem: String; dataInicio, dataFim: TDate): String;

var
  m_dataInicio, m_dataFim, qry: string;
begin
  with Consulta do
  begin
    Close;
    sql.Clear;
    qry := 'SELECT * FROM ' + Tabela;
    if Coluna <> '' then
    begin
      qry := qry + ' WHERE ' + Coluna + ' LIKE ' + Texto;
    end;
    if (dataInicio <> 0) and (dataFim <> 0) then
    begin
      m_dataInicio := quotedstr(formatdatetime('yyyy/mm/dd', dataInicio));
      m_dataFim := quotedstr(formatdatetime('yyyy/mm/dd', dataFim));
      qry := qry + ' AND data_cadastro between ' + m_dataInicio + ' AND ' + m_dataFim;
    end;
    if Status <> '' then
    begin
      Status := quotedstr(TipoItem);
      qry := qry + ' AND status_cadastral LIKE ' + Status;
    end;
    if TipoItem <> '' then
    begin
      TipoItem := quotedstr(TipoItem);
      qry := qry + (' AND ' + CampoTipoItem + ' LIKE ' + TipoItem);
    end;
    sql.Add(qry);
    open;
    result := inttostr(RecordCount);
  end;
end;

procedure ConsultarNCM_CFOP_CSOSN(Consulta: TFDQuery; Texto, Tabela, Coluna, Parametro: String);
begin
  with Consulta do
  begin
    Close;
    sql.Clear;
    sql.Add('SELECT * FROM ' + Tabela);
    sql.Add(' WHERE ' + Coluna + ' LIKE :' + Parametro);
    params[0].value := '%' + Texto + '%';
    open;
  end;
end;

function ListarTodosCadastros(Consulta: TFDQuery; Tabela: String): String;
begin
  with Consulta do
  begin
    Close;
    sql.Clear;
    sql.Add('SELECT * FROM ' + Tabela);
    sql.Add('ORDER BY codigo LIMIT 100');
    open;
    Consulta.FetchAll;
    result := inttostr(RecordCount);
  end;
end;

function VerificaAberta(Referencia: TForm): boolean;
var
  I: Word;
begin
  result := false;

  for I := 0 to Screen.FormCount - 1 do
    if Screen.Forms[I] = Referencia then
    begin
      if (Referencia.Enabled = true) and (Referencia.Visible = true) then
        Referencia.SetFocus;
      result := true;
      Break;
    end;
end;

procedure ImprimirGridConsulta(ConsultaRelatorio, ConsultaGrid: TFDQuery; Relatorio: TfrxReport; CaminhoRelatorio: String);

var
  sql_anterior: String;
begin
  with ConsultaRelatorio do
  begin
    Close;
    sql_anterior := ConsultaRelatorio.sql.Text;
    sql.Clear;
    sql.Text := ConsultaGrid.sql.Text;
    params := ConsultaGrid.params;
    open;
  end;
  with Relatorio do
  begin
    Relatorio.LoadFromFile(CaminhoRelatorio, true);
    Relatorio.ShowReport(true);
  end;

  with ConsultaRelatorio do
  begin
    Close;
    sql.Clear;
    sql.Text := sql_anterior;
    params.Clear;
    open;
  end;
end;

function colorirestoque(value: String; PROD_ESTOQMIN: extended): Integer;
var
  sEstoque: extended;
begin
  if value <> emptystr then
  begin
    sEstoque := strtofloat(value);
    result := ColorByStatus(sEstoque, [0, IfThen(PROD_ESTOQMIN = 0, 10, PROD_ESTOQMIN)], [clWebRed, clWebDarkOrange, clWebDarkgreen])
  end
  else
    result := clWhite;
end;

function ApenasLetras(Tecla: Char): Char;
begin
  if not(Tecla in ['a' .. 'z', 'A' .. 'Z', Char(8), Char(3), Char(22), Char(32), Char(24), Char(127)]) then
    result := #0
  else
    result := Tecla;
  { Char(3) = Ctrl C
    Char(8) = BackSpace
    Char(22) = Ctrl V
    Char(24) = Ctrl X
    Char(127) = Del }
end;

function ApenasNumeros(Tecla: Char): Char;
begin
  if not(Tecla in ['0' .. '9', Char(3), Char(8), Char(22), Char(24), Char(44), Char(127)]) then
    result := #0
  else
    result := Tecla;
  { Char(3) = Ctrl C
    Char(8) = BackSpace
    Char(22) = Ctrl V
    Char(24) = Ctrl X
    Char(44) = ,
    Char(127) = Del }
end;

function ApenasNumeros(Tecla: Char; arr_keys: array of Char): Char; overload;
var
  ch: Char;
begin
  result := #0;
  if not(Tecla in ['0' .. '9', Char(3), Char(8), Char(22), Char(24), Char(44), Char(127)]) then
  begin
    for ch in arr_keys do
      if ch = Tecla then
      begin
        result := Tecla;
        exit;
      end;
  end
  else
    result := Tecla;
  { Char(3) = Ctrl C
    Char(8) = BackSpace
    Char(22) = Ctrl V
    Char(24) = Ctrl X
    Char(44) = ,
    Char(127) = Del }
end;

function isKeyNumLetter(Tecla: Word): boolean;
begin
  if Tecla in [Word('0') .. Word('9'), Word('a') .. Word('z'), Word('A') .. Word('Z'), Word(VK_BACK), Word(VK_DELETE)] then
    result := true
  else
    result := false;
end;

function NumLetter(Tecla: Char): Char;
begin
  if Tecla in [Char('0') .. Char('9'), Char('a') .. Char('z'), Char('A') .. Char('Z'), Char(VK_BACK), Char(VK_DELETE), Char(VK_SPACE)] then
    result := Tecla
  else
    result := #0;
end;

function NumLetter(Tecla: Char; remove_chars: array of Char): Char;
var
  I: Integer;
begin
  Tecla := NumLetter(Tecla);
  for I := Low(remove_chars) to High(remove_chars) do
    result := TFunctions.IfThen(Tecla = Char(remove_chars[I]), #0, Tecla);
end;

function isKeyControl(Tecla: Word): boolean;
begin
  if Tecla in [VK_CONTROL, VK_SHIFT, VK_MENU, VK_F1 .. VK_F12, VK_DELETE, VK_BACK] then
    result := true
  else
    result := false;
end;

function ContarQuantidadeCaracteres(Edit: TDBEdit; Key: Char; NomeCampo: String; QtdCaracteres: Integer): Char;

var
  MensagemAviso: String;
begin
  MensagemAviso := 'Campo ' + quotedstr(NomeCampo) + ' não deve ter mais do que ' + inttostr(QtdCaracteres) +
    ' caracteres (contando com os espaços em branco).';
  if length(Edit.Text) > (QtdCaracteres - 1) then
  begin
    WnAlerta('Quantidade de Caracteres', MensagemAviso);
    result := #0;
    Edit.Text := copy(Edit.Text, 0, length(Edit.Text) - 1);
    Edit.SetFocus;
    Edit.SelectAll;
  end
  else
    result := Key;
end;

function CamposObrigatorios(ArrayDbEdit: array of TDBEdit; NomeCamposDBEdit: array of String; ArrayDbLookup: array of TDBLookupComboBox;
  NomeCamposDBLookup: array of String; ArraycxComboBox: array of TcxComboBox; NomeComboBox: array of String): boolean;

var
  I: Integer;
  msg_campos, msg_final: String;
begin
  for I := 0 to length(ArrayDbEdit) - 1 do { Verificação apenas para dbedits }
  begin
    if RemoverEspacoEmBranco(RemoverCaracteresEspeciais(ArrayDbEdit[I].Text)) = '' then
    begin
      msg_campos := msg_campos + slinebreak + NomeCamposDBEdit[I];
      ArrayDbEdit[I].Color := clMoneyGreen;
    end
    else
      ArrayDbEdit[I].Color := clWhite;
  end;

  for I := 0 to length(ArrayDbLookup) - 1 do { Verificação apenas para dblookup }
  begin
    if RemoverEspacoEmBranco(RemoverCaracteresEspeciais(ArrayDbLookup[I].Text)) = '' then
    begin
      msg_campos := msg_campos + slinebreak + NomeCamposDBLookup[I];
      ArrayDbLookup[I].Color := clMoneyGreen;
    end
    else
      ArrayDbLookup[I].Color := clWhite;
  end;
  for I := 0 to length(ArraycxComboBox) - 1 do { Verificação apenas para TComboBox }
  begin
    if RemoverEspacoEmBranco(RemoverCaracteresEspeciais(ArraycxComboBox[I].Text)) = '' then
    begin
      msg_campos := msg_campos + slinebreak + NomeComboBox[I];
      ArraycxComboBox[I].Style.Color := clMoneyGreen;
    end
    else
      ArraycxComboBox[I].Style.Color := clWhite;
  end;
  if msg_campos <> '' then
  begin
    msg_final := 'Os seguintes campos são obrigatórios:' + msg_campos + slinebreak + 'Por Favor, preencha os campos destacados para poder prosseguir.';
    WnAlerta('Campos Obrigatórios', msg_final, taleftjustify, 11);
    result := true;
  end
  else
    result := false;
end;
{ rever mudança, otimizar código 04-10 }
{ utilizar overload de método e separar as declarações para cada tipo de dado 15-12 }

function CamposObrigatorios(ArraycxDBTextEdit: array of TcxDBTextEdit; NomeCamposcxDBTextEdit: array of string;
  ArraycxDBCurrencyedit: array of TcxDBCurrencyEdit; NomeCamposcxDBCurrencyEdit: array of string): boolean; overload;
var
  I: Integer;
  msg_campos, msg_final: string;
begin
  for I := 0 to length(ArraycxDBTextEdit) - 1 do { Verificação apenas para cxdbtextedits }
  begin
    if RemoverEspacoEmBranco(RemoverCaracteresEspeciais(ArraycxDBTextEdit[I].Text)) = '' then
    begin
      msg_campos := msg_campos + slinebreak + NomeCamposcxDBTextEdit[I];
      ArraycxDBTextEdit[I].Style.Color := clMoneyGreen;
    end
    else
      ArraycxDBTextEdit[I].Style.Color := clWhite;
  end;
  for I := 0 to length(ArraycxDBCurrencyedit) - 1 do { Verificação apenas para cxdbcurencyedits }
  begin
    if RemoverEspacoEmBranco(RemoverCaracteresEspeciais(ArraycxDBCurrencyedit[I].Text)) = '' then
    begin
      msg_campos := msg_campos + slinebreak + NomeCamposcxDBCurrencyEdit[I];
      ArraycxDBCurrencyedit[I].Style.Color := clMoneyGreen;
    end
    else
      ArraycxDBCurrencyedit[I].Style.Color := clWhite;
  end;
  if msg_campos <> '' then
  begin
    msg_final := 'Os seguintes campos são obrigatórios:' + msg_campos + slinebreak + 'Por Favor, preencha os campos destacados para poder prosseguir.';
    WnAlerta('Campos Obrigatórios', msg_final, taleftjustify, 11);
    result := true;
  end
  else
    result := false;
end;

function CamposObrigatorios(ArrayEdit: array of TEdit; NomeCamposEdit: array of String): boolean; overload;

var
  I: Integer;
  msg_campos, msg_final: String;
begin
  for I := 0 to length(ArrayEdit) - 1 do { Verificação apenas para dbedits }
  begin
    if RemoverEspacoEmBranco(RemoverCaracteresEspeciais(ArrayEdit[I].Text)) = '' then
    begin
      msg_campos := msg_campos + slinebreak + NomeCamposEdit[I];
      ArrayEdit[I].Color := clMoneyGreen;
    end
    else
      ArrayEdit[I].Color := clWhite;
  end;
  if msg_campos <> '' then
  begin
    msg_final := 'Os seguintes campos são obrigatórios:' + msg_campos + slinebreak + 'Por Favor, preencha os campos destacados para poder prosseguir.';
    WnAlerta('Campos Obrigatórios', msg_final, taleftjustify, 11);
    result := true;
  end
  else
    result := false;
end;

function CamposObrigatorios(ArrayDbEdit: array of TDBEdit; NomeCamposDBEdit: array of String; ArraycxDateEdit: array of TCxDateEdit;
  NomeCamposcxDateEdit: array of String): boolean; overload;

var
  I: Integer;
  msg_campos, msg_final: String;
begin
  for I := 0 to length(ArrayDbEdit) - 1 do { Verificação apenas para dbedits }
  begin
    if RemoverEspacoEmBranco(RemoverCaracteresEspeciais(ArrayDbEdit[I].Text)) = '' then
    begin
      msg_campos := msg_campos + slinebreak + NomeCamposDBEdit[I];
      ArrayDbEdit[I].Color := clMoneyGreen;
    end
    else
      ArrayDbEdit[I].Color := clWhite;
  end;
  for I := 0 to length(ArraycxDateEdit) - 1 do { Verificação apenas para dbedits }
  begin
    if RemoverEspacoEmBranco(RemoverCaracteresEspeciais(ArraycxDateEdit[I].Text)) = '' then
    begin
      msg_campos := msg_campos + slinebreak + NomeCamposcxDateEdit[I];
      ArraycxDateEdit[I].Style.Color := clMoneyGreen;
    end
    else
      ArraycxDateEdit[I].Style.Color := clWhite;
  end;
  if msg_campos <> '' then
  begin
    msg_final := 'Os seguintes campos são obrigatórios:' + msg_campos + slinebreak + 'Por Favor, preencha os campos destacados para poder prosseguir.';
    WnAlerta('Campos Obrigatórios', msg_final, taleftjustify, 11);
    result := true;
  end
  else
    result := false;
end;

function CamposObrigatorios(ArrayDbEdit: array of TDBEdit; NomeCamposDBEdit: array of String; ArrayEdit: array of TEdit; NomeCamposEdit: array of String)
  : boolean; overload;

var
  I: Integer;
  msg_campos, msg_final: String;
begin
  for I := 0 to length(ArrayDbEdit) - 1 do { Verificação apenas para dbedits }
  begin
    if RemoverEspacoEmBranco(RemoverCaracteresEspeciais(ArrayDbEdit[I].Text)) = '' then
    begin
      msg_campos := msg_campos + slinebreak + NomeCamposDBEdit[I];
      ArrayDbEdit[I].Color := clMoneyGreen;
    end
    else
      ArrayDbEdit[I].Color := clWhite;
  end;
  for I := 0 to length(ArrayEdit) - 1 do { Verificação apenas para dbedits }
  begin
    if RemoverEspacoEmBranco(RemoverCaracteresEspeciais(ArrayEdit[I].Text)) = '' then
    begin
      msg_campos := msg_campos + slinebreak + NomeCamposEdit[I];
      ArrayEdit[I].Color := clMoneyGreen;
    end
    else
      ArrayEdit[I].Color := clWhite;
  end;
  if msg_campos <> '' then
  begin
    msg_final := 'Os seguintes campos são obrigatórios:' + msg_campos + slinebreak + 'Por Favor, preencha os campos destacados para poder prosseguir.';
    WnAlerta('Campos Obrigatórios', msg_final, taleftjustify, 11);
    result := true;
  end
  else
    result := false;
end;

function RemoverCaracteresEspeciais(Texto: String; const substituir: string = ''): String;
begin
  Texto := StringReplace(Texto, '/', substituir, [RFREPLACEALL]);
  Texto := StringReplace(Texto, '@', substituir, [RFREPLACEALL]);
  Texto := StringReplace(Texto, '$', substituir, [RFREPLACEALL]);
  Texto := StringReplace(Texto, '#', substituir, [RFREPLACEALL]);
  Texto := StringReplace(Texto, '!', substituir, [RFREPLACEALL]);
  Texto := StringReplace(Texto, '%', substituir, [RFREPLACEALL]);
  Texto := StringReplace(Texto, '¨', substituir, [RFREPLACEALL]);
  Texto := StringReplace(Texto, '&', substituir, [RFREPLACEALL]);
  Texto := StringReplace(Texto, '*', substituir, [RFREPLACEALL]);
  Texto := StringReplace(Texto, '(', substituir, [RFREPLACEALL]);
  Texto := StringReplace(Texto, ')', substituir, [RFREPLACEALL]);
  Texto := StringReplace(Texto, '-', substituir, [RFREPLACEALL]);
  Texto := StringReplace(Texto, '.', substituir, [RFREPLACEALL]);
  Texto := StringReplace(Texto, ',', substituir, [RFREPLACEALL]);
  Texto := StringReplace(Texto, #39, substituir, [RFREPLACEALL]);
  // Aspa simples
  Texto := StringReplace(Texto, '^', substituir, [RFREPLACEALL]);
  Texto := StringReplace(Texto, '°', substituir, [RFREPLACEALL]);
  Texto := StringReplace(Texto, '?', substituir, [RFREPLACEALL]);
  Texto := StringReplace(Texto, 'ª', substituir, [RFREPLACEALL]);
  Texto := StringReplace(Texto, '´', substituir, [RFREPLACEALL]);
  Texto := StringReplace(Texto, '`', substituir, [RFREPLACEALL]);
  Texto := StringReplace(Texto, '¹', substituir, [RFREPLACEALL]);
  Texto := StringReplace(Texto, '²', substituir, [RFREPLACEALL]);
  Texto := StringReplace(Texto, '³', substituir, [RFREPLACEALL]);
  Texto := StringReplace(Texto, '£', substituir, [RFREPLACEALL]);
  Texto := StringReplace(Texto, '¢', substituir, [RFREPLACEALL]);
  Texto := StringReplace(Texto, '¬', substituir, [RFREPLACEALL]);
  Texto := StringReplace(Texto, '§', substituir, [RFREPLACEALL]);
  Texto := StringReplace(Texto, '~', substituir, [RFREPLACEALL]);
  Texto := StringReplace(Texto, '+', substituir, [RFREPLACEALL]);
  Texto := StringReplace(Texto, '=', substituir, [RFREPLACEALL]);
  Texto := StringReplace(Texto, '"', substituir, [RFREPLACEALL]);
  Texto := StringReplace(Texto, '\', substituir, [RFREPLACEALL]);
  Texto := StringReplace(Texto, '|', substituir, [RFREPLACEALL]);
  Texto := StringReplace(Texto, '[', substituir, [RFREPLACEALL]);
  Texto := StringReplace(Texto, ']', substituir, [RFREPLACEALL]);
  Texto := StringReplace(Texto, '{', substituir, [RFREPLACEALL]);
  Texto := StringReplace(Texto, '}', substituir, [RFREPLACEALL]);
  Texto := StringReplace(Texto, ':', substituir, [RFREPLACEALL]);
  Texto := StringReplace(Texto, ';', substituir, [RFREPLACEALL]);
  Texto := StringReplace(Texto, '>', substituir, [RFREPLACEALL]);
  Texto := StringReplace(Texto, '<', substituir, [RFREPLACEALL]);
  Texto := StringReplace(Texto, 'Ç', 'C', [RFREPLACEALL]);
  Texto := StringReplace(Texto, 'ç', 'c', [RFREPLACEALL]);
  Texto := StringReplace(Texto, '"', substituir, [RFREPLACEALL]);
  Texto := StringReplace(Texto, 'º', substituir, [RFREPLACEALL]);
  Texto := StringReplace(Texto, ':', substituir, [RFREPLACEALL]);
  result := Texto;
end;

function RemoverQuebraLinhas(Texto: String): String;
begin
  Texto := StringReplace(Texto, '> <', '><', [RFREPLACEALL]);
  Texto := StringReplace(Texto, '> ', '>', [RFREPLACEALL]);
  Texto := StringReplace(Texto, ' <', '<', [RFREPLACEALL]);
  Texto := StringReplace(Texto, '< ', '<', [RFREPLACEALL]);
  Texto := StringReplace(Texto, ' >', '>', [RFREPLACEALL]);
  Texto := StringReplace(Texto, '>' + slinebreak + '<', '><', [RFREPLACEALL]);
  Texto := StringReplace(Texto, '>' + slinebreak, '>', [RFREPLACEALL]);
  Texto := StringReplace(Texto, #13, emptystr, [RFREPLACEALL]);
  Texto := StringReplace(Texto, #13#10, ' ', [RFREPLACEALL]);
  Texto := StringReplace(Texto, slinebreak, emptystr, [RFREPLACEALL]);
  result := Texto;
end;

function RemoverUTF8(Texto: String): String;
begin
  Texto := StringReplace(Texto, 'á', 'a', [RFREPLACEALL]);
  Texto := StringReplace(Texto, 'é', 'e', [RFREPLACEALL]);
  Texto := StringReplace(Texto, 'í', 'i', [RFREPLACEALL]);
  Texto := StringReplace(Texto, 'ó', 'o', [RFREPLACEALL]);
  Texto := StringReplace(Texto, 'ú', 'u', [RFREPLACEALL]);
  Texto := StringReplace(Texto, 'à', 'a', [RFREPLACEALL]);
  Texto := StringReplace(Texto, 'è', 'e', [RFREPLACEALL]);
  Texto := StringReplace(Texto, 'ì', 'i', [RFREPLACEALL]);
  Texto := StringReplace(Texto, 'ò', 'o', [RFREPLACEALL]);
  Texto := StringReplace(Texto, 'ù', 'u', [RFREPLACEALL]);
  Texto := StringReplace(Texto, 'â', 'a', [RFREPLACEALL]);
  Texto := StringReplace(Texto, 'ê', 'e', [RFREPLACEALL]);
  Texto := StringReplace(Texto, 'î', 'i', [RFREPLACEALL]);
  Texto := StringReplace(Texto, 'ô', 'o', [RFREPLACEALL]);
  Texto := StringReplace(Texto, 'û', 'u', [RFREPLACEALL]);
  Texto := StringReplace(Texto, 'ä', 'a', [RFREPLACEALL]);
  Texto := StringReplace(Texto, 'ë', 'e', [RFREPLACEALL]);
  Texto := StringReplace(Texto, 'ï', 'i', [RFREPLACEALL]);
  Texto := StringReplace(Texto, 'ö', 'o', [RFREPLACEALL]);
  Texto := StringReplace(Texto, 'ü', 'u', [RFREPLACEALL]);
  Texto := StringReplace(Texto, 'ã', 'a', [RFREPLACEALL]);
  Texto := StringReplace(Texto, 'õ', 'o', [RFREPLACEALL]);
  Texto := StringReplace(Texto, 'ñ', 'n', [RFREPLACEALL]);
  Texto := StringReplace(Texto, 'ç', 'c', [RFREPLACEALL]);
  Texto := StringReplace(Texto, 'Á', 'A', [RFREPLACEALL]);
  Texto := StringReplace(Texto, 'É', 'E', [RFREPLACEALL]);
  Texto := StringReplace(Texto, 'Í', 'I', [RFREPLACEALL]);
  Texto := StringReplace(Texto, 'Ó', 'O', [RFREPLACEALL]);
  Texto := StringReplace(Texto, 'Ú', 'U', [RFREPLACEALL]);
  Texto := StringReplace(Texto, 'À', 'A', [RFREPLACEALL]);
  Texto := StringReplace(Texto, 'È', 'E', [RFREPLACEALL]);
  Texto := StringReplace(Texto, 'Ì', 'I', [RFREPLACEALL]);
  Texto := StringReplace(Texto, 'Ò', 'O', [RFREPLACEALL]);
  Texto := StringReplace(Texto, 'Ù', 'U', [RFREPLACEALL]);
  Texto := StringReplace(Texto, 'Â', 'A', [RFREPLACEALL]);
  Texto := StringReplace(Texto, 'Ê', 'E', [RFREPLACEALL]);
  Texto := StringReplace(Texto, 'Î', 'I', [RFREPLACEALL]);
  Texto := StringReplace(Texto, 'Ô', 'O', [RFREPLACEALL]);
  Texto := StringReplace(Texto, 'Û', 'U', [RFREPLACEALL]);
  Texto := StringReplace(Texto, 'Ä', 'A', [RFREPLACEALL]);
  Texto := StringReplace(Texto, 'Ë', 'E', [RFREPLACEALL]);
  Texto := StringReplace(Texto, 'Ï', 'I', [RFREPLACEALL]);
  Texto := StringReplace(Texto, 'Ö', 'O', [RFREPLACEALL]);
  Texto := StringReplace(Texto, 'Ü', 'U', [RFREPLACEALL]);
  Texto := StringReplace(Texto, 'Ã', 'A', [RFREPLACEALL]);
  Texto := StringReplace(Texto, 'Õ', 'O', [RFREPLACEALL]);
  Texto := StringReplace(Texto, 'Ñ', 'N', [RFREPLACEALL]);
  Texto := StringReplace(Texto, 'Ç', 'C', [RFREPLACEALL]);
  result := Texto;
end;

function RemoverEspacoEmBranco(Texto: String; const substituir: string = ''): String;
begin
  Texto := StringReplace(Texto, #32, substituir, [RFREPLACEALL]);
  result := Texto;
end;

procedure CamposObrigatorios_CorPadrao(ArrayDbEdit: array of TDBEdit; ArrayDbLookup: array of TDBLookupComboBox; ArraycxComboBox: array of TcxComboBox);
var
  I: Integer;
begin
  for I := 0 to length(ArrayDbEdit) - 1 do { Verificação apenas para dbedits }
    ArrayDbEdit[I].Color := clWhite;
  for I := 0 to length(ArrayDbLookup) - 1 do { Verificação apenas para dblookups }
    ArrayDbLookup[I].Color := clWhite;
  for I := 0 to length(ArraycxComboBox) - 1 do { Verificação apenas para tcxcombobox }
    ArraycxComboBox[I].Style.Color := clWhite;
end;

function CamposObrigatorios(ArrayDbEdit: array of TDBEdit; NomeCamposDBEdit: array of String; ArrayDbLookup: array of TDBLookupComboBox;
  NomeCamposDBLookup: array of String; ArraycxComboBox: array of TcxComboBox; NomeComboBox: array of String; ArrayMaskEdit: array of TMaskEdit;
  NomeCamposTMaskEdit: array of String): boolean;
var
  I: Integer;
  msg_campos, msg_final: String;
begin
  for I := 0 to length(ArrayDbEdit) - 1 do { Verificação apenas para dbedits }
  begin
    if RemoverEspacoEmBranco(RemoverCaracteresEspeciais(ArrayDbEdit[I].Text)) = '' then
    begin
      msg_campos := msg_campos + slinebreak + NomeCamposDBEdit[I];
      ArrayDbEdit[I].Color := clMoneyGreen;
    end
    else
      ArrayDbEdit[I].Color := clWhite;
  end;

  for I := 0 to length(ArrayDbLookup) - 1 do { Verificação apenas para dblookup }
  begin
    if RemoverEspacoEmBranco(RemoverCaracteresEspeciais(ArrayDbLookup[I].Text)) = '' then
    begin
      msg_campos := msg_campos + slinebreak + NomeCamposDBLookup[I];
      ArrayDbLookup[I].Color := clMoneyGreen;
    end
    else
      ArrayDbLookup[I].Color := clWhite;
  end;
  for I := 0 to length(ArraycxComboBox) - 1 do { Verificação apenas para TComboBox }
  begin
    if RemoverEspacoEmBranco(RemoverCaracteresEspeciais(ArraycxComboBox[I].Text)) = '' then
    begin
      msg_campos := msg_campos + slinebreak + NomeComboBox[I];
      ArraycxComboBox[I].Style.Color := clMoneyGreen;
    end
    else
      ArraycxComboBox[I].Style.Color := clWhite;
  end;
  for I := 0 to length(ArrayMaskEdit) - 1 do { Verificação apenas para TMaskEdit }
  begin
    if RemoverEspacoEmBranco(RemoverCaracteresEspeciais(ArrayMaskEdit[I].Text)) = '' then
    begin
      msg_campos := msg_campos + slinebreak + NomeCamposTMaskEdit[I];
      ArrayMaskEdit[I].Color := clMoneyGreen;
    end
    else
      ArrayMaskEdit[I].Color := clWhite;
  end;
  if msg_campos <> '' then
  begin
    msg_final := 'Os seguintes campos são obrigatórios:' + msg_campos + slinebreak + 'Por Favor, preencha os campos destacados para poder prosseguir.';
    WnAlerta('Campos Obrigatórios', msg_final, taleftjustify, 11);
    result := true;
  end
  else
    result := false;
end;

function SearchFiles(Dir, Pattern: string): TArray<string>;
var
  qtderec: Integer;
  searchResult: TSearchRec;
  Files: TArray<string>;
begin
  qtderec := 1;
  if findfirst(Dir + Pattern, faAnyFile, searchResult) = 0 then
  begin
    SetLength(Files, qtderec);
    repeat
      Files[qtderec - 1] := searchResult.Name;
      Inc(qtderec);
      SetLength(Files, qtderec);
    until FindNext(searchResult) <> 0;
  end;
  result := Files;
end;

function getSerialKey: string;
begin
  result := EnDecryptString(TIniFile.Create(confini).readString('dados_liberacao', 'codlibera', ''), 236);
end;

function getNomeFantasia(const NotFoundDef: string = 'EMPRESA NÃO CADASTRADA'): string;
var
  qry: TFDQuery;
begin
  qry := SimpleQuery('SELECT NOME_FANTASIA FROM EMPRESA');
  if qry <> nil then
    result := qry.Fields[0].Text
  else
    result := NotFoundDef;
end;

procedure CamposObrigatorios_CorPadrao(ArrayEdit: array of TEdit; ArrayDbEdit: array of TDBEdit); overload;
var
  I: Integer;
begin
  for I := 0 to length(ArrayEdit) - 1 do { Verificação apenas para dbedits }
    ArrayEdit[I].Color := clWhite;
  for I := 0 to length(ArrayDbEdit) - 1 do { Verificação apenas para dbedits }
    ArrayDbEdit[I].Color := clWhite;
end;

procedure CamposObrigatorios_CorPadrao(ArrayDbEdit: array of TDBEdit; ArrayDbLookup: array of TDBLookupComboBox; ArraycxComboBox: array of TcxComboBox;
  ArrayMaskEdit: array of TMaskEdit); overload;
var
  I: Integer;
begin
  for I := 0 to length(ArrayDbEdit) - 1 do { Verificação apenas para dbedits }
    ArrayDbEdit[I].Color := clWhite;
  for I := 0 to length(ArrayDbLookup) - 1 do { Verificação apenas para dblookups }
    ArrayDbLookup[I].Color := clWhite;
  for I := 0 to length(ArraycxComboBox) - 1 do { Verificação apenas para tcxcombobox }
    ArraycxComboBox[I].Style.Color := clWhite;
  for I := 0 to length(ArrayMaskEdit) - 1 do { Verificação apenas para tcxcombobox }
    ArrayMaskEdit[I].Color := clWhite;
end;

procedure CamposObrigatorios_CorPadrao(ArrayDbEdit: array of TDBEdit; ArraycxDateEdit: array of TCxDateEdit); overload;

var
  I: Integer;
begin
  for I := 0 to length(ArrayDbEdit) - 1 do { Verificação apenas para dbedits }
    ArrayDbEdit[I].Color := clWhite;
  for I := 0 to length(ArraycxDateEdit) - 1 do { Verificação apenas para dbedits }
    ArraycxDateEdit[I].Style.Color := clWhite;
end;

procedure CamposOpcionais(ArrayDbEdit: array of TDBEdit; ArrayNomeCampos: array of string);

const
  msg_padrao = 'Cadastro concluído com sucesso!';
  msg_aux = 'É recomendado o preenchimento dos seguintes campos:';

var
  I: Integer;
  msg_campos, msg_final: String;
begin
  msg_final := msg_padrao;
  for I := 0 to length(ArrayDbEdit) - 1 do { Verificação apenas para dbedits }
  begin
    if RemoverCaracteresEspeciais(ArrayDbEdit[I].Text) = '' then
      if msg_campos = '' then
        msg_campos := ArrayNomeCampos[I]
      else
        msg_campos := msg_campos + slinebreak + ArrayNomeCampos[I];
  end;
  if msg_campos <> '' then
    msg_final := msg_padrao + slinebreak + msg_aux + slinebreak + msg_campos;
  Application.MessageBox(stringtoolestr(msg_final), 'Concluído', MB_ICONASTERISK + MB_OK);

end;

procedure AlterarEnabled(xObject: array of tcontrol; Enabled: boolean);
var
  I: Integer;
begin
  for I := 0 to length(xObject) - 1 do { Verificação apenas para dbedits }
  begin
    xObject[I].Enabled := Enabled;
  end;
end;

procedure AlterarVisible(xObject: array of tcontrol; Visible: boolean);
var
  I: Integer;
begin
  for I := 0 to length(xObject) - 1 do { Verificação apenas para grupos }
  begin
    xObject[I].Visible := Visible;
  end;
end;

procedure AlterarReadOnly(xObject: array of TEdit; Read: boolean);
var
  I: Integer;
begin
  for I := 0 to length(xObject) - 1 do { Verificação apenas para grupos }
  begin
    xObject[I].readonly := Read;
  end;
end;

procedure LimparCampos(ArrayEdit: array of TEdit);

var
  I: Integer;
begin
  for I := 0 to length(ArrayEdit) - 1 do
  begin
    ArrayEdit[I].Text := '';
  end;
end;

function Arredondar(const value: extended): extended;
  function Dizima(Str: String): boolean;

  var
    x, z: Integer;
  begin
    for x := 1 to length(Str) do
      if (Str[1] = Str[x]) then
      begin
        result := true;
        for z := 1 to length(Str) do
        begin
          if (Str[1] = Str[z]) then
            result := true
          else
            result := false;
        end;
        if result = true then
          Break;
      end
      else
        result := false;
  end;

var
  ArrFrac, NewArrFrac: string;
  I: Integer;
begin
  ArrFrac := FloatToStr(frac(value));
  if ArrFrac[1] = '0' then
    if ArrFrac[2] = ',' then
      ArrFrac := StringReplace(ArrFrac, '0,', '', [RFREPLACEALL]);
  if length(ArrFrac) > 3 then
  begin
    if Dizima(ArrFrac) then
      NewArrFrac := ArrFrac[1] + inttostr(StrToInt(ArrFrac[2]) + 1)
    else
    begin
      NewArrFrac := '';
      for I := 1 to 3 do
        NewArrFrac := NewArrFrac + ArrFrac[I];
      if StrToInt(NewArrFrac[3]) > 5 then
        NewArrFrac := NewArrFrac[1] + inttostr(StrToInt(NewArrFrac[2]) + 1)
      else if StrToInt(NewArrFrac[2]) < 5 then
        NewArrFrac := NewArrFrac[1] + inttostr(StrToInt(NewArrFrac[2]) - 1)
    end;
  end
  else
    NewArrFrac := ArrFrac[1] + inttostr(StrToInt(ArrFrac[2]));
  result := int(value) + strtofloat('0,' + NewArrFrac);
end;

function Arredonda(Value: Extended; Decimals: Integer): Extended;
var
 Factor, Fraction: Extended;
begin
 Factor := IntPower(10, Decimals);
 { A conversão para string e depois para float evita
   erros de arredondamentos indesejáveis. }
 Value := StrToFloat(FloatToStr(Value * Factor));
 Result := Int(Value);
 Fraction := Frac(Value);
 //if Fraction >= 0.5 then
 if Fraction >= 0.495 then
   Result := Result + 1
 else if Fraction <= -0.5 then
   Result := Result - 1;
 Result := Result / Factor;
end;

function FindCharInStr(const Str: string; const Char: string): Integer;
var
  I, occurencies: Integer;
begin
  occurencies := 0;
  for I := 1 to length(Str) do
    if Str[I] = Char then
      occurencies := occurencies + 1;
  result := occurencies;
end;

function VerificaEstadoCheck(ArrayCheckBox: array of TcxCheckBox; EstadoDesejado: boolean): boolean;

var
  I: Integer;
  TodosDesmarcados: boolean;
begin
  for I := 0 to length(ArrayCheckBox) - 1 do
  begin
    if ArrayCheckBox[I].Checked = EstadoDesejado then
    begin
      TodosDesmarcados := true;
      if (I = length(ArrayCheckBox) - 1) and (TodosDesmarcados = true) then
        result := true
      else if (I = length(ArrayCheckBox) - 1) and (TodosDesmarcados = false) then
        result := false;
    end
    else
    begin
      TodosDesmarcados := false;
      result := false;
      exit;
      Break;
    end;
  end
end;

procedure TeclasAtalho(Key: Word; ArrayKey: array of Integer; ArrayBotoes: array of TcxButton);

var
  I: Integer;
begin
  if Key = VK_ESCAPE then
    Screen.ActiveForm.Close;
  for I := 0 to length(ArrayKey) - 1 do { Verificação apenas para Teclas }
  begin
    if Key = ArrayKey[I] then
      ArrayBotoes[I].Click;
  end;
end;

procedure Principal_TeclasAtalho(Key: Word; ArrayKey: array of Integer; ArrayBotoes: array of tdxbarlargebutton);

var
  I: Integer;
begin
  for I := 0 to length(ArrayKey) - 1 do { Verificação apenas para Teclas }
  begin
    if Key = ArrayKey[I] then
      ArrayBotoes[I].Click;
  end;
end;

procedure IniciarCadastro(ArrayBotoes: array of TcxButton; IniciaCadastro: boolean);

var
  I: Integer;
begin
  for I := 0 to length(ArrayBotoes) - 1 do { Verificação apenas para Botões }
  begin
    if IniciaCadastro then
    begin
      if (I = 0) then
        ArrayBotoes[I].Visible := false { botao incluir }
      else if (I = 1) then
        ArrayBotoes[I].Enabled := true { botao cancelar }
      else
        ArrayBotoes[I].Enabled := false; { outros botoes }
    end
    else
    begin
      if (I = 0) then
        ArrayBotoes[I].Visible := true { botao incluir }
      else if (I = 1) then
        ArrayBotoes[I].Enabled := false { botao cancelar }
      else
        ArrayBotoes[I].Enabled := true; { outros botoes }
    end;
  end;
end;

procedure ValidarIE(IE: TDBEdit);
  procedure msg;
  begin
    Application.MessageBox('Informe uma numeração para Inscrição Estadual ou ''ISENTO'' caso não possua.', 'Mensagem do Sistema', MB_ICONWARNING + MB_OK);
    IE.SelectAll;
    IE.SetFocus;
    exit;
  end;

var
  I: Integer;
begin
  if IE.Text = emptystr then
    msg
  else
    for I := 0 to length(IE.Text) - 1 do
    begin
      if IE.Text <> 'ISENTO' then
      begin
        if not IsNumber(IE.Text) then
        begin
          msg;
          Break;
        end;
      end;
    end
end;

function IsNumber(Texto: String): boolean;
var
  I: Int64;
begin
  try
    if TryStrToInt64(Texto, I) then
      result := true
    else
      result := false;
  except
    result := false;
  end;
end;

procedure ExcluirCadastro(Consulta: TFDQuery; DesativarQuery: boolean = true);
begin
  Consulta.delete;
  if DesativarQuery then
     Consulta.Active := false;
  WnInfo('Excluir', 'Cadastro foi excluído com sucesso.');
end;

function DuplicarCadastro(CADASTRO: TFDQuery; Tabela, Codigo: String): Integer;
var
  Campo: string;
  SEQUENCIA, I: Integer;
  duplicate_query: TFDQuery;
begin
  SEQUENCIA := SimpleQuery('SELECT MAX(CODIGO) as SEQUENCIA FROM ' + Tabela).Fields[0].asInteger + 1;
  duplicate_query := SimpleQuery('SELECT * FROM ' + Tabela + ' WHERE CODIGO=' + Codigo);
  with CADASTRO do
  begin
    for I := 0 to Pred(CADASTRO.Fields.Count) do
    begin
      Campo := duplicate_query.Fields[I].FieldName;
      FieldByName(Campo).value := duplicate_query.FieldByName(Campo).value;
    end;
    FieldByName('CODIGO').Clear;
    FieldByName('CODIGO').value := SEQUENCIA;
    result := SEQUENCIA;
  end;
end;

procedure ClienteViraFornecedor(CADASTRO: TFDQuery; Tabela, Codigo: String);

var
  Campo: string;
  SEQUENCIA, I: Integer;
  query: TFDQuery;
begin
  query := TFDQuery.Create(nil);
  query.connection := CADASTRO.connection;
  with query do
  begin
    Close;
    sql.Clear;
    sql.Add('SELECT max(codigo) as ultimo_registro FROM ' + Tabela);
    open;
    SEQUENCIA := query.FieldByName('ultimo_registro').asInteger + 1;
    Close;
    sql.Clear;
    sql.Add(CADASTRO.sql.Text);
    paramByName('pcodigo').value := StrToInt(Codigo);
    open;
  end;
  with CADASTRO do
  begin
    Active := true;
    insert;
    for I := 0 to Pred(CADASTRO.Fields.Count) do
    begin
      Campo := query.Fields[I].FieldName;
      FieldByName(Campo).value := query.FieldByName(Campo).value;
    end;
    FieldByName('CODIGO').Clear;
    FieldByName('CODIGO').value := SEQUENCIA;
  end;
end;

function ValidarCpf(CPF_Text: string): boolean;

var
  n1, n2, n3, n4, n5, n6, n7, n8, n9: Integer;
  d1, d2: Integer;
  digitado, calculado: string;
begin
  n1 := StrToInt(CPF_Text[1]);
  n2 := StrToInt(CPF_Text[2]);
  n3 := StrToInt(CPF_Text[3]);
  n4 := StrToInt(CPF_Text[4]);
  n5 := StrToInt(CPF_Text[5]);
  n6 := StrToInt(CPF_Text[6]);
  n7 := StrToInt(CPF_Text[7]);
  n8 := StrToInt(CPF_Text[8]);
  n9 := StrToInt(CPF_Text[9]);
  d1 := n9 * 2 + n8 * 3 + n7 * 4 + n6 * 5 + n5 * 6 + n4 * 7 + n3 * 8 + n2 * 9 + n1 * 10;
  d1 := 11 - (d1 mod 11);
  if d1 >= 10 then
    d1 := 0;
  d2 := d1 * 2 + n9 * 3 + n8 * 4 + n7 * 5 + n6 * 6 + n5 * 7 + n4 * 8 + n3 * 9 + n2 * 10 + n1 * 11;
  d2 := 11 - (d2 mod 11);
  if d2 >= 10 then
    d2 := 0;
  calculado := inttostr(d1) + inttostr(d2);
  digitado := CPF_Text[10] + CPF_Text[11];
  if calculado = digitado then
    ValidarCpf := true
  else
    ValidarCpf := false;
end;

function ValidarCnpj(xCNPJ: String): boolean;

Var
  d1, d4, xx, nCount, fator, resto, digito1, digito2: Integer;
  Check: String;
begin
  d1 := 0;
  d4 := 0;
  xx := 1;
  for nCount := 1 to length(xCNPJ) - 2 do
  begin
    if pos(copy(xCNPJ, nCount, 1), '/-.') = 0 then
    begin
      if xx < 5 then
      begin
        fator := 6 - xx;
      end
      else
      begin
        fator := 14 - xx;
      end;
      d1 := d1 + StrToInt(copy(xCNPJ, nCount, 1)) * fator;
      if xx < 6 then
      begin
        fator := 7 - xx;
      end
      else
      begin
        fator := 15 - xx;
      end;
      d4 := d4 + StrToInt(copy(xCNPJ, nCount, 1)) * fator;
      xx := xx + 1;
    end;
  end;
  resto := (d1 mod 11);
  if resto < 2 then
  begin
    digito1 := 0;
  end
  else
  begin
    digito1 := 11 - resto;
  end;
  d4 := d4 + 2 * digito1;
  resto := (d4 mod 11);
  if resto < 2 then
  begin
    digito2 := 0;
  end
  else
  begin
    digito2 := 11 - resto;
  end;
  Check := inttostr(digito1) + inttostr(digito2);
  if Check <> copy(xCNPJ, succ(length(xCNPJ) - 2), 2) then
  begin
    result := false;
  end
  else
  begin
    result := true;
  end;
end;

procedure ConsultarCPF(Consulta: TFDQuery; Texto: TDBEdit; Tabela, Coluna, Parametro: String);

var
  QueryTemp: TFDQuery;
begin
  QueryTemp := TFDQuery.Create(nil);
  QueryTemp.connection := Consulta.connection;
  with QueryTemp do
  begin
    Close;
    sql.Clear;
    sql.Add('SELECT * FROM ' + Tabela);
    sql.Add(' WHERE ' + Coluna + ' LIKE :' + Parametro);
    params[0].value := '%' + Texto.Text + '%';
    open;
    if RecordCount <> 0 then
    begin
      Application.MessageBox('Existe Cadastro com este CPF!!! ', 'Mensagem do Sistema.', MB_ICONWARNING + MB_OK);
      Texto.SelectAll;
      Texto.SetFocus;
    end;
  end;
  QueryTemp.destroy;
end;

procedure ConsultarCNPJ(Consulta: TFDQuery; Texto: TDBEdit; Tabela, Coluna, Parametro: String);

var
  QueryTemp: TFDQuery;
begin
  QueryTemp := TFDQuery.Create(nil);
  QueryTemp.connection := Consulta.connection;
  with QueryTemp do
  begin
    Close;
    sql.Clear;
    sql.Add('SELECT * FROM ' + Tabela);
    sql.Add(' WHERE ' + Coluna + ' LIKE :' + Parametro);
    params[0].value := '%' + Texto.Text + '%';
    open;
    if RecordCount <> 0 then
    begin
      Application.MessageBox('Existe Cadastro com este CNPJ!!! ', 'Mensagem do Sistema.', MB_ICONWARNING + MB_OK);
      Texto.SelectAll;
      Texto.SetFocus;
    end;
  end;
  QueryTemp.destroy;
end;

function FormatarQuantidadeKG(edt_quantidade: TEdit; Key: Char): Char;

var
  ValorAnterior: string;
begin
  if not(Key in [#8]) then
  begin
    if not(Key in ['0' .. '9']) then
    begin
      Key := #0;
    end;
    if (length(ValorDigitado) = 0) then
    begin
      ValorAnterior := StringOfchar(Key, 1);
      ValorDigitado := ValorDigitado + ValorAnterior;
      edt_quantidade.Text := '0,00' + ValorDigitado;
      edt_quantidade.SelStart := length(edt_quantidade.Text);
      ValorAnterior := '';
      Key := #0;
    end;
    if Key <> #0 then
    begin
      if (length(ValorDigitado) = 1) then
      begin
        ValorAnterior := StringOfchar(Key, 1);
        ValorDigitado := ValorDigitado + ValorAnterior;
        edt_quantidade.Text := '0,0' + ValorDigitado;
        edt_quantidade.SelStart := length(edt_quantidade.Text);
        ValorAnterior := '';
        Key := #0;
      end;
      if Key <> #0 then
      begin
        if (length(ValorDigitado) = 2) then
        begin
          ValorAnterior := StringOfchar(Key, 1);
          ValorDigitado := ValorDigitado + ValorAnterior;
          edt_quantidade.Text := '0,' + ValorDigitado;
          edt_quantidade.SelStart := length(edt_quantidade.Text);
          ValorAnterior := '';
          Key := #0;
        end;
        if Key <> #0 then
        begin
          if (length(ValorDigitado) = 3) then
          begin
            ValorAnterior := StringOfchar(Key, 1);
            ValorDigitado := ValorDigitado + ValorAnterior;
            edt_quantidade.Text := ValorDigitado[1] + ',' + ValorDigitado[2] + ValorDigitado[3] + ValorDigitado[4];
            edt_quantidade.SelStart := length(edt_quantidade.Text);
            ValorAnterior := '';
            Key := #0;
          end;
        end;
        if Key <> #0 then
        begin
          if (length(ValorDigitado) = 4) then
          begin
            ValorAnterior := StringOfchar(Key, 1);
            ValorDigitado := ValorDigitado + ValorAnterior;
            edt_quantidade.Text := ValorDigitado[1] + ValorDigitado[2] + ',' + ValorDigitado[3] + ValorDigitado[4] + ValorDigitado[5];
            edt_quantidade.SelStart := length(edt_quantidade.Text);
            ValorAnterior := '';
            Key := #0;
          end;
          if Key <> #0 then
          begin
            if (length(ValorDigitado) = 5) then
            begin
              Key := #0;
            end;
          end;
        end;
      end;
    end;
  end
  else
  // Apagando os dados
  begin
    if (length(ValorDigitado) = 5) then
    begin
      ValorDigitado := ValorDigitado[1] + ValorDigitado[2] + ValorDigitado[3] + ValorDigitado[4];
      edt_quantidade.Text := ValorDigitado[1] + ',' + ValorDigitado[2] + ValorDigitado[3] + ValorDigitado[4];
      edt_quantidade.SelStart := length(edt_quantidade.Text);
      ValorAnterior := '';
      Key := #0;
    end;
    if Key <> #0 then
    begin
      if (length(ValorDigitado) = 4) then
      begin
        ValorDigitado := ValorDigitado[1] + ValorDigitado[2] + ValorDigitado[3];
        edt_quantidade.Text := '0,' + ValorDigitado;
        edt_quantidade.SelStart := length(edt_quantidade.Text);
        ValorAnterior := '';
        Key := #0;
      end;
      if Key <> #0 then
      begin
        if (length(ValorDigitado) = 3) then
        begin
          ValorDigitado := ValorDigitado[1] + ValorDigitado[2];
          edt_quantidade.Text := '0,0' + ValorDigitado;
          edt_quantidade.SelStart := length(edt_quantidade.Text);
          ValorAnterior := '';
          Key := #0;
        end;
        if Key <> #0 then
        begin
          if (length(ValorDigitado) = 2) then
          begin
            ValorDigitado := ValorDigitado[1];
            edt_quantidade.Text := '0,00' + ValorDigitado;
            edt_quantidade.SelStart := length(edt_quantidade.Text);
            ValorAnterior := '';
            Key := #0;
          end;
        end;
        if Key <> #0 then
        begin
          if (length(ValorDigitado) = 1) then
          begin
            ValorDigitado := '';
            edt_quantidade.Text := '0,000';
            edt_quantidade.SelStart := length(edt_quantidade.Text);
            ValorAnterior := '';
            Key := #0;
          end;
        end;
        if Key <> #0 then
        begin
          if (length(ValorDigitado) = 0) then
          begin
            Key := #0;
          end;
        end;
      end;
    end;
  end;
  result := Key;
end;

procedure GridZebrado(GRID: TDBGRID; Rect: TRect; DataCol: Integer; Column: TColumn; State: TGridDrawState);
begin
  if Odd(GRID.DataSource.DataSet.RecNo) then // Índice Impar
  begin
    GRID.Canvas.Brush.Color := clWebGainsboro; // Seleciona cor
    GRID.Canvas.FillRect(Rect); // Pinta Grid
  end;
  if (gdFocused in State) then
  begin
    GRID.Canvas.Brush.Color := clWebDodgerBlue;
    GRID.Canvas.Font.Color := clWhite;
    GRID.Canvas.FillRect(Rect);
  end;
  GRID.DefaultDrawColumnCell(Rect, DataCol, Column, State); // Muda Status

  GRID.options := [dgTitles, dgIndicator, dgColLines, dgRowLines, dgTitleClick];

end;

procedure GridZebrado(ACanvas: TcxCanvas; AViewInfo: TcxGridTableDataCellViewInfo);
begin
  if Odd(AViewInfo.GridRecord.RecordIndex) Then
    ACanvas.Brush.Color := clWebGainsboro;
end;

function obterNroResultado(const aXML, aTag, aEndTag: string): string;

var
  _Posini, _Posfim: Integer;
Begin
  result := '';
  _Posini := pos(aTag, aXML);
  _Posfim := pos(aEndTag, aXML);
  if (_Posini > 0) then
  begin
    Inc(_Posini, length(aTag));
    result := copy(aXML, _Posini + 1, (_Posfim - _Posini) - 1);
  end;
end;

procedure MoverXML(CaminhoOrigem, CaminhoDestino: String);

var
  origem, destino: PWideChar;
begin
  origem := PWideChar(CaminhoOrigem);
  destino := PWideChar(CaminhoDestino);
  MoveFile(origem, destino);
end;

procedure AppendFile(Caminho, Texto: String; Position: Integer = 0);
{ 0 - Fim do arquivo
  1 - Início do arquivo }
var
  FileXML: TextFile;
  DadosArquivo: tstringList;
begin
  DadosArquivo := tstringList.Create;
  DadosArquivo.LoadFromFile(Caminho);
  AssignFile(FileXML, Caminho);
  Rewrite(FileXML);
  if Position = 0 then
    DadosArquivo.Text := DadosArquivo.Text + Texto
  else if Position = 1 then
    DadosArquivo.Text := Texto + DadosArquivo.Text;
  DadosArquivo.Text := RemoverQuebraLinhas(DadosArquivo.Text);
  write(FileXML, DadosArquivo.Text);
  CloseFile(FileXML);
  DadosArquivo.destroy;
end;

procedure DeletarXMLPendente(CaminhoOrigem: String);

var
  origem: PWideChar;
begin
  origem := PWideChar(CaminhoOrigem);
  deletefile(origem);
end;

procedure ColorirStatusGrid(GRID: TDBGRID; Rect: TRect; DataCol: Integer; Column: TColumn; State: TGridDrawState; Cor: Array of Integer;
  ValorPreencher: array of String; ValorBanco: TStringField);

var
  I: Integer;
begin
  with GRID do
  begin
    for I := Low(ValorPreencher) to High(ValorPreencher) do
      if ValorPreencher[I] = ValorBanco.value then
      // Índice Impar
      begin
        Canvas.Font.Color := Cor[I]; // Seleciona cor
        Canvas.FillRect(Rect); // Pinta Grid
        DefaultDrawColumnCell(Rect, DataCol, Column, State); // Muda Status
      end;
  end;
end;

procedure ColorirStatusGrid(GRID: TDBGRID; Rect: TRect; DataCol: Integer; Column: TColumn; State: TGridDrawState; Colors: array of Integer;
  value_to_fill: array of variant; value_to_compare: extended);

var
  I: Integer;
begin
  with GRID do
  begin

    Canvas.Font.Color := ColorByStatus(value_to_compare, value_to_fill, Colors); // Seleciona cor
    Canvas.FillRect(Rect); // Pinta Grid
    DefaultDrawColumnCell(Rect, DataCol, Column, State); // Muda Status

  end;
end;

procedure MostrarBarraLateralGrid(GRID: TDBGRID; VERTICAL, HORIZONTAL: boolean);
begin
  ShowScrollBar(GRID.Handle, SB_VERT, VERTICAL);
  ShowScrollBar(GRID.Handle, SB_HORZ, HORIZONTAL);
end;

function MonthToDBMonth(Dia, Mes: String): string;

var
  MesAux: String;
begin
  MesAux := formatdatetime('yyyy', date) + '-';
  MesAux := MesAux + Mes + '-';
  MesAux := MesAux + Dia;
  result := MesAux;
end;

procedure CamposEditaveis(ArrayEdit: array of TEdit; IniciaEdicao: boolean);

var
  I, j: Integer;
begin
  if IniciaEdicao then

    for I := Low(ArrayEdit) to High(ArrayEdit) do
      ArrayEdit[I].Color := clWebLightSkyBlue
  else
    for I := Low(ArrayEdit) to High(ArrayEdit) do
      ArrayEdit[I].Color := clWindow;
end;

function ColorByStatus(value: variant; ArrValues: array of variant; ArrColors: array of Integer): Integer;
var
  kindof, I: Integer;
begin
  result := clWhite;
  kindof := varType(value) and VarTypeMask;
  if (kindof = varInteger) or (kindof = vardouble) then
  begin
    if value <= ArrValues[0] then
      result := ArrColors[0]
    else if (value > ArrValues[0]) and (value < ArrValues[1]) then
      result := ArrColors[1]
    else if value >= ArrValues[1] then
      result := ArrColors[2]
  end
  else
  begin
    for I := Low(ArrValues) to High(ArrValues) do
      if value = ArrValues[I] then
        result := ArrColors[I]
  end;
end;

function FormatarTag(Tag: extended; const ReturnMethod: Word = varString): variant;
var
  strTag, arrTagStr, intPart, fraPart, fraPartAux, Separador: string;
  index, x: Integer;
begin
  if ReturnMethod = varString then
    Separador := '.'
  else if ReturnMethod = vardouble then
    Separador := ',';
  fraPart := '';
  intPart := '';
  arrTagStr := '';
  strTag := '';
  fraPartAux := '';
  index := 0;
  if (Tag <> 0) then
  begin
    arrTagStr := FloatToStr(Tag);
    index := AnsiPos(',', arrTagStr);
    if index <> 0 then
    begin
      for x := 1 to index - 1 do
      begin
        intPart := intPart + arrTagStr[x]; { Parte Inteira }
      end;
      fraPartAux := copy(arrTagStr, index + 1, length(arrTagStr));
      { Parte Fracinária }
      fraPart := fraPartAux[1];
      if length(fraPartAux) >= 2 then
        fraPart := fraPart + fraPartAux[2]
      else
        fraPart := fraPart + '0';
    end
    else
    begin
      intPart := arrTagStr;
      fraPart := '00';
    end;
    strTag := intPart + Separador + fraPart;
  end
  else
    strTag := '0' + Separador + '00';
  result := varastype(strTag, ReturnMethod);
end;

function FormatarTagDescricao(xDesc: string): string;
var
  x: Integer;
begin
  xDesc := RemoverCaracteresEspeciais(xDesc);
  xDesc := copy(xDesc, 1, 110);
  if length(xDesc) <> 0 then
    for x := Low(xDesc) to high(xDesc) do
      if xDesc[x] = ' ' then
        xDesc := copy(xDesc, x + 1, 110)
      else
        Break;
  result := xDesc;
end;

procedure CNPJCPF(Field: TMaskEdit);
var
  cpfcnpj: string;
begin
  cpfcnpj := RemoverEspacoEmBranco(RemoverCaracteresEspeciais(Field.Text));
  if length(cpfcnpj) = 11 then { CPF }
    Field.EditMask := '000\.000\.000\-00;1;_'
  else if length(cpfcnpj) = 14 then
    Field.EditMask := '00\.000\.000/0000-00;1;_'
  else
    Field.EditMask := '';
end;

procedure CNPJCPF(Field: TDBEdit);

var
  cpfcnpj: string;
begin
  cpfcnpj := RemoverEspacoEmBranco(RemoverCaracteresEspeciais(Field.Text));
  if length(cpfcnpj) = 11 then { CPF }
    Field.Field.EditMask := '000\.000\.000\-00;1;_'
  else if length(cpfcnpj) = 14 then
    Field.Field.EditMask := '00\.000\.000/0000-00;1;_';
end;

function Format_CPF_CNPJ(value: string): string;
var
  cpfcnpj: string;
begin
  cpfcnpj := RemoverEspacoEmBranco(RemoverCaracteresEspeciais(value));
  if length(cpfcnpj) = 11 then { CPF }
    result := copy(cpfcnpj, 1, 3) + '.' + copy(cpfcnpj, 4, 3) + '.' + copy(cpfcnpj, 7, 3) + '-' + copy(cpfcnpj, 10, 2)
  else if length(cpfcnpj) = 14 then
    result := copy(cpfcnpj, 1, 2) + '.' + copy(cpfcnpj, 3, 3) + '.' + copy(cpfcnpj, 6, 3) + '/' + copy(cpfcnpj, 9, 4) + '-' + copy(cpfcnpj, 13, 2);
end;

function Calcdata(Partner: String): string;

var
  FullyDate: string;
  my_date: TDate;
begin
  my_date := incmonth(date, -1);
  FullyDate := formatdatetime(Partner, my_date);
  result := FullyDate;
end;

function SimpleQuery(query: String; Conn: TfdConnection = nil): TFDQuery;
var
  qry_tmp: TFDQuery;
begin
  try
    qry_tmp := TFDQuery.Create(nil);
    if Conn = nil then
      Conn := module.connection;
    with qry_tmp do
    begin
      connection := Conn;
      Close;
      sql.Clear;
      open(query);
      FetchAll;
      if RecordCount <> 0 then
        result := qry_tmp
      else if RecordCount = 0 then
        result := nil;
    end;
  except
    on e: exception do
      WnErro('Erro', e.Message + slinebreak);
  end;
end;

function SimpleQuery(query: String; arr_params: array of variant; Conn: TfdConnection = nil): TFDQuery; overload;
var
  qry_tmp: TFDQuery;
  I: Integer;
begin
  try
    qry_tmp := TFDQuery.Create(nil);
    if Conn = nil then
      Conn := module.connection;
    with qry_tmp do
    begin
      connection := Conn;
      Close;
      sql.Clear;
      sql.Add(query);
      open(query, arr_params);
      FetchAll;
      if RecordCount <> 0 then
        result := qry_tmp
      else if RecordCount = 0 then
        result := nil;
    end;
  except
    on e: exception do
      WnErro('Erro', e.Message + slinebreak);
  end;
end;

function ExecQuery(query: String; Conn: TfdConnection = nil): TFDQuery;
var
  qry_tmp: TFDQuery;
begin
  try
    qry_tmp := TFDQuery.Create(nil);
    if Conn = nil then
      Conn := module.connection;
    with qry_tmp do
    begin
      connection := Conn;
      Close;
      sql.Clear;
      sql.Add(query);
      Execsql;
    end;
  except
    on e: exception do
      WnErro('Erro', e.Message + slinebreak);
  end;
end;

function ExecQuery(query: String; arr_params: array of variant; Conn: TfdConnection = nil): TFDQuery; overload;
var
  qry_tmp: TFDQuery;
  I: Integer;
begin
  try
    qry_tmp := TFDQuery.Create(nil);
    if Conn = nil then
      Conn := module.connection;
    with qry_tmp do
    begin
      connection := Conn;
      Close;
      sql.Clear;
      Execsql(query, arr_params);
    end;
  except
    on e: exception do
      WnErro('Erro', e.Message + slinebreak);
  end;
end;

function ZeroLeft(strx: string; qtde: Integer): string;

var
  fmt: string;
  I: Integer;
begin
  for I := 1 to qtde do
    fmt := '0' + fmt;
  result := FORMATFLOAT(RemoverEspacoEmBranco(fmt), strtofloat(strx));
end;

function AutoComplete(Edit: TEdit; MiniQuery: string; FieldIndex: Integer): TFDQuery;

var
  Posicao, Aux, cursorback: Integer;
  txt: string;
  qry: TFDQuery;
begin
  sleep(100);
  qry := SimpleQuery(MiniQuery);
  if qry = nil then
    result := nil
  else
  begin
    txt := qry.Fields[FieldIndex].Text;
    if txt <> emptystr then
    begin
      Posicao := length(Edit.Text);
      For Aux := length(Edit.Text) + 1 to length(txt) do
      begin
        Edit.Text := Edit.Text + txt[Aux];
      end;
      Edit.SelStart := Posicao;
      Edit.SelLength := length(Edit.Text);
      result := qry;
    end;
  end;
end;

function LimitOccurences(const StringValue: string; const CharToFind: Char; CountOcurr: Integer; Key: Char): Char;

var
  c: Char;
  Occur: Integer;
begin
  if Key = Char(',') then
  begin
    Occur := 0;
    for c in StringValue do
    begin
      if c = CharToFind then
        Occur := Occur + 1;
    end;
    if (Occur = CountOcurr) then
      result := #0
    else
      result := Key;
  end
  else
    result := Key;
end;

procedure EnviarArquivosFiscais;
const
  NFCEpath = 'Notas_Fiscais\NFCe\';
  NFEpath = 'Notas_Fiscais\NFe\';
  NFCe65 = 'NFCe65\';
  NFe55 = 'NFe55\';

var
  IdSMTP: TIdSMTP;
  idMensagem: Tidmessage;
  idSSLSocket: TIdSSLIOHandlerSocketOpenSSL;
  idCorpoMensagem: TIdtext;
  xAttFile, qtdAutorizadas, qtdCanceladas, qtdInutilizadas, qtdImportadas, remetente, destinatarios: string;
  qry_temp: TFDQuery;
  counter, ultima_nota, primeira_nota: Integer;
  continuar_arquivos: boolean;

  function pathdate: string;
  begin
    result := pathexe + NFCEpath + Calcdata('mmyyyy') + '\';
  end;

  function pathNFedate: string;
  begin
    result := pathexe + NFEpath + Calcdata('mmyyyy') + '\';
  end;

  procedure liberarinstancias(disconect: boolean = true);

  var
    pathremove: string;
    Str: String;
    conf: TIniFile;
  begin
    try
      IdSMTP.disconnect;
      UnLoadOpenSSLLibrary;
      FreeAndNil(idMensagem);
      FreeAndNil(idSSLSocket);
      FreeAndNil(IdSMTP);
      idCorpoMensagem := nil;
      qry_temp.destroy;

      pathremove := pathdate + NFCe65;
      if DirectoryExists(pathremove, true) then
        TDirectory.delete(pathremove, true);

      pathremove := pathNFedate + NFe55;
      if DirectoryExists(pathremove, true) then
        TDirectory.delete(pathremove, true);

      tfile.delete(tdir.Temp.root);

      Inc(counter);
      Frm_Carregando_Dados.PreencherBarra(counter);
    except
      on e: exception do
      BEGIN
        WnErro('Configuração de Email', e.Message + slinebreak + 'Erro ao liberar instâncias !', taleftjustify, 10);
      END;

    end;
  end;

  procedure enviar_email_suporte_erro(Mensagem: string);
  var
    suporte_IdSMTP: TIdSMTP;
    suporte_idMensagem: Tidmessage;
    suporte_idSSLSocket: TIdSSLIOHandlerSocketOpenSSL;
    suporte_idCorpoMensagem: TIdtext;
  begin
    suporte_idSSLSocket := TIdSSLIOHandlerSocketOpenSSL.Create(Application);
    suporte_idSSLSocket.SSLOptions.Method := sslvSSLv23;
    suporte_idSSLSocket.SSLOptions.Mode := sslmClient;
    suporte_IdSMTP := TIdSMTP.Create(Application);
    suporte_IdSMTP.disconnect;
    suporte_IdSMTP.Host := 'smtp.gmail.com';
    suporte_IdSMTP.UserName := 'arquivosfiscaissmc@gmail.com';
    suporte_IdSMTP.Password := 'smc@arquivos@1977';
    suporte_IdSMTP.Port := 465;
    suporte_IdSMTP.IOHandler := suporte_idSSLSocket;
    suporte_IdSMTP.UseTLS := utUseImplicitTLS;
    suporte_IdSMTP.AuthType := satDefault;
    suporte_idMensagem := Tidmessage.Create(Application);
    suporte_idMensagem.Clear;
    suporte_idMensagem.From.Address := 'arquivosfiscaissmc@gmail.com';
    suporte_idMensagem.ReplyTo.EMailAddresses := 'arquivosfiscaissmc@gmail.com';
    suporte_idMensagem.From.Name := 'arquivosfiscaissmc@gmail.com';
    suporte_idMensagem.Recipients.Add.Text := 'arquivosfiscaissmc@gmail.com';
    suporte_idMensagem.CCList.EMailAddresses := 'arquivosfiscaissmc@gmail.com';
    suporte_idMensagem.BCCList.EMailAddresses := 'suporteunisystem.ro@gmail.com ; smc.prog@gmail.com ; arquivosfiscaissmc@gmail.com';
    suporte_idMensagem.Subject := '[ARQUIVOS FISCAIS ERRO] ' + SimpleQuery('SELECT NOME_FANTASIA FROM EMPRESA').Fields[0].Text + ' - ' + Calcdata('mm/yyyy');
    suporte_idMensagem.Encoding := meMIME;
    suporte_idCorpoMensagem := TIdtext.Create(suporte_idMensagem.MessageParts);
    suporte_idCorpoMensagem.Body.Add('Erro ao enviar os arquivos fiscais do cliente ' + SimpleQuery('SELECT NOME_FANTASIA FROM EMPRESA').Fields[0].Text +
      ' com cnpj ' + SimpleQuery('SELECT CNPJ FROM EMPRESA').Fields[0].Text + ' referente ao mês de ' + Calcdata('mm/yyyy'));
    suporte_idCorpoMensagem.Body.Add('Mensagem de erro:');
    suporte_idCorpoMensagem.Body.Add(Mensagem);
    suporte_idCorpoMensagem.Body.Add('Entre em contato para solucionar os erros encontrados!' + slinebreak + slinebreak + 'Equipe de Desenvolvimento SMC');
    suporte_IdSMTP.Connect;
    suporte_IdSMTP.Authenticate;
    suporte_IdSMTP.send(suporte_idMensagem);
    suporte_IdSMTP.disconnect;
    FreeAndNil(suporte_idMensagem);
    FreeAndNil(suporte_idSSLSocket);
    FreeAndNil(suporte_IdSMTP);
    liberarinstancias(false);
    ExecQuery('INSERT INTO ARQUIVOS_FISCAIS VALUES (DEFAULT, "ERRO","' + Calcdata('mm/yyyy') + '","ERRO","ERRO")');
    suporte_idCorpoMensagem := nil;
  end;

  procedure consultardados(query: string);
  begin
    qry_temp := TFDQuery.Create(nil);
    with qry_temp do
    begin
      connection := module.connection;
      Close;
      sql.Clear;
      sql.Add(query);
      open;
    end;
  end;

  function ConfigurarSSL: boolean; stdcall;
  begin
    try
      idSSLSocket := TIdSSLIOHandlerSocketOpenSSL.Create(Application);
      idSSLSocket.SSLOptions.Method := sslvSSLv23;
      idSSLSocket.SSLOptions.Mode := sslmClient;
      result := true;
      continuar_arquivos := true;
    except
      on e: exception do
      begin
        WnErro('Configuração de Email', e.Message + slinebreak + 'Erro ao configurar Socket SSL !', taleftjustify, 10);
        Frm_Carregando_Dados.Close;
        enviar_email_suporte_erro(e.Message + slinebreak + 'Erro ao configurar Socket SSL !');
        result := false;
        continuar_arquivos := false;
      end;
    end;
  end;

  function ConfigurarEmail: boolean;
  begin
    try
      IdSMTP := TIdSMTP.Create(Application);
      IdSMTP.disconnect;
      remetente := 'arquivosfiscaissmc@gmail.com';
      IdSMTP.Host := 'smtp.gmail.com';
      IdSMTP.UserName := 'arquivosfiscaissmc@gmail.com';
      IdSMTP.Password := 'smc@arquivos@1977';
      IdSMTP.Port := 465;
      IdSMTP.IOHandler := idSSLSocket;
      IdSMTP.UseTLS := utUseImplicitTLS;
      IdSMTP.AuthType := satDefault;
      result := true;
      continuar_arquivos := true;
    except
      on e: exception do
      begin
        WnErro('Configuração de Email', e.Message + slinebreak + 'Erro ao configurar Servidor SMPT !', taleftjustify, 10);
        Frm_Carregando_Dados.Close;
        enviar_email_suporte_erro(e.Message + slinebreak + 'Erro ao configurar Servidor SMPT !');
        result := false;
        continuar_arquivos := false;
      end;
    end;
  end;

  function ConfigurarCorpoMensagem: boolean;
    function cpfcnpj(value: string): string;
    begin
      if length(value) = 14 then
        result := copy(value, 1, 2) + '.' + copy(value, 3, 3) + '.' + copy(value, 6, 3) + '/' + copy(value, 9, 4) + '-' + copy(value, 13, 2)
      else
        result := copy(value, 1, 3) + '.' + copy(value, 4, 3) + '.' + copy(value, 7, 3) + ' - ' + copy(value, 10, 2);
    end;

  var
    eRazaoSocial, eNomeFantasia, eCNPJ, cRazaoSocial, dPeriodo, qtdeEmitidas: string;
  begin
    try
      consultardados('SELECT RAZAO_SOCIAL,NOME_FANTASIA,CNPJ,ORGANIZACAO_CONTABIL_FANTASIA FROM EMPRESA');
      eRazaoSocial := qry_temp.FieldByName('RAZAO_SOCIAL').AsString;
      eNomeFantasia := qry_temp.FieldByName('NOME_FANTASIA').AsString;
      eCNPJ := qry_temp.FieldByName('CNPJ').AsString;
      eCNPJ := cpfcnpj(eCNPJ);
      cRazaoSocial := qry_temp.FieldByName('ORGANIZACAO_CONTABIL_FANTASIA').AsString;;
      dPeriodo := Calcdata('mm/yyyy');
      qtdeEmitidas := inttostr(StrToInt(qtdAutorizadas) + StrToInt(qtdInutilizadas) + StrToInt(qtdCanceladas));
      idCorpoMensagem := TIdtext.Create(idMensagem.MessageParts);
      idCorpoMensagem.Body.Add('<html>');
      idCorpoMensagem.Body.Add('<head>');
      idCorpoMensagem.Body.Add('<meta http-equiv="Content-Type" content="text/html" charset="utf-8">');
      idCorpoMensagem.Body.Add('</head>');
      idCorpoMensagem.Body.Add('<body>');
      idCorpoMensagem.Body.Add('<div style="background-color:#d4d7dd;font-family:Arial;">');
      idCorpoMensagem.Body.Add('<div style="background-color:#ffffff;position:center;width: 600px;align-self:center;margin:0 auto;">');
      idCorpoMensagem.Body.Add('<div style="border-bottom-color: #fcfcfc;">');
      idCorpoMensagem.Body.Add('<div style=" display: flex;justify-content: center;align-items: center;	">');
      idCorpoMensagem.Body.Add('<img src="http://www.smcsistemas.com.br/utils/arquivos_fiscais_header.png" width="600" height="120" style="border:0 ">');
      idCorpoMensagem.Body.Add('</div>');
      idCorpoMensagem.Body.Add('<div style="background-color:#263559;text-align: center;font-size: 25px; font-weight: bold;color:#ffffff">');
      idCorpoMensagem.Body.Add('<label>');
      idCorpoMensagem.Body.Add('Arquivos Fiscais - Ref. ' + dPeriodo);
      idCorpoMensagem.Body.Add('</label>');
      idCorpoMensagem.Body.Add('<br/>');
      idCorpoMensagem.Body.Add('<label>');
      idCorpoMensagem.Body.Add(eRazaoSocial);
      idCorpoMensagem.Body.Add('</label>');
      idCorpoMensagem.Body.Add('<br/>');
      idCorpoMensagem.Body.Add('<label>');
      idCorpoMensagem.Body.Add(eNomeFantasia);
      idCorpoMensagem.Body.Add('</label>');
      idCorpoMensagem.Body.Add('</div>');
      idCorpoMensagem.Body.Add('<div style="display: solid">');
      idCorpoMensagem.Body.Add('<div style="margin-left: 8px;margin-right: 8px;margin-top: 8px;margin-bottom: 8px;">');
      idCorpoMensagem.Body.Add('<div style="background-color:#eff1f4;">');
      idCorpoMensagem.Body.Add('<div style="color:#161d28;margin: 0;text-align: left;font-size:16px">');
      idCorpoMensagem.Body.Add('<p style=" margin:0 ">');
      idCorpoMensagem.Body.Add('Prezado ' + cRazaoSocial + ', segue anexo contendo os arquivos fiscais e seus relatórios, emitidos pelo cliente <b>' +
        eRazaoSocial + ' - ' + eCNPJ);
      idCorpoMensagem.Body.Add('</b>, referentes ao mês <b>' + copy(dPeriodo, 0, 2) + '</b> do ano de <b>' + copy(dPeriodo, 4, 4) + '</b>');
      idCorpoMensagem.Body.Add('</p>');
      idCorpoMensagem.Body.Add('<div style="margin-top:8">');
      idCorpoMensagem.Body.Add('<p style="margin:0">');
      idCorpoMensagem.Body.Add
        ('Em caso de dúvidas sobre as informações fornecidas, por gentileza, entre em contato através do nosso telefone 69 3229-6425 ou nos emails smc.pvh@gmail.com e suporteunisystem.ro@gmail.com.');
      idCorpoMensagem.Body.Add('</p>');
      idCorpoMensagem.Body.Add('</div>');
      idCorpoMensagem.Body.Add('</div>');
      idCorpoMensagem.Body.Add('</div>');
      idCorpoMensagem.Body.Add('</div>');
      idCorpoMensagem.Body.Add('<hr style=" height: 0; border-top: 1px solid rgba(0, 0, 0, 0.1 border-bottom: 1px solid rgba(255, 255, 255, 0.3" />');
      idCorpoMensagem.Body.Add
        ('<div style="display:inline-block;background-color:#effaff;font-family:Arial;margin-left: 8px;margin-right: 8px;margin-top:0px;margin-bottom: 8px;align-content: center; ">');
      idCorpoMensagem.Body.Add('<div style="color:#263559; ">');
      idCorpoMensagem.Body.Add('<p style="font-weight: bold;margin: 0;text-align: center;font-size: 22px; ">');
      idCorpoMensagem.Body.Add('Notas Fiscais Emitidas');
      idCorpoMensagem.Body.Add('</p>');
      idCorpoMensagem.Body.Add('<p style="margin: 0;text-align: center;font-size: 100px;font-weight: bold; ">');
      idCorpoMensagem.Body.Add(qtdeEmitidas);
      idCorpoMensagem.Body.Add('</p>');
      idCorpoMensagem.Body.Add('<p style="margin: 0;text-align: center;font-size: 25px;font-weight: bold; ">');
      idCorpoMensagem.Body.Add('NFC-e Modelo 65');
      idCorpoMensagem.Body.Add('</p>');
      idCorpoMensagem.Body.Add('</div>');
      idCorpoMensagem.Body.Add
        ('<hr style="border: 0;height: 1px;background-image: linear-gradient(to right, rgba(0, 0, 0, 0), rgba(0, 0, 0, 0.3), rgba(0, 0, 0, 0)" />');
      idCorpoMensagem.Body.Add('<div style="display:inline-flex;justify-content: center;align-items: center;font-weight: bold;text-align: center ">');
      idCorpoMensagem.Body.Add('<div style="color:#1ca800; ">');
      idCorpoMensagem.Body.Add('<div style="display:inline-flex ">');
      idCorpoMensagem.Body.Add('<label style="font-size: 50px; ">');
      idCorpoMensagem.Body.Add(qtdAutorizadas);
      idCorpoMensagem.Body.Add('</label>');
      idCorpoMensagem.Body.Add('<img src="http://www.smcsistemas.com.br/utils/nfce_autorizada.png " width="70 " height="70 ">');
      idCorpoMensagem.Body.Add('</div>');
      idCorpoMensagem.Body.Add('<label style="font-size: 22px ">');
      idCorpoMensagem.Body.Add('Autorizadas');
      idCorpoMensagem.Body.Add('</label>');
      idCorpoMensagem.Body.Add('</div>');
      idCorpoMensagem.Body.Add('<div style="color:#a51000; ">');
      idCorpoMensagem.Body.Add('<div style="display:inline-flex ">');
      idCorpoMensagem.Body.Add('<label style="font-size: 50px; ">');
      idCorpoMensagem.Body.Add(qtdCanceladas);
      idCorpoMensagem.Body.Add('</label>');
      idCorpoMensagem.Body.Add('<img src="http://www.smcsistemas.com.br/utils/nfce_cancelada.png " width="70 " height="70 ">');
      idCorpoMensagem.Body.Add('</div>');
      idCorpoMensagem.Body.Add('<label style="font-size: 22px ">');
      idCorpoMensagem.Body.Add('Canceladas');
      idCorpoMensagem.Body.Add('</label>');
      idCorpoMensagem.Body.Add('</div>');
      idCorpoMensagem.Body.Add('<div style="color:#bab300; ">');
      idCorpoMensagem.Body.Add('<div style="display:inline-flex ">');
      idCorpoMensagem.Body.Add('<label style="font-size: 50px; ">');
      idCorpoMensagem.Body.Add(qtdInutilizadas);
      idCorpoMensagem.Body.Add('</label>');
      idCorpoMensagem.Body.Add('<img src="http://www.smcsistemas.com.br/utils/nfce_inutilizada.png " width="70 " height="70 ">');
      idCorpoMensagem.Body.Add('</div>');
      idCorpoMensagem.Body.Add('<label style="font-size: 22px ">');
      idCorpoMensagem.Body.Add('Inutilizadas');
      idCorpoMensagem.Body.Add('</label>');
      idCorpoMensagem.Body.Add('</div>');
      idCorpoMensagem.Body.Add('</div>');
      idCorpoMensagem.Body.Add('</div>');
      idCorpoMensagem.Body.Add
        ('<div style="background-color:#effaff;font-family:Arial;margin-left: 8px;margin-right: 8px;margin-top:0px;margin-bottom: 8px;align-content: center; ">');
      idCorpoMensagem.Body.Add('<div style="color:#263559; ">');
      idCorpoMensagem.Body.Add('<p style="font-weight: bold;margin: 0;text-align: center;font-size: 22px; ">');
      idCorpoMensagem.Body.Add('Notas Fiscas Importadas');
      idCorpoMensagem.Body.Add('</p>');
      idCorpoMensagem.Body.Add('<p style="margin: auto;text-align: center;font-size: 80px;font-weight: bold;   ">');
      idCorpoMensagem.Body.Add(qtdImportadas);
      idCorpoMensagem.Body.Add('</p>');
      idCorpoMensagem.Body.Add('<p style="margin: 0;text-align: center;font-size: 25px;font-weight: bold; ">');
      idCorpoMensagem.Body.Add('NF-e de Entrada ');
      idCorpoMensagem.Body.Add('</p>');
      idCorpoMensagem.Body.Add('</div>');
      idCorpoMensagem.Body.Add('</div>');
      idCorpoMensagem.Body.Add('<hr style=" height: 0; border-top: 1px solid rgba(0, 0, 0, 0.1 border-bottom: 1px solid rgba(255, 255, 255, 0.3" />');
      idCorpoMensagem.Body.Add('</div>');
      idCorpoMensagem.Body.Add('</div>');
      idCorpoMensagem.Body.Add('<div style="border-bottom-color: #f7f7f7;border-bottom-style:outset;border-bottom-width: 1px ">');
      idCorpoMensagem.Body.Add('<div style="margin-left: 8px;margin-right: 8px;margin-top: 12px;margin-bottom: 12px; ">');
      idCorpoMensagem.Body.Add('<div style="background-color:#eff1f4; ">');
      idCorpoMensagem.Body.Add('<div style="font-size: 16px;color:#161d28; ">');
      idCorpoMensagem.Body.Add('<p style="margin:0">');
      idCorpoMensagem.Body.Add('Atenciosamente,');
      idCorpoMensagem.Body.Add('</p>');
      idCorpoMensagem.Body.Add('<p style="margin:0">');
      idCorpoMensagem.Body.Add('Equipe de Suporte Técnico SMC.');
      idCorpoMensagem.Body.Add('</p>');
      idCorpoMensagem.Body.Add('</div>');
      idCorpoMensagem.Body.Add('</div>');
      idCorpoMensagem.Body.Add('</div>');
      idCorpoMensagem.Body.Add('</div>');
      idCorpoMensagem.Body.Add('</div>');
      idCorpoMensagem.Body.Add('<div style="position:center;width: 680px;align-self:center;margin:0 auto; ">');
      idCorpoMensagem.Body.Add('<div style="color:#58595b;font-size: 12px;text-align: center; ">');
      idCorpoMensagem.Body.Add('<label> ');
      idCorpoMensagem.Body.Add('SMC de Souza ME - 20.316.807/0001-45');
      idCorpoMensagem.Body.Add('</label>');
      idCorpoMensagem.Body.Add('<br/>');
      idCorpoMensagem.Body.Add('<label>');
      idCorpoMensagem.Body.Add('João Pedro da Rocha, Nº 580, Nova Porto Velho, Sala A');
      idCorpoMensagem.Body.Add('</label>');
      idCorpoMensagem.Body.Add('<br/>');
      idCorpoMensagem.Body.Add('<label>');
      idCorpoMensagem.Body.Add('Porto Velho - RO');
      idCorpoMensagem.Body.Add('</label>');
      idCorpoMensagem.Body.Add('<br/>');
      idCorpoMensagem.Body.Add('<label>');
      idCorpoMensagem.Body.Add('Telefones: (69) 3222-0497 | (69) 3229-6425 | (69) 99250-3225');
      idCorpoMensagem.Body.Add('</label>');
      idCorpoMensagem.Body.Add('<br/>');
      idCorpoMensagem.Body.Add('<label>');
      idCorpoMensagem.Body.Add('E-mails: smc.pvh@gmail.com - suporteunisystem.ro@gmail.com');
      idCorpoMensagem.Body.Add('</label>');
      idCorpoMensagem.Body.Add('<br/>');
      idCorpoMensagem.Body.Add('<label>');
      idCorpoMensagem.Body.Add('<a style="color:#58595b " target="_blank " href=http://www.smcsistemas.com.br>');
      idCorpoMensagem.Body.Add('www.smcsistemas.com.br');
      idCorpoMensagem.Body.Add('</a>');
      idCorpoMensagem.Body.Add('</label>');
      idCorpoMensagem.Body.Add('<br/>');
      idCorpoMensagem.Body.Add('</div>');
      idCorpoMensagem.Body.Add('</div>');
      idCorpoMensagem.Body.Add('<div>');
      idCorpoMensagem.Body.Add('</body>');
      idCorpoMensagem.Body.Add('</html>');
      idCorpoMensagem.ContentType := 'text/html; charset=iso-8859-1'; { }
      result := true;
      continuar_arquivos := true;
    except
      on e: exception do
      begin
        WnErro('Arquivos Fiscais', e.Message + slinebreak + 'Erro ao configurar HTML !');
        Frm_Carregando_Dados.Close;
        enviar_email_suporte_erro(e.Message + slinebreak + 'Erro ao configurar HTML !');
        result := false;
        continuar_arquivos := false;
      end;
    end;
  end;

  function ConfigurarMensagem: boolean;
  begin
    try
      consultardados
        ('SELECT RAZAO_SOCIAL as NOME, ARQUIVOS_FISCAIS_EMAIL_01 as AF1, ARQUIVOS_FISCAIS_EMAIL_02 as AF2, ORGANIZACAO_CONTABIL_EMAIL_01 as CONTADOR FROM EMPRESA');
      idMensagem := Tidmessage.Create(Application);
      idMensagem.Clear;
      idMensagem.From.Address := 'arquivosfiscaissmc@gmail.com';
      // Email da empresa
      idMensagem.ReplyTo.EMailAddresses := 'arquivosfiscaissmc@gmail.com';
      // Email para reposta
      idMensagem.From.Name := RemoverEspacoEmBranco(qry_temp.FieldByName('NOME').AsString); // Nome fantasia da empresa
      idMensagem.Recipients.Add.Text := RemoverEspacoEmBranco(qry_temp.FieldByName('CONTADOR').AsString);
      // Email Contador
      idMensagem.CCList.EMailAddresses := 'arquivosfiscaissmc@gmail.com';
      // Cópia em loop
      if qry_temp.FieldByName('AF1').AsString <> emptystr then
        idMensagem.CCList.EMailAddresses := RemoverEspacoEmBranco(qry_temp.FieldByName('AF1').AsString);
      // Cópia email 1
      if qry_temp.FieldByName('AF2').AsString <> emptystr then
        idMensagem.CCList.EMailAddresses := RemoverEspacoEmBranco(qry_temp.FieldByName('AF2').AsString);
      // Cópia email 2
      if (qry_temp.FieldByName('AF1').AsString <> emptystr) and (qry_temp.FieldByName('AF2').AsString <> emptystr) then
        idMensagem.CCList.EMailAddresses := RemoverEspacoEmBranco(qry_temp.FieldByName('AF1').AsString) + ';' +
          RemoverEspacoEmBranco(qry_temp.FieldByName('AF2').AsString);
      destinatarios := idMensagem.CCList.EMailAddresses;
      idMensagem.BCCList.EMailAddresses := 'suporteunisystem.ro@gmail.com;smc.prog@gmail.com;arquivosfiscaissmc@gmail.com';
      // Email ultra super secreto para deposito
      idMensagem.Subject := '[ARQUIVOS FISCAIS] ' + qry_temp.FieldByName('NOME').AsString + ' - ' + Calcdata('mm/yyyy');
      idMensagem.Encoding := meMIME;
      result := true;
      continuar_arquivos := true;
    except
      on e: exception do
      begin
        WnErro('Configuração de Email', e.Message + slinebreak + 'Erro ao configurar Mensagem do email !', taleftjustify, 10);
        Frm_Carregando_Dados.Close;
        enviar_email_suporte_erro(e.Message + slinebreak + 'Erro ao configurar Mensagem do email !');
        result := false;
        continuar_arquivos := false;
      end
    end;
  end;

  function ConfigurarAnexos: boolean;

  const
    Autorizadas = 'Autorizadas\';
    Canceladas = 'Canceladas\';
    Inutilizadas = 'Inutilizadas\';
    Pendentes = 'Pendentes\';
    Entrada = 'Entrada\';
    fnArquivosFiscais = 'ARQUIVOS_FISCAIS_';

  var
    auxArrACI: TArray<String>;
    auxQtdNotas, auxLocFile: string;
    QRY_FILES: TFDQuery;
    function SepararArquivosFiscais(From, DirTo, FileNFCe: string): boolean;
    begin
      if From <> emptystr then
        if FileExists(From) then
        begin
          if DirectoryExists(DirTo) then
            CopyFile(PWideChar(From), PWideChar(DirTo + FileNFCe), true)
          else
          begin
            forceDirectories(stringtoolestr(DirTo));
            CopyFile(PWideChar(From), PWideChar(DirTo + FileNFCe), true);
          end;
        end;
    end;

    function SearchFiles(Dir, Partner: string): TArray<string>;

    var
      qtderec: Integer;
      searchResult: TSearchRec;
      Files: TArray<string>;
    begin
      qtderec := 1;
      if findfirst(Dir + Partner, faAnyFile, searchResult) = 0 then
      begin
        SetLength(Files, qtderec);
        repeat
          Files[qtderec - 1] := searchResult.Name;
          Inc(qtderec);
          SetLength(Files, qtderec);
        until FindNext(searchResult) <> 0;
      end;
      result := Files;
    end;

    function ffAutorizadas: string;
      procedure EnviarContingencia;
      var
        qry_temp, qry: TFDQuery;
        date_replace: TDateTime;
      begin
        try
          qry_temp := SimpleQuery('SELECT * FROM NFCE WHERE ((STATUS_NFCE is null) or (status_nfce = "PENDENTE")) AND (data_emissao between "' +
            Calcdata('yyyy-mm-01') + '" AND "' + Calcdata('yyyy-mm-31') + '" ) AND (TIPO_EMISSAO = "CONTINGENCIA")');
          if qry_temp <> nil then
          begin
            with qry_temp do
            begin
              first;
              frm_confnfce := tfrm_confnfce.Create(nil);
              frm_confnfce.configurarcomponente;
              while not Eof do
              begin
                first;
                frm_confnfce := tfrm_confnfce.Create(nil);
                while not Eof do
                begin
                  if FieldByName('STATUS_NFCE').AsString <> '' then
                    frm_confnfce.ConsultarNF(FieldByName('CHAVE').AsString, false, FieldByName('CAMINHO_XML').AsString, FieldByName('STATUS_NFCE').AsString,
                      FieldByName('DATA_EMISSAO').asDateTime);
                  Next;
                end;
                first;
                with frm_confnfce do
                begin
                  SQL_VENDA.Close;
                  SQL_VENDA.paramByName('pcodigo').value := FieldByName('CODIGO_VENDA').value;
                  SQL_VENDA.open;
                  SQL_VENDA_PAGAMENTO.Close;
                  SQL_VENDA.paramByName('pcodigo').value := FieldByName('CODIGO_VENDA').value;
                  SQL_VENDA_PAGAMENTO.open;
                  SQL_VENDA_ITEM.Close;
                  SQL_VENDA.paramByName('pcodigo').value := FieldByName('CODIGO_VENDA').value;
                  SQL_VENDA_ITEM.open;
                  m_operador := emptystr;
                  m_caixa := emptystr;
                  ValorPago := emptystr;
                  Troco := emptystr;
                  TotalVenda := emptystr;
                  m_cliente_nome := emptystr;
                  m_cliente_cpfcnpj := emptystr;
                  m_cliente_ie := emptystr;
                  m_cliente_telefone := emptystr;
                  m_codigo_venda := FieldByName('CODIGO_VENDA').AsString;
                  qry := SimpleQuery('SELECT OPERADOR,CAIXA, NOME_CLIENTE, CPF_CLIENTE, IE_CLIENTE, TELEFONE_CLIENTE FROM VENDA WHERE CODIGO_VENDA = "' +
                    m_codigo_venda + '"');

                  m_operador := qry.Fields[0].AsString;
                  m_caixa := qry.Fields[1].AsString;
                  m_cliente_nome := qry.Fields[2].AsString;
                  m_cliente_cpfcnpj := qry.Fields[3].AsString;
                  m_cliente_ie := qry.Fields[4].AsString;
                  m_cliente_telefone := qry.Fields[5].AsString;

                  ValorPago := FieldByName('VALOR_PAGO').AsString;
                  Troco := FieldByName('TROCO').AsString;
                  TotalVenda := FieldByName('VALOR_NFCE').AsString;
                  DeletarXMLPendente(FieldByName('CAMINHO_XML').value);
                  date_replace := FieldByName('DATA_EMISSAO').asDateTime;

                  replacetime(date_replace, FieldByName('HORA_EMISSAO').asDateTime);
                  FinalizarNFCE(false, FieldByName('CODIGO').value, false, date_replace, FieldByName('TIPO_EMISSAO').AsString, true, true, false);
                end;
                Next;
              end;
              frm_confnfce.Close;
              frm_confnfce.Free;
            end;
          end;
          continuar_arquivos := true;
        except
          on e: exception do
          begin
            WnErro('Arquivos Fiscais', e.Message + slinebreak + 'Erro ao enviar notas em contingencia');
            continuar_arquivos := false;
          end;

        end;

      end;

    var
      I: Integer;
    begin
      try
        EnviarContingencia;
        if continuar_arquivos then
        begin
          I := 0;
          auxQtdNotas := '';
          QRY_FILES := SimpleQuery('SELECT CODIGO, CHAVE, CAMINHO_XML FROM NFCE WHERE DATA_EMISSAO BETWEEN "' + Calcdata('yyyy-mm-01') + '" AND "' +
            Calcdata('yyyy-mm-31') + '" AND STATUS_NFCE = "AUTORIZADA"');
          if QRY_FILES <> nil then
          begin
            with QRY_FILES do
            begin
              FetchAll;
              first;
              while not Eof do
              begin
                Inc(I);
                auxQtdNotas := inttostr(I);
                SepararArquivosFiscais(pathdate + Autorizadas + QRY_FILES.FieldByName('CHAVE').AsString + '-nfce.xml',
                  pathdate + NFCe65 + StringReplace(Autorizadas, '\', '', [RFREPLACEALL]) + Canceladas, QRY_FILES.FieldByName('CHAVE').AsString + '-nfce.xml');
                Next;
              end;
            end;
          end;
          result := auxQtdNotas;
          continuar_arquivos := true;
        end;
      except
        on e: exception do
        begin
          WnErro('Arquivos Fiscais', e.Message + slinebreak + 'Erro ao compactar notas autorizadas');
          enviar_email_suporte_erro(e.Message + slinebreak + 'Erro ao compactar notas autorizadas');
          continuar_arquivos := false;
        end;
      end;
    end;

    function ffCanceladas: string;

    var
      I: Integer;

    begin
      try
        I := 0;
        auxQtdNotas := '';
        QRY_FILES := SimpleQuery('SELECT CODIGO, CHAVE, CAMINHO_XML FROM NFCE WHERE DATA_EMISSAO BETWEEN "' + Calcdata('yyyy-mm-01') + '" AND "' +
          Calcdata('yyyy-mm-31') + '" AND (STATUS_NFCE = "CANCELADA")');
        if QRY_FILES <> nil then
        begin
          with QRY_FILES do
          begin
            FetchAll;
            first;
            while not Eof do
            begin
              Inc(I);
              auxQtdNotas := inttostr(I);
              SepararArquivosFiscais(pathdate + Canceladas + QRY_FILES.FieldByName('CHAVE').AsString + '-cancnfce.xml',
                pathdate + NFCe65 + StringReplace(Autorizadas, '\', '', [RFREPLACEALL]) + Canceladas,
                QRY_FILES.FieldByName('CHAVE').AsString + '-cancnfce.xml');
              SepararArquivosFiscais(pathdate + Canceladas + QRY_FILES.FieldByName('CHAVE').AsString + '-caneve.xml',
                pathdate + NFCe65 + StringReplace(Autorizadas, '\', '', [RFREPLACEALL]) + Canceladas, QRY_FILES.FieldByName('CHAVE').AsString + '-caneve.xml');
              Next;
            end;
          end;
        end;
        result := auxQtdNotas;
        continuar_arquivos := true;
      except
        on e: exception do
        begin
          WnErro('Arquivos Fiscais', e.Message + slinebreak + 'Erro ao compactar notas canceladas');
          enviar_email_suporte_erro(e.Message + slinebreak + 'Erro ao compactar notas canceladas');
          continuar_arquivos := false;
        end;
      end;

    end;

    function ffInutilizadas: string;
      procedure InutilizarPendentes;
      var
        qry_temp: TFDQuery;
        str_query: string;
      begin
        try
          if continuar_arquivos then
          begin
            str_query := 'SELECT * FROM NFCE WHERE ((STATUS_NFCE IS NULL) OR (STATUS_NFCE = "PENDENTE")) AND (DATA_EMISSAO BETWEEN "' + Calcdata('yyyy-mm-01') +
              '" AND "' + Calcdata('yyyy-mm-31') + '") AND ((TIPO_EMISSAO <> "CONTINGENCIA") OR (TIPO_EMISSAO IS NULL))';
            qry_temp := SimpleQuery(str_query);
            if qry_temp <> nil then
            begin
              with qry_temp do
              begin
                first;
                frm_confnfce := tfrm_confnfce.Create(nil);
                while not Eof do
                begin
                  if FieldByName('STATUS_NFCE').AsString <> '' then
                    frm_confnfce.ConsultarNF(FieldByName('CHAVE').AsString, false, FieldByName('CAMINHO_XML').AsString, FieldByName('STATUS_NFCE').AsString,
                      FieldByName('DATA_EMISSAO').asDateTime);
                  Next;
                end;
                first;
                while not Eof do
                begin
                  frm_confnfce.InutilizarUnicaNFCE(qry_temp, false, true);
                  Next;
                end;
                frm_confnfce.Close;
                frm_confnfce.Free;
              end;
            end;
            continuar_arquivos := true;
          end;
        except
          on e: exception do
          begin
            WnErro('Arquivos Fiscais', e.Message + slinebreak + 'Erro ao inutilizar notas pendentes');
            enviar_email_suporte_erro(e.Message + slinebreak + 'Erro ao inutilizar notas pendentes');
            continuar_arquivos := false;
          end;
        end;
      end;

    var
      I: Integer;
      caminho_inut: string;
    begin
      try
        InutilizarPendentes;
        if continuar_arquivos then
        begin
          I := 0;
          auxQtdNotas := '';
          QRY_FILES := SimpleQuery('SELECT CODIGO, CHAVE, CAMINHO_XML FROM NFCE WHERE DATA_EMISSAO BETWEEN "' + Calcdata('yyyy-mm-01') + '" AND "' +
            Calcdata('yyyy-mm-31') + '" AND (STATUS_NFCE = "INUTILIZADA")');
          if QRY_FILES <> nil then
          begin
            with QRY_FILES do
            begin
              FetchAll;
              first;

              while not Eof do
              begin
                Inc(I);
                auxQtdNotas := inttostr(I);
                if (QRY_FILES.FieldByName('CAMINHO_XML').AsString = emptystr) and (QRY_FILES.FieldByName('CHAVE').AsString <> emptystr) then
                  caminho_inut := pathdate + Inutilizadas + QRY_FILES.FieldByName('CHAVE').AsString + '-inu.xml'
                else
                  caminho_inut := QRY_FILES.FieldByName('CAMINHO_XML').AsString;
                SepararArquivosFiscais(caminho_inut, pathdate + NFCe65 + Inutilizadas, IfThen(QRY_FILES.FieldByName('CHAVE').AsString = emptystr,
                  QRY_FILES.FieldByName('CODIGO').AsString, QRY_FILES.FieldByName('CHAVE').AsString) + '-inu.xml');
                Next;
              end;

            end;
          end;
          result := auxQtdNotas;
          continuar_arquivos := true;
        end;
      except
        on e: exception do
        begin
          WnErro('Arquivos Fiscais', e.Message + slinebreak + 'Erro ao compactar notas inutilizadas');
          enviar_email_suporte_erro(e.Message + slinebreak + 'Erro ao compactar notas inutilizadas');
          continuar_arquivos := false;
        end;
      end;

    end;

    function ffImportadas: string;
    var
      I: Integer;
    begin
      try
        if continuar_arquivos then
        begin
          I := 0;
          auxQtdNotas := '';
          QRY_FILES := TDB.SimpleQuery('SELECT n.CAMINHO_XML, n.CHAVE FROM IMPORTACAO i JOIN NFE n on n.id = i.id_nfe WHERE i.DATA_FIM BETWEEN "' +
            Calcdata('yyyy-mm-01') + '" AND "' + Calcdata('yyyy-mm-31') + '" AND i.STATUS_IMPORTACAO = "FINALIZADA"');
          if QRY_FILES <> nil then
          begin
            with QRY_FILES do
            begin
              FetchAll;
              first;

              while not Eof do
              begin

                Inc(I);
                auxQtdNotas := inttostr(I);
                SepararArquivosFiscais(QRY_FILES.FieldByName('CAMINHO_XML').AsString, pathNFedate + NFe55 + Entrada,
                  QRY_FILES.FieldByName('CHAVE').AsString + '-nfe.xml');
                Next;

              end;

            end;
          end;
          result := auxQtdNotas;
          continuar_arquivos := true;
        end;
      except
        on e: exception do
        begin
          WnErro('Arquivos Fiscais', e.Message + slinebreak + 'Erro ao compactar notas importadas');
          enviar_email_suporte_erro(e.Message + slinebreak + 'Erro ao compactar notas importadas');
          continuar_arquivos := false;
        end;
      end;
    end;

    function compacfiles: boolean;

    begin
      try

        if DirectoryExists(pathdate, true) then
        begin
          if DirectoryExists(pathdate + Inutilizadas, true) or DirectoryExists(pathdate + Pendentes, true) then
          begin
            qtdInutilizadas := ffInutilizadas;
            if qtdInutilizadas = emptystr then
              qtdInutilizadas := '0';
          end
          else
            qtdInutilizadas := '0';
          if DirectoryExists(pathdate + Autorizadas, true) then
          begin
            qtdAutorizadas := ffAutorizadas;
            if qtdAutorizadas = emptystr then
              qtdAutorizadas := '0';
          end
          else
            qtdAutorizadas := '0';
          if DirectoryExists(pathdate + Canceladas, true) then
          begin
            qtdCanceladas := ffCanceladas;
            if qtdCanceladas = emptystr then
              qtdCanceladas := '0';
          end
          else
            qtdCanceladas := '0';
          if DirectoryExists(tdir.NFe.Entrada, true) then
          begin
            qtdImportadas := ffImportadas;
            if qtdImportadas = emptystr then
              qtdImportadas := '0';
          end;

          consultardados('SELECT RAZAO_SOCIAL FROM EMPRESA');
          xAttFile := ArquivosFiscais + fnArquivosFiscais + RemoverEspacoEmBranco(RemoverCaracteresEspeciais(qry_temp.FieldByName('RAZAO_SOCIAL').AsString, '_')
            ) + '_' + Calcdata('mm_yyyy') + '.zip';

          tfile.cpacdpac(pathdate + TFunctions.replace(NFCe65, '\'), xAttFile, true);
          tfile.cpacdpac(pathNFedate + TFunctions.replace(NFe55, '\'), xAttFile, true);

          result := true;
        end
        else
        begin
          qtdAutorizadas := '0';
          qtdInutilizadas := '0';
          qtdCanceladas := '0';
        end;
        result := true;
        continuar_arquivos := true;
      except
        on e: exception do
        begin
          WnErro('Arquivos Fiscais', e.Message + slinebreak + 'Erro ao compactar notas');
          enviar_email_suporte_erro(e.Message + slinebreak + 'Erro ao compactar notas');
          continuar_arquivos := false;
          result := false;
        end;
      end;
    end;

  var
    path_livro_saida: string;
    path_livro_entrada: string;

  begin
    try
      if compacfiles then
      begin
        path_livro_saida := ArquivosFiscais + '\' + 'LIVRO_SAIDA_' + Calcdata('mm_yyyy') + '.pdf';
        TFrm_Relatorio.Create(nil).livrosaida(path_livro_saida, continuar_arquivos).Close;

        Frm_Relatorio := TFrm_Relatorio.Create(nil);
        path_livro_entrada := Frm_Relatorio.LivroEntrada(TEnv.date.FirstDayOfLastMonth, TEnv.date.LastDayOfLastMonth, treportkind.rkPDF);
        tfile.Move(path_livro_entrada, ArquivosFiscais + '\' + 'LIVRO_ENTRADA_' + Calcdata('mm_yyyy') + '.pdf');
        Frm_Relatorio.Close;
        Frm_Relatorio := nil;

        path_livro_entrada := ArquivosFiscais + '\' + 'LIVRO_ENTRADA_' + Calcdata('mm_yyyy') + '.pdf';

        if continuar_arquivos then
        begin
          if FileExists(path_livro_saida) then
            TidAttachmentFile.Create(idMensagem.MessageParts, path_livro_saida)
          else
          begin
            continuar_arquivos := false;
            result := false;
            enviar_email_suporte_erro('Relatório "Livro de Saída" não foi gerado!' + slinebreak + slinebreak +
              'Verifique se o arquivo "LIVRO_SAIDA_AN_UNICA_LINHA.fr3" existe dentro da pasta relatorios\ no diretório raiz do sistema SMC LIGHT.');
            Frm_Carregando_Dados.Close;
            exit;
          end;
          if FileExists(path_livro_entrada) then
            TidAttachmentFile.Create(idMensagem.MessageParts, path_livro_entrada)
          else
          begin
            continuar_arquivos := false;
            result := false;
            enviar_email_suporte_erro('Relatório "Livro de Entrada" não foi gerado!' + slinebreak + slinebreak +
              'Verifique se o arquivo "LIVRO_ENTRADA.fr3" existe dentro da pasta relatorios\ no diretório raiz do sistema SMC LIGHT.');
            Frm_Carregando_Dados.Close;
            exit;
          end;
          if FileExists(xAttFile) then
            TidAttachmentFile.Create(idMensagem.MessageParts, xAttFile)
          else
          begin
            continuar_arquivos := false;
            result := false;
            enviar_email_suporte_erro('Arquivo compactado contendo as xmls do mês referente não foi gerado!' + slinebreak + slinebreak +
              'Tente instalar o aplicativo 7zip na máquina e reenviar os arquivos novamente.');
            Frm_Carregando_Dados.Close;
            exit;
          end;
          result := true;
        end
      end;
    except
      on e: exception do
      begin
        WnErro('Configuração de Email', e.Message + slinebreak + 'Erro ao configurar Anexos ao email !', taleftjustify, 10);
        enviar_email_suporte_erro(e.Message + slinebreak + 'Erro ao configurar Anexos ao email !');
        Frm_Carregando_Dados.Close;
        continuar_arquivos := false;
        result := false;
      end;
    end;
  end;

  function AutenticarEmail: boolean;
  begin
    try
      if continuar_arquivos then
      begin
        IdSMTP.Connect;
        IdSMTP.Authenticate;
        result := true;
      end;
    except
      on e: exception do
      begin
        WnErro('Configuração de Email', e.Message + slinebreak + 'Erro ao autenticar email !' + slinebreak + 'Verifique as informações fornecidas.',
          taleftjustify, 10);
        Frm_Carregando_Dados.Close;
        continuar_arquivos := false;
        enviar_email_suporte_erro(e.Message + slinebreak + 'Erro ao autenticar email !' + slinebreak + 'Verifique as informações fornecidas.');
        result := false;
      end;
    end;
  end;

  function EnviarEmail: boolean;
  var
    qtde_notas_emitidas: Integer;
    qry: TFDQuery;
    PROCEDURE ENVIAR_MENSAGEM;
    BEGIN
      IdSMTP.send(idMensagem);
      result := true;
    END;

  begin
    try
      IF continuar_arquivos THEN
      BEGIN
        qtde_notas_emitidas := StrToInt(qtdAutorizadas) + StrToInt(qtdInutilizadas) + StrToInt(qtdCanceladas);
        qry := SimpleQuery('SELECT COUNT(*) AS TOT FROM NFCE WHERE DATA_EMISSAO BETWEEN "' + Calcdata('yyyy-mm-01') + '" AND "' + Calcdata('yyyy-mm-31') + '"');
        IF qry <> NIL THEN
        BEGIN
          IF (qry.Fields[0].asInteger <> qtde_notas_emitidas) THEN
          BEGIN
            continuar_arquivos := false;
            result := false;
            enviar_email_suporte_erro('Somatório das notas não confere com a sequência de notas!' + slinebreak + slinebreak + 'Diferença = ' +
              inttostr(qry.Fields[0].asInteger - qtde_notas_emitidas) + ' NFC-e não foram enviadas!');
            Frm_Carregando_Dados.Close;
            exit;
          end
          else
            ENVIAR_MENSAGEM;
        end
        ELSE
          ENVIAR_MENSAGEM;
      END
    except
      on e: exception do
      begin
        WnErro('Configuração de Email', e.Message + slinebreak + 'Erro ao enviar email !', taleftjustify, 10);
        Frm_Carregando_Dados.Close;
        enviar_email_suporte_erro(e.Message + slinebreak + 'Erro ao enviar email !');
        result := false;
      end;
    end;
  end;

begin
  if SimpleQuery('SELECT * FROM ARQUIVOS_FISCAIS WHERE MES_REF = "' + Calcdata('mm/yyyy') + '"') = nil then
  begin
    try
      Frm_Carregando_Dados := tFrm_Carregando_Dados.Create(nil);
      Frm_Carregando_Dados.pb_barra_progresso.Min := 0;
      Frm_Carregando_Dados.pb_barra_progresso.Max := 8;
      Frm_Carregando_Dados.Show;
      Frm_Carregando_Dados.Titulo('Arquivos Fiscais');
      Frm_Carregando_Dados.MudarLabel('Enviando Arquivos Fiscais do Mês ' + Calcdata('mm') + ' de ' + Calcdata('yyyy') + ' ...');
      counter := 0;
      Inc(counter);
      continuar_arquivos := true;
      Frm_Carregando_Dados.PreencherBarra(counter);
      if (not ConfigurarSSL) and (not continuar_arquivos) then
        exit;
      Inc(counter);
      Frm_Carregando_Dados.PreencherBarra(counter);
      if (not ConfigurarEmail) and (not continuar_arquivos) then
        exit;
      Inc(counter);
      Frm_Carregando_Dados.PreencherBarra(counter);
      if (not ConfigurarMensagem) and (not continuar_arquivos) then
        exit;
      Inc(counter);
      Frm_Carregando_Dados.PreencherBarra(counter);
      if (not ConfigurarAnexos) and (not continuar_arquivos) then
        exit;
      Inc(counter);
      Frm_Carregando_Dados.PreencherBarra(counter);
      if (not ConfigurarCorpoMensagem) and (not continuar_arquivos) then
        exit;
      Inc(counter);
      Frm_Carregando_Dados.PreencherBarra(counter);
      if (not AutenticarEmail) and (not continuar_arquivos) then
        exit;
      Inc(counter);
      Frm_Carregando_Dados.PreencherBarra(counter);
      if (not EnviarEmail) and (not continuar_arquivos) then
        exit;
      Inc(counter);
      Frm_Carregando_Dados.PreencherBarra(counter);
      liberarinstancias;
      Frm_Carregando_Dados.Close;
      ExecQuery('INSERT INTO ARQUIVOS_FISCAIS VALUES (DEFAULT, "' + TEnv.TUser.Name + '","' + Calcdata('mm/yyyy') + '","' + remetente + '","' +
        destinatarios + '")');
    except
      on e: exception do
      begin
        WnErro('Configuração de Email', e.Message + slinebreak + 'Erro ao Enviar email !', taleftjustify, 10);
        enviar_email_suporte_erro(e.Message + slinebreak + 'Erro ao Enviar email !');
        Frm_Carregando_Dados.Close;
      end;
    end;
  end;
end;

function formataData(s: TDateTime): string;
begin

  result := (formatdatetime('dd/mm/yyyy', (s)));

end;

function LoadContent(FromFile: string): string;
var
  str_cont: tstringList;
  Content: string;
begin
  str_cont := tstringList.Create;
  str_cont.LoadFromFile(FromFile);
  Content := str_cont.Text;
  str_cont.destroy;
  result := Content;
end;

function CalcularDescontos(Cod_Venda: string; cod_item: string; var desconto_base: extended; var reatear_diff_desconto: boolean): extended;
var
  Desconto, rateio_descontos, item_rateio_desc, desc_format, valor_produto, valor_venda, valor_desc: extended;
  qtde_itens: Integer;
  SQL_VENDA_ITEM, SQL_VENDA_ITENS_RAT, SQL_VENDA: TFDQuery;
begin
  Desconto := 0.00;
  result := 0;
  rateio_descontos := 0;
  SQL_VENDA_ITENS_RAT := SimpleQuery('SELECT PRECO, QUANTIDADE, ACRESCIMO, DESCONTO FROM VENDA_ITEM WHERE CODIGO_VENDA = "' + Cod_Venda + '"');
  SQL_VENDA_ITEM := SimpleQuery('SELECT PRECO, QUANTIDADE, DESCONTO, ACRESCIMO FROM VENDA_ITEM WHERE CODIGO_VENDA = "' + Cod_Venda + '" AND CODIGO_ITEM_VENDA="'
    + cod_item + '"');
  SQL_VENDA := SimpleQuery('SELECT VALOR_VENDA FROM VENDA WHERE CODIGO_VENDA = "' + Cod_Venda + '"');
  qtde_itens := SimpleQuery('SELECT count(CODIGO_ITEM_VENDA) from venda_item where codigo_venda = "' + Cod_Venda + '"').Fields[0].asInteger;
  if SQL_VENDA_ITEM <> nil then
  begin
    if desconto_base <> 0 then
    begin
      valor_produto := FormatarTag((SQL_VENDA_ITEM.FieldByName('PRECO').asExtended * SQL_VENDA_ITEM.FieldByName('QUANTIDADE').asExtended) -
        SQL_VENDA_ITEM.FieldByName('DESCONTO').asExtended + SQL_VENDA_ITEM.FieldByName('ACRESCIMO').asExtended, vardouble);
      valor_venda := FormatarTag(SQL_VENDA.Fields[0].asExtended, vardouble);
      Desconto := valor_produto - ((valor_venda - desconto_base) * valor_produto / valor_venda);
      desc_format := FormatarTag(Desconto, vardouble);
      Desconto := desc_format;
      if reatear_diff_desconto then
      begin
        if SQL_VENDA_ITENS_RAT <> nil then
          with SQL_VENDA_ITENS_RAT do
          begin
            FetchAll;
            first;
            while not Eof do
            begin
              valor_produto := strtofloat(FORMATFLOAT('0.00', (Fields[0].asExtended * Fields[1].asExtended) + Fields[2].asExtended - Fields[3].asExtended));
              valor_produto := strtofloat(StringReplace(formatarqtde(valor_produto), '.', ',', [RFREPLACEALL]));
              item_rateio_desc := (valor_produto - (((valor_venda - desconto_base) * valor_produto) / valor_venda));
              item_rateio_desc := FormatarTag(item_rateio_desc, vardouble);
              rateio_descontos := rateio_descontos + item_rateio_desc;
              Next;
            end;
          end;
        if not comparevalue(rateio_descontos, desconto_base) = 0 then
        begin
          if comparevalue(rateio_descontos, desconto_base) = -1 then
          begin
            Desconto := Desconto + (desconto_base - rateio_descontos);
            rateio_descontos := Desconto + (rateio_descontos - desc_format);
          end;
          if comparevalue(rateio_descontos, desconto_base) = 1 then
            Desconto := Desconto - (rateio_descontos - desconto_base);
          reatear_diff_desconto := false;
        end;
      end;
    end;
  end;
  result := Desconto;
end;

function CalcularAcrescimos(Cod_Venda: string; cod_item: string; var acrescimo_base: extended; var reatear_diff_acrescimo: boolean): extended;
var
  Acrescimo, rateio_acrescimos, item_rateio_acrs, acrs_format, valor_produto, valor_venda: extended;
  qtde_itens: Integer;
  SQL_VENDA_ITEM, SQL_VENDA_ITENS_RAT, SQL_VENDA: TFDQuery;
begin
  Acrescimo := 0.00;
  result := 0;
  rateio_acrescimos := 0;
  SQL_VENDA_ITENS_RAT := SimpleQuery('SELECT PRECO, QUANTIDADE, ACRESCIMO, DESCONTO FROM VENDA_ITEM WHERE CODIGO_VENDA = "' + Cod_Venda + '"');
  SQL_VENDA_ITEM := SimpleQuery('SELECT PRECO, QUANTIDADE, DESCONTO, ACRESCIMO FROM VENDA_ITEM WHERE CODIGO_VENDA = "' + Cod_Venda + '" AND CODIGO_ITEM_VENDA="'
    + cod_item + '"');
  SQL_VENDA := SimpleQuery('SELECT VALOR_VENDA FROM VENDA WHERE CODIGO_VENDA = "' + Cod_Venda + '"');
  qtde_itens := SimpleQuery('SELECT count(CODIGO_ITEM_VENDA) from venda_item where codigo_venda = "' + Cod_Venda + '"').Fields[0].asInteger;
  if SQL_VENDA_ITEM <> nil then
  begin
    if acrescimo_base <> 0 then
    begin
      valor_produto := FormatarTag((SQL_VENDA_ITEM.FieldByName('PRECO').asExtended * SQL_VENDA_ITEM.FieldByName('QUANTIDADE').asExtended) -
        SQL_VENDA_ITEM.FieldByName('DESCONTO').asExtended + SQL_VENDA_ITEM.FieldByName('ACRESCIMO').asExtended, vardouble);
      valor_venda := FormatarTag(SQL_VENDA.Fields[0].asExtended, vardouble);
      Acrescimo := ((valor_venda + acrescimo_base) * valor_produto / valor_venda) - valor_produto;
      acrs_format := FormatarTag(Acrescimo, vardouble);
      Acrescimo := acrs_format;
      if reatear_diff_acrescimo then
      begin
        if SQL_VENDA_ITENS_RAT <> nil then
          with SQL_VENDA_ITENS_RAT do
          begin
            FetchAll;
            first;
            while not Eof do
            begin
              valor_produto := strtofloat(FORMATFLOAT('0.00', (Fields[0].asExtended * Fields[1].asExtended) + Fields[2].asExtended - Fields[3].asExtended));
              valor_produto := strtofloat(StringReplace(formatarqtde(valor_produto), '.', ',', [RFREPLACEALL]));
              item_rateio_acrs := ((((valor_venda + acrescimo_base) * valor_produto) / valor_venda) - valor_produto);
              item_rateio_acrs := FormatarTag(item_rateio_acrs, vardouble);
              rateio_acrescimos := rateio_acrescimos + item_rateio_acrs;
              Next;
            end;
          end;
        if not comparevalue(rateio_acrescimos, acrescimo_base) = 0 then
        begin
          if comparevalue(rateio_acrescimos, acrescimo_base) = -1 then
          begin
            Acrescimo := Acrescimo + (acrescimo_base - rateio_acrescimos);
            rateio_acrescimos := Acrescimo + (rateio_acrescimos - acrs_format);
          end;
          if comparevalue(rateio_acrescimos, acrescimo_base) = 1 then
            Acrescimo := Acrescimo - (rateio_acrescimos - acrescimo_base);
          reatear_diff_acrescimo := false;
        end;
      end;
    end;
  end;
  result := Acrescimo;
end;

function SelectFile(CurrentDir: string = 'C:\'; Filters: string = ''): string;
var
  openDialog: topendialog;
begin
  openDialog := topendialog.Create(Application);
  openDialog.InitialDir := CurrentDir;
  openDialog.options := [ofFileMustExist];
  openDialog.Filter := Filters + '|Todos os Tipos|*.*';
  openDialog.FilterIndex := 1;
  if openDialog.Execute then
    result := openDialog.FileName
  else
    result := emptystr;

  openDialog.Free;

end;

function formatarqtde(qtde: extended): string;
begin
  result := ReplaceStr(FORMATFLOAT('0.000', qtde), ',', '.');
end;

procedure VencimentoCertificado;
var
  dias, compared_date: Integer;
  msg, cert, datavenc: string;
  qry: TFDQuery;
begin
  try
    qry := SimpleQuery('select certificado from config_notas');
    if qry <> nil then
    begin
      frm_confnfce := tfrm_confnfce.Create(nil);
      frm_confnfce.spdNFCe.TipoCertificado := ckFile;
      frm_confnfce.spdNFCe.NomeCertificado.Text := qry.Fields[0].AsString;
      dias := DaysBetween(date, frm_confnfce.spdNFCe.GetVencimentoCertificado);
      compared_date := comparedate(frm_confnfce.spdNFCe.GetVencimentoCertificado, date);
      if compared_date = 1 then
      begin
        if dias <= 30 then
        begin
          cert := '[' + obterNroResultado(qry.Fields[0].AsString, 'CN', ',') + ']';
          msg := 'Faltam ' + inttostr(dias) + ' para o vencimento do certificado digital!' + slinebreak + 'Certificado: ' + cert + slinebreak +
            'Data Vencimento: ' + datetostr(frm_confnfce.spdNFCe.GetVencimentoCertificado);
          WnAlerta('Certificado Digital', msg);
          frm_confnfce.Close;
        end;
      end
      else
      begin
        msg := 'Certificado digital vencido!' + slinebreak + slinebreak + 'Certificado: ' + cert + slinebreak + 'Data Vencimento: ' +
          datetostr(frm_confnfce.spdNFCe.GetVencimentoCertificado);
        WnAlerta('Certificado Digital', msg);
      end;
    end;
  except
    WnAlerta('Vencimento Certificado', slinebreak + 'Certificado digital não encontrado!', 12);
  end;
end;

function clickOnTittle(GRID: TDBGRID): boolean;
VAR
  PT: Tpoint;
BEGIN
  PT := GRID.ScreenToClient(SmallPointToPoint(System.Types.SmallPoint(GetMessagePos)));
  result := (GRID.MouseCoord(PT.x, PT.Y).Y = 0) and (dgTitles in GRID.options);
END;

function ping(const _Host: string): boolean;
var
  __idIcmp: TIdICMPClient;
begin
  try
    try
      __idIcmp := TIdICMPClient.Create(nil);
      __idIcmp.Host := _Host;
      __idIcmp.PacketSize := 32;
      __idIcmp.IPVersion := id_ipv4;
      __idIcmp.ReceiveTimeout := 500;
      __idIcmp.ping;
      if __idIcmp.ReplyStatus.ReplyStatusType = rsEcho then
        result := true
      else if __idIcmp.ReplyStatus.ReplyStatusType = rsTimeout then
        result := false;

      if not result then
        result := __idIcmp.ReplyStatus.BytesReceived > 0;
    except
      on e: exception do
        raise exception.Create(e.Message + slinebreak + 'Erro ao tentar se comunicar com host!');
    end;
  finally
    __idIcmp.Free;
  end
end;

function Extenso(Valor: extended): string;
var
  Centavos, Centena, Milhar, Texto, msg: string;
const
  Unidades: array [1 .. 9] of string = ('Um', 'Dois', 'Tres', 'Quatro', 'Cinco', 'Seis', 'Sete', 'Oito', 'Nove');
  Dez: array [1 .. 9] of string = ('Onze', 'Doze', 'Treze', 'Quatorze', 'Quinze', 'Dezesseis', 'Dezessete', 'Dezoito', 'Dezenove');

  Dezenas: array [1 .. 9] of string = ('Dez', 'Vinte', 'Trinta', 'Quarenta', 'Cinquenta', 'Sessenta', 'Setenta', 'Oitenta', 'Noventa');
  Centenas: array [1 .. 9] of string = ('Cento', 'Duzentos', 'Trezentos', 'Quatrocentos', 'Quinhentos', 'Seiscentos', 'Setecentos', 'Oitocentos', 'Novecentos');

  function ifs(Expressao: boolean; CasoVerdadeiro, CasoFalso: string): string;

  begin
    if Expressao then
      result := CasoVerdadeiro
    else
      result := CasoFalso;
  end;

  function MiniExtenso(trio: string): string;
  var
    Unidade, Dezena, Centena: string;
  begin
    Unidade := '';
    Dezena := '';
    Centena := '';
    if (trio[2] = '1') and (trio[3] <> '0') then
    begin
      Unidade := Dez[StrToInt(trio[3])];
      Dezena := '';
    end
    else
    begin
      if trio[2] <> '0' then
        Dezena := Dezenas[StrToInt(trio[2])];
      if trio[3] <> '0' then
        Unidade := Unidades[StrToInt(trio[3])];
    end;
    if (trio[1] = '1') and (Unidade = '') and (Dezena = '')

    then
      Centena := 'Cem'
    else if trio[1] <> '0' then
      Centena := Centenas[StrToInt(trio[1])]
    else
      Centena := '';
    result := Centena + ifs((Centena <> '') and ((Dezena <> '') or (Unidade <> '')), ' e ', '') + Dezena + ifs((Dezena <> '') and (Unidade <> ''), ' e ', '')
      + Unidade;
  end;

begin
  if Valor <> 0 then
  begin
    if (Valor > 999999.99) or (Valor < 0) then
    begin
      msg := 'O valor está fora do intervalo permitido.';
      msg := msg + 'O número deve ser maior ou igual a zero e menor que 999.999,99.';
      msg := msg + ' Se não for corrigido o número não será escrito por extenso.';

      showmessage(msg);
      result := '';
      exit;
    end;
    if Valor = 0 then
    begin
      result := '';
      exit;
    end;
    Texto := FORMATFLOAT('000000.00', Valor);
    Milhar := MiniExtenso(copy(Texto, 1, 3));
    Centena := MiniExtenso(copy(Texto, 4, 3));
    Centavos := MiniExtenso('0' + copy(Texto, 8, 2));
    result := Milhar;
    if Milhar <> '' then
      if copy(Texto, 4, 3) = '000' then
        result := result + ' Mil Reais'
      else
        result := result + ' Mil, ';
    if (((copy(Texto, 4, 2) = '00') and (Milhar <> '') and (copy(Texto, 6, 1) <> '0')) or (Centavos = ''))

      and (Centena <> '') then
      result := result + ' e ';
    if (Milhar + Centena <> '') then
      result := result + Centena;
    if (Milhar = '') and (copy(Texto, 4, 3) = '001') then
      result := result + ' Real'
    else if (copy(Texto, 4, 3) <> '000') then
      result := result + ' Reais';
    if Centavos = '' then
    begin
      result := result + '.';
      exit;
    end
    else
    begin
      if Milhar + Centena = '' then
        result := Centavos
      else
        result := result + ' e ' + Centavos;
      if (copy(Texto, 8, 2) = '01') and (Centavos <> '') then

        result := result + ' Centavo'
      else
        result := result + ' Centavos';
    end;
  end
  else
    result := 'Zero';

end;

procedure ConsultarCep(const CEP: string; var edt_uf, edt_cidade, edt_rua, edt_bairro: string);
var
  IDHttp_cep: tidhttp;
  XML_CEP: IXMLDocument;
  node_cep: IXMLNode;
begin
  if tnet.connstatus then
  begin
    IDHttp_cep := tidhttp.Create(nil);
    XML_CEP := TXMLDocument.Create(nil);
    XML_CEP.LoadFromXML(IDHttp_cep.URL.URLDecode(IDHttp_cep.Get('http://republicavirtual.com.br/web_cep.php?cep=' + CEP + '&formato=xml')));
    if XML_CEP <> nil then
    begin
      node_cep := XML_CEP.childnodes.FindNode('webservicecep');
      if node_cep <> nil then
      begin
        if node_cep.childvalues['resultado'] = '0' then
          WnAlerta('Status Conexão', slinebreak + 'CEP "' + CEP + '" não encontrado!')
        else if node_cep.childvalues['resultado'] = '1' then
        begin
          edt_uf := node_cep.childvalues['uf'];
          edt_cidade := node_cep.childvalues['cidade'];
          edt_bairro := copy(node_cep.childvalues['bairro'], 0, length(node_cep.childvalues['bairro']) - 1);
          edt_rua := copy(node_cep.childvalues['logradouro'], 0, pos('-', node_cep.childvalues['logradouro']) - 1);
        end;
      end;
    end;
  end
  else
    WnAlerta('Status Conexão', slinebreak + 'Falha na conexão de internet!');
end;

procedure DragAndDrop(var Sender, Source: tObject);
var
  itemAdicionado: TListItem;
  Item: string;
  itAdd: TListItem;
  index: Integer;
begin
  if Source <> Sender then
  begin
    with (Source as TListView) do
    begin
      Item := Items[ItemIndex].Caption;
      Items.delete(ItemIndex);
      itAdd := Items[ItemIndex];
    end;
    itemAdicionado := (Sender as TListView).Items.AddItem(itAdd, 1);
    itemAdicionado.Caption := Item;
  end;
end;

function camelCase(const Word: string): string;
const
  arrAcentos: string = 'ÁÂÃÀÉÊÈÍÎÌÓÔÕÒÚÛÙ';
  arrAcentosSubs: string = 'áâãàéêèíîìóôõòúûù';
var
  I, ac_pos: Integer;
  first: boolean;
begin
  result := LowerCase(Word);
  first := true;
  for I := 1 to length(result) do
  begin
    ac_pos := pos(result[I], arrAcentos);
    if ac_pos <> 0 then
      result[I] := arrAcentosSubs[ac_pos];
    if result[I] = ' ' then
      first := true
    else if first then
    begin
      result[I] := UpCase(result[I]);
      ac_pos := pos(result[I], arrAcentosSubs);
      if ac_pos <> 0 then
        result[I] := arrAcentos[ac_pos];
      first := false;
    end;
  end;
end;

function ExistsNetwork: Boolean;
var flags: DWORD;
begin
     // verifica se está conectado a internet usando a API do Windows, é preciso declarar a uses WinInet.
    if not InternetGetConnectedState(@flags, 0) then
          result := False
     else
          result := True;
end;

function NumeroTerminal: integer;
var reg: TRegIniFile;
    NumeroCaixa : Integer;
begin
     NumeroCaixa := 1;
     try
       reg:= TRegIniFile.Create('SMC');
       NumeroCaixa := reg.ReadInteger('Caixa','Terminal',1);
     finally
        reg.Free;

        if NumeroCaixa <= 0 then
           NumeroCaixa := 1;
     end;

     Result := NumeroCaixa;
end;

//##############################################################################
//                    FUNCOES DESENVOLVIDAS PELO WANDER
//##############################################################################
function TemAcesso(pUsuario,pFuncao:string):Boolean;
var vFrase, vFUN_DESCRICAO, vFUN_NUMERO:String;
begin
   // Wander
   // Verifica se o usuário tem acesso a determinado recurso/funcionalidade do sistema
   //
   // Entrada: pUsuario : id do usuário
   //          pFuncao  : id da função a ser acessada
   //
   // Saída: True, se o usuário tem acesso à função desejada
   //        False, se o usuário NÃO tem acesso
   //---------------------------------------------------------------------------

   if upperCase(pUsuario) = 'MASTER'  then
   begin
     result := true;
     exit;
   end;

    // Recupear nome e número da funcao
    vFUN_DESCRICAO := '';
    vFUN_NUMERO    := '';
    Module.Query.Close;
    Module.Query.Sql.Clear;
    Module.Query.Sql.Add('SELECT * FROM FUNCOES_FUN      ');
    Module.Query.Sql.Add(' WHERE FUN_CODIGO = :FUN_CODIGO');
    Module.Query.ParamByName('FUN_CODIGO').AsString := pFuncao;
    Module.Query.open;
    vFrase := '';
    if not Module.Query.eof then
    begin
       vFUN_DESCRICAO := Module.Query.FieldByName('FUN_DESCRICAO').AsString;
       vFUN_NUMERO    := Module.Query.FieldByName('FUN_NUMERO').AsString;
       vFrase := vFUN_DESCRICAO+#13+#13+
                 'Libere o acesso [ ' + vFUN_NUMERO + ' ]';
    end;

   Module.Query.Close;
   Module.Query.Sql.Clear;
   Module.Query.Sql.Add('SELECT * FROM ACESSOS_ACC ');
   Module.Query.Sql.Add(' WHERE ACC_USUARIO = :USU ');
   Module.Query.Sql.Add('   AND ACC_FUNCAO  = :FUN ');
   Module.Query.ParamByName('USU').AsString := pUsuario;
   Module.Query.ParamByName('FUN').AsString := pFuncao;
   Module.Query.open;

   if Module.Query.Eof then
   begin
      result := False;
      RegistraLog('Acesso Negado para '+vFrase);
      vFrase := 'Acesso Negado! ' + vFrase;
      //ShowMessage('Acesso Negado! ' + vFrase);
      wnAlerta('Permissões', slinebreak + slinebreak + vFrase);
   end
   else
      result := True;
end;

procedure RegistraLog(pEvento:String);
begin
      Module.Query.Close;
      Module.Query.Sql.Clear;
      Module.Query.Sql.Add('INSERT INTO LOG_LOG ');
      Module.Query.Sql.Add('    ( LOG_DATA,     ');
      Module.Query.Sql.Add('      LOG_USUARIO,  ');
      Module.Query.Sql.Add('      LOG_ESTACAO,  ');
      Module.Query.Sql.Add('      LOG_HORA,     ');
      Module.Query.Sql.Add('      LOG_HISTORICO,');
      Module.Query.Sql.Add('      LOG_vERSAO)   ');
      Module.Query.Sql.Add('VALUES              ');
      Module.Query.Sql.Add('    (:LOG_DATA,     ');
      Module.Query.Sql.Add('     :LOG_USUARIO,  ');
      Module.Query.Sql.Add('     :LOG_ESTACAO,  ');
      Module.Query.Sql.Add('     :LOG_HORA,     ');
      Module.Query.Sql.Add('     :LOG_HISTORICO,');
      Module.Query.Sql.Add('     :LOG_vERSAO)   ');
      Module.Query.ParamByName('LOG_DATA'     ).AsDateTime := DataServidor;
      Module.Query.ParamByName('LOG_USUARIO'  ).AsString   := Copy(Global_Usuario_Logado,1,10);
      if NaoAtualizado('LOG_ESTACAO(50)***') then
         Module.Query.ParamByName('LOG_ESTACAO'  ).AsString   := ''
      else
         Module.Query.ParamByName('LOG_ESTACAO'  ).AsString   := Copy(NomeComputador,1,50);
      Module.Query.ParamByName('LOG_HORA'     ).AsString   := HoraServidor;
      Module.Query.ParamByName('LOG_HISTORICO').AsString   := Copy(pEvento,1,100);
      Module.Query.ParamByName('LOG_vERSAO'   ).AsString   := _constante_VersaoDoSistema;
      Module.Query.ExecSql;
end;

procedure UsuarioLogou;
begin
    Module.Query.Close;
    Module.Query.Sql.Clear;
    Module.Query.Sql.Add('UPDATE USUARIO           ');
    Module.Query.Sql.Add('   SET LOGADO = 1        ');
    Module.Query.Sql.Add(' WHERE USUARIO = :USUARIO');
    Module.Query.ParamByName('USUARIO').AsString := Global_Usuario_Logado;
    Module.Query.ExecSql;
    RegistraLog('Acessou o sistema');
end;

procedure UsuarioDeslogou;
begin
    Module.Query.Close;
    Module.Query.Sql.Clear;
    Module.Query.Sql.Add('UPDATE USUARIO           ');
    Module.Query.Sql.Add('   SET LOGADO = 0        ');
    Module.Query.Sql.Add(' WHERE USUARIO = :USUARIO');
    Module.Query.ParamByName('USUARIO').AsString := Global_Usuario_Logado;
    Module.Query.ExecSql;
    RegistraLog('Saiu do sistema');
end;

procedure AcessoExclusivoMaster;
begin
   ShowMessage('Somente o usuário MASTER tem acesso a esta função.'+#13+#13+
               'Contacte o Suporte.');
end;

function DataServidor:tDatetime;
begin
  //  retorna a data do servidor para nao usar a data da estação
  Result := Date;
end;

function HoraServidor:String;
begin
  //  retorna a Hora do servidor para nao usar a data da estação
  Result := Copy(TimeToStr(time),1,5);
end;

procedure Executar(pTexto:String);
begin
  // Executa o script contido no parãmetro pTexto
  //----------------------------------------------------------------------------
  TRY
     Module.Query.close;
     Module.Query.sql.clear;
     Module.Query.sql.add(pTexto);
     Module.Query.ExecSql;
  FINALLY
  END;
end;

function Cripto(Texto: String): String;
var
   Cont, Cod: Integer;
   Retorna: String;
begin
   for Cont := 1 to Length(Texto) do
   begin
      Cod := ValorAsc(Copy(Texto, Cont, 1));
      Retorna := Retorna + Chr(Cod + 57(*valor a ser adicionado - pode ser modificado*));
   end;
   Cripto := Retorna;
end;

function DesCripto(Texto: String): String;
var
   Cont, Cod: integer;
   Retorna: String;
begin
   for Cont := 1 to Length(Texto) do
   begin
       Cod := ValorAsc(Copy(Texto, Cont, 1));
       Retorna := Retorna + Chr(Cod - 57);
   end;
   DesCripto := Retorna;
end;

function ValorAsc(Letra: String): Byte;
begin
   if Length(letra) > 0 then
      ValorAsc := Ord(Letra[1])
   else
      ValorAsc := 0;
end;

function NaoAtualizado(pInformacao: String): Boolean;
begin
   // Verifica se determinado script (pInformacao) ja foi aplicado ao banco de dados
   result := False;
   Module.Q2.close;
   Module.Q2.sql.clear;
   Module.Q2.sql.add('SELECT ATU_FUNCAO FROM ATUALIZADO_ATU ');
   Module.Q2.sql.add(' WHERE ATU_FUNCAO = :ATU_FUNCAO       ');
   Module.Q2.ParamByName('ATU_FUNCAO').AsString := pInformacao;
   Module.Q2.Open;
   try
         if Module.Q2.eof Then
         begin
             // nao atualizou
             result := true;
             Module.Q2.Close;
             Module.Q2.SQL.clear;
             Module.Q2.sql.add('INSERT INTO ATUALIZADO_ATU ');
             Module.Q2.sql.add('     ( ATU_FUNCAO,         ');
             Module.Q2.sql.add('       ATU_DATA)           ');
             Module.Q2.sql.add('VALUES                     ');
             Module.Q2.sql.add('     (:ATU_FUNCAO,         ');
             Module.Q2.sql.add('      :ATU_DATA)           ');
             Module.Q2.ParamByName('ATU_FUNCAO').AsString   := pInformacao;
             Module.Q2.ParamByName('ATU_DATA'  ).AsDateTime := DataServidor; // Now;
             Module.Q2.ExecSQL;
         end;
   finally
   end;
end;

Function NomeComputador : String;
var
   lpBuffer : PChar;
   nSize    : DWord;
const
   Buff_Size = MAX_COMPUTERNAME_LENGTH + 1;
begin
   nSize := Buff_Size;
   lpBuffer := StrAlloc(Buff_Size);
   GetComputerName(lpBuffer,nSize);
   Result := String(lpBuffer);
   //Result := SEMHIFEM(String(lpBuffer));
   StrDispose(lpBuffer);
end;

function UsuarioMASTER:Boolean;
begin
   if Global_Usuario_Logado = 'MASTER' then
      result := true
   else
     result := false;
end;

function UsuarioMASTER_SenhaCorreta(pUsuario,pSenha:String):Boolean;
begin
   // recebe um username e uma senha e verifica se é a do usuário master
   // e se a senha está correta
   // retorna true em caso afirmativo e false se negativo
   //---------------------------------------------------------------------------

   if upperCase(pUsuario) <> 'MASTER' Then
   begin
      result := false;
      exit;
   end;

   if upperCase(pSenha) = 'PIPOCA' Then
      result := true
   else
     result := false;
end;

function fUltimaNFe(pNFe_SeRIE:String):integer;
begin
   result := 0;
end;

procedure SalvaDadosDaTela(Tela:TObject);
var xNome, xValor:String;
    i, item : integer;
begin
   // Recebe uma tela e salva o conteuo de todos os seus
   // edits, maskedits, radiogroup
   //---------------------------------------------
   for i := 0 to (Tela as tForm).ComponentCount - 1 Do
   begin
     xNome:='';
     // Edits
     if ((Tela as tForm).Components[i] is tEdit) then
     begin
        xNome  := ((Tela as tForm).Components[i] as tEdit).Name;
        xValor := ((Tela as tForm).Components[i] as tEdit).Text;
     end;
     // MaskEdits
     if ((Tela as tForm).Components[i] is tMaskEdit) then
     begin
        xNome  := ((Tela as tForm).Components[i] as tMaskEdit).Name;
        xValor := ((Tela as tForm).Components[i] as tMaskEdit).Text;
     end;
     // RadioGroups
     if ((Tela as tForm).Components[i] is tRadioGroup) then
     begin
        xNome  := ((Tela as tForm).Components[i] as tRadioGroup).Caption;
        item   := ((Tela as tForm).Components[i] as tRadioGroup).ItemIndex;
        xValor := ((Tela as tForm).Components[i] as tRadioGroup).Items[item];
     end;
     // Checkboxes
     if ((Tela as tForm).Components[i] is TCheckbox) then
     begin
        xNome  := ((Tela as tForm).Components[i] as TCheckbox).Caption;
        if ((Tela as tForm).Components[i] as TCheckbox).Checked then
           xValor := 'Marcado'
        else
           xValor := 'Desmarcado';
     end;

     if xNome <> '' then
        Salvar_DadosDaTela((Tela as tForm).Name,xNome,xValor);

   end;
end;

procedure Salvar_DadosDaTela(pTela,pNome,pValor:String);
begin
  // Salva um registro de dado da tela
  Module.Query.Close;
  Module.Query.Sql.Clear;
  Module.Query.Sql.Add('INSERT INTO DADOSTELA_DT');
  Module.Query.Sql.Add('    ( DT_USUARIO,       ');
  Module.Query.Sql.Add('      DT_ESTACAO,       ');
  Module.Query.Sql.Add('      DT_TELA,          ');
  Module.Query.Sql.Add('      DT_NOME,          ');
  Module.Query.Sql.Add('      DT_VALOR)         ');
  Module.Query.Sql.Add('VALUES                  ');
  Module.Query.Sql.Add('    (:DT_USUARIO,       ');
  Module.Query.Sql.Add('     :DT_ESTACAO,       ');
  Module.Query.Sql.Add('     :DT_TELA,          ');
  Module.Query.Sql.Add('     :DT_NOME,          ');
  Module.Query.Sql.Add('     :DT_VALOR)         ');
  Module.Query.ParamByName('DT_USUARIO').AsString := Global_Usuario_Logado;
  Module.Query.ParamByName('DT_ESTACAO').AsString := NomeComputador;
  Module.Query.ParamByName('DT_NOME'   ).AsString := pNome;
  Module.Query.ParamByName('DT_VALOR'  ).AsString := pValor;
  Module.Query.ParamByName('DT_TELA'   ).AsString := pTela;
  Module.Query.ExecSql;
end;

procedure ComparaDadosDaTela(pFrase:String;pTela:Tobject);
var xNome, xValor, xNomeDaTela:String;
    i : integer;
begin
   xNomeDaTela := (pTela as tForm).Name;

   for i := 0 to (pTela as tForm).ComponentCount - 1 Do
   begin
     xNome:='';
     // Edits
     if ((pTela as tForm).Components[i] is tEdit) then
     begin
        xNome  := ((pTela as tForm).Components[i] as tEdit).Name;
        xValor := ((pTela as tForm).Components[i] as tEdit).Text;
     end;
     // MaskEdits
     if ((pTela as tForm).Components[i] is tMaskEdit) then
     begin
        xNome  := ((pTela as tForm).Components[i] as tMaskEdit).Name;
        xValor := ((pTela as tForm).Components[i] as tMaskEdit).Text;
     end;
     // RadioGroups
     if ((pTela as tForm).Components[i] is tRadioGroup) then
     begin
        xNome  := ((pTela as tForm).Components[i] as tRadioGroup).Name;
        xValor := IntToStr(((pTela as tForm).Components[i] as tRadioGroup).ItemIndex);
     end;
     // Checkboxes
     if ((pTela as tForm).Components[i] is TCheckbox) then
     begin
        xNome  := ((pTela as tForm).Components[i] as TCheckbox).Name;
        if ((pTela as tForm).Components[i] as TCheckbox).Checked then
           xValor := 'Marcado'
        else
           xValor := 'Desmarcado';
     end;

     VerificaSeMudouDadoDaTela(pFrase,xNomeDaTela,xNome,xValor)
   end;
   ApagaRegistroDeDadosDaTela(xNomeDaTela);
end;

procedure VerificaSeMudouDadoDaTela(pFrase,pTela,pNome,pValor:String);
var vValorAntesDeAlterar:String;
begin
  Module.Query.Close;
  Module.Query.Sql.Clear;
  Module.Query.Sql.Add('SELECT DT_VALOR                 ');
  Module.Query.Sql.Add('  FROM DADOSTELA_DT             ');
  Module.Query.Sql.Add(' WHERE DT_USUARIO = :DT_USUARIO ');
  Module.Query.Sql.Add('   AND DT_ESTACAO = :DT_ESTACAO ');
  Module.Query.Sql.Add('   AND DT_TELA    = :DT_TELA    ');
  Module.Query.Sql.Add('   AND DT_NOME    = :DT_NOME    ');
  Module.Query.ParamByName('DT_USUARIO').AsString := Global_Usuario_Logado;
  Module.Query.ParamByName('DT_ESTACAO').AsString := NomeComputador;
  Module.Query.ParamByName('DT_NOME'   ).AsString := pNome;
  Module.Query.ParamByName('DT_TELA'   ).AsString := pTela;
  Module.Query.Open;
  if Module.Query.eof then
     exit;

  vValorAntesDeAlterar := Module.Query.FieldByName('DT_VALOR').AsString;
  if vValorAntesDeAlterar  = pValor then
     exit;

  // Houve mudancas - registrar
  if Trim(vValorAntesDeAlterar) = '' then
     vValorAntesDeAlterar := '(vazio)';

  if Trim(pValor) = '' then
     pValor := '(vazio)';

  RegistraLog('Alterou '+pFrase+ ', '+pNome + ' de ' + vValorAntesDeAlterar
             + ' para ' + pValor +'( '+pTela+' )');
end;

procedure ApagaRegistroDeDadosDaTela(pTela:String);
begin
  // Apaga os registros de controle contendo os dados da tela
  Module.Query.Close;
  Module.Query.Sql.Clear;
  Module.Query.Sql.Add('DELETE FROM DADOSTELA_DT        ');
  Module.Query.Sql.Add(' WHERE DT_USUARIO = :DT_USUARIO ');
  Module.Query.Sql.Add('   AND DT_ESTACAO = :DT_ESTACAO ');
  Module.Query.Sql.Add('   AND DT_TELA    = :DT_TELA    ');
  Module.Query.ParamByName('DT_USUARIO').AsString := Global_Usuario_Logado;
  Module.Query.ParamByName('DT_ESTACAO').AsString := NomeComputador;
  Module.Query.ParamByName('DT_TELA'   ).AsString := pTela;
  Module.Query.ExecSql;
end;
//##############################################################################
//                FIM DAS FUNCOES DESENVOLVIDAS PELO WANDER
//##############################################################################

function Float_to_String(pValor:real):String;
begin
   Result := FormatFloat('#,##0.00',pValor);
end;

end.

Trocou ESTOQUE_MINIMO por PROD_ESTOQMIN : automaticamente em 16/06/2020 22:53
Trocou SALDO por @_@_@_@_@_@ : automaticamente em 17/06/2020 21:29
Trocou @_@_@_@_@_@ por PROD_SALDO : automaticamente em 17/06/2020 21:31
