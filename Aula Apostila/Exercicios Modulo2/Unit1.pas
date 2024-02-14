unit Unit1;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, Menus, ComCtrls;

type
  TForm1 = class(TForm)
    Label1: TLabel;
    Button1: TButton;
    Button2: TButton;
    Edit1: TEdit;
    Button3: TButton;
    Label2: TLabel;
    Label3: TLabel;
    Label4: TLabel;
    Label5: TLabel;
    Button4: TButton;
    Button5: TButton;
    Button6: TButton;
    Label6: TLabel;
    GroupBox1: TGroupBox;
    Button7: TButton;
    Button8: TButton;
    Button9: TButton;
    Button10: TButton;
    Button11: TButton;
    Button12: TButton;
    Button13: TButton;
    Button14: TButton;
    Button15: TButton;
    Button16: TButton;
    Button17: TButton;
    Button18: TButton;
    Label7: TLabel;
    Label8: TLabel;
    Label9: TLabel;
    Label10: TLabel;
    procedure Button1Click(Sender: TObject);
    procedure Button2Click(Sender: TObject);
    procedure Button3Click(Sender: TObject);
    procedure Button4Click(Sender: TObject);
    procedure Button5Click(Sender: TObject);
    procedure Button6Click(Sender: TObject);
    procedure Button7Click(Sender: TObject);
    procedure Button8Click(Sender: TObject);
    procedure Button9Click(Sender: TObject);
    procedure Button10Click(Sender: TObject);
    procedure Button11Click(Sender: TObject);
    procedure Button12Click(Sender: TObject);
    procedure Button13Click(Sender: TObject);
    procedure Button14Click(Sender: TObject);
    procedure Button15Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
    x : Integer;
  end;

var
  Form1: TForm1;

implementation

uses Unit2;

{$R *.dfm}

procedure TForm1.Button1Click(Sender: TObject);
begin
  Label1.Visible:= True;  
end;

procedure TForm1.Button2Click(Sender: TObject);
begin
  Label1.Visible:= False;
end;

procedure TForm1.Button3Click(Sender: TObject);
begin
  Label2.Caption:= Edit1.Text;
  Edit1.Clear;
end;

procedure TForm1.Button4Click(Sender: TObject);
begin
  Label3.Visible:= True;
  Label4.Visible:= False;
  Label5.Visible:= False;
  Label3.Color:=clGreen;
end;

procedure TForm1.Button5Click(Sender: TObject);
begin
  Label3.Visible:= False;
  Label4.Visible:= True;
  Label5.Visible:= False;
  Label4.Color:=clYellow;
end;

procedure TForm1.Button6Click(Sender: TObject);
begin
  Label3.Visible:= False;
  Label4.Visible:= False;
  Label5.Visible:= True;
  Label5.Color:=clRed;
end;

procedure TForm1.Button7Click(Sender: TObject);
begin
  Label6.Color:= clGreen;
end;

procedure TForm1.Button8Click(Sender: TObject);
begin
  Label6.Color:= clBlue;
end;

procedure TForm1.Button9Click(Sender: TObject);
begin
  Label6.Color:= clBlack;
end;

procedure TForm1.Button10Click(Sender: TObject);
begin
  Label6.Font.Color:= clGreen;
end;

procedure TForm1.Button11Click(Sender: TObject);
begin
  Label6.Font.Color:= clBlue;
end;

procedure TForm1.Button12Click(Sender: TObject);
begin
  Label6.Font.Color:= clBlack;
end;

procedure TForm1.Button13Click(Sender: TObject);
begin
  Label6.Font.Size:= 14;
end;

procedure TForm1.Button14Click(Sender: TObject);
begin
  Label6.Font.Size:= 18;
end;

procedure TForm1.Button15Click(Sender: TObject);
begin
  Label6.Font.Size:= 24;
end;

end.
