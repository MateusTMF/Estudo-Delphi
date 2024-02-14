unit Unit1;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, DB, ZAbstractRODataset, ZAbstractDataset, ZDataset,
  ZConnection, ExtCtrls, Grids, DBGrids;

type
  TForm1 = class(TForm)
    CadCliente: TGroupBox;
    Cliente: TButton;
    Label1: TLabel;
    Produto: TButton;
    CadCli: TButton;
    CancCli: TButton;
    CadProduto: TGroupBox;
    ZConnection1: TZConnection;
    ZQueryCliente: TZQuery;
    CancProd: TButton;
    CadProd: TButton;
    desc: TLabeledEdit;
    qtd: TLabeledEdit;
    val: TLabeledEdit;
    nome: TLabeledEdit;
    cidade: TLabeledEdit;
    cpf: TLabeledEdit;
    DBGrid1: TDBGrid;
    ZQueryProduto: TZQuery;
    DataSource1: TDataSource;
    procedure ClienteClick(Sender: TObject);
    procedure ProdutoClick(Sender: TObject);
    procedure CadCliClick(Sender: TObject);
    procedure CancCliClick(Sender: TObject);
    procedure CancProdClick(Sender: TObject);
    procedure CadProdClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form1: TForm1;

implementation

{$R *.dfm}

procedure TForm1.ClienteClick(Sender: TObject);
begin
  Form1.CadCliente.Visible:= True;
  Form1.CadProduto.Visible:= False;
  Form1.DataSource1.DataSet:= ZQueryCliente;
  desc.Clear;
  qtd.Clear;
  val.Clear;
end;

procedure TForm1.ProdutoClick(Sender: TObject);
begin
  Form1.CadCliente.Visible:= False;
  Form1.CadProduto.Visible:= True;
  Form1.DataSource1.DataSet:= ZQueryProduto;
  cidade.Clear;
  cpf.Clear;
  nome.Clear;
end;

procedure TForm1.CadCliClick(Sender: TObject);
var
  CLi : Integer;
begin
  ZConnection1.Connect;

  with ZQueryCliente do
  begin

    SQL.Clear;
    SQL.add('select max(idcliente) as id from cliente ');
    Open;

    CLi := FieldByName('id').asInteger;


    SQL.Clear;
    SQL.add('insert into cliente (idCliente,nome,cidade,cpf) values(:id, :nome, :cidade, :cpf);');


    ParamByName('nome').AsString := nome.Text;
    ParamByName('cidade').AsString := cidade.Text;
    ParamByName('cpf').AsString := cpf.Text;
    ParamByName('id').AsInteger := Cli+1;

    try
      ExecSQL;
      ShowMessage('Cadastro realizado com sucesso!');

      Nome.Clear;
      Cidade.Clear;
      Cpf.Clear;
    except
       ShowMessage('Erro ao cadastrar cliente: ');
    end;
  end;
end;

procedure TForm1.CancCliClick(Sender: TObject);
begin
  Form1.Close;
end;

procedure TForm1.CancProdClick(Sender: TObject);
begin
  Form1.Close;
end;

procedure TForm1.CadProdClick(Sender: TObject);
Var
  Prod : Integer;
  qtdd: Integer;
  vall: Double;
begin
  ZConnection1.Connect;

  With ZQueryProduto do
  begin
  SQL.Clear;
  SQL.Add('select max(idproduto) as id from produto');
  Open;

  Prod := FieldByName('id').AsInteger;

  SQL.Clear;
  SQL.Add('insert into produto(idproduto, descricao, quantidade, valor) values(:idproduto, :descricao, :quantidade, :valor)');

  qtdd := StrToInt(qtd.Text);
  vall := StrToFloat(val.Text);

  ParamByName('idproduto').AsInteger := Prod+1;
  ParamByName('descricao').AsString := desc.Text;
  ParamByName('quantidade').AsInteger := qtdd;
  ParamByName('valor').AsFloat:= vall;

  try
    ExecSQL;
    ShowMessage('Cadastro realizado com sucesso!');

    desc.Clear;
    qtd.Clear;
    val.Clear;

  Except
    ShowMessage('Erro ao cadastrar produto:');
  end;
 end;
end;

end.
