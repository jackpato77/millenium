inherited frmBase1: TfrmBase1
  Caption = 'frmBase1'
  ClientWidth = 739
  ExplicitWidth = 755
  ExplicitHeight = 294
  PixelsPerInch = 96
  TextHeight = 13
  object Button1: TButton
    Left = 656
    Top = 1
    Width = 75
    Height = 25
    Caption = 'Button1'
    TabOrder = 0
    OnClick = Button1Click
  end
  object DBGrid1: TDBGrid
    Left = 16
    Top = 32
    Width = 715
    Height = 216
    DataSource = DataSource1
    TabOrder = 1
    TitleFont.Charset = DEFAULT_CHARSET
    TitleFont.Color = clWindowText
    TitleFont.Height = -11
    TitleFont.Name = 'Tahoma'
    TitleFont.Style = []
  end
  object ClientDataSet1: TClientDataSet
    Active = True
    Aggregates = <>
    Params = <>
    ProviderName = 'DataSetProvider1'
    Left = 120
    Top = 8
  end
  object DataSource1: TDataSource
    DataSet = ClientDataSet1
    Left = 184
    Top = 8
  end
  object SQLConnection1: TSQLConnection
    ConnectionName = 'MySQLConnection'
    DriverName = 'MySQL'
    GetDriverFunc = 'getSQLDriverMYSQL'
    LibraryName = 'dbxmys30.dll'
    LoginPrompt = False
    Params.Strings = (
      'DriverName=MySQL'
      'HostName=127.0.0.1'
      'Database=dbmillenium'
      'User_Name=root'
      'Password=gabiru22'
      'BlobSize=-1'
      'ErrorResourceFile='
      'LocaleCode=0000'
      'Compressed=False'
      'Encrypted=False')
    VendorLib = 'libmysql.dll'
    Connected = True
    Left = 16
    Top = 8
  end
  object SQLQuery1: TSQLQuery
    MaxBlobSize = -1
    Params = <>
    SQL.Strings = (
      'select c.*'
      'from information_schema.tables t '
      
        'left join information_schema.columns c on t.table_schema = c.tab' +
        'le_schema and t.table_name = c.table_name '
      'where t.table_schema = '#39'dbmillenium'#39';')
    SQLConnection = SQLConnection1
    Left = 48
    Top = 8
  end
  object DataSetProvider1: TDataSetProvider
    DataSet = SQLQuery1
    Left = 152
    Top = 8
  end
  object cds2: TClientDataSet
    Aggregates = <>
    Params = <>
    Left = 296
    Top = 8
  end
end
