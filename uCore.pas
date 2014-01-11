unit uCore;

interface

uses Classes, Contnrs, DBCLient;

type
  TMeta = class
    private
      table_catalog,
      table_schema,
      table_name,
      column_name: string;
      ordinal_position: integer;
      is_nullable: boolean;
      data_type: string;
      character_maximun_lenght,
      numeric_precision,
      numeric_scale: integer;
      column_key,
      extra: string;
  end;

  TORMEntity = class
    constructor Create; virtual; abstract;
    class function Find(aModelName: string; aId: integer): TORMEntity; virtual;
    function Save: boolean; virtual; abstract;
  end;
  TORMEntityClass = class of TORMEntity;

  TORMDBCnx = class
    constructor Create; virtual; abstract;
  end;

  TLineaList = class;
  TLinea = class(TORMEntity)
  private
    FAlto: double;
    FBase: double;
    FCantidad: double;
    FIdArticulo: integer;
    FIdLinea: integer;
    FIdMaster: integer;
    FMaster: string;
    FPrecio: double;
  public
    property Alto: double read FAlto write FAlto;
    property Base: double read FBase write FBase;
    property Cantidad: double read FCantidad write FCantidad;
    property IdArticulo: integer read FIdArticulo write FIdArticulo;
    property IdLinea: integer read FIdLinea write FIdLinea;
    property IdMaster: integer read FIdMaster write FIdMaster;
    property Master: string read FMaster write FMaster;
    property Precio: double read FPrecio write FPrecio;
  end;

  TLineaList = class
  private
    FList: TList;
//    function GetCount: integer;
//    function GetItem(Index: integer): TLinea;
  public
//    constructor Create;
//    destructor Destroy; override;
//    procedure Clear;
//    procedure Add(aItem: TLinea);
//    property Count: integer read GetCount;
//    property Items[Index: integer]: TLinea read GetItem; default;
  end;

  TCliente = class(TORMEntity)
    private
      FData: TClientDataSet;
      FId: integer;
      FNombre: string;
      FApellido: string;
      FDomicilio: string;
      FTelefono: string;
      FCUIT: string;

    public
      //property Nombre: string read GetNombre write SetNombre;
      class function Find(aId: integer): TCliente;
  end;

  TPresupuesto = class(TObject)
    private
      FId: integer;
      FFecha: TDateTime;
      FCliente: TCliente;
      FObservaciones: TStrings;
      FItems: TLineaList;
    public
      property Cliente: TCliente read FCliente write FCliente;
      property Id: integer read FId write FId;
      property Fecha: TDateTime read FFecha write FFecha;
      property Observaciones: TStrings read FObservaciones write FObservaciones;
  end;


  TArticulo = class(TObject)
    private
      FId: integer;
      FNombre: string;
      FUndMedida: string;
      FCosto: string;
      FRubroId: integer;
      FSubrubroId: integer;
  end;

  TCaja = class(TObject)
    private
      FId: integer;
      FFecha: TDateTime;
      FClienteId: integer;
      FImporte: currency;
      FTipoMov: integer;
  end;

implementation

{ TORMEntity }

class function TCliente.Find(aId: integer): TCliente;
begin
  //result:=inherited TORMEntity.Find(self.ClassName,aId);
end;

{ TORMEntity }

class function TORMEntity.Find(aModelName: string; aId: integer): TORMEntity;
begin
  
end;

end.
