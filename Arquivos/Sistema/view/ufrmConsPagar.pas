unit ufrmConsPagar;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Data.DB, Datasnap.DBClient, Vcl.Grids,
  Vcl.DBGrids, Vcl.ExtCtrls, Vcl.StdCtrls, Vcl.Buttons, tpEdit;

type
  Tfrm_cons_pagar = class(TForm)
    cdsconsultas: TClientDataSet;
    dsconsulta: TDataSource;
    cdsconsultasid: TIntegerField;
    cdsconsultasnumero_doc: TStringField;
    cdsconsultasdescricao: TStringField;
    cdsconsultasparcela: TIntegerField;
    cdsconsultasvlr_parcela: TFMTBCDField;
    cdsconsultasvlr_compra: TFMTBCDField;
    cdsconsultasvlr_abatido: TFMTBCDField;
    cdsconsultasdt_compra: TDateField;
    cdsconsultasdt_cadastro: TDateField;
    cdsconsultasdt_vencimento: TDateField;
    cdsconsultasdt_pagamento: TDateField;
    cdsconsultasstatus: TStringField;
    GroupBox1: TGroupBox;
    Label1: TLabel;
    txt_doc: TEdit;
    rdgPeriodo: TRadioGroup;
    Label2: TLabel;
    Label3: TLabel;
    txt_dtinicio: TtpEdit;
    txt_dtfinal: TtpEdit;
    Label4: TLabel;
    rdgStatus: TRadioGroup;
    SpeedButton1: TSpeedButton;
    GroupBox2: TGroupBox;
    DBGrid1: TDBGrid;
    Button1: TButton;
    Button2: TButton;
    txt_parcela: TEdit;
    procedure Button1Click(Sender: TObject);
    procedure SpeedButton1Click(Sender: TObject);
    procedure Button2Click(Sender: TObject);
  private
  procedure Pesquisar;
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frm_cons_pagar: Tfrm_cons_pagar;

implementation

{$R *.dfm}

uses ModConexao, UFuncoes;

procedure Tfrm_cons_pagar.Button1Click(Sender: TObject);
begin
   Close;
end;

procedure Tfrm_cons_pagar.Button2Click(Sender: TObject);
begin
rdgPeriodo.ItemIndex := -1;
rdgStatus.ItemIndex := -1;
txt_doc.Clear;
txt_dtfinal.Clear;
txt_dtinicio.Clear;
cdsconsultas.Close;

end;

procedure Tfrm_cons_pagar.Pesquisar;
var Sql : TStringList;

  begin
   Sql := TStringList.Create;


  try
    Sql.Add('SELECT * FROM CONTAS_PAGAR');
    Sql.Add('where id > 0');

    // Pesquisa por Data

    if (rdgPeriodo.ItemIndex > -1) and (txt_dtinicio.Text <> '') and (txt_dtfinal.Text <> '') then

    begin
      case rdgPeriodo.ItemIndex of
        0 : Sql.Add('and dt_compra between'+QuotedStr(ReverterData(txt_dtinicio.Text))+'and '+QuotedStr(ReverterData(txt_dtfinal.Text)));
        1 : Sql.Add('and dt_pagamento between'+QuotedStr(ReverterData(txt_dtinicio.Text))+'and '+QuotedStr(ReverterData(txt_dtfinal.Text)));
        2 : Sql.Add('and dt_vencimento between'+QuotedStr(ReverterData(txt_dtinicio.Text))+'and '+QuotedStr(ReverterData(txt_dtfinal.Text)));
      end;
    end;

     //Pesquisar por documento
     if txt_doc.Text <> '' then
      Sql.Add('and numero_doc = '+QuotedStr(trim(txt_doc.Text)));

     //Pesquisa por parcela
     if txt_parcela.Text <> '' then
      Sql.Add('and parcela ='+txt_parcela.Text);

     // Pesuisar por Status
     if rdgStatus.ItemIndex > -1 then
     begin
       case rdgStatus.ItemIndex of
        0 : sql.Add('and status = ''A''');
        1 : sql.Add('and status = ''C''');
        2 : sql.Add('and status = ''B''');
       end;
     end;
  try
    cdsconsultas.Close;
    cdsconsultas.CommandText := Sql.Text;
    cdsconsultas.Open;

    if cdsconsultas.IsEmpty then
      Application.MessageBox('Nenhum registro encontrado!', 'Atenção', MB_OK+MB_ICONWARNING);

  except on E: Exception do
    raise Exception.Create('Erro ao consultar contas a pagar: ' +E.Message);

  end;

  finally
    FreeAndNil(Sql);
  end;
  end;



procedure Tfrm_cons_pagar.SpeedButton1Click(Sender: TObject);
begin
 Pesquisar;
end;

end.
