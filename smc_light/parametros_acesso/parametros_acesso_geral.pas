//Verificado automaticamente em 16/06/2020 09:28
{ v 11.10.16 09:31 }
unit parametros_acesso_geral;
{
================================================================================
| ITEM|DATA  HR|UNIT                |HISTORICO                                 |
|-----|--------|--------------------|------------------------------------------|
|  205|25/05/20|wander              |Retirada a coluna OPTANTE_SIMPLES_NACIONAL|
|     |   22:15|parametros_acesso   |do TFDQuery SQL_Empresa                   |
|     |        |_geral              |                                          |
================================================================================
}
interface

uses
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
  cxCheckComboBox, registry;

type
  Tfrm_parametros_sistema = class(TForm)
    tabconsulta: TcxPageControl;
    cxTabSheet1: TcxTabSheet;
    grp_venda: TGroupBox;
    Label22: TLabel;
    grp_tributacao: TGroupBox;
    DBEdit5: TDBEdit;
    Label12: TLabel;
    Label20: TLabel;
    DBEdit6: TDBEdit;
    DBEdit8: TDBEdit;
    DBEdit7: TDBEdit;
    Label23: TLabel;
    Label21: TLabel;
    Label9: TLabel;
    DBEdit3: TDBEdit;
    DBEdit10: TDBEdit;
    Label25: TLabel;
    btnAlterar: TcxButton;
    btnCancelar: TcxButton;
    btnGravar: TcxButton;
    SQL_PARAMETROS_SISTEMA: TFDQuery;
    DS_PARAMETROS_SISTEMA: TDataSource;
    chk_comprovante: TcxDBCheckBox;
    SQL_PARAMETROS_VENDA: TFDQuery;
    DS_PARAMETROS_VENDA: TDataSource;
    SQL_PARAMETROS_VENDAIMPRIMIR_COMPROVANTE: TStringField;
    SQL_PARAMETROS_VENDAVENDA_SEM_ESTOQUE: TStringField;
    SQL_PARAMETROS_VENDAHABILITAR_FIADO: TStringField;
    SQL_PARAMETROS_VENDAFIADO_COMPROVANTE: TStringField;
    SQL_PARAMETROS_VENDAESTOQUE_PDV: TStringField;
    SQL_PARAMETROS_VENDAABRIR_GAVETA: TStringField;
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
    cxDBCheckBox1: TcxDBCheckBox;
    cxDBCheckBox6: TcxDBCheckBox;
    cxDBCheckBox10: TcxDBCheckBox;
    SQL_PARAMETROS_VENDAALTERA_PRECO_PDV: TStringField;
    cxDBCheckBox11: TcxDBCheckBox;
    SQL_PARAMETROS_VENDAVIAS_COMPROVANTE: TStringField;
    DS_PAGAMENTOS: TDataSource;
    SQL_PAGAMENTOS: TFDQuery;
    SQL_PAGAMENTOSCOD_TIPO_PAGAMENTO: TStringField;
    SQL_PAGAMENTOSTIPO_PAGAMENTO: TStringField;
    SQL_PARAMETROS_VENDAUSA_PAG_PADRAO: TStringField;
    SQL_PARAMETROS_VENDAPAG_PADRAO: TStringField;
    lbl_vias: TLabel;
    edt_vias: TEdit;
    grp_pagamento: TGroupBox;
    pag_padrao: TcxDBCheckBox;
    PagPadrao: TcxDBLookupComboBox;
    chk_habilita_fiado: TcxDBCheckBox;
    chk_fiado_comprovante: TcxDBCheckBox;
    SQL_PARAMETROS_VENDAPAG_LISTA: TStringField;
    SQL_PARAMETROS_VENDAPAG_CODIGO: TStringField;
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
    SQL_PARAMETROS_SISTEMAPathInstalacaoWINRAR: TStringField;
    SQL_PARAMETROS_SISTEMAPASTA_XML: TStringField;
    chk_paglista: TcxCheckBox;
    chk_pagcodigo: TcxCheckBox;
    SQL_PARAMETROS_VENDATIPO_ETIQUETA: TStringField;
    SQL_PARAMETROS_VENDACOD_PRODUTO_BALANCA: TShortintField;
    grp_balanca: TGroupBox;
    DBEdit9: TDBEdit;
    chk_preco: TcxCheckBox;
    chk_peso: TcxCheckBox;
    Label5: TLabel;
    grp_empresa: TGroupBox;
    cxDBCheckBox2: TcxDBCheckBox;
    SQL_PARAMETROS_SISTEMAdados_otica_cliente: TStringField;
    SQL_PARAMETROS_VENDACONSULTA_REF_FABRICANTE: TStringField;
    grp_sistema: TGroupBox;
    chk_multi_exec: TcxCheckBox;
    cxDBCheckBox3: TcxDBCheckBox;
    SQL_PARAMETROS_VENDAINFORMA_VENDEDOR: TStringField;
    grp_produtos: TGroupBox;
    cxDBCheckBox4: TcxDBCheckBox;
    SQL_PARAMETROS_SISTEMAproduto_preco_faixa: TStringField;
    cxDBCheckBox5: TcxDBCheckBox;
    SQL_PARAMETROS_VENDADESCONTO_MAX_PRODUTO: TStringField;
    cxDBCheckBox7: TcxDBCheckBox;
    SQL_PARAMETROS_SISTEMAcpf_cad_cliente: TStringField;
    SQL_PARAMETROS_VENDAPRECO_PROMOCIONAL: TStringField;
    cxDBCheckBox8: TcxDBCheckBox;
    SQL_EmpresaNOME_CONTATO_AD: TMemoField;
    cbImpressora: TcxComboBox;
    Label1: TLabel;
    SQL_PARAMETROS_SISTEMAprod_difer_estoque: TStringField;
    SQL_PARAMETROS_VENDAusa_convenio: TBooleanField;
    cxDBCheckBox9: TcxDBCheckBox;
    SQL_PARAMETROS_VENDAIMPRESSORA_COMPROVANTE: TMemoField;
    SQL_PARAMETROS_VENDAusa_comanda: TBooleanField;
    grpComanda: TGroupBox;
    SQL_PARAMETROS_VENDAseparar_produtos_comanda: TBooleanField;
    cxDBCheckBox13: TcxDBCheckBox;
    cxDBCheckBox12: TcxDBCheckBox;
    grpAgrupar: TGroupBox;
    Label2: TLabel;
    SQL_PARAMETROS_SISTEMApasta_notas: TMemoField;
    SQL_PARAMETROS_SISTEMAcomanda_num: TIntegerField;
    SQL_PARAMETROS_SISTEMAagrupar_tipos_pagamentos: TStringField;
    cbPagamentos: TcxCheckComboBox;
    Label3: TLabel;
    edt_terminal: TEdit;
    procedure btnCancelarClick(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
    procedure FormShow(Sender: TObject);
    procedure PadronizarLayout;
    procedure btnAlterarClick(Sender: TObject);
    procedure btnGravarClick(Sender: TObject);
    procedure chk_habilita_fiadoClick(Sender: TObject);
    procedure chk_fiado_comprovanteClick(Sender: TObject);
    procedure viasenabled;
    procedure chk_comprovanteClick(Sender: TObject);
    procedure cxDBCheckBox2PropertiesChange(Sender: TObject);
    procedure chk_paglistaClick(Sender: TObject);
    procedure chk_pagcodigoClick(Sender: TObject);
    procedure chk_pesoPropertiesChange(Sender: TObject);
    procedure chk_precoPropertiesChange(Sender: TObject);
    procedure chk_comprovantePropertiesEditValueChanged(Sender: TObject);
    procedure carregarFormasPgto;

  private
    { Private declarations }
    _pagamentosList: TList<string>;
  public
    { Public declarations }
  end;

var
  frm_parametros_sistema: Tfrm_parametros_sistema;

implementation

uses
  u_funcoes, c_Globals, h_Dialogs;

{$R *.dfm}

function FTPDirExists(DirName: String; IdFTPComp: TIdFTP): Boolean;
Var
  DirList: TStringList;
begin
  Result := False;
  DirList := TStringList.Create;
  IdFTPComp.List(DirList, DirName, True);
  if DirList.Count > 0 then
    Result := True;
  DirList.Free;
end;

function hostname: string;
var
  ipbuffer: string;
  nsize: dword;
begin
  nsize := 255;
  SetLength(ipbuffer, nsize);
  if GetComputerName(pchar(ipbuffer), nsize) then
    Result := ipbuffer;
end;

procedure Tfrm_parametros_sistema.btnAlterarClick(Sender: TObject);
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

  u_funcoes.AlterarEnabled([grp_empresa, grpComanda, grpAgrupar, grp_sistema, grp_venda, grp_tributacao, grp_balanca, grp_pagamento,
    grp_produtos], True);
end;

procedure Tfrm_parametros_sistema.btnCancelarClick(Sender: TObject);
begin
  SQL_PARAMETROS_SISTEMA.Cancel;
  SQL_PARAMETROS_VENDA.Cancel;
  PadronizarLayout;
end;

procedure Tfrm_parametros_sistema.btnGravarClick(Sender: TObject);
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
    if chk_peso.checked then
      SQL_PARAMETROS_VENDATIPO_ETIQUETA.Value := 'PESO'
    else
      SQL_PARAMETROS_VENDATIPO_ETIQUETA.Value := 'PRECO';
    tinifile.Create(preferences).writebool('options', 'multi_exec', chk_multi_exec.checked);

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
      tdialogs.wnerro('Parâmetros Sistema', e.message);
  end;
end;

procedure Tfrm_parametros_sistema.carregarFormasPgto;
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

procedure Tfrm_parametros_sistema.chk_comprovanteClick(Sender: TObject);
begin
  viasenabled;
end;

procedure Tfrm_parametros_sistema.chk_comprovantePropertiesEditValueChanged(Sender: TObject);
begin

  cbImpressora.Enabled := chk_comprovante.checked;

end;

procedure Tfrm_parametros_sistema.chk_fiado_comprovanteClick(Sender: TObject);
begin
  viasenabled;
end;

procedure Tfrm_parametros_sistema.chk_habilita_fiadoClick(Sender: TObject);
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

procedure Tfrm_parametros_sistema.chk_pagcodigoClick(Sender: TObject);
begin
  if chk_pagcodigo.checked then
    chk_paglista.checked := False;
end;

procedure Tfrm_parametros_sistema.chk_paglistaClick(Sender: TObject);
begin
  if chk_paglista.checked then
    chk_pagcodigo.checked := False;
end;

procedure Tfrm_parametros_sistema.chk_pesoPropertiesChange(Sender: TObject);
begin
  AlteraChecks(chk_peso, [chk_preco]);

end;

procedure Tfrm_parametros_sistema.chk_precoPropertiesChange(Sender: TObject);
begin
  AlteraChecks(chk_preco, [chk_peso]);
end;

procedure Tfrm_parametros_sistema.cxDBCheckBox2PropertiesChange(Sender: TObject);
begin
  if pag_padrao.checked then
    PagPadrao.Enabled := True
  else
    PagPadrao.Enabled := False;
end;

procedure Tfrm_parametros_sistema.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  Action := cafree;
  self := nil;
end;

procedure Tfrm_parametros_sistema.FormKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
begin
  u_funcoes.TeclasAtalho(Key, [VK_F1, VK_F2, vk_f3], [btnAlterar, btnGravar, btnCancelar]);
end;

procedure Tfrm_parametros_sistema.FormShow(Sender: TObject);
begin
  PadronizarLayout;
end;

procedure Tfrm_parametros_sistema.PadronizarLayout;
var reg: TRegIniFile;
begin
  SQL_PARAMETROS_SISTEMA.Active := False;
  SQL_PARAMETROS_SISTEMA.Active := True;
  SQL_PARAMETROS_SISTEMA.Last;
  SQL_PAGAMENTOS.Active := True;
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

  if SQL_PARAMETROS_VENDATIPO_ETIQUETA.asString = 'PRECO' then
    chk_preco.checked := True;
  if SQL_PARAMETROS_VENDATIPO_ETIQUETA.asString = 'PESO' then
  chk_peso.checked := True;
  btnAlterar.Visible := True;
  btnCancelar.Enabled := False;

  chk_multi_exec.checked := tinifile.Create(preferences).readbool('options', 'multi_exec', False);

  u_funcoes.AlterarEnabled([grp_empresa, grpComanda, grpAgrupar, grp_sistema, grp_venda, grp_tributacao, grp_balanca, grp_produtos,
    grp_pagamento], False);
  carregarFormasPgto;

  try
    reg:= TRegIniFile.Create('SMC');
    edt_terminal.Text := FormatFloat('000', reg.ReadInteger('Caixa','Terminal',1));
  finally
    reg.Free;
  end;
end;

procedure Tfrm_parametros_sistema.viasenabled;
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

end.
