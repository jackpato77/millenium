object frmRemitos: TfrmRemitos
  Left = 0
  Top = 0
  ActiveControl = edtClienteId
  Caption = 'Ventas'
  ClientHeight = 562
  ClientWidth = 784
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  PixelsPerInch = 96
  TextHeight = 13
  object pnlBody: TPanel
    Left = 8
    Top = 247
    Width = 768
    Height = 222
    TabOrder = 3
    object SpeedButton1: TSpeedButton
      Left = 730
      Top = 13
      Width = 23
      Height = 24
      Flat = True
      Glyph.Data = {
        36030000424D3603000000000000360000002800000010000000100000000100
        18000000000000030000120B0000120B00000000000000000000FF00FFFF00FF
        FF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00
        FFFF00FF0005B70005B7FF00FF0005B70005B7FF00FFFF00FFFF00FFFF00FFFF
        00FFFF00FFFF00FFFF00FFFF00FFFF00FF0005B70005B7FF00FFFF00FF0005B7
        0005B70005B7FF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FF0005
        B70005B7FF00FFFF00FFFF00FF0005B70005B60005B70005B7FF00FFFF00FFFF
        00FFFF00FFFF00FFFF00FF0005B70005B7FF00FFFF00FFFF00FFFF00FFFF00FF
        0006D70005BA0005B70005B7FF00FFFF00FFFF00FFFF00FF0005B70005B7FF00
        FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FF0005B70005B70005B6FF
        00FF0005B60005B70005B7FF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FF
        FF00FFFF00FFFF00FF0005B60006C70006C70006CE0005B4FF00FFFF00FFFF00
        FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FF0006C100
        05C10006DAFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FF
        FF00FFFF00FFFF00FF0005B60006D70006CE0006DA0006E9FF00FFFF00FFFF00
        FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FF0006E50006DA0006D3FF
        00FFFF00FF0006E50006EFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FF
        FF00FF0006F80006DA0006EFFF00FFFF00FFFF00FFFF00FF0006F80006F6FF00
        FFFF00FFFF00FFFF00FFFF00FFFF00FF0006F60006F60006F8FF00FFFF00FFFF
        00FFFF00FFFF00FFFF00FF0006F60006F6FF00FFFF00FFFF00FFFF00FF0006F6
        0006F60006F6FF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00
        FF0006F6FF00FFFF00FF0006F60006F60006F6FF00FFFF00FFFF00FFFF00FFFF
        00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FF0006F60006F6
        FF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00
        FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF
        00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FF}
      OnClick = SpeedButton1Click
    end
    object DBGrid1: TDBGrid
      Left = 16
      Top = 7
      Width = 708
      Height = 198
      DataSource = dsDetails
      Options = [dgTitles, dgIndicator, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgRowSelect, dgAlwaysShowSelection, dgConfirmDelete, dgCancelOnExit]
      TabOrder = 0
      TitleFont.Charset = DEFAULT_CHARSET
      TitleFont.Color = clWindowText
      TitleFont.Height = -11
      TitleFont.Name = 'Tahoma'
      TitleFont.Style = []
      Columns = <
        item
          Expanded = False
          FieldName = 'idvdetalle'
          Visible = False
        end
        item
          Expanded = False
          FieldName = 'idventa'
          Visible = False
        end
        item
          Expanded = False
          FieldName = 'idarticulo'
          Title.Caption = 'Cod.'
          Visible = True
        end
        item
          Expanded = False
          FieldName = ''
          Title.Caption = 'Articulo'
          Visible = True
        end
        item
          Expanded = False
          FieldName = ''
          Title.Caption = 'UM'
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'cantidad'
          Title.Caption = 'Cnt'
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'precio'
          Title.Caption = 'P.U.'
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'alto'
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'ancho'
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'CntTotal'
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'Subtotal'
          Visible = True
        end>
    end
  end
  object pnlFoot: TPanel
    Left = 8
    Top = 471
    Width = 768
    Height = 83
    TabOrder = 4
    object Label15: TLabel
      Left = 408
      Top = 7
      Width = 51
      Height = 13
      Caption = 'Descuento'
    end
    object Label16: TLabel
      Left = 597
      Top = 7
      Width = 40
      Height = 13
      Caption = 'Subtotal'
    end
    object Label17: TLabel
      Left = 597
      Top = 34
      Width = 24
      Height = 13
      Caption = 'Total'
    end
    object DBEdit16: TDBEdit
      Left = 643
      Top = 4
      Width = 81
      Height = 21
      DataField = 'subtotal'
      DataSource = dsVentas
      TabOrder = 0
    end
    object DBEdit17: TDBEdit
      Left = 644
      Top = 31
      Width = 81
      Height = 21
      DataField = 'Total'
      DataSource = dsVentas
      TabOrder = 1
    end
    object DBEdit18: TDBEdit
      Left = 468
      Top = 4
      Width = 81
      Height = 21
      DataField = 'subtotal'
      DataSource = dsVentas
      TabOrder = 2
    end
    object Button2: TButton
      Left = 56
      Top = 32
      Width = 75
      Height = 25
      Caption = 'Guardar'
      TabOrder = 3
      OnClick = Button2Click
    end
  end
  object pnlAux: TPanel
    Left = 8
    Top = 151
    Width = 768
    Height = 90
    TabOrder = 2
    object Label3: TLabel
      Left = 16
      Top = 6
      Width = 43
      Height = 13
      Caption = 'Producto'
      FocusControl = edtArticuloId
    end
    object btnPrdFnd: TSpeedButton
      Left = 62
      Top = 22
      Width = 23
      Height = 22
      Hint = 'Buscar'
      Flat = True
      Glyph.Data = {
        36030000424D3603000000000000360000002800000010000000100000000100
        18000000000000030000120B0000120B00000000000000000000FF00FF4A667C
        BE9596FF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00
        FFFF00FFFF00FFFF00FF6B9CC31E89E84B7AA3C89693FF00FFFF00FFFF00FFFF
        00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FF4BB4FE51B5FF
        2089E94B7AA2C69592FF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00
        FFFF00FFFF00FFFF00FFFF00FF51B7FE51B3FF1D87E64E7AA0CA9792FF00FFFF
        00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FF
        51B7FE4EB2FF1F89E64E7BA2B99497FF00FFFF00FFFF00FFFF00FFFF00FFFF00
        FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FF52B8FE4BB1FF2787D95F6A76FF
        00FFB0857FC09F94C09F96BC988EFF00FFFF00FFFF00FFFF00FFFF00FFFF00FF
        FF00FFFF00FF55BDFFB5D6EDBF9D92BB9B8CE7DAC2FFFFE3FFFFE5FDFADAD8C3
        B3B58D85FF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFCEA795FD
        EEBEFFFFD8FFFFDAFFFFDBFFFFE6FFFFFBEADDDCAE837FFF00FFFF00FFFF00FF
        FF00FFFF00FFFF00FFFF00FFC1A091FBDCA8FEF7D0FFFFDBFFFFE3FFFFF8FFFF
        FDFFFFFDC6A99CFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFC1A091FEE3ACF1
        C491FCF2CAFFFFDDFFFFE4FFFFF7FFFFF7FFFFE9EEE5CBB9948CFF00FFFF00FF
        FF00FFFF00FFFF00FFC2A191FFE6AEEEB581F7DCAEFEFDD8FFFFDFFFFFE3FFFF
        E4FFFFE0F3ECD2BB968EFF00FFFF00FFFF00FFFF00FFFF00FFBC978CFBE7B7F4
        C791F2C994F8E5B9FEFCD8FFFFDDFFFFDCFFFFE0E2D2BAB68E86FF00FFFF00FF
        FF00FFFF00FFFF00FFFF00FFD9C3A9FFFEE5F7DCB8F2C994F5D4A5FAE8BDFDF4
        C9FDFBD6B69089FF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFB58D85E8
        DEDDFFFEF2F9D8A3F4C48CF9D49FFDEAB8D0B49FB89086FF00FFFF00FFFF00FF
        FF00FFFF00FFFF00FFFF00FFFF00FFAD827FC9AA9EEFE0B7EFDFB2E7CEACB890
        86B89086FF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF
        00FFFF00FFBA968ABB988CB79188FF00FFFF00FFFF00FFFF00FF}
      OnClick = btnPrdFndClick
    end
    object Label1: TLabel
      Left = 13
      Top = 58
      Width = 40
      Height = 13
      Caption = 'Subtotal'
    end
    object SpeedButton6: TSpeedButton
      Left = 730
      Top = 53
      Width = 23
      Height = 24
      Flat = True
      Glyph.Data = {
        36030000424D3603000000000000360000002800000010000000100000000100
        18000000000000030000120B0000120B00000000000000000000FF00FFFF00FF
        FF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFA03D07FF00FFFF00
        FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF
        00FFFF00FFA13E08B04D06A13E08FF00FFFF00FFFF00FFFF00FFFF00FFFF00FF
        FF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFA13E08BF5B03BD5804A13E
        08FF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF
        00FFFF00FFA13E08A44108C86401B34F05A13E08FF00FFFF00FFA03D07A03D07
        A03D07A03D07A03D07A03D07A03D07A13E08A13E08FF00FFA13E08A44108C864
        01AD4906A13E08FF00FFA03D07E18B2FD37619C66406C45E01C56002C66002C6
        6102B04D06A03D07FF00FFA13E08A94707C86401A44108FF00FFA03D07FFB951
        E99433E18620A03D07A03D07A03D07A03D07A03D07FF00FFFF00FFFF00FFA13E
        08B95505B95505A13E08A03D07FFBC53E99433E69233CF741F9E3A06FF00FFFF
        00FFFF00FFFF00FFFF00FFFF00FFFF00FFA64307C66002A03E08A03D07FFBC53
        B45516A13F08F8A942BE61199E3B06FF00FFFF00FFFF00FFFF00FFFF00FFFF00
        FFA03D08D16C00A03D08A03D07FFBD54A03D079D3905B15214FBAD47D076239E
        3B06FF00FFFF00FFFF00FFFF00FFA13E08A94607CB6601A03D08A03D07FFBD54
        A03D07FF00FF9F3B06B25214F0A040DC862DA44008A03C07FF00FFA13D08A03D
        08C25E02B95505A13E08A03D07FFBE54A03D07FF00FFFF00FFA03C06A5420ADF
        8A34EF9D39BD5E15AF4D0AAC4806C25E02C66002A44108FF00FF9F3B06FCB04C
        A03D07FF00FFFF00FFFF00FFA03D079F3B06B85A19D77F28D77B1EC3610AAF4C
        06A03D08A13E08FF00FFFF00FFA03C06FF00FFFF00FFFF00FFFF00FFFF00FFFF
        00FFA03D07A03C07A03D07A03D08A13E08FF00FFFF00FFFF00FFFF00FFFF00FF
        FF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00
        FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF
        00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FF}
      OnClick = SpeedButton6Click
    end
    object Label6: TLabel
      Left = 485
      Top = 7
      Width = 41
      Height = 13
      Caption = 'cantidad'
      FocusControl = DBEdit2
    end
    object Label8: TLabel
      Left = 532
      Top = 7
      Width = 29
      Height = 13
      Caption = 'precio'
      FocusControl = DBEdit3
    end
    object Label9: TLabel
      Left = 589
      Top = 7
      Width = 18
      Height = 13
      Caption = 'alto'
      FocusControl = DBEdit4
    end
    object Label11: TLabel
      Left = 638
      Top = 7
      Width = 29
      Height = 13
      Caption = 'ancho'
      FocusControl = DBEdit5
    end
    object Label12: TLabel
      Left = 695
      Top = 7
      Width = 41
      Height = 13
      Caption = 'CntTotal'
      FocusControl = DBEdit6
    end
    object edtArticuloId: TDBEdit
      Left = 13
      Top = 22
      Width = 43
      Height = 21
      DataField = 'idarticulo'
      DataSource = dsAux
      TabOrder = 0
    end
    object DBEdit2: TDBEdit
      Left = 485
      Top = 23
      Width = 41
      Height = 21
      DataField = 'cantidad'
      DataSource = dsAux
      TabOrder = 1
    end
    object DBEdit3: TDBEdit
      Left = 532
      Top = 23
      Width = 51
      Height = 21
      DataField = 'ArticuloPrecio'
      DataSource = dsAux
      TabOrder = 2
    end
    object DBEdit4: TDBEdit
      Left = 589
      Top = 23
      Width = 42
      Height = 21
      DataField = 'alto'
      DataSource = dsAux
      TabOrder = 3
    end
    object DBEdit5: TDBEdit
      Left = 637
      Top = 23
      Width = 52
      Height = 21
      DataField = 'ancho'
      DataSource = dsAux
      TabOrder = 4
    end
    object DBEdit6: TDBEdit
      Left = 695
      Top = 23
      Width = 45
      Height = 21
      DataField = 'CntTotal'
      DataSource = dsAux
      TabOrder = 5
    end
    object DBEdit7: TDBEdit
      Left = 62
      Top = 53
      Width = 134
      Height = 21
      DataField = 'Subtotal'
      DataSource = dsAux
      TabOrder = 6
    end
    object DBEdit8: TDBEdit
      Left = 91
      Top = 23
      Width = 294
      Height = 21
      DataField = ''
      DataSource = dsAux
      TabOrder = 8
    end
    object DBEdit9: TDBEdit
      Left = 392
      Top = 23
      Width = 87
      Height = 21
      DataField = ''
      DataSource = dsAux
      TabOrder = 9
    end
    object btnAgregar: TBitBtn
      Left = 648
      Top = 53
      Width = 75
      Height = 25
      Caption = 'Agregar'
      TabOrder = 7
      OnClick = SpeedButton5Click
      Glyph.Data = {
        36030000424D3603000000000000360000002800000010000000100000000100
        18000000000000030000120B0000120B00000000000000000000FF00FFFF00FF
        FF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00
        FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FF03
        5D05035D05FF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FF
        FF00FFFF00FFFF00FFFF00FF035D055BF791058C0D035D05FF00FFFF00FFFF00
        FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FF035D055B
        F79105950E035D05FF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FF
        FF00FFFF00FFFF00FFFF00FF035D055BF79105920D035D05FF00FFFF00FFFF00
        FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FF035D055B
        F79106950F035D05FF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FF
        035D05035D05035D05035D05035D055BF7910C9C18035D05035D05035D05035D
        05035D05FF00FFFF00FFFF00FF035D055BF7913BDA6930CF572AC64D21B83C17
        A62B119F210D9E1C0A9A1506920E05930D058B0D035D05FF00FFFF00FF035D05
        5BF7915BF7915BF7915BF7915BF7915BF79118A92F5BF7915BF7915BF7915BF7
        915BF791035D05FF00FFFF00FFFF00FF035D05035D05035D05035D05035D055B
        F79125BC42035D05035D05035D05035D05035D05FF00FFFF00FFFF00FFFF00FF
        FF00FFFF00FFFF00FFFF00FF035D055BF79130CE57035D05FF00FFFF00FFFF00
        FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FF035D055B
        F7913BD968035D05FF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FF
        FF00FFFF00FFFF00FFFF00FF035D055BF79148EB7F035D05FF00FFFF00FFFF00
        FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FF035D055B
        F7915BF791035D05FF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FF
        FF00FFFF00FFFF00FFFF00FFFF00FF035D05035D05FF00FFFF00FFFF00FFFF00
        FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF
        00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FF}
    end
  end
  object pnlHead: TPanel
    Left = 8
    Top = 2
    Width = 768
    Height = 39
    TabOrder = 0
    object Label2: TLabel
      Left = 15
      Top = 10
      Width = 45
      Height = 13
      Caption = 'Venta #'
      FocusControl = DBEdit10
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object Label4: TLabel
      Left = 602
      Top = 10
      Width = 29
      Height = 13
      Caption = 'Fecha'
      FocusControl = DBEdit11
    end
    object DBEdit10: TDBEdit
      Left = 73
      Top = 7
      Width = 134
      Height = 21
      TabStop = False
      DataField = 'idventa'
      DataSource = dsVentas
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      ParentFont = False
      ReadOnly = True
      TabOrder = 0
    end
    object DBEdit11: TDBEdit
      Left = 644
      Top = 7
      Width = 109
      Height = 21
      TabStop = False
      DataField = 'fecha'
      DataSource = dsVentas
      ReadOnly = True
      TabOrder = 1
    end
    object Button1: TButton
      Left = 328
      Top = 3
      Width = 75
      Height = 25
      Caption = 'Nueva Venta'
      TabOrder = 2
      OnClick = Button1Click
    end
  end
  object pnlShip: TPanel
    Left = 8
    Top = 47
    Width = 768
    Height = 100
    TabOrder = 1
    object Label7: TLabel
      Left = 582
      Top = 47
      Width = 47
      Height = 13
      Caption = 'Tipo Pago'
      FocusControl = DBEdit12
    end
    object Label10: TLabel
      Left = 9
      Top = 3
      Width = 33
      Height = 13
      Caption = 'Cliente'
      FocusControl = edtClienteId
    end
    object Label13: TLabel
      Left = 9
      Top = 47
      Width = 43
      Height = 13
      Caption = 'Direccion'
      FocusControl = DBEdit14
    end
    object Label14: TLabel
      Left = 582
      Top = 4
      Width = 66
      Height = 13
      Caption = 'Condicion IVA'
      FocusControl = DBEdit15
    end
    object SpeedButton2: TSpeedButton
      Left = 48
      Top = 19
      Width = 23
      Height = 22
      Hint = 'Buscar'
      Flat = True
      Glyph.Data = {
        36030000424D3603000000000000360000002800000010000000100000000100
        18000000000000030000120B0000120B00000000000000000000FF00FF4A667C
        BE9596FF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00
        FFFF00FFFF00FFFF00FF6B9CC31E89E84B7AA3C89693FF00FFFF00FFFF00FFFF
        00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FF4BB4FE51B5FF
        2089E94B7AA2C69592FF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00
        FFFF00FFFF00FFFF00FFFF00FF51B7FE51B3FF1D87E64E7AA0CA9792FF00FFFF
        00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FF
        51B7FE4EB2FF1F89E64E7BA2B99497FF00FFFF00FFFF00FFFF00FFFF00FFFF00
        FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FF52B8FE4BB1FF2787D95F6A76FF
        00FFB0857FC09F94C09F96BC988EFF00FFFF00FFFF00FFFF00FFFF00FFFF00FF
        FF00FFFF00FF55BDFFB5D6EDBF9D92BB9B8CE7DAC2FFFFE3FFFFE5FDFADAD8C3
        B3B58D85FF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFCEA795FD
        EEBEFFFFD8FFFFDAFFFFDBFFFFE6FFFFFBEADDDCAE837FFF00FFFF00FFFF00FF
        FF00FFFF00FFFF00FFFF00FFC1A091FBDCA8FEF7D0FFFFDBFFFFE3FFFFF8FFFF
        FDFFFFFDC6A99CFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFC1A091FEE3ACF1
        C491FCF2CAFFFFDDFFFFE4FFFFF7FFFFF7FFFFE9EEE5CBB9948CFF00FFFF00FF
        FF00FFFF00FFFF00FFC2A191FFE6AEEEB581F7DCAEFEFDD8FFFFDFFFFFE3FFFF
        E4FFFFE0F3ECD2BB968EFF00FFFF00FFFF00FFFF00FFFF00FFBC978CFBE7B7F4
        C791F2C994F8E5B9FEFCD8FFFFDDFFFFDCFFFFE0E2D2BAB68E86FF00FFFF00FF
        FF00FFFF00FFFF00FFFF00FFD9C3A9FFFEE5F7DCB8F2C994F5D4A5FAE8BDFDF4
        C9FDFBD6B69089FF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFB58D85E8
        DEDDFFFEF2F9D8A3F4C48CF9D49FFDEAB8D0B49FB89086FF00FFFF00FFFF00FF
        FF00FFFF00FFFF00FFFF00FFFF00FFAD827FC9AA9EEFE0B7EFDFB2E7CEACB890
        86B89086FF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF
        00FFFF00FFBA968ABB988CB79188FF00FFFF00FFFF00FFFF00FF}
      OnClick = SpeedButton2Click
    end
    object edtClienteId: TDBEdit
      Left = 7
      Top = 20
      Width = 39
      Height = 21
      DataField = 'idcliente'
      DataSource = dsVentas
      TabOrder = 0
    end
    object DBEdit12: TDBEdit
      Left = 582
      Top = 65
      Width = 134
      Height = 21
      DataField = 'idtipopago'
      DataSource = dsVentas
      ReadOnly = True
      TabOrder = 4
    end
    object DBEdit13: TDBEdit
      Left = 73
      Top = 20
      Width = 503
      Height = 21
      DataField = 'Cliente'
      DataSource = dsVentas
      ReadOnly = True
      TabOrder = 1
    end
    object DBEdit14: TDBEdit
      Left = 9
      Top = 65
      Width = 567
      Height = 21
      DataField = 'ClienteDireccion'
      DataSource = dsVentas
      TabOrder = 3
    end
    object DBEdit15: TDBEdit
      Left = 582
      Top = 20
      Width = 134
      Height = 21
      DataField = 'ClienteCondIVA'
      DataSource = dsVentas
      ReadOnly = True
      TabOrder = 2
    end
  end
  object dsDetails: TDataSource
    DataSet = dm.cdsDetails
    Left = 696
    Top = 280
  end
  object dsAux: TDataSource
    DataSet = dm.cdsAux
    Left = 608
    Top = 200
  end
  object dsVentas: TDataSource
    DataSet = dm.cdsVentas
    Left = 560
    Top = 16
  end
end
