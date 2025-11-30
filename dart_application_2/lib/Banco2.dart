//ejercicio 73

void main() {
  DateTime fechaCorte = DateTime(2025, 12, 1);

  List<Map<String, dynamic>> estados = [
    {"codigo": 10},
    {"codigo": 20},
  ];

  List<Map<String, dynamic>> agencias = [
    {"codigo": 101, "estado": 10},
    {"codigo": 102, "estado": 10},
    {"codigo": 201, "estado": 20},
  ];

  List<Map<String, dynamic>> clientes = [
    {
      "codigo": 1,
      "nombre": "Carlos Pérez",
      "direccion": "Av. Libertador",
      "estado": 10,
      "agencia": 101,
      "pagares": [
        {"num": 5001, "fecha": DateTime(2025, 10, 20), "monto": 2000.0},
        {"num": 5002, "fecha": DateTime(2026, 1, 5), "monto": 3000.0},
      ]
    },
    {
      "codigo": 2,
      "nombre": "Ana Gómez",
      "direccion": "Calle 7",
      "estado": 10,
      "agencia": 102,
      "pagares": [
        {"num": 6001, "fecha": DateTime(2025, 11, 1), "monto": 1500.0}
      ]
    },
    {
      "codigo": 3,
      "nombre": "Luis Torres",
      "direccion": "Calle 9",
      "estado": 20,
      "agencia": 201,
      "pagares": [
        {"num": 7001, "fecha": DateTime(2025, 5, 3), "monto": 4000.0},
        {"num": 7002, "fecha": DateTime(2025, 4, 8), "monto": 3500.0},
      ]
    },
  ];

  print("=== RECIBOS POR CLIENTE ===\n");

  Map<int, double> deudaAgencias = {};
  Map<int, List<double>> agenciasMontosMaximos = {};

  for (var cli in clientes) {
    List pagPend = cli["pagares"]
    .where((p) => (p["fecha"] as DateTime).isBefore(fechaCorte))
    .toList();


    double totalDeuda =
        pagPend.fold(0.0, (suma, p) => suma + p["monto"]);

    print("Cliente: ${cli["codigo"]} - ${cli["nombre"]}");
    print("Dirección: ${cli["direccion"]}");
    print("Estado: ${cli["estado"]}  Agencia: ${cli["agencia"]}");
    print("Pagarés pendientes:");

    for (var p in pagPend) {
      print("  Nº ${p["num"]}  Fecha: ${p["fecha"]}  Monto: ${p["monto"]}");
    }

    print("Total pagarés: ${pagPend.length}");
    print("Monto total adeudado: $totalDeuda\n");

    deudaAgencias[cli["agencia"]] =
        (deudaAgencias[cli["agencia"]] ?? 0) + totalDeuda;

    agenciasMontosMaximos.putIfAbsent(cli["agencia"], () => []);
    agenciasMontosMaximos[cli["agencia"]]!.add(totalDeuda);
  }

  print("\n=== INFORME POR AGENCIAS ===\n");

  for (var ag in agencias) {
    int codAg = ag["codigo"];
    int codEst = ag["estado"];

    List clientesAg = clientes.where((c) => c["agencia"] == codAg).toList();

    int cliConDeuda = 0;
    double totalDeuda = deudaAgencias[codAg] ?? 0;

    double mayorDeuda = 0;
    int clienteMayor = -1;

    for (var c in clientesAg) {
      double deudaC = (c["pagares"] as List<Map<String, dynamic>>)
    .where((p) => (p["fecha"] as DateTime).isBefore(fechaCorte))
    .fold(0.0, (s, p) => s + (p["monto"] as double));

if (deudaC > 0) cliConDeuda++;

if (deudaC > mayorDeuda) {
  mayorDeuda = deudaC;
  clienteMayor = c["codigo"];
}
    }

    print("Agencia $codAg  - Estado $codEst");
    print("Clientes con pagarés pendientes: $cliConDeuda");
    print("Monto total adeudado: $totalDeuda");
    print("Cliente con mayor deuda: $clienteMayor  Monto: $mayorDeuda\n");
  }

  print("\n=== INFORME POR ESTADOS ===\n");

  for (var est in estados) {
    int codEst = est["codigo"];

    List agsEst = agencias.where((a) => a["estado"] == codEst).toList();

    double totalEst = 0;
    double minAg = double.infinity;
    double maxAg = -1;
    int agMin = -1;
    int agMax = -1;

    for (var ag in agsEst) {
      int codAg = ag["codigo"];
      double deudaAg = deudaAgencias[codAg] ?? 0;

      totalEst += deudaAg;

      if (deudaAg < minAg) {
        minAg = deudaAg;
        agMin = codAg;
      }

      if (deudaAg > maxAg) {
        maxAg = deudaAg;
        agMax = codAg;
      }
    }

    print("Estado $codEst");
    print("Monto total adeudado: $totalEst");
    print("Agencia con menor deuda: $agMin  Monto: $minAg");
    print("Agencia con mayor deuda: $agMax  Monto: $maxAg\n");
  }


  List<double> maximosPorAg = agenciasMontosMaximos.values
      .map((lista) => lista.reduce((a, b) => a > b ? a : b))
      .toList();

  double promedioNacional =
      maximosPorAg.reduce((a, b) => a + b) / maximosPorAg.length;

  print("Promedio nacional basado en máximos por agencia: ${(promedioNacional).toStringAsFixed(2)}");
}
