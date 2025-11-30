//ejercicio 60

import 'dart:io';

void main() {
  while (true) {
    print("Número de factura (0 para salir):");
    int num = int.parse(stdin.readLineSync()!);
    if (num == 0) break;

    print("Nombre del cliente:");
    String cliente = stdin.readLineSync()!;

    print("Monto de la factura:");
    double monto = double.parse(stdin.readLineSync()!);

    print("Días transcurridos:");
    int dias = int.parse(stdin.readLineSync()!);

    double mora = 0;
    double descuento = 0;

    if (dias >= 60) {
      mora = monto * 0.08;
    } else if (dias >= 31) {
      mora = monto * 0.06;
      }
    else if (dias <= 15) {
      descuento = monto * 0.02;
    }

    double total = monto + mora - descuento;

    print("Factura: $num");
    print("Cliente: $cliente");
    print("Monto base: $monto");
    print("Mora: $mora");
    print("Descuento: $descuento");
    print("Monto final: $total\n");
  }
}
