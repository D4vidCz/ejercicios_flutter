//ejercicio 27
void main() {
  double valor1 = 10;
  double valor2 = 8;
  double valor3 = 40;

  double areaTriangulo = (valor1 * valor2) / 2;
  double areaCirculo = valor1 * valor1 * valor2;
  double areaRectangulo = valor1 * valor2;

  if (areaTriangulo == valor3) {
    print("Es un triángulo");
  } else if (areaCirculo == valor3) {
    print("Es un círculo");
  } else if (areaRectangulo == valor3) {
    print("Es un rectángulo");
  } else {
    print("No es ninguna figura");
  }
}
