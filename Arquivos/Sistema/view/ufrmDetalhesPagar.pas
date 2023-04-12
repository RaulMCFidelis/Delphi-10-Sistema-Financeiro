unit ufrmDetalhesPagar;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Data.DB, Vcl.Grids, Vcl.DBGrids;

type
  TfrmDetalhesPagar = class(TForm)
    DBGrid1: TDBGrid;
    ds: TDataSource;
    procedure FormShow(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
  private
    { Private declarations }
  public
  fId : Integer;
    { Public declarations }
  end;

var
  frmDetalhesPagar: TfrmDetalhesPagar;

implementation

{$R *.dfm}

uses ModConexao, ufrmBaixarPagar, ufrmConsPagar, UFuncoes;

procedure TfrmDetalhesPagar.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
DmDados.cdsPagar_detalhes.Close;
end;

procedure TfrmDetalhesPagar.FormShow(Sender: TObject);
begin
try
    DmDados.cdsPagar_detalhes.Close;
    DmDados.cdsPagar_detalhes.CommandText := 'select * from pagar_detalhes where id_pagar = '+inttostr(fid);
    DmDados.cdsPagar_detalhes.Open;
  except on E: Exception do
    raise Exception.Create('Erro ao consultar histórico a pagar: '+E.Message);
  end;
end;


end.
