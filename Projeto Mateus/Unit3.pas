unit Unit3;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, CustomizeDlg, ExtCtrls, ComCtrls, ZConnection, ToolWin;

type
  TForm3 = class(TForm)
    Label1: TLabel;
    TabSheet1: TTabSheet;
    desc: TLabeledEdit;
    qtd: TLabeledEdit;
    val: TLabeledEdit;
    cadastrarProduto: TButton;
    ButtonClose2: TButton;
    TabSheet2: TTabSheet;
    PageControl1: TPageControl;
    nome: TLabeledEdit;
    cpf: TLabeledEdit;
    cidade: TLabeledEdit;
    ButtonClose: TButton;
    Cadastrar: TButton;
    procedure CadastrarClick(Sender: TObject);
    procedure ButtonClose2Click(Sender: TObject);
    procedure ButtonCloseClick(Sender: TObject);
    procedure cadastrarProdutoClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form3: TForm3;

implementation

uses Unit2, Unit1, ZDataset, ZAbstractRODataset, DB;

{$R *.dfm}

procedure TForm3.CadastrarClick(Sender: TObject);
var
  CLi : Integer;
begin
  Form1.ZConnection1.Connect;

  with Form1.ZQuery1 do
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

procedure TForm3.ButtonClose2Click(Sender: TObject);
begin
  form3.Close;
end;

procedure TForm3.ButtonCloseClick(Sender: TObject);
begin
  Form3.Close;
end;

procedure TForm3.cadastrarProdutoClick(Sender: TObject);
var
  Cli: Integer;

begin
  Form1.ZConnection1.Connect;
  With Form1.ZQuery1 do
  begin
  SQL.Clear;
  SQL.Add('select max(idproduto) as id from produto;');
  Open;


  SQL.Clear;
  SQL.Add('insert into produto(idproduto, descricao, quantidade, valor) values(:idproduto, :descricao, :quantidade, :valor);');


  ParamByName('idproduto').AsString := idproduto;
  ParamByName('descricao').AsString := desc.Text;
  ParamByName('quantidade').AsString := qtd.Text;
  ParamByName('valor').AsString := val.Text;

end;
end;

end.
