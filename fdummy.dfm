object frmDock: TfrmDock
  Left = 0
  Top = 0
  BorderStyle = bsSizeToolWin
  Caption = 'frmDock'
  ClientHeight = 520
  ClientWidth = 612
  Color = clBtnFace
  DragKind = dkDock
  DragMode = dmAutomatic
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  PixelsPerInch = 96
  TextHeight = 13
  object Edit1: TEdit
    Left = 176
    Top = 312
    Width = 121
    Height = 21
    TabOrder = 0
    Text = 'Edit1'
  end
  object Button1: TButton
    Left = 312
    Top = 312
    Width = 75
    Height = 25
    Caption = 'Button1'
    TabOrder = 1
  end
  object JvTabBar1: TJvTabBar
    Left = 0
    Top = 0
    Width = 612
    Tabs = <
      item
        Caption = 'tres'
        Selected = True
      end
      item
        Caption = 'dos'
      end
      item
        Caption = 'uno'
      end>
  end
  object JvPageControl1: TJvPageControl
    Left = 8
    Top = 29
    Width = 289
    Height = 193
    ActivePage = TabSheet1
    TabOrder = 3
    DotNetHighlighting = True
    object TabSheet1: TTabSheet
      Caption = 'TabSheet1'
    end
  end
end
