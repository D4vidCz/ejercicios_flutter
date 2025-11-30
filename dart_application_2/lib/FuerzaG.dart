//ejercicio 72

void main() {
  const double G = 6.67259e-11;
  const double M = 5.97e24;
  const double radioTierra = 6371000;

  
  List<Map<String, dynamic>> sats = [
    {"nombre": "Canada 1", "masa": 8300.0, "altura": 31200000.0},
    {"nombre": "Alfa 1", "masa": 5500.0, "altura": 36000000.0},
    {"nombre": "Boby 4", "masa": 12000.0, "altura": 33450000.0},
    {"nombre": "Che 3", "masa": 3350.0, "altura": 34200000.0},
  ];

  List<double> fuerzas = [];
  List<double> masas = [];
  List<double> alturas = [];

  for (var s in sats) {
    double m = s["masa"];
    double r = radioTierra + s["altura"];

    double F = G * m * M / (r * r);

    fuerzas.add(F);
    masas.add(m);
    alturas.add(s["altura"]);

    print("${s["nombre"]}: Fuerza = ${F.toStringAsExponential(3)} N");
  }

  
  double mayorF = fuerzas.reduce((a, b) => a > b ? a : b);
  double menorF = fuerzas.reduce((a, b) => a < b ? a : b);
  double promF = fuerzas.reduce((a, b) => a + b) / fuerzas.length;

  double mayorM = masas.reduce((a, b) => a > b ? a : b);
  double promM = masas.reduce((a, b) => a + b) / masas.length;

  double menorAlt = alturas.reduce((a, b) => a < b ? a : b);
  double mayorAlt = alturas.reduce((a, b) => a > b ? a : b);

  print("\nRESULTADOS:");
  print("Mayor Fuerza: ${mayorF.toStringAsExponential(3)} N");
  print("Menor Fuerza: ${menorF.toStringAsExponential(3)} N");
  print("Promedio Fuerza: ${promF.toStringAsExponential(3)} N");
  print("Mayor Masa: $mayorM kg");
  print("Promedio de Masas: ${promM.toStringAsFixed(2)} kg");
  print("Menor Altura: ${menorAlt.toStringAsFixed(0)} m");
  print("Mayor Altura: ${mayorAlt.toStringAsFixed(0)} m");
}
