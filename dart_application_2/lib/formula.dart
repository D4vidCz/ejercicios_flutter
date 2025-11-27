//ejercicio 14

void main() {
  
  double a = 2, b = 3, c = 8;
  double d = 1, e = -4, f = 2;

  double D = a * e - b * d;

  if (D == 0) {
    print("Determinante 0: no existe solución única (D = 0).");
  } else {
    double x = (c * e - b * f) / D;
    double y = (a * f - c * d) / D;
    print("Solución: X = ${x.toStringAsFixed(4)}, Y = ${y.toStringAsFixed(4)}");
  }
}
