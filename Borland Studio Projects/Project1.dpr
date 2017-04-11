program Project1;

uses
  Forms,
  Menu in 'Menu.pas' {Form1},
  Rectang in 'Rectang.pas' {Form2},
  Polar in 'Polar.pas' {Form3},
  Exit in 'Exit.pas' {Form4};

{$R *.res}

begin
  Application.Initialize;
  Application.CreateForm(TForm1, Form1);
  Application.CreateForm(TForm2, Form2);
  Application.CreateForm(TForm3, Form3);
  Application.CreateForm(TForm4, Form4);
  Application.Run;
end.
