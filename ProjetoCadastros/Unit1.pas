unit Unit1;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, Grids, DBGrids, DB, ZAbstractRODataset, ZAbstractDataset,
  ZDataset, ZConnection, ComCtrls;

type
  TForm1 = class(TForm)
    PageControl1: TPageControl;
    TabSheet1: TTabSheet;
    TabSheet2: TTabSheet;
    ZConnection1: TZConnection;
    ZQueryCliente: TZQuery;
    ZQueryPedido: TZQuery;
    DataSource1: TDataSource;
    DBGrid1: TDBGrid;
    ZQueryItemPedido: TZQuery;
    ZQueryProduto: TZQuery;
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form1: TForm1;

implementation

{$R *.dfm}

end.
