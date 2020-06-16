//Verificado automaticamente em 16/06/2020 09:28
unit S_Parametros_Tributacao;

interface

uses
  firedac.comp.client, h_db, sysutils;

type
  TParametros_Tributacao = class
  private
    class function getAliqICMS: extended; static;
    class procedure setAliqICMS(value: extended); static;
  public
    class property ALIQ_ICMS: extended read getAliqICMS write setAliqICMS;
  end;

implementation

{ TParametros_Tributacao }

class function TParametros_Tributacao.getAliqICMS: extended;
var
  qry: tfdquery;
begin
  qry := tdb.SimpleQuery('select aliq_imcs from parametros_sistema');

  if qry = nil then
    raise Exception.Create('Alíquota de ICMS não foi configurada corretamente!');

  result := qry.Fields[0].AsExtended;
end;

class procedure TParametros_Tributacao.setAliqICMS(value: extended);
begin
  if tdb.SimpleQuery('select aliq_icms from parametros_sistema') = nil then
    tdb.ExecQuery('insert into parametros_sistema(aliq_icms) values(?)', [value])
  else
    tdb.ExecQuery('update parametros_sistema set aliq_icms = ?', [value]);
end;

end.
