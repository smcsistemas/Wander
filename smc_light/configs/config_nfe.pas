{$I ACBr.inc}

unit config_nfe;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, cxGraphics, cxControls, cxLookAndFeels,
  cxLookAndFeelPainters, dxSkinsCore, dxSkinOffice2013White, dxSkinscxPCPainter,
  dxBarBuiltInMenu, cxContainer, cxEdit, Vcl.Menus, cxDBEdit, Vcl.StdCtrls,
  cxButtons, Vcl.Mask, Vcl.DBCtrls, cxTextEdit, cxMaskEdit, cxDropDownEdit,
  cxCheckBox, cxPC, cxGroupBox, dxSkinOffice2007Silver,
  dxSkinOffice2013LightGray, dxSkinBlack, dxSkinBlue, dxSkinBlueprint,
  dxSkinCaramel, dxSkinCoffee, dxSkinDarkRoom, dxSkinDarkSide,
  dxSkinDevExpressDarkStyle, dxSkinDevExpressStyle, dxSkinFoggy,
  dxSkinGlassOceans, dxSkinHighContrast, dxSkiniMaginary, dxSkinLilian,
  dxSkinLiquidSky, dxSkinLondonLiquidSky, dxSkinMcSkin, dxSkinMetropolis,
  dxSkinMetropolisDark, dxSkinMoneyTwins, dxSkinOffice2007Black,
  dxSkinOffice2007Blue, dxSkinOffice2007Green, dxSkinOffice2007Pink,
  dxSkinOffice2010Black, dxSkinOffice2010Blue, dxSkinOffice2010Silver,
  dxSkinOffice2013DarkGray, dxSkinOffice2016Colorful, dxSkinOffice2016Dark,
  dxSkinPumpkin, dxSkinSeven, dxSkinSevenClassic, dxSkinSharp, dxSkinSharpPlus,
  dxSkinSilver, dxSkinSpringTime, dxSkinStardust, dxSkinSummer2008,
  dxSkinTheAsphaltWorld, dxSkinsDefaultPainters, dxSkinValentine,
  dxSkinVisualStudio2013Blue, dxSkinVisualStudio2013Dark,
  dxSkinVisualStudio2013Light, dxSkinVS2010, dxSkinWhiteprint,
  dxSkinXmas2008Blue, Vcl.ExtCtrls,
  ACBrBase, ACBrDFe, ACBrNFe, ACBrDFeSSL, ACBrPosPrinter, ACBrUtil,
  pcnConversao, pcnConversaoNFe, pcnNFe, pcnNFeRTXT,
  blcksock,  System.TypInfo,
  Vcl.Buttons, FileCtrl;

type
  TFrmconfig_NFe = class(TForm)
    Label4: TLabel;
    btnSair: TcxButton;
    btnGravar: TcxButton;
    btn_Alterar: TcxButton;
    grp_geral: TGroupBox;
    GroupBox1: TGroupBox;
    edtNFeC_PastaNotas: TEdit;
    btn_buscar_xml: TcxButton;
    GroupBox2: TGroupBox;
    cxComboBox1: TcxComboBox;
    grp_sequencia_nfce: TGroupBox;
    lbl1: TLabel;
    Label8: TLabel;
    edt_NFeC_nNF: TEdit;
    cxGroupBox2: TcxGroupBox;
    GroupBox3: TGroupBox;
    edt_NFeC_PathLogoMarca: TEdit;
    cxButton1: TcxButton;
    GroupBox5: TGroupBox;
    RadioButton3: TRadioButton;
    RadioButton4: TRadioButton;
    edt_NFeC_SERIE: TEdit;
    rgNFeC_VerMsgWS: TRadioGroup;
    rgNFeC_LayoutDanfe: TRadioGroup;
    lSSLLib: TLabel;
    cbSSLLib: TComboBox;
    lCryptLib: TLabel;
    cbCryptLib: TComboBox;
    lHttpLib: TLabel;
    cbHttpLib: TComboBox;
    lXmlSign: TLabel;
    cbXmlSignLib: TComboBox;
    Label22: TLabel;
    cbxModeloPosPrinter: TComboBox;
    Label102: TLabel;
    Label104: TLabel;
    edtCaminho: TEdit;
    Label105: TLabel;
    edtSenha: TEdit;
    cbxPagCodigo: TComboBox;
    sbtnGetCert: TSpeedButton;
    ACBrNFe1: TACBrNFe;
    edtNumSerie: TEdit;
    Label25: TLabel;
    cxButton2: TcxButton;
    OpenDialog1: TOpenDialog;
    cbFormaEmissao: TComboBox;
    Label29: TLabel;
    cxButton3: TcxButton;
    Image1: TImage;
    rgNFeC_Ambiente: TRadioGroup;
    Label1: TLabel;
    cbxSSLType: TComboBox;
    rgNFe_MostraPreview: TRadioGroup;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormShow(Sender: TObject);
    procedure btn_AlterarClick(Sender: TObject);
    procedure sbtnGetCertClick(Sender: TObject);
    procedure cxButton1Click(Sender: TObject);
    procedure cxButton2Click(Sender: TObject);
    procedure cxButton3Click(Sender: TObject);
    procedure btn_buscar_xmlClick(Sender: TObject);
    procedure edt_NFeC_PathLogoMarcaChange(Sender: TObject);
  private
    { Private declarations }
    procedure MostraDados_NFe_Configuracao;
    procedure MostraDados_CONFIG_NOTAS;

    function DadosCorretos:Boolean;
    procedure Registra_Logs;
    procedure Preenche_itens_dos_CheckBoxes;
    procedure MostraLogo(pArquivoImagem:String);
  public
    { Public declarations }
  end;

const
  SELDIRHELP = 1000;

var
  Frmconfig_NFe: TFrmconfig_NFe;

implementation

{$R *.dfm}

uses u_funcoes,S_Module;

procedure TFrmconfig_NFe.btn_AlterarClick(Sender: TObject);
var vNFeC_SERIE : Integer;
begin
  if not UsuarioMASTER then
  begin
    AcessoExclusivoMaster;
    exit;
  end;

   if not DadosCorretos then
      exit;

  // Gravar as Configuracoes de emissão de NFe
  Module.Query.Close;
  Module.Query.Sql.Clear;
  Module.Query.Sql.Add('UPDATE NFe_Configuracao                        ');
  Module.Query.Sql.Add('   SET NFeC_SERIE        = :NFeC_SERIE,        ');
  Module.Query.Sql.Add('       NFeC_nNF          = :NFeC_nNF,          ');
  Module.Query.Sql.Add('       NFeC_FormaEmissao = :NFeC_FormaEmissao, ');
  Module.Query.SQL.add('       NFe_MostraPreview = :NFe_MostraPreview, ');
  Module.Query.Sql.Add('       NFeC_Ambiente     = :NFeC_Ambiente,     ');
  Module.Query.Sql.Add('       NFeC_VerMsgWS     = :NFeC_VerMsgWS,     ');
  Module.Query.Sql.Add('       NFeC_LayoutDanfe  = :NFeC_LayoutDanfe,  ');
  Module.Query.Sql.Add('       NFeC_PathLogoMarca= :NFeC_PathLogoMarca,');
  Module.Query.Sql.Add('       NFeC_PastaNotas   = :NFeC_PastaNotas    ');
  Module.Query.ParamByName('NFeC_SERIE'        ).AsInteger := StrToInt(edt_NFeC_SERIE.Text);
  Module.Query.ParamByName('NFeC_nNF'          ).AsInteger := StrToInt(edt_NFeC_nNF.Text);
  Module.Query.ParamByName('NFeC_FormaEmissao' ).AsInteger := cbFormaEmissao.ItemIndex;
  Module.Query.ParamByName('NFe_MostraPreview' ).AsInteger := rgNFe_MostraPreview.ItemIndex;
  Module.Query.ParamByName('NFeC_Ambiente'     ).AsInteger := rgNFeC_Ambiente.ItemIndex;
  Module.Query.ParamByName('NFeC_VerMsgWS'     ).AsInteger := rgNFeC_VerMsgWS.ItemIndex;
  Module.Query.ParamByName('NFeC_LayoutDanfe'  ).AsInteger := rgNFeC_LayoutDanfe.ItemIndex;
  Module.Query.ParamByName('NFeC_PathLogoMarca').AsString  := edt_NFeC_PathLogoMarca.Text;
  Module.Query.ParamByName('NFeC_PastaNotas'   ).AsString  := edtNFeC_PastaNotas.Text;
  Module.Query.ExecSql;

  // Gravar as Configuracoes do Certificado Digital
  Module.Query.Close;
  Module.Query.SQL.Clear;
  Module.Query.SQL.Add('UPDATE config_notas                                         ');
  Module.Query.SQL.Add('   SET NUMERO_SERIE_CERTIFICADO = :NUMERO_SERIE_CERTIFICADO,');
  Module.Query.SQL.Add('       SENHA_CERTIFICADO        = :SENHA_CERTIFICADO,       ');
  Module.Query.SQL.add('       CryptLib                 = :CryptLib,                ');
  Module.Query.SQL.add('       HttpLib                  = :HttpLib,                 ');
  Module.Query.SQL.add('       SSLLib                   = :SSLLib,                  ');
  Module.Query.SQL.add('       SSLType                  = :SSLType,                 ');
  Module.Query.SQL.add('       XmlSignLib               = :XmlSignLib,              ');
  Module.Query.SQL.add('       ArquivoPFX               = :ArquivoPFX,              ');
  Module.Query.SQL.add('       ModeloPosPrinter         = :ModeloPosPrinter,        ');
  Module.Query.SQL.add('       PaginaDeCodigo           = :PaginaDeCodigo          ');
  Module.Query.ParamByName('NUMERO_SERIE_CERTIFICADO').AsString  := edtNumSerie.Text;
  Module.Query.ParamByName('SENHA_CERTIFICADO'       ).AsString  := edtSenha.Text;
  Module.Query.ParamByName('CryptLib'                ).AsInteger := cbCryptLib.ItemIndex;
  Module.Query.ParamByName('HttpLib'                 ).AsInteger := cbHttpLib.ItemIndex;
  Module.Query.ParamByName('SSLLib'                  ).AsInteger := cbSSLLib.ItemIndex;
  Module.Query.ParamByName('SSLType'                 ).AsInteger := cbxSSLType.ItemIndex;
  Module.Query.ParamByName('XmlSignLib'              ).AsInteger := cbXmlSignLib.ItemIndex;
  Module.Query.ParamByName('ArquivoPFX'              ).AsString  := edtCaminho.text;
  Module.Query.ParamByName('ModeloPosPrinter'        ).AsInteger := cbxModeloPosPrinter.ItemIndex;
  Module.Query.ParamByName('PaginaDeCodigo'          ).AsInteger := cbxPagCodigo.ItemIndex;
  Module.Query.ExecSql;


  ComparaDadosDaTela('Configuracao da NFe',Frmconfig_NFe);

  ShowMessage('A configuração foi atualizada.');
  Close;
end;

procedure TFrmconfig_NFe.Registra_Logs;
begin

end;

procedure TFrmconfig_NFe.sbtnGetCertClick(Sender: TObject);
begin
   {$IFNDEF ACBrNFeOpenSSL}
       edtNumSerie.Text := ACBrNFe1.SSL.SelecionarCertificado;
   {$ENDIF}

   {$IFNDEF ACBrNFeOpenSSL}
    edtNumSerie.Text := ACBrNFe1.SSL.SelecionarCertificado;
   {$ENDIF}
end;

procedure TFrmconfig_NFe.btn_buscar_xmlClick(Sender: TObject);
var
  Dir: string;
begin
  if Length(edtNFeC_PastaNotas.Text) <= 0 then
     Dir := ExtractFileDir(application.ExeName)
  else
     Dir := edtNFeC_PastaNotas.Text;

  if SelectDirectory(Dir, [sdAllowCreate, sdPerformCreate, sdPrompt],SELDIRHELP) then
    edtNFeC_PastaNotas.Text := Dir;
end;

procedure TFrmconfig_NFe.cxButton1Click(Sender: TObject);
begin
  OpenDialog1.Title := 'Selecione o Logo';
  OpenDialog1.DefaultExt := '*.bmp';
  OpenDialog1.Filter := 'Arquivos BMP (*.bmp)|*.bmp|Todos os Arquivos (*.*)|*.*';
  OpenDialog1.InitialDir := ExtractFileDir(application.ExeName);
  if OpenDialog1.Execute then
  begin
    edt_NFeC_PathLogoMarca.Text := OpenDialog1.FileName;
  end;

end;

procedure TFrmconfig_NFe.cxButton2Click(Sender: TObject);
begin
  OpenDialog1.Title := 'Selecione o Certificado';
  OpenDialog1.DefaultExt := '*.pfx';
  OpenDialog1.Filter := 'Arquivos PFX (*.pfx)|*.pfx|Todos os Arquivos (*.*)|*.*';
  OpenDialog1.InitialDir := ExtractFileDir(application.ExeName);
  if OpenDialog1.Execute then
    edtCaminho.Text := OpenDialog1.FileName;
end;

procedure TFrmconfig_NFe.cxButton3Click(Sender: TObject);
var vNFeC_SERIE, vNFe_SEQUENCIA: Integer;
begin
  if not UsuarioMASTER then
  begin
     AcessoExclusivoMaster;
     exit;
  end;

   try
      vNFeC_SERIE := StrToInt(edt_NFeC_SERIE.Text);
      if vNFeC_SERIE < 0 then
      begin
        ShowMessage('Série inválida');
        edt_NFeC_SERIE.SetFocus;
        exit;
      end;
   except
      ShowMessage('Série inválida');
      edt_NFeC_SERIE.SetFocus;
      exit;
   end;

   try
      vNFe_SEQUENCIA := StrToInt(edt_NFeC_nNF.Text);
      if vNFe_SEQUENCIA < 0 then
      begin
        ShowMessage('Sequencia inválida');
        edt_NFeC_nNF.SetFocus;
        exit;
      end;
   except
      ShowMessage('Sequencia inválida');
      edt_NFeC_nNF.SetFocus;
      exit;
   end;

   // Verificar se existe NFe emitida nesta série
   // com número superior ao que está sendo definido....
   Module.Query.Close;
   Module.Query.Sql.Clear;
   Module.Query.SQL.Add('SELECT 1 from NFe        ');
   Module.Query.SQL.Add('  WHERE NUMERO > :NUMERO ');
   Module.Query.SQL.Add('    AND SERIE  = :SERIE  ');
   Module.Query.ParamByName('SERIE' ).AsInteger := vNFeC_SERIE;
   Module.Query.ParamByName('NUMERO').AsInteger := vNFe_SEQUENCIA;
   Module.Query.Open;
   if not Module.Query.eof then
   begin
     ShowMessage('Existe NFe emitida com número superior a este.');
     edt_NFeC_SERIE.SetFocus;
     exit;
   end;

  // ### rever ###
  // Definir o último número de NFe emitida
  // Perigo!!!! Se estiverem emitindo NFe neste momento,
  // Pode afetar a sequencia....
  //----------------------------------------------------
    Module.Query.Close;
    Module.Query.Sql.Clear;
    Module.Query.SQL.Add('SELECT SNFe_SEQUENCIA         ');
    Module.Query.SQL.Add('  FROM SERIENFe_SNFe          ');
    Module.Query.SQL.Add('  WHERE SNFe_CODIGO = :CODIGO ');
    Module.Query.ParamByName('CODIGO').AsInteger :=  vNFeC_SERIE;
    Module.Query.Open;
    if Module.Query.eof then
    begin
       // Não consta registro de sequencia de NFe para
       // esta série...
       // Criar um registro com "última nota"   = 0
       //                       (SNF_SEQUENCIA  = 0)
       Module.Query.Close;
       Module.Query.Sql.Clear;
       Module.Query.SQL.Add('INSERT INTO SERIENFe_SNFe');
       Module.Query.SQL.Add('     ( SNFe_SEQUENCIA,   ');
       Module.Query.SQL.Add('       SNFe_CODIGO)      ');
       Module.Query.SQL.Add('vALUES                   ');
       Module.Query.SQL.Add('     (:SNFe_SEQUENCIA,   ');
       Module.Query.SQL.Add('      :SNFe_CODIGO)      ');
       Module.Query.ParamByName('SNFe_CODIGO'   ).AsInteger := vNFeC_SERIE;
       Module.Query.ParamByName('SNFe_SEQUENCIA').AsInteger := vNFe_SEQUENCIA;
       Module.Query.ExecSql;
       ShowMessage('Série criada!');
    end
    else
    begin
       // Atualizar a sequencia de NFe desta série
       Module.Query.Close;
       Module.Query.Sql.Clear;
       Module.Query.SQL.Add('UPDATE SERIENFe_SNFe                   ');
       Module.Query.SQL.Add('   SET SNFe_SEQUENCIA = :SNFe_SEQUENCIA');
       Module.Query.SQL.Add(' WHERE SNFe_CODIGO    = :SNFe_CODIGO   ');
       Module.Query.ParamByName('SNFe_CODIGO'   ).AsInteger := vNFeC_SERIE;
       Module.Query.ParamByName('SNFe_SEQUENCIA').AsInteger := vNFe_SEQUENCIA;
       Module.Query.ExecSql;
       ShowMessage('Sequência da série atualizada!');
    end;

end;

function TFrmconfig_NFe.DadosCorretos:Boolean;
var vNumero : Integer;
begin
   // retorna true se os dados a serem gravados estão corretos
   // retorna false se não estão
   //---------------------------------------------------------------------------
   result := false;

   // A Série da NFe é uma informação obrigatória
   //--------------------------------------------
   if edt_NFeC_SERIE.Text = '' then
   begin
     ShowMessage('Informe a Série da NFe');
     edt_NFeC_SERIE.SetFocus;
     exit;
   end;

   // A Série da NFe deve ser numérico entre 1 e 800
   //-----------------------------------------------
   try
     vNumero := StrToInt(edt_NFeC_SERIE.Text);
     if (vNumero < 001) or
        (vNumero > 800)then
     begin
        ShowMessage('Série inválida. '+#13+#13+
                    'Consulte seu contador e use um valor entre 1 e 800');
        edt_NFeC_SERIE.SetFocus;
        exit;
     end;
   except
     ShowMessage('Série inválida. '+#13+#13+
                 'Consulte seu contador e Use um valor numérico.');
     edt_NFeC_SERIE.SetFocus;
     exit;
   end;

   {
   try
      vNumero := StrToInt(edt_NFeC_nNF.Text);
      if vNumero < 1 then
      begin
         ShowMessage('Número da última NFe emitida inválido! '+#13+#13+
                     'Consulte seu contador e Use um valor inteiro.');
         edt_NFeC_nNF.SetFocus;
         exit;
      end;
      if vNumero < fUltimaNFe(edt_NFeC_SERIE.Text) then
      begin
         ShowMessage('Já existe NFe emitida com este valor nesta série. '+#13+#13+
                     'Consulte seu contador e Use um valor correto.');
         edt_NFeC_nNF.SetFocus;
         exit;
      end;
   except
     ShowMessage('Número da última NFe inválido. '+#13+#13+
                 'Consulte seu contador e Use um valor numérico.');
     edt_NFeC_nNF.SetFocus;
     exit;
   end;

   // O número da NFe nesta série não pode ser inferior
   // ao da última NFe emitida
   }

   // Obrigatório: Forma de emissão
   if cbFormaEmissao.ItemIndex = -1 then
   begin
     ShowMessage('Defina a Forma de Emissão da NFe.');
     cbFormaEmissao.SetFocus;
     exit;
   end;

   // Obrigatório: Ambiente de emissão da NFe
   if rgNFeC_Ambiente.ItemIndex = -1 then
   begin
     ShowMessage('Defina o Ambiente de Emissão da NFe.');
     rgNFeC_Ambiente.SetFocus;
     exit;
   end;

   // Obrigatório: Definir se deseja ou não ver as mensagens do Web Service
   if rgNFeC_VerMsgWS.ItemIndex = -1 then
   begin
     ShowMessage('Defina se deseja ou não visualizar mensagens do WebService.');
     rgNFeC_VerMsgWS.SetFocus;
     exit;
   end;

   // Obrigatório: Definir o layou do Danfe
   if rgNFeC_LayoutDanfe.ItemIndex = -1 then
   begin
     ShowMessage('Defina o layou de impressão do DANFE da NFe.');
     rgNFeC_LayoutDanfe.SetFocus;
     exit;
   end;

   // Se chegou até aqui, todas as críticas foram atendidas.
   result := true;
end;

procedure TFrmconfig_NFe.edt_NFeC_PathLogoMarcaChange(Sender: TObject);
begin
   MostraLogo(edt_NFeC_PathLogoMarca.Text);
end;

procedure TFrmconfig_NFe.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  Action := cafree;
  self := nil;
end;

procedure TFrmconfig_NFe.FormShow(Sender: TObject);
var vNFeC_SERIE : integer;
begin
  // Preenche itens dos CheckBoxes
  Preenche_itens_dos_CheckBoxes;
  // Recuperar Configuracao de NFe
  Module.Query.Close;
  Module.Query.Sql.Clear;
  Module.Query.Sql.Add('SELECT * fROM NFe_Configuracao');
  Module.Query.Open;
  MostraDados_NFe_Configuracao;

  // Recuperar Configuracao de Certificado
  Module.Query.Close;
  Module.Query.Sql.Clear;
  Module.Query.Sql.Add('SELECT * fROM CONFIG_NOTAS');
  Module.Query.Open;

  MostraDados_CONFIG_NOTAS;

  if edt_NFeC_SERIE.Text <> '' then
  begin
     try
        vNFeC_SERIE := StrToInt(edt_NFeC_SERIE.Text);

        edt_NFeC_nNF.Text := '';
        if edt_NFeC_SERIE.Text <> '' then
        begin
            Module.Query.Close;
            Module.Query.Sql.Clear;
            Module.Query.SQL.Add('SELECT SNFe_SEQUENCIA             ');
            Module.Query.SQL.Add('  FROM SERIENFe_SNFe              ');
            Module.Query.SQL.Add(' WHERE SNFe_CODIGO = :SNFe_CODIGO ');
            Module.Query.ParamByName('SNFe_CODIGO'   ).AsInteger := vNFeC_SERIE;
            Module.Query.Open;
            if not Module.Query.Eof then
               edt_NFeC_nNF.Text := Module.Query.FieldByName('SNFe_SEQUENCIA').AsString;
        end;
    except
    end;
  end;

  // Salva estes dados para serem comparados ao serem gravados
  // a fim de registrar no log de eventos todas as alerações feitas pelo usuário
  SalvaDadosDaTela(Frmconfig_NFe);
end;

procedure TFrmconfig_NFe.MostraDados_NFe_Configuracao;
begin
  // Preenche a tela com os dados recuperados do banco de dados
  //----------------------------------------------------------------------------
  Image1.Visible := false;
  edt_NFeC_SERIE.Text           := FormatFloat('000'     ,Module.Query.FieldByName('NFeC_SERIE').AsInteger);
  edt_NFeC_nNF.Text             := FormatFloat('00000000',Module.Query.FieldByName('NFeC_nNF'  ).AsInteger);
  cbFormaEmissao.ItemIndex      := Module.Query.FieldByName('NFeC_FormaEmissao' ).AsInteger;
  rgNFe_MostraPreview.ItemIndex := Module.Query.FieldByName('NFe_MostraPreview' ).AsInteger;
  rgNFeC_Ambiente.ItemIndex     := Module.Query.FieldByName('NFeC_Ambiente'     ).AsInteger;
  rgNFeC_LayoutDanfe.ItemIndex  := Module.Query.FieldByName('NFeC_LayoutDanfe'  ).AsInteger;
  edt_NFeC_PathLogoMarca.Text   := Module.Query.FieldByName('NFeC_PathLogoMarca').AsString;
  edtNFeC_PastaNotas.Text       := Module.Query.FieldByName('NFeC_PastaNotas'   ).AsString;
end;

procedure TFrmconfig_NFe.MostraLogo(pArquivoImagem: String);
begin
  if pArquivoImagem <> '' then
  begin
     Image1.Picture.LoadFromFile(pArquivoImagem);
     Image1.Visible := True;
  end;
end;

procedure TFrmconfig_NFe.MostraDados_CONFIG_NOTAS;
begin
  // Preencher dados de configuracao de Certificado
  edtNumSerie.Text              := Module.Query.FieldByName('NUMERO_SERIE_CERTIFICADO').AsString;
  edtSenha.Text                 := Module.Query.FieldByName('SENHA_CERTIFICADO'       ).AsString;
  cbCryptLib.ItemIndex          := Module.Query.FieldByName('CryptLib'                ).AsInteger;
  cbHttpLib.ItemIndex           := Module.Query.FieldByName('HttpLib'                 ).AsInteger;
  cbSSLLib.ItemIndex            := Module.Query.FieldByName('SSLLib'                  ).AsInteger;
  cbxSSLType.ItemIndex          := Module.Query.FieldByName('SSLType'                 ).AsInteger;
  cbXmlSignLib.ItemIndex        := Module.Query.FieldByName('XmlSignLib'              ).AsInteger;
  edtCaminho.text               := Module.Query.FieldByName('ArquivoPFX'              ).AsString;
  cbxModeloPosPrinter.ItemIndex := Module.Query.FieldByName('ModeloPosPrinter'        ).AsInteger;
  cbxPagCodigo.ItemIndex        := Module.Query.FieldByName('PaginaDeCodigo'          ).AsInteger;
end;

procedure TFrmconfig_NFe.Preenche_itens_dos_CheckBoxes;
VAR w : Integer;
  T: TSSLLib;
  I: TpcnTipoEmissao;
  J: TpcnModeloDF;
  K: TpcnVersaoDF;
  U: TSSLCryptLib;
  V: TSSLHttpLib;
  X: TSSLXmlSignLib;
  Y: TSSLType;
  N: TACBrPosPrinterModelo;
  O: TACBrPosPaginaCodigo;
  l: Integer;

begin
  cbSSLLib.Items.Clear;
  for T := Low(TSSLLib) to High(TSSLLib) do
    cbSSLLib.Items.Add( GetEnumName(TypeInfo(TSSLLib), integer(T) ) );
  cbSSLLib.ItemIndex := 0;

  cbCryptLib.Items.Clear;
  for U := Low(TSSLCryptLib) to High(TSSLCryptLib) do
    cbCryptLib.Items.Add( GetEnumName(TypeInfo(TSSLCryptLib), integer(U) ) );
  cbCryptLib.ItemIndex := 0;

  cbHttpLib.Items.Clear;
  for V := Low(TSSLHttpLib) to High(TSSLHttpLib) do
    cbHttpLib.Items.Add( GetEnumName(TypeInfo(TSSLHttpLib), integer(V) ) );
  cbHttpLib.ItemIndex := 0;

  cbXmlSignLib.Items.Clear;
  for X := Low(TSSLXmlSignLib) to High(TSSLXmlSignLib) do
    cbXmlSignLib.Items.Add( GetEnumName(TypeInfo(TSSLXmlSignLib), integer(X) ) );
  cbXmlSignLib.ItemIndex := 0;

  cbxModeloPosPrinter.Items.Clear ;
  for N := Low(TACBrPosPrinterModelo) to High(TACBrPosPrinterModelo) do
    cbxModeloPosPrinter.Items.Add( GetEnumName(TypeInfo(TACBrPosPrinterModelo), integer(N) ) ) ;

  cbxPagCodigo.Items.Clear ;
  for O := Low(TACBrPosPaginaCodigo) to High(TACBrPosPaginaCodigo) do
     cbxPagCodigo.Items.Add( GetEnumName(TypeInfo(TACBrPosPaginaCodigo), integer(O) ) ) ;

  cbFormaEmissao.Items.Clear;
  for I := Low(TpcnTipoEmissao) to High(TpcnTipoEmissao) do
     cbFormaEmissao.Items.Add( GetEnumName(TypeInfo(TpcnTipoEmissao), integer(I) ) );
  cbFormaEmissao.ItemIndex := 0;

  cbxSSLType.Items.Clear;
  for Y := Low(TSSLType) to High(TSSLType) do
     cbxSSLType.Items.Add( GetEnumName(TypeInfo(TSSLType), integer(Y) ) );
  cbxSSLType.ItemIndex := 0;

end;

end.

