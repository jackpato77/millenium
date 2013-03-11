unit main;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, Menus, StdCtrls, Tabs, DockTabSet, ActnList, ImgList, ComCtrls,
  ActnPopup, ToolWin, fbase, uutils;

type
  TfrmMain = class(TfrmBase)
    aclMain: TActionList;
    actArticulos: TAction;
    ImageList1: TImageList;
    PageControl1: TPageControl;
    PopupMenu1: TPopupMenu;
    Cerrar1: TMenuItem;
    ToolBar1: TToolBar;
    actClientes: TAction;
    actRemitos: TAction;
    actVentas: TAction;
    actCaja: TAction;
    ToolButton1: TToolButton;
    ToolButton2: TToolButton;
    ToolButton3: TToolButton;
    ToolButton4: TToolButton;
    ToolButton6: TToolButton;
    ToolButton8: TToolButton;
    actSalir: TAction;
    procedure actArticulosExecute(Sender: TObject);
    procedure actClientesExecute(Sender: TObject);
    procedure actRemitosExecute(Sender: TObject);
    procedure Cerrar1Click(Sender: TObject);
    procedure actVentasExecute(Sender: TObject);
    procedure actSalirExecute(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure actCajaExecute(Sender: TObject);
  private
    { Private declarations }
    function FindPage(ACaption: string): integer;
    procedure CreatePage(ACaption: string); overload;
    procedure CreatePage(VMForm: TVMForms); overload;
  public
    { Public declarations }
  end;

var
  frmMain: TfrmMain;

implementation

uses fdummy, fcrud, fventas, farticulos, fcajas, fclientes, fremitos, fmremitos,udmvm, TypInfo;

{$R *.dfm}

function TfrmMain.FindPage(ACaption: string): integer;
var
  i, PageIdx: integer;
begin
  PageIdx:=-1;
   for I := 0 to PageControl1.PageCount - 1 do
   if PageControl1.Pages[i].Caption = ACaption then
    begin
      PageIdx := i;
      Break;
    end;
   Result:= PageIdx;
end;

procedure TfrmMain.FormShow(Sender: TObject);
begin
  inherited;
  dm.CnxVM.Connected:=true;
  dm.tblArticulos.Open;
  dm.tblClientes.Open;
  dm.tblDetails.Open;
  dm.tblPresupuestos.Open;
  dm.tblVentas.Open;
  dm.tblRubros.Open;
  dm.tblSubRubros.Open;
  dm.tblHPrecios.Open;

end;

procedure TfrmMain.Cerrar1Click(Sender: TObject);
begin
  PageControl1.ActivePage.Free;
end;

procedure TfrmMain.CreatePage(VMForm: TVMForms);
var
  PageIdx: integer;
  aForm: TfrmBase;
  tabsheet: TTabSheet;
  ACaption: string;
begin
  ACaption:=GetEnumName(TypeInfo(TVMForms),integer(VMForm));
  PageIdx:= FindPage(ACaption);
  if PageIdx>=0 then
    PageControl1.ActivePageIndex:=PageIdx
  else
  begin
  tabSheet := TTabSheet.Create(PageControl1) ;
  case VMForm of
    Articulos: aForm:=TfrmArticulos.Create(tabsheet,'articulos');
    Clientes : aForm := TfrmClientes.Create(tabsheet,'clientes');
    Presupuestos : aForm := TfrmMRemitos.Create(tabsheet,'presupuestos');
    Cajas : aForm := TfrmCajas.Create(self);//(tabsheet, ACaption);
  end;
   tabSheet.PageControl := PageControl1;
   tabSheet.ImageIndex := Ord(VMForm);

   //create a form
   aForm.Parent := tabSheet;
   aForm.Align := alClient;
   aForm.BorderStyle := bsNone;
   aForm.Visible := true;
   tabSheet.Caption := aCaption;

   //activate the sheet
   PageControl1.ActivePage := tabSheet;
  end;

end;

procedure TfrmMain.CreatePage(ACaption: string);
var
  PageIdx: integer;
  aForm: TfrmBase;
  tabsheet: TTabSheet;
begin
  PageIdx:= FindPage(ACaption);
  if PageIdx>=0 then
    PageControl1.ActivePageIndex:=PageIdx
  else
  begin
  case VMForms.IndexOf(ACaption) of
  0 : aForm := TfrmArticulos.Create(tabsheet,'articulos');
  2 : aForm := TfrmClientes.Create(tabsheet,'clientes');
  //2 : aForm := TfrmProveedores.Create(tabsheet);
  3 : aForm := TfrmMRemitos.Create(tabsheet,'presupuestos');
  4 : aForm := TfrmVentas.Create(tabsheet);
//  1 : aForm := TfrmCajas.Create(tabsheet,'cajas');
  end;
   tabSheet := TTabSheet.Create(PageControl1) ;
   tabSheet.PageControl := PageControl1;
   tabSheet.ImageIndex := VMForms.IndexOf(ACaption);

   //create a form
   aForm.Parent := tabSheet;
   aForm.Align := alClient;
   aForm.BorderStyle := bsNone;
   aForm.Visible := true;
   tabSheet.Caption := aForm.Caption;

   //activate the sheet
   PageControl1.ActivePage := tabSheet;
  end;
end;

procedure TfrmMain.actArticulosExecute(Sender: TObject);
begin
   CreatePage('Articulos');
end;

procedure TfrmMain.actCajaExecute(Sender: TObject);
var
  aFType: TVMForms;
begin
  aFType:=Cajas;
  CreatePage(aFType);
end;

procedure TfrmMain.actClientesExecute(Sender: TObject);
begin
  CreatePage('Clientes');
end;

procedure TfrmMain.actRemitosExecute(Sender: TObject);
begin
  CreatePage('Presupuestos');
end;

procedure TfrmMain.actSalirExecute(Sender: TObject);
begin
  inherited;
  while pageControl1.PageCount > 0 do
    begin
      pageControl1.Pages[0].Free;
    end;
  Close;
end;

procedure TfrmMain.actVentasExecute(Sender: TObject);
begin
  CreatePAge('Ventas');
end;

end.
