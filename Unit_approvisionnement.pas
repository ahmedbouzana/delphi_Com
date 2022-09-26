unit Unit_approvisionnement;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, DBCtrls, Mask, Grids, DBGrids, ComCtrls, db, ADODB;

type
  TForm_approvisionnement = class(TForm)
    DBGrid_demenade_approvisionnement: TDBGrid;
    DBEdit_numero: TDBEdit;
    DBGrid_add_cpt: TDBGrid;
    Label1: TLabel;
    Label2: TLabel;
    Label4: TLabel;
    Label9: TLabel;
    DBEdit_qte_app: TDBEdit;
    Button_ajouter_cpt: TButton;
    Button_enregistrer: TButton;
    Button_supprimer: TButton;
    DateTimePicker_date: TDateTimePicker;
    Button_nouveau: TButton;
    Button_nouveau_cpt: TButton;
    Button_supprimer_cpt: TButton;
    DBLookupComboBox_nom_type: TDBLookupComboBox;
    DBEdit_numero_app: TDBEdit;
    DBEdit_id_app: TDBEdit;
    Button_annuler_cpt: TButton;
    Label3: TLabel;
    Button_imprimer: TButton;
    DBEdit_date_dem_app: TDBEdit;
    Label5: TLabel;
    procedure Button_supprimerClick(Sender: TObject);
    procedure Button_nouveauClick(Sender: TObject);
    procedure Button_enregistrerClick(Sender: TObject);
    procedure Button_nouveau_cptClick(Sender: TObject);
    procedure Button_ajouter_cptClick(Sender: TObject);
    procedure Button_supprimer_cptClick(Sender: TObject);
    procedure DBGrid_demenade_approvisionnementCellClick(Column: TColumn);
    procedure Button_annuler_cptClick(Sender: TObject);
    procedure Button_imprimerClick(Sender: TObject);
    procedure DateTimePicker_dateChange(Sender: TObject);
    procedure FormCreate(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form_approvisionnement: TForm_approvisionnement;

implementation

uses Unit_datamodule, DateUtils, Unit_qr_approvisionnement;

{$R *.dfm}

procedure TForm_approvisionnement.Button_supprimerClick(Sender: TObject);
begin
if(not DataModule1.ADOQuery_demande_app.IsEmpty) then
    begin
      if MessageDlg('Vouler cous supprimer cette demande d approvisionnement ?', mtConfirmation, [mbYes, mbNo], 0) = mrYes then
        begin
          DataModule1.ADOQuery_approvisionnement.SQL.Text := 'delete from approvisionner where num_dem_app = '+ DBEdit_numero.Text;
          DataModule1.ADOQuery_approvisionnement.ExecSQL;

          DataModule1.ADOQuery_demande_app.SQL.Text := 'delete from demande_app where num_dem_app = '+ DBEdit_numero.Text;
          DataModule1.ADOQuery_demande_app.ExecSQL;

          DataModule1.ADOQuery_demande_app.Close;
          DataModule1.ADOQuery_demande_app.SQL.Text := 'select * from demande_app order by date_dem_app desc';
          DataModule1.ADOQuery_demande_app.Open;
      end
    end
  else
    ShowMessage('Rien a supprimer !!');
end;

procedure TForm_approvisionnement.Button_nouveauClick(Sender: TObject);
var currentDate: TDateTime;
begin
    DataModule1.ADOQuery_demande_app.Insert;
    DataModule1.ADOQuery_demande_app.Close;
    
    currentDate := Now;
    DateTimePicker_date.Date := currentDate;
    DBEdit_numero.Text := StringReplace(TimeToStr(currentDate), ':', '', [rfReplaceAll, rfIgnoreCase]) ;

    DataModule1.ADOQuery_demande_app.SQL.Text := 'INSERT INTO demande_app (num_dem_app, date_dem_app) VALUES (''' + DBEdit_numero.Text + ''', ''' + DateToStr(DateOf(DateTimePicker_date.Date)) + ''')';
  DataModule1.ADOQuery_demande_app.ExecSQL;

  DataModule1.ADOQuery_demande_app.Close;
  DataModule1.ADOQuery_demande_app.SQL.Text := 'select * from demande_app order by date_dem_app desc';
  DataModule1.ADOQuery_demande_app.Open;
end;

procedure TForm_approvisionnement.Button_enregistrerClick(Sender: TObject);
var numero : string;
begin
  if (DBEdit_numero.Text='') then
    showmessage('Veuillez saisir le numéro demande approvisionnement !!')
  else
    begin
      numero :=   DBEdit_numero.Text;
      if (DBEdit_numero.Text='') then
        begin
        DataModule1.ADOQuery_demande_app.Cancel;
        DataModule1.ADOQuery_demande_app.SQL.Text := 'INSERT INTO demande_app (num_dem_app, date_dem_app) VALUES (''' + numero + ''', ''' + DateToStr(DateOf(DateTimePicker_date.Date)) + ''')';
        end
      else
        DataModule1.ADOQuery_demande_app.SQL.Text := 'update demande_app set date_dem_app = ''' + DateToStr(DateOf(DateTimePicker_date.Date)) + ''' where num_dem_app = '+numero+'';
      DataModule1.ADOQuery_demande_app.ExecSQL;


      DataModule1.ADOQuery_demande_app.Close;
      DataModule1.ADOQuery_demande_app.SQL.Text := 'select * from demande_app order by date_dem_app desc';
      DataModule1.ADOQuery_demande_app.Open;
    end;
end;

procedure TForm_approvisionnement.Button_nouveau_cptClick(Sender: TObject);
begin
if(DBEdit_numero.Text <> '') then
begin
  DataModule1.ADOQuery_approvisionnement.Close;
  //DataModule1.ADOQuery_approvisionnement.SQL.Text := 'select approvisionner.code_type, approvisionner.num_dem_app, approvisionner.id, qte_app, num_d_sr, num_f_sr, nom_type '+
  DataModule1.ADOQuery_approvisionnement.SQL.Text := 'select * '+
  'from approvisionner, type_cpt,energie  where type_cpt.code_enrg = energie.code_enrg and approvisionner.code_type = type_cpt.code_type and approvisionner.num_dem_app ='+ DBEdit_numero.Text;
  DataModule1.ADOQuery_approvisionnement.Open;
  
  DataModule1.ADOQuery_approvisionnement.Insert;
  DBEdit_numero_app.Text := DBEdit_numero.Text;
  end
  else
  ShowMessage('Selectionner une demande d approvisionement avant !!!');
end;

procedure TForm_approvisionnement.Button_ajouter_cptClick(Sender: TObject);
var
numero :string;
code_type:string;
begin
  if (DBLookupComboBox_nom_type.KeyValue=null) or (DBEdit_qte_app.Text='') then
    showmessage('Veuillez completer les informations !!')
  else
    begin

    numero := DBEdit_numero.Text;
     code_type := DBLookupComboBox_nom_type.KeyValue;

     if DataModule1.ADOQuery_approvisionnement.State in [dsInsert] then
        begin
        //showmessage(numero + '-'+code_type);
        //showmessage('INSERT INTO approvisionner (code_type, num_dem_app, qte_app, num_d_sr, num_f_sr) VALUES ('+ code_type +',' + numero + ', ' + DBEdit_qte_app.Text + ', '''+DBEdit_num_d_sr.Text +''', '''+DBEdit_num_f_sr.Text  +''')');

        //DataModule1.ADOQuery_approvisionnement.SQL.Text := 'INSERT INTO approvisionner (code_type, num_dem_app, qte_app, num_d_sr, num_f_sr) VALUES ('+ code_type +',' + numero + ', ' + DBEdit_qte_app.Text + ', '''+DBEdit_num_d_sr.Text +''', '''+DBEdit_num_f_sr.Text  +''')';

        //DataModule1.ADOQuery_approvisionnement.Cancel;
        DBEdit_numero_app.Text := numero;
        DataModule1.ADOQuery_approvisionnement.Post;
        end
      else
      begin
        //DataModule1.ADOQuery_approvisionnement.Edit;
      //DataModule1.ADOQuery_approvisionnement.Post;
        DataModule1.ADOQuery_approvisionnement.SQL.Text := 'update approvisionner set qte_app = ' + DBEdit_qte_app.Text + ' where id = '+DBEdit_id_app.Text;
      DataModule1.ADOQuery_approvisionnement.ExecSQL;


      //DataModule1.ADOQuery_approvisionnement.Close;
      //DataModule1.ADOQuery_approvisionnement.SQL.Text := 'select approvisionner.code_type, approvisionner.num_dem_app, qte_app, num_d_sr, num_f_sr, nom_type  from approvisionner, type_cpt  where approvisionner.num_dem_app ='+ DBEdit_numero.Text +'';
      //DataModule1.ADOQuery_approvisionnement.Open;
      end;
    end;
end;

procedure TForm_approvisionnement.Button_supprimer_cptClick(
  Sender: TObject);
begin
  if(DBEdit_id_app.Text <> '') then
  begin
  if(not DataModule1.ADOQuery_approvisionnement.IsEmpty) then
    begin
      if MessageDlg('Voulez vous supprimer cette approvisionnement ?', mtConfirmation, [mbYes, mbNo], 0) = mrYes then
        begin
        //DataModule1.ADOQuery_approvisionnement.Delete;
          //ShowMessage('delete from demande_app where id_demapp = '+ DBEdit_id_demapp.Text +'')  ;
          DataModule1.ADOQuery_approvisionnement.SQL.Text := 'delete from approvisionner where id = '+ DBEdit_id_app.Text;
          DataModule1.ADOQuery_approvisionnement.ExecSQL;

          DataModule1.ADOQuery_approvisionnement.Close;
          DataModule1.ADOQuery_approvisionnement.SQL.Text := 'select approvisionner.code_type, approvisionner.num_dem_app, approvisionner.id, qte_app, nom_type '+
          'from approvisionner, type_cpt  where approvisionner.code_type = type_cpt.code_type and num_dem_app ='+ DBEdit_numero.Text;
          DataModule1.ADOQuery_approvisionnement.Open;
        end
    end;
    end
  else
    ShowMessage('Rien a supprimer !!');
end;

procedure TForm_approvisionnement.DBGrid_demenade_approvisionnementCellClick(
  Column: TColumn);
begin
if(not DataModule1.ADOQuery_demande_app.IsEmpty) then
    begin
      DataModule1.ADOQuery_approvisionnement.Close;
      //DataModule1.ADOQuery_approvisionnement.SQL.Text := 'select approvisionner.code_type, approvisionner.num_dem_app, approvisionner.id, qte_app, num_d_sr, num_f_sr, nom_type '+
      DataModule1.ADOQuery_approvisionnement.SQL.Text := 'select * '+
      'from approvisionner, type_cpt, energie where approvisionner.code_type = type_cpt.code_type and type_cpt.code_enrg = energie.code_enrg and num_dem_app ='+ DBEdit_numero.Text;
      DataModule1.ADOQuery_approvisionnement.Open;
  end;
end;

procedure TForm_approvisionnement.Button_annuler_cptClick(Sender: TObject);
begin
    DataModule1.ADOQuery_approvisionnement.Cancel;
end;

procedure TForm_approvisionnement.Button_imprimerClick(Sender: TObject);
begin
if(not DataModule1.ADOQuery_approvisionnement.IsEmpty) then
    QuickReport_approvisionnement.Preview
  else
    ShowMessage('Rien a imprimer !!');

end;

procedure TForm_approvisionnement.DateTimePicker_dateChange(
  Sender: TObject);
begin
DBEdit_date_dem_app.Text := DateToStr(DateOf(DateTimePicker_date.Date));
end;

procedure TForm_approvisionnement.FormCreate(Sender: TObject);
begin

      //DataModule1.ADOQuery_approvisionnement.Close;
      //DataModule1.ADOQuery_approvisionnement.SQL.Text := 'select approvisionner.code_type, approvisionner.num_dem_app, approvisionner.id, qte_app, num_d_sr, num_f_sr, nom_type '+
      //'from approvisionner, type_cpt, energie  where type_cpt.code_enrg = energie.code_enrg and approvisionner.code_type = type_cpt.code_type and approvisionner.num_dem_app = 0';
      //DataModule1.ADOQuery_approvisionnement.Open;
end;

end.

