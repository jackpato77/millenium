object Form4: TForm4
  Left = 0
  Top = 0
  Caption = 'Form4'
  ClientHeight = 276
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
  object Button1: TButton
    Left = 24
    Top = 164
    Width = 75
    Height = 25
    Caption = 'Button1'
    TabOrder = 0
    OnClick = Button1Click
  end
  object JvListView1: TJvListView
    Left = 16
    Top = 8
    Width = 250
    Height = 150
    Columns = <>
    TabOrder = 1
    Groups = <>
    ExtendedColumns = <>
  end
  object ListView1: TListView
    Left = 280
    Top = 8
    Width = 250
    Height = 150
    Columns = <>
    TabOrder = 2
    ViewStyle = vsList
  end
end
