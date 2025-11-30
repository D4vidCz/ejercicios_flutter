//ejercicio 78
void main() {
  const Map<int, double> precios = {1: 100.0, 2: 150.0, 3: 200.0};

  List<Map<String, dynamic>> sucursales = [
    {
      "codigo": 11,
      "descripcion": "Sucursal Bogotá",
      "montoEsperado": 5000.0,
      "puntosVenta": [
        {
          "codigo": 1101,
          "vendedores": 2,
          "ventas": {1: 10, 2: 5, 3: 8}, 
        },
        {
          "codigo": 1102,
          "vendedores": 3,
          "ventas": {1: 5, 2: 8, 3: 4},
        },
      ],
    },
    {
      "codigo": 12,
      "descripcion": "Sucursal Medellín",
      "montoEsperado": 4000.0,
      "puntosVenta": [
        {
          "codigo": 1201,
          "vendedores": 2,
          "ventas": {1: 7, 2: 6, 3: 9},
        },
        {
          "codigo": 1202,
          "vendedores": 1,
          "ventas": {1: 4, 2: 5, 3: 3},
        },
      ],
    },
  ];

  int sucursalesCumplieron = 0;

  for (var sucursal in sucursales) {
    double totalSucursal = 0;
    double mayorComision = 0;
    int puntoMayorComision = 0;

    print("\nSucursal ${sucursal["codigo"]} - ${sucursal["descripcion"]}");

    for (var punto in sucursal["puntosVenta"]) {
      double montoVenta = 0;

      
      (punto["ventas"] as Map<int, int>).forEach((producto, unidades) {
        montoVenta += unidades * precios[producto]!;
      });

      double comisionTotal = montoVenta * 0.10; 
      double comisionPorVendedor = comisionTotal / punto["vendedores"];

      
      int totalUnidades = 0;
      for (var u in (punto["ventas"] as Map<int, int>).values) {
        totalUnidades += u;
      }

      
      int productoMenor = (punto["ventas"] as Map<int, int>).entries
          .reduce(
            (MapEntry<int, int> a, MapEntry<int, int> b) =>
                a.value < b.value ? a : b,
          )
          .key;

      print("Punto de venta ${punto["codigo"]}:");
      print("  Unidades vendidas: $totalUnidades");
      print("  Monto neto venta: \$${montoVenta.toStringAsFixed(2)}");
      print(
        "  Comisión total: \$${comisionTotal.toStringAsFixed(2)} (por vendedor: \$${comisionPorVendedor.toStringAsFixed(2)})",
      );
      print("  Producto con menor unidades vendidas: $productoMenor");

      totalSucursal += montoVenta;

      if (comisionTotal > mayorComision) {
        mayorComision = comisionTotal;
        puntoMayorComision = punto["codigo"];
      }
    }

    double porcentajeVenta = (totalSucursal / sucursal["montoEsperado"]) * 100;
    print("Total vendido por sucursal: \$${totalSucursal.toStringAsFixed(2)}");
    print(
      "Porcentaje de venta esperado: ${porcentajeVenta.toStringAsFixed(2)}%",
    );
    print(
      "Punto de venta que más pagó comisión: $puntoMayorComision (\$${mayorComision.toStringAsFixed(2)})",
    );

    if (totalSucursal >= sucursal["montoEsperado"]) sucursalesCumplieron++;
  }

  double porcentajeSucursales =
      (sucursalesCumplieron / sucursales.length) * 100;
  print(
    "\nPorcentaje de sucursales que alcanzaron el monto esperado: ${porcentajeSucursales.toStringAsFixed(2)}%",
  );
}
