//Verificado automaticamente em 16/06/2020 09:28
unit smc_atendimentos;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, cxGraphics, cxControls, cxLookAndFeels,
  cxLookAndFeelPainters, dxSkinsCore, dxSkinscxPCPainter, dxBarBuiltInMenu,
  cxStyles, cxCustomData, cxFilter, cxData, cxDataStorage, cxEdit, cxNavigator,
  Data.DB, cxDBData, Vcl.Menus, cxContainer, Vcl.ExtCtrls, Vcl.StdCtrls,
  cxTextEdit, cxMaskEdit, cxDropDownEdit, Vcl.ComCtrls, cxGroupBox, cxButtons,
  cxGridLevel, cxGridCustomTableView, cxGridTableView, cxGridDBTableView,
  cxClasses, cxGridCustomView, cxGrid, cxPC, cxLabel, dxSkinBlack, dxSkinBlue,
  dxSkinBlueprint, dxSkinCaramel, dxSkinCoffee, dxSkinDarkRoom, dxSkinDarkSide,
  dxSkinDevExpressDarkStyle, dxSkinDevExpressStyle, dxSkinFoggy,
  dxSkinGlassOceans, dxSkinHighContrast, dxSkiniMaginary, dxSkinLilian,
  dxSkinLiquidSky, dxSkinLondonLiquidSky, dxSkinMcSkin, dxSkinMetropolis,
  dxSkinMetropolisDark, dxSkinMoneyTwins, dxSkinOffice2007Black,
  dxSkinOffice2007Blue, dxSkinOffice2007Green, dxSkinOffice2007Pink,
  dxSkinOffice2007Silver, dxSkinOffice2010Black, dxSkinOffice2010Blue,
  dxSkinOffice2010Silver, dxSkinOffice2013DarkGray, dxSkinOffice2013LightGray,
  dxSkinOffice2013White, dxSkinOffice2016Colorful, dxSkinOffice2016Dark,
  dxSkinPumpkin, dxSkinSeven, dxSkinSevenClassic, dxSkinSharp, dxSkinSharpPlus,
  dxSkinSilver, dxSkinSpringTime, dxSkinStardust, dxSkinSummer2008,
  dxSkinTheAsphaltWorld, dxSkinsDefaultPainters, dxSkinValentine,
  dxSkinVisualStudio2013Blue, dxSkinVisualStudio2013Dark,
  dxSkinVisualStudio2013Light, dxSkinVS2010, dxSkinWhiteprint,
  dxSkinXmas2008Blue, FireDAC.Stan.Intf, FireDAC.Stan.Option,
  FireDAC.Stan.Param, FireDAC.Stan.Error, FireDAC.DatS, FireDAC.Phys.Intf,
  FireDAC.DApt.Intf, FireDAC.Stan.Async, FireDAC.DApt, FireDAC.Comp.DataSet,
  FireDAC.Comp.Client, Vcl.DBCtrls, cxCalendar, cxDBEdit, Vcl.Mask, v_Env,
  Vcl.DBLookup;

type
  Tfrm_atendimentos = class(TForm)
    cxPageControl1: TcxPageControl;
    tab_consulta: TcxTabSheet;
    tab_atendimentos: TcxTabSheet;
    gd_atendimentos: TcxGrid;
    gd_atendimentosTbVw: TcxGridDBTableView;
    gd_atendimentosLv: TcxGridLevel;
    cxButton3: TcxButton;
    edt_consulta: TEdit;
    Label1: TLabel;
    cxGroupBox6: TcxGroupBox;
    Label20: TLabel;
    Label21: TLabel;
    btn_consulta_data: TcxButton;
    edt_data_ini: TDateTimePicker;
    edt_data_fim: TDateTimePicker;
    cxComboBox4: TcxComboBox;
    btn_consulta_atendimentos: TcxButton;
    gp_clientes: TcxGroupBox;
    Label2: TLabel;
    Label3: TLabel;
    Edit3: TEdit;
    btn_gravar: TcxButton;
    btn_concluir_atendimento: TcxButton;
    btn_consulta_clientes: TcxButton;
    Label15: TLabel;
    gp_atendimentos_1: TcxGroupBox;
    gp_repasse: TcxGroupBox;
    C: TLabel;
    gp_atendimentos_2: TcxGroupBox;
    Label25: TLabel;
    Label27: TLabel;
    Label28: TLabel;
    Label29: TLabel;
    cxLabel1: TcxLabel;
    cxLabel2: TcxLabel;
    Label6: TLabel;
    Label4: TLabel;
    Label5: TLabel;
    btn_novo: TcxButton;
    btn_editar: TcxButton;
    btn_cancelar: TcxButton;
    ComboBox4: TComboBox;
    cxLabel3: TcxLabel;
    sql_atendimentos: TFDQuery;
    edt_nome_fantasia: TDBEdit;
    edt_razao_social: TDBEdit;
    edt_contato_1: TDBEdit;
    edt_contato_2: TDBEdit;
    edt_contato_3: TDBEdit;
    edt_abertura: TcxDBDateEdit;
    edt_fechamento: TcxDBDateEdit;
    edt_tecnico: TDBEdit;
    edt_status: TDBEdit;
    edt_observacoes: TDBMemo;
    edt_problema: TDBMemo;
    edt_solucao: TDBMemo;
    Label7: TLabel;
    edt_fechado_por: TDBEdit;
    Label8: TLabel;
    Label9: TLabel;
    edt_fechamento_repasse: TcxDBDateEdit;
    edt_status_repasse: TDBEdit;
    ds_atendimentos: TDataSource;
    sql_atendimentosCODIGO: TFDAutoIncField;
    sql_atendimentosNOME_FANTASIA: TStringField;
    sql_atendimentosRAZAO_SOCIAL: TStringField;
    sql_atendimentosCONTATO_1: TStringField;
    sql_atendimentosCONTATO_2: TStringField;
    sql_atendimentosCONTATO_3: TStringField;
    sql_atendimentosSISTEMA: TStringField;
    sql_atendimentosTIPO: TStringField;
    sql_atendimentosABERTURA: TDateTimeField;
    sql_atendimentosFECHAMENTO: TDateTimeField;
    sql_atendimentosTECNICO: TStringField;
    sql_atendimentosTECNICO_REPASSE: TStringField;
    sql_atendimentosSTATUS: TStringField;
    sql_atendimentosSTATUS_REPASSE: TStringField;
    sql_atendimentosFECHADO_POR: TStringField;
    sql_atendimentosFECHAMENTO_POR: TDateTimeField;
    sql_atendimentosPROBLEMA: TStringField;
    sql_atendimentosSOLUCAO: TStringField;
    sql_atendimentosOBSERVACOES: TStringField;
    gd_atendimentosTbVwCODIGO: TcxGridDBColumn;
    gd_atendimentosTbVwNOME_FANTASIA: TcxGridDBColumn;
    gd_atendimentosTbVwRAZAO_SOCIAL: TcxGridDBColumn;
    gd_atendimentosTbVwCONTATO_1: TcxGridDBColumn;
    gd_atendimentosTbVwCONTATO_2: TcxGridDBColumn;
    gd_atendimentosTbVwCONTATO_3: TcxGridDBColumn;
    gd_atendimentosTbVwSISTEMA: TcxGridDBColumn;
    gd_atendimentosTbVwTIPO: TcxGridDBColumn;
    gd_atendimentosTbVwABERTURA: TcxGridDBColumn;
    gd_atendimentosTbVwFECHAMENTO: TcxGridDBColumn;
    gd_atendimentosTbVwTECNICO: TcxGridDBColumn;
    gd_atendimentosTbVwTECNICO_REPASSE: TcxGridDBColumn;
    gd_atendimentosTbVwSTATUS: TcxGridDBColumn;
    gd_atendimentosTbVwSTATUS_REPASSE: TcxGridDBColumn;
    gd_atendimentosTbVwFECHADO_POR: TcxGridDBColumn;
    gd_atendimentosTbVwFECHAMENTO_POR: TcxGridDBColumn;
    gd_atendimentosTbVwOBSERVAES: TcxGridDBColumn;
    gd_atendimentosTbVwPROBLEMA: TcxGridDBColumn;
    gd_atendimentosTbVwSOLUCAO: TcxGridDBColumn;
    gd_atendimentosTbVwOBSERVACOES: TcxGridDBColumn;
    tfd_atendimentos: TFDTable;
    tfd_atendimentosCODIGO: TFDAutoIncField;
    tfd_atendimentosNOME_FANTASIA: TStringField;
    tfd_atendimentosRAZAO_SOCIAL: TStringField;
    tfd_atendimentosCONTATO_1: TStringField;
    tfd_atendimentosCONTATO_2: TStringField;
    tfd_atendimentosCONTATO_3: TStringField;
    tfd_atendimentosSISTEMA: TStringField;
    tfd_atendimentosTIPO: TStringField;
    tfd_atendimentosABERTURA: TDateTimeField;
    tfd_atendimentosFECHAMENTO: TDateTimeField;
    tfd_atendimentosTECNICO: TStringField;
    tfd_atendimentosTECNICO_REPASSE: TStringField;
    tfd_atendimentosSTATUS: TStringField;
    tfd_atendimentosSTATUS_REPASSE: TStringField;
    tfd_atendimentosFECHADO_POR: TStringField;
    tfd_atendimentosFECHAMENTO_POR: TDateTimeField;
    tfd_atendimentosOBSERVACOES: TStringField;
    tfd_atendimentosPROBLEMA: TStringField;
    tfd_atendimentosSOLUCAO: TStringField;
    edt_sistema: TDBComboBox;
    edt_tipo: TDBComboBox;
    rgd_tipo_de_consulta: TRadioGroup;
    edt_tecnico_repasse: TDBEdit;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormShow(Sender: TObject);
    procedure btn_novoClick(Sender: TObject);
    procedure btn_gravarClick(Sender: TObject);
    procedure btn_editarClick(Sender: TObject);
    procedure btn_cancelarClick(Sender: TObject);
    procedure btn_concluir_atendimentoClick(Sender: TObject);
    procedure gd_atendimentosTbVwDblClick(Sender: TObject);
    procedure btn_consulta_atendimentosClick(Sender: TObject);
    procedure edt_consultaKeyPress(Sender: TObject; var Key: Char);
    procedure tab_consultaShow(Sender: TObject);
    procedure btn_consulta_clientesClick(Sender: TObject);
    procedure cxButton3Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frm_atendimentos: Tfrm_atendimentos;

implementation

uses
  vw_cliente_atendimentos, rel_atendimentos;

{$R *.dfm}

procedure Tfrm_atendimentos.btn_concluir_atendimentoClick(Sender: TObject);
begin
  begin
    if (edt_nome_fantasia.Text='') or (edt_contato_1.Text='') or (edt_problema.Text='') or (edt_solucao.Text='') then
  begin
    edt_nome_fantasia.Color:=clMoneyGreen;
    edt_contato_1.Color:=clMoneyGreen;
    edt_tecnico_repasse.Color:=clMoneyGreen;
    edt_problema.Color:=clMoneyGreen;
    edt_solucao.Color:=clMoneyGreen;
    Raise Exception.Create('Por favor, preencha os campos obrigatórios para gravar o atendimento! ');
  end
  else
    edt_nome_fantasia.Color:=clWindow;
    edt_contato_1.Color:=clWindow;
    edt_problema.Color:=clWindow;
    edt_solucao.Color:=clWindow;
    tab_consulta.TabVisible:=True;
    edt_status.Text := 'FECHADO';
    edt_status_repasse.Text:='FECHADO';

    edt_fechamento.Date := Now;
    edt_fechamento_repasse.Date:=Now;

    edt_fechado_por.Text := v_Env.TEnv.TUser.NAME;
    btn_novo.Enabled:=True;
    btn_cancelar.Enabled:=False;
    btn_gravar.Enabled:=False;
    btn_concluir_atendimento.Enabled:=False;
    btn_consulta_atendimentos.Enabled:=False;
    //btn_repassado.visible:=False;
    //dm.sql_clientes.FieldByName('sistema').Value:=edt_sistema.Text;
    sql_atendimentos.FieldByName('tipo').Value := edt_tipo.Text;
    //sql_atendimentos.FieldByName('fechamento').Value:=edt_fechamento.Date;
    sql_atendimentos.Post;
    gp_repasse.Enabled:=False;
    gp_clientes.Enabled:=False;
    gp_atendimentos_1.Enabled:=False;
    gp_atendimentos_2.Enabled:=False;
    edt_problema.Enabled:=False;
    edt_solucao.Enabled:=False;
    //btn1.Click();
    tab_consulta.Show;

  end;
end;

procedure Tfrm_atendimentos.btn_consulta_atendimentosClick(Sender: TObject);
begin
  sql_atendimentos.Close;
  sql_atendimentos.Open;
  with sql_atendimentos do
  begin
    Close;
    SQL.Clear;
    SQL.Add('select * from atendimentos');

    // buscar cliente de acordo com o que selecionar nos tipos de pesquisas Componente Radio Group
    case rgd_tipo_de_consulta.ItemIndex of
      0:
        SQL.Add('where NOME_FANTASIA like :nome ORDER BY CODIGO DESC');
      1:
        SQL.Add('where SISTEMA like :nome ORDER BY CODIGO DESC');
      2:
        SQL.Add('where CODIGO like :nome ORDER BY CODIGO DESC');
      3:
        SQL.Add('where TECNICO like :nome ORDER BY CODIGO DESC');
      4:
        SQL.Add('where CONTATO_1 like :nome ORDER BY CODIGO DESC');
      5:
        SQL.Add('where STATUS like :nome ORDER BY CODIGO DESC');
    end;

    ParamByName('nome').Value := '%' + edt_consulta.Text + '%';
    Open;
    if RecordCount = 0 then
      ShowMessage('Chamado não encontrado!');
  end;
end;

procedure Tfrm_atendimentos.btn_editarClick(Sender: TObject);
begin
tab_consulta.TabVisible:=False;
  btn_editar.Enabled:=False;
  btn_novo.Enabled := False;
  btn_cancelar.Enabled := True;
  btn_gravar.Enabled := True;
  btn_concluir_atendimento.Enabled := True;
  gp_repasse.Enabled:=True;
  gp_clientes.Enabled:=True;
  gp_atendimentos_1.Enabled:=True;
  gp_atendimentos_2.Enabled:=True;
  edt_problema.Enabled:=True;
  edt_solucao.Enabled:=True;
  sql_atendimentos.Edit;
end;

procedure Tfrm_atendimentos.btn_novoClick(Sender: TObject);
begin
  tab_consulta.TabVisible:=False;
  btn_novo.Enabled:=False;
  btn_cancelar.Enabled := True;
  btn_gravar.Enabled := True;
  btn_concluir_atendimento.Enabled := True;
  btn_consulta_clientes.Enabled:=True;
  gp_clientes.Enabled:=True;
  gp_repasse.Enabled:=True;
  gp_atendimentos_1.Enabled:=True;
  gp_atendimentos_2.Enabled:=True;
  edt_problema.Enabled:=True;
  edt_solucao.Enabled:=True;
  sql_atendimentos.Insert;

  edt_abertura.Date:=Now;
  edt_tecnico.Text:=v_Env.TEnv.TUser.NAME;
  edt_status.Text:='ABERTO';
  edt_status_repasse.Text:='ABERTO';
  edt_tipo.Text:='INTERNO';
  edt_fechamento.Text:='';
  edt_fechamento_repasse.Text:='';
end;

procedure Tfrm_atendimentos.cxButton3Click(Sender: TObject);
begin
  frm_rel_atendimentos := Tfrm_rel_atendimentos.Create(nil);
  frm_rel_atendimentos.ShowModal;
  frm_rel_atendimentos:= nil;
end;

procedure Tfrm_atendimentos.btn_consulta_clientesClick(Sender: TObject);
begin
  frm_cliente_atendimentos := Tfrm_cliente_atendimentos.Create(nil);
  frm_cliente_atendimentos.ShowModal;
  frm_cliente_atendimentos:= nil;
end;

procedure Tfrm_atendimentos.edt_consultaKeyPress(Sender: TObject;
  var Key: Char);
begin
  if Key = #13 then
  begin
    btn_consulta_atendimentos.Click;
  end;
end;

procedure Tfrm_atendimentos.btn_gravarClick(Sender: TObject);
begin
  begin
    if (edt_nome_fantasia.Text='') or (edt_contato_1.Text='') or (edt_sistema.Text='') or (edt_tecnico_repasse.Text='') or (edt_problema.Text='') then
  begin
    edt_nome_fantasia.Color:=clMoneyGreen;
    edt_contato_1.Color:=clMoneyGreen;
    edt_tecnico_repasse.Color:=clMoneyGreen;
    edt_problema.Color:=clMoneyGreen;
    edt_sistema.Color:=clMoneyGreen;
    Raise Exception.Create('Por favor, preencha todos os campos obrigatórios para gravar o atendimento! ');

  end
  else
  edt_nome_fantasia.Color:=clWindow;
  edt_contato_1.Color:=clWindow;
  edt_tecnico_repasse.Color:=clWindow;
  edt_problema.Color:=clWindow;
  edt_solucao.Color:=clWindow;
  tab_consulta.TabVisible:=True;
  btn_cancelar.Enabled := False;
  btn_gravar.Enabled := False;
  btn_concluir_atendimento.Enabled := False;
  btn_novo.Enabled := True;
  btn_consulta_atendimentos.Enabled:=False;

  //forçar gravar no banco de dados
  //sql_atendimentos.FieldByName('NOME_FANTASIA').Value := edt_nome_fantasia.Text;
  //sql_atendimentos.FieldByName('ABERTURA').Value:=edt_abertura.Date;
  //sql_atendimentos.FieldByName('TECNICO_REPASSE').Value:=edt_tecnico_repasse.Text;
  //sql_atendimentos.FieldByName('status').Value:=edt_status.Text;
  //sql_atendimentos.FieldByName('sistema').Value := edt_sistema.Text;
  sql_atendimentos.FieldByName('tipo').Value := edt_tipo.Text;
  //sql_atendimentos.FieldByName('somente_data_abertura').Value:=edt_somente_data.Date;


  sql_atendimentos.Post;
  gp_repasse.Enabled:=False;
  gp_clientes.Enabled:=false;
  gp_atendimentos_1.Enabled:=False;
  gp_atendimentos_2.Enabled:=False;
  //btn1.Click();
  tab_consulta.Show;
end;
end;

procedure Tfrm_atendimentos.btn_cancelarClick(Sender: TObject);
begin
  edt_nome_fantasia.Color:=clWindow;
  edt_contato_1.Color:=clWindow;
  edt_tecnico_repasse.Color:=clWindow;
  edt_problema.Color:=clWindow;
  edt_solucao.Color:=clWindow;
  edt_sistema.Color:=clWindow;

  tab_consulta.TabVisible:=True;



  btn_gravar.Enabled := False;
  btn_concluir_atendimento.Enabled := False;
  btn_cancelar.Enabled := False;
  btn_novo.Enabled:=True;
  btn_consulta_clientes.Enabled:=False;
  sql_atendimentos.Cancel;

  gp_repasse.Enabled:=False;
  gp_clientes.Enabled:=False;
  gp_atendimentos_1.Enabled:=False;
  gp_atendimentos_2.Enabled:=False;

end;

procedure Tfrm_atendimentos.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  sql_atendimentos.Close;
  Action := cafree;
  self := nil;
end;

procedure Tfrm_atendimentos.FormShow(Sender: TObject);
begin
sql_atendimentos.Open();
tfd_atendimentos.Active:=True;
end;

procedure Tfrm_atendimentos.gd_atendimentosTbVwDblClick(Sender: TObject);
begin
  // selecionar produtos para editar
  tfd_atendimentos.Active := True;
  tfd_atendimentos.Locate('CODIGO', sql_atendimentosCODIGO.Value, []);
  //edt_data.Date := dm.tfd_clientes.FieldByName('data').AsDateTime;
  //edt_data_fechamento.Date := dm.tfd_clientes.FieldByName('data_fechamento').AsDateTime;
  cxPageControl1.ActivePage := tab_atendimentos;
  btn_editar.Enabled := True;
  begin
    if edt_status.Text='FECHADO' then
    btn_editar.Enabled:=False
    else
    btn_editar.Enabled:=True
  end;

end;

procedure Tfrm_atendimentos.tab_consultaShow(Sender: TObject);
begin
sql_atendimentos.Close;
sql_atendimentos.SQL.Clear;
edt_consulta.Text:='';
sql_atendimentos.SQL.Add('SELECT * FROM ATENDIMENTOS');
sql_atendimentos.SQL.Add('ORDER BY CODIGO DESC');
sql_atendimentos.Open;
end;

end.
