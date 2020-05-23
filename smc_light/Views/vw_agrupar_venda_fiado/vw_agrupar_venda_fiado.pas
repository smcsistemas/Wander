unit vw_agrupar_venda_fiado;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls, cxGraphics, cxControls, cxLookAndFeels, cxLookAndFeelPainters, cxContainer, cxEdit,
  dxSkinsCore, dxSkinBlack, dxSkinBlue, dxSkinBlueprint, dxSkinCaramel, dxSkinCoffee, dxSkinDarkRoom, dxSkinDarkSide,
  dxSkinDevExpressDarkStyle, dxSkinDevExpressStyle, dxSkinFoggy, dxSkinGlassOceans, dxSkinHighContrast, dxSkiniMaginary, dxSkinLilian,
  dxSkinLiquidSky, dxSkinLondonLiquidSky, dxSkinMcSkin, dxSkinMetropolis, dxSkinMetropolisDark, dxSkinMoneyTwins, dxSkinOffice2007Black,
  dxSkinOffice2007Blue, dxSkinOffice2007Green, dxSkinOffice2007Pink, dxSkinOffice2007Silver, dxSkinOffice2010Black, dxSkinOffice2010Blue,
  dxSkinOffice2010Silver, dxSkinOffice2013DarkGray, dxSkinOffice2013LightGray, dxSkinOffice2013White, dxSkinOffice2016Colorful,
  dxSkinOffice2016Dark, dxSkinPumpkin, dxSkinSeven, dxSkinSevenClassic, dxSkinSharp, dxSkinSharpPlus, dxSkinSilver, dxSkinSpringTime,
  dxSkinStardust, dxSkinSummer2008, dxSkinTheAsphaltWorld, dxSkinsDefaultPainters, dxSkinValentine, dxSkinVisualStudio2013Blue,
  dxSkinVisualStudio2013Dark, dxSkinVisualStudio2013Light, dxSkinVS2010, dxSkinWhiteprint, dxSkinXmas2008Blue, cxTextEdit, cxMaskEdit,
  cxDropDownEdit, cxLookupEdit, cxDBLookupEdit, cxDBLookupComboBox, Vcl.Menus, cxButtons, FireDAC.Stan.Intf, FireDAC.Stan.Option,
  FireDAC.Stan.Param, FireDAC.Stan.Error, FireDAC.DatS, FireDAC.Phys.Intf, FireDAC.DApt.Intf, FireDAC.Stan.Async, FireDAC.DApt, Data.DB,
  FireDAC.Comp.DataSet, FireDAC.Comp.Client, S_Module, h_Dialogs;

type
  Tfrm_agrupar_venda_fiado = class(TForm)
    Label1: TLabel;
    Label2: TLabel;
    cbPagamentos: TcxLookupComboBox;
    btn_confirmar: TcxButton;
    sql_pagamentos: TFDQuery;
    ds_pagamentos: TDataSource;
    sql_pagamentosCODIGO: TFDAutoIncField;
    sql_pagamentosCOD_TIPO_PAGAMENTO: TStringField;
    sql_pagamentosTIPO_PAGAMENTO: TStringField;
    procedure FormShow(Sender: TObject);
    procedure btn_confirmarClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }

    class function Show: string;
  end;

var
  frm_agrupar_venda_fiado: Tfrm_agrupar_venda_fiado;

implementation

{$R *.dfm}

procedure Tfrm_agrupar_venda_fiado.btn_confirmarClick(Sender: TObject);
begin
  if tdialogs.wnConfirmacao('Forma de Pagamento', slinebreak + ' "' + cbPagamentos.Text + '" foi selecionada como nova forma de pagamento.'
    + slinebreak + 'Deseja prosseguir com a operação ?', 10) then
    close
  else
    cbPagamentos.SetFocus;
end;

procedure Tfrm_agrupar_venda_fiado.FormShow(Sender: TObject);
begin
  sql_pagamentos.close;
  sql_pagamentos.Open();
  cbPagamentos.ItemIndex := 0;
end;

class function Tfrm_agrupar_venda_fiado.Show: string;
begin
  frm_agrupar_venda_fiado := Tfrm_agrupar_venda_fiado.Create(nil);
  with frm_agrupar_venda_fiado do
  begin
    ShowModal;
    Result := frm_agrupar_venda_fiado.cbPagamentos.EditValue;
  end;
  FreeAndNil(frm_agrupar_venda_fiado);
  frm_agrupar_venda_fiado := nil;
end;

end.
