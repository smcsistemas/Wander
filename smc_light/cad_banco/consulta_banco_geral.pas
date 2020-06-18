//Verificado automaticamente em 16/06/2020 09:27
unit consulta_banco_geral;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, FireDAC.Stan.Intf, FireDAC.Stan.Option,
  FireDAC.Stan.Param, FireDAC.Stan.Error, FireDAC.DatS,
  FireDAC.Stan.Async, FireDAC.DApt, cxGraphics,
  cxLookAndFeels, cxLookAndFeelPainters, Vcl.Menus, dxSkinsCore, dxSkinBlack,
  dxSkinBlue, dxSkinBlueprint, dxSkinCaramel, dxSkinCoffee, dxSkinDarkRoom,
  dxSkinDarkSide, dxSkinDevExpressDarkStyle, dxSkinDevExpressStyle, dxSkinFoggy,
  dxSkinGlassOceans, dxSkinHighContrast, dxSkiniMaginary, dxSkinLilian,
  dxSkinLiquidSky, dxSkinLondonLiquidSky, dxSkinMcSkin, dxSkinMetropolis,
  dxSkinMetropolisDark, dxSkinMoneyTwins, dxSkinOffice2007Black,
  dxSkinOffice2007Blue, dxSkinOffice2007Green, dxSkinOffice2007Pink,
  dxSkinOffice2007Silver, dxSkinOffice2010Black, dxSkinOffice2010Blue,
  dxSkinOffice2010Silver, dxSkinOffice2013DarkGray, dxSkinOffice2013LightGray,
  dxSkinOffice2013White, dxSkinOffice2016Colorful, dxSkinOffice2016Dark,
  dxSkinPumpkin, dxSkinSeven, dxSkinSevenClassic, dxSkinSharp, dxSkinSharpPlus,
  dxSkinSilver, dxSkinSpringTime, dxSkinStardust, dxSkinSummer2008,
  dxSkinTheAsphaltWorld, dxSkinsDefaultPainters, dxSkinValentine,
  dxSkinVisualStudio2013Blue, dxSkinVisualStudio2013Dark,
  dxSkinVisualStudio2013Light, dxSkinVS2010, dxSkinWhiteprint,
  dxSkinXmas2008Blue, Vcl.StdCtrls, cxButtons, Data.DB, FireDAC.Comp.DataSet,
  FireDAC.Comp.Client, Vcl.Grids, Vcl.DBGrids, FireDAC.Phys.Intf, FireDAC.DApt.Intf;

type
  TFrm_Consulta_Banco_Geral = class(TForm)
    DBGrid1: TDBGrid;
    DS_ConsultarBanco_CONTA: TDataSource;
    SQL_ConsultarBanco_CONTA: TFDQuery;
    ChK_codigo: TCheckBox;
    CheckBox1: TCheckBox;
    Edit1: TEdit;
    cxButton1: TcxButton;
    SQL_ConsultarBanco_CONTACODIGO: TFDAutoIncField;
    SQL_ConsultarBanco_CONTADATA_CADASTRO: TDateField;
    SQL_ConsultarBanco_CONTANOME_AGENCIA: TStringField;
    SQL_ConsultarBanco_CONTATITULAR: TStringField;
    SQL_ConsultarBanco_CONTAAGENCIA: TIntegerField;
    SQL_ConsultarBanco_CONTANOME_BANCO: TStringField;
    SQL_ConsultarBanco_CONTAAGENCIA_DIGITO: TStringField;
    SQL_ConsultarBanco_CONTACONTA: TIntegerField;
    SQL_ConsultarBanco_CONTACONTA_DIGITO: TStringField;
    SQL_ConsultarBanco_CONTAOPERACAO: TIntegerField;
    SQL_ConsultarBanco_CONTAGERENTE: TStringField;
    SQL_ConsultarBanco_CONTAGERENTE_TELEFONE: TStringField;
    SQL_ConsultarBanco_CONTATIPO: TStringField;
    SQL_ConsultarBanco_CONTACONTA_PROD_SALDO: TBCDField;
    SQL_ConsultarBanco_CONTAPESSOAS: TIntegerField;
    SQL_ConsultarBanco_CONTAEMPRESA: TIntegerField;
    SQL_ConsultarBanco_CONTACOLABORADOR: TIntegerField;
    SQL_ConsultarBanco_CONTACARTEIRA: TIntegerField;
    SQL_ConsultarBanco_CONTACONVENIO: TIntegerField;
    SQL_ConsultarBanco_CONTABENEFICIARIO: TStringField;
    SQL_ConsultarBanco_CONTALAYOUT_REMESSA: TStringField;
    SQL_ConsultarBanco_CONTALAYOUT_RETORNO: TStringField;
    SQL_ConsultarBanco_CONTAJUROS: TBCDField;
    SQL_ConsultarBanco_CONTAMULTA: TBCDField;
    SQL_ConsultarBanco_CONTADESCONTO: TBCDField;
    SQL_ConsultarBanco_CONTAMENSAGEM_01: TMemoField;
    SQL_ConsultarBanco_CONTAMENSAGEM_02: TMemoField;
    SQL_ConsultarBanco_CONTAMENSAGEM_03: TMemoField;
    SQL_ConsultarBanco_CONTACOD_FEBRABAN: TIntegerField;
    DS_ConsultarBanco_NOME: TDataSource;
    SQL_ConsultarBanco_NOME: TFDQuery;
    SQL_ConsultarBanco_NOMECODIGO: TFDAutoIncField;
    SQL_ConsultarBanco_NOMEDATA_CADASTRO: TDateField;
    SQL_ConsultarBanco_NOMENOME_AGENCIA: TStringField;
    SQL_ConsultarBanco_NOMETITULAR: TStringField;
    SQL_ConsultarBanco_NOMEAGENCIA: TIntegerField;
    SQL_ConsultarBanco_NOMENOME_BANCO: TStringField;
    SQL_ConsultarBanco_NOMEAGENCIA_DIGITO: TStringField;
    SQL_ConsultarBanco_NOMECONTA: TIntegerField;
    SQL_ConsultarBanco_NOMECONTA_DIGITO: TStringField;
    SQL_ConsultarBanco_NOMEOPERACAO: TIntegerField;
    SQL_ConsultarBanco_NOMEGERENTE: TStringField;
    SQL_ConsultarBanco_NOMEGERENTE_TELEFONE: TStringField;
    SQL_ConsultarBanco_NOMETIPO: TStringField;
    SQL_ConsultarBanco_NOMECONTA_PROD_SALDO: TBCDField;
    SQL_ConsultarBanco_NOMEPESSOAS: TIntegerField;
    SQL_ConsultarBanco_NOMEEMPRESA: TIntegerField;
    SQL_ConsultarBanco_NOMECOLABORADOR: TIntegerField;
    SQL_ConsultarBanco_NOMECARTEIRA: TIntegerField;
    SQL_ConsultarBanco_NOMECONVENIO: TIntegerField;
    SQL_ConsultarBanco_NOMEBENEFICIARIO: TStringField;
    SQL_ConsultarBanco_NOMELAYOUT_REMESSA: TStringField;
    SQL_ConsultarBanco_NOMELAYOUT_RETORNO: TStringField;
    SQL_ConsultarBanco_NOMEJUROS: TBCDField;
    SQL_ConsultarBanco_NOMEMULTA: TBCDField;
    SQL_ConsultarBanco_NOMEDESCONTO: TBCDField;
    SQL_ConsultarBanco_NOMEMENSAGEM_01: TMemoField;
    SQL_ConsultarBanco_NOMEMENSAGEM_02: TMemoField;
    SQL_ConsultarBanco_NOMEMENSAGEM_03: TMemoField;
    SQL_ConsultarBanco_NOMECOD_FEBRABAN: TIntegerField;
    procedure cxButton1Click(Sender: TObject);
    procedure Edit1KeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
    procedure ChK_codigoClick(Sender: TObject);
    procedure CheckBox1Click(Sender: TObject);
    procedure DBGrid1KeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
    procedure FormShow(Sender: TObject);
    procedure DBGrid1DrawColumnCell(Sender: TObject; const Rect: TRect; DataCol: Integer; Column: TColumn;
      State: TGridDrawState);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Frm_Consulta_Banco_Geral: TFrm_Consulta_Banco_Geral;

implementation

{$R *.dfm}

uses u_funcoes;

procedure TFrm_Consulta_Banco_Geral.CheckBox1Click(Sender: TObject);
begin
  if CheckBox1.Checked = true then
  begin
    ChK_codigo.Checked := false;
    Edit1.Clear;
    Edit1.SetFocus;
  end;
end;

procedure TFrm_Consulta_Banco_Geral.ChK_codigoClick(Sender: TObject);
begin
  if ChK_codigo.Checked = true then
  begin
    CheckBox1.Checked := false;
    Edit1.Clear;
    Edit1.SetFocus;
  end;
end;

procedure TFrm_Consulta_Banco_Geral.cxButton1Click(Sender: TObject);
begin

  if ChK_codigo.Checked = true then
  begin
    with SQL_ConsultarBanco_CONTA do
    begin
      close;
      Params[0].Value := Edit1.Text;
      open;
      DBGrid1.DataSource := DS_ConsultarBanco_CONTA;
      DBGrid1.SetFocus;
      if SQL_ConsultarBanco_CONTA.RecordCount = 0 then
      begin
        ShowMessage('Registro não Encontrado');
      end;
    end;
  end;

  if CheckBox1.Checked = true then
  begin
    with SQL_ConsultarBanco_NOME do
    begin
      close;
      Params[0].AsString := Edit1.Text + '%';
      open;
      DBGrid1.DataSource := DS_ConsultarBanco_NOME;
      DBGrid1.SetFocus;
      if SQL_ConsultarBanco_NOME.RecordCount = 0 then
      begin
        ShowMessage('Registro não Encontrado');
      end;
    end;
  end;

end;

procedure TFrm_Consulta_Banco_Geral.DBGrid1DrawColumnCell(Sender: TObject; const Rect: TRect; DataCol: Integer;
  Column: TColumn; State: TGridDrawState);
begin
  GridZebrado(DBGrid1, Rect, DataCol, Column, State);
end;

procedure TFrm_Consulta_Banco_Geral.DBGrid1KeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
begin
  if Key = VK_RETURN then
  begin
    close;
  end;
end;

procedure TFrm_Consulta_Banco_Geral.Edit1KeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
begin
  if Key = VK_RETURN then
  begin
    cxButton1.SetFocus;
  end;
end;

procedure TFrm_Consulta_Banco_Geral.FormShow(Sender: TObject);
begin
  CheckBox1.Checked := true;
  Edit1.SetFocus;
end;

end.
Trocou SALDO por @_@_@_@_@_@ : automaticamente em 17/06/2020 21:29
Trocou @_@_@_@_@_@ por PROD_SALDO : automaticamente em 17/06/2020 21:31
