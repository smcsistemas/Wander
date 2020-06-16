//Verificado automaticamente em 16/06/2020 09:26
unit nfe_tributacao;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, cxGraphics, cxControls, cxLookAndFeels,
  cxLookAndFeelPainters, cxContainer, cxEdit, dxSkinsCore, Vcl.StdCtrls,
  Vcl.Mask, Vcl.DBCtrls, cxGroupBox;

type
  Tfrm_nfe_tributacao = class(TForm)
    cxGroupBox10: TcxGroupBox;
    Label53: TLabel;
    Label54: TLabel;
    Label55: TLabel;
    Label56: TLabel;
    Label57: TLabel;
    DBEdit51: TDBEdit;
    DBEdit52: TDBEdit;
    DBEdit53: TDBEdit;
    DBEdit54: TDBEdit;
    DBEdit55: TDBEdit;
    cxGroupBox16: TcxGroupBox;
    Label69: TLabel;
    Label70: TLabel;
    DBEdit67: TDBEdit;
    DBEdit68: TDBEdit;
    cxGroupBox14: TcxGroupBox;
    Label65: TLabel;
    Label66: TLabel;
    DBEdit63: TDBEdit;
    DBEdit64: TDBEdit;
    cxGroupBox15: TcxGroupBox;
    Label67: TLabel;
    Label68: TLabel;
    DBEdit65: TDBEdit;
    DBEdit66: TDBEdit;
    cxGroupBox13: TcxGroupBox;
    Label63: TLabel;
    Label64: TLabel;
    DBEdit61: TDBEdit;
    DBEdit62: TDBEdit;
    cxGroupBox12: TcxGroupBox;
    Label60: TLabel;
    Label62: TLabel;
    DBEdit58: TDBEdit;
    DBEdit60: TDBEdit;
    cxGroupBox11: TcxGroupBox;
    Label58: TLabel;
    Label59: TLabel;
    Label61: TLabel;
    DBEdit56: TDBEdit;
    DBEdit57: TDBEdit;
    DBEdit59: TDBEdit;
    DBEdit27: TDBEdit;
    Label27: TLabel;
    DBEdit9: TDBEdit;
    Label23: TLabel;
    Label8: TLabel;
    DBEdit13: TDBEdit;
    Label30: TLabel;
    DBEdit28: TDBEdit;
    DBEdit29: TDBEdit;
    Label31: TLabel;
    DBEdit17: TDBEdit;
    Label12: TLabel;
    Label19: TLabel;
    DBEdit25: TDBEdit;
    Label32: TLabel;
    DBEdit30: TDBEdit;
    DBEdit26: TDBEdit;
    Label20: TLabel;
    DBEdit24: TDBEdit;
    Label17: TLabel;
    Label16: TLabel;
    DBEdit18: TDBEdit;
    Label33: TLabel;
    DBEdit31: TDBEdit;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frm_nfe_tributacao: Tfrm_nfe_tributacao;

implementation

{$R *.dfm}

procedure Tfrm_nfe_tributacao.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  Action := cafree;
  self := nil;
end;

end.
