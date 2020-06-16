//Verificado automaticamente em 16/06/2020 09:28
unit cad_kit;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, cxGraphics, cxControls, cxLookAndFeels,
  cxLookAndFeelPainters, dxSkinsCore, dxSkinOffice2013White, dxSkinscxPCPainter,
  dxBarBuiltInMenu, Data.DB, cxContainer, cxEdit, Vcl.Menus, Vcl.ComCtrls,
  dxCore, cxDateUtils, cxMaskEdit, cxDropDownEdit, cxCalendar, Vcl.StdCtrls,
  Vcl.DBCtrls, cxButtons, cxTextEdit, cxDBEdit, Vcl.Grids, Vcl.DBGrids, cxPC,
  dxSkinOffice2007Silver, dxSkinOffice2013LightGray;

type
  Tfrm_cad_kit = class(TForm)
    cxPageControl1: TcxPageControl;
    cxTabSheet1: TcxTabSheet;
    lbl10: TLabel;
    dbgrd2: TDBGrid;
    cxDBTextEdit10: TcxDBTextEdit;
    grp1: TGroupBox;
    lbl11: TLabel;
    lbl12: TLabel;
    cxDBTextEdit11: TcxDBTextEdit;
    cxDBTextEdit12: TcxDBTextEdit;
    grp2: TGroupBox;
    dbcbb1: TDBComboBox;
    cxTabSheet2: TcxTabSheet;
    lblCódigo: TLabel;
    lbl1: TLabel;
    lbl2: TLabel;
    lbl3: TLabel;
    lbl4: TLabel;
    lbl5: TLabel;
    lbl6: TLabel;
    lbl7: TLabel;
    lbl8: TLabel;
    lbl9: TLabel;
    cxDBTextEdit1: TcxDBTextEdit;
    cxDBTextEdit5: TcxDBTextEdit;
    cxButton2: TcxButton;
    cxDBTextEdit8: TcxDBTextEdit;
    cxButton3: TcxButton;
    dbmmo1: TDBMemo;
    cxDBTextEdit9: TcxDBTextEdit;
    dbgrd1: TDBGrid;
    BtnGravar: TcxButton;
    BtnCancelar: TcxButton;
    BtnIncluir: TcxButton;
    BtnAlterar: TcxButton;
    BtnExcluir: TcxButton;
    cxDateEdit1: TcxDateEdit;
    cxDateEdit2: TcxDateEdit;
    cxDBTextEdit2: TcxDBTextEdit;
    cxDBTextEdit3: TcxDBTextEdit;
    cxButton5: TcxButton;
    cxDBTextEdit4: TcxDBTextEdit;
    cxButton1: TcxButton;
    cxButton4: TcxButton;
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frm_cad_kit: Tfrm_cad_kit;

implementation

{$R *.dfm}

end.
