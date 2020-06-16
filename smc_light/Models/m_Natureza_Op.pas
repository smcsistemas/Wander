//Verificado automaticamente em 16/06/2020 09:28
unit m_Natureza_Op;
{
================================================================================
|   DATA   |DESENVOLVEDOR|HISTORICO DA ALTERACAO DO CODIGO                     |
|----------|-------------|-----------------------------------------------------|
|31/03/2020|WANDER       |Passou a tratar ESTADO = 'EXTERIOR'                  |
|        56|             |                                                     |
================================================================================
}
interface

uses FireDac.comp.client, c_Globals, I_Crud, sysutils, h_Formats, m_Cfop, h_Dialogs;

type
  TNatureza_Op = class(TinterfacedObject, ICrud)
  private
    Natureza_Op_id: integer;
    Natureza_Op_descricao: string;
    Natureza_Op_finalidade: string;
    Natureza_Op_cfop_ti: integer;
    Natureza_Op_cfop_st: integer;
    Natureza_Op_tipo_nf: string;
    Natureza_Op_estado: string;

    function getNatureza_Op_id: integer;
    function getNatureza_Op_descricao: string;
    function getNatureza_Op_finalidade: string;
    function getNatureza_Op_cfop_ti: integer;
    function getNatureza_Op_cfop_st: integer;
    function getNatureza_Op_tipo_nf: string;
    function getNatureza_Op_estado: string;

    Procedure setNatureza_Op_descricao(value: string);
    Procedure setNatureza_Op_finalidade(value: string);
    Procedure setNatureza_Op_cfop_ti(value: integer);
    Procedure setNatureza_Op_cfop_st(value: integer);
    Procedure setNatureza_Op_tipo_nf(value: string);
    Procedure setNatureza_Op_estado(value: string);

    procedure ClearData;

    procedure Insert;
    procedure Delete(const pID: integer);
    function Select(FieldNames: array of String; const Values: array of Variant): tfdquery; overload;
    function Select(const pID: integer): tfdquery; overload;
    procedure Update(pUk: TUpdateKind = ukHard);

  public
    property ID: integer read getNatureza_Op_id;
    property DESCRICAO: string read getNatureza_Op_descricao write setNatureza_Op_descricao;
    property FINALIDADE: string read getNatureza_Op_finalidade write setNatureza_Op_finalidade;
    property CFOP_TI: integer read getNatureza_Op_cfop_ti write setNatureza_Op_cfop_ti;
    property CFOP_ST: integer read getNatureza_Op_cfop_st write setNatureza_Op_cfop_st;
    property TIPO_NF: string read getNatureza_Op_tipo_nf write setNatureza_Op_tipo_nf;
    property ESTADO: string read getNatureza_Op_estado write setNatureza_Op_estado;

    constructor Create(pID: integer = 0); overload;
    procedure Salvar;
    procedure Deletar;

  end;

implementation

{ TNatureza_Op }

uses h_db;

procedure TNatureza_Op.ClearData;
begin

  Natureza_Op_id := 0;
  Natureza_Op_descricao := '';
  Natureza_Op_finalidade := '';
  Natureza_Op_cfop_ti := 0;
  Natureza_Op_cfop_st := 0;
  Natureza_Op_tipo_nf := '';
  Natureza_Op_estado := '';

end;

constructor TNatureza_Op.Create(pID: integer);
var
  qry: tfdquery;
begin
  inherited Create;
  ClearData;
  if pID <> 0 then
  Begin
    qry := Tdb.SimpleQuery('select * from natureza_operacao where id = ?', [pID]);

    if qry <> nil then
    begin

      self.Natureza_Op_id := pID;
      self.Natureza_Op_descricao := qry.FieldByName('DESCRICAO').AsString;
      self.Natureza_Op_finalidade := qry.FieldByName('FINALIDADE_NFE').AsString;
      self.Natureza_Op_cfop_ti := qry.FieldByName('CFOP_TI').asInteger;
      self.Natureza_Op_cfop_st := qry.FieldByName('CFOP_ST').asInteger;
      self.Natureza_Op_tipo_nf := qry.FieldByName('TIPO_NF').AsString;
      self.Natureza_Op_estado := qry.FieldByName('ESTADO').AsString;

    end;
  end;
end;

procedure TNatureza_Op.Deletar;
begin
  self.Delete(self.Natureza_Op_id);
  Tdialogs.wnInfo('Natureza Operação', slinebreak + slinebreak + 'Natureza de Operação removida com sucesso!', 12);
end;

procedure TNatureza_Op.Delete(const pID: integer);
begin
  Tdb.ExecQuery('DELETE FROM Natureza_operacao WHERE id=?', [pID]);
end;

function TNatureza_Op.getNatureza_Op_cfop_st: integer;
begin
  result := self.Natureza_Op_cfop_st;
end;

function TNatureza_Op.getNatureza_Op_cfop_ti: integer;
begin
  result := self.Natureza_Op_cfop_ti;
end;

function TNatureza_Op.getNatureza_Op_descricao: string;
begin
  result := self.Natureza_Op_descricao;
end;

function TNatureza_Op.getNatureza_Op_estado: string;
begin
  result := self.Natureza_Op_estado;
end;

function TNatureza_Op.getNatureza_Op_finalidade: string;
begin
  result := self.Natureza_Op_finalidade;
end;

function TNatureza_Op.getNatureza_Op_id: integer;
begin
  result := self.Natureza_Op_id;
end;

function TNatureza_Op.getNatureza_Op_tipo_nf: string;
begin
  result := self.Natureza_Op_tipo_nf;
end;

procedure TNatureza_Op.Insert;
begin
  Tdb.ExecQuery('INSERT INTO Natureza_operacao (ID, DESCRICAO, FINALIDADE_NFE, CFOP_TI, CFOP_ST, TIPO_NF, ESTADO)' + 'VALUES (?, ?, ?, ?, ?, ?, ?)',
    [self.Natureza_Op_id, self.Natureza_Op_descricao, self.Natureza_Op_finalidade, self.Natureza_Op_cfop_ti, self.Natureza_Op_cfop_st, self.Natureza_Op_tipo_nf,
    self.Natureza_Op_estado]);

  Tdialogs.wnInfo('Natureza Operação', slinebreak + slinebreak + 'Natureza de Operação cadastrada com sucesso!', 12);
end;

procedure TNatureza_Op.Salvar;
begin
  if self.ID = 0 then
    self.Insert
  else
    self.Update
end;

function TNatureza_Op.Select(const pID: integer): tfdquery;
begin
  result := Select(['ID'], [pID]);
end;

function TNatureza_Op.Select(FieldNames: array of String; const Values: array of Variant): tfdquery;
begin
  result := Tdb.SimpleQuery('select * from Natureza_operacao ' + Tdb.GenWhere(FieldNames), Values);
end;

procedure TNatureza_Op.setNatureza_Op_cfop_st(value: integer);
begin
  if value = 0 then
    raise Exception.Create('CFOP ST deve ser preenchido!');

  TCFOP.Create(value);

  self.Natureza_Op_cfop_st := value;
end;

procedure TNatureza_Op.setNatureza_Op_cfop_ti(value: integer);
begin
  if value = 0 then
    raise Exception.Create('CFOP TI deve ser preenchido!');

  TCFOP.Create(value);

  self.Natureza_Op_cfop_ti := value;
end;

procedure TNatureza_Op.setNatureza_Op_descricao(value: string);
begin
  if value = '' then
    raise Exception.Create('Descrição da Natureza de Operação deve ser informada!');

  self.Natureza_Op_descricao := TFormats.uc(value);
end;

procedure TNatureza_Op.setNatureza_Op_estado(value: string);
begin
  if (value <> 'DENTRO'  ) and
     (value <> 'FORA'    ) and
     (value <> 'EXTERIOR') then
    raise Exception.Create('O Estado da Natureza de Operação deve ser "DENTRO" ou "FORA" ou "EXTERIOR"!');

  self.Natureza_Op_estado := value;

end;

procedure TNatureza_Op.setNatureza_Op_finalidade(value: string);
begin
  if (value <> '1') and (value <> '2') and (value <> '3') and (value <> '4') then
    raise Exception.Create('Finalidade deve ser "1-Normal", "2-Complementar", "3-Ajuste" ou "4-Devolução"!');

  self.Natureza_Op_finalidade := value;

end;

procedure TNatureza_Op.setNatureza_Op_tipo_nf(value: string);
begin
  if (value <> 'ENTRADA') and (value <> 'SAIDA') then
    raise Exception.Create('Tipo da Natureza de Operação deve ser "ENTRADA" ou "SAIDA"!');
  self.Natureza_Op_tipo_nf := value;
end;

procedure TNatureza_Op.Update(pUk: TUpdateKind);
begin

  Tdb.ExecQuery('UPDATE natureza_operacao SET DESCRICAO=?, FINALIDADE_NFE=?, CFOP_TI=?, CFOP_ST=?, TIPO_NF=?, ESTADO=? WHERE ID=?',
    [self.Natureza_Op_descricao, self.Natureza_Op_finalidade, self.Natureza_Op_cfop_ti, self.Natureza_Op_cfop_st, self.Natureza_Op_tipo_nf, self.Natureza_Op_estado,
    self.Natureza_Op_id]);

  Tdialogs.wnInfo('Natureza Operação', slinebreak + slinebreak + 'Natureza de Operação atualizada com sucesso!', 12);

end;

end.
