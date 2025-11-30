//ejercicio 48

void main() {
  print("TABLA 1: De 28°F a 54°F (intervalos de 1°F)");
  imprimirTabla(28, 54, 1);

  print("\nTABLA 2: De 450°F a 950°F (intervalos de 50°F)");
  imprimirTabla(450, 950, 50);

  print("\nTABLA 3: De -50°F a 250°F (intervalos de 10°F)");
  imprimirTabla(-50, 250, 10);
}

void imprimirTabla(int inicio, int fin, int paso) {
  print("\nFahrenheit | Celsius | Kelvin | Rankine");
  print("---------------------------------------");

  for (int f = inicio; f <= fin; f += paso) {
    double c = 5 * (f - 32) / 9;
    double r = f + 459.67;
    double k = c + 273.15;

    print(
        "$f°F        | ${c.toStringAsFixed(2)}°C | ${k.toStringAsFixed(2)}K | ${r.toStringAsFixed(2)}°R");
  }
}

