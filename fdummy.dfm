object Form4: TForm4
  Left = 0
  Top = 0
  Caption = 'Form4'
  ClientHeight = 395
  ClientWidth = 651
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  PixelsPerInch = 96
  TextHeight = 13
  object edtPedido: TEdit
    Left = 104
    Top = 16
    Width = 121
    Height = 21
    TabOrder = 0
    Text = 'edtPedido'
  end
  object BitBtn1: TBitBtn
    Left = 232
    Top = 14
    Width = 75
    Height = 25
    Caption = 'BitBtn1'
    TabOrder = 1
    OnClick = BitBtn1Click
  end
  object edtFecha: TDBEdit
    Left = 104
    Top = 56
    Width = 121
    Height = 21
    DataField = 'fecha'
    DataSource = DataSource1
    TabOrder = 2
  end
  object BitBtn2: TBitBtn
    Left = 232
    Top = 56
    Width = 75
    Height = 25
    Caption = 'BitBtn2'
    TabOrder = 3
    OnClick = BitBtn2Click
  end
  object DataSource1: TDataSource
    Left = 368
    Top = 16
  end
end
