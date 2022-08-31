unit Unit_login;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls;

type
  TForm_login = class(TForm)
    Edit_utilisateur: TEdit;
    Edit_motdepasse: TEdit;
    Button_connecter: TButton;
    Button_annuler: TButton;
    Label1: TLabel;
    Label2: TLabel;
    procedure Button_annulerClick(Sender: TObject);
    procedure Button_connecterClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form_login: TForm_login;

implementation

uses Unit_datamodule, Unit_motdepasse, Unit_operation;

{$R *.dfm}

procedure TForm_login.Button_annulerClick(Sender: TObject);
begin
Application.Terminate;
end;

procedure TForm_login.Button_connecterClick(Sender: TObject);
begin
  DataModule1.ADOQuery_login.SQL.Clear;
  DataModule1.ADOQuery_login.SQL.Add('select * from login where utilisateur = '''+Edit_utilisateur.Text +''' and motdepasse = '''+Edit_motdepasse.Text + ''' ');
  DataModule1.ADOQuery_login.Open;

  if not DataModule1.ADOQuery_login.Eof then
    begin
      Form_operation.Show;
      Form_login.Hide;
    end
  else
    begin
      MessageDlg('Mot de passe incorrect !!', mterror, [mbok],0);
      Edit_motdepasse.Clear;
    end

end;

end.
