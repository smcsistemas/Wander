unit caixa_recebimento;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, cxGraphics, cxControls, cxLookAndFeels,
  cxLookAndFeelPainters, cxContainer, cxEdit, dxSkinsCore, Vcl.ComCtrls, dxCore,
  cxDateUtils, cxDropDownEdit, cxTextEdit, cxMaskEdit, cxCalendar, Vcl.StdCtrls,
  cxCheckBox, Vcl.Grids, Vcl.DBGrids, FireDAC.Stan.Intf, FireDAC.Stan.Option,
  FireDAC.Stan.Param, FireDAC.Stan.Error, FireDAC.DatS, FireDAC.Phys.Intf,
  FireDAC.DApt.Intf, FireDAC.Stan.Async, FireDAC.DApt, Data.DB,
  FireDAC.Comp.DataSet, FireDAC.Comp.Client;

type
  Tfrm_caixa_recebimento = class(TForm)
    DBGrid1: TDBGrid;
    GroupBox3: TGroupBox;
    chk_autorizadas: TcxCheckBox;
    chk_canceladas: TcxCheckBox;
    chk_pendentes: TcxCheckBox;
    cxCheckBox2: TcxCheckBox;
    GroupBox7: TGroupBox;
    Label46: TLabel;
    Edit2: TEdit;
    RadioButton3: TRadioButton;
    RadioButton5: TRadioButton;
    RadioButton6: TRadioButton;
    GroupBox1: TGroupBox;
    Label43: TLabel;
    Label44: TLabel;
    Label45: TLabel;
    edt_periodo_inicio: TcxDateEdit;
    edt_periodo_fim: TcxDateEdit;
    CB_MES: TcxComboBox;
    cxCheckBox1: TcxCheckBox;
    cxComboBox1: TcxComboBox;
    DBGrid2: TDBGrid;
    Button1: TButton;
    QueryPedido: TFDQuery;
    DataSource1: TDataSource;
    QueryPedidoID: TIntegerField;
    QueryPedidoPrazo: TIntegerField;
    QueryPedidoNFe: TIntegerField;
    QueryPedidoNFCe: TIntegerField;
    QueryPedidoNFSe: TIntegerField;
    QueryPedidoComprovante: TIntegerField;
    QueryPedidoStatus: TStringField;
    procedure DBGrid2DrawColumnCell(Sender: TObject; const Rect: TRect;
      DataCol: Integer; Column: TColumn; State: TGridDrawState);
    procedure DBGrid2DblClick(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frm_caixa_recebimento: Tfrm_caixa_recebimento;

implementation

{$R *.dfm}

uses emissao_de_nfe, S_Module;


procedure Tfrm_caixa_recebimento.DBGrid2DblClick(Sender: TObject);
var
  bcolor: TColor;

  begin
  if DBGrid2.SelectedField.FieldName = 'NFe' then
  begin
    DBGrid2.Canvas.Font.Color := clGreen;
  end;
end;

procedure Tfrm_caixa_recebimento.DBGrid2DrawColumnCell(Sender: TObject; const Rect: TRect;
  DataCol: Integer; Column: TColumn; State: TGridDrawState);
var
  BUTTON: Integer;
  R: TRect;
  bcolor: TColor;
begin
  if Column.FieldName = 'NFe' then
  begin
    DBGrid2.Canvas.FillRect(Rect);
    BUTTON := 0;
    R:=Rect;
    InflateRect(R,-1,-1); //Diminue o tamanho do Botão
    DrawFrameControl(DBGrid2.Canvas.Handle,R,BUTTON, BUTTON or BUTTON);
    bcolor := DBGrid2.Canvas.Brush.Color; // guarda a cor de fundo original
    DBGrid2.Canvas.Brush.Color := clBtnFace; // muda a cor de fundo
    DBGrid2.Canvas.Font.Color := clRed;
    DrawText(DBGrid2.Canvas.Handle,'Emitir',7,R,DT_VCENTER or DT_CENTER);
    DBGrid2.Canvas.Brush.Color := bcolor; // devolve a cor original
         end;

           if Column.FieldName = 'NFCe' then
  begin
    DBGrid2.Canvas.FillRect(Rect);
    BUTTON := 0;
    R:=Rect;
    InflateRect(R,-1,-1); //Diminue o tamanho do Botão
    DrawFrameControl(DBGrid2.Canvas.Handle,R,BUTTON, BUTTON or BUTTON);
    bcolor := DBGrid2.Canvas.Brush.Color; // guarda a cor de fundo original
    DBGrid2.Canvas.Brush.Color := clBtnFace; // muda a cor de fundo
    DrawText(DBGrid2.Canvas.Handle,'Emitir',7,R,DT_VCENTER or DT_CENTER);
    DBGrid2.Canvas.Brush.Color := bcolor; // devolve a cor original

          end;

           if Column.FieldName = 'NFSe' then
  begin
    DBGrid2.Canvas.FillRect(Rect);
    BUTTON := 0;
    R:=Rect;
    InflateRect(R,-1,-1); //Diminue o tamanho do Botão
    DrawFrameControl(DBGrid2.Canvas.Handle,R,BUTTON, BUTTON or BUTTON);
    bcolor := DBGrid2.Canvas.Brush.Color; // guarda a cor de fundo original
    DBGrid2.Canvas.Brush.Color := clBtnFace; // muda a cor de fundo
    DrawText(DBGrid2.Canvas.Handle,'Emitir',7,R,DT_VCENTER or DT_CENTER);
    DBGrid2.Canvas.Brush.Color := bcolor; // devolve a cor original


 end;


           if Column.FieldName = 'Entrega' then
  begin
    DBGrid2.Canvas.FillRect(Rect);
    BUTTON := 0;
    R:=Rect;
    InflateRect(R,-1,-1); //Diminue o tamanho do Botão
    DrawFrameControl(DBGrid2.Canvas.Handle,R,BUTTON, BUTTON or BUTTON);
    bcolor := DBGrid2.Canvas.Brush.Color; // guarda a cor de fundo original
    DBGrid2.Canvas.Brush.Color := clBtnFace; // muda a cor de fundo
    DrawText(DBGrid2.Canvas.Handle,'Sim',7,R,DT_VCENTER or DT_CENTER);
    DBGrid2.Canvas.Brush.Color := bcolor; // devolve a cor original


  end;

           if Column.FieldName = 'Comprovante' then
  begin
    DBGrid2.Canvas.FillRect(Rect);
    BUTTON := 0;
    R:=Rect;
    InflateRect(R,-1,-1); //Diminue o tamanho do Botão
    DrawFrameControl(DBGrid2.Canvas.Handle,R,BUTTON, BUTTON or BUTTON);
    bcolor := DBGrid2.Canvas.Brush.Color; // guarda a cor de fundo original
    DBGrid2.Canvas.Brush.Color := clBtnFace; // muda a cor de fundo
    DrawText(DBGrid2.Canvas.Handle,'Sim',7,R,DT_VCENTER or DT_CENTER);
    DBGrid2.Canvas.Brush.Color := bcolor; // devolve a cor original


 end;


end;

procedure Tfrm_caixa_recebimento.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  Action := cafree;
  self := nil;
end;

end.
