//Verificado automaticamente em 16/06/2020 09:28
unit cad_motorista;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, cxGraphics, cxControls, cxLookAndFeels,
  cxLookAndFeelPainters, dxSkinsCore, dxSkinOffice2013White, dxSkinscxPCPainter,
  dxBarBuiltInMenu, Vcl.Menus, Data.DB, cxContainer, cxEdit, cxDBEdit,
  cxTextEdit, cxMaskEdit, cxDropDownEdit, cxGroupBox, Vcl.Grids, Vcl.DBGrids,
  Vcl.StdCtrls, cxButtons, Vcl.Mask, Vcl.DBCtrls, cxPC, dxSkinOffice2007Silver,
  dxSkinOffice2013LightGray;

type
  Tfrm_cad_motorista = class(TForm)
    cxPageControl1: TcxPageControl;
    cxTabSheet1: TcxTabSheet;
    Label17: TLabel;
    DBEdit1: TDBEdit;
    cxButton1: TcxButton;
    DBGrid1: TDBGrid;
    cxGroupBox1: TcxGroupBox;
    cxDBComboBox1: TcxDBComboBox;
    cxTabSheet2: TcxTabSheet;
    Label4: TLabel;
    Label1: TLabel;
    Label2: TLabel;
    Label3: TLabel;
    Label5: TLabel;
    Label6: TLabel;
    Label7: TLabel;
    Label8: TLabel;
    Label9: TLabel;
    Label10: TLabel;
    Label11: TLabel;
    Label12: TLabel;
    Label13: TLabel;
    cxDBTextEdit1: TcxDBTextEdit;
    cxDBTextEdit2: TcxDBTextEdit;
    cxDBTextEdit3: TcxDBTextEdit;
    cxDBTextEdit4: TcxDBTextEdit;
    cxDBTextEdit5: TcxDBTextEdit;
    cxDBTextEdit6: TcxDBTextEdit;
    cxDBTextEdit7: TcxDBTextEdit;
    cxDBTextEdit8: TcxDBTextEdit;
    cxDBTextEdit9: TcxDBTextEdit;
    cxDBTextEdit10: TcxDBTextEdit;
    cxDBTextEdit12: TcxDBTextEdit;
    cxDBTextEdit13: TcxDBTextEdit;
    BtnGravar: TcxButton;
    BtnCancelar: TcxButton;
    BtnIncluir: TcxButton;
    BtnAlterar: TcxButton;
    BtnExcluir: TcxButton;
    Label14: TLabel;
    cxDBTextEdit14: TcxDBTextEdit;
    cxDBTextEdit11: TcxDBTextEdit;
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frm_cad_motorista: Tfrm_cad_motorista;

implementation

{$R *.dfm}

end.
