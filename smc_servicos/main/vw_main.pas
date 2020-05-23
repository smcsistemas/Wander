{ v1.0.1 }
unit vw_main;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes,
  Vcl.Graphics, Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.Menus, Vcl.ExtCtrls,
  Vcl.ImgList, IdFTP, IdFTPCommon, firedac.comp.client, Vcl.PlatformDefaultStyleActnCtrls, IdComponent,
  Vcl.ActnPopup, h_net, firedac.dapt;

type

  Tfrm_main = class(TForm)

    TrSettings: TTrayIcon;
    lstIcon: TImageList;
    popKorn: TPopupMenu;
    Sair1: TMenuItem;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormCloseQuery(Sender: TObject; var CanClose: Boolean);
    procedure FormCreate(Sender: TObject);
    procedure Sair1Click(Sender: TObject);
    procedure defaultTray;

  private
    { Private declarations }

    procedure Backup;
    procedure evtBackup(Sender: TObject);
    procedure ConsultarNFEntrada;
    procedure evtConsultarNfeEntrada(Sender: TObject);
    procedure NetStatus;
    procedure evtNetStatus(Sender: TObject);
    procedure doConfigApp;
    procedure freeInstances;

  public
    { Public declarations }
  end;

var
  frm_main: Tfrm_main;
  tmrbkp: TTimer; // Timer para efetuar backup dos dados; Intervalo de 8h
  tmrConsultaNFE: TTimer; // Timer para consultar as NF emitdas contra um cnpj; Intervalo de 1h
  tmrNet: TTimer; // Timer para efetuar verificação de internet; 5 sec
  ftp: TidFTP;

implementation

{$R *.dfm}

uses
  h_Functions, v_Env, h_Files, v_Dir, c_Globals, h_DB, m_XML, m_nf;

procedure Tfrm_main.Backup;
begin
  try
    if tmrbkp = nil then
    begin
      tmrbkp := TTimer.Create(self);
      tmrbkp.interval := 28800000;
      tmrbkp.OnTimer := self.evtBackup;
      tmrbkp.Enabled := true;
    end;
    self.evtBackup(self);
  except
    on e: Exception do
      TFunctions.write_Log('Erro na função backup: ' + e.message);
  end;

end;

procedure Tfrm_main.ConsultarNFEntrada;
begin
  try
    if tmrConsultaNFE = nil then
    begin
      tmrConsultaNFE := TTimer.Create(self);
      tmrConsultaNFE.interval := 3600000;
      tmrConsultaNFE.OnTimer := self.evtConsultarNfeEntrada;
      tmrConsultaNFE.Enabled := true;
    end;
    self.evtConsultarNfeEntrada(self);
  except
    on e: Exception do
      TFunctions.write_Log('Erro ao configurar consulta NF-e: ' + e.message);
  end;

end;

procedure Tfrm_main.defaultTray;
begin
  TrSettings.Hint := 'SMC Serviços';
  TrSettings.Animate := false;
  TrSettings.IconIndex := 0;
end;

procedure Tfrm_main.doConfigApp;
begin
  ShowWindowAsync(Application.Handle, sw_Hide);
  defaultTray;

  self.NetStatus;
  self.Backup;
  // self.ConsultarNFEntrada;

end;

procedure Tfrm_main.evtBackup(Sender: TObject);
  function FileDirExists(var pathDir: string; FTPComp: TidFTP; regexPattern: string = '^.*$'; specifier: string = ''): Boolean;
  var
    DirList: Tstringlist;
    DirOfList: string;
    m_FTP: TidFTP;
  begin
    result := false;
    DirList := Tstringlist.Create;
    m_FTP := FTPComp;
    m_FTP.List(DirList, specifier, false);
    for DirOfList in DirList do
    begin
      result := TFunctions.getSubRegex(pathDir, regexPattern) = TFunctions.getSubRegex(DirOfList, regexPattern);
      if result then
      begin
        pathDir := DirOfList;
        break;
      end;
    end;
    DirList.Free;
  end;

var
  fileIt, path, pathftp_root, pathftp_date, full_path, cnpj: string;
  qry_local, qry_online: TFDQUERY;
  arrFiles: TARRAy<string>;
  main_bkp_file: string;
begin
  try
    qry_local := TDB.SimpleQuery('SELECT NOME_FANTASIA, CNPJ FROM EMPRESA');
    if qry_local <> nil then
    begin
      if tnet.ConnStatus then
      begin
        TrSettings.Hint := 'Efetuando Backup ...';
        TrSettings.Animate := true;
        arrFiles := TFunctions.searchfiles(TDir.System, '*.zip');
        for fileIt in arrFiles do
          if copy(fileIt, 0, 3) = 'bkp' then
            tfile.delete(TDir.System + fileIt);
        tfile.copy(TDir.NFCE.Root, TDir.temp.Root);
        tfile.copy(TDir.NFe.Root, TDir.temp.Root);
        TDB.Backup;
        path := TDir.bkpname; // inicia compactacao **file full path**
        tfile.CpacDpac(TDir.temp.Root + '*', path, true);
        tfile.delete(TDir.temp.Root);
        cnpj := TFunctions.replace(qry_local.Fields[1].AsString, ['.', '/', '-']);
        pathftp_root := cnpj + '_' + TFunctions.replace(qry_local.Fields[0].AsString, [' ', '  ', '.', ',', ':', '"', '/', '\', '*', '?', '|', '<', '>'], '_');
        pathftp_root := TFunctions.ClearUTF8(pathftp_root);
        pathftp_date := FormatDateTime('mmyyyy', Date);
        tnet.configFTP(ftp);
        full_path := TDir.Server.ROOT_BACKUP + pathftp_root + pathftp_date;
        ftp.ChangeDir(TDir.Server.ROOT_BACKUP);
        if not FileDirExists(pathftp_root, ftp, '^\d.+_') then // match only cpf or cnpj at begin of dir name
          ftp.MakeDir(pathftp_root);
        ftp.ChangeDir(pathftp_root);
        if not FileDirExists(pathftp_date, ftp) then
          ftp.MakeDir(pathftp_date);
        ftp.ChangeDir(pathftp_date);
        main_bkp_file := ExtractFileName(path);
        if FileDirExists(main_bkp_file, ftp, '^.*$', '*.zip') then
          ftp.delete(main_bkp_file);
        ftp.Put(path, main_bkp_file);
        ftp.Disconnect;

        // Evento para gerar backup local
        tfile.delete(TDir.Backup + TDir.bkpfile);
        tfile.Move(path, TDir.Backup);

        qry_online := TDB.SimpleQuery('SELECT cnpj, id FROM Cliente WHERE cnpj = ?', [cnpj], dbOnline);
        if qry_online <> nil then
          TDB.ExecQuery('INSERT INTO arquivo (id_cliente, caminho) VALUES (?,?)',
            [qry_online.Fields[1].AsInteger, TDir.Server.FULL_PATH_BACKUP + TDir.Server.ROOT_BACKUP + pathftp_root + '/' + pathftp_date + '/' + main_bkp_file],
            dbOnline);
        TFunctions.write_Log('Backup realizado com sucesso');
        defaultTray;
      end;
    end;
  except
    on e: Exception do
      TFunctions.write_Log('Erro ao processar backup: ' + e.message);
  end;
end;

procedure Tfrm_main.evtConsultarNfeEntrada(Sender: TObject);
begin
  tnf.Create.consultarNfeDisponiveis;
end;

procedure Tfrm_main.evtNetStatus(Sender: TObject);
  procedure verifyRecord(value: string);
  begin
    if TDB.SimpleQuery('SELECT TIPO_NOTA FROM CONFIG_NOTAS') <> nil then

      TDB.ExecQuery('UPDATE CONFIG_NOTAS SET TIPO_NOTA = ?', [value])
    else
      TDB.ExecQuery('insert into config_notas(TIPO_NOTA) values(?)', [value])
  end;

begin
  if tnet.ConnStatus then
    verifyRecord('NORMAL')
  else
  begin
    TFunctions.write_Log('Conexão instável, modo de contingência habilitado.');
    verifyRecord('CONTINGENCIA')
  end;
end;

procedure Tfrm_main.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  TFunctions.write_Log('SMC Serviços finalizou sua execução');
  Action := cafree;
  self := nil;
  Application.Terminate;
end;

procedure Tfrm_main.FormCloseQuery(Sender: TObject; var CanClose: Boolean);
begin
  CanClose := true;
end;

procedure Tfrm_main.FormCreate(Sender: TObject);
begin
  doConfigApp;
end;

procedure Tfrm_main.freeInstances;
begin

  if tmrbkp <> nil then
  begin
    tmrbkp.Enabled := false;
    tmrbkp := nil;
  end;

  if tmrConsultaNFE <> nil then
  begin
    tmrConsultaNFE.Enabled := false;
    tmrConsultaNFE := nil;
  end;

  if tmrNet <> nil then
  begin
    tmrNet.Enabled := false;
    tmrNet := nil;
  end;

  if ftp <> nil then
  begin
    ftp.Disconnect;
    ftp := nil;
  end;

end;

procedure Tfrm_main.NetStatus;
begin
  try
    if tmrNet = nil then
    begin
      tmrNet := TTimer.Create(self);
      tmrNet.interval := 5000;
      tmrNet.OnTimer := self.evtNetStatus;
      tmrNet.Enabled := true;
    end;
    self.evtNetStatus(self);
  except
    on e: Exception do
      TFunctions.write_Log('Erro ao configurar net status: ' + e.message);
  end;
end;

procedure Tfrm_main.Sair1Click(Sender: TObject);
begin

  if Application.MessageBox('Deseja encerrar o sistema SMC LIGHT ?', 'SMC LIGHT', MB_YESNO + MB_ICONQUESTION) = id_yes then
  begin
    if TFunctions.isRunning(ExtractFileName(TDir.SMC_LIGHT.exe)) then
      TFunctions.KillProcess(ExtractFileName(TDir.SMC_LIGHT.exe));
    freeInstances;
    close;
  end;
end;

end.
