unit Unit1;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, Unit3, DB, ZAbstractRODataset, ZAbstractDataset,
  ZDataset, Menus, ZConnection, ExtCtrls;

type
  TForm1 = class(TForm)
    BtnText: TButton;
    GroupBox1: TGroupBox;
    Button2: TButton;
    ZQuery1: TZQuery;
    MainMenu1: TMainMenu;
    C1: TMenuItem;
    Configuraes1: TMenuItem;
    Usuarios1: TMenuItem;
    N1: TMenuItem;
    Sair1: TMenuItem;
    Contatos1: TMenuItem;
    Clientes1: TMenuItem;
    Pedidos1: TMenuItem;
    Funcionarios1: TMenuItem;
    Consultas1: TMenuItem;
    Clientes2: TMenuItem;
    Produtos1: TMenuItem;
    Vendedores1: TMenuItem;
    ZConnection1: TZConnection;
    Panel1: TPanel;
    procedure BtnTextClick(Sender: TObject);
    procedure Configuraes1Click(Sender: TObject);
    procedure Sair1Click(Sender: TObject);
    procedure Clientes1Click(Sender: TObject);
    procedure Pedidos1Click(Sender: TObject);
  private
    { Private declarations }
    y: integer;

  public
    { Public declarations }
    z: integer;

  end;

var
  Form1: TForm1;
  x: integer;


implementation

uses Unit2;

{$R *.dfm}


procedure TForm1.BtnTextClick(Sender: TObject);
begin
  //Form2.ShowModal;
  Zquery1.connection:=   Form1.ZConnection1;
  with Zquery1 do
  begin
    SQL.Clear;
    SQL.Add('select nome from cliente;');
    Open;

    if RecordCount > 0 then
    begin

      while not eof do
      begin
        showmessage(fieldbyname('nome').asstring);
        next;
      end
    end;
  end;

end;

procedure TForm1.Configuraes1Click(Sender: TObject);
begin
  Form2.ShowModal;
end;

procedure TForm1.Sair1Click(Sender: TObject);
begin
  form1.Close;
end;

procedure TForm1.Clientes1Click(Sender: TObject);
begin
  Form3.ShowModal;
end;

procedure TForm1.Pedidos1Click(Sender: TObject);
begin
  Form3.ShowModal;
end;

end.
