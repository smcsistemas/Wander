unit animais;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, cxGraphics, cxLookAndFeels,
  cxLookAndFeelPainters, Vcl.Menus, dxSkinsCore, dxSkinOffice2013White,
  cxControls, cxContainer, cxEdit, Data.DB, Vcl.ComCtrls, dxCore, cxDateUtils,
  cxStyles, dxSkinscxPCPainter, cxCustomData, cxFilter, cxData, cxDataStorage,
  cxNavigator, cxDBData, cxDropDownEdit, cxGridCustomTableView, cxGridTableView,
  cxGridBandedTableView, cxGridDBBandedTableView, cxGridLevel, cxClasses,
  cxGridCustomView, cxGrid, cxTextEdit, cxMaskEdit, cxCalendar, Vcl.StdCtrls,
  cxRadioGroup, Vcl.Grids, Vcl.DBGrids, cxGroupBox, cxButtons, cxGridDBTableView;

type
  Tfrm_cad_animais = class(TForm)
    Label10: TLabel;
    Label11: TLabel;
    Label12: TLabel;
    btn_confirmar: TcxButton;
    btn_marca: TcxButton;
    cxButton1: TcxButton;
    cxButton2: TcxButton;
    cxGroupBox1: TcxGroupBox;
    cxGroupBox3: TcxGroupBox;
    Edit6: TEdit;
    cxButton3: TcxButton;
    cxButton5: TcxButton;
    cxButton6: TcxButton;
    cxButton4: TcxButton;
    Edit7: TEdit;
    Edit3: TEdit;
    Label4: TLabel;
    Label15: TLabel;
    Edit1: TEdit;
    Label1: TLabel;
    Edit5: TEdit;
    ComboBox3: TComboBox;
    Label7: TLabel;
    ComboBox2: TComboBox;
    cxGroupBox4: TcxGroupBox;
    cxRadioButton1: TcxRadioButton;
    cxRadioButton2: TcxRadioButton;
    ComboBox4: TComboBox;
    Label9: TLabel;
    ComboBox1: TComboBox;
    Label3: TLabel;
    Label8: TLabel;
    Edit4: TEdit;
    Label6: TLabel;
    cxDateEdit1: TcxDateEdit;
    cxGroupBox5: TcxGroupBox;
    cxRadioButton3: TcxRadioButton;
    cxRadioButton4: TcxRadioButton;
    cxGroupBox7: TcxGroupBox;
    cxRadioButton5: TcxRadioButton;
    cxRadioButton6: TcxRadioButton;
    cxGroupBox8: TcxGroupBox;
    cxRadioButton7: TcxRadioButton;
    cxRadioButton8: TcxRadioButton;
    Edit9: TEdit;
    Label2: TLabel;
    Label5: TLabel;
    Edit2: TEdit;
    Label14: TLabel;
    cxComboBox2: TcxComboBox;
    Label13: TLabel;
    gdConveniados: TcxGrid;
    gdConveniadosTbVw: TcxGridDBTableView;
    clid: TcxGridDBColumn;
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
    gdConveniadosTbVwColumn12: TcxGridDBColumn;
    gdConveniadosTbVwColumn13: TcxGridDBColumn;
    gdConveniadosTbVwColumn14: TcxGridDBColumn;
    cxButton7: TcxButton;
    procedure cxButton3Click(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure cxButton7Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frm_cad_animais: Tfrm_cad_animais;

implementation

uses
  cad_vacina;

{$R *.dfm}

procedure Tfrm_cad_animais.cxButton3Click(Sender: TObject);
begin
Frm_cad_vacinas:= TFrm_cad_vacinas.Create(nil);
Frm_cad_vacinas.ShowModal;
end;

procedure Tfrm_cad_animais.cxButton7Click(Sender: TObject);
begin
close;
end;

procedure Tfrm_cad_animais.FormClose(Sender: TObject; var Action: TCloseAction);
begin
 Action := cafree;
 self := nil;
end;

end.
