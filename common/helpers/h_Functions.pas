unit h_Functions;

interface

uses SysUtils, Variants, winapi.windows, System.classes, vcl.forms, vcl.dialogs, vcl.Graphics, vcl.controls, vcl.stdctrls,
  cxgraphics, cxGridCustomTableView, FireDac.comp.client, cxtextedit, RegExpr, WinSvc, TLHelp32,
  System.Win.registry, v_dir, v_Env, dateutils, vcl.Printers,
  cxCheckBox;

function GetConsoleWindow: HWND; stdcall; external 'kernel32';

type
  TcxViewInfoAcess = class(TcxGridTableDataCellViewInfo);
  TcxPainterAccess = class(TcxGridTableDataCellPainter);

type
  TFunctions = class
  public
    class function CleanSpecialChars(Value: String; const ReplaceWith: string = ''): string;
    class function ClearUTF8(Value: string): string;
    // Remover caracteres especiais ou substituílos por um caractere específico

    class function replace(const _value, _from, _to: Variant; const ResultType: Integer = 256): Variant; overload; static;
    class function replace(const _value: Variant; _from: array of Variant; _value_to_replace: Variant; const ResultType: Integer = 256): Variant;
      overload; static;
    class function replace(const _value, _from: Variant; const ResultType: Integer = 256): Variant; overload; static;
    class function replace(const _value: Variant; _from: array of Variant; const ResultType: Integer = 256): Variant; overload; static;
    // Substituir valores e definir tipo de retorno da variável

    class procedure Write_Log(xMessage: String);
    // Escrever Log

    class procedure ExecuteCommand(xComand: String; const sw_state: Integer = sw_hide);
    // Executar comandos no SO

    class function SearchFiles(Dir, Pattern: string): TArray<string>;
    // Buscar arquivos em um diretório por um identificador específico ou extensão

    class function LoadContent(FromFile: string): string;
    // Carregar Conteúdo de um arquivo

    class function IfThen(const __Condition: boolean; const if_True: Variant; const if_False: Variant): Variant; overload;
    class function IfThen(const ACondition: boolean; const ATrue: Char; const AFalse: Char = #0): Char; overload;
    class function IfThen(const ValueToCompare: Variant; const arrPossibilities: array of Variant; const ArrTrue: array of Variant): Variant; overload;
    class function IfThen(const __Condition: boolean; const if_True, if_False: TFDQuery): TFDQuery; overload;
    class function IfThen(const arrPossibilities: array of boolean; ArrTrue: array of Variant): Variant; overload;
    class function IfThen(const __Condition: boolean; const if_True, if_False: tobject): tobject; overload;
    // Funções para comparações diretas com retornos de valores

    class function CheckOpen(Ref: TForm): boolean;
    // Vericiar se a janela já está aberta

    class function SelectFile(CurrentDir: string = 'C:\'; Filters: string = ''): string;
    class function SelectFolder: string;
    // Abrir dialog para selecionar arquivos

    class function ColorByStatus(Value: Variant; arrValues: array of Variant; ArrColors: array of Integer): Integer;
    // Retorna cor baseada nas possibilidades descritas

    class procedure ChangeEnabled(controls: array of tcontrol; state: boolean);
    // Alterar enabled de um grupo de componentes

    class procedure ChangeChecked(controls: array of tcontrol; state: boolean);
    // Alterar checks states

    class procedure ClearFields(edits: array of TEdit); overload;
    class procedure ClearFields(form: TForm); overload;
    // Limpar Edits

    class procedure SaveToFile(const FileName, Content: string);
    // Salvar algum conteúdo para um arquivo

    class function ArrayOf(const Value: string; const ArrayFilled: array of string): boolean;
    // Verificar se todos os index de um array são identicos ao valor informado

    class procedure StripedGrid(ACanvas: TcxCanvas; AViewInfo: TcxGridTableDataCellViewInfo);
    // Zebrar cxGrid

    class function arrToStr(arrValue: array of string): string; overload;
    class function arrToStr(arrValue: TStringList): string; overload;
    class function arrToStr(arrInteger: array of Integer): string; overload;
    // transformar um array de strings em  uma string

    class procedure setImageByStatus(Value: array of Variant; IndexValue: array of Integer; ACanvas: TcxCanvas; fieldIndex: Integer; imgList: tcxImageList;
      var AViewInfo: TcxGridTableDataCellViewInfo);
    // selecionar uma imagem em um grid por um status

    class function genData(Value: string; countOf: Integer): string;
    // retorna uma determinada quantidade de caracteres definidos pelos parametros

    class function getSubRegex(const Value: string; Regex: string): string;
    // retorna os matches de uma consulta por regex

    class function matchRegex(const Value: string; regexToValidate: string): boolean;

    class function OnlyNumbers(Tecla: Char): Char;
    // permite apenas numeros nos campos das views

    class function OnlyLetters(key: Char): Char;
    // only Letters allowed into fields

    class function isKeyNumLetter(Tecla: Word): boolean;
    // verifica se a key digitada é um valor alphanumerico

    class function CheckService(nService: string): boolean;
    // veriifca se o serviço está instalado

    class function CheckProcess(const ExeName: String): Integer;
    // conta a quantidade de instancias abertas de um exe

    class function isRunning(const ExeName: string): boolean;
    // verifica se um programa está em execução

    class procedure RunOnStartup(sProgTitle, sCmdLine: string; bRunOnce: boolean);
    // escrever no registro do computador para aplicação rodar ao iniciar

    class procedure KillProcess(ExeFileName: string);
    // matar um processo

    class function CodeDecode(StrValue: String; Cryptit: boolean): String;
    // criptografar strings

    class function getPrinters: TStrings;
    // list all printers installed in the machine

    class function validatePrinter(Value: string): string;
    // validate printer

    class function getIndex(const i: Integer; arrValues: array of Variant): Variant;
    // get index in array

    class procedure configureSSLTTL;
    // configuração de conteúdo para emissão de NF

    class function AttachDisk(pathfrom: string): string;
    // mapping a disk on pc

    class function ValidateVariant(Value: Variant): Variant;
    // verifica se variant está nulo e retorna 0 caso aceite a condição

    class procedure RunExe(path: string);
    // execute a windows .exe file with following parameters /silent /nocancel

    class function GetSubArray(arrValues: array of Variant; indexToReturn: array of boolean): TArray<Variant>;
    // pass a array and mark with true or false the indexes wich must return

    class procedure changeAttr(attrs: array of Variant; Value: Variant);
    // change a group of attrs with value

    /// <summary>
    /// Verifica se um form está instanciado.
    /// Caso esteja, o mata e libera a instancia da memória
    /// </summary>
    /// <param name="referencedForm">
    /// Form a ser verificado
    /// </param>
    class procedure releaseForm(referencedForm: TForm);

    class function sumField(qry: TFDQuery; field: string): extended;

  end;

implementation

uses h_Files;

class function TFunctions.CleanSpecialChars(Value: String; const ReplaceWith: string): string;
begin
  Value := replace(Value, '/', ReplaceWith);
  Value := replace(Value, '@', ReplaceWith);
  Value := replace(Value, '$', ReplaceWith);
  Value := replace(Value, '#', ReplaceWith);
  Value := replace(Value, '!', ReplaceWith);
  Value := replace(Value, '%', ReplaceWith);
  Value := replace(Value, '¨', ReplaceWith);
  Value := replace(Value, '&', ReplaceWith);
  Value := replace(Value, '*', ReplaceWith);
  Value := replace(Value, '(', ReplaceWith);
  Value := replace(Value, ')', ReplaceWith);
  Value := replace(Value, '-', ReplaceWith);
  Value := replace(Value, '.', ReplaceWith);
  Value := replace(Value, ',', ReplaceWith);
  Value := replace(Value, #39, ReplaceWith);
  Value := replace(Value, '^', ReplaceWith);
  Value := replace(Value, '°', ReplaceWith);
  Value := replace(Value, '?', ReplaceWith);
  Value := replace(Value, 'ª', ReplaceWith);
  Value := replace(Value, '´', ReplaceWith);
  Value := replace(Value, '`', ReplaceWith);
  Value := replace(Value, '¹', ReplaceWith);
  Value := replace(Value, '²', ReplaceWith);
  Value := replace(Value, '³', ReplaceWith);
  Value := replace(Value, '£', ReplaceWith);
  Value := replace(Value, '¢', ReplaceWith);
  Value := replace(Value, '¬', ReplaceWith);
  Value := replace(Value, '§', ReplaceWith);
  Value := replace(Value, '~', ReplaceWith);
  Value := replace(Value, '+', ReplaceWith);
  Value := replace(Value, '=', ReplaceWith);
  Value := replace(Value, '"', ReplaceWith);
  Value := replace(Value, '\', ReplaceWith);
  Value := replace(Value, '|', ReplaceWith);
  Value := replace(Value, '[', ReplaceWith);
  Value := replace(Value, ']', ReplaceWith);
  Value := replace(Value, '{', ReplaceWith);
  Value := replace(Value, '}', ReplaceWith);
  Value := replace(Value, ':', ReplaceWith);
  Value := replace(Value, ';', ReplaceWith);
  Value := replace(Value, '>', ReplaceWith);
  Value := replace(Value, '<', ReplaceWith);
  Value := replace(Value, 'Ç', 'C');
  Value := replace(Value, 'ç', 'c');
  Value := replace(Value, '"', ReplaceWith);
  Value := replace(Value, 'º', ReplaceWith);
  Value := replace(Value, ':', ReplaceWith);
  result := Value;
end;

class procedure TFunctions.ClearFields(form: TForm);
var
  i: Integer;
begin
  for i := 0 to form.ComponentCount - 1 do
    if form.Components[i] is TEdit then
      TEdit(form.Components[i]).Clear;
end;

class function TFunctions.ClearUTF8(Value: string): string;

const
  arrLc: string = 'ÁÂÃÀÉÊÈÍÎÌÓÔÕÒÚÛÙáâãàéêèíîìóôõòúûùÇç';
  arrL: string = 'AAAAEEEIIIOOOOUUUaaaaeeeiiioooouuuCc';
var
  i, x: Integer;
begin
  if Value <> emptystr then
    for i := Low(arrLc) to High(arrLc) do
      for x := 1 to length(Value) do
        if Value[x] = arrLc[i] then
          Value[x] := arrL[i];

  result := Value;
end;

class function TFunctions.replace(const _value: Variant; _from: array of Variant; _value_to_replace: Variant; const ResultType: Integer): Variant;
var
  i: Integer;
  xvalue: String;
begin
  xvalue := _value;
  for i := Low(_from) to High(_from) do
    xvalue := varastype(StringReplace(xvalue, _from[i], _value_to_replace, [RFREPLACEALL]), ResultType);
  result := xvalue;
end;

class function TFunctions.replace(const _value, _from, _to: Variant; const ResultType: Integer): Variant;
var
  xvalue: Variant;
begin
  xvalue := _value;
  if (xvalue = emptystr) and (ResultType in [vardouble, varInteger, varInt64, varDate]) then
    xvalue := 0;
  result := varastype(StringReplace(xvalue, _from, _to, [RFREPLACEALL]), ResultType);
end;

class procedure TFunctions.releaseForm(referencedForm: TForm);
begin
  if TFunctions.CheckOpen(referencedForm) then
  begin
    referencedForm.Close;
    referencedForm := nil;
  end;
end;

class function TFunctions.replace(const _value: Variant; _from: array of Variant; const ResultType: Integer): Variant;
begin
  result := replace(_value, _from, '', ResultType);
end;

class function TFunctions.replace(const _value, _from: Variant; const ResultType: Integer): Variant;
begin
  result := replace(_value, _from, '', ResultType);
end;

class procedure TFunctions.Write_Log(xMessage: string);
  procedure CompacLogs;
  var
    FilesCompac: TArray<String>;
    i: smallint;
    mes_anterior, compacarq: string;
  begin
    try
      mes_anterior := formatdatetime('mm_yyyy', incmonth(date, -1));
      compacarq := TDir.LogFolder + 'SMC_LIGHT_' + mes_anterior + '.zip';
      if (formatdatetime('dd', now) = '01') and (not FileExists(compacarq)) then
      begin
        FilesCompac := SearchFiles(TDir.LogFolder, '*' + mes_anterior + '.log');
        if FilesCompac <> nil then
        begin
          for i := Low(FilesCompac) to High(FilesCompac) do
          begin
            if TFunctions.replace(FilesCompac[i], ' ') <> '' then
            begin
              TFile.CpacDpac(TDir.LogFolder + FilesCompac[i], compacarq, true);
              TFile.Delete(TDir.LogFolder + FilesCompac[i]);
            end;
          end;
          Write_Log('Logs do mês ' + mes_anterior + ' foram compactados em ' + compacarq + ' !');
        end;
      end;

    except
    end;

  end;

var
  xLogFile: TextFile;

  msg: String;
begin
  try
    CompacLogs;

    xMessage := StringReplace(xMessage, slinebreak, ' ', [RFREPLACEALL]);

    AssignFile(xLogFile, TDir.LogFile);

    if FileExists(TDir.LogFile) then
      Append(xLogFile)
    else
      Rewrite(xLogFile);

    msg := formatdatetime('[dd/mm/yyyy HH:MM:SS ', now) + 'PC(' + TEnv.MachineName + ')IP(' + TEnv.getIp(TEnv.MachineName) + ')USER(' + TEnv.username + ')]: '
      + xMessage;

    writeln(xLogFile, msg);
    CloseFile(xLogFile);
  except
    exit
  end;

end;

class procedure TFunctions.ExecuteCommand(xComand: String; const sw_state: Integer = sw_hide);
var
  tmpStartupInfo: TStartupInfo;
  tmpProcessInformation: TProcessInformation;
  tmpProgram: String;
begin
  tmpProgram := trim(xComand);
  FillChar(tmpStartupInfo, SizeOf(tmpStartupInfo), #0);

  with tmpStartupInfo do
  begin
    cb := SizeOf(TStartupInfo);
    wShowWindow := sw_hide;
    dwFlags := STARTF_USESHOWWINDOW;
    lpDesktop := nil;
    hStdOutput := 0;
  end;

  if CreateProcess(nil, PCHAR(tmpProgram), nil, nil, false, CREATE_NO_WINDOW or NORMAL_PRIORITY_CLASS, nil, nil, tmpStartupInfo, tmpProcessInformation) then
  begin
    while WaitForSingleObject(tmpProcessInformation.hProcess, 10) > 0 do
    begin
      WaitForSingleObject(tmpProcessInformation.hProcess, INFINITE);
    end;
    CloseHandle(tmpProcessInformation.hProcess);
    CloseHandle(tmpProcessInformation.hThread);
  end;

end;

class function TFunctions.SearchFiles(Dir, Pattern: string): TArray<string>;

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

class function TFunctions.LoadContent(FromFile: string): string;
var
  str_cont: TStringList;
  Content: string;
begin
  str_cont := TStringList.create;
  str_cont.LoadFromFile(FromFile);
  Content := str_cont.Text;
  str_cont.destroy;
  result := Content;
end;

class function TFunctions.IfThen(const ACondition: boolean; const ATrue: Char; const AFalse: Char = #0): Char;
begin
  if ACondition then
    result := ATrue
  else
    result := AFalse
end;

class function TFunctions.IfThen(const __Condition: boolean; const if_True: Variant; const if_False: Variant): Variant;
begin
  if __Condition then
    result := if_True
  else
    result := if_False
end;

class function TFunctions.IfThen(const ValueToCompare: Variant; const arrPossibilities: array of Variant; const ArrTrue: array of Variant): Variant;
var
  i: Integer;
begin
  for i := Low(arrPossibilities) to High(arrPossibilities) do
    if ValueToCompare = arrPossibilities[i] then
    begin
      result := ArrTrue[i];
      Break;
    end
    else
      result := ValueToCompare;
end;

class function TFunctions.IfThen(const __Condition: boolean; const if_True, if_False: TFDQuery): TFDQuery;
begin
  if __Condition then
    result := if_True
  else
    result := if_False;
end;

class function TFunctions.IfThen(const arrPossibilities: array of boolean; ArrTrue: array of Variant): Variant;
var
  i: Integer;
begin
  for i := Low(arrPossibilities) to High(arrPossibilities) do
    if arrPossibilities[i] then
    begin
      result := ArrTrue[i];
      Break;
    end;
end;

class function TFunctions.CheckOpen(Ref: TForm): boolean;

var
  i: Word;
begin
  result := false;

  for i := 0 to Screen.FormCount - 1 do
    if Screen.forms[i] = Ref then
    begin
      if (Ref.Enabled = true) and (Ref.Visible = true) then
        Ref.SetFocus;
      result := true;
      Break;
    end;
end;

class function TFunctions.SelectFile(CurrentDir: string = 'C:\'; Filters: string = ''): string;

var
  openDialog: topendialog;
begin
  try
    openDialog := topendialog.create(nil);
    openDialog.InitialDir := CurrentDir;
    openDialog.Options := [ofFileMustExist];
    openDialog.Filter := Filters + '|Todos os Tipos|*.*';
    openDialog.FilterIndex := 1;
    if openDialog.Execute then
      result := openDialog.FileName
    else
      result := emptystr;
  finally
    openDialog.Free;
  end;

end;

class function TFunctions.SelectFolder: string;

var
  openDialog: TFileOpenDialog;
begin
  try
    openDialog := TFileOpenDialog.create(nil);
    openDialog.Options := [fdoPickFolders, fdoPathMustExist, fdoForceFileSystem];
    openDialog.OkButtonLabel := 'Selecionar pasta';
    if openDialog.Execute then
      result := openDialog.FileName
    else
      result := emptystr;
  finally
    openDialog.Free;
  end;

end;

class function TFunctions.ColorByStatus(Value: Variant; arrValues: array of Variant; ArrColors: array of Integer): Integer;

var
  kindof, i: Integer;
begin
  result := clWhite;
  kindof := varType(Value) and VarTypeMask;
  if (kindof = varInteger) or (kindof = vardouble) then
  begin
    if Value <= arrValues[0] then
      result := ArrColors[0]
    else if (Value > arrValues[0]) and (Value < arrValues[1]) then
      result := ArrColors[1]
    else if Value >= arrValues[1] then
      result := ArrColors[2]
  end
  else
  begin
    for i := Low(arrValues) to High(arrValues) do
      if Value = arrValues[i] then
        result := ArrColors[i]
  end;
end;

class procedure TFunctions.configureSSLTTL;
begin
  TFunctions.ExecuteCommand('reg add "HKCU\Software\Microsoft\Windows\CurrentVersion\Internet Settings" /f /v "SecureProtocols" /t REG_DWORD /d "160"');
end;

class function TFunctions.arrToStr(arrValue: TStringList): string;
var
  arr_str: array of string;
  i: Integer;
begin

  SetLength(arr_str, arrValue.Count);
  for i := Low(arr_str) to High(arr_str) do
    arr_str[i] := arrValue.Strings[i];

  result := self.arrToStr(arr_str);
end;

class function TFunctions.AttachDisk(pathfrom: string): string;
type
  TTipoDrive = (tdRemovivel, tdFixo, tdRede, tdCDROM, tdRAMDISK, tdNenhum);

  function GetTipoDrive(LetraDrive: Char): TTipoDrive;
  begin
    case GetDriveType(PCHAR(LetraDrive + '\')) of
      DRIVE_REMOVABLE:
        result := tdRemovivel;
      DRIVE_FIXED:
        result := tdFixo;
      DRIVE_REMOTE:
        result := tdRemovivel;
      DRIVE_CDROM:
        result := tdCDROM;
      DRIVE_RAMDISK:
        result := tdRAMDISK;
    else
      // DRIVE_NO_ROOT_DIR :
      result := tdNenhum;
    end;
  end;

  function DriveExist(LetrDrive: Char): boolean;
  begin
    result := GetTipoDrive(LetrDrive) <> tdNenhum;
  end;

var
  err: DWord;
  PServer, PLetra: PCHAR;
  i: Integer;
Begin
  PLetra := 'M:';
  if not DriveExist(Char(PLetra)) then
  begin
    PServer := stringtoolestr(pathfrom + #0);
    WNetAddConnection(PServer, '', PLetra);
  end;
End;

class procedure TFunctions.changeAttr(attrs: array of Variant; Value: Variant);
var
  i: Integer;
begin
  for i := Low(attrs) to High(attrs) do
    attrs[i] := Value;
end;

class procedure TFunctions.ChangeChecked(controls: array of tcontrol; state: boolean);
var
  i: Integer;
begin
  for i := 0 to length(controls) - 1 do
  begin
    if controls[i] is TCheckBox then
      TCheckBox(controls[i]).Checked := state
    else if controls[i] is TcxCheckBox then
      TcxCheckBox(controls[i]).Checked := state
  end;
end;

class procedure TFunctions.ChangeEnabled(controls: array of tcontrol; state: boolean);
var
  i: Integer;
begin
  for i := 0 to length(controls) - 1 do
  begin
    controls[i].Enabled := state;
  end;
end;

class procedure TFunctions.ClearFields(edits: array of TEdit);
var
  i: Integer;
begin
  for i := 0 to length(edits) - 1 do
  begin
    edits[i].Text := '';
  end;
end;

class procedure TFunctions.SaveToFile(const FileName, Content: string);
var
  xxFile: TStringList;
begin
  xxFile := TStringList.create;
  xxFile.Text := Content;
  xxFile.SaveToFile(FileName);
  xxFile.Free;
end;

class function TFunctions.ArrayOf(const Value: string; const ArrayFilled: array of string): boolean;
var
  i: Integer;
begin
  for i := Low(ArrayFilled) to High(ArrayFilled) do
    if Value = ArrayFilled[i] then
      result := true
    else
    begin
      result := false;
      Break;
    end;
end;

class procedure TFunctions.StripedGrid(ACanvas: TcxCanvas; AViewInfo: TcxGridTableDataCellViewInfo);
begin
  if Odd(AViewInfo.GridRecord.RecordIndex) Then
    ACanvas.Brush.Color := clWebGainsboro
  else
    ACanvas.Brush.Color := clWhite;

  if AViewInfo.GridRecord.Selected then
  begin
    ACanvas.Brush.Color := rgb(24, 108, 242);
    ACanvas.font.Color := clWhite;
  end;

end;

class function TFunctions.sumField(qry: TFDQuery; field: string): extended;
var
  _qry: TFDQuery;
begin
  result := 0;
  _qry := qry;
  _qry.Fetchall;
  _qry.First;
  with _qry do
    while not eof do
    begin
      result := result + fieldbyname(field).AsExtended;
      next;
    end;
end;

class function TFunctions.validatePrinter(Value: string): string;
var
  hostname: string;
begin

  hostname := '\\' + TEnv.MachineName + '\';

  result := TFunctions.IfThen(copy(Value, 1, length(hostname)) = hostname, replace(Value, hostname), Value);

end;

class function TFunctions.ValidateVariant(Value: Variant): Variant;
begin
  result := TFunctions.IfThen(Value = null, 0, varastype(Value, vardouble));
end;

class function TFunctions.matchRegex(const Value: string; regexToValidate: string): boolean;
begin
  result := (self.getSubRegex(Value, regexToValidate) <> '');
end;

class function TFunctions.arrToStr(arrValue: array of string): string;
var
  i: Integer;
begin
  if length(arrValue) <> 0 then
  begin
    result := arrValue[0];
    for i := 1 to High(arrValue) do
      result := result + ',' + arrValue[i];
  end;
end;

class procedure TFunctions.setImageByStatus(Value: array of Variant; IndexValue: array of Integer; ACanvas: TcxCanvas; fieldIndex: Integer;
  imgList: tcxImageList; var AViewInfo: TcxGridTableDataCellViewInfo);
var
  APainter: TcxPainterAccess;

  procedure SetImage(Value: array of Variant; IndexValue: array of Integer);
  var
    i: Integer;
  begin
    for i := Low(Value) to High(Value) do
      if AViewInfo.GridRecord.Values[fieldIndex] = Value[i] then
        with AViewInfo.ClientBounds do
          imgList.Draw(ACanvas.Canvas, Left + 3, Top + 1, IndexValue[i]);
  end;

begin
  if not(AViewInfo.EditViewInfo is TcxCustomTextEditViewInfo) then
    exit;
  APainter := TcxPainterAccess(TcxViewInfoAcess(AViewInfo).GetPainterClass.create(ACanvas, AViewInfo));
  with APainter do
  begin
    try
      with TcxCustomTextEditViewInfo(AViewInfo.EditViewInfo).TextRect do
        Left := Left + imgList.Width + 1;

      DrawContent;
      DrawBorders;

      SetImage(Value, IndexValue);

    finally
      Free;
    end;
  end;
end;

class function TFunctions.genData(Value: string; countOf: Integer): string;
var
  i: Integer;
begin
  for i := 1 to countOf do
    result := result + Value;
end;

class function TFunctions.getIndex(const i: Integer; arrValues: array of Variant): Variant;
begin
  result := arrValues[i]
end;

class function TFunctions.getPrinters: TStrings;
var
  prt: string;
  prtList: TStringList;
begin

  result := nil;

  prtList := TStringList.create;
  for prt in printer.Printers do
    prtList.Append(IfThen(copy(prt, 1, 2) = '\\', prt, '\\' + TEnv.MachineName + '\' + prt));

  if prtList.Count <> 0 then
    result := prtList;

end;

class function TFunctions.GetSubArray(arrValues: array of Variant; indexToReturn: array of boolean): TArray<Variant>;
var
  i: Integer;
begin
  if length(arrValues) <> length(indexToReturn) then
    raise Exception.create('[GetSubArrayError]: Arrays must have the same length.');

  SetLength(result, length(arrValues));

  for i := Low(arrValues) to High(arrValues) do
    if indexToReturn[i] then
      result[i] := arrValues[i];

end;

class function TFunctions.getSubRegex(const Value: string; Regex: string): string;
var
  r: TRegExpr;
begin
  result := '';
  r := TRegExpr.create;
  try
    r.Expression := Regex;
    if r.Exec(Value) then
      REPEAT
        result := result + r.Match[0];
      UNTIL not r.ExecNext;
  finally
    r.Free;
  end;
end;

class function TFunctions.OnlyLetters(key: Char): Char;
begin

  if not(key in ['a' .. 'z', 'A' .. 'Z', Char(8), Char(3), Char(22), Char(32), Char(24), Char(127)]) then
    result := #0
  else
    result := key;
  { Char(3) = Ctrl C
    Char(8) = BackSpace
    Char(22) = Ctrl V
    Char(24) = Ctrl X
    Char(127) = Del }

end;

class function TFunctions.OnlyNumbers(Tecla: Char): Char;
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

class function TFunctions.isKeyNumLetter(Tecla: Word): boolean;
begin
  if Tecla in [Word('0') .. Word('9'), Word('a') .. Word('z'), Word('A') .. Word('Z'), Word(VK_BACK), Word(VK_DELETE)] then
    result := true
  else
    result := false;
end;

class function TFunctions.CheckService(nService: string): boolean;
const
  SERVICE_KERNEL_DRIVER = $00000001;
  SERVICE_FILE_SYSTEM_DRIVER = $00000002;
  SERVICE_ADAPTER = $00000004;
  SERVICE_RECOGNIZER_DRIVER = $00000008;
  SERVICE_DRIVER = (SERVICE_KERNEL_DRIVER or SERVICE_FILE_SYSTEM_DRIVER or SERVICE_RECOGNIZER_DRIVER);
  SERVICE_WIN32_OWN_PROCESS = $00000010;
  SERVICE_WIN32_SHARE_PROCESS = $00000020;
  SERVICE_WIN32 = (SERVICE_WIN32_OWN_PROCESS or SERVICE_WIN32_SHARE_PROCESS);
  SERVICE_INTERACTIVE_PROCESS = $00000100;
  SERVICE_TYPE_ALL = (SERVICE_WIN32 or SERVICE_ADAPTER or SERVICE_DRIVER or SERVICE_INTERACTIVE_PROCESS);
  procedure ServiceGetList(sMachine: string; dwServiceType, dwServiceState: DWord; slServicesList: TStrings);
  const
    cnMaxServices = 4096;
  type
    TSvcA = array [0 .. cnMaxServices] of TEnumServiceStatus;
    PSvcA = ^TSvcA;
  var
    j: Integer;
    schm: SC_Handle;
    nServices, nResumeHandle, nBytesNeeded: DWord;
    ssa: PSvcA;
    wideStr: pwidechar;
  begin

    schm := OpenSCManager(PCHAR(sMachine), Nil, SC_MANAGER_ALL_ACCESS);
    if (schm > 0) then
    begin
      nResumeHandle := 0;
      New(ssa);
      EnumServicesStatus(schm, dwServiceType, dwServiceState, ssa^[0], SizeOf(ssa^), nBytesNeeded, nServices, nResumeHandle);
      for j := 0 to nServices - 1 do
      begin
        wideStr := ssa^[j].lpServiceName;
        slServicesList.Add(String(AnsiString(wideStr)));
      end;

      Dispose(ssa);
      CloseServiceHandle(schm);
    end;
  end;

var
  list: TStringList;
  i: Integer;
begin

  list := TStringList.create;
  ServiceGetList('', SERVICE_WIN32, SERVICE_STATE_ALL, list);
  result := (list.IndexOf(nService) <> -1);
  list.Free;

end;

class function TFunctions.CheckProcess(const ExeName: String): Integer;
var
  ContinueLoop: BOOL;
  FSnapshotHandle: THandle;
  FProcessEntry32: TProcessEntry32;
begin
  try
    FSnapshotHandle := CreateToolhelp32Snapshot(TH32CS_SNAPPROCESS, 0);
    FProcessEntry32.dwSize := SizeOf(FProcessEntry32);
    ContinueLoop := Process32First(FSnapshotHandle, FProcessEntry32);
    result := 0;
    while Integer(ContinueLoop) <> 0 do
    begin
      if ((UpperCase(extractfilename(FProcessEntry32.szExeFile)) = UpperCase(ExeName)) or (UpperCase(FProcessEntry32.szExeFile) = UpperCase(ExeName))) then
        Inc(result);
      ContinueLoop := Process32Next(FSnapshotHandle, FProcessEntry32);
    end;
    CloseHandle(FSnapshotHandle);
  except
    on e: Exception do
    begin
      raise Exception.create(e.Message + slinebreak + 'Erro ao iniciar o sistema!');
      Write_Log(e.Message + slinebreak + 'Erro ao iniciar o sistema!');
    end;

  end;
end;

class function TFunctions.isRunning(const ExeName: string): boolean;
begin
  result := (CheckProcess(ExeName) > 0);
end;

class procedure TFunctions.RunExe(path: string);
begin
  self.ExecuteCommand(path + ' /verysilent /nocancel');
end;

class procedure TFunctions.RunOnStartup(sProgTitle, sCmdLine: string; bRunOnce: boolean);

var
  sKey: string;
  reg: TRegIniFile;
begin
  if (bRunOnce) then
    sKey := 'Once'
  else
    sKey := '';

  reg := TRegIniFile.create('');
  reg.RootKey := HKEY_LOCAL_MACHINE;
  reg.WriteString('Software\Microsoft' + 'Windows\CurrentVersion\Run\' + sKey + #0, sProgTitle, sCmdLine);
  reg.Free;
end;

class procedure TFunctions.KillProcess(ExeFileName: string);
const
  PROCESS_TERMINATE = $0001;
var
  ContinueLoop: BOOL;
  FSnapshotHandle: THandle;
  FProcessEntry32: TProcessEntry32;
begin

  FSnapshotHandle := CreateToolhelp32Snapshot(TH32CS_SNAPPROCESS, 0);
  FProcessEntry32.dwSize := SizeOf(FProcessEntry32);
  ContinueLoop := Process32First(FSnapshotHandle, FProcessEntry32);

  while Integer(ContinueLoop) <> 0 do
  begin
    if ((UpperCase(extractfilename(FProcessEntry32.szExeFile)) = UpperCase(ExeFileName)) or (UpperCase(FProcessEntry32.szExeFile) = UpperCase(ExeFileName)))
    then
      TerminateProcess(OpenProcess(PROCESS_TERMINATE, BOOL(0), FProcessEntry32.th32ProcessID), 0);
    ContinueLoop := Process32Next(FSnapshotHandle, FProcessEntry32);
  end;
  CloseHandle(FSnapshotHandle);
end;

class function TFunctions.CodeDecode(StrValue: String; Cryptit: boolean): String;

var
  Simbolos: array [0 .. 2] of String;
  x: Integer;
begin
  Simbolos[1] := 'ABCDEFGHIJLMNOPQRSTUVXZYWKabcdefghijlmnopqrstuvxzywk1234567890 ~!@#$%^&*()/_-';
  Simbolos[2] := 'ÂÀ©Øû×ƒçêùÿ5Üø£úñÑªº¿®¬¼ëèïÙýÄÅÉæÆôöò»ÁáâäàåíóÇüé¾¶§÷ÎÏ-+ÌÓß¸°¨·¹³²Õµþîì¡«½│♦○';
  if Cryptit then
  begin
    for x := 1 to length(trim(StrValue)) do
      if pos(copy(StrValue, x, 1), Simbolos[1]) > 0 then
        result := result + copy(Simbolos[2], pos(copy(StrValue, x, 1), Simbolos[1]), 1);
  end
  else
  begin
    for x := 1 to length(trim(StrValue)) do
      if pos(copy(StrValue, x, 1), Simbolos[2]) > 0 then
        result := result + copy(Simbolos[1], pos(copy(StrValue, x, 1), Simbolos[2]), 1);
  end;
end;

class function TFunctions.IfThen(const __Condition: boolean; const if_True, if_False: tobject): tobject;
begin
  if __Condition then
    result := if_True
  else
    result := if_False;
end;

class function TFunctions.arrToStr(arrInteger: array of Integer): string;
var
  arrString: array of string;
  i: Integer;
begin
  SetLength(arrString, length(arrInteger));
  for i := Low(arrInteger) to High(arrInteger) do
    arrString[i] := IntToStr(arrInteger[i]);

  result := TFunctions.arrToStr(arrString);
end;

end.
