object Form_approvisionnement: TForm_approvisionnement
  Left = 530
  Top = 318
  BorderStyle = bsSingle
  Caption = 'Demande d'#39'approvisionnement'
  ClientHeight = 537
  ClientWidth = 1104
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -16
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  OldCreateOrder = False
  OnCreate = FormCreate
  PixelsPerInch = 96
  TextHeight = 20
  object Label1: TLabel
    Left = 24
    Top = 48
    Width = 302
    Height = 20
    Caption = 'Num'#233'ro demande d'#39'aprovisionnement'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -16
    Font.Name = 'MS Sans Serif'
    Font.Style = [fsBold]
    ParentFont = False
  end
  object Label2: TLabel
    Left = 24
    Top = 88
    Width = 275
    Height = 20
    Caption = 'Date demande approvisionnement'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -16
    Font.Name = 'MS Sans Serif'
    Font.Style = [fsBold]
    ParentFont = False
  end
  object Label4: TLabel
    Left = 568
    Top = 88
    Width = 76
    Height = 20
    Caption = 'Nom type'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -16
    Font.Name = 'MS Sans Serif'
    Font.Style = [fsBold]
    ParentFont = False
  end
  object Label9: TLabel
    Left = 576
    Top = 128
    Width = 70
    Height = 20
    Caption = 'Quantit'#233
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -16
    Font.Name = 'MS Sans Serif'
    Font.Style = [fsBold]
    ParentFont = False
  end
  object Label3: TLabel
    Left = 568
    Top = 48
    Width = 389
    Height = 24
    Caption = 'Ajouter des compteurs '#224' l'#39'approvisionnement :'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -19
    Font.Name = 'MS Sans Serif'
    Font.Style = []
    ParentFont = False
  end
  object Label5: TLabel
    Left = 376
    Top = 8
    Width = 334
    Height = 29
    Caption = 'Demande d'#39'approvisionnement'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -23
    Font.Name = 'MS Sans Serif'
    Font.Style = []
    ParentFont = False
  end
  object DBGrid_demenade_approvisionnement: TDBGrid
    Left = 16
    Top = 216
    Width = 481
    Height = 305
    DataSource = DataModule1.DataSource_demande_approvisionnement
    ReadOnly = True
    TabOrder = 0
    TitleFont.Charset = DEFAULT_CHARSET
    TitleFont.Color = clWindowText
    TitleFont.Height = -16
    TitleFont.Name = 'MS Sans Serif'
    TitleFont.Style = []
    OnCellClick = DBGrid_demenade_approvisionnementCellClick
    Columns = <
      item
        Expanded = False
        FieldName = 'num_dem_app'
        Title.Caption = 'N'#176' demande'
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'date_dem_app'
        Title.Caption = 'Date demande'
        Visible = True
      end>
  end
  object DBEdit_numero: TDBEdit
    Left = 336
    Top = 48
    Width = 161
    Height = 28
    DataField = 'num_dem_app'
    DataSource = DataModule1.DataSource_demande_approvisionnement
    Enabled = False
    TabOrder = 1
  end
  object DBGrid_add_cpt: TDBGrid
    Left = 568
    Top = 216
    Width = 529
    Height = 305
    DataSource = DataModule1.DataSource_approvisionnement
    TabOrder = 2
    TitleFont.Charset = DEFAULT_CHARSET
    TitleFont.Color = clWindowText
    TitleFont.Height = -16
    TitleFont.Name = 'MS Sans Serif'
    TitleFont.Style = []
    Columns = <
      item
        Expanded = False
        FieldName = 'nom_type'
        Title.Caption = 'Nom type'
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'qte_app'
        Title.Caption = 'Quantit'#233
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'nom_enrg'
        Title.Caption = 'Energie'
        Visible = True
      end>
  end
  object DBEdit_qte_app: TDBEdit
    Left = 656
    Top = 128
    Width = 145
    Height = 28
    DataField = 'qte_app'
    DataSource = DataModule1.DataSource_approvisionnement
    TabOrder = 3
  end
  object Button_ajouter_cpt: TButton
    Left = 728
    Top = 176
    Width = 113
    Height = 33
    Caption = 'Ajouter'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -16
    Font.Name = 'MS Sans Serif'
    Font.Style = [fsBold]
    ParentFont = False
    TabOrder = 4
    OnClick = Button_ajouter_cptClick
  end
  object Button_enregistrer: TButton
    Left = 128
    Top = 176
    Width = 107
    Height = 33
    Caption = 'Enregistrer'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -16
    Font.Name = 'MS Sans Serif'
    Font.Style = [fsBold]
    ParentFont = False
    TabOrder = 5
    OnClick = Button_enregistrerClick
  end
  object Button_supprimer: TButton
    Left = 248
    Top = 176
    Width = 113
    Height = 33
    Caption = 'Supprimer'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -16
    Font.Name = 'MS Sans Serif'
    Font.Style = [fsBold]
    ParentFont = False
    TabOrder = 6
    OnClick = Button_supprimerClick
  end
  object DateTimePicker_date: TDateTimePicker
    Left = 480
    Top = 88
    Width = 17
    Height = 28
    Date = 44780.419689479170000000
    Time = 44780.419689479170000000
    TabOrder = 7
    OnChange = DateTimePicker_dateChange
  end
  object Button_nouveau: TButton
    Left = 16
    Top = 176
    Width = 97
    Height = 33
    Caption = 'Nouveau'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -16
    Font.Name = 'MS Sans Serif'
    Font.Style = [fsBold]
    ParentFont = False
    TabOrder = 8
    OnClick = Button_nouveauClick
  end
  object Button_nouveau_cpt: TButton
    Left = 568
    Top = 176
    Width = 145
    Height = 33
    Caption = 'Nouveau'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -16
    Font.Name = 'MS Sans Serif'
    Font.Style = [fsBold]
    ParentFont = False
    TabOrder = 9
    OnClick = Button_nouveau_cptClick
  end
  object Button_supprimer_cpt: TButton
    Left = 856
    Top = 176
    Width = 121
    Height = 33
    Caption = 'Supprimer'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -16
    Font.Name = 'MS Sans Serif'
    Font.Style = [fsBold]
    ParentFont = False
    TabOrder = 10
    OnClick = Button_supprimer_cptClick
  end
  object DBLookupComboBox_nom_type: TDBLookupComboBox
    Left = 656
    Top = 88
    Width = 145
    Height = 28
    DataField = 'code_type'
    DataSource = DataModule1.DataSource_approvisionnement
    KeyField = 'code_type'
    ListField = 'nom_type'
    ListSource = DataModule1.DataSource_type_compteur
    TabOrder = 11
  end
  object DBEdit_numero_app: TDBEdit
    Left = 896
    Top = 80
    Width = 65
    Height = 28
    DataField = 'num_dem_app'
    DataSource = DataModule1.DataSource_approvisionnement
    Enabled = False
    TabOrder = 12
    Visible = False
  end
  object DBEdit_id_app: TDBEdit
    Left = 976
    Top = 80
    Width = 57
    Height = 28
    DataField = 'id'
    DataSource = DataModule1.DataSource_approvisionnement
    TabOrder = 13
    Visible = False
  end
  object Button_annuler_cpt: TButton
    Left = 992
    Top = 176
    Width = 97
    Height = 33
    Caption = 'Annuler'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -16
    Font.Name = 'MS Sans Serif'
    Font.Style = [fsBold]
    ParentFont = False
    TabOrder = 14
    OnClick = Button_annuler_cptClick
  end
  object Button_imprimer: TButton
    Left = 368
    Top = 176
    Width = 129
    Height = 33
    Caption = 'Imprimer'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -16
    Font.Name = 'MS Sans Serif'
    Font.Style = [fsBold]
    ParentFont = False
    TabOrder = 15
    OnClick = Button_imprimerClick
  end
  object DBEdit_date_dem_app: TDBEdit
    Left = 336
    Top = 88
    Width = 145
    Height = 28
    DataField = 'date_dem_app'
    DataSource = DataModule1.DataSource_demande_approvisionnement
    ReadOnly = True
    TabOrder = 16
  end
end
