//Verificado automaticamente em 16/06/2020 09:28
unit totalizacao_pedido;
{
========================================================================================================================================
ALT|   DATA |HORA |UNIT                        |Descrição                                                                              |
---|--------|-----|----------------------------|----------------------------------------------------------------------------------------
317|15/06/20|10:14|venda_pedido                |Passa a tratar PRODUTO_PROD(PROD_CODIGO) ao invés de PRODUTO(CODIGO)
}
interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls, cxGraphics,
  cxLookAndFeels, cxLookAndFeelPainters, Vcl.Menus, dxSkinsCore, cxButtons,
  dxSkinBlack, dxSkinBlue, dxSkinBlueprint, dxSkinCaramel, dxSkinCoffee,
  dxSkinDarkRoom, dxSkinDarkSide, dxSkinDevExpressDarkStyle,
  dxSkinDevExpressStyle, dxSkinFoggy, dxSkinGlassOceans, dxSkinHighContrast,
  dxSkiniMaginary, dxSkinLilian, dxSkinLiquidSky, dxSkinLondonLiquidSky,
  dxSkinMcSkin, dxSkinMetropolis, dxSkinMetropolisDark, dxSkinMoneyTwins,
  dxSkinOffice2007Black, dxSkinOffice2007Blue, dxSkinOffice2007Green,
  dxSkinOffice2007Pink, dxSkinOffice2007Silver, dxSkinOffice2010Black,
  dxSkinOffice2010Blue, dxSkinOffice2010Silver, dxSkinOffice2013DarkGray,
  dxSkinOffice2013LightGray, dxSkinOffice2013White, dxSkinOffice2016Colorful,
  dxSkinOffice2016Dark, dxSkinPumpkin, dxSkinSeven, dxSkinSevenClassic,
  dxSkinSharp, dxSkinSharpPlus, dxSkinSilver, dxSkinSpringTime, dxSkinStardust,
  dxSkinSummer2008, dxSkinTheAsphaltWorld, dxSkinsDefaultPainters,
  dxSkinValentine, dxSkinVisualStudio2013Blue, dxSkinVisualStudio2013Dark,
  dxSkinVisualStudio2013Light, dxSkinVS2010, dxSkinWhiteprint,
  dxSkinXmas2008Blue;

type
  Tfrm_totalizacao_pedido = class(TForm)
    GroupBox1: TGroupBox;
    Label1: TLabel;
    Edit1: TEdit;
    Label2: TLabel;
    Edit2: TEdit;
    Label3: TLabel;
    Edit3: TEdit;
    GroupBox2: TGroupBox;
    Edit4: TEdit;
    Edit10: TEdit;
    Label10: TLabel;
    Edit9: TEdit;
    Label9: TLabel;
    Edit8: TEdit;
    Label8: TLabel;
    Edit7: TEdit;
    Label7: TLabel;
    Edit6: TEdit;
    Label6: TLabel;
    Edit5: TEdit;
    Label5: TLabel;
    Label4: TLabel;
    Edit13: TEdit;
    Edit14: TEdit;
    Label12: TLabel;
    Label13: TLabel;
    Label14: TLabel;
    CheckBox1: TCheckBox;
    CheckBox2: TCheckBox;
    Label11: TLabel;
    Edit11: TEdit;
    Edit15: TEdit;
    Label15: TLabel;
    Edit16: TEdit;
    Edit17: TEdit;
    Label16: TLabel;
    Edit19: TEdit;
    Label17: TLabel;
    Label18: TLabel;
    Edit18: TEdit;
    Label19: TLabel;
    Edit20: TEdit;
    Label20: TLabel;
    Edit21: TEdit;
    Label21: TLabel;
    Edit22: TEdit;
    Edit12: TEdit;
    BtnIncluir: TcxButton;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frm_totalizacao_pedido: Tfrm_totalizacao_pedido;

implementation

{$R *.dfm}

procedure Tfrm_totalizacao_pedido.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  Action := caFree;
  self := nil;
end;

end.
