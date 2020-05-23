unit config_notas_banco;

interface

uses
  Winapi.Windows, System.SysUtils,
  System.Classes,
  Vcl.Controls, Vcl.Forms,

  Vcl.StdCtrls, Vcl.DBCtrls,
  cxButtons, cxDBEdit, cxPC,

  Data.DB,
  FireDAC.Comp.DataSet, FireDAC.Comp.Client, cxDropDownEdit,
  Printers,
  cxCheckBox, Vcl.Mask, FileCtrl, Vcl.ExtDlgs,
  h_functions, cxGraphics, cxControls, cxLookAndFeels, cxLookAndFeelPainters, dxSkinsCore, dxSkinBlack, dxSkinBlue, dxSkinBlueprint, dxSkinCaramel, dxSkinCoffee, dxSkinDarkRoom,
  dxSkinDarkSide,
  dxSkinDevExpressDarkStyle, dxSkinDevExpressStyle, dxSkinFoggy, dxSkinGlassOceans, dxSkinHighContrast, dxSkiniMaginary, dxSkinLilian, dxSkinLiquidSky, dxSkinLondonLiquidSky,
  dxSkinMcSkin,
  dxSkinMetropolis, dxSkinMetropolisDark, dxSkinMoneyTwins, dxSkinOffice2007Black, dxSkinOffice2007Blue, dxSkinOffice2007Green, dxSkinOffice2007Pink, dxSkinOffice2007Silver,
  dxSkinOffice2010Black,
  dxSkinOffice2010Blue, dxSkinOffice2010Silver, dxSkinOffice2013DarkGray, dxSkinOffice2013LightGray, dxSkinOffice2013White, dxSkinOffice2016Colorful, dxSkinOffice2016Dark,
  dxSkinPumpkin, dxSkinSeven,
  dxSkinSevenClassic, dxSkinSharp, dxSkinSharpPlus, dxSkinSilver, dxSkinSpringTime, dxSkinStardust, dxSkinSummer2008, dxSkinTheAsphaltWorld, dxSkinsDefaultPainters,
  dxSkinValentine,
  dxSkinVisualStudio2013Blue, dxSkinVisualStudio2013Dark, dxSkinVisualStudio2013Light, dxSkinVS2010, dxSkinWhiteprint, dxSkinXmas2008Blue, dxSkinscxPCPainter, dxBarBuiltInMenu,
  cxContainer, cxEdit,
  Vcl.Menus, FireDAC.Stan.Intf, FireDAC.Stan.Option, FireDAC.Stan.Param, FireDAC.Stan.Error, FireDAC.DatS, FireDAC.Phys.Intf, FireDAC.DApt.Intf, FireDAC.Stan.Async, FireDAC.DApt,
  Vcl.Dialogs,
  cxTextEdit, cxMaskEdit, v_Dir, v_Env, cxGroupBox;

type
  TFrm_Conf__Nfce = class(TForm)
    cxPageControl1: TcxPageControl;
    cxTabSheet1: TcxTabSheet;
    grp6: TGroupBox;
    grp_geral: TGroupBox;
    grp11: TGroupBox;
    grp_certificado: TGroupBox;
    cxTabSheet2: TcxTabSheet;
    grp1: TGroupBox;
    SQL_CONFIG_NOTAS: TFDQuery;
    grp_csc: TGroupBox;
    Label1: TLabel;
    Label5: TLabel;
    grp_parametros_nfce: TGroupBox;
    chk_danfe_direto: TcxDBCheckBox;
    chk_visualizar_danfe: TcxDBCheckBox;
    chk_venda_gera_nfce: TcxDBCheckBox;
    chk_cartao_gera_nfce: TcxDBCheckBox;
    SQL_PARAMETROS_NFCE: TFDQuery;
    grp14: TGroupBox;
    Label10: TLabel;
    chk_nfce_comprovante: TcxDBCheckBox;
    grp_sequencia_nfce: TGroupBox;
    lbl1: TLabel;
    edt_ultima_nfce: TEdit;
    grp_grupo_nfce: TGroupBox;
    Label7: TLabel;
    Label8: TLabel;
    grp_impressora_nfce: TGroupBox;
    DS_CONFIG_NOTAS: TDataSource;
    DS_PARAMETROS_NFCE: TDataSource;
    dialogo: TOpenTextFileDialog;
    chk_homologacao: TcxCheckBox;
    chk_producao: TcxCheckBox;
    chk_normal: TcxCheckBox;
    chk_contingencia: TcxCheckBox;
    id_token: TDBEdit;
    id_csc: TDBEdit;
    nfce_lote: TDBEdit;
    nfce_serie: TDBEdit;
    SQL_CONFIG_NOTASCODIGO: TFDAutoIncField;
    SQL_CONFIG_NOTASCERTIFICADO: TMemoField;
    SQL_CONFIG_NOTASID_TOKEN: TStringField;
    SQL_CONFIG_NOTASCODIGO_CSC: TStringField;
    SQL_CONFIG_NOTASEMAIL_SMTP: TStringField;
    SQL_CONFIG_NOTASAMBIENTE: TStringField;
    SQL_CONFIG_NOTASSMT_SEGURO: TStringField;
    SQL_CONFIG_NOTASPORTA: TStringField;
    SQL_CONFIG_NOTASEMAIL: TStringField;
    SQL_CONFIG_NOTASSENHA: TStringField;
    SQL_CONFIG_NOTASNUMERO_SERIE_CERTIFICADO: TStringField;
    SQL_CONFIG_NOTASTIPO_NOTA: TStringField;
    cb_certificados: TcxComboBox;
    cb_nfce_impressoras: TcxComboBox;
    btnSair: TcxButton;
    btn_Alterar: TcxButton;
    btnGravar: TcxButton;
    cxDBCheckBox1: TcxDBCheckBox;
    SQL_PARAMETROS_NFCEUTILIZA_NFCE: TStringField;
    SQL_PARAMETROS_NFCEIMPRIMIR_DANFE_DIRETO: TStringField;
    SQL_PARAMETROS_NFCEVISUALIZAR_DANFE: TStringField;
    SQL_PARAMETROS_NFCEVENDA_GERA_NFCE: TStringField;
    SQL_PARAMETROS_NFCECARTAO_GERA_NFCE: TStringField;
    SQL_PARAMETROS_NFCENFCE_COMPROVANTE: TStringField;
    SQL_PARAMETROS_NFCEIMPRESSORA_DANFE: TStringField;
    SQL_PARAMETROS_NFCELOTE: TStringField;
    Label15: TLabel;
    SQL_PARAMETROS_NFCESERIE_NORMAL: TStringField;
    edt_sequencia: TDBEdit;
    SQL_PARAMETROS_NFCESEQUENCIA_NFCE: TIntegerField;
    Label2: TLabel;
    Label3: TLabel;
    chk_confirmacao_danfe: TcxDBCheckBox;
    SQL_PARAMETROS_NFCECONFIRMA_IMPRESSAO_DANFE: TStringField;
    GroupBox1: TGroupBox;
    edtPastaNotas: TEdit;
    btn_buscar_xml: TcxButton;
    cxGroupBox1: TcxGroupBox;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormShow(Sender: TObject);
    procedure btn_certificado_serieClick(Sender: TObject);
    procedure btnGravarClick(Sender: TObject);
    procedure cb_certificadoEnter(Sender: TObject);
    procedure btnSairClick(Sender: TObject);
    procedure btn_AlterarClick(Sender: TObject);
    procedure PadronizarLayout;
    procedure chk_normalPropertiesChange(Sender: TObject);
    procedure chk_contingenciaPropertiesChange(Sender: TObject);
    procedure chk_homologacaoPropertiesChange(Sender: TObject);
    procedure chk_producaoPropertiesChange(Sender: TObject);
    procedure id_tokenExit(Sender: TObject);
    procedure chk_danfe_diretoPropertiesChange(Sender: TObject);
    procedure cb_certificadosExit(Sender: TObject);
    function ExisteCert: boolean;
    procedure DataCertificado;
    procedure btn_buscar_xmlClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Frm_Conf__Nfce: TFrm_Conf__Nfce;

implementation

{$R *.dfm}

uses U_ConfNFCE, u_funcoes, h_DB;

procedure TFrm_Conf__Nfce.PadronizarLayout;
var
  qry_tmp: TFDQuery;
begin
  SQL_CONFIG_NOTAS.Active := true;
  SQL_PARAMETROS_NFCE.Active := true;
  if not VerificaAberta(Frm_ConfNFCE) then
    Frm_ConfNFCE := TFrm_ConfNFCE.Create(nil);
  Frm_ConfNFCE.spdNFCe.ListarCertificados(cb_certificados.Properties.Items);
  if SQL_CONFIG_NOTASCERTIFICADO.asString <> '' then
    cb_certificados.Text := SQL_CONFIG_NOTASCERTIFICADO.Value;
  DataCertificado;
  cb_nfce_impressoras.Properties.Items.Clear;
  cb_nfce_impressoras.Properties.Items := tFunctions.getPrinters;
  cb_nfce_impressoras.Text := tenv.Printers.NFCE;
  if SQL_CONFIG_NOTASTIPO_NOTA.Value = 'NORMAL' then
    chk_normal.Checked := true
  else if SQL_CONFIG_NOTASTIPO_NOTA.Value = 'CONTINGENCIA' then
    chk_contingencia.Checked := true;
  if SQL_CONFIG_NOTASAMBIENTE.Value = 'HOMOLOGACAO' then
    chk_homologacao.Checked := true
  else if SQL_CONFIG_NOTASAMBIENTE.Value = 'PRODUCAO' then
    chk_producao.Checked := true;
  qry_tmp := tdb.SimpleQuery('SELECT MAX(CODIGO) as SEQUENCIA FROM NFCE');
  if qry_tmp <> nil then
    edt_ultima_nfce.Text := qry_tmp.Fields[0].asString;
  btn_Alterar.Visible := true;
  btnSair.Enabled := false;
  u_funcoes.AlterarEnabled([grp_geral, grp_certificado, GroupBox1, grp_sequencia_nfce, grp_csc, grp_grupo_nfce, grp_impressora_nfce, grp_parametros_nfce], false);

  if tdir.nf.notas_fiscais <> '' then
    edtPastaNotas.Text := tdir.nf.notas_fiscais;

end;

procedure TFrm_Conf__Nfce.btnGravarClick(Sender: TObject);
begin
  try
    if (chk_normal.Checked = false) and (chk_contingencia.Checked = false) then
    begin
      Application.MessageBox('Selecione um tipo de Emissão!', '', mb_ok + MB_ICONWARNING);
      exit;
    end;
    if (chk_homologacao.Checked = false) and (chk_producao.Checked = false) then
    begin
      Application.MessageBox('Selecione um Ambiente de Trabalho!', '', mb_ok + MB_ICONWARNING);
      exit;
    end;
    if ExisteCert and CamposObrigatorios([id_token, id_csc, nfce_lote, nfce_serie], ['Id CSC', 'nº CSC', 'Lote NFC-e', 'Série NFC-e'], [], [],
      [cb_certificados, cb_nfce_impressoras], ['Certificado', 'Impressora NFC-e']) then
    begin
      exit;
    end
    else if (not ExisteCert) and (CamposObrigatorios([id_token, id_csc, nfce_lote, nfce_serie], ['Id CSC', 'nº CSC', 'Lote NFC-e', 'Série NFC-e'], [], [], [cb_nfce_impressoras],
      ['Impressora NFC-e'])) then
    begin
      exit;
    end
    else
    begin
      if chk_normal.Checked then
        SQL_CONFIG_NOTASTIPO_NOTA.Value := 'NORMAL'
      else if chk_contingencia.Checked then
        SQL_CONFIG_NOTASTIPO_NOTA.Value := 'CONTINGENCIA';
      if chk_homologacao.Checked then
        SQL_CONFIG_NOTASAMBIENTE.Value := 'HOMOLOGACAO'
      else if chk_producao.Checked then
        SQL_CONFIG_NOTASAMBIENTE.Value := 'PRODUCAO';
      SQL_CONFIG_NOTASCERTIFICADO.Value := cb_certificados.Text;
      if Length(id_token.Text) <> 6 then
        id_token.Text := FormatFloat('000000', strtofloat(id_token.Text));
      tenv.Printers.NFCE := AnsiString(cb_nfce_impressoras.Text);
      SQL_CONFIG_NOTAS.post;
      SQL_PARAMETROS_NFCE.post;
      tdir.nf.notas_fiscais := edtPastaNotas.Text;
      wnInfo('Parametros NFC-e', slinebreak + 'Operação concluída com sucesso!', tacenter, 14);
      camposobrigatorios_corpadrao([id_token, id_csc, nfce_lote, nfce_serie], [], [cb_certificados, cb_nfce_impressoras]);
      PadronizarLayout;
    end;
  except
    on E: Exception do
      wnErro('Parametros NFC-e', E.message + slinebreak + 'Erro ao finalizar alterações!');
  end;
end;

procedure TFrm_Conf__Nfce.btnSairClick(Sender: TObject);
begin
  SQL_CONFIG_NOTAS.cancel;
  SQL_PARAMETROS_NFCE.cancel;
  PadronizarLayout;
end;

procedure TFrm_Conf__Nfce.btn_AlterarClick(Sender: TObject);
begin
  SQL_CONFIG_NOTAS.Edit;
  SQL_PARAMETROS_NFCE.Edit;
  btnSair.Enabled := true;
  btn_Alterar.Visible := false;
  u_funcoes.AlterarEnabled([grp_geral, grp_certificado, GroupBox1, grp_sequencia_nfce, grp_csc, grp_grupo_nfce, grp_impressora_nfce, grp_parametros_nfce], true);
end;

procedure TFrm_Conf__Nfce.btn_buscar_xmlClick(Sender: TObject);
begin
  edtPastaNotas.Text := tFunctions.SelectFolder;
end;

procedure TFrm_Conf__Nfce.cb_certificadoEnter(Sender: TObject);
begin
  if ExisteCert then
    Frm_ConfNFCE.spdNFCe.ListarCertificados(cb_certificados.Properties.Items);
end;

procedure TFrm_Conf__Nfce.cb_certificadosExit(Sender: TObject);
begin
  DataCertificado;
end;

procedure TFrm_Conf__Nfce.chk_contingenciaPropertiesChange(Sender: TObject);
begin
  u_funcoes.AlteraChecks(chk_contingencia, [chk_normal]);
end;

procedure TFrm_Conf__Nfce.chk_danfe_diretoPropertiesChange(Sender: TObject);
begin
  if chk_danfe_direto.Checked then
    chk_confirmacao_danfe.Enabled := true
  else
    chk_confirmacao_danfe.Enabled := false;
end;

procedure TFrm_Conf__Nfce.chk_homologacaoPropertiesChange(Sender: TObject);
begin
  u_funcoes.AlteraChecks(chk_homologacao, [chk_producao]);
end;

procedure TFrm_Conf__Nfce.chk_normalPropertiesChange(Sender: TObject);
begin
  u_funcoes.AlteraChecks(chk_normal, [chk_contingencia]);
end;

procedure TFrm_Conf__Nfce.chk_producaoPropertiesChange(Sender: TObject);
begin
  u_funcoes.AlteraChecks(chk_producao, [chk_homologacao]);
end;

procedure TFrm_Conf__Nfce.DataCertificado;
begin
  if ExisteCert then
    if Frm_ConfNFCE.configurarcomponente(cb_certificados.Text) and (cb_certificados.Text <> '') then
      Label3.Caption := FormatDateTime('dd/mm/yyyy', Frm_ConfNFCE.spdNFCe.GetVencimentoCertificado);
end;

function TFrm_Conf__Nfce.ExisteCert: boolean;
var
  certs: tstringlist;
begin
  certs := tstringlist.Create;
  Frm_ConfNFCE.spdNFCe.ListarCertificados(certs);
  if certs.Text = emptystr then
    result := false
  else
    result := true;
end;

procedure TFrm_Conf__Nfce.btn_certificado_serieClick(Sender: TObject);
begin
  Frm_ConfNFCE.spdNFCe.ListarCertificados(cb_certificados.Properties.Items);
end;

procedure TFrm_Conf__Nfce.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  Action := cafree;
  self := nil;
end;

procedure TFrm_Conf__Nfce.FormShow(Sender: TObject);
begin
  PadronizarLayout;
end;

procedure TFrm_Conf__Nfce.id_tokenExit(Sender: TObject);
begin
  id_token.Text := FormatFloat('000000', strtofloat(id_token.Text));
end;

end.
