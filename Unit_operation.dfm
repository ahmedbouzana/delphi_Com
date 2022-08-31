object Form_operation: TForm_operation
  Left = 439
  Top = 123
  BorderIcons = [biSystemMenu, biMinimize]
  BorderStyle = bsSingle
  Caption = 'Affaires'
  ClientHeight = 793
  ClientWidth = 1215
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -16
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  Menu = MainMenu1
  OldCreateOrder = False
  OnClose = FormClose
  PixelsPerInch = 96
  TextHeight = 20
  object Label1: TLabel
    Left = 24
    Top = 64
    Width = 76
    Height = 20
    Caption = 'N'#176' affaire'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -16
    Font.Name = 'MS Sans Serif'
    Font.Style = [fsBold]
    ParentFont = False
  end
  object Label2: TLabel
    Left = 24
    Top = 104
    Width = 112
    Height = 20
    Caption = 'Nature affaire'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -16
    Font.Name = 'MS Sans Serif'
    Font.Style = [fsBold]
    ParentFont = False
  end
  object Label3: TLabel
    Left = 24
    Top = 144
    Width = 97
    Height = 20
    Caption = 'Date affaire'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -16
    Font.Name = 'MS Sans Serif'
    Font.Style = [fsBold]
    ParentFont = False
  end
  object Label4: TLabel
    Left = 24
    Top = 184
    Width = 91
    Height = 20
    Caption = 'Date '#233'tude'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -16
    Font.Name = 'MS Sans Serif'
    Font.Style = [fsBold]
    ParentFont = False
  end
  object Label5: TLabel
    Left = 24
    Top = 224
    Width = 120
    Height = 20
    Caption = 'Date reception'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -16
    Font.Name = 'MS Sans Serif'
    Font.Style = [fsBold]
    ParentFont = False
  end
  object Label6: TLabel
    Left = 24
    Top = 264
    Width = 88
    Height = 20
    Caption = 'Nom agent'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -16
    Font.Name = 'MS Sans Serif'
    Font.Style = [fsBold]
    ParentFont = False
  end
  object Label7: TLabel
    Left = 24
    Top = 304
    Width = 113
    Height = 20
    Caption = 'Pr'#233'nom agent'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -16
    Font.Name = 'MS Sans Serif'
    Font.Style = [fsBold]
    ParentFont = False
  end
  object Label8: TLabel
    Left = 24
    Top = 344
    Width = 117
    Height = 20
    Caption = 'Nom compteur'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -16
    Font.Name = 'MS Sans Serif'
    Font.Style = [fsBold]
    ParentFont = False
  end
  object Label9: TLabel
    Left = 24
    Top = 392
    Width = 143
    Height = 20
    Caption = 'Numero compteur'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -16
    Font.Name = 'MS Sans Serif'
    Font.Style = [fsBold]
    ParentFont = False
  end
  object Label10: TLabel
    Left = 528
    Top = 64
    Width = 150
    Height = 20
    Caption = 'R'#233'f'#233'rence abonn'#233
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -16
    Font.Name = 'MS Sans Serif'
    Font.Style = [fsBold]
    ParentFont = False
  end
  object Label11: TLabel
    Left = 528
    Top = 104
    Width = 102
    Height = 20
    Caption = 'Nom abonn'#233
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -16
    Font.Name = 'MS Sans Serif'
    Font.Style = [fsBold]
    ParentFont = False
  end
  object Label12: TLabel
    Left = 888
    Top = 104
    Width = 127
    Height = 20
    Caption = 'Pr'#233'nom abonn'#233
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -16
    Font.Name = 'MS Sans Serif'
    Font.Style = [fsBold]
    ParentFont = False
  end
  object Label13: TLabel
    Left = 528
    Top = 144
    Width = 142
    Height = 20
    Caption = 'Addresse abonn'#233
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -16
    Font.Name = 'MS Sans Serif'
    Font.Style = [fsBold]
    ParentFont = False
  end
  object Label14: TLabel
    Left = 104
    Top = 24
    Width = 35
    Height = 20
    Caption = 'id aff'
    Visible = False
  end
  object Label15: TLabel
    Left = 608
    Top = 32
    Width = 34
    Height = 20
    Caption = 'id ab'
    Visible = False
  end
  object DBGrid_aff: TDBGrid
    Left = 16
    Top = 496
    Width = 1185
    Height = 289
    DataSource = DataModule1.DataSource_operation
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -16
    Font.Name = 'MS Sans Serif'
    Font.Style = []
    ParentFont = False
    TabOrder = 0
    TitleFont.Charset = DEFAULT_CHARSET
    TitleFont.Color = clWindowText
    TitleFont.Height = -11
    TitleFont.Name = 'MS Sans Serif'
    TitleFont.Style = []
    OnCellClick = DBGrid_affCellClick
  end
  object DBEdit_num_aff: TDBEdit
    Left = 168
    Top = 64
    Width = 217
    Height = 28
    DataField = 'num_aff'
    DataSource = DataModule1.DataSource_operation
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -16
    Font.Name = 'MS Sans Serif'
    Font.Style = []
    ParentFont = False
    TabOrder = 1
  end
  object DBComboBox_nature_aff: TDBComboBox
    Left = 168
    Top = 104
    Width = 217
    Height = 28
    DataField = 'nature_aff'
    DataSource = DataModule1.DataSource_operation
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -16
    Font.Name = 'MS Sans Serif'
    Font.Style = []
    ItemHeight = 20
    Items.Strings = (
      'Nouveau CPT. ELEC'
      'Nouveau CPT GAZ'
      'D'#233'placement Cpt')
    ParentFont = False
    TabOrder = 2
  end
  object DateTimePicker_date_aff: TDateTimePicker
    Left = 168
    Top = 144
    Width = 186
    Height = 28
    Date = 44791.387474027780000000
    Format = ' '
    Time = 44791.387474027780000000
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -16
    Font.Name = 'MS Sans Serif'
    Font.Style = []
    ParentFont = False
    TabOrder = 3
  end
  object DateTimePicker_date_etude: TDateTimePicker
    Left = 168
    Top = 184
    Width = 186
    Height = 28
    Date = 44791.387587962960000000
    Format = ' '
    Time = 44791.387587962960000000
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -16
    Font.Name = 'MS Sans Serif'
    Font.Style = []
    ParentFont = False
    TabOrder = 4
    OnChange = DateTimePicker_date_etudeChange
  end
  object DateTimePicker_date_rec: TDateTimePicker
    Left = 168
    Top = 224
    Width = 186
    Height = 28
    Date = 44791.387619432870000000
    Format = ' '
    Time = 44791.387619432870000000
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -16
    Font.Name = 'MS Sans Serif'
    Font.Style = []
    ParentFont = False
    TabOrder = 5
    OnChange = DateTimePicker_date_recChange
  end
  object DBEdit_nom_agent: TDBEdit
    Left = 168
    Top = 264
    Width = 217
    Height = 28
    DataField = 'nom_agent'
    DataSource = DataModule1.DataSource_operation
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -16
    Font.Name = 'MS Sans Serif'
    Font.Style = []
    ParentFont = False
    TabOrder = 6
  end
  object DBEdit_prenom_agent: TDBEdit
    Left = 168
    Top = 304
    Width = 217
    Height = 28
    DataField = 'prenom_agent'
    DataSource = DataModule1.DataSource_operation
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -16
    Font.Name = 'MS Sans Serif'
    Font.Style = []
    ParentFont = False
    TabOrder = 7
  end
  object DBLookupComboBox_code_type_aff: TDBLookupComboBox
    Left = 168
    Top = 344
    Width = 217
    Height = 28
    DataField = 'code_type_aff'
    DataSource = DataModule1.DataSource_operation
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -16
    Font.Name = 'MS Sans Serif'
    Font.Style = []
    KeyField = 'code_type'
    ListField = 'nom_type'
    ListSource = DataModule1.DataSource_type_compteur
    ParentFont = False
    TabOrder = 8
  end
  object DBEdit_num_cpt: TDBEdit
    Left = 168
    Top = 392
    Width = 217
    Height = 28
    DataField = 'num_cpt'
    DataSource = DataModule1.DataSource_operation
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -16
    Font.Name = 'MS Sans Serif'
    Font.Style = []
    ParentFont = False
    TabOrder = 9
  end
  object DBEdit_ref_ab: TDBEdit
    Left = 688
    Top = 64
    Width = 217
    Height = 28
    DataField = 'ref_ab'
    DataSource = DataModule1.DataSource_abonne
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -16
    Font.Name = 'MS Sans Serif'
    Font.Style = []
    ParentFont = False
    TabOrder = 10
  end
  object DBEdit_nom_ab: TDBEdit
    Left = 688
    Top = 104
    Width = 177
    Height = 28
    DataField = 'nom_ab'
    DataSource = DataModule1.DataSource_abonne
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -16
    Font.Name = 'MS Sans Serif'
    Font.Style = []
    ParentFont = False
    TabOrder = 11
  end
  object DBEdit_prenom_ab: TDBEdit
    Left = 1024
    Top = 104
    Width = 177
    Height = 28
    DataField = 'prenom_ab'
    DataSource = DataModule1.DataSource_abonne
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -16
    Font.Name = 'MS Sans Serif'
    Font.Style = []
    ParentFont = False
    TabOrder = 12
  end
  object DBEdit_adr_ab: TDBEdit
    Left = 688
    Top = 144
    Width = 513
    Height = 28
    DataField = 'adr_ab'
    DataSource = DataModule1.DataSource_abonne
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -16
    Font.Name = 'MS Sans Serif'
    Font.Style = []
    ParentFont = False
    TabOrder = 13
  end
  object DBGrid_ab: TDBGrid
    Left = 528
    Top = 232
    Width = 673
    Height = 185
    DataSource = DataModule1.DataSource_abonne
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -16
    Font.Name = 'MS Sans Serif'
    Font.Style = []
    ParentFont = False
    TabOrder = 14
    TitleFont.Charset = DEFAULT_CHARSET
    TitleFont.Color = clWindowText
    TitleFont.Height = -11
    TitleFont.Name = 'MS Sans Serif'
    TitleFont.Style = []
  end
  object Button_nouveau_ab: TButton
    Left = 648
    Top = 184
    Width = 91
    Height = 33
    Caption = 'Nouveau'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -16
    Font.Name = 'MS Sans Serif'
    Font.Style = [fsBold]
    ParentFont = False
    TabOrder = 15
    OnClick = Button_nouveau_abClick
  end
  object Button_enregistrer_ab: TButton
    Left = 760
    Top = 184
    Width = 97
    Height = 33
    Caption = 'Enregistrer'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -16
    Font.Name = 'MS Sans Serif'
    Font.Style = [fsBold]
    ParentFont = False
    TabOrder = 16
    OnClick = Button_enregistrer_abClick
  end
  object Button_supprimer_ab: TButton
    Left = 992
    Top = 184
    Width = 97
    Height = 33
    Caption = 'Supprimer'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -16
    Font.Name = 'MS Sans Serif'
    Font.Style = [fsBold]
    ParentFont = False
    TabOrder = 17
    OnClick = Button_supprimer_abClick
  end
  object Button_annuler_ab: TButton
    Left = 1112
    Top = 184
    Width = 89
    Height = 33
    Caption = 'Annuler'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -16
    Font.Name = 'MS Sans Serif'
    Font.Style = [fsBold]
    ParentFont = False
    TabOrder = 18
    OnClick = Button_annuler_abClick
  end
  object Button_modifier_ab: TButton
    Left = 880
    Top = 184
    Width = 91
    Height = 33
    Caption = 'Modifier'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -16
    Font.Name = 'MS Sans Serif'
    Font.Style = [fsBold]
    ParentFont = False
    TabOrder = 19
    OnClick = Button_modifier_abClick
  end
  object DBEdit_id_aff: TDBEdit
    Left = 168
    Top = 24
    Width = 217
    Height = 28
    DataField = 'id_aff'
    DataSource = DataModule1.DataSource_operation
    TabOrder = 20
    Visible = False
  end
  object Button_nouveau_aff: TButton
    Left = 16
    Top = 448
    Width = 97
    Height = 33
    Caption = 'Nouveau'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -16
    Font.Name = 'MS Sans Serif'
    Font.Style = [fsBold]
    ParentFont = False
    TabOrder = 21
    OnClick = Button_nouveau_affClick
  end
  object Button_enregistrer_aff: TButton
    Left = 136
    Top = 448
    Width = 97
    Height = 33
    Caption = 'Enregistrer'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -16
    Font.Name = 'MS Sans Serif'
    Font.Style = [fsBold]
    ParentFont = False
    TabOrder = 22
    OnClick = Button_enregistrer_affClick
  end
  object Button_supprimer_aff: TButton
    Left = 256
    Top = 448
    Width = 97
    Height = 33
    Caption = 'Supprimer'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -16
    Font.Name = 'MS Sans Serif'
    Font.Style = [fsBold]
    ParentFont = False
    TabOrder = 23
    OnClick = Button_supprimer_affClick
  end
  object Button_annuler_aff: TButton
    Left = 376
    Top = 448
    Width = 97
    Height = 33
    Caption = 'Annuler'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -16
    Font.Name = 'MS Sans Serif'
    Font.Style = [fsBold]
    ParentFont = False
    TabOrder = 24
    OnClick = Button_annuler_affClick
  end
  object DBEdit1: TDBEdit
    Left = 688
    Top = 24
    Width = 121
    Height = 28
    DataField = 'id_ab'
    DataSource = DataModule1.DataSource_abonne
    TabOrder = 25
    Visible = False
  end
  object Edit_recherche: TEdit
    Left = 576
    Top = 448
    Width = 321
    Height = 28
    TabOrder = 26
  end
  object Button_recherche_ref: TButton
    Left = 912
    Top = 432
    Width = 137
    Height = 57
    Caption = 'Rechercher par r'#233'f'#233'rence'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -16
    Font.Name = 'MS Sans Serif'
    Font.Style = [fsBold]
    ParentFont = False
    TabOrder = 27
    WordWrap = True
    OnClick = Button_recherche_refClick
  end
  object Button_num_aff: TButton
    Left = 1064
    Top = 432
    Width = 137
    Height = 57
    Caption = 'Rechercher par n'#176' affaire'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -16
    Font.Name = 'MS Sans Serif'
    Font.Style = [fsBold]
    ParentFont = False
    TabOrder = 28
    WordWrap = True
    OnClick = Button_num_affClick
  end
  object MainMenu1: TMainMenu
    object Fichier1: TMenuItem
      Caption = 'Fichier'
      object Compteurs1: TMenuItem
        Caption = 'Types compteurs'
        OnClick = Compteurs1Click
      end
      object Demandesdapprovisonements1: TMenuItem
        Caption = 'Demandes d'#39'approvisionnements'
        OnClick = Demandesdapprovisonements1Click
      end
      object Changermotdepasse1: TMenuItem
        Caption = 'Changer mot de passe'
        OnClick = Changermotdepasse1Click
      end
      object N1: TMenuItem
        Caption = '-'
      end
      object Fermer1: TMenuItem
        Caption = 'Fermer'
        OnClick = Fermer1Click
      end
    end
    object Rapports1: TMenuItem
      Caption = 'Rapports'
    end
  end
end
