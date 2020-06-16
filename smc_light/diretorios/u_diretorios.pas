//Verificado automaticamente em 16/06/2020 09:27
unit u_diretorios;

interface

uses
  SysUtils, Vcl.Forms, firedac.comp.client, h_DB, v_Dir;

function Xml_Autorizadas(data_evento: tdatetime = 0): string;
{ Pasta das xmls autorizadas }

function Xml_Canceladas(data_evento: tdatetime = 0): string;
{ Pasta das xmls canceladas }

function Xml_Pendentes(data_evento: tdatetime = 0): string;
{ Pasta das xmls pendendetes }

function Xml_Entrada(data_evento: tdatetime = 0): string;
{ Pasta para xml de entrada }

function Xml_Inutilizadas(data_evento: tdatetime = 0): string;
{ Pasta das xmls inutilizadas }

function xml_Eventos: string;
{ Pasta dos eventos das xmls }

function Z_NFCeMesAno(event_date: tdatetime = 0): string;
{ Retorna Sistema\Fiscal\NFCe\ddAAAA\ }

function TabelaIBPT: string;
{ Retorna Sistema\TabelaIBPT\ }

function ConfIni: string;
{ \Config\Config.ini }

function config: string;
{ \config\ }

function PathExe: string;
{ ..\ }

function Danfce: string;
{ ..\templates\vm50b\Danfce\retrato.rtm }

function Danfe_Retrato: string;

function Danfe_Paisagem: string;

function relatorios: string;
{ \relatorios\ }

function confignfce: string;
{ \confignfce\ }

function confignfe: string;
{ \confignfce\ }

function lib7z: string;
{ \7z\ }

function xml_contingencia(data_evento: tdatetime = 0): string;
{ \Pasta das xmls emitidas em contingencia }

function ArquivosFiscais: string;
{ ..\Notas_Fiscais\Arquivos_Fiscais\ }

function Preferences: string;
{ ..\config\.preferences.ini }

function database_cfg: string;

function db_sqlite: string;

procedure setModeloNF(Modelo: string = '65');

var
  tpNF: string;

implementation

uses u_funcoes;

function xml_contingencia(data_evento: tdatetime = 0): string;
var
  Contingencia: string;
begin
  Contingencia := Concat(Z_NFCeMesAno(data_evento), 'Contingencia\');
  if not DirectoryExists(Contingencia) then
    forceDirectories(StringToOleStr(Contingencia));
  Result := doublepathbar(Contingencia);
end;

function ArquivosFiscais: string;
var
  ArqFisc: string;
begin
  ArqFisc := Concat(PathExe, 'Notas_Fiscais\', 'Arquivos_Fiscais\');
  if not DirectoryExists(ArqFisc) then
    forceDirectories(StringToOleStr(ArqFisc));
  Result := doublepathbar(ArqFisc);
end;

function Xml_Autorizadas(data_evento: tdatetime = 0): string;
var
  Autorizadas: string;
begin
  Autorizadas := Concat(Z_NFCeMesAno(data_evento), 'Autorizadas\');
  if not DirectoryExists(Autorizadas) then
    forceDirectories(StringToOleStr(Autorizadas));
  Result := Autorizadas;

end;

function Xml_Canceladas(data_evento: tdatetime = 0): string;
var
  Canceladas: string;
begin
  Canceladas := Concat(Z_NFCeMesAno(data_evento), 'Canceladas\');
  if not DirectoryExists(Canceladas) then
    forceDirectories(StringToOleStr(Canceladas));
  Result := Canceladas;
end;

function Xml_Pendentes(data_evento: tdatetime = 0): string;
var
  Pendentes: string;
begin
  Pendentes := Concat(Z_NFCeMesAno(data_evento), 'Pendentes\');
  if not DirectoryExists(Pendentes) then
    forceDirectories(StringToOleStr(Pendentes));
  Result := Pendentes;
end;

function Xml_Entrada(data_evento: tdatetime = 0): string;
var
  Entrada: string;
begin
  Entrada := Concat(Z_NFCeMesAno(data_evento), 'Entrada\');
  if not DirectoryExists(Entrada) then
    forceDirectories(StringToOleStr(Entrada));
  Result := Entrada;
end;

function Xml_Inutilizadas(data_evento: tdatetime = 0): string;
var
  Inutilizadas: string;
begin
  Inutilizadas := Concat(Z_NFCeMesAno(data_evento), 'Inutilizadas\');
  if not DirectoryExists(Inutilizadas) then
    forceDirectories(StringToOleStr(Inutilizadas));
  Result := Inutilizadas;
end;

function xml_Eventos: string;
var
  Lotes: string;
begin
  Lotes := Concat(Z_NFCeMesAno, 'Eventos\');
  if not DirectoryExists(Lotes) then
    forceDirectories(StringToOleStr(Lotes));
  Result := Lotes;
end;

function Z_NFCeMesAno(event_date: tdatetime = 0): string;
var
  fiscal, m_NFCeMesAno, mmaaaa: string;
begin
  fiscal := PathExe + 'Notas_Fiscais\';

  if tdir.nf.notas_fiscais <> '' then
    fiscal := tdir.nf.notas_fiscais;

  mmaaaa := Concat(formatdatetime('mm', event_date), formatdatetime('yyyy', event_date), '\');
  m_NFCeMesAno := Concat(fiscal, '\NFCe\', mmaaaa);
  Result := m_NFCeMesAno;
end;

function TabelaIBPT: string;
var
  IBPT: string;
begin
  IBPT := Concat(PathExe, 'TabelaIBPT\');
  if not DirectoryExists(IBPT) then
    forceDirectories(StringToOleStr(IBPT));
  Result := IBPT;
end;

function ConfIni: string;
var
  Ini: string;
begin
  Ini := config;
  if not DirectoryExists(Ini) then
  begin
    forceDirectories(StringToOleStr(Ini));
  end;
  Result := config + 'conf.ini'
  // Result := '\\DEVSMC-DEV\Debug\config\conf.ini';
end;

function config: string;
var
  Configpath: string;
begin
  Configpath := PathExe + 'config\';
  if not DirectoryExists(Configpath) then
  begin
    forceDirectories(StringToOleStr(Configpath));
  end;
  Result := Configpath;
end;

function Preferences: string;
begin
  Result := config;
  if not DirectoryExists(Result) then
  begin
    forceDirectories(StringToOleStr(Result));
  end;
  Result := config + 'preferences.ini';

  // Result := '\\DEVSMC-DEV\Debug\config\preferences.ini';
end;

function database_cfg: string;
begin
  Result := config + 'database_cfg.ini';
end;

function lib7z: string;
var
  s7z: string;
begin
  s7z := config + '7z';
  Result := s7z;
end;

function PathExe: string;
begin
  Result := ExtractFilePath(Application.ExeName);
end;

function Danfce: string;
begin
  if fileexists(relatorios + 'danfce65.rtm') then
    Result := relatorios + 'danfce65.rtm'
  else
    Result := confignfce + '\templates\vm50b\Danfce\retrato.rtm';
end;

function relatorios: string;
begin
  Result := PathExe + '\relatorios\';
end;

function confignfce: string;
var
  confnfce: string;
begin
  confnfce := PathExe + 'confignfce\';
  if not DirectoryExists(confnfce) then
  begin
    forceDirectories(StringToOleStr(confnfce));
  end;
  Result := confnfce;
end;

function Danfe_Retrato: string;
begin
  Result := relatorios + 'danfe55_retrato.rtm';
end;

function Danfe_Paisagem: string;
begin
  Result := relatorios + 'danfe55_paisagem.rtm';
end;

function confignfe: string;
var
  confnfe: string;
begin
  confnfe := PathExe + 'confignfe\';
  if not DirectoryExists(confnfe) then
  begin
    forceDirectories(StringToOleStr(confnfe));
  end;
  Result := confnfe;
end;

function db_sqlite: string;
begin
  Result := PathExe + 'min.db';
end;

procedure setModeloNF(Modelo: string = '65');
begin
  tpNF := Modelo;
end;

end.
