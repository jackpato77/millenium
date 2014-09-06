unit fpresupuesto;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, fbase, DB, DBActns, ActnList, ImgList, Grids, DBGrids, ComCtrls, ToolWin, StdCtrls, JvExStdCtrls, JvCombobox,
  JvDBSearchComboBox, Mask, DBCtrls, JvEdit, JvDBSearchEdit, rxToolEdit, RXDBCtrl,
  Buttons, JvExMask, JvToolEdit, JvDBLookup,
  JvDBLookupComboEdit, RxLookup, fcrud, Menus, JvExComCtrls, JvDateTimePicker, JvDBDateTimePicker;

type
  TComplexDataSetState = (xdsInactive, xdsBrowse, xdsEdit, xdsInsert, xdsSetKey,
    xdsCalcFields, xdsFilter, xdsNewValue, xdsOldValue, xdsCurValue, xdsBlockRead,
    xdsInternalCalc, xdsOpening);

  TfPto = class(TfrmBase)
    imlCRUD: TImageList;
    tobMain: TToolBar;
    ToolButton1: TToolButton;
    ToolButton2: TToolButton;
    ToolButton3: TToolButton;
    ToolButton4: TToolButton;
    ToolButton5: TToolButton;
    aclCRUD: TActionList;
    ToolButton7: TToolButton;
    ToolButton8: TToolButton;
    ToolButton9: TToolButton;
    actExit: TAction;
    dsBrowse: TDataSource;
    ToolButton10: TToolButton;
    pgcCRUD: TPageControl;
    tabBrowse: TTabSheet;
    tabDetail: TTabSheet;
    dbgBrowse: TDBGrid;
    actBuscar: TAction;
    actImprimir: TAction;
    dbgDetalle: TDBGrid;
    Label12: TLabel;
    dtsInsert: TAction;
    dtsEdit: TAction;
    dtsPost: TAction;
    dtsCancel: TAction;
    dtsDelete: TAction;
    popGrid: TPopupMenu;
    AgregarManodeObra1: TMenuItem;
    N1: TMenuItem;
    Eliminar1: TMenuItem;
    actManoObra: TAction;
    gbxLinea: TGroupBox;
    edtArticuloId: TDBEdit;
    btnPrdFnd: TSpeedButton;
    edtArticuloUM: TDBEdit;
    DBEdit10: TDBEdit;
    DBEdit7: TDBEdit;
    DBEdit8: TDBEdit;
    DBEdit4: TDBEdit;
    edtArticuloPrecio: TDBEdit;
    DBEdit11: TDBEdit;
    BitBtn2: TBitBtn;
    BitBtn1: TBitBtn;
    Label5: TLabel;
    Label6: TLabel;
    Label7: TLabel;
    Label9: TLabel;
    Label11: TLabel;
    Label13: TLabel;
    Label8: TLabel;
    Label10: TLabel;
    gbxCliente: TGroupBox;
    actEliminarLinea: TAction;
    edtClienteId: TDBEdit;
    SpeedButton1: TSpeedButton;
    RxDBLookupCombo1: TRxDBLookupCombo;
    Label2: TLabel;
    DBEdit5: TDBEdit;
    DBEdit3: TDBEdit;
    DBEdit2: TDBEdit;
    Label4: TLabel;
    Label14: TLabel;
    gbxPedido: TGroupBox;
    Label1: TLabel;
    DBText1: TDBText;
    edtEstado: TRxDBLookupCombo;
    DBDateEdit2: TDBDateEdit;
    Label3: TLabel;
    DBText2: TDBText;
    edtComentario: TDBMemo;
    Label16: TLabel;
    Label17: TLabel;
    Label15: TLabel;
    edtArticuloNombre: TRxDBLookupCombo;
    StatusBar1: TStatusBar;
    DBEdit1: TDBEdit;
    procedure FormCreate(Sender: TObject);
    procedure BitBtn1Click(Sender: TObject);
    procedure BitBtn2Click(Sender: TObject);
    procedure btnPrdFndClick(Sender: TObject);
    procedure dbgBrowseDblClick(Sender: TObject);
    procedure edtArticuloIdKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
    procedure edtClienteIdKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
    procedure SpeedButton1Click(Sender: TObject);
    procedure actExitExecute(Sender: TObject);
    procedure dtsInsertExecute(Sender: TObject);
    procedure dtsEditExecute(Sender: TObject);
    procedure dtsPostExecute(Sender: TObject);
    procedure dtsCancelExecute(Sender: TObject);
    procedure actBuscarExecute(Sender: TObject);
    procedure dtsDeleteExecute(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure btnDeleteClick(Sender: TObject);
    procedure dbgBrowseKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
    procedure edtArticuloNombreExit(Sender: TObject);
    procedure edtArticuloIdExit(Sender: TObject);
    procedure actManoObraExecute(Sender: TObject);
    procedure actEliminarLineaExecute(Sender: TObject);
    procedure tabBrowseShow(Sender: TObject);
  private
    { Private declarations }
    xState: TComplexDataSetState;
    procedure SetupPage;
  public
    { Public declarations }
    constructor Create(AOwner: TComponent; ATableName: string);reintroduce;
    function CreateSearch(AOwner: TComponent; EntityName: string): integer;

  end;

var
  fPto: TfPto;

implementation

uses uDmVm, fBuscar;

{$R *.dfm}

procedure TfPto.FormCreate(Sender: TObject);
begin
  inherited;
  dm.cdsLinea.Open;
  dm.cdsLineas.Open;
end;

procedure TfPto.edtArticuloNombreExit(Sender: TObject);
begin
  inherited;
  dm.cdsLinea.Edit;
  //dm.cdsLinea.FieldByName('articulo_id').Value:=edtArticuloNombre.GetResult;
end;

procedure TfPto.BitBtn1Click(Sender: TObject);
begin
  inherited;
  with dm do
  begin
    cdsLineas.Open;
    if cdsPedidos.State<>dsEdit then
      cdsPedidos.Edit;
    //cdsLineas.Append;
    cdsDetails.Append;
    with cdsLinea do
    begin
//      cdsDetails.FieldByName('pedido_id').Value:=cdsPedidos.FieldByName('id').Value;
      cdsDetails.FieldByName('articulo_id').Value:=FieldByName('articulo_id').Value;
      cdsDetails.FieldByName('precio').Value:=FieldByName('precio').Value;
      cdsDetails.FieldByName('Cantidad').Value:=FieldByName('Cantidad').Value;
      cdsDetails.FieldByName('alto').Value:=FieldByName('alto').Value;
      cdsDetails.FieldByName('base').Value:=FieldByName('base').Value;
    end;
    //cdsLineas.Post;
    cdsDetails.Post;
    cdsLinea.Cancel;
    cdsPedidos.Post;
    cdsPedidos.Edit;
//    cdsPedidos.FieldByName('subtotal').AsCurrency:=UpdateTotal;
    edtArticuloId.SetFocus;
  end;
end;

procedure TfPto.BitBtn2Click(Sender: TObject);
begin
  inherited;
  dm.cdsLinea.Cancel;
  edtArticuloId.SetFocus;
end;

procedure TfPto.btnDeleteClick(Sender: TObject);
begin
  inherited;
  dbgDetalle.DataSource.DataSet.Delete;
  dm.cdsPedidosCalcFields(dm.cdsPedidos);
end;

procedure TfPto.btnPrdFndClick(Sender: TObject);
var
  fb: TfrmBuscar;
begin
  inherited;
  fb:= TfrmBuscar.CreateSearchFor(nil,'clientes','Nombre');
  try
    if fb.ShowModal = mrOk then
        TEdit(Sender).Text:=IntToStr(fb.ResultId);
  finally
    fb.Free;
  end;
end;

procedure TfPto.dbgBrowseDblClick(Sender: TObject);
begin
  dtsEditExecute(self);
  pgcCRUD.ActivePageIndex:=1;
end;

procedure TfPto.edtArticuloIdExit(Sender: TObject);
var
  id:integer;
begin
  inherited;
//  if (edtArticuloId.Field.Value=0) or (edtArticuloId.Field.Value=Null) then
//    id:=CreateSearch(edtArticuloId,'articulos');
//  if id=0 then
//    TWinControl(Sender).SetFocus
//  else
//    edtArticuloId.Field.Value:=id;
end;

procedure TfPto.edtArticuloIdKeyDown(Sender: TObject; var Key: Word; Shift:
    TShiftState);
begin
  inherited;
  if (Key = VK_F2) or (edtArticuloId.Field.Value=Null and ((Key = VK_TAB) or (Key = VK_RETURN))) then
  begin
    TEdit(Sender).Text:=IntToStr(CreateSearch(edtArticuloId,'articulos'));
  end;
end;

procedure TfPto.edtClienteIdKeyDown(Sender: TObject; var Key: Word; Shift:
    TShiftState);
var
  fb: TfrmBuscar;
begin
  inherited;
  if Key = VK_F2 then
  begin
    fb:= TfrmBuscar.CreateSearchFor(nil,'clientes','Nombre');
    try
      if fb.ShowModal = mrOk then
          TEdit(Sender).Text:=IntToStr(fb.ResultId);
    finally
      fb.Free;
    end;
  end;
end;

procedure TfPto.SpeedButton1Click(Sender: TObject);
var
  fb: TfrmBuscar;
begin
  inherited;
  fb:= TfrmBuscar.CreateSearchFor(nil,'clientes','Nombre');
  try
    if fb.ShowModal = mrOk then
    begin
      dsBrowse.DataSet.DisableControls;
      dsBrowse.DataSet.First;
      while not dsBrowse.DataSet.Eof do
        if dsBrowse.DataSet.Fields[0].Value=fb.ResultId then
          break
        else dsBrowse.DataSet.Next;
      dsBrowse.Dataset.EnableControls;
      dbgBrowse.SetFocus;
    end;
  finally
    fb.Free;
  end;
end;

procedure TfPto.tabBrowseShow(Sender: TObject);
begin
  inherited;
  dsBrowse.DataSet.Refresh;
end;

procedure TfPto.actBuscarExecute(Sender: TObject);
var
  fb: TfrmBuscar;
begin
  inherited;
  fb:= TfrmBuscar.CreateSearchFor(nil,'pedidos','Nombre');
  try
    if fb.ShowModal = mrOk then
    begin
      dsBrowse.DataSet.DisableControls;
      dsBrowse.DataSet.First;
      while not dsBrowse.DataSet.Eof do
        if dsBrowse.DataSet.Fields[0].Value=fb.ResultId then
          break
        else dsBrowse.DataSet.Next;
      dsBrowse.Dataset.EnableControls;
      dbgBrowse.SetFocus;
    end;
  finally
    fb.Free;
  end;
end;

procedure TfPto.actEliminarLineaExecute(Sender: TObject);
begin
  inherited;
  dbgDetalle.DataSource.DataSet.Delete;
  dm.cdsPedidosCalcFields(dm.cdsPedidos);

end;

procedure TfPto.actExitExecute(Sender: TObject);
begin
  inherited;
  //self.Close;
  Parent.Free;
end;

procedure TfPto.actManoObraExecute(Sender: TObject);
var
  i, base, alto : integer;
begin
  inherited;
  if dbgDetalle.SelectedRows.Count > 0 then
  begin
    base := 0;
    alto := 0;
    with dbgDetalle.DataSource.DataSet do
    begin
      for i := 0 to dbgDetalle.SelectedRows.Count-1 do
      begin
        GotoBookmark(Pointer(dbgDetalle.SelectedRows.Items[i]));
        base:= base + FieldByName('base').AsInteger;
        alto:= alto + FieldByName('alto').AsInteger;
      end;
    end;
  end;
  with dbgDetalle.DataSource.DataSet do
  begin
    base:= base + FieldByName('base').AsInteger;
    alto:= alto + FieldByName('alto').AsInteger;
  end;

  dm.cdsLinea.Cancel;
  dm.cdsLinea.Edit;
  dm.cdsLinea.FieldByName('articulo_id').Value:=342;
  dm.cdsLinea.FieldByName('cantidad').Value:=1;
  dm.cdsLinea.FieldByName('base').Value:=base;
  dm.cdsLinea.FieldByName('alto').Value:=alto;
  edtArticuloId.SetFocus;
end;

procedure TfPto.dtsCancelExecute(Sender: TObject);
begin
  inherited;
  dm.cdsBPedidos.Cancel;
  dm.cdsBPedidos.First;
  xState:=xdsBrowse;
  dtsEdit.Enabled:=true;
  dtsInsert.Enabled:=true;
  dtsCancel.Enabled:=false;
  dtsPost.Enabled:=false;
  pgcCRUD.ActivePageIndex:=0;
end;

procedure TfPto.dtsDeleteExecute(Sender: TObject);
var
  buttonSelected: integer;
begin
  inherited;
  buttonSelected := MessageDlg('Seguro de Eliminar?',mtWarning , mbOkCancel, 0);
  if buttonSelected= mrOk then
    dsBrowse.Dataset.Delete;
  xState:=xdsBrowse;
  dtsEdit.Enabled:=true;
  dtsInsert.Enabled:=true;
  dtsCancel.Enabled:=false;
  dtsPost.Enabled:=false;
  pgcCRUD.ActivePageIndex:=0;

end;

procedure TfPto.dtsEditExecute(Sender: TObject);
var
  CurrentId: integer;
begin
  inherited;
  CurrentId:=dsBrowse.DataSet.FieldByName('id').Value;
  dm.tblDetails.Open;
  dm.tblDetails.Refresh;
  dm.CargarPedido(CurrentId,dm.cdsPedidos,dm.cdsLineas);
  dm.cdsPedidos.Edit;
  dm.cdsLinea.Edit;
  xState:=xdsEdit;
  dtsEdit.Enabled:=false;
  dtsInsert.Enabled:=false;
  dtsCancel.Enabled:=true;
  dtsPost.Enabled:=true;
  dtsDelete.Enabled:=false;
  pgcCRUD.ActivePageIndex:=1;
end;

procedure TfPto.dtsInsertExecute(Sender: TObject);
begin
  inherited;
  dm.cdsBPedidos.Close;
  dm.cdsBPedidos.Open;
  dm.cdsBPedidos.Last;
  dm.cdsBPedidos.Insert;
  dm.cdsClientes.Refresh;
  dm.cdsDetails.Refresh;
  xState:=xdsInsert;
  //-
  dtsEdit.Enabled:=false;
  dtsInsert.Enabled:=false;
  dtsCancel.Enabled:=true;
  dtsPost.Enabled:=true;
  dtsDelete.Enabled:=false;
  pgcCRUD.ActivePageIndex:=1;
end;

procedure TfPto.dtsPostExecute(Sender: TObject);
begin
  inherited;
  if not (dm.cdsBPedidos.State in [dsInsert,dsEdit]) then
  dm.cdsBPedidos.Edit;
  dm.cdsBPedidos.FieldByName('monto').Value:=dm.cdsDetailsTotal.Value;
  dm.cdsBPedidos.Post;


  dm.cdsBPedidos.ApplyUpdates(0);
  dm.cdsDetails.ApplyUpdates(0);
  //dm.cdsDetails.Refresh;
  //dm.cdsBPedidos.Refresh;
  xState:=xdsBrowse;
  dtsEdit.Enabled:=true;
  dtsInsert.Enabled:=true;
  dtsCancel.Enabled:=false;
  dtsPost.Enabled:=false;
  dtsdelete.Enabled:=true;
  pgcCRUD.ActivePageIndex:=0;
end;

procedure TfPto.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  inherited;
  Action:=caFree;
end;

procedure TfPto.dbgBrowseKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
begin
  inherited;
   if (Key = 13) and (Shift = [ssCtrl]) then
   dbgBrowseDblClick(self);
end;

constructor TfPto.Create(AOwner: TComponent; ATableName: string);
var
  i, underScore: integer;
  LUDataset: TDataSet;
  LUTable, LUField: string;
  LUFieldList: TStringList;
begin
  inherited Create(AOwner);
  xState:=xdsBrowse;
  SetupPage;
end;

function TfPto.CreateSearch(AOwner: TComponent; EntityName: string): integer;
var
  fb: TfrmBuscar;
begin
  inherited;
  fb:= TfrmBuscar.CreateSearchFor(nil,EntityName,'Nombre');
  try
    if fb.ShowModal = mrOk then
    Result:=fb.ResultId
    else
    Result:=0;
  finally
    fb.Free;
  end;
end;

procedure TfPto.SetupPage;
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

end.
