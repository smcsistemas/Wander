object Module: TModule
  OldCreateOrder = False
  Height = 180
  Width = 176
  object connection: TFDConnection
    ConnectionName = 'connection'
    Params.Strings = (
      'Database=smc_automacao'
      'User_Name=root'
      'Password=1234'
      'Server=127.0.0.1'
      'DriverID=MySQL')
    Connected = True
    LoginPrompt = False
    Left = 24
    Top = 16
  end
  object Link: TFDPhysMySQLDriverLink
    Left = 24
    Top = 64
  end
  object Wait: TFDGUIxWaitCursor
    Provider = 'Forms'
    ScreenCursor = gcrAppWait
    Left = 104
    Top = 69
  end
  object connHostinger: TFDConnection
    ConnectionName = 'connHostinger'
    Params.Strings = (
      'Database=u796938653_mngr'
      'User_Name=u796938653_cli'
      'Password=5mD#>ovMX6*S'
      'Server=sql205.main-hosting.eu'
      'LoginTimeout=10000'
      'ReadTimeout=10000'
      'WriteTimeout=10000'
      'DriverID=MySQL')
    FetchOptions.AssignedValues = [evAutoClose]
    FetchOptions.AutoClose = False
    ResourceOptions.AssignedValues = [rvBackup]
    ResourceOptions.Backup = True
    LoginPrompt = False
    Left = 104
    Top = 16
  end
  object query: TFDQuery
    ConstraintsEnabled = True
    Connection = connection
    Left = 27
    Top = 118
  end
  object Q2: TFDQuery
    ConstraintsEnabled = True
    Connection = connection
    Left = 107
    Top = 126
  end
end
