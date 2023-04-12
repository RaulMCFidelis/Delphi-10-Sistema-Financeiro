object frmConsRecibos: TfrmConsRecibos
  Left = 0
  Top = 0
  BorderStyle = bsSizeToolWin
  Caption = 'Consultar Recibos '
  ClientHeight = 441
  ClientWidth = 851
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  KeyPreview = True
  OldCreateOrder = False
  PopupMenu = PopupMenu1
  Position = poScreenCenter
  OnClose = FormClose
  OnCreate = FormCreate
  PixelsPerInch = 96
  TextHeight = 13
  object DBGrid1: TDBGrid
    Left = 0
    Top = 0
    Width = 851
    Height = 441
    Align = alClient
    DataSource = ds
    DrawingStyle = gdsGradient
    Options = [dgTitles, dgIndicator, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgRowSelect, dgCancelOnExit, dgTitleClick, dgTitleHotTrack]
    PopupMenu = PopupMenu1
    TabOrder = 0
    TitleFont.Charset = DEFAULT_CHARSET
    TitleFont.Color = clWindowText
    TitleFont.Height = -11
    TitleFont.Name = 'Tahoma'
    TitleFont.Style = []
  end
  object cds: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'dspconsultar'
    RemoteServer = dmDados.LocalConnection
    Left = 264
    Top = 232
    object cdsid: TIntegerField
      DisplayLabel = 'ID'
      DisplayWidth = 5
      FieldName = 'id'
      Required = True
    end
    object cdstipo_recibo: TIntegerField
      DisplayLabel = 'Tipo'
      DisplayWidth = 5
      FieldName = 'tipo_recibo'
      Required = True
    end
    object cdsdt_emissao: TStringField
      DisplayLabel = 'DT Emiss'#227'o'
      DisplayWidth = 10
      FieldName = 'dt_emissao'
      Required = True
      Size = 50
    end
    object cdsnome: TStringField
      DisplayLabel = 'Nome'
      DisplayWidth = 10
      FieldName = 'nome'
      Required = True
      Size = 50
    end
    object cdsvlr_recibo: TFMTBCDField
      DisplayLabel = 'Valor'
      DisplayWidth = 10
      FieldName = 'vlr_recibo'
      Required = True
      Precision = 20
      Size = 2
    end
    object cdsreferente: TStringField
      DisplayLabel = 'Referente'
      DisplayWidth = 10
      FieldName = 'referente'
      Required = True
      Size = 30
    end
    object cdsobservacao: TStringField
      DisplayLabel = 'Observa'#231#227'o'
      DisplayWidth = 20
      FieldName = 'observacao'
      Size = 250
    end
    object cdsemitente: TStringField
      DisplayLabel = 'Emitente'
      DisplayWidth = 10
      FieldName = 'emitente'
      Required = True
      Size = 100
    end
    object cdsendereco: TStringField
      DisplayLabel = 'Endere'#231'o'
      DisplayWidth = 15
      FieldName = 'endereco'
      Size = 100
    end
    object cdscpf_cnpj: TStringField
      DisplayLabel = 'CPF'
      DisplayWidth = 10
      FieldName = 'cpf_cnpj'
      Size = 30
    end
    object cdscidade: TStringField
      DisplayLabel = 'Cidade'
      DisplayWidth = 10
      FieldName = 'cidade'
      Size = 50
    end
    object cdsdt_cadastro: TDateField
      DisplayLabel = 'DT Cadastro'
      FieldName = 'dt_cadastro'
      Required = True
    end
    object cdshr_cadastro: TTimeField
      DisplayLabel = 'Hr Cadastro'
      FieldName = 'hr_cadastro'
      Required = True
    end
    object cdsuser_cadastro: TStringField
      DisplayLabel = 'Usu'#225'rio'
      DisplayWidth = 10
      FieldName = 'user_cadastro'
      Required = True
      Size = 50
    end
  end
  object ds: TDataSource
    DataSet = cds
    Left = 440
    Top = 240
  end
  object PopupMenu1: TPopupMenu
    Left = 448
    Top = 128
    object AbrirRelatrio1: TMenuItem
      Caption = 'Abrir Relat'#243'rio'
      OnClick = AbrirRelatrio1Click
    end
  end
end
