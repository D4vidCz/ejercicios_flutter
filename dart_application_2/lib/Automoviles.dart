//ejercicio 31
import 'dart:io';

void main() {
  print("Ingrese la distancia recorrida en km:");
  int km = int.parse(stdin.readLineSync()!);

  double pago = 0;

  if (km <= 300) {
    pago = 5000;
  } else if (km >= 300 && km <= 1000) {
    int kmExtra = km - 300;
    pago = 5000 + kmExtra * 200;
  } else {
    int kmIntermedios = 1000 - 300;
    int kmMayores = km - 1000;

    pago = 5000 +
        (kmIntermedios * 200) +
        (kmMayores * 150);
  }

  print("El monto a pagar es: $pago Bs");
}
