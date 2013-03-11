inherited frmPrecios: TfrmPrecios
  AutoSize = True
  Caption = 'Actualizacion de Precios'
  ClientHeight = 378
  ClientWidth = 668
  OnActivate = FormActivate
  ExplicitWidth = 684
  ExplicitHeight = 416
  PixelsPerInch = 96
  TextHeight = 19
  object pnlMain: TPanel
    Left = 0
    Top = 0
    Width = 668
    Height = 378
    TabOrder = 0
    object Label1: TLabel
      Left = 23
      Top = 28
      Width = 46
      Height = 19
      Caption = 'Rubro: '
    end
    object Label2: TLabel
      Left = 23
      Top = 67
      Width = 69
      Height = 19
      Caption = 'SubRubro: '
    end
    object Label3: TLabel
      Left = 23
      Top = 110
      Width = 45
      Height = 19
      Caption = 'Rango:'
    end
    object Label4: TLabel
      Left = 221
      Top = 110
      Width = 32
      Height = 19
      Caption = '  de  '
    end
    object Label5: TLabel
      Left = 25
      Top = 156
      Width = 45
      Height = 19
      Caption = 'Costo: '
    end
    object Label6: TLabel
      Left = 25
      Top = 206
      Width = 56
      Height = 19
      Caption = 'Calculo: '
    end
    object JvDBSearchComboBox1: TJvDBSearchComboBox
      Left = 105
      Top = 23
      Width = 388
      Height = 27
      DataField = 'rubro'
      DataResult = 'idrubro'
      DataSource = dm.dsRubros
      AutoDropDown = True
      Style = csDropDownList
      ItemHeight = 19
      TabOrder = 0
      Text = 'VIDRIOS'
    end
    object JvDBSearchComboBox2: TJvDBSearchComboBox
      Left = 105
      Top = 63
      Width = 388
      Height = 27
      DataField = 'subrubro'
      DataResult = 'idsubrubro'
      DataSource = dsSubRubros
      AutoDropDown = True
      Style = csDropDownList
      ItemHeight = 19
      TabOrder = 1
      Text = 'FLOAT COLOR'
    end
    object btnAlicar: TBitBtn
      Left = 398
      Top = 320
      Width = 109
      Height = 37
      Caption = 'Aplicar'
      TabOrder = 2
      OnClick = btnAlicarClick
    end
    object edtDesde: TSpinEdit
      Left = 105
      Top = 105
      Width = 95
      Height = 29
      MaxValue = 0
      MinValue = 0
      TabOrder = 3
      Value = 1
    end
    object edtHasta: TSpinEdit
      Left = 289
      Top = 105
      Width = 95
      Height = 29
      MaxValue = 0
      MinValue = 0
      TabOrder = 4
      Value = 999
    end
    object edtCosto: TDBEdit
      Left = 105
      Top = 152
      Width = 95
      Height = 27
      DataField = 'costo'
      DataSource = dsHPrecios
      TabOrder = 5
    end
    object edtVCosto1: TDBEdit
      Left = 105
      Top = 202
      Width = 95
      Height = 27
      DataField = 'vcosto1'
      DataSource = dsHPrecios
      TabOrder = 6
    end
    object edtVCosto2: TDBEdit
      Left = 105
      Top = 241
      Width = 95
      Height = 27
      DataField = 'vcosto2'
      DataSource = dsHPrecios
      TabOrder = 7
    end
    object edtVCosto3: TDBEdit
      Left = 105
      Top = 281
      Width = 95
      Height = 27
      DataField = 'vcosto3'
      DataSource = dsHPrecios
      TabOrder = 8
    end
    object edtVCosto4: TDBEdit
      Left = 105
      Top = 320
      Width = 95
      Height = 27
      DataField = 'vcosto4'
      DataSource = dsHPrecios
      TabOrder = 9
    end
    object rgpMulti: TRadioGroup
      Left = 244
      Top = 156
      Width = 118
      Height = 95
      Caption = 'Valores en'
      ItemIndex = 0
      Items.Strings = (
        '%'
        '$')
      TabOrder = 10
    end
    object btnCancelar: TBitBtn
      Left = 516
      Top = 320
      Width = 110
      Height = 37
      Caption = 'Cancelar'
      ModalResult = 2
      TabOrder = 11
    end
  end
  object dsSubRubros: TDataSource
    DataSet = dm.qrySubRubros
    Left = 360
    Top = 24
  end
  object dsHPrecios: TDataSource
    DataSet = dm.tblHPrecios
    Left = 360
    Top = 64
  end
end
