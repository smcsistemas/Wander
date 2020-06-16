//Verificado automaticamente em 16/06/2020 09:28
unit cad_ramo_atv;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, cxGraphics, cxLookAndFeels,
  cxLookAndFeelPainters, Vcl.Menus, dxSkinsCore, Vcl.StdCtrls, Vcl.Grids,
  Vcl.DBGrids, cxButtons;

type
  Tfrm_cad_ramo_atv = class(TForm)
    Label4: TLabel;
    Descrição: TLabel;
    BtnGravar: TcxButton;
    BtnCancelar: TcxButton;
    BtnIncluir: TcxButton;
    BtnAlterar: TcxButton;
    DBGrid1: TDBGrid;
    Edit1: TEdit;
    Código: TLabel;
    Edit2: TEdit;
    Edit3: TEdit;
    cxButton1: TcxButton;
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frm_cad_ramo_atv: Tfrm_cad_ramo_atv;

implementation

{$R *.dfm}

end.
