unit fbuscar;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, Buttons, StdCtrls, Grids, DBGrids, ExtCtrls, DB, MemDS, DBAccess,
  MyAccess;

type
  TfrmBuscar = class(TForm)
    Panel1: TPanel;
    edtSearch: TEdit;
    dbgResult: TDBGrid;
    labTable: TLabel;
    btnOk: TSpeedButton;
    DataSource1: TDataSource;
    qryIndexes: TMyQuery;
    procedure edtSearchChange(Sender: TObject);
    procedure FormActivate(Sender: TObject);
    procedure edtSearchKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure btnOkClick(Sender: TObject);
    procedure dbgResultKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
  private
    { Private declarations }
    FTableName: string;
    FKeyField: string;
    FResultId: integer;

  public
    { Public declarations }
    constructor CreateSearchFor(AOwner: TComponent; ATableName: string);
    property ResultId: integer read FResultId;
    property TableName: string read FTableName;
    //function GetResultId: integer;
  end;

var
  frmBuscar: TfrmBuscar;

implementation

uses uDmVm;

{$R *.dfm}
var
  edFromCode: boolean;

procedure TfrmBuscar.btnOkClick(Sender: TObject);
begin
  FResultId:=Datasource1.DataSet.Fields[0].Value;
  ModalResult:=mrOk;
end;

constructor TfrmBuscar.CreateSearchFor(AOwner: TComponent; ATableName: string);
begin
  inherited Create(AOwner);
  FTableName:=ATablename;
  //FKeyField:=AKeyField;
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
 if Length(txt)=0 then exit;

 //goto nearest match
 with dm do
 begin
 qrySearch.Close;
 qrySearch.SQL.Clear;
 qrySearch.SQL.Add('SELECT * FROM ');
 qrySearch.SQL.Add(FTableName);
 qrysearch.SQL.Add(' WHERE '+FKeyField+' like :param0');
 qrySearch.ParamByName('param0').Value:='%'+edtSearch.Text+'%';
 qrySearch.Open;
 end;

 //calculate what part of text should be selected
 {sfind := dm.qrySearch.FieldByName(FKeyField).AsString;
 len := Length(sfind) - Length(txt);
 if len > 0 then begin
   edFromCode:=true;
   edtSearch.Text:=sfind;
   edtSearch.SelStart:=Length(txt);
   edtSearch.SelLength:=len;
 end;}
end;

procedure TfrmBuscar.edtSearchKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
if (Key=VK_DELETE) or (Key=VK_BACK) then begin
   if Length(edtSearch.Text)>0 then begin;
      //onchange event should not be executed...
     edFromCode := false;
   end;
 end;
 if Key = VK_DOWN then
  dbgResult.SetFocus;
 if Key = VK_ESCAPE then
  ModalResult:=mrCancel;
end;

procedure TfrmBuscar.FormActivate(Sender: TObject);
begin
 self.Caption:='Buscar '+FTableName;
 qryIndexes.SQL.Text:=Stringreplace(qryIndexes.SQL.Text,'[TABLENAME]',FTableName,[rfReplaceAll, rfIgnoreCase]);
 qryIndexes.Open;
 FKeyField:=qryIndexes.FieldByName('COLUMN_NAME').Value;
 labTable.Caption:= FTableName;
  with dm do
  begin
  qrySearch.Close;
  qrySearch.SQL.Clear;
  qrySearch.SQL.Add('SELECT * FROM ');
  qrySearch.SQL.Add(FTableName);
  qrySearch.Open;
  end;
end;

end.
