unit smcmodulador;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, cxGraphics, cxControls, cxLookAndFeels,
  cxLookAndFeelPainters, cxCustomData, cxStyles, cxTL, cxTextEdit,
  cxTLdxBarBuiltInMenu, dxSkinsCore, dxSkinOffice2007Silver,
  dxSkinOffice2013LightGray, dxSkinOffice2013White, cxInplaceContainer,
  Vcl.Menus, Vcl.StdCtrls, cxButtons;

type
  Tfrm_modular = class(TForm)
    __tree_cadastros: TcxTreeList;
    clCadastros: TcxTreeListColumn;
    __tree_relatorios: TcxTreeList;
    clRelatorios: TcxTreeListColumn;
    __tree_rotinas: TcxTreeList;
    clRotinas: TcxTreeListColumn;
    Edit1: TEdit;
    Label1: TLabel;
    Edit2: TEdit;
    cxButton23: TcxButton;
    cxButton25: TcxButton;
    cxButton1: TcxButton;
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frm_modular: Tfrm_modular;

implementation

{$R *.dfm}

end.
