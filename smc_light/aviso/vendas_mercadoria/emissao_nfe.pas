//Verificado automaticamente em 16/06/2020 09:26
unit emissao_nfe;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, cxGraphics, cxControls, cxLookAndFeels,
  cxLookAndFeelPainters, dxSkinsCore, dxSkinOffice2013LightGray,
  dxSkinscxPCPainter, dxBarBuiltInMenu, Vcl.Menus, cxContainer, cxEdit,
  cxStyles, cxCustomData, cxFilter, cxData, cxDataStorage, cxNavigator, Data.DB,
  cxDBData, cxGridLevel, cxGridCustomTableView, cxGridTableView,
  cxGridDBTableView, cxClasses, cxGridCustomView, cxGrid, cxTextEdit,
  cxMaskEdit, cxDropDownEdit, Vcl.StdCtrls, cxButtons, Vcl.Mask, Vcl.DBCtrls,
  Vcl.ExtCtrls, cxPC, cxGroupBox, cxLabel, cxCurrencyEdit, Vcl.ComCtrls;

type
  Tfrm_emissao_nfe = class(TForm)
    cxPageControl1: TcxPageControl;
    tb_pedido: TcxTabSheet;
    Label2: TLabel;
    Label9: TLabel;
    Label10: TLabel;
    Label11: TLabel;
    Label13: TLabel;
    Label14: TLabel;
    Label18: TLabel;
    Shape1: TShape;
    Label24: TLabel;
    Shape2: TShape;
    Label25: TLabel;
    Label26: TLabel;
    Label28: TLabel;
    Label29: TLabel;
    Label21: TLabel;
    Label22: TLabel;
    Label4: TLabel;
    Label5: TLabel;
    DBEdit2: TDBEdit;
    DBEdit3: TDBEdit;
    DBEdit12: TDBEdit;
    DBEdit14: TDBEdit;
    DBEdit16: TDBEdit;
    DBEdit10: TDBEdit;
    DBEdit11: TDBEdit;
    DBEdit15: TDBEdit;
    DBEdit20: TDBEdit;
    DBEdit21: TDBEdit;
    DBEdit22: TDBEdit;
    DBEdit23: TDBEdit;
    BtnGravar: TcxButton;
    BtnCancelar: TcxButton;
    BtnAlterar: TcxButton;
    cxButton2: TcxButton;
    cxButton10: TcxButton;
    BtnIncluir: TcxButton;
    cxButton3: TcxButton;
    cxButton1: TcxButton;
    cxGrid1: TcxGrid;
    cxGridDBTableView1: TcxGridDBTableView;
    cxGridDBTableView1Column3: TcxGridDBColumn;
    cxGridDBTableView1Column1: TcxGridDBColumn;
    cxGridDBTableView1Column2: TcxGridDBColumn;
    cxGridDBTableView1Column4: TcxGridDBColumn;
    cxGridDBTableView1Column5: TcxGridDBColumn;
    cxGridDBTableView1Column6: TcxGridDBColumn;
    cxGridDBTableView1Column7: TcxGridDBColumn;
    cxGridDBTableView1Column8: TcxGridDBColumn;
    cxGridDBTableView1Column9: TcxGridDBColumn;
    cxGridDBTableView1Column10: TcxGridDBColumn;
    cxGridLevel1: TcxGridLevel;
    cxComboBox3: TcxComboBox;
    DBEdit19: TDBEdit;
    DBEdit5: TDBEdit;
    Label15: TLabel;
    DBEdit8: TDBEdit;
    tb_consulta: TcxTabSheet;
    cxGroupBox1: TcxGroupBox;
    DBEdit1: TDBEdit;
    Label6: TLabel;
    DBEdit4: TDBEdit;
    Label3: TLabel;
    cxGroupBox2: TcxGroupBox;
    Label1: TLabel;
    Label7: TLabel;
    DBEdit6: TDBEdit;
    DBEdit7: TDBEdit;
    cxGroupBox3: TcxGroupBox;
    RadioButton1: TRadioButton;
    RadioButton2: TRadioButton;
    tb_total: TcxTabSheet;
    tb_tribu: TcxTabSheet;
    tb_nota_ref: TcxTabSheet;
    DBEdit9: TDBEdit;
    Label23: TLabel;
    DBEdit13: TDBEdit;
    Label8: TLabel;
    DBEdit17: TDBEdit;
    Label12: TLabel;
    DBEdit18: TDBEdit;
    Label16: TLabel;
    DBEdit24: TDBEdit;
    Label17: TLabel;
    Label19: TLabel;
    DBEdit25: TDBEdit;
    DBEdit26: TDBEdit;
    Label20: TLabel;
    DBEdit27: TDBEdit;
    Label27: TLabel;
    DBEdit28: TDBEdit;
    Label30: TLabel;
    DBEdit29: TDBEdit;
    Label31: TLabel;
    DBEdit30: TDBEdit;
    Label32: TLabel;
    Label33: TLabel;
    DBEdit31: TDBEdit;
    Label34: TLabel;
    cxComboBox1: TcxComboBox;
    cxGrid2: TcxGrid;
    cxGridDBTableView2: TcxGridDBTableView;
    tab_id: TcxGridDBColumn;
    tab_data: TcxGridDBColumn;
    cxGridLevel2: TcxGridLevel;
    tb_valor: TcxGridDBColumn;
    cxGridDBTableView2Column1: TcxGridDBColumn;
    Label35: TLabel;
    DBEdit32: TDBEdit;
    cxButton4: TcxButton;
    DBEdit33: TDBEdit;
    DBEdit34: TDBEdit;
    cxButton5: TcxButton;
    DBEdit35: TDBEdit;
    Label36: TLabel;
    DBEdit36: TDBEdit;
    Label37: TLabel;
    DBEdit37: TDBEdit;
    Label38: TLabel;
    Label39: TLabel;
    DBEdit38: TDBEdit;
    DBEdit39: TDBEdit;
    Label40: TLabel;
    Label41: TLabel;
    DBEdit40: TDBEdit;
    DBEdit41: TDBEdit;
    Label42: TLabel;
    Label43: TLabel;
    DBEdit42: TDBEdit;
    cxButton16: TcxButton;
    cxButton6: TcxButton;
    cxGroupBox4: TcxGroupBox;
    cxGroupBox5: TcxGroupBox;
    Label44: TLabel;
    DBEdit43: TDBEdit;
    Label45: TLabel;
    DBEdit44: TDBEdit;
    cxGroupBox8: TcxGroupBox;
    Label50: TLabel;
    Label51: TLabel;
    DBEdit49: TDBEdit;
    DBEdit50: TDBEdit;
    cxGroupBox9: TcxGroupBox;
    RadioButton3: TRadioButton;
    RadioButton4: TRadioButton;
    RadioButton5: TRadioButton;
    RadioButton6: TRadioButton;
    RadioButton9: TRadioButton;
    RadioButton10: TRadioButton;
    Memo1: TMemo;
    Label52: TLabel;
    cxGroupBox10: TcxGroupBox;
    Label53: TLabel;
    DBEdit51: TDBEdit;
    DBEdit52: TDBEdit;
    Label54: TLabel;
    DBEdit53: TDBEdit;
    Label55: TLabel;
    DBEdit54: TDBEdit;
    Label56: TLabel;
    Label57: TLabel;
    DBEdit55: TDBEdit;
    cxGroupBox11: TcxGroupBox;
    Label58: TLabel;
    DBEdit56: TDBEdit;
    DBEdit57: TDBEdit;
    Label59: TLabel;
    DBEdit59: TDBEdit;
    Label61: TLabel;
    cxGroupBox13: TcxGroupBox;
    Label63: TLabel;
    Label64: TLabel;
    DBEdit61: TDBEdit;
    DBEdit62: TDBEdit;
    cxGroupBox14: TcxGroupBox;
    Label65: TLabel;
    Label66: TLabel;
    DBEdit63: TDBEdit;
    DBEdit64: TDBEdit;
    cxGroupBox15: TcxGroupBox;
    Label67: TLabel;
    Label68: TLabel;
    DBEdit65: TDBEdit;
    DBEdit66: TDBEdit;
    cxGroupBox16: TcxGroupBox;
    Label69: TLabel;
    Label70: TLabel;
    DBEdit67: TDBEdit;
    DBEdit68: TDBEdit;
    cxGroupBox17: TcxGroupBox;
    cxGrid3: TcxGrid;
    cxGridDBTableView3: TcxGridDBTableView;
    cxGridDBColumn2: TcxGridDBColumn;
    cxGridLevel3: TcxGridLevel;
    cxGroupBox6: TcxGroupBox;
    Label46: TLabel;
    Label47: TLabel;
    DBEdit45: TDBEdit;
    DBEdit46: TDBEdit;
    cxGroupBox7: TcxGroupBox;
    Label48: TLabel;
    Label49: TLabel;
    DBEdit47: TDBEdit;
    DBEdit48: TDBEdit;
    cxGroupBox12: TcxGroupBox;
    Label60: TLabel;
    Label62: TLabel;
    DBEdit58: TDBEdit;
    DBEdit60: TDBEdit;
    cxGrid4: TcxGrid;
    cxGridDBTableView4: TcxGridDBTableView;
    cxGridDBColumn5: TcxGridDBColumn;
    cxGridLevel4: TcxGridLevel;
    cxGridDBTableView4Column1: TcxGridDBColumn;
    cxGridDBTableView4Column2: TcxGridDBColumn;
    cxGridDBTableView4Column3: TcxGridDBColumn;
    cxGridDBTableView4Column7: TcxGridDBColumn;
    cxGridDBTableView4Column4: TcxGridDBColumn;
    Label71: TLabel;
    DBEdit69: TDBEdit;
    cxGroupBox18: TcxGroupBox;
    RadioButton7: TRadioButton;
    RadioButton8: TRadioButton;
    RadioButton11: TRadioButton;
    RadioButton12: TRadioButton;
    cxGroupBox19: TcxGroupBox;
    Label72: TLabel;
    Label73: TLabel;
    cxButton13: TcxButton;
    DateTimePicker3: TDateTimePicker;
    DateTimePicker4: TDateTimePicker;
    cxComboBox4: TcxComboBox;
    procedure cxButton6Click(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frm_emissao_nfe: Tfrm_emissao_nfe;

implementation

uses
  cad_motorista;

{$R *.dfm}

procedure Tfrm_emissao_nfe.cxButton6Click(Sender: TObject);
begin
    FRM_cad_motorista:= TFRM_cad_motorista.Create(nil);
    FRM_cad_motorista.showmodal;
    FRM_cad_motorista:= nil;

end;

procedure Tfrm_emissao_nfe.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  Action := cafree;
  self := nil;
end;

end.
