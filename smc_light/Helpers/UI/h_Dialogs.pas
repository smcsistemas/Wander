unit h_Dialogs;

interface

uses System.Classes, alerta, h_Functions, confirmacao, informacao, erro,
  vw_op_nf, variants, desenvolvimento;

type
  TDialogs = class(TObject)

  public

    type
    wnOpNF = class(TObject)
    public
      class procedure Show(const xMessage: string; const KindOf: integer);
      class procedure Free;
    end;

  class procedure wnAlerta(Title, aMessage: string; FontSize: integer = 12; Align: TAlignment = taCenter);

  class procedure wnInfo(Title, aMessage: string; FontSize: integer = 12; Align: TAlignment = taCenter);

  class procedure wnErro(Title, aMessage: string; FontSize: integer = 12; Align: TAlignment = taCenter);

  class function wnConfirmacao(Title, aMessage: string; FontSize: integer = 12; Align: TAlignment = taCenter): boolean;

  class procedure debugMsg(values: array of variant);

  class procedure ManWorking;
  end;

implementation

class procedure TDialogs.debugMsg(values: array of variant);
var
  msg: string;
  i: integer;
begin
  msg := varastype(values[0], varstring);
  for i := 1 to length(values) - 1 do
    msg := concat(msg, slinebreak, varastype(values[i], varstring));

  self.wnErro('DEBUG MESSAGE', msg, 8);
end;

class procedure TDialogs.ManWorking;
begin
  if not tfunctions.CheckOpen(FMR_desenvolvimento) then
  begin
    FMR_desenvolvimento := TFMR_desenvolvimento.Create(nil);
    FMR_desenvolvimento.ShowModal;
  end;
end;

class procedure TDialogs.wnAlerta(Title, aMessage: string; FontSize: integer = 12; Align: TAlignment = taCenter);
begin
  tfunctions.write_log(Title + ':' + aMessage);
  frm_alerta := tfrm_alerta.Create(nil);
  frm_alerta.Titulo(Title);
  frm_alerta.Mensagem(aMessage);
  frm_alerta.memo_texto.Style.Font.Size := FontSize;
  frm_alerta.memo_texto.Properties.Alignment := Align;
  frm_alerta.ShowModal;
  frm_alerta.Free;
end;

class procedure TDialogs.wnInfo(Title, aMessage: string; FontSize: integer = 12; Align: TAlignment = taCenter);
begin
  tfunctions.write_log(Title + ':' + aMessage);
  frm_informacao := tfrm_informacao.Create(nil);
  frm_informacao.Titulo(Title);
  frm_informacao.Mensagem(aMessage);
  frm_informacao.memo_texto.Style.Font.Size := FontSize;
  frm_informacao.memo_texto.Properties.Alignment := Align;
  frm_informacao.ShowModal;
  frm_informacao.Free;
end;

class procedure TDialogs.wnErro(Title, aMessage: string; FontSize: integer = 12; Align: TAlignment = taCenter);
begin
  tfunctions.write_log(Title + ':' + aMessage);
  frm_erro := tfrm_erro.Create(nil);
  frm_erro.Titulo(Title);
  frm_erro.Mensagem(aMessage);
  frm_erro.memo_texto.Style.Font.Size := FontSize;
  frm_erro.memo_texto.Properties.Alignment := Align;
  frm_erro.ShowModal;
  frm_erro.Free;
end;

class function TDialogs.wnConfirmacao(Title, aMessage: string; FontSize: integer = 12; Align: TAlignment = taCenter): boolean;
var
  int: integer;
begin
  frm_confirmacao := tfrm_confirmacao.Create(nil);
  frm_confirmacao.limpar;
  frm_confirmacao.Titulo(Title);
  frm_confirmacao.Mensagem(aMessage);
  frm_confirmacao.memo_texto.Style.Font.Size := FontSize;
  frm_confirmacao.memo_texto.Properties.Alignment := Align;
  int := frm_confirmacao.ShowModal;
  frm_confirmacao.Free;
  if int = 1 then { sim }
    result := true
  else if int = 2 then { não }
    result := false
  else
    result := false;
end;

{ TDialogs.wnDownloadNF }

class procedure TDialogs.wnOpNF.Free;
begin
  if assigned(Frm_op_nf) and (Frm_op_nf <> nil) then
  begin
    Frm_op_nf.Close;
    Frm_op_nf.Free;
  end;
end;

class procedure TDialogs.wnOpNF.Show(const xMessage: String; const KindOf: integer);
begin
  Frm_op_nf := tFrm_op_nf.Create(nil, xMessage, KindOf);
  Frm_op_nf.Show;
  Frm_op_nf.Update;
end;

end.
