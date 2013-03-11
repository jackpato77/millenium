unit fmremitos;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, fbase, DB, StdActns, DBActns, ActnList, ImgList, Grids, DBGrids,
  ComCtrls, ToolWin, Buttons, StdCtrls, DBCtrls, Mask, ExtCtrls, JvExStdCtrls,
  JvEdit, JvDBSearchEdit, JvCombobox, JvDBSearchComboBox, DBClient, fcrud, JvExMask, JvToolEdit, JvMaskEdit,
  JvDBControls;

type
  TfrmMRemitos = class(TfrmBase)
    dbgBrowse: TDBGrid;
    tobMain: TToolBar;
    imlCRUD: TImageList;
    aclTran: TActionList;
    pgcCRUD: TPageControl;
    tabBrowse: TTabSheet;
    tabDetail: TTabSheet;
    pnlHead: TPanel;
    Label2: TLabel;
    Label4: TLabel;
    DBEdit10: TDBEdit;
    DBEdit11: TDBEdit;
    pnlShip: TPanel;
    Label10: TLabel;
    Label13: TLabel;
    Label7: TLabel;
    edtClienteId: TDBEdit;
    DBEdit14: TDBEdit;
    DBMemo1: TDBMemo;
    pnlAux: TPanel;
    Label3: TLabel;
    btnPrdFnd: TSpeedButton;
    Label1: TLabel;
    btnReset: TSpeedButton;
    Label6: TLabel;
    Label8: TLabel;
    Label9: TLabel;
    Label11: TLabel;
    Label5: TLabel;
    edtArticuloId: TDBEdit;
    DBEdit3: TDBEdit;
    DBEdit7: TDBEdit;
    DBEdit9: TDBEdit;
    btnAgregar: TBitBtn;
    pnlBody: TPanel;
    btnDelete: TSpeedButton;
    DBGrid1: TDBGrid;
    pnlFoot: TPanel;
    Label16: TLabel;
    DBEdit16: TDBEdit;
    dsDetails: TDataSource;
    dsLista: TDataSource;
    dsALine: TDataSource;
    dsRemitos: TDataSource;
    DBEdit1: TDBEdit;
    DBEdit2: TDBEdit;
    DBEdit4: TDBEdit;
    cdsALine: TClientDataSet;
    cdsLines: TClientDataSet;
    DBEdit5: TDBEdit;
    DBEdit6: TDBEdit;
    cdsPto: TClientDataSet;
    cdsPtoidpresupuesto: TIntegerField;
    cdsPtoidcliente: TIntegerField;
    cdsPtofecha: TDateTimeField;
    cdsPtodescuento: TFloatField;
    cdsPtoobservaciones: TStringField;
    cdsPtotipo: TStringField;
    cdsPtosubtotal: TCurrencyField;
    dsCliente: TDataSource;
    btnCliNew: TSpeedButton;
    actBuscarCliente: TAction;
    actBuscarProducto: TAction;
    actNuevoCliente: TAction;
    Label12: TLabel;
    DBEdit8: TDBEdit;
    cdsALineidarticulo: TIntegerField;
    cdsALineCantidad: TFloatField;
    cdsALineBase: TFloatField;
    cdsALineAlto: TFloatField;
    cdsALineArticulo: TStringField;
    cdsALineUM: TStringField;
    cdsALinePrecio: TCurrencyField;
    cdsALineSubtotal: TCurrencyField;
    cdsLinesidarticulo: TIntegerField;
    cdsLinesCantidad: TFloatField;
    cdsLinesPrecio: TCurrencyField;
    cdsLinesBase: TFloatField;
    cdsLinesAlto: TFloatField;
    cdsLinesArticulo: TStringField;
    cdsLinesUM: TStringField;
    cdsLinesSubtotal: TCurrencyField;
    ToolButton1: TToolButton;
    ToolButton2: TToolButton;
    ToolButton3: TToolButton;
    ToolButton4: TToolButton;
    ToolButton5: TToolButton;
    ToolButton6: TToolButton;
    actImprimir: TAction;
    actBuscar: TAction;
    ToolButton7: TToolButton;
    ToolButton8: TToolButton;
    ToolButton9: TToolButton;
    ToolButton10: TToolButton;
    actSalir: TAction;
    actNuevo: TAction;
    actEditar: TAction;
    actEliminar: TAction;
    actGuardar: TAction;
    actCancelar: TAction;
    btnCliFnd: TSpeedButton;
    Label14: TLabel;
    DBEdit13: TDBEdit;
    cbxListaPrecios: TComboBox;
    procedure btnResetClick(Sender: TObject);
    procedure btnPrdFndClick(Sender: TObject);
    procedure btnDeleteClick(Sender: TObject);
    procedure SpeedButton2Click(Sender: TObject);
    procedure dtsInsertExecute(Sender: TObject);
    procedure btnAgregarClick(Sender: TObject);
    procedure cdsALineCalcFields(DataSet: TDataSet);
    procedure cdsLinesCalcFields(DataSet: TDataSet);
    function UpdateTotal: double;
    procedure dtsEditExecute(Sender: TObject);
    procedure btnGuardarClick(Sender: TObject);
    procedure actBuscarClienteExecute(Sender: TObject);
    procedure actBuscarProductoExecute(Sender: TObject);
    procedure actNuevoClienteExecute(Sender: TObject);
    procedure edtClienteIdExit(Sender: TObject);
    procedure actCancelarExecute(Sender: TObject);
    procedure dtsPostExecute(Sender: TObject);
    procedure dbgBrowseDblClick(Sender: TObject);
    procedure actLoad(AId: integer);
    procedure tabBrowseShow(Sender: TObject);
    procedure actNuevoUpdate(Sender: TObject);
    procedure aclTranExecute(Action: TBasicAction; var Handled: Boolean);
    procedure actSalirExecute(Sender: TObject);
    procedure aclTranUpdate(Action: TBasicAction; var Handled: Boolean);
    procedure actImprimirExecute(Sender: TObject);
    procedure FormDestroy(Sender: TObject);

  private
    { Private declarations }
    FTableName: string;
    procedure SetupPage;

  public
    { Public declarations }
    cdsPtos: TClientDataSet;
    cdsLin: TClientDataSet;
    cdsCli: TClientDataSet;
    CurrentId: integer;
    constructor Create(AOwner: TComponent; ATableName: string);reintroduce;
    property TableName: string read FTableName write FTableName;

  end;

var
  frmMRemitos: TfrmMRemitos;

implementation

uses udmvm, fbuscar, rdmvm, rpresupuesto, uutils;
{$R *.dfm}


constructor TfrmMRemitos.Create(AOwner: TComponent; ATableName: string);
begin
  inherited Create(AOwner);
  TableName:=ATableName;
  dm.tblPresupuestos.Open;
  dm.tblClientes.Open;
  dm.tblArticulos.Open;
  dm.tblDetails.Open;
  cdsPtos:= dm.cdsPresupuestos;
  cdsLin:= dm.cdsDetails;
  cdsCli:= dm.cdsClientes;
  dsRemitos.DataSet:=cdsPto;
  cdsALine.LoadFromFile('dlinea.xml');
  cdsALine.Open;
  cdsLines.LoadFromFile('dlineas.xml');
  cdsLines.Open;
  SetupPage;
end;

procedure TfrmMRemitos.aclTranExecute(Action: TBasicAction; var Handled: Boolean);
begin
  inherited;
  if (Action.Name = 'actGuardar') or (Action.Name ='actCancelar') then
  pgcCRUD.ActivePageIndex:=0;
end;

procedure TfrmMRemitos.aclTranUpdate(Action: TBasicAction; var Handled: Boolean);
begin
  inherited;
  actNuevo.Enabled:= cdsPto.State = dsBrowse;
  actEditar.Enabled:= actNuevo.Enabled;
  actGuardar.Enabled:= cdsPto.State<>dsBrowse;
  actCancelar.Enabled:= actGuardar.Enabled;
end;

procedure TfrmMRemitos.actBuscarClienteExecute(Sender: TObject);
var
  fb: TfrmBuscar;
begin
  inherited;
  fb:= TfrmBuscar.CreateSearchFor(self,'clientes');
  try
  if fb.ShowModal = mrOk then
    dsRemitos.DataSet.FieldByName('idcliente').Value:=fb.ResultId;
  finally
    fb.free;
  end;
end;

procedure TfrmMRemitos.actBuscarProductoExecute(Sender: TObject);
var
  fb: TfrmBuscar;
begin
inherited;
  fb:= TfrmBuscar.CreateSearchFor(self,'articulos');
  try
  if fb.ShowModal = mrOk then
    edtArticuloId.Text:=IntToStr(fb.ResultId);
  finally
    fb.Free;
  end;
end;

procedure TfrmMRemitos.actLoad(AId: integer);
begin
  cdsPto.Close;
  cdspto.Open;
  cdsPto.Insert;
  dm.CopyTo(dsLista.DataSet,cdsPto);
  //cdsPto.Post;
  dm.tblDetails.Filter:='idmaster='+intToStr(AId)+' and master=''presupuesto'' ';
  dm.tblDetails.Filtered:=true;
  dm.tblDetails.open;
  dm.tblDetails.First;
  cdsLines.Close;
  cdsLines.Open;
  cdsLines.EmptyDataSet;
  while not dm.tblDetails.Eof do
  begin
    cdsLines.Insert;
    dm.CopyTo(dm.tblDetails,cdsLines);
    cdsLines.Post;
    dm.tblDetails.Next;
  end;
  dm.tblDetails.Filtered:=false;
  cdsALine.Open;
end;

procedure TfrmMRemitos.actNuevoClienteExecute(Sender: TObject);
begin
  inherited;
  dsCLiente.DataSet.Insert;
end;

procedure TfrmMRemitos.actNuevoUpdate(Sender: TObject);
begin
  inherited;
  actNuevo.Enabled:= dsLista.State = dsBrowse;
end;

procedure TfrmMRemitos.actSalirExecute(Sender: TObject);
begin
  inherited;
  Parent.Free;
end;

procedure TfrmMRemitos.btnAgregarClick(Sender: TObject);
begin
  inherited;
  cdsLines.Append;
  with cdsALine do
  begin
  //cdsLines.FieldByName('idventa').Value:=FieldByName('idventa').Value;
  cdsLines.FieldByName('idarticulo').Value:=FieldByName('idarticulo').Value;
  cdsLines.FieldByName('precio').Value:=FieldByName('Precio').Value;
  cdsLines.FieldByName('Cantidad').Value:=FieldByName('Cantidad').Value;
  cdsLines.FieldByName('alto').Value:=FieldByName('alto').Value;
  cdsLines.FieldByName('base').Value:=FieldByName('base').Value;
  end;
  cdsLines.Post;
  cdsALine.Cancel;
  cdsPto.FieldByName('subtotal').AsCurrency:=UpdateTotal;
  edtArticuloId.SetFocus;
end;

procedure TfrmMRemitos.btnGuardarClick(Sender: TObject);
var
  idventa: integer;
begin
  inherited;
  idventa:=cdsPto.FieldByName('idpresupuesto').AsInteger;
  cdsPtos.Insert;
  dm.CopyTo(cdsPto,cdsPtos);
  cdsPto.Post;
  cdsPtos.Post;
  //cdsPtos.InsertRecord();
  dm.SetNextID('presupuestos');
  cdsLines.First;
  while not cdsLines.Eof do
  with cdsLines do
  begin
    dm.cdsDetails.Insert;
    dm.cdsDetails.fieldByName('idmaster').Value:=idventa;
    dm.cdsDetails.fieldByName('master').Value:='presupuesto';
    dm.cdsDetails.FieldByName('idarticulo').Value:=FieldByName('idarticulo').Value;
    dm.cdsDetails.FieldByName('precio').Value:=FieldByName('Precio').Value;
    dm.cdsDetails.FieldByName('cantidad').Value:=FieldByName('Cantidad').Value;
    dm.cdsDetails.FieldByName('alto').Value:=FieldByName('alto').Value;
    dm.cdsDetails.FieldByName('base').Value:=FieldByName('base').Value;
    dm.cdsDetails.Post;
    dm.cdsDetails.ApplyUpdates(0);
    Next;
  end;

  cdsPtos.ApplyUpdates(0);
end;

procedure TfrmMRemitos.btnPrdFndClick(Sender: TObject);
var
  fb: TfrmBuscar;
begin
  fb:= TfrmBuscar.CreateSearchFor(self,'articulos');
  try
  if fb.ShowModal = mrOk then
    edtArticuloId.Text:=IntToStr(fb.ResultId);
  finally
    fb.Free;
  end;
end;

procedure TfrmMRemitos.cdsALineCalcFields(DataSet: TDataSet);
begin
  inherited;
  cdsALine.FieldByName('SubTotal').Value:= cdsALine.FieldByName('Base').Value*cdsALine.FieldByName('Alto').Value*cdsALine.FieldByName('Cantidad').Value*cdsALine.FieldByName('Precio').Value;
end;

procedure TfrmMRemitos.cdsLinesCalcFields(DataSet: TDataSet);
begin
  inherited;
  cdsLines.FieldByName('SubTotal').Value:= cdsLines.FieldByName('Base').Value*cdsLines.FieldByName('Alto').Value*cdsLines.FieldByName('Cantidad').Value*cdsLines.FieldByName('Precio').Value;
end;

procedure TfrmMRemitos.dbgBrowseDblClick(Sender: TObject);
begin
  CurrentId:=dsLista.DataSet.FieldByName('idpresupuesto').Value;
  self.actLoad(CurrentId);
  pgcCRUD.ActivePageIndex:=1;
end;

procedure TfrmMRemitos.actCancelarExecute(Sender: TObject);
begin
//  inherited;
  cdsPto.Cancel;
  cdsALine.Cancel;
  cdsLines.Cancel;
end;

procedure TfrmMRemitos.actImprimirExecute(Sender: TObject);
begin
  inherited;
  rdm.qryPto.Close;
  rdm.qryPto.ParamByName('idpresupuesto').Value:=dsLista.DataSet.FieldByName('idpresupuesto').Value;
  rdm.qryPto.Prepare;
  rdm.qryPto.Open;
  rdm.qryLin.Open;
  rptPresupuesto.QuickRep1.Preview;
end;

procedure TfrmMRemitos.dtsEditExecute(Sender: TObject);
begin
 // inherited;
 dbgBrowseDblClick(self);
end;

procedure TfrmMRemitos.dtsInsertExecute(Sender: TObject);
begin
//  inherited;
  cdsPto.Open;
  cdsALine.Open;
  cdsLines.Open;
  cdsPto.Insert;
  cdsPto.FieldByName('idpresupuesto').Value:=dm.GetNextID('presupuestos');
  cdsPto.FieldByName('fecha').AsDateTime:=Now;
  pgcCRUD.ActivePageIndex:=1;
  edtClienteId.SetFocus;
end;

procedure TfrmMRemitos.dtsPostExecute(Sender: TObject);
var
  idventa: integer;
begin
  idventa:=cdsPto.FieldByName('idpresupuesto').AsInteger;
  if dm.FindId(cdsPtos,'presupuesto',idventa) then
  begin
    cdsPtos.Edit;
  end
  else
    cdsPtos.Insert;
    dm.CopyTo(cdsPto,cdsPtos);
    if cdsPtos.State = dsInsert then dm.SetNextID('presupuestos');
    cdsPtos.Post;
    dm.qryCleanDetail.ParamByName('idmaster').Value:=idventa;
    dm.qryCleanDetail.ParamByName('master').Value:='presupuesto';
    dm.qryCleanDetail.Execute;
  cdsLines.First;
  while not cdsLines.Eof do
  with cdsLines do
  begin
    dm.tblDetails.Insert;
    dm.tblDetails.fieldByName('idmaster').Value:=idventa;
    dm.tblDetails.fieldByName('master').Value:='presupuesto';
    dm.tblDetails.FieldByName('idarticulo').Value:=FieldByName('idarticulo').Value;
    dm.tblDetails.FieldByName('precio').Value:=FieldByName('Precio').Value;
    dm.tblDetails.FieldByName('cantidad').Value:=FieldByName('Cantidad').Value;
    dm.tblDetails.FieldByName('alto').Value:=FieldByName('alto').Value;
    dm.tblDetails.FieldByName('base').Value:=FieldByName('base').Value;
    dm.tblDetails.Post;
    //dm.tblDetails.ApplyUpdates(0);
    //showmessage(dm.tblDetails.fieldByName('idlinea').AsString);
    Next;
  end;
  cdsPtos.ApplyUpdates(0);
  cdsPto.Cancel;
  inherited;
end;

procedure TfrmMRemitos.edtClienteIdExit(Sender: TObject);
begin
  inherited;
  dsCliente.DataSet.Open;
  if not dsCliente.DataSet.Locate('idcliente',edtClienteId.Text,[]) then
  begin
    dsCliente.DataSet.Close;
    edtClienteid.SetFocus;
  end;
end;

procedure TfrmMRemitos.FormDestroy(Sender: TObject);
begin
  inherited;
   Screen.OnActiveControlChange := nil;
end;

procedure TfrmMRemitos.btnDeleteClick(Sender: TObject);
begin
  dsDetails.DataSet.Delete;
  cdsPto.FieldByName('subtotal').AsCurrency:=UpdateTotal;

end;

procedure TfrmMRemitos.SetupPage;
//Hide PageControl Tabs
var
   page : integer;
begin
  inherited;
  for page := 0 to pgcCRUD.PageCount - 1 do
   begin
     pgcCRUD.Pages[page].TabVisible := false;
   end;

   //select the first tab
   pgcCRUD.ActivePageIndex := 0;
end;

procedure TfrmMRemitos.SpeedButton2Click(Sender: TObject);
var
  fb: TfrmBuscar;
begin
  fb:= TfrmBuscar.CreateSearchFor(self,'clientes');
  try
  if fb.ShowModal = mrOk then
    dm.cdsRemitosIdCLiente.Value:=fb.ResultId;
  finally
    fb.free;
  end;
end;

procedure TfrmMRemitos.tabBrowseShow(Sender: TObject);
begin
  inherited;
  dsLista.DataSet.Refresh;
end;

procedure TfrmMRemitos.btnResetClick(Sender: TObject);
begin
  cdsALine.Cancel;
  edtArticuloId.SetFocus;
end;

function TfrmMRemitos.UpdateTotal: double;
var
  tot: double;
begin
  tot:=0;
  cdsLines.DisableControls;
  cdsLines.First;
  while not cdsLines.Eof do
  begin
    tot:=tot+cdsLines.FieldByName('subtotal').AsFloat;
    cdsLines.Next;
  end;
  cdsLines.EnableControls;
  result:=tot;
end;

end.
