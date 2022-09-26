unit Unit_motdepasse;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls;

type
  TForm_utilisateur = class(TForm)
    Edit_utilisateur: TEdit;
    Edit_ancien: TEdit;
    Edit_nouveau: TEdit;
    Edit_confirmer: TEdit;
    Label1: TLabel;
    Label2: TLabel;
    Label3: TLabel;
    Label4: TLabel;
    Button_sauvegarder: TButton;
    Label5: TLabel;
    procedure Button_sauvegarderClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form_utilisateur: TForm_utilisateur;
  h:integer;

implementation

uses Unit_datamodule;

{$R *.dfm}

procedure TForm_utilisateur.Button_sauvegarderClick(Sender: TObject);
begin
h := 0;
  if(Edit_utilisateur.Text='') or  (Edit_ancien.Text='') or (Edit_nouveau.Text='') or (Edit_confirmer.Text='') then
    ShowMessage('Entrez vous informations !!')
  else
    begin
      DataModule1.ADOQuery_login.First;
      while (not DataModule1.ADOQuery_login.Eof) do
        begin
          if(DataModule1.ADOQuery_login.FieldByName('utilisateur').Value = Edit_utilisateur.Text) and (DataModule1.ADOQuery_login.FieldByName('motdepasse').Value = Edit_ancien.Text) then
                begin
                  if Edit_nouveau.Text = Edit_confirmer.Text then
                    begin
                       DataModule1.ADOQuery_login.Edit;
                       DataModule1.ADOQuery_login.FieldByName('motdepasse').Value := Edit_nouveau.Text;
                       DataModule1.ADOQuery_login.Post;
                       h:=1;
                       break;
                    end
                  else
                    begin
                      h:=2;
                      break;
                    end;
                end
          else
            DataModule1.ADOQuery_login.Next;
        end;

      if h = 2 then
        ShowMessage('Les mots de passe ne sont pas identiques !!');
      if h = 0 then
        ShowMessage('Nom d utilisateur ou mot de passe incorrecte !!');
      if h = 1 then
        begin
          ShowMessage('Votre mot de passe est changé avec succé');
          Edit_utilisateur.Text:='';
          Edit_ancien.Text:='';
          Edit_nouveau.Text:='';
          Edit_confirmer.Text:='';
        end;
    end;

end;

end.
