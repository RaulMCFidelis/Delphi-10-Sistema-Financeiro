unit ufrmCadastroUsuarios;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, ufrmCadastroBasico, Data.DB,
  System.Actions, Vcl.ActnList, System.ImageList, Vcl.ImgList, Vcl.Grids,
  Vcl.DBGrids, Vcl.StdCtrls, Vcl.ComCtrls, Vcl.Buttons, Vcl.ExtCtrls;

type
  Tfrmcadastrousuario = class(TfrmCadastroBasico)
    Label2: TLabel;
    Label3: TLabel;
    Label4: TLabel;
    edtnome: TEdit;
    edtlogin: TEdit;
    edtsenha: TEdit;
    procedure acsalvarExecute(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmcadastrousuario: Tfrmcadastrousuario;

implementation

{$R *.dfm}

uses ModConexao;

procedure Tfrmcadastrousuario.acsalvarExecute(Sender: TObject);
begin
  if Trim(edtnome.Text) = '' then
  begin
    Application.MessageBox('Preencha o campo Nome!', 'Atenção', MB_OK+MB_ICONWARNING);
    edtnome.SetFocus;
    Abort;
  end;

  if Trim(edtlogin.Text) = '' then
  begin
    Application.MessageBox('Preencha o campo Login!', 'Atenção', MB_OK+MB_ICONWARNING);
    edtlogin.SetFocus;
    Abort;
  end;

  if Trim(edtsenha.Text) = '' then
  begin
    Application.MessageBox('Preencha o campo Senha!', 'Atenção', MB_OK+MB_ICONWARNING);
    edtsenha.SetFocus;
    Abort;
  end;

  dmDados.cdsusuariosnome.AsString := trim(edtNome.Text);
  dmDados.cdsusuarioslogin.AsString := trim(edtLogin.Text);
  dmDados.cdsusuariossenha.AsString := trim(edtSenha.Text);

  inherited;

end;

end.
