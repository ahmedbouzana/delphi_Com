object Form_approvisionnement: TForm_approvisionnement
  Left = 449
  Top = 269
  Width = 1179
  Height = 543
  Caption = 'Demande d'#39'approvisionnement'
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -16
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  OldCreateOrder = False
  OnActivate = FormActivate
  PixelsPerInch = 96
  TextHeight = 20
  object Label1: TLabel
    Left = 24
    Top = 24
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
    Top = 64
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
    Top = 64
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
  object Label7: TLabel
    Left = 856
    Top = 64
    Width = 158
    Height = 20
    Caption = 'Num'#233'ro d'#233'but serie'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -16
    Font.Name = 'MS Sans Serif'
    Font.Style = [fsBold]
    ParentFont = False
  end
  object Label8: TLabel
    Left = 856
    Top = 104
    Width = 132
    Height = 20
    Caption = 'Num'#233'ro fin s'#233'rie'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -16
    Font.Name = 'MS Sans Serif'
    Font.Style = [fsBold]
    ParentFont = False
  end
  object Label9: TLabel
    Left = 576
    Top = 104
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
    Top = 24
    Width = 435
    Height = 24
    Caption = 'Ajouter des compteurs '#224' l'#39'approvisionnement :'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -19
    Font.Name = 'MS Sans Serif'
    Font.Style = [fsBold]
    ParentFont = False
  end
  object DBGrid_demenade_approvisionnement: TDBGrid
    Left = 16
    Top = 192
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
  end
  object DBEdit_numero: TDBEdit
    Left = 336
    Top = 24
    Width = 161
    Height = 28
    DataField = 'num_dem_app'
    DataSource = DataModule1.DataSource_demande_approvisionnement
    Enabled = False
    TabOrder = 1
  end
  object DBEdit_num_d_sr: TDBEdit
    Left = 1024
    Top = 64
    Width = 121
    Height = 28
    DataField = 'num_d_sr'
    DataSource = DataModule1.DataSource_approvisionnement
    TabOrder = 2
  end
  object DBEdit_num_f_sr: TDBEdit
    Left = 1024
    Top = 104
    Width = 121
    Height = 28
    DataField = 'num_f_sr'
    DataSource = DataModule1.DataSource_approvisionnement
    TabOrder = 3
  end
  object DBGrid_add_cpt: TDBGrid
    Left = 568
    Top = 192
    Width = 585
    Height = 305
    DataSource = DataModule1.DataSource_approvisionnement
    TabOrder = 4
    TitleFont.Charset = DEFAULT_CHARSET
    TitleFont.Color = clWindowText
    TitleFont.Height = -16
    TitleFont.Name = 'MS Sans Serif'
    TitleFont.Style = []
  end
  object DBEdit_qte_app: TDBEdit
    Left = 656
    Top = 104
    Width = 145
    Height = 28
    DataField = 'qte_app'
    DataSource = DataModule1.DataSource_approvisionnement
    TabOrder = 5
  end
  object Button_ajouter_cpt: TButton
    Left = 728
    Top = 152
    Width = 113
    Height = 33
    Caption = 'Ajouter'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -16
    Font.Name = 'MS Sans Serif'
    Font.Style = [fsBold]
    ParentFont = False
    TabOrder = 6
    OnClick = Button_ajouter_cptClick
  end
  object Button_enregistrer: TButton
    Left = 128
    Top = 152
    Width = 107
    Height = 33
    Caption = 'Enregistrer'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -16
    Font.Name = 'MS Sans Serif'
    Font.Style = [fsBold]
    ParentFont = False
    TabOrder = 7
    OnClick = Button_enregistrerClick
  end
  object Button_supprimer: TButton
    Left = 248
    Top = 152
    Width = 113
    Height = 33
    Caption = 'Supprimer'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -16
    Font.Name = 'MS Sans Serif'
    Font.Style = [fsBold]
    ParentFont = False
    TabOrder = 8
    OnClick = Button_supprimerClick
  end
  object DateTimePicker_date: TDateTimePicker
    Left = 336
    Top = 64
    Width = 161
    Height = 28
    Date = 44780.419689479170000000
    Time = 44780.419689479170000000
    TabOrder = 9
  end
  object Button_nouveau: TButton
    Left = 16
    Top = 152
    Width = 97
    Height = 33
    Caption = 'Nouveau'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -16
    Font.Name = 'MS Sans Serif'
    Font.Style = [fsBold]
    ParentFont = False
    TabOrder = 10
    OnClick = Button_nouveauClick
  end
  object Button_nouveau_cpt: TButton
    Left = 568
    Top = 152
    Width = 145
    Height = 33
    Caption = 'Nouveau'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -16
    Font.Name = 'MS Sans Serif'
    Font.Style = [fsBold]
    ParentFont = False
    TabOrder = 11
    OnClick = Button_nouveau_cptClick
  end
  object Button_supprimer_cpt: TButton
    Left = 856
    Top = 152
    Width = 121
    Height = 33
    Caption = 'Supprimer'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -16
    Font.Name = 'MS Sans Serif'
    Font.Style = [fsBold]
    ParentFont = False
    TabOrder = 12
    OnClick = Button_supprimer_cptClick
  end
  object DBLookupComboBox_nom_type: TDBLookupComboBox
    Left = 656
    Top = 64
    Width = 145
    Height = 28
    DataField = 'code_type'
    DataSource = DataModule1.DataSource_approvisionnement
    KeyField = 'code_type'
    ListField = 'nom_type'
    ListSource = DataModule1.DataSource_type_compteur
    TabOrder = 13
  end
  object DBEdit_numero_app: TDBEdit
    Left = 1008
    Top = 16
    Width = 65
    Height = 28
    DataField = 'num_dem_app'
    DataSource = DataModule1.DataSource_approvisionnement
    Enabled = False
    TabOrder = 14
    Visible = False
  end
  object DBEdit_id_app: TDBEdit
    Left = 1088
    Top = 16
    Width = 57
    Height = 28
    DataField = 'id'
    DataSource = DataModule1.DataSource_approvisionnement
    TabOrder = 15
    Visible = False
  end
  object Button_annuler_cpt: TButton
    Left = 992
    Top = 152
    Width = 97
    Height = 33
    Caption = 'Annuler'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -16
    Font.Name = 'MS Sans Serif'
    Font.Style = [fsBold]
    ParentFont = False
    TabOrder = 16
    OnClick = Button_annuler_cptClick
  end
end
