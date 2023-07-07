program Project_Factory_Methods;

uses
  Vcl.Forms,
  formPrinc in 'formPrinc.pas' {Form1},
  person in 'person.pas',
  myInterface in 'myInterface.pas',
  factory in 'factory.pas',
  FormData in 'FormData.pas' {formDt},
  enterprise in 'enterprise.pas';

{$R *.res}

begin
  Application.Initialize;
  Application.MainFormOnTaskbar := True;
  Application.CreateForm(TForm1, Form1);
  Application.CreateForm(TformDt, formDt);
  Application.Run;
end.
