unit uCore;

interface

uses Classes, Contnrs, DBCLient, DB, MyAccess;

type
  TMeta = class
    private
      table_catalog,
      table_schema,
      table_name,
      column_name: string;
      ordinal_position: integer;
      is_nullable: boolean;
      data_type: string;
      character_maximun_lenght,
      numeric_precision,
      numeric_scale: integer;
      column_key,
      extra: string;
  end;

  TORMBase = class(TOBject)
  private
    FID: Variant;
    FTable: String;
    FDataQuery: TMyQuery;
    procedure Load;
  public
    constructor Create(const AID: Variant);virtual;
    procedure Save;
    class function GetConnection: TMyConnection;
    property DataSet: TMyQuery read FDataQuery;
  end;

  TORMEntity = class
    constructor Create; virtual; abstract;
    class function Find(aModelName: string; aId: integer): TORMEntity; virtual;
    function Save: boolean; virtual; abstract;
  end;

  TDetalle = class(TORMBase)
  public
    constructor Create(const ID, Owner: Variant); overload;
  end;

  TPedido = class(TORMBase)
  private
    Lineas: TDetalle;
    function GetId: integer;
    procedure SetId(aValue: integer);
  public
    constructor Create(const ID: Variant);
    function FieldValue(const AFieldName: string): TField;
    property Id: integer read GetId;
  end;


implementation

uses SysUtils, udmvm;

{ TORMEntity }

class function TORMEntity.Find(aModelName: string; aId: integer): TORMEntity;
begin

end;

{ TPedido }

constructor TPedido.Create(const ID: Variant);
begin
  inherited;
  Lineas := TDetalle.Create('',self.Id);
end;

function TPedido.FieldValue(const AFieldName: string): TField;
begin
  Result := FDataquery.FieldByName(AFieldName);
end;

function TPedido.GetId: integer;
begin
  Result:= integer(FId);
end;

procedure TPedido.SetId(aValue: integer);
begin
  self.Fid := aValue;
  Load;
end;

{ TORMBase }

constructor TORMBase.Create(const AID: Variant);
begin
  self.FID := AID;
  self.FTable := copy(self.ClassName,2,length(self.ClassName))+ 's';
  if not Assigned(FDataQuery) then
  begin
    FDataQuery := TMyQuery.Create(nil);
    FDataQuery.Connection := TORMBase.GetConnection;
    FDataQuery.SQL.Text := Format('SELECT * FROM %s WHERE id = :id',[FTable]);
  end;
  Load;
end;

class function TORMBase.GetConnection: TMyConnection;
begin
  Result := dm.cnxVM;
end;

procedure TORMBase.Load;
begin
  FDataQuery.Close;
  FDataQuery.ParamByName('id').Value := FID;
  FDataQuery.Prepared := true;
  try
    FDataQuery.Open;
  except

  end;
end;

procedure TORMBase.Save;
begin
  if Assigned(FDataQuery) then
    if FDataQuery.State in [dsInsert,dsEdit] then
      FDataQuery.Post;
end;

{ TDetalle }

constructor TDetalle.Create(const ID, Owner: Variant);
begin
end;

end.
