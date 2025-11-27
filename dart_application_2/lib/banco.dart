//ejercicio 2
void main() {
  double capital = 50000; 
  double interes = 0.02; 

  double ganancia = capital * interes;
  double montoFinal = capital + ganancia;

  print("Ganancia después de un mes: \$${ganancia}");
  print("Monto final: \$${montoFinal}");
}
