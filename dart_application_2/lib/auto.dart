//ejercicio 39
import 'dart:math';

void main() {
  double autoPrecio = 50000;
  double devaluacionAnual = 0.10;   
  double terrenoIncremento = 0.20;  

  double valorAuto = autoPrecio * pow((1 - devaluacionAnual), 3);
  double valorTerreno = autoPrecio * pow((1 + terrenoIncremento), 3);

  double mitadIncremento = (valorTerreno - autoPrecio) / 2;

  if ((autoPrecio - valorAuto) <= mitadIncremento) {
    print("Debe comprar el automóvil.");
  } else {
    print("Debe comprar el terreno.");
  }
}
