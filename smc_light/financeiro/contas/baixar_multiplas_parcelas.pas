unit baixar_multiplas_parcelas;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, cxGraphics, cxControls, cxLookAndFeels,
  cxLookAndFeelPainters, cxContainer, cxEdit, dxSkinsCore,
  dxSkinOffice2013White, Vcl.Menus, cxStyles, dxSkinscxPCPainter, cxCustomData,
  cxFilter, cxData, cxDataStorage, cxNavigator, Data.DB, cxDBData, cxCheckBox,
  cxGridLevel, cxGridCustomTableView, cxGridTableView, cxGridDBTableView,
  cxClasses, cxGridCustomView, cxGrid, Vcl.StdCtrls, Vcl.Mask, Vcl.DBCtrls,
  cxTextEdit, cxMaskEdit, cxDropDownEdit, Vcl.ComCtrls, cxButtons, cxGroupBox;

type
  TFrm_baixa_multiplas_parecelas = class(TForm)
    cxGroupBox7: TcxGroupBox;
    Label16: TLabel;
    Label9: TLabel;
    cxButton12: TcxButton;
    DateTimePicker1: TDateTimePicker;
    DateTimePicker2: TDateTimePicker;
    CB_MES: TcxComboBox;
    cxGroupBox3: TcxGroupBox;
    DBEdit13: TDBEdit;
    DBEdit14: TDBEdit;
    cxButton1: TcxButton;
    cxGroupBox1: TcxGroupBox;
    DBEdit1: TDBEdit;
    DBEdit2: TDBEdit;
    cxButton2: TcxButton;
    cxGroupBox2: TcxGroupBox;
    DBEdit3: TDBEdit;
    DBEdit4: TDBEdit;
    cxButton3: TcxButton;
    cxGroupBox4: TcxGroupBox;
    DBEdit5: TDBEdit;
    DBEdit6: TDBEdit;
    cxButton4: TcxButton;
    gdConveniados: TcxGrid;
    gdConveniadosTbVw: TcxGridDBTableView;
    gdConveniadosTbVwSELECAO: TcxGridDBColumn;
    gdConveniadosTbVwColumn1: TcxGridDBColumn;
    gdConveniadosTbVwColumn2: TcxGridDBColumn;
    gdConveniadosTbVwColumn3: TcxGridDBColumn;
    gdConveniadosTbVwColumn4: TcxGridDBColumn;
    gdConveniadosLv: TcxGridLevel;
    cxGroupBox5: TcxGroupBox;
    Label3: TLabel;
    Label4: TLabel;
    Label1: TLabel;
    cxComboBox3: TcxComboBox;
    cxComboBox2: TcxComboBox;
    cxCheckBox1: TcxCheckBox;
    DateTimePicker3: TDateTimePicker;
    cxButton6: TcxButton;
    cxButton5: TcxButton;
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Frm_baixa_multiplas_parecelas: TFrm_baixa_multiplas_parecelas;

implementation

{$R *.dfm}

end.
