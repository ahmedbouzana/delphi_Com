object Form1: TForm1
  Left = 389
  Top = 683
  Width = 1305
  Height = 675
  Caption = 'Type compteur'
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
    Left = 128
    Top = 40
    Width = 79
    Height = 20
    Caption = 'code type'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -16
    Font.Name = 'MS Sans Serif'
    Font.Style = [fsBold]
    ParentFont = False
  end
  object Label2: TLabel
    Left = 128
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
  object Label3: TLabel
    Left = 136
    Top = 136
    Width = 72
    Height = 20
    Caption = 'Capacit'#233
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -16
    Font.Name = 'MS Sans Serif'
    Font.Style = [fsBold]
    ParentFont = False
  end
  object Label4: TLabel
    Left = 160
    Top = 192
    Width = 63
    Height = 20
    Caption = 'Energie'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -16
    Font.Name = 'MS Sans Serif'
    Font.Style = [fsBold]
    ParentFont = False
  end
  object Label5: TLabel
    Left = 408
    Top = 16
    Width = 76
    Height = 20
    Caption = 'code_enrg'
  end
  object DBEdit1: TDBEdit
    Left = 272
    Top = 40
    Width = 121
    Height = 28
    DataField = 'code_type'
    DataSource = DataModule1.DataSource_compteur
    TabOrder = 0
  end
  object DBEdit2: TDBEdit
    Left = 280
    Top = 88
    Width = 121
    Height = 28
    DataSource = DataModule1.DataSource_compteur
    TabOrder = 1
  end
  object DBEdit3: TDBEdit
    Left = 288
    Top = 128
    Width = 121
    Height = 28
    DataSource = DataModule1.DataSource_compteur
    TabOrder = 2
  end
  object DBComboBox1: TDBComboBox
    Left = 472
    Top = 16
    Width = 145
    Height = 28
    DataField = 'code_enrg'
    DataSource = DataModule1.DataSource_compteur
    ItemHeight = 20
    TabOrder = 3
  end
  object ComboBox1: TComboBox
    Left = 296
    Top = 176
    Width = 145
    Height = 28
    ItemHeight = 20
    TabOrder = 4
    Text = 'ComboBox1'
  end
  object DBGrid1: TDBGrid
    Left = 72
    Top = 264
    Width = 1041
    Height = 313
    DataSource = DataModule1.DataSource_compteur
    TabOrder = 5
    TitleFont.Charset = DEFAULT_CHARSET
    TitleFont.Color = clWindowText
    TitleFont.Height = -16
    TitleFont.Name = 'MS Sans Serif'
    TitleFont.Style = []
  end
end
