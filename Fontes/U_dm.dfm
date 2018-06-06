object DM: TDM
  OldCreateOrder = False
  Height = 312
  Width = 332
  object FD_Conexao: TFDConnection
    Params.Strings = (
      'Database=Systech'
      'User_Name=root'
      'Password=enju'
      'Server=127.0.0.1'
      'DriverID=MySQL')
    Connected = True
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
  object FDQ_Max: TFDQuery
    Connection = FD_Conexao
    SQL.Strings = (
      'select MAX(id_referencia) from referenciacomercial;')
    Left = 28
    Top = 159
    object FDQ_MaxMAXid_referencia: TIntegerField
      AutoGenerateValue = arDefault
      FieldName = 'MAX(id_referencia)'
      Origin = '`MAX(id_referencia)`'
      ProviderFlags = []
      ReadOnly = True
    end
  end
  object FDQ_ReferenciaComercial: TFDQuery
    Active = True
    Connection = FD_Conexao
    SQL.Strings = (
      'select * from referenciacomercial where id_referencia = null;')
    Left = 120
    Top = 88
    object FDQ_ReferenciaComercialid_referencia: TFDAutoIncField
      FieldName = 'id_referencia'
      Origin = 'id_referencia'
      ProviderFlags = [pfInWhere, pfInKey]
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
end
