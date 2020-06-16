//Verificado automaticamente em 16/06/2020 09:26
{ v 08.10.16 12:08 }
unit consulta_colaborador;

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
  dxSkinXmas2008Blue, Vcl.StdCtrls, cxButtons, Vcl.Grids, Vcl.DBGrids,
  FireDAC.Stan.Intf, FireDAC.Stan.Option, FireDAC.Stan.Param,
  FireDAC.Stan.Error, FireDAC.DatS,
  FireDAC.Stan.Async, FireDAC.DApt, Data.DB, FireDAC.Comp.DataSet,
  FireDAC.Comp.Client, Vcl.Mask, Vcl.DBCtrls, FireDAC.Phys.Intf, FireDAC.DApt.Intf;

type
  TFrm_Consulta_Colaborador = class(TForm)
    DBGrid1: TDBGrid;
    ChK_nome: TCheckBox;
    Chk_cpf: TCheckBox;
    cxButton1: TcxButton;
    DS_CCOLABORADOR: TDataSource;
    SQL_CCOLABORADOR: TFDQuery;
    SQL_CCOLABORADORCODIGO_EMPRESA: TIntegerField;
    SQL_CCOLABORADORCODIGO: TFDAutoIncField;
    SQL_CCOLABORADORNOME: TStringField;
    SQL_CCOLABORADORTIPO_COLABORADOR: TStringField;
    SQL_CCOLABORADORDATA_CADASTRO: TDateField;
    SQL_CCOLABORADORDATA_NASCIMENTO: TDateField;
    SQL_CCOLABORADORSEXO: TStringField;
    SQL_CCOLABORADORESTADO_CIVIL: TStringField;
    SQL_CCOLABORADORFUNCAO: TStringField;
    SQL_CCOLABORADORNATURALIDADE: TStringField;
    SQL_CCOLABORADORNACIONALIDADE: TStringField;
    SQL_CCOLABORADORNOME_PAI: TStringField;
    SQL_CCOLABORADORNOME_MAE: TStringField;
    SQL_CCOLABORADORTELEFONE_PAI: TStringField;
    SQL_CCOLABORADORTELEFONE_MAE: TStringField;
    SQL_CCOLABORADORCPF: TStringField;
    SQL_CCOLABORADORRG: TStringField;
    SQL_CCOLABORADORORGAO_EMISSOR: TStringField;
    SQL_CCOLABORADORDATA_EMISSAO: TDateField;
    SQL_CCOLABORADORTITULO_ELEITOR: TStringField;
    SQL_CCOLABORADORSECAO: TStringField;
    SQL_CCOLABORADORZONA: TStringField;
    SQL_CCOLABORADORPIS: TStringField;
    SQL_CCOLABORADORNUMERO_CNH: TStringField;
    SQL_CCOLABORADORVALIDADE_CNH: TDateField;
    SQL_CCOLABORADORNUMERO_CARTEIRA_TRABALHO: TStringField;
    SQL_CCOLABORADORSERIE_CARTEIRA_TRABALHO: TStringField;
    SQL_CCOLABORADORDATA_ADMISSAO: TDateField;
    SQL_CCOLABORADORDATA_DEMISSAO: TDateField;
    SQL_CCOLABORADORCOMISSAO_VENDA: TSingleField;
    SQL_CCOLABORADORCOMISSAO_ORDEM_SERVICO: TSingleField;
    SQL_CCOLABORADORCOMISSAO_HORA_TECNICA: TSingleField;
    SQL_CCOLABORADORCOMISSAO_GERENTE: TSingleField;
    SQL_CCOLABORADORCODIGO_GERENTE: TIntegerField;
    SQL_CCOLABORADORTELEFONE_1: TStringField;
    SQL_CCOLABORADORTELEFONE_2: TStringField;
    SQL_CCOLABORADORCELULAR_1: TStringField;
    SQL_CCOLABORADORCELULAR_2: TStringField;
    SQL_CCOLABORADOREMAIL_1: TStringField;
    SQL_CCOLABORADOREMAIL_2: TStringField;
    SQL_CCOLABORADOROBS: TStringField;
    SQL_CCOLABORADORSALARIO: TSingleField;
    SQL_CCOLABORADORENDERECO: TStringField;
    SQL_CCOLABORADORNUMERO: TStringField;
    SQL_CCOLABORADORBAIRRO: TStringField;
    SQL_CCOLABORADORCEP: TStringField;
    SQL_CCOLABORADORMUNICIPIO: TStringField;
    SQL_CCOLABORADORESTADO: TStringField;
    SQL_CCOLABORADORPAIS: TStringField;
    SQL_CCOLABORADORCOMPLEMENTO: TStringField;
    SQL_CCOLABORADORCODIGO_MUNICIPIO: TIntegerField;
    SQL_CCOLABORADORLIMITE_CREDITO: TSingleField;
    SQL_CCOLABORADORBANCO: TStringField;
    SQL_CCOLABORADORBANCO_AGENCIA: TStringField;
    SQL_CCOLABORADORBANCO_CONTA: TStringField;
    SQL_CCOLABORADORCELULAR_PAI: TStringField;
    SQL_CCOLABORADORCELULAR_MAE: TStringField;
    SQL_CCOLABORADORTELEFONE_BANCO: TStringField;
    SQL_CCOLABORADORRAMAL_BANCO: TStringField;
    SQL_CCOLABORADORBANCO_2: TStringField;
    SQL_CCOLABORADORBANCO_AGENCIA_2: TStringField;
    SQL_CCOLABORADORBANCO_CONTA_2: TStringField;
    SQL_CCOLABORADORTELEFONE_BANCO_2: TStringField;
    SQL_CCOLABORADORRAMAL_BANCO_2: TStringField;
    SQL_CCOLABORADORGERENTE_BANCO: TStringField;
    SQL_CCOLABORADORGERENTE_BANCO_1: TStringField;
    SQL_CCOLABORADORCOMISSAO_VENDA_EXTERNA: TSingleField;
    SQL_CCOLABORADORCOMISSAO_FAIXA_1: TSingleField;
    SQL_CCOLABORADORCOMISSAO_FAIXA_2: TSingleField;
    SQL_CCOLABORADORCOMISSAI_FAIXA_3: TSingleField;
    SQL_CCOLABORADORPORCENTAGEM_FAIXA_1: TSingleField;
    SQL_CCOLABORADORPORCENTAGEM_FAIXA_2: TSingleField;
    SQL_CCOLABORADORPORCENTAGEM_FAIXA_3: TSingleField;
    SQL_CCOLABORADORCODIGO_BANCO_1: TIntegerField;
    SQL_CCOLABORADORCODIGO_BANCO_2: TIntegerField;
    Edit1: TMaskEdit;
    SQL_CCOLABORADORSTATUS_CADASTRAL: TStringField;
    procedure FormShow(Sender: TObject);
    procedure Edit1KeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
    procedure cxButton1Click(Sender: TObject);
    procedure ChK_nomeClick(Sender: TObject);
    procedure Chk_cpfClick(Sender: TObject);
    procedure DBGrid1KeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
    procedure InformarDadosColaborador(CodSocio: TDBEdit; Nome, CPF, RG, Telefone, Celular: TEdit);
    { Procedure para preencher valores dos atributos internos }

    procedure DBGrid1CellClick(Column: TColumn);
    procedure DBGrid1DrawColumnCell(Sender: TObject; const Rect: TRect; DataCol: Integer; Column: TColumn;
      State: TGridDrawState);

  private
    { Private declarations }
    procedure PreencherDadosColaborador();
    { Procedure para preencher os dados do colaborador no cadastro }

  public
    { Public declarations }
  end;

var
  Frm_Consulta_Colaborador: TFrm_Consulta_Colaborador;
  m_CodSocio: TDBEdit;
  m_Nome, m_CPF, m_RG, m_Telefone, m_Celular: TEdit;

implementation

{$R *.dfm}

uses u_funcoes;

procedure TFrm_Consulta_Colaborador.Chk_cpfClick(Sender: TObject);
begin
  if Chk_cpf.Checked = true then
  begin
    ChK_nome.Checked := false;
    Edit1.Clear;
    Edit1.SetFocus;
    Edit1.EditMask := '000\.000\.000-00;1;_';
  end;

end;

procedure TFrm_Consulta_Colaborador.ChK_nomeClick(Sender: TObject);
begin
  if ChK_nome.Checked = true then
  begin
    Chk_cpf.Checked := true;
    Edit1.Clear;
    Edit1.SetFocus;
    Edit1.EditMask := '';
  end;

end;

procedure TFrm_Consulta_Colaborador.cxButton1Click(Sender: TObject);

begin

  PreencherDadosColaborador();

end;

procedure TFrm_Consulta_Colaborador.DBGrid1CellClick(Column: TColumn);
begin
  PreencherDadosColaborador();

end;

procedure TFrm_Consulta_Colaborador.DBGrid1DrawColumnCell(Sender: TObject; const Rect: TRect; DataCol: Integer;
  Column: TColumn; State: TGridDrawState);
begin
  GridZebrado(DBGrid1, Rect, DataCol, Column, State);
end;

procedure TFrm_Consulta_Colaborador.DBGrid1KeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
begin
  if Key = VK_RETURN then
  begin
    PreencherDadosColaborador();
  end;
end;

procedure TFrm_Consulta_Colaborador.Edit1KeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
var
  CAMPO, PARAMETRO, texto: string;
begin
  if Key = VK_RETURN then
  begin
    if ChK_nome.Checked = true then
    // consulta por NOME
    begin
      CAMPO := 'NOME';
      PARAMETRO := 'pnome';
      texto := quotedstr('%' + Edit1.text + '%');
    end;
    if Chk_cpf.Checked = true then // consulta por CÓDIGO
    begin
      CAMPO := 'CPF';
      PARAMETRO := 'pcpf';
      texto := quotedstr(Edit1.text + '%');
    end;
    u_funcoes.ConsultarCadastros(SQL_CCOLABORADOR, Edit1.text, 'COLABORADOR', CAMPO, PARAMETRO, '', '', '', 0, 0);
    // Chama a função com os dados passados;
  end;
  DBGrid1.SetFocus;
end;

procedure TFrm_Consulta_Colaborador.FormShow(Sender: TObject);
begin
  Edit1.SetFocus;
  u_funcoes.ListarTodosCadastros(SQL_CCOLABORADOR, 'COLABORADOR');
end;

procedure TFrm_Consulta_Colaborador.InformarDadosColaborador(CodSocio: TDBEdit;
  Nome, CPF, RG, Telefone, Celular: TEdit);
begin
  m_CodSocio := CodSocio;
  m_Nome := Nome;
  m_CPF := CPF;
  m_RG := RG;
  m_Telefone := Telefone;
  m_Celular := Celular;
end;

procedure TFrm_Consulta_Colaborador.PreencherDadosColaborador;
begin
  m_CodSocio.Field.text := SQL_CCOLABORADORCODIGO.text;
  m_Nome.text := SQL_CCOLABORADORNOME.text;
  m_CPF.text := SQL_CCOLABORADORCPF.text;
  m_RG.text := SQL_CCOLABORADORRG.text;
  m_Telefone.text := SQL_CCOLABORADORTELEFONE_1.text;
  m_Celular.text := SQL_CCOLABORADORCELULAR_1.text;
  close;
end;

end.
