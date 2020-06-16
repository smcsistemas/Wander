//Verificado automaticamente em 16/06/2020 09:28
{ v 29.10.16 12:06 }
unit contatos_smc;

interface

uses
  Winapi.Windows, System.SysUtils, System.Classes,
  Vcl.Controls, Vcl.Forms,


  Vcl.ExtCtrls,













  inifiles, dxGDIPlusClasses;

type
  Tfrm_contatos_smc = class(TForm)
    Image1: TImage;
    tmr_tv: TTimer;
    procedure FormKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormCreate(Sender: TObject);
    procedure tmr_tvTimer(Sender: TObject);
    constructor create(acess: string); overload;

  private
    { Private declarations }

  public
    { Public declarations }
    tvpath: string;
  end;

var
  frm_contatos_smc: Tfrm_contatos_smc;

implementation

{$R *.dfm}

uses h_Functions;

constructor Tfrm_contatos_smc.create(acess: string);
begin
  inherited create(nil);
  tvpath := acess;
end;

procedure Tfrm_contatos_smc.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  Action := cafree;
  self := nil;
end;

procedure Tfrm_contatos_smc.FormCreate(Sender: TObject);
begin
  Left := 120;
  Top := 200;
  tmr_tv.Enabled := false;
  tmr_tv.Interval := 1000; // 10 segundos
  tmr_tv.Enabled := true;
end;

procedure Tfrm_contatos_smc.FormKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
begin
  if Key = vk_escape then
    close;
end;

procedure Tfrm_contatos_smc.tmr_tvTimer(Sender: TObject);
begin
  if not TFunctions.isRunning(ExtractFileName(tvpath)) then // team view fechado
    close;

end;

end.
