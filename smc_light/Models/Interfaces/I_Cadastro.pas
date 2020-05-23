unit I_Cadastro;

interface

uses c_Globals;

TYpe
  ICadastro = interface
    procedure Salvar(pUK: TUpdateKind = ukHard);
    function isRegistered: boolean;
  end;

implementation

end.
