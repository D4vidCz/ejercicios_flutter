//ejercicio 10
void main() {
  
  double valorChelin = 956.871 / 100;
  double valorDracma = 88.607 / 100;
  double pesetaADolar = 1 / 122.499;  
  double dracmaAFranco = valorDracma / 20.110;
  double pesetaALira = 100 / 9.289;

  
  double cantChelines = 500;
  double cantDracmas = 200;
  double cantPesetas = 1000;

  
  double totalPesetasChelin = cantChelines * valorChelin;
  double totalFrancosDracma = cantDracmas * dracmaAFranco;
  double totalDolares = cantPesetas * pesetaADolar;
  double totalLiras = cantPesetas * pesetaALira;


  print("$cantChelines chelines equivalen a $totalPesetasChelin pesetas");
  print("$cantDracmas dracmas equivalen a $totalFrancosDracma francos franceses");
  print("$cantPesetas pesetas equivalen a $totalDolares dólares");
  print("$cantPesetas pesetas equivalen a $totalLiras liras italianas");
}
