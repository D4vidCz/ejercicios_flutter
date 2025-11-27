//ejercicio 21
void main() {
  int cantidadNaranjas = 48000;
  double precioDocena = 6;
  double ventaFinal = 42000;

  double docenas = cantidadNaranjas / 12;
  double costoTotal = docenas * precioDocena;

  double ganancia = ventaFinal - costoTotal;
  double porcentajeGanancia = (ganancia / costoTotal) * 100;

  print("Ganancia: $porcentajeGanancia%");
}
