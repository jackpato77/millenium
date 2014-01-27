unit fdummy;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, ExtCtrls, StdCtrls, ComCtrls, JvExComCtrls, JvListView, fBase;

type
  TForm4 = class(TfrmBase)
    Button1: TButton;
    JvListView1: TJvListView;
    ListView1: TListView;
    procedure Button1Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form4: TForm4;

implementation

uses udmvm, uutils;
{$R *.dfm}

procedure TForm4.Button1Click(Sender: TObject);
begin
  SetListViewHeader(ListView1, dm.cdsArticulos);
end;

end.
