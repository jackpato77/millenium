unit fcajas;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, fbase, StdCtrls, JvExStdCtrls, JvCombobox, JvDBSearchComboBox, Mask, DBCtrls, JvEdit, JvDBSearchEdit,
  ComCtrls, Buttons, ExtCtrls, Grids, DBGrids, rxToolEdit, rxCurrEdit;

type
  TfrmCajas = class(TfrmBase)
    Panel1: TPanel;
    pnlGrid: TPanel;
    pnlTotal: TPanel;
    pnlBar: TPanel;
    BitBtn1: TBitBtn;
    BitBtn2: TBitBtn;
    BitBtn3: TBitBtn;
    BitBtn4: TBitBtn;
    pnlHead: TPanel;
    edtFecha: TDateTimePicker;
    edtConcepto: TJvDBSearchEdit;
    edtCliente: TJvDBSearchComboBox;
    DBGrid1: TDBGrid;
    BitBtn5: TBitBtn;
    edtImporte: TCurrencyEdit;
    edtTotal: TCurrencyEdit;
    procedure BitBtn5Click(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure FormCreate(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmCajas: TfrmCajas;

implementation

uses udmvm;

{$R *.dfm}

procedure TfrmCajas.BitBtn5Click(Sender: TObject);
begin
  inherited;
  dm.tblCajas.Open;
  dm.tblCajas.Insert;
  with dm.tblCajas do
  begin
    FieldByName('Importe').Value:=edtImporte.Value;
    FieldByName('IdCliente').Value:=edtCliente.GetResult;
    FieldByName('IdConcepto').Value:=edtConcepto.GetResult;
    FieldByName('FechaHora').Value:=Now;
    FieldByName('Fecha').Value:=edtFecha.Date;
  end;
  dm.tblCajas.Post;
  dm.qryCajaSaldo.Close;
  dm.qryCajaSaldo.ParamByName('fecha').Value:=Date;
  dm.qryCajaSaldo.Open;
  if dm.qryCajaSaldo.RecordCount>0 then
  edtTotal.Value:=dm.qryCajaSaldo.FieldByName('total').Value;
end;

procedure TfrmCajas.FormCreate(Sender: TObject);
begin
  inherited;
  with dm do
  begin
    tblCajas.Open;
    dsCajas.Enabled:=true;
  end;
end;

procedure TfrmCajas.FormShow(Sender: TObject);
begin
  inherited;
  edtFecha.Date:=Date;

end;

end.
