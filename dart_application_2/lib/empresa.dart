//ejercicio 28

void main() {
  double montoCompra = 600000;

  double propio, banco = 0, credito, intereses;

  if (montoCompra > 500000) {
    propio = montoCompra * 0.55;
    banco = montoCompra * 0.30;
    credito = montoCompra * 0.15;
  } else {
    propio = montoCompra * 0.70;
    credito = montoCompra * 0.30;
  }

  intereses = credito * 0.20;

  print("Fondos propios: $propio");
  print("Crédito al fabricante: $credito");
  print("Intereses: $intereses");
  print("Préstamo banco: $banco");
}
