{ v 18.10.16 10:09 }
unit cadastro_unidade;
{
========================================================================================================================================
ALT|   DATA |HORA |UNIT                        |Descri��o                                                                              |
---|--------|-----|----------------------------|----------------------------------------------------------------------------------------
348|15/06/20|21:39|cadastro_unidade            |Tratando tabela UNIDADE_UNI ao inv�s de PRODUTO_UNIDADE
========================================================================================================================================

================================================================================
| ITEM|DATA  HR|UNIT                |HISTORICO                                 |
|-----|--------|--------------------|------------------------------------------|
|  187|24/05/20|wander              |Padronizado tamanho do form               |
|     |   14:54|cadastro_unidade    |Width 501 Heigth 350 e pnControles.Top=273|
|-----|--------|--------------------|------------------------------------------|
|  186|24/05/20|wander              |Aplicadas as proced pode_Alterar_Incluir e|
|     |   14:54|cadastro_unidade    |pode_Cancelar_Gravar                      |
|-----|--------|--------------------|------------------------------------------|
|  185|24/05/20|wander              |Aplicados os bot�es de Controle padr�o    |
|     |   14:54|cadastro_unidade    |                                          |
|-----|--------|--------------------|------------------------------------------|
|  184|24/05/20|wander              |Passa a retornar o c�d da unidade se foi  |
|     |   14:54|cadastro_unidade    |selecionada uma unidade ou vazio se n�o   |
================================================================================
}

interface

uses
  Winapi.Windows, System.SysUtils, System.Variants,
  System.Classes,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls, Vcl.Grids, Vcl.DBGrids,
  Vcl.DBCtrls,

  cxDBEdit,
  cxButtons,
  FireDAC.Stan.Param,
  Data.DB,
  FireDAC.Comp.DataSet, FireDAC.Comp.Client,

  v_env, cxGraphics, cxControls, cxLookAndFeels, cxLookAndFeelPainters, cxContainer, cxEdit, dxSkinsCore, dxSkinBlack, dxSkinBlue, dxSkinBlueprint, dxSkinCaramel, dxSkinCoffee, dxSkinDarkRoom,
  dxSkinDarkSide, dxSkinDevExpressDarkStyle, dxSkinDevExpressStyle, dxSkinFoggy, dxSkinGlassOceans, dxSkinHighContrast, dxSkiniMaginary, dxSkinLilian, dxSkinLiquidSky, dxSkinLondonLiquidSky,
  dxSkinMcSkin, dxSkinMetropolis, dxSkinMetropolisDark, dxSkinMoneyTwins, dxSkinOffice2007Black, dxSkinOffice2007Blue, dxSkinOffice2007Green, dxSkinOffice2007Pink, dxSkinOffice2007Silver,
  dxSkinOffice2010Black, dxSkinOffice2010Blue, dxSkinOffice2010Silver, dxSkinOffice2013DarkGray, dxSkinOffice2013LightGray, dxSkinOffice2013White, dxSkinOffice2016Colorful, dxSkinOffice2016Dark,
  dxSkinPumpkin, dxSkinSeven, dxSkinSevenClassic, dxSkinSharp, dxSkinSharpPlus, dxSkinSilver, dxSkinSpringTime, dxSkinStardust, dxSkinSummer2008, dxSkinTheAsphaltWorld, dxSkinsDefaultPainters,
  dxSkinValentine, dxSkinVisualStudio2013Blue, dxSkinVisualStudio2013Dark, dxSkinVisualStudio2013Light, dxSkinVS2010, dxSkinWhiteprint, dxSkinXmas2008Blue, Vcl.Menus, FireDAC.Stan.Intf,
  FireDAC.Stan.Option, FireDAC.Stan.Error, FireDAC.DatS, FireDAC.Phys.Intf, FireDAC.DApt.Intf, FireDAC.Stan.Async, FireDAC.DApt, Vcl.Mask, cxTextEdit,
  Vcl.ExtCtrls;

type
  TFrm_unidade = class(TForm)
    C�digo: TLabel;
    cxDBTextEdit1: TDBEdit;
    Descri��o: TLabel;
    DBGrid1: TDBGrid;
    sql_increment: TFDQuery;
    sql_incrementAUTO_INCREMENT: TLargeintField;
    SQL_Unidade: TFDQuery;
    DS_Unidade: TDataSource;
    SQL_LISTA: TFDQuery;
    ds_lista: TDataSource;
    BtnExcluir: TcxButton;
    Label1: TLabel;
    DBEdit1: TDBEdit;
    DBEdit2: TDBEdit;
    pnControles: TPanel;
    bControleIncluir: TcxButton;
    bControleAlterar: TcxButton;
    bControleCancelar: TcxButton;
    bControleGravar: TcxButton;
    SQL_LISTAUNI_CODIGO: TStringField;
    SQL_LISTAUNI_DESCRICAO: TStringField;
    SQL_LISTAUNI_DECIMAIS: TIntegerField;
    SQL_UnidadeUNI_CODIGO: TStringField;
    SQL_UnidadeUNI_DESCRICAO: TStringField;
    SQL_UnidadeUNI_DECIMAIS: TIntegerField;
    procedure DBGrid1DblClick(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormShow(Sender: TObject);
    procedure cxButton1Click(Sender: TObject);
    procedure InformarDadosUnidade(UNIDADE: TDBEdit);
    procedure BtnExcluirClick(Sender: TObject);
    procedure DBGrid1DrawColumnCell(Sender: TObject; const Rect: TRect; DataCol: Integer; Column: TColumn;
      State: TGridDrawState);
    procedure DBEdit1KeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
    procedure bControleIncluirClick(Sender: TObject);
    procedure bControleGravarClick(Sender: TObject);
    procedure bControleCancelarClick(Sender: TObject);
    procedure bControleAlterarClick(Sender: TObject);
    procedure FormCreate(Sender: TObject);

  private
    { Private declarations }
    procedure PreencherDadosInternos;
  public
    { Public declarations }
  end;

var
  Frm_unidade: TFrm_unidade;
  m_unidade: TDBEdit;
  Frm_Unidade_CODIGO:String; // Retorna o c�digo da Unidade qdo consulta

implementation

{$R *.dfm}

uses u_funcoes, liberacao;

procedure TFrm_unidade.bControleAlterarClick(Sender: TObject);
begin
  with SQL_Unidade do
  begin
    Close;
    ParamByName('pcodigo').Value := SQL_LISTAUNI_CODIGO.Value;
    Open;
    Edit;
  end;

  //Ajusta bot�es de controle
  pode_Cancelar_Gravar(Frm_unidade);

  DBEdit1.SetFocus;
  DBEdit1.SelectAll;
end;

procedure TFrm_unidade.bControleCancelarClick(Sender: TObject);
begin
  SQL_Unidade.Cancel;
  SQL_Unidade.Close;

  //Ajusta bot�es de controle
  pode_Alterar_Incluir(Frm_unidade);

  SQL_LISTA.Active := False;
  SQL_LISTA.Active := True;
end;

procedure TFrm_unidade.bControleGravarClick(Sender: TObject);
begin
  if u_funcoes.CamposObrigatorios([cxDBTextEdit1, DBEdit1, DBEdit2], ['C�digo','Descri��o','Casas Decimais'], [], [], [], [], [], []) then
    Exit;

  SQL_Unidade.Post;
  SQL_Unidade.Active := False;

  MessageDLG('ATEN��O: Opera��o conclu�da com sucesso', mtInformation, [mbOk], 0);

  //Ajusta bot�es de controle
  pode_Alterar_Incluir(Frm_unidade);

  SQL_LISTA.Active := False;
  SQL_LISTA.Active := True;
end;

procedure TFrm_unidade.bControleIncluirClick(Sender: TObject);
begin
  SQL_Unidade.Active := True;
  SQL_Unidade.Insert;

  //Ajusta bot�es de controle
  pode_Cancelar_Gravar(Frm_unidade);

  sql_increment.Active := True;
  cxDBTextEdit1.SetFocus; //.Text := inttostr(sql_incrementAUTO_INCREMENT.Value);
  //DBEdit1.SetFocus;
end;

procedure TFrm_unidade.BtnExcluirClick(Sender: TObject);
begin
  if not  TEnv.Tuser.IsAdmin then
  begin
    if TFrm_liberacao.Execute then
    begin
      with SQL_Unidade do
      begin
        Close;
        ParamByName('pcodigo').Value := SQL_LISTAUNI_CODIGO.Value;
        Open;
        Delete;
      end;
      Application.MessageBox('Cadastro foi exclu�do com sucesso.', 'Excluir', MB_ICONASTERISK + MB_OK);
      SQL_Unidade.Active := False;
      SQL_LISTA.Active := False;
      SQL_LISTA.Active := True;
    end;
  end
  else
  begin
    with SQL_Unidade do
    begin
      Close;
      ParamByName('pcodigo').Value := SQL_LISTAUNI_CODIGO.Value;
      Open;
      Delete;
    end;
    Application.MessageBox('Cadastro foi exclu�do com sucesso.', 'Excluir', MB_ICONASTERISK + MB_OK);
    SQL_Unidade.Active := False;
    SQL_LISTA.Active := False;
    SQL_LISTA.Active := True;
  end;
end;

procedure TFrm_unidade.cxButton1Click(Sender: TObject);
begin
  Close;
end;

procedure TFrm_unidade.DBEdit1KeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
begin
  if (Key = VK_RETURN) or (Key = VK_TAB) then
  begin
    DBEdit2.SetFocus;
  end;
end;

procedure TFrm_unidade.DBGrid1DblClick(Sender: TObject);
begin
  //22/05/2020
  //Retorna o c�digo da marca selecionada
  //Se fechar a tela sem selecionar, retorna vazio
  //----------------------------------------------------------------------------
  Frm_Unidade_CODIGO    := SQL_LISTA.FieldByName('UNI_CODIGO').AsString;

  //Ajusta bot�es de controle
  pode_Alterar_Incluir(Frm_unidade);

  //Fecha a tela
  Close;
end;

procedure TFrm_unidade.DBGrid1DrawColumnCell(Sender: TObject; const Rect: TRect; DataCol: Integer; Column: TColumn;
  State: TGridDrawState);
begin
  GridZebrado(DBGrid1, Rect, DataCol, Column, State);
end;

procedure TFrm_unidade.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  Action := cafree;
  Self := nil;
end;

procedure TFrm_unidade.FormCreate(Sender: TObject);
begin
   Frm_Unidade_CODIGO:= '';
end;

procedure TFrm_unidade.FormShow(Sender: TObject);
begin
  //Ajusta bot�es de controle
  pode_Alterar_Incluir(Frm_unidade);

  SQL_LISTA.Active := True;
end;

procedure TFrm_unidade.InformarDadosUnidade(UNIDADE: TDBEdit);
begin
  m_unidade := UNIDADE;
end;

procedure TFrm_unidade.PreencherDadosInternos;
begin
  m_unidade.Field.Text := SQL_UnidadeUNI_DESCRICAO.Value;
  Close;
end;

end.
