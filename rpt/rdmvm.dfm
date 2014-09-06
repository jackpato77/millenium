object rdm: Trdm
  OldCreateOrder = False
  Height = 246
  Width = 570
  object RConx: TMyConnection
    Database = 'dbmillenium'
    Username = 'root'
    Password = 'gabiru22'
    Server = '127.0.0.1'
    Left = 24
    Top = 16
  end
  object qryPto: TMyQuery
    Connection = RConx
    SQL.Strings = (
      
        'select idpresupuesto, fecha, p.idcliente, c.nombre, c.direccion,' +
        ' c.telefono, observaciones, subtotal '
      'from presupuestos p join clientes c on p.idcliente = c.idcliente'
      'where idpresupuesto=:idpresupuesto')
    Left = 112
    Top = 16
    ParamData = <
      item
        DataType = ftInteger
        Name = 'idpresupuesto'
        Value = 13
      end>
  end
  object qryLin: TMyQuery
    Connection = RConx
    SQL.Strings = (
      
        'select idlinea,l.idarticulo, a.denominacion, a.umcompra, l.preci' +
        'o, base, alto, cantidad, (l.precio*base*alto*cantidad) subtotal'
      'from lineas l join articulos a on l.idarticulo=a.idarticulo'
      'where idmaster= :idpresupuesto'
      'and master = '#39'presupuesto'#39)
    MasterSource = dsPto
    MasterFields = 'idpresupuesto'
    DetailFields = 'idmaster'
    Left = 160
    Top = 16
    ParamData = <
      item
        DataType = ftInteger
        Name = 'idpresupuesto'
        ParamType = ptInput
        Value = 13
      end
      item
        DataType = ftInteger
        Name = 'idpresupuesto'
        ParamType = ptInput
        Value = 13
      end>
    object qryLinprecio: TFloatField
      FieldName = 'precio'
      Origin = 'lineas.precio'
      currency = True
    end
    object qryLinsubtotal: TFloatField
      FieldName = 'subtotal'
      Origin = '.subtotal'
      currency = True
    end
    object qryLinidlinea: TIntegerField
      AutoGenerateValue = arAutoInc
      FieldName = 'idlinea'
      Origin = 'lineas.idlinea'
    end
    object qryLinidarticulo: TIntegerField
      FieldName = 'idarticulo'
      Origin = 'lineas.idarticulo'
    end
    object qryLindenominacion: TStringField
      FieldName = 'denominacion'
      Origin = 'a.denominacion'
      Size = 250
    end
    object qryLinumcompra: TStringField
      FieldName = 'umcompra'
      Origin = 'a.umcompra'
      Size = 15
    end
    object qryLinbase: TFloatField
      FieldName = 'base'
      Origin = 'lineas.base'
    end
    object qryLinalto: TFloatField
      FieldName = 'alto'
      Origin = 'lineas.alto'
    end
    object qryLincantidad: TIntegerField
      FieldName = 'cantidad'
      Origin = 'lineas.cantidad'
    end
  end
  object dsPto: TDataSource
    DataSet = qryPto
    Left = 208
    Top = 16
  end
  object qryArt: TMyQuery
    Connection = RConx
    SQL.Strings = (
      
        'SELECT articulos.idarticulo, articulos.denominacion, articulos.u' +
        'mcompra, articulos.costo, articulos.idrubro, articulos.idsubrubr' +
        'o, (costo*vcosto1*vcosto2*vcosto3*vcosto4) precio'
      'FROM articulos')
    Left = 112
    Top = 88
  end
  object qryCli: TMyQuery
    Connection = RConx
    SQL.Strings = (
      
        'SELECT clientes.idcliente, clientes.razonsocial, clientes.nombre' +
        ', clientes.cuit, clientes.telefono '
      'FROM clientes')
    Left = 168
    Top = 88
  end
end
