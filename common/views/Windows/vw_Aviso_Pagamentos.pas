unit vw_Aviso_Pagamentos;

interface

uses
  Winapi.Windows, System.SysUtils, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.ExtCtrls, Vcl.StdCtrls, dxGDIPlusClasses;

type
  Tfrm_aviso_pagamentos = class(TForm)
    img_vermelho: TImage;
    img_azul: TImage;
    lbl_faltam: TLabel;
    shp_3: TShape;
    lbl_dias: TLabel;
    shp_4: TShape;
    lbl_venc_mens: TLabel;
    lbl_desconto: TLabel;
    lbl_desc_dias: TLabel;
    img_logo_1: TImage;
    lbl_aut_com: TLabel;
    shp_1: TShape;
    shp_2: TShape;
    lbl_tel: TLabel;
    lbl_ddd: TLabel;
    img_logo_2: TImage;
    lbl_msg_unica: TLabel;
    lbl_ddd_2: TLabel;
    lbl_tel_2: TLabel;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
    procedure FormShow(Sender: TObject);
    procedure shp_color(color: Integer);
    procedure FormClick(Sender: TObject);

  private
    { Private declarations }
  public
    { Public declarations }
    procedure aviso_dias_antes;
    procedure aviso_dia_vencimento;
    procedure bloqueio_sistema_block;
    procedure bloqueio_dias_depois;
    procedure fatura_em_aberto;
    procedure aviso_bloqueio;

  var
    dias: string;

  end;

var
  frm_aviso_pagamentos: Tfrm_aviso_pagamentos;

implementation

{$R *.dfm}

procedure Tfrm_aviso_pagamentos.aviso_bloqueio;
begin
  img_azul.hide;
  img_vermelho.show;
  img_logo_1.hide;
  shp_1.hide;
  shp_2.hide;
  shp_3.hide;
  shp_4.hide;
  lbl_aut_com.hide;
  lbl_tel.hide;
  lbl_ddd.hide;
  lbl_faltam.hide;
  lbl_dias.hide;
  lbl_desc_dias.hide;
  lbl_venc_mens.hide;
  lbl_desconto.hide;
  lbl_msg_unica.show;
  img_logo_2.show;
  lbl_ddd_2.show;
  lbl_tel_2.show;
  lbl_msg_unica.Caption := 'ÚLTIMO DIA PARA' + SLINEBREAK + 'UTILIZAÇÃO DO SEU SISTEMA!' + SLINEBREAK + 'ENTRE EM CONTATO' + SLINEBREAK + 'PARA MAIS INFORMAÇÕES!';
  lbl_msg_unica.Font.Size := 40;
  lbl_msg_unica.Top := 148;
  self.Caption := 'Bloqueio do sistema!';
end;

procedure Tfrm_aviso_pagamentos.aviso_dias_antes;
begin
  img_azul.show;
  img_vermelho.hide;
  img_logo_1.show;
  img_logo_2.hide;
  shp_1.show;
  shp_2.show;
  shp_3.show;
  shp_4.show;
  lbl_aut_com.show;
  lbl_tel.show;
  lbl_ddd.show;
  lbl_faltam.show;
  lbl_dias.show;
  lbl_desc_dias.show;
  lbl_venc_mens.show;
  lbl_desconto.show;
  lbl_msg_unica.hide;
  lbl_ddd_2.hide;
  lbl_tel_2.hide;
  shp_color(clWebCornFlowerBlue);
  self.Caption := 'Vencimento da mensalidade!';
end;

procedure Tfrm_aviso_pagamentos.aviso_dia_vencimento;
begin
  img_azul.show;
  img_vermelho.hide;
  img_logo_1.hide;
  shp_1.hide;
  shp_2.hide;
  shp_3.hide;
  shp_4.hide;
  lbl_aut_com.hide;
  lbl_tel.hide;
  lbl_ddd.hide;
  lbl_faltam.hide;
  lbl_dias.hide;
  lbl_desc_dias.hide;
  lbl_venc_mens.hide;
  lbl_desconto.hide;
  lbl_msg_unica.show;
  img_logo_2.show;
  lbl_ddd_2.show;
  lbl_tel_2.show;
  lbl_msg_unica.Caption := 'ÚLTIMO DIA PARA' + SLINEBREAK + 'PAGAMENTO DA SUA MENSALIDADE' + SLINEBREAK + 'COM DESCONTO !';
  self.Caption := 'Vencimento da mensalidade!';
end;

procedure Tfrm_aviso_pagamentos.bloqueio_dias_depois;
begin
  img_azul.hide;
  img_vermelho.show;
  img_logo_1.show;
  img_logo_2.hide;
  shp_1.show;
  shp_2.show;
  shp_3.show;
  shp_4.show;
  lbl_aut_com.show;
  lbl_tel.show;
  lbl_ddd.show;
  lbl_faltam.show;
  lbl_dias.show;
  lbl_desc_dias.show;
  lbl_venc_mens.show;
  lbl_venc_mens.Caption := 'PARA BLOQUEIO' + SLINEBREAK + 'DO SISTEMA!';
  lbl_desconto.show;
  lbl_desconto.Caption := 'ENTRE EM' + SLINEBREAK + 'CONTATO PARA' + SLINEBREAK + 'MAIS INFORMAÇÕES.';
  lbl_desconto.Font.Size := 22;
  lbl_msg_unica.hide;
  lbl_ddd_2.hide;
  lbl_tel_2.hide;
  shp_color(clWebFirebrick);
  self.Caption := 'Bloqueio do sistema!';
end;

procedure Tfrm_aviso_pagamentos.bloqueio_sistema_block;
begin
  img_azul.hide;
  img_vermelho.show;
  img_logo_1.hide;
  shp_1.hide;
  shp_2.hide;
  shp_3.hide;
  shp_4.hide;
  lbl_aut_com.hide;
  lbl_tel.hide;
  lbl_ddd.hide;
  lbl_faltam.hide;
  lbl_dias.hide;
  lbl_desc_dias.hide;
  lbl_venc_mens.hide;
  lbl_desconto.hide;
  lbl_msg_unica.show;
  img_logo_2.show;
  lbl_ddd_2.show;
  lbl_tel_2.show;
  lbl_msg_unica.Caption := 'SEU SISTEMA' + SLINEBREAK + 'ESTÁ BLOQUEADO!' + SLINEBREAK + 'ENTRE EM CONTATO' + SLINEBREAK + 'PARA MAIS INFORMAÇÕES!';
  lbl_msg_unica.Font.Size := 40;
  lbl_msg_unica.Top := 150;
  self.Caption := 'Bloqueio do sistema!';
end;

procedure Tfrm_aviso_pagamentos.fatura_em_aberto;
begin
  img_azul.show;
  img_vermelho.hide;
  img_logo_1.hide;
  shp_1.hide;
  shp_2.hide;
  shp_3.hide;
  shp_4.hide;
  lbl_aut_com.hide;
  lbl_tel.hide;
  lbl_ddd.hide;
  lbl_faltam.hide;
  lbl_dias.hide;
  lbl_desc_dias.hide;
  lbl_venc_mens.hide;
  lbl_desconto.hide;
  lbl_msg_unica.show;
  img_logo_2.show;
  lbl_ddd_2.show;
  lbl_tel_2.show;
  lbl_msg_unica.Caption := 'NÃO IDENTIFICAMOS O PAGAMENTO' + SLINEBREAK + 'DA SUA MENSALIDADE!' + SLINEBREAK + 'ENTRE EM CONTATO' + SLINEBREAK + 'PARA MAIS INFORMAÇÕES';
  lbl_msg_unica.Font.Size := 40;
  lbl_msg_unica.Top := 150;
  self.Caption := 'Vencimento da mensalidade!';
end;

procedure Tfrm_aviso_pagamentos.FormClick(Sender: TObject);
begin
  frm_aviso_pagamentos.show;
end;

procedure Tfrm_aviso_pagamentos.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  Action := cafree;
  self := nil;
end;

procedure Tfrm_aviso_pagamentos.FormKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
begin
  if vk_escape = Key then
    close;
end;

procedure Tfrm_aviso_pagamentos.FormShow(Sender: TObject);
begin
  if dias <> emptystr then
    if strtoint(dias) = 1 then
    begin
      lbl_faltam.Caption := 'FALTA';
      lbl_desc_dias.Caption := 'DIA';
    end;
  lbl_dias.Caption := dias;
  self.update;
end;

procedure Tfrm_aviso_pagamentos.shp_color(color: Integer);
begin
  shp_1.Brush.color := color;
  shp_2.Brush.color := color;
  shp_3.Brush.color := color;
  shp_4.Brush.color := color;
  shp_1.pen.color := color;
  shp_2.pen.color := color;
  shp_3.pen.color := color;
  shp_4.pen.color := color;
end;

end.
