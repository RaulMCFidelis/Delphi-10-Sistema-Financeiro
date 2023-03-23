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

uses ModConexao;UFuncoes, udmRelatorios;



procedure Tfrmcadastrousuarios.aceditarExecute(Sender: TObject);
begin
  inherited;
  edtNome.Text := DmDados.cdsUsuariosnome.AsString;
    edtLogin.Text := DmDados.cdsUsuarioslogin.AsString;
      edtSenha.Text := DmDados.cdsUsuariossenha.AsString;
end;

procedure Tfrmcadastrousuarios.acimprimirExecute(Sender: TObject);
begin

dmrelatorios := TDmRelatorios.Create(nil);
try
dmrelatorios.frxReport.LoadFromFile(ExtractFilePath(Application.ExeName)+'relatorios\relCadUsuarios.fr3');
dmrelatorios.frxReport.ShowReport(true);
finally
FreeAndNil(DmRelatorios);
end;


end;

procedure Tfrmcadastrousuarios.acpesquisarExecute(Sender: TObject);
begin
  inherited;
dmDados.cdsUsuarios.Close;
dmDados.cdsUsuarios.CommandText := 'SELECT * FROM USUARIOS';
dmDados.cdsUsuarios.Open;
end;

procedure Tfrmcadastrousuarios.acsalvarExecute(Sender: TObject);
begin



   if Trim(edtNome.Text) =  '' then
   begin
     Application.MessageBox('Preencha o campo Nome!', 'Atenção', MB_OK+MB_ICONWARNING);
     edtNome.SetFocus;
     Abort;
   end;


   if  (dsTabela.State in [dsInsert]) and (GetLoginCadastrado(trim(edtLogin.Text))) then
  begin
  Application.MessageBox('O Login Já está Cadastrado!', 'Atenção', MB_OK+MB_ICONWARNING);
    edtLogin.SetFocus;
    abort;
     end;

    if Trim(edtLogin.Text) =  '' then
   begin
     Application.MessageBox('Preencha o campo Login!', 'Atenção', MB_OK+MB_ICONWARNING);
     edtLogin.SetFocus;
     Abort;
   end;

    if Trim(edtSenha.Text) =  '' then
   begin
     Application.MessageBox('Preencha o campo Senha!', 'Atenção', MB_OK+MB_ICONWARNING);
     edtSenha.SetFocus;
     Abort;
   end;

   if dsTabela.State in [dsInsert] then


  dmDados.cdsusuariosid.AsInteger := GetId('ID', 'USUARIOS');
  dmDados.cdsusuariosnome.AsString := trim(edtNome.Text);
  dmDados.cdsusuarioslogin.AsString := trim(edtLogin.Text);
  dmDados.cdsusuariossenha.AsString := trim(edtSenha.Text);
  dmDados.cdsusuariosstatus.AsString := 'A';
  dmDados.cdsusuariosdt_cadastro.AsDateTime := now;
  inherited;

end;

procedure Tfrmcadastrousuarios.btnfiltrarClick(Sender: TObject);
begin
 if edtpesquisar.Text = '' then

 begin
   Application.MessageBox('Informe um valor a ser pesquisado', 'Atenção', MB_OK+MB_ICONWARNING);
   edtpesquisar.SetFocus;
   Abort;
 end;

  inherited;
  DmDados.cdsusuarios.Close;
  case cbxfiltros.ItemIndex of
   0 : DmDados.cdsUsuarios.CommandText := 'SELECT * FROM USUARIOS WHERE NOME LIKE '+QuotedStr('%'+edtPesquisar.Text+'%');
   1 : DmDados.cdsUsuarios.CommandText := 'SELECT * FROM USUARIOS WHERE LOGIN LIKE '+QuotedStr('%'+edtPesquisar.Text+'%');
  end;
  DmDados.cdsUsuarios.Open;
end;

end.
