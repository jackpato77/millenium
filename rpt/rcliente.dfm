object frClientes: TfrClientes
  Left = 0
  Top = 0
  Caption = 'Listado Clientes'
  ClientHeight = 446
  ClientWidth = 782
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  Scaled = False
  PixelsPerInch = 96
  TextHeight = 13
  object qrpCliente: TQuickRep
    Left = 0
    Top = 0
    Width = 816
    Height = 1056
    Frame.Color = clBlack
    Frame.DrawTop = False
    Frame.DrawBottom = False
    Frame.DrawLeft = False
    Frame.DrawRight = False
    DataSet = dm.cdsClientes
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -13
    Font.Name = 'Arial'
    Font.Style = []
    Functions.Strings = (
      'PAGENUMBER'
      'COLUMNNUMBER'
      'REPORTTITLE')
    Functions.DATA = (
      '0'
      '0'
      #39#39)
    Options = [FirstPageHeader, LastPageFooter]
    Page.Columns = 1
    Page.Orientation = poPortrait
    Page.PaperSize = Letter
    Page.Values = (
      127.000000000000000000
      2794.000000000000000000
      127.000000000000000000
      2159.000000000000000000
      127.000000000000000000
      127.000000000000000000
      0.000000000000000000)
    PrinterSettings.Copies = 1
    PrinterSettings.OutputBin = Auto
    PrinterSettings.Duplex = False
    PrinterSettings.FirstPage = 0
    PrinterSettings.LastPage = 0
    PrinterSettings.UseStandardprinter = False
    PrinterSettings.UseCustomBinCode = False
    PrinterSettings.CustomBinCode = 0
    PrinterSettings.ExtendedDuplex = 0
    PrinterSettings.UseCustomPaperCode = False
    PrinterSettings.CustomPaperCode = 0
    PrinterSettings.PrintMetaFile = False
    PrinterSettings.PrintQuality = 0
    PrinterSettings.Collate = 0
    PrinterSettings.ColorOption = 0
    PrintIfEmpty = True
    SnapToGrid = True
    Units = Inches
    Zoom = 100
    PrevFormStyle = fsNormal
    PreviewInitialState = wsNormal
    PrevInitialZoom = qrZoomToFit
    PreviewDefaultSaveType = stQRP
    object QRBand1: TQRBand
      Left = 48
      Top = 48
      Width = 720
      Height = 105
      Frame.Color = clBlack
      Frame.DrawTop = False
      Frame.DrawBottom = False
      Frame.DrawLeft = False
      Frame.DrawRight = False
      AlignToBottom = False
      Color = clWhite
      TransparentBand = False
      ForceNewColumn = False
      ForceNewPage = False
      Size.Values = (
        277.812500000000000000
        1905.000000000000000000)
      PreCaluculateBandHeight = False
      KeepOnOnePage = False
      BandType = rbPageHeader
      object QRImage1: TQRImage
        Left = 9
        Top = 4
        Width = 76
        Height = 78
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          206.375000000000000000
          23.812500000000000000
          10.583333333333330000
          201.083333333333300000)
        Picture.Data = {
          0A544A504547496D616765A50C0000FFD8FFE000104A46494600010101006000
          600000FFDB004300020101020101020202020202020203050303030303060404
          0305070607070706070708090B0908080A0807070A0D0A0A0B0C0C0C0C07090E
          0F0D0C0E0B0C0C0CFFDB004301020202030303060303060C0807080C0C0C0C0C
          0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C
          0C0C0C0C0C0C0C0C0C0C0C0C0CFFC00011080054004603012200021101031101
          FFC4001F0000010501010101010100000000000000000102030405060708090A
          0BFFC400B5100002010303020403050504040000017D01020300041105122131
          410613516107227114328191A1082342B1C11552D1F02433627282090A161718
          191A25262728292A3435363738393A434445464748494A535455565758595A63
          6465666768696A737475767778797A838485868788898A92939495969798999A
          A2A3A4A5A6A7A8A9AAB2B3B4B5B6B7B8B9BAC2C3C4C5C6C7C8C9CAD2D3D4D5D6
          D7D8D9DAE1E2E3E4E5E6E7E8E9EAF1F2F3F4F5F6F7F8F9FAFFC4001F01000301
          01010101010101010000000000000102030405060708090A0BFFC400B5110002
          0102040403040705040400010277000102031104052131061241510761711322
          328108144291A1B1C109233352F0156272D10A162434E125F11718191A262728
          292A35363738393A434445464748494A535455565758595A636465666768696A
          737475767778797A82838485868788898A92939495969798999AA2A3A4A5A6A7
          A8A9AAB2B3B4B5B6B7B8B9BAC2C3C4C5C6C7C8C9CAD2D3D4D5D6D7D8D9DAE2E3
          E4E5E6E7E8E9EAF2F3F4F5F6F7F8F9FAFFDA000C03010002110311003F00FDFC
          AFE7A3FE0BE1FB6FFC65F827FF000534F1D683E10F8AFF00127C31A15A5B6986
          0D374AF135F595A405EC6277291452AA296624920724E6BF74353F8CF7D65AA5
          E40B656852DEE65854966CB04919413F5DB9AFE727FE0E0DD7A4F127FC14FF00
          C7B792C6913C96FA582A8490316110EF401ECFFB3D7ECD7FB76FED3FF06FC3FE
          3AF09FED21AFDCE85E24B7FB45B19BE24EAE92C7862AD1C8BB8ED7565208CF04
          57C8BE35FF0082877ED39F0F7C65ABE81AAFC70F8C56DAA687793585E447C67A
          9E639A2728E3FD7FF794D7DD5FF06D07ED55F68B2F18FC1BD4AE4EF83FE2A2D0
          D5DBF80954BA8D7E87CB7C7BB1AF05FF008385FF0065B1F057F6C98BC6D616DE
          568DF136D7EDCE55708B7F1612E07D58796FF563401F3E7FC3CF7F68DFFA2EDF
          187FF0B4D4FF00F8FD1FF0F3DFDA37FE8BB7C61FFC2D353FFE3F5E1545007D5F
          F013F6BCFDA93F685D6B5FB5D2FF00681F89FA6DBF86742BCF10EA37B7FE37D5
          52DEDADAD9373648989DCEC5514776715FAEDFF06C5FC7FF001D7ED07FB327C4
          4D47C77E32F15F8CAFACFC4D1436D71AEEAD71A8CB6D19B385CC68D33B155DC4
          9C038C935F8D108FF8678FF8273C92FF00AAF11FC7AD57CA4ECF1683A73E58FF
          00BB35D903DC5BD7EA07FC1ADFE3CB9F087ECB1F126386DE09964F1442C4C848
          23FD062F4FA5007EC5515C5780BE275D78B3C4DF619AD6DE2436B24FBD189395
          78D71CFF00D74FD28A00F3DD7BFE461D4FFEC2173FFA3DEBF9EBFF0082F58CFF
          00C14A7C73FF005C34CFFD218ABFA14D7BFE461D4FFEC2173FFA3DEBF9F9FF00
          82E1F86EF3C65FF054EF14E8FA744B3EA3AAB691676B11754124B259C4A8BB98
          8032C40C9205007CEFFB137ED1F75FB257ED4FE0BF1F5B3BAC5A16A086F514FF
          00AEB47FDDCE87D731B37E2057EDF7FC167FF671B6FDAFFF00E09EDAAEADA222
          6A1A9785218FC59A2CB18DC67855374AAA7B878198E3B955AFC6DF8B1FF04B3F
          8FFF0003FE1F6ABE29F15FC34D6348F0FE89179D7D78F3C0EB6E9B82EE215C9C
          648E82BF5E3FE0837FB4F47FB4A7EC276BE17D5A54BCD5FE1E39F0FDE4721DCD
          35932936ECC0F51E5EE8FF00ED9D007E03A90CB91C83CD745F093E18EA7F1ABE
          28F87BC21A2C665D57C4BA843A75B28ECF2385DC7D80249F606BD1FF00E0A17F
          B32CBFB227ED87E37F03F94F1E9F657C6EB4B623892CA6FDE4247AE15B6FD54D
          75BFB07C63E09FC3CF89DF1CAE9424BE0AD2FF00B03C34CC3FD66B7A8AB451B2
          FBC36FE7CBEDF29A00E6BFE0A15F12F4CF1CFED1975A1F86E40FE0EF87367078
          3F40DBF75EDAC8796F30F7966F36427BEFAFD42FF83674FF00C62F7C44FF00B1
          9A0FFD228ABF1CECBE0FF89354F847A8F8F52C19BC2DA6EA7169173A83CAAB9B
          B951A458D549DCE76A9248071919EB5FB17FF06CF7FC9AFF00C44FFB1960FF00
          D228A803F537E0C7FC9425FF00B075C7FE8CB7A28F831FF25097FEC1D71FFA32
          DE8A00C2D7BFE461D4FF00EC2173FF00A3DEBF9ECFF82F34AF07FC14BBC6EF1B
          B472243A632B29C1522CA2208F706BFA13D7BFE461D4FF00EC2173FF00A3DEBF
          9EBFF82F5F1FF0529F1CFF00D70D33FF004862A00FD6EFD81FE33E97FF000516
          FF00827469127881D2FA7D63499BC35E258CF2C2E113C99188F5652920FF0078
          57E63FFC127FE21EA5FF0004ECFF0082ABEB3F0B7C4D31B6D3F5EBE9BC237C64
          3B50CCB216B29FE8C76807D26AEABFE0DB5FDAA3FE103F8F5E23F855A95CECD3
          BC6F6BFDA3A62B1F956FADD7E651EF2439FA988568FF00C1C7BFB385CFC31F8F
          9E0DF8CDA1235AAF88D16C6F6E22E0C3A85AE1E1909EC5A30307FE98D007A3FF
          00C1CBDFB2D1D6BC13E0FF008BFA7DB16B8D0E4FF847F58645E4DBC8C5EDDDBF
          DD937AFF00DB415F09FEDB4BFF000A13E02FC29F82517C9A8E9763FF00099F8A
          A35FBC755D4103450B7FB50DAF96B8EC646AFDA9F86FF1E7C0BFB697FC134AD3
          C7BE3A82D6FF00C2F73A17F68788EDE43858EE2C887994FA112C391F51EB5F8B
          3FB3C5F8FDB37F6FED6BE23F8DD77F87B4A9EF3C79E240DF723B1B5FDEA5BFB0
          62208147FB4050051FDB6F3F047E14FC31F8270B79775E19D37FE126F13C6A7A
          EB3A8A2C9E5BFF00B505B7931FB12D5FA47FF06CF7FC9AFF00C44FFB1960FF00
          D228ABF1CBE31FC52D4BE37FC58F1278C75890C9A9F89B529F51B83D95A472C1
          47B282140EC1457EC6FF00C1B3DFF26BFF00113FEC6583FF0048A2A00FD4DF83
          1FF25097FEC1D71FFA32DE8A3E0C7FC9425FFB075C7FE8CB7A28030B5EFF0091
          8753FF00B085CFFE8F7AFE7AFF00E0BD7FF2929F1CFF00D70D33FF004862AFE8
          535EFF00918753FF00B085CFFE8F7AFE7AFF00E0BD7FF2929F1CFF00D70D33FF
          004862A00F96BE097C5BD4FE02FC5FF0D78D346764D4FC31A8C3A841838DE636
          04A1F665CA9F635FD077EDC9F0AB4AFF008291FF00C1357537F0F88EEE4D7F43
          87C51E1C900C95B948FCE8D07A1237C47FDE35FCE49AFDB8FF0083707F6A9FF8
          593FB366B7F0CB50B90FAA7C3EBAFB45823B7CCF6170C5801EC92EF1EC1D6803
          F2E3E1DFEDDFE2EF861FB1378E3E065AC20687E33D521BE96E1E5659AC5571E7
          C0AB8E9298E2DDC8C6C6E3E635D242BFF0CE5FF04DB9251FB9F137C7ED5BC953
          D248B40D39F2DEFB66BB207A1101AEC3FE0A59FB04EA9F0FFF00E0A8571F0FBC
          3764CB6BF13B538350F0FAAAFC812F2521C0F68A51283E816BCC3FE0A2DF13B4
          CF1CFED2377A1786E50FE0DF86F670783F40DA7E47B7B35F2DE61EF2CDE6C84F
          7DD401E135FB63FF0006CF7FC9AFFC44FF00B1960FFD228ABF13ABF6CBFE0D9E
          1FF18BBF113FEC6683FF0048A2A00FD4CF831FF25097FEC1D71FFA32DE8A3E0C
          7FC9425FFB075C7FE8CB7A28039FD7E745F116A60BA82350B9E33FF4DDEBF9ED
          FF0082F4B06FF829478E48208F234CE9FF005E3157F50ED6103B12618893C925
          0735FCCD7FC1C788B0FF00C1573E20850AA3ECBA4F00607FC83E2A00F846BE91
          FF00824C7ED4FF00F0C91FB72783F5DBAB830681ACCDFD85ACF3F2FD9AE084DE
          7FDC93CB7FF809AF9B778A37E3A120F623A8A00FE84FFE0B0B37853E087C1C8F
          E375E46BFF0009E7822C6F344F09C831F35D6A31F921CFAF94BBE55F420D7F3D
          A599D89666766392C4E4B1EE4D7D4FFB78FF00C14D355FDB4FE007C21F05DCC1
          7B6F278174DC6B734AE0AEAB7E079492AE0FDD10A8393CEE91FD2BE57DE28016
          BF6C3FE0D9F9157F65EF88A0B283FF0009341D4FFD39455F89DBC57EFB7FC1A6
          704737EC99F138BA23FF00C5570F2CA0FF00CB843401FA0FF05A457F884B8607
          1A75C743FF004D2DE8AF588AD6285F72471A1C632AA01A28024AF87BF6CDFF00
          8203FC1BFDB97F686D67E25F8B7C47F1334ED7B5C8ADE2B88347D4ECE1B45104
          4B1215492D646076A8CE58F39E9D28A2803CB3FE214EFD9E3FE871F8D1FF0083
          9D3BFF009068FF008853BF678FFA1C7E347FE0E74EFF00E41A28A003FE214EFD
          9E3FE871F8D1FF00839D3BFF009068FF008853BF678FFA1C7E347FE0E74EFF00
          E41A28A003FE214EFD9E3FE871F8D1FF00839D3BFF00906BEB2FF827AFFC1373
          C0BFF04D6F87DAF786FC09AA78B355B1F116A2353BA935EBB82E2659444B1610
          C50C402ED51C104E7BD145007D0545145007FFD9}
      end
      object QRLabel1: TQRLabel
        Left = 250
        Top = 4
        Width = 176
        Height = 34
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          89.958333333333330000
          661.458333333333300000
          10.583333333333330000
          465.666666666666700000)
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = True
        AutoStretch = False
        Caption = 'VITRIU VIDRIOS'
        Color = clWhite
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -27
        Font.Name = 'Calibri'
        Font.Style = [fsBold]
        ParentFont = False
        Transparent = False
        WordWrap = True
        ExportAs = exptText
        FontSize = 20
      end
      object QRMemo1: TQRMemo
        Left = 154
        Top = 40
        Width = 367
        Height = 51
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          134.937500000000000000
          407.458333333333300000
          105.833333333333300000
          971.020833333333300000)
        Alignment = taCenter
        AlignToBand = False
        AutoSize = True
        AutoStretch = False
        Color = clWhite
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -12
        Font.Name = 'Calibri'
        Font.Style = []
        Lines.Strings = (
          'Cristales, Espejos, Templados, Policarbonatos'
          'E-mail: info@vitriuvidrios.com'
          
            'Espa'#241'a 1234 - S.M. de Tucum'#225'n -  Tel.Fax: (0381) 432-4996  / 433' +
            '-0469')
        ParentFont = False
        Transparent = False
        WordWrap = True
        FontSize = 9
      end
    end
    object QRBand2: TQRBand
      Left = 48
      Top = 153
      Width = 720
      Height = 24
      Frame.Color = clBlack
      Frame.DrawTop = False
      Frame.DrawBottom = False
      Frame.DrawLeft = False
      Frame.DrawRight = False
      AlignToBottom = False
      Color = clWhite
      TransparentBand = False
      ForceNewColumn = False
      ForceNewPage = False
      Size.Values = (
        63.500000000000000000
        1905.000000000000000000)
      PreCaluculateBandHeight = False
      KeepOnOnePage = False
      BandType = rbTitle
      object QRLabel2: TQRLabel
        Left = 256
        Top = 4
        Width = 146
        Height = 17
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          44.979166666666670000
          677.333333333333300000
          10.583333333333330000
          386.291666666666700000)
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = True
        AutoStretch = False
        Caption = 'LISTADO DE CLIENTES'
        Color = clWhite
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'Arial'
        Font.Style = [fsBold, fsUnderline]
        ParentFont = False
        Transparent = False
        WordWrap = True
        ExportAs = exptText
        FontSize = 10
      end
    end
    object QRBand3: TQRBand
      Left = 48
      Top = 211
      Width = 720
      Height = 24
      Frame.Color = clBlack
      Frame.DrawTop = False
      Frame.DrawBottom = False
      Frame.DrawLeft = False
      Frame.DrawRight = False
      AlignToBottom = False
      Color = clWhite
      TransparentBand = False
      ForceNewColumn = False
      ForceNewPage = False
      Size.Values = (
        63.500000000000000000
        1905.000000000000000000)
      PreCaluculateBandHeight = False
      KeepOnOnePage = False
      BandType = rbDetail
      object QRDBText1: TQRDBText
        Left = 68
        Top = 3
        Width = 22
        Height = 17
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          44.979166666666670000
          179.916666666666700000
          7.937500000000000000
          58.208333333333330000)
        Alignment = taRightJustify
        AlignToBand = False
        AutoSize = True
        AutoStretch = False
        Color = clWhite
        DataSet = dm.cdsClientes
        DataField = 'cuit'
        Transparent = False
        WordWrap = True
        ExportAs = exptText
        FontSize = 10
      end
      object QRDBText2: TQRDBText
        Left = 96
        Top = 3
        Width = 44
        Height = 17
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          44.979166666666670000
          254.000000000000000000
          7.937500000000000000
          116.416666666666700000)
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = True
        AutoStretch = False
        Color = clWhite
        DataSet = dm.cdsClientes
        DataField = 'nombre'
        Transparent = False
        WordWrap = True
        ExportAs = exptText
        FontSize = 10
      end
      object QRDBText3: TQRDBText
        Left = 560
        Top = 3
        Width = 46
        Height = 17
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          44.979166666666670000
          1481.666666666667000000
          7.937500000000000000
          121.708333333333300000)
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = True
        AutoStretch = False
        Color = clWhite
        DataSet = dm.cdsClientes
        DataField = 'telefono'
        Transparent = False
        WordWrap = True
        ExportAs = exptText
        FontSize = 10
      end
    end
    object QRBand4: TQRBand
      Left = 48
      Top = 177
      Width = 720
      Height = 34
      Frame.Color = clBlack
      Frame.DrawTop = False
      Frame.DrawBottom = False
      Frame.DrawLeft = False
      Frame.DrawRight = False
      AlignToBottom = False
      Color = clWhite
      TransparentBand = False
      ForceNewColumn = False
      ForceNewPage = False
      Size.Values = (
        89.958333333333330000
        1905.000000000000000000)
      PreCaluculateBandHeight = False
      KeepOnOnePage = False
      BandType = rbColumnHeader
      object QRLabel3: TQRLabel
        Left = 61
        Top = 6
        Width = 29
        Height = 17
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          44.979166666666670000
          161.395833333333300000
          15.875000000000000000
          76.729166666666670000)
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = True
        AutoStretch = False
        Caption = 'CUIT'
        Color = clWhite
        Transparent = False
        WordWrap = True
        ExportAs = exptText
        FontSize = 10
      end
      object QRLabel4: TQRLabel
        Left = 96
        Top = 6
        Width = 41
        Height = 17
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          44.979166666666670000
          254.000000000000000000
          15.875000000000000000
          108.479166666666700000)
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = True
        AutoStretch = False
        Caption = 'Cliente'
        Color = clWhite
        Transparent = False
        WordWrap = True
        ExportAs = exptText
        FontSize = 10
      end
      object QRLabel5: TQRLabel
        Left = 560
        Top = 6
        Width = 49
        Height = 17
        Frame.Color = clBlack
        Frame.DrawTop = False
        Frame.DrawBottom = False
        Frame.DrawLeft = False
        Frame.DrawRight = False
        Size.Values = (
          44.979166666666670000
          1481.666666666667000000
          15.875000000000000000
          129.645833333333300000)
        Alignment = taLeftJustify
        AlignToBand = False
        AutoSize = True
        AutoStretch = False
        Caption = 'Telefono'
        Color = clWhite
        Transparent = False
        WordWrap = True
        ExportAs = exptText
        FontSize = 10
      end
    end
  end
end
