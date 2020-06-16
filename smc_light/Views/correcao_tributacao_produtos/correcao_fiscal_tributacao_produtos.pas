//Verificado automaticamente em 16/06/2020 09:28
unit correcao_fiscal_tributacao_produtos;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, cxGraphics, cxControls, cxLookAndFeels,
  cxLookAndFeelPainters, cxStyles, dxSkinsCore, dxSkinOffice2013LightGray,
  dxSkinscxPCPainter, cxCustomData, cxFilter, cxData, cxDataStorage, cxEdit,
  cxNavigator, Data.DB, cxDBData, cxMaskEdit, cxLabel, cxCurrencyEdit,
  cxContainer, Vcl.Menus, Vcl.StdCtrls, cxButtons, cxGroupBox, cxGridLevel,
  cxGridCustomTableView, cxGridTableView, cxGridDBTableView, cxClasses,
  cxGridCustomView, cxGrid, Vcl.Mask, Vcl.DBCtrls, dxSkinBlack, dxSkinBlue,
  dxSkinBlueprint, dxSkinCaramel, dxSkinCoffee, dxSkinDarkRoom,
  dxSkinDarkSide, dxSkinDevExpressDarkStyle, dxSkinDevExpressStyle,
  dxSkinFoggy, dxSkinGlassOceans, dxSkinHighContrast, dxSkiniMaginary,
  dxSkinLilian, dxSkinLiquidSky, dxSkinLondonLiquidSky, dxSkinMcSkin,
  dxSkinMetropolis, dxSkinMetropolisDark, dxSkinMoneyTwins,
  dxSkinOffice2007Black, dxSkinOffice2007Blue, dxSkinOffice2007Green,
  dxSkinOffice2007Pink, dxSkinOffice2007Silver, dxSkinOffice2010Black,
  dxSkinOffice2010Blue, dxSkinOffice2010Silver, dxSkinOffice2013DarkGray,
  dxSkinOffice2013White, dxSkinOffice2016Colorful, dxSkinOffice2016Dark,
  dxSkinPumpkin, dxSkinSeven, dxSkinSevenClassic, dxSkinSharp,
  dxSkinSharpPlus, dxSkinSilver, dxSkinSpringTime, dxSkinStardust,
  dxSkinSummer2008, dxSkinTheAsphaltWorld, dxSkinsDefaultPainters,
  dxSkinValentine, dxSkinVisualStudio2013Blue, dxSkinVisualStudio2013Dark,
  dxSkinVisualStudio2013Light, dxSkinVS2010, dxSkinWhiteprint,
  dxSkinXmas2008Blue;

type
  TFrm_correca_fiscal_tributacao_produtos = class(TForm)
    Label4: TLabel;
    DBEdit1: TDBEdit;
    Label1: TLabel;
    Label2: TLabel;
    Label3: TLabel;
    Label5: TLabel;
    Label6: TLabel;
    Label7: TLabel;
    Label8: TLabel;
    AAAAAAAA: TDBEdit;
    DBEdit3: TDBEdit;
    DBEdit5: TDBEdit;
    Label9: TLabel;
    DBEdit9: TDBEdit;
    DBEdit10: TDBEdit;
    DBEdit12: TDBEdit;
    cxGroupBox2: TcxGroupBox;
    cxButton6: TcxButton;
    BtnAlterar: TcxButton;
    DBEdit2: TDBEdit;
    DBEdit4: TDBEdit;
    DBEdit6: TDBEdit;
    DBEdit7: TDBEdit;
    DBEdit8: TDBEdit;
    DBEdit11: TDBEdit;
    DBEdit13: TDBEdit;
    DBEdit14: TDBEdit;
    cxGroupBox1: TcxGroupBox;
    cxGroupBox3: TcxGroupBox;
    cxGroupBox4: TcxGroupBox;
    cxGroupBox5: TcxGroupBox;
    cxGroupBox6: TcxGroupBox;
    cxGroupBox7: TcxGroupBox;
    gdProdutos: TcxGrid;
    cxGridDBTableView2: TcxGridDBTableView;
    cxCodigo: TcxGridDBColumn;
    cxDescricao: TcxGridDBColumn;
    cxNCM: TcxGridDBColumn;
    cxCEST: TcxGridDBColumn;
    cxCSOSN: TcxGridDBColumn;
    cxCSTicms: TcxGridDBColumn;
    cxCSTpis: TcxGridDBColumn;
    cxCSTcofins: TcxGridDBColumn;
    cxGridLevel2: TcxGridLevel;
    cxButton11: TcxButton;
    cxGroupBox8: TcxGroupBox;
    cxGroupBox9: TcxGroupBox;
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Frm_correca_fiscal_tributacao_produtos: TFrm_correca_fiscal_tributacao_produtos;

implementation

{$R *.dfm}

end.
