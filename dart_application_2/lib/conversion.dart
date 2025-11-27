//ejercicio 7
void main() {
  double metros = 2.5;

  double pulgadas = metros * 39.27;
  int pies = pulgadas ~/ 12; 
  double pulgadasRestantes = pulgadas % 12;

  print("$metros metros equivalen a $pies pies y $pulgadasRestantes pulgadas");
}