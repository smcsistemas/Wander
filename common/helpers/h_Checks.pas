unit h_Checks;

interface

uses SysUtils, Variants, h_Functions, system.Math;

Type
  TChecks = class(TObject)
  public
    class function CPF(const CPF: string): string; //
    class function CNPJ(const CNPJ: string): string; //
    class function CanStrToNumber(const strValue: string): boolean; // Valor contém apenas números

    class function Negative(const Value: Extended): boolean; // Valor < 0
    class function Positive(const Value: Extended): boolean; // Valor > 0
    class function Zero(const Value: Extended): boolean; // Valor = 0
    class function Equals(const Value: Extended; const ValueToCompare: Extended): boolean; // Valor1 = Valor2
    class function Greater(const Value: Extended; const ValueToCompare: Extended): boolean; // Valor1 > Valor2
    class function GreaterEquals(const Value: Extended; const ValueToCompare: Extended): boolean; // Valor1 >= Valor2
    class function Less(const Value: Extended; const ValueToCompare: Extended): boolean; // Valor1 < Valor2
    class function LessEquals(const Value: Extended; const ValueToCompare: Extended): boolean; // Valor1 <= Valor2
    class function dateIsNull(const Value: TDate): boolean;

  end;

implementation

class function TChecks.CanStrToNumber(const strValue: string): boolean;
var
  __var_type: Extended;
begin
  result := TryStrToFloat(strValue, __var_type);
end;

class function TChecks.Equals(const Value, ValueToCompare: Extended): boolean;
begin
  result := (comparevalue(Value, ValueToCompare) = 0);
end;

class function TChecks.Greater(const Value, ValueToCompare: Extended): boolean;
begin
  result := (comparevalue(Value, ValueToCompare) = 1);
end;

class function TChecks.GreaterEquals(const Value, ValueToCompare: Extended): boolean;
begin
  result := (Greater(Value, ValueToCompare) or Equals(Value, ValueToCompare));
end;

class function TChecks.dateIsNull(const Value: TDate): boolean;
begin
  result := (formatdatetime('dd/mm/yyyy', Value) = '00/00/0000') or (formatdatetime('dd/mm/yyyy', Value) = '30/12/1899');
end;

class function TChecks.Negative(const Value: Extended): boolean;
begin
  result := (comparevalue(Value, 0) = -1);
end;

class function TChecks.Positive(const Value: Extended): boolean;
begin
  result := (comparevalue(Value, 0) = 1);
end;

class function TChecks.Zero(const Value: Extended): boolean;
begin
  result := (comparevalue(Value, 0) = 0);
end;

class function TChecks.Less(const Value, ValueToCompare: Extended): boolean;
begin
  result := (comparevalue(Value, ValueToCompare) = -1);
end;

class function TChecks.LessEquals(const Value, ValueToCompare: Extended): boolean;
begin
  result := (Less(Value, ValueToCompare) or Equals(Value, ValueToCompare));
end;

class function TChecks.CNPJ(const CNPJ: string): string;
var
  __cnpj: string;
begin
  result := '';
  __cnpj := TFunctions.CleanSpecialChars(CNPJ);
  if length(__cnpj) <> 14 then
    raise Exception.Create('Campo de CNPJ deve ter 14 dígitos!')
  else
  begin
    if not CanStrToNumber(__cnpj) then
      raise Exception.Create('Campo de CNPJ deve ser composto apenas por números!')
    else
      result := __cnpj;
  end

end;

class function TChecks.CPF(const CPF: string): string;
var
  __cpf: string;
begin
  result := '';
  __cpf := TFunctions.CleanSpecialChars(CPF);
  if length(__cpf) <> 11 then
    raise Exception.Create('Campo de CPF deve ter 11 dígitos!')
  else
  begin
    if not CanStrToNumber(__cpf) then
      raise Exception.Create('Campo de CPF deve ser composto apenas por números!')
    else
      result := __cpf;
  end
end;

end.
