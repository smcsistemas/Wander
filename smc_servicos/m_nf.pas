unit m_NF;

interface

uses
  spdNFe, spdNFeType, sysutils, classes, FireDAC.comp.client, System.Math,
  spdNFeDataSets, vcl.dialogs, System.StrUtils, h_Files, System.IniFiles,
  spdNFCe, System.Contnrs, spdNFCeDataSets, m_XML, vcl.Menus;

type
  TNF = class
  private const
    extXMLAutorizada = '-NFe.xml';
    nfHeader = '<?xml version="1.0" encoding="UTF-8"?><nfeProc versao="3.10" xmlns="http://www.portalfiscal.inf.br/nfe">';
    NF_INUTILIZACAO_CANCELAR = 'Erro nas informaÁıes da NFC-e';
    NF_PRODUTO_HOMOLOGACAO = 'NOTA FISCAL EMITIDA EM AMBIENTE DE HOMOLOGACAO - SEM VALOR FISCAL';
    NF_DESTINO_HOMOLOGACAO = 'NF-E EMITIDA EM AMBIENTE DE HOMOLOGACAO - SEM VALOR FISCAL';
    NF_CONTINGENCIA = 'OscilaÁ„o de internet impede o envio normal';

  var
    CP_NFe: TspdNFe;
    DS_NFe: tspdNFeDataSets;
    CP_NFCe: TspdNFCe;
    DS_NFCe: tspdNFCeDataSets;
    function ConfigurarComponente: boolean;
    procedure configureTLLSSL;
  public
    // Propriedades
    constructor create; overload;
    procedure consultarNfeDisponiveis;

  type
    Date = class
      class function Format(value: TDateTime): string;
      class function UnFormat(value: string): TDateTime;
    end;

  type
    Valor = class
      class function Format(value: extended): string;
      class function UnFormat(value: string): extended;
    end;

  var
    XMLNf: TXml end;

implementation

uses
  h_Functions, h_DB, v_Dir, vw_main;

{ m_NFe }

constructor TNF.create;
begin
  inherited create;
  CP_NFe := TspdNFe.create(nil);
  DS_NFe := tspdNFeDataSets.create(nil);
  ConfigurarComponente;
end;

function TNF.ConfigurarComponente: boolean;
var
  qry: tfdquery;
begin
  try
    { classe de diretÛrios | para organizaÁ„o das pastas }
    qry := tdb.simplequery('SELECT cn.ambiente, cn.certificado, e.cnpj, e.estado from empresa e, config_notas cn');
    if qry <> nil then
    begin
      // [COMPONENTE]
      configureTLLSSL;
      CP_NFe.Ambiente := TFunctions.ifthen(qry.Fieldbyname('ambiente').asString, ['PRODUCAO', 'HOMOLOGACAO'], [akProducao, akHomologacao]);
      CP_NFe.UF := qry.Fieldbyname('estado').asString;
      CP_NFe.CNPJ := qry.Fieldbyname('cnpj').asString;
      CP_NFe.ArquivoServidoresHom := TDir.NFe.ConfigNFe + 'nfeServidoresHom.ini';
      CP_NFe.ArquivoServidoresProd := TDir.NFe.ConfigNFe + 'nfeServidoresProd.ini';
      CP_NFe.DiretorioEsquemas := TDir.NFe.ConfigNFe + 'Esquemas\';
      CP_NFe.DiretorioTemplates := TDir.NFe.ConfigNFe + 'Templates\';
      CP_NFe.DiretorioLog := TDir.NFe.ConfigNFe + 'Log\';
      CP_NFe.DiretorioLogErro := TDir.NFe.ConfigNFe + 'LogErro\';
      CP_NFe.DiretorioTemporario := TDir.NFe.ConfigNFe + 'Temporario\';
      CP_NFe.DiretorioXmlDestinatario := TDir.NFe.Pendentes;
      CP_NFe.DiretorioDownloads := TDir.NFe.Entrada;
      CP_NFe.TipoCertificado := ckFile;
      CP_NFe.NomeCertificado.Clear;
      CP_NFe.NomeCertificado.Text := TFunctions.replace(qry.Fieldbyname('certificado').asString, slinebreak);
      CP_NFe.VersaoManual := TVersaoManual.vm50a;
      CP_NFe.ConexaoSegura := true;
      CP_NFe.ValidarEsquemaAntesEnvio := true;
      CP_NFe.MaxSizeLoteEnvio := 500;
      CP_NFe.AnexarDanfePDF := true;
      CP_NFe.CaracteresRemoverAcentos := '·ÈÌÛ˙‡ËÏÚ˘‚ÍÓÙ˚‰ÎÔˆ¸„ıÒ¡…Õ”⁄¿»Ã“Ÿ¬ Œ‘€ƒÀœ÷‹√’—';

      // [DANFE]
      CP_NFe.DanfeSettings.InfCplMaxCol := 68;
      CP_NFe.DanfeSettings.InfCplMaxRow := 7;
      CP_NFe.DanfeSettings.FraseContingencia := NF_CONTINGENCIA;
      CP_NFe.DanfeSettings.FraseHomologacao := NF_PRODUTO_HOMOLOGACAO;
      CP_NFe.DanfeSettings.ModeloRetrato := TDir.NFe.danfe.retrato;
      CP_NFe.DanfeSettings.ModeloPaisagem := TDir.NFe.danfe.Paisagem;
      CP_NFe.DanfeSettings.QtdeCopias := 1;
      CP_NFe.CheckConfig;
      result := true;
    end
    else
    begin
      result := false;
      TFunctions.write_Log('N„o foram encontrados dados cadsatrais da empresa e das configuraÁıes da NFe modelo 55');
    end;
  except
    on e: exception do
    begin
      result := false;
      TFunctions.write_Log(e.message + ' Erro ao configurar componente da NFe!');
    end;
  end;
end;

procedure TNF.configureTLLSSL;
begin
  TFunctions.ExecuteCommand('reg add "HKCU\Software\Microsoft\Windows\CurrentVersion\Internet Settings" /f /v "SecureProtocols" /t REG_DWORD /d "160"');
end;

procedure TNF.consultarNfeDisponiveis;
var
  qry: tfdquery;
  arrXML: tarray<TXml>;
  aXML: TXml;
  chave, CNPJ, caminho, nfEmitidas, NSU, debug: string;
  i: integer;
begin
  try
    frm_main.TrSettings.Hint := 'Consultando Notas ... ';
    frm_main.TrSettings.Animate := true;
    ConfigurarComponente;
    nfEmitidas := '';

    qry := tdb.simplequery('select max(nsu) from nfe_nsu limit 1');
    NSU := '000000000000001';

    if qry <> nil then
      if qry.Fields[0].asString <> '' then
        NSU := qry.Fields[0].asString;
    qry := tdb.simplequery('SELECT COD_UF,CNPJ from empresa');

    if qry <> nil then
    begin
      CNPJ := qry.Fields[1].asString;
      XMLNf := TXml.create(CP_NFe.ConsultarDistribuicaoDFe(qry.Fields[0].asString, CNPJ, NSU, TNSUKind.nkUltimo));
      if XMLNf.value('cStat') = '138' then // notas disponÌveis para download
      begin

        tdb.ExecQuery('insert into nfe_nsu(nsu) values(?)', [XMLNf.Tag('loteDistDFeInt').Tag('ultNSU').value]);

        arrXML := XMLNf.Tag('loteDistDFeInt').Tags('docZip');

        // tfile.create('D:\\full_return.xml').Append('D:\\full_return.xml', XMLNf.XML);
        // for i := 0 to length(arrXML) - 1 do
        // debug := debug + slinebreak + slinebreak + arrXML[i].XML;
        // tfile.create('D:\\notas.xml').Append('D:\\notas.xml', debug);
        // debug := '';
        // for i := 0 to length(arrXML) - 1 do
        // debug := debug + slinebreak + slinebreak + CP_NFe.DescompactarXMLZip(arrXML[i].value);
        // tfile.create('D:\\notas_despac.xml').Append('D:\\notas_despac.xml', debug);
        // exit;

        for i := 0 to high(arrXML) do
        begin

          aXML := TXml.create(CP_NFe.DescompactarXMLZip(arrXML[i].value));

          if not aXML.rootIs('procEventoNFe') then { Nota emitida pelo cnpj da empresa consultada e manifestada pelo cliente | retorno do manifesto }
          begin
            if aXML.rootIs('resNFe') then { Nota emitida e n„o manifestada }
            begin

              chave := aXML.value('chNFe');

              qry := tdb.simplequery('SELECT id FROM nfe_destinadas where chave = ?', [chave]);

              if qry = nil then
              begin
                tdb.ExecQuery('INSERT INTO nfe_destinadas(chave, fornecedor, cnpj, data_emissao, valor, id_manifesto) values (?,?,?,?,?,?)',
                  [chave, aXML.value('xNome'), aXML.value('CNPJ'), TNF.Date.UnFormat(aXML.value('dhEmi')), aXML.value('vNF'), 99]);

                if nfEmitidas.IsEmpty then
                  nfEmitidas := 'Por: ' + aXML.value('xNome') + ' Valor: ' + TNF.Valor.Format(TNF.Valor.UnFormat(aXML.value('vNF')))
                else
                  nfEmitidas := nfEmitidas + slinebreak + 'Por: ' + aXML.value('xNome') + ' Valor: ' + TNF.Valor.Format(TNF.Valor.UnFormat(aXML.value('vNF')));
              end;
            end
            else if aXML.rootIs('nfeProc') then { Nota emitida e manifestada com "ConfirmaÁ„o da operaÁ„o" | Download Liberado }
            begin

              chave := TFunctions.replace(aXML.Tag('NFe').attValue('infNFe', 'Id'), 'NFe');
              caminho := TDir.NFe.Destinadas + chave + '-nfe.xml';
              if fileexists(caminho) then
                tfile.Delete(caminho);
              caminho := tfile.create(caminho).Append(caminho, aXML.XML);
              qry := tdb.simplequery('SELECT id, CAMINHO_XML, id_manifesto FROM nfe_destinadas where chave = ?', [chave]);

              if qry <> nil then
              begin

                with qry do
                begin

                  Edit;
                  Fieldbyname('ID_MANIFESTO').asInteger := 2; // registrando ConfirmaÁ„o da operaÁ„o na nfe
                  Fieldbyname('CAMINHO_XML').asString := caminho;
                  post;

                end;
              end;

            end;
          end;
        end;
        TFunctions.write_Log('Notas disponÌveis para cnpj ' + CNPJ + ' foram consultadas!');
        frm_main.TrSettings.BalloonTitle := 'Notas Emitidas contra seu CNPJ!';
        frm_main.TrSettings.BalloonHint := nfEmitidas;
        frm_main.TrSettings.ShowBalloonHint;
        frm_main.TrSettings.Animate := true;
      end;
    end;

    frm_main.defaultTray;
  except
    on e: exception do
      TFunctions.write_Log(e.message);
  end;

end;

{ TNF.Date }

class function TNF.Date.Format(value: TDateTime): string;
begin
  result := formatdatetime('yyyy-mm-dd', value) + 'T' + formatdatetime('HH:MM:SS', value) + '-04:00';
end;

class function TNF.Date.UnFormat(value: string): TDateTime;
begin
  if value <> '' then
  begin
    result := EncodeDate(strtoint(copy(value, 0, 4)), strtoint(copy(value, 6, 2)), strtoint(copy(value, 9, 2)));
    replacetime(result, EncodeTime(strtoint(copy(value, 12, 2)), strtoint(copy(value, 15, 2)), strtoint(copy(value, 18, 2)), 0));
  end;

end;

{ TNF.Valor }

class function TNF.Valor.Format(value: extended): string;
begin
  result := 'R$ ' + formatfloat('###,##0.00', value);
end;

class function TNF.Valor.UnFormat(value: string): extended;
begin
  result := (TFunctions.replace(value, '.', ',', vardouble));
end;

end.
