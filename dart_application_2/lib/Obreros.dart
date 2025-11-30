//ejercicio 74
void main() {
  
  const int limite = 500;

  
  List<Map<String, dynamic>> obreros = [
    {
      "nombre": "Carlos",
      "dias": [80, 90, 85, 70, 75, 60],
    },
    {
      "nombre": "Luis",
      "dias": [100, 95, 110, 105, 98, 90],
    },
    {
      "nombre": "Ana",
      "dias": [50, 60, 55, 65, 70, 80],
    },
  ];

  int totalBloquera = 0;
  int obrerosCumplieron = 0;

  String mayorProductor = "";
  int mayorProduccion = -1;

  print("===== REPORTE POR OBRERO =====\n");

  for (var ob in obreros) {
    int totalSemana = ob["dias"].fold(0, (s, d) => s + d);

    double porcentaje = (totalSemana / limite) * 100;

    print("Obrero: ${ob["nombre"]}");
    print("Total producido: $totalSemana");
    print("Porcentaje del límite: ${porcentaje.toStringAsFixed(2)}%");
    print("--------------------------------");

    totalBloquera += totalSemana;

    if (totalSemana >= limite) obrerosCumplieron++;

    if (totalSemana > mayorProduccion) {
      mayorProduccion = totalSemana;
      mayorProductor = ob["nombre"];
    }
  }

  print("\n===== REPORTE GENERAL =====\n");

  double porcentajeCumplieron =
      (obrerosCumplieron / obreros.length) * 100;

  double promedioBloquera =
      totalBloquera / obreros.length;

  print("Porcentaje de obreros que alcanzaron el límite: "
      "${porcentajeCumplieron.toStringAsFixed(2)}%");
  print("Obrero que más produjo: $mayorProductor ($mayorProduccion bloques)");
  print("Promedio general de producción: "
      "${promedioBloquera.toStringAsFixed(2)} bloques");
}
