object DM: TDM
  OldCreateOrder = False
  Height = 312
  Width = 518
  object FD_Conexao: TFDConnection
    Params.Strings = (
      'Database=Systech'
      'User_Name=root'
      'Password=root'
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
  object FDQ_Estado: TFDQuery
    Connection = FD_Conexao
    SQL.Strings = (
      'select * from estado')
    Left = 368
    Top = 40
    object FDQ_Estadoid_estado: TFDAutoIncField
      FieldName = 'id_estado'
      Origin = 'id_estado'
      ProviderFlags = [pfInWhere, pfInKey]
      ReadOnly = True
    end
    object FDQ_Estadonome: TStringField
      FieldName = 'nome'
      Origin = 'nome'
      Required = True
      Size = 25
    end
    object FDQ_EstadoUF: TStringField
      FieldName = 'UF'
      Origin = 'UF'
      Required = True
      FixedChar = True
      Size = 2
    end
    object FDQ_Estadostatus: TStringField
      FieldName = 'status'
      Origin = '`status`'
      Required = True
      FixedChar = True
      Size = 1
    end
  end
  object DS_Estado: TDataSource
    DataSet = FDQ_Estado
    Left = 296
    Top = 24
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
    Left = 440
    Top = 240
  end
  object DS_Grupo: TDataSource
    DataSet = FDQ_Grupo
    Left = 304
    Top = 184
  end
  object DS_SubGrupo: TDataSource
    DataSet = FDQ_Subgrupo
    Left = 432
    Top = 184
  end
  object FDQ_Grupo: TFDQuery
    Connection = FD_Conexao
    SQL.Strings = (
      'select * from grupo;')
    Left = 304
    Top = 240
    object FDQ_Grupoid_grupo: TFDAutoIncField
      FieldName = 'id_grupo'
      Origin = 'id_grupo'
      ProviderFlags = [pfInWhere, pfInKey]
      ReadOnly = True
    end
    object FDQ_Grupodata_cadastro: TDateField
      FieldName = 'data_cadastro'
      Origin = 'data_cadastro'
      Required = True
    end
    object FDQ_Gruponome: TStringField
      FieldName = 'nome'
      Origin = 'nome'
      Required = True
      Size = 30
    end
    object FDQ_Grupostatus: TStringField
      FieldName = 'status'
      Origin = 'status'
      Required = True
      FixedChar = True
      Size = 1
    end
  end
end
