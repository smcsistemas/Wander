unit vw_Status;

interface

uses
  System.SysUtils, System.Variants, System.Classes,
  Vcl.Controls, Vcl.Forms, Vcl.StdCtrls,
  Vcl.ExtCtrls,






  cxButtons,
  firedac.comp.client, cxGraphics, cxLookAndFeels, cxLookAndFeelPainters, Vcl.Menus, dxSkinsCore, dxSkinBlack, dxSkinBlue, dxSkinBlueprint, dxSkinCaramel, dxSkinCoffee, dxSkinDarkRoom, dxSkinDarkSide,
  dxSkinDevExpressDarkStyle, dxSkinDevExpressStyle, dxSkinFoggy, dxSkinGlassOceans, dxSkinHighContrast, dxSkiniMaginary, dxSkinLilian, dxSkinLiquidSky, dxSkinLondonLiquidSky, dxSkinMcSkin,
  dxSkinMetropolis, dxSkinMetropolisDark, dxSkinMoneyTwins, dxSkinOffice2007Black, dxSkinOffice2007Blue, dxSkinOffice2007Green, dxSkinOffice2007Pink, dxSkinOffice2007Silver, dxSkinOffice2010Black,
  dxSkinOffice2010Blue, dxSkinOffice2010Silver, dxSkinOffice2013DarkGray, dxSkinOffice2013LightGray, dxSkinOffice2013White, dxSkinOffice2016Colorful, dxSkinOffice2016Dark, dxSkinPumpkin, dxSkinSeven,
  dxSkinSevenClassic, dxSkinSharp, dxSkinSharpPlus, dxSkinSilver, dxSkinSpringTime, dxSkinStardust, dxSkinSummer2008, dxSkinTheAsphaltWorld, dxSkinsDefaultPainters, dxSkinValentine,
  dxSkinVisualStudio2013Blue, dxSkinVisualStudio2013Dark, dxSkinVisualStudio2013Light, dxSkinVS2010, dxSkinWhiteprint, dxSkinXmas2008Blue, dxGDIPlusClasses;

type
  Tfrm_status = class(TForm)
    Image1: TImage;
    lbMain: TLabel;
    btnCancelar: TcxButton;
    btnValidar: TcxButton;
    lblLiberacao: TLabel;
    edt_cnpj: TEdit;
    procedure btnCancelarClick(Sender: TObject);
    procedure btnValidarClick(Sender: TObject);
    procedure edt_cnpjKeyPress(Sender: TObject; var Key: Char);
    procedure FormClick(Sender: TObject);
  private
    { Private declarations }
    STime: tdatetime;
  public
    { Public declarations }
    procedure checkConfig(lb: string = 'Carregando Configurações ... ');
    class function ManualKey: boolean;

  end;

var
  frm_status: Tfrm_status;

implementation

uses h_db, h_net, h_functions, c_globals;
{$R *.dfm}
{ Tfrm_status }

procedure Tfrm_status.btnCancelarClick(Sender: TObject);
begin
  modalresult := mrcancel;
end;

procedure Tfrm_status.btnValidarClick(Sender: TObject);
var
  qry, qry2: tfdquery;
  strLocalKey: tstrings;
  cnpj: string;
begin
  if tnet.connstatus then
  begin
    self.lblLiberacao.Caption := 'Consultando chave ...';
    self.Update;
    cnpj := TFunctions.replace(edt_cnpj.Text, ['.', '/', '-']);
    qry := TDB.SimpleQuery('select id, razao_social, nome_fantasia, nfce, nfse, sped from Cliente where cnpj = ? limit 1', [cnpj], dbOnline);
    if qry <> nil then
    begin
      qry2 := TDB.SimpleQuery('select codigo from empresa order by codigo desc');
      if qry2 = nil then
        TDB.ExecQuery('insert into empresa(razao_social, nome_fantasia, cnpj) values (?, ?, ?)', [qry.fields[1].asString, qry.fields[2].asString, cnpj])
      else
        TDB.ExecQuery('update empresa set razao_social=?, nome_fantasia=?, cnpj=? where codigo = ?', [qry.fields[1].asString, qry.fields[2].asString, cnpj,
          qry2.fields[0].asInteger]);
      modalresult := mrok;
    end
    else
      raise Exception.create('Cliente não habilitado para utilização do sistema! Entre em contato com o suporte técnico para mais informações.');
  end
  else
    raise Exception.create('Uma falha na conexão de internet impediu a consulta da licença do seu sistema! Entre em contato com o suporte técnico para mais informações.');

  self.lblLiberacao.Caption := 'Informe o cnpj ou CPF do cliente cadastrado ' + slinebreak + 'para que possamos efetuar a liberação do produto.';
end;

procedure Tfrm_status.checkConfig(lb: string = 'Carregando Configurações ... ');
begin
  lbMain.Caption := lb;
  btnValidar.Hide;
  lblLiberacao.Hide;
  edt_cnpj.Hide;
  btnCancelar.Hide;
  self.show;
  self.Update;
end;

procedure Tfrm_status.edt_cnpjKeyPress(Sender: TObject; var Key: Char);
begin
  inherited;
  Key := TFunctions.onlynumbers(Key);
end;

procedure Tfrm_status.FormClick(Sender: TObject);
begin
  self.show;
end;

class function Tfrm_status.ManualKey: boolean;
var
  x: Tfrm_status;
begin
  try
    x := Tfrm_status.create(nil);
    with x do
    begin
      lbMain.Hide;
      lblLiberacao.show;
      edt_cnpj.show;
      btnValidar.show;
      btnCancelar.show;
      Update;
      result := showmodal = mrok;
    end;
  finally
    x.free
  end;
end;

end.
