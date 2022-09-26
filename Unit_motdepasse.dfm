object Form_utilisateur: TForm_utilisateur
  Left = 718
  Top = 192
  BorderStyle = bsDialog
  Caption = 'Changer le mot de passe'
  ClientHeight = 311
  ClientWidth = 641
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
    Top = 64
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
    Top = 112
    Width = 169
    Height = 20
    Caption = 'Ancien mot de passe'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -16
    Font.Name = 'MS Sans Serif'
    Font.Style = [fsBold]
    ParentFont = False
  end
  object Label3: TLabel
    Left = 40
    Top = 160
    Width = 184
    Height = 20
    Caption = 'Nouveau mot de passe'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -16
    Font.Name = 'MS Sans Serif'
    Font.Style = [fsBold]
    ParentFont = False
  end
  object Label4: TLabel
    Left = 40
    Top = 208
    Width = 192
    Height = 20
    Caption = 'Confirmer mot de passe'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -16
    Font.Name = 'MS Sans Serif'
    Font.Style = [fsBold]
    ParentFont = False
  end
  object Label5: TLabel
    Left = 128
    Top = 8
    Width = 293
    Height = 29
    Caption = 'Changer le mot de passe'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -23
    Font.Name = 'MS Sans Serif'
    Font.Style = [fsBold]
    ParentFont = False
  end
  object Edit_utilisateur: TEdit
    Left = 240
    Top = 64
    Width = 297
    Height = 28
    TabOrder = 0
  end
  object Edit_ancien: TEdit
    Left = 240
    Top = 112
    Width = 297
    Height = 28
    PasswordChar = '*'
    TabOrder = 1
  end
  object Edit_nouveau: TEdit
    Left = 240
    Top = 160
    Width = 297
    Height = 28
    PasswordChar = '*'
    TabOrder = 2
  end
  object Edit_confirmer: TEdit
    Left = 240
    Top = 208
    Width = 297
    Height = 28
    PasswordChar = '*'
    TabOrder = 3
  end
  object Button_sauvegarder: TButton
    Left = 240
    Top = 264
    Width = 137
    Height = 33
    Caption = 'Sauvegarder'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -16
    Font.Name = 'MS Sans Serif'
    Font.Style = [fsBold]
    ParentFont = False
    TabOrder = 4
    OnClick = Button_sauvegarderClick
  end
end
