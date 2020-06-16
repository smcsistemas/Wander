﻿unit vw_Login;
{
================================================================================
|   DATA   |DESENVOLVEDOR|HISTORICO DA ALTERACAO DO CODIGO                     |
|----------|-------------|-----------------------------------------------------|
|21/02/2020|WANDER       |Passou a atualizar a variável Global_Usuario_Logado. |
|        06|             |                                                     |
================================================================================
| ITEM|DATA  HR|UNIT                |HISTORICO                                 |
|-----|--------|--------------------|------------------------------------------|
|  128|11/05/20|vw_Login            |Passou a pedir a Filial e a atualizar a   |
|     |   15:12|                    |variável Global_Filial_Em_Uso             |
|     |        |                    |para controlar a Filial ativa (em uso)    |
|-----|--------|--------------------|------------------------------------------|
|  133|13/05/20|wander              |Só exibe e exige que o usuário preencha o |
|     |   10:44|vw_Login            |campo EMPRESA se existir filiais cadastra-|
|     |        |                    |das.                                      |
================================================================================
}

interface

uses
  Winapi.Windows, System.SysUtils,
  Vcl.Dialogs,
  System.Classes,
  Vcl.Controls, Vcl.Forms,

  Vcl.ExtCtrls, Vcl.StdCtrls, cxButtons,

  inifiles,

  v_env,
  m_USuario, h_Dialogs, cxGraphics, cxLookAndFeels, cxLookAndFeelPainters, Vcl.Menus, dxSkinsCore, dxSkinBlack, dxSkinBlue, dxSkinBlueprint, dxSkinCaramel, dxSkinCoffee,
  dxSkinDarkRoom,
  dxSkinDarkSide, dxSkinDevExpressDarkStyle, dxSkinDevExpressStyle, dxSkinFoggy, dxSkinGlassOceans, dxSkinHighContrast, dxSkiniMaginary, dxSkinLilian, dxSkinLiquidSky,
  dxSkinLondonLiquidSky,
  dxSkinMcSkin, dxSkinMetropolis, dxSkinMetropolisDark, dxSkinMoneyTwins, dxSkinOffice2007Black, dxSkinOffice2007Blue, dxSkinOffice2007Green, dxSkinOffice2007Pink,
  dxSkinOffice2007Silver,
  dxSkinOffice2010Black, dxSkinOffice2010Blue, dxSkinOffice2010Silver, dxSkinOffice2013DarkGray, dxSkinOffice2013LightGray, dxSkinOffice2013White, dxSkinOffice2016Colorful,
  dxSkinOffice2016Dark,
  dxSkinPumpkin, dxSkinSeven, dxSkinSevenClassic, dxSkinSharp, dxSkinSharpPlus, dxSkinSilver, dxSkinSpringTime, dxSkinStardust, dxSkinSummer2008, dxSkinTheAsphaltWorld,
  dxSkinsDefaultPainters,
  dxSkinValentine, dxSkinVisualStudio2013Blue, dxSkinVisualStudio2013Dark, dxSkinVisualStudio2013Light, dxSkinVS2010, dxSkinWhiteprint, dxSkinXmas2008Blue, dxGDIPlusClasses;

type
  Tfrm_Login = class(TForm)
    Label5: TLabel;
    Label6: TLabel;
    lbl_versao: TLabel;
    btn_entrar: TcxButton;
    GroupBox1: TGroupBox;
    Label2: TLabel;
    Label1: TLabel;
    edt_usuario: TEdit;
    edt_senha: TEdit;
    bSair: TcxButton;
    Image1: TImage;
    Image2: TImage;
    Shape1: TShape;
    lbEmpresa: TLabel;
    edEmpresa: TEdit;
    procedure btn_entrarClick(Sender: TObject);
    procedure bSairClick(Sender: TObject);
    procedure edt_usuarioKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
    procedure edt_senhaKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
    procedure FormShow(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormClick(Sender: TObject);
    procedure edEmpresaKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
  private
    mostramensagem: boolean;
    procedure Logar;
  public
    Class function Execute: boolean;
  end;

var
  frm_Login: Tfrm_Login;
  UltimaLiberacao, cnpj: String;
  xLiberado: boolean;
  days, compared_date: Integer;

implementation

{$R *.dfm}

uses u_funcoes, global_variables, S_Module;

procedure Tfrm_Login.FormClick(Sender: TObject);
begin
  self.Show;
end;

procedure Tfrm_Login.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  Action := cafree;
  self := nil;
end;

procedure Tfrm_Login.FormShow(Sender: TObject);
begin
  //Se o sistema nunca foi atualizado (base de dados antiga)....
  //Precisa eviar alguns tratamentos que nao serão possíveis, como tratar
  //empresa
  //----------------------------------------------------------------------------
  //Um sistema antigo não possui a tabela ATUALIZADO_ATU, por exemplo...
  //E será usado este fato para saber se a base de dados é antiga ou nova...
  //----------------------------------------------------------------------------
  g_Base_de_Dados_Antiga_e_Nunca_Atualizada := False;
  try
    //Verifica se a tabela ATUALIZADO_ATU existe...
    Module.Query.close;
    Module.Query.sql.clear;
    Module.Query.sql.add('SELECT 1 FROM ATUALIZADO_ATU ');
    Module.Query.Open;
  except
    // Nao existe: Marcar como base de dados antiga
    g_Base_de_Dados_Antiga_e_Nunca_Atualizada := True;
  end;

  self.edt_usuario.SetFocus;
  self.lbl_versao.Caption := tenv.Version.Version;

  if not g_Base_de_Dados_Antiga_e_Nunca_Atualizada then
  begin
      //Se não possui filiais cadastradas:
      // - não solicita a empresa
      // - ajusta o layout de botões
      // - não mostra campo nem label de empresa
      if PossuiFiliais then
      begin
         lbEmpresa.Visible := True;
         edEmpresa.Visible := True;
         GroupBox1.Height  := 164;
         btn_Entrar.Top    := 227;
         bSair.Top         := 227;
      end
      else
      begin
         lbEmpresa.Visible := False;
         edEmpresa.Visible := False;
         GroupBox1.Height  := 113;
         btn_Entrar.Top    := 171;
         bSair.Top         := 171;
      end;
      if MachineName = 'DEV_PC' then
      begin
        edt_usuario.Text := '1';
        edt_Senha.Text   := '1';
        edEmpresa.Text   := '0';
        Logar;
      end;
  end;
end;

procedure Tfrm_Login.btn_entrarClick(Sender: TObject);
begin
  Logar;
end;

procedure Tfrm_Login.Logar;
var
  User: TUSuario;
begin
  try
    if not g_Base_de_Dados_Antiga_e_Nunca_Atualizada then
    begin
        //Trata Empresa/Filial
        //--------------------------------------------------------------------------
        // Empresa é obrigatório.
        // Mas se o cliente não possui filiais, pode deixar em branco e o sistema
        // assimirá empresa = '0' (matriz)
        //--------------------------------------------------------------------------
        if edEmpresa.text = '' then
        begin
          // Não informou a Empresa/Filial
          if PossuiFiliais then
          begin
             //Como possui mais de uma empresa/Filial,
             //o usuário deve informar qual deseja acessar
             ShowMessage('Informe a Empresa/Filial.'+#13+#13+
                         'Use [0] para a Matriz');
             edEmpresa.SetFocus;
             exit;
          end
          else
            //Como só tem uma empresa cadastrada,
            //o SMS assume que é a matriz ('0')
            edEmpresa.text := '0';
        end;
    end
    else
       edEmpresa.text := '0';

    if edEmpresa.text = '0' then
       Criar_Empresa_Matriz
    else
    begin
       if not ExisteEmpresa(edEmpresa.text) then
       begin
         ShowMessage('Empresa/Filial não cadastrada');
         edEmpresa.SetFocus;
         exit;
       end;
    end;

    //Cria usuário Lógico
    //----------------------------------------
    User                  := TUSuario.create;
    User.NOME             := edt_usuario.text;
    User.SENHA            := edt_senha.text;
    //Wander----------------------------------
    Global_Usuario_Logado := edt_usuario.text;
    Global_Filial_Em_Uso  := edEmpresa.text;
    //----------------------------------------
    if g_Base_de_Dados_Antiga_e_Nunca_Atualizada then
    begin
      wnAlerta('Esta Base de Dados nunca foi atualizada!'+slinebreak+slinebreak+
               'De OK para Começar a atualização automática...');
    end;
    if User.login then
    begin
      tenv.TUser.name     := User.NOME;
      tenv.TUser.ID       := User.ID;
      modalresult         := mrOk;
    end;
  except
    on E: Exception do
    begin
      edt_usuario.selectall;
      edt_usuario.SetFocus;
      tdialogs.wnErro('Login', slinebreak + E.Message);
    end;
  end;
end;

procedure Tfrm_Login.bSairClick(Sender: TObject);
begin
  modalresult := mrcancel;
  close;
end;

procedure Tfrm_Login.edEmpresaKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  if Key = vk_return then
    self.btn_entrar.Click
end;

procedure Tfrm_Login.edt_senhaKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
begin
  //Se pressionou ENTER...
  //
  //Se tem mais de uma empresa cadastrada,
  //coloca o cursor no campo da empresa
  //caso contrário aciona o botão entrar
  //----------------------------------------------------------------------------

  if Key = vk_return then
  begin
     if edEmpresa.Visible  then
        self.edEmpresa.SetFocus
     else
        self.btn_entrar.Click
  end;
end;

procedure Tfrm_Login.edt_usuarioKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
begin
  if Key = vk_return then
  begin
    self.edt_senha.selectall;
    self.edt_senha.SetFocus;
  end;
end;

class function Tfrm_Login.Execute: boolean;
begin
  with self.create(nil) do
    try
      result := showmodal = mrOk;
    finally
      free;
    end;
end;

end.



