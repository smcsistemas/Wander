//Verificado automaticamente em 16/06/2020 09:27
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
    Application.MessageBox('Problema na execu��o do programa. Contate o Suporte T�cnico!', 'Erro.');
end;

end.
