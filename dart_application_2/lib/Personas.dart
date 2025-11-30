//ejercicio 52

import 'dart:math';

void main() {
  Random r = Random();

  double pesN = 0, pesJ = 0, pesA = 0, pesV = 0;
  int cN = 0, cJ = 0, cA = 0, cV = 0;

  for (int i = 0; i < 100; i++) {
    int edad = r.nextInt(90) + 1;
    int peso = 30 + r.nextInt(70);

    if (edad < 12) {
      pesN += peso;
      cN++;
    } else if (edad < 18) {
      pesJ += peso;
      cJ++;
    } else if (edad < 60) {
      pesA += peso;
      cA++;
    } else {
      pesV += peso;
      cV++;
    }
  }

  print("Niños: ${cN == 0 ? 0 : (pesN/cN).toStringAsFixed(2)}");
  print("Jóvenes: ${cJ == 0 ? 0 : (pesJ/cJ).toStringAsFixed(2)}");
  print("Adultos: ${cA == 0 ? 0 : (pesA/cA).toStringAsFixed(2)}");
  print("Viejos: ${cV == 0 ? 0 : (pesV/cV).toStringAsFixed(2)}");
} 