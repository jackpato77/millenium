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
  fmventas in 'fmventas.pas' {frmMVentas},
  fmremitos in 'fmremitos.pas' {frmMRemitos},
  uCore in 'uCore.pas',
  uDummy in 'uDummy.pas' {frmBase1},
  rpresupuesto in 'rpt\rpresupuesto.pas' {rptPResupuesto},
  rdmvm in 'rpt\rdmvm.pas' {rdm: TDataModule},
  rarticulo in 'rpt\rarticulo.pas' {rptArticulo},
  rcliente in 'rpt\rcliente.pas' {frClientes},
  frcli in 'rpt\frcli.pas' {Form1},
  frart in 'rpt\frart.pas' {Form2},
  rPresupuestos in 'rpt\rPresupuestos.pas' {Form3},
  fcajas in 'fcajas.pas' {frmCajas};

{$R *.res}

begin
  Application.Initialize;
  Application.MainFormOnTaskbar := True;
  Application.CreateForm(TfrmMain, frmMain);
  Application.CreateForm(Tdm, dm);
  Application.CreateForm(TfrmBase1, frmBase1);
  Application.CreateForm(TfrmMRemitos, frmMRemitos);
  Application.CreateForm(TfrmBuscar, frmBuscar);
  Application.CreateForm(TfrmArticulos, frmArticulos);
  Application.CreateForm(TfrmClientes, frmClientes);
  Application.CreateForm(TfrmPrecios, frmPrecios);
  Application.CreateForm(TrptPResupuesto, rptPResupuesto);
  Application.CreateForm(Trdm, rdm);
  Application.CreateForm(TrptArticulo, rptArticulo);
  Application.CreateForm(TfrClientes, frClientes);
  Application.CreateForm(TForm1, Form1);
  Application.CreateForm(TForm2, Form2);
  Application.CreateForm(TForm3, Form3);
  Application.CreateForm(TfrmCajas, frmCajas);
  //Application.CreateForm(TfrmRemitos, frmRemitos);
  Application.CreateForm(TfrmMVentas, frmMVentas);
  //Application.CreateForm(TfrmCajas, frmCajas);
  //Application.CreateForm(TfrmCRUD, frmCRUD);
  Application.Run;
end.
