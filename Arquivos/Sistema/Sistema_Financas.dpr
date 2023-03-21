program Sistema_Financas;

uses
  Vcl.Forms,
  Uprincipal in 'Uprincipal.pas' {frmPrincipal},
  Vcl.Themes,
  Vcl.Styles,
  ModConexao in 'ModConexao.pas' {DataModule1: TDataModule},
  ufrmCadastroBasico in 'view\ufrmCadastroBasico.pas' {frmCadastroBasico};

{$R *.res}

begin
  Application.Initialize;
  Application.MainFormOnTaskbar := True;
  TStyleManager.TrySetStyle('Amakrits');
  Application.CreateForm(TfrmPrincipal, frmPrincipal);
  Application.CreateForm(TDataModule1, DataModule1);
  Application.Run;
end.
