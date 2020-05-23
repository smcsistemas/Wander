unit funcoes_sistema;

interface

uses
  Winapi.Windows, System.SysUtils, System.Classes,
  Vcl.Controls, Vcl.Forms,

  Vcl.StdCtrls, cxButtons,
  XMLDoc, XMLIntf, cxGraphics, cxLookAndFeels, cxLookAndFeelPainters, Vcl.Menus, dxSkinsCore, dxSkinBlack, dxSkinBlue, dxSkinBlueprint,
  dxSkinCaramel, dxSkinCoffee, dxSkinDarkRoom, dxSkinDarkSide,
  dxSkinDevExpressDarkStyle, dxSkinDevExpressStyle, dxSkinFoggy, dxSkinGlassOceans, dxSkinHighContrast, dxSkiniMaginary, dxSkinLilian,
  dxSkinLiquidSky, dxSkinLondonLiquidSky, dxSkinMcSkin,
  dxSkinMetropolis, dxSkinMetropolisDark, dxSkinMoneyTwins, dxSkinOffice2007Black, dxSkinOffice2007Blue, dxSkinOffice2007Green,
  dxSkinOffice2007Pink, dxSkinOffice2007Silver, dxSkinOffice2010Black,
  dxSkinOffice2010Blue, dxSkinOffice2010Silver, dxSkinOffice2013DarkGray, dxSkinOffice2013LightGray, dxSkinOffice2013White,
  dxSkinOffice2016Colorful, dxSkinOffice2016Dark, dxSkinPumpkin, dxSkinSeven,
  dxSkinSevenClassic, dxSkinSharp, dxSkinSharpPlus, dxSkinSilver, dxSkinSpringTime, dxSkinStardust, dxSkinSummer2008, dxSkinTheAsphaltWorld,
  dxSkinsDefaultPainters, dxSkinValentine,
  dxSkinVisualStudio2013Blue, dxSkinVisualStudio2013Dark, dxSkinVisualStudio2013Light, dxSkinVS2010, dxSkinWhiteprint, dxSkinXmas2008Blue;

type
  Tfrm_funcoes_sistema = class(TForm)
    GroupBox1: TGroupBox;
    Label1: TLabel;
    Label2: TLabel;
    Label3: TLabel;
    Label4: TLabel;
    Label5: TLabel;
    cxButton1: TcxButton;
    cod_uf: TEdit;
    emissao: TEdit;
    modelo: TEdit;
    ambiente: TEdit;
    Label6: TLabel;
    ano: TEdit;
    Label7: TLabel;
    nf_fim: TEdit;
    Label8: TLabel;
    nf_inicio: TEdit;
    serie: TEdit;
    mes: TEdit;
    Label9: TLabel;
    function DigVer(chave: string): integer;
    procedure cxButton1Click(Sender: TObject);
    procedure ConsultarFaixa;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    function gerarchave(codnf: string): string;
    procedure FormShow(Sender: TObject);

  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frm_funcoes_sistema: Tfrm_funcoes_sistema;

implementation

{$R *.dfm}

uses U_ConfNFCE, u_funcoes, carregando_dados, h_Files;

{ TForm1 }

procedure Tfrm_funcoes_sistema.ConsultarFaixa;
  function qtdereg(begindate, enddate: integer): integer;
  var
    i, x: integer;
  begin
    x := 0;
    for i := begindate to enddate do
      x := x + 1;
    result := x;
  end;

  function emiss(cod: string): String;
  begin
    if cod = '217' then
      result := 'Não Emitida'
    else
      result := 'Emitida';
  end;

var
  i, x, nfi, nff: integer;
  wDocXML: TXMLDocument;
  wRoot: IXmlNode;
  PathReport, resultconsul, rel: string;
begin
  try
    try
      with wDocXML do
      begin
        wDocXML := TXMLDocument.Create(Application);
        Active := False;
        XML.Clear;
        Options := [doNodeAutoIndent];
        Active := True;
        Encoding := 'iso-8859-1';
        Version := '1.0';
      end;
      PathReport := GetEnvironmentVariable('USERPROFILE') + '\CONSULTA_FAIXA_' + nf_inicio.text + '_' + nf_fim.text + '.txt';
      Frm_ConfNFCE := TFrm_ConfNFCE.Create(NIL);
      frm_carregando_dados := tfrm_carregando_dados.Create(nil);
      frm_carregando_dados.Visible := True;
      frm_carregando_dados.show;
      frm_carregando_dados.update;
      nfi := strtoint(nf_inicio.text);
      nff := strtoint(nf_fim.text);
      frm_carregando_dados.pb_barra_progresso.Min := 0;
      frm_carregando_dados.pb_barra_progresso.max := qtdereg(nfi, nff);
      x := 0;
      for i := nfi to nff do
      begin
        x := x + 1;
        frm_carregando_dados.MudarLabel('Consultando NF-e ' + IntToStr(i) + ' ...');
        frm_carregando_dados.PreencherBarra(x);
        frm_carregando_dados.update;
        resultconsul := Frm_ConfNFCE.ConsultarNF(gerarchave(IntToStr(i)), False);
        rel := rel + slinebreak + 'Chave: ' + gerarchave(IntToStr(i)) + ' Sit. nf: ' + emiss(Copy(resultconsul, 0, 3)) + slinebreak +
          resultconsul;
      end;
      SaveToFile(PathReport, rel);
      tfile.open(PathReport);
    except
      on e: Exception do
      begin
        WnErro('Consulta NF-e', e.Message + slinebreak + 'Erro ao consultar notas!', taLeftJustify, 10);
      end;
    end;
  finally
    Frm_ConfNFCE.Free;
    frm_carregando_dados.Close;
  end;

end;

procedure Tfrm_funcoes_sistema.cxButton1Click(Sender: TObject);
begin
  ConsultarFaixa;
end;

function Tfrm_funcoes_sistema.DigVer(chave: string): integer;
var
  linPosicao, linSoma, linMult: integer;
begin
  linSoma := 0;
  linMult := 2;
  for linPosicao := Length(chave) downto 1 do
  begin
    linSoma := linSoma + (strtoint(chave[linPosicao]) * linMult);
    inc(linMult);

    if (linMult > 9) then
      linMult := 2;
  end; { for }

  result := 11 - (linSoma mod 11);
  if result >= 10 then
    result := 0;
end;

procedure Tfrm_funcoes_sistema.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  Action := cafree;
  self := nil;
end;

procedure Tfrm_funcoes_sistema.FormShow(Sender: TObject);
begin
  mes.text := formatdatetime('mm', date);
  ano.text := formatdatetime('yy', date);
end;

function Tfrm_funcoes_sistema.gerarchave(codnf: string): string;
var
  chave, cnpj: string;
begin
  cnpj := removercaracteresespeciais(simplequery('select CNPJ from empresa').fieldbyname('CNPJ').asstring);
  chave := cod_uf.text + ano.text + mes.text + cnpj + modelo.text + serie.text + formatfloat('000000000', strtofloat(codnf)) + emissao.text
    + formatfloat('00000000', strtofloat(codnf));
  chave := chave + IntToStr(DigVer(chave));
  result := chave;
end;

end.
