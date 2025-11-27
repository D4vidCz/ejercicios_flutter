//ejercicio 16
void main() {
  double largoLam = 4.0;
  double anchoLam = 1.5;
  double areaPieza = 0.5; // m^2 por pieza (asumido)

  double areaLam = largoLam * anchoLam;
  int piezasPorLam = (areaLam / areaPieza).floor();
  double desperdicio = areaLam - (piezasPorLam * areaPieza);

  print("Área lámina: ${areaLam.toStringAsFixed(2)} m²");
  print("Piezas por lámina: $piezasPorLam");
  print("Desperdicio (m²): ${desperdicio.toStringAsFixed(2)}");
}
