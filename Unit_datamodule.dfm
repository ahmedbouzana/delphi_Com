object DataModule1: TDataModule1
  OldCreateOrder = False
  Left = 612
  Top = 311
  Height = 456
  Width = 1024
  object ADOConnection1: TADOConnection
    Connected = True
    ConnectionString = 
      'Provider=SQLOLEDB.1;Integrated Security=SSPI;Persist Security In' +
      'fo=False;Initial Catalog=bd_sonelgaz;Data Source=DESKTOP-P562BE0' +
      '\SQLEXPRESS;Use Procedure for Prepare=1;Auto Translate=True;Pack' +
      'et Size=4096;Workstation ID=DESKTOP-P562BE0;Use Encryption for D' +
      'ata=False;Tag with column collation when possible=False'
    LoginPrompt = False
    Provider = 'SQLOLEDB.1'
    Left = 512
    Top = 8
  end
  object DataSource_login: TDataSource
    DataSet = ADOQuery_login
    Left = 32
    Top = 168
  end
  object ADOQuery_login: TADOQuery
    Active = True
    Connection = ADOConnection1
    CursorType = ctStatic
    Parameters = <>
    SQL.Strings = (
      'select * from login')
    Left = 32
    Top = 112
  end
  object DataSource_demande_approvisionnement: TDataSource
    DataSet = ADOQuery_demande_app
    Left = 360
    Top = 176
  end
  object ADOQuery_demande_app: TADOQuery
    Active = True
    Connection = ADOConnection1
    CursorType = ctStatic
    Parameters = <>
    SQL.Strings = (
      'select * from demande_app')
    Left = 360
    Top = 112
  end
  object ADOQuery_approvisionnement: TADOQuery
    Connection = ADOConnection1
    CursorType = ctStatic
    Parameters = <>
    Left = 552
    Top = 112
  end
  object DataSource_approvisionnement: TDataSource
    DataSet = ADOQuery_approvisionnement
    Left = 552
    Top = 176
  end
  object DataSource_type_compteur: TDataSource
    DataSet = ADOTable_type_compteur
    Left = 184
    Top = 176
  end
  object ADOTable_type_compteur: TADOTable
    Active = True
    Connection = ADOConnection1
    CursorType = ctStatic
    TableName = 'type_cpt'
    Left = 184
    Top = 104
  end
  object ADOTable_energie: TADOTable
    Active = True
    Connection = ADOConnection1
    CursorType = ctStatic
    TableName = 'energie'
    Left = 712
    Top = 112
  end
  object DataSource_energie: TDataSource
    DataSet = ADOTable_energie
    Left = 712
    Top = 168
  end
  object DataSource_abonne: TDataSource
    DataSet = ADOTable_abonne
    Left = 832
    Top = 176
  end
  object ADOTable_abonne: TADOTable
    Active = True
    Connection = ADOConnection1
    CursorType = ctStatic
    TableName = 'abonne'
    Left = 832
    Top = 120
  end
  object DataSource_operation: TDataSource
    DataSet = ADOQuery_operation
    Left = 960
    Top = 176
  end
  object ADOQuery_operation: TADOQuery
    Active = True
    Connection = ADOConnection1
    CursorType = ctStatic
    Parameters = <>
    SQL.Strings = (
      
        'select * from operation, type_cpt, abonne where code_type_aff = ' +
        'code_type and ref_ab_aff = ref_ab;')
    Left = 960
    Top = 120
  end
  object ADOQuery_abonne: TADOQuery
    Active = True
    Connection = ADOConnection1
    CursorType = ctStatic
    Parameters = <>
    SQL.Strings = (
      'select * from abonne')
    Left = 832
    Top = 72
  end
end