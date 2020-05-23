unit m_cliente_conveniado;

interface

uses FireDAC.Comp.Client, System.SysUtils, h_db, h_Functions, Model, h_Checks, System.Variants, m_cliente, math;

type
  TClienteConveniado = class(TModel)

  private
    m_id: integer;
    m_periodo_inicio: tdate;
    m_periodo_fim: tdate;
    m_nome: string;
    m_cpf: string;
    m_matricula: string;
    m_credito: extended;
    m_senha: string;
    m_cliente_id: integer;
    m_status: boolean;

    function getSenha: string;
    function getCliente: tcliente;

    procedure setNome(value: string);
    procedure setPeriodoInicio(value: tdate);
    procedure setPeriodoFim(value: tdate);
    procedure setCpf(value: string);
    procedure setMatricula(value: string);
    procedure setCredito(value: extended);
    procedure setSenha(value: string);
    procedure setCliente(value: tcliente);

  public
    property ID: integer read m_id default 0;
    property PERIODO_INICIO: tdate read m_periodo_inicio write setPeriodoInicio;
    property PERIODO_FIM: tdate read m_periodo_fim write setPeriodoFim;
    property NOME: string read m_nome write setNome;
    property CPF: string read m_cpf write setCpf;
    property MATRICULA: string read m_matricula write setMatricula;
    property CREDITO: extended read m_credito write setCredito;
    property SENHA: string read getSenha write setSenha;
    property CLIENTE: tcliente read getCliente write setCliente;
    property STATUS: boolean read m_status write m_status default true;

    function saldoDisponivel: extended;
    function creditoUtilizado: extended;

    class function all: tarray<TClienteConveniado>;
    class function find(Fields: array of string; values: array of variant): tarray<TClienteConveniado>;
    class function get(Fields: array of string; values: array of variant): TClienteConveniado;

  end;

implementation

{ TClienteConveniado }

class function TClienteConveniado.all: tarray<TClienteConveniado>;
begin
  result := tarray<TClienteConveniado>(inherited all);
end;

class function TClienteConveniado.find(Fields: array of string; values: array of variant): tarray<TClienteConveniado>;
begin
  result := tarray<TClienteConveniado>(inherited find(Fields, values));
end;

class function TClienteConveniado.get(Fields: array of string; values: array of variant): TClienteConveniado;
begin
  result := TClienteConveniado(inherited get(Fields, values));
end;

function TClienteConveniado.getCliente: tcliente;
begin
  result := tcliente.create(self.m_cliente_id);
end;

function TClienteConveniado.saldoDisponivel: extended;
begin
  result := 0;
  if tchecks.Greater(self.CREDITO, self.creditoUtilizado) then
    result := RoundTo(self.CREDITO - self.creditoUtilizado, -2);
end;

function TClienteConveniado.getSenha: string;
begin
  result := tfunctions.CodeDecode(self.m_senha, false);
end;

procedure TClienteConveniado.setCliente(value: tcliente);
begin
  self.m_cliente_id := value.ID;
end;

procedure TClienteConveniado.setCpf(value: string);
begin
  tchecks.CPF(value);

  if TClienteConveniado.exists(self.ID, ['cpf'], [value]) then
    raise Exception.create('CPF já cadastrado em outro conveniado.');

  self.m_cpf := value;
end;

procedure TClienteConveniado.setCredito(value: extended);
begin
  if tchecks.negative(value) then
    raise Exception.create('Valor do crédito do conveniado deve ser igual ou maior que zero.');
  self.m_credito := value;
end;

procedure TClienteConveniado.setMatricula(value: string);
begin
  if value = '' then
    raise Exception.create('Matrícula do conveniado deve ser informada.');
  if length(value) < 2 then
    raise Exception.create('Matrícula deve ter no mínimo 2 dígitos.');
  if TClienteConveniado.exists(self.ID, ['matricula'], [value]) then
    raise Exception.create('Matrícula já cadastrada em outro conveniado.');

  self.m_matricula := value;
end;

procedure TClienteConveniado.setNome(value: string);
begin
  if value = '' then
    raise Exception.create('Nome do conveniado deve ser informado.');
  self.m_nome := value;
end;

procedure TClienteConveniado.setSenha(value: string);
begin
  if value <> '' then
    if length(value) < 4 then
      raise Exception.create('Senha do conveniado deve ter no mínimo 4 caracteres.');
  self.m_senha := tfunctions.CodeDecode(value, true);
end;

function TClienteConveniado.creditoUtilizado: extended;
var
  qry: tfdquery;
begin
  result := 0;
  qry := tdb.SimpleQuery
    ('select sum(vp.valor_debitado) as total_venda from venda v join venda_pagamento vp on vp.codigo_venda = v.codigo_venda and cod_tipo_pagamento = "101" where (v.conveniado_id = ?) and (v.data between ? and ?) and (v.status = "FECHADA")',
    [self.m_id, formatdatetime('yyyy-mm-dd', self.m_periodo_inicio), formatdatetime('yyyy-mm-dd', self.m_periodo_fim)]);
  if qry <> nil then
    result := qry.Fields[0].AsExtended;
end;

procedure TClienteConveniado.setPeriodoFim(value: tdate);
begin
  if tchecks.dateIsNull(value) then
    raise Exception.create('Fim do período do convênio deve ser informado.');
  self.m_periodo_fim := value;
end;

procedure TClienteConveniado.setPeriodoInicio(value: tdate);
begin
  if tchecks.dateIsNull(value) then
    raise Exception.create('Início do período do convênio deve ser informado.');
  self.m_periodo_inicio := value;
end;

end.
