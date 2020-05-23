unit dados_adicionais_exportacao;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, cxGraphics, cxControls, cxLookAndFeels,
  cxLookAndFeelPainters, cxContainer, cxEdit, dxSkinsCore, Vcl.Menus,
  Vcl.StdCtrls, cxButtons, cxTextEdit, cxMaskEdit, cxDropDownEdit, cxCalendar,
  cxDBEdit, Vcl.Mask, Vcl.DBCtrls;

type
  Tfrm_dados_exportacoes = class(TForm)
    GroupBox5: TGroupBox;
    Label48: TLabel;
    Label49: TLabel;
    Label50: TLabel;
    Label54: TLabel;
    DBEdit4: TDBEdit;
    DBEdit5: TDBEdit;
    DBEdit7: TDBEdit;
    GroupBox3: TGroupBox;
    Label40: TLabel;
    Label46: TLabel;
    Label25: TLabel;
    db_local: TDBEdit;
    DBEdit6: TDBEdit;
    date_desembaraco: TcxDBDateEdit;
    btn_local_desembara: TcxButton;
    cxButton23: TcxButton;
    cxButton24: TcxButton;
    cxButton25: TcxButton;
    cxButton1: TcxButton;
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frm_dados_exportacoes: Tfrm_dados_exportacoes;

implementation

{$R *.dfm}

end.
