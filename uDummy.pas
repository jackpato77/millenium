unit uDummy;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, fbase, StdCtrls, ComCtrls, WideStrings, FMTBcd, Provider, SqlExpr, DB, Grids, DBGrids, DBClient;

type
  TfrmBase1 = class(TfrmBase)
    Button1: TButton;
    ClientDataSet1: TClientDataSet;
    DBGrid1: TDBGrid;
    DataSource1: TDataSource;
    SQLConnection1: TSQLConnection;
    SQLQuery1: TSQLQuery;
    DataSetProvider1: TDataSetProvider;
    cds2: TClientDataSet;
    procedure Button1Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmBase1: TfrmBase1;

implementation

{$R *.dfm}

procedure TfrmBase1.Button1Click(Sender: TObject);
const
  DataFile = 'mydata.xml';
begin
  inherited;
cds2.FileName :=
  ExtractFilePath(Application.ExeName) + DataFile;
if FileExists(cds2.FileName) then
  cds2.Open
else
  begin
    with cds2.FieldDefs do
    begin
      Clear;
      Add('ID',ftInteger, 0, True);
      Add('First Name',ftString, 20);
      Add('Last Name',ftString, 25);
      Add('Date of Birth',ftDate);
      Add('Active',ftBoolean);
    end; //with ClientDataSet2.FieldDefs
    cds2.CreateDataSet;
  end; //else
 
end;


end.
