//Verificado automaticamente em 16/06/2020 09:28
unit Desconto_item;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants,
  System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, cxGraphics, cxControls, cxLookAndFeels,
  cxLookAndFeelPainters, cxContainer, cxEdit, dxSkinsCore,
  dxSkinOffice2013White, Vcl.Menus, Vcl.StdCtrls, cxButtons, cxTextEdit,
  cxCheckBox, cxGroupBox, dxSkinBlack, dxSkinBlue, dxSkinBlueprint,
  dxSkinCaramel, dxSkinCoffee, dxSkinDarkRoom, dxSkinDarkSide,
  dxSkinDevExpressDarkStyle, dxSkinDevExpressStyle, dxSkinFoggy,
  dxSkinGlassOceans, dxSkinHighContrast, dxSkiniMaginary, dxSkinLilian,
  dxSkinLiquidSky, dxSkinLondonLiquidSky, dxSkinMcSkin, dxSkinMetropolis,
  dxSkinMetropolisDark, dxSkinMoneyTwins, dxSkinOffice2007Black,
  dxSkinOffice2007Blue, dxSkinOffice2007Green, dxSkinOffice2007Pink,
  dxSkinOffice2007Silver, dxSkinOffice2010Black, dxSkinOffice2010Blue,
  dxSkinOffice2010Silver, dxSkinOffice2013DarkGray, dxSkinOffice2013LightGray,
  dxSkinOffice2016Colorful, dxSkinOffice2016Dark, dxSkinPumpkin, dxSkinSeven,
  dxSkinSevenClassic, dxSkinSharp, dxSkinSharpPlus, dxSkinSilver,
  dxSkinSpringTime, dxSkinStardust, dxSkinSummer2008, dxSkinTheAsphaltWorld,
  dxSkinsDefaultPainters, dxSkinValentine, dxSkinVisualStudio2013Blue,
  dxSkinVisualStudio2013Dark, dxSkinVisualStudio2013Light, dxSkinVS2010,
  dxSkinWhiteprint, dxSkinXmas2008Blue, FireDAC.Stan.Intf, FireDAC.Stan.Option,
  FireDAC.Stan.Param, FireDAC.Stan.Error, FireDAC.DatS,
  FireDAC.Stan.Async, FireDAC.DApt, Data.DB,
  FireDAC.Comp.DataSet, FireDAC.Comp.Client, cxClasses, dxSkinsForm, FireDAC.Phys.Intf, FireDAC.DApt.Intf;

type
  TFrm_DescontoItem = class(TForm)
    Label1: TLabel;
    Label2: TLabel;
    BtnGravar: TcxButton;
    BtnCancelar: TcxButton;
    cxGroupBox1: TcxGroupBox;
    cxCheckBox1: TcxCheckBox;
    cxCheckBox2: TcxCheckBox;
    EdValor: TEdit;
    Edit1: TEdit;
    Sql_Desconto: TFDQuery;
    Sql_ConsultaItem: TFDQuery;
    Sql_ConsultaItemCODIGO: TFDAutoIncField;
    Sql_ConsultaItemCODIGO_VENDA: TIntegerField;
    Sql_ConsultaItemCODIGO_ITEM_VENDA: TIntegerField;
    Sql_ConsultaItemCODIGO_PRODUTO: TIntegerField;
    Sql_ConsultaItemDESCRICAO: TStringField;
    Sql_ConsultaItemUNIDADE: TStringField;
    Sql_ConsultaItemQUANTIDADE: TSingleField;
    Sql_ConsultaItemPRECO: TBCDField;
    Sql_ConsultaItemACRESCIMO: TBCDField;
    Sql_ConsultaItemDESCONTO: TBCDField;
    Sql_ConsultaItemPRECO_TOTAL: TBCDField;
    procedure FormShow(Sender: TObject);
    function consultaritem: boolean;
    procedure BtnCancelarClick(Sender: TObject);
    procedure BtnGravarClick(Sender: TObject);
    procedure Edit1KeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
    procedure EdValorKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
    procedure cxCheckBox2KeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
    procedure cxCheckBox2Click(Sender: TObject);
    procedure cxCheckBox1Click(Sender: TObject);
    procedure FormKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
  private
    { Private declarations }
  public
    { Public declarations }
    Desconto: real;
    ValorDesconto: real;
  end;

var
  Frm_DescontoItem: TFrm_DescontoItem;

implementation

{$R *.dfm}

uses nfc_e, u_funcoes;

function TFrm_DescontoItem.consultaritem: boolean;
begin
  with Sql_ConsultaItem do
  begin
    close;
    sql.Clear;
    sql.Add('select * from venda_item');
    sql.Add('where CODIGO_VENDA like :pcodigo and CODIGO_ITEM_VENDA like :pitem');
    Params[0].Value := strtoint(Frm_PDV.Label5.Caption);
    Params[1].Value := strtoint(Edit1.Text);
    open;
  end;
  if Sql_ConsultaItem.recordcount = 0 then
    result := false
  else
    result := true;

end;

procedure TFrm_DescontoItem.BtnGravarClick(Sender: TObject);
begin
  if not consultaritem then
  begin
    Application.MessageBox('Item não encontrado.', 'Mensagem do Sistema', MB_ICONWARNING + MB_OK);
    Exit;
  end
  else
  begin

    if cxCheckBox2.checked = true then { se o acrescimo for em Real }
    begin
      ValorDesconto := Sql_ConsultaItemPRECO_TOTAL.Value - strtofloat(EdValor.Text);
      Desconto := strtofloat(EdValor.Text);
    end;

    if cxCheckBox1.checked = true then { se o acrescimo for em % }
    begin
      Desconto := strtofloat(EdValor.Text);
      ValorDesconto := Sql_ConsultaItemPRECO_TOTAL.Value - (Sql_ConsultaItemPRECO_TOTAL.Value * Desconto / 100);
      Desconto := Sql_ConsultaItemPRECO_TOTAL.Value * Desconto / 100;
    end;

    Frm_PDV.Desconto_item;
    Frm_PDV.consultaritem; { Lista os itens no Grid }
    Frm_PDV.totalnfce(Frm_PDV.lbl_subtotal);
    BtnCancelar.Click;

  end;
end;

procedure TFrm_DescontoItem.cxCheckBox1Click(Sender: TObject);
begin
  if cxCheckBox1.checked = true then
  begin
    cxCheckBox1.checked := true;
    cxCheckBox2.checked := false;
    BtnGravar.Enabled := true;
  end;
end;

procedure TFrm_DescontoItem.cxCheckBox2Click(Sender: TObject);
begin
  if cxCheckBox2.checked = true then
  begin
    cxCheckBox2.checked := true;
    cxCheckBox1.checked := false;
    BtnGravar.Enabled := true;
  end;
end;

procedure TFrm_DescontoItem.cxCheckBox2KeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
begin
  if Key = vk_Return then
  begin
    Edit1.SetFocus;
  end;
end;

procedure TFrm_DescontoItem.Edit1KeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
begin
  if Key = vk_Return then
  begin
    EdValor.SetFocus;
  end;
end;

procedure TFrm_DescontoItem.EdValorKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
begin
  if Key = vk_Return then
  begin
    BtnGravar.SetFocus;
  end;
end;

procedure TFrm_DescontoItem.BtnCancelarClick(Sender: TObject);
begin
  Edit1.Clear;
  EdValor.Clear;
  cxCheckBox1.checked := false;
  cxCheckBox2.checked := false;
  Frm_PDV.Edt_codBarras.SetFocus;
  close;
end;

procedure TFrm_DescontoItem.FormKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
begin
  u_funcoes.TeclasAtalho(Key, [VK_F1, VK_F2, VK_ESCAPE], [BtnGravar, BtnCancelar, BtnCancelar]);
end;

procedure TFrm_DescontoItem.FormShow(Sender: TObject);
begin
  cxCheckBox2.checked := true;
  Edit1.SetFocus;
end;

end.
