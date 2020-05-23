unit vw_manifestar_nfe;

interface

uses
  System.SysUtils, System.Variants, System.Classes,
  Vcl.Controls, Vcl.Forms, cxEdit,

  cxDropDownEdit, Vcl.StdCtrls, cxMemo, cxButtons, firedac.comp.client, cxGraphics, cxControls, cxLookAndFeels, cxLookAndFeelPainters, cxContainer, dxSkinsCore, dxSkinBlack,
  dxSkinBlue,
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
  dxSkinXmas2008Blue, Vcl.Menus, cxTextEdit, cxMaskEdit;

type
  Tfrm_manifestar_nfe = class(TForm)
    cb_cod_man: TcxComboBox;
    Label1: TLabel;
    mmObs: TcxMemo;
    Label2: TLabel;
    btn_confirmar: TcxButton;
    btn_cancelar: TcxButton;
    procedure btn_cancelarClick(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure btn_confirmarClick(Sender: TObject);
  private
    { Private declarations }
    infe: integer;
  public
    { Public declarations }
    constructor create(id_nfe_dest: integer);
  end;

var
  frm_manifestar_nfe: Tfrm_manifestar_nfe;

implementation

{$R *.dfm}

uses m_NFe, h_DB, h_Dialogs, h_NF_Functions;

procedure Tfrm_manifestar_nfe.btn_cancelarClick(Sender: TObject);
begin
  close;
end;

procedure Tfrm_manifestar_nfe.btn_confirmarClick(Sender: TObject);
var
  qry: tfdquery;
  mnfe_return: string;
begin
  try
    cb_cod_man.ValidateEdit(true);
    qry := tdb.SimpleQuery('select chave from nfe_destinadas where id = ?', [infe]);
    if qry <> nil then
    begin
      TDialogs.wnOpNf.Show('Enviado Manifesto ' + slinebreak + 'NF-e ', 55);
      mnfe_return := tnfe.create.manifestarNFe(cb_cod_man.SelectedItem + 1, qry.Fields[0].asstring, mmObs.Text);
      TDialogs.wnOpNf.Free;
      tnf_func.StatusRetornoNF(mnfe_return, 55);
      if tnf_func.EvtManifesto(mnfe_return) then
      begin
        tdb.ExecQuery('update nfe_destinadas set id_manifesto = ?, observacoes = ? where id = ?', [cb_cod_man.SelectedItem + 1, mmObs.Text, infe]);
      end
      else
      begin
        mmObs.SelectAll;
        mmObs.SetFocus;
        exit;
      end;
    end
    else
      raise exception.create('NF-e destinada código "' + inttostr(infe) + '" não encontrada!');
    close;
  except

    on e: exception do
    begin
      TDialogs.wnErro('Manifestar DF-e', 'Erro ao manifestar NF-e:' + e.message);
      TDialogs.wnOpNf.Free;
    end;

  end;

end;

constructor Tfrm_manifestar_nfe.create(id_nfe_dest: integer);
begin
  inherited create(nil);
  infe := id_nfe_dest;
end;

procedure Tfrm_manifestar_nfe.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  Action := cafree;
  self := nil;
end;

end.
