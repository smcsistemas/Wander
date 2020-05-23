unit UFSistConsultaCNPJ;

interface

uses
  Windows, Dialogs, SysUtils;

type
  TDllErro = function: PAnsiChar; stdcall;
  TDllCaptchaBaixar = function(SalvarEm: AnsiString): Integer; stdcall;
  TDllConsulta = function(CNPJ, Captcha: AnsiString): Integer; stdcall;
  TDllEmpresaTipo = function: PAnsiChar; stdcall;
  TDllAbertura = function: PAnsiChar; stdcall;
  TDllRazaoSocial = function: PAnsiChar; stdcall;
  TDllFantasia = function: PAnsiChar; stdcall;
  TDllLogradouro = function: PAnsiChar; stdcall;
  TDllNumero = function: PAnsiChar; stdcall;
  TDllComplemento = function: PAnsiChar; stdcall;
  TDllCEP = function: PAnsiChar; stdcall;
  TDllBairroDistrito = function: PAnsiChar; stdcall;
  TDllMunicipio = function: PAnsiChar; stdcall;
  TDllUF = function: PAnsiChar; stdcall;
  TDllEnderecoEletronico = function: PAnsiChar; stdcall;
  TDllTelefone = function: PAnsiChar; stdcall;
  TDllEnteFederativoResponsavel = function: PAnsiChar; stdcall;
  TDllSituacaoCadastral = function: PAnsiChar; stdcall;
  TDllDataSituacaoCadastral = function: PAnsiChar; stdcall;
  TDllMotivoSituacaoCadastral = function: PAnsiChar; stdcall;
  TDllSituacaoEspecial = function: PAnsiChar; stdcall;
  TDllDataSituacaoEspecial = function: PAnsiChar; stdcall;
  TDllCapitalSocial = function: PAnsiChar; stdcall;
  TDllCodigoDescricaoAtividadeEconomicaPrincipal = function: PAnsiChar; stdcall;
  TDllCodigoDescricaoNaturezaJuridica = function: PAnsiChar; stdcall;
  TDllCodigoDescricaoAtividadeEconomicaSecundariasCount = function: Integer; stdcall;
  TDllSociosCount = function: Integer; stdcall;
  TDllCodigoDescricaoAtividadeEconomicaSecundarias = function(Index: Integer): PAnsiChar; stdcall;
  TDllSociosNome = function(Index: Integer): PAnsiChar; stdcall;
  TDllSociosQualificacao = function(Index: Integer): PAnsiChar; stdcall;
  TDllSociosNomedoRepresLegal = function(Index: Integer): PAnsiChar; stdcall;
  TDllSociosQualifRepLegal = function(Index: Integer): PAnsiChar; stdcall;
  TDllProxy = function(Host, Port, User, Pass: AnsiString): Integer; stdcall;

  TFSistConsultaCNPJ = Class
  protected
    DLLHandle: THandle;
  public
    function Erro: String;
    function EmpresaTipo: String;
    function Abertura: String;
    function RazaoSocial: String;
    function Fantasia: String;
    function Logradouro: String;
    function Numero: String;
    function Complemento: String;
    function CEP: String;
    function BairroDistrito: String;
    function Municipio: String;
    function UF: String;
    function EnderecoEletronico: String;
    function Telefone: String;
    function EnteFederativoResponsavel: String;
    function SituacaoCadastral: String;
    function DataSituacaoCadastral: String;
    function MotivoSituacaoCadastral: String;
    function SituacaoEspecial: String;
    function DataSituacaoEspecial: String;
    function CapitalSocial: String;
    function CodigoDescricaoAtividadeEconomicaPrincipal: String;
    function CodigoDescricaoNaturezaJuridica: String;
    function CodigoDescricaoAtividadeEconomicaSecundariasCount: Integer;
    function SociosCount: Integer;
    function CodigoDescricaoAtividadeEconomicaSecundarias(Index: Integer): String;
    function SociosNome(Index: Integer): String;
    function SociosQualificacao(Index: Integer): String;
    function SociosNomedoRepresLegal(Index: Integer): String;
    function SociosQualifRepLegal(Index: Integer): String;
    procedure Proxy(Host, Port, User, Pass: String); stdcall; export;
    function CaptchaBaixar(SalvarEm: String): Boolean;
    function Consulta(CNPJ, Captcha: string): Boolean;
    constructor Create;
    destructor Destroy; override;
  end;

implementation

function TFSistConsultaCNPJ.CaptchaBaixar(SalvarEm: String): Boolean;
var
  FFun: TDllCaptchaBaixar;
begin
  FFun := GetProcAddress(DLLHandle, 'CaptchaBaixar');
  Result := Boolean(FFun(AnsiString(SalvarEm)));
end;

function TFSistConsultaCNPJ.Consulta(CNPJ, Captcha: string): Boolean;
var
  FFun: TDllConsulta;
begin

  FFun := GetProcAddress(DLLHandle, 'Consulta');
  Result := Boolean(FFun(AnsiString(CNPJ), AnsiString(Captcha)));
end;

procedure TFSistConsultaCNPJ.Proxy(Host, Port, User, Pass: String);
var
  FFun: TDllProxy;
begin
  FFun := GetProcAddress(DLLHandle, 'Proxy');
  FFun(AnsiString(Host), AnsiString(Port), AnsiString(User), AnsiString(Pass));
end;

constructor TFSistConsultaCNPJ.Create;
begin
  try
    DLLHandle := LoadLibrary(PChar(ExtractFilePath(ParamStr(0)) + 'FSistConsultaCNPJ.dll'));
    if DLLHandle = 0 then
      ShowMessage('Não foi possivel encontrar a DLL. "FSistConsultaCNPJ.dll"');
  except
    ShowMessage('Erro ao tentar iniciar a DLL.');
  end;
end;

destructor TFSistConsultaCNPJ.Destroy;
begin
  FreeLibrary(DLLHandle);
  inherited;
end;

function TFSistConsultaCNPJ.Erro: String;
var
  FFun: TDllErro;
begin
  FFun := GetProcAddress(DLLHandle, 'Erro');
  Result := String(FFun());
end;

function TFSistConsultaCNPJ.EmpresaTipo: String;
var
  FFun: TDllEmpresaTipo;
begin
  FFun := GetProcAddress(DLLHandle, 'EmpresaTipo');
  Result := String(FFun());
end;

function TFSistConsultaCNPJ.Abertura: String;
var
  FFun: TDllAbertura;
begin
  FFun := GetProcAddress(DLLHandle, 'Abertura');
  Result := String(FFun());
end;

function TFSistConsultaCNPJ.RazaoSocial: String;
var
  FFun: TDllRazaoSocial;
begin
  FFun := GetProcAddress(DLLHandle, 'RazaoSocial');
  Result := String(FFun());
end;

function TFSistConsultaCNPJ.Fantasia: String;
var
  FFun: TDllFantasia;
begin
  FFun := GetProcAddress(DLLHandle, 'Fantasia');
  Result := String(FFun());
end;

function TFSistConsultaCNPJ.Logradouro: String;
var
  FFun: TDllLogradouro;
begin
  FFun := GetProcAddress(DLLHandle, 'Logradouro');
  Result := String(FFun());
end;

function TFSistConsultaCNPJ.Numero: String;
var
  FFun: TDllNumero;
begin
  FFun := GetProcAddress(DLLHandle, 'Numero');
  Result := String(FFun());
end;

function TFSistConsultaCNPJ.Complemento: String;
var
  FFun: TDllComplemento;
begin
  FFun := GetProcAddress(DLLHandle, 'Complemento');
  Result := String(FFun());
end;

function TFSistConsultaCNPJ.CEP: String;
var
  FFun: TDllCEP;
begin
  FFun := GetProcAddress(DLLHandle, 'CEP');
  Result := String(FFun());
end;

function TFSistConsultaCNPJ.BairroDistrito: String;
var
  FFun: TDllBairroDistrito;
begin
  FFun := GetProcAddress(DLLHandle, 'BairroDistrito');
  Result := String(FFun());
end;

function TFSistConsultaCNPJ.Municipio: String;
var
  FFun: TDllMunicipio;
begin
  FFun := GetProcAddress(DLLHandle, 'Municipio');
  Result := String(FFun());
end;

function TFSistConsultaCNPJ.UF: String;
var
  FFun: TDllUF;
begin
  FFun := GetProcAddress(DLLHandle, 'UF');
  Result := String(FFun());
end;

function TFSistConsultaCNPJ.EnderecoEletronico: String;
var
  FFun: TDllEnderecoEletronico;
begin
  FFun := GetProcAddress(DLLHandle, 'EnderecoEletronico');
  Result := String(FFun());
end;

function TFSistConsultaCNPJ.Telefone: String;
var
  FFun: TDllTelefone;
begin
  FFun := GetProcAddress(DLLHandle, 'Telefone');
  Result := String(FFun());
end;

function TFSistConsultaCNPJ.EnteFederativoResponsavel: String;
var
  FFun: TDllEnteFederativoResponsavel;
begin
  FFun := GetProcAddress(DLLHandle, 'EnteFederativoResponsavel');
  Result := String(FFun());
end;

function TFSistConsultaCNPJ.SituacaoCadastral: String;
var
  FFun: TDllSituacaoCadastral;
begin
  FFun := GetProcAddress(DLLHandle, 'SituacaoCadastral');
  Result := String(FFun());
end;

function TFSistConsultaCNPJ.DataSituacaoCadastral: String;
var
  FFun: TDllDataSituacaoCadastral;
begin
  FFun := GetProcAddress(DLLHandle, 'DataSituacaoCadastral');
  Result := String(FFun());
end;

function TFSistConsultaCNPJ.MotivoSituacaoCadastral: String;
var
  FFun: TDllMotivoSituacaoCadastral;
begin
  FFun := GetProcAddress(DLLHandle, 'MotivoSituacaoCadastral');
  Result := String(FFun());
end;

function TFSistConsultaCNPJ.SituacaoEspecial: String;
var
  FFun: TDllSituacaoEspecial;
begin
  FFun := GetProcAddress(DLLHandle, 'SituacaoEspecial');
  Result := String(FFun());
end;

function TFSistConsultaCNPJ.DataSituacaoEspecial: String;
var
  FFun: TDllDataSituacaoEspecial;
begin
  FFun := GetProcAddress(DLLHandle, 'DataSituacaoEspecial');
  Result := String(FFun());
end;

function TFSistConsultaCNPJ.CapitalSocial: String;
var
  FFun: TDllCapitalSocial;
begin
  FFun := GetProcAddress(DLLHandle, 'CapitalSocial');
  Result := String(FFun());
end;

function TFSistConsultaCNPJ.CodigoDescricaoAtividadeEconomicaPrincipal: String;
var
  FFun: TDllCodigoDescricaoAtividadeEconomicaPrincipal;
begin
  FFun := GetProcAddress(DLLHandle, 'CodigoDescricaoAtividadeEconomicaPrincipal');
  Result := String(FFun());
end;

function TFSistConsultaCNPJ.CodigoDescricaoNaturezaJuridica: String;
var
  FFun: TDllCodigoDescricaoNaturezaJuridica;
begin
  FFun := GetProcAddress(DLLHandle, 'CodigoDescricaoNaturezaJuridica');
  Result := String(FFun());
end;

function TFSistConsultaCNPJ.CodigoDescricaoAtividadeEconomicaSecundarias(Index: Integer): String;
var
  FFun: TDllCodigoDescricaoAtividadeEconomicaSecundarias;
begin
  FFun := GetProcAddress(DLLHandle, 'CodigoDescricaoAtividadeEconomicaSecundarias');
  Result := String(FFun(Index));
end;

function TFSistConsultaCNPJ.SociosNome(Index: Integer): String;
var
  FFun: TDllSociosNome;
begin
  FFun := GetProcAddress(DLLHandle, 'SociosNome');
  Result := String(FFun(Index));
end;

function TFSistConsultaCNPJ.SociosQualificacao(Index: Integer): String;
var
  FFun: TDllSociosQualificacao;
begin
  FFun := GetProcAddress(DLLHandle, 'SociosQualificacao');
  Result := String(FFun(Index));
end;

function TFSistConsultaCNPJ.SociosNomedoRepresLegal(Index: Integer): String;
var
  FFun: TDllSociosNomedoRepresLegal;
begin
  FFun := GetProcAddress(DLLHandle, 'SociosNomedoRepresLegal');
  Result := String(FFun(Index));
end;

function TFSistConsultaCNPJ.SociosQualifRepLegal(Index: Integer): String;
var
  FFun: TDllSociosQualifRepLegal;
begin
  FFun := GetProcAddress(DLLHandle, 'SociosQualifRepLegal');
  Result := String(FFun(Index));
end;

function TFSistConsultaCNPJ.SociosCount: Integer;
var
  FFun: TDllSociosCount;
begin
  FFun := GetProcAddress(DLLHandle, 'SociosCount');
  Result := Integer(FFun());
end;

function TFSistConsultaCNPJ.CodigoDescricaoAtividadeEconomicaSecundariasCount: Integer;
var
  FFun: TDllCodigoDescricaoAtividadeEconomicaSecundariasCount;
begin
  FFun := GetProcAddress(DLLHandle, 'CodigoDescricaoAtividadeEconomicaSecundariasCount');
  Result := Integer(FFun());
end;

end.
