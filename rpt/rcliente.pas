unit rcliente;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, QRCtrls, jpeg, QuickRpt, ExtCtrls;

type
  TfrClientes = class(TForm)
    qrpCliente: TQuickRep;
    QRBand1: TQRBand;
    QRBand2: TQRBand;
    QRBand3: TQRBand;
    QRImage1: TQRImage;
    QRLabel1: TQRLabel;
    QRMemo1: TQRMemo;
    QRLabel2: TQRLabel;
    QRDBText1: TQRDBText;
    QRDBText2: TQRDBText;
    QRBand4: TQRBand;
    QRLabel3: TQRLabel;
    QRLabel4: TQRLabel;
    QRDBText3: TQRDBText;
    QRLabel5: TQRLabel;
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frClientes: TfrClientes;

implementation

{$R *.dfm}

end.
