unit fbuscar;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, Buttons, StdCtrls, Grids, DBGrids, ExtCtrls, DB, MemDS, DBAccess,
  MyAccess;

type
  TfrmBuscar = class(TForm)
    Panel1: TPanel;
    dbgResult: TDBGrid;
    DataSource1: TDataSource;
    qryIndexes: TMyQuery;
    Panel2: TPanel;
    btnOk: TSpeedButton;
    labTable: TLabel;
    edtSearch: TEdit;
    procedure edtSearchChange(Sender: TObject);
    procedure FormActivate(Sender: TObject);
    procedure edtSearchKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
    procedure btnOkClick(Sender: TObject);
    procedure dbgResultKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
  private
    { Private declarations }
    FTableName: string;
    FKeyField: string;
    FIDField: string;
    FResultId: integer;

  public
    { Public declarations }
    constructor CreateSearchFor(AOwner: TComponent; ATableName, AKeyField: string; AIdField: string = 'id');
    property ResultId: integer read FResultId;
    property TableName: string read FTableName;
    //function GetResultId: integer;
  end;

var
  frmBuscar: TfrmBuscar;

implementation

uses uDmVm, uutils;

{$R *.dfm}
var
  edFromCode: boolean;

procedure TfrmBuscar.btnOkClick(Sender: TObject);
begin
  FResultId:=Datasource1.DataSet.FieldByName(FIdField).Value;
  ModalResult:=mrOk;
end;

constructor TfrmBuscar.CreateSearchFor(AOwner: TComponent; ATableName, AkeyField: string; AIdField: string = 'id');
begin
  inherited Create(AOwner);
  FTableName:=CapitalizeString(ATablename);
  FKeyField:=AKeyField;
  FIdField:=AIdField;
end;

procedure TfrmBuscar.dbgResultKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
begin
  if Key = VK_ESCAPE then
    edtSearch.SetFocus;
  if Key = VK_RETURN then
    btnOkClick(self);
end;

procedure TfrmBuscar.edtSearchChange(Sender: TObject);
var
  txt, sfind: string;
  len: integer;
begin
  inherited;
 //don't do anything if user presses
 //delete or backspace
 if edFromCode = true then
 begin
   edFromCode := false;
   exit;
 end;

 //don't do anything if there is
 //no text in edSearch
 txt:=edtSearch.Text;
 //if Length(txt)=0 then exit;

 //goto nearest match
 with dm do
 begin
   qrySearch.ParamByName('param0').Value:='%'+edtSearch.Text+'%';
   qrySearch.Open;
   qrySearch.Refresh;
 end;
end;

procedure TfrmBuscar.edtSearchKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
 if Key = VK_DOWN then
  dbgResult.SetFocus;
 if Key = VK_ESCAPE then
  ModalResult:=mrCancel;
end;

procedure TfrmBuscar.FormActivate(Sender: TObject);
begin
 self.Caption:='Buscar '+FTableName;
 labTable.Caption:= FTableName;
 with dm do
 begin
   qrySearch.Close;
   qrySearch.SQL.Clear;
   qrySearch.SQL.Add('SELECT * FROM ');
   qrySearch.SQL.Add(FTableName);
   qrysearch.SQL.Add(' WHERE '+FKeyField+' like :param0');
   qrySearch.SQL.Add(' ORDER BY '+FKeyField);
   qrySearch.ParamByName('param0').Value:='%'+edtSearch.Text+'%';
   qrySearch.Prepared:=true;
   qrySearch.Open;
 end;
 SetDBGridColumnsCaption(dbgResult,dm.qrySearch.FieldDefs, false);
end;

end.
