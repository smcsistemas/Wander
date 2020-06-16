//Verificado automaticamente em 16/06/2020 09:29
unit dependentes;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, cxGraphics, cxLookAndFeels,
  cxLookAndFeelPainters, Vcl.Menus, dxSkinsCore, cxControls, cxStyles,
  dxSkinscxPCPainter, cxCustomData, cxFilter, cxData, cxDataStorage, cxEdit,
  cxNavigator, Data.DB, cxDBData, cxGridLevel, cxGridCustomTableView,
  cxGridTableView, cxGridDBTableView, cxClasses, cxGridCustomView, cxGrid,
  Vcl.StdCtrls, cxButtons, Vcl.Mask, Vcl.DBCtrls, cxContainer, cxMaskEdit,
  cxCurrencyEdit, cxTextEdit, Vcl.ComCtrls, dxCore, cxDateUtils, cxLabel,
  cxDropDownEdit, cxCalendar, cxGroupBox, dxSkinOffice2013White, dxSkinsForm,
  dxSkinOffice2007Silver, dxSkinOffice2013LightGray;

type
  Tfmr_dependentes = class(TForm)
    conveniadoNome: TcxTextEdit;
    conveniadoCredito: TcxCurrencyEdit;
    conveniadoSenha: TcxMaskEdit;
    conveniadoCpf: TcxMaskEdit;
    cxGroupBox3: TcxGroupBox;
    conveniadoConsulta: TcxTextEdit;
    conveniadoFiltro: TcxComboBox;
    conveniadoQryPeriodoInicio: TcxDateEdit;
    conveniadoQryPeriodoFim: TcxDateEdit;
    GroupBox1: TGroupBox;
    lblQTDEConveniados: TLabel;
    convenioInicio: TcxDateEdit;
    convenioFim: TcxDateEdit;
    btnRenovarConveniados: TcxButton;
    gdConveniados: TcxGrid;
    gdConveniadosTbVw: TcxGridDBTableView;
    clid: TcxGridDBColumn;
    gdConveniadosLv: TcxGridLevel;
    cxButton1: TcxButton;
    cxButton2: TcxButton;
    cxButton3: TcxButton;
    cxButton23: TcxButton;
    cxButton24: TcxButton;
    cxButton25: TcxButton;
    dxSkinController1: TdxSkinController;
    conveniadoMatricula: TcxTextEdit;
    cxTextEdit1: TcxTextEdit;
    cxTextEdit2: TcxTextEdit;
    cxTextEdit3: TcxTextEdit;
    cxTextEdit4: TcxTextEdit;
    gdTbVwColumn1: TcxGridDBColumn;
    gdTbVwColumn2: TcxGridDBColumn;
    gdTbVwColumn3: TcxGridDBColumn;
    gdTbVwColumn4: TcxGridDBColumn;
    gdTbVwColumn5: TcxGridDBColumn;
    gdTbVwColumn6: TcxGridDBColumn;
    gdTbVwColumn7: TcxGridDBColumn;
    gdTbVwColumn8: TcxGridDBColumn;
    procedure cxButton1Click(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  fmr_dependentes: Tfmr_dependentes;

implementation

uses
  histo_conveniado;

{$R *.dfm}

procedure Tfmr_dependentes.cxButton1Click(Sender: TObject);
begin
fmr_conveniado := Tfmr_conveniado.Create(nil);
fmr_conveniado.showmodal;
end;

procedure Tfmr_dependentes.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  Action := cafree;
  self := nil;
end;

end.
