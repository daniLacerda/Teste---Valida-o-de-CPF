program Project1;

uses
  Vcl.Forms,
  ValidDesafio in '..\Projetos-Delphi\Valida��o - Desafio\ValidDesafio.pas' {frmValidacao};

{$R *.res}

begin
  Application.Initialize;
  Application.MainFormOnTaskbar := True;
  Application.CreateForm(TfrmValidacao, frmValidacao);
  Application.Run;
end.
