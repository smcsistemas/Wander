{ v 06.10.16 14:12 }
unit U_CNPJ;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, ComCtrls, StdCtrls, Mask, Buttons, ExtCtrls, JPEG, Vcl.DBCtrls,

  UFSistConsultaCNPJ, cxGraphics, cxLookAndFeels, cxLookAndFeelPainters,
  Vcl.Menus, dxSkinsCore, dxSkinOffice2013White, cxButtons, dxSkinBlack,
  dxSkinBlue, dxSkinBlueprint, dxSkinCaramel, dxSkinCoffee, dxSkinDarkRoom,
  dxSkinDarkSide, dxSkinDevExpressDarkStyle, dxSkinDevExpressStyle, dxSkinFoggy,
  dxSkinGlassOceans, dxSkinHighContrast, dxSkiniMaginary, dxSkinLilian,
  dxSkinLiquidSky, dxSkinLondonLiquidSky, dxSkinMcSkin, dxSkinMetropolis,
  dxSkinMetropolisDark, dxSkinMoneyTwins, dxSkinOffice2007Black,
  dxSkinOffice2007Blue, dxSkinOffice2007Green, dxSkinOffice2007Pink,
  dxSkinOffice2007Silver, dxSkinOffice2010Black, dxSkinOffice2010Blue,
  dxSkinOffice2010Silver, dxSkinOffice2013DarkGray, dxSkinOffice2013LightGray,
  dxSkinOffice2016Colorful, dxSkinOffice2016Dark, dxSkinPumpkin, dxSkinSeven,
  dxSkinSevenClassic, dxSkinSharp, dxSkinSharpPlus, dxSkinSilver,
  dxSkinSpringTime, dxSkinStardust, dxSkinSummer2008, dxSkinTheAsphaltWorld,
  dxSkinsDefaultPainters, dxSkinValentine, dxSkinVisualStudio2013Blue,
  dxSkinVisualStudio2013Dark, dxSkinVisualStudio2013Light, dxSkinVS2010,
  dxSkinWhiteprint, dxSkinXmas2008Blue;

type
  TFrm_CNPJ = class(TForm)
    Panel1: TPanel;
    Shape1: TShape;
    Label1: TLabel;
    Image1: TImage;
    LabCaptcha: TLabel;
    Label14: TLabel;
    EditCNPJ: TMaskEdit;
    EditCaptcha: TEdit;
    Panel2: TPanel;
    Label2: TLabel;
    Label3: TLabel;
    Label4: TLabel;
    Label5: TLabel;
    Label6: TLabel;
    Label7: TLabel;
    Label8: TLabel;
    Label9: TLabel;
    Label10: TLabel;
    Label11: TLabel;
    Label12: TLabel;
    Label13: TLabel;
    Label15: TLabel;
    Label16: TLabel;
    Label17: TLabel;
    Label18: TLabel;
    Label19: TLabel;
    Label21: TLabel;
    Label22: TLabel;
    Label23: TLabel;
    EditTipo: TEdit;
    EditRazaoSocial: TEdit;
    EditAbertura: TEdit;
    EditEndereco: TEdit;
    EditNumero: TEdit;
    EditComplemento: TEdit;
    EditBairro: TEdit;
    EditCidade: TEdit;
    EditUF: TEdit;
    EditCEP: TEdit;
    EditFantasia: TEdit;
    MemoAtividadesSecundarias: TMemo;
    EditNatureza: TEdit;
    EditEnderecoEletronico: TEdit;
    EditTelefone: TEdit;
    EditEFR: TEdit;
    EditCapitalSocial: TEdit;
    EditSituacao: TEdit;
    EditDataSituacao: TEdit;
    EditAtividadePrincipal: TEdit;
    Timer1: TTimer;
    ButProxy: TButton;
    Label20: TLabel;
    ListViewSocios: TListView;
    bitClientes: TBitBtn;
    BtnConsultar: TcxButton;
    procedure ButProxyClick(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure Timer1Timer(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure LabCaptchaClick(Sender: TObject);
    procedure bitClientesClick(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure InformarDadosCNPJ(RazaoSocial, Fantasia, CNPJ, Endereco, Numero, Bairro, CEP, Atividade: TdbEdit);
    procedure EditCNPJKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
    procedure BtnConsultarClick(Sender: TObject);
    procedure EditCaptchaKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
    { Procedure para preencher valores dos atributos internos }
  private
    procedure PreencherDadosCPNJ;
    { Procedure para preencher os dados da consulta no cadastro }
  public

    FSistConsultaCNPJ: TFSistConsultaCNPJ

    { Public declarations }
    end;

  var
    Frm_CNPJ: TFrm_CNPJ;
    m_RazaoSocial, m_Fantasia, m_CNPJ, m_Endereco, m_Numero, m_Bairro, m_CEP, m_Atividade: TdbEdit;

implementation

uses U_Proxy, cadastro_fornecedor, cadastro_clientes, u_funcoes;

{$R *.dfm}

procedure TFrm_CNPJ.bitClientesClick(Sender: TObject);
begin
  PreencherDadosCPNJ();
end;

procedure TFrm_CNPJ.ButProxyClick(Sender: TObject);
begin
  F_Proxy.SHowMOdal;
end;

procedure TFrm_CNPJ.BtnConsultarClick(Sender: TObject);
var
  I: Integer;
begin
  try
    if FSistConsultaCNPJ.Consulta(u_funcoes.removercaracteresespeciais(EditCNPJ.Text), EditCaptcha.Text) then
    begin
      EditTipo.Text := FSistConsultaCNPJ.EmpresaTipo;
      EditAbertura.Text := FSistConsultaCNPJ.Abertura;
      EditRazaoSocial.Text := FSistConsultaCNPJ.RazaoSocial;
      EditFantasia.Text := FSistConsultaCNPJ.Fantasia;
      EditEndereco.Text := FSistConsultaCNPJ.Logradouro;
      EditNumero.Text := FSistConsultaCNPJ.Numero;
      EditComplemento.Text := FSistConsultaCNPJ.Complemento;
      EditCEP.Text := FSistConsultaCNPJ.CEP;
      EditBairro.Text := FSistConsultaCNPJ.BairroDistrito;
      EditCidade.Text := FSistConsultaCNPJ.Municipio;
      EditUF.Text := FSistConsultaCNPJ.UF;
      EditEnderecoEletronico.Text := FSistConsultaCNPJ.EnderecoEletronico;
      EditTelefone.Text := FSistConsultaCNPJ.Telefone;
      EditEFR.Text := FSistConsultaCNPJ.EnteFederativoResponsavel;
      EditSituacao.Text := FSistConsultaCNPJ.SituacaoCadastral;
      EditDataSituacao.Text := FSistConsultaCNPJ.DataSituacaoCadastral;
      // EditMotivoSituacaoCadastral.Text:= FSistConsultaCNPJ.MotivoSituacaoCadastral;
      // EditSituacaoEspecial.Text:= FSistConsultaCNPJ.SituacaoEspecial;
      // EditDataSituacaoEspecial.Text:= FSistConsultaCNPJ.DataSituacaoEspecial;
      EditCapitalSocial.Text := FSistConsultaCNPJ.CapitalSocial;
      EditAtividadePrincipal.Text := FSistConsultaCNPJ.CodigoDescricaoAtividadeEconomicaPrincipal;
      EditNatureza.Text := FSistConsultaCNPJ.CodigoDescricaoNaturezaJuridica;

      MemoAtividadesSecundarias.Lines.Clear;
      for I := 0 to FSistConsultaCNPJ.CodigoDescricaoAtividadeEconomicaSecundariasCount - 1 do
        MemoAtividadesSecundarias.Lines.Add(
          { Copy( } FSistConsultaCNPJ.CodigoDescricaoAtividadeEconomicaSecundarias(I) // , 1, 10)
          );

      ListViewSocios.Items.Clear;
      for I := 0 to FSistConsultaCNPJ.SociosCount - 1 do
        with ListViewSocios.Items.Add do
        begin
          Caption := FSistConsultaCNPJ.SociosNome(I);
          SubItems.Add(FSistConsultaCNPJ.SociosQualificacao(I));
          SubItems.Add(FSistConsultaCNPJ.SociosNomedoRepresLegal(I));
          SubItems.Add(FSistConsultaCNPJ.SociosQualifRepLegal(I));
        end;
    end
    else
      ShowMessage(FSistConsultaCNPJ.Erro);
  except
    on E: Exception do
      wnErro('Erro de consulta', E.Message + sLineBreak + 'Erro de conexão com o serviço de consulta.');
  end;

end;

procedure TFrm_CNPJ.EditCaptchaKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
begin
  if (Key = VK_RETURN) or (Key = VK_TAB) then
  begin
    BtnConsultar.SetFocus;
  end;
end;

procedure TFrm_CNPJ.EditCNPJKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
begin
  if (Key = VK_RETURN) or (Key = VK_TAB) then
  begin
    EditCaptcha.SetFocus;
  end;
end;

procedure TFrm_CNPJ.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  Action := cafree;
end;

procedure TFrm_CNPJ.FormCreate(Sender: TObject);
begin
  FSistConsultaCNPJ := TFSistConsultaCNPJ.Create;
end;

procedure TFrm_CNPJ.FormShow(Sender: TObject);
begin
  Timer1.Enabled := True;
end;

procedure TFrm_CNPJ.InformarDadosCNPJ(RazaoSocial, Fantasia, CNPJ, Endereco, Numero, Bairro, CEP, Atividade: TdbEdit);
begin

  m_RazaoSocial := RazaoSocial;
  m_Fantasia := Fantasia;
  m_CNPJ := CNPJ;
  m_Endereco := Endereco;
  m_Numero := Numero;
  m_Bairro := Bairro;
  m_CEP := CEP;
  m_Atividade := Atividade;
end;

procedure TFrm_CNPJ.LabCaptchaClick(Sender: TObject);
begin
  if FSistConsultaCNPJ.CaptchaBaixar('Captcha.jpg') then
    Image1.Picture.LoadFromFile('Captcha.jpg')
  else
    ShowMessage(FSistConsultaCNPJ.Erro);
end;

procedure TFrm_CNPJ.PreencherDadosCPNJ;
begin
  m_RazaoSocial.Text := EditRazaoSocial.Text;
  m_Fantasia.Text := EditFantasia.Text;
  m_CNPJ.Text := EditCNPJ.Text;
  m_Endereco.Text := EditEndereco.Text;
  m_Numero.Text := EditNumero.Text;
  m_Bairro.Text := EditBairro.Text;
  m_CEP.Text := EditCEP.Text;
  m_Atividade.Text := EditAtividadePrincipal.Text;
  Frm_CNPJ.Close;
end;

procedure TFrm_CNPJ.Timer1Timer(Sender: TObject);
begin
  Timer1.Enabled := False;
  LabCaptchaClick(Sender);
end;

end.
