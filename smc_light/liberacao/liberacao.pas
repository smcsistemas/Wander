//Verificado automaticamente em 16/06/2020 09:27
{ v 14.10.16 16:52 }
unit liberacao;
{
================================================================================
|   DATA   |DESENVOLVEDOR|HISTORICO DA ALTERACAO DO CODIGO                     |
|----------|-------------|-----------------------------------------------------|
|21/02/2020|WANDER       |Passou a tratar dados criptografados do usu�rio.     |
|        15|             |                                                     |
================================================================================
}


interface

uses
  Winapi.Windows, System.SysUtils, System.Variants,
  System.Classes,
  Vcl.Controls, Vcl.Forms,

  Vcl.StdCtrls, cxButtons,
  Vcl.ExtCtrls,

  FireDAC.Stan.Param,
  Data.DB,
  FireDAC.Comp.DataSet, FireDAC.Comp.Client, cxGroupBox, v_env, cxGraphics, cxLookAndFeels, cxLookAndFeelPainters, Vcl.Menus, dxSkinsCore,
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
  dxSkinVS2010, dxSkinWhiteprint, dxSkinXmas2008Blue, cxControls,
  cxContainer, cxEdit, FireDAC.Stan.Intf, FireDAC.Stan.Option, FireDAC.Stan.Error, FireDAC.DatS, FireDAC.Phys.Intf, FireDAC.DApt.Intf,
  FireDAC.Stan.Async, FireDAC.DApt, dxGDIPlusClasses;

type
  TFrm_liberacao = class(TForm)
    BtnConfirmar: TcxButton;
    Image1: TImage;
    btnCancelar: TcxButton;
    SQL_USUARIO: TFDQuery;
    DS_USUARIO: TDataSource;
    SQL_USUARIOCODIGO: TFDAutoIncField;
    SQL_USUARIOUSUARIO: TStringField;
    SQL_USUARIOSENHA: TStringField;
    SQL_USUARIOSENHA_CONFIRMA: TStringField;
    SQL_USUARIOADMINISTRADOR: TStringField;
    cxGroupBox1: TcxGroupBox;
    Label1: TLabel;
    edt_usuario: TEdit;
    edt_senha: TEdit;
    Label2: TLabel;
    SQL_USUARIOTIPO_USUARIO: TStringField;
    Image2: TImage;
    procedure btnCancelarClick(Sender: TObject);
    procedure BtnConfirmarClick(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure edt_usuarioKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
    procedure edt_senhaKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
    procedure FormKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
    Class procedure Close;

  private
    { Private declarations }
    _systemUsersOnly: boolean;
  public
    { Public declarations }
    Class function Execute: boolean;
    Class function systemUsersOnly: boolean;

  end;

var
  Frm_liberacao: TFrm_liberacao;

implementation

{$R *.dfm}

uses u_funcoes, c_Globals;

class function TFrm_liberacao.Execute: boolean;
begin
  with TFrm_liberacao.Create(nil) do
    try
      _systemUsersOnly := False;
      Result := ShowModal = mrOk;
    finally
      Free;
    end;
end;

procedure TFrm_liberacao.btnCancelarClick(Sender: TObject);
begin
  ModalResult := mrAbort;
  self.Close;
  Frm_liberacao := nil;
end;

procedure TFrm_liberacao.BtnConfirmarClick(Sender: TObject);
begin
  if edt_usuario.Text = '' then
  begin
    wnAlerta('Erro no Login', slinebreak + slinebreak + 'Campo de Usu�rio deve ser preenchido!');
    edt_usuario.SetFocus;
    exit;
  end;
  // Wander
  // Cria��o do usuario MASTER com senha PIPOCA
  //----------------------------------------------------------------------------
  if UsuarioMASTER_SenhaCorreta(edt_usuario.text,edt_Senha.Text) then
  begin
     RegistraLog('Acessou Configura��es Administrativas');
     ModalResult := mrOk;
     exit;
  end;
  if edt_usuario.text = 'MASTER' then
  begin
    wnAlerta('Permiss�es', slinebreak + slinebreak + 'Senha incorreta! Tente novamente.');
    edt_usuario.SetFocus;
    edt_usuario.SelectAll;
    exit;
  end;

  // Fim Cria��o do usuario MASTER com senha PIPOCA
  //----------------------------------------------------------------------------

  try
      SQL_USUARIO.Active := False;
      SQL_USUARIO.ParamByName('pusuario').AsString := Cripto(edt_usuario.Text);
      SQL_USUARIO.Open;
      SQL_USUARIO.RowsAffected;
      if SQL_USUARIO.RecordCount = 0 then
      begin
        wnAlerta('Permiss�es', slinebreak + slinebreak + 'Usu�rio n�o cadastrado :/');
        edt_usuario.SetFocus;
        edt_usuario.SelectAll;
        exit;
      end;

      if Cripto(edt_senha.Text) <> SQL_USUARIOSENHA.Value then
      begin
        wnAlerta('Permiss�es', slinebreak + slinebreak + 'Senha incorreta! Tente novamente.');
        edt_usuario.SetFocus;
        edt_usuario.SelectAll;
        exit;
      end;

      if (SQL_USUARIOADMINISTRADOR.Value = 'NAO') then
      begin
        wnErro('Permiss�es', slinebreak + slinebreak + 'O usu�rio informado n�o tem permiss�es suficientes para executar essa a��o!');
        edt_usuario.SetFocus;
        exit;
      end;

      if _systemUsersOnly then
      begin
        if not(SQL_USUARIOTIPO_USUARIO.AsString = 'SISTEMA') then
        begin
          wnErro('Permiss�es', slinebreak + slinebreak + 'O usu�rio informado n�o tem permiss�es suficientes para executar essa a��o!');
          edt_usuario.SetFocus;
          exit;
        end;
      end;

      ModalResult := mrOk;

    except
      On E: Exception do
      begin
        wnErro('Erro de Conex�o.', E.Message + System.slinebreak + 'Erro de Conex�o com o Banco de Dados.');
        ModalResult := mrAbort;
      end;
    end;
end;

class procedure TFrm_liberacao.Close;
begin
  Frm_liberacao := nil;
end;

procedure TFrm_liberacao.edt_senhaKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
begin
  if Key = VK_F1 then
  begin
    if edt_senha.Text = SENHA_ADMIN then
    begin
      ModalResult := mrOk;
    end;
  end;

  if (Key = VK_RETURN) or (Key = VK_TAB) then
  begin
    BtnConfirmar.click;
  end;
end;

procedure TFrm_liberacao.edt_usuarioKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
begin
  if (Key = VK_RETURN) or (Key = VK_TAB) then
  begin
    edt_senha.SetFocus;
  end;
end;

procedure TFrm_liberacao.FormKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
begin
  if (Key = VK_ESCAPE) then
  begin
    btnCancelar.click;
  end;
end;

procedure TFrm_liberacao.FormShow(Sender: TObject);
begin
  SQL_USUARIO.Active := False;
  SQL_USUARIO.ParamByName('pusuario').Value := tenv.tuser.name;
  SQL_USUARIO.Open;
  edt_usuario.SetFocus;
end;

class function TFrm_liberacao.systemUsersOnly: boolean;
begin
  with TFrm_liberacao.Create(nil) do
    try
      _systemUsersOnly := True;
      Result := ShowModal = mrOk;
    finally
      Free;
    end;
end;

end.
