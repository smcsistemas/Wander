{ v 03.10.16 17:53 }
unit U_consulta_fornecedor;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants,
  System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, cxGraphics, cxLookAndFeels,
  cxLookAndFeelPainters, Vcl.Menus, dxSkinsCore, dxSkinBlack, dxSkinBlue,
  dxSkinBlueprint, dxSkinCaramel, dxSkinCoffee, dxSkinDarkRoom, dxSkinDarkSide,
  dxSkinDevExpressDarkStyle, dxSkinDevExpressStyle, dxSkinFoggy,
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
  dxSkinXmas2008Blue, FireDAC.Stan.Intf, FireDAC.Stan.Option,
  FireDAC.Stan.Param, FireDAC.Stan.Error, FireDAC.DatS, FireDAC.Phys.Intf,
  FireDAC.DApt.Intf, FireDAC.Stan.Async, FireDAC.DApt, Data.DB,
  FireDAC.Comp.DataSet, FireDAC.Comp.Client, Vcl.Grids, Vcl.DBGrids,
  Vcl.StdCtrls, cxButtons, Vcl.Mask, cxControls, cxContainer, cxEdit,
  cxCheckBox;

type
  TFrm_Consulta_Fornecedor = class(TForm)
    DBGrid1: TDBGrid;
    DS_C_FORNECEDOR: TDataSource;
    SQL_C_FORNECEDOR: TFDQuery;
    SQL_C_FORNECEDORCODIGO: TFDAutoIncField;
    SQL_C_FORNECEDORDATA_CADASTRO: TDateField;
    SQL_C_FORNECEDORPRODUTOR_RURAL: TStringField;
    SQL_C_FORNECEDORRAZAO_SOCIAL: TStringField;
    SQL_C_FORNECEDORNOME_FANTASIA: TStringField;
    SQL_C_FORNECEDORCNPJ_CPF: TStringField;
    SQL_C_FORNECEDORINSCRICAO_ESTADUAL: TStringField;
    SQL_C_FORNECEDORINSCRICAO_MUNICIPAL: TStringField;
    SQL_C_FORNECEDORENDERECO: TStringField;
    SQL_C_FORNECEDORNUMERO: TStringField;
    SQL_C_FORNECEDORBAIRRO: TStringField;
    SQL_C_FORNECEDORMUNICIPIO: TStringField;
    SQL_C_FORNECEDORCODIGO_MUNICIPIO: TIntegerField;
    SQL_C_FORNECEDORCOMPLEMENTO: TStringField;
    SQL_C_FORNECEDORESTADO: TStringField;
    SQL_C_FORNECEDORPAIS: TStringField;
    SQL_C_FORNECEDORCODIGO_PAIS: TIntegerField;
    SQL_C_FORNECEDORCEP: TStringField;
    SQL_C_FORNECEDORCONSUMIDOR_FINAL: TStringField;
    SQL_C_FORNECEDORRAMO_ATIVIDADE: TStringField;
    SQL_C_FORNECEDORTELEFONE: TStringField;
    SQL_C_FORNECEDORTELEFONE_1: TStringField;
    SQL_C_FORNECEDORCELULAR: TStringField;
    SQL_C_FORNECEDORCONTATO: TStringField;
    SQL_C_FORNECEDORCELULAR_1: TStringField;
    SQL_C_FORNECEDORCONTATO_1: TStringField;
    SQL_C_FORNECEDOREMAIL: TStringField;
    SQL_C_FORNECEDOREMAIL_1: TStringField;
    SQL_C_FORNECEDORSKYPE: TStringField;
    SQL_C_FORNECEDORBANCO: TStringField;
    SQL_C_FORNECEDORBANCO_AGENCIA: TStringField;
    SQL_C_FORNECEDORBANCO_CONTA: TStringField;
    edtconsulta: TMaskEdit;
    chk_codigo: TcxCheckBox;
    chk_razao: TcxCheckBox;
    chk_fantasia: TcxCheckBox;
    chk_cpfcnpj: TcxCheckBox;
    procedure DBGrid1KeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
    procedure chk_codigoClick(Sender: TObject);
    procedure chk_razaoClick(Sender: TObject);
    procedure chk_fantasiaClick(Sender: TObject);
    procedure chk_cpfcnpjClick(Sender: TObject);
    procedure DBGrid1DrawColumnCell(Sender: TObject; const Rect: TRect; DataCol: Integer; Column: TColumn;
      State: TGridDrawState);
    procedure consultarfornecedor(Key: string);
    procedure edtconsultaKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
    procedure DBGrid1DblClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Frm_Consulta_Fornecedor: TFrm_Consulta_Fornecedor;

implementation

{$R *.dfm}

uses u_funcoes;

procedure TFrm_Consulta_Fornecedor.chk_codigoClick(Sender: TObject);
begin
  u_funcoes.AlteraChecks(chk_codigo, [chk_razao, chk_fantasia, chk_cpfcnpj]);
end;

procedure TFrm_Consulta_Fornecedor.chk_cpfcnpjClick(Sender: TObject);
begin
  u_funcoes.AlteraChecks(chk_cpfcnpj, [chk_razao, chk_fantasia, chk_codigo]);
end;

procedure TFrm_Consulta_Fornecedor.chk_fantasiaClick(Sender: TObject);
begin
  u_funcoes.AlteraChecks(chk_fantasia, [chk_razao, chk_codigo, chk_cpfcnpj]);
end;

procedure TFrm_Consulta_Fornecedor.chk_razaoClick(Sender: TObject);
begin
  u_funcoes.AlteraChecks(chk_razao, [chk_codigo, chk_fantasia, chk_cpfcnpj]);
end;

procedure TFrm_Consulta_Fornecedor.consultarfornecedor(Key: string);
var
  strQuery: string;
begin
  strQuery := 'SELECT * FROM FORNECEDOR';
  Key := UpperCase(Key);
  if chk_codigo.Checked then
    strQuery := strQuery + ' WHERE CODIGO =' + edtconsulta.Text + Key;
  if chk_razao.Checked then
    strQuery := strQuery + ' WHERE RAZAO_SOCIAL LIKE ' + QuotedStr(edtconsulta.Text + Key + '%');
  if chk_fantasia.Checked then
    strQuery := strQuery + ' WHERE NOME_FANTASIA LIKE ' + QuotedStr(edtconsulta.Text + Key + '%');
  if chk_cpfcnpj.Checked then
    strQuery := strQuery + ' WHERE CNPJ_CPF LIKE ' + QuotedStr(edtconsulta.Text + Key + '%');
  with SQL_C_FORNECEDOR do
  begin
    Close;
    sql.Clear;
    sql.Add(strQuery);
    Open;
  end;
end;

procedure TFrm_Consulta_Fornecedor.DBGrid1DblClick(Sender: TObject);
begin
  Close;
end;

procedure TFrm_Consulta_Fornecedor.DBGrid1DrawColumnCell(Sender: TObject; const Rect: TRect; DataCol: Integer;
  Column: TColumn; State: TGridDrawState);
begin
  GridZebrado(DBGrid1, Rect, DataCol, Column, State);
end;

procedure TFrm_Consulta_Fornecedor.DBGrid1KeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
begin
  if Key = vk_Return then
  begin
    Close;
  end;
end;

procedure TFrm_Consulta_Fornecedor.edtconsultaKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
begin
  if not(Key in [VK_BACK, vk_delete, VK_LEFT, VK_RIGHT, VK_UP, VK_down]) then
    consultarfornecedor(StringOfChar(GetCharFromKeyCode(Key), 1));
end;

end.
