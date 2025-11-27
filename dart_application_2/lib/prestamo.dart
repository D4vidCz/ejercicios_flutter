//ejercicio 20
void main() {
  double capital = 50000.0; 
  double intereses = 8000.0; 
  int tiempo = 4; 

  double tasaAnualPorc = (intereses * 100) / (capital * tiempo);

  print("Capital: \$${capital.toStringAsFixed(2)}");
  print("Intereses pagados en $tiempo años: \$${intereses.toStringAsFixed(2)}");
  print("Tasa anual cobrada (porcentaje): ${tasaAnualPorc.toStringAsFixed(2)} %");
}
