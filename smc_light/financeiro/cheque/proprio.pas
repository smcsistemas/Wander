unit proprio;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Data.DB, cxGraphics, cxControls,
  cxLookAndFeels, cxLookAndFeelPainters, cxContainer, cxEdit, dxSkinsCore,
  dxSkinOffice2013White, Vcl.Menus, Vcl.ComCtrls, dxCore, cxDateUtils,
  cxDropDownEdit, cxCalendar, cxTextEdit, cxMaskEdit, Vcl.StdCtrls, Vcl.DBCtrls,
  cxButtons, cxRadioGroup, cxGroupBox, Vcl.Grids, Vcl.DBGrids, Vcl.Mask,
  dxSkinOffice2007Silver, dxSkinOffice2013LightGray;

type
  TFrm_cheq_proprio = class(TForm)
    grp3: TGroupBox;
    lbl13: TLabel;
    dbedt14: TDBEdit;
    grp4: TGroupBox;
    dbcbb1: TDBComboBox;
    dbgrd1: TDBGrid;
    cxGroupBox1: TcxGroupBox;
    cxRadioButton3: TcxRadioButton;
    cxRadioButton4: TcxRadioButton;
    cxRadioButton5: TcxRadioButton;
    grp1: TGroupBox;
    lbl4: TLabel;
    lbl5: TLabel;
    lbl6: TLabel;
    lbl10: TLabel;
    lbl3: TLabel;
    lbl7: TLabel;
    lbl8: TLabel;
    lbl9: TLabel;
    Label1: TLabel;
    Label2: TLabel;
    Label3: TLabel;
    dbedt4: TDBEdit;
    dbedt5: TDBEdit;
    dbedt6: TDBEdit;
    cxButton1: TcxButton;
    OBSERVAÇÃO: TDBMemo;
    dbedt3: TDBEdit;
    dbedt7: TDBEdit;
    cxComboBox1: TcxComboBox;
    cxGroupBox2: TcxGroupBox;
    cxRadioButton1: TcxRadioButton;
    cxRadioButton2: TcxRadioButton;
    cxRadioButton6: TcxRadioButton;
    cxButton2: TcxButton;
    DBEdit1: TDBEdit;
    DBEdit2: TDBEdit;
    cxDateEdit1: TcxDateEdit;
    cxDateEdit2: TcxDateEdit;
    cxDateEdit3: TcxDateEdit;
    BtnGravar: TcxButton;
    BtnCancelar: TcxButton;
    BtnIncluir: TcxButton;
    BtnAlterar: TcxButton;
    BtnExcluir: TcxButton;
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Frm_cheq_proprio: TFrm_cheq_proprio;

implementation

{$R *.dfm}

end.
