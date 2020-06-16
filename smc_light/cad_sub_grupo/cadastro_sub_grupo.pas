//Verificado automaticamente em 16/06/2020 09:27
unit cadastro_sub_grupo;
{
================================================================================
| ITEM|DATA  HR|UNIT                |HISTORICO                                 |
|-----|--------|--------------------|------------------------------------------|
|  172|23/05/20|wander              |Percebi que permite gravar subgrupo sem o |
|     |   02:48|cadastro_sub_grupo  |grupo e fam�lia associados e que no banco |
|     |        |                    |de dados o autoincremento se aplica apenas|
|     |        |                    |ao c�digo sem associar grupo e fam�lia.   |
|     |        |                    |Ou seja, o 1o subgrupo da familia 1 e grup|
|     |        |                    |1 � 1. Mas o 1o subgrupo da familia 1 e   |
|     |        |                    |grupo 2 nao � 1 e sim 2 como abaixo:      |
|     |        |                    |                                          |
|     |        |                    |Se familia e grupo se relacionassem com o |
|     |        |                    |subgrupo, ter�amos a situa��o abaixo:     |
|     |        |                    |-----------------------                   |
|     |        |                    |familia|grupo|subgrupo|  familia, grupo e |
|     |        |                    |   1   |  1  |   1    |  subgrupo sao     |
|     |        |                    |   1   |  2  |   1    |  chaves da tabela |
|     |        |                    |   2   |  1  |   1    |  produtos_subgrupo|
|     |        |                    |-----------------------                   |
|     |        |                    |Observe que o cod do subgrupo se repete   |
|     |        |                    |para familia e/ou grupos diferentes.      |
|     |        |                    |                                          |
|     |        |                    |Entretanto, como fam�lia e grupo n�o se   |
|     |        |                    |relacionam, com subgrupo, temos a seguinte|
|     |        |                    |situa��o real:                            |
|     |        |                    |------------------------                  |
|     |        |                    |familia|grupo|subgrupo|  apenas o subgrupo|
|     |        |                    |   1   |  1  |   1    |  � chave da tabela|
|     |        |                    |   1   |  2  |   2    |  produtos_subgrupo|
|     |        |                    |   2   |  1  |   3    |                   |
|     |        |                    |------------------------                  |
|     |        |                    |Observe que o cod do subgrupo nunca se    |
|     |        |                    |repete mesmo para familia e/ou grupos     |
|     |        |                    |diferentes.                               |
|     |        |                    |                                          |
|     |        |                    |O fato de familia, grupo e subgrupos serem|
|     |        |                    |desassociados torna muito mais flex�vel   |
|     |        |                    |tanto o cadastro que evita repeticoes     |
|     |        |                    |desnecess�rias quanto da codificacao.     |
|     |        |                    |                                          |
|     |        |                    |Supondo que haja 5 familias, com 5 grupos |
|     |        |                    |cada e cada grupo com 5 subgrupos cada,   |
|     |        |                    |seriam necess�rios 155 cadastros se estes |
|     |        |                    |campos se relacionassem. Como n�o se rela-|
|     |        |                    |nam, basta apenas 15 cadastros!!!         |
|     |        |                    |Pois um subgrupo serve a todos os grupos e|
|     |        |                    |fam�lias que se desejar.                  |
|-----|--------|--------------------|------------------------------------------|
|  171|23/05/20|wander              |Tabela FAMILIA apagada do banco de dados e|
|     |   02:25|cadastro_sub_grupo  |substituida p/PRODUTO_FAMILIA j� existente|
|-----|--------|--------------------|------------------------------------------|
|  169|23/05/20|wander              |Passa a retornar o c�digo subgrupo se foi |
|     |   02:01|cadastro_sub_grupo  |selecionado subgrupomarca ou vazio se n�o |
|-----|--------|--------------------|------------------------------------------|
|  168|23/05/20|wander              |Aplicados os bot�es de Controle padr�o    |
|     |   02:01|cadastro_sub_grupo  |                                          |
|-----|--------|--------------------|------------------------------------------|
|  167|23/05/20|wander              |Padronizado tamanho do form               |
|     |   02:01|cadastro_sub_grupo  |Width 501 Heigth 350 e pnControles.Top=273|
================================================================================
}

interface

uses
  Winapi.Windows, System.SysUtils, System.Variants,
  System.Classes,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls, Vcl.DBCtrls,
  Vcl.Grids, Vcl.DBGrids,

  cxDBEdit,
  cxButtons,
  FireDAC.Stan.Param,
  Data.DB,
  FireDAC.Comp.DataSet, FireDAC.Comp.Client,
  Vcl.ExtCtrls,

  v_env, cxGraphics, cxControls, cxLookAndFeels, cxLookAndFeelPainters, cxContainer, cxEdit, dxSkinsCore, dxSkinBlack, dxSkinBlue, dxSkinBlueprint, dxSkinCaramel, dxSkinCoffee, dxSkinDarkRoom,
  dxSkinDarkSide, dxSkinDevExpressDarkStyle, dxSkinDevExpressStyle, dxSkinFoggy, dxSkinGlassOceans, dxSkinHighContrast, dxSkiniMaginary, dxSkinLilian, dxSkinLiquidSky, dxSkinLondonLiquidSky,
  dxSkinMcSkin, dxSkinMetropolis, dxSkinMetropolisDark, dxSkinMoneyTwins, dxSkinOffice2007Black, dxSkinOffice2007Blue, dxSkinOffice2007Green, dxSkinOffice2007Pink, dxSkinOffice2007Silver,
  dxSkinOffice2010Black, dxSkinOffice2010Blue, dxSkinOffice2010Silver, dxSkinOffice2013DarkGray, dxSkinOffice2013LightGray, dxSkinOffice2013White, dxSkinOffice2016Colorful, dxSkinOffice2016Dark,
  dxSkinPumpkin, dxSkinSeven, dxSkinSevenClassic, dxSkinSharp, dxSkinSharpPlus, dxSkinSilver, dxSkinSpringTime, dxSkinStardust, dxSkinSummer2008, dxSkinTheAsphaltWorld, dxSkinsDefaultPainters,
  dxSkinValentine, dxSkinVisualStudio2013Blue, dxSkinVisualStudio2013Dark, dxSkinVisualStudio2013Light, dxSkinVS2010, dxSkinWhiteprint, dxSkinXmas2008Blue, Vcl.Menus, FireDAC.Stan.Intf,
  FireDAC.Stan.Option, FireDAC.Stan.Error, FireDAC.DatS, FireDAC.Phys.Intf, FireDAC.DApt.Intf, FireDAC.Stan.Async, FireDAC.DApt, Vcl.Mask, cxTextEdit, dxGDIPlusClasses;

type
  TFrm_SubGrupo = class(TForm)
    DBGrid1: TDBGrid;
    cxDBTextEdit1: TcxDBTextEdit;
    DBLookupComboBox1: TDBLookupComboBox;
    DBLookupComboBox2: TDBLookupComboBox;
    SQL_LISTA: TFDQuery;
    ds_lista: TDataSource;
    SQL_Sub_Grupo: TFDQuery;
    DS_Sub_Grupo: TDataSource;
    sql_increment: TFDQuery;
    sql_incrementAUTO_INCREMENT: TLargeintField;
    DS_Familia: TDataSource;
    SQL_Familia: TFDQuery;
    SQL_Grupo: TFDQuery;
    DS_Grupo: TDataSource;
    SQL_Sub_GrupoCODIGO: TFDAutoIncField;
    SQL_Sub_GrupoNOME: TStringField;
    SQL_Sub_GrupoFAMILIA: TStringField;
    SQL_Sub_GrupoGRUPO: TStringField;
    SQL_LISTACODIGO: TFDAutoIncField;
    SQL_LISTANOME: TStringField;
    SQL_LISTAFAMILIA: TStringField;
    SQL_LISTAGRUPO: TStringField;
    SQL_Sub_GrupoDATA_CADASTRO: TDateField;
    lbl1: TLabel;
    lblC�digo: TLabel;
    lblDescri��o: TLabel;
    lbl2: TLabel;
    DBEdit1: TDBEdit;
    pnControles: TPanel;
    bControleIncluir: TcxButton;
    bControleAlterar: TcxButton;
    bControleCancelar: TcxButton;
    bControleGravar: TcxButton;
    procedure cxDBTextEdit2KeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
    procedure cxDBTextEdit1KeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
    procedure DBLookupComboBox1KeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
    procedure DBGrid1DblClick(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormShow(Sender: TObject);
    procedure cxButton1Click(Sender: TObject);
    procedure InformarDadosSubGrupo(SUBGRUPO: TDBEdit);
    procedure DBGrid1DrawColumnCell(Sender: TObject; const Rect: TRect; DataCol: Integer; Column: TColumn; State: TGridDrawState);
    procedure FormCreate(Sender: TObject);
    procedure bControleIncluirClick(Sender: TObject);
    procedure bControleCancelarClick(Sender: TObject);
    procedure bControleAlterarClick(Sender: TObject);
    procedure bControleGravarClick(Sender: TObject);
  private
    { Private declarations }
    procedure PreencherDadosInternos;
  public
    { Public declarations }
  end;

var
  Frm_SubGrupo: TFrm_SubGrupo;
  m_subgrupo: TDBEdit;
  Frm_SubGrupo_CODIGO:String; // Retorna o c�digo do Subgrupo qdo consulta
implementation

{$R *.dfm}

uses u_funcoes, liberacao;

procedure TFrm_SubGrupo.bControleAlterarClick(Sender: TObject);
begin
  with SQL_Sub_Grupo do
  begin
    Close;
    ParamByName('pcodigo').Value := SQL_LISTACODIGO.Value;
    Open;
    Edit;
  end;
  //Ajusta bot�es de controle
  pode_Cancelar_Gravar(Frm_SubGrupo);

  SQL_Familia.Active := True;
  SQL_Grupo.Active := True;
end;

procedure TFrm_SubGrupo.bControleCancelarClick(Sender: TObject);
begin
  SQL_Sub_Grupo.Cancel;
  SQL_Sub_Grupo.Close;

  //Ajusta bot�es de controle
  pode_Alterar_Incluir(Frm_SubGrupo);

  SQL_LISTA.Active := False;
  SQL_LISTA.Active := True;
  SQL_Familia.Active := False;
end;

procedure TFrm_SubGrupo.bControleGravarClick(Sender: TObject);
begin
  if u_funcoes.CamposObrigatorios([DBEdit1], ['Descri��o'], [], [], [], []) then
    Exit;

  SQL_Sub_Grupo.Post;
  SQL_Sub_Grupo.Active := False;

  MessageDLG('ATEN��O: Opera��o conclu�da com sucesso', mtInformation, [mbOk], 0);

  //Ajusta bot�es de controle
  pode_Alterar_Incluir(Frm_SubGrupo);

  SQL_LISTA.Active := False;
  SQL_LISTA.Active := True;
  SQL_Familia.Active := False;
  SQL_Grupo.Active := False;
end;

procedure TFrm_SubGrupo.bControleIncluirClick(Sender: TObject);
begin
  SQL_Sub_Grupo.Active := True;
  SQL_Sub_Grupo.Insert;
  SQL_Sub_GrupoDATA_CADASTRO.Value := Date;

  //Ajusta bot�es de controle
  pode_Cancelar_Gravar(Frm_SubGrupo);

  DBEdit1.SetFocus;
  sql_increment.Active := True;
  cxDBTextEdit1.Text := inttostr(sql_incrementAUTO_INCREMENT.Value);
  SQL_Familia.Active := True;
  SQL_Grupo.Active := True;
end;

procedure TFrm_SubGrupo.cxButton1Click(Sender: TObject);
begin
  Close;
end;

procedure TFrm_SubGrupo.cxDBTextEdit1KeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
begin
  if Key = vk_Return then
  begin
    DBEdit1.SetFocus;
  end;
end;

procedure TFrm_SubGrupo.cxDBTextEdit2KeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
begin
  if Key = vk_Return then
  begin
    DBLookupComboBox1.SetFocus;
  end;

end;

procedure TFrm_SubGrupo.DBGrid1DblClick(Sender: TObject);
begin
  //23/05/2020
  //Retorna o c�digo do subgrupo selecionado
  //Se fechar a tela sem selecionar, retorna vazio
  //----------------------------------------------------------------------------
  Frm_SubGrupo_CODIGO := SQL_LISTA.FieldByName('CODIGO').AsString;

  //Ajusta bot�es de controle
  pode_Alterar_Incluir(Frm_SubGrupo);

  //Fecha a tela
  Close;
end;

procedure TFrm_SubGrupo.DBGrid1DrawColumnCell(Sender: TObject; const Rect: TRect; DataCol: Integer; Column: TColumn; State: TGridDrawState);
begin
  GridZebrado(DBGrid1, Rect, DataCol, Column, State);
end;

procedure TFrm_SubGrupo.DBLookupComboBox1KeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
begin
  if Key = vk_Return then
  begin
    DBLookupComboBox2.SetFocus;
  end;
end;

procedure TFrm_SubGrupo.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  Action := cafree;
  self := nil;
end;

procedure TFrm_SubGrupo.FormCreate(Sender: TObject);
begin
  Frm_SubGrupo_CODIGO:='';
end;

procedure TFrm_SubGrupo.FormShow(Sender: TObject);
begin
  SQL_LISTA.Active := True;
end;

procedure TFrm_SubGrupo.InformarDadosSubGrupo(SUBGRUPO: TDBEdit);
begin
  m_subgrupo := SUBGRUPO;
end;

procedure TFrm_SubGrupo.PreencherDadosInternos;
begin
  m_subgrupo.Field.Text := SQL_Sub_GrupoNOME.Value;
  Close;
end;

end.
