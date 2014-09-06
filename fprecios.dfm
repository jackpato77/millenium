inherited frmPrecios: TfrmPrecios
  Caption = 'Actualizacion de Precios'
  ClientHeight = 494
  ClientWidth = 790
  OnActivate = FormActivate
  ExplicitWidth = 798
  ExplicitHeight = 521
  PixelsPerInch = 96
  TextHeight = 15
  object pnlMain: TPanel
    Left = 0
    Top = 0
    Width = 782
    Height = 486
    TabOrder = 0
    object btnAlicar: TBitBtn
      Left = 544
      Top = 440
      Width = 109
      Height = 37
      Caption = 'Aplicar'
      TabOrder = 0
    end
    object edtVCosto1: TDBEdit
      Left = 619
      Top = 69
      Width = 95
      Height = 23
      DataField = 'vcosto1'
      TabOrder = 1
    end
    object edtVCosto2: TDBEdit
      Left = 619
      Top = 98
      Width = 95
      Height = 23
      DataField = 'vcosto2'
      TabOrder = 2
    end
    object edtVCosto3: TDBEdit
      Left = 720
      Top = 69
      Width = 95
      Height = 23
      DataField = 'vcosto3'
      TabOrder = 3
    end
    object edtVCosto4: TDBEdit
      Left = 720
      Top = 98
      Width = 95
      Height = 23
      DataField = 'vcosto4'
      TabOrder = 4
    end
    object btnCancelar: TBitBtn
      Left = 659
      Top = 440
      Width = 110
      Height = 37
      Caption = 'Cancelar'
      ModalResult = 2
      TabOrder = 5
    end
    object JvRadioGroup1: TJvRadioGroup
      Left = 211
      Top = 16
      Width = 180
      Height = 89
      Caption = 'Base para Calculo '
      ItemIndex = 0
      Items.Strings = (
        'Precio Venta'
        'Costo Compra')
      TabOrder = 6
      CaptionVisible = True
    end
    object JvRadioGroup2: TJvRadioGroup
      Left = 397
      Top = 16
      Width = 180
      Height = 89
      Caption = 'Tipo de Actualizacion '
      ItemIndex = 0
      Items.Strings = (
        'Lineal'
        'Porcentual')
      TabOrder = 7
      CaptionVisible = True
    end
    object dbgPrecios: TDBGrid
      Left = 211
      Top = 127
      Width = 553
      Height = 307
      DataSource = dm.dsPrecios
      TabOrder = 8
      TitleFont.Charset = DEFAULT_CHARSET
      TitleFont.Color = clWindowText
      TitleFont.Height = -13
      TitleFont.Name = 'Calibri'
      TitleFont.Style = []
      Columns = <
        item
          Expanded = False
          FieldName = 'id'
          Title.Alignment = taCenter
          Title.Caption = 'Cod'
          Width = 50
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'nombre'
          Title.Alignment = taCenter
          Title.Caption = 'Articulo'
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'um'
          Title.Alignment = taCenter
          Title.Caption = 'UM'
          Width = 50
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'costo'
          Title.Alignment = taCenter
          Title.Caption = 'Costo'
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'precio'
          Title.Alignment = taCenter
          Title.Caption = 'Precio'
          Visible = True
        end>
    end
    object JvDBTreeView1: TJvDBTreeView
      Left = 1
      Top = 1
      Width = 193
      Height = 484
      DataSource = dm.dsRubros
      MasterField = 'id'
      DetailField = 'parent'
      IconField = 'id'
      ItemField = 'nombre'
      StartMasterValue = '0'
      UseFilter = False
      PersistentNode = True
      Indent = 19
      Align = alLeft
      TabOrder = 9
      RowSelect = True
      Mirror = False
    end
  end
end
