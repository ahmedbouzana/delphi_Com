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
    Label2: TLabel;
    DBEdit_id: TDBEdit;
    procedure Button_ajouterClick(Sender: TObject);
    procedure Button_enregistrerClick(Sender: TObject);
    procedure Button_modifierClick(Sender: TObject);
    procedure Button_supprimerClick(Sender: TObject);
    procedure Button_annulerClick(Sender: TObject);
    procedure Button_recherche_n_serieClick(Sender: TObject);
    procedure SelectAll;
    procedure Button_recherche_referenceClick(Sender: TObject);
    procedure DBGrid1DblClick(Sender: TObject);
    procedure FormActivate(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form_stoque_cpt: TForm_stoque_cpt;

implementation

uses Unit_datamodule, Unit_operation;

{$R *.dfm}

procedure TForm_stoque_cpt.Button_ajouterClick(Sender: TObject);
begin
DataModule1.ADOQuery_stock_cpt.Insert;
end;

procedure TForm_stoque_cpt.Button_enregistrerClick(Sender: TObject);
var

code_type:string;
begin
  if (DBEdit_num_sr.Text='') or (DBLookupComboBox_nom_type.Text='') then
    showmessage('Veuillez completer les informations !!')
  else
    begin

    code_type := DBLookupComboBox_nom_type.KeyValue;

     if DataModule1.ADOQuery_stock_cpt.State in [dsInsert] then
        begin
        DataModule1.ADOQuery_stock_cpt.Post;
        end
      else
      begin
        DataModule1.ADOQuery_approvisionnement.SQL.Text := 'update stock_cpt set num_ser = ''' + DBEdit_num_sr.Text + ''', code_type = '+ code_type +' where id = '+DBEdit_id.Text;
      DataModule1.ADOQuery_approvisionnement.ExecSQL;
      end;

          DataModule1.ADOQuery_stock_cpt.Close;
          DataModule1.ADOQuery_stock_cpt.SQL.Text := 'select * from stock_cpt left join operation on num_ser = num_cpt left join type_cpt  on stock_cpt.code_type =  type_cpt.code_type';
          DataModule1.ADOQuery_stock_cpt.Open;
    end;
end;

procedure TForm_stoque_cpt.Button_modifierClick(Sender: TObject);
begin
DataModule1.ADOQuery_stock_cpt.Edit;
end;

procedure TForm_stoque_cpt.Button_supprimerClick(Sender: TObject);
begin
if(DBEdit_num_sr.Text <> '') then
  begin
  if(not DataModule1.ADOQuery_stock_cpt.IsEmpty) then
    begin
      if MessageDlg('Voulez vous supprimer ce compteur du stoque ?', mtConfirmation, [mbYes, mbNo], 0) = mrYes then
        begin
          DataModule1.ADOQuery_stock_cpt.SQL.Text := 'delete from stock_cpt where num_ser = '''+ DBEdit_num_sr.Text +''' ';
          DataModule1.ADOQuery_stock_cpt.ExecSQL;

          DataModule1.ADOQuery_stock_cpt.Close;
          DataModule1.ADOQuery_stock_cpt.SQL.Text := 'select * from stock_cpt left join operation on num_ser = num_cpt left join type_cpt  on stock_cpt.code_type =  type_cpt.code_type';
          DataModule1.ADOQuery_stock_cpt.Open;
        end
    end;
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

procedure TForm_stoque_cpt.DBGrid1DblClick(Sender: TObject);
begin
  Form_operation.DBEdit_num_cpt.Text := DBEdit_num_sr.Text;
end;

procedure TForm_stoque_cpt.FormActivate(Sender: TObject);
begin
DataModule1.ADOQuery_stock_cpt.Close;
          DataModule1.ADOQuery_stock_cpt.SQL.Text := 'select * from stock_cpt left join operation on num_ser = num_cpt left join type_cpt  on stock_cpt.code_type =  type_cpt.code_type';
          DataModule1.ADOQuery_stock_cpt.Open;
end;

end.
