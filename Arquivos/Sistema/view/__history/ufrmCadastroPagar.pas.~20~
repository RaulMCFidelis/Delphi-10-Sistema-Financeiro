unit ufrmCadastroPagar;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, ufrmCadastroBasico, Data.DB,
  System.Actions, Vcl.ActnList, System.ImageList, Vcl.ImgList, Vcl.StdCtrls,
  Vcl.ComCtrls, Vcl.Grids, Vcl.DBGrids, Vcl.Buttons, Vcl.ExtCtrls,
  Datasnap.DBClient, tpEdit;

type
  Tfrmcadastropagar = class(Tfrmcadastrobasico)
    edtdocumento: TEdit;
    Label3: TLabel;
    edtdescricao: TEdit;
    Label4: TLabel;
    edtqtdeparcelas: TEdit;
    Label6: TLabel;
    edtvlrcompra: TtpEdit;
    edtdtcompra: TtpEdit;
    Label7: TLabel;
    Label8: TLabel;
    cdsparcelas: TClientDataSet;
    DBGrid1: TDBGrid;
    dsparcelas: TDataSource;
    BitBtn1: TBitBtn;
    cdsparcelasParcela: TIntegerField;
    cdsparcelasValor: TCurrencyField;
    cdsparcelasVencimento: TDateField;
    BitBtn2: TBitBtn;
    edtvariacao: TEdit;
    Label9: TLabel;
    procedure BitBtn2Click(Sender: TObject);
    procedure BitBtn1Click(Sender: TObject);
    procedure DBGrid1DrawColumnCell(Sender: TObject; const Rect: TRect;
      DataCol: Integer; Column: TColumn; State: TGridDrawState);
    procedure acsalvarExecute(Sender: TObject);
    procedure aceditarExecute(Sender: TObject);
    procedure btnfiltrarClick(Sender: TObject);
    procedure acpesquisarExecute(Sender: TObject);
    procedure acexcluirExecute(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmcadastropagar: Tfrmcadastropagar;

implementation

{$R *.dfm}

uses ModConexao, UFuncoes;

procedure Tfrmcadastropagar.aceditarExecute(Sender: TObject);
begin

  Application.MessageBox('Não é possível editar os campos!', 'Atenção', MB_OK+MB_ICONWARNING);

end;

procedure Tfrmcadastropagar.acexcluirExecute(Sender: TObject);
begin
  //inherited;
    if Application.MessageBox('Deseja Realmente Cancelar o Documento?', 'Pergunta', MB_YESNO+MB_ICONQUESTION) = mrYes then
  begin
    try
      TClientDataSet(dsTabela.DataSet).Edit;
      Dmdados.cdscontas_pagarStatus.AsString := 'C';
      TClientDataSet(dsTabela.DataSet).ApplyUpdates(0);

      Application.MessageBox('Documento Cancelado com sucesso!', 'Informação', 0+64);
      TClientDataSet(dsTabela.DataSet).Open;

      except on E : Exception do

      raise Exception.Create('Erro ao Excluir Registro: '+E.Message);



    end;
  end;
end;

procedure Tfrmcadastropagar.acpesquisarExecute(Sender: TObject);
begin
  inherited;
dmDados.cdscontas_pagar.Close;
dmDados.cdscontas_pagar.CommandText := 'SELECT * FROM CONTAS_PAGAR';
dmDados.cdscontas_pagar.Open;
end;

procedure Tfrmcadastropagar.acsalvarExecute(Sender: TObject);

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
   dmDados.cdscontas_pagar.Insert;
   dmDados.cdscontas_pagarid.AsInteger := GetId('ID', 'CONTAS_PAGAR');
   dmDados.cdscontas_pagarnumero_doc.AsString := trim(edtdocumento.Text);
   dmDados.cdscontas_pagardescricao.AsString := trim(edtdescricao.Text);
   dmDados.cdscontas_pagarParcela.AsInteger := cdsParcelasParcela.AsInteger;
   dmDados.cdscontas_pagarvlr_parcela.AsCurrency := cdsParcelasValor.AsInteger;
   dmDados.cdscontas_pagarvlr_compra.AsCurrency := StringParaFloat(edtVlrcompra.Text);
   dmDados.cdscontas_pagardt_compra.AsDateTime := StrToDate(edtdtcompra.Text);
   dmDados.cdscontas_pagardt_vencimento.AsDateTime := cdsParcelasVencimento.AsDateTime;
   dmDados.cdscontas_pagardt_cadastro.AsDateTime := now;
   dmDados.cdscontas_pagarstatus.AsString := 'A';
   dmDados.cdscontas_pagarvlr_abatido.AsCurrency := 0;
   DmDados.cdscontas_pagar.Post;
   DmDados.cdscontas_pagar.ApplyUpdates(0);
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


 // inherited;

end;

procedure Tfrmcadastropagar.BitBtn1Click(Sender: TObject);
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

procedure Tfrmcadastropagar.BitBtn2Click(Sender: TObject);
begin

  cdsParcelas.EmptyDataSet;

end;

procedure Tfrmcadastropagar.btnfiltrarClick(Sender: TObject);
begin
 inherited;
if edtpesquisar.Text = '' then

 begin
   Application.MessageBox('Informe um valor a ser pesquisado', 'Atenção', MB_OK+MB_ICONWARNING);
   edtpesquisar.SetFocus;
   Abort;
 end;


  DmDados.cdscontas_pagar.Close;
  case cbxfiltros.ItemIndex of
   0 : DmDados.cdscontas_pagar.CommandText := 'SELECT * FROM CONTAS_PAGAR WHERE DOCUMENTO LIKE '+QuotedStr('%'+edtPesquisar.Text+'%');
   1 : DmDados.cdscontas_pagar.CommandText := 'SELECT * FROM CONTAS_PAGAR WHERE DESCRICAO LIKE '+QuotedStr('%'+edtPesquisar.Text+'%');
  end;
  DmDados.cdscontas_pagar.Open;

end;

procedure Tfrmcadastropagar.DBGrid1DrawColumnCell(Sender: TObject;
  const Rect: TRect; DataCol: Integer; Column: TColumn; State: TGridDrawState);
begin

 EditarDBGrid(dsParcelas, DBgrid1, State, Rect, Column);

end;

end.
