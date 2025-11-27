//ejercicio 40
void main() {
  int lecturaAnterior = 12500;
  int lecturaActual = 12820;

  int consumo = lecturaActual - lecturaAnterior;
  double costo = 0;

  if (consumo <= 100) {
    costo = consumo * 2.622;
  } else if (consumo <= 300) {
    costo = consumo * 79.78;
  } else if (consumo <= 500) {
    costo = consumo * 89.52;
  } else {
    costo = consumo * 97.95;
  }

  print("Consumo: $consumo kWh");
  print("Monto a pagar: ${costo.toStringAsFixed(2)} Bs");
}
