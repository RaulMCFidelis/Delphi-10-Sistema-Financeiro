unit ModConexao;

interface

uses
  System.SysUtils, System.Classes, Data.DB, Data.SqlExpr, Data.DBXMySQL,
  Data.FMTBcd, Datasnap.DBClient, Datasnap.Provider, Datasnap.Win.TConnect;

type
  TdmDados = class(TDataModule)
    SQLConnection: TSQLConnection;
    sdscaixa: TSQLDataSet;
    dspcontas_pagar: TDataSetProvider;
    cdscaixa: TClientDataSet;
    cdscontas_pagar: TClientDataSet;
    dspcaixa: TDataSetProvider;
    sdsconstas_pagar: TSQLDataSet;
    dspcontas_receber: TDataSetProvider;
    cdscontas_receber: TClientDataSet;
    sdscontas_receber: TSQLDataSet;
    dspusuarios: TDataSetProvider;
    cdsusuarios: TClientDataSet;
    sdsusuarios: TSQLDataSet;
    cdsusuariosid: TIntegerField;
    cdsusuariosnome: TStringField;
    cdsusuarioslogin: TStringField;
    cdsusuariossenha: TStringField;
    cdsusuariosstatus: TStringField;
    cdsusuariosdt_cadastro: TDateField;
    cdscontas_receberid: TIntegerField;
    cdscontas_receberdocumento: TStringField;
    cdscontas_receberdescricao: TStringField;
    cdscontas_receberparcela: TIntegerField;
    cdscontas_recebervlr_parcela: TFMTBCDField;
    cdscontas_recebervlr_compra: TFMTBCDField;
    cdscontas_recebervlr_abatido: TFMTBCDField;
    cdscontas_receberdt_compra: TDateField;
    cdscontas_receberdt_vencimento: TDateField;
    cdscontas_receberdt_cadastro: TDateField;
    cdscontas_receberstatus: TStringField;
    cdscontas_receberdt_pagamento: TDateField;
    cdscontas_pagarid: TIntegerField;
    cdscontas_pagarnumero_doc: TStringField;
    cdscontas_pagardescricao: TStringField;
    cdscontas_pagarparcela: TIntegerField;
    cdscontas_pagarvlr_parcela: TFMTBCDField;
    cdscontas_pagarvlr_compra: TFMTBCDField;
    cdscontas_pagarvlr_abatido: TFMTBCDField;
    cdscontas_pagardt_compra: TDateField;
    cdscontas_pagardt_cadastro: TDateField;
    cdscontas_pagardt_vencimento: TDateField;
    cdscontas_pagardt_pagamento: TDateField;
    cdscontas_pagarstatus: TStringField;
    cdscaixaid: TIntegerField;
    cdscaixanumero_doc: TStringField;
    cdscaixadescricao: TStringField;
    cdscaixavalor: TFMTBCDField;
    cdscaixatipo: TStringField;
    cdscaixadt_cadastro: TDateField;
    sqlconsultas: TSQLQuery;
    dspconsultar: TDataSetProvider;
    LocalConnection: TLocalConnection;
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  dmDados: TdmDados;

implementation

{%CLASSGROUP 'Vcl.Controls.TControl'}

uses UFuncoes, ufrmCadastroUsuarios;
{$R *.dfm}

end.
