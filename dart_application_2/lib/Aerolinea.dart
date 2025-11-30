//ejercicio 66

import 'dart:math';

void main() {
  Random r = Random();
  int vuelos = 3;

  for (int v = 1; v <= vuelos; v++) {
    print("\n=== VUELO $v ===");

    int pasajeros = r.nextInt(5) + 3;

    double totalVuelo = 0;
    double maxPeso = -1, minPeso = 999999;
    String nombreMax = "", nombreMin = "";
    String codigoMax = "", codigoMin = "";

    int pasajerosGratis = 0;

    for (int p = 1; p <= pasajeros; p++) {
      String nombre = "Pasajero_$p";
      String codigo = "COD${v}P$p";
      int maletas = r.nextInt(3) + 1;

      double pesoTotal = 0;
      double montoTotal = 0;

      double maxM = -1;
      String codMax = "";

      for (int m = 1; m <= maletas; m++) {
        double peso = r.nextDouble() * 20;

        String codMaleta = "$codigo-M$m";

        double monto = (peso <= 3)
            ? 0
            : (peso <= 6)
                ? 600
                : (peso <= 9)
                    ? 1200
                    : (peso <= 12)
                        ? 1500
                        : (peso <= 15)
                            ? 2000
                            : 2500;

        pesoTotal += peso;
        montoTotal += monto;

        if (peso > maxM) {
          maxM = peso;
          codMax = codMaleta;
        }
      }

      totalVuelo += montoTotal;
      if (montoTotal == 0) pasajerosGratis++;

      
      if (pesoTotal > maxPeso) {
        maxPeso = pesoTotal;
        nombreMax = nombre;
        codigoMax = codigo;
      }

      if (pesoTotal < minPeso) {
        minPeso = pesoTotal;
        nombreMin = nombre;
        codigoMin = codigo;
      }

      print("Pasajero: $nombre – Vuelo $v – Peso total: $pesoTotal – Paga: $montoTotal");
      print("Maleta más pesada: $codMax");
    }

    print("\nMayor peso: $nombreMax ($codigoMax) – $maxPeso");
    print("Menor peso: $nombreMin ($codigoMin) – $minPeso");
    print("Total pagado en vuelo: $totalVuelo");
    print("Porcentaje sin pago: ${(pasajerosGratis / pasajeros) * 100}%");
  }
}
