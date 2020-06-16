//Verificado automaticamente em 16/06/2020 09:26
{ v 18.10.16 12:01 }
unit cadastro_fornecedor;

interface

uses
  Winapi.Windows, System.SysUtils, System.Variants,
  System.Classes, Vcl.Controls, Vcl.Forms,
  Vcl.StdCtrls, Vcl.DBCtrls, Vcl.Mask,


  cxCheckBox, cxButtons,

  FireDAC.Stan.Param,

  Data.DB, FireDAC.Comp.DataSet, FireDAC.Comp.Client,
  Vcl.Grids, Vcl.DBGrids, cxPC,
  Vcl.ExtCtrls,
  v_env, cxGraphics, cxControls, cxLookAndFeels, cxLookAndFeelPainters, dxSkinsCore, dxSkinBlack, dxSkinBlue, dxSkinBlueprint, dxSkinCaramel, dxSkinCoffee, dxSkinDarkRoom, dxSkinDarkSide,
  dxSkinDevExpressDarkStyle, dxSkinDevExpressStyle, dxSkinFoggy, dxSkinGlassOceans, dxSkinHighContrast, dxSkiniMaginary, dxSkinLilian, dxSkinLiquidSky, dxSkinLondonLiquidSky, dxSkinMcSkin,
  dxSkinMetropolis, dxSkinMetropolisDark, dxSkinMoneyTwins, dxSkinOffice2007Black, dxSkinOffice2007Blue, dxSkinOffice2007Green, dxSkinOffice2007Pink, dxSkinOffice2007Silver, dxSkinOffice2010Black,
  dxSkinOffice2010Blue, dxSkinOffice2010Silver, dxSkinOffice2013DarkGray, dxSkinOffice2013LightGray, dxSkinOffice2013White, dxSkinOffice2016Colorful, dxSkinOffice2016Dark, dxSkinPumpkin, dxSkinSeven,
  dxSkinSevenClassic, dxSkinSharp, dxSkinSharpPlus, dxSkinSilver, dxSkinSpringTime, dxSkinStardust, dxSkinSummer2008, dxSkinTheAsphaltWorld, dxSkinsDefaultPainters, dxSkinValentine,
  dxSkinVisualStudio2013Blue, dxSkinVisualStudio2013Dark, dxSkinVisualStudio2013Light, dxSkinVS2010, dxSkinWhiteprint, dxSkinXmas2008Blue, dxSkinscxPCPainter, dxBarBuiltInMenu, cxContainer, cxEdit,
  Vcl.Menus, FireDAC.Stan.Intf, FireDAC.Stan.Option, FireDAC.Stan.Error, FireDAC.DatS, FireDAC.Phys.Intf, FireDAC.DApt.Intf, FireDAC.Stan.Async, FireDAC.DApt, dxGDIPlusClasses;

type
  TFrm_fornecedor = class(TForm)
    SQL_FORNECEDOR: TFDQuery;
    SQL_FORNECEDORCODIGO: TFDAutoIncField;
    SQL_FORNECEDORDATA_CADASTRO: TDateField;
    SQL_FORNECEDORPRODUTOR_RURAL: TStringField;
    SQL_FORNECEDORRAZAO_SOCIAL: TStringField;
    SQL_FORNECEDORNOME_FANTASIA: TStringField;
    SQL_FORNECEDORCNPJ_CPF: TStringField;
    SQL_FORNECEDORINSCRICAO_ESTADUAL: TStringField;
    SQL_FORNECEDORINSCRICAO_MUNICIPAL: TStringField;
    SQL_FORNECEDORENDERECO: TStringField;
    SQL_FORNECEDORNUMERO: TStringField;
    SQL_FORNECEDORBAIRRO: TStringField;
    SQL_FORNECEDORMUNICIPIO: TStringField;
    SQL_FORNECEDORCODIGO_MUNICIPIO: TIntegerField;
    SQL_FORNECEDORCOMPLEMENTO: TStringField;
    SQL_FORNECEDORESTADO: TStringField;
    SQL_FORNECEDORPAIS: TStringField;
    SQL_FORNECEDORCODIGO_PAIS: TIntegerField;
    SQL_FORNECEDORCEP: TStringField;
    SQL_FORNECEDORCONSUMIDOR_FINAL: TStringField;
    SQL_FORNECEDORRAMO_ATIVIDADE: TStringField;
    SQL_FORNECEDORTELEFONE: TStringField;
    SQL_FORNECEDORTELEFONE_1: TStringField;
    SQL_FORNECEDORCELULAR: TStringField;
    SQL_FORNECEDORCONTATO: TStringField;
    SQL_FORNECEDORCELULAR_1: TStringField;
    SQL_FORNECEDORCONTATO_1: TStringField;
    SQL_FORNECEDOREMAIL: TStringField;
    SQL_FORNECEDOREMAIL_1: TStringField;
    SQL_FORNECEDORSKYPE: TStringField;
    SQL_FORNECEDORBANCO: TStringField;
    SQL_FORNECEDORBANCO_AGENCIA: TStringField;
    SQL_FORNECEDORBANCO_CONTA: TStringField;
    DS_Fornecedor: TDataSource;
    sql_increment: TFDQuery;
    cxPageControl1: TcxPageControl;
    cxTabSheet1: TcxTabSheet;
    cxTabSheet2: TcxTabSheet;
    GroupBox1: TGroupBox;
    Label17: TLabel;
    GroupBox20: TGroupBox;
    chk_ativo_cadastro: TcxCheckBox;
    BtnGravar: TcxButton;
    BtnCancelar: TcxButton;
    BtnIncluir: TcxButton;
    DbGrid: TDBGrid;
    edtConsulta: TMaskEdit;
    DS_C_FORNECEDOR: TDataSource;
    SQL_C_FORNECEDOR: TFDQuery;
    SQL_C_FORNECEDORCODIGO: TFDAutoIncField;
    SQL_C_FORNECEDORDATA_CADASTRO: TDateField;
    SQL_C_FORNECEDORPRODUTOR_RURAL: TStringField;
    SQL_C_FORNECEDORRAZAO_SOCIAL: TStringField;
    SQL_C_FORNECEDORNOME_FANTASIA: TStringField;
    SQL_C_FORNECEDORCNPJ_CPF: TStringField;
    SQL_C_FORNECEDORINSCRICAO_ESTADUAL: TStringField;
    SQL_C_FORNECEDORINSCRICAO_MUNICIPAL: TStringField;
    SQL_C_FORNECEDORENDERECO: TStringField;
    SQL_C_FORNECEDORNUMERO: TStringField;
    SQL_C_FORNECEDORBAIRRO: TStringField;
    SQL_C_FORNECEDORMUNICIPIO: TStringField;
    SQL_C_FORNECEDORCODIGO_MUNICIPIO: TIntegerField;
    SQL_C_FORNECEDORCOMPLEMENTO: TStringField;
    SQL_C_FORNECEDORESTADO: TStringField;
    SQL_C_FORNECEDORPAIS: TStringField;
    SQL_C_FORNECEDORCODIGO_PAIS: TIntegerField;
    SQL_C_FORNECEDORCEP: TStringField;
    SQL_C_FORNECEDORCONSUMIDOR_FINAL: TStringField;
    SQL_C_FORNECEDORRAMO_ATIVIDADE: TStringField;
    SQL_C_FORNECEDORTELEFONE: TStringField;
    SQL_C_FORNECEDORTELEFONE_1: TStringField;
    SQL_C_FORNECEDORCELULAR: TStringField;
    SQL_C_FORNECEDORCONTATO: TStringField;
    SQL_C_FORNECEDORCELULAR_1: TStringField;
    SQL_C_FORNECEDORCONTATO_1: TStringField;
    SQL_C_FORNECEDOREMAIL: TStringField;
    SQL_C_FORNECEDOREMAIL_1: TStringField;
    SQL_C_FORNECEDORSKYPE: TStringField;
    SQL_C_FORNECEDORBANCO: TStringField;
    SQL_C_FORNECEDORBANCO_AGENCIA: TStringField;
    SQL_C_FORNECEDORBANCO_CONTA: TStringField;
    Label42: TLabel;
    GroupBox3: TGroupBox;
    SQL_FORNECEDORBANCO_DIGITO: TStringField;
    SQL_FORNECEDORBANCO_DIGITO2: TStringField;
    SQL_FORNECEDORBANCO_OP: TStringField;
    chk_codigo: TcxCheckBox;
    chk_razao: TcxCheckBox;
    chk_fantasia: TcxCheckBox;
    chk_cpfcnpj: TcxCheckBox;
    BtnConsultarCnpj: TcxButton;
    chk_rural: TcxCheckBox;
    INSCRICAO_ESTADUAL: TDBEdit;
    lbl1: TLabel;
    lbl2: TLabel;
    lbl3: TLabel;
    lbl4: TLabel;
    lbl5: TLabel;
    grp1: TGroupBox;
    CEP: TDBEdit;
    lbl6: TLabel;
    NUMERO: TDBEdit;
    lbl7: TLabel;
    lbl8: TLabel;
    PAIS: TDBEdit;
    btn1: TcxButton;
    grp2: TGroupBox;
    TELEFONE: TDBEdit;
    CELULAR: TDBEdit;
    grp3: TGroupBox;
    TELEFONE_1: TDBEdit;
    CELULAR_1: TDBEdit;
    grp4: TGroupBox;
    BANCO_CONTA: TDBEdit;
    BANCO_AGENCIA: TDBEdit;
    BANCO: TDBEdit;
    BANCO_DIGITO: TDBEdit;
    BANCO_OP: TDBEdit;
    BANCO_DIGITO2: TDBEdit;
    BtnAlterar: TcxButton;
    BtnExcluir: TcxButton;
    COMPLEMENTO: TDBEdit;
    ESTADO: TDBEdit;
    CODIGO_MUNICIPIO: TDBEdit;
    MUNICIPIO: TDBEdit;
    ENDERECO: TDBEdit;
    CODIGO_PAIS: TDBEdit;
    CONTATO: TDBEdit;
    CONTATO_1: TDBEdit;
    EMAIL: TDBEdit;
    SKYPE: TDBEdit;
    EMAIL_1: TDBEdit;
    BAIRRO: TDBEdit;
    RAMO_ATIVIDADE: TDBEdit;
    RAZAO_SOCIAL: TDBEdit;
    NOME_FANTASIA: TDBEdit;
    sql_incrementAUTO_INCREMENT: TLargeintField;
    dbedt_codigo: TDBEdit;
    SQL_FORNECEDORSTATUS_CADASTRAL: TStringField;
    GroupBox2: TGroupBox;
    chk_ativo: TcxCheckBox;
    chk_inativo: TcxCheckBox;
    chk_todos: TcxCheckBox;
    CNPJ_CPF: TMaskEdit;
    procedure cxdbtxtdtRAZAO_SOCIALKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
    procedure ENDERECOKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
    procedure cxdbtxtdtBAIRROKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
    procedure COMPLEMENTOKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
    procedure cxdbtxtdtEMAILKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
    procedure cxdbtxtdtEMAIL_1KeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
    procedure cxdbtxtdtSKYPE2KeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
    procedure cxdbtxtdtRAMO_ATIVIDADEKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
    procedure BtnGravarClick(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure BtnIncluirClick(Sender: TObject);
    procedure btn1Click(Sender: TObject);
    procedure cxdbtxtdtNOME_FANTASIAKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
    procedure TELEFONEKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
    procedure TELEFONE_1KeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
    procedure CELULARKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
    procedure CONTATOKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
    procedure CELULAR_1KeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
    procedure CONTATO_1KeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
    procedure MskEdit1KeyPress(Sender: TObject; var Key: Char);
    procedure TELEFONEKeyPress(Sender: TObject; var Key: Char);
    procedure TELEFONE_1KeyPress(Sender: TObject; var Key: Char);
    procedure CELULARKeyPress(Sender: TObject; var Key: Char);
    procedure CELULAR_1KeyPress(Sender: TObject; var Key: Char);
    procedure CNPJ_CPFKeyPress(Sender: TObject; var Key: Char);
    procedure BANCOKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
    procedure NUMEROKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
    procedure CEPKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
    procedure DbGridDblClick(Sender: TObject);
    procedure btn1Exit(Sender: TObject);
    procedure CNPJ_CPFKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
    procedure INSCRICAO_ESTADUALKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
    procedure BtnCancelarClick(Sender: TObject);
    procedure chk_codigoClick(Sender: TObject);
    procedure chk_razaoClick(Sender: TObject);
    procedure chk_cpfcnpjClick(Sender: TObject);
    procedure chk_fantasiaClick(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure INSCRICAO_ESTADUALKeyPress(Sender: TObject; var Key: Char);
    procedure NUMEROKeyPress(Sender: TObject; var Key: Char);
    procedure CEPKeyPress(Sender: TObject; var Key: Char);
    procedure BANCO_CONTAKeyPress(Sender: TObject; var Key: Char);
    procedure BANCO_DIGITOKeyPress(Sender: TObject; var Key: Char);
    procedure BANCO_OPKeyPress(Sender: TObject; var Key: Char);
    procedure BANCO_AGENCIAKeyPress(Sender: TObject; var Key: Char);
    procedure BANCO_DIGITO2KeyPress(Sender: TObject; var Key: Char);
    procedure BANCO_CONTAKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
    procedure BANCO_DIGITOKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
    procedure BANCO_OPKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
    procedure BANCO_AGENCIAKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
    procedure BANCO_DIGITO2KeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
    procedure BtnExcluirClick(Sender: TObject);
    procedure EMAILKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
    procedure SKYPEKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
    procedure EMAIL_1KeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
    procedure RAZAO_SOCIALKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
    procedure NOME_FANTASIAKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
    procedure RAMO_ATIVIDADEKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
    procedure BAIRROKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
    procedure BANCOKeyPress(Sender: TObject; var Key: Char);
    procedure BtnAlterarClick(Sender: TObject);
    procedure btnImprimirClick(Sender: TObject);
    procedure FormKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
    procedure cxTabSheet1Show(Sender: TObject);
    procedure CarregarUltimoCadastro;
    procedure CarregarDadosInternos;
    procedure edtConsultaKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
    procedure chk_ativoClick(Sender: TObject);
    procedure chk_inativoClick(Sender: TObject);
    procedure chk_todosClick(Sender: TObject);
    procedure DbGridDrawColumnCell(Sender: TObject; const Rect: TRect; DataCol: Integer; Column: TColumn; State: TGridDrawState);
    procedure CNPJ_CPFExit(Sender: TObject);
    procedure CNPJ_CPFEnter(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Frm_fornecedor: TFrm_fornecedor;

implementation

{$R *.dfm}

uses
  U_Municipio, u_funcoes,
  liberacao;

procedure TFrm_fornecedor.BtnIncluirClick(Sender: TObject);
begin
  if BtnIncluir.Visible = true then
  begin
    sql_increment.active := true;
    BtnConsultarCnpj.Enabled := true;
    u_funcoes.AlterarEnabled([GroupBox20, grp1, grp2, grp3, grp4], true);
    SQL_FORNECEDOR.active := true;
    SQL_FORNECEDOR.Insert;
    SQL_FORNECEDORDATA_CADASTRO.Value := Date;
    if sql_incrementAUTO_INCREMENT.Value = 0 then
      dbedt_codigo.Text := '1'
    else
      dbedt_codigo.Text := inttostr(sql_incrementAUTO_INCREMENT.Value);
    u_funcoes.IniciarCadastro([BtnIncluir, BtnCancelar, BtnAlterar, BtnExcluir], true);
    BtnConsultarCnpj.Enabled := true;
    RAZAO_SOCIAL.SetFocus;
  end;
end;

procedure TFrm_fornecedor.btnImprimirClick(Sender: TObject);
begin
  manworking;
end;

procedure TFrm_fornecedor.BtnAlterarClick(Sender: TObject);
begin
  if RAZAO_SOCIAL.Text = '' then
  begin
    wnAlerta('Alterar', 'Nenhum fornecedor foi selecionado.');
  end
  else
  begin
    SQL_FORNECEDOR.active := true;
    SQL_FORNECEDOR.Edit;
    u_funcoes.AlterarEnabled([GroupBox20, grp1, grp2, grp3, grp4], true);
    u_funcoes.IniciarCadastro([BtnIncluir, BtnCancelar, BtnAlterar, BtnExcluir], true);
    BtnConsultarCnpj.Enabled := true;
    RAZAO_SOCIAL.SetFocus;
  end;
end;

procedure TFrm_fornecedor.BtnExcluirClick(Sender: TObject);
begin
  if (dbedt_codigo.Text = '') or (dbedt_codigo.Text = '0') then
  begin
    wnAlerta('Excluir', 'Nenhum fornecedor foi selecionado.');
  end
  else
  begin
    if not TEnv.Tuser.IsAdmin then
    begin
      if TFrm_liberacao.Execute then
      begin
        u_funcoes.ExcluirCadastro(SQL_FORNECEDOR);
      end;
    end
    else
    begin
      u_funcoes.ExcluirCadastro(SQL_FORNECEDOR);
    end;
    CarregarUltimoCadastro;
    CarregarDadosInternos;
  end;;
end;

procedure TFrm_fornecedor.BtnCancelarClick(Sender: TObject);
begin
  SQL_FORNECEDOR.Cancel;
  SQL_FORNECEDOR.Close;
  CarregarUltimoCadastro;
  CarregarDadosInternos;
end;

procedure TFrm_fornecedor.BtnGravarClick(Sender: TObject);
var
  Mask, result: string;
begin
  if (dbedt_codigo.Text <> '') or (dbedt_codigo.Text <> '0') or (RAZAO_SOCIAL.Text <> '') then
  begin
    if u_funcoes.CamposObrigatorios([RAZAO_SOCIAL, ENDERECO, NUMERO, BAIRRO], ['RAZAO SOCIAL', 'ENDEREÇO', 'NÚMERO', 'BAIRRO'], [], [], [], []) then
    begin
      Exit
    end;
    try
      if chk_ativo_cadastro.Checked = true then
        SQL_FORNECEDORSTATUS_CADASTRAL.Value := 'ATIVO'
      else if chk_ativo_cadastro.Checked = false then
        SQL_FORNECEDORSTATUS_CADASTRAL.Value := 'INATIVO';

      if chk_rural.Checked = true then
        SQL_FORNECEDORPRODUTOR_RURAL.Value := 'SIM'
      else if chk_rural.Checked = false then
        SQL_FORNECEDORPRODUTOR_RURAL.Value := 'NAO';
      SQL_FORNECEDORCNPJ_CPF.Value := CNPJ_CPF.Text;
      SQL_FORNECEDOR.Post;
      SQL_FORNECEDOR.active := false;
      u_funcoes.CamposOpcionais([CONTATO, TELEFONE, CELULAR], ['Contato', 'Telefone', 'Celular']);
      CarregarUltimoCadastro;
      CarregarDadosInternos;
    except
      on E: Exception do
      begin
        wnErro('Erro de Cadastro', E.Message + sLineBreak + 'Erro ao cadastrar Fornecedor.');
      end;
    end;

  end;

end;

procedure TFrm_fornecedor.chk_ativoClick(Sender: TObject);
begin
  u_funcoes.AlteraChecks(chk_ativo, [chk_inativo, chk_todos]);
  edtConsulta.SetFocus;
end;

procedure TFrm_fornecedor.chk_codigoClick(Sender: TObject);
begin
  u_funcoes.AlteraChecks(chk_codigo, [chk_razao, chk_fantasia, chk_cpfcnpj]);
end;

procedure TFrm_fornecedor.chk_cpfcnpjClick(Sender: TObject);
begin
  u_funcoes.AlteraChecks(chk_cpfcnpj, [chk_razao, chk_fantasia, chk_codigo]);
end;

procedure TFrm_fornecedor.chk_fantasiaClick(Sender: TObject);
begin
  u_funcoes.AlteraChecks(chk_fantasia, [chk_razao, chk_cpfcnpj, chk_codigo]);
end;

procedure TFrm_fornecedor.chk_inativoClick(Sender: TObject);
begin
  u_funcoes.AlteraChecks(chk_inativo, [chk_ativo, chk_todos]);
  edtConsulta.SetFocus;
end;

procedure TFrm_fornecedor.chk_razaoClick(Sender: TObject);
begin
  u_funcoes.AlteraChecks(chk_razao, [chk_codigo, chk_fantasia, chk_cpfcnpj]);
end;

procedure TFrm_fornecedor.chk_todosClick(Sender: TObject);
begin
  u_funcoes.AlteraChecks(chk_todos, [chk_ativo, chk_inativo]);
  edtConsulta.SetFocus;
end;

procedure TFrm_fornecedor.btn1Click(Sender: TObject);
begin
  Frm_Municipio := TFrm_Municipio.Create(Application);
  Frm_Municipio.InformarDadosMunicipio(MUNICIPIO, CODIGO_MUNICIPIO, ESTADO, PAIS, CODIGO_PAIS);
  Frm_Municipio.ShowModal;
  CODIGO_MUNICIPIO.Text := Frm_Municipio.SQL_MunicipioIBGE.AsString;
  Frm_Municipio.Free;
  TELEFONE.SetFocus;
end;

procedure TFrm_fornecedor.btn1Exit(Sender: TObject);
begin
  TELEFONE.SetFocus;
end;

procedure TFrm_fornecedor.ENDERECOKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
begin
  if (Key = vk_Return) or (Key = vk_tab) then
  begin
    NUMERO.SetFocus;
  end;
end;

procedure TFrm_fornecedor.cxdbtxtdtBAIRROKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
begin
  if (Key = vk_Return) or (Key = vk_tab) then
  begin
    COMPLEMENTO.SetFocus;
  end;
end;

procedure TFrm_fornecedor.COMPLEMENTOKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
begin
  if (Key = vk_Return) or (Key = vk_tab) then
  begin
    CEP.SetFocus;
  end;
end;

procedure TFrm_fornecedor.cxdbtxtdtEMAILKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
begin
  if (Key = vk_Return) or (Key = vk_tab) then
  begin
    SKYPE.SetFocus;
  end;
end;

procedure TFrm_fornecedor.EMAILKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
begin
  if (Key = vk_Return) or (Key = vk_tab) then
  begin
    SKYPE.SetFocus;
  end;
end;

procedure TFrm_fornecedor.EMAIL_1KeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
begin
  if (Key = vk_Return) or (Key = vk_tab) then
  begin
    BANCO.SetFocus;
  end;
end;

procedure TFrm_fornecedor.cxdbtxtdtEMAIL_1KeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
begin
  if (Key = vk_Return) or (Key = vk_tab) then
  begin
    BANCO.SetFocus;
  end;

end;

procedure TFrm_fornecedor.cxdbtxtdtSKYPE2KeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
begin
  if (Key = vk_Return) or (Key = vk_tab) then
  begin
    TELEFONE_1.SetFocus;
  end;
end;

procedure TFrm_fornecedor.cxTabSheet1Show(Sender: TObject);
begin
  u_funcoes.ListarTodosCadastros(SQL_C_FORNECEDOR, 'FORNECEDOR');
end;

procedure TFrm_fornecedor.cxdbtxtdtRAZAO_SOCIALKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
begin
  if (Key = vk_Return) or (Key = vk_tab) then
  begin
    CNPJ_CPF.SetFocus;
  end;
end;

procedure TFrm_fornecedor.SKYPEKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
begin
  if (Key = vk_Return) or (Key = vk_tab) then
  begin
    TELEFONE_1.SetFocus;
  end;
end;

procedure TFrm_fornecedor.cxdbtxtdtNOME_FANTASIAKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
begin
  if (Key = vk_Return) or (Key = vk_tab) then
  begin
    RAZAO_SOCIAL.SetFocus;
  end;
end;

procedure TFrm_fornecedor.cxdbtxtdtRAMO_ATIVIDADEKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
begin
  if (Key = vk_Return) or (Key = vk_tab) then
  begin
    ENDERECO.SetFocus;
  end;

end;

procedure TFrm_fornecedor.CONTATO_1KeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
begin
  if (Key = vk_Return) or (Key = vk_tab) then
  begin
    CELULAR_1.SetFocus;
  end;
end;

procedure TFrm_fornecedor.NOME_FANTASIAKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
begin
  if (Key = vk_Return) or (Key = vk_tab) then
  begin
    CNPJ_CPF.SetFocus;
  end;
end;

procedure TFrm_fornecedor.NUMEROKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
begin
  if (Key = vk_Return) or (Key = vk_tab) then
  begin
    BAIRRO.SetFocus;
  end;
end;

procedure TFrm_fornecedor.NUMEROKeyPress(Sender: TObject; var Key: Char);
begin
  inherited;
  Key := u_funcoes.ApenasNumeros(Key);

end;

procedure TFrm_fornecedor.RAMO_ATIVIDADEKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
begin
  if (Key = vk_Return) or (Key = vk_tab) then
  begin
    ENDERECO.SetFocus;
  end;
end;

procedure TFrm_fornecedor.RAZAO_SOCIALKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
begin
  if (Key = vk_Return) or (Key = vk_tab) then
  begin
    NOME_FANTASIA.SetFocus;
  end;
end;

procedure TFrm_fornecedor.INSCRICAO_ESTADUALKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
begin
  if (Key = vk_Return) or (Key = vk_tab) then
  begin
    RAMO_ATIVIDADE.SetFocus;
  end;
end;

procedure TFrm_fornecedor.INSCRICAO_ESTADUALKeyPress(Sender: TObject; var Key: Char);
begin
  inherited;
  Key := u_funcoes.ApenasNumeros(Key);

end;

procedure TFrm_fornecedor.CEPKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
begin
  if (Key = vk_Return) or (Key = vk_tab) then
  begin
    btn1.Click;
  end;
end;

procedure TFrm_fornecedor.CEPKeyPress(Sender: TObject; var Key: Char);
begin
  inherited;
  Key := u_funcoes.ApenasNumeros(Key);
end;

procedure TFrm_fornecedor.BANCO_OPKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
begin
  if (Key = vk_Return) or (Key = vk_tab) then
  begin
    BANCO_AGENCIA.SetFocus;
  end;
end;

procedure TFrm_fornecedor.BANCO_OPKeyPress(Sender: TObject; var Key: Char);
begin
  inherited;
  Key := u_funcoes.ApenasNumeros(Key);
end;

procedure TFrm_fornecedor.CNPJ_CPFEnter(Sender: TObject);
begin
  CNPJ_CPF.editmask := '';
end;

procedure TFrm_fornecedor.CNPJ_CPFExit(Sender: TObject);
begin
  u_funcoes.cnpjcpf(CNPJ_CPF);
end;

procedure TFrm_fornecedor.CNPJ_CPFKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
begin
  if (Key = vk_Return) or (Key = vk_tab) then
  begin
    INSCRICAO_ESTADUAL.SetFocus;
  end;
end;

procedure TFrm_fornecedor.CNPJ_CPFKeyPress(Sender: TObject; var Key: Char);
begin
  inherited;
  Key := u_funcoes.ApenasNumeros(Key);
end;

procedure TFrm_fornecedor.BANCO_AGENCIAKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
begin
  if (Key = vk_Return) or (Key = vk_tab) then
  begin
    BANCO_DIGITO2.SetFocus;
  end;
end;

procedure TFrm_fornecedor.BANCO_AGENCIAKeyPress(Sender: TObject; var Key: Char);
begin
  inherited;
  Key := u_funcoes.ApenasNumeros(Key);
end;

procedure TFrm_fornecedor.BANCO_CONTAKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
begin
  if (Key = vk_Return) or (Key = vk_tab) then
  begin
    BANCO_DIGITO.SetFocus;
  end;
end;

procedure TFrm_fornecedor.BANCO_CONTAKeyPress(Sender: TObject; var Key: Char);
begin
  inherited;
  Key := u_funcoes.ApenasNumeros(Key);
end;

procedure TFrm_fornecedor.BANCO_DIGITOKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
begin
  if (Key = vk_Return) or (Key = vk_tab) then
  begin
    BANCO_OP.SetFocus;
  end;
end;

procedure TFrm_fornecedor.BANCO_DIGITOKeyPress(Sender: TObject; var Key: Char);
begin
  inherited;
  Key := u_funcoes.ApenasNumeros(Key);
end;

procedure TFrm_fornecedor.BANCO_DIGITO2KeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
begin
  if (Key = vk_Return) or (Key = vk_tab) then
  begin
    BtnGravar.Click;
  end;
end;

procedure TFrm_fornecedor.BANCO_DIGITO2KeyPress(Sender: TObject; var Key: Char);
begin
  inherited;
  Key := u_funcoes.ApenasNumeros(Key);
end;

procedure TFrm_fornecedor.BAIRROKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
begin
  if (Key = vk_Return) or (Key = vk_tab) then
  begin
    COMPLEMENTO.SetFocus;
  end;
end;

procedure TFrm_fornecedor.BANCOKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
begin
  if (Key = vk_Return) or (Key = vk_tab) then
  begin
    BANCO_CONTA.SetFocus;
  end;
end;

procedure TFrm_fornecedor.BANCOKeyPress(Sender: TObject; var Key: Char);
begin
  inherited;
  Key := u_funcoes.ApenasLetras(Key);
end;

procedure TFrm_fornecedor.TELEFONEKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
begin
  if (Key = vk_Return) or (Key = vk_tab) then
  begin
    CELULAR.SetFocus;
  end;
end;

procedure TFrm_fornecedor.TELEFONEKeyPress(Sender: TObject; var Key: Char);
begin
  inherited;
  Key := u_funcoes.ApenasNumeros(Key);
end;

procedure TFrm_fornecedor.TELEFONE_1KeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
begin
  if (Key = vk_Return) or (Key = vk_tab) then
  begin
    CONTATO_1.SetFocus;
  end;
end;

procedure TFrm_fornecedor.TELEFONE_1KeyPress(Sender: TObject; var Key: Char);
begin
  inherited;
  Key := u_funcoes.ApenasNumeros(Key);
end;

procedure TFrm_fornecedor.CarregarDadosInternos;
begin
  SQL_FORNECEDOR.active := true;
  if SQL_FORNECEDORSTATUS_CADASTRAL.Value = 'ATIVO' then
    chk_ativo_cadastro.Checked := true
  else if SQL_FORNECEDORSTATUS_CADASTRAL.Value = 'INATIVO' then
    chk_ativo_cadastro.Checked := false;

  if SQL_FORNECEDORPRODUTOR_RURAL.Value = 'SIM' then
    chk_rural.Checked := true
  else if SQL_FORNECEDORPRODUTOR_RURAL.Value = 'NAO' then
    chk_rural.Checked := false;

  CNPJ_CPF.Text := SQL_FORNECEDORCNPJ_CPF.Value;
  cnpjcpf(CNPJ_CPF);
  u_funcoes.AlterarEnabled([GroupBox20, grp1, grp2, grp3, grp4], false);
  u_funcoes.IniciarCadastro([BtnIncluir, BtnCancelar, BtnAlterar, BtnExcluir], false);
  u_funcoes.CamposObrigatorios_CorPadrao([RAZAO_SOCIAL, ENDERECO, NUMERO, BAIRRO], [], []);

  BtnConsultarCnpj.Enabled := false;
end;

procedure TFrm_fornecedor.CarregarUltimoCadastro;
begin
  sql_increment.active := false;
  sql_increment.active := true;
  with SQL_FORNECEDOR do
  begin
    active := false;
    Close;
    ParamByName('pcodigo').Value := (sql_incrementAUTO_INCREMENT.Value - 1);
    open;
    active := true;
  end;
end;

procedure TFrm_fornecedor.CELULARKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
begin
  if (Key = vk_Return) or (Key = vk_tab) then
  begin
    CONTATO.SetFocus;
  end;
end;

procedure TFrm_fornecedor.CELULARKeyPress(Sender: TObject; var Key: Char);
begin
  Key := u_funcoes.ApenasNumeros(Key);
end;

procedure TFrm_fornecedor.CONTATOKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
begin
  if (Key = vk_Return) or (Key = vk_tab) then
  begin
    EMAIL.SetFocus;
  end;
end;

procedure TFrm_fornecedor.CELULAR_1KeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
begin
  if (Key = vk_Return) or (Key = vk_tab) then
  begin
    EMAIL_1.SetFocus;
  end;
end;

procedure TFrm_fornecedor.CELULAR_1KeyPress(Sender: TObject; var Key: Char);
begin
  inherited;
  Key := u_funcoes.ApenasNumeros(Key);
end;

procedure TFrm_fornecedor.DbGridDblClick(Sender: TObject);
begin
  u_funcoes.ConsultarCadastros(SQL_FORNECEDOR, quotedstr(inttostr(SQL_C_FORNECEDORCODIGO.Value) + '%'), 'FORNECEDOR', 'CODIGO', 'pcodigo', '', '',
    '', 0, 0);
  CarregarDadosInternos;
  BtnConsultarCnpj.Enabled := false;
  cxTabSheet2.Show;
end;

procedure TFrm_fornecedor.DbGridDrawColumnCell(Sender: TObject; const Rect: TRect; DataCol: Integer; Column: TColumn; State: TGridDrawState);
begin
  GridZebrado(DbGrid, Rect, DataCol, Column, State);
end;

procedure TFrm_fornecedor.edtConsultaKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
var
  CAMPO, PARAMETRO, STATUS, Text: string;
begin
  if Key = vk_Return then
  begin
    STATUS := ''; // Para todos
    if chk_ativo.Checked = true then // Cadastro Ativo
      STATUS := 'ATIVO'
    else if chk_inativo.Checked = true then
      // Cadastro Inativo
      STATUS := 'INATIVO';
    if chk_razao.Checked then
    begin
      CAMPO := 'RAZAO_SOCIAL';
      PARAMETRO := 'pnome';
      Text := quotedstr('%' + edtConsulta.Text + '%');
    end
    else if chk_codigo.Checked then
    begin
      CAMPO := 'CODIGO';
      PARAMETRO := 'pcodigo';
      Text := quotedstr(edtConsulta.Text + '%');
    end
    else if chk_fantasia.Checked then
    begin
      CAMPO := 'NOME_FANTASIA';
      PARAMETRO := 'pfantasia';
      Text := quotedstr('%' + edtConsulta.Text + '%');
    end
    else if chk_cpfcnpj.Checked then
    begin
      CAMPO := 'CNPJ_CPF';
      PARAMETRO := 'pcnpjcpf';
      Text := quotedstr(edtConsulta.Text + '%');
    end;
    u_funcoes.ConsultarCadastros(SQL_C_FORNECEDOR, Text, 'FORNECEDOR', CAMPO, PARAMETRO, STATUS, '', '', 0, 0);
  end;
end;

procedure TFrm_fornecedor.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  Action := CAFREE;
  Self := nil;
end;

procedure TFrm_fornecedor.FormKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
begin
  u_funcoes.TeclasAtalho(Key, [VK_F1, VK_F2, VK_F3, VK_F4, VK_F5, VK_F6], [BtnIncluir, BtnGravar, BtnCancelar, BtnConsultarCnpj, BtnAlterar,
    BtnExcluir]);
end;

procedure TFrm_fornecedor.FormShow(Sender: TObject);
begin
  CarregarUltimoCadastro;
  CarregarDadosInternos;
end;

procedure TFrm_fornecedor.MskEdit1KeyPress(Sender: TObject; var Key: Char);
begin
  inherited;
  Key := u_funcoes.ApenasNumeros(Key);
end;

end.
