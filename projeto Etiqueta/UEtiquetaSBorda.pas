unit UEtiquetaSBorda;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, RLReport, DB, ZAbstractRODataset, ZAbstractDataset, ZDataset;

type
  TfrmEtiquetaSBorda = class(TForm)
    RLEtiquetaS: TRLReport;
    ZProduto: TZQuery;
    ZProdutoidproduto: TIntegerField;
    ZProdutodescricao: TStringField;
    ZProdutoquantidade: TIntegerField;
    ZProdutovalor: TFloatField;
    dsproduto: TDataSource;
    RLDetailGrid1: TRLDetailGrid;
    RLDBText5: TRLDBText;
    RLLabel3: TRLLabel;
    RLDBText6: TRLDBText;
    RLLabel4: TRLLabel;
    RLDBText7: TRLDBText;
    RLDBText8: TRLDBText;
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmEtiquetaSBorda: TfrmEtiquetaSBorda;

implementation

uses UCadastro;

{$R *.dfm}

end.
