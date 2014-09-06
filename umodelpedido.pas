unit umodelpedido;

interface

uses
  DB, DBClient, SysUtils;

type
  TModelPedido = class
  private
    cdsPedido: TClientDataset;
  public
    constructor Create;
    destructor Destroy; override;

  end;

implementation

end.
