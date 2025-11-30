//ejercicio 68 

void main() {
  int encontrados = 0;
  int num = 1;

  while (encontrados < 3) {
    int suma = 0;

    for (int i = 1; i < num; i++) {
      if (num % i == 0) suma += i;
    }

    if (suma == num) {
      print("Perfecto: $num");
      encontrados++;
    }

    num++;
  }
}
