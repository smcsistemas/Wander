//Verificado automaticamente em 16/06/2020 09:27
unit consulta_banco;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, FireDAC.Stan.Intf, FireDAC.Stan.Option,
  FireDAC.Stan.Param, FireDAC.Stan.Error, FireDAC.DatS,
  FireDAC.Stan.Async, FireDAC.DApt, Data.DB,
  FireDAC.Comp.DataSet, FireDAC.Comp.Client, Vcl.Grids, Vcl.DBGrids,
  Vcl.StdCtrls, cxGraphics, cxLookAndFeels, cxLookAndFeelPainters, Vcl.Menus,
  dxSkinsCore, dxSkinBlack, dxSkinBlue, dxSkinBlueprint, dxSkinCaramel,
  dxSkinCoffee, dxSkinDarkRoom, dxSkinDarkSide, dxSkinDevExpressDarkStyle,
  dxSkinDevExpressStyle, dxSkinFoggy, dxSkinGlassOceans, dxSkinHighContrast,
  dxSkiniMaginary, dxSkinLilian, dxSkinLiquidSky, dxSkinLondonLiquidSky,
  dxSkinMcSkin, dxSkinMetropolis, dxSkinMetropolisDark, dxSkinMoneyTwins,
  dxSkinOffice2007Black, dxSkinOffice2007Blue, dxSkinOffice2007Green,
  dxSkinOffice2007Pink, dxSkinOffice2007Silver, dxSkinOffice2010Black,
  dxSkinOffice2010Blue, dxSkinOffice2010Silver, dxSkinOffice2013DarkGray,
  dxSkinOffice2013LightGray, dxSkinOffice2013White, dxSkinOffice2016Colorful,
  dxSkinOffice2016Dark, dxSkinPumpkin, dxSkinSeven, dxSkinSevenClassic,
  dxSkinSharp, dxSkinSharpPlus, dxSkinSilver, dxSkinSpringTime, dxSkinStardust,
  dxSkinSummer2008, dxSkinTheAsphaltWorld, dxSkinsDefaultPainters,
  dxSkinValentine, dxSkinVisualStudio2013Blue, dxSkinVisualStudio2013Dark,
  dxSkinVisualStudio2013Light, dxSkinVS2010, dxSkinWhiteprint,
  dxSkinXmas2008Blue, cxButtons, FireDAC.Phys.Intf, FireDAC.DApt.Intf;

type
  TFrm_ConsultaBanco = class(TForm)
    DBGrid1: TDBGrid;
    DS_ConsultarBanco: TDataSource;
    SQL_ConsultarBanco: TFDQuery;
    ChK_codigo: TCheckBox;
    Edit1: TEdit;
    cxButton1: TcxButton;
    SQL_ConsultarBancoCODIGO: TFDAutoIncField;
    SQL_ConsultarBancoNOME: TStringField;
    CheckBox1: TCheckBox;
    SQL_ConsultarBancoCODIGO_1: TIntegerField;
    SQL_ConsultarBancoNUMERO_AGENCIA: TStringField;
    SQL_ConsultarBancoNOME_AGENCIA: TStringField;
    procedure cxButton1Click(Sender: TObject);
    procedure Edit1KeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
    procedure ChK_codigoClick(Sender: TObject);
    procedure DBGrid1KeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
    procedure CheckBox1Click(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormShow(Sender: TObject);
    procedure DBGrid1DrawColumnCell(Sender: TObject; const Rect: TRect; DataCol: Integer; Column: TColumn; State: TGridDrawState);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Frm_ConsultaBanco: TFrm_ConsultaBanco;

implementation

{$R *.dfm}

uses u_funcoes;

procedure TFrm_ConsultaBanco.CheckBox1Click(Sender: TObject);
begin
  if CheckBox1.Checked = true then
  begin
    ChK_codigo.Checked := false;
    Edit1.Clear;
    Edit1.SetFocus;
  end;
end;

procedure TFrm_ConsultaBanco.ChK_codigoClick(Sender: TObject);
begin
  if ChK_codigo.Checked = true then
  begin
    CheckBox1.Checked := false;
    Edit1.Clear;
    Edit1.SetFocus;
  end;
end;

procedure TFrm_ConsultaBanco.cxButton1Click(Sender: TObject);
begin
  if ChK_codigo.Checked = true then
  begin
    with SQL_ConsultarBanco do
    begin
      close;
      sql.Clear;
      sql.Add('Select banco.CODIGO, banco.NOME, banco_agencia.CODIGO, banco_agencia.NUMERO_AGENCIA, banco_agencia.NOME_AGENCIA from banco');
      sql.Add('INNER JOIN banco_agencia');
      sql.Add('ON  (banco.CODIGO = banco_agencia.BANCO)');
      sql.Add('WHERE banco_agencia.NOME_AGENCIA LIKE :pnome');
      Params[0].Value := Edit1.Text + '%';
      DBGrid1.SetFocus;
      if SQL_ConsultarBanco.RecordCount = 0 then
      begin
        ShowMessage('Registro não Encontrado');
      end;
    end;
  end;

  if CheckBox1.Checked = true then
  begin
    with SQL_ConsultarBanco do
    begin
      close;
      sql.Clear;
      sql.Add('Select banco.CODIGO, banco.NOME, banco_agencia.CODIGO, banco_agencia.NUMERO_AGENCIA, banco_agencia.NOME_AGENCIA from banco');
      sql.Add('INNER JOIN banco_agencia');
      sql.Add('ON  (banco.CODIGO = banco_agencia.BANCO)');
      sql.Add('WHERE banco.NOME LIKE :pnome');
      Params[0].AsString := Edit1.Text + '%';
      open;
      DBGrid1.SetFocus;
      if SQL_ConsultarBanco.RecordCount = 0 then
      begin
        ShowMessage('Registro não Encontrado');
      end;
    end;

  end;

end;

procedure TFrm_ConsultaBanco.DBGrid1DrawColumnCell(Sender: TObject; const Rect: TRect; DataCol: Integer; Column: TColumn; State: TGridDrawState);
begin
  GridZebrado(DBGrid1, Rect, DataCol, Column, State);
end;

procedure TFrm_ConsultaBanco.DBGrid1KeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
begin
  if Key = VK_RETURN then
  begin
    close;
  end;
end;

procedure TFrm_ConsultaBanco.Edit1KeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
begin
  if Key = VK_RETURN then
  begin
    cxButton1.SetFocus;
  end;
end;

procedure TFrm_ConsultaBanco.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  Action := caFree;
end;

procedure TFrm_ConsultaBanco.FormShow(Sender: TObject);
begin
  CheckBox1.Checked := true;
  Edit1.SetFocus;
end;

end.
