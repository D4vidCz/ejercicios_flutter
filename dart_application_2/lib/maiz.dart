//ejercicio 23

void main() {
  int harinaKg = 452;
  int aceiteL = 197;

  double precioBultoHarina = 132;
  double precioCajaAceite = 180;
  double precioHarinaDetal = 7.50;
  double precioAceiteDetal = 14.50;

  int bultos = harinaKg ~/ 24;
  int harinaSuelta = harinaKg % 24;

  int cajasAceite = aceiteL ~/ 15;
  int aceiteSuelto = aceiteL % 15;

  double ingresoHarinaBultos = bultos * precioBultoHarina;
  double ingresoHarinaDetal = harinaSuelta * precioHarinaDetal;

  double ingresoAceiteCajas = cajasAceite * precioCajaAceite;
  double ingresoAceiteDetal = aceiteSuelto * precioAceiteDetal;

  double ingresoTotal = ingresoHarinaBultos +
      ingresoHarinaDetal +
      ingresoAceiteCajas +
      ingresoAceiteDetal;

  print("Ingreso total: $ingresoTotal");
}
