//Verificado automaticamente em 16/06/2020 09:29
unit vw_preco_promocional;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, cxGraphics, cxControls, cxLookAndFeels,
  cxLookAndFeelPainters, cxContainer, cxEdit, dxSkinsCore, Vcl.StdCtrls,
  Vcl.Mask, Vcl.DBCtrls, cxTextEdit, cxMaskEdit, cxDropDownEdit, cxCalendar,
  cxDBEdit, cxStyles, dxSkinscxPCPainter, cxCustomData, cxFilter, cxData,
  cxDataStorage, cxNavigator, Data.DB, cxDBData, cxLabel, cxCurrencyEdit,
  Vcl.Menus, cxButtons, cxGridLevel, cxGridCustomTableView, cxGridTableView,
  cxGridDBTableView, cxClasses, cxGridCustomView, cxGrid;

type
  Tfrm_preco_promocional = class(TForm)
    GroupBox1: TGroupBox;
    Label9: TLabel;
    Label19: TLabel;
    Label21: TLabel;
    edt_dt_inicio: TcxDBDateEdit;
    edt_dt_fim: TcxDBDateEdit;
    DBEdit1: TDBEdit;
    grid_c: TcxGrid;
    grid_cDBTableView1: TcxGridDBTableView;
    grid_cDBTableView1TIPO: TcxGridDBColumn;
    grid_cDBTableView1QTDE_MIN: TcxGridDBColumn;
    grid_cDBTableView1PRECO: TcxGridDBColumn;
    grid_cDBTableView1Column2: TcxGridDBColumn;
    grid_cLevel1: TcxGridLevel;
    grid_cDBTableView1Column1: TcxGridDBColumn;
    grid_cDBTableView1Column3: TcxGridDBColumn;
    grid_cDBTableView1Column4: TcxGridDBColumn;
    BtnGravar: TcxButton;
    BtnCancelar: TcxButton;
    BtnAlterar: TcxButton;
    BtnIncluir: TcxButton;
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frm_preco_promocional: Tfrm_preco_promocional;

implementation

{$R *.dfm}

end.
