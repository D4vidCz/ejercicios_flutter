//ejercicio 15
void main() {
  
  double lecturaAnterior = 120.0; 
  double lecturaActual = 185.0;  
  double costoPorKwh = 820.0;        

  double consumo = lecturaActual - lecturaAnterior;
  double total = consumo * costoPorKwh;

  print("Consumo por Kwh: ${consumo.toStringAsFixed(2)}");
  print("Total a pagar: ${total.toStringAsFixed(2)}");
}
