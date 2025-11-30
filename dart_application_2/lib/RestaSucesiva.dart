//ejercicio 56

void main() {
  int a = 8;
  int b = 2;

  int resta = a;
  int cociente = 0;

  while (resta >= b) {
    resta -= b;
    cociente++;
  }

  print("Cociente: $cociente");
  print("Resto: $resta");
}
