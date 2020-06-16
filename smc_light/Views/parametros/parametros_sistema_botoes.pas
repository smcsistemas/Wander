//Verificado automaticamente em 16/06/2020 09:29
unit parametros_sistema_botoes;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, cxGraphics, cxLookAndFeels,
  cxLookAndFeelPainters, Vcl.Menus, dxSkinsCore, Vcl.StdCtrls, cxButtons,
  parametros_vendas, paramentros_produtos, paramentros_clientes,
  parametros_comanda, parametros_sistemas, parametros_tributacao,
  parametros_estoque, parametros_financeiro, dxSkinBlack, dxSkinBlue,
  dxSkinBlueprint, dxSkinCaramel, dxSkinCoffee, dxSkinDarkRoom, dxSkinDarkSide,
  dxSkinDevExpressDarkStyle, dxSkinDevExpressStyle, dxSkinFoggy,
  dxSkinGlassOceans, dxSkinHighContrast, dxSkiniMaginary, dxSkinLilian,
  dxSkinLiquidSky, dxSkinLondonLiquidSky, dxSkinMcSkin, dxSkinMetropolis,
  dxSkinMetropolisDark, dxSkinMoneyTwins, dxSkinOffice2007Black,
  dxSkinOffice2007Blue, dxSkinOffice2007Green, dxSkinOffice2007Pink,
  dxSkinOffice2007Silver, dxSkinOffice2010Black, dxSkinOffice2010Blue,
  dxSkinOffice2010Silver, dxSkinOffice2013DarkGray, dxSkinOffice2013LightGray,
  dxSkinOffice2013White, dxSkinOffice2016Colorful, dxSkinOffice2016Dark,
  dxSkinPumpkin, dxSkinSeven, dxSkinSevenClassic, dxSkinSharp, dxSkinSharpPlus,
  dxSkinSilver, dxSkinSpringTime, dxSkinStardust, dxSkinSummer2008,
  dxSkinTheAsphaltWorld, dxSkinsDefaultPainters, dxSkinValentine,
  dxSkinVisualStudio2013Blue, dxSkinVisualStudio2013Dark,
  dxSkinVisualStudio2013Light, dxSkinVS2010, dxSkinWhiteprint,
  dxSkinXmas2008Blue;

type
  Tfrm_tipos_parametros = class(TForm)
    cxButton6: TcxButton;
    cxButton1: TcxButton;
    cxButton2: TcxButton;
    cxButton3: TcxButton;
    cxButton4: TcxButton;
    cxButton5: TcxButton;
    cxButton7: TcxButton;
    cxButton8: TcxButton;
    cxButton9: TcxButton;
    procedure cxButton6Click(Sender: TObject);
    procedure cxButton3Click(Sender: TObject);
    procedure cxButton7Click(Sender: TObject);
    procedure cxButton1Click(Sender: TObject);
    procedure cxButton8Click(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure cxButton9Click(Sender: TObject);
    procedure cxButton4Click(Sender: TObject);
    procedure cxButton5Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frm_tipos_parametros: Tfrm_tipos_parametros;

implementation

{$R *.dfm}

procedure Tfrm_tipos_parametros.cxButton1Click(Sender: TObject);
begin
    frm_paramentros_comandas := Tfrm_paramentros_comandas.Create(nil);
    frm_paramentros_comandas.showmodal;
end;

procedure Tfrm_tipos_parametros.cxButton3Click(Sender: TObject);
begin
    frm_paramentros_produtos := Tfrm_paramentros_produtos.Create(nil);
    frm_paramentros_produtos.showmodal;
end;

procedure Tfrm_tipos_parametros.cxButton4Click(Sender: TObject);
begin
    frm_paramentros_estoque := Tfrm_paramentros_estoque.Create(nil);
    frm_paramentros_estoque.showmodal;
end;

procedure Tfrm_tipos_parametros.cxButton5Click(Sender: TObject);
begin
    frm_parametros_financeiros := Tfrm_parametros_financeiros.Create(nil);
    frm_parametros_financeiros.showmodal;
end;

procedure Tfrm_tipos_parametros.cxButton6Click(Sender: TObject);
begin
    frm_parametro_vendas := Tfrm_parametro_vendas.Create(nil);
    frm_parametro_vendas.showmodal;
end;

procedure Tfrm_tipos_parametros.cxButton7Click(Sender: TObject);
begin
    frm_paramentros_clientes := Tfrm_paramentros_clientes.Create(nil);
    frm_paramentros_clientes.showmodal;
end;

procedure Tfrm_tipos_parametros.cxButton8Click(Sender: TObject);
begin
    frm_parametros_sistemas := Tfrm_parametros_sistemas.Create(nil);
    frm_parametros_sistemas.showmodal;
end;

procedure Tfrm_tipos_parametros.cxButton9Click(Sender: TObject);
begin
    frm_parametros_tributacao := Tfrm_parametros_tributacao.Create(nil);
    frm_parametros_tributacao.showmodal;
end;

procedure Tfrm_tipos_parametros.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  Action := cafree;
  self := nil;
end;

end.
