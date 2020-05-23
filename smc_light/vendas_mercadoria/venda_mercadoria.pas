unit venda_mercadoria;

interface

uses
  Winapi.Windows, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms,
  cxEdit, cxDateUtils,
  Vcl.Menus,
  FireDAC.Stan.Param,

  Data.DB, FireDAC.Comp.DataSet, FireDAC.Comp.Client, Vcl.ExtCtrls,
  Vcl.StdCtrls, cxCheckBox, cxDropDownEdit,
  cxCalendar, Vcl.Grids, Vcl.DBGrids,

  DateUtils, v_env, S_Module, cxGraphics, cxControls, cxLookAndFeels, cxLookAndFeelPainters, cxContainer, Vcl.ComCtrls, dxCore, dxSkinsCore,
  dxSkinBlack, dxSkinBlue,
  dxSkinBlueprint, dxSkinCaramel,
  dxSkinCoffee, dxSkinDarkRoom, dxSkinDarkSide, dxSkinDevExpressDarkStyle, dxSkinDevExpressStyle, dxSkinFoggy, dxSkinGlassOceans,
  dxSkinHighContrast, dxSkiniMaginary, dxSkinLilian,
  dxSkinLiquidSky,
  dxSkinLondonLiquidSky, dxSkinMcSkin, dxSkinMetropolis, dxSkinMetropolisDark, dxSkinMoneyTwins, dxSkinOffice2007Black,
  dxSkinOffice2007Blue, dxSkinOffice2007Green,
  dxSkinOffice2007Pink,
  dxSkinOffice2007Silver, dxSkinOffice2010Black, dxSkinOffice2010Blue, dxSkinOffice2010Silver, dxSkinOffice2013DarkGray,
  dxSkinOffice2013LightGray, dxSkinOffice2013White,
  dxSkinOffice2016Colorful,
  dxSkinOffice2016Dark, dxSkinPumpkin, dxSkinSeven, dxSkinSevenClassic, dxSkinSharp, dxSkinSharpPlus, dxSkinSilver, dxSkinSpringTime,
  dxSkinStardust, dxSkinSummer2008,
  dxSkinTheAsphaltWorld,
  dxSkinsDefaultPainters, dxSkinValentine, dxSkinVisualStudio2013Blue, dxSkinVisualStudio2013Dark, dxSkinVisualStudio2013Light,
  dxSkinVS2010, dxSkinWhiteprint, dxSkinXmas2008Blue,
  FireDAC.Stan.Intf,
  FireDAC.Stan.Option, FireDAC.Stan.Error, FireDAC.DatS, FireDAC.Phys.Intf, FireDAC.DApt.Intf, FireDAC.Stan.Async, FireDAC.DApt, cxTextEdit,
  cxMaskEdit, S_Parametros_Venda, h_DB,
  relatorios, h_Dialogs;

type
  TFrm_Venda_Mercadoria = class(TForm)
    GroupBox2: TGroupBox;
    GroupBox6: TGroupBox;
    Label7: TLabel;
    Label8: TLabel;
    edt_venda_inicio: TEdit;
    GroupBox1: TGroupBox;
    Label1: TLabel;
    Label2: TLabel;
    Label3: TLabel;
    edt_periodo_inicio: TcxDateEdit;
    edt_periodo_fim: TcxDateEdit;
    GroupBox3: TGroupBox;
    chk_fechadas: TcxCheckBox;
    chk_canceladas: TcxCheckBox;
    chk_abertas: TcxCheckBox;
    Label5: TLabel;
    lbl_qtde: TLabel;
    SQL_VENDAS: TFDQuery;
    DS_VENDAS: TDataSource;
    GroupBox4: TGroupBox;
    edt_consulta: TEdit;
    DBGrid1: TDBGrid;
    popcorn: TPopupMenu;
    DetalhesdaVenda1: TMenuItem;
    ImprimirComprovante: TMenuItem;
    mniCancelarVenda: TMenuItem;
    ReativarVenda: TMenuItem;
    mniAbrirNFCE: TMenuItem;
    edt_venda_fim: TEdit;
    GroupBox7: TGroupBox;
    chk_nfce: TcxCheckBox;
    cxCheckBox6: TcxCheckBox;
    mniEmitirNFCE: TMenuItem;
    mniFecharVenda: TMenuItem;
    DuplicarVenda1: TMenuItem;
    GroupBox8: TGroupBox;
    chk_venda: TcxCheckBox;
    chk_data: TcxCheckBox;
    chk_status: TcxCheckBox;
    Label4: TLabel;
    lbl_venda_nfce: TLabel;
    CB_MES: TcxComboBox;
    SQL_VENDASCODIGO_VENDA: TFDAutoIncField;
    SQL_VENDASDATA: TDateField;
    SQL_VENDASHORA: TTimeField;
    SQL_VENDASCAIXA: TStringField;
    SQL_VENDASOPERADOR: TStringField;
    SQL_VENDASVENDEDOR: TStringField;
    SQL_VENDASNOME_CLIENTE: TStringField;
    SQL_VENDASTOTAL_VENDA: TBCDField;
    SQL_VENDASVALOR_PAGO: TBCDField;
    SQL_VENDASSTATUS: TStringField;
    SQL_VENDASCOD_NFCE: TStringField;
    Shape1: TShape;
    Shape2: TShape;
    Shape3: TShape;
    cb_filtro: TcxComboBox;
    Label6: TLabel;
    SQL_VENDASTROCO: TBCDField;
    SQL_VENDAScomanda: TIntegerField;
    impComanda: TMenuItem;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
    procedure DBGrid1DrawColumnCell(Sender: TObject; const Rect: TRect; DataCol: Integer; Column: TColumn; State: TGridDrawState);
    procedure BuscarVenda;
    procedure InicioMes;
    procedure FormShow(Sender: TObject);
    procedure cb_mesClick(Sender: TObject);
    procedure LimparData(boodata: boolean);
    procedure cb_mesEnter(Sender: TObject);
    procedure edt_periodo_inicioClick(Sender: TObject);
    procedure edt_periodo_inicioEnter(Sender: TObject);
    procedure edt_periodo_fimEnter(Sender: TObject);
    procedure edt_periodo_fimClick(Sender: TObject);
    procedure chk_vendaPropertiesChange(Sender: TObject);
    procedure chk_dataPropertiesChange(Sender: TObject);
    procedure chk_statusPropertiesChange(Sender: TObject);
    procedure ImprimirComprovanteClick(Sender: TObject);
    procedure ImprimirComp;
    procedure DBGrid1DblClick(Sender: TObject);
    procedure DetalhesdaVenda1Click(Sender: TObject);
    procedure DetalhesVenda;
    procedure mniFecharVendaClick(Sender: TObject);
    procedure FecharVenda;
    procedure mniCancelarVendaClick(Sender: TObject);
    procedure CancelarVenda;
    procedure AbrirNfce;
    procedure mniAbrirNFCEClick(Sender: TObject);
    procedure EmitirNFCE;
    procedure mniEmitirNFCEClick(Sender: TObject);
    procedure DuplicarVenda1Click(Sender: TObject);
    procedure DuplicarVenda;
    procedure ReativarVendaClick(Sender: TObject);
    procedure chk_fechadasPropertiesChange(Sender: TObject);
    procedure chk_nfcePropertiesChange(Sender: TObject);
    procedure edt_periodo_inicioPropertiesEditValueChanged(Sender: TObject);
    procedure edt_venda_inicioKeyUp(Sender: TObject; var Key: Word; Shift: TShiftState);
    procedure edt_consultaKeyUp(Sender: TObject; var Key: Word; Shift: TShiftState);
    procedure impComandaClick(Sender: TObject);
    procedure popcornPopup(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Frm_Venda_Mercadoria: TFrm_Venda_Mercadoria;

implementation

{$R *.dfm}

uses u_funcoes, U_ConfNFCE, visualizar_venda,
  liberacao, visualizar_nfc_e;

procedure TFrm_Venda_Mercadoria.AbrirNfce;
begin
  if SQL_VENDASCOD_NFCE.Value <> '0' then
  begin
    FRM_visualizar_nfc_e := TFRM_visualizar_nfc_e.Create(nil);
    with FRM_visualizar_nfc_e.SQL_NFCE do
    begin
      Close;
      parambyname('pcodigo').Value := SQL_VENDASCOD_NFCE.Value;
      open;
    end;
    with FRM_visualizar_nfc_e.SQL_NFCE_ITENS do
    begin
      Close;
      parambyname('pcodigo').Value := SQL_VENDASCOD_NFCE.Value;
      open;
    end;
    with FRM_visualizar_nfc_e.SQL_NFCE_PAGAMENTOS do
    begin
      Close;
      parambyname('pcodigo').Value := SQL_VENDASCOD_NFCE.Value;
      open;
    end;
    FRM_visualizar_nfc_e.ShowModal;
    FRM_visualizar_nfc_e.free;
  end
  else
    Application.Messagebox('Venda sem NFC-e!', 'Consultar Venda', mb_iconinformation + mb_ok)
end;

procedure TFrm_Venda_Mercadoria.BuscarVenda;
var
  StatusVenda, DataInicio, DataFim, MesInicio, MesFim, VendaInicio, Consulta, VendaFim, FaixaVenda, ordem, PossuiNFCE, InfoManual,
    DataFaixa: string;
begin
  if (chk_fechadas.checked) or (chk_canceladas.checked) or (chk_abertas.checked) then
  begin
    if chk_fechadas.checked then
      StatusVenda := '"FECHADA"';
    if chk_abertas.checked then
      if StatusVenda.IsEmpty then
        StatusVenda := '"ABERTA"'
      else
        StatusVenda := StatusVenda + ',' + '"ABERTA"';
    if chk_canceladas.checked then
      if StatusVenda.IsEmpty then
        StatusVenda := '"CANCELADA"'
      else
        StatusVenda := StatusVenda + ',' + '"CANCELADA"';
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
    if edt_venda_inicio.Text <> '' then
    begin
      VendaInicio := edt_venda_inicio.Text;
    end;
    if edt_venda_fim.Text <> '' then
    begin
      VendaFim := edt_venda_fim.Text;
    end;
    Consulta := 'SELECT v.CODIGO_VENDA, V.DATA, V.HORA, V.CAIXA,(SELECT U.USUARIO FROM USUARIO U WHERE U.CODIGO = V.OPERADOR) AS OPERADOR, '
      + '(SELECT C.NOME FROM COLABORADOR C WHERE C.CODIGO = V.COD_VENDEDOR) AS VENDEDOR, V.NOME_CLIENTE, V.TOTAL_VENDA,V.TROCO, V.VALOR_PAGO,V.STATUS,V.COD_NFCE,v.COMANDA '
      + 'FROM VENDA V  WHERE V.STATUS in (' + StatusVenda + ') ';
    if (DataInicio <> '') and (DataFim <> '') then
      DataFaixa := ' AND v.DATA BETWEEN ' + QuotedStr(DataInicio) + ' AND ' + QuotedStr(DataFim);
    if (MesInicio <> '') and (MesFim <> '') then
      DataFaixa := ' AND v.DATA BETWEEN ' + QuotedStr(MesInicio) + ' AND ' + QuotedStr(MesFim);
    if (VendaInicio <> '') then
      FaixaVenda := ' AND v.CODIGO_VENDA = ' + QuotedStr(VendaInicio);
    if (VendaFim <> '') then
      FaixaVenda := ' AND v.CODIGO_VENDA = ' + QuotedStr(VendaFim);
    if (VendaInicio <> '') AND (VendaFim <> '') then
      FaixaVenda := ' AND v.CODIGO_VENDA BETWEEN ' + QuotedStr(VendaInicio) + ' AND ' + QuotedStr(VendaFim);
    if chk_nfce.checked then
      lbl_venda_nfce.Caption := simplequery('SELECT COUNT(*) FROM VENDA v WHERE v.COD_NFCE <> "0"' + DataFaixa + FaixaVenda + InfoManual)
        .Fields[0].AsString
    else if not chk_nfce.checked then
    begin
      PossuiNFCE := ' AND v.COD_NFCE = "0"';
      lbl_venda_nfce.Caption := '0';
    end;
    if chk_venda.checked then
      ordem := ' ORDER BY v.CODIGO_VENDA';
    if chk_data.checked then
      ordem := ' ORDER BY v.DATA';
    if chk_status.checked then
      ordem := ' ORDER BY v.STATUS';

    if edt_consulta.Text <> emptystr then
      case cb_filtro.SelectedItem of
        0:
          InfoManual := ' AND v.NOME_CLIENTE like "' + edt_consulta.Text + '%"';
        1:
          InfoManual := ' AND v.CAIXA like "' + edt_consulta.Text + '%"';
        2:
          InfoManual := ' AND V.OPERADOR = (select u.codigo from usuario u where u.usuario like "' + edt_consulta.Text + '%")';
        3:
          InfoManual := ' AND v.COD_VENDEDOR = (select u.codigo from usuario u where u.usuario like "' + edt_consulta.Text + '%")';
        4:
          InfoManual := ' AND v.COMANDA like "' + edt_consulta.Text + '%"';
      end;

    Consulta := Consulta + DataFaixa + FaixaVenda + InfoManual + PossuiNFCE + ordem;
    with SQL_VENDAS do
    begin
      Close;
      SQL.Clear;
      SQL.Add(Consulta);
      open;
      SQL_VENDAS.FetchAll;
      lbl_qtde.Caption := IntToStr(RecordCount);
      last;
    end;
  end
  else
    wnalerta('Consultar Venda', slinebreak + 'Você deve selecionar um status!');
end;

procedure TFrm_Venda_Mercadoria.mniAbrirNFCEClick(Sender: TObject);
begin
  AbrirNfce;
end;

procedure TFrm_Venda_Mercadoria.mniCancelarVendaClick(Sender: TObject);
begin
  CancelarVenda;
end;

procedure TFrm_Venda_Mercadoria.mniEmitirNFCEClick(Sender: TObject);
begin
  EmitirNFCE;
end;

procedure TFrm_Venda_Mercadoria.CancelarVenda;
  procedure rottCancVendaNFCEAuto; { Rotina para cancelar uma venda com NFC-e autorizada | irá movimentar estoque }
  var
    qry_tmp: TFDQuery;
    DataHora: tdatetime;
    StatusVenda: String;
  begin
    if SQL_VENDASCOD_NFCE.Value <> '0' then { tem nota }
    begin
      if Application.Messagebox(StringToOleStr('Ao cancelar a venda, a nota fiscal ' + SQL_VENDASCOD_NFCE.Value + ' será cancelada. ' +
        slinebreak + 'Deseja Proseguir ?'), 'Cancelar Venda', MB_YESNO + mb_iconinformation) = ID_YES then
      begin
        qry_tmp := simplequery('SELECT * FROM NFCE WHERE CODIGO_VENDA = ' + QuotedStr(SQL_VENDASCODIGO_VENDA.AsString));
        if qry_tmp <> nil then
        begin
             DataHora := qry_tmp.fieldbyname('DATA_EMISSAO').AsDateTime;
             DataHora := DataHora + qry_tmp.fieldbyname('HORA_TRANSMISSAO').AsDateTime;
             if DataHora <= (now - 1) then
             begin
               Application.Messagebox
                 (StringToOleStr
                 ('Prazo máximo estipulado por lei (24h partindo do momento da emissão) para cancelamento de NFC-e autorizada foi excedido!' +
                 slinebreak + 'Operação de cancelamento de NFCe será abortada!'), 'Cancelando NFC-e', mb_ok + mb_iconerror);

                 SQL_VENDAS.Edit;
                 SQL_VENDASSTATUS.Value := 'CANCELADA';
                 SQL_VENDAS.post;
                 movimentarestoque(false, SQL_VENDASCODIGO_VENDA.AsString);
                 movimentarcaixa;
                 Application.Messagebox('Venda cancelada com sucesso!', 'Fechar Venda', mb_ok + mb_iconinformation);
               exit;
             end
             else
             begin
               Frm_ConfNfce := TFrm_ConfNfce.Create(nil);
               Frm_ConfNfce.CancelarNFCE(qry_tmp, false);
               Frm_ConfNfce.free;
               Application.Messagebox('Venda cancelada com sucesso!', 'Fechar Venda', mb_ok + mb_iconinformation);
             end;
        end
        else
        begin
             SQL_VENDAS.Edit;
             SQL_VENDASSTATUS.Value := 'CANCELADA';
             SQL_VENDAS.post;
             movimentarestoque(false, SQL_VENDASCODIGO_VENDA.AsString);
             movimentarcaixa;
             Application.Messagebox('Venda cancelada com sucesso!', 'Fechar Venda', mb_ok + mb_iconinformation);
        end;
      end
      else
        exit;
    end
    else
    begin
      SQL_VENDAS.Edit;
      SQL_VENDASSTATUS.Value := 'CANCELADA';
      SQL_VENDAS.post;
      movimentarestoque(false, SQL_VENDASCODIGO_VENDA.AsString);
      movimentarcaixa;
      Application.Messagebox('Venda cancelada com sucesso!', 'Fechar Venda', mb_ok + mb_iconinformation);
    end;

  end;

  procedure rottCancVendaAbertaNFCEPend;
  { Rotina para cancelar uma venda aberta com NFC-e pendente | não movimentará estoque, inutilizará a nota }
  var
    qry_tmp: TFDQuery;
    DataHora: tdatetime;
  begin
    if SQL_VENDASCOD_NFCE.Value <> '0' then { tem nota }
    begin
      if Application.Messagebox(StringToOleStr('Ao cancelar a venda, a nota fiscal ' + SQL_VENDASCOD_NFCE.Value + ' será inutilizada. ' +
        slinebreak + 'Deseja Proseguir ?'), 'Cancelar Venda', MB_YESNO + mb_iconinformation) = ID_YES then
      begin
        Frm_ConfNfce := TFrm_ConfNfce.Create(nil);
        qry_tmp := TFDQuery.Create(nil);
        with qry_tmp do
        begin
          connection := SQL_VENDAS.connection;
          Close;
          SQL.Clear;
          SQL.Add('SELECT * FROM NFCE WHERE CODIGO_VENDA = ' + QuotedStr(IntToStr(SQL_VENDASCODIGO_VENDA.Value)));
          open;
        end;
        Frm_ConfNfce.InutilizarUnicaNFCE(qry_tmp, true, false);
        Frm_ConfNfce.destroy;
      end;
    end;
    SQL_VENDAS.Edit;
    SQL_VENDASSTATUS.Value := 'CANCELADA';
    SQL_VENDAS.post;
    Application.Messagebox('Venda cancelada com sucesso!', 'Fechar Venda', mb_ok + mb_iconinformation);
  end;

const
  PrazoMaximo = 3;

begin
  if DBGrid1.SelectedIndex <> 0 then
    if (SQL_VENDASSTATUS.Value <> 'CANCELADA') then
    begin
      if Application.Messagebox(StringToOleStr('Deseja cancelar venda ' + IntToStr(SQL_VENDASCODIGO_VENDA.Value) + ' ?'), 'Fechar Venda',
        MB_YESNO + mb_iconinformation) = ID_YES then
      begin
        if TFrm_liberacao.Execute then
        begin
          if SQL_VENDASSTATUS.Value = 'FECHADA' then
          begin
            if (SQL_VENDASDATA.Value < (date - PrazoMaximo)) then
            begin
              if Application.Messagebox
                ('Prazo máximo de 3 dias para cancelamento da venda foi excedido! Deseja continuar o processo como administrador?',
                'Cancelar Venda', MB_YESNO + MB_ICONWARNING) = ID_YES then
              begin
                if not TEnv.Tuser.IsAdmin then
                begin
                  if TFrm_liberacao.Execute then
                  begin
                    rottCancVendaNFCEAuto;
                  end;
                end
                else
                begin
                  rottCancVendaNFCEAuto;
                end;
              end;
            end
            else
              rottCancVendaNFCEAuto;
          end
          else
          begin
            rottCancVendaAbertaNFCEPend;
          end;
        end;
      end;
      BuscarVenda;
    end
    else
      Application.Messagebox('Apenas vendas abertas e fechadas podem ser canceladas!', 'Fechar Venda', mb_ok + MB_ICONWARNING);
end;

procedure TFrm_Venda_Mercadoria.cb_mesClick(Sender: TObject);
begin
  LimparData(true);
end;

procedure TFrm_Venda_Mercadoria.cb_mesEnter(Sender: TObject);
begin
  LimparData(true);
end;

procedure TFrm_Venda_Mercadoria.chk_dataPropertiesChange(Sender: TObject);
begin
  AlteraChecks(chk_data, [chk_venda, chk_status]);
  BuscarVenda;
end;

procedure TFrm_Venda_Mercadoria.chk_fechadasPropertiesChange(Sender: TObject);
begin
  BuscarVenda;
end;

procedure TFrm_Venda_Mercadoria.chk_nfcePropertiesChange(Sender: TObject);
begin
  BuscarVenda;
end;

procedure TFrm_Venda_Mercadoria.chk_statusPropertiesChange(Sender: TObject);
begin
  AlteraChecks(chk_status, [chk_venda, chk_data]);
  BuscarVenda;
end;

procedure TFrm_Venda_Mercadoria.chk_vendaPropertiesChange(Sender: TObject);
begin
  AlteraChecks(chk_venda, [chk_data, chk_status]);
  BuscarVenda;
end;

procedure TFrm_Venda_Mercadoria.DBGrid1DblClick(Sender: TObject);
begin
  DetalhesVenda;
end;

procedure TFrm_Venda_Mercadoria.DBGrid1DrawColumnCell(Sender: TObject; const Rect: TRect; DataCol: Integer; Column: TColumn;
  State: TGridDrawState);
begin
  GridZebrado(DBGrid1, Rect, DataCol, Column, State);
  ColorirStatusGrid(DBGrid1, Rect, DataCol, Column, State, [clWebDarkgreen, clWebCrimson, clWebOrange, clWebGray],
    ['FECHADA', 'CANCELADA', 'ABERTA'], SQL_VENDASSTATUS);
  inherited;
  MostrarBarraLateralGrid(DBGrid1, true, true);
end;

procedure TFrm_Venda_Mercadoria.DetalhesdaVenda1Click(Sender: TObject);
begin
  DetalhesVenda;
end;

procedure TFrm_Venda_Mercadoria.DetalhesVenda;
begin
  if DBGrid1.SelectedIndex <> 0 then
  begin
    frm_visualizar_venda := Tfrm_visualizar_venda.Create(nil, SQL_VENDASCODIGO_VENDA.asinteger);
    frm_visualizar_venda.ShowModal;
    frm_visualizar_venda.free;
    //Wander, 06/03/2020:
    //Chamar BuscaVenda causa efeitos indesejáveis:
    //a) Desposiciona o registro corrente no grid
    //   Obs: É possível contornar isto usando ponteiros
    //b) Causa uma demora pois recarrega todos os registros novamente
    //
    //Para evitar estes efeitos, comente a linha abaixo:
    //
    BuscarVenda;
  end;
end;

procedure TFrm_Venda_Mercadoria.DuplicarVenda;
var
  cod_sequencia, i: Integer;
  cod_venda, campo: string;
  qry_tmp, qry_cadastro: TFDQuery;
begin
  begin
    qry_tmp := TFDQuery.Create(nil);
    qry_tmp.connection := module.connection;
    qry_cadastro := TFDQuery.Create(nil);
    qry_cadastro.connection := module.connection;
    with qry_tmp do
    begin
      SQL.Clear;
      SQL.Add('SELECT * FROM VENDA WHERE CODIGO_VENDA = :pcodigo');
      parambyname('pcodigo').Value := SQL_VENDASCODIGO_VENDA.Value;
      open;
    end;
    with qry_cadastro do
    begin
      Close;
      SQL.Clear;
      SQL.Add('SELECT * FROM VENDA');
      open;
      Active := true;
      insert;
      for i := 0 to Pred(qry_cadastro.Fields.count) do
      begin
        campo := qry_cadastro.Fields[i].FieldName;
        fieldbyname(campo).Value := qry_tmp.fieldbyname(campo).Value;
      end;
      cod_sequencia := fieldbyname('CODIGO_VENDA').asinteger;
      fieldbyname('DATA').Value := date;
      fieldbyname('HORA').Value := now;
      fieldbyname('STATUS').Value := 'ABERTA';
      post;
      Application.Messagebox('Venda Duplicada com sucesso!', 'Duplicar Venda', mb_ok + mb_iconinformation);
      BuscarVenda;
    end;
  end;

end;

procedure TFrm_Venda_Mercadoria.DuplicarVenda1Click(Sender: TObject);
begin
  manworking;
end;

procedure TFrm_Venda_Mercadoria.edt_consultaKeyUp(Sender: TObject; var Key: Word; Shift: TShiftState);
begin
  BuscarVenda
end;

procedure TFrm_Venda_Mercadoria.edt_periodo_fimClick(Sender: TObject);
begin
  LimparData(false)
end;

procedure TFrm_Venda_Mercadoria.edt_periodo_fimEnter(Sender: TObject);
begin
  LimparData(false)
end;

procedure TFrm_Venda_Mercadoria.edt_periodo_inicioClick(Sender: TObject);
begin
  LimparData(false);
end;

procedure TFrm_Venda_Mercadoria.edt_periodo_inicioEnter(Sender: TObject);
begin
  LimparData(false)
end;

procedure TFrm_Venda_Mercadoria.edt_periodo_inicioPropertiesEditValueChanged(Sender: TObject);
begin
  if TcxComboBox(Sender).Text <> emptystr then
  begin
    TcxComboBox(Sender).ValidateEdit(false);
    BuscarVenda;
  end;
end;

procedure TFrm_Venda_Mercadoria.edt_venda_inicioKeyUp(Sender: TObject; var Key: Word; Shift: TShiftState);
begin
  if TEdit(Sender).Text <> emptystr then
    BuscarVenda;
end;

procedure TFrm_Venda_Mercadoria.EmitirNFCE;

  procedure __emitir_nfce;
  begin
    if Application.Messagebox(StringToOleStr('Deseja Emitir NFC-e da venda ' + SQL_VENDASCODIGO_VENDA.AsString + ' ?'), 'Emitir NFC-e',
      MB_YESNO + mb_iconinformation) = ID_YES then
    begin
      Frm_ConfNfce := TFrm_ConfNfce.Create(nil);
      Frm_ConfNfce.InformarDadosInternos(SQL_VENDASCODIGO_VENDA.AsString, SQL_VENDASVALOR_PAGO.AsString, SQL_VENDASTROCO.AsString,
        SQL_VENDASTOTAL_VENDA.AsString);
      Frm_ConfNfce.FinalizarNFCE(false, '', false, 0, '', false, false);
      Frm_ConfNfce.free;
      BuscarVenda;
    end;
  end;

begin
  if SQL_VENDASSTATUS.Value = 'FECHADA' then { tem nota }
  begin
    if SQL_VENDASCOD_NFCE.AsString <> '0' then
    begin
      if simplequery('SELECT STATUS_NFCE FROM NFCE WHERE CODIGO = "' + SQL_VENDASCOD_NFCE.AsString + '"').Fields[0].Text = 'AUTORIZADA' then
        Application.Messagebox('NFC-e já foi emitida!', 'Emitir NFC-e', mb_ok + mb_iconinformation)
      else
        __emitir_nfce
    end
    else
      __emitir_nfce;
  end
  else if SQL_VENDASSTATUS.Value = 'ABERTA' then
  begin
    FecharVenda;
    __emitir_nfce;
  end;

end;

procedure TFrm_Venda_Mercadoria.mniFecharVendaClick(Sender: TObject);
begin
  FecharVenda;
end;

procedure TFrm_Venda_Mercadoria.popcornPopup(Sender: TObject);
begin
  impComanda.Visible := tparametros_venda.Comanda.Enabled;
end;

procedure TFrm_Venda_Mercadoria.ReativarVendaClick(Sender: TObject);
begin
  manworking;
end;

procedure TFrm_Venda_Mercadoria.FecharVenda;
var
  StatusVenda: string;
  function rottFecharVendaNFCE: boolean;
  { Rotina para fechar uma venda com NFC-e pendente | irá movimentar estoque }
  var
    xqry_tmp: TFDQuery;
    RetornoXML, Retorno_NFCE: String;
    data_emissao: tdatetime;

    procedure gerar_nfce;
    begin
      result := true;
      if Application.Messagebox(StringToOleStr('Ao fechar venda, a nota fiscal ' + SQL_VENDASCOD_NFCE.Value +
        ' será transmitida para validação. ' + slinebreak + 'Deseja Proseguir ?'), 'Fechar Venda', MB_YESNO + mb_iconinformation) = ID_YES
      then
      begin
        Frm_ConfNfce := TFrm_ConfNfce.Create(nil);
        xqry_tmp := simplequery('SELECT * FROM NFCE WHERE CODIGO_VENDA = ' + QuotedStr(IntToStr(SQL_VENDASCODIGO_VENDA.Value)));
        if xqry_tmp <> nil then
          with xqry_tmp do
          begin
            Frm_ConfNfce := TFrm_ConfNfce.Create(nil);
            with Frm_ConfNfce do
            begin
              configurarcomponente;
              SQL_VENDA.Close;
              SQL_VENDA.parambyname('pcodigo').Value := fieldbyname('CODIGO_VENDA').Value;
              SQL_VENDA.open;
              SQL_VENDA_PAGAMENTO.Close;
              SQL_VENDA.parambyname('pcodigo').Value := fieldbyname('CODIGO_VENDA').Value;
              SQL_VENDA_PAGAMENTO.open;
              SQL_VENDA_ITEM.Close;
              SQL_VENDA.parambyname('pcodigo').Value := fieldbyname('CODIGO_VENDA').Value;
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
              m_codigo_venda := fieldbyname('CODIGO_VENDA').AsString;
              m_operador := fieldbyname('OPERADOR').AsString;
              m_caixa := fieldbyname('CAIXA').AsString;
              ValorPago := fieldbyname('VALOR_PAGO').AsString;
              Troco := fieldbyname('TROCO').AsString;
              TotalVenda := fieldbyname('VALOR_NFCE').AsString;
              m_cliente_nome := fieldbyname('CLIENTE_NOME').AsString;
              m_cliente_cpfcnpj := fieldbyname('CLIENTE_CPF').AsString;
              m_cliente_ie := fieldbyname('CLIENTE_IE').AsString;
              m_cliente_telefone := fieldbyname('CLIENTE_TELEFONE').AsString;
              DeletarXMLPendente(fieldbyname('CAMINHO_XML').Value);
              data_emissao := fieldbyname('DATA_EMISSAO').AsDateTime;
              if comparedate(data_emissao, date) = 0 then { dias }
                data_emissao := now
              else
              begin
                data_emissao := fieldbyname('DATA_EMISSAO').AsDateTime;
                replacetime(data_emissao, fieldbyname('HORA_EMISSAO').AsDateTime);
              end;
              FinalizarNFCE(false, fieldbyname('CODIGO').Value, false, data_emissao, fieldbyname('TIPO_EMISSAO').AsString, true);
              BuscarVenda;
              Frm_ConfNfce.Close;
              Frm_ConfNfce.free;
            end;
          end;
      end;
    end;

  begin
    if SQL_VENDASCOD_NFCE.Value <> '0' then { tem nota }
      gerar_nfce;
  end;

begin
  IF DBGrid1.SelectedIndex <> 0 THEN
    if SQL_VENDASSTATUS.Value = 'ABERTA' then
    begin
      if Application.Messagebox(StringToOleStr('Deseja finalizar venda ' + IntToStr(SQL_VENDASCODIGO_VENDA.Value) + ' ?'), 'Fechar Venda',
        MB_YESNO + mb_iconinformation) = ID_YES then
      begin
        if simplequery('SELECT * FROM VENDA_ITEM WHERE CODIGO_VENDA = ' + QuotedStr(IntToStr(SQL_VENDASCODIGO_VENDA.Value))) = nil then
        begin
          Application.Messagebox('Venda sem ítens inseridos!', 'Fechar Venda', mb_ok + MB_ICONWARNING);
          exit;
        end;
        if simplequery('SELECT * FROM VENDA_PAGAMENTO WHERE CODIGO_VENDA = ' + QuotedStr(IntToStr(SQL_VENDASCODIGO_VENDA.Value))) = nil then
        begin
          Application.Messagebox('Venda sem pagamento!', 'Fechar Venda', mb_ok + MB_ICONWARNING);
          exit;
        end;
      end;
      rottFecharVendaNFCE;
    end
    else
      Application.Messagebox('Apenas vendas abertas podem ser finalizadas!', 'Fechar Venda', mb_ok + MB_ICONWARNING);
end;

procedure TFrm_Venda_Mercadoria.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  Action := cafree;
  self := nil;
end;

procedure TFrm_Venda_Mercadoria.FormKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
begin
  if Key = vk_escape then
    Close;
end;

procedure TFrm_Venda_Mercadoria.FormShow(Sender: TObject);
begin
  InicioMes;
  BuscarVenda;
end;

procedure TFrm_Venda_Mercadoria.impComandaClick(Sender: TObject);
begin
  if tparametros_venda.Comanda.Enabled then
    if tdb.simplequery('select status from venda where codigo_venda = ? and status = "FECHADA"', [SQL_VENDASCODIGO_VENDA.AsString]) <> nil
    then
      tfrm_relatorio.Create(nil).Comanda(SQL_VENDASCODIGO_VENDA.AsString).Close;
end;

procedure TFrm_Venda_Mercadoria.ImprimirComp;
begin
  if not verificaaberta(Frm_ConfNfce) then
    Frm_ConfNfce := TFrm_ConfNfce.Create(nil);
  Frm_ConfNfce.ImprimirComprovante(SQL_VENDASCODIGO_VENDA.AsString, false);
end;

procedure TFrm_Venda_Mercadoria.ImprimirComprovanteClick(Sender: TObject);
begin
  ImprimirComp;
end;

procedure TFrm_Venda_Mercadoria.InicioMes;
var
  Aux: string;
begin
  Aux := '01/' + FormatDateTime('mm', date) + '/' + FormatDateTime('yyyy', date);
  edt_periodo_inicio.date := StrToDate(Aux);
  edt_periodo_fim.date := date;
  CB_MES.Text := '';
end;

procedure TFrm_Venda_Mercadoria.LimparData(boodata: boolean);
begin
  if (boodata) then
  begin
    edt_periodo_inicio.Clear;
    edt_periodo_fim.Clear;

  end
  else
    CB_MES.Text := '';
end;

end.
