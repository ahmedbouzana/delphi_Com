unit Unit_compteur;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, Grids, DBGrids, DBCtrls, Mask,db, ADODB;

type
  TForm_compteur = class(TForm)
    DBEdit_code_type: TDBEdit;
    DBGrid1: TDBGrid;
    Label1: TLabel;
    Label2: TLabel;
    Label3: TLabel;
    Button_ajouter: TButton;
    Button_enregistrer: TButton;
    Button_modifier: TButton;
    Button_supprimer: TButton;
    Button_annuler: TButton;
    Edit_rechercher: TEdit;
    Button_rechercher: TButton;
    DBEdit_cap_cpt: TDBEdit;
    DBEdit_nom_type: TDBEdit;
    DBLookupComboBox_code_enrg: TDBLookupComboBox;
    Label4: TLabel;
    procedure Button_enregistrerClick(Sender: TObject);
    procedure Button_modifierClick(Sender: TObject);
    procedure Button_supprimerClick(Sender: TObject);
    procedure Button_annulerClick(Sender: TObject);
    procedure Button_rechercherClick(Sender: TObject);
    procedure Button_ajouterClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form_compteur: TForm_compteur;

implementation

uses Unit_datamodule;

{$R *.dfm}

procedure TForm_compteur.Button_enregistrerClick(Sender: TObject);
begin
  if (DataModule1.ADOTable_type_compteur.State in [dsEdit,dsInsert]) then
    begin
      if (DBEdit_nom_type.Text='') or (DBEdit_cap_cpt.text='') then
        showmessage('Information insuffisante')
      else
        DataModule1.ADOTable_type_compteur.Post;
    end
  else
    showmessage('Aucune modification a enregistrer');
  
end;

procedure TForm_compteur.Button_modifierClick(Sender: TObject);
begin
DataModule1.ADOTable_type_compteur.Edit;
end;

procedure TForm_compteur.Button_supprimerClick(Sender: TObject);
begin
  if(not DataModule1.ADOTable_type_compteur.IsEmpty) then
    begin
      if MessageDlg('Vouler cous supprimer ce type compteur ?', mtConfirmation, [mbYes, mbNo], 0) = mrYes then
        DataModule1.ADOTable_type_compteur.Delete;
    end
  else
    ShowMessage('Rien a supprimer !!');
end;

procedure TForm_compteur.Button_annulerClick(Sender: TObject);
begin
DataModule1.ADOTable_type_compteur.Cancel;
end;

procedure TForm_compteur.Button_rechercherClick(Sender: TObject);
begin
  if(  Edit_rechercher.Text <> '') then
    if not(DataModule1.ADOTable_type_compteur.Locate('nom_type',Edit_rechercher.Text ,[ loPartialKey]))then
      ShowMessage('Compteur introuvable !!');
end;

procedure TForm_compteur.Button_ajouterClick(Sender: TObject);
begin
  DataModule1.ADOTable_type_compteur.Insert;
end;

end.
