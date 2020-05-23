unit dados_cheque;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, cxGraphics, cxLookAndFeels,
  cxLookAndFeelPainters, Vcl.Menus, dxSkinsCore, dxSkinOffice2013White,
  cxControls, cxContainer, cxEdit, Vcl.ComCtrls, dxCore, cxDateUtils, Data.DB,
  Vcl.StdCtrls, cxRadioGroup, cxGroupBox, Vcl.Grids, Vcl.DBGrids, cxTextEdit,
  cxMaskEdit, cxDropDownEdit, cxCalendar, cxButtons, Vcl.DBCtrls, Vcl.Mask,
  dxSkinOffice2007Silver, dxSkinOffice2013LightGray;

type
  TFRM_dados_cheque = class(TForm)
    grp1: TGroupBox;
    lbl1: TLabel;
    lbl2: TLabel;
    lbl4: TLabel;
    lbl5: TLabel;
    lbl3: TLabel;
    lbl6: TLabel;
    lbl7: TLabel;
    lbl8: TLabel;
    lbl9: TLabel;
    lbl10: TLabel;
    dbedt2: TDBEdit;
    grp2: TGroupBox;
    DBLookupComboBox1: TDBLookupComboBox;
    dbedt6: TDBEdit;
    dbedt7: TDBEdit;
    dbedt1: TDBEdit;
    dbedt3: TDBEdit;
    dbedt4: TDBEdit;
    dbedt9: TDBEdit;
    dbedt10: TDBEdit;
    BtnGravar: TcxButton;
    BtnCancelar: TcxButton;
    BtnIncluir: TcxButton;
    BtnExcluir: TcxButton;
    btn_marca: TcxButton;
    DBEdit1: TDBEdit;
    cxDateEdit1: TcxDateEdit;
    cxDateEdit2: TcxDateEdit;
    GroupBox1: TGroupBox;
    Label1: TLabel;
    Label2: TLabel;
    Label3: TLabel;
    Label4: TLabel;
    dbgrd1: TDBGrid;
    DBLookupComboBox2: TDBLookupComboBox;
    DBEdit3: TDBEdit;
    cxGroupBox1: TcxGroupBox;
    cxRadioButton1: TcxRadioButton;
    cxRadioButton2: TcxRadioButton;
    cxRadioButton3: TcxRadioButton;
    cxRadioButton4: TcxRadioButton;
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FRM_dados_cheque: TFRM_dados_cheque;

implementation

{$R *.dfm}

end.
