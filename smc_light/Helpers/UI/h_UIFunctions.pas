//Verificado automaticamente em 16/06/2020 09:27
unit h_UIFunctions;

interface

uses SysUtils, Variants, winapi.windows, System.classes, vcl.forms, FireDac.comp.client, WinSvc, TLHelp32,
  v_dir, v_Env, IdFTP, H_Net, H_db, c_globals, IdComponent, h_Functions, h_Files, dateutils, vw_Views;

type
  TUIFunctions = class(TObject)
  private
    class procedure WorkEvent(asender: TObject; aworkmode: tworkmode; AWorkCount: int64);

  public

    class function UpdateSystem: boolean;
    // atualizar sistema

    class procedure KeyCheck;
    // verificar chave de liberação

    /// <summary>
    /// Abre as opções de acesso remoto
    /// </summary>
    class procedure AcessoRemoto;

  end;

implementation

uses
  vw_acesso_remoto;

{ TUIFunctions }

class procedure TUIFunctions.WorkEvent(asender: TObject; aworkmode: tworkmode; AWorkCount: int64);
begin
  Application.ProcessMessages;
  TView.VW_UPDATE.updateProgress(AWorkCount);
end;

class function TUIFunctions.UpdateSystem: boolean;
var
  fileSize: Integer;
  sVersion, lVersion, sfVersion: string;
  qry: TFDQuery;
  ftp: TIDFTP;
  function nullVariant(x: Variant): Variant;
  begin
    if x = null then
      result := '0'
    else
      result := x;
  end;

begin
  result := false;
  try
    TView.WV_START_SYSTEM.Show(50, 'Buscando atualizações ...');
    if TFunctions.isRunning(extractfilename(TDir.SMC_LIGHT.exe_old)) then
      TFunctions.KillProcess(extractfilename(TDir.SMC_LIGHT.exe_old));

    if TFunctions.isRunning(extractfilename(TDir.SMC_SERVICOS.exe_old)) then
      TFunctions.KillProcess(extractfilename(TDir.SMC_SERVICOS.exe_old));

    TFile.Delete(TDir.SMC_LIGHT.exe_old);

    if TNet.ConnStatus then
    begin
      TView.WV_START_SYSTEM.Show(54, 'Buscando atualizações ...');
      qry := tdb.simplequery('select * from sistema_versao where id_sistema = ? order by id desc limit 1', [1], tdbconn.dbonline);
      // qry := tdb.simplequery('select * from sistema_versao_debug where id_sistema = ? order by id desc limit 1', [1], tdbconn.dbonline);

      if qry <> nil then
      begin

        TView.WV_START_SYSTEM.Show(56, 'Buscando atualizações ...');
        sfVersion := qry.fieldbyname('versao').asString;
        sVersion := TFunctions.replace(sfVersion, '.', '', vardouble);

        lVersion := TEnv.Version.SYS;
        lVersion := nullVariant(lVersion);

        lVersion := vartostr(lVersion);
        TView.WV_START_SYSTEM.Show(58, 'Buscando atualizações ...');
        if varastype(sVersion, vardouble) > varastype(lVersion, vardouble) then
        begin

          TView.WV_START_SYSTEM.Show(60, 'Buscando atualizações ...');
          try
            TNet.configFTP(ftp);
          except
            on e: exception do
              TFunctions.Write_Log('Erro ao configurar FTP para atualização:' + e.Message);
          end;

          TView.WV_START_SYSTEM.Show(61, 'Buscando atualizações ...');
          TFile.Delete(TDir.SMC_LIGHT.rar);
          fileSize := ftp.size(TDir.Server.SMC_LIGHT_FILE) div 1024;

          TView.WV_START_SYSTEM.Show(65, 'Buscando atualizações ...');
          ftp.OnWork := self.WorkEvent;

          TView.WV_START_SYSTEM.close;
          TView.VW_UPDATE.Show(sfVersion, qry.fieldbyname('descricao').asString);
          TView.VW_UPDATE.progressBar(fileSize);

          ftp.Get(TDir.Server.SMC_LIGHT_FILE, TDir.SMC_LIGHT.rar, true);

          TFile.Rename(TDir.SMC_LIGHT.exe, TDir.SMC_LIGHT.exe_old);

          TFile.CpacDpac(TDir.SMC_LIGHT.rar, TDir.temp.Update, false);

          if FileExists(TDir.temp.Update + 'bin\SMC_SERVICOS.exe') then
            TFile.Rename(TDir.SMC_SERVICOS.exe, TDir.SMC_SERVICOS.exe_old);

          TFile.Delete(TDir.temp.Update);
          TFile.CpacDpac(TDir.SMC_LIGHT.rar, TDir.System, false);
          TFile.Delete(TDir.SMC_LIGHT.rar);

          TEnv.Version.SYS := sfVersion;

          qry := tdb.simplequery('SELECT CNPJ FROM EMPRESA');

          if qry <> nil then
          begin
            qry := tdb.simplequery('select id from Cliente where cnpj = ?', [TFunctions.replace(qry.Fields[0].asString, ['.', '/', '-'])], tdbconn.dbonline);
            if qry <> nil then
              tdb.ExecQuery('insert into cliente_sys_versao(id_cliente, id_sistema, versao) values(?,?,?)', [qry.Fields[0].AsInteger, 1, sfVersion], dbonline);
          end;
          result := true;
          TFunctions.ExecuteCommand('schtasks /delete /tn "SMC_LIGHT" /F', sw_hide);
          TFunctions.ExecuteCommand('schtasks /delete /tn "DELETE_SMC_LIGHT" /F', sw_hide);
          TFunctions.ExecuteCommand('schtasks /create /tn "SMC_LIGHT" /tr ' + TDir.SMC_LIGHT.exe + ' /sc once /sd ' + formatdatetime('dd/mm/yyyy', date) +
            ' /st ' + formatdatetime('HH:mm:ss', incsecond(now, 50)) + ' /F', sw_hide);
          TFunctions.ExecuteCommand('schtasks /create /tn "DELETE_SMC_LIGHT" /tr "schtasks /delete /tn "SMC_LIGHT" /F" /sc once /sd ' +
            formatdatetime('dd/mm/yyyy ', date) + ' /st ' + formatdatetime('HH:mm:ss ', incminute(now, 01)) + ' /F', sw_hide);
          TView.VW_UPDATE.close;
          TFile.Delete(TDir.temp.Root);
        END;
      end;
    end
    else
      TFunctions.Write_Log('Falha na conexão de internet ao buscar atualizações!');

  except

    on e: exception do
    begin
      TView.VW_UPDATE.close;
      TFunctions.Write_Log('Erro ao buscar atualizações: ' + e.Message);
    end;

  end;
end;

class procedure TUIFunctions.AcessoRemoto;
begin
  if not TFunctions.CheckOpen(frm_acesso_remoto) then
    frm_acesso_remoto := Tfrm_acesso_remoto.Create(nil);
  frm_acesso_remoto.showmodal;
end;

class procedure TUIFunctions.KeyCheck;

var
  qry: TFDQuery;
  nfe, nfce, nfse, sped, chave_vencida, dias_antes_vencimento: boolean;
  chave_dias: Integer;
  data_vencimento: tdatetime;
  strLocalKey: TStringList;
  cnpj, situacao: string;
  procedure doValidationKey;
    procedure blockedSystem;
    begin
      TView.VW_KEY_VERIFYING.close;
      TView.VW_KEY_BLOCKED.Show;
      TView.VW_KEY_BLOCKED.close;
      Application.Terminate;
    end;

  begin
    if situacao = 'ATIVO' then // situacao da chave
    begin
      chave_vencida := (comparedate(data_vencimento, System.SysUtils.date) = -1);
      if chave_vencida then
      begin
        if DayOf(TEnv.date.LastDayOfMonth) = 31 then
          data_vencimento := incday(data_vencimento + 29)
        else
          data_vencimento := incday(data_vencimento + 30);
        dias_antes_vencimento := (comparedate(System.SysUtils.date, data_vencimento) <> 1);
        chave_dias := DaysBetween(System.SysUtils.date, data_vencimento);
        if dias_antes_vencimento then
        begin
          if chave_dias in [1, 2, 3, 4, 5, 10, 15, 20, 25, 30] then
          begin
            TView.WV_START_SYSTEM.close;
            TView.VW_KEY_DAYS_AFTER.Show(chave_dias);
            TView.VW_KEY_DAYS_AFTER.close;
          end
          else if chave_dias = 0 then
          begin
            TView.WV_START_SYSTEM.close;
            TView.VW_KEY_LAST_DAY_BEFORE_BLOCK.Show;
            TView.VW_KEY_LAST_DAY_BEFORE_BLOCK.close;
          end;
        end
        else
          blockedSystem;
      end
      else
      begin
        chave_dias := DaysBetween(System.SysUtils.date, data_vencimento);
        if chave_dias in [5, 4, 3, 2, 1] then
        begin
          TView.WV_START_SYSTEM.close;
          TView.VW_KEY_DAYS_BEFORE.Show(chave_dias);
          TView.VW_KEY_DAYS_BEFORE.close;
        end
        else if chave_dias = 0 then
        begin
          TView.WV_START_SYSTEM.close;
          TView.VW_KEY_LAST_DAY_WITH_DISCOUNT.Show;
          TView.VW_KEY_LAST_DAY_WITH_DISCOUNT.close;
        end
      end;
    end
    else
      blockedSystem;
  end;

  procedure verificarKey;

    procedure offLineKey;
    begin
      strLocalKey := TEnv.Configurations.LOCAL_KEY;
      if strLocalKey <> nil then
      begin
        data_vencimento := encodedate(strtoint(copy(strLocalKey.Strings[0], 0, 4)), strtoint(copy(strLocalKey.Strings[0], 6, 2)),
          strtoint(copy(strLocalKey.Strings[0], 9, 2)));
        situacao := TFunctions.IfThen(strLocalKey.Strings[2], ['0', '1', '2'], ['ATIVO', 'BLOQUEADO', 'INATIVO']);
      end
      else
        raise exception.Create('Não foi possível verificar a chave de liberação do sistema! Entre em contato com o suporte técnico para mais informações!');
    end;

    procedure onLineKey;
    begin
      if qry <> nil then
      begin

        nfe := qry.fieldbyname('nfe').AsBoolean;
        nfce := qry.fieldbyname('nfce').AsBoolean;
        nfse := qry.fieldbyname('nfse').AsBoolean;
        sped := qry.fieldbyname('sped').AsBoolean;

        tdb.ExecQuery('update parametros_nfce set utiliza_nfce = ?', [nfce]);

        data_vencimento := qry.fieldbyname('data_vencimento').asDateTime;
        situacao := qry.fieldbyname('situacao').asString;
        if (data_vencimento <> c_globals.NullDate) and (situacao <> emptystr) then
        begin
          strLocalKey := TStringList.Create;
          strLocalKey.Add(formatdatetime('yyyyAmmAdd', data_vencimento)); // data (yyyyAmmAdd)
          if length(strLocalKey.Strings[0]) = 9 then
            strLocalKey.Strings[0] := strLocalKey.Strings[0] + '0';
          strLocalKey.Add(cnpj);
          strLocalKey.Add(TFunctions.IfThen(situacao, ['ATIVO', 'BLOQUEADO', 'INATIVO'], ['0', '1', '2']));
          // Ultimo status  0 - Ativo , 1 - Bloqueado, 2 - Inativo
          TEnv.Configurations.LOCAL_KEY := strLocalKey;
        end;
      end;
    end;

  begin
    if TNet.ConnStatus(cckPartialVerification) then
    begin
      try
        qry := tdb.simplequery('select c.id, c.nfce, c.nfe, c.nfse, c.sped,' +
          '(select sc.data_vencimento from status_cliente sc where sc.id_cliente = c.id order by id desc limit 1) as data_vencimento,' +
          '(select sc.situacao from status_cliente sc where sc.id_cliente = c.id order by id desc limit 1) as situacao from Cliente c where c.cnpj = ? limit 1',
          [cnpj], dbonline);
        onLineKey;
      except
        on e: exception do
        begin
          TFunctions.Write_Log('Erro ao consultar chave online:' + e.Message);
          offLineKey
        end;
      end;
    end
    else
      offLineKey;

    doValidationKey;

  end;

  function showWinCNPJCPF: boolean;
  begin
    TView.WN_MANUAL_KEY.Show;
    result := true;

    if not TView.WN_MANUAL_KEY.continueApp then
    begin
      Application.Terminate;
      result := false;
    end
    else
    begin
      qry := nil;
      qry := tdb.simplequery('SELECT CNPJ FROM EMPRESA');
    end;
  end;

begin
  try
    TView.WV_START_SYSTEM.Show(70, 'Consultando licença do sistema ...');
    qry := tdb.simplequery('SELECT CNPJ FROM EMPRESA'); // consulta local

    if qry = nil then
    begin
      if not showWinCNPJCPF then
        exit
    end
    else if qry.Fields[0].asString = '' then
    begin
      if not showWinCNPJCPF then
        exit
    end;
    TView.WV_START_SYSTEM.Show(75, 'Consultando licença do sistema ...');
    cnpj := TFunctions.replace(qry.Fields[0].asString, ['.', '/', '-']);
    verificarKey;
    TView.WV_START_SYSTEM.Show(80, 'Consultando licença do sistema ...');
  except
    on e: exception do
      raise exception.Create(e.Message);
  end;
end;

end.
