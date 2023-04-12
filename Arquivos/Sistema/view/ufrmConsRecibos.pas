unit ufrmConsRecibos;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Data.DB, Datasnap.DBClient, Vcl.Grids,
  Vcl.DBGrids, Vcl.Menus;

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
    PopupMenu1: TPopupMenu;
    AbrirRelatrio1: TMenuItem;
    procedure FormCreate(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure AbrirRelatrio1Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmConsRecibos: TfrmConsRecibos;

implementation

{$R *.dfm}

uses ModConexao, udmRelatorios;

procedure TfrmConsRecibos.AbrirRelatrio1Click(Sender: TObject);
begin
 DmRelatorios := TDmRelatorios.Create(nil);
  try
    DmRelatorios.ImprimirRecibo(cdsid.AsInteger,cdstipo_recibo.AsInteger);
  finally
    FreeAndNil(DmRelatorios);
    end;
end;

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
