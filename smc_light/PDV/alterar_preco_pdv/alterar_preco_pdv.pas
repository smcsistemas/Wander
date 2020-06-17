//Verificado automaticamente em 16/06/2020 09:28
unit alterar_preco_pdv;

interface

uses
  Winapi.Windows, System.SysUtils, System.Variants, System.Classes,
  Vcl.Controls, Vcl.Forms,

  Vcl.StdCtrls, cxButtons, cxCheckBox,

  FireDAC.Stan.Param,

  Data.DB, FireDAC.Comp.DataSet, FireDAC.Comp.Client,














  cxDBLookupComboBox, cxGraphics, cxControls, cxLookAndFeels, cxLookAndFeelPainters, cxContainer, cxEdit, dxSkinsCore, dxSkinBlack, dxSkinBlue, dxSkinBlueprint, dxSkinCaramel, dxSkinCoffee,
  dxSkinDarkRoom, dxSkinDarkSide, dxSkinDevExpressDarkStyle, dxSkinDevExpressStyle, dxSkinFoggy, dxSkinGlassOceans, dxSkinHighContrast, dxSkiniMaginary, dxSkinLilian, dxSkinLiquidSky,
  dxSkinLondonLiquidSky, dxSkinMcSkin, dxSkinMetropolis, dxSkinMetropolisDark, dxSkinMoneyTwins, dxSkinOffice2007Black, dxSkinOffice2007Blue, dxSkinOffice2007Green, dxSkinOffice2007Pink,
  dxSkinOffice2007Silver, dxSkinOffice2010Black, dxSkinOffice2010Blue, dxSkinOffice2010Silver, dxSkinOffice2013DarkGray, dxSkinOffice2013LightGray, dxSkinOffice2013White, dxSkinOffice2016Colorful,
  dxSkinOffice2016Dark, dxSkinPumpkin, dxSkinSeven, dxSkinSevenClassic, dxSkinSharp, dxSkinSharpPlus, dxSkinSilver, dxSkinSpringTime, dxSkinStardust, dxSkinSummer2008, dxSkinTheAsphaltWorld,
  dxSkinsDefaultPainters, dxSkinValentine, dxSkinVisualStudio2013Blue, dxSkinVisualStudio2013Dark, dxSkinVisualStudio2013Light, dxSkinVS2010, dxSkinWhiteprint, dxSkinXmas2008Blue, Vcl.Menus,
  FireDAC.Stan.Intf, FireDAC.Stan.Option, FireDAC.Stan.Error, FireDAC.DatS, FireDAC.Phys.Intf, FireDAC.DApt.Intf, FireDAC.Stan.Async, FireDAC.DApt, cxTextEdit, cxMaskEdit, cxDropDownEdit,
  cxLookupEdit, cxDBLookupEdit;

type
  Tfrm_alterar_preco_pdv = class(TForm)
    chk_altera_cadastro: TcxCheckBox;
    BtnGravar: TcxButton;
    cxButton1: TcxButton;
    Label2: TLabel;
    lbl4: TLabel;
    lbl5: TLabel;
    SQL_ITENS: TFDQuery;
    SQL_ITENSDESCRICAO: TStringField;
    SQL_ITENSCODIGO_ITEM_VENDA: TIntegerField;
    DS_ITENS: TDataSource;
    cb_itens: TcxLookupComboBox;
    SQL_ITENSPRECO: TBCDField;
    edt_preco_atual: TEdit;
    edt_novo_preco: TEdit;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure BtnGravarClick(Sender: TObject);
    procedure cxButton1Click(Sender: TObject);
    procedure edt_novo_precoKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
    procedure FormKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
    procedure cb_itensKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
    procedure FormShow(Sender: TObject);
    procedure cb_itensPropertiesChange(Sender: TObject);
    procedure alterarprecocadproduto;
  private
    { Private declarations }
    qry: TFDQuery;
    novo_tot_str: string;
  public
    { Public declarations }
    cod_venda: string;
  end;

var
  frm_alterar_preco_pdv: Tfrm_alterar_preco_pdv;
  qry_tmp: TFDQuery;

implementation

{$R *.dfm}

uses vw_pdv, u_funcoes;

procedure Tfrm_alterar_preco_pdv.alterarprecocadproduto;
begin
  execquery('UPDATE PRODUTO SET PROD_PRECO_VAR = ' + TrocaVirgPPto(novo_tot_str) + ' WHERE CODIGO = ' +
    simplequery('SELECT CODIGO_PRODUTO FROM VENDA_ITEM WHERE CODIGO_ITEM_VENDA ="' + inttostr(cb_itens.EditValue) + '" and codigo_venda = "' + cod_venda + '"').Fields[0].AsString);
end;

procedure Tfrm_alterar_preco_pdv.BtnGravarClick(Sender: TObject);
var
  TotalAnterior, NovoTotal: Extended;
  qry_temp: TFDQuery;
begin
  novo_tot_str := RemoverEspacoEmBranco(stringreplace(edt_novo_preco.Text, 'R$', '', [rfreplaceall]));
  if novo_tot_str = emptystr then
    wnAlerta('Alterar Preço', slinebreak + slinebreak + 'Valor Inválido!')
  else
  begin
    if chk_altera_cadastro.Checked then
      alterarprecocadproduto;

    qry_temp := simplequery('SELECT * FROM VENDA_ITEM WHERE CODIGO_VENDA ="' + cod_venda + '" AND CODIGO_ITEM_VENDA=' + inttostr(cb_itens.EditValue));
    if qry_temp <> nil then
    begin
      with qry_temp do
      begin
        Edit;
        TotalAnterior := fieldbyname('PRECO_TOTAL').VALUE;
        fieldbyname('PRECO').VALUE := RemoverEspacoEmBranco(stringreplace(edt_novo_preco.Text, 'R$', '', [rfreplaceall]));
        fieldbyname('PRECO_TOTAL').VALUE := ((fieldbyname('PRECO').VALUE * fieldbyname('QUANTIDADE').VALUE) + fieldbyname('ACRESCIMO').VALUE - fieldbyname('DESCONTO').VALUE);
        NovoTotal := fieldbyname('PRECO_TOTAL').VALUE;
        Post;
        frm_pdv.FORM_PDV.consultaritem;
        frm_pdv.FORM_PDV.totalnfce(frm_pdv.FORM_PDV.lbl_subtotal);
        Destroy;
      end;
      Close;
    end;
  end;
end;

procedure Tfrm_alterar_preco_pdv.cb_itensKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
begin
  if Key = vk_return then
    if cb_itens.EditValue <> Null then
      edt_novo_preco.SetFocus;
end;

procedure Tfrm_alterar_preco_pdv.cb_itensPropertiesChange(Sender: TObject);
begin
  if cb_itens.EditValue <> Null then
    edt_preco_atual.Text := FormatarMoeda(simplequery('SELECT PRECO FROM VENDA_ITEM WHERE CODIGO_ITEM_VENDA = "' + inttostr(cb_itens.EditValue) + '" AND CODIGO_VENDA ="' +
      cod_venda + '"').Fields[0].asExtended);
end;

procedure Tfrm_alterar_preco_pdv.cxButton1Click(Sender: TObject);
begin
  Close;
end;

procedure Tfrm_alterar_preco_pdv.edt_novo_precoKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
begin
  if (vk_return = Key) and (edt_novo_preco.Text <> emptystr) then
    BtnGravar.Click;
end;

procedure Tfrm_alterar_preco_pdv.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  Action := cafree;
  Self := nil;
  frm_pdv.FORM_PDV.Edt_codBarras.SetFocus;
end;

procedure Tfrm_alterar_preco_pdv.FormKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
begin
  TeclasAtalho(Key, [VK_F1, vk_f2, VK_ESCAPE], [BtnGravar, cxButton1, cxButton1]);
end;

procedure Tfrm_alterar_preco_pdv.FormShow(Sender: TObject);
begin
  with SQL_ITENS do
  begin
    Close;
    parambyname('pvenda').AsString := cod_venda;
    Open;
  end;
  cb_itens.ItemIndex := 0;
end;

end.
Trocou PRECO_FINAL_VAREJO por PROD_PRECO_VAR : automaticamente em 17/06/2020 06:55
