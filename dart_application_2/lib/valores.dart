//ejercicio 32
import 'dart:io';

void main() {
  print("Ingrese el valor de P:");
  int P = int.parse(stdin.readLineSync()!);

  print("Ingrese el valor de Q:");
  int Q = int.parse(stdin.readLineSync()!);

  num expresion = (P * P * P) + (Q * Q * Q * Q) - 2 * (P * P);

  if (expresion > 680) {
    print("La condición SE cumple. P = $P, Q = $Q");
  } else {
    print("La expresión NO se cumple.");
  }
}
