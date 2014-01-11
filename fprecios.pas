unit fprecios;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, fbase, StdCtrls, ExtCtrls, DB, DBCtrls, rxDBIndex, dblookup,
  JvExStdCtrls, JvCombobox, JvDBSearchComboBox, Buttons, Mask, Spin, DBClient, Grids, DBGrids, JvExExtCtrls,
  JvRadioGroup, ComCtrls, JvExComCtrls, JvDBTreeView;

type
  TfrmPrecios = class(TfrmBase)
    pnlMain: TPanel;
    btnAlicar: TBitBtn;
    edtVCosto1: TDBEdit;
    edtVCosto2: TDBEdit;
    edtVCosto3: TDBEdit;
    edtVCosto4: TDBEdit;
    btnCancelar: TBitBtn;
    JvRadioGroup1: TJvRadioGroup;
    JvRadioGroup2: TJvRadioGroup;
    dbgPrecios: TDBGrid;
    JvDBTreeView1: TJvDBTreeView;
    procedure FormActivate(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmPrecios: TfrmPrecios;

implementation

uses uDmVm;

{$R *.dfm}

{ TfrmPrecios }

procedure TfrmPrecios.FormActivate(Sender: TObject);
begin
  inherited;
  dm.tblRubros.Open;
  dm.tblSubrubros.Open;
end;

end.
