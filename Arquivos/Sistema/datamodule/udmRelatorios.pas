unit udmRelatorios;

interface

uses
  System.SysUtils, System.Classes, frxClass, frxDBSet, frxExportText,
  frxExportPDF;

type
  Tdmrelatorios = class(TDataModule)
    frxReport: TfrxReport;
    frxDBDsusuarios: TfrxDBDataset;
    frxPDFExport1: TfrxPDFExport;
    frxSimpleTextExport1: TfrxSimpleTextExport;
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  dmrelatorios: Tdmrelatorios;

implementation

{%CLASSGROUP 'Vcl.Controls.TControl'}

uses ModConexao, ufrmCadastroUsuarios;

{$R *.dfm}

end.
