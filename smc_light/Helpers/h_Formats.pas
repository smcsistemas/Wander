unit h_Formats;

interface

uses system.sysutils, h_Functions, h_Checks, variants;

type
  TFormats = class(TObject)
  public
    class function Coin(const value: Variant; const DecimalPlaces: integer = 2; const ResultType: integer = vardouble): Variant;

    class function Money(const value: Variant): string;

    class function DateTime(const value: TDateTime; const Pattern: string = 'dd/mm/yyyy HH:MM:SS'): String;

    class function CNPJ(const value: String): string;

    class function CPF(const value: String): string;

    class function CEP(const value: String): string;

    class function Phone(const value: String): string;

    class function UC(value: String): String;

    class function Percent(const value: Extended): string;
  end;

type
  TUnformats = class(TObject)
  public
    class function Coin(const value: String; const DecimalPlaces: integer = 2; const ResultType: integer = vardouble): Variant;
    class function CPF(const value: String): string;

  end;

implementation

{ TFormats }

class function TFormats.Coin(const value: Variant; const DecimalPlaces: integer = 2; const ResultType: integer = vardouble): Variant;
  function innerFormat: Variant;
  var
    strTag, arrTagStr, intPart, fraPart, fraPartAux, Separador: string;
    index, x: integer;
  begin
    Separador := ',';
    fraPart := '';
    intPart := '';
    arrTagStr := '';
    strTag := '';
    fraPartAux := '';
    index := 0;
    if not TChecks.zero(value) then
    begin
      arrTagStr := FloatToStr(value);
      index := AnsiPos(',', arrTagStr);
      if index <> 0 then
      begin
        for x := 1 to index - 1 do
          intPart := intPart + arrTagStr[x]; { Parte Inteira }
        fraPartAux := copy(arrTagStr, index + 1, length(arrTagStr)); { Parte Fracinária }
        for x := 1 to DecimalPlaces do
          if length(fraPartAux) >= x then
            fraPart := fraPart + fraPartAux[x]
          else
            fraPart := fraPart + '0';
      end
      else
      begin
        intPart := arrTagStr;
        fraPart := TFunctions.genData('0', DecimalPlaces)
      end;
      strTag := intPart + Separador + fraPart;
    end
    else
      strTag := '0' + Separador + TFunctions.genData('0', DecimalPlaces);
    result := varastype(strTag, ResultType);
  end;

begin
  if TChecks.zero(value) then
    result := TFunctions.IfThen(ResultType, [varString, vardouble], ['0,' + TFunctions.genData('0', DecimalPlaces), 0])
  else
    result := innerFormat;
end;

class function TFormats.CPF(const value: String): string;
begin
  if value <> '' then
    result := copy(value, 0, 3) + '.' + copy(value, 3, 3) + '.' + copy(value, 6, 3) + '-' + copy(value, 9, 2);
end;

class function TFormats.DateTime(const value: TDateTime; const Pattern: string = 'dd/mm/yyyy HH:MM:SS'): String;
begin
  result := formatdatetime(Pattern, value);
end;

class function TFormats.Money(const value: Variant): string;
begin
  result := 'R$ ' + formatfloat('###,##0.00', self.Coin(value, vardouble));
end;

class function TFormats.Phone(const value: String): string;
begin
  if value <> '' then
  begin
    if length(value) = 8 then
      result := copy(value, 0, 4) + '-' + copy(value, 5, 4);

    if length(value) = 10 then
      result := '(' + copy(value, 0, 2) + ')' + copy(value, 3, 4) + '-' + copy(value, 7, 4);

    if length(value) = 9 then
      result := copy(value, 0, 5) + '-' + copy(value, 5, 4);

    if length(value) = 11 then
      result := '(' + copy(value, 0, 2) + ')' + copy(value, 3, 5) + '-' + copy(value, 8, 4);
  end;
end;

class function TFormats.UC(value: String): String;
begin
  result := UpperCase(value);
end;

class function TFormats.CEP(const value: String): string;
begin
  if value <> '' then
    result := copy(value, 0, 5) + '-' + copy(value, 5, 3)
end;

class function TFormats.CNPJ(const value: String): string;
begin
  if value <> '' then
    result := copy(value, 0, 2) + '.' + copy(value, 3, 3) + '.' + copy(value, 6, 3) + '/' + copy(value, 9, 4) + '-' + copy(value, 13, 2);
end;

class function TFormats.Percent(const value: Extended): string;
begin
  result := FloatToStr(value) + ' %';
end;

{ TUnformats }

class function TUnformats.Coin(const value: String; const DecimalPlaces, ResultType: integer): Variant;
var
  xvar: Variant;
begin
  xvar := TFunctions.replace(value, ['R$', ' '], vardouble);
  result := TFormats.Coin(Extended(xvar), DecimalPlaces, ResultType)
end;

class function TUnformats.CPF(const value: String): string;
begin
  result := TFunctions.replace(value, [' ', '.', '-', '_']);
end;

end.
