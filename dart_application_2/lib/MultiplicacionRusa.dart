//ejercicio 61

void main() {
  int multiplicador = 25;  
  int multiplicando = 7;

  int suma = 0;
  int m1 = multiplicador;
  int m2 = multiplicando;

  while (m1 >= 1) {
    if (m1 % 2 != 0) {
      suma += m2;
    }

    m1 ~/= 2;   
    m2 *= 2;    
  }

  print("Resultado: $suma");
}
