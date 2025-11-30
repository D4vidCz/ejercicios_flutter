//ejercicio 49
import 'dart:math';

void main() {
  Random random = Random();

  int abc = 0; int ab = 0; int ac = 0; int bc = 0; int a = 0; int b = 0; int c = 0; int ninguna = 0;

  for (int i = 1; i <= 100; i++) {
    int A = random.nextInt(2); 
    int B = random.nextInt(2);
    int C = random.nextInt(2);

    if (A == 1 && B == 1 && C == 1) {
      abc++;
    }

    if (A == 1 && B == 1 && C == 0) {
      ab++;
    }

    if (A == 1 && B == 0 && C == 1) {
      ac++;
    }

    if (A == 0 && B == 1 && C == 1) {
      bc++;
    }

    if (A == 1) {
      a++;
    }

    if (B == 1) {
      b++;
    }

    if (C == 1) {
      c++;
    }

    if (A == 0 && B == 0 && C == 0) {
      ninguna++;
    }
  }

  print("Resultados finales:");
  print("a) Las tres correctas: $abc");
  print("b) Solo la primera y segunda: $ab");
  print("c) Solo la primera y tercera: $ac");
  print("d) Solo la segunda y tercera: $bc");
  print("e) Primera correcta al menos: $a");
  print("f) Segunda correcta al menos: $b");
  print("g) Tercera correcta al menos: $c");
  print("h) Ninguna correcta: $ninguna");
}
