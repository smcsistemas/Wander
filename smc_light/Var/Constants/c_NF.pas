//Verificado automaticamente em 16/06/2020 09:28
unit c_NF;

interface

const
  extXMLAutorizada = '-nfe.xml';

  nfHeader = '<?xml version="1.0" encoding="UTF-8"?><nfeProc versao="3.10" xmlns="http://www.portalfiscal.inf.br/nfe">';

  NF_INUTILIZACAO_CANCELAR = 'Erro nas informa��es da NFC-e';
  NF_PRODUTO_HOMOLOGACAO = 'NOTA FISCAL EMITIDA EM AMBIENTE DE HOMOLOGACAO - SEM VALOR FISCAL';
  NF_DESTINO_HOMOLOGACAO = 'NF-E EMITIDA EM AMBIENTE DE HOMOLOGACAO - SEM VALOR FISCAL';
  NF_CONTINGENCIA = 'Oscila��o de internet impede o envio normal';
  NF_DOWNLOAD = 'Manifesto ci�ncia da opera��o contra CNPJ refer�nte';

function getManifestoPadrao(cod: integer): string;

implementation

function getManifestoPadrao(cod: integer): string;
begin
  case cod of
    1:
      result := 'Ci�ncia da opera��o';
    2:
      result := 'Confirma��o da opera��o';
    3:
      result := 'Opera��o n�o realizada';
    4:
      result := 'Desconhecimento da opera��o';
  end;
end;

end.
