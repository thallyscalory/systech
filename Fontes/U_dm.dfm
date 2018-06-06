object DM: TDM
  OldCreateOrder = False
  Height = 344
  Width = 463
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
  object FDQ_Cidade: TFDQuery
    Connection = FD_Conexao
    SQL.Strings = (
      'select * from cidade;')
    Left = 184
    Top = 16
  end
end
