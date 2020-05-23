unit v_Dir;

interface

uses system.SysUtils, variants, IniFiles, vcl.forms, firedac.comp.client, h_DB;

type
  TDir = class
    class function LogFile: string;
    class function LogFolder: String;
    class function ConfigFolder: string;
    class function ConfigIni: string;
    class function DatabaseIni: string;
    class function PreferencesIni: string;
    class function system: string;
    class function bin: string;
    class function bkpname: string;
    class function bkpfile: string;
    class function Relatorios: string;
    class function BackUp: string;
    class function _7z: string;
    class function _7zDLL: string;
    class function _MysqlDump: string;
    class function desktop: string;
    class function smc_mde: string;
  type
    SMC_LIGHT = class
      class function exe: string;
      class function rar: string;
      class function exe_old: string;

    end;

  type
    SMC_SERVICOS = class
      class function exe: string;
      class function exe_old: string;

    end;

  type
    NF = class
    private
      class function getNotasFiscais: string; static;
      class procedure setNotasFiscais(value: string); static;

    public
      class property Notas_Fiscais: string read getNotasFiscais write setNotasFiscais;
    end;

  type
    NFe = class
      class function Root: string;
      class function Mes: string;
      class function Entrada: string;
      class function Pendentes: string;
      class function ConfigNFe: string;
      class function Esquemas: string;
      class function Templates: string;
      class function Log: string;
      class function LogErro: string;
      class function Temporario: string;
      class function Destinadas: string;
      class function nfeServidoresHom: string;
      class function nfeServidoresProd: string;

    type
      Danfe = class
        class function Retrato: string;
        class function Paisagem: string;
      end;

    end;

  type
    NFCe = class
      class function Root: string;
      class function Mes: string;
    end;

  Type
    Temp = class
      class function Root: string;
      class function NFCe: string;
      class function NFe: string;
      class function VersionFile: string;
      class function Update: string;
      class function HTMLUpdate: string;
      class function rel_livro_saida_pdf: string;

    end;

  type
    Server = class
    const
      FULL_PATH_BACKUP = 'public_html/ftp/';
      ROOT_BACKUP = 'smc_light/clientes_backup/';
      ROOT_UPDATE = 'smc_light/update/';
      SMC_LIGHT_FILE = 'smc_light/update/smc_light.rar'; { 'smc_light/update_debug/smc_light.rar'; }

    end;

  type
    AcessoRemoto = class
      class function TeamViewer: string;
      class function AnyDesk: string;
      class function Supremo: string;
    end;

  type
    smcmde = class
      class function SMC_MDE: string;
    end;



  type
    Relatorio = class
      class function etiqueta: string;
      class function etiqueta_preview: string;
      class function rel_vendas_simples: string;
      class function livro_entrada: string;
      class function cx_movimentacao: string;
      class function rel_venda_lucratividade: string;
    end;
  end;

implementation

{ TDir }

uses h_Files, h_Functions;

class function TDir.BackUp: string;
begin
  result := TDir.system + 'backup\';
  if not DirectoryExists(result) then
    forceDirectories(StringToOleStr(result));
end;

class function TDir.bin: string;
begin
  result := TDir.system + 'bin\';
  if not DirectoryExists(result) then
    forceDirectories(StringToOleStr(result));
end;

class function TDir.smc_mde: string;
begin
  result := TDir.system + 'SMC_MDE\';
  if not DirectoryExists(result) then
    forceDirectories(StringToOleStr(result));
end;

class function TDir.bkpfile: string;
begin
  result := 'bkp_' + formatdatetime('dd_mm_yyyy', now) + '.zip';
end;

class function TDir.bkpname: string;
begin
  result := TDir.system + TDir.bkpfile;
end;

class function TDir.ConfigFolder: string;
begin
  result := TDir.system + 'config\';
  if not DirectoryExists(result) then
    forceDirectories(StringToOleStr(result));
end;

class function TDir.ConfigIni: string;
begin
  result := ConfigFolder + 'conf.ini';
  if not FileExists(result) then
    TIniFile.Create(result);
  // result := '\\PCTESTES\Users\testes\Desktop\SMC_LIGHT\config\conf.ini'
end;

class function TDir.DatabaseIni: string;
begin
  result := ConfigFolder + 'database_cfg.ini';
  if not FileExists(result) then
    TIniFile.Create(result);
end;

class function TDir.desktop: string;
begin
  result := 'C:' + GetEnvironmentVariable('HOMEPATH') + '\Desktop\';
end;

class function TDir.LogFile: string;
var
  fileName: string;
begin

  fileName := LogFolder + 'svc_' + formatdatetime('dd_mm_yyyy', now) + '.log';
  if not FileExists(fileName) then
    TFile.Create(fileName);

  result := fileName;
end;

class function TDir.LogFolder: String;
begin

  result := bin + 'Log\';
  if not DirectoryExists(result) then
    forceDirectories(StringToOleStr(result));

end;

class function TDir.PreferencesIni: string;
begin
  result := ConfigFolder + 'preferences.ini';
  if not FileExists(result) then
    TIniFile.Create(result);
end;

class function TDir.Relatorios: string;
begin
  result := TDir.system + 'relatorios\';
end;

class function TDir.NFCe.Mes: string;
var
  caminho: string;
begin
  caminho := TDir.system + 'Notas_Fiscais\NFCe\' + formatdatetime('mmyyyy', Date) + '\';
  if not DirectoryExists(caminho) then
    forceDirectories(StringToOleStr(caminho));

  result := caminho;
end;

class function TDir.NFe.ConfigNFe: string;
begin
  result := TDir.system + 'confignfe\';

  if not DirectoryExists(result) then
    forceDirectories(StringToOleStr(result));

end;

class function TDir.NFe.Entrada: string;
begin
  result := self.Mes + 'Entrada\';

  if not DirectoryExists(result) then
    forceDirectories(StringToOleStr(result));

end;

class function TDir.NFe.Esquemas: string;
begin
  result := self.ConfigNFe + 'Esquemas\';

  if not DirectoryExists(result) then
    forceDirectories(StringToOleStr(result));
end;

class function TDir.NFe.Log: string;
begin
  result := self.ConfigNFe + 'Log\';

  if not DirectoryExists(result) then
    forceDirectories(StringToOleStr(result));
end;

class function TDir.NFe.LogErro: string;
begin
  result := self.ConfigNFe + 'LogErro\';

  if not DirectoryExists(result) then
    forceDirectories(StringToOleStr(result));
end;

class function TDir.NFe.Destinadas: string;
begin
  result := self.Mes + 'Destinadas\';
  if not DirectoryExists(result) then
    forceDirectories(StringToOleStr(result));
end;

class function TDir.NFe.Mes: string;
var
  caminho: string;
begin
  caminho := TDir.system + 'Notas_Fiscais\NFe\' + formatdatetime('mmyyyy', Date) + '\';
  if not DirectoryExists(caminho) then
    forceDirectories(StringToOleStr(caminho));

  result := caminho;
end;

class function TDir.NFe.nfeServidoresHom: string;
begin
  result := self.ConfigNFe + 'nfeServidoresHom.ini';
end;

class function TDir.NFe.nfeServidoresProd: string;
begin
  result := self.ConfigNFe + 'nfeServidoresProd.ini';
end;

class function TDir.NFe.Pendentes: string;
begin
  result := self.Mes + 'Pendentes\';

  if not DirectoryExists(result) then
    forceDirectories(StringToOleStr(result));
end;

class function TDir.NFe.Root: string;
begin

  result := TDir.system + 'Notas_Fiscais\';

  if TDir.NF.Notas_Fiscais <> '' then
    result := TDir.NF.Notas_Fiscais;

  if not DirectoryExists(result) then
    forceDirectories(StringToOleStr(result));

  result := result + '\NFe\';
  if not DirectoryExists(result) then
    forceDirectories(StringToOleStr(result));
end;

class function TDir.NFe.Templates: string;
begin
  result := self.ConfigNFe + 'Templates\';

  if not DirectoryExists(result) then
    forceDirectories(StringToOleStr(result));
end;

class function TDir.NFe.Temporario: string;
begin
  result := self.ConfigNFe + 'Temporario\';

  if not DirectoryExists(result) then
    forceDirectories(StringToOleStr(result));
end;

class function TDir.system: string;
begin
  result := TFunctions.replace(extractfilepath(application.exename), 'bin\')
end;

class function TDir._7z: string;
begin
  result := TFile.quotedPath(self.bin + '7z.exe');
end;

class function TDir._7zDLL: string;
begin
  result := TFile.quotedPath(self.bin + '7z.dll');
end;

class function TDir._MysqlDump: string;
begin
  result := TFile.quotedPath(self.bin + 'mysqldump.exe');
end;

{ TDir.NFe.Danfe }

class function TDir.NFe.Danfe.Paisagem: string;
begin
  result := Relatorios + 'danfe_paisagem';
end;

class function TDir.NFe.Danfe.Retrato: string;
begin
  result := Relatorios + 'danfe_retrato';
end;

{ TDir.Temp }

class function TDir.Temp.HTMLUpdate: string;
begin
  result := TDir.Temp.Root + 'update.html';
end;

class function TDir.Temp.NFCe: string;
begin
  result := TDir.Temp.Root + 'NFCe\';
  if not DirectoryExists(result) then
    forceDirectories(StringToOleStr(result));
end;

class function TDir.Temp.NFe: string;
begin
  result := TDir.Temp.Root + 'NFe\';
  if not DirectoryExists(result) then
    forceDirectories(StringToOleStr(result));
end;

class function TDir.Temp.rel_livro_saida_pdf: string;
begin
  result := TDir.Temp.Root + 'rel_livro_entrada_pdf_' + formatdatetime('dd_mm_yyyy_HH_mm_ss', now) + '.pdf';
end;

class function TDir.Temp.Root: string;
begin
  result := TDir.system + 'temp\';
  if not DirectoryExists(result) then
    forceDirectories(StringToOleStr(result));
end;

class function TDir.Temp.Update: string;
begin
  result := TDir.system + 'update\';
  if not DirectoryExists(result) then
    forceDirectories(StringToOleStr(result));
end;

class function TDir.Temp.VersionFile: string;
begin
  result := self.Root + 'version.xml';
end;

{ TDir.SMC_LIGHT }

class function TDir.SMC_LIGHT.exe: string;
begin
  result := TDir.system + 'SMC_LIGHT.exe';
end;

class function TDir.SMC_LIGHT.exe_old: string;
begin
  result := TDir.system + 'SMC_LIGHT_old.exe';
end;

class function TDir.SMC_LIGHT.rar: string;
begin
  result := TDir.system + 'SMC_LIGHT.rar';
end;

{ TDir.SMC_SERVICOS }

class function TDir.SMC_SERVICOS.exe: string;
begin
  result := TDir.bin + 'SMC_SERVICOS.exe';
end;

class function TDir.SMC_SERVICOS.exe_old: string;
begin
  result := TDir.bin + 'SMC_SERVICOS_old.exe';
end;

class function TDir.NFCe.Root: string;
begin
  result := TDir.system + 'Notas_Fiscais\';
  if not DirectoryExists(result) then
    forceDirectories(StringToOleStr(result));

  result := result + 'NFCe\';
  if not DirectoryExists(result) then
    forceDirectories(StringToOleStr(result));
end;

{ TDir.AcessoRemoto }

class function TDir.AcessoRemoto.AnyDesk: string;
begin
  result := TDir.bin + 'anydesk.exe';
end;

class function TDir.AcessoRemoto.Supremo: string;
begin
  result := TDir.bin + 'supremo.exe';
end;

class function TDir.AcessoRemoto.TeamViewer: string;
begin
  result := TDir.bin + 'teamviewer.exe';
end;


class function TDir.smcmde.SMC_MDE: string;
begin
  result := TDir.SMC_MDE + 'SMC_MDE.exe';
end;

{ TDir.Relatorio }

class function TDir.Relatorio.cx_movimentacao: string;
begin
  result := TDir.Relatorios + 'CX_MOVIMENTACAO.fr3';
end;

class function TDir.Relatorio.etiqueta: string;
begin
  result := TDir.Relatorios + 'etiqueta.fr3';
end;

class function TDir.Relatorio.etiqueta_preview: string;
begin
  result := TDir.Relatorios + 'etiqueta_preview.fr3';
end;

class function TDir.Relatorio.livro_entrada: string;
begin
  result := TDir.Relatorios + 'LIVRO_ENTRADA.fr3';
end;

class function TDir.Relatorio.rel_vendas_simples: string;
begin
  result := TDir.Relatorios + 'rel_vendas_simples.fr3';
end;

class function TDir.Relatorio.rel_venda_lucratividade: string;
begin
  result := TDir.Relatorios + 'REL_V_LUCRATIVIDADE.fr3';
end;

{ TDir.NF }

class function TDir.NF.getNotasFiscais: string;
var
  qry: TFDquery;
begin
  result := '';

  qry := tdb.simplequery('select pasta_notas from parametros_sistema');

  if qry <> nil then
    if qry.Fields[0].AsString <> '' then
      result := qry.Fields[0].AsString;
end;

class procedure TDir.NF.setNotasFiscais(value: string);
var
  qry: TFDquery;
begin
  qry := tdb.simplequery('select count(*) from parametros_sistema');
  if qry <> nil then
    if qry.Fields[0].asInteger = 0 then
      tdb.execquery('insert into parametros_sistema(pasta_notas) values(?)', [value])
    else
      tdb.execquery('update parametros_sistema set pasta_notas = ?', [value]);

end;

end.
