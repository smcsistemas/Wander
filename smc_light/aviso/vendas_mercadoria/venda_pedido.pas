//Verificado automaticamente em 16/06/2020 09:26
unit venda_pedido;
{
================================================================================
|   DATA   |DESENVOLVEDOR|HISTORICO DA ALTERACAO DO CODIGO                     |
|----------|-------------|-----------------------------------------------------|
|06/03/2020|WANDER       |Criado procedimento "BuscarVenda" para listar na tela|
|        22|             |todos os pedidos para emiss�o de NFe/NFCe            |
|----------|-------------|-----------------------------------------------------|
|06/03/2020|WANDER       |Duplo click no grid para abrir a venda               |
|        24|             |(Copiado da unit venda_mercadoria)                   |
================================================================================
}

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, cxGraphics, cxControls, cxLookAndFeels,
  cxLookAndFeelPainters, cxContainer, cxEdit, Vcl.ComCtrls, dxCore, cxDateUtils,
  dxSkinsCore, dxSkinOffice2013LightGray, cxStyles, dxSkinscxPCPainter,
  cxCustomData, cxFilter, cxData, cxDataStorage, cxNavigator, Data.DB, cxDBData,
  cxMaskEdit, cxLabel, cxCurrencyEdit, cxGridLevel, cxGridCustomTableView,
  cxGridTableView, cxGridDBTableView, cxClasses, cxGridCustomView, cxGrid,
  cxDropDownEdit, cxTextEdit, cxCalendar, Vcl.StdCtrls, Vcl.Mask, Vcl.DBCtrls,
  Vcl.ExtCtrls, Vcl.Menus, cxButtons, dxBarBuiltInMenu, cxPC, dxSkinBlack,
  dxSkinBlue, dxSkinBlueprint, dxSkinCaramel, dxSkinCoffee, dxSkinDarkRoom,
  dxSkinDarkSide, dxSkinDevExpressDarkStyle, dxSkinDevExpressStyle, dxSkinFoggy,
  dxSkinGlassOceans, dxSkinHighContrast, dxSkiniMaginary, dxSkinLilian,
  dxSkinLiquidSky, dxSkinLondonLiquidSky, dxSkinMcSkin, dxSkinMetropolis,
  dxSkinMetropolisDark, dxSkinMoneyTwins, dxSkinOffice2007Black,
  dxSkinOffice2007Blue, dxSkinOffice2007Green, dxSkinOffice2007Pink,
  dxSkinOffice2007Silver, dxSkinOffice2010Black, dxSkinOffice2010Blue,
  dxSkinOffice2010Silver, dxSkinOffice2013DarkGray, dxSkinOffice2013White,
  dxSkinOffice2016Colorful, dxSkinOffice2016Dark, dxSkinPumpkin, dxSkinSeven,
  dxSkinSevenClassic, dxSkinSharp, dxSkinSharpPlus, dxSkinSilver,
  dxSkinSpringTime, dxSkinStardust, dxSkinSummer2008, dxSkinTheAsphaltWorld,
  dxSkinsDefaultPainters, dxSkinValentine, dxSkinVisualStudio2013Blue,
  dxSkinVisualStudio2013Dark, dxSkinVisualStudio2013Light, dxSkinVS2010,
  dxSkinWhiteprint, dxSkinXmas2008Blue, cxCheckBox, Vcl.Grids, Vcl.DBGrids,
  cxRadioGroup, FireDAC.Stan.Intf, FireDAC.Stan.Option, FireDAC.Stan.Param,
  FireDAC.Stan.Error, FireDAC.DatS, FireDAC.Phys.Intf, FireDAC.DApt.Intf,
  FireDAC.Stan.Async, FireDAC.DApt, FireDAC.Comp.DataSet, FireDAC.Comp.Client;

type
  Tfrm_pedido_venda = class(TForm)
    cxPageControl1: TcxPageControl;
    cxTabSheet1: TcxTabSheet;
    cxTabSheet2: TcxTabSheet;
    Label23: TLabel;
    Label1: TLabel;
    Label2: TLabel;
    Label3: TLabel;
    Label8: TLabel;
    Label9: TLabel;
    Label10: TLabel;
    Label11: TLabel;
    Label12: TLabel;
    Label13: TLabel;
    Label14: TLabel;
    Label15: TLabel;
    Label18: TLabel;
    Shape1: TShape;
    Label24: TLabel;
    Shape2: TShape;
    Label25: TLabel;
    Label26: TLabel;
    Label28: TLabel;
    Label29: TLabel;
    Label6: TLabel;
    Label7: TLabel;
    Label16: TLabel;
    Label17: TLabel;
    Label19: TLabel;
    DBEdit6: TDBEdit;
    BtnGravar: TcxButton;
    BtnCancelar: TcxButton;
    BtnAlterar: TcxButton;
    cxButton2: TcxButton;
    cxComboBox4: TcxComboBox;
    cxButton10: TcxButton;
    cxComboBox1: TcxComboBox;
    cxComboBox2: TcxComboBox;
    BtnIncluir: TcxButton;
    cxButton3: TcxButton;
    cxButton1: TcxButton;
    cxGrid1: TcxGrid;
    cxGridDBTableView1: TcxGridDBTableView;
    cxGridLevel1: TcxGridLevel;
    Label21: TLabel;
    cxComboBox3: TcxComboBox;
    Label22: TLabel;
    Label20: TLabel;
    Label4: TLabel;
    cxGridDBTableView1Column3: TcxGridDBColumn;
    cxGridDBTableView1Column1: TcxGridDBColumn;
    cxGridDBTableView1Column2: TcxGridDBColumn;
    cxGridDBTableView1Column4: TcxGridDBColumn;
    cxGridDBTableView1Column5: TcxGridDBColumn;
    cxGridDBTableView1Column6: TcxGridDBColumn;
    cxGridDBTableView1Column7: TcxGridDBColumn;
    cxGridDBTableView1Column8: TcxGridDBColumn;
    cxGridDBTableView1Column9: TcxGridDBColumn;
    cxGridDBTableView1Column10: TcxGridDBColumn;
    Label5: TLabel;
    Label27: TLabel;
    Label30: TLabel;
    Label31: TLabel;
    Label32: TLabel;
    Label33: TLabel;
    Label34: TLabel;
    Label35: TLabel;
    Label36: TLabel;
    Label37: TLabel;
    Label38: TLabel;
    Shape3: TShape;
    Label39: TLabel;
    Label40: TLabel;
    BtnNFE: TcxButton;
    BtnNFCE: TcxButton;
    cxButton4: TcxButton;
    cxButton5: TcxButton;
    cxButton6: TcxButton;
    GroupBox5: TGroupBox;
    cxRadioButton1: TcxRadioButton;
    cxRadioButton2: TcxRadioButton;
    GroupBox6: TGroupBox;
    Label41: TLabel;
    Label42: TLabel;
    edt_nfce_fim: TEdit;
    edt_nfce_inicio: TEdit;
    DBGrid1: TDBGrid;
    GroupBox1: TGroupBox;
    Label43: TLabel;
    Label44: TLabel;
    Label45: TLabel;
    edt_periodo_inicio: TcxDateEdit;
    edt_periodo_fim: TcxDateEdit;
    CB_MES: TcxComboBox;
    GroupBox4: TGroupBox;
    chk_normal: TcxCheckBox;
    chk_contingencia: TcxCheckBox;
    GroupBox7: TGroupBox;
    Label46: TLabel;
    Edit2: TEdit;
    RadioButton3: TRadioButton;
    RadioButton4: TRadioButton;
    RadioButton5: TRadioButton;
    RadioButton6: TRadioButton;
    GroupBox3: TGroupBox;
    chk_autorizadas: TcxCheckBox;
    chk_inutilizadas: TcxCheckBox;
    chk_canceladas: TcxCheckBox;
    chk_pendentes: TcxCheckBox;
    cxCheckBox1: TcxCheckBox;
    cxCheckBox2: TcxCheckBox;
    lbl_qtde: TLabel;
    Label47: TLabel;
    Label48: TLabel;
    lb_total_nfce: TLabel;
    Edit1: TEdit;
    Edit3: TEdit;
    Edit4: TEdit;
    Edit5: TEdit;
    Edit6: TEdit;
    Edit7: TEdit;
    Edit8: TEdit;
    Edit9: TEdit;
    Edit10: TEdit;
    Edit11: TEdit;
    Edit12: TEdit;
    GroupBox2: TGroupBox;
    Label49: TLabel;
    Label50: TLabel;
    Label51: TLabel;
    lbl_venda_nfce: TLabel;
    GroupBox8: TGroupBox;
    Label52: TLabel;
    Label53: TLabel;
    edt_venda_inicio: TEdit;
    edt_venda_fim: TEdit;
    GroupBox9: TGroupBox;
    Label54: TLabel;
    Label55: TLabel;
    Label56: TLabel;
    cxDateEdit1: TcxDateEdit;
    cxDateEdit2: TcxDateEdit;
    cxComboBox5: TcxComboBox;
    GroupBox10: TGroupBox;
    Shape4: TShape;
    Shape5: TShape;
    Shape6: TShape;
    chk_fechadas: TcxCheckBox;
    cxCheckBox3: TcxCheckBox;
    chk_abertas: TcxCheckBox;
    GroupBox11: TGroupBox;
    Label57: TLabel;
    edt_consulta: TEdit;
    cb_filtro: TcxComboBox;
    DBGrid2: TDBGrid;
    GroupBox12: TGroupBox;
    chk_nfce: TcxCheckBox;
    cxCheckBox6: TcxCheckBox;
    GroupBox13: TGroupBox;
    chk_venda: TcxCheckBox;
    chk_data: TcxCheckBox;
    chk_status: TcxCheckBox;
    DS_VENDAS: TDataSource;
    SQL_VENDAS: TFDQuery;
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
    SQL_VENDASTROCO: TBCDField;
    SQL_VENDAScomanda: TIntegerField;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure cxButton4Click(Sender: TObject);
    procedure BtnNFEClick(Sender: TObject);
    procedure BtnIncluirClick(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure DBGrid1DblClick(Sender: TObject);
  private
    { Private declarations }
    procedure BuscarVenda;
    function SomaTOTAL_VENDA:Real;
    procedure DetalhesVenda;
  public
    { Public declarations }
  end;

var
  frm_pedido_venda: Tfrm_pedido_venda;

implementation

uses
  u_funcoes, totalizacao_pedido, emissao_de_nfe, visualizar_venda;

{$R *.dfm}

procedure Tfrm_pedido_venda.BtnIncluirClick(Sender: TObject);
begin
// escrever o que este botao faz......
end;

procedure Tfrm_pedido_venda.BtnNFEClick(Sender: TObject);
begin
frm_emissor_nfe := Tfrm_emissor_nfe.Create(nil);
frm_emissor_nfe.ShowModal;
end;

procedure Tfrm_pedido_venda.cxButton4Click(Sender: TObject);
begin
 frm_totalizacao_pedido := Tfrm_totalizacao_pedido.CREATE(Application);
 frm_totalizacao_pedido.ShowModal;
end;

procedure Tfrm_pedido_venda.DBGrid1DblClick(Sender: TObject);
begin
   DetalhesVenda;
end;

procedure Tfrm_pedido_venda.DetalhesVenda;
begin
  if DBGrid1.SelectedIndex <> 0 then
  begin
    frm_visualizar_venda := Tfrm_visualizar_venda.Create(nil, SQL_VENDASCODIGO_VENDA.asinteger);
    frm_visualizar_venda.ShowModal;
    frm_visualizar_venda.free;
    //Wander, 06/03/2020:
    //Chamar BuscaVenda causa efeitos indesej�veis:
    //a) Desposiciona o registro corrente no grid
    //   Obs: � poss�vel contornar isto usando ponteiros
    //b) Causa uma demora pois recarrega todos os registros novamente
    //
    //Para evitar estes efeitos, comentei a linha abaixo
    //que n�o est� comentada na unit venda_mercadoria,
    //DBGrid1DbClick de onde copiei esta procedure "DetalhesVenda".
    //
    //BuscarVenda;
  end;
end;

procedure Tfrm_pedido_venda.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  Action := cafree;
  self := nil;
end;

procedure Tfrm_pedido_venda.FormShow(Sender: TObject);
begin
   BuscarVenda;
end;


procedure Tfrm_pedido_venda.BuscarVenda;
var
  StatusVenda,
  DataInicio,  DataFim,  DataFaixa,
  MesInicio,   MesFim,
  VendaInicio, VendaFim, FaixaVenda,
  ordem,
  PossuiNFCE,
  InfoManual:                        string;
begin
   // Recupera os pedidos para emiss�o de NFe/NFCe
  //if (chk_fechadas.checked) or (chk_canceladas.checked) or (chk_abertas.checked) then
  //if (chk_canceladas.checked) then
  begin
    //if chk_fechadas.checked then
    //  StatusVenda := '"FECHADA"';
    //if chk_abertas.checked then
    //  if StatusVenda.IsEmpty then
    //    StatusVenda := '"ABERTA"'
    //  else
    //    StatusVenda := StatusVenda + ',' + '"ABERTA"';
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
    //if edt_venda_inicio.Text <> '' then
    //begin
    //  VendaInicio := edt_venda_inicio.Text;
    //end;
    //if edt_venda_fim.Text <> '' then
    //begin
    //  VendaFim := edt_venda_fim.Text;
    //end;
    SQL_VENDAS.Close;
    SQL_VENDAS.SQL.Clear;
    SQL_VENDAS.SQL.Add('SELECT V.CODIGO_VENDA,                                   ');
    SQL_VENDAS.SQL.Add('       V.DATA,                                           ');
    SQL_VENDAS.SQL.Add('       V.HORA,                                           ');
    SQL_VENDAS.SQL.Add('       V.CAIXA,                                          ');
    SQL_VENDAS.SQL.Add('      (SELECT U.USUARIO                                  ');
    SQL_VENDAS.SQL.Add('         FROM USUARIO U                                  ');
    SQL_VENDAS.SQL.Add('        WHERE U.CODIGO = V.OPERADOR) AS OPERADOR,        ');
    SQL_VENDAS.SQL.Add('      (SELECT C.NOME                                     ');
    SQL_VENDAS.SQL.Add('         FROM COLABORADOR C                              ');
    SQL_VENDAS.SQL.Add('        WHERE C.CODIGO = V.COD_VENDEDOR) AS VENDEDOR,    ');
    SQL_VENDAS.SQL.Add('      (SELECT FANTASIA                                   ');
    SQL_VENDAS.SQL.Add('         FROM CLIENTE                                    ');
    SQL_VENDAS.SQL.Add('        WHERE CODIGO = V.CODIGO_CLIENTE) AS NOME_CLIENTE,');
    SQL_VENDAS.SQL.Add('      V.TOTAL_VENDA,                                     ');
    SQL_VENDAS.SQL.Add('      V.TROCO,                                           ');
    SQL_VENDAS.SQL.Add('      V.VALOR_PAGO,                                      ');
    SQL_VENDAS.SQL.Add('      V.STATUS,                                          ');
    SQL_VENDAS.SQL.Add('      V.COD_NFCE,                                        ');
    SQL_VENDAS.SQL.Add('      V.COMANDA                                          ');
    SQL_VENDAS.SQL.Add(' FROM VENDA V                                            ');
    SQL_VENDAS.SQL.Add('ORDER BY DATA DESC, HORA DESC                            ');

    {
    SQL_VENDAS.SQL.Add('WHERE V.STATUS in (' + StatusVenda + ')              ');

    if (DataInicio <> '') and (DataFim <> '') then
    Begin
      SQL_VENDAS.SQL.Add('AND V.DATA BETWEEN :DATA_INICIO AND :DATA_FIM      ');
      SQL_VENDAS.SQL.ParamByName('DATA_INICIO').AsDate := StrToDate(DataInicio);
      SQL_VENDAS.SQL.ParamByName('DATA_FIM'   ).AsDate := StrToDate(DataFim);
    End;

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
    }
    SQL_VENDAS.open;
    SQL_VENDAS.FetchAll;

    lbl_qtde.Caption      := IntToStr(SQL_VENDAS.RecordCount);
    lb_total_nfce.Caption := Float_to_String(SomaTOTAL_VENDA);
    SQL_VENDAS.First;

  end;
  //else
  //  wnalerta('Consultar Venda', slinebreak + 'Voc� deve selecionar um status!');
end;

function Tfrm_pedido_venda.SomaTOTAL_VENDA: Real;
var vSomaTOTAL_VENDA:Real;
begin
   // Retorna o valor total das vendas constantes no grid
   vSomaTOTAL_VENDA := 0;
   SQL_VENDAS.First;
   while not SQL_VENDAS.Eof do
   begin
     vSomaTOTAL_VENDA := vSomaTOTAL_VENDA + SQL_VENDAS.FieldByName('TOTAL_VENDA').AsFloat;
     SQL_VENDAS.Next;
   end;
   SQL_VENDAS.First;
   Result := vSomaTOTAL_VENDA;
end;



end.
