unit fventa;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, fbase, DB, DBActns, ActnList, ImgList, Grids, DBGrids, ComCtrls, ToolWin, StdCtrls, JvExStdCtrls, JvCombobox,
  JvDBSearchComboBox, Mask, DBCtrls, JvEdit, JvDBSearchEdit, rxToolEdit, RXDBCtrl,
  Buttons, JvExMask, JvToolEdit, JvDBLookup,
  JvDBLookupComboEdit, RxLookup, fcrud, Menus, JvExComCtrls, JvDateTimePicker, JvDBDateTimePicker, JvWinDialogs,
  JvBaseDlg, JvBrowseFolder, DBTables, JvBDELists;

type
  TComplexDataSetState = (xdsInactive, xdsBrowse, xdsEdit, xdsInsert, xdsSetKey,
    xdsCalcFields, xdsFilter, xdsNewValue, xdsOldValue, xdsCurValue, xdsBlockRead,
    xdsInternalCalc, xdsOpening);

  TfVta = class(TfrmBase)
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
    DBEdit6: TDBEdit;
    Label12: TLabel;
    dtsInsert: TAction;
    dtsEdit: TAction;
    dtsPost: TAction;
    dtsCancel: TAction;
    dtsDelete: TAction;
    GroupBox2: TGroupBox;
    edtClienteId: TDBEdit;
    Label2: TLabel;
    DBEdit5: TDBEdit;
    DBEdit3: TDBEdit;
    DBEdit2: TDBEdit;
    Label4: TLabel;
    Label14: TLabel;
    GroupBox3: TGroupBox;
    Label1: TLabel;
    DBText1: TDBText;
    Label3: TLabel;
    DBText2: TDBText;
    edtComentario: TDBMemo;
    Label16: TLabel;
    edtPedidoNro: TDBEdit;
    DBLookupComboBox1: TDBLookupComboBox;
    Label5: TLabel;
    DBEdit1: TDBEdit;
    DBEdit4: TDBEdit;
    Label6: TLabel;
    Label7: TLabel;
    DBEdit7: TDBEdit;
    procedure FormCreate(Sender: TObject);
    procedure dbgBrowseDblClick(Sender: TObject);
    procedure actExitExecute(Sender: TObject);
    procedure dtsInsertExecute(Sender: TObject);
    procedure dtsEditExecute(Sender: TObject);
    procedure dtsPostExecute(Sender: TObject);
    procedure dtsCancelExecute(Sender: TObject);
    procedure actBuscarExecute(Sender: TObject);
    procedure dtsDeleteExecute(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure dbgBrowseKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
    procedure edtPedidoNroExit(Sender: TObject);
    procedure edtPedidoNroKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
  private
    { Private declarations }
    xState: TComplexDataSetState;
    procedure SetupPage;
  public
    { Public declarations }
    constructor Create(AOwner: TComponent; ATableName: string);reintroduce;
    function CreateSearch(EntityName, SearchField: string; ReturnField: string = 'id'): integer;

  end;

var
  fVta: TfVta;

implementation

uses uDmVm, fBuscar;

{$R *.dfm}

procedure TfVta.FormCreate(Sender: TObject);
begin
  inherited;
  dm.cdsLinea.Open;
  dm.cdsLineas.Open;
  dm.cdsVentas.Open;
  dm.cdsPedidos.Open;
  dm.cdsDetails.Open;
end;

function TfVta.CreateSearch(EntityName, SearchField: string; ReturnField: string = 'id'): integer;
var
  fb: TfrmBuscar;
begin
  inherited;
  fb:= TfrmBuscar.CreateSearchFor(nil,EntityName,SearchField, ReturnField);
  try
    if fb.ShowModal = mrOk then
    Result:=fb.ResultId
    else
    Result:=0;
  finally
    fb.Free;
  end;
end;

procedure TfVta.dbgBrowseDblClick(Sender: TObject);
begin
  dtsEditExecute(self);
  pgcCRUD.ActivePageIndex:=1;
end;

procedure TfVta.actBuscarExecute(Sender: TObject);
var
  fb: TfrmBuscar;
begin
  inherited;
  fb:= TfrmBuscar.CreateSearchFor(nil,'ventas','cliente_nombre');
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

procedure TfVta.actExitExecute(Sender: TObject);
begin
  inherited;
  //self.Close;
  Parent.Free;
end;

procedure TfVta.dtsCancelExecute(Sender: TObject);
begin
  inherited;
  dm.cdsVentas.Cancel;
  dm.cdsVentas.First;
  dm.cdsVLineas.Cancel;
  xState:=xdsBrowse;
  dtsEdit.Enabled:=true;
  dtsInsert.Enabled:=true;
  dtsCancel.Enabled:=false;
  dtsPost.Enabled:=false;
  pgcCRUD.ActivePageIndex:=0;
end;

procedure TfVta.dtsDeleteExecute(Sender: TObject);
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

procedure TfVta.dtsEditExecute(Sender: TObject);
var
  CurrentId: integer;
begin
  inherited;
  CurrentId:=dsBrowse.DataSet.FieldByName('id').Value;
  dm.tblDetails.Refresh;
  dm.CargarPedido(CurrentId,dm.cdsVPedidos,dm.cdsVLineas);
  dm.cdsVentas.Edit;
  xState:=xdsEdit;
  dtsEdit.Enabled:=false;
  dtsInsert.Enabled:=false;
  dtsCancel.Enabled:=true;
  dtsPost.Enabled:=true;
  pgcCRUD.ActivePageIndex:=1;
end;

procedure TfVta.dtsInsertExecute(Sender: TObject);
begin
  inherited;
  dm.cdsVPedidos.Open;
  dm.cdsVLineas.Open;
  //dm.cdsVLineas.EmptyDataSet;
  //dm.cdsVentas.Append;
  dm.cdsVentas.Insert;
  xState:=xdsInsert;
  dtsEdit.Enabled:=false;
  dtsInsert.Enabled:=false;
  dtsCancel.Enabled:=true;
  dtsPost.Enabled:=true;
  pgcCRUD.ActivePageIndex:=1;
end;

procedure TfVta.dtsPostExecute(Sender: TObject);
begin
  inherited;
  dm.cdsVentas.Post;
  if xState=xdsInsert then
  begin
    dm.tblVentas.Insert;
    dm.SetNextID('venta_nro');
  end
  else
    dm.tblVentas.Edit;
  dm.cdsDetails.Close;
  dm.cdsDetails.Open;
  xState:=xdsBrowse;
  dtsEdit.Enabled:=true;
  dtsInsert.Enabled:=true;
  dtsCancel.Enabled:=false;
  dtsPost.Enabled:=false;
  pgcCRUD.ActivePageIndex:=0;

end;

procedure TfVta.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  inherited;
  Action:=caFree;
end;

procedure TfVta.dbgBrowseKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
begin
  inherited;
   if (Key = 13) and (Shift = [ssCtrl]) then
   dbgBrowseDblClick(self);
end;

constructor TfVta.Create(AOwner: TComponent; ATableName: string);
begin
  inherited Create(AOwner);
  dm.tblVentas.Open;
  dm.tblDetails.Open;
  dm.cdsVentas.Open;
  dm.cdsPedidos.Open;
  dm.cdsDetails.Open;

  xState:=xdsBrowse;
  SetupPage;
end;

procedure TfVta.edtPedidoNroExit(Sender: TObject);
var
  CurrentId: integer;
begin
  inherited;
  dm.cdsVPedidos.Open;
   dm.cdsVLineas.Open;
  if not dm.cdsVPedidos.Locate('nro',edtPedidoNro.Field.Value,[]) then
  begin
   edtPedidoNro.SetFocus;
  end
  else dm.cdsVLineas.Refresh;
end;

procedure TfVta.edtPedidoNroKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
begin
  inherited;
  if Key = VK_F2 then
  begin
    TEdit(Sender).Text:=IntToStr(CreateSearch('pedidos','nro','nro'));
  end;
end;

procedure TfVta.SetupPage;
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
