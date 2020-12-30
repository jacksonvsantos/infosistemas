program T_Clientes;

uses
  Vcl.Forms,
  UntCadCliente in 'UntCadCliente.pas' {FrmTelaCadCliente};

{$R *.res}

begin
  Application.Initialize;
  Application.MainFormOnTaskbar := True;
  Application.CreateForm(TFrmTelaCadCliente, FrmTelaCadCliente);
  Application.Run;
end.
