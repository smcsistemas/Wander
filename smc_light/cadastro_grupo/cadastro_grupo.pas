//Verificado automaticamente em 16/06/2020 09:26
unit cadastro_grupo;
{
================================================================================
| ITEM|DATA  HR|UNIT                |HISTORICO                                 |
|-----|--------|--------------------|------------------------------------------|
|  170|23/05/20|wander              |Tabela FAMILIA apagada do banco de dados e|
|     |   02:25|cadastro_grupo      |substituida p/PRODUTO_FAMILIA j� existente|
|-----|--------|--------------------|------------------------------------------|
|  166|23/05/20|wander              |Padronizado tamanho do form               |
|     |   02:01|cadastro_grupo      |Width 501 Heigth 350 e pnControles.Top=273|
|-----|--------|--------------------|------------------------------------------|
|  163|22/05/20|wander              |Passa a retornar o c�digo da grupo se foi |
|     |   17:10|cadastro_grupo      |selecionada uma marca ou vazio se n�o     |
|-----|--------|--------------------|------------------------------------------|
|  162|22/05/20|wander              |Aplicados os bot�es de Controle padr�o    |
|     |   16:54|cadastro_grupo      |                                          |
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
  TFrm_Grupo = class(TForm)
    DBGrid1: TDBGrid;
    Label4: TLabel;
    C�digo: TLabel;
    Descri��o: TLabel;
    cxDBTextEdit1: TcxDBTextEdit;
    DBLookupComboBox1: TDBLookupComboBox;
    sql_increment: TFDQuery;
    sql_incrementAUTO_INCREMENT: TLargeintField;
    SQL_Grupo: TFDQuery;
    DS_Grupo: TDataSource;
    SQL_LISTA: TFDQuery;
    ds_lista: TDataSource;
    SQL_LISTACODIGO: TFDAutoIncField;
    SQL_LISTANOME: TStringField;
    SQL_LISTAFAMILIA: TStringField;
    SQL_LISTADATA_CADASTRO: TDateField;
    SQL_GrupoCODIGO: TFDAutoIncField;
    SQL_GrupoNOME: TStringField;
    SQL_GrupoFAMILIA: TStringField;
    SQL_GrupoDATA_CADASTRO: TDateField;
    DS_Familia: TDataSource;
    SQL_Familia: TFDQuery;
    DBEdit1: TDBEdit;
    BtnExcluir: TcxButton;
    pnControles: TPanel;
    bControleIncluir: TcxButton;
    bControleAlterar: TcxButton;
    bControleCancelar: TcxButton;
    bControleGravar: TcxButton;
    procedure cxDBTextEdit1KeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
    procedure cxDBTextEdit2KeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
    procedure DBGrid1DblClick(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure BtnExcluirClick(Sender: TObject);
    procedure DBGrid1DrawColumnCell(Sender: TObject; const Rect: TRect; DataCol: Integer; Column: TColumn;
      State: TGridDrawState);
    procedure bControleIncluirClick(Sender: TObject);
    procedure bControleGravarClick(Sender: TObject);
    procedure bControleCancelarClick(Sender: TObject);
    procedure bControleAlterarClick(Sender: TObject);
    procedure FormCreate(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Frm_Grupo: TFrm_Grupo;
  Frm_Grupo_CODIGO:String; // Retorna o c�digo do grupo qdo consulta

implementation

{$R *.dfm}

uses u_funcoes, liberacao;

procedure TFrm_Grupo.bControleAlterarClick(Sender: TObject);
begin
  with SQL_Grupo do
  begin
    Close;
    ParamByName('pcodigo').Value := SQL_LISTACODIGO.Value;
    Open;
    Edit;
  end;
  SQL_Familia.Active := True;

  //Ajusta bot�es de controle
  pode_Cancelar_Gravar(Frm_Grupo);

  DBEdit1.SetFocus;
  DBEdit1.SelectAll;
end;

procedure TFrm_Grupo.bControleCancelarClick(Sender: TObject);
begin
  SQL_Grupo.Cancel;
  SQL_Grupo.Close;

  //Ajusta bot�es de controle
  pode_Alterar_Incluir(Frm_Grupo);

  SQL_LISTA.Active := False;
  SQL_LISTA.Active := True;
  SQL_Familia.Active := False;
end;

procedure TFrm_Grupo.bControleGravarClick(Sender: TObject);
begin
  if u_funcoes.CamposObrigatorios([DBEdit1], ['Descri��o'], [], [], [], []) then
    Exit;

  SQL_Grupo.Post;
  SQL_Grupo.Active := False;

  MessageDLG('ATEN��O: Opera��o conclu�da com sucesso', mtInformation, [mbOk], 0);

  //Ajusta bot�es de controle
  pode_Alterar_Incluir(Frm_Grupo);

  SQL_LISTA.Active := False;
  SQL_LISTA.Active := True;
  SQL_Familia.Active := False;

end;

procedure TFrm_Grupo.bControleIncluirClick(Sender: TObject);
begin
  SQL_Grupo.Active := True;
  SQL_Grupo.Insert;
  SQL_GrupoDATA_CADASTRO.Value := Date;

  //Ajusta bot�es de controle
  pode_Cancelar_Gravar(Frm_Grupo);

  DBEdit1.SetFocus;
  sql_increment.Active := True;
  cxDBTextEdit1.Text := inttostr(sql_incrementAUTO_INCREMENT.Value);
  SQL_Familia.Active := True;
  SQL_LISTA.Active := True;
end;

procedure TFrm_Grupo.BtnExcluirClick(Sender: TObject);
begin
  if not  TEnv.Tuser.IsAdmin then
  begin
    if TFrm_liberacao.Execute then
    begin
      with SQL_Grupo do
      begin
        Close;
        ParamByName('pcodigo').Value := SQL_LISTACODIGO.Value;
        Open;
        Delete;
      end;
      Application.MessageBox('Cadastro foi exclu�do com sucesso.', 'Excluir', MB_ICONASTERISK + MB_OK);
      SQL_Grupo.Active := False;
      SQL_LISTA.Active := False;
      SQL_LISTA.Active := True;
    end;
  end
  else
  begin
    with SQL_Grupo do
    begin
      Close;
      ParamByName('pcodigo').Value := SQL_LISTACODIGO.Value;
      Open;
      Delete;
    end;
    Application.MessageBox('Cadastro foi exclu�do com sucesso.', 'Excluir', MB_ICONASTERISK + MB_OK);
    SQL_Grupo.Active := False;
    SQL_LISTA.Active := False;
    SQL_LISTA.Active := True;
  end;
end;

procedure TFrm_Grupo.cxDBTextEdit1KeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
begin
  if Key = vk_Return then
  begin
    DBEdit1.SetFocus;
  end;
end;

procedure TFrm_Grupo.cxDBTextEdit2KeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
begin
  if Key = vk_Return then
  begin
    DBLookupComboBox1.SetFocus;
  end;
end;

procedure TFrm_Grupo.DBGrid1DblClick(Sender: TObject);
begin
  //22/05/2020
  //Retorna o c�digo do grupo selecionado
  //Se fechar a tela sem selecionar, retorna vazio
  //----------------------------------------------------------------------------
  Frm_Grupo_CODIGO := SQL_LISTA.FieldByName('CODIGO').AsString;

  //Ajusta bot�es de controle
  pode_Alterar_Incluir(Frm_Grupo);

  //Fecha a tela
  Close;
end;

procedure TFrm_Grupo.DBGrid1DrawColumnCell(Sender: TObject; const Rect: TRect; DataCol: Integer; Column: TColumn;
  State: TGridDrawState);
begin
  GridZebrado(DBGrid1, Rect, DataCol, Column, State);
end;

procedure TFrm_Grupo.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  Action := cafree;
  Self := nil;
end;

procedure TFrm_Grupo.FormCreate(Sender: TObject);
begin
   Frm_Grupo_CODIGO := '';

end;

procedure TFrm_Grupo.FormShow(Sender: TObject);
begin
  SQL_LISTA.Active := True;
end;

end.
