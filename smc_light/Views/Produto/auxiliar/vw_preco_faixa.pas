//Verificado automaticamente em 16/06/2020 09:29
unit vw_preco_faixa;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, cxGraphics, cxLookAndFeels,
  cxLookAndFeelPainters, Vcl.Menus, dxSkinsCore, cxControls, cxStyles,
  dxSkinscxPCPainter, cxCustomData, cxFilter, cxData, cxDataStorage, cxEdit,
  cxNavigator, Data.DB, cxDBData, cxLabel, cxCurrencyEdit, cxContainer,
  cxTextEdit, cxMaskEdit, cxDropDownEdit, cxGridLevel, cxGridCustomTableView,
  cxGridTableView, cxGridDBTableView, cxClasses, cxGridCustomView, cxGrid,
  Vcl.StdCtrls, cxButtons;

type
  Tfrm_preco_p_faixa = class(TForm)
    grp_faixa_preco: TGroupBox;
    Label88: TLabel;
    Label90: TLabel;
    Label89: TLabel;
    edt_preco: TEdit;
    grid_c: TcxGrid;
    grid_cDBTableView1: TcxGridDBTableView;
    grid_cDBTableView1TIPO: TcxGridDBColumn;
    grid_cDBTableView1QTDE_MIN: TcxGridDBColumn;
    grid_cDBTableView1PRECO: TcxGridDBColumn;
    grid_cLevel1: TcxGridLevel;
    cb_tipo: TcxComboBox;
    edt_qtde_min: TEdit;
    grid_cDBTableView1Column2: TcxGridDBColumn;
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
  frm_preco_p_faixa: Tfrm_preco_p_faixa;

implementation

{$R *.dfm}

end.
