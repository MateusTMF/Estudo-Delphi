program PCadastro;

uses
  Forms,
  UCadastro in 'UCadastro.pas' {frmCliente},
  URelCliente in 'URelCliente.pas' {frmRelCliente},
  URelClienteFortes in 'URelClienteFortes.pas' {frmRelClienteFortes},
  URelPedido in 'URelPedido.pas' {frmRelPedido},
  URelPedidoAgrupado in 'URelPedidoAgrupado.pas' {frmpedidoAgrupado},
  UEtiquetas in 'UEtiquetas.pas' {frmEtiqueta},
  UEtiquetaSBorda in 'UEtiquetaSBorda.pas' {frmEtiquetaSBorda};

{$R *.res}

begin
  Application.Initialize;
  Application.CreateForm(TfrmCliente, frmCliente);
  Application.CreateForm(TfrmRelCliente, frmRelCliente);
  Application.CreateForm(TfrmRelClienteFortes, frmRelClienteFortes);
  Application.CreateForm(TfrmRelPedido, frmRelPedido);
  Application.CreateForm(TfrmpedidoAgrupado, frmpedidoAgrupado);
  Application.CreateForm(TfrmEtiqueta, frmEtiqueta);
  Application.CreateForm(TfrmEtiquetaSBorda, frmEtiquetaSBorda);
  Application.Run;
end.
