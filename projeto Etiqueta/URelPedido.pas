unit URelPedido;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, RLReport, DB, ZAbstractRODataset, ZAbstractDataset, ZDataset,
  RLXLSFilter, RLFilters, RLPDFFilter;

type
  TfrmRelPedido = class(TForm)
    RLPedido: TRLReport;
    RLBand1: TRLBand;
    RLBand2: TRLBand;
    RLGroup1: TRLGroup;
    RLSystemInfo1: TRLSystemInfo;
    RLLabel8: TRLLabel;
    RLSystemInfo2: TRLSystemInfo;
    RLLabel9: TRLLabel;
    RLSystemInfo3: TRLSystemInfo;
    ZQryPedido: TZQuery;
    ZQryItem: TZQuery;
    RLBand3: TRLBand;
    RLBand4: TRLBand;
    RLBand5: TRLBand;
    dsPedido: TDataSource;
    DsItem: TDataSource;
    RLSubDetail1: TRLSubDetail;
    RLLabel2: TRLLabel;
    ZQryPedidoidpedido: TIntegerField;
    ZQryPedidototal: TFloatField;
    ZQryPedidoidcliente: TIntegerField;
    ZQryPedidoqtd_total: TIntegerField;
    RLDBText1: TRLDBText;
    ZQryPedidonome: TStringField;
    RLLabel3: TRLLabel;
    RLLabel4: TRLLabel;
    RLLabel5: TRLLabel;
    RLDBText2: TRLDBText;
    RLDBText3: TRLDBText;
    RLDBText4: TRLDBText;
    RLBand6: TRLBand;
    RLLabel6: TRLLabel;
    RLLabel7: TRLLabel;
    RLBand7: TRLBand;
    RLDBText5: TRLDBText;
    ZQryItemiditempedido: TIntegerField;
    ZQryItemquantidade: TIntegerField;
    ZQryItemdescricao: TStringField;
    RLDBText6: TRLDBText;
    RLBand8: TRLBand;
    RLLabel10: TRLLabel;
    RLLabel11: TRLLabel;
    RLDBResult1: TRLDBResult;
    RLDBResult2: TRLDBResult;
    RLPDFFilter1: TRLPDFFilter;
    RLXLSFilter1: TRLXLSFilter;
    RLLabel12: TRLLabel;
    RLLabel13: TRLLabel;
    RLLabel1: TRLLabel;
    RLLabel14: TRLLabel;
    procedure RLSubDetail1BeforePrint(Sender: TObject;
      var PrintIt: Boolean);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmRelPedido: TfrmRelPedido;

implementation

uses UCadastro;

{$R *.dfm}

procedure TfrmRelPedido.RLSubDetail1BeforePrint(Sender: TObject;
  var PrintIt: Boolean);
begin
  ZQryItem.close;
  ZQryItem.ParamByName('Pedido').asinteger := ZQryPedidoidpedido.AsInteger;
  zqryItem.Open;
end;

end.
