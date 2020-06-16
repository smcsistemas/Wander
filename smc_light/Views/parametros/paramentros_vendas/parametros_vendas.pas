//Verificado automaticamente em 16/06/2020 09:29
unit parametros_vendas;

interface

uses
//  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
//  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, cxGraphics, cxControls, cxLookAndFeels,
//  cxLookAndFeelPainters, cxContainer, cxEdit, dxSkinsCore, cxTextEdit,
//  cxMaskEdit, cxDropDownEdit, Vcl.StdCtrls, cxCheckBox, cxDBEdit, S_Module,
//  v_Env, FireDAC.Stan.Intf, FireDAC.Stan.Option, FireDAC.Stan.Param,
//  FireDAC.Stan.Error, FireDAC.DatS, FireDAC.Phys.Intf, FireDAC.DApt.Intf,
//  FireDAC.Stan.Async, FireDAC.DApt, Data.DB, FireDAC.Comp.DataSet,
//  FireDAC.Comp.Client, u_funcoes, h_Dialogs,  h_DB, System.Generics.Collections,
//  cxCheckComboBox, cxLookupEdit, cxDBLookupEdit, cxDBLookupComboBox, registry,
//  Vcl.Menus, cxButtons, h_Functions, u_diretorios;

Winapi.Windows, System.SysUtils,
  System.Classes,
  Vcl.Controls, Vcl.Forms, Vcl.StdCtrls, Vcl.DBCtrls,

  cxButtons,
  cxPC,
  cxDropDownEdit,

  Data.DB,
  FireDAC.Comp.DataSet, FileCtrl, FireDAC.Comp.Client, cxCheckBox,
  Vcl.ExtCtrls, cxDBEdit,
  cxDBLookupComboBox,

  IdFTP,
  IniFiles, u_diretorios,
  h_functions, S_Parametros_Venda, cxGraphics, cxLookAndFeels, cxLookAndFeelPainters, Vcl.Menus, dxSkinsCore, dxSkinBlack, dxSkinBlue,
  dxSkinBlueprint, dxSkinCaramel, dxSkinCoffee,
  dxSkinDarkRoom,
  dxSkinDarkSide, dxSkinDevExpressDarkStyle, dxSkinDevExpressStyle, dxSkinFoggy, dxSkinGlassOceans, dxSkinHighContrast, dxSkiniMaginary,
  dxSkinLilian, dxSkinLiquidSky,
  dxSkinLondonLiquidSky,
  dxSkinMcSkin, dxSkinMetropolis, dxSkinMetropolisDark, dxSkinMoneyTwins, dxSkinOffice2007Black, dxSkinOffice2007Blue,
  dxSkinOffice2007Green, dxSkinOffice2007Pink,
  dxSkinOffice2007Silver,
  dxSkinOffice2010Black, dxSkinOffice2010Blue, dxSkinOffice2010Silver, dxSkinOffice2013DarkGray, dxSkinOffice2013LightGray,
  dxSkinOffice2013White, dxSkinOffice2016Colorful,
  dxSkinOffice2016Dark,
  dxSkinPumpkin, dxSkinSeven, dxSkinSevenClassic, dxSkinSharp, dxSkinSharpPlus, dxSkinSilver, dxSkinSpringTime, dxSkinStardust,
  dxSkinSummer2008, dxSkinTheAsphaltWorld,
  dxSkinsDefaultPainters,
  dxSkinValentine, dxSkinVisualStudio2013Blue, dxSkinVisualStudio2013Dark, dxSkinVisualStudio2013Light, dxSkinVS2010, dxSkinWhiteprint,
  dxSkinXmas2008Blue, cxControls,
  dxSkinscxPCPainter,
  dxBarBuiltInMenu, cxContainer, cxEdit, FireDAC.Stan.Intf, FireDAC.Stan.Option, FireDAC.Stan.Param, FireDAC.Stan.Error, FireDAC.DatS,
  FireDAC.Phys.Intf, FireDAC.DApt.Intf,
  FireDAC.Stan.Async,
  FireDAC.DApt, cxLookupEdit, cxDBLookupEdit, cxTextEdit, cxMaskEdit, Vcl.Mask, dxGDIPlusClasses, v_Env, h_DB, System.Generics.Collections,
  cxCheckComboBox, registry, h_Dialogs, u_funcoes, c_Globals, cxGroupBox;

type
  Tfrm_parametro_vendas = class(TForm)
    grp_venda: TGroupBox;
    lbl_vias: TLabel;
    Label1: TLabel;
    Label3: TLabel;
    chk_comprovante: TcxDBCheckBox;
    cxDBCheckBox1: TcxDBCheckBox;
    cxDBCheckBox6: TcxDBCheckBox;
    cxDBCheckBox10: TcxDBCheckBox;
    cxDBCheckBox11: TcxDBCheckBox;
    edt_vias: TEdit;
    cxDBCheckBox3: TcxDBCheckBox;
    cxDBCheckBox5: TcxDBCheckBox;
    cbImpressora: TcxComboBox;
    edt_terminal: TEdit;
    SQL_PARAMETROS_SISTEMA: TFDQuery;
    SQL_PARAMETROS_SISTEMAid: TFDAutoIncField;
    SQL_PARAMETROS_SISTEMAaliq_imcs: TBCDField;
    SQL_PARAMETROS_SISTEMAaliq_pis_cumulativo: TBCDField;
    SQL_PARAMETROS_SISTEMAaliq_pis_nao_cumulativo: TBCDField;
    SQL_PARAMETROS_SISTEMAaliq_cofins_cumulativo: TBCDField;
    SQL_PARAMETROS_SISTEMAaliq_cofins_nao_cumulativo: TBCDField;
    SQL_PARAMETROS_SISTEMAaliq_iss: TBCDField;
    SQL_PARAMETROS_SISTEMAcaminho_backup: TStringField;
    SQL_PARAMETROS_SISTEMAhost_name: TStringField;
    SQL_PARAMETROS_SISTEMAPASTA_FTP: TStringField;
    SQL_PARAMETROS_SISTEMAPathInstalacaoWINRAR: TStringField;
    SQL_PARAMETROS_SISTEMAPASTA_XML: TStringField;
    SQL_PARAMETROS_SISTEMAdados_otica_cliente: TStringField;
    SQL_PARAMETROS_SISTEMAproduto_preco_faixa: TStringField;
    SQL_PARAMETROS_SISTEMAcpf_cad_cliente: TStringField;
    SQL_PARAMETROS_SISTEMAprod_difer_estoque: TStringField;
    SQL_PARAMETROS_SISTEMApasta_notas: TMemoField;
    SQL_PARAMETROS_SISTEMAcomanda_num: TIntegerField;
    SQL_PARAMETROS_SISTEMAagrupar_tipos_pagamentos: TStringField;
    SQL_Empresa: TFDQuery;
    SQL_EmpresaCODIGO: TFDAutoIncField;
    SQL_EmpresaRAZAO_SOCIAL: TStringField;
    SQL_EmpresaNOME_FANTASIA: TStringField;
    SQL_EmpresaDATA_CADASTRO: TDateField;
    SQL_EmpresaCNPJ: TStringField;
    SQL_EmpresaINSCRICAO_ESTADUAL: TStringField;
    SQL_EmpresaINSCRICAO_MUNICIPAL: TStringField;
    SQL_EmpresaEMPRESA_TELEFONE_01: TStringField;
    SQL_EmpresaEMPRESA_TELEFONE_03: TStringField;
    SQL_EmpresaEMPRESA_FAX: TStringField;
    SQL_EmpresaEMPRESA_CELULAR_01: TStringField;
    SQL_EmpresaEMPRESA_CELULAR_02: TStringField;
    SQL_EmpresaEMPRESA_SITE: TStringField;
    SQL_EmpresaEMPRESA_EMAIL_01: TStringField;
    SQL_EmpresaEMPRESA_SKYPE: TStringField;
    SQL_EmpresaEMPRESA_EMAIL_02: TStringField;
    SQL_EmpresaENDERECO: TStringField;
    SQL_EmpresaNUMERO: TStringField;
    SQL_EmpresaSUFRAMA: TStringField;
    SQL_EmpresaCEP: TStringField;
    SQL_EmpresaBAIRRO: TStringField;
    SQL_EmpresaMUNICIPIO: TStringField;
    SQL_EmpresaESTADO: TStringField;
    SQL_EmpresaCODIGO_MUNICIPIO: TIntegerField;
    SQL_EmpresaPAIS: TStringField;
    SQL_EmpresaCOMPLEMENTO: TStringField;
    SQL_EmpresaIE_SUBSTITUTO_TRIBUTARIO: TStringField;
    SQL_EmpresaCODIGO_REGIME_TRIBUTARIO: TStringField;
    SQL_EmpresaAPURACAO_MENSAL_IPI: TStringField;
    SQL_EmpresaAPURACAO_DECENDIAL_IPI: TStringField;
    SQL_EmpresaTRIBUTADO_ALIQUOTA_FIXA_ICMS: TStringField;
    SQL_EmpresaCONTRIBUINTE_IPI: TStringField;
    SQL_EmpresaORGANIZACAO_CONTABIL_RAZAO_SOCIAL: TStringField;
    SQL_EmpresaORGANIZACAO_CONTABIL_FANTASIA: TStringField;
    SQL_EmpresaORGANIZACAO_CONTABIL_CNPJ_CPF: TStringField;
    SQL_EmpresaORGANIZACAO_CONTABIL_INSCRICAO: TStringField;
    SQL_EmpresaORGANIZACAO_CONTABIL_ENDERECO: TStringField;
    SQL_EmpresaORGANIZACAO_CONTABIL_BAIRRO: TStringField;
    SQL_EmpresaORGANIZACAO_CONTABIL_NUMERO: TStringField;
    SQL_EmpresaORGANIZACAO_CONTABIL_MUNICIPIO: TStringField;
    SQL_EmpresaORGANIZACAO_CONTABIL_CODIGO_MUNICIPIO: TIntegerField;
    SQL_EmpresaORGANIZACAO_CONTABIL_ESTADO: TStringField;
    SQL_EmpresaORGANIZACAO_CONTABIL_PAIS: TStringField;
    SQL_EmpresaORGANIZACAO_CONTABIL_CEP: TStringField;
    SQL_EmpresaORGANIZACAO_CONTABIL_COMPLEMENTO: TStringField;
    SQL_EmpresaORGANIZACAO_CONTABIL_TELEFONE_01: TStringField;
    SQL_EmpresaORGANIZACAO_CONTABIL_TELEFONE_02: TStringField;
    SQL_EmpresaORGANIZACAO_CONTABIL_CELULAR_01: TStringField;
    SQL_EmpresaORGANIZACAO_CONTABIL_CELULAR_02: TStringField;
    SQL_EmpresaORGANIZACAO_CONTABIL_EMAIL_01: TStringField;
    SQL_EmpresaORGANIZACAO_CONTABIL_EMAIL_02: TStringField;
    SQL_EmpresaORGANIZACAO_CONTABIL_SITE: TStringField;
    SQL_EmpresaORGANIZACAO_CONTABIL_SKYPE: TStringField;
    SQL_EmpresaCONTADOR_NOME: TStringField;
    SQL_EmpresaCONTADOR_CPF: TStringField;
    SQL_EmpresaCONTADOR_CRC: TStringField;
    SQL_EmpresaNIRE: TStringField;
    SQL_EmpresaCNAE: TStringField;
    SQL_EmpresaBANCO_01: TStringField;
    SQL_EmpresaBANCO_OP: TStringField;
    SQL_EmpresaBANCO_OP2: TStringField;
    SQL_EmpresaBANCO_OP_1: TStringField;
    SQL_EmpresaBANCO_OP_1_2: TStringField;
    SQL_EmpresaBANCO_AGENCIA_01: TStringField;
    SQL_EmpresaBANCO_CONTA_01: TStringField;
    SQL_EmpresaBANCO_02: TStringField;
    SQL_EmpresaBANCO_AGENCIA_01_DIGITO: TStringField;
    SQL_EmpresaBANCO_CONTA_01_DIGITO: TStringField;
    SQL_EmpresaBANCO_AGENCIA_02_DIGITO: TStringField;
    SQL_EmpresaBANCO_CONTA_02_DIGITO: TStringField;
    SQL_EmpresaBANCO_AGENCIA_02: TStringField;
    SQL_EmpresaBANCO_CONTA_02: TStringField;
    SQL_EmpresaBANCO_03: TIntegerField;
    SQL_EmpresaBANCO_AGENCIA_03: TStringField;
    SQL_EmpresaBANCO_CONTA_03: TStringField;
    SQL_EmpresaBANCO_GERENTE_01: TStringField;
    SQL_EmpresaBANCO_TELEFONE_01: TStringField;
    SQL_EmpresaBANCO_GERENTE_02: TStringField;
    SQL_EmpresaBANCO_TELEFONE_02: TStringField;
    SQL_EmpresaBANCO_RAMAL_02: TStringField;
    SQL_EmpresaBANCO_RAMAL_01: TStringField;
    SQL_EmpresaSOCIO_01: TIntegerField;
    SQL_EmpresaSOCIO_02: TIntegerField;
    SQL_EmpresaRODAPE: TStringField;
    SQL_EmpresaSELECAO_EMPRESA: TStringField;
    SQL_EmpresaCODIGO_IDENTIFICACAO: TStringField;
    SQL_EmpresaCHAVE_ATIVACAO: TStringField;
    SQL_EmpresaCODIGO_PAIS: TIntegerField;
    SQL_EmpresaORGANIZACAO_CONTABIL_CODPAIS: TIntegerField;
    SQL_EmpresaORGANIZACAO_CONTABIL_CPF: TStringField;
    SQL_EmpresaDIA_VENCIMENTO: TStringField;
    SQL_EmpresaARQUIVOS_FISCAIS_EMAIL_01: TStringField;
    SQL_EmpresaARQUIVOS_FISCAIS_EMAIL_02: TStringField;
    SQL_EmpresaINICIO_ATIVIDADE: TDateField;
    SQL_EmpresaAPURACAO_IPI: TStringField;
    SQL_EmpresaEMPRESA_TELEFONE_02: TStringField;
    SQL_EmpresaORGANIZACAO_CONTABIL_NOME: TStringField;
    SQL_EmpresaCOD_UF: TStringField;
    SQL_EmpresaTRIBUTACAO_PIS_COFINS: TStringField;
    SQL_EmpresaLOGOTIPO: TStringField;
    SQL_EmpresaNOME_CONTATO_AD: TMemoField;
    DS_PARAMETROS_VENDA: TDataSource;
    SQL_PARAMETROS_VENDA: TFDQuery;
    SQL_PARAMETROS_VENDAIMPRIMIR_COMPROVANTE: TStringField;
    SQL_PARAMETROS_VENDAVENDA_SEM_ESTOQUE: TStringField;
    SQL_PARAMETROS_VENDAHABILITAR_FIADO: TStringField;
    SQL_PARAMETROS_VENDAFIADO_COMPROVANTE: TStringField;
    SQL_PARAMETROS_VENDAESTOQUE_PDV: TStringField;
    SQL_PARAMETROS_VENDAABRIR_GAVETA: TStringField;
    SQL_PARAMETROS_VENDAALTERA_PRECO_PDV: TStringField;
    SQL_PARAMETROS_VENDAVIAS_COMPROVANTE: TStringField;
    SQL_PARAMETROS_VENDAUSA_PAG_PADRAO: TStringField;
    SQL_PARAMETROS_VENDAPAG_PADRAO: TStringField;
    SQL_PARAMETROS_VENDAPAG_LISTA: TStringField;
    SQL_PARAMETROS_VENDAPAG_CODIGO: TStringField;
    SQL_PARAMETROS_VENDATIPO_ETIQUETA: TStringField;
    SQL_PARAMETROS_VENDACOD_PRODUTO_BALANCA: TShortintField;
    SQL_PARAMETROS_VENDACONSULTA_REF_FABRICANTE: TStringField;
    SQL_PARAMETROS_VENDAINFORMA_VENDEDOR: TStringField;
    SQL_PARAMETROS_VENDADESCONTO_MAX_PRODUTO: TStringField;
    SQL_PARAMETROS_VENDAPRECO_PROMOCIONAL: TStringField;
    SQL_PARAMETROS_VENDAusa_convenio: TBooleanField;
    SQL_PARAMETROS_VENDAIMPRESSORA_COMPROVANTE: TMemoField;
    SQL_PARAMETROS_VENDAusa_comanda: TBooleanField;
    SQL_PARAMETROS_VENDAseparar_produtos_comanda: TBooleanField;
    DS_PARAMETROS_SISTEMA: TDataSource;
    grp_pagamento: TGroupBox;
    pag_padrao: TcxDBCheckBox;
    PagPadrao: TcxDBLookupComboBox;
    chk_habilita_fiado: TcxDBCheckBox;
    chk_fiado_comprovante: TcxDBCheckBox;
    chk_paglista: TcxCheckBox;
    chk_pagcodigo: TcxCheckBox;
    cxDBCheckBox9: TcxDBCheckBox;
    grpAgrupar: TGroupBox;
    Label2: TLabel;
    cbPagamentos: TcxCheckComboBox;
    btnGravar: TcxButton;
    btnAlterar: TcxButton;
    btnCancelar: TcxButton;
    SQL_PAGAMENTOS: TFDQuery;
    SQL_PAGAMENTOSCOD_TIPO_PAGAMENTO: TStringField;
    SQL_PAGAMENTOSTIPO_PAGAMENTO: TStringField;
    DS_PAGAMENTOS: TDataSource;
    cxPageControl1: TcxPageControl;
    cxTabSheet1: TcxTabSheet;
    cxTabSheet2: TcxTabSheet;
    cxGroupBox1: TcxGroupBox;
    edtCasaDecPreco: TEdit;
    edtCasaDec: TEdit;
    cxDBCheckBox2: TcxDBCheckBox;
    cxDBCheckBox4: TcxDBCheckBox;
    cxGroupBox2: TcxGroupBox;
    cxDBCheckBox13: TcxDBCheckBox;
    cxDBCheckBox7: TcxDBCheckBox;
    cxGroupBox3: TcxGroupBox;
    cxDBCheckBox12: TcxDBCheckBox;
    cxDBCheckBox8: TcxDBCheckBox;
    cxDBCheckBox20: TcxDBCheckBox;
    cxGroupBox5: TcxGroupBox;
    cxDBCheckBox14: TcxDBCheckBox;
    cxDBCheckBox15: TcxDBCheckBox;
    cxDBCheckBox18: TcxDBCheckBox;
    cxDBCheckBox17: TcxDBCheckBox;
    cxDBCheckBox19: TcxDBCheckBox;
    cxGroupBox4: TcxGroupBox;
    Label7: TLabel;
    Label5: TLabel;
    Label4: TLabel;
    Label6: TLabel;
    edt_vias_pedido: TEdit;
    edt_terminal_pedido: TEdit;
    cxDBCheckBox16: TcxDBCheckBox;
    cbImpressora_pedido: TcxComboBox;
    cxGroupBox7: TcxGroupBox;
    cxDBCheckBox27: TcxDBCheckBox;
    cxGroupBox8: TcxGroupBox;
    Label8: TLabel;
    Label9: TLabel;
    Label10: TLabel;
    Label11: TLabel;
    Edit1: TEdit;
    Edit2: TEdit;
    cxDBCheckBox21: TcxDBCheckBox;
    cxComboBox1: TcxComboBox;
    cxGroupBox9: TcxGroupBox;
    Label12: TLabel;
    cxDBCheckBox22: TcxDBCheckBox;
    cxDBCheckBox23: TcxDBCheckBox;
    cxDBCheckBox24: TcxDBCheckBox;
    cxDBCheckBox25: TcxDBCheckBox;
    cxDBCheckBox26: TcxDBCheckBox;
    procedure chk_comprovanteClick(Sender: TObject);
    procedure viasenabled;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormShow(Sender: TObject);
    procedure PadronizarLayout;
    procedure carregarFormasPgto;
    procedure btnAlterarClick(Sender: TObject);
    procedure btnGravarClick(Sender: TObject);
    procedure btnCancelarClick(Sender: TObject);
    procedure chk_comprovantePropertiesEditValueChanged(Sender: TObject);
    procedure chk_habilita_fiadoClick(Sender: TObject);
    procedure chk_fiado_comprovanteClick(Sender: TObject);
    procedure chk_pagcodigoClick(Sender: TObject);
    procedure chk_paglistaClick(Sender: TObject);
    procedure cxDBCheckBox2PropertiesChange(Sender: TObject);
  private
    { Private declarations }
  _pagamentosList: TList<string>;
  public
    { Public declarations }
  end;

var
  frm_parametro_vendas: Tfrm_parametro_vendas;

implementation

{$R *.dfm}

procedure Tfrm_parametro_vendas.chk_comprovanteClick(Sender: TObject);
begin
  viasenabled;
end;


procedure Tfrm_parametro_vendas.viasenabled;
begin
  if (chk_comprovante.checked) or (chk_fiado_comprovante.checked) then
  begin
    lbl_vias.Enabled := True;
    edt_vias.Enabled := True;
    edt_vias.Text := SQL_PARAMETROS_VENDAVIAS_COMPROVANTE.Value;
  end
  else
  begin
    lbl_vias.Enabled := False;
    edt_vias.Enabled := False;
    edt_vias.Text := '0';
  end;
end;


procedure Tfrm_parametro_vendas.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  Action := cafree;
  self := nil;
end;

procedure Tfrm_parametro_vendas.FormShow(Sender: TObject);
begin
  PadronizarLayout;
end;

procedure Tfrm_parametro_vendas.PadronizarLayout;
var reg: TRegIniFile;
begin
  SQL_PARAMETROS_SISTEMA.Active := False;
  SQL_PARAMETROS_SISTEMA.Active := True;
  SQL_PARAMETROS_SISTEMA.Last;
  SQL_PARAMETROS_VENDA.Active := False;
  SQL_PARAMETROS_VENDA.Active := True;
  SQL_PARAMETROS_VENDA.Last;
  viasenabled;
  edt_vias.Text := SQL_PARAMETROS_VENDAVIAS_COMPROVANTE.Value;

  cbImpressora.Properties.Items.Clear;
  cbImpressora.Properties.Items := tfunctions.getPrinters;
  cbImpressora.Text := Tenv.Printers.comprovante_venda;

  if chk_habilita_fiado.checked then
    chk_fiado_comprovante.Enabled := True;

  if SQL_PARAMETROS_VENDAPAG_CODIGO.Value = m_True then
    chk_pagcodigo.checked := True
  else if SQL_PARAMETROS_VENDAPAG_CODIGO.Value = m_false then
    chk_pagcodigo.checked := False;

  if SQL_PARAMETROS_VENDAPAG_LISTA.Value = m_True then
    chk_paglista.checked := True
  else if SQL_PARAMETROS_VENDAPAG_LISTA.Value = m_false then
    chk_paglista.checked := False;


  btnAlterar.Visible := True;
  btnCancelar.Enabled := False;


  u_funcoes.AlterarEnabled([grpAgrupar, grp_venda, grp_pagamento], False);
  carregarFormasPgto;

  try
    reg:= TRegIniFile.Create('SMC');
    edt_terminal.Text := FormatFloat('000', reg.ReadInteger('Caixa','Terminal',1));
  finally
    reg.Free;
  end;
end;


procedure Tfrm_parametro_vendas.btnAlterarClick(Sender: TObject);
var
  cnpj, razao, nomepasta: string;
begin
  btnAlterar.Visible := False;
  btnCancelar.Enabled := True;
  SQL_PARAMETROS_SISTEMA.Edit;
  SQL_PARAMETROS_VENDA.Edit;
  with SQL_Empresa do
  begin
    close;
    open;
  end;
  cnpj := SQL_EmpresaCNPJ.Value;
  razao := SQL_EmpresaRAZAO_SOCIAL.Value;
  nomepasta := cnpj + '_' + razao;

  u_funcoes.AlterarEnabled([grpAgrupar, grp_venda, grp_pagamento], True);
end;

procedure Tfrm_parametro_vendas.btnCancelarClick(Sender: TObject);
begin
  SQL_PARAMETROS_SISTEMA.Cancel;
  SQL_PARAMETROS_VENDA.Cancel;
  PadronizarLayout;
end;

procedure Tfrm_parametro_vendas.btnGravarClick(Sender: TObject);
var
  i: integer;
  _in_pag: string;
  reg: TRegIniFile;
begin
  try
    SQL_PARAMETROS_VENDAVIAS_COMPROVANTE.Value := edt_vias.Text;
    if chk_pagcodigo.checked then
      SQL_PARAMETROS_VENDAPAG_CODIGO.Value := m_True
    else
      SQL_PARAMETROS_VENDAPAG_CODIGO.Value := m_false;
    if chk_paglista.checked then
      SQL_PARAMETROS_VENDAPAG_LISTA.Value := m_True
    else
      SQL_PARAMETROS_VENDAPAG_LISTA.Value := m_false;
    if chk_comprovante.checked then
      Tenv.Printers.comprovante_venda := cbImpressora.Text;

    for i := 0 to _pagamentosList.Count - 1 do
    begin

      if cbPagamentos.States[i] = cbsChecked then
        _in_pag := tfunctions.IfThen(_in_pag = '', '"' + _pagamentosList.Items[i] + '"', _in_pag + ',"' + _pagamentosList.Items[i] + '"');

    end;

    if _in_pag <> '' then
      _in_pag := '(' + _in_pag + ')';

    SQL_PARAMETROS_SISTEMAagrupar_tipos_pagamentos.asString := _in_pag;

    SQL_PARAMETROS_SISTEMA.Post;
    SQL_PARAMETROS_VENDA.Post;

    try
    reg:= TRegIniFile.Create('SMC');
    reg.WriteInteger('Caixa','Terminal', StrToInt(edt_terminal.Text));
  finally
    reg.Free;
  end;

    PadronizarLayout;
    Application.MessageBox('Operação Concluída com Sucesso!', 'Mensagem do Sistema', mb_ok + mb_iconinformation);
  except
    on e: exception do
      tdialogs.wnerro('Parâmetros de Venda', e.message);
  end;
end;

procedure Tfrm_parametro_vendas.carregarFormasPgto;
var
  qry, qry_aux: TFDQuery;
begin

  qry := TDB.SimpleQuery('select cod_tipo_pagamento, tipo_pagamento from tipo_pagamento');

  if qry <> nil then
  begin
    _pagamentosList := TList<string>.Create;
    _pagamentosList.Clear;

    cbPagamentos.Clear;

    with qry do
    begin

      First;
      while not Eof do
      begin

        _pagamentosList.Add(FieldByName('cod_tipo_pagamento').asString);

        cbPagamentos.Properties.Items.AddCheckItem(FieldByName('cod_tipo_pagamento').asString + '-' + FieldByName('tipo_pagamento')
          .asString, FieldByName('cod_tipo_pagamento').asString);

        cbPagamentos.States[_pagamentosList.Count - 1] := cbsChecked;

        qry_aux := TDB.SimpleQuery('select agrupar_tipos_pagamentos from parametros_sistema');

        if qry_aux <> nil then
        begin
          if qry_aux.Fields[0].asString <> '' then
          begin
            qry_aux := TDB.SimpleQuery('select cod_tipo_pagamento from tipo_pagamento where cod_tipo_pagamento in ' +
              qry_aux.Fields[0].asString);
            qry_aux.First;
            cbPagamentos.States[_pagamentosList.Count - 1] := cbsUnchecked;
            while not qry_aux.Eof do
            begin
              if qry_aux.Fields[0].asString = FieldByName('cod_tipo_pagamento').asString then
                cbPagamentos.States[_pagamentosList.Count - 1] := cbsChecked;
              qry_aux.Next
            end;
          end;
        end;
        Next;
      end;
    end;
  end;
end;

procedure Tfrm_parametro_vendas.chk_comprovantePropertiesEditValueChanged(Sender: TObject);
begin

  cbImpressora.Enabled := chk_comprovante.checked;

end;


procedure Tfrm_parametro_vendas.chk_fiado_comprovanteClick(Sender: TObject);
begin
  viasenabled;
end;

procedure Tfrm_parametro_vendas.chk_habilita_fiadoClick(Sender: TObject);
begin
  if chk_habilita_fiado.checked then
  begin
    chk_fiado_comprovante.Enabled := True;
  end
  else
  begin
    chk_fiado_comprovante.Enabled := False;
    chk_fiado_comprovante.checked := False;
    SQL_PARAMETROS_VENDAFIADO_COMPROVANTE.Value := '0';
  end;
end;

procedure Tfrm_parametro_vendas.chk_pagcodigoClick(Sender: TObject);
begin
  if chk_pagcodigo.checked then
    chk_paglista.checked := False;
end;

procedure Tfrm_parametro_vendas.chk_paglistaClick(Sender: TObject);
begin
  if chk_paglista.checked then
    chk_pagcodigo.checked := False;
end;

procedure Tfrm_parametro_vendas.cxDBCheckBox2PropertiesChange(Sender: TObject);
begin
  if pag_padrao.checked then
    PagPadrao.Enabled := True
  else
    PagPadrao.Enabled := False;
end;


end.
