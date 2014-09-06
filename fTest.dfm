inherited fTestForm: TfTestForm
  Caption = 'Test'
  ClientHeight = 421
  ClientWidth = 648
  ExplicitWidth = 656
  ExplicitHeight = 448
  PixelsPerInch = 96
  TextHeight = 14
  object DBGrid1: TDBGrid
    Left = 8
    Top = 130
    Width = 382
    Height = 112
    DataSource = dm.dsVPedidos
    TabOrder = 0
    TitleFont.Charset = DEFAULT_CHARSET
    TitleFont.Color = clWindowText
    TitleFont.Height = -12
    TitleFont.Name = 'Calibri'
    TitleFont.Style = []
    Columns = <
      item
        Expanded = False
        FieldName = 'id'
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'nro'
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'cliente_id'
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'fecha'
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'monto'
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'fecha_ingreso'
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'fecha_requerido'
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'estado_id'
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'comentario'
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'empleado_id'
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'tipo'
        Visible = True
      end>
  end
  object DBGrid2: TDBGrid
    Left = 7
    Top = 248
    Width = 397
    Height = 119
    DataSource = dm.dsVLineas
    TabOrder = 1
    TitleFont.Charset = DEFAULT_CHARSET
    TitleFont.Color = clWindowText
    TitleFont.Height = -12
    TitleFont.Name = 'Calibri'
    TitleFont.Style = []
    Columns = <
      item
        Expanded = False
        FieldName = 'id'
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'pedido_id'
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'total'
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'articulo_id'
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'cantidad'
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'base'
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'alto'
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'precio'
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'estado'
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'articulo_nombre'
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'articulo_um'
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'CntTotal'
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'subtotal'
        Visible = True
      end>
  end
  object Button1: TButton
    Left = 7
    Top = 372
    Width = 70
    Height = 24
    Caption = 'Button1'
    TabOrder = 2
    OnClick = Button1Click
  end
  object Button2: TButton
    Left = 83
    Top = 372
    Width = 70
    Height = 24
    Caption = 'Button1'
    TabOrder = 3
    OnClick = Button2Click
  end
  object Panel1: TPanel
    Left = 411
    Top = 15
    Width = 229
    Height = 381
    Caption = 'Panel1'
    TabOrder = 4
    object Splitter1: TSplitter
      Left = 1
      Top = 84
      Width = 227
      Height = 3
      Cursor = crVSplit
      Align = alTop
      ExplicitWidth = 228
    end
    object Memo1: TMemo
      Left = 1
      Top = 1
      Width = 227
      Height = 83
      Align = alTop
      Lines.Strings = (
        'Memo1')
      TabOrder = 0
    end
    object Memo2: TMemo
      Left = 1
      Top = 87
      Width = 227
      Height = 293
      Align = alClient
      Lines.Strings = (
        'Memo2')
      TabOrder = 1
    end
  end
  object DBGrid3: TDBGrid
    Left = 8
    Top = 12
    Width = 382
    Height = 112
    DataSource = dm.dsAVentas
    TabOrder = 5
    TitleFont.Charset = DEFAULT_CHARSET
    TitleFont.Color = clWindowText
    TitleFont.Height = -12
    TitleFont.Name = 'Calibri'
    TitleFont.Style = []
    Columns = <
      item
        Expanded = False
        FieldName = 'id'
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'nro'
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'cliente_id'
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'fecha'
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'monto'
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'fecha_ingreso'
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'fecha_requerido'
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'estado_id'
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'comentario'
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'empleado_id'
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'tipo'
        Visible = True
      end>
  end
end
