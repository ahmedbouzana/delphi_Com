unit Unit_qr_affaire;

interface

uses Windows, SysUtils, Messages, Classes, Graphics, Controls,
  StdCtrls, ExtCtrls, Forms, QuickRpt, QRCtrls;

type
  TQuickReport_affaire = class(TQuickRep)
    TitleBand1: TQRBand;
    QRLabel1: TQRLabel;
    QRLabel2: TQRLabel;
    QRLabel3: TQRLabel;
    QRShape1: TQRShape;
    QRShape2: TQRShape;
    QRLabel4: TQRLabel;
    QRLabel5: TQRLabel;
    QRLabel7: TQRLabel;
    QRLabel8: TQRLabel;
    QRLabel9: TQRLabel;
    QRLabel10: TQRLabel;
    QRLabel11: TQRLabel;
    QRLabel12: TQRLabel;
    QRLabel13: TQRLabel;
    QRDBText_ref: TQRDBText;
    QRDBText_nom_client: TQRDBText;
    QRDBText_nature_affaire: TQRDBText;
    QRDBText_date_affaire: TQRDBText;
    QRDBTextn_affaire: TQRDBText;
    QRDBText_adresse: TQRDBText;
    QRDBText_date_etude: TQRDBText;
    QRShape3: TQRShape;
    QRShape4: TQRShape;
    QRLabel14: TQRLabel;
    QRDBText_nom_agent: TQRDBText;
    QRDBText_prenom_agent: TQRDBText;
    QRDBText_prenom_client: TQRDBText;
    QRLabel6: TQRLabel;
  private

  public

  end;

var
  QuickReport_affaire: TQuickReport_affaire;

implementation

uses Unit_datamodule;

{$R *.DFM}

end.
