program Project2;

uses
  Forms,
  Unit1 in 'Unit1.pas' {FormTest1},
  SimpForm in 'SimpForm.pas' {Form2},
  Unit3 in 'Unit3.pas' {Formtree};

{$R *.res}

begin
  Application.Initialize;
  Application.MainFormOnTaskbar := True;
  Application.CreateForm(TFormTest1, FormTest1);
  Application.CreateForm(TForm2, Form2);
  Application.CreateForm(TFormtree, Formtree);
  Application.Run;
end.
