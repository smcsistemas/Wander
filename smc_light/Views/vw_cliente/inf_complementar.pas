unit inf_complementar;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, cxGraphics, cxControls, cxLookAndFeels,
  cxLookAndFeelPainters, cxContainer, cxEdit, dxSkinsCore, Vcl.ComCtrls, dxCore,
  cxDateUtils, cxMaskEdit, cxDropDownEdit, cxCalendar, Vcl.StdCtrls,
  Vcl.DBCtrls, cxTextEdit, cxDBEdit, Vcl.Menus, cxButtons;

type
  Tfrm_inf_complemento = class(TForm)
    gpFisica: TGroupBox;
    Label1: TLabel;
    Label20: TLabel;
    Label11: TLabel;
    Label12: TLabel;
    Label6: TLabel;
    Label30: TLabel;
    Label2: TLabel;
    Label32: TLabel;
    Label9: TLabel;
    Label3: TLabel;
    Label4: TLabel;
    Label5: TLabel;
    cxDBTextEdit5: TcxDBTextEdit;
    DBComboBox2: TDBComboBox;
    dbcbSexo: TDBComboBox;
    dbedtOE: TcxDBTextEdit;
    cxDBTextEdit6: TcxDBTextEdit;
    cxDBTextEdit7: TcxDBTextEdit;
    cxDBTextEdit3: TcxDBTextEdit;
    edt_data: TcxDateEdit;
    DBEdit73: TcxDateEdit;
    cxDBTextEdit1: TcxDBTextEdit;
    cxDBTextEdit2: TcxDBTextEdit;
    cxDBTextEdit4: TcxDBTextEdit;
    cxButton23: TcxButton;
    cxButton24: TcxButton;
    cxButton25: TcxButton;
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frm_inf_complemento: Tfrm_inf_complemento;

implementation

{$R *.dfm}

end.
