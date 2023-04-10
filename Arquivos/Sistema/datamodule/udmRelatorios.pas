unit udmRelatorios;

interface

uses
  System.SysUtils, System.Classes, frxClass, frxDBSet, frxExportText,
  frxExportPDF, Data.FMTBcd, Data.DB, Data.SqlExpr;

type
  Tdmrelatorios = class(TDataModule)
    frxReport: TfrxReport;
    frxDBDsusuarios: TfrxDBDataset;
    frxPDFExport1: TfrxPDFExport;
    frxSimpleTextExport1: TfrxSimpleTextExport;
    sqlRecibos: TSQLQuery;
    frxDBRecibos: TfrxDBDataset;
    sqlRecibosid: TIntegerField;
    sqlRecibostipo_recibo: TIntegerField;
    sqlRecibosdt_emissao: TStringField;
    sqlRecibosnome: TStringField;
    sqlRecibosvlr_recibo: TFMTBCDField;
    sqlRecibosreferente: TStringField;
    sqlRecibosobservacao: TStringField;
    sqlRecibosemitente: TStringField;
    sqlRecibosendereco: TStringField;
    sqlReciboscpf_cnpj: TStringField;
    sqlReciboscidade: TStringField;
    sqlRecibosdt_cadastro: TDateField;
    sqlReciboshr_cadastro: TTimeField;
    sqlRecibosuser_cadastro: TStringField;
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  dmrelatorios: Tdmrelatorios;

implementation

{%CLASSGROUP 'Vcl.Controls.TControl'}

uses ModConexao, ufrmCadastroUsuarios;

{$R *.dfm}

end.
