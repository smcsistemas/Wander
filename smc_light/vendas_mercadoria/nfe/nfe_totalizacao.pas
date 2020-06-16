//Verificado automaticamente em 16/06/2020 09:28
unit nfe_totalizacao;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, cxGraphics, cxControls, cxLookAndFeels,
  cxLookAndFeelPainters, cxContainer, cxEdit, dxSkinsCore, Vcl.Menus, cxStyles,
  dxSkinscxPCPainter, cxCustomData, cxFilter, cxData, cxDataStorage,
  cxNavigator, Data.DB, cxDBData, cxGridLevel, cxGridCustomTableView,
  cxGridTableView, cxGridDBTableView, cxClasses, cxGridCustomView, cxGrid,
  Vcl.StdCtrls, cxGroupBox, cxButtons, Vcl.Mask, Vcl.DBCtrls, cxTextEdit,
  cxMaskEdit, cxDropDownEdit, Vcl.ExtCtrls;

type
  Tfrm_nfe_totalizacao = class(TForm)
    cxGroupBox4: TcxGroupBox;
    cxGroupBox9: TcxGroupBox;
    RadioButton3: TRadioButton;
    RadioButton4: TRadioButton;
    RadioButton5: TRadioButton;
    RadioButton6: TRadioButton;
    RadioButton9: TRadioButton;
    RadioButton10: TRadioButton;
    Memo1: TMemo;
    Label52: TLabel;
    cxGroupBox8: TcxGroupBox;
    Label50: TLabel;
    Label51: TLabel;
    cxGroupBox1: TcxGroupBox;
    Label35: TLabel;
    Label36: TLabel;
    Label38: TLabel;
    Label37: TLabel;
    cxButton4: TcxButton;
    cxButton5: TcxButton;
    Edit1: TEdit;
    Edit2: TEdit;
    Edit3: TEdit;
    Edit4: TEdit;
    Edit5: TEdit;
    cxGroupBox2: TcxGroupBox;
    Label39: TLabel;
    Label42: TLabel;
    Label43: TLabel;
    Label40: TLabel;
    Edit7: TEdit;
    Edit8: TEdit;
    Edit6: TEdit;
    Edit9: TEdit;
    Edit10: TEdit;
    Label41: TLabel;
    DBEdit43: TDBEdit;
    Label44: TLabel;
    Label45: TLabel;
    DBEdit44: TDBEdit;
    cxButton23: TcxButton;
    gdConveniados: TcxGrid;
    gdConveniadosTbVw: TcxGridDBTableView;
    clid: TcxGridDBColumn;
    clUF: TcxGridDBColumn;
    gdConveniadosLv: TcxGridLevel;
    cxGroupBox3: TcxGroupBox;
    Label1: TLabel;
    Label2: TLabel;
    cxButton1: TcxButton;
    Edit11: TEdit;
    Edit12: TEdit;
    Edit13: TEdit;
    Edit14: TEdit;
    Edit15: TEdit;
    Shape1: TShape;
    Label24: TLabel;
    gdConveniadosTbVwColumn2: TcxGridDBColumn;
    cxButton2: TcxButton;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frm_nfe_totalizacao: Tfrm_nfe_totalizacao;

implementation

{$R *.dfm}

procedure Tfrm_nfe_totalizacao.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  Action := cafree;
  self := nil;
end;

end.
