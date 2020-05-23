unit m_Model;

interface

uses Sysutils, Firedac.comp.client, h_Functions;

type
  TModel = class(tobject)
  public
    class function find(var qry: tfdquery; pk: string = 'id'; ClassName: TClass): TArray<tobject>;

  end;

implementation

uses
  h_db;

{ TModel }

class function TModel.find(var qry: tfdquery; pk: string = 'id'; ClassName: TClass): TArray<tobject>;
var
  arrObjects: TArray<tobject>;
begin
  result := nil;
  if qry <> nil then
  begin
    qry.first;
    setLength(arrObjects, qry.RecordCount);
    while not qry.eof do
    begin
      arrObjects[qry.RecNo - 1] := ClassName.Create(qry.fieldbyname(pk).asInteger);
      qry.next;
    end;
    result := arrObjects;
  end;
end;

end.
