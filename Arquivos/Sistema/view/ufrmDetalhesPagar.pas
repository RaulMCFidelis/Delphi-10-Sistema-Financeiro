unit ufrmDetalhesPagar;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Data.DB, Vcl.Grids, Vcl.DBGrids;

type
  TfrmDetalhesPagar = class(TForm)
    DBGrid1: TDBGrid;
    ds: TDataSource;
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

end.
