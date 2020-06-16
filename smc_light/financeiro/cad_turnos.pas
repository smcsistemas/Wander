//Verificado automaticamente em 16/06/2020 09:27
unit cad_turnos;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, cxGraphics, cxLookAndFeels,
  cxLookAndFeelPainters, Vcl.Menus, dxSkinsCore, dxSkinOffice2013White,
  cxControls, cxStyles, dxSkinscxPCPainter, cxCustomData, cxFilter, cxData,
  cxDataStorage, cxEdit, cxNavigator, Data.DB, cxDBData, Vcl.ComCtrls,
  cxGridCustomTableView, cxGridTableView, cxGridDBTableView, cxGridLevel,
  cxClasses, cxGridCustomView, cxGrid, Vcl.StdCtrls, cxButtons, Vcl.Mask,
  Vcl.DBCtrls, dxSkinOffice2007Silver, dxSkinOffice2013LightGray;

type
  Tfrm_cad_turnos = class(TForm)
    lbl2: TLabel;
    lbl1: TLabel;
    lbl3: TLabel;
    lbl4: TLabel;
    dbedt2: TDBEdit;
    dbedt1: TDBEdit;
    BtnGravar: TcxButton;
    BtnCancelar: TcxButton;
    BtnIncluir: TcxButton;
    BtnAlterar: TcxButton;
    BtnExcluir: TcxButton;
    gdConveniados: TcxGrid;
    gdConveniadosTbVw: TcxGridDBTableView;
    gdConveniadosLv: TcxGridLevel;
    gdConveniadosTbVwColumn1: TcxGridDBColumn;
    gdConveniadosTbVwColumn2: TcxGridDBColumn;
    gdConveniadosTbVwColumn3: TcxGridDBColumn;
    gdConveniadosTbVwColumn4: TcxGridDBColumn;
    DateTimePicker3: TDateTimePicker;
    DateTimePicker4: TDateTimePicker;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frm_cad_turnos: Tfrm_cad_turnos;

implementation

{$R *.dfm}

procedure Tfrm_cad_turnos.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  Action := cafree;
  self := nil;
end;

end.
