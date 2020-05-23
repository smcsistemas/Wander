unit smc_arquivos_fiscais;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, cxGraphics, cxControls, cxLookAndFeels,
  cxLookAndFeelPainters, cxStyles, dxSkinsCore, dxSkinscxPCPainter,
  cxCustomData, cxFilter, cxData, cxDataStorage, cxEdit, cxNavigator, Data.DB,
  cxDBData, cxGridLevel, cxGridCustomTableView, cxGridTableView,
  cxGridDBTableView, cxClasses, cxGridCustomView, cxGrid, cxContainer,
  Vcl.Menus, Vcl.StdCtrls, cxRadioGroup, cxTextEdit, cxMaskEdit, cxDropDownEdit,
  Vcl.ComCtrls, cxButtons, cxGroupBox, cxGridBandedTableView,
  cxGridDBBandedTableView, Vcl.ExtCtrls, FireDAC.Stan.Intf, FireDAC.Stan.Option,
  FireDAC.Stan.Param, FireDAC.Stan.Error, FireDAC.DatS, FireDAC.Phys.Intf,
  FireDAC.DApt.Intf, FireDAC.Stan.Async, FireDAC.DApt, FireDAC.Comp.Client,
  FireDAC.Comp.DataSet, dxSkinBlack, dxSkinBlue, dxSkinBlueprint, dxSkinCaramel,
  dxSkinCoffee, dxSkinDarkRoom, dxSkinDarkSide, dxSkinDevExpressDarkStyle,
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
  Tfmr_arquivos_fiscais = class(TForm)
    gdConveniados: TcxGrid;
    gdConveniadosTbVw: TcxGridDBTableView;
    gdConveniadosLv: TcxGridLevel;
    gdConveniadosTbVwColumn1: TcxGridDBColumn;
    gdConveniadosTbVwColumn2: TcxGridDBColumn;
    gdConveniadosTbVwColumn3: TcxGridDBColumn;
    gdConveniadosTbVwColumn4: TcxGridDBColumn;
    gdConveniadosTbVwColumn5: TcxGridDBColumn;
    gdConveniadosTbVwColumn6: TcxGridDBColumn;
    gdConveniadosTbVwColumn7: TcxGridDBColumn;
    gdConveniadosTbVwColumn8: TcxGridDBColumn;
    gdConveniadosTbVwColumn9: TcxGridDBColumn;
    gdConveniadosTbVwColumn10: TcxGridDBColumn;
    gdConveniadosTbVwColumn11: TcxGridDBColumn;
    gdConveniadosTbVwColumn12: TcxGridDBColumn;
    gdConveniadosTbVwColumn13: TcxGridDBColumn;
    gdConveniadosTbVwColumn14: TcxGridDBColumn;
    gdConveniadosTbVwColumn15: TcxGridDBColumn;
    cxGroupBox6: TcxGroupBox;
    Label20: TLabel;
    Label21: TLabel;
    cxButton13: TcxButton;
    DateTimePicker3: TDateTimePicker;
    DateTimePicker4: TDateTimePicker;
    cxComboBox4: TcxComboBox;
    Label1: TLabel;
    Edit1: TEdit;
    cxButton1: TcxButton;
    cxGroupBox5: TcxGroupBox;
    cxRadioButton1: TcxRadioButton;
    cxRadioButton2: TcxRadioButton;
    cxRadioButton3: TcxRadioButton;
    grid_otica: TcxGrid;
    grid_oticaDBBandedTableView1: TcxGridDBBandedTableView;
    Arq_data_aberto: TcxGridDBBandedColumn;
    Arq_data_espera: TcxGridDBBandedColumn;
    Arq_data_enviado: TcxGridDBBandedColumn;
    Arq_situacao_aberto: TcxGridDBBandedColumn;
    Arq_situacao_espera: TcxGridDBBandedColumn;
    Arq_situacao_enviado: TcxGridDBBandedColumn;
    dados_contato_whats: TcxGridDBBandedColumn;
    dados_contato_celular: TcxGridDBBandedColumn;
    dados_contato_contador: TcxGridDBBandedColumn;
    dados_contato_email: TcxGridDBBandedColumn;
    dados_cliente_razao_social: TcxGridDBBandedColumn;
    dados_cliente_nome_fantasia: TcxGridDBBandedColumn;
    dados_cliente_cnpj: TcxGridDBBandedColumn;
    dados_cliente_sistema: TcxGridDBBandedColumn;
    grid_oticaLevel1: TcxGridLevel;
    Arq_data_tecnico: TcxGridDBBandedColumn;
    cxButton3: TcxButton;
    Shape1: TShape;
    Label2: TLabel;
    Label3: TLabel;
    Shape2: TShape;
    Label4: TLabel;
    Label5: TLabel;
    Shape3: TShape;
    Label6: TLabel;
    Label7: TLabel;
    Shape4: TShape;
    Label8: TLabel;
    Label9: TLabel;
    FDQuery1: TFDQuery;
    DataSource1: TDataSource;
    FDTable1: TFDTable;
    FDQuery1codigo: TIntegerField;
    FDQuery1RAZAO_SOCIAL: TStringField;
    FDQuery1NOME_FANTASIA: TStringField;
    FDQuery1CNPJ: TStringField;
    FDQuery1SISTEMA: TStringField;
    FDQuery1WHATSAPP: TStringField;
    FDQuery1CELULAR: TStringField;
    FDQuery1CONTADOR: TStringField;
    FDQuery1EMAIL: TStringField;
    FDQuery1ABERTO: TStringField;
    FDQuery1ESPERA: TStringField;
    FDQuery1ENVIADO: TStringField;
    FDQuery1AB_DATA: TStringField;
    FDQuery1ESP_DATA: TStringField;
    FDQuery1ENV_DATA: TStringField;
    FDQuery1TECNICO: TStringField;
    cxRadioButton4: TcxRadioButton;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  fmr_arquivos_fiscais: Tfmr_arquivos_fiscais;

implementation

{$R *.dfm}

uses S_Module;

procedure Tfmr_arquivos_fiscais.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  Action := cafree;
  self := nil;
end;

end.
