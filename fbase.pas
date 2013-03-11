unit fBase;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdActns, DBActns, ActnList, ImgList, ToolWin, ComCtrls, ExtCtrls;

type
  TfrmBase = class(TForm)
    procedure FormKeyPress(Sender: TObject; var Key: Char);
  private
    { Private declarations }
  public
    { Public declarations }
  end;


implementation

{$R *.dfm}

procedure TfrmBase.FormKeyPress(Sender: TObject; var Key: Char);
begin
  if Key = #13 then
    begin
      Key := #0;
      { check if SHIFT - Key is pressed }
      if GetKeyState(VK_Shift) and $8000 <> 0 then
        PostMessage(Handle, WM_NEXTDLGCTL, 1, 0)
      else
        PostMessage(Handle, WM_NEXTDLGCTL, 0, 0);
    end;
end;

end.
