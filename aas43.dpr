program aas43;

uses
  Forms,
  SettingForm1 in 'SettingForm1.pas' {Form1},
  llp in 'llp.pas' {FormProfile};

{$R *.res}

begin
  Application.Initialize;
  Application.MainFormOnTaskbar := True;
  Application.Title := '444444';
  Application.CreateForm(TForm1, Form1);
  Application.CreateForm(TFormProfile, FormProfile);
  Application.Run;
end.

