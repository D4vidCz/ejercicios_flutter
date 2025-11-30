//Ejercicio 57

void main() {
  double N = 25;
  double x = 0.1;
  double rn = (x + N / x) / 2;

  while ((x - rn).abs() >= 0.000001) {
    x = rn;
    rn = (x + N / x) / 2;
  }

  print("Raíz aproximada: $rn");
}
