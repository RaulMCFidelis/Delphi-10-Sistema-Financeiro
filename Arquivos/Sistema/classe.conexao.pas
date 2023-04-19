unit classe.conexao;

interface

uses
  FireDAC.Comp.Client, System.SysUtils;

  type
    Tconexao = class
    private
    FServidor: String;
    FMsgErro: String;
    FSenha: String;
    FBase: String;
    FLogin: String;
    FPorta: String;
    FConexao: TFDConnection;
    public
      constructor Create ( NomeConexao : TFDConnection );
      destructor Destroy; override;

      function fnc_conectar_banco_dados : boolean;

      property Conexao : TFDConnection Read FConexao Write FConexao;
      property Servidor: String Read FServidor Write FServidor;
      property Base    : String Read FBase Write FBase;
      property Login   : String Read FLogin Write FLogin;
      property Senha   : String Read FSenha Write FSenha;
      property Porta   : String Read FPorta Write FPorta;
      property MsgErro : String Read FMsgErro Write FMsgErro;

    end;
implementation

uses
  FireDAC.Stan.Intf;

{ Tconexao }

constructor Tconexao.Create(NomeConexao: TFDConnection);
begin
  FConexao := NomeConexao;
end;

destructor Tconexao.Destroy;
begin
  FConexao.Connected := False;

  inherited;
end;

function Tconexao.fnc_conectar_banco_dados: boolean;
begin
  result := True;

  FConexao.Params.Clear;

  FConexao.Params.Add('Server=' + FServidor);
  FConexao.Params.Add('user_name='+ FLogin);
  FConexao.Params.Add('passwor='+ FSenha);
  FConexao.Params.Add('port='+ FPorta);
  FConexao.Params.Add('Database='+ FBase);
  FConexao.Params.Add('DriverID='+ 'MySQL');

  try
     FConexao.Connected := True;
  Except
     on e: Exception do
     begin
       FMsgErro := e.Message;
       Result   := False;
     end;
  end;
end;

end.
