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
    procedure dbgBrowseDblClick(Sender: TObject);
    procedure actImprimirExecute(Sender: TObject);
    procedure FormShow(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmClientes: TfrmClientes;

implementation

uses udmvm, rcliente, uutils;
{$R *.dfm}

procedure TfrmClientes.actImprimirExecute(Sender: TObject);
var
 rp: TrLClientes;
begin
  inherited;
  if pgcCRUD.ActivePageIndex=0 then
  begin
    rp:=TrLClientes.Create(self);
    rp.qrpCliente.Preview;
    rp.free;
  end;
end;

procedure TfrmClientes.dbgBrowseDblClick(Sender: TObject);
begin
  inherited;
  dsBrowse.Dataset.Edit;
end;

procedure TfrmClientes.FormShow(Sender: TObject);
begin
  inherited;
  dm.tblClientes.Open;
  SetDBGridColumnsCaption(dbgBrowse, MainDataSet.FieldDefs);

end;

end.
