unit ufrmCadastroPagar;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, ufrmCadastroBasico, Data.DB,
  System.Actions, Vcl.ActnList, System.ImageList, Vcl.ImgList, Vcl.StdCtrls,
  Vcl.ComCtrls, Vcl.Grids, Vcl.DBGrids, Vcl.Buttons, Vcl.ExtCtrls;

type
  Tfrmcadastropagar = class(TfrmCadastroBasico)
    Label2: TLabel;
    edtdocumento: TEdit;
    Label3: TLabel;
    edtdescricao: TEdit;
    Label5: TLabel;
    Edit1: TEdit;
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmcadastropagar: Tfrmcadastropagar;

implementation

{$R *.dfm}

uses ModConexao;

end.
