unit cad_contador;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls, cxGraphics,
  cxLookAndFeels, cxLookAndFeelPainters, Vcl.Menus, dxSkinsCore, cxButtons,
  FireDAC.Stan.Intf, FireDAC.Stan.Option, FireDAC.Stan.Param,
  FireDAC.Stan.Error, FireDAC.DatS, FireDAC.Phys.Intf, FireDAC.DApt.Intf,
  FireDAC.Stan.Async, FireDAC.DApt, Data.DB, FireDAC.Comp.DataSet,
  FireDAC.Comp.Client, Vcl.Mask, Vcl.DBCtrls, cxControls, dxSkinscxPCPainter,
  dxBarBuiltInMenu, cxStyles, cxCustomData, cxFilter, cxData, cxDataStorage,
  cxEdit, cxNavigator, cxDBData, cxContainer, cxTextEdit, cxMaskEdit,
  cxDropDownEdit, cxGridLevel, cxGridCustomTableView, cxGridTableView,
  cxGridDBTableView, cxClasses, cxGridCustomView, cxGrid, cxPC, cxDBEdit,
  cxGroupBox, cxLabel, cxCalendar, Vcl.Grids, Vcl.DBGrids, v_Env, h_Dialogs,
  dxSkinBlack, dxSkinBlue, dxSkinBlueprint, dxSkinCaramel, dxSkinCoffee,
  dxSkinDarkRoom, dxSkinDarkSide, dxSkinDevExpressDarkStyle,
  dxSkinDevExpressStyle, dxSkinFoggy, dxSkinGlassOceans, dxSkinHighContrast,
  dxSkiniMaginary, dxSkinLilian, dxSkinLiquidSky, dxSkinLondonLiquidSky,
  dxSkinMcSkin, dxSkinMetropolis, dxSkinMetropolisDark, dxSkinMoneyTwins,
  dxSkinOffice2007Black, dxSkinOffice2007Blue, dxSkinOffice2007Green,
  dxSkinOffice2007Pink, dxSkinOffice2007Silver, dxSkinOffice2010Black,
  dxSkinOffice2010Blue, dxSkinOffice2010Silver, dxSkinOffice2013DarkGray,
  dxSkinOffice2013LightGray, dxSkinOffice2013White, dxSkinOffice2016Colorful,
  dxSkinOffice2016Dark, dxSkinPumpkin, dxSkinSeven, dxSkinSevenClassic,
  dxSkinSharp, dxSkinSharpPlus, dxSkinSilver, dxSkinSpringTime, dxSkinStardust,
  dxSkinSummer2008, dxSkinTheAsphaltWorld, dxSkinsDefaultPainters,
  dxSkinValentine, dxSkinVisualStudio2013Blue, dxSkinVisualStudio2013Dark,
  dxSkinVisualStudio2013Light, dxSkinVS2010, dxSkinWhiteprint,
  dxSkinXmas2008Blue;

type
  Tfrm_cad_contador = class(TForm)
    GroupBox1: TGroupBox;
    Label1: TLabel;
    Label2: TLabel;
    BtnGravar: TcxButton;
    BtnCancelar: TcxButton;
    Label13: TLabel;
    Label14: TLabel;
    Label15: TLabel;
    Label17: TLabel;
    Label16: TLabel;
    Label18: TLabel;
    Label19: TLabel;
    DS_CONTADOR: TDataSource;
    FDCONTADOR: TFDQuery;
    FANTASIA: TDBEdit;
    CONTATO: TDBEdit;
    CELULAR: TDBEdit;
    WHATSAPP: TDBEdit;
    TELEFONE1: TDBEdit;
    TELEFONE2: TDBEdit;
    EMAIL1: TDBEdit;
    EMAIL2: TDBEdit;
    BtnIncluir: TcxButton;
    SQL_INCREMENT: TFDQuery;
    SQL_INCREMENTauto_increment: TLargeintField;
    cxPageControl1: TcxPageControl;
    tsConsulta: TcxTabSheet;
    tsCadastro: TcxTabSheet;
    BtnAlterar: TcxButton;
    Edt_Consulta: TEdit;
    Label20: TLabel;
    FDCONTADORCODIGO: TFDAutoIncField;
    FDCONTADORRAZAO_SOCIAL: TStringField;
    FDCONTADORNOME_FANTASIA: TStringField;
    FDCONTADORCNPJ: TStringField;
    FDCONTADORCONTATO: TStringField;
    FDCONTADORCELULAR: TStringField;
    FDCONTADORWHATSAPP: TStringField;
    FDCONTADORTELEFONE1: TStringField;
    FDCONTADORTELEFONE2: TStringField;
    FDCONTADOREMAIL1: TStringField;
    FDCONTADOREMAIL2: TStringField;
    FDCONTADORRUA: TStringField;
    FDCONTADORNUMERO: TStringField;
    FDCONTADORCOMPLEMENTO: TStringField;
    FDCONTADORBAIRRO: TStringField;
    FDCONTADORZONA: TStringField;
    FDCONTADORUF: TStringField;
    FDCONTADORCEP: TStringField;
    FDCONTADORMUNICIPIO: TStringField;
    FDCONTADORSTATUS_CADASTRAL: TStringField;
    codigo: TcxDBTextEdit;
    cxGroupBox1: TcxGroupBox;
    cbFiltro: TcxComboBox;
    grpEndereco: TGroupBox;
    Label22: TLabel;
    Label25: TLabel;
    Label26: TLabel;
    btnMunicip: TcxButton;
    cxButton19: TcxButton;
    btn_cep: TcxButton;
    DBEdit76: TDBEdit;
    DBEdit75: TDBEdit;
    DBEdit77: TDBEdit;
    DBEdit81: TDBEdit;
    DBEdit1: TDBEdit;
    DBEdit82: TDBEdit;
    DBEdit83: TDBEdit;
    DBEdit80: TDBEdit;
    DBEdit78: TDBEdit;
    DBEdit104: TDBEdit;
    DBEdit79: TDBEdit;
    cxButton1: TcxButton;
    FDCONTADORCODIGO_MUNICIPIO: TStringField;
    FDCONTADORCODIGO_PAIS: TStringField;
    FDCONTADORPAIS: TStringField;
    FDCONTADORREGIAO: TStringField;
    SQL_C_Clientes: TFDQuery;
    DT_C_Clientes: TDataSource;
    SQL_C_ClientesCODIGO: TFDAutoIncField;
    SQL_C_ClientesRAZAO_SOCIAL: TStringField;
    SQL_C_ClientesNOME_FANTASIA: TStringField;
    SQL_C_ClientesCNPJ: TStringField;
    SQL_C_ClientesCONTATO: TStringField;
    SQL_C_ClientesCELULAR: TStringField;
    SQL_C_ClientesWHATSAPP: TStringField;
    SQL_C_ClientesTELEFONE1: TStringField;
    SQL_C_ClientesTELEFONE2: TStringField;
    SQL_C_ClientesEMAIL1: TStringField;
    SQL_C_ClientesEMAIL2: TStringField;
    SQL_C_ClientesRUA: TStringField;
    SQL_C_ClientesNUMERO: TStringField;
    SQL_C_ClientesCOMPLEMENTO: TStringField;
    SQL_C_ClientesBAIRRO: TStringField;
    SQL_C_ClientesZONA: TStringField;
    SQL_C_ClientesUF: TStringField;
    SQL_C_ClientesCEP: TStringField;
    SQL_C_ClientesMUNICIPIO: TStringField;
    SQL_C_ClientesSTATUS_CADASTRAL: TStringField;
    SQL_C_ClientesCODIGO_MUNICIPIO: TStringField;
    SQL_C_ClientesCODIGO_PAIS: TStringField;
    SQL_C_ClientesPAIS: TStringField;
    SQL_C_ClientesREGIAO: TStringField;
    cxGrid1: TcxGrid;
    cxGridDBTableView1: TcxGridDBTableView;
    clCodigo: TcxGridDBColumn;
    cxGridLevel1: TcxGridLevel;
    SQL_LISTA: TFDQuery;
    SQL_LISTACODIGO: TFDAutoIncField;
    SQL_LISTARAZAO_SOCIAL: TStringField;
    SQL_LISTANOME_FANTASIA: TStringField;
    SQL_LISTACNPJ: TStringField;
    SQL_LISTACONTATO: TStringField;
    SQL_LISTACELULAR: TStringField;
    SQL_LISTAWHATSAPP: TStringField;
    SQL_LISTATELEFONE1: TStringField;
    SQL_LISTATELEFONE2: TStringField;
    SQL_LISTAEMAIL1: TStringField;
    SQL_LISTAEMAIL2: TStringField;
    SQL_LISTARUA: TStringField;
    SQL_LISTANUMERO: TStringField;
    SQL_LISTACOMPLEMENTO: TStringField;
    SQL_LISTABAIRRO: TStringField;
    SQL_LISTAZONA: TStringField;
    SQL_LISTAUF: TStringField;
    SQL_LISTACEP: TStringField;
    SQL_LISTAMUNICIPIO: TStringField;
    SQL_LISTASTATUS_CADASTRAL: TStringField;
    SQL_LISTACODIGO_MUNICIPIO: TStringField;
    SQL_LISTACODIGO_PAIS: TStringField;
    SQL_LISTAPAIS: TStringField;
    SQL_LISTAREGIAO: TStringField;
    DS_LISTA: TDataSource;
    clNomeFantasia: TcxGridDBColumn;
    clContato: TcxGridDBColumn;
    DBComboBox1: TDBComboBox;
    clCelular: TcxGridDBColumn;
    clWhats: TcxGridDBColumn;
    clTelefone1: TcxGridDBColumn;
    clTelefone2: TcxGridDBColumn;
    clEmail1: TcxGridDBColumn;
    clEmail2: TcxGridDBColumn;
    clBairro: TcxGridDBColumn;
    cxButton3: TcxButton;
    SQL_C_ClientesINSCRICAO_RG: TStringField;
    SQL_C_ClientesCODIGO_UF: TStringField;
    FDCONTADORINSCRICAO_RG: TStringField;
    FDCONTADORCODIGO_UF: TStringField;
    SQL_LISTAINSCRICAO_RG: TStringField;
    SQL_LISTACODIGO_UF: TStringField;
    DBGrid1: TDBGrid;
    DBEdit2: TDBEdit;
    medt1: TDBEdit;
    FDCONTADORRG: TStringField;
    FDCONTADORCPF: TStringField;
    FDCONTADORINSCRICAO: TStringField;
    FDCONTADORTIPO_CONTADOR: TStringField;
    CNPJ: TDBEdit;
    lbn1: TLabel;
    lbIN: TLabel;
    dbINSCRICAO: TDBEdit;
    dbRG: TDBEdit;
    GroupBox3: TGroupBox;
    DBCk_Inativo: TDBCheckBox;
    GroupBox8: TGroupBox;
    BtnFisica: TcxButton;
    BtnJuridica: TcxButton;
    RAZAO_SOCIAL: TDBEdit;
    SQL_LISTARG: TStringField;
    SQL_LISTACPF: TStringField;
    SQL_LISTAINSCRICAO: TStringField;
    SQL_LISTATIPO_CONTADOR: TStringField;
    btn_ConsultaCNPJ: TcxButton;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure BtnGravarClick(Sender: TObject);
    procedure BtnCancelarClick(Sender: TObject);
    procedure BtnIncluirClick(Sender: TObject);
    procedure FormKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
    procedure FormKeyPress(Sender: TObject; var Key: Char);
    procedure CNPJKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
    procedure CNPJKeyPress(Sender: TObject; var Key: Char);
    procedure INSCRICAOKeyPress(Sender: TObject; var Key: Char);
    procedure CELULARKeyPress(Sender: TObject; var Key: Char);
    procedure WHATSAPPKeyPress(Sender: TObject; var Key: Char);
    procedure TELEFONE1KeyPress(Sender: TObject; var Key: Char);
    procedure TELEFONE2KeyPress(Sender: TObject; var Key: Char);
    procedure NUMEROKeyPress(Sender: TObject; var Key: Char);
    procedure dlConsulta(check_edit: Boolean = true);
    procedure CarregarDadosInternos;
    procedure CarregarUltimoCadastro;
    procedure CarregarDados;
    procedure CEPExit(Sender: TObject);
    procedure BtnAlterarClick(Sender: TObject);
    procedure Edt_ConsultaKeyUp(Sender: TObject; var Key: Word;
      Shift: TShiftState);
//    procedure cxGrid1DBTableView1DblClick(Sender: TObject);
    procedure RAZAO_SOCIALKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure FANTASIAKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure INSCRICAOKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure CONTATOKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure CELULARKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure WHATSAPPKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure TELEFONE1KeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure TELEFONE2KeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure EMAIL1KeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
    procedure EMAIL2KeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
    procedure RUAKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
    procedure NUMEROKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
    procedure COMPLEMENTOKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure BAIRROKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
    procedure ZONAKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
    procedure CEPKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
    procedure FormShow(Sender: TObject);
    procedure cxButton20Click(Sender: TObject);
    procedure btnMunicipClick(Sender: TObject);
    procedure cxButton19Click(Sender: TObject);
    procedure btn_cepClick(Sender: TObject);
    procedure cxGrid1DBTableView1CustomDrawCell(Sender: TcxCustomGridTableView; ACanvas: TcxCanvas; AViewInfo: TcxGridTableDataCellViewInfo; var ADone: Boolean);
    procedure tsConsultaShow(Sender: TObject);
    procedure cxGridDBTableView2CustomDrawCell(Sender: TcxCustomGridTableView; ACanvas: TcxCanvas; AViewInfo: TcxGridTableDataCellViewInfo; var ADone: Boolean);
    procedure grid_cDBTableView1CustomDrawCell(Sender: TcxCustomGridTableView; ACanvas: TcxCanvas; AViewInfo: TcxGridTableDataCellViewInfo; var ADone: Boolean);
    procedure cxGrid1DBTableView1CellDblClick(Sender: TcxCustomGridTableView;
      ACellViewInfo: TcxGridTableDataCellViewInfo; AButton: TMouseButton;
      AShift: TShiftState; var AHandled: Boolean);
    procedure cxGridDBTableView1DblClick(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure tsCadastroShow(Sender: TObject);
    procedure DBEdit78KeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure DBEdit78KeyPress(Sender: TObject; var Key: Char);
    procedure DBEdit76KeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure DBEdit75KeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure DBEdit79KeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure DBEdit77KeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure DBEdit81KeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure cxButton1Click(Sender: TObject);
//  PUXA CAMPOS CONTADOR PARA OUTRA TELA
    procedure DBGrid1DrawColumnCell(Sender: TObject; const Rect: TRect;
      DataCol: Integer; Column: TColumn; State: TGridDrawState);
      //  PUXA CAMPOS CONTADOR PARA OUTRA TELA
    procedure InformarDadosContador(RAZAO_SOCIAL, FANTASIA, CNPJ, medt1, dbINSCRICAO,
    dbRG, CONTATO, CELULAR, WHATSAPP, TELEFONE1, TELEFONE2, EMAIL1, EMAIL2, DBEDIT76, DBEDIT75,
     DBEDIT79, DBEDIT77, DBEDIT78, DBEDIT81, DBEDIT80, DBEDIT1, DBEDIT82, DBEDIT2,
      DBEDIT83, DBEDIT104: TDBEdit);

    procedure medt1KeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure medt1KeyPress(Sender: TObject; var Key: Char);
    procedure dbRGKeyPress(Sender: TObject; var Key: Char);
    procedure dbRGKeyUp(Sender: TObject; var Key: Word; Shift: TShiftState);
    procedure dbINSCRICAOKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure dbINSCRICAOKeyPress(Sender: TObject; var Key: Char);
    procedure dbINSCRICAOKeyUp(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure BtnFisicaClick(Sender: TObject);
    procedure BtnJuridicaClick(Sender: TObject);
    procedure alterar_contador(BooFocus: Boolean = true);
//    procedure DBGrid1KeyDown(Sender: TObject; var Key: Word;
//      Shift: TShiftState);
    procedure Edt_Consulta2KeyUp(Sender: TObject; var Key: Word;
      Shift: TShiftState);
//    procedure DBGrid1CellClick(Column: TColumn);
    procedure DBGrid1DblClick(Sender: TObject);
    procedure DBGrid1CellClick(Column: TColumn);
    procedure PadronizarLayout;
    procedure btn_ConsultaCNPJClick(Sender: TObject);


  private
    { Private declarations }
   procedure PreencherDadosContador();
   //procedure PreencherDadosContador();

   procedure Preencher_Tela_Com_Dados_da_Consulta_CNPJ;


  public
    { Public declarations }
  end;

var
  frm_cad_contador: Tfrm_cad_contador;

  m_razao_social, m_NOME_FANTASIA, m_CNPJ, m_CPF, m_INSCRICAO, m_RG,
   m_CONTATO, m_CELULAR, m_WHATSAPP, m_TELEFONE1, m_TELEFONE2, m_EMAIL1,
    m_EMAIL2, m_RUA, m_NUMERO, m_BAIRRO, m_COMPLEMENTO, m_CEP, m_MUNICIPIO,
     m_CODIGO_MUNICIPIO, m_ZONA, m_REGIAO, m_UF, m_CODIGO_UF, m_PAIS, m_cod_pais: TdbEdit;



   TIPO_CONTADOR: String;
implementation

{$R *.dfm}

 uses U_Municipio, relatorios, u_funcoes, liberacao, config_certificado, config_email,
  config_nfe, config_mde, config_nfs, config_nfce_, u_funformatartexto,
  cad_endereco, cad_zona, cad_bairro, funcoes_sistema, h_Functions, S_Module,
  ConsultaCNPJ;

procedure Tfrm_cad_contador.CarregarDadosInternos;
begin
  CarregarDados;

  FDCONTADOR.active := true;

  DBCk_Inativo.Checked := (FDCONTADORSTATUS_CADASTRAL.Value = 'INATIVO');


  u_funcoes.CamposObrigatorios_CorPadrao([RAZAO_SOCIAL, FANTASIA], [], []);

  u_funcoes.AlterarEnabled([GroupBox1, grpEndereco, groupbox1,
  cxButton1, btnMunicip, btn_cep, cxButton19,
  btn_cep, DBCk_Inativo, GroupBox8], False);

  u_funcoes.IniciarCadastro([BtnIncluir, BtnCancelar, BtnAlterar], False);


end;

procedure Tfrm_cad_contador.CarregarUltimoCadastro;
begin
  SQL_INCREMENT.Close;
  SQL_INCREMENT.Open;
  with FDCONTADOR do
  begin
    Active := false;
    Close;
    Params.Add.Name := 'pcodigo';
    ParamByName('pcodigo').Value := (sql_incrementAUTO_INCREMENT.asInteger - 1);
    Open;
    Active := true;
  end;
      CarregarDados;
end;


procedure Tfrm_cad_contador.BAIRROKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
 if (Key = vk_Return) or (Key = vk_tab) then
  begin
    DBEdit1.SetFocus;
  end;
end;

procedure Tfrm_cad_contador.BtnAlterarClick(Sender: TObject);
begin
alterar_contador;
end;

procedure Tfrm_cad_contador.alterar_contador(BooFocus: Boolean = true);
begin
begin
if RAZAO_SOCIAL.Text = '' then
  begin
    Application.MessageBox('Nenhum Contador foi selecionado.', 'Alterar', MB_ICONWARNING + MB_OK);
  end
  else

   begin
    BtnIncluir.Visible := false;
    if Tipo_Contador = 'FISICA' then
    begin
      GroupBox1.Enabled := true;
      grpEndereco.Enabled := true;
      medt1.Enabled := true;
      lbIN.Caption := 'RG:';
      CNPJ.Visible := false;
      if BooFocus then
      begin
        RAZAO_SOCIAL.SetFocus;
        RAZAO_SOCIAL.selectall;
      end;
      BtnFisica.Enabled := true;
      BtnJuridica.Enabled := false;
      CNPJ.Visible := false;
      medt1.Enabled := true;
      lbIN.Caption := 'RG:';
    end
    else if Tipo_Contador = 'JURIDICA' then
    begin
      GroupBox1.Enabled := true;
      grpEndereco.Enabled := true;
      CNPJ.Visible := true;
      lbn1.Caption := 'CNPJ:';
      medt1.Enabled := false;
      if BooFocus then
      begin
        RAZAO_SOCIAL.SetFocus;
        RAZAO_SOCIAL.selectall;
      end;
      BtnJuridica.Enabled := true;
      BtnFisica.Enabled := false;
      CNPJ.Visible := true;
      medt1.Enabled := false;
      lbn1.Caption := 'CNPJ:';
end;


    tsCadastro.show;
    FDCONTADOR.Edit;

 //   CNPJ.field.Text := Format_CPF_CNPJ(FDCONSULTORCNPJ.AsString);
    u_funcoes.IniciarCadastro([BtnIncluir, BtnCancelar, BtnAlterar], true);
    u_funcoes.AlterarEnabled([GroupBox1, grpEndereco, groupbox1, GroupBox8,  btnJuridica, btnFisica,
     cxButton1, btnMunicip, btn_cep, cxButton19, btn_cep, DBCk_Inativo], true);
  end;
end;
end;


procedure Tfrm_cad_contador.BtnCancelarClick(Sender: TObject);
begin
 FDCONTADOR.Cancel;
 FDCONTADOR.Close;
  CarregarUltimoCadastro;
  CarregarDadosInternos;
  CarregarDados;
end;

procedure Tfrm_cad_contador.BtnFisicaClick(Sender: TObject);
begin
 if GroupBox1.Enabled = true then

  BtnFisica.Enabled := false;
  BtnJuridica.Enabled := True;


  TIPO_CONTADOR := 'FISICA';

  lbIN.Caption := ' RG:';
  lbn1.Caption := ' CPF:';
  AlterarEnabled([GroupBox1, grpEndereco, groupbox1,
  cxButton1, btnMunicip, btn_cep,
  cxButton19, btn_cep, DBCk_Inativo], true);

  medt1.Visible  := true;
  dbRG.Visible  := true;

  dbINSCRICAO.Visible  := false;
  CNPJ.Visible  := false;

  RAZAO_SOCIAL.SetFocus;


end;

procedure Tfrm_cad_contador.BtnGravarClick(Sender: TObject);
var
  qry: TFDQuery;
begin
  if BtnIncluir.Visible = False then
  begin
  if u_funcoes.CamposObrigatorios([RAZAO_SOCIAL, FANTASIA],
        ['Razão Socaial', 'Nome Fantasia'], [], [], [], []) then
        exit
      else
      begin
   try
//        qry := simplequery('SELECT CODIGO, RAZAO_SOCIAL FROM CAD_CONTADOR WHERE CNPJ="' + REMOVERCARACTERESESPECIAIS(CNPJ.Text) + '" and CODIGO <> "' + CODIGO.Text + '"');
//        if qry <> nil then
//        begin
//          wnAlerta('Cadastrar Contador', slinebreak + 'CNPJ já está cadastrado "' + qry.Fields[0].AsString + ' - ' + qry.Fields[1].AsString + '"!');
//          CNPJ.SelectAll;
//          CNPJ.SetFocus;
//        end
//    else

  begin
         FDCONTADORTIPO_CONTADOR.Value := TIPO_CONTADOR;
            if TIPO_CONTADOR = 'FISICA' then
          FDCONTADORCPF.AsString := removercaracteresespeciais(medt1.Text);

        if TIPO_CONTADOR = 'JURIDICA' then
          FDCONTADORCNPJ.AsString := removercaracteresespeciais(CNPJ.Text);

         begin
          if DBCk_Inativo.Checked = true then
              FDCONTADORSTATUS_CADASTRAL.Value := 'INATIVO'
           else
              FDCONTADORSTATUS_CADASTRAL.Value := 'ATIVO';
            end;


              FDCONTADOR.Post;
              FDCONTADOR.Active := False;

              MessageDLG('Operação concluída com sucesso', mtInformation, [mbOk], 0);
              CarregarUltimoCadastro;
              CarregarDadosInternos;
            end;

   except
      on e: exception do
        wnerro('Cadastrar Contador', e.Message + slinebreak + 'Erro ao cadastrar Contador!');
    end;
  end;
end;
end;

procedure Tfrm_cad_contador.BtnIncluirClick(Sender: TObject);
begin
 if BtnIncluir.Visible = true then
  begin


    FDCONTADOR.Active := True;
    FDCONTADOR.Insert;
    TIPO_CONTADOR := '';


    AlterarEnabled([GroupBox8], true);

    medt1.Visible := true;
    dbRG.Visible := true;
    CNPJ.Enabled := true;
    dbINSCRICAO.Enabled := true;

    medt1.Enabled := true;
    dbRG.Enabled := true;
    CNPJ.Visible := false;

    dbINSCRICAO.Visible := false;

    BtnFisica.Enabled := true;
    BtnJuridica.Enabled := true;

    BtnFisica.SetFocus;

    u_funcoes.IniciarCadastro([BtnIncluir, BtnCancelar, BtnAlterar], true);


    BtnFisica.Enabled := true;
    BtnJuridica.Enabled := true;


    tsCadastro.show;
    DBCk_Inativo.Checked := false;





  if SQL_INCREMENTauto_increment.Value = 0 then
      CODIGO.Text := '1'
    else
      CODIGO.Text := inttostr(SQL_INCREMENTauto_increment.Value);


end;
end;

procedure Tfrm_cad_contador.BtnJuridicaClick(Sender: TObject);
begin
  if GroupBox1.Enabled = true then

  BtnFisica.Enabled := True;
  BtnJuridica.Enabled := False;

  TIPO_CONTADOR := 'JURIDICA';

  lbIN.Caption := ' IE:';
  lbn1.Caption := 'CNPJ:';
  AlterarEnabled([GroupBox1, grpEndereco, groupbox1,
  cxButton1, btnMunicip, btn_cep, cxButton19,
  btn_cep, DBCk_Inativo], true);

  medt1.Visible  := False;
  dbRG.Visible  := False;

  dbINSCRICAO.Visible  := true;
  CNPJ.Visible  := true;

  RAZAO_SOCIAL.SetFocus;
end;

procedure Tfrm_cad_contador.dbINSCRICAOKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
if (Key = VK_RETURN) or (Key = VK_TAB) then
  begin
      dbINSCRICAO.Text := u_funcoes.removercaracteresespeciais(dbINSCRICAO.Text);
    CONTATO.SetFocus;
  end;
end;

procedure Tfrm_cad_contador.dbINSCRICAOKeyPress(Sender: TObject; var Key: Char);
begin
  inherited;
  Key := u_funcoes.apenasnumeros(Key);
end;

procedure Tfrm_cad_contador.dbINSCRICAOKeyUp(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  if Key in [VK_RETURN, VK_TAB] then
    contato.SetFocus;
end;

procedure Tfrm_cad_contador.dbRGKeyPress(Sender: TObject; var Key: Char);
begin
  inherited;
  Key := u_funcoes.apenasnumeros(Key);
end;

procedure Tfrm_cad_contador.dbRGKeyUp(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  if Key in [VK_RETURN, VK_TAB] then
    contato.SetFocus;
end;

procedure Tfrm_cad_contador.dlConsulta(check_edit: Boolean = true);
const
  qry_base = 'select * from cad_contador';
var
   condicao: string;
begin
  FDCONTADOR.Close;
  cbFiltro.ValidateEdit(False);
  if check_edit then
  begin
    if edt_consulta.Text <> emptystr then
    begin
      case cbFiltro.SelectedItem of
        0:
          condicao := ' where  NOME_FANTASIA like "' + edt_consulta.Text + '%"';
        1:
          condicao := ' where  MUNICIPIO like "' + edt_consulta.Text + '%"';
        2:
          condicao := ' where CONTATO like "' + edt_consulta.Text + '%"';
      end;
    end;
  FDCONTADOR.Open(qry_base + condicao);
end;
end;


procedure Tfrm_cad_contador.CELULARKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
begin
 if (Key = vk_Return) or (Key = vk_tab) then
  begin
    WHATSAPP.SetFocus;
  end;
end;

procedure Tfrm_cad_contador.CELULARKeyPress(Sender: TObject; var Key: Char);
begin
  inherited;
  Key := u_funcoes.ApenasNumeros(Key);
end;

procedure Tfrm_cad_contador.CEPExit(Sender: TObject);
begin
  DBEdit78.Text:= formacep(DBEdit78.Text);
end;

procedure Tfrm_cad_contador.CEPKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
      if (Key = vk_Return) or (Key = vk_tab) then
  begin
    DBEdit81.SetFocus;
  end;
end;

procedure Tfrm_cad_contador.CNPJKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
    if (Key = vk_Return) or (Key = vk_tab) then
  begin
    dbINSCRICAO.SetFocus;
  end;
end;

procedure Tfrm_cad_contador.CNPJKeyPress(Sender: TObject; var Key: Char);
begin
  inherited;
  Key := apenasnumeros(Key);
end;

procedure Tfrm_cad_contador.COMPLEMENTOKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
 if (Key = vk_Return) or (Key = vk_tab) then
  begin
    DBEdit79.SetFocus;
  end;
end;

procedure Tfrm_cad_contador.CONTATOKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
 if (Key = vk_Return) or (Key = vk_tab) then
  begin
    CELULAR.SetFocus;
  end;
end;

procedure Tfrm_cad_contador.cxButton19Click(Sender: TObject);
begin
  FRM_cad_zona := TFRM_cad_zona.CREATE(Application);
  FRM_cad_zona.ShowModal;
  DBEdit1.Text := FRM_cad_zona.SQL_LISTADESCRICAO.value;
  DBComboBox1.SetFocus;
end;


procedure Tfrm_cad_contador.cxButton1Click(Sender: TObject);
begin
  frm_cad_bairro := Tfrm_cad_bairro.CREATE(Application);
  frm_cad_bairro.ShowModal;
  DBEdit79.Text := frm_cad_bairro.SQL_LISTADESCRICAO.value;
  DBEdit77.SetFocus;
end;


procedure Tfrm_cad_contador.cxButton20Click(Sender: TObject);
begin
  FRM_cad_endereco := TFRM_cad_endereco.CREATE(Application);
  FRM_cad_endereco.ShowModal;
  DBEdit76.Text := FRM_cad_endereco.SQL_LISTADESCRICAO.value;
  DBEdit75.SetFocus;
end;


procedure Tfrm_cad_contador.btn_cepClick(Sender: TObject);
var
  UF, RUA, BAIRRO, CIDADE: STRING;
  qry: TFDQuery;
begin
  if RemoverEspacoEmBranco(removercaracteresespeciais(DBEdit78.Text)) <> emptystr then
  begin
    ConsultarCep(RemoverEspacoEmBranco(removercaracteresespeciais(DBEdit78.Text)), UF, CIDADE, RUA, BAIRRO);
    DBEdit82.Text := UF;
    DBEdit81.Text := CIDADE;
    DBEdit76.Text := RUA;
    DBEdit79.Text := BAIRRO;

    DBEdit82.field.Text := UF;
    DBEdit81.field.Text := CIDADE;
    DBEdit76.field.Text := RUA;
    DBEdit79.field.Text := BAIRRO;

    qry := simplequery('SELECT IBGE, ESTADO FROM ENDERECO_MUNICIPIO WHERE NOME = ?', [CIDADE]);
    if qry <> nil then
    begin
      DBEdit80.Text := qry.fieldbyname('IBGE').AsString;
      DBEdit80.field.Text := qry.fieldbyname('IBGE').AsString;
      DBEdit104.Text := simplequery('SELECT PAIS FROM ENDERECO_ESTADO WHERE IBGE = ?', [qry.fieldbyname('ESTADO').AsString])
        .Fields[0].AsString;
      DBEdit104.field.Text := DBEdit104.Text;
      DBEdit83.Text := simplequery('SELECT NOME FROM ENDERECO_PAIS WHERE CODIGO = ?', [DBEdit104.Text]).Fields[0].AsString;
      DBEdit83.field.Text := DBEdit83.Text;
    end;
  end
  else
    wnAlerta('Consultar CEP', sLineBreak + 'Informe um cep!');

end;

procedure Tfrm_cad_contador.btn_ConsultaCNPJClick(Sender: TObject);
begin
  frmConsultaCNPJ := TfrmConsultaCNPJ.CREATE(Application);
  frmConsultaCNPJ.EditCNPJ.Text := CNPJ.Text;
  frmConsultaCNPJ.ShowModal;

  Preencher_Tela_Com_Dados_da_Consulta_CNPJ;

  frmConsultaCNPJ.Free;
end;

procedure Tfrm_cad_contador.Preencher_Tela_Com_Dados_da_Consulta_CNPJ;
begin
   // Preenche a tela com dados vindos da Consulta do CNPJ
    CNPJ.Text                        := frmConsultaCNPJ.EditCNPJ.Text;

    FDCONTADORRAZAO_SOCIAL.Value     := SemAsteriscos(frmConsultaCNPJ.EditRazaoSocial.Text);
    FDCONTADORCNPJ.Value             := frmConsultaCNPJ.EditCNPJ.Text;
    FDCONTADORRUA.Value              := SemAsteriscos(frmConsultaCNPJ.EditEndereco.Text);
    FDCONTADORNUMERO.Value           := SemAsteriscos(frmConsultaCNPJ.EditNumero.Text);
    FDCONTADORCOMPLEMENTO.Value      := SemAsteriscos(frmConsultaCNPJ.EditComplemento.Text);
    FDCONTADORBAIRRO.Value           := SemAsteriscos(frmConsultaCNPJ.EditBairro.Text);
    FDCONTADORUF.Value               := SemAsteriscos(frmConsultaCNPJ.EditUF.Text);
    FDCONTADORCODIGO_UF.value        := CodigoUF(frmConsultaCNPJ.EditUF.Text);
    FDCONTADORCEP.Value              := SemAsteriscos(frmConsultaCNPJ.EditCEP.Text);
    FDCONTADORMUNICIPIO.Value        := SemAsteriscos(frmConsultaCNPJ.EditCidade.Text);
    FDCONTADORCODIGO_MUNICIPIO.Value := CodigoMunicipio(frmConsultaCNPJ.EditCidade.Text,frmConsultaCNPJ.EditUF.Text);
    FDCONTADORCODIGO_PAIS.Value      := '1058';
    FDCONTADORPAIS.Value             := 'BRASIL';
end;

procedure Tfrm_cad_contador.btnMunicipClick(Sender: TObject);
begin
  Frm_Municipio := TFrm_Municipio.Create(Application);
  Frm_Municipio.InformarDadosMunicipio1(DBEdit81, DBEdit80, DBEdit82, DBEdit2, DBEdit83, DBEdit104);
  Frm_Municipio.ShowModal;
  Frm_Municipio.Free;
  cxButton19.SetFocus;
end;

procedure Tfrm_cad_contador.cxGrid1DBTableView1CellDblClick(Sender: TcxCustomGridTableView; ACellViewInfo: TcxGridTableDataCellViewInfo; AButton: TMouseButton; AShift: TShiftState;
  var AHandled: Boolean);
begin

  with FDCONTADOR do
  begin
    Close;
    ParamByName('pcodigo').Value := inttostr(SQL_C_Clientescodigo.Value);
    Open;
  end;
  CarregarDadosInternos;
 CarregarDados;
end;



procedure Tfrm_cad_contador.cxGridDBTableView1DblClick(Sender: TObject);
begin
   tscadastro.Show;
   BtnIncluir.Visible := false;
end;

procedure Tfrm_cad_contador.cxGridDBTableView2CustomDrawCell(Sender: TcxCustomGridTableView; ACanvas: TcxCanvas; AViewInfo: TcxGridTableDataCellViewInfo; var ADone: Boolean);
begin
  GridZebrado(ACanvas, AViewInfo);
end;


procedure Tfrm_cad_contador.DBEdit75KeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
if (Key = VK_RETURN) or (Key = VK_TAB) then
  begin
    cxButton1.SetFocus;
  end
end;

procedure Tfrm_cad_contador.DBEdit76KeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
if (Key = VK_RETURN) or (Key = VK_TAB) then
  begin
    DBEDIT75.SetFocus;
  end;
end;

procedure Tfrm_cad_contador.DBEdit77KeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
if (Key = VK_RETURN) or (Key = VK_TAB) then
  begin
    DBEdit78.SetFocus;
  end
end;

procedure Tfrm_cad_contador.DBEdit78KeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  if (Key = VK_RETURN) or (Key = VK_TAB) then
  begin
    btn_cep.click;
  end;
end;

procedure Tfrm_cad_contador.DBEdit78KeyPress(Sender: TObject; var Key: Char);
begin
  Key := u_funcoes.ApenasNumeros(Key);
end;

procedure Tfrm_cad_contador.DBEdit79KeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
if (Key = VK_RETURN) or (Key = VK_TAB) then
  begin
    cxButton1.SetFocus;
  end
end;

procedure Tfrm_cad_contador.DBEdit81KeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
if (Key = VK_RETURN) or (Key = VK_TAB) then
  begin
    DBEdit78.SetFocus;
  end
end;

//procedure Tfrm_cad_contador.DBGrid1CellClick(Column: TColumn);
//begin
//  PreencherDadosContador();
//end;

procedure Tfrm_cad_contador.DBGrid1CellClick(Column: TColumn);
begin
   PreencherDadosContador();
end;

procedure Tfrm_cad_contador.DBGrid1DblClick(Sender: TObject);
begin
//BtnIncluir.visible := False;
//  BtnCancelar.Enabled := True;
//  BtnGravar.visible := True;
//  Close;
end;

procedure Tfrm_cad_contador.DBGrid1DrawColumnCell(Sender: TObject;
  const Rect: TRect; DataCol: Integer; Column: TColumn; State: TGridDrawState);
begin
  GridZebrado(DBGrid1, Rect, DataCol, Column, State);
end;

//procedure Tfrm_cad_contador.DBGrid1KeyDown(Sender: TObject; var Key: Word;
//  Shift: TShiftState);
//begin
//  if Key = VK_RETURN then
//  begin
//    PreencherDadosContador();
//  end;
//end;
//
//
//

procedure Tfrm_cad_contador.grid_cDBTableView1CustomDrawCell(Sender: TcxCustomGridTableView; ACanvas: TcxCanvas; AViewInfo: TcxGridTableDataCellViewInfo; var ADone: Boolean);
begin
  GridZebrado(ACanvas, AViewInfo);
end;

procedure Tfrm_cad_contador.cxGrid1DBTableView1CustomDrawCell(Sender: TcxCustomGridTableView; ACanvas: TcxCanvas; AViewInfo: TcxGridTableDataCellViewInfo; var ADone: Boolean);
begin

  TFunctions.stripedGrid(ACanvas, AViewInfo);

end;

procedure Tfrm_cad_contador.Edt_Consulta2KeyUp(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
//dlConsultaContador;
dlConsulta;
end;

procedure Tfrm_cad_contador.Edt_ConsultaKeyUp(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
dlConsulta;
end;

procedure Tfrm_cad_contador.EMAIL1KeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
 if (Key = vk_Return) or (Key = vk_tab) then
  begin
    EMAIL2.SetFocus;
  end;
end;

procedure Tfrm_cad_contador.EMAIL2KeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
 if (Key = vk_Return) or (Key = vk_tab) then
  begin
    DBEdit76.SetFocus;
  end;
end;

procedure Tfrm_cad_contador.FANTASIAKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
 if (Key = vk_Return) or (Key = vk_tab) then
  begin
    CNPJ.SetFocus;
  end;
end;

procedure Tfrm_cad_contador.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  Action := cafree;
  Self := nil;
end;



procedure Tfrm_cad_contador.FormCreate(Sender: TObject);
begin
FDCONTADOR.Active := True;

end;

procedure Tfrm_cad_contador.FormKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
   if (Key = vk_Return) or (Key = vk_tab) then
  begin
    dbINSCRICAO.SetFocus;
  end;
end;

procedure Tfrm_cad_contador.FormKeyPress(Sender: TObject; var Key: Char);
begin
   inherited;
   Key := u_funcoes.ApenasNumeros(Key);
end;

procedure Tfrm_cad_contador.FormShow(Sender: TObject);
begin
  CarregarUltimoCadastro;
  CarregarDadosInternos;
 // CarregarDados;
end;

procedure Tfrm_cad_contador.INSCRICAOKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
 if (Key = vk_Return) or (Key = vk_tab) then
  begin
    CONTATO.SetFocus;
  end;
end;

procedure Tfrm_cad_contador.INSCRICAOKeyPress(Sender: TObject; var Key: Char);
begin
  inherited;
  Key := u_funcoes.ApenasNumeros(Key);
end;

procedure Tfrm_cad_contador.medt1KeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  if Key in [VK_RETURN, VK_TAB] then
    dbRG.SetFocus;
end;

procedure Tfrm_cad_contador.medt1KeyPress(Sender: TObject; var Key: Char);
begin
  inherited;
  Key := apenasnumeros(Key);
end;

procedure Tfrm_cad_contador.NUMEROKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
 if (Key = vk_Return) or (Key = vk_tab) then
  begin
    DBEdit77.SetFocus;
  end;
end;

procedure Tfrm_cad_contador.NUMEROKeyPress(Sender: TObject; var Key: Char);
begin
  inherited;
  Key := u_funcoes.ApenasNumeros(Key);
end;

procedure Tfrm_cad_contador.RAZAO_SOCIALKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
if (Key = VK_RETURN) or (Key = VK_TAB) then
  begin
    FANTASIA.SetFocus;
  end;
end;

procedure Tfrm_cad_contador.RUAKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
 if (Key = vk_Return) or (Key = vk_tab) then
  begin
    DBEdit75.SetFocus;
  end;
end;

procedure Tfrm_cad_contador.TELEFONE1KeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
 if (Key = vk_Return) or (Key = vk_tab) then
  begin
    TELEFONE2.SetFocus;
  end;
end;

procedure Tfrm_cad_contador.TELEFONE1KeyPress(Sender: TObject; var Key: Char);
begin
  inherited;
  Key := u_funcoes.ApenasNumeros(Key);
end;

procedure Tfrm_cad_contador.TELEFONE2KeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
 if (Key = vk_Return) or (Key = vk_tab) then
  begin
    EMAIL1.SetFocus;
  end;
end;

procedure Tfrm_cad_contador.TELEFONE2KeyPress(Sender: TObject; var Key: Char);
begin
  inherited;
  Key := u_funcoes.ApenasNumeros(Key);
end;

procedure Tfrm_cad_contador.tsCadastroShow(Sender: TObject);
begin
  FDCONTADOR.Active := true;
end;

procedure Tfrm_cad_contador.tsConsultaShow(Sender: TObject);
begin
  SQL_C_Clientes.Active := False;
  SQL_C_Clientes.Active := true;
//  FDCONTADOR.Active := True;
  FDCONTADOR.Active := False;
  edt_consulta.SetFocus;
end;

procedure Tfrm_cad_contador.WHATSAPPKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
 if (Key = vk_Return) or (Key = vk_tab) then
  begin
    TELEFONE1.SetFocus;
  end;
end;

procedure Tfrm_cad_contador.WHATSAPPKeyPress(Sender: TObject; var Key: Char);
begin
  inherited;
  Key := u_funcoes.ApenasNumeros(Key);
end;

procedure Tfrm_cad_contador.ZONAKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
 if (Key = vk_Return) or (Key = vk_tab) then
  begin
    DBEdit82.SetFocus;
  end;
end;

procedure Tfrm_cad_contador.InformarDadosContador(RAZAO_SOCIAL, FANTASIA, CNPJ,
  medt1, dbINSCRICAO, dbRG, CONTATO, CELULAR, WHATSAPP, TELEFONE1, TELEFONE2, EMAIL1, EMAIL2,
  DBEDIT76, DBEDIT75, DBEDIT79, DBEDIT77, DBEDIT78, DBEDIT81,
  DBEDIT80, DBEDIT1,  DBEDIT82, DBEDIT2, DBEDIT83, DBEDIT104: TDBEdit);
begin



if RAZAO_SOCIAL <> nil then
    m_RAZAO_SOCIAL := RAZAO_SOCIAL;

if FANTASIA <> nil then
    m_NOME_FANTASIA  := FANTASIA;
  // FANTASIA


if CNPJ <> nil then
    m_CNPJ := CNPJ;
  // CNPJ

if medt1 <> nil then
    m_CPF := medt1;
  // CPF

if dbINSCRICAO <> nil then
    m_INSCRICAO  := dbINSCRICAO;
  // m_INSCRICAO

if dbRG <> nil then
    m_RG  := dbRG ;
  // m_RG

if CONTATO <> nil then
    m_CONTATO  := CONTATO;
  // CONTATO

if CELULAR <> nil then
    m_CELULAR  := CELULAR;
  // CELULAR

if WHATSAPP <> nil then
    m_WHATSAPP  := WHATSAPP;
  // WHATSAPP

if TELEFONE1 <> nil then
    m_TELEFONE1   := TELEFONE1;
  // TELEFONE1

if TELEFONE2 <> nil then
    m_TELEFONE2   := TELEFONE2;
  // TELEFONE2

if EMAIL1 <> nil then
    m_EMAIL1   := EMAIL1;
  // municipio

if EMAIL2 <> nil then
    m_EMAIL2   := EMAIL2;
  // EMAIL2

 if DBEDIT76 <> nil then
    m_RUA  := DBEDIT76;
  // m_RUA

if DBEDIT75 <> nil then
    m_NUMERO    := DBEDIT75;
  // m_NUMERO

if DBEDIT79 <> nil then
    m_BAIRRO    := DBEDIT79;
  // m_BAIRRO

if DBEDIT77 <> nil then
    m_COMPLEMENTO    := DBEDIT77;
  // m_COMPLEMENTO

if DBEDIT78 <> nil then
    m_CEP := DBEDIT78;
  // m_CEP

if DBEDIT81 <> nil then
     m_MUNICIPIO := DBEDIT81;
  // m_MUNICIPIO

if DBEDIT80 <> nil then
    m_CODIGO_MUNICIPIO   := DBEDIT80;
  // m_CODIGO_MUNICIPIO

if DBEDIT1 <> nil then
    m_ZONA  := DBEDIT1;
  // m_ZONA

//   if DBComboBox1     <> nil then
//    m_REGIAO     := DBComboBox1;
//  // m_REGIAO

if DBEDIT82 <> nil then
    m_UF  := DBEDIT82 ;
  // m_UF

if DBEDIT2 <> nil then
    m_CODIGO_UF := DBEDIT2 ;
  // m_PAIS

if DBEDIT2 <> nil then
    m_PAIS := DBEDIT83  ;
  // m_CODIGO_UF

if DBEDIT104 <> nil then
    m_COD_PAIS := DBEDIT104 ;
  // m_PAIS


end;



procedure Tfrm_cad_contador.PreencherDadosContador();
begin
  if m_razao_social <> nil then
    if m_razao_social.Field <> nil then
      m_razao_social.Field.Text := frm_cad_contador.FDCONTADORRAZAO_SOCIAL.Text
    else
      m_razao_social.Text := frm_cad_contador.FDCONTADORRAZAO_SOCIAL.Text;
  // RAZAO SOCIAL


  if m_NOME_FANTASIA <> nil then
    if m_NOME_FANTASIA.Field <> nil then
      m_NOME_FANTASIA.Field.Text := frm_cad_contador.FDCONTADORNOME_FANTASIA.Text
    else
      m_NOME_FANTASIA.Text := frm_cad_contador.FDCONTADORNOME_FANTASIA.Text;

//
   if m_CNPJ <> nil then
    if m_CNPJ.Field <> nil then
      m_CNPJ.Field.Text := frm_cad_contador.FDCONTADORCNPJ.Text
    else
      m_CNPJ.Text := frm_cad_contador.FDCONTADORCNPJ.Text;
  // CNPJ

  if m_CPF <> nil then
    if m_CPF.Field <> nil then
      m_CPF.Field.Text := frm_cad_contador.FDCONTADORCPF.Text
    else
      m_CPF.Text := frm_cad_contador.FDCONTADORCPF.Text;
  // CPF


  if m_INSCRICAO <> nil then
    if m_INSCRICAO.Field <> nil then
      m_INSCRICAO.Field.Text := frm_cad_contador.FDCONTADORINSCRICAO.Text
    else
      m_INSCRICAO.Text := frm_cad_contador.FDCONTADORINSCRICAO.Text;
  // INSCRIAO ESTADUAL


  if m_RG <> nil then
    if m_RG.Field <> nil then
      m_RG.Field.Text := frm_cad_contador.FDCONTADORRG.Text
    else
      m_RG.Text := frm_cad_contador.FDCONTADORRG.Text;
  // RG



  if m_CONTATO <> nil then
    if m_CONTATO.Field <> nil then
      m_CONTATO.Field.Text := frm_cad_contador.FDCONTADORCONTATO.Text
    else
      m_CONTATO.Text := frm_cad_contador.FDCONTADORCONTATO.Text;
  // CONTATO



  if m_CELULAR <> nil then
    if m_CELULAR.Field <> nil then
      m_CELULAR.Field.Text := frm_cad_contador.FDCONTADORCELULAR.Text
    else
      m_CELULAR.Text := frm_cad_contador.FDCONTADORCELULAR.Text;
  // CELULAR


  if m_WHATSAPP <> nil then
    if m_WHATSAPP.Field <> nil then
      m_WHATSAPP.Field.Text := frm_cad_contador.FDCONTADORWHATSAPP.Text
    else
      m_WHATSAPP.Text := frm_cad_contador.FDCONTADORWHATSAPP.Text;
  // WHATSAPP


  if m_TELEFONE1 <> nil then
    if m_TELEFONE1.Field <> nil then
      m_TELEFONE1.Field.Text := frm_cad_contador.FDCONTADORTELEFONE1.Text
    else
      m_TELEFONE1.Text := frm_cad_contador.FDCONTADORTELEFONE1.Text;
  // TELEFONE1


  if m_TELEFONE2 <> nil then
    if m_TELEFONE1.Field <> nil then
      m_TELEFONE1.Field.Text := frm_cad_contador.FDCONTADORTELEFONE2.Text
    else
      m_TELEFONE1.Text := frm_cad_contador.FDCONTADORTELEFONE2.Text;
  // TELEFONE 2


  if m_EMAIL1 <> nil then
    if m_EMAIL1.Field <> nil then
      m_EMAIL1.Field.Text := frm_cad_contador.FDCONTADOREMAIL1.Text
    else
      m_EMAIL1.Text := frm_cad_contador.FDCONTADOREMAIL1.Text;
  // EMAIL1


  if m_EMAIL2 <> nil then
    if m_EMAIL2.Field <> nil then
      m_EMAIL2.Field.Text := frm_cad_contador.FDCONTADOREMAIL2.Text
    else
      m_EMAIL2.Text := frm_cad_contador.FDCONTADOREMAIL2.Text;
  // EMAIL2


  if m_RUA <> nil then
    if m_RUA.Field <> nil then
      m_RUA.Field.Text := frm_cad_contador.FDCONTADORRUA.Text
    else
      m_RUA.Text := frm_cad_contador.FDCONTADORRUA.Text;
  // RUA


  if m_NUMERO <> nil then
    if m_NUMERO.Field <> nil then
      m_NUMERO.Field.Text := frm_cad_contador.FDCONTADORNUMERO.Text
    else
      m_NUMERO.Text := frm_cad_contador.FDCONTADORNUMERO.Text;
  // NUMERO


  if m_BAIRRO <> nil then
    if m_BAIRRO.Field <> nil then
      m_BAIRRO.Field.Text := frm_cad_contador.FDCONTADORBAIRRO.Text
    else
      m_BAIRRO.Text := frm_cad_contador.FDCONTADORBAIRRO.Text;
  //  BAIRRO


  if m_COMPLEMENTO <> nil then
    if m_COMPLEMENTO.Field <> nil then
      m_COMPLEMENTO.Field.Text := frm_cad_contador.FDCONTADORCOMPLEMENTO.Text
    else
      m_COMPLEMENTO.Text := frm_cad_contador.FDCONTADORCOMPLEMENTO.Text;
  // COMPLEMENTO

  if m_CEP <> nil then
    if m_CEP.Field <> nil then
      m_CEP.Field.Text := frm_cad_contador.FDCONTADORCEP.Text
    else
      m_CEP.Text := frm_cad_contador.FDCONTADORCEP.Text;
  // CEP

  if m_MUNICIPIO <> nil then
    if m_MUNICIPIO.Field <> nil then
      m_MUNICIPIO.Field.Text := frm_cad_contador.FDCONTADORMUNICIPIO.Text
    else
      m_MUNICIPIO.Text := frm_cad_contador.FDCONTADORMUNICIPIO.Text;
  // MUNICIPIO


  if m_CODIGO_MUNICIPIO <> nil then
    if m_CODIGO_MUNICIPIO.Field <> nil then
      m_CODIGO_MUNICIPIO.Field.Text := frm_cad_contador.FDCONTADORCODIGO_MUNICIPIO.Text
    else
      m_CODIGO_MUNICIPIO.Text := frm_cad_contador.FDCONTADORCODIGO_MUNICIPIO.Text;
  // COD. MUNICIPO



  if m_ZONA <> nil then
    if m_ZONA.Field <> nil then
      m_ZONA.Field.Text := frm_cad_contador.FDCONTADORZONA.Text
    else
      m_ZONA.Text := frm_cad_contador.FDCONTADORZONA.Text;
  // ZONA



  if m_REGIAO <> nil then
    if m_REGIAO.Field <> nil then
      m_REGIAO.Field.Text := frm_cad_contador.FDCONTADORREGIAO.Text
    else
      m_REGIAO.Text := frm_cad_contador.FDCONTADORREGIAO.Text;
  // REGIAO


  if m_UF <> nil then
    if m_UF.Field <> nil then
      m_UF.Field.Text := frm_cad_contador.FDCONTADORUF.Text
    else
      m_UF.Text := frm_cad_contador.FDCONTADORUF.Text;
  // UF



  if m_CODIGO_UF <> nil then
    if m_CODIGO_UF.Field <> nil then
      m_CODIGO_UF.Field.Text := frm_cad_contador.FDCONTADORCODIGO_UF.Text
    else
      m_CODIGO_UF.Text := frm_cad_contador.FDCONTADORCODIGO_UF.Text;
  // COD. UF



  if m_PAIS <> nil then
    if m_PAIS.Field <> nil then
      m_PAIS.Field.Text := frm_cad_contador.FDCONTADORPAIS.Text
    else
      m_PAIS.Text := frm_cad_contador.FDCONTADORPAIS.Text;
  // PAIS



  if m_cod_pais <> nil then
    if m_cod_pais.Field <> nil then
      m_cod_pais.Field.Text := frm_cad_contador.FDCONTADORCODIGO_PAIS.Text
    else
      m_cod_pais.Text := frm_cad_contador.FDCONTADORCODIGO_PAIS.Text;
  // COD. PAIS




  close;
end;

procedure Tfrm_cad_contador.CarregarDados;
begin

if FDCONTADORCODIGO.Text <> '' then
  begin
  BtnFisica.Enabled := false;
  BtnJuridica.Enabled := true;
  if FDCONTADORTIPO_CONTADOR.Value = 'FISICA' then
  begin
    medt1.Visible  := true;
    dbRG.Visible  := true;

    dbINSCRICAO.Visible  := false;
    CNPJ.Visible  := false;

    BtnFisica.Enabled := true;
    BtnJuridica.Enabled := false;

    TIPO_CONTADOR := 'FISICA';
//    MaskEdit1.EditMask := '';
//    MaskEdit1.Text := removercaracteresespeciais(FDCONSULTORCPF.AsString);
  //  cnpjcpf(MaskEdit1);
  end
  else if FDCONTADORTIPO_CONTADOR.Value = 'JURIDICA' then
  begin
    medt1.Visible  := false;
    dbRG.Visible  := false;

    dbINSCRICAO.Visible  := true;
    CNPJ.Visible  := true;

    BtnFisica.Enabled := true;
    BtnJuridica.Enabled := false;

    TIPO_CONTADOR := 'JURIDICA';

 //  medt1.Text := removercaracteresespeciais(FDCONSULTORCNPJ.AsString);
    cnpjcpf(medt1);
  end
  else
  begin
    medt1.Visible  := true;
    dbRG.Visible  := true;

    dbINSCRICAO.Visible  := false;
    CNPJ.Visible  := false;

    BtnFisica.Enabled := true;
    BtnJuridica.Enabled := false;

 //   MaskEdit1.Text := '';
//    medt1.Text := '';
    TIPO_CONTADOR := 'FISICA';
  end;
  if FDCONTADORSTATUS_CADASTRAL.Value = 'ATIVO' then
  begin
//    chk_ativo_cadastro.Checked := true;
  end
  else if FDCONTADORSTATUS_CADASTRAL.Value = 'INATIVO' then
  begin
//    chk_ativo_cadastro.Checked := false;

  begin
    dbINSCRICAO.Visible := true;
    lbIN.Caption := 'IE:';
  end;
end;
  end;
end;




procedure Tfrm_cad_contador.PadronizarLayout;
begin
  lbIN.Caption := 'RG:';
  dbINSCRICAO.Visible := false;
  TIPO_CONTADOR := '';
  BtnFisica.Enabled := false;
  BtnJuridica.Enabled := false;
  cxButton1.Enabled := False;
  CarregarDadosInternos;
end;

end.
