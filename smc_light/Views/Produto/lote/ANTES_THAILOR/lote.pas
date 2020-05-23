unit lote;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, cxGraphics, cxControls, cxLookAndFeels,
  cxLookAndFeelPainters, cxContainer, cxEdit, Vcl.ComCtrls, dxCore, cxDateUtils,
  dxSkinsCore, Vcl.Menus, Vcl.StdCtrls, cxRadioGroup, Vcl.Grids, Vcl.DBGrids,
  cxGroupBox, cxButtons, cxTextEdit, cxMaskEdit, cxDropDownEdit, cxCalendar,
  Vcl.Mask, Vcl.DBCtrls;

type
  Tfrm_controla_lote = class(TForm)
    grp_lote: TGroupBox;
    Label17: TLabel;
    Label16: TLabel;
    Label18: TLabel;
    Label15: TLabel;
    Label14: TLabel;
    Label13: TLabel;
    Label3: TLabel;
    Label22: TLabel;
    Label34: TLabel;
    DBEdit5: TDBEdit;
    DBEdit3: TDBEdit;
    DBEdit6: TDBEdit;
    cxDateEdit1: TcxDateEdit;
    cxDateEdit2: TcxDateEdit;
    DBEdit4: TDBEdit;
    DBEdit12: TDBEdit;
    DBEdit13: TDBEdit;
    cxGroupBox5: TcxGroupBox;
    cxGroupBox6: TcxGroupBox;
    cxDateEdit7: TcxDateEdit;
    DBGrid1: TDBGrid;
    Label1: TLabel;
    DBEdit1: TDBEdit;
    cxButton2: TcxButton;
    Label2: TLabel;
    DBEdit7: TDBEdit;
    DBEdit2: TDBEdit;
    cxButton1: TcxButton;
    DBEdit8: TDBEdit;
    cxGroupBox2: TcxGroupBox;
    cxDateEdit5: TcxDateEdit;
    cxGroupBox8: TcxGroupBox;
    Label37: TLabel;
    Label4: TLabel;
    cxRadioButton1: TcxRadioButton;
    cxRadioButton2: TcxRadioButton;
    DBEdit14: TDBEdit;
    DBEdit9: TDBEdit;
    cxButton4: TcxButton;
    DBEdit15: TDBEdit;
    DBEdit10: TDBEdit;
    cxButton3: TcxButton;
    DBEdit11: TDBEdit;
    Label5: TLabel;
    BtnGravar: TcxButton;
    BtnCancelar: TcxButton;
    BtnAlterar: TcxButton;
    BtnIncluir: TcxButton;
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frm_controla_lote: Tfrm_controla_lote;

implementation

{$R *.dfm}

end.
