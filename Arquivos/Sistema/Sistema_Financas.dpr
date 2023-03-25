program Sistema_Financas;

uses
  Vcl.Forms,
  Uprincipal in 'Uprincipal.pas' {frmprincipal},
  ModConexao in 'ModConexao.pas' {DataModule1: TDataModule};

{$R *.res}

begin
  Application.Initialize;
  Application.MainFormOnTaskbar := True;
  Application.CreateForm(Tfrmprincipal, frmprincipal);
  Application.CreateForm(TDataModule1, DataModule1);
  Application.Run;
end.
