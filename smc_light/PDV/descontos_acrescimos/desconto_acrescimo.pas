unit desconto_acrescimo;
{
========================================================================================================================================
ALT|   DATA |HORA |UNIT                        |Descrição                                                                              |
---|--------|-----|----------------------------|----------------------------------------------------------------------------------------
308|15/06/20|10:14|desconto_acrescimo          |Passa a tratar PRODUTO_PROD(PROD_CODIGO) ao invés de PRODUTO(CODIGO)
========================================================================================================================================
}

interface

uses
  Winapi.Windows, System.SysUtils, System.Variants, System.Classes,
  Vcl.Controls, Vcl.Forms,
  cxDropDownEdit,
  Vcl.StdCtrls, cxButtons, u_funcoes,
  FireDAC.Stan.Param,
  Data.DB, FireDAC.Comp.DataSet,
  FireDAC.Comp.Client, cxDBLookupComboBox, math, c_Globals, cxGraphics, cxControls, cxLookAndFeels, cxLookAndFeelPainters, cxContainer, cxEdit, dxSkinsCore, dxSkinBlack, dxSkinBlue, dxSkinBlueprint,
  dxSkinCaramel, dxSkinCoffee, dxSkinDarkRoom, dxSkinDarkSide, dxSkinDevExpressDarkStyle, dxSkinDevExpressStyle, dxSkinFoggy, dxSkinGlassOceans, dxSkinHighContrast, dxSkiniMaginary, dxSkinLilian,
  dxSkinLiquidSky, dxSkinLondonLiquidSky, dxSkinMcSkin, dxSkinMetropolis, dxSkinMetropolisDark, dxSkinMoneyTwins, dxSkinOffice2007Black, dxSkinOffice2007Blue, dxSkinOffice2007Green,
  dxSkinOffice2007Pink, dxSkinOffice2007Silver, dxSkinOffice2010Black, dxSkinOffice2010Blue, dxSkinOffice2010Silver, dxSkinOffice2013DarkGray, dxSkinOffice2013LightGray, dxSkinOffice2013White,
  dxSkinOffice2016Colorful, dxSkinOffice2016Dark, dxSkinPumpkin, dxSkinSeven, dxSkinSevenClassic, dxSkinSharp, dxSkinSharpPlus, dxSkinSilver, dxSkinSpringTime, dxSkinStardust, dxSkinSummer2008,
  dxSkinTheAsphaltWorld, dxSkinsDefaultPainters, dxSkinValentine, dxSkinVisualStudio2013Blue, dxSkinVisualStudio2013Dark, dxSkinVisualStudio2013Light, dxSkinVS2010, dxSkinWhiteprint,
  dxSkinXmas2008Blue, Vcl.Menus, FireDAC.Stan.Intf, FireDAC.Stan.Option, FireDAC.Stan.Error, FireDAC.DatS, FireDAC.Phys.Intf, FireDAC.DApt.Intf, FireDAC.Stan.Async, FireDAC.DApt, cxLookupEdit,
  cxDBLookupEdit, cxTextEdit, cxMaskEdit;

type
  Tfrm_desc_acres = class(TForm)
    cb_tipo_mov: TcxComboBox;
    Label1: TLabel;
    Label3: TLabel;
    edt_valor: TEdit;
    btn_concluir: TcxButton;
    btn_cancelar: TcxButton;
    SQL_ITENS: TFDQuery;
    SQL_ITENSCODIGO: TFDAutoIncField;
    SQL_ITENSDESCRICAO: TStringField;
    SQL_ITENSCODIGO_ITEM_VENDA: TIntegerField;
    DS_ITENS: TDataSource;
    cb_itens: TcxLookupComboBox;
    Label2: TLabel;
    SQL_ITENSCODIGO_PRODUTO: TIntegerField;
    SQL_ITENSPRECO: TBCDField;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
    procedure btn_cancelarClick(Sender: TObject);
    procedure cb_tipo_movKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
    procedure edt_valorKeyPress(Sender: TObject; var Key: Char);
    procedure FormShow(Sender: TObject);
    procedure cb_itensKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
    procedure edt_valorKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
    procedure btn_concluirClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
    cod_venda: string;
  end;

var
  frm_desc_acres: Tfrm_desc_acres;

implementation

{$R *.dfm}

uses vw_pdv;

procedure Tfrm_desc_acres.btn_cancelarClick(Sender: TObject);
begin
  self.Close;
end;

procedure Tfrm_desc_acres.btn_concluirClick(Sender: TObject);
var
  preco_prod, desc_anterior, acres_anterior, valor_desc_asc, qtde: extended;
  QRY: TFDQuery;
  function verificar_desc_max: boolean;
  var
    qry_produto: TFDQuery;
    valor_desc_max: extended;
  begin
    result := false;
    if Simplequery('select desconto_max_produto from parametros_venda').Fields[0].asString = m_true then
    begin
      qry_produto := Simplequery('select desconto_m_varejo from produto_prod where prod_codigo = ' + SQL_ITENSCODIGO_PRODUTO.asString);
      if qry_produto <> nil then
      begin
        valor_desc_max := (qry_produto.Fields[0].asExtended / 100) * SQL_ITENSPRECO.asExtended;
        valor_desc_max := formatarmoeda(valor_desc_max, vardouble);
        if comparevalue(valor_desc_max, valor_desc_asc) = -1 then
        begin
          wnalerta('Desconto Máximo', 'Desconto de ' + formatarmoeda(valor_desc_asc) + ' não pode ser aplicado!' + slinebreak + 'Produto "' +
            SQL_ITENSDESCRICAO.asString + '" permite desconto até ' + formatarmoeda(valor_desc_max) + ' (' +
            floattostr(formatarmoeda(qry_produto.Fields[0].asExtended, vardouble)) + ' %).');
          edt_valor.selectall;
          edt_valor.setfocus;
          result := true;
        end;
      end;
    end
    else
      result := false;
  end;

begin
  QRY := Simplequery('SELECT CODIGO, PRECO, DESCONTO, ACRESCIMO, PRECO_TOTAL, QUANTIDADE FROM VENDA_ITEM WHERE CODIGO_ITEM_VENDA = "' +
    inttostr(cb_itens.EditValue) + '" AND CODIGO_VENDA= "' + cod_venda + '"');
  preco_prod := QRY.Fields[1].asExtended;
  qtde := QRY.Fields[5].asExtended;
  preco_prod := preco_prod * qtde;
  desc_anterior := QRY.Fields[2].asExtended;
  acres_anterior := QRY.Fields[3].asExtended;
  case cb_tipo_mov.ItemIndex of
    0: { DESCONTO R$ }
      begin
        valor_desc_asc := strtofloat(edt_valor.Text) + desc_anterior;
        preco_prod := preco_prod + acres_anterior;
        if comparevalue(valor_desc_asc, preco_prod) = 1 then
          valor_desc_asc := preco_prod;
        preco_prod := preco_prod - valor_desc_asc;
        if not verificar_desc_max then
        begin
          QRY.Edit;
          QRY.Fields[2].asExtended := valor_desc_asc;
          if (comparevalue(preco_prod, 0) = 0) or (comparevalue(preco_prod, 0) = -1) then
            QRY.Fields[4].asExtended := 0
          else
            QRY.Fields[4].asExtended := preco_prod;
          QRY.Post;
        end
        else
          exit;
      end;
    1: { DESCONTO % }
      begin
        valor_desc_asc := (strtofloat(edt_valor.Text) * preco_prod / 100) + desc_anterior;
        preco_prod := preco_prod + acres_anterior;
        if comparevalue(valor_desc_asc, preco_prod) = 1 then
          valor_desc_asc := preco_prod;
        preco_prod := preco_prod - valor_desc_asc;
        if not verificar_desc_max then
        begin
          QRY.Edit;
          QRY.Fields[2].asExtended := valor_desc_asc;
          if (comparevalue(preco_prod, 0) = 0) or (comparevalue(preco_prod, 0) = -1) then
            QRY.Fields[4].asExtended := 0
          else
            QRY.Fields[4].asExtended := preco_prod;
          QRY.Post;
        end
        else
          exit;
      end;
    2: { ACRÉSCIMO R$ }
      begin
        valor_desc_asc := strtofloat(edt_valor.Text) + acres_anterior;
        preco_prod := preco_prod - desc_anterior;
        preco_prod := preco_prod + valor_desc_asc;
        QRY.Edit;
        QRY.Fields[3].asExtended := valor_desc_asc;
        if (comparevalue(preco_prod, 0) = 0) or (comparevalue(preco_prod, 0) = -1) then
          QRY.Fields[4].asExtended := 0
        else
          QRY.Fields[4].asExtended := preco_prod;
        QRY.Post;
      end;
    3: { ACRÉSCIMO % }
      begin
        valor_desc_asc := (strtofloat(edt_valor.Text) * preco_prod / 100) + acres_anterior;
        preco_prod := preco_prod - desc_anterior;
        preco_prod := preco_prod + valor_desc_asc;
        QRY.Edit;
        QRY.Fields[3].asExtended := valor_desc_asc;
        if (comparevalue(preco_prod, 0) = 0) or (comparevalue(preco_prod, 0) = -1) then
          QRY.Fields[4].asExtended := 0
        else
          QRY.Fields[4].asExtended := preco_prod;
        QRY.Post;
      end;
  end;
  Frm_PDV.FORM_PDV.consultaritem;
  Frm_PDV.FORM_PDV.totalnfce(Frm_PDV.FORM_PDV.lbl_subtotal);
  Close;
end;

procedure Tfrm_desc_acres.cb_itensKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
begin
  if Key = vk_return then
    if cb_itens.EditValue <> Null then
      cb_tipo_mov.setfocus;
end;

procedure Tfrm_desc_acres.cb_tipo_movKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
begin
  if Key = vk_return then
    if cb_tipo_mov.Text <> emptystr then
      edt_valor.setfocus;
end;

procedure Tfrm_desc_acres.edt_valorKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
begin
  if Key = vk_return then
    if (edt_valor.Text <> emptystr) and (edt_valor.Text <> '0') then
      btn_concluir.Click;
end;

procedure Tfrm_desc_acres.edt_valorKeyPress(Sender: TObject; var Key: Char);
begin
  inherited;
  Key := ApenasNumeros(Key);
end;

procedure Tfrm_desc_acres.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  Action := cafree;
  self := nil;
end;

procedure Tfrm_desc_acres.FormKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
begin
  if Key = vk_escape then
    self.Close;
  teclasatalho(Key, [vk_f1, vk_f2], [btn_concluir, btn_cancelar]);
end;

procedure Tfrm_desc_acres.FormShow(Sender: TObject);
begin
  with SQL_ITENS do
  begin
    Close;
    parambyname('pvenda').asString := cod_venda;
    open;
  end;
  cb_itens.ItemIndex := 0;
  cb_tipo_mov.ItemIndex := 0;
end;

end.
