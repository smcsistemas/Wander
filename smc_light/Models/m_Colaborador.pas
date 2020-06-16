//Verificado automaticamente em 16/06/2020 09:28
unit m_Colaborador;

interface

uses firedac.comp.client, i_crud, h_db, c_globals;

type
  TColaborador = class(TInterfacedObject, ICrud)

  private
    Colaborador_Codigo: integer;
    Colaborador_Nome: string;
{$REGION 'ATT IMPLEMENT'}
    { Colaborador_Tipo_Colaborador:;
      Colaborador_Data_Nascimento:TDataTime;
      Colaborador_Sexo:
      Colaborador_Status_Cadastral:
      Colaborador_Usa_Faixa:
      Colaborador_Codigo_Pais:
      Colaborador_Estado_Civil:
      Colaborador_Funcao:
      Colaborador_Naturalidade:
      Colaborador_Nacionalidade:
      Colaborador_Nome_Pai:
      Colaborador_Nome_Mae:
      Colaborador_Telefone_Pai:
      Colaborador_Telefone_Mae:
      Colaborador_Cpf:
      Colaborador_Rg:
      Colaborador_Orgao_Emissor:
      Colaborador_Data_Emissao:
      Colaborador_Titulo_Eleitor:
      Colaborador_Secao:
      Colaborador_Zona:
      Colaborador_Pis:
      Colaborador_Numero_Cnh:
      Colaborador_Validade_Cnh:
      Colaborador_Numero_Carteira_Trabalho:
      Colaborador_Serie_Carteira_Trabalho:
      Colaborador_Data_Admissao:
      Colaborador_Data_Demissao:
      Colaborador_Comissao_Venda:
      Colaborador_Comissao_Ordem_De_Servico:
      Colaborador_Comissao_Hora_Tecnica:
      Colaborador_Comissao_Gerente:
      Colaborador_Codigo_Gerente:
      Colaborador_Telefone_1:
      Colaborador_Telefone_2:
      Colaborador_Celular_1:
      Colaborador_Celular_2:
      Colaborador_Email_1:
      Colaborador_Email_2:
      Colaborador_Obs:
      Colaborador_Salario:
      Colaborador_Endereco:
      Colaborador_Numero:
      Colaborador_Bairro:
      Colaborador_Cep:
      Colaborador_Municipio:
      Colaborador_Estado:
      Colaborador_Pais:
      Colaborador_Complemento:
      Colaborador_Codigo_Municipio:
      Colaborador_Limite_Credito:
      Colaborador_Credito_Disponivel:
      Colaborador_Foto:
      Colaborador_Banco:
      Colaborador_Banco_Agencia:
      Colaborador_Banco_Agencia_Digito:
      Colaborador_Banco_Conta:
      Colaborador_Banco_Conta_Digito:
      Colaborador_Banco_Agencia_Digito_2:
      Colaborador_Banco_Conta_Digito_2:
      Colaborador_Banco_Op:
      Colaborador_Banco_Op2:
      Colaborador_Celular_Pai:
      Colaborador_Celular_Mae:
      Colaborador_Telefone_Banco:
      Colaborador_Ramal_Banco:
      Colaborador_Banco_2:
      Colaborador_Banco_Agencia_2:
      Colaborador_Banco_Conta_2:
      Colaborador_Telefone_Banco_2:
      Colaborador__Ramal_Banco_2:
      Colaborador_Gerente_Banco:
      Colaborador_Gerente_Banco_1:
      Colaborador_Comissao_Venda_Externa:
      Colaborador_Codigo_Banco_1:
      Colaborador_Codigo_Banco_2:
      Colaborador_Cod_Usuario:
    }

{$ENDREGION}
    function getColaborador_Codigo: integer;
    function getColaborador_Nome: string;

    procedure clearData;

    procedure Insert;
    procedure Delete(const pID: integer);
    function Select(FieldNames: array of String; const Values: array of Variant): tfdquery; overload;
    function Select(const pID: integer): tfdquery; overload;
    procedure Update(pUk: TUpdateKind = ukHard);

  public
    property ID: integer read getColaborador_Codigo;
    property NOME: string read getColaborador_Nome;

    constructor create(pID: integer = 0); overload;
    class function Search(FieldNames: array of string; Values: array of Variant): TColaborador;
  end;

implementation

{ TColaborador }

procedure TColaborador.clearData;
begin
  self.Colaborador_Codigo := 0;
end;

constructor TColaborador.create(pID: integer);
var
  qry: tfdquery;
begin
  inherited create;

  clearData;

  if pID <> 0 then
  begin
    qry := self.Select(pID);
    if qry <> nil then
    begin
      self.Colaborador_Codigo := qry.FieldByName('CODIGO').AsInteger;
      self.Colaborador_Nome := qry.FieldByName('NOME').asString;
    end;
  end;
end;

procedure TColaborador.Delete(const pID: integer);
begin
  Tdb.ExecQuery('DELETE FROM COLABORADOR WHERE CODIGO =?', [pID])
end;

function TColaborador.getColaborador_Codigo: integer;
begin
  result := self.Colaborador_Codigo;
end;

function TColaborador.getColaborador_Nome: string;
begin
  result := self.Colaborador_Nome;
end;

procedure TColaborador.Insert;
begin

end;

function TColaborador.Select(FieldNames: array of String; const Values: array of Variant): tfdquery;
begin
  result := Tdb.SimpleQuery('select * from colaborador' + Tdb.GenWhere(FieldNames), Values);
end;

class function TColaborador.Search(FieldNames: array of string; Values: array of Variant): TColaborador;
var
  qry: tfdquery;
begin
  result := nil;
  qry := TColaborador.create.Select(FieldNames, Values);
  if qry <> nil then
    result := self.create(qry.FieldByName('CODIGO').AsInteger);
end;

function TColaborador.Select(const pID: integer): tfdquery;
begin
  result := self.Select(['CODIGO'], [pID]);
end;

procedure TColaborador.Update(pUk: TUpdateKind);
begin

end;

end.
