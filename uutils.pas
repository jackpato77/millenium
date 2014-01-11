unit uutils;

interface
uses Classes, DBGrids, DB, SysUtils;

type
  TVMForms = (Articulos, Clientes, Presupuestos, Cajas);

function CapitalizeString(const s: string; const CapitalizeFirst: Boolean = True): string;

procedure CreatePersistentFields(ADataset: TDataset);

procedure CreateLookupField( ATable: TDataSet; AFieldName: String; ALookupDataset: TDataset; AKeyfields: String; ALookupKeyfields: String; ALookupResultField : String);

procedure FixDBGridColumnsWidth(const DBGrid: TDBGrid; DBFieldDefs: TFieldDefs);

procedure SetDBGridColumnsCaption(const DBGrid: TDBGrid; DBFieldDefs: TFieldDefs; ShowId: boolean = true);

function MakeColumnCaption(FieldName: string): string;

var
  VMForms: TStringList;
  VMF: TVMForms;

implementation

uses Windows, Forms;

function CapitalizeString(const s: string; const CapitalizeFirst: Boolean = True): string;
const
  ALLOWEDCHARS = ['a'..'z', '_'];
var
  Index: Integer;
  bCapitalizeNext: Boolean;
begin
  bCapitalizeNext := CapitalizeFirst;
  Result := LowerCase(s);
  if Result <> EmptyStr then
    for Index := 1 to Length(Result) do
      if bCapitalizeNext then begin
        Result[Index] := UpCase(Result[Index]);
        bCapitalizeNext := False;
      end else
      if NOT (Result[Index] in ['a'..'z', '_']) then
        bCapitalizeNext := True;
end;

procedure CreatePersistentFields(ADataset: TDataset);
Var
  i: Integer;
Begin
  ADataset.FieldDefs.Update;
  for I := 0 to ADataset.FieldDefs.Count - 1 do
     if ADataset.FindField(ADataset.FieldDefs[i].Name) = Nil then
       ADataset.FieldDefs.Items[i].CreateField(ADataset);
End;

Procedure CreateLookupField( ATable: TDataSet; AFieldName: String; ALookupDataset: TDataset; AKeyfields: String; ALookupKeyfields: String; ALookupResultField : String);
Var
  I : Integer;
  NewField : TField;
Begin
  with ATable do begin
    if FieldDefs.Updated = False then
      FieldDefs.Update;
    If FindField(AFieldName) = Nil then
    begin
      NewField := TStringField.Create(ATable);
      NewField.FieldName := AFieldName;
      NewField.KeyFields := AKeyFields;
      NewFIeld.LookupDataSet := ALookupDataset;
      NewField.LookupKeyFields := ALookupKeyFields;
      NewField.LookupResultField := ALookupResultField;
      NewField.FieldKind := fkLookup;
      NewField.Dataset := ATable;
    end;
  end;
End;

function MakeColumnCaption(FieldName: string): string;
var
  HFieldName, HumanFieldName2: string;
  i: integer;
  bUpper: boolean;
begin
  HFieldName:= FieldName;
  bUpper:=False;
  HFieldName[1]:=UpCase(HFieldName[1]);
  HFieldName:=StringReplace(HFieldName,'_',' ',[]);
  for I := 1 to Length(HFieldName) - 1 do
  begin
    if bUpper then hFieldName[i]:=UpCase(HFieldName[i]);
    if hFieldName[i]=' ' then bUpper:=True
    else bUpper:=False;
  end;
  Result:=HFieldName;
end;

procedure SetDBGridColumnsCaption(const DBGrid: TDBGrid; DBFieldDefs: TFieldDefs; ShowId: boolean = true);
var
  ColumnCount, i: integer;
begin
  ColumnCount := DBGrid.Columns.Count;
  if ColumnCount = 0 then
    Exit;
  for i := 0 to ColumnCount-1 do
  begin
    if DBGrid.Columns[i].FieldName='id' then DBGrid.Columns[i].Visible:= ShowId;
    DBGrid.Columns[i].Title.Caption := CapitalizeString(DBGrid.Columns[i].FieldName);
    DBGrid.Columns[i].Title.Alignment:= taCenter;
  end;
end;

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
    else  result:= fd.Size+ fd.precision;
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
  if TotalColumnWidth < GridClientWidth then begin
    Filler := (GridClientWidth - TotalColumnWidth) div ColumnCount;
    for i := 0 to ColumnCount-1 do
    begin
      DBGrid.Columns[i].Width := Trunc((GetFieldSize(DBGrid.Columns[i].FieldName) / TotalFieldWidth)* GridClientWidth);//DBGrid.Columns[i].Width + Filler;
    end;
  end
  else if TotalColumnWidth > GridClientWidth then begin
    Filler := (TotalColumnWidth - GridClientWidth) div ColumnCount;
    if (TotalColumnWidth - GridClientWidth) mod ColumnCount <> 0 then
      Inc(Filler);
    for i := 0 to ColumnCount-1 do
      DBGrid.Columns[i].Width := DBGrid.Columns[i].Width - Filler;
  end;
end;

procedure EnhanceDBGrid(const DBGrid: TDBGrid);
begin

end;

initialization
  VMForms:=TStringList.Create;
  VMForms.Sorted:=true;
  VMForms.Add('Articulos');
  VMForms.Add('Clientes');
  VMForms.Add('Presupuestos');
  VMForms.Add('Proveedores');
  VMForms.Add('Test');
  VMForms.Add('Ventas');
finalization
  VMForms.Free;

end.
