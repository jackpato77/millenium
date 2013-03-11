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

  TLineaList = class;
  TLinea = class
    FIdLinea: integer;
    FIdMaster: integer;
    FMaster: string;
    FIdArticulo: integer;
    FPrecio: double;
    FCantidad: double;
    FBase: double;
    FAlto: double;
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

  TPresupuesto = class(TObject)
    private
      FId: integer;
      FFecha: TDateTime;
      FClienteId: integer;
      FObservaciones: TStrings;
      FItems: TLineaList;
  end;

  TCliente = class(TObject)
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
      FCajaId: integer;
      FFecha: TDateTime;
      FClienteId: integer;
      FImporte: currency;
      FTipoMov: integer;
  end;

implementation

end.
