unit gerar_boletos;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, cxGraphics, cxControls, cxLookAndFeels,
  cxLookAndFeelPainters, cxContainer, cxEdit, Vcl.Menus, Vcl.StdCtrls,
  Vcl.DBCtrls, cxTextEdit, cxMaskEdit, cxDropDownEdit, cxButtons, Vcl.Mask,
  cxGroupBox, Vcl.ComCtrls, Data.DB, Vcl.Grids, Vcl.DBGrids, Vcl.ExtCtrls,
  cxCheckBox, dxSkinsCore, dxSkinOffice2013LightGray, Data.Win.ADODB,
  Data.FMTBcd, Data.SqlExpr, FireDAC.Stan.Intf, FireDAC.Stan.Option,
  FireDAC.Stan.Param, FireDAC.Stan.Error, FireDAC.DatS, FireDAC.Phys.Intf,
  FireDAC.DApt.Intf, FireDAC.Stan.Async, FireDAC.DApt, cxStyles,
  dxSkinscxPCPainter, cxCustomData, cxFilter, cxData, cxDataStorage,
  cxNavigator, cxDBData, cxGridCustomTableView, cxGridTableView,
  cxGridDBTableView, cxGridLevel, cxClasses, cxGridCustomView, cxGrid,
  FireDAC.Comp.DataSet, FireDAC.Comp.Client, cxRadioGroup, dxBarBuiltInMenu,
  cxPC;

type
  TFrm_gerar_boletos = class(TForm)
    ADOTable1: TADOTable;
    ADOQuery1: TADOQuery;
    ADOConnection1: TADOConnection;
    DataSource1: TDataSource;
    SQLDataSet1: TSQLDataSet;
    ds_lista: TDataSource;
    SQL_LISTA: TFDQuery;
    SQL_LISTACODIGO: TFDAutoIncField;
    SQL_LISTADESCRICAO: TStringField;
    SQL_LISTADATA_CADASTRO: TDateField;
    DS_Familia: TDataSource;
    SQL_Familia: TFDQuery;
    SQL_FamiliaCODIGO: TFDAutoIncField;
    SQL_FamiliaDESCRICAO: TStringField;
    SQL_FamiliaDATA_CADASTRO: TDateField;
    sql_increment: TFDQuery;
    sql_incrementAUTO_INCREMENT: TLargeintField;
    SQL_FamiliaSELECAO: TStringField;
    SQL_LISTASELECAO: TStringField;
    cxPageControl1: TcxPageControl;
    tabBoleto: TcxTabSheet;
    tabRemessa: TcxTabSheet;
    tabRetorno: TcxTabSheet;
    cxButton7: TcxButton;
    cxButton6: TcxButton;
    DBGrid4: TDBGrid;
    Label21: TLabel;
    Label20: TLabel;
    Shape2: TShape;
    Shape3: TShape;
    cxGroupBox3: TcxGroupBox;
    Label17: TLabel;
    Label19: TLabel;
    cxButton3: TcxButton;
    DateTimePicker3: TDateTimePicker;
    DateTimePicker4: TDateTimePicker;
    cxComboBox3: TcxComboBox;
    Label22: TLabel;
    cxGroupBox5: TcxGroupBox;
    Label24: TLabel;
    DBEdit1: TDBEdit;
    cxButton2: TcxButton;
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
    GroupBox1: TGroupBox;
    Label26: TLabel;
    Label27: TLabel;
    Label28: TLabel;
    Label29: TLabel;
    cxCheckBox1: TcxCheckBox;
    cxCheckBox2: TcxCheckBox;
    cxCheckBox3: TcxCheckBox;
    cxCheckBox4: TcxCheckBox;
    cxGroupBox6: TcxGroupBox;
    DBGrid2: TDBGrid;
    cxGroupBox4: TcxGroupBox;
    cxComboBox2: TcxComboBox;
    cxButton1: TcxButton;
    cxGroupBox8: TcxGroupBox;
    RadioButton4: TRadioButton;
    RadioButton5: TRadioButton;
    cxGroupBox7: TcxGroupBox;
    Label13: TLabel;
    Label30: TLabel;
    cxButton12: TcxButton;
    DateTimePicker1: TDateTimePicker;
    DateTimePicker2: TDateTimePicker;
    CB_MES: TcxComboBox;
    Label16: TLabel;
    Shape1: TShape;
    Label15: TLabel;
    Label18: TLabel;
    cxButton8: TcxButton;
    Label14: TLabel;
    Edit1: TEdit;
    gdConveniados: TcxGrid;
    gdConveniadosTbVw: TcxGridDBTableView;
    gdConveniadosTbVwSELECAO: TcxGridDBColumn;
    gdConveniadosTbVwCODIGO: TcxGridDBColumn;
    gdConveniadosTbVwDESCRICAO: TcxGridDBColumn;
    gdConveniadosTbVwDATA_CADASTRO: TcxGridDBColumn;
    gdConveniadosLv: TcxGridLevel;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Frm_gerar_boletos: TFrm_gerar_boletos;

implementation

{$R *.dfm}



procedure TFrm_gerar_boletos.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  Action := cafree;
  Self := nil;
end;

end.


