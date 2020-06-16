//Verificado automaticamente em 16/06/2020 09:29
unit vw_composicao_preco;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, cxGraphics, cxControls, cxLookAndFeels,
  cxLookAndFeelPainters, cxContainer, cxEdit, dxSkinsCore, cxGroupBox,
  Vcl.StdCtrls, Vcl.Mask, Vcl.DBCtrls, cxStyles, dxSkinscxPCPainter,
  cxCustomData, cxFilter, cxData, cxDataStorage, cxNavigator, Data.DB, cxDBData,
  cxGridLevel, cxGridCustomTableView, cxGridTableView, cxGridDBTableView,
  cxClasses, cxGridCustomView, cxGrid, Vcl.Menus, cxButtons;

type
  Tfrm_composicao_preco_produto = class(TForm)
    GroupBox2: TGroupBox;
    Label13: TLabel;
    Label20: TLabel;
    Label26: TLabel;
    Label39: TLabel;
    Label33: TLabel;
    FRETE: TDBEdit;
    PRECO_CUSTO: TDBEdit;
    DESP_OPERACIONAIS: TDBEdit;
    CUSTO_MEDIO: TDBEdit;
    IMPOSTO: TDBEdit;
    GroupBox18: TGroupBox;
    Label32: TLabel;
    Label79: TLabel;
    Label82: TLabel;
    MARGEM_LUCRO: TDBEdit;
    MARGEM_L_DISTRIBUIDOR: TDBEdit;
    MARGEM_L_ATACADO: TDBEdit;
    GroupBox17: TcxGroupBox;
    Label24: TLabel;
    Label23: TLabel;
    Label86: TLabel;
    PRECO_FINAL_VAREJO: TDBEdit;
    PRECO_FINAL_DISTRIBUIDOR: TDBEdit;
    PRECO_FINAL_ATACADO: TDBEdit;
    GroupBox16: TGroupBox;
    Label27: TLabel;
    Label31: TLabel;
    Label81: TLabel;
    s: TDBEdit;
    DESCONTO_M_DISTRIBUIDOR: TDBEdit;
    DESCONTO_M_ATACADO: TDBEdit;
    cxGrid4: TcxGrid;
    cxGridDBTableView3: TcxGridDBTableView;
    cxGridDBTableView3Column11: TcxGridDBColumn;
    cxGridDBTableView3Column1: TcxGridDBColumn;
    cxGridDBTableView3Column2: TcxGridDBColumn;
    cxGridDBTableView3Column3: TcxGridDBColumn;
    cxGridDBTableView3Column4: TcxGridDBColumn;
    cxGridLevel3: TcxGridLevel;
    cxGridDBTableView3Column5: TcxGridDBColumn;
    cxGridDBTableView3Column6: TcxGridDBColumn;
    cxGridDBTableView3Column7: TcxGridDBColumn;
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
  frm_composicao_preco_produto: Tfrm_composicao_preco_produto;

implementation

{$R *.dfm}

end.
