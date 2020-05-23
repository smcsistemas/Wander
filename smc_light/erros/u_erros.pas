unit u_erros;

interface

implementation

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants,
  System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.DBCtrls, Vcl.ComCtrls;

initialization

try
  { TODO -oUser -cConsole Main : Insert code here }
except
  on E: Exception do
    Application.MessageBox('Problema na execução do programa. Contate o Suporte Técnico!', 'Erro.');
end;

end.
