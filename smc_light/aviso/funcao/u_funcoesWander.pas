{ v 15.10.16 11:18 }
unit u_funcoes;

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
  erro, System.Types,
  IdTCPConnection, IdRawBase,
  IdIcmpClient, Winsock, relatorios, xmlintf,
  IdHTTP, xmldoc, h_Files, h_functions, S_Module, h_net,

  // Wander - para poder criar queries em tempo de execução---------------------
  FireDAC.Phys.MySQL,
  FireDAC.Comp.UI, FireDAC.Stan.Intf, FireDAC.Stan.Error, FireDAC.UI.Intf,
  FireDAC.Phys.Intf, FireDAC.Stan.Def, FireDAC.Stan.Pool, FireDAC.Stan.Async,
  FireDAC.Phys, FireDAC.VCLUI.Wait, FireDAC.Stan.Param, FireDAC.DatS, FireDAC.DApt.Intf, FireDAC.DApt,
  FireDAC.Comp.DataSet,  FireDAC.Phys.MySQLDef;
  //----------------------------------------------------------------------------

const
   constante_VersaoDoSistema = '1.00';

var
   public_Usuario_Logado:String; // Wander : User Name do usuário logado


//==============================================================================
// Wander
//==============================================================================
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
//==============================================================================

procedure AlteraChecks(CheckMarcado: TcxCheckBox; ChecksDesmarcar: array of TcxCheckBox);
//{ Procedimento para desmarcar checks quando apenas um estiver selecionado nas consultas. }

//function ConsultarCadastros(Consulta: TFDQuery; Texto, Tabela, Coluna, Parametro, Status, TipoItem, CampoTipoItem: String; dataInicio, dataFim: TDate): String;
//{ Procedimento para consultar dado informado pelo usuário nas telas de cadastro. }
//
//procedure ConsultarNCM_CFOP_CSOSN(Consulta: TFDQuery; Texto, Tabela, Coluna, Parametro: String);
//{ Procedimento para consultar CSOSN, CEST E NCM. }
//
function VerificaAberta(Referencia: TForm): boolean;
//{ Função para verificar se a janela requisitada já está aberta. }
//
//function ListarTodosCadastros(Consulta: TFDQuery; Tabela: String): String;
//{ Procedimento para consultar todos os cadastros e preencher no grid das telas de consulta. }
//
//procedure ImprimirGridConsulta(ConsultaRelatorio, ConsultaGrid: TFDQuery; Relatorio: TfrxReport; CaminhoRelatorio: String);
//{ Procedimento para imprimir um relatório apenas com os dados do grid da consultas. }
//
//function colorirestoque(value: String; estoque_minimo: extended): Integer;
//
function ApenasLetras(Tecla: Char): Char;
//{ Função para permitir preenchimento de um campo apenas com letras. }
//
function ApenasNumeros(Tecla: Char): Char; overload;
function ApenasNumeros(Tecla: Char; arr_keys: array of Char): Char; overload;
//{ Função para permitir preenchimento de um campo apenas com números. }
//
//function isKeyNumLetter(Tecla: Word): boolean;
//function NumLetter(Tecla: Char): Char; overload;
//function NumLetter(Tecla: Char; remove_chars: array of Char): Char; overload;
//{ Função para permitir preenchimento de um campo apenas com números. }
//
//function isKeyControl(Tecla: Word): boolean;
//{ Função para verificar se tecla digitada é uma tecla de controle }
//
//function ContarQuantidadeCaracteres(Edit: TDBEdit; Key: Char; NomeCampo: String; QtdCaracteres: Integer): Char;
//{ Procedimento para contar a quantidade de caracteres em um campo e limitar os mesmos. }

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

//procedure CamposOpcionais(ArrayDbEdit: array of TDBEdit; ArrayNomeCampos: array of string);
//{ Procedimento para informar mensagem de finalização do cadastro e preenchimento dos campos opcionais caso necessário. }
//
procedure AlterarEnabled(xObject: array of tcontrol; Enabled: boolean);
//{ Procedimento para habilitar ou não a edição dos campos quando preenchidos após consulta no grid. }
//
procedure AlterarVisible(xObject: array of tcontrol; Visible: boolean);
//
//procedure AlterarReadOnly(xObject: array of TEdit; Read: boolean);
//{ Procedimento para habilitar ou não a visibilidade dos campos quando preenchidos após consulta no grid. }
//
//procedure LimparCampos(ArrayEdit: array of TEdit);
//{ Procedimento para limpar um rol de edits. }
//
function VerificaEstadoCheck(ArrayCheckBox: array of TcxCheckBox; EstadoDesejado: boolean): boolean;
{ Procedimento para verificar os estados de checks. }

procedure AlteraDBChecks(CheckMarcado: TDBCheckBox; ChecksDesmarcar: array of TDBCheckBox);
//{ Procedimento para desmarcar checks quando apenas um estiver selecionado em um cadastro }
//
//procedure TeclasAtalho(Key: Word; ArrayKey: array of Integer; ArrayBotoes: array of TcxButton);
//{ Procedimento para criar teclas de atalho }
//
//procedure Principal_TeclasAtalho(Key: Word; ArrayKey: array of Integer; ArrayBotoes: array of tdxbarlargebutton);
//{ Procedimento para criar teclas de atalho no form principal }

procedure IniciarCadastro(ArrayBotoes: array of TcxButton; IniciaCadastro: boolean);
{ Prodecure para alterar comportamento dos botoes no momento do cadastro }
//
//procedure ValidarIE(IE: TDBEdit);
//{ Prodecure para validar entrada de dados nos campos de Inscrição }
//
//function IsNumber(Texto: String): boolean;
//{ Função para verificar se um dado é do tipo numérico }
//
//procedure ExcluirCadastro(Consulta: TFDQuery; DesativarQuery: boolean = true);
//{ Procedimento para excluir um cadastro }
//
function RemoverEspacoEmBranco(Texto: String; const substituir: string = ''): String;
{ Procedimento para remover espaço em branco }
//
//function DuplicarCadastro(CADASTRO: TFDQuery; Tabela, Codigo: String): Integer;
//{ Procedimento para duplicar cadastros com popmenu nos grids }
//
//function ValidarCpf(CPF_Text: string): boolean;
//{ Função para validar CPF nos cadastros }
//
//function ValidarCnpj(xCNPJ: String): boolean;
//{ Função para validar CNPJ nos cadastros }
//
//procedure ConsultarCPF(Consulta: TFDQuery; Texto: TDBEdit; Tabela, Coluna, Parametro: String);
//{ Função para verificar se CPF já está cadastrado no sistema }
//
//procedure ConsultarCNPJ(Consulta: TFDQuery; Texto: TDBEdit; Tabela, Coluna, Parametro: String);
//{ Função para verificar se CNPJ já está cadastrado no sistema }
//
//function TrocaVirgPPto(Valor: string): String;
//{ Função para trocar virgula por ponto em string }
//
//function FormatarQuantidadeKG(edt_quantidade: TEdit; Key: Char): Char;
//{ Função para formatar o campo de quantidade com 0,000 para unidade em KG }
//
//procedure ZerarValorDigitado;
//{ Procedure para zerar valor da variavel interna }
//
//procedure GridZebrado(GRID: TDBGRID; Rect: TRect; DataCol: Integer; Column: TColumn; State: TGridDrawState); overload;
//procedure GridZebrado(ACanvas: TcxCanvas; AViewInfo: TcxGridTableDataCellViewInfo); overload;
//{ Procedure zebrar as cores do grid }
//
//function obterNroResultado(const aXML, aTag, aEndTag: string): string;
//{ Função obter resultado da tag da xml }
//
//procedure MoverXML(CaminhoOrigem, CaminhoDestino: String);
//{ Procedure para mover os arquivos xmls para suas pastas }
//
//procedure AppendFile(Caminho, Texto: String; Position: Integer = 0);
//{ Procedure para escrever no final de um arquivo }
//
//procedure DeletarXMLPendente(CaminhoOrigem: string);
//{ Procedure para mover os arquivos xmls para suas pastas }
//
//procedure ColorirStatusGrid(GRID: TDBGRID; Rect: TRect; DataCol: Integer; Column: TColumn; State: TGridDrawState; Cor: Array of Integer;
//  ValorPreencher: array of String; ValorBanco: TStringField); overload;
//procedure ColorirStatusGrid(GRID: TDBGRID; Rect: TRect; DataCol: Integer; Column: TColumn; State: TGridDrawState; Colors: array of Integer;
//  value_to_fill: array of variant; value_to_compare: extended); overload;
//{ Função para colorir os valores dos dados no preenchimento do grid }
//
//procedure MostrarBarraLateralGrid(GRID: TDBGRID; VERTICAL, HORIZONTAL: boolean);
//{ Sempre mostrar barra lateral Grid }
//
//function MonthToDBMonth(Dia, Mes: String): string;
//{ Formatar mes para mes do banco }
//
//procedure CamposEditaveis(ArrayEdit: array of TEdit; IniciaEdicao: boolean);
//{ Procedure para destacar os campos editaveis na tela de nfe }
//
//function ColorByStatus(value: variant; ArrValues: array of variant; ArrColors: array of Integer): Integer;
//{ Function para destacar os campos pelo status }
//
//function FormatarTag(Tag: extended; const ReturnMethod: Word = varString): variant;
//{ Função para formatar tag antes de passar para o dataset da NFCE - Formato: 9999,00 }
//function FormatarTagDescricao(xDesc: string): string;
//
//function DoublePathBar(pathdir: String): String;
//{ function that return path with double bar sliced separated }
//
//procedure CNPJCPF(Field: TMaskEdit); overload;
//procedure CNPJCPF(Field: TDBEdit); overload;
//function Format_CPF_CNPJ(value: string): string;
//{ Procedure to assign a maks value to a field according to his kind, if cnpj or cpf }
//
procedure WnAlerta(Titulo, Mensagem: String); overload;
procedure WnAlerta(Titulo, Mensagem: String; Font: Integer); overload;
procedure WnAlerta(Titulo, Mensagem: String; Align: TAlignment; Font: Integer); overload;
{ Janela de Alerta }
procedure WnErro(Titulo, Mensagem: String); overload;
procedure WnErro(Titulo, Mensagem: String; Align: TAlignment; Font: Integer); overload;
//{ Janela de Erro }
//procedure WnInfo(Titulo, Mensagem: String); overload;
//procedure WnInfo(Titulo, Mensagem: String; Align: TAlignment; Font: Integer); overload;
//procedure WnInfo(Titulo, Mensagem: String; Align: TAlignment; Font, Timer: Integer); overload;
//
//{ Janela de Informação }
//function WnConfirmacao(Titulo, Mensagem: String): boolean; overload;
//function WnConfirmacao(Titulo, Mensagem: String; Font: Integer): boolean; overload;
//{ Janela de Confirmação }
//
//function EnDecryptString(StrValue: String; Chave: Word): String; overload;
//
//function hexaToInt(s: string): Int64;
//
//procedure EnviarArquivosFiscais;
//{ Enviar arquivos fiscais }
//
//function Calcdata(Partner: String): string;

function SimpleQuery(query: String; Conn: TfdConnection = nil): TFDQuery; overload;
function SimpleQuery(query: String; arr_params: array of variant; Conn: TfdConnection = nil): TFDQuery; overload;

function ExecQuery(query: String; Conn: TfdConnection = nil): TFDQuery; overload;
function ExecQuery(query: String; arr_params: array of variant; Conn: TfdConnection = nil): TFDQuery; overload;

//function ZeroLeft(strx: string; qtde: Integer): string;
//
//function AutoComplete(Edit: TEdit; MiniQuery: string; FieldIndex: Integer): TFDQuery;
//
//function LimitOccurences(const StringValue: string; const CharToFind: Char; CountOcurr: Integer; Key: Char): Char;
//
//function Arredondar(const value: extended): extended;
//function Arredonda(Value: Extended; Decimals: Integer): Extended;
//
//function FindCharInStr(const Str: string; const Char: string): Integer;
//
//function MachineName: string;
//
//procedure RestartAPP;
//
//function getAllowUpdate: boolean;
//
//procedure ExecuteCommand(xComand: String; const SW_STATE: Integer = SW_HIDE);
//
//function UserName: string;
//
//procedure ManWorking;
//
//procedure MovimentarEstoque(Remover: boolean; CodigoVenda: String);
//
//procedure MovimentarCaixa;
//
//procedure SaveToFile(const FileName, Content: string);
//
//function FormatarMoeda(const value: extended; const ResultType: Integer = 256): variant;
//
//procedure FormatTelefone(const Edt: TMaskEdit);
//
//function SearchFiles(Dir, Pattern: string): TArray<string>;
//
//function getSerialKey: string;
//
//function getNomeFantasia(const NotFoundDef: string = 'EMPRESA NÃO CADASTRADA'): string;

//function formataData(s: TDateTime): string;

//function LoadContent(FromFile: string): string;

//function SelectFile(CurrentDir: string = 'C:\'; Filters: string = ''): string;

//function CalcularDescontos(Cod_Venda: string; cod_item: string; var desconto_base: extended; var reatear_diff_desconto: boolean): extended;

//function CalcularAcrescimos(Cod_Venda: string; cod_item: string; var acrescimo_base: extended; var reatear_diff_acrescimo: boolean): extended;

//function formatarqtde(qtde: extended): string;

//procedure VencimentoCertificado;

//function clickOnTittle(GRID: TDBGRID): boolean;
{ Verificar se no duplo click do grid o cursor está no cabeçalho das colunas }

//function ping(const _Host: string): boolean;

//function camelCase(const Word: string): string;

//function Extenso(Valor: extended): string;

//procedure DragAndDrop(var Sender, Source: tObject);

//procedure ConsultarCep(const CEP: string; var edt_uf, edt_cidade, edt_rua, edt_bairro: string);

//function ExistsNetwork: Boolean;

{$R+}

implementation

uses carregando_dados, alerta, confirmacao, informacao, u_diretorios,
  desenvolvimento, v_Env, v_Dir, h_DB, c_Globals;

var
  ValorDigitado: String;
  GlobalTimerSet: Cardinal;


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

procedure AlteraChecks(CheckMarcado: TcxCheckBox; ChecksDesmarcar: array of TcxCheckBox);

var
  I: Integer;
begin
  for I := Low(ChecksDesmarcar) to High(ChecksDesmarcar) do
    if CheckMarcado.Checked then
      ChecksDesmarcar[I].Checked := false;
end;

procedure AlteraDBChecks(CheckMarcado: TDBCheckBox; ChecksDesmarcar: array of TDBCheckBox);

var
  I: Integer;
begin
  for I := Low(ChecksDesmarcar) to High(ChecksDesmarcar) do
    if CheckMarcado.Checked then
      ChecksDesmarcar[I].Checked := false;
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

function RemoverEspacoEmBranco(Texto: String; const substituir: string = ''): String;
begin
  Texto := StringReplace(Texto, #32, substituir, [RFREPLACEALL]);
  result := Texto;
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

procedure WnAlerta(Titulo, Mensagem: String);
begin
  TFunctions.write_log(Titulo + ':' + Mensagem);
  frm_alerta := tfrm_alerta.Create(nil);
  frm_alerta.Titulo(Titulo);
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
      ShowMessage('Acesso Negado! ' + vFrase);
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
      Module.Query.ParamByName('LOG_USUARIO'  ).AsString   := Copy(public_Usuario_Logado,1,10);
      if NaoAtualizado('LOG_ESTACAO(50)***') then
         Module.Query.ParamByName('LOG_ESTACAO'  ).AsString   := ''
      else
         Module.Query.ParamByName('LOG_ESTACAO'  ).AsString   := Copy(NomeComputador,1,50);
      Module.Query.ParamByName('LOG_HORA'     ).AsString   := HoraServidor;
      Module.Query.ParamByName('LOG_HISTORICO').AsString   := Copy(pEvento,1,100);
      Module.Query.ParamByName('LOG_vERSAO'   ).AsString   := constante_VersaoDoSistema;
      Module.Query.ExecSql;
end;

procedure UsuarioLogou;
begin
    Module.Query.Close;
    Module.Query.Sql.Clear;
    Module.Query.Sql.Add('UPDATE USUARIO           ');
    Module.Query.Sql.Add('   SET LOGADO = 1        ');
    Module.Query.Sql.Add(' WHERE USUARIO = :USUARIO');
    Module.Query.ParamByName('USUARIO').AsString := public_Usuario_Logado;
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
    Module.Query.ParamByName('USUARIO').AsString := public_Usuario_Logado;
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



end.
