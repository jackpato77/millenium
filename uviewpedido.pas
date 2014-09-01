unit uviewpedido;

interface

uses
  DB, UModelPedido, Classes;

type
  TViewPedido = class
  private
    FModel: TModelPedido;
  public
    constructor Create;
    destructor Destroy; override;

    property PedidoCDS: TDataset read GetPedidoCDS;
    property Nro: integer read GetNro;
    property ClienteId: integer read GetClienteId;

  end;

implementation

{ TViewPedido }

constructor TViewPedido.Create;
begin
  inherited;
  FModel := TModelPedido.Create;
end;

destructor TViewPedido.Destroy;
begin
  FModel.Free;
  inherited;
end;

end.
