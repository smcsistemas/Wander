//Verificado automaticamente em 16/06/2020 09:28
unit m_Ponto_Impressao;

interface

uses firedac.comp.client, h_DB, system.SysUtils;

type
  TProdutoImpressao = class(TObject)
  private
    Produto_Impressao_id: Integer;
    Produto_Impressao_nome: string;
    Produto_Impressao_impressora: string;

    function getNome: string;
    function getImpressora: string;

    procedure setNome(value: string);
    procedure setImpressora(value: string);

    procedure clearData;
  public

    property ID: Integer read Produto_Impressao_id;
    property NOME: string read getNome write setNome;
    property IMPRESSORA: string read getImpressora write setImpressora;

    constructor Create(pk: Integer = 0); overload;

    class function Find(Fields: array of String; Values: array of variant): TArray<TProdutoImpressao>;
    class function Get(Fields: array of String; Values: array of variant): TProdutoImpressao;

    procedure Save;

  end;

implementation

{ TProdutoImpressao }

procedure TProdutoImpressao.clearData;
begin
  Produto_Impressao_id := 0;
  Produto_Impressao_nome := '';
  Produto_Impressao_impressora := '';
end;

constructor TProdutoImpressao.Create(pk: Integer = 0);
var
  qry: TFDQuery;
begin
  inherited Create;

  if pk <> 0 then
  begin
    qry := tdb.simplequery('select * from ponto_impressao where id = ?', [pk]);

    if qry = nil then
      raise Exception.Create(Format('Produto Impressão id %d não encontrado.', [pk]))
    else
    begin
      self.Produto_Impressao_id := qry.FieldByName('id').AsInteger;
      self.Produto_Impressao_nome := qry.FieldByName('nome').AsString;
      self.Produto_Impressao_impressora := qry.FieldByName('impressora').AsString;
    end;

  end;

end;

class function TProdutoImpressao.Find(Fields: array of String; Values: array of variant): TArray<TProdutoImpressao>;
var
  qry: TFDQuery;
  arrProdutoImpressao: TArray<TProdutoImpressao>;
begin
  result := nil;
  qry := tdb.simplequery('select * from PRODUTO_PROD ' + tdb.GenWhere(Fields), Values);
  if qry <> nil then
  begin
    qry.first;
    setLength(arrProdutoImpressao, qry.RecordCount);
    while not qry.eof do
    begin
      arrProdutoImpressao[qry.RecNo - 1] := TProdutoImpressao.Create(qry.FieldByName('id').AsInteger);
      qry.next;
    end;
    result := arrProdutoImpressao;
  end;
end;

class function TProdutoImpressao.Get(Fields: array of String; Values: array of variant): TProdutoImpressao;
var
  arrProdutoImpressao: TArray<TProdutoImpressao>;
begin
  result := nil;
  arrProdutoImpressao := TProdutoImpressao.Find(Fields, Values);
  if Length(arrProdutoImpressao) > 0 then
    result := arrProdutoImpressao[0]
end;

function TProdutoImpressao.getImpressora: string;
begin
  result := self.Produto_Impressao_impressora
end;

function TProdutoImpressao.getNome: string;
begin
  result := self.Produto_Impressao_nome
end;

procedure TProdutoImpressao.Save;
begin
  if self.Produto_Impressao_id = 0 then
  begin
    tdb.ExecQuery('insert into ponto_impressao(nome, impressora) values(?, ?)', [self.Produto_Impressao_nome, self.Produto_Impressao_impressora]);
    self.Produto_Impressao_id := tdb.simplequery('select id from ponto_impressao where nome = ? and impressora = ?',
      [self.Produto_Impressao_nome, self.Produto_Impressao_impressora]).Fields[0].AsInteger;
  end
  else
  begin
    tdb.ExecQuery('update ponto_impressao set nome = ?, impressora = ? where id = ?', [lowercase(self.Produto_Impressao_nome), self.Produto_Impressao_impressora,
      self.Produto_Impressao_id]);
  end;
end;

procedure TProdutoImpressao.setImpressora(value: string);
begin
  if value = '' then
    raise Exception.Create('Uma impressora deve ser informada.');

  self.Produto_Impressao_impressora := value;
end;

procedure TProdutoImpressao.setNome(value: string);
begin
  if value = '' then
    raise Exception.Create('Um nome para o ponto deve ser informado.');

  if tdb.simplequery('select * from ponto_impressao where nome = ? and id <> ? ', [lowercase(value), self.Produto_Impressao_id]) <> nil then
    raise Exception.Create(Format('Ponto de impressão com nome "%s" já cadastrado.', [value]));

  self.Produto_Impressao_nome := value;
end;

end.
