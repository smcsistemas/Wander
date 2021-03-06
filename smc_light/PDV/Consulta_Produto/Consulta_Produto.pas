//Verificado automaticamente em 16/06/2020 09:28
{ v 29.10.16 12:06 }
unit Consulta_Produto;
{
========================================================================================================================================
ALT|   DATA |HORA |UNIT                        |Descri��o                                                                              |
---|--------|-----|----------------------------|----------------------------------------------------------------------------------------
324|15/06/20|13:35|Consulta_Produto            |Passa a tratar PRODUTO_PROD(PROD_EAN)    ao inv�s de PRODUTO(CODIGO_BARRAS)
310|15/06/20|10:14|Consulta_Produto            |Passa a tratar PRODUTO_PROD(PROD_CODIGO) ao inv�s de PRODUTO(CODIGO)
========================================================================================================================================
}

interface

uses
  Winapi.Windows, System.SysUtils, System.Classes,
  Vcl.Controls, Vcl.Forms,

  Vcl.StdCtrls,
  cxButtons,

  Data.DB,
  FireDAC.Comp.DataSet, FireDAC.Comp.Client, cxGraphics, cxLookAndFeels, cxLookAndFeelPainters, Vcl.Menus, dxSkinsCore, dxSkinBlack, dxSkinBlue, dxSkinBlueprint, dxSkinCaramel, dxSkinCoffee,
  dxSkinDarkRoom, dxSkinDarkSide, dxSkinDevExpressDarkStyle, dxSkinDevExpressStyle, dxSkinFoggy, dxSkinGlassOceans, dxSkinHighContrast, dxSkiniMaginary, dxSkinLilian, dxSkinLiquidSky,
  dxSkinLondonLiquidSky, dxSkinMcSkin, dxSkinMetropolis, dxSkinMetropolisDark, dxSkinMoneyTwins, dxSkinOffice2007Black, dxSkinOffice2007Blue, dxSkinOffice2007Green, dxSkinOffice2007Pink,
  dxSkinOffice2007Silver, dxSkinOffice2010Black, dxSkinOffice2010Blue, dxSkinOffice2010Silver, dxSkinOffice2013DarkGray, dxSkinOffice2013LightGray, dxSkinOffice2013White, dxSkinOffice2016Colorful,
  dxSkinOffice2016Dark, dxSkinPumpkin, dxSkinSeven, dxSkinSevenClassic, dxSkinSharp, dxSkinSharpPlus, dxSkinSilver, dxSkinSpringTime, dxSkinStardust, dxSkinSummer2008, dxSkinTheAsphaltWorld,
  dxSkinsDefaultPainters, dxSkinValentine, dxSkinVisualStudio2013Blue, dxSkinVisualStudio2013Dark, dxSkinVisualStudio2013Light, dxSkinVS2010, dxSkinWhiteprint, dxSkinXmas2008Blue, FireDAC.Stan.Intf,
  FireDAC.Stan.Option, FireDAC.Stan.Param, FireDAC.Stan.Error, FireDAC.DatS, FireDAC.Phys.Intf, FireDAC.DApt.Intf, FireDAC.Stan.Async, FireDAC.DApt;

type
  TFrm_Consultar_Preco = class(TForm)
    GroupBox11: TGroupBox;
    Label10: TLabel;
    GroupBox2: TGroupBox;
    Label1: TLabel;
    GroupBox4: TGroupBox;
    Label17: TLabel;
    Label3: TLabel;
    SQL_ProdutoConsulta: TFDQuery;
    GroupBox1: TGroupBox;
    Edit1: TEdit;
    Label11: TLabel;
    Label5: TLabel;
    Edt_codBarras: TEdit;
    BtnIncluirVenda: TcxButton;
    BtnSair: TcxButton;
    GroupBox3: TGroupBox;
    Label8: TLabel;
    Label6: TLabel;
    Label7: TLabel;
    lbl_unidademedida: TLabel;
    Label4: TLabel;
    Label2: TLabel;

    procedure consultar_ref;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
    procedure Edt_codBarrasKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
    procedure BtnSairClick(Sender: TObject);
    procedure Edit1KeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
    procedure BtnIncluirVendaClick(Sender: TObject);
    procedure Edit1KeyPress(Sender: TObject; var Key: Char);
    procedure Edit1Exit(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Frm_Consultar_Preco: TFrm_Consultar_Preco;

implementation

{$R *.dfm}

uses vw_pdv, u_funcoes, c_Globals, h_DB, vw_consulta_generica;

procedure TFrm_Consultar_Preco.BtnIncluirVendaClick(Sender: TObject);
begin
  if BtnIncluirVenda.enabled then
    if Frm_PDV.FORM_PDV.ProdutoRepetido(Frm_PDV.FORM_PDV.BuscarCodigo(Edt_codBarras), Frm_PDV.FORM_PDV.lbl_cod_venda.Caption, Edit1.Text) then
    begin
      Frm_PDV.FORM_PDV.consultaritem;
      Frm_PDV.FORM_PDV.totalnfce(Frm_PDV.FORM_PDV.lbl_subtotal);
      Frm_PDV.FORM_PDV.PadronizarLayout;
      Frm_PDV.FORM_PDV.CaixaLivre(false);
      close;
    end
    else
    begin
      Frm_PDV.FORM_PDV.IncluirItemVenda(Edt_codBarras, Edit1, Frm_PDV.FORM_PDV.lbl_subtotal);
      close
    end;
end;

procedure TFrm_Consultar_Preco.BtnSairClick(Sender: TObject);
begin
  close;
end;

procedure TFrm_Consultar_Preco.consultar_ref;
var
  qry, qry_cod: TFDQuery;
begin
  qry_cod := Tdb.simplequery
    ('select PROD_CODIGO, PROD_EAN, PROD_DESCRICAO, PROD_CDUNIDADE, PROD_SALDO, PROD_REFERENCIASFABRICA, MARCA, PROD_PRECO_VAR from produto_PROD where PROD_codigo = "' +
    Edt_codBarras.Text + '" OR PROD_REFERENCIASFABRICA = "' + Edt_codBarras.Text + '"');
  if qry_cod <> nil then
  begin
    qry_cod.fetchall;
    qry_cod.first;
    if qry_cod.RecordCount > 1 then
    begin
      Frm_Consulta_Generica := TFrm_Consulta_Generica.create(nil, cgProduto, Edt_codBarras);
      Frm_Consulta_Generica.SetCustomQuery(qry_cod.SQL.Text, Edt_codBarras.Text);
      Frm_Consulta_Generica.showmodal;
      exit;
    end;
  end;
  qry := Tdb.simplequery('select prod_codigo from produto_PROD where PROD_REFERENCIASFABRICA = "' + Edt_codBarras.Text + '"');
  if (qry <> nil) then
    Edt_codBarras.Text := qry.Fields[0].Text;
end;

procedure TFrm_Consultar_Preco.Edit1Exit(Sender: TObject);
begin
  ZerarValorDigitado;
end;

procedure TFrm_Consultar_Preco.Edit1KeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
begin
  if Key = vk_return then
  begin
    Label17.Caption := FormatCurr('0.00', (strtoCURR(Edit1.Text) * strtoCURR(Label7.Caption)));
    BtnIncluirVenda.enabled := true;
    BtnIncluirVenda.SetFocus;
  end;
end;

procedure TFrm_Consultar_Preco.Edit1KeyPress(Sender: TObject; var Key: Char);
begin
  if not(Key in [Char(vk_return), Char(VK_ESCAPE), Char(VK_TAB)]) then
    if lbl_unidademedida.Caption = 'KG' then
    begin
      inherited;
      Key := u_funcoes.FormatarQuantidadeKG(Edit1, Key);
    end;
end;

procedure TFrm_Consultar_Preco.Edt_codBarrasKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
begin
  if Key = vk_return then
  begin
    if Edt_codBarras.Text = '' then
    begin
      Frm_PDV.FORM_PDV.TelaConsultaProduto(false, Edt_codBarras);
    end
    else
    begin
         if simplequery('SELECT CONSULTA_REF_FABRICANTE FROM PARAMETROS_VENDA').Fields[0].AsString = m_true then
            consultar_ref;
         Frm_PDV.FORM_PDV.PreencherDadosProduto(Edt_codBarras, Edit1, Label1, Label7, lbl_unidademedida);
    end;
  end;
end;

procedure TFrm_Consultar_Preco.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  Action := cafree;
  Frm_PDV.FORM_PDV.Edt_codBarras.SetFocus;
end;

procedure TFrm_Consultar_Preco.FormKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
begin
  teclasatalho(Key, [vk_f1, vk_f2, VK_ESCAPE], [BtnIncluirVenda, BtnSair, BtnSair]);
end;

end.
Trocou INFO_ADICIONAIS por PROD_DETALHES : automaticamente em 16/06/2020 12:07
Trocou PROD_REFERENCIASFABRICA por PROD_REFERENCIASFABRICA : automaticamente em 16/06/2020 12:38
Trocou REFERENCIA_FABRICANTE por PROD_REFERENCIASFABRICA : automaticamente em 16/06/2020 14:07
Trocou PROD_UNIDADE por PROD_CDUNIDADE : automaticamente em 16/06/2020 17:06
Trocou DESCONTO_MAXIMO por PROD_MAXDESC : automaticamente em 16/06/2020 22:23
Trocou DESCONTO_M_VAREJO por PROD_MAXDESC_VAR : automaticamente em 16/06/2020 22:27
Trocou DESCONTO_M_ATACADO por PROD_MAXDESC_ATAC : automaticamente em 16/06/2020 22:31
Trocou DESCONTO_M_DISTRIBUIDOR por PROD_MAXDESC_DIST : automaticamente em 16/06/2020 22:34
Trocou PAGAR_COMISSAO por PROD_COMISSAO : automaticamente em 16/06/2020 22:37
Trocou COMISSAO_BALCAO por PROD_COMISSAO_LOJA : automaticamente em 16/06/2020 22:41
Trocou BALCAO_COMISSAO_VAREJO por PROD_COMISSAO_VAR : automaticamente em 16/06/2020 22:44
Trocou BALCAO_COMISSAO_ATACADO por PROD_COMISSAO_ATAC : automaticamente em 16/06/2020 22:46
Trocou BALCAO_COMISSAO_DISTRIBUIDOR por PROD_COMISSAO_DIST : automaticamente em 16/06/2020 22:49
Trocou ESTOQUE_MINIMO por PROD_ESTOQMIN : automaticamente em 16/06/2020 22:53
Trocou COMISSAO_EXTERNA por PROD_COMISSAO_EXT : automaticamente em 17/06/2020 05:46
Trocou EXTERNA_COMISSAO_VAREJO por PROD_COMISSAO_EXT_VAR : automaticamente em 17/06/2020 05:52
Trocou EXTERNA_COMISSAO_ATACADO por PROD_COMISSAO_EXT_ATAC : automaticamente em 17/06/2020 05:55
Trocou EXTERNA_COMISSAO_DISTRIBUIDOR por PROD_COMISSAO_EXT_DIST : automaticamente em 17/06/2020 06:30
Trocou PRECO_FINAL_VAREJO por PROD_PRECO_VAR : automaticamente em 17/06/2020 06:55
Trocou PRECO_FINAL_ATACADO por PROD_PRECO_ATAC : automaticamente em 17/06/2020 06:59
Trocou PRECO_FINAL_DISTRIBUIDOR por PROD_PRECO_DIST : automaticamente em 17/06/2020 07:02
Trocou PROMO_VAREJO por PROD_PROMOCAO_VAR : automaticamente em 17/06/2020 08:40
Trocou PROMO_ATACADO por PROD_PROMOCAO_ATAC : automaticamente em 17/06/2020 08:44
Trocou PROMO_DISTRIBUIDOR por PROD_PROMOCAO_DIST : automaticamente em 17/06/2020 08:53
Trocou SALDO por @_@_@_@_@_@ : automaticamente em 17/06/2020 21:30
Trocou @_@_@_@_@_@ por PROD_SALDO : automaticamente em 17/06/2020 21:32
Trocou ALIQ_ICMS por PROD_NFe_N16_pICMS : automaticamente em 18/06/2020 07:50
Trocou REDUCAO_ICMS por PROD_NFe_N14_pRedBC : automaticamente em 18/06/2020 07:53
