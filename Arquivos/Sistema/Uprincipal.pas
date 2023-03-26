unit Uprincipal;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.Imaging.pngimage, Vcl.ExtCtrls,
  Vcl.StdCtrls, Vcl.ComCtrls, Vcl.Buttons;

type
  TfrmPrincipal = class(TForm)
    Label1: TLabel;
    imgusuarios: TImage;
    imgreceber: TImage;
    imgpagar: TImage;
    imgcaixa: TImage;
    imgconreceber: TImage;
    imgconpagar: TImage;
    Label3: TLabel;
    Label4: TLabel;
    imgrelpagar: TImage;
    imgconfig: TImage;
    imgnavegador: TImage;
    imgrelreceber: TImage;
    imgrelcaixa: TImage;
    BalloonHint1: TBalloonHint;
    StatusBar1: TStatusBar;
    Timer1: TTimer;
    BitBtn1: TBitBtn;
    procedure Timer1Timer(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure BitBtn1Click(Sender: TObject);
    procedure imgusuariosClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmPrincipal: TfrmPrincipal;

implementation

{$R *.dfm}

uses ufrmCadastroBasico, ufrmCadastroUsuarios;

procedure TfrmPrincipal.BitBtn1Click(Sender: TObject);
begin
  frmCadastroBasico := TfrmCadastroBasico.Create(nil);
  try
    frmCadastroBasico.ShowModal;
  finally
   FreeAndNil (frmCadastroBasico);
  end;
end;

procedure TfrmPrincipal.FormClose(Sender: TObject; var Action: TCloseAction);
begin
if Application.MessageBox('Deseja Realmente Sair', 'Informação', MB_YESNO+MB_ICONQUESTION) = mrYes then

Application.Terminate

else
Abort;
end;

procedure TfrmPrincipal.imgusuariosClick(Sender: TObject);
begin
frmcadastrousuarios := Tfrmcadastrousuarios.Create(nil);
 try
    frmcadastrousuarios.ShowModal;

  finally
   FreeAndNil(frmcadastrousuarios);
  end;
end;

procedure TfrmPrincipal.Timer1Timer(Sender: TObject);
begin
    StatusBar1.Panels.Items[0].Text := DateTimeToStr(now);
end;

end.
