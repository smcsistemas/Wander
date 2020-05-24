unit cad_marca;
{
================================================================================
| ITEM|DATA  HR|UNIT                |HISTORICO                                 |
|-----|--------|--------------------|------------------------------------------|
|  164|23/05/20|wander              |Padronizado tamanho do form               |
|     |   02:01|cad_marca           |Width 501 Heigth 350 e pnControles.Top=273|
|-----|--------|--------------------|------------------------------------------|
|  155|22/05/20|wander              |Aplicadas as proced pode_Alterar_Incluir e|
|     |   01:40|cad_marca           |pode_Cancelar_Gravar                      |
|-----|--------|--------------------|------------------------------------------|
|  153|22/05/20|wander              |Aplicados os botões de Controle padrão    |
|     |   01:21|cad_marca           |                                          |
|-----|--------|--------------------|------------------------------------------|
|  152|22/05/20|wander              |Passa a retornar o código da marca se foi |
|     |   01:02|cad_marca           |selecionada uma marca ou vazio se não     |
================================================================================
}
interface

uses
  Winapi.Windows, System.SysUtils, System.Variants,
  System.Classes,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs,

  Vcl.StdCtrls, cxButtons, Vcl.Grids,
  Vcl.DBGrids, cxDBEdit,

  FireDAC.Stan.Param,
  Data.DB,
  FireDAC.Comp.DataSet, FireDAC.Comp.Client,
  v_env, cxGraphics, cxControls, cxLookAndFeels, cxLookAndFeelPainters, cxContainer, cxEdit, dxSkinsCore, dxSkinBlack, dxSkinBlue, dxSkinBlueprint, dxSkinCaramel, dxSkinCoffee, dxSkinDarkRoom,
  dxSkinDarkSide, dxSkinDevExpressDarkStyle, dxSkinDevExpressStyle, dxSkinFoggy, dxSkinGlassOceans, dxSkinHighContrast, dxSkiniMaginary, dxSkinLilian, dxSkinLiquidSky, dxSkinLondonLiquidSky,
  dxSkinMcSkin, dxSkinMetropolis, dxSkinMetropolisDark, dxSkinMoneyTwins, dxSkinOffice2007Black, dxSkinOffice2007Blue, dxSkinOffice2007Green, dxSkinOffice2007Pink, dxSkinOffice2007Silver,
  dxSkinOffice2010Black, dxSkinOffice2010Blue, dxSkinOffice2010Silver, dxSkinOffice2013DarkGray, dxSkinOffice2013LightGray, dxSkinOffice2013White, dxSkinOffice2016Colorful, dxSkinOffice2016Dark,
  dxSkinPumpkin, dxSkinSeven, dxSkinSevenClassic, dxSkinSharp, dxSkinSharpPlus, dxSkinSilver, dxSkinSpringTime, dxSkinStardust, dxSkinSummer2008, dxSkinTheAsphaltWorld, dxSkinsDefaultPainters,
  dxSkinValentine, dxSkinVisualStudio2013Blue, dxSkinVisualStudio2013Dark, dxSkinVisualStudio2013Light, dxSkinVS2010, dxSkinWhiteprint, dxSkinXmas2008Blue, Vcl.Menus, FireDAC.Stan.Intf,
  FireDAC.Stan.Option, FireDAC.Stan.Error, FireDAC.DatS, FireDAC.Phys.Intf, FireDAC.DApt.Intf, FireDAC.Stan.Async, FireDAC.DApt, cxTextEdit,
  Vcl.ExtCtrls;

type
  TFrm_Marca = class(TForm)
    Código: TLabel;
    Descrição: TLabel;
    cxDBTextEdit1: TcxDBTextEdit;
    cxDBTextEdit2: TcxDBTextEdit;
    DBGrid1: TDBGrid;
    DS_Marca: TDataSource;
    SQL_Marca: TFDQuery;
    sql_increment: TFDQuery;
    sql_incrementAUTO_INCREMENT: TLargeintField;
    SQL_MarcaCODIGO: TFDAutoIncField;
    SQL_MarcaNOME: TStringField;
    SQL_MarcaDATA_CADASTRO: TDateField;
    SQL_LISTA: TFDQuery;
    SQL_LISTACODIGO: TFDAutoIncField;
    SQL_LISTANOME: TStringField;
    SQL_LISTADATA_CADASTRO: TDateField;
    ds_lista: TDataSource;
    pnControles: TPanel;
    bControleIncluir: TcxButton;
    bControleAlterar: TcxButton;
    bControleCancelar: TcxButton;
    bControleGravar: TcxButton;
    procedure cxDBTextEdit1KeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
    procedure DBGrid1DblClick(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure cxButton1Click(Sender: TObject);
    procedure DBGrid1DrawColumnCell(Sender: TObject; const Rect: TRect; DataCol: Integer; Column: TColumn;
      State: TGridDrawState);
    procedure FormCreate(Sender: TObject);
    procedure bControleIncluirClick(Sender: TObject);
    procedure bControleAlterarClick(Sender: TObject);
    procedure bControleGravarClick(Sender: TObject);
    procedure bControleCancelarClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Frm_Marca: TFrm_Marca;
  Frm_Marca_CODIGO:String; // Retorna o código da marca qdo consulta
implementation

{$R *.dfm}

uses u_funcoes, liberacao;

procedure TFrm_Marca.bControleAlterarClick(Sender: TObject);
begin
  with SQL_Marca do
  begin
    Close;
    ParamByName('pcodigo').Value := SQL_LISTACODIGO.Value;
    Open;
    Edit;
  end;

  //Ajusta botões de controle
  pode_Cancelar_Gravar(Frm_Marca);

  cxDBTextEdit2.SetFocus;
  cxDBTextEdit2.SelectAll;  with SQL_Marca do
  begin
    Close;
    ParamByName('pcodigo').Value := SQL_LISTACODIGO.Value;
    Open;
    Edit;
  end;

  cxDBTextEdit2.SetFocus;
  cxDBTextEdit2.SelectAll;
end;

procedure TFrm_Marca.bControleCancelarClick(Sender: TObject);
begin
  SQL_Marca.Cancel;
  SQL_Marca.Close;

  //Ajusta botões de controle
  pode_Alterar_Incluir(Frm_Marca);

  SQL_LISTA.Active := False;
  SQL_LISTA.Active := True;
end;

procedure TFrm_Marca.bControleGravarClick(Sender: TObject);
begin
  SQL_Marca.Post;
  SQL_Marca.Active := False;

  MessageDLG('ATENÇÃO: Operação concluída com sucesso', mtInformation, [mbOk], 0);

  //Ajusta botões de controle
  pode_Alterar_Incluir(Frm_Marca);

  //u_funcoes.IniciarCadastro([BtnIncluir, BtnCancelar, BtnAlterar], False);

  SQL_LISTA.Active := False;
  SQL_LISTA.Active := True;
end;

procedure TFrm_Marca.bControleIncluirClick(Sender: TObject);
begin
  SQL_Marca.Active := True;
  SQL_Marca.Insert;
  SQL_MarcaDATA_CADASTRO.Value := Date;

  //Ajusta botões de controle
  pode_Cancelar_Gravar(Frm_Marca);

  cxDBTextEdit2.SetFocus;
  sql_increment.Active := True;
  cxDBTextEdit1.Text := inttostr(sql_incrementAUTO_INCREMENT.Value);
  SQL_LISTA.Active := True;
end;

procedure TFrm_Marca.cxButton1Click(Sender: TObject);
begin
  Close;
end;

procedure TFrm_Marca.cxDBTextEdit1KeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
begin
  if Key = vk_Return then
  begin
    cxDBTextEdit2.SetFocus;
  end;
end;

procedure TFrm_Marca.DBGrid1DblClick(Sender: TObject);
begin
  //22/05/2020
  //Retorna o código da marca selecionada
  //Se fechar a tela sem selecionar, retorna vazio
  //----------------------------------------------------------------------------
  Frm_Marca_CODIGO    := SQL_LISTA.FieldByName('CODIGO').AsString;

  //Ajusta botões de controle
  pode_Alterar_Incluir(Frm_Marca);

  //Fecha a tela
  Close;
end;

procedure TFrm_Marca.DBGrid1DrawColumnCell(Sender: TObject; const Rect: TRect; DataCol: Integer; Column: TColumn;
  State: TGridDrawState);
begin
  GridZebrado(DBGrid1, Rect, DataCol, Column, State);
end;

procedure TFrm_Marca.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  Action := cafree;
  Self := nil;
end;

procedure TFrm_Marca.FormCreate(Sender: TObject);
begin
   Frm_Marca_CODIGO := '';
end;

procedure TFrm_Marca.FormShow(Sender: TObject);
begin
  //Ajusta botões de controle
  pode_Alterar_Incluir(Frm_Marca);

  SQL_LISTA.Active := True;
  cxDBTextEdit2.SetFocus;
end;

end.


