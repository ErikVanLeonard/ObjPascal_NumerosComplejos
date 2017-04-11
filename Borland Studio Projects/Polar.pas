unit Polar;
// AUTOR: ERIK LEONARDO ESPINOSA MACHUCA
interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, math;

type
  TForm3 = class(TForm)
    Label1: TLabel;
    Label2: TLabel;
    Label3: TLabel;
    Edit1: TEdit;
    Edit2: TEdit;
    Button1: TButton;
    Button2: TButton;
    procedure Button2Click(Sender: TObject);
    procedure Button1Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form3: TForm3;

implementation
uses Menu;
{$R *.dfm}

procedure TForm3.Button1Click(Sender: TObject);
var
magnitud,R,Im,angulo:Real;
i,renglon:Integer;
begin
   renglon:=1;
   for i := 1 to Form1.Grid1.RowCount - 1 do
   begin
     if Form1.Grid1.Cells[1,i]='' then
      begin
        renglon:=i;
      end;

   end;
    Form1.Grid1.Cells[3,renglon]:=Edit1.Text;
    Form1.Grid1.Cells[4,renglon]:=Edit2.Text;
    magnitud:=StrtoFloat(Edit1.Text);
    angulo:=StrtoFloat(Edit2.Text);
    R:=magnitud*cos(degtorad(angulo));
    Im:=magnitud*sin(degtorad(angulo));
    Form1.Grid1.Cells[1,renglon]:=FloattoStr(R);
    Form1.Grid1.Cells[2,renglon]:=FloattoStr(Im);
    Form3.Close;

end;

procedure TForm3.Button2Click(Sender: TObject);
begin
Form3.Close;
end;

end.
// AUTOR: ERIK LEONARDO ESPINOSA MACHUCA 342-M
