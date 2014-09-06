program VMillenium;

uses
  Forms,
  uutils in 'uutils.pas',
  main in 'main.pas' {frmMain},
  fcrud in 'fcrud.pas' {frmCRUD},
  uDmVm in 'uDmVm.pas' {dm: TDataModule},
  fbuscar in 'fbuscar.pas' {frmBuscar},
  farticulos in 'farticulos.pas' {frmArticulos},
  fclientes in 'fclientes.pas' {frmClientes},
  fbase in 'fbase.pas' {frmBase},
  fprecios in 'fprecios.pas' {frmPrecios},
  fmremitos in 'fmremitos.pas' {frmMRemitos},
  uCore in 'uCore.pas',
  rpresupuesto in 'rpt\rpresupuesto.pas' {rptPResupuesto},
  rdmvm in 'rpt\rdmvm.pas' {rdm: TDataModule},
  rarticulo in 'rpt\rarticulo.pas' {rLArticulo},
  rcliente in 'rpt\rcliente.pas' {rLClientes},
  frcli in 'rpt\frcli.pas' {Form1},
  frart in 'rpt\frart.pas' {Form2},
  reportBaseVM in 'rpt\reportBaseVM.pas' {Form3},
  fpresupuesto in 'fpresupuesto.pas' {fPto},
  fventa in 'fventa.pas' {fVta},
  fTest in 'fTest.pas' {fTestForm};

{$R *.res}

begin
  Application.Initialize;
  Application.MainFormOnTaskbar := True;
  Application.CreateForm(Tdm, dm);
  Application.CreateForm(TfrmMain, frmMain);
  Application.CreateForm(TfPto, fPto);
  Application.CreateForm(TfVta, fVta);
  Application.CreateForm(TfTestForm, fTestForm);
  Application.Run;
end.
