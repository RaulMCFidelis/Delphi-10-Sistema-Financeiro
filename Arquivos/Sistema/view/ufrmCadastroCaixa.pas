unit ufrmCadastroCaixa;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, ufrmCadastroBasico, Data.DB,
  System.Actions, Vcl.ActnList, System.ImageList, Vcl.ImgList, Vcl.StdCtrls,
  Vcl.ComCtrls, Vcl.Grids, Vcl.DBGrids, Vcl.Buttons, Vcl.ExtCtrls;

type
  Tfrmcadastrocaixa = class(TfrmCadastroBasico)
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmcadastrocaixa: Tfrmcadastrocaixa;

implementation

{$R *.dfm}

end.
