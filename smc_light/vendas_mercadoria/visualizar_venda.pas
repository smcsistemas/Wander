//Verificado automaticamente em 16/06/2020 09:28
unit visualizar_venda;
{
========================================================================================================================================
ALT|   DATA |HORA |UNIT                        |Descrição                                                                              |
---|--------|-----|----------------------------|----------------------------------------------------------------------------------------
334|15/06/20|14:28|visualizar_venda            |Passa a tratar PRODUTO_PROD(PROD_EAN)    ao invés de PRODUTO(CODIGO_BARRAS)
========================================================================================================================================
}
interface

uses
  Winapi.Windows, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms,

  FireDAC.Stan.Param,

  Data.DB, FireDAC.Comp.DataSet,
  FireDAC.Comp.Client, Vcl.Grids, Vcl.DBGrids, Vcl.StdCtrls, cxButtons,
  Vcl.DBCtrls, Vcl.ExtCtrls,

  vw_consulta_generica, c_Globals, h_functions, cxGraphics, cxLookAndFeels, cxLookAndFeelPainters, Vcl.Menus, dxSkinsCore, dxSkinBlack, dxSkinBlue, dxSkinBlueprint, dxSkinCaramel, dxSkinCoffee,
  dxSkinDarkRoom, dxSkinDarkSide, dxSkinDevExpressDarkStyle, dxSkinDevExpressStyle, dxSkinFoggy, dxSkinGlassOceans, dxSkinHighContrast, dxSkiniMaginary, dxSkinLilian, dxSkinLiquidSky,
  dxSkinLondonLiquidSky, dxSkinMcSkin, dxSkinMetropolis, dxSkinMetropolisDark, dxSkinMoneyTwins, dxSkinOffice2007Black, dxSkinOffice2007Blue, dxSkinOffice2007Green, dxSkinOffice2007Pink,
  dxSkinOffice2007Silver, dxSkinOffice2010Black, dxSkinOffice2010Blue, dxSkinOffice2010Silver, dxSkinOffice2013DarkGray, dxSkinOffice2013LightGray, dxSkinOffice2013White, dxSkinOffice2016Colorful,
  dxSkinOffice2016Dark, dxSkinPumpkin, dxSkinSeven, dxSkinSevenClassic, dxSkinSharp, dxSkinSharpPlus, dxSkinSilver, dxSkinSpringTime, dxSkinStardust, dxSkinSummer2008, dxSkinTheAsphaltWorld,
  dxSkinsDefaultPainters, dxSkinValentine, dxSkinVisualStudio2013Blue, dxSkinVisualStudio2013Dark, dxSkinVisualStudio2013Light, dxSkinVS2010, dxSkinWhiteprint, dxSkinXmas2008Blue, FireDAC.Stan.Intf,
  FireDAC.Stan.Option, FireDAC.Stan.Error, FireDAC.DatS, FireDAC.Phys.Intf, FireDAC.DApt.Intf, FireDAC.Stan.Async, FireDAC.DApt, Vcl.Mask, dxGDIPlusClasses;

type
  Tfrm_visualizar_venda = class(TForm)
    GroupBox1: TGroupBox;
    img1: TImage;
    GroupBox2: TGroupBox;
    Label1: TLabel;
    Label2: TLabel;
    Label16: TLabel;
    Label20: TLabel;
    Label21: TLabel;
    DBEdit1: TDBEdit;
    DBEdit2: TDBEdit;
    DBEdit4: TDBEdit;
    DBEdit18: TDBEdit;
    DBEdit19: TDBEdit;
    GroupBox4: TGroupBox;
    Label12: TLabel;
    Label13: TLabel;
    Label14: TLabel;
    cnpjcpf: TDBEdit;
    DBEdit12: TDBEdit;
    DBEdit13: TDBEdit;
    btnalterar: TcxButton;
    BtnCancelar: TcxButton;
    GridPagamentos: TDBGrid;
    GridItens: TDBGrid;
    SQL_VENDA: TFDQuery;
    DS_VENDA: TDataSource;
    SQL_VENDA_ITENS: TFDQuery;
    SQL_VENDA_ITENSCODIGO_VENDA: TIntegerField;
    SQL_VENDA_ITENSCODIGO_ITEM_VENDA: TIntegerField;
    SQL_VENDA_ITENSCODIGO_PRODUTO: TIntegerField;
    SQL_VENDA_ITENSPROD_DESCRICAO: TStringField;
    SQL_VENDA_ITENSNCM: TStringField;
    SQL_VENDA_ITENSCEST: TStringField;
    SQL_VENDA_ITENSCFOP: TStringField;
    SQL_VENDA_ITENSCSOSN: TStringField;
    SQL_VENDA_ITENSICMS_CST: TStringField;
    SQL_VENDA_ITENSALIQ_ICMS: TBCDField;
    SQL_VENDA_ITENSPIS_CST: TStringField;
    SQL_VENDA_ITENSCOFINS_CST: TStringField;
    SQL_VENDA_ITENSPROD_UNIDADE: TStringField;
    SQL_VENDA_ITENSQUANTIDADE: TSingleField;
    SQL_VENDA_ITENSPRECO: TBCDField;
    SQL_VENDA_ITENSACRESCIMO: TBCDField;
    SQL_VENDA_ITENSDESCONTO: TBCDField;
    SQL_VENDA_ITENSPRECO_TOTAL: TBCDField;
    DS_VENDA_ITENS: TDataSource;
    SQL_VENDA_PAGAMENTOS: TFDQuery;
    SQL_VENDA_PAGAMENTOSTIPO_PAGAMENTO: TStringField;
    SQL_VENDA_PAGAMENTOSTOTAL_PAGO: TBCDField;
    SQL_VENDA_PAGAMENTOSVALOR_DEBITADO: TBCDField;
    DS_VENDA_PAGAMENTOS: TDataSource;
    GroupBox5: TGroupBox;
    Label5: TLabel;
    Label18: TLabel;
    Label19: TLabel;
    Label11: TLabel;
    Label23: TLabel;
    Label24: TLabel;
    DBEdit11: TDBEdit;
    DBEdit15: TDBEdit;
    DBEdit16: TDBEdit;
    DBEdit10: TDBEdit;
    DBEdit17: TDBEdit;
    DBEdit21: TDBEdit;
    Label3: TLabel;
    DBEdit3: TDBEdit;
    Label4: TLabel;
    DBEdit5: TDBEdit;
    Label6: TLabel;
    DBEdit6: TDBEdit;
    Label7: TLabel;
    DBEdit7: TDBEdit;
    btngravar: TcxButton;
    Label15: TLabel;
    Label8: TLabel;
    DBEdit8: TDBEdit;
    Label10: TLabel;
    dbstatus: TDBEdit;
    Label9: TLabel;
    DBEdit9: TDBEdit;
    SQL_VENDACODIGO_VENDA: TFDAutoIncField;
    SQL_VENDACAIXA: TStringField;
    SQL_VENDADATA: TDateField;
    SQL_VENDAHORA: TTimeField;
    SQL_VENDACOD_NFCE: TStringField;
    SQL_VENDASTATUS: TStringField;
    SQL_VENDANOME_CLIENTE: TStringField;
    SQL_VENDACPF_CLIENTE: TStringField;
    SQL_VENDAIE_CLIENTE: TStringField;
    SQL_VENDARUA_CLIENTE: TStringField;
    SQL_VENDABAIRRO_CLIENTE: TStringField;
    SQL_VENDANUMERO_CLIENTE: TStringField;
    SQL_VENDAVALOR_VENDA: TBCDField;
    SQL_VENDADESCONTO: TBCDField;
    SQL_VENDAACRESCIMO: TBCDField;
    SQL_VENDATOTAL_VENDA: TBCDField;
    SQL_VENDAVALOR_PAGO: TBCDField;
    SQL_VENDATROCO: TBCDField;
    SQL_VENDAOPERADOR: TStringField;
    SQL_VENDAVENDEDOR: TStringField;
    SQL_VENDATELEFONE_CLIENTE: TStringField;
    btn_loc_ven: TcxButton;
    SQL_VENDACOD_VENDEDOR: TIntegerField;
    DBEDIT14: TEdit;
    Label17: TLabel;
    DBEdit20: TDBEdit;
    SQL_VENDACOMANDA: TIntegerField;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure GridItensDrawColumnCell(Sender: TObject; const Rect: TRect; DataCol: Integer; Column: TColumn; State: TGridDrawState);
    procedure GridPagamentosDrawColumnCell(Sender: TObject; const Rect: TRect; DataCol: Integer; Column: TColumn; State: TGridDrawState);
    procedure FormShow(Sender: TObject);
    procedure btnalterarClick(Sender: TObject);
    procedure BtnCancelarClick(Sender: TObject);
    procedure btngravarClick(Sender: TObject);
    procedure GridItensDblClick(Sender: TObject);
    procedure FormKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
    procedure btn_loc_venClick(Sender: TObject);
    procedure layout_def;
  private
    { Private declarations }
    cod_venda: Integer;
  public
    { Public declarations }
    constructor Create(AOwner: TComponent; iVenda: Integer); overload;
  end;

var
  frm_visualizar_venda: Tfrm_visualizar_venda;

implementation

{$R *.dfm}

uses u_funcoes, cadastro_produto;

procedure Tfrm_visualizar_venda.btnalterarClick(Sender: TObject);
begin
  if btnalterar.visible and btnalterar.enabled then
  begin
    SQL_VENDA.EDIT;
    btnalterar.Hide;
    BtnCancelar.enabled := true;
    if SQL_VENDASTATUS.AsString = 'ABERTA' then
    begin
      AlterarEnabled([GroupBox2, GroupBox5, GroupBox4, btn_loc_ven], true);
      CamposEditaveis([TEdit(DBEdit12), TEdit(cnpjcpf), TEdit(DBEdit13), TEdit(DBEdit3), TEdit(DBEdit6), TEdit(DBEdit5), TEdit(DBEdit7),
        TEdit(DBEDIT14)], true);
      DBEdit12.SetFocus;
    end
    else if SQL_VENDASTATUS.AsString = 'FECHADA' then
    begin
      AlterarEnabled([GroupBox2, btn_loc_ven], true);
      CamposEditaveis([DBEDIT14], true);
    end;
  end;
end;

procedure Tfrm_visualizar_venda.BtnCancelarClick(Sender: TObject);
begin
  if BtnCancelar.enabled then
  begin
    SQL_VENDA.cancel;
    layout_def;
    CamposEditaveis([TEdit(DBEdit12), TEdit(cnpjcpf), TEdit(DBEdit13), TEdit(DBEdit3), TEdit(DBEdit6), TEdit(DBEdit5), TEdit(DBEdit7),
      TEdit(DBEDIT14)], false);
  end;
end;

procedure Tfrm_visualizar_venda.btngravarClick(Sender: TObject);
begin
  if not btnalterar.visible then
  begin
    SQL_VENDA.post;
    SQL_VENDA.CLOSE;
    SQL_VENDA.OPEN;
    layout_def;
    application.MessageBox('Alterações concluídas com sucesso!', 'Alterar Venda', mb_ok + mb_iconinformation);
  end;
end;

procedure Tfrm_visualizar_venda.btn_loc_venClick(Sender: TObject);
var
  cod_vendedor: string;
begin
  Frm_Consulta_Generica := TFrm_Consulta_Generica.Create(nil, cgVendedor, DBEDIT14);
  Frm_Consulta_Generica.showmodal;
  Frm_Consulta_Generica.Free;
  if DBEDIT14.text <> emptystr then
  begin
    cod_vendedor := Copy(DBEDIT14.text, 0, pos(';', DBEDIT14.text));
    cod_vendedor := TFunctions.replace(cod_vendedor, ';');
    DBEDIT14.text := TFunctions.replace(DBEDIT14.text, cod_vendedor + ';');
    SQL_VENDACOD_VENDEDOR.asInteger := strtoint(cod_vendedor);
    DBEDIT14.text := SIMPLEQUERY('SELECT NOME FROM COLABORADOR WHERE CODIGO = ' + cod_vendedor).Fields[0].AsString;
  end;
end;

constructor Tfrm_visualizar_venda.Create(AOwner: TComponent; iVenda: Integer);
begin
  inherited Create(AOwner);
  cod_venda := iVenda;
end;

procedure Tfrm_visualizar_venda.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  Action := cafree;
  self := nil;
end;

procedure Tfrm_visualizar_venda.FormKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
begin
  TeclasAtalho(Key, [vk_f1, vk_f2, vk_f3], [btnalterar, btngravar, BtnCancelar]);
  if Key = vk_escape then
    CLOSE;
end;

procedure Tfrm_visualizar_venda.FormShow(Sender: TObject);
const
  CANCELADA = 'CANCELADA';
begin
  dbstatus.Color := ColorByStatus(SQL_VENDASTATUS.Value, ['ABERTA', 'FECHADA', 'CANCELADA'], [clWebDarkOrange, clWebDarkgreen, clMaroon]);
  layout_def;
  btnalterar.enabled := (SQL_VENDASTATUS.Value <> CANCELADA);
end;

procedure Tfrm_visualizar_venda.GridItensDblClick(Sender: TObject);
begin
  if not btnalterar.visible then
  begin
    if not VerificaAberta(Frm_produto) then
      Frm_produto := TFrm_Produto.Create(nil);
    with Frm_produto do
    begin
      Frm_produto.consultarultimo := false;
      //with SQL_PRODUTO do
      //begin
      //  CLOSE;
      //  parambyname('pcodigo').Value := SQL_VENDA_ITENSCODIGO_PRODUTO.Value;
      //  OPEN;
      //end;
      visible := false;
      show;
      btnalterar.Click;
    end;
  end;
end;

procedure Tfrm_visualizar_venda.GridItensDrawColumnCell(Sender: TObject; const Rect: TRect; DataCol: Integer; Column: TColumn; State: TGridDrawState);
begin
  GridZebrado(GridItens, Rect, DataCol, Column, State);
end;

procedure Tfrm_visualizar_venda.GridPagamentosDrawColumnCell(Sender: TObject; const Rect: TRect; DataCol: Integer; Column: TColumn;
  State: TGridDrawState);
begin
  GridZebrado(GridPagamentos, Rect, DataCol, Column, State);
end;

procedure Tfrm_visualizar_venda.layout_def;
begin
  with SQL_VENDA do
  begin
    CLOSE;
    parambyname('pcodigo').Value := cod_venda;
    OPEN;
  end;
  with SQL_VENDA_ITENS do
  begin
    CLOSE;
    parambyname('pcodigo').Value := cod_venda;
    OPEN;
  end;
  with SQL_VENDA_PAGAMENTOS do
  begin
    CLOSE;
    parambyname('pcodigo').Value := cod_venda;
    OPEN;
  end;
  btnalterar.show;
  BtnCancelar.enabled := false;
  AlterarEnabled([GroupBox2, GroupBox5, GroupBox4, btn_loc_ven], false);
  CamposEditaveis([TEdit(DBEdit12), TEdit(cnpjcpf), TEdit(DBEdit13), TEdit(DBEdit3), TEdit(DBEdit6), TEdit(DBEdit5), TEdit(DBEdit7),
    DBEDIT14], false);
  DBEDIT14.text := SQL_VENDAVENDEDOR.AsString;

end;

end.
Trocou UNIDADE_MEDIDA por PROD_UNIDADE : automaticamente em 16/06/2020 11:04
