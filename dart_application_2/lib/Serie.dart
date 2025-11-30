//ejercicio 64

void main() {
  double suma = 0;
  double termino = 1;
  int n = 0;

  while (suma + termino <= 1.99) {
    suma += termino;
    termino /= 2;
    n++;
  }

  print("Términos usados: $n");
  print("Suma obtenida: ${suma.toStringAsFixed(2)}");
}
