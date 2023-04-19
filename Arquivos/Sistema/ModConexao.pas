unit ModConexao;

interface

uses
  System.SysUtils, System.Classes, Data.DB, Data.SqlExpr, Data.DBXMySQL,
  Data.FMTBcd, Datasnap.DBClient, Datasnap.Provider, Datasnap.Win.TConnect,
  FireDAC.Stan.Intf, FireDAC.Stan.Option, FireDAC.Stan.Error, FireDAC.UI.Intf,
  FireDAC.Phys.Intf, FireDAC.Stan.Def, FireDAC.Stan.Pool, FireDAC.Stan.Async,
  FireDAC.Phys, FireDAC.Phys.MySQL, FireDAC.Phys.MySQLDef, FireDAC.Comp.Client,
  FireDAC.VCLUI.Wait, FireDAC.Comp.UI, classe.conexao;

type
  TdmDados = class(TDataModule)
    SQLConnection: TSQLConnection;
    sdscaixa: TSQLDataSet;
    dspcontas_pagar: TDataSetProvider;
    cdscaixa: TClientDataSet;
    cdscontas_pagar: TClientDataSet;
    dspcaixa: TDataSetProvider;
    sdscontas_pagar: TSQLDataSet;
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
    sqlconsultas: TSQLQuery;
    dspconsultar: TDataSetProvider;
    sdsreceber_detalhes: TSQLDataSet;
    dspreceber_detalhes: TDataSetProvider;
    sdspagar_detalhes: TSQLDataSet;
    cdspagar_detalhes: TClientDataSet;
    dsppagar_detalhes: TDataSetProvider;
    cdsreceber_detalhes: TClientDataSet;
    cdsreceber_detalhesid: TIntegerField;
    cdsreceber_detalhesid_receber: TIntegerField;
    cdsreceber_detalhesdetalhes: TStringField;
    cdsreceber_detalhesvalor: TFMTBCDField;
    cdsreceber_detalhesdate: TDateField;
    cdsreceber_detalhesusuario: TStringField;
    cdspagar_detalhesid: TIntegerField;
    cdspagar_detalhesid_pagar: TIntegerField;
    cdspagar_detalhesdetalhes: TStringField;
    cdspagar_detalhesvalor: TFMTBCDField;
    cdspagar_detalhesdata: TDateField;
    cdspagar_detalhesusuario: TStringField;
    dspRecibos: TDataSetProvider;
    cdsRecibos: TClientDataSet;
    sdsRecibos: TSQLDataSet;
    LocalConnection: TLocalConnection;
    cdsRecibosid: TIntegerField;
    cdsRecibostipo_recibo: TIntegerField;
    cdsRecibosdt_emissao: TStringField;
    cdsRecibosnome: TStringField;
    cdsRecibosvlr_recibo: TFMTBCDField;
    cdsRecibosreferente: TStringField;
    cdsRecibosobservacao: TStringField;
    cdsRecibosemitente: TStringField;
    cdsRecibosendereco: TStringField;
    cdsReciboscpf_cnpj: TStringField;
    cdsReciboscidade: TStringField;
    cdsRecibosdt_cadastro: TDateField;
    cdsReciboshr_cadastro: TTimeField;
    cdsRecibosuser_cadastro: TStringField;
    cdscaixaid: TIntegerField;
    cdscaixadocumento: TStringField;
    cdscaixadescricao: TStringField;
    cdscaixavalor: TFMTBCDField;
    cdscaixatipo: TStringField;
    cdscaixadt_cadastro: TDateField;
    FDConnection: TFDConnection;
    MySQLDriverLink: TFDPhysMySQLDriverLink;
    FDGUIxWaitCursor: TFDGUIxWaitCursor;
    procedure DataModuleCreate(Sender: TObject);
    procedure DataModuleDestroy(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
    Conexao : TConexao;
  end;

var
  dmDados: TdmDados;

implementation

{%CLASSGROUP 'Vcl.Controls.TControl'}

uses UFuncoes, ufrmCadastroUsuarios;
{$R *.dfm}

procedure TdmDados.DataModuleCreate(Sender: TObject);
begin
   Conexao := Tconexao.Create(FDConnection);
end;

procedure TdmDados.DataModuleDestroy(Sender: TObject);
begin
   Conexao.Destroy;
end;

end.
