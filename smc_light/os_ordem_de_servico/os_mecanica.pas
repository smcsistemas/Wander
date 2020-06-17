//Verificado automaticamente em 16/06/2020 09:28
unit os_mecanica;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, cxGraphics, cxControls, cxLookAndFeels,
  cxLookAndFeelPainters, cxContainer, cxEdit, dxSkinsCore, Vcl.Menus,
  Vcl.ComCtrls, dxCore, cxDateUtils, cxDropDownEdit, cxCalendar, cxTextEdit,
  cxMaskEdit, Vcl.StdCtrls, cxButtons, cxGroupBox, dxSkinscxPCPainter,
  dxBarBuiltInMenu, cxStyles, cxCustomData, cxFilter, cxData, cxDataStorage,
  cxNavigator, Data.DB, cxDBData, cxGridLevel, cxGridCustomTableView,
  cxGridTableView, cxGridDBTableView, cxClasses, cxGridCustomView, cxGrid, cxPC,
  Vcl.ExtCtrls, FireDAC.Stan.Intf, FireDAC.Stan.Option, FireDAC.Stan.Param,
  FireDAC.Stan.Error, FireDAC.DatS, FireDAC.Phys.Intf, FireDAC.DApt.Intf,
  FireDAC.Stan.Async, FireDAC.DApt, FireDAC.Comp.DataSet, FireDAC.Comp.Client;

type
  Tfmr_os_mecanica = class(TForm)
    cxPageControl2: TcxPageControl;
    Consulta: TcxTabSheet;
    cxTabSheet5: TcxTabSheet;
    cxGroupBox2: TcxGroupBox;
    Label8: TLabel;
    lbTelefone: TLabel;
    Label9: TLabel;
    lbEndereco: TLabel;
    Label11: TLabel;
    lbBairro: TLabel;
    Label12: TLabel;
    lbZona: TLabel;
    Label20: TLabel;
    lbEmail: TLabel;
    Label7: TLabel;
    lbRegiao: TLabel;
    Label10: TLabel;
    lbNumero: TLabel;
    Label13: TLabel;
    lbMunicipio: TLabel;
    Label18: TLabel;
    lbCEP: TLabel;
    Label14: TLabel;
    lbEstado: TLabel;
    lbEmail_1: TLabel;
    Label40: TLabel;
    cxGroupBox1: TcxGroupBox;
    Label23: TLabel;
    Label21: TLabel;
    Label15: TLabel;
    Label2: TLabel;
    Label4: TLabel;
    Label6: TLabel;
    Label3: TLabel;
    Label16: TLabel;
    Label22: TLabel;
    Label17: TLabel;
    edCPF_CNPJ: TEdit;
    edCodigo_Cliente: TEdit;
    cxPesquisaCliente: TcxButton;
    cxVendedor: TcxComboBox;
    cxNaturezaOperacao: TcxComboBox;
    edCODIGO_VENDA: TEdit;
    edRazao_Social: TEdit;
    edContato_Nome: TEdit;
    edContato_Celular: TEdit;
    edCFOP: TEdit;
    cxTipoPedido: TcxComboBox;
    cxDateEdit1: TcxDateEdit;
    cxPageControl1: TcxPageControl;
    cxTabSheet1: TcxTabSheet;
    Label27: TLabel;
    Label30: TLabel;
    Label31: TLabel;
    Label32: TLabel;
    Label33: TLabel;
    Label34: TLabel;
    Label25: TLabel;
    Label26: TLabel;
    Label5: TLabel;
    Label28: TLabel;
    Label29: TLabel;
    Shape1: TShape;
    edPROD_CODIGO: TEdit;
    cxButton7: TcxButton;
    edPROD_DESCRICAO: TEdit;
    edPRECO: TEdit;
    edQUANTIDADE: TEdit;
    edPROD_CDUNIDADE: TEdit;
    edCFOP_Produto: TEdit;
    cxGrid1: TcxGrid;
    cxGridDBTableView1: TcxGridDBTableView;
    cxGridDBTableView1Column3: TcxGridDBColumn;
    cxGridDBTableView1Column1: TcxGridDBColumn;
    cxGridDBTableView1Column2: TcxGridDBColumn;
    cxGridDBTableView1Column11: TcxGridDBColumn;
    cxGridDBTableView1Column4: TcxGridDBColumn;
    cxGridDBTableView1Column5: TcxGridDBColumn;
    cxGridDBTableView1Column6: TcxGridDBColumn;
    cxGridDBTableView1Column7: TcxGridDBColumn;
    cxGridDBTableView1Column8: TcxGridDBColumn;
    cxGridDBTableView1Column9: TcxGridDBColumn;
    cxGridDBTableView1Column10: TcxGridDBColumn;
    cxGridLevel1: TcxGridLevel;
    edQtdeItens: TEdit;
    edValorItens: TEdit;
    edDescontoGeral: TEdit;
    edValorLiquido: TEdit;
    cxTabSheet2: TcxTabSheet;
    Label1: TLabel;
    Label24: TLabel;
    Label35: TLabel;
    Label36: TLabel;
    Label37: TLabel;
    Label38: TLabel;
    Shape2: TShape;
    Label39: TLabel;
    Label41: TLabel;
    Label42: TLabel;
    Label43: TLabel;
    Label44: TLabel;
    cxGrid2: TcxGrid;
    cxGridDBTableView2: TcxGridDBTableView;
    cxGridDBColumn1: TcxGridDBColumn;
    cxGridDBColumn2: TcxGridDBColumn;
    cxGridDBColumn3: TcxGridDBColumn;
    cxGridDBColumn4: TcxGridDBColumn;
    cxGridDBColumn5: TcxGridDBColumn;
    cxGridDBColumn6: TcxGridDBColumn;
    cxGridDBColumn7: TcxGridDBColumn;
    cxGridDBColumn8: TcxGridDBColumn;
    cxGridDBColumn9: TcxGridDBColumn;
    cxGridDBColumn10: TcxGridDBColumn;
    cxGridDBColumn11: TcxGridDBColumn;
    cxGridLevel2: TcxGridLevel;
    Edit1: TEdit;
    Edit2: TEdit;
    Edit3: TEdit;
    Edit4: TEdit;
    cxButton1: TcxButton;
    Edit5: TEdit;
    Edit6: TEdit;
    Edit7: TEdit;
    Edit8: TEdit;
    Edit9: TEdit;
    Edit10: TEdit;
    cxTabSheet3: TcxTabSheet;
    Label45: TLabel;
    Label46: TLabel;
    Label47: TLabel;
    Label48: TLabel;
    Label49: TLabel;
    Edit11: TEdit;
    cxButton2: TcxButton;
    Edit12: TEdit;
    cxGrid3: TcxGrid;
    cxGridDBTableView3: TcxGridDBTableView;
    cxGridDBColumn12: TcxGridDBColumn;
    cxGridDBColumn13: TcxGridDBColumn;
    cxGridDBColumn14: TcxGridDBColumn;
    cxGridDBColumn15: TcxGridDBColumn;
    cxGridDBColumn16: TcxGridDBColumn;
    cxGridDBColumn17: TcxGridDBColumn;
    cxGridLevel3: TcxGridLevel;
    Edit13: TEdit;
    Edit14: TEdit;
    Edit15: TEdit;
    cxButton3: TcxButton;
    cxButton4: TcxButton;
    BtnGravar: TcxButton;
    BtnIncluir: TcxButton;
    BtnCancelar: TcxButton;
    BtnAlterar: TcxButton;
    Label50: TLabel;
    Edit16: TEdit;
    Label51: TLabel;
    cxComboBox1: TcxComboBox;
    cxGroupBox6: TcxGroupBox;
    Label52: TLabel;
    Label53: TLabel;
    cxButton13: TcxButton;
    DateTimePicker3: TDateTimePicker;
    DateTimePicker4: TDateTimePicker;
    cxComboBox4: TcxComboBox;
    cxGrid4: TcxGrid;
    cxGridDBTableView4: TcxGridDBTableView;
    cxGridDBColumn18: TcxGridDBColumn;
    cxGridDBColumn19: TcxGridDBColumn;
    cxGridDBColumn20: TcxGridDBColumn;
    cxGridDBColumn21: TcxGridDBColumn;
    cxGridDBColumn22: TcxGridDBColumn;
    cxGridDBColumn23: TcxGridDBColumn;
    cxGridDBColumn24: TcxGridDBColumn;
    cxGridDBColumn25: TcxGridDBColumn;
    cxGridDBColumn26: TcxGridDBColumn;
    cxGridDBColumn27: TcxGridDBColumn;
    cxGridDBColumn28: TcxGridDBColumn;
    cxGridLevel4: TcxGridLevel;
    cxGridDBTableView4Column1: TcxGridDBColumn;
    cxGridDBTableView4Column2: TcxGridDBColumn;
    cxGroupBox3: TcxGroupBox;
    Label54: TLabel;
    Label55: TLabel;
    cxButton5: TcxButton;
    DateTimePicker1: TDateTimePicker;
    DateTimePicker2: TDateTimePicker;
    cxComboBox2: TcxComboBox;
    cxButton6: TcxButton;
    cxButton8: TcxButton;
    SQL_MECANICA: TFDQuery;
    DT_VEICULOS: TDataSource;
    DT_LISTA: TDataSource;
    SQL_LISTA: TFDQuery;
    sql_increment: TFDQuery;
    sql_incrementAUTO_INCREMENT: TLargeintField;
    dt_increment: TDataSource;
    SQL_MECANICACODIGO: TFDAutoIncField;
    SQL_MECANICAN_PEDIDO: TIntegerField;
    SQL_MECANICADATA_PEDIDO: TDateField;
    SQL_MECANICATIPO_OS: TStringField;
    SQL_MECANICANATUREZA_OP: TStringField;
    SQL_MECANICACFOP: TStringField;
    SQL_MECANICAVENDEDOR: TStringField;
    SQL_MECANICACLIENTE_COD: TIntegerField;
    SQL_MECANICACLIENTE_RAZAO_SOCIAL: TStringField;
    SQL_MECANICACLIENTE_CNPJ_CPF: TStringField;
    SQL_MECANICACONTATO: TStringField;
    SQL_MECANICACELULAR: TStringField;
    SQL_MECANICACLIENTE_COD_ENDERECO: TStringField;
    SQL_MECANICACLIENTE_COD_T_ENDERECO: TIntegerField;
    SQL_MECANICAPRODUTO_COD: TStringField;
    SQL_MECANICAPRODUTO_DESC: TStringField;
    SQL_MECANICAPRODUTO_VALOR: TIntegerField;
    SQL_MECANICAPRODUTO_QNT: TIntegerField;
    SQL_MECANICAPRODUTO_UND: TStringField;
    SQL_MECANICAPRODUTO_CFOP: TStringField;
    SQL_MECANICAPRODUTO_ITENS: TStringField;
    SQL_MECANICAPRODUTO_V_PRODUTOS: TStringField;
    SQL_MECANICAPRODUTO_DESCONTO_GERAL: TStringField;
    SQL_MECANICAPRODUTO_V_PAGAR: TStringField;
    SQL_LISTACODIGO: TFDAutoIncField;
    SQL_LISTAN_PEDIDO: TIntegerField;
    SQL_LISTADATA_PEDIDO: TDateField;
    SQL_LISTATIPO_OS: TStringField;
    SQL_LISTANATUREZA_OP: TStringField;
    SQL_LISTACFOP: TStringField;
    SQL_LISTAVENDEDOR: TStringField;
    SQL_LISTACLIENTE_COD: TIntegerField;
    SQL_LISTACLIENTE_RAZAO_SOCIAL: TStringField;
    SQL_LISTACLIENTE_CNPJ_CPF: TStringField;
    SQL_LISTACONTATO: TStringField;
    SQL_LISTACELULAR: TStringField;
    SQL_LISTACLIENTE_COD_ENDERECO: TStringField;
    SQL_LISTACLIENTE_COD_T_ENDERECO: TIntegerField;
    SQL_LISTAPRODUTO_COD: TStringField;
    SQL_LISTAPRODUTO_DESC: TStringField;
    SQL_LISTAPRODUTO_VALOR: TIntegerField;
    SQL_LISTAPRODUTO_QNT: TIntegerField;
    SQL_LISTAPRODUTO_UND: TStringField;
    SQL_LISTAPRODUTO_CFOP: TStringField;
    SQL_LISTAPRODUTO_ITENS: TStringField;
    SQL_LISTAPRODUTO_V_PRODUTOS: TStringField;
    SQL_LISTAPRODUTO_DESCONTO_GERAL: TStringField;
    SQL_LISTAPRODUTO_V_PAGAR: TStringField;
    procedure cxButton4Click(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  fmr_os_mecanica: Tfmr_os_mecanica;

implementation

uses
  cad_veiculos_transportadora, cad_veiculos_clientes;

{$R *.dfm}

procedure Tfmr_os_mecanica.cxButton4Click(Sender: TObject);
begin
   frm_cad_viculo_clientes := Tfrm_cad_viculo_clientes.Create(nil);
   frm_cad_viculo_clientes.showmodal;
   frm_cad_viculo_clientes.Free;

end;

procedure Tfmr_os_mecanica.FormClose(Sender: TObject; var Action: TCloseAction);
begin
Action := cafree;
  Self := nil;
end;


end.
Trocou UNIDADE_MEDIDA por PROD_UNIDADE : automaticamente em 16/06/2020 11:03
Trocou PROD_UNIDADE por PROD_CDUNIDADE : automaticamente em 16/06/2020 17:06
