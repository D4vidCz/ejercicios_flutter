//ejercicio 67
void main() {
  int deuda = 12775;
  int pago = 100;
  int n = 0;

  while (deuda > 0) {
    deuda -= pago;
    print("Pago $pago – Deuda restante: ${deuda < 0 ? 0 : deuda}");
    pago += 125;
    n++;
  }

  print("Número de pagos: $n");
  print("Último pago: ${pago - 125}");
}
