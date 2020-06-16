//Verificado automaticamente em 16/06/2020 09:29
unit rel_pvw_vertical;

interface

uses
  Winapi.Windows, System.Variants, System.Classes,
  Vcl.Controls, Vcl.Forms,

  frxClass, frxPreview, Vcl.ExtCtrls, Data.DB, FireDAC.Comp.DataSet, FireDAC.Comp.Client, frxDBSet,











  Vcl.StdCtrls, cxButtons, cxGraphics, cxLookAndFeels, cxLookAndFeelPainters, Vcl.Menus, dxSkinsCore, dxSkinBlack, dxSkinBlue, dxSkinBlueprint, dxSkinCaramel, dxSkinCoffee, dxSkinDarkRoom,
  dxSkinDarkSide, dxSkinDevExpressDarkStyle, dxSkinDevExpressStyle, dxSkinFoggy, dxSkinGlassOceans, dxSkinHighContrast, dxSkiniMaginary, dxSkinLilian, dxSkinLiquidSky, dxSkinLondonLiquidSky,
  dxSkinMcSkin, dxSkinMetropolis, dxSkinMetropolisDark, dxSkinMoneyTwins, dxSkinOffice2007Black, dxSkinOffice2007Blue, dxSkinOffice2007Green, dxSkinOffice2007Pink, dxSkinOffice2007Silver,
  dxSkinOffice2010Black, dxSkinOffice2010Blue, dxSkinOffice2010Silver, dxSkinOffice2013DarkGray, dxSkinOffice2013LightGray, dxSkinOffice2013White, dxSkinOffice2016Colorful, dxSkinOffice2016Dark,
  dxSkinPumpkin, dxSkinSeven, dxSkinSevenClassic, dxSkinSharp, dxSkinSharpPlus, dxSkinSilver, dxSkinSpringTime, dxSkinStardust, dxSkinSummer2008, dxSkinTheAsphaltWorld, dxSkinsDefaultPainters,
  dxSkinValentine, dxSkinVisualStudio2013Blue, dxSkinVisualStudio2013Dark, dxSkinVisualStudio2013Light, dxSkinVS2010, dxSkinWhiteprint, dxSkinXmas2008Blue, FireDAC.Stan.Intf, FireDAC.Stan.Option,
  FireDAC.Stan.Param, FireDAC.Stan.Error, FireDAC.DatS, FireDAC.Phys.Intf, FireDAC.DApt.Intf, FireDAC.Stan.Async, FireDAC.DApt;

type
  Tfrm_rel_pvw_vertical = class(TForm)
    DS_REPORT: TfrxDBDataset;
    FR_REPORT: TfrxReport;
    SQL_REPORT: TFDQuery;
    GridPanel1: TGridPanel;
    pvw_report: TfrxPreview;
    GridPanel2: TGridPanel;
    cxButton3: TcxButton;
    SQL_REPORTcodigo: TFDAutoIncField;
    SQL_REPORTdescricao_produto: TStringField;
    SQL_REPORTpreco_final_varejo: TBCDField;
    Edit1: TEdit;
    Button1: TButton;
    procedure cxButton3Click(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
    procedure FormShow(Sender: TObject);
    procedure Button1Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frm_rel_pvw_vertical: Tfrm_rel_pvw_vertical;

implementation

{$R *.dfm}

procedure Tfrm_rel_pvw_vertical.Button1Click(Sender: TObject);
begin
  SQL_REPORT.Close;
  SQL_REPORT.SQL.Clear;
  SQL_REPORT.Open('select PROD_CODIGO    AS CODIGO,           ');
  SQL_REPORT.Open('       PROD_DESCRICAO AS descricao_produto,');
  SQL_REPORT.Open('       preco_final_varejo                  ');
  SQL_REPORT.Open('  from PRODUTO_PROD                        ');
  SQL_REPORT.Open(' where PROD_CODIGO=?', [Edit1.Text]);
  FR_REPORT.LoadFromFile('D:\SMC_LIGHT\relatorios\produto.fr3');
  FR_REPORT.PrepareReport(true);
  FR_REPORT.Preview := pvw_report;
  pvw_report.Show
end;

procedure Tfrm_rel_pvw_vertical.cxButton3Click(Sender: TObject);
begin
  Close;
end;

procedure Tfrm_rel_pvw_vertical.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  Action := cafree;
  self := nil;
end;

procedure Tfrm_rel_pvw_vertical.FormKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
begin
  if Key = vk_escape then
    Close;
end;

procedure Tfrm_rel_pvw_vertical.FormShow(Sender: TObject);
begin
  FR_REPORT.LoadFromFile('D:\SMC_LIGHT\relatorios\produto.fr3');
  FR_REPORT.PrepareReport(true);
  FR_REPORT.Preview := pvw_report;
  pvw_report.Show
end;

end.
Trocou PROD_UNIDADE por PROD_UNIDADE : automaticamente em 16/06/2020 10:16
Trocou PROD_UNIDADE por PROD_UNIDADE : automaticamente em 16/06/2020 10:23
Trocou UNIDADE_MEDIDA por PROD_UNIDADE : automaticamente em 16/06/2020 11:04
