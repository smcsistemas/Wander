//Verificado automaticamente em 16/06/2020 09:28
unit inutilizar_faixa;

interface

uses
  Winapi.Windows, System.SysUtils, System.Classes,
  Vcl.Controls, Vcl.Forms, Vcl.StdCtrls,
  Vcl.ComCtrls,

  cxDropDownEdit, cxButtons, U_ConfNFCE, u_funcoes, System.StrUtils, c_NF, cxGraphics, cxLookAndFeels, cxLookAndFeelPainters, Vcl.Menus, dxSkinsCore, dxSkinBlack, dxSkinBlue,
  dxSkinBlueprint,
  dxSkinCaramel, dxSkinCoffee, dxSkinDarkRoom, dxSkinDarkSide, dxSkinDevExpressDarkStyle, dxSkinDevExpressStyle, dxSkinFoggy, dxSkinGlassOceans, dxSkinHighContrast,
  dxSkiniMaginary, dxSkinLilian,
  dxSkinLiquidSky, dxSkinLondonLiquidSky, dxSkinMcSkin, dxSkinMetropolis, dxSkinMetropolisDark, dxSkinMoneyTwins, dxSkinOffice2007Black, dxSkinOffice2007Blue,
  dxSkinOffice2007Green,
  dxSkinOffice2007Pink, dxSkinOffice2007Silver, dxSkinOffice2010Black, dxSkinOffice2010Blue, dxSkinOffice2010Silver, dxSkinOffice2013DarkGray, dxSkinOffice2013LightGray,
  dxSkinOffice2013White,
  dxSkinOffice2016Colorful, dxSkinOffice2016Dark, dxSkinPumpkin, dxSkinSeven, dxSkinSevenClassic, dxSkinSharp, dxSkinSharpPlus, dxSkinSilver, dxSkinSpringTime, dxSkinStardust,
  dxSkinSummer2008,
  dxSkinTheAsphaltWorld, dxSkinsDefaultPainters, dxSkinValentine, dxSkinVisualStudio2013Blue, dxSkinVisualStudio2013Dark, dxSkinVisualStudio2013Light, dxSkinVS2010,
  dxSkinWhiteprint,
  dxSkinXmas2008Blue, cxControls, cxContainer, cxEdit, cxTextEdit, cxMaskEdit;

type
  TFrm_Inutilizar_Faixa = class(TForm)
    GroupBox1: TGroupBox;
    Label5: TLabel;
    Label4: TLabel;
    edt_nfce_inicio: TEdit;
    edt_nfce_fim: TEdit;
    Label6: TLabel;
    edt_motivo: TEdit;
    btn_inutilizar: TcxButton;
    Label1: TLabel;
    edt_serie: TEdit;
    Label2: TLabel;
    cb_ano: TcxComboBox;
    Label3: TLabel;
    cb_mes: TcxComboBox;
    procedure btn_inutilizarClick(Sender: TObject);
    procedure padronizarlayout;
    procedure InutilizarFaixa;
    procedure FormShow(Sender: TObject);
    procedure edt_nfce_inicioKeyPress(Sender: TObject; var Key: Char);
    procedure edt_nfce_fimKeyPress(Sender: TObject; var Key: Char);
    procedure edt_serieKeyPress(Sender: TObject; var Key: Char);
    procedure cb_anoKeyPress(Sender: TObject; var Key: Char);
    procedure edt_nfce_inicioKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
    procedure edt_nfce_fimKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
    procedure edt_serieKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
    procedure cb_anoKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
    procedure edt_motivoKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Frm_Inutilizar_Faixa: TFrm_Inutilizar_Faixa;

implementation

{$R *.dfm}

uses u_diretorios, carregando_dados, relatorios;

procedure TFrm_Inutilizar_Faixa.btn_inutilizarClick(Sender: TObject);
begin
  InutilizarFaixa;
end;

procedure TFrm_Inutilizar_Faixa.cb_anoKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
begin
  if Key in [vk_return, vk_tab] then
    edt_motivo.SetFocus;
end;

procedure TFrm_Inutilizar_Faixa.cb_anoKeyPress(Sender: TObject; var Key: Char);
begin
  inherited;
  Key := ApenasNumeros(Key);
end;

procedure TFrm_Inutilizar_Faixa.edt_motivoKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
begin
  if Key in [vk_return, vk_tab] then
    btn_inutilizar.Click;
end;

procedure TFrm_Inutilizar_Faixa.edt_nfce_fimKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
begin
  if Key in [vk_return, vk_tab] then
    edt_serie.SetFocus;
end;

procedure TFrm_Inutilizar_Faixa.edt_nfce_fimKeyPress(Sender: TObject; var Key: Char);
begin
  inherited;
  Key := ApenasNumeros(Key);
end;

procedure TFrm_Inutilizar_Faixa.edt_nfce_inicioKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
begin
  if Key in [vk_return, vk_tab] then
    edt_nfce_fim.SetFocus;
end;

procedure TFrm_Inutilizar_Faixa.edt_nfce_inicioKeyPress(Sender: TObject; var Key: Char);
begin
  inherited;
  Key := ApenasNumeros(Key);
end;

procedure TFrm_Inutilizar_Faixa.edt_serieKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
begin
  if Key in [vk_return, vk_tab] then
    cb_ano.SetFocus;
end;

procedure TFrm_Inutilizar_Faixa.edt_serieKeyPress(Sender: TObject; var Key: Char);
begin
  inherited;
  Key := ApenasNumeros(Key);
end;

procedure TFrm_Inutilizar_Faixa.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  Action := cafree;
  self := nil;
end;

procedure TFrm_Inutilizar_Faixa.FormKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
begin
  if Key = VK_ESCAPE then
    close;
end;

procedure TFrm_Inutilizar_Faixa.FormShow(Sender: TObject);
begin
  padronizarlayout;
end;

procedure TFrm_Inutilizar_Faixa.InutilizarFaixa;
var
  nfceinicio, nfcefim, NFCE, qtd_nfce, cont: Integer;
  arr_retorno: array of string;
  data_ref: tdatetime;
  lote, caminho_xml, data, hora, seq_antiga, cnpj, ano, retorno_xml, caminho_banco, strAuxCods, status_nfce: string;
begin
  try
    if edt_nfce_inicio.text = EmptyStr then
    begin
      wnAlerta('Inutilizar NFC-e', slinebreak + slinebreak + 'Informe a numeração inicial para inutilizar!');
      Exit;
    end;
    if edt_nfce_fim.text = EmptyStr then
    begin
      wnAlerta('Inutilizar NFC-e', slinebreak + slinebreak + 'Informe a numeração final para inutilizar!');
      Exit;
    end;
    if edt_motivo.text = EmptyStr then
    begin
      wnAlerta('Inutilizar NFC-e', slinebreak + slinebreak + 'Informe um motivo para inutilização!');
      Exit;
    end;
    if edt_serie.text = EmptyStr then
    begin
      wnAlerta('Inutilizar NFC-e', slinebreak + slinebreak + 'Informe uma série para inutilização!');
      Exit;
    end;
    if cb_mes.text = EmptyStr then
    begin
      wnAlerta('Inutilizar NFC-e', slinebreak + slinebreak + 'Informe o mês referente a inutilização!');
      Exit;
    end;
    if cb_ano.text = EmptyStr then
    begin
      wnAlerta('Inutilizar NFC-e', slinebreak + slinebreak + 'Informe o ano referente a inutilização!');
      Exit;
    end;
    with FRM_CONFNFCE do
    begin
      FRM_CONFNFCE := TFrm_ConfNFCE.Create(nil);
      if configurarcomponente then
      begin
        frm_carregando_dados := tfrm_carregando_dados.Create(nil);
        nfceinicio := strtoint(edt_nfce_inicio.text);
        nfcefim := strtoint(edt_nfce_fim.text);
        qtd_nfce := (nfcefim - nfceinicio) + 1;
        SetLength(arr_retorno, qtd_nfce);
        frm_carregando_dados.pb_barra_progresso.Min := 0;
        frm_carregando_dados.pb_barra_progresso.max := qtd_nfce;
        frm_carregando_dados.show;
        NFCE := 0;
        for NFCE := nfceinicio to nfcefim do
        begin
          data_ref := encodedate(strtoint(cb_ano.text), strtoint(cb_mes.text), 1);
          inc(cont);
          frm_carregando_dados.PreencherBarra(cont);
          frm_carregando_dados.MudarLabel('Inutilizando NFC-e ' + inttostr(NFCE) + ' ...');
          frm_carregando_dados.PreencherBarra(NFCE);
          frm_carregando_dados.update;
          cnpj := simplequery('SELECT CNPJ FROM EMPRESA').Fields[0].AsString;
          ano := copy(cb_ano.text, 3, length(cb_ano.text));
          retorno_xml := spdNFCe.InutilizarNF(inttostr(NFCE), ano, RemoverCaracteresEspeciais(cnpj), '65', edt_serie.text, inttostr(NFCE), inttostr(NFCE), edt_motivo.text);
          arr_retorno[cont - 1] := JanelaRetornaStatus(retorno_xml, false);
          if simplequery('select * from nfce where codigo = ' + inttostr(NFCE)) = nil then
          begin
            seq_antiga := simplequery('select sequencia_nfce from parametros_nfce').Fields[0].text;
            execquery('update parametros_nfce set sequencia_nfce = ' + quotedstr(inttostr(NFCE - 1)));
            lote := simplequery('select lote from parametros_nfce').Fields[0].AsString;
            if AnsiMatchStr(copy(arr_retorno[cont - 1], 0, 3), ['102', '206', '256', '563']) then
            BEGIN
              status_nfce := 'INUTILIZADA';
              caminho_xml := u_diretorios.Xml_Inutilizadas(data_ref) + inttostr(NFCE) + '-inu.xml';
            END
            else
            BEGIN
              status_nfce := 'PENDENTE';
              caminho_xml := u_diretorios.xml_pendentes(data_ref) + inttostr(NFCE) + '.xml';
            END;
            serie := simplequery('SELECT SERIE_NORMAL FROM PARAMETROS_NFCE').Fields[0].AsString;
            SaveToFile(caminho_xml, retorno_xml);
            execquery(
              'insert into nfce(codigo, data_emissao, hora_emissao, data_transmissao, hora_transmissao, codigo_venda, lote, serie, caminho_xml, status_nfce, tipo_emissao, retorno_nfce, erro_rotina)'
              + ' values (' + inttostr(NFCE) + ', current_date, current_time, current_date, current_time, 0, "' + lote + '", "' + serie + '", "' + caminho_xml + '", "' +
              status_nfce + '", "NORMAL", "' + arr_retorno[cont - 1] + '", "NENHUM")');
            execquery('update parametros_nfce set sequencia_nfce =' + seq_antiga);

          end
          else
          Begin
            caminho_banco := simplequery('SELECT CAMINHO_XML FROM NFCE WHERE CODIGO=' + inttostr(NFCE)).Fields[0].AsString;
            status_nfce := simplequery('SELECT STATUS_NFCE FROM NFCE WHERE CODIGO=' + inttostr(NFCE)).Fields[0].AsString;
            if FILEEXISTS(caminho_banco) then
            begin
              if AnsiMatchStr(copy(arr_retorno[cont - 1], 0, 3), ['102', '206', '256', '563']) then
              begin
                status_nfce := 'INUTILIZADA';
                AppendFile(caminho_banco, retorno_xml);
                MoverXML(caminho_banco, Xml_Inutilizadas(data_ref) + simplequery('SELECT CHAVE FROM NFCE WHERE CODIGO=' + inttostr(NFCE)).Fields[0].AsString + '-inu.xml');
                caminho_banco := Xml_Inutilizadas(data_ref) + simplequery('SELECT CHAVE FROM NFCE WHERE CODIGO=' + inttostr(NFCE)).Fields[0].AsString + '-inu.xml';
              end;
            end;
            execquery('UPDATE NFCE SET RETORNO_NFCE = "' + arr_retorno[cont - 1] + '",CAMINHO_XML ="' + caminho_banco + '",STATUS_NFCE="' + status_nfce + '" where codigo = ' +
              inttostr(NFCE));
          end;
        end;
        frm_carregando_dados.close;
        frm_relatorio := tfrm_relatorio.Create(nil);
        strAuxCods := EmptyStr;
        NFCE := 0;
        for NFCE := nfceinicio to nfcefim do
          if not strAuxCods.IsEmpty then
            strAuxCods := strAuxCods + quotedstr(inttostr(NFCE)) + ','
          else
            strAuxCods := quotedstr(inttostr(NFCE)) + ',';
        with frm_relatorio.SQL_OP_NFCE do
        begin
          close;
          sql.Clear;
          sql.Add('SELECT *,(select sum(total_nfce) from nfce where status_nfce = "AUTORIZADA") as TOTAL_AUT FROM NFCE WHERE CODIGO IN (' + copy(strAuxCods, 0,
            length(strAuxCods) - 1) + ')');
          open;
        end;

        frm_relatorio.FRX_OP_NFCE.LoadFromFile(frm_relatorio.path_op_nfce, true);
        frm_relatorio.FRX_OP_NFCE.ShowReport;
        frm_relatorio.close;
        frm_relatorio.destroy;
      end;
    end;
  except
    on e: exception do
    begin
      wnerro('Inutilização NFC-e', e.Message + slinebreak + 'Erro ao inutilizar notas fiscais');
      frm_carregando_dados.close;
    end;
  end;
end;

procedure TFrm_Inutilizar_Faixa.padronizarlayout;
begin
  edt_nfce_inicio.Clear;
  edt_nfce_fim.Clear;
  edt_serie.text := simplequery('SELECT SERIE_NORMAL FROM PARAMETROS_NFCE').Fields[0].AsString;
  cb_ano.ItemIndex := cb_ano.ActiveProperties.Items.IndexOf(FormatDateTime('yyyy', date));
  cb_mes.ItemIndex := cb_mes.ActiveProperties.Items.IndexOf(FormatDateTime('mm', date));
  edt_motivo.text := NF_INUTILIZACAO_CANCELAR;
  edt_nfce_inicio.SetFocus;
end;

end.
