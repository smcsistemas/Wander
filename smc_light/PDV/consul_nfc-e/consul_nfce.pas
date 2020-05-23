{ 22.11.16 10:58 }
unit consul_nfce;

interface

uses
  Winapi.Windows, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms,
  Vcl.ComCtrls, cxDateUtils,
  Vcl.Menus,
  FireDAC.Stan.Param,

  Data.DB, FireDAC.Comp.DataSet, FireDAC.Comp.Client, Vcl.ExtCtrls,
  Vcl.StdCtrls, cxButtons, cxCheckBox, cxDropDownEdit,
  cxCalendar, Vcl.Grids, Vcl.DBGrids,

  frxClass, inutilizar_faixa, System.DateUtils, S_Parametros_NF, cxGraphics, cxControls, cxLookAndFeels, cxLookAndFeelPainters, cxContainer, cxEdit, dxCore, dxSkinsCore,
  dxSkinBlack, dxSkinBlue,
  dxSkinBlueprint, dxSkinCaramel, dxSkinCoffee, dxSkinDarkRoom, dxSkinDarkSide, dxSkinDevExpressDarkStyle, dxSkinDevExpressStyle, dxSkinFoggy, dxSkinGlassOceans,
  dxSkinHighContrast, dxSkiniMaginary,
  dxSkinLilian, dxSkinLiquidSky, dxSkinLondonLiquidSky, dxSkinMcSkin, dxSkinMetropolis, dxSkinMetropolisDark, dxSkinMoneyTwins, dxSkinOffice2007Black, dxSkinOffice2007Blue,
  dxSkinOffice2007Green,
  dxSkinOffice2007Pink, dxSkinOffice2007Silver, dxSkinOffice2010Black, dxSkinOffice2010Blue, dxSkinOffice2010Silver, dxSkinOffice2013DarkGray, dxSkinOffice2013LightGray,
  dxSkinOffice2013White,
  dxSkinOffice2016Colorful, dxSkinOffice2016Dark, dxSkinPumpkin, dxSkinSeven, dxSkinSevenClassic, dxSkinSharp, dxSkinSharpPlus, dxSkinSilver, dxSkinSpringTime, dxSkinStardust,
  dxSkinSummer2008,
  dxSkinTheAsphaltWorld, dxSkinsDefaultPainters, dxSkinValentine, dxSkinVisualStudio2013Blue, dxSkinVisualStudio2013Dark, dxSkinVisualStudio2013Light, dxSkinVS2010,
  dxSkinWhiteprint,
  dxSkinXmas2008Blue, FireDAC.Stan.Intf, FireDAC.Stan.Option, FireDAC.Stan.Error, FireDAC.DatS, FireDAC.Phys.Intf, FireDAC.DApt.Intf, FireDAC.Stan.Async, FireDAC.DApt, cxTextEdit,
  cxMaskEdit, S_Parametros_Venda, h_DB;

type
  TFrm_consul_nfce = class(TForm)
    GroupBox2: TGroupBox;
    DBGrid1: TDBGrid;
    GroupBox6: TGroupBox;
    Label7: TLabel;
    Label8: TLabel;
    edt_nfce_fim: TEdit;
    edt_nfce_inicio: TEdit;
    GroupBox1: TGroupBox;
    Label1: TLabel;
    Label2: TLabel;
    GroupBox3: TGroupBox;
    chk_autorizadas: TcxCheckBox;
    chk_inutilizadas: TcxCheckBox;
    chk_canceladas: TcxCheckBox;
    chk_pendentes: TcxCheckBox;
    SQL_NFCE: TFDQuery;
    DS_NFCE: TDataSource;
    Panel1: TPanel;
    btn_status: TcxButton;
    btn_danfe: TcxButton;
    btn_transmitir: TcxButton;
    btn_inutilizar_nfce: TcxButton;
    btn_cancelar: TcxButton;
    btn_enviar_pendentes: TcxButton;
    btn_inuitilizar_selecao: TcxButton;
    btn_atualizar_info: TcxButton;
    btn_enviar: TcxButton;
    btn_status_servico: TcxButton;
    Label3: TLabel;
    edt_periodo_inicio: TcxDateEdit;
    edt_periodo_fim: TcxDateEdit;
    btn_relatorio_selecao: TcxButton;
    chk_nfce: TcxCheckBox;
    chk_data: TcxCheckBox;
    chk_status: TcxCheckBox;
    Label4: TLabel;
    Label5: TLabel;
    lbl_qtde: TLabel;
    popcorn: TPopupMenu;
    ImprimirDanfe1: TMenuItem;
    DetalhesdaNFCe1: TMenuItem;
    GroupBox4: TGroupBox;
    chk_normal: TcxCheckBox;
    chk_contingencia: TcxCheckBox;
    lb_total_nfce: TLabel;
    CB_MES: TcxComboBox;
    SQL_NFCECODIGO: TFDAutoIncField;
    SQL_NFCEDATA_EMISSAO: TDateField;
    SQL_NFCEHORA_EMISSAO: TTimeField;
    SQL_NFCEDATA_TRANSMISSAO: TDateField;
    SQL_NFCEHORA_TRANSMISSAO: TTimeField;
    SQL_NFCECODIGO_VENDA: TStringField;
    SQL_NFCEVALOR_NFCE: TBCDField;
    SQL_NFCEACRESCIMOS_NFCE: TBCDField;
    SQL_NFCEDESCONTOS_NFCE: TBCDField;
    SQL_NFCETOTAL_NFCE: TBCDField;
    SQL_NFCEVALOR_PAGO: TBCDField;
    SQL_NFCETROCO: TBCDField;
    SQL_NFCELOTE: TStringField;
    SQL_NFCESERIE: TStringField;
    SQL_NFCECHAVE: TStringField;
    SQL_NFCECAMINHO_XML: TStringField;
    SQL_NFCETIPO_EMISSAO: TStringField;
    SQL_NFCESTATUS_NFCE: TStringField;
    SQL_NFCERETORNO_NFCE: TStringField;
    SQL_NFCEERRO_ROTINA: TStringField;
    impComanda: TMenuItem;
    SQL_NFCECNF: TIntegerField;
    cxCheckBox1: TcxCheckBox;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure DBGrid1DrawColumnCell(Sender: TObject; const Rect: TRect; DataCol: Integer; Column: TColumn; State: TGridDrawState);
    procedure edt_periodo_inicioKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
    procedure edt_periodo_fimKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
    procedure edt_nfce_inicioKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
    procedure btn_localizarClick(Sender: TObject);
    procedure InicioMes;
    procedure FormShow(Sender: TObject);
    procedure edt_periodo_fimEnter(Sender: TObject);
    procedure BuscarNFCe;
    procedure DBGrid1DblClick(Sender: TObject);
    procedure btn_statusClick(Sender: TObject);
    procedure btn_danfeClick(Sender: TObject);
    procedure btn_transmitirClick(Sender: TObject);
    procedure btn_inutilizar_nfceClick(Sender: TObject);
    procedure InutilizarNFCE;
    procedure TransmitirNFCE(CONSULTANFCE: TFDQuery; RetornaMensagem: Boolean);
    procedure VisualizarDANFCE;
    procedure CancelarNFCE;
    procedure btn_cancelarClick(Sender: TObject);
    procedure btn_enviar_pendentesClick(Sender: TObject);
    procedure EnviarPendentes;
    procedure ImprimirDanfce;
    procedure btn_enviarClick(Sender: TObject);
    procedure SalvarXMLPDF;
    procedure btn_relatorio_selecaoClick(Sender: TObject);
    procedure chk_nfcePropertiesChange(Sender: TObject);
    procedure chk_dataPropertiesChange(Sender: TObject);
    procedure chk_statusPropertiesChange(Sender: TObject);
    procedure ImprimirDanfe1Click(Sender: TObject);
    procedure StatusServico;
    procedure btn_status_servicoClick(Sender: TObject);
    procedure btn_inuitilizar_selecaoClick(Sender: TObject);
    procedure InutilizarSelecao;
    procedure AbrirNFCe;
    procedure DetalhesdaNFCe1Click(Sender: TObject);
    procedure btn_atualizar_infoClick(Sender: TObject);
    procedure FormKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
    function VerificarConexao: Boolean;
    procedure ConsultarNFCE;
    procedure chk_normalPropertiesChange(Sender: TObject);
    procedure chk_contingenciaPropertiesChange(Sender: TObject);
    procedure chk_autorizadasPropertiesChange(Sender: TObject);
    procedure chk_canceladasPropertiesChange(Sender: TObject);
    procedure chk_pendentesPropertiesChange(Sender: TObject);
    procedure chk_inutilizadasPropertiesChange(Sender: TObject);
    procedure edt_periodo_inicioPropertiesEditValueChanged(Sender: TObject);
    procedure edt_periodo_fimPropertiesEditValueChanged(Sender: TObject);
    procedure edt_nfce_inicioKeyUp(Sender: TObject; var Key: Word; Shift: TShiftState);
    procedure edt_nfce_fimKeyUp(Sender: TObject; var Key: Word; Shift: TShiftState);
    procedure CB_MESPropertiesEditValueChanged(Sender: TObject);
    procedure popcornPopup(Sender: TObject);
    procedure impComandaClick(Sender: TObject);

  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Frm_consul_nfce: TFrm_consul_nfce;

implementation

uses
  visualizar_nfc_e, u_funcoes, U_ConfNFCE,
  carregando_dados, relatorios;

{$R *.dfm}

procedure TFrm_consul_nfce.chk_autorizadasPropertiesChange(Sender: TObject);
begin
  BuscarNFCe;
end;

procedure TFrm_consul_nfce.chk_canceladasPropertiesChange(Sender: TObject);
begin
  BuscarNFCe;
end;

procedure TFrm_consul_nfce.chk_contingenciaPropertiesChange(Sender: TObject);
begin
  BuscarNFCe;
end;

procedure TFrm_consul_nfce.chk_dataPropertiesChange(Sender: TObject);
begin
  u_funcoes.AlteraChecks(chk_data, [chk_nfce, chk_status]);
  if chk_data.checked then
    BuscarNFCe;
end;

procedure TFrm_consul_nfce.chk_inutilizadasPropertiesChange(Sender: TObject);
begin
  BuscarNFCe;
end;

procedure TFrm_consul_nfce.chk_nfcePropertiesChange(Sender: TObject);
begin
  u_funcoes.AlteraChecks(chk_nfce, [chk_data, chk_status]);
  if chk_nfce.checked then
    BuscarNFCe;
end;

procedure TFrm_consul_nfce.chk_normalPropertiesChange(Sender: TObject);
begin
  BuscarNFCe;
end;

procedure TFrm_consul_nfce.chk_pendentesPropertiesChange(Sender: TObject);
begin
  BuscarNFCe;
end;

procedure TFrm_consul_nfce.chk_statusPropertiesChange(Sender: TObject);
begin
  u_funcoes.AlteraChecks(chk_status, [chk_nfce, chk_data]);
  if chk_status.checked then
    BuscarNFCe;
end;

procedure TFrm_consul_nfce.ConsultarNFCE;
begin
  if (DBGrid1.SelectedIndex <> 0) then
  begin
    if SQL_NFCESTATUS_NFCE.AsString <> 'INUTILIZADA' then
    begin
      Frm_ConfNfce := TFrm_ConfNfce.Create(nil);
      Frm_ConfNfce.configurarcomponente;
      Frm_ConfNfce.ConsultarNF(SQL_NFCECHAVE.AsString, true, SQL_NFCECAMINHO_XML.AsString, SQL_NFCESTATUS_NFCE.AsString, SQL_NFCEDATA_EMISSAO.AsDateTime);
      Frm_ConfNfce.Close;
      BuscarNFCe;
    end
    else
      Wninfo('Retorno NFC-e', slinebreak + slinebreak + 'NFC-e inutilizada!');
    { Todo - função de gerar chave de NFCE }
  end
  else
    WNAlerta('Retorno NFC-e', slinebreak + slinebreak + 'Selecione uma NFCe!');
end;

procedure TFrm_consul_nfce.AbrirNFCe;
begin
  FRM_visualizar_nfc_e := TFRM_visualizar_nfc_e.Create(nil);
  if SQL_NFCECODIGO_VENDA.AsString = '0' then
  begin
    with FRM_visualizar_nfc_e.SQL_NFCE do
    begin
      Close;
      sql.Clear;
      open('select  n.*, CAST("0" AS DECIMAL(4,4)) "TOTAL_VENDA", n.data_transmissao as "DATA_VENDA",n.hora_transmissao as "HORA_VENDA" From nfce n where n.codigo =' +
        SQL_NFCECODIGO.AsString);
    end;
  end
  else
  begin
    with FRM_visualizar_nfc_e.SQL_NFCE do
    begin
      Close;
      parambyname('pcodigo').Value := SQL_NFCECODIGO.Value;
      open;
    end;
    with FRM_visualizar_nfc_e.SQL_NFCE_ITENS do
    begin
      Close;
      parambyname('pcodigo').Value := SQL_NFCECODIGO_VENDA.Value;
      open;
    end;
    with FRM_visualizar_nfc_e.SQL_NFCE_PAGAMENTOS do
    begin
      Close;
      parambyname('pcodigo').Value := SQL_NFCECODIGO.Value;
      open;
    end;
  end;
  FRM_visualizar_nfc_e.ShowModal;
  FRM_visualizar_nfc_e.free;
end;

procedure TFrm_consul_nfce.btn_atualizar_infoClick(Sender: TObject);
begin
  if not verificaaberta(Frm_Inutilizar_Faixa) then
  begin
    Frm_Inutilizar_Faixa := TFrm_Inutilizar_Faixa.Create(application);
    Frm_Inutilizar_Faixa.ShowModal;
  end;
  BuscarNFCe;
end;

procedure TFrm_consul_nfce.btn_cancelarClick(Sender: TObject);
begin
  if VerificarConexao then
    CancelarNFCE;
end;

procedure TFrm_consul_nfce.btn_danfeClick(Sender: TObject);
begin
  VisualizarDANFCE;
end;

procedure TFrm_consul_nfce.btn_enviarClick(Sender: TObject);
begin
  SalvarXMLPDF;
end;

procedure TFrm_consul_nfce.btn_enviar_pendentesClick(Sender: TObject);
begin
  if VerificarConexao then
    EnviarPendentes;
end;

procedure TFrm_consul_nfce.btn_inuitilizar_selecaoClick(Sender: TObject);
begin
  if VerificarConexao then
    InutilizarSelecao;
end;

procedure TFrm_consul_nfce.btn_inutilizar_nfceClick(Sender: TObject);
begin
  if VerificarConexao then
    InutilizarNFCE;
end;

procedure TFrm_consul_nfce.btn_localizarClick(Sender: TObject);
begin
  BuscarNFCe;
end;

procedure TFrm_consul_nfce.btn_relatorio_selecaoClick(Sender: TObject);
begin

  frm_relatorio := tfrm_relatorio.Create(NIL);
  WITH frm_relatorio.SQL_OP_NFCE do
  begin
    Close;
    sql.Clear;
    sql.Add(SQL_NFCE.sql.Text);
    open;
  end;
  frm_relatorio.FRX_OP_NFCE.LoadFromFile(frm_relatorio.PATH_OP_NFCE, true);
  frm_relatorio.FRX_OP_NFCE.ShowReport;
  frm_relatorio.Close;
end;

procedure TFrm_consul_nfce.btn_statusClick(Sender: TObject);
begin
  if VerificarConexao then
    ConsultarNFCE;
end;

procedure TFrm_consul_nfce.btn_status_servicoClick(Sender: TObject);
begin
  if VerificarConexao then
    StatusServico;
end;

procedure TFrm_consul_nfce.btn_transmitirClick(Sender: TObject);
begin
  if VerificarConexao then
    TransmitirNFCE(SQL_NFCE, true);
end;

procedure TFrm_consul_nfce.BuscarNFCe;
var
  StatusNFCe, nfceInicio, DataInicio, DataFim, MesInicio, MesFim, nfceFim, Consulta, consulta_aux, FaixaNFCE, ordem, Emissao: string;
  rc: Integer;
  tot_nfce: extended;
  qry_totais: TFDQuery;
begin
  if chk_normal.checked then
    Emissao := QuotedStr('NORMAL');
  if chk_contingencia.checked then
    if Emissao.IsEmpty then
      Emissao := QuotedStr('CONTINGENCIA')
    else
      Emissao := Emissao + ',' + QuotedStr('CONTINGENCIA');
  if not Emissao.IsEmpty then
    Emissao := ' AND TIPO_EMISSAO in (' + Emissao + ') '
  else
    Emissao := ' AND (TIPO_EMISSAO IS NULL) ';
  if chk_autorizadas.checked then
    StatusNFCe := QuotedStr('AUTORIZADA');
  if chk_canceladas.checked then
    if StatusNFCe.IsEmpty then
      StatusNFCe := QuotedStr('CANCELADA')
    else
      StatusNFCe := StatusNFCe + ',' + QuotedStr('CANCELADA');
  if chk_inutilizadas.checked then
    if StatusNFCe.IsEmpty then
      StatusNFCe := QuotedStr('INUTILIZADA')
    else
      StatusNFCe := StatusNFCe + ',' + QuotedStr('INUTILIZADA');
  if chk_pendentes.checked then
    if StatusNFCe.IsEmpty then
      StatusNFCe := QuotedStr('PENDENTE')
    else
      StatusNFCe := StatusNFCe + ',' + QuotedStr('PENDENTE');
  if NOT StatusNFCe.IsEmpty then
    StatusNFCe := ' WHERE STATUS_NFCE in (' + StatusNFCe + ') '
  else
    StatusNFCe := ' WHERE (STATUS_NFCE is null) ';
  if CB_MES.Text = '' then
  begin
    if edt_periodo_inicio.date <> NullDate then
      DataInicio := FormatDateTime('yyyy-mm-dd', edt_periodo_inicio.date);
    if edt_periodo_fim.date <> NullDate then
      DataFim := FormatDateTime('yyyy-mm-dd', edt_periodo_fim.date);
  end
  else
  begin
    MesInicio := MonthToDbMonth('01', CB_MES.Text);
    MesFim := MonthToDbMonth('31', CB_MES.Text);
  end;
  if edt_nfce_inicio.Text <> '' then
  begin
    nfceInicio := edt_nfce_inicio.Text;
  end;
  if edt_nfce_fim.Text <> '' then
  begin
    nfceFim := edt_nfce_fim.Text;
  end;
  Consulta := 'SELECT * FROM NFCE ' + StatusNFCe;
  consulta_aux := 'SELECT sum(TOTAL_NFCE) AS TOT FROM NFCE WHERE STATUS_NFCE = "AUTORIZADA" ';
  if (DataInicio <> '') and (DataFim <> '') then
  BEGIN
    Consulta := Consulta + ' AND (DATA_EMISSAO BETWEEN ' + QuotedStr(DataInicio) + ' AND ' + QuotedStr(DataFim) + ' ) ';
    consulta_aux := consulta_aux + ' AND (DATA_EMISSAO BETWEEN ' + QuotedStr(DataInicio) + ' AND ' + QuotedStr(DataFim) + ' ) ';
  END;

  if (MesInicio <> '') and (MesFim <> '') then
  BEGIN
    Consulta := Consulta + ' AND (DATA_EMISSAO BETWEEN ' + QuotedStr(MesInicio) + ' AND ' + QuotedStr(MesFim) + ' ) ';
    consulta_aux := consulta_aux + ' AND (DATA_EMISSAO BETWEEN ' + QuotedStr(MesInicio) + ' AND ' + QuotedStr(MesFim) + ' ) ';
  END;

  if (nfceInicio <> '') then
    FaixaNFCE := ' AND CODIGO LIKE "' + nfceInicio + '%"';
  if (nfceFim <> '') then
    FaixaNFCE := ' AND CODIGO LIKE "' + nfceFim + '%"';
  if (nfceInicio <> '') AND (nfceFim <> '') then
    FaixaNFCE := ' AND CODIGO BETWEEN ' + QuotedStr(nfceInicio) + ' AND ' + QuotedStr(nfceFim);
  if chk_nfce.checked then
    ordem := ' ORDER BY CODIGO';
  if chk_data.checked then
    ordem := ' ORDER BY DATA_EMISSAO';
  if chk_status.checked then
    ordem := ' ORDER BY STATUS_NFCE';
  Consulta := Consulta + Emissao + FaixaNFCE + ordem;
  consulta_aux := consulta_aux + Emissao + FaixaNFCE + ordem;
  with SQL_NFCE do
  begin
    Close;
    sql.Clear;
    sql.Add(Consulta);
    open;
    SQL_NFCE.fetchall;
    rc := RecordCount;
    lbl_qtde.Caption := IntToStr(rc);
    last;
  end;
  lb_total_nfce.Caption := FormatarMoeda(simplequery(consulta_aux).Fields[0].asExtended);
end;

procedure TFrm_consul_nfce.CancelarNFCE;
var
  Protocolo, DataHoraEnvio, RetornoXML, Status: String;
  qry_tmp: TFDQuery;
begin
  if DBGrid1.SelectedIndex <> 0 then
  begin
    Frm_ConfNfce := TFrm_ConfNfce.Create(nil);
    Frm_ConfNfce.CancelarNFCE(SQL_NFCE, true);
    Frm_ConfNfce.Close;
  end;
end;

procedure TFrm_consul_nfce.CB_MESPropertiesEditValueChanged(Sender: TObject);
begin
  if CB_MES.Text <> emptystr then
  begin
    edt_periodo_inicio.Clear;
    edt_periodo_fim.Clear;
    BuscarNFCe;
  end;
end;

procedure TFrm_consul_nfce.edt_nfce_fimKeyUp(Sender: TObject; var Key: Word; Shift: TShiftState);
begin
  BuscarNFCe;
end;

procedure TFrm_consul_nfce.edt_nfce_inicioKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
begin
  if Key = vk_return then
    edt_nfce_fim.SetFocus;
end;

procedure TFrm_consul_nfce.edt_nfce_inicioKeyUp(Sender: TObject; var Key: Word; Shift: TShiftState);
begin
  BuscarNFCe;
end;

procedure TFrm_consul_nfce.edt_periodo_fimEnter(Sender: TObject);
begin
  CB_MES.Text := '';
end;

procedure TFrm_consul_nfce.edt_periodo_fimKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
begin
  if Key = vk_return then
    edt_nfce_inicio.SetFocus;
end;

procedure TFrm_consul_nfce.edt_periodo_fimPropertiesEditValueChanged(Sender: TObject);
begin
  if edt_periodo_fim.Text <> emptystr then
  begin
    BuscarNFCe;
    CB_MES.Clear;
  end;
end;

procedure TFrm_consul_nfce.edt_periodo_inicioKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
begin
  if Key = vk_return then
    edt_periodo_fim.SetFocus;
end;

procedure TFrm_consul_nfce.edt_periodo_inicioPropertiesEditValueChanged(Sender: TObject);
begin
  if edt_periodo_inicio.Text <> emptystr then
  begin
    CB_MES.Clear;
    BuscarNFCe;
  end;
end;

procedure TFrm_consul_nfce.EnviarPendentes;
var
  DataSolicitacao, straux: string;
  arrcodigos: Array of Integer;
  i, x, qtderegistros: Integer;
begin
  try
    DataSolicitacao := FormatDateTime('yyyy-mm-dd', now);
    straux := 'O sistema irá tentar enviar todas as notas pendentes' + slinebreak + 'do dia ' + FormatDateTime('dd/mm/yyyy', date) + '.' + slinebreak +
      'Deseja continuar com a operação ?';
    if WnConfirmacao('NFC-e', straux) then
    begin
      frm_relatorio := tfrm_relatorio.Create(nil);
      with frm_relatorio.SQL_OP_NFCE do
      begin
        Close;
        sql.Clear;
        sql.Add('select *, (select sum(total_nfce) from nfce where status_nfce = "AUTORIZADA") as TOTAL_AUT from nfce WHERE DATA_EMISSAO =' + QuotedStr(DataSolicitacao) +
          ' AND STATUS_NFCE = ' + QuotedStr('PENDENTE') + ' order by CODIGO');
        open;
        fetchall;
        first;
        i := 0; // Index do vetor
        x := 1; // salto da barra
        if RecordCount > 0 then
        begin
          qtderegistros := RecordCount;
          Frm_Carregando_Dados := tfrm_carregando_dados.Create(nil);
          Frm_Carregando_Dados.Visible := true;
          Frm_Carregando_Dados.show;
          Frm_Carregando_Dados.Update;
          Frm_Carregando_Dados.pb_barra_progresso.Min := 0;
          Frm_Carregando_Dados.pb_barra_progresso.Max := qtderegistros;
          SetLength(arrcodigos, qtderegistros);
          while not Eof do
          begin

            Frm_Carregando_Dados.PreencherBarra(x);
            Frm_Carregando_Dados.Update;
            Frm_Carregando_Dados.MudarLabel('Enviando NFC-e ' + IntToStr(FieldByName('CODIGO').Value) + ' ...');
            arrcodigos[i] := FieldByName('CODIGO').Value;
            TransmitirNFCE(frm_relatorio.SQL_OP_NFCE, false);
            Next;
            Inc(i);
            Inc(x);
          end;
          Frm_Carregando_Dados.Close;
          straux := '';
          for i := Low(arrcodigos) to High(arrcodigos) do
            if not straux.IsEmpty then
              straux := straux + QuotedStr(IntToStr(arrcodigos[i])) + ','
            else
              straux := QuotedStr(IntToStr(arrcodigos[i])) + ',';
          with frm_relatorio.SQL_OP_NFCE do
          begin
            Close;
            sql.Clear;
            straux := 'select *, (select sum(total_nfce) from nfce where status_nfce = "AUTORIZADA") as TOTAL_AUT from nfce WHERE CODIGO IN (' +
              Copy(straux, 0, Length(straux) - 1) + ')';
            sql.Add(straux);
            open;
          end;

          frm_relatorio.FRX_OP_NFCE.LoadFromFile(frm_relatorio.PATH_OP_NFCE, true);
          frm_relatorio.FRX_OP_NFCE.ShowReport;
          frm_relatorio.Close;
          BuscarNFCe;
        end
        else
        begin
          WNAlerta('NFC-e', slinebreak + slinebreak + 'Não existem notas pendentes no período informado!');
          frm_relatorio.destroy;
          Exit;
        end;
      end;
    end;
  except
    on E: Exception do
    begin
      wnerro('NFC-e', E.Message + slinebreak + 'Erro ao enviar!');
      Exit;
    end;
  end;
end;

procedure TFrm_consul_nfce.DBGrid1DblClick(Sender: TObject);
begin
  if not clickontittle(DBGrid1) then
    AbrirNFCe;
end;

procedure TFrm_consul_nfce.DBGrid1DrawColumnCell(Sender: TObject; const Rect: TRect; DataCol: Integer; Column: TColumn; State: TGridDrawState);
var
  Check: Integer;
  R: TRect;
begin;
  GridZebrado(DBGrid1, Rect, DataCol, Column, State);
  ColorirStatusGrid(DBGrid1, Rect, DataCol, Column, State, [clWebDarkgreen, clWebCrimson, clWebOrange, clWebGray], ['AUTORIZADA', 'CANCELADA', 'PENDENTE', 'INUTILIZADA'],
    SQL_NFCESTATUS_NFCE);
  if SQL_NFCESTATUS_NFCE.Value = 'PENDENTE' then
    ColorirStatusGrid(DBGrid1, Rect, DataCol, Column, State, [clWebNavy], ['CONTINGENCIA'], SQL_NFCETIPO_EMISSAO);
  inherited;
  MostrarBarraLateralGrid(DBGrid1, true, true);
end;

procedure TFrm_consul_nfce.DetalhesdaNFCe1Click(Sender: TObject);
begin
  AbrirNFCe;
end;

procedure TFrm_consul_nfce.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  Action := caFree;
  self := nil;
end;

procedure TFrm_consul_nfce.FormKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
begin
  if Key = vk_escape then
    Close;
end;

procedure TFrm_consul_nfce.FormShow(Sender: TObject);
begin
  InicioMes;
  BuscarNFCe;
end;

procedure TFrm_consul_nfce.ImprimirDanfce;
begin
  if DBGrid1.SelectedIndex <> 0 then
  begin
    if (SQL_NFCESTATUS_NFCE.Value = 'AUTORIZADA') then
    BEGIN
      Frm_ConfNfce := TFrm_ConfNfce.Create(nil);
      Frm_ConfNfce.configurarcomponente;
      Frm_ConfNfce.ImprimirDanfce(SQL_NFCECAMINHO_XML.Value, '', formatartag(SQL_NFCEVALOR_PAGO.asExtended), formatartag(SQL_NFCETROCO.asExtended));
      Frm_ConfNfce.Close;
    END;
  end
  else
    WNAlerta('NFCe', slinebreak + slinebreak + 'Selecione uma NFCe!')
end;

procedure TFrm_consul_nfce.ImprimirDanfe1Click(Sender: TObject);
begin
  ImprimirDanfce;
end;

procedure TFrm_consul_nfce.impComandaClick(Sender: TObject);
begin
  if TParametros_Venda.Comanda.enabled then
    if tdb.simplequery('select status from venda where codigo_venda = ? and status = "FECHADA"', [SQL_NFCECODIGO_VENDA.AsString]) <> nil then
      tfrm_relatorio.Create(nil).Comanda(SQL_NFCECODIGO_VENDA.AsString).Close;
end;

procedure TFrm_consul_nfce.InicioMes;
var
  Aux: string;
begin
  Aux := '01/' + FormatDateTime('mm', date) + '/' + FormatDateTime('yyyy', date);
  edt_periodo_inicio.date := StrToDate(Aux);
  edt_periodo_fim.date := date;
  CB_MES.Text := '';
end;

procedure TFrm_consul_nfce.InutilizarNFCE;
begin
  if (DBGrid1.SelectedIndex <> 0) and (SQL_NFCE.RecordCount <> 0) then
  begin
    if WnConfirmacao('NFCe', slinebreak + slinebreak + 'Deseja inutilizar NFC-e?') then
    begin

      Frm_ConfNfce := TFrm_ConfNfce.Create(nil);
      //Frm_ConfNfce.InutilizarUnicaNfce(SQL_NFCE, true, true);
      Frm_ConfNfce.InutilizarUnicaNfce(SQL_NFCE, true, false);
      BuscarNFCe;
    end;
  end
  else
    WNAlerta('NFCe', slinebreak + slinebreak + 'Selecione uma NFCe!')
end;

procedure TFrm_consul_nfce.InutilizarSelecao;
begin
  if (edt_periodo_inicio.date = NullDate) or (edt_periodo_fim.date = NullDate) then
  begin
    WNAlerta('NFCe', slinebreak + slinebreak + 'Por favor Selecione um período válido para inutilizar as Notas Fiscais!');
    Exit;
  end
  else
  begin
    Frm_ConfNfce := TFrm_ConfNfce.Create(nil);
    Frm_ConfNfce.InutilizarFaixaNFCE(edt_periodo_inicio.date, edt_periodo_fim.date);
    BuscarNFCe;
    Frm_ConfNfce.free;
  end;
end;

procedure TFrm_consul_nfce.popcornPopup(Sender: TObject);
begin
  impComanda.Visible := TParametros_Venda.Comanda.enabled;
end;

procedure TFrm_consul_nfce.SalvarXMLPDF;
var
  Arquivo: TStringList;
  Caminho: string;
begin
  if DBGrid1.SelectedIndex <> 0 then
  begin
    Arquivo := TStringList.Create;
    Arquivo.LoadFromFile(SQL_NFCECAMINHO_XML.Value);
    Caminho := GetEnvironmentVariable('USERPROFILE') + '\Desktop\NFCe - ' + IntToStr(SQL_NFCECODIGO.Value) + '.xml';
    Arquivo.SaveToFile(Caminho);
    Wninfo('NFCe', slinebreak + slinebreak + 'XML da NFCe-e ' + IntToStr(SQL_NFCECODIGO.Value) + ' foi salva na área de trabalho!');
    Arquivo.destroy;
  end
  else
    WNAlerta('NFCe', slinebreak + slinebreak + 'Selecione uma NFCe!')
end;

procedure TFrm_consul_nfce.StatusServico;
begin
  Frm_ConfNfce := TFrm_ConfNfce.Create(nil);
  Frm_ConfNfce.configurarcomponente;
  Frm_ConfNfce.StatusServico;
  Frm_ConfNfce.Close;
end;

procedure TFrm_consul_nfce.TransmitirNFCE(CONSULTANFCE: TFDQuery; RetornaMensagem: Boolean);
var
  data_emissao: tdatetime;
  qry: TFDQuery;
  procedure enviar_nfce;
  begin
    with CONSULTANFCE do
    begin
      Frm_ConfNfce := TFrm_ConfNfce.Create(nil);
      with Frm_ConfNfce do
      begin
        configurarcomponente;
        SQL_VENDA.Close;
        SQL_VENDA.parambyname('pcodigo').Value := FieldByName('CODIGO_VENDA').Value;
        SQL_VENDA.open;
        SQL_VENDA_PAGAMENTO.Close;
        SQL_VENDA.parambyname('pcodigo').Value := FieldByName('CODIGO_VENDA').Value;
        SQL_VENDA_PAGAMENTO.open;
        SQL_VENDA_ITEM.Close;
        SQL_VENDA.parambyname('pcodigo').Value := FieldByName('CODIGO_VENDA').Value;
        SQL_VENDA_ITEM.open;
        m_operador := emptystr;
        m_caixa := emptystr;
        ValorPago := emptystr;
        Troco := emptystr;
        TotalVenda := emptystr;
        m_cliente_nome := emptystr;
        m_cliente_cpfcnpj := emptystr;
        m_cliente_ie := emptystr;
        m_cliente_telefone := emptystr;
        m_codigo_venda := FieldByName('CODIGO_VENDA').AsString;
        qry := simplequery('SELECT OPERADOR,CAIXA, NOME_CLIENTE, CPF_CLIENTE, IE_CLIENTE, TELEFONE_CLIENTE FROM VENDA WHERE CODIGO_VENDA = "' + m_codigo_venda + '"');

        m_operador := qry.Fields[0].AsString;
        m_caixa := qry.Fields[1].AsString;
        m_cliente_nome := qry.Fields[2].AsString;
        m_cliente_cpfcnpj := qry.Fields[3].AsString;
        m_cliente_ie := qry.Fields[4].AsString;
        m_cliente_telefone := qry.Fields[5].AsString;

        ValorPago := FieldByName('VALOR_PAGO').AsString;
        Troco := FieldByName('TROCO').AsString;
        TotalVenda := FieldByName('VALOR_NFCE').AsString;
        DeletarXMLPendente(FieldByName('CAMINHO_XML').Value);
        data_emissao := FieldByName('DATA_EMISSAO').AsDateTime;
        IF FieldByName('TIPO_EMISSAO').AsString = 'CONTINGENCIA' THEN
          replacetime(data_emissao, FieldByName('HORA_EMISSAO').AsDateTime)
        else
          replacetime(data_emissao, now);
        FinalizarNFCE(false, FieldByName('CODIGO').Value, false, data_emissao, FieldByName('TIPO_EMISSAO').AsString, true,true,true, FieldByName('cNF').AsInteger);
      end;
    end;
  end;

var
  RetornoXML, Status, tp_emissao: string;
begin
  with CONSULTANFCE do
  begin
    if FieldByName('STATUS_NFCE').Value = 'PENDENTE' then
      if (DBGrid1.SelectedIndex <> 0) or (CONSULTANFCE.RecordCount <> 0) then
      begin
        if FieldByName('TIPO_EMISSAO').AsString = 'CONTINGENCIA' then
          enviar_nfce
        else
        begin
          if comparedate(FieldByName('DATA_EMISSAO').AsDateTime, date) < 0 then { dias }
            WNAlerta('Transmitir NFC-e', slinebreak + 'Notas pendentes devem ser transmitidas apenas no dia que foram emitidas!')
          else
            enviar_nfce;
        end;
        BuscarNFCe;
        Frm_ConfNfce.Close;
      end
      else
        WNAlerta('NFCe', slinebreak + slinebreak + 'Selecione uma NFCe!')
    else
      Wninfo('NFCe', slinebreak + slinebreak + 'NFC-e já foi transmitida!');
  end;
end;

function TFrm_consul_nfce.VerificarConexao: Boolean;
begin
  if not tparametros_nf.EmissaoNormal then
  begin
    WNAlerta('Status Conexão', slinebreak + slinebreak + 'Falha na conexão de internet');
    result := false;
  end
  else
    result := true;
end;

procedure TFrm_consul_nfce.VisualizarDANFCE;
var
  XML: WideString;
  qry: TFDQuery;
begin
  if DBGrid1.SelectedIndex <> 0 then
  begin
    qry := simplequery('SELECT ESTADO FROM EMPRESA');
    if qry <> nil then
    begin
      Frm_ConfNfce := TFrm_ConfNfce.Create(nil);
      Frm_ConfNfce.configurarcomponente;
      Frm_ConfNfce.spdNFCe.UF := qry.Fields[0].AsString;
      Frm_ConfNfce.PagamentoTroco(formatartag(SQL_NFCEVALOR_PAGO.Value), formatartag(SQL_NFCETROCO.Value));
      XML := Frm_ConfNfce.LoadXmlDestinatarioCont(SQL_NFCECAMINHO_XML.Value);
      if (SQL_NFCESTATUS_NFCE.Value = 'AUTORIZADA') then
        Frm_ConfNfce.spdNFCe.VisualizarDANFCE(SQL_NFCELOTE.Value, XML, Frm_ConfNfce.spdNFCe.DanfceSettings.ModeloDanfce)
      else
        Frm_ConfNfce.spdNFCe.PreverDanfce(XML, Frm_ConfNfce.spdNFCe.DanfceSettings.ModeloDanfce);
      Frm_ConfNfce.Close;
    end
    else
      WNAlerta('Visualizar Danfe', slinebreak + 'UF da empresa não informado no cadastro!');
  end
  else
    WNAlerta('NFCe', slinebreak + slinebreak + 'Selecione uma NFCe!');
end;

end.
