//Verificado automaticamente em 16/06/2020 09:27
unit controle;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Data.DB, cxGraphics, cxControls,
  cxLookAndFeels, cxLookAndFeelPainters, cxContainer, cxEdit, dxSkinsCore,
  dxSkinOffice2013White, Vcl.Menus, Vcl.StdCtrls, Vcl.DBCtrls, cxButtons,
  cxRadioGroup, cxGroupBox, Vcl.Grids, Vcl.DBGrids, Vcl.Mask,
  dxSkinOffice2007Silver, dxSkinOffice2013LightGray, cxStyles,
  dxSkinscxPCPainter, cxCustomData, cxFilter, cxData, cxDataStorage,
  cxNavigator, cxDBData, cxGridCustomTableView, cxGridTableView,
  cxGridDBTableView, cxGridLevel, cxClasses, cxGridCustomView, cxGrid;

type
  Tfrm_controle_cheque = class(TForm)
    grp3: TGroupBox;
    lbl13: TLabel;
    dbedt14: TDBEdit;
    grp4: TGroupBox;
    dbcbb1: TDBComboBox;
    cxGroupBox1: TcxGroupBox;
    cxRadioButton3: TcxRadioButton;
    cxRadioButton4: TcxRadioButton;
    cxRadioButton5: TcxRadioButton;
    grp1: TGroupBox;
    lbl1: TLabel;
    lbl2: TLabel;
    lbl3: TLabel;
    lbl4: TLabel;
    lbl5: TLabel;
    lbl6: TLabel;
    lbl7: TLabel;
    lbl8: TLabel;
    lbl9: TLabel;
    lbl10: TLabel;
    lbl11: TLabel;
    lbl12: TLabel;
    lbl14: TLabel;
    dbedt1: TDBEdit;
    dbedt2: TDBEdit;
    dbedt3: TDBEdit;
    dbedt4: TDBEdit;
    dbedt5: TDBEdit;
    dbedt6: TDBEdit;
    dbedt7: TDBEdit;
    dbedt10: TDBEdit;
    dbedt11: TDBEdit;
    dbedt12: TDBEdit;
    dbedt13: TDBEdit;
    cxButton1: TcxButton;
    cxButton2: TcxButton;
    dbedt8: TDBEdit;
    dbmmo1: TDBMemo;
    cxButton3: TcxButton;
    dbedt9: TDBEdit;
    BtnGravar: TcxButton;
    BtnCancelar: TcxButton;
    BtnIncluir: TcxButton;
    BtnAlterar: TcxButton;
    BtnExcluir: TcxButton;
    cxGroupBox5: TcxGroupBox;
    cxRadioButton1: TcxRadioButton;
    cxRadioButton2: TcxRadioButton;
    gdConveniados: TcxGrid;
    gdConveniadosTbVw: TcxGridDBTableView;
    gdConveniadosLv: TcxGridLevel;
    gdConveniadosTbVwColumn1: TcxGridDBColumn;
    gdConveniadosTbVwColumn2: TcxGridDBColumn;
    gdConveniadosTbVwColumn3: TcxGridDBColumn;
    gdConveniadosTbVwColumn4: TcxGridDBColumn;
    gdConveniadosTbVwColumn5: TcxGridDBColumn;
    gdConveniadosTbVwColumn6: TcxGridDBColumn;
    gdConveniadosTbVwColumn7: TcxGridDBColumn;
    gdConveniadosTbVwColumn8: TcxGridDBColumn;
    gdConveniadosTbVwColumn9: TcxGridDBColumn;
    gdConveniadosTbVwColumn10: TcxGridDBColumn;
    gdConveniadosTbVwColumn11: TcxGridDBColumn;
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frm_controle_cheque: Tfrm_controle_cheque;

implementation

{$R *.dfm}

end.
