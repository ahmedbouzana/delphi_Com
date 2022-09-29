object DataModule1: TDataModule1
  OldCreateOrder = False
  Top = 383
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
    Top = 170
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
    Left = 480
    Top = 170
  end
  object ADOQuery_demande_app: TADOQuery
    Active = True
    Connection = ADOConnection1
    CursorType = ctStatic
    Parameters = <>
    SQL.Strings = (
      'select * from demande_app')
    Left = 480
    Top = 104
  end
  object ADOQuery_approvisionnement: TADOQuery
    Active = True
    Connection = ADOConnection1
    CursorType = ctStatic
    Parameters = <>
    SQL.Strings = (
      
        'select * from approvisionner, type_cpt, energie where approvisio' +
        'nner.code_type = type_cpt.code_type and type_cpt.code_enrg = ene' +
        'rgie.code_enrg')
    Left = 672
    Top = 104
  end
  object DataSource_approvisionnement: TDataSource
    DataSet = ADOQuery_approvisionnement
    Left = 672
    Top = 170
  end
  object DataSource_type_compteur: TDataSource
    DataSet = ADOTable_type_compteur
    Left = 184
    Top = 178
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
    Left = 832
    Top = 104
  end
  object DataSource_energie: TDataSource
    DataSet = ADOTable_energie
    Left = 832
    Top = 162
  end
  object DataSource_abonne: TDataSource
    DataSet = ADOQuery_abonne
    Left = 952
    Top = 170
  end
  object ADOQuery_abonne: TADOQuery
    Active = True
    Connection = ADOConnection1
    CursorType = ctStatic
    Parameters = <>
    SQL.Strings = (
      'select * from abonne')
    Left = 952
    Top = 104
  end
  object DataSource_stock_cpt: TDataSource
    DataSet = ADOQuery_stock_cpt
    Left = 312
    Top = 176
  end
  object ADOQuery_stock_cpt: TADOQuery
    Active = True
    Connection = ADOConnection1
    CursorType = ctStatic
    Parameters = <>
    SQL.Strings = (
      
        'select * from stock_cpt left join operation on num_ser = num_cpt' +
        ' left join type_cpt  on stock_cpt.code_type =  type_cpt.code_typ' +
        'e ')
    Left = 312
    Top = 104
  end
  object ADOQuery_affaire: TADOQuery
    Active = True
    Connection = ADOConnection1
    CursorType = ctStatic
    Parameters = <>
    SQL.Strings = (
      
        'select * from operation left join stock_cpt on num_cpt = num_ser' +
        ' left join abonne on ref_ab_aff = ref_ab;')
    Left = 296
    Top = 248
  end
  object DataSource_affaire: TDataSource
    DataSet = ADOQuery_affaire
    Left = 307
    Top = 304
  end
end
