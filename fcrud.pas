unit fCRUD;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, ComCtrls, ToolWin, Buttons, ImgList, StdCtrls, ExtCtrls, ActnList, DB,
  DBActns, StdActns, Grids, DBGrids, DBClient, fbase;

type
  TfrmCRUD = class(TfrmBase)
    imlCRUD: TImageList;
    tobMain: TToolBar;
    ToolButton1: TToolButton;
    ToolButton2: TToolButton;
    ToolButton3: TToolButton;
    ToolButton4: TToolButton;
    ToolButton5: TToolButton;
    ToolButton6: TToolButton;
    aclCRUD: TActionList;
    ToolButton7: TToolButton;
    ToolButton8: TToolButton;
    dtsInsert: TDataSetInsert;
    dtsDelete: TDataSetDelete;
    dtsEdit: TDataSetEdit;
    dtsPost: TDataSetPost;
    dtsCancel: TDataSetCancel;
    ToolButton9: TToolButton;
    actExit: TAction;
    dsBrowse: TDataSource;
    ToolButton10: TToolButton;
    pgcCRUD: TPageControl;
    tabBrowse: TTabSheet;
    tabDetail: TTabSheet;
    dbgBrowse: TDBGrid;
    actBuscar: TAction;
    actImprimir: TAction;
    procedure actExitExecute(Sender: TObject);
    procedure dtsInsertExecute(Sender: TObject);
    procedure dtsEditExecute(Sender: TObject);
    procedure dtsPostExecute(Sender: TObject);
    procedure dtsCancelExecute(Sender: TObject);
    procedure pgcCRUDChange(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure dbgBrowseDblClick(Sender: TObject);
    procedure actBuscarExecute(Sender: TObject);
    procedure dtsDeleteExecute(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    //procedure dsMainStateChange(Sender: TObject);
  private
    { Private declarations }
    FScaffold: boolean;
    FTableName: string;

    procedure SetTableName(ATableName: string);
  public
    { Public declarations }
    constructor Create(AOwner: TComponent; ATableName: string);reintroduce;

    constructor CreateCRUD(AOwner: TComponent; ATableName: string);

    property Scaffold: boolean read FScaffold write FScaffold default true;
    property TableName: string read FTableName write FTableName;
  end;

var
  frmCRUD: TfrmCRUD;

implementation

uses uDmVm, fbuscar;

{$R *.dfm}

{ TfrmCRUD }

procedure TfrmCRUD.actBuscarExecute(Sender: TObject);
var
  fb: TfrmBuscar;
begin
  inherited;
  fb:= TfrmBuscar.CreateSearchFor(nil,self.TableName);
  try
    if fb.ShowModal = mrOk then
    begin
      dsBrowse.DataSet.DisableControls;
      dsBrowse.DataSet.First;
      while not dsBrowse.DataSet.Eof do
        if dsBrowse.DataSet.Fields[0].Value=fb.ResultId then
          break
        else dsBrowse.DataSet.Next;
      dsBrowse.Dataset.EnableControls;
      dbgBrowse.SetFocus;
    end;
  finally
    fb.Free;
  end;
end;

procedure TfrmCRUD.actExitExecute(Sender: TObject);
begin
  inherited;
  //self.Close;
  Parent.Free;
end;


constructor TfrmCRUD.Create(AOwner: TComponent; ATableName: string);
begin
  inherited Create(AOwner);
  TableName:=ATableName;
end;

constructor TfrmCRUD.CreateCRUD(AOwner: TComponent; ATableName: string);
begin
  inherited Create(AOwner);
  SetTableName(ATableName);
end;

procedure TfrmCRUD.dbgBrowseDblClick(Sender: TObject);
begin
  inherited;
  //dsBrowse.DataSet.Edit;
  pgcCRUD.ActivePageIndex:=1;
end;

procedure TfrmCRUD.dtsCancelExecute(Sender: TObject);
begin
  inherited;
  dsBrowse.DataSet.Cancel;
  dsBrowse.Dataset.First;
  pgcCRUD.ActivePageIndex:=0;
end;

procedure TfrmCRUD.dtsDeleteExecute(Sender: TObject);
begin
  inherited;
  dsBrowse.DataSet.Delete;
end;

procedure TfrmCRUD.dtsEditExecute(Sender: TObject);
begin
  inherited;
  dsBRowse.DataSet.Edit;
  pgcCRUD.ActivePageIndex:=1;
end;

procedure TfrmCRUD.dtsInsertExecute(Sender: TObject);
begin
  inherited;
  dsBrowse.DataSet.Append;
  pgcCRUD.ActivePageIndex:=1;
end;

procedure TfrmCRUD.dtsPostExecute(Sender: TObject);
begin
  inherited;
  dsBrowse.DataSet.First;
  pgcCRUD.ActivePageIndex:=0;

end;

procedure TfrmCRUD.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  inherited;
  Action:=caFree;
end;

procedure TfrmCRUD.FormCreate(Sender: TObject);
//Hide PageControl Tabs
var
   page : integer;
begin
  inherited;
  for page := 0 to pgcCRUD.PageCount - 1 do
   begin
     pgcCRUD.Pages[page].TabVisible := false;
   end;

   //select the first tab
   pgcCRUD.ActivePageIndex := 0;
end;

procedure TfrmCRUD.pgcCRUDChange(Sender: TObject);
begin
  inherited;
  //dscCRUD.DataSet.Refresh;
end;

procedure TfrmCRUD.SetTableName(ATableName: string);
begin
  FTableName:=ATableName;
end;

end.
