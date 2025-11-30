//ejercicio 43
import 'dart:io';

void main() {
  print("Capital actual:");
  double capital = double.parse(stdin.readLineSync()!);

  double prestamo = 0;

  if (capital < 0) {
    prestamo = 10000 - capital;
    capital = 10000;
  } else if (capital <= 20000) {
    prestamo = 20000 - capital;
    capital = 20000;
  }

  double restante = capital - 5000 - 2000;

  double insumos = restante / 2;
  double incentivos = restante / 2;

  print("Préstamo solicitado: $prestamo");
  print("Insumos: $insumos");
  print("Incentivos: $incentivos");
}
