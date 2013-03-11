unit rdmvm;

interface

uses
  SysUtils, Classes, DB, MemDS, DBAccess, MyAccess;

type
  Trdm = class(TDataModule)
    RConx: TMyConnection;
    qryPto: TMyQuery;
    qryLin: TMyQuery;
    dsPto: TDataSource;
    qryLinprecio: TFloatField;
    qryLinsubtotal: TFloatField;
    qryLinidlinea: TIntegerField;
    qryLinidarticulo: TIntegerField;
    qryLindenominacion: TStringField;
    qryLinumcompra: TStringField;
    qryLinbase: TFloatField;
    qryLinalto: TFloatField;
    qryLincantidad: TIntegerField;
    qryArt: TMyQuery;
    qryCli: TMyQuery;
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  rdm: Trdm;

implementation

{$R *.dfm}

end.
