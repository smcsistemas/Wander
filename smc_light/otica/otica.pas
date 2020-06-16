//Verificado automaticamente em 16/06/2020 09:28
unit otica;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, cxGraphics, cxControls, cxLookAndFeels,
  cxLookAndFeelPainters, cxStyles, dxSkinsCore, dxSkinscxPCPainter,
  cxCustomData, cxFilter, cxData, cxDataStorage, cxEdit, cxNavigator, Data.DB,
  cxDBData, cxContainer, Vcl.Menus, Vcl.StdCtrls, cxButtons, cxTextEdit,
  Vcl.ExtCtrls, cxGridLevel, cxGridCustomTableView, cxGridTableView,
  cxGridBandedTableView, cxGridDBBandedTableView, cxClasses, cxGridCustomView,
  cxGrid, Vcl.ComCtrls, dxCore, cxDateUtils, cxMaskEdit, cxDropDownEdit,
  cxCalendar, dxSkinOffice2007Silver, dxSkinOffice2013LightGray,
  dxSkinOffice2013White;

type
  Tfrm_otica = class(TForm)
    grid_otica: TcxGrid;
    grid_oticaDBBandedTableView1: TcxGridDBBandedTableView;
    grid_oticaDBBandedTableView1DATA_CADASTRO: TcxGridDBBandedColumn;
    grid_oticaDBBandedTableView1L_OE_ESFERA: TcxGridDBBandedColumn;
    grid_oticaDBBandedTableView1L_OE_CILINDRO: TcxGridDBBandedColumn;
    grid_oticaDBBandedTableView1L_OE_EIXO: TcxGridDBBandedColumn;
    grid_oticaDBBandedTableView1L_OE_DISTANCIA_PUPILAR: TcxGridDBBandedColumn;
    grid_oticaDBBandedTableView1L_OD_ESFERA: TcxGridDBBandedColumn;
    grid_oticaDBBandedTableView1L_OD_CILINDRO: TcxGridDBBandedColumn;
    grid_oticaDBBandedTableView1L_OD_EIXO: TcxGridDBBandedColumn;
    grid_oticaDBBandedTableView1L_OD_DISTANCIA_PUPILAR: TcxGridDBBandedColumn;
    grid_oticaDBBandedTableView1P_OE_ESFERA: TcxGridDBBandedColumn;
    grid_oticaDBBandedTableView1P_OE_CILINDRO: TcxGridDBBandedColumn;
    grid_oticaDBBandedTableView1P_OE_EIXO: TcxGridDBBandedColumn;
    grid_oticaDBBandedTableView1P_OE_DISTANCIA_PUPILAR: TcxGridDBBandedColumn;
    grid_oticaDBBandedTableView1P_OD_ESFERA: TcxGridDBBandedColumn;
    grid_oticaDBBandedTableView1P_OD_CILINDRO: TcxGridDBBandedColumn;
    grid_oticaDBBandedTableView1P_OD_EIXO: TcxGridDBBandedColumn;
    grid_oticaDBBandedTableView1P_OD_DISTANCIA_PUPILAR: TcxGridDBBandedColumn;
    grid_oticaDBBandedTableView1ARMACAO_SOLAR: TcxGridDBBandedColumn;
    grid_oticaDBBandedTableView1ARMACAO_GRAU: TcxGridDBBandedColumn;
    grid_oticaDBBandedTableView1LENTE_GRAU: TcxGridDBBandedColumn;
    grid_oticaDBBandedTableView1LENTE_SOLAR: TcxGridDBBandedColumn;
    grid_oticaDBBandedTableView1ADICAO: TcxGridDBBandedColumn;
    grid_oticaLevel1: TcxGridLevel;
    GroupBox3: TGroupBox;
    Label13: TLabel;
    Label15: TLabel;
    Label16: TLabel;
    Label18: TLabel;
    Label22: TLabel;
    Label23: TLabel;
    Shape1: TShape;
    Label28: TLabel;
    Label36: TLabel;
    Label41: TLabel;
    Label42: TLabel;
    Label43: TLabel;
    Label52: TLabel;
    Label26: TLabel;
    Label24: TLabel;
    Shape2: TShape;
    Label35: TLabel;
    L_OE_ES: TcxTextEdit;
    L_OE_C: TcxTextEdit;
    L_OE_EX: TcxTextEdit;
    L_OE_DP: TcxTextEdit;
    L_OD_ES: TcxTextEdit;
    L_OD_C: TcxTextEdit;
    L_OD_EX: TcxTextEdit;
    L_OD_DP: TcxTextEdit;
    btn_cad: TcxButton;
    ADICAO: TcxTextEdit;
    P_OE_DP: TcxTextEdit;
    P_OD_DP: TcxTextEdit;
    P_OD_EX: TcxTextEdit;
    P_OE_EX: TcxTextEdit;
    P_OE_C: TcxTextEdit;
    P_OD_C: TcxTextEdit;
    P_OD_ES: TcxTextEdit;
    P_OE_ES: TcxTextEdit;
    Shape3: TShape;
    Label1: TLabel;
    Label2: TLabel;
    Label3: TLabel;
    Label4: TLabel;
    cxTextEdit3: TcxTextEdit;
    cxTextEdit4: TcxTextEdit;
    Label5: TLabel;
    cxDateEdit1: TcxDateEdit;
    cxTextEdit1: TcxTextEdit;
    cxTextEdit2: TcxTextEdit;
    cxButton24: TcxButton;
    cxButton25: TcxButton;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frm_otica: Tfrm_otica;

implementation

{$R *.dfm}

procedure Tfrm_otica.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  Action := cafree;
  self := nil;
end;

end.
