object DM: TDM
  OldCreateOrder = False
  Height = 312
  Width = 518
  object FD_Conexao: TFDConnection
    Params.Strings = (
      'Database=Systech'
      'User_Name=root'
      'Password=enju'
      'Server=127.0.0.1'
      'DriverID=MySQL')
    LoginPrompt = False
    Left = 24
    Top = 16
  end
  object FDQ_RC: TFDQuery
    Connection = FD_Conexao
    SQL.Strings = (
      'select * from referenciacomercial '
      'where empresaref like :RefEmpresa order by id_referencia;')
    Left = 28
    Top = 87
    ParamData = <
      item
        Name = 'REFEMPRESA'
        ParamType = ptInput
      end>
    object FDQ_RCid_referencia: TFDAutoIncField
      FieldName = 'id_referencia'
      Origin = 'id_referencia'
      ProviderFlags = [pfInWhere, pfInKey]
      ReadOnly = True
    end
    object FDQ_RCempresaref: TStringField
      FieldName = 'empresaref'
      Origin = 'empresaref'
      Required = True
    end
    object FDQ_RCtelefone: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'telefone'
      Origin = 'telefone'
      Size = 14
    end
    object FDQ_RCstatus: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'status'
      Origin = 'status'
      FixedChar = True
      Size = 1
    end
  end
  object FDQ_MaxRefCom: TFDQuery
    Connection = FD_Conexao
    SQL.Strings = (
      'select MAX(id_referencia) from referenciacomercial;')
    Left = 28
    Top = 159
    object FDQ_MaxRefComMAXid_referencia: TIntegerField
      AutoGenerateValue = arDefault
      FieldName = 'MAX(id_referencia)'
      Origin = '`MAX(id_referencia)`'
      ProviderFlags = []
      ReadOnly = True
    end
  end
  object FDQ_ReferenciaComercial: TFDQuery
    Connection = FD_Conexao
    SQL.Strings = (
      'select * from referenciacomercial where id_referencia = null;')
    Left = 120
    Top = 88
    object FDQ_ReferenciaComercialid_referencia: TFDAutoIncField
      FieldName = 'id_referencia'
      Origin = 'id_referencia'
      ProviderFlags = [pfInWhere, pfInKey]
      ReadOnly = True
    end
    object FDQ_ReferenciaComercialempresaref: TStringField
      FieldName = 'empresaref'
      Origin = 'empresaref'
      Required = True
    end
    object FDQ_ReferenciaComercialtelefone: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'telefone'
      Origin = 'telefone'
      EditMask = '!\(99\)00000-0000;1;_'
      Size = 14
    end
    object FDQ_ReferenciaComercialstatus: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'status'
      Origin = 'status'
      FixedChar = True
      Size = 1
    end
  end
  object FDQ_Cidade: TFDQuery
    Connection = FD_Conexao
    SQL.Strings = (
      'select * from cidade;')
    Left = 128
    Top = 32
  end
  object DS_Subgrupo: TDataSource
    DataSet = FDQ_Subgrupo
    Left = 356
    Top = 176
  end
  object FDQ_Subgrupo: TFDQuery
    Connection = FD_Conexao
    SQL.Strings = (
      
        'select s.id_subgrupo, s.id_grupo, s.datacadastro, s.nome, s.stat' +
        'us, g.nome as '#39'nomeGrupo'#39
      '      from subgrupo s'
      '      inner join grupo g'
      '            on g.id_grupo = s.id_grupo'
      ';')
    Left = 356
    Top = 232
    object FDQ_Subgrupoid_subgrupo: TFDAutoIncField
      FieldName = 'id_subgrupo'
      Origin = 'id_subgrupo'
      ProviderFlags = [pfInWhere, pfInKey]
      ReadOnly = True
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
end
