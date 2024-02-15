unit URelClienteFortes;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, RLReport, RLFilters, RLPDFFilter, DB, ZAbstractRODataset,
  ZAbstractDataset, ZDataset, RLXLSFilter;

type
  TfrmRelClienteFortes = class(TForm)
    RLCliente: TRLReport;
    RLBand1: TRLBand;
    RLBand2: TRLBand;
    RLGroup1: TRLGroup;
    RLLabel1: TRLLabel;
    RLBand3: TRLBand;
    RLBand4: TRLBand;
    RLBand5: TRLBand;
    RLLabel2: TRLLabel;
    RLDBText1: TRLDBText;
    RLLabel3: TRLLabel;
    RLLabel4: TRLLabel;
    RLDBText2: TRLDBText;
    RLDBText3: TRLDBText;
    RLLabel5: TRLLabel;
    RLDBText4: TRLDBText;
    RLBand6: TRLBand;
    RLDBResult1: TRLDBResult;
    RLSystemInfo1: TRLSystemInfo;
    RLPDFFilter1: TRLPDFFilter;
    RLLabel6: TRLLabel;
    RLBand7: TRLBand;
    RLLabel7: TRLLabel;
    RLDBResult2: TRLDBResult;
    RLSystemInfo2: TRLSystemInfo;
    RLLabel8: TRLLabel;
    RLLabel9: TRLLabel;
    RLSystemInfo3: TRLSystemInfo;
    ZCliente: TZQuery;
    ZClienteidcliente: TIntegerField;
    ZClientenome: TStringField;
    ZClientecidade: TStringField;
    ZClientecpf: TStringField;
    DSCliente: TDataSource;
    RLXLSFilter1: TRLXLSFilter;
    RLLabel10: TRLLabel;
    RLLabel11: TRLLabel;
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmRelClienteFortes: TfrmRelClienteFortes;

implementation

uses UCadastro;

{$R *.dfm}

end.
