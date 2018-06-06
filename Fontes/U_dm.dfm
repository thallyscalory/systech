object DM: TDM
  OldCreateOrder = False
  Height = 292
  Width = 421
  object FD_Conexao: TFDConnection
    Params.Strings = (
      'Database=systech'
      'User_Name=root'
      'Password=root'
      'Server=127.0.0.1'
      'DriverID=MySQL')
    Connected = True
    LoginPrompt = False
    Left = 24
    Top = 16
  end
  object FDQ_Subgrupo: TFDQuery
    Active = True
    Connection = FD_Conexao
    SQL.Strings = (
      
        'select s.id_subgrupo, s.id_grupo, s.datacadastro, s.nome, s.stat' +
        'us, g.nome as '#39'nomeGrupo'#39
      '      from subgrupo s'
      '      inner join grupo g'
      '            on g.id_grupo = s.id_grupo'
      ';')
    Left = 344
    Top = 232
    object FDQ_Subgrupoid_subgrupo: TFDAutoIncField
      FieldName = 'id_subgrupo'
      Origin = 'id_subgrupo'
      ProviderFlags = [pfInWhere, pfInKey]
    end
    object FDQ_Subgrupoid_grupo: TIntegerField
      FieldName = 'id_grupo'
      Origin = 'id_grupo'
      Required = True
    end
    object FDQ_Subgrupodatacadastro: TDateField
      FieldName = 'datacadastro'
      Origin = 'datacadastro'
      Required = True
    end
    object FDQ_Subgruponome: TStringField
      FieldName = 'nome'
      Origin = 'nome'
      Required = True
      Size = 30
    end
    object FDQ_Subgrupostatus: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'status'
      Origin = 'status'
      FixedChar = True
      Size = 1
    end
    object FDQ_SubgruponomeGrupo: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'nomeGrupo'
      Origin = 'nome'
      ProviderFlags = []
      ReadOnly = True
      Size = 30
    end
  end
  object FDQ_Subgrupo_grupo: TFDQuery
    Active = True
    Connection = FD_Conexao
    SQL.Strings = (
      'select id_grupo, nome from grupo;')
    Left = 248
    Top = 232
  end
  object DS_Subgrupo_grupo: TDataSource
    DataSet = FDQ_Subgrupo_grupo
    Left = 248
    Top = 184
  end
  object DS_Subgrupo: TDataSource
    DataSet = FDQ_Subgrupo
    Left = 344
    Top = 184
  end
end
