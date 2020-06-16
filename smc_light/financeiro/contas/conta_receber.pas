//Verificado automaticamente em 16/06/2020 09:27
unit conta_receber;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, cxGraphics, cxControls, cxLookAndFeels,
  cxLookAndFeelPainters, cxContainer, cxEdit, dxSkinsCore,
  dxSkinOffice2013White, Vcl.Menus, Data.DB, cxLabel, Vcl.StdCtrls, Vcl.Mask,
  Vcl.DBCtrls, Vcl.ExtCtrls, Vcl.Grids, Vcl.DBGrids, cxButtons, cxRadioGroup,
  cxTextEdit, cxMaskEdit, cxDropDownEdit, Vcl.ComCtrls, cxGroupBox,
  dxSkinOffice2007Silver, dxSkinOffice2013LightGray;

type
  TFrm_contas_receber = class(TForm)
    Label2: TLabel;
    Label4: TLabel;
    Label5: TLabel;
    Label6: TLabel;
    cxGroupBox1: TcxGroupBox;
    Label1: TLabel;
    Label13: TLabel;
    DateTimePicker1: TDateTimePicker;
    DateTimePicker2: TDateTimePicker;
    CB_MES: TcxComboBox;
    cxGroupBox3: TcxGroupBox;
    cxRadioButton4: TcxRadioButton;
    cxRadioButton5: TcxRadioButton;
    cxRadioButton6: TcxRadioButton;
    cxRadioButton7: TcxRadioButton;
    cxRadioButton8: TcxRadioButton;
    cxRadioButton9: TcxRadioButton;
    cxButton4: TcxButton;
    cxGroupBox4: TcxGroupBox;
    DBGrid2: TDBGrid;
    BtnRecibo: TcxButton;
    BtnBoleto: TcxButton;
    BtnAlterar: TcxButton;
    cxGroupBox6: TcxGroupBox;
    Shape4: TShape;
    Shape3: TShape;
    Shape2: TShape;
    Shape1: TShape;
    Label11: TLabel;
    Shape7: TShape;
    Shape6: TShape;
    Shape5: TShape;
    Label12: TLabel;
    Label10: TLabel;
    Label9: TLabel;
    Label8: TLabel;
    Label7: TLabel;
    Label3: TLabel;
    cxGroupBox5: TcxGroupBox;
    DBGrid1: TDBGrid;
    cxButton1: TcxButton;
    cxButton2: TcxButton;
    cxGroupBox2: TcxGroupBox;
    DBEdit4: TDBEdit;
    Filtro: TcxComboBox;
    btn_marca: TcxButton;
    DBEdit1: TDBEdit;
    DBEdit2: TDBEdit;
    cxButton3: TcxButton;
    cxComboBox3: TcxComboBox;
    cxLabel1: TcxLabel;
    cxLabel2: TcxLabel;
    cxLabel3: TcxLabel;
    cxRadioButton1: TcxRadioButton;
    cxRadioButton2: TcxRadioButton;
    cxRadioButton3: TcxRadioButton;
    procedure cxButton2Click(Sender: TObject);
    procedure cxButton1Click(Sender: TObject);
    procedure BtnAlterarClick(Sender: TObject);
    procedure BtnBoletoClick(Sender: TObject);
    procedure BtnReciboClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Frm_contas_receber: TFrm_contas_receber;

implementation

uses
  conta_receber_inclusao, baixar_parcelas, baixar_multiplas_parcelas, boleto, emissao_recibo;

{$R *.dfm}

procedure TFrm_contas_receber.BtnAlterarClick(Sender: TObject);
begin
Frm_baixa_multiplas_parecelas:= TFrm_baixa_multiplas_parecelas.Create(nil);
Frm_baixa_multiplas_parecelas.ShowModal;
end;

procedure TFrm_contas_receber.BtnBoletoClick(Sender: TObject);
begin
frm_boleto:= Tfrm_boleto.Create(nil);
frm_boleto.ShowModal;
end;

procedure TFrm_contas_receber.BtnReciboClick(Sender: TObject);
begin
frm_emissao_recibo:= Tfrm_emissao_recibo.Create(nil);
frm_emissao_recibo.ShowModal;
end;

procedure TFrm_contas_receber.cxButton1Click(Sender: TObject);
begin
Frm_baixar_parcelas:= TFrm_baixar_parcelas.Create(nil);
Frm_baixar_parcelas.ShowModal;
end;

procedure TFrm_contas_receber.cxButton2Click(Sender: TObject);
begin
Frm_contas_reb_incluir:= TFrm_contas_reb_incluir.Create(nil);
Frm_contas_reb_incluir.ShowModal;
end;

end.
