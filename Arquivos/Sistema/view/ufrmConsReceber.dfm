object frm_cons_receber: Tfrm_cons_receber
  Left = 0
  Top = 0
  BorderStyle = bsSizeToolWin
  Caption = 'Consultar Contas a Receber'
  ClientHeight = 432
  ClientWidth = 885
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  KeyPreview = True
  OldCreateOrder = False
  Position = poScreenCenter
  PixelsPerInch = 96
  TextHeight = 13
  object GroupBox1: TGroupBox
    Left = 0
    Top = 8
    Width = 877
    Height = 121
    Caption = 'Filtros'
    TabOrder = 0
    object Label1: TLabel
      Left = 16
      Top = 32
      Width = 58
      Height = 13
      Caption = 'Documento:'
    end
    object Label2: TLabel
      Left = 16
      Top = 80
      Width = 57
      Height = 13
      Caption = 'Data Inicial:'
    end
    object Label3: TLabel
      Left = 223
      Top = 80
      Width = 52
      Height = 13
      Caption = 'Data Final:'
    end
    object SpeedButton1: TSpeedButton
      Left = 784
      Top = 16
      Width = 73
      Height = 66
      Cursor = crHandPoint
      Flat = True
      Glyph.Data = {
        360C0000424D360C000000000000360000002800000020000000200000000100
        180000000000000C0000120B0000120B00000000000000000000FF00FFFF00FF
        FF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00
        FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF
        00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FF
        FF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00
        FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF
        00FFFF00FFFF00FFA6A29FA6A29FA6A29FFF00FFFF00FFFF00FFFF00FFFF00FF
        FF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00
        FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF
        00FFFF00FFA6A29FE5E6E6E5E5E57C7B7C919393FF00FFFF00FFFF00FFFF00FF
        FF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00
        FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF
        00FFA6A29FD6D7D7E7E7E78080808A8B8B919393FF00FFFF00FFFF00FFFF00FF
        FF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00
        FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFA6
        A29FBEBFBFEBEBEB7B7B7B7D7E7E919393FF00FFFF00FFFF00FFFF00FFFF00FF
        FF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00
        FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFA6
        A29FEAEBEB8B8B8B757676919393FF00FFFF00FFFF00FFFF00FFFF00FFFF00FF
        FF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00
        FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFA6A29FE4
        E5E5B3B3B3707171919393FF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FF
        FF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00
        FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFA6A29FDCDDDDB1
        B1B16F7070919393FF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FF
        FF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00
        FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFA6A29FC9C9C9BFBFBF68
        6868919393FF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FF
        FF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00
        FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFA6A29FC6C6C66B6C6C91
        9393FF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FF
        FF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00
        FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFA6A29FCCCDCD808080919393FF
        00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FF
        FF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFA6A29FA6A29FA6A29FA6A2
        9FA6A29FA6A29FA6A29FFF00FFFF00FFA6A29FC9CACA7F7F7F919393FF00FFFF
        00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FF
        FF00FFFF00FFFF00FFFF00FFFF00FFA6A29FA6A29FD8D7D7EDEDEDF7F7F7F9F9
        F9F7F7F7EAE9E9D0CDCFA6A29FA6A29FD6D4D6999899737474FF00FFFF00FFFF
        00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FF
        FF00FFFF00FFFF00FFFF00FFA6A29FE1E1E1FDFDFDFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFCFCFCF1F1F1CBC9CBA6A29F767175FF00FFFF00FFFF00FFFF
        00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FF
        FF00FFFF00FFFF00FFA6A29FF3F2F1FFFFFFFFFFFEFFFEFEFFFEFEFFFEFEFFFF
        FEFFFFFEFFFFFEFFFFFEFFFFFEF9F9F9DCDADBA6A29FFF00FFFF00FFFF00FFFF
        00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FF
        FF00FFFF00FFA6A29FF6F4F2FFFFFCFFFDFBFFFDFCFFFEFCFFFEFCFFFEFCFFFE
        FCFFFEFCFFFEFDFFFEFDFFFEFDFFFEFDF6F6F5E0DCDDA6A29FFF00FFFF00FFFF
        00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FF
        FF00FFA6A29FE9E4E0FFFEFAFEFAF7FFFCFAFFFDFAFFFDFAFFFDFBFFFDFAFFFD
        FBFFFDFBFFFDFBFFFDFBFFFDFBFFFEFBFEFBFAF1EFEEC7C2C4A6A29FFF00FFFF
        00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FF
        FF00FFA6A29FFCF7F1FEF9F4FEFAF5FEFBF9FEFBF9FEFBF9FEFBF9FEFBF9FEFC
        F9FEFCF9FEFCF9FEFCF9FEFCF9FEFCF9FFFEFBF9F6F4E7E4E3A6A29FFF00FFFF
        00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FF
        A6A29FDCD6CFFFFAF3FEF7F0FEF8F2FEFBF7FEFBF7FEFBF7FEFBF7FEFBF7FEFB
        F7FEFBF7FEFBF7FEFBF7FEFBF7FEFBF7FEFBF8FFFBF8F2F0EDB5B1B2A6A29FFF
        00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FF
        A6A29FEAE2D9FFF8EFFEF6EDFEF8F0FEFBF5FEF9F4FEFAF4FEFAF5FEFAF5FEFA
        F5FEFAF5FEFAF5FEFAF5FEFAF5FEFAF6FEFAF6FFFCF7F5F3EFC6C3C2A6A29FFF
        00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FF
        A6A29FECE3D9FFF6ECFDF4EAFEF7EFFEF9F4FEF9F3FEF9F3FEF9F3FEF9F3FEF9
        F4FEF9F4FEF9F4FEF9F4FEF9F4FEFAF4FEFAF5FFFBF5F7F1EBCFC8C6A6A29FFF
        00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FF
        A6A29FE3D9CCFFF5E9FDF3E7FDF6ECFEF9F2FEF8F1FEF8F1FEF8F2FEF9F2FEF9
        F2FEF9F2FEF9F3FEF9F3FEF8F2FEF7EFFDF5ECFEF7EDF7F1E9D1CCC9A6A29FFF
        00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FF
        A6A29FDBCFC1FFF4E6FDF1E4FDF4E9FEF8F1FEF7F0FEF7F0FEF7F0FEF7F0FEF7
        EFFDF6EDFDF5EAFDF4E8FDF3E7FDF4E9FDF5ECFFF9F1F6F0EACDC7C6A6A29FFF
        00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FF
        A6A29FCCBFB1FFF3E5FDF1E2FCF1E3FDF2E4FDF2E4FDF2E4FDF1E4FCF1E4FCF1
        E3FDF1E4FDF2E5FDF3E8FEF6ECFEF7EFFEF7EFFEF8F0F2EBE4C2BDBCA6A29FFF
        00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FF
        A6A29FB5AB9FF6EADBFEF2E4FCF0E2FDF1E4FDF1E4FDF1E5FDF2E6FDF3E8FDF4
        EAFEF5ECFEF6EEFEF6EFFEF6EEFEF6EDFEF7EEFBF4EBEAE3DDADAAA9A6A29FFF
        00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FF
        FF00FFA6A29FCABCACFEF2E4FDF1E3FEF5ECFEF6EFFEF6EFFEF6EFFEF6EFFEF6
        EEFEF6EEFEF6EDFEF6EDFEF6EDFEF6EDFEF7EEEFE8E1D6CEC8A6A29FFF00FFFF
        00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FF
        FF00FFA6A29FA3978BDCCEBEFFF2E5FEF5EAFEF6EEFEF6EDFEF6EDFEF6EDFEF6
        EDFEF6EDFEF6EDFEF6EDFEF6EDFFF7EFF6EEE6DDD5CDB0AAA9A6A29FFF00FFFF
        00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FF
        FF00FFFF00FFA6A29FA69989DCCFBFFFF4E8FFFAF2FEF7EEFEF6EDFEF6EDFEF6
        EDFEF6EDFEF6EDFFF7EFFFF9F1F9F2EAD9D2CABEB6B2A6A29FFF00FFFF00FFFF
        00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FF
        FF00FFFF00FFFF00FFA6A29FA99E90C8BAAAEBE2D6FDF5EDFFF9F0FFF9F1FFF9
        F0FFF9F0FFF8F0F8F1E9E4DCD3CBC1B8B0A9A6A6A29FFF00FFFF00FFFF00FFFF
        00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FF
        FF00FFFF00FFFF00FFFF00FFA6A29FAEA39BA6998ABEB2A5D7CDC1E4DBD1E8DF
        D6E1D9CFD1C8BEBCB2A6B5A9A0A7A19DA6A29FFF00FFFF00FFFF00FFFF00FFFF
        00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FF
        FF00FFFF00FFFF00FFFF00FFFF00FFA6A29FA6A29FB7B0AAB2A89EB1A69AAFA4
        98B1A69BAFA69DA8A29FA6A29FA6A29FFF00FFFF00FFFF00FFFF00FFFF00FFFF
        00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FF
        FF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFA6A29FA6A29FA6A29FA6A2
        9FA6A29FA6A29FA6A29FFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF
        00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FF}
      OnClick = SpeedButton1Click
    end
    object Label4: TLabel
      Left = 431
      Top = 80
      Width = 72
      Height = 13
      Caption = 'Num. Parcelas:'
    end
    object txt_doc: TEdit
      Left = 80
      Top = 29
      Width = 120
      Height = 21
      TabOrder = 0
    end
    object rdgPeriodo: TRadioGroup
      Left = 223
      Top = 16
      Width = 298
      Height = 34
      Caption = 'Per'#237'odo'
      Columns = 3
      Items.Strings = (
        'Compra'
        'Baixa'
        'Vencimento')
      TabOrder = 1
    end
    object txt_dtinicio: TtpEdit
      Left = 79
      Top = 77
      Width = 121
      Height = 21
      Alignment = taLeftJustify
      CharCase = ecUpperCase
      MaxLength = 8
      TabOrder = 2
      Check = ckDate
      Caracter = tcNumeric
    end
    object txt_dtfinal: TtpEdit
      Left = 281
      Top = 77
      Width = 121
      Height = 21
      Alignment = taLeftJustify
      CharCase = ecUpperCase
      MaxLength = 8
      TabOrder = 3
      Check = ckDate
      Caracter = tcNumeric
    end
    object rdgStatus: TRadioGroup
      Left = 543
      Top = 16
      Width = 235
      Height = 34
      Caption = 'Status'
      Columns = 3
      Items.Strings = (
        'Aberto'
        'Cancelado'
        'Finalizado')
      TabOrder = 4
    end
    object txt_parcela: TEdit
      Left = 509
      Top = 77
      Width = 120
      Height = 21
      TabOrder = 5
    end
  end
  object GroupBox2: TGroupBox
    Left = 9
    Top = 152
    Width = 870
    Height = 209
    Align = alCustom
    Caption = 'Registros'
    TabOrder = 1
    object DBGrid1: TDBGrid
      Left = 0
      Top = 16
      Width = 873
      Height = 166
      DataSource = dsconsulta
      Options = [dgTitles, dgIndicator, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgRowSelect, dgConfirmDelete, dgCancelOnExit, dgTitleClick, dgTitleHotTrack]
      TabOrder = 0
      TitleFont.Charset = DEFAULT_CHARSET
      TitleFont.Color = clWindowText
      TitleFont.Height = -11
      TitleFont.Name = 'Tahoma'
      TitleFont.Style = []
      Columns = <
        item
          Expanded = False
          FieldName = 'id'
          Width = 50
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'documento'
          Width = 80
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'descricao'
          Width = 160
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'parcela'
          Width = 40
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'vlr_parcela'
          Width = 60
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'vlr_compra'
          Width = 70
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'vlr_abatido'
          Width = 70
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'dt_compra'
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'dt_vencimento'
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'dt_cadastro'
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'dt_pagamento'
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'status'
          Width = 40
          Visible = True
        end>
    end
    object StatusBar1: TStatusBar
      Left = 2
      Top = 188
      Width = 866
      Height = 19
      Panels = <
        item
          Width = 250
        end
        item
          Width = 350
        end>
    end
  end
  object Button1: TButton
    Left = 728
    Top = 376
    Width = 75
    Height = 25
    Caption = 'Fechar'
    TabOrder = 2
    OnClick = Button1Click
  end
  object Button2: TButton
    Left = 632
    Top = 376
    Width = 75
    Height = 25
    Caption = 'Cancelar'
    TabOrder = 3
    OnClick = Button2Click
  end
  object btn_baixar: TBitBtn
    Left = 536
    Top = 376
    Width = 75
    Height = 25
    Caption = 'Baixar'
    Enabled = False
    TabOrder = 4
    OnClick = btn_baixarClick
  end
  object cdsconsultas: TClientDataSet
    Aggregates = <>
    AggregatesActive = True
    Params = <>
    ProviderName = 'dspconsultar'
    RemoteServer = dmDados.LocalConnection
    Left = 712
    Top = 112
    object cdsconsultasid: TIntegerField
      FieldName = 'id'
      Required = True
    end
    object cdsconsultasdocumento: TStringField
      FieldName = 'documento'
      Required = True
    end
    object cdsconsultasdescricao: TStringField
      DisplayLabel = 'Descri'#231#227'o'
      FieldName = 'descricao'
      Size = 80
    end
    object cdsconsultasparcela: TIntegerField
      FieldName = 'parcela'
      Required = True
    end
    object cdsconsultasvlr_parcela: TFMTBCDField
      FieldName = 'vlr_parcela'
      Required = True
      Precision = 20
      Size = 2
    end
    object cdsconsultasvlr_compra: TFMTBCDField
      FieldName = 'vlr_compra'
      Required = True
      Precision = 20
      Size = 2
    end
    object cdsconsultasvlr_abatido: TFMTBCDField
      FieldName = 'vlr_abatido'
      Required = True
      Precision = 20
      Size = 2
    end
    object cdsconsultasdt_compra: TDateField
      FieldName = 'dt_compra'
      Required = True
    end
    object cdsconsultasdt_vencimento: TDateField
      FieldName = 'dt_vencimento'
      Required = True
    end
    object cdsconsultasdt_cadastro: TDateField
      FieldName = 'dt_cadastro'
      Required = True
    end
    object cdsconsultasdt_pagamento: TDateField
      FieldName = 'dt_pagamento'
    end
    object cdsconsultasstatus: TStringField
      FieldName = 'status'
      Required = True
      FixedChar = True
      Size = 10
    end
    object cdsconsultasTotal: TAggregateField
      FieldName = 'Total'
      Active = True
      currency = True
      DisplayName = ''
      Expression = 'SUM(vlr_parcela)'
    end
  end
  object dsconsulta: TDataSource
    DataSet = cdsconsultas
    Left = 776
    Top = 112
  end
end
