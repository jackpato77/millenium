unit fventas;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, DB, DBClient, Grids, DBGrids, ExtCtrls, DBCtrls, StdCtrls, Mask,
  Buttons, fbase;

type
  TfrmVentas = class(TfrmBase)
    pnlHead: TPanel;
    pnlShip: TPanel;
    pnlAux: TPanel;
    pnlBody: TPanel;
    pnlFoot: TPanel;
    DBGrid1: TDBGrid;
    dsDetails: TDataSource;
    Label3: TLabel;
    btnPrdFnd: TSpeedButton;
    Label1: TLabel;
    SpeedButton6: TSpeedButton;
    dsAux: TDataSource;
    edtArticuloId: TDBEdit;
    Label6: TLabel;
    DBEdit2: TDBEdit;
    Label8: TLabel;
    DBEdit3: TDBEdit;
    Label9: TLabel;
    DBEdit4: TDBEdit;
    Label11: TLabel;
    DBEdit5: TDBEdit;
    Label12: TLabel;
    DBEdit6: TDBEdit;
    DBEdit7: TDBEdit;
    DBEdit8: TDBEdit;
    DBEdit9: TDBEdit;
    Label2: TLabel;
    DBEdit10: TDBEdit;
    dsVentas: TDataSource;
    Label4: TLabel;
    DBEdit11: TDBEdit;
    SpeedButton1: TSpeedButton;
    edtClienteId: TDBEdit;
    Label7: TLabel;
    DBEdit12: TDBEdit;
    Label10: TLabel;
    DBEdit13: TDBEdit;
    Label13: TLabel;
    DBEdit14: TDBEdit;
    Label14: TLabel;
    DBEdit15: TDBEdit;
    SpeedButton2: TSpeedButton;
    Button1: TButton;
    DBEdit16: TDBEdit;
    DBEdit17: TDBEdit;
    DBEdit18: TDBEdit;
    Label15: TLabel;
    Label16: TLabel;
    Label17: TLabel;
    Button2: TButton;
    btnAgregar: TBitBtn;
    procedure btnPrdFndClick(Sender: TObject);
    procedure SpeedButton1Click(Sender: TObject);
    procedure SpeedButton2Click(Sender: TObject);
    procedure Button1Click(Sender: TObject);
    procedure Button2Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmVentas: TfrmVentas;

implementation

uses udmvm, fbuscar;

{$R *.dfm}

procedure TfrmVentas.btnPrdFndClick(Sender: TObject);
var
  fb: TfrmBuscar;
begin
  fb:= TfrmBuscar.CreateSearchFor(self,'articulos','nombre');
  if fb.ShowModal = mrOk then
  edtArticuloId.Text:=IntToStr(fb.ResultId);
end;

procedure TfrmVentas.Button1Click(Sender: TObject);
begin
  dm.cdsVentas.Append;
end;

procedure TfrmVentas.Button2Click(Sender: TObject);
begin
  dm.cdsDetails.ApplyUpdates(0);
  dm.cdsVentas.ApplyUpdates(0);
end;

procedure TfrmVentas.SpeedButton1Click(Sender: TObject);
begin
  dsDetails.DataSet.Delete;
end;

procedure TfrmVentas.SpeedButton2Click(Sender: TObject);
var
  fb: TfrmBuscar;
begin
  fb:= TfrmBuscar.CreateSearchFor(self,'clientes','nombre');
  if fb.ShowModal = mrOk then
  edtArticuloId.Text:=IntToStr(fb.ResultId);
end;

end.
