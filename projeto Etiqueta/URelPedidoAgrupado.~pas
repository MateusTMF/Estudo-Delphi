unit URelPedidoAgrupado;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, RLReport, RLPDFFilter, RLFilters, RLXLSFilter, DB,
  ZAbstractRODataset, ZAbstractDataset, ZDataset;

type
  TfrmpedidoAgrupado = class(TForm)
    RLPedidoAgrupado: TRLReport;
    RLGroup1: TRLGroup;
    RLBand3: TRLBand;
    RLDBText1: TRLDBText;
    RLBand4: TRLBand;
    RLLabel3: TRLLabel;
    RLLabel4: TRLLabel;
    RLLabel5: TRLLabel;
    RLBand5: TRLBand;
    RLDBText2: TRLDBText;
    RLDBText3: TRLDBText;
    RLDBText4: TRLDBText;
    RLSubDetail1: TRLSubDetail;
    RLBand6: TRLBand;
    RLLabel6: TRLLabel;
    RLLabel7: TRLLabel;
    RLBand7: TRLBand;
    RLDBText5: TRLDBText;
    RLDBText6: TRLDBText;
    RLBand8: TRLBand;
    RLLabel10: TRLLabel;
    RLLabel11: TRLLabel;
    RLDBResult1: TRLDBResult;
    RLDBResult2: TRLDBResult;
    RLBand2: TRLBand;
    RLSystemInfo1: TRLSystemInfo;
    RLLabel8: TRLLabel;
    RLSystemInfo2: TRLSystemInfo;
    RLLabel9: TRLLabel;
    RLSystemInfo3: TRLSystemInfo;
    RLBand1: TRLBand;
    RLLabel1: TRLLabel;
    ZQryPedido: TZQuery;
    ZQryPedidoidpedido: TIntegerField;
    ZQryPedidototal: TFloatField;
    ZQryPedidoidcliente: TIntegerField;
    ZQryPedidoqtd_total: TIntegerField;
    ZQryPedidonome: TStringField;
    dsPedido: TDataSource;
    DsItem: TDataSource;
    ZQryItem: TZQuery;
    ZQryItemiditempedido: TIntegerField;
    ZQryItemquantidade: TIntegerField;
    ZQryItemdescricao: TStringField;
    RLXLSFilter1: TRLXLSFilter;
    RLPDFFilter1: TRLPDFFilter;
    ZQryPedidostatus: TStringField;
    RLLabel2: TRLLabel;
    RLDBText7: TRLDBText;
    RLLabel12: TRLLabel;
    RLLabel13: TRLLabel;
    RLLabel14: TRLLabel;
    procedure RLSubDetail1BeforePrint(Sender: TObject;
      var PrintIt: Boolean);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmpedidoAgrupado: TfrmpedidoAgrupado;

implementation

uses UCadastro;

{$R *.dfm}

procedure TfrmpedidoAgrupado.RLSubDetail1BeforePrint(Sender: TObject;
  var PrintIt: Boolean);
begin
  ZQryItem.close;
  ZQryItem.ParamByName('Pedido').asinteger := ZQryPedidoidpedido.AsInteger;
  zqryItem.Open;
end;

end.
