//Verificado automaticamente em 16/06/2020 09:26
unit arquivos_fiscais;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, cxGraphics, cxControls, cxLookAndFeels,
  cxLookAndFeelPainters, cxContainer, cxEdit, dxSkinsCore, Vcl.Menus,
  cxTextEdit, cxMaskEdit, cxDropDownEdit, Vcl.ComCtrls, Vcl.StdCtrls, cxButtons,
  cxGroupBox, Vcl.ExtCtrls, cxStyles, dxSkinscxPCPainter, cxCustomData,
  cxFilter, cxData, cxDataStorage, cxNavigator, Data.DB, cxDBData, cxGridLevel,
  cxGridCustomTableView, cxGridTableView, cxGridDBTableView, cxClasses,
  cxGridCustomView, cxGrid;

type
  Tfrm_arq_fiscais = class(TForm)
    cxGrid4: TcxGrid;
    cxGridDBTableView3: TcxGridDBTableView;
    cxGridDBTableView3Column11: TcxGridDBColumn;
    cxGridDBTableView3Column5: TcxGridDBColumn;
    cxGridDBTableView3Column1: TcxGridDBColumn;
    cxGridDBTableView3Column2: TcxGridDBColumn;
    cxGridDBTableView3Column4: TcxGridDBColumn;
    cxGridDBTableView3Column3: TcxGridDBColumn;
    cxGridLevel3: TcxGridLevel;
    cxGroupBox11: TcxGroupBox;
    Label63: TLabel;
    Label64: TLabel;
    cxButton9: TcxButton;
    DateTimePicker1: TDateTimePicker;
    DateTimePicker2: TDateTimePicker;
    cxComboBox1: TcxComboBox;
    Label65: TLabel;
    Shape39: TShape;
    Label42: TLabel;
    cxGroupBox1: TcxGroupBox;
    cxGroupBox7: TcxGroupBox;
    Shape38: TShape;
    Shape5: TShape;
    Label47: TLabel;
    Label39: TLabel;
    Label40: TLabel;
    cxButton6: TcxButton;
    cxButton2: TcxButton;
    cxButton3: TcxButton;
    cxButton5: TcxButton;
    cxGroupBox2: TcxGroupBox;
    Shape17: TShape;
    Shape16: TShape;
    Shape15: TShape;
    Shape14: TShape;
    Shape13: TShape;
    Label9: TLabel;
    Label10: TLabel;
    Label11: TLabel;
    Label12: TLabel;
    Label13: TLabel;
    Label14: TLabel;
    Label15: TLabel;
    Label16: TLabel;
    Shape2: TShape;
    Label17: TLabel;
    Label1: TLabel;
    Label2: TLabel;
    cxButton1: TcxButton;
    cxButton8: TcxButton;
    cxGroupBox3: TcxGroupBox;
    Shape1: TShape;
    Shape3: TShape;
    Shape4: TShape;
    Shape12: TShape;
    Shape18: TShape;
    Label3: TLabel;
    Label4: TLabel;
    Label5: TLabel;
    Label6: TLabel;
    Label7: TLabel;
    Label8: TLabel;
    Label18: TLabel;
    Label19: TLabel;
    Shape19: TShape;
    Label22: TLabel;
    Label23: TLabel;
    Label24: TLabel;
    cxGroupBox4: TcxGroupBox;
    Shape20: TShape;
    Shape21: TShape;
    Shape22: TShape;
    Shape23: TShape;
    Shape24: TShape;
    Label25: TLabel;
    Label26: TLabel;
    Label27: TLabel;
    Label28: TLabel;
    Label29: TLabel;
    Label30: TLabel;
    Label31: TLabel;
    Label32: TLabel;
    Shape25: TShape;
    Label33: TLabel;
    Label34: TLabel;
    Label35: TLabel;
    cxGroupBox5: TcxGroupBox;
    Shape26: TShape;
    Shape27: TShape;
    Shape28: TShape;
    Shape29: TShape;
    Shape30: TShape;
    Label36: TLabel;
    Label37: TLabel;
    Label38: TLabel;
    Label43: TLabel;
    Label44: TLabel;
    Label45: TLabel;
    Label46: TLabel;
    Label48: TLabel;
    Shape31: TShape;
    Label49: TLabel;
    Label50: TLabel;
    Label51: TLabel;
    cxGroupBox9: TcxGroupBox;
    CheckBox1: TCheckBox;
    CheckBox2: TCheckBox;
    CheckBox3: TCheckBox;
    CheckBox4: TCheckBox;
    cxButton4: TcxButton;
    cxGroupBox8: TcxGroupBox;
    Label41: TLabel;
    Shape6: TShape;
    Shape7: TShape;
    Shape8: TShape;
    Shape9: TShape;
    Shape10: TShape;
    Shape11: TShape;
    cxTextEdit1: TcxTextEdit;
    cxTextEdit2: TcxTextEdit;
    cxTextEdit3: TcxTextEdit;
    cxTextEdit4: TcxTextEdit;
    cxTextEdit5: TcxTextEdit;
    cxTextEdit6: TcxTextEdit;
    cxGroupBox6: TcxGroupBox;
    Label20: TLabel;
    Label21: TLabel;
    cxButton13: TcxButton;
    DateTimePicker3: TDateTimePicker;
    DateTimePicker4: TDateTimePicker;
    cxComboBox4: TcxComboBox;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure cxButton6Click(Sender: TObject);
    procedure cxButton9Click(Sender: TObject);
    procedure FormShow(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frm_arq_fiscais: Tfrm_arq_fiscais;

implementation

uses
  consul_nfce;

{$R *.dfm}

procedure Tfrm_arq_fiscais.cxButton6Click(Sender: TObject);
begin
  Frm_consul_nfce := TFrm_consul_nfce.CREATE(Application);
  Frm_consul_nfce.ShowModal;
end;

procedure Tfrm_arq_fiscais.cxButton9Click(Sender: TObject);
begin
  Frm_consul_nfce := TFrm_consul_nfce.CREATE(Application);
  Frm_consul_nfce.ShowModal;
end;

procedure Tfrm_arq_fiscais.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  Action := cafree;
  Self := nil;
end;

procedure Tfrm_arq_fiscais.FormShow(Sender: TObject);
begin
DateTimePicker3.SetFocus;
end;

end.
