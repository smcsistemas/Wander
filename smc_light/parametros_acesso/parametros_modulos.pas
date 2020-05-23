unit parametros_modulos;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, cxGraphics, cxControls,
  cxLookAndFeels, cxLookAndFeelPainters, cxContainer, cxEdit, dxSkinsCore,
  dxSkinBlack, dxSkinBlue, dxSkinBlueprint, dxSkinCaramel, dxSkinCoffee,
  dxSkinDarkRoom, dxSkinDarkSide, dxSkinDevExpressDarkStyle,
  dxSkinDevExpressStyle, dxSkinFoggy, dxSkinGlassOceans,
  dxSkinHighContrast, dxSkiniMaginary, dxSkinLilian, dxSkinLiquidSky,
  dxSkinLondonLiquidSky, dxSkinMcSkin, dxSkinMetropolis,
  dxSkinMetropolisDark, dxSkinMoneyTwins, dxSkinOffice2007Black,
  dxSkinOffice2007Blue, dxSkinOffice2007Green, dxSkinOffice2007Pink,
  dxSkinOffice2007Silver, dxSkinOffice2010Black, dxSkinOffice2010Blue,
  dxSkinOffice2010Silver, dxSkinOffice2013DarkGray,
  dxSkinOffice2013LightGray, dxSkinOffice2013White,
  dxSkinOffice2016Colorful, dxSkinOffice2016Dark, dxSkinPumpkin,
  dxSkinSeven, dxSkinSevenClassic, dxSkinSharp, dxSkinSharpPlus,
  dxSkinSilver, dxSkinSpringTime, dxSkinStardust, dxSkinSummer2008,
  dxSkinTheAsphaltWorld, dxSkinsDefaultPainters, dxSkinValentine,
  dxSkinVisualStudio2013Blue, dxSkinVisualStudio2013Dark,
  dxSkinVisualStudio2013Light, dxSkinVS2010, dxSkinWhiteprint,
  dxSkinXmas2008Blue, cxCheckBox, cxDBEdit, Vcl.StdCtrls, Vcl.Menus,
  cxButtons, cxGroupBox, FireDAC.Stan.Intf, FireDAC.Stan.Option,
  FireDAC.Stan.Param, FireDAC.Stan.Error, FireDAC.DatS, FireDAC.Phys.Intf,
  FireDAC.DApt.Intf, FireDAC.Stan.Async, FireDAC.DApt, Data.DB,
  FireDAC.Comp.DataSet, FireDAC.Comp.Client, Vcl.DBCtrls, c_Globals,
  Data.FMTBcd, Datasnap.DBClient, Data.SqlExpr;

type
  Tfrm_p_modulos = class(TForm)
    GroupBox1: TGroupBox;
    gp_basico: TGroupBox;
    cxDBCheckBox1: TcxDBCheckBox;
    cxDBCheckBox2: TcxDBCheckBox;
    cxDBCheckBox14: TcxDBCheckBox;
    cxDBCheckBox15: TcxDBCheckBox;
    cxDBCheckBox20: TcxDBCheckBox;
    btnGravar: TcxButton;
    btnAlterar: TcxButton;
    btnCancelar: TcxButton;
    gp_geral: TcxGroupBox;
    gp_cad: TGroupBox;
    gp_fiscal: TGroupBox;
    gp_finan: TGroupBox;
    gp_relato: TGroupBox;
    sql_modulos: TFDQuery;
    dt_modulos: TDataSource;
    sql_modulosID: TIntegerField;
    sql_modulosproduto: TStringField;
    sql_modulosclientes: TStringField;
    sql_modulospdv: TStringField;
    sql_modulosvendas: TStringField;
    sql_modulosnfce: TStringField;
    sql_moduloscad_fornecedor: TStringField;
    sql_moduloscad_colaborador: TStringField;
    sql_modulosrel_clientes: TStringField;
    sql_modulosrel_colaboradores: TStringField;
    sql_modulosrel_fornecedores: TStringField;
    sql_modulosrel_comissoes: TStringField;
    sql_modulosrel_convenio: TStringField;
    sql_modulosrel_produtos: TStringField;
    sql_modulosrel_financeiro: TStringField;
    sql_modulosrel_compras: TStringField;
    sql_modulosfinan_geral: TStringField;
    sql_modulosfinan_c_abr_fech: TStringField;
    sql_modulosfisc_mde: TStringField;
    sql_modulosrel_vendas: TStringField;
    sql_modulosrel_fiscal: TStringField;
    chk_c_fornece: TcxCheckBox;
    chk_c_colab: TcxCheckBox;
    chk_geral: TcxCheckBox;
    chk_f_import: TcxCheckBox;
    chk_f_mde: TcxCheckBox;
    chk_r_cliente: TcxCheckBox;
    chk_r_colab: TcxCheckBox;
    chk_r_fornece: TcxCheckBox;
    chk_r_comissao: TcxCheckBox;
    chk_r_conve: TcxCheckBox;
    chk_r_produtos: TcxCheckBox;
    chk_r_finan: TcxCheckBox;
    chk_r_compras: TcxCheckBox;
    chk_r_vendas: TcxCheckBox;
    chk_r_fiscal: TcxCheckBox;
    chk_f_geral: TcxCheckBox;
    chk_f_c_aberto: TcxCheckBox;
    sql_modulosfisc_importa_nfe: TStringField;
    DBCheckBox1: TDBCheckBox;
    sql_moduloscaixa_conferencia: TStringField;
    procedure btnCancelarClick(Sender: TObject);
    procedure PadronizarLayout;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure btnGravarClick(Sender: TObject);
    procedure chk_geralPropertiesChange(Sender: TObject);
    procedure btnAlterarClick(Sender: TObject);
    procedure FormShow(Sender: TObject);



  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frm_p_modulos: Tfrm_p_modulos;

implementation

{$R *.dfm}

uses S_Module, funcoes_sistema, u_funcoes, h_Functions,  h_Dialogs;

procedure Tfrm_p_modulos.btnAlterarClick(Sender: TObject);
begin
  btnAlterar.Visible := False;
  btnCancelar.Enabled := True;
  btnGravar.Visible := True;
//  sql_modulos.Active := False;
  sql_modulos.Active := True;
  sql_modulos.Edit;



  u_funcoes.AlterarEnabled([gp_geral, gp_basico, gp_cad, gp_fiscal, gp_finan, gp_relato, chk_geral], True);
end;

procedure Tfrm_p_modulos.btnCancelarClick(Sender: TObject);
begin
  sql_modulos.Cancel;
  PadronizarLayout;
end;

procedure Tfrm_p_modulos.btnGravarClick(Sender: TObject);
begin
if chk_c_fornece.checked then
      sql_moduloscad_fornecedor.Value := m_True
    else
      sql_moduloscad_fornecedor.Value := m_false;

//------------
     if chk_c_colab.checked then
      sql_moduloscad_colaborador.Value := m_True
    else
      sql_moduloscad_colaborador.Value := m_false;

//------------
         if chk_f_import.checked then
      sql_modulosfisc_importa_nfe.Value := m_True
    else
      sql_modulosfisc_importa_nfe.Value := m_false;

//------------
     if chk_f_mde.checked then
      sql_modulosfisc_mde.Value := m_True
    else
      sql_modulosfisc_mde.Value := m_false;

//------------
     if chk_r_cliente.checked then
      sql_modulosrel_clientes.Value := m_True
    else
      sql_modulosrel_clientes.Value := m_false;


//------------
     if chk_r_colab.checked then
      sql_modulosrel_colaboradores.Value := m_True
    else
      sql_modulosrel_colaboradores.Value := m_false;


//------------
     if chk_r_fornece.checked then
      sql_modulosrel_fornecedores.Value := m_True
    else
      sql_modulosrel_fornecedores.Value := m_false;



//------------
     if chk_r_comissao.checked then
      sql_modulosrel_comissoes.Value := m_True
    else
      sql_modulosrel_comissoes.Value := m_false;



//------------
     if chk_r_conve.checked then
      sql_modulosrel_convenio.Value := m_True
    else
      sql_modulosrel_convenio.Value := m_false;



//------------
     if chk_r_produtos.checked then
      sql_modulosrel_produtos.Value := m_True
    else
      sql_modulosrel_produtos.Value := m_false;


//------------
     if chk_r_finan.checked then
      sql_modulosrel_financeiro.Value := m_True
    else
      sql_modulosrel_financeiro.Value := m_false;


//------------
     if chk_r_compras.checked then
      sql_modulosrel_compras.Value := m_True
    else
      sql_modulosrel_compras.Value := m_false;



//------------
     if chk_r_vendas.checked then
      sql_modulosrel_vendas.Value := m_True
    else
      sql_modulosrel_vendas.Value := m_false;



//------------
     if chk_r_fiscal.checked then
      sql_modulosrel_fiscal.Value := m_True
    else
      sql_modulosrel_fiscal.Value := m_false;


//------------
     if chk_f_geral.checked then
      sql_modulosfinan_geral.Value := m_True
    else
      sql_modulosfinan_geral.Value := m_false;


//------------
     if chk_f_c_aberto.checked then
      sql_modulosfinan_c_abr_fech.Value := m_True
    else
      sql_modulosfinan_c_abr_fech.Value := m_false;


     sql_modulos.Post;
//     sql_modulos.UpdateTransaction;
    begin
     PadronizarLayout;
     end;
     Application.MessageBox('Operação Concluída com Sucesso!', 'Mensagem do Sistema', mb_ok + mb_iconinformation);
end;


procedure Tfrm_p_modulos.chk_geralPropertiesChange(Sender: TObject);
begin
 if  chk_geral.Checked  then
  AlteraChecks(chk_geral, [chk_c_fornece, chk_c_colab,chk_c_fornece ,chk_f_import, chk_f_mde,
  chk_f_geral, chk_f_c_aberto, chk_r_cliente, chk_r_colab, chk_r_fornece, chk_r_comissao,
  chk_r_produtos, chk_r_conve, chk_r_compras, chk_r_finan, chk_r_fiscal, chk_r_vendas]);
end;

procedure Tfrm_p_modulos.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  Action := cafree;
  self := nil;
end;


procedure Tfrm_p_modulos.FormShow(Sender: TObject);
begin
  PadronizarLayout;
end;

procedure Tfrm_p_modulos.PadronizarLayout;
begin
   SQL_MODULOS.Active := False;
   SQL_MODULOS.Active := True;
   SQL_MODULOS.Last;

   btnAlterar.Visible := True;
   btnCancelar.Enabled := False;

   chk_geral.Checked := False;

  if sql_moduloscad_fornecedor.Value = m_True then
    chk_c_fornece.checked := True
  else if sql_moduloscad_fornecedor.Value = m_false then
    chk_c_fornece.checked := False;


      if sql_moduloscad_colaborador.Value = m_True then
    chk_c_colab.checked := True
  else if sql_moduloscad_colaborador.Value = m_false then
    chk_c_colab.checked := False;


      if sql_modulosfisc_importa_nfe.Value = m_True then
    chk_f_import.checked := True
  else if sql_modulosfisc_importa_nfe.Value = m_false then
    chk_f_import.checked := False;


      if sql_modulosfisc_mde.Value = m_True then
    chk_f_mde.checked := True
  else if sql_modulosfisc_mde.Value = m_false then
    chk_f_mde.checked := False;


      if sql_modulosrel_clientes.Value = m_True then
    chk_r_cliente.checked := True
  else if sql_modulosrel_clientes.Value = m_false then
    chk_r_cliente.checked := False;


      if sql_modulosrel_colaboradores.Value = m_True then
    chk_r_colab.checked := True
  else if sql_modulosrel_colaboradores.Value = m_false then
    chk_r_colab.checked := False;


      if sql_modulosrel_fornecedores.Value = m_True then
    chk_r_fornece.checked := True
  else if sql_modulosrel_fornecedores.Value = m_false then
    chk_r_fornece.checked := False;


      if sql_modulosrel_comissoes.Value = m_True then
    chk_r_comissao.checked := True
  else if sql_modulosrel_comissoes.Value = m_false then
    chk_r_comissao.checked := False;


      if sql_modulosrel_convenio.Value = m_True then
    chk_r_conve.checked := True
  else if sql_modulosrel_convenio.Value = m_false then
    chk_r_conve.checked := False;

      if sql_modulosrel_produtos.Value = m_True then
    chk_r_produtos.checked := True
  else if sql_modulosrel_produtos.Value = m_false then
    chk_r_produtos.checked := False;


      if sql_modulosrel_financeiro.Value = m_True then
    chk_r_finan.checked := True
  else if sql_modulosrel_financeiro.Value = m_false then
    chk_r_finan.checked := False;


      if sql_modulosrel_compras.Value = m_True then
    chk_r_compras.checked := True
  else if sql_modulosrel_compras.Value = m_false then
    chk_r_compras.checked := False;


      if sql_modulosrel_vendas.Value = m_True then
    chk_r_vendas.checked := True
  else if sql_modulosrel_vendas.Value = m_false then
    chk_r_vendas.checked := False;


      if sql_modulosrel_fiscal.Value = m_True then
    chk_r_fiscal.checked := True
  else if sql_modulosrel_fiscal.Value = m_false then
    chk_r_fiscal.checked := False;


      if sql_modulosfinan_geral.Value = m_True then
    chk_f_geral.checked := True
  else if sql_modulosfinan_geral.Value = m_false then
    chk_f_geral.checked := False;


      if sql_modulosfinan_c_abr_fech.Value = m_True then
    chk_f_c_aberto.checked := True
  else if sql_modulosfinan_c_abr_fech.Value = m_false then
    chk_f_c_aberto.checked := False;


   u_funcoes.AlterarEnabled([gp_geral, gp_basico, gp_cad, gp_fiscal, gp_finan, gp_relato, chk_geral], false);

end;

end.
