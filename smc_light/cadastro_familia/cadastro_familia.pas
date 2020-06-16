//Verificado automaticamente em 16/06/2020 09:26
unit cadastro_familia;
{
================================================================================
| ITEM|DATA  HR|UNIT                |HISTORICO                                 |
|-----|--------|--------------------|------------------------------------------|
|  165|23/05/20|wander              |Padronizado tamanho do form               |
|     |   02:01|cadastro_familia    |Width 501 Heigth 350 e pnControles.Top=273|
|-----|--------|--------------------|------------------------------------------|
|  161|22/05/20|wander              |Aplicados os bot�es de Controle padr�o    |
|     |   09:59|cadastro_familia    |                                          |
|-----|--------|--------------------|------------------------------------------|
|  160|22/05/20|wander              |Deixou de tratar tabela FAMILIA e passou a|
|     |   09:42|cadastro_familia    |tratar a tab PRODUTO_FAMILIA j� existente |
|-----|--------|--------------------|------------------------------------------|
|  158|22/05/20|wander              |Passa a retornar o c�digo da fam�lia se   |
|     |   05:53|cadastro_familia    |selecionada uma marca ou vazio se n�o     |
================================================================================
}
interface

uses
  Winapi.Windows, System.SysUtils, System.Variants,
  System.Classes,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.Grids, Vcl.DBGrids, Vcl.StdCtrls,
  Vcl.DBCtrls,
  cxDBEdit,
  cxButtons,
  FireDAC.Stan.Param,

  Data.DB, FireDAC.Comp.DataSet,
  FireDAC.Comp.Client,

  v_env, cxGraphics, cxControls, cxLookAndFeels, cxLookAndFeelPainters, cxContainer, cxEdit, dxSkinsCore, dxSkinBlack, dxSkinBlue, dxSkinBlueprint, dxSkinCaramel, dxSkinCoffee, dxSkinDarkRoom,
  dxSkinDarkSide, dxSkinDevExpressDarkStyle, dxSkinDevExpressStyle, dxSkinFoggy, dxSkinGlassOceans, dxSkinHighContrast, dxSkiniMaginary, dxSkinLilian, dxSkinLiquidSky, dxSkinLondonLiquidSky,
  dxSkinMcSkin, dxSkinMetropolis, dxSkinMetropolisDark, dxSkinMoneyTwins, dxSkinOffice2007Black, dxSkinOffice2007Blue, dxSkinOffice2007Green, dxSkinOffice2007Pink, dxSkinOffice2007Silver,
  dxSkinOffice2010Black, dxSkinOffice2010Blue, dxSkinOffice2010Silver, dxSkinOffice2013DarkGray, dxSkinOffice2013LightGray, dxSkinOffice2013White, dxSkinOffice2016Colorful, dxSkinOffice2016Dark,
  dxSkinPumpkin, dxSkinSeven, dxSkinSevenClassic, dxSkinSharp, dxSkinSharpPlus, dxSkinSilver, dxSkinSpringTime, dxSkinStardust, dxSkinSummer2008, dxSkinTheAsphaltWorld, dxSkinsDefaultPainters,
  dxSkinValentine, dxSkinVisualStudio2013Blue, dxSkinVisualStudio2013Dark, dxSkinVisualStudio2013Light, dxSkinVS2010, dxSkinWhiteprint, dxSkinXmas2008Blue, Vcl.Menus, FireDAC.Stan.Intf,
  FireDAC.Stan.Option, FireDAC.Stan.Error, FireDAC.DatS, FireDAC.Phys.Intf, FireDAC.DApt.Intf, FireDAC.Stan.Async, FireDAC.DApt, Vcl.Mask, cxTextEdit,
  Vcl.ExtCtrls;

type
  TFrm_Familia = class(TForm)
    C�digo: TLabel;
    Descri��o: TLabel;
    cxDBTextEdit1: TcxDBTextEdit;
    DBGrid1: TDBGrid;
    ds_lista: TDataSource;
    SQL_LISTA: TFDQuery;
    DS_Familia: TDataSource;
    SQL_Familia: TFDQuery;
    sql_increment: TFDQuery;
    sql_incrementAUTO_INCREMENT: TLargeintField;
    SQL_LISTACODIGO: TFDAutoIncField;
    SQL_LISTADATA_CADASTRO: TDateField;
    DBEdit1: TDBEdit;
    pnControles: TPanel;
    bControleIncluir: TcxButton;
    bControleAlterar: TcxButton;
    bControleCancelar: TcxButton;
    bControleGravar: TcxButton;
    SQL_LISTANOME: TStringField;
    SQL_FamiliaCODIGO: TFDAutoIncField;
    SQL_FamiliaNOME: TStringField;
    SQL_FamiliaDATA_CADASTRO: TDateField;
    procedure cxDBTextEdit1KeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
    procedure FormShow(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure DBGrid1DblClick(Sender: TObject);
    procedure InformarDadosFamilia(DESCRICAO_FAMILIA: TDBEdit);
    procedure DBGrid1DrawColumnCell(Sender: TObject; const Rect: TRect; DataCol: Integer; Column: TColumn; State: TGridDrawState);
    procedure FormCreate(Sender: TObject);
    procedure bControleIncluirClick(Sender: TObject);
    procedure bControleGravarClick(Sender: TObject);
    procedure bControleCancelarClick(Sender: TObject);
    procedure bControleAlterarClick(Sender: TObject);
  private
    { Private declarations }
    procedure PreencherDadosInternos;
  public
    { Public declarations }
  end;

var
  Frm_Familia: TFrm_Familia;
  m_descricao: TDBEdit;
  Frm_Familia_CODIGO:String; // Retorna o c�digo da fam�lia qdo consulta
implementation

{$R *.dfm}

uses u_funcoes, liberacao;

procedure TFrm_Familia.bControleAlterarClick(Sender: TObject);
begin
  with SQL_Familia do
  begin
    Close;
    ParamByName('pcodigo').Value := SQL_LISTACODIGO.Value;
    Open;
    Edit;
  end;

  //Ajusta bot�es de controle
  pode_Cancelar_Gravar(Frm_Familia);

  DBEdit1.SetFocus;
  DBEdit1.SelectAll;
end;

procedure TFrm_Familia.bControleCancelarClick(Sender: TObject);
begin
  SQL_Familia.Cancel;
  SQL_Familia.Close;

  //Ajusta bot�es de controle
  pode_Alterar_Incluir(Frm_Familia);

  SQL_LISTA.Active := False;
  SQL_LISTA.Active := True;
end;

procedure TFrm_Familia.bControleGravarClick(Sender: TObject);
begin
  if u_funcoes.CamposObrigatorios([DBEdit1], ['Descri��o'], [], [], [], []) then
    Exit;

  SQL_Familia.Post;
  SQL_Familia.Active := False;
  MessageDLG('ATEN��O: Opera��o conclu�da com sucesso', mtInformation, [mbOk], 0);

  //Ajusta bot�es de controle
  pode_Alterar_Incluir(Frm_Familia);

  //u_funcoes.IniciarCadastro([btnIncluir, BtnCancelar, btnAlterar], False);

  SQL_LISTA.Active := False;
  SQL_LISTA.Active := True;

end;

procedure TFrm_Familia.bControleIncluirClick(Sender: TObject);
begin
  SQL_Familia.Active := True;
  SQL_Familia.Insert;
  SQL_FamiliaDATA_CADASTRO.Value := Date;
  sql_increment.Active := True;
  cxDBTextEdit1.Text := inttostr(sql_incrementAUTO_INCREMENT.Value);

  //Ajusta bot�es de controle
  pode_Cancelar_Gravar(Frm_Familia);

  SQL_LISTA.Active := True;
  DBEdit1.SetFocus;
end;

procedure TFrm_Familia.cxDBTextEdit1KeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
begin
  if Key = vk_Return then

    DBEdit1.SetFocus;
end;

procedure TFrm_Familia.DBGrid1DblClick(Sender: TObject);
begin
  //22/05/2020
  //Retorna o c�digo da fam�lia selecionada
  //Se fechar a tela sem selecionar, retorna vazio
  //----------------------------------------------------------------------------
  Frm_Familia_CODIGO  := SQL_LISTA.FieldByName('CODIGO').AsString;

  //Ajusta bot�es de controle
  pode_Alterar_Incluir(Frm_Familia);

  //Fecha a tela
  Close;
end;

procedure TFrm_Familia.DBGrid1DrawColumnCell(Sender: TObject; const Rect: TRect; DataCol: Integer; Column: TColumn; State: TGridDrawState);
begin
  GridZebrado(DBGrid1, Rect, DataCol, Column, State);
end;

procedure TFrm_Familia.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  Action := cafree;
  Self := nil;
end;

procedure TFrm_Familia.FormCreate(Sender: TObject);
begin
     Frm_Familia_CODIGO:= '';
end;

procedure TFrm_Familia.FormShow(Sender: TObject);
begin
  //Ajusta bot�es de controle
  pode_Alterar_Incluir(Frm_Familia);

  SQL_LISTA.Active := True;
  DBGrid1.SetFocus;
end;

procedure TFrm_Familia.InformarDadosFamilia(DESCRICAO_FAMILIA: TDBEdit);
begin
  m_descricao := DESCRICAO_FAMILIA;
end;

procedure TFrm_Familia.PreencherDadosInternos;
begin
  m_descricao.field.Text := SQL_FamiliaNOME.Value;
  Close;
end;

end.
