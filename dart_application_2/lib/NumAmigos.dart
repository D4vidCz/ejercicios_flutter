//ejercicio 69

int sumaDiv(int n) {
  int s = 0;
  for (int i = 1; i < n; i++) {
    if (n % i == 0) s += i;
  }
  return s;
}

void main() {
  int pares = 0;
  int a = 1;

  while (pares < 4) {
    int b = sumaDiv(a);
    if (b > a && sumaDiv(b) == a) {
      print("$a y $b son amigos");
      pares++;
    }
    a++;
  }
}
