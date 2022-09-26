program Project_sonelgaz;

uses
  Forms,
  Unit_login in 'Unit_login.pas' {Form_login},
  Unit_menu in 'Unit_menu.pas' {Form_menu},
  Unit_operation in 'Unit_operation.pas' {Form_operation},
  Unit_approvisionnement in 'Unit_approvisionnement.pas' {Form_approvisionnement},
  Unit_compteur in 'Unit_compteur.pas' {Form_compteur},
  Unit_datamodule in 'Unit_datamodule.pas' {DataModule1: TDataModule},
  Unit_motdepasse in 'Unit_motdepasse.pas' {Form_utilisateur},
  Unit_type_compteur in 'Unit_type_compteur.pas' {Form_stoque_cpt},
  Unit_qr_affaire in 'Unit_qr_affaire.pas' {QuickReport_affaire: TQuickRep},
  Unit_qr_approvisionnement in 'Unit_qr_approvisionnement.pas' {QuickReport_approvisionnement: TQuickRep},
  Unit_qr_dem_app in 'Unit_qr_dem_app.pas' {QuickReport1: TQuickRep};

{$R *.res}

begin
  Application.Initialize;
  Application.CreateForm(TForm_login, Form_login);
  Application.CreateForm(TForm_menu, Form_menu);
  Application.CreateForm(TForm_operation, Form_operation);
  Application.CreateForm(TForm_compteur, Form_compteur);
  Application.CreateForm(TForm_approvisionnement, Form_approvisionnement);
  Application.CreateForm(TDataModule1, DataModule1);
  Application.CreateForm(TForm_utilisateur, Form_utilisateur);
  Application.CreateForm(TForm_stoque_cpt, Form_stoque_cpt);
  Application.CreateForm(TQuickReport_affaire, QuickReport_affaire);
  Application.CreateForm(TQuickReport_approvisionnement, QuickReport_approvisionnement);
  Application.CreateForm(TQuickReport1, QuickReport1);
  Application.Run;
end.
