unit farticulos;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, fcrud, StdCtrls, Mask, DBCtrls, DB, StdActns, DBActns, ActnList,
  ImgList, Grids, DBGrids, ComCtrls, ToolWin, ExtCtrls, JvExStdCtrls, JvCombobox, JvDBSearchComboBox, JvEdit,
  JvDBSearchEdit, rxToolEdit, rxCurrEdit;

type
  TfrmArticulos = class(TfrmCRUD)
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
    DBEdit11: TDBEdit;
    Label11: TLabel;
    Label12: TLabel;
    Label13: TLabel;
    Label14: TLabel;
    Label15: TLabel;
    ToolButton11: TToolButton;
    actPrecios: TAction;
    DBLookupComboBox1: TDBLookupComboBox;
    DBLookupComboBox2: TDBLookupComboBox;
    pnlFiltro: TPanel;
    Button1: TButton;
    cbxRubro: TJvDBSearchComboBox;
    cbxSubrubro: TJvDBSearchComboBox;
    JvDBSearchEdit1: TJvDBSearchEdit;
    Label16: TLabel;
    Label17: TLabel;
    chkActivar: TCheckBox;
    cbxOperador: TComboBox;
    Label18: TLabel;
    edtValor: TCurrencyEdit;
    ToolButton12: TToolButton;
    procedure actPreciosExecute(Sender: TObject);
    procedure dtsPostExecute(Sender: TObject);
    procedure dtsCancelExecute(Sender: TObject);
    procedure Button1Click(Sender: TObject);
    procedure chkActivarClick(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure dbgBrowseDblClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmArticulos: TfrmArticulos;

implementation

uses udmvm, fprecios, uutils;
{$R *.dfm}

procedure TfrmArticulos.actPreciosExecute(Sender: TObject);
begin
  inherited;
  frmPrecios.ShowModal;
end;

procedure TfrmArticulos.Button1Click(Sender: TObject);
begin
  inherited;
  pnlFiltro.Visible:=not pnlFiltro.Visible;
end;

procedure TfrmArticulos.chkActivarClick(Sender: TObject);
begin
  inherited;
  if chkActivar.Checked then
  with dsBrowse.Dataset do
  begin
    Filtered:=false;
    Filter:='1=1 ';
    if cbxRubro.GetResult<>1 then
    Filter:=Filter+'and idrubro='+VarToStr(cbxRubro.GetResult);
    if cbxSubRubro.GetResult<>1 then
    Filter:=Filter+' and idsubrubro='+VarToStr(cbxSubRubro.GetResult);
    if edtValor.Value<>0 then
    Filter:=Filter+' and precio '+cbxOperador.Text+FloatToStr(edtValor.Value);
    Filtered:=true;
  end
  else
    dsBrowse.DataSet.Filtered:=false;
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
  dm.tblArticulos.Open;
  dm.cdsRubros.Open;
  dm.cdsSubrubros.Open;
  dm.dsARubros.DataSet.Open;
  dm.dsASubrubros.DataSet.Open;
  //FixDBGridColumnsWidth(dbgBrowse);
end;

end.
