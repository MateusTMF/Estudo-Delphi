unit Unit1;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls;

type
  TForm1 = class(TForm)
    Edit1: TEdit;
    Edit2: TEdit;
    Label1: TLabel;
    Button1: TButton;
    Button2: TButton;
    Button3: TButton;
    Button4: TButton;
    Label2: TLabel;
    Edit3: TEdit;
    Label3: TLabel;
    Edit4: TEdit;
    Label4: TLabel;
    Button5: TButton;
    Label5: TLabel;
    Edit5: TEdit;
    Label6: TLabel;
    Edit6: TEdit;
    Label7: TLabel;
    Button6: TButton;
    Label8: TLabel;
    Label9: TLabel;
    Edit7: TEdit;
    Label10: TLabel;
    Edit8: TEdit;
    Label11: TLabel;
    Edit9: TEdit;
    Edit10: TEdit;
    Label12: TLabel;
    Label13: TLabel;
    Label14: TLabel;
    Button7: TButton;
    Button8: TButton;
    procedure Button1Click(Sender: TObject);
    procedure Button3Click(Sender: TObject);
    procedure Button2Click(Sender: TObject);
    procedure Button4Click(Sender: TObject);
    procedure Button5Click(Sender: TObject);
    procedure Button6Click(Sender: TObject);
    procedure Button7Click(Sender: TObject);
    procedure Button8Click(Sender: TObject);

  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form1: TForm1;

implementation

uses Math;

{$R *.dfm}

procedure TForm1.Button1Click(Sender: TObject);
var
  a,b,c: Single;
begin
  a:= StrToFloat(Edit1.Text);
  b:= StrToFloat(Edit2.Text);
  c:= a + b;
  Label1.Visible := True;
  Label1.Caption:= Edit1.Text+ ' + ' +Edit2.Text+ ' = ' +FloatToStr(c);
  Edit1.Clear;
  Edit2.Clear;
end;

procedure TForm1.Button3Click(Sender: TObject);
var
  a,b,c: Single;
begin
  a:= StrToFloat(Edit1.Text);
  b:= StrToFloat(Edit2.Text);
  c:= a-b;

  Label1.Visible:= True;
  Label1.Caption:= Edit1.Text+ ' - ' +Edit2.Text+ ' = ' +FloatToStr(c);
  Edit1.Clear;
  Edit2.Clear;
end;

procedure TForm1.Button2Click(Sender: TObject);
var
  a,b,c: Single;
begin
  a:= StrToFloat(Edit1.Text);
  b:= StrToFloat(Edit2.Text);
  c:= a * b;

  Label1.Visible:= True;
  Label1.Caption:= Edit1.Text+ ' * '+Edit2.Text+ ' = ' +FloatToStr(c);
  Edit1.Clear;
  Edit2.Clear;
end;

procedure TForm1.Button4Click(Sender: TObject);
var
  a,b,c: Single;
begin
  a:= StrToFloat(Edit1.Text);
  b:= StrToFloat(Edit2.Text);
  c:= a / b;
  Label1.Visible:= True;
  Label1.Caption:= Edit1.Text+ ' / ' +Edit2.Text+  ' = ' +FloatToStr(c);
  Edit1.Clear;
  Edit2.Clear;
end;

procedure TForm1.Button5Click(Sender: TObject);
var
  f,c: Single;
begin
  f:= StrToFloat(Edit3.Text);

  c:= (f - 32) * 5/9;

  Edit4.Text:= FloatToStr(c);

end;

procedure TForm1.Button6Click(Sender: TObject);
var
  c,f: Single;
begin
  c:= StrToFloat(Edit5.Text);

  f:= (c * 9/5) + 32;
  Edit6.Text:= FloatToStr(f);

end;

procedure TForm1.Button7Click(Sender: TObject);
var
  km,ms: Single;
begin
  km:= StrToFloat(Edit7.Text);
  ms:= km/3.6;

  Edit8.Text:= FloatToStr(ms);
end;

procedure TForm1.Button8Click(Sender: TObject);
var
  ms,km : Single;
begin
  ms:= StrToFloat(Edit9.Text);
  km:= ms*3.6;

  Edit10.Text:= FloatToStr(km);
end;

end.
