unit Unit1;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls;

type
  TForm1 = class(TForm)
    Edit1: TEdit;
    Button1: TButton;
    Label1: TLabel;
    Edit2: TEdit;
    Label2: TLabel;
    Button2: TButton;
    procedure Button1Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form1: TForm1;

implementation

{$R *.dfm}

procedure TForm1.Button1Click(Sender: TObject);
var
  n1: Real;
begin
  n1:= StrToFloat(Edit1.Text);

  Label1.Caption:= 'Inteira: '+FloatToStr(TRUNC(n1))+', Fracionária: '+FloatToStr(FRAC(n1));
  Label1.Visible:= true;
end;

end.
