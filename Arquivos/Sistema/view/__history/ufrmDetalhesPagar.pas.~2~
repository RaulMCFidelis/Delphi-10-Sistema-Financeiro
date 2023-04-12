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
  dmDados.cdspagar_detalhes.Close;
end;

procedure TfrmDetalhesPagar.FormShow(Sender: TObject);
begin
try
  dmDados.cdspagar_detalhes.Close;
  dmDados.cdspagar_detalhes.CommandText := 'SELECT * FROM PAGAR_DETALHES WHERE ID_PAGAR = ' +IntToStr(fid);
  dmDados.cdspagar_detalhes.Open;
  except on E: Exception do
    raise Exception.Create('Error ao consultar o histórico a pagar: '+E.Message);

  end;
end;

end.
