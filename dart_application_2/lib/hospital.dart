//ejercicio 19
void main() {
  double presupuesto = 1200000.0; 

  double ginecologia = presupuesto * 0.40;
  double traumatologia = presupuesto * 0.30;
  double pediatria = presupuesto * 0.30;

  print("Presupuesto total: \$${presupuesto.toStringAsFixed(2)}");
  print("Ginecología (40%): \$${ginecologia.toStringAsFixed(2)}");
  print("Traumatología (30%): \$${traumatologia.toStringAsFixed(2)}");
  print("Pediatría (30%): \$${pediatria.toStringAsFixed(2)}");
}
