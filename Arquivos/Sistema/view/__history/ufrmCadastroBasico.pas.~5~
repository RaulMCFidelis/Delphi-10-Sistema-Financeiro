unit ufrmCadastroBasico;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls, Data.DB, Vcl.Grids,
  Vcl.DBGrids, Vcl.ComCtrls, Vcl.ToolWin, Vcl.ActnMan, Vcl.ActnCtrls,
  Vcl.ExtCtrls, System.Actions, Vcl.ActnList, System.ImageList, Vcl.ImgList,
  Vcl.PlatformDefaultStyleActnCtrls;

type
  TfrmCadastroBasico = class(TForm)
    dsTabela: TDataSource;
    StatusBar1: TStatusBar;
    Panel1: TPanel;
    ActionToolBar1: TActionToolBar;
    tbsCadastro: TPageControl;
    TabSheet1: TTabSheet;
    tbsPesquisa: TTabSheet;
    DBGrid1: TDBGrid;
    ActionManagercadastro: TActionManager;
    ImageListcadastro: TImageList;
    actinserir: TAction;
    acteditar: TAction;
    actexcluir: TAction;
    actsalvar: TAction;
    actcancelar: TAction;
    actpesquisar: TAction;
    actimprimir: TAction;
    actfechar: TAction;
    procedure FormKeyPress(Sender: TObject; var Key: Char);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmCadastroBasico: TfrmCadastroBasico;

implementation

{$R *.dfm}

procedure TfrmCadastroBasico.FormKeyPress(Sender: TObject; var Key: Char);
begin
if key = #27 then
    close;
if key = #13 then
    Perform (WM_NEXTDLGCTL, 0, 0);
end;

end.
