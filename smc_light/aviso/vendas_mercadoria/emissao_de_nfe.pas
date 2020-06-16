//Verificado automaticamente em 16/06/2020 09:26
unit emissao_de_nfe;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, cxGraphics, cxControls,
  cxLookAndFeels, cxLookAndFeelPainters, dxSkinsCore, dxSkinBlack,
  dxSkinBlue, dxSkinBlueprint, dxSkinCaramel, dxSkinCoffee, dxSkinDarkRoom,
  dxSkinDarkSide, dxSkinDevExpressDarkStyle, dxSkinDevExpressStyle,
  dxSkinFoggy, dxSkinGlassOceans, dxSkinHighContrast, dxSkiniMaginary,
  dxSkinLilian, dxSkinLiquidSky, dxSkinLondonLiquidSky, dxSkinMcSkin,
  dxSkinMetropolis, dxSkinMetropolisDark, dxSkinMoneyTwins,
  dxSkinOffice2007Black, dxSkinOffice2007Blue, dxSkinOffice2007Green,
  dxSkinOffice2007Pink, dxSkinOffice2007Silver, dxSkinOffice2010Black,
  dxSkinOffice2010Blue, dxSkinOffice2010Silver, dxSkinOffice2013DarkGray,
  dxSkinOffice2013LightGray, dxSkinOffice2013White,
  dxSkinOffice2016Colorful, dxSkinOffice2016Dark, dxSkinPumpkin,
  dxSkinSeven, dxSkinSevenClassic, dxSkinSharp, dxSkinSharpPlus,
  dxSkinSilver, dxSkinSpringTime, dxSkinStardust, dxSkinSummer2008,
  dxSkinTheAsphaltWorld, dxSkinsDefaultPainters, dxSkinValentine,
  dxSkinVisualStudio2013Blue, dxSkinVisualStudio2013Dark,
  dxSkinVisualStudio2013Light, dxSkinVS2010, dxSkinWhiteprint,
  dxSkinXmas2008Blue, dxSkinscxPCPainter, dxBarBuiltInMenu, cxStyles,
  cxCustomData, cxFilter, cxData, cxDataStorage, cxEdit, cxNavigator,
  Data.DB, cxDBData, cxContainer, Vcl.Menus, Vcl.StdCtrls, Vcl.ExtCtrls,
  cxTextEdit, cxMaskEdit, cxDropDownEdit, Vcl.ComCtrls, cxButtons,
  cxGroupBox, Vcl.Mask, Vcl.DBCtrls, cxGridLevel, cxGridCustomTableView,
  cxGridTableView, cxGridDBTableView, cxClasses, cxGridCustomView, cxGrid,
  cxPC, dxCore, cxDateUtils, cxCheckBox, cxCalendar, Vcl.Grids, Vcl.DBGrids,
  cxRadioGroup, cxLabel;

type
  Tfrm_emissor_nfe = class(TForm)
    cxPageControl1: TcxPageControl;
    tb_consulta: TcxTabSheet;
    tb_pedido: TcxTabSheet;
    Shape1: TShape;
    Label24: TLabel;
    Shape2: TShape;
    Label25: TLabel;
    Label26: TLabel;
    Label28: TLabel;
    Label29: TLabel;
    Label21: TLabel;
    Label22: TLabel;
    Label5: TLabel;
    DBEdit20: TDBEdit;
    DBEdit21: TDBEdit;
    DBEdit22: TDBEdit;
    DBEdit23: TDBEdit;
    cxGrid1: TcxGrid;
    cxGridDBTableView1: TcxGridDBTableView;
    cxGridDBTableView1Column3: TcxGridDBColumn;
    cxGridDBTableView1Column1: TcxGridDBColumn;
    cxGridDBTableView1Column2: TcxGridDBColumn;
    cxGridDBTableView1Column4: TcxGridDBColumn;
    cxGridDBTableView1Column5: TcxGridDBColumn;
    cxGridDBTableView1Column6: TcxGridDBColumn;
    cxGridDBTableView1Column7: TcxGridDBColumn;
    cxGridDBTableView1Column9: TcxGridDBColumn;
    cxGridDBTableView1Column10: TcxGridDBColumn;
    cxGridLevel1: TcxGridLevel;
    cxComboBox3: TcxComboBox;
    cxGroupBox1: TcxGroupBox;
    Label6: TLabel;
    Label3: TLabel;
    cxGroupBox2: TcxGroupBox;
    Panel1: TPanel;
    btn_status: TcxButton;
    btn_danfe: TcxButton;
    btn_transmitir: TcxButton;
    btn_inutilizar_nfce: TcxButton;
    btn_cancelar: TcxButton;
    btn_atualizar_info: TcxButton;
    btn_enviar: TcxButton;
    GroupBox7: TGroupBox;
    Label20: TLabel;
    Edit2: TEdit;
    RadioButton3: TRadioButton;
    RadioButton4: TRadioButton;
    RadioButton5: TRadioButton;
    RadioButton6: TRadioButton;
    GroupBox1: TGroupBox;
    Label16: TLabel;
    Label17: TLabel;
    Label19: TLabel;
    edt_periodo_inicio: TcxDateEdit;
    edt_periodo_fim: TcxDateEdit;
    CB_MES: TcxComboBox;
    GroupBox6: TGroupBox;
    Label8: TLabel;
    Label12: TLabel;
    edt_nfce_fim: TEdit;
    edt_nfce_inicio: TEdit;
    GroupBox4: TGroupBox;
    chk_normal: TcxCheckBox;
    chk_contingencia: TcxCheckBox;
    DBGrid1: TDBGrid;
    GroupBox3: TGroupBox;
    chk_autorizadas: TcxCheckBox;
    chk_inutilizadas: TcxCheckBox;
    chk_canceladas: TcxCheckBox;
    chk_pendentes: TcxCheckBox;
    cxCheckBox1: TcxCheckBox;
    lb_total_nfce: TLabel;
    Label7: TLabel;
    lbl_qtde: TLabel;
    cxButton4: TcxButton;
    cxButton5: TcxButton;
    cxButton6: TcxButton;
    cxButton12: TcxButton;
    cxButton13: TcxButton;
    Label23: TLabel;
    cxCheckBox2: TcxCheckBox;
    cxGridDBTableView1Column11: TcxGridDBColumn;
    cxGridDBTableView1Column12: TcxGridDBColumn;
    cxGridDBTableView1Column13: TcxGridDBColumn;
    cxGridDBTableView1Column14: TcxGridDBColumn;
    cxGridDBTableView1Column8: TcxGridDBColumn;
    GroupBox2: TGroupBox;
    cxRadioButton3: TcxRadioButton;
    cxRadioButton4: TcxRadioButton;
    Label27: TLabel;
    Label30: TLabel;
    Label31: TLabel;
    Label1: TLabel;
    Label2: TLabel;
    Label4: TLabel;
    Label9: TLabel;
    Label11: TLabel;
    Label10: TLabel;
    Label15: TLabel;
    Label32: TLabel;
    Label35: TLabel;
    Label18: TLabel;
    Label36: TLabel;
    Label37: TLabel;
    Label38: TLabel;
    Label39: TLabel;
    Label40: TLabel;
    Label41: TLabel;
    Label42: TLabel;
    Label43: TLabel;
    Label44: TLabel;
    Label45: TLabel;
    Label13: TLabel;
    Label14: TLabel;
    Label33: TLabel;
    Label34: TLabel;
    Label46: TLabel;
    Label47: TLabel;
    cxGridDBTableView1Column16: TcxGridDBColumn;
    Shape3: TShape;
    cxGroupBox3: TcxGroupBox;
    BtnCancelar: TcxButton;
    BtnAlterar: TcxButton;
    cxButton2: TcxButton;
    cxButton8: TcxButton;
    cxButton7: TcxButton;
    cxButton11: TcxButton;
    cxLabel2: TcxLabel;
    GroupBox5: TGroupBox;
    cxRadioButton1: TcxRadioButton;
    cxRadioButton2: TcxRadioButton;
    Edit1: TEdit;
    Edit3: TEdit;
    Edit4: TEdit;
    Edit5: TEdit;
    Edit6: TEdit;
    Edit7: TEdit;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure cxButton7Click(Sender: TObject);
    procedure cxButton8Click(Sender: TObject);
    procedure cxButton2Click(Sender: TObject);
    procedure cxButton3Click(Sender: TObject);
    procedure cxButton6Click(Sender: TObject);
    procedure cxButton4Click(Sender: TObject);
    procedure cxButton12Click(Sender: TObject);
    procedure cxButton13Click(Sender: TObject);
    procedure cxButton5Click(Sender: TObject);
    procedure btn_atualizar_infoClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frm_emissor_nfe: Tfrm_emissor_nfe;

implementation

{$R *.dfm}

uses nfe_nota_referenciada,  nfe_tributacao, nfe_financeiro,
  cad_transportador, nfe_consulta_carta_correcao, controle_taxa_cartao,
  nfe_carta_correcao, nfe_enviar_email, nfe_dados_transporte, inutilizar_faixa;


procedure Tfrm_emissor_nfe.btn_atualizar_infoClick(Sender: TObject);
begin
Frm_Inutilizar_Faixa := TFrm_Inutilizar_Faixa.Create(nil);
Frm_Inutilizar_Faixa.ShowModal;
end;

procedure Tfrm_emissor_nfe.cxButton12Click(Sender: TObject);
begin
tb_pedido.Show;
end;

procedure Tfrm_emissor_nfe.cxButton13Click(Sender: TObject);
begin
tb_pedido.Show;
end;

procedure Tfrm_emissor_nfe.cxButton2Click(Sender: TObject);
begin
frm_dados_transporte := Tfrm_dados_transporte.Create(nil);
frm_dados_transporte.ShowModal;
end;

procedure Tfrm_emissor_nfe.cxButton3Click(Sender: TObject);
begin
frm_nfe_financeiro := Tfrm_nfe_financeiro.Create(nil);
frm_nfe_financeiro.ShowModal;
end;

procedure Tfrm_emissor_nfe.cxButton4Click(Sender: TObject);
begin
frm_enviar_email :=Tfrm_enviar_email.Create(nil);
frm_enviar_email.ShowModal;
end;

procedure Tfrm_emissor_nfe.cxButton5Click(Sender: TObject);
begin
tb_pedido.Show;
end;

procedure Tfrm_emissor_nfe.cxButton6Click(Sender: TObject);
begin
frm_carta_correcao := Tfrm_carta_correcao.Create(nil);
frm_carta_correcao.ShowModal;

end;

procedure Tfrm_emissor_nfe.cxButton7Click(Sender: TObject);
begin
frm_nfe_tributacao := Tfrm_nfe_tributacao.Create(nil);
frm_nfe_tributacao.ShowModal;
end;

procedure Tfrm_emissor_nfe.cxButton8Click(Sender: TObject);
begin
frm_nfe_notas_ref := Tfrm_nfe_notas_ref.Create(nil);
frm_nfe_notas_ref.ShowModal;
end;

procedure Tfrm_emissor_nfe.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  Action := cafree;
  self := nil;
end;

end.
