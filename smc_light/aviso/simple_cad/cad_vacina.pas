unit cad_vacina;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, cxGraphics, cxLookAndFeels,
  cxLookAndFeelPainters, Vcl.Menus, dxSkinsCore, dxSkinOffice2013White, Data.DB,
  cxControls, cxContainer, cxEdit, Vcl.ComCtrls, dxCore, cxDateUtils,
  cxTextEdit, cxMaskEdit, cxDropDownEdit, cxCalendar, Vcl.StdCtrls, Vcl.Grids,
  Vcl.DBGrids, cxButtons;

type
  TFrm_cad_vacinas = class(TForm)
    Label3: TLabel;
    Label4: TLabel;
    Label5: TLabel;
    Label1: TLabel;
    btn_confirmar: TcxButton;
    cxButton1: TcxButton;
    cxButton2: TcxButton;
    s: TDBGrid;
    Edit3: TEdit;
    Edit5: TEdit;
    Edit1: TEdit;
    cxDateEdit1: TcxDateEdit;
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Frm_cad_vacinas: TFrm_cad_vacinas;

implementation

{$R *.dfm}

end.
