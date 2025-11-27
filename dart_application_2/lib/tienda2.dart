//ejercicio 33
import 'dart:io';
void main() {
  print("Ingrese su nombre:");
  String nombre = stdin.readLineSync()!;

  print("Ingrese el valor del monto:");
  int monto = int.parse(stdin.readLineSync()!);

  double descuento = 0;

  if (monto < 500) {
    descuento = 0;
  } else if (monto >= 500 && monto <= 1000) {
    descuento = monto * 0.05;
  } else if (monto >= 1000 && monto <= 7000) {
    descuento = monto * 0.11;
  } else if (monto >= 7000 && monto <= 15000) {
    descuento = monto * 0.18;
  } else {
    descuento = monto * 0.25;
  }

  double montoTotal = monto - descuento;

  print("Cliente: $nombre");
  print("Monto de compra: $monto");
  print("Descuento aplicado: $descuento");
  print("Monto final a pagar: $montoTotal");
}
