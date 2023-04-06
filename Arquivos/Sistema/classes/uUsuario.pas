unit uUsuario;

interface

uses
  Vcl.StdCtrls;
type
TUsuario = class
  private
   fLogin : String;
   fSenha : String;
  public
    class procedure CarregarLogin(Cbx : TCombobox); //metodo estatico (static)

  property Login: String read fLogin write fLogin;
  property Senha: String read fSenha write fSenha;
  function Logar : boolean;

end;
implementation

uses
  Data.SqlExpr, ufrmLogin, ModConexao;


class procedure TUsuario.CarregarLogin(Cbx: TCombobox);
begin
  with TSqlQuery.Create(nil) do
  try
   SQLConnection := DmDados.SQLConnection;
    Sql.Add('SELECT LOGIN FROM USUARIOS');
    Open;
    if not IsEmpty then
    begin
      First;
      while not EOF do
      begin
        Cbx.Items.Add(Fields[0].AsString);
        Next;
      end;
    end;
  finally
    Close;
    Free;
  end;
end;


function TUsuario.Logar: boolean;
begin
  with TSqlQuery.Create(nil) do
  try
    SQLConnection := DmDados.SQLConnection;
    Sql.Add('SELECT ID FROM USUARIOS WHERE LOGIN = :LOGIN AND SENHA = :SENHA');
    Params[0].AsString := fLogin;
    Params[1].AsString := fSenha;
    Open;
    result := fields[0].AsInteger > 0;
  finally
    Close;
    Free;
  end;
end;

end.
