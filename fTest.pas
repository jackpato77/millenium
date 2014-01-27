unit fTest;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, fbase, Grids, DBGrids, StdCtrls, ComCtrls, JvExComCtrls, JvDBTreeView, ExtCtrls;

type
  TfTestForm = class(TfrmBase)
    DBGrid1: TDBGrid;
    DBGrid2: TDBGrid;
    Button1: TButton;
    Button2: TButton;
    Panel1: TPanel;
    Memo1: TMemo;
    Splitter1: TSplitter;
    Memo2: TMemo;
    DBGrid3: TDBGrid;
    procedure Button1Click(Sender: TObject);
    procedure Button2Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  fTestForm: TfTestForm;

implementation

uses uDmVm;

{$R *.dfm}

procedure TfTestForm.Button1Click(Sender: TObject);
begin
  inherited;
  dm.cdsDetails.ApplyUpdates(0);
end;

procedure TfTestForm.Button2Click(Sender: TObject);
begin
  inherited;
  dm.cdsBPedidos.ApplyUpdates(0);
end;

end.
