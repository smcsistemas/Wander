//Verificado automaticamente em 16/06/2020 09:28
unit Acrescimo_item;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, cxGraphics, cxControls, cxLookAndFeels,
  cxLookAndFeelPainters, cxContainer, cxEdit, dxSkinsCore,
  dxSkinOffice2013White, Vcl.Menus, cxCheckBox, cxGroupBox, Vcl.StdCtrls,
  cxButtons, cxTextEdit, dxSkinBlack, dxSkinBlue, dxSkinBlueprint,
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
  TFrm_AcrescimoItem = class(TForm)
    Label1: TLabel;
    Label2: TLabel;
    BtnGravar: TcxButton;
    BtnCancelar: TcxButton;
    cxGroupBox1: TcxGroupBox;
    cxCheckBox1: TcxCheckBox;
    cxCheckBox2: TcxCheckBox;
    Edit1: TEdit;
    EdValor: TEdit;
    Sql_Acrescimo: TFDQuery;
    Sql_ConsultaIntem: TFDQuery;
    Sql_ConsultaIntemCODIGO: TFDAutoIncField;
    Sql_ConsultaIntemCODIGO_VENDA: TIntegerField;
    Sql_ConsultaIntemCODIGO_ITEM_VENDA: TIntegerField;
    Sql_ConsultaIntemCODIGO_PRODUTO: TIntegerField;
    Sql_ConsultaIntemDESCRICAO: TStringField;
    Sql_ConsultaIntemUNIDADE: TStringField;
    Sql_ConsultaIntemQUANTIDADE: TSingleField;
    Sql_ConsultaIntemPRECO: TBCDField;
    Sql_ConsultaIntemACRESCIMO: TBCDField;
    Sql_ConsultaIntemDESCONTO: TBCDField;
    Sql_ConsultaIntemPRECO_TOTAL: TBCDField;
    procedure Edit1KeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
    procedure EdValorKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
    function consultaritem: boolean;
    procedure BtnGravarClick(Sender: TObject);
    procedure cxCheckBox2Click(Sender: TObject);
    procedure cxCheckBox1Click(Sender: TObject);
    procedure BtnCancelarClick(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure cxCheckBox2KeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
    procedure cxCheckBox1KeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
    procedure FormShow(Sender: TObject);
    procedure FormKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
  private
    { Private declarations }
  public
    { Public declarations }
    Acrescimo: real; // valor do acrescimo
    ValorAcrescimo: real; // valor com acrescimo
  end;

var
  Frm_AcrescimoItem: TFrm_AcrescimoItem;

implementation

{$R *.dfm}

uses nfc_e, u_funcoes;

function TFrm_AcrescimoItem.consultaritem: boolean;
begin
  with Sql_ConsultaIntem do
  begin
    close;
    sql.Clear;
    sql.Add('select * from venda_item');
    sql.Add('where CODIGO_VENDA like :pcodigo and CODIGO_ITEM_VENDA like :pitem');
    Params[0].Value := strtoint(Frm_PDV.Label5.Caption);
    Params[1].Value := strtoint(Edit1.Text);
    open;
  end;
  if Sql_ConsultaIntem.RecordCount = 0 then
  begin
    Result := False; // Encontrou Item
  end
  else
    Result := True; // Não encontrou Item
end;

procedure TFrm_AcrescimoItem.BtnGravarClick(Sender: TObject);
begin
  if not consultaritem then
  begin
    Application.MessageBox('Item não encontrado.', 'Mensagem do Sistema', MB_ICONWARNING + MB_OK);
    Exit;
  end
  else
  begin
    if cxCheckBox2.checked = True then { se o acrescimo for em Real }
    begin
      ValorAcrescimo := Sql_ConsultaIntemPRECO_TOTAL.Value + strtofloat(EdValor.Text);
      Acrescimo := strtofloat(EdValor.Text);
    end;

    if cxCheckBox1.checked = True then { se o acrescimo for em % }
    begin
      Acrescimo := strtofloat(EdValor.Text);
      ValorAcrescimo := (Sql_ConsultaIntemPRECO_TOTAL.Value * Acrescimo / 100) + Sql_ConsultaIntemPRECO_TOTAL.Value;
      Acrescimo := Sql_ConsultaIntemPRECO_TOTAL.Value * Acrescimo / 100;
    end;

    Frm_PDV.Acrescimo_item;
    Frm_PDV.consultaritem; { Lista os itens no Grid }
    Frm_PDV.totalnfce(Frm_PDV.lbl_subtotal);
    BtnCancelar.Click;
  end;
end;

procedure TFrm_AcrescimoItem.BtnCancelarClick(Sender: TObject);
begin
  Edit1.Clear;
  EdValor.Clear;
  cxCheckBox1.checked := False;
  cxCheckBox2.checked := False;
  Frm_PDV.Edt_codBarras.setfocus;
  close;
end;

procedure TFrm_AcrescimoItem.cxCheckBox1Click(Sender: TObject);
begin
  if cxCheckBox1.checked = True then
  begin
    cxCheckBox1.checked := True;
    cxCheckBox2.checked := False;
    BtnGravar.Enabled := True;
  end;
end;

procedure TFrm_AcrescimoItem.cxCheckBox1KeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
begin
  if Key = vk_Return then
  begin
    Edit1.setfocus;
  end;
end;

procedure TFrm_AcrescimoItem.cxCheckBox2Click(Sender: TObject);
begin
  if cxCheckBox2.checked = True then
  begin
    cxCheckBox2.checked := True;
    cxCheckBox1.checked := False;
    BtnGravar.Enabled := True;
  end;
end;

procedure TFrm_AcrescimoItem.cxCheckBox2KeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
begin
  if Key = vk_Return then
  begin
    Edit1.setfocus;
  end;
end;

procedure TFrm_AcrescimoItem.Edit1KeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
begin
  if Key = vk_Return then
  begin
    EdValor.setfocus;
  end;
end;

procedure TFrm_AcrescimoItem.EdValorKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
begin
  if Key = vk_Return then
  begin
    BtnGravar.setfocus;
  end;
end;

procedure TFrm_AcrescimoItem.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  Action := cafree;
end;

procedure TFrm_AcrescimoItem.FormKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
begin
  u_funcoes.TeclasAtalho(Key, [VK_F1, VK_F2, VK_ESCAPE], [BtnGravar, BtnCancelar, BtnCancelar]);
end;

procedure TFrm_AcrescimoItem.FormShow(Sender: TObject);
begin
  cxCheckBox2.checked := True;
  Edit1.setfocus;
end;

end.
