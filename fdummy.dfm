object Form4: TForm4
  Left = 0
  Top = 0
  Caption = 'Form4'
  ClientHeight = 213
  ClientWidth = 455
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  PixelsPerInch = 96
  TextHeight = 13
  object GridPanel1: TGridPanel
    Left = 16
    Top = 16
    Width = 431
    Height = 129
    Caption = 'GridPanel1'
    ColumnCollection = <
      item
        Value = 25.581395348837210000
      end
      item
        Value = 74.418604651162800000
      end>
    ControlCollection = <
      item
        Column = 0
        Control = Edit1
        Row = 0
      end
      item
        Column = 1
        Control = Edit2
        Row = 0
      end>
    RowCollection = <
      item
        Value = 50.000000000000000000
      end
      item
        Value = 50.000000000000000000
      end>
    TabOrder = 0
    DesignSize = (
      431
      129)
    object Edit1: TEdit
      Left = 1
      Top = 22
      Width = 109
      Height = 21
      Anchors = []
      TabOrder = 0
      Text = 'Edit1'
      ExplicitLeft = 160
      ExplicitTop = 24
    end
    object Edit2: TEdit
      Left = 215
      Top = 22
      Width = 121
      Height = 21
      Anchors = []
      TabOrder = 1
      Text = 'Edit1'
      ExplicitLeft = 160
      ExplicitTop = 24
    end
  end
  object Button1: TButton
    Left = 320
    Top = 160
    Width = 75
    Height = 25
    Caption = 'Button1'
    TabOrder = 1
    OnClick = Button1Click
  end
end
