unit vw_vincular_nat_op;

interface

uses
  System.SysUtils, System.Variants, System.Classes,
  Vcl.Controls, Vcl.Forms, Vcl.StdCtrls,

  cxButtons, cxDBLookupComboBox,

  Data.DB, FireDAC.Comp.DataSet, FireDAC.Comp.Client,
  h_db, strutils, h_Dialogs, cxGraphics, cxControls, cxLookAndFeels, cxLookAndFeelPainters, cxContainer, cxEdit, dxSkinsCore, dxSkinBlack, dxSkinBlue, dxSkinBlueprint,
  dxSkinCaramel, dxSkinCoffee,
  dxSkinDarkRoom, dxSkinDarkSide, dxSkinDevExpressDarkStyle, dxSkinDevExpressStyle, dxSkinFoggy, dxSkinGlassOceans, dxSkinHighContrast, dxSkiniMaginary, dxSkinLilian,
  dxSkinLiquidSky,
  dxSkinLondonLiquidSky, dxSkinMcSkin, dxSkinMetropolis, dxSkinMetropolisDark, dxSkinMoneyTwins, dxSkinOffice2007Black, dxSkinOffice2007Blue, dxSkinOffice2007Green,
  dxSkinOffice2007Pink,
  dxSkinOffice2007Silver, dxSkinOffice2010Black, dxSkinOffice2010Blue, dxSkinOffice2010Silver, dxSkinOffice2013DarkGray, dxSkinOffice2013LightGray, dxSkinOffice2013White,
  dxSkinOffice2016Colorful,
  dxSkinOffice2016Dark, dxSkinPumpkin, dxSkinSeven, dxSkinSevenClassic, dxSkinSharp, dxSkinSharpPlus, dxSkinSilver, dxSkinSpringTime, dxSkinStardust, dxSkinSummer2008,
  dxSkinTheAsphaltWorld,
  dxSkinsDefaultPainters, dxSkinValentine, dxSkinVisualStudio2013Blue, dxSkinVisualStudio2013Dark, dxSkinVisualStudio2013Light, dxSkinVS2010, dxSkinWhiteprint, dxSkinXmas2008Blue,
  Vcl.Menus,
  FireDAC.Stan.Intf, FireDAC.Stan.Option, FireDAC.Stan.Param, FireDAC.Stan.Error, FireDAC.DatS, FireDAC.Phys.Intf, FireDAC.DApt.Intf, FireDAC.Stan.Async, FireDAC.DApt, cxTextEdit,
  cxMaskEdit,
  cxDropDownEdit, cxLookupEdit, cxDBLookupEdit;

type
  Tfrm_vincular_nat_op = class(TForm)
    edt_nat_op_xml: TEdit;
    Label1: TLabel;
    Label2: TLabel;
    cb_itens: TcxLookupComboBox;
    btn_concluir: TcxButton;
    SQL_NAT_OP: TFDQuery;
    DS_NAT_OP: TDataSource;
    SQL_NAT_OPID: TFDAutoIncField;
    SQL_NAT_OPDESCRICAO: TStringField;
    SQL_NAT_OPFINALIDADE_NFE: TStringField;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure btn_concluirClick(Sender: TObject);
    procedure FormShow(Sender: TObject);
  private
    { Private declarations }
    m_cod_nat_op, m_cod_nfe: integer;
    m_nat_op_xml, m_nat_op_nfe: string;
  public
    { Public declarations }
    constructor create(AOwner: TComponent; no_xml, no_nfe: string; cod_nfe: integer); overload;
    procedure genFilter(tipoNF, Finalidade, Estado: String);

  end;

var
  frm_vincular_nat_op: Tfrm_vincular_nat_op;

implementation

{$R *.dfm}

procedure Tfrm_vincular_nat_op.btn_concluirClick(Sender: TObject);
var
  qry: TFDQuery;
begin

  if cb_itens.ItemIndex <> -1 then
  begin
    m_cod_nat_op := cb_itens.EditValue;
    Tdb.ExecQuery('update nfe set id_nat_op = ? where id = ?', [m_cod_nat_op, m_cod_nfe]);
    m_nat_op_nfe := cb_itens.text;
    close;
  end
  else
  begin
    tdialogs.wnerro('Natureza de Operação', 'Uma natureza de operação deve ser selecionada!');
    cb_itens.SetFocus;
  end;

end;

constructor Tfrm_vincular_nat_op.create(AOwner: TComponent; no_xml, no_nfe: string; cod_nfe: integer);
begin
  inherited create(AOwner);
  edt_nat_op_xml.text := no_xml;
  m_nat_op_xml := no_xml;
  m_nat_op_nfe := no_nfe;
  m_cod_nat_op := Tdb.SimpleQuery('select id_nat_op from nfe where id = ?', [cod_nfe]).Fields[0].asInteger;
  m_cod_nfe := cod_nfe;
end;

procedure Tfrm_vincular_nat_op.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  Action := cafree;
  self := nil;
end;

procedure Tfrm_vincular_nat_op.FormShow(Sender: TObject);
begin

  SQL_NAT_OP.active := false;
  SQL_NAT_OP.active := true;
  SQL_NAT_OP.FetchAll;
  while not SQL_NAT_OP.eof do
  begin
    if SQL_NAT_OP.FieldByName('ID').asInteger = m_cod_nat_op then
    begin
      cb_itens.ItemIndex := SQL_NAT_OP.recno - 1;
      Break;
    end
    else
      SQL_NAT_OP.Next;
  end;
  cb_itens.SetFocus;

end;

procedure Tfrm_vincular_nat_op.genFilter(tipoNF, Finalidade, Estado: String);
begin

  with SQL_NAT_OP do
  begin
    close;
    sql.Clear;
    open('SELECT * FROM natureza_operacao WHERE TIPO_NF = ? AND FINALIDADE_NFE = ? AND ESTADO = ?', [tipoNF, Finalidade, Estado]);
  end;

end;

end.
