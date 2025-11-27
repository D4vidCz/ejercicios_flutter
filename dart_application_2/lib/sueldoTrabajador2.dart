//ejercicio 34
import 'dart:io';

void main() {
  print("Ingrese el nombre del trabajador:");
  String nombre = stdin.readLineSync()!;

  print("Ingrese el sueldo del trabajador:");
  double sueldo = double.parse(stdin.readLineSync()!);

  print("Ingrese la categoría del trabajador (1-4):");
  int categoria = int.parse(stdin.readLineSync()!);

  double sueldoFinal;  

  if (categoria == 1) {
    sueldoFinal = sueldo * 1.15;
  } else if (categoria == 2) {
    sueldoFinal = sueldo * 1.10;
  } else if (categoria == 3) {
    sueldoFinal = sueldo * 1.08;
  } else if (categoria == 4) {
    sueldoFinal = sueldo * 1.07;
  } else {
    print("Categoría inválida.");
    return;
  }

  print("Nombre del trabajador: $nombre");
  print("Sueldo del trabajador: $sueldo");
  print("Categoría del trabajador: $categoria");
  print("Sueldo final del trabajador: $sueldoFinal");
}
