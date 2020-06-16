//Verificado automaticamente em 16/06/2020 09:27
unit u_funformatartexto;

interface

uses
   winapi.windows, System.SysUtils, System.MaskUtils;

Function formacpf(numtexto:String):String;
Function formacnpj(numtexto:String):String;
Function formatelefone(numtexto:String):String;
Function formacelular(numtexto:String):String;
function formacep(numtexto:String):String;

implementation

//Formata n�mero CPF
Function formacpf(numtexto:String):String;
begin
    Delete(numtexto,ansipos('.',numtexto),1);  //Remove ponto .
    Delete(numtexto,ansipos('.',numtexto),1);
    Delete(numtexto,ansipos('-',numtexto),1); //Remove tra�o -
    Delete(numtexto,ansipos('/',numtexto),1); //Remove barra /
    Result:=FormatmaskText('000\.000\.000\-00;0;',numtexto); // Formata os numero

end;
//Formata n�mero CNPJ
Function formacnpj(numtexto:String):String;
begin
    Delete(numtexto,ansipos('.',numtexto),1);  //Remove ponto .
    Delete(numtexto,ansipos('.',numtexto),1);
    Delete(numtexto,ansipos('-',numtexto),1); //Remove tra�o -
    Delete(numtexto,ansipos('/',numtexto),1); //Remove barra /
    Result:=FormatmaskText('00\.000\.000\/0000\-00;0;',numtexto);
end;
//Formata n�mero telefone fixo
Function formatelefone(numtexto:String):String;
begin
    Delete(numtexto,ansipos('-',numtexto),1);  //Remove tra�o -
    Delete(numtexto,ansipos('-',numtexto),1);
    Delete(numtexto,ansipos('(',numtexto),1); //Remove parenteses  (
    Delete(numtexto,ansipos(')',numtexto),1); //Remove parenteses  )
    Result:=FormatmaskText('\(00\)0000\-0000;0;',numtexto); // Formata os numero
end;
//Formata n�mero celular
Function formacelular(numtexto:String):String;
begin
    Delete(numtexto,ansipos('-',numtexto),1);  //Remove tra�o -
    Delete(numtexto,ansipos('-',numtexto),1);
    Delete(numtexto,ansipos('(',numtexto),1); //Remove parenteses  (
    Delete(numtexto,ansipos(')',numtexto),1); //Remove parenteses  )
    Result:=FormatmaskText('\(00\)00000\-0000;0;',numtexto); // Formata os numero
end;
//Formata CEP
Function formacep(numtexto:String):String;
begin
    Delete(numtexto,ansipos('-',numtexto),1);  //Remove tra�o -
    Delete(numtexto,ansipos('-',numtexto),1);
    Delete(numtexto,ansipos('(',numtexto),1); //Remove parenteses  (
    Delete(numtexto,ansipos(')',numtexto),1); //Remove parenteses  )
    Result:=FormatmaskText('00\.000\-000;0;',numtexto); // Formata os numero
end;
end.
