{ 21.11.16 16:59 }
unit visualizar_nfc_e;

interface

uses
  Winapi.Windows, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms,

  Vcl.StdCtrls, cxButtons, Vcl.Grids, Vcl.Mask, Vcl.DBCtrls,
  Vcl.ExtCtrls,
  FireDAC.Stan.Param,
  Data.DB,
  FireDAC.Comp.DataSet, FireDAC.Comp.Client, ADODB, DBGrids, XMLDoc,
  XMLIntf, ShellAPI, cxGraphics, cxLookAndFeels, cxLookAndFeelPainters, Vcl.Menus, dxSkinsCore, dxSkinBlack, dxSkinBlue, dxSkinBlueprint, dxSkinCaramel, dxSkinCoffee,
  dxSkinDarkRoom, dxSkinDarkSide,
  dxSkinDevExpressDarkStyle, dxSkinDevExpressStyle, dxSkinFoggy, dxSkinGlassOceans, dxSkinHighContrast, dxSkiniMaginary, dxSkinLilian, dxSkinLiquidSky, dxSkinLondonLiquidSky,
  dxSkinMcSkin,
  dxSkinMetropolis, dxSkinMetropolisDark, dxSkinMoneyTwins, dxSkinOffice2007Black, dxSkinOffice2007Blue, dxSkinOffice2007Green, dxSkinOffice2007Pink, dxSkinOffice2007Silver,
  dxSkinOffice2010Black,
  dxSkinOffice2010Blue, dxSkinOffice2010Silver, dxSkinOffice2013DarkGray, dxSkinOffice2013LightGray, dxSkinOffice2013White, dxSkinOffice2016Colorful, dxSkinOffice2016Dark,
  dxSkinPumpkin, dxSkinSeven,
  dxSkinSevenClassic, dxSkinSharp, dxSkinSharpPlus, dxSkinSilver, dxSkinSpringTime, dxSkinStardust, dxSkinSummer2008, dxSkinTheAsphaltWorld, dxSkinsDefaultPainters,
  dxSkinValentine,
  dxSkinVisualStudio2013Blue, dxSkinVisualStudio2013Dark, dxSkinVisualStudio2013Light, dxSkinVS2010, dxSkinWhiteprint, dxSkinXmas2008Blue, FireDAC.Stan.Intf, FireDAC.Stan.Option,
  FireDAC.Stan.Error,
  FireDAC.DatS, FireDAC.Phys.Intf, FireDAC.DApt.Intf, FireDAC.Stan.Async, FireDAC.DApt, dxGDIPlusClasses;

type
  TFRM_visualizar_nfc_e = class(TForm)
    GroupBox1: TGroupBox;
    GroupBox2: TGroupBox;
    Label1: TLabel;
    Label2: TLabel;
    Label3: TLabel;
    DBEdit1: TDBEdit;
    DBEdit2: TDBEdit;
    DBEdit3: TDBEdit;
    GroupBox4: TGroupBox;
    Label12: TLabel;
    Label13: TLabel;
    Label14: TLabel;
    cnpjcpf: TDBEdit;
    DBEdit12: TDBEdit;
    DBEdit13: TDBEdit;
    BtnGravar: TcxButton;
    BtnAlterar: TcxButton;
    BtnCancelar: TcxButton;
    img1: TImage;
    SQL_NFCE: TFDQuery;
    DS_NFCE: TDataSource;
    SQL_NFCE_ITENS: TFDQuery;
    DS_NFCE_ITENS: TDataSource;
    Label16: TLabel;
    DBEdit4: TDBEdit;
    Label20: TLabel;
    DBEdit18: TDBEdit;
    Label21: TLabel;
    DBEdit19: TDBEdit;
    SQL_NFCE_ITENSCODIGO_VENDA: TIntegerField;
    SQL_NFCE_ITENSCODIGO_ITEM_VENDA: TIntegerField;
    SQL_NFCE_ITENSCODIGO_PRODUTO: TIntegerField;
    SQL_NFCE_ITENSDESCRICAO_PRODUTO: TStringField;
    SQL_NFCE_ITENSCODIGO_BARRAS: TStringField;
    SQL_NFCE_ITENSNCM: TStringField;
    SQL_NFCE_ITENSCEST: TStringField;
    SQL_NFCE_ITENSCFOP: TStringField;
    SQL_NFCE_ITENSCSOSN: TStringField;
    SQL_NFCE_ITENSICMS_CST: TStringField;
    SQL_NFCE_ITENSALIQ_ICMS: TBCDField;
    SQL_NFCECODIGO: TFDAutoIncField;
    SQL_NFCEDATA_EMISSAO: TDateField;
    SQL_NFCEHORA_EMISSAO: TTimeField;
    SQL_NFCEDATA_TRANSMISSAO: TDateField;
    SQL_NFCEHORA_TRANSMISSAO: TTimeField;
    SQL_NFCEVALOR_NFCE: TBCDField;
    SQL_NFCEACRESCIMOS_NFCE: TBCDField;
    SQL_NFCEDESCONTOS_NFCE: TBCDField;
    SQL_NFCETOTAL_NFCE: TBCDField;
    SQL_NFCEVALOR_PAGO: TBCDField;
    SQL_NFCETROCO: TBCDField;
    SQL_NFCELOTE: TStringField;
    SQL_NFCESERIE: TStringField;
    SQL_NFCECHAVE: TStringField;
    SQL_NFCESTATUS_NFCE: TStringField;
    SQL_NFCETOTAL_VENDA: TBCDField;
    SQL_NFCEDATA_VENDA: TDateField;
    SQL_NFCEHORA_VENDA: TTimeField;
    SQL_NFCE_ITENSPIS_CST: TStringField;
    SQL_NFCE_ITENSCOFINS_CST: TStringField;
    SQL_NFCE_ITENSUNIDADE_MEDIDA: TStringField;
    SQL_NFCE_ITENSQUANTIDADE: TSingleField;
    SQL_NFCE_ITENSPRECO: TBCDField;
    SQL_NFCE_ITENSACRESCIMO: TBCDField;
    SQL_NFCE_ITENSDESCONTO: TBCDField;
    SQL_NFCE_ITENSPRECO_TOTAL: TBCDField;
    GridPagamentos: TDBGrid;
    SQL_NFCE_PAGAMENTOS: TFDQuery;
    DS_NFCE_PAGAMENTOS: TDataSource;
    SQL_NFCE_PAGAMENTOSTIPO_PAGAMENTO: TStringField;
    SQL_NFCE_PAGAMENTOSTOTAL_PAGO: TBCDField;
    SQL_NFCE_PAGAMENTOSVALOR_DEBITADO: TBCDField;
    GridItens: TDBGrid;
    SQL_NFCERETORNO_NFCE: TStringField;
    SQL_NFCEERRO_ROTINA: TStringField;
    SQL_NFCECAMINHO_XML: TStringField;
    btnVisualizarXml: TcxButton;
    GroupBox6: TGroupBox;
    GroupBox3: TGroupBox;
    Label4: TLabel;
    Label7: TLabel;
    Label8: TLabel;
    Label9: TLabel;
    Label10: TLabel;
    Label15: TLabel;
    Label6: TLabel;
    Label17: TLabel;
    Label22: TLabel;
    Label28: TLabel;
    DBEdit6: TDBEdit;
    ppppppppp: TDBEdit;
    DBEdit8: TDBEdit;
    DBEdit9: TDBEdit;
    DBEdit14: TDBEdit;
    DBEdit5: TDBEdit;
    DBEdit7: TDBEdit;
    DBEdit20: TDBEdit;
    GroupBox5: TGroupBox;
    Label25: TLabel;
    Label26: TLabel;
    Label27: TLabel;
    DBEdit22: TDBEdit;
    DBEdit23: TDBEdit;
    DBEdit24: TDBEdit;
    DBEdit25: TDBEdit;
    chaveacesso: TDBEdit;
    SQL_NFCETIPO_EMISSAO: TStringField;
    DBEdit17: TDBEdit;
    DBEdit10: TDBEdit;
    DBEdit16: TDBEdit;
    DBEdit15: TDBEdit;
    DBEdit11: TDBEdit;
    DBEdit21: TDBEdit;
    Label24: TLabel;
    Label23: TLabel;
    Label11: TLabel;
    Label19: TLabel;
    Label18: TLabel;
    Label5: TLabel;
    SQL_NFCECODIGO_VENDA: TStringField;
    SQL_NFCENOME_CLIENTE: TStringField;
    SQL_NFCECPF_CLIENTE: TStringField;
    SQL_NFCEIE_CLIENTE: TStringField;
    SQL_NFCEOPERADOR: TStringField;
    SQL_NFCECAIXA: TStringField;
    procedure GridPagamentosDrawColumnCell(Sender: TObject; const Rect: TRect; DataCol: Integer; Column: TColumn; State: TGridDrawState);
    procedure GridItensDrawColumnCell(Sender: TObject; const Rect: TRect; DataCol: Integer; Column: TColumn; State: TGridDrawState);
    procedure BtnAlterarClick(Sender: TObject);
    procedure BtnGravarClick(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure FormKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
    procedure GridItensDblClick(Sender: TObject);
    procedure AtualizarDadosXML;
    procedure btnVisualizarXmlClick(Sender: TObject);
    procedure BtnCancelarClick(Sender: TObject);
    procedure DBEdit14Change(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FRM_visualizar_nfc_e: TFRM_visualizar_nfc_e;

implementation

uses
  u_funcoes, cadastro_produto;

{$R *.dfm}

procedure TFRM_visualizar_nfc_e.AtualizarDadosXML;
begin
  if BtnAlterar.visible = false then
  begin
    BtnAlterar.Show;
    CamposEditaveis([TEDIT(DBEdit12), TEDIT(cnpjcpf), TEDIT(DBEdit13)], false);
    BtnCancelar.Enabled := false;
    SQL_NFCE.Post;
    WnInfo('NFC-e', slinebreak + 'Alterações concluídas com sucesso!');
    AlterarEnabled([GroupBox4], false);
  end;
end;

procedure TFRM_visualizar_nfc_e.BtnAlterarClick(Sender: TObject);
begin
  if BtnAlterar.Enabled then
  begin
    SQL_NFCE.Edit;
    BtnAlterar.visible := false;
    BtnCancelar.Enabled := true;
    AlterarEnabled([GroupBox4], true);
    CamposEditaveis([TEDIT(DBEdit12), TEDIT(cnpjcpf), TEDIT(DBEdit13)], true);
    DBEdit12.SelectAll;
    DBEdit12.SetFocus;
  end;
end;

procedure TFRM_visualizar_nfc_e.BtnCancelarClick(Sender: TObject);
begin
  if BtnAlterar.visible = false then
  begin
    SQL_NFCE.Cancel;
    BtnAlterar.Show;
    CamposEditaveis([TEDIT(DBEdit12), TEDIT(cnpjcpf), TEDIT(DBEdit13)], false);
    AlterarEnabled([GroupBox4, BtnCancelar], false);
  end;
end;

procedure TFRM_visualizar_nfc_e.BtnGravarClick(Sender: TObject);
begin
  AtualizarDadosXML;
end;

procedure TFRM_visualizar_nfc_e.btnVisualizarXmlClick(Sender: TObject);
begin
  if FileExists(DBEdit24.Text) then
    ShellExecute(0, 'open', PChar(DBEdit24.Text), nil, nil, SW_SHOWNORMAL);
end;

procedure TFRM_visualizar_nfc_e.DBEdit14Change(Sender: TObject);
begin
  DBEdit14.color := clWhite;
  DBEdit14.color := ColorByStatus(SQL_NFCESTATUS_NFCE.Value, ['AUTORIZADA', 'CANCELADA', 'PENDENTE', 'INUTILIZADA'], [clWebDarkgreen, clMaroon, clWEBOrange, clSilver]);
end;

procedure TFRM_visualizar_nfc_e.FormKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
begin
  TeclasAtalho(Key, [VK_F1, VK_F2, VK_F3], [BtnAlterar, BtnGravar, BtnCancelar]);
  if Key = VK_ESCAPE then
    Close;
end;

procedure TFRM_visualizar_nfc_e.FormShow(Sender: TObject);
begin
  if SQL_NFCESTATUS_NFCE.Value = 'PENDENTE' then
  begin
    BtnAlterar.Enabled := true;
  end
  else
  begin
    BtnAlterar.Enabled := false;
  end;
  AlterarEnabled([GroupBox2, GroupBox3, GroupBox4], false);
end;

procedure TFRM_visualizar_nfc_e.GridItensDblClick(Sender: TObject);
begin
  if not clickontittle(GridItens) then
    if not BtnAlterar.visible then
    begin
      if not VerificaAberta(Frm_produto) then
        Frm_produto := TFrm_Produto.Create(nil);
      with Frm_produto do
      begin
        Frm_produto.consultarultimo := false;
        with SQL_PRODUTO do
        begin
          Close;
          ParamByName('pcodigo').Value := SQL_NFCE_ITENSCODIGO_PRODUTO.Value;
          Open;
        end;
        visible := false;
        Show;
        BtnAlterar.Click;
      end;
    end;
end;

procedure TFRM_visualizar_nfc_e.GridItensDrawColumnCell(Sender: TObject; const Rect: TRect; DataCol: Integer; Column: TColumn; State: TGridDrawState);
begin
  GridZebrado(GridItens, Rect, DataCol, Column, State);
end;

procedure TFRM_visualizar_nfc_e.GridPagamentosDrawColumnCell(Sender: TObject; const Rect: TRect; DataCol: Integer; Column: TColumn; State: TGridDrawState);
begin
  GridZebrado(GridPagamentos, Rect, DataCol, Column, State);
end;

end.
