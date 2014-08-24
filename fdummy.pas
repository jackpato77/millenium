unit fdummy;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, ExtCtrls, StdCtrls, ComCtrls, JvExComCtrls, JvListView, fBase, Buttons, DB, Mask, DBCtrls, ucore;

type
  TForm4 = class(TfrmBase)
    edtPedido: TEdit;
    BitBtn1: TBitBtn;
    DataSource1: TDataSource;
    edtFecha: TDBEdit;
    BitBtn2: TBitBtn;
    procedure BitBtn1Click(Sender: TObject);
    procedure BitBtn2Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  Pedido: TPedido;
  end;

var
  Form4: TForm4;

implementation

uses udmvm, uutils;
{$R *.dfm}

procedure TForm4.BitBtn1Click(Sender: TObject);
begin
  Pedido:=TPedido.Create(edtPedido.Text);

  DataSource1.DataSet:=Pedido.DataSet as TDataSet;
end;

procedure TForm4.BitBtn2Click(Sender: TObject);
begin
  Pedido.Save;
end;


end.
