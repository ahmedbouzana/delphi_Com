unit Unit_type_compteur;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, Grids, DBGrids, StdCtrls, DBCtrls, Mask,db, ADODB;

type
  TForm_stoque_cpt = class(TForm)
    DBGrid1: TDBGrid;
    Button_ajouter: TButton;
    Button_enregistrer: TButton;
    Button_modifier: TButton;
    Button_supprimer: TButton;
    Button_annuler: TButton;
    DBEdit_num_sr: TDBEdit;
    Label7: TLabel;
    DBLookupComboBox_nom_type: TDBLookupComboBox;
    Label4: TLabel;
    Edit_rechercher: TEdit;
    Button_recherche_n_serie: TButton;
    Button_recherche_reference: TButton;
    Label1: TLabel;
    procedure Button_ajouterClick(Sender: TObject);
    procedure Button_enregistrerClick(Sender: TObject);
    procedure Button_modifierClick(Sender: TObject);
    procedure Button_supprimerClick(Sender: TObject);
    procedure Button_annulerClick(Sender: TObject);
    procedure Button_recherche_n_serieClick(Sender: TObject);
    procedure SelectAll;
    procedure Button_recherche_referenceClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form_stoque_cpt: TForm_stoque_cpt;

implementation

uses Unit_datamodule;

{$R *.dfm}

procedure TForm_stoque_cpt.Button_ajouterClick(Sender: TObject);
begin
DataModule1.ADOQuery_stock_cpt.Insert;
end;

procedure TForm_stoque_cpt.Button_enregistrerClick(Sender: TObject);
begin
if (DataModule1.ADOQuery_stock_cpt.State in [dsEdit,dsInsert]) then
    begin
      if (DBEdit_num_sr.Text='') or (DBLookupComboBox_nom_type.Text='') then
        showmessage('Information insuffisante')
      else
        DataModule1.ADOQuery_stock_cpt.Post;
    end
  else
    showmessage('Aucune modification a enregistrer');
end;

procedure TForm_stoque_cpt.Button_modifierClick(Sender: TObject);
begin
DataModule1.ADOQuery_stock_cpt.Edit;
end;

procedure TForm_stoque_cpt.Button_supprimerClick(Sender: TObject);
begin
if(not DataModule1.ADOQuery_stock_cpt.IsEmpty) then
    begin
      if MessageDlg('Vouler vous supprimer ce compteur ?', mtConfirmation, [mbYes, mbNo], 0) = mrYes then
        DataModule1.ADOQuery_stock_cpt.Delete;
    end
  else
    ShowMessage('Rien a supprimer !!');
end;

procedure TForm_stoque_cpt.Button_annulerClick(Sender: TObject);
begin
DataModule1.ADOQuery_stock_cpt.Cancel;
end;

procedure TForm_stoque_cpt.SelectAll();
begin
      DataModule1.ADOQuery_stock_cpt.Close;
      DataModule1.ADOQuery_stock_cpt.SQL.Text := 'select * from stock_cpt left join operation on num_ser = num_cpt left join type_cpt  on stock_cpt .code_type =  type_cpt.code_type ';
      DataModule1.ADOQuery_stock_cpt.Open;
end;

procedure TForm_stoque_cpt.Button_recherche_n_serieClick(Sender: TObject);
var recherche : string;
begin
    recherche := StringReplace(Edit_rechercher.Text, '''', '',[rfReplaceAll, rfIgnoreCase]);
    recherche := StringReplace(recherche, ' ', '',[rfReplaceAll, rfIgnoreCase]);
    if(recherche = '')then
      SelectAll()
    else
    begin
      DataModule1.ADOQuery_stock_cpt.Close;
      DataModule1.ADOQuery_stock_cpt.SQL.Text := 'select * from stock_cpt left join operation on num_ser = num_cpt left join type_cpt  on stock_cpt .code_type =  type_cpt.code_type  where num_ser = '''+ recherche +''' ';
      DataModule1.ADOQuery_stock_cpt.Open;
     end;
end;

procedure TForm_stoque_cpt.Button_recherche_referenceClick(
  Sender: TObject);
var recherche : string;
begin
 recherche := StringReplace(Edit_rechercher.Text, '''', '',[rfReplaceAll, rfIgnoreCase]);
    recherche := StringReplace(recherche, ' ', '',[rfReplaceAll, rfIgnoreCase]);
    if(recherche = '')then
      SelectAll()
    else
    begin
      DataModule1.ADOQuery_stock_cpt.Close;
      DataModule1.ADOQuery_stock_cpt.SQL.Text := 'select * from stock_cpt left join operation on num_ser = num_cpt left join type_cpt  on stock_cpt .code_type =  type_cpt.code_type  where ref_ab_aff = '''+ recherche +''' ';
      DataModule1.ADOQuery_stock_cpt.Open;
     end;
end;

end.
