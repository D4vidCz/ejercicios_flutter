//ejercicio 59

import 'dart:io';

void main() {
  double menorProg = 999;
  int noIngles = 0, siIngles = 0;
  int aprobaronTodo = 0;
  double sumaProg = 0;
  int totalMat = 0, reprobaronMat = 0;

  while (true) {
    print("Ingrese nota de Matemática (-1 para salir):");
    double mat = double.parse(stdin.readLineSync()!);
    if (mat == -1) break;

    print("Nota de Programación:");
    double prog = double.parse(stdin.readLineSync()!);

    print("Nota de Inglés (0 = no presentó):");
    double ing = double.parse(stdin.readLineSync()!);

    if (prog < menorProg) {
      menorProg = prog;
      }

    if (ing == 0) {
      noIngles++;
    } else {
      siIngles++;
    }

    if (mat >= 10 && prog >= 10 && ing >= 10) aprobaronTodo++;

    sumaProg += prog;

    if (mat > 0) {
      totalMat++;
      if (mat < 10) reprobaronMat++;
    }
  }

  print("Menor nota de Programación: $menorProg");
  print("Porcentaje no presentaron inglés: ${(noIngles / siIngles) * 100}%");
  print("Aprobaron todas las materias: $aprobaronTodo");
  print("Promedio Programación: ${sumaProg / (siIngles + noIngles)}");
  print("Porcentaje reprobados en Matemática: ${(reprobaronMat / totalMat) * 100}%");
}
