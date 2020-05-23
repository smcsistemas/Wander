unit h_Files;

interface

uses winapi.windows, system.SysUtils, h_Functions, shellapi, classes, variants;

type
  TFile = class
  public
    class function Move(pSource, pDestination: string): string;

    class function Copy(pSource, pDestination: string): string;

    class procedure Open(pFile: string);

    class procedure Delete(pFile: string);

    class function Rename(pOldName, pNewName: string): string;

    class function Create(AbsoluteFileName: string): TFile;

    class function readAll(AbsoluteFileName: string): string;

    class function Append(FilePath, Content: string): string;
    class procedure CpacDpac(pFile, pPathDestination: string; pCompacFiles: Boolean = true; const sw_state: integer = SW_HIDE);
    class function quotedPath(path: string): string;
  private
    class procedure PathWork(Origem, Destino: string; work: integer); overload;
    class procedure PathWork(Origem: string; work: integer = FO_DELETE); overload;
    class function whiteSpaceResolver(path: string): pwidechar;

  end;

implementation

uses v_Dir;

class function TFile.Move(pSource, pDestination: string): string;
begin
  if not SameFileName(pSource, tdir.system) then
  begin
    if ExtractFileExt(pDestination) <> '' then
    begin
      if FileExists(pDestination) then
        self.Delete(quotedPath(pDestination));
      winapi.windows.MoveFile(pchar(pSource), pchar(pDestination));
    end
    else
      PathWork(pSource, pDestination, FO_MOVE);
    result := pDestination;
  end;
end;

class procedure TFile.Open(pFile: string);
begin
  if not FileExists(pFile) then
    raise Exception.Create(Format('Arquivo [%s] não encontrado!', [pFile]));

  ShellExecute(0, 'open', pchar(quotedPath(pFile)), nil, nil, SW_SHOWNORMAL);
end;

class procedure TFile.PathWork(Origem: string; work: integer);
var
  fos: TSHFileOpStruct;
begin
  ZeroMemory(@fos, SizeOf(fos));
  with fos do
  begin
    wFunc := work;
    fFlags := FOF_NOCONFIRMATION + FOF_NOCONFIRMMKDIR + FOF_NO_UI + FOF_RENAMEONCOLLISION + FOF_SILENT;
    pFrom := pchar(Origem + #0);
  end;
  ShFileOperation(fos);
end;

class function TFile.quotedPath(path: string): string;
begin
  result := '"' + path + '"';
end;

class function TFile.readAll(AbsoluteFileName: string): string;
var
  log: TStringList;
begin
  try
    log := TStringList.Create;
    if not FileExists(AbsoluteFileName) then
      TFile.Create(AbsoluteFileName);
    log.LoadFromFile(AbsoluteFileName);
    result := log.Text;
  except
    exit
  end;
end;

class procedure TFile.PathWork(Origem, Destino: string; work: integer);
var
  fos: TSHFileOpStruct;
begin
  ZeroMemory(@fos, SizeOf(fos));
  with fos do
  begin
    wFunc := work;
    fFlags := FOF_NOCONFIRMATION + FOF_NOCONFIRMMKDIR + FOF_NO_UI + FOF_RENAMEONCOLLISION + FOF_SILENT;
    pFrom := pchar(Origem + #0);
    pTo := pchar(Destino)
  end;
  ShFileOperation(fos);
end;

class function TFile.Rename(pOldName, pNewName: string): string;
{
  Ex:
  pOldName := D:/pasta1/arquivo.xml
  pNewName := D/pasta1/novo_nome.xml
}
var
  b: Boolean;
begin
  if not SameFileName(pOldName, tdir.system) then
  begin
    if ExtractFileExt(pOldName) <> '' then
    begin
      if FileExists(pOldName) then
        b := RenameFile(pOldName, pNewName);
    end
    else
      self.PathWork(quotedPath(pOldName), quotedPath(pNewName), FO_RENAME);
    result := pNewName;
  end;
end;

class function TFile.whiteSpaceResolver(path: string): pwidechar;
begin
  result := pwidechar(VarToStr(tfunctions.replace(path, ' ', char(32))))
end;

class procedure TFile.Delete(pFile: string);
begin
  if not SameFileName(pFile, tdir.system) then
    PathWork(pFile, FO_DELETE);
end;

class function TFile.Append(FilePath, Content: string): string;
var
  log: TStringList;
begin
  try
    log := TStringList.Create;
    if not FileExists(FilePath) then
      TFile.Create(FilePath);
    log.LoadFromFile(FilePath);
    log.Add(Content);
    log.SaveToFile(FilePath);
    result := FilePath;
  except
    exit
  end;

end;

class function TFile.Copy(pSource, pDestination: string): string;
begin
  if ExtractFileExt(pDestination) <> '' then
  begin
    if FileExists(pDestination) then
      self.Delete(quotedPath(pDestination));
    winapi.windows.CopyFile(pchar(pSource), pchar(pDestination), true);
  end
  else
    self.PathWork(pSource, pDestination, FO_COPY);
  result := pDestination;
end;

class procedure TFile.CpacDpac(pFile, pPathDestination: string; pCompacFiles: Boolean = true; const sw_state: integer = SW_HIDE);
var
  LibHandle: THandle;
  function p(a: string): string;
  var
    l, w: string;
  begin
    l := tfunctions.getSubRegex(a, '[A-Za-z]:');
    result := l + quotedPath(tfunctions.replace(a, l));
  end;

begin
  LibHandle := LoadLibrary(pwidechar(tdir._7zDLL));

  if pCompacFiles then
    tfunctions.ExecuteCommand(tdir._7z + ' -tzip a ' + p(pPathDestination) + ' ' + p(pFile), sw_state)
  else
    tfunctions.ExecuteCommand(tdir._7z + ' x ' + p(pFile) + ' -o' + p(pPathDestination) + ' -y', sw_state);

  FreeLibrary(LibHandle);
end;

class function TFile.Create(AbsoluteFileName: string): TFile;
begin
  if ExtractFileExt(AbsoluteFileName) <> '' then
    TStringList.Create.SaveToFile(AbsoluteFileName)
  else
  begin
    if not DirectoryExists(AbsoluteFileName) then
      ForceDirectories(StringToOleStr(AbsoluteFileName));
  end;
  result := self.ClassInfo;
end;

end.
