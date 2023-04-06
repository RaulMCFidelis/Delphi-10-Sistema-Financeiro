unit ufrmEmitirRecibo;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls, Vcl.ExtCtrls, tpEdit,
  Vcl.Buttons;

type
  TfrmEmitirRecibo = class(TForm)
    GroupBox1: TGroupBox;
    rdg_recibo: TRadioGroup;
    Label1: TLabel;
    Label2: TLabel;
    Label3: TLabel;
    Label4: TLabel;
    Label5: TLabel;
    Label6: TLabel;
    Label7: TLabel;
    Label8: TLabel;
    Label9: TLabel;
    txt_receb: TEdit;
    txt_referente: TEdit;
    txt_obs: TEdit;
    txt_emitente: TEdit;
    txt_endereco: TEdit;
    txt_cidade: TEdit;
    txt_cpf: TtpEdit;
    txt_emissao: TtpEdit;
    txt_valor: TtpEdit;
    btn_salvar: TBitBtn;
    btn_cancelar: TBitBtn;
    btn_pesquisar: TBitBtn;
    btn_fechar: TBitBtn;
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmEmitirRecibo: TfrmEmitirRecibo;

implementation

{$R *.dfm}

end.
