unit S_Parametros_NF;

interface

uses
  h_db, firedac.comp.client, sysutils;

type
  TParametros_NF = class
  private
    class function getCertificado: string; static;
    class procedure setCertificado(value: string); static;

    class function getAmbiente: string; static;
    class procedure setAmbiente(value: string); static;

  public
    class function TIPO_EMISSAO: STRING;
    class property CERTIFICADO: string read getCertificado write setCertificado;
    class property AMBIENTE: string read getAmbiente write setAmbiente;
    class function EmissaoNormal: boolean;

  type
    NFCe = class(tobject)
      class function LiberadoParaUso: boolean;
    end;

  end;

implementation

{ TParametros_NF }

class function TParametros_NF.EmissaoNormal: boolean;
begin
  result := self.TIPO_EMISSAO = 'NORMAL';
end;

class function TParametros_NF.getAmbiente: string;
var
  qry: tfdquery;
begin

  result := '';
  qry := tdb.SimpleQuery('select AMBIENTE from config_notas');
  if qry <> NIL then
    result := qry.Fields[0].AsString;

end;

class function TParametros_NF.getCertificado: string;
var
  qry: tfdquery;
begin

  result := '';
  qry := tdb.SimpleQuery('select CERTIFICADO from config_notas');
  if qry <> NIL then
    result := qry.Fields[0].AsString;

end;

class procedure TParametros_NF.setAmbiente(value: string);
begin
  if value = '' then
    raise Exception.Create('Ambiente de emissão para Notas Fiscais deve ser informado!');

  if tdb.SimpleQuery('select AMBIENTE from config_notas') <> nil then
    tdb.ExecQuery('update config_notas set AMBIENTE = ?', [value])
  else
    tdb.ExecQuery('insert into config_notas(AMBIENTE) values (?)', [value])
end;

class procedure TParametros_NF.setCertificado(value: string);
begin

  if value = '' then
    raise Exception.Create('Certificado digital deve ser informado!');

  if tdb.SimpleQuery('select certificado from config_notas') <> nil then
    tdb.ExecQuery('update config_notas set certificado = ?', [value])
  else
    tdb.ExecQuery('insert into config_notas(certificado) values (?)', [value])

end;

class function TParametros_NF.TIPO_EMISSAO: STRING;
var
  qry: tfdquery;
begin

  result := 'NORMAL';
  qry := tdb.SimpleQueryWithoutGui('select tipo_nota from config_notas');
  if qry <> nil then
    result := qry.Fields[0].AsString;

end;

{ TParametros_NF.NFCe }

class function TParametros_NF.NFCe.LiberadoParaUso: boolean;
var
  qry: tfdquery;
begin
  result := false;
  qry := tdb.SimpleQuery('select utiliza_nfce from parametros_nfce');
  if qry <> nil then
    result := qry.Fields[0].AsString = '1';
end;

end.
