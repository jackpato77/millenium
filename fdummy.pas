unit fdummy;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, ComCtrls, JvExComCtrls, JvComCtrls, JvTabBar, ExtCtrls;

type
  TfrmDock = class(TForm)
    Edit1: TEdit;
    Button1: TButton;
    JvTabBar1: TJvTabBar;
    JvPageControl1: TJvPageControl;
    TabSheet1: TTabSheet;
  private
    { Private declarations }
  public
    { Public declarations }
    class function CreateDockForm(const aColor: string): TCustomForm;

  end;

var
  frmDock: TfrmDock;

implementation

{$R *.dfm}

{ TfrmDock }

class function TfrmDock.CreateDockForm(const aColor: string): TCustomForm;
begin
 result := TfrmDock.Create(Application);

  //result.Color := aColor;

  result.Caption := aColor;

  result.Show;
end;

end.
