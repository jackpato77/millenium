unit farticulos;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, fcrud, StdCtrls, Mask, DBCtrls, DB, StdActns, DBActns, ActnList,
  ImgList, Grids, DBGrids, ComCtrls, ToolWin, ExtCtrls, JvExStdCtrls, JvCombobox, JvDBSearchComboBox, JvEdit,
  JvDBSearchEdit, rxToolEdit, rxCurrEdit, RxLookup, JvExComCtrls, JvDBTreeView;

type
  TfrmArticulos = class(TfrmCRUD)
    ToolButton11: TToolButton;
    actPrecios: TAction;
    ToolButton12: TToolButton;
    Label1: TLabel;
    DBEdit1: TDBEdit;
    Label2: TLabel;
    DBEdit2: TDBEdit;
    Label3: TLabel;
    DBEdit3: TDBEdit;
    Label4: TLabel;
    DBEdit4: TDBEdit;
    Label7: TLabel;
    DBMemo1: TDBMemo;
    Label8: TLabel;
    Label9: TLabel;
    RxDBLookupCombo1: TRxDBLookupCombo;
    RxDBLookupCombo2: TRxDBLookupCombo;
    JvDBTreeView1: TJvDBTreeView;
    Splitter1: TSplitter;
    procedure actPreciosExecute(Sender: TObject);
    procedure dtsPostExecute(Sender: TObject);
    procedure dtsCancelExecute(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure dbgBrowseDblClick(Sender: TObject);
    procedure JvDBTreeView1Change(Sender: TObject; Node: TTreeNode);
    procedure ToolButton4Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmArticulos: TfrmArticulos;

implementation

uses udmvm, fprecios, uutils, rarticulo;
{$R *.dfm}

procedure TfrmArticulos.actPreciosExecute(Sender: TObject);
var
  fPrecios: TfrmPrecios;
begin
  inherited;
  fPrecios:=TfrmPrecios.Create(self);
  try
    fPrecios.ShowModal;
  finally
    fPrecios.free
  end;
end;

procedure TfrmArticulos.dbgBrowseDblClick(Sender: TObject);
begin
  inherited;
  dsBrowse.DataSet.Edit;
end;

procedure TfrmArticulos.dtsCancelExecute(Sender: TObject);
begin
  inherited;
  pgcCRUD.ActivePageIndex:=0;
end;

procedure TfrmArticulos.dtsPostExecute(Sender: TObject);
begin
  inherited;
  pgcCRUD.ActivePageIndex:=0;
end;

procedure TfrmArticulos.FormShow(Sender: TObject);
begin
  inherited;
  dm.tblRubros.Open;
  dm.tblSubRubros.Open;
  dm.tblArticulos.Open;
  dm.tblRubros.Open;
  dm.tblSubrubros.Open;
  //SetDBGridColumnsCaption(dbgBrowse, MainDataSet.FieldDefs);
end;

procedure TfrmArticulos.JvDBTreeView1Change(Sender: TObject; Node: TTreeNode);
begin
  inherited;
  if Assigned(node) then
  begin
    if dm.qryRubros.Locate('nombre',node.Text,[]) then
    begin
      if node.level=0 then
      dsBrowse.DataSet.Filter:='rubro_id = '+dm.qryRubros.FieldByName('id').AsString;

      if node.level=1 then
      dsBrowse.DataSet.Filter:='subrubro_id = '+dm.qryRubros.FieldByName('id').AsString;

      dsBrowse.dataset.Filtered:=true;
      dsBrowse.dataset.Refresh;
    end;
  end
  else
  begin
    dsBrowse.dataset.Filtered:=false;
    dsBrowse.dataset.Refresh;
  end;
end;

procedure TfrmArticulos.ToolButton4Click(Sender: TObject);
var
  rp: TrLArticulo;
begin
  inherited;
  if pgcCRUD.ActivePageIndex=0 then
  begin
    rp:=TrLArticulo.Create(self);
    rp.qrpArticulos.Preview;
    rp.free;
  end;
end;

end.
