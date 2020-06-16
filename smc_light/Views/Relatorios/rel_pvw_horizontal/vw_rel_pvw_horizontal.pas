//Verificado automaticamente em 16/06/2020 09:29
unit vw_rel_pvw_horizontal;

interface

uses
  System.Variants, System.Classes,
  Vcl.Controls, Vcl.Forms,
  Vcl.StdCtrls, Vcl.ExtCtrls, frxClass, frxPreview, frxDBSet, Data.DB, FireDAC.Comp.Client, FireDAC.Stan.Intf, FireDAC.Stan.Option, FireDAC.Stan.Param, FireDAC.Stan.Error, FireDAC.DatS,
  FireDAC.Phys.Intf, FireDAC.DApt.Intf, FireDAC.Stan.Async, FireDAC.DApt, FireDAC.Comp.DataSet;

type
  Tfrm_vw_pvw_horizontal = class(TForm)
    FR_REPORT: TfrxReport;
    GridPanel1: TGridPanel;
    Edit2: TEdit;
    pvw_report: TfrxPreview;
    Button2: TButton;
    btnsair: TButton;
    SQL_REPORT: TFDQuery;
    DS_REPORT: TfrxDBDataset;
    procedure btnsairClick(Sender: TObject);
    procedure Button2Click(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormShow(Sender: TObject);
    procedure GridPanel1Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frm_vw_pvw_horizontal: Tfrm_vw_pvw_horizontal;

implementation



{$R *.dfm}

procedure Tfrm_vw_pvw_horizontal.btnsairClick(Sender: TObject);
begin
  Close;
end;

procedure Tfrm_vw_pvw_horizontal.Button2Click(Sender: TObject);
begin
  SQL_REPORT.Close;
  SQL_REPORT.SQL.Clear;
  SQL_REPORT.Open('select razao_social from cliente where CODIGO=?', [Edit2.Text]);

  FR_REPORT.LoadFromFile('D:\SMC_LIGHT\relatorios\CLIENTETESTEVITOR.fr3');
  FR_REPORT.PrepareReport(true);
  FR_REPORT.Preview := pvw_report;
  pvw_report.Show
end;

procedure Tfrm_vw_pvw_horizontal.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  Action := cafree;
  self := nil;
end;

procedure Tfrm_vw_pvw_horizontal.FormShow(Sender: TObject);
begin
  FR_REPORT.LoadFromFile('D:\SMC_LIGHT\relatorio\CLIENTETESTEVITOR.fr3');
  FR_REPORT.PrepareReport(true);
  FR_REPORT.Preview := pvw_report;
  pvw_report.Show
end;

procedure Tfrm_vw_pvw_horizontal.GridPanel1Click(Sender: TObject);
begin

end;

// procedure Tfrm_rel_pvw_vertical.FormClose(Sender: TObject; var Action: TCloseAction);
// begin
/// /  Action := cafree;
/// /  self := nil;
// end;

// procedure Tfrm_rel_pvw_vertical.FormShow(Sender: TObject);
// begin
// FR_REPORT.LoadFromFile('D:\SMC_LIGHT\relatorio\CLIENTETESTEVITOR.fr3');
// FR_REPORT.PrepareReport(true);
// FR_REPORT.Preview := pvw_report;
// pvw_report.Show
// end;

end.
