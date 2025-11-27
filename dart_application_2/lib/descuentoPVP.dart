//ejercicio 17
void main() {
  double pvp = 1500.0;      
  double precioFinal = 1200.0; 

  double Descuento = ((pvp - precioFinal) / pvp) * 100;

  print("PVP: \$${pvp.toStringAsFixed(2)}");
  print("Precio pagado: \$${precioFinal.toStringAsFixed(2)}");
  print("Porcentaje de descuento aplicado: ${Descuento.toStringAsFixed(2)} %");
}
