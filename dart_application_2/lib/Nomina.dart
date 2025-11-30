//ejercicio 53

import 'dart:io';

void main() {
  int totalV1 = 0, totalV2 = 0, totalV3 = 0;
  int totalExtImpar = 0;
  int sumaEdades = 0, contador = 0;
  double totalSueldos = 0;

  print("Cantidad de empleados:");
  int m = int.parse(stdin.readLineSync()!);

  for (int i = 0; i < m; i++) {
    print("Nombre:");
    String nombre = stdin.readLineSync()!;

    print("Nacionalidad (V/E):");
    String nac = stdin.readLineSync()!.toUpperCase();

    print("Edad:");
    int edad = int.parse(stdin.readLineSync()!);

    print("Tipo de empleado (1,2,3):");
    int tipo = int.parse(stdin.readLineSync()!);

    print("Horas trabajadas:");
    int horas = int.parse(stdin.readLineSync()!);

    int pagoHora = (tipo == 1) ? 5000 : (tipo == 2) ? 10000 : 15000;
    double sueldo = pagoHora * horas.toDouble();

    double seguro = (sueldo > 100000) ? sueldo * 0.03 : 0;

    if (nac == "V") {
      if (tipo == 1) {
        totalV1++;
      } else if (tipo == 2) {
        totalV2++;
        }
      else {
        totalV3++;
      }
    }

    if (nac == "E" && edad % 2 != 0) totalExtImpar++;

    sumaEdades += edad;
    contador++;

    totalSueldos += sueldo - seguro;

    print("Sueldo bruto: $sueldo");
    print("Seguro: $seguro");
  }

  print("Totales venezolanos por tipo: T1=$totalV1, T2=$totalV2, T3=$totalV3");
  print("Extranjeros con edad impar: $totalExtImpar");
  print("Promedio edad: ${sumaEdades / contador}");
  print("Total general en sueldos: $totalSueldos");
}
