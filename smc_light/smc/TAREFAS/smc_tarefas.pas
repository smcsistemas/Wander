//Verificado automaticamente em 16/06/2020 09:28
unit smc_tarefas;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls, cxGraphics, cxControls,
  cxLookAndFeels, cxLookAndFeelPainters, cxContainer, cxEdit, dxSkinsCore,
  Vcl.Menus, cxButtons, Vcl.ExtCtrls, cxTextEdit, cxMaskEdit, cxDropDownEdit,
  cxStyles, dxSkinscxPCPainter, cxCustomData, cxFilter, cxData, cxDataStorage,
  cxNavigator, Data.DB, cxDBData, cxGroupBox, cxGridLevel,
  cxGridCustomTableView, cxGridTableView, cxGridDBTableView, cxClasses,
  cxGridCustomView, cxGrid;

type
  Tfmr_smc_adicionar_tarefas = class(TForm)
    Edit1: TEdit;
    Label1: TLabel;
    Edit2: TEdit;
    Label2: TLabel;
    Memo1: TMemo;
    Label5: TLabel;
    Shape1: TShape;
    cxButton9: TcxButton;
    cxButton6: TcxButton;
    gdConveniados: TcxGrid;
    gdConveniadosTbVw: TcxGridDBTableView;
    clid: TcxGridDBColumn;
    clData: TcxGridDBColumn;
    clTecnico: TcxGridDBColumn;
    clRazao: TcxGridDBColumn;
    clTarefa: TcxGridDBColumn;
    clStatus: TcxGridDBColumn;
    clDescricao: TcxGridDBColumn;
    gdConveniadosLv: TcxGridLevel;
    Edit3: TEdit;
    Label3: TLabel;
    cxGroupBox1: TcxGroupBox;
    RadioButton1: TRadioButton;
    RadioButton2: TRadioButton;
    RadioButton3: TRadioButton;
    RadioButton4: TRadioButton;
    btn_marca: TcxButton;
    cxGroupBox2: TcxGroupBox;
    Label4: TLabel;
    Label6: TLabel;
    Label15: TLabel;
    Edit4: TEdit;
    Edit5: TEdit;
    Edit8: TEdit;
    cxButton8: TcxButton;
    Edit9: TEdit;
    Edit10: TEdit;
    Edit11: TEdit;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  fmr_smc_adicionar_tarefas: Tfmr_smc_adicionar_tarefas;

implementation

{$R *.dfm}

procedure Tfmr_smc_adicionar_tarefas.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  Action := cafree;
  self := nil;
end;

end.
