//Verificado automaticamente em 16/06/2020 09:26
unit nfe_consulta_carta_correcao;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, cxGraphics, cxControls, cxLookAndFeels,
  cxLookAndFeelPainters, cxStyles, dxSkinsCore, dxSkinscxPCPainter,
  cxCustomData, cxFilter, cxData, cxDataStorage, cxEdit, cxNavigator, Data.DB,
  cxDBData, cxGridLevel, cxGridCustomTableView, cxGridTableView,
  cxGridDBTableView, cxClasses, cxGridCustomView, cxGrid, Vcl.StdCtrls;

type
  Tfrm_consulta_carta_correcao = class(TForm)
    Label1: TLabel;
    GroupBox1: TGroupBox;
    gdConveniados: TcxGrid;
    gdConveniadosTbVw: TcxGridDBTableView;
    clid: TcxGridDBColumn;
    clCodigo: TcxGridDBColumn;
    clSeqEvento: TcxGridDBColumn;
    clNnota: TcxGridDBColumn;
    clData: TcxGridDBColumn;
    clCorrecao: TcxGridDBColumn;
    clProtocolo: TcxGridDBColumn;
    gdConveniadosLv: TcxGridLevel;
    Label2: TLabel;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frm_consulta_carta_correcao: Tfrm_consulta_carta_correcao;

implementation

{$R *.dfm}

procedure Tfrm_consulta_carta_correcao.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  Action := cafree;
  self := nil;
end;

end.
