unit ufrmCadastroUsuarios;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, ufrmCadastroBasico, Data.DB,
  System.Actions, Vcl.ActnList, System.ImageList, Vcl.ImgList, Vcl.StdCtrls,
  Vcl.Grids, Vcl.DBGrids, Vcl.ComCtrls, Vcl.Buttons, Vcl.ExtCtrls;

type
  Tfrmcadastrousuarios = class(TfrmCadastroBasico)
    Label2: TLabel;
    Label3: TLabel;
    Labe4: TLabel;
    edtnome: TEdit;
    edtlogin: TEdit;
    edtsenha: TEdit;
    procedure acsalvarExecute(Sender: TObject);
    procedure aceditarExecute(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmcadastrousuarios: Tfrmcadastrousuarios;

implementation

{$R *.dfm}

uses ModConexao, UFuncoes;

procedure Tfrmcadastrousuarios.aceditarExecute(Sender: TObject);
begin
  inherited;
  edtnome.Text := DmDados.cdsusuariosnome.AsString;
  edtlogin.Text := DmDados.cdsusuarioslogin.AsString;
  edtsenha.Text := DmDados.cdsusuariossenha.AsString;
end;

procedure Tfrmcadastrousuarios.acsalvarExecute(Sender: TObject);
begin

if (dsTabela.State in [dsInsert]) and (GetLoginCadastrado(trim(edtlogin.Text))) then
   Application.MessageBox('Nome de Login já Cadastrado!', 'Atenção', MB_OK+MB_ICONWARNING);
   edtlogin.SetFocus;

  if Trim(edtnome.Text) = '' then
  begin
    Application.MessageBox('Preencha o Campo Nome!', 'Atenção', MB_OK+MB_ICONWARNING);
    edtnome.SetFocus;
    Abort;
  end;

  if Trim(edtlogin.Text) = '' then
  begin
    Application.MessageBox('Preencha o Campo Login!', 'Atenção', MB_OK+MB_ICONWARNING);
    edtlogin.SetFocus;
    Abort;
  end;


  if Trim(edtsenha.Text) = '' then
  begin
    Application.MessageBox('Preencha o Campo Senha!', 'Atenção', MB_OK+MB_ICONWARNING);
    edtsenha.SetFocus;
    Abort;
  end;

  if dsTabela.State in [dsInsert] then


  dmDados.cdsusuariosid.AsInteger := GetId('ID', 'USUARIOS');
  dmdados.cdsusuariosnome.AsString := trim(edtnome.Text);
  dmdados.cdsusuarioslogin.AsString := trim(edtlogin.Text);
  dmdados.cdsusuariossenha.AsString := trim(edtsenha.Text);
  dmdados.cdsusuariosstatus.AsString := 'A';
  dmdados.cdsusuariosdt_cadastro.AsDateTime := now;
  inherited;

end;

end.
