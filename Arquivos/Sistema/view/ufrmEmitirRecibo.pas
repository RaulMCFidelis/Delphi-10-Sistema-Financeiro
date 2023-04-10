unit ufrmEmitirRecibo;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls, Vcl.Buttons, tpEdit,
  Vcl.ExtCtrls;

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
    txt_nome: TEdit;
    txt_referente: TEdit;
    txt_obs: TEdit;
    txt_emitente: TEdit;
    txt_endereco: TEdit;
    txt_cidade: TEdit;
    txt_emissao: TtpEdit;
    txt_valor: TtpEdit;
    btn_fechar: TBitBtn;
    btn_pesquisar: TBitBtn;
    btn_cancelar: TBitBtn;
    btn_salvar: TBitBtn;
    btn_novo: TBitBtn;
    txt_cpf: TtpEdit;
    procedure btn_novoClick(Sender: TObject);
    procedure btn_salvarClick(Sender: TObject);
    procedure btn_fecharClick(Sender: TObject);
    procedure btn_cancelarClick(Sender: TObject);
    procedure btn_pesquisarClick(Sender: TObject);
    procedure rdg_reciboClick(Sender: TObject);
  private
  procedure HabilitarBotoes;
  procedure Limpar;
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmEmitirRecibo: TfrmEmitirRecibo;

implementation

{$R *.dfm}

uses UFuncoes, ModConexao, ufrmConsRecibos, udmRelatorios;

procedure TfrmEmitirRecibo.btn_cancelarClick(Sender: TObject);
begin
     Limpar;
end;

procedure TfrmEmitirRecibo.btn_fecharClick(Sender: TObject);
begin
Close;
end;

procedure TfrmEmitirRecibo.btn_novoClick(Sender: TObject);
begin
GroupBox1.Enabled := True;
txt_emissao.Text := DateToStr(now);
txt_nome.SetFocus;
btn_novo.Enabled := false;
HabilitarBotoes;

end;

procedure TfrmEmitirRecibo.btn_pesquisarClick(Sender: TObject);
begin
frmConsRecibos := TfrmConsRecibos.Create(nil);
   try
    frmConsRecibos.ShowModal;

   finally
    FreeAndNil(frmConsRecibos);
   end;
end;

procedure TfrmEmitirRecibo.btn_salvarClick(Sender: TObject);
begin
//validar
  if txt_Nome.Text = '' then
  begin
    Application.MessageBox('Informe o nome.','Atenção',48);
    txt_Nome.SetFocus;
    Abort;
  end;
  if txt_referente.Text = '' then
  begin
    Application.MessageBox('Informe o referente.','Atenção',48);
    txt_Referente.SetFocus;
    Abort;
  end;
  if txt_Emitente.Text = '' then
  begin
    Application.MessageBox('Informe o emitente.','Atenção',48);
    txt_Emitente.SetFocus;
    Abort;
  end;
  if txt_Emissao.Text = '' then
  begin
    Application.MessageBox('Informe a data de emissão.','Atenção',48);
    txt_Emissao.SetFocus;
    Abort;
  end;
  if (txt_Valor.Text = '') or (StringParaFloat(txt_Valor.Text) = 0) then
  begin
    Application.MessageBox('Informe o valor.','Atenção',48);
    txt_Valor.SetFocus;
    Abort;
  end;

     try

    DmDados.cdsRecibos.Open;
    DmDados.cdsRecibos.Insert;
    DmDados.cdsRecibosid.AsInteger           := GetId('id','recibos');
    DmDados.cdsRecibostipo_recibo.AsInteger  := rdg_recibo.ItemIndex;
    DmDados.cdsRecibosdt_emissao.AsDateTime  := StrToDateTime(txt_Emissao.Text);
    DmDados.cdsRecibosvlr_recibo.AsCurrency  := StringParaFloat(txt_Valor.Text);
    DmDados.cdsRecibosreferente.AsString     := txt_Referente.Text;
    DmDados.cdsRecibosemitente.AsString      := txt_Emitente.Text;
    DmDados.cdsRecibosnome.AsString          := txt_Nome.Text;
    DmDados.cdsRecibosdt_cadastro.AsDateTime := now;
    DmDados.cdsReciboshr_cadastro.AsDateTime := now;
    DmDados.cdsRecibosuser_cadastro.AsString := 'SISTEMA';
    if txt_Cidade.Text <> '' then
      DmDados.cdsReciboscidade.AsString := txt_Cidade.Text;
    if txt_cpf.Text <> '' then
      DmDados.cdsReciboscpf_cnpj.AsString := txt_cpf.Text;
    if txt_Endereco.Text <> '' then
      DmDados.cdsRecibosendereco.AsString := txt_Endereco.Text;
    if txt_Obs.Text <> '' then
      DmDados.cdsRecibosobservacao.AsString := txt_Obs.Text;
    DmDados.cdsRecibos.Post;
    DmDados.cdsRecibos.ApplyUpdates(0);
    DmDados.cdsRecibos.Close;

     Application.MessageBox('Recibo gerado com sucesso!','Informação', 64);
    Limpar;
  except on E: Exception do
    raise Exception.Create('Erro ao gerar recibo: '+E.Message);
  end;
end;





procedure TfrmEmitirRecibo.HabilitarBotoes;
begin
  btn_Salvar.Enabled    := not btn_Novo.Enabled;
  btn_Cancelar.Enabled  := not btn_Novo.Enabled;
  btn_Novo.Enabled      := not btn_Salvar.Enabled;
  btn_Pesquisar.Enabled := btn_Novo.Enabled;
end;

procedure TfrmEmitirRecibo.Limpar;
var
  i: integer;
begin
  for I := 0 to ComponentCount -1 do
  begin
   if Components[i] is TCustomEdit then
     TCustomEdit(Components[I]).Clear;
  end;
  rdg_recibo.ItemIndex := 0;
  GroupBox1.Enabled := false;
  btn_Novo.Enabled := true;
  HabilitarBotoes;

end;

procedure TfrmEmitirRecibo.rdg_reciboClick(Sender: TObject);
begin
case rdg_recibo.ItemIndex of
    0: Label1.Caption := 'Recebi (emos) de:';
    1: Label1.Caption := 'Pagei (emos) a:';
  end;
end;

end.
