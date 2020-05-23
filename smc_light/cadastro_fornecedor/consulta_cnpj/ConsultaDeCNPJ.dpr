program ConsultaDeCNPJ;

uses
  Forms,
  U_Principal in 'U_Principal.pas' {Frm_CNPJ},
  UFSistConsultaCNPJ in 'UFSistConsultaCNPJ.pas',
  U_Proxy in 'U_Proxy.pas' {F_Proxy};

{$R *.res}

begin
  Application.Initialize;
  Application.CreateForm(TFrm_CNPJ, Frm_CNPJ);
  Application.CreateForm(TF_Proxy, F_Proxy);
  Application.Run;
end.
