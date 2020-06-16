//Verificado automaticamente em 16/06/2020 09:29
unit convenio;

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
  Tfmr_convenio = class(TForm)
    conveniadoMatricula: TcxTextEdit;
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
    clMatricula: TcxGridDBColumn;
    clCredito: TcxGridDBColumn;
    clStatus: TcxGridDBColumn;
    gdConveniadosLv: TcxGridLevel;
    cxButton1: TcxButton;
    cxButton2: TcxButton;
    cxButton3: TcxButton;
    cxButton23: TcxButton;
    cxButton24: TcxButton;
    cxButton25: TcxButton;
    gdConveniadosTbVwColumn1: TcxGridDBColumn;
    gdConveniadosTbVwColumn2: TcxGridDBColumn;
    gdConveniadosTbVwColumn3: TcxGridDBColumn;
    procedure cxButton1Click(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  fmr_convenio: Tfmr_convenio;

implementation

uses
  histo_conveniado;

{$R *.dfm}

procedure Tfmr_convenio.cxButton1Click(Sender: TObject);
begin
fmr_conveniado := Tfmr_conveniado.Create(nil);
fmr_conveniado.showmodal;
end;

procedure Tfmr_convenio.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  Action := cafree;
  self := nil;
end;

end.
