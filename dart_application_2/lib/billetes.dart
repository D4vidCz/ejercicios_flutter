//ejercicio 36
void main() {
  int cantidad = 186780;
  List<int> billetes = [50000, 20000, 10000, 5000, 2000, 1000, 500, 100, 50, 20, 10];

  for (int b in billetes) {
    int num = cantidad ~/ b;
    cantidad = cantidad % b;
    print("$b Bs: $num billetes");
  }
}
