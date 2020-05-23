unit Excluir_item_venda;

interface

uses
  Winapi.Windows, System.SysUtils, System.Variants, System.Classes,
  Vcl.Controls, Vcl.Forms,
  cxEdit,
  Vcl.StdCtrls, cxButtons,

  FireDAC.Stan.Param,
  Data.DB,
  FireDAC.Comp.Client, FireDAC.Comp.DataSet,
  cxDBLookupComboBox, cxGraphics, cxLookAndFeels, cxLookAndFeelPainters, Vcl.Menus, dxSkinsCore, dxSkinBlack, dxSkinBlue, dxSkinBlueprint, dxSkinCaramel,
  dxSkinCoffee, dxSkinDarkRoom, dxSkinDarkSide,
  dxSkinDevExpressDarkStyle, dxSkinDevExpressStyle, dxSkinFoggy, dxSkinGlassOceans, dxSkinHighContrast, dxSkiniMaginary, dxSkinLilian, dxSkinLiquidSky,
  dxSkinLondonLiquidSky, dxSkinMcSkin,
  dxSkinMetropolis, dxSkinMetropolisDark, dxSkinMoneyTwins, dxSkinOffice2007Black, dxSkinOffice2007Blue, dxSkinOffice2007Green, dxSkinOffice2007Pink,
  dxSkinOffice2007Silver, dxSkinOffice2010Black,
  dxSkinOffice2010Blue, dxSkinOffice2010Silver, dxSkinOffice2013DarkGray, dxSkinOffice2013LightGray, dxSkinOffice2013White, dxSkinOffice2016Colorful,
  dxSkinOffice2016Dark, dxSkinPumpkin, dxSkinSeven,
  dxSkinSevenClassic, dxSkinSharp, dxSkinSharpPlus, dxSkinSilver, dxSkinSpringTime, dxSkinStardust, dxSkinSummer2008, dxSkinTheAsphaltWorld,
  dxSkinsDefaultPainters, dxSkinValentine,
  dxSkinVisualStudio2013Blue, dxSkinVisualStudio2013Dark, dxSkinVisualStudio2013Light, dxSkinVS2010, dxSkinWhiteprint, dxSkinXmas2008Blue, cxControls,
  cxContainer, FireDAC.Stan.Intf,
  FireDAC.Stan.Option, FireDAC.Stan.Error, FireDAC.DatS, FireDAC.Phys.Intf, FireDAC.DApt.Intf, FireDAC.Stan.Async, FireDAC.DApt, cxTextEdit, cxMaskEdit,
  cxDropDownEdit, cxLookupEdit, cxDBLookupEdit;

type
  TFrm_ExcluirItem = class(TForm)
    Label1: TLabel;
    btngravar: TcxButton;
    btnsair: TcxButton;
    cb_itens: TcxLookupComboBox;
    DS_ITENS: TDataSource;
    SQL_ITENS: TFDQuery;
    SQL_ITENSDESCRICAO: TStringField;
    SQL_ITENSCODIGO_ITEM_VENDA: TIntegerField;
    procedure FormShow(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure btnsairClick(Sender: TObject);
    procedure btngravarClick(Sender: TObject);
    procedure FormKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
    procedure cb_itensKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
  private
    { Private declarations }
  public
    { Public declarations }
    cod_venda, cod_item: string;

  end;

var
  Frm_ExcluirItem: TFrm_ExcluirItem;

implementation

{$R *.dfm}

uses vw_pdv, u_funcoes;

procedure TFrm_ExcluirItem.btngravarClick(Sender: TObject);
begin
  if (cb_itens.EditValue <> null) then
  begin
    cb_itens.ValidateEdit(false);
    cod_item := cb_itens.EditValue;
    Frm_PDV.FORM_PDV.excluiritem;
    Frm_PDV.FORM_PDV.consultaritem;
    Frm_PDV.FORM_PDV.totalnfce(Frm_PDV.FORM_PDV.lbl_subtotal);
    close;
  end
end;

procedure TFrm_ExcluirItem.btnsairClick(Sender: TObject);
begin
  close;
end;

procedure TFrm_ExcluirItem.cb_itensKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
begin
  if Key = VK_RETURN then
    if (cb_itens.EditValue <> null) then
    begin
      btngravar.Click;
    end;

end;

procedure TFrm_ExcluirItem.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  Action := cafree;
  SELF := NIL;
end;

procedure TFrm_ExcluirItem.FormKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
begin
  u_funcoes.TeclasAtalho(Key, [VK_F1, VK_F2], [btngravar, btnsair]);
end;

procedure TFrm_ExcluirItem.FormShow(Sender: TObject);
begin
  with SQL_ITENS do
  begin
    close;
    parambyname('pvenda').AsString := cod_venda;
    open;
  end;
  cb_itens.ItemIndex := 0;
end;

end.
