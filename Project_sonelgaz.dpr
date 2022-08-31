program Project_sonelgaz;

uses
  Forms,
  Unit_operation in 'Unit_operation.pas' {Form_operation},
  Unit_approvisionnement in 'Unit_approvisionnement.pas' {Form_approvisionnement},
  Unit_login in 'Unit_login.pas' {Form_login},
  Unit_compteur in 'Unit_compteur.pas' {Form_compteur},
  Unit_datamodule in 'Unit_datamodule.pas' {DataModule1: TDataModule},
  Unit_motdepasse in 'Unit_motdepasse.pas' {Form_utilisateur},
  Unit_type_compteur in 'Unit_type_compteur.pas' {Form1};

{$R *.res}

begin
  Application.Initialize;
  Application.CreateForm(TForm_operation, Form_operation);
  Application.CreateForm(TForm_login, Form_login);
  Application.CreateForm(TForm_compteur, Form_compteur);
  Application.CreateForm(TForm_approvisionnement, Form_approvisionnement);
  Application.CreateForm(TDataModule1, DataModule1);
  Application.CreateForm(TForm_utilisateur, Form_utilisateur);
  Application.CreateForm(TForm1, Form1);
  Application.Run;
end.
