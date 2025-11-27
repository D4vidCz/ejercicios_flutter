//ejercicio 22
void main() {
  double precioContado = 500;
  double cuotaMensual = 60;
  int meses = 12;

  double totalCredito = cuotaMensual * meses;
  double recargo = totalCredito - precioContado;

  double porcentajeRecargo = (recargo / precioContado) * 100;

  print("El recargo por pago a cuotas es: $porcentajeRecargo%");
}
