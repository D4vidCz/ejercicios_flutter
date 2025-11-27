//ejercicio 37
import 'dart:math';
import 'dart:io';

void main() {
  print("Ingrese el lado A del triángulo:");
  double A = double.parse(stdin.readLineSync()!);

  print("Ingrese el lado B del triángulo:");
  double B = double.parse(stdin.readLineSync()!);

  print("Ingrese el lado C del triángulo:");
  double C = double.parse(stdin.readLineSync()!);


  if (A + B > C && A + C > B && B + C > A) {
    print("Es un triángulo válido.");

    if (A == B && B == C){
      print("Equilátero");
    }      
    else if (A == B || A == C || B == C){
      print("Isósceles");
      }
    else{
      print("Escaleno");
      }

    double S = (A + B + C) / 2;
    double area = sqrt(S * (S - A) * (S - B) * (S - C));
    print("Área: $area");
  } else {
    print("No es un triángulo.");
  }
}
