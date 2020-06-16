//Verificado automaticamente em 16/06/2020 09:27
unit h_NF_Functions;

interface

uses XMLDoc, XMLIntf, h_Dialogs, Classes, System.StrUtils, c_NF, h_Functions;

type
  TNF_Func = class(Tobject)

  public

    class function StatusRetornoNF(RetornoXML: string; const mNF: integer = 65; MostraJanela: boolean = true): String;

    class function getCodStatusNF(pRetornoXML: String): string;

    class function EvtProcessouEvento(pRetornoXML: string): boolean;

    class function EvtAutorizada(pRetornoXML: string): boolean;

    class function EvtCancelada(pRetornoXML: string): boolean;

    class function EvtInutilizada(pRetornoXML: string): boolean;

    class function EvtDownload(pRetornoXML: string): boolean;

    class function EvtManifesto(pRetornoXML: string): boolean;

    class function getPathEntrada(pchave: string): string;

  private
    class function LoadEvtRetornoXML(RetornoXML: string): IXMLNode;

  end;

implementation

// Private Declarations

uses v_Dir;

class function TNF_Func.LoadEvtRetornoXML(RetornoXML: string): IXMLNode;

var
  Xml: IXMLDocument;
  NodeAux, TagPai: IXMLNode;
begin
  result := nil;
  if RetornoXML <> '' then
  begin
    Xml := TXMLDocument.Create(nil);
    Xml.LoadFromXML(RetornoXML);
    NodeAux := Xml.ChildNodes.FindNode('retEnviNFe'); // Eviar RO
    if assigned(NodeAux) then
    begin
      NodeAux := NodeAux.ChildNodes.FindNode('protNFe'); // Cabeçalho do Protocolo
      NodeAux := NodeAux.ChildNodes.FindNode('infProt'); // Dados do Protocolo
    end
    else
    begin
      NodeAux := Xml.ChildNodes.FindNode('nfeAutorizacaoLoteResult', ''); // Eviar AM
      if assigned(NodeAux) then
      begin
        TagPai := NodeAux;
        TagPai := TagPai.ChildNodes.FindNode('retConsReciNFe', ''); // Eviar AM
        TagPai := TagPai.ChildNodes.FindNode('protNFe'); // Cabeçalho do Protocolo
        TagPai := TagPai.ChildNodes.FindNode('infProt'); // Dados do Protocolo
      end
      else
      begin
        NodeAux := Xml.ChildNodes.FindNode('retEnvEvento'); // Cancelar
        if assigned(NodeAux) then
        begin
          TagPai := NodeAux;
          TagPai := TagPai.ChildNodes.FindNode('retEvento'); // Cabeçalho do Evento
          TagPai := TagPai.ChildNodes.FindNode('infEvento'); // Dados do Evento
        end
        else
        begin
          NodeAux := Xml.ChildNodes.FindNode('retConsSitNFe'); // Consultar
          if assigned(NodeAux) then
          begin
            if NodeAux.ChildValues['cStat'] = '100' then // para autorização, verificar se existe autorização fora do prazo
            begin
              TagPai := NodeAux;
              TagPai := TagPai.ChildNodes.FindNode('protNFe'); // Cabeçalho do Protocolo
              TagPai := TagPai.ChildNodes.FindNode('infProt'); // Dados do Protocolo
            end;
          end
          else
          begin
            NodeAux := Xml.ChildNodes.FindNode('retInutNFe'); // Inutilizar
            if assigned(NodeAux) then
            begin
              TagPai := NodeAux;
              TagPai := TagPai.ChildNodes.FindNode('infInut'); // Cabeçalho do Evento
            end
            else
            begin
              NodeAux := Xml.ChildNodes.FindNode('retConsStatServ'); // Status Serviço
              if assigned(NodeAux) then
                TagPai := NodeAux
              else
              begin
                // NodeAux := Xml.ChildNodes.FindNode('retDownloadNFe'); Download de NF - modelo inativado pela sefaz
                NodeAux := Xml.ChildNodes.FindNode('retDistDFeInt'); // Consulta de distribuição de NF
                if assigned(NodeAux) then
                begin
                  TagPai := NodeAux.ChildNodes.FindNode('retNFe');
                  if not assigned(TagPai) then // serviço indisponível
                    TagPai := NodeAux
                  else
                  begin
                    TagPai.AddChild('tpAmb');
                    TagPai.ChildValues['tpAmb'] := NodeAux.ChildValues['tpAmb'];
                  end;
                  TagPai.AddChild('dhRecbto');
                  TagPai.ChildValues['dhRecbto'] := NodeAux.ChildValues['dhResp'];
                end;
              end;
            end;
          end;
        end;
      end;
    end;
  end;
  result := TagPai;
  Xml := nil;
  TagPai := nil;
  NodeAux := nil;
end;

// Public Declarations
class function TNF_Func.StatusRetornoNF(RetornoXML: string; const mNF: integer = 65; MostraJanela: boolean = true): String;
var
  Xml, XMLaux: IXMLDocument;
  TagPai, NodeAux: IXMLNode;
  cStatus, RetornoNFCE, DataHora, dia, mes, Ano, hhmmss: string;
  xNFdoc: string;
begin
  TagPai := LoadEvtRetornoXML(RetornoXML);

  xNFdoc := TFunctions.ifthen(mNF, [55, 65], ['NF-e', 'NFC-e']);

  if TagPai.ChildValues['tpAmb'] = '1' then
    RetornoNFCE := 'Ambiente: Produção' + slinebreak
  else if TagPai.ChildValues['tpAmb'] = '2' then
    RetornoNFCE := 'Ambiente: Homologação' + slinebreak;
  NodeAux := TagPai;
  NodeAux := NodeAux.ChildNodes.FindNode('chNFe');
  if assigned(NodeAux) then
    // Para Inutilização - Informar Faixa de NF e outras operações, informar Chave
    RetornoNFCE := RetornoNFCE + 'Chave ' + xNFdoc + ': ' + TagPai.ChildValues['chNFe'] + slinebreak
  else
  begin
    NodeAux := TagPai;
    NodeAux := NodeAux.ChildNodes.FindNode('nNFIni');
    if assigned(NodeAux) then
      RetornoNFCE := RetornoNFCE + 'Faixa ' + xNFdoc + ': Inicio: ' + TagPai.ChildValues['nNFIni'] + ' Fim: ' + TagPai.ChildValues['nNFFin']
        + slinebreak;
  end;

  if assigned(TagPai.ChildNodes.FindNode('dhRecbto')) then
    DataHora := TagPai.ChildValues['dhRecbto']
  else if assigned(TagPai.ChildNodes.FindNode('dhRegEvento')) then
    DataHora := TagPai.ChildValues['dhRegEvento'];

  dia := Copy(DataHora, 9, 2) + '/';
  mes := Copy(DataHora, 6, 2) + '/';
  Ano := Copy(DataHora, 0, 4) + ' ';
  hhmmss := Copy(DataHora, 12, 8);
  DataHora := dia + mes + Ano + hhmmss;
  RetornoNFCE := RetornoNFCE + 'Data e Hora do Recebimento: ' + DataHora + slinebreak;
  // NodeAux := TagPai;
  // NodeAux := NodeAux.ChildNodes.FindNode('nProt');
  // if assigned(NodeAux) then // Para envio de evento. Em consulta não se aplica
  // RetornoNFCE := RetornoNFCE + 'Nº Protoloco: ' + TagPai.ChildValues['nProt'] + slinebreak;
  NodeAux := TagPai;
  // NodeAux := NodeAux.ChildNodes.FindNode('digVal');
  // if assigned(NodeAux) then // Para envio de evento. Em consulta não se aplica
  // RetornoNFCE := RetornoNFCE + 'Digest Value: ' + TagPai.ChildValues['digVal'] + slinebreak;
  RetornoNFCE := RetornoNFCE + 'Status: ' + TagPai.ChildValues['cStat'] + ' - ' + TagPai.ChildValues['xMotivo'];
  cStatus := TagPai.ChildValues['cStat'];
  cStatus := cStatus + #32 + TagPai.ChildValues['xMotivo'];
  if (cStatus <> '') then
  begin
    if ansimatchstr(Copy(cStatus, 1, 3), ['100', '101', '102', '107', '135', '150']) then
      TDialogs.wninfo('Retorno ' + xNFdoc, RetornoNFCE, 10, taLeftJustify)
    else
      TDialogs.wnalerta('Retorno ' + xNFdoc, RetornoNFCE, 10, taLeftJustify);
  end;
  result := cStatus;
  Xml := nil;
  TagPai := nil;
  NodeAux := nil;
end;

class function TNF_Func.getCodStatusNF(pRetornoXML: String): string;
var
  TagPai: IXMLNode;
begin
  TagPai := LoadEvtRetornoXML(pRetornoXML);
  result := TagPai.ChildValues['cStat'];
end;

class function TNF_Func.getPathEntrada(pchave: string): string;
begin
  result := tdir.NFe.Entrada + pchave + extXMLAutorizada;
end;

class function TNF_Func.EvtProcessouEvento(pRetornoXML: string): boolean;
begin
  result := ansimatchstr(getCodStatusNF(pRetornoXML), ['100', '101', '102', '107', '135', '150']);
end;

class function TNF_Func.EvtAutorizada(pRetornoXML: string): boolean;
begin
  result := ansimatchstr(getCodStatusNF(pRetornoXML), ['100', '150']);
end;

class function TNF_Func.EvtCancelada(pRetornoXML: string): boolean;
begin
  result := ansimatchstr(getCodStatusNF(pRetornoXML), ['101', '218', '420', '135', '573']);
end;

class function TNF_Func.EvtInutilizada(pRetornoXML: string): boolean;
begin
  result := ansimatchstr(getCodStatusNF(pRetornoXML), ['102', '206', '256', '563']);
end;

class function TNF_Func.EvtDownload(pRetornoXML: string): boolean;
begin
  result := ansimatchstr(getCodStatusNF(pRetornoXML), ['140', '138']);
end;

class function TNF_Func.EvtManifesto(pRetornoXML: string): boolean;
begin
  result := ansimatchstr(getCodStatusNF(pRetornoXML), ['135']);
end;

end.
