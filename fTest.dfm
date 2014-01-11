inherited fTestForm: TfTestForm
  Caption = 'Test'
  ClientHeight = 451
  ClientWidth = 694
  ExplicitWidth = 702
  ExplicitHeight = 478
  PixelsPerInch = 96
  TextHeight = 15
  object DBGrid1: TDBGrid
    Left = 8
    Top = 32
    Width = 409
    Height = 120
    DataSource = dm.dsBPedidos
    TabOrder = 0
    TitleFont.Charset = DEFAULT_CHARSET
    TitleFont.Color = clWindowText
    TitleFont.Height = -13
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
    Left = 8
    Top = 192
    Width = 425
    Height = 201
    DataSource = dm.dsDetails
    TabOrder = 1
    TitleFont.Charset = DEFAULT_CHARSET
    TitleFont.Color = clWindowText
    TitleFont.Height = -13
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
        FieldName = 'cnttotal'
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'subtotal'
        Visible = True
      end>
  end
  object Button1: TButton
    Left = 8
    Top = 399
    Width = 75
    Height = 25
    Caption = 'Button1'
    TabOrder = 2
    OnClick = Button1Click
  end
  object Button2: TButton
    Left = 89
    Top = 399
    Width = 75
    Height = 25
    Caption = 'Button1'
    TabOrder = 3
    OnClick = Button2Click
  end
  object Panel1: TPanel
    Left = 440
    Top = 16
    Width = 246
    Height = 408
    Caption = 'Panel1'
    TabOrder = 4
    object Splitter1: TSplitter
      Left = 1
      Top = 90
      Width = 244
      Height = 3
      Cursor = crVSplit
      Align = alTop
      ExplicitLeft = 242
      ExplicitWidth = 317
    end
    object Memo1: TMemo
      Left = 1
      Top = 1
      Width = 244
      Height = 89
      Align = alTop
      Lines.Strings = (
        'Memo1')
      TabOrder = 0
      ExplicitLeft = 40
      ExplicitTop = 56
      ExplicitWidth = 185
    end
    object Memo2: TMemo
      Left = 1
      Top = 93
      Width = 244
      Height = 314
      Align = alClient
      Lines.Strings = (
        'Memo2')
      TabOrder = 1
      ExplicitLeft = 40
      ExplicitTop = 112
      ExplicitWidth = 185
      ExplicitHeight = 89
    end
  end
end
