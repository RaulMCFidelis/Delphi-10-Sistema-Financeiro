object dmrelatorios: Tdmrelatorios
  OldCreateOrder = False
  Height = 381
  Width = 501
  object frxReport: TfrxReport
    Version = '5.1.5'
    DotMatrixReport = False
    IniFile = '\Software\Fast Reports'
    PreviewOptions.Buttons = [pbPrint, pbLoad, pbSave, pbExport, pbZoom, pbFind, pbOutline, pbPageSetup, pbTools, pbEdit, pbNavigator, pbExportQuick]
    PreviewOptions.Zoom = 1.000000000000000000
    PrintOptions.Printer = 'Default'
    PrintOptions.PrintOnSheet = 0
    ReportOptions.CreateDate = 42186.712792997700000000
    ReportOptions.LastChange = 42187.483524363400000000
    ScriptLanguage = 'PascalScript'
    ScriptText.Strings = (
      'begin'
      ''
      'end.')
    Left = 56
    Top = 144
    Datasets = <
      item
        DataSet = frxDBDsusuarios
        DataSetName = 'frxDBDataset1'
      end>
    Variables = <>
    Style = <>
    object Data: TfrxDataPage
      Height = 1000.000000000000000000
      Width = 1000.000000000000000000
    end
    object Page1: TfrxReportPage
      PaperWidth = 210.000000000000000000
      PaperHeight = 297.000000000000000000
      PaperSize = 9
      LeftMargin = 10.000000000000000000
      RightMargin = 10.000000000000000000
      TopMargin = 10.000000000000000000
      BottomMargin = 10.000000000000000000
      object ReportTitle1: TfrxReportTitle
        FillType = ftBrush
        Height = 64.252010000000000000
        Top = 18.897650000000000000
        Width = 718.110700000000000000
        object Memo1: TfrxMemoView
          Left = 264.567100000000000000
          Top = 7.559060000000000000
          Width = 173.858380000000000000
          Height = 18.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -16
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Memo.UTF8W = (
            'Relat'#243'rio de Usu'#225'rios')
          ParentFont = False
        end
        object Date: TfrxMemoView
          Left = 540.472790000000000000
          Top = 15.118120000000000000
          Width = 79.370130000000000000
          Height = 18.897650000000000000
          DisplayFormat.FormatStr = 'dd mmm yyyy'
          DisplayFormat.Kind = fkDateTime
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = []
          HAlign = haRight
          Memo.UTF8W = (
            '[Date]')
          ParentFont = False
        end
        object Page: TfrxMemoView
          Left = 627.401980000000000000
          Top = 15.118120000000000000
          Width = 79.370130000000000000
          Height = 18.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = []
          HAlign = haRight
          Memo.UTF8W = (
            'Pag: [Page]')
          ParentFont = False
        end
        object Line1: TfrxLineView
          Left = 3.779530000000000000
          Top = 64.252010000000000000
          Width = 714.331170000000000000
          Color = clBlack
          Frame.Typ = [ftTop]
        end
      end
      object MasterData1: TfrxMasterData
        FillType = ftBrush
        Height = 22.677180000000000000
        Top = 215.433210000000000000
        Width = 718.110700000000000000
        DataSet = frxDBDsusuarios
        DataSetName = 'frxDBDataset1'
        RowCount = 0
        object frxDBDataset1Id: TfrxMemoView
          Left = 3.779530000000000000
          Width = 132.283550000000000000
          Height = 18.897650000000000000
          DataField = 'Id'
          DataSet = frxDBDsusuarios
          DataSetName = 'frxDBDataset1'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8W = (
            '[frxDBDataset1."Id"]')
          ParentFont = False
        end
        object frxDBDataset1Nome: TfrxMemoView
          Left = 173.858380000000000000
          Width = 173.858380000000000000
          Height = 18.897650000000000000
          DataField = 'Nome'
          DataSet = frxDBDsusuarios
          DataSetName = 'frxDBDataset1'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8W = (
            '[frxDBDataset1."Nome"]')
          ParentFont = False
        end
        object frxDBDataset1Login: TfrxMemoView
          Left = 377.953000000000000000
          Width = 158.740260000000000000
          Height = 18.897650000000000000
          DataField = 'Login'
          DataSet = frxDBDsusuarios
          DataSetName = 'frxDBDataset1'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8W = (
            '[frxDBDataset1."Login"]')
          ParentFont = False
        end
        object frxDBDataset1dt_cadastro: TfrxMemoView
          Left = 563.149970000000000000
          Width = 79.370130000000000000
          Height = 18.897650000000000000
          DataField = 'dt_cadastro'
          DataSet = frxDBDsusuarios
          DataSetName = 'frxDBDataset1'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8W = (
            '[frxDBDataset1."dt_cadastro"]')
          ParentFont = False
        end
      end
      object PageHeader1: TfrxPageHeader
        FillType = ftBrush
        Height = 49.133890000000000000
        Top = 105.826840000000000000
        Width = 718.110700000000000000
        object Memo2: TfrxMemoView
          Left = 3.779530000000000000
          Top = 15.118120000000000000
          Width = 94.488250000000000000
          Height = 18.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Memo.UTF8W = (
            'ID')
          ParentFont = False
        end
        object Memo3: TfrxMemoView
          Left = 173.858380000000000000
          Top = 11.338590000000000000
          Width = 94.488250000000000000
          Height = 18.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Memo.UTF8W = (
            'Nome')
          ParentFont = False
        end
        object Memo4: TfrxMemoView
          Left = 377.953000000000000000
          Top = 11.338590000000000000
          Width = 94.488250000000000000
          Height = 18.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Memo.UTF8W = (
            'Login')
          ParentFont = False
        end
        object Memo5: TfrxMemoView
          Left = 563.149970000000000000
          Top = 11.338590000000000000
          Width = 94.488250000000000000
          Height = 18.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Memo.UTF8W = (
            'Cadastro')
          ParentFont = False
        end
        object Line2: TfrxLineView
          Top = 37.795300000000000000
          Width = 721.890230000000000000
          Color = clBlack
          Frame.Typ = [ftTop]
        end
      end
      object Footer1: TfrxFooter
        FillType = ftBrush
        Height = 117.165430000000000000
        Top = 260.787570000000000000
        Width = 718.110700000000000000
        object Memo6: TfrxMemoView
          Left = 207.874150000000000000
          Top = 83.149660000000000000
          Width = 294.803340000000000000
          Height = 18.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          HAlign = haCenter
          Memo.UTF8W = (
            'Sistema Financeiro Q-Cursos 1.0')
          ParentFont = False
        end
        object SysMemo1: TfrxSysMemoView
          Left = 143.622140000000000000
          Top = 45.354360000000000000
          Width = 94.488250000000000000
          Height = 18.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8W = (
            '[COUNT(MasterData1)]')
          ParentFont = False
        end
        object Memo8: TfrxMemoView
          Left = 11.338590000000000000
          Top = 45.354360000000000000
          Width = 128.504020000000000000
          Height = 18.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Memo.UTF8W = (
            'Total de Registros:')
          ParentFont = False
        end
      end
    end
  end
  object frxDBDsusuarios: TfrxDBDataset
    UserName = 'frxDBDataset1'
    CloseDataSource = False
    FieldAliases.Strings = (
      'id=id'
      'nome=nome'
      'login=login'
      'senha=senha'
      'status=status'
      'dt_cadastro=dt_cadastro')
    DataSet = dmDados.cdsusuarios
    BCDToCurrency = False
    Left = 248
    Top = 144
  end
  object frxPDFExport1: TfrxPDFExport
    UseFileCache = True
    ShowProgress = True
    OverwritePrompt = False
    DataOnly = False
    PrintOptimized = False
    Outline = False
    Background = False
    HTMLTags = True
    Quality = 95
    Transparency = False
    Author = 'FastReport'
    Subject = 'FastReport PDF export'
    ProtectionFlags = [ePrint, eModify, eCopy, eAnnot]
    HideToolbar = False
    HideMenubar = False
    HideWindowUI = False
    FitWindow = False
    CenterWindow = False
    PrintScaling = False
    PdfA = False
    Left = 64
    Top = 24
  end
  object frxSimpleTextExport1: TfrxSimpleTextExport
    UseFileCache = True
    ShowProgress = True
    OverwritePrompt = False
    DataOnly = False
    Frames = False
    EmptyLines = False
    OEMCodepage = False
    DeleteEmptyColumns = True
    Left = 240
    Top = 64
  end
  object sqlRecibos: TSQLQuery
    MaxBlobSize = -1
    Params = <
      item
        DataType = ftInteger
        Name = 'prm'
        ParamType = ptInput
      end>
    SQL.Strings = (
      'select * from recibos where id = :prm')
    SQLConnection = dmDados.SQLConnection
    Left = 176
    Top = 320
    object sqlRecibosid: TIntegerField
      FieldName = 'id'
      Required = True
    end
    object sqlRecibostipo_recibo: TIntegerField
      FieldName = 'tipo_recibo'
      Required = True
    end
    object sqlRecibosdt_emissao: TStringField
      FieldName = 'dt_emissao'
      Required = True
      Size = 50
    end
    object sqlRecibosnome: TStringField
      FieldName = 'nome'
      Required = True
      Size = 50
    end
    object sqlRecibosvlr_recibo: TFMTBCDField
      FieldName = 'vlr_recibo'
      Required = True
      Precision = 20
      Size = 2
    end
    object sqlRecibosreferente: TStringField
      FieldName = 'referente'
      Required = True
      Size = 30
    end
    object sqlRecibosobservacao: TStringField
      FieldName = 'observacao'
      Size = 250
    end
    object sqlRecibosemitente: TStringField
      FieldName = 'emitente'
      Required = True
      Size = 100
    end
    object sqlRecibosendereco: TStringField
      FieldName = 'endereco'
      Size = 100
    end
    object sqlReciboscpf_cnpj: TStringField
      FieldName = 'cpf_cnpj'
      Size = 30
    end
    object sqlReciboscidade: TStringField
      FieldName = 'cidade'
      Size = 50
    end
    object sqlRecibosdt_cadastro: TDateField
      FieldName = 'dt_cadastro'
      Required = True
    end
    object sqlReciboshr_cadastro: TTimeField
      FieldName = 'hr_cadastro'
      Required = True
    end
    object sqlRecibosuser_cadastro: TStringField
      FieldName = 'user_cadastro'
      Required = True
      Size = 50
    end
  end
  object frxDBDSRecibos: TfrxDBDataset
    UserName = 'frxDBDSecibos'
    CloseDataSource = False
    FieldAliases.Strings = (
      'id=id'
      'tipo_recibo=tipo_recibo'
      'dt_emissao=dt_emissao'
      'nome=nome'
      'vlr_recibo=vlr_recibo'
      'referente=referente'
      'observacao=observacao'
      'emitente=emitente'
      'endereco=endereco'
      'cpf_cnpj=cpf_cnpj'
      'cidade=cidade'
      'dt_cadastro=dt_cadastro'
      'hr_cadastro=hr_cadastro'
      'user_cadastro=user_cadastro')
    DataSet = dmDados.cdsRecibos
    BCDToCurrency = False
    Left = 344
    Top = 304
  end
end
