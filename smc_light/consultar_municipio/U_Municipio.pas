//Verificado automaticamente em 16/06/2020 09:27
{ v 06.10.2016 10:15 }
unit U_Municipio;
{
================================================================================
|ITEM |DATA |DESENVOLVEDOR/Unit  |HISTORICO                                    |
|-----|-----|--------------------|---------------------------------------------|
|   85|16/04|WANDER              |N�o estava encontrando a cidade de Itajub�/MG|
|     |06:35|U_Municipio         |Alterado script de consulta da SQL_MUNICIPIO |
|     |     |                    |para tratar corretamente as tabelas          |
|     |     |                    |endereco_estado e endereco_municipio para    |
|     |     |                    |localizar qualquer cidade cadastrada         |
================================================================================
}
interface

uses
  Winapi.Windows, System.Variants,
  System.Classes,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs,
  Vcl.StdCtrls, cxButtons, Vcl.Grids, Vcl.DBGrids,
  FireDAC.Stan.Param,
  Data.DB,
  FireDAC.Comp.Client, Vcl.DBCtrls, cxGraphics, cxLookAndFeels, cxLookAndFeelPainters, Vcl.Menus, dxSkinsCore, dxSkinBlack, dxSkinBlue, dxSkinBlueprint, dxSkinCaramel, dxSkinCoffee, dxSkinDarkRoom,
  dxSkinDarkSide, dxSkinDevExpressDarkStyle, dxSkinDevExpressStyle, dxSkinFoggy, dxSkinGlassOceans, dxSkinHighContrast, dxSkiniMaginary, dxSkinLilian, dxSkinLiquidSky, dxSkinLondonLiquidSky,
  dxSkinMcSkin, dxSkinMetropolis, dxSkinMetropolisDark, dxSkinMoneyTwins, dxSkinOffice2007Black, dxSkinOffice2007Blue, dxSkinOffice2007Green, dxSkinOffice2007Pink, dxSkinOffice2007Silver,
  dxSkinOffice2010Black, dxSkinOffice2010Blue, dxSkinOffice2010Silver, dxSkinOffice2013DarkGray, dxSkinOffice2013LightGray, dxSkinOffice2013White, dxSkinOffice2016Colorful, dxSkinOffice2016Dark,
  dxSkinPumpkin, dxSkinSeven, dxSkinSevenClassic, dxSkinSharp, dxSkinSharpPlus, dxSkinSilver, dxSkinSpringTime, dxSkinStardust, dxSkinSummer2008, dxSkinTheAsphaltWorld, dxSkinsDefaultPainters,
  dxSkinValentine, dxSkinVisualStudio2013Blue, dxSkinVisualStudio2013Dark, dxSkinVisualStudio2013Light, dxSkinVS2010, dxSkinWhiteprint, dxSkinXmas2008Blue, FireDAC.Stan.Intf, FireDAC.Stan.Option,
  FireDAC.Stan.Error, FireDAC.DatS, FireDAC.Phys.Intf, FireDAC.DApt.Intf, FireDAC.Stan.Async, FireDAC.DApt, FireDAC.Comp.DataSet;

type
  TFrm_Municipio = class(TForm)
    Edit1: TEdit;
    DBGrid1: TDBGrid;
    DS_Municipio: TDataSource;
    SQL_Municipio: TFDQuery;
    SQL_MunicipioNOME: TStringField;
    SQL_MunicipioESTADO: TIntegerField;
    SQL_MunicipioUF: TStringField;
    SQL_MunicipioIBGE: TIntegerField;
    SQL_MunicipioCODIGO: TFDAutoIncField;
    procedure FormShow(Sender: TObject);
    procedure Edit1KeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
    procedure DBGrid1KeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
    procedure DBGrid1CellClick(Column: TColumn);
    procedure InformarDadosMunicipio(Municipio, CodMunicipio, UF, Pais, CodPais: TdbEdit);
    procedure InformarDadosMunicipio1(Municipio, CodMunicipio, UF, CodUF, Pais, CodPais: TdbEdit);
    procedure InformarDadosMunicipio3(Municipio, UF: TdbEdit);
    procedure DBGrid1DrawColumnCell(Sender: TObject; const Rect: TRect; DataCol: Integer; Column: TColumn; State: TGridDrawState);
    procedure Edit1Change(Sender: TObject);
    procedure DBGrid1DblClick(Sender: TObject);
    { Procedure para preencher valores dos atributos internos }

  private
    { Private declarations }
    procedure PreencherDadosMunicipio();
    { Procedure para preencher os dados do municipio no cadastro }
    procedure Pesquisar;
    { Procedure para pesquisar cidades por parte do nome}
  public
    { Public declarations }
  end;

var
  Frm_Municipio: TFrm_Municipio;
  m_Municipio, m_CodMunicipio, m_UF, m_CodUF, m_Pais, m_CodPais: TdbEdit;

implementation

{$R *.dfm}

uses u_funcoes;

procedure TFrm_Municipio.Pesquisar;
begin
  with SQL_Municipio do
  begin
    close;
    Params[0].Value := '%' + Edit1.Text + '%';
    open;
    //DBGrid1.SetFocus;
    //if SQL_Municipio.RecordCount = 0 then
    //begin
    //  ShowMessage('Registro n�o Encontrado');
    //end;
  end;
end;

procedure TFrm_Municipio.DBGrid1CellClick(Column: TColumn);
begin
  PreencherDadosMunicipio();
end;

procedure TFrm_Municipio.DBGrid1DblClick(Sender: TObject);
begin
     Close;
end;

procedure TFrm_Municipio.DBGrid1DrawColumnCell(Sender: TObject; const Rect: TRect; DataCol: Integer; Column: TColumn;
  State: TGridDrawState);
begin
  GridZebrado(DBGrid1, Rect, DataCol, Column, State);
end;

procedure TFrm_Municipio.DBGrid1KeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
begin
  if Key = VK_RETURN then
  begin
    PreencherDadosMunicipio();
  end;
end;

procedure TFrm_Municipio.Edit1Change(Sender: TObject);
begin
   Pesquisar;
end;

procedure TFrm_Municipio.Edit1KeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
begin
  if Key = VK_RETURN then
     DBGrid1.SetFocus;
end;

procedure TFrm_Municipio.FormShow(Sender: TObject);
begin
  // Preparar a query que consultar� munic�pios
  SQL_Municipio.Close;
  SQL_Municipio.Sql.Clear;
  SQL_Municipio.Sql.Add('Select endereco_municipio.CODIGO,                           ');
  SQL_Municipio.Sql.Add('       endereco_municipio.IBGE,                             ');
  SQL_Municipio.Sql.Add('       endereco_municipio.NOME,                             ');
  SQL_Municipio.Sql.Add('       endereco_municipio.ESTADO,                           ');
  SQL_Municipio.Sql.Add('       endereco_estado.UF                                   ');
  SQL_Municipio.Sql.Add('  from endereco_municipio                                   ');
  SQL_Municipio.Sql.Add(' INNER JOIN                                                 ');
  SQL_Municipio.Sql.Add('       endereco_estado                                      ');
  SQL_Municipio.Sql.Add('       ON (endereco_municipio.ESTADO = endereco_estado.IBGE)');
  SQL_Municipio.Sql.Add(' WHERE endereco_municipio.NOME LIKE :pnome                  ');

  if Edit1.text <> '' then
     Pesquisar;
  // Posiciona no campo de pesquisa
  Edit1.SetFocus;
  //DBGrid1.SetFocus;
end;

procedure TFrm_Municipio.InformarDadosMunicipio(Municipio, CodMunicipio, UF, Pais, CodPais: TdbEdit);
begin
  if Municipio <> nil then
    m_Municipio := Municipio;
  // municipio
  if CodMunicipio <> nil then
    m_CodMunicipio := CodMunicipio;
  // cod ibge
  if UF <> nil then
    m_UF := UF;
  // estado
  if Pais <> nil then
    m_Pais := Pais;
  // pais
  if CodPais <> nil then
    m_CodPais := CodPais;
  // cod_pais
end;



procedure TFrm_Municipio.InformarDadosMunicipio3(Municipio, UF: TdbEdit);
begin
  if Municipio <> nil then
    m_Municipio := Municipio;

  // municipio
  if UF <> nil then
    m_UF := UF;
end;


procedure TFrm_Municipio.InformarDadosMunicipio1(Municipio, CodMunicipio, UF, CodUF, Pais, CodPais: TdbEdit);
begin
  if Municipio <> nil then
    m_Municipio := Municipio;

  // municipio
  if CodMunicipio <> nil then
    m_CodMunicipio := CodMunicipio;

  // cod ibge
  if UF <> nil then
    m_UF := UF;

  // estado
  if CodUF <> nil then
    m_CodUF := CodUF;

  // cod_UF
  if Pais <> nil then
    m_Pais := Pais;

  // pais
  if CodPais <> nil then
    m_CodPais := CodPais;

  // cod_pais
end;

procedure TFrm_Municipio.PreencherDadosMunicipio();
begin
  // Objeto tem que ter sido criado...
  if m_Municipio = nil then
     exit;

  if m_Municipio.Field <> nil then
      m_Municipio.Field.Text := Frm_Municipio.SQL_MunicipioNOME.Text
  else
      m_Municipio.Text       := Frm_Municipio.SQL_MunicipioNOME.Text;

  // municipio
  if m_CodMunicipio <> nil then
     if m_CodMunicipio.Field <> nil then
        m_CodMunicipio.Field.Text := Frm_Municipio.SQL_MunicipioIBGE.Text
     else
        m_CodMunicipio.Text       := Frm_Municipio.SQL_MunicipioIBGE.Text;

  // cod ibge
  if m_UF.Field <> nil then
     m_UF.Field.Text := Frm_Municipio.SQL_MunicipioUF.Text
  else
     m_UF.Text       := Frm_Municipio.SQL_MunicipioUF.Text;

  // codigo UF
  //  if m_CodUF <> nil then
  //    m_CodUF.Field.Text := Frm_Municipio.SQL_MunicipioIBGE_1.Text;

  // estado
  //  if m_Pais <> nil then
  //    m_Pais.Field.Text := Frm_Municipio.SQL_MunicipioNOME_2.Text;

  // pais
  //  if m_CodPais <> nil then
  //    m_CodPais.Field.Text := Frm_Municipio.SQL_MunicipioPAIS.Text;
  // cod_pais
  close;
end;

end.
