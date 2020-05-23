unit cad_caixa;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, cxGraphics, cxLookAndFeels,
  cxLookAndFeelPainters, Vcl.Menus, dxSkinsCore, dxSkinOffice2013White,
  cxControls, cxStyles, dxSkinscxPCPainter, cxCustomData, cxFilter, cxData,
  cxDataStorage, cxEdit, cxNavigator, Data.DB, cxDBData, Vcl.ComCtrls,
  cxGridCustomTableView, cxGridTableView, cxGridDBTableView, cxGridLevel,
  cxClasses, cxGridCustomView, cxGrid, Vcl.StdCtrls, cxButtons, Vcl.Mask,
  Vcl.DBCtrls, S_Module, dxSkinBlack, dxSkinBlue, dxSkinBlueprint,
  dxSkinCaramel, dxSkinCoffee, dxSkinDarkRoom, dxSkinDarkSide,
  dxSkinDevExpressDarkStyle, dxSkinDevExpressStyle, dxSkinFoggy,
  dxSkinGlassOceans, dxSkinHighContrast, dxSkiniMaginary, dxSkinLilian,
  dxSkinLiquidSky, dxSkinLondonLiquidSky, dxSkinMcSkin, dxSkinMetropolis,
  dxSkinMetropolisDark, dxSkinMoneyTwins, dxSkinOffice2007Black,
  dxSkinOffice2007Blue, dxSkinOffice2007Green, dxSkinOffice2007Pink,
  dxSkinOffice2007Silver, dxSkinOffice2010Black, dxSkinOffice2010Blue,
  dxSkinOffice2010Silver, dxSkinOffice2013DarkGray,
  dxSkinOffice2013LightGray, dxSkinOffice2016Colorful,
  dxSkinOffice2016Dark, dxSkinPumpkin, dxSkinSeven, dxSkinSevenClassic,
  dxSkinSharp, dxSkinSharpPlus, dxSkinSilver, dxSkinSpringTime,
  dxSkinStardust, dxSkinSummer2008, dxSkinTheAsphaltWorld,
  dxSkinsDefaultPainters, dxSkinValentine, dxSkinVisualStudio2013Blue,
  dxSkinVisualStudio2013Dark, dxSkinVisualStudio2013Light, dxSkinVS2010,
  dxSkinWhiteprint, dxSkinXmas2008Blue, FireDAC.Stan.Intf,
  FireDAC.Stan.Option, FireDAC.Stan.Param, FireDAC.Stan.Error,
  FireDAC.DatS, FireDAC.Phys.Intf, FireDAC.DApt.Intf, FireDAC.Stan.Async,
  FireDAC.DApt, FireDAC.Comp.DataSet, FireDAC.Comp.Client, u_funcoes, v_Env,
  liberacao;

type
  Tfrm_cad_caixa = class(TForm)
    lbl2: TLabel;
    lbl1: TLabel;
    dbedt2: TDBEdit;
    dbedt1: TDBEdit;
    BtnGravar: TcxButton;
    BtnCancelar: TcxButton;
    BtnIncluir: TcxButton;
    BtnAlterar: TcxButton;
    BtnExcluir: TcxButton;
    gdTerminal: TcxGrid;
    gdTerminalTbVw: TcxGridDBTableView;
    gdTerminalLv: TcxGridLevel;
    gdTerminalTbVwColumn1: TcxGridDBColumn;
    gdTerminalTbVwColumn2: TcxGridDBColumn;
    qTerminal: TFDQuery;
    qTerminalId: TFDAutoIncField;
    qTerminalDescricao: TStringField;
    dsTerminal: TDataSource;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure BtnIncluirClick(Sender: TObject);
    procedure BtnCancelarClick(Sender: TObject);
    procedure BtnGravarClick(Sender: TObject);
    procedure dsTerminalStateChange(Sender: TObject);
    procedure BtnAlterarClick(Sender: TObject);
    procedure BtnExcluirClick(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure FormKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frm_cad_caixa: Tfrm_cad_caixa;

implementation

{$R *.dfm}

procedure Tfrm_cad_caixa.BtnAlterarClick(Sender: TObject);
begin
     qTerminal.Edit;
     dbedt2.SetFocus;
end;

procedure Tfrm_cad_caixa.BtnCancelarClick(Sender: TObject);
begin
     qTerminal.Cancel;
     gdTerminal.SetFocus;
end;

procedure Tfrm_cad_caixa.BtnExcluirClick(Sender: TObject);
begin
     try
        if Application.MessageBox('Deseja realmente excluir o terminal?','Exclusão de Cadastro',MB_YESNO+MB_ICONQUESTION) = ID_YES then
        begin
             if not TEnv.Tuser.IsAdmin then
             begin
                  if TFrm_liberacao.Execute then
                     u_funcoes.ExcluirCadastro(qTerminal);
             end
             else
                 u_funcoes.ExcluirCadastro(qTerminal);

             gdTerminal.SetFocus;
        end;
     except
        On E: Exception do
        begin
          Application.MessageBox(StringToOleStr(E.Message + sLineBreak + 'Erro ao excluir o terminal.'), 'Erro de Cadastro.',MB_ICONINFORMATION + MB_OK);
        end;
     end;
end;

procedure Tfrm_cad_caixa.BtnGravarClick(Sender: TObject);
begin
     try
        qTerminal.Post;
        gdTerminal.SetFocus;
     except
        On E: Exception do
        begin
          Application.MessageBox(StringToOleStr(E.Message + sLineBreak + 'Erro ao cadastrar terminal.'), 'Erro de Cadastro.',MB_ICONINFORMATION + MB_OK);
        end;
     end;
end;

procedure Tfrm_cad_caixa.BtnIncluirClick(Sender: TObject);
begin
     qTerminal.Insert;
     dbedt2.SetFocus;
end;

procedure Tfrm_cad_caixa.dsTerminalStateChange(Sender: TObject);
begin
     dbedt1.Enabled := (qTerminal.State in [dsInsert, dsEdit, dsSetKey]);
     dbedt2.Enabled := (qTerminal.State in [dsInsert, dsEdit, dsSetKey]);
     gdTerminal.Enabled := (qTerminal.State = dsBrowse);
     BtnIncluir.Enabled := (qTerminal.State = dsBrowse);
     BtnAlterar.Enabled := (qTerminal.State = dsBrowse);
     BtnExcluir.Enabled := (qTerminal.State = dsBrowse);
     BtnGravar.Enabled := (qTerminal.State in [dsInsert, dsEdit, dsSetKey]);
     BtnCancelar.Enabled := (qTerminal.State in [dsInsert, dsEdit, dsSetKey]);
end;

procedure Tfrm_cad_caixa.FormClose(Sender: TObject; var Action: TCloseAction);
begin
     qTerminal.Close;
     Action := cafree;
     self := nil;
end;

procedure Tfrm_cad_caixa.FormKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
     u_funcoes.TeclasAtalho(Key, [VK_F1, VK_F2, VK_F3, VK_F5, VK_F6],
                                 [BtnIncluir, BtnGravar, BtnCancelar, BtnAlterar, BtnExcluir]);
end;

procedure Tfrm_cad_caixa.FormShow(Sender: TObject);
begin
     qTerminal.Open;
     gdTerminal.SetFocus;
end;

end.
