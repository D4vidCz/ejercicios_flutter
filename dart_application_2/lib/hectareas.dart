//ejercicio 41
import 'dart:io';

void main() {
  print("Ingrese la cantidad de hectáreas del bosque:");
  double hectareas = double.parse(stdin.readLineSync()!);

  double metros = hectareas * 10000;

  double porcPino, porcOyamel, porcCedro;

  if (metros > 1000000) {
    porcPino = 0.70;
    porcOyamel = 0.20;
    porcCedro = 0.10;
  } else {
    porcPino = 0.50;
    porcOyamel = 0.30;
    porcCedro = 0.20;
  }

  double areaPino = metros * porcPino;
  double areaOyamel = metros * porcOyamel;
  double areaCedro = metros * porcCedro;

  int pinos = (areaPino / 10 * 8).round();
  int oyameles = (areaOyamel / 15 * 15).round();
  int cedros = (areaCedro / 18 * 10).round();

  print("Pinos a sembrar: $pinos");
  print("Oyameles a sembrar: $oyameles");
  print("Cedros a sembrar: $cedros");
}
  