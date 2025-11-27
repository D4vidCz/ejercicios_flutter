//ejercicio 30 

void main() {
  int A = 2, B = 9, C = 6, D = 2;
  int numero = A * 1000 + B * 100 + C * 10 + D;

  int centenas = (numero / 100).round();
  int redondeado = centenas * 100;

  print("Número original: $numero");
  print("Redondeado: $redondeado");
}
