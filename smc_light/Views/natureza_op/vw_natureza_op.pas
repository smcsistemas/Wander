unit vw_natureza_op;
{
================================================================================
|   DATA   |DESENVOLVEDOR|HISTORICO DA ALTERACAO DO CODIGO                     |
|----------|-------------|-----------------------------------------------------|
|31/03/2020|WANDER       |Passou a tratar ESTADO = 'EXTERIOR'                  |
|        57|             |                                                     |
================================================================================
}

interface

uses
  Winapi.Windows, System.SysUtils, System.Variants, System.Classes,
  Vcl.Controls, Vcl.Forms,
  cxMemo, Vcl.StdCtrls, cxGroupBox, Vcl.Menus, cxButtons,
  Data.DB, cxGridLevel,
  cxGridCustomTableView, cxGridTableView, cxGridDBTableView, cxGrid, cxDropDownEdit,
  FireDAC.Comp.DataSet,
  FireDAC.Comp.Client, h_Functions, m_Natureza_Op, h_Dialogs, cxRadioGroup, cxGraphics, cxLookAndFeels, cxLookAndFeelPainters, dxSkinsCore, dxSkinBlack, dxSkinBlue, dxSkinBlueprint, dxSkinCaramel,
  dxSkinCoffee, dxSkinDarkRoom, dxSkinDarkSide, dxSkinDevExpressDarkStyle, dxSkinDevExpressStyle, dxSkinFoggy, dxSkinGlassOceans, dxSkinHighContrast, dxSkiniMaginary, dxSkinLilian, dxSkinLiquidSky,
  dxSkinLondonLiquidSky, dxSkinMcSkin, dxSkinMetropolis, dxSkinMetropolisDark, dxSkinMoneyTwins, dxSkinOffice2007Black, dxSkinOffice2007Blue, dxSkinOffice2007Green, dxSkinOffice2007Pink,
  dxSkinOffice2007Silver, dxSkinOffice2010Black, dxSkinOffice2010Blue, dxSkinOffice2010Silver, dxSkinOffice2013DarkGray, dxSkinOffice2013LightGray, dxSkinOffice2013White, dxSkinOffice2016Colorful,
  dxSkinOffice2016Dark, dxSkinPumpkin, dxSkinSeven, dxSkinSevenClassic, dxSkinSharp, dxSkinSharpPlus, dxSkinSilver, dxSkinSpringTime, dxSkinStardust, dxSkinSummer2008, dxSkinTheAsphaltWorld,
  dxSkinsDefaultPainters, dxSkinValentine, dxSkinVisualStudio2013Blue, dxSkinVisualStudio2013Dark, dxSkinVisualStudio2013Light, dxSkinVS2010, dxSkinWhiteprint, dxSkinXmas2008Blue, cxControls,
  cxContainer, cxEdit, cxStyles, dxSkinscxPCPainter, cxCustomData, cxFilter, cxData, cxDataStorage, cxNavigator, cxDBData, cxLabel, FireDAC.Stan.Intf, FireDAC.Stan.Option, FireDAC.Stan.Param,
  FireDAC.Stan.Error, FireDAC.DatS, FireDAC.Phys.Intf, FireDAC.DApt.Intf, FireDAC.Stan.Async, FireDAC.DApt, cxClasses, cxGridCustomView, cxMaskEdit, cxTextEdit;

type
  Tfrm_natureza_op = class(TForm)
    SQL_NAT: TFDQuery;
    DS_NAT: TDataSource;
    grNatOP: TcxGroupBox;
    mmNatOp: TcxMemo;
    grCFOP: TcxGroupBox;
    Label3: TLabel;
    edt_cfop_ti: TEdit;
    edt_cfop_st: TEdit;
    btnIncluir: TcxButton;
    btnCancelar: TcxButton;
    cbField: TcxComboBox;
    edt_consulta: TEdit;
    gdNat: TcxGrid;
    tbView: TcxGridDBTableView;
    gdNatLevel1: TcxGridLevel;
    Label2: TLabel;
    Label1: TLabel;
    Label4: TLabel;
    cbAplicacao: TcxComboBox;
    Label5: TLabel;
    Label6: TLabel;
    cbTipo: TcxComboBox;
    btnGravar: TcxButton;
    tbViewDESCRICAO: TcxGridDBColumn;
    tbViewFINALIDADE_NFE: TcxGridDBColumn;
    tbViewCFOP_TI: TcxGridDBColumn;
    tbViewCFOP_ST: TcxGridDBColumn;
    tbViewTIPO_NF: TcxGridDBColumn;
    tbViewESTADO: TcxGridDBColumn;
    grTipoNF: TcxRadioGroup;
    chk_entrada: TcxRadioButton;
    chk_saida: TcxRadioButton;
    grEstado: TcxRadioGroup;
    chk_dentroe: TcxRadioButton;
    chk_forae: TcxRadioButton;
    grFinalidade: TcxRadioGroup;
    chk_normal: TcxRadioButton;
    chk_complementar: TcxRadioButton;
    chk_ajuste: TcxRadioButton;
    chk_devolucao: TcxRadioButton;
    tbViewID: TcxGridDBColumn;
    SQL_NATID: TFDAutoIncField;
    SQL_NATDESCRICAO: TStringField;
    SQL_NATFINALIDADE_NFE: TStringField;
    SQL_NATCFOP_TI: TIntegerField;
    SQL_NATCFOP_ST: TIntegerField;
    SQL_NATTIPO_NF: TStringField;
    SQL_NATESTADO: TStringField;
    popMenu: TPopupMenu;
    RemoverNatOp1: TMenuItem;
    chk_exteriore: TcxRadioButton;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormShow(Sender: TObject);
    procedure btnIncluirClick(Sender: TObject);
    procedure btnCancelarClick(Sender: TObject);
    procedure btnGravarClick(Sender: TObject);
    procedure edt_cfop_tiKeyPress(Sender: TObject; var Key: Char);
    procedure tbViewCellDblClick(Sender: TcxCustomGridTableView; ACellViewInfo: TcxGridTableDataCellViewInfo; AButton: TMouseButton;
      AShift: TShiftState; var AHandled: Boolean);
    procedure FormKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
    procedure edt_consultaKeyUp(Sender: TObject; var Key: Word; Shift: TShiftState);
    procedure cbAplicacaoPropertiesChange(Sender: TObject);
    procedure cbAplicacaoPropertiesEditValueChanged(Sender: TObject);
    procedure cbTipoPropertiesEditValueChanged(Sender: TObject);
    procedure cbFieldPropertiesEditValueChanged(Sender: TObject);
    procedure popMenuPopup(Sender: TObject);
    procedure RemoverNatOp1Click(Sender: TObject);

  private
    { Private declarations }
    Obj_Nat_Op: TNatureza_Op;
    allowPop: Boolean;
    procedure defaultLayout(dl: Boolean);
    procedure consultanatop;
  public
    { Public declarations }
  end;

var
  frm_natureza_op: Tfrm_natureza_op;

implementation

{$R *.dfm}

procedure Tfrm_natureza_op.btnCancelarClick(Sender: TObject);
begin
  defaultLayout(true);
end;

procedure Tfrm_natureza_op.btnGravarClick(Sender: TObject);
begin
  if Obj_Nat_Op = NIL then
    Obj_Nat_Op := TNatureza_Op.Create;
  try

    try
      Obj_Nat_Op.DESCRICAO := mmNatOp.Text;
      Obj_Nat_Op.FINALIDADE := TFunctions.ifthen([chk_normal.Checked, chk_complementar.Checked, chk_ajuste.Checked, chk_devolucao.Checked],
        ['1', '2', '3', '4']);

      Obj_Nat_Op.CFOP_TI := strtoint(TFunctions.ifthen(edt_cfop_ti.Text = '', '0', edt_cfop_ti.Text));
      Obj_Nat_Op.CFOP_ST := strtoint(TFunctions.ifthen(edt_cfop_st.Text = '', '0', edt_cfop_st.Text));

      Obj_Nat_Op.TIPO_NF := TFunctions.ifthen([chk_entrada.Checked, chk_saida.Checked], ['ENTRADA', 'SAIDA']);
      Obj_Nat_Op.ESTADO := TFunctions.ifthen([chk_dentroe.Checked, chk_forae.Checked, chk_exteriore.Checked], ['DENTRO', 'FORA','EXTERIOR']);
      Obj_Nat_Op.salvar;

      defaultLayout(true);
    except

      on e: exception do
        Tdialogs.wnErro('Natureza Operação', slinebreak + e.Message, 12);

    end;
  finally
    Obj_Nat_Op.Free;
  end;

end;

procedure Tfrm_natureza_op.btnIncluirClick(Sender: TObject);
begin
  defaultLayout(false);
end;

procedure Tfrm_natureza_op.cbAplicacaoPropertiesChange(Sender: TObject);
begin
  consultanatop;
end;

procedure Tfrm_natureza_op.cbAplicacaoPropertiesEditValueChanged(Sender: TObject);
begin
  consultanatop;
end;

procedure Tfrm_natureza_op.cbFieldPropertiesEditValueChanged(Sender: TObject);
begin
  consultanatop;
end;

procedure Tfrm_natureza_op.cbTipoPropertiesEditValueChanged(Sender: TObject);
begin
  consultanatop;
end;

procedure Tfrm_natureza_op.consultanatop;
var
  campo, tipo, aplicacao, consulta: String;

begin
  campo := TFunctions.ifthen(cbField.SelectedItem, [0, 1, 2, 3], ['DESCRICAO', 'cfop_ti', 'cfop_st', 'finalidade_nfe']);
  tipo := TFunctions.ifthen(cbTipo.SelectedItem, [0, 1], ['ENTRADA', 'SAIDA']);
  aplicacao := TFunctions.ifthen(cbAplicacao.SelectedItem, [0, 1, 2], ['DENTRO', 'FORA','EXTERIOR']);
  with SQL_NAT do
  begin
    close;
    SQL.Clear;
    if edt_consulta.Text <> '' then
    begin
      consulta := '"' + TFunctions.replace(edt_consulta.Text, '"', '') + '%"';
      open('SELECT * FROM natureza_operacao WHERE ' + campo + ' LIKE ' + consulta + ' AND TIPO_NF = ? AND ESTADO = ?', [tipo, aplicacao]);
    end
    else
      open('SELECT * FROM natureza_operacao');
  end;
  tbView.ViewData.Expand(true);

end;

procedure Tfrm_natureza_op.defaultLayout(dl: Boolean);
begin

  TFunctions.ChangeEnabled([grNatOP, grTipoNF, grEstado, grFinalidade, grCFOP, btnCancelar], not dl);

  chk_saida.Checked := not dl;
  chk_entrada.Checked := false;

  chk_dentroe.Checked   := not dl;
  chk_forae.Checked     := false;
  chk_exteriore.Checked := false;

  chk_normal.Checked := not dl;
  chk_ajuste.Checked := false;
  chk_complementar.Checked := false;
  chk_devolucao.Checked := false;

  mmNatOp.Clear;

  edt_cfop_ti.Clear;
  edt_cfop_st.Clear;

  btnIncluir.Visible := dl;

  cbField.ItemIndex := 0;
  cbTipo.ItemIndex := 1;
  cbAplicacao.ItemIndex := 0;

  SQL_NAT.close;
  if dl then
    SQL_NAT.open
  else
  begin
    mmNatOp.SelectAll;
    mmNatOp.SetFocus;
    SQL_NAT.close;
  end;

end;

procedure Tfrm_natureza_op.edt_cfop_tiKeyPress(Sender: TObject; var Key: Char);
begin
  inherited;
  Key := TFunctions.OnlyNumbers(Key);
end;

procedure Tfrm_natureza_op.edt_consultaKeyUp(Sender: TObject; var Key: Word; Shift: TShiftState);
begin
  if TFunctions.iskeynumletter(Key) then
    consultanatop;
end;

procedure Tfrm_natureza_op.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  Action := cafree;
  Self := nil;
end;

procedure Tfrm_natureza_op.FormKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
begin
  if Key = vk_escape then
    close;
end;

procedure Tfrm_natureza_op.FormShow(Sender: TObject);
begin
  defaultLayout(true);
end;

procedure Tfrm_natureza_op.popMenuPopup(Sender: TObject);
begin
  if tbView.Controller.FocusedRow is TcxGridGroupRow then
    abort;
end;

procedure Tfrm_natureza_op.RemoverNatOp1Click(Sender: TObject);
begin
  if Tdialogs.wnConfirmacao('Nat. Operação', slinebreak + 'Deseja excluir natureza de operação?') then
  begin
    TNatureza_Op.Create(SQL_NATID.AsInteger).deletar;
    tbView.DataController.RefreshExternalData;
    tbView.DataController.Refresh;
  end;
end;

procedure Tfrm_natureza_op.tbViewCellDblClick(Sender: TcxCustomGridTableView; ACellViewInfo: TcxGridTableDataCellViewInfo; AButton: TMouseButton;
  AShift: TShiftState; var AHandled: Boolean);
begin

  try
    if not(ACellViewInfo.Item.Index in [tbViewESTADO.Index, tbViewTIPO_NF.Index]) then
    begin
      Obj_Nat_Op := TNatureza_Op.Create(SQL_NATID.AsInteger); // get by Id

      defaultLayout(false);

      mmNatOp.Text := Obj_Nat_Op.DESCRICAO;
      edt_cfop_ti.Text := inttostr(Obj_Nat_Op.CFOP_TI);
      edt_cfop_st.Text := inttostr(Obj_Nat_Op.CFOP_ST);

      chk_entrada.Checked := (Obj_Nat_Op.TIPO_NF = 'ENTRADA');
      chk_saida.Checked := (Obj_Nat_Op.TIPO_NF = 'SAIDA');

      chk_dentroe.Checked   := (Obj_Nat_Op.ESTADO = 'DENTRO'  );
      chk_forae.Checked     := (Obj_Nat_Op.ESTADO = 'FORA'    );
      chk_exteriore.Checked := (Obj_Nat_Op.ESTADO = 'EXTERIOR');

      chk_normal.Checked := (Obj_Nat_Op.FINALIDADE = '1');
      chk_complementar.Checked := (Obj_Nat_Op.FINALIDADE = '2');
      chk_ajuste.Checked := (Obj_Nat_Op.FINALIDADE = '3');
      chk_devolucao.Checked := (Obj_Nat_Op.FINALIDADE = '4');

      mmNatOp.SelectAll;
      mmNatOp.SetFocus;
    end;

  except
    on e: exception do
      Tdialogs.wnErro('Natureza Operação', slinebreak + e.Message, 12);
  end;

end;

end.
