//Verificado automaticamente em 16/06/2020 09:29
{ v 30.09.16 10:15 }
unit estoque_2;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants,
  System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, cxGraphics, cxControls, cxLookAndFeels,
  cxLookAndFeelPainters, cxContainer, cxEdit, dxSkinsCore, dxSkinBlack,
  dxSkinBlue, dxSkinBlueprint, dxSkinCaramel, dxSkinCoffee, dxSkinDarkRoom,
  dxSkinDarkSide, dxSkinDevExpressDarkStyle, dxSkinDevExpressStyle, dxSkinFoggy,
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
  dxSkinXmas2008Blue, Vcl.Menus, Vcl.ComCtrls, dxCore, cxDateUtils, cxGroupBox,
  cxCalc, cxDropDownEdit, cxMaskEdit, cxCalendar, Vcl.StdCtrls, cxButtons,
  cxTextEdit, cxCheckBox, Vcl.Grids, Vcl.DBGrids, FireDAC.Stan.Intf,
  FireDAC.Stan.Option, FireDAC.Stan.Param, FireDAC.Stan.Error, FireDAC.DatS,
  FireDAC.Stan.Async, FireDAC.DApt,
  Data.DB, FireDAC.Comp.DataSet, FireDAC.Comp.Client, dxSkinscxPCPainter,
  dxBarBuiltInMenu, cxPC, cxClasses, dxSkinsForm, Vcl.Mask, Vcl.DBCtrls, c_Globals, StrUtils,
  vw_consulta_generica, FireDAC.Phys.Intf, FireDAC.DApt.Intf, v_env,
  cxRadioGroup, cxDBEdit;

type
  TFrm_Estoque2 = class(TForm)
    s: TcxPageControl;
    tsMovimentacao: TcxTabSheet;
    BtnIncluir: TcxButton;
    BtnCancelar: TcxButton;
    BtnGravar: TcxButton;
    DS_ESTOQUE_MOVIMENTACAO: TDataSource;
    SQL_ESTOQUE_MOVIMENTACAO: TFDQuery;
    grp_mov: TGroupBox;
    Label19: TLabel;
    Label23: TLabel;
    Label5: TLabel;
    edt_historico: TEdit;
    chk_entrada: TcxCheckBox;
    chk_saida: TcxCheckBox;
    SQL_ESTOQUE_MOVIMENTACAOCODIGO: TFDAutoIncField;
    SQL_ESTOQUE_MOVIMENTACAODATA_MOVIMENTACAO: TDateField;
    SQL_ESTOQUE_MOVIMENTACAOCODIGO_PRODUTO: TIntegerField;
    SQL_ESTOQUE_MOVIMENTACAOCODIGO_FORNECEDOR: TIntegerField;
    SQL_ESTOQUE_MOVIMENTACAOTIPO_MOVIMENTO: TStringField;
    SQL_ESTOQUE_MOVIMENTACAODATA_REFERENCIA: TDateField;
    SQL_ESTOQUE_MOVIMENTACAOQUANTIDADE: TBCDField;
    SQL_ESTOQUE_MOVIMENTACAOVALOR_UNITARIO: TBCDField;
    SQL_ESTOQUE_MOVIMENTACAOCODIGO_HISTORICO: TIntegerField;
    SQL_ESTOQUE_MOVIMENTACAONUMERO_LOTE: TIntegerField;
    SQL_ESTOQUE_MOVIMENTACAOAVISO_VENCIMENTO: TIntegerField;
    SQL_ESTOQUE_MOVIMENTACAOCODIGO_NFE: TIntegerField;
    SQL_ESTOQUE_MOVIMENTACAODATA_FABRICACAO: TDateField;
    SQL_ESTOQUE_MOVIMENTACAODATA_VALIDADE: TDateField;
    SQL_ESTOQUE_MOVIMENTACAOREG_ANVISA: TStringField;
    SQL_SERIE: TFDQuery;
    DS_SERIE: TDataSource;
    SQL_SERIECODIGO: TFDAutoIncField;
    SQL_SERIECODIGO_MOVIMENTACAO: TIntegerField;
    SQL_SERIESERIE: TStringField;
    SQL_ESTOQUE_MOVIMENTACAOCODIGO_USUARIO: TIntegerField;
    SQL_CONSULTA_MOV: TFDQuery;
    DS_CONSULTA_MOV: TDataSource;
    SQL_CONSULTA_MOVcodigo: TFDAutoIncField;
    SQL_CONSULTA_MOVdata_movimentacao: TDateField;
    SQL_CONSULTA_MOVdata_referencia: TDateField;
    SQL_CONSULTA_MOVProduto: TStringField;
    SQL_CONSULTA_MOVFornecedor: TStringField;
    SQL_CONSULTA_MOVUsuario: TStringField;
    SQL_CONSULTA_MOVtipo_movimento: TStringField;
    SQL_CONSULTA_MOVquantidade: TBCDField;
    SQL_CONSULTA_MOVvalor_unitario: TBCDField;
    SQL_CONSULTA_MOVTotal: TFMTBCDField;
    SQL_CONSULTA_MOVHistorico: TStringField;
    SQL_CONSULTA_MOVcodigo_nfe: TIntegerField;
    SQL_CONSULTA_MOVnumero_lote: TIntegerField;
    Label6: TLabel;
    SQL_ESTOQUE_MOVIMENTACAOPRECO_ANTERIOR: TBCDField;
    btnCancelarMov: TcxButton;
    SQL_CONSULTA_MOVreg_anvisa: TStringField;
    SQL_CONSULTA_MOVstatus_mov: TStringField;
    SQL_ESTOQUE_MOVIMENTACAOSTATUS_MOV: TStringField;
    SQL_ESTOQUE_MOVIMENTACAOQUANTIDADE_ANTERIOR: TBCDField;
    Label12: TLabel;
    Label24: TLabel;
    DBEdit2: TDBEdit;
    DBEdit9: TDBEdit;
    DBEdit10: TDBEdit;
    Label27: TLabel;
    DateTimePicker1: TDateTimePicker;
    cxRadioButton3: TcxRadioButton;
    usuario: TFDQuery;
    DS_usuario: TDataSource;
    usuariousuario: TStringField;
    DBComboBox1: TDBComboBox;
    btnlocalizacao: TcxButton;
    COD_PROD: TEdit;
    procedure btn_prodClick(Sender: TObject);
    procedure FormKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);


{    procedure PadronizarLayout(padit: boolean);}
    procedure BtnIncluirClick(Sender: TObject);
    procedure BtnCancelarClick(Sender: TObject);
//    procedure BtnGravarClick(Sender: TObject);
//    procedure ConsultarProduto(Cadastro: boolean);

//    procedure Edit2KeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
//    procedure cb_tipo_movKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
//    procedure Edit14KeyPress(Sender: TObject; var Key: Char);
//    procedure Edit14KeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
//    procedure Edit15KeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
    procedure Edit1KeyPress(Sender: TObject; var Key: Char);
    procedure Edit2KeyPress(Sender: TObject; var Key: Char);
    procedure cb_tipo_movKeyPress(Sender: TObject; var Key: Char);
//    procedure Edit15KeyPress(Sender: TObject; var Key: Char);
    procedure btn_cad_proClick(Sender: TObject);
    procedure btn_cad_forClick(Sender: TObject);
//    procedure FormShow(Sender: TObject);
    procedure btn_histClick(Sender: TObject);
    procedure cxCheckBox1PropertiesChange(Sender: TObject);
    procedure chk_saidaPropertiesChange(Sender: TObject);
    procedure preencherhistorico(Sender: TObject);
    procedure edt_historicoKeyUp(Sender: TObject; var Key: Word; Shift: TShiftState);
    procedure DBEdit5KeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
    procedure DBGrid1DblClick(Sender: TObject);
//    procedure Edit1KeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
    procedure cxDateEdit4KeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
    function CarregarUltimo: boolean;
//    procedure EditarSerie(Sender: TObject);
//    procedure Edit9Change(Sender: TObject);
//    procedure CalcularPreco;
//    procedure CalcularQuantidade;
    procedure edt_historicoExit(Sender: TObject);
    procedure DeletarSeries;
    procedure DBEdit2Change(Sender: TObject);
    procedure Edit15Change(Sender: TObject);
    procedure Edit14Change(Sender: TObject);
    procedure btnCancelarMovClick(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure btnlocalizacaoClick(Sender: TObject);

  private
    { Private declarations }
    CodHistorico: Integer;
    QRY_MASTER: STRING;

  const
    movSerie = 999999;

  public
    { Public declarations }
  end;

var
  Frm_Estoque2: TFrm_Estoque2;

implementation

{$R *.dfm}

uses cadastro_produto, s_module, u_funcoes, cadastro_fornecedor, vw_main,
  cad_historico, U_Localizacao, controla_serial;

procedure TFrm_Estoque2.BtnCancelarClick(Sender: TObject);
begin
  if BtnCancelar.Enabled then
  begin
    SQL_ESTOQUE_MOVIMENTACAO.Cancel;
    SQL_SERIE.Cancel;
    CarregarUltimo;
    //PadronizarLayout(true);
    DeletarSeries;
  end;
end;

procedure TFrm_Estoque2.btnCancelarMovClick(Sender: TObject);
var
  qry: TFDQuery;
begin
  qry := simplequery('SELECT PROD_DESCRICAO, PROD_CDUNIDADE FROM PRODUTO WHERE CODIGO=' + SQL_ESTOQUE_MOVIMENTACAOCODIGO_PRODUTO.AsString);
  if WnConfirmacao('Cancelar Movimentação ' + SQL_ESTOQUE_MOVIMENTACAOCODIGO.AsString, 'Ao cancelar movimentação do Produto.: ' +
    qry.Fields[0].AsString + slinebreak + 'Quantidade retornará para.: ' + SQL_ESTOQUE_MOVIMENTACAOQUANTIDADE_ANTERIOR.AsString + ' ' +
    qry.Fields[1].AsString + slinebreak + 'Preço retornará para.: R$' + SQL_ESTOQUE_MOVIMENTACAOPRECO_ANTERIOR.AsString + slinebreak +
    'Deseja prosseguir com a operação?', 10) then
  begin
    ExecQuery('UPDATE PRODUTO SET SALDO =' + TrocaVirgPPto(SQL_ESTOQUE_MOVIMENTACAOQUANTIDADE_ANTERIOR.AsString) + ',PROD_PRECO_VAR =' +
      TrocaVirgPPto(SQL_ESTOQUE_MOVIMENTACAOPRECO_ANTERIOR.AsString) + ' WHERE CODIGO=' + SQL_ESTOQUE_MOVIMENTACAOCODIGO.AsString);
    SQL_ESTOQUE_MOVIMENTACAO.Edit;
    SQL_ESTOQUE_MOVIMENTACAOSTATUS_MOV.AsString := 'CANCELADA';
    SQL_ESTOQUE_MOVIMENTACAO.POST;
    WnInfo('Cancelar Movimentação', 'Movimentação Cancelada com Sucesso!');
    CarregarUltimo;
    //PadronizarLayout(true)
  end;

end;
          {
procedure TFrm_Estoque.BtnGravarClick(Sender: TObject);
begin
  if not BtnIncluir.Visible then
  begin
    try
      if CamposObrigatorios([COD_PROD], ['Código Produto'], [Edit14, edt_historico], ['Quantidade', 'Histórico']) then
        exit
      else
      begin
        if DBEdit3.Text <> emptystr then // Informações de lote preenchidas
        begin
          if CamposObrigatorios([DBEdit4], ['Aviso Vencimento'], [cxDateEdit1, cxDateEdit2], ['Data de Fabricação', 'Data de Validade']) then
            exit
          else
          begin
            SQL_ESTOQUE_MOVIMENTACAODATA_FABRICACAO.value := cxDateEdit1.Date;
            SQL_ESTOQUE_MOVIMENTACAODATA_VALIDADE.value := cxDateEdit2.Date;
          end;
        end;
        if chk_entrada.checked then
        begin
          SQL_ESTOQUE_MOVIMENTACAOTIPO_MOVIMENTO.value := 'ENTRADA';
          ExecQuery('update produto set saldo = (saldo + ' + FormatarTag(StrToCurr(Edit14.Text)) + '), PROD_PRECO_VAR = ' +
            FormatarTag(StrToCurr(Edit15.Text)) + ' where codigo = ' + COD_PROD.Text);
        end
        else if chk_saida.checked then
        begin
          SQL_ESTOQUE_MOVIMENTACAOTIPO_MOVIMENTO.value := 'SAIDA';
          ExecQuery('update produto set saldo = (saldo - ' + FormatarTag(StrToCurr(Edit14.Text)) + '), PROD_PRECO_VAR = ' +
            FormatarTag(StrToCurr(Edit15.Text)) + ' where codigo = ' + COD_PROD.Text);
        end;
        SQL_ESTOQUE_MOVIMENTACAODATA_MOVIMENTACAO.value := now;
        SQL_ESTOQUE_MOVIMENTACAODATA_REFERENCIA.value := cxDateEdit4.Date;
        SQL_ESTOQUE_MOVIMENTACAOQUANTIDADE.value := strtofloat(Edit14.Text);
        SQL_ESTOQUE_MOVIMENTACAOVALOR_UNITARIO.value := strtofloat(Edit15.Text);
        SQL_ESTOQUE_MOVIMENTACAOCODIGO_HISTORICO.value := CodHistorico;
        SQL_ESTOQUE_MOVIMENTACAOCODIGO_USUARIO.value :=  TEnv.Tuser.ID;
        SQL_ESTOQUE_MOVIMENTACAOSTATUS_MOV.value := 'CONCLUIDA';
        SQL_ESTOQUE_MOVIMENTACAO.POST;
        SQL_ESTOQUE_MOVIMENTACAO.Active := False;
        SQL_ESTOQUE_MOVIMENTACAO.Active := true;
        SQL_ESTOQUE_MOVIMENTACAO.last;
        if simplequery('select * from estoque_serie where codigo_movimentacao = ' + IntToStr(movSerie)) <> nil then
        begin
          ExecQuery('update estoque_serie set codigo_movimentacao = ' + SQL_ESTOQUE_MOVIMENTACAOCODIGO.AsString + ' where codigo_movimentacao =' +
            IntToStr(movSerie));
        end;
        WnInfo('Estoque', slinebreak + slinebreak + 'Movimentação Efetuada com Sucesso!');
        CarregarUltimo;
        PadronizarLayout(true);
      end;
    except
      on e: Exception do
      begin
        WnErro('Erro Estoque', e.Message + slinebreak + 'Erro ao cadastrar Movimentação! ');
        BtnCancelar.Click;
      end;
    end;
  end;
end;             }

procedure TFrm_Estoque2.BtnIncluirClick(Sender: TObject);
begin
  //PadronizarLayout(False);
  SQL_ESTOQUE_MOVIMENTACAO.Active := true;
  SQL_ESTOQUE_MOVIMENTACAO.Insert;
 { cxDateEdit4.Date := Date;
  cxDateEdit4.SelectAll;
  cxDateEdit4.SetFocus;  }
end;

procedure TFrm_Estoque2.btn_prodClick(Sender: TObject);
begin
  Frm_Consulta_Generica := TFrm_Consulta_Generica.Create(nil, cgProduto, TEdit(COD_PROD));
  with Frm_Consulta_Generica do
  begin
    ShowModal;
    Free;
  end;
end;
    {
procedure TFrm_Estoque.CalcularPreco;
begin
  if not MatchStr(emptystr, [Edit15.Text, Edit14.Text]) then
    Edit16.Text := formatfloat('0.00', strtofloat(Edit14.Text) * strtofloat(Edit15.Text))
  else if (emptystr <> Edit15.Text) and (emptystr = Edit14.Text) then
    Edit16.Text := Edit15.Text
  else if (emptystr <> Edit14.Text) and (emptystr = Edit15.Text) then
    Edit16.Text := '0,00'
  else
    Edit16.Text := '0,00';
end;

procedure TFrm_Estoque.CalcularQuantidade;
begin
  if not MatchStr(emptystr, [DBEdit2.Text, Edit14.Text]) then
  begin
    if chk_entrada.checked then
      Edit9.Text := formatfloat('0.00', strtofloat(DBEdit2.Text) + strtofloat(Edit14.Text));
    if chk_saida.checked then
      Edit9.Text := formatfloat('0.00', strtofloat(DBEdit2.Text) - strtofloat(Edit14.Text));
  end
  else if (emptystr <> DBEdit2.Text) and (emptystr = Edit14.Text) then
    Edit9.Text := DBEdit2.Text
  else if (emptystr <> Edit14.Text) and (emptystr = DBEdit2.Text) then
    Edit9.Text := Edit14.Text
  else
    Edit9.Text := '';
end;         }

function TFrm_Estoque2.CarregarUltimo: boolean;
begin
  WITH SQL_ESTOQUE_MOVIMENTACAO do
  BEGIN
    close;
    SQL.Clear;
    Open('select * from estoque_movimentacao');
    last;
    if recordcount <> 0 then
      result := true
    else
      result := False;
  END;
end;
{
procedure TFrm_Estoque.cb_tipo_movKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
begin
  if Key in ([VK_RETURN, vk_tab]) then
    Edit14.SetFocus;
end;     }

procedure TFrm_Estoque2.cb_tipo_movKeyPress(Sender: TObject; var Key: Char);
begin
  inherited;
  Key := ApenasLetras(Key);
end;

procedure TFrm_Estoque2.chk_saidaPropertiesChange(Sender: TObject);
begin
  AlteraChecks(chk_saida, [chk_entrada]);
  //CalcularQuantidade;
end;
{
procedure TFrm_Estoque2.ConsultarFornecedor(Cadastro: boolean);
var
  qry: TFDQuery;
begin

  qry := simplequery('SELECT CODIGO,RAZAO_SOCIAL FROM FORNECEDOR WHERE CODIGO = ' + COD_FORN.Text);
  if Cadastro then
  begin
    with qry do
    begin
      if qry <> nil then
      begin
        Edit4.Text := FieldByName('RAZAO_SOCIAL').Text;
        edt_historico.SetFocus;
      end
      else
      begin
        WnAlerta('Consultar Fornecedor', slinebreak + slinebreak + 'Fornecedor não encontrado!', taCenter, 12);
        Edit4.Clear;
        COD_FORN.SelectAll;
        COD_FORN.SetFocus;
      end;
    end;
  end
  else
  begin
    with qry do
    begin
      if qry <> nil then
      begin
        Edit11.Text := FieldByName('CODIGO').Text;
        Edit2.Text := IntToStr( TEnv.Tuser.id);
        Edit2.SetFocus;
      end
      else
      begin
        WnAlerta('Consultar Fornecedor', slinebreak + slinebreak + 'Fornecedor não encontrado!', taCenter, 12);
        Edit11.SelectAll;
        Edit11.SetFocus;
      end;
    end;
  end;
end;

procedure TFrm_Estoque2.ConsultarGrid;
var
  QRY_BASE, STATUS_MOV, TIPO_MOV: string;
begin
  QRY_MASTER := 'SELECT em.codigo, em.data_movimentacao, em.data_referencia,';
  QRY_MASTER := QRY_MASTER + '(select descricao_produto from produto where codigo = em.codigo_produto) "Produto",';
  QRY_MASTER := QRY_MASTER + '(SELECT razao_social from fornecedor where codigo = em.codigo_fornecedor) "Fornecedor",';
  QRY_MASTER := QRY_MASTER + '(SELECT usuario from usuario where codigo = em.codigo_usuario) "Usuario",';
  QRY_MASTER := QRY_MASTER + 'em.tipo_movimento, em.quantidade,em.valor_unitario,';
  QRY_MASTER := QRY_MASTER + '(em.quantidade * em.valor_unitario) "Total",';
  QRY_MASTER := QRY_MASTER + '(SELECT descricao_historico from historicos where codigo = em.codigo_historico) "Historico",';
  QRY_MASTER := QRY_MASTER + 'em.codigo_nfe, em.numero_lote, em.reg_anvisa, em.STATUS_MOV from ESTOQUE_MOVIMENTACAO em';
  QRY_BASE := QRY_MASTER;
  if cxCheckBox3.checked and cxCheckBox4.checked then
    TIPO_MOV := '(' + quotedstr('ENTRADA') + ',' + quotedstr('SAIDA') + ')'
  else if cxCheckBox3.checked and (not cxCheckBox4.checked) then
    TIPO_MOV := '(' + quotedstr('ENTRADA') + ')'
  else if cxCheckBox4.checked and (not cxCheckBox3.checked) then
    TIPO_MOV := '(' + quotedstr('SAIDA') + ')'
  else
    TIPO_MOV := '(' + quotedstr('ENTRADA') + ',' + quotedstr('SAIDA') + ')';
{ if cxCheckBox1.checked and cxCheckBox2.checked then
    STATUS_MOV := '(' + quotedstr('CANCELADA') + ',' + quotedstr('CONCLUIDA') + ')'
  else if cxCheckBox1.checked and (not cxCheckBox2.checked) then
    STATUS_MOV := '(' + quotedstr('CONCLUIDA') + ')'
  else if cxCheckBox2.checked and (not cxCheckBox1.checked) then
    STATUS_MOV := '(' + quotedstr('CANCELADA') + ')'
  else
    STATUS_MOV := '(' + quotedstr('CANCELADA') + ',' + quotedstr('CONCLUIDA') + ')';
  QRY_BASE := QRY_BASE + ' WHERE TIPO_MOVIMENTO in ' + TIPO_MOV;
  QRY_BASE := QRY_BASE + ' and STATUS_MOV in ' + STATUS_MOV;
  if Edit8.Text <> emptystr then
    QRY_BASE := QRY_BASE + ' and CODIGO_PRODUTO =' + Edit8.Text;
  if Edit11.Text <> emptystr then
    QRY_BASE := QRY_BASE + ' and CODIGO_FORNECEDOR =' + Edit11.Text;
  if Edit2.Text <> emptystr then
    QRY_BASE := QRY_BASE + ' and CODIGO_USUARIO =' + Edit2.Text;
  if Edit10.Text <> emptystr then
    QRY_BASE := QRY_BASE + ' and NUMERO_LOTE =' + Edit10.Text;
  if Edit13.Text <> emptystr then
    QRY_BASE := QRY_BASE + ' and CODIGO_NFE =' + Edit13.Text;
  if Edit6.Text <> emptystr then
    QRY_BASE := QRY_BASE + ' and REG_ANVISA =' + Edit6.Text;
  QRY_BASE := QRY_BASE + ' and DATA_MOVIMENTACAO BETWEEN ' + quotedstr(formatdatetime('yyyy-mm-dd', cxDateEdit3.Date)) + ' and ' +
    quotedstr(formatdatetime('yyyy-mm-dd', cxDateEdit5.Date));
  with SQL_CONSULTA_MOV do
  begin
    close;
    SQL.Clear;
    Open(QRY_BASE);
  end;
end;
      {
procedure TFrm_Estoque.ConsultarProduto(Cadastro: boolean);
var
  qry: TFDQuery;
begin
  qry := simplequery('SELECT CODIGO, PROD_DESCRICAO, PROD_CDUNIDADE, PROD_PRECO_VAR, SALDO FROM PRODUTO WHERE CODIGO = ' + COD_PROD.Text);
  with qry do
  begin
    if Cadastro then
    begin
      if qry <> nil then
      begin
        Edit3.Text := FieldByName('PROD_DESCRICAO').Text;
        Edit15.Text := FieldByName('PROD_PRECO_VAR').Text;
        SQL_ESTOQUE_MOVIMENTACAOPRECO_ANTERIOR.value := FieldByName('PROD_PRECO_VAR').AsCurrency;
        DBEdit2.Text := FieldByName('SALDO').Text;
        lbl_PROD_CDUNIDADE.caption := FieldByName('PROD_CDUNIDADE').Text;
        Edit14.SetFocus;
      end
      else
      begin
        WnAlerta('Consultar Produto', slinebreak + slinebreak + 'Produto não encontrado!', taCenter, 12);
        Edit3.Clear;
        Edit15.Clear;
        DBEdit2.Clear;
        COD_PROD.SelectAll;
        COD_PROD.SetFocus;
      end;
    end
    else
    begin
      if qry <> nil then
      begin
        Edit8.Text := FieldByName('CODIGO').Text;
        Edit11.SetFocus;
      end
      else
      begin
        WnAlerta('Consultar Produto', slinebreak + slinebreak + 'Produto não encontrado!', taCenter, 12);
        Edit8.SelectAll;
        Edit8.SetFocus;
      end;
    end;
  end;

end;

procedure TFrm_Estoque2.ConsultarUsuario;
var
  qry: TFDQuery;
begin
  if COD_PROD.Text <> emptystr then
  begin
    qry := simplequery('SELECT CODIGO FROM USUARIO WHERE CODIGO = ' + Edit2.Text);
    with qry do
    begin
      if qry <> nil then
      begin
        Edit2.Text := FieldByName('CODIGO').Text;
        Edit2.SetFocus;
      end
      else
      begin
        WnAlerta('Consultar Usuário', slinebreak + slinebreak + 'Usuário não encontrado!', taCenter, 12);
        Edit2.SelectAll;
        Edit2.SetFocus;
      end;
    end
  end
  else
    cxButton2.Click;
end;                                 }

procedure TFrm_Estoque2.cxCheckBox1PropertiesChange(Sender: TObject);
begin
  AlteraChecks(chk_entrada, [chk_saida]);
  //CalcularQuantidade;
end;

procedure TFrm_Estoque2.cxDateEdit4KeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
begin
  if Key in [VK_RETURN, vk_tab] then
    COD_PROD.SetFocus;
end;



procedure TFrm_Estoque2.btnlocalizacaoClick(Sender: TObject);
begin
 frm_cad_serial := Tfrm_cad_serial.CREATE(Application);
 frm_cad_serial.ShowModal;

end;

procedure TFrm_Estoque2.btn_cad_forClick(Sender: TObject);
begin
  if not VerificaAberta(Frm_fornecedor) then
    Frm_fornecedor := TFrm_fornecedor.Create(nil);
  with Frm_fornecedor do
  begin
    Visible := False;
    Show;
    BtnIncluir.Click;
  end;
end;

procedure TFrm_Estoque2.btn_cad_proClick(Sender: TObject);
begin
  if not VerificaAberta(Frm_produto) then
    Frm_produto := TFrm_Produto.Create(nil);
  with Frm_produto do
  begin
    consultarultimo := False;
    Visible := False;
    Show;
    BtnIncluir.Click;
  end;
end;

procedure TFrm_Estoque2.btn_histClick(Sender: TObject);
begin
  if not u_funcoes.VerificaAberta(Frm_cad_historico) then
  begin
    with Frm_cad_historico do
    begin
      Frm_cad_historico := TFrm_cad_historico.Create(nil);
     // TIPO_HISTORICO := thEstoque;
      //grid_historicos.OnDblClick := preencherhistorico;
      Visible := False;
      ShowModal;
      close;
      if edt_historico.Text <> emptystr then
        edt_historico.SetFocus;
    end;
  end;
end;


procedure TFrm_Estoque2.DBEdit2Change(Sender: TObject);
begin
  DBEdit2.Color := colorirestoque(DBEdit2.Text, 10);
end;

procedure TFrm_Estoque2.DBEdit5KeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
begin
  if Key in [VK_RETURN, vk_tab] then
    //Edit1.SetFocus;
end;

procedure TFrm_Estoque2.DBGrid1DblClick(Sender: TObject);
begin
  //EditarSerie(Sender);
end;


procedure TFrm_Estoque2.DeletarSeries;
begin
  ExecQuery('DELETE FROM ESTOQUE_SERIE WHERE CODIGO_MOVIMENTACAO=' + IntToStr(movSerie));
end;

procedure TFrm_Estoque2.Edit14Change(Sender: TObject);
begin
  //CalcularQuantidade;
  //CalcularPreco;
end;


                 {
procedure TFrm_Estoque.Edit14KeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
begin
  if Key in ([VK_RETURN, vk_tab]) then
    Edit15.SetFocus;
end;

procedure TFrm_Estoque.Edit14KeyPress(Sender: TObject; var Key: Char);
begin
  if Key = Char(',') then
    Key := LimitOccurences(Edit14.Text, Char(','), 1, Key);
  inherited;
  Key := ApenasNumeros(Key);
  if lbl_PROD_CDUNIDADE.caption = 'KG' then
    Key := FormatarQuantidadeKG(Edit14, Key);
end;
}

procedure TFrm_Estoque2.Edit15Change(Sender: TObject);
begin
  //CalcularPreco;
end;


procedure TFrm_Estoque2.Edit1KeyPress(Sender: TObject; var Key: Char);
begin
  inherited;
  Key := ApenasNumeros(Key);
end;

procedure TFrm_Estoque2.Edit2KeyPress(Sender: TObject; var Key: Char);
begin
  inherited;
  Key := ApenasNumeros(Key);
end;

         {
procedure TFrm_Estoque.Edit9Change(Sender: TObject);
begin
  Edit9.Color := colorirestoque(Edit9.Text, 10);
end;      }
                       {
procedure TFrm_Estoque.EditarSerie(Sender: TObject);
begin
  Edit1.Text := SQL_SERIESERIE.AsString;
  Edit1.SelectAll;
  Edit1.SetFocus;
  SQL_SERIE.Edit;
end;                  }

procedure TFrm_Estoque2.edt_historicoExit(Sender: TObject);
var
  qry: TFDQuery;
begin
  if edt_historico.Text <> '' then
  begin
    qry := simplequery('SELECT DESCRICAO_HISTORICO FROM HISTORICOS WHERE TIPO_HISTORICO =' + quotedstr('ESTOQUE') + ' AND DESCRICAO_HISTORICO = ' +
      quotedstr(edt_historico.Text + '%'));
    if (CodHistorico = 0) and (qry = nil) then
    begin
      if WnConfirmacao('Cadastrar Histórico', 'Histórico ' + quotedstr(edt_historico.Text) + ' não cadastrado!' + slinebreak +
        'Deseja cadastra-lo para utilizações futuras?') then
      begin
        ExecQuery('INSERT INTO HISTORICOS(CODIGO,DESCRICAO_HISTORICO,TIPO_HISTORICO) VALUES(default,' + quotedstr(edt_historico.Text) + ',' +
          quotedstr('ESTOQUE') + ')');
        qry := simplequery('SELECT * FROM HISTORICOS WHERE TIPO_HISTORICO =' + quotedstr('ESTOQUE') + ' AND DESCRICAO_HISTORICO = ' +
          quotedstr(edt_historico.Text));
        CodHistorico := qry.FieldByName('CODIGO').AsInteger;
      end;
    end;
  end;
end;


procedure TFrm_Estoque2.edt_historicoKeyUp(Sender: TObject; var Key: Word; Shift: TShiftState);
var
  qry: TFDQuery;
begin
  if isKeyNumLetter(Key) then
  begin
    qry := AutoComplete(edt_historico, 'SELECT DESCRICAO_HISTORICO, CODIGO FROM HISTORICOS WHERE TIPO_HISTORICO = ' + quotedstr('ESTOQUE') +
      ' AND DESCRICAO_HISTORICO LIKE ' + quotedstr(edt_historico.Text + '%'), 0);
    if qry <> nil then
      CodHistorico := qry.FieldByName('CODIGO').AsInteger
    else
      CodHistorico := 0;
  end;
end;


procedure TFrm_Estoque2.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  Action := cafree;
  self := nil;
end;

procedure TFrm_Estoque2.FormKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
begin
  TeclasAtalho(Key, [VK_F1, VK_F2, VK_F3], [BtnIncluir, BtnGravar, BtnCancelar]);
end;

             {
procedure TFrm_Estoque.PadronizarLayout(padit: boolean);
  procedure cleardata;
  begin
    cxDateEdit1.OnExit := VerificarDatas;
    cxDateEdit2.OnExit := VerificarDatas;
    Edit3.Clear;
    Edit4.Clear;
    Edit14.Clear;
    Edit15.Clear;
    Edit9.Clear;
    Edit16.Clear;
    edt_historico.Clear;
    chk_entrada.checked := true;
    SQL_SERIE.Active := False;
    DBGrid1.OnDblClick := EditarSerie;
  end;

var
  qry: TFDQuery;
begin
  try
    Edit1.Clear;
    cxDateEdit4.Clear;
    cxDateEdit1.Clear;
    cxDateEdit2.Clear;
    Edit7.Clear;
    CodHistorico := 0;
    if SQL_ESTOQUE_MOVIMENTACAO.Active then
    begin
      if SQL_ESTOQUE_MOVIMENTACAO.recordcount <> 0 then
      begin
        if padit then
        begin
          with SQL_SERIE do
          BEGIN
            close;
            SQL.Clear;
            Open('select * from estoque_serie where codigo_movimentacao = ' + SQL_ESTOQUE_MOVIMENTACAOCODIGO.AsString);
          END;
          cxDateEdit1.OnExit := VerificarDatas;
          cxDateEdit2.OnExit := VerificarDatas;
          qry := simplequery('SELECT PROD_DESCRICAO, PROD_CDUNIDADE, SALDO, PROD_PRECO_VAR FROM PRODUTO WHERE CODIGO = ' +
            SQL_ESTOQUE_MOVIMENTACAOCODIGO_PRODUTO.AsString);
          if qry <> nil then
            Edit3.Text := qry.FieldByName('PROD_DESCRICAO').AsString;
          qry := simplequery('SELECT RAZAO_SOCIAL FROM FORNECEDOR WHERE CODIGO = ' + SQL_ESTOQUE_MOVIMENTACAOCODIGO_FORNECEDOR.AsString);
          if qry <> nil then
            Edit4.Text := qry.FieldByName('RAZAO_SOCIAL').AsString;

          cxDateEdit4.Date := SQL_ESTOQUE_MOVIMENTACAODATA_REFERENCIA.AsDateTime;

          qry := simplequery('SELECT DESCRICAO_HISTORICO FROM HISTORICOS WHERE CODIGO = ' + SQL_ESTOQUE_MOVIMENTACAOCODIGO_HISTORICO.AsString);
          if qry <> nil then
            edt_historico.Text := qry.FieldByName('DESCRICAO_HISTORICO').AsString;

          if SQL_ESTOQUE_MOVIMENTACAODATA_FABRICACAO.AsDateTime <> NullDate then
            cxDateEdit1.Date := SQL_ESTOQUE_MOVIMENTACAODATA_FABRICACAO.AsDateTime;

          if SQL_ESTOQUE_MOVIMENTACAODATA_VALIDADE.AsDateTime <> NullDate then
            cxDateEdit2.Date := SQL_ESTOQUE_MOVIMENTACAODATA_VALIDADE.AsDateTime;

          if SQL_ESTOQUE_MOVIMENTACAOTIPO_MOVIMENTO.AsString = 'ENTRADA' then
            chk_entrada.checked := true;

          if SQL_ESTOQUE_MOVIMENTACAOTIPO_MOVIMENTO.AsString = 'SAIDA' then
            chk_saida.checked := true;

          qry := simplequery('SELECT USUARIO FROM USUARIO WHERE CODIGO = ' + SQL_ESTOQUE_MOVIMENTACAOCODIGO_USUARIO.AsString);
          if qry <> nil then
            Edit7.Text := qry.FieldByName('USUARIO').AsString;

          Edit14.Text := SQL_ESTOQUE_MOVIMENTACAOQUANTIDADE.AsString;
          Edit15.Text := SQL_ESTOQUE_MOVIMENTACAOVALOR_UNITARIO.AsString;
          DBGrid1.OnDblClick := nil;
          qry.Destroy;
        end
        else
          cleardata;
      end
      else
        cleardata;
    end
    else
    begin
      cleardata;
    end;
    IniciarCadastro([BtnIncluir, BtnCancelar], not padit);
    CamposObrigatorios_corpadrao([Edit14, edt_historico], [COD_PROD, COD_FORN]);
    CamposObrigatorios_corpadrao([DBEdit4], [cxDateEdit1, cxDateEdit2]);
    AlterarEnabled([grp_lote, grp_serie, grp_mov, btn_hist, btn_for, btn_prod, btn_cad_pro, btn_cad_for], not padit);
  except
    on e: Exception do
    begin
      WnErro('Padronizar Layout', e.Message + slinebreak + 'Erro!');
    end;
  end;
end;          }

procedure TFrm_Estoque2.preencherhistorico(Sender: TObject);
begin
//  edt_historico.Text := Frm_cad_historico.SQL_HISTORICOSDESCRICAO_HISTORICO.Text;
 // CodHistorico := Frm_cad_historico.SQL_HISTORICOSCODIGO.AsInteger;
  Frm_cad_historico.close;
end;


end.
Trocou PROD_UNIDADE por PROD_UNIDADE : automaticamente em 16/06/2020 10:16
Trocou PROD_UNIDADE por PROD_UNIDADE : automaticamente em 16/06/2020 10:23
Trocou UNIDADE_MEDIDA por PROD_UNIDADE : automaticamente em 16/06/2020 11:04
Trocou PROD_UNIDADE por PROD_CDUNIDADE : automaticamente em 16/06/2020 17:07
Trocou PRECO_FINAL_VAREJO por PROD_PRECO_VAR : automaticamente em 17/06/2020 06:56
