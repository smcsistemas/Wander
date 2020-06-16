//Verificado automaticamente em 16/06/2020 09:27
unit h_nf_Formats;

interface

uses Sysutils, dateutils, h_functions, c_Globals;

type
  TNF_Formats = class(TObject)
    class function Date(value: String): TDateTime;
    class function Decimal(value: String): Extended;
  end;

  TNF_UnFormats = class(TObject)
    class function Date(value: TDateTime; TimeZone: boolean = true): string;
  end;

implementation

{ TNF_Formats }

class function TNF_Formats.Date(value: String): TDateTime;
  function INF(xvalue: String; start, stop: integer): integer;
  begin
    result := StrToInt(Copy(xvalue, start, stop));
  end;

var
  yyyy, mm, dd, hh, mn, ss: integer;
begin
  result := NullDate;

  if value <> '' then
  begin
    yyyy := INF(value, 0, 4);
    mm := INF(value, 6, 2);
    dd := INF(value, 9, 2);
    hh := INF(value, 12, 2);
    mn := INF(value, 15, 2);
    ss := INF(value, 18, 2);
    result := EncodeDateTime(yyyy, mm, dd, hh, mn, ss, 0);
  end;
end;

class function TNF_Formats.Decimal(value: String): Extended;
begin
  result := TFunctions.replace(value, '.', ',', varDouble);
end;

{ TNF_UnFormats }

class function TNF_UnFormats.Date(value: TDateTime; TimeZone: boolean = true): string;
begin
  result := formatdatetime('yyyy-mm-dd', value) + 'T' + formatdatetime('HH:MM:SS', value) + TFunctions.ifthen(TimeZone, '-04:00', '');
end;

end.
