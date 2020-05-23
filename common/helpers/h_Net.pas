unit h_Net;

interface

uses winApi.wininet, IdFTP, IdFTPCommon, v_env, Classes, Windows, SysUtils, WinSock, StdCtrls,
  IdTCPConnection,
  IdTCPClient, IdSSLOpenSSL,
  IdExplicitTLSClientServerBase;

type
  conncheckKind = (cckFullVerification, cckPartialVerification);

type
  TNet = class(TObject)
  public
    class function ConnStatus(cck: conncheckKind = cckFullVerification): boolean;
    class procedure ConfigFTP(var cmpFTP: tidFTP);
    class function getAllPc: TStringlist;
  end;

var
  m_ftp: tidFTP;
  m_Connect_Status: boolean;

implementation

{ TNet }

class procedure TNet.ConfigFTP(var cmpFTP: tidFTP);
begin
  if cmpFTP = nil then
  begin
    cmpFTP := tidFTP.Create(nil);
    cmpFTP.Host := TEnv.TServerFTP.Host;
    cmpFTP.Username := TEnv.TServerFTP.user;
    cmpFTP.Password := TEnv.TServerFTP.Password;
    cmpFTP.Port := 21;
    cmpFTP.TransferType := ftBinary;
    cmpFTP.CurrentTransferMode := dmStream;
    cmpFTP.ReadTimeout := 1000000;
    cmpFTP.TransferTimeout := 1000000;
    cmpFTP.IOHandler := TIdSSLIOHandlerSocketOpenSSL.Create(cmpFTP);
    cmpFTP.UseTLS := utUseExplicitTLS;
    cmpFTP.DataPortProtection := ftpdpsPrivate;
    cmpFTP.Passive := true;
    cmpFTP.NATKeepAlive := TIdFTPKeepAlive.Create;
    cmpFTP.NATKeepAlive.IdleTimeMS := 600000;
    cmpFTP.NATKeepAlive.IntervalMS := 5000;
    if not cmpFTP.connected then
    begin
      cmpFTP.disConnect;
      cmpFTP.Connect;
    end;
  end;
end;

class function TNet.ConnStatus(cck: conncheckKind = cckFullVerification): boolean;
var
  connflags: cardinal;
begin
  case cck of
    cckFullVerification:
      begin
        if InternetGetConnectedState(@connflags, 0) then
          m_Connect_Status := InternetCheckConnection(PwideChar('http://www.google.com.br'), 1, 0)
        else
          m_Connect_Status := false;
      end;
    cckPartialVerification:
      ;
  end;

  result := m_Connect_Status;
end;

class function TNet.getAllPc: TStringlist;

type
  PNetResourceArray = ^TNetResourceArray;
  TNetResourceArray = array [0 .. 100] of TNetResource;

  function CreateNetResourceList(ResourceType: DWord; NetResource: PNetResource; out Entries: DWord; out List: PNetResourceArray): boolean;
  var
    EnumHandle: THandle;
    BufSize: DWord;
    Res: DWord;
  begin
    result := false;
    List := Nil;
    Entries := 0;
    if WNetOpenEnum(RESOURCE_GLOBALNET, ResourceType, 0, NetResource, EnumHandle) = NO_ERROR then
    begin
      try
        BufSize := $4000; // 16 kByte
        GetMem(List, BufSize);
        try
          repeat
            Entries := DWord(-1);
            FillChar(List^, BufSize, 0);
            Res := WNetEnumResource(EnumHandle, Entries, List, BufSize);
            if Res = ERROR_MORE_DATA then
            begin
              ReAllocMem(List, BufSize);
            end;
          until Res <> ERROR_MORE_DATA;

          result := Res = NO_ERROR;
          if not result then
          begin
            FreeMem(List);
            List := Nil;
            Entries := 0;
          end;
        except
          FreeMem(List);
          raise;
        end;
      finally
        WNetCloseEnum(EnumHandle);
      end;
    end;
  end;

  procedure ScanNetworkResources(ResourceType, DisplayType: DWord; List: TStringlist);

    procedure ScanLevel(NetResource: PNetResource);
    var
      Entries: DWord;
      NetResourceList: PNetResourceArray;
      i: Integer;
    begin
      if CreateNetResourceList(ResourceType, NetResource, Entries, NetResourceList) then
        try
          for i := 0 to Integer(Entries) - 1 do
          begin
            if (DisplayType = RESOURCEDISPLAYTYPE_GENERIC) or (NetResourceList[i].dwDisplayType = DisplayType) then
            begin
              List.addObject(NetResourceList[i].lpRemoteName, Pointer(NetResourceList[i].dwDisplayType));
            end;
            if (NetResourceList[i].dwUsage and RESOURCEUSAGE_CONTAINER) <> 0 then
              ScanLevel(@NetResourceList[i]);
          end;
        finally
          FreeMem(NetResourceList);
        end;
    end;

  begin
    ScanLevel(Nil);
  end;

var
  ListPC: TStringlist;
begin
  ListPC := TStringlist.Create;
  ScanNetworkResources(RESOURCETYPE_DISK, RESOURCEDISPLAYTYPE_SERVER, ListPC);
  result := ListPC;
end;

end.
