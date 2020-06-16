//Verificado automaticamente em 16/06/2020 09:27
unit config_nfce_;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, cxGraphics, cxLookAndFeels,
  cxLookAndFeelPainters, Vcl.Menus, dxSkinsCore, cxControls, cxContainer,
  cxEdit, cxGroupBox, Vcl.Mask, Vcl.DBCtrls, cxTextEdit, cxMaskEdit,
  cxDropDownEdit, cxDBEdit, Vcl.StdCtrls, cxCheckBox, cxButtons;

type
  Tfrm_conf_nfce_ = class(TForm)
    Label4: TLabel;
    btnSair: TcxButton;
    btnGravar: TcxButton;
    btn_Alterar: TcxButton;
    grp_geral: TGroupBox;
    grp11: TGroupBox;
    chk_normal: TcxCheckBox;
    chk_contingencia: TcxCheckBox;
    grp14: TGroupBox;
    chk_homologacao: TcxCheckBox;
    chk_producao: TcxCheckBox;
    GroupBox1: TGroupBox;
    edtPastaNotas: TEdit;
    btn_buscar_xml: TcxButton;
    grp_parametros_nfce: TGroupBox;
    chk_danfe_direto: TcxDBCheckBox;
    chk_visualizar_danfe: TcxDBCheckBox;
    chk_nfce_comprovante: TcxDBCheckBox;
    cxDBCheckBox1: TcxDBCheckBox;
    chk_confirmacao_danfe: TcxDBCheckBox;
    cxDBCheckBox2: TcxDBCheckBox;
    cxDBCheckBox5: TcxDBCheckBox;
    cxDBCheckBox6: TcxDBCheckBox;
    cxDBCheckBox3: TcxDBCheckBox;
    cxDBCheckBox4: TcxDBCheckBox;
    cxDBCheckBox7: TcxDBCheckBox;
    cxDBCheckBox8: TcxDBCheckBox;
    chk_cartao_gera_nfce: TcxDBCheckBox;
    chk_venda_gera_nfce: TcxDBCheckBox;
    grp_impressora_nfce: TGroupBox;
    cb_nfce_impressoras: TcxComboBox;
    GroupBox2: TGroupBox;
    cxComboBox1: TcxComboBox;
    grp_sequencia_nfce: TGroupBox;
    lbl1: TLabel;
    Label15: TLabel;
    edt_ultima_nfce: TEdit;
    Edit1: TEdit;
    grp_grupo_nfce: TGroupBox;
    Label7: TLabel;
    Label8: TLabel;
    nfce_lote: TDBEdit;
    nfce_serie: TDBEdit;
    cxGroupBox2: TcxGroupBox;
    GroupBox3: TGroupBox;
    Edit2: TEdit;
    cxButton1: TcxButton;
    grp_csc: TGroupBox;
    Label1: TLabel;
    Label5: TLabel;
    id_token: TDBEdit;
    id_csc: TDBEdit;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frm_conf_nfce_: Tfrm_conf_nfce_;

implementation

{$R *.dfm}

procedure Tfrm_conf_nfce_.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  Action := cafree;
  self := nil;
end;

end.
