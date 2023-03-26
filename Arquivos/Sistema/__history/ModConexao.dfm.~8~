object dmDados: TdmDados
  OldCreateOrder = False
  Height = 423
  Width = 673
  object SQLConnection: TSQLConnection
    ConnectionName = 'financeiro'
    DriverName = 'MySQL'
    LoginPrompt = False
    Params.Strings = (
      'DriverName=MySQL'
      'DriverUnit=Data.DBXMySQL'
      
        'DriverPackageLoader=TDBXDynalinkDriverLoader,DbxCommonDriver220.' +
        'bpl'
      
        'DriverAssemblyLoader=Borland.Data.TDBXDynalinkDriverLoader,Borla' +
        'nd.Data.DbxCommonDriver,Version=22.0.0.0,Culture=neutral,PublicK' +
        'eyToken=91d62ebb5b0d1b1b'
      
        'MetaDataPackageLoader=TDBXMySqlMetaDataCommandFactory,DbxMySQLDr' +
        'iver220.bpl'
      
        'MetaDataAssemblyLoader=Borland.Data.TDBXMySqlMetaDataCommandFact' +
        'ory,Borland.Data.DbxMySQLDriver,Version=22.0.0.0,Culture=neutral' +
        ',PublicKeyToken=91d62ebb5b0d1b1b'
      'LibraryName=dbxmys.dll'
      'LibraryNameOsx=libsqlmys.dylib'
      'VendorLib=LIBMYSQL.dll'
      'VendorLibWin64=libmysql.dll'
      'VendorLibOsx=libmysqlclient.dylib'
      'HostName=localhost'
      'User_Name=root'
      'Password=Pl276'
      'MaxBlobSize=-1'
      'LocaleCode=0000'
      'Compressed=False'
      'Encrypted=False'
      'BlobSize=-1'
      'ErrorResourceFile='
      'Database=financeiro')
    Connected = True
    Left = 24
    Top = 16
  end
  object sdscaixa: TSQLDataSet
    CommandText = 'SELECT*FROM CAIXA'
    MaxBlobSize = -1
    Params = <>
    SQLConnection = SQLConnection
    Left = 24
    Top = 80
  end
  object dspcontas_pagar: TDataSetProvider
    DataSet = sdsconstas_pagar
    Left = 120
    Top = 144
  end
  object cdscaixa: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'dspcaixa'
    Left = 216
    Top = 80
    object cdscaixaid: TIntegerField
      FieldName = 'id'
      Required = True
    end
    object cdscaixanumero_doc: TStringField
      FieldName = 'numero_doc'
      Required = True
    end
    object cdscaixadescricao: TStringField
      FieldName = 'descricao'
      Size = 200
    end
    object cdscaixavalor: TFMTBCDField
      FieldName = 'valor'
      Required = True
      Precision = 20
      Size = 2
    end
    object cdscaixatipo: TStringField
      FieldName = 'tipo'
      Required = True
      FixedChar = True
      Size = 1
    end
    object cdscaixadt_cadastro: TDateField
      FieldName = 'dt_cadastro'
      Required = True
    end
  end
  object cdscontas_pagar: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'dspcontas_pagar'
    Left = 224
    Top = 144
    object cdscontas_pagarid: TIntegerField
      FieldName = 'id'
      Required = True
    end
    object cdscontas_pagarnumero_doc: TStringField
      FieldName = 'numero_doc'
      Required = True
    end
    object cdscontas_pagardescricao: TStringField
      FieldName = 'descricao'
      Size = 200
    end
    object cdscontas_pagarparcela: TIntegerField
      FieldName = 'parcela'
      Required = True
    end
    object cdscontas_pagarvlr_parcela: TFMTBCDField
      FieldName = 'vlr_parcela'
      Required = True
      Precision = 20
      Size = 2
    end
    object cdscontas_pagarvlr_compra: TFMTBCDField
      FieldName = 'vlr_compra'
      Required = True
      Precision = 20
      Size = 2
    end
    object cdscontas_pagarvlr_abatido: TFMTBCDField
      FieldName = 'vlr_abatido'
      Required = True
      Precision = 20
      Size = 2
    end
    object cdscontas_pagardt_compra: TDateField
      FieldName = 'dt_compra'
      Required = True
    end
    object cdscontas_pagardt_cadastro: TDateField
      FieldName = 'dt_cadastro'
      Required = True
    end
    object cdscontas_pagardt_vencimento: TDateField
      FieldName = 'dt_vencimento'
      Required = True
    end
    object cdscontas_pagardt_pagamento: TDateField
      FieldName = 'dt_pagamento'
      Required = True
    end
    object cdscontas_pagarstatus: TStringField
      FieldName = 'status'
      Required = True
      FixedChar = True
      Size = 1
    end
  end
  object dspcaixa: TDataSetProvider
    DataSet = sdscaixa
    Left = 120
    Top = 80
  end
  object sdsconstas_pagar: TSQLDataSet
    CommandText = 'SELECT*FROM CONTAS_PAGAR'
    MaxBlobSize = -1
    Params = <>
    SQLConnection = SQLConnection
    Left = 24
    Top = 144
  end
  object dspcontas_receber: TDataSetProvider
    DataSet = sdscontas_receber
    Left = 120
    Top = 208
  end
  object cdscontas_receber: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'dspcontas_receber'
    Left = 224
    Top = 208
    object cdscontas_receberid: TIntegerField
      FieldName = 'id'
      Required = True
    end
    object cdscontas_receberdocumento: TStringField
      FieldName = 'documento'
      Required = True
    end
    object cdscontas_receberdescricao: TStringField
      FieldName = 'descricao'
      Size = 200
    end
    object cdscontas_receberparcela: TIntegerField
      FieldName = 'parcela'
      Required = True
    end
    object cdscontas_recebervlr_parcela: TFMTBCDField
      FieldName = 'vlr_parcela'
      Required = True
      Precision = 20
      Size = 2
    end
    object cdscontas_recebervlr_compra: TFMTBCDField
      FieldName = 'vlr_compra'
      Required = True
      Precision = 20
      Size = 2
    end
    object cdscontas_recebervlr_abatido: TFMTBCDField
      FieldName = 'vlr_abatido'
      Required = True
      Precision = 20
      Size = 2
    end
    object cdscontas_receberdt_compra: TDateField
      FieldName = 'dt_compra'
      Required = True
    end
    object cdscontas_receberdt_vencimento: TDateField
      FieldName = 'dt_vencimento'
      Required = True
    end
    object cdscontas_receberdt_cadastro: TDateField
      FieldName = 'dt_cadastro'
      Required = True
    end
    object cdscontas_receberdt_pagamento: TDateField
      FieldName = 'dt_pagamento'
    end
    object cdscontas_receberstatus: TStringField
      FieldName = 'status'
      Required = True
      FixedChar = True
      Size = 10
    end
  end
  object sdscontas_receber: TSQLDataSet
    CommandText = 'SELECT*FROM CONTAS_RECEBER'
    MaxBlobSize = -1
    Params = <>
    SQLConnection = SQLConnection
    Left = 24
    Top = 208
  end
  object dspusuarios: TDataSetProvider
    DataSet = sdsusuarios
    Left = 120
    Top = 272
  end
  object cdsusuarios: TClientDataSet
    Active = True
    Aggregates = <>
    Params = <>
    ProviderName = 'dspusuarios'
    Left = 224
    Top = 272
    object cdsusuariosid: TIntegerField
      FieldName = 'Id'
      Required = True
    end
    object cdsusuariosnome: TStringField
      FieldName = 'Nome'
      Required = True
      Size = 50
    end
    object cdsusuarioslogin: TStringField
      FieldName = 'Login'
      Required = True
    end
    object cdsusuariossenha: TStringField
      FieldName = 'Senha'
      Required = True
    end
    object cdsusuariosstatus: TStringField
      FieldName = 'Status'
      Required = True
      FixedChar = True
      Size = 1
    end
    object cdsusuariosdt_cadastro: TDateField
      FieldName = 'dt_cadastro'
    end
  end
  object sdsusuarios: TSQLDataSet
    CommandText = 'SELECT*FROM USUARIOS'
    MaxBlobSize = -1
    Params = <>
    SQLConnection = SQLConnection
    Left = 24
    Top = 272
  end
end
