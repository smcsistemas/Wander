//Verificado automaticamente em 16/06/2020 09:27
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
