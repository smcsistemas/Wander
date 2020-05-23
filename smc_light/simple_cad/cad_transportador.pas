unit cad_transportador;

interface

uses
//  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
//  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, cxGraphics, cxControls, cxLookAndFeels,
//  cxLookAndFeelPainters, dxSkinsCore, dxSkinOffice2013White, dxSkinscxPCPainter,
//  dxBarBuiltInMenu, cxContainer, cxEdit, Data.DB, Vcl.Menus, Vcl.ComCtrls,
//  dxCore, cxDateUtils, cxMaskEdit, cxDropDownEdit, cxCalendar, Vcl.StdCtrls,
//  cxButtons, cxTextEdit, cxDBEdit, Vcl.Grids, Vcl.DBGrids, cxCheckBox,
//  cxGroupBox, cxPC, dxSkinOffice2007Silver, dxSkinOffice2013LightGray,
//  dxSkinBlack, dxSkinBlue, dxSkinBlueprint, dxSkinCaramel, dxSkinCoffee,
//  dxSkinDarkRoom, dxSkinDarkSide, dxSkinDevExpressDarkStyle,
//  dxSkinDevExpressStyle, dxSkinFoggy, dxSkinGlassOceans, dxSkinHighContrast,
//  dxSkiniMaginary, dxSkinLilian, dxSkinLiquidSky, dxSkinLondonLiquidSky,
//  dxSkinMcSkin, dxSkinMetropolis, dxSkinMetropolisDark, dxSkinMoneyTwins,
//  dxSkinOffice2007Black, dxSkinOffice2007Blue, dxSkinOffice2007Green,
//  dxSkinOffice2007Pink, dxSkinOffice2010Black, dxSkinOffice2010Blue,
//  dxSkinOffice2010Silver, dxSkinOffice2013DarkGray, dxSkinOffice2016Colorful,
//  dxSkinOffice2016Dark, dxSkinPumpkin, dxSkinSeven, dxSkinSevenClassic,
//  dxSkinSharp, dxSkinSharpPlus, dxSkinSilver, dxSkinSpringTime, dxSkinStardust,
//  dxSkinSummer2008, dxSkinTheAsphaltWorld, dxSkinsDefaultPainters,
//  dxSkinValentine, dxSkinVisualStudio2013Blue, dxSkinVisualStudio2013Dark,
//  dxSkinVisualStudio2013Light, dxSkinVS2010, dxSkinWhiteprint,
//  dxSkinXmas2008Blue, cxStyles, cxCustomData, cxFilter, cxData, cxDataStorage,
//  cxNavigator, cxDBData, cxGridLevel, cxGridCustomTableView, cxGridTableView,
//  cxGridDBTableView, cxClasses, cxGridCustomView, cxGrid, cxLabel, Vcl.Mask,
//  Vcl.DBCtrls, FireDAC.Stan.Intf, FireDAC.Stan.Option, FireDAC.Stan.Param,
//  FireDAC.Stan.Error, FireDAC.DatS, FireDAC.Phys.Intf, FireDAC.DApt.Intf,
//  FireDAC.Stan.Async, FireDAC.DApt, FireDAC.Comp.DataSet, FireDAC.Comp.Client;
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
  Tfrm_cad_transportadora = class(TForm)
    cxPageControl1: TcxPageControl;
    tsConsulta: TcxTabSheet;
    Label4: TLabel;
    tsCadastro: TcxTabSheet;
    edt_consulta: TEdit;
    gdTransportador: TcxGrid;
    gdTransportadorTbVw: TcxGridDBTableView;
    clRazao: TcxGridDBColumn;
    clCNPJ_CPF: TcxGridDBColumn;
    clCelular: TcxGridDBColumn;
    clTelefone: TcxGridDBColumn;
    clMunicipio: TcxGridDBColumn;
    gdTransportadorLv: TcxGridLevel;
    clCodigo: TcxGridDBColumn;
    clRNTC: TcxGridDBColumn;
    BtnGravar: TcxButton;
    BtnCancelar: TcxButton;
    BtnIncluir: TcxButton;
    BtnAlterar: TcxButton;
    gpEndereco: TGroupBox;
    Label22: TLabel;
    Label25: TLabel;
    Label26: TLabel;
    btnMunicip: TcxButton;
    cbREGIAO: TcxComboBox;
    cxButton19: TcxButton;
    cxButton20: TcxButton;
    RUA: TDBEdit;
    NUMERO: TDBEdit;
    BAIRRO: TDBEdit;
    COMPLEMENTO: TDBEdit;
    CEP: TDBEdit;
    ZONA: TDBEdit;
    MUNICIPIO: TDBEdit;
    CODIGO_MUNICIPIO: TDBEdit;
    UF: TDBEdit;
    CODIGO_PAIS: TDBEdit;
    PAIS: TDBEdit;
    gpContatos: TGroupBox;
    TELEFONE: TDBEdit;
    CELULAR1: TDBEdit;
    EMAIL1: TDBEdit;
    CELULAR2: TDBEdit;
    EMAIL2: TDBEdit;
    gpEmpresa: TGroupBox;
    Label7: TLabel;
    Label8: TLabel;
    Label9: TLabel;
    Label10: TLabel;
    Label11: TLabel;
    Label12: TLabel;
    DBCk_Inativo: TDBCheckBox;
    RAZAO_SOCIAL: TDBEdit;
    NOME_FANTASIA: TDBEdit;
    RNTC: TDBEdit;
    IE: TDBEdit;
    CNPJ_CPF: TDBEdit;
    DSTRANSPORTE: TDataSource;
    FDTRANSPORTE: TFDQuery;
    FDTRANSPORTERAZAO_SOCIAL: TStringField;
    FDTRANSPORTENOME_FANTASIA: TStringField;
    FDTRANSPORTERNTC: TStringField;
    FDTRANSPORTEIE: TStringField;
    FDTRANSPORTERUA: TStringField;
    FDTRANSPORTENUMERO: TStringField;
    FDTRANSPORTEBAIRRO: TStringField;
    FDTRANSPORTECOMPLEMENTO: TStringField;
    FDTRANSPORTECEP: TStringField;
    FDTRANSPORTECODIGO_MUNICIPIO: TStringField;
    FDTRANSPORTEMUNICIPIO: TStringField;
    FDTRANSPORTEZONA: TStringField;
    FDTRANSPORTEREGIAO: TStringField;
    FDTRANSPORTECODIGO_UF: TStringField;
    FDTRANSPORTEUF: TStringField;
    FDTRANSPORTECODIGO_PAIS: TStringField;
    FDTRANSPORTEPAIS: TStringField;
    FDTRANSPORTETELEFONE: TStringField;
    FDTRANSPORTECELULAR1: TStringField;
    FDTRANSPORTECELULAR2: TStringField;
    FDTRANSPORTEEMAIL1: TStringField;
    FDTRANSPORTEEMAIL2: TStringField;
    CODIGO_UF: TDBEdit;
    FDTRANSPORTESTATUS_CADASTRAL: TStringField;
    FDTRANSPORTECNPJ_CPF: TStringField;
    SQL_INCREMENT: TFDQuery;
    SQL_INCREMENTauto_increment: TLargeintField;
    cxGroupBox1: TcxGroupBox;
    cb_filtro: TcxComboBox;
    FDTRANSPORTECODIGO: TFDAutoIncField;
    codigo: TcxDBTextEdit;
    btn_ConsultaCNPJ: TcxButton;
    SQL_LISTA: TFDQuery;
    FDAutoIncField1: TFDAutoIncField;
    StringField1: TStringField;
    StringField2: TStringField;
    StringField3: TStringField;
    StringField4: TStringField;
    StringField5: TStringField;
    StringField6: TStringField;
    StringField7: TStringField;
    StringField8: TStringField;
    StringField9: TStringField;
    StringField10: TStringField;
    StringField11: TStringField;
    StringField12: TStringField;
    StringField13: TStringField;
    StringField14: TStringField;
    StringField15: TStringField;
    StringField16: TStringField;
    StringField17: TStringField;
    StringField18: TStringField;
    StringField19: TStringField;
    StringField20: TStringField;
    StringField21: TStringField;
    StringField22: TStringField;
    StringField23: TStringField;
    StringField24: TStringField;
    DT_LISTA: TDataSource;
    DBGrid1: TDBGrid;
    SQL_LISTAID: TFDAutoIncField;
    SQL_LISTACPF: TStringField;
    SQL_LISTACNPJ: TStringField;
    SQL_LISTAContribuinte_do_ICMS: TStringField;
    cbSTATUS_CADASTRAL: TCheckBox;
    FDTRANSPORTEID: TFDAutoIncField;
    FDTRANSPORTECPF: TStringField;
    FDTRANSPORTECNPJ: TStringField;
    FDTRANSPORTEContribuinte_do_ICMS: TStringField;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure BtnIncluirClick(Sender: TObject);
    procedure BtnCancelarClick(Sender: TObject);
    procedure CarregarUltimoCadastro;
    procedure CarregarDadosInternos;
    procedure BtnGravarClick(Sender: TObject);
    procedure BtnAlterarClick(Sender: TObject);
    procedure cxButton20Click(Sender: TObject);
    procedure btnMunicipClick(Sender: TObject);
    procedure cxButton19Click(Sender: TObject);
    procedure CEPExit(Sender: TObject);
    procedure CEPKeyPress(Sender: TObject; var Key: Char);
    procedure TELEFONEExit(Sender: TObject);
    procedure TELEFONEKeyPress(Sender: TObject; var Key: Char);
    procedure CELULAR1Exit(Sender: TObject);
    procedure CELULAR1KeyPress(Sender: TObject; var Key: Char);
    procedure CELULAR2Change(Sender: TObject);
    procedure CELULAR2KeyPress(Sender: TObject; var Key: Char);
    procedure RNTCKeyPress(Sender: TObject; var Key: Char);
    procedure CNPJ_CPFKeyPress(Sender: TObject; var Key: Char);
    procedure NUMEROKeyPress(Sender: TObject; var Key: Char);
    procedure consultar_transportador(check_edit: Boolean = true);
    procedure edt_consultaKeyUp(Sender: TObject; var Key: Word; Shift: TShiftState);
    procedure gdTransportadorTbVwDblClick(Sender: TObject);
    procedure CNPJ_CPFExit(Sender: TObject);
    procedure RAZAO_SOCIALKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure NOME_FANTASIAKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure RNTCKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
    procedure IEKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
    procedure CNPJ_CPFKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure NUMEROKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
    procedure BAIRROKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
    procedure COMPLEMENTOKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure ZONAKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
    procedure TELEFONEKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure CELULAR1KeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure CELULAR2KeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure EMAIL1KeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
    procedure btn_ConsultaCNPJClick(Sender: TObject);
    procedure tsConsultaShow(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure DBGrid1CellClick(Column: TColumn);
    private
    { Private declarations }
    procedure Preencher_Tela_Com_Dados_da_Consulta_CNPJ;
    procedure PreencherDadosTransportadora();
     procedure InformarDadosTransportadora(RAZAO_SOCIAL: TDBEdit);
  public
    { Public declarations }
  end;

var
  frm_cad_transportadora: Tfrm_cad_transportadora;
   m_cod, m_razao_social :TdbEdit;

implementation

{$R *.dfm}

uses U_Municipio, jpeg, u_funcoes, math, cad_endereco, cad_zona,
     u_funformatartexto, ConsultaCNPJ, cad_veiculos_transportadora;

procedure Tfrm_cad_transportadora.CarregarUltimoCadastro;
begin
  SQL_INCREMENT.Close;
  SQL_INCREMENT.Open;
  with FDTRANSPORTE do
  begin
    Close;
     ParamByName('pcodigo').Value := inttostr(SQL_INCREMENTauto_increment.Value - 1);
    Open;
  end;
end;

procedure Tfrm_cad_transportadora.CELULAR1Exit(Sender: TObject);
begin
   CELULAR1.Text:= formacelular(CELULAR1.Text);
end;

procedure Tfrm_cad_transportadora.CELULAR1KeyDown(Sender: TObject;
  var Key: Word; Shift: TShiftState);
begin
if (Key = vk_Return) or (Key = vk_tab) then
  begin
    CELULAR2.SetFocus;
  end;
end;

procedure Tfrm_cad_transportadora.CELULAR1KeyPress(Sender: TObject;
  var Key: Char);
begin
  inherited;
  Key := u_funcoes.ApenasNumeros(Key);
end;

procedure Tfrm_cad_transportadora.CELULAR2Change(Sender: TObject);
begin
   CELULAR2.Text:= formacelular(CELULAR2.Text);
end;

procedure Tfrm_cad_transportadora.CELULAR2KeyDown(Sender: TObject;
  var Key: Word; Shift: TShiftState);
begin
if (Key = vk_Return) or (Key = vk_tab) then
  begin
    EMAIL1.SetFocus;
  end;
end;

procedure Tfrm_cad_transportadora.CELULAR2KeyPress(Sender: TObject;
  var Key: Char);
begin
inherited;
  Key := u_funcoes.ApenasNumeros(Key);
end;

procedure Tfrm_cad_transportadora.CEPExit(Sender: TObject);
var
  UF1, BAIRRO1, MUNICIPIO1: STRING;
  qry: TFDQuery;
begin
  if RemoverEspacoEmBranco(removercaracteresespeciais(CEP.Text)) <> emptystr then
  begin
    ConsultarCep1(RemoverEspacoEmBranco(removercaracteresespeciais(CEP.Text)), UF1, MUNICIPIO1, {RUA1,} BAIRRO1);
    UF.Text := UF1;
    MUNICIPIO.Text := MUNICIPIO1;
   { RUA.Text := RUA1; }
    BAIRRO.Text := BAIRRO1;

    UF.field.Text := UF1;
    MUNICIPIO.field.Text := MUNICIPIO1;
    {RUA.field.Text := RUA1; }
    BAIRRO.field.Text := BAIRRO1;

    qry := simplequery('SELECT IBGE, ESTADO FROM ENDERECO_MUNICIPIO WHERE NOME = ?', [MUNICIPIO1]);
    if qry <> nil then
    begin
      CODIGO_MUNICIPIO.Text := qry.fieldbyname('IBGE').AsString;
      CODIGO_MUNICIPIO.field.Text := qry.fieldbyname('IBGE').AsString;
      CODIGO_UF.Text := simplequery('SELECT IBGE FROM ENDERECO_ESTADO WHERE IBGE = ?', [qry.fieldbyname('ESTADO').AsString]).Fields[0].AsString;
      CODIGO_PAIS.field.Text := CODIGO_PAIS.Text;
      CODIGO_PAIS.Text := simplequery('SELECT PAIS FROM ENDERECO_ESTADO WHERE IBGE = ?', [qry.fieldbyname('ESTADO').AsString])
        .Fields[0].AsString;
      CODIGO_PAIS.field.Text := CODIGO_PAIS.Text;
      PAIS.Text := simplequery('SELECT NOME FROM ENDERECO_PAIS WHERE CODIGO = ?', [CODIGO_PAIS.Text]).Fields[0].AsString;
      PAIS.field.Text := PAIS.Text;
      CEP.Text:= formaCEP(CEP.Text);
    end;
  end
  else
    wnAlerta('Consultar CEP', sLineBreak + 'Informe um cep!');

end;


procedure Tfrm_cad_transportadora.CEPKeyPress(Sender: TObject; var Key: Char);
begin
inherited;
  Key := u_funcoes.ApenasNumeros(Key);
end;

procedure Tfrm_cad_transportadora.CNPJ_CPFExit(Sender: TObject);
begin
     CNPJCPF(CNPJ_CPF);
end;

procedure Tfrm_cad_transportadora.CNPJ_CPFKeyDown(Sender: TObject;
  var Key: Word; Shift: TShiftState);
begin
if (Key = vk_Return) or (Key = vk_tab) then
  begin
    RUA.SetFocus;
  end;
end;

procedure Tfrm_cad_transportadora.CNPJ_CPFKeyPress(Sender: TObject;
  var Key: Char);
begin
inherited;
  Key := u_funcoes.ApenasNumeros(Key);
end;

procedure Tfrm_cad_transportadora.COMPLEMENTOKeyDown(Sender: TObject;
  var Key: Word; Shift: TShiftState);
begin
 if (Key = vk_Return) or (Key = vk_tab) then
  begin
    CEP.SetFocus;
  end;
end;

procedure Tfrm_cad_transportadora.cxButton19Click(Sender: TObject);
begin
  FRM_cad_zona := TFRM_cad_zona.CREATE(Application);
  FRM_cad_zona.ShowModal;
  ZONA.Text := FRM_cad_zona.SQL_LISTADESCRICAO.value;
  CBREGIAO.SetFocus;
end;

procedure Tfrm_cad_transportadora.cxButton20Click(Sender: TObject);
begin
  FRM_cad_endereco := TFRM_cad_endereco.CREATE(Application);
  FRM_cad_endereco.ShowModal;
  RUA.Text := FRM_cad_endereco.SQL_LISTADESCRICAO.value;
  NUMERO.SetFocus;
end;

procedure Tfrm_cad_transportadora.DBGrid1CellClick(Column: TColumn);
begin
   PreencherDadosTransportadora();
end;

procedure Tfrm_cad_transportadora.PreencherDadosTransportadora();
begin

  // CODIGO

  if m_razao_social <> nil then
    if m_razao_social.Field <> nil then
      m_razao_social.Field.Text := frm_cad_transportadora.FDTRANSPORTERAZAO_SOCIAL.Text
    else
      m_razao_social.Text := frm_cad_transportadora.FDTRANSPORTERAZAO_SOCIAL.Text;


// RAZAO SOCIAL

  if m_cod <> nil then
    if m_cod.Field <> nil then
      m_cod.Field.Text := frm_cad_transportadora.FDTRANSPORTECODIGO.Text
    else
      m_cod.Text := frm_cad_transportadora.FDTRANSPORTECODIGO.Text;

Close;
end;

procedure Tfrm_cad_transportadora.InformarDadosTransportadora(RAZAO_SOCIAL : TDBEdit);
begin

  // RAZAO SOCIAL TRANSPORTADOR
if RAZAO_SOCIAL <> nil then
    m_RAZAO_SOCIAL := RAZAO_SOCIAL;

//  // CODIGO TRANSPORTADOR
//if CODIGO <> nil then
//    m_cod  := DBEdit1;

end;


procedure Tfrm_cad_transportadora.consultar_transportador(check_edit: Boolean = true);
const
  qry_base = 'select * from transportadora';
var
   condicao: string;
begin
  FDTRANSPORTE.Close;
  cb_filtro.ValidateEdit(False);
  if check_edit then
  begin
    if edt_consulta.Text <> emptystr then
    begin
      case cb_filtro.SelectedItem of
        0:
          condicao := ' where  CODIGO like "' + edt_consulta.Text + '%"';
        1:
          condicao := ' where  razao_social like "' + edt_consulta.Text + '%"';
        2:
          condicao := ' where  cnpj_cpf like "' + edt_consulta.Text + '%"';
        3:
          condicao := ' where  MUNICIPIO like "' + edt_consulta.Text + '%")';
      end;
    end;
  FDTRANSPORTE.Open(qry_base + condicao);
end;
end;
procedure Tfrm_cad_transportadora.edt_consultaKeyUp(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
   consultar_transportador;
end;

procedure Tfrm_cad_transportadora.EMAIL1KeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
if (Key = vk_Return) or (Key = vk_tab) then
  begin
    EMAIL2.SetFocus;
  end;
end;

procedure Tfrm_cad_transportadora.CarregarDadosInternos;
begin
  DBCk_Inativo.Checked := (FDTRANSPORTESTATUS_CADASTRAL.Value = 'INATIVO');

  u_funcoes.AlterarEnabled([gpEmpresa, gpEndereco, gpContatos], False);

  u_funcoes.IniciarCadastro([BtnIncluir, BtnCancelar, BtnAlterar], False);

end;

procedure Tfrm_cad_transportadora.BAIRROKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
if (Key = vk_Return) or (Key = vk_tab) then
  begin
    COMPLEMENTO.SetFocus;
  end;
end;

procedure Tfrm_cad_transportadora.BtnAlterarClick(Sender: TObject);
begin
if RAZAO_SOCIAL.Text = '' then
  begin
    wnAlerta('Alterar', 'Nenhum colaborador foi selecionado.');
  end
  else
  begin
    tsCadastro.show;
    FDTRANSPORTE.Edit;
    CNPJ_CPF.field.Text := Format_CPF_CNPJ(FDTRANSPORTECNPJ_CPF.AsString);
    u_funcoes.IniciarCadastro([BtnIncluir, BtnCancelar, BtnAlterar], true);
    u_funcoes.AlterarEnabled([gpEmpresa, gpEndereco, gpContatos], true);
    RAZAO_SOCIAL.SelectAll;
    RAZAO_SOCIAL.SetFocus;
  end;
end;

procedure Tfrm_cad_transportadora.BtnCancelarClick(Sender: TObject);
begin
  FDTRANSPORTE.Cancel;
  FDTRANSPORTE.Close;
  CarregarUltimoCadastro;
  CarregarDadosInternos;
end;

procedure Tfrm_cad_transportadora.BtnGravarClick(Sender: TObject);
var
  qry: TFDQuery;
begin
  if BtnIncluir.Visible = False then
  begin
   try
        qry := simplequery('SELECT CODIGO, RAZAO_SOCIAL FROM TRANSPORTADORA WHERE CNPJ_CPF="' + REMOVERCARACTERESESPECIAIS(CNPJ_CPF.Text) + '" and CODIGO <> "' + CODIGO.Text + '"');
        if qry <> nil then
        begin
          wnAlerta('Cadastrar Transportadora', slinebreak + 'CNPJ ou CPF já está cadastrado "' + qry.Fields[0].AsString + ' - ' + qry.Fields[1].AsString + '"!');
          CNPJ_CPF.SelectAll;
          CNPJ_CPF.SetFocus;
        end
    else
  begin
         begin
          if DBCk_Inativo.Checked = true then
              FDTRANSPORTESTATUS_CADASTRAL.Value := 'INATIVO'
           else
              FDTRANSPORTESTATUS_CADASTRAL.Value := 'ATIVO';
            end;
              FDTRANSPORTE.Post;
              FDTRANSPORTE.Active := False;
              MessageDLG('Operação concluída com sucesso', mtInformation, [mbOk], 0);
              CarregarUltimoCadastro;
              CarregarDadosInternos;
            end;

   except
      on e: exception do
        wnerro('Cadastrar Transportadora', e.Message + slinebreak + 'Erro ao cadastrar Transportadora!');
    end;
  end;
end;

procedure Tfrm_cad_transportadora.BtnIncluirClick(Sender: TObject);
begin
if BtnIncluir.Visible = true then
  begin
    u_funcoes.AlterarEnabled([gpEmpresa, gpEndereco, gpContatos], true);
    u_funcoes.IniciarCadastro([BtnIncluir, BtnCancelar, BtnAlterar], true);
    CarregarUltimoCadastro;
    FDTRANSPORTE.active := true;
    FDTRANSPORTE.Insert;
    tsCadastro.show;
    DBCk_Inativo.Checked := false;
  if SQL_INCREMENTauto_increment.Value = 0 then
      codigo.Text := '1'
    else
      codigo.Text := inttostr(SQL_INCREMENTauto_increment.Value);
    RAZAO_SOCIAL.SetFocus;
  end;
end;

procedure Tfrm_cad_transportadora.btnMunicipClick(Sender: TObject);
begin
Frm_Municipio := TFrm_Municipio.Create(Application);
  Frm_Municipio.InformarDadosMunicipio1(MUNICIPIO, CODIGO_MUNICIPIO, UF, CODIGO_UF, PAIS, CODIGO_PAIS);
  Frm_Municipio.ShowModal;
  Frm_Municipio.Free;
  TELEFONE.SetFocus;
end;

procedure Tfrm_cad_transportadora.btn_ConsultaCNPJClick(Sender: TObject);
begin
  frmConsultaCNPJ := TfrmConsultaCNPJ.CREATE(Application);
  frmConsultaCNPJ.EditCNPJ.Text := CNPJ_CPF.Text;
  frmConsultaCNPJ.ShowModal;

  Preencher_Tela_Com_Dados_da_Consulta_CNPJ;

  frmConsultaCNPJ.Free;
end;

procedure Tfrm_cad_transportadora.Preencher_Tela_Com_Dados_da_Consulta_CNPJ;
begin
   // Preenche a tela com dados vindos da Consulta do CNPJ
    CNPJ_CPF.Text                      := frmConsultaCNPJ.EditCNPJ.Text;
    FDTRANSPORTERAZAO_SOCIAL.Value     := SemAsteriscos(frmConsultaCNPJ.EditRazaoSocial.Text);
    FDTRANSPORTERUA.Value              := SemAsteriscos(frmConsultaCNPJ.EditEndereco.Text);
    FDTRANSPORTENUMERO.Value           := SemAsteriscos(frmConsultaCNPJ.EditNumero.Text);
    FDTRANSPORTEBAIRRO.Value           := SemAsteriscos(frmConsultaCNPJ.EditBairro.Text);
    FDTRANSPORTECOMPLEMENTO.Value      := SemAsteriscos(frmConsultaCNPJ.EditComplemento.Text);
    FDTRANSPORTECEP.Value              := SemAsteriscos(frmConsultaCNPJ.EditCEP.Text);
    FDTRANSPORTECODIGO_MUNICIPIO.Value := CodigoMunicipio(frmConsultaCNPJ.EditCidade.Text,frmConsultaCNPJ.EditUF.Text);
    FDTRANSPORTEMUNICIPIO.Value        := SemAsteriscos(frmConsultaCNPJ.EditCidade.Text);
    FDTRANSPORTECODIGO_UF.Value        := CodigoUF(frmConsultaCNPJ.EditUF.Text);
    FDTRANSPORTEUF.Value               := SemAsteriscos(frmConsultaCNPJ.EditUF.Text);
    FDTRANSPORTECODIGO_PAIS.Value      := '1058';
    FDTRANSPORTEPAIS.Value             := 'BRASIL';
    FDTRANSPORTECNPJ_CPF.Value         := frmConsultaCNPJ.EditCNPJ.Text;
end;

procedure Tfrm_cad_transportadora.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  Action := cafree;
  self := nil;
end;

procedure Tfrm_cad_transportadora.FormShow(Sender: TObject);
begin
  CarregarUltimoCadastro;
  CarregarDadosInternos;
end;

procedure Tfrm_cad_transportadora.gdTransportadorTbVwDblClick(Sender: TObject);
begin
   tsCadastro.Show;
   BtnIncluir.Visible := false;
end;

procedure Tfrm_cad_transportadora.IEKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
if (Key = vk_Return) or (Key = vk_tab) then
  begin
    CNPJ_CPF.SetFocus;
  end;
end;

procedure Tfrm_cad_transportadora.NOME_FANTASIAKeyDown(Sender: TObject;
  var Key: Word; Shift: TShiftState);
begin
if (Key = vk_Return) or (Key = vk_tab) then
  begin
    RNTC.SetFocus;
  end;
end;

procedure Tfrm_cad_transportadora.NUMEROKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
if (Key = vk_Return) or (Key = vk_tab) then
  begin
    BAIRRO.SetFocus;
  end;
end;

procedure Tfrm_cad_transportadora.NUMEROKeyPress(Sender: TObject;
  var Key: Char);
begin
inherited;
  Key := u_funcoes.ApenasNumeros(Key);
end;

procedure Tfrm_cad_transportadora.RAZAO_SOCIALKeyDown(Sender: TObject;
  var Key: Word; Shift: TShiftState);
begin
if (Key = vk_Return) or (Key = vk_tab) then
  begin
    NOME_FANTASIA.SetFocus;
  end;
end;

procedure Tfrm_cad_transportadora.RNTCKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
if (Key = vk_Return) or (Key = vk_tab) then
  begin
     IE.SetFocus;
  end;
end;

procedure Tfrm_cad_transportadora.RNTCKeyPress(Sender: TObject; var Key: Char);
begin
inherited;
  Key := u_funcoes.ApenasNumeros(Key);
end;

procedure Tfrm_cad_transportadora.TELEFONEExit(Sender: TObject);
begin
  TELEFONE.Text:= formatelefone(TELEFONE.Text);
end;

procedure Tfrm_cad_transportadora.TELEFONEKeyDown(Sender: TObject;
  var Key: Word; Shift: TShiftState);
begin
if (Key = vk_Return) or (Key = vk_tab) then
  begin
    CELULAR1.SetFocus;
  end;
end;

procedure Tfrm_cad_transportadora.TELEFONEKeyPress(Sender: TObject;
  var Key: Char);
begin
inherited;
  Key := u_funcoes.ApenasNumeros(Key);
end;

procedure Tfrm_cad_transportadora.tsConsultaShow(Sender: TObject);
begin
  sql_LISTA.Active := False;
  sql_LISTA.Active := true;
  FDTRANSPORTE.Active := true;
  edt_consulta.SetFocus;
end;

procedure Tfrm_cad_transportadora.ZONAKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
if (Key = vk_Return) or (Key = vk_tab) then
  begin
    TELEFONE.SetFocus;
  end;
end;

end.
