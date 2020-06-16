//Verificado automaticamente em 16/06/2020 09:27
unit conta_pagar;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, cxGraphics, cxControls, cxLookAndFeels,
  cxLookAndFeelPainters, dxSkinsCore, dxSkinOffice2013White, dxSkinscxPCPainter,
  dxBarBuiltInMenu, cxContainer, cxEdit, Vcl.Menus, Vcl.ComCtrls, dxCore,
  cxDateUtils, Data.DB, cxCheckBox, cxDropDownEdit, Vcl.Grids, Vcl.DBGrids,
  cxTextEdit, cxMaskEdit, cxCalendar, Vcl.StdCtrls, cxButtons, cxGroupBox,
  Vcl.Mask, Vcl.DBCtrls, cxPC, dxSkinOffice2007Silver, dxSkinOffice2013LightGray;

type
  TFrm_contas_pagar = class(TForm)
    cxPageControl1: TcxPageControl;
    cxTabSheet1: TcxTabSheet;
    Label33: TLabel;
    Label34: TLabel;
    Label36: TLabel;
    Label37: TLabel;
    Label38: TLabel;
    DBEdit26: TDBEdit;
    cxGroupBox17: TcxGroupBox;
    RadioButton1: TRadioButton;
    RadioButton2: TRadioButton;
    RadioButton3: TRadioButton;
    cxButton7: TcxButton;
    cxGroupBox18: TcxGroupBox;
    Label35: TLabel;
    cxButton8: TcxButton;
    cxDateEdit1: TcxDateEdit;
    cxDateEdit2: TcxDateEdit;
    cxGroupBox19: TcxGroupBox;
    DBEdit29: TDBEdit;
    DBEdit30: TDBEdit;
    cxButton9: TcxButton;
    cxGroupBox20: TcxGroupBox;
    RadioButton4: TRadioButton;
    RadioButton5: TRadioButton;
    RadioButton6: TRadioButton;
    RadioButton8: TRadioButton;
    DBGrid2: TDBGrid;
    cxTabSheet2: TcxTabSheet;
    Label16: TLabel;
    Label2: TLabel;
    Label3: TLabel;
    Label4: TLabel;
    cxGroupBox3: TcxGroupBox;
    Label7: TLabel;
    Label8: TLabel;
    Label9: TLabel;
    Label10: TLabel;
    Label11: TLabel;
    Label12: TLabel;
    Label13: TLabel;
    Label14: TLabel;
    Label17: TLabel;
    Label18: TLabel;
    Código: TDBEdit;
    cxButton1: TcxButton;
    cxGroupBox2: TcxGroupBox;
    DBEdit3: TDBEdit;
    DBEdit4: TDBEdit;
    cxButton2: TcxButton;
    cxGroupBox1: TcxGroupBox;
    DBEdit1: TDBEdit;
    DBEdit2: TDBEdit;
    cxButton3: TcxButton;
    DBEdit5: TDBEdit;
    DBEdit6: TDBEdit;
    DBEdit7: TDBEdit;
    DBEdit8: TDBEdit;
    cxGroupBox4: TcxGroupBox;
    cxComboBox2: TcxComboBox;
    cxGroupBox5: TcxGroupBox;
    cxComboBox3: TcxComboBox;
    DBGrid1: TDBGrid;
    cxGroupBox6: TcxGroupBox;
    Label1: TLabel;
    Label5: TLabel;
    Label6: TLabel;
    Label15: TLabel;
    Label19: TLabel;
    Label20: TLabel;
    Label21: TLabel;
    cxTabSheet3: TcxTabSheet;
    cxGroupBox7: TcxGroupBox;
    cxGroupBox8: TcxGroupBox;
    cxComboBox1: TcxComboBox;
    cxGroupBox9: TcxGroupBox;
    cxComboBox4: TcxComboBox;
    cxGroupBox10: TcxGroupBox;
    cxComboBox5: TcxComboBox;
    cxGroupBox14: TcxGroupBox;
    Label22: TLabel;
    cxGroupBox13: TcxGroupBox;
    DBEdit13: TDBEdit;
    DBEdit14: TDBEdit;
    cxButton6: TcxButton;
    cxGroupBox11: TcxGroupBox;
    DBEdit9: TDBEdit;
    DBEdit10: TDBEdit;
    cxButton4: TcxButton;
    cxGroupBox12: TcxGroupBox;
    DBEdit11: TDBEdit;
    DBEdit12: TDBEdit;
    cxButton5: TcxButton;
    DBEdit15: TDBEdit;
    cxCheckBox1: TcxCheckBox;
    cxGroupBox15: TcxGroupBox;
    Label23: TLabel;
    Label24: TLabel;
    Label25: TLabel;
    Label26: TLabel;
    DBEdit16: TDBEdit;
    DBEdit17: TDBEdit;
    DBEdit18: TDBEdit;
    DBEdit19: TDBEdit;
    cxGroupBox16: TcxGroupBox;
    Label27: TLabel;
    Label28: TLabel;
    Label29: TLabel;
    Label30: TLabel;
    Label31: TLabel;
    Label32: TLabel;
    DBEdit20: TDBEdit;
    DBEdit21: TDBEdit;
    DBEdit22: TDBEdit;
    DBEdit23: TDBEdit;
    DBEdit24: TDBEdit;
    DBEdit25: TDBEdit;
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Frm_contas_pagar: TFrm_contas_pagar;

implementation

{$R *.dfm}

end.
