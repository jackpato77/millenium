object dm: Tdm
  OldCreateOrder = False
  OnCreate = DataModuleCreate
  Height = 556
  Width = 718
  object cdsArticulos: TClientDataSet
    Active = True
    Aggregates = <>
    FieldDefs = <
      item
        Name = 'id'
        DataType = ftInteger
      end
      item
        Name = 'nombre'
        DataType = ftString
        Size = 60
      end
      item
        Name = 'costo'
        DataType = ftFloat
      end
      item
        Name = 'um'
        DataType = ftString
        Size = 10
      end
      item
        Name = 'rubro_id'
        DataType = ftInteger
      end
      item
        Name = 'subrubro_id'
        DataType = ftInteger
      end
      item
        Name = 'descripcion'
        DataType = ftString
        Size = 240
      end>
    IndexDefs = <>
    Params = <>
    ProviderName = 'dspArticulos'
    StoreDefs = True
    Left = 104
    Top = 112
    object cdsArticulosid: TIntegerField
      FieldName = 'id'
      Origin = 'articulos.id'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
    end
    object cdsArticulosnombre: TStringField
      FieldName = 'nombre'
      Origin = 'articulos.nombre'
      Size = 60
    end
    object cdsArticuloscosto: TFloatField
      FieldName = 'costo'
      Origin = 'articulos.costo'
      currency = True
    end
    object cdsArticulosum: TStringField
      FieldName = 'um'
      Origin = 'articulos.um'
      Size = 10
    end
    object cdsArticulosrubro_id: TIntegerField
      FieldName = 'rubro_id'
      Origin = 'articulos.rubro_id'
    end
    object cdsArticulossubrubro_id: TIntegerField
      FieldName = 'subrubro_id'
      Origin = 'articulos.subrubro_id'
    end
    object cdsArticulosdescripcion: TStringField
      FieldName = 'descripcion'
      Origin = 'articulos.descripcion'
      Size = 240
    end
    object cdsArticulosrubro: TStringField
      FieldKind = fkLookup
      FieldName = 'rubro'
      LookupDataSet = cdsRubros
      LookupKeyFields = 'id'
      LookupResultField = 'nombre'
      KeyFields = 'rubro_id'
      Size = 30
      Lookup = True
    end
    object cdsArticulossubrubro: TStringField
      FieldKind = fkLookup
      FieldName = 'subrubro'
      LookupDataSet = cdsSubrubros
      LookupKeyFields = 'id'
      LookupResultField = 'nombre'
      KeyFields = 'subrubro_id'
      Size = 35
      Lookup = True
    end
  end
  object dspArticulos: TDataSetProvider
    DataSet = tblArticulos
    Left = 165
    Top = 112
  end
  object tblArticulos: TMyTable
    TableName = 'articulos'
    Connection = cnxVM
    Left = 40
    Top = 112
    object tblArticulosid: TIntegerField
      FieldName = 'id'
      Origin = 'articulos.id'
    end
    object tblArticulosnombre: TStringField
      FieldName = 'nombre'
      Origin = 'articulos.nombre'
      Size = 60
    end
    object tblArticuloscosto: TFloatField
      FieldName = 'costo'
      Origin = 'articulos.costo'
    end
    object tblArticulosum: TStringField
      FieldName = 'um'
      Origin = 'articulos.um'
      Size = 10
    end
    object tblArticulosrubro_id: TIntegerField
      FieldName = 'rubro_id'
      Origin = 'articulos.rubro_id'
    end
    object tblArticulossubrubro_id: TIntegerField
      FieldName = 'subrubro_id'
      Origin = 'articulos.subrubro_id'
    end
    object tblArticulosdescripcion: TStringField
      FieldName = 'descripcion'
      Origin = 'articulos.descripcion'
      Size = 240
    end
  end
  object cnxVM: TMyConnection
    Database = 'dbmillenium'
    Username = 'root'
    Server = '127.0.0.1'
    LoginPrompt = False
    Left = 40
    Top = 8
  end
  object tblVentas: TMyTable
    TableName = 'ventas'
    Connection = cnxVM
    Left = 40
    Top = 160
  end
  object tblDetails: TMyTable
    TableName = 'detalles'
    Connection = cnxVM
    Left = 40
    Top = 288
    ParamData = <
      item
        DataType = ftInteger
        Name = 'pedido_id'
        Value = 9
      end>
  end
  object dspDetalles: TDataSetProvider
    DataSet = tblDetails
    Left = 232
    Top = 288
  end
  object cdsDetails: TClientDataSet
    Active = True
    Aggregates = <
      item
        Active = True
        GroupingLevel = 1
        IndexName = 'PEDIDO'
        Visible = False
      end>
    AggregatesActive = True
    FieldDefs = <
      item
        Name = 'id'
        DataType = ftInteger
      end
      item
        Name = 'pedido_id'
        DataType = ftInteger
      end
      item
        Name = 'articulo_id'
        DataType = ftInteger
      end
      item
        Name = 'cantidad'
        DataType = ftInteger
      end
      item
        Name = 'base'
        DataType = ftInteger
      end
      item
        Name = 'alto'
        DataType = ftInteger
      end
      item
        Name = 'precio'
        DataType = ftFloat
      end
      item
        Name = 'estado'
        DataType = ftString
        Size = 1
      end>
    IndexDefs = <
      item
        Name = 'DEFAULT_ORDER'
      end
      item
        Name = 'PRIMARY_KEY'
        Fields = 'id'
        Options = [ixUnique]
      end
      item
        Name = 'CHANGEINDEX'
      end
      item
        Name = 'PEDIDO'
        Fields = 'pedido_id'
      end>
    IndexName = 'PEDIDO'
    MasterFields = 'id'
    MasterSource = dsBPedidos
    Params = <>
    ProviderName = 'dspDetalles'
    StoreDefs = True
    OnCalcFields = cdsLineaCalcFields
    Left = 166
    Top = 288
    object cdsDetailsid: TIntegerField
      FieldName = 'id'
      Origin = 'detalles.id'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
    end
    object cdsDetailspedido_id: TIntegerField
      FieldName = 'pedido_id'
      Origin = 'detalles.pedido_id'
    end
    object cdsDetailsarticulo_id: TIntegerField
      FieldName = 'articulo_id'
      Origin = 'detalles.articulo_id'
    end
    object cdsDetailscantidad: TIntegerField
      FieldName = 'cantidad'
      Origin = 'detalles.cantidad'
    end
    object cdsDetailsbase: TIntegerField
      FieldName = 'base'
      Origin = 'detalles.base'
    end
    object cdsDetailsalto: TIntegerField
      FieldName = 'alto'
      Origin = 'detalles.alto'
    end
    object cdsDetailsprecio: TFloatField
      FieldName = 'precio'
      Origin = 'detalles.precio'
    end
    object cdsDetailsestado: TStringField
      FieldName = 'estado'
      Origin = 'detalles.estado'
      Size = 1
    end
    object cdsDetailsarticulo_nombre: TStringField
      FieldKind = fkLookup
      FieldName = 'articulo_nombre'
      LookupDataSet = cdsArticulos
      LookupKeyFields = 'id'
      LookupResultField = 'nombre'
      KeyFields = 'articulo_id'
      Size = 80
      Lookup = True
    end
    object cdsDetailsarticulo_um: TStringField
      FieldKind = fkLookup
      FieldName = 'articulo_um'
      LookupDataSet = cdsArticulos
      LookupKeyFields = 'id'
      LookupResultField = 'um'
      KeyFields = 'articulo_id'
      Size = 5
      Lookup = True
    end
    object cdsDetailscnttotal: TFloatField
      FieldKind = fkCalculated
      FieldName = 'cnttotal'
      Calculated = True
    end
    object cdsDetailssubtotal: TCurrencyField
      FieldKind = fkCalculated
      FieldName = 'subtotal'
      Calculated = True
    end
    object cdsDetailstotal: TAggregateField
      FieldName = 'total'
      Visible = True
      Active = True
      currency = True
      Expression = 'SUM(cantidad*base*alto/1000/1000*precio)'
      GroupingLevel = 1
      IndexName = 'PEDIDO'
    end
  end
  object qrySearch: TMyQuery
    Connection = cnxVM
    Left = 168
    Top = 496
  end
  object qryNextID: TMyQuery
    SQLInsert.Strings = (
      'INSERT INTO vmconfig'
      '  (valor)'
      'VALUES'
      '  (:valor)')
    SQLDelete.Strings = (
      'DELETE FROM vmconfig'
      'WHERE'
      '  nombre = :Old_nombre')
    SQLUpdate.Strings = (
      'UPDATE vmconfig'
      'SET'
      '  valor = :valor'
      'WHERE'
      '  nombre = :Old_nombre')
    Connection = cnxVM
    SQL.Strings = (
      'select valor from vmconfig where nombre like :pnombre')
    Left = 32
    Top = 496
    ParamData = <
      item
        DataType = ftString
        Name = 'pnombre'
        ParamType = ptInputOutput
      end>
  end
  object cdsVentas: TClientDataSet
    Active = True
    Aggregates = <>
    FieldDefs = <
      item
        Name = 'id'
        DataType = ftInteger
      end
      item
        Name = 'nro'
        DataType = ftInteger
      end
      item
        Name = 'pedido_id'
        DataType = ftInteger
      end
      item
        Name = 'fecha'
        DataType = ftDateTime
      end
      item
        Name = 'dcto'
        DataType = ftFloat
      end
      item
        Name = 'total'
        DataType = ftFloat
      end
      item
        Name = 'tipo'
        DataType = ftString
        Size = 10
      end>
    IndexDefs = <>
    Params = <>
    ProviderName = 'dspVentas'
    StoreDefs = True
    OnCalcFields = cdsVentasCalcFields
    OnNewRecord = cdsVentasNewRecord
    Left = 104
    Top = 160
    object cdsVentasid: TIntegerField
      FieldName = 'id'
      Origin = 'ventas.id'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
    end
    object cdsVentasnro: TIntegerField
      FieldName = 'nro'
      Origin = 'ventas.nro'
      DisplayFormat = '000-00000'
    end
    object cdsVentaspedido_id: TIntegerField
      FieldName = 'pedido_id'
      Origin = 'ventas.pedido_id'
    end
    object cdsVentasfecha: TDateTimeField
      FieldName = 'fecha'
      Origin = 'ventas.fecha'
    end
    object cdsVentasdcto: TFloatField
      FieldName = 'dcto'
      Origin = 'ventas.dcto'
    end
    object cdsVentasdcto_monto: TFloatField
      FieldKind = fkCalculated
      FieldName = 'dcto_monto'
      currency = True
      Calculated = True
    end
    object cdsVentastotal: TFloatField
      FieldKind = fkCalculated
      FieldName = 'total'
      Origin = 'ventas.total'
      currency = True
      Calculated = True
    end
    object cdsVentastipo: TStringField
      FieldName = 'tipo'
      Origin = 'ventas.tipo'
      Size = 10
    end
    object cdsVentasCliente: TStringField
      FieldKind = fkLookup
      FieldName = 'Cliente'
      LookupDataSet = cdsVPedidos
      LookupKeyFields = 'id'
      LookupResultField = 'cliente_nombre'
      KeyFields = 'pedido_id'
      Size = 35
      Lookup = True
    end
    object cdsVentasPedido_Nro: TIntegerField
      FieldKind = fkLookup
      FieldName = 'Pedido_Nro'
      LookupDataSet = cdsVPedidos
      LookupKeyFields = 'id'
      LookupResultField = 'nro'
      KeyFields = 'pedido_id'
      DisplayFormat = '000-00000'
      Lookup = True
    end
  end
  object dspVentas: TDataSetProvider
    DataSet = tblVentas
    Left = 164
    Top = 160
  end
  object tblClientes: TMyTable
    TableName = 'clientes'
    Connection = cnxVM
    Left = 40
    Top = 64
  end
  object tblRubros: TMyTable
    TableName = 'rubros'
    Connection = cnxVM
    Left = 32
    Top = 392
  end
  object tblSubRubros: TMyTable
    TableName = 'subrubros'
    MasterSource = dsARubros
    Connection = cnxVM
    Left = 32
    Top = 440
  end
  object tblPrecios: TMyTable
    TableName = 'precios'
    Connection = cnxVM
    Left = 32
    Top = 344
  end
  object dsClientes: TDataSource
    DataSet = tblClientes
    Left = 104
    Top = 8
  end
  object dsArticulos: TDataSource
    DataSet = tblArticulos
    Left = 232
    Top = 128
  end
  object dspClientes: TDataSetProvider
    DataSet = tblClientes
    Left = 152
    Top = 64
  end
  object cdsClientes: TClientDataSet
    Active = True
    Aggregates = <>
    Params = <>
    ProviderName = 'dspClientes'
    Left = 104
    Top = 64
    object cdsClientesid: TIntegerField
      FieldName = 'id'
      Origin = 'clientes.id'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
    end
    object cdsClientesnombre: TStringField
      FieldName = 'nombre'
      Origin = 'clientes.nombre'
      Size = 100
    end
    object cdsClientescuit: TStringField
      FieldName = 'cuit'
      Origin = 'clientes.cuit'
      Size = 12
    end
    object cdsClientesdomicilio: TStringField
      FieldName = 'domicilio'
      Origin = 'clientes.domicilio'
      Size = 150
    end
    object cdsClientestelefono: TStringField
      FieldName = 'telefono'
      Origin = 'clientes.telefono'
      Size = 15
    end
    object cdsClientescondicion_iva: TStringField
      FieldName = 'condicion_iva'
      Origin = 'clientes.condicion_iva'
      Size = 15
    end
    object cdsClientescontacto: TStringField
      FieldName = 'contacto'
      Origin = 'clientes.contacto'
      Size = 50
    end
  end
  object qryCleanDetail: TMyQuery
    Connection = cnxVM
    SQL.Strings = (
      'delete from detalles where pedido_id= :pedido')
    Options.AutoPrepare = True
    Left = 96
    Top = 496
    ParamData = <
      item
        DataType = ftInteger
        Name = 'pedido'
        ParamType = ptInput
      end>
  end
  object qryArticulos: TMyQuery
    Connection = cnxVM
    SQL.Strings = (
      
        'SELECT a.id, a.nombre, a.um, a.costo, truncate(a.costo*(1+p.vcos' +
        'to1*p.vcosto2*p.vcosto3*p.vcosto4),4) precio'
      'FROM articulos a JOIN precios p ON a.id=p.id'
      'WHERE p.deleted is NULL')
    Left = 248
    Top = 496
    object qryArticulosid: TIntegerField
      FieldName = 'id'
      Origin = 'articulos.id'
    end
    object qryArticulosnombre: TStringField
      FieldName = 'nombre'
      Origin = 'articulos.nombre'
      Size = 60
    end
    object qryArticulosum: TStringField
      FieldName = 'um'
      Origin = 'articulos.um'
      Size = 10
    end
    object qryArticuloscosto: TFloatField
      FieldName = 'costo'
      Origin = 'articulos.costo'
      currency = True
    end
    object qryArticulosprecio: TFloatField
      FieldName = 'precio'
      Origin = '.precio'
      currency = True
    end
  end
  object cdsRubros: TClientDataSet
    Active = True
    Aggregates = <>
    Params = <>
    ProviderName = 'dspRubros'
    Left = 496
    Top = 168
  end
  object dspRubros: TDataSetProvider
    DataSet = tblRubros
    Left = 552
    Top = 168
  end
  object dspSubRubros: TDataSetProvider
    DataSet = tblSubRubros
    Left = 552
    Top = 232
  end
  object cdsSubrubros: TClientDataSet
    Active = True
    Aggregates = <>
    FieldDefs = <
      item
        Name = 'id'
        DataType = ftInteger
      end
      item
        Name = 'nombre'
        DataType = ftString
        Size = 150
      end
      item
        Name = 'rubro_id'
        DataType = ftInteger
      end>
    IndexDefs = <
      item
        Name = 'DEFAULT_ORDER'
      end
      item
        Name = 'PRIMARY_KEY'
        Fields = 'id'
        Options = [ixUnique]
      end
      item
        Name = 'CHANGEINDEX'
      end>
    Params = <>
    ProviderName = 'dspSubRubros'
    StoreDefs = True
    Left = 496
    Top = 232
  end
  object dsARubros: TDataSource
    DataSet = cdsRubros
    Left = 616
    Top = 168
  end
  object dsASubrubros: TDataSource
    DataSet = cdsSubrubros
    Left = 624
    Top = 232
  end
  object tblCajas: TMyTable
    TableName = 'cajas'
    Connection = cnxVM
    FilterSQL = 'fecha>=CURDATE()'
    Left = 376
    Top = 424
    object tblCajasconcepto: TStringField
      FieldKind = fkLookup
      FieldName = 'concepto'
      LookupKeyFields = 'idconcepto'
      LookupResultField = 'concepto'
      KeyFields = 'idconcepto'
      Size = 50
      Lookup = True
    end
    object tblCajasidcaja: TLargeintField
      AutoGenerateValue = arAutoInc
      FieldName = 'idcaja'
      Origin = 'cajas.idcaja'
    end
    object tblCajasfechahora: TDateTimeField
      FieldName = 'fechahora'
      Origin = 'cajas.fechahora'
    end
    object tblCajasfecha: TDateField
      FieldName = 'fecha'
      Origin = 'cajas.fecha'
    end
    object tblCajasidcliente: TIntegerField
      FieldName = 'idcliente'
      Origin = 'cajas.idcliente'
    end
    object tblCajasidconcepto: TIntegerField
      FieldName = 'idconcepto'
      Origin = 'cajas.idconcepto'
    end
    object tblCajasimporte: TFloatField
      FieldName = 'importe'
      Origin = 'cajas.importe'
      currency = True
    end
    object tblCajasidtipo: TIntegerField
      FieldName = 'idtipo'
      Origin = 'cajas.idtipo'
    end
    object tblCajasobservaciones: TStringField
      FieldName = 'observaciones'
      Origin = 'cajas.observaciones'
      Size = 255
    end
    object tblCajastipomov: TStringField
      FieldName = 'tipomov'
      Origin = 'cajas.tipomov'
      FixedChar = True
      Size = 1
    end
  end
  object cdsCajas: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'dspCajas'
    Left = 448
    Top = 424
    object cdsCajasfecha: TDateTimeField
      FieldName = 'fecha'
      Origin = 'cajas.fecha'
    end
    object cdsCajasidcliente: TIntegerField
      FieldName = 'idcliente'
      Origin = 'cajas.idcliente'
    end
    object cdsCajasidconcepto: TIntegerField
      FieldName = 'idconcepto'
      Origin = 'cajas.idconcepto'
    end
    object cdsCajasimporte: TFloatField
      FieldName = 'importe'
      Origin = 'cajas.importe'
      currency = True
    end
    object cdsCajasidtipo: TIntegerField
      FieldName = 'idtipo'
      Origin = 'cajas.idtipo'
    end
    object cdsCajasobservaciones: TStringField
      FieldName = 'observaciones'
      Origin = 'cajas.observaciones'
      Size = 255
    end
    object cdsCajastipomov: TStringField
      FieldName = 'tipomov'
      Origin = 'cajas.tipomov'
      FixedChar = True
      Size = 1
    end
    object cdsCajasdebe: TCurrencyField
      FieldKind = fkCalculated
      FieldName = 'debe'
      Calculated = True
    end
    object cdsCajashaber: TCurrencyField
      FieldKind = fkCalculated
      FieldName = 'haber'
      Calculated = True
    end
    object cdsCajasconcepto: TStringField
      FieldKind = fkLookup
      FieldName = 'concepto'
      LookupKeyFields = 'idconcepto'
      LookupResultField = 'concepto'
      KeyFields = 'idconcepto'
      Size = 45
      Lookup = True
    end
    object cdsCajasidcaja: TLargeintField
      FieldName = 'idcaja'
      Origin = 'cajas.idcaja'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
    end
  end
  object dspCajas: TDataSetProvider
    DataSet = tblCajas
    Left = 512
    Top = 424
  end
  object dsCajas: TDataSource
    AutoEdit = False
    DataSet = tblCajas
    Left = 576
    Top = 424
  end
  object qryCajaSaldo: TMyQuery
    Connection = cnxVM
    SQL.Strings = (
      'SELECT SUM(Importe) Total'
      ' FROM Cajas'
      'WHERE Fecha = :Fecha'
      'GROUP BY Fecha')
    Left = 640
    Top = 424
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'Fecha'
      end>
  end
  object tblPedidos: TMyTable
    TableName = 'pedidos'
    OrderFields = 'fecha DESC'
    Connection = cnxVM
    BeforeDelete = tblPedidosBeforeDelete
    Left = 40
    Top = 224
    object tblPedidosid: TIntegerField
      AutoGenerateValue = arAutoInc
      FieldName = 'id'
      Origin = 'pedidos.id'
    end
    object tblPedidosnro: TIntegerField
      FieldName = 'nro'
      Origin = 'pedidos.nro'
      DisplayFormat = '000-00000'
    end
    object tblPedidoscliente_id: TIntegerField
      FieldName = 'cliente_id'
      Origin = 'pedidos.cliente_id'
    end
    object tblPedidosfecha: TDateField
      FieldName = 'fecha'
      Origin = 'pedidos.fecha'
    end
    object tblPedidosfecha_ingreso: TDateTimeField
      FieldName = 'fecha_ingreso'
      Origin = 'pedidos.fecha_ingreso'
    end
    object tblPedidosfecha_requerido: TDateField
      FieldName = 'fecha_requerido'
      Origin = 'pedidos.fecha_requerido'
    end
    object tblPedidosestado_id: TIntegerField
      FieldName = 'estado_id'
      Origin = 'pedidos.estado_id'
    end
    object tblPedidoscomentario: TMemoField
      FieldName = 'comentario'
      Origin = 'pedidos.comentario'
      BlobType = ftMemo
    end
    object tblPedidosempleado_id: TIntegerField
      FieldName = 'empleado_id'
      Origin = 'pedidos.empleado_id'
    end
    object tblPedidosmonto: TFloatField
      FieldName = 'monto'
      Origin = 'pedidos.monto'
      currency = True
    end
    object tblPedidostipo: TStringField
      FieldName = 'tipo'
      Origin = 'pedidos.tipo'
    end
  end
  object dsPedidosClientes: TDataSource
    AutoEdit = False
    DataSet = tblClientes
    Left = 304
    Top = 128
  end
  object dsDetallesArticulos: TDataSource
    AutoEdit = False
    DataSet = cdsArticulos
    Left = 176
    Top = 344
  end
  object dsDetalles: TDataSource
    DataSet = tblDetails
    Left = 104
    Top = 288
  end
  object cdsLinea: TClientDataSet
    Active = True
    Aggregates = <>
    FieldDefs = <
      item
        Name = 'Articulo_id'
        DataType = ftInteger
      end
      item
        Name = 'Cantidad'
        DataType = ftInteger
      end
      item
        Name = 'Base'
        DataType = ftInteger
      end
      item
        Name = 'Alto'
        DataType = ftInteger
      end>
    IndexDefs = <>
    Params = <>
    StoreDefs = True
    OnCalcFields = cdsLineaCalcFields
    Left = 286
    Top = 288
    Data = {
      590000009619E0BD01000000180000000400000000000300000059000B417274
      6963756C6F5F696404000100000000000843616E746964616404000100000000
      000442617365040001000000000004416C746F04000100000000000000}
    object cdsLineaArticulo_id: TIntegerField
      FieldName = 'Articulo_id'
    end
    object cdsLineaArticulo_Nombre: TStringField
      FieldKind = fkLookup
      FieldName = 'Articulo_Nombre'
      LookupDataSet = cdsArticulos
      LookupKeyFields = 'id'
      LookupResultField = 'nombre'
      KeyFields = 'Articulo_id'
      Size = 80
      Lookup = True
    end
    object cdsLineaArticulo_UM: TStringField
      FieldKind = fkLookup
      FieldName = 'Articulo_UM'
      LookupDataSet = cdsArticulos
      LookupKeyFields = 'id'
      LookupResultField = 'um'
      KeyFields = 'Articulo_id'
      Size = 10
      Lookup = True
    end
    object cdsLineaArticulo_Precio: TCurrencyField
      FieldKind = fkLookup
      FieldName = 'Precio'
      LookupDataSet = cdsArticulos
      LookupKeyFields = 'id'
      LookupResultField = 'costo'
      KeyFields = 'Articulo_id'
      Lookup = True
    end
    object cdsLineaCantidad: TIntegerField
      DefaultExpression = '1'
      FieldName = 'Cantidad'
    end
    object cdsLineaBase: TIntegerField
      DefaultExpression = '1'
      FieldName = 'Base'
    end
    object cdsLineaAlto: TIntegerField
      DefaultExpression = '1'
      FieldName = 'Alto'
    end
    object cdsLineaCntTotal: TFloatField
      FieldKind = fkCalculated
      FieldName = 'CntTotal'
      Calculated = True
    end
    object cdsLineaSubtotal: TCurrencyField
      FieldKind = fkCalculated
      FieldName = 'Subtotal'
      Calculated = True
    end
  end
  object dsLinea: TDataSource
    DataSet = cdsLinea
    Left = 328
    Top = 288
  end
  object dsLineas: TDataSource
    DataSet = cdsLineas
    Left = 328
    Top = 352
  end
  object cdsLineas: TClientDataSet
    Active = True
    Aggregates = <>
    FieldDefs = <
      item
        Name = 'Articulo_id'
        DataType = ftInteger
      end
      item
        Name = 'Cantidad'
        DataType = ftInteger
      end
      item
        Name = 'Base'
        DataType = ftInteger
      end
      item
        Name = 'Alto'
        DataType = ftInteger
      end
      item
        Name = 'Precio'
        DataType = ftCurrency
      end>
    IndexDefs = <>
    Params = <>
    StoreDefs = True
    OnCalcFields = cdsLineaCalcFields
    Left = 277
    Top = 352
    Data = {
      7C0000009619E0BD0100000018000000050000000000030000007C000B417274
      6963756C6F5F696404000100000000000843616E746964616404000100000000
      000442617365040001000000000004416C746F04000100000000000650726563
      696F080004000000010007535542545950450200490006004D6F6E6579000000}
    object IntegerField1: TIntegerField
      FieldName = 'Articulo_id'
    end
    object cdsLineasArticulo_Nombre: TStringField
      FieldKind = fkLookup
      FieldName = 'Articulo_Nombre'
      LookupDataSet = cdsArticulos
      LookupKeyFields = 'id'
      LookupResultField = 'nombre'
      KeyFields = 'articulo_id'
      Size = 80
      Lookup = True
    end
    object cdsLineasArticulo_UM: TStringField
      FieldKind = fkLookup
      FieldName = 'Articulo_UM'
      LookupDataSet = cdsArticulos
      LookupKeyFields = 'id'
      LookupResultField = 'UM'
      KeyFields = 'articulo_id'
      Size = 5
      Lookup = True
    end
    object IntegerField4: TIntegerField
      DefaultExpression = '1'
      FieldName = 'Cantidad'
    end
    object IntegerField2: TIntegerField
      DefaultExpression = '1'
      FieldName = 'Base'
    end
    object IntegerField3: TIntegerField
      DefaultExpression = '1'
      FieldName = 'Alto'
    end
    object cdsLineasCntTotal: TFloatField
      FieldKind = fkCalculated
      FieldName = 'CntTotal'
      Calculated = True
    end
    object CurrencyField2: TCurrencyField
      FieldKind = fkCalculated
      FieldName = 'Subtotal'
      ReadOnly = True
      Calculated = True
    end
    object cdsLineasPrecio: TCurrencyField
      FieldName = 'Precio'
    end
  end
  object cdsPedidos: TClientDataSet
    Active = True
    Aggregates = <>
    FieldDefs = <
      item
        Name = 'id'
        DataType = ftInteger
      end
      item
        Name = 'nro'
        DataType = ftInteger
      end
      item
        Name = 'cliente_id'
        DataType = ftInteger
      end
      item
        Name = 'fecha'
        DataType = ftDate
      end
      item
        Name = 'fecha_requerido'
        DataType = ftDate
      end
      item
        Name = 'estado_id'
        DataType = ftString
        Size = 20
      end
      item
        Name = 'comentario'
        DataType = ftString
        Size = 100
      end
      item
        Name = 'empleado_id'
        DataType = ftInteger
      end
      item
        Name = 'tipo'
        DataType = ftString
        Size = 20
      end
      item
        Name = 'fecha_ingreso'
        DataType = ftDateTime
      end>
    IndexDefs = <>
    Params = <>
    StoreDefs = True
    OnCalcFields = cdsPedidosCalcFields
    OnNewRecord = cdsPedidosNewRecord
    Left = 166
    Top = 224
    Data = {
      EA0000009619E0BD01000000180000000A000000000003000000EA0002696404
      00010000000000036E726F04000100000000000A636C69656E74655F69640400
      01000000000005666563686104000600000000000F66656368615F7265717565
      7269646F04000600000000000965737461646F5F696401004900000001000557
      494454480200020014000A636F6D656E746172696F0100490000000100055749
      4454480200020064000B656D706C6561646F5F69640400010000000000047469
      706F01004900000001000557494454480200020014000D66656368615F696E67
      7265736F08000800000000000000}
    object cdsPedidosid: TIntegerField
      FieldName = 'id'
    end
    object cdsPedidosnro: TIntegerField
      FieldName = 'nro'
      DisplayFormat = '0000-000000'
    end
    object cdsPedidoscliente_id: TIntegerField
      FieldName = 'cliente_id'
    end
    object cdsPedidoscliente_nombre: TStringField
      FieldKind = fkLookup
      FieldName = 'cliente_nombre'
      LookupDataSet = tblClientes
      LookupKeyFields = 'id'
      LookupResultField = 'nombre'
      KeyFields = 'cliente_id'
      Size = 50
      Lookup = True
    end
    object cdsPedidoscliente_cuit: TStringField
      FieldKind = fkLookup
      FieldName = 'cliente_cuit'
      LookupDataSet = tblClientes
      LookupKeyFields = 'id'
      LookupResultField = 'cuit'
      KeyFields = 'cliente_id'
      Size = 15
      Lookup = True
    end
    object cdsPedidoscliente_domicilio: TStringField
      FieldKind = fkLookup
      FieldName = 'cliente_domicilio'
      LookupDataSet = tblClientes
      LookupKeyFields = 'id'
      LookupResultField = 'domicilio'
      KeyFields = 'cliente_id'
      Size = 80
      Lookup = True
    end
    object cdsPedidoscliente_telefono: TStringField
      FieldKind = fkLookup
      FieldName = 'cliente_telefono'
      LookupDataSet = tblClientes
      LookupKeyFields = 'id'
      LookupResultField = 'telefono'
      KeyFields = 'cliente_id'
      Lookup = True
    end
    object cdsPedidosfecha: TDateField
      FieldName = 'fecha'
    end
    object cdsPedidosfecha_requerido: TDateField
      FieldName = 'fecha_requerido'
    end
    object cdsPedidosestado: TStringField
      FieldName = 'estado_id'
    end
    object cdsPedidosforma_entrega: TStringField
      DisplayWidth = 200
      FieldName = 'comentario'
      Size = 100
    end
    object cdsPedidosempleado_id: TIntegerField
      FieldName = 'empleado_id'
    end
    object cdsPedidosmonto: TFloatField
      DisplayLabel = 'Total'
      FieldKind = fkCalculated
      FieldName = 'monto'
      currency = True
      Calculated = True
    end
    object cdsPedidostipo: TStringField
      FieldName = 'tipo'
    end
    object cdsPedidosestado2: TStringField
      FieldKind = fkLookup
      FieldName = 'estado'
      LookupDataSet = tblEstados
      LookupKeyFields = 'id'
      LookupResultField = 'nombre'
      KeyFields = 'estado_id'
      Size = 30
      Lookup = True
    end
    object cdsPedidosfecha_ingreso: TDateTimeField
      FieldName = 'fecha_ingreso'
    end
  end
  object dspPedidos: TDataSetProvider
    DataSet = tblPedidos
    Options = [poFetchDetailsOnDemand, poCascadeDeletes, poCascadeUpdates, poUseQuoteChar]
    Left = 232
    Top = 224
  end
  object dsPedidos: TDataSource
    DataSet = tblPedidos
    Left = 104
    Top = 224
  end
  object dsAPedidos: TDataSource
    DataSet = cdsPedidos
    Left = 296
    Top = 224
  end
  object tblEstados: TMyTable
    TableName = 'estados'
    Connection = cnxVM
    Left = 96
    Top = 440
  end
  object dsEstados: TDataSource
    DataSet = tblEstados
    Left = 152
    Top = 440
  end
  object cdsArticuloPrecios: TClientDataSet
    Aggregates = <>
    FieldDefs = <
      item
        Name = 'id'
        DataType = ftInteger
      end
      item
        Name = 'nombre'
        DataType = ftString
        Size = 60
      end
      item
        Name = 'costo'
        DataType = ftFloat
      end
      item
        Name = 'um'
        DataType = ftString
        Size = 10
      end
      item
        Name = 'rubro_id'
        DataType = ftInteger
      end
      item
        Name = 'subrubro_id'
        DataType = ftInteger
      end
      item
        Name = 'descripcion'
        DataType = ftString
        Size = 240
      end>
    IndexDefs = <>
    Params = <>
    ProviderName = 'dspArticulos'
    StoreDefs = True
    Left = 232
    Top = 80
    object cdsArticuloPreciosid: TIntegerField
      FieldName = 'id'
    end
    object cdsArticuloPreciosnombre: TStringField
      FieldName = 'nombre'
      Size = 60
    end
    object cdsArticuloPreciosum: TStringField
      FieldName = 'um'
      Size = 10
    end
    object cdsArticuloPrecioscosto: TFloatField
      FieldName = 'costo'
    end
  end
  object dsPrecios: TDataSource
    DataSet = qryArticulos
    Left = 320
    Top = 496
  end
  object dsAVentas: TDataSource
    DataSet = cdsVentas
    Left = 264
    Top = 168
  end
  object dsDetails: TDataSource
    DataSet = cdsDetails
    Left = 392
    Top = 288
  end
  object dsVPedidos: TDataSource
    AutoEdit = False
    DataSet = cdsVPedidos
    Left = 616
    Top = 304
  end
  object dsVLineas: TDataSource
    AutoEdit = False
    DataSet = cdsVLineas
    Left = 616
    Top = 352
  end
  object pedidos: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'dspPedidos'
    Left = 360
    Top = 224
    object pedidosid: TIntegerField
      FieldName = 'id'
    end
    object pedidosnro: TIntegerField
      FieldName = 'nro'
    end
    object pedidoscliente_id: TIntegerField
      FieldName = 'cliente_id'
    end
    object pedidosfecha: TDateField
      FieldName = 'fecha'
    end
    object pedidosfecha_ingreso: TDateTimeField
      FieldName = 'fecha_ingreso'
    end
    object pedidosfecha_requerido: TDateField
      FieldName = 'fecha_requerido'
    end
    object pedidosestado_id: TIntegerField
      FieldName = 'estado_id'
    end
    object pedidoscomentario: TMemoField
      FieldName = 'comentario'
      BlobType = ftMemo
    end
    object pedidosempleado_id: TIntegerField
      FieldName = 'empleado_id'
    end
    object pedidosmonto: TFloatField
      FieldName = 'monto'
    end
    object pedidostipo: TStringField
      FieldName = 'tipo'
    end
    object pedidoscliente_nombre: TStringField
      FieldName = 'cliente_nombre'
      ReadOnly = True
      Size = 100
    end
    object pedidoscliente_cuit: TStringField
      FieldName = 'cliente_cuit'
      ReadOnly = True
      Size = 18
    end
    object pedidoscliente_domicilio: TStringField
      FieldName = 'cliente_domicilio'
      ReadOnly = True
      Size = 150
    end
    object pedidoscliente_telefono: TStringField
      FieldName = 'cliente_telefono'
      ReadOnly = True
      Size = 15
    end
    object pedidosestado: TStringField
      FieldName = 'estado'
      ReadOnly = True
      Size = 15
    end
    object pedidoscdsDetails: TDataSetField
      FieldName = 'cdsDetails'
    end
    object pedidostblDetails: TDataSetField
      FieldName = 'tblDetails'
    end
  end
  object cdsVPedidos: TClientDataSet
    Active = True
    Aggregates = <>
    FieldDefs = <
      item
        Name = 'id'
        DataType = ftInteger
      end
      item
        Name = 'nro'
        DataType = ftInteger
      end
      item
        Name = 'cliente_id'
        DataType = ftInteger
      end
      item
        Name = 'fecha'
        DataType = ftDate
      end
      item
        Name = 'fecha_ingreso'
        DataType = ftDateTime
      end
      item
        Name = 'fecha_requerido'
        DataType = ftDate
      end
      item
        Name = 'estado_id'
        DataType = ftInteger
      end
      item
        Name = 'comentario'
        DataType = ftMemo
      end
      item
        Name = 'empleado_id'
        DataType = ftInteger
      end
      item
        Name = 'monto'
        DataType = ftFloat
      end
      item
        Name = 'tipo'
        DataType = ftString
        Size = 20
      end>
    IndexDefs = <
      item
        Name = 'DEFAULT_ORDER'
        DescFields = 'fecha'
        Fields = 'fecha;id'
        Options = [ixUnique]
      end
      item
        Name = 'PRIMARY_KEY'
        Fields = 'id'
        Options = [ixUnique]
      end
      item
        Name = 'CHANGEINDEX'
      end>
    IndexFieldNames = 'nro'
    Params = <>
    ProviderName = 'dspPedidos'
    StoreDefs = True
    Left = 552
    Top = 304
    object cdsVPedidosid: TIntegerField
      FieldName = 'id'
      Origin = 'pedidos.id'
    end
    object cdsVPedidosnro: TIntegerField
      FieldName = 'nro'
      Origin = 'pedidos.nro'
    end
    object cdsVPedidoscliente_id: TIntegerField
      FieldName = 'cliente_id'
      Origin = 'pedidos.cliente_id'
    end
    object cdsVPedidosfecha: TDateField
      FieldName = 'fecha'
      Origin = 'pedidos.fecha'
    end
    object cdsVPedidosfecha_ingreso: TDateTimeField
      FieldName = 'fecha_ingreso'
      Origin = 'pedidos.fecha_ingreso'
    end
    object cdsVPedidosfecha_requerido: TDateField
      FieldName = 'fecha_requerido'
      Origin = 'pedidos.fecha_requerido'
    end
    object cdsVPedidosestado_id: TIntegerField
      FieldName = 'estado_id'
      Origin = 'pedidos.estado_id'
    end
    object cdsVPedidoscomentario: TMemoField
      FieldName = 'comentario'
      Origin = 'pedidos.comentario'
      BlobType = ftMemo
    end
    object cdsVPedidosempleado_id: TIntegerField
      FieldName = 'empleado_id'
      Origin = 'pedidos.empleado_id'
    end
    object cdsVPedidosmonto: TFloatField
      FieldName = 'monto'
      Origin = 'pedidos.monto'
      currency = True
    end
    object cdsVPedidostipo: TStringField
      FieldName = 'tipo'
      Origin = 'pedidos.tipo'
    end
    object cdsVPedidoscliente_nombre: TStringField
      FieldKind = fkLookup
      FieldName = 'cliente_nombre'
      LookupDataSet = cdsClientes
      LookupKeyFields = 'id'
      LookupResultField = 'nombre'
      KeyFields = 'cliente_id'
      Size = 50
      Lookup = True
    end
    object cdsVPedidoscliente_domicilio: TStringField
      FieldKind = fkLookup
      FieldName = 'cliente_domicilio'
      LookupDataSet = cdsClientes
      LookupKeyFields = 'id'
      LookupResultField = 'domicilio'
      KeyFields = 'cliente_id'
      Size = 80
      Lookup = True
    end
    object cdsVPedidoscliente_cuit: TStringField
      FieldKind = fkLookup
      FieldName = 'cliente_cuit'
      LookupDataSet = cdsClientes
      LookupKeyFields = 'id'
      LookupResultField = 'cuit'
      KeyFields = 'cliente_id'
      Lookup = True
    end
    object cdsVPedidoscliente_telefono: TStringField
      FieldKind = fkLookup
      FieldName = 'cliente_telefono'
      LookupDataSet = cdsClientes
      LookupKeyFields = 'id'
      LookupResultField = 'telefono'
      KeyFields = 'cliente_id'
      Size = 15
      Lookup = True
    end
  end
  object cdsVLineas: TClientDataSet
    Active = True
    Aggregates = <>
    FieldDefs = <
      item
        Name = 'id'
        DataType = ftInteger
      end
      item
        Name = 'pedido_id'
        DataType = ftInteger
      end
      item
        Name = 'articulo_id'
        DataType = ftInteger
      end
      item
        Name = 'cantidad'
        DataType = ftInteger
      end
      item
        Name = 'base'
        DataType = ftInteger
      end
      item
        Name = 'alto'
        DataType = ftInteger
      end
      item
        Name = 'precio'
        DataType = ftFloat
      end
      item
        Name = 'estado'
        DataType = ftString
        Size = 1
      end>
    IndexDefs = <>
    IndexFieldNames = 'pedido_id'
    MasterFields = 'id'
    MasterSource = dsVPedidos
    PacketRecords = 0
    Params = <>
    ProviderName = 'dspDetalles'
    StoreDefs = True
    OnCalcFields = cdsLineaCalcFields
    Left = 560
    Top = 352
    object cdsVLineasid: TIntegerField
      FieldName = 'id'
      Origin = 'detalles.id'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
    end
    object cdsVLineaspedido_id: TIntegerField
      FieldName = 'pedido_id'
      Origin = 'detalles.pedido_id'
    end
    object cdsVLineasarticulo_id: TIntegerField
      FieldName = 'articulo_id'
      Origin = 'detalles.articulo_id'
    end
    object cdsVLineascantidad: TIntegerField
      FieldName = 'cantidad'
      Origin = 'detalles.cantidad'
    end
    object cdsVLineasbase: TIntegerField
      FieldName = 'base'
      Origin = 'detalles.base'
    end
    object cdsVLineasalto: TIntegerField
      FieldName = 'alto'
      Origin = 'detalles.alto'
    end
    object cdsVLineasprecio: TFloatField
      FieldName = 'precio'
      Origin = 'detalles.precio'
      currency = True
    end
    object cdsVLineasestado: TStringField
      FieldName = 'estado'
      Origin = 'detalles.estado'
      Size = 1
    end
    object cdsVLineasarticulo_nombre: TStringField
      FieldKind = fkLookup
      FieldName = 'articulo_nombre'
      LookupDataSet = cdsArticulos
      LookupKeyFields = 'id'
      LookupResultField = 'nombre'
      KeyFields = 'articulo_id'
      Size = 80
      Lookup = True
    end
    object cdsVLineasarticulo_um: TStringField
      FieldKind = fkLookup
      FieldName = 'articulo_um'
      LookupDataSet = cdsArticulos
      LookupKeyFields = 'id'
      LookupResultField = 'um'
      KeyFields = 'articulo_id'
      Size = 5
      Lookup = True
    end
    object cdsVLineasCntTotal: TFloatField
      FieldKind = fkCalculated
      FieldName = 'CntTotal'
      Calculated = True
    end
    object cdsVLineassubtotal: TCurrencyField
      FieldKind = fkCalculated
      FieldName = 'subtotal'
      Calculated = True
    end
  end
  object cdsBPedidos: TClientDataSet
    Active = True
    Aggregates = <>
    FieldDefs = <
      item
        Name = 'id'
        DataType = ftInteger
      end
      item
        Name = 'nro'
        DataType = ftInteger
      end
      item
        Name = 'cliente_id'
        DataType = ftInteger
      end
      item
        Name = 'fecha'
        DataType = ftDate
      end
      item
        Name = 'fecha_ingreso'
        DataType = ftDateTime
      end
      item
        Name = 'fecha_requerido'
        DataType = ftDate
      end
      item
        Name = 'estado_id'
        DataType = ftInteger
      end
      item
        Name = 'comentario'
        DataType = ftMemo
      end
      item
        Name = 'empleado_id'
        DataType = ftInteger
      end
      item
        Name = 'monto'
        DataType = ftFloat
      end
      item
        Name = 'tipo'
        DataType = ftString
        Size = 20
      end>
    IndexDefs = <>
    Params = <>
    ProviderName = 'dspPedidos'
    StoreDefs = True
    OnNewRecord = cdsBPedidosNewRecord
    Left = 414
    Top = 224
    object IntegerField5: TIntegerField
      FieldName = 'id'
      Origin = 'pedidos.id'
    end
    object IntegerField6: TIntegerField
      FieldName = 'nro'
      Origin = 'pedidos.nro'
      DisplayFormat = '0000-000000'
    end
    object IntegerField7: TIntegerField
      FieldName = 'cliente_id'
      Origin = 'pedidos.cliente_id'
    end
    object StringField1: TStringField
      FieldKind = fkLookup
      FieldName = 'cliente_nombre'
      LookupDataSet = tblClientes
      LookupKeyFields = 'id'
      LookupResultField = 'nombre'
      KeyFields = 'cliente_id'
      Size = 50
      Lookup = True
    end
    object StringField2: TStringField
      FieldKind = fkLookup
      FieldName = 'cliente_cuit'
      LookupDataSet = tblClientes
      LookupKeyFields = 'id'
      LookupResultField = 'cuit'
      KeyFields = 'cliente_id'
      Size = 15
      Lookup = True
    end
    object StringField3: TStringField
      FieldKind = fkLookup
      FieldName = 'cliente_domicilio'
      LookupDataSet = tblClientes
      LookupKeyFields = 'id'
      LookupResultField = 'domicilio'
      KeyFields = 'cliente_id'
      Size = 80
      Lookup = True
    end
    object StringField4: TStringField
      FieldKind = fkLookup
      FieldName = 'cliente_telefono'
      LookupDataSet = tblClientes
      LookupKeyFields = 'id'
      LookupResultField = 'telefono'
      KeyFields = 'cliente_id'
      Lookup = True
    end
    object DateField1: TDateField
      FieldName = 'fecha'
      Origin = 'pedidos.fecha'
    end
    object DateField2: TDateField
      FieldName = 'fecha_requerido'
      Origin = 'pedidos.fecha_requerido'
    end
    object IntegerField8: TIntegerField
      FieldName = 'empleado_id'
      Origin = 'pedidos.empleado_id'
    end
    object FloatField1: TFloatField
      DisplayLabel = 'Total'
      FieldName = 'monto'
      Origin = 'pedidos.monto'
      currency = True
    end
    object StringField7: TStringField
      FieldName = 'tipo'
      Origin = 'pedidos.tipo'
    end
    object StringField8: TStringField
      FieldKind = fkLookup
      FieldName = 'estado'
      LookupDataSet = tblEstados
      LookupKeyFields = 'id'
      LookupResultField = 'nombre'
      KeyFields = 'estado_id'
      Size = 30
      Lookup = True
    end
    object DateTimeField1: TDateTimeField
      FieldName = 'fecha_ingreso'
      Origin = 'pedidos.fecha_ingreso'
    end
    object cdsBPedidosestado_id: TIntegerField
      FieldName = 'estado_id'
      Origin = 'pedidos.estado_id'
    end
    object cdsBPedidoscomentario: TMemoField
      FieldName = 'comentario'
      Origin = 'pedidos.comentario'
      BlobType = ftMemo
    end
  end
  object dsBPedidos: TDataSource
    DataSet = cdsBPedidos
    Left = 416
    Top = 168
  end
  object dsRubros: TDataSource
    DataSet = qryRubros
    Left = 584
    Top = 80
  end
  object qryUpdatePrecios: TMyQuery
    Connection = cnxVM
    SQL.Strings = (
      'UPDATE articulos'
      'SET costo = costo * :pcosto,'
      'vcosto1 = :pvcosto1,'
      'vcosto2 = :pvcosto2,'
      'vcosto3 = :pvcosto3,'
      'vcosto4 = :pvcosto4,'
      'WHERE idrubro = :pidrubro'
      'AND idsubrubro = :pidsubrubro'
      'AND idarticulo BETWEEN :piddesde AND :pidhasta')
    Left = 472
    Top = 360
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'pcosto'
      end
      item
        DataType = ftUnknown
        Name = 'pvcosto1'
      end
      item
        DataType = ftUnknown
        Name = 'pvcosto2'
      end
      item
        DataType = ftUnknown
        Name = 'pvcosto3'
      end
      item
        DataType = ftUnknown
        Name = 'pvcosto4'
      end
      item
        DataType = ftUnknown
        Name = 'pidrubro'
      end
      item
        DataType = ftUnknown
        Name = 'pidsubrubro'
      end
      item
        DataType = ftUnknown
        Name = 'piddesde'
      end
      item
        DataType = ftUnknown
        Name = 'pidhasta'
      end>
  end
  object qryRubros: TMyTable
    TableName = 'categorias'
    OrderFields = 'id'
    Connection = cnxVM
    Left = 448
    Top = 80
  end
  object dspCategorias: TDataSetProvider
    DataSet = qryRubros
    Left = 512
    Top = 40
  end
  object cdsCategorias: TClientDataSet
    Active = True
    Aggregates = <>
    FieldDefs = <
      item
        Name = 'id'
        DataType = ftInteger
      end
      item
        Name = 'nombre'
        DataType = ftString
        Size = 50
      end
      item
        Name = 'parent'
        DataType = ftInteger
      end>
    IndexDefs = <>
    Params = <>
    ProviderName = 'dspCategorias'
    StoreDefs = True
    Left = 520
    Top = 88
  end
end
