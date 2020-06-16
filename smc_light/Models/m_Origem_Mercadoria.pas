//Verificado automaticamente em 16/06/2020 09:28
unit m_Origem_Mercadoria;

interface

uses SYSUTILS, firedac.comp.client, h_db;

Type
  TOrigem_Mercadoria = class(tinterfacedobject)
  private

    OrigemMercadoria_codigo: string;
    OrigemMercadoria_descricao: string;

    function getOrigemMercadoriaCodigo: string;
    function getOrigemMercadoriaDescricao: string;
    procedure clearData;

  public
    constructor create; overload;

    function getAll: tfdquery;

    property CODIGO: string read getOrigemMercadoriaCodigo;
    property DESCRICAO: string read getOrigemMercadoriaDescricao;

  end;

implementation

{ TOrigem_Mercadoria }

procedure TOrigem_Mercadoria.clearData;
begin
  OrigemMercadoria_codigo := '';
  OrigemMercadoria_descricao := '';
end;

constructor TOrigem_Mercadoria.create;
begin
  inherited create;

  clearData;
end;

function TOrigem_Mercadoria.getAll: tfdquery;
begin
  result := Tdb.SimpleQuery('SELECT * FROM origem_mercadoria ORDER BY codigo');
end;

function TOrigem_Mercadoria.getOrigemMercadoriaCodigo: string;
begin
  result := self.OrigemMercadoria_codigo;
end;

function TOrigem_Mercadoria.getOrigemMercadoriaDescricao: string;
begin
  result := self.OrigemMercadoria_descricao;
end;

end.
