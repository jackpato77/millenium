unit fmventas;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, fcrud, DB, StdActns, DBActns, ActnList, ImgList, Grids, DBGrids,
  ComCtrls, ToolWin;

type
  TfrmMVentas = class(TfrmCRUD)
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmMVentas: TfrmMVentas;

implementation

uses udmvm;

{$R *.dfm}

end.
