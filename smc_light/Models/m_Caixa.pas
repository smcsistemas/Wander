unit m_Caixa;

interface

uses Model, system.SysUtils, system.Classes;

type
  TCaixa = class(TModel)

  private
    m_id: integer;
    m_descricao: string;

  published

    procedure setDescricao(value: string);

  public

    property ID: integer read m_id default 0;
    property DESCRICAO: string read m_descricao write setDescricao;

    class function all: Tarray<TCaixa>;
    class function find(fields: array of string; values: array of Variant): Tarray<TCaixa>;
    class function get(fields: array of string; values: array of Variant): TCaixa;

  end;

implementation

{ TCaixa }

uses v_Exception;

class function TCaixa.all: Tarray<TCaixa>;
begin
  result := Tarray<TCaixa>(inherited all());
end;

class function TCaixa.find(fields: array of string; values: array of Variant): Tarray<TCaixa>;
begin
  result := Tarray<TCaixa>(inherited find(fields, values));
end;

class function TCaixa.get(fields: array of string; values: array of Variant): TCaixa;
begin
  result := TCaixa(inherited get(fields, values));
end;

procedure TCaixa.setDescricao(value: string);
begin
  if value = '' then
    raise EValidationError.Create('Descrição do caixa deve ser informada.');

  self.m_descricao := value;
end;

end.
