//ejercicio 54
import 'dart:math';

void main() {
  Random r = Random();
  int N = 64; 
  int T = 23; 

  double sumaProm = 0;
  double mayor = -1, menor = 999;
  int numMayor = 0, numMenor = 0;

  int menos3 = 0;
  int mas4 = 0;
  int entre45y5 = 0;

  for (int i = 1; i <= N; i++) {

    int total = 0;

    for (int j = 0; j < T; j++) {
      int n;

      
      if (r.nextDouble() < 0.70) {
        n = r.nextInt(2) + 4; 
      } else {
        n = r.nextInt(5) + 1; 
      }

      total += n;
    }

    double prom = total / T;
    sumaProm += prom;

    if (prom > mayor) {
      mayor = prom;
      numMayor = i;
    }

    if (prom < menor) {
      menor = prom;
      numMenor = i;
    }

    if (prom < 3) menos3++;
    if (prom > 4) mas4++;
    if (prom >= 4.5 && prom <= 5) entre45y5++;
  }

  print("Media general: ${sumaProm / N}");
  print("Mayor promedio: $mayor en instrumento $numMayor");
  print("Menor promedio: $menor en instrumento $numMenor");
  print("Porcentaje (<3)/(>4): ${(menos3 / mas4) * 100}%");
  print("Promedios 4.5–5: ${(entre45y5 / N) * 100}%");
}
