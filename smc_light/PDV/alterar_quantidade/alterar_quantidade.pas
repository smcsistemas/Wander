unit alterar_quantidade;

interface

uses
  Winapi.Windows, System.SysUtils, System.Variants, System.Classes,
  Vcl.Controls, Vcl.Forms,










  Vcl.StdCtrls,
  cxButtons, u_funcoes, FireDAC.Stan.Param,
  Data.DB,
  FireDAC.Comp.Client,
  cxDBLookupComboBox,
  FireDAC.Comp.DataSet, c_Globals, h_functions, cxGraphics, cxLookAndFeels, cxLookAndFeelPainters, Vcl.Menus, dxSkinsCore, dxSkinBlack, dxSkinBlue, dxSkinBlueprint, dxSkinCaramel, dxSkinCoffee,
  dxSkinDarkRoom, dxSkinDarkSide, dxSkinDevExpressDarkStyle, dxSkinDevExpressStyle, dxSkinFoggy, dxSkinGlassOceans, dxSkinHighContrast, dxSkiniMaginary, dxSkinLilian, dxSkinLiquidSky,
  dxSkinLondonLiquidSky, dxSkinMcSkin, dxSkinMetropolis, dxSkinMetropolisDark, dxSkinMoneyTwins, dxSkinOffice2007Black, dxSkinOffice2007Blue, dxSkinOffice2007Green, dxSkinOffice2007Pink,
  dxSkinOffice2007Silver, dxSkinOffice2010Black, dxSkinOffice2010Blue, dxSkinOffice2010Silver, dxSkinOffice2013DarkGray, dxSkinOffice2013LightGray, dxSkinOffice2013White, dxSkinOffice2016Colorful,
  dxSkinOffice2016Dark, dxSkinPumpkin, dxSkinSeven, dxSkinSevenClassic, dxSkinSharp, dxSkinSharpPlus, dxSkinSilver, dxSkinSpringTime, dxSkinStardust, dxSkinSummer2008, dxSkinTheAsphaltWorld,
  dxSkinsDefaultPainters, dxSkinValentine, dxSkinVisualStudio2013Blue, dxSkinVisualStudio2013Dark, dxSkinVisualStudio2013Light, dxSkinVS2010, dxSkinWhiteprint, dxSkinXmas2008Blue, cxControls,
  cxContainer, cxEdit, FireDAC.Stan.Intf, FireDAC.Stan.Option, FireDAC.Stan.Error, FireDAC.DatS, FireDAC.Phys.Intf, FireDAC.DApt.Intf, FireDAC.Stan.Async, FireDAC.DApt, cxTextEdit, cxMaskEdit,
  cxDropDownEdit, cxLookupEdit, cxDBLookupEdit;

type
  Tfrm_alterar_quantidade = class(TForm)
    btn_cancelar: TcxButton;
    btn_alterar: TcxButton;
    edt_quantidade: TEdit;
    lb_unidade: TLabel;
    SQL_ITENS: TFDQuery;
    SQL_ITENSDESCRICAO: TStringField;
    SQL_ITENSCODIGO_ITEM_VENDA: TIntegerField;
    DS_ITENS: TDataSource;
    cb_itens: TcxLookupComboBox;
    Label1: TLabel;
    Label2: TLabel;
    SQL_ITENSCODIGO_PRODUTO: TIntegerField;
    procedure FormKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
    procedure edt_itemKeyPress(Sender: TObject; var Key: Char);
    procedure FormShow(Sender: TObject);
    procedure btn_cancelarClick(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure btn_alterarClick(Sender: TObject);
    procedure edt_quantidadeKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
    procedure edt_quantidadeKeyPress(Sender: TObject; var Key: Char);
    procedure cb_itensPropertiesChange(Sender: TObject);
    procedure cb_itensKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
  private
    { Private declarations }
  public
    { Public declarations }
    cod_venda: string;
  end;

var
  frm_alterar_quantidade: Tfrm_alterar_quantidade;

implementation

{$R *.dfm}

uses vw_pdv;

procedure Tfrm_alterar_quantidade.btn_alterarClick(Sender: TObject);
var
  qtde: string;
  qry: TFDQuery;
  PrecoItem: extended;
begin
  qtde := TFunctions.replace(edt_quantidade.Text, ',', '.');

  if not Frm_PDV.FORM_PDV.estoque_zerado(SQL_ITENSCODIGO_PRODUTO.asString, cod_venda, edt_quantidade, true) then
  begin

    if Frm_PDV.FORM_PDV.aplica_preco_promo then
      PrecoItem := simplequery('SELECT PRECO FROM VENDA_ITEM WHERE CODIGO_ITEM_VENDA = :p1 and CODIGO_VENDA = :p2',
        [inttostr(cb_itens.EditValue), cod_venda]).Fields[0].asextended
    else
    begin
      if simplequery('select produto_preco_faixa from parametros_sistema').Fields[0].asString = m_true then
      begin
        qry := simplequery
          ('select preco from produto_preco_faixa where :p1 >= qtde and id_produto = :p2 and tipo="VAREJO" order by preco desc limit 1',
          [qtde, SQL_ITENSCODIGO_PRODUTO.value]);
        if qry <> nil then
          PrecoItem := qry.Fields[0].asextended
        else
          PrecoItem := simplequery('SELECT PRECO FROM VENDA_ITEM WHERE CODIGO_ITEM_VENDA = :p1 and CODIGO_VENDA = :p2',
            [inttostr(cb_itens.EditValue), cod_venda]).Fields[0].asextended;
      end
      else if simplequery('select produto_preco_faixa from parametros_sistema').Fields[0].asString = m_false then
        PrecoItem := simplequery('SELECT PRECO FROM VENDA_ITEM WHERE CODIGO_ITEM_VENDA = :p1 and CODIGO_VENDA = :p2',
          [inttostr(cb_itens.EditValue), cod_venda]).Fields[0].asextended;
    end;

    ExecQuery(
      'UPDATE VENDA_ITEM SET QUANTIDADE = :p1 ,PRECO_TOTAL=(( :p2 * :p3 ) + ACRESCIMO - DESCONTO), PRECO = :p3 WHERE CODIGO_ITEM_VENDA = :p4 AND CODIGO_VENDA = :p5',
      [qtde, qtde, PrecoItem, inttostr(cb_itens.EditValue), cod_venda]);

    Frm_PDV.FORM_PDV.consultaritem; { Lista os itens no Grid }
    Frm_PDV.FORM_PDV.totalnfce(Frm_PDV.FORM_PDV.lbl_subtotal);

    close;
  end;
end;

procedure Tfrm_alterar_quantidade.btn_cancelarClick(Sender: TObject);
begin
  close;
end;

procedure Tfrm_alterar_quantidade.cb_itensKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
begin
  if Key = vk_return then
    if cb_itens.EditValue <> null then
      edt_quantidade.SetFocus;
end;

procedure Tfrm_alterar_quantidade.cb_itensPropertiesChange(Sender: TObject);
var
  qry: TFDQuery;
begin
  if cb_itens.EditValue <> null then
  begin
    qry := simplequery('select * from venda_item where codigo_venda = ' + cod_venda + ' and codigo_item_venda =' + inttostr(cb_itens.EditValue));
    if qry <> nil then
    begin
      lb_unidade.Caption := qry.FieldByName('UNIDADE').asString;
      if lb_unidade.Caption = 'UN' then
        edt_quantidade.Text := FormatFloat('0', qry.FieldByName('QUANTIDADE').asextended)
      else if lb_unidade.Caption = 'KG' then
        edt_quantidade.Text := FormatFloat('0.000', qry.FieldByName('QUANTIDADE').asextended);
    end;
  end;
end;

procedure Tfrm_alterar_quantidade.edt_itemKeyPress(Sender: TObject; var Key: Char);
begin
  inherited;
  Key := ApenasNumeros(Key);
end;

procedure Tfrm_alterar_quantidade.edt_quantidadeKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
begin
  if Key = vk_return then
    btn_alterar.Click;
end;

procedure Tfrm_alterar_quantidade.edt_quantidadeKeyPress(Sender: TObject; var Key: Char);
begin
  if not(Key in [Char(vk_return), Char(VK_ESCAPE), Char(VK_TAB)]) then
    if lb_unidade.Caption = 'KG' then
    begin
      inherited;
      Key := FormatarQuantidadeKG(edt_quantidade, Key);
    end;
end;

procedure Tfrm_alterar_quantidade.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  Action := cafree;
  Self := nil;
  Frm_PDV.FORM_PDV.Edt_codBarras.SetFocus;
end;

procedure Tfrm_alterar_quantidade.FormKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
begin
  TeclasAtalho(Key, [VK_F1, VK_F2, VK_ESCAPE], [btn_alterar, btn_cancelar, btn_cancelar]);
end;

procedure Tfrm_alterar_quantidade.FormShow(Sender: TObject);
begin
  with SQL_ITENS do
  begin
    close;
    parambyname('pvenda').asString := cod_venda;
    open;
  end;
  cb_itens.ItemIndex := 0;

end;

end.
