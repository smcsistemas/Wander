unit S_Parametros_Venda;

interface

uses
  firedac.comp.client, h_db, SYSTEM.SysUtils, h_Functions, inifiles, v_Dir;

type
  TParametros_Venda = class(tobject)
  private
    class procedure setImpressoraComprovante(value: string); static;
    class function getImpressoraComprovante: string; static;

    class procedure setUsaConvenio(value: boolean); static;
    class function getUsaConvenio: boolean; static;

  public
    class property IMPRESSORA_COMPROVANTE: string read getImpressoraComprovante write setImpressoraComprovante;
    class property USA_CONVENIO: boolean read getUsaConvenio write setUsaConvenio;

  Type
    Comanda = class
    private
      class procedure setUsaComanda(value: boolean); static;
      class function getUsaComanda: boolean; static;

      class procedure setSepararProdutos(value: boolean); static;
      class function getSepararProdutos: boolean; static;

      class procedure setNumero(value: integer); static;
      class function getNumero: integer; static;
    public
      class property Enabled: boolean read getUsaComanda write setUsaComanda;
      class property numero: integer read getNumero write setNumero;
      class property separar_produtos: boolean read getSepararProdutos write setSepararProdutos;
    end;

  end;

implementation

{ TParametros_Venda }

class procedure TParametros_Venda.Comanda.setNumero(value: integer);
begin
  tdb.ExecQuery('update parametros_sistema set comanda_num = ?', [value]);
end;

class function TParametros_Venda.Comanda.getSepararProdutos: boolean;
begin
  result := tdb.SimpleQuery('select separar_produtos_comanda from parametros_venda').Fields[0].AsBoolean;
end;

class procedure TParametros_Venda.Comanda.setSepararProdutos(value: boolean);
begin
  tdb.ExecQuery('update parametros_venda set separar_produtos_comanda = ?', [value]);
end;

class function TParametros_Venda.Comanda.getUsaComanda: boolean;
begin
  result := tdb.SimpleQuery('select usa_comanda from parametros_venda').Fields[0].AsBoolean;
end;

class function TParametros_Venda.Comanda.getNumero: integer;
var
  qry: TFDquery;
begin

  result := 1;
  qry := tdb.SimpleQuery('select comanda_num from parametros_sistema');

  if qry <> nil then
    if qry.Fields[0].AsInteger <> 0 then
      result := qry.Fields[0].AsInteger;
end;

class procedure TParametros_Venda.Comanda.setUsaComanda(value: boolean);
begin
  tdb.ExecQuery('update parametros_venda set usa_comanda = ?', [value]);
end;

class function TParametros_Venda.getUsaConvenio: boolean;
begin
  result := tdb.SimpleQuery('select usa_convenio from parametros_venda').Fields[0].AsBoolean;
end;

class procedure TParametros_Venda.setImpressoraComprovante(value: string);
begin
  if value = '' then
    raise Exception.create('Impressora para comprovante deve ser configurada!');

  if getImpressoraComprovante = '' then
    tdb.ExecQuery('INSERT INTO PARAMETROS_VENDA(IMPRESSORA_COMPROVANTE) VALUES(?)', [value])
  else
    tdb.ExecQuery('UPDATE PARAMETROS_VENDA SET IMPRESSORA_COMPROVANTE = ?', [value]);
end;

class procedure TParametros_Venda.setUsaConvenio(value: boolean);
begin
  tdb.ExecQuery('update parametros_venda set usa_convenio = ?', [value]);
end;

class function TParametros_Venda.getImpressoraComprovante: string;
var
  qry: TFDquery;
begin
  result := '';
  qry := tdb.SimpleQuery('SELECT IMPRESSORA_COMPROVANTE FROM PARAMETROS_VENDA');
  if qry <> NIL then
    result := qry.Fields[0].AsString;
end;

end.
