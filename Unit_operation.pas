unit Unit_operation;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, Menus, StdCtrls, DBCtrls, ComCtrls, Mask, Grids, DBGrids,db, ADODB;

type
  TForm_operation = class(TForm)
    DBEdit_num_aff: TDBEdit;
    DBComboBox_nature_aff: TDBComboBox;
    DateTimePicker_date_aff: TDateTimePicker;
    DateTimePicker_date_etude: TDateTimePicker;
    DateTimePicker_date_rec: TDateTimePicker;
    DBEdit_nom_agent: TDBEdit;
    DBEdit_prenom_agent: TDBEdit;
    DBLookupComboBox_code_type_aff: TDBLookupComboBox;
    DBEdit_num_cpt: TDBEdit;
    DBEdit_ref_ab: TDBEdit;
    DBEdit_nom_ab: TDBEdit;
    DBEdit_prenom_ab: TDBEdit;
    DBEdit_adr_ab: TDBEdit;
    DBGrid_ab: TDBGrid;
    Label1: TLabel;
    Label2: TLabel;
    Label3: TLabel;
    Label4: TLabel;
    Label5: TLabel;
    Label6: TLabel;
    Label7: TLabel;
    Label8: TLabel;
    Label9: TLabel;
    Label10: TLabel;
    Label11: TLabel;
    Label12: TLabel;
    Label13: TLabel;
    Button_nouveau_ab: TButton;
    Button_enregistrer_ab: TButton;
    Button_supprimer_ab: TButton;
    Button_annuler_ab: TButton;
    Button_modifier_ab: TButton;
    DBEdit_id_aff: TDBEdit;
    Label14: TLabel;
    Button_nouveau_aff: TButton;
    Button_enregistrer_aff: TButton;
    Button_supprimer_aff: TButton;
    Button_annuler_aff: TButton;
    DBEdit1: TDBEdit;
    Label15: TLabel;
    Edit_recherche: TEdit;
    Button_recherche_ref: TButton;
    Button_num_aff: TButton;
    Button_imprimer: TButton;
    Label16: TLabel;
    DBEdit2: TDBEdit;
    DBEdit_d_enr_aff: TDBEdit;
    DBEdit_d_etud_aff: TDBEdit;
    DBEdit_d_rec_aff: TDBEdit;
    Button_recherche_cpt: TButton;
    Label17: TLabel;
    DBGrid_affaire: TDBGrid;
    procedure Compteurs1Click(Sender: TObject);
    procedure Fermer1Click(Sender: TObject);
    procedure Changermotdepasse1Click(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure Demandesdapprovisonements1Click(Sender: TObject);
    procedure Button_nouveau_abClick(Sender: TObject);
    procedure Button_enregistrer_abClick(Sender: TObject);
    procedure Button_modifier_abClick(Sender: TObject);
    procedure Button_supprimer_abClick(Sender: TObject);
    procedure Button_annuler_abClick(Sender: TObject);
    procedure Button_nouveau_affClick(Sender: TObject);
    procedure Button_annuler_affClick(Sender: TObject);
    procedure Button_supprimer_affClick(Sender: TObject);
    procedure Button_enregistrer_affClick(Sender: TObject);
    procedure DateTimePicker_date_etudeChange(Sender: TObject);
    procedure DateTimePicker_date_recChange(Sender: TObject);
    procedure Button_recherche_refClick(Sender: TObject);
    procedure Button_num_affClick(Sender: TObject);    
    procedure SelectAll;
    procedure Button_imprimerClick(Sender: TObject);
    procedure DateTimePicker_date_affChange(Sender: TObject);
    procedure FormActivate(Sender: TObject);
    procedure DBGrid_affCellClick(Column: TColumn);
    procedure Button_recherche_cptClick(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure DBGrid_affaireDblClick(Sender: TObject);
    procedure DBGrid_affaireCellClick(Column: TColumn);

  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form_operation: TForm_operation;

implementation

uses Unit_compteur, Unit_datamodule, Unit_motdepasse, Unit_login,
  Unit_approvisionnement, DateUtils, Unit_qr_affaire, Unit_qr_dem_app,
  Unit_type_compteur, Unit_qr_approvisionnement;

{$R *.dfm}

procedure TForm_operation.Compteurs1Click(Sender: TObject);
begin
     Form_compteur.Show;
end;

procedure TForm_operation.Fermer1Click(Sender: TObject);
begin
Application.Terminate;
end;

procedure TForm_operation.Changermotdepasse1Click(Sender: TObject);
begin
Form_utilisateur.Show;
end;

procedure TForm_operation.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  Form_login.Close;
end;

procedure TForm_operation.Demandesdapprovisonements1Click(Sender: TObject);
begin
  Form_approvisionnement.Show;
end;

procedure TForm_operation.Button_nouveau_abClick(Sender: TObject);
begin
DataModule1.ADOQuery_abonne.Insert;
end;

procedure TForm_operation.Button_enregistrer_abClick(Sender: TObject);
begin
if (DataModule1.ADOQuery_abonne.State in [dsEdit,dsInsert]) then
    begin
      if (DBEdit_ref_ab.Text='') or (DBEdit_nom_ab.text='') or (DBEdit_prenom_ab.Text='') or (DBEdit_adr_ab.text='') then
        showmessage('Information insuffisante')
      else
        DataModule1.ADOQuery_abonne.Post;
    end
  else
    showmessage('Aucune modification a enregistrer');
end;

procedure TForm_operation.Button_modifier_abClick(Sender: TObject);
begin
DataModule1.ADOQuery_abonne.Edit;
end;

procedure TForm_operation.Button_supprimer_abClick(Sender: TObject);
begin
if(not DataModule1.ADOQuery_abonne.IsEmpty) then
    begin
      if MessageDlg('Voulez vous supprimer cet abonné ?', mtConfirmation, [mbYes, mbNo], 0) = mrYes then
        DataModule1.ADOQuery_abonne.Delete;
    end
  else
    ShowMessage('Rien a supprimer !!');
end;

procedure TForm_operation.Button_annuler_abClick(Sender: TObject);
begin
DataModule1.ADOQuery_abonne.Cancel;
end;

procedure TForm_operation.Button_nouveau_affClick(Sender: TObject);
var currentDate: TDateTime;
begin
    DataModule1.ADOQuery_affaire.Cancel;
    DataModule1.ADOQuery_affaire.Insert;

    currentDate := Now;
    DateTimePicker_date_aff.Format := '';
    DateTimePicker_date_aff.Date := currentDate;
    DBEdit_num_aff.Text := StringReplace(TimeToStr(currentDate), ':', '', [rfReplaceAll, rfIgnoreCase]) ;

    DataModule1.ADOQuery_abonne.Close;
    DataModule1.ADOQuery_abonne.SQL.Text := 'select * from abonne';
    DataModule1.ADOQuery_abonne.Open;

end;

procedure TForm_operation.Button_annuler_affClick(Sender: TObject);
begin
DataModule1.ADOQuery_affaire.Cancel;
end;

procedure TForm_operation.Button_supprimer_affClick(Sender: TObject);
begin
DataModule1.ADOQuery_affaire.Cancel;
if(not DataModule1.ADOQuery_affaire.IsEmpty) then
    begin
      if MessageDlg('Vouler cous supprimer cette affaire ?', mtConfirmation, [mbYes, mbNo], 0) = mrYes then
        begin

          DataModule1.ADOQuery_affaire.SQL.Text := 'delete from operation where id_aff = '+ DBEdit_id_aff.Text;
          DataModule1.ADOQuery_affaire.ExecSQL;

          SelectAll();
      end
    end
  else
    ShowMessage('Rien a supprimer !!');
end;

procedure TForm_operation.Button_enregistrer_affClick(Sender: TObject);
var code_type:string;
 date_rec:string;
 date_etude:string;
begin

  if (DBEdit_num_aff.Text='') then
    showmessage('Veuillez saisir le numéro de l affaire !!')
  else if (DBEdit_ref_ab.Text='') then
    showmessage('Veuillez selectionner un abonné !!')
  else if (DBLookupComboBox_code_type_aff.KeyValue=null) then
    showmessage('Veuillez selectionner le nom du compteur !!')
  else
    begin
      code_type := IntToStr(DBLookupComboBox_code_type_aff.KeyValue);
      if(DateTimePicker_date_rec.Format = '') then
        date_rec := DateToStr(DateOf(DateTimePicker_date_rec.Date));
      if(DateTimePicker_date_etude.Format = '') then
        date_etude := DateToStr(DateOf(DateTimePicker_date_etude.Date));
      if (DBEdit_id_aff.Text='') then
        begin
        DataModule1.ADOQuery_affaire.SQL.Text := 'INSERT INTO operation (num_aff, ref_ab_aff, code_type_aff, num_cpt, nature_aff, d_enr_aff, d_rec_aff, d_etud_aff, nom_agent, prenom_agent)'+
        ' VALUES (''' + DBEdit_num_aff.Text + ''', ''' + DBEdit_ref_ab.Text + ''', '+ code_type +', ''' + DBEdit_num_cpt.Text + ''', ''' + DBComboBox_nature_aff.Text + ''', ''' + DateToStr(DateOf(DateTimePicker_date_aff.Date)) + ''', ''' + date_rec + ''', ''' + date_etude + ''', ''' + DBEdit_nom_agent.Text + ''', ''' + DBEdit_prenom_agent.Text + ''')';
        DataModule1.ADOQuery_affaire.Cancel;
        end
      else
      begin
        DataModule1.ADOQuery_affaire.SQL.Text := 'update operation'+
        ' set num_aff = ''' + DBEdit_num_aff.Text + ''' , ref_ab_aff = ''' + DBEdit_ref_ab.Text + ''', code_type_aff = '+ IntToStr(DBLookupComboBox_code_type_aff.KeyValue) +', num_cpt = ''' + DBEdit_num_cpt.Text + ''', nature_aff = ''' + DBComboBox_nature_aff.Text + ''', d_enr_aff = ''' + DateToStr(DateOf(DateTimePicker_date_aff.Date)) + ''', d_rec_aff = ''' + date_rec + ''', d_etud_aff =  ''' + date_etude + ''', nom_agent = ''' + DBEdit_nom_agent.Text + ''', prenom_agent = ''' + DBEdit_prenom_agent.Text + ''' '+
        ' where id_aff = '+DBEdit_id_aff.Text+'';
        end;

      DataModule1.ADOQuery_affaire.ExecSQL;

      SelectAll();
    end;

end;

procedure TForm_operation.DateTimePicker_date_etudeChange(Sender: TObject);
begin
      DateTimePicker_date_etude.Format := '';
      DBEdit_d_etud_aff.Text := DateToStr(DateOf(DateTimePicker_date_etude.Date));

end;

procedure TForm_operation.DateTimePicker_date_recChange(Sender: TObject);
begin
    DateTimePicker_date_rec.Format := '';
      DBEdit_d_rec_aff.Text := DateToStr(DateOf(DateTimePicker_date_rec.Date));
end;

procedure TForm_operation.Button_recherche_refClick(Sender: TObject);
var recherche : string;
begin
    recherche := StringReplace(Edit_recherche.Text, '''', '',[rfReplaceAll, rfIgnoreCase]);
    recherche := StringReplace(recherche, ' ', '',[rfReplaceAll, rfIgnoreCase]);
    if(recherche = '')then
      SelectAll()
    else
    begin
      DataModule1.ADOQuery_affaire.Close;
      DataModule1.ADOQuery_affaire.SQL.Text := '  select * from operation left join stock_cpt on num_cpt = num_ser left join abonne on ref_ab_aff = ref_ab where ref_ab_aff = '''+ recherche +''' ';
      DataModule1.ADOQuery_affaire.Open;
     end;
end;

procedure TForm_operation.Button_num_affClick(Sender: TObject);
var recherche : string;
begin
    recherche := StringReplace(Edit_recherche.Text, '''', '',[rfReplaceAll, rfIgnoreCase]);
    recherche := StringReplace(recherche, ' ', '',[rfReplaceAll, rfIgnoreCase]);
      if(recherche = '')then
      SelectAll()
    else
    begin
      DataModule1.ADOQuery_affaire.Close;
      DataModule1.ADOQuery_affaire.SQL.Text := '  select * from operation left join stock_cpt on num_cpt = num_ser left join abonne on ref_ab_aff = ref_ab where num_aff = '''+recherche+''' ';
      DataModule1.ADOQuery_affaire.Open;
     end;
end;

procedure TForm_operation.SelectAll();
begin
      DataModule1.ADOQuery_affaire.Close;
      DataModule1.ADOQuery_affaire.SQL.Text := '  select * from operation left join stock_cpt on num_cpt = num_ser left join abonne on ref_ab_aff = ref_ab';
      DataModule1.ADOQuery_affaire.Open;
end;

procedure TForm_operation.Button_imprimerClick(Sender: TObject);
begin
QuickReport_affaire.Preview;
//if(not DataModule1.ADOQuery_affaire.IsEmpty) then
    //QuickReport_affaire.Preview
 // else
    //ShowMessage('Rien a imprimer !!');
end;

procedure TForm_operation.DateTimePicker_date_affChange(Sender: TObject);
begin
DBEdit_d_enr_aff.Text := DateToStr(DateOf(DateTimePicker_date_aff.Date));
end;

procedure TForm_operation.FormActivate(Sender: TObject);
var currentDate: TDateTime;
begin

end;

procedure TForm_operation.DBGrid_affCellClick(Column: TColumn);
begin
       if(not DataModule1.ADOQuery_affaire.IsEmpty) then
    begin
    //DataModule1.ADOQuery_affaire.Cancel;
      DataModule1.ADOQuery_abonne.Close;
      DataModule1.ADOQuery_abonne.SQL.Text := 'select * from operation, abonne  where ref_ab_aff = ref_ab and num_aff ='''+ DBEdit_num_aff.Text+''' ';
      DataModule1.ADOQuery_abonne.Open;

  end;
end;

procedure TForm_operation.Button_recherche_cptClick(Sender: TObject);
begin
Form_stoque_cpt.Show;
end;

procedure TForm_operation.FormCreate(Sender: TObject);
var currentDate: TDateTime;
begin
end;

procedure TForm_operation.DBGrid_affaireDblClick(Sender: TObject);
begin
       if(not DataModule1.ADOQuery_affaire.IsEmpty) then
    begin
    //DataModule1.ADOQuery_affaire.Cancel;
      DataModule1.ADOQuery_abonne.Close;
      DataModule1.ADOQuery_abonne.SQL.Text := 'select * from operation, abonne  where ref_ab_aff = ref_ab and num_aff ='''+ DBEdit_num_aff.Text+''' ';
      DataModule1.ADOQuery_abonne.Open;
      end;
end;

procedure TForm_operation.DBGrid_affaireCellClick(Column: TColumn);
begin
if(not DataModule1.ADOQuery_affaire.IsEmpty) then
    begin
    //DataModule1.ADOQuery_affaire.Cancel;
      DataModule1.ADOQuery_abonne.Close;
      DataModule1.ADOQuery_abonne.SQL.Text := 'select * from operation, abonne  where ref_ab_aff = ref_ab and num_aff ='''+ DBEdit_num_aff.Text+''' ';
      DataModule1.ADOQuery_abonne.Open;

  end;
end;

end.
