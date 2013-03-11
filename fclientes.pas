unit fclientes;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, fcrud, DB, StdActns, DBActns, ActnList, ImgList, Grids, DBGrids,
  ComCtrls, ToolWin, StdCtrls, Mask, DBCtrls;

type
  TfrmClientes = class(TfrmCRUD)
    Label1: TLabel;
    DBEdit1: TDBEdit;
    Label2: TLabel;
    DBEdit2: TDBEdit;
    Label3: TLabel;
    DBEdit3: TDBEdit;
    Label4: TLabel;
    DBEdit4: TDBEdit;
    Label5: TLabel;
    DBEdit5: TDBEdit;
    Label6: TLabel;
    DBEdit6: TDBEdit;
    Label7: TLabel;
    DBEdit7: TDBEdit;
    Label8: TLabel;
    DBEdit8: TDBEdit;
    Label9: TLabel;
    DBEdit9: TDBEdit;
    Label10: TLabel;
    DBEdit10: TDBEdit;
    Label11: TLabel;
    DBEdit11: TDBEdit;
    Label12: TLabel;
    DBEdit12: TDBEdit;
    Label13: TLabel;
    DBEdit13: TDBEdit;
    Label14: TLabel;
    DBEdit14: TDBEdit;
    Label15: TLabel;
    DBEdit15: TDBEdit;
    Label16: TLabel;
    DBEdit16: TDBEdit;
    procedure dbgBrowseDblClick(Sender: TObject);
    procedure actImprimirExecute(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmClientes: TfrmClientes;

implementation

uses udmvm, rcliente;
{$R *.dfm}

procedure TfrmClientes.actImprimirExecute(Sender: TObject);
var
 rp: TfrClientes;
begin
  inherited;
  if pgcCRUD.ActivePageIndex=0 then
  begin
    rp:=TfrClientes.Create(self);
    rp.qrpCliente.Preview;
    rp.free;
  end;
end;

procedure TfrmClientes.dbgBrowseDblClick(Sender: TObject);
begin
  inherited;
  dsBrowse.Dataset.Edit;
end;

end.
