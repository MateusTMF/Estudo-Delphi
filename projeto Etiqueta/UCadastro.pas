unit UCadastro;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, DB, ZAbstractRODataset, ZAbstractDataset, ZDataset, ZConnection,
  StdCtrls, ExtCtrls, Grids, DBGrids, Mask, DBCtrls,comobj;

type
  TfrmCliente = class(TForm)
    conexao: TZConnection;
    ZCliente: TZQuery;
    ZClienteidcliente: TIntegerField;
    ZClientenome: TStringField;
    ZClientecidade: TStringField;
    ZClientecpf: TStringField;
    DBCliente: TDBGrid;
    DSCliente: TDataSource;
    pnlButton: TPanel;
    Panel2: TPanel;
    btninserir: TButton;
    btnalterar: TButton;
    btnexcluir: TButton;
    btnImprimir: TButton;
    DBEdtNome: TDBEdit;
    DBEditCPF: TDBEdit;
    DBEdtCidade: TDBEdit;
    Label1: TLabel;
    Label2: TLabel;
    Label3: TLabel;
    DBEdtCodigo: TDBEdit;
    Label4: TLabel;
    btnSalvar: TButton;
    btncancelar: TButton;
    btnExcel: TButton;
    Button1: TButton;
    btnpedido: TButton;
    Panel1: TPanel;
    btnstatuspedido: TButton;
    btnexcelpedido: TButton;
    ZQryPedido: TZQuery;
    ZQryPedidoidpedido: TIntegerField;
    ZQryPedidototal: TFloatField;
    ZQryPedidoidcliente: TIntegerField;
    ZQryPedidoqtd_total: TIntegerField;
    ZQryPedidonome: TStringField;
    ZQryPedidostatus: TStringField;
    dsPedido: TDataSource;
    DsItem: TDataSource;
    ZQryItem: TZQuery;
    ZQryItemiditempedido: TIntegerField;
    ZQryItemquantidade: TIntegerField;
    ZQryItemdescricao: TStringField;
    btnetiqueta: TButton;
    ckEtiqueta: TRadioGroup;
    procedure btninserirClick(Sender: TObject);
    procedure btnalterarClick(Sender: TObject);
    procedure btnexcluirClick(Sender: TObject);
    procedure btnSalvarClick(Sender: TObject);
    procedure btncancelarClick(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure btnImprimirClick(Sender: TObject);
    procedure btnExcelClick(Sender: TObject);
    procedure Button1Click(Sender: TObject);
    procedure btnpedidoClick(Sender: TObject);
    procedure btnstatuspedidoClick(Sender: TObject);
    procedure btnexcelpedidoClick(Sender: TObject);
    procedure btnetiquetaClick(Sender: TObject);
  private
    procedure EntradaLeite;
    procedure EntradaTransferencia;
    procedure LeitreProducao;
    procedure Habilita(wStatus: boolean);  
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmCliente: TfrmCliente;

implementation

uses URelCliente, URelClienteFortes, URelPedido, URelPedidoAgrupado,
  UEtiquetas, UEtiquetaSBorda;

{$R *.dfm}

procedure TfrmCliente.btninserirClick(Sender: TObject);
begin
  zcliente.Insert;
  DBEdtCodigo.SetFocus;
  Habilita(false);
  DBCliente.DataSource := nil;
end;

procedure TfrmCliente.btnalterarClick(Sender: TObject);
begin
  ZCliente.Edit;
  DBEdtCodigo.setfocus;
  Habilita(false);
  DBCliente.DataSource := nil;
end;

procedure TfrmCliente.btnexcluirClick(Sender: TObject);
begin
  if MessageDlg('Deseja realmente excluir?',mtConfirmation,[mbyes,mbno],0)= mrYes then
    ZCliente.delete;
    
end;

procedure TfrmCliente.btnSalvarClick(Sender: TObject);
begin
  if MessageDlg('Deseja realmente salvar?',mtConfirmation,[mbyes,mbno],0)= mrYes then
    ZCliente.post;
    Habilita(true);
    DBCliente.DataSource := DSCliente;
end;

procedure TfrmCliente.btncancelarClick(Sender: TObject);
begin
  if MessageDlg('Deseja realmente cancelar?',mtConfirmation,[mbyes,mbno],0)= mrYes then
    ZCliente.cancel;
  Habilita(true);
  DBCliente.DataSource := DSCliente;
end;

procedure TfrmCliente.FormShow(Sender: TObject);
begin
  conexao.Connected     := true;
  zcliente.Active   := true;
  Habilita(true);
end;

procedure TfrmCliente.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  conexao.Connected     := false;
  zcliente.Active   := False;
end;

procedure TfrmCliente.btnImprimirClick(Sender: TObject);
begin
  frmRelCliente := TfrmRelCliente.Create(self);
  frmRelCliente.QRCliente.PreviewModal;
  frmRelCliente.Free;
end;

procedure TfrmCliente.btnExcelClick(Sender: TObject);
var objExcel,Sheet,Chart,s : Variant;
cTitulo : string;
i : integer;
begin
  cTitulo := 'Planilha de Teste';
  objExcel := CreateOleObject('Excel.Application');
  objExcel.Visible := True;
  objExcel.Caption := cTitulo;

  objExcel.Workbooks.Add;
  objExcel.Workbooks[1].Sheets.Add;
  objExcel.Workbooks[1].WorkSheets[1].Name := cTitulo;
  Sheet := objExcel.Workbooks[1].WorkSheets[cTitulo];

  Sheet.Range['A1'] := 'Código';
  Sheet.Range['B1'] := 'Nome';
  Sheet.Range['C1'] := 'CPF';
  Sheet.Range['D1'] := 'Cidade';

  // Formatando o Cabeçalho
  Sheet.Range['A1','D1'].font.name := 'Verdana'; // Fonte
  Sheet.Range['A1','D1'].font.size := 12; // Tamanho da Fonte
  Sheet.Range['A1','D1'].font.bold := true; // Negrito
  Sheet.Range['A1','D1'].font.italic := true; // Italico
  Sheet.Range['A1','D1'].font.color := clblack; // Cor da Fonte
  Sheet.Range['A1','D1'].Interior.Color := $00ffcf9c; // Cor da Célula
  // Define o tamanho das Colunas (basta fazer em uma delas e as demais serão alteradas)
  Sheet.Range['B1','C1' ].ColumnWidth := 27;
  Sheet.Range['B1','C1' ].RowHeight := 25;
  Sheet.Range['D1'] .ColumnWidth := 16;

  i:= 2;
  ZCliente.First;
  while not ZCliente.Eof do
  begin
    Sheet.Cells[i,1] := ZClienteidcliente.Text;
    Sheet.Cells[i,2] := ZClientenome.Text;
    Sheet.Cells[i,3] := ZClientecpf.Text;
    Sheet.Cells[i,4] := ZClientecidade.Text;
    i := i+1;
    ZCliente.Next;
  end;

  Sheet.PrintOut;
end;

procedure TfrmCliente.Habilita(wStatus: boolean);
begin
  btninserir.Enabled := wStatus;
  btnalterar.Enabled := wStatus;
  btnexcluir.Enabled := wStatus;
  btnImprimir.Enabled := wStatus;
  btnExcel.Enabled := wStatus;
  btnSalvar.Enabled := not wStatus;
  btncancelar.Enabled := not wStatus;
end;

procedure TfrmCliente.Button1Click(Sender: TObject);
begin
  frmRelClienteFortes := TfrmRelClienteFortes.Create(self);
  with frmRelClienteFortes do
  begin
    ZCliente.close;
    ZCliente.open;
    RLCliente.PreviewModal;
    Free;
  end;
end;

procedure TfrmCliente.btnpedidoClick(Sender: TObject);
begin
  frmRelPedido := TfrmRelPedido.Create(self);
  with frmRelPedido do
  begin
    ZqryPedido.close;
    ZqryPedido.open;
    RLPedido.PreviewModal;
    Free;
  end;
end;

procedure TfrmCliente.btnstatuspedidoClick(Sender: TObject);
begin
  frmpedidoAgrupado := TfrmpedidoAgrupado.Create(self);
  with frmpedidoAgrupado do
  begin
    ZqryPedido.close;
    ZqryPedido.open;
    RLPedidoAgrupado.PreviewModal;
    Free;
  end;
end;

procedure TfrmCliente.btnexcelpedidoClick(Sender: TObject);
var objExcel,Sheet,Chart,s : Variant;
cTitulo : string;
i : integer;
begin
  cTitulo := 'Planilha de Pedido';
  objExcel := CreateOleObject('Excel.Application');
  objExcel.Visible := True;
  objExcel.Caption := cTitulo;

  objExcel.Workbooks.Add;
  objExcel.Workbooks[1].Sheets.Add;
  objExcel.Workbooks[1].WorkSheets[1].Name := cTitulo;
  Sheet := objExcel.Workbooks[1].WorkSheets[cTitulo];

  i := 1;
  ZQryPedido.close;
  ZQryPedido.Parambyname('STATUS').asstring := 'Aberto';
  ZQryPedido.open;

  Sheet.Cells[i,1] := 'Aberto';
  Sheet.Range['A'+inttostr(i),'A'+inttostr(i)].font.name := 'Verdana'; // Fonte
  Sheet.Range['A'+inttostr(i),'A'+inttostr(i)].font.size := 14; // Tamanho da Fonte
  Sheet.Range['A'+inttostr(i),'A'+inttostr(i)].font.bold := true; // Negrito
  Sheet.Range['A'+inttostr(i),'A'+inttostr(i)].font.italic := true; // Italico
  Sheet.Range['A'+inttostr(i),'A'+inttostr(i)].font.color := clblack; // Cor da Fonte
  Sheet.Range['A'+inttostr(i),'A'+inttostr(i)].Interior.Color := clgray; // Cor da Célula
  Sheet.Range['A'+inttostr(i),'A'+inttostr(i) ].ColumnWidth := 50;
  i := 2;
  Sheet.Cells[i,1] := 'Pedido';
  Sheet.Cells[i,2] := 'Cliente';
  Sheet.Cells[i,3] := 'Quantidade Pedido';
  Sheet.Cells[i,4] := 'Total';

  // Formatando o Cabeçalho
  Sheet.Range['A'+inttostr(i),'D'+inttostr(i)].font.name := 'Verdana'; // Fonte
  Sheet.Range['A'+inttostr(i),'D'+inttostr(i)].font.size := 12; // Tamanho da Fonte
  Sheet.Range['A'+inttostr(i),'D'+inttostr(i)].font.bold := true; // Negrito
  Sheet.Range['A'+inttostr(i),'D'+inttostr(i)].font.italic := true; // Italico
  Sheet.Range['A'+inttostr(i),'D'+inttostr(i)].font.color := clblack; // Cor da Fonte
  Sheet.Range['A'+inttostr(i),'D'+inttostr(i)].Interior.Color := $00ffcf9c; // Cor da Célula
  // Define o tamanho das Colunas (basta fazer em uma delas e as demais serão alteradas)
  Sheet.Range['B'+inttostr(i),'C'+inttostr(i) ].ColumnWidth := 27;
  Sheet.Range['B'+inttostr(i),'C'+inttostr(i) ].RowHeight := 25;
  Sheet.Range['D'+inttostr(i)] .ColumnWidth := 16;

  i:= 3;
  ZQryPedido.First;
  while not ZQryPedido.Eof do
  begin
    Sheet.Cells[i,1] := ZQryPedidoidcliente.Text;
    Sheet.Cells[i,2] := ZQryPedidonome.Text;
    Sheet.Cells[i,3] := ZQryPedidoqtd_total.Text;
    Sheet.Cells[i,4] := ZQryPedidototal.Text;
    i := i+1;

    ZQryItem.Close;
    ZQryItem.ParamByName('Pedido').asinteger := ZQryPedidoidpedido.asinteger;
    ZQryItem.Open;

    Sheet.Cells[i,1] := 'Descrição';
    Sheet.Cells[i,2] := 'Quantidade';
    // Formatando o Cabeçalho
    Sheet.Range['A'+inttostr(i),'B'+inttostr(i)].font.name := 'Verdana'; // Fonte
    Sheet.Range['A'+inttostr(i),'B'+inttostr(i)].font.size := 12; // Tamanho da Fonte
    Sheet.Range['A'+inttostr(i),'B'+inttostr(i)].font.bold := true; // Negrito
    Sheet.Range['A'+inttostr(i),'B'+inttostr(i)].font.italic := true; // Italico
    Sheet.Range['A'+inttostr(i),'B'+inttostr(i)].font.color := clblack; // Cor da Fonte
    Sheet.Range['A'+inttostr(i),'B'+inttostr(i)].Interior.Color := $00ffcf9c; // Cor da Célula
    // Define o tamanho das Colunas (basta fazer em uma delas e as demais serão alteradas)
    Sheet.Range['B'+inttostr(i),'C'+inttostr(i) ].ColumnWidth := 27;
    Sheet.Range['B'+inttostr(i),'C'+inttostr(i) ].RowHeight := 25;
  
    i := i+1;
    ZQryItem.first;
    while not ZQryItem.eof do
    begin
      Sheet.Cells[i,1] := ZQryItemdescricao.Text;
      Sheet.Cells[i,2] := ZQryItemquantidade.Text;
      i := i+1;
      ZQryItem.next;
    end;
     i := i+1;

    ZQryPedido.Next;

    IF NOT ZQryPedido.EOF THEN
    BEGIN
      Sheet.Cells[i,1] := 'Pedido';
      Sheet.Cells[i,2] := 'Cliente';
      Sheet.Cells[i,3] := 'Quantidade Pedido';
      Sheet.Cells[i,4] := 'Total';

      // Formatando o Cabeçalho
      Sheet.Range['A'+inttostr(i),'D'+inttostr(i)].font.name := 'Verdana'; // Fonte
      Sheet.Range['A'+inttostr(i),'D'+inttostr(i)].font.size := 12; // Tamanho da Fonte
      Sheet.Range['A'+inttostr(i),'D'+inttostr(i)].font.bold := true; // Negrito
      Sheet.Range['A'+inttostr(i),'D'+inttostr(i)].font.italic := true; // Italico
      Sheet.Range['A'+inttostr(i),'D'+inttostr(i)].font.color := clblack; // Cor da Fonte
      Sheet.Range['A'+inttostr(i),'D'+inttostr(i)].Interior.Color := $00ffcf9c; // Cor da Célula
      // Define o tamanho das Colunas (basta fazer em uma delas e as demais serão alteradas)
      Sheet.Range['B'+inttostr(i),'C'+inttostr(i) ].ColumnWidth := 27;
      Sheet.Range['B'+inttostr(i),'C'+inttostr(i) ].RowHeight := 25;
      Sheet.Range['D'+inttostr(i)] .ColumnWidth := 16;
      i := i+1;
    END;
  end;

  ZQryPedido.close;
  ZQryPedido.Parambyname('STATUS').asstring := 'Fechado';
  ZQryPedido.open;

  Sheet.Cells[i,1] := 'Fechado';
  Sheet.Range['A'+inttostr(i),'A'+inttostr(i)].font.name := 'Verdana'; // Fonte
  Sheet.Range['A'+inttostr(i),'A'+inttostr(i)].font.size := 14; // Tamanho da Fonte
  Sheet.Range['A'+inttostr(i),'A'+inttostr(i)].font.bold := true; // Negrito
  Sheet.Range['A'+inttostr(i),'A'+inttostr(i)].font.italic := true; // Italico
  Sheet.Range['A'+inttostr(i),'A'+inttostr(i)].font.color := clblack; // Cor da Fonte
  Sheet.Range['A'+inttostr(i),'A'+inttostr(i)].Interior.Color := clgray; // Cor da Célula


  i := i + 1;
  Sheet.Cells[i,1] := 'Pedido';
  Sheet.Cells[i,2] := 'Cliente';
  Sheet.Cells[i,3] := 'Quantidade Pedido';
  Sheet.Cells[i,4] := 'Total';

  // Formatando o Cabeçalho
  Sheet.Range['A'+inttostr(i),'D'+inttostr(i)].font.name := 'Verdana'; // Fonte
  Sheet.Range['A'+inttostr(i),'D'+inttostr(i)].font.size := 12; // Tamanho da Fonte
  Sheet.Range['A'+inttostr(i),'D'+inttostr(i)].font.bold := true; // Negrito
  Sheet.Range['A'+inttostr(i),'D'+inttostr(i)].font.italic := true; // Italico
  Sheet.Range['A'+inttostr(i),'D'+inttostr(i)].font.color := clblack; // Cor da Fonte
  Sheet.Range['A'+inttostr(i),'D'+inttostr(i)].Interior.Color := $00ffcf9c; // Cor da Célula
  // Define o tamanho das Colunas (basta fazer em uma delas e as demais serão alteradas)
  Sheet.Range['B'+inttostr(i),'C'+inttostr(i) ].ColumnWidth := 27;
  Sheet.Range['B'+inttostr(i),'C'+inttostr(i) ].RowHeight := 25;
  Sheet.Range['D'+inttostr(i)] .ColumnWidth := 16;

  i:= i+1;
  ZQryPedido.First;
  while not ZQryPedido.Eof do
  begin
    Sheet.Cells[i,1] := ZQryPedidoidcliente.Text;
    Sheet.Cells[i,2] := ZQryPedidonome.Text;
    Sheet.Cells[i,3] := ZQryPedidoqtd_total.Text;
    Sheet.Cells[i,4] := ZQryPedidototal.Text;
    i := i+1;

    ZQryItem.Close;
    ZQryItem.ParamByName('Pedido').asinteger := ZQryPedidoidpedido.asinteger;
    ZQryItem.Open;

    Sheet.Cells[i,1] := 'Descrição';
    Sheet.Cells[i,2] := 'Quantidade';
    // Formatando o Cabeçalho
    Sheet.Range['A'+inttostr(i),'B'+inttostr(i)].font.name := 'Verdana'; // Fonte
    Sheet.Range['A'+inttostr(i),'B'+inttostr(i)].font.size := 12; // Tamanho da Fonte
    Sheet.Range['A'+inttostr(i),'B'+inttostr(i)].font.bold := true; // Negrito
    Sheet.Range['A'+inttostr(i),'B'+inttostr(i)].font.italic := true; // Italico
    Sheet.Range['A'+inttostr(i),'B'+inttostr(i)].font.color := clblack; // Cor da Fonte
    Sheet.Range['A'+inttostr(i),'B'+inttostr(i)].Interior.Color := $00ffcf9c; // Cor da Célula
    // Define o tamanho das Colunas (basta fazer em uma delas e as demais serão alteradas)
    Sheet.Range['B'+inttostr(i),'C'+inttostr(i) ].ColumnWidth := 27;
    Sheet.Range['B'+inttostr(i),'C'+inttostr(i) ].RowHeight := 25;
  
    i := i+1;
    ZQryItem.first;
    while not ZQryItem.eof do
    begin
      Sheet.Cells[i,1] := ZQryItemdescricao.Text;
      Sheet.Cells[i,2] := ZQryItemquantidade.Text;
      i := i+1;
      ZQryItem.next;
    end;
     i := i+1;

    ZQryPedido.Next;

    IF NOT ZQryPedido.EOF THEN
    BEGIN
      Sheet.Cells[i,1] := 'Pedido';
      Sheet.Cells[i,2] := 'Cliente';
      Sheet.Cells[i,3] := 'Quantidade Pedido';
      Sheet.Cells[i,4] := 'Total';

      // Formatando o Cabeçalho
      Sheet.Range['A'+inttostr(i),'D'+inttostr(i)].font.name := 'Verdana'; // Fonte
      Sheet.Range['A'+inttostr(i),'D'+inttostr(i)].font.size := 12; // Tamanho da Fonte
      Sheet.Range['A'+inttostr(i),'D'+inttostr(i)].font.bold := true; // Negrito
      Sheet.Range['A'+inttostr(i),'D'+inttostr(i)].font.italic := true; // Italico
      Sheet.Range['A'+inttostr(i),'D'+inttostr(i)].font.color := clblack; // Cor da Fonte
      Sheet.Range['A'+inttostr(i),'D'+inttostr(i)].Interior.Color := $00ffcf9c; // Cor da Célula
      // Define o tamanho das Colunas (basta fazer em uma delas e as demais serão alteradas)
      Sheet.Range['B'+inttostr(i),'C'+inttostr(i) ].ColumnWidth := 27;
      Sheet.Range['B'+inttostr(i),'C'+inttostr(i) ].RowHeight := 25;
      Sheet.Range['D'+inttostr(i)] .ColumnWidth := 16;
      i := i+1;
    END;
  end;

  Sheet.PrintOut;
end;

procedure TfrmCliente.btnetiquetaClick(Sender: TObject);
begin
  if ckEtiqueta.ItemIndex = 1 then
  begin
    frmEtiquetaSBorda := TfrmEtiquetaSBorda.Create(self);
    with frmEtiquetaSBorda do
    begin
      ZProduto.close;
      ZProduto.open;
      RLEtiquetaS.PreviewModal;
      Free;
    end;
  end
  else
  begin
    frmEtiqueta := TfrmEtiqueta.Create(self);
    with frmEtiqueta do
    begin
      ZProduto.close;
      ZProduto.open;
      RLEtiqueta.PreviewModal;
      Free;
    end;
  end;
end;


procedure TfrmCliente.EntradaLeite;
var zI,zISelect,zIItem : TZQuery;
codentrada:string;
begin
  //Fazerá os inserts
  zI := TZQuery.Create(nil);
  zI.Connection := Dados.DB1;

  //Fazerá o select na tabela original
  zISelect := TZQuery.Create(nil);
  zISelect.Connection := Dados.DB1;

  //Fazerá o select apenas dos itens
  zIItem := TZQuery.Create(nil);
  zIItem.Connection := Dados.DB1;


  with zI do
  begin
    zISelect.SQL.Clear;
    zISelect.sql.Add(' select * from leite_entrada');
    zISelect.open;
    zISelect.First;

    while not zISelect.Eof do
    begin
      SQL.Clear;
      SQL.Add(' INSERT INTO leite_entrada (le_lote, le_data, le_data_lancto, le_hora_lancto) ');
      SQL.Add(' VALUES (:le_lote, :le_data, :le_data_lancto, :le_hora_lancto)                ');
      SQL.Add(' RETURNING le_codigo                                                          ');
      ParamByName('le_lote').AsString := zISelect.FieldByName('le_lote').AsString;
      ParamByName('le_data').AsDateTime := zISelect.FieldByName('le_data').AsDateTime;;
      ParamByName('le_data_lancto').AsDateTime := zISelect.FieldByName('le_data_lancto').AsDateTime;;
      ParamByName('le_hora_lancto').AsString := zISelect.FieldByName('le_hora_lancto').asstring;
      Open;
      codentrada := zI.FieldByName('le_codigo').AsString;

      zIItem.sql.Clear;
      zIItem.sql.add(' select * from leite_entrada_item ');
      zIItem.sql.add(' where le_codigo = :codigo ');
      zIItem.open;
      zIItem.First;

      while not zIItem.Eof do
      begin
        SQL.Clear;
        SQL.Add(' INSERT INTO leite_entrada_item (le_codigo, for_codigo, for_nome, lei_volume, ');
        SQL.Add('        fun_codigo, lei_operador, lei_data_lancto, lei_hora_lancto)           ');
        SQL.Add(' VALUES (:le_codigo, :for_codigo, :for_nome, :lei_volume,                     ');
        SQL.Add('         :fun_codigo, :lei_operador, :lei_data_lancto, :lei_hora_lancto)      ');
        ParamByName('le_codigo').AsInteger := StrToInt(SoNumero(codentrada));
        ParamByName('for_codigo').AsString := zIItem.ParamByName('for_codigo').AsString;
        ParamByName('for_nome').AsString := zIItem.ParamByName('for_nome').AsString;
        ParamByName('lei_volume').AsFloat := zIItem.ParamByName('lei_volume').AsFloat;
        ParamByName('fun_codigo').AsInteger := zIItem.ParamByName('fun_codigo').AsInteger;
        ParamByName('lei_operador').AsString := zIItem.ParamByName('lei_operador').AsString ;

        ParamByName('lei_data_lancto').AsDateTime := zIItem.ParamByName('lei_data_lancto').AsDateTime;
        ParamByName('lei_hora_lancto').AsString := zIItem.ParamByName('lei_hora_lancto').AsString;

        ExecSQL;
        zIItem.Next;
      end;

      zISelect.Next;
    end;
  end;
  zI.Destroy;
  zISelect.Destroy;
  zIItem.Destroy;
end;

procedure TfrmCliente.EntradaTransferencia;
var zI,zISelect : TZQuery;
begin
  //Fazerá os inserts
  zI := TZQuery.Create(nil);
  zI.Connection := Dados.DB1;

  //Fazerá o select na tabela original
  zISelect := TZQuery.Create(nil);
  zISelect.Connection := Dados.DB1;

  with zI do
  begin
    zISelect.SQL.Clear;
    zISelect.sql.Add(' select * from leite_entrada_transferencia');
    zISelect.open;
    zISelect.First;

    while not zISelect.eof do
    begin
      SQL.Clear;
      SQL.Add(' INSERT INTO leite_entrada_transferencia (let_data, let_hora, lei_codigo, ');
      SQL.Add('        let_lote_anterio, let_lote_novo, let_volume)                      ');
      SQL.Add(' VALUES (:let_data, :let_hora, :lei_codigo,                               ');
      SQL.Add('        :let_lote_anterio, :let_lote_novo, :let_volume)                   ');
      ParamByName('let_data').AsDateTime := zISelect.ParamByName('let_data').AsDateTime;
      ParamByName('let_hora').AsString := zISelect.ParamByName('let_hora').AsString;
      ParamByName('lei_codigo').AsInteger := zISelect.ParamByName('lei_codigo').AsInteger;
      ParamByName('let_lote_anterio').AsInteger := zISelect.ParamByName('let_lote_anterio').AsInteger;
      ParamByName('let_lote_novo').AsInteger := zISelect.ParamByName('let_lote_novo').AsInteger;
      ParamByName('let_volume').AsFloat := zISelect.ParamByName('let_volume').AsFloat;
      ExecSQL;

      zISelect.next
    end;
  end;

  zI.Destroy;
  zISelect.Destroy;
end;

procedure TfrmCliente.LeitreProducao;
var zI,zISelect : TZQuery;
begin
  //Fazerá os inserts
  zI := TZQuery.Create(nil);
  zI.Connection := Dados.DB1;

  //Fazerá o select na tabela original
  zISelect := TZQuery.Create(nil);
  zISelect.Connection := Dados.DB1;

  with zI do
  begin
    zISelect.SQL.Clear;
    zISelect.sql.Add(' select * from leite_producao');
    zISelect.open;
    zISelect.First;

    while not zISelect.eof do
    begin
      SQL.Clear;
      SQL.Add(' INSERT INTO leite_producao (le_codigo, lp_lote, pro_codigo,                         ');
      SQL.Add('        pro_produto, lp_volume_leite, lp_crioscopia_tacho, lp_litros_leite,          ');
      SQL.Add('        lp_gordura_final, lp_volume_creme, lp_quantidade_pecas,                      ');
      SQL.Add('        lp_dornic, lp_alizarol, lp_massas_aparas, lp_lote_tag, lp_data_lancto,       ');
      SQL.Add('        lp_hora_lancto, fun_codigo, lp_operador)                                     ');
      SQL.Add(' VALUES (:le_codigo, :lp_lote, :pro_codigo,                                          ');
      SQL.Add('         :pro_produto, :lp_volume_leite, :lp_crioscopia_tacho, :lp_litros_leite,     ');
      SQL.Add('         :lp_gordura_final, :lp_volume_creme, :lp_quantidade_pecas,                  ');
      SQL.Add('         :lp_dornic, :lp_alizarol, :lp_massas_aparas, :lp_lote_tag, :lp_data_lancto, ');
      SQL.Add('         :lp_hora_lancto, :fun_codigo, :lp_operador)                                 ');
      ParamByName('le_codigo').AsString := zISelect.ParamByName('le_codigo').AsString;
      ParamByName('lp_lote').AsString := zISelect.ParamByName('lp_lote').AsString;
      ParamByName('lp_lote_tag').AsString := zISelect.ParamByName('lp_lote_tag').AsString;
      ParamByName('pro_codigo').AsString := zISelect.ParamByName('pro_codigo').AsString;
      ParamByName('pro_produto').AsString := zISelect.ParamByName('pro_produto').AsString;
      ParamByName('lp_volume_leite').AsFloat := zISelect.ParamByName('lp_volume_leite').AsFloat;
      ParamByName('lp_crioscopia_tacho').AsFloat := zISelect.ParamByName('lp_crioscopia_tacho').AsFloat;
      ParamByName('lp_litros_leite').AsFloat := zISelect.ParamByName('lp_litros_leite').AsFloat;
      ParamByName('lp_gordura_final').AsFloat := zISelect.ParamByName('lp_gordura_final').AsFloat;
      ParamByName('lp_volume_creme').AsFloat := zISelect.ParamByName('lp_volume_creme').AsFloat;
      ParamByName('lp_quantidade_pecas').AsFloat := zISelect.ParamByName('lp_quantidade_pecas').AsFloat;
      ParamByName('lp_dornic').AsString := zISelect.ParamByName('lp_dornic').AsString;
      ParamByName('lp_alizarol').AsBoolean := zISelect.ParamByName('lp_alizarol').AsBoolean;
      ParamByName('lp_massas_aparas').AsFloat := zISelect.ParamByName('lp_massas_aparas').AsFloat;

      ParamByName('lp_data_lancto').AsDateTime := zISelect.ParamByName('lp_data_lancto').AsDateTime;
      ParamByName('lp_hora_lancto').AsString := zISelect.ParamByName('lp_hora_lancto').AsString;
      ParamByName('fun_codigo').AsInteger := zISelect.ParamByName('fun_codigo').AsInteger;
      ParamByName('lp_operador').AsString := zISelect.ParamByName('lp_operador').AsString;
      ExecSQL;
      
      zISelect.next
    end;
  end;
  zI.Destroy;
  zISelect.Destroy;
end;

end.
