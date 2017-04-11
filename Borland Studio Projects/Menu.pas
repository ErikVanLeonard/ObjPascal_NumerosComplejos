unit Menu;
                    // AUTOR: ERIK LEONARDO ESPINOSA MACHUCA
interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, Grids, StdCtrls, math;

type
  TForm1 = class(TForm)
    Button1: TButton;
    Button2: TButton;
    Button3: TButton;
    Grid1: TStringGrid;
    Button4: TButton;
    Edit1: TEdit;
    Button5: TButton;
    Edit2: TEdit;
    Edit3: TEdit;
    Button6: TButton;
    Edit4: TEdit;
    Label1: TLabel;
    Label2: TLabel;
    Label3: TLabel;
    Label4: TLabel;
    Button7: TButton;
    Button9: TButton;
    procedure Button9Click(Sender: TObject);
    procedure Button7Click(Sender: TObject);
    procedure Button6Click(Sender: TObject);
    procedure Button5Click(Sender: TObject);
    procedure Button4Click(Sender: TObject);
    procedure Button3Click(Sender: TObject);
    procedure Button2Click(Sender: TObject);
    procedure FormActivate(Sender: TObject);
    procedure Button1Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form1: TForm1;
  letra,oper:Integer;
implementation
uses Rectang,Polar, Exit;

{$R *.dfm}

procedure TForm1.Button1Click(Sender: TObject);
begin
 Form2.ShowModal;
end;

procedure TForm1.Button2Click(Sender: TObject);
begin
  Form3.ShowModal;
end;

procedure TForm1.Button3Click(Sender: TObject);
begin
letra:=letra+1;
if letra<=68 then    //acumulador
begin
  Grid1.RowCount:=Grid1.RowCount+1;
  Grid1.Cells[0,Grid1.RowCount-1]:=chr(letra);
  end
  else
  begin
  letra:=68;
end;
end;

procedure TForm1.Button4Click(Sender: TObject);
begin
letra:=letra-1;
if letra>=65 then
begin
  Grid1.RowCount:=Grid1.RowCount-1;
  end
  else
  begin
  letra:=65;
end;
end;

procedure TForm1.Button5Click(Sender: TObject);
begin
oper:=oper+1;
if oper=4 then oper:=0;
case oper of
0:
begin
  Button5.Caption:='+';
end;
1:
begin
  Button5.Caption:='-';
end;
2:
begin
  Button5.Caption:='*';
end;
3:
begin
  Button5.Caption:='/';
end;
end;
end;

procedure TForm1.Button6Click(Sender: TObject);
var
Rsum,Isum,real1,real2,ima1,ima2:Extended;
Tex1,Tex2:String;
begin
Tex1:=Edit1.Text;
Tex2:=Edit2.Text;
  if (Tex1='A') and (Tex2='B') then
    if (Button5.Caption='+') then
    begin
      real1:=StrToFloat(Grid1.Cells[1,1]);
    real2:=StrToFloat(Grid1.Cells[1,2]);
    ima1:=StrToFloat(Grid1.Cells[2,1]);
    ima2:=StrToFloat(Grid1.Cells[2,2]);
    Rsum:=real1+real2;
    Isum:=ima1+ima2;
    Edit3.Text:=FloatToStr(Rsum);
    Edit4.Text:=FloatToStr(Isum);
    end;
    if(Button5.Caption='-') then
    begin
    real1:=StrToFloat(Grid1.Cells[1,1]);
    real2:=StrToFloat(Grid1.Cells[1,2]);
    ima1:=StrToFloat(Grid1.Cells[2,1]);
    ima2:=StrToFloat(Grid1.Cells[2,2]);
    Rsum:=real1-real2;
    Isum:=ima1-ima2;
    Edit3.Text:=FloatToStr(Rsum);
    Edit4.Text:=FloatToStr(Isum);
    end;
    if(Button5.Caption='*') then
     begin
     real1:=StrToFloat(Grid1.Cells[3,1]);
    real2:=StrToFloat(Grid1.Cells[3,2]);
    ima1:=StrToFloat(Grid1.Cells[4,1]);
    ima2:=StrToFloat(Grid1.Cells[4,2]);
    Rsum:=real1*real2;
    Isum:=ima1*ima2;
    Edit3.Text:=FloatToStr(Rsum);
    Edit4.Text:=FloatToStr(Isum);
     end;
     if(Button5.Caption='/') then
     begin
     real1:=StrToFloat(Grid1.Cells[3,1]);
    real2:=StrToFloat(Grid1.Cells[3,2]);
    ima1:=StrToFloat(Grid1.Cells[4,1]);
    ima2:=StrToFloat(Grid1.Cells[4,2]);
    Rsum:=real1/real2;
    Isum:=ima1/ima2;
    Edit3.Text:=FloatToStr(Rsum);
    Edit4.Text:=FloatToStr(Isum);
     end;
     if (Tex1='A') and (Tex2='C') then
    if (Button5.Caption='+') then
    begin
      real1:=StrToFloat(Grid1.Cells[1,1]);
    real2:=StrToFloat(Grid1.Cells[1,3]);
    ima1:=StrToFloat(Grid1.Cells[2,1]);
    ima2:=StrToFloat(Grid1.Cells[2,3]);
    Rsum:=real1+real2;
    Isum:=ima1+ima2;
    Edit3.Text:=FloatToStr(Rsum);
    Edit4.Text:=FloatToStr(Isum);
    end;
    if(Button5.Caption='-') then
    begin
     real1:=StrToFloat(Grid1.Cells[1,1]);
    real2:=StrToFloat(Grid1.Cells[1,3]);
    ima1:=StrToFloat(Grid1.Cells[2,1]);
    ima2:=StrToFloat(Grid1.Cells[2,3]);
    Rsum:=real1-real2;
    Isum:=ima1-ima2;
    Edit3.Text:=FloatToStr(Rsum);
    Edit4.Text:=FloatToStr(Isum);
    end;
    if(Button5.Caption='*') then
     begin
     real1:=StrToFloat(Grid1.Cells[3,1]);
    real2:=StrToFloat(Grid1.Cells[3,3]);
    ima1:=StrToFloat(Grid1.Cells[4,1]);
    ima2:=StrToFloat(Grid1.Cells[4,3]);
    Rsum:=real1*real2;
    Isum:=ima1*ima2;
    Edit3.Text:=FloatToStr(Rsum);
    Edit4.Text:=FloatToStr(Isum);
     end;
     if(Button5.Caption='/') then
     begin
     real1:=StrToFloat(Grid1.Cells[3,1]);
    real2:=StrToFloat(Grid1.Cells[3,3]);
    ima1:=StrToFloat(Grid1.Cells[4,1]);
    ima2:=StrToFloat(Grid1.Cells[4,3]);
    Rsum:=real1/real2;
    Isum:=ima1/ima2;
    Edit3.Text:=FloatToStr(Rsum);
    Edit4.Text:=FloatToStr(Isum);
     end;
     if (Tex1='A') and (Tex2='D') then
    if (Button5.Caption='+') then
    begin
      real1:=StrToFloat(Grid1.Cells[1,1]);
    real2:=StrToFloat(Grid1.Cells[1,4]);
    ima1:=StrToFloat(Grid1.Cells[2,1]);
    ima2:=StrToFloat(Grid1.Cells[2,4]);
    Rsum:=real1+real2;
    Isum:=ima1+ima2;
    Edit3.Text:=FloatToStr(Rsum);
    Edit4.Text:=FloatToStr(Isum);
    end;
    if(Button5.Caption='-') then
    begin
     real1:=StrToFloat(Grid1.Cells[1,1]);
    real2:=StrToFloat(Grid1.Cells[1,4]);
    ima1:=StrToFloat(Grid1.Cells[2,1]);
    ima2:=StrToFloat(Grid1.Cells[2,4]);
    Rsum:=real1-real2;
    Isum:=ima1-ima2;
    Edit3.Text:=FloatToStr(Rsum);
    Edit4.Text:=FloatToStr(Isum);
    end;
    if(Button5.Caption='*') then
     begin
     real1:=StrToFloat(Grid1.Cells[3,1]);
    real2:=StrToFloat(Grid1.Cells[3,4]);
    ima1:=StrToFloat(Grid1.Cells[4,1]);
    ima2:=StrToFloat(Grid1.Cells[4,4]);
    Rsum:=real1*real2;
    Isum:=ima1*ima2;
    Edit3.Text:=FloatToStr(Rsum);
    Edit4.Text:=FloatToStr(Isum);
     end;
     if(Button5.Caption='/') then
     begin
     real1:=StrToFloat(Grid1.Cells[3,1]);
    real2:=StrToFloat(Grid1.Cells[3,4]);
    ima1:=StrToFloat(Grid1.Cells[4,1]);
    ima2:=StrToFloat(Grid1.Cells[4,4]);
    Rsum:=real1/real2;
    Isum:=ima1/ima2;
    Edit3.Text:=FloatToStr(Rsum);
    Edit4.Text:=FloatToStr(Isum);
     end;
       // <----  B EMPIEZA
       if (Tex1='B') and (Tex2='A') then
    if (Button5.Caption='+') then
    begin
      real1:=StrToFloat(Grid1.Cells[1,1]);
    real2:=StrToFloat(Grid1.Cells[1,2]);
    ima1:=StrToFloat(Grid1.Cells[2,1]);
    ima2:=StrToFloat(Grid1.Cells[2,2]);
    Rsum:=real2+real1;
    Isum:=ima2+ima1;
    Edit3.Text:=FloatToStr(Rsum);
    Edit4.Text:=FloatToStr(Isum);
    end;
    if(Button5.Caption='-') then
    begin
    real1:=StrToFloat(Grid1.Cells[1,1]);
    real2:=StrToFloat(Grid1.Cells[1,2]);
    ima1:=StrToFloat(Grid1.Cells[2,1]);
    ima2:=StrToFloat(Grid1.Cells[2,2]);
    Rsum:=real1-real2;
    Isum:=ima1-ima2;
    Edit3.Text:=FloatToStr(Rsum);
    Edit4.Text:=FloatToStr(Isum);
    end;
    if(Button5.Caption='*') then
     begin
     real1:=StrToFloat(Grid1.Cells[3,1]);
    real2:=StrToFloat(Grid1.Cells[3,2]);
    ima1:=StrToFloat(Grid1.Cells[4,1]);
    ima2:=StrToFloat(Grid1.Cells[4,2]);
    Rsum:=real1*real2;
    Isum:=ima1*ima2;
    Edit3.Text:=FloatToStr(Rsum);
    Edit4.Text:=FloatToStr(Isum);
     end;
     if(Button5.Caption='/') then
     begin
     real1:=StrToFloat(Grid1.Cells[3,1]);
    real2:=StrToFloat(Grid1.Cells[3,2]);
    ima1:=StrToFloat(Grid1.Cells[4,1]);
    ima2:=StrToFloat(Grid1.Cells[4,2]);
    Rsum:=real1/real2;
    Isum:=ima1/ima2;
    Edit3.Text:=FloatToStr(Rsum);
    Edit4.Text:=FloatToStr(Isum);
     end;
     if (Tex1='B') and (Tex2='C') then
    if (Button5.Caption='+') then
    begin
      real1:=StrToFloat(Grid1.Cells[1,1]);
    real2:=StrToFloat(Grid1.Cells[1,2]);
    ima1:=StrToFloat(Grid1.Cells[2,1]);
    ima2:=StrToFloat(Grid1.Cells[2,2]);
    Rsum:=real1+real2;
    Isum:=ima1+ima2;
    Edit3.Text:=FloatToStr(Rsum);
    Edit4.Text:=FloatToStr(Isum);
    end;
    if(Button5.Caption='-') then
    begin
    real1:=StrToFloat(Grid1.Cells[1,1]);
    real2:=StrToFloat(Grid1.Cells[1,2]);
    ima1:=StrToFloat(Grid1.Cells[2,1]);
    ima2:=StrToFloat(Grid1.Cells[2,2]);
    Rsum:=real1-real2;
    Isum:=ima1-ima2;
    Edit3.Text:=FloatToStr(Rsum);
    Edit4.Text:=FloatToStr(Isum);
    end;
    if(Button5.Caption='*') then
     begin
     real1:=StrToFloat(Grid1.Cells[3,1]);
    real2:=StrToFloat(Grid1.Cells[3,2]);
    ima1:=StrToFloat(Grid1.Cells[4,1]);
    ima2:=StrToFloat(Grid1.Cells[4,2]);
    Rsum:=real1*real2;
    Isum:=ima1*ima2;
    Edit3.Text:=FloatToStr(Rsum);
    Edit4.Text:=FloatToStr(Isum);
     end;
     if(Button5.Caption='/') then
     begin
     real1:=StrToFloat(Grid1.Cells[3,1]);
    real2:=StrToFloat(Grid1.Cells[3,2]);
    ima1:=StrToFloat(Grid1.Cells[4,1]);
    ima2:=StrToFloat(Grid1.Cells[4,2]);
    Rsum:=real1/real2;
    Isum:=ima1/ima2;
    Edit3.Text:=FloatToStr(Rsum);
    Edit4.Text:=FloatToStr(Isum);
     end;
     if (Tex1='B') and (Tex2='D') then
    if (Button5.Caption='+') then
    begin
      real1:=StrToFloat(Grid1.Cells[1,1]);
    real2:=StrToFloat(Grid1.Cells[1,2]);
    ima1:=StrToFloat(Grid1.Cells[2,1]);
    ima2:=StrToFloat(Grid1.Cells[2,2]);
    Rsum:=real1+real2;
    Isum:=ima1+ima2;
    Edit3.Text:=FloatToStr(Rsum);
    Edit4.Text:=FloatToStr(Isum);
    end;
    if(Button5.Caption='-') then
    begin
    real1:=StrToFloat(Grid1.Cells[1,1]);
    real2:=StrToFloat(Grid1.Cells[1,2]);
    ima1:=StrToFloat(Grid1.Cells[2,1]);
    ima2:=StrToFloat(Grid1.Cells[2,2]);
    Rsum:=real1-real2;
    Isum:=ima1-ima2;
    Edit3.Text:=FloatToStr(Rsum);
    Edit4.Text:=FloatToStr(Isum);
    end;
    if(Button5.Caption='*') then
     begin
     real1:=StrToFloat(Grid1.Cells[3,1]);
    real2:=StrToFloat(Grid1.Cells[3,2]);
    ima1:=StrToFloat(Grid1.Cells[4,1]);
    ima2:=StrToFloat(Grid1.Cells[4,2]);
    Rsum:=real1*real2;
    Isum:=ima1*ima2;
    Edit3.Text:=FloatToStr(Rsum);
    Edit4.Text:=FloatToStr(Isum);
     end;
     if(Button5.Caption='/') then
     begin
     real1:=StrToFloat(Grid1.Cells[3,1]);
    real2:=StrToFloat(Grid1.Cells[3,2]);
    ima1:=StrToFloat(Grid1.Cells[4,1]);
    ima2:=StrToFloat(Grid1.Cells[4,2]);
    Rsum:=real1/real2;
    Isum:=ima1/ima2;
    Edit3.Text:=FloatToStr(Rsum);
    Edit4.Text:=FloatToStr(Isum);
     end;

end;                     //  B Termina ---->


// <<<<<-----C EMPIEZA




// ----->>>>>C TERMINA

// <<<<<-----D EMPIEZA





// <<<<<-----D TERMINA



procedure TForm1.Button7Click(Sender: TObject);
begin
          Form4.ShowModal;
end;

procedure TForm1.Button9Click(Sender: TObject);
begin
   Self.Close;
end;

procedure TForm1.FormActivate(Sender: TObject);
begin
letra:=65;
Grid1.Cells[1,0]:='Real';
Grid1.Cells[2,0]:='Imag';
Grid1.Cells[3,0]:='Magnitud';
Grid1.Cells[4,0]:='Angulo';
Grid1.Cells[0,1]:=chr(letra);
 oper:=0;

end;
end.

// AUTOR: ERIK LEONARDO ESPINOSA MACHUCA
