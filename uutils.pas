unit uutils;

interface
uses Classes, DBGrids, DB;

type
  TVMForms = (Articulos, Clientes, Presupuestos, Cajas);

procedure FixDBGridColumnsWidth(const DBGrid: TDBGrid; DBFieldDefs: TFieldDefs);

var
  VMForms: TStringList;
  VMF: TVMForms;

implementation

uses Windows, Forms;

procedure FixDBGridColumnsWidth(const DBGrid: TDBGrid; DBFieldDefs: TFieldDefs);
var
  FSize, TotalFieldWidth, TotalColumnWidth, ColumnCount, GridClientWidth, Filler, i: Integer;

function GetfieldSize(const AFieldName: string):integer;
var
  fd: TFieldDef;
begin
  fd:=DBFieldDefs.Find(AFieldName);
  case fd.DataType of
    ftString: result:= fd.size;
    else  result:= fd.precision;
  end;
end;

begin
  ColumnCount := DBGrid.Columns.Count;
  if ColumnCount = 0 then
    Exit;

  // compute total width used by grid columns and vertical lines if any
  TotalColumnWidth := 0;
  TotalFieldWidth:= 0;
  for i := 0 to ColumnCount-1 do
  begin
    TotalColumnWidth := TotalColumnWidth + DBGrid.Columns[i].Width;
    TotalFieldwidth := TotalfieldWidth + GetfieldSize(DBGrid.Columns[i].FieldName);
  end;
  if dgColLines in DBGrid.Options then
    // include vertical lines in total (one per column)
    TotalColumnWidth := TotalColumnWidth + ColumnCount;
  

  // compute grid client width by excluding vertical scroll bar, grid indicator,
  // and grid border
  GridClientWidth := DBGrid.Width - GetSystemMetrics(SM_CXVSCROLL);
  if dgIndicator in DBGrid.Options then begin
    GridClientWidth := GridClientWidth - IndicatorWidth;
    if dgColLines in DBGrid.Options then
      Dec(GridClientWidth);
  end;
  if DBGrid.BorderStyle = bsSingle then begin
    if DBGrid.Ctl3D then // border is sunken (vertical border is 2 pixels wide)
      GridClientWidth := GridClientWidth - 4
    else // border is one-dimensional (vertical border is one pixel wide)
      GridClientWidth := GridClientWidth - 2;
  end;

  // adjust column widths
  //if TotalColumnWidth < GridClientWidth then begin
    Filler := (GridClientWidth - TotalColumnWidth) div ColumnCount;
    for i := 0 to ColumnCount-1 do
    begin
      DBGrid.Columns[i].Width := Trunc((GetFieldSize(DBGrid.Columns[i].FieldName) / TotalFieldWidth)* GridClientWidth);//DBGrid.Columns[i].Width + Filler;
    end;
  {end
  else if TotalColumnWidth > GridClientWidth then begin
    Filler := (TotalColumnWidth - GridClientWidth) div ColumnCount;
    if (TotalColumnWidth - GridClientWidth) mod ColumnCount <> 0 then
      Inc(Filler);
    for i := 0 to ColumnCount-1 do
      DBGrid.Columns[i].Width := DBGrid.Columns[i].Width - Filler;
  end;}
end;

procedure EnhanceDBGrid(const DBGrid: TDBGrid);
begin

end;

initialization
  VMForms:=TStringList.Create;
  VMForms.Sorted:=true;
  VMForms.Add('Articulos');
  VMForms.Add('Clientes');
  VMForms.Add('Proveedores');
  VMForms.Add('Ventas');
  VMForms.Add('Presupuestos');
  VMForms.Add('Caja');
finalization
  VMForms.Free;

end.
