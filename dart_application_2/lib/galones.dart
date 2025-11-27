//ejericicio 18
void main() {
  double galones = 25.0;         
  double litrosPorGalon = 3.785;
  double precioPorLitro = 100.0; 

  double litros = galones * litrosPorGalon;
  double total = litros * precioPorLitro;

  print("Galones: ${galones}");
  print("Litros: ${litros.toStringAsFixed(3)} L");
  print("Precio/litro: \$${precioPorLitro}");
  print("Total a pagar: \$${total.toStringAsFixed(2)}");
}
