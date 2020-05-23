unit boleto;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, cxGraphics, cxControls, cxLookAndFeels,
  cxLookAndFeelPainters, cxContainer, cxEdit, dxSkinsCore,
  dxSkinOffice2013White, Data.DB, Vcl.Menus, cxStyles, dxSkinscxPCPainter,
  cxCustomData, cxFilter, cxData, cxDataStorage, cxNavigator, cxDBData,
  cxCheckBox, Vcl.ComCtrls, cxGridLevel, cxGridCustomTableView, cxGridTableView,
  cxGridDBTableView, cxClasses, cxGridCustomView, cxGrid, Vcl.StdCtrls,
  Vcl.ExtCtrls, cxButtons, Vcl.Grids, Vcl.DBGrids, Vcl.Mask, Vcl.DBCtrls,
  cxTextEdit, cxMaskEdit, cxDropDownEdit, cxGroupBox;

type
  Tfrm_boleto = class(TForm)
    PageControl1: TPageControl;
    Tb_boleto: TTabSheet;
    cxGroupBox4: TcxGroupBox;
    cxComboBox2: TcxComboBox;
    cxGroupBox1: TcxGroupBox;
    Label2: TLabel;
    Label3: TLabel;
    Label4: TLabel;
    Label1: TLabel;
    DBEdit3: TDBEdit;
    cxComboBox1: TcxComboBox;
    DBEdit2: TDBEdit;
    DBEdit5: TDBEdit;
    cxGroupBox2: TcxGroupBox;
    Label5: TLabel;
    Label9: TLabel;
    Label10: TLabel;
    Label6: TLabel;
    Label7: TLabel;
    Label8: TLabel;
    Label11: TLabel;
    Label12: TLabel;
    Label25: TLabel;
    DBEdit6: TDBEdit;
    DBEdit9: TDBEdit;
    DBEdit8: TDBEdit;
    DBEdit11: TDBEdit;
    DBEdit4: TDBEdit;
    DBEdit7: TDBEdit;
    DBEdit10: TDBEdit;
    DBEdit12: TDBEdit;
    DBEdit13: TDBEdit;
    cxGroupBox6: TcxGroupBox;
    DBGrid2: TDBGrid;
    cxButton1: TcxButton;
    cxGroupBox5: TcxGroupBox;
    Label24: TLabel;
    DBEdit1: TDBEdit;
    cxButton2: TcxButton;
    GroupBox1: TGroupBox;
    Label26: TLabel;
    Label27: TLabel;
    Label28: TLabel;
    Label29: TLabel;
    cxCheckBox1: TcxCheckBox;
    cxCheckBox2: TcxCheckBox;
    cxCheckBox3: TcxCheckBox;
    cxCheckBox4: TcxCheckBox;
    Tb_remessa: TTabSheet;
    Label14: TLabel;
    Label15: TLabel;
    Shape1: TShape;
    Label16: TLabel;
    Label18: TLabel;
    cxGroupBox8: TcxGroupBox;
    RadioButton4: TRadioButton;
    RadioButton5: TRadioButton;
    Edit1: TEdit;
    cxButton8: TcxButton;
    gdConveniados: TcxGrid;
    gdConveniadosTbVw: TcxGridDBTableView;
    gdConveniadosTbVwSELECAO: TcxGridDBColumn;
    gdConveniadosTbVwCODIGO: TcxGridDBColumn;
    gdConveniadosTbVwDESCRICAO: TcxGridDBColumn;
    gdConveniadosTbVwDATA_CADASTRO: TcxGridDBColumn;
    gdConveniadosLv: TcxGridLevel;
    cxGroupBox7: TcxGroupBox;
    Label13: TLabel;
    Label30: TLabel;
    cxButton12: TcxButton;
    DateTimePicker1: TDateTimePicker;
    DateTimePicker2: TDateTimePicker;
    CB_MES: TcxComboBox;
    Tb_retorno: TTabSheet;
    Shape2: TShape;
    Label20: TLabel;
    Label21: TLabel;
    Shape3: TShape;
    Label22: TLabel;
    cxButton6: TcxButton;
    cxButton7: TcxButton;
    DBGrid4: TDBGrid;
    cxGroupBox3: TcxGroupBox;
    Label17: TLabel;
    Label19: TLabel;
    cxButton3: TcxButton;
    DateTimePicker3: TDateTimePicker;
    DateTimePicker4: TDateTimePicker;
    cxComboBox3: TcxComboBox;
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frm_boleto: Tfrm_boleto;

implementation

{$R *.dfm}

end.
