void main() {
  List<Map<String, dynamic>> departamentos = [
    {
      "nombre": "Cundinamarca",
      "municipios": [100000, 120000, 80000, 95000, 70000],
    },
    {
      "nombre": "Antioquia",
      "municipios": [150000, 140000, 130000, 120000, 110000],
    },
    {
      "nombre": "Valle del Cauca",
      "municipios": [90000, 95000, 88000, 87000, 85000],
    },
    {
      "nombre": "Atlántico",
      "municipios": [70000, 75000, 72000, 68000, 71000],
    },
    {
      "nombre": "Santander",
      "municipios": [60000, 65000, 62000, 64000, 63000],
    },
  ];

  int totalPais = 0;
  int poblacionMayor = 0;
  String departamentoMayor = "";
  int poblacionMenor = 9999999;
  String departamentoMenor = "";

  for (var depto in departamentos) {
    // Cast a List<int> antes de reduce
    int totalDepto = (depto["municipios"] as List<int>).reduce((a, b) => a + b);
    totalPais += totalDepto;

    if (totalDepto > poblacionMayor) {
      poblacionMayor = totalDepto;
      departamentoMayor = depto["nombre"];
    }

    if (totalDepto < poblacionMenor) {
      poblacionMenor = totalDepto;
      departamentoMenor = depto["nombre"];
    }
  }

  print(
    "Departamento con mayor población: $departamentoMayor, Población: $poblacionMayor",
  );
  print(
    "Departamento con menor población: $departamentoMenor, Población: $poblacionMenor",
  );

  print("\nPorcentaje de población respecto al total del país:");
  for (var depto in departamentos) {
    int totalDepto = (depto["municipios"] as List<int>).reduce((a, b) => a + b);
    double porcentaje = (totalDepto / totalPais) * 100;
    print("${depto["nombre"]}: ${porcentaje.toStringAsFixed(2)}%");
  }

  double promedioPorDepto = totalPais / departamentos.length;
  print(
    "\nPromedio de habitantes por departamento: ${promedioPorDepto.toStringAsFixed(2)}",
  );
}
