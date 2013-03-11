object dm: Tdm
  OldCreateOrder = False
  Height = 556
  Width = 718
  object cdsArticulos: TClientDataSet
    Active = True
    Aggregates = <>
    Params = <>
    ProviderName = 'dspArticulos'
    Left = 104
    Top = 112
  end
  object dspArticulos: TDataSetProvider
    DataSet = tblArticulos
    Left = 160
    Top = 112
  end
  object tblArticulos: TMyTable
    TableName = 'articulos'
    Connection = cnxVM
    OnCalcFields = tblArticulosCalcFields
    Left = 40
    Top = 112
    object tblArticulosidarticulo: TIntegerField
      Tag = 40
      AutoGenerateValue = arAutoInc
      FieldName = 'idarticulo'
      Origin = 'articulos.idarticulo'
    end
    object tblArticulosdenominacion: TStringField
      Tag = 40
      FieldName = 'denominacion'
      Origin = 'articulos.denominacion'
      Size = 250
    end
    object tblArticulosumcompra: TStringField
      Tag = 40
      FieldName = 'umcompra'
      Origin = 'articulos.umcompra'
      Size = 15
    end
    object tblArticuloscosto: TFloatField
      Tag = 40
      FieldName = 'costo'
      Origin = 'articulos.costo'
      currency = True
    end
    object tblArticulosidrubro: TIntegerField
      Tag = 40
      FieldName = 'idrubro'
      Origin = 'articulos.idrubro'
    end
    object tblArticulosidsubrubro: TIntegerField
      Tag = 40
      FieldName = 'idsubrubro'
      Origin = 'articulos.idsubrubro'
    end
    object tblArticulosvcosto1: TFloatField
      Tag = 40
      FieldName = 'vcosto1'
      Origin = 'articulos.vcosto1'
    end
    object tblArticulosvcosto2: TFloatField
      Tag = 40
      FieldName = 'vcosto2'
      Origin = 'articulos.vcosto2'
    end
    object tblArticulosvcosto3: TFloatField
      Tag = 40
      FieldName = 'vcosto3'
      Origin = 'articulos.vcosto3'
    end
    object tblArticulosvcosto4: TFloatField
      Tag = 40
      FieldName = 'vcosto4'
      Origin = 'articulos.vcosto4'
    end
    object tblArticulosprecio: TCurrencyField
      Tag = 40
      FieldKind = fkCalculated
      FieldName = 'precio'
      Calculated = True
    end
    object tblArticulosRubro: TStringField
      Tag = 40
      FieldKind = fkLookup
      FieldName = 'Rubro'
      LookupDataSet = qryRubros
      LookupKeyFields = 'idrubro'
      LookupResultField = 'Rubro'
      KeyFields = 'idrubro'
      Size = 45
      Lookup = True
    end
    object tblArticulosSubRubro: TStringField
      Tag = 40
      FieldKind = fkLookup
      FieldName = 'SubRubro'
      LookupDataSet = tblSubRubros
      LookupKeyFields = 'idsubrubro'
      LookupResultField = 'SubRubro'
      KeyFields = 'idsubrubro'
      Size = 50
      Lookup = True
    end
  end
  object cnxVM: TMyConnection
    Database = 'dbmillenium'
    Username = 'root'
    Password = 'gabiru22'
    Server = '127.0.0.1'
    Connected = True
    LoginPrompt = False
    Left = 40
    Top = 8
  end
  object tblVentas: TMyTable
    TableName = 'ventas'
    Connection = cnxVM
    OnCalcFields = tblVentasCalcFields
    Left = 40
    Top = 160
    object tblVentasidventa: TIntegerField
      AutoGenerateValue = arAutoInc
      FieldName = 'idventa'
      Origin = 'ventas.idventa'
    end
    object tblVentasfecha: TDateTimeField
      DefaultExpression = 'Date'
      FieldName = 'fecha'
      Origin = 'ventas.fecha'
    end
    object tblVentasidcliente: TIntegerField
      FieldName = 'idcliente'
      Origin = 'ventas.idcliente'
    end
    object tblVentasidtipopago: TIntegerField
      FieldName = 'idtipopago'
      Origin = 'ventas.idtipopago'
    end
    object tblVentasdescuento: TFloatField
      FieldName = 'descuento'
      Origin = 'ventas.descuento'
    end
    object tblVentassubtotal: TFloatField
      FieldName = 'subtotal'
      Origin = 'ventas.subtotal'
    end
    object tblVentasobservaciones: TStringField
      FieldName = 'observaciones'
      Origin = 'ventas.observaciones'
      Size = 255
    end
    object tblVentastipo: TStringField
      FieldName = 'tipo'
      Origin = 'ventas.tipo'
      Size = 5
    end
    object tblVentasTotal: TCurrencyField
      FieldKind = fkCalculated
      FieldName = 'Total'
      Calculated = True
    end
  end
  object tblDetails: TMyTable
    TableName = 'lineas'
    Connection = cnxVM
    Left = 40
    Top = 288
    object tblDetailsidlinea: TIntegerField
      AutoGenerateValue = arAutoInc
      FieldName = 'idlinea'
      Origin = 'lineas.idlinea'
    end
    object tblDetailsidmaster: TIntegerField
      FieldName = 'idmaster'
      Origin = 'lineas.idmaster'
    end
    object tblDetailsmaster: TStringField
      FieldName = 'master'
      Origin = 'lineas.master'
      Size = 15
    end
    object tblDetailsidarticulo: TIntegerField
      FieldName = 'idarticulo'
      Origin = 'lineas.idarticulo'
    end
    object tblDetailsprecio: TFloatField
      FieldName = 'precio'
      Origin = 'lineas.precio'
    end
    object tblDetailscantidad: TIntegerField
      FieldName = 'cantidad'
      Origin = 'lineas.cantidad'
    end
    object tblDetailsalto: TFloatField
      FieldName = 'alto'
      Origin = 'lineas.alto'
    end
    object tblDetailsancho: TFloatField
      FieldName = 'base'
      Origin = 'lineas.base'
    end
  end
  object dspDetalles: TDataSetProvider
    DataSet = tblDetails
    Left = 160
    Top = 288
  end
  object cdsDetails: TClientDataSet
    Active = True
    Aggregates = <>
    FieldDefs = <
      item
        Name = 'idlinea'
        DataType = ftInteger
      end
      item
        Name = 'idmaster'
        DataType = ftInteger
      end
      item
        Name = 'master'
        DataType = ftString
        Size = 15
      end
      item
        Name = 'idarticulo'
        DataType = ftInteger
      end
      item
        Name = 'precio'
        DataType = ftFloat
      end
      item
        Name = 'cantidad'
        DataType = ftInteger
      end
      item
        Name = 'alto'
        DataType = ftFloat
      end
      item
        Name = 'base'
        DataType = ftFloat
      end>
    IndexDefs = <
      item
        Name = 'DEFAULT_ORDER'
      end
      item
        Name = 'PRIMARY_KEY'
        Fields = 'idvdetalle'
        Options = [ixUnique]
      end
      item
        Name = 'CHANGEINDEX'
      end
      item
        Name = 'IDX_VENTA'
        Fields = 'idventa'
      end>
    Params = <>
    ProviderName = 'dspDetalles'
    StoreDefs = True
    AfterPost = cdsDetailsAfterPost
    OnCalcFields = cdsDetailsCalcFields
    OnNewRecord = cdsDetailsNewRecord
    Left = 102
    Top = 288
    object cdsDetailsidlinea: TIntegerField
      FieldName = 'idlinea'
      Origin = 'lineas.idlinea'
    end
    object cdsDetailsidmaster: TIntegerField
      FieldName = 'idmaster'
      Origin = 'lineas.idmaster'
    end
    object cdsDetailsmaster: TStringField
      FieldName = 'master'
      Origin = 'lineas.master'
      Size = 15
    end
    object cdsDetailsidarticulo: TIntegerField
      FieldName = 'idarticulo'
      Origin = 'lineas.idarticulo'
    end
    object cdsDetailsprecio: TFloatField
      FieldName = 'precio'
      Origin = 'lineas.precio'
    end
    object cdsDetailscantidad: TIntegerField
      FieldName = 'cantidad'
      Origin = 'lineas.cantidad'
    end
    object cdsDetailsalto: TFloatField
      FieldName = 'alto'
      Origin = 'lineas.alto'
    end
    object cdsDetailsbase: TFloatField
      FieldName = 'base'
      Origin = 'lineas.base'
    end
  end
  object qrySearch: TMyQuery
    Connection = cnxVM
    Left = 232
    Top = 16
  end
  object cdsAux: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'dspDetalles'
    OnCalcFields = cdsAuxCalcFields
    Left = 206
    Top = 288
    object IntegerField1: TIntegerField
      FieldName = 'idvdetalle'
      Origin = 'vdetalles.idvdetalle'
    end
    object IntegerField2: TIntegerField
      FieldName = 'idventa'
      Origin = 'vdetalles.idventa'
    end
    object IntegerField3: TIntegerField
      FieldName = 'idarticulo'
      Origin = 'vdetalles.idarticulo'
    end
    object StringField1: TStringField
      FieldKind = fkLookup
      FieldName = 'ArticuloDenominacion'
      LookupDataSet = tblArticulos
      LookupKeyFields = 'idarticulo'
      LookupResultField = 'denominacion'
      KeyFields = 'idarticulo'
      Size = 30
      Lookup = True
    end
    object StringField2: TStringField
      FieldKind = fkLookup
      FieldName = 'ArticuloUMedida'
      LookupDataSet = tblArticulos
      LookupKeyFields = 'idarticulo'
      LookupResultField = 'umcompra'
      KeyFields = 'idarticulo'
      Size = 5
      Lookup = True
    end
    object cdsAuxArticuloPrecio: TCurrencyField
      FieldKind = fkLookup
      FieldName = 'ArticuloPrecio'
      LookupDataSet = tblArticulos
      LookupKeyFields = 'idarticulo'
      LookupResultField = 'costo'
      KeyFields = 'idarticulo'
      Lookup = True
    end
    object cdsAuxCantidad: TIntegerField
      FieldName = 'cantidad'
      Origin = 'vdetalles.cantidad'
    end
    object FloatField1: TFloatField
      FieldName = 'precio'
      Origin = 'vdetalles.precio'
    end
    object cdsAuxAlto: TFloatField
      FieldName = 'alto'
      Origin = 'vdetalles.alto'
    end
    object cdsAuxAncho: TFloatField
      FieldName = 'ancho'
      Origin = 'vdetalles.ancho'
    end
    object cdsAuxCntTotal: TFloatField
      FieldKind = fkInternalCalc
      FieldName = 'CntTotal'
    end
    object cdsAuxSubTotal: TCurrencyField
      FieldKind = fkInternalCalc
      FieldName = 'Subtotal'
    end
  end
  object qryNextID: TMyQuery
    Connection = cnxVM
    SQL.Strings = (
      'select value from mmentities where name like :pname')
    Left = 344
    Top = 16
    ParamData = <
      item
        DataType = ftString
        Name = 'pname'
        ParamType = ptInput
        Value = 'rubros'
      end>
  end
  object cdsVentas: TClientDataSet
    Active = True
    Aggregates = <>
    FieldDefs = <
      item
        Name = 'idventa'
        DataType = ftInteger
      end
      item
        Name = 'fecha'
        DataType = ftDateTime
      end
      item
        Name = 'idcliente'
        DataType = ftInteger
      end
      item
        Name = 'idtipopago'
        DataType = ftInteger
      end
      item
        Name = 'descuento'
        DataType = ftFloat
      end
      item
        Name = 'subtotal'
        DataType = ftFloat
      end
      item
        Name = 'observaciones'
        DataType = ftString
        Size = 255
      end
      item
        Name = 'tipo'
        DataType = ftString
        Size = 5
      end
      item
        Name = 'Total'
        Attributes = [faReadonly]
        DataType = ftCurrency
      end>
    IndexDefs = <>
    Params = <>
    ProviderName = 'dspVentas'
    StoreDefs = True
    OnCalcFields = tblVentasCalcFields
    OnNewRecord = cdsVentasNewRecord
    Left = 104
    Top = 160
    object cdsVentasidventa: TIntegerField
      FieldName = 'idventa'
      Origin = 'ventas.idventa'
    end
    object cdsVentasfecha: TDateTimeField
      FieldName = 'fecha'
      Origin = 'ventas.fecha'
    end
    object cdsVentasidcliente: TIntegerField
      FieldName = 'idcliente'
      Origin = 'ventas.idcliente'
    end
    object cdsVentasidtipopago: TIntegerField
      FieldName = 'idtipopago'
      Origin = 'ventas.idtipopago'
    end
    object cdsVentasdescuento: TFloatField
      FieldName = 'descuento'
      Origin = 'ventas.descuento'
    end
    object cdsVentassubtotal: TFloatField
      FieldName = 'subtotal'
      Origin = 'ventas.subtotal'
    end
    object cdsVentasobservaciones: TStringField
      FieldName = 'observaciones'
      Origin = 'ventas.observaciones'
      Size = 255
    end
    object cdsVentastipo: TStringField
      FieldName = 'tipo'
      Origin = 'ventas.tipo'
      Size = 5
    end
    object cdsVentasCliente: TStringField
      FieldKind = fkLookup
      FieldName = 'Cliente'
      LookupDataSet = tblClientes
      LookupKeyFields = 'idcliente'
      LookupResultField = 'nombre'
      KeyFields = 'idcliente'
      Size = 40
      Lookup = True
    end
    object cdsVentasClienteCondIVA: TStringField
      FieldKind = fkLookup
      FieldName = 'ClienteCondIVA'
      LookupDataSet = tblClientes
      LookupKeyFields = 'idcliente'
      LookupResultField = 'condiva'
      KeyFields = 'idcliente'
      Size = 10
      Lookup = True
    end
    object cdsVentasClienteDireccion: TStringField
      FieldKind = fkLookup
      FieldName = 'ClienteDireccion'
      LookupDataSet = tblClientes
      LookupKeyFields = 'idcliente'
      LookupResultField = 'direccion'
      KeyFields = 'idcliente'
      Size = 50
      Lookup = True
    end
    object cdsVentasTotal: TCurrencyField
      FieldName = 'Total'
      ReadOnly = True
    end
  end
  object dspVentas: TDataSetProvider
    DataSet = tblVentas
    Left = 160
    Top = 160
  end
  object tblClientes: TMyTable
    TableName = 'clientes'
    Connection = cnxVM
    Active = True
    Left = 40
    Top = 64
    object tblClientesidcliente: TIntegerField
      AutoGenerateValue = arAutoInc
      FieldName = 'idcliente'
      Origin = 'clientes.idcliente'
    end
    object tblClientesrazonsocial: TStringField
      FieldName = 'razonsocial'
      Origin = 'clientes.razonsocial'
      Size = 50
    end
    object tblClientesnombre: TStringField
      FieldName = 'nombre'
      Origin = 'clientes.nombre'
      Size = 50
    end
    object tblClientescuit: TStringField
      FieldName = 'cuit'
      Origin = 'clientes.cuit'
      Size = 45
    end
    object tblClientesdireccion: TStringField
      FieldName = 'direccion'
      Origin = 'clientes.direccion'
      Size = 100
    end
    object tblClientescp: TStringField
      FieldName = 'cp'
      Origin = 'clientes.cp'
      Size = 45
    end
    object tblClienteslocalidad: TStringField
      FieldName = 'localidad'
      Origin = 'clientes.localidad'
      Size = 45
    end
    object tblClientesprovincia: TStringField
      FieldName = 'provincia'
      Origin = 'clientes.provincia'
      Size = 45
    end
    object tblClientespais: TStringField
      FieldName = 'pais'
      Origin = 'clientes.pais'
      Size = 45
    end
    object tblClientestelefono: TStringField
      FieldName = 'telefono'
      Origin = 'clientes.telefono'
      Size = 15
    end
    object tblClientescelular: TStringField
      FieldName = 'celular'
      Origin = 'clientes.celular'
      Size = 45
    end
    object tblClientesfax: TStringField
      FieldName = 'fax'
      Origin = 'clientes.fax'
      Size = 45
    end
    object tblClientescontacto: TStringField
      FieldName = 'contacto'
      Origin = 'clientes.contacto'
      Size = 45
    end
    object tblClientescondiva: TStringField
      FieldName = 'condiva'
      Origin = 'clientes.condiva'
      Size = 45
    end
    object tblClientesmail: TStringField
      FieldName = 'mail'
      Origin = 'clientes.mail'
      Size = 45
    end
    object tblClientesweb: TStringField
      FieldName = 'web'
      Origin = 'clientes.web'
      Size = 45
    end
    object tblClientesidcategoria: TIntegerField
      FieldName = 'idcategoria'
      Origin = 'clientes.idcategoria'
    end
    object tblClientesexterno: TStringField
      FieldName = 'externo'
      Origin = 'clientes.externo'
      FixedChar = True
      Size = 1
    end
  end
  object tblRubros: TMyTable
    TableName = 'rubros'
    Connection = cnxVM
    Left = 32
    Top = 392
  end
  object tblSubRubros: TMyTable
    TableName = 'subrubros'
    Connection = cnxVM
    Active = True
    Left = 32
    Top = 440
  end
  object dsRubros: TDataSource
    DataSet = qryRubros
    Left = 496
    Top = 16
  end
  object tblHPrecios: TMyTable
    TableName = 'hprecios'
    Connection = cnxVM
    Left = 32
    Top = 344
  end
  object qryRubros: TMyQuery
    Connection = cnxVM
    SQL.Strings = (
      'SELECT * FROM rubros'
      'ORDER BY idrubro')
    Active = True
    Left = 416
    Top = 16
  end
  object qrySubRubros: TMyQuery
    Connection = cnxVM
    SQL.Strings = (
      'SELECT * FROM subrubros'
      'ORDER BY idsubrubro')
    MasterSource = dsRubros
    MasterFields = 'idrubro'
    DetailFields = 'idrubro'
    Left = 416
    Top = 72
    ParamData = <
      item
        DataType = ftInteger
        Name = 'idrubro'
        ParamType = ptInput
        Value = 25
      end>
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
    Left = 232
    Top = 72
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
  object tblRemitos: TMyTable
    TableName = 'presupuestos'
    Connection = cnxVM
    Left = 96
    Top = 344
    object tblRemitosidpresupuesto: TIntegerField
      AutoGenerateValue = arAutoInc
      FieldName = 'idpresupuesto'
      Origin = 'presupuestos.idpresupuesto'
    end
    object tblRemitosfecha: TDateTimeField
      FieldName = 'fecha'
      Origin = 'presupuestos.fecha'
    end
    object tblRemitosidcliente: TIntegerField
      FieldName = 'idcliente'
      Origin = 'presupuestos.idcliente'
    end
    object tblRemitosdescuento: TFloatField
      FieldName = 'descuento'
      Origin = 'presupuestos.descuento'
    end
    object tblRemitossubtotal: TFloatField
      FieldName = 'subtotal'
      Origin = 'presupuestos.subtotal'
    end
    object tblRemitosobservaciones: TStringField
      FieldName = 'observaciones'
      Origin = 'presupuestos.observaciones'
      Size = 255
    end
    object tblRemitostipo: TStringField
      FieldName = 'tipo'
      Origin = 'presupuestos.tipo'
      Size = 5
    end
  end
  object cdsRemitos: TClientDataSet
    Active = True
    Aggregates = <>
    FieldDefs = <
      item
        Name = 'idpresupuesto'
        DataType = ftInteger
      end
      item
        Name = 'fecha'
        DataType = ftDateTime
      end
      item
        Name = 'idcliente'
        DataType = ftInteger
      end
      item
        Name = 'descuento'
        DataType = ftFloat
      end
      item
        Name = 'subtotal'
        DataType = ftFloat
      end
      item
        Name = 'observaciones'
        DataType = ftString
        Size = 255
      end
      item
        Name = 'tipo'
        DataType = ftString
        Size = 5
      end>
    IndexDefs = <>
    Params = <>
    ProviderName = 'dspRemitos'
    StoreDefs = True
    OnNewRecord = cdsRemitosNewRecord
    Left = 160
    Top = 344
    object cdsRemitosfecha: TDateTimeField
      FieldName = 'fecha'
      Origin = 'presupuestos.fecha'
    end
    object cdsRemitosidcliente: TIntegerField
      FieldName = 'idcliente'
      Origin = 'presupuestos.idcliente'
    end
    object cdsRemitosdescuento: TFloatField
      FieldName = 'descuento'
      Origin = 'presupuestos.descuento'
    end
    object cdsRemitossubtotal: TFloatField
      FieldName = 'subtotal'
      Origin = 'presupuestos.subtotal'
    end
    object cdsRemitosobservaciones: TStringField
      FieldName = 'observaciones'
      Origin = 'presupuestos.observaciones'
      Size = 255
    end
    object cdsRemitostipo: TStringField
      FieldName = 'tipo'
      Origin = 'presupuestos.tipo'
      Size = 5
    end
    object cdsRemitosClienteDireccion: TStringField
      FieldKind = fkLookup
      FieldName = 'ClienteDireccion'
      LookupDataSet = tblClientes
      LookupKeyFields = 'idcliente'
      LookupResultField = 'direccion'
      KeyFields = 'idcliente'
      Size = 100
      Lookup = True
    end
    object cdsRemitosCliente: TStringField
      FieldKind = fkLookup
      FieldName = 'Cliente'
      LookupDataSet = tblClientes
      LookupKeyFields = 'idcliente'
      LookupResultField = 'nombre'
      KeyFields = 'idcliente'
      Size = 100
      Lookup = True
    end
    object cdsRemitosidpresupuesto: TIntegerField
      FieldName = 'idpresupuesto'
      Origin = 'presupuestos.idpresupuesto'
    end
  end
  object dspRemitos: TDataSetProvider
    DataSet = tblRemitos
    Left = 232
    Top = 344
  end
  object dsClientes: TDataSource
    DataSet = tblClientes
    Left = 104
    Top = 8
  end
  object dsArticulos: TDataSource
    DataSet = tblArticulos
    Left = 96
    Top = 400
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
  end
  object tblPresupuestos: TMyTable
    TableName = 'presupuestos'
    OrderFields = 'fecha DESC'
    Connection = cnxVM
    OnCalcFields = tblPresupuestosCalcFields
    Left = 40
    Top = 224
    object tblPresupuestosCliente: TStringField
      DisplayWidth = 80
      FieldKind = fkLookup
      FieldName = 'Cliente'
      LookupDataSet = cdsClientes
      LookupKeyFields = 'idcliente'
      LookupResultField = 'Nombre'
      KeyFields = 'idcliente'
      Size = 100
      Lookup = True
    end
    object tblPresupuestosidpresupuesto: TIntegerField
      FieldName = 'idpresupuesto'
      Origin = 'presupuestos.idpresupuesto'
    end
    object tblPresupuestosfecha: TDateTimeField
      FieldName = 'fecha'
      Origin = 'presupuestos.fecha'
    end
    object tblPresupuestosidcliente: TIntegerField
      FieldName = 'idcliente'
      Origin = 'presupuestos.idcliente'
    end
    object tblPresupuestosdescuento: TFloatField
      FieldName = 'descuento'
      Origin = 'presupuestos.descuento'
    end
    object tblPresupuestossubtotal: TFloatField
      FieldName = 'subtotal'
      Origin = 'presupuestos.subtotal'
      currency = True
    end
    object tblPresupuestosobservaciones: TStringField
      FieldName = 'observaciones'
      Origin = 'presupuestos.observaciones'
      Size = 255
    end
    object tblPresupuestostipo: TStringField
      FieldName = 'tipo'
      Origin = 'presupuestos.tipo'
      Size = 5
    end
    object tblPresupuestosTotal: TCurrencyField
      FieldKind = fkCalculated
      FieldName = 'Total'
      Calculated = True
    end
  end
  object cdsPresupuestos: TClientDataSet
    Active = True
    Aggregates = <>
    Params = <>
    ProviderName = 'dspPresupuestos'
    Left = 120
    Top = 224
    object cdsPresupuestosidpresupuesto: TIntegerField
      FieldName = 'idpresupuesto'
      Origin = 'presupuestos.idpresupuesto'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
    end
    object cdsPresupuestosfecha: TDateTimeField
      FieldName = 'fecha'
      Origin = 'presupuestos.fecha'
    end
    object cdsPresupuestosidcliente: TIntegerField
      FieldName = 'idcliente'
      Origin = 'presupuestos.idcliente'
    end
    object cdsPresupuestosdescuento: TFloatField
      DefaultExpression = '0'
      FieldName = 'descuento'
      Origin = 'presupuestos.descuento'
    end
    object cdsPresupuestossubtotal: TFloatField
      FieldName = 'subtotal'
      Origin = 'presupuestos.subtotal'
      currency = True
    end
    object cdsPresupuestosobservaciones: TStringField
      FieldName = 'observaciones'
      Origin = 'presupuestos.observaciones'
      Size = 255
    end
    object cdsPresupuestostipo: TStringField
      FieldName = 'tipo'
      Origin = 'presupuestos.tipo'
      Size = 5
    end
    object cdsPresupuestosCliente: TStringField
      FieldKind = fkLookup
      FieldName = 'Cliente'
      LookupDataSet = cdsClientes
      LookupKeyFields = 'idcliente'
      LookupResultField = 'Nombre'
      KeyFields = 'idcliente'
      Size = 80
      Lookup = True
    end
  end
  object dspPresupuestos: TDataSetProvider
    DataSet = tblPresupuestos
    Left = 200
    Top = 224
  end
  object qryCleanDetail: TMyQuery
    Connection = cnxVM
    SQL.Strings = (
      
        'delete from lineas where idmaster= :idmaster and master = :maste' +
        'r')
    Left = 328
    Top = 72
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'idmaster'
      end
      item
        DataType = ftUnknown
        Name = 'master'
      end>
  end
  object dsSubRubros: TDataSource
    DataSet = qrySubRubros
    Left = 496
    Top = 72
  end
  object qryArticulos: TMyQuery
    Connection = cnxVM
    SQL.Strings = (
      
        'SELECT idarticulo, denominacion, r.rubro, sr.subrubro, umcompra,' +
        ' costo, vcosto1, vcosto2, vcosto3, vcosto4, (costo*vcosto1*vcost' +
        'o2*vcosto3*vcosto4) precio'
      'FROM articulos a JOIN rubros r ON a.idrubro=r.idrubro'
      'JOIN subrubros sr ON a.idsubrubro=sr.idsubrubro')
    Left = 392
    Top = 200
  end
  object cdsRubros: TClientDataSet
    Active = True
    Aggregates = <>
    Params = <>
    ProviderName = 'dspRubros'
    Left = 496
    Top = 168
    object cdsRubrosidrubro: TIntegerField
      FieldName = 'idrubro'
      Origin = 'rubros.idrubro'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
    end
    object cdsRubrosrubro: TStringField
      FieldName = 'rubro'
      Origin = 'rubros.rubro'
      Size = 50
    end
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
    Aggregates = <>
    IndexFieldNames = 'idrubro'
    MasterFields = 'idrubro'
    MasterSource = dsARubros
    PacketRecords = 0
    Params = <>
    ProviderName = 'dspSubRubros'
    Left = 496
    Top = 232
    object cdsSubrubrosidsubrubro: TIntegerField
      FieldName = 'idsubrubro'
    end
    object cdsSubrubrosidrubro: TIntegerField
      FieldName = 'idrubro'
    end
    object cdsSubrubrossubrubro: TStringField
      FieldName = 'subrubro'
      Size = 100
    end
  end
  object dsARubros: TDataSource
    DataSet = cdsRubros
    Left = 616
    Top = 168
  end
  object dsASubrubros: TDataSource
    DataSet = cdsSubrubros
    Left = 616
    Top = 232
  end
  object tblCajas: TMyTable
    TableName = 'cajas'
    Connection = cnxVM
    Active = True
    FilterSQL = 'fecha>=CURDATE()'
    Left = 24
    Top = 496
    object tblCajasconcepto: TStringField
      FieldKind = fkLookup
      FieldName = 'concepto'
      LookupDataSet = tblConceptos
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
    Active = True
    Aggregates = <>
    Params = <>
    ProviderName = 'dspCajas'
    OnCalcFields = cdsCajasCalcFields
    OnNewRecord = cdsCajasNewRecord
    Left = 96
    Top = 496
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
      LookupDataSet = tblConceptos
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
    Left = 160
    Top = 496
  end
  object tblConceptos: TMyTable
    TableName = 'conceptos'
    Connection = cnxVM
    Active = True
    Left = 480
    Top = 304
  end
  object dsConceptos: TDataSource
    DataSet = tblConceptos
    Left = 536
    Top = 304
  end
  object dsCajas: TDataSource
    AutoEdit = False
    DataSet = tblCajas
    Left = 224
    Top = 496
  end
  object qryCajaSaldo: TMyQuery
    Connection = cnxVM
    SQL.Strings = (
      'SELECT SUM(Importe) Total'
      ' FROM Cajas'
      'WHERE Fecha = :Fecha'
      'GROUP BY Fecha')
    Left = 288
    Top = 496
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'Fecha'
      end>
  end
end
