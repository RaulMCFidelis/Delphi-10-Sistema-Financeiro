unit ufrmConsRecibos;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Data.DB, Datasnap.DBClient, Vcl.Grids,
  Vcl.DBGrids;

type
  TfrmConsRecibos = class(TForm)
    DBGrid1: TDBGrid;
    cds: TClientDataSet;
    ds: TDataSource;
    cdsid: TIntegerField;
    cdstipo_recibo: TIntegerField;
    cdsdt_emissao: TStringField;
    cdsnome: TStringField;
    cdsvlr_recibo: TFMTBCDField;
    cdsreferente: TStringField;
    cdsobservacao: TStringField;
    cdsemitente: TStringField;
    cdsendereco: TStringField;
    cdscpf_cnpj: TStringField;
    cdscidade: TStringField;
    cdsdt_cadastro: TDateField;
    cdshr_cadastro: TTimeField;
    cdsuser_cadastro: TStringField;
    procedure FormCreate(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmConsRecibos: TfrmConsRecibos;

implementation

{$R *.dfm}

uses ModConexao;

procedure TfrmConsRecibos.FormClose(Sender: TObject; var Action: TCloseAction);
begin
cds.Close;
end;

procedure TfrmConsRecibos.FormCreate(Sender: TObject);
begin
cds.Close;
cds.CommandText := 'select * from recibos';
cds.Open;
end;

end.
