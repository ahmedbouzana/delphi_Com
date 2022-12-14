unit Unit_menu;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, Menus, StdCtrls, jpeg, ExtCtrls;

type
  TForm_menu = class(TForm)
    MainMenu1: TMainMenu;
    Fichier1: TMenuItem;
    Stoquescompteurs1: TMenuItem;
    Demandesdapprovisonements1: TMenuItem;
    Compteurs1: TMenuItem;
    Changermotdepasse1: TMenuItem;
    N1: TMenuItem;
    Fermer1: TMenuItem;
    Button1: TButton;
    Button2: TButton;
    Button3: TButton;
    Button4: TButton;
    Affaires1: TMenuItem;
    Button5: TButton;
    Label1: TLabel;
    Image1: TImage;
    Image2: TImage;
    procedure Stoquescompteurs1Click(Sender: TObject);
    procedure Demandesdapprovisonements1Click(Sender: TObject);
    procedure Compteurs1Click(Sender: TObject);
    procedure Changermotdepasse1Click(Sender: TObject);
    procedure Fermer1Click(Sender: TObject);
    procedure Affaires1Click(Sender: TObject);
    procedure Button1Click(Sender: TObject);
    procedure Button2Click(Sender: TObject);
    procedure Button5Click(Sender: TObject);
    procedure Button3Click(Sender: TObject);
    procedure Button4Click(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form_menu: TForm_menu;

implementation

uses Unit_type_compteur, Unit_approvisionnement, Unit_compteur,
  Unit_motdepasse, Unit_operation, Unit_login;

{$R *.dfm}

procedure TForm_menu.Stoquescompteurs1Click(Sender: TObject);
begin
Form_stoque_cpt.Show;
end;

procedure TForm_menu.Demandesdapprovisonements1Click(Sender: TObject);
begin
Form_approvisionnement.Show;
end;

procedure TForm_menu.Compteurs1Click(Sender: TObject);
begin
Form_compteur.Show;
end;

procedure TForm_menu.Changermotdepasse1Click(Sender: TObject);
begin
Form_utilisateur.Show;
end;

procedure TForm_menu.Fermer1Click(Sender: TObject);
begin
Application.Terminate;
end;

procedure TForm_menu.Affaires1Click(Sender: TObject);
begin
Form_operation.Show;
end;

procedure TForm_menu.Button1Click(Sender: TObject);
begin
Form_stoque_cpt.Show;    
end;

procedure TForm_menu.Button2Click(Sender: TObject);
begin
Form_approvisionnement.Show;
end;

procedure TForm_menu.Button5Click(Sender: TObject);
begin
Form_operation.Show;
end;

procedure TForm_menu.Button3Click(Sender: TObject);
begin
Form_compteur.Show;
end;

procedure TForm_menu.Button4Click(Sender: TObject);
begin
Form_utilisateur.Show;
end;

procedure TForm_menu.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  Form_login.Close;
end;

end.
