unit ufrmCadastroReceber;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, ufrmCadastroBasico, Data.DB,
  System.Actions, Vcl.ActnList, System.ImageList, Vcl.ImgList, Vcl.StdCtrls,
  Vcl.ComCtrls, Vcl.Grids, Vcl.DBGrids, Vcl.Buttons, Vcl.ExtCtrls,
  Datasnap.DBClient, tpEdit;

type
  Tfrmcadastroreceber = class(Tfrmcadastrobasico)
    Label9: TLabel;
    Label3: TLabel;
    edtdocumento: TEdit;
    Label4: TLabel;
    edtdescricao: TEdit;
    Label6: TLabel;
    edtqtdeparcelas: TEdit;
    edtvariacao: TEdit;
    edtvlrcompra: TtpEdit;
    Label7: TLabel;
    Label10: TLabel;
    edtdtcompra: TtpEdit;
    BitBtn1: TBitBtn;
    BitBtn2: TBitBtn;
    DBGrid1: TDBGrid;
    cdsparcelas: TClientDataSet;
    cdsparcelasParcela: TIntegerField;
    cdsparcelasValor: TCurrencyField;
    cdsparcelasVencimento: TDateField;
    dsparcelas: TDataSource;
    procedure DBGrid1DrawColumnCell(Sender: TObject; const Rect: TRect;
      DataCol: Integer; Column: TColumn; State: TGridDrawState);
    procedure BitBtn2Click(Sender: TObject);
    procedure BitBtn1Click(Sender: TObject);
    procedure btnfiltrarClick(Sender: TObject);
    procedure acsalvarExecute(Sender: TObject);
    procedure acpesquisarExecute(Sender: TObject);
    procedure acexcluirExecute(Sender: TObject);
    procedure aceditarExecute(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmcadastroreceber: Tfrmcadastroreceber;

implementation

{$R *.dfm}

uses ModConexao, UFuncoes, ufrmCadastroCaixa;

procedure Tfrmcadastroreceber.aceditarExecute(Sender: TObject);
begin
 Application.MessageBox('Não é possível editar os campos!', 'Atenção', MB_OK+MB_ICONWARNING);

end;

procedure Tfrmcadastroreceber.acexcluirExecute(Sender: TObject);
begin
  if Application.MessageBox('Deseja Realmente Cancelar o Documento?', 'Pergunta', MB_YESNO+MB_ICONQUESTION) = mrYes then
  begin
    try
      TClientDataSet(dsTabela.DataSet).Edit;
      Dmdados.cdscontas_receberStatus.AsString := 'C';
      TClientDataSet(dsTabela.DataSet).ApplyUpdates(0);

      Application.MessageBox('Documento Cancelado com sucesso!', 'Informação', 0+64);
      TClientDataSet(dsTabela.DataSet).Open;

      except on E : Exception do

      raise Exception.Create('Erro ao Excluir Registro: '+E.Message);



    end;
  end;

end;

procedure Tfrmcadastroreceber.acpesquisarExecute(Sender: TObject);
begin
  inherited;
  dmDados.cdscontas_receber.Close;
dmDados.cdscontas_receber.CommandText := 'SELECT * FROM CONTAS_RECEBER';
dmDados.cdscontas_receber.Open;
end;

procedure Tfrmcadastroreceber.acsalvarExecute(Sender: TObject);
var i : integer;

begin

  if Trim(edtdocumento.Text) =  '' then
   begin
     Application.MessageBox('Preencha o campo Documento!', 'Atenção', MB_OK+MB_ICONWARNING);
     edtdocumento.SetFocus;
     Abort;
   end;

   //código do botão salvar

   try



cdsParcelas.First;
 while not cdsParcelas.eof do
    if dsTabela.State in [dsBrowse, dsInsert] then
    begin
   dmDados.cdscontas_receber.Insert;
   dmDados.cdscontas_receberid.AsInteger := GetId('ID', 'CONTAS_RECEBER');
   dmDados.cdscontas_receberdocumento.AsString := trim(edtdocumento.Text);
   dmDados.cdscontas_receberdescricao.AsString := trim(edtdescricao.Text);
   dmDados.cdscontas_receberParcela.AsInteger := cdsParcelasParcela.AsInteger;
   dmDados.cdscontas_recebervlr_parcela.AsCurrency := cdsParcelasValor.AsInteger;
   dmDados.cdscontas_recebervlr_compra.AsCurrency := StringParaFloat(edtVlrcompra.Text);
   dmDados.cdscontas_receberdt_compra.AsDateTime := StrToDate(edtdtcompra.Text);
   dmDados.cdscontas_receberdt_vencimento.AsDateTime := cdsParcelasVencimento.AsDateTime;
   dmDados.cdscontas_receberdt_cadastro.AsDateTime := now;
   dmDados.cdscontas_receberstatus.AsString := 'A';
   dmDados.cdscontas_recebervlr_abatido.AsCurrency := 0;
   DmDados.cdscontas_receber.Post;
   DmDados.cdscontas_receber.ApplyUpdates(0);
   cdsParcelas.Next;
   end;

       Application.MessageBox('Registro Inserido com Sucesso!', 'Informação', MB_OK+MB_ICONINFORMATION);
       TClientDataSet(dsTabela.DataSet).Open;

       for i := 0 to ComponentCount -1 do
 begin
   if Components[i] is TCustomEdit then
   TCustomEdit(Components[i]).Clear;
 end;
  if PageControl1.ActivePage = tbsCadastro  then
  begin
     tbsCadastro.TabVisible := false;
     PageControl1.ActivePage := tbsPesquisa;
      end;
      edtpesquisar.setFocus;

       cdsParcelas.EmptyDataSet;




except on E : Exception do
raise Exception.Create('Erro ao Salvar Registro: '+E.Message);

end;

 // final do código do botão salvar


end;

procedure Tfrmcadastroreceber.BitBtn1Click(Sender: TObject);

var i : Integer;

begin

 if edtDocumento.Text = '' then
    begin
      Application.MessageBox('Preencha o campo Documento!', 'Atenção', MB_OK+MB_ICONWARNING);
     edtdocumento.SetFocus;
     Abort;
    end;

    if edtdescricao.Text = '' then
    begin
      Application.MessageBox('Preencha o campo Descrição!', 'Atenção', MB_OK+MB_ICONWARNING);
     edtdescricao.SetFocus;
     Abort;
    end;


    if edtqtdeparcelas.Text = '' then
    begin
      Application.MessageBox('Preencha o campo de Qtde de Parcelas!', 'Atenção', MB_OK+MB_ICONWARNING);
     edtqtdeparcelas.SetFocus;
     Abort;
    end;


    if StringParaFloat(edtvlrcompra.Text) = 0 then
    begin
      Application.MessageBox('Preencha o Valor da Compra!', 'Atenção', MB_OK+MB_ICONWARNING);
     edtvlrcompra.SetFocus;
     Abort;
    end;


    if edtdtcompra.Text = '' then
    begin
      Application.MessageBox('Preencha o campo de Data da Compra!', 'Atenção', MB_OK+MB_ICONWARNING);
     edtdtcompra.SetFocus;
     Abort;
    end;

    cdsParcelas.EmptyDataSet ;
 for I := 1 to Strtoint(edtQtdeParcelas.Text) do
 begin
   cdsParcelas.Insert;
   cdsParcelasParcela.AsInteger := i;
   cdsParcelasValor.AsCurrency := StringParaFloat(edtvlrcompra.Text) / StrToInt(edtqtdeParcelas.Text);
   cdsParcelasVencimento.AsDateTime := StrtoDate(edtdtcompra.Text) + (strToInt(edtVariacao.Text) * i);
   cdsParcelas.Post;
 end;


end;

procedure Tfrmcadastroreceber.BitBtn2Click(Sender: TObject);
begin
    cdsParcelas.EmptyDataSet;

end;

procedure Tfrmcadastroreceber.btnfiltrarClick(Sender: TObject);
begin
  inherited;
if edtpesquisar.Text = '' then

 begin
   Application.MessageBox('Informe um valor a ser pesquisado', 'Atenção', MB_OK+MB_ICONWARNING);
   edtpesquisar.SetFocus;
   Abort;
 end;


  DmDados.cdscontas_receber.Close;
  case cbxfiltros.ItemIndex of
   0 : DmDados.cdscontas_receber.CommandText := 'SELECT * FROM CONTAS_RECEBER WHERE DOCUMENTO LIKE '+QuotedStr('%'+edtPesquisar.Text+'%');
   1 : DmDados.cdscontas_receber.CommandText := 'SELECT * FROM CONTAS_RECEBER WHERE DESCRICAO LIKE '+QuotedStr('%'+edtPesquisar.Text+'%');
  end;
  DmDados.cdscontas_receber.Open;
end;

procedure Tfrmcadastroreceber.DBGrid1DrawColumnCell(Sender: TObject;
  const Rect: TRect; DataCol: Integer; Column: TColumn; State: TGridDrawState);
begin

 EditarDBGrid(dsParcelas, DBgrid1, State, Rect, Column);

end;

end.
