object Form_login: TForm_login
  Left = 567
  Top = 363
  BorderStyle = bsNone
  Caption = 'Login'
  ClientHeight = 154
  ClientWidth = 470
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -16
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  OldCreateOrder = False
  PixelsPerInch = 96
  TextHeight = 20
  object Label1: TLabel
    Left = 40
    Top = 32
    Width = 83
    Height = 20
    Caption = 'Utilisateur'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -16
    Font.Name = 'MS Sans Serif'
    Font.Style = [fsBold]
    ParentFont = False
  end
  object Label2: TLabel
    Left = 40
    Top = 72
    Width = 109
    Height = 20
    Caption = 'Mot de passe'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -16
    Font.Name = 'MS Sans Serif'
    Font.Style = [fsBold]
    ParentFont = False
  end
  object Edit_utilisateur: TEdit
    Left = 176
    Top = 24
    Width = 265
    Height = 28
    TabOrder = 0
    Text = 'admin'
  end
  object Edit_motdepasse: TEdit
    Left = 176
    Top = 64
    Width = 265
    Height = 28
    PasswordChar = '*'
    TabOrder = 1
    Text = 'admin'
  end
  object Button_connecter: TButton
    Left = 176
    Top = 104
    Width = 121
    Height = 33
    Caption = 'Connecter'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -16
    Font.Name = 'MS Sans Serif'
    Font.Style = [fsBold]
    ParentFont = False
    TabOrder = 2
    OnClick = Button_connecterClick
  end
  object Button_annuler: TButton
    Left = 312
    Top = 104
    Width = 121
    Height = 33
    Caption = 'Annuler'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -16
    Font.Name = 'MS Sans Serif'
    Font.Style = [fsBold]
    ParentFont = False
    TabOrder = 3
    OnClick = Button_annulerClick
  end
end
