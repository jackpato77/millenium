unit uDmVm;

interface

uses
  SysUtils, Classes, DB, DBAccess, MyAccess, MemDS, Provider, DBClient, SqlExpr;

type
  Tdm = class(TDataModule)
    cdsArticulos: TClientDataSet;
    dspArticulos: TDataSetProvider;
    tblArticulos: TMyTable;
    cnxVM: TMyConnection;
    tblVentas: TMyTable;
    tblDetails: TMyTable;
    dspDetalles: TDataSetProvider;
    cdsDetails: TClientDataSet;
    tblArticulosidarticulo: TIntegerField;
    tblArticulosdenominacion: TStringField;
    tblArticulosumcompra: TStringField;
    tblArticuloscosto: TFloatField;
    tblArticulosidrubro: TIntegerField;
    tblArticulosidsubrubro: TIntegerField;
    qrySearch: TMyQuery;
    cdsAux: TClientDataSet;
    IntegerField1: TIntegerField;
    IntegerField2: TIntegerField;
    IntegerField3: TIntegerField;
    StringField1: TStringField;
    StringField2: TStringField;
    cdsAuxCantidad: TIntegerField;
    FloatField1: TFloatField;
    cdsAuxAlto: TFloatField;
    cdsAuxAncho: TFloatField;
    cdsAuxCntTotal: TFloatField;
    cdsAuxSubTotal: TCurrencyField;
    cdsAuxArticuloPrecio: TCurrencyField;
    tblVentasidventa: TIntegerField;
    tblVentasfecha: TDateTimeField;
    tblVentasidcliente: TIntegerField;
    tblVentasidtipopago: TIntegerField;
    tblVentasdescuento: TFloatField;
    tblVentassubtotal: TFloatField;
    tblVentasobservaciones: TStringField;
    tblVentastipo: TStringField;
    qryNextID: TMyQuery;
    cdsVentas: TClientDataSet;
    dspVentas: TDataSetProvider;
    tblClientes: TMyTable;
    tblClientesidcliente: TIntegerField;
    tblClientesrazonsocial: TStringField;
    tblClientesnombre: TStringField;
    tblClientescuit: TStringField;
    tblClientesdireccion: TStringField;
    tblClientescp: TStringField;
    tblClienteslocalidad: TStringField;
    tblClientesprovincia: TStringField;
    tblClientespais: TStringField;
    tblClientestelefono: TStringField;
    tblClientescelular: TStringField;
    tblClientesfax: TStringField;
    tblClientescontacto: TStringField;
    tblClientescondiva: TStringField;
    tblClientesmail: TStringField;
    tblClientesweb: TStringField;
    tblClientesidcategoria: TIntegerField;
    tblClientesexterno: TStringField;
    cdsVentasidventa: TIntegerField;
    cdsVentasfecha: TDateTimeField;
    cdsVentasidcliente: TIntegerField;
    cdsVentasidtipopago: TIntegerField;
    cdsVentasdescuento: TFloatField;
    cdsVentassubtotal: TFloatField;
    cdsVentasobservaciones: TStringField;
    cdsVentastipo: TStringField;
    cdsVentasCliente: TStringField;
    cdsVentasClienteCondIVA: TStringField;
    cdsVentasClienteDireccion: TStringField;
    tblArticulosvcosto1: TFloatField;
    tblArticulosvcosto2: TFloatField;
    tblArticulosvcosto3: TFloatField;
    tblArticulosvcosto4: TFloatField;
    tblArticulosprecio: TCurrencyField;
    tblRubros: TMyTable;
    tblSubRubros: TMyTable;
    dsRubros: TDataSource;
    tblHPrecios: TMyTable;
    tblArticulosRubro: TStringField;
    tblArticulosSubRubro: TStringField;
    qryRubros: TMyQuery;
    qrySubRubros: TMyQuery;
    tblVentasTotal: TCurrencyField;
    cdsVentasTotal: TCurrencyField;
    qryUpdatePrecios: TMyQuery;
    tblRemitos: TMyTable;
    cdsRemitos: TClientDataSet;
    dspRemitos: TDataSetProvider;
    cdsRemitosfecha: TDateTimeField;
    cdsRemitosidcliente: TIntegerField;
    cdsRemitosdescuento: TFloatField;
    cdsRemitossubtotal: TFloatField;
    cdsRemitosobservaciones: TStringField;
    cdsRemitostipo: TStringField;
    cdsRemitosClienteDireccion: TStringField;
    cdsRemitosCliente: TStringField;
    dsClientes: TDataSource;
    dsArticulos: TDataSource;
    dspClientes: TDataSetProvider;
    cdsClientes: TClientDataSet;
    tblDetailsidlinea: TIntegerField;
    tblDetailsidmaster: TIntegerField;
    tblDetailsmaster: TStringField;
    tblDetailsidarticulo: TIntegerField;
    tblDetailsprecio: TFloatField;
    tblDetailscantidad: TIntegerField;
    tblDetailsalto: TFloatField;
    tblDetailsancho: TFloatField;
    tblPresupuestos: TMyTable;
    cdsPresupuestos: TClientDataSet;
    dspPresupuestos: TDataSetProvider;
    cdsPresupuestosidpresupuesto: TIntegerField;
    cdsPresupuestosfecha: TDateTimeField;
    cdsPresupuestosidcliente: TIntegerField;
    cdsPresupuestosdescuento: TFloatField;
    cdsPresupuestossubtotal: TFloatField;
    cdsPresupuestosobservaciones: TStringField;
    cdsPresupuestostipo: TStringField;
    tblRemitosidpresupuesto: TIntegerField;
    tblRemitosfecha: TDateTimeField;
    tblRemitosidcliente: TIntegerField;
    tblRemitosdescuento: TFloatField;
    tblRemitossubtotal: TFloatField;
    tblRemitosobservaciones: TStringField;
    tblRemitostipo: TStringField;
    cdsRemitosidpresupuesto: TIntegerField;
    cdsDetailsidlinea: TIntegerField;
    cdsDetailsidmaster: TIntegerField;
    cdsDetailsmaster: TStringField;
    cdsDetailsidarticulo: TIntegerField;
    cdsDetailsprecio: TFloatField;
    cdsDetailscantidad: TIntegerField;
    cdsDetailsalto: TFloatField;
    cdsDetailsbase: TFloatField;
    cdsPresupuestosCliente: TStringField;
    tblPresupuestosCliente: TStringField;
    tblPresupuestosidpresupuesto: TIntegerField;
    tblPresupuestosfecha: TDateTimeField;
    tblPresupuestosidcliente: TIntegerField;
    tblPresupuestosdescuento: TFloatField;
    tblPresupuestossubtotal: TFloatField;
    tblPresupuestosobservaciones: TStringField;
    tblPresupuestostipo: TStringField;
    tblPresupuestosTotal: TCurrencyField;
    qryCleanDetail: TMyQuery;
    dsSubRubros: TDataSource;
    qryArticulos: TMyQuery;
    cdsRubros: TClientDataSet;
    dspRubros: TDataSetProvider;
    dspSubRubros: TDataSetProvider;
    cdsSubrubros: TClientDataSet;
    dsARubros: TDataSource;
    dsASubrubros: TDataSource;
    cdsSubrubrosidsubrubro: TIntegerField;
    cdsSubrubrosidrubro: TIntegerField;
    cdsSubrubrossubrubro: TStringField;
    cdsRubrosidrubro: TIntegerField;
    cdsRubrosrubro: TStringField;
    tblCajas: TMyTable;
    cdsCajas: TClientDataSet;
    dspCajas: TDataSetProvider;
    cdsCajasfecha: TDateTimeField;
    cdsCajasidcliente: TIntegerField;
    cdsCajasidconcepto: TIntegerField;
    cdsCajasimporte: TFloatField;
    cdsCajasidtipo: TIntegerField;
    cdsCajasobservaciones: TStringField;
    cdsCajastipomov: TStringField;
    cdsCajasdebe: TCurrencyField;
    cdsCajashaber: TCurrencyField;
    tblConceptos: TMyTable;
    cdsCajasconcepto: TStringField;
    dsConceptos: TDataSource;
    dsCajas: TDataSource;
    cdsCajasidcaja: TLargeintField;
    tblCajasconcepto: TStringField;
    qryCajaSaldo: TMyQuery;
    tblCajasidcaja: TLargeintField;
    tblCajasfechahora: TDateTimeField;
    tblCajasfecha: TDateField;
    tblCajasidcliente: TIntegerField;
    tblCajasidconcepto: TIntegerField;
    tblCajasimporte: TFloatField;
    tblCajasidtipo: TIntegerField;
    tblCajasobservaciones: TStringField;
    tblCajastipomov: TStringField;
    procedure cdsAuxCalcFields(DataSet: TDataSet);
    procedure cdsDetailsNewRecord(DataSet: TDataSet);
    procedure cdsDetailsAfterPost(DataSet: TDataSet);
    procedure cdsDetailsCalcFields(DataSet: TDataSet);
    procedure cdsVentasNewRecord(DataSet: TDataSet);
    procedure tblArticulosCalcFields(DataSet: TDataSet);
    procedure tblVentasCalcFields(DataSet: TDataSet);
    procedure cdsRemitosNewRecord(DataSet: TDataSet);
    procedure tblPresupuestosCalcFields(DataSet: TDataSet);
    procedure cdsCajasNewRecord(DataSet: TDataSet);
    procedure cdsCajasCalcFields(DataSet: TDataSet);
  private
    { Private declarations }
    cdsDetailsInsert: boolean;
  public
    { Public declarations }
    function GetNextID(AEntity: string): integer;
    procedure SetNextID(AEntity: string);
    procedure UpdateMaster(AMasterId: integer);
    function GetVentaTotal(AID: integer): double;
    procedure CopyTo(ASource, ADestination: TDataset);
    function FindId(ADataSet: TDataSet; AEntity: string; AId: integer): boolean;
  end;

  TCaja = class(TPersistent)
    function Save: boolean;
  end;

  TDORM = class(TClientDataSet)
  private
  end;

var
  dm: Tdm;

implementation

{$R *.dfm}

procedure Tdm.cdsAuxCalcFields(DataSet: TDataSet);
begin
  if not cdsAux.IsEmpty then
  begin
    cdsAuxCntTotal.AsFloat:= cdsAuxAlto.Value*cdsAuxAncho.Value;
    cdsAuxSubTotal.AsCurrency:= cdsAuxCntTotal.Value*cdsAuxCantidad.Value*cdsAuxArticuloPrecio.Value;
  end;

end;

procedure Tdm.cdsCajasCalcFields(DataSet: TDataSet);
begin
  if cdsCajasTipoMov.Value<>'D' then
  cdsCajasHaber.Value:=cdsCajasImporte.Value
  else
  cdsCajasDebe.Value:=cdsCajasImporte.Value;
end;

procedure Tdm.cdsCajasNewRecord(DataSet: TDataSet);
begin
  cdsCajasFecha.Value:=Now;
end;

procedure Tdm.cdsDetailsAfterPost(DataSet: TDataSet);
begin
  if cdsDetailsInsert then
  begin
    SetNextId('vdetalles');
    cdsDetailsInsert:=false;
  end;
end;

procedure Tdm.cdsDetailsCalcFields(DataSet: TDataSet);
begin
  if not cdsDetails.IsEmpty then
  begin
    //cdsDetailsCntTotal.AsFloat:= cdsDetailsAlto.Value*cdsDetailsAncho.Value;
    //cdsDetailsSubTotal.AsCurrency:= cdsDetailsCntTotal.Value*cdsDetailsCantidad.Value*cdsDetailsPrecio.Value;
  end;

end;

procedure Tdm.cdsDetailsNewRecord(DataSet: TDataSet);
begin
  //cdsDetailsIdVDetalle.Value:=GetNextID('vdetalles');
  cdsDetailsInsert:=true;
end;

procedure Tdm.cdsRemitosNewRecord(DataSet: TDataSet);
begin
  cdsRemitosfecha.Value:=Date;
end;

procedure Tdm.cdsVentasNewRecord(DataSet: TDataSet);
begin
  cdsVentasIdVenta.Value:=GetNextId('ventas');
  cdsVentasFecha.Value:=Date;

end;

procedure Tdm.CopyTo(ASource, ADestination: TDataset);
var
  I : integer;
  AField: TField;
begin
  for I := 0 to ADestination.Fields.Count - 1 do
    if Adestination.Fields.Fields[I].FieldKind=fkData then
    begin
      AField:=ASource.Fields.FindField(ADestination.Fields.Fields[I].FieldName);
      if AField<>nil then
        Adestination.Fields.Fields[I].Value:=AField.Value;
    end;
end;

function Tdm.FindId(ADataset: TDataSet; AEntity: string; AId: integer): boolean;
begin
  if ADataSet.Locate('id'+AEntity,AId,[]) then
    Result:=true
  else
    Result:=false;
end;

function Tdm.GetNextID(AEntity: string): integer;
begin
  qryNextID.Close;
  qryNextID.ParamByName('pname').Value:=AEntity;
//  qryNextID.Prepare;
  qryNextID.Open;
  if qryNextID.RecordCount>0 then
    Result:=qryNextID.FieldByName('value').AsInteger
  else
    Result:=-1;
end;

function Tdm.GetVentaTotal(AID: integer): double;
var
  Qry: TMyQuery;
begin
  Qry:=TMyQuery.Create(nil);
  try
    Qry.Connection:=cnxVM;
    Qry.SQL.Add('SELECT SUM(precio*cantidad) ATotal FROM vdetalles WHERE idventa = :pidventa');
    Qry.Prepare;
    Qry.ParamByName('pidventa').Value:=AID;
    Qry.Open;
    Result:= Qry.FieldByName('ATotal').AsCurrency;
  finally
    Qry.Free;
  end;
end;

procedure Tdm.SetNextID(AEntity: string);
var
  upd: TMyQuery;
begin
  upd:= TMyQuery.Create(self);
  try
    upd.Connection:=self.cnxVM;
    upd.Close;
    upd.SQL.Text:='UPDATE mmentities SET value = value + 1 WHERE name = :pname';
    upd.ParamByName('pname').Value:=AEntity;
    upd.Prepare;
    upd.Execute;
  finally
    upd.Free;
  end;
end;

procedure Tdm.tblArticulosCalcFields(DataSet: TDataSet);
begin
  tblArticulosPrecio.Value:=tblArticuloscosto.Value*tblArticulosVcosto1.Value*tblArticulosVcosto2.Value*tblArticulosVcosto3.Value*tblArticulosVcosto4.Value;
end;

procedure Tdm.tblPresupuestosCalcFields(DataSet: TDataSet);
begin
  tblPresupuestosTotal.Value:=tblPresupuestosSubtotal.Value*(1-tblPresupuestosDescuento.Value);
end;

procedure Tdm.tblVentasCalcFields(DataSet: TDataSet);
begin
  //tblVentasTotal.Value:=GetVentaTotal(tblVentasIdVenta.Value);
end;

procedure Tdm.UpdateMaster(AMasterId: integer);
var
  upd: TMyQuery;
  f: double;
begin
end;

{ TCaja }

function TCaja.Save: boolean;
begin

end;

end.
