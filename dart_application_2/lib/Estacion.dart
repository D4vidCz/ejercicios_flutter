//ejercicio 70

void main() {
  List datos = [
    [20, 15],
    [32, 10],
    [25, 14],
    [0, 0]
  ];

  int dias = 0;
  int errores = 0;
  int sumMax = 0, sumMin = 0;

  for (var d in datos) {
    int max = d[0], min = d[1];
    if (max == 0 && min == 0) break;

    dias++;

    if (max < 14 || max > 30 || min < 14 || min > 30) {
      errores++;
    }

    sumMax += max;
    sumMin += min;
  }

  print("Días: $dias");
  print("Media max: ${(sumMax/dias).toStringAsFixed(2)}");
  print("Media min: ${sumMin/dias}");
  print("Errores: $errores");
  print("Porcentaje: ${(errores/dias*100).toStringAsFixed(2)}%");
}
