//ejercicio 55
void main() {
  double suma = 0;
  int k = 1;

  while (true) {
    double termino = (k * k + 1) / k;

    if (suma + termino > 1000) break;

    suma += termino;
    k++;
  }

  print("Suma obtenida: ${(suma).toStringAsFixed(2)}");
  print("Número de términos: ${k - 1}");
}
