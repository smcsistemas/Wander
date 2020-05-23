unit vw_Views;

interface

uses vw_Status, sysutils, vw_sys_start;

type
  TView = class
  type
    VW_CHECK_CONFIG = class
      constructor Show; overload;
      class procedure Close;
    end;

  type
    WN_MANUAL_KEY = class
    public
      class var continueApp: boolean;
      constructor Show; overload;
      class procedure Close;
    end;

  type
    WN_DATABASE_UP = class
      constructor Show; overload;
      class procedure Close;
    end;

  type
    VW_UPDATE = class
      constructor Show(version, htmlcontent: string); overload;
      class procedure progressBar(max: integer);
      class procedure updateProgress(iProgress: integer);
      class procedure Close;
    end;

  type
    VW_CHECK_UPDATE = class
      constructor Show; overload;
      class procedure Close;
    end;

  type
    VW_KEY_VERIFYING = class
      constructor Show; overload;
      class procedure Close;
    end;

  type
    VW_KEY_DAYS_BEFORE = class
      constructor Show(days: integer); overload;
      class procedure Close;
    end;

  type
    VW_KEY_BLOCKED = class
      constructor Show; overload;
      class procedure Close;
    end;

  type
    VW_KEY_LAST_DAY_WITH_DISCOUNT = class
      constructor Show; overload;
      class procedure Close;
    end;

  type
    VW_KEY_DAYS_AFTER = class
      constructor Show(days: integer); overload;
      class procedure Close;
    end;

  type
    VW_KEY_LAST_DAY_BEFORE_BLOCK = class
      constructor Show; overload;
      class procedure Close;
    end;

  type
    WV_START_SYSTEM = class
      constructor Show(progress: integer; captionText: string); overload;
      constructor Show(progress, progressmax: integer; captionText: string); overload;
      class procedure Close;
    end;
  end;

implementation

uses
  h_functions, vw_Aviso_Pagamentos, vw_atualizacao;

{ TView.VW_CHECK_CONFIG }

class procedure TView.VW_CHECK_CONFIG.Close;
begin
  if assigned(frm_status) then
  begin
    frm_status.Close;
    frm_status.free;
    frm_status := nil;
  end;
end;

constructor TView.VW_CHECK_CONFIG.Show;
begin
  if not TFunctions.checkopen(frm_status) then
    frm_status := tfrm_status.create(nil);
  frm_status.checkConfig;

end;

{ TView.VW_UPDATE }

class procedure TView.VW_UPDATE.Close;
begin
  if assigned(frm_atualizacao) then
  begin
    frm_atualizacao.Close;
    frm_atualizacao.free;
    frm_atualizacao := nil;
  end;
end;

class procedure TView.VW_UPDATE.progressBar(max: integer);
begin
  frm_atualizacao.pbUpdate.properties.max := max;
end;

constructor TView.VW_UPDATE.Show(version, htmlcontent: string);
begin
  if not TFunctions.checkopen(frm_atualizacao) then
    frm_atualizacao := tfrm_atualizacao.create(nil);
  frm_atualizacao.config(version, htmlcontent);
  frm_atualizacao.Show;
  frm_atualizacao.Update;
end;

class procedure TView.VW_UPDATE.updateProgress(iProgress: integer);
begin
  frm_atualizacao.updateProgress(iProgress);
end;

{ TView.VW_KEY_VERIFYING }

class procedure TView.VW_KEY_VERIFYING.Close;
begin
  TView.VW_CHECK_CONFIG.Close;
end;

constructor TView.VW_KEY_VERIFYING.Show;
begin
  if not TFunctions.checkopen(frm_status) then
    frm_status := tfrm_status.create(nil);
  frm_status.checkConfig('Consultando Licença do Sistema ...');
end;

{ TView.VW_CHECK_UPDATE }

class procedure TView.VW_CHECK_UPDATE.Close;
begin
  TView.VW_CHECK_CONFIG.Close;
end;

constructor TView.VW_CHECK_UPDATE.Show;
begin
  if not TFunctions.checkopen(frm_status) then
    frm_status := tfrm_status.create(nil);
  frm_status.checkConfig('Buscando Atualizações ...');
end;

{ TView.WN_MANUAL_KEY }

class procedure TView.WN_MANUAL_KEY.Close;
begin
  TView.VW_CHECK_CONFIG.Close;
end;

constructor TView.WN_MANUAL_KEY.Show;
begin
  TView.WN_MANUAL_KEY.Close;
  TView.WN_MANUAL_KEY.continueApp := tfrm_status.ManualKey;
end;

{ TView.WN_DATABASE_UP }

class procedure TView.WN_DATABASE_UP.Close;
begin
  TView.VW_CHECK_CONFIG.Close;
end;

constructor TView.WN_DATABASE_UP.Show;
begin
  if not TFunctions.checkopen(frm_status) then
    frm_status := tfrm_status.create(nil);
  frm_status.checkConfig('Atualizando Banco de Dados ...');
end;

{ TView.VW_KEY_DAYS_BEFORE }

class procedure TView.VW_KEY_DAYS_BEFORE.Close;
begin
  if assigned(frm_aviso_pagamentos) then
  begin
    frm_aviso_pagamentos.Close;
    frm_aviso_pagamentos.free;
    frm_aviso_pagamentos := nil;
  end;
end;

constructor TView.VW_KEY_DAYS_BEFORE.Show(days: integer);
begin
  if not TFunctions.checkopen(frm_aviso_pagamentos) then
    frm_aviso_pagamentos := tfrm_aviso_pagamentos.create(nil);
  frm_aviso_pagamentos.dias := inttostr(days);
  frm_aviso_pagamentos.aviso_dias_antes;
  frm_aviso_pagamentos.ShowModal;
end;

{ TView.VW_KEY_BLOCKED }

class procedure TView.VW_KEY_BLOCKED.Close;
begin

  TView.VW_KEY_DAYS_BEFORE.Close;
end;

constructor TView.VW_KEY_BLOCKED.Show;
begin
  if not TFunctions.checkopen(frm_aviso_pagamentos) then
    frm_aviso_pagamentos := tfrm_aviso_pagamentos.create(nil);
  frm_aviso_pagamentos.bloqueio_sistema_block;
  frm_aviso_pagamentos.ShowModal;
end;

{ TView.VW_KEY_LAST_DAY_WITH_DISCOUNT }

class procedure TView.VW_KEY_LAST_DAY_WITH_DISCOUNT.Close;
begin
  TView.VW_KEY_DAYS_BEFORE.Close;
end;

constructor TView.VW_KEY_LAST_DAY_WITH_DISCOUNT.Show;
begin
  if not TFunctions.checkopen(frm_aviso_pagamentos) then
    frm_aviso_pagamentos := tfrm_aviso_pagamentos.create(nil);
  frm_aviso_pagamentos.aviso_dia_vencimento;
  frm_aviso_pagamentos.ShowModal;
end;

{ TView.VW_KEY_DAYS_AFTER }

class procedure TView.VW_KEY_DAYS_AFTER.Close;
begin
  TView.VW_KEY_DAYS_BEFORE.Close;
end;

constructor TView.VW_KEY_DAYS_AFTER.Show(days: integer);
begin
  if not TFunctions.checkopen(frm_aviso_pagamentos) then
    frm_aviso_pagamentos := tfrm_aviso_pagamentos.create(nil);
  frm_aviso_pagamentos.dias := inttostr(days);
  frm_aviso_pagamentos.bloqueio_dias_depois;
  frm_aviso_pagamentos.ShowModal;
end;

{ TView.VW_KEY_LAST_DAYS_TO_BLOCK }

class procedure TView.VW_KEY_LAST_DAY_BEFORE_BLOCK.Close;
begin
  TView.VW_KEY_DAYS_BEFORE.Close;
end;

constructor TView.VW_KEY_LAST_DAY_BEFORE_BLOCK.Show;
begin
  if not TFunctions.checkopen(frm_aviso_pagamentos) then
    frm_aviso_pagamentos := tfrm_aviso_pagamentos.create(nil);
  frm_aviso_pagamentos.aviso_bloqueio;
  frm_aviso_pagamentos.ShowModal;
end;

class procedure TView.WV_START_SYSTEM.Close;
begin
  if assigned(frm_sys_start) then
  begin
    frm_sys_start.Close;
    frm_sys_start.free;
    frm_sys_start := nil;
  end;
end;

constructor TView.WV_START_SYSTEM.Show(progress: integer; captionText: string);
begin
  if not TFunctions.checkopen(frm_sys_start) then
    frm_sys_start := tfrm_sys_start.create(nil);
  frm_sys_start.progress(progress, captionText);
  frm_sys_start.Show();
  frm_sys_start.Update;

end;

constructor TView.WV_START_SYSTEM.Show(progress, progressmax: integer; captionText: string);
begin
  if not TFunctions.checkopen(frm_sys_start) then
    frm_sys_start := tfrm_sys_start.create(nil);
  frm_sys_start.progress(progress, progressmax, captionText);
  frm_sys_start.Show();
  frm_sys_start.Update;
end;

end.
