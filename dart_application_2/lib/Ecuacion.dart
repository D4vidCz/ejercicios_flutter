//ejercicio 45
import 'dart:io';
import 'dart:math';

  void main() {
  print("Ingrese A:");
  double a = double.parse(stdin.readLineSync()!);

  print("Ingrese B:");
  double b = double.parse(stdin.readLineSync()!);

  print("Ingrese C:");
  double c = double.parse(stdin.readLineSync()!);

  double d = b * b - 4 * a * c;

  if (d < 0) {
    print("La ecuación no tiene solución real.");
  } else if (d == 0) {
    double x = -b / (2 * a);  
    print("Solución única: X = $x");
  } else {
    double x1 = (-b + sqrt(d)) / (2 * a);
    double x2 = (-b - sqrt(d)) / (2 * a);
    print("X1 = $x1");
    print("X2 = $x2");
  }
}
