//Verificado automaticamente em 16/06/2020 09:27
unit I_Crud;

interface

uses firedac.comp.client, c_globals;

Type
  ICrud = interface

    procedure Insert;
    procedure Delete(const pID: Integer);
    function Select(FieldNames: array of String; const Values: array of Variant): tfdquery; overload;
    function Select(const pID: Integer): tfdquery; overload;
    procedure Update(pUk: TUpdateKind = ukHard);

  end;

implementation

end.
