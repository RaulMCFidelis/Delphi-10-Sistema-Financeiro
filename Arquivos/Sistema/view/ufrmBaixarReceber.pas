unit ufrmBaixarReceber;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, tpEdit, Vcl.StdCtrls, Data.FMTBcd,
  Data.DB, Data.SqlExpr;

type
  TfrmBaixarReceber = class(TForm)
    GroupBox1: TGroupBox;
    Label1: TLabel;
    Label2: TLabel;
    Label3: TLabel;
    Label4: TLabel;
    Label5: TLabel;
    lb_documento: TLabel;
    lb_parcela: TLabel;
    lb_vencimento: TLabel;
    lb_vlrparcela: TLabel;
    lb_vlrabatido: TLabel;
    GroupBox2: TGroupBox;
    Label6: TLabel;
    Label7: TLabel;
    txt_observ: TEdit;
    btn_baixar: TButton;
    txt_valor: TtpEdit;
    procedure FormKeyPress(Sender: TObject; var Key: Char);
    procedure FormShow(Sender: TObject);
    procedure btn_baixarClick(Sender: TObject);
  private
    fvalorParcela : Currency;
  fvalorAbatido : Currency;
    { Private declarations }
  public
  fId : Integer;
  end;

var
  frmBaixarReceber: TfrmBaixarReceber;

implementation

{$R *.dfm}

uses ModConexao, ufrmBaixarPagar, ufrmConsReceber, UFuncoes;

procedure TfrmBaixarReceber.btn_baixarClick(Sender: TObject);
begin
//validações
  if (txt_Valor.Text = '') or (StringParaFloat(txt_Valor.Text) = 0) then
  begin
    Application.MessageBox('Informe o valor a receber.','Atenção',48);
    txt_Valor.SetFocus;
    Abort;
  end;

  try
    DmDados.cdscontas_receber.Close;
    DmDados.cdscontas_receber.CommandText := 'select * from contas_receber where id = '+inttostr(fid);
    DmDados.cdsContas_receber.Open;
    DmDados.cdsContas_receber.Edit;
    DmDados.cdscontas_recebervlr_abatido.AsCurrency := DmDados.cdsContas_recebervlr_abatido.AsCurrency + StringParaFloat(txt_Valor.Text);

    if DmDados.cdsContas_recebervlr_abatido.AsCurrency >= DmDados.cdsContas_recebervlr_parcela.AsCurrency then
    begin
      DmDados.cdsContas_receberstatus.AsString := 'B';
      DmDados.cdscontas_receberdt_pagamento.AsDateTime := date;
    end;

    DmDados.cdscontas_receber.Post;
    DmDados.cdsContas_receber.ApplyUpdates(0);
    DmDados.cdsContas_receber.Close;

    //Histórico
    DmDados.cdsreceber_detalhes.Close;
    DmDados.cdsreceber_detalhes.Open;
    DmDados.cdsreceber_detalhes.Insert;
    DmDados.cdsreceber_detalhesid.AsInteger       := GetId('ID','RECEBER_DETALHES');
    DmDados.cdsreceber_detalhesid_receber.AsInteger := fid;
    DmDados.cdsreceber_detalhesdetalhes.AsString  := txt_observ.Text;
    DmDados.cdsreceber_detalhesvalor.AsCurrency   := StringParaFloat(txt_Valor.Text);
    DmDados.cdsreceber_detalhesdate.AsDateTime    := date;
    DmDados.cdsreceber_detalhesusuario.AsString   := 'SISTEMA';
    DmDados.cdsreceber_detalhes.Post;
    DmDados.cdsreceber_detalhes.ApplyUpdates(0);

    Application.MessageBox('Baixa efetuada com sucesso!','Informação',64);
    ModalResult := mrOk;
  except on E: Exception do
    begin
      DmDados.cdscontas_receber.CancelUpdates;
      DmDados.cdsreceber_detalhes.CancelUpdates;
      raise Exception.Create('Erro ao efetuar baixa: '+E.Message);
    end;
  end;
end;


procedure TfrmBaixarReceber.FormKeyPress(Sender: TObject; var Key: Char);
begin
if KEY = #27 then
       Close;
end;

procedure TfrmBaixarReceber.FormShow(Sender: TObject);
begin
with TSqlQuery.Create(nil) do
try
 SQLConnection := DmDados.SQLConnection;
    sql.Add('select id, documento, parcela, vlr_parcela, vlr_abatido, dt_vencimento');
    sql.Add('from contas_receber where id = :prm');
    Params[0].AsInteger := fId;
    Open;

    lb_documento.Caption  := Fields[1].AsString;
    lb_parcela.Caption    := Fields[2].AsString;
    lb_VlrParcela.Caption := FormatFloat('R$ ,#0.00',Fields[3].AsCurrency);
    lb_VlrAbatido.Caption := FormatFloat('R$ ,#0.00',Fields[4].AsCurrency);
    lb_Vencimento.Caption := Fields[5].AsString;

    fValorParcela := Fields[3].AsCurrency;
    fValorAbatido := Fields[4].AsCurrency;

finally
  Close;
  Free;

end;

end;

end.
