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
    qrySearch: TMyQuery;
    qryNextID: TMyQuery;
    cdsVentas: TClientDataSet;
    dspVentas: TDataSetProvider;
    tblClientes: TMyTable;
    tblRubros: TMyTable;
    tblSubRubros: TMyTable;
    tblPrecios: TMyTable;
    dsClientes: TDataSource;
    dsArticulos: TDataSource;
    dspClientes: TDataSetProvider;
    cdsClientes: TClientDataSet;
    qryCleanDetail: TMyQuery;
    qryArticulos: TMyQuery;
    cdsRubros: TClientDataSet;
    dspRubros: TDataSetProvider;
    dspSubRubros: TDataSetProvider;
    cdsSubrubros: TClientDataSet;
    dsARubros: TDataSource;
    dsASubrubros: TDataSource;
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
    cdsCajasconcepto: TStringField;
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
    cdsClientesid: TIntegerField;
    cdsClientesnombre: TStringField;
    cdsClientescuit: TStringField;
    cdsClientesdomicilio: TStringField;
    cdsClientestelefono: TStringField;
    cdsClientescondicion_iva: TStringField;
    cdsClientescontacto: TStringField;
    tblPedidos: TMyTable;
    dsPedidosClientes: TDataSource;
    dsDetallesArticulos: TDataSource;
    dsDetalles: TDataSource;
    cdsLinea: TClientDataSet;
    dsLinea: TDataSource;
    cdsArticulosid: TIntegerField;
    cdsArticulosnombre: TStringField;
    cdsArticuloscosto: TFloatField;
    cdsArticulosum: TStringField;
    cdsLineaArticulo_id: TIntegerField;
    cdsLineaArticulo_Precio: TCurrencyField;
    cdsLineaBase: TIntegerField;
    cdsLineaAlto: TIntegerField;
    cdsLineaCantidad: TIntegerField;
    cdsLineaSubtotal: TCurrencyField;
    dsLineas: TDataSource;
    cdsLineas: TClientDataSet;
    IntegerField1: TIntegerField;
    IntegerField2: TIntegerField;
    IntegerField3: TIntegerField;
    IntegerField4: TIntegerField;
    CurrencyField2: TCurrencyField;
    cdsPedidos: TClientDataSet;
    dspPedidos: TDataSetProvider;
    cdsLineaArticulo_Nombre: TStringField;
    cdsLineaArticulo_UM: TStringField;
    cdsLineasArticulo_Nombre: TStringField;
    cdsPedidosid: TIntegerField;
    cdsPedidosnro: TIntegerField;
    cdsPedidoscliente_id: TIntegerField;
    cdsPedidosfecha: TDateField;
    cdsPedidosfecha_requerido: TDateField;
    cdsPedidosestado: TStringField;
    cdsPedidosforma_entrega: TStringField;
    cdsPedidosempleado_id: TIntegerField;
    cdsPedidosmonto: TFloatField;
    cdsPedidostipo: TStringField;
    dsPedidos: TDataSource;
    dsAPedidos: TDataSource;
    cdsPedidoscliente_nombre: TStringField;
    cdsPedidoscliente_cuit: TStringField;
    cdsPedidoscliente_domicilio: TStringField;
    cdsPedidoscliente_telefono: TStringField;
    cdsLineasArticulo_UM: TStringField;
    tblEstados: TMyTable;
    cdsPedidosestado2: TStringField;
    dsEstados: TDataSource;
    cdsArticuloPrecios: TClientDataSet;
    cdsArticuloPreciosid: TIntegerField;
    cdsArticuloPreciosnombre: TStringField;
    cdsArticuloPrecioscosto: TFloatField;
    cdsArticuloPreciosum: TStringField;
    dsPrecios: TDataSource;
    qryArticulosid: TIntegerField;
    qryArticulosnombre: TStringField;
    qryArticulosum: TStringField;
    qryArticuloscosto: TFloatField;
    qryArticulosprecio: TFloatField;
    cdsPedidosfecha_ingreso: TDateTimeField;
    dsAVentas: TDataSource;
    tblPedidosid: TIntegerField;
    tblPedidosnro: TIntegerField;
    tblPedidoscliente_id: TIntegerField;
    tblPedidosfecha: TDateField;
    tblPedidosfecha_ingreso: TDateTimeField;
    tblPedidosfecha_requerido: TDateField;
    tblPedidosestado_id: TIntegerField;
    tblPedidoscomentario: TMemoField;
    tblPedidosempleado_id: TIntegerField;
    tblPedidosmonto: TFloatField;
    tblPedidostipo: TStringField;
    dsDetails: TDataSource;
    cdsVentasid: TIntegerField;
    cdsVentasnro: TIntegerField;
    cdsVentaspedido_id: TIntegerField;
    cdsVentasfecha: TDateTimeField;
    cdsVentasdcto: TFloatField;
    cdsVentastotal: TFloatField;
    cdsVentastipo: TStringField;
    dsVPedidos: TDataSource;
    dsVLineas: TDataSource;
    cdsLineaCntTotal: TFloatField;
    cdsLineasCntTotal: TFloatField;
    pedidos: TClientDataSet;
    pedidosid: TIntegerField;
    pedidosnro: TIntegerField;
    pedidoscliente_id: TIntegerField;
    pedidosfecha: TDateField;
    pedidosfecha_ingreso: TDateTimeField;
    pedidosfecha_requerido: TDateField;
    pedidosestado_id: TIntegerField;
    pedidoscomentario: TMemoField;
    pedidosempleado_id: TIntegerField;
    pedidosmonto: TFloatField;
    pedidostipo: TStringField;
    pedidoscliente_nombre: TStringField;
    pedidoscliente_cuit: TStringField;
    pedidoscliente_domicilio: TStringField;
    pedidoscliente_telefono: TStringField;
    pedidosestado: TStringField;
    pedidoscdsDetails: TDataSetField;
    pedidostblDetails: TDataSetField;
    cdsVentasdcto_monto: TFloatField;
    cdsVPedidos: TClientDataSet;
    cdsVLineas: TClientDataSet;
    cdsVLineasid: TIntegerField;
    cdsVLineaspedido_id: TIntegerField;
    cdsVLineasarticulo_id: TIntegerField;
    cdsVLineascantidad: TIntegerField;
    cdsVLineasbase: TIntegerField;
    cdsVLineasalto: TIntegerField;
    cdsVLineasprecio: TFloatField;
    cdsVLineasestado: TStringField;
    cdsVPedidosid: TIntegerField;
    cdsVPedidosnro: TIntegerField;
    cdsVPedidoscliente_id: TIntegerField;
    cdsVPedidosfecha: TDateField;
    cdsVPedidosfecha_ingreso: TDateTimeField;
    cdsVPedidosfecha_requerido: TDateField;
    cdsVPedidosestado_id: TIntegerField;
    cdsVPedidoscomentario: TMemoField;
    cdsVPedidosempleado_id: TIntegerField;
    cdsVPedidosmonto: TFloatField;
    cdsVPedidostipo: TStringField;
    cdsVLineasarticulo_nombre: TStringField;
    cdsVPedidoscliente_nombre: TStringField;
    cdsVPedidoscliente_domicilio: TStringField;
    cdsVPedidoscliente_cuit: TStringField;
    cdsVPedidoscliente_telefono: TStringField;
    cdsVLineasarticulo_um: TStringField;
    cdsVLineasCntTotal: TFloatField;
    cdsVLineassubtotal: TCurrencyField;
    cdsBPedidos: TClientDataSet;
    IntegerField5: TIntegerField;
    IntegerField6: TIntegerField;
    IntegerField7: TIntegerField;
    StringField1: TStringField;
    StringField2: TStringField;
    StringField3: TStringField;
    StringField4: TStringField;
    DateField1: TDateField;
    DateField2: TDateField;
    IntegerField8: TIntegerField;
    FloatField1: TFloatField;
    StringField7: TStringField;
    StringField8: TStringField;
    DateTimeField1: TDateTimeField;
    cdsBPedidosestado_id: TIntegerField;
    cdsDetailsid: TIntegerField;
    cdsDetailspedido_id: TIntegerField;
    cdsDetailsarticulo_id: TIntegerField;
    cdsDetailscantidad: TIntegerField;
    cdsDetailsbase: TIntegerField;
    cdsDetailsalto: TIntegerField;
    cdsDetailsprecio: TFloatField;
    cdsDetailsestado: TStringField;
    cdsLineasPrecio: TCurrencyField;
    dsBPedidos: TDataSource;
    cdsDetailsarticulo_nombre: TStringField;
    cdsDetailsarticulo_um: TStringField;
    cdsDetailscnttotal: TFloatField;
    cdsDetailssubtotal: TCurrencyField;
    cdsBPedidoscomentario: TMemoField;
    cdsDetailstotal: TAggregateField;
    tblArticulosid: TIntegerField;
    tblArticulosnombre: TStringField;
    tblArticuloscosto: TFloatField;
    tblArticulosum: TStringField;
    tblArticulosrubro_id: TIntegerField;
    tblArticulossubrubro_id: TIntegerField;
    tblArticulosdescripcion: TStringField;
    cdsArticulosrubro_id: TIntegerField;
    cdsArticulossubrubro_id: TIntegerField;
    cdsArticulosdescripcion: TStringField;
    cdsArticulosrubro: TStringField;
    cdsArticulossubrubro: TStringField;
    dsRubros: TDataSource;
    qryUpdatePrecios: TMyQuery;
    qryRubros: TMyTable;
    dspCategorias: TDataSetProvider;
    cdsCategorias: TClientDataSet;
    cdsVentasCliente: TStringField;
    cdsVentasPedido_Nro: TIntegerField;
    procedure cdsBPedidosNewRecord(DataSet: TDataSet);
    procedure DataModuleCreate(Sender: TObject);
    procedure tblPresupuestosCalcFields(DataSet: TDataSet);
    procedure cdsLineaCalcFields(DataSet: TDataSet);
    procedure cdsPedidosCalcFields(DataSet: TDataSet);
    procedure cdsPedidosNewRecord(DataSet: TDataSet);
    procedure cdsVentasCalcFields(DataSet: TDataSet);
    procedure cdsVentasNewRecord(DataSet: TDataSet);
    procedure tblPedidosBeforeDelete(DataSet: TDataSet);
  private
    { Private declarations }
  public
    { Public declarations }
    function GetNextID(AEntity: string): integer;
    procedure SetNextID(AEntity: string);
    procedure CopyTo(ASource, ADestination: TDataset);
    function FindId(ADataSet: TDataSet; AEntity: string; AId: integer): boolean;
    procedure CargarPedido(Id: integer; Header, Detail: TClientDataSet);
    function CalcularTotal(Id: integer): double;
  end;

var
  dm: Tdm;

implementation

{$R *.dfm}
uses IniFiles, Dialogs;

procedure Tdm.DataModuleCreate(Sender: TObject);
var
  appIni: TiniFile;
  iniServer, iniUser, iniPass: string;
  iniDB: string;
begin
   appIni := TIniFile.Create(ChangeFileExt('v3u','.ini')) ;
   try
     //if no last user return an empty string
     iniServer := appINI.ReadString('DBConn','Server','127.0.0.1') ;
     iniUser := appINI.ReadString('DBConn','User','root') ;
     iniPass := appINI.ReadString('DBConn','Pass','') ;
     iniDB := appINI.ReadString('DBConn','dbname','dbmillenium') ;
     //if no last date return todays date
     //LastDate := appINI.ReadDate('User', 'Date', Date) ;

//     Top := appINI.ReadInteger('Placement','Top', Top) ;
//     Left := appINI.ReadInteger('Placement','Left', Left);
//     Width := appINI.ReadInteger('Placement','Width', Width);
//     Height := appINI.ReadInteger('Placement','Height', Height);
   finally
     appINI.Free;
   end;
   cnxVM.Database:=iniDB;
   cnxVM.Server:=iniServer;
   cnxVM.Username:=iniUser;
   cnxVM.Password:=iniPass;
   try
    cnxVM.Open;
    cdsBPedidos.Open;
    cdsDetails.Open;
   except
    ShowMessage('Error de Conexion');
   end;
end;

function Tdm.CalcularTotal(Id: integer): double;
var
  atotal: double;
begin
  atotal:=0;
  cdsLineas.Open;
  cdsLineas.First;
  while not cdsLineas.Eof do
  begin
    atotal:=atotal+cdsLineas.FieldByName('subtotal').AsCurrency;
    cdsLineas.Next;
  end;
  result:=atotal;
end;


procedure Tdm.CargarPedido(Id: integer; Header, Detail: TClientDataSet);
begin
  Header.Close;
  Header.Open;
  Header.EmptyDataSet;
  Header.Insert;
  dm.CopyTo(tblPedidos,Header);
  Detail.CancelUpdates;
  Detail.Close;
  Detail.Open;
  Detail.EmptyDataSet;
  tbldetails.First;
  while not tblDetails.Eof do
  begin
    Detail.Insert;
    dm.CopyTo(tblDetails,Detail);
    Detail.Post;
    tblDetails.Next;
  end;
  //Header.FieldByName('monto').Value:=CalcularTotal(Header.FieldByName('id').AsInteger);
end;

procedure Tdm.cdsBPedidosNewRecord(DataSet: TDataSet);
begin
  Dataset.FieldByName('fecha_ingreso').Value:=Now;
  Dataset.FieldByName('fecha_requerido').Value:=Date+7;
  Dataset.FieldByName('estado_id').Value:=1;
  Dataset.FieldByName('nro').Value:=GetNextID('pedido_nro');
  Dataset.FieldByName('cliente_id').Value:=1;
end;

procedure Tdm.cdsLineaCalcFields(DataSet: TDataSet);
var
  Cnt, Base, Alto: integer;
  CntTotal, Precio: double;
begin
  with DataSet do
  begin
    Cnt := FieldByName('cantidad').AsInteger;
    Base:= FieldByName('base').AsInteger;
    Alto:= FieldByName('alto').AsInteger;
    CntTotal:= Base*Alto/1000000;
    FieldByName('CntTotal').Value:=CntTotal;
    Precio := FieldByName('Precio').AsCurrency;
    if FieldByName('Articulo_UM').AsString='Unidad' then
      FieldByName('subtotal').Value:=Cnt*CntTotal*Precio;
    if FieldByName('Articulo_UM').AsString='M2' then
      FieldByName('subtotal').Value:=CntTotal*Cnt*Precio;
    if FieldByName('Articulo_UM').AsString='M.L.' then
      FieldByName('subtotal').Value:=Base*Cnt*Precio;
  end;
end;

procedure Tdm.cdsPedidosCalcFields(DataSet: TDataSet);
begin
  Dataset.FieldByName('monto').Value:=CalcularTotal(Dataset.FieldByName('id').AsInteger);
end;

procedure Tdm.cdsPedidosNewRecord(DataSet: TDataSet);
begin
  Dataset.FieldByName('fecha_ingreso').Value:=Now;
  Dataset.FieldByName('fecha_requerido').Value:=Date+7;
  Dataset.FieldByName('estado_id').Value:=1;
  Dataset.FieldByName('nro').Value:=GetNextID('pedido_nro');
end;

procedure Tdm.cdsVentasCalcFields(DataSet: TDataSet);
begin
  Dataset.FieldByName('dcto_monto').Value:=cdsVPedidos.FieldByName('monto').AsFloat*(Dataset.FieldByName('dcto').AsFloat)/100;
  Dataset.FieldByName('total').Value:=cdsVPedidos.FieldByName('monto').AsFloat-Dataset.FieldByName('dcto_monto').AsFloat;
end;

procedure Tdm.cdsVentasNewRecord(DataSet: TDataSet);
begin
  Dataset.FieldByName('fecha').Value:=Now;
  Dataset.FieldByName('nro').Value:=GetNextID('venta_nro');
  Dataset.FieldByName('dcto').Value:=0;
//  Dataset.FieldByName('total').Value:=cdsPedidos.FieldByName('monto').Value*(1-Dataset.FieldByName('dcto').AsFloat);
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
      if AField.FieldName<>'id' then
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
const
  SELECT_ID = 'SELECT valor FROM vmconfig WHERE nombre = :pnombre';
begin
  qryNextID.Close;
  qryNextID.SQL.Text:=SELECT_ID;
  qryNextID.ParamByName('pnombre').Value:=AEntity;
  qryNextID.Prepared:=true;
  qryNextID.Open;
  if qryNextID.RecordCount>0 then
    Result:=qryNextID.FieldByName('valor').AsInteger
  else
    Result:=-1;
end;

procedure Tdm.SetNextID(AEntity: string);
const
  UPDATE_ID = 'UPDATE vmconfig SET valor = valor+1 WHERE nombre = :pnombre';
begin
  qryNextID.Close;
  qryNextID.SQL.Text:=UPDATE_ID;
  qryNextId.Prepared:=true;
  qryNextId.ParamByName('pnombre').Value:=AEntity;
  qryNextId.Execute;
end;

procedure Tdm.tblPedidosBeforeDelete(DataSet: TDataSet);
begin
  qryCleanDetail.ParamByName('pedido').Value:=Dataset.FieldByName('id').AsInteger;
  qryCleanDetail.Execute;
end;

procedure Tdm.tblPresupuestosCalcFields(DataSet: TDataSet);
begin
 // tblPresupuestos.FieldByName('Total').Value:=tblPresupuestos.FieldByName('Subtotal').Value*(1-tblPresupuestos.FieldByName('Descuento').Value);
end;

end.
