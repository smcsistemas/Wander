//Verificado automaticamente em 16/06/2020 09:28
unit Informa_Cliente;

interface

uses
  Winapi.Windows, System.SysUtils, System.Variants,
  System.Classes,
  Vcl.Controls, Vcl.Forms,

  Vcl.StdCtrls, cxButtons,

  Data.DB,
  FireDAC.Comp.Client, Vcl.Mask, Vcl.DBCtrls, h_functions, cxGraphics, cxLookAndFeels, cxLookAndFeelPainters, Vcl.Menus, dxSkinsCore,
  dxSkinBlack, dxSkinBlue, dxSkinBlueprint, dxSkinCaramel,
  dxSkinCoffee, dxSkinDarkRoom, dxSkinDarkSide, dxSkinDevExpressDarkStyle, dxSkinDevExpressStyle, dxSkinFoggy, dxSkinGlassOceans,
  dxSkinHighContrast, dxSkiniMaginary, dxSkinLilian, dxSkinLiquidSky,
  dxSkinLondonLiquidSky, dxSkinMcSkin, dxSkinMetropolis, dxSkinMetropolisDark, dxSkinMoneyTwins, dxSkinOffice2007Black,
  dxSkinOffice2007Blue, dxSkinOffice2007Green, dxSkinOffice2007Pink,
  dxSkinOffice2007Silver, dxSkinOffice2010Black, dxSkinOffice2010Blue, dxSkinOffice2010Silver, dxSkinOffice2013DarkGray,
  dxSkinOffice2013LightGray, dxSkinOffice2013White, dxSkinOffice2016Colorful,
  dxSkinOffice2016Dark, dxSkinPumpkin, dxSkinSeven, dxSkinSevenClassic, dxSkinSharp, dxSkinSharpPlus, dxSkinSilver, dxSkinSpringTime,
  dxSkinStardust, dxSkinSummer2008, dxSkinTheAsphaltWorld,
  dxSkinsDefaultPainters, dxSkinValentine, dxSkinVisualStudio2013Blue, dxSkinVisualStudio2013Dark, dxSkinVisualStudio2013Light,
  dxSkinVS2010, dxSkinWhiteprint, dxSkinXmas2008Blue;

type
  TFrm_Informa_Cliente = class(TForm)
    Label3: TLabel;
    Label1: TLabel;
    edt_nome: TEdit;
    btn_concluir: TcxButton;
    edt_ie_rg: TEdit;
    Label2: TLabel;
    Label4: TLabel;
    edt_telefone: TMaskEdit;
    edt_cpf_cnpj: TMaskEdit;
    Label5: TLabel;
    Label6: TLabel;
    Label7: TLabel;
    edt_rua: TEdit;
    edt_numero: TEdit;
    edt_bairro: TEdit;
    Label8: TLabel;
    Label9: TLabel;
    edt_celular: TMaskEdit;
    btn_con_cliente: TcxButton;
    btn_con_municipio: TcxButton;
    edt_municipio: TEdit;
    db_muni: TDBEdit;
    edt_uf: TEdit;
    Label10: TLabel;
    btn_cancelar: TcxButton;
    db_uf: TDBEdit;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormShow(Sender: TObject);
    procedure limparcampos_cad_cli(const cpf: boolean = true);
    procedure CONFIRMARClick(Sender: TObject);
    procedure btn_concluirClick(Sender: TObject);
    procedure edt_nomeKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
    procedure edt_cpf_cnpjKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
    procedure edt_ruaKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
    procedure edt_cpf_cnpjEnter(Sender: TObject);
    procedure edt_telefoneEnter(Sender: TObject);
    procedure edt_telefoneExit(Sender: TObject);
    procedure edt_cpf_cnpjKeyPress(Sender: TObject; var Key: Char);
    procedure edt_telefoneKeyPress(Sender: TObject; var Key: Char);
    procedure edt_telefoneKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
    procedure edt_numeroKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
    procedure edt_bairroKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
    procedure edt_numeroKeyPress(Sender: TObject; var Key: Char);
    procedure edt_ie_rgKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
    procedure FormKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
    procedure edt_cpf_cnpjExit(Sender: TObject);
    procedure edt_cpf_cnpjKeyUp(Sender: TObject; var Key: Word; Shift: TShiftState);
    procedure ConsultarCliente;
    procedure edt_celularExit(Sender: TObject);
    procedure edt_celularEnter(Sender: TObject);
    procedure edt_celularKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
    procedure edt_celularKeyPress(Sender: TObject; var Key: Char);
    procedure btn_con_clienteClick(Sender: TObject);
    procedure wnConsultarCliente;
    procedure btn_con_municipioClick(Sender: TObject);
    function VerificarCadastro: boolean;
    procedure edt_municipioKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
    procedure FormCreate(Sender: TObject);
    procedure btn_cancelarClick(Sender: TObject);

  private
    { Private declarations }
    fechar_botao: boolean;
    TIPO_PESSOA: string;
    ibge_mun: integer;
  public
    { Public declarations }
    by_button: boolean;
    cod_cliente: integer;

  end;

var
  Frm_Informa_Cliente: TFrm_Informa_Cliente;

implementation

{$R *.dfm}

uses vw_pdv, u_funcoes, vw_consulta_generica, U_Municipio, c_Globals, h_DB;

procedure TFrm_Informa_Cliente.limparcampos_cad_cli(const cpf: boolean = true);
begin
  edt_nome.Clear;
  if cpf then
    edt_cpf_cnpj.Clear;
  edt_ie_rg.Clear;
  edt_telefone.Clear;
  edt_celular.Clear;
  edt_rua.Clear;
  edt_bairro.Clear;
  edt_numero.Clear;
  edt_municipio.Clear;
end;

function TFrm_Informa_Cliente.VerificarCadastro: boolean;
var
  qry, qry_aux: tfdquery;
  CPF_CPNJ, tp_pessoa: string;
  bFisica: boolean;
begin
  result := true;
  try
    CPF_CPNJ := removercaracteresespeciais(edt_cpf_cnpj.Text);
    if removercaracteresespeciais(edt_cpf_cnpj.Text) <> emptystr then
    begin
      qry := nil;
      qry_aux := nil;
      if length(CPF_CPNJ) = 11 then
        qry := simplequery('SELECT CODIGO FROM CLIENTE WHERE REPLACE(REPLACE(CPF, ".", ""),"-","")= "' + CPF_CPNJ + '"')
      else if length(CPF_CPNJ) = 14 then
        qry := simplequery('SELECT CODIGO FROM CLIENTE WHERE REPLACE(REPLACE(REPLACE(CNPJ, ".", ""),"-",""), "/", "")="' + CPF_CPNJ + '"');
      if qry = nil then
      begin
        if wnConfirmacao('Cliente | PDV', 'Cliente informado não está cadastrado!' + slinebreak +
          'Deseja cadastrá-lo com as informações fornecidas para utilizações futuras ?') then
        begin
          if length(CPF_CPNJ) = 11 then
          begin
            tdb.ExecQuery('INSERT INTO CLIENTE(RAZAO_SOCIAL, CPF, RG, TELEFONE, CELULAR, ENDERECO, NUMERO, BAIRRO, MUNICIPIO,' +
              ' CODIGO_MUNICIPIO, ESTADO, PAIS, CODIGO_PAIS, PESSOA_TIPO, STATUS_CADASTRAL) values (?,?,?,?,?,?,?,?,?,?,?,"BRASIL",1058,"FISICA","ATIVO")',
              [edt_nome.Text, removercaracteresespeciais(edt_cpf_cnpj.Text), edt_ie_rg.Text, removercaracteresespeciais(edt_telefone.Text),
              removercaracteresespeciais(edt_celular.Text), edt_rua.Text, edt_numero.Text, edt_bairro.Text, edt_municipio.Text, ibge_mun,
              edt_uf.Text]);
          end
          else if length(CPF_CPNJ) = 14 then
          BEGIN
            tdb.ExecQuery('INSERT INTO CLIENTE(RAZAO_SOCIAL, CNPJ, RG, TELEFONE, CELULAR, ENDERECO, NUMERO, BAIRRO, MUNICIPIO,' +
              ' CODIGO_MUNICIPIO, ESTADO, PAIS, CODIGO_PAIS, PESSOA_TIPO, STATUS_CADASTRAL) values (?,?,?,?,?,?,?,?,?,?,?,"BRASIL",1058,"JURIDICA","ATIVO")',
              [edt_nome.Text, removercaracteresespeciais(edt_cpf_cnpj.Text), edt_ie_rg.Text, removercaracteresespeciais(edt_telefone.Text),
              removercaracteresespeciais(edt_celular.Text), edt_rua.Text, edt_numero.Text, edt_bairro.Text, edt_municipio.Text, ibge_mun,
              edt_uf.Text]);
          END;
        end;
      end;
    end;
  except
    on e: Exception do
    begin
      wnerro('Cadastrar Cliente PDV', e.Message + slinebreak + 'Erro ao cadastrar cliente!');
    end;
  end;
end;

procedure TFrm_Informa_Cliente.wnConsultarCliente;
var
  qry: tfdquery;
  cpf_cnpj: string;
  edt_cod: TEdit;
begin
  edt_cpf_cnpj.Clear;
  edt_cpf_cnpj.editmask := '';
  edt_cod := TEdit.create(nil);
  frm_consulta_generica := tfrm_consulta_generica.create(nil, cgCliente, edt_cod);
  frm_consulta_generica.ShowModal;
  if edt_cod.Text <> emptystr then
  begin
    cpf_cnpj := TFunctions.ifthen(simplequery('SELECT PESSOA_TIPO FROM CLIENTE WHERE CODIGO = ?', [edt_cod.Text]).fields[0].AsString,
      ['FISICA', 'JURIDICA', ''], ['CPF', 'CNPJ', 'CPF']);
    qry := simplequery('SELECT RAZAO_SOCIAL, FANTASIA, ' + cpf_cnpj +
      ' ,RG, TELEFONE, CELULAR, ENDERECO, NUMERO, BAIRRO, MUNICIPIO FROM CLIENTE WHERE CODIGO = ?', [edt_cod.Text]);
    with qry do
    begin
      cod_cliente := strtoint(edt_cod.Text);
      if fields[0].Text <> emptystr then
        edt_nome.Text := fields[0].Text
      else if fields[1].Text <> emptystr then
        edt_nome.Text := fields[1].Text;
      edt_cpf_cnpj.Text := removercaracteresespeciais(fields[2].Text);
      edt_ie_rg.Text := fields[3].Text;
      edt_telefone.Text := fields[4].Text;
      edt_celular.Text := fields[5].Text;
      edt_rua.Text := fields[6].Text;
      edt_numero.Text := fields[7].Text;
      edt_bairro.Text := fields[8].Text;
      edt_municipio.Text := fields[9].Text;
    end;
  end;
end;

procedure TFrm_Informa_Cliente.edt_telefoneEnter(Sender: TObject);
begin
  edt_telefone.editmask := '';
end;

procedure TFrm_Informa_Cliente.edt_telefoneExit(Sender: TObject);
begin
  FormatTelefone(edt_telefone);
end;

procedure TFrm_Informa_Cliente.edt_telefoneKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
begin
  if (Key = vk_return) or (Key = vk_tab) then
    edt_celular.SetFocus;
end;

procedure TFrm_Informa_Cliente.edt_telefoneKeyPress(Sender: TObject; var Key: Char);
begin
  inherited;
  Key := ApenasNumeros(Key);
end;

procedure TFrm_Informa_Cliente.edt_celularEnter(Sender: TObject);
begin
  edt_celular.editmask := '';
end;

procedure TFrm_Informa_Cliente.edt_celularExit(Sender: TObject);
begin
  FormatTelefone(edt_celular);
end;

procedure TFrm_Informa_Cliente.edt_celularKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
begin
  if (Key = vk_return) or (Key = vk_tab) then
    edt_rua.SetFocus;
end;

procedure TFrm_Informa_Cliente.edt_celularKeyPress(Sender: TObject; var Key: Char);
begin
  inherited;
  Key := ApenasNumeros(Key);
end;

procedure TFrm_Informa_Cliente.btn_con_clienteClick(Sender: TObject);
BEGIN
  wnConsultarCliente;
END;

procedure TFrm_Informa_Cliente.btn_con_municipioClick(Sender: TObject);
var
  cod_mun: TDBEdit;
begin
  cod_mun := TDBEdit.create(nil);
  Frm_Municipio := TFrm_Municipio.create(nil);
  Frm_Municipio.InformarDadosMunicipio(db_muni, cod_mun, db_uf, nil, nil);
  Frm_Municipio.ShowModal;
  edt_municipio.Text := db_muni.Text;
  edt_uf.Text := db_uf.Text;
  ibge_mun := strtoint(cod_mun.Text);
  Frm_Municipio.Free;
end;

procedure TFrm_Informa_Cliente.CONFIRMARClick(Sender: TObject);
begin
  close;
end;

procedure TFrm_Informa_Cliente.ConsultarCliente;
var
  qry: tfdquery;
  CPF_CPNJ: string;
begin
  if edt_cpf_cnpj.Text <> emptystr then
  BEGIN
    qry := nil;
    CPF_CPNJ := removercaracteresespeciais(edt_cpf_cnpj.Text);
    if length(CPF_CPNJ) = 11 then
      qry := simplequery
        ('SELECT RAZAO_SOCIAL, FANTASIA, CPF, RG, TELEFONE, CELULAR, ENDERECO, NUMERO, BAIRRO, MUNICIPIO FROM CLIENTE WHERE REPLACE(REPLACE(CPF, ".", ""),"-","")= "'
        + CPF_CPNJ + '"')
    else if length(removercaracteresespeciais(edt_cpf_cnpj.Text)) = 14 then
      qry := simplequery
        ('SELECT RAZAO_SOCIAL, FANTASIA, CNPJ, INSCRICAO_ESTADUAL, TELEFONE, CELULAR, ENDERECO, NUMERO, BAIRRO, MUNICIPIO FROM CLIENTE WHERE REPLACE(REPLACE(REPLACE(CNPJ, ".", ""),"-",""), "/", "")="'
        + CPF_CPNJ + '"');
    if qry <> nil then
    begin
      limparcampos_cad_cli;
      with qry do
      begin
        if fields[0].Text <> emptystr then
          edt_nome.Text := fields[0].Text
        else if fields[1].Text <> emptystr then
          edt_nome.Text := fields[1].Text;
        edt_cpf_cnpj.Text := CPF_CPNJ;
        edt_ie_rg.Text := fields[3].Text;
        edt_telefone.Text := fields[4].Text;
        edt_celular.Text := fields[5].Text;
        edt_rua.Text := fields[6].Text;
        edt_numero.Text := fields[7].Text;
        edt_bairro.Text := fields[8].Text;
        edt_municipio.Text := fields[9].Text;
      end;
      cnpjcpf(edt_cpf_cnpj);
      FormatTelefone(edt_celular);
      FormatTelefone(edt_telefone);
      edt_cpf_cnpj.SelectAll;
      edt_cpf_cnpj.SetFocus;
    end;
  END;
end;

procedure TFrm_Informa_Cliente.btn_cancelarClick(Sender: TObject);
begin
  close;
end;

procedure TFrm_Informa_Cliente.btn_concluirClick(Sender: TObject);
  procedure cad_cliente;
  begin
    fechar_botao := true;
    if VerificarCadastro then
    begin
      by_button := true;
      close;
      Frm_PDV.FORM_PDV.Edt_codBarras.SetFocus;
    end;
  end;

begin
  if simplequery('SELECT CPF_CAD_CLIENTE FROM PARAMETROS_SISTEMA').fields[0].AsString = m_true then
    if (length(removercaracteresespeciais(edt_cpf_cnpj.Text)) = 11) or (length(removercaracteresespeciais(edt_cpf_cnpj.Text)) = 14) then
      cad_cliente
    else
      wnalerta('Cadastrar Cliente', slinebreak + slinebreak + 'CNPJ/CPF inválido!')
  else if simplequery('SELECT CPF_CAD_CLIENTE FROM PARAMETROS_SISTEMA').fields[0].AsString = m_false then
  begin
    fechar_botao := true;
    by_button := true;
    close;
    Frm_PDV.FORM_PDV.Edt_codBarras.SetFocus;
  end;
end;

procedure TFrm_Informa_Cliente.edt_ie_rgKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
begin
  if (Key = vk_return) or (Key = vk_tab) then
    edt_telefone.SetFocus;
end;

procedure TFrm_Informa_Cliente.edt_municipioKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
begin
  if (edt_municipio.Text = emptystr) and (Key = vk_return) then
    btn_con_municipio.Click
  else
  begin
    if (Key = vk_return) or (Key = vk_tab) then
      btn_concluir.Click;
  end;
end;

procedure TFrm_Informa_Cliente.edt_ruaKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
begin
  if (Key = vk_return) or (Key = vk_tab) then
    edt_numero.SetFocus;
end;

procedure TFrm_Informa_Cliente.edt_nomeKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
begin
  if (Key = vk_return) and (edt_nome.Text = emptystr) then
    btn_con_cliente.Click
  else if (Key = vk_return) or (Key = vk_tab) then
    edt_cpf_cnpj.SetFocus;
end;

procedure TFrm_Informa_Cliente.edt_numeroKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
begin
  if (Key = vk_return) or (Key = vk_tab) then
    edt_bairro.SetFocus;
end;

procedure TFrm_Informa_Cliente.edt_numeroKeyPress(Sender: TObject; var Key: Char);
begin
  inherited;
  Key := ApenasNumeros(Key);
end;

procedure TFrm_Informa_Cliente.edt_bairroKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
begin
  if Key in [vk_return, vk_tab] then
    edt_municipio.SetFocus;
end;

procedure TFrm_Informa_Cliente.edt_cpf_cnpjEnter(Sender: TObject);
begin
  edt_cpf_cnpj.editmask := '';
  edt_cpf_cnpj.Text := removercaracteresespeciais(edt_cpf_cnpj.Text);
end;

procedure TFrm_Informa_Cliente.edt_cpf_cnpjExit(Sender: TObject);
begin
  cnpjcpf(edt_cpf_cnpj);
end;

procedure TFrm_Informa_Cliente.edt_cpf_cnpjKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);

begin
  if (Key = vk_return) or (Key = vk_tab) then
    edt_ie_rg.SetFocus;
end;

procedure TFrm_Informa_Cliente.edt_cpf_cnpjKeyPress(Sender: TObject; var Key: Char);
begin
  inherited;
  Key := ApenasNumeros(Key);
end;

procedure TFrm_Informa_Cliente.edt_cpf_cnpjKeyUp(Sender: TObject; var Key: Word; Shift: TShiftState);
begin
  if isKeynumletter(Key) then
    ConsultarCliente;
end;

procedure TFrm_Informa_Cliente.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  if not fechar_botao then
    limparcampos_cad_cli;
  Action := cafree;
  self := nil;
end;

procedure TFrm_Informa_Cliente.FormCreate(Sender: TObject);
begin
  by_button := false;
end;

procedure TFrm_Informa_Cliente.FormKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
begin
  if Key = vk_escape then
  begin
    limparcampos_cad_cli;
    close;
  end;
  TeclasAtalho(Key, [vk_f1, vk_f2], [btn_concluir, btn_cancelar]);
end;

procedure TFrm_Informa_Cliente.FormShow(Sender: TObject);
begin
  edt_nome.SetFocus;
  fechar_botao := false;
  ibge_mun := 0;
end;

end.
