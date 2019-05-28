program sistema;

uses
  Vcl.Forms,
  cliente in 'cliente.pas' {fCliente},
  produtos in 'produtos.pas' {Form2},
  produtos1 in 'produtos1.pas' {fProduto};

{$R *.res}

begin
  Application.Initialize;
  Application.MainFormOnTaskbar := True;
  Application.CreateForm(TfCliente, fCliente);
  Application.CreateForm(TForm2, Form2);
  Application.CreateForm(TfProduto, fProduto);
  Application.Run;
end.
