//ejercicio 81

void main() {
  const comisiones = {"tienda": 0.10, "calle": 0.15};

  List<Map<String, dynamic>> estados = [
    {
      "codigo": 1,
      "nombre": "Distrito Capital",
      "ciudades": [
        {
          "codigo": 101,
          "nombre": "Caracas",
          "unidadesEsperadas": 100,
          "canales": [
            {
              "codigo": 10101,
              "tipo": "tienda",
              "vendedores": [
                {"codigo": 11001, "unidades": 20, "monto": 2000.0},
                {"codigo": 11002, "unidades": 15, "monto": 1500.0},
              ],
            },
            {
              "codigo": 10102,
              "tipo": "calle",
              "vendedores": [
                {"codigo": 12001, "unidades": 10, "monto": 1200.0},
                {"codigo": 12002, "unidades": 25, "monto": 2500.0},
              ],
            },
          ],
        },
      ],
    },
    {
      "codigo": 2,
      "nombre": "Miranda",
      "ciudades": [
        {
          "codigo": 201,
          "nombre": "Los Teques",
          "unidadesEsperadas": 80,
          "canales": [
            {
              "codigo": 20101,
              "tipo": "tienda",
              "vendedores": [
                {"codigo": 21001, "unidades": 30, "monto": 3000.0},
                {"codigo": 21002, "unidades": 20, "monto": 1800.0},
              ],
            },
          ],
        },
      ],
    },
  ];

  for (var estado in estados) {
    double totalEstado = 0;
    int ciudadesNoCumplen = 0;
    int ciudades40a60 = 0;

    print("\nEstado ${estado["codigo"]} - ${estado["nombre"]}");

    for (var ciudad in estado["ciudades"]) {
      double totalBrutoCiudad = 0;
      double comisionTienda = 0;
      double comisionCalle = 0;
      int vendedorMenorUnidades =
          ciudad["canales"][0]["vendedores"][0]["codigo"];
      int menorUnidades = ciudad["canales"][0]["vendedores"][0]["unidades"];
      int canalMayorMonto = ciudad["canales"][0]["codigo"];
      double mayorMontoCanal = 0;

      for (var canal in ciudad["canales"]) {
        double montoCanal = 0;
        String tipo = canal["tipo"];

        for (var vendedor in canal["vendedores"]) {
          montoCanal += vendedor["monto"];

          // Vendedor con menor unidades
          if (vendedor["unidades"] < menorUnidades) {
            menorUnidades = vendedor["unidades"];
            vendedorMenorUnidades = vendedor["codigo"];
          }

          // Comisión según tipo
          if (tipo == "tienda") {
            comisionTienda += vendedor["monto"] * comisiones["tienda"]!;
          } else {
            comisionCalle += vendedor["monto"] * comisiones["calle"]!;
          }
        }

        if (montoCanal > mayorMontoCanal) {
          mayorMontoCanal = montoCanal;
          canalMayorMonto = canal["codigo"];
        }

        totalBrutoCiudad += montoCanal;
      }

      print("Ciudad ${ciudad["codigo"]} - ${ciudad["nombre"]}:");
      print(
        "  Total unidades vendidas: ${ciudad["canales"].fold(0, (prev, c) => prev + c["vendedores"].fold(0, (p, v) => p + v["unidades"]))}",
      );
      print("  Monto bruto total: \$${totalBrutoCiudad.toStringAsFixed(2)}");
      print(
        "  Comisión vendedores tienda: \$${comisionTienda.toStringAsFixed(2)}",
      );
      print(
        "  Comisión vendedores calle: \$${comisionCalle.toStringAsFixed(2)}",
      );
      print("  Canal con mayor monto neto: $canalMayorMonto");
      print("  Vendedor con menor unidades vendidas: $vendedorMenorUnidades");

      totalEstado += totalBrutoCiudad;

      // Verificación de unidades esperadas
      int totalUnidadesCiudad = ciudad["canales"].fold(
        0,
        (prev, c) =>
            prev + c["vendedores"].fold(0, (p, v) => p + v["unidades"]),
      );
      if (totalUnidadesCiudad < ciudad["unidadesEsperadas"]) {
        ciudadesNoCumplen++;
      }
      if (totalUnidadesCiudad >= ciudad["unidadesEsperadas"] * 1.4 &&
          totalUnidadesCiudad <= ciudad["unidadesEsperadas"] * 1.6) {
        ciudades40a60++;
      }
    }

    double porcentajeNoCumplen =
        (ciudadesNoCumplen / estado["ciudades"].length) * 100;
    print(
      "Total bruto vendido en el estado: \$${totalEstado.toStringAsFixed(2)}",
    );
    print(
      "Porcentaje de ciudades que no alcanzaron las unidades esperadas: ${porcentajeNoCumplen.toStringAsFixed(2)}%",
    );
    print(
      "Cantidad de ciudades con 40%-60% por encima de lo esperado: $ciudades40a60",
    );
  }
}
