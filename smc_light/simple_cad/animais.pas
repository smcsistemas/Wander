unit animais;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, cxGraphics, cxLookAndFeels,
  cxLookAndFeelPainters, Vcl.Menus, dxSkinsCore, dxSkinOffice2013White,
  cxControls, cxContainer, cxEdit, Data.DB, Vcl.ComCtrls, dxCore, cxDateUtils,
  cxStyles, dxSkinscxPCPainter, cxCustomData, cxFilter, cxData, cxDataStorage,
  cxNavigator, cxDBData, cxDropDownEdit, cxGridCustomTableView, cxGridTableView,
  cxGridBandedTableView, cxGridDBBandedTableView, cxGridLevel, cxClasses,
  cxGridCustomView, cxGrid, cxTextEdit, cxMaskEdit, cxCalendar, Vcl.StdCtrls,
  cxRadioGroup, Vcl.Grids, Vcl.DBGrids, cxGroupBox, cxButtons, cxGridDBTableView,
  FireDAC.Stan.Intf, FireDAC.Stan.Option, FireDAC.Stan.Param,
  FireDAC.Stan.Error, FireDAC.DatS, FireDAC.Phys.Intf, FireDAC.DApt.Intf,
  FireDAC.Stan.Async, FireDAC.DApt, FireDAC.Comp.DataSet, Vcl.Mask, Vcl.DBCtrls,
  FireDAC.Comp.Client, cxDBEdit, Vcl.ExtCtrls;

type
  Tfrm_cad_animais = class(TForm)
    Label10: TLabel;
    Label11: TLabel;
    Label12: TLabel;
    btn_marca: TcxButton;
    cxButton3: TcxButton;
    cxButton5: TcxButton;
    cxButton6: TcxButton;
    Label4: TLabel;
    Label15: TLabel;
    Label1: TLabel;
    Label7: TLabel;
    gpCadastro: TcxGroupBox;
    cast_sim: TcxRadioButton;
    cast_nao: TcxRadioButton;
    Label3: TLabel;
    Label8: TLabel;
    Label6: TLabel;
    gpFalecido: TcxGroupBox;
    faleci_nao: TcxRadioButton;
    faleci_sim: TcxRadioButton;
    gpDoacao: TcxGroupBox;
    doa_nao: TcxRadioButton;
    doa_sim: TcxRadioButton;
    Label2: TLabel;
    Label5: TLabel;
    Label14: TLabel;
    cbFiltro: TcxComboBox;
    Label13: TLabel;
    gdConveniados: TcxGrid;
    gdConveniadosTbVw: TcxGridDBTableView;
    clid: TcxGridDBColumn;
    gdConveniadosLv: TcxGridLevel;
    gdConveniadosTbVwColumn1: TcxGridDBColumn;
    gdConveniadosTbVwColumn2: TcxGridDBColumn;
    gdConveniadosTbVwColumn3: TcxGridDBColumn;
    gdConveniadosTbVwColumn4: TcxGridDBColumn;
    gdConveniadosTbVwColumn5: TcxGridDBColumn;
    gdConveniadosTbVwColumn6: TcxGridDBColumn;
    gdConveniadosTbVwColumn7: TcxGridDBColumn;
    gdConveniadosTbVwColumn8: TcxGridDBColumn;
    gdConveniadosTbVwColumn9: TcxGridDBColumn;
    gdConveniadosTbVwColumn10: TcxGridDBColumn;
    gdConveniadosTbVwColumn11: TcxGridDBColumn;
    gdConveniadosTbVwColumn12: TcxGridDBColumn;
    gdConveniadosTbVwColumn13: TcxGridDBColumn;
    gdConveniadosTbVwColumn14: TcxGridDBColumn;
    DS_ANIMAIS: TDataSource;
    SQL_ANIMAIS: TFDQuery;
    SQL_INCREMENT: TFDQuery;
    SQL_INCREMENTauto_increment: TLargeintField;
    dbNome: TDBEdit;
    dbCor: TDBEdit;
    dbPelagem: TDBEdit;
    dbNchip: TDBEdit;
    SQL_ANIMAISCODIGO: TFDAutoIncField;
    SQL_ANIMAISCOD_CLIENTE: TIntegerField;
    SQL_ANIMAISNOME: TStringField;
    SQL_ANIMAISSEXO: TStringField;
    SQL_ANIMAISESPECIE: TStringField;
    SQL_ANIMAISCOR: TStringField;
    SQL_ANIMAISPELAGEM: TStringField;
    SQL_ANIMAISRACA: TStringField;
    SQL_ANIMAISPORTE: TStringField;
    SQL_ANIMAISN_CHIP: TStringField;
    SQL_ANIMAISCASTRADO: TStringField;
    SQL_ANIMAISDOACAO: TStringField;
    SQL_ANIMAISVENDA: TStringField;
    SQL_ANIMAISVENDA_VALOR: TStringField;
    SQL_ANIMAISFALECIDO: TStringField;
    dbRaca: TDBEdit;
    cxDBTextEdit1: TcxDBTextEdit;
    cbSexo: TcxDBComboBox;
    cbEspecie: TcxDBComboBox;
    gpVenda2: TcxGroupBox;
    venda_nao: TcxRadioButton;
    venda_sim: TcxRadioButton;
    edt_consulta: TEdit;
    Shape1: TShape;
    Shape2: TShape;
    Shape3: TShape;
    BtnIncluir: TcxButton;
    BtnCancelar: TcxButton;
    BtnAlterar: TcxButton;
    BtnGravar: TcxButton;
    SQL_ANIMAISSTATUS: TStringField;
    cbPorte: TcxDBComboBox;
    edt_dt_nascimento: TcxDBDateEdit;
    SQL_LISTA: TFDQuery;
    ds_LISTA: TDataSource;
    db_pedigree: TcxGroupBox;
    pedig_nao: TcxRadioButton;
    pedig_sim: TcxRadioButton;
    db_cliente: TDBEdit;
    db_cod_cliente: TcxDBTextEdit;
    Label9: TLabel;
    Label16: TLabel;
    cxButton1: TcxButton;
    DBEdit1: TDBEdit;
    SQL_ANIMAISPEDIGREE: TStringField;
    Label17: TLabel;
    procedure cxButton3Click(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure cxButton7Click(Sender: TObject);
    procedure dbNomeKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure cbDataKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
    procedure cbSexoKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
    procedure cbEspecieKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure dbCorKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
    procedure dbPelagemKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure dbRacaKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
    procedure dbPorteKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure dbNchipKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure BtnIncluirClick(Sender: TObject);
    procedure edt_consultaKeyUp(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure dlConsulta(check_edit: Boolean = true);
    procedure FormShow(Sender: TObject);
    procedure CarregarUltimoCadastro;
    procedure CarregarDadosInternos;
    procedure BtnGravarClick(Sender: TObject);
    procedure dbNchipKeyPress(Sender: TObject; var Key: Char);
    procedure edt_dt_nascimentoKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure BtnAlterarClick(Sender: TObject);
    procedure cxButton1Click(Sender: TObject);
    procedure cxDBMaskEdit1Exit(Sender: TObject);
    procedure BtnCancelarClick(Sender: TObject);
    procedure gdConveniadosTbVwCustomDrawCell(Sender: TcxCustomGridTableView;
      ACanvas: TcxCanvas; AViewInfo: TcxGridTableDataCellViewInfo;
      var ADone: Boolean);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frm_cad_animais: Tfrm_cad_animais;

implementation

uses
  cad_vacina, S_Module, u_funcoes, Informa_Cliente, h_Functions, consulta_clientes;

{$R *.dfm}

procedure Tfrm_cad_animais.BtnAlterarClick(Sender: TObject);
begin
  if dbnome.Text = '' then
  begin
    wnAlerta('Alterar', 'Nenhum fornecedor foi selecionado.');
  end
  else
  begin
    SQL_ANIMAIS.active := true;
    SQL_ANIMAIS.Edit;
u_funcoes.AlterarEnabled([dbNome, edt_dt_nascimento, cbSexo, cbEspecie, dbCor, dbPelagem, dbRaca, cbPorte, db_pedigree, dbNchip,
  gpCadastro, gpDoacao, gpVenda2, gpFalecido, cxButton1], True);

    u_funcoes.IniciarCadastro([BtnIncluir, BtnCancelar, BtnAlterar], True);
    dbNome.SetFocus;
  end;
end;

procedure Tfrm_cad_animais.BtnCancelarClick(Sender: TObject);
begin
  sql_Animais.Cancel;
  sql_Animais.Close;


  u_funcoes.AlterarEnabled([dbNome, edt_dt_nascimento, cbSexo, cbEspecie, dbCor, dbPelagem, dbRaca, cbPorte, db_pedigree, dbNchip,
  gpCadastro, gpDoacao, gpVenda2, gpFalecido, cxButton1], false);

  u_funcoes.IniciarCadastro([BtnIncluir, BtnCancelar, BtnAlterar], false);

  BtnIncluir.SetFocus;
  SQL_LISTA.Active := False;
  SQL_LISTA.Active := True;
end;

procedure Tfrm_cad_animais.BtnGravarClick(Sender: TObject);
begin
  if u_funcoes.CamposObrigatorios([dbNome], ['Descrição'], [], [], [], []) then
  begin
    Exit;
  end
 else
  begin

        if doa_sim.Checked = true then
        SQL_ANIMAISDOACAO.Value := 'SIM'
      else if doa_nao.Checked = true then
        SQL_ANIMAISDOACAO.Value := 'NÃO';


        if cast_sim.Checked = true then
        SQL_ANIMAISCASTRADO.Value := 'SIM'
      else if cast_nao.Checked = true then
        SQL_ANIMAISCASTRADO.Value := 'NÃO';


        if venda_sim.Checked = true then
        SQL_ANIMAISVENDA.Value := 'SIM'
      else if venda_nao.Checked = true then
        SQL_ANIMAISVENDA.Value := 'NÃO';


        if faleci_sim.Checked = true then
        SQL_ANIMAISFALECIDO.Value := 'SIM'
      else if faleci_nao.Checked = true then
        SQL_ANIMAISFALECIDO.Value := 'NÃO';

         if pedig_sim.Checked = true then
        SQL_ANIMAISPEDIGREE.Value := 'SIM'
      else if pedig_nao.Checked = true then
        SQL_ANIMAISPEDIGREE.Value := 'NÃO';



    SQL_ANIMAIS.Post;
    SQL_ANIMAIS.Active := False;
   // MessageDLG('ATENÇÃO: Operação concluída com sucesso', mtInformation, [mbOk], 0);

  u_funcoes.AlterarEnabled([dbNome, edt_dt_nascimento, cbSexo, cbEspecie, dbCor, dbPelagem, dbRaca, cbPorte, db_pedigree, dbNchip,
  gpCadastro, gpDoacao, gpVenda2, gpFalecido, cxButton1], False);

  u_funcoes.IniciarCadastro([BtnIncluir, BtnCancelar, BtnAlterar], False);


    SQL_ANIMAIS.Active := False;
    SQL_ANIMAIS.Active := True;

    SQL_LISTA.Active := False;
    SQL_LISTA.Active := True;
end;
end;



procedure Tfrm_cad_animais.BtnIncluirClick(Sender: TObject);
begin
   SQL_ANIMAIS.Active := True;

  SQL_ANIMAIS.Insert;

  u_funcoes.AlterarEnabled([dbNome, edt_dt_nascimento, cbSexo, cbEspecie, dbCor, dbPelagem, dbRaca, cbPorte, db_pedigree, dbNchip,
gpCadastro, gpDoacao, gpVenda2, gpFalecido, cxButton1], True);

  u_funcoes.IniciarCadastro([BtnIncluir, BtnCancelar, BtnAlterar], True);

  sql_increment.Active := True;

  cxDBTextEdit1.Text := inttostr(sql_incrementAUTO_INCREMENT.Value);

end;

procedure Tfrm_cad_animais.cbDataKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
if (Key = VK_RETURN) or (Key = VK_TAB) then
  begin
    edt_dt_nascimento.SetFocus;
  end;
end;

procedure Tfrm_cad_animais.cbEspecieKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
if (Key = VK_RETURN) or (Key = VK_TAB) then
  begin
    db_pedigree.SetFocus;
  end;
end;

procedure Tfrm_cad_animais.cbSexoKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
if (Key = VK_RETURN) or (Key = VK_TAB) then
  begin
    cbEspecie.DroppedDown;
  end;
end;

procedure Tfrm_cad_animais.cxButton1Click(Sender: TObject);
begin
frm_cliente_geral:= Tfrm_cliente_geral.Create(nil);
frm_cliente_geral.ShowModal;
end;

procedure Tfrm_cad_animais.cxButton3Click(Sender: TObject);
begin
Frm_cad_vacinas:= TFrm_cad_vacinas.Create(nil);
Frm_cad_vacinas.ShowModal;
end;

procedure Tfrm_cad_animais.cxButton7Click(Sender: TObject);
begin
close;
end;

procedure Tfrm_cad_animais.cxDBMaskEdit1Exit(Sender: TObject);
begin
  if DBEdit1.Text <> emptystr then
    DBEdit1.Text := formatarmoeda(TFunctions.replace(DBEdit1.Text, 'R$', VARDOUBLE));
end;

procedure Tfrm_cad_animais.dbCorKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
if (Key = VK_RETURN) or (Key = VK_TAB) then
  begin
    dbPelagem.SetFocus;
  end;
end;

procedure Tfrm_cad_animais.dbNchipKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
if (Key = VK_RETURN) or (Key = VK_TAB) then
  begin
    //cbData.SetFocus;
  end;
end;

procedure Tfrm_cad_animais.dbNchipKeyPress(Sender: TObject; var Key: Char);
begin
  Key := u_funcoes.ApenasNumeros(Key);
end;

procedure Tfrm_cad_animais.dbNomeKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
if (Key = VK_RETURN) or (Key = VK_TAB) then
  begin
    edt_dt_nascimento.SetFocus;
  end;
end;

procedure Tfrm_cad_animais.dbPelagemKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
if (Key = VK_RETURN) or (Key = VK_TAB) then
  begin
    gpFalecido.SetFocus;
  end;
end;

procedure Tfrm_cad_animais.dbPorteKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
if (Key = VK_RETURN) or (Key = VK_TAB) then
  begin
    //cbData.SetFocus;
  end;
end;

procedure Tfrm_cad_animais.dbRacaKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
if (Key = VK_RETURN) or (Key = VK_TAB) then
  begin
    cbPorte.DroppedDown
  end;
end;

procedure Tfrm_cad_animais.edt_consultaKeyUp(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
dlconsulta;
end;


procedure Tfrm_cad_animais.edt_dt_nascimentoKeyDown(Sender: TObject;
  var Key: Word; Shift: TShiftState);
begin
  if (Key in [VK_TAB, VK_RETURN]) then
  begin
    edt_dt_nascimento.ValidateEdit(False);
    if (edt_dt_nascimento.EditValue <> Null) then
      cbsexo.DroppedDown;
  end;
end;

procedure Tfrm_cad_animais.dlConsulta(check_edit: Boolean = true);
const
  qry_base = 'select * from cliente_animais';
var
   condicao: string;
begin
  SQL_LISTA.Close;
  cbFiltro.ValidateEdit(False);
  if check_edit then
  begin
    if edt_consulta.Text <> emptystr then
    begin
      case cbFiltro.SelectedItem of
        0:
          condicao := ' where  NOME like "' + edt_consulta.Text + '%"';
        1:
          condicao := ' where  RACA like "' + edt_consulta.Text + '%"';
        2:
          condicao := ' where N_CHIP like "' + edt_consulta.Text + '%"';
        3:
          condicao := ' where  CASTRADO  like "' + edt_consulta.Text + '%"';
        4:
          condicao := ' where  DOACAO like "' + edt_consulta.Text + '%"';
        5:
          condicao := ' where VENDA like "' + edt_consulta.Text + '%"';
        6:
          condicao := ' where  FALECIDO  like "' + edt_consulta.Text + '%"';
      end;
    end;
  SQL_LISTA.Open(qry_base + condicao);
end;
end;


procedure Tfrm_cad_animais.FormClose(Sender: TObject; var Action: TCloseAction);
begin
 Action := cafree;
 self := nil;
end;

procedure Tfrm_cad_animais.FormShow(Sender: TObject);
begin
  CarregarUltimoCadastro;
  CarregarDadosInternos;
  dlconsulta;
end;

procedure Tfrm_cad_animais.gdConveniadosTbVwCustomDrawCell(
  Sender: TcxCustomGridTableView; ACanvas: TcxCanvas;
  AViewInfo: TcxGridTableDataCellViewInfo; var ADone: Boolean);
begin
  TFunctions.stripedGrid(ACanvas, AViewInfo);
end;

procedure Tfrm_cad_animais.CarregarUltimoCadastro;
begin
  SQL_INCREMENT.Close;
  SQL_INCREMENT.Open;
  with SQL_ANIMAIS do
  begin
    Active := false;
    Close;
    Params.Add.Name := 'pcodigo';
    ParamByName('pcodigo').Value := (sql_incrementAUTO_INCREMENT.asInteger - 1);
    Open;
    Active := true;
  end;
end;


procedure Tfrm_cad_animais.CarregarDadosInternos;
begin
  u_funcoes.AlterarEnabled([dbNome, edt_dt_nascimento, cbSexo, cbEspecie, dbCor, dbPelagem, dbRaca, cbPorte, db_pedigree, dbNchip,
  gpCadastro, gpDoacao, gpVenda2, gpFalecido, cxButton1], False);

    u_funcoes.IniciarCadastro([BtnIncluir, BtnCancelar, BtnAlterar], False);
  SQL_ANIMAIS.Active := True;
end;

end.
