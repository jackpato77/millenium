unit fprecios;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, fbase, StdCtrls, ExtCtrls, DB, DBCtrls, rxDBIndex, dblookup,
  JvExStdCtrls, JvCombobox, JvDBSearchComboBox, Buttons, Mask, Spin;

type
  TfrmPrecios = class(TfrmBase)
    pnlMain: TPanel;
    dsSubRubros: TDataSource;
    JvDBSearchComboBox1: TJvDBSearchComboBox;
    JvDBSearchComboBox2: TJvDBSearchComboBox;
    btnAlicar: TBitBtn;
    Label1: TLabel;
    Label2: TLabel;
    edtDesde: TSpinEdit;
    edtHasta: TSpinEdit;
    Label3: TLabel;
    Label4: TLabel;
    dsHPrecios: TDataSource;
    edtCosto: TDBEdit;
    edtVCosto1: TDBEdit;
    edtVCosto2: TDBEdit;
    edtVCosto3: TDBEdit;
    edtVCosto4: TDBEdit;
    Label5: TLabel;
    Label6: TLabel;
    rgpMulti: TRadioGroup;
    btnCancelar: TBitBtn;
    procedure FormActivate(Sender: TObject);
    procedure btnAlicarClick(Sender: TObject);
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

procedure TfrmPrecios.btnAlicarClick(Sender: TObject);
begin
  inherited;
  dsHPrecios.DataSet.Post;
  dm.qryUpdatePrecios.ParamByName('pcosto').Value:=dm.tblHPrecios.FieldByName('costo').Value;
  dm.qryUpdatePrecios.ParamByName('pvcosto1').Value:=dm.tblHPrecios.FieldByName('vcosto1').Value;
  dm.qryUpdatePrecios.ParamByName('pvcosto2').Value:=dm.tblHPrecios.FieldByName('vcosto2').Value;
  dm.qryUpdatePrecios.ParamByName('pvcosto3').Value:=dm.tblHPrecios.FieldByName('vcosto3').Value;
  dm.qryUpdatePrecios.ParamByName('pvcosto4').Value:=dm.tblHPrecios.FieldByName('vcosto3').Value;
  dm.qryUpdatePrecios.ParamByName('pidrubro').Value:=dm.tblHPrecios.FieldByName('idrubro').Value;
  dm.qryUpdatePrecios.ParamByName('pidsubrubro').Value:=dm.tblHPrecios.FieldByName('idsubrubro').Value;
  dm.qryUpdatePrecios.ParamByName('pdesde').Value:=dm.tblHPrecios.FieldByName('idartdesde').Value;
  dm.qryUpdatePrecios.ParamByName('phasta').Value:=dm.tblHPrecios.FieldByName('idarthasta').Value;
  dm.qryUpdatePrecios.Execute;

end;

procedure TfrmPrecios.FormActivate(Sender: TObject);
begin
  inherited;
  dm.tblRubros.Open;
  dm.tblSubrubros.Open;
end;

end.
