unit U_Localizacao;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
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
  dxSkinXmas2008Blue, Vcl.Menus, Vcl.StdCtrls, cxButtons, cxMaskEdit,
  cxDropDownEdit, cxDBEdit, cxTextEdit, cxGroupBox, FireDAC.Stan.Intf,
  FireDAC.Stan.Option, FireDAC.Stan.Param, FireDAC.Stan.Error, FireDAC.DatS,
  FireDAC.Stan.Async, FireDAC.DApt,
  Data.DB, FireDAC.Comp.DataSet, FireDAC.Comp.Client,
  dxGDIPlusClasses, Vcl.ExtCtrls, FireDAC.Phys.Intf, FireDAC.DApt.Intf;

type
  TFrm_Localizacao = class(TForm)
    cxGroupBox10: TcxGroupBox;
    Label2: TLabel;
    Label3: TLabel;
    Label4: TLabel;
    Label5: TLabel;
    Label6: TLabel;
    Label7: TLabel;
    Label8: TLabel;
    Label9: TLabel;
    Label10: TLabel;
    cxDBTextEdit2: TcxDBTextEdit;
    cxDBTextEdit3: TcxDBTextEdit;
    cxDBTextEdit4: TcxDBTextEdit;
    cxDBTextEdit5: TcxDBTextEdit;
    cxDBTextEdit6: TcxDBTextEdit;
    cxDBTextEdit7: TcxDBTextEdit;
    cxDBTextEdit8: TcxDBTextEdit;
    cxDBTextEdit9: TcxDBTextEdit;
    cxDBComboBox1: TcxDBComboBox;
    BtnGravar: TcxButton;
    SQL_Localizacao: TFDQuery;
    DS_localizacao: TDataSource;
    SQL_LISTA: TFDQuery;
    ds_lista: TDataSource;
    SQL_LISTACODIGO: TFDAutoIncField;
    SQL_LISTANOME: TStringField;
    SQL_LISTARUA: TStringField;
    SQL_LISTABAIRRO: TStringField;
    SQL_LISTACIDADE: TStringField;
    SQL_LISTAESTADO: TStringField;
    SQL_LISTACORREDOR: TStringField;
    SQL_LISTAPRATELEIRA: TStringField;
    SQL_LISTACOLUNA: TStringField;
    SQL_LISTALADO: TStringField;
    SQL_LISTANUMERO: TStringField;
    SQL_LISTADATA_CADASTRO: TDateField;
    BtnCancelar: TcxButton;
    btnAlterar: TcxButton;
    btnExcluir: TcxButton;
    BtnIncluir: TcxButton;
    SQL_LocalizacaoCODIGO: TFDAutoIncField;
    SQL_LocalizacaoNOME: TStringField;
    SQL_LocalizacaoRUA: TStringField;
    SQL_LocalizacaoBAIRRO: TStringField;
    SQL_LocalizacaoCIDADE: TStringField;
    SQL_LocalizacaoESTADO: TStringField;
    SQL_LocalizacaoCORREDOR: TStringField;
    SQL_LocalizacaoPRATELEIRA: TStringField;
    SQL_LocalizacaoCOLUNA: TStringField;
    SQL_LocalizacaoLADO: TStringField;
    SQL_LocalizacaoNUMERO: TStringField;
    SQL_LocalizacaoDATA_CADASTRO: TDateField;
    procedure BtnIncluirClick(Sender: TObject);
    procedure BtnGravarClick(Sender: TObject);
    procedure BtnCancelarClick(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure cxButton1Click(Sender: TObject);
    procedure FormKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
    procedure cxDBTextEdit2KeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
    procedure cxDBTextEdit4KeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
    procedure cxDBTextEdit3KeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
    procedure cxDBTextEdit5KeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
    procedure cxDBTextEdit6KeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
    procedure cxDBTextEdit7KeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
    procedure cxDBTextEdit8KeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
    procedure cxDBTextEdit9KeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
    procedure FormShow(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }

  end;

var
  Frm_Localizacao: TFrm_Localizacao;

implementation

{$R *.dfm}

uses u_funcoes, cadastro_produto, vw_main;

procedure TFrm_Localizacao.BtnCancelarClick(Sender: TObject);
begin
  SQL_Localizacao.Cancel;
  BtnCancelar.Enabled := False;
  BtnIncluir.Visible := True;
  BtnGravar.Visible := False;
end;

procedure TFrm_Localizacao.BtnGravarClick(Sender: TObject);
begin
  SQL_LocalizacaoDATA_CADASTRO.Value := Date;
  SQL_Localizacao.Post;
  SQL_Localizacao.Active := False;
  BtnIncluir.Visible := True;
  BtnGravar.Visible := False;
  BtnCancelar.Enabled := False;

  MessageDLG('ATENÇÃO: Operação concluída com sucesso', mtInformation, [mbOk], 0);

end;

procedure TFrm_Localizacao.BtnIncluirClick(Sender: TObject);
begin
  SQL_Localizacao.Active := True;
  SQL_Localizacao.Insert;
  SQL_LocalizacaoDATA_CADASTRO.Value := Date;
  BtnGravar.Enabled := True;
  SQL_LISTA.Active := True;
 // cxDBTextEdit1.SetFocus;
end;

procedure TFrm_Localizacao.cxButton1Click(Sender: TObject);
begin
  SQL_Localizacao.Active := True;
  SQL_Localizacao.Insert;
 // cxDBTextEdit10.Text := Frm_Produto.dbedt_codigo.Text;
 // cxDBTextEdit1.Text := Frm_Produto.DESCRICAO_PRODUTO.Text;
  cxDBTextEdit2.SetFocus;
  BtnIncluir.Visible := False;
  BtnGravar.Visible := True;
  BtnCancelar.Enabled := True;
end;

procedure TFrm_Localizacao.cxDBTextEdit2KeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
begin
  if (Key = vk_Return) or (Key = vk_tab) then
  begin
    cxDBTextEdit3.SetFocus;
  end;
end;

procedure TFrm_Localizacao.cxDBTextEdit3KeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
begin
  if (Key = vk_Return) or (Key = vk_tab) then
  begin
    cxDBTextEdit4.SetFocus;
  end;
end;

procedure TFrm_Localizacao.cxDBTextEdit4KeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
begin
  if (Key = vk_Return) or (Key = vk_tab) then
  begin
    cxDBTextEdit5.SetFocus;
  end;
end;

procedure TFrm_Localizacao.cxDBTextEdit5KeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
begin
  if (Key = vk_Return) or (Key = vk_tab) then
  begin
    cxDBTextEdit6.SetFocus;
  end;
end;

procedure TFrm_Localizacao.cxDBTextEdit6KeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
begin
  if (Key = vk_Return) or (Key = vk_tab) then
  begin
    cxDBTextEdit7.SetFocus;
  end;
end;

procedure TFrm_Localizacao.cxDBTextEdit7KeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
begin
  if (Key = vk_Return) or (Key = vk_tab) then
  begin
    cxDBTextEdit8.SetFocus;
  end;
end;

procedure TFrm_Localizacao.cxDBTextEdit8KeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
begin
  if (Key = vk_Return) or (Key = vk_tab) then
  begin
    cxDBTextEdit9.SetFocus;
  end;
end;

procedure TFrm_Localizacao.cxDBTextEdit9KeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
begin
  if (Key = vk_Return) or (Key = vk_tab) then
  begin
    cxDBComboBox1.SetFocus;
  end;
end;

procedure TFrm_Localizacao.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  Action := cafree;
  //Frm_Principal.dxRibbon1.ShowTabGroups := True;
end;

procedure TFrm_Localizacao.FormKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
begin
  u_funcoes.TeclasAtalho(Key, [VK_F1, VK_F2, VK_F3], [BtnIncluir, BtnGravar, BtnCancelar]);
end;

procedure TFrm_Localizacao.FormShow(Sender: TObject);
begin
  with SQL_Localizacao do
  begin
    Close;
    ParamByName('pcodigo').Value := '';
    Open;
    edit;
  end;
  BtnIncluir.Visible := False;
  BtnGravar.Visible := True;
  if SQL_Localizacao.RecordCount = 0 then
  begin
    BtnIncluir.Visible := True;
    BtnGravar.Visible := False;
  end;
end;

end.
